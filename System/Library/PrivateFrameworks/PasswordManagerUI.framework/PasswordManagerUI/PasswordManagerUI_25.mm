uint64_t sub_21C9B4FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_21C9B43A0(a1, v3 | *v2, a2);
}

void sub_21C9B5004()
{
  sub_21C705CFC();
  if (v0 <= 0x3F)
  {
    sub_21C940C08();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PMAccount(319);
      if (v2 <= 0x3F)
      {
        sub_21C6EE3E0(319, &qword_27CDEB2F0, &type metadata for PMSecurityRecommendation, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for PMSecurityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMSecurityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21C9B5238()
{
  result = qword_27CDF39F0;
  if (!qword_27CDF39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF39F0);
  }

  return result;
}

uint64_t sub_21C9B52D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C9B535C()
{
  result = qword_27CDF3A60;
  if (!qword_27CDF3A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3A18, &qword_21CBB8A08);
    sub_21C9B53E8();
    sub_21C9B552C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3A60);
  }

  return result;
}

unint64_t sub_21C9B53E8()
{
  result = qword_27CDF3A68;
  if (!qword_27CDF3A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3A10, &qword_21CBB8A00);
    sub_21C9B5474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3A68);
  }

  return result;
}

unint64_t sub_21C9B5474()
{
  result = qword_27CDF3A70;
  if (!qword_27CDF3A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3A08, &qword_21CBB89F8);
    sub_21C6EADEC(&qword_27CDF3A78, &qword_27CDF3A80, &qword_21CBB8A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3A70);
  }

  return result;
}

unint64_t sub_21C9B552C()
{
  result = qword_27CDF3A88;
  if (!qword_27CDF3A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3A88);
  }

  return result;
}

uint64_t sub_21C9B5580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9B55E8(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v20 - v9);
  if (a2 > 5u)
  {
    if (a2 > 8u)
    {
      if (a2 == 9)
      {
LABEL_16:
        v15 = type metadata accessor for PMAccount(0);
        sub_21C9B5580(a1 + *(v15 + 24), v7, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719540(a1, type metadata accessor for PMAccount);
          v12 = type metadata accessor for PMAccount.Storage;
          v13 = v7;
          goto LABEL_11;
        }

        v16 = *v7;
        v17 = [v16 hasValidWebsite];

        sub_21C719540(a1, type metadata accessor for PMAccount);
        if ((v17 & 1) == 0)
        {
          return 4;
        }

        return 2;
      }

      if (a2 != 10)
      {
        sub_21C719540(a1, type metadata accessor for PMAccount);
        return 3;
      }
    }

    else if (a2 == 7)
    {
      goto LABEL_16;
    }

LABEL_10:
    v12 = type metadata accessor for PMAccount;
    v13 = a1;
LABEL_11:
    sub_21C719540(v13, v12);
    return 4;
  }

  if (a2 <= 3u)
  {
    if (a2 - 1 >= 3)
    {
      sub_21C719540(a1, type metadata accessor for PMAccount);
      return 0;
    }

    goto LABEL_10;
  }

  if (a2 != 4)
  {
    goto LABEL_16;
  }

  v14 = type metadata accessor for PMAccount(0);
  sub_21C9B5580(a1 + *(v14 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C719540(a1, type metadata accessor for PMAccount);
    v12 = type metadata accessor for PMAccount.Storage;
    v13 = v10;
    goto LABEL_11;
  }

  v18 = *v10;
  v19 = [*v10 hasValidWebsite];

  sub_21C719540(a1, type metadata accessor for PMAccount);
  if ((v19 & 1) == 0)
  {
    return 4;
  }

  return 1;
}

uint64_t sub_21C9B5908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C9B5970()
{
  result = qword_27CDF3AE8;
  if (!qword_27CDF3AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3AE0, &qword_21CBB8BA8);
    sub_21C9B5A28();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3AE8);
  }

  return result;
}

unint64_t sub_21C9B5A28()
{
  result = qword_27CDF3AF0;
  if (!qword_27CDF3AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3AF8, &unk_21CBB8BB0);
    sub_21C9B5AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3AF0);
  }

  return result;
}

unint64_t sub_21C9B5AB4()
{
  result = qword_27CDF3B00;
  if (!qword_27CDF3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3B00);
  }

  return result;
}

uint64_t sub_21C9B5B08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21C705FD0(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21C9B5BE4()
{
  type metadata accessor for PMAccount(319);
  if (v0 <= 0x3F)
  {
    sub_21C6EE3E0(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for PMCredentialSecurityColorModifier(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PMCredentialSecurityColorModifier(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21C9B5E18()
{
  result = qword_27CDF3B38;
  if (!qword_27CDF3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3B38);
  }

  return result;
}

unint64_t sub_21C9B5EA4()
{
  result = qword_27CDF3B88;
  if (!qword_27CDF3B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3B78, &qword_21CBB8D70);
    sub_21C6EADEC(&qword_27CDF3B90, &qword_27CDF3B80, &unk_21CBB8D78);
    sub_21C6EADEC(&unk_27CDF45A0, &qword_27CDEECF0, &qword_21CBAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3B88);
  }

  return result;
}

uint64_t sub_21C9B5FB8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C9B6034()
{
  result = qword_27CDF3BA8;
  if (!qword_27CDF3BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3B48, &qword_21CBB8D40);
    sub_21C9B5F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3BA8);
  }

  return result;
}

unint64_t sub_21C9B60C0()
{
  result = qword_27CDF3BE8;
  if (!qword_27CDF3BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3BD0, &qword_21CBB8DA8);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3BE8);
  }

  return result;
}

unint64_t sub_21C9B61A8()
{
  result = qword_27CDF3BF0;
  if (!qword_27CDF3BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3BB8, &qword_21CBB8D90);
    sub_21C705FD0(&qword_27CDF3BD8, type metadata accessor for PMChangePasswordOnWebsiteLink);
    sub_21C705FD0(&qword_27CDF3BE0, type metadata accessor for PMManagePasskeyOnWebsiteLink);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3BF0);
  }

  return result;
}

uint64_t sub_21C9B62C0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_21C9B633C()
{
  result = qword_27CDF3BF8;
  if (!qword_27CDF3BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C00, &qword_21CBB8DE0);
    sub_21C9B5FB8(&qword_27CDF3BA0, &qword_27CDF3B70, &qword_21CBB8D68, sub_21C9B5F88);
    sub_21C9B6034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3BF8);
  }

  return result;
}

unint64_t sub_21C9B63F4()
{
  result = qword_27CDF3C08;
  if (!qword_27CDF3C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C10, &qword_21CBB8DE8);
    sub_21C9B60C0();
    sub_21C9B61A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C08);
  }

  return result;
}

uint64_t sub_21C9B6494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82644();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_21C9BA424(a1, a2, type metadata accessor for PMSharingGroup);
  v12 = type metadata accessor for PMGroupInvitationAcceptanceFlow();
  v13 = v12[5];
  v23 = &unk_282E48D78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE950, &qword_21CBB8DF0);
  sub_21C6EADEC(&qword_27CDEE958, &qword_27CDEE950, &qword_21CBB8DF0);
  sub_21C87BEA8();
  sub_21CB82654();
  (*(v5 + 16))(v8, v11, v4);
  sub_21CB84D44();
  (*(v5 + 8))(v11, v4);
  v14 = v12[6];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v15 = v12[7];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v17 = (a2 + v15);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v23);

  type metadata accessor for PMAccountsState();
  sub_21C706018(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v18 = sub_21CB82674();
  v20 = v19;

  *v17 = v18;
  v17[1] = v20;
  return result;
}

uint64_t type metadata accessor for PMGroupInvitationAcceptanceFlow()
{
  result = qword_27CDF3C18;
  if (!qword_27CDF3C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C9B67C0(uint64_t a1)
{
  sub_21CB86484();
  if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v2 = 2;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x21CF15F90](1);
    sub_21CB85DE4();
    return sub_21CB864D4();
  }

  if (a1 == 2)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v2 = 4;
    goto LABEL_12;
  }

  if (a1 != 4)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  MEMORY[0x21CF15F90](v2);
  return sub_21CB864D4();
}

uint64_t sub_21C9B6888()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x21CF15F90](v2);
    }

    if (v1 == 1)
    {
      v2 = 2;
      return MEMORY[0x21CF15F90](v2);
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        v2 = 3;
        return MEMORY[0x21CF15F90](v2);
      case 3:
        v2 = 4;
        return MEMORY[0x21CF15F90](v2);
      case 4:
        v2 = 5;
        return MEMORY[0x21CF15F90](v2);
    }
  }

  MEMORY[0x21CF15F90](1);
  return sub_21CB85DE4();
}

uint64_t sub_21C9B6928()
{
  v1 = *v0;
  sub_21CB86484();
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = 2;
      goto LABEL_12;
    }

LABEL_14:
    MEMORY[0x21CF15F90](1);
    sub_21CB85DE4();
    return sub_21CB864D4();
  }

  if (v1 == 2)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 == 3)
  {
    v2 = 4;
    goto LABEL_12;
  }

  if (v1 != 4)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_12:
  MEMORY[0x21CF15F90](v2);
  return sub_21CB864D4();
}

uint64_t sub_21C9B69E4(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  return sub_21CB85DD4() & 1;
}

