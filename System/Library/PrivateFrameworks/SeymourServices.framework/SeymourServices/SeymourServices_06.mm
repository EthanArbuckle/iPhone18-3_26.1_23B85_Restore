void sub_226F38F14(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    sub_226F38F34(a1, a2 & 1);
  }

  else if (!(a2 >> 6))
  {
  }
}

void sub_226F38F34(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t RestrictionProfileRegistry.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_profileStoreURL;
  v2 = sub_2276624A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_226F38F14(*(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state), *(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state + 8));
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry____lazy_storage___decoder);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t RestrictionProfileRegistry.allProfiles()()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F390AC, v0, 0);
}

uint64_t sub_226F390AC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v4);
  v5 = sub_226EB9ED4(&qword_28139A060, type metadata accessor for RestrictionProfileRegistry);
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8648, &qword_227671288);
  *v7 = v0;
  v7[1] = sub_226F3923C;
  v9 = v0[3];

  return MEMORY[0x2822008A0](v0 + 2, v3, v5, 0xD000000000000011, 0x8000000227693DA0, sub_226F39490, v9, v8);
}

uint64_t sub_226F3923C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_226F393E0;
  }

  else
  {
    v6 = sub_226F39368;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226F39368()
{
  v1 = v0[6];
  v2 = sub_226F33CA4(v0[2]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_226F393E0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t type metadata accessor for RestrictionProfileRegistry()
{
  result = qword_28139E808;
  if (!qword_28139E808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RestrictionProfileRegistry.profile(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_22766B390();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_227665680();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F395B8, v3, 0);
}

uint64_t sub_226F395B8()
{
  v1 = *(v0 + 48);
  v2 = sub_226EB9ED4(&qword_28139A060, type metadata accessor for RestrictionProfileRegistry);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8648, &qword_227671288);
  *v4 = v0;
  v4[1] = sub_226F396E4;
  v6 = *(v0 + 48);

  return MEMORY[0x2822008A0](v0 + 16, v1, v2, 0xD000000000000011, 0x8000000227693DA0, sub_226F49204, v6, v5);
}

uint64_t sub_226F396E4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_226F399F0;
  }

  else
  {
    v6 = sub_226F39810;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226F39810()
{
  v1 = v0[2];
  if (*(v1 + 16) && (v2 = sub_226E921E4(v0[4], v0[5], MEMORY[0x277D53390], sub_226F3BBB0), (v3 & 1) != 0))
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[3];
    (*(v5 + 16))(v4, *(v1 + 56) + *(v5 + 72) * v2, v6);

    (*(v5 + 32))(v10, v4, v6);
    sub_22766A730();
    sub_22766B370();
    (*(v9 + 8))(v7, v8);

    v11 = v0[1];
  }

  else
  {

    sub_226F3A080();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    v13 = v0[12];
    v14 = v0[9];

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_226F399F0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226F39A60()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226F39AF0;

  return RestrictionProfileRegistry.allProfiles()();
}

uint64_t sub_226F39AF0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_226F39BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E92F34;

  return RestrictionProfileRegistry.profile(for:)(a1, a2, a3);
}

uint64_t sub_226F39CA4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226F491F0;

  return v7(a1);
}

unint64_t sub_226F39D9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22766D370();
  if (a2)
  {
    MEMORY[0x22AA996B0](1);
    sub_22766C100();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
  }

  v6 = sub_22766D3F0();

  return sub_226F3BAE4(a1, a2, v6);
}

unint64_t sub_226F39E30(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2276694E0();
  v5 = MEMORY[0x277D53DA0];
  sub_226EB9ED4(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D53DA0], &qword_2813A54C8, v5, MEMORY[0x277D53DB0]);
}

unint64_t sub_226F39F04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_227665440();
  v5 = MEMORY[0x277D51640];
  sub_226EB9ED4(&qword_27D7B8660, MEMORY[0x277D51640]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D51640], &qword_27D7B8668, v5, MEMORY[0x277D51658]);
}

unint64_t sub_226F3A030(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22766CB20();
  return sub_226F3C728(a1, v5, &qword_281398AE0, 0x277CBE448);
}

unint64_t sub_226F3A080()
{
  result = qword_27D7B8650;
  if (!qword_27D7B8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8650);
  }

  return result;
}

uint64_t dispatch thunk of RestrictionProfileRegistering.allProfiles()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226F17854;

  return v9(a1, a2);
}

uint64_t dispatch thunk of RestrictionProfileRegistering.profile(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_226E92F34;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_226F3A338()
{
  result = sub_2276624A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices26RestrictionProfileRegistryC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_226F3A440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_226F3A494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_226F3A4F8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchivedSessionsAddedOrigin(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ArchivedSessionsAddedOrigin(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_226F3A6A8()
{
  result = qword_27D7B8658;
  if (!qword_27D7B8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8658);
  }

  return result;
}

unint64_t sub_226F3A6FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_227665F20();
  v5 = MEMORY[0x277D51FE0];
  sub_226EB9ED4(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D51FE0], &qword_27D7B8700, v5, MEMORY[0x277D51FF8]);
}

unint64_t sub_226F3A7D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_227662B60();
  v5 = MEMORY[0x277D49490];
  sub_226EB9ED4(&qword_27D7B8938, MEMORY[0x277D49490]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D49490], &qword_27D7B8940, v5, MEMORY[0x277D494A0]);
}

unint64_t sub_226F3A8A4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_227665680();
  v5 = MEMORY[0x277D51898];
  sub_226EB9ED4(&unk_28139B7E8, MEMORY[0x277D51898]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D51898], &qword_27D7B8900, v5, MEMORY[0x277D518A8]);
}

unint64_t sub_226F3A978(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22766D370();
  MEMORY[0x22AA996B0](a1);
  v4 = sub_22766D3F0();

  return sub_226F3BC7C(a1, v4);
}

unint64_t sub_226F3AA2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2276639B0();
  v5 = MEMORY[0x277D501C8];
  sub_226EB9ED4(&qword_28139BCA8, MEMORY[0x277D501C8]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D501C8], &qword_27D7B8678, v5, MEMORY[0x277D501D8]);
}

unint64_t sub_226F3AB00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(v4 + 40);
  v9 = a4 & 1;
  sub_22766D370();
  sub_226F48338();
  sub_22766BF60();
  v10 = sub_22766D3F0();
  return sub_226F3BCEC(a1, a2, a3, v9, v10);
}

unint64_t sub_226F3ABA4(__int128 *a1)
{
  v3 = *(v1 + 40);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 32);
  sub_22766D370();
  sub_226F482E4();
  sub_22766BF60();
  v4 = sub_22766D3F0();
  return sub_226F3BE00(a1, v4);
}

unint64_t sub_226F3AC48(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v7 = *(v3 + 40);
  sub_22766D370();
  v8 = a2(a1);
  MEMORY[0x22AA996B0](v8);
  v9 = sub_22766D3F0();
  return sub_226F3BF80(a1, v9, a3);
}

unint64_t sub_226F3ACCC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22766D370();
  v4 = *(a1 + 16);
  MEMORY[0x22AA996B0](v4);
  if (v4)
  {
    v5 = (a1 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 40;

      sub_226EB396C(v8, v9, v10);
      sub_226F482E4();
      sub_22766BF60();

      sub_226EB2DFC(v8, v9, v10);
      --v4;
    }

    while (v4);
  }

  v11 = sub_22766D3F0();
  return sub_226F3C03C(a1, v11);
}

unint64_t sub_226F3ADC4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  sub_226EB9ED4(&qword_27D7B88D0, MEMORY[0x277D52730]);
  sub_227663B10();
  v4 = sub_22766D3F0();

  return sub_226F3C2A0(a1, v4);
}

uint64_t sub_226F3AE8C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22766D370();
  v4 = *(a1 + 16);
  MEMORY[0x22AA996B0](v4);
  if (v4)
  {
    sub_226F480FC();
    v5 = (a1 + 48);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_227663B10();
      v5 += 24;
      --v4;
    }

    while (v4);
  }

  v6 = sub_22766D3F0();
  return sub_226F3C498(a1, v6);
}

unint64_t sub_226F3AF78(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(v3 + 40);
  v7 = a3 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  v8 = sub_22766D3F0();
  return sub_226F3C61C(a1, a2, v7, v8);
}

