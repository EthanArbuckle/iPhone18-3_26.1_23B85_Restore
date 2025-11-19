void sub_2759475F0(__int128 *a1)
{
  v5 = *(a1 + 16);
  v7 = *(a1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  sub_2759B9D68();
  if (v4 > 2u)
  {
    v6 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
    sub_2759B9D68();
    if (v4)
    {
      swift_getKeyPath();
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v2 = *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
      v3 = v2;

      if (v2)
      {

        sub_275946D64();
      }
    }
  }

  else
  {
    if (qword_280A0E3A8 != -1)
    {
      swift_once();
    }

    MEMORY[0x28223BE20](qword_280A239A8);
    sub_2759B9008();
  }
}

uint64_t sub_2759477AC(uint64_t a1)
{
  sub_275947494();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  return sub_2759B9D78();
}

unint64_t sub_27594782C()
{
  result = qword_280A11450;
  if (!qword_280A11450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11450);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for ManageStorageThermometerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2759B8DA8();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = *(v5 + *(v1 + 44) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_275947A10(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ManageStorageThermometerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_275947A84()
{
  result = qword_280A11478;
  if (!qword_280A11478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11468, &qword_2759CB380);
    sub_27589B02C(&qword_280A11480, &qword_280A11460, &qword_2759CB378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11478);
  }

  return result;
}

uint64_t sub_275947B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275947C18()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  return sub_2759B9D78();
}

unint64_t sub_275947CA0()
{
  result = qword_280A114C0;
  if (!qword_280A114C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A114C0);
  }

  return result;
}

unint64_t sub_275947CF4()
{
  result = qword_280A114C8;
  if (!qword_280A114C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A114B8, &qword_2759CB468);
    sub_275947CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A114C8);
  }

  return result;
}

uint64_t sub_275947D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_275947DE8()
{
  result = qword_280A114D0;
  if (!qword_280A114D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A114A0, &qword_2759CB450);
    sub_275947E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A114D0);
  }

  return result;
}

unint64_t sub_275947E74()
{
  result = qword_280A114D8;
  if (!qword_280A114D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11498, &qword_2759CB448);
    sub_275947B3C(&qword_280A114E0, type metadata accessor for ComplexThermometer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A114D8);
  }

  return result;
}

void sub_275947F78()
{
  sub_27593EFC4();
  if (v0 <= 0x3F)
  {
    sub_2758BEB54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275948050()
{
  sub_27593EFC4();
  if (v0 <= 0x3F)
  {
    sub_27594812C(319, &qword_280A0F908, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2758BEB54();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27594812C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_27594817C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2759481D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_27594829C()
{
  result = qword_280A11530;
  if (!qword_280A11530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11520, &qword_2759CB6A0);
    sub_27589B02C(&qword_280A11538, &qword_280A11540, &qword_2759CB6B0);
    sub_27589B02C(&qword_280A11548, &qword_280A11550, &unk_2759CB6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11530);
  }

  return result;
}

uint64_t sub_275948380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2759483E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ComplexThermometer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_27593F24C(a1, v6, a2);
}

uint64_t objectdestroy_64Tm()
{
  v1 = (type metadata accessor for ComplexThermometer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2759B8F58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;

  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v3 + 24);

  v12 = *(v0 + v3 + 32);

  v13 = *(v0 + v3 + 48);

  v14 = *(v0 + v3 + 64);

  v15 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_2759B8DA8();
    (*(*(v16 - 8) + 8))(v9 + v15, v16);
  }

  else
  {
    v17 = *(v9 + v15);
  }

  v18 = v2 | v7;
  v19 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v19, v5);

  return MEMORY[0x2821FE8E8](v0, v19 + v8, v18 | 7);
}

void sub_27594863C()
{
  v1 = *(type metadata accessor for ComplexThermometer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(*(sub_2759B8F58() - 8) + 80);
  sub_275940A28((v0 + v2));
}

unint64_t sub_2759486FC()
{
  result = qword_280A115C0;
  if (!qword_280A115C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11598, &qword_2759CB700);
    sub_275948788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A115C0);
  }

  return result;
}

unint64_t sub_275948788()
{
  result = qword_280A115C8;
  if (!qword_280A115C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A115B0, &qword_2759CB718);
    sub_27589B02C(&qword_280A115D0, &qword_280A115D8, &qword_2759CB728);
    sub_27589B02C(&qword_280A115E0, &qword_280A115B8, &qword_2759CB720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A115C8);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{
  v1 = (type metadata accessor for ComplexThermometer(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 64);

  v11 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2759B8DA8();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2759489B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComplexThermometer(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2759400A8(a1, v6, a2);
}

unint64_t sub_275948A30()
{
  result = qword_280A11620;
  if (!qword_280A11620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11608, &qword_2759CB798);
    sub_275948AE8();
    sub_27589B02C(&qword_280A11650, &qword_280A11658, &unk_2759CF990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11620);
  }

  return result;
}

unint64_t sub_275948AE8()
{
  result = qword_280A11628;
  if (!qword_280A11628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11630, &qword_2759CB7A0);
    sub_275948BA0();
    sub_27589B02C(&qword_280A0F1F0, &qword_280A0F1F8, &unk_2759CB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11628);
  }

  return result;
}

unint64_t sub_275948BA0()
{
  result = qword_280A11638;
  if (!qword_280A11638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11640, &qword_2759CB7A8);
    sub_275948C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11638);
  }

  return result;
}

unint64_t sub_275948C2C()
{
  result = qword_280A11648;
  if (!qword_280A11648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11648);
  }

  return result;
}

uint64_t sub_275948C80()
{
  v1 = type metadata accessor for ComplexThermometer(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  if (*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16) <= 2u)
  {
    return sub_2759B8E08();
  }

  return result;
}

unint64_t sub_275948D0C()
{
  result = qword_280A116C0;
  if (!qword_280A116C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A116C8, &qword_2759CB868);
    sub_27589B02C(&qword_280A116D0, &qword_280A116D8, &qword_2759CB870);
    sub_275947B3C(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A116C0);
  }

  return result;
}

unint64_t sub_275948DF4()
{
  result = qword_280A116E0;
  if (!qword_280A116E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11670, &qword_2759CB820);
    sub_27589B02C(&qword_280A116E8, &qword_280A116F0, &qword_2759CB878);
    sub_275948EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A116E0);
  }

  return result;
}

unint64_t sub_275948EAC()
{
  result = qword_280A116F8;
  if (!qword_280A116F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11700, &qword_2759CB880);
    sub_27594917C(&qword_280A116B8, &qword_280A116B0, &qword_2759CB860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A116F8);
  }

  return result;
}

unint64_t sub_275948F5C()
{
  result = qword_280A11708;
  if (!qword_280A11708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A116A0, &qword_2759CB850);
    sub_275949014();
    sub_2759492C8(&qword_280A11738, &qword_280A11688, &qword_2759CB838, sub_2759491E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11708);
  }

  return result;
}

unint64_t sub_275949014()
{
  result = qword_280A11710;
  if (!qword_280A11710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A116A8, &qword_2759CB858);
    sub_275949098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11710);
  }

  return result;
}

unint64_t sub_275949098()
{
  result = qword_280A11718;
  if (!qword_280A11718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11720, &qword_2759CB888);
    sub_27589B02C(&qword_280A11538, &qword_280A11540, &qword_2759CB6B0);
    sub_27594917C(&qword_280A11728, &qword_280A11730, &qword_2759CB890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11718);
  }

  return result;
}

uint64_t sub_27594917C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_275948D0C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2759491E4()
{
  result = qword_280A11740;
  if (!qword_280A11740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11680, &qword_2759CB830);
    sub_27589B02C(&qword_280A116E8, &qword_280A116F0, &qword_2759CB878);
    sub_27594917C(&qword_280A11728, &qword_280A11730, &qword_2759CB890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11740);
  }

  return result;
}

uint64_t sub_2759492C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_275947B3C(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  v1 = type metadata accessor for StorageThermometerCategoriesView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 8);

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2759B8DA8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[9]);

  v11 = *(v5 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2759494DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for StorageThermometerCategoriesView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_275949588()
{
  result = qword_280A11768;
  if (!qword_280A11768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11770, &qword_2759CB940);
    sub_27594829C();
    sub_27589B02C(&qword_280A11558, &qword_280A11510, &qword_2759CB690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11768);
  }

  return result;
}

unint64_t sub_275949640()
{
  result = qword_280A11788;
  if (!qword_280A11788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11790, &unk_2759CB950);
    sub_275948F5C();
    sub_2759492C8(&qword_280A11748, &qword_280A11678, &qword_2759CB828, sub_275948DF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11788);
  }

  return result;
}

uint64_t sub_27594972C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72476D6574737973 && a2 == 0xEB000000006E6565;
  if (v4 || (sub_2759BAAC8() & 1) != 0)
  {
    v5 = [objc_opt_self() systemGreenColor];
    goto LABEL_7;
  }

  if (a1 == 0x65596D6574737973 && a2 == 0xEC000000776F6C6CLL || (sub_2759BAAC8() & 1) != 0)
  {
    v5 = [objc_opt_self() systemYellowColor];
    goto LABEL_7;
  }

  if (a1 == 0x65526D6574737973 && a2 == 0xE900000000000064 || (sub_2759BAAC8() & 1) != 0)
  {
    v5 = [objc_opt_self() systemRedColor];
LABEL_7:
    v6 = v5;

    return sub_2759B9BD8();
  }

  if (a1 == 0x616E726574617571 && a2 == 0xEF6C6562614C7972 || (sub_2759BAAC8() & 1) != 0)
  {
    v8 = [objc_opt_self() quaternaryLabelColor];

    return sub_2759B9BD8();
  }

  return sub_2759B9C68();
}

uint64_t sub_27594991C()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2759B9BF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v5 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v6 = sub_2759BA258();
  v7 = [v5 initWithString_];

  LODWORD(v6) = [v7 scanHexLongLong_];
  result = 0;
  if (v6)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CE0EE0], v0);
    result = sub_2759B9C78();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_275949BD4(uint64_t a1, SEL *a2, uint64_t (*a3)(id), uint64_t *a4)
{
  v6 = [objc_opt_self() *a2];
  result = a3(v6);
  *a4 = result;
  return result;
}

id sub_275949C68(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  sub_2758BB4AC(a1, &v15 - v8);
  v10 = sub_2759B8508();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v12 = sub_2759B84B8();
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    a2 = sub_2759BA1C8();
  }

  v13 = [v3 openSensitiveURL:v12 withOptions:a2];

  return v13;
}

uint64_t sub_275949DD4()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275949F08()
{
  sub_2759BA328();
}

uint64_t sub_27594A048()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27594A1B0()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27594A310()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27594A440()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27594A594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2759BA258();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_27594A654;
  v10[3] = &block_descriptor_11;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_27594A654(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v5 = sub_2759BA1C8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t DriveDeleteError.hashValue.getter()
{
  v1 = *v0;
  sub_2759BABD8();
  MEMORY[0x277C84980](v1);
  return sub_2759BAC08();
}

uint64_t DriveDeleteAction.skipObservation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  swift_beginAccess();
  return sub_27586FBC8(v1 + v3, a1, &qword_280A0FC48, &qword_2759C79C0);
}

uint64_t DriveDeleteAction.skipObservation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  swift_beginAccess();
  sub_2758CE724(a1, v1 + v3, &qword_280A0FC48, &qword_2759C79C0);
  return swift_endAccess();
}

uint64_t DriveDeleteAction.modifyView(_:with:localStore:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v5 = *(v3 + 40);
  sub_27586E058(a1, &v45);
  v6 = *(v5 + 16);

  if (!v6)
  {
LABEL_6:

    sub_275827D1C(&v45, a3);
    v12 = v35[2];
    sub_27586E058(a3, &v41);
    v13 = *(v12 + 16);

    if (v13)
    {
      v14 = 0;
      v15 = v12 + 32;
      while (v14 < *(v12 + 16))
      {
        sub_27586E058(v15, &v38);
        v16 = v40;
        __swift_project_boxed_opaque_existential_1(&v38, v39);
        v17 = *(v16 + 8);
        sub_2759B8B28();
        if (v4)
        {
LABEL_22:
          __swift_destroy_boxed_opaque_existential_1(&v41);

          __swift_destroy_boxed_opaque_existential_1(&v38);
          v34 = a3;
          return __swift_destroy_boxed_opaque_existential_1(v34);
        }

        ++v14;
        __swift_destroy_boxed_opaque_existential_1(&v41);
        __swift_destroy_boxed_opaque_existential_1(&v38);
        result = sub_275827D1C(v37, &v41);
        v15 += 40;
        if (v13 == v14)
        {
          goto LABEL_11;
        }
      }

LABEL_26:
      __break(1u);
    }

    else
    {
LABEL_11:

      sub_275827D1C(&v41, &v45);
      __swift_destroy_boxed_opaque_existential_1(a3);
      sub_275827D1C(&v45, a3);
      v18 = v35[3];
      sub_27586E058(a3, &v41);
      v19 = *(v18 + 16);

      if (!v19)
      {
LABEL_16:

        sub_275827D1C(&v41, &v45);
        __swift_destroy_boxed_opaque_existential_1(a3);
        sub_275827D1C(&v45, a3);
        v24 = v35[4];
        sub_27586E058(a3, &v41);
        v25 = *(v24 + 16);

        if (!v25)
        {
LABEL_21:

          sub_275827D1C(&v41, &v45);
          __swift_destroy_boxed_opaque_existential_1(a3);
          sub_275827D1C(&v45, a3);
          v30 = a3[3];
          v31 = a3[4];
          v49 = __swift_project_boxed_opaque_existential_1(a3, v30);
          swift_getKeyPath();
          swift_allocObject();
          swift_weakInit();
          v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
          v33 = sub_27585D258();
          *&v45 = v30;
          *(&v45 + 1) = v32;
          v46 = v31;
          OpaqueTypeMetadata2 = v33;
          OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
          *&v41 = v30;
          *(&v41 + 1) = v32;
          v42 = v31;
          v43 = v33;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          __swift_allocate_boxed_opaque_existential_1(&v45);
          sub_2759B9B18();

          __swift_destroy_boxed_opaque_existential_1(a3);
          return sub_275827D1C(&v45, a3);
        }

        v26 = 0;
        v27 = v24 + 32;
        while (v26 < *(v24 + 16))
        {
          sub_27586E058(v27, &v38);
          v28 = v40;
          __swift_project_boxed_opaque_existential_1(&v38, v39);
          v29 = *(v28 + 8);
          sub_2759B8B28();
          if (v4)
          {
            goto LABEL_22;
          }

          ++v26;
          __swift_destroy_boxed_opaque_existential_1(&v41);
          __swift_destroy_boxed_opaque_existential_1(&v38);
          result = sub_275827D1C(v37, &v41);
          v27 += 40;
          if (v25 == v26)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_28;
      }

      v20 = 0;
      v21 = v18 + 32;
      while (v20 < *(v18 + 16))
      {
        sub_27586E058(v21, &v38);
        v22 = v40;
        __swift_project_boxed_opaque_existential_1(&v38, v39);
        v23 = *(v22 + 8);
        sub_2759B8B28();
        if (v4)
        {
          goto LABEL_22;
        }

        ++v20;
        __swift_destroy_boxed_opaque_existential_1(&v41);
        __swift_destroy_boxed_opaque_existential_1(&v38);
        result = sub_275827D1C(v37, &v41);
        v21 += 40;
        if (v19 == v20)
        {
          goto LABEL_16;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = v5 + 32;
  while (1)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    sub_27586E058(v9, &v41);
    v10 = v44;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    v11 = *(v10 + 8);
    sub_2759B8B28();
    if (v4)
    {
      break;
    }

    ++v8;
    __swift_destroy_boxed_opaque_existential_1(&v45);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    result = sub_275827D1C(&v38, &v45);
    v9 += 40;
    if (v6 == v8)
    {
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v45);

  v34 = &v41;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

void sub_27594ADB0(void *a1)
{
  if (*a1)
  {
    v1 = *(*a1 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_account);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account);
      *(Strong + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account) = v1;
      v4 = v1;
    }
  }
}

uint64_t DriveDeleteAction.performAction(with:localStore:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_2759B85A8();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27594AF0C, 0, 0);
}

uint64_t sub_27594AF0C()
{
  v32 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_2759B8598();
  v4 = sub_2759B8588();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v8 = sub_275953258(8, v4, v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = MEMORY[0x277C840B0](v8, v10, v12, v14);
  v17 = v16;

  v0[15] = v15;
  v0[16] = v17;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v18 = sub_2759B89A8();
  __swift_project_value_buffer(v18, qword_280A23900);

  v19 = sub_2759B8988();
  v20 = sub_2759BA668();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 136446210;
    v31[0] = v22;
    v31[1] = 91;
    v31[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](0xD000000000000011, 0x80000002759CB9E0);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v15, v17);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v23 = sub_2758937B8(91, 0xE100000000000000, v31);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_275819000, v19, v20, "%{public}s initiated", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x277C85860](v22, -1, -1);
    MEMORY[0x277C85860](v21, -1, -1);
  }

  v24 = v0[11];
  v25 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController;
  v0[17] = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController;
  v26 = *__swift_project_boxed_opaque_existential_1((v24 + v25), *(v24 + v25 + 24));
  sub_27598B4AC();
  v0[2] = 0xD000000000000011;
  v0[3] = 0x80000002759CB9E0;
  v0[4] = v15;
  v0[5] = v17;
  v27 = swift_task_alloc();
  v0[18] = v27;
  *v27 = v0;
  v27[1] = sub_27594B240;
  v28 = v0[11];
  v29 = v0[9];

  return sub_27594B4D0((v0 + 6), v29, v0 + 2);
}

uint64_t sub_27594B240()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27594B33C, 0, 0);
}