__n128 sub_21C9B6AB0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A50, &qword_21CBB51C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C30, &qword_21CBB8F90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9];
  v11 = *(type metadata accessor for PMGroupInvitationAcceptanceFlow() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  sub_21CB84D74();
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C38, &qword_21CBB8F98);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C40, &qword_21CBB8FA0);
  v13 = sub_21C87BEA8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C48, &qword_21CBB8FA8);
  v15 = sub_21C9B9CD4();
  *&v23 = v14;
  *(&v23 + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v23 = MEMORY[0x277CE1428];
  *(&v23 + 1) = &type metadata for PMGroupInvitationAcceptanceFlow.Step;
  *&v24 = v12;
  *(&v24 + 1) = MEMORY[0x277CE1410];
  *&v25 = v13;
  *(&v25 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CB82904();
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v7 + 32))(a1, v10, v6);
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CC0, &qword_21CBB8FD8) + 36);
  v18 = v28;
  *(v17 + 64) = v27;
  *(v17 + 80) = v18;
  *(v17 + 96) = v29;
  v19 = v24;
  *v17 = v23;
  *(v17 + 16) = v19;
  result = v26;
  *(v17 + 32) = v25;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_21C9B6D90(uint64_t a1)
{
  v2 = type metadata accessor for PMGroupInvitationAcceptanceFlow();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C9BA3BC(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21C9BA424(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMGroupInvitationAcceptanceFlow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C40, &qword_21CBB8FA0);
  sub_21C87BEA8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C48, &qword_21CBB8FA8);
  v8 = sub_21C9B9CD4();
  v10[0] = v7;
  v10[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_21CB84564();
}

uint64_t sub_21C9B6F54(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C48, &qword_21CBB8FA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_21C9B7030(*a1, a2, &v9 - v6);
  sub_21C9B9CD4();
  sub_21CB84674();
  return sub_21C6EA794(v7, &qword_27CDF3C48, &qword_21CBB8FA8);
}

uint64_t sub_21C9B7030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a3;
  v161 = a2;
  v147 = type metadata accessor for PMRemoveDuplicateAccountsList(0);
  v4 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v138 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CC8, &qword_21CBB8FE0);
  v6 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v145 = &v133 - v7;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CB0, &qword_21CBB8FD0);
  v8 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v148 = &v133 - v9;
  v144 = type metadata accessor for PMMoveAccountsList();
  v10 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v137 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CD0, &qword_21CBB8FE8);
  v12 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v143 = (&v133 - v13);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CA0, &qword_21CBB8FC8);
  v14 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v146 = &v133 - v15;
  v140 = sub_21CB81024();
  v139 = *(v140 - 8);
  v16 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for PMOnboardingView(0);
  v19 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v21 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CD8, &qword_21CBB8FF0);
  v22 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v158 = &v133 - v23;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CE0, &qword_21CBB8FF8);
  v24 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v151 = &v133 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CE8, &unk_21CBB9000);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v133 - v28);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C80, &qword_21CBB8FC0);
  v30 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v32 = &v133 - v31;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3C70, &qword_21CBB8FB8);
  v33 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v153 = &v133 - v34;
  v35 = type metadata accessor for PMGroupInvitationAcceptanceFlow();
  v155 = *(v35 - 8);
  v36 = *(v155 + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PMGroupInvitationOnboardingView();
  v39 = *(*(v38 - 1) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = &v133 - v41;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v119 = v161;
      sub_21C9BA3BC(v161, &v133 - v41, type metadata accessor for PMSharingGroup);
      sub_21C9BA3BC(v119, &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
      v120 = (*(v155 + 80) + 16) & ~*(v155 + 80);
      v121 = swift_allocObject();
      sub_21C9BA424(v37, v121 + v120, type metadata accessor for PMGroupInvitationAcceptanceFlow);
      v122 = &v42[v38[5]];
      *v122 = sub_21C9BA34C;
      v122[1] = v121;
      v123 = &v42[v38[6]];
      LOBYTE(v162) = 0;
      sub_21CB84D44();
      v124 = *(&v163 + 1);
      *v123 = v163;
      *(v123 + 1) = v124;
      v125 = &v42[v38[7]];
      LOBYTE(v162) = 0;
      sub_21CB84D44();
      v126 = *(&v163 + 1);
      *v125 = v163;
      *(v125 + 1) = v126;
      v127 = v38[8];
      v162 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EE8, &qword_21CBB95F0);
      sub_21CB84D44();
      *&v42[v127] = v163;
      sub_21C9BA3BC(v42, v29, type metadata accessor for PMGroupInvitationOnboardingView);
      swift_storeEnumTagMultiPayload();
      sub_21C706018(&qword_27CDF3C88, type metadata accessor for PMGroupInvitationOnboardingView);
      sub_21C9B9F2C();
      sub_21CB83494();
      sub_21C6EDBAC(v32, v151, &qword_27CDF3C80, &qword_21CBB8FC0);
      swift_storeEnumTagMultiPayload();
      sub_21C9B9E70();
      sub_21C9B9F80();
      v128 = v153;
      sub_21CB83494();
      sub_21C6EA794(v32, &qword_27CDF3C80, &qword_21CBB8FC0);
      sub_21C6EDBAC(v128, v158, &qword_27CDF3C70, &qword_21CBB8FB8);
      swift_storeEnumTagMultiPayload();
      sub_21C9B9DE4();
      sub_21C9BA06C();
      sub_21CB83494();
      sub_21C6EA794(v128, &qword_27CDF3C70, &qword_21CBB8FB8);
      v52 = type metadata accessor for PMGroupInvitationOnboardingView;
      goto LABEL_13;
    }

    if (a1 != 1)
    {
LABEL_16:
      sub_21C9BA3BC(v161, &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
      v130 = (*(v155 + 80) + 16) & ~*(v155 + 80);
      v131 = swift_allocObject();
      sub_21C9BA424(v37, v131 + v130, type metadata accessor for PMGroupInvitationAcceptanceFlow);
      *v29 = a1;
      v29[1] = sub_21C9BA2E0;
      v29[2] = v131;
      swift_storeEnumTagMultiPayload();
      sub_21C9BA33C(a1);
      sub_21C706018(&qword_27CDF3C88, type metadata accessor for PMGroupInvitationOnboardingView);
      sub_21C9B9F2C();

      sub_21CB83494();
      sub_21C6EDBAC(v32, v151, &qword_27CDF3C80, &qword_21CBB8FC0);
      swift_storeEnumTagMultiPayload();
      sub_21C9B9E70();
      sub_21C9B9F80();
      v132 = v153;
      sub_21CB83494();
      sub_21C6EA794(v32, &qword_27CDF3C80, &qword_21CBB8FC0);
      sub_21C6EDBAC(v132, v158, &qword_27CDF3C70, &qword_21CBB8FB8);
      swift_storeEnumTagMultiPayload();
      sub_21C9B9DE4();
      sub_21C9BA06C();
      sub_21CB83494();

      return sub_21C6EA794(v132, &qword_27CDF3C70, &qword_21CBB8FB8);
    }

    v53 = objc_opt_self();
    v54 = [v53 headerImageNameForMovingCredentialsToGroup];
    sub_21CB855C4();

    v148 = sub_21CB84BB4();
    v55 = [v53 headerTitleForMovingCredentialsToGroup];
    v147 = sub_21CB855C4();
    v145 = v56;

    v57 = type metadata accessor for PMSharingGroup();
    v58 = v161;
    v59 = (v161 + *(v57 + 20));
    v60 = *v59;
    v61 = v59[1];
    v62 = sub_21CB85584();
    v63 = [v53 descriptionForMovingCredentialsToGroup_];

    v142 = sub_21CB855C4();
    v138 = v64;

    sub_21CB81014();
    v137 = sub_21CB81004();
    v136 = v65;
    v139 = *(v139 + 8);
    v66 = v140;
    (v139)(v18, v140);
    sub_21C9BA3BC(v58, &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v67 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v155 = swift_allocObject();
    sub_21C9BA424(&v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v155 + v67, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    sub_21CB81014();
    v135 = sub_21CB81004();
    v134 = v68;
    (v139)(v18, v66);
    sub_21C9BA3BC(v161, &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v69 = swift_allocObject();
    sub_21C9BA424(v37, v69 + v67, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v70 = v147;
    *v21 = v148;
    *(v21 + 1) = v70;
    v71 = v142;
    *(v21 + 2) = v145;
    *(v21 + 3) = v71;
    *(v21 + 4) = v138;
    *(v21 + 5) = 0;
    *(v21 + 24) = 258;
    v72 = v136;
    *(v21 + 7) = v137;
    *(v21 + 8) = v72;
    v73 = v155;
    *(v21 + 9) = sub_21C9BA25C;
    *(v21 + 10) = v73;
    v21[88] = 0;
    v74 = v134;
    *(v21 + 12) = v135;
    *(v21 + 13) = v74;
    *(v21 + 14) = sub_21C9BA264;
    *(v21 + 15) = v69;
    v21[128] = 0;
    v75 = *(v154 + 28);
    *&v21[v75] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    sub_21C9BA3BC(v21, v143, type metadata accessor for PMOnboardingView);
    swift_storeEnumTagMultiPayload();
    sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    sub_21C706018(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList);
    v76 = v146;
    sub_21CB83494();
    sub_21C6EDBAC(v76, v151, &qword_27CDF3CA0, &qword_21CBB8FC8);
    swift_storeEnumTagMultiPayload();
    sub_21C9B9E70();
    sub_21C9B9F80();
    v77 = v153;
    sub_21CB83494();
    sub_21C6EA794(v76, &qword_27CDF3CA0, &qword_21CBB8FC8);
    v78 = &qword_27CDF3C70;
    v79 = &qword_21CBB8FB8;
    sub_21C6EDBAC(v77, v158, &qword_27CDF3C70, &qword_21CBB8FB8);
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    if (a1 != 3)
    {
      if (a1 == 4)
      {
        v43 = v161;
        v42 = v138;
        sub_21C9BA3BC(v161, v138, type metadata accessor for PMSharingGroup);
        sub_21C9BA3BC(v43, &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
        v44 = (*(v155 + 80) + 16) & ~*(v155 + 80);
        v45 = swift_allocObject();
        sub_21C9BA424(&v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for PMGroupInvitationAcceptanceFlow);
        v46 = v147;
        v47 = &v42[*(v147 + 20)];
        *v47 = sub_21C9BA5A4;
        v47[1] = v45;
        v48 = &v42[*(v46 + 24)];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3CF0, &qword_21CBC8760);
        v49 = swift_allocObject();
        *(v49 + 16) = 0;
        v162 = v49;
        sub_21CB84D44();
        v50 = *(&v163 + 1);
        *v48 = v163;
        *(v48 + 1) = v50;
        sub_21C9BA3BC(v42, v145, type metadata accessor for PMRemoveDuplicateAccountsList);
        swift_storeEnumTagMultiPayload();
        sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
        sub_21C706018(&qword_27CDF3CB8, type metadata accessor for PMRemoveDuplicateAccountsList);
        v51 = v148;
        sub_21CB83494();
        sub_21C6EDBAC(v51, v158, &qword_27CDF3CB0, &qword_21CBB8FD0);
        swift_storeEnumTagMultiPayload();
        sub_21C9B9DE4();
        sub_21C9BA06C();
        sub_21CB83494();
        sub_21C6EA794(v51, &qword_27CDF3CB0, &qword_21CBB8FD0);
        v52 = type metadata accessor for PMRemoveDuplicateAccountsList;
LABEL_13:
        v92 = v52;
        v93 = v42;
        return sub_21C9BA48C(v93, v92);
      }

      goto LABEL_16;
    }

    v94 = objc_opt_self();
    v95 = [v94 headerImageNameForRemovingDuplicateCredentialsInGroup];
    sub_21CB855C4();

    v153 = sub_21CB84BB4();
    v96 = [v94 headerTitleForRemovingDuplicateCredentialsInGroup];
    v97 = sub_21CB855C4();
    v151 = v98;
    v152 = v97;

    v99 = type metadata accessor for PMSharingGroup();
    v100 = v161;
    v101 = (v161 + *(v99 + 20));
    v102 = *v101;
    v103 = v101[1];
    v104 = sub_21CB85584();
    v105 = [v94 descriptionForRemovingDuplicateCredentialsInGroup_];

    v106 = sub_21CB855C4();
    v149 = v107;
    v150 = v106;

    sub_21CB81014();
    v146 = sub_21CB81004();
    v144 = v108;
    v143 = *(v139 + 8);
    v109 = v140;
    v143(v18, v140);
    sub_21C9BA3BC(v100, &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v110 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v155 = swift_allocObject();
    sub_21C9BA424(&v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v155 + v110, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    sub_21CB81014();
    v141 = sub_21CB81004();
    v139 = v111;
    v143(v18, v109);
    sub_21C9BA3BC(v161, &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v112 = swift_allocObject();
    sub_21C9BA424(v37, v112 + v110, type metadata accessor for PMGroupInvitationAcceptanceFlow);
    v113 = v152;
    *v21 = v153;
    *(v21 + 1) = v113;
    v114 = v150;
    *(v21 + 2) = v151;
    *(v21 + 3) = v114;
    *(v21 + 4) = v149;
    *(v21 + 5) = 0;
    *(v21 + 24) = 258;
    v115 = v144;
    *(v21 + 7) = v146;
    *(v21 + 8) = v115;
    v116 = v155;
    *(v21 + 9) = sub_21C9BA1D8;
    *(v21 + 10) = v116;
    v21[88] = 0;
    v117 = v139;
    *(v21 + 12) = v141;
    *(v21 + 13) = v117;
    *(v21 + 14) = sub_21C9BA244;
    *(v21 + 15) = v112;
    v21[128] = 0;
    v118 = *(v154 + 28);
    *&v21[v118] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    sub_21C9BA3BC(v21, v145, type metadata accessor for PMOnboardingView);
    swift_storeEnumTagMultiPayload();
    sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    sub_21C706018(&qword_27CDF3CB8, type metadata accessor for PMRemoveDuplicateAccountsList);
    v77 = v148;
    sub_21CB83494();
    v78 = &qword_27CDF3CB0;
    v79 = &qword_21CBB8FD0;
    sub_21C6EDBAC(v77, v158, &qword_27CDF3CB0, &qword_21CBB8FD0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_21C9B9DE4();
    sub_21C9BA06C();
    sub_21CB83494();
    sub_21C6EA794(v77, v78, v79);
    v92 = type metadata accessor for PMOnboardingView;
    v93 = v21;
    return sub_21C9BA48C(v93, v92);
  }

  v80 = v161;
  v81 = v137;
  sub_21C9BA3BC(v161, v137, type metadata accessor for PMSharingGroup);
  v82 = type metadata accessor for PMSharingGroup();
  (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  sub_21C9BA3BC(v80, &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationAcceptanceFlow);
  v83 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v84 = swift_allocObject();
  sub_21C9BA424(&v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v84 + v83, type metadata accessor for PMGroupInvitationAcceptanceFlow);
  v85 = v144;
  *(v81 + *(v144 + 20)) = 0;
  v86 = (v81 + *(v85 + 24));
  *v86 = sub_21C9BA5A8;
  v86[1] = v84;
  v87 = (v81 + *(v85 + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  v162 = v88;
  sub_21CB84D44();
  v89 = *(&v163 + 1);
  *v87 = v163;
  v87[1] = v89;
  sub_21C9BA3BC(v81, v143, type metadata accessor for PMMoveAccountsList);
  swift_storeEnumTagMultiPayload();
  sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
  sub_21C706018(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList);
  v90 = v146;
  sub_21CB83494();
  sub_21C6EDBAC(v90, v151, &qword_27CDF3CA0, &qword_21CBB8FC8);
  swift_storeEnumTagMultiPayload();
  sub_21C9B9E70();
  sub_21C9B9F80();
  v91 = v153;
  sub_21CB83494();
  sub_21C6EA794(v90, &qword_27CDF3CA0, &qword_21CBB8FC8);
  sub_21C6EDBAC(v91, v158, &qword_27CDF3C70, &qword_21CBB8FB8);
  swift_storeEnumTagMultiPayload();
  sub_21C9B9DE4();
  sub_21C9BA06C();
  sub_21CB83494();
  sub_21C6EA794(v91, &qword_27CDF3C70, &qword_21CBB8FB8);
  v92 = type metadata accessor for PMMoveAccountsList;
  v93 = v81;
  return sub_21C9BA48C(v93, v92);
}

void sub_21C9B889C(void *a1)
{
  v2 = sub_21CB82644();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (a1)
  {
    v4 = a1;
    v5 = [v4 devicesWithSharingUnavailable];
    type metadata accessor for PMDevice(0);
    v6 = sub_21CB85824();

    if (v6 >> 62)
    {
      v7 = sub_21CB85FA4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = *(type metadata accessor for PMGroupInvitationAcceptanceFlow() + 20);
      v9 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
      sub_21CB84D54();
      sub_21C87BEA8();
      sub_21CB82634();

      sub_21CB84D64();
      return;
    }
  }

  sub_21C9B8A18();
}

uint64_t sub_21C9B8A18()
{
  v1 = v0;
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB82644();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  if (sub_21C9B9278())
  {
    v9 = *(type metadata accessor for PMGroupInvitationAcceptanceFlow() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    sub_21CB84D54();
    v10 = 1;
  }

  else
  {
    v11 = [objc_opt_self() sharedStore];
    sub_21CB85B64();
    v12 = sub_21CB85584();

    v13 = [v11 duplicateAccountsWithGroupID_];

    sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
    v14 = sub_21CB85824();

    if (v14 >> 62)
    {
      v15 = sub_21CB85FA4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = type metadata accessor for PMGroupInvitationAcceptanceFlow();
    if (!v15)
    {
      v19 = v1 + *(v16 + 24);
      sub_21C95B2C8(v6);
      sub_21CB823A4();
      return (*(v3 + 8))(v6, v2);
    }

    v17 = *(v16 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    sub_21CB84D54();
    v10 = 3;
  }

  v20[1] = v10;
  sub_21C87BEA8();
  sub_21CB82634();
  return sub_21CB84D64();
}

uint64_t sub_21C9B8CB4(uint64_t a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB82644();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = [objc_opt_self() sharedStore];
  sub_21CB85B64();
  v10 = sub_21CB85584();

  v11 = [v9 duplicateAccountsWithGroupID_];

  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v12 = sub_21CB85824();

  if (v12 >> 62)
  {
    v13 = sub_21CB85FA4();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = type metadata accessor for PMGroupInvitationAcceptanceFlow();
  if (v13)
  {
    v15 = *(v14 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    sub_21CB84D54();
    v18[1] = 3;
    sub_21C87BEA8();
    sub_21CB82634();
    return sub_21CB84D64();
  }

  else
  {
    v17 = a1 + *(v14 + 24);
    sub_21C95B2C8(v6);
    sub_21CB823A4();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_21C9B8F10()
{
  v0 = sub_21CB82644();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = *(type metadata accessor for PMGroupInvitationAcceptanceFlow() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  sub_21CB84D54();
  sub_21C87BEA8();
  sub_21CB82634();
  return sub_21CB84D64();
}

uint64_t sub_21C9B8FF0(uint64_t a1)
{
  v20 = sub_21CB82F84();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_21CB823B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMGroupInvitationAcceptanceFlow();
  sub_21C6EDBAC(a1 + *(v15 + 24), v9, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_21CB823A4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C9B9278()
{
  v1 = sub_21CB85C44();
  v66 = *(v1 - 8);
  v2 = *(v66 + 8);
  MEMORY[0x28223BE20](v1);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v4 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v6 = &v46 - v5;
  v50 = type metadata accessor for PMAccount.MockData(0);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v65 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  v23 = type metadata accessor for PMAccount(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v67 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(type metadata accessor for PMGroupInvitationAcceptanceFlow() + 28);
  v63 = v0;
  v28 = *(v0 + v27 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v68;
  v54 = *(v68 + 16);
  if (v54)
  {
    v30 = v23;
    v31 = 0;
    v55 = v68 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v32 = *(v30 + 24);
    v58 = (v66 + 16);
    v59 = v32;
    v56 = (v66 + 48);
    v57 = (v66 + 56);
    v46 = (v66 + 32);
    v47 = (v66 + 8);
    v33 = v24;
    v34 = v65;
    v66 = v16;
    v52 = v24;
    v53 = v19;
    v60 = v68;
    while (v31 < *(result + 16))
    {
      v35 = v67;
      sub_21C9BA3BC(v55 + *(v33 + 72) * v31, v67, type metadata accessor for PMAccount);
      sub_21C9BA3BC(v35 + v59, v34, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = v49;
        sub_21C9BA424(v34, v49, type metadata accessor for PMAccount.MockData);
        sub_21C6EDBAC(v36 + *(v50 + 72), v19, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C9BA48C(v36, type metadata accessor for PMAccount.MockData);
      }

      else
      {
        v37 = *v34;
        sub_21CB85B94();
      }

      sub_21C7C3490(v19, v22);
      (*v58)(v16, v63, v1);
      (*v57)(v16, 0, 1, v1);
      v38 = *(v62 + 48);
      sub_21C6EDBAC(v22, v6, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EDBAC(v16, &v6[v38], &unk_27CDF20B0, &unk_21CBA0090);
      v39 = v22;
      v40 = v16;
      v41 = *v56;
      if ((*v56)(v6, 1, v1) == 1)
      {
        sub_21C6EA794(v40, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C6EA794(v39, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C9BA48C(v67, type metadata accessor for PMAccount);
        if (v41(&v6[v38], 1, v1) != 1)
        {
          goto LABEL_16;
        }

        v22 = v39;
        sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
      }

      else
      {
        sub_21C6EDBAC(v6, v64, &unk_27CDF20B0, &unk_21CBA0090);
        if (v41(&v6[v38], 1, v1) == 1)
        {
          sub_21C6EA794(v66, &unk_27CDF20B0, &unk_21CBA0090);
          sub_21C6EA794(v39, &unk_27CDF20B0, &unk_21CBA0090);
          sub_21C9BA48C(v67, type metadata accessor for PMAccount);
          (*v47)(v64, v1);
LABEL_16:
          sub_21C6EA794(v6, &qword_27CDEAC40, &qword_21CBA1A40);
LABEL_17:
          v45 = 1;
          goto LABEL_18;
        }

        v42 = v64;
        v43 = v48;
        (*v46)(v48, &v6[v38], v1);
        sub_21C706018(&qword_27CDEAC48, MEMORY[0x277D49978]);
        v51 = sub_21CB85574();
        v44 = *v47;
        (*v47)(v43, v1);
        sub_21C6EA794(v66, &unk_27CDF20B0, &unk_21CBA0090);
        v22 = v39;
        sub_21C6EA794(v39, &unk_27CDF20B0, &unk_21CBA0090);
        sub_21C9BA48C(v67, type metadata accessor for PMAccount);
        v44(v42, v1);
        sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
        if ((v51 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      ++v31;
      v19 = v53;
      v34 = v65;
      v16 = v66;
      result = v60;
      v33 = v52;
      if (v54 == v31)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v45 = 0;
LABEL_18:

    return v45;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI31PMGroupInvitationAcceptanceFlowV4Step33_A8D840243F507EFDC0F63BB124EEB1B4LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C9B9A64(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C9B9ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void sub_21C9B9B44()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C721FAC(319, &qword_27CDF2A40, MEMORY[0x277CDD968], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_21C721FAC(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21C705CFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_21C9B9C5C()
{
  result = qword_27CDF3C28;
  if (!qword_27CDF3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C28);
  }

  return result;
}

unint64_t sub_21C9B9CD4()
{
  result = qword_27CDF3C50;
  if (!qword_27CDF3C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C48, &qword_21CBB8FA8);
    sub_21C9B9D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C50);
  }

  return result;
}

unint64_t sub_21C9B9D58()
{
  result = qword_27CDF3C58;
  if (!qword_27CDF3C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C60, &qword_21CBB8FB0);
    sub_21C9B9DE4();
    sub_21C9BA06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C58);
  }

  return result;
}

unint64_t sub_21C9B9DE4()
{
  result = qword_27CDF3C68;
  if (!qword_27CDF3C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C70, &qword_21CBB8FB8);
    sub_21C9B9E70();
    sub_21C9B9F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C68);
  }

  return result;
}

unint64_t sub_21C9B9E70()
{
  result = qword_27CDF3C78;
  if (!qword_27CDF3C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3C80, &qword_21CBB8FC0);
    sub_21C706018(&qword_27CDF3C88, type metadata accessor for PMGroupInvitationOnboardingView);
    sub_21C9B9F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C78);
  }

  return result;
}

unint64_t sub_21C9B9F2C()
{
  result = qword_27CDF3C90;
  if (!qword_27CDF3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C90);
  }

  return result;
}

unint64_t sub_21C9B9F80()
{
  result = qword_27CDF3C98;
  if (!qword_27CDF3C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3CA0, &qword_21CBB8FC8);
    sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    sub_21C706018(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3C98);
  }

  return result;
}

unint64_t sub_21C9BA06C()
{
  result = qword_27CDF3CA8;
  if (!qword_27CDF3CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3CB0, &qword_21CBB8FD0);
    sub_21C706018(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    sub_21C706018(&qword_27CDF3CB8, type metadata accessor for PMRemoveDuplicateAccountsList);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3CA8);
  }

  return result;
}

uint64_t sub_21C9BA158(uint64_t *a1)
{
  v3 = *(type metadata accessor for PMGroupInvitationAcceptanceFlow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9B6F54(a1, v4);
}

uint64_t sub_21C9BA2E0()
{
  v1 = *(type metadata accessor for PMGroupInvitationAcceptanceFlow() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21C9B8A18();
}

id sub_21C9BA33C(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_21C9BA34C(void *a1)
{
  v2 = *(*(type metadata accessor for PMGroupInvitationAcceptanceFlow() - 8) + 80);

  sub_21C9B889C(a1);
}

uint64_t sub_21C9BA3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9BA424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9BA48C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C9BA4EC()
{
  result = qword_27CDF3CF8;
  if (!qword_27CDF3CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3CC0, &qword_21CBB8FD8);
    sub_21C6EADEC(&qword_27CDF3D00, &qword_27CDF3C30, &qword_21CBB8F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3CF8);
  }

  return result;
}

uint64_t type metadata accessor for PMGroupInvitationDetails()
{
  result = qword_27CDF3D08;
  if (!qword_27CDF3D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9BA620()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C707F4C();
    if (v1 <= 0x3F)
    {
      sub_21C9BA6D4();
      if (v2 <= 0x3F)
      {
        sub_21C721A6C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C9BA6D4()
{
  if (!qword_27CDF3D18)
  {
    type metadata accessor for PMGroupInvitationModel();
    sub_21C707CB0(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3D18);
    }
  }
}

uint64_t sub_21C9BA784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v86 = sub_21CB81024();
  v85 = *(v86 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMGroupInvitationDetails();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v92 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for PMOnboardingView(0);
  v10 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D50, &qword_21CBB9120);
  v79 = *(v80 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v69 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D38, &qword_21CBB9118);
  v15 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v69 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D58, &unk_21CBB9128);
  v88 = *(v89 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v69 - v18;
  v81 = (a1 + *(v6 + 32));
  v19 = v81[1];
  v20 = sub_21C9BD2A0();
  v21 = sub_21C9BD434();
  sub_21CA88900(a1, v20, v21 & 1, v99);

  v22 = sub_21C9BD434();
  v23 = objc_opt_self();
  v24 = &selRef_declineButtonTitle;
  if (v22)
  {
    v24 = &selRef_acceptButtonTitle;
  }

  v25 = *v24;
  v26 = sub_21C9BCF98;
  if (v22)
  {
    v26 = sub_21C9BD298;
  }

  v78 = v26;
  v27 = [v23 v25];
  v73 = sub_21CB855C4();
  v72 = v28;

  sub_21C9BCED0(a1, v9);
  v29 = *(v7 + 80);
  v30 = (v29 + 16) & ~v29;
  v71 = swift_allocObject();
  sub_21C9BCF34(v9, v71 + v30);
  v31 = sub_21C9BD434();
  v32 = objc_opt_self();
  v33 = &selRef_declineButtonTitle;
  if ((v31 & 1) == 0)
  {
    v33 = &selRef_acceptButtonTitle;
  }

  v34 = *v33;
  v35 = sub_21C9BCFB8;
  if (v31)
  {
    v35 = sub_21C9BD294;
  }

  v70 = v35;
  v36 = [v32 v34];
  v69 = sub_21CB855C4();
  v38 = v37;

  sub_21C9BCED0(a1, v9);
  v82 = v29;
  v39 = swift_allocObject();
  v83 = (v29 + 16) & ~v29;
  v90 = v9;
  sub_21C9BCF34(v9, v39 + v30);
  v40 = v99[2];
  *(v12 + 1) = v99[1];
  *(v12 + 2) = v40;
  *(v12 + 24) = v100;
  *v12 = v99[0];
  v41 = v72;
  *(v12 + 7) = v73;
  *(v12 + 8) = v41;
  v42 = v71;
  *(v12 + 9) = v78;
  *(v12 + 10) = v42;
  v12[88] = 0;
  *(v12 + 12) = v69;
  *(v12 + 13) = v38;
  *(v12 + 14) = v70;
  *(v12 + 15) = v39;
  v43 = v74;
  v12[128] = 0;
  v44 = *(v75 + 28);
  *&v12[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v78 = a1;
  v93 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B68, &qword_21CBB5398);
  sub_21C707CB0(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B70, &qword_21CBB53A0);
  v46 = sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0);
  v95 = v45;
  v96 = v46;
  swift_getOpaqueTypeConformance2();
  v47 = v76;
  sub_21CB84894();
  v48 = v12;
  v49 = v77;
  sub_21C85BC4C(v48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v38) = v95;
  KeyPath = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = v38;
  (*(v79 + 32))(v43, v47, v80);
  v52 = (v43 + *(v49 + 36));
  *v52 = KeyPath;
  v52[1] = sub_21C735744;
  v52[2] = v51;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v95 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
  {
    v53 = v97;
    [v97 safari_isOrContainsNetworkUnavailableError];
  }

  else
  {
    v53 = 0;
  }

  v54 = v84;
  sub_21CB81014();
  v55 = sub_21CB81004();
  v57 = v56;

  (*(v85 + 8))(v54, v86);
  v97 = v55;
  v98 = v57;
  v58 = *v81;
  type metadata accessor for PMGroupInvitationModel();
  sub_21C707CB0(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v59 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C9BCC18();
  sub_21C71F3FC();
  v60 = v87;
  sub_21CB84734();

  sub_21C6EA794(v43, &qword_27CDF3D38, &qword_21CBB9118);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D28, &qword_21CBB9110);
  v62 = v91;
  v63 = v91 + *(v61 + 36);
  sub_21CB829E4();
  v64 = v90;
  sub_21C9BCED0(v78, v90);
  v65 = v83;
  v66 = swift_allocObject();
  sub_21C9BCF34(v64, v66 + v65);
  v67 = (v63 + *(type metadata accessor for PMKeyboardShortcutActionViewModifier() + 20));
  *v67 = sub_21C9BD054;
  v67[1] = v66;
  return (*(v88 + 32))(v62, v60, v89);
}

uint64_t sub_21C9BB2C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B70, &qword_21CBB53A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_21C9BB3E4(&v7 - v3);
  v5 = sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0);
  MEMORY[0x21CF131E0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C9BB3E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2B98, &unk_21CBB9270);
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v43 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F90, &unk_21CBB2DE0);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v43 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F98, &unk_21CBB9280);
  v44 = *(v47 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v47);
  v10 = &v43 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA0, &unk_21CBB2DF0);
  v45 = *(v49 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v50 = &v43 - v19;
  v20 = sub_21CB83604();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v22 = *(v48 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v48);
  v25 = &v43 - v24;
  sub_21CB83594();
  v55 = v2;
  type metadata accessor for PMPlatformRoleButton();
  sub_21C707CB0(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  sub_21CB82194();
  v26 = *(v2 + *(type metadata accessor for PMGroupInvitationDetails() + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v56 == 1)
  {
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
    sub_21C94B6AC();
    sub_21CB82194();
    v27 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280);
    v28 = v47;
    sub_21CB82784();
    (*(v44 + 8))(v10, v28);
    v56 = v28;
    v57 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v46;
    v31 = v49;
    MEMORY[0x21CF131E0](v13, v49, OpaqueTypeConformance2);
    v32 = v51;
    (*(v5 + 16))(v17, v30, v51);
    (*(v5 + 56))(v17, 0, 1, v32);
    v56 = v31;
    v57 = OpaqueTypeConformance2;
    v33 = swift_getOpaqueTypeConformance2();
    v34 = v50;
    MEMORY[0x21CF13220](v17, v32, v33);
    sub_21C6EA794(v17, &qword_27CDF1FA8, &unk_21CBB9290);
    (*(v5 + 8))(v30, v32);
    (*(v45 + 8))(v13, v31);
  }

  else
  {
    v35 = v51;
    (*(v5 + 56))(v17, 1, 1, v51);
    v36 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280);
    v56 = v47;
    v57 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v56 = v49;
    v57 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v34 = v50;
    MEMORY[0x21CF13220](v17, v35, v38);
    sub_21C6EA794(v17, &qword_27CDF1FA8, &unk_21CBB9290);
  }

  v39 = v52;
  v40 = *(v53 + 48);
  v41 = v48;
  (*(v22 + 16))(v52, v25, v48);
  sub_21C76BBC4(v34, &v39[v40]);
  sub_21CB83394();
  sub_21C6EA794(v34, &qword_27CDF1FA8, &unk_21CBB9290);
  return (*(v22 + 8))(v25, v41);
}

uint64_t sub_21C9BBB40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C9BBBC0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C9BBC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21CB823B4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_21CB858B4();
  v4[6] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_21C9BBD28, v9, v8);
}

uint64_t sub_21C9BBD28()
{
  v1 = v0[2];
  v2 = type metadata accessor for PMGroupInvitationDetails();
  v0[9] = v2;
  v3 = *(v1 + *(v2 + 24) + 8);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_21C9BBDD0;

  return sub_21C9BD638();
}

uint64_t sub_21C9BBDD0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_21C9BBFC4;
  }

  else
  {
    v7 = sub_21C9BBF0C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C9BBF0C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  v7 = v6 + *(v1 + 28);
  sub_21C95B2C8(v3);
  sub_21CB823A4();
  (*(v5 + 8))(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21C9BBFC4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_21C9BC030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PMGroupInvitationDetails();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_21CB858E4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21C9BCED0(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB858B4();
  v13 = sub_21CB858A4();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_21C9BCF34(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_21C822ECC(0, 0, v11, a3, v15);
}

uint64_t sub_21C9BC1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21CB823B4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_21CB858B4();
  v4[6] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_21C9BC2D8, v9, v8);
}

uint64_t sub_21C9BC2D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for PMGroupInvitationDetails();
  v6 = v4 + *(v5 + 28);
  sub_21C95B2C8(v1);
  sub_21CB823A4();
  (*(v2 + 8))(v1, v3);
  v7 = *(v4 + *(v5 + 24) + 8);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_21C9BC3C4;

  return sub_21C9BDE98();
}

uint64_t sub_21C9BC3C4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_21C9BC56C;
  }

  else
  {
    v7 = sub_21C9BC500;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C9BC500()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21C9BC56C()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_21C9BC5D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMGroupInvitationDetails();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = [objc_opt_self() cancelButtonTitle];
  v8 = sub_21CB855C4();
  v10 = v9;

  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81EF4();
  sub_21C9BCED0(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  result = sub_21C9BCF34(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *a2 = v8;
  a2[1] = v10;
  v16 = (a2 + *(v11 + 24));
  *v16 = sub_21C9BD29C;
  v16[1] = v14;
  return result;
}

uint64_t sub_21C9BC730(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_21CB823B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMGroupInvitationDetails();
  sub_21C7B8998(a1 + *(v16 + 28), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21CB823A4();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21C9BC9A4@<X0>(uint64_t a1@<X8>)
{
  sub_21CB82234();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v4 = *MEMORY[0x277CDF438];
  v5 = sub_21CB82064();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_21C9BCA5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3D28, &qword_21CBB9110);
  sub_21C9BCAD4();
  return sub_21CB82924();
}

unint64_t sub_21C9BCAD4()
{
  result = qword_27CDF3D30;
  if (!qword_27CDF3D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3D28, &qword_21CBB9110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3D38, &qword_21CBB9118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED298, &qword_21CBA6570);
    sub_21C9BCC18();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C707CB0(&qword_27CDF3D48, type metadata accessor for PMKeyboardShortcutActionViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3D30);
  }

  return result;
}

unint64_t sub_21C9BCC18()
{
  result = qword_27CDF3D40;
  if (!qword_27CDF3D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3D38, &qword_21CBB9118);
    type metadata accessor for PMOnboardingView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B68, &qword_21CBB5398);
    sub_21C707CB0(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B70, &qword_21CBB53A0);
    sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3D40);
  }

  return result;
}

uint64_t sub_21C9BCDD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C9BCE54(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_21CB81DC4();
}

uint64_t sub_21C9BCED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupInvitationDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9BCF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupInvitationDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9BD0B4(uint64_t a1)
{
  v4 = *(type metadata accessor for PMGroupInvitationDetails() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9BBC34(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C9BD1A4(uint64_t a1)
{
  v4 = *(type metadata accessor for PMGroupInvitationDetails() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C9BC1E4(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C9BD2A0()
{
  v1 = v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group;
  v2 = *(v1 + *(type metadata accessor for PMSharingGroup() + 24));
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v2 + 16);
      v8 = (v2 + 32 + 112 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
          return result;
        }

        v10 = v8[3];
        v11 = v8[4];
        v12 = v8[6];
        v29 = v8[5];
        v13 = v8[1];
        v14 = v8[2];
        v24 = *v8;
        v25 = v13;
        v30 = v12;
        v27 = v10;
        v28 = v11;
        v26 = v14;
        v5 = v9 + 1;
        if ((v29 & 1) == 0)
        {
          break;
        }

        v8 += 7;
        ++v9;
        if (v3 == v5)
        {
          goto LABEL_15;
        }
      }

      sub_21C7A33F0(&v24, &v23);
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v6;
      if ((result & 1) == 0)
      {
        result = sub_21C7B10A0(0, *(v6 + 16) + 1, 1);
        v6 = v31;
      }

      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_21C7B10A0((v15 > 1), v16 + 1, 1);
        v6 = v31;
      }

      *(v6 + 16) = v16 + 1;
      v17 = (v6 + 112 * v16);
      v18 = v24;
      v19 = v26;
      v17[3] = v25;
      v17[4] = v19;
      v17[2] = v18;
      v20 = v27;
      v21 = v28;
      v22 = v30;
      v17[7] = v29;
      v17[8] = v22;
      v17[5] = v20;
      v17[6] = v21;
    }

    while (v3 - 1 != v9);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:

  return v6;
}

uint64_t sub_21C9BD434()
{
  v1 = v0;
  sub_21CB25D9C(v16);
  v2 = v18;
  if (!v18)
  {
    return 0;
  }

  v3 = v17;

  sub_21C6EA794(v16, &qword_27CDECC50, &unk_21CBB52A0);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_knownUserStatusCache;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (*(v5 + 16) && (v6 = sub_21CB10A3C(v3, v2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v9 = [objc_opt_self() sharedManager];

    v10 = sub_21CB85584();

    v11 = [v9 fetchContactForUserHandle_];

    v8 = v11 != 0;
    if (v11)
    {
    }

    swift_beginAccess();
    v12 = *(v1 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v1 + v4);
    *(v1 + v4) = 0x8000000000000000;
    sub_21C8D4CD8(v11 != 0, v3, v2, isUniquelyReferenced_nonNull_native);

    *(v1 + v4) = v15;
    swift_endAccess();
  }

  return v8;
}

uint64_t sub_21C9BD638()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_21CB85C44();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v1[11] = v7;
  v1[12] = v6;

  return MEMORY[0x2822009F8](sub_21C9BD764, v7, v6);
}

uint64_t sub_21C9BD764()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 144) = 1;

  sub_21CB81DC4();
  v6 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation);
  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation + 8);

  v6(v7);

  v8 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group;
  *(v0 + 104) = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group;
  v9 = *(v2 + 16);
  *(v0 + 112) = v9;
  *(v0 + 120) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v4 + v8, v3);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_21C9BD8D4;
  v11 = *(v0 + 72);

  return sub_21C9DB508(v11);
}

uint64_t sub_21C9BD8D4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {
    v7 = sub_21C9BDB7C;
  }

  else
  {
    v7 = sub_21C9BDA5C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C9BDA5C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v13 = v0[9];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  v9 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated);
  v10 = *(v8 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated + 8);
  v2(v7, v8 + v3, v5);
  (*(v6 + 56))(v7, 0, 1, v5);

  v9(v7);

  sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);

  v11 = v0[1];

  return v11();
}

uint64_t sub_21C9BDB7C()
{
  v22 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 80);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 24);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v5 = sub_21CB81C84();
    __swift_project_value_buffer(v5, qword_27CE186E0);
    v6 = v4;
    v7 = sub_21CB81C64();
    v8 = sub_21CB85AF4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446210;
      v11 = [v6 safari_privacyPreservingDescription];
      v12 = sub_21CB855C4();
      v14 = v13;

      v15 = sub_21C98E004(v12, v14, &v21);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_21C6E5000, v7, v8, "Failed to accept invitation to a shared passwords group. %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);
    }

    v16 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 145) = 1;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 32) = v6;

    v6;
    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 146) = 0;

    sub_21CB81DC4();
    swift_willThrow();
  }

  v17 = *(v0 + 72);
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21C9BDE98()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_21CB85C44();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v1[11] = v7;
  v1[12] = v6;

  return MEMORY[0x2822009F8](sub_21C9BDFC4, v7, v6);
}

uint64_t sub_21C9BDFC4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 120) = 1;

  sub_21CB81DC4();
  v6 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation);
  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation + 8);

  v6(v7);

  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group, v3);
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_21C9BE124;
  v9 = *(v0 + 72);

  return sub_21C9DB88C(v9);
}

uint64_t sub_21C9BE124()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {
    v7 = sub_21C9BE3A0;
  }

  else
  {
    v7 = sub_21C9BE2AC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C9BE2AC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  v8 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated);
  v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated + 8);
  (*(v4 + 56))(v5, 1, 1, v3);

  v8(v5);

  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21C9BE3A0()
{
  v22 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 24);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v5 = sub_21CB81C84();
    __swift_project_value_buffer(v5, qword_27CE186E0);
    v6 = v4;
    v7 = sub_21CB81C64();
    v8 = sub_21CB85AF4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136446210;
      v11 = [v6 safari_privacyPreservingDescription];
      v12 = sub_21CB855C4();
      v14 = v13;

      v15 = sub_21C98E004(v12, v14, &v21);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_21C6E5000, v7, v8, "Failed to decline invitation to a shared passwords group. %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);
    }

    v16 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 121) = 1;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 32) = v6;

    v6;
    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 122) = 0;

    sub_21CB81DC4();
    swift_willThrow();
  }

  v17 = *(v0 + 72);
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21C9BE6F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_21C979EE8(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group);
  v1 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToAcceptAlertPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToAcceptError;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToDeclineAlertPresented, v2);
  v6(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToDeclineError, v5);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__isProcessingInvitation, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__isDeclineAlertPresented, v2);
  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_knownUserStatusCache);

  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation + 8);

  v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated + 8);

  return v0;
}