unint64_t sub_226F3B058(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2276624A0();
  v5 = MEMORY[0x277CC9260];
  sub_226EB9ED4(&qword_28139BDE0, MEMORY[0x277CC9260]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277CC9260], &qword_28139BDD8, v5, MEMORY[0x277CC9278]);
}

unint64_t sub_226F3B12C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22766D370();
  sub_22766D3A0();
  if (a2)
  {
    sub_22766C100();
  }

  v6 = sub_22766D3F0();

  return sub_226F3BAE4(a1, a2, v6);
}

unint64_t sub_226F3B1C0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22766CB20();
  return sub_226F3C728(a1, v5, &qword_281398AE8, 0x277CCAD50);
}

unint64_t sub_226F3B23C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_22766CB20();
  return sub_226F3C728(a1, v5, &qword_27D7B8670, 0x277CE63F0);
}

unint64_t sub_226F3B28C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_227668BB0();
  v5 = MEMORY[0x277D537B0];
  sub_226EB9ED4(&qword_27D7B8730, MEMORY[0x277D537B0]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D537B0], &qword_27D7B8738, v5, MEMORY[0x277D537C0]);
}

unint64_t sub_226F3B360(char a1)
{
  v3 = *(v1 + 40);
  sub_22766D370();
  sub_227665A80();
  sub_22766C100();

  v4 = sub_22766D3F0();

  return sub_226F3C7F4(a1 & 1, v4);
}

unint64_t sub_226F3B3E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2276638D0();
  v5 = MEMORY[0x277D50180];
  sub_226EB9ED4(&qword_2813A57E8, MEMORY[0x277D50180]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D50180], &qword_27D7B8920, v5, MEMORY[0x277D50190]);
}

unint64_t sub_226F3B4BC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22766D370();
  sub_22766C100();

  v4 = sub_22766D3F0();

  return sub_226F3C8F8(a1, v4);
}

unint64_t sub_226F3B5B8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22766C000();
  sub_22766D370();
  sub_22766C100();
  v4 = sub_22766D3F0();

  return sub_226F3CAA4(a1, v4);
}

unint64_t sub_226F3B648(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22766D370();
  sub_22766C100();

  v4 = sub_22766D3F0();

  return sub_226F3CBA8(a1, v4);
}

unint64_t sub_226F3B74C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2276627D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v13 = *(v2 + 40);
  sub_22766D370();
  sub_226E93170(a1, v12, &unk_27D7BB9D0, &qword_227671550);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_22766D3A0();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_22766D3A0();
    sub_226EB9ED4(&qword_28139BDA0, MEMORY[0x277CC95F0]);
    sub_22766BF60();
    (*(v5 + 8))(v8, v4);
  }

  v14 = sub_22766D3F0();
  return sub_226F3CDD4(a1, v14);
}

unint64_t sub_226F3B95C(__int16 a1)
{
  v2 = v1;
  v4 = HIBYTE(a1);
  v5 = *(v2 + 40);
  sub_22766D370();
  sub_2274E2FEC(a1);
  sub_22766C100();

  sub_2275E0328(v4);
  sub_22766C100();

  v6 = sub_22766D3F0();

  return sub_226F3D250(a1, v6);
}

unint64_t sub_226F3BA10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_227663480();
  v5 = MEMORY[0x277D4FF88];
  sub_226EB9ED4(&unk_2813A5800, MEMORY[0x277D4FF88]);
  v6 = sub_22766BF50();
  return sub_226F3D3D4(a1, v6, MEMORY[0x277D4FF88], &qword_27D7B89E0, v5, MEMORY[0x277D4FF98]);
}