uint64_t sub_27594B33C()
{
  v29 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = v1 >> 62;
  v5 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  if (v1 >> 62 == 2)
  {
    v6 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  if (v1 >> 62 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = *(v0 + 48);
  }

  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v24 = v11;
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 120);
  v25 = *(v0 + 112);
  v26[0] = *(v0 + 48);
  v15 = *(v0 + 80);
  v16 = *(v0 + 72);
  v17 = (*(v0 + 88) + v12);
  v26[1] = v2;
  v27 = v3;
  v28[0] = 0xD000000000000011;
  v28[1] = 0x80000002759CB9E0;
  v28[2] = v14;
  v28[3] = v13;
  v23 = v3;
  v18 = v5;
  v19 = v10;
  sub_27594CC08(v26, v16, v15, v28);

  v20 = *__swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_27598B724();
  sub_275951E00(v10, v24, v2, v23, sub_27594A594);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_27594B4D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  v5 = *a3;
  *(v4 + 200) = v3;
  *(v4 + 208) = v5;
  *(v4 + 216) = *(a3 + 1);
  *(v4 + 232) = a3[3];
  return MEMORY[0x2822009F8](sub_27594B508, 0, 0);
}

uint64_t sub_27594B508()
{
  v50 = v0;
  v1 = *(v0 + 200);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account);
  *(v0 + 240) = v2;
  if (v2)
  {
    swift_beginAccess();
    sub_27586FBC8(v1 + 48, v0 + 56, &qword_280A117A8, &unk_2759CBA38);
    if (*(v0 + 80))
    {
      sub_275827D1C((v0 + 56), v0 + 16);
      v3 = v2;
    }

    else
    {
      v21 = objc_opt_self();
      v22 = v2;
      v23 = [v21 defaultManager];
      v24 = [objc_opt_self() defaultManager];
      v25 = type metadata accessor for ICSCloudDocsFileProviderHelper();
      v26 = swift_allocObject();
      v27 = type metadata accessor for ICSiCloudDriveFileProvider();
      v28 = swift_allocObject();
      v28[7] = v25;
      v28[8] = &protocol witness table for ICSCloudDocsFileProviderHelper;
      v28[3] = v24;
      v28[4] = v26;
      v28[9] = v22;
      v28[2] = v23;
      *(v0 + 40) = v27;
      *(v0 + 48) = &protocol witness table for ICSiCloudDriveFileProvider;
      *(v0 + 16) = v28;
      if (*(v0 + 80))
      {
        sub_27586BF04(v0 + 56, &qword_280A117A8, &unk_2759CBA38);
      }
    }

    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 232);
    v30 = *(v0 + 216);
    v31 = sub_2759B89A8();
    *(v0 + 248) = __swift_project_value_buffer(v31, qword_280A23900);

    v32 = sub_2759B8988();
    v33 = sub_2759BA668();

    if (os_log_type_enabled(v32, v33))
    {
      v35 = *(v0 + 224);
      v34 = *(v0 + 232);
      v37 = *(v0 + 208);
      v36 = *(v0 + 216);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136446210;
      v47 = v39;
      v48 = 91;
      v49 = 0xE100000000000000;

      MEMORY[0x277C840E0](v37, v36);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v35, v34);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v40 = sub_2758937B8(91, 0xE100000000000000, &v47);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_275819000, v32, v33, "%{public}s Fetching files", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x277C85860](v39, -1, -1);
      MEMORY[0x277C85860](v38, -1, -1);
    }

    v41 = *(v0 + 40);
    v42 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v41);
    v43 = *(v42 + 8);
    v46 = (v43 + *v43);
    v44 = v43[1];
    v45 = swift_task_alloc();
    *(v0 + 256) = v45;
    *v45 = v0;
    v45[1] = sub_27594BB44;

    return v46(v41, v42);
  }

  else
  {
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 232);
    v5 = *(v0 + 216);
    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_280A23900);

    v7 = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 224);
      v9 = *(v0 + 232);
      v12 = *(v0 + 208);
      v11 = *(v0 + 216);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136446210;
      v47 = v14;
      v48 = 91;
      v49 = 0xE100000000000000;

      MEMORY[0x277C840E0](v12, v11);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v10, v9);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v15 = sub_2758937B8(91, 0xE100000000000000, &v47);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_275819000, v7, v8, "%{public}s no account, bailing", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x277C85860](v14, -1, -1);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    v16 = *(v0 + 184);
    sub_275954004();
    v17 = swift_allocError();
    *v18 = 2;
    *v16 = v17;
    *(v16 + 8) = 0;
    *(v16 + 16) = 1;
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_27594BB44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v7 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v5 = sub_27594C6CC;
  }

  else
  {
    v5 = sub_27594BC58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27594BC58()
{
  v27 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  swift_bridgeObjectRetain_n();

  v5 = sub_2759B8988();
  v6 = sub_2759BA668();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 264);
  if (v7)
  {
    v9 = *(v0 + 232);
    v25 = *(v0 + 224);
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136446466;
    v26[0] = v13;
    v26[1] = 91;
    v26[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v11, v10);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v25, v9);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v14 = sub_2758937B8(91, 0xE100000000000000, v26);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2050;
    if (v8 >> 62)
    {
      if (*(v0 + 264) < 0)
      {
        v24 = *(v0 + 264);
      }

      v15 = sub_2759BA9E8();
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = *(v0 + 264);

    *(v12 + 14) = v15;

    _os_log_impl(&dword_275819000, v5, v6, "%{public}s Deleting %{public}ld files", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  else
  {
    v17 = *(v0 + 264);
    swift_bridgeObjectRelease_n();
  }

  v19 = *(v0 + 224);
  v18 = *(v0 + 232);
  *(v0 + 96) = *(v0 + 208);
  *(v0 + 112) = v19;
  *(v0 + 120) = v18;
  v20 = swift_task_alloc();
  *(v0 + 280) = v20;
  *v20 = v0;
  v20[1] = sub_27594BF10;
  v21 = *(v0 + 264);
  v22 = *(v0 + 200);

  return sub_2759538D4(v21, v0 + 96);
}

uint64_t sub_27594BF10()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_27594C258;
  }

  else
  {
    v3 = sub_27594C024;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27594C024()
{
  v20 = v0;
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[27];

  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[28];
    v6 = v0[29];
    v9 = v0[26];
    v8 = v0[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v19[0] = v11;
    v19[1] = 91;
    v19[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v9, v8);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v7, v6);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v12 = sub_2758937B8(91, 0xE100000000000000, v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_275819000, v4, v5, "%{public}s Syncing deleted files", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v14 = v0[28];
  v13 = v0[29];
  *(v0 + 8) = *(v0 + 13);
  v0[18] = v14;
  v0[19] = v13;
  v15 = swift_task_alloc();
  v0[37] = v15;
  *v15 = v0;
  v15[1] = sub_27594C504;
  v16 = v0[24];
  v17 = v0[25];

  return sub_27594ED40((v0 + 2), v16, v0 + 16);
}

uint64_t sub_27594C258()
{
  v28 = v0;
  v1 = v0[36];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[27];

  v5 = v1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[29];
    v25 = v0[28];
    v26 = v0[36];
    v9 = v0[26];
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136446466;
    v27[0] = v13;
    v27[1] = 91;
    v27[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v9, v10);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v25, v8);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v14 = sub_2758937B8(91, 0xE100000000000000, v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v26;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_275819000, v6, v7, "%{public}s caught error during delete: %@", v11, 0x16u);
    sub_27586BF04(v12, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  v17 = v0[33];
  if (v17 >> 62)
  {
    v18 = sub_2759BA9E8();
    v24 = v0[33];
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v0[36];
  v20 = v0[30];
  v21 = v0[23];

  *v21 = v19 | 0x4000000000000000;
  *(v21 + 8) = v18;
  *(v21 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v22 = v0[1];

  return v22();
}

uint64_t sub_27594C504()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_27594C95C;
  }

  else
  {
    v3 = sub_27594C618;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27594C618()
{
  v1 = v0[33];
  if (v1 >> 62)
  {
    v2 = sub_2759BA9E8();
    v7 = v0[33];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[30];
  v4 = v0[23];

  *v4 = 0xC000000000000000;
  *(v4 + 8) = v2;
  *(v4 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_27594C6CC()
{
  v25 = v0;
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[27];

  v5 = v1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[29];
    v22 = v0[34];
    v23 = v0[30];
    v9 = v0[27];
    v21 = v0[28];
    v10 = v0[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136446466;
    v24[0] = v13;
    v24[1] = 91;
    v24[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v10, v9);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v21, v8);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v14 = sub_2758937B8(91, 0xE100000000000000, v24);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v22;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_275819000, v6, v7, "%{public}s caught error during fetch: %@", v11, 0x16u);
    sub_27586BF04(v12, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  else
  {
    v17 = v0[30];
  }

  v18 = v0[23];
  *v18 = v0[34];
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v19 = v0[1];

  return v19();
}

uint64_t sub_27594C95C()
{
  v28 = v0;
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[27];

  v5 = v1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA648();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[29];
    v25 = v0[28];
    v26 = v0[38];
    v9 = v0[26];
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136446466;
    v27[0] = v13;
    v27[1] = 91;
    v27[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v9, v10);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v25, v8);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v14 = sub_2758937B8(91, 0xE100000000000000, v27);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    v15 = v26;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&dword_275819000, v6, v7, "%{public}s caught error: %@", v11, 0x16u);
    sub_27586BF04(v12, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v11, -1, -1);
  }

  v17 = v0[33];
  if (v17 >> 62)
  {
    v18 = sub_2759BA9E8();
    v24 = v0[33];
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = v0[38];
  v20 = v0[30];
  v21 = v0[23];

  *v21 = v19 | 0x8000000000000000;
  *(v21 + 8) = v18;
  *(v21 + 16) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v22 = v0[1];

  return v22();
}

uint64_t sub_27594CC08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[3];
  v58 = *a4;
  v59 = a4[2];
  v10 = *a1 >> 62;
  p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
  if (v10 <= 1)
  {
    v12 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    v13 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_280A23900);

    v15 = v12;
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v18 = 136446466;
      v60 = v54;

      MEMORY[0x277C840E0](v58, v8);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v59, v9);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v20 = sub_2758937B8(91, 0xE100000000000000, &v60);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2112;
      v21 = v12;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;

      _os_log_impl(&dword_275819000, v16, v17, "%{public}s client error while deleting files: %@", v18, 0x16u);
      sub_27586BF04(v19, &unk_280A0FDE0, &unk_2759C2650);
      v23 = v19;
      p_prots = (&OBJC_PROTOCOL___RUIObjectModelDelegate + 16);
      MEMORY[0x277C85860](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x277C85860](v54, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    else
    {
    }

    v34 = *(v4 + 24);

LABEL_19:
    sub_2759BA438();

    goto LABEL_20;
  }

  if (v10 != 2)
  {
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v35 = sub_2759B89A8();
    __swift_project_value_buffer(v35, qword_280A23900);

    v36 = sub_2759B8988();
    v37 = sub_2759BA668();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 136446210;
      v60 = v39;

      MEMORY[0x277C840E0](v58, v8);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v59, v9);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v40 = sub_2758937B8(91, 0xE100000000000000, &v60);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_275819000, v36, v37, "%{public}s performing success actions", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v41 = v39;
      p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
      MEMORY[0x277C85860](v41, -1, -1);
      v42 = v38;
      v5 = v4;
      MEMORY[0x277C85860](v42, -1, -1);
    }

    v43 = *(v5 + 16);

    goto LABEL_19;
  }

  v24 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v25 = sub_2759B89A8();
  __swift_project_value_buffer(v25, qword_280A23900);

  v26 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v27 = sub_2759B8988();
  v28 = sub_2759BA648();

  if (os_log_type_enabled(v27, v28))
  {
    v56 = v28;
    v29 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v29 = 136446466;
    v60 = v57;

    MEMORY[0x277C840E0](v58, v8);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v59, v9);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v30 = sub_2758937B8(91, 0xE100000000000000, &v60);

    *(v29 + 4) = v30;
    p_prots = &OBJC_PROTOCOL___RUIObjectModelDelegate.prots;
    *(v29 + 12) = 2112;
    v31 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 14) = v32;
    *v55 = v32;
    _os_log_impl(&dword_275819000, v27, v56, "%{public}s sync error while deleting files: %@", v29, 0x16u);
    sub_27586BF04(v55, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v55, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x277C85860](v57, -1, -1);
    MEMORY[0x277C85860](v29, -1, -1);
  }

  v33 = *(v4 + 32);

  sub_2759BA438();

LABEL_20:
  if (p_prots[108] != -1)
  {
    swift_once();
  }

  v44 = sub_2759B89A8();
  __swift_project_value_buffer(v44, qword_280A23900);

  v45 = sub_2759B8988();
  v46 = sub_2759BA668();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v5;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 136446210;
    v60 = v49;

    MEMORY[0x277C840E0](v58, v8);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v59, v9);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v50 = sub_2758937B8(91, 0xE100000000000000, &v60);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_275819000, v45, v46, "%{public}s performing completion actions", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x277C85860](v49, -1, -1);
    v51 = v48;
    v5 = v47;
    MEMORY[0x277C85860](v51, -1, -1);
  }

  v52 = *(v5 + 40);

  sub_2759BA438();
}

uint64_t sub_27594D4F8()
{
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_27594D61C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275953F50();
  *a2 = result;
  return result;
}

