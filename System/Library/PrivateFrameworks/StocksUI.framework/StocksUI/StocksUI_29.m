uint64_t sub_2207C6D50(uint64_t a1)
{
  v3 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v53 = *(v6 - 8);
  v7 = *(v53 + 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + 80);
  sub_2205DE35C();
  v19 = *(v18 + 48);
  v20 = sub_22088685C();
  v47 = *(v20 - 8);
  v21 = *(v47 + 16);
  v49 = a1;
  v48 = v20;
  v46 = v47 + 16;
  v45 = v21;
  (v21)(v16, a1);
  *&v16[v19] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v22 = *(v1 + 144);
  v23 = sub_22088969C();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v55 = v1;
  sub_22046DA2C(v1 + 152, v63);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v60 = v17;
  sub_2205A0924(v61, &v56, &unk_281298970, &unk_281298980);
  if (v57)
  {
    sub_220458198(&v56, v58);
    v24 = sub_220597454(v58);
    v52 = v25;
    v51 = v26;
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_2207C7824(&v56, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v24 = qword_2812908F8;
    v27 = qword_281290900;
    v28 = qword_281290908;

    v52 = v27;
    v51 = v28;
    sub_2204A80F4(v27);
  }

  v57 = sub_22088731C();
  *&v56 = v22;
  v29 = MEMORY[0x277D686D0];
  v30 = v54;
  sub_2207C7704(v12, v54, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2205A0924(v63, v58, &unk_281296D10, &qword_281296D20);
  v31 = v53[80];
  v53 = v12;
  v32 = (v31 + 24) & ~v31;
  v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v22;
  sub_2207C7684(v30, v34 + v32, &qword_281298480, v29);
  v35 = v34 + v33;
  v36 = v58[1];
  *v35 = v58[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v59;
  v37 = (v34 + ((v33 + 47) & 0xFFFFFFFFFFFFFFF8));
  v38 = v52;
  *v37 = v24;
  v37[1] = v38;
  v37[2] = v51;
  swift_retain_n();

  sub_2204A80F4(v38);
  sub_2204549FC();
  sub_220448A78(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v38);
  sub_2207C7824(v61, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2207C7824(v63, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2207C7B54(v53, &qword_281298480, MEMORY[0x277D686D0]);
  sub_2207C7884(v16, type metadata accessor for StocksActivity);
  sub_2207C7824(&v56, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v40 = *(result + 40);
    ObjectType = swift_getObjectType();
    v42 = v50;
    v43 = v48;
    v45(v50, v49, v48);
    (*(v47 + 56))(v42, 0, 2, v43);
    (*(v40 + 96))(v42, ObjectType, v40);
    sub_2207C7884(v42, type metadata accessor for StockListSelectionModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2207C75D4()
{
  MEMORY[0x223D8B910](v0 + 16);
  sub_22054B9F8(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);

  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  return v0;
}

uint64_t sub_2207C764C()
{
  sub_2207C75D4();

  return swift_deallocClassInstance();
}

uint64_t sub_2207C7684(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220447B54(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2207C7704(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220447B54(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2207C7784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207C7824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2207C7884(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_14()
{
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2207C7A70(uint64_t a1)
{
  sub_220447B54(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t sub_2207C7B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220447B54(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2207C7BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207C7C30@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2207C7C60(uint64_t a1)
{
  v2 = sub_2207C8228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2207C7C9C(uint64_t a1)
{
  v2 = sub_2207C8228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2207C7D00(void *a1)
{
  sub_2207C81CC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207C8228();
  sub_220892A5C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2207C7E0C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_22088FCCC();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v2);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C8164();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v28 - v11;
  v13 = sub_22088FB9C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088519C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088518C();
  v23 = sub_22088517C();
  v28[0] = v24;
  v28[1] = v23;
  (*(v19 + 8))(v22, v18);
  (*(v14 + 104))(v17, *MEMORY[0x277D32628], v13);
  v25 = sub_220888F5C();
  v26 = *(*(v25 - 8) + 56);
  v26(v12, 1, 1, v25);
  v26(v8, 1, 1, v25);
  (*(v1 + 104))(v4, *MEMORY[0x277D32750], v29);
  sub_2205DF6BC();
  sub_2205DF710();
  return sub_22088F4AC();
}

void sub_2207C8164()
{
  if (!qword_2812985C8)
  {
    sub_220888F5C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812985C8);
    }
  }
}

void sub_2207C81CC()
{
  if (!qword_27CF59CD0)
  {
    sub_2207C8228();
    v0 = sub_22089284C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59CD0);
    }
  }
}

unint64_t sub_2207C8228()
{
  result = qword_27CF59CD8;
  if (!qword_27CF59CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59CD8);
  }

  return result;
}

unint64_t sub_2207C8290()
{
  result = qword_27CF59CE0;
  if (!qword_27CF59CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59CE0);
  }

  return result;
}

unint64_t sub_2207C82E8()
{
  result = qword_27CF59CE8;
  if (!qword_27CF59CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59CE8);
  }

  return result;
}

uint64_t (*sub_2207C833C())(uint64_t a1)
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = *(v0 + 64);
    v2 = sub_2207C8E14;
    *(v0 + 64) = sub_2207C8E14;
    *(v0 + 72) = v3;

    sub_2207C8DB4(v4);
  }

  sub_2207C8DC4(v1);
  return v2;
}

uint64_t (*sub_2207C83EC())(uint64_t a1)
{
  v1 = *(v0 + 80);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = *(v0 + 80);
    v2 = sub_2207C8D90;
    *(v0 + 80) = sub_2207C8D90;
    *(v0 + 88) = v3;

    sub_2207C8DB4(v4);
  }

  sub_2207C8DC4(v1);
  return v2;
}

uint64_t sub_2207C849C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_2207C8574();
    [v8 setPersonalizedAds_];

    *(v7 + 57) = a4;
    sub_220886ADC();
    type metadata accessor for OnboardingPersonalizedAdsStep();
    sub_2207C8DD4(&qword_27CF59CF0);
    sub_220886C6C();

    sub_2207C8AF0();
  }

  return result;
}

id sub_2207C8574()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D23658]) init];
    v4 = *(v0 + 96);
    *(v0 + 96) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_2207C85E0()
{
  v1 = v0;
  sub_220886ADC();
  sub_2207C8DD4(&unk_2812864C8);
  sub_220886B3C();

  if (v28 == 1)
  {
    if (qword_2812980E0 != -1)
    {
      swift_once();
    }

    v2 = sub_22088A84C();
    __swift_project_value_buffer(v2, qword_2812980E8);
    v3 = sub_22088A82C();
    v4 = sub_220891AFC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22043F000, v3, v4, "Force showing due to showPersonalizedAdsOnNextLaunch being set", v5, 2u);
      MEMORY[0x223D8B7F0](v5, -1, -1);
    }

    return 1;
  }

  v7 = sub_2207C8574();
  v8 = [v7 acknowledgedVersionForPersonalizedAds];

  if (v8 >= [*(v1 + 96) latestVersionForPersonalizedAdsConsent])
  {
    if (qword_2812980E0 != -1)
    {
      swift_once();
    }

    v16 = sub_22088A84C();
    __swift_project_value_buffer(v16, qword_2812980E8);

    v17 = sub_22088A82C();
    v18 = sub_220891AFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      v20 = sub_2207C8574();
      v21 = [v20 acknowledgedVersionForPersonalizedAds];

      *(v19 + 4) = v21;

      _os_log_impl(&dword_22043F000, v17, v18, "Not showing due to version: %{public}ld", v19, 0xCu);
      MEMORY[0x223D8B7F0](v19, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v9 = [objc_opt_self() sharedAccount];
  v10 = [v9 isContentStoreFrontSupported];

  if (!v10)
  {
    if (qword_2812980E0 != -1)
    {
      swift_once();
    }

    v22 = sub_22088A84C();
    __swift_project_value_buffer(v22, qword_2812980E8);
    v12 = sub_22088A82C();
    v13 = sub_220891AFC();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Not showing due to unsupported storefront";
    goto LABEL_22;
  }

  if (*(v1 + 56))
  {
    if (qword_2812980E0 != -1)
    {
      swift_once();
    }

    v11 = sub_22088A84C();
    __swift_project_value_buffer(v11, qword_2812980E8);
    v12 = sub_22088A82C();
    v13 = sub_220891AFC();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Not showing due non-apple news source";
LABEL_22:
    _os_log_impl(&dword_22043F000, v12, v13, v15, v14, 2u);
    MEMORY[0x223D8B7F0](v14, -1, -1);
LABEL_23:

    return 0;
  }

  v23 = [*(v1 + 96) shouldPresentPersonalizedAdsOnboarding];
  if (qword_2812980E0 != -1)
  {
    swift_once();
  }

  v24 = sub_22088A84C();
  __swift_project_value_buffer(v24, qword_2812980E8);
  v25 = sub_22088A82C();
  v26 = sub_220891AFC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v23;
    _os_log_impl(&dword_22043F000, v25, v26, "Should present personalized ads onboarding: %{BOOL}d", v27, 8u);
    MEMORY[0x223D8B7F0](v27, -1, -1);
  }

  return v23;
}

void sub_2207C8AF0()
{
  v1 = v0;
  v2 = sub_2207C8574();
  v3 = [v2 latestVersionForPersonalizedAdsConsent];

  [*(v1 + 96) setAcknowledgedVersionForPersonalizedAds_];
  if (qword_2812980E0 != -1)
  {
    swift_once();
  }

  v4 = sub_22088A84C();
  __swift_project_value_buffer(v4, qword_2812980E8);

  oslog = sub_22088A82C();
  v5 = sub_220891AFC();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    v7 = sub_2207C8574();
    v8 = [v7 acknowledgedVersionForPersonalizedAds];

    *(v6 + 4) = v8;

    _os_log_impl(&dword_22043F000, oslog, v5, "Set acknowledgedVersion to %{public}ld", v6, 0xCu);
    MEMORY[0x223D8B7F0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2207C8C8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_2207C8DB4(*(v0 + 64));
  sub_2207C8DB4(*(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_2207C8DB4(uint64_t result)
{
  if (result != 1)
  {
    return sub_2204DA45C(result);
  }

  return result;
}

uint64_t sub_2207C8DC4(uint64_t result)
{
  if (result != 1)
  {
    return sub_2204A80F4(result);
  }

  return result;
}

uint64_t sub_2207C8DD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OnboardingPersonalizedAdsStep();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2207C8E38(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[5];
  v50 = v1[6];
  v51 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v47 = v4;
  v53 = *(v4 - 8);
  v6 = *(v53 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v48 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = &v42 - v48;
  (*(*(v50 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v49 = v1[11];
  v9 = v49;
  v11 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v46 = *(v10 - 8);
  v12 = *(v46 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = *(*(v9 + 8) + 8);
  v16 = a1;
  v15(a1, v10, v14);
  v17 = v1[15];
  v43 = v1[16];
  v18 = v43;
  v19 = __swift_project_boxed_opaque_existential_1(v1 + 12, v17);
  v20 = *(v17 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v42 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = &v42 - v42;
  v25 = (*(*(v18 + 8) + 8))(v16, v17, v23);
  v27 = MEMORY[0x28223BE20](v25, v26);
  v28 = v47;
  v29 = &v42 - v48;
  v30 = (*(v53 + 16))(&v42 - v48, v52, v47, v27);
  v32 = MEMORY[0x28223BE20](v30, v31);
  v33 = v46;
  v34 = &v42 - v45;
  v35 = v44;
  v36 = (*(v46 + 16))(&v42 - v45, v44, v10, v32);
  v38 = MEMORY[0x28223BE20](v36, v37);
  v39 = &v42 - v42;
  (*(v20 + 16))(&v42 - v42, v24, v17, v38);
  v40 = sub_22049BBB4(v29, v34, v39, v51, v28, v17, v10, v50, v43, v49);
  (*(v20 + 8))(v24, v17);
  (*(v33 + 8))(v35, v10);
  (*(v53 + 8))(v52, v28);
  return v40;
}

id sub_2207C9204(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22059B834();
  *&v11 = MEMORY[0x28223BE20](v9 - 8, v10).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a4 userInterfaceIdiom] == 5)
  {
    v14 = 0;
  }

  else
  {
    [a4 horizontalSizeClass];
    v14 = 1;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
  sub_22056064C(a2, a3, v14);
  v15 = sub_22089226C();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  sub_22089228C();
  return [a1 setPreferredBehavioralStyle_];
}

void *sub_2207C9340@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_2207C8E38(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2207C9390(uint64_t a1)
{
  result = sub_2207C93B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2207C93B8()
{
  result = qword_281289E60;
  if (!qword_281289E60)
  {
    type metadata accessor for BrandingTitleViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289E60);
  }

  return result;
}

unint64_t sub_2207C9410()
{
  result = qword_281293EC0;
  if (!qword_281293EC0)
  {
    type metadata accessor for StockFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EC0);
  }

  return result;
}

uint64_t sub_2207C9468(uint64_t a1, uint64_t a2)
{
  v37 = sub_22088698C();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v5);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C9B58(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2207C9BD8(v15, v11);
    v16 = *(v11 + 2);

    sub_2207C9C3C(v11, type metadata accessor for NewsStockFeedGroup);
    v17 = *(v16 + 16);
    if (!v17)
    {
LABEL_3:

      v18 = MEMORY[0x277D84F90];
      goto LABEL_12;
    }
  }

  else
  {
    sub_2207C9C3C(v15, type metadata accessor for StockFeedGroup);
    v16 = MEMORY[0x277D84F90];
    v17 = *(MEMORY[0x277D84F90] + 16);
    if (!v17)
    {
      goto LABEL_3;
    }
  }

  v34[1] = v16;
  v34[2] = a2;
  v20 = *(v4 + 16);
  v19 = v4 + 16;
  v21 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v35 = *(v19 + 56);
  v36 = v20;
  v22 = (v19 - 8);
  v18 = MEMORY[0x277D84F90];
  do
  {
    v23 = v37;
    v36(v7, v21, v37);
    v24 = sub_2208868EC();
    v26 = v25;
    (*v22)(v7, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_22045E924(0, *(v18 + 2) + 1, 1, v18);
    }

    v28 = *(v18 + 2);
    v27 = *(v18 + 3);
    if (v28 >= v27 >> 1)
    {
      v18 = sub_22045E924((v27 > 1), v28 + 1, 1, v18);
    }

    *(v18 + 2) = v28 + 1;
    v29 = &v18[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
    v21 += v35;
    --v17;
  }

  while (v17);

LABEL_12:
  v30 = sub_22084A950(v18);

  *(swift_allocObject() + 16) = v30;
  v31 = sub_220888D9C();
  v32 = sub_220888E4C();

  return v32;
}

void sub_2207C97C8(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v36 = a3;
  v5 = sub_22088698C();
  MEMORY[0x28223BE20](v5, v6);
  v44 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v9);
  v46 = &v33 - v12;
  v35 = *a1;
  v13 = *(a1 + 1);
  v34 = a1[16];
  v41 = *(v13 + 16);
  if (v41)
  {
    v14 = 0;
    v15 = a2 + 56;
    v37 = (v10 + 8);
    v38 = v10 + 16;
    v43 = (v10 + 32);
    v16 = MEMORY[0x277D84F90];
    v42 = v5;
    v39 = v13;
    v40 = v10;
    while (v14 < *(v13 + 16))
    {
      v45 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v17 = *(v10 + 72);
      (*(v10 + 16))(v46, v13 + v45 + v17 * v14, v5, v11);
      v18 = sub_2208868EC();
      v20 = v19;
      if (*(a2 + 16) && (v21 = v18, sub_2208929EC(), sub_22089146C(), v22 = sub_220892A2C(), v23 = -1 << *(a2 + 32), v24 = v22 & ~v23, ((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(a2 + 48) + 16 * v24);
          v27 = *v26 == v21 && v26[1] == v20;
          if (v27 || (sub_2208928BC() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v5 = v42;
        (*v37)(v46, v42);
      }

      else
      {
LABEL_15:

        v28 = *v43;
        v5 = v42;
        (*v43)(v44, v46, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22070BF14(0, *(v16 + 16) + 1, 1);
          v5 = v42;
          v16 = v47;
        }

        v31 = *(v16 + 16);
        v30 = *(v16 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_22070BF14(v30 > 1, v31 + 1, 1);
          v5 = v42;
          v16 = v47;
        }

        *(v16 + 16) = v31 + 1;
        v28((v16 + v45 + v31 * v17), v44, v5);
      }

      ++v14;
      v10 = v40;
      v13 = v39;
      if (v14 == v41)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_21:
    v32 = v36;
    *v36 = v35;
    *(v32 + 1) = v16;
    v32[16] = v34;
  }
}

uint64_t sub_2207C9B28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2207C9468(a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2207C9B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207C9BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsStockFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207C9C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207C9C9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2207C9CE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2207C9D6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_22089136C();
  }

  sub_22048D2F4();
  result = sub_2208922EC();
  qword_2812948A8 = result;
  return result;
}

uint64_t sub_2207C9E40()
{
  v0 = sub_22088A84C();
  __swift_allocate_value_buffer(v0, qword_27CF6D150);
  __swift_project_value_buffer(v0, qword_27CF6D150);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_22089136C();
  }

  return sub_22088A83C();
}

uint64_t type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier()
{
  result = qword_27CF59CF8;
  if (!qword_27CF59CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207C9FA4()
{
  sub_220886A4C();
  if (v0 <= 0x3F)
  {
    sub_2207CAAC0(319, &qword_27CF588B0, MEMORY[0x277D6E3E0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2207CA05C(void (*a1)(char *), void (*a2)(uint64_t *), uint64_t a3)
{
  v61 = a3;
  v62 = a2;
  sub_2207CAA00(0, &qword_27CF57A30, MEMORY[0x277D6DF88]);
  v63 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v47 - v7);
  v58 = sub_22088CFEC();
  v51 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v9);
  v50 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207CAA00(0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  v12 = v11;
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v55 = v47 - v14;
  v15 = MEMORY[0x277D6D3F0];
  sub_2207CAB5C(0, &qword_27CF57A38, &qword_27CF56B20, MEMORY[0x277D6D3F0], sub_2207CAAC0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v47 - v18;
  sub_2207CAAC0(0, &qword_27CF56B20, v15);
  v59 = *(v20 - 8);
  v60 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v53 = v47 - v22;
  v23 = MEMORY[0x277D6D710];
  sub_2207CAB5C(0, &qword_27CF57A40, &qword_27CF56B28, MEMORY[0x277D6D710], sub_2207CAA00);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = v47 - v26;
  sub_2207CAA00(0, &qword_27CF56B28, v23);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v31);
  v52 = v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = v47 - v35;
  v57 = v12;
  v49 = a1;
  sub_22088E83C();
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_2207CAC0C(v27, &qword_27CF57A40, &qword_27CF56B28, MEMORY[0x277D6D710], sub_2207CAA00);
    sub_2207CABB8();
    *v8 = swift_allocError();
    v37 = v63;
    (*(v5 + 104))(v8, *MEMORY[0x277D6DF68], v63);
    v62(v8);
    return (*(v5 + 8))(v8, v37);
  }

  else
  {
    v39 = v8;
    v48 = v5;
    (*(v30 + 32))(v36, v27, v29);
    type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier();
    sub_2208869BC();
    sub_22088B3AC();

    if ((*(v59 + 48))(v19, 1, v60) == 1)
    {
      sub_2207CAC0C(v19, &qword_27CF57A38, &qword_27CF56B20, MEMORY[0x277D6D3F0], sub_2207CAAC0);
      sub_2207CABB8();
      *v8 = swift_allocError();
      v40 = v48;
      v41 = v63;
      (*(v48 + 104))(v39, *MEMORY[0x277D6DF68], v63);
      v62(v39);
      (*(v40 + 8))(v39, v41);
      return (*(v30 + 8))(v36, v29);
    }

    else
    {
      (*(v59 + 32))(v53, v19, v60);
      (*(v30 + 16))();
      sub_22088B2EC();
      (*(v56 + 16))(v55, v49, v57);
      sub_22088E75C();
      LODWORD(v54) = *MEMORY[0x277D6E440];
      v43 = v50;
      v42 = v51;
      v49 = *(v51 + 104);
      v44 = v58;
      v49(v50);
      v47[1] = sub_22088CECC();
      v51 = *(v42 + 8);
      (v51)(v43, v44);
      type metadata accessor for ManageWatchlistsModel();
      sub_22055DF30();
      sub_2207CA970(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
      sub_22088C66C();
      v62(v39);
      (*(v48 + 8))(v39, v63);
      v45 = v58;
      (v49)(v43, v54, v58);
      sub_22088CFFC();

      (v51)(v43, v45);
      (*(v56 + 8))(v55, v57);
      v46 = *(v30 + 8);
      v46(v52, v29);
      (*(v59 + 8))(v53, v60);
      return (v46)(v36, v29);
    }
  }
}

uint64_t sub_2207CA970(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2207CAA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel();
    v8[2] = sub_22055DF30();
    v8[3] = sub_2207CA970(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2207CAAC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ManageWatchlistsModel();
    v7 = sub_2207CA970(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2207CAB5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22089230C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2207CABB8()
{
  result = qword_27CF59D10;
  if (!qword_27CF59D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59D10);
  }

  return result;
}

uint64_t sub_2207CAC0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2207CAB5C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_2207CAC7C()
{
  result = qword_27CF59D18;
  if (!qword_27CF59D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59D18);
  }

  return result;
}

double sub_2207CACD0()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:64.0];
  xmmword_27CF6D170 = xmmword_2208B5D90;
  unk_27CF6D180 = xmmword_2208B5DA0;
  result = 32.0;
  xmmword_27CF6D190 = xmmword_2208B5DB0;
  unk_27CF6D1A0 = xmmword_2208B5DC0;
  *&xmmword_27CF6D1B0 = 0x4034000000000000;
  *(&xmmword_27CF6D1B0 + 1) = v0;
  return result;
}

double sub_2207CAD48()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:40.0];
  xmmword_27CF6D1C0 = xmmword_2208B5DD0;
  *algn_27CF6D1D0 = xmmword_2208B5DE0;
  result = 29.0;
  xmmword_27CF6D1E0 = xmmword_2208B5DF0;
  unk_27CF6D1F0 = xmmword_2208B5E00;
  *&xmmword_27CF6D200 = 0x4030000000000000;
  *(&xmmword_27CF6D200 + 1) = v0;
  return result;
}

void *sub_2207CADC0()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_22088738C();
  v3 = [v2 systemFontOfSize_weight_];
  v4 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if (*(sub_22088522C() + 16))
  {

    sub_220650D50();
    sub_220650DA4();
    v5 = sub_2208912BC();

    if (v5)
    {
      [v3 capHeight];
      v7 = v6;
      [v3 descender];
      v9 = v7 - v8;
      v10 = *(v1 + 64);
      [v3 pointSize];
      v12 = round(v9 + v10 * v11);
      [v4 setMinimumLineHeight_];
      [v4 setMaximumLineHeight_];
    }
  }

  else
  {
  }

  [v4 setAlignment_];
  LODWORD(v13) = 0.5;
  [v4 setHyphenationFactor_];
  [v4 setLineBreakStrategy_];
  sub_2207D35DC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v51 = v4;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v16 = sub_22044D56C(0, &qword_28127E570);
  v17 = MEMORY[0x277D740C0];
  *(inited + 40) = v3;
  v18 = *v17;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  v20 = *(v1 + 40);
  v19 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v20);
  v47 = v1;
  v21 = *(v19 + 16);
  v22 = *(v21 + 40);
  v23 = v15;
  v53 = v3;
  v48 = v18;
  v24 = v22(v20, v21);
  v25 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v24;
  v26 = *MEMORY[0x277D74118];
  *(inited + 104) = v25;
  *(inited + 112) = v26;
  *(inited + 144) = sub_22044D56C(0, &qword_28127E648);
  *(inited + 120) = v51;
  v50 = v26;
  v52 = v51;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v27 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v28 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key);
  v29 = sub_22089125C();

  v30 = [v27 initWithString:v28 attributes:v29];

  sub_22059B6A4();
  sub_22089238C();
  if ((v31 & 1) == 0)
  {
    v32 = MEMORY[0x277D83D00];
    sub_2207D37E4(0, &qword_27CF59D60, MEMORY[0x277D83760], MEMORY[0x277D83768], MEMORY[0x277D83D00]);
    sub_2207D378C(&qword_27CF59D68, &qword_27CF59D60, v32);

    v33 = sub_2208922CC();
    v35 = v34;
    v37 = v47[5];
    v36 = v47[6];
    __swift_project_boxed_opaque_existential_1(v47 + 2, v37);
    v38 = (*(*(v36 + 16) + 128))(v37);
    [v30 addAttribute:v48 value:v38 range:{v33, v35}];
  }

  v49 = v30;
  v39 = MEMORY[0x277D83638];
  sub_2207D37E4(0, &qword_27CF59D50, MEMORY[0x277D83760], MEMORY[0x277D83768], MEMORY[0x277D83638]);
  sub_2207D378C(&qword_27CF59D58, &qword_27CF59D50, v39);
  sub_2208923AC();
  v40 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if (*(sub_22088522C() + 16))
  {

    sub_220650D50();
    sub_220650DA4();
    v41 = sub_2208912BC();

    if (v41)
    {
      [v53 lineHeight];
      [v40 setMinimumLineHeight_];
      [v53 lineHeight];
      [v40 setMaximumLineHeight_];
    }
  }

  else
  {
  }

  [v40 setAlignment_];
  [v52 hyphenationFactor];
  [v40 setHyphenationFactor_];
  [v40 setLineBreakStrategy_];
  v42 = MEMORY[0x277D83D00];
  sub_2207D37E4(0, &qword_27CF59D60, MEMORY[0x277D83760], MEMORY[0x277D83768], MEMORY[0x277D83D00]);
  sub_2207D378C(&qword_27CF59D68, &qword_27CF59D60, v42);

  v43 = v40;
  v44 = sub_2208922CC();
  [v49 addAttribute:v50 value:v43 range:{v44, v45}];

  return v49;
}

id sub_2207CB5A4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v3 = sub_22044D56C(0, &qword_28127E570);
  v4 = sub_220891F2C();
  [v4 lineHeight];
  v6 = v5;

  [v2 setMinimumLineHeight_];
  v7 = sub_220891F2C();
  [v7 lineHeight];
  v9 = v8;

  [v2 setMaximumLineHeight_];
  [v2 setLineBreakStrategy_];
  sub_2207D35DC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = v11;
  v13 = sub_220891F2C();
  v14 = MEMORY[0x277D740C0];
  *(inited + 40) = v13;
  v15 = *v14;
  *(inited + 64) = v3;
  *(inited + 72) = v15;
  v17 = v1[5];
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v17);
  v18 = *(v16 + 16);
  v19 = *(v18 + 40);
  v20 = v15;
  v21 = v19(v17, v18);
  v22 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v21;
  v23 = *MEMORY[0x277D74118];
  *(inited + 104) = v22;
  *(inited + 112) = v23;
  *(inited + 144) = sub_22044D56C(0, &qword_28127E648);
  *(inited + 120) = v2;
  v24 = v23;
  v25 = v2;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key);
  v28 = sub_22089125C();

  v29 = [v26 initWithString:v27 attributes:v28];

  return v29;
}

id sub_2207CB8FC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  v3 = sub_22044D56C(0, &qword_28127E570);
  v4 = sub_220891F2C();
  [v4 lineHeight];
  v6 = v5;

  [v2 setMinimumLineHeight_];
  v7 = sub_220891F2C();
  [v7 lineHeight];
  v9 = v8;

  [v2 setMaximumLineHeight_];
  [v2 setLineBreakStrategy_];
  sub_2207D35DC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v11 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_22089B140;
  v12 = *v11;
  *(inited + 32) = v12;
  v13 = v12;
  sub_22088738C();
  v14 = sub_220891F2C();
  v15 = MEMORY[0x277D740C0];
  *(inited + 40) = v14;
  v16 = *v15;
  *(inited + 64) = v3;
  *(inited + 72) = v16;
  v18 = v1[5];
  v17 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v18);
  v19 = *(v17 + 16);
  v20 = *(v19 + 40);
  v21 = v16;
  v22 = v20(v18, v19);
  v23 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v22;
  v24 = *MEMORY[0x277D74118];
  *(inited + 104) = v23;
  *(inited + 112) = v24;
  *(inited + 144) = sub_22044D56C(0, &qword_28127E648);
  *(inited + 120) = v2;
  v25 = v24;
  v26 = v2;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v27 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v28 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key);
  v29 = sub_22089125C();

  v30 = [v27 initWithString:v28 attributes:v29];

  return v30;
}

id sub_2207CBC6C()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    v3 = objc_opt_self();
    [v3 defaultFontSize];
    v4 = [v3 boldSystemFontOfSize_];
  }

  else
  {
    sub_22088F0DC();
    sub_22044D56C(0, &qword_28127E570);
    v4 = sub_220891F2C();
  }

  v5 = v4;
  sub_2204A5EAC(MEMORY[0x277D84F90]);
  v6 = [v0 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 != 5)
  {
    v8 = *MEMORY[0x277D740C0];
    v9 = [objc_opt_self() whiteColor];
    v21 = sub_22044D56C(0, &qword_28127E530);
    *&v20 = v9;
    sub_2204A62A4(&v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2207CF54C(v19, v8, isUniquelyReferenced_nonNull_native);
  }

  v11 = *MEMORY[0x277D740A8];
  v21 = sub_22044D56C(0, &qword_28127E570);
  *&v20 = v5;
  sub_2204A62A4(&v20, v19);
  v12 = v5;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_2207CF54C(v19, v11, v13);
  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v15 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key);
  v16 = sub_22089125C();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

uint64_t sub_2207CBF78(void *a1)
{
  v82 = sub_220884C1C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v2);
  v80 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207CD370();
  v78 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v79 = &v76 - v9;
  MEMORY[0x28223BE20](v10, v11);
  v83 = &v76 - v12;
  v13 = sub_220884C2C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v76 - v20;
  v88 = sub_220884C6C();
  v85 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v22);
  v76 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = MEMORY[0x28223BE20](v24, v25).n128_u64[0];
  v89 = &v76 - v27;
  v28 = [a1 string];
  v29 = sub_22089136C();
  v31 = v30;

  v92[0] = 46;
  v92[1] = 0xE100000000000000;
  v91 = v92;
  sub_2207D2FEC(sub_2206A6A50, v90, v29, v31);
  v33 = v32;
  v86 = v29;
  v87 = v31;
  sub_22089149C();
  if ((v33 & 1) == 0)
  {
    sub_2208914AC();
    sub_22089154C();
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v35 = a1;
  sub_220884C8C();
  sub_220884C3C();
  (*(v14 + 16))(v17, v21, v13);
  sub_2207D31FC(&qword_27CF59D30, MEMORY[0x277CC8C08]);
  v92[0] = sub_2208915FC();
  sub_2207D1130(v92);
  (*(v14 + 8))(v21, v13);
  v36 = v92[0];
  v37 = v92[0][2];
  v38 = v88;
  v39 = v85;
  if (v37)
  {
    v40 = v81;
    v41 = v80;
    v42 = v82;
    (*(v81 + 16))(v80, v92[0] + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * (v37 - 1), v82);
    v43 = v79;
    sub_220884C0C();
    (*(v40 + 8))(v41, v42);
    v44 = v43;
    v45 = v83;
    sub_2204DD218(v44, v83, sub_2207CD370);
    v46 = v36[2];

    v47 = v84;
    if (v46 < 2)
    {
      v53 = v34;
    }

    else
    {
      v48 = *MEMORY[0x277D740C0];
      v50 = *(v84 + 5);
      v49 = *(v84 + 6);
      __swift_project_boxed_opaque_existential_1(v84 + 2, v50);
      v51 = (*(*(v49 + 16) + 128))(v50);
      sub_2207D38D8(v45, v77, sub_2207CD370);
      (*(v39 + 16))(v76, v89, v38);
      sub_2207D31FC(&qword_27CF59D38, sub_2207CD370);
      sub_2207D31FC(&qword_27CF59D40, MEMORY[0x277CC8C40]);
      v52 = sub_2208922BC();
      v53 = v34;
      [v34 addAttribute:v48 value:v51 range:{v52, v54}];
    }

    sub_2207D3244(v45);
  }

  else
  {
    v53 = v34;

    v47 = v84;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v55 setAlignment_];
  v56 = v47[14];
  v57 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v58 = objc_opt_self();
  v59 = *MEMORY[0x277D74418];
  v60 = [v58 systemFontOfSize:v56 weight:*MEMORY[0x277D74418]];
  v61 = [v57 scaledFontForFont:v60 maximumPointSize:18.0];

  [v61 pointSize];
  v63 = v62;

  sub_2207D35DC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v65 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v66 = v65;
  v67 = [v58 systemFontOfSize:v63 weight:v59];
  v68 = sub_22044D56C(0, &qword_28127E570);
  *(inited + 40) = v67;
  v69 = *MEMORY[0x277D74118];
  *(inited + 64) = v68;
  *(inited + 72) = v69;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E648);
  *(inited + 80) = v55;
  v70 = v69;
  v71 = v55;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_2207D31FC(&qword_28127E6A8, type metadata accessor for Key);
  v72 = sub_22089125C();

  v73 = sub_22089149C();

  [v53 addAttributes:v72 range:{0, v73}];

  sub_22044D56C(0, &qword_28127E7B0);
  v74 = sub_220891D5C();

  (*(v39 + 8))(v89, v88);
  return v74;
}

void sub_2207CC91C(void *a1, char a2)
{
  [a1 setContentMode_];
  if (a2)
  {
    if (qword_27CF55888 != -1)
    {
      swift_once();
    }

    v5 = &qword_27CF6CEB8;
  }

  else
  {
    if (qword_27CF55880 != -1)
    {
      swift_once();
    }

    v5 = &qword_27CF6CEB0;
  }

  v6 = [*v5 imageWithConfiguration_];
  [a1 setImage_];
}

void sub_2207CCA20(void *a1, char a2)
{
  v3 = v2;
  [a1 setContentMode_];
  if (qword_27CF55890 != -1)
  {
    swift_once();
  }

  v6 = [qword_27CF6CEC0 imageWithConfiguration_];
  v17 = v6;
  if (a2 == 2)
  {
    [a1 setImage_];
  }

  else
  {
    v8 = v2[5];
    v7 = v2[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    (*(*(v7 + 16) + 24))(&v18, v8);
    if (a2)
    {
      v10 = v3[5];
      v9 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
      v11 = (*(*(v9 + 16) + 128))(v10);
    }

    else
    {
      v12 = v18;
      v13 = objc_opt_self();
      if (v12 == 1)
      {
        v14 = [v13 whiteColor];
      }

      else
      {
        v14 = [v13 blackColor];
      }

      v11 = v14;
    }

    v15 = v11;
    v16 = sub_22089204C();

    [a1 setImage_];
  }
}

void sub_2207CCBFC(void *a1)
{
  v3 = sub_22088EAEC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = sub_22088EB0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 5)
  {
    v12 = [a1 layer];
    [v12 setCornerRadius_];

    v13 = [a1 layer];
  }

  else
  {
    v14 = sub_22088F0DC();
    v15 = v1[5];
    v16 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v15);
    v17 = (*(*(v16 + 16) + 128))(v15);
    [a1 setBackgroundColor_];

    v18 = [a1 layer];
    v19 = v18;
    if (v14)
    {
      [a1 frame];
      [v19 setCornerRadius_];

      v20 = [a1 layer];
      [v20 setCornerCurve_];

      sub_22088EADC();
      sub_22088EB1C();
      v21 = [a1 tintColor];
      v24[3] = v5;
      v24[4] = MEMORY[0x277D74E20];
      __swift_allocate_boxed_opaque_existential_1(v24);
      sub_22088EAFC();

      (*(v6 + 8))(v9, v5);
      sub_220891FAC();
      return;
    }

    [v18 setCornerRadius_];

    v13 = [a1 layer];
  }

  v23 = v13;
  [v23 setCornerCurve_];
  v22 = v23;
}

void sub_2207CCF58(void *a1, char a2)
{
  if (a2)
  {
    v3 = v2[5];
    v4 = v2[6];
    v5 = a1;
    __swift_project_boxed_opaque_existential_1(v2 + 2, v3);
    (*(*(v4 + 16) + 24))(&v9, v3);
    if (v9)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [objc_opt_self() effectWithStyle_];
    a1 = v5;
  }

  else
  {
    v7 = 0;
  }

  [a1 setEffect_];
}

uint64_t sub_2207CD028()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2207CD08C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207CD0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2207CD1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v16 = *(v6 + 72);
  v17 = *(v6 + 104);
  v25[2] = *(v6 + 88);
  v25[3] = v17;
  v25[4] = *(v6 + 120);
  v25[0] = *(v6 + 56);
  v25[1] = v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  (*(v10 + 16))(&v22 - v14, &v22 - v14, v7, v19);
  v20 = sub_2207D30F0(&v22 - v14, v25, a2, v7, v8);
  sub_2207D3838(v25, v24);
  result = (*(v10 + 8))(&v22 - v14, v7);
  *v23 = v20;
  return result;
}

void sub_2207CD370()
{
  if (!qword_27CF59D20)
  {
    sub_220884C5C();
    sub_2207D31FC(&qword_27CF59D28, MEMORY[0x277CC8C20]);
    v0 = sub_2208919DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59D20);
    }
  }
}

