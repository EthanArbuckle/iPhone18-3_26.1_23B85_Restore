uint64_t sub_21C9064F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_21C9065C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  *a2 = *(v3 + 73);
  return result;
}

uint64_t sub_21C906690()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v2 = *(v0 + 80);
  v1 = *(v4 + 88);

  return v2;
}

uint64_t sub_21C906740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v5 = *(v3 + 80);
  v4 = *(v3 + 88);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_21C908268;
  a2[1] = v6;
}

uint64_t sub_21C906818(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

  sub_21CB810C4();
}

uint64_t sub_21C906934(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[11];
  a1[10] = a2;
  a1[11] = a3;

  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v6 = a1[10];
  v5 = a1[11];
  swift_getKeyPath();

  sub_21CB810D4();

  v7 = a1[12];

  v6(MEMORY[0x277D84FA0], v7);
}

uint64_t sub_21C906A74(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v4 = v1[12];

  v5 = sub_21C7A2154(a1, v4);

  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    sub_21CB810D4();

    v8 = v2[10];
    v7 = v2[11];
    swift_getKeyPath();
    v13 = v2;

    sub_21CB810D4();

    v9 = v2[12];

    v8(a1, v9);

    v10 = v2[17];
    v11 = qword_27CDEA4C0;

    if (v11 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v12 = sub_21C741948(v10, v13);

    if (v12)
    {
      sub_21C91C48C();
    }
  }

  return result;
}

uint64_t sub_21C906C6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
}

uint64_t sub_21C906CD4()
{
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_21C906D8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_21C906E4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 112);
  *(a1 + 112) = a2;
}

uint64_t sub_21C906EB4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  swift_getKeyPath();
  v13 = v1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  if (*(v1 + 32))
  {

    sub_21CB85944();
  }

  sub_21CB858C4();
  v7 = sub_21CB858E4();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = a1;

  v10 = sub_21C9E6C0C(0, 0, v6, &unk_21CBAFF48, v9);
  sub_21C6EA794(v6, &qword_27CDF1D50, &qword_21CBA0C00);
  return sub_21C905410(v10);
}

uint64_t sub_21C9070C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for PMAccount(0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21C907184, 0, 0);
}

uint64_t sub_21C907184()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (!Strong)
  {
LABEL_4:
    v3 = v0[12];

    v4 = v0[1];

    return v4();
  }

  if (sub_21CB85954())
  {

    goto LABEL_4;
  }

  v0[14] = sub_21CB858B4();
  v0[15] = sub_21CB858A4();
  v7 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C907290, v7, v6);
}

uint64_t sub_21C907290()
{
  v1 = v0[15];
  v2 = v0[13];

  swift_getKeyPath();
  v0[5] = v2;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v0[16] = v2[2];
  v0[17] = v2[3];
  v3 = v2[18];
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  v0[18] = qword_27CE18778;
  sub_21CB86544();
  v5 = sub_21C81C2D0(v3, v0[6]);

  v0[19] = [v5 associatedDomainsManager];

  return MEMORY[0x2822009F8](sub_21C90741C, 0, 0);
}

uint64_t sub_21C90741C()
{
  if (sub_21CB85954())
  {
    v1 = v0[19];
    v2 = v0[17];
    v3 = v0[13];
LABEL_10:

    v16 = v0[12];

    v17 = v0[1];

    return v17();
  }

  v4 = v0[9];
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v22 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v5, 0);
    v6 = v22;
    v7 = *(v22 + 16);
    v8 = 16 * v7;
    v9 = (v4 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v22 + 24);

      if (v7 >= v12 >> 1)
      {
        sub_21C7B0C0C((v12 > 1), v7 + 1, 1);
      }

      *(v22 + 16) = v7 + 1;
      v13 = v22 + v8;
      *(v13 + 32) = v11;
      *(v13 + 40) = v10;
      v8 += 16;
      v9 += 4;
      ++v7;
      --v5;
    }

    while (v5);
  }

  v0[20] = v6;
  if (sub_21CB85954())
  {
    v1 = v0[19];
    v14 = v0[17];
    v15 = v0[13];

    goto LABEL_10;
  }

  v19 = v0[14];
  v0[21] = sub_21CB858A4();
  v21 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C9075FC, v21, v20);
}

uint64_t sub_21C9075FC()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[13];

  v4 = *(v3 + 120);

  sub_21CB86544();
  v0[22] = sub_21C7072A8(v4, v0[7]);

  return MEMORY[0x2822009F8](sub_21C9076A4, 0, 0);
}

uint64_t sub_21C9076A4()
{
  v1 = *(v0 + 112);
  *(v0 + 184) = sub_21CB858A4();
  v3 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C907730, v3, v2);
}

uint64_t sub_21C907730()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];

  v0[24] = sub_21C8326F0(v3);

  return MEMORY[0x2822009F8](sub_21C9077B8, 0, 0);
}

uint64_t sub_21C9077B8()
{
  v1 = sub_21CB85954();
  v2 = v0[24];
  v3 = v0[19];
  v4 = v0[17];
  if (v1)
  {
    v5 = v0[13];
    v6 = v0[24];

LABEL_19:

    v27 = v0[12];

    v28 = v0[1];

    return v28();
  }

  v7 = v0[16];
  v8 = v3;
  matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v2, v7, v4, v3);

  if (sub_21CB85954())
  {
    v10 = v0[19];
    v11 = v0[13];
LABEL_18:

    goto LABEL_19;
  }

  v12 = *(matched + 16);
  if (v12)
  {
    v13 = v0[11];
    v14 = (v0[12] + *(v0[10] + 28));
    v15 = matched + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v33 = *(v13 + 72);
    v34 = v0;
    v35 = MEMORY[0x277D84F90];
    do
    {
      v17 = v0[12];
      sub_21C909970(v15, v17, type metadata accessor for PMAccount);
      v18 = *v14;
      v19 = v14[1];
      v21 = v14[2];
      v20 = v14[3];
      sub_21C7D33AC(*v14, v19, v21, v20);
      sub_21C719360(v17, type metadata accessor for PMAccount);
      if (v19)
      {
        v22 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_21CA4F1E0(0, *(v35 + 2) + 1, 1, v35);
        }

        v24 = *(v22 + 2);
        v23 = *(v22 + 3);
        if (v24 >= v23 >> 1)
        {
          v22 = sub_21CA4F1E0((v23 > 1), v24 + 1, 1, v22);
        }

        *(v22 + 2) = v24 + 1;
        v35 = v22;
        v16 = &v22[32 * v24];
        *(v16 + 4) = v18;
        *(v16 + 5) = v19;
        v16[48] = v21 & 1;
        *(v16 + 7) = v20;
      }

      v0 = v34;
      v15 += v33;
      --v12;
    }

    while (v12);

    v25 = v35;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v0[25] = v25;
  if (sub_21CB85954())
  {
    v10 = v0[19];
    v26 = v0[13];
    goto LABEL_18;
  }

  v30 = v0[14];
  v0[26] = sub_21CB858A4();
  v32 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C907AAC, v32, v31);
}

uint64_t sub_21C907AAC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[13];

  sub_21C9042F0(v2);

  return MEMORY[0x2822009F8](sub_21C907B20, 0, 0);
}

uint64_t sub_21C907B20()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21C907B94(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C905C8C(v1, 0);
  }

  return result;
}

uint64_t sub_21C907BF8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C905C8C(0, v1);
  }

  return result;
}

uint64_t sub_21C907C5C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1 == *(result + 73))
    {
      *(result + 73) = v1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
      sub_21CB810C4();
    }
  }

  return result;
}

uint64_t sub_21C907DA4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  v5 = sub_21CB85114();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_21C907E40(uint64_t a1)
{
  v2 = sub_21CB85114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  swift_getKeyPath();
  v13[1] = a1;
  sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);
  sub_21CB810D4();

  v10 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  swift_beginAccess();
  (*(v3 + 16))(v9, a1 + v10, v2);
  v11 = (*(v3 + 88))(v9, v2);
  if (v11 == *MEMORY[0x277CDF0D8])
  {
    (*(v3 + 104))(v6, *MEMORY[0x277CDF0D0], v2);
    return sub_21C90231C(v6);
  }

  if (v11 == *MEMORY[0x277CDF0D0])
  {
    (*(v3 + 104))(v6);
    return sub_21C90231C(v6);
  }

  return (*(v3 + 8))(v9, v2);
}

char *sub_21C90806C()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = *(v0 + 7);

  v6 = *(v0 + 8);

  v7 = *(v0 + 11);

  v8 = *(v0 + 12);

  v9 = *(v0 + 13);

  v10 = *(v0 + 14);

  v11 = *(v0 + 15);

  v12 = *(v0 + 16);

  v13 = *(v0 + 17);

  v14 = *(v0 + 18);

  v15 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel__editMode;
  v16 = sub_21CB85114();
  (*(*(v16 - 8) + 8))(&v0[v15], v16);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
  v18 = sub_21CB81114();
  (*(*(v18 - 8) + 8))(&v0[v17], v18);
  return v0;
}

uint64_t sub_21C90817C()
{
  sub_21C90806C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C9081DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 96);
  *(v1 + 96) = *(v0 + 24);

  sub_21C906A74(v2);
}

uint64_t sub_21C90822C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