void sub_27594D64C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x656C706D6F436E6FLL;
  v5 = 0xEB00000000726F72;
  v6 = 0x7245636E79536E6FLL;
  v7 = 0x5255796669746F6ELL;
  v8 = 0xEF6E6F6974617672;
  if (v2 == 4)
  {
    v8 = 0xE90000000000004CLL;
  }

  else
  {
    v7 = 0x6573624F70696B73;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE900000000000073;
  v10 = 0x7365636375536E6FLL;
  if (v2 != 1)
  {
    v10 = 0x746E65696C436E6FLL;
    v9 = 0xED0000726F727245;
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

uint64_t sub_27594D738()
{
  v1 = *v0;
  v2 = 0x656C706D6F436E6FLL;
  v3 = 0x7245636E79536E6FLL;
  v4 = 0x5255796669746F6ELL;
  if (v1 != 4)
  {
    v4 = 0x6573624F70696B73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7365636375536E6FLL;
  if (v1 != 1)
  {
    v5 = 0x746E65696C436E6FLL;
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

uint64_t sub_27594D820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275953F50();
  *a1 = result;
  return result;
}

uint64_t sub_27594D854(uint64_t a1)
{
  v2 = sub_2759532F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27594D890(uint64_t a1)
{
  v2 = sub_2759532F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DriveDeleteAction.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DriveDeleteAction.init(from:)(a1);
  return v5;
}

void *DriveDeleteAction.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v151 = *v3;
  v152 = v2;
  v5 = sub_2759B89A8();
  v145 = *(v5 - 8);
  v146 = v5;
  v6 = *(v145 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v144 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v143 = &v125 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v142 = &v125 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v141 = &v125 - v15;
  v154 = sub_2759B8BD8();
  v147 = *(v154 - 8);
  v16 = *(v147 + 64);
  MEMORY[0x28223BE20](v154);
  v153 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11798, &unk_2759CBA28);
  v148 = *(v150 - 8);
  v18 = *(v148 + 64);
  MEMORY[0x28223BE20](v150);
  v20 = &v125 - v19;
  *(v3 + 3) = 0u;
  v21 = (v3 + 6);
  v3[10] = 0;
  *(v3 + 4) = 0u;
  v22 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_notifyURL;
  v23 = sub_2759B8C48();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v139 = v22;
  v138 = v23;
  v135 = v25;
  v134 = v24 + 56;
  (v25)(v3 + v22, 1, 1);
  v26 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v140 = v26;
  v137 = v29;
  v136 = v28 + 56;
  v29(v3 + v26, 1, 1, v27);
  *(v3 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account) = 0;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2759532F4();
  v149 = v20;
  v31 = &unk_280A23000;
  v32 = v152;
  v33 = a1;
  sub_2759BAC18();
  v34 = &unk_280A23000;
  v35 = v32;
  if (v32)
  {
    goto LABEL_40;
  }

  v132 = (v3 + 6);
  v133 = v3;
  v131 = v27;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v158) = 0;
  v37 = sub_2758C7304();
  v38 = v149;
  v39 = v150;
  sub_2759BAA68();
  v40 = v38;
  v130 = v37;
  if (v155)
  {
    v41 = v155;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v42 = *(v41 + 16);
  v128 = v33;
  v127 = v36;
  if (v42)
  {
    v129 = 0;
    v158 = MEMORY[0x277D84F90];
    v43 = v41;
    sub_2759509B0(0, v42, 0);
    v44 = v158;
    v152 = *(v147 + 16);
    v45 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v126 = v43;
    v46 = v43 + v45;
    v47 = *(v147 + 72);
    v48 = (v147 + 8);
    v49 = v154;
    do
    {
      v50 = v153;
      v152(v153, v46, v49);
      sub_2759B8BC8();
      v49 = v154;
      (*v48)(v50, v154);
      v158 = v44;
      v52 = *(v44 + 16);
      v51 = *(v44 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_2759509B0((v51 > 1), v52 + 1, 1);
        v49 = v154;
        v44 = v158;
      }

      *(v44 + 16) = v52 + 1;
      sub_275827D1C(&v155, v44 + 40 * v52 + 32);
      v46 += v47;
      --v42;
    }

    while (v42);

    v53 = v133;
    v54 = v128;
    v40 = v149;
    v39 = v150;
    v55 = v148;
    v35 = v129;
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
    v55 = v148;
    v54 = v33;
    v53 = v133;
  }

  v56 = v53;
  v53[5] = v44;
  LOBYTE(v158) = 2;
  sub_2759BAA68();
  if (v35)
  {
    (*(v55 + 8))(v40, v39);
LABEL_39:
    v3 = v56;
    v92 = v56[5];

    v33 = v54;
    v34 = &unk_280A23000;
    v21 = v132;
    v31 = &unk_280A23000;
LABEL_40:
    sub_27586BF04(v21, &qword_280A117A8, &unk_2759CBA38);
    sub_27586BF04(v3 + v34[319], &qword_280A0E8A8, qword_2759C2120);
    sub_27586BF04(v3 + v31[317], &qword_280A0FC48, &qword_2759C79C0);

    v93 = *(*v3 + 48);
    v94 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v33);
    return v3;
  }

  v57 = v55;
  if (v155)
  {
    v58 = v155;
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  v59 = *(v58 + 16);
  if (v59)
  {
    v129 = 0;
    v158 = MEMORY[0x277D84F90];
    v60 = v58;
    sub_2759509B0(0, v59, 0);
    v61 = v158;
    v152 = *(v147 + 16);
    v62 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v126 = v60;
    v63 = v60 + v62;
    v64 = *(v147 + 72);
    v65 = (v147 + 8);
    v66 = v154;
    do
    {
      v67 = v153;
      v152(v153, v63, v66);
      sub_2759B8BC8();
      v66 = v154;
      (*v65)(v67, v154);
      v158 = v61;
      v69 = *(v61 + 16);
      v68 = *(v61 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_2759509B0((v68 > 1), v69 + 1, 1);
        v66 = v154;
        v61 = v158;
      }

      *(v61 + 16) = v69 + 1;
      sub_275827D1C(&v155, v61 + 40 * v69 + 32);
      v63 += v64;
      --v59;
    }

    while (v59);

    v70 = v133;
    v54 = v128;
    v40 = v149;
    v39 = v150;
    v71 = v148;
    v35 = v129;
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
    v70 = v56;
    v71 = v57;
  }

  v56 = v70;
  v70[3] = v61;
  LOBYTE(v158) = 3;
  sub_2759BAA68();
  if (v35)
  {
    (*(v71 + 8))(v40, v39);
    v72 = v56[3];
LABEL_38:

    goto LABEL_39;
  }

  v73 = v71;
  if (v155)
  {
    v74 = v155;
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
  }

  v75 = *(v74 + 16);
  if (v75)
  {
    v129 = 0;
    v158 = MEMORY[0x277D84F90];
    v76 = v74;
    sub_2759509B0(0, v75, 0);
    v77 = v158;
    v152 = *(v147 + 16);
    v78 = (*(v147 + 80) + 32) & ~*(v147 + 80);
    v126 = v76;
    v79 = v76 + v78;
    v80 = *(v147 + 72);
    v81 = (v147 + 8);
    v82 = v154;
    do
    {
      v83 = v153;
      v152(v153, v79, v82);
      sub_2759B8BC8();
      v82 = v154;
      (*v81)(v83, v154);
      v158 = v77;
      v85 = *(v77 + 16);
      v84 = *(v77 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_2759509B0((v84 > 1), v85 + 1, 1);
        v82 = v154;
        v77 = v158;
      }

      *(v77 + 16) = v85 + 1;
      sub_275827D1C(&v155, v77 + 40 * v85 + 32);
      v79 += v80;
      --v75;
    }

    while (v75);

    v86 = v133;
    v54 = v128;
    v40 = v149;
    v87 = v150;
    v88 = v148;
    v35 = v129;
  }

  else
  {

    v77 = MEMORY[0x277D84F90];
    v86 = v56;
    v88 = v73;
    v87 = v39;
  }

  v56 = v86;
  v86[4] = v77;
  LOBYTE(v158) = 1;
  v89 = v87;
  sub_2759BAA68();
  if (v35)
  {
    (*(v88 + 8))(v40, v89);
    v90 = v56[3];

    v91 = v56[4];
    goto LABEL_38;
  }

  if (v155)
  {
    v96 = v155;
  }

  else
  {
    v96 = MEMORY[0x277D84F90];
  }

  v97 = *(v96 + 16);
  if (v97)
  {
    v129 = 0;
    v158 = MEMORY[0x277D84F90];
    sub_2759509B0(0, v97, 0);
    v98 = v158;
    v100 = *(v147 + 16);
    v99 = v147 + 16;
    v151 = v96;
    v152 = v100;
    v101 = v96 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    v102 = *(v147 + 72);
    v103 = (v147 + 8);
    v104 = v154;
    do
    {
      v105 = v153;
      v106 = v99;
      v152(v153, v101, v104);
      sub_2759B8BC8();
      v104 = v154;
      (*v103)(v105, v154);
      v158 = v98;
      v108 = *(v98 + 16);
      v107 = *(v98 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_2759509B0((v107 > 1), v108 + 1, 1);
        v104 = v154;
        v98 = v158;
      }

      *(v98 + 16) = v108 + 1;
      sub_275827D1C(&v155, v98 + 40 * v108 + 32);
      v101 += v102;
      --v97;
      v99 = v106;
    }

    while (v97);

    v56 = v133;
    v35 = v129;
  }

  else
  {

    v98 = MEMORY[0x277D84F90];
  }

  v109 = v56;
  v56[2] = v98;
  LOBYTE(v155) = 4;
  sub_275953FA4(&qword_280A0E8C0, MEMORY[0x277D23340]);
  v110 = v141;
  v111 = v138;
  v112 = v35;
  sub_2759BAA68();
  v113 = v35;
  v114 = v146;
  v115 = v142;
  if (v112)
  {

    v135(v110, 1, 1, v111);
    v113 = 0;
  }

  v116 = v139;
  swift_beginAccess();
  sub_2758CE724(v110, v109 + v116, &qword_280A0E8A8, qword_2759C2120);
  swift_endAccess();
  LOBYTE(v155) = 5;
  sub_2758EA064();
  v117 = v131;
  sub_2759BAA68();
  if (v113)
  {

    v137(v115, 1, 1, v117);
  }

  v129 = 0;
  v118 = v143;
  v119 = v140;
  swift_beginAccess();
  sub_2758CE724(v115, v109 + v119, &qword_280A0FC48, &qword_2759C79C0);
  swift_endAccess();
  v109[11] = [objc_opt_self() defaultManager];
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v120 = __swift_project_value_buffer(v114, qword_280A238D0);
  v121 = v145;
  v122 = *(v145 + 16);
  v122(v118, v120, v114);
  v123 = type metadata accessor for ManageStorageAnalytics();
  v124 = swift_allocObject();
  v124[8] = 0;
  v124[9] = 0;
  v124[7] = 0;
  v122(v144, v118, v114);
  v124[5] = sub_2759B8928();
  v124[6] = &off_288481960;
  __swift_allocate_boxed_opaque_existential_1(v124 + 2);
  sub_2759B8908();
  (*(v121 + 8))(v118, v114);
  v156 = v123;
  v157 = &off_288485F28;
  *&v155 = v124;
  (*(v148 + 8))(v149, v150);
  sub_275827D1C(&v155, v109 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController);
  __swift_destroy_boxed_opaque_existential_1(v128);
  return v109;
}

uint64_t DriveDeleteAction.__allocating_init(fileProvider:fpItemManager:onCompletion:onSuccess:onClientError:onSyncError:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v50 = a5;
  v51 = a6;
  v48 = a4;
  v49 = a3;
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v45 - v11;
  v13 = sub_2759B89A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v46 = a1;
  sub_27586E058(a1, v54);
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_280A238D0);
  v22 = *(v14 + 16);
  v22(v20, v21, v13);
  v23 = type metadata accessor for ManageStorageAnalytics();
  v24 = swift_allocObject();
  v24[8] = 0;
  v24[9] = 0;
  v24[7] = 0;
  v22(v18, v20, v13);
  v24[5] = sub_2759B8928();
  v24[6] = &off_288481960;
  __swift_allocate_boxed_opaque_existential_1(v24 + 2);
  sub_2759B8908();
  (*(v14 + 8))(v20, v13);
  v53[3] = v23;
  v53[4] = &off_288485F28;
  v53[0] = v24;
  v25 = *(v7 + 48);
  v26 = *(v7 + 52);
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v53, v23);
  v29 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v34 = (v27 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController);
  v34[3] = v23;
  v34[4] = &off_288485F28;
  *v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(v46);
  *(v27 + 80) = 0;
  *(v27 + 64) = 0u;
  *(v27 + 48) = 0u;
  v35 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_notifyURL;
  v36 = sub_2759B8C48();
  (*(*(v36 - 8) + 56))(v27 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v40(v27 + v37, 1, 1, v38);
  *(v27 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_account) = 0;
  sub_275827D1C(v54, v52);
  swift_beginAccess();
  sub_2758CE724(v52, v27 + 48, &qword_280A117A8, &unk_2759CBA38);
  swift_endAccess();
  *(v27 + 88) = v47;
  v42 = v49;
  v41 = v50;
  *(v27 + 16) = v48;
  *(v27 + 24) = v41;
  *(v27 + 32) = v51;
  *(v27 + 40) = v42;
  *v12 = 0;
  (*(v39 + 104))(v12, *MEMORY[0x277D23230], v38);
  v40(v12, 0, 1, v38);
  v43 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  swift_beginAccess();
  sub_2758CE724(v12, v27 + v43, &qword_280A0FC48, &qword_2759C79C0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v27;
}

uint64_t sub_27594ED40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  v6 = sub_2759B8C48();
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  *(v4 + 128) = v10;
  v11 = *(v10 - 8);
  *(v4 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *a3;
  *(v4 + 144) = v13;
  *(v4 + 152) = v14;
  *(v4 + 160) = *(a3 + 1);
  *(v4 + 176) = a3[3];

  return MEMORY[0x2822009F8](sub_27594EEC8, 0, 0);
}

uint64_t sub_27594EEC8()
{
  v91 = v0;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v84 = sub_2759B89A8();
  *(v0 + 184) = __swift_project_value_buffer(v84, qword_280A23900);

  v3 = sub_2759B8988();
  v4 = sub_2759BA668();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v88 = v10;
    v89 = 91;
    v90 = 0xE100000000000000;

    MEMORY[0x277C840E0](v7, v8);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v5, v6);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v11 = sub_2758937B8(91, 0xE100000000000000, &v88);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_275819000, v3, v4, "%{public}s syncDeletedFiles", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 80);
  v15 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation;
  swift_beginAccess();
  if ((*(v12 + 48))(v14 + v15, 1, v13))
  {
    v16 = 2;
  }

  else
  {
    v17 = *(v0 + 72);
    (*(*(v0 + 136) + 16))(*(v0 + 144), v14 + v15, *(v0 + 128));
    sub_2759B8AA8();
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    v16 = *(v0 + 216);
  }

  v18 = *(v0 + 176);
  v19 = *(v0 + 160);

  v20 = sub_2759B8988();
  v21 = sub_2759BA668();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 176);
    v83 = *(v0 + 168);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 136446466;
    v88 = v26;
    v89 = 91;
    v90 = 0xE100000000000000;

    MEMORY[0x277C840E0](v23, v24);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v83, v22);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v27 = sub_2758937B8(v89, v90, &v88);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2080;
    v28 = 1702195828;
    if ((v16 & 1) == 0)
    {
      v28 = 0x65736C6166;
    }

    v29 = 0xE500000000000000;
    if (v16)
    {
      v29 = 0xE400000000000000;
    }

    if (v16 == 2)
    {
      v30 = 7104878;
    }

    else
    {
      v30 = v28;
    }

    if (v16 == 2)
    {
      v31 = 0xE300000000000000;
    }

    else
    {
      v31 = v29;
    }

    v32 = sub_2758937B8(v30, v31, &v88);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_275819000, v20, v21, "%{public}s Skip observation flag: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v26, -1, -1);
    MEMORY[0x277C85860](v25, -1, -1);
  }

  if (v16 == 2 || (v16 & 1) != 0)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v33 = *(v0 + 176);
    v34 = *(v0 + 160);
    __swift_project_value_buffer(v84, qword_280A238A0);

    v35 = sub_2759B8988();
    v36 = sub_2759BA668();

    if (os_log_type_enabled(v35, v36))
    {
      v38 = *(v0 + 168);
      v37 = *(v0 + 176);
      v40 = *(v0 + 152);
      v39 = *(v0 + 160);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 136446210;
      v88 = v42;
      v89 = 91;
      v90 = 0xE100000000000000;

      MEMORY[0x277C840E0](v40, v39);
      MEMORY[0x277C840E0](2108704, 0xE300000000000000);
      MEMORY[0x277C840E0](v38, v37);
      MEMORY[0x277C840E0](93, 0xE100000000000000);

      v43 = sub_2758937B8(v89, v90, &v88);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_275819000, v35, v36, "%{public}s Skipping observation!", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x277C85860](v42, -1, -1);
      MEMORY[0x277C85860](v41, -1, -1);
    }

    v44 = *(v0 + 144);
    v45 = *(v0 + 112);
    v46 = *(v0 + 120);
    v47 = *(v0 + 104);

    v48 = *(v0 + 8);

    return v48();
  }

  else
  {
    v50 = *(v0 + 120);
    v51 = *(v0 + 88);
    v52 = *(v0 + 96);
    v53 = *(v0 + 80);
    v54 = sub_2759B8508();
    (*(*(v54 - 8) + 56))(v50, 1, 1, v54);
    v55 = OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_notifyURL;
    swift_beginAccess();
    if (!(*(v52 + 48))(v53 + v55, 1, v51))
    {
      v56 = *(v0 + 72);
      (*(*(v0 + 96) + 16))(*(v0 + 104), v53 + v55, *(v0 + 88));
      v57 = sub_2759B8C38();
      v59 = v58;
      v60 = *(v0 + 176);
      v61 = *(v0 + 160);
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

      v62 = sub_2759B8988();
      v63 = sub_2759BA668();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = *(v0 + 176);
        v85 = *(v0 + 168);
        v65 = *(v0 + 152);
        v66 = *(v0 + 160);
        v67 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v88 = v87;
        *v67 = 136446466;
        v89 = 91;
        v90 = 0xE100000000000000;

        MEMORY[0x277C840E0](v65, v66);
        MEMORY[0x277C840E0](2108704, 0xE300000000000000);
        MEMORY[0x277C840E0](v85, v64);
        MEMORY[0x277C840E0](93, 0xE100000000000000);

        v68 = sub_2758937B8(v89, v90, &v88);

        *(v67 + 4) = v68;
        *(v67 + 12) = 2080;
        *(v67 + 14) = sub_2758937B8(v57, v59, &v88);
        _os_log_impl(&dword_275819000, v62, v63, "%{public}s notifyURL: %s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x277C85860](v87, -1, -1);
        MEMORY[0x277C85860](v67, -1, -1);
      }

      v69 = *(v0 + 112);
      v70 = *(v0 + 120);
      sub_2759B84F8();

      sub_27586BF04(v70, &unk_280A0EB10, &qword_2759C0740);
      sub_2758B4BD0(v69, v70);
    }

    v71 = *(v0 + 64);
    v72 = v71[3];
    v73 = v71[4];
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v74 = *MEMORY[0x277CC6358];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11830, &unk_2759CBF60);
    v75 = swift_allocObject();
    *(v0 + 192) = v75;
    v76 = MEMORY[0x277CC62E8];
    *(v75 + 16) = xmmword_2759C17A0;
    v77 = *v76;
    *(v75 + 32) = v77;
    v78 = *(v73 + 16);
    v79 = v77;
    v86 = (v78 + *v78);
    v80 = v78[1];
    v81 = swift_task_alloc();
    *(v0 + 200) = v81;
    *v81 = v0;
    v81[1] = sub_27594F9EC;
    v82 = *(v0 + 120);

    return v86(v74, v75, v82, v72, v73);
  }
}

uint64_t sub_27594F9EC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(v4 + 217) = a1;
  *(v4 + 208) = v1;

  v7 = *(v3 + 192);

  if (v1)
  {
    v8 = sub_27594FDEC;
  }

  else
  {
    v8 = sub_27594FB2C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_27594FB2C()
{
  v25 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);

  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = *(v0 + 217);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v24[0] = v11;
    v24[1] = 91;
    v24[2] = 0xE100000000000000;

    MEMORY[0x277C840E0](v9, v8);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v7, v6);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v12 = sub_2758937B8(91, 0xE100000000000000, v24);

    *(v10 + 4) = v12;
    *(v10 + 12) = 1026;
    *(v10 + 14) = v23;
    _os_log_impl(&dword_275819000, v4, v5, "%{public}s delete sync complete. success: %{BOOL,public}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  if (*(v0 + 217) == 1)
  {
    sub_27586BF04(*(v0 + 120), &unk_280A0EB10, &qword_2759C0740);
    v13 = *(v0 + 144);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);
  }

  else
  {
    sub_275954004();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    v19 = *(v0 + 144);
    v20 = *(v0 + 112);
    v21 = *(v0 + 104);
    sub_27586BF04(*(v0 + 120), &unk_280A0EB10, &qword_2759C0740);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_27594FDEC()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[13];
  sub_27586BF04(v0[15], &unk_280A0EB10, &qword_2759C0740);

  v5 = v0[1];

  return v5();
}

void sub_27594FE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v33 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = objc_allocWithZone(MEMORY[0x277CC6470]);
  sub_275861AF8(0, &qword_280A11838, 0x277CC63E8);
  v16 = sub_2759BA3D8();
  v17 = [v15 initWithItems_];

  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v19 = swift_allocObject();
  v30 = a3;
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  v20 = v31;
  *(v19 + 4) = v33;
  *(v19 + 5) = v20;
  (*(v11 + 32))(&v19[v18], v14, v10);
  v39 = sub_275954068;
  v40 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2759504E8;
  v38 = &block_descriptor_64;
  v21 = _Block_copy(&aBlock);
  v22 = v17;

  [v22 setTransformCompletionBlock_];
  _Block_release(v21);

  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v23 = sub_2759B89A8();
  __swift_project_value_buffer(v23, qword_280A23900);

  v24 = sub_2759B8988();
  v25 = sub_2759BA668();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 136446210;
    v34 = v27;
    aBlock = 91;
    v36 = 0xE100000000000000;

    MEMORY[0x277C840E0](v30, a4);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v33, v20);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v28 = sub_2758937B8(aBlock, v36, &v34);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_275819000, v24, v25, "%{public}s starting move to trash operation", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x277C85860](v27, -1, -1);
    MEMORY[0x277C85860](v26, -1, -1);
  }

  [*(v32 + 88) scheduleAction_];
}