uint64_t sub_2207CD404(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_22088543C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2205CF4A4();
  v40 = a2;
  result = sub_2208926CC();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    v39 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v6 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_2207D31FC(&unk_2812993F8, MEMORY[0x277CC9A70]);
      result = sub_22089129C();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v6 = v38;
      v10 = v39;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2207CD7D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2207D34E0(0, &qword_28127E318);
  v35 = a2;
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 48 * v20;
      v36 = *(v22 + 16);
      v37 = *v22;
      v23 = *(v22 + 32);
      v24 = *(v22 + 40);
      if ((v35 & 1) == 0)
      {
        v25 = v23;
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v21);
      result = sub_220892A2C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 48 * v15;
      *v16 = v37;
      *(v16 + 16) = v36;
      *(v16 + 32) = v23;
      *(v16 + 40) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2207CDA84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2207D34E0(0, &qword_28127E310);
  v33 = a2;
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 24 * v20;
      v34 = *v22;
      v23 = *(v22 + 16);
      if ((v33 & 1) == 0)
      {
        v24 = v23;
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v21);
      result = sub_220892A2C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v34;
      *(v16 + 16) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2207CDD34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2204A5EE0();
  v35 = a2;
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_2204A62A4(v22, v36);
      }

      else
      {
        sub_2204A7FA8(v22, v36);
        v23 = v21;
      }

      sub_22089136C();
      sub_2208929EC();
      sub_22089146C();
      v24 = sub_220892A2C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_2204A62A4(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2207CDFF8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2207D3640(0, &qword_28127E308, type metadata accessor for QuoteDetailViewLabelAccessibilityElement, sub_2205CF5B4);
  v31 = a2;
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v20);
      result = sub_220892A2C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2207CE2B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2207D3640(0, &qword_28127E2F8, type metadata accessor for TickerAnimation, sub_2207D36C0);
  v30 = a2;
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v20);
      result = sub_220892A2C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2207CE56C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2207D3714();
  v35 = a2;
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2208929EC();
      sub_22089146C();
      result = sub_220892A2C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2207CE804(uint64_t a1, int a2)
{
  v3 = v2;
  v46 = sub_22088685C();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_2204DD1B4(0, &qword_28127E2F0, MEMORY[0x277D69810]);
  v43 = a2;
  result = sub_2208926CC();
  v10 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v40 = (v5 + 16);
    v41 = v8;
    v42 = v5;
    v44 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v42 + 72);
      v29 = v24 + v28 * v23;
      if (v43)
      {
        (*v44)(v45, v29, v46);
      }

      else
      {
        (*v40)(v45, v29, v46);
      }

      sub_2208929EC();
      sub_22089146C();
      result = sub_220892A2C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      result = (*v44)(*(v10 + 56) + v28 * v18, v45, v46);
      ++*(v10 + 16);
      v8 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_2207CEB98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2207D3940();
  v31 = a2;
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_2208929EC();
      MEMORY[0x223D8ABA0](v20);
      result = sub_220892A2C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2207CEE18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_2207D3544();
  v30 = a2;
  result = sub_2208926CC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2208929EC();
      sub_220892A0C();
      result = sub_220892A2C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2207CF09C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22088543C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2205CDF20(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2207CFDD4();
      goto LABEL_7;
    }

    sub_2207CD404(v18, a3 & 1);
    v23 = sub_2205CDF20(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2207CFCB4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_22089291C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

void sub_2207CF268(_OWORD *a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2205CDFF4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2207CD7D0(v14, a3 & 1);
      v9 = sub_2205CDFF4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_22089291C();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_2207D0040();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    v23 = (v19[7] + 48 * v9);
    v24 = a1[1];
    *v23 = *a1;
    v23[1] = v24;
    v23[2] = a1[2];
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 48 * v9;
  v21 = *(v20 + 32);
  v22 = a1[1];
  *v20 = *a1;
  *(v20 + 16) = v22;
  *(v20 + 32) = a1[2];
}

void sub_2207CF3D8(uint64_t a1, unsigned __int8 a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2205CDFF4(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      sub_2207CDA84(v18, a3 & 1);
      v13 = sub_2205CDFF4(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_22089291C();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_2207D01B8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    *(v23[6] + v13) = a2;
    v26 = v23[7] + 24 * v13;
    *v26 = a4;
    *(v26 + 8) = a5;
    *(v26 + 16) = a1;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v23[2] = v28;
      return;
    }

    goto LABEL_15;
  }

  v24 = v23[7] + 24 * v13;
  v25 = *(v24 + 16);
  *v24 = a4;
  *(v24 + 8) = a5;
  *(v24 + 16) = a1;
}

_OWORD *sub_2207CF54C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2205CFDDC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_2207D0330();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2207CDD34(v13, a3 & 1);
    v8 = sub_2205CFDDC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_22089291C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return sub_2204A62A4(a1, v19);
  }

  else
  {
    sub_2207CFD6C(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_2207CF68C(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2205CDFF4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_2207D0640();
    result = v17;
    goto LABEL_8;
  }

  sub_2207CDFF8(v14, a3 & 1);
  result = sub_2205CDFF4(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22089291C();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_2207CF7D4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = a2 & 1;
  result = sub_2205CE1C8(a2 & 1);
  v11 = *(v7 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v7 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2207CE2B0(v14, a3 & 1);
      result = sub_2205CE1C8(v8);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22089291C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2207D07C8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = v8;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_2207CF920(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2204AF97C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2207CE56C(v16, a4 & 1);
      v11 = sub_2204AF97C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22089291C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2207D0950();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2207CFA98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2204AF97C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for CuratedForYouFeedGroupKnobs();
      return sub_2207D3870(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for CuratedForYouFeedGroupKnobs);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_2207D0ED8(type metadata accessor for CuratedForYouFeedGroupKnobs, &qword_28127E2D8, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
    goto LABEL_7;
  }

  sub_2204DCE70(v15, a4 & 1, type metadata accessor for CuratedForYouFeedGroupKnobs, &qword_28127E2D8, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
  v22 = sub_2204AF97C(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_22089291C();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2204DCC10(v12, a2, a3, a1, v18, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
}

uint64_t sub_2207CFCB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22088543C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_2207CFD6C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2204A62A4(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_2207CFDD4()
{
  v1 = v0;
  v32 = sub_22088543C();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205CF4A4();
  v4 = *v0;
  v5 = sub_2208926BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v18 = *(v28 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

id sub_2207D0040()
{
  v1 = v0;
  sub_2207D34E0(0, &qword_28127E318);
  v2 = *v0;
  v3 = sub_2208926BC();
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
        v18 = *(v2 + 56) + 48 * v17;
        v19 = *(v18 + 32);
        v20 = *(v18 + 40);
        v21 = *v18;
        v22 = *(v18 + 16);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v23 = *(v4 + 56) + 48 * v17;
        *v23 = v21;
        *(v23 + 16) = v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        result = v19;
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

id sub_2207D01B8()
{
  v1 = v0;
  sub_2207D34E0(0, &qword_28127E310);
  v2 = *v0;
  v3 = sub_2208926BC();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *v18;
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = *(v4 + 56) + 24 * v17;
        *v21 = v20;
        *(v21 + 16) = v19;
        result = v19;
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

id sub_2207D0330()
{
  v1 = v0;
  sub_2204A5EE0();
  v2 = *v0;
  v3 = sub_2208926BC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2204A7FA8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2204A62A4(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

id sub_2207D04EC()
{
  v1 = v0;
  sub_2204C101C();
  v2 = *v0;
  v3 = sub_2208926BC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        result = v18;
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

id sub_2207D0640()
{
  v1 = v0;
  sub_2207D3640(0, &qword_28127E308, type metadata accessor for QuoteDetailViewLabelAccessibilityElement, sub_2205CF5B4);
  v2 = *v0;
  v3 = sub_2208926BC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_2207D07C8()
{
  v1 = v0;
  sub_2207D3640(0, &qword_28127E2F8, type metadata accessor for TickerAnimation, sub_2207D36C0);
  v2 = *v0;
  v3 = sub_2208926BC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_2207D0950()
{
  v1 = v0;
  sub_2207D3714();
  v2 = *v0;
  v3 = sub_2208926BC();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

char *sub_2207D0AB0()
{
  v1 = v0;
  v36 = sub_22088685C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204DD1B4(0, &qword_28127E2F0, MEMORY[0x277D69810]);
  v4 = *v0;
  v5 = sub_2208926BC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_2207D0D40()
{
  v1 = v0;
  sub_2207D3940();
  v2 = *v0;
  v3 = sub_2208926BC();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_2207D0ED8(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v40 = &v39 - v10;
  sub_2204DD1B4(0, a2, a3);
  v11 = *v4;
  v12 = sub_2208926BC();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_2207D38D8(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_2204DD218(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void sub_2207D1130(void **a1)
{
  v2 = *(sub_220884C1C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2207D31AC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_2207D11D8(v5);
  *a1 = v3;
}

void sub_2207D11D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22089286C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_220884C1C();
        v6 = sub_22089178C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_220884C1C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2207D1778(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2207D1304(0, v2, 1, a1);
  }
}

void sub_2207D1304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = sub_220884C5C();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v9);
  v72 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v12);
  v71 = &v52[-v13];
  sub_2207CD370();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v70 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v18);
  v69 = &v52[-v19];
  v20 = sub_220884C1C();
  MEMORY[0x28223BE20](v20, v21);
  v62 = &v52[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v24);
  v76 = &v52[-v25];
  v29 = MEMORY[0x28223BE20](v26, v27);
  v75 = &v52[-v30];
  v54 = a2;
  if (a3 != a2)
  {
    v31 = *a4;
    v33 = *(v28 + 16);
    v32 = v28 + 16;
    v34 = *(v32 + 56);
    v65 = (v8 + 16);
    v66 = v33;
    v63 = (v32 - 8);
    v64 = (v8 + 8);
    v67 = v32;
    v35 = v31 + v34 * (a3 - 1);
    v59 = -v34;
    v60 = (v32 + 16);
    v36 = a1 - a3;
    v61 = v31;
    v53 = v34;
    v37 = v31 + v34 * a3;
    v68 = v20;
LABEL_5:
    v57 = v35;
    v58 = a3;
    v55 = v37;
    v56 = v36;
    v74 = v36;
    while (1)
    {
      v38 = v66;
      v66(v29);
      (v38)(v76, v35, v20);
      v39 = v69;
      sub_220884C0C();
      v40 = *v65;
      v41 = v71;
      v42 = v73;
      (*v65)(v71, v39, v73);
      sub_2207D3244(v39);
      v43 = v70;
      sub_220884C0C();
      v44 = v72;
      v40(v72, v43, v42);
      v45 = v43;
      v20 = v68;
      sub_2207D3244(v45);
      v46 = sub_220884C4C();
      v47 = *v64;
      (*v64)(v44, v42);
      v47(v41, v42);
      v48 = *v63;
      (*v63)(v76, v20);
      v48(v75, v20);
      if ((v46 & 1) == 0)
      {
LABEL_4:
        a3 = v58 + 1;
        v35 = v57 + v53;
        v36 = v56 - 1;
        v37 = v55 + v53;
        if (v58 + 1 == v54)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v49 = *v60;
      v50 = v62;
      (*v60)(v62, v37, v20);
      swift_arrayInitWithTakeFrontToBack();
      v49(v35, v50, v20);
      v35 += v59;
      v37 += v59;
      if (__CFADD__(v74++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_2207D1778(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v147 = a4;
  v175 = sub_220884C5C();
  v6 = *(v175 - 8);
  MEMORY[0x28223BE20](v175, v7);
  v174 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v173 = &v146 - v11;
  sub_2207CD370();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v172 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v171 = &v146 - v17;
  v18 = sub_220884C1C();
  v158 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v150 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v163 = &v146 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v178 = &v146 - v26;
  v29 = MEMORY[0x28223BE20](v27, v28);
  v177 = &v146 - v30;
  v31 = *(a3 + 8);
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_96:
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v159;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v33 = sub_2207D2DE0(v33);
    }

    v179 = v33;
    v142 = *(v33 + 2);
    if (v142 >= 2)
    {
      while (*a3)
      {
        v143 = *&v33[16 * v142];
        v144 = *&v33[16 * v142 + 24];
        sub_2207D2508(*a3 + v158[9] * v143, *a3 + v158[9] * *&v33[16 * v142 + 16], *a3 + v158[9] * v144, v64);
        if (v32)
        {
          goto LABEL_106;
        }

        if (v144 < v143)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2207D2DE0(v33);
        }

        if (v142 - 2 >= *(v33 + 2))
        {
          goto LABEL_122;
        }

        v145 = &v33[16 * v142];
        *v145 = v143;
        *(v145 + 1) = v144;
        v179 = v33;
        sub_2207D2D54(v142 - 1);
        v33 = v179;
        v142 = *(v179 + 2);
        if (v142 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v32 = 0;
  v168 = (v6 + 16);
  v169 = v158 + 2;
  v166 = (v158 + 1);
  v167 = (v6 + 8);
  v165 = (v158 + 4);
  v33 = MEMORY[0x277D84F90];
  v151 = a3;
  v170 = v18;
  v148 = a1;
  while (1)
  {
    a3 = v32;
    v34 = v32 + 1;
    v157 = v32;
    if ((v32 + 1) >= v31)
    {
      v50 = (v32 + 1);
      v64 = v147;
    }

    else
    {
      v160 = v31;
      v35 = *v151;
      v162 = v158[9];
      v36 = v162;
      v37 = v35;
      v176 = v35;
      v38 = v158[2];
      v39 = &v35[v162 * v34];
      v38(v29);
      v155 = v38;
      (v38)(v178, &v37[v36 * a3], v18);
      v40 = v171;
      sub_220884C0C();
      v41 = *v168;
      v42 = v173;
      v43 = v175;
      (*v168)(v173, v40, v175);
      sub_2207D3244(v40);
      v44 = v172;
      sub_220884C0C();
      v45 = v174;
      v154 = v41;
      v41(v174, v44, v43);
      v46 = v44;
      v18 = v170;
      sub_2207D3244(v46);
      LODWORD(v161) = sub_220884C4C();
      v47 = *v167;
      (*v167)(v45, v43);
      a3 = v157;
      v153 = v47;
      (v47)(v42, v43);
      v48 = v158[1];
      v48(v178, v18);
      v152 = v48;
      v48(v177, v18);
      v49 = (a3 + 2);
      v32 = &v176[v162 * (a3 + 2)];
      v156 = v33;
      while (1)
      {
        v50 = v160;
        if (v160 == v49)
        {
          break;
        }

        v51 = v155;
        v164 = v49;
        v155();
        v52 = v178;
        v176 = v39;
        (v51)(v178, v39, v18);
        v53 = v171;
        sub_220884C0C();
        v54 = v173;
        v55 = v175;
        v56 = v154;
        (v154)(v173, v53, v175);
        sub_2207D3244(v53);
        v57 = v172;
        sub_220884C0C();
        v58 = v174;
        v56(v174, v57, v55);
        sub_2207D3244(v57);
        v59 = sub_220884C4C() & 1;
        v60 = v153;
        (v153)(v58, v55);
        v61 = v54;
        v18 = v170;
        v62 = v55;
        v33 = v156;
        v60(v61, v62);
        a3 = v157;
        v63 = v152;
        (v152)(v52, v18);
        (v63)(v177, v18);
        v49 = (v164 + 1);
        v32 += v162;
        v39 = &v176[v162];
        if ((v161 & 1) != v59)
        {
          v50 = v164;
          break;
        }
      }

      a1 = v148;
      v64 = v147;
      if (v161)
      {
        if (v50 < a3)
        {
          goto LABEL_125;
        }

        if (a3 < v50)
        {
          v65 = v50;
          v66 = v162 * (v50 - 1);
          v67 = v50 * v162;
          v160 = v50;
          v32 = a3;
          v68 = a3 * v162;
          v69 = v151;
          do
          {
            if (v32 != --v65)
            {
              v70 = *v69;
              if (!v70)
              {
                goto LABEL_131;
              }

              v176 = *v165;
              (v176)(v150, v70 + v68, v18);
              if (v68 < v66 || v70 + v68 >= (v70 + v67))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v68 != v66)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v176)(v70 + v66, v150, v18);
              v69 = v151;
            }

            ++v32;
            v66 -= v162;
            v67 -= v162;
            v68 += v162;
          }

          while (v32 < v65);
          a1 = v148;
          v64 = v147;
          a3 = v157;
          v50 = v160;
        }
      }
    }

    v71 = v151[1];
    if (v50 < v71)
    {
      if (__OFSUB__(v50, a3))
      {
        goto LABEL_124;
      }

      if (v50 - a3 < v64)
      {
        if (__OFADD__(a3, v64))
        {
          goto LABEL_126;
        }

        if ((a3 + v64) >= v71)
        {
          v32 = v151[1];
        }

        else
        {
          v32 = (a3 + v64);
        }

        if (v32 < a3)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v50 != v32)
        {
          break;
        }
      }
    }

    v32 = v50;
    if (v50 < a3)
    {
      goto LABEL_123;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_220587F84(0, *(v33 + 2) + 1, 1, v33);
    }

    v64 = *(v33 + 2);
    v72 = *(v33 + 3);
    v73 = v64 + 1;
    if (v64 >= v72 >> 1)
    {
      v33 = sub_220587F84((v72 > 1), v64 + 1, 1, v33);
    }

    *(v33 + 2) = v73;
    v74 = &v33[16 * v64];
    *(v74 + 4) = a3;
    *(v74 + 5) = v32;
    if (!*a1)
    {
      goto LABEL_133;
    }

    a3 = v151;
    if (v64)
    {
      v75 = *a1;
      while (1)
      {
        v76 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v77 = *(v33 + 4);
          v78 = *(v33 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_53:
          if (v80)
          {
            goto LABEL_112;
          }

          v93 = &v33[16 * v73];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_115;
          }

          v99 = &v33[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_119;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v73 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v103 = &v33[16 * v73];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_67:
        if (v98)
        {
          goto LABEL_114;
        }

        v106 = &v33[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_117;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_74:
        v64 = v76 - 1;
        if (v76 - 1 >= v73)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v114 = *&v33[16 * v64 + 32];
        v115 = v76;
        v116 = *&v33[16 * v76 + 40];
        v117 = v159;
        sub_2207D2508(*a3 + v158[9] * v114, *a3 + v158[9] * *&v33[16 * v76 + 32], *a3 + v158[9] * v116, v75);
        v159 = v117;
        if (v117)
        {
          goto LABEL_106;
        }

        if (v116 < v114)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2207D2DE0(v33);
        }

        if (v64 >= *(v33 + 2))
        {
          goto LABEL_109;
        }

        v118 = &v33[16 * v64];
        *(v118 + 4) = v114;
        *(v118 + 5) = v116;
        v179 = v33;
        sub_2207D2D54(v115);
        v33 = v179;
        v73 = *(v179 + 2);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v33[16 * v73 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_110;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_111;
      }

      v88 = &v33[16 * v73];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_113;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_116;
      }

      if (v92 >= v84)
      {
        v110 = &v33[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_120;
        }

        if (v79 < v113)
        {
          v76 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v31 = *(a3 + 8);
    a1 = v148;
    if (v32 >= v31)
    {
      goto LABEL_96;
    }
  }

  v156 = v33;
  v119 = *v151;
  v120 = v158[9];
  v164 = v158[2];
  v121 = &v119[v120 * (v50 - 1)];
  v161 = -v120;
  v162 = v119;
  v122 = (a3 - v50);
  v149 = v120;
  v123 = &v119[v50 * v120];
  v152 = v32;
LABEL_86:
  v160 = v50;
  v153 = v123;
  v154 = v122;
  v124 = v122;
  v155 = v121;
  v125 = v121;
  while (1)
  {
    v176 = v124;
    v126 = v164;
    v164();
    (v126)(v178, v125, v18);
    v127 = v171;
    sub_220884C0C();
    v128 = *v168;
    v129 = v173;
    v130 = v175;
    (*v168)(v173, v127, v175);
    sub_2207D3244(v127);
    v131 = v172;
    sub_220884C0C();
    v132 = v174;
    v128(v174, v131, v130);
    sub_2207D3244(v131);
    v133 = sub_220884C4C();
    v134 = *v167;
    v135 = v132;
    v18 = v170;
    (*v167)(v135, v130);
    v134(v129, v130);
    v64 = v166;
    v136 = *v166;
    (*v166)(v178, v18);
    v136(v177, v18);
    if ((v133 & 1) == 0)
    {
LABEL_85:
      v50 = v160 + 1;
      v121 = (v155 + v149);
      v122 = v154 - 1;
      v123 = &v153[v149];
      v32 = v152;
      if ((v160 + 1) != v152)
      {
        goto LABEL_86;
      }

      a1 = v148;
      v33 = v156;
      a3 = v157;
      if (v152 < v157)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    v137 = v176;
    if (!v162)
    {
      break;
    }

    v64 = v165;
    v138 = *v165;
    v139 = v163;
    (*v165)(v163, v123, v18);
    swift_arrayInitWithTakeFrontToBack();
    v138(v125, v139, v18);
    v125 = (v125 + v161);
    v123 += v161;
    v140 = __CFADD__(v137, 1);
    v124 = v137 + 1;
    if (v140)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_2207D2508(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v92 = a4;
  v86 = sub_220884C5C();
  v7 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v8);
  v85 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v84 = v71 - v12;
  sub_2207CD370();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v83 = v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v82 = v71 - v18;
  v91 = sub_220884C1C();
  v19 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v20);
  v81 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v90 = v71 - v24;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_60;
  }

  v27 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_61;
  }

  v28 = (a2 - a1) / v26;
  v95 = a1;
  v94 = v92;
  if (v28 >= v27 / v26)
  {
    v30 = v27 / v26 * v26;
    if (v92 < a2 || a2 + v30 <= v92)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v92 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = v92 + v30;
    if (v30 >= 1)
    {
      v49 = -v26;
      v75 = (v7 + 16);
      v76 = (v19 + 16);
      v74 = (v7 + 8);
      v73 = (v19 + 8);
      v50 = v48;
      v88 = a1;
      v77 = -v26;
      v51 = v75;
      do
      {
        v71[0] = v48;
        v52 = a2;
        v53 = a2 + v49;
        v89 = v53;
        v78 = v52;
        while (1)
        {
          if (v52 <= a1)
          {
            v95 = v52;
            v93 = v71[0];
            goto LABEL_58;
          }

          v72 = v48;
          v87 = a3 + v49;
          v55 = v50 + v49;
          v79 = a3;
          v80 = v50;
          v56 = *v76;
          v57 = v53;
          v58 = v91;
          (*v76)();
          v59 = v81;
          (v56)(v81, v57, v58);
          v60 = v82;
          sub_220884C0C();
          v61 = *v51;
          v62 = v84;
          v63 = v86;
          (*v51)(v84, v60, v86);
          sub_2207D3244(v60);
          v64 = v83;
          sub_220884C0C();
          v65 = v85;
          v61(v85, v64, v63);
          sub_2207D3244(v64);
          v66 = sub_220884C4C();
          v67 = *v74;
          (*v74)(v65, v63);
          v67(v62, v63);
          v68 = *v73;
          v69 = v91;
          (*v73)(v59, v91);
          v68(v90, v69);
          if (v66)
          {
            break;
          }

          v48 = v55;
          a3 = v87;
          v70 = v55;
          if (v79 < v80 || v87 >= v80)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v88;
            v49 = v77;
          }

          else
          {
            a1 = v88;
            v49 = v77;
            if (v79 != v80)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = v48;
          v54 = v70 > v92;
          v53 = v89;
          v52 = v78;
          if (!v54)
          {
            a2 = v78;
            goto LABEL_57;
          }
        }

        v50 = v80;
        a3 = v87;
        if (v79 < v78 || v87 >= v78)
        {
          a2 = v89;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v88;
          v48 = v72;
          v49 = v77;
        }

        else
        {
          a1 = v88;
          a2 = v89;
          v48 = v72;
          v49 = v77;
          if (v79 != v78)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v89;
          }
        }
      }

      while (v50 > v92);
    }

LABEL_57:
    v95 = a2;
    v93 = v48;
  }

  else
  {
    v29 = v28 * v26;
    if (v92 < a1 || a1 + v29 <= v92)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v92 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v80 = v92 + v29;
    v93 = v92 + v29;
    v87 = a3;
    if (v29 >= 1 && a2 < a3)
    {
      v32 = *(v19 + 16);
      v76 = (v7 + 16);
      v77 = v32;
      v78 = v26;
      v79 = v19 + 16;
      v74 = (v19 + 8);
      v75 = (v7 + 8);
      v33 = v91;
      do
      {
        v88 = a1;
        v89 = a2;
        v34 = v77;
        (v77)();
        v35 = v81;
        v34(v81, v92, v33);
        v36 = v82;
        sub_220884C0C();
        v37 = *v76;
        v38 = v84;
        v39 = v86;
        (*v76)(v84, v36, v86);
        sub_2207D3244(v36);
        v40 = v83;
        sub_220884C0C();
        v41 = v85;
        (v37)(v85, v40, v39);
        sub_2207D3244(v40);
        v42 = sub_220884C4C();
        v43 = *v75;
        (*v75)(v41, v39);
        (v43)(v38, v39);
        v44 = *v74;
        (*v74)(v35, v33);
        v44(v90, v33);
        if (v42)
        {
          v45 = v78;
          v46 = v88;
          a2 = v89 + v78;
          if (v88 < v89 || v88 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v88 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v46 = v88;
          a2 = v89;
          v45 = v78;
          v47 = v92 + v78;
          if (v88 < v92 || v88 >= v47)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v88 != v92)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v94 = v47;
          v92 = v47;
        }

        a1 = v46 + v45;
        v95 = a1;
      }

      while (v92 < v80 && a2 < v87);
    }
  }

LABEL_58:
  sub_2207D2E0C(&v95, &v94, &v93, MEMORY[0x277CC8BF0]);
}

uint64_t sub_2207D2D54(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2207D2DE0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2207D2E0C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2207D2EF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2207D32A0();
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

unint64_t sub_2207D2FEC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_2208914BC();
    v13[0] = sub_22089157C();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_2207D30F0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v9 = swift_allocObject();
  sub_220457328(&v13, v9 + 16);
  v10 = *a2;
  *(v9 + 72) = a2[1];
  v11 = a2[3];
  *(v9 + 88) = a2[2];
  *(v9 + 104) = v11;
  *(v9 + 120) = a2[4];
  *(v9 + 56) = v10;
  return v9;
}

uint64_t sub_2207D31FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2207D3244(uint64_t a1)
{
  sub_2207CD370();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207D32A0()
{
  if (!qword_27CF56DE8)
  {
    sub_2207D37E4(255, &qword_27CF56DF0, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56DE8);
    }
  }
}

uint64_t sub_2207D3324(void *a1)
{
  v2 = [a1 textContainer];
  [v2 setMaximumNumberOfLines_];

  v3 = [a1 textContainer];
  [v3 setLineBreakMode_];

  v4 = [a1 textContainer];
  [v4 setLineFragmentPadding_];

  [a1 setTextContainerInset_];
  [a1 setEditable_];
  [a1 setSelectable_];
  [a1 setScrollEnabled_];
  [a1 setShowsVerticalScrollIndicator_];
  [a1 setShowsHorizontalScrollIndicator_];
  v5 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

  result = sub_22088F0DC();
  if (result)
  {
    v7 = [a1 effectiveUserInterfaceLayoutDirection] == 1;

    return [a1 setTextAlignment_];
  }

  return result;
}

void sub_2207D34E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_2205CF5B4();
    v3 = sub_2208926EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2207D3544()
{
  if (!qword_27CF59D48)
  {
    sub_2207D35DC(255, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    v0 = sub_2208926EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59D48);
    }
  }
}

void sub_2207D35DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2207D3640(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_2208926EC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2207D36C0()
{
  result = qword_28127F210;
  if (!qword_28127F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127F210);
  }

  return result;
}

void sub_2207D3714()
{
  if (!qword_28127E2C8)
  {
    sub_22044D56C(255, &qword_28127E860);
    v0 = sub_2208926EC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E2C8);
    }
  }
}

uint64_t sub_2207D378C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2207D37E4(255, a2, MEMORY[0x277D83760], MEMORY[0x277D83768], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2207D37E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2207D3870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207D38D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2207D3940()
{
  if (!qword_28127E300)
  {
    sub_22044D56C(255, &qword_28127E518);
    sub_2205CF5B4();
    v0 = sub_2208926EC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E300);
    }
  }
}

uint64_t sub_2207D39BC(void *a1)
{
  v3 = sub_22089226C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22089215C();
  v46[1] = v9;
  v46[2] = v8;
  v46[3] = v11;
  v46[4] = v10;
  (*(v4 + 16))(v7, v1, v3);
  sub_2208921FC();
  sub_22089215C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_22089215C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = (*(v4 + 8))(v7, v3);
  if (v13 == v21 && v15 == v23 && v17 == v25 && v19 == v27)
  {
    sub_2207D3C24();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22089C660;
    v33 = *MEMORY[0x277D76808];
    *(inited + 32) = *MEMORY[0x277D76808];
    v34 = *MEMORY[0x277D76800];
    v35 = *MEMORY[0x277D767F8];
    *(inited + 40) = *MEMORY[0x277D76800];
    *(inited + 48) = v35;
    v36 = *MEMORY[0x277D767F0];
    v37 = *MEMORY[0x277D767E8];
    *(inited + 56) = *MEMORY[0x277D767F0];
    *(inited + 64) = v37;
    v38 = v33;
    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = v37;
    v43 = [a1 preferredContentSizeCategory];
    v44 = sub_2206D10D4(v43, inited);
    LOBYTE(v35) = v45;

    swift_setDeallocating();
    type metadata accessor for UIContentSizeCategory(0);
    result = swift_arrayDestroy();
    if ((v35 & 1) == 0 && __OFADD__(v44, 1))
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2207D3C24()
{
  if (!qword_27CF59D70)
  {
    type metadata accessor for UIContentSizeCategory(255);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59D70);
    }
  }
}

uint64_t sub_2207D3CA0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204643A4(0, &unk_27CF58368);
  v6[2] = 0x3FF0000000000000;
  v6[3] = 0x3FF0000000000000;
  v6[1] = 0x7FEFFFFFFFFFFFFFLL;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_220886C3C();
  qword_27CF59D78 = result;
  return result;
}

uint64_t FCFeedGroupType.groupType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 - 18) > 8)
  {
    v3 = MEMORY[0x277D69008];
  }

  else
  {
    v3 = qword_27844A7C0[a1 - 18];
  }

  v4 = *v3;
  v5 = sub_22088A0EC();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_2207D3EC8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D210);
  __swift_project_value_buffer(v0, qword_27CF6D210);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2207D4074()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D228);
  __swift_project_value_buffer(v0, qword_27CF6D228);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2207D4220()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D240);
  __swift_project_value_buffer(v0, qword_27CF6D240);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2207D43D0()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D258);
  __swift_project_value_buffer(v0, qword_27CF6D258);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2207D4608()
{
  sub_2207D4A10(0, &qword_281298698, sub_2205C41F4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888F2C();
}

void sub_2207D46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30[3] = a8;
  v30[4] = a5;
  v31 = a1;
  v30[1] = a11;
  v30[2] = a10;
  v12 = sub_22088846C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088516C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088515C();
  (*(v13 + 104))(v16, *MEMORY[0x277D6CAB8], v12);
  sub_220885ADC();
  (*(v13 + 8))(v16, v12);
  (*(v18 + 8))(v21, v17);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v31;
  *(v22 + 24) = a2;

  v24 = sub_220888D9C();
  sub_220888E4C();

  v25 = sub_220888D9C();
  sub_220888F1C();

  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = a2;

  v27 = sub_220888D9C();
  sub_220888F0C();

  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = a2;

  v29 = sub_220888D9C();
  sub_220888E9C();
}

void sub_2207D4A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2207D4A74(uint64_t a1, void (*a2)(char *))
{
  sub_2205C41F4(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088665C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a2(v7);
  return sub_22074503C(v7);
}

uint64_t sub_2207D4BA8(uint64_t a1, void (*a2)(char *))
{
  sub_2205C41F4(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088665C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6);
  return sub_22074503C(v6);
}

uint64_t sub_2207D4C94(uint64_t a1, void (*a2)(char *))
{
  sub_2205C41F4(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088665C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6);
  return sub_22074503C(v6);
}

uint64_t getEnumTagSinglePayload for AppReviewRequestState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppReviewRequestState(uint64_t result, int a2, int a3)
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

uint64_t sub_2207D4DC0(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  sub_2207D53F8(0, &qword_27CF59D90, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207D53A4();
  sub_220892A5C();
  v15 = 0;
  sub_22089282C();
  if (!v3)
  {
    v14 = 1;
    sub_22089282C();
    v13 = 2;
    sub_22089282C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_2207D4F5C()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2207D4FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2207D50A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2207D4FDC(uint64_t a1)
{
  v2 = sub_2207D53A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2207D5018(uint64_t a1)
{
  v2 = sub_2207D53A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2207D5054@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2207D51C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2207D50A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x80000002208D6450 == a2;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002208D6470 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002208D6490 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

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

uint64_t sub_2207D51C4(void *a1)
{
  sub_2207D53F8(0, &qword_27CF59D80, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2207D53A4();
  sub_220892A4C();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_22089278C();
    v11[14] = 1;
    sub_22089278C();
    v11[13] = 2;
    sub_22089278C();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2207D53A4()
{
  result = qword_27CF59D88;
  if (!qword_27CF59D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59D88);
  }

  return result;
}

void sub_2207D53F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2207D53A4();
    v7 = a3(a1, &type metadata for AppReviewRequestState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2207D5470()
{
  result = qword_27CF59D98;
  if (!qword_27CF59D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59D98);
  }

  return result;
}

unint64_t sub_2207D54C8()
{
  result = qword_27CF59DA0;
  if (!qword_27CF59DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59DA0);
  }

  return result;
}

unint64_t sub_2207D5520()
{
  result = qword_27CF59DA8;
  if (!qword_27CF59DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59DA8);
  }

  return result;
}

uint64_t sub_2207D5574()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 0;
  sub_22045E8CC();
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298E98 = result;
  return result;
}

uint64_t static Settings.Radars.radar50783266.getter()
{
  if (qword_281298E90 != -1)
  {
    swift_once();
  }
}

id sub_2207D5794()
{
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemFontOfSize_];
  v6 = sub_22044D56C(0, &qword_28127E570);
  v7 = MEMORY[0x277D740C0];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v0[5];
  v10 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v11 = *(v10 + 16);
  v12 = *(v11 + 280);
  v13 = v8;
  v14 = v12(v9, v11);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v14;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v17 = sub_22089125C();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t sub_2207D59A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2207D5B2C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = 56;
  if (a1)
  {
    v3 = 96;
  }

  return sub_22046DA2C(*v2 + v3, a2);
}

uint64_t sub_2207D5B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v4);
  return sub_220823838(v4, v5, a1);
}

uint64_t sub_2207D5BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_2207D5D1C(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

void *sub_2207D5D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1, a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11);
  v13 = swift_allocObject();
  (*(v6 + 16))(v9, v12, a3);
  v14 = sub_2207D5E68(v9, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

void *sub_2207D5E68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[3] = a3;
  v20[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_22046DA2C(v20, (a2 + 2));
  sub_22046DA2C(v20, &v26);
  if (qword_27CF55BC0 != -1)
  {
    swift_once();
  }

  v23 = xmmword_27CF6D190;
  v24 = unk_27CF6D1A0;
  v25 = xmmword_27CF6D1B0;
  v21 = xmmword_27CF6D170;
  v22 = unk_27CF6D180;
  v8 = type metadata accessor for WelcomeViewStyler();
  v9 = swift_allocObject();
  sub_220457328(&v26, v9 + 16);
  v10 = v21;
  *(v9 + 72) = v22;
  v11 = v24;
  *(v9 + 88) = v23;
  *(v9 + 104) = v11;
  *(v9 + 120) = v25;
  *(v9 + 56) = v10;
  a2[10] = v8;
  a2[11] = &off_283422E30;
  a2[7] = v9;
  sub_22046DA2C(v20, v16);
  sub_2207D3838(&v21, &v26);
  if (qword_27CF55BC8 != -1)
  {
    swift_once();
  }

  v28 = xmmword_27CF6D1E0;
  v29 = unk_27CF6D1F0;
  v30 = xmmword_27CF6D200;
  v26 = xmmword_27CF6D1C0;
  v27 = *algn_27CF6D1D0;
  v12 = swift_allocObject();
  sub_220457328(v16, v12 + 16);
  v13 = v26;
  *(v12 + 72) = v27;
  v14 = v29;
  *(v12 + 88) = v28;
  *(v12 + 104) = v14;
  *(v12 + 120) = v30;
  *(v12 + 56) = v13;
  v18 = v8;
  v19 = &off_283422E30;
  *&v17 = v12;
  sub_2207D3838(&v26, v16);
  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_220457328(&v17, (a2 + 12));
  return a2;
}

uint64_t type metadata accessor for StockFeedGroup()
{
  result = qword_281293E90;
  if (!qword_281293E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2207D61E0()
{
  result = qword_281290638;
  if (!qword_281290638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281290638);
  }

  return result;
}

unint64_t sub_2207D6238()
{
  result = qword_281290658[0];
  if (!qword_281290658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281290658);
  }

  return result;
}

unint64_t sub_2207D6290()
{
  result = qword_281290650;
  if (!qword_281290650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281290650);
  }

  return result;
}

uint64_t sub_2207D62E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NewsPlacardStockFeedGroup();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v2, v15, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8140(v15, v11, type metadata accessor for NewsStockFeedGroup);
      sub_220459628();
      v18 = *(v17 + 64);
      v19 = v11[1];
      *a1 = *v11;
      *(a1 + 8) = v19;
      *(a1 + 16) = *(v11 + *(v8 + 28));
      sub_2207D81A8(v11 + *(v8 + 32), a1 + v18, sub_2204595F4);

      sub_2207D8210(v11, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      v20 = sub_22088F23C();
      (*(*(v20 - 8) + 32))(a1, v15, v20);
    }

    type metadata accessor for StockFeedSectionDescriptor();
  }

  else
  {
    sub_2207D8140(v15, v7, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2207D8210(v7, type metadata accessor for NewsPlacardStockFeedGroup);
    type metadata accessor for StockFeedSectionDescriptor();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2207D65A4()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsPlacardStockFeedGroup();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v18, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8140(v18, v14, type metadata accessor for NewsStockFeedGroup);
      v20 = *v14;

      sub_2207D8210(v14, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v18, v2);
      v20 = sub_22088F1EC();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_2207D8140(v18, v10, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2205DF654();
    v20 = sub_22088F46C();
    sub_2207D8210(v10, type metadata accessor for NewsPlacardStockFeedGroup);
  }

  return v20;
}

uint64_t sub_2207D6854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_22088F23C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088FB9C();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v2, v23, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v27 = type metadata accessor for StockFeedGroup;
    v28 = v23;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2207D8140(v23, v19, type metadata accessor for NewsStockFeedGroup);
    sub_2207D81A8(&v19[*(v16 + 32)], v11, sub_2204595F4);
    v25 = sub_22088F39C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v11, 1, v25) == 1)
    {
      sub_2207D8210(v19, type metadata accessor for NewsStockFeedGroup);
      v27 = sub_2204595F4;
      v28 = v11;
LABEL_6:
      sub_2207D8210(v28, v27);
      return (*(v31 + 104))(v33, *MEMORY[0x277D32628], v32);
    }

    sub_22088F2FC();
    sub_2207D8210(v19, type metadata accessor for NewsStockFeedGroup);
    (*(v26 + 8))(v11, v25);
    return (*(v31 + 32))(v33, v15, v32);
  }

  else
  {
    (*(v4 + 32))(v7, v23, v3);
    sub_22088F1FC();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2207D6C5C()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v18, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v22 = type metadata accessor for StockFeedGroup;
    v23 = v18;
    return sub_2207D8210(v23, v22);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2207D8140(v18, v14, type metadata accessor for NewsStockFeedGroup);
    sub_2207D81A8(&v14[*(v11 + 32)], v10, sub_2204595F4);
    v20 = sub_22088F39C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v10, 1, v20) == 1)
    {
      sub_2207D8210(v14, type metadata accessor for NewsStockFeedGroup);
      v22 = sub_2204595F4;
      v23 = v10;
      return sub_2207D8210(v23, v22);
    }

    sub_22088F30C();
    sub_2207D8210(v14, type metadata accessor for NewsStockFeedGroup);
    return (*(v21 + 8))(v10, v20);
  }

  else
  {
    (*(v3 + 32))(v6, v18, v2);
    sub_22088F20C();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_2207D6FB8()
{
  v1 = v0;
  v2 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v9, type metadata accessor for StockFeedGroup);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2207D8140(v9, v5, type metadata accessor for NewsStockFeedGroup);
    if (v5[*(v2 + 28)])
    {
      v10 = MEMORY[0x277D84F90];
    }

    else
    {
      v10 = sub_2208916FC();
    }

    sub_2207D8210(v5, type metadata accessor for NewsStockFeedGroup);
    return v10;
  }

  else
  {
    sub_2207D8210(v9, type metadata accessor for StockFeedGroup);
    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_2207D7148()
{
  v1 = v0;
  v2 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v9, type metadata accessor for StockFeedGroup);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2207D8140(v9, v5, type metadata accessor for NewsStockFeedGroup);
    if (v5[*(v2 + 28)])
    {
      v10 = sub_2205CEB84(MEMORY[0x277D84F90]);
    }

    else
    {
      v10 = sub_22089170C();
    }

    v11 = v10;
    v12 = type metadata accessor for NewsStockFeedGroup;
    v13 = v5;
  }

  else
  {
    v11 = sub_2205CEB84(MEMORY[0x277D84F90]);
    v12 = type metadata accessor for StockFeedGroup;
    v13 = v9;
  }

  sub_2207D8210(v13, v12);
  return v11;
}

uint64_t sub_2207D72E0()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsPlacardStockFeedGroup();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v18, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8140(v18, v14, type metadata accessor for NewsStockFeedGroup);
      v20 = sub_22088681C();
      sub_2207D8210(v14, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v18, v2);
      v20 = sub_22088F1CC();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_2207D8140(v18, v10, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2205DF654();
    v20 = sub_22088F46C();
    sub_2207D8210(v10, type metadata accessor for NewsPlacardStockFeedGroup);
  }

  return v20;
}

double sub_2207D75A8()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewsPlacardStockFeedGroup();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v21, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8140(v21, v13, type metadata accessor for NewsStockFeedGroup);
      sub_2207D81A8(&v13[*(v10 + 32)], v9, sub_2204595F4);
      v23 = sub_22088F39C();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v9, 1, v23) == 1)
      {
        sub_2207D8210(v13, type metadata accessor for NewsStockFeedGroup);
        sub_2207D8210(v9, sub_2204595F4);
        return 0.0;
      }

      else
      {
        sub_22088F31C();
        v25 = v29;
        sub_2207D8210(v13, type metadata accessor for NewsStockFeedGroup);
        (*(v24 + 8))(v9, v23);
      }
    }

    else
    {
      v27 = v32;
      (*(v32 + 32))(v5, v21, v2);
      sub_2207D8270(&qword_27CF59DD8, MEMORY[0x277D31BA8]);
      sub_2208901DC();
      v25 = v28;
      (*(v27 + 8))(v5, v2);
    }
  }

  else
  {
    sub_2207D8140(v21, v17, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2207D8270(&qword_27CF57760, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_2208901DC();
    v25 = v26;
    sub_2207D8210(v17, type metadata accessor for NewsPlacardStockFeedGroup);
  }

  return v25;
}

uint64_t sub_2207D7A00@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = v2;
  MEMORY[0x28223BE20](v3, a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v7, v6, type metadata accessor for StockFeedGroup);
  v8 = 0x20001u >> (8 * swift_getEnumCaseMultiPayload());
  result = sub_2207D8210(v6, type metadata accessor for StockFeedGroup);
  *a2 = v8;
  return result;
}

uint64_t sub_2207D7AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D320E0];
  v3 = sub_22088F6BC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2207D7BA8(uint64_t a1)
{
  v2 = sub_2207D8270(&qword_281293EC0, type metadata accessor for StockFeedGroup);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_2207D7C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2207D8270(&qword_281293ED0, type metadata accessor for StockFeedGroup);

  return MEMORY[0x282191948](a1, a2, a3, v6);
}

uint64_t sub_2207D7CAC(uint64_t a1)
{
  v2 = sub_2207D8270(&qword_281293ED0, type metadata accessor for StockFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2207D7D18()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207D81A8(v1, v10, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2207D8210(v10, type metadata accessor for StockFeedGroup);
      return 1937204558;
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v13 = sub_22088F22C();
      (*(v3 + 8))(v6, v2);
      return v13;
    }
  }

  else
  {
    sub_2207D8210(v10, type metadata accessor for StockFeedGroup);
    return 0x616C50207377654ELL;
  }
}

uint64_t sub_2207D7EF8()
{
  sub_2207D8270(&qword_281293EB0, type metadata accessor for StockFeedGroup);

  return sub_22088882C();
}

uint64_t sub_2207D803C()
{
  v0 = sub_22088519C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088518C();
  sub_22088517C();
  (*(v1 + 8))(v4, v0);
  sub_22088F1DC();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2207D8140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207D81A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207D8210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207D8270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2207D82B8()
{
  result = type metadata accessor for NewsPlacardStockFeedGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NewsStockFeedGroup();
    if (v2 <= 0x3F)
    {
      result = sub_22088F23C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2207D83D4()
{
  result = qword_28128FE60;
  if (!qword_28128FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FE60);
  }

  return result;
}

unint64_t sub_2207D842C()
{
  result = qword_28128FE88;
  if (!qword_28128FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FE88);
  }

  return result;
}

unint64_t sub_2207D8484()
{
  result = qword_28128FE80;
  if (!qword_28128FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FE80);
  }

  return result;
}

uint64_t sub_2207D84DC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_22088F23C();
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088FB9C();
  v31 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v33, v24, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v24, v8, type metadata accessor for CuratedForYouFeedGroup);
      sub_22088F2FC();
      return sub_22052B278(v8, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      v30 = v32;
      (*(v32 + 32))(v4, v24, v1);
      sub_22088F1FC();
      return (*(v30 + 8))(v4, v1);
    }
  }

  else
  {
    v27 = v31;
    sub_220523140(v24, v20, type metadata accessor for StockForYouFeedGroup);
    sub_22052AB18(&v20[*(v17 + 28)], v12, sub_2204595F4);
    v28 = sub_22088F39C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v12, 1, v28) == 1)
    {
      sub_22052B278(v20, type metadata accessor for StockForYouFeedGroup);
      sub_22052B278(v12, sub_2204595F4);
      return (*(v27 + 104))(v34, *MEMORY[0x277D32628], v13);
    }

    else
    {
      sub_22088F2FC();
      sub_22052B278(v20, type metadata accessor for StockForYouFeedGroup);
      (*(v29 + 8))(v12, v28);
      return (*(v27 + 32))(v34, v16, v13);
    }
  }
}