uint64_t sub_21C908268(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_21C908304@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C908384(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

void *sub_21C9083F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_21C908B18(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_21C908494(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_21C909088(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_21C908530(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
LABEL_6:
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 24 * v12);
    result = sub_21CB109D0(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    v15 = *(*(a2 + 56) + 24 * result);
    v16 = *(v15 + 16);
    if (v16 != *(v13 + 16))
    {
      return 0;
    }

    if (v16)
    {
      v17 = v15 == v13;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = (v15 + 40);
      v19 = (v13 + 40);
      while (v16)
      {
        result = *(v18 - 1);
        if (result != *(v19 - 1) || *v18 != *v19)
        {
          result = sub_21CB86344();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v18 += 2;
        v19 += 2;
        if (!--v16)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_21C9086A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v28 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v30 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + v13);
    v15 = (*(v3 + 56) + 24 * v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = sub_21CB109D0(v14);
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    v21 = (*(v2 + 56) + 24 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];

    v25 = v18;

    v26 = v24;
    if ((sub_21C714F88(v22, v16) & 1) == 0 || (sub_21C967788(v23, v17) & 1) == 0)
    {

      return 0;
    }

    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
    v27 = sub_21CB85DD4();

    v3 = v28;
    v2 = a2;
    v8 = v30;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C9088B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  v33 = result;
  while (v6)
  {
    v11 = __clz(__rbit64(v6));
    v34 = (v6 - 1) & v6;
LABEL_15:
    v14 = v11 | (v2 << 6);
    v15 = (*(result + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(result + 56) + 32 * v14;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);

    v23 = v22;
    if (!v17)
    {
      return 1;
    }

    v24 = v23;
    v25 = sub_21CB10A3C(v16, v17);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_23;
    }

    v28 = *(a2 + 56) + 32 * v25;
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);
    if (*v28 == v20 && v19 == *(v28 + 8))
    {
      if (v21 != v29)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v32 = *(v28 + 8);
      if (sub_21CB86344() & 1) == 0 || ((v21 ^ v29))
      {
LABEL_23:

        return 0;
      }
    }

    sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);

    v8 = v30;
    v9 = sub_21CB85DD4();

    result = v33;
    v6 = v34;
    v10 = v17 == 0;
    if ((v9 & 1) == 0)
    {
      return v10;
    }
  }

  v12 = v2;
  while (1)
  {
    v2 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v13 = *(v3 + 8 * v2);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C908B18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v30 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v27 = v11 | (v5 << 6);
      v14 = (*(a3 + 48) + 16 * v27);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(a4 + 40);
      sub_21CB86484();

      sub_21CB854C4();
      v18 = sub_21CB864D4();
      v19 = -1 << *(a4 + 32);
      v20 = v18 & ~v19;
      if ((*(v30 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        while (1)
        {
          v22 = (*(a4 + 48) + 16 * v20);
          v23 = *v22 == v16 && v22[1] == v15;
          if (v23 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v30 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
LABEL_26:

          return sub_21CAA1B00(v26, a2, v28, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_21C908D28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v37[0] = v3;
    v37[1] = v37;
    v38 = v8;
    MEMORY[0x28223BE20](v10);
    v39 = v37 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v9);
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
    v42 = 0;
    v43 = a2 + 56;
    v40 = v5;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v19 = *(v5 + 48);
        v41 = v18;
        v20 = (v19 + 16 * v18);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(a2 + 40);
        sub_21CB86484();

        sub_21CB854C4();
        v24 = sub_21CB864D4();
        v25 = a2;
        v26 = -1 << *(a2 + 32);
        v9 = v24 & ~v26;
        if ((*(v43 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          v27 = ~v26;
          while (1)
          {
            v28 = (*(v25 + 48) + 16 * v9);
            v29 = *v28 == v22 && v28[1] == v21;
            if (v29 || (sub_21CB86344() & 1) != 0)
            {
              break;
            }

            v9 = (v9 + 1) & v27;
            if (((*(v43 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v5 = v40;
          *&v39[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
          v30 = __OFADD__(v42++, 1);
          a2 = v25;
          if (v30)
          {
            __break(1u);
LABEL_27:
            v31 = sub_21CAA1B00(v39, v38, v42, v5);

            v32 = *MEMORY[0x277D85DE8];
            return v31;
          }
        }

        else
        {
LABEL_6:

          a2 = v25;
          v5 = v40;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_27;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();

  v35 = sub_21C9083F8(v34, v8, v5, a2);

  MEMORY[0x21CF16D90](v34, -1, -1);

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t sub_21C909088(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  result = swift_beginAccess();
  v31 = 0;
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  while (v7)
  {
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v33 = v11 | (v9 << 6);
    v14 = (*(a3 + 48) + 16 * v33);
    v16 = *v14;
    v15 = v14[1];
    swift_getKeyPath();
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

    sub_21CB810D4();

    v17 = *(a4 + 64);
    if (*(v17 + 16))
    {
      v18 = *(a4 + 64);

      v19 = sub_21CB10A3C(v16, v15);
      if (v20)
      {
        v21 = *(v17 + 56) + 32 * v19;
        v23 = *v21;
        v22 = *(v21 + 8);
        v32 = *(v21 + 16);
        v24 = *(v21 + 24);

        v25 = v24;

        v26 = v32;
        v27 = v32;
        goto LABEL_16;
      }
    }

    v26 = 0;
    v27 = 0;
    v24 = 0;
    v22 = 0;
    v23 = 0;
LABEL_16:
    sub_21C7D33F0(v23, v22, v26, v24);

    if (v22)
    {
      if ((v27 & 1) == 0)
      {
        *(a1 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_21:

          return sub_21CAA1B00(a1, a2, v31, a3);
        }
      }
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      goto LABEL_21;
    }

    v13 = *(v4 + 8 * v9);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v7 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C9092FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v48 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v38 = v8;
    v39 = v3;
    v37[1] = v37;
    MEMORY[0x28223BE20](v10);
    v40 = v37 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v9);
    v8 = v5 + 56;
    v9 = 1 << *(v5 + 32);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v3 = v11 & *(v5 + 56);
    v44 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
    swift_beginAccess();
    v41 = 0;
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v45 = v5;
    v46 = a2;
    while (v3)
    {
      v14 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v17 = v14 | (v12 << 6);
      v18 = *(v5 + 48);
      v43 = v17;
      v19 = (v18 + 16 * v17);
      v20 = *v19;
      v9 = v19[1];
      swift_getKeyPath();
      v47 = a2;
      sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel);

      sub_21CB810D4();

      v21 = *(a2 + 64);
      if (*(v21 + 16))
      {
        v22 = *(a2 + 64);

        v23 = sub_21CB10A3C(v20, v9);
        if (v24)
        {
          v25 = *(v21 + 56) + 32 * v23;
          v27 = *v25;
          v26 = *(v25 + 8);
          v42 = *(v25 + 16);
          v28 = *(v25 + 24);

          v29 = v28;

          v30 = v42;
          v31 = v42;
          goto LABEL_17;
        }
      }

      v30 = 0;
      v31 = 0;
      v28 = 0;
      v26 = 0;
      v27 = 0;
LABEL_17:
      sub_21C7D33F0(v27, v26, v30, v28);

      v5 = v45;
      a2 = v46;
      if (v26)
      {
        if ((v31 & 1) == 0)
        {
          *&v40[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
          if (__OFADD__(v41++, 1))
          {
            __break(1u);
LABEL_22:
            v33 = sub_21CAA1B00(v40, v38, v41, v5);

            goto LABEL_23;
          }
        }
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        goto LABEL_22;
      }

      v16 = *(v8 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v3 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v36 = swift_slowAlloc();

  v33 = sub_21C908494(v36, v8, v5, a2);

  MEMORY[0x21CF16D90](v36, -1, -1);

LABEL_23:
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_21C9096B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);
}

uint64_t sub_21C9096F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9070C4(a1, v4, v5, v7, v6);
}

uint64_t sub_21C9097B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_21C9097EC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_21C9051D0(v2, v3);
}

uint64_t sub_21C909838()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t sub_21C909874()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_21C909928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C909970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9099F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C909A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB83484();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_21CB83494();
}

uint64_t PMImageBadgeModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a1;
  v67 = a3;
  swift_getWitnessTable();
  v5 = sub_21CB83744();
  v58 = *(v5 - 8);
  v6 = *(v58 + 8);
  MEMORY[0x28223BE20](v5);
  v62 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v56 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0CD8, &qword_21CBB0020);
  v11 = sub_21CB828F4();
  v60 = *(v11 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = v56 - v13;
  v57 = *(a2 + 16);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  v61 = *(a2 + 24);
  v88 = v61;
  v89 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v87 = MEMORY[0x277CDF748];
  v84 = swift_getWitnessTable();
  v85 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v14 = sub_21CB825B4();
  v56[5] = swift_getWitnessTable();
  v68 = sub_21CB82AD4();
  v15 = sub_21CB828F4();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v56 - v21;
  v69 = v5;
  v66 = sub_21CB834A4();
  v65 = *(v66 - 8);
  v23 = *(v65 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = v56 - v25;
  if (*v3 == 1)
  {
    v56[2] = v56;
    MEMORY[0x28223BE20](v24);
    v26 = v57;
    v56[4] = v14;
    v27 = v61;
    v56[-4] = v57;
    v56[-3] = v27;
    v56[-2] = v3;
    v56[1] = sub_21CB85214();
    v56[0] = v28;
    v58 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0CE8, &qword_21CBB0028);
    v62 = v11;
    v29 = swift_getWitnessTable();
    sub_21C6EADEC(qword_27CDF0CF0, &qword_27CDF0CE8, &qword_21CBB0028);
    v30 = v59;
    v56[3] = v29;
    v31 = sub_21CB74800();
    MEMORY[0x28223BE20](v31);
    v32 = v61;
    v56[-4] = v26;
    v56[-3] = v32;
    v56[-2] = v3;
    sub_21CB85214();
    v33 = sub_21C6EADEC(&qword_27CDF0CE0, &qword_27CDF0CD8, &qword_21CBB0020);
    v72 = v29;
    v73 = v33;
    v34 = swift_getWitnessTable();
    sub_21CB84864();
    (*(v60 + 8))(v30, v62);
    v35 = swift_getWitnessTable();
    v70 = v34;
    v71 = v35;
    swift_getWitnessTable();
    v36 = v16[2];
    v37 = v58;
    v36(v58, v19, v15);
    v38 = v16[1];
    v38(v19, v15);
    v36(v19, v37, v15);
    v39 = v64;
    sub_21C909A74(v19, v15);
    v38(v19, v15);
    v38(v37, v15);
  }

  else
  {
    v40 = v69;
    v41 = swift_getWitnessTable();
    v42 = v58;
    v43 = *(v58 + 2);
    v43(v10, v63, v40);
    v44 = v62;
    v43(v62, v10, v40);
    v45 = sub_21C6EADEC(&qword_27CDF0CE0, &qword_27CDF0CD8, &qword_21CBB0020);
    v82 = v41;
    v83 = v45;
    v46 = swift_getWitnessTable();
    v47 = swift_getWitnessTable();
    v80 = v46;
    v81 = v47;
    swift_getWitnessTable();
    v39 = v64;
    sub_21C72BE68(v44, v15, v40);
    v48 = *(v42 + 1);
    v48(v44, v40);
    v48(v10, v40);
  }

  v49 = swift_getWitnessTable();
  v50 = sub_21C6EADEC(&qword_27CDF0CE0, &qword_27CDF0CD8, &qword_21CBB0020);
  v78 = v49;
  v79 = v50;
  v51 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v76 = v51;
  v77 = v52;
  v74 = swift_getWitnessTable();
  v75 = v49;
  v53 = v66;
  swift_getWitnessTable();
  v54 = v65;
  (*(v65 + 16))(v67, v39, v53);
  return (*(v54 + 8))(v39, v53);
}

double sub_21C90A524@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for PMImageBadgeModifier();
  sub_21C90A56C(v6, &v8);
  result = *&v8;
  *a1 = v8;
  return result;
}

uint64_t sub_21C90A56C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  result = (*(v4 + 32))(v9 + v8, v7, a1);
  *a2 = sub_21C90B7F0;
  a2[1] = v9;
  return result;
}

uint64_t sub_21C90A68C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for PMImageBadgeModifier();
  sub_21C90A87C(v2, &v7);
  v6[0] = v7;
  v6[1] = v8;
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v3 = sub_21CB825B4();
  swift_getWitnessTable();
  v4 = *(*(v3 - 8) + 16);
  v4(v9, v6, v3);

  v7 = v9[0];
  v8 = v9[1];
  v4(a1, &v7, v3);
}

uint64_t sub_21C90A82C@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_21C90A68C(a1);
}

uint64_t sub_21C90A87C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 24);
  *(v8 + 16) = *(a1 + 16);
  *(v8 + 24) = v9;
  (*(v4 + 32))(v8 + v7, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  v12[4] = v9;
  v12[5] = MEMORY[0x277CDF678];
  v12[2] = swift_getWitnessTable();
  v12[3] = MEMORY[0x277CDF748];
  v12[0] = swift_getWitnessTable();
  v12[1] = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  result = sub_21CB825A4();
  *a2 = result;
  a2[1] = v11;
  return result;
}

uint64_t sub_21C90AA6C@<X0>(double *a1@<X1>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v41 = a3;
  v5 = sub_21CB828F4();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = sub_21CB828F4();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v36 - v11;
  v12 = sub_21CB828F4();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39 = &v36 - v17;
  sub_21CB823E4();
  v19 = v18;
  v21 = v20;
  v22 = type metadata accessor for PMImageBadgeModifier();
  if (v21 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v21;
  }

  v24 = floor(a1[3] * v23);
  v25 = *(v22 + 52);
  sub_21CB85214();
  sub_21CB84794();
  v26 = v24 * a1[1];
  v27 = v24 * a1[2];
  v46 = a2;
  v47 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v29 = v36;
  sub_21CB84804();
  (*(v38 + 8))(v8, v5);
  sub_21CB851F4();
  v44 = WitnessTable;
  v45 = MEMORY[0x277CDF748];
  v35 = swift_getWitnessTable();
  v30 = v37;
  sub_21CB847A4();
  (*(v40 + 8))(v29, v9);
  v42 = v35;
  v43 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v31 = v13[2];
  v32 = v39;
  v31(v39, v30, v12);
  v33 = v13[1];
  v33(v30, v12);
  v31(v41, v32, v12);
  return (v33)(v32, v12);
}

__n128 sub_21C90AE88@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D78, &qword_21CBB00C8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_21CB823E4();
  v10 = v9;
  v12 = v11;
  type metadata accessor for PMImageBadgeModifier();
  if (v12 >= v10)
  {
    *&v13 = v10;
  }

  else
  {
    *&v13 = v12;
  }

  v14 = *(a1 + 32);
  *&v13 = floor(*(a1 + 24) * *&v13);
  v21 = v13;
  *&v13 = (v14 * *&v13 - *&v13) * 0.5;
  v22 = v13;
  sub_21C90B098();
  sub_21CB85214();
  sub_21CB82374();
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D80, &qword_21CBB00D0) + 36)];
  v16 = v24;
  *v15 = v23;
  *(v15 + 1) = v16;
  *(v15 + 2) = v25;
  *&v8[*(v5 + 44)] = vaddq_f64(vdupq_lane_s64(v22, 0), vmulq_n_f64(*(a1 + 8), *&v21));
  sub_21CB851F4();
  sub_21CB82AC4();
  sub_21C90B8B8(v8, a2);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D88, &qword_21CBB00D8) + 36);
  v18 = v31;
  *(v17 + 64) = v30;
  *(v17 + 80) = v18;
  *(v17 + 96) = v32;
  v19 = v27;
  *v17 = v26;
  *(v17 + 16) = v19;
  result = v29;
  *(v17 + 32) = v28;
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_21C90B098()
{
  v1 = sub_21CB82A84();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D90, &unk_21CBB00E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  if (*(v0 + 56))
  {
    swift_storeEnumTagMultiPayload();
    sub_21C74A100();
    sub_21C90B98C();
    return sub_21CB83494();
  }

  else
  {
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = *(v1 + 20);
    v13 = *MEMORY[0x277CE0118];
    v14 = sub_21CB831A4();
    (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
    *v4 = v11;
    *(v4 + 1) = v10;
    sub_21C90B928(v4, v8);
    swift_storeEnumTagMultiPayload();
    sub_21C74A100();
    sub_21C90B98C();
    sub_21CB83494();
    return sub_21C74B294(v4);
  }
}

uint64_t getEnumTagSinglePayload for PMImageBadgeMaskShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PMImageBadgeMaskShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_21C90B2BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C90B2D8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_21C90B308(uint64_t a1)
{
  type metadata accessor for CGVector(319);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C90B3B4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(((((((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 17) & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21C90B55C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 57) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = ((((((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 17) & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t sub_21C90B808(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for PMImageBadgeModifier() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t sub_21C90B8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D78, &qword_21CBB00C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C90B928(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB82A84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C90B98C()
{
  result = qword_27CDF0BE8;
  if (!qword_27CDF0BE8)
  {
    sub_21CB82A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0BE8);
  }

  return result;
}

uint64_t sub_21C90B9E4@<X0>(uint64_t a1@<X8>)
{
  v113 = a1;
  v1 = type metadata accessor for PMAppSourceList();
  v112 = *(v1 - 8);
  v111 = *(v112 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v110 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v3 = *(*(v108 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v108);
  v109 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v107 = &v92 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v7 = *(*(v106 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v106);
  v104 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v103 = &v92 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  *&v118 = *(v115 - 8);
  v11 = *(v118 + 64);
  MEMORY[0x28223BE20](v115);
  *&v117 = &v92 - v12;
  v99 = sub_21CB826C4();
  v100 = *(v99 - 8);
  v13 = *(v100 + 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10B0, &qword_21CBB0790);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v92 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E68, &qword_21CBB0388);
  v95 = *(v94 - 8);
  v23 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  v25 = &v92 - v24;
  *&v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E60, &qword_21CBB0380);
  *&v97 = *(v96 - 8);
  v26 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = &v92 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E58, &qword_21CBB0378);
  v29 = *(v28 - 8);
  v102 = v28 - 8;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v116 = &v92 - v31;
  v32 = swift_allocBox();
  v105 = v32;
  v34 = v33;
  sub_21CB85084();
  v35 = v124;
  swift_getKeyPath();
  *&v124 = v35;
  v101 = sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v36 = *(v35 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  type metadata accessor for PMAppAccountsSearchListModel(0);
  sub_21C72A284(&qword_27CDF10B8, type metadata accessor for PMAppAccountsSearchListModel);
  sub_21CB850A4();
  (*(v16 + 16))(v20, v34, v15);
  sub_21CB85094();
  v37 = *(v16 + 8);
  v37(v20, v15);
  swift_getKeyPath();
  sub_21CB850B4();

  v37(v22, v15);
  v135 = v124;
  v136 = v125;
  v121 = v32;
  v122 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10C0, &qword_21CBB07C0);
  sub_21C6EADEC(&qword_27CDF10C8, &qword_27CDF10C0, &qword_21CBB07C0);
  sub_21CB83F24();
  v38 = v98;
  sub_21CB826B4();
  v39 = sub_21C6EADEC(&qword_27CDF0E70, &qword_27CDF0E68, &qword_21CBB0388);
  v40 = MEMORY[0x277CDD980];
  v41 = v93;
  v42 = v94;
  v43 = v99;
  sub_21CB849F4();
  (*(v100 + 1))(v38, v43);
  (*(v95 + 8))(v25, v42);
  *&v124 = v42;
  *(&v124 + 1) = v43;
  *&v125 = v39;
  *(&v125 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  v44 = v116;
  v45 = v96;
  sub_21CB845F4();
  (*(v97 + 8))(v41, v45);
  v46 = v117;
  v47 = v115;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v48 = *(v118 + 8);
  *&v118 = v118 + 8;
  v100 = v48;
  v48(v46, v47);
  v49 = v135;
  v50 = v136;
  swift_getKeyPath();
  v133 = v49;
  v134 = v50;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DF8, &qword_21CBB02F8);
  sub_21CB84F44();

  v51 = v130;
  v52 = v131;
  v53 = v132;

  v120 = 0;
  swift_getKeyPath();
  v127 = v51;
  v128 = v52;
  v129 = v53;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v97 = v124;
  v96 = v125;
  v95 = v126;

  sub_21CB85084();
  v54 = v123;
  swift_getKeyPath();
  v123 = v54;
  sub_21CB810D4();

  v101 = *(v54 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  v55 = v44 + *(v102 + 44);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDCD8, &unk_21CBB0390);
  v57 = v56[9];
  v58 = type metadata accessor for PMAccount(0);
  v59 = *(*(v58 - 8) + 56);
  v60 = v103;
  v59(v103, 1, 1, v58);
  sub_21C6EDBAC(v60, v104, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB84D44();
  sub_21C6EA794(v60, &unk_27CDEBE60, &unk_21CB9FF40);
  v61 = v56[10];
  v62 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v63 = v107;
  (*(*(v62 - 8) + 56))(v107, 1, 1, v62);
  v59((v63 + *(v108 + 20)), 1, 1, v58);
  sub_21C733540(v63, v109, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21CB84D44();
  sub_21C9173A0(v63, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v64 = v56[13];
  v65 = (v55 + v56[12]);
  *(v55 + v64) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v66 = v55 + v56[14];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  v67 = v96;
  *v55 = v97;
  *(v55 + 16) = v67;
  *(v55 + 32) = v95;
  v68 = (v55 + v56[11]);
  v69 = v101;
  *v68 = sub_21C87D2B4;
  v68[1] = v69;
  *v65 = 0;
  v65[1] = 0;
  v70 = v117;
  v71 = v115;
  v72 = v114;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  v100(v70, v71);
  v73 = v135;
  v74 = v136;
  swift_getKeyPath();
  v133 = v73;
  v134 = v74;
  sub_21CB84F44();

  v75 = v130;
  v76 = v131;
  v77 = v132;

  v119 = 0;
  swift_getKeyPath();
  v127 = v75;
  v128 = v76;
  v129 = v77;
  sub_21CB84F44();

  v118 = v124;
  v117 = v125;
  v78 = v126;

  v79 = v110;
  sub_21C733540(v72, v110, type metadata accessor for PMAppSourceList);
  v80 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v81 = swift_allocObject();
  sub_21C72EBD4(v79, v81 + v80, type metadata accessor for PMAppSourceList);
  v82 = v116;
  v83 = v113;
  sub_21C6EDBAC(v116, v113, &qword_27CDF0E58, &qword_21CBB0378);
  v84 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E48, &qword_21CBB0370) + 36);
  v85 = v117;
  *v84 = v118;
  *(v84 + 16) = v85;
  *(v84 + 32) = v78;
  *(v84 + 40) = &unk_21CBB08B0;
  *(v84 + 48) = v81;
  sub_21C6EA794(v82, &qword_27CDF0E58, &qword_21CBB0378);
  v86 = sub_21CB85214();
  v88 = v87;
  v89 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E38, &qword_21CBB0368) + 36);
  sub_21C910EBC(v89);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990);
  v91 = (v89 + *(result + 36));
  *v91 = v86;
  v91[1] = v88;
  return result;
}

uint64_t sub_21C90C988@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_21C90CA64@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1070, &qword_21CBB0750);
  v2 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v98 = &v77 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1078, &qword_21CBB0758);
  v95 = *(v97 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v86 = &v77 - v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F48, &qword_21CBB05A8);
  v85 = *(v96 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v96);
  v84 = &v77 - v7;
  v8 = sub_21CB83834();
  v9 = *(v8 - 8);
  v88 = v8;
  v89 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v77 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v87 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v77 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1080, &qword_21CBB0760);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v91 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v94 = &v77 - v30;
  v82 = sub_21CB83604();
  v81 = *(v82 - 8);
  v31 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v33 = &v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1088, &qword_21CBB0768);
  v92 = *(v34 - 8);
  v93 = v34;
  v35 = *(v92 + 64);
  MEMORY[0x28223BE20](v34);
  v37 = &v77 - v36;
  sub_21CB835F4();
  v101 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1090, &qword_21CBB0770);
  v38 = v25;
  v39 = v88;
  sub_21C6EADEC(&qword_27CDF1098, &qword_27CDF1090, &qword_21CBB0770);
  v90 = v37;
  v80 = v33;
  sub_21CB82AA4();
  v40 = *(type metadata accessor for PMAppSourceList() + 40);
  v83 = v1;
  sub_21C728D50(v38);
  v41 = v89;
  (*(v89 + 104))(v23, *MEMORY[0x277CE0558], v39);
  (*(v41 + 56))(v23, 0, 1, v39);
  v42 = *(v13 + 56);
  sub_21C6EDBAC(v38, v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v23, &v16[v42], &qword_27CDEC390, &qword_21CBA40E0);
  v43 = *(v41 + 48);
  if (v43(v16, 1, v39) == 1)
  {
    sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v38, &qword_27CDEC390, &qword_21CBA40E0);
    if (v43(&v16[v42], 1, v39) == 1)
    {
      sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
      v44 = v94;
LABEL_9:
      v58 = v80;
      sub_21CB835F4();
      v59 = v84;
      sub_21C90ECB0(v58, v84);
      (*(v81 + 8))(v58, v82);
      v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1008, &qword_21CBB0628);
      v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1000, &qword_21CBB0620);
      v62 = sub_21C6EADEC(&qword_27CDF1020, &qword_27CDF1000, &qword_21CBB0620);
      v102 = v61;
      v103 = MEMORY[0x277D837D0];
      v104 = v62;
      v105 = MEMORY[0x277D837E0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v102 = v60;
      v103 = OpaqueTypeConformance2;
      v64 = swift_getOpaqueTypeConformance2();
      v65 = v86;
      v66 = v96;
      MEMORY[0x21CF131E0](v59, v96, v64);
      v67 = v95;
      v68 = v91;
      v69 = v97;
      (*(v95 + 16))(v91, v65, v97);
      (*(v67 + 56))(v68, 0, 1, v69);
      v102 = v66;
      v103 = v64;
      v70 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13220](v68, v69, v70);
      sub_21C6EA794(v68, &qword_27CDF1080, &qword_21CBB0760);
      (*(v67 + 8))(v65, v69);
      (*(v85 + 8))(v59, v66);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v78 = v38;
  v45 = v87;
  sub_21C6EDBAC(v16, v87, &qword_27CDEC390, &qword_21CBA40E0);
  if (v43(&v16[v42], 1, v39) == 1)
  {
    sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v78, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v41 + 8))(v45, v39);
LABEL_6:
    sub_21C6EA794(v16, &qword_27CDEE530, &unk_21CBA9D80);
    v44 = v94;
    goto LABEL_7;
  }

  v54 = &v16[v42];
  v55 = v79;
  (*(v41 + 32))(v79, v54, v39);
  sub_21C72A284(&qword_27CDEE538, MEMORY[0x277CE0570]);
  v56 = sub_21CB85574();
  v57 = *(v41 + 8);
  v57(v55, v39);
  sub_21C6EA794(v23, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v78, &qword_27CDEC390, &qword_21CBA40E0);
  v57(v45, v39);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  v44 = v94;
  if (v56)
  {
    goto LABEL_9;
  }

LABEL_7:
  v46 = v91;
  v47 = v97;
  (*(v95 + 56))(v91, 1, 1, v97);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1008, &qword_21CBB0628);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1000, &qword_21CBB0620);
  v50 = sub_21C6EADEC(&qword_27CDF1020, &qword_27CDF1000, &qword_21CBB0620);
  v102 = v49;
  v103 = MEMORY[0x277D837D0];
  v104 = v50;
  v105 = MEMORY[0x277D837E0];
  v51 = swift_getOpaqueTypeConformance2();
  v102 = v48;
  v103 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v102 = v96;
  v103 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF13220](v46, v47, v53);
  sub_21C6EA794(v46, &qword_27CDF1080, &qword_21CBB0760);
LABEL_10:
  v71 = v98;
  v72 = *(v99 + 48);
  v74 = v92;
  v73 = v93;
  v75 = v90;
  (*(v92 + 16))(v98, v90, v93);
  sub_21C6EDBAC(v44, &v71[v72], &qword_27CDF1080, &qword_21CBB0760);
  sub_21CB83394();
  sub_21C6EA794(v44, &qword_27CDF1080, &qword_21CBB0760);
  return (*(v74 + 8))(v75, v73);
}

uint64_t sub_21C90D650(uint64_t a1)
{
  v2 = sub_21CB83994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMDebugSettingsView();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v13[0] = 0x6974704F65726F6DLL;
  v13[1] = 0xEB00000000736E6FLL;
  v11 = *(a1 + *(type metadata accessor for PMAppSourceList() + 52));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C72A284(&qword_27CDF0EF0, type metadata accessor for PMDebugSettingsView);
  sub_21CB84524();
  (*(v3 + 8))(v6, v2);
  return sub_21C9173A0(v10, type metadata accessor for PMDebugSettingsView);
}

uint64_t sub_21C90D86C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v62 = a3;
  v4 = sub_21CB83994();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  v7 = *(*(v59 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v59);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v56 - v10;
  v11 = sub_21CB82644();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = type metadata accessor for PMNewGroupFlow(0);
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = type metadata accessor for PMAccount(0);
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = &v22[v19[6]];
  *(v25 + 3) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v25 + 4) = &off_282E572E8;
  *&v22[v19[5]] = v23;
  v56 = v19[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  v26 = *(type metadata accessor for PMNewGroupFlow.Step(0) - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v66 = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310);
  sub_21C72A284(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step);
  sub_21CB82654();
  (*(v12 + 16))(v16, v18, v11);
  sub_21CB84D44();
  (*(v12 + 8))(v18, v11);
  v30 = &v22[v19[8]];
  v65 = 0;
  sub_21CB84D44();
  v31 = v67;
  *v30 = v66;
  *(v30 + 1) = v31;
  v32 = v19[9];
  v33 = type metadata accessor for MoveAccountFailureAlertData(0);
  v34 = v57;
  (*(*(v33 - 8) + 56))(v57, 1, 1, v33);
  sub_21C6EDBAC(v34, v58, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v34, &qword_27CDECBD8, &unk_21CBA5300);
  v35 = v19[10];
  *&v22[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v36 = v19[11];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v38 = &v22[v36];
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v66);

  type metadata accessor for PMAccountsState();
  sub_21C72A284(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v39 = sub_21CB82674();
  v41 = v40;

  *v38 = v39;
  v38[1] = v41;
  v42 = &v22[v19[12]];
  type metadata accessor for PMPasswordManagerState();
  sub_21C72A284(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *v42 = sub_21CB82B84();
  v42[1] = v43;
  v44 = &v22[v19[13]];
  v45 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v45, v66);

  type metadata accessor for PMGroupsStore();
  sub_21C72A284(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v46 = sub_21CB82674();
  v48 = v47;

  *v44 = v46;
  v44[1] = v48;
  v49 = &v22[v19[14]];
  *v49 = swift_getKeyPath();
  v49[8] = 0;
  v50 = v19[15];
  *&v22[v50] = swift_getKeyPath();
  v51 = v19[16];
  *&v22[v51] = swift_getKeyPath();
  v66 = 0x70756F724777656ELL;
  v67 = 0xE800000000000000;
  v52 = *(v60 + *(type metadata accessor for PMAppSourceList() + 52));
  sub_21CB852C4();
  v53 = v61;
  sub_21CB834F4();
  sub_21C72A284(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow);
  v54 = v64;
  sub_21CB84524();
  (*(v63 + 8))(v53, v54);
  return sub_21C9173A0(v22, type metadata accessor for PMNewGroupFlow);
}

uint64_t sub_21C90E0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_21CB83994();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMGeneratedPasswordsLogView();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v29 = a1;
  sub_21CB85084();
  v11 = v34;
  swift_getKeyPath();
  *&v34 = v11;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v12 = *(v11 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  swift_getKeyPath();
  *&v34 = v12;
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v13 = *(v12 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  v28 = *(v12 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);

  swift_unknownObjectWeakInit();
  v14 = v7[5];
  *&v10[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v15 = v7[6];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v17 = &v10[v15];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v34);

  type metadata accessor for PMGeneratedPasswordStore();
  sub_21C72A284(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore);
  v18 = sub_21CB82674();
  v20 = v19;

  *v17 = v18;
  v17[1] = v20;
  v21 = &v10[v7[8]];
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_21CB84D44();
  v22 = &v10[v7[9]];
  v32 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v23 = *(&v34 + 1);
  *v22 = v34;
  *(v22 + 1) = v23;
  v24 = v7[10];
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v10[v24] = v34;
  swift_unknownObjectWeakAssign();

  v10[v7[7]] = 1;
  *v21 = v28;
  *(v21 + 1) = v13;
  *(v21 + 2) = 0;
  *&v34 = 0xD000000000000012;
  *(&v34 + 1) = 0x800000021CB8F740;
  v25 = *(v29 + *(type metadata accessor for PMAppSourceList() + 52));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C72A284(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView);
  v26 = v31;
  sub_21CB84524();
  (*(v3 + 8))(v6, v26);
  return sub_21C9173A0(v10, type metadata accessor for PMGeneratedPasswordsLogView);
}

uint64_t sub_21C90E5D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810C4();
}

uint64_t sub_21C90E69C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_21CB83994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMExportAccountSelectionView();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  type metadata accessor for PMAppAccountsListModel(0);
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);

  sub_21CB850A4();
  v14 = v9[5];
  *&v12[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v15 = &v12[v9[6]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v9[7];
  *&v12[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v19[0] = 0x6974704F65726F6DLL;
  v19[1] = 0xEB00000000736E6FLL;
  v17 = *(a2 + *(type metadata accessor for PMAppSourceList() + 52));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C72A284(&qword_27CDF0F10, type metadata accessor for PMExportAccountSelectionView);
  sub_21CB84524();
  (*(v5 + 8))(v8, v4);
  return sub_21C9173A0(v12, type metadata accessor for PMExportAccountSelectionView);
}

uint64_t sub_21C90E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F88, &qword_21CBB05F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = sub_21C73365C();
  if ((v14 & 1) != 0 || (v14 = type metadata accessor for PMAppSourceList(), *(a1 + *(v14 + 56)) == 1))
  {
    v19 = &v19;
    MEMORY[0x28223BE20](v14);
    v20 = a2;
    *(&v19 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1058, &qword_21CBB06A0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDF1060, &qword_27CDF1058, &qword_21CBB06A0);
    a2 = v20;
    sub_21CB83F54();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FA0, &qword_21CBB05F8);
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FA0, &qword_21CBB05F8);
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  sub_21C716934(v11, v13, &qword_27CDF0F88, &qword_21CBB05F0);
  sub_21C6EDBAC(v13, v8, &qword_27CDF0F88, &qword_21CBB05F0);
  sub_21C6EDBAC(v8, a2, &qword_27CDF0F88, &qword_21CBB05F0);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10A0, &qword_21CBB0778) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_21C6EA794(v13, &qword_27CDF0F88, &qword_21CBB05F0);
  return sub_21C6EA794(v8, &qword_27CDF0F88, &qword_21CBB05F0);
}

uint64_t sub_21C90ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_21CB82F84();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB83604();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1000, &qword_21CBB0620);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1008, &qword_21CBB0628);
  v36 = *(v18 - 8);
  v37 = v18;
  v19 = *(v36 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - v20;
  (*(v9 + 16))(v12, a1, v8);
  v39 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1010, &unk_21CBB0630);
  sub_21C916690();
  sub_21CB82194();
  v40 = 0x756F636341646461;
  v41 = 0xEA0000000000746ELL;
  v22 = (v2 + *(type metadata accessor for PMAppSourceList() + 48));
  v23 = *v22;
  v24 = *(v22 + 8);

  if ((v24 & 1) == 0)
  {
    sub_21CB85B04();
    v25 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v34 + 8))(v7, v35);
    v23 = v44;
  }

  v26 = *(v23 + 16);

  v27 = sub_21C6EADEC(&qword_27CDF1020, &qword_27CDF1000, &qword_21CBB0620);
  v28 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D837E0];
  sub_21CB82774();
  (*(v14 + 8))(v17, v13);
  v40 = v13;
  v41 = v28;
  v42 = v27;
  v43 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v37;
  MEMORY[0x21CF131E0](v21, v37, OpaqueTypeConformance2);
  return (*(v36 + 8))(v21, v31);
}

uint64_t sub_21C90F0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C73365C();
  if ((v4 & 1) != 0 || (v4 = type metadata accessor for PMAppSourceList(), *(a1 + *(v4 + 56)) == 1))
  {
    MEMORY[0x28223BE20](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1058, &qword_21CBB06A0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDF1060, &qword_27CDF1058, &qword_21CBB06A0);
    sub_21CB83F54();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FA0, &qword_21CBB05F8);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FA0, &qword_21CBB05F8);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_21C90F320@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB831C4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  sub_21CB831B4();
  v18 = 1;
  v10 = v3[2];
  v10(v7, v9, v2);
  v17[0] = 1;
  v11 = v18;
  *a1 = 0;
  *(a1 + 8) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1028, &qword_21CBB0640);
  v10((a1 + *(v12 + 48)), v7, v2);
  v13 = a1 + *(v12 + 64);
  v14 = v17[0];
  *v13 = 0;
  *(v13 + 8) = v14;
  v15 = v3[1];
  v15(v9, v2);
  return (v15)(v7, v2);
}