uint64_t sub_21C9BE890()
{
  sub_21C9BE6F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMGroupInvitationModel()
{
  result = qword_27CDF3DA8;
  if (!qword_27CDF3DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9BE93C()
{
  v0 = type metadata accessor for PMSharingGroup();
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    sub_21C6E7ED8();
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_21C9BEA70();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C9BEA70()
{
  if (!qword_27CDF2128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1EC0, &qword_21CBB2AB0);
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2128);
    }
  }
}

uint64_t type metadata accessor for PMGroupInvitationOnboardingView()
{
  result = qword_27CDF3DB8;
  if (!qword_27CDF3DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9BEB48()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21C7210DC();
      if (v2 <= 0x3F)
      {
        sub_21C9BEBFC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C9BEBFC()
{
  if (!qword_27CDF3DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1EE8, &qword_21CBB95F0);
    v0 = sub_21CB84D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF3DC8);
    }
  }
}

uint64_t sub_21C9BEC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for PMGroupInvitationOnboardingView();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for PMOnboardingView(0);
  v12 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DD0, &qword_21CBB9648);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DD8, &qword_21CBB9650);
  v19 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v53 = &v47 - v20;
  sub_21CA88FA4(v2, v59);
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  (*(v8 + 8))(v11, v7);
  sub_21C9C0038(v2, v6);
  v24 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v50 = v5;
  v25 = swift_allocObject();
  sub_21C9C009C(v6, v25 + v24);
  v26 = v59[2];
  *(v14 + 1) = v59[1];
  *(v14 + 2) = v26;
  *(v14 + 24) = v60;
  *v14 = v59[0];
  *(v14 + 7) = v21;
  *(v14 + 8) = v23;
  *(v14 + 9) = sub_21C9C0100;
  *(v14 + 10) = v25;
  v14[88] = 0;
  *(v14 + 6) = 0u;
  *(v14 + 7) = 0u;
  v14[128] = 0;
  v27 = *(v47 + 28);
  *&v14[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v55 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DE0, &qword_21CBB9688);
  sub_21C9C0620(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1FA8, &unk_21CBB9290);
  v29 = sub_21C9C0168();
  v57 = v28;
  v58 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v49;
  sub_21CB84894();
  sub_21C85BC4C(v14);
  v31 = v2 + *(v30 + 24);
  v32 = *v31;
  v33 = *(v31 + 8);
  LOBYTE(v57) = v32;
  v58 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  v34 = 0;
  if (v56 == 1)
  {
    v35 = v2 + *(v30 + 28);
    v36 = *v35;
    v37 = *(v35 + 8);
    LOBYTE(v57) = v36;
    v58 = v37;
    sub_21CB84D54();
    v34 = v56;
  }

  sub_21C9C0038(v2, v6);
  v38 = swift_allocObject();
  sub_21C9C009C(v6, v38 + v24);
  v39 = v53;
  (*(v51 + 32))(v53, v18, v52);
  v40 = v39 + *(v48 + 36);
  *v40 = v34;
  *(v40 + 8) = sub_21C9C02A0;
  *(v40 + 16) = v38;
  sub_21C9C0038(v2, v6);
  v41 = swift_allocObject();
  sub_21C9C009C(v6, v41 + v24);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DF0, &qword_21CBB96A0);
  v43 = v54;
  v44 = (v54 + *(v42 + 36));
  v45 = v44 + *(sub_21CB824F4() + 20);
  sub_21CB858C4();
  *v44 = &unk_21CBB9698;
  v44[1] = v41;
  return sub_21C771BE8(v39, v43);
}

uint64_t sub_21C9BF228(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMGroupInvitationOnboardingView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9BF29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F90, &unk_21CBB2DE0);
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v40 - v5;
  v6 = sub_21CB83604();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F98, &unk_21CBB9280);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA0, &unk_21CBB2DF0);
  v43 = *(v45 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = &v40 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FA8, &unk_21CBB9290);
  v14 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = type metadata accessor for PMGroupInvitationOnboardingView();
  v21 = (a1 + *(v20 + 24));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v50) = v22;
  v51 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D54();
  if (v49 == 1 && (v24 = (a1 + *(v20 + 28)), v25 = *v24, v26 = *(v24 + 1), LOBYTE(v50) = v25, v51 = v26, sub_21CB84D54(), (v49 & 1) == 0))
  {
    sub_21CB835E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
    sub_21C94B6AC();
    sub_21CB82194();
    v31 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280);
    v32 = v42;
    sub_21CB82784();
    (*(v41 + 8))(v11, v8);
    v50 = v8;
    v51 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = v44;
    v35 = v45;
    MEMORY[0x21CF131E0](v32, v45, OpaqueTypeConformance2);
    v36 = v47;
    (*(v3 + 16))(v16, v34, v47);
    (*(v3 + 56))(v16, 0, 1, v36);
    v50 = v35;
    v51 = OpaqueTypeConformance2;
    v37 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v16, v36, v37);
    sub_21C771C58(v16);
    (*(v3 + 8))(v34, v36);
    (*(v43 + 8))(v32, v35);
  }

  else
  {
    v27 = v47;
    (*(v3 + 56))(v16, 1, 1, v47);
    v28 = sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280);
    v50 = v8;
    v51 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v50 = v45;
    v51 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v16, v27, v30);
    sub_21C771C58(v16);
  }

  v38 = sub_21C9C0168();
  MEMORY[0x21CF131E0](v19, v46, v38);
  return sub_21C771C58(v19);
}

uint64_t sub_21C9BF844@<X0>(uint64_t a1@<X8>)
{
  sub_21CB82234();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
  v4 = *MEMORY[0x277CDF438];
  v5 = sub_21CB82064();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

void sub_21C9BF8FC(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v3 = type metadata accessor for PMGroupInvitationOnboardingView();
    v4 = a2 + *(v3 + 20);
    v6 = *v4;
    v5 = *(v4 + 8);
    v8 = *(a2 + *(v3 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DF8, &qword_21CBB96A8);
    sub_21CB84D54();
    v6();
  }
}

uint64_t sub_21C9BF994(uint64_t a1)
{
  v1[20] = a1;
  sub_21CB858B4();
  v1[21] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_21C9BFA2C, v3, v2);
}

uint64_t sub_21C9BFA2C()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21C9BFB54;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2150, &unk_21CBB3640);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21C952AD0;
  v0[13] = &block_descriptor_22;
  v0[14] = v2;
  [v1 fetchListsOfSharingDevicesSeparatedByAvailability_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C9BFB54()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 184);
  v5 = *(v1 + 176);
  if (v3)
  {
    v6 = sub_21C9BFD84;
  }

  else
  {
    v6 = sub_21C9BFC84;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21C9BFC84()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);

  v3 = *(v0 + 144);
  v4 = type metadata accessor for PMGroupInvitationOnboardingView();
  *(v0 + 80) = *(v2 + *(v4 + 32));
  *(v0 + 152) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3DF8, &qword_21CBB96A8);
  sub_21CB84D64();
  v5 = (*(v0 + 160) + *(v4 + 28));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 144) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21C9BFD84()
{
  v24 = v0;
  v1 = *(v0 + 192);
  swift_willThrow();
  *(v0 + 80) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 168);

    v6 = *(v0 + 144);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE186E0);
    v8 = v6;
    v9 = sub_21CB81C64();
    v10 = sub_21CB85AF4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      v13 = [v8 safari_privacyPreservingDescription];
      v14 = sub_21CB855C4();
      v16 = v15;

      v17 = sub_21C98E004(v14, v16, &v23);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_21C6E5000, v9, v10, "Failed to get device list with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x21CF16D90](v12, -1, -1);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 160);
    v19 = (v18 + *(type metadata accessor for PMGroupInvitationOnboardingView() + 28));
    v20 = *v19;
    v21 = *(v19 + 1);
    *(v0 + 80) = v20;
    *(v0 + 88) = v21;
    *(v0 + 144) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
    sub_21CB84D64();
    v22 = *(v0 + 8);

    return v22();
  }

  return result;
}

uint64_t sub_21C9C0038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupInvitationOnboardingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9C009C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMGroupInvitationOnboardingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9C0100()
{
  v1 = *(type metadata accessor for PMGroupInvitationOnboardingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9BF228(v2);
}

unint64_t sub_21C9C0168()
{
  result = qword_27CDF3DE8;
  if (!qword_27CDF3DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1FA8, &unk_21CBB9290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1FA0, &unk_21CBB2DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1F98, &unk_21CBB9280);
    sub_21C6EADEC(&qword_27CDF1FC8, &qword_27CDF1F98, &unk_21CBB9280);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3DE8);
  }

  return result;
}

void sub_21C9C02A0(_BYTE *a1)
{
  v3 = *(type metadata accessor for PMGroupInvitationOnboardingView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_21C9BF8FC(a1, v4);
}

uint64_t sub_21C9C0310()
{
  v2 = *(type metadata accessor for PMGroupInvitationOnboardingView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21C702EFC;

  return sub_21C9BF994(v0 + v3);
}

unint64_t sub_21C9C03DC()
{
  result = qword_27CDF3E00;
  if (!qword_27CDF3E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3DF0, &qword_21CBB96A0);
    sub_21C9C0498();
    sub_21C9C0620(&qword_27CDEA598, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3E00);
  }

  return result;
}

unint64_t sub_21C9C0498()
{
  result = qword_27CDF3E08;
  if (!qword_27CDF3E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3DD8, &qword_21CBB9650);
    type metadata accessor for PMOnboardingView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3DE0, &qword_21CBB9688);
    sub_21C9C0620(&qword_27CDEE360, type metadata accessor for PMOnboardingView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1FA8, &unk_21CBB9290);
    sub_21C9C0168();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED9D0, &qword_27CDED9D8, &unk_21CBB96E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3E08);
  }

  return result;
}

uint64_t sub_21C9C0620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PMGroupInvitationSheetContent()
{
  result = qword_27CDF3E10;
  if (!qword_27CDF3E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9C06DC()
{
  sub_21CB85C44();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMGroupInvitationModel();
    if (v1 <= 0x3F)
    {
      sub_21C70640C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21C9C0794@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v48 = type metadata accessor for PMGroupInvitationDetails();
  v2 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E20, &unk_21CBB9760);
  v52 = *(v51 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for PMSharingGroup();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v47 = &v46 - v19;
  v20 = type metadata accessor for PMGroupInvitationSheetContent();
  v21 = *(v1 + *(v20 + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v54 = v1;
  sub_21C968E80(sub_21C9C0E68, v55, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21C9C0EF8(v12);
    v22 = 1;
    v23 = v53;
    v24 = v51;
  }

  else
  {
    v25 = v47;
    sub_21C9C0F60(v12, v47, type metadata accessor for PMSharingGroup);
    sub_21C94B4A8(v25, v17);
    v26 = *(v1 + *(v20 + 20));
    v27 = v48;
    v28 = &v4[*(v48 + 20)];
    type metadata accessor for PMPasswordManagerState();
    sub_21C7064E8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);

    *v28 = sub_21CB82B84();
    v28[1] = v29;
    v30 = *(v27 + 28);
    *&v4[v30] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    sub_21C94B4A8(v17, v4);
    v31 = &v4[*(v27 + 24)];
    type metadata accessor for PMGroupInvitationModel();
    sub_21C7064E8(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel);
    v32 = sub_21CB82674();
    v34 = v33;
    sub_21C979EE8(v17);
    *v31 = v32;
    v31[1] = v34;
    sub_21CB85214();
    sub_21CB82AC4();
    sub_21C979EE8(v25);
    v35 = v50;
    sub_21C9C0F60(v4, v50, type metadata accessor for PMGroupInvitationDetails);
    v36 = v51;
    v37 = (v35 + *(v51 + 36));
    v38 = v60;
    v37[4] = v59;
    v37[5] = v38;
    v37[6] = v61;
    v39 = v56;
    *v37 = v55;
    v37[1] = v39;
    v40 = v58;
    v37[2] = v57;
    v37[3] = v40;
    v41 = v35;
    v42 = v49;
    sub_21C9C0FC8(v41, v49);
    v43 = v42;
    v44 = v53;
    sub_21C9C0FC8(v43, v53);
    v22 = 0;
    v23 = v44;
    v24 = v36;
  }

  return (*(v52 + 56))(v23, v22, 1, v24);
}

uint64_t sub_21C9C0D0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C9C0D8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C9C0E68()
{
  v1 = *(v0 + 16);
  sub_21CB85C44();
  sub_21C7064E8(&qword_27CDEAC48, MEMORY[0x277D49978]);
  return sub_21CB85574() & 1;
}

uint64_t sub_21C9C0EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9C0F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9C0FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E20, &unk_21CBB9760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9C1098(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_21C7064E8(a4, a5);
  return sub_21CB85574() & 1;
}

unint64_t sub_21C9C1124()
{
  result = qword_27CDF3E28;
  if (!qword_27CDF3E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E30, &unk_21CBB97F0);
    sub_21C9C11A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3E28);
  }

  return result;
}

unint64_t sub_21C9C11A8()
{
  result = qword_27CDF3E38;
  if (!qword_27CDF3E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E20, &unk_21CBB9760);
    sub_21C7064E8(&qword_27CDF3E40, type metadata accessor for PMGroupInvitationDetails);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3E38);
  }

  return result;
}