double sub_2207D8960()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v22, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v22, v10, type metadata accessor for CuratedForYouFeedGroup);
      sub_22088F30C();
      v25 = v24;
      sub_22052B278(v10, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v22, v2);
      sub_22088F20C();
      v25 = v28;
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_220523140(v22, v18, type metadata accessor for StockForYouFeedGroup);
    sub_22052AB18(&v18[*(v15 + 28)], v14, sub_2204595F4);
    v26 = sub_22088F39C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      sub_22052B278(v18, type metadata accessor for StockForYouFeedGroup);
      sub_22052B278(v14, sub_2204595F4);
      return 1.0;
    }

    else
    {
      sub_22088F30C();
      v25 = v29;
      sub_22052B278(v18, type metadata accessor for StockForYouFeedGroup);
      (*(v27 + 8))(v14, v26);
    }
  }

  return v25;
}

unint64_t sub_2207D8D30()
{
  v1 = v0;
  v2 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v13, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v13, v5, type metadata accessor for CuratedForYouFeedGroup);
      v15 = sub_22088F34C();
      v16 = type metadata accessor for CuratedForYouFeedGroup;
      v17 = v5;
    }

    else
    {
      v15 = sub_2205CEB84(MEMORY[0x277D84F90]);
      v16 = type metadata accessor for ForYouFeedGroup;
      v17 = v13;
    }
  }

  else
  {
    sub_220523140(v13, v9, type metadata accessor for StockForYouFeedGroup);
    if (v9[*(v6 + 24)])
    {
      v18 = sub_2205CEB84(MEMORY[0x277D84F90]);
    }

    else
    {
      v18 = sub_22089170C();
    }

    v15 = v18;
    v16 = type metadata accessor for StockForYouFeedGroup;
    v17 = v9;
  }

  sub_22052B278(v17, v16);
  return v15;
}