uint64_t sub_275950294(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v11 = sub_2759B89A8();
  __swift_project_value_buffer(v11, qword_280A23900);

  v12 = sub_2759B8988();
  v13 = sub_2759BA668();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446210;
    v19 = v15;

    MEMORY[0x277C840E0](a3, a4);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](a5, a6);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v16 = sub_2758937B8(91, 0xE100000000000000, &v19);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_275819000, v12, v13, "%{public}s trash operation is complete", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x277C85860](v15, -1, -1);
    MEMORY[0x277C85860](v14, -1, -1);
  }

  if (a2)
  {
    v17 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
    return sub_2759BA478();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
    return sub_2759BA488();
  }
}

uint64_t sub_2759504E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_275861AF8(0, &qword_280A11838, 0x277CC63E8);
    v4 = sub_2759BA3E8();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t DriveDeleteAction.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  sub_27586BF04(v0 + 48, &qword_280A117A8, &unk_2759CBA38);

  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_notifyURL, &qword_280A0E8A8, qword_2759C2120);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_skipObservation, &qword_280A0FC48, &qword_2759C79C0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14iCloudSettings17DriveDeleteAction_signpostController));

  return v0;
}

uint64_t DriveDeleteAction.__deallocating_deinit()
{
  DriveDeleteAction.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_27595069C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585A7E4;

  return DriveDeleteAction.performAction(with:localStore:)(a1, a2);
}

void *sub_2759507F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = DriveDeleteAction.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

char *sub_275950850(char *a1, int64_t a2, char a3)
{
  result = sub_275950AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_275950870(void *a1, int64_t a2, char a3)
{
  result = sub_275951098(a1, a2, a3, *v3, &qword_280A11860, &qword_2759CBF98, &qword_280A11868, &qword_2759CBFA0);
  *v3 = result;
  return result;
}

void *sub_2759508B0(void *a1, int64_t a2, char a3)
{
  result = sub_275950BD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2759508D0(void *a1, int64_t a2, char a3)
{
  result = sub_275950CFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2759508F0(void *a1, int64_t a2, char a3)
{
  result = sub_275951098(a1, a2, a3, *v3, &qword_280A117F0, &unk_2759CBF10, &qword_280A117F8, &qword_2759CCC40);
  *v3 = result;
  return result;
}

void *sub_275950930(void *a1, int64_t a2, char a3)
{
  result = sub_275950E30(a1, a2, a3, *v3, &qword_280A11800, &unk_2759CBF20, &qword_280A11808, &qword_2759CCC50);
  *v3 = result;
  return result;
}

void *sub_275950970(void *a1, int64_t a2, char a3)
{
  result = sub_275950E30(a1, a2, a3, *v3, &qword_280A11810, &qword_2759CBF30, &qword_280A11818, &qword_2759CBF38);
  *v3 = result;
  return result;
}

void *sub_2759509B0(void *a1, int64_t a2, char a3)
{
  result = sub_275951098(a1, a2, a3, *v3, &qword_280A11820, &qword_2759CBF40, &qword_280A0F920, &qword_2759D0380);
  *v3 = result;
  return result;
}

void *sub_2759509F0(void *a1, int64_t a2, char a3)
{
  result = sub_275951098(a1, a2, a3, *v3, &qword_280A11870, &qword_2759CBFA8, &qword_280A11398, &unk_2759CBFB0);
  *v3 = result;
  return result;
}

char *sub_275950A30(char *a1, int64_t a2, char a3)
{
  result = sub_2759511E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950A50(char *a1, int64_t a2, char a3)
{
  result = sub_2759512EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950A70(char *a1, int64_t a2, char a3)
{
  result = sub_2759513F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950A90(char *a1, int64_t a2, char a3)
{
  result = sub_2759514FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950AB0(char *a1, int64_t a2, char a3)
{
  result = sub_2759515F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275950AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11840, &unk_2759CBF70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_275950BD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BE8, &qword_2759C8168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    type metadata accessor for Dataclass(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275950CFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EF10, &qword_2759C2690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB8, &qword_2759C2698);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275950E30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_275950F64(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECA8, &qword_2759C2680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECB0, &qword_2759C2688);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275951098(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2759511E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEB0, &qword_2759C2620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_2759512EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ECD8, &qword_2759C26C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_2759513F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11858, &qword_2759CBF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2759514FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11848, &qword_2759CBF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_2759515F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11850, &qword_2759CBF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_2759516F4(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void, void))
{
  LOBYTE(v27[0]) = a1;
  v27[3] = &type metadata for ManageStorageDrilldownActionEvent;
  v27[4] = &off_288482EF8;
  v27[1] = a2;
  v27[2] = a3;
  v5 = qword_280A0E350;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238D0);
  sub_27586E058(v27, &v25);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD000000000000036, 0x80000002759E1160, &v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(&v25, v26);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C2110;
    v23 = a4;
    *(inited + 32) = 0x6E6F69746361;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = sub_2759BA5A8();
    *(inited + 56) = 0x6449656C646E7562;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = sub_2759BA258();
    sub_2758A2798(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
    swift_arrayDestroy();
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v16 = sub_2759BA1F8();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1(&v25);
    v19 = sub_2758937B8(v16, v18, &v24);
    a4 = v23;

    *(v9 + 14) = v19;
    _os_log_impl(&dword_275819000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  sub_27586E058(v27, &v25);
  v20 = swift_allocObject();
  sub_275827D1C(&v25, v20 + 16);
  v21 = a4(0xD000000000000036, 0x80000002759E1160, sub_275953F9C, v20);

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v21 & 1;
}

uint64_t sub_275951A74(void *a1, char a2, uint64_t (*a3)(void, void, void, void))
{
  v31 = &type metadata for iCloudHomeViewModelPerformActionEvent;
  v32 = &off_288482B80;
  v29 = a1;
  v30 = a2;
  v4 = qword_280A0E350;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238D0);
  sub_27586E058(&v29, &v27);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD00000000000003ALL, 0x80000002759E10A0, &v26);
    *(v9 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_1(&v27, v28);
    v11 = a3;
    v12 = *v10;
    v13 = *(v10 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C2110;
    *(inited + 32) = 0x656D6F6374756FLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2759BA5A8();
    *(inited + 56) = 0x79546E6F69746361;
    *(inited + 64) = 0xEA00000000006570;
    v15 = (v12 + OBJC_IVAR____TtC14iCloudSettings6Action_type);
    a3 = v11;
    v16 = *v15;
    v17 = v15[1];
    *(inited + 72) = sub_2759BA258();
    sub_2758A2798(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
    swift_arrayDestroy();
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v18 = sub_2759BA1F8();
    v20 = v19;

    __swift_destroy_boxed_opaque_existential_1(&v27);
    v21 = sub_2758937B8(v18, v20, &v26);

    *(v9 + 14) = v21;
    _os_log_impl(&dword_275819000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v25, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  sub_27586E058(&v29, &v27);
  v22 = swift_allocObject();
  sub_275827D1C(&v27, v22 + 16);
  v23 = a3(0xD00000000000003ALL, 0x80000002759E10A0, sub_275954100, v22);

  __swift_destroy_boxed_opaque_existential_1(&v29);
  return v23 & 1;
}

uint64_t sub_275951E00(void *a1, char a2, uint64_t a3, char a4, uint64_t (*a5)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v28[3] = &type metadata for ManageStorageDriveDeleteActionEvent;
  v28[4] = &off_288483028;
  v10 = swift_allocObject();
  v28[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4 & 1;
  v11 = a1;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v12 = sub_2759B89A8();
  __swift_project_value_buffer(v12, qword_280A238D0);
  sub_27586E058(v28, &v26);
  v13 = sub_2759B8988();
  v14 = sub_2759BA638();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_2758937B8(0xD000000000000038, 0x80000002759E11E0, &v25);
    *(v15 + 12) = 2080;
    v17 = __swift_project_boxed_opaque_existential_1(&v26, v27);
    if (sub_275909694(*v17, *(v17 + 8), v17[2], *(v17 + 24)))
    {
      sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
      v18 = sub_2759BA1F8();
      v20 = v19;
    }

    else
    {
      v20 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_1(&v26);
    v21 = sub_2758937B8(v18, v20, &v25);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_275819000, v13, v14, "Sending message %s with body %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v16, -1, -1);
    MEMORY[0x277C85860](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  sub_27586E058(v28, &v26);
  v22 = swift_allocObject();
  sub_275827D1C(&v26, v22 + 16);
  v23 = a5(0xD000000000000038, 0x80000002759E11E0, sub_275954100, v22);

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v23 & 1;
}

uint64_t sub_27595211C(void *a1, char a2, uint64_t (*a3)(void, void, void, void))
{
  v30 = &type metadata for ManageStorageSiriDisableAndDeleteActionEvent;
  v31 = &off_2884833A0;
  v28 = a1;
  v29 = a2 & 1;
  v4 = a1;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238D0);
  sub_27586E058(&v28, &v26);
  v6 = sub_2759B8988();
  v7 = sub_2759BA638();
  if (os_log_type_enabled(v6, v7))
  {
    v24 = a3;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2758937B8(0xD000000000000037, 0x80000002759E12A0, &v25);
    *(v8 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_1(&v26, v27);
    v11 = *v10;
    v12 = *(v10 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C17A0;
    *(inited + 32) = 0x656D6F6374756FLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2759BA5A8();
    sub_2758A2798(inited);
    swift_setDeallocating();
    sub_27586BF04(inited + 32, &qword_280A10C10, &qword_2759D0850);
    if (v11)
    {
      swift_getErrorValue();
      v14 = v11;
      sub_2759AC7BC();
      v15 = sub_2759BA258();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_275906A58(v15, 0x726F727245796E61, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    a3 = v24;
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v17 = sub_2759BA1F8();
    v19 = v18;

    __swift_destroy_boxed_opaque_existential_1(&v26);
    v20 = sub_2758937B8(v17, v19, &v25);

    *(v8 + 14) = v20;
    _os_log_impl(&dword_275819000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  sub_27586E058(&v28, &v26);
  v21 = swift_allocObject();
  sub_275827D1C(&v26, v21 + 16);
  v22 = a3(0xD000000000000037, 0x80000002759E12A0, sub_275954100, v21);

  __swift_destroy_boxed_opaque_existential_1(&v28);
  return v22 & 1;
}

uint64_t sub_2759524E8(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void, void, void, void))
{
  v27[0] = a1;
  v29 = &type metadata for iCloudHomeViewModelPushViewControllerEvent;
  v30 = &off_288482CA8;
  v27[1] = a2;
  v28 = a3;
  v5 = qword_280A0E350;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238D0);
  sub_27586E058(v27, &v25);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD00000000000003FLL, 0x80000002759E10E0, &v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(&v25, v26);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v11 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C2110;
    v23 = a4;
    *(inited + 32) = 0x46676E696C6C6163;
    *(inited + 40) = 0xEF6E6F6974636E75;
    *(inited + 48) = sub_2759BA258();
    *(inited + 56) = 0x656D6F6374756FLL;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = sub_2759BA5A8();
    sub_2758A2798(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C10, &qword_2759D0850);
    swift_arrayDestroy();
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v16 = sub_2759BA1F8();
    v18 = v17;

    __swift_destroy_boxed_opaque_existential_1(&v25);
    v19 = sub_2758937B8(v16, v18, &v24);
    a4 = v23;

    *(v9 + 14) = v19;
    _os_log_impl(&dword_275819000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  sub_27586E058(v27, &v25);
  v20 = swift_allocObject();
  sub_275827D1C(&v25, v20 + 16);
  v21 = a4(0xD00000000000003FLL, 0x80000002759E10E0, sub_275954100, v20);

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v21 & 1;
}

uint64_t sub_27595287C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  LOBYTE(v22[0]) = a1;
  v22[3] = &type metadata for iCloudHomeViewModelShowMailViewEvent;
  v22[4] = &off_288482DD0;
  v22[1] = a2;
  v22[2] = a3;
  v5 = qword_280A0E350;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_280A238D0);
  sub_27586E058(v22, &v20);
  v7 = sub_2759B8988();
  v8 = sub_2759BA638();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2758937B8(0xD000000000000039, 0x80000002759E1120, &v19);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(&v20, v21);
    if (sub_275908BD4(*v11, v11[1], v11[2]))
    {
      sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
      v12 = sub_2759BA1F8();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_1(&v20);
    v15 = sub_2758937B8(v12, v14, &v19);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_275819000, v7, v8, "Sending message %s with body %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  sub_27586E058(v22, &v20);
  v16 = swift_allocObject();
  sub_275827D1C(&v20, v16 + 16);
  v17 = a4(0xD000000000000039, 0x80000002759E1120, sub_275954100, v16);

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v17 & 1;
}

uint64_t sub_275952B58(char a1, uint64_t (*a2)(unint64_t, unint64_t, uint64_t (*)(), uint64_t))
{
  v20[3] = &type metadata for ManageStorageMessagesDisableAndDeleteActionEvent;
  v20[4] = &off_288483278;
  LOBYTE(v20[0]) = a1 & 1;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A238D0);
  sub_27586E058(v20, &v18);
  v4 = sub_2759B8988();
  v5 = sub_2759BA638();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_2758937B8(0xD00000000000003BLL, 0x80000002759E1260, &v17);
    *(v6 + 12) = 2080;
    v8 = *__swift_project_boxed_opaque_existential_1(&v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C17A0;
    *(inited + 32) = 0x656D6F6374756FLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2759BA5A8();
    sub_2758A2798(inited);
    swift_setDeallocating();
    sub_27586BF04(inited + 32, &qword_280A10C10, &qword_2759D0850);
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v10 = sub_2759BA1F8();
    v12 = v11;

    __swift_destroy_boxed_opaque_existential_1(&v18);
    v13 = sub_2758937B8(v10, v12, &v17);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_275819000, v4, v5, "Sending message %s with body %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v7, -1, -1);
    MEMORY[0x277C85860](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  sub_27586E058(v20, &v18);
  v14 = swift_allocObject();
  sub_275827D1C(&v18, v14 + 16);
  v15 = a2(0xD00000000000003BLL, 0x80000002759E1260, sub_275954100, v14);

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v15 & 1;
}

uint64_t sub_275952E8C(void *a1, char a2, uint64_t (*a3)(void, void, void, void))
{
  v30 = &type metadata for ManageStorageHealthDisableAndDeleteActionEvent;
  v31 = &off_288483150;
  v28 = a1;
  v29 = a2 & 1;
  v4 = a1;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A238D0);
  sub_27586E058(&v28, &v26);
  v6 = sub_2759B8988();
  v7 = sub_2759BA638();
  if (os_log_type_enabled(v6, v7))
  {
    v24 = a3;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2758937B8(0xD000000000000039, 0x80000002759E1220, &v25);
    *(v8 + 12) = 2080;
    v10 = __swift_project_boxed_opaque_existential_1(&v26, v27);
    v11 = *v10;
    v12 = *(v10 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C08, &unk_2759C82B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759C17A0;
    *(inited + 32) = 0x656D6F6374756FLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = sub_2759BA5A8();
    sub_2758A2798(inited);
    swift_setDeallocating();
    sub_27586BF04(inited + 32, &qword_280A10C10, &qword_2759D0850);
    if (v11)
    {
      swift_getErrorValue();
      v14 = v11;
      sub_2759AC7BC();
      v15 = sub_2759BA258();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_275906A58(v15, 0x726F727245796E61, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    a3 = v24;
    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v17 = sub_2759BA1F8();
    v19 = v18;

    __swift_destroy_boxed_opaque_existential_1(&v26);
    v20 = sub_2758937B8(v17, v19, &v25);

    *(v8 + 14) = v20;
    _os_log_impl(&dword_275819000, v6, v7, "Sending message %s with body %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  sub_27586E058(&v28, &v26);
  v21 = swift_allocObject();
  sub_275827D1C(&v26, v21 + 16);
  v22 = a3(0xD000000000000039, 0x80000002759E1220, sub_275954100, v21);

  __swift_destroy_boxed_opaque_existential_1(&v28);
  return v22 & 1;
}

uint64_t sub_275953258(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2759BA338();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_2759532F4()
{
  result = qword_280A117A0;
  if (!qword_280A117A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117A0);
  }

  return result;
}

unint64_t sub_27595334C()
{
  result = qword_280A117B0;
  if (!qword_280A117B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117B0);
  }

  return result;
}

uint64_t type metadata accessor for DriveDeleteAction()
{
  result = qword_280A117C8;
  if (!qword_280A117C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14iCloudSettings17DriveDeleteResultV7OutcomeO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2759534A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
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

uint64_t sub_275953504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_275953570()
{
  sub_27585EA38();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2758E9738();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2759536C4(uint64_t a1, unsigned int a2)
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

uint64_t sub_275953720(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_275953780(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_2759537D0()
{
  result = qword_280A117D8;
  if (!qword_280A117D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117D8);
  }

  return result;
}

unint64_t sub_275953828()
{
  result = qword_280A117E0;
  if (!qword_280A117E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117E0);
  }

  return result;
}

unint64_t sub_275953880()
{
  result = qword_280A117E8;
  if (!qword_280A117E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A117E8);
  }

  return result;
}

uint64_t sub_2759538D4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 40) = *(a2 + 8);
  *(v3 + 56) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_27595390C, 0, 0);
}

uint64_t sub_27595390C()
{
  v40 = v0;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[5];
  v3 = sub_2759B89A8();
  __swift_project_value_buffer(v3, qword_280A23900);

  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v37 = v11;
    v38 = 91;
    v39 = 0xE100000000000000;

    MEMORY[0x277C840E0](v8, v9);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v7, v6);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v12 = sub_2758937B8(91, 0xE100000000000000, &v37);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_275819000, v4, v5, "%{public}s deleteFiles", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v13 = v0[2];
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v22 = v0[2];
    }

    v23 = sub_2759BA9E8();
    v14 = v0[7];
    if (v23)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = v0[7];
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      v15 = v0[6];
      v36 = *(v0 + 2);
      v17 = v0[2];
      v16 = v0[3];
      v18 = swift_task_alloc();
      v0[8] = v18;
      *(v18 + 16) = v17;
      *(v18 + 24) = v36;
      *(v18 + 40) = v15;
      *(v18 + 48) = v14;
      *(v18 + 56) = v16;
      v19 = *(MEMORY[0x277D85A40] + 4);
      v20 = swift_task_alloc();
      v0[9] = v20;
      *v20 = v0;
      v20[1] = sub_275953DB8;
      v21 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v20, 0, 0, 0xD000000000000020, 0x80000002759E2430, sub_275954058, v18, v21);
    }
  }

  v24 = v0[5];

  v25 = sub_2759B8988();
  v26 = sub_2759BA668();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v0[6];
    v27 = v0[7];
    v30 = v0[4];
    v29 = v0[5];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 136446210;
    v37 = v32;
    v38 = 91;
    v39 = 0xE100000000000000;

    MEMORY[0x277C840E0](v30, v29);
    MEMORY[0x277C840E0](2108704, 0xE300000000000000);
    MEMORY[0x277C840E0](v28, v27);
    MEMORY[0x277C840E0](93, 0xE100000000000000);

    v33 = sub_2758937B8(v38, v39, &v37);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_275819000, v25, v26, "%{public}s files list is empty", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x277C85860](v32, -1, -1);
    MEMORY[0x277C85860](v31, -1, -1);
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_275953DB8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_275953EEC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_275953ED4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_275953EEC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_275953F50()
{
  v0 = sub_2759BAA48();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_275953FA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275954004()
{
  result = qword_280A11828;
  if (!qword_280A11828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11828);
  }

  return result;
}

uint64_t sub_275954068(uint64_t a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608) - 8) + 80);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];

  return sub_275950294(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_275954110@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v36 = a2;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_27585D118();
  *&v32 = v7;
  *(&v32 + 1) = v9;
  v33 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v32);

  sub_2759B9B18();

  v10 = OpaqueTypeMetadata2;
  v11 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(&v32, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  sub_27585D1B8();
  *&v28 = v10;
  *(&v28 + 1) = v12;
  v29 = v11;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v28);

  sub_2759B9B18();

  v13 = v30;
  v14 = v31;
  __swift_project_boxed_opaque_existential_1(&v28, v30);
  swift_getKeyPath();
  v15 = sub_2759BA1B8();
  v16 = sub_275956860(&qword_280A10398, MEMORY[0x277D4D7B0]);
  a3[3] = swift_getOpaqueTypeMetadata2();
  v25[0] = v13;
  v25[1] = v15;
  v25[2] = v14;
  v26 = v16;
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(&v28);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v17 = *(v5 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_onCompletionActions);
  sub_27586E058(a3, &v28);
  v18 = *(v17 + 16);

  if (v18)
  {
    v20 = 0;
    v21 = v17 + 32;
    while (v20 < *(v17 + 16))
    {
      sub_27586E058(v21, v25);
      v22 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v23 = *(v22 + 8);
      sub_2759B8B28();
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1(&v28);

        __swift_destroy_boxed_opaque_existential_1(v25);
        return __swift_destroy_boxed_opaque_existential_1(a3);
      }

      ++v20;
      __swift_destroy_boxed_opaque_existential_1(&v28);
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = sub_275827D1C(&v24, &v28);
      v21 += 40;
      if (v18 == v20)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_275827D1C(&v28, &v32);
    __swift_destroy_boxed_opaque_existential_1(a3);
    return sub_275827D1C(&v32, a3);
  }

  return result;
}

uint64_t sub_275954544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2759BA1B8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy;
  swift_beginAccess();
  sub_2758CE724(v7, a2 + v10, &qword_280A109D8, &qword_2759D0B40);
  return swift_endAccess();
}

uint64_t sub_275954688(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27595479C, 0, 0);
}

uint64_t sub_27595479C()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ReloadHomeAction: performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);

  v8 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_popView;
  swift_beginAccess();
  v9 = *(v6 + 48);
  if (v9(v7 + v8, 1, v5))
  {
    v10 = 0;
  }

  else
  {
    v11 = *(v0 + 64);
    (*(*(v0 + 104) + 16))(*(v0 + 120), v7 + v8, *(v0 + 96));
    sub_2759B8AA8();
    (*(*(v0 + 104) + 8))(*(v0 + 120), *(v0 + 96));
    v10 = *(v0 + 160);
  }

  *(v0 + 162) = v10;
  v12 = *(v0 + 96);
  v13 = *(v0 + 80);
  v14 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_clearData;
  swift_beginAccess();
  if (v9(v13 + v14, 1, v12))
  {
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 64);
    (*(*(v0 + 104) + 16))(*(v0 + 112), v13 + v14, *(v0 + 96));
    sub_2759B8AA8();
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v15 = *(v0 + 161);
  }

  v17 = *(*(v0 + 80) + 16);
  *(v0 + 128) = v17;
  if (v17)
  {
    v18 = v17;
    if (v15)
    {
      v19 = sub_2759B8988();
      v20 = sub_2759BA668();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_275819000, v19, v20, "ReloadHomeAction: clearing apps list", v21, 2u);
        MEMORY[0x277C85860](v21, -1, -1);
      }

      v22 = *(v0 + 88);

      v23 = sub_2759BA518();
      (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
      sub_2759BA4C8();
      v24 = v18;
      v25 = sub_2759BA4B8();
      v26 = swift_allocObject();
      v27 = MEMORY[0x277D85700];
      v26[2] = v25;
      v26[3] = v27;
      v26[4] = v24;
      sub_27587D460(0, 0, v22, &unk_2759CC128, v26);
    }

    v28 = swift_task_alloc();
    *(v0 + 136) = v28;
    *v28 = v0;
    v28[1] = sub_275954CD4;

    return sub_27588A44C(0);
  }

  else
  {
    v30 = sub_2759B8988();
    v31 = sub_2759BA648();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_275819000, v30, v31, "ReloadHomeAction: no view model available", v32, 2u);
      MEMORY[0x277C85860](v32, -1, -1);
    }

    v34 = *(v0 + 112);
    v33 = *(v0 + 120);
    v35 = *(v0 + 88);

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_275954CD4()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_275954DD0, 0, 0);
}

uint64_t sub_275954DD0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 162);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = sub_2759BA518();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_2759BA4C8();
  v6 = v1;

  v7 = sub_2759BA4B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 48) = v6;
  *(v0 + 144) = sub_27587D460(0, 0, v3, &unk_2759CC118, v8);
  v10 = *(MEMORY[0x277D857E0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_275954F48;

  return MEMORY[0x282200460]();
}

uint64_t sub_275954F48()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_275955060, 0, 0);
}