uint64_t sub_21C9C12A8@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v2 = sub_21CB81024();
  v121 = *(v2 - 8);
  v3 = *(v121 + 64);
  MEMORY[0x28223BE20](v2);
  v120 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB829D4();
  v118 = *(v5 - 8);
  v119 = v5;
  v6 = *(v118 + 64);
  MEMORY[0x28223BE20](v5);
  v117 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v9 = *(v8 - 8);
  v131 = v8;
  v132 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v128 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v130 = &v98 - v13;
  MEMORY[0x28223BE20](v14);
  v129 = &v98 - v15;
  v16 = type metadata accessor for PMSharingGroup();
  v127 = *(v16 - 8);
  v17 = *(v127 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PMGroupInvitationsList();
  v104 = *(v20 - 8);
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v124 = v22;
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E68, &qword_21CBB9888);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v98 - v26;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E70, &qword_21CBB9890);
  v28 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v105 = &v98 - v29;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E78, &qword_21CBB9898);
  v30 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v32 = &v98 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E80, &qword_21CBB98A0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v106 = &v98 - v35;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E88, &qword_21CBB98A8);
  v109 = *(v114 - 8);
  v36 = *(v109 + 64);
  MEMORY[0x28223BE20](v114);
  v108 = &v98 - v37;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E90, &qword_21CBB98B0);
  v115 = *(v116 - 8);
  v38 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v113 = &v98 - v39;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E98, &qword_21CBB98B8);
  v111 = *(v112 - 8);
  v40 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v110 = &v98 - v41;
  v102 = v27;
  sub_21C9C20B8(v1, v27);
  v125 = v1;
  v42 = *v1;
  swift_getKeyPath();
  v135 = v42;
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v43 = *(v42 + 24);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x277D84F90];
  v122 = v2;
  v107 = v33;
  if (v44)
  {
    v99 = v32;
    v100 = v23;
    v135 = MEMORY[0x277D84F90];

    sub_21C7B1188(0, v44, 0);
    v46 = v135;
    v47 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v98 = v43;
    v48 = v43 + v47;
    v126 = *(v132 + 72);
    v49 = v19;
    v50 = v129;
    do
    {
      v132 = v44;
      sub_21C6EDBAC(v48, v50, &qword_27CDEB058, &unk_21CBB50B0);
      v51 = v130;
      sub_21C6EDBAC(v50, v130, &qword_27CDEB058, &unk_21CBB50B0);
      v52 = *(v131 + 48);
      v53 = *(v51 + v52);
      v54 = v51;
      v55 = v128;
      sub_21C9C4CA8(v54, v128, type metadata accessor for PMSharingGroup);
      *(v55 + v52) = v53;
      sub_21C9C4C40(v55, v49, type metadata accessor for PMSharingGroup);
      sub_21C6EA794(v55, &qword_27CDEB058, &unk_21CBB50B0);
      sub_21C6EA794(v50, &qword_27CDEB058, &unk_21CBB50B0);
      v135 = v46;
      v57 = *(v46 + 16);
      v56 = *(v46 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_21C7B1188(v56 > 1, v57 + 1, 1);
        v46 = v135;
      }

      *(v46 + 16) = v57 + 1;
      sub_21C9C4CA8(v49, v46 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v57, type metadata accessor for PMSharingGroup);
      v48 += v126;
      v44 = v132 - 1;
    }

    while (v132 != 1);
    v45 = v46;

    v58 = v100;
    v59 = v99;
  }

  else
  {
    v58 = v23;
    v59 = v32;
  }

  v60 = v125;
  sub_21C9C4C40(v125, v58, type metadata accessor for PMGroupInvitationsList);
  v61 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v62 = swift_allocObject();
  sub_21C9C4CA8(v58, v62 + v61, type metadata accessor for PMGroupInvitationsList);
  v63 = v105;
  sub_21C716934(v102, v105, &qword_27CDF3E68, &qword_21CBB9888);
  v64 = (v63 + *(v101 + 36));
  *v64 = v45;
  v64[1] = sub_21C9C4D10;
  v64[2] = v62;
  sub_21C9C4C40(v60, v58, type metadata accessor for PMGroupInvitationsList);
  v65 = swift_allocObject();
  sub_21C9C4CA8(v58, v65 + v61, type metadata accessor for PMGroupInvitationsList);
  sub_21C716934(v63, v59, &qword_27CDF3E70, &qword_21CBB9890);
  v66 = (v59 + *(v103 + 36));
  *v66 = sub_21C9C4D80;
  v66[1] = v65;
  v66[2] = 0;
  v66[3] = 0;
  v67 = *(v60 + 8);
  if (v67)
  {
    v68 = v59;
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = v107;
    v70 = v106;
    v71 = &v106[*(v107 + 36)];
    v72 = v67;
    sub_21CB81DB4();

    sub_21C9C4C40(v125, v58, type metadata accessor for PMGroupInvitationsList);
    v73 = swift_allocObject();
    sub_21C9C4CA8(v58, v73 + v61, type metadata accessor for PMGroupInvitationsList);
    v74 = &v71[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED990, &qword_21CBA7E90) + 36)];
    *v74 = sub_21C9C4D80;
    v74[1] = v73;
    sub_21C716934(v68, v70, &qword_27CDF3E78, &qword_21CBB9898);
    v75 = v117;
    sub_21CB85294();
    v76 = sub_21C9C4DDC();
    v77 = sub_21C707CF8(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    v78 = v108;
    v79 = v69;
    v80 = v119;
    sub_21CB849C4();
    (*(v118 + 8))(v75, v80);
    v81 = sub_21C6EA794(v70, &qword_27CDF3E80, &qword_21CBB98A0);
    MEMORY[0x28223BE20](v81);
    *(&v98 - 2) = v125;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F00, &unk_21CBB9970);
    v135 = v79;
    v136 = v80;
    v137 = v76;
    v138 = v77;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1870, &qword_21CBB21E0);
    v85 = sub_21C9C52B8();
    v135 = v84;
    v136 = v85;
    v86 = swift_getOpaqueTypeConformance2();
    v87 = v113;
    v88 = v114;
    sub_21CB84894();
    (*(v109 + 8))(v78, v88);
    v89 = v120;
    sub_21CB81014();
    v90 = sub_21CB81004();
    v92 = v91;
    (*(v121 + 8))(v89, v122);
    v133 = v90;
    v134 = v92;
    v135 = v88;
    v136 = v82;
    v137 = OpaqueTypeConformance2;
    v138 = v86;
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    v93 = v110;
    v94 = v116;
    sub_21CB842F4();

    (*(v115 + 8))(v87, v94);
    v95 = v123;
    (*(v111 + 32))(v123, v93, v112);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F10, &unk_21CBB9980);
    *(v95 + *(result + 36)) = 1;
  }

  else
  {
    v97 = v125[2];
    type metadata accessor for PMPasswordManagerState();
    sub_21C707CF8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C9C20B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_21CB830D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3ED8, &qword_21CBB9950);
  v8 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v26 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F18, &qword_21CBB99B8);
  v11 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v28 = &v26 - v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0228, &qword_21CBAE660);
  v13 = *(v26 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v26);
  v16 = &v26 - v15;
  v17 = *a1;
  swift_getKeyPath();
  v31 = v17;
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  if (*(*(v17 + 24) + 16))
  {
    MEMORY[0x28223BE20](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F20, &qword_21CBB99C0);
    sub_21C9C538C();
    sub_21CB83EF4();
    sub_21CB830B4();
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3EE8, &qword_21CBB9958) + 36);
    (*(v4 + 16))(&v10[v19], v7, v3);
    v20 = *(v4 + 56);
    v20(&v10[v19], 0, 1, v3);
    KeyPath = swift_getKeyPath();
    v22 = &v10[*(v29 + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
    (*(v4 + 32))(v22 + v23, v7, v3);
    v20(v22 + v23, 0, 1, v3);
    *v22 = KeyPath;
    sub_21C6EDBAC(v10, v28, &qword_27CDF3ED8, &qword_21CBB9950);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660);
    sub_21C9C5114();
    sub_21CB83494();
    return sub_21C6EA794(v10, &qword_27CDF3ED8, &qword_21CBB9950);
  }

  else
  {
    sub_21CB83774();
    v25 = v26;
    (*(v13 + 16))(v28, v16, v26);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660);
    sub_21C9C5114();
    sub_21CB83494();
    return (*(v13 + 8))(v16, v25);
  }
}

uint64_t sub_21C9C262C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C9C2760(uint64_t *a1)
{
  v2 = type metadata accessor for PMGroupInvitationsList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_getKeyPath();
  v12 = v6;
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v12 = *(v6 + 24);
  swift_getKeyPath();
  sub_21C9C4C40(a1, v5, type metadata accessor for PMGroupInvitationsList);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_21C9C4CA8(v5, v8 + v7, type metadata accessor for PMGroupInvitationsList);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21C9C54D0;
  *(v9 + 24) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F48, &qword_21CBB9A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3F38, &qword_21CBB99C8);
  sub_21C6EADEC(&qword_27CDF3F50, &qword_27CDF3F48, &qword_21CBB9A20);
  sub_21C707CF8(&qword_27CDF3F58, type metadata accessor for PMSharingGroup);
  sub_21C9C5410();
  return sub_21CB84FD4();
}

uint64_t sub_21C9C2A08()
{
  type metadata accessor for PMGroupInvitationView();
  sub_21C707CF8(&qword_27CDF3F40, type metadata accessor for PMGroupInvitationView);
  return sub_21CB85054();
}

uint64_t sub_21C9C2AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C9C4C40(a1, v7, type metadata accessor for PMSharingGroup);
  v29 = sub_21C9C2E1C(a1);
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for PMGroupInvitationView();
  v28 = v12[6];
  *(a2 + v28) = 0;
  *(a2 + v12[7]) = 0x403E000000000000;
  v13 = (a2 + v12[8]);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, *&v37[0]);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21C707CF8(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache);
  v15 = sub_21CB82674();
  v17 = v16;

  *v13 = v15;
  v13[1] = v17;
  v18 = a2 + v12[10];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(a2 + v12[11]) = 0;
  sub_21C9C4C40(v7, a2, type metadata accessor for PMSharingGroup);
  v19 = (a2 + v12[9]);
  type metadata accessor for PMGroupInvitationModel();
  sub_21C707CF8(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel);

  *v19 = sub_21CB82674();
  v19[1] = v20;
  v21 = a2 + v12[5];
  *v21 = v29;
  *(v21 + 8) = v9;
  *(v21 + 16) = v11 & 1;
  sub_21CB25D9C(v30);
  if (!v32)
  {
    return sub_21C9C55C0(v7, type metadata accessor for PMSharingGroup);
  }

  v37[0] = v30[0];
  v37[1] = v30[1];
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v22 = type metadata accessor for PMGroupMemberImageModel();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v26 = sub_21CA42988(v25, v37, 30.0);
  sub_21C6EA794(v30, &qword_27CDECC50, &unk_21CBB52A0);

  result = sub_21C9C55C0(v7, type metadata accessor for PMSharingGroup);
  *(a2 + v28) = v26;
  return result;
}

uint64_t sub_21C9C2E1C(uint64_t a1)
{
  v34 = a1;
  v3 = sub_21CB85C44();
  v32 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v30 = v6;
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMGroupInvitationsList();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PMGroupInvitationsList;
  sub_21C9C4C40(v1, v11, type metadata accessor for PMGroupInvitationsList);
  v33 = *(v4 + 16);
  v33(v7, a1, v3);
  sub_21CB858B4();
  v12 = sub_21CB858A4();
  v13 = *(v9 + 80);
  v14 = *(v4 + 80);
  v15 = (v13 + 32) & ~v13;
  v16 = (v10 + v14 + v15) & ~v14;
  v28 = v15;
  v29 = v13 | v14;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v12;
  *(v17 + 24) = v18;
  v19 = v31;
  sub_21C9C4CA8(v11, v17 + v15, v31);
  v20 = *(v4 + 32);
  v27 = v4 + 32;
  v21 = v32;
  v20(v17 + v16, v7, v32);
  v22 = v20;
  sub_21C9C4C40(v35, v11, v19);
  v23 = v21;
  v33(v7, v34, v21);
  v24 = sub_21CB858A4();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = MEMORY[0x277D85700];
  sub_21C9C4CA8(v11, v25 + v28, v19);
  v22(v25 + v16, v7, v23);
  sub_21CB84F64();
  return v36;
}

uint64_t sub_21C9C3118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMDismissAction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21CB82F84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*(*a1 + 16))
  {
    v15 = v11;
    v16 = type metadata accessor for PMGroupInvitationsList();
    v17 = a2 + *(v16 + 32);
    v18 = *v17;
    if (*(v17 + 8) == 1)
    {
      v27 = *v17;
    }

    else
    {

      sub_21CB85B04();
      v19 = sub_21CB83C94();
      sub_21CB81C14();

      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C7025C4(v18, 0);
      (*(v9 + 8))(v13, v15);
      LOBYTE(v18) = v27;
    }

    if (v18 == 1)
    {
    }

    else
    {
      v20 = sub_21CB86344();

      if ((v20 & 1) == 0)
      {
        v21 = a2 + *(v16 + 24);
        sub_21C95B584(v7);
        v22 = &v7[*(v4 + 20)];
        v23 = *v22;
        if (*v22)
        {
          v24 = *(v22 + 1);

          v23(v25);
          sub_21C71B710(v23);
        }

        else
        {
          sub_21CB823A4();
        }

        sub_21C9C55C0(v7, type metadata accessor for PMDismissAction);
      }
    }
  }

  return sub_21C9C3408();
}

uint64_t sub_21C9C3408()
{
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v93 = *(v107 - 8);
  v1 = *(v93 + 64);
  MEMORY[0x28223BE20](v107);
  v104 = v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v106 = v86 - v4;
  MEMORY[0x28223BE20](v5);
  v105 = v86 - v6;
  v7 = type metadata accessor for PMSharingGroup();
  v103 = *(v7 - 8);
  v8 = *(v103 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v102 = v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v97 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = v86 - v16;
  MEMORY[0x28223BE20](v17);
  v92 = v86 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v86 - v20;
  v22 = sub_21CB85C44();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v86 - v28;
  v100 = v0;
  v30 = *v0;
  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel___observationRegistrar;
  v109 = v30;
  v32 = sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v33 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent;
  swift_beginAccess();
  sub_21C6EDBAC(v30 + v33, v21, &unk_27CDF20B0, &unk_21CBA0090);
  v95 = *(v23 + 48);
  v96 = (v23 + 48);
  v34 = v95(v21, 1, v22);
  v98 = v26;
  v91 = v32;
  if (v34 == 1)
  {
    sub_21C6EA794(v21, &unk_27CDF20B0, &unk_21CBA0090);
    v36 = v99;
    v35 = v100;
  }

  else
  {
    v37 = *(v23 + 32);
    v87 = v29;
    v37(v29, v21, v22);
    swift_getKeyPath();
    v108 = v30;
    sub_21CB810D4();

    v88 = v30;
    v38 = *(v30 + 24);
    v39 = *(v38 + 16);
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      v86[1] = v31;
      v94 = v23;
      v89 = v22;
      v108 = MEMORY[0x277D84F90];

      sub_21C7B1188(0, v39, 0);
      v40 = v108;
      v41 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v86[0] = v38;
      v42 = v38 + v41;
      v101 = *(v93 + 72);
      v43 = v102;
      v44 = v105;
      do
      {
        v102 = v40;
        sub_21C6EDBAC(v42, v44, &qword_27CDEB058, &unk_21CBB50B0);
        v45 = v106;
        sub_21C6EDBAC(v44, v106, &qword_27CDEB058, &unk_21CBB50B0);
        v46 = *(v107 + 48);
        v47 = *(v45 + v46);
        v48 = v45;
        v49 = v104;
        sub_21C9C4CA8(v48, v104, type metadata accessor for PMSharingGroup);
        *(v49 + v46) = v47;
        sub_21C9C4C40(v49, v43, type metadata accessor for PMSharingGroup);
        sub_21C6EA794(v49, &qword_27CDEB058, &unk_21CBB50B0);
        v40 = v102;
        sub_21C6EA794(v44, &qword_27CDEB058, &unk_21CBB50B0);
        v108 = v40;
        v51 = *(v40 + 16);
        v50 = *(v40 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_21C7B1188(v50 > 1, v51 + 1, 1);
          v40 = v108;
        }

        *(v40 + 16) = v51 + 1;
        sub_21C9C4CA8(v43, v40 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v51, type metadata accessor for PMSharingGroup);
        v42 += v101;
        --v39;
      }

      while (v39);

      v36 = v99;
      v35 = v100;
      v22 = v89;
      v23 = v94;
    }

    else
    {
      v36 = v99;
      v35 = v100;
    }

    v52 = v87;
    v53 = sub_21C7A120C(v87, v40);

    if (v53)
    {
      v54 = *(v23 + 16);
      v55 = v23;
      v56 = v92;
      v54(v92, v52, v22);
      v57 = *(v55 + 56);
      v57(v56, 0, 1, v22);
      v58 = *(type metadata accessor for PMGroupInvitationsList() + 28);
      sub_21C6EDBAC(v56, v36, &unk_27CDF20B0, &unk_21CBA0090);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
      sub_21CB84D64();
      sub_21C6EA794(v56, &unk_27CDF20B0, &unk_21CBA0090);
      v57(v56, 1, 1, v22);
      v59 = v56;
      v23 = v55;
      v30 = v88;
      sub_21C9C5C48(v59);
      (*(v55 + 8))(v52, v22);
    }

    else
    {
      (*(v23 + 8))(v52, v22);
      v30 = v88;
    }
  }

  v60 = v35[1];
  v61 = v97;
  if (v60)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v60;
    sub_21CB81DB4();

    if (v95(v61, 1, v22) == 1)
    {
      return sub_21C6EA794(v61, &unk_27CDF20B0, &unk_21CBA0090);
    }

    else
    {
      v96 = v62;
      v94 = v23;
      v64 = v98;
      (*(v23 + 32))(v98, v61, v22);
      swift_getKeyPath();
      v108 = v30;
      sub_21CB810D4();

      v65 = *(v30 + 24);
      v66 = *(v65 + 2);
      v67 = MEMORY[0x277D84F90];
      if (v66)
      {
        v89 = v22;
        v108 = MEMORY[0x277D84F90];

        sub_21C7B1188(0, v66, 0);
        v67 = v108;
        v68 = *(v93 + 80);
        v97 = v65;
        v69 = &v65[(v68 + 32) & ~v68];
        v101 = *(v93 + 72);
        v70 = v90;
        v71 = v105;
        do
        {
          v102 = v67;
          sub_21C6EDBAC(v69, v71, &qword_27CDEB058, &unk_21CBB50B0);
          v72 = v106;
          sub_21C6EDBAC(v71, v106, &qword_27CDEB058, &unk_21CBB50B0);
          v73 = *(v107 + 48);
          v74 = *(v72 + v73);
          v75 = v72;
          v76 = v104;
          sub_21C9C4CA8(v75, v104, type metadata accessor for PMSharingGroup);
          *(v76 + v73) = v74;
          sub_21C9C4C40(v76, v70, type metadata accessor for PMSharingGroup);
          sub_21C6EA794(v76, &qword_27CDEB058, &unk_21CBB50B0);
          v67 = v102;
          sub_21C6EA794(v71, &qword_27CDEB058, &unk_21CBB50B0);
          v108 = v67;
          v78 = *(v67 + 16);
          v77 = *(v67 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_21C7B1188(v77 > 1, v78 + 1, 1);
            v67 = v108;
          }

          *(v67 + 16) = v78 + 1;
          sub_21C9C4CA8(v70, v67 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v78, type metadata accessor for PMSharingGroup);
          v69 += v101;
          --v66;
        }

        while (v66);

        v36 = v99;
        v22 = v89;
        v64 = v98;
      }

      v79 = sub_21C7A120C(v64, v67);

      v80 = v94;
      if (v79)
      {
        v81 = v92;
        (*(v94 + 16))(v92, v64, v22);
        v82 = *(v80 + 56);
        v82(v81, 0, 1, v22);
        v83 = *(type metadata accessor for PMGroupInvitationsList() + 28);
        sub_21C6EDBAC(v81, v36, &unk_27CDF20B0, &unk_21CBA0090);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
        sub_21CB84D64();
        sub_21C6EA794(v81, &unk_27CDF20B0, &unk_21CBA0090);
        v82(v81, 1, 1, v22);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21C6EDBAC(v81, v36, &unk_27CDF20B0, &unk_21CBA0090);
        v84 = v96;
        sub_21CB81DC4();
        sub_21C6EA794(v81, &unk_27CDF20B0, &unk_21CBA0090);
        return (*(v80 + 8))(v98, v22);
      }

      else
      {
        return (*(v94 + 8))(v64, v22);
      }
    }
  }

  else
  {
    v85 = v35[2];
    type metadata accessor for PMPasswordManagerState();
    sub_21C707CF8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C9C4014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v30 - v5;
  v6 = sub_21CB82F84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1870, &qword_21CBB21E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = a1 + *(type metadata accessor for PMGroupInvitationsList() + 32);
  v19 = *v18;
  LODWORD(v18) = *(v18 + 8);
  v33 = v17;
  if (v18 == 1)
  {
    LOBYTE(v34) = v19;
  }

  else
  {

    sub_21CB85B04();
    v31 = v6;
    v20 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v19, 0);
    (*(v7 + 8))(v10, v31);
    LOBYTE(v19) = v34;
  }

  if (v19 == 1)
  {

    goto LABEL_8;
  }

  v21 = sub_21CB86344();

  if (v21)
  {
LABEL_8:
    v25 = sub_21C8F0690();
    v26 = v32;
    MEMORY[0x21CF131E0](v25, &type metadata for PMAppSeamlessToolbarItemPlaceholder, v25);
    (*(v3 + 16))(v14, v26, v2);
    (*(v3 + 56))(v14, 0, 1, v2);
    v34 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v35 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = v33;
    MEMORY[0x21CF13220](v14, v2, OpaqueTypeConformance2);
    sub_21C7720E4(v14);
    (*(v3 + 8))(v26, v2);
    goto LABEL_9;
  }

  (*(v3 + 56))(v14, 1, 1, v2);
  v22 = sub_21C8F0690();
  v34 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
  v35 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v33;
  MEMORY[0x21CF13220](v14, v2, v23);
  sub_21C7720E4(v14);
LABEL_9:
  v28 = sub_21C9C52B8();
  MEMORY[0x21CF131E0](v24, v11, v28);
  return sub_21C7720E4(v24);
}

uint64_t sub_21C9C44AC@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v29 = a1;
  v31 = a2;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v30 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - v18;
  v20 = *(type metadata accessor for PMGroupInvitationsList() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
  sub_21CB84D54();
  (*(v3 + 16))(v16, v29, v2);
  (*(v3 + 56))(v16, 0, 1, v2);
  v21 = *(v7 + 56);
  sub_21C6EDBAC(v19, v10, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v16, &v10[v21], &unk_27CDF20B0, &unk_21CBA0090);
  v22 = *(v3 + 48);
  if (v22(v10, 1, v2) != 1)
  {
    sub_21C6EDBAC(v10, v30, &unk_27CDF20B0, &unk_21CBA0090);
    if (v22(&v10[v21], 1, v2) != 1)
    {
      v25 = v28;
      (*(v3 + 32))(v28, &v10[v21], v2);
      sub_21C707CF8(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v26 = v30;
      v24 = sub_21CB85574();
      v27 = *(v3 + 8);
      v27(v25, v2);
      sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
      v27(v26, v2);
      result = sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
      goto LABEL_8;
    }

    sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v3 + 8))(v30, v2);
    goto LABEL_6;
  }

  sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EA794(v19, &unk_27CDF20B0, &unk_21CBA0090);
  if (v22(&v10[v21], 1, v2) != 1)
  {
LABEL_6:
    result = sub_21C6EA794(v10, &qword_27CDEAC40, &qword_21CBA1A40);
    v24 = 0;
    goto LABEL_8;
  }

  result = sub_21C6EA794(v10, &unk_27CDF20B0, &unk_21CBA0090);
  v24 = 1;
LABEL_8:
  *v31 = v24 & 1;
  return result;
}

uint64_t sub_21C9C491C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  v14 = *a1;
  v15 = sub_21CB85C44();
  v16 = *(v15 - 8);
  v17 = v16;
  if (v14 == 1)
  {
    (*(v16 + 16))(v13, a5, v15);
    (*(v17 + 56))(v13, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v13, 1, 1, v15);
  }

  v18 = *(type metadata accessor for PMGroupInvitationsList() + 28);
  sub_21C6EDBAC(v13, v10, &unk_27CDF20B0, &unk_21CBA0090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8);
  sub_21CB84D64();
  return sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C4AC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  *a2 = *(v3 + 24);
}

uint64_t sub_21C9C4B74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C707CF8(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810C4();
}