uint64_t sub_2207D8F54()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v7, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v11, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v14, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v14, v10, type metadata accessor for CuratedForYouFeedGroup);
      v18[0] = 0x2064657461727543;
      v18[1] = 0xE900000000000028;
      MEMORY[0x223D89680](*&v10[*(v7 + 20)], *&v10[*(v7 + 20) + 8]);
      MEMORY[0x223D89680](41, 0xE100000000000000);
      v16 = v18[0];
      sub_22052B278(v10, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v14, v2);
      v16 = sub_22088F22C();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_22052B278(v14, type metadata accessor for ForYouFeedGroup);
    return 0x6B636F7453;
  }

  return v16;
}

uint64_t sub_2207D91D8()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v18, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v18, v10, type metadata accessor for CuratedForYouFeedGroup);
      v20 = sub_22088F2DC();
      sub_22052B278(v10, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v18, v2);
      v20 = sub_22088F1CC();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_220523140(v18, v14, type metadata accessor for StockForYouFeedGroup);
    v20 = sub_22088681C();
    sub_22052B278(v14, type metadata accessor for StockForYouFeedGroup);
  }

  return v20;
}

double sub_2207D9484()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052AB18(v1, v22, type metadata accessor for ForYouFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_220523140(v22, v10, type metadata accessor for CuratedForYouFeedGroup);
      sub_22088F31C();
      v25 = v24;
      sub_22052B278(v10, type metadata accessor for CuratedForYouFeedGroup);
    }

    else
    {
      (*(v3 + 32))(v6, v22, v2);
      sub_22052A350(&qword_27CF59DD8, MEMORY[0x277D31BA8]);
      sub_2208901DC();
      v25 = v28;
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_220523140(v22, v18, type metadata accessor for StockForYouFeedGroup);
    sub_22052AB18(&v18[*(v15 + 28)], v14, sub_2204595F4);
    v26 = sub_22088F39C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      sub_22052B278(v18, type metadata accessor for StockForYouFeedGroup);
      sub_22052B278(v14, sub_2204595F4);
      return 0.0;
    }

    else
    {
      sub_22088F31C();
      v25 = v29;
      sub_22052B278(v18, type metadata accessor for StockForYouFeedGroup);
      (*(v27 + 8))(v14, v26);
    }
  }

  return v25;
}