uint64_t sub_275955060()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[8];
  v4 = *(v0[10] + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_onCompletionActions);

  sub_2759BA438();

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_27595511C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_2759BA4C8();
  *(v4 + 56) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759551B4, v6, v5);
}

uint64_t sub_2759551B4()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  if (*(v2 + v3))
  {
    v4 = v0[6];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    v0[5] = v4;
    sub_275956860(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8628();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_2759552FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 104) = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A109D8, &qword_2759D0B40) - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();
  v8 = sub_2759BA1B8();
  *(v6 + 72) = v8;
  v9 = *(v8 - 8);
  *(v6 + 80) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  sub_2759BA4C8();
  *(v6 + 96) = sub_2759BA4B8();
  v12 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595542C, v12, v11);
}

uint64_t sub_27595542C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  if (v2 == 1)
  {
    v3 = *(v0 + 48);
    v4 = *(v3 + 24);
    if (v4)
    {
      if (*(v4 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_isPresented) == 1)
      {
        v5 = *(v0 + 72);
        v6 = *(v0 + 80);
        v7 = *(v0 + 64);
        v8 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy;
        swift_beginAccess();
        sub_2758FE7C0(v3 + v8, v7);
        if ((*(v6 + 48))(v7, 1, v5) == 1)
        {
          sub_27586BF04(*(v0 + 64), &qword_280A109D8, &qword_2759D0B40);
        }

        else
        {
          (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
          v9 = sub_2759BA198();
          v11 = *(v0 + 80);
          v10 = *(v0 + 88);
          v12 = *(v0 + 72);
          if (v9)
          {
            sub_2759BA1A8();
            (*(v11 + 8))(v10, v12);
            goto LABEL_11;
          }

          (*(v11 + 8))(*(v0 + 88), *(v0 + 72));
        }

        v13 = *(v0 + 56);
        swift_getKeyPath();
        *(v0 + 40) = v13;
        sub_275956860(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
        sub_2759B8638();

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
        }
      }
    }
  }

LABEL_11:
  v16 = *(v0 + 88);
  v17 = *(v0 + 64);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_275955660(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461447261656C63;
  v4 = 0xE900000000000061;
  if (v2 != 1)
  {
    v3 = 0x656C706D6F436E6FLL;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x77656956706F70;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7461447261656C63;
  v8 = 0xE900000000000061;
  if (*a2 != 1)
  {
    v7 = 0x656C706D6F436E6FLL;
    v8 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x77656956706F70;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27595577C()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27595582C()
{
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_2759558C8()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275955974@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2759569C0();
  *a2 = result;
  return result;
}

void sub_2759559A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000061;
  v5 = 0x7461447261656C63;
  if (v2 != 1)
  {
    v5 = 0x656C706D6F436E6FLL;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x77656956706F70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_275955A10()
{
  v1 = 0x7461447261656C63;
  if (*v0 != 1)
  {
    v1 = 0x656C706D6F436E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x77656956706F70;
  }
}

uint64_t sub_275955A78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759569C0();
  *a1 = result;
  return result;
}

uint64_t sub_275955AA0(uint64_t a1)
{
  v2 = sub_27595680C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275955ADC(uint64_t a1)
{
  v2 = sub_27595680C();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_275955B18(uint64_t *a1)
{
  v55 = a1;
  v2 = v1;
  v59 = *v2;
  v60 = sub_2759B8BD8();
  v49 = *(v60 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v60);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v51 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = v48 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11898, &unk_2759CC220);
  v52 = *(v56 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v56);
  v13 = v48 - v12;
  v2[2] = 0;
  v2[3] = 0;
  v14 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy;
  v58 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy;
  v15 = sub_2759BA1B8();
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_popView;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v57 = v16;
  v19(v2 + v16, 1, 1, v17);
  v21 = OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_clearData;
  v19(v2 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_clearData, 1, 1, v17);
  *(v2 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_didDisappear) = 0;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27595680C();
  v53 = v13;
  v23 = v54;
  sub_2759BAC18();
  v24 = v58;
  if (v23)
  {

    sub_27586BF04(v2 + v24, &qword_280A109D8, &qword_2759D0B40);
    sub_27586BF04(v2 + v57, &qword_280A0FC48, &qword_2759C79C0);
    sub_27586BF04(v2 + v21, &qword_280A0FC48, &qword_2759C79C0);
    v32 = *(*v2 + 12);
    v33 = *(*v2 + 26);
    swift_deallocPartialClassInstance();
    v34 = v55;
  }

  else
  {
    v48[1] = v20;
    v48[2] = v19;
    v54 = v21;
    v25 = v57;
    LOBYTE(v62[0]) = 0;
    sub_2758EA064();
    v26 = v50;
    sub_2759BAA68();
    v27 = v51;
    swift_beginAccess();
    sub_2758CE724(v26, v2 + v25, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    LOBYTE(v62[0]) = 1;
    sub_2759BAA68();
    v28 = v61;
    v29 = v52;
    v30 = v54;
    swift_beginAccess();
    sub_2758CE724(v27, v2 + v30, &qword_280A0FC48, &qword_2759C79C0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    LOBYTE(v63) = 2;
    sub_2758C7304();
    v31 = v56;
    sub_2759BAA68();
    if (*&v62[0])
    {
      v36 = *&v62[0];
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    v37 = *(v36 + 16);
    if (v37)
    {
      v57 = 0;
      v63 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v37, 0);
      v38 = v63;
      v39 = v49 + 16;
      v40 = *(v49 + 16);
      v41 = *(v49 + 80);
      v54 = v36;
      v42 = v36 + ((v41 + 32) & ~v41);
      v58 = *(v49 + 72);
      v59 = v40;
      v43 = (v49 + 8);
      v44 = v60;
      do
      {
        v45 = v39;
        v59(v28, v42, v44);
        sub_2759B8BC8();
        v44 = v60;
        (*v43)(v28, v60);
        v63 = v38;
        v47 = v38[2];
        v46 = v38[3];
        if (v47 >= v46 >> 1)
        {
          sub_2759509B0((v46 > 1), v47 + 1, 1);
          v44 = v60;
          v38 = v63;
        }

        v38[2] = v47 + 1;
        sub_275827D1C(v62, &v38[5 * v47 + 4]);
        v42 += v58;
        --v37;
        v39 = v45;
        v28 = v61;
      }

      while (v37);
      (*(v52 + 8))(v53, v56);

      v34 = v55;
    }

    else
    {

      (*(v29 + 8))(v53, v31);
      v38 = MEMORY[0x277D84F90];
      v34 = v55;
    }

    *(v2 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_onCompletionActions) = v38;
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v2;
}

uint64_t sub_27595621C()
{
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_navigationProxy, &qword_280A109D8, &qword_2759D0B40);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_popView, &qword_280A0FC48, &qword_2759C79C0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_clearData, &qword_280A0FC48, &qword_2759C79C0);
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings16ReloadHomeAction_onCompletionActions);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReloadHomeAction()
{
  result = qword_280A11878;
  if (!qword_280A11878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275956354()
{
  sub_2758FE464();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2758E9738();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_275956444(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585A7E4;

  return sub_275954688(a1, a2);
}

id *sub_2759565A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_275955B18(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_275956688(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_2759552FC(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_275956750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27595511C(a1, v4, v5, v6);
}

unint64_t sub_27595680C()
{
  result = qword_280A118A0;
  if (!qword_280A118A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A118A0);
  }

  return result;
}

uint64_t sub_275956860(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2759568BC()
{
  result = qword_280A118A8;
  if (!qword_280A118A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A118A8);
  }

  return result;
}

unint64_t sub_275956914()
{
  result = qword_280A118B0;
  if (!qword_280A118B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A118B0);
  }

  return result;
}

unint64_t sub_27595696C()
{
  result = qword_280A118B8;
  if (!qword_280A118B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A118B8);
  }

  return result;
}

uint64_t sub_2759569C0()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_275956A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_275956A84(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v8 = sub_2759BA258();
  v9 = [v7 numberFromString_];

  if (v9)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CDD3A8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DB0, &qword_2759C8EC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2759CC380;
    v12 = *MEMORY[0x277CDD450];
    *(inited + 32) = sub_2759BA298();
    *(inited + 40) = v13;
    *(inited + 72) = sub_2759571E8();
    *(inited + 48) = v9;
    v14 = *MEMORY[0x277CDD448];
    *(inited + 80) = sub_2759BA298();
    *(inited + 88) = v15;
    v16 = MEMORY[0x277D837D0];
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = 0x70662E736369;
    *(inited + 104) = 0xE600000000000000;
    v17 = *MEMORY[0x277CDD458];
    *(inited + 128) = sub_2759BA298();
    *(inited + 136) = v18;
    *(inited + 168) = v16;
    *(inited + 144) = 858796082;
    *(inited + 152) = 0xE400000000000000;
    v19 = v9;
    sub_2758A2A88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F408, qword_2759CC3C0);
    swift_arrayDestroy();
    [v10 setDelegate_];
    [v10 setShowsStoreButton_];
    v20 = sub_2759BA1C8();

    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    aBlock[4] = sub_275957234;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275956A0C;
    aBlock[3] = &block_descriptor_12;
    v22 = _Block_copy(aBlock);

    [v10 loadProductWithParameters:v20 completionBlock:v22];
    _Block_release(v22);

    [a3 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v23 = sub_2759B89A8();
    __swift_project_value_buffer(v23, qword_2815ADE70);

    oslog = sub_2759B8988();
    v24 = sub_2759BA648();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2758937B8(a1, a2, aBlock);
      _os_log_impl(&dword_275819000, oslog, v24, "Invalid iTunesItemId %s. Bailing.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x277C85860](v26, -1, -1);
      MEMORY[0x277C85860](v25, -1, -1);
    }

    else
    {
    }
  }
}

void sub_275956EAC(int a1, id a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v7 = a2;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);

    oslog = sub_2759B8988();
    v9 = sub_2759BA648();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2758937B8(a3, a4, &v17);
      _os_log_impl(&dword_275819000, oslog, v9, "Failed to load product view for iTunesItemId: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x277C85860](v11, -1, -1);
      MEMORY[0x277C85860](v10, -1, -1);

LABEL_10:
      return;
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE70);

    oslog = sub_2759B8988();
    v13 = sub_2759BA648();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2758937B8(a3, a4, &v17);
      _os_log_impl(&dword_275819000, oslog, v13, "Successfully loaded product view for iTunesItemId: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x277C85860](v15, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
      goto LABEL_10;
    }
  }
}

id sub_275957190()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDownloadFlowManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2759571E8()
{
  result = qword_280A0ED90;
  if (!qword_280A0ED90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0ED90);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_275957340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewFlowControllerProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2759573E4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_flowCompletionDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_275957430(uint64_t a1, uint64_t a2)
{
  v2 = sub_27595745C(a1, a2);
  v3 = v2;
  return v2;
}

uint64_t sub_27595745C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_2759BA258();
  v6 = sub_2759BA258();
  v7 = [objc_opt_self() bagForProfile:v5 profileVersion:v6];

  v8 = [objc_allocWithZone(MEMORY[0x277CEE940]) initWithBag:v7 account:a2 clientInfo:0];
  v9 = OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_webViewController;
  v10 = *(v2 + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_webViewController);
  *(v2 + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_webViewController) = v8;
  v11 = v8;

  [v11 setDelegate_];
  v12 = *(v2 + v9);
  if (v12)
  {
    v13 = v12;
    v14 = sub_2759B84B8();
    v15 = [v13 loadURL_];

    v7 = v15;
  }

  return *(v3 + v9);
}

uint64_t sub_2759575A4(void *a1)
{
  v2 = v1;
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = a1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA638();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_2758937B8(0xD000000000000031, 0x80000002759E2570, &v18);
    *(v8 + 12) = 2112;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v8 + 14) = v12;
    *v9 = v13;
    _os_log_impl(&dword_275819000, v6, v7, "%s error: %@", v8, 0x16u);
    sub_275875554(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v14 = v2 + OBJC_IVAR____TtC14iCloudSettings29WebViewFlowControllerProvider_flowCompletionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(a1, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_275957800@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11940, &qword_2759CC4C0);
  v60 = *(v71 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v71);
  v59 = &v58 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11948, &qword_2759CC4C8);
  v7 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v74 = &v58 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11950, &qword_2759CC4D0);
  v9 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11958, &qword_2759CC4D8);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11960, &qword_2759CC4E0);
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v14);
  v61 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11968, &qword_2759CC4E8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v68 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v69 = &v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11970, &qword_2759CC4F0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11978, &unk_2759CC4F8);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v65 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v58 - v31;
  v33 = a1;
  v76 = a1;
  v77 = a2;
  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v35 = v78;
  swift_getKeyPath();
  v76 = v35;
  sub_27595AF30(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v36 = *&v35[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
  v37 = v36;

  if (v36)
  {

    MEMORY[0x28223BE20](v38);
    *(&v58 - 2) = v33;
    *(&v58 - 1) = v34;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119A0, &qword_2759CC538);
    sub_275958DAC();
    v60 = v39;
    sub_2759B9F38();
    sub_275958EAC(&qword_280A119B8, &qword_280A11970, &qword_2759CC4F0);
    v40 = v32;
    sub_2759B9B38();
    (*(v23 + 8))(v26, v22);
    v76 = v33;
    v77 = v34;
    sub_2759B9D68();
    v41 = v78;
    v42 = *&v78[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_secondaryApps];

    if (v42 >> 62)
    {
      v43 = sub_2759BA9E8();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v43)
    {
      MEMORY[0x28223BE20](v44);
      *(&v58 - 2) = v33;
      *(&v58 - 1) = v34;
      sub_275958544(&v76);
      v45 = v62;
      sub_2759B9F28();
      sub_275958EAC(&qword_280A119C0, &qword_280A11958, &qword_2759CC4D8);
      v46 = v61;
      v47 = v64;
      sub_2759B9B38();
      (*(v63 + 8))(v45, v47);
      v48 = v69;
      sub_27589F26C(v46, v69, &qword_280A11960, &qword_2759CC4E0);
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v48 = v69;
    }

    (*(v66 + 56))(v48, v49, 1, v67);
    v54 = v65;
    sub_27586FBC8(v40, v65, &qword_280A11978, &unk_2759CC4F8);
    v55 = v68;
    sub_27586FBC8(v48, v68, &qword_280A11968, &qword_2759CC4E8);
    v56 = v70;
    sub_27586FBC8(v54, v70, &qword_280A11978, &unk_2759CC4F8);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119C8, &unk_2759CC540);
    sub_27586FBC8(v55, v56 + *(v57 + 48), &qword_280A11968, &qword_2759CC4E8);
    sub_27586BF04(v55, &qword_280A11968, &qword_2759CC4E8);
    sub_27586BF04(v54, &qword_280A11978, &unk_2759CC4F8);
    sub_27586FBC8(v56, v74, &qword_280A11950, &qword_2759CC4D0);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A11990, &qword_280A11950, &qword_2759CC4D0);
    sub_275958CB0();
    sub_2759B95E8();
    sub_27586BF04(v56, &qword_280A11950, &qword_2759CC4D0);
    sub_27586BF04(v48, &qword_280A11968, &qword_2759CC4E8);
    return sub_27586BF04(v40, &qword_280A11978, &unk_2759CC4F8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11980, &qword_2759CC530);
    sub_27589B02C(&qword_280A11988, &qword_280A11980, &qword_2759CC530);
    v50 = v59;
    sub_2759B9F38();
    v51 = v60;
    v52 = v71;
    (*(v60 + 16))(v74, v50, v71);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A11990, &qword_280A11950, &qword_2759CC4D0);
    sub_275958CB0();
    sub_2759B95E8();
    return (*(v51 + 8))(v50, v52);
  }
}