uint64_t sub_21C9C4C40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9C4CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9C4D10(uint64_t a1)
{
  v3 = *(type metadata accessor for PMGroupInvitationsList() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9C3118(a1, v4);
}

uint64_t sub_21C9C4D80()
{
  v1 = *(type metadata accessor for PMGroupInvitationsList() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21C9C3408();
}

unint64_t sub_21C9C4DDC()
{
  result = qword_27CDF3EA0;
  if (!qword_27CDF3EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E80, &qword_21CBB98A0);
    sub_21C9C4E94();
    sub_21C6EADEC(&qword_27CDED9E0, &qword_27CDED990, &qword_21CBA7E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EA0);
  }

  return result;
}

unint64_t sub_21C9C4E94()
{
  result = qword_27CDF3EA8;
  if (!qword_27CDF3EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E78, &qword_21CBB9898);
    sub_21C9C4F20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EA8);
  }

  return result;
}

unint64_t sub_21C9C4F20()
{
  result = qword_27CDF3EB0;
  if (!qword_27CDF3EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E70, &qword_21CBB9890);
    sub_21C9C4FD8();
    sub_21C6EADEC(&qword_27CDED9C0, &qword_27CDED9C8, &unk_21CBA7F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EB0);
  }

  return result;
}

unint64_t sub_21C9C4FD8()
{
  result = qword_27CDF3EB8;
  if (!qword_27CDF3EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E68, &qword_21CBB9888);
    sub_21C9C505C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EB8);
  }

  return result;
}

unint64_t sub_21C9C505C()
{
  result = qword_27CDF3EC0;
  if (!qword_27CDF3EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3EC8, &unk_21CBB9940);
    sub_21C6EADEC(&qword_27CDF0220, &qword_27CDF0228, &qword_21CBAE660);
    sub_21C9C5114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EC0);
  }

  return result;
}

unint64_t sub_21C9C5114()
{
  result = qword_27CDF3ED0;
  if (!qword_27CDF3ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3ED8, &qword_21CBB9950);
    sub_21C9C51CC();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3ED0);
  }

  return result;
}

unint64_t sub_21C9C51CC()
{
  result = qword_27CDF3EE0;
  if (!qword_27CDF3EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3EE8, &qword_21CBB9958);
    sub_21C6EADEC(&qword_27CDF3EF0, &qword_27CDF3EF8, &unk_21CBB9960);
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3EE0);
  }

  return result;
}

unint64_t sub_21C9C52B8()
{
  result = qword_27CDF3F08;
  if (!qword_27CDF3F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1870, &qword_21CBB21E0);
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3F08);
  }

  return result;
}

unint64_t sub_21C9C538C()
{
  result = qword_27CDF3F28;
  if (!qword_27CDF3F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3F20, &qword_21CBB99C0);
    sub_21C9C5410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3F28);
  }

  return result;
}

unint64_t sub_21C9C5410()
{
  result = qword_27CDF3F30;
  if (!qword_27CDF3F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3F38, &qword_21CBB99C8);
    sub_21C707CF8(&qword_27CDF3F40, type metadata accessor for PMGroupInvitationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3F30);
  }

  return result;
}

uint64_t sub_21C9C54D0()
{
  v0 = *(*(type metadata accessor for PMGroupInvitationsList() - 8) + 80);

  return sub_21C9C2A08();
}

uint64_t sub_21C9C5558(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  return v4(a1, *(a1 + *(v5 + 48)));
}

uint64_t sub_21C9C55B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_21C9C2AA0(v1[2], a1);
}

uint64_t sub_21C9C55C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C9C5620@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for PMGroupInvitationsList() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21CB85C44() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21C9C44AC(v9, a1);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for PMGroupInvitationsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_21CB85C44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  v10 = *(v0 + v3);

  v11 = (v0 + v3 + v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB823B4();
    (*(*(v12 - 8) + 8))(v11, v12);
    v13 = (v11 + *(type metadata accessor for PMDismissAction() + 20));
    if (!*v13)
    {
      goto LABEL_5;
    }

    v11 = v13 + 1;
  }

  v14 = *v11;

LABEL_5:
  v15 = v9 + v1[7];
  if (!(*(v6 + 48))(v15, 1, v5))
  {
    (*(v6 + 8))(v15, v5);
  }

  v16 = v2 | v7;
  v17 = (v3 + v4 + v7) & ~v7;
  v18 = *(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8) + 28));

  sub_21C7025C4(*(v9 + v1[8]), *(v9 + v1[8] + 8));
  (*(v6 + 8))(v0 + v17, v5);

  return MEMORY[0x2821FE8E8](v0, v17 + v20, v16 | 7);
}

uint64_t sub_21C9C595C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for PMGroupInvitationsList() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_21CB85C44() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21C9C491C(a1, v7, v8, v1 + v4, v9);
}

unint64_t sub_21C9C5A34()
{
  result = qword_27CDF3F60;
  if (!qword_27CDF3F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3F10, &unk_21CBB9980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E90, &qword_21CBB98B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E88, &qword_21CBB98A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3F00, &unk_21CBB9970);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E80, &qword_21CBB98A0);
    sub_21CB829D4();
    sub_21C9C4DDC();
    sub_21C707CF8(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1870, &qword_21CBB21E0);
    sub_21C9C52B8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C87E710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3F60);
  }

  return result;
}

uint64_t sub_21C9C5C48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v7, v6, &unk_27CDF20B0, &unk_21CBA0090);
  v8 = sub_21C9C8E88(v6, a1);
  sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
    sub_21CB810C4();
  }

  else
  {
    swift_beginAccess();
    sub_21C898198(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C5E34()
{
  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v1 = *(v0 + 24);
}

uint64_t sub_21C9C5EEC()
{
  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v1 = *(v0 + 16);
}

uint64_t sub_21C9C5F90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

uint64_t sub_21C9C603C(uint64_t a1)
{
  v3 = *(v1 + 16);

  v5 = sub_21C967CC4(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9C6190(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
}

uint64_t sub_21C9C61F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent;
  swift_beginAccess();
  sub_21C898198(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C9C6264()
{
  v1 = v0;
  v2 = type metadata accessor for PMGroupInvitationsListModel.Action(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v0;
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v17 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v17, v11, &unk_27CDF20B0, &unk_21CBA0090);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_21C6EA794(v11, &unk_27CDF20B0, &unk_21CBA0090);
  }

  (*(v13 + 32))(v16, v11, v12);
  swift_getKeyPath();
  v27 = v1;
  sub_21CB810D4();

  v19 = *(v1 + 16);

  v20 = sub_21C8A1334(v16, v19);

  if (v20)
  {
    v22 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed);
    v21 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed + 8);
    (*(v13 + 16))(v5, v16, v12);
    v23 = *(v13 + 56);
    v23(v5, 0, 1, v12);

    v22(v5);

    sub_21C9C9294(v5, type metadata accessor for PMGroupInvitationsListModel.Action);
    v24 = v26;
    v23(v26, 1, 1, v12);
    sub_21C9C6890(v24);
    sub_21C9C75D0();
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21C9C6628@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v5 = *a1;
  swift_beginAccess();
  return sub_21C6EDBAC(v2 + v5, a2, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C6700@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v6 = *a2;
  swift_beginAccess();
  return sub_21C6EDBAC(v5 + v6, a3, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C67DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_21C6EDBAC(a1, &v14 - v10, &unk_27CDF20B0, &unk_21CBA0090);
  v12 = *a2;
  return a5(v11);
}

uint64_t sub_21C9C6890(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v12 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v7, v6, &unk_27CDF20B0, &unk_21CBA0090);
  v8 = sub_21C9C8E88(v6, a1);
  sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[-2] = v1;
    v12[-1] = a1;
    v12[2] = v1;
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
    sub_21CB810C4();
  }

  else
  {
    sub_21C6EDBAC(a1, v6, &unk_27CDF20B0, &unk_21CBA0090);
    swift_beginAccess();
    sub_21C898198(v6, v1 + v7);
    v10 = swift_endAccess();
    sub_21C9C6264(v10);
    sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C6AA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_21C6EDBAC(a2, &v11 - v6, &unk_27CDF20B0, &unk_21CBA0090);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation;
  swift_beginAccess();
  sub_21C898198(v7, a1 + v8);
  v9 = swift_endAccess();
  sub_21C9C6264(v9);
  return sub_21C6EA794(v7, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C9C6B98()
{
  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  return *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation);
}

uint64_t sub_21C9C6C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation);
  return result;
}

uint64_t sub_21C9C6CF0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9C6E08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v7;
  v8 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent;
  v9 = sub_21CB85C44();
  v10 = *(*(v9 - 8) + 56);
  v10(v1 + v8, 1, 1, v9);
  v10(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) = 0;
  v11 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed);
  *v11 = nullsub_1;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions) = MEMORY[0x277D84FA0];
  v12 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupsStore;
  *(v1 + v12) = swift_getKeyPath();
  sub_21CB81104();
  sub_21C9C7108();
  sub_21C6EDBAC(a1, v6, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C9C5C48(v6);
  sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
  return v1;
}

uint64_t sub_21C9C6FB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_21C7A230C(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9C7108()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupsStore);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C7073E8(v1, v8);

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_invitationsAndGroupsPublisher);

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21C9C920C;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3FB8, &qword_21CBBD7C0);
  sub_21C9C9214();
  sub_21CB81E04();

  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C9C7390(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  sub_21C6EDBAC(a1, v15 - v10, &qword_27CDEB058, &unk_21CBB50B0);
  v12 = *&v11[*(v8 + 56)];

  (*(v3 + 16))(v6, v11, v2);
  sub_21C9C9294(v11, type metadata accessor for PMSharingGroup);
  sub_21C9C91C4(&qword_27CDECD58, MEMORY[0x277D49978]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v15[2] == v15[0] && v15[3] == v15[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21CB86344();
  }

  (*(v3 + 8))(v6, v2);

  return v13 & 1;
}

uint64_t sub_21C9C75D0()
{
  v1 = type metadata accessor for PMGroupInvitationsListModel.Action(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  swift_getKeyPath();
  v17 = v0;
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  if (!*(*(v0 + 24) + 16))
  {
    swift_getKeyPath();
    v17 = v0;
    sub_21CB810D4();

    v10 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation;
    swift_beginAccess();
    sub_21C6EDBAC(v0 + v10, v8, &unk_27CDF20B0, &unk_21CBA0090);
    v11 = sub_21CB85C44();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v8, 1, v11);
    result = sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
    if (v13 == 1)
    {
      swift_getKeyPath();
      v16 = v0;
      sub_21CB810D4();

      if ((*(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) & 1) == 0)
      {
        v15 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed);
        v14 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed + 8);
        (*(v12 + 56))(v4, 1, 1, v11);

        v15(v4);

        return sub_21C9C9294(v4, type metadata accessor for PMGroupInvitationsListModel.Action);
      }
    }
  }

  return result;
}

uint64_t sub_21C9C78AC()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v1 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_21C9C796C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C9C7A34(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_21C9C7AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB85C44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C9C7DC4(a1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(a2 + 16);
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v24[0] = Strong;
      v24[1] = a3;
      v26 = MEMORY[0x277D84F90];
      sub_21C7B0BC8(0, v17, 0);
      v18 = v26;
      v19 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v20 = *(v7 + 72);
      v24[2] = v12 + 32;
      v25 = v20;
      do
      {
        sub_21C94B4A8(v19, v10);
        (*(v12 + 16))(v15, v10, v11);
        sub_21C9C9294(v10, type metadata accessor for PMSharingGroup);
        v26 = v18;
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_21C7B0BC8(v21 > 1, v22 + 1, 1);
          v18 = v26;
        }

        *(v18 + 16) = v22 + 1;
        (*(v12 + 32))(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v15, v11);
        v19 += v25;
        --v17;
      }

      while (v17);
    }

    sub_21C9C603C(v18);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C9C6264();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C9C75D0();
  }

  return result;
}

uint64_t sub_21C9C7DC4(uint64_t a1)
{
  v2 = v1;
  v73 = a1;
  v3 = type metadata accessor for PMSharingGroup();
  v72 = *(v3 - 8);
  v4 = *(v72 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB058, &unk_21CBB50B0);
  v9 = *(v83 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v83);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB068, &unk_21CBB9C10);
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - v17;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel___observationRegistrar;
  v84[0] = v2;
  v74 = sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
  v75 = v19;
  sub_21CB810D4();

  v81 = v2;
  v20 = *(v2 + 24);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  v82 = v9;
  if (v21)
  {
    v71 = v8;
    v84[0] = MEMORY[0x277D84F90];

    sub_21C7B12E8(0, v21, 0);
    v23 = 0;
    v77 = v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = v84[0];
    while (v23 < *(v20 + 16))
    {
      v24 = v21;
      v25 = v20;
      sub_21C6EDBAC(v77 + *(v82 + 72) * v23, v14, &qword_27CDEB058, &unk_21CBB50B0);
      v26 = *&v14[*(v83 + 48)];
      v27 = *(v79 + 48);
      v28 = sub_21CB85C44();
      (*(*(v28 - 8) + 16))(v18, v14, v28);
      *&v18[v27] = v26;

      sub_21C6EA794(v14, &qword_27CDEB058, &unk_21CBB50B0);
      v84[0] = v22;
      v30 = *(v22 + 2);
      v29 = *(v22 + 3);
      if (v30 >= v29 >> 1)
      {
        sub_21C7B12E8(v29 > 1, v30 + 1, 1);
        v22 = v84[0];
      }

      ++v23;
      *(v22 + 2) = v30 + 1;
      sub_21C716934(v18, v22 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v30, &qword_27CDEB068, &unk_21CBB9C10);
      v21 = v24;
      v20 = v25;
      if (v24 == v23)
      {

        v8 = v71;
        goto LABEL_8;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_8:
    v31 = v82;
    if (*(v22 + 2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF20, &qword_21CBADE60);
      v32 = sub_21CB86224();
    }

    else
    {
      v32 = MEMORY[0x277D84F98];
    }

    v84[0] = v32;
    sub_21C9C9398(v22, 1, v84);

    v33 = v84[0];
    v34 = v73;
    v35 = *(v73 + 16);
    if (v35)
    {
      v78 = 0;
      v85 = MEMORY[0x277D84F90];
      sub_21C7B12A8(0, v35, 0);
      v36 = v85;
      v37 = v34 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v79 = *(v72 + 72);
      do
      {
        sub_21C94B4A8(v37, v8);
        if (*(v33 + 2) && (v38 = sub_21CB10A54(v8), (v39 & 1) != 0))
        {
          v40 = *(*(v33 + 7) + 8 * v38);
        }

        else
        {
          v41 = v8;
          v42 = v8;
          v43 = v76;
          sub_21C94B4A8(v41, v76);
          v44 = type metadata accessor for PMGroupManagerMain();
          v45 = swift_allocObject();
          v84[3] = v44;
          v84[4] = &off_282E54DD8;
          v84[0] = v45;
          v46 = type metadata accessor for PMGroupInvitationModel();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          v49 = swift_allocObject();
          v50 = __swift_mutable_project_boxed_opaque_existential_1(v84, v44);
          v51 = *(*(v44 - 1) + 64);
          MEMORY[0x28223BE20](v50);
          v53 = (&v70 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v54 + 16))(v53);
          v55 = v43;
          v8 = v42;
          v31 = v82;
          v40 = sub_21C9C8B2C(v55, *v53, v49);
          __swift_destroy_boxed_opaque_existential_0(v84);
        }

        v56 = swift_allocObject();
        swift_weakInit();
        v57 = (v40 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation);
        v58 = *(v40 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation + 8);
        *v57 = sub_21C9C9810;
        v57[1] = v56;

        v59 = swift_allocObject();
        swift_weakInit();
        v60 = (v40 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated);
        v61 = *(v40 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated + 8);
        *v60 = sub_21C9C9818;
        v60[1] = v59;

        v62 = *(v83 + 48);
        v63 = v80;
        sub_21C9C9820(v8, v80);
        v64 = v63;
        *(v63 + v62) = v40;
        v85 = v36;
        v66 = *(v36 + 16);
        v65 = *(v36 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_21C7B12A8(v65 > 1, v66 + 1, 1);
          v64 = v80;
          v36 = v85;
        }

        *(v36 + 16) = v66 + 1;
        sub_21C716934(v64, v36 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v66, &qword_27CDEB058, &unk_21CBB50B0);
        v37 += v79;
        --v35;
      }

      while (v35);
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v68 = v81;
    *(&v70 - 2) = v81;
    *(&v70 - 1) = v36;
    v84[0] = v68;
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9C85D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) == 1)
    {
      *(result + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
      sub_21CB810C4();
    }
  }

  return result;
}

uint64_t sub_21C9C8724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v10 - v4;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C6EDBAC(a1, v5, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C9C6890(v5);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation))
    {
      v7 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v10[-2] = v7;
      LOBYTE(v10[-1]) = 0;
      v10[1] = v7;
      sub_21C9C91C4(&qword_27CDEDA48, type metadata accessor for PMGroupInvitationsListModel);
      sub_21CB810C4();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__isProcessingInvitation) = 0;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C9C75D0();
  }

  return result;
}

uint64_t sub_21C9C8940()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForInvitationToPresent, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupIDForRecentlyAcceptedInvitation, &unk_27CDF20B0, &unk_21CBA0090);
  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel_actionPerformed + 8);

  v4 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__subscriptions);

  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel__groupsStore);

  v6 = OBJC_IVAR____TtC17PasswordManagerUI27PMGroupInvitationsListModel___observationRegistrar;
  v7 = sub_21CB81114();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t sub_21C9C8A2C()
{
  sub_21C9C8940();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C9C8AD4()
{
  v0 = sub_21CB85C44();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21C9C8B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v30 = type metadata accessor for PMGroupManagerMain();
  v31 = &off_282E54DD8;
  *&v29 = a2;
  v15 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToAcceptAlertPresented;
  LOBYTE(v28) = 0;
  sub_21CB81D74();
  v16 = *(v11 + 32);
  v16(a3 + v15, v14, v10);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToAcceptError;
  v28 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC0, &qword_21CBB2AB0);
  sub_21CB81D74();
  v18 = *(v6 + 32);
  v18(a3 + v17, v9, v5);
  v19 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToDeclineAlertPresented;
  LOBYTE(v28) = 0;
  sub_21CB81D74();
  v16(a3 + v19, v14, v10);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__failedToDeclineError;
  v28 = 0;
  sub_21CB81D74();
  v18(a3 + v20, v9, v5);
  v21 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__isProcessingInvitation;
  LOBYTE(v28) = 0;
  sub_21CB81D74();
  v16(a3 + v21, v14, v10);
  v22 = OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel__isDeclineAlertPresented;
  LOBYTE(v28) = 0;
  sub_21CB81D74();
  v16(a3 + v22, v14, v10);
  *(a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_knownUserStatusCache) = MEMORY[0x277D84F98];
  v23 = (a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_didStartProcessingInvitation);
  *v23 = nullsub_1;
  v23[1] = 0;
  v24 = (a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_recentlyAcceptedInvitationUpdated);
  *v24 = nullsub_1;
  v24[1] = 0;
  sub_21C9C9820(v27, a3 + OBJC_IVAR____TtC17PasswordManagerUI22PMGroupInvitationModel_group);
  sub_21C6EA568(&v29, a3 + 16);
  return a3;
}

uint64_t sub_21C9C8E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21C6EDBAC(a1, &v24 - v16, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2, &v17[v18], &unk_27CDF20B0, &unk_21CBA0090);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_21C6EDBAC(v17, v12, &unk_27CDF20B0, &unk_21CBA0090);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_21C9C91C4(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v21 = sub_21CB85574();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v17, &qword_27CDEAC40, &qword_21CBA1A40);
    v20 = 1;
    return v20 & 1;
  }

  sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21C9C91C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C9C9214()
{
  result = qword_27CDF3FC0;
  if (!qword_27CDF3FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3FB8, &qword_21CBBD7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3FC0);
  }

  return result;
}

uint64_t sub_21C9C9294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t keypath_set_15Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_21C9C935C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_21C9C9398(uint64_t a1, char a2, void (**a3)(char *, uint64_t))
{
  v64 = a3;
  v6 = sub_21CB85C44();
  v58 = *(v6 - 8);
  v7 = v58[8];
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB068, &unk_21CBB9C10);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v63 = &v55 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return result;
  }

  v16 = *(result + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v55 = v17;
  v56 = a1;
  v18 = a1 + v17;
  v19 = v63;
  sub_21C6EDBAC(v18, v63, &qword_27CDEB068, &unk_21CBB9C10);
  v20 = v58[4];
  v61 = (v58 + 4);
  v62 = v6;
  v20(v9, v19, v6);
  v59 = v16;
  v21 = *(v19 + v16);
  v22 = *v64;
  v24 = sub_21CB10A54(v9);
  v25 = *(v22 + 2);
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v23;
  if (*(v22 + 3) >= v27)
  {
    v19 = v61;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v32 = v21;
    while (1)
    {
LABEL_8:
      v21 = *v64;
      v57 = v19 - 3;
      if (v3)
      {
        v3 = v62;
        (*(v19 - 3))(v9, v62);
        v33 = *(v21 + 7);
        v34 = *(v33 + 8 * v24);
        *(v33 + 8 * v24) = v32;
      }

      else
      {
        *(v21 + (v24 >> 6) + 8) |= 1 << v24;
        v3 = v62;
        result = (v20)(*(v21 + 6) + v58[9] * v24, v9, v62);
        *(*(v21 + 7) + 8 * v24) = v32;
        v35 = *(v21 + 2);
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_25;
        }

        *(v21 + 2) = v37;
      }

      v20 = (v15 - 1);
      if (v15 == 1)
      {
        return result;
      }

      v15 = v56 + v60 + v55;
      while (1)
      {
        v40 = v63;
        sub_21C6EDBAC(v15, v63, &qword_27CDEB068, &unk_21CBB9C10);
        v21 = *v19;
        (*v19)(v9, v40, v3);
        v41 = *(v40 + v59);
        v42 = *v64;
        v24 = sub_21CB10A54(v9);
        v44 = *(v42 + 2);
        v45 = (v43 & 1) == 0;
        v46 = v44 + v45;
        if (__OFADD__(v44, v45))
        {
          break;
        }

        v47 = v43;
        if (*(v42 + 3) < v46)
        {
          v48 = v64;
          sub_21C8D32D8(v46, 1);
          v49 = *v48;
          v50 = sub_21CB10A54(v9);
          if ((v47 & 1) != (v51 & 1))
          {
            goto LABEL_27;
          }

          v24 = v50;
        }

        v52 = *v64;
        if (v47)
        {
          v3 = v62;
          (*v57)(v9, v62);
          v38 = *(v52 + 7);
          v39 = *(v38 + 8 * v24);
          *(v38 + 8 * v24) = v41;

          v19 = v61;
        }

        else
        {
          *(v52 + (v24 >> 6) + 8) |= 1 << v24;
          v19 = v61;
          v3 = v62;
          result = (v21)(*(v52 + 6) + v58[9] * v24, v9, v62);
          *(*(v52 + 7) + 8 * v24) = v41;
          v53 = *(v52 + 2);
          v36 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v36)
          {
            goto LABEL_25;
          }

          *(v52 + 2) = v54;
        }

        v15 += v60;
        v20 = (v20 - 1);
        if (!v20)
        {
          return result;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v32 = v21;
      sub_21C8D6630();
    }
  }

  v28 = v64;
  sub_21C8D32D8(v27, a2 & 1);
  v29 = *v28;
  v30 = sub_21CB10A54(v9);
  if ((v3 & 1) == (v31 & 1))
  {
    v24 = v30;
    v32 = v21;
    v19 = v61;
    goto LABEL_8;
  }

LABEL_27:
  result = sub_21CB863B4();
  __break(1u);
  return result;
}