uint64_t sub_2207D98E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22052A350(qword_281293450, type metadata accessor for ForYouFeedGroup);

  return MEMORY[0x282191948](a1, a2, a3, v6);
}

uint64_t sub_2207D996C(uint64_t a1)
{
  v2 = sub_22052A350(qword_281293450, type metadata accessor for ForYouFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2207D99E0()
{
  sub_22052A350(&unk_281293428, type metadata accessor for ForYouFeedGroup);

  return sub_22088882C();
}

uint64_t sub_2207D9B24()
{
  v0 = sub_22088519C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088518C();
  sub_22088517C();
  (*(v1 + 8))(v4, v0);
  sub_22088F1DC();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2207D9C28()
{
  result = type metadata accessor for StockForYouFeedGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CuratedForYouFeedGroup();
    if (v2 <= 0x3F)
    {
      result = sub_22088F23C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

double sub_2207D9CB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22088C31C();
  v5 = v4;
  sub_22088C31C();
  v7 = v6;
  sub_22088C20C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_22088C1FC();
  v17 = v16;
  v18 = sub_22088C2AC();
  v19 = sub_22088C32C();
  (*(*(v19 - 8) + 8))(a1, v19);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  __asm { FMOV            V0.2D, #5.0 }

  *(a2 + 64) = _Q0;
  *(a2 + 80) = xmmword_2208B6670;
  result = 0.0;
  *(a2 + 96) = xmmword_2208B6680;
  *(a2 + 112) = 0;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2207D9DC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207D9E10(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

void sub_2207D9E7C(void *a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  v5 = *(v2 + 56);
  if (!v5)
  {
    v9 = a2;
LABEL_8:
    v10 = [a2 bottomEdgeEffect];
    v11 = [objc_opt_self() hardStyle];
    [v10 setStyle_];

    if (*(v2 + 56))
    {
      [a1 removeInteraction_];
      v12 = *(v2 + 56);
      *(v2 + 56) = 0;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:a2 edge:4 style:0];
    [a1 addInteraction_];

    v8 = *(v2 + 56);
    *(v2 + 56) = v13;
    goto LABEL_11;
  }

  v14 = a2;
  v6 = [v5 _scrollView];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;

  if (v7 != v14)
  {
    goto LABEL_8;
  }

  v8 = v14;
LABEL_11:
}

unint64_t sub_2207DA028(uint64_t a1)
{
  result = sub_2207DA050();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2207DA050()
{
  result = qword_28128BD80;
  if (!qword_28128BD80)
  {
    type metadata accessor for CardToolbarViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128BD80);
  }

  return result;
}

id sub_2207DA0A4()
{
  ObjectType = swift_getObjectType();
  sub_22046DA2C(v0 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_priceDataManager, v5);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_22044DD10(&qword_28128DFE8, type metadata accessor for ForYouFeedDataManager);
  sub_22088631C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_22046DA2C(v0 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager, v5);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_22044DD10(&qword_28128DFE0, type metadata accessor for ForYouFeedDataManager);
  v2 = v0;
  sub_220885FDC();

  __swift_destroy_boxed_opaque_existential_1(v5);
  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2207DA304()
{
  sub_2207DBE54();
  v21 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DBF24();
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DBFB8();
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_priceDataManager), *(v0 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_priceDataManager + 24));
  sub_22044DD10(&qword_28128DFE8, type metadata accessor for ForYouFeedDataManager);
  sub_22088630C();
  v16 = (v0 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_22044DD10(&qword_28128DFE0, type metadata accessor for ForYouFeedDataManager);
  sub_220885FAC();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v26 = sub_220885F4C();
  swift_getKeyPath();
  sub_22046A99C();
  sub_22044DD10(&qword_281296DB0, sub_22046A99C);
  sub_22088EB9C();

  sub_22044DD10(&qword_281296E50, sub_2207DBE54);
  sub_2207DC04C();
  v17 = v21;
  sub_22088EBCC();
  (*(v2 + 8))(v5, v17);
  sub_22044DD10(&qword_281296E30, sub_2207DBF24);
  v18 = v22;
  sub_22088EBBC();
  (*(v23 + 8))(v10, v18);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22044DD10(&qword_281296DE0, sub_2207DBFB8);
  v19 = v24;
  sub_22088EBDC();

  (*(v25 + 8))(v15, v19);
  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();
}

void sub_2207DA7C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      swift_getObjectType();
      v4 = *(v3 + 24);
      v5 = v1;
      v4();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_2207DA890()
{
  swift_getObjectType();
  v0 = CACurrentMediaTime();
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_220891AFC();
  v1 = sub_22088A7EC();
  MEMORY[0x28223BE20](v1, v2);
  type metadata accessor for ForYouFeedServiceConfig();
  sub_220888FBC();
  sub_2207DBD58();
  sub_220888E5C();

  v3 = sub_220888D9C();
  sub_220888E4C();

  *(swift_allocObject() + 16) = v0;
  v4 = sub_220888D9C();
  sub_220888E5C();

  *(swift_allocObject() + 16) = v0;
  v5 = sub_220888D9C();
  v6 = sub_220888E9C();

  return v6;
}

uint64_t sub_2207DAAF4(uint64_t a1, uint64_t a2)
{
  sub_2207DBCC4();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService), *(a2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService + 24));
  type metadata accessor for ForYouFeedServiceConfig();
  sub_22044DD10(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
  sub_22089012C();
  v9 = off_283415E28;
  type metadata accessor for ForYouFeedServiceProxy();
  v10 = v9();
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_2207DAC94(uint64_t *a1, uint64_t a2)
{
  sub_22044DA5C(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = *a1;
  sub_22088515C();
  v9 = sub_22088516C();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_lastRefreshDate;
  swift_beginAccess();
  sub_22062162C(v7, a2 + v10);
  swift_endAccess();
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220899920;
  sub_22089187C();
  v12 = MEMORY[0x277D83A80];
  *(v11 + 56) = MEMORY[0x277D839F8];
  *(v11 + 64) = v12;
  *(v11 + 32) = v13;
  v19 = v8;
  sub_2207DBD58();
  sub_22044DD10(&qword_281296AA8, sub_2207DBD58);
  v14 = sub_22088882C();
  v16 = v15;
  *(v11 + 96) = MEMORY[0x277D837D0];
  *(v11 + 104) = sub_22048D860();
  *(v11 + 72) = v14;
  *(v11 + 80) = v16;
  sub_220891AFC();
  sub_22088A7EC();

  v19 = v8;
  sub_22052DCC8(0, &qword_281298650, &type metadata for ForYouFeedRefreshData, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_220888ECC();
}

uint64_t sub_2207DAF44()
{
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_220891ADC();
  sub_22048D7F8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220899920;
  sub_22089187C();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  *(v0 + 96) = MEMORY[0x277D837D0];
  *(v0 + 104) = sub_22048D860();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_22088A7EC();
}

uint64_t sub_2207DB09C(uint64_t a1, uint64_t a2)
{
  sub_2207DBCC4();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *v11 = v12;
    (*(v6 + 104))(v11, *MEMORY[0x277D33090], v5);
    sub_22044DA5C(0, &qword_281298670, sub_2207DBCC4, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_220888ECC();
  }

  else
  {
    MEMORY[0x28223BE20](v8, v9);
    *(&v16 - 2) = a1;
    type metadata accessor for ForYouFeedServiceConfig();
    sub_220888FBC();
    v14 = sub_220888D9C();
    v15 = sub_220888E4C();

    return v15;
  }
}

uint64_t sub_2207DB28C()
{
  type metadata accessor for ForYouFeedServiceConfig();
  sub_22044DD10(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
  return sub_22089012C();
}

uint64_t sub_2207DB314(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService), *(a2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_feedService + 24));
  v2 = off_283415E28;
  type metadata accessor for ForYouFeedServiceProxy();
  return v2();
}

uint64_t sub_2207DB398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22089B140;
  sub_22089187C();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  v8 = MEMORY[0x277D837D0];
  *(v5 + 96) = MEMORY[0x277D837D0];
  v9 = sub_22048D860();
  *(v5 + 104) = v9;
  *(v5 + 72) = a2;
  *(v5 + 80) = a3;
  sub_2204446D4(0, &qword_28127DE30);

  sub_22089264C();
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0xE000000000000000;
  sub_220891AFC();
  sub_22088A7EC();
}

uint64_t sub_2207DB514()
{
  v0 = sub_220885ACC();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044DA5C(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v31 - v6;
  v8 = sub_22088516C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - v15;
  v17 = sub_22088FB1C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298EA8 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D325C0])
  {
    v23 = OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_lastRefreshDate;
    v24 = v33;
    swift_beginAccess();
    sub_2207C4220(v24 + v23, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_22047EC24(v7, &qword_281299480, MEMORY[0x277CC9578]);
      return 0;
    }

    (*(v9 + 32))(v16, v7, v8);
    sub_22088515C();
    sub_22088507C();
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v12, v8);
    __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_appConfigurationManager), *(v24 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_appConfigurationManager + 24));
    sub_22088641C();
    sub_220885A4C();
    v30 = v29;
    (*(v31 + 8))(v3, v32);
    v28(v16, v8);
    return v30 < v27;
  }

  else
  {
    if (v22 == *MEMORY[0x277D325C8])
    {
      return 0;
    }

    if (v22 == *MEMORY[0x277D325B8])
    {
      return 1;
    }

    else
    {
      result = sub_2208928AC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2207DB990(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, &off_283423328, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2207DBA30(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2207DBAF0()
{
  v1 = v0;
  v2 = MEMORY[0x277D694F8];
  sub_22044DA5C(0, &qword_2812992C8, MEMORY[0x277D694F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  sub_22088577C();
  v7 = sub_220885DFC();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  result = sub_22047EC24(v6, &qword_2812992C8, v2);
  if (v8 != 1)
  {
    v10 = v1 + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 24))(v1, &off_283423328, ObjectType, v11);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2207DBC58(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821CEF98](a1, ObjectType);
}

void sub_2207DBCC4()
{
  if (!qword_281296918)
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_22044DD10(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v0 = sub_22089013C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296918);
    }
  }
}

void sub_2207DBD58()
{
  if (!qword_281296A98)
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_22044DD10(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v0 = sub_22088FAFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281296A98);
    }
  }
}

uint64_t sub_2207DBDEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *a1;
  *a2 = *(v2 + 16);
  a2[1] = v3;
  a2[2] = v4;
}

void sub_2207DBE54()
{
  if (!qword_281296E48)
  {
    sub_22046A99C();
    sub_22052DCC8(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_22044DD10(&qword_281296DB0, sub_22046A99C);
    v0 = sub_22088EB2C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296E48);
    }
  }
}

void sub_2207DBF24()
{
  if (!qword_281296E28)
  {
    sub_2207DBE54();
    sub_22044DD10(&qword_281296E50, sub_2207DBE54);
    v0 = sub_22088EB3C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296E28);
    }
  }
}

void sub_2207DBFB8()
{
  if (!qword_281296DD8)
  {
    sub_2207DBF24();
    sub_22044DD10(&qword_281296E30, sub_2207DBF24);
    v0 = sub_22088EB4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296DD8);
    }
  }
}