uint64_t sub_21C90F4AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  if (*(v2 + 18) == 1)
  {
    *(v2 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90F5F0()
{
  sub_21CB83134();

  return sub_21CB84CA4();
}

uint64_t sub_21C90F658(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSourceList();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = v4;
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v9 = v28;
  v10 = sub_21CB85C44();
  (*(*(v10 - 8) + 56))(v8, 4, 4, v10);
  v11 = type metadata accessor for PMAppAccountsListModel(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_21C70FDD0(v8);
  swift_getKeyPath();
  v26 = v9;
  v27 = v14;
  v28 = v9;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810C4();

  sub_21CB85084();
  v15 = v28;
  swift_getKeyPath();
  v28 = v15;
  sub_21CB810D4();

  v16 = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel);

  if (v16)
  {
    v18 = v25;
    sub_21C733540(a1, v25, type metadata accessor for PMAppSourceList);
    v19 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v20 = swift_allocObject();
    sub_21C72EBD4(v18, v20 + v19, type metadata accessor for PMAppSourceList);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v22 - 4) = v16;
    *(&v22 - 3) = sub_21C9169F0;
    *(&v22 - 2) = v20;
    v28 = v16;
    sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C90FA48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__showExportError) == 1)
  {
    *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__showExportError) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90FB94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__selectedAccountIDs);

  v6 = sub_21C713194(v5);
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_21C90FC60(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  if (v2)
  {
    v4 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = v4;
    *(inited + 40) = v2;

    v6 = sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  return sub_21C880484(v7);
}

uint64_t sub_21C90FD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v93 = a1;
  v101 = a3;
  v83 = type metadata accessor for PMAppSourceList();
  v79 = *(v83 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = v4;
  v81 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow();
  v5 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v84 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED88, &qword_21CBAAFC0);
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED90, &qword_21CBAAFC8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v100 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v96 = &v78 - v14;
  v94 = sub_21CB81024();
  v92 = *(v94 - 8);
  v15 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10B0, &qword_21CBB0790);
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = &v78 - v21;
  v23 = type metadata accessor for PMAppAccountsCollectionView();
  v24 = *(v23 - 8);
  v95 = (v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8);
  v97 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = (&v78 - v28);
  v104 = swift_projectBox();
  v102 = v19[2];
  v102(v22, v104, v18);
  sub_21CB85084();
  v30 = v19[1];
  v30(v22, v18);
  v31 = v105;
  swift_getKeyPath();
  v105 = v31;
  v103 = sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v91 = *(v31 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v32 = v104;
  v33 = v102;
  v102(v22, v104, v18);
  sub_21CB85084();
  v89 = v30;
  v30(v22, v18);
  v90 = sub_21C882110();

  sub_21CB81014();
  v34 = sub_21CB81004();
  v87 = v35;
  v88 = v34;
  (*(v92 + 8))(v17, v94);
  v33(v22, v32, v18);
  sub_21CB85084();
  v30(v22, v18);
  v36 = v105;
  swift_getKeyPath();
  v105 = v36;
  sub_21CB810D4();

  v38 = *(v36 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v37 = *(v36 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v39 = v90;
  *v29 = v91;
  v29[1] = v39;
  v40 = v87;
  v29[2] = v88;
  v29[3] = v40;
  v29[4] = v38;
  v29[5] = v37;
  v41 = v33;
  v42 = v104;
  v43 = v93;
  v29[6] = sub_21C916B48;
  v29[7] = v43;
  v44 = *(v95 + 11);
  *(v29 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  v95 = v29;
  v45 = v89;
  swift_storeEnumTagMultiPayload();
  v94 = (v19 + 2);
  v41(v22, v42, v18);

  sub_21CB85084();
  v45(v22, v18);
  v46 = v105;
  swift_getKeyPath();
  v105 = v46;
  sub_21CB810D4();

  v47 = *(v46 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v48 = *(v46 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v102(v22, v42, v18);
    sub_21CB85084();
    v45(v22, v18);
    v50 = v105;
    swift_getKeyPath();
    v105 = v50;
    sub_21CB810D4();

    v51 = *(v50 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
    v52 = *(v50 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

    v53 = v86;
    v54 = v81;
    sub_21C733540(v86, v81, type metadata accessor for PMAppSourceList);
    v55 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v56 = swift_allocObject();
    sub_21C72EBD4(v54, v56 + v55, type metadata accessor for PMAppSourceList);
    KeyPath = swift_getKeyPath();
    v58 = v84;
    *(v84 + 2) = KeyPath;
    *(v58 + 24) = 0;
    v59 = v85;
    v60 = *(v85 + 24);
    *(v58 + v60) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v61 = (v58 + *(v59 + 28));
    *v61 = v51;
    v61[1] = v52;
    type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
    swift_allocObject();

    sub_21C7D56B0(v51, v52);
    sub_21C72A284(&qword_27CDEDC18, type metadata accessor for PMGeneratedPasswordsSearchResultsModel);
    *v58 = sub_21CB82674();
    *(v58 + 8) = v62;
    v63 = (v58 + *(v59 + 32));
    *v63 = sub_21C916B50;
    v63[1] = v56;
    v105 = 0xD000000000000012;
    v106 = 0x800000021CB8F740;
    v64 = *(v53 + *(v83 + 52));
    sub_21CB852C4();
    sub_21C72A284(&qword_27CDEDB30, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
    v65 = v82;
    sub_21CB845E4();
    sub_21C9173A0(v58, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
    v67 = v98;
    v66 = v99;
    v68 = v96;
    (*(v98 + 32))(v96, v65, v99);
    v69 = 0;
    v70 = v66;
    v71 = v67;
  }

  else
  {
    v69 = 1;
    v71 = v98;
    v70 = v99;
    v68 = v96;
  }

  (*(v71 + 56))(v68, v69, 1, v70);
  v72 = v95;
  v73 = v97;
  sub_21C733540(v95, v97, type metadata accessor for PMAppAccountsCollectionView);
  v74 = v100;
  sub_21C6EDBAC(v68, v100, &qword_27CDEED90, &qword_21CBAAFC8);
  v75 = v101;
  sub_21C733540(v73, v101, type metadata accessor for PMAppAccountsCollectionView);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10D0, &qword_21CBB0948);
  sub_21C6EDBAC(v74, v75 + *(v76 + 48), &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C6EA794(v68, &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C9173A0(v72, type metadata accessor for PMAppAccountsCollectionView);
  sub_21C6EA794(v74, &qword_27CDEED90, &qword_21CBAAFC8);
  return sub_21C9173A0(v73, type metadata accessor for PMAppAccountsCollectionView);
}

uint64_t sub_21C910818(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10B0, &qword_21CBB0790);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = swift_projectBox();
  (*(v3 + 16))(v6, v7, v2);
  sub_21CB85084();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v8 = *(type metadata accessor for PMAccount(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21CBA0690;
  sub_21C733540(a1, v11 + v10, type metadata accessor for PMAccount);
  sub_21C884B98(v11, 0);
}

uint64_t sub_21C9109F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  *(v1 + 16) = (*(v1 + 16) & 1) == 0;
  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C910B2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__deleteAccountsAlertConfiguration;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C910BF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21CB858B4();
  v2[5] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C910C8C, v4, v3);
}

uint64_t sub_21C910C8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v4 = v0[2];
  swift_getKeyPath();
  v0[2] = v4;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v5 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  sub_21CB85254();
  sub_21CB82524();

  sub_21CB85084();
  v7 = v0[2];
  swift_getKeyPath();
  v0[2] = v7;
  sub_21CB810D4();

  v8 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  sub_21CB85254();
  sub_21CB82524();

  v9 = v0[1];

  return v9();
}

uint64_t sub_21C910EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v12 = *(v2 - 8);
  v3 = *(v12 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  if (sub_21C911158())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
    sub_21CB85084();
    v6 = v13;
    swift_getKeyPath();
    v13 = v6;
    sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810D4();

    v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

    swift_getKeyPath();
    v13 = v7;
    sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
    sub_21CB810D4();

    v8 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
    v9 = *(v7 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

    sub_21CB83784();

    (*(v12 + 32))(a1, v5, v2);
    return (*(v12 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v11 = *(v12 + 56);

    return v11(a1, 1, 1, v2);
  }
}

BOOL sub_21C911158()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  swift_getKeyPath();
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v0 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  swift_getKeyPath();
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v2 = *(v1 + 16);

  return !v2 && sub_21C730A84();
}

uint64_t sub_21C9112DC()
{
  v1 = v0;
  result = [objc_opt_self() isOngoingCredentialSharingEnabled];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
    sub_21CB85084();
    v3 = sub_21C917CF4();

    if ((v3 & 1) == 0)
    {
      v4 = type metadata accessor for PMAppSourceList();
      v5 = *(v1 + *(v4 + 24) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v6 = *(*&v15[0] + 16);

      if (!v6)
      {
        v7 = *(v1 + *(v4 + 32) + 8);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        v15[3] = v12;
        v15[4] = v13;
        v16 = v14;
        v15[0] = v9;
        v15[1] = v10;
        v15[2] = v11;
        if (!*(&v9 + 1))
        {
          return 0;
        }

        v8 = *&v15[0];
        sub_21C6EA794(v15, &unk_27CDED230, &unk_21CBA6460);
        if (v8 != 2)
        {
          return v8 == 3;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_21C911494@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1100, &qword_21CBB0A20);
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v3);
  v72 = v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1108, &qword_21CBB0A28);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1110, &qword_21CBB0A30);
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v69 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1118, &qword_21CBB0A38);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v78 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = v62 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1120, &qword_21CBB0A40);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v62 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1128, &qword_21CBB0A48);
  v75 = *(v29 - 8);
  v76 = v29;
  v30 = *(v75 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v73 = v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = v62 - v33;
  v82 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1130, &qword_21CBB0A50);
  sub_21C916B78();
  sub_21CB85054();
  sub_21C916DA4();
  v74 = v34;
  sub_21CB845D4();
  (*(v25 + 8))(v28, v24);
  if (sub_21C9112DC())
  {
    sub_21CB85094();
    swift_getKeyPath();
    sub_21CB850B4();

    v35 = (*(v7 + 8))(v10, v6);
    v63 = *(&v90 + 1);
    v64 = v90;
    v62[1] = v91;
    v36 = MEMORY[0x28223BE20](v35);
    MEMORY[0x28223BE20](v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B80, &qword_21CBAFAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1198, &qword_21CBB0AB0);
    sub_21C74AA20();
    sub_21C6EADEC(&qword_27CDF11A0, &qword_27CDF1198, &qword_21CBB0AB0);
    v37 = v65;
    v38 = sub_21CB85024();
    MEMORY[0x28223BE20](v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11A8, &qword_21CBB0AB8);
    sub_21C916E4C();
    sub_21C916F10();
    v39 = v67;
    v40 = v68;
    sub_21CB842A4();
    (*(v66 + 8))(v37, v39);
    sub_21C9136F0(v86);
    v42 = v69;
    v41 = v70;
    v43 = *(v70 + 16);
    v44 = v71;
    v43(v69, v40, v71);
    v83 = v86[0];
    v84 = v86[1];
    v85[0] = v87[0];
    *(v85 + 9) = *(v87 + 9);
    v45 = v72;
    v43(v72, v42, v44);
    v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11C0, &qword_21CBB0AC0) + 48));
    v47 = *(v85 + 9);
    *(v89 + 9) = *(v85 + 9);
    v48 = v84;
    v88[0] = v83;
    v88[1] = v84;
    v49 = v85[0];
    v89[0] = v85[0];
    *v46 = v83;
    v46[1] = v48;
    v46[2] = v49;
    *(v46 + 41) = v47;
    sub_21C6EDBAC(v88, &v90, &qword_27CDF11C8, &qword_21CBB0AC8);
    v50 = *(v41 + 8);
    v50(v40, v44);
    v90 = v83;
    v91 = v84;
    v92[0] = v85[0];
    *(v92 + 9) = *(v85 + 9);
    sub_21C6EA794(&v90, &qword_27CDF11C8, &qword_21CBB0AC8);
    v50(v42, v44);
    v51 = v77;
    sub_21C767AB0(v45, v77);
    (*(v79 + 56))(v51, 0, 1, v80);
  }

  else
  {
    v51 = v77;
    (*(v79 + 56))(v77, 1, 1, v80);
  }

  v53 = v74;
  v52 = v75;
  v54 = *(v75 + 16);
  v55 = v73;
  v56 = v76;
  v54(v73, v74, v76);
  v57 = v78;
  sub_21C6EDBAC(v51, v78, &qword_27CDF1118, &qword_21CBB0A38);
  v58 = v81;
  v54(v81, v55, v56);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1190, &qword_21CBB0A78);
  sub_21C6EDBAC(v57, &v58[*(v59 + 48)], &qword_27CDF1118, &qword_21CBB0A38);
  sub_21C6EA794(v51, &qword_27CDF1118, &qword_21CBB0A38);
  v60 = *(v52 + 8);
  v60(v53, v56);
  sub_21C6EA794(v57, &qword_27CDF1118, &qword_21CBB0A38);
  return (v60)(v55, v56);
}

uint64_t sub_21C911DB0@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  sub_21C731450(v5, a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1158, &qword_21CBB0A60) + 36)) = 256;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1148, &qword_21CBB0A58) + 36);
  v2[32] = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = sub_21CB84F14();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1130, &qword_21CBB0A50);
  *(a1 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_21C911EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = type metadata accessor for PMAppSourceList();
  v56 = *(v54 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11D8, &qword_21CBB0B28);
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v59 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = v47 - v8;
  v9 = type metadata accessor for PMAppSourceListModel.Source(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v51 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA568, &qword_21CBB0B30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11E0, &qword_21CBB0B38);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v49 = v47 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11E8, &qword_21CBB0B40);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v57 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v47 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v25 = sub_21C917CF4();

  v26 = 1;
  if (v25)
  {
    v27 = sub_21CB85184();
    v47[1] = v47;
    MEMORY[0x28223BE20](v27);
    v47[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1238, &qword_21CBB0BC0);
    sub_21C91733C();
    v48 = v15;
    sub_21C6EADEC(&qword_27CDF1248, &qword_27CDF1238, &qword_21CBB0BC0);
    v28 = v50;
    sub_21CB85194();
    v29 = v51;
    swift_storeEnumTagMultiPayload();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA558, &qword_21CB9E668);
    v31 = v49;
    v32 = &v49[*(v30 + 36)];
    sub_21C72EBD4(v29, v32, type metadata accessor for PMAppSourceListModel.Source);
    *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA560, &unk_21CB9E670) + 36)) = 1;
    v15 = v48;
    sub_21C716934(v28, v31, &qword_27CDEA568, &qword_21CBB0B30);
    (*(v16 + 32))(v24, v31, v15);
    v26 = 0;
  }

  (*(v16 + 56))(v24, v26, 1, v15);
  v33 = a1 + *(v54 + 24);
  v52 = v24;
  v34 = *(v33 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v35 = v53;
  sub_21C733540(a1, v53, type metadata accessor for PMAppSourceList);
  v36 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v37 = swift_allocObject();
  sub_21C72EBD4(v35, v37 + v36, type metadata accessor for PMAppSourceList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CB85C44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11F0, &qword_21CBB0B98);
  sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380);
  sub_21C9170AC();
  sub_21C72A284(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup);
  v38 = v58;
  sub_21CB84FF4();
  v39 = v57;
  sub_21C6EDBAC(v24, v57, &qword_27CDF11E8, &qword_21CBB0B40);
  v41 = v59;
  v40 = v60;
  v42 = *(v60 + 16);
  v42(v59, v38, v4);
  v43 = v55;
  sub_21C6EDBAC(v39, v55, &qword_27CDF11E8, &qword_21CBB0B40);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1230, &qword_21CBB0BB8);
  v42((v43 + *(v44 + 48)), v41, v4);
  v45 = *(v40 + 8);
  v45(v38, v4);
  sub_21C6EA794(v52, &qword_27CDF11E8, &qword_21CBB0B40);
  v45(v41, v4);
  return sub_21C6EA794(v39, &qword_27CDF11E8, &qword_21CBB0B40);
}

uint64_t sub_21C912674@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v7);

  type metadata accessor for PMGroupsStore();
  sub_21C72A284(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v3 = sub_21CB82674();
  v5 = v4;

  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21C912788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21CB83074();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1250, &qword_21CBB0BC8);
  return sub_21C914244(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_21C9127E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v59 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1280, &qword_21CBB0BF8);
  v4 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v58 = v50 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA578, &qword_21CBB0BA0);
  v6 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v52 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1288, &unk_21CBB0C00);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = v50 - v10;
  v11 = type metadata accessor for PMAppSourceListModel.Source(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v50[0] = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v50 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v50 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v50[1] = a2;
  sub_21CB85084();
  v29 = v61;
  swift_getKeyPath();
  v61 = v29;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v30 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C6EDBAC(v29 + v30, v28, &qword_27CDEAC20, &qword_21CBAD710);

  swift_storeEnumTagMultiPayload();
  (*(v12 + 56))(v26, 0, 1, v11);
  v31 = *(v16 + 56);
  v32 = v11;
  sub_21C6EDBAC(v28, v19, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v26, &v19[v31], &qword_27CDEAC20, &qword_21CBAD710);
  v33 = *(v12 + 48);
  if (v33(v19, 1, v32) != 1)
  {
    v34 = v50[0];
    sub_21C6EDBAC(v19, v50[0], &qword_27CDEAC20, &qword_21CBAD710);
    if (v33(&v19[v31], 1, v32) != 1)
    {
      v35 = v60;
      sub_21C72EBD4(&v19[v31], v60, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C918FE4(v34, v35);
      sub_21C9173A0(v35, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v26, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C6EA794(v28, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C9173A0(v34, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
      goto LABEL_8;
    }

    sub_21C6EA794(v26, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EA794(v28, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C9173A0(v34, type metadata accessor for PMAppSourceListModel.Source);
    goto LABEL_6;
  }

  sub_21C6EA794(v26, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v28, &qword_27CDEAC20, &qword_21CBAD710);
  if (v33(&v19[v31], 1, v32) != 1)
  {
LABEL_6:
    sub_21C6EA794(v19, &unk_27CDED310, &unk_21CBA0150);
    goto LABEL_8;
  }

  sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_8:
  v36 = sub_21CB85184();
  v37 = MEMORY[0x28223BE20](v36);
  v38 = v51;
  MEMORY[0x28223BE20](v37);
  type metadata accessor for PMGroupRow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1228, &qword_21CBB0BB0);
  sub_21C72A284(&qword_27CDF1218, type metadata accessor for PMGroupRow);
  sub_21C6EADEC(&qword_27CDF1220, &qword_27CDF1228, &qword_21CBB0BB0);
  v39 = v52;
  sub_21CB85194();
  v40 = sub_21CB85C44();
  v41 = v60;
  (*(*(v40 - 8) + 16))(v60, v38, v40);
  swift_storeEnumTagMultiPayload();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA570, &unk_21CB9E680);
  v43 = v55;
  v44 = &v55[*(v42 + 36)];
  sub_21C72EBD4(v41, v44, type metadata accessor for PMAppSourceListModel.Source);
  *(v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA560, &unk_21CB9E670) + 36)) = 1;
  sub_21C716934(v39, v43, &qword_27CDEA578, &qword_21CBB0BA0);
  v46 = v56;
  v45 = v57;
  (*(v56 + 16))(v58, v43, v57);
  swift_storeEnumTagMultiPayload();
  v47 = sub_21C9171BC();
  v48 = sub_21C72A284(&qword_27CDF10F0, type metadata accessor for PMAppSourceListModel.Source);
  v61 = v54;
  v62 = v32;
  v63 = v47;
  v64 = v48;
  swift_getOpaqueTypeConformance2();
  sub_21CB83494();
  return (*(v46 + 8))(v43, v45);
}

uint64_t sub_21C913310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82F84();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v13 = sub_21CB81004();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v35 = v13;
  v36 = v15;
  sub_21C71F3FC();
  v16 = sub_21CB84054();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_21CB83D14();
  v24 = a1 + *(type metadata accessor for PMAppSourceList() + 36);
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    sub_21CB85B04();
    v33 = v4;
    v26 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v25, 0);
    (*(v34 + 8))(v7, v33);
  }

  result = sub_21CB81F24();
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v28;
  *(a2 + 48) = v29;
  *(a2 + 56) = v30;
  *(a2 + 64) = v31;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_21C9135C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11D0, &qword_21CBB0B20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_21CB85184();
  sub_21CB831D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FB0, &qword_21CBB0600);
  swift_getOpaqueTypeConformance2();
  sub_21C91651C();
  return sub_21CB851A4();
}