uint64_t sub_2759581D0(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v6 = *&v10[*a3];

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA30, &unk_2759C4AC0);
  type metadata accessor for ManageStorageAppView();
  sub_27589B02C(&qword_280A119D0, &qword_280A0FA30, &unk_2759C4AC0);
  sub_27595AF30(&qword_280A119B0, type metadata accessor for ManageStorageAppView);
  sub_27595AF30(&qword_280A119D8, type metadata accessor for ManageStorageAppViewModel);
  return sub_2759B9EE8();
}

uint64_t sub_27595837C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_2759B9908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v23 = a2;
  v24 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v14 = v22;
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for ManageStorageAppView();
  *(a4 + v16[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  v22 = v14;
  type metadata accessor for ManageStorageAppsListViewModel(0);
  v17 = v13;
  sub_2759B9D58();
  v18 = v24;
  *a4 = v23;
  a4[1] = v18;
  *(a4 + v16[6]) = v17;
  v19 = v16[7];
  v23 = 0x403D000000000000;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0A50], v8);
  sub_27595A6E0();
  return sub_2759B8E98();
}

uint64_t sub_275958544@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  swift_getKeyPath();
  sub_27595AF30(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v2 = *&v10[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
  v3 = v2;

  if (v2)
  {
    v5 = *&v3[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_secondaryAppsSectionLabel];
    v4 = *&v3[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_secondaryAppsSectionLabel + 8];
  }

  sub_27589F2D4();
  result = sub_2759B99C8();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_27595867C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2759B9418();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119E8, &qword_2759CC588);
  return sub_2759586CC((a1 + *(v2 + 44)));
}

uint64_t sub_2759586CC@<X0>(void *a1@<X8>)
{
  v32 = a1;
  v1 = sub_2759B9708();
  v31 = *(v1 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6C8, &qword_2759CC590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119F0, &qword_2759CC598);
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119F8, &qword_2759CC5A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_2759B8E88();
  v20 = &v8[*(v5 + 52)];
  sub_2759B8598();
  sub_2759B96F8();
  v21 = sub_27589B02C(&qword_280A0F6D8, &qword_280A0F6C8, &qword_2759CC590);
  v22 = sub_27595AF30(&qword_280A11A00, MEMORY[0x277CDE330]);
  sub_2759B9A48();
  (*(v31 + 8))(v4, v1);
  sub_27586BF04(v8, &qword_280A0F6C8, &qword_2759CC590);
  v33 = v5;
  v34 = v1;
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v30;
  sub_2759B9B38();
  (*(v9 + 8))(v12, v23);
  sub_275823EFC(v19, v17);
  v24 = v32;
  *v32 = 0;
  *(v24 + 8) = 1;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A08, &qword_2759CC5A8);
  sub_275823EFC(v17, v25 + *(v26 + 48));
  v27 = v25 + *(v26 + 64);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_27586BF04(v19, &qword_280A119F8, &qword_2759CC5A0);
  return sub_27586BF04(v17, &qword_280A119F8, &qword_2759CC5A0);
}

uint64_t sub_275958AA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ManageStorageAppView();
  sub_27586FBC8(v1 + *(v12 + 20), v11, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B94D8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

unint64_t sub_275958CB0()
{
  result = qword_280A11998;
  if (!qword_280A11998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11940, &qword_2759CC4C0);
    sub_27589B02C(&qword_280A11988, &qword_280A11980, &qword_2759CC530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11998);
  }

  return result;
}

unint64_t sub_275958DAC()
{
  result = qword_280A119A8;
  if (!qword_280A119A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A119A0, &qword_2759CC538);
    sub_27595AF30(&qword_280A119B0, type metadata accessor for ManageStorageAppView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A119A8);
  }

  return result;
}

uint64_t type metadata accessor for ManageStorageAppView()
{
  result = qword_280A11A18;
  if (!qword_280A11A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275958EAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_275958DAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275958F8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_2759B96A8();
  v4 = *(v3 - 8);
  v25 = v3;
  v26 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ManageStorageAppView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A48, &qword_2759CC630);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A50, &qword_2759CC638);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  sub_27595AA04(v2, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_27595AA68(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v28 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A58, &unk_2759CC640);
  sub_27589B02C(&qword_280A11A60, &qword_280A11A58, &unk_2759CC640);
  sub_2759B9DB8();
  sub_2759B9698();
  sub_27589B02C(&qword_280A11A68, &qword_280A11A48, &qword_2759CC630);
  sub_27595AF30(&qword_280A11A70, MEMORY[0x277CDE1B0]);
  v22 = v25;
  sub_2759B9A58();
  (*(v26 + 8))(v7, v22);
  (*(v12 + 8))(v15, v11);
  *&v19[*(v16 + 36)] = sub_2759B9668();
  sub_27595AB34();
  sub_2759B9B38();
  return sub_27586BF04(v19, &qword_280A11A50, &qword_2759CC638);
}

void sub_275959370(void *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v3 = *(a1 + *(type metadata accessor for ManageStorageAppView() + 24));
  LOBYTE(v5[0]) = 12;
  ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v3, 0, v5);
}

uint64_t sub_2759593EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A80, &qword_2759CC650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A88, &qword_2759CC658);
  sub_27589B02C(&qword_280A11A90, &qword_280A11A80, &qword_2759CC650);
  sub_27595ACBC();
  return sub_2759B9D48();
}

uint64_t sub_2759594DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2759B9418();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AD0, &unk_2759CC678);
  return sub_275959534(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_275959534@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v97 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10C58, &unk_2759C8C70);
  v3 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v89 = (&v83 - v4);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AD8, &unk_2759CC688);
  v5 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v93 = &v83 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10720, &qword_2759C7280);
  v7 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v88 = (&v83 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AE0, &qword_2759CC698);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v96 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v83 - v13;
  v14 = sub_2759B94D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  sub_275958AA0(&v83 - v20);
  (*(v15 + 104))(v19, *MEMORY[0x277CE0280], v14);
  v22 = sub_2758B2220(v21, v19);
  v23 = *(v15 + 8);
  v23(v19, v14);
  v23(v21, v14);
  v90 = a1;
  if (v22)
  {
    v24 = sub_2759B94F8();
    LOBYTE(v113) = 1;
    sub_27595A0CC(a1, v99);
    *(v120 + 7) = v99[0];
    *(&v120[1] + 7) = v99[1];
    *(&v120[2] + 7) = v99[2];
    *(&v120[3] + 7) = v100;
    v101[0] = v24;
    v101[1] = 0;
    v102[0] = v113;
    *&v102[1] = v120[0];
    *&v102[17] = v120[1];
    *&v102[33] = v120[2];
    *&v102[49] = v120[3];
    v105[2] = *&v102[16];
    v105[3] = *&v102[32];
    v105[4] = *&v102[48];
    v105[0] = v24;
    v105[1] = *v102;
    v103[0] = v24;
    v103[1] = *v102;
    v103[3] = *&v102[32];
    v103[4] = *&v102[48];
    v103[2] = *&v102[16];
    *&v102[64] = *(&v100 + 1);
    v106 = *(&v100 + 1);
    v104 = *(&v100 + 1);
    v107 = v24;
    v108 = *v102;
    v112 = *(&v100 + 1);
    v110 = *&v102[32];
    v111 = *&v102[48];
    v109 = *&v102[16];
    v98 = 0;
    sub_27586FBC8(v101, v120, &qword_280A11B18, &qword_2759CC750);
    sub_27586FBC8(v103, v120, &qword_280A11B18, &qword_2759CC750);
    sub_27586BF04(v105, &qword_280A11B18, &qword_2759CC750);
    v123 = 0;
    v115 = v109;
    v116 = v110;
    v117 = v111;
    v113 = v107;
    v114 = v108;
    *&v118 = v112;
    *(&v118 + 1) = 0x4024000000000000;
    v119 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AE8, &qword_2759CC6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AF0, &qword_2759CC6A8);
    sub_27589B02C(&qword_280A11AF8, &qword_280A11AE8, &qword_2759CC6A0);
    sub_27589B02C(&qword_280A11B00, &qword_280A11AF0, &qword_2759CC6A8);
    sub_2759B95E8();
    sub_27586BF04(v101, &qword_280A11B18, &qword_2759CC750);
  }

  else
  {
    v25 = *(a1 + *(type metadata accessor for ManageStorageAppView() + 24));
    v26 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
    v27 = (*(v25 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
    v28 = v27[1];
    *&v120[0] = *v27;
    *(&v120[0] + 1) = v28;
    sub_27589F2D4();

    v29 = sub_2759B99C8();
    v86 = v30;
    v87 = v31;
    v84 = v32;
    v33 = (*(v25 + v26) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel);
    v34 = v33[1];
    *&v120[0] = *v33;
    *(&v120[0] + 1) = v34;

    v35 = sub_2759B99C8();
    v37 = v36;
    v39 = v38;
    LODWORD(v120[0]) = sub_2759B9688();
    v40 = sub_2759B9958();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_27589F328(v35, v37, v39 & 1);

    v47 = v84 & 1;
    LOBYTE(v103[0]) = v47;
    LOBYTE(v101[0]) = v84 & 1;
    LOBYTE(v99[0]) = 0;
    v123 = v44 & 1;
    v83 = 0;
    v84 = v44 & 1;
    v48 = v86;
    sub_27589F3E4(v29, v86, v47);
    v49 = v87;

    sub_27589F3E4(v40, v42, v44 & 1);

    sub_27589F3E4(v29, v48, v47);

    sub_27589F3E4(v40, v42, v44 & 1);

    sub_27589F328(v40, v42, v44 & 1);

    v85 = v29;
    sub_27589F328(v29, v48, v103[0]);

    LOBYTE(v105[0]) = 1;
    *&v113 = v29;
    *(&v113 + 1) = v48;
    LOBYTE(v114) = v47;
    *(&v114 + 1) = v49;
    *&v115 = 0x4024000000000000;
    BYTE8(v115) = v83;
    *&v116 = v40;
    *(&v116 + 1) = v42;
    LOBYTE(v117) = v84;
    *(&v117 + 1) = v46;
    v118 = v107;
    LOBYTE(v119) = v108;
    HIBYTE(v119) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AE8, &qword_2759CC6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AF0, &qword_2759CC6A8);
    sub_27589B02C(&qword_280A11AF8, &qword_280A11AE8, &qword_2759CC6A0);
    sub_27589B02C(&qword_280A11B00, &qword_280A11AF0, &qword_2759CC6A8);
    sub_2759B95E8();
    sub_27589F328(v40, v42, v44 & 1);

    sub_27589F328(v85, v86, v47);
  }

  v128 = v120[4];
  v129 = v121;
  v130 = v122;
  v124 = v120[0];
  v125 = v120[1];
  v126 = v120[2];
  v127 = v120[3];
  v50 = *(v90 + *(type metadata accessor for ManageStorageAppView() + 24));
  swift_getKeyPath();
  *&v120[0] = v50;
  sub_27595AF30(&qword_280A12800, type metadata accessor for ManageStorageAppViewModel);
  sub_2759B8638();

  v51 = v95;
  if (*(v50 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) == 1)
  {
    v52 = v88;
    sub_2759B8E88();
    v53 = sub_2759B9808();
    sub_2759B8D78();
    v54 = v93;
    v55 = v52 + *(v92 + 36);
    *v55 = v53;
    *(v55 + 1) = v56;
    *(v55 + 2) = v57;
    *(v55 + 3) = v58;
    *(v55 + 4) = v59;
    v55[40] = 0;
    v60 = &qword_280A10720;
    v61 = &qword_2759C7280;
    sub_27586FBC8(v52, v54, &qword_280A10720, &qword_2759C7280);
  }

  else
  {
    v62 = sub_2759B9CB8();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78);
    v52 = v89;
    v64 = (v89 + *(v63 + 36));
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
    v66 = *MEMORY[0x277CE1050];
    v67 = sub_2759B9D18();
    (*(*(v67 - 8) + 104))(v64 + v65, v66, v67);
    *v64 = swift_getKeyPath();
    *v52 = v62;
    v68 = sub_2759B98F8();
    KeyPath = swift_getKeyPath();
    v70 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
    *v70 = KeyPath;
    v70[1] = v68;
    v71 = sub_2759B9678();
    v72 = v93;
    *(v52 + *(v94 + 36)) = v71;
    v60 = &qword_280A10C58;
    v61 = &unk_2759C8C70;
    sub_27586FBC8(v52, v72, &qword_280A10C58, &unk_2759C8C70);
  }

  swift_storeEnumTagMultiPayload();
  sub_2758F5718();
  sub_275909F70();
  sub_2759B95E8();
  sub_27586BF04(v52, v60, v61);
  v73 = v96;
  sub_27586FBC8(v51, v96, &qword_280A11AE0, &qword_2759CC698);
  v74 = v128;
  v75 = v129;
  v117 = v128;
  v118 = v129;
  v76 = v130;
  v119 = v130;
  v77 = v125;
  v113 = v124;
  v114 = v125;
  v79 = v126;
  v78 = v127;
  v115 = v126;
  v116 = v127;
  v80 = v97;
  *v97 = v124;
  v80[1] = v77;
  *(v80 + 48) = v76;
  v80[2] = v79;
  v80[3] = v78;
  v80[4] = v74;
  v80[5] = v75;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11B08, &qword_2759CC740);
  sub_27586FBC8(v73, v80 + *(v81 + 48), &qword_280A11AE0, &qword_2759CC698);
  sub_27586FBC8(&v113, v120, &qword_280A11B10, &qword_2759CC748);
  sub_27586BF04(v51, &qword_280A11AE0, &qword_2759CC698);
  sub_27586BF04(v73, &qword_280A11AE0, &qword_2759CC698);
  v120[4] = v128;
  v121 = v129;
  v122 = v130;
  v120[0] = v124;
  v120[1] = v125;
  v120[2] = v126;
  v120[3] = v127;
  return sub_27586BF04(v120, &qword_280A11B10, &qword_2759CC748);
}