unint64_t sub_2207DC04C()
{
  result = qword_28127E9A8;
  if (!qword_28127E9A8)
  {
    sub_22052DCC8(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E9A8);
  }

  return result;
}

NSAttributedString __swiftcall NSAttributedString.appendingAccessibilityDWCPriceChangeArrow(pointingUpward:withFont:withColor:)(Swift::Bool pointingUpward, UIFont withFont, UIColor withColor)
{
  ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();
  v6 = v18;
  if (ShouldDifferentiateWithoutColor)
  {
    [v18 mutableCopy];
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2207DC400();
    if (swift_dynamicCast())
    {
      v7 = [objc_opt_self() configurationWithFont:withFont.super.isa scale:1];
      v8 = sub_22089132C();

      v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

      if (v9)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
        v11 = [v9 imageWithTintColor:withColor.super.isa renderingMode:1];
        [v10 setImage_];

        v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v13 = sub_22089132C();
        v14 = [v12 initWithString_];

        [v19 appendAttributedString_];
        v15 = [objc_opt_self() attributedStringWithAttachment_];
        [v19 appendAttributedString_];

        return v19;
      }

      else
      {
        v17 = v18;

        return v17;
      }
    }

    v6 = v18;
  }

  return v6;
}

unint64_t sub_2207DC400()
{
  result = qword_27CF59E80;
  if (!qword_27CF59E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF59E80);
  }

  return result;
}