uint64_t sub_21C9C9820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9C9884()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_21C9C9904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = swift_getKeyPath();
  v3 = type metadata accessor for PMAccountHistoryView();
  v4 = *(v3 + 24);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 28);

  result = sub_21CB84D44();
  *v5 = v7;
  *(v5 + 1) = v8;
  return result;
}

uint64_t sub_21C9C99C8()
{
  v1 = *v0;
  type metadata accessor for PMAccountHistoryView();
  sub_21C9CD7EC(&unk_27CDF3FD0, type metadata accessor for PMAccountHistoryView);

  return sub_21CB82924();
}

uint64_t type metadata accessor for PMAccountHistoryView()
{
  result = qword_27CDF3FE0;
  if (!qword_27CDF3FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9C9AE4()
{
  type metadata accessor for PMAccountHistoryModel();
  if (v0 <= 0x3F)
  {
    sub_21C9C9BF8(319, &unk_27CDF3FF0, type metadata accessor for PMAccountsState, type metadata accessor for PMDependency);
    if (v1 <= 0x3F)
    {
      sub_21C9C9BF8(319, &qword_27CDEB178, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_21C7210DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C9C9BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21C9C9C78@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v69 = sub_21CB82FD4();
  v68 = *(v69 - 8);
  v2 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21CB829D4();
  v58 = *(v57 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4018, &qword_21CBB9D78);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4020, &qword_21CBB9D80);
  v56 = *(v59 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v17 = &v53 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4028, &qword_21CBB9D88);
  v18 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v20 = &v53 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4030, &qword_21CBB9D90);
  v63 = *(v62 - 8);
  v21 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v60 = &v53 - v22;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4038, &qword_21CBB9D98);
  v66 = *(v65 - 8);
  v23 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  v61 = &v53 - v24;
  v72 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4040, &qword_21CBB9DA0);
  sub_21C6EADEC(&qword_27CDF4048, &qword_27CDF4040, &qword_21CBB9DA0);
  sub_21CB83EF4();
  sub_21CB85294();
  sub_21C6EADEC(&unk_27CDF4050, &qword_27CDF4018, &qword_21CBB9D78);
  sub_21C9CD7EC(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  v25 = v57;
  sub_21CB849C4();
  (*(v58 + 8))(v9, v25);
  (*(v11 + 8))(v14, v10);
  sub_21CB85214();
  sub_21CB82AC4();
  (*(v56 + 32))(v20, v17, v59);
  v26 = v55;
  v27 = &v20[*(v55 + 36)];
  v28 = v82;
  *(v27 + 4) = v81;
  *(v27 + 5) = v28;
  *(v27 + 6) = v83;
  v29 = v78;
  *v27 = v77;
  *(v27 + 1) = v29;
  v30 = v80;
  *(v27 + 2) = v79;
  *(v27 + 3) = v30;
  v31 = v54;
  v32 = *v54;
  swift_getKeyPath();
  v73 = v32;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel);
  sub_21CB810D4();

  v33 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  v34 = v32 + v33;
  v35 = v64;
  sub_21C9CD920(v34, v64, type metadata accessor for PMAccount);
  v36 = PMAccount.effectiveTitle.getter();
  v38 = v37;
  sub_21C7195A0(v35, type metadata accessor for PMAccount);
  v73 = v36;
  v74 = v38;
  v39 = sub_21C9CD690();
  v40 = sub_21C71F3FC();
  v41 = MEMORY[0x277D837D0];
  v42 = v60;
  sub_21CB842F4();

  sub_21C6EA794(v20, &qword_27CDF4028, &qword_21CBB9D88);
  v43 = v68;
  v44 = v67;
  v45 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277CDDDB0], v69);
  v73 = v26;
  v74 = v41;
  v75 = v39;
  v76 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v61;
  v48 = v62;
  sub_21CB84684();
  (*(v43 + 8))(v44, v45);
  (*(v63 + 8))(v42, v48);
  v71 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4078, &qword_21CBB9DD0);
  v73 = v48;
  v74 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4080, &qword_21CBB9DD8);
  v50 = sub_21C6EADEC(&qword_27CDF4088, &qword_27CDF4080, &qword_21CBB9DD8);
  v73 = v49;
  v74 = v50;
  swift_getOpaqueTypeConformance2();
  v51 = v65;
  sub_21CB84894();
  return (*(v66 + 8))(v47, v51);
}

uint64_t sub_21C9CA5E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4100, &qword_21CBB9E50);
  v63 = *(v68 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v68);
  v60 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4108, &qword_21CBB9E58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - v9;
  v11 = sub_21CB81024();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4110, &qword_21CBB9E60);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4118, &qword_21CBB9E68);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v62 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v61 = &v56 - v24;
  v25 = *a1;
  v26 = sub_21C94D700();
  if (v26 >> 62)
  {
    v27 = sub_21CB85FA4();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = a1;
  if (v27)
  {
    sub_21CB81014();
    v28 = sub_21CB81004();
    v30 = v29;
    v31 = (*(v66 + 8))(v16, v67);
    v57 = v10;
    v70 = v28;
    v71 = v30;
    MEMORY[0x28223BE20](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4120, &unk_21CBB9E70);
    sub_21C6EADEC(&qword_27CDF4128, &qword_27CDF4120, &unk_21CBB9E70);
    sub_21C71F3FC();
    sub_21CB85014();
    v10 = v57;
    v32 = v61;
    (*(v18 + 32))();
    (*(v18 + 56))(v32, 0, 1, v17);
  }

  else
  {
    v32 = v61;
    (*(v18 + 56))(v61, 1, 1, v17);
  }

  v33 = sub_21C94CE44();
  if (v33 >> 62)
  {
    v50 = sub_21CB85FA4();

    if (v50)
    {
      goto LABEL_8;
    }

LABEL_11:
    v49 = 1;
    v48 = v63;
    goto LABEL_12;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v34)
  {
    goto LABEL_11;
  }

LABEL_8:
  v61 = &v56;
  MEMORY[0x28223BE20](v35);
  v36 = v59;
  sub_21CB81014();
  v37 = v58;
  sub_21CB81014();
  v38 = sub_21CB80FF4();
  v40 = v39;
  v41 = *(v66 + 8);
  v42 = v37;
  v43 = v67;
  v41(v42, v67);
  v41(v16, v43);
  v70 = v38;
  v71 = v40;
  sub_21C71F3FC();
  v70 = sub_21CB84054();
  v71 = v44;
  v72 = v45 & 1;
  v73 = v46;
  sub_21C9CAFC8(v36, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4120, &unk_21CBB9E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  sub_21C6EADEC(&qword_27CDF4128, &qword_27CDF4120, &unk_21CBB9E70);
  sub_21C87DED8();
  v47 = v60;
  sub_21CB85044();
  v48 = v63;
  (*(v63 + 32))(v10, v47, v68);
  v49 = 0;
LABEL_12:
  (*(v48 + 56))(v10, v49, 1, v68);
  v51 = v62;
  sub_21C6EDBAC(v32, v62, &qword_27CDF4118, &qword_21CBB9E68);
  v52 = v64;
  sub_21C6EDBAC(v10, v64, &qword_27CDF4108, &qword_21CBB9E58);
  v53 = v65;
  sub_21C6EDBAC(v51, v65, &qword_27CDF4118, &qword_21CBB9E68);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4140, &qword_21CBB9E80);
  sub_21C6EDBAC(v52, v53 + *(v54 + 48), &qword_27CDF4108, &qword_21CBB9E58);
  sub_21C6EA794(v10, &qword_27CDF4108, &qword_21CBB9E58);
  sub_21C6EA794(v32, &qword_27CDF4118, &qword_21CBB9E68);
  sub_21C6EA794(v52, &qword_27CDF4108, &qword_21CBB9E58);
  return sub_21C6EA794(v51, &qword_27CDF4118, &qword_21CBB9E68);
}

uint64_t sub_21C9CAD8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4148, qword_21CBB9E88);
  sub_21C9CDC80();
  return sub_21CB83F34();
}

uint64_t sub_21C9CADF8(uint64_t *a1, uint64_t (*a2)(__n128))
{
  v4 = type metadata accessor for PMAccountHistoryView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = *a1;
  v12[1] = a2(v7);
  swift_getKeyPath();
  sub_21C9CD920(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountHistoryView);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_21C9CDAC8(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PMAccountHistoryView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4160, &qword_21CBA3DF8);
  sub_21C6EADEC(&qword_27CDEC278, &qword_27CDF4160, &qword_21CBA3DF8);
  sub_21C9CDD04();
  return sub_21CB84FD4();
}

uint64_t sub_21C9CAFC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = sub_21C94D700();
  if (v18 >> 62)
  {
    v32[0] = v5;
    v31 = sub_21CB85FA4();
    v5 = v32[0];

    if (!v31)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v19)
    {
LABEL_8:
      result = 0;
      v27 = 0;
      v30 = 0;
      v28 = 0;
      goto LABEL_9;
    }
  }

  v32[0] = v5;
  swift_getKeyPath();
  v32[3] = v17;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel);
  sub_21CB810D4();

  v20 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  sub_21C9CD920(v17 + v20, v16, type metadata accessor for PMAccount);
  sub_21C9CD920(&v16[*(v13 + 24)], v12, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7195A0(v16, type metadata accessor for PMAccount);
    sub_21C7195A0(v12, type metadata accessor for PMAccount.Storage);
    goto LABEL_8;
  }

  v21 = *v12;
  v22 = [*v12 isCurrentUserOriginalContributor];

  sub_21C7195A0(v16, type metadata accessor for PMAccount);
  if (!v22)
  {
    goto LABEL_8;
  }

  sub_21CB81014();
  v23 = sub_21CB81004();
  v25 = v24;
  (*(v32[0] + 8))(v8, v4);
  v32[1] = v23;
  v32[2] = v25;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v30 = v29 & 1;
LABEL_9:
  *a2 = result;
  a2[1] = v27;
  a2[2] = v30;
  a2[3] = v28;
  return result;
}

uint64_t sub_21C9CB364()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4080, &qword_21CBB9DD8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  sub_21C9CB488(&v7 - v3);
  v5 = sub_21C6EADEC(&qword_27CDF4088, &qword_27CDF4080, &qword_21CBB9DD8);
  MEMORY[0x21CF131E0](v4, v0, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C9CB488@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4090, &unk_21CBB9DE0);
  v2 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC010, &qword_21CBAA950);
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v54 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40A0, &qword_21CBB9DF0);
  v7 = *(v58 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v54 - v9;
  v10 = sub_21CB83604();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40A8, &qword_21CBB9DF8);
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v54 - v14;
  v15 = type metadata accessor for PMAccount.Storage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for PMAccount(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40B0, &qword_21CBB9E00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v54 - v29;
  v60 = v1;
  v31 = *v1;
  swift_getKeyPath();
  v69 = v31;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel);
  sub_21CB810D4();

  v32 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  sub_21C9CD920(v31 + v32, v23, type metadata accessor for PMAccount);
  sub_21C9CD920(&v23[*(v20 + 32)], v18, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7195A0(v23, type metadata accessor for PMAccount);
    sub_21C7195A0(v18, type metadata accessor for PMAccount.Storage);
LABEL_5:
    v43 = v58;
    (*(v7 + 56))(v27, 1, 1, v58);
    v44 = sub_21C6EADEC(&unk_27CDF40B8, &qword_27CDF40A8, &qword_21CBB9DF8);
    v67 = v57;
    v68 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CF13220](v27, v43, OpaqueTypeConformance2);
    sub_21C6EA794(v27, &qword_27CDF40B0, &qword_21CBB9E00);
    v36 = v60;
    goto LABEL_6;
  }

  v33 = *v18;
  v34 = [*v18 isCurrentUserOriginalContributor];

  sub_21C7195A0(v23, type metadata accessor for PMAccount);
  if (!v34)
  {
    goto LABEL_5;
  }

  v35 = sub_21CB835B4();
  MEMORY[0x28223BE20](v35);
  v36 = v60;
  *(&v54 - 2) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40C8, &unk_21CBB9E08);
  sub_21C9CD83C();
  v37 = v54;
  sub_21CB82194();
  v38 = sub_21C6EADEC(&unk_27CDF40B8, &qword_27CDF40A8, &qword_21CBB9DF8);
  v40 = v56;
  v39 = v57;
  MEMORY[0x21CF131E0](v37, v57, v38);
  v41 = v58;
  (*(v7 + 16))(v27, v40, v58);
  (*(v7 + 56))(v27, 0, 1, v41);
  v67 = v39;
  v68 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF13220](v27, v41, v42);
  sub_21C6EA794(v27, &qword_27CDF40B0, &qword_21CBB9E00);
  (*(v7 + 8))(v40, v41);
  (*(v55 + 8))(v37, v39);
LABEL_6:
  v46 = sub_21CB835C4();
  MEMORY[0x28223BE20](v46);
  *(&v54 - 2) = v36;
  type metadata accessor for PMPlatformRoleButton();
  sub_21C9CD7EC(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  v47 = v61;
  sub_21CB82194();
  v48 = v64;
  v49 = *(v65 + 48);
  sub_21C7725E4(v30, v64);
  v50 = v62;
  v51 = v48 + v49;
  v52 = v63;
  (*(v62 + 16))(v51, v47, v63);
  sub_21CB83394();
  (*(v50 + 8))(v47, v52);
  return sub_21C6EA794(v30, &qword_27CDF40B0, &qword_21CBB9E00);
}

int *sub_21C9CBCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v46 = a2;
  v45 = sub_21CB81024();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccountHistoryView();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  sub_21CB81ED4();
  v15 = sub_21CB81F14();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v42 = type metadata accessor for PMAccountHistoryView;
  sub_21C9CD920(a1, &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountHistoryView);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_21C9CDAC8(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAccountHistoryView);
  sub_21CB84D94();
  sub_21CB81014();
  v18 = sub_21CB81004();
  v43 = v19;
  v44 = v18;
  (*(v3 + 8))(v6, v45);
  v20 = v41;
  v21 = v41 + *(v8 + 36);
  v22 = *v21;
  v23 = *(v21 + 8);
  v50 = v22;
  v51 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v24 = v47;
  v25 = v48;
  LODWORD(v45) = v49;
  v26 = v42;
  sub_21C9CD920(v20, &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v42);
  v27 = swift_allocObject();
  sub_21C9CDAC8(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v16, type metadata accessor for PMAccountHistoryView);
  sub_21C9CD920(v20, &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v28 = swift_allocObject();
  sub_21C9CDAC8(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v16, type metadata accessor for PMAccountHistoryView);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_21C9CD9A0;
  *(v29 + 24) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_21C9CDA10;
  *(v30 + 24) = v28;
  KeyPath = swift_getKeyPath();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF40C8, &unk_21CBB9E08);
  v33 = (v46 + *(v32 + 36));
  *v33 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40E0, &qword_21CBB9E18);
  *(v33 + result[18]) = 0;
  v35 = (v33 + result[15]);
  v36 = v43;
  *v35 = v44;
  v35[1] = v36;
  v37 = v33 + result[16];
  *v37 = v24;
  *(v37 + 1) = v25;
  v37[16] = v45;
  *(v33 + result[17]) = 0;
  *(v33 + result[19]) = 2;
  v38 = (v33 + result[20]);
  *v38 = sub_21C8E1174;
  v38[1] = v29;
  v39 = (v33 + result[21]);
  *v39 = sub_21C9CDA80;
  v39[1] = v30;
  return result;
}

uint64_t sub_21C9CC1A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a1;
  v60 = a2;
  v2 = type metadata accessor for PMAccountHistoryView();
  v57 = *(v2 - 8);
  v55 = *(v57 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v59 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v56 = &v47 - v21;
  MEMORY[0x28223BE20](v22);
  v53 = &v47 - v23;
  MEMORY[0x28223BE20](v24);
  v52 = &v47 - v25;
  sub_21CB81014();
  sub_21CB81014();
  v26 = sub_21CB80FF4();
  v28 = v27;
  v29 = *(v9 + 8);
  v50 = v9 + 8;
  v51 = v8;
  v29(v12, v8);
  v29(v15, v8);
  v61 = v26;
  v62 = v28;
  sub_21CB81ED4();
  v30 = sub_21CB81F14();
  v31 = *(v30 - 8);
  v48 = *(v31 + 56);
  v49 = v31 + 56;
  v48(v7, 0, 1, v30);
  v32 = v54;
  sub_21C9CD920(v58, v54, type metadata accessor for PMAccountHistoryView);
  v33 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v34 = swift_allocObject();
  sub_21C9CDAC8(v32, v34 + v33, type metadata accessor for PMAccountHistoryView);
  sub_21C71F3FC();
  v35 = v52;
  sub_21CB84DC4();
  sub_21CB81014();
  v36 = sub_21CB81004();
  v38 = v37;
  v29(v15, v51);
  v61 = v36;
  v62 = v38;
  sub_21CB81EF4();
  v48(v7, 0, 1, v30);
  v39 = v53;
  sub_21CB84DC4();
  v40 = v17[2];
  v41 = v56;
  v40(v56, v35, v16);
  v42 = v59;
  v40(v59, v39, v16);
  v43 = v60;
  v40(v60, v41, v16);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v40(&v43[*(v44 + 48)], v42, v16);
  v45 = v17[1];
  v45(v39, v16);
  v45(v35, v16);
  v45(v42, v16);
  return (v45)(v41, v16);
}

uint64_t sub_21C9CC74C(uint64_t *a1)
{
  v2 = sub_21CB823B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_21C94DBBC();
  v8 = a1 + *(type metadata accessor for PMAccountHistoryView() + 24);
  sub_21C95B2C8(v6);
  sub_21CB823A4();
  return (*(v3 + 8))(v6, v2);
}

double sub_21C9CC838@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v54 = a2;
  v53 = sub_21CB81024();
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for PMAccount.MockData(0);
  v5 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for PMAccount(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  swift_getKeyPath();
  *&v60 = v24;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel);
  sub_21CB810D4();

  v25 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  sub_21C9CD920(v24 + v25, v23, type metadata accessor for PMAccount);
  sub_21C9CD920(&v23[*(v20 + 32)], v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7195A0(v23, type metadata accessor for PMAccount);
    sub_21C9CDAC8(v11, v7, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v7[*(v50 + 72)], v15, &unk_27CDF20B0, &unk_21CBA0090);
    v26 = type metadata accessor for PMAccount.MockData;
    v27 = v7;
  }

  else
  {
    v28 = *v11;
    sub_21CB85B94();

    v26 = type metadata accessor for PMAccount;
    v27 = v23;
  }

  sub_21C7195A0(v27, v26);
  sub_21C7C3490(v15, v18);
  v29 = sub_21CB85C44();
  v30 = (*(*(v29 - 8) + 48))(v18, 1, v29);
  sub_21C6EA794(v18, &unk_27CDF20B0, &unk_21CBA0090);
  v31 = (v51 + 8);
  if (v30 == 1)
  {
    v32 = v52;
    sub_21CB81014();
    v33 = sub_21CB81004();
    v35 = v34;
    (*v31)(v32, v53);
    *&v60 = v33;
    *(&v60 + 1) = v35;
    sub_21C71F3FC();
    v55 = sub_21CB84054();
    v56 = v36;
    v57 = v37 & 1;
    v58 = v38;
    v59 = 1;
  }

  else
  {
    v39 = v52;
    sub_21CB81014();
    v40 = sub_21CB81004();
    v42 = v41;
    (*v31)(v39, v53);
    *&v60 = v40;
    *(&v60 + 1) = v42;
    sub_21C71F3FC();
    v55 = sub_21CB84054();
    v56 = v43;
    v57 = v44 & 1;
    v58 = v45;
    v59 = 0;
  }

  sub_21CB83494();
  result = *&v60;
  v47 = v61;
  v48 = v62;
  v49 = v54;
  *v54 = v60;
  v49[1] = v47;
  *(v49 + 32) = v48;
  return result;
}

uint64_t sub_21C9CCD94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a1;
  v3 = type metadata accessor for PMAccountHistoryView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMPlatformRoleButton();
  v12 = a2 + *(v11 + 20);
  sub_21CB81EE4();
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v7 + 8))(v10, v6);
  sub_21C9CD920(v21, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAccountHistoryView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  result = sub_21C9CDAC8(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PMAccountHistoryView);
  *a2 = v13;
  a2[1] = v15;
  v19 = (a2 + *(v11 + 24));
  *v19 = sub_21C9CDB48;
  v19[1] = v17;
  return result;
}

uint64_t sub_21C9CCFA8(uint64_t a1)
{
  v20 = sub_21CB82F84();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_21CB823B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMAccountHistoryView();
  sub_21C6EDBAC(a1 + *(v15 + 24), v9, &qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_21CB85B04();
    v17 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_21CB823A4();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21C9CD230(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMAccountHistoryView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21C9CD2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v26[-v8];
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v27 = v10;
  v28 = v12;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  LOBYTE(v9) = v17;
  v27 = sub_21CB84A64();
  v18 = sub_21CB83FC4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_21C74A72C(v14, v16, v9 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  return result;
}

void sub_21C9CD4A4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_21CB855C4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_21C9CD4FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  swift_getKeyPath();
  v18[1] = v11;
  sub_21C9CD7EC(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel);
  swift_unknownObjectRetain();
  sub_21CB810D4();

  v12 = OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__account;
  swift_beginAccess();
  sub_21C9CD920(v11 + v12, v9, type metadata accessor for PMAccount);
  v13 = PMAccount.userVisibleDomain.getter();
  if (!v14)
  {
    v13 = PMAccount.effectiveTitle.getter();
  }

  v15 = v13;
  v16 = v14;
  result = sub_21C7195A0(v9, type metadata accessor for PMAccount);
  *a3 = v10;
  a3[1] = v15;
  a3[2] = v16;
  return result;
}

unint64_t sub_21C9CD690()
{
  result = qword_27CDF4068;
  if (!qword_27CDF4068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4028, &qword_21CBB9D88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4018, &qword_21CBB9D78);
    sub_21CB829D4();
    sub_21C6EADEC(&unk_27CDF4050, &qword_27CDF4018, &qword_21CBB9D78);
    sub_21C9CD7EC(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4068);
  }

  return result;
}

uint64_t sub_21C9CD7EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C9CD83C()
{
  result = qword_27CDF40D0;
  if (!qword_27CDF40D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF40C8, &unk_21CBB9E08);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C6EADEC(&qword_27CDF40D8, &unk_27CDF40E0, &qword_21CBB9E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF40D0);
  }

  return result;
}