uint64_t sub_27595A0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ManageStorageAppView() + 24));
  v4 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v5 = (*(v3 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
  v27 = *v5;
  v29 = v5[1];
  sub_27589F2D4();

  v25 = sub_2759B99C8();
  v26 = v6;
  v8 = v7;
  v24 = v9;
  v10 = (*(v3 + v4) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailLabel);
  v28 = *v10;
  v30 = v10[1];

  v11 = sub_2759B99C8();
  v13 = v12;
  v15 = v14;
  sub_2759B9688();
  v16 = sub_2759B9958();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_27589F328(v11, v13, v15 & 1);

  *a2 = v25;
  *(a2 + 8) = v8;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v20 & 1;
  *(a2 + 56) = v22;
  sub_27589F3E4(v25, v8, v24 & 1);

  sub_27589F3E4(v16, v18, v20 & 1);

  sub_27589F328(v16, v18, v20 & 1);

  sub_27589F328(v25, v8, v24 & 1);
}

uint64_t sub_27595A2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2759B9CC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AA8, &qword_2759CC660);
  v26 = *(v9 - 8);
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v25 = &v23 - v11;
  v12 = type metadata accessor for ManageStorageAppView();
  v13 = *(a1 + *(v12 + 24));
  if (*(v13 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_listImage))
  {
    v14 = v12;
    v23 = v9;
    v24 = a2;
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);

    v15 = sub_2759B9D28();
    (*(v5 + 8))(v8, v4);
    v16 = *(v14 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A10, &qword_2759CC5B8);
    sub_2759B8EA8();
    v17 = 0xD000000000000011;
    sub_2759B8EA8();
    sub_2759BA028();
    sub_2759B8F18();
    v34 = 1;
    *&v33[22] = v36;
    *&v33[38] = v37;
    *&v33[6] = v35;
    v31 = v15;
    *v32 = 1;
    *&v32[2] = *v33;
    *&v32[18] = *&v33[16];
    *&v32[34] = *&v33[32];
    *&v32[48] = *(&v37 + 1);
    *&v27[0] = 0;
    *(&v27[0] + 1) = 0xE000000000000000;
    sub_2759BA8C8();

    v29 = 0xD000000000000016;
    v30 = 0x80000002759E2640;
    if (*(v13 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID + 8))
    {
      v17 = *(v13 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
      v18 = *(v13 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID + 8);
    }

    else
    {
      v18 = 0x80000002759E2660;
    }

    MEMORY[0x277C840E0](v17, v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11AB8, &qword_2759CC668);
    sub_27595AE20();
    v21 = v25;
    sub_2759B9B38();

    v27[2] = *&v32[16];
    v27[3] = *&v32[32];
    v28 = *&v32[48];
    v27[0] = v31;
    v27[1] = *v32;
    sub_27586BF04(v27, &qword_280A11AB8, &qword_2759CC668);
    v22 = v24;
    sub_27589F26C(v21, v24, &qword_280A11AA8, &qword_2759CC660);
    return (*(v26 + 56))(v22, 0, 1, v23);
  }

  else
  {
    v19 = *(v26 + 56);

    return v19(a2, 1, 1, v9);
  }
}

unint64_t sub_27595A6E0()
{
  result = qword_280A119E0;
  if (!qword_280A119E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A119E0);
  }

  return result;
}

void sub_27595A75C()
{
  sub_27595A870(319, &qword_280A11A28, type metadata accessor for ManageStorageAppsListViewModel, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_27595A870(319, &qword_280A0F5F0, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ManageStorageAppViewModel();
      if (v2 <= 0x3F)
      {
        sub_27595A8D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27595A870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_27595A8D4()
{
  if (!qword_280A11A30)
  {
    sub_27595A6E0();
    v0 = sub_2759B8EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A11A30);
    }
  }
}

unint64_t sub_27595A930()
{
  result = qword_280A11A38;
  if (!qword_280A11A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11A40, &qword_2759CC5D8);
    sub_27589B02C(&qword_280A11990, &qword_280A11950, &qword_2759CC4D0);
    sub_275958CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11A38);
  }

  return result;
}

uint64_t sub_27595AA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageAppView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595AA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageAppView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_27595AACC()
{
  v1 = *(type metadata accessor for ManageStorageAppView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_275959370(v2);
}

unint64_t sub_27595AB34()
{
  result = qword_280A11A78;
  if (!qword_280A11A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11A50, &qword_2759CC638);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11A48, &qword_2759CC630);
    sub_2759B96A8();
    sub_27589B02C(&qword_280A11A68, &qword_280A11A48, &qword_2759CC630);
    sub_27595AF30(&qword_280A11A70, MEMORY[0x277CDE1B0]);
    swift_getOpaqueTypeConformance2();
    sub_27589B02C(&qword_280A0F638, &qword_280A0F640, &unk_2759C7240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11A78);
  }

  return result;
}

unint64_t sub_27595ACBC()
{
  result = qword_280A11A98;
  if (!qword_280A11A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11A88, &qword_2759CC658);
    sub_27595AD6C(&qword_280A11AA0, &qword_280A11AA8, &qword_2759CC660, sub_27595AE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11A98);
  }

  return result;
}

uint64_t sub_27595AD6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_27595AF30(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27595AE20()
{
  result = qword_280A11AB0;
  if (!qword_280A11AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11AB8, &qword_2759CC668);
    sub_27595AEAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11AB0);
  }

  return result;
}

unint64_t sub_27595AEAC()
{
  result = qword_280A11AC0;
  if (!qword_280A11AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11AC8, &qword_2759CC670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11AC0);
  }

  return result;
}