uint64_t sub_2207DC44C(uint64_t a1, char a2, char a3)
{
  v7 = sub_2208852DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    return 0;
  }

  v12 = *(v3 + 16);
  sub_22088528C();
  v13 = sub_22088523C();
  (*(v8 + 8))(v11, v7);
  v14 = [v12 formattedCount:a1 withLocale:v13 longform:a2 & 1 compactDisplay:a3 & 1];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_22089136C();

  return v15;
}

uint64_t sub_2207DC59C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2207DC5F8()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2207DC6E4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2207DC7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204480D0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2207DC85C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2207DCA20()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

id sub_2207DCBE4@<X0>(void *a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v7 = sub_22089132C();
    v8 = [objc_opt_self() systemImageNamed_];

    if (v8)
    {
      v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.305882353 green:0.674509804 blue:0.97254902 alpha:1.0];
      *a1 = v8;
      a1[1] = v9;
      v10 = *MEMORY[0x277D2FB18];
      v11 = sub_22088762C();
      v18 = *(v11 - 8);
      v18[13](a1, v10, v11);
      v12 = v18[7];
      v13 = a1;
      v14 = 0;
      v15 = v11;
    }

    else
    {
      v16 = sub_22088762C();
      v12 = *(*(v16 - 8) + 56);
      v15 = v16;
      v13 = a1;
      v14 = 1;
    }

    return v12(v13, v14, 1, v15);
  }

  else
  {
    if (qword_27CF55858 != -1)
    {
      swift_once();
    }

    v17 = qword_27CF6CE90;
    *a1 = qword_27CF6CE90;
    a1[1] = 0;
    v3 = *MEMORY[0x277D2FB18];
    v4 = sub_22088762C();
    v5 = *(v4 - 8);
    (*(v5 + 104))(a1, v3, v4);
    (*(v5 + 56))(a1, 0, 1, v4);

    return v17;
  }
}