uint64_t sub_21C9136F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PMAppSourceList() + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v32 = v21;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v30 = v19;
  v31 = v20;
  v4 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
    goto LABEL_6;
  }

  v27 = v33;
  v28 = v34;
  v5 = v30;
  v29 = v35;
  v25 = v31;
  v26 = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v19 = v13;
  v20 = v14;
  if (!*(&v13 + 1) || (v6 = v19, sub_21C6EA794(&v19, &unk_27CDED230, &unk_21CBA6460), (v6 & 0xFFFFFFFFFFFFFFFELL) != 2))
  {
    sub_21C6EA794(&v30, &unk_27CDED230, &unk_21CBA6460);
LABEL_6:
    v12 = 0;
    v7 = 0;
    result = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v8 = v28;
  *(v7 + 64) = v27;
  *(v7 + 80) = v8;
  *(v7 + 96) = v29;
  v9 = v26;
  *(v7 + 32) = v25;
  *(v7 + 48) = v9;
  result = swift_getKeyPath();
  v11 = 256;
  v12 = sub_21C916FD8;
LABEL_7:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v7;
  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_21C913918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C733540(a1, a2, type metadata accessor for PMSharingGroup);
  v3 = type metadata accessor for PMGroupRow();
  v4 = v3[5];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a2 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v13);

  type metadata accessor for PMAccountsState();
  sub_21C72A284(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = a2 + v3[6];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a2 + v3[7];
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_21C913A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_21CB83074();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1290, &qword_21CBB0C10);
  return sub_21C913AF0(a2, a1, a3 + *(v6 + 44));
}

uint64_t sub_21C913AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v87 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1258, &qword_21CBB0BD0);
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v78 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1260, &qword_21CBB0BD8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v78 - v11;
  v12 = sub_21CB82F84();
  v80 = *(v12 - 8);
  v81 = v12;
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMGroupRow();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1298, &qword_21CBB0C18);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v82 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v78 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v78 - v27;
  sub_21C733540(a1, v19, type metadata accessor for PMSharingGroup);
  v29 = &v19[v16[5]];
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v89);

  type metadata accessor for PMAccountsState();
  sub_21C72A284(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v31 = sub_21CB82674();
  v33 = v32;

  *v29 = v31;
  v29[1] = v33;
  v34 = &v19[v16[6]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = &v19[v16[7]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = sub_21CB83D14();
  v37 = v79 + *(type metadata accessor for PMAppSourceList() + 36);
  v38 = *v37;
  v39 = *(v37 + 8);
  if (v39 == 1)
  {
    v40 = *v37;
  }

  else
  {
    v41 = *v37;

    sub_21CB85B04();
    v42 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v38, 0);
    (*(v80 + 8))(v15, v81);
  }

  sub_21CB81F24();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_21C72EBD4(v19, v26, type metadata accessor for PMGroupRow);
  v51 = &v26[*(v20 + 36)];
  *v51 = v36;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_21C716934(v26, v28, &qword_27CDF1298, &qword_21CBB0C18);
  v52 = v85;
  if (!v39)
  {

    sub_21CB85B04();
    v55 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v38, 0);
    (*(v80 + 8))(v15, v81);
    if (v88)
    {
      goto LABEL_8;
    }

LABEL_10:
    v56 = v78;
    sub_21CB83614();
    v57 = sub_21CB83D34();
    sub_21CB81F24();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1268, &qword_21CBB0BE0) + 36);
    *v66 = v57;
    *(v66 + 8) = v59;
    *(v66 + 16) = v61;
    *(v66 + 24) = v63;
    *(v66 + 32) = v65;
    *(v66 + 40) = 0;
    v67 = sub_21CB83D14();
    sub_21CB81F24();
    v54 = v84;
    v68 = v56 + *(v84 + 36);
    *v68 = v67;
    *(v68 + 8) = v69;
    *(v68 + 16) = v70;
    *(v68 + 24) = v71;
    *(v68 + 32) = v72;
    *(v68 + 40) = 0;
    sub_21C716934(v56, v52, &qword_27CDF1258, &qword_21CBB0BD0);
    v53 = 0;
    goto LABEL_11;
  }

  if ((v38 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v53 = 1;
  v54 = v84;
LABEL_11:
  (*(v83 + 56))(v52, v53, 1, v54);
  v73 = v82;
  sub_21C6EDBAC(v28, v82, &qword_27CDF1298, &qword_21CBB0C18);
  v74 = v86;
  sub_21C6EDBAC(v52, v86, &qword_27CDF1260, &qword_21CBB0BD8);
  v75 = v87;
  sub_21C6EDBAC(v73, v87, &qword_27CDF1298, &qword_21CBB0C18);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF12A0, &unk_21CBB0C20);
  sub_21C6EDBAC(v74, v75 + *(v76 + 48), &qword_27CDF1260, &qword_21CBB0BD8);
  sub_21C6EA794(v52, &qword_27CDF1260, &qword_21CBB0BD8);
  sub_21C6EA794(v28, &qword_27CDF1298, &qword_21CBB0C18);
  sub_21C6EA794(v74, &qword_27CDF1260, &qword_21CBB0BD8);
  return sub_21C6EA794(v73, &qword_27CDF1298, &qword_21CBB0C18);
}

uint64_t sub_21C914244@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v65 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1258, &qword_21CBB0BD0);
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v64 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1260, &qword_21CBB0BD8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - v10;
  v66 = sub_21CB82F84();
  v12 = *(v66 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v66);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v77[0]);

  type metadata accessor for PMGroupsStore();
  sub_21C72A284(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v70 = sub_21CB82674();
  v69 = v17;

  v67 = swift_getKeyPath();
  v68 = sub_21CB83D14();
  v18 = a1 + *(type metadata accessor for PMAppSourceList() + 36);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v20 == 1)
  {
    v21 = *v18;
  }

  else
  {
    v22 = *v18;

    sub_21CB85B04();
    v23 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v19, 0);
    (*(v12 + 8))(v15, v66);
  }

  sub_21CB81F24();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v90 = 0;
  v87 = 0;
  if (!v20)
  {

    sub_21CB85B04();
    v34 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v19, 0);
    (*(v12 + 8))(v15, v66);
    if (v77[0])
    {
      goto LABEL_8;
    }

LABEL_10:
    v35 = v64;
    sub_21CB83614();
    v36 = sub_21CB83D34();
    sub_21CB81F24();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1268, &qword_21CBB0BE0) + 36);
    *v45 = v36;
    *(v45 + 8) = v38;
    *(v45 + 16) = v40;
    *(v45 + 24) = v42;
    *(v45 + 32) = v44;
    *(v45 + 40) = 0;
    v46 = sub_21CB83D14();
    sub_21CB81F24();
    v33 = v72;
    v47 = v35 + *(v72 + 36);
    *v47 = v46;
    *(v47 + 8) = v48;
    *(v47 + 16) = v49;
    *(v47 + 24) = v50;
    *(v47 + 32) = v51;
    *(v47 + 40) = 0;
    sub_21C716934(v35, v11, &qword_27CDF1258, &qword_21CBB0BD0);
    v32 = 0;
    goto LABEL_11;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v32 = 1;
  v33 = v72;
LABEL_11:
  (*(v71 + 56))(v11, v32, 1, v33);
  sub_21C6EDBAC(v11, v9, &qword_27CDF1260, &qword_21CBB0BD8);
  v52 = v70;
  *&v73 = v70;
  v53 = v69;
  *(&v73 + 1) = v69;
  v54 = v11;
  v55 = v67;
  *&v74 = v67;
  BYTE8(v74) = 0;
  HIDWORD(v74) = *&v89[3];
  *(&v74 + 9) = *v89;
  v56 = v68;
  LOBYTE(v75) = v68;
  *(&v75 + 1) = *v88;
  DWORD1(v75) = *&v88[3];
  *(&v75 + 1) = v25;
  *&v76[0] = v27;
  *(&v76[0] + 1) = v29;
  *&v76[1] = v31;
  BYTE8(v76[1]) = 0;
  v57 = v73;
  v58 = v74;
  v59 = v65;
  *(v65 + 57) = *(v76 + 9);
  v60 = v76[0];
  v59[2] = v75;
  v59[3] = v60;
  *v59 = v57;
  v59[1] = v58;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1270, &qword_21CBB0BE8);
  sub_21C6EDBAC(v9, v59 + *(v61 + 48), &qword_27CDF1260, &qword_21CBB0BD8);
  sub_21C6EDBAC(&v73, v77, &qword_27CDF1278, &qword_21CBB0BF0);
  sub_21C6EA794(v54, &qword_27CDF1260, &qword_21CBB0BD8);
  sub_21C6EA794(v9, &qword_27CDF1260, &qword_21CBB0BD8);
  v77[0] = v52;
  v77[1] = v53;
  v77[2] = v55;
  v78 = 0;
  *v79 = *v89;
  *&v79[3] = *&v89[3];
  v80 = v56;
  *v81 = *v88;
  *&v81[3] = *&v88[3];
  v82 = v25;
  v83 = v27;
  v84 = v29;
  v85 = v31;
  v86 = 0;
  return sub_21C6EA794(v77, &qword_27CDF1278, &qword_21CBB0BF0);
}

uint64_t sub_21C914944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 88) = xmmword_21CBA7B60;
  *(a2 + 104) = 2;
  KeyPath = swift_getKeyPath();
  sub_21C844C40(a1, v14);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704000(KeyPath, v14[0]);

  type metadata accessor for PMTipsStore();
  sub_21C72A284(&qword_27CDED870, type metadata accessor for PMTipsStore);
  v7 = sub_21CB82674();
  v9 = v8;

  *(a2 + 112) = v7;
  *(a2 + 120) = v9;
  type metadata accessor for PMPasswordManagerState();
  sub_21C72A284(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  *(a2 + 128) = sub_21CB82B84();
  *(a2 + 136) = v10;
  sub_21CB84D44();
  v11 = v14[1];
  *(a2 + 144) = v14[0];
  *(a2 + 152) = v11;
  v12 = *(type metadata accessor for PMTipView() + 44);
  type metadata accessor for PMAppRootNavigationModel();
  sub_21C72A284(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  return sub_21CB821F4();
}

uint64_t sub_21C914B60()
{
  v0 = type metadata accessor for PMAppSourceListModel.Action(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v5 = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction);
  v4 = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  v5(v3);

  return sub_21C9173A0(v3, type metadata accessor for PMAppSourceListModel.Action);
}

id sub_21C914C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMAppSourceList();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  result = [objc_opt_self() shouldAllowAddingNewPasswords];
  if (result)
  {
    sub_21C733540(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSourceList);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    result = sub_21C72EBD4(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PMAppSourceList);
    v10 = sub_21C916714;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *a2 = v10;
  a2[1] = v9;
  return result;
}

uint64_t sub_21C914DDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  sub_21C9175A4(0);
}

uint64_t sub_21C914E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v45 = a2;
  v2 = sub_21CB82F84();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAppSourceListRowLabelStyle();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1050, &qword_21CBB0660);
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v44);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1048, &qword_21CBB0658);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v39 - v20;
  sub_21CB84C84();
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v22 = v8 + *(v5 + 20);
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *(v8 + *(v5 + 24)) = 0;
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C72A284(&qword_27CDECF90, type metadata accessor for PMAppSourceListRowLabelStyle);
  sub_21CB840E4();
  sub_21C9173A0(v8, type metadata accessor for PMAppSourceListRowLabelStyle);
  (*(v10 + 8))(v13, v9);
  v23 = sub_21CB83D14();
  v24 = v43 + *(type metadata accessor for PMAppSourceList() + 36);
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    sub_21CB85B04();
    v26 = sub_21CB83C94();
    sub_21CB81C14();

    v27 = v40;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v25, 0);
    (*(v41 + 8))(v27, v42);
  }

  sub_21CB81F24();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  (*(v14 + 32))(v21, v17, v44);
  v36 = &v21[*(v18 + 36)];
  *v36 = v23;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_21CB85184();
  MEMORY[0x28223BE20](v37);
  sub_21C916810();
  sub_21CB85194();
  return sub_21C6EA794(v21, &qword_27CDF1048, &qword_21CBB0658);
}

uint64_t sub_21C9153CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  v13(v9, v2);
  v18[0] = v10;
  v18[1] = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_21C91555C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C9155A4()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  sub_21CB81014();
  sub_21CB81014();
  v8 = sub_21CB80FF4();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v5, v0);
  v11(v7, v0);
  v13[0] = v8;
  v13[1] = v10;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C915744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v20[1] = a2;
  v5 = type metadata accessor for PMAppSourceList();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FD8, &qword_21CBB0610);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  if ([objc_opt_self() isOngoingCredentialSharingEnabled])
  {
    sub_21C733540(a1, v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSourceList);
    v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v14 = swift_allocObject();
    v15 = sub_21C72EBD4(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PMAppSourceList);
    MEMORY[0x28223BE20](v15);
    v20[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1030, &unk_21CBB0648);
    sub_21C91674C();
    sub_21CB84DA4();
    sub_21C6EADEC(&qword_27CDF0FD0, &qword_27CDF0FD8, &qword_21CBB0610);
    sub_21CB845C4();
    (*(v9 + 8))(v12, v8);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FC8, &qword_21CBB0608);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FC8, &qword_21CBB0608);
    v19 = *(*(v18 - 8) + 56);

    return v19(a3, 1, 1, v18);
  }
}

unint64_t sub_21C915AEC()
{
  result = qword_27CDF0E08;
  if (!qword_27CDF0E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DC0, &qword_21CBB0270);
    sub_21C915BA8();
    sub_21C72A284(&qword_27CDEBF90, type metadata accessor for PMSearchable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E08);
  }

  return result;
}

unint64_t sub_21C915BA8()
{
  result = qword_27CDF0E10;
  if (!qword_27CDF0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E18, &qword_21CBB0358);
    sub_21C915C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E10);
  }

  return result;
}

unint64_t sub_21C915C2C()
{
  result = qword_27CDF0E20;
  if (!qword_27CDF0E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E28, &qword_21CBB0360);
    sub_21C915CB8();
    sub_21C915F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E20);
  }

  return result;
}

unint64_t sub_21C915CB8()
{
  result = qword_27CDF0E30;
  if (!qword_27CDF0E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E38, &qword_21CBB0368);
    sub_21C915D70();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E30);
  }

  return result;
}

unint64_t sub_21C915D70()
{
  result = qword_27CDF0E40;
  if (!qword_27CDF0E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E48, &qword_21CBB0370);
    sub_21C915DFC();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E40);
  }

  return result;
}

unint64_t sub_21C915DFC()
{
  result = qword_27CDF0E50;
  if (!qword_27CDF0E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E58, &qword_21CBB0378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E60, &qword_21CBB0380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E68, &qword_21CBB0388);
    sub_21CB826C4();
    sub_21C6EADEC(&qword_27CDF0E70, &qword_27CDF0E68, &qword_21CBB0388);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEDCE0, &qword_27CDEDCD8, &unk_21CBB0390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E50);
  }

  return result;
}

unint64_t sub_21C915F80()
{
  result = qword_27CDF0E78;
  if (!qword_27CDF0E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E80, &qword_21CBB03A0);
    sub_21C91603C();
    sub_21C72A284(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E78);
  }

  return result;
}

unint64_t sub_21C91603C()
{
  result = qword_27CDF0E88;
  if (!qword_27CDF0E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E90, &qword_21CBB03A8);
    sub_21C9160F4();
    sub_21C6EADEC(&qword_27CDEE898, &qword_27CDEE8A0, &unk_21CBAA718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E88);
  }

  return result;
}

unint64_t sub_21C9160F4()
{
  result = qword_27CDF0E98;
  if (!qword_27CDF0E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EA0, &qword_21CBB03B0);
    sub_21C6EADEC(&qword_27CDF0EA8, &qword_27CDF0EB0, &qword_21CBB03B8);
    sub_21C6EADEC(&qword_27CDED960, &qword_27CDED968, &unk_21CBAEC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E98);
  }

  return result;
}

unint64_t sub_21C9161D8()
{
  result = qword_27CDF0EC0;
  if (!qword_27CDF0EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EB8, &qword_21CBB03C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EC8, &qword_21CBB03C8);
    sub_21C6EADEC(&qword_27CDF0ED0, &qword_27CDF0EC8, &qword_21CBB03C8);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0ED8, &qword_21CBB03D0);
    sub_21C6EADEC(&qword_27CDF0EE0, &qword_27CDF0ED8, &qword_21CBB03D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0EC0);
  }

  return result;
}

uint64_t sub_21C91637C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppSourceList() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C916418(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMAppSourceList() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_21C91651C()
{
  result = qword_27CDF0FB8;
  if (!qword_27CDF0FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0FB0, &qword_21CBB0600);
    sub_21C9165A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0FB8);
  }

  return result;
}

unint64_t sub_21C9165A0()
{
  result = qword_27CDF0FC0;
  if (!qword_27CDF0FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0FC8, &qword_21CBB0608);
    sub_21C6EADEC(&qword_27CDF0FD0, &qword_27CDF0FD8, &qword_21CBB0610);
    sub_21C72A284(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0FC0);
  }

  return result;
}

unint64_t sub_21C916690()
{
  result = qword_27CDF1018;
  if (!qword_27CDF1018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1010, &unk_21CBB0630);
    sub_21C87C30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1018);
  }

  return result;
}

unint64_t sub_21C91674C()
{
  result = qword_27CDF1038;
  if (!qword_27CDF1038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1030, &unk_21CBB0648);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C916810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1038);
  }

  return result;
}

unint64_t sub_21C916810()
{
  result = qword_27CDF1040;
  if (!qword_27CDF1040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1048, &qword_21CBB0658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    type metadata accessor for PMAppSourceListRowLabelStyle();
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C72A284(&qword_27CDECF90, type metadata accessor for PMAppSourceListRowLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1040);
  }

  return result;
}

uint64_t sub_21C916A70(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSourceList() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C910BF4(a1, v1 + v5);
}

unint64_t sub_21C916B78()
{
  result = qword_27CDF1138;
  if (!qword_27CDF1138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1130, &qword_21CBB0A50);
    sub_21C916C30();
    sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1138);
  }

  return result;
}

unint64_t sub_21C916C30()
{
  result = qword_27CDF1140;
  if (!qword_27CDF1140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1148, &qword_21CBB0A58);
    sub_21C916CE8();
    sub_21C6EADEC(&qword_27CDF1168, &qword_27CDF1170, &qword_21CBB0A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1140);
  }

  return result;
}

unint64_t sub_21C916CE8()
{
  result = qword_27CDF1150;
  if (!qword_27CDF1150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1158, &qword_21CBB0A60);
    sub_21C72A284(&qword_27CDF1160, type metadata accessor for PMSourceGrid);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1150);
  }

  return result;
}

unint64_t sub_21C916DA4()
{
  result = qword_27CDF1188;
  if (!qword_27CDF1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1120, &qword_21CBB0A40);
    sub_21C916B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1188);
  }

  return result;
}

unint64_t sub_21C916E4C()
{
  result = qword_27CDF11B0;
  if (!qword_27CDF11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1108, &qword_21CBB0A28);
    sub_21C74AA20();
    sub_21C6EADEC(&qword_27CDF11A0, &qword_27CDF1198, &qword_21CBB0AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF11B0);
  }

  return result;
}

unint64_t sub_21C916F10()
{
  result = qword_27CDF11B8;
  if (!qword_27CDF11B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF11A8, &qword_21CBB0AB8);
    swift_getOpaqueTypeConformance2();
    sub_21C91651C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF11B8);
  }

  return result;
}

uint64_t sub_21C91702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppSourceList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9127E0(a1, v6, a2);
}

unint64_t sub_21C9170AC()
{
  result = qword_27CDF11F8;
  if (!qword_27CDF11F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF11F0, &qword_21CBB0B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA578, &qword_21CBB0BA0);
    type metadata accessor for PMAppSourceListModel.Source(255);
    sub_21C9171BC();
    sub_21C72A284(&qword_27CDF10F0, type metadata accessor for PMAppSourceListModel.Source);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF11F8);
  }

  return result;
}

unint64_t sub_21C9171BC()
{
  result = qword_27CDF1200;
  if (!qword_27CDF1200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA578, &qword_21CBB0BA0);
    sub_21C917240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1200);
  }

  return result;
}

unint64_t sub_21C917240()
{
  result = qword_27CDF1208;
  if (!qword_27CDF1208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1210, &qword_21CBB0BA8);
    sub_21C72A284(&qword_27CDF1218, type metadata accessor for PMGroupRow);
    sub_21C6EADEC(&qword_27CDF1220, &qword_27CDF1228, &qword_21CBB0BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1208);
  }

  return result;
}

unint64_t sub_21C91733C()
{
  result = qword_27CDF1240;
  if (!qword_27CDF1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1240);
  }

  return result;
}

uint64_t sub_21C9173A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C917430@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  return sub_21C742C18(v5 + v3, a1);
}

uint64_t sub_21C9174F8()
{
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);
}

uint64_t sub_21C9175A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);
  if (v4 != 1)
  {
    if (a1 != 1)
    {
      if (v4)
      {
        if (a1)
        {
          v8 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);

          v10 = sub_21C967680(v9, a1);
          sub_21C72A584(v4);
          if (v10)
          {
            v5 = *(v1 + v3);
            goto LABEL_4;
          }
        }
      }

      else if (!a1)
      {
        v5 = 0;
        goto LABEL_4;
      }
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
    sub_21C72A584(a1);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_4:
  *(v1 + v3) = a1;

  return sub_21C72A584(v5);
}

uint64_t sub_21C917734(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C712BE8(v4);
}

uint64_t sub_21C9177D8()
{
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  return *(v0 + 18);
}

uint64_t sub_21C917878(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C917988()
{
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);
  sub_21C72A574(v1);
  return v1;
}

uint64_t sub_21C917A3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21C72A574(*a1);
  return sub_21C9175A4(v2);
}

uint64_t sub_21C917A70()
{
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  return *(v0 + 16);
}