uint64_t sub_27595AF30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for HeaderAnimationView()
{
  result = qword_280A11B30;
  if (!qword_280A11B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27595AFF0()
{
  sub_27595B234();
  if (v0 <= 0x3F)
  {
    sub_27595B28C(319, &qword_280A0E6D8, MEMORY[0x277D23330], &qword_280A0E6E0, MEMORY[0x277D23330]);
    if (v1 <= 0x3F)
    {
      sub_27595B28C(319, &qword_280A0F930, MEMORY[0x277D232E8], &qword_280A0F8C8, MEMORY[0x277D232E8]);
      if (v2 <= 0x3F)
      {
        sub_27595B320(319, &qword_280A10B38, &unk_280A11C70, qword_2759C1240, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_27595B320(319, &qword_280A11B40, &qword_280A0E808, &qword_2759CC1E0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2759B8C48();
            if (v5 <= 0x3F)
            {
              sub_27595B320(319, &qword_280A0F918, &qword_280A0F920, &qword_2759D0380, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                sub_27595B320(319, &qword_280A0FC60, &qword_280A0FC68, &qword_2759C7830, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
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

void sub_27595B234()
{
  if (!qword_280A0E6C8)
  {
    sub_2759B8B18();
    v0 = sub_2759BA448();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0E6C8);
    }
  }
}

void sub_27595B28C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_27595CB28(a4, a5);
    v8 = sub_2759B9178();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_27595B320(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_27595B384()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(v0 + 56);

    sub_2759BA658();
    v9 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v6;
}

void *sub_27595B4D4()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(v0 + 72);

    sub_2759BA658();
    v9 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v6;
}

void sub_27595B624(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  if (*(v1 + 24))
  {
    v8 = type metadata accessor for HeaderAnimationView();
    v9 = v8[10];

    v10 = sub_2759B8C38();
    v22 = a1;
    v11 = v10;
    v13 = v12;

    sub_27595C8BC(v1 + v8[12], v7);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v7, 1, v14) == 1)
    {
      sub_27595C92C(v7);
      v16 = 0;
    }

    else
    {

      sub_2759B8AA8();

      (*(v15 + 8))(v7, v14);
      v16 = v23 ^ 1;
    }

    v17 = sub_27595B384();
    v18 = sub_27595B4D4();
    v19 = *(v2 + v8[11]);

    sub_2758BB734(v17, v18, v11, v13, v19, v16 & 1, v22);
  }

  else
  {
    v20 = *(v1 + 32);
    sub_2759B8C08();
    sub_27595CB28(&qword_280A0E6E0, MEMORY[0x277D23330]);
    sub_2759B9158();
    __break(1u);
  }
}

uint64_t sub_27595B8D0()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27595B994()
{
  *v0;
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_27595BA44()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27595BB04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27595CC78();
  *a2 = result;
  return result;
}

void sub_27595BB34(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEB00000000736E6FLL;
  v5 = 0x697463416E6F6369;
  if (*v1 != 2)
  {
    v5 = 0x616D696E41657375;
    v4 = 0xEC0000006E6F6974;
  }

  if (*v1)
  {
    v3 = 0x6C6562616CLL;
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

uint64_t sub_27595BBB4()
{
  v1 = 25705;
  v2 = 0x697463416E6F6369;
  if (*v0 != 2)
  {
    v2 = 0x616D696E41657375;
  }

  if (*v0)
  {
    v1 = 0x6C6562616CLL;
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

uint64_t sub_27595BC30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27595CC78();
  *a1 = result;
  return result;
}

uint64_t sub_27595BC58(uint64_t a1)
{
  v2 = sub_27595C994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27595BC94(uint64_t a1)
{
  v2 = sub_27595C994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27595BCD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v57 - v5;
  v69 = sub_2759B8BD8();
  v60 = *(v69 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2759B8C48();
  v67 = *(v65 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v66 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2759B85A8();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11B68, &qword_2759CC8B8);
  v71 = *(v13 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  v17 = type metadata accessor for HeaderAnimationView();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v20 + 2) = MEMORY[0x277D84F90];
  sub_2759B8C08();
  sub_27595CB28(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v74 = sub_2759B9168();
  *(v20 + 3) = v74;
  *(v20 + 4) = v21;
  sub_2759B8BB8();
  sub_27595CB28(&qword_280A0F8C8, MEMORY[0x277D232E8]);
  v73 = sub_2759B9168();
  *(v20 + 5) = v73;
  *(v20 + 6) = v22;
  KeyPath = swift_getKeyPath();
  *(v20 + 7) = KeyPath;
  v20[64] = 0;
  *(v20 + 9) = swift_getKeyPath();
  v20[80] = 0;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27595C994();
  v24 = v75;
  sub_2759BAC18();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v70;
  v59 = v17;
  v75 = a1;
  LOBYTE(v76) = 0;
  v26 = sub_2759BAA58();
  v28 = 0;
  if (!v27)
  {
    v30 = v25;
    sub_2759B8598();
    v31 = sub_2759B8588();
    v33 = v32;
    (*(v61 + 8))(v30, v62);
    v27 = v33;
    v26 = v31;
  }

  v34 = v65;
  *v20 = v26;
  *(v20 + 1) = v27;
  LOBYTE(v76) = 1;
  sub_27595CB28(&qword_280A0E8C0, MEMORY[0x277D23340]);
  v35 = v66;
  sub_2759BAA78();
  (*(v67 + 32))(&v20[*(v59 + 40)], v35, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v76) = 2;
  sub_2758C7304();
  sub_2759BAA68();
  v58 = v13;
  v57 = v16;
  v42 = v78;
  v43 = MEMORY[0x277D84F90];
  if (v78)
  {
    v44 = *(v78 + 2);
    if (v44)
    {
      KeyPath = 0;
      v77 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v44, 0);
      v43 = v77;
      v45 = v60 + 16;
      v46 = *(v60 + 16);
      v47 = *(v60 + 80);
      v70 = v42;
      v48 = &v42[(v47 + 32) & ~v47];
      v73 = *(v60 + 72);
      v74 = v46;
      v49 = (v60 + 8);
      v50 = v69;
      do
      {
        v51 = v68;
        v52 = v45;
        v74(v68, v48, v50);
        sub_2759B8BC8();
        v50 = v69;
        (*v49)(v51, v69);
        v77 = v43;
        v54 = *(v43 + 16);
        v53 = *(v43 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_2759509B0((v53 > 1), v54 + 1, 1);
          v50 = v69;
          v43 = v77;
        }

        *(v43 + 16) = v54 + 1;
        sub_275827D1C(&v76, v43 + 40 * v54 + 32);
        v48 += v73;
        --v44;
        v45 = v52;
      }

      while (v44);

      v36 = v59;
      v28 = KeyPath;
      goto LABEL_8;
    }
  }

  v36 = v59;
LABEL_8:
  *&v20[*(v36 + 44)] = v43;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC68, &qword_2759C7830);
  LOBYTE(v76) = 3;
  sub_2758EA064();
  v38 = v63;
  v39 = v58;
  v40 = v57;
  sub_2759BAA68();
  v41 = v71;
  if (v28)
  {

    (*(v41 + 8))(v40, v39);
    (*(*(v37 - 8) + 56))(v38, 1, 1, v37);
  }

  else
  {
    (*(v71 + 8))(v40, v39);
  }

  v55 = v75;
  v56 = v64;
  sub_27595C9E8(v38, &v20[*(v36 + 48)]);
  sub_27595CA58(v20, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return sub_27595CABC(v20);
}

uint64_t sub_27595C53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_27595CB28(&qword_280A11070, type metadata accessor for HeaderAnimationView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27595C5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_27595CB28(&qword_280A11B48, type metadata accessor for HeaderAnimationView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27595C63C(uint64_t a1)
{
  v2 = sub_27595CB28(&qword_280A11B48, type metadata accessor for HeaderAnimationView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27595C6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_27595CB28(&qword_280A11B60, type metadata accessor for HeaderAnimationView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27595C774()
{
  sub_27595CB28(&qword_280A11070, type metadata accessor for HeaderAnimationView);
  sub_27595CB28(&qword_280A11B48, type metadata accessor for HeaderAnimationView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27595C8BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595C92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27595C994()
{
  result = qword_280A11B70;
  if (!qword_280A11B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11B70);
  }

  return result;
}

uint64_t sub_27595C9E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595CA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeaderAnimationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595CABC(uint64_t a1)
{
  v2 = type metadata accessor for HeaderAnimationView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27595CB28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27595CB74()
{
  result = qword_280A11B80;
  if (!qword_280A11B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11B80);
  }

  return result;
}

unint64_t sub_27595CBCC()
{
  result = qword_280A11B88;
  if (!qword_280A11B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11B88);
  }

  return result;
}

unint64_t sub_27595CC24()
{
  result = qword_280A11B90;
  if (!qword_280A11B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11B90);
  }

  return result;
}

uint64_t sub_27595CC78()
{
  v0 = sub_2759BAA48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27595CCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_275950850(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA40, &qword_2759C19B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BD8, &unk_2759CCDB0);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_275950850((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27595CE18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_2759508F0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_27586E058(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F920, &qword_2759D0380);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A117F8, &qword_2759CCC40);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2759508F0((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_275827D1C(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27595CF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_275950930(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v13;
    do
    {
      v11 = *v4;
      v5 = *v4;
      v6 = *(&v11 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11818, &qword_2759CBF38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11808, &qword_2759CCC50);
      swift_dynamicCast();
      v7 = v12;
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_275950930((v8 > 1), v9 + 1, 1);
        v7 = v12;
      }

      *(v13 + 16) = v9 + 1;
      *(v13 + 16 * v9 + 32) = v7;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_27595D098@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
  v7 = sub_27585D1B8();
  v26 = v6;
  v27 = v22;
  v28 = v5;
  v29 = v7;
  v21[1] = MEMORY[0x277CDEAC8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = v21 - v11;
  swift_getKeyPath();

  sub_2759B9B18();

  v13 = *(v4 + 16);

  v15 = sub_27595CE18(v14);

  v26 = v6;
  v27 = v22;
  v28 = v5;
  v29 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_27592E2A4(v15, v23, v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);

  v18 = MEMORY[0x277CE11C0];
  v19 = v25;
  v25[3] = MEMORY[0x277CE11C8];
  v19[4] = v18;
  *v19 = v17;
  return (*(v9 + 8))(v12, OpaqueTypeMetadata2);
}

uint64_t sub_27595D2A4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_2759B8AF8();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27595D3B8, 0, 0);
}

uint64_t sub_27595D3B8()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE70);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ReloadBackupsClientDataAction", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[5];

  type metadata accessor for ManageStorageBackupsDataModel();
  swift_allocObject();

  v0[14] = sub_2758BFFA4(v6);
  v0[15] = sub_2758C1BAC();
  v0[16] = sub_2759BA4C8();
  v0[17] = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595D544, v8, v7);
}

uint64_t sub_27595D544()
{
  v1 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_27595D5AC, 0, 0);
}

uint64_t sub_27595D5AC()
{
  v1 = *(v0 + 128);
  *(v0 + 144) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595D638, v3, v2);
}

uint64_t sub_27595D638()
{
  v1 = v0[18];

  v2 = off_280A128B0;
  v0[19] = qword_280A128A8;
  v0[20] = v2;

  return MEMORY[0x2822009F8](sub_27595D6B8, 0, 0);
}

uint64_t sub_27595D6B8()
{
  v33 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[5];
  sub_2759B8C18();

  v7 = (*(v5 + 48))(v3, 1, v4);
  v8 = v0[13];
  if (v7)
  {
    sub_27586BF04(v0[13], &qword_280A10DE0, &unk_2759CF4C0);
  }

  else
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[8];
    v12 = v0[9];
    v13 = *(v12 + 16);
    v13(v9, v0[13], v11);
    sub_27586BF04(v8, &qword_280A10DE0, &unk_2759CF4C0);
    v13(v10, v9, v11);
    v14 = (*(v12 + 88))(v10, v11);
    v15 = *(v12 + 8);
    v17 = v0[11];
    v16 = v0[12];
    if (v14 == *MEMORY[0x277D23270])
    {
      v18 = v0[8];
      v19 = v0[9];
      v15(v0[12], v18);
      (*(v19 + 96))(v17, v18);
      v20 = *(*v17 + 16);

      goto LABEL_7;
    }

    v21 = v0[8];
    v15(v0[11], v21);
    type metadata accessor for DecodableStateError();
    sub_27595F260(&qword_280A0FA50, 255, type metadata accessor for DecodableStateError);
    v22 = swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA58, &unk_2759C4B40) + 48);
    v13(v24, v16, v21);
    *(v24 + v25) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10040, &qword_2759C2630);
    swift_willThrow();
    v15(v16, v21);
  }

  v20 = sub_2758A289C(MEMORY[0x277D84F90]);
LABEL_7:
  v26 = v0[15];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v20;
  sub_27595EE84(v26, sub_27595E9E4, 0, isUniquelyReferenced_nonNull_native, &v32);
  v0[21] = 0;

  v0[22] = v32;
  v28 = v0[16];
  v0[23] = sub_2759BA4B8();
  v30 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595DA1C, v30, v29);
}

uint64_t sub_27595DA1C()
{
  v1 = *(v0 + 184);

  return MEMORY[0x2822009F8](sub_27595DA84, 0, 0);
}

uint64_t sub_27595DA84()
{
  v1 = *(v0 + 128);
  *(v0 + 192) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595DB10, v3, v2);
}

uint64_t sub_27595DB10()
{
  v1 = v0[24];

  v2 = off_280A128B0;
  v0[25] = qword_280A128A8;
  v0[26] = v2;

  return MEMORY[0x2822009F8](sub_27595DB90, 0, 0);
}

uint64_t sub_27595DB90()
{
  v1 = v0[22];
  v2 = v0[16];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *v3 = v6;
  (*(v4 + 104))(v3, *MEMORY[0x277D23270], v5);
  v0[27] = sub_2759BA4B8();
  v8 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27595DC78, v8, v7);
}

uint64_t sub_27595DC78()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = v0[5];

  v0[2] = v3;
  v0[3] = v2;
  sub_2759B8C98();
  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_27595DD34, 0, 0);
}

uint64_t sub_27595DD34()
{
  v1 = v0[7];
  v2 = *(v1 + 24);
  v0[28] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_27595DE90;
    v5 = v0[14];

    return sub_2758C2074();
  }

  else
  {
    v7 = v0[13];
    v8 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v13 = v0[5];
    v12 = v0[6];
    v14 = *(v1 + 16);

    sub_2759BA438();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_27595DE90(uint64_t a1)
{
  v2 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](sub_27595DF90, 0, 0);
}

uint64_t sub_27595DF90()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[21];
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[4] = v2;
  sub_27595F260(&qword_280A12800, 255, type metadata accessor for ManageStorageAppViewModel);
  sub_2759B8628();

  v5 = v0[13];
  v6 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v10 = v0[6];
  v11 = v0[5];
  v12 = *(v0[7] + 16);

  sub_2759BA438();

  v13 = v0[1];

  return v13();
}

uint64_t sub_27595E134()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_27595E1B0()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_27595E208@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  *a2 = v5 != 0;
  return result;
}

void sub_27595E25C(uint64_t a1@<X8>)
{
  strcpy(a1, "onCompletion");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_27595E2A0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2759BAA48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27595E2F8(uint64_t a1)
{
  v2 = sub_27595F20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27595E334(uint64_t a1)
{
  v2 = sub_27595F20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27595E370(uint64_t *a1)
{
  v3 = v1;
  v39 = *v1;
  v40 = v2;
  v5 = sub_2759B8BD8();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BB0, &qword_2759CCC48);
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - v11;
  *(v1 + 24) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27595F20C();
  v14 = v40;
  sub_2759BAC18();
  if (v14)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v5;
    v15 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
    sub_2758C7304();
    sub_2759BAA68();
    v16 = v9;
    if (v41)
    {
      v18 = v41;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = *(v18 + 16);
    if (v19)
    {
      v32 = v12;
      v33 = v16;
      v34 = 0;
      v35 = a1;
      v36 = v1;
      v42 = MEMORY[0x277D84F90];
      sub_2759509B0(0, v19, 0);
      v20 = v42;
      v21 = v15 + 16;
      v22 = *(v15 + 16);
      v23 = *(v15 + 80);
      v31[1] = v18;
      v24 = v18 + ((v23 + 32) & ~v23);
      v38 = *(v21 + 56);
      v39 = v22;
      v25 = (v21 - 8);
      v26 = v40;
      do
      {
        v27 = v21;
        v39(v8, v24, v26);
        sub_2759B8BC8();
        v26 = v40;
        (*v25)(v8, v40);
        v42 = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2759509B0((v28 > 1), v29 + 1, 1);
          v26 = v40;
          v20 = v42;
        }

        *(v20 + 16) = v29 + 1;
        sub_275827D1C(&v41, v20 + 40 * v29 + 32);
        v24 += v38;
        --v19;
        v21 = v27;
      }

      while (v19);
      (*(v37 + 8))(v32, v33);

      a1 = v35;
      v3 = v36;
    }

    else
    {
      v30 = v16;

      (*(v37 + 8))(v12, v30);
      v20 = MEMORY[0x277D84F90];
    }

    *(v3 + 16) = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_27595E73C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_27595E7A0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585A7E4;

  return sub_27595D2A4(a1, a2);
}

uint64_t sub_27595E8FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27595E370(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_27595E9E4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_2759B8AF8();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

uint64_t sub_27595EAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10050, &unk_2759C60A0);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v49 = sub_2759B8AF8();
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v49);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10048, &unk_2759CCC00);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v46 = v6;
  v52 = v21;
  if (v22)
  {
    v48 = a1;
    v23 = v20;
LABEL_11:
    v47 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = (*(v18 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = v49;
    (*(v7 + 16))(v10, *(v18 + 56) + *(v7 + 72) * v27, v49);
    v32 = v51;
    v33 = *(v51 + 48);
    *v17 = v29;
    *(v17 + 1) = v30;
    v34 = v10;
    v35 = v32;
    (*(v7 + 32))(&v17[v33], v34, v31);
    v36 = v50;
    (*(v50 + 56))(v17, 0, 1, v35);

    v37 = v47;
    a1 = v48;
    v26 = v23;
    v38 = v36;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v39 = v53;
    v1[2] = v52;
    v1[3] = v26;
    v1[4] = v37;
    v40 = v1[5];
    v41 = v1[6];
    sub_27589F26C(v17, v39, &qword_280A10048, &unk_2759CCC00);
    v42 = 1;
    if ((*(v38 + 48))(v39, 1, v35) != 1)
    {
      v43 = v39;
      v44 = v46;
      sub_27589F26C(v43, v46, &unk_280A10050, &unk_2759C60A0);
      v40(v44);
      sub_27586BF04(v44, &unk_280A10050, &unk_2759C60A0);
      v42 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0);
    return (*(*(v45 - 8) + 56))(a1, v42, 1, v45);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v38 = v50;
        v35 = v51;
        (*(v50 + 56))(&v46 - v16, 1, 1, v51);
        v37 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v48 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_27595EE84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v9 = sub_2759B8AF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BA8, &qword_2759CCBE8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v50 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v54 = a1;
  v55 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v56 = v19;
  v57 = 0;
  v58 = v22 & v20;
  v59 = a2;
  v60 = a3;
  v52 = v10;
  v53 = (v10 + 32);
  v50[3] = v10 + 40;

  v50[1] = a3;

  for (i = v17; ; v17 = i)
  {
    sub_27595EAA0(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EC08, &unk_2759CCBF0);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_2758F6594();
    }

    v25 = *(v24 + 48);
    v27 = *v17;
    v26 = v17[1];
    v28 = *v53;
    v29 = v17 + v25;
    v30 = v13;
    v31 = v9;
    (*v53)(v13, v29, v9);
    v32 = *v61;
    v34 = sub_27586F8A0(v27, v26);
    v35 = *(v32 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (*(v32 + 24) >= v37)
    {
      if ((a4 & 1) == 0)
      {
        sub_2759073E8();
      }
    }

    else
    {
      v39 = v61;
      sub_275905500(v37, a4 & 1);
      v40 = *v39;
      v41 = sub_27586F8A0(v27, v26);
      if ((v38 & 1) != (v42 & 1))
      {
        goto LABEL_20;
      }

      v34 = v41;
    }

    v43 = *v61;
    if (v38)
    {

      v23 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      (*(v52 + 40))(v23, v30, v31);
    }

    else
    {
      v43[(v34 >> 6) + 8] |= 1 << v34;
      v44 = (v43[6] + 16 * v34);
      *v44 = v27;
      v44[1] = v26;
      v45 = v43[7] + *(v52 + 72) * v34;
      v13 = v30;
      v9 = v31;
      v28(v45, v30, v31);
      v46 = v43[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_19;
      }

      v43[2] = v48;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_2759BAB38();
  __break(1u);
  return result;
}

unint64_t sub_27595F20C()
{
  result = qword_280A11BB8;
  if (!qword_280A11BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BB8);
  }

  return result;
}

uint64_t sub_27595F260(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27595F2BC()
{
  result = qword_280A11BC0;
  if (!qword_280A11BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BC0);
  }

  return result;
}

unint64_t sub_27595F314()
{
  result = qword_280A11BC8;
  if (!qword_280A11BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BC8);
  }

  return result;
}

unint64_t sub_27595F36C()
{
  result = qword_280A11BD0;
  if (!qword_280A11BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BD0);
  }

  return result;
}

uint64_t sub_27595F3C0(uint64_t a1)
{
  v2 = sub_2759B9628();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11C20, &qword_2759CCE58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_2759B9618();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10798, &qword_2759C7400);
  sub_27589B02C(&qword_280A107A8, &qword_280A10798, &qword_2759C7400);
  sub_2759B8DE8();
  v9 = sub_27589B02C(&unk_280A11C28, &qword_280A11C20, &qword_2759CCE58);
  MEMORY[0x277C833F0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_27595F5AC(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarBackButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_27595FD2C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27595FD90(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_2759B9DB8();
}

uint64_t sub_27595F6D8()
{
  v0 = sub_2759B9048();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0);
  MEMORY[0x277C83C10]();
  sub_2759B9038();
  return sub_2759B9E88();
}

uint64_t sub_27595F788@<X0>(uint64_t a1@<X8>)
{
  sub_2759B9498();
  type metadata accessor for iCloudHomeDataModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_2759B9998();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_27595F898()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11C08, &qword_2759CCE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11C10, &qword_2759CCE50);
  sub_27589B02C(&qword_280A11C18, &qword_280A11C08, &qword_2759CCE48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11C20, &qword_2759CCE58);
  sub_27589B02C(&unk_280A11C28, &qword_280A11C20, &qword_2759CCE58);
  swift_getOpaqueTypeConformance2();
  return sub_2759B9B68();
}

uint64_t View.toolbarBackButton(navigationPath:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarBackButton();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27595FAF0(a1, v9);
  MEMORY[0x277C83910](v9, a2, v6, a3);
  return sub_27595FB60(v9);
}

uint64_t type metadata accessor for ToolbarBackButton()
{
  result = qword_280A11BF0;
  if (!qword_280A11BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27595FAF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595FB60(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarBackButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27595FBBC()
{
  result = qword_280A11BE8;
  if (!qword_280A11BE8)
  {
    type metadata accessor for ToolbarBackButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11BE8);
  }

  return result;
}

void sub_27595FC3C()
{
  sub_27595FCA8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_27595FCA8()
{
  if (!qword_280A11C00)
  {
    sub_2759B9048();
    v0 = sub_2759B9EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A11C00);
    }
  }
}

uint64_t sub_27595FD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarBackButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595FD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarBackButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27595FDF4()
{
  v0 = *(*(type metadata accessor for ToolbarBackButton() - 8) + 80);

  return sub_27595F6D8();
}

uint64_t sub_27595FE54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = sub_2759B87B8();
  sub_275961824(&qword_280A0EFC0, MEMORY[0x277D402D0]);
  v13[0] = v3;
  v13[1] = v5;
  v13[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v13);

  sub_2759B9B18();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v13, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = sub_2759B8798();
  sub_275961824(&unk_280A10070, MEMORY[0x277D40290]);
  v10[0] = v6;
  v10[1] = v8;
  v10[2] = v7;
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v10);

  sub_2759B9B18();

  __swift_project_boxed_opaque_existential_1(v10, v11);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
  sub_27585D258();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2759B9B18();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_275960198(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B87B8();
  v7[3] = v4;
  v7[4] = &off_288480E78;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, a1, v4);
  swift_beginAccess();
  sub_2758CE724(v7, a2 + 16, &qword_280A10028, &qword_2759CCFB0);
  return swift_endAccess();
}

uint64_t sub_275960254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C60, &qword_2759C6060);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_2759B8798();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_navigationMode;
  swift_beginAccess();
  sub_2758CE724(v7, a2 + v10, &unk_280A11C60, &qword_2759C6060);
  return swift_endAccess();
}

uint64_t sub_275960398()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_2759BA768();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2759B8768();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;

  sub_2759BA758();
  sub_2759B8748();
  swift_beginAccess();
  sub_27586FBC8(v0 + 16, &v26, &qword_280A10028, &qword_2759CCFB0);
  if (v27)
  {
    sub_275827D1C(&v26, v28);
    v14 = sub_2759BA518();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    sub_27586E058(v28, &v26);
    (*(v8 + 16))(v11, v13, v7);
    sub_2759BA4C8();
    v15 = sub_2759BA4B8();
    v16 = (*(v8 + 80) + 72) & ~*(v8 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_275827D1C(&v26, v17 + 32);
    (*(v8 + 32))(v17 + v16, v11, v7);
    sub_27587D460(0, 0, v4, &unk_2759CCFC0, v17);

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_27586BF04(&v26, &qword_280A10028, &qword_2759CCFB0);
    if (qword_280A0E360 != -1)
    {
      swift_once();
    }

    v19 = sub_2759B89A8();
    __swift_project_value_buffer(v19, qword_280A23900);
    v20 = sub_2759B8988();
    v21 = sub_2759BA648();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2758937B8(0xD00000000000001ELL, 0x80000002759E27B0, v28);
      _os_log_impl(&dword_275819000, v20, v21, "%s missing appendSettingsNavigationPath", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x277C85860](v23, -1, -1);
      MEMORY[0x277C85860](v22, -1, -1);
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_2759607CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v31 - v3;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, qword_280A23900);
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2758937B8(0xD000000000000019, 0x80000002759E27D0, &v32);
    _os_log_impl(&dword_275819000, v6, v7, "%s NavigationMode is not stateDriven, using legacy navigation", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v10 = sub_2759BA258();
  v11 = PSBundlePathForPreferenceBundle();

  if (v11)
  {
    v12 = v11;

    if (!v12)
    {
      sub_2759BA298();
      v12 = sub_2759BA258();
    }

    v13 = [objc_allocWithZone(MEMORY[0x277CCA8D8]) initWithPath_];

    if (v13)
    {
      [v13 principalClass];
    }

    v14 = CreateDetailControllerInstanceWithClass();
    if (v14)
    {
      v31 = v14;
      if (*(v0 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_appsListViewModel))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = Strong;
          v17 = sub_2759BA518();
          (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
          sub_2759BA4C8();
          v18 = v16;
          v19 = v31;
          v20 = sub_2759BA4B8();
          v21 = swift_allocObject();
          v22 = MEMORY[0x277D85700];
          v21[2] = v20;
          v21[3] = v22;
          v21[4] = v18;
          v21[5] = v19;
          sub_27587D460(0, 0, v4, &unk_2759CCFD8, v21);

          return;
        }
      }

      v23 = sub_2759B8988();
      v24 = sub_2759BA648();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v32 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_2758937B8(0xD000000000000019, 0x80000002759E27D0, &v32);
        _os_log_impl(&dword_275819000, v23, v24, "%s missing navigationController", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x277C85860](v26, -1, -1);
        MEMORY[0x277C85860](v25, -1, -1);

LABEL_18:
        return;
      }
    }

    else
    {
      v31 = sub_2759B8988();
      v27 = sub_2759BA648();
      if (os_log_type_enabled(v31, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v32 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_2758937B8(0xD000000000000019, 0x80000002759E27D0, &v32);
        _os_log_impl(&dword_275819000, v31, v27, "%s missing detailController", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x277C85860](v29, -1, -1);
        MEMORY[0x277C85860](v28, -1, -1);
        goto LABEL_18;
      }
    }

    v30 = v31;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_275960CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275960D88, v7, v6);
}

uint64_t sub_275960D88()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2759B8768();
  sub_275961824(&unk_280A10030, MEMORY[0x277D40250]);
  sub_2759B87A8();
  v4 = v0[1];

  return v4();
}

uint64_t sub_275960E58()
{
  sub_27586BF04(v0 + 16, &qword_280A10028, &qword_2759CCFB0);
  sub_27586BF04(v0 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_navigationMode, &unk_280A11C60, &qword_2759C6060);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PushLocalStorageControllerAction()
{
  result = qword_280A11C38;
  if (!qword_280A11C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275960F48()
{
  sub_2758DB67C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_275960FEC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_275961280();
}

uint64_t sub_275961144@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(v2 + 48);
  v5 = *(v2 + 52);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  v7 = OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_navigationMode;
  v8 = sub_2759B8798();
  result = (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *(v6 + OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_appsListViewModel) = 0;
  *a2 = v6;
  return result;
}

uint64_t sub_275961280()
{
  v1[10] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C60, &qword_2759C6060) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275961328, 0, 0);
}

uint64_t sub_275961328()
{
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "PushLocalStorageControllerAction", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = v0[12];
  v6 = v0[10];

  v0[5] = &type metadata for FeatureFlag;
  v0[6] = sub_2758C4A6C();
  *(v0 + 16) = 1;
  sub_2759B86A8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = OBJC_IVAR____TtC14iCloudSettings32PushLocalStorageControllerAction_navigationMode;
  swift_beginAccess();
  sub_27586FBC8(v6 + v7, v5, &unk_280A11C60, &qword_2759C6060);
  v8 = sub_2759B8798();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) != 1)
  {
    v10 = v0[11];
    sub_27586FBC8(v0[12], v10, &unk_280A11C60, &qword_2759C6060);
    if ((*(v9 + 88))(v10, v8) == *MEMORY[0x277D40278])
    {
      v11 = v0[10];
      sub_275960398();
      goto LABEL_10;
    }

    (*(v9 + 8))(v0[11], v8);
  }

  v12 = v0[10];
  sub_2759607CC();
LABEL_10:
  v14 = v0[11];
  v13 = v0[12];

  sub_27586BF04(v13, &unk_280A11C60, &qword_2759C6060);

  v15 = v0[1];

  return v15();
}