uint64_t StocksActivity.identifier.getter()
{
  v1 = type metadata accessor for PreBuyFlowRouteModel();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v95 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204480D0(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v93 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v96 = &v88 - v9;
  v10 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v94 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220884E9C();
  v90 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v92 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v89 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088685C();
  v97 = *(v23 - 8);
  v98 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v91 = &v88 - v29;
  v30 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v88 - v36;
  v38 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v0, v41, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = 0x46656469766F7270;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v50 = 0xD00000000000001ELL;
      StocksActivity.type.getter(&v100);
      if (v100 > 2u)
      {
        if (v100 == 3)
        {
          v50 = 0xD000000000000020;
        }

        else if (v100 == 4)
        {
          v50 = 0xD00000000000001BLL;
        }

        else
        {
          v50 = 0xD000000000000017;
        }
      }

      else if (!v100)
      {
        v50 = 0xD00000000000001DLL;
      }

      sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270]);
      v84 = *(v83 + 48);
      v85 = sub_22088CC6C();
      (*(*(v85 - 8) + 8))(&v41[v84], v85);
      sub_2207DF7F4(v41, type metadata accessor for ForYouSectionDescriptor);
      return v50;
    case 2:
      sub_2207DF78C(v41, v37, type metadata accessor for StocksActivity.StockFeed);
      v100 = 0;
      v101 = 0xE000000000000000;
      StocksActivity.type.getter(&v99);
      v51 = 0xD00000000000001DLL;
      v52 = "ight";
      v53 = "com.apple.stocks.v2.SymbolFeed";
      v54 = 0xD000000000000020;
      v55 = ".v2.SymbolSearch";
      v56 = 0xD00000000000001BLL;
      if (v99 != 4)
      {
        v56 = 0xD000000000000017;
        v55 = "com.apple.stocks.v2.Article";
      }

      if (v99 != 3)
      {
        v54 = v56;
        v53 = v55;
      }

      v57 = "com.apple.stocks.v2.StockList";
      if (v99 != 1)
      {
        v57 = "com.apple.stocks.v2.ForYouFeed";
      }

      if (v99)
      {
        v51 = 0xD00000000000001ELL;
        v52 = v57;
      }

      if (v99 <= 2u)
      {
        v58 = v51;
      }

      else
      {
        v58 = v54;
      }

      if (v99 <= 2u)
      {
        v59 = v52;
      }

      else
      {
        v59 = v53;
      }

      MEMORY[0x223D89680](v58, v59 | 0x8000000000000000);

      MEMORY[0x223D89680](46, 0xE100000000000000);
      sub_2207DF724(v37, v33, type metadata accessor for StocksActivity.StockFeed);
      v60 = swift_getEnumCaseMultiPayload();
      v61 = v97;
      v62 = v91;
      if (v60 == 1)
      {
        v63 = v89;
        sub_2207DF78C(v33, v89, type metadata accessor for StocksActivity.StockFeed.Series);
        v64 = v98;
        (*(v61 + 16))(v62, v63, v98);
        sub_2207DF7F4(v63, type metadata accessor for StocksActivity.StockFeed.Series);
      }

      else
      {
        v64 = v98;
        (*(v97 + 32))(v91, v33, v98);
      }

      v79 = sub_22088681C();
      v81 = v80;
      (*(v61 + 8))(v62, v64);
      MEMORY[0x223D89680](v79, v81);

      v78 = v100;
      v82 = type metadata accessor for StocksActivity.StockFeed;
      goto LABEL_75;
    case 3:
      sub_2207DF7F4(v41, type metadata accessor for StocksActivity);
      StocksActivity.type.getter(&v100);
      v44 = v100;
      if (v100 > 2u)
      {
        goto LABEL_15;
      }

      if (v100)
      {
        goto LABEL_8;
      }

      goto LABEL_4;
    case 4:
      v37 = v92;
      sub_2207DF78C(v41, v92, type metadata accessor for StocksActivity.Article);
      v100 = 0;
      v101 = 0xE000000000000000;
      StocksActivity.type.getter(&v99);
      if (v99 > 2u)
      {
        if (v99 == 3)
        {
          v67 = "com.apple.stocks.v2.SymbolFeed";
          v66 = 0xD000000000000020;
        }

        else
        {
          if (v99 == 4)
          {
            v66 = 0xD00000000000001BLL;
          }

          else
          {
            v66 = 0xD000000000000017;
          }

          if (v99 == 4)
          {
            v67 = ".v2.SymbolSearch";
          }

          else
          {
            v67 = "com.apple.stocks.v2.Article";
          }
        }
      }

      else
      {
        v65 = "com.apple.stocks.v2.StockList";
        if (v99 != 1)
        {
          v65 = "com.apple.stocks.v2.ForYouFeed";
        }

        if (v99)
        {
          v66 = 0xD00000000000001ELL;
        }

        else
        {
          v66 = 0xD00000000000001DLL;
        }

        if (v99)
        {
          v67 = v65;
        }

        else
        {
          v67 = "ight";
        }
      }

      MEMORY[0x223D89680](v66, v67 | 0x8000000000000000);

      MEMORY[0x223D89680](46, 0xE100000000000000);
      v86 = sub_2207DFCBC(MEMORY[0x277D2FB30], &selRef_identifier);
      MEMORY[0x223D89680](v86);

      v78 = v100;
      v82 = type metadata accessor for StocksActivity.Article;
      goto LABEL_75;
    case 5:
      v73 = v90;
      (*(v90 + 32))(v16, v41, v13);
      v74 = sub_220884E0C();
      (*(v73 + 8))(v16, v13);
      return v74;
    case 6:
      sub_2207DF7F4(v41, type metadata accessor for StocksActivity);
      return 0x7472656C61;
    case 7:
      v37 = v94;
      sub_2207DF78C(v41, v94, type metadata accessor for CampaignRouteModel);
      v100 = 0;
      v101 = 0xE000000000000000;
      sub_22089254C();

      v100 = 0xD000000000000014;
      v101 = 0x80000002208D68C0;
      if (*(v37 + 1))
      {
        v75 = *v37;
        v76 = *(v37 + 1);
      }

      else
      {
        v76 = 0x80000002208C2550;
        v75 = 0xD000000000000012;
      }

      MEMORY[0x223D89680](v75, v76);

      v78 = v100;
      v82 = type metadata accessor for CampaignRouteModel;
      goto LABEL_75;
    case 8:
      sub_2207DF7F4(v41, type metadata accessor for StocksActivity);
      return 7367028;
    case 9:
      sub_2207DF7F4(v41, type metadata accessor for StocksActivity);
      return 0x696472616F626E6FLL;
    case 10:
      sub_2207DF7F4(v41, type metadata accessor for StocksActivity);
      return 0xD000000000000011;
    case 11:
      sub_220447880();

      v45 = v96;
      sub_2207DF854(v41, v96, &qword_281299060, MEMORY[0x277D69810]);
      v46 = v93;
      sub_220576A98(v45, v93);
      v48 = v97;
      v47 = v98;
      if ((*(v97 + 48))(v46, 1, v98) == 1)
      {
        v49 = MEMORY[0x277D69810];
        sub_2207DC7EC(v46, &qword_281299060, MEMORY[0x277D69810]);
        sub_2207DC7EC(v45, &qword_281299060, v49);
        v43 = 0xD000000000000010;
      }

      else
      {
        (*(v48 + 32))(v26, v46, v47);
        v100 = 0;
        v101 = 0xE000000000000000;
        sub_22089254C();

        v100 = 0xD000000000000011;
        v101 = 0x80000002208D6880;
        v77 = sub_22088677C();
        MEMORY[0x223D89680](v77);

        v78 = v100;
        (*(v48 + 8))(v26, v47);
        sub_2207DC7EC(v45, &qword_281299060, MEMORY[0x277D69810]);
LABEL_76:
        v43 = v78;
      }

      break;
    case 12:
      v37 = v95;
      sub_2207DF78C(v41, v95, type metadata accessor for PreBuyFlowRouteModel);
      v100 = 0x6C46797542657270;
      v101 = 0xEB000000002D776FLL;
      v68 = [*v37 itemID];
      if (v68)
      {
        v69 = v68;
        v70 = sub_22089136C();
        v72 = v71;
      }

      else
      {
        v72 = 0x80000002208D6860;
        v70 = 0xD000000000000014;
      }

      MEMORY[0x223D89680](v70, v72);

      v78 = v100;
      v82 = type metadata accessor for PreBuyFlowRouteModel;
LABEL_75:
      sub_2207DF7F4(v37, v82);
      goto LABEL_76;
    case 13:
      return v43;
    default:
      sub_2207DF7F4(v41, type metadata accessor for StocksActivity);
      StocksActivity.type.getter(&v100);
      v44 = v100;
      if (v100 > 2u)
      {
LABEL_15:
        if (v44 == 3)
        {
          v43 = 0xD000000000000020;
        }

        else if (v44 == 4)
        {
          v43 = 0xD00000000000001BLL;
        }

        else
        {
          v43 = 0xD000000000000017;
        }
      }

      else if (v100)
      {
LABEL_8:
        v43 = 0xD00000000000001ELL;
      }

      else
      {
LABEL_4:
        v43 = 0xD00000000000001DLL;
      }

      break;
  }

  return v43;
}

void sub_2207DDCA0(uint64_t *a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    sub_22044D56C(0, &qword_28127E880);
    v5 = sub_220891ABC();
    if (!v5 || (v6 = v5, v11 = [v5 traitCollection], v6, (v7 = v11) == 0))
    {
      v7 = [objc_opt_self() currentTraitCollection];
    }

    v12 = v7;
    v8 = [v7 horizontalSizeClass];
    v9 = sub_220887A9C();
    v10 = MEMORY[0x277D2FDF8];
    a1[3] = v9;
    a1[4] = v10;
    __swift_allocate_boxed_opaque_existential_1(a1);
    if (v8 == 1)
    {
      sub_220887A7C();
    }

    else
    {
      sub_220887A8C();
    }
  }

  else
  {
    v3 = sub_220887A9C();
    v4 = MEMORY[0x277D2FDF8];
    a1[3] = v3;
    a1[4] = v4;
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_220887A8C();
  }
}

StocksUI::StocksActivityType_optional __swiftcall StocksActivityType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22089270C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StocksActivity.Article.redirect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2208876BC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v2, v11, type metadata accessor for StocksActivity.Article);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2207DF7F4(v11, type metadata accessor for StocksActivity.Article);
    v12 = sub_220887DEC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    sub_2204481D8();
    v15 = *(v14 + 64);
    sub_2207DF78C(v11, v7, MEMORY[0x277D2FB40]);
    sub_22088769C();
    sub_2207DF7F4(v7, MEMORY[0x277D2FB40]);
    return sub_2207DC7EC(&v11[v15], &qword_281285B20, sub_2206B1FD4);
  }
}

uint64_t StocksActivity.collapseSidebar.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v1, v21, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270]);
      v30 = *(v29 + 48);
      v31 = sub_22088CC6C();
      (*(*(v31 - 8) + 8))(&v21[v30], v31);
      v24 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_3;
    case 2:
      sub_2207DF78C(v21, v9, type metadata accessor for StocksActivity.StockFeed);
      sub_2207DF724(v9, v5, type metadata accessor for StocksActivity.StockFeed);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2204472D4(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
        v27 = *&v5[*(v26 + 48)];
        sub_2207DF7F4(v5, type metadata accessor for StocksActivity.StockFeed.Series);
      }

      else
      {
        sub_2204472D4(0, &qword_281299050, MEMORY[0x277D69810]);
        v27 = *&v5[*(v32 + 48)];
        v33 = sub_22088685C();
        (*(*(v33 - 8) + 8))(v5, v33);
      }

      sub_2207DF7F4(v9, type metadata accessor for StocksActivity.StockFeed);
      return v27 & 1;
    case 4:
      sub_2207DF78C(v21, v17, type metadata accessor for StocksActivity.Article);
      sub_2207DF724(v17, v13, type metadata accessor for StocksActivity.Article);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2207DF7F4(v13, type metadata accessor for StocksActivity.Article);
        v28 = 0;
      }

      else
      {
        sub_2204481D8();
        v35 = *&v13[*(v34 + 48)];
        sub_2207DC7EC(&v13[*(v34 + 64)], &qword_281285B20, sub_2206B1FD4);
        sub_2207DF7F4(v13, MEMORY[0x277D2FB40]);
        v28 = v35 & 1;
      }

      sub_2207DF7F4(v17, type metadata accessor for StocksActivity.Article);
      return v28;
    case 5:
      v25 = sub_220884E9C();
      (*(*(v25 - 8) + 8))(v21, v25);
      return 0;
    case 11:
      sub_220447880();

      sub_2207DC7EC(v21, &qword_281299060, MEMORY[0x277D69810]);
      return 0;
    case 13:
      return result;
    default:
      v24 = type metadata accessor for StocksActivity;
LABEL_3:
      sub_2207DF7F4(v21, v24);
      return 0;
  }
}

uint64_t StocksActivity.type.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v2, v7, type metadata accessor for StocksActivity);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270]);
      v12 = *(v11 + 48);
      *a1 = 1;
      v13 = sub_22088CC6C();
      (*(*(v13 - 8) + 8))(&v7[v12], v13);
      v10 = type metadata accessor for ForYouSectionDescriptor;
      return sub_2207DF7F4(v7, v10);
    case 2u:
      v9 = 2;
      goto LABEL_5;
    case 3u:
      result = sub_2207DF7F4(v7, type metadata accessor for StocksActivity);
      *a1 = 3;
      return result;
    case 4u:
      v9 = 4;
LABEL_5:
      *a1 = v9;
      v10 = type metadata accessor for StocksActivity;
      return sub_2207DF7F4(v7, v10);
    case 5u:
      *a1 = 5;
      v14 = sub_220884E9C();
      return (*(*(v14 - 8) + 8))(v7, v14);
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
      sub_2207DF7F4(v7, type metadata accessor for StocksActivity);
      goto LABEL_13;
    case 0xBu:
      sub_220447880();

      sub_2207DC7EC(v7, &qword_281299060, MEMORY[0x277D69810]);
      goto LABEL_13;
    case 0xDu:
LABEL_13:
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_22089254C();
      MEMORY[0x223D89680](0xD000000000000026, 0x80000002208D6900);
      sub_22089264C();
      result = sub_22089267C();
      __break(1u);
      break;
    default:
      result = sub_2207DF7F4(v7, type metadata accessor for StocksActivity);
      *a1 = 0;
      break;
  }

  return result;
}