uint64_t sub_21C917B10(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C917C20()
{
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel);
}

uint64_t sub_21C917CF4()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppSourceListModel.Source(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__groupsStore);
  v18 = qword_27CDEA4C0;

  if (v18 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v17, v27);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v19 = *(v27 + 16);

  if (v19)
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  v27 = v1;
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  v21 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v16, 0, 1, v2);
  v22 = *(v6 + 48);
  sub_21C742C18(v1 + v21, v9);
  sub_21C742C18(v16, &v9[v22]);
  v23 = *(v3 + 48);
  if (v23(v9, 1, v2) != 1)
  {
    sub_21C742C18(v9, v14);
    if (v23(&v9[v22], 1, v2) != 1)
    {
      v24 = v26;
      sub_21C919658(&v9[v22], v26);
      v20 = sub_21C918FE4(v14, v24);
      sub_21C919E5C(v24, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v16, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C919E5C(v14, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v9, &qword_27CDEAC20, &qword_21CBAD710);
      return v20 & 1;
    }

    sub_21C6EA794(v16, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C919E5C(v14, type metadata accessor for PMAppSourceListModel.Source);
    goto LABEL_10;
  }

  sub_21C6EA794(v16, &qword_27CDEAC20, &qword_21CBAD710);
  if (v23(&v9[v22], 1, v2) != 1)
  {
LABEL_10:
    sub_21C6EA794(v9, &unk_27CDED310, &unk_21CBA0150);
    v20 = 0;
    return v20 & 1;
  }

  sub_21C6EA794(v9, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_4:
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_21C9181E4(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9182E8()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppSourceListModel.Source(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C919ECC(v0, v9, type metadata accessor for PMAppSourceListModel.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v11 = 2;
      }

      else
      {
        v11 = 5;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v11 = 6;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v11 = 7;
    }

    else
    {
      v11 = 8;
    }

    return MEMORY[0x21CF15F90](v11);
  }

  if (EnumCaseMultiPayload > 1)
  {
    v11 = EnumCaseMultiPayload != 2;
    return MEMORY[0x21CF15F90](v11);
  }

  if (EnumCaseMultiPayload)
  {
    (*(v2 + 32))(v5, v9, v1);
    v12 = 4;
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    v12 = 3;
  }

  MEMORY[0x21CF15F90](v12);
  sub_21C712D24(&qword_27CDF8950, MEMORY[0x277D49978]);
  sub_21CB85494();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_21C91853C()
{
  v1 = type metadata accessor for PMAppSourceListModel.Source(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = type metadata accessor for PMAppSourceListModel.Action(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C919ECC(v0, v22, type metadata accessor for PMAppSourceListModel.Action);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
  {
    return MEMORY[0x21CF15F90](1);
  }

  v25 = *(v23 + 48);
  sub_21C919F34(v22, v18);
  sub_21C919F34(&v22[v25], v15);
  MEMORY[0x21CF15F90](0);
  sub_21C742C18(v18, v12);
  v26 = *(v2 + 48);
  if (v26(v12, 1, v1) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    sub_21C919658(v12, v5);
    sub_21CB864A4();
    sub_21C9182E8();
    sub_21C919E5C(v5, type metadata accessor for PMAppSourceListModel.Source);
  }

  sub_21C742C18(v15, v9);
  if (v26(v9, 1, v1) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    sub_21C919658(v9, v5);
    sub_21CB864A4();
    sub_21C9182E8();
    sub_21C919E5C(v5, type metadata accessor for PMAppSourceListModel.Source);
  }

  sub_21C6EA794(v15, &qword_27CDEAC20, &qword_21CBAD710);
  return sub_21C6EA794(v18, &qword_27CDEAC20, &qword_21CBAD710);
}

uint64_t sub_21C918914(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_21CB86484();
  a3(v5);
  return sub_21CB864D4();
}

uint64_t sub_21C918978(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_21CB86484();
  a4(v6);
  return sub_21CB864D4();
}

unint64_t sub_21C9189C0(unint64_t result, uint64_t a2)
{
  if (result >= 3)
  {
    result = sub_21C713194(a2);
    if (v2)
    {
      v3 = v2;
      v4 = result;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v7 = *(Strong + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);
        v6 = *(Strong + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected + 8);

        v7(v4, v3);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_21C918A8C()
{
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  return *(v0 + 17);
}

uint64_t sub_21C918B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-v9];
  sub_21C742C18(a2, &v13[-v9]);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C742C18(a1 + v11, v8);
  swift_beginAccess();
  sub_21C743188(v10, a1 + v11);
  swift_endAccess();
  sub_21C7431F8(v8);
  sub_21C6EA794(v8, &qword_27CDEAC20, &qword_21CBAD710);
  return sub_21C6EA794(v10, &qword_27CDEAC20, &qword_21CBAD710);
}

unint64_t sub_21C918C7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 3)
  {
    result = sub_21C713194(a2);
    if (v4)
    {
      v5 = result;
      v6 = v4;
      v8 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);
      v7 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected + 8);

      v8(v5, v6);
    }
  }

  return result;
}

uint64_t sub_21C918D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel) = a2;
}

uint64_t sub_21C918D6C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);
  sub_21CB810D4();

  return *(v2 + *a2);
}

uint64_t sub_21C918E1C()
{
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource, &qword_27CDEAC20, &qword_21CBAD710);
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction + 8);

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected + 8);

  v4 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__accountsState);

  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__groupsStore);

  sub_21C72A584(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow));
  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel);

  v7 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel___observationRegistrar;
  v8 = sub_21CB81114();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_21C918F14()
{
  sub_21C918E1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C918FE4(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_21CB85C44();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for PMAppSourceListModel.Source(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1350, &qword_21CBB0DD8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v37 - v20;
  v22 = *(v19 + 56);
  sub_21C919ECC(a1, &v37 - v20, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C919ECC(v38, &v21[v22], type metadata accessor for PMAppSourceListModel.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v24 = v37;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_30;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload)
    {
      v25 = v14;
      sub_21C919ECC(v21, v14, type metadata accessor for PMAppSourceListModel.Source);
      v26 = v21;
      v27 = v3;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v26;
        (*(v24 + 32))(v7, v26 + v22, v3);
        sub_21C712D24(&qword_27CDECD58, MEMORY[0x277D49978]);
        sub_21CB857F4();
        sub_21CB857F4();
        if (v41 == v39 && v42 == v40)
        {
          v30 = *(v24 + 8);
          v30(v7, v3);

          v30(v14, v3);
        }

        else
        {
          v33 = sub_21CB86344();
          v34 = *(v24 + 8);
          v34(v7, v3);

          v34(v14, v3);
          if ((v33 & 1) == 0)
          {
            sub_21C919E5C(v29, type metadata accessor for PMAppSourceListModel.Source);
            return 0;
          }
        }

        v31 = v29;
LABEL_28:
        sub_21C919E5C(v31, type metadata accessor for PMAppSourceListModel.Source);
        return 1;
      }
    }

    else
    {
      v25 = v16;
      sub_21C919ECC(v21, v16, type metadata accessor for PMAppSourceListModel.Source);
      v26 = v21;
      v27 = v3;
      if (!swift_getEnumCaseMultiPayload())
      {
        (*(v24 + 32))(v9, v26 + v22, v3);
        sub_21C712D24(&qword_27CDECD58, MEMORY[0x277D49978]);
        sub_21CB857F4();
        sub_21CB857F4();
        if (v41 == v39 && v42 == v40)
        {
          v28 = *(v24 + 8);
          v28(v9, v3);

          v28(v25, v3);
        }

        else
        {
          v35 = sub_21CB86344();
          v36 = *(v24 + 8);
          v36(v9, v27);

          v36(v25, v27);
          if ((v35 & 1) == 0)
          {
            sub_21C919E5C(v26, type metadata accessor for PMAppSourceListModel.Source);
            return 0;
          }
        }

        v31 = v26;
        goto LABEL_28;
      }
    }

    (*(v24 + 8))(v25, v27);
    v21 = v26;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_30;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 6)
  {
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 7)
  {
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (swift_getEnumCaseMultiPayload() == 8)
  {
LABEL_27:
    v31 = v21;
    goto LABEL_28;
  }

LABEL_30:
  sub_21C6EA794(v21, &qword_27CDF1350, &qword_21CBB0DD8);
  return 0;
}

uint64_t sub_21C919658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9196BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v58 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  MEMORY[0x28223BE20](v20);
  v63 = &v56 - v21;
  MEMORY[0x28223BE20](v22);
  v62 = &v56 - v23;
  v24 = type metadata accessor for PMAppSourceListModel.Action(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1358, &qword_21CBB0ED0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v56 - v30;
  v33 = &v56 + *(v32 + 56) - v30;
  sub_21C919ECC(a1, &v56 - v30, type metadata accessor for PMAppSourceListModel.Action);
  sub_21C919ECC(a2, v33, type metadata accessor for PMAppSourceListModel.Action);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  v35 = *(*(v34 - 8) + 48);
  if (v35(v31, 1, v34) == 1)
  {
    if (v35(v33, 1, v34) == 1)
    {
LABEL_3:
      sub_21C919E5C(v31, type metadata accessor for PMAppSourceListModel.Action);
      return 1;
    }

    goto LABEL_6;
  }

  v57 = v10;
  sub_21C919ECC(v31, v27, type metadata accessor for PMAppSourceListModel.Action);
  v37 = *(v34 + 48);
  if (v35(v33, 1, v34) != 1)
  {
    v38 = v62;
    sub_21C919F34(&v27[v37], v62);
    sub_21C919F34(&v33[v37], v63);
    v39 = *(v7 + 48);
    sub_21C919F34(v27, v13);
    sub_21C919F34(v33, &v13[v39]);
    v40 = v61;
    v41 = *(v60 + 48);
    if (v41(v13, 1, v61) == 1)
    {
      v42 = v41(&v13[v39], 1, v40);
      v43 = v57;
      if (v42 == 1)
      {
        sub_21C6EA794(v13, &qword_27CDEAC20, &qword_21CBAD710);
        v44 = v63;
LABEL_15:
        v51 = v38;
        v52 = *(v7 + 48);
        sub_21C742C18(v51, v43);
        sub_21C742C18(v44, v43 + v52);
        if (v41(v43, 1, v40) == 1)
        {
          sub_21C6EA794(v44, &qword_27CDEAC20, &qword_21CBAD710);
          sub_21C6EA794(v51, &qword_27CDEAC20, &qword_21CBAD710);
          if (v41((v43 + v52), 1, v40) == 1)
          {
            sub_21C6EA794(v43, &qword_27CDEAC20, &qword_21CBAD710);
            goto LABEL_3;
          }
        }

        else
        {
          v53 = v58;
          sub_21C742C18(v43, v58);
          if (v41((v43 + v52), 1, v40) != 1)
          {
            v54 = v59;
            sub_21C919658(v43 + v52, v59);
            v55 = sub_21C918FE4(v53, v54);
            sub_21C919E5C(v54, type metadata accessor for PMAppSourceListModel.Source);
            sub_21C6EA794(v44, &qword_27CDEAC20, &qword_21CBAD710);
            sub_21C6EA794(v62, &qword_27CDEAC20, &qword_21CBAD710);
            sub_21C919E5C(v53, type metadata accessor for PMAppSourceListModel.Source);
            sub_21C6EA794(v43, &qword_27CDEAC20, &qword_21CBAD710);
            if (v55)
            {
              goto LABEL_3;
            }

            goto LABEL_22;
          }

          sub_21C6EA794(v44, &qword_27CDEAC20, &qword_21CBAD710);
          sub_21C6EA794(v62, &qword_27CDEAC20, &qword_21CBAD710);
          sub_21C919E5C(v53, type metadata accessor for PMAppSourceListModel.Source);
        }

        v47 = &unk_27CDED310;
        v48 = &unk_21CBA0150;
        v46 = v43;
LABEL_21:
        sub_21C6EA794(v46, v47, v48);
LABEL_22:
        sub_21C919E5C(v31, type metadata accessor for PMAppSourceListModel.Action);
        return 0;
      }
    }

    else
    {
      sub_21C742C18(v13, v19);
      v45 = v41(&v13[v39], 1, v40);
      v43 = v57;
      if (v45 != 1)
      {
        v49 = &v13[v39];
        v50 = v59;
        sub_21C919658(v49, v59);
        LODWORD(v60) = sub_21C918FE4(v19, v50);
        sub_21C919E5C(v50, type metadata accessor for PMAppSourceListModel.Source);
        v38 = v62;
        sub_21C919E5C(v19, type metadata accessor for PMAppSourceListModel.Source);
        sub_21C6EA794(v13, &qword_27CDEAC20, &qword_21CBAD710);
        v44 = v63;
        if (v60)
        {
          goto LABEL_15;
        }

LABEL_13:
        sub_21C6EA794(v44, &qword_27CDEAC20, &qword_21CBAD710);
        v46 = v38;
        v47 = &qword_27CDEAC20;
        v48 = &qword_21CBAD710;
        goto LABEL_21;
      }

      sub_21C919E5C(v19, type metadata accessor for PMAppSourceListModel.Source);
    }

    sub_21C6EA794(v13, &unk_27CDED310, &unk_21CBA0150);
    v44 = v63;
    goto LABEL_13;
  }

  sub_21C6EA794(&v27[v37], &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v27, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_6:
  sub_21C6EA794(v31, &qword_27CDF1358, &qword_21CBB0ED0);
  return 0;
}

uint64_t sub_21C919E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C919ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C919F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C919FA4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow) = v1;
  sub_21C72A574(v1);
  return sub_21C72A584(v3);
}

uint64_t sub_21C91A068(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_21C91A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5)
{
  v10 = sub_21CB853D4();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB85404();
  v25 = *(v14 - 8);
  v26 = v14;
  v15 = *(v25 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](&v34, v18);
  v19 = sub_21CB85694();

  if (v19 > a1)
  {
    sub_21C8582C0();
    v24 = sub_21CB85CF4();
    v20 = swift_allocObject();
    v20[2] = a2;
    v20[3] = a3;
    v20[4] = a4;
    v20[5] = a5;
    v20[6] = a1;
    v32 = sub_21C91A4D4;
    v33 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_21C6ECBD4;
    v31 = &block_descriptor_11;
    v21 = _Block_copy(&aBlock);

    sub_21CB853E4();
    aBlock = MEMORY[0x277D84F90];
    sub_21C91A4E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C91A53C();
    sub_21CB85F14();
    v22 = v24;
    MEMORY[0x21CF15800](0, v17, v13, v21);
    _Block_release(v21);

    (*(v27 + 8))(v13, v10);
    (*(v25 + 8))(v17, v26);
  }

  return a2;
}

uint64_t sub_21C91A3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](&v17);
  v6 = sub_21C91A5A0(a5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x21CF15150](v6, v8, v10, v12);
  v15 = v14;

  v18 = v13;
  v19 = v15;
  sub_21CB84F34();
}

unint64_t sub_21C91A4E4()
{
  result = qword_27CDEAF48;
  if (!qword_27CDEAF48)
  {
    sub_21CB853D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAF48);
  }

  return result;
}

unint64_t sub_21C91A53C()
{
  result = qword_27CDEAF50;
  if (!qword_27CDEAF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBE80, &qword_21CBA37F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAF50);
  }

  return result;
}

uint64_t sub_21C91A5A0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21CB856B4();

    return sub_21CB857B4();
  }

  return result;
}

uint64_t type metadata accessor for PMChangePasswordOnWebsiteLink()
{
  result = qword_27CDF1360;
  if (!qword_27CDF1360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C91A6B0()
{
  sub_21C72DDD4(319, &unk_27CDEA9D0, &type metadata for PMOpenURLInSafariViewControllerAction, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMAccount(319);
    if (v1 <= 0x3F)
    {
      sub_21C72DDD4(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21C91A7B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C91A7B4()
{
  if (!qword_27CDEC850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC858, &qword_21CBB1080);
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEC850);
    }
  }
}

uint64_t sub_21C91A834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1370, &qword_21CBB10D8);
  v39 = *(v44 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v44);
  v38 = &v35 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1378, &unk_21CBB10E0);
  v5 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v35 - v6;
  v7 = sub_21CB83AB4();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1380, &unk_21CBB10F0);
  v19 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v21 = &v35 - v20;
  v22 = *(v2 + *(v12 + 40));
  sub_21C91BC70(v2, &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMChangePasswordOnWebsiteLink);
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  v25 = sub_21C91BCD8(&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for PMChangePasswordOnWebsiteLink);
  MEMORY[0x28223BE20](v25);
  *(&v35 - 2) = v2;
  if (v22 == 1)
  {
    sub_21CB84DA4();
    sub_21CB83AA4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C91BBC4();
    v26 = v37;
    sub_21CB84124();
    (*(v36 + 8))(v10, v26);
    (*(v35 + 8))(v18, v15);
    v27 = &v21[*(v40 + 36)];
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
    v29 = *MEMORY[0x277CDF420];
    v30 = sub_21CB82064();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = swift_getKeyPath();
    sub_21C767ED0(v21, v42);
    swift_storeEnumTagMultiPayload();
    sub_21C91BA7C();
    sub_21C6EADEC(&qword_27CDF13A8, &qword_27CDF1370, &qword_21CBB10D8);
    sub_21CB83494();
    return sub_21C767F40(v21);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA548, qword_21CBAC540);
    sub_21C6EADEC(&qword_27CDEF5D8, &qword_27CDEA548, qword_21CBAC540);
    v32 = v38;
    sub_21CB84DA4();
    v33 = v39;
    v34 = v44;
    (*(v39 + 16))(v42, v32, v44);
    swift_storeEnumTagMultiPayload();
    sub_21C91BA7C();
    sub_21C6EADEC(&qword_27CDF13A8, &qword_27CDF1370, &qword_21CBB10D8);
    sub_21CB83494();
    return (*(v33 + 8))(v32, v34);
  }
}

uint64_t sub_21C91AF18()
{
  v1 = sub_21CB82F84();
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = sub_21CB80BE4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C91B590(v8);
  v17 = *(v13 + 48);
  if (v17(v8, 1, v12) == 1)
  {
    sub_21C91B79C(v11);
    if (v17(v8, 1, v12) != 1)
    {
      sub_21C79C324(v8);
    }
  }

  else
  {
    (*(v13 + 32))(v11, v8, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
  }

  if (v17(v11, 1, v12) == 1)
  {
    return sub_21C79C324(v11);
  }

  (*(v13 + 32))(v16, v11, v12);
  v20 = *v0;
  v19 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    v21 = *(v0 + 8);
  }

  else
  {
    v22 = *v0;

    sub_21CB85B04();
    v23 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C79C1F4();
    (*(v25 + 8))(v4, v1);
    v20 = v26;
  }

  v20(v16);

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_21C91B28C(uint64_t a1)
{
  sub_21C91AF18();
  result = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v3 = a1 + *(result + 36);
  if (*v3)
  {
    v4 = *(v3 + 8);
    return (*v3)();
  }

  return result;
}

uint64_t sub_21C91B2D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF600, &qword_21CBAC580);
  sub_21C8AF06C();
  return sub_21CB84C84();
}

uint64_t sub_21C91B370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v10 = (a1 + *(v9 + 28));
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v13 = a1 + *(v9 + 20);
    v14 = v13 + *(type metadata accessor for PMAccount(0) + 28);
    if (*(v14 + 8))
    {
      [*(v14 + 24) issueTypes];
    }

    sub_21CB81014();
    v11 = sub_21CB81004();
    v12 = v15;
    (*(v5 + 8))(v8, v4);
  }

  v20[0] = v11;
  v20[1] = v12;
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v17;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_21C91B534@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  result = 0;
  if (*(a1 + *(v4 + 24)) == 1)
  {
    result = sub_21CB84BB4();
  }

  *a2 = result;
  return result;
}

uint64_t sub_21C91B590@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v1 + *(type metadata accessor for PMChangePasswordOnWebsiteLink() + 20);
  v12 = type metadata accessor for PMAccount(0);
  sub_21C91BC70(v11 + *(v12 + 24), v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C866D44(v10, type metadata accessor for PMAccount.Storage);
    v13 = sub_21CB80BE4();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    v15 = *v10;
    v16 = [*v10 wellKnownChangePasswordURL];

    if (v16)
    {
      sub_21CB80B94();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v18 = sub_21CB80BE4();
    (*(*(v18 - 8) + 56))(v6, v17, 1, v18);
    return sub_21C79C3F4(v6, a1);
  }
}

uint64_t sub_21C91B79C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for PMAccount.MockData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMAccount.Storage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v1 + *(type metadata accessor for PMChangePasswordOnWebsiteLink() + 20);
  v16 = type metadata accessor for PMAccount(0);
  sub_21C91BC70(v15 + *(v16 + 24), v14, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C91BCD8(v14, v10, type metadata accessor for PMAccount.MockData);
    v18 = *(v10 + 6);
    v17 = *(v10 + 7);

    sub_21C866D44(v10, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v19 = *v14;
    v20 = [*v14 highLevelDomain];
    if (!v20)
    {

      v27 = sub_21CB80BE4();
      return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
    }

    v21 = v20;
    sub_21CB855C4();
  }

  v22 = sub_21CB85584();

  v23 = [v22 safari_bestURLForUserTypedString];

  if (v23)
  {
    sub_21CB80B94();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_21CB80BE4();
  (*(*(v25 - 8) + 56))(v6, v24, 1, v25);
  return sub_21C79C3F4(v6, a1);
}

unint64_t sub_21C91BA7C()
{
  result = qword_27CDF1388;
  if (!qword_27CDF1388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1380, &unk_21CBB10F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB83AB4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C91BBC4();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1398, &qword_27CDF13A0, &qword_21CBB1100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1388);
  }

  return result;
}

unint64_t sub_21C91BBC4()
{
  result = qword_27CDF1390;
  if (!qword_27CDF1390)
  {
    sub_21CB83AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1390);
  }

  return result;
}

uint64_t sub_21C91BC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C91BCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C91BD64()
{
  result = qword_27CDF13B0;
  if (!qword_27CDF13B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF13B8, &qword_21CBB1138);
    sub_21C91BA7C();
    sub_21C6EADEC(&qword_27CDF13A8, &qword_27CDF1370, &qword_21CBB10D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF13B0);
  }

  return result;
}