uint64_t sub_21C9CD920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9CD9A0@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccountHistoryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9CC1A0(v4, a1);
}

double sub_21C9CDA10@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for PMAccountHistoryView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_21C9CC838(v4, a1);
}

double sub_21C9CDA80@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(v8);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_21C9CDAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9CDB60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAccountHistoryView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21C9CDC80()
{
  result = qword_27CDF4150;
  if (!qword_27CDF4150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4148, qword_21CBB9E88);
    sub_21C9CDD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4150);
  }

  return result;
}

unint64_t sub_21C9CDD04()
{
  result = qword_27CDF4158;
  if (!qword_27CDF4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4158);
  }

  return result;
}

uint64_t type metadata accessor for PMShareWiFiNetworkButton()
{
  result = qword_27CDF4168;
  if (!qword_27CDF4168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9CDEA0()
{
  type metadata accessor for PMWiFiNetwork();
  if (v0 <= 0x3F)
  {
    sub_21C735A14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C9CDF48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4178, &qword_21CBB9F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48[1] = v48 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4180, &qword_21CBB9F68);
  v50 = *(v54 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v54);
  v49 = v48 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4188, &qword_21CBB9F70);
  v8 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v10 = v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4190, &qword_21CBB9F78);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4198, &qword_21CBB9F80);
  v51 = *(v53 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v15 = v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41A0, &qword_21CBB9F88);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v48 - v22;
  v24 = type metadata accessor for PMWiFiIcon();
  v25 = v24[5];
  sub_21C84BF7C(v2, &v23[v25]);
  v26 = type metadata accessor for PMWiFiNetwork();
  (*(*(v26 - 8) + 56))(&v23[v25], 0, 1, v26);
  v27 = type metadata accessor for PMShareWiFiNetworkButton();
  v28 = *(v2 + *(v27 + 20));
  *v23 = xmmword_21CBB9ED0;
  *(v23 + 1) = xmmword_21CBB9EE0;
  v23[v24[6]] = v28;
  v29 = v24[7];
  *&v23[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v31 = *(v27 + 24);
  v32 = &v23[*(v17 + 44)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41A8, &qword_21CBB9FC8);
  sub_21C74F0F8(v32 + *(v33 + 28));
  *v32 = KeyPath;
  sub_21C9CE860(v23, v20);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41B0, &unk_21CBB9FD0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  MEMORY[0x21CF11F10](v20);
  sub_21CB82404();
  if (sub_21CB823F4())
  {
    v37 = sub_21CB84BA4();

    v59 = sub_21C9CE60C();
    v60 = v38;
    v57 = sub_21C9CE60C();
    v58 = v39;
    v56 = v37;
    sub_21C9CE9E0();
    sub_21C71F3FC();

    sub_21CB822A4();
    sub_21C9CE8D0();
    sub_21CB852D4();
    v40 = v51;
    v41 = v53;
    (*(v51 + 16))(v10, v15, v53);
    swift_storeEnumTagMultiPayload();
    sub_21C9CE924(&qword_27CDF41C0, &qword_27CDF4198, &qword_21CBB9F80);
    sub_21C9CE924(&qword_27CDF41C8, &qword_27CDF4180, &qword_21CBB9F68);
    sub_21CB83494();

    (*(v40 + 8))(v15, v41);
  }

  else
  {

    v59 = sub_21C9CE60C();
    v60 = v42;
    v57 = sub_21C9CE60C();
    v58 = v43;
    sub_21C71F3FC();
    sub_21CB82294();
    sub_21C9CE8D0();
    v44 = v49;
    sub_21CB852D4();
    v45 = v50;
    v46 = v54;
    (*(v50 + 16))(v10, v44, v54);
    swift_storeEnumTagMultiPayload();
    sub_21C9CE924(&qword_27CDF41C0, &qword_27CDF4198, &qword_21CBB9F80);
    sub_21C9CE924(&qword_27CDF41C8, &qword_27CDF4180, &qword_21CBB9F68);
    sub_21CB83494();
    (*(v45 + 8))(v44, v46);
  }

  return sub_21C9CE978(v23);
}

uint64_t sub_21C9CE60C()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[5];
  if (v6)
  {
    v7 = v0[4];
    v8 = v0[5];

    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21CBA15B0;
    v11 = v0[2];
    v10 = v0[3];
    v12 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v13 = sub_21C7C0050();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;
    *(v9 + 96) = v12;
    *(v9 + 104) = v13;
    *(v9 + 64) = v13;
    *(v9 + 72) = v7;
    *(v9 + 80) = v6;
  }

  else
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v2 + 8))(v5, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21CBA0690;
    v16 = v0[2];
    v15 = v0[3];
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21C7C0050();
    *(v14 + 32) = v16;
    *(v14 + 40) = v15;
  }

  v17 = sub_21CB85594();

  return v17;
}

uint64_t sub_21C9CE860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41A0, &qword_21CBB9F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C9CE8D0()
{
  result = qword_27CDF41B8;
  if (!qword_27CDF41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF41B8);
  }

  return result;
}

uint64_t sub_21C9CE924(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C9CE978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41A0, &qword_21CBB9F88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C9CE9E0()
{
  result = qword_27CDF41D0;
  if (!qword_27CDF41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF41D0);
  }

  return result;
}

unint64_t sub_21C9CEA34()
{
  result = qword_27CDF41D8;
  if (!qword_27CDF41D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF41E0, &unk_21CBB9FE0);
    sub_21C9CE924(&qword_27CDF41C0, &qword_27CDF4198, &qword_21CBB9F80);
    sub_21C9CE924(&qword_27CDF41C8, &qword_27CDF4180, &qword_21CBB9F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF41D8);
  }

  return result;
}

uint64_t sub_21C9CEB3C(uint64_t a1)
{
  v2 = sub_21CB834E4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_21CB82DC4();
}

uint64_t sub_21C9CEC04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21CB82DE4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21C9CEC5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v67 = a3;
  v70 = a2;
  v66 = a1;
  v79 = a4;
  v80 = sub_21CB83274();
  v78 = *(v80 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for PMAppSourceListRowLabelStyle();
  v6 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v8 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_21CB83124();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = sub_21CB82F84();
  v64 = *(v65 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v69 = *(v71 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v20 = &v63 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41E8, &qword_21CBBA0D8);
  v21 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v23 = &v63 - v22;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41F0, &qword_21CBBA0E0);
  v24 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v26 = &v63 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF41F8, &qword_21CBBA0E8);
  v74 = *(v27 - 8);
  v75 = v27;
  v28 = *(v74 + 64);
  MEMORY[0x28223BE20](v27);
  v72 = &v63 - v29;
  sub_21CB81014();
  v30 = sub_21CB81004();
  v32 = v31;
  (*(v14 + 8))(v17, v13);
  v81 = v30;
  v82 = v32;
  sub_21C71F3FC();
  sub_21CB84CB4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v33 = *(v81 + 16);

  if ((v67 & 1) == 0)
  {
    v34 = v70;

    sub_21CB85B04();
    v35 = sub_21CB83C94();
    sub_21CB81C14();

    v36 = v63;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v34, 0);
    (*(v64 + 8))(v36, v65);
  }

  sub_21CB83114();
  sub_21CB83104();
  v81 = v33;
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v37 = sub_21CB84034();
  v39 = v38;
  v41 = v40 & 1;
  sub_21C9CF4F0();
  v42 = v71;
  sub_21CB84774();
  sub_21C74A72C(v37, v39, v41);

  LOBYTE(v37) = sub_21CB83D34();
  sub_21CB81F24();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  (*(v69 + 8))(v20, v42);
  v51 = &v23[*(v68 + 36)];
  *v51 = v37;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  KeyPath = swift_getKeyPath();
  sub_21C772AC8(v23, v26);
  v53 = v73;
  v54 = &v26[*(v73 + 36)];
  *v54 = KeyPath;
  v54[8] = 0;
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v55 = v76;
  v56 = v8 + *(v76 + 20);
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  *(v8 + *(v55 + 24)) = 1;
  v57 = sub_21C9CF554();
  v58 = sub_21C9CF844(&qword_27CDECF90, type metadata accessor for PMAppSourceListRowLabelStyle);
  v59 = v72;
  sub_21CB840E4();
  sub_21C81E164(v8);
  sub_21C772BB8(v26);
  v60 = v77;
  sub_21CB83254();
  v81 = v53;
  v82 = v55;
  v83 = v57;
  v84 = v58;
  swift_getOpaqueTypeConformance2();
  v61 = v75;
  sub_21CB84594();
  (*(v78 + 8))(v60, v80);
  return (*(v74 + 8))(v59, v61);
}

unint64_t sub_21C9CF4F0()
{
  result = qword_27CDEC0A0;
  if (!qword_27CDEC0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC0A0);
  }

  return result;
}

unint64_t sub_21C9CF554()
{
  result = qword_27CDF4200;
  if (!qword_27CDF4200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF41F0, &qword_21CBBA0E0);
    sub_21C9CF5E0();
    sub_21C9CF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4200);
  }

  return result;
}

unint64_t sub_21C9CF5E0()
{
  result = qword_27CDF4208;
  if (!qword_27CDF4208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF41E8, &qword_21CBBA0D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C9CF4F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4208);
  }

  return result;
}

unint64_t sub_21C9CF6A8()
{
  result = qword_27CDF4210;
  if (!qword_27CDF4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4210);
  }

  return result;
}

unint64_t sub_21C9CF6FC()
{
  result = qword_27CDF4218;
  if (!qword_27CDF4218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4220, &qword_21CBBA1C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF41F0, &qword_21CBBA0E0);
    type metadata accessor for PMAppSourceListRowLabelStyle();
    sub_21C9CF554();
    sub_21C9CF844(&qword_27CDECF90, type metadata accessor for PMAppSourceListRowLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_21C9CF844(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4218);
  }

  return result;
}

uint64_t sub_21C9CF844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PMWiFiIcon()
{
  result = qword_27CDF4228;
  if (!qword_27CDF4228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9CF900()
{
  sub_21C9CF9FC(319, &qword_27CDEE648, type metadata accessor for PMWiFiNetwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21C9CF9FC(319, &qword_27CDEC498, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C9CF9FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_21C9CFA8C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v49 = sub_21CB82054();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v50 = sub_21CB84A44();
  v10 = *(v50 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB82A84();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB08, &qword_21CBA2B80);
  v18 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v20 = &v47 - v19;
  *&v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBAF8, &qword_21CBBA2C0);
  v21 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v23 = &v47 - v22;
  v24 = *v2;
  v25 = *(v14 + 28);
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_21CB831A4();
  (*(*(v27 - 8) + 104))(&v17[v25], v26, v27);
  *v17 = v24;
  *(v17 + 1) = v24;
  v28 = type metadata accessor for PMWiFiIcon();
  if (*(v2 + *(v28 + 24)) == 1)
  {
    (*(v10 + 104))(v51, *MEMORY[0x277CE0EE8], v50);
    v29 = sub_21CB84B44();
  }

  else
  {
    v30 = *(v28 + 28);
    v48 = v2;
    sub_21C74F0F8(v9);
    v31 = v49;
    (*(v3 + 104))(v6, *MEMORY[0x277CDF3D0], v49);
    sub_21CB82044();
    v32 = *(v3 + 8);
    v32(v6, v31);
    v32(v9, v31);
    (*(v10 + 104))(v51, *MEMORY[0x277CE0EE8], v50);
    v29 = sub_21CB84B44();
    v2 = v48;
  }

  sub_21C9D03AC(v17, v20);
  v33 = v52;
  *&v20[*(v52 + 52)] = v29;
  *&v20[*(v33 + 56)] = 256;
  v34 = v2[1];
  v35 = v2[2];
  sub_21CB85214();
  sub_21CB82374();
  sub_21C716934(v20, v23, &qword_27CDEBB08, &qword_21CBA2B80);
  v36 = &v23[*(v53 + 36)];
  v37 = v59;
  *v36 = v58;
  *(v36 + 1) = v37;
  *(v36 + 2) = v60;
  v38 = sub_21CB85214();
  v40 = v39;
  sub_21C9CFF74(v2, &v55);
  v41 = v56;
  v42 = v57;
  v53 = v55;
  v43 = v23;
  v44 = v54;
  sub_21C716934(v43, v54, &qword_27CDEBAF8, &qword_21CBBA2C0);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4238, &unk_21CBBA2C8) + 36);
  result = *&v53;
  *v45 = v53;
  *(v45 + 16) = v41;
  *(v45 + 24) = v42;
  *(v45 + 32) = v38;
  *(v45 + 40) = v40;
  return result;
}

uint64_t sub_21C9CFF74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_21CB84A44();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB82054();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v35 - v21;
  v23 = type metadata accessor for PMWiFiIcon();
  sub_21C6EF0A0(a1 + v23[5], v22);
  v24 = type metadata accessor for PMWiFiNetwork();
  if ((*(*(v24 - 8) + 48))(v22, 1, v24) == 1)
  {
    sub_21C6EA794(v22, &qword_27CDEE678, &unk_21CBBA210);
  }

  else
  {
    v25 = v22[*(v24 + 52)];
    sub_21C864EF0(v22);
  }

  v26 = sub_21CB84BB4();
  if (*(a1 + v23[6]) == 1)
  {
    v27 = sub_21CB84AD4();
  }

  else
  {
    v28 = a1 + v23[7];
    sub_21C74F0F8(v18);
    (*(v12 + 104))(v15, *MEMORY[0x277CDF3D0], v11);
    sub_21CB82044();
    v29 = *(v12 + 8);
    v29(v15, v11);
    v29(v18, v11);
    (*(v36 + 104))(v38, *MEMORY[0x277CE0EE8], v37);
    v27 = sub_21CB84B44();
  }

  v30 = v27;
  v31 = *(a1 + 24);
  v32 = sub_21CB83DC4();
  (*(*(v32 - 8) + 56))(v7, 1, 1, v32);
  v33 = sub_21CB83E14();
  sub_21C6EA794(v7, &qword_27CDEBB58, &qword_21CBAF8A0);
  result = swift_getKeyPath();
  *a2 = v26;
  a2[1] = v30;
  a2[2] = result;
  a2[3] = v33;
  return result;
}

uint64_t sub_21C9D03AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB82A84();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C9D0410()
{
  result = qword_27CDF4240;
  if (!qword_27CDF4240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4238, &unk_21CBBA2C8);
    sub_21C7E9188();
    sub_21C6EADEC(&qword_27CDF4248, &qword_27CDF4250, &qword_21CBBA308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4240);
  }

  return result;
}

uint64_t sub_21C9D04F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v38[1] = a5;
  v9 = sub_21CB83124();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4258, &qword_21CBBA3E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4260, &qword_21CBBA3F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v38 - v18;
  v38[4] = a1;
  v38[5] = a2;
  v38[6] = a3;
  v39 = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4268, &unk_21CBBA3F8);
  sub_21C9D1170();
  sub_21CB84C84();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v20 = *(v40 + 16);

  sub_21CB83114();
  sub_21CB83104();
  v40 = v20;
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v21 = sub_21CB84034();
  v23 = v22;
  LOBYTE(a1) = v24 & 1;
  sub_21C9D1290();
  sub_21CB84774();
  sub_21C74A72C(v21, v23, a1);

  v25 = sub_21CB83D34();
  sub_21CB81F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v12 + 8))(v15, v11);
  v34 = &v19[*(v16 + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_21CB85184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4288, &qword_21CBBA458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4290, &qword_21CBBA460);
  v35 = sub_21C9D12F4();
  sub_21C9D13BC();
  v36 = sub_21C830EB0();
  v40 = v16;
  v41 = &type metadata for PMAccountsListNavigationCellLabelStyle;
  v42 = v35;
  v43 = v36;
  swift_getOpaqueTypeConformance2();
  sub_21CB84964();
  return sub_21C772EC0(v19);
}

uint64_t sub_21C9D094C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C9D0A78@<X0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42A8, &qword_21CBBA490);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42B0, &qword_21CBBA498);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - v11);
  v13 = sub_21CB82F84();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      v18 = sub_21CB84BB4();
      v19 = sub_21CB84AE4();
      v12->i64[0] = v18;
      v12->i64[1] = v19;
      v12[1] = vdupq_n_s64(0x4040000000000000uLL);
      v12[2].i64[0] = 0x4018000000000000;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
      sub_21C830D18();
      v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4278, &qword_21CBBA408);
      v21 = MEMORY[0x277CE1088];
      v22 = MEMORY[0x277CE1078];
      v33 = MEMORY[0x277CE1088];
      v34 = MEMORY[0x277CE1078];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v33 = v21;
      v34 = MEMORY[0x277CE1350];
      v35 = v20;
      v36 = v22;
      v37 = MEMORY[0x277CE1340];
      v38 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      return sub_21CB83494();
    }
  }

  else
  {

    sub_21CB85B04();
    v25 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v14 + 8))(v17, v13);
    if ((v33 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v39 = sub_21CB84BB4();
  sub_21CB85184();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4278, &qword_21CBBA408);
  v27 = MEMORY[0x277CE1088];
  v33 = MEMORY[0x277CE1088];
  v34 = MEMORY[0x277CE1078];
  v29 = swift_getOpaqueTypeConformance2();
  sub_21CB84974();

  v28 = v31;
  (*(v31 + 16))(v12, v8, v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  v33 = v27;
  v34 = MEMORY[0x277CE1350];
  v35 = v26;
  v36 = MEMORY[0x277CE1078];
  v37 = MEMORY[0x277CE1340];
  v38 = v29;
  swift_getOpaqueTypeConformance2();
  sub_21CB83494();
  return (*(v28 + 8))(v8, v5);
}

uint64_t sub_21C9D0F48(void *a1)
{
  v2 = sub_21CB82724();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = *a1;
  sub_21CB82714();
  sub_21CB84234();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C9D1044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_21C772F30(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4288, &qword_21CBBA458);
  v6 = a2 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_21C9D10B0()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4260, &qword_21CBBA3F0);
  sub_21C9D12F4();
  sub_21C830EB0();
  sub_21CB840E4();
}

uint64_t sub_21C9D1160@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21C9D0A78(*(v1 + 32), *(v1 + 40), a1);
}

unint64_t sub_21C9D1170()
{
  result = qword_27CDF4270;
  if (!qword_27CDF4270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4268, &unk_21CBBA3F8);
    sub_21C830D18();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4278, &qword_21CBBA408);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4270);
  }

  return result;
}

unint64_t sub_21C9D1290()
{
  result = qword_27CDF4280;
  if (!qword_27CDF4280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4258, &qword_21CBBA3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4280);
  }

  return result;
}

unint64_t sub_21C9D12F4()
{
  result = qword_27CDF4298;
  if (!qword_27CDF4298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4260, &qword_21CBBA3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4258, &qword_21CBBA3E8);
    sub_21C9D1290();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4298);
  }

  return result;
}

unint64_t sub_21C9D13BC()
{
  result = qword_27CDF42A0;
  if (!qword_27CDF42A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF4288, &qword_21CBBA458);
    sub_21C9D12F4();
    sub_21C9CF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF42A0);
  }

  return result;
}