unint64_t sub_226F3BAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_22766D190() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_226F3BBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];

      LOBYTE(v8) = sub_227667E00();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_226F3BC7C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_226F3BCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    do
    {
      v10 = *(v5 + 48) + 32 * v7;
      if (*v10 == a1)
      {
        v12 = *(v10 + 8);
        v13 = *(v10 + 24);
        sub_226F48150();
        sub_226EC1E18();
        if (sub_227663B20())
        {
          break;
        }
      }

      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_226F3BE00(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v15 = a1[1];
    do
    {
      v7 = *(v2 + 48) + 40 * v4;
      if (*v7 == v6)
      {
        v9 = *(v7 + 8);
        v8 = *(v7 + 16);
        v10 = *(v7 + 24);
        v11 = *(v7 + 32);

        sub_226EB396C(v8, v10, v11);
        if (sub_227033E88(v9, v15))
        {
          v16 = *(a1 + 1);
          v17 = *(a1 + 32);
          sub_226F48150();
          sub_226EC1E18();
          v12 = sub_227663B20();

          sub_226EB2DFC(v8, v10, v11);
          if (v12)
          {
            return v4;
          }
        }

        else
        {

          sub_226EB2DFC(v8, v10, v11);
        }
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226F3BF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = a3(*(*(v3 + 48) + v5));
      if (v9 == a3(a1))
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_226F3C03C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  result = a2 & ~v5;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = *(a1 + 16);
    v27 = v8;
    v28 = a1;
    v23 = ~v5;
    while (1)
    {
      v9 = *(*(v2 + 48) + 8 * result);
      if (*(v9 + 16) == v8)
      {
        break;
      }

LABEL_5:
      result = (result + 1) & v7;
      if (((*(v4 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v8 && v9 != a1)
    {
      v26 = result;

      v10 = 0;
      v11 = 0;
      v29 = v9;
      while (v11 < *(v9 + 16))
      {
        if (v8 == v11)
        {
          goto LABEL_20;
        }

        v12 = v9 + v10;
        v13 = a1 + v10;
        if (*(v9 + v10 + 32) != *(a1 + v10 + 32))
        {
          goto LABEL_4;
        }

        v15 = *(v12 + 40);
        v14 = *(v12 + 48);
        v16 = *(v12 + 56);
        v17 = *(v12 + 64);
        v18 = *(v13 + 40);
        v19 = *(v13 + 48);
        v20 = *(v13 + 56);
        v21 = *(v13 + 64);

        sub_226EB396C(v14, v16, v17);

        sub_226EB396C(v19, v20, v21);
        if ((sub_227033E88(v15, v18) & 1) == 0)
        {

          sub_226EB2DFC(v19, v20, v21);

          sub_226EB2DFC(v14, v16, v17);
          v8 = v27;
          a1 = v28;
LABEL_4:

          v2 = v25;
          result = v26;
          v7 = v23;
          v4 = v24;
          goto LABEL_5;
        }

        sub_226F48150();
        v30 = v17;
        sub_226EC1E18();
        v22 = sub_227663B20();

        sub_226EB2DFC(v19, v20, v21);

        result = sub_226EB2DFC(v14, v16, v30);
        v8 = v27;
        a1 = v28;
        v9 = v29;
        if ((v22 & 1) == 0)
        {
          goto LABEL_4;
        }

        ++v11;
        v10 += 40;
        if (v27 == v11)
        {

          return v26;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_226F3C2A0(uint64_t a1, uint64_t a2)
{
  v17[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = v17 - v7;
  v17[0] = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = v2 + 64;
    v12 = ~v9;
    v13 = *(v6 + 72);
    do
    {
      sub_226E93170(*(v17[0] + 48) + v13 * v10, v8, &qword_27D7B88C0, &unk_22767A720);
      sub_227666900();
      v14 = MEMORY[0x277D52730];
      sub_226EB9ED4(&qword_27D7B88D8, MEMORY[0x277D52730]);
      sub_226EB9ED4(&qword_27D7B88E0, v14);
      v15 = sub_227663B20();
      sub_226E97D1C(v8, &qword_27D7B88C0, &unk_22767A720);
      if (v15)
      {
        break;
      }

      v10 = (v10 + 1) & v12;
    }

    while (((*(v11 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_226F3C498(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = ~v4;
  v7 = *(a1 + 16);
  v8 = (a1 + 48);
  v16 = a1;
  v14 = (a1 + 48);
  v15 = ~v4;
  while (1)
  {
    v9 = *(*(v2 + 48) + 8 * v5);
    if (*(v9 + 16) == v7)
    {
      break;
    }

LABEL_4:
    v5 = (v5 + 1) & v6;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  if (!v7 || v9 == a1)
  {
    return v5;
  }

  v10 = *(*(v2 + 48) + 8 * v5);

  v12 = 0;
  v13 = (v9 + 48);
  while (v12 < *(v9 + 16))
  {
    if (v7 == v12)
    {
      goto LABEL_16;
    }

    v19 = *(v13 - 1);
    v20 = *v13;
    v17 = *(v8 - 1);
    v18 = *v8;
    sub_226F48150();
    sub_226EC1E18();
    result = sub_227663B20();
    if ((result & 1) == 0)
    {

      v3 = v2 + 64;
      a1 = v16;
      v8 = v14;
      v6 = v15;
      goto LABEL_4;
    }

    ++v12;
    v8 += 24;
    v13 += 24;
    if (v7 == v12)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_226F3C61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_226F48150();
    sub_226EC1E18();
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v10 = *v8;
      v11 = *(v8 + 16);
      if (sub_227663B20())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_226F3C728(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_226E99364(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22766CB30();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_226F3C7F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = sub_227665A80();
      v9 = v8;
      if (v7 == sub_227665A80() && v9 == v10)
      {
        break;
      }

      v12 = sub_22766D190();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226F3C8F8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      v7 = 0xD000000000000012;
      v8 = v6 == 2 ? 0xD000000000000012 : 0xD000000000000010;
      v9 = v6 == 2 ? 0x8000000227692380 : 0x80000002276923A0;
      v10 = *(*(v21 + 48) + v4) ? 0xED000065726F6353 : 0xEF79636E6574614CLL;
      v11 = *(*(v21 + 48) + v4) <= 1u ? 0x646C6F6666616373 : v8;
      v12 = *(*(v21 + 48) + v4) <= 1u ? v10 : v9;
      if (v5 == 2)
      {
        v13 = 0x8000000227692380;
      }

      else
      {
        v7 = 0xD000000000000010;
        v13 = 0x80000002276923A0;
      }

      v14 = v5 ? 0xED000065726F6353 : 0xEF79636E6574614CLL;
      v15 = v5 <= 1 ? 0x646C6F6666616373 : v7;
      v16 = v5 <= 1 ? v14 : v13;
      if (v11 == v15 && v12 == v16)
      {
        break;
      }

      v17 = sub_22766D190();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226F3CAA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22766C000();
      v9 = v8;
      if (v7 == sub_22766C000() && v9 == v10)
      {
        break;
      }

      v12 = sub_22766D190();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226F3CBA8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = 0xD000000000000012;
      v8 = v6 == 2 ? 0xD000000000000012 : 0xD000000000000010;
      v9 = v6 == 2 ? 0x8000000227692380 : 0x80000002276923A0;
      v10 = *(*(v23 + 48) + v4) ? 0x726F63536E616C70 : 0x6574614C6E616C70;
      v11 = *(*(v23 + 48) + v4) ? 0xE900000000000065 : 0xEB0000000079636ELL;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v9;
      if (v5 == 2)
      {
        v14 = 0x8000000227692380;
      }

      else
      {
        v7 = 0xD000000000000010;
        v14 = 0x80000002276923A0;
      }

      v15 = v5 ? 0x726F63536E616C70 : 0x6574614C6E616C70;
      v16 = v5 ? 0xE900000000000065 : 0xEB0000000079636ELL;
      v17 = v5 <= 1 ? v15 : v7;
      v18 = v5 <= 1 ? v16 : v14;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_22766D190();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226F3CD68(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_226F3CDD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = sub_2276627D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8748, &qword_227671558);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v42 = v3;
  v19 = -1 << *(v3 + 32);
  v20 = a2 & ~v19;
  v39 = v3 + 64;
  if ((*(v3 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = (v6 + 48);
    v23 = *(v15 + 72);
    v37 = v16;
    v38 = v23;
    v31 = (v6 + 48);
    v32 = (v6 + 32);
    v35 = (v6 + 8);
    v36 = ~v19;
    while (1)
    {
      sub_226E93170(*(v42 + 48) + v38 * v20, v18, &unk_27D7BB9D0, &qword_227671550);
      v24 = *(v40 + 48);
      sub_226E93170(v18, v11, &unk_27D7BB9D0, &qword_227671550);
      sub_226E93170(v41, &v11[v24], &unk_27D7BB9D0, &qword_227671550);
      v25 = *v22;
      if ((*v22)(v11, 1, v5) == 1)
      {
        break;
      }

      v26 = v37;
      sub_226E93170(v11, v37, &unk_27D7BB9D0, &qword_227671550);
      if (v25(&v11[v24], 1, v5) == 1)
      {
        sub_226E97D1C(v18, &unk_27D7BB9D0, &qword_227671550);
        (*v35)(v26, v5);
        v21 = v36;
LABEL_4:
        sub_226E97D1C(v11, &qword_27D7B8748, &qword_227671558);
        goto LABEL_5;
      }

      v27 = &v11[v24];
      v28 = v33;
      (*v32)(v33, v27, v5);
      sub_226EB9ED4(&qword_27D7B8750, MEMORY[0x277CC95F0]);
      v34 = sub_22766BFB0();
      v29 = *v35;
      (*v35)(v28, v5);
      sub_226E97D1C(v18, &unk_27D7BB9D0, &qword_227671550);
      v29(v26, v5);
      v22 = v31;
      sub_226E97D1C(v11, &unk_27D7BB9D0, &qword_227671550);
      v21 = v36;
      if (v34)
      {
        return v20;
      }

LABEL_5:
      v20 = (v20 + 1) & v21;
      if (((*(v39 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return v20;
      }
    }

    sub_226E97D1C(v18, &unk_27D7BB9D0, &qword_227671550);
    if (v25(&v11[v24], 1, v5) == 1)
    {
      sub_226E97D1C(v11, &unk_27D7BB9D0, &qword_227671550);
      return v20;
    }

    goto LABEL_4;
  }

  return v20;
}

unint64_t sub_226F3D250(__int16 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    v7 = HIBYTE(a1);
    do
    {
      v8 = (*(v2 + 48) + 2 * v4);
      v9 = v8[1];
      v10 = sub_2274E2FEC(*v8);
      v12 = v11;
      if (v10 == sub_2274E2FEC(v5) && v12 == v13)
      {
      }

      else
      {
        v15 = sub_22766D190();

        if ((v15 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v16 = sub_2275E0328(v9);
      v18 = v17;
      if (v16 == sub_2275E0328(v7) && v18 == v19)
      {

        return v4;
      }

      v21 = sub_22766D190();

      if (v21)
      {
        return v4;
      }

LABEL_3:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226F3D3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_226EB9ED4(v24, v25);
      v20 = sub_22766BFB0();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_226F3D574()
{
  v1 = *(v0 + 40);
  sub_22766D370();
  sub_22766C100();
  v2 = sub_22766D3F0();
  return sub_226F3D5DC(v2);
}

unint64_t sub_226F3D5DC(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

uint64_t sub_226F3DB10(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x22AA98980](v7, a3, v8);
  v14 = result;
  if (v7)
  {
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      a4(v13, v12, v11);

      v10 += 2;
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_226F3DDAC(uint64_t a1)
{
  v2 = type metadata accessor for SyncEncryptionKey();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v32 = &v31 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = *(a1 + 16);
  v34 = sub_226EB9ED4(&qword_27D7B87E0, type metadata accessor for SyncEncryptionKey);
  v13 = MEMORY[0x22AA98980](v12, v2);
  v35 = v12;
  if (v12)
  {
    v14 = 0;
    v33 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v37 = *(v3 + 72);
    do
    {
      v36 = v14;
      sub_226F48E08(v33 + v37 * v14, v11, type metadata accessor for SyncEncryptionKey);
      v17 = *(v13 + 40);
      sub_22766D370();
      sub_22766BF60();
      v18 = sub_22766D3F0();
      v19 = -1 << *(v13 + 32);
      v20 = v18 & ~v19;
      if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
LABEL_3:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v32;
        sub_226F48E08(v11, v32, type metadata accessor for SyncEncryptionKey);
        v40 = v13;
        sub_2270DA230(v16, v20, isUniquelyReferenced_nonNull_native);
        v13 = v40;
        goto LABEL_4;
      }

      v21 = ~v19;
      while (1)
      {
        sub_226F48E08(*(v13 + 48) + v20 * v37, v7, type metadata accessor for SyncEncryptionKey);
        sub_2276694E0();
        sub_226EB9ED4(&qword_28139B260, MEMORY[0x277D53DA0]);
        sub_22766C290();
        sub_22766C290();
        if (v40 == v38 && v41 == v39)
        {
          break;
        }

        v24 = sub_22766D190();

        if (v24)
        {
          goto LABEL_16;
        }

LABEL_8:
        sub_226F48E70(v7, type metadata accessor for SyncEncryptionKey);
        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_16:
      if ((MEMORY[0x22AA977A0](&v7[v2[5]], &v11[v2[5]]) & 1) == 0)
      {
        goto LABEL_8;
      }

      v25 = v2[6];
      v26 = *&v7[v25];
      v27 = *&v7[v25 + 8];
      v28 = &v11[v25];
      v29 = v26 == *v28 && v27 == *(v28 + 1);
      if (!v29 && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_8;
      }

      v22 = v2[7];
      if ((sub_2276627A0() & 1) == 0)
      {
        goto LABEL_8;
      }

      sub_226F48E70(v7, type metadata accessor for SyncEncryptionKey);
LABEL_4:
      sub_226F48E70(v11, type metadata accessor for SyncEncryptionKey);
      v14 = v36 + 1;
    }

    while (v36 + 1 != v35);
  }

  return v13;
}

uint64_t sub_226F3E1C0(uint64_t a1)
{
  v2 = sub_2276694E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270ADB0C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3E35C(uint64_t a1)
{
  v2 = type metadata accessor for SyncZoneChangeWindow();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139A518, type metadata accessor for SyncZoneChangeWindow);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_226F48E08(v13, v7, type metadata accessor for SyncZoneChangeWindow);
      sub_2270ADDEC(v9, v7);
      sub_226F48E70(v9, type metadata accessor for SyncZoneChangeWindow);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_226F3E51C(uint64_t a1)
{
  v2 = type metadata accessor for DirtySyncZone();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B080, type metadata accessor for DirtySyncZone);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_226F48E08(v13, v7, type metadata accessor for DirtySyncZone);
      sub_2270AE4A0(v9, v7);
      sub_226F48E70(v9, type metadata accessor for DirtySyncZone);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_226F3E6A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2270AE890(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_226F3E770(uint64_t a1)
{
  v2 = sub_227664140();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B9C0, MEMORY[0x277D506C0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270AEA04(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3E90C(uint64_t a1)
{
  v2 = sub_227668480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B84C8, MEMORY[0x277D534C8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270AECE4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3EAA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F4906C();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D537D8], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_226EE2880(v7, v6, v8);
      sub_2270AEFC4(v9, v7, v6, v8);
      sub_226EE2898(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F3EB50(uint64_t a1)
{
  v2 = sub_2276653A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B88B8, MEMORY[0x277D51610]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270AF194(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3ECEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
  v4 = sub_226EB6150(&qword_27D7B88F0, &qword_27D7B88E8, &qword_2276715D0, sub_226F488B4);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_2270AF474(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_226F3EDD8(uint64_t a1)
{
  v2 = sub_227663A30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139BC90, MEMORY[0x277D50278]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270AF674(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3EF74(uint64_t a1)
{
  v2 = sub_227666BF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5660, MEMORY[0x277D528B8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270AFB54(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3F110(uint64_t a1)
{
  v2 = sub_227663AB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B89F0, MEMORY[0x277D502D0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270AFE34(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3F2AC(uint64_t a1)
{
  v2 = sub_227663E50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8688, MEMORY[0x277D50520]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B0114(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3F448(uint64_t a1)
{
  v2 = sub_2276655A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8690, MEMORY[0x277D51730]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B03F4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3F5E4(uint64_t a1)
{
  v2 = sub_227664650();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8698, MEMORY[0x277D50A68]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B06D4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3F780(uint64_t a1)
{
  v2 = sub_227663610();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B86A0, MEMORY[0x277D4FFF0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B09B4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3F91C(uint64_t a1)
{
  v2 = sub_227663680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B86A8, MEMORY[0x277D50018]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B0C94(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3FAB8(uint64_t a1)
{
  v2 = sub_227663350();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B86B0, MEMORY[0x277D4FEC8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B0F74(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3FC54(uint64_t a1)
{
  v2 = sub_227663C90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B86B8, MEMORY[0x277D503E8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B1254(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3FDF0(uint64_t a1)
{
  v2 = sub_227664E20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_2813A5750, MEMORY[0x277D51068]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B1534(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F3FF8C(uint64_t a1)
{
  v2 = sub_2276639B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139BCA8, MEMORY[0x277D501C8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B1814(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F40128(uint64_t a1)
{
  v2 = sub_2276687D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B498, MEMORY[0x277D535A0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B1AF4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F402C4(uint64_t a1)
{
  v2 = sub_2276668A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B620, MEMORY[0x277D526D0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B1DD4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F40460(uint64_t a1)
{
  v2 = sub_227666070();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B6D0, MEMORY[0x277D52038]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B20B4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F405FC(uint64_t a1)
{
  v2 = sub_227663180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139BD58, MEMORY[0x277D4FCA8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B2394(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F40798(uint64_t a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139BDE0, MEMORY[0x277CC9260]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B2674(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F40934(uint64_t a1)
{
  v2 = sub_227663480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_2813A5800, MEMORY[0x277D4FF88]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B2954(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F40AD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48B00();
  result = MEMORY[0x22AA98980](v2, &type metadata for BookmarkCatalogFilterProperty, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_226F04958(v7, v6, v8);
      sub_2270B31F4(v9, v7, v6, v8);
      sub_226EE28B0(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F40B78(uint64_t a1)
{
  v2 = sub_2276638D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A57E8, MEMORY[0x277D50180]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B34E8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F40D14(uint64_t a1)
{
  v2 = sub_227667780();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_2813A55D0, MEMORY[0x277D52F78]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B37C8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F40EB0(uint64_t a1)
{
  v2 = sub_227664530();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A57C0, MEMORY[0x277D50978]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B3AA8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F4104C(uint64_t a1)
{
  v2 = sub_227667C20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B4E0, MEMORY[0x277D531E0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B4068(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F411E8(uint64_t a1)
{
  v2 = sub_227666170();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A56C0, MEMORY[0x277D520D0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B4348(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F41384(uint64_t a1)
{
  v2 = sub_227669040();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5518, MEMORY[0x277D539C0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B4628(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F41520(uint64_t a1)
{
  v2 = sub_2276646D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8980, MEMORY[0x277D50B18]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B4908(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F416BC(uint64_t a1)
{
  v2 = sub_2276632A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139BD28, MEMORY[0x277D4FE80]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B4BE8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F41858(uint64_t a1)
{
  v2 = sub_227664EB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B8B8, MEMORY[0x277D51130]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B4EC8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F41A58(uint64_t a1)
{
  v2 = sub_2276640A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B9E0, MEMORY[0x277D50678]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B51F8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F41BF4(uint64_t a1)
{
  v2 = sub_227664AA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5788, MEMORY[0x277D50CD0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B54D8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F41D90(uint64_t a1)
{
  v2 = sub_2276650A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5738, MEMORY[0x277D51330]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B57B8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F41F2C(uint64_t a1)
{
  v2 = sub_227669580();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B208, MEMORY[0x277D53E88]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B5A98(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F420C8(uint64_t a1)
{
  v2 = sub_227666330();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B698, MEMORY[0x277D522A0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B5D78(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F42264(uint64_t a1)
{
  v2 = sub_227666980();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B86C8, MEMORY[0x277D52758]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B6058(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F42400(uint64_t a1)
{
  v2 = sub_227664A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B86C0, MEMORY[0x277D50C78]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B6338(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F4259C(uint64_t a1)
{
  v2 = sub_2276633A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139BCF8, MEMORY[0x277D4FF18]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B6618(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F42738(uint64_t a1)
{
  v2 = sub_2276664D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8680, MEMORY[0x277D52300]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B68F8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F428D4(uint64_t a1)
{
  v2 = sub_227665D70();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B708, MEMORY[0x277D51E30]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B6BD8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F42A70(uint64_t a1)
{
  v2 = sub_227667B30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B4F8, MEMORY[0x277D53128]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B6EB8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F42C0C(uint64_t a1)
{
  v2 = sub_2276692D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8998, MEMORY[0x277D53B20]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B7478(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F42DA8(uint64_t a1)
{
  v2 = sub_2276645D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8990, MEMORY[0x277D50A30]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B7198(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F42F44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F4838C();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D50100], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2270B7758(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_226F42FB8(uint64_t a1)
{
  v2 = sub_227664E40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8710, MEMORY[0x277D51098]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B78E0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F43154(uint64_t a1)
{
  v2 = sub_227666F60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B5A0, MEMORY[0x277D52AB0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B7BC0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F432F0(uint64_t a1)
{
  v2 = sub_2276682D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B4B0, MEMORY[0x277D53468]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v17 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      v15 = MEMORY[0x277D53468];
      sub_226F48E08(v13, v7, MEMORY[0x277D53468]);
      sub_2270B7EA0(v9, v7);
      sub_226F48E70(v9, v15);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v17;
  }

  return result;
}

uint64_t sub_226F434B0(uint64_t a1)
{
  v2 = sub_2276668F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5678, MEMORY[0x277D52700]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B8508(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_226F4364C()
{
  result = qword_28139B7C0;
  if (!qword_28139B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B7C0);
  }

  return result;
}

uint64_t sub_226F436A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F490C0();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D50C50], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      sub_2270B87E8(v8, v6, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_226F4374C(uint64_t a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5820, MEMORY[0x277CC9578]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B8954(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F438E8(uint64_t a1)
{
  v2 = sub_2276660A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B87F0, MEMORY[0x277D52060]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v17 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      v15 = MEMORY[0x277D52060];
      sub_226F48E08(v13, v7, MEMORY[0x277D52060]);
      sub_2270B8C34(v9, v7);
      sub_226F48E70(v9, v15);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v17;
  }

  return result;
}

uint64_t sub_226F43A74(uint64_t a1)
{
  v2 = sub_227667E50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A55A8, MEMORY[0x277D533B8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2270B8E54(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F43C10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48D0C();
  result = MEMORY[0x22AA98980](v2, &type metadata for AssetCatalogFilterProperty, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_226F04958(v7, v6, v8);
      sub_2270B9134(v9, v7, v6, v8);
      sub_226EE28B0(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F43CE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  v4 = sub_226EB6150(&qword_27D7B87A8, &qword_27D7B8560, &unk_227671560, sub_226F480FC);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_227105A48(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_226F43DCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87B8, &qword_227680850);
  v4 = sub_226F481A4();
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v9 = result;
  if (v2)
  {
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;

      sub_2270B9444(&v8, v7);

      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_226F43E94(uint64_t a1)
{
  v2 = sub_227664CA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5770, MEMORY[0x277D50E98]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B96B8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F44030(uint64_t a1)
{
  v2 = sub_227668E30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_2813A5530, MEMORY[0x277D538B8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B9998(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F441F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *(a1 + 16);
  result = MEMORY[0x22AA98980](v6);
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_226F44260(uint64_t a1)
{
  v2 = sub_227665100();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5720, MEMORY[0x277D51360]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B9C78(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F443FC(uint64_t a1)
{
  v2 = sub_227668390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_2813A5570, MEMORY[0x277D53480]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BA074(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F44598(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48D60();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D52D38], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_226F04958(v7, v6, v8);
      sub_2270BA354(v9, v7, v6, v8);
      sub_226EE28B0(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F44640(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48C4C();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D4FC38], v3);
  v9 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v10[0] = *v5;
      v10[1] = v6;
      v11 = *(v5 + 32);
      sub_226F48CA0(v10, v7);
      sub_2270BA804(v7, v10);
      sub_226F48CFC(v7[0], v7[1], v7[2], v7[3], v8);
      v5 += 40;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_226F446E4(uint64_t a1)
{
  v2 = sub_227663110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B89B8, MEMORY[0x277D4FC78]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BA98C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F44880(uint64_t a1)
{
  v2 = sub_227665F20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2270B3D88(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F44A1C(uint64_t a1)
{
  v2 = sub_227666650();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A56A8, MEMORY[0x277D52498]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BAF4C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F44BB8(uint64_t a1)
{
  v2 = sub_227664410();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B998, MEMORY[0x277D508B0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BB22C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F44D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
  v4 = sub_226EB6150(&qword_28139BC70, &qword_27D7B86E8, &qword_227671548, sub_226F44E40);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_2270BB50C(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_226F44E40()
{
  result = qword_28139BA20;
  if (!qword_28139BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BA20);
  }

  return result;
}

uint64_t sub_226F44E94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D84CC0], MEMORY[0x277D84CD0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2270BB70C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_226F44F08(uint64_t a1)
{
  v2 = sub_227665030();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B880, MEMORY[0x277D512F0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BB7F4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F450A4(uint64_t a1)
{
  v2 = sub_227668EF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B2A0, MEMORY[0x277D53920]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BBAD4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F45240(uint64_t a1)
{
  v2 = sub_227665680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B7E8, MEMORY[0x277D51898]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B2F14(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F453DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48290();
  result = MEMORY[0x22AA98980](v2, &type metadata for HealthKitActivityType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2270BBDB4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_226F45450(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48908();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D52CC8], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_2270BBEAC(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_226F454E8(uint64_t a1)
{
  v2 = sub_227667440();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5610, MEMORY[0x277D52D18]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BC010(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F45684(uint64_t a1)
{
  v2 = sub_227667C80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8908, MEMORY[0x277D53250]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2270BC2F0(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F45820(uint64_t a1)
{
  v2 = sub_227665CA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A56D8, MEMORY[0x277D51CF0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BC5D0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F459BC(uint64_t a1)
{
  v2 = sub_227667CD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8728, MEMORY[0x277D53288]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BC8B0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F45B58(uint64_t a1)
{
  v2 = sub_2276627D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139BDA0, MEMORY[0x277CC95F0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BCE70(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F45CF4(uint64_t a1)
{
  v2 = sub_227668260();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8918, MEMORY[0x277D53428]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2270BCB90(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F45E90(uint64_t a1)
{
  v2 = sub_227666F20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_2813A5640, MEMORY[0x277D52A80]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BD150(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F4602C(uint64_t a1)
{
  v2 = sub_227667170();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5628, MEMORY[0x277D52C10]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BD430(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F461C8(uint64_t a1)
{
  v2 = sub_2276675F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_2813A55F0, MEMORY[0x277D52EC0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BD710(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F46364(uint64_t a1)
{
  v2 = sub_227668240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8950, MEMORY[0x277D533E0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BD9F0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F46500(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48A58();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D49518], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_226EE2880(v7, v6, v8);
      sub_2270BDCD0(v9, v7, v6, v8);
      sub_226EE2898(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F465A8(uint64_t a1)
{
  v2 = sub_227662BD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8968, MEMORY[0x277D494A8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BDECC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F467AC(uint64_t a1)
{
  v2 = sub_227665490();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8628, MEMORY[0x277D51680]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270B2C34(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F46948(uint64_t a1)
{
  v2 = sub_227669360();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5500, MEMORY[0x277D53BA0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BE3A0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F46AE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48BC8();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D52280], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_226F48C1C(v7, v6, v8);
      sub_2270BE680(v9, v7, v6, v8);
      sub_226F48C34(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F46B8C(uint64_t a1)
{
  v2 = sub_227669480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_2813A54E0, MEMORY[0x277D53C88]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BE850(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F46D28(uint64_t a1)
{
  v2 = sub_227666710();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5690, MEMORY[0x277D52578]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BEB30(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F46EC4(uint64_t a1)
{
  v2 = sub_2276658B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8988, MEMORY[0x277D519E0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270BEE10(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F47060(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x22AA98980](result, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_2270AE890(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_226F47124(uint64_t a1)
{
  v2 = sub_227665A20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&unk_28139B780, MEMORY[0x277D51AF0]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2270BF0F0(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F474A0(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_226EB9ED4(a3, a4);
    result = MEMORY[0x22AA98980](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x22AA991A0](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_22766CD20();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_22766CD20();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_226F47608(uint64_t a1)
{
  v2 = sub_2276630F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B8708, MEMORY[0x277D4FC48]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2270BF838(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F477A4(uint64_t a1)
{
  v2 = sub_227668630();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B86F8, MEMORY[0x277D53508]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2270C0698(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F47940(uint64_t a1)
{
  v2 = sub_227668830();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B86F0, MEMORY[0x277D535E8]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2270C03B8(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F47ADC(uint64_t a1)
{
  v2 = sub_2276682A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_2813A5590, MEMORY[0x277D53450]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270C0978(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F47C78(uint64_t a1)
{
  v2 = sub_227664B30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_27D7B89D0, MEMORY[0x277D50D88]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270C0C58(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_226F47E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t *, uint64_t, uint64_t, void))
{
  v10 = *(a1 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  v12 = sub_226EB6150(&qword_27D7B87A8, &qword_27D7B8560, &unk_227671560, sub_226F480FC);
  v13 = MEMORY[0x22AA98980](v10, v11, v12);
  v27 = a3;
  v28 = v13;
  v24 = a1;
  v25 = 0;
  v26 = a2;
  v14 = a4();
  if (v16 == -1)
  {
    return v13;
  }

  v17 = v14;
  v18 = v15;
  do
  {
    a5(v22, v17, v18, v16 & 1);
    v19 = sub_226EB2DFC(v22[0], v22[1], v23);
    v17 = (a4)(v19);
    v18 = v20;
  }

  while (v16 != -1);
  return v28;
}

uint64_t sub_226F47F48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48B54();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D52510], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      sub_226F48BA8(v8, v7, *v5);
      sub_2270C1534(v9, v8, v7, v6);
      sub_226F48BB8(v9[0], v9[1], v10);
      v5 += 24;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F48028(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x22AA98980](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_226F480A8()
{
  result = qword_27D7B8740;
  if (!qword_27D7B8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8740);
  }

  return result;
}

unint64_t sub_226F480FC()
{
  result = qword_27D7BBD50;
  if (!qword_27D7BBD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BBD50);
  }

  return result;
}

unint64_t sub_226F48150()
{
  result = qword_27D7B87B0;
  if (!qword_27D7B87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B87B0);
  }

  return result;
}

unint64_t sub_226F481A4()
{
  result = qword_27D7B87C0;
  if (!qword_27D7B87C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B87B8, &qword_227680850);
    sub_226F48228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B87C0);
  }

  return result;
}

unint64_t sub_226F48228()
{
  result = qword_27D7B87C8;
  if (!qword_27D7B87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B87C8);
  }

  return result;
}

uint64_t sub_226F4827C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_226EBB21C();
  }

  return result;
}

unint64_t sub_226F48290()
{
  result = qword_28139A458;
  if (!qword_28139A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A458);
  }

  return result;
}

unint64_t sub_226F482E4()
{
  result = qword_27D7B87D8;
  if (!qword_27D7B87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B87D8);
  }

  return result;
}

unint64_t sub_226F48338()
{
  result = qword_27D7B87E8;
  if (!qword_27D7B87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B87E8);
  }

  return result;
}

unint64_t sub_226F4838C()
{
  result = qword_27D7B87F8;
  if (!qword_27D7B87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B87F8);
  }

  return result;
}

uint64_t sub_226F483E0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_226E92F34;

  return sub_226F37F00(a1, a2, v7, v6);
}

uint64_t sub_226F48494(uint64_t a1)
{
  v4 = *(sub_2276624A0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226E93028;

  return sub_226F38C8C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_226F4858C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_226E915DC(a1, v5);
}

unint64_t sub_226F48644()
{
  result = qword_281398F58;
  if (!qword_281398F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8810, &qword_2276715A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F58);
  }

  return result;
}

unint64_t sub_226F486A8()
{
  result = qword_27D7B8828;
  if (!qword_27D7B8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8828);
  }

  return result;
}

unint64_t sub_226F486FC()
{
  result = qword_27D7B8838;
  if (!qword_27D7B8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8838);
  }

  return result;
}

unint64_t sub_226F48750()
{
  result = qword_27D7B8850;
  if (!qword_27D7B8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8850);
  }

  return result;
}

unint64_t sub_226F487A4()
{
  result = qword_27D7B8870;
  if (!qword_27D7B8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8870);
  }

  return result;
}

unint64_t sub_226F487F8()
{
  result = qword_27D7B88C8;
  if (!qword_27D7B88C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B88C0, &unk_22767A720);
    sub_226EB9ED4(&qword_27D7B88D0, MEMORY[0x277D52730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B88C8);
  }

  return result;
}

unint64_t sub_226F488B4()
{
  result = qword_27D7B88F8;
  if (!qword_27D7B88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B88F8);
  }

  return result;
}

unint64_t sub_226F48908()
{
  result = qword_27D7B8910;
  if (!qword_27D7B8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8910);
  }

  return result;
}

unint64_t sub_226F4895C()
{
  result = qword_27D7B8948;
  if (!qword_27D7B8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8948);
  }

  return result;
}

unint64_t sub_226F489B0()
{
  result = qword_27D7B8958;
  if (!qword_27D7B8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8958);
  }

  return result;
}

unint64_t sub_226F48A04()
{
  result = qword_27D7B8960;
  if (!qword_27D7B8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8960);
  }

  return result;
}

unint64_t sub_226F48A58()
{
  result = qword_27D7B8970;
  if (!qword_27D7B8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8970);
  }

  return result;
}

unint64_t sub_226F48AAC()
{
  result = qword_27D7B8978;
  if (!qword_27D7B8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8978);
  }

  return result;
}

unint64_t sub_226F48B00()
{
  result = qword_27D7B89A0;
  if (!qword_27D7B89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B89A0);
  }

  return result;
}

unint64_t sub_226F48B54()
{
  result = qword_27D7B89A8;
  if (!qword_27D7B89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B89A8);
  }

  return result;
}

uint64_t sub_226F48BA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_226F48BB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_226F48BC8()
{
  result = qword_27D7B89B0;
  if (!qword_27D7B89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B89B0);
  }

  return result;
}

uint64_t sub_226F48C1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_226F48C34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

unint64_t sub_226F48C4C()
{
  result = qword_28139BD78;
  if (!qword_28139BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BD78);
  }

  return result;
}

uint64_t sub_226F48CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_226F48D0C()
{
  result = qword_28139A070;
  if (!qword_28139A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A070);
  }

  return result;
}

unint64_t sub_226F48D60()
{
  result = qword_28139B540;
  if (!qword_28139B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B540);
  }

  return result;
}

unint64_t sub_226F48DB4()
{
  result = qword_27D7B89D8;
  if (!qword_27D7B89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B89D8);
  }

  return result;
}

uint64_t sub_226F48E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226F48E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226F48ED0(uint64_t a1)
{
  v2 = sub_2276662D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_226EB9ED4(&qword_28139B6A8, MEMORY[0x277D52258]);
  result = MEMORY[0x22AA98980](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2270C1724(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_226F4906C()
{
  result = qword_27D7B89E8;
  if (!qword_27D7B89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B89E8);
  }

  return result;
}

unint64_t sub_226F490C0()
{
  result = qword_28139B940;
  if (!qword_28139B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B940);
  }

  return result;
}

id sub_226F49114(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_226F49120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_226F37090(a1, v4, v5, v6);
}

uint64_t sub_226F4920C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_226F1F588(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a1 + 36);
    v13 = *(*(a1 + 48) + 16 * result + 8);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_226F1F588((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + v15 + 32) = (v13 & 1) == 0;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_226EB526C(result, v12, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_226EB526C(result, v12, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t BackgroundProcessingRestrictionProvider.init(connection:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_226E91B50(a1, (a2 + 1));
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_22766BFD0();
  v6 = [v4 initWithSuiteName_];

  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_226F494C0()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 isLowPowerModeEnabled];

  if (v10)
  {
    sub_22766A730();
    v11 = sub_22766B380();
    v12 = sub_22766C8B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226E8E000, v11, v12, "LPM is enabled!", v13, 2u);
      v8 = v6;
LABEL_9:
      MEMORY[0x22AA9A450](v13, -1, -1);
      goto LABEL_10;
    }

    v8 = v6;
  }

  else
  {
    v14 = v0[4];
    v15 = v0[5];
    __swift_project_boxed_opaque_existential_0(v0 + 1, v14);
    if ((*(v15 + 8))(v14, v15))
    {
      return 1;
    }

    sub_22766A730();
    v11 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v11, v17))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_226E8E000, v11, v17, "System automatic app updates not enabled!", v13, 2u);
      goto LABEL_9;
    }
  }

LABEL_10:

  (*(v2 + 8))(v8, v1);
  return 0;
}

uint64_t BackgroundProcessingRestrictionProvider.restriction(for:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_22766B390();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F497E0, 0, 0);
}

uint64_t sub_226F497E0()
{
  v70 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  sub_22766A730();
  sub_22766B370();
  v5 = *(v3 + 8);
  v5(v1, v2);
  v6 = sub_227665640();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = **(v0 + 96);
    if (v10)
    {
      v11 = sub_22766BFD0();
      v12 = [v10 dictionaryForKey_];

      if (v12)
      {
        v13 = sub_22766BEB0();

        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = sub_226E92000(v8, v9);
            if (v15)
            {
              v16 = v14;

              sub_226E97CC0(*(v13 + 56) + 32 * v16, v0 + 16);

              sub_226E97CC0(v0 + 16, v0 + 48);
              if ((swift_dynamicCast() & 1) == 0)
              {
                v65 = *(v0 + 120);
                v64 = *(v0 + 128);
                v66 = sub_227669A60();
                sub_226F51878(&qword_27D7B8A18, MEMORY[0x277D4E2F0]);
                swift_allocError();
                (*(*(v66 - 8) + 104))(v67, *MEMORY[0x277D4E2E0], v66);
                swift_willThrow();
                __swift_destroy_boxed_opaque_existential_0((v0 + 16));

                v62 = *(v0 + 8);
                goto LABEL_34;
              }

              if (*(v0 + 136) == 1)
              {
                v18 = *(v0 + 80);
                v17 = *(v0 + 88);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A08, &unk_22768C040);
                v19 = sub_227665680();
                v20 = *(v19 - 8);
                v21 = *(v20 + 72);
                v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
                v23 = swift_allocObject();
                *(v23 + 16) = xmmword_227670CD0;
                (*(v20 + 16))(v23 + v22, v17, v19);
                v24 = sub_226F4B130(v23);
                swift_setDeallocating();
                (*(v20 + 8))(v23 + v22, v19);
                swift_deallocClassInstance();
                __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_29:
                *v18 = v24;
                v56 = MEMORY[0x277D515F0];
                goto LABEL_32;
              }

              v48 = *(v0 + 80);
              __swift_destroy_boxed_opaque_existential_0((v0 + 16));
              goto LABEL_27;
            }
          }
        }
      }
    }

    v38 = *(v0 + 120);
    sub_22766A730();

    v39 = sub_22766B380();
    v40 = sub_22766C8B0();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 120);
    v43 = *(v0 + 104);
    if (v41)
    {
      v68 = v5;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v69 = v45;
      *v44 = 141558274;
      *(v44 + 4) = 1752392040;
      *(v44 + 12) = 2080;
      v46 = sub_226E97AE8(v8, v9, &v69);

      *(v44 + 14) = v46;
      _os_log_impl(&dword_226E8E000, v39, v40, "Did not find app preference for %{mask.hash}s", v44, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AA9A450](v45, -1, -1);
      MEMORY[0x22AA9A450](v44, -1, -1);

      v68(v42, v43);
    }

    else
    {

      v5(v42, v43);
    }

    v47 = *(v0 + 96);
    if ((sub_226F494C0() & 1) == 0)
    {
      v18 = *(v0 + 80);
      v50 = *(v0 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A08, &unk_22768C040);
      v51 = sub_227665680();
      v52 = *(v51 - 8);
      v53 = *(v52 + 72);
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_227670CD0;
      (*(v52 + 16))(v55 + v54, v50, v51);
      v24 = sub_226F4B130(v55);
      swift_setDeallocating();
      (*(v52 + 8))(v55 + v54, v51);
      swift_deallocClassInstance();
      goto LABEL_29;
    }

    v48 = *(v0 + 80);
LABEL_27:
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    goto LABEL_33;
  }

  v25 = *(v0 + 88);
  v26 = sub_227665650();
  v27 = sub_226F4920C(v26);

  v28 = *(v27 + 16);
  if (!v28)
  {
LABEL_20:
    v36 = *(v0 + 80);

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
    goto LABEL_33;
  }

  v29 = 32;
  while (1)
  {
    if (*(v27 + v29) == 2)
    {
      goto LABEL_12;
    }

    v30 = sub_227665A80();
    v32 = v31;
    if (v30 == sub_227665A80() && v32 == v33)
    {
      break;
    }

    v35 = sub_22766D190();

    if (v35)
    {
      goto LABEL_31;
    }

LABEL_12:
    ++v29;
    if (!--v28)
    {
      goto LABEL_20;
    }
  }

LABEL_31:

  v18 = *(v0 + 80);
  v56 = MEMORY[0x277D515F8];
LABEL_32:
  v57 = *v56;
  v58 = sub_227665360();
  (*(*(v58 - 8) + 104))(v18, v57, v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  (*(*(v59 - 8) + 56))(v18, 0, 1, v59);
LABEL_33:
  v61 = *(v0 + 120);
  v60 = *(v0 + 128);

  v62 = *(v0 + 8);
LABEL_34:

  return v62();
}

uint64_t BackgroundProcessingRestrictionProvider.effectiveRestriction(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22766B390();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F4A0AC, 0, 0);
}

uint64_t sub_226F4A0AC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  if (sub_226F494C0())
  {
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_226F4A390;
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];

    return BackgroundProcessingRestrictionProvider.restriction(for:)(v8, v6);
  }

  else
  {
    v11 = v0[2];
    v10 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A08, &unk_22768C040);
    v12 = sub_227665680();
    v13 = *(v12 - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_227670CD0;
    (*(v13 + 16))(v16 + v15, v10, v12);
    v17 = sub_226F4B130(v16);
    swift_setDeallocating();
    (*(v13 + 8))(v16 + v15, v12);
    swift_deallocClassInstance();
    *v11 = v17;
    v18 = *MEMORY[0x277D515F0];
    v19 = sub_227665360();
    (*(*(v19 - 8) + 104))(v11, v18, v19);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
    v21 = v0[7];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_226F4A390()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_226F4A4A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return BackgroundProcessingRestrictionProvider.restriction(for:)(a1, a2);
}

uint64_t sub_226F4A550(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return BackgroundProcessingRestrictionProvider.effectiveRestriction(for:)(a1, a2);
}

_BYTE **sub_226F4A5F8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_226F4A630(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_226E97AE8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_226F4A68C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C10, &qword_227671820);
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

uint64_t sub_226F4A7D0(uint64_t a1)
{
  v2 = sub_2276694E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A78, &qword_2276716F8);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_2813A54D0, MEMORY[0x277D53DA0]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_2813A54C8, MEMORY[0x277D53DA0]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4AAF0(uint64_t a1)
{
  v2 = sub_227664E20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AD8, &qword_227671760);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&unk_2813A5750, MEMORY[0x277D51068]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8AE0, MEMORY[0x277D51068]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4AE10(uint64_t a1)
{
  v2 = sub_227663180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A28, &unk_2276716B0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_28139BD58, MEMORY[0x277D4FCA8]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_28139BD50, MEMORY[0x277D4FCA8]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4B130(uint64_t a1)
{
  v2 = sub_227665680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C18, qword_227671828);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&unk_28139B7E8, MEMORY[0x277D51898]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8900, MEMORY[0x277D51898]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_226F4B464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226F4B4AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226F4B52C(uint64_t a1)
{
  v2 = sub_227664010();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A48, &qword_2276716D0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_28139BA00, MEMORY[0x277D50618]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_28139B9F8, MEMORY[0x277D50618]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4B84C(uint64_t a1)
{
  v2 = sub_227667C20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A40, &qword_22767DE30);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_28139B4E0, MEMORY[0x277D531E0]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_28139B4D8, MEMORY[0x277D531E0]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4BB6C(uint64_t a1)
{
  v2 = sub_2276627D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A58, &qword_2276716E0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_28139BDA0, MEMORY[0x277CC95F0]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8750, MEMORY[0x277CC95F0]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4BE8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BD0, &unk_22767DF20);
    v3 = sub_22766CDE0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22766D370();

      sub_22766C100();
      result = sub_22766D3F0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_22766D190();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_226F4BFF4(uint64_t a1)
{
  v2 = sub_227664530();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AC0, &qword_22767E170);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_2813A57C0, MEMORY[0x277D50978]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8AC8, MEMORY[0x277D50978]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4C314(uint64_t a1)
{
  v2 = sub_227667E50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B48, &qword_2276717B0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_2813A55A8, MEMORY[0x277D533B8]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8B50, MEMORY[0x277D533B8]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4C634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A80, &qword_227671700);
    v3 = sub_22766CDE0();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_22766C000();
      sub_22766D370();
      v29 = v7;
      sub_22766C100();
      v9 = sub_22766D3F0();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_22766C000();
        v20 = v19;
        if (v18 == sub_22766C000() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_22766D190();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4C828(uint64_t a1)
{
  v2 = sub_22766BC20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A68, &qword_2276716F0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_2813991B8, MEMORY[0x277D22320]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8A70, MEMORY[0x277D22320]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4CB48(uint64_t a1)
{
  v2 = sub_22766BC00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A60, &qword_2276716E8);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_2813991C8, MEMORY[0x277D22300]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_2813991C0, MEMORY[0x277D22300]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4CE68(uint64_t a1)
{
  v2 = sub_227662930();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AA8, &unk_227671730);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&unk_28139BD80, MEMORY[0x277CC99D0]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8AB0, MEMORY[0x277CC99D0]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4D188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AA0, &unk_227671720);
    v3 = sub_22766CDE0();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v6 = v24 + 24 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v3 + 40);
      sub_22766D370();
      sub_226EB396C(v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      result = sub_22766D3F0();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_226F48150();
        sub_226EC1E18();
        do
        {
          v18 = *(v3 + 48) + 24 * v13;
          v25 = *v18;
          v26 = *(v18 + 16);
          result = sub_227663B20();
          if (result)
          {
            sub_226EB2DFC(v7, v8, v9);
            v1 = v23;
            goto LABEL_4;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while (((1 << v13) & v15) != 0);
        v1 = v23;
      }

      *(v5 + 8 * v14) = v16 | v15;
      v19 = *(v3 + 48) + 24 * v13;
      *v19 = v7;
      *(v19 + 8) = v8;
      *(v19 + 16) = v9;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_226F4D394(uint64_t a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AB8, &unk_227671740);
    v10 = sub_22766CDE0();
    v11 = v10 + 56;
    v12 = *(v2 + 80);
    v29 = v9;
    v30 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v2 + 72);
    v14 = 0;
    while (1)
    {
      sub_226F50A74(v30 + v13 * v14, v8);
      v15 = *(v10 + 40);
      sub_22766D370();
      sub_226F51878(&qword_27D7B88D0, MEMORY[0x277D52730]);
      sub_227663B10();
      v16 = sub_22766D3F0();
      v17 = ~(-1 << *(v10 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v11 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        v32 = v14;
        do
        {
          sub_226F50A74(*(v10 + 48) + v18 * v13, v6);
          sub_227666900();
          v22 = MEMORY[0x277D52730];
          sub_226F51878(&qword_27D7B88D8, MEMORY[0x277D52730]);
          sub_226F51878(&qword_27D7B88E0, v22);
          v23 = sub_227663B20();
          sub_226F50AE4(v6);
          if (v23)
          {
            sub_226F50AE4(v8);
            v9 = v29;
            v14 = v32;
            goto LABEL_4;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
        }

        while (((1 << v18) & v20) != 0);
        v9 = v29;
        v14 = v32;
      }

      *(v11 + 8 * v19) = v21 | v20;
      result = sub_226F50B4C(v8, *(v10 + 48) + v18 * v13);
      v25 = *(v10 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      *(v10 + 16) = v27;
LABEL_4:
      if (++v14 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_226F4D6C4(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_22766CD20();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_22766CDE0();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_22766CD20();
      if (!v9)
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

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x22AA991A0](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_22766CB20();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_226E99364(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_22766CB30();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
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
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_22766CB20();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_226E99364(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_22766CB30();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_226F4D9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C08, &qword_227671818);
    v3 = sub_22766CDE0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v11 = (v6 + 16 * v4);
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v3 + 40);
      sub_22766D370();
      sub_227664970();
      result = sub_22766D3F0();
      v16 = -1 << *(v3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        while (1)
        {
          v22 = *(v3 + 48) + 16 * v17;
          v23 = *v22;
          v24 = *(v22 + 8);
          result = sub_227664960();
          if (result)
          {
            break;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v5 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          if (((1 << v17) & v19) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v18) = v20 | v19;
        v7 = *(v3 + 48) + 16 * v17;
        *v7 = v12;
        *(v7 + 8) = v13;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4DB14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BF0, &unk_227671808);
    v3 = sub_22766CDE0();
    v4 = 0;
    v5 = v3 + 56;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v6 = v24 + 24 * v4;
      v7 = *v6;
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *(v3 + 40);
      sub_22766D370();
      sub_226EB396C(v7, v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
      sub_226F488B4();
      sub_227663B10();
      result = sub_22766D3F0();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_226F517D0();
        sub_226F51824();
        do
        {
          v18 = *(v3 + 48) + 24 * v13;
          v25 = *v18;
          v26 = *(v18 + 16);
          result = sub_227663B20();
          if (result)
          {
            sub_226EB2DFC(v7, v8, v9);
            v1 = v23;
            goto LABEL_4;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while (((1 << v13) & v15) != 0);
        v1 = v23;
      }

      *(v5 + 8 * v14) = v16 | v15;
      v19 = *(v3 + 48) + 24 * v13;
      *v19 = v7;
      *(v19 + 8) = v8;
      *(v19 + 16) = v9;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_226F4DD20(uint64_t a1)
{
  v2 = sub_227669180();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BD8, &qword_227671800);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_27D7B8BE0, MEMORY[0x277D53A78]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8BE8, MEMORY[0x277D53A78]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4E040(uint64_t a1)
{
  v2 = sub_227663E50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BC0, &unk_2276717F0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_27D7B8688, MEMORY[0x277D50520]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8BC8, MEMORY[0x277D50520]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4E360(uint64_t a1)
{
  v2 = sub_227664650();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BB0, &qword_2276717E8);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_27D7B8698, MEMORY[0x277D50A68]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8BB8, MEMORY[0x277D50A68]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4E680(uint64_t a1)
{
  v2 = sub_227663610();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BA0, &qword_2276717E0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_27D7B86A0, MEMORY[0x277D4FFF0]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8BA8, MEMORY[0x277D4FFF0]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4E9A0(uint64_t a1)
{
  v2 = sub_2276655A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B90, &qword_2276717D8);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_27D7B8690, MEMORY[0x277D51730]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8B98, MEMORY[0x277D51730]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4ECC0(uint64_t a1)
{
  v2 = sub_227663680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B80, &qword_2276717D0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_27D7B86A8, MEMORY[0x277D50018]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8B88, MEMORY[0x277D50018]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4EFE0(uint64_t a1)
{
  v2 = sub_227663350();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B70, &qword_2276717C8);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_27D7B86B0, MEMORY[0x277D4FEC8]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8B78, MEMORY[0x277D4FEC8]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4F300(uint64_t a1)
{
  v2 = sub_227663C90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B60, &qword_2276717C0);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_27D7B86B8, MEMORY[0x277D503E8]);
      v18 = sub_22766BF50();
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
          sub_226F51878(&qword_27D7B8B68, MEMORY[0x277D503E8]);
          v25 = sub_22766BFB0();
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4F620(uint64_t a1)
{
  v2 = sub_2276682D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A38, &unk_2276716C0);
    v11 = sub_22766CDE0();
    v12 = 0;
    v13 = v11 + 56;
    v14 = *(v3 + 80);
    v27 = v10;
    v28 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v3 + 72);
    while (2)
    {
      sub_226F1B5DC(v28 + v15 * v12, v9);
      v16 = *(v11 + 40);
      sub_22766D370();
      sub_2276682C0();
      v17 = sub_22766D3F0();
      v18 = ~(-1 << *(v11 + 32));
      for (i = v17 & v18; ; i = (i + 1) & v18)
      {
        v20 = *(v13 + 8 * (i >> 6));
        if (((1 << i) & v20) == 0)
        {
          break;
        }

        sub_226F1B5DC(*(v11 + 48) + i * v15, v7);
        v21 = MEMORY[0x22AA945D0](v7, v9);
        sub_226F4FEB8(v7);
        if (v21)
        {
          sub_226F4FEB8(v9);
          goto LABEL_4;
        }
      }

      *(v13 + 8 * (i >> 6)) = (1 << i) | v20;
      result = sub_226F4FF14(v9, *(v11 + 48) + i * v15);
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (!v24)
      {
        *(v11 + 16) = v25;
LABEL_4:
        if (++v12 == v27)
        {
          return v11;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_226F4F878(uint64_t a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B30, &qword_227671798);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_28139BDE0, MEMORY[0x277CC9260]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_28139BDD8, MEMORY[0x277CC9260]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_226F4FB98(uint64_t a1)
{
  v2 = sub_2276639B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A30, &qword_22767E140);
    v10 = sub_22766CDE0();
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
      sub_226F51878(&qword_28139BCA8, MEMORY[0x277D501C8]);
      v18 = sub_22766BF50();
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
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_226F51878(&qword_27D7B8678, MEMORY[0x277D501C8]);
          v25 = sub_22766BFB0();
          v26 = *v16;
          (*v16)(v7, v2);
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

  return MEMORY[0x277D84FA0];
}