uint64_t sub_21C91BE24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C91BEA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

void sub_21C91BF20(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    oslog = a1;
    if ([oslog BOOLValue])
    {
      sub_21C91CA0C();
      v4 = *(a3 + 16);
      [v4 didAttemptPromptReview];
    }
  }

  else
  {
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v6 = sub_21CB81C84();
    __swift_project_value_buffer(v6, qword_27CE186E0);
    v7 = a2;
    oslog = sub_21CB81C64();
    v8 = sub_21CB85AF4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      if (a2)
      {
        v11 = a2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 4) = v12;
      *v10 = v13;
      _os_log_impl(&dword_21C6E5000, oslog, v8, "AMS failed to check if should prompt: %@.", v9, 0xCu);
      sub_21C91C9A4(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);
    }
  }
}

void sub_21C91C0C4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_21C91C1B0(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v8 = sub_21CB81C84();
  __swift_project_value_buffer(v8, qword_27CE186E0);
  v9 = sub_21CB81C64();
  v10 = sub_21CB85B14();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21C6E5000, v9, v10, a1, v11, 2u);
    MEMORY[0x21CF16D90](v11, -1, -1);
  }

  v12 = *(v7 + 40);
  v13 = qword_27CDEA4C0;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v12, v19[0]);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v14 = *(v19[0] + 16);

  if (v14 < 0x15)
  {
    v15 = sub_21CB81C64();
    v17 = sub_21CB85B14();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21C6E5000, v15, v17, "Criteria wasn't met to prompt for App Store rating.", v18, 2u);
      MEMORY[0x21CF16D90](v18, -1, -1);
    }
  }

  else
  {
    v15 = [*(v7 + 16) shouldAttemptReview];
    v19[4] = a2;
    v19[5] = v7;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_21C91C0C4;
    v19[3] = a3;
    v16 = _Block_copy(v19);

    [v15 addFinishBlock:v16];
    _Block_release(v16);
  }
}

void sub_21C91C48C()
{
  v1 = v0;
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v2 = sub_21CB81C84();
  __swift_project_value_buffer(v2, qword_27CE186E0);
  v3 = sub_21CB81C64();
  v4 = sub_21CB85B14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21C6E5000, v3, v4, "User viewed security recommendation, trying to prompt for App Store rating.", v5, 2u);
    MEMORY[0x21CF16D90](v5, -1, -1);
  }

  v6 = objc_opt_self();
  v7 = [v6 pm_defaults];
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);

  v10 = sub_21CB85584();

  [v7 safari:v10 incrementNumberForKey:?];

  v11 = [v6 pm_defaults];
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);

  v14 = sub_21CB85584();

  v15 = [v11 safari:v14 numberForKey:?];

  if (v15)
  {
    v16 = [v15 integerValue];

    v17 = v16 > 3;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v1 + 40);
  v19 = qword_27CDEA4C0;

  if (v19 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v18, v25[0]);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v20 = *(v25[0] + 16);

  if (v20 > 0x14 && v17)
  {
    v21 = [*(v1 + 16) shouldAttemptReview];
    v25[4] = sub_21C91CC70;
    v25[5] = v1;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = sub_21C91C0C4;
    v25[3] = &block_descriptor_10;
    v22 = _Block_copy(v25);

    [v21 addFinishBlock:v22];
    _Block_release(v22);
  }

  else
  {
    v21 = sub_21CB81C64();
    v23 = sub_21CB85B14();
    if (os_log_type_enabled(v21, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21C6E5000, v21, v23, "Criteria wasn't met to prompt for App Store rating.", v24, 2u);
      MEMORY[0x21CF16D90](v24, -1, -1);
    }
  }
}

uint64_t PMAppStoreReviewController.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t PMAppStoreReviewController.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_21C91C9A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76B0, &qword_21CBA2BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21C91CA0C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 windows];

  sub_21C91CC14();
  v2 = sub_21CB85824();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!sub_21CB85FA4())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CF15BD0](0, v2);
LABEL_6:
    v4 = v3;

    v5 = [v4 windowScene];

    if (v5)
    {
      oslog = [objc_allocWithZone(PMAppStoreReviewHelper) init];
      [oslog attemptToRequestReview:v5];

      goto LABEL_13;
    }

LABEL_10:
    if (qword_27CDEA470 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_11:
  v6 = sub_21CB81C84();
  __swift_project_value_buffer(v6, qword_27CE186E0);
  oslog = sub_21CB81C64();
  v7 = sub_21CB85AF4();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21C6E5000, oslog, v7, "Failed to get window scene to request review.", v8, 2u);
    MEMORY[0x21CF16D90](v8, -1, -1);
  }

LABEL_13:
}

unint64_t sub_21C91CC14()
{
  result = qword_27CDFAE20;
  if (!qword_27CDFAE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDFAE20);
  }

  return result;
}

uint64_t sub_21C91CC74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21C91CCBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C91CD28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D2>)
{
  v41 = a1;
  v43 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13C8, &qword_21CBB1298);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13D0, &qword_21CBB12A0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v39 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13D8, &qword_21CBB12A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v24 = *(sub_21CB82A84() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_21CB831A4();
  (*(*(v26 - 8) + 104))(v13 + v24, v25, v26);
  *v13 = a3;
  v13[1] = a3;
  *(v13 + *(v10 + 60)) = sub_21CB84B24();
  *(v13 + *(v10 + 64)) = 256;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v13, v20, &qword_27CDF13D0, &qword_21CBB12A0);
  v27 = &v20[*(v14 + 36)];
  v28 = v49;
  *(v27 + 4) = v48;
  *(v27 + 5) = v28;
  *(v27 + 6) = v50;
  v29 = v45;
  *v27 = v44;
  *(v27 + 1) = v29;
  v30 = v47;
  *(v27 + 2) = v46;
  *(v27 + 3) = v30;
  sub_21C716934(v20, v23, &qword_27CDF13D8, &qword_21CBB12A8);
  v31 = sub_21CB84AD4();
  KeyPath = swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13E0, &qword_21CBB12E0);
  (*(*(v33 - 8) + 16))(v8, v41, v33);
  v34 = &v8[*(v40 + 36)];
  *v34 = KeyPath;
  v34[1] = v31;
  sub_21C6EDBAC(v23, v17, &qword_27CDF13D8, &qword_21CBB12A8);
  v35 = v42;
  sub_21C6EDBAC(v8, v42, &qword_27CDF13C8, &qword_21CBB1298);
  v36 = v43;
  sub_21C6EDBAC(v17, v43, &qword_27CDF13D8, &qword_21CBB12A8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13E8, &qword_21CBB12E8);
  sub_21C6EDBAC(v35, v36 + *(v37 + 48), &qword_27CDF13C8, &qword_21CBB1298);
  sub_21C6EA794(v8, &qword_27CDF13C8, &qword_21CBB1298);
  sub_21C6EA794(v23, &qword_27CDF13D8, &qword_21CBB12A8);
  sub_21C6EA794(v35, &qword_27CDF13C8, &qword_21CBB1298);
  return sub_21C6EA794(v17, &qword_27CDF13D8, &qword_21CBB12A8);
}

uint64_t sub_21C91D1BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = *(v2 + 2);
  v8 = v2[3];
  *a2 = sub_21CB85214();
  a2[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13C0, &qword_21CBB1290);
  return sub_21C91CD28(a1, a2 + *(v10 + 44), v8);
}

unint64_t sub_21C91D240()
{
  result = qword_27CDF13F0;
  if (!qword_27CDF13F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF13F8, &qword_21CBB12F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF13F0);
  }

  return result;
}

uint64_t sub_21C91D2A4@<X0>(void *a1@<X8>)
{
  sub_21C7D37FC();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C91D2F4(unint64_t *a1)
{
  sub_21C940A00(*a1);
  sub_21C7D37FC();
  return sub_21CB82FA4();
}

uint64_t sub_21C91D344@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7D38A8();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C91D394(char *a1)
{
  v2 = *a1;
  sub_21C7D38A8();
  return sub_21CB82FA4();
}

uint64_t sub_21C91D3E0@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v18);

  type metadata accessor for PMAccountsState();
  sub_21C705F40(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
  v3 = sub_21CB82674();
  v5 = v4;

  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  v6 = swift_getKeyPath();
  sub_21CB86544();
  sub_21C7073E8(v6, v18);

  type metadata accessor for PMGroupsStore();
  sub_21C705F40(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
  v7 = sub_21CB82674();
  v9 = v8;

  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 48) = swift_getKeyPath();
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = swift_getKeyPath();
  *(a1 + 80) = 0;
  *(a1 + 88) = swift_getKeyPath();
  *(a1 + 96) = 0;
  v10 = type metadata accessor for PMCombinedAccountDetailsView();
  v11 = v10[10];
  *(a1 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v12 = a1 + v10[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v10[12];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v14 = a1 + v10[13];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(a1 + v10[14]) = 0;
  v15 = a1 + v10[15];
  sub_21C9409AC();
  sub_21CB81FA4();
  *v15 = v18;
  *(v15 + 8) = v19;
  *(v15 + 16) = v20;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  result = sub_21CB82674();
  *a1 = result;
  *(a1 + 8) = v17;
  return result;
}

id sub_21C91D708@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C95C78C();
  *a2 = result;
  return result;
}

void sub_21C91D734(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
  v4 = v2;

  sub_21C942960(v3);
}

uint64_t sub_21C91D778@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C95C884();
  *a2 = result;
  return result;
}

uint64_t sub_21C91D7A4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
}

uint64_t sub_21C91D7E8@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  *&v73 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMCombinedAccountDetailsView();
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = v6;
  v79 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1450, &qword_21CBB1578);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v9 = &v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1458, &qword_21CBB1580);
  v11 = *(v10 - 8);
  v76 = v10;
  v77 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v74 = &v67 - v13;
  v67 = v9;
  sub_21C91E1B0(v9);
  v70 = sub_21C91F82C();
  v69 = v14;
  v15 = *v1;
  v80 = v1[1];
  v82 = v1;
  v16 = type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  v72 = v15;
  v71 = v16;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v68 = *(&v88 + 1);
  v17 = v88;
  v18 = v89;
  v85 = type metadata accessor for PMCombinedAccountDetailsView;
  v19 = v79;
  sub_21C942ED4(v1, v79, type metadata accessor for PMCombinedAccountDetailsView);
  v83 = *(v83 + 80);
  v20 = (v83 + 16) & ~v83;
  v21 = swift_allocObject();
  v81 = type metadata accessor for PMCombinedAccountDetailsView;
  sub_21C943454(v19, v21 + v20, type metadata accessor for PMCombinedAccountDetailsView);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21C940E10;
  *(v22 + 24) = v21;
  KeyPath = swift_getKeyPath();
  v24 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1460, &qword_21CBB15D8) + 36)];
  *v24 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1468, &qword_21CBB15E0);
  *(v24 + v25[18]) = 0;
  v26 = (v24 + v25[15]);
  v27 = v69;
  *v26 = v70;
  v26[1] = v27;
  v28 = v24 + v25[16];
  v29 = v68;
  *v28 = v17;
  *(v28 + 1) = v29;
  v28[16] = v18;
  *(v24 + v25[17]) = 0;
  *(v24 + v25[19]) = 2;
  v30 = (v24 + v25[20]);
  *v30 = sub_21C9440B4;
  v30[1] = v22;
  v31 = (v24 + v25[21]);
  *v31 = nullsub_1;
  v31[1] = 0;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v70 = v90;
  v69 = v91;
  LODWORD(v68) = v92;
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v73;
  sub_21CB81DB4();

  v33 = type metadata accessor for PMAccount(0);
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = v79;
  sub_21C942ED4(v82, v79, v85);
  v35 = swift_allocObject();
  v36 = v20;
  sub_21C943454(v34, v35 + v20, v81);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1470, &qword_21CBB1658);
  v38 = v67;
  v39 = &v67[*(v37 + 36)];
  v40 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  sub_21C942ED4(v32, &v39[v40[5]], type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v41 = &v39[v40[7]];
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_21CB84D44();
  v42 = v89;
  *v41 = v88;
  *(v41 + 2) = v42;
  v43 = &v39[v40[8]];
  LOBYTE(v86) = 0;
  sub_21CB84D44();
  v44 = *(&v88 + 1);
  *v43 = v88;
  *(v43 + 1) = v44;
  v45 = v40[9];
  v86 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1478, &qword_21CBB1660);
  sub_21CB84D44();
  *&v39[v45] = v88;
  v46 = &v39[v40[10]];
  LOBYTE(v86) = 0;
  sub_21CB84D44();
  v47 = *(&v88 + 1);
  *v46 = v88;
  *(v46 + 1) = v47;
  v48 = &v39[v40[11]];
  LOBYTE(v86) = 0;
  sub_21CB84D44();
  v49 = *(&v88 + 1);
  *v48 = v88;
  *(v48 + 1) = v49;
  v50 = &v39[v40[12]];
  LOBYTE(v86) = 0;
  sub_21CB84D44();
  sub_21C943938(v32, type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v51 = *(&v88 + 1);
  *v50 = v88;
  *(v50 + 1) = v51;
  v52 = v40[13];
  *&v39[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v53 = v69;
  *v39 = v70;
  *(v39 + 1) = v53;
  v39[16] = v68;
  v54 = &v39[v40[6]];
  *v54 = sub_21C940E28;
  v54[1] = v35;
  v55 = v80;
  v56 = v71;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v73 = v88;
  v57 = v89;
  v58 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1480, &qword_21CBB16C8) + 36);
  *v58 = v73;
  *(v58 + 16) = v57;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v73 = v88;
  v59 = v89;
  sub_21C942ED4(v82, v34, v85);
  v60 = swift_allocObject();
  sub_21C943454(v34, v60 + v36, v81);
  v61 = v75;
  v62 = v38 + *(v75 + 36);
  *v62 = v73;
  *(v62 + 16) = v59;
  *(v62 + 24) = sub_21C940E98;
  *(v62 + 32) = v60;
  sub_21CB81CD4();
  *&v88 = v55;
  v63 = sub_21C940F08();
  v64 = v74;
  sub_21CB843A4();

  sub_21C6EA794(v38, &qword_27CDF1450, &qword_21CBB1578);
  *&v88 = v61;
  *(&v88 + 1) = v56;
  v89 = v63;
  swift_getOpaqueTypeConformance2();
  v65 = v76;
  sub_21CB845C4();
  return (*(v77 + 8))(v64, v65);
}

uint64_t sub_21C91E1B0@<X0>(uint64_t a1@<X8>)
{
  v130 = a1;
  v123 = sub_21CB829A4();
  v122 = *(v123 - 8);
  v2 = *(v122 + 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1630, &qword_21CBB1978);
  Description = v139[-1].Description;
  v4 = *(Description + 8);
  MEMORY[0x28223BE20](v139);
  v124 = &v116 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1638, &qword_21CBB1980);
  v132 = *(v133 - 8);
  v6 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v125 = &v116 - v7;
  v142 = sub_21CB830D4();
  v117 = *(v142 - 8);
  v8 = *(v117 + 64);
  MEMORY[0x28223BE20](v142);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for PMCombinedAccountDetailsView();
  v134 = *(v120 - 8);
  v11 = *(v134 + 64);
  MEMORY[0x28223BE20](v120);
  v146 = v12;
  v138 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMAccount.Storage(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PMAccount(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1520, &qword_21CBB1750);
  v22 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v24 = &v116 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1510, &qword_21CBB1740);
  v140 = *(v25 - 8);
  v141 = v25;
  v26 = *(v140 + 64);
  MEMORY[0x28223BE20](v25);
  v119 = &v116 - v27;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14C8, &qword_21CBB1718);
  v28 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v143 = &v116 - v29;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14B8, &qword_21CBB1708);
  v126 = *(v127 - 8);
  v30 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v136 = &v116 - v31;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14A8, &qword_21CBB16F8);
  v128 = *(v129 - 8);
  v32 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v137 = &v116 - v33;
  v34 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v145 = v34;
  sub_21CB81DB4();

  sub_21C942ED4(&v21[*(v18 + 32)], v16, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v144 = v1;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C943938(v21, type metadata accessor for PMAccount);
    sub_21C943938(v16, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v36 = *v16;
    v37 = [v36 credentialTypes];

    sub_21C943938(v21, type metadata accessor for PMAccount);
    if ((v37 & 8) != 0)
    {
      v41 = v138;
      sub_21C942ED4(v1, v138, type metadata accessor for PMCombinedAccountDetailsView);
      v42 = (*(v134 + 80) + 16) & ~*(v134 + 80);
      v43 = swift_allocObject();
      sub_21C943454(v41, v43 + v42, type metadata accessor for PMCombinedAccountDetailsView);
      v152 = sub_21C941E40;
      v153 = v43;
      v154 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1558, &qword_21CBB1768);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1568, &qword_21CBB1770);
      sub_21C6EADEC(&qword_27CDF1550, &qword_27CDF1558, &qword_21CBB1768);
      goto LABEL_6;
    }
  }

  v38 = v138;
  sub_21C942ED4(v1, v138, type metadata accessor for PMCombinedAccountDetailsView);
  v39 = (*(v134 + 80) + 16) & ~*(v134 + 80);
  v40 = swift_allocObject();
  sub_21C943454(v38, v40 + v39, type metadata accessor for PMCombinedAccountDetailsView);
  v152 = sub_21C941D64;
  v153 = v40;
  v154 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1558, &qword_21CBB1768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1568, &qword_21CBB1770);
  sub_21C6EADEC(&qword_27CDF1550, &qword_27CDF1558, &qword_21CBB1768);
LABEL_6:
  sub_21C6EADEC(&qword_27CDF1560, &qword_27CDF1568, &qword_21CBB1770);
  sub_21CB83494();
  v44 = v147;
  v45 = v148;
  v46 = v149;
  sub_21CB830B4();
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1538, &qword_21CBB1758) + 36);
  v48 = v117;
  v49 = v142;
  (*(v117 + 16))(&v24[v47], v10, v142);
  v50 = *(v48 + 56);
  v50(&v24[v47], 0, 1, v49);
  *v24 = v44;
  *(v24 + 1) = v45;
  v24[16] = v46;
  KeyPath = swift_getKeyPath();
  v52 = v118;
  v53 = &v24[*(v118 + 36)];
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v48 + 32))(v53 + v54, v10, v49);
  v50(v53 + v54, 0, 1, v49);
  *v53 = KeyPath;
  swift_getKeyPath();
  swift_getKeyPath();
  v55 = v145;
  sub_21CB81DB4();

  v56 = sub_21C9417A8();
  v57 = v119;
  sub_21CB84674();
  v58 = sub_21C6EA794(v24, &qword_27CDF1520, &qword_21CBB1750);
  MEMORY[0x28223BE20](v58);
  v59 = v144;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1518, &qword_21CBB1748);
  v147 = v52;
  v148 = v56;
  swift_getOpaqueTypeConformance2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1570, &qword_21CBB1778);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1578, &qword_21CBB1780);
  v62 = sub_21C9419F8();
  v147 = v61;
  v148 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v147 = v60;
  v148 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v64 = v143;
  v65 = v141;
  sub_21CB84894();
  (*(v140 + 8))(v57, v65);
  v66 = swift_getKeyPath();
  v67 = &v64[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1508, &qword_21CBB1738) + 36)];
  v68 = v64;
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v142 = *v59;
  v70 = v59;
  v141 = type metadata accessor for PMCombinedAccountDetailsModel(0);
  v140 = sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v71 - 8) + 56))(v67 + v69, 0, 1, v71);
  *v67 = v66;
  swift_getKeyPath();
  swift_getKeyPath();
  v72 = &v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14F8, &qword_21CBB1730) + 36)];
  sub_21CB81DB4();

  v73 = &v72[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF15B0, &qword_21CBB17A0) + 36)];
  *v73 = sub_21C941D84;
  *(v73 + 1) = v55;

  v147 = sub_21CB84AB4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v74 = v121;
  sub_21CB82994();
  v75 = MEMORY[0x277CE0F78];
  v76 = MEMORY[0x277CE0F70];
  v77 = v124;
  sub_21CB849B4();
  (*(v122 + 1))(v74, v123);

  v78 = v70 + *(v120 + 60);
  LODWORD(v123) = *v78;
  v122 = *(v78 + 1);
  LODWORD(v121) = v78[16];
  LOBYTE(v147) = v123;
  v148 = v122;
  LOBYTE(v149) = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  sub_21CB81F74();
  v147 = v152;
  v148 = v153;
  LOBYTE(v149) = v154;
  v151 = 4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1438, &qword_21CBB14B8);
  v152 = v75;
  v153 = v76;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = sub_21C940D0C();
  v82 = v125;
  v83 = v139;
  sub_21CB84824();

  (*(Description + 1))(v77, v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14E8, &qword_21CBB1728);
  v85 = v143;
  v86 = &v143[*(v84 + 36)];
  v147 = v83;
  v148 = v79;
  v149 = v80;
  v150 = v81;
  swift_getOpaqueTypeConformance2();
  v87 = v133;
  sub_21CB84494();
  (*(v132 + 8))(v82, v87);
  v88 = sub_21CB85214();
  v90 = v89;
  v91 = &v86[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF15C0, &qword_21CBB17A8) + 36)];
  *v91 = v88;
  v91[1] = v90;
  LOBYTE(v147) = v123;
  v148 = v122;
  LOBYTE(v149) = v121;
  sub_21CB81F54();
  LOBYTE(v90) = v152;
  v139 = type metadata accessor for PMCombinedAccountDetailsView;
  v92 = v144;
  v93 = v138;
  sub_21C942ED4(v144, v138, type metadata accessor for PMCombinedAccountDetailsView);
  v94 = (*(v134 + 80) + 16) & ~*(v134 + 80);
  v132 = *(v134 + 80);
  v95 = swift_allocObject();
  Description = type metadata accessor for PMCombinedAccountDetailsView;
  sub_21C943454(v93, v95 + v94, type metadata accessor for PMCombinedAccountDetailsView);
  v96 = &v85[*(v135 + 36)];
  *v96 = v90;
  *(v96 + 1) = sub_21C941D88;
  *(v96 + 2) = v95;
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21C942ED4(v92, v93, v139);
  v97 = swift_allocObject();
  sub_21C943454(v93, v97 + v94, type metadata accessor for PMCombinedAccountDetailsView);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14D0, &qword_21CBB1720);
  v125 = sub_21C9413B0();
  v98 = sub_21CB83994();
  v134 = v98;
  v99 = sub_21C941AD8();
  v147 = &type metadata for PMPasskeysLearnMoreView;
  v148 = v98;
  v149 = v99;
  v150 = MEMORY[0x277CDE2B8];
  v133 = MEMORY[0x277CDEB40];
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v135;
  v102 = v143;
  sub_21CB847B4();

  sub_21C6EA794(v102, &qword_27CDF14C8, &qword_21CBB1718);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21C942ED4(v144, v93, v139);
  v103 = swift_allocObject();
  sub_21C943454(v93, v103 + v94, Description);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14C0, &qword_21CBB1710);
  v147 = v101;
  v148 = v124;
  v149 = v125;
  v150 = v100;
  v143 = MEMORY[0x277CDEE28];
  v104 = swift_getOpaqueTypeConformance2();
  v105 = type metadata accessor for PMEditAccountWebsitesView();
  v106 = sub_21C705F40(&qword_27CDF15E0, type metadata accessor for PMEditAccountWebsitesView);
  v147 = v105;
  v148 = v134;
  v149 = v106;
  v150 = MEMORY[0x277CDE2B8];
  v107 = swift_getOpaqueTypeConformance2();
  v108 = v127;
  v109 = v136;
  sub_21CB847B4();

  (*(v126 + 8))(v109, v108);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21C942ED4(v144, v93, v139);
  v110 = swift_allocObject();
  sub_21C943454(v93, v110 + v94, Description);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14B0, &qword_21CBB1700);
  v147 = v108;
  v148 = v123;
  v149 = v104;
  v150 = v107;
  swift_getOpaqueTypeConformance2();
  v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF15E8, &unk_21CBB17B8);
  v112 = sub_21C943C6C(&qword_27CDF15F0, &qword_27CDF15E8, &unk_21CBB17B8, sub_21C941B2C);
  v147 = v111;
  v148 = v134;
  v149 = v112;
  v150 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v113 = v129;
  v114 = v137;
  sub_21CB847B4();

  return (*(v128 + 8))(v114, v113);
}