uint64_t type metadata accessor for PMGroupInvitationView()
{
  result = qword_27CDF42B8;
  if (!qword_27CDF42B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C9D14BC()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C722638(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_21C9D15F8();
      if (v2 <= 0x3F)
      {
        sub_21C9D1650();
        if (v3 <= 0x3F)
        {
          sub_21C9BA6D4();
          if (v4 <= 0x3F)
          {
            sub_21C722638(319, &qword_27CDED658, &type metadata for PMAccountsNavigationStyle, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21C9D15F8()
{
  if (!qword_27CDF42C8)
  {
    type metadata accessor for PMGroupMemberImageModel();
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF42C8);
    }
  }
}

void sub_21C9D1650()
{
  if (!qword_27CDF42D0)
  {
    type metadata accessor for PMGroupMemberImageCache();
    sub_21C9D6288(&qword_27CDEECA8, type metadata accessor for PMGroupMemberImageCache);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF42D0);
    }
  }
}

uint64_t sub_21C9D1728@<X0>(uint64_t a1@<X8>)
{
  v135 = a1;
  v2 = sub_21CB83874();
  v133 = *(v2 - 8);
  v3 = *(v133 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB83274();
  v132 = *(v6 - 8);
  v7 = *(v132 + 64);
  MEMORY[0x28223BE20](v6);
  v131 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB83A34();
  v129 = *(v9 - 8);
  v130 = v9;
  v10 = *(v129 + 64);
  MEMORY[0x28223BE20](v9);
  v128 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB81024();
  v116 = *(v12 - 8);
  v117 = v12;
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12);
  v115 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for PMGroupInvitationView();
  v110 = *(v136 - 1);
  v15 = *(v110 + 64);
  MEMORY[0x28223BE20](v136);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42D8, &qword_21CBBA508);
  v16 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v18 = &v101 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42E0, &qword_21CBBA510);
  v113 = *(v19 - 8);
  v114 = v19;
  v20 = *(v113 + 64);
  MEMORY[0x28223BE20](v19);
  v111 = &v101 - v21;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42E8, &qword_21CBBA518);
  v22 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v137 = &v101 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42F0, &qword_21CBBA520);
  v118 = *(v120 - 8);
  v24 = *(v118 + 64);
  MEMORY[0x28223BE20](v120);
  v139 = &v101 - v25;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF42F8, &qword_21CBBA528);
  v121 = *(v123 - 8);
  v26 = *(v121 + 64);
  MEMORY[0x28223BE20](v123);
  v119 = &v101 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4300, &qword_21CBBA530);
  v124 = *(v28 - 8);
  v125 = v28;
  v29 = *(v124 + 64);
  MEMORY[0x28223BE20](v28);
  v122 = &v101 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4308, &qword_21CBBA538);
  v134 = *(v31 - 8);
  v32 = *(v134 + 64);
  MEMORY[0x28223BE20](v31);
  v127 = &v101 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v126 = &v101 - v35;
  sub_21CB25D9C(v153);
  if (v155)
  {
    v106 = v31;
    v107 = v6;
    v108 = v5;
    v109 = v2;
    v160[0] = v153[0];
    v160[1] = v153[1];
    v161 = v154;
    v162 = v155;
    v163 = v156;
    v164 = v157;
    v165 = v158;
    v166 = v159;
    v36 = v18;
    *v18 = sub_21CB832E4();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v37 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4310, &qword_21CBBA540) + 44)];
    *v37 = sub_21CB83054();
    *(v37 + 1) = 0;
    v37[16] = 1;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4318, &unk_21CBBA548);
    sub_21C9D2884(v1, v160, &v37[*(v38 + 44)]);
    v39 = v1 + *(v136 + 5);
    v40 = *v39;
    v41 = *(v39 + 8);
    LOBYTE(v39) = *(v39 + 16);
    v141 = v40;
    v142 = v41;
    LOBYTE(v143) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    sub_21CB84F54();
    v140 = v1;
    v102 = v152;
    sub_21C9D5C48(v1, &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationView);
    v42 = *(v110 + 80);
    v43 = (v42 + 16) & ~v42;
    v103 = v43 + v15;
    v104 = v42;
    v44 = swift_allocObject();
    v105 = v43;
    v110 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_21C9D5CB0(v110, v44 + v43, type metadata accessor for PMGroupInvitationView);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4320, &unk_21CBBA558);
    v101 = sub_21C6EADEC(&qword_27CDF4328, &qword_27CDF42D8, &qword_21CBBA508);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3E20, &unk_21CBB9760);
    v47 = sub_21CB83994();
    v48 = sub_21C9C11A8();
    v141 = v46;
    v142 = v47;
    v143 = v48;
    v144 = MEMORY[0x277CDE2B8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v45;
    v50 = v111;
    v51 = v112;
    sub_21CB847B4();
    v52 = v140;

    sub_21C6EA794(v36, &qword_27CDF42D8, &qword_21CBBA508);
    v150 = 0xD000000000000016;
    v151 = 0x800000021CB96880;
    v53 = v136;
    v54 = *(v52 + *(v136 + 11));
    sub_21CB852C4();
    v141 = v51;
    v142 = v49;
    v143 = v101;
    v144 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v55 = v137;
    v56 = v114;
    sub_21CB845E4();
    (*(v113 + 8))(v50, v56);
    v57 = (v52 + *(v53 + 9));
    v58 = v57[1];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    LOBYTE(v49) = v141;
    KeyPath = swift_getKeyPath();
    v60 = swift_allocObject();
    *(v60 + 16) = v49;
    v61 = &v55[*(v138 + 36)];
    *v61 = KeyPath;
    v61[1] = sub_21C735744;
    v61[2] = v60;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (v141 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C82A2F0(), (swift_dynamicCast() & 1) != 0))
    {
      v62 = v150;
      [v150 safari_isOrContainsNetworkUnavailableError];
    }

    else
    {
      v62 = 0;
    }

    v63 = v115;
    sub_21CB81014();
    v64 = sub_21CB81004();
    v66 = v65;

    (*(v116 + 8))(v63, v117);
    v150 = v64;
    v151 = v66;
    v136 = *v57;
    v117 = type metadata accessor for PMGroupInvitationModel();
    sub_21C9D6288(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel);
    sub_21CB82684();
    swift_getKeyPath();
    sub_21CB82694();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v67 = v148;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v115 = sub_21C9D57F4();
    v116 = sub_21C71F3FC();
    v68 = v138;
    v69 = v137;
    sub_21CB84734();

    sub_21C6EA794(v69, &qword_27CDF42E8, &qword_21CBBA518);
    v70 = (v140 + *(type metadata accessor for PMSharingGroup() + 20));
    v71 = *v70;
    v72 = v70[1];
    v73 = sub_21C9BD434();
    v74 = sub_21C7C2FB4(v71, v72, v73 & 1);
    v137 = v75;
    v148 = v74;
    v149 = v75;
    sub_21CB82684();
    swift_getKeyPath();
    sub_21CB82694();

    v136 = &v101;
    LODWORD(v117) = v152;
    MEMORY[0x28223BE20](v76);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
    v141 = v68;
    v142 = MEMORY[0x277D837D0];
    v143 = MEMORY[0x277CE1428];
    v144 = v114;
    v78 = v116;
    v145 = v115;
    v146 = v116;
    v147 = MEMORY[0x277CE1410];
    v79 = swift_getOpaqueTypeConformance2();
    v100 = sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
    v80 = v119;
    v81 = v120;
    v82 = v139;
    sub_21CB84764();

    (*(v118 + 8))(v82, v81);
    v83 = v128;
    sub_21CB83A24();
    v141 = v81;
    v142 = MEMORY[0x277D837D0];
    v143 = v77;
    v144 = v79;
    v145 = v78;
    v146 = v100;
    v84 = swift_getOpaqueTypeConformance2();
    v86 = v122;
    v85 = v123;
    sub_21CB844F4();
    (*(v129 + 8))(v83, v130);
    (*(v121 + 8))(v80, v85);
    v87 = v131;
    sub_21CB83254();
    v141 = v85;
    v142 = v84;
    swift_getOpaqueTypeConformance2();
    v88 = v127;
    v89 = v125;
    sub_21CB84614();
    (*(v132 + 8))(v87, v107);
    (*(v124 + 8))(v86, v89);
    v90 = v108;
    sub_21CB83864();
    v91 = v110;
    sub_21C9D5C48(v140, v110, type metadata accessor for PMGroupInvitationView);
    v92 = swift_allocObject();
    sub_21C9D5CB0(v91, v92 + v105, type metadata accessor for PMGroupInvitationView);
    v93 = v126;
    v94 = v106;
    sub_21CB828A4();
    sub_21C6EA794(v153, &qword_27CDECC50, &unk_21CBB52A0);

    (*(v133 + 8))(v90, v109);
    sub_21C6EA794(v88, &qword_27CDF4308, &qword_21CBBA538);
    v95 = v135;
    sub_21C773330(v93, v135);
    return (*(v134 + 56))(v95, 0, 1, v94);
  }

  else
  {
    v97 = v135;
    v98 = *(v134 + 56);

    return v98(v97, 1, 1, v31);
  }
}

uint64_t sub_21C9D2884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4338, &qword_21CBBA700);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4340, &qword_21CBBA708);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v22 - v17;
  sub_21C9D44F0(a1, &v22 - v17);
  *v11 = sub_21CB832F4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4348, &qword_21CBBA710);
  sub_21C9D2AB0(a1, v23, &v11[*(v19 + 44)]);
  sub_21C6EDBAC(v18, v15, &qword_27CDF4340, &qword_21CBBA708);
  sub_21C6EDBAC(v11, v8, &qword_27CDF4338, &qword_21CBBA700);
  sub_21C6EDBAC(v15, a3, &qword_27CDF4340, &qword_21CBBA708);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4350, &qword_21CBBA718);
  sub_21C6EDBAC(v8, a3 + *(v20 + 48), &qword_27CDF4338, &qword_21CBBA700);
  sub_21C6EA794(v11, &qword_27CDF4338, &qword_21CBBA700);
  sub_21C6EA794(v18, &qword_27CDF4340, &qword_21CBBA708);
  sub_21C6EA794(v8, &qword_27CDF4338, &qword_21CBBA700);
  return sub_21C6EA794(v15, &qword_27CDF4340, &qword_21CBBA708);
}

uint64_t sub_21C9D2AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4358, &qword_21CBBA720);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4360, &qword_21CBBA728);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v16);
  v55 = &v47 - v17;
  v52 = sub_21CB84FB4();
  v49 = *(v52 - 8);
  v18 = v49;
  v19 = *(v49 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v47 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4368, &qword_21CBBA730);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v47 - v29;
  *v30 = sub_21CB83054();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4370, &qword_21CBBA738) + 44)];
  v50 = v30;
  sub_21C9D2F9C(a1, a2, v31);
  v48 = v23;
  sub_21CB84FA4();
  *v8 = sub_21CB83074();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4378, &qword_21CBBA740);
  sub_21C9D4ED8(a1, &v8[*(v32 + 44)]);
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21C716934(v8, v15, &qword_27CDF4358, &qword_21CBBA720);
  v33 = &v15[*(v10 + 44)];
  v34 = v61;
  *(v33 + 4) = v60;
  *(v33 + 5) = v34;
  *(v33 + 6) = v62;
  v35 = v57;
  *v33 = v56;
  *(v33 + 1) = v35;
  v36 = v59;
  *(v33 + 2) = v58;
  *(v33 + 3) = v36;
  v37 = v55;
  sub_21C716934(v15, v55, &qword_27CDF4360, &qword_21CBBA728);
  sub_21C6EDBAC(v30, v27, &qword_27CDF4368, &qword_21CBBA730);
  v38 = *(v18 + 16);
  v39 = v51;
  v40 = v52;
  v38(v51, v23, v52);
  v41 = v37;
  v42 = v53;
  sub_21C6EDBAC(v41, v53, &qword_27CDF4360, &qword_21CBBA728);
  v43 = v54;
  sub_21C6EDBAC(v27, v54, &qword_27CDF4368, &qword_21CBBA730);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4380, &qword_21CBBA748);
  v38((v43 + *(v44 + 48)), v39, v40);
  sub_21C6EDBAC(v42, v43 + *(v44 + 64), &qword_27CDF4360, &qword_21CBBA728);
  sub_21C6EA794(v55, &qword_27CDF4360, &qword_21CBBA728);
  v45 = *(v49 + 8);
  v45(v48, v40);
  sub_21C6EA794(v50, &qword_27CDF4368, &qword_21CBBA730);
  sub_21C6EA794(v42, &qword_27CDF4360, &qword_21CBBA728);
  v45(v39, v40);
  return sub_21C6EA794(v27, &qword_27CDF4368, &qword_21CBBA730);
}

uint64_t sub_21C9D2F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_21CB82A54();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMGroupInvitationView();
  v10 = v9 - 8;
  v45 = *(v9 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43A0, &qword_21CBBA7A0);
  v49 = *(v47 - 8);
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43A8, &qword_21CBBA7A8);
  v16 = *(v15 - 8);
  v51 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v52 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v46 = &v44 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43B0, &qword_21CBBA7B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v50 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  *v26 = sub_21CB832F4();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43B8, &qword_21CBBA7B8) + 44);
  v56 = a1;
  v57 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43C0, &qword_21CBBA7C0);
  sub_21C6EADEC(&qword_27CDF43C8, &qword_27CDF43C0, &qword_21CBBA7C0);
  sub_21CB81FC4();
  sub_21C9D5C48(a1, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMGroupInvitationView);
  v28 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v29 = swift_allocObject();
  sub_21C9D5CB0(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PMGroupInvitationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43D0, &qword_21CBBA7C8);
  sub_21C9D5D8C();
  sub_21CB84DA4();
  v30 = v48;
  sub_21CB82A44();
  sub_21C6EADEC(&qword_27CDF43E0, &qword_27CDF43A0, &qword_21CBBA7A0);
  sub_21C9D6288(&qword_27CDED508, MEMORY[0x277CDDB18]);
  v31 = v46;
  v32 = v47;
  v33 = v53;
  sub_21CB84124();
  (*(v54 + 8))(v30, v33);
  (*(v49 + 8))(v14, v32);
  v34 = *(a1 + *(v10 + 44) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v14) = v58;
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v14;
  v37 = v50;
  v38 = (v31 + *(v51 + 44));
  *v38 = KeyPath;
  v38[1] = sub_21C87E800;
  v38[2] = v36;
  sub_21C6EDBAC(v26, v37, &qword_27CDF43B0, &qword_21CBBA7B0);
  v39 = v52;
  sub_21C6EDBAC(v31, v52, &qword_27CDF43A8, &qword_21CBBA7A8);
  v40 = v55;
  sub_21C6EDBAC(v37, v55, &qword_27CDF43B0, &qword_21CBBA7B0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43E8, &unk_21CBBA7D0);
  v42 = v40 + *(v41 + 48);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_21C6EDBAC(v39, v40 + *(v41 + 64), &qword_27CDF43A8, &qword_21CBBA7A8);
  sub_21C6EA794(v31, &qword_27CDF43A8, &qword_21CBBA7A8);
  sub_21C6EA794(v26, &qword_27CDF43B0, &qword_21CBBA7B0);
  sub_21C6EA794(v39, &qword_27CDF43A8, &qword_21CBBA7A8);
  return sub_21C6EA794(v37, &qword_27CDF43B0, &qword_21CBBA7B0);
}

uint64_t sub_21C9D35FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMSharingGroup();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMGroupInvitationDetails();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3E20, &unk_21CBB9760);
  v17 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v19 = &v35 - v18;
  v37 = a1;
  sub_21C9D5C48(a1, v11, type metadata accessor for PMSharingGroup);
  v36 = type metadata accessor for PMGroupInvitationView();
  v20 = *(a1 + *(v36 + 36) + 8);
  v21 = &v16[v13[7]];
  type metadata accessor for PMPasswordManagerState();
  sub_21C9D6288(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);

  *v21 = sub_21CB82B84();
  v21[1] = v22;
  v23 = v13[9];
  *&v16[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  sub_21C9D5C48(v11, v16, type metadata accessor for PMSharingGroup);
  v24 = &v16[v13[8]];
  type metadata accessor for PMGroupInvitationModel();
  sub_21C9D6288(&qword_27CDF3D20, type metadata accessor for PMGroupInvitationModel);
  v25 = sub_21CB82674();
  v27 = v26;
  sub_21C979EE8(v11);
  *v24 = v25;
  v24[1] = v27;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C9D5CB0(v16, v19, type metadata accessor for PMGroupInvitationDetails);
  v28 = &v19[*(v38 + 36)];
  v29 = v49;
  *(v28 + 4) = v48;
  *(v28 + 5) = v29;
  *(v28 + 6) = v50;
  v30 = v45;
  *v28 = v44;
  *(v28 + 1) = v30;
  v31 = v47;
  *(v28 + 2) = v46;
  *(v28 + 3) = v31;
  v42 = 0xD000000000000016;
  v43 = 0x800000021CB96880;
  v32 = *(v37 + *(v36 + 44));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C9C11A8();
  v33 = v39;
  sub_21CB84524();
  (*(v40 + 8))(v7, v33);
  return sub_21C6EA794(v19, &qword_27CDF3E20, &unk_21CBB9760);
}

uint64_t sub_21C9D3AAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v45 - v4;
  v5 = type metadata accessor for PMGroupInvitationView();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v46 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v52 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v45 - v17;
  MEMORY[0x28223BE20](v18);
  v49 = &v45 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  sub_21CB81014();
  v23 = sub_21CB81004();
  v25 = v24;
  v26 = *(v8 + 8);
  v26(v11, v7);
  v55 = v23;
  v56 = v25;
  v27 = v47;
  sub_21C9D5C48(v50, v47, type metadata accessor for PMGroupInvitationView);
  v28 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v29 = swift_allocObject();
  sub_21C9D5CB0(v27, v29 + v28, type metadata accessor for PMGroupInvitationView);
  sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB81014();
  v30 = sub_21CB81004();
  v32 = v31;
  v26(v11, v46);
  v55 = v30;
  v56 = v32;
  v33 = v53;
  sub_21CB81EF4();
  v34 = sub_21CB81F14();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v35 = v49;
  sub_21CB84DC4();
  v36 = v13[2];
  v37 = v51;
  v38 = v22;
  v36(v51, v22, v12);
  v39 = v52;
  v40 = v35;
  v36(v52, v35, v12);
  v41 = v54;
  v36(v54, v37, v12);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v36(&v41[*(v42 + 48)], v39, v12);
  v43 = v13[1];
  v43(v40, v12);
  v43(v38, v12);
  v43(v39, v12);
  return (v43)(v37, v12);
}

uint64_t sub_21C9D3FD0(uint64_t a1)
{
  v2 = type metadata accessor for PMGroupInvitationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21C9D5C48(a1, v5, type metadata accessor for PMGroupInvitationView);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21C9D5CB0(v5, v13 + v12, type metadata accessor for PMGroupInvitationView);
  sub_21C822ECC(0, 0, v9, &unk_21CBBA680, v13);
}

uint64_t sub_21C9D41B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21C9D4248, v6, v5);
}

uint64_t sub_21C9D4248()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for PMGroupInvitationView() + 36) + 8);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_21C9D42EC;

  return sub_21C9BDE98();
}

uint64_t sub_21C9D42EC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_21C9D448C;
  }

  else
  {
    v7 = sub_21C9D4428;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C9D4428()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C9D448C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_21C9D44F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43F0, &qword_21CBBA7E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43F8, &qword_21CBBA7E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4400, &qword_21CBBA7F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v32 - v17;
  v19 = type metadata accessor for PMGroupInvitationView();
  v20 = *(a1 + v19[9] + 8);
  if (sub_21C9BD434())
  {
    v21 = *(a1 + v19[7]);
    *v18 = *(a1 + v19[6]);
    *(v18 + 1) = v21;
    v18[16] = 0;
    swift_storeEnumTagMultiPayload();
    sub_21C9D6178();
    sub_21C9D61CC();

    return sub_21CB83494();
  }

  else
  {
    v23 = [objc_opt_self() unknownSenderImageName];
    sub_21CB855C4();

    v32[0] = sub_21CB84BB4();
    v24 = sub_21CB83DC4();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    v25 = sub_21CB83E14();
    sub_21C6EA794(v6, &qword_27CDEBB58, &qword_21CBAF8A0);
    KeyPath = swift_getKeyPath();
    sub_21CB85214();
    sub_21CB82374();
    v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4408, &unk_21CBBA828) + 36)];
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2390, &qword_21CBB3D80) + 28);
    sub_21CB83344();
    v29 = sub_21CB83354();
    (*(*(v29 - 8) + 56))(v27 + v28, 0, 1, v29);
    *v27 = swift_getKeyPath();
    *v10 = v32[0];
    *(v10 + 1) = KeyPath;
    *(v10 + 2) = v25;
    v30 = v34;
    *(v10 + 56) = v35;
    v31 = v33;
    *(v10 + 40) = v30;
    *(v10 + 24) = v31;
    *&v10[*(v7 + 36)] = sub_21CB84A84();
    sub_21C9D5F7C();
    sub_21CB84494();
    sub_21C6EA794(v10, &qword_27CDF43F0, &qword_21CBBA7E0);
    sub_21C6EDBAC(v14, v18, &qword_27CDF43F8, &qword_21CBBA7E8);
    swift_storeEnumTagMultiPayload();
    sub_21C9D6178();
    sub_21C9D61CC();
    sub_21CB83494();
    return sub_21C6EA794(v14, &qword_27CDF43F8, &qword_21CBBA7E8);
  }
}

uint64_t sub_21C9D494C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for PMGroupInvitationView() + 36) + 8);
  if (sub_21C9BD434())
  {
    v19 = *(a1 + *(type metadata accessor for PMSharingGroup() + 20));
    sub_21C71F3FC();
  }

  else
  {
    v5 = [objc_opt_self() unknownSenderCellTitle];
    v6 = sub_21CB855C4();
    v8 = v7;

    *&v19 = v6;
    *(&v19 + 1) = v8;
    sub_21C71F3FC();
  }

  sub_21CB84054();
  sub_21CB83494();
  v9 = objc_opt_self();
  sub_21C9D5F04(v19, *(&v19 + 1), v20);
  v10 = sub_21C9DC5CC();
  v11 = [v9 invitationDescriptionForOwner_];

  sub_21CB855C4();
  sub_21C71F3FC();
  v12 = sub_21CB84054();
  v14 = v13;
  LOBYTE(v9) = v15;
  v17 = v16;
  sub_21C9D5F04(v19, *(&v19 + 1), v20);
  LOBYTE(v9) = v9 & 1;
  sub_21C79B058(v12, v14, v9);

  sub_21C9D5F40(v19, *(&v19 + 1), v20);
  *a2 = v19;
  *(a2 + 16) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = v9;
  *(a2 + 64) = v17;
  sub_21C74A72C(v12, v14, v9);

  return sub_21C9D5F40(v19, *(&v19 + 1), v20);
}

uint64_t sub_21C9D4BF4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PMGroupInvitationView() + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C9D4C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB83094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_21CB83134();
  sub_21CB84CA4();
  sub_21CB83084();
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C9D6288(&qword_27CDEC0A8, MEMORY[0x277CDDE78]);
  sub_21CB840E4();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v12 = sub_21CB84A84();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF43D0, &qword_21CBBA7C8);
  *(a1 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_21C9D4ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for PMGroupInvitationView();
  v4 = v3 - 8;
  v63 = *(v3 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = v6;
  v66 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v7 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v69 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62[0] = v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FD0, &qword_21CBB92A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4388, &qword_21CBBA750);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4390, &qword_21CBBA758);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v67 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v62 - v27;
  v29 = *(v4 + 44);
  v65 = a1;
  v30 = *(a1 + v29 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v62[1] = v30;
  sub_21CB81DB4();

  if (v71 == 1)
  {
    sub_21CB82234();
    v31 = &v14[*(v11 + 36)];
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
    v33 = *MEMORY[0x277CDF438];
    v34 = sub_21CB82064();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    LOBYTE(v31) = sub_21CB83D34();
    v35 = sub_21CB83D24();
    sub_21CB83D24();
    if (sub_21CB83D24() != v31)
    {
      v35 = sub_21CB83D24();
    }

    sub_21CB81F24();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    sub_21C716934(v14, v19, &qword_27CDF1FD0, &qword_21CBB92A0);
    v44 = &v19[*(v15 + 36)];
    *v44 = v35;
    *(v44 + 1) = v37;
    *(v44 + 2) = v39;
    *(v44 + 3) = v41;
    *(v44 + 4) = v43;
    v44[40] = 0;
    sub_21C716934(v19, v22, &qword_27CDF4388, &qword_21CBBA750);
    sub_21C716934(v22, v28, &qword_27CDF4388, &qword_21CBBA750);
    v45 = 0;
  }

  else
  {
    v45 = 1;
  }

  (*(v16 + 56))(v28, v45, 1, v15);
  v46 = [objc_opt_self() viewButtonTitle];
  v47 = sub_21CB855C4();
  v49 = v48;

  v71 = v47;
  v72 = v49;
  v50 = v66;
  sub_21C9D5C48(v65, v66, type metadata accessor for PMGroupInvitationView);
  v51 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v52 = swift_allocObject();
  sub_21C9D5CB0(v50, v52 + v51, type metadata accessor for PMGroupInvitationView);
  sub_21C71F3FC();
  v53 = v62[0];
  sub_21CB84DE4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v51) = v71;
  KeyPath = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = v51;
  v56 = v67;
  v57 = (v53 + *(v68 + 36));
  *v57 = KeyPath;
  v57[1] = sub_21C87E800;
  v57[2] = v55;
  sub_21C6EDBAC(v28, v56, &qword_27CDF4390, &qword_21CBBA758);
  v58 = v69;
  sub_21C6EDBAC(v53, v69, &qword_27CDEDA98, &unk_21CBABCB0);
  v59 = v70;
  sub_21C6EDBAC(v56, v70, &qword_27CDF4390, &qword_21CBBA758);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4398, &unk_21CBBA760);
  sub_21C6EDBAC(v58, v59 + *(v60 + 48), &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v53, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v28, &qword_27CDF4390, &qword_21CBBA758);
  sub_21C6EA794(v58, &qword_27CDEDA98, &unk_21CBABCB0);
  return sub_21C6EA794(v56, &qword_27CDF4390, &qword_21CBBA758);
}