uint64_t sub_21C91F82C()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v6 + 8))(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  v11 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v12 = PMAccount.effectiveTitle.getter();
  v14 = v13;
  sub_21C943938(v4, type metadata accessor for PMAccount);
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21C7C0050();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = sub_21CB85594();

  return v15;
}

uint64_t sub_21C91FA5C@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v87 = v75 - v3;
  v4 = sub_21CB82A04();
  v84 = *(v4 - 8);
  v85 = v4;
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v4);
  v83 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMCombinedAccountDetailsView();
  v79 = *(v7 - 8);
  v8 = *(v79 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = v8;
  v93 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v75 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v97 = *(v94 - 8);
  v17 = v97[8];
  MEMORY[0x28223BE20](v94);
  v89 = v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = v75 - v20;
  MEMORY[0x28223BE20](v21);
  v96 = v75 - v22;
  MEMORY[0x28223BE20](v23);
  v98 = v75 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1620, &qword_21CBB1930);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v86 = v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v75 - v30;
  sub_21CB81014();
  sub_21CB81014();
  v32 = sub_21CB80FF4();
  v34 = v33;
  v35 = *(v10 + 8);
  v91 = v9;
  v92 = v35;
  v35(v13, v9);
  v35(v16, v9);
  v99 = v32;
  v100 = v34;
  v81 = type metadata accessor for PMCombinedAccountDetailsView;
  v36 = v82;
  v37 = v93;
  sub_21C942ED4(v82, v93, type metadata accessor for PMCombinedAccountDetailsView);
  v79 = *(v79 + 80);
  v38 = (v79 + 16) & ~v79;
  v76 = v38;
  v39 = swift_allocObject();
  v78 = type metadata accessor for PMCombinedAccountDetailsView;
  sub_21C943454(v37, v39 + v38, type metadata accessor for PMCombinedAccountDetailsView);
  v77 = sub_21C71F3FC();
  v40 = v98;
  sub_21CB84DE4();
  v41 = v83;
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v42 = v31;
  v95 = v31;
  v43 = v94;
  sub_21CB84334();
  (*(v84 + 8))(v41, v85);
  v84 = v97[1];
  v85 = v97 + 1;
  (v84)(v40, v43);
  v44 = *(v36 + 8);
  v45 = v36;
  LOBYTE(v44) = sub_21CA4A55C();
  KeyPath = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = (v44 & 1) == 0;
  v48 = &v42[*(v26 + 44)];
  *v48 = KeyPath;
  v48[1] = sub_21C735744;
  v48[2] = v47;
  sub_21CB81014();
  sub_21CB81014();
  v49 = sub_21CB80FF4();
  v51 = v50;
  v52 = v91;
  v75[1] = v10 + 8;
  v53 = v92;
  v92(v13, v91);
  v53(v16, v52);
  v99 = v49;
  v100 = v51;
  v54 = v87;
  sub_21CB81ED4();
  v55 = sub_21CB81F14();
  v56 = *(*(v55 - 8) + 56);
  v56(v54, 0, 1, v55);
  v57 = v93;
  sub_21C942ED4(v45, v93, v81);
  v58 = v76;
  v59 = swift_allocObject();
  sub_21C943454(v57, v59 + v58, v78);
  v60 = v98;
  sub_21CB84DC4();
  sub_21CB81014();
  v61 = sub_21CB81004();
  v63 = v62;
  v92(v16, v91);
  v99 = v61;
  v100 = v63;
  sub_21CB81EF4();
  v56(v54, 0, 1, v55);
  v64 = v96;
  sub_21CB84DC4();
  v65 = v86;
  sub_21C6EDBAC(v95, v86, &qword_27CDF1620, &qword_21CBB1930);
  v66 = v97[2];
  v67 = v88;
  v68 = v60;
  v69 = v94;
  v66(v88, v68, v94);
  v70 = v89;
  v66(v89, v64, v69);
  v71 = v90;
  sub_21C6EDBAC(v65, v90, &qword_27CDF1620, &qword_21CBB1930);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1628, &unk_21CBB1968);
  v66((v71 + *(v72 + 48)), v67, v69);
  v66((v71 + *(v72 + 64)), v70, v69);
  v73 = v84;
  (v84)(v96, v69);
  v73(v98, v69);
  sub_21C6EA794(v95, &qword_27CDF1620, &qword_21CBB1930);
  v73(v70, v69);
  v73(v67, v69);
  return sub_21C6EA794(v65, &qword_27CDF1620, &qword_21CBB1930);
}

uint64_t sub_21C9203E8(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = type metadata accessor for PMCombinedAccountDetailsView();
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = v5;
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v57 - v8;
  v61 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v11 = (&v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for PMAccount(0);
  v12 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PMSetUpVerificationCodeAlertError(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v57 - v24);
  sub_21C6EDBAC(a1, &v57 - v24, &qword_27CDF1610, &unk_21CBB1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943454(v25, v21, type metadata accessor for PMSetUpVerificationCodeAlertError);
    sub_21C705F40(&qword_27CDF1618, type metadata accessor for PMSetUpVerificationCodeAlertError);
    swift_willThrowTypedImpl();
    v26 = swift_allocError();
    sub_21C943454(v21, v27, type metadata accessor for PMSetUpVerificationCodeAlertError);
    v64 = v26;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v29 = swift_dynamicCast();
    v30 = v63;
    if (v29)
    {
      v31 = sub_21CB80BE4();
      if ((*(*(v31 - 8) + 48))(v18, 3, v31) == 1)
      {
        v32 = v64;
        goto LABEL_15;
      }

      sub_21C943938(v18, type metadata accessor for PMSetUpVerificationCodeAlertError);
    }

    v37 = v26;
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v38 = sub_21CB81C84();
    __swift_project_value_buffer(v38, qword_27CE186E0);
    v39 = v26;
    v40 = sub_21CB81C64();
    v41 = sub_21CB85AF4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138543362;
      v44 = v26;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_21C6E5000, v40, v41, "Cannot create verification code generator. %{public}@", v42, 0xCu);
      sub_21C6EA794(v43, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v43, -1, -1);
      MEMORY[0x21CF16D90](v42, -1, -1);

LABEL_16:
      goto LABEL_17;
    }

    v32 = v26;
LABEL_15:

    goto LABEL_16;
  }

  v33 = *v25;
  v30 = v63;
  v34 = *(v63 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v64) = 1;
  swift_retain_n();
  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v33;
  v35 = v33;
  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v64)
  {
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C942ED4(&v14[*(v60 + 24)], v11, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v14, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      return sub_21C943938(v11, type metadata accessor for PMAccount.Storage);
    }

    v47 = *v11;
    v48 = sub_21CB858E4();
    (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
    v49 = v59;
    sub_21C942ED4(v30, v59, type metadata accessor for PMCombinedAccountDetailsView);
    sub_21CB858B4();
    v50 = v35;
    v51 = v47;
    v52 = sub_21CB858A4();
    v53 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v54 = (v58 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D85700];
    *(v55 + 16) = v52;
    *(v55 + 24) = v56;
    sub_21C943454(v49, v55 + v53, type metadata accessor for PMCombinedAccountDetailsView);
    *(v55 + v54) = v50;
    *(v55 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;
    sub_21C98B308(0, 0, v62, &unk_21CBB1928, v55);
  }

LABEL_17:
  v46 = *(v30 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v64) = 0;

  return sub_21CB81DC4();
}

uint64_t sub_21C920C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_21CB858B4();
  v6[6] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_21C920CC8, v8, v7);
}

uint64_t sub_21C920CC8()
{
  v1 = v0[5];
  v0[9] = *(v0[2] + 24);
  v0[10] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v0[11] = v3;
  v0[12] = v2;

  return MEMORY[0x2822009F8](sub_21C920D60, v3, v2);
}

uint64_t sub_21C920D60()
{
  v1 = v0[9];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = *(v0[9] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 80);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_21C920EE0;
    v9 = v0[3];
    v8 = v0[4];

    return v14(v9, v8, ObjectType, v3);
  }

  else
  {
    v11 = v0[10];

    v12 = v0[7];
    v13 = v0[8];

    return MEMORY[0x2822009F8](sub_21C7B6B44, v12, v13);
  }
}

uint64_t sub_21C920EE0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21C921024, v5, v4);
}

uint64_t sub_21C921024()
{
  v1 = v0[10];

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_21C7B6B44, v2, v3);
}

uint64_t sub_21C9210D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 16);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v3, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v5 = *(type metadata accessor for PMAccount(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21CBA0690;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C833310(v8, sub_21C941B80, v2);
}

uint64_t sub_21C921290()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1570, &qword_21CBB1778);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - v3;
  sub_21C9213C0(v9 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1578, &qword_21CBB1780);
  v6 = sub_21C9419F8();
  v9[0] = v5;
  v9[1] = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v4, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21C9213C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v137 = a1;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1868, &unk_21CBB21D0);
  v3 = *(*(v126 - 1) + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v104 - v4;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF15A0, &unk_21CBB1790);
  v128 = *(v131 - 8);
  v5 = *(v128 + 64);
  MEMORY[0x28223BE20](v131);
  v127 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
  v122 = *(v7 - 8);
  v123 = v7;
  v8 = *(v122 + 64);
  MEMORY[0x28223BE20](v7);
  v110 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1870, &qword_21CBB21E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v124 = &v104 - v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1878, &qword_21CBB21E8);
  v118 = *(v119 - 8);
  v15 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v108 = &v104 - v16;
  v17 = sub_21CB822D4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v106 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_21CB824D4();
  v107 = *(v117 - 8);
  v20 = *(v107 + 64);
  MEMORY[0x28223BE20](v117);
  v109 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1880, &qword_21CBB21F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v116 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v134 = &v104 - v26;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1888, &qword_21CBB21F8);
  v121 = *(v133 - 8);
  v27 = *(v121 + 64);
  MEMORY[0x28223BE20](v133);
  v138 = &v104 - v28;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1890, &qword_21CBB2200);
  v29 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v31 = &v104 - v30;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1590, &qword_21CBB1788);
  v115 = *(v136 - 8);
  v32 = *(v115 + 8);
  MEMORY[0x28223BE20](v136);
  v114 = &v104 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1898, &qword_21CBB2208);
  v129 = *(v34 - 8);
  v130 = v34;
  v35 = *(v129 + 64);
  MEMORY[0x28223BE20](v34);
  v132 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v112 = &v104 - v38;
  v39 = sub_21CB83604();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18A0, &qword_21CBB2210);
  v41 = *(v111 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v111);
  v44 = &v104 - v43;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1578, &qword_21CBB1780);
  v45 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v47 = &v104 - v46;
  v48 = v2;
  v49 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v139 == 1)
  {
    v50 = sub_21CB835C4();
    MEMORY[0x28223BE20](v50);
    *(&v104 - 2) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1900, &qword_21CBB2248);
    sub_21C942CB8();
    v105 = v44;
    sub_21CB82194();
    v51 = sub_21CB835D4();
    MEMORY[0x28223BE20](v51);
    *(&v104 - 2) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18C0, &qword_21CBB2220);
    sub_21C942A48();
    v52 = v112;
    sub_21CB82194();
    v53 = *(v113 + 48);
    v54 = v44;
    v55 = v111;
    (*(v41 + 16))(v31, v54, v111);
    v57 = v129;
    v56 = v130;
    (*(v129 + 16))(&v31[v53], v52, v130);
    v58 = v114;
    sub_21CB83394();
    v59 = sub_21C6EADEC(&qword_27CDF1588, &qword_27CDF1590, &qword_21CBB1788);
    v60 = sub_21C6EADEC(&qword_27CDF1598, &qword_27CDF15A0, &unk_21CBB1790);
    v61 = v136;
    MEMORY[0x21CF131F0](v58, v136, v131, v59, v60);
    (*(v115 + 1))(v58, v61);
    (*(v57 + 8))(v52, v56);
    (*(v41 + 8))(v105, v55);
  }

  else
  {
    v115 = v47;
    v62 = v129;
    v63 = v130;
    v64 = sub_21CB835A4();
    MEMORY[0x28223BE20](v64);
    *(&v104 - 2) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18A8, &qword_21CBB2218);
    sub_21C942994();
    sub_21CB82194();
    v65 = v48;
    if (sub_21CB85174() & 1) != 0 && (sub_21C934730() & 1) != 0 && (sub_21C92D6D0())
    {
      sub_21CB822B4();
      sub_21CB835A4();
      v66 = v109;
      sub_21CB824E4();
      v67 = v108;
      v68 = v117;
      MEMORY[0x21CF131D0](v66, v117, MEMORY[0x277CDD880]);
      v69 = v118;
      v70 = v116;
      v71 = v119;
      (*(v118 + 16))(v116, v67, v119);
      (*(v69 + 56))(v70, 0, 1, v71);
      v139 = v68;
      v140 = MEMORY[0x277CDD880];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13210](v70, v71, OpaqueTypeConformance2);
      sub_21C6EA794(v70, &qword_27CDF1880, &qword_21CBB21F0);
      (*(v69 + 8))(v67, v71);
      (*(v107 + 8))(v109, v68);
    }

    else
    {
      v73 = v116;
      v74 = v119;
      (*(v118 + 56))(v116, 1, 1, v119);
      v139 = v117;
      v140 = MEMORY[0x277CDD880];
      v75 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13210](v73, v74, v75);
      sub_21C6EA794(v73, &qword_27CDF1880, &qword_21CBB21F0);
    }

    v76 = v124;
    v77 = sub_21CB835A4();
    MEMORY[0x28223BE20](v77);
    *(&v104 - 2) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18C0, &qword_21CBB2220);
    sub_21C942A48();
    sub_21CB82194();
    v78 = v62;
    if (sub_21C934730() & 1) != 0 || (sub_21C92D6D0())
    {
      v79 = v123;
      v80 = v120;
      (*(v122 + 56))(v120, 1, 1, v123);
      v81 = sub_21C8F0690();
      v139 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v140 = v81;
      v82 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13220](v80, v79, v82);
      sub_21C6EA794(v80, &qword_27CDF1870, &qword_21CBB21E0);
    }

    else
    {
      v83 = sub_21C8F0690();
      v84 = v110;
      MEMORY[0x21CF131E0](v83, &type metadata for PMAppSeamlessToolbarItemPlaceholder, v83);
      v86 = v122;
      v85 = v123;
      v87 = v120;
      (*(v122 + 16))(v120, v84, v123);
      (*(v86 + 56))(v87, 0, 1, v85);
      v139 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v140 = v83;
      v88 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13220](v87, v85, v88);
      sub_21C6EA794(v87, &qword_27CDF1870, &qword_21CBB21E0);
      (*(v86 + 8))(v84, v85);
    }

    v89 = v76;
    v90 = v125;
    v91 = v126[12];
    v92 = v126[16];
    v93 = v126[20];
    v94 = v121;
    (*(v121 + 16))(v125, v138, v133);
    v95 = v134;
    sub_21C6EDBAC(v134, &v90[v91], &qword_27CDF1880, &qword_21CBB21F0);
    v96 = v132;
    (*(v78 + 16))(&v90[v92], v132, v63);
    sub_21C6EDBAC(v89, &v90[v93], &qword_27CDF1870, &qword_21CBB21E0);
    v97 = v63;
    v98 = v127;
    sub_21CB83394();
    v99 = sub_21C6EADEC(&qword_27CDF1588, &qword_27CDF1590, &qword_21CBB1788);
    v100 = sub_21C6EADEC(&qword_27CDF1598, &qword_27CDF15A0, &unk_21CBB1790);
    v47 = v115;
    v101 = v131;
    MEMORY[0x21CF13200](v98, v136, v131, v99, v100);
    (*(v128 + 8))(v98, v101);
    sub_21C6EA794(v89, &qword_27CDF1870, &qword_21CBB21E0);
    (*(v78 + 8))(v96, v97);
    sub_21C6EA794(v95, &qword_27CDF1880, &qword_21CBB21F0);
    (*(v94 + 8))(v138, v133);
  }

  v102 = sub_21C9419F8();
  MEMORY[0x21CF131E0](v47, v135, v102);
  return sub_21C6EA794(v47, &qword_27CDF1578, &qword_21CBB1780);
}

uint64_t sub_21C9223F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v4 = sub_21CB85114();
  v5 = MEMORY[0x277CDF0D0];
  if (!v7)
  {
    v5 = MEMORY[0x277CDF0D8];
  }

  return (*(*(v4 - 8) + 104))(a2, *v5, v4);
}

uint64_t sub_21C9224C8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21CB85114();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return sub_21CA49928(v8);
}

uint64_t sub_21C922594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C92262C(uint64_t a1)
{
  v2 = sub_21CB83994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0xD000000000000011;
  v9[1] = 0x800000021CB934F0;
  v7 = *(a1 + *(type metadata accessor for PMCombinedAccountDetailsView() + 56));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C941AD8();
  sub_21CB84524();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C922798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMEditAccountWebsitesView();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v27 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v13 = *a1;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v14 = *v36;
  v26 = *&v36[8];
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v15 = v34;
  v16 = &v11[v8[5]];
  *v16 = v14;
  *(v16 + 8) = v26;
  v17 = &v11[v8[6]];
  *v17 = v15;
  *(v17 + 8) = v35;
  v18 = &v11[v8[7]];
  v31 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE110, &qword_21CBB2150);
  sub_21CB84D44();
  v19 = v33;
  *v18 = v32;
  *(v18 + 1) = v19;
  v20 = v8[8];
  *&v11[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v21 = v8[9];
  *&v11[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v22 = v8[10];
  sub_21CB80E34();
  sub_21C705F40(&qword_27CDEE130, MEMORY[0x277CC95F0]);
  sub_21CB81FA4();
  strcpy(v36, "editWebsites");
  v36[13] = 0;
  *&v36[14] = -5120;
  v23 = *(v27 + *(type metadata accessor for PMCombinedAccountDetailsView() + 56));
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C705F40(&qword_27CDF15E0, type metadata accessor for PMEditAccountWebsitesView);
  v24 = v28;
  sub_21CB84524();
  (*(v29 + 8))(v7, v24);
  return sub_21C943938(v11, type metadata accessor for PMEditAccountWebsitesView);
}

uint64_t sub_21C922C18(uint64_t a1)
{
  v2 = sub_21CB83994();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v8 = *&v20[0];
  sub_21CB85214();
  sub_21CB82AC4();
  *&v12 = v8;
  *&v20[0] = 0x79726F74736968;
  *(&v20[0] + 1) = 0xE700000000000000;
  v9 = *(a1 + *(type metadata accessor for PMCombinedAccountDetailsView() + 56));
  sub_21CB852C4();
  sub_21CB834F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF15E8, &unk_21CBB17B8);
  sub_21C943C6C(&qword_27CDF15F0, &qword_27CDF15E8, &unk_21CBB17B8, sub_21C941B2C);
  sub_21CB84524();
  (*(v3 + 8))(v6, v2);
  v20[5] = v17;
  v20[6] = v18;
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v21 = v19;
  v20[3] = v15;
  v20[4] = v16;
  return sub_21C6EA794(v20, &qword_27CDF15E8, &unk_21CBB17B8);
}

uint64_t sub_21C922EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1930, &qword_21CBB2298);
  v3 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v161 = &v137 - v4;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1938, &qword_21CBB22A0);
  v155 = *(v156 - 8);
  v5 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v137 = &v137 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1940, &qword_21CBB22A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v158 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v174 = (&v137 - v11);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1948, &qword_21CBB22B0);
  v168 = *(v160 - 8);
  v12 = *(v168 + 64);
  MEMORY[0x28223BE20](v160);
  v157 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v183 = (&v137 - v15);
  v149 = type metadata accessor for PMSecurityRecommendationPlatter();
  v16 = *(v149 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v149);
  v138 = (&v137 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_21CB82F84();
  v19 = *(v143 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1950, &qword_21CBB22B8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v154 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v167 = &v137 - v26;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1958, &qword_21CBB22C0);
  v27 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v29 = &v137 - v28;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1960, &qword_21CBB22C8);
  v30 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v159 = &v137 - v31;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1860, &qword_21CBB2090);
  v151 = *(v152 - 8);
  v32 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v144 = &v137 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1968, &qword_21CBB22D0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v150 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v184 = (&v137 - v38);
  MEMORY[0x28223BE20](v39);
  v166 = &v137 - v40;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1970, &qword_21CBB22D8);
  v188 = *(v182 - 8);
  v41 = v188[8];
  MEMORY[0x28223BE20](v182);
  v153 = &v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v181 = &v137 - v44;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1978, &qword_21CBB22E0);
  v187 = *(v180 - 8);
  v45 = v187[8];
  MEMORY[0x28223BE20](v180);
  v165 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v179 = &v137 - v48;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1980, &qword_21CBB22E8);
  v186 = *(v178 - 8);
  v49 = v186[8];
  MEMORY[0x28223BE20](v178);
  v164 = &v137 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v177 = &v137 - v52;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1988, &qword_21CBB22F0);
  v147 = *(v148 - 8);
  v53 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v141 = &v137 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = &v137 - v57;
  v59 = type metadata accessor for PMAccount(0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v62 = &v137 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_21CB80DD4();
  v145 = *(v146 - 8);
  v63 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v139 = &v137 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1990, &qword_21CBB22F8);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v175 = &v137 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v176 = &v137 - v69;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1998, &qword_21CBB2300);
  v185 = *(v163 - 8);
  v70 = v185[8];
  MEMORY[0x28223BE20](v163);
  v162 = &v137 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v74 = &v137 - v73;
  v75 = a1;
  v76 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v171 = v29;
  if (v190 == 1)
  {
    MEMORY[0x28223BE20](v77);
    *(&v137 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19C8, &qword_21CBB2318);
    sub_21C6EADEC(&qword_27CDF19D0, &qword_27CDF19C8, &qword_21CBB2318);
    sub_21CB85054();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    PMAccount.creationDateForPasskey.getter(v58);
    sub_21C943938(v62, type metadata accessor for PMAccount);
    v78 = v145;
    v79 = v146;
    v80 = (*(v145 + 48))(v58, 1, v146);
    v140 = v74;
    if (v80 == 1)
    {
      v81 = v74;
      sub_21C6EA794(v58, &unk_27CDED250, &qword_21CBA64C0);
      v82 = (*(v147 + 56))(v176, 1, 1, v148);
      v83 = a1;
    }

    else
    {
      v86 = v139;
      v87 = (*(v78 + 32))(v139, v58, v79);
      MEMORY[0x28223BE20](v87);
      *(&v137 - 2) = a1;
      *(&v137 - 1) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A40, &qword_21CBB2358);
      sub_21C6EADEC(&qword_27CDF1A48, &qword_27CDF1A40, &qword_21CBB2358);
      v88 = v141;
      sub_21CB85054();
      v89 = v147;
      v90 = v176;
      v91 = v88;
      v92 = v148;
      (*(v147 + 32))(v176, v91, v148);
      (*(v89 + 56))(v90, 0, 1, v92);
      v82 = (*(v78 + 8))(v86, v79);
      v83 = v75;
      v81 = v140;
    }

    MEMORY[0x28223BE20](v82);
    *(&v137 - 2) = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19D8, &qword_21CBB2320);
    sub_21C6EADEC(&qword_27CDF19E0, &qword_27CDF19D8, &qword_21CBB2320);
    v93 = sub_21CB85054();
    MEMORY[0x28223BE20](v93);
    *(&v137 - 2) = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19E8, &qword_21CBB2328);
    sub_21C942F5C();
    v94 = sub_21CB85054();
    MEMORY[0x28223BE20](v94);
    *(&v137 - 2) = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A28, &qword_21CBB2348);
    sub_21C6EADEC(&qword_27CDF1A30, &qword_27CDF1A28, &qword_21CBB2348);
    sub_21CB85054();
    if (sub_21C92FD78())
    {
      v95 = v144;
      sub_21C92FF5C(v144);
      v96 = v166;
      sub_21C716934(v95, v166, &qword_27CDF1860, &qword_21CBB2090);
      v97 = 0;
    }

    else
    {
      v97 = 1;
      v96 = v166;
    }

    (*(v151 + 56))(v96, v97, 1, v152);
    v101 = v185[2];
    v102 = v162;
    v103 = v163;
    v101(v162, v81, v163);
    sub_21C6EDBAC(v176, v175, &qword_27CDF1990, &qword_21CBB22F8);
    v183 = v186[2];
    v183(v164, v177, v178);
    v174 = v187[2];
    (v174)(v165, v179, v180);
    v168 = v188[2];
    v104 = v153;
    (v168)(v153, v181, v182);
    v105 = v96;
    v106 = v184;
    sub_21C6EDBAC(v105, v184, &qword_27CDF1968, &qword_21CBB22D0);
    v107 = v159;
    v101(v159, v102, v103);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A38, &qword_21CBB2350);
    sub_21C6EDBAC(v175, v107 + v108[12], &qword_27CDF1990, &qword_21CBB22F8);
    v109 = v164;
    v110 = v178;
    v183((v107 + v108[16]), v164, v178);
    v111 = v165;
    v112 = v180;
    (v174)(v107 + v108[20], v165, v180);
    v113 = v182;
    (v168)(v107 + v108[24], v104, v182);
    sub_21C6EDBAC(v106, v107 + v108[28], &qword_27CDF1968, &qword_21CBB22D0);
    sub_21C6EA794(v106, &qword_27CDF1968, &qword_21CBB22D0);
    v114 = v188[1];
    ++v188;
    v184 = v114;
    (v114)(v104, v113);
    v115 = v187[1];
    ++v187;
    v183 = v115;
    (v115)(v111, v112);
    v116 = v186[1];
    ++v186;
    v116(v109, v110);
    sub_21C6EA794(v175, &qword_27CDF1990, &qword_21CBB22F8);
    v117 = v185[1];
    ++v185;
    v118 = v163;
    v117(v162, v163);
    sub_21C6EDBAC(v107, v171, &qword_27CDF1960, &qword_21CBB22C8);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF19B8, &qword_27CDF1960, &qword_21CBB22C8);
    sub_21C6EADEC(&qword_27CDF19C0, &qword_27CDF1930, &qword_21CBB2298);
    sub_21CB83494();
    sub_21C6EA794(v107, &qword_27CDF1960, &qword_21CBB22C8);
    sub_21C6EA794(v166, &qword_27CDF1968, &qword_21CBB22D0);
    (v184)(v181, v182);
    (v183)(v179, v180);
    v116(v177, v178);
    sub_21C6EA794(v176, &qword_27CDF1990, &qword_21CBB22F8);
    return (v117)(v140, v118);
  }

  v84 = a1 + *(type metadata accessor for PMCombinedAccountDetailsView() + 44);
  v85 = *v84;
  if (*(v84 + 8) == 1)
  {
    v189 = *v84;
  }

  else
  {

    sub_21CB85B04();
    v98 = sub_21CB83C94();
    sub_21CB81C14();

    v99 = v142;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v85, 0);
    (*(v19 + 8))(v99, v143);
    LOBYTE(v85) = v189;
  }

  v100 = v167;
  if (v85 == 1)
  {

    if (sub_21C930630())
    {
LABEL_16:

      v121 = v138;
      sub_21CB7A264(v138);
      sub_21C943454(v121, v100, type metadata accessor for PMSecurityRecommendationPlatter);
      v122 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v120 = sub_21CB86344();

    if ((v120 & 1) != 0 && sub_21C930630())
    {
      goto LABEL_16;
    }
  }

  v122 = 1;
LABEL_19:
  v123 = 1;
  v124 = (*(v16 + 56))(v100, v122, 1, v149);
  MEMORY[0x28223BE20](v124);
  *(&v137 - 2) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19A0, &qword_21CBB2308);
  sub_21C6EADEC(&qword_27CDF19A8, &qword_27CDF19A0, &qword_21CBB2308);
  sub_21CB85054();
  if ((sub_21C92D6D0() & 1) != 0 && !sub_21C930630())
  {
    v125 = v137;
    sub_21C93291C(v137);
    sub_21C716934(v125, v174, &qword_27CDF1938, &qword_21CBB22A0);
    v123 = 0;
  }

  v126 = v174;
  (*(v155 + 56))(v174, v123, 1, v156);
  v127 = v184;
  sub_21C932F7C(v184);
  v128 = v154;
  sub_21C6EDBAC(v100, v154, &qword_27CDF1950, &qword_21CBB22B8);
  v129 = *(v168 + 16);
  v130 = v157;
  v131 = v160;
  v129(v157, v183, v160);
  v132 = v158;
  sub_21C6EDBAC(v126, v158, &qword_27CDF1940, &qword_21CBB22A8);
  v133 = v150;
  sub_21C6EDBAC(v127, v150, &qword_27CDF1968, &qword_21CBB22D0);
  v134 = v161;
  sub_21C6EDBAC(v128, v161, &qword_27CDF1950, &qword_21CBB22B8);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19B0, &qword_21CBB2310);
  v129((v134 + v135[12]), v130, v131);
  sub_21C6EDBAC(v132, v134 + v135[16], &qword_27CDF1940, &qword_21CBB22A8);
  sub_21C6EDBAC(v133, v134 + v135[20], &qword_27CDF1968, &qword_21CBB22D0);
  sub_21C6EA794(v133, &qword_27CDF1968, &qword_21CBB22D0);
  sub_21C6EA794(v132, &qword_27CDF1940, &qword_21CBB22A8);
  v136 = *(v168 + 8);
  v136(v130, v131);
  sub_21C6EA794(v128, &qword_27CDF1950, &qword_21CBB22B8);
  sub_21C6EDBAC(v134, v171, &qword_27CDF1930, &qword_21CBB2298);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF19B8, &qword_27CDF1960, &qword_21CBB22C8);
  sub_21C6EADEC(&qword_27CDF19C0, &qword_27CDF1930, &qword_21CBB2298);
  sub_21CB83494();
  sub_21C6EA794(v134, &qword_27CDF1930, &qword_21CBB2298);
  sub_21C6EA794(v184, &qword_27CDF1968, &qword_21CBB22D0);
  sub_21C6EA794(v174, &qword_27CDF1940, &qword_21CBB22A8);
  v136(v183, v131);
  return sub_21C6EA794(v167, &qword_27CDF1950, &qword_21CBB22B8);
}

uint64_t sub_21C924858@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BF0, &qword_21CBB2600);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_21C924A48(&v18 - v14);
  sub_21C924F88(v8);
  sub_21C6EDBAC(v15, v12, &qword_27CDF1858, &qword_21CBB1FA8);
  sub_21C6EDBAC(v8, v5, &qword_27CDF1BF0, &qword_21CBB2600);
  sub_21C6EDBAC(v12, a1, &qword_27CDF1858, &qword_21CBB1FA8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BF8, &qword_21CBB2608);
  sub_21C6EDBAC(v5, a1 + *(v16 + 48), &qword_27CDF1BF0, &qword_21CBB2600);
  sub_21C6EA794(v8, &qword_27CDF1BF0, &qword_21CBB2600);
  sub_21C6EA794(v15, &qword_27CDF1858, &qword_21CBB1FA8);
  sub_21C6EA794(v5, &qword_27CDF1BF0, &qword_21CBB2600);
  return sub_21C6EA794(v12, &qword_27CDF1858, &qword_21CBB1FA8);
}

uint64_t sub_21C924A48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMAccount(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = v2[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v15[*(v9 + 32)], v7, type metadata accessor for PMAccount.Storage);
  sub_21C943938(v15, type metadata accessor for PMAccount);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v7, type metadata accessor for PMAccount.Storage);
    goto LABEL_5;
  }

  v17 = *v7;
  v18 = [v17 serviceName];

  if (!v18)
  {
LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v21 = PMAccount.userVisibleDomain.getter();
    v23 = v22;
    sub_21C943938(v12, type metadata accessor for PMAccount);
    if (v23)
    {
      v56 = v23;
      v57 = v21;
    }

    else
    {
      v56 = 0xE000000000000000;
      v57 = 0;
    }

    goto LABEL_8;
  }

  v19 = sub_21CB855C4();
  v56 = v20;
  v57 = v19;

LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v54 = v62;
  v55 = v61;
  v24 = *v2;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v26 = v61;
  v25 = v62;
  v28 = v63;
  v27 = v64;
  v29 = *MEMORY[0x277D49D48];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v30 = sub_21CB85694();

  if (v30 <= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = sub_21C91A0A0(v31, v26, v25, v28, v27);
  v34 = v33;
  v36 = v35;
  v53 = v37;

  v38 = sub_21C93C30C();
  v40 = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v41 = v61;
  v42 = v2 + *(type metadata accessor for PMCombinedAccountDetailsView() + 60);
  v43 = *v42;
  v44 = *(v42 + 1);
  LOBYTE(v42) = v42[16];
  LOBYTE(v61) = v43;
  v62 = v44;
  LOBYTE(v63) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  sub_21CB81F74();
  v45 = v59;
  v46 = v60;
  *(a1 + 88) = v58;
  *(a1 + 96) = v45;
  *(a1 + 104) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  v48 = *(v47 + 80);
  *(a1 + v48) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v49 = v54;
  *a1 = v55;
  *(a1 + 8) = v49;
  v50 = v56;
  *(a1 + 16) = v57;
  *(a1 + 24) = v50;
  *(a1 + 32) = v32;
  *(a1 + 40) = v34;
  v51 = v53;
  *(a1 + 48) = v36;
  *(a1 + 56) = v51;
  *(a1 + 64) = v38;
  *(a1 + 72) = v40;
  *(a1 + 80) = v41;
  return sub_21C93C674(a1 + *(v47 + 76));
}

uint64_t sub_21C924F88@<X0>(uint64_t a1@<X8>)
{
  v137 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v2 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v4 = &v110 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v118 = &v110 - v7;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C00, &qword_21CBB2610);
  v8 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v117 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = &v110 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C08, &qword_21CBB2618);
  v12 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v133 = &v110 - v13;
  v123 = type metadata accessor for PMCombinedAccountDetailsView();
  v120 = *(v123 - 8);
  v14 = *(v120 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = v15;
  v122 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C10, &qword_21CBB2620);
  v125 = *(v128 - 8);
  v16 = *(v125 + 64);
  MEMORY[0x28223BE20](v128);
  v124 = &v110 - v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C18, &qword_21CBB2628);
  v18 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v126 = &v110 - v19;
  *&v130 = sub_21CB81024();
  v129 = *(v130 - 8);
  v20 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v112 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v110 - v23;
  v136 = type metadata accessor for PMAccount.Storage(0);
  v25 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v27 = (&v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v114 = (&v110 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = (&v110 - v31);
  v135 = type metadata accessor for PMAccount(0);
  v33 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v115 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v113 = &v110 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v110 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v110 - v41;
  v127 = v1;
  v43 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v146 != 1)
  {
    goto LABEL_5;
  }

  v111 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v42[*(v135 + 24)], v32, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v44 = *v32;
    v45 = [*v32 userIsNeverSaveMarker];

    sub_21C943938(v42, type metadata accessor for PMAccount);
    v27 = v111;
    if ((v45 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v46 = PMAccount.userName.getter();
    v48 = v47;
    sub_21C943938(v39, type metadata accessor for PMAccount);
    if (!v48)
    {
      goto LABEL_11;
    }

    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49)
    {
LABEL_11:
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C20, &qword_21CBB2630);
      return (*(*(v60 - 8) + 56))(v137, 1, 1, v60);
    }

    v111 = v27;
    sub_21CB81014();
    v128 = sub_21CB81004();
    v51 = v50;
    v52 = *(v129 + 8);
    v53 = v130;
    v52(v24, v130);
    sub_21CB81014();
    v54 = v112;
    sub_21CB81014();
    v55 = sub_21CB80FF4();
    v57 = v56;
    v52(v54, v53);
    v52(v24, v53);
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = v113;
    sub_21CB81DB4();

    v59 = v114;
    sub_21C942ED4(v58 + *(v135 + 24), v114, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v58, type metadata accessor for PMAccount);
      sub_21C943938(v59, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v85 = *v59;
      v86 = [*v59 userIsNeverSaveMarker];

      sub_21C943938(v58, type metadata accessor for PMAccount);
      if (v86)
      {
        v87 = 0xA300000000000000;
        v88 = 9732322;
LABEL_16:
        LOBYTE(v139) = 0;
        sub_21CB84D44();
        v89 = *(&v146 + 1);
        v4[88] = v146;
        *(v4 + 12) = v89;
        LOBYTE(v139) = 0;
        sub_21CB84D44();
        v90 = *(&v146 + 1);
        v4[104] = v146;
        *(v4 + 14) = v90;
        LOBYTE(v139) = 0;
        sub_21CB84D44();
        v91 = *(&v146 + 1);
        v4[120] = v146;
        *(v4 + 16) = v91;
        LOBYTE(v139) = 0;
        sub_21CB84D44();
        v92 = *(&v146 + 1);
        v4[136] = v146;
        *(v4 + 18) = v92;
        *(v4 + 19) = swift_getKeyPath();
        *(v4 + 20) = 0;
        v4[168] = 0;
        *(v4 + 22) = swift_getKeyPath();
        v4[184] = 0;
        v93 = v116;
        v94 = *(v116 + 116);
        *&v4[v94] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
        swift_storeEnumTagMultiPayload();
        v95 = &v4[v93[30]];
        type metadata accessor for PMCombinedAccountDetailsModel(0);
        sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
        *v95 = sub_21CB823C4();
        v95[1] = v96;
        v97 = v93[31];
        type metadata accessor for PMWiFiDetailsModel();
        sub_21C705F40(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
        sub_21CB821F4();
        *&v4[v93[32]] = 0;
        v98 = &v4[v93[33]];
        *v98 = 0x707954656772616CLL;
        *(v98 + 1) = 0xE900000000000065;
        *v4 = v128;
        *(v4 + 1) = v51;
        *(v4 + 2) = v55;
        *(v4 + 3) = v57;
        *(v4 + 4) = v88;
        *(v4 + 5) = v87;
        *(v4 + 6) = 0;
        v4[56] = 1;
        *(v4 + 57) = 0;
        *(v4 + 8) = 0;
        *(v4 + 9) = 0;
        *(v4 + 20) = 257;
        *(v4 + 42) = 256;
        v4[86] = 0;
        sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
        v99 = v118;
        sub_21CB845C4();
        sub_21C6EA794(v4, &qword_27CDF1B78, &qword_21CBBE2D0);
        swift_getKeyPath();
        swift_getKeyPath();
        v100 = v115;
        sub_21CB81DB4();

        v101 = v111;
        sub_21C942ED4(v100 + *(v135 + 24), v111, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C943938(v100, type metadata accessor for PMAccount);
          sub_21C943938(v101, type metadata accessor for PMAccount.Storage);
          v102 = 0;
        }

        else
        {
          v103 = *v101;
          v102 = [*v101 userIsNeverSaveMarker];

          sub_21C943938(v100, type metadata accessor for PMAccount);
        }

        KeyPath = swift_getKeyPath();
        v105 = swift_allocObject();
        *(v105 + 16) = v102;
        v106 = v117;
        sub_21C716934(v99, v117, &qword_27CDF1B80, &qword_21CBB2550);
        v107 = (v106 + *(v134 + 36));
        *v107 = KeyPath;
        v107[1] = sub_21C87E800;
        v107[2] = v105;
        v108 = v119;
        sub_21C716934(v106, v119, &qword_27CDF1C00, &qword_21CBB2610);
        sub_21C6EDBAC(v108, v133, &qword_27CDF1C00, &qword_21CBB2610);
        swift_storeEnumTagMultiPayload();
        sub_21C943998();
        sub_21C943AAC();
        v84 = v137;
        sub_21CB83494();
        sub_21C6EA794(v108, &qword_27CDF1C00, &qword_21CBB2610);
        goto LABEL_20;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v87 = *(&v146 + 1);
    v88 = v146;
    goto LABEL_16;
  }

  sub_21C943938(v42, type metadata accessor for PMAccount);
  sub_21C943938(v32, type metadata accessor for PMAccount.Storage);
LABEL_12:
  sub_21CB81014();
  v136 = sub_21CB81004();
  v135 = v62;
  v63 = *(v129 + 8);
  v64 = v130;
  v63(v24, v130);
  sub_21CB81014();
  v65 = sub_21CB81004();
  v67 = v66;
  v63(v24, v64);
  v68 = v127;
  v69 = *v127;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v130 = v146;
  v70 = v147;
  v71 = v122;
  sub_21C942ED4(v68, v122, type metadata accessor for PMCombinedAccountDetailsView);
  v72 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v73 = swift_allocObject();
  sub_21C943454(v71, v73 + v72, type metadata accessor for PMCombinedAccountDetailsView);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v74 = v139;
  v139 = v130;
  v140 = v70;
  *&v141 = v65;
  *(&v141 + 1) = v67;
  *&v142 = v136;
  *(&v142 + 1) = v135;
  v143 = 0uLL;
  *&v144 = sub_21C9440BC;
  *(&v144 + 1) = v73;
  v145 = v74;
  v75 = v68 + *(v123 + 60);
  v76 = *v75;
  v77 = *(v75 + 8);
  LOBYTE(v75) = *(v75 + 16);
  LOBYTE(v146) = v76;
  *(&v146 + 1) = v77;
  LOBYTE(v147) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  sub_21CB81F74();
  v138 = 1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1438, &qword_21CBB14B8);
  v79 = sub_21C853458();
  v80 = sub_21C940D0C();
  v81 = v124;
  sub_21CB84824();

  v150 = v143;
  v151 = v144;
  v152 = v145;
  v146 = v139;
  v147 = v140;
  v148 = v141;
  v149 = v142;
  sub_21C8534AC(&v146);
  *&v139 = &type metadata for PMTextFieldWithSuggestions;
  *(&v139 + 1) = v78;
  *&v140 = v79;
  *(&v140 + 1) = v80;
  swift_getOpaqueTypeConformance2();
  v82 = v126;
  v83 = v128;
  sub_21CB845C4();
  (*(v125 + 8))(v81, v83);
  sub_21C6EDBAC(v82, v133, &qword_27CDF1C18, &qword_21CBB2628);
  swift_storeEnumTagMultiPayload();
  sub_21C943998();
  sub_21C943AAC();
  v84 = v137;
  sub_21CB83494();
  sub_21C6EA794(v82, &qword_27CDF1C18, &qword_21CBB2628);
LABEL_20:
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C20, &qword_21CBB2630);
  return (*(*(v109 - 8) + 56))(v84, 0, 1, v109);
}