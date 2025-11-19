void sub_20BEC3E00(void **a1, char a2, id a3)
{
  v4 = *a1;
  if (a2)
  {
    if (a2 != 1)
    {
      v5 = [a3 navigationController];
      if (v5)
      {
        v6 = v5;
        [v5 pushViewController:v4 animated:1];
      }
    }
  }

  else
  {
    v7 = [a3 presentingViewController];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v4;
    v12[4] = sub_20BEC4904;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_20B7B548C;
    v12[3] = &block_descriptor_147;
    v10 = _Block_copy(v12);
    v11 = v4;

    [a3 dismissViewControllerAnimated:1 completion:v10];
    _Block_release(v10);
  }
}

void sub_20BEC3F80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentViewController:a2 animated:1 completion:0];
  }
}

uint64_t sub_20BEC3FEC()
{
  v4[0] = 0;

  sub_20C13C384();
  v11 = v7[0];
  v12 = v8;
  v6 = 0;
  sub_20C13C384();
  v13 = 0;
  v14 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  v9 = sub_20BEC4CF4;
  v10 = v0;
  sub_20B99185C(v7, v4);
  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7700D0));
  v2 = sub_20C13C274();
  sub_20BEC4CFC(v7);
  return v2;
}

uint64_t sub_20BEC4150(void *a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CEE918]) initWithAccount:*a1 bag:a2];
  sub_20C13BA34();
  v3 = sub_20C13C914();

  [v2 setSubscriptionType_];

  *(swift_allocObject() + 16) = v2;
  sub_20B62BB28();

  return sub_20C137CA4();
}

uint64_t sub_20BEC4228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccountSettingLink();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20BA01D64(a2, v8);
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = a1;
    v18 = v17;
    v29 = v17;
    *v16 = 136446210;
    v19 = sub_20BA0145C();
    v21 = v20;
    sub_20BA01E58(v8);
    v22 = sub_20B51E694(v19, v21, &v29);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_20B517000, v13, v14, "Failed to present view controller for link type: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v23 = v18;
    a1 = v27;
    MEMORY[0x20F2F6A40](v23, -1, -1);
    MEMORY[0x20F2F6A40](v16, -1, -1);
  }

  else
  {

    sub_20BA01E58(v8);
  }

  (*(v10 + 8))(v12, v9);
  *(swift_allocObject() + 16) = a1;
  v24 = a1;
  sub_20B62BB28();
  return sub_20C137CA4();
}

void sub_20BEC44AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = sub_20C13C914();
  v23 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v23)
  {
    if (*(a3 + 24))
    {
      [v23 presentInNavigationStack_];
      v14 = v23;
    }

    else
    {
      sub_20C13B534();

      v19 = sub_20C13BB74();
      v20 = sub_20C13D1D4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_20B51E694(a1, a2, &v24);
        _os_log_impl(&dword_20B517000, v19, v20, "Failed to present privacy link for %s, no navigation controller found", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x20F2F6A40](v22, -1, -1);
        MEMORY[0x20F2F6A40](v21, -1, -1);
      }

      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    sub_20C13B534();

    v15 = sub_20C13BB74();
    v16 = sub_20C13D1D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_20B51E694(a1, a2, &v24);
      _os_log_impl(&dword_20B517000, v15, v16, "Failed to create privacyPresenter for %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x20F2F6A40](v18, -1, -1);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BEC47EC(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

unint64_t sub_20BEC490C()
{
  result = qword_27C7700C8;
  if (!qword_27C7700C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7700C8);
  }

  return result;
}

uint64_t sub_20BEC4990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSettingLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BEC49F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AccountSettingLink() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20BEC4228(a1, v6, a2);
}

uint64_t sub_20BEC4A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20BEC4B64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  sub_20C13C954();
  sub_20C132C04();

  sub_20B6A6860(v5, v2);
  v6 = sub_20C132C14();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v2, 1, v6) != 1)
  {
    v8 = sub_20C132B64();
    (*(v7 + 8))(v2, v6);
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CDD340]) initWithAccountURL_];

  [v9 prepareWithCompletionBlock_];
  sub_20B9E801C(v5);
  return v9;
}

BOOL sub_20BEC4D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_20C136FB4();
  if (v4 == sub_20C136FB4())
  {
    return v2 < v3;
  }

  v6 = sub_20C136FB4();
  return v6 < sub_20C136FB4();
}

BOOL sub_20BEC4DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_20C136FB4();
  if (v4 == sub_20C136FB4())
  {
    v5 = v3 < v2;
  }

  else
  {
    v6 = sub_20C136FB4();
    v5 = v6 < sub_20C136FB4();
  }

  return !v5;
}

BOOL sub_20BEC4E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_20C136FB4();
  if (v4 == sub_20C136FB4())
  {
    v5 = v2 < v3;
  }

  else
  {
    v6 = sub_20C136FB4();
    v5 = v6 < sub_20C136FB4();
  }

  return !v5;
}

BOOL sub_20BEC4ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_20C136FB4();
  if (v4 == sub_20C136FB4())
  {
    return v3 < v2;
  }

  v6 = sub_20C136FB4();
  return v6 < sub_20C136FB4();
}

BOOL sub_20BEC4F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = sub_20C136FB4();
  v5 = sub_20C136FB4();
  return v2 == v3 && v4 == v5;
}

unint64_t sub_20BEC4FAC()
{
  result = qword_27C7700E0;
  if (!qword_27C7700E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7700E0);
  }

  return result;
}

uint64_t sub_20BEC5000(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 4)
  {
    goto LABEL_5;
  }

  if (v1)
  {
    sub_20BEC5094(v1);
    v3 = v7;
    goto LABEL_8;
  }

  LOBYTE(v1) = sub_20BEC5094(0);
  v3 = -3.4028e38;
  if (v2 >= -3.4028e38)
  {
LABEL_8:
    v6 = v2;
    goto LABEL_9;
  }

  __break(1u);
LABEL_5:
  result = sub_20BEC5094(v1);
  v6 = 3.4028e38;
  if (v5 > 3.4028e38)
  {
    __break(1u);
    return result;
  }

  v3 = v5;
LABEL_9:
  sub_20C133744();
  return v8 < v6 && v3 <= v8;
}

uint64_t sub_20BEC5094(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 1u)
  {
    goto LABEL_6;
  }

  if (a1 == 2)
  {
LABEL_12:
    sub_20C133724();
    v14 = v13;
    result = sub_20C133734();
    if (v14 > v15)
    {
      __break(1u);
      goto LABEL_14;
    }

    return result;
  }

  if (a1 != 3)
  {
LABEL_14:
    v16 = sub_20BEC5094(3);
    v18 = v17 - v16;
    sub_20C133714();
    v20 = v19 + v18;
    result = sub_20C133714();
    if (v21 <= v20)
    {
      return result;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  sub_20C133734();
  v3 = v2;
  result = sub_20C133714();
  if (v3 > v5)
  {
    __break(1u);
LABEL_6:
    if (v1)
    {
      sub_20C133704();
      v23 = v22;
      result = sub_20C133724();
      if (v23 > v24)
      {
        goto LABEL_19;
      }

      return result;
    }

    v6 = sub_20BEC5094(1);
    v8 = v7 - v6;
    sub_20C133704();
    v10 = v9 - v8;
    if (v10 > 0.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    result = sub_20C133704();
    if (v11 <= v12)
    {
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

double sub_20BEC5188(float a1, float a2, float a3, float a4, float a5)
{
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 - a3) <= 0.0)
  {
    sub_20C13B4A4();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "SessionBurnBarPackInfo pack position score range less than 0. Defaulting fraction to lower bound.", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v14 = (a5 - a3) / (a4 - a3);
    v15 = 0.0;
    if (v14 >= 0.0)
    {
      v15 = (a5 - a3) / (a4 - a3);
    }

    if (v14 <= 1.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1.0;
    }

    return (((a2 - a1) * v16) + a1);
  }

  return a1;
}

double sub_20BEC5328(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C136FA4();
  v23 = a1;
  v7 = sub_20B5F8AE0(sub_20BEC5558, v22, v6);
  if (*(v7 + 16))
  {
    v8 = *(v7 + 32);

    v9 = flt_20C18202C[v8];
    v10 = flt_20C182040[v8];
    sub_20BEC5094(v8);
    v12 = v11;
    v14 = v13;
    sub_20C133744();
    v16 = sub_20BEC5188(v9, v10, v12, v14, v15);
  }

  else
  {

    sub_20C13B4A4();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "SessionBurnBarPackInfo personalScore in pack position score range not found.", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v16 = 0.0;
  }

  v20 = sub_20C1337A4();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v16;
}

uint64_t getEnumTagSinglePayload for SessionBurnBarPackInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[16])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionBurnBarPackInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_20BEC5624()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_pageNavigator + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_pageNavigator + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_pageNavigator), v1);
  return (*(v2 + 120))(v0, v1, v2);
}

uint64_t sub_20BEC56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(v7, a1, a3);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 120))(v3, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t MetricPlayStream.applyingRemoteBrowsingEnvironment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v132 = a1;
  v128 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v104 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v104 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v104 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7700E8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v104 - v14;
  v108 = sub_20C137B04();
  v105 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v109 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_20C1369B4();
  MEMORY[0x28223BE20](v106);
  v107 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_20C135334();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  MEMORY[0x28223BE20](v19 - 8);
  v114 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v21 - 8);
  v129 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v123 = &v104 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  MEMORY[0x28223BE20](v25 - 8);
  v118 = &v104 - v26;
  v27 = sub_20C136014();
  MEMORY[0x28223BE20](v27 - 8);
  v117 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C136354();
  MEMORY[0x28223BE20](v29 - 8);
  v116 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C135F14();
  v121 = *(v31 - 8);
  v122 = v31;
  MEMORY[0x28223BE20](v31);
  v130 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D8);
  MEMORY[0x28223BE20](v33 - 8);
  v115 = &v104 - v34;
  v35 = sub_20C135F84();
  v36 = *(v35 - 8);
  v138 = v35;
  v139 = v36;
  MEMORY[0x28223BE20](v35);
  v140 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v134 = &v104 - v39;
  MEMORY[0x28223BE20](v40);
  v110 = &v104 - v41;
  v42 = sub_20C134564();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v104 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134C74();
  sub_20C134554();
  v119 = v43;
  v46 = *(v43 + 8);
  v120 = v42;
  v46(v45, v42);
  v47 = sub_20C137154();
  v49 = v48;
  v50 = sub_20C137154();
  v131 = v3;
  v126 = v9;
  v127 = v6;
  v124 = v15;
  v125 = v12;
  if (v47 == v50 && v49 == v51)
  {

    sub_20C1336D4();
  }

  else
  {
    v52 = sub_20C13DFF4();

    if (v52)
    {
      sub_20C1336D4();
    }

    else
    {
      sub_20C1336C4();
    }
  }

  v53 = v138;
  v54 = sub_20C1336F4();
  v137 = v55;
  v56 = sub_20C136A64();
  v57 = v56;
  v58 = v56 + 56;
  v59 = 1 << *(v56 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v56 + 56);
  v62 = (v59 + 63) >> 6;
  v133 = v139 + 16;
  v135 = (v139 + 8);
  v136 = (v139 + 32);

  v64 = 0;
  if (v61)
  {
    while (1)
    {
      v65 = v64;
LABEL_14:
      v66 = v57;
      v67 = v139;
      v68 = *(v57 + 48) + *(v139 + 72) * (__clz(__rbit64(v61)) | (v65 << 6));
      v69 = v134;
      (*(v139 + 16))(v134, v68, v53);
      v70 = *(v67 + 32);
      v70(v140, v69, v53);
      if (sub_20C135F74() == v54 && v71 == v137)
      {

        goto LABEL_22;
      }

      v72 = sub_20C13DFF4();

      if (v72)
      {
        break;
      }

      v61 &= v61 - 1;
      v53 = v138;
      result = (*v135)(v140, v138);
      v64 = v65;
      v57 = v66;
      if (!v61)
      {
        goto LABEL_11;
      }
    }

    v53 = v138;
LABEL_22:

    v74 = v115;
    v70(v115, v140, v53);
    v73 = 0;
LABEL_23:
    v75 = v139;
    (*(v139 + 56))(v74, v73, 1, v53);

    if ((*(v75 + 48))(v74, 1, v53) == 1)
    {
      sub_20B520158(v74, &qword_27C76B9D8);
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
    }

    else
    {
      v76 = v110;
      (*v136)(v110, v74, v53);
      v77 = sub_20C135F34();
      v139 = v78;
      v140 = v77;
      v79 = sub_20C135F24();
      v137 = v80;
      v138 = v79;
      v136 = sub_20C135F64();
      sub_20C135F54();
      sub_20C135F44();
      (*v135)(v76, v53);
    }

    sub_20C136BD4();
    sub_20C136A34();
    sub_20C136A04();
    sub_20C136AF4();
    sub_20C135F04();
    v81 = v129;
    sub_20C134C54();
    v82 = sub_20C134FB4();
    v83 = *(v82 - 8);
    if ((*(v83 + 48))(v81, 1, v82) == 1)
    {
      sub_20B520158(v81, &unk_27C7678F0);
      v84 = 1;
      v85 = v127;
      v87 = v124;
      v86 = v125;
      v88 = v123;
    }

    else
    {
      v89 = v111;
      sub_20C136C24();
      v90 = v114;
      sub_20C135314();
      (*(v112 + 8))(v89, v113);
      v91 = sub_20C135D54();
      v92 = *(v91 - 8);
      v93 = (*(v92 + 48))(v90, 1, v91);
      v87 = v124;
      v86 = v125;
      v88 = v123;
      if (v93 == 1)
      {
        sub_20B520158(v90, &unk_27C762370);
      }

      else
      {
        v94 = v107;
        sub_20C135D44();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_20BBC2094(v94);
        }

        else
        {
          v95 = v105;
          (*(v105 + 32))(v109, v94, v108);
          sub_20C137AF4();
          (*(v95 + 8))(v109, v108);
          v90 = v114;
        }

        (*(v92 + 8))(v90, v91);
      }

      v85 = v127;
      v96 = v129;
      sub_20C134FA4();

      (*(v83 + 8))(v96, v82);
      v84 = 0;
    }

    (*(v83 + 56))(v88, v84, 1, v82);
    (*(v119 + 56))(v87, 1, 1, v120);
    v98 = v121;
    v97 = v122;
    v99 = v130;
    (*(v121 + 16))(v86, v130, v122);
    (*(v98 + 56))(v86, 0, 1, v97);
    v100 = sub_20C134C44();
    (*(*(v100 - 8) + 56))(v86, 0, 1, v100);
    v101 = sub_20C135674();
    v102 = v126;
    (*(*(v101 - 8) + 56))(v126, 1, 1, v101);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    (*(*(v103 - 8) + 56))(v85, 1, 1, v103);
    sub_20C134C64();
    sub_20B520158(v85, &unk_27C766C70);
    sub_20B520158(v102, &unk_27C766C80);
    sub_20B520158(v86, &qword_27C76B9D0);
    sub_20B520158(v87, &qword_27C7700E8);
    sub_20B520158(v88, &unk_27C7678F0);
    return (*(v98 + 8))(v99, v97);
  }

  else
  {
LABEL_11:
    while (1)
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v65 >= v62)
      {

        v73 = 1;
        v74 = v115;
        goto LABEL_23;
      }

      v61 = *(v58 + 8 * v65);
      ++v64;
      if (v61)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t MetricPlayStream.applyingRemoteParticipant(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7700E8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v26 - v16;
  if (sub_20C1350F4() == 4)
  {
    v18 = sub_20C134C84();
    v19 = *(*(v18 - 8) + 16);

    return v19(a1, v1, v18);
  }

  else
  {
    v21 = sub_20C134564();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v22 = sub_20C134C44();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    v23 = sub_20C135674();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    v24 = sub_20C134FB4();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    v26[1] = sub_20C137194();
    sub_20C134C24();
    sub_20BBC2540();
    sub_20C133BC4();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
    sub_20C134C64();
    sub_20B520158(v5, &unk_27C766C70);
    sub_20B520158(v8, &unk_27C7678F0);
    sub_20B520158(v11, &unk_27C766C80);
    sub_20B520158(v14, &qword_27C76B9D0);
    return sub_20B520158(v17, &qword_27C7700E8);
  }
}

uint64_t sub_20BEC6B94(uint64_t a1, uint64_t a2)
{
  v2 = sub_20BEC712C(a1, a2);
  sub_20B51C88C(0, &qword_27C7654B0);
  v3 = objc_opt_self();
  v4 = [v3 kilocalorieUnit];
  v5 = sub_20C13D5F4();

  if (v5)
  {

    return 1;
  }

  else
  {
    v7 = [v3 largeCalorieUnit];
    v8 = sub_20C13D5F4();

    if (v8)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

double sub_20BEC6C70(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_27C760690 != -1)
  {
    swift_once();
  }

  v6 = [objc_opt_self() quantityWithUnit:qword_27C799EC0 doubleValue:a3];
  v7 = sub_20BEC712C(a1, a2);
  v8 = _HKWorkoutFlooredValueForQuantity();

  return v8;
}

double sub_20BEC6D50(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_20BEC7340(a1, a2);
  v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:a3];

  if (qword_27C760698 != -1)
  {
    swift_once();
  }

  [v5 doubleValueForUnit_];
  v7 = v6;

  return v7;
}

uint64_t sub_20BEC6E4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 footUnit];
  sub_20B51C88C(0, &qword_27C7700F0);
  v7 = sub_20C13D5F4();

  if (v7)
  {

    return 4;
  }

  else
  {
    v9 = v5;
    v10 = [v4 meterUnit];
    v11 = sub_20C13D5F4();

    if (v11)
    {

      return 1;
    }

    else
    {
      v12 = [v4 meterUnitWithMetricPrefix_];
      v13 = sub_20C13D5F4();

      if (v13)
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }
  }
}

double sub_20BEC6F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), double a4)
{
  if (qword_27C760698 != -1)
  {
    swift_once();
  }

  v8 = [objc_opt_self() quantityWithUnit:qword_27C799EC8 doubleValue:a4];
  v9 = a3(a1, a2);
  [v8 doubleValueForUnit_];
  v11 = v10;

  return v11;
}

uint64_t sub_20BEC707C(uint64_t a1, uint64_t a2)
{
  sub_20B51C88C(0, &qword_27C7700F0);
  v4 = sub_20BEC7234(a1, a2);
  v5 = [objc_opt_self() meterUnitWithMetricPrefix_];
  v6 = sub_20C13D5F4();

  if (v6)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

id sub_20BEC712C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  v5 = _HKGenerateDefaultUnitForQuantityType();

  if (!v5)
  {
    v5 = [objc_opt_self() kilocalorieUnit];
  }

  (*(a2 + 8))(a1, a2);
  if (!v6)
  {
    return v5;
  }

  v7 = sub_20C13C914();
  v8 = [objc_opt_self() unitFromString_];

  return v8;
}

id sub_20BEC7234(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  v5 = _HKGenerateDefaultUnitForQuantityType();

  if (!v5)
  {
    v5 = [objc_opt_self() meterUnitWithMetricPrefix_];
  }

  (*(a2 + 24))(a1, a2);
  if (!v6)
  {
    return v5;
  }

  v7 = sub_20C13C914();
  v8 = [objc_opt_self() unitFromString_];

  return v8;
}

id sub_20BEC7340(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  v5 = _HKGenerateDefaultUnitForQuantityType();

  if (!v5)
  {
    v5 = [objc_opt_self() meterUnitWithMetricPrefix_];
  }

  (*(a2 + 32))(a1, a2);
  if (!v6)
  {
    return v5;
  }

  v7 = sub_20C13C914();
  v8 = [objc_opt_self() unitFromString_];

  return v8;
}

id sub_20BEC744C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  v5 = _HKGenerateDefaultUnitForQuantityType();

  if (!v5)
  {
    v5 = [objc_opt_self() meterUnitWithMetricPrefix_];
  }

  (*(a2 + 32))(a1, a2);
  if (v6)
  {
    v7 = sub_20C13C914();
    v8 = [objc_opt_self() unitFromString_];
  }

  else
  {
    v8 = v5;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = &selRef_meterUnit;
  v12 = [v9 meterUnit];
  sub_20B51C88C(0, &qword_27C7700F0);
  v13 = sub_20C13D5F4();

  if (v13 & 1) != 0 || (v14 = v10, v15 = [v9 meterUnitWithMetricPrefix_], v16 = sub_20C13D5F4(), v14, v15, (v16) || (v17 = v14, v11 = &selRef_footUnit, v18 = objc_msgSend(v9, sel_footUnit), v19 = sub_20C13D5F4(), v17, v18, (v19))
  {
  }

  else
  {
    v22 = [v9 mileUnit];
    v23 = sub_20C13D5F4();

    if ((v23 & 1) == 0)
    {
      v11 = &selRef_mileUnit;
    }
  }

  v20 = [v9 *v11];

  return v20;
}

uint64_t sub_20BEC76C0(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BEC7AD8(a2);
  }

  return result;
}

uint64_t sub_20BEC7720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ThemeFilterUpdated();
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_coordinator);

    v24[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v25 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &unk_27C767600);
    v18 = sub_20C133A74();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &unk_27C767600);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C133A34();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v25);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20BC6A1E4(&qword_27C7667C0, type metadata accessor for ThemeFilterUpdated);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20BC6A188(v14);
  }

  return result;
}

uint64_t sub_20BEC7A50(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FE20(v3, a1, Strong);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_20BEC7AD8(int a1)
{
  v84 = sub_20C13BB84();
  v3 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  v79 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v82 = *(v12 - 8);
  v83 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  if ((sub_20BF7A8FC(8, v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_rootModality) & 1) == 0)
  {
    sub_20C13B534();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v100[0] = v26;
      *v25 = 141558274;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2080;
      v27 = sub_20C1368A4();
      v29 = sub_20B51E694(v27, v28, v100);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_20B517000, v23, v24, "Unsupported property type: %{mask.hash}s. Aborting row creation.", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    return (*(v3 + 8))(v5, v84);
  }

  v70 = a1;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_coordinator);
  v84 = v1;
  v16 = (v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v17 = sub_20C138D34();
  v19 = sub_20BC74C88(v17, v18, 0xD000000000000014, 0x800000020C1ADA60, v15);

  if ((*(v15 + *(*v15 + 200)) & 8) != 0)
  {
    v20 = 0;
    v22 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v20 = sub_20C138D34();
    v22 = v21;
  }

  v90 = 0uLL;
  LOBYTE(v91) = 1;
  *(&v91 + 1) = 0;
  *&v92 = 0;
  WORD4(v92) = 128;
  v93 = 0uLL;
  v94 = xmmword_20C168270;
  *&v95 = v20;
  *(&v95 + 1) = v22;
  LOBYTE(v96) = 0;
  *(&v96 + 1) = v19;
  v97 = MEMORY[0x277D84F90];
  *&v98 = 0;
  *(&v98 + 1) = v20;
  *v99 = v22;
  *&v99[8] = xmmword_20C150190;
  nullsub_1(&v90);
  v31 = v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row;
  v32 = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 144);
  v100[8] = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 128);
  v100[9] = v32;
  v101 = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 160);
  v33 = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 80);
  v100[4] = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 64);
  v100[5] = v33;
  v34 = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 112);
  v100[6] = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 96);
  v100[7] = v34;
  v35 = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 16);
  v100[0] = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row);
  v100[1] = v35;
  v36 = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 48);
  v100[2] = *(v84 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 32);
  v100[3] = v36;
  v37 = *v99;
  *(v31 + 128) = v98;
  *(v31 + 144) = v37;
  *(v31 + 160) = *&v99[16];
  v38 = v95;
  *(v31 + 64) = v94;
  *(v31 + 80) = v38;
  v39 = v97;
  *(v31 + 96) = v96;
  *(v31 + 112) = v39;
  v40 = v91;
  *v31 = v90;
  *(v31 + 16) = v40;
  v41 = v93;
  *(v31 + 32) = v92;
  *(v31 + 48) = v41;

  sub_20B520158(v100, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    return swift_unknownObjectRelease();
  }

  v69 = result;
  if (![*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_27:
    sub_20C0C2D50(0);
    return swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v42 = v83;
  v43 = sub_20C13BE74();
  result = (*(v82 + 8))(v14, v42);
  v77 = *(v43 + 16);
  v78 = v43;
  if (!v77)
  {
LABEL_25:

    goto LABEL_27;
  }

  v44 = 0;
  v75 = v78 + 32;
  v76 = OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_identifier;
  v73 = (v9 + 8);
  v74 = (v9 + 16);
  while (2)
  {
    if (v44 < *(v78 + 16))
    {
      v45 = (v75 + 24 * v44);
      v46 = v45[1];
      v72 = *v45;
      v47 = v45[2];
      v82 = v44 + 1;
      (*v74)(v11, v84 + v76, v8);
      v48 = *(v46 + 16);

      v83 = v47;

      v49 = 0;
      do
      {
        if (v48 == v49)
        {
          (*v73)(v11, v8);
          goto LABEL_15;
        }

        v50 = v49 + 1;
        sub_20BC6A1E4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v51 = sub_20C13C894();
        v49 = v50;
      }

      while ((v51 & 1) == 0);
      (*v73)(v11, v8);
      v52 = *(v31 + 128);
      v53 = *(v31 + 144);
      v54 = *(v31 + 96);
      v86[7] = *(v31 + 112);
      v87 = v52;
      v88 = v53;
      v89 = *(v31 + 160);
      v55 = *(v31 + 80);
      v86[4] = *(v31 + 64);
      v86[5] = v55;
      v86[6] = v54;
      v56 = *(v31 + 16);
      v86[0] = *v31;
      v86[1] = v56;
      v57 = *(v31 + 48);
      v86[2] = *(v31 + 32);
      v86[3] = v57;
      v58 = sub_20B5EAF8C(v86);
      if (v58 == 1)
      {
        v59 = 0;
        v60 = 0;
      }

      else
      {
        v59 = *(&v87 + 1);
        v60 = v88;
      }

      v61 = v83;
      v71 = &v68;
      v85[0] = v59;
      v85[1] = v60;
      MEMORY[0x28223BE20](v58);
      *(&v68 - 2) = v85;
      v62 = sub_20B796758(sub_20B5EAFA4, (&v68 - 4), v61);

      if ((v62 & 1) == 0)
      {
LABEL_15:

        v44 = v82;
        if (v82 == v77)
        {
          goto LABEL_25;
        }

        continue;
      }

      sub_20B5E2E18();
      v63 = sub_20C13D374();
      v65 = v79;
      v64 = v80;
      *v79 = v63;
      v66 = v81;
      (*(v64 + 104))(v65, *MEMORY[0x277D85200], v81);
      v67 = sub_20C13C584();
      result = (*(v64 + 8))(v65, v66);
      if ((v67 & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((v70 & 0x80) != 0)
      {
        sub_20C10CCA4(v84, v72, v70 & 1, v69);
      }

      else
      {
        sub_20B61F79C(v72, v46, v83, v84, v70 & 1, v69);
      }

      return swift_unknownObjectRelease();
    }

    break;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_20BEC8464()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_rootModality, &unk_27C7710A0);
  v3 = OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogThemeFilterOptionsShelf()
{
  result = qword_27C7700F8;
  if (!qword_27C7700F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEC862C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B723EF4();
    if (v1 <= 0x3F)
    {
      sub_20C134EC4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BEC875C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEC87D4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogThemeFilterOptionsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t type metadata accessor for ShelfDiffableItemIdentifier()
{
  result = qword_27C770108;
  if (!qword_27C770108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEC89EC()
{
  result = sub_20C133244();
  if (v1 <= 0x3F)
  {
    result = sub_20C132E94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BEC8A78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = *(v0 + *(type metadata accessor for ShelfDiffableItemIdentifier() + 20));
  v8 = (v7 >> 57) & 0x78 | v7 & 7;
  if (v8 == 31)
  {
    v16 = swift_projectBox();
    sub_20B52F9E8(v16, v3, &qword_27C762B80);
    v10 = &v3[*(v1 + 48)];
    v15 = sub_20C136594();
    goto LABEL_5;
  }

  if (v8 == 30)
  {
    v9 = swift_projectBox();
    sub_20B52F9E8(v9, v6, &unk_27C7677D0);
    v10 = &v6[v4[12]];
    v11 = &v6[v4[20]];
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = *(v11 + 2);

    sub_20B6222E8(*&v6[v4[24]], *&v6[v4[24] + 8]);

    v15 = sub_20C134014();
LABEL_5:
    (*(*(v15 - 8) + 8))(v10, v15);
    return 1;
  }

  return 0;
}

uint64_t sub_20BEC8C80(uint64_t a1)
{
  sub_20C13E164();
  if ((sub_20BEC8A78() & 1) == 0)
  {
    sub_20C133244();
    sub_20BEC8FBC(&qword_27C764180, MEMORY[0x277CC9AF8]);
    sub_20C13C7C4();
  }

  sub_20B970D44(v4, *(v1 + *(a1 + 20)));
  sub_20C132E94();
  sub_20BEC8FBC(&unk_27C769340, MEMORY[0x277CC9578]);
  sub_20C13C7C4();
  return sub_20C13E1B4();
}

uint64_t sub_20BEC8D84(__int128 *a1, uint64_t a2)
{
  if ((sub_20BEC8A78() & 1) == 0)
  {
    sub_20C133244();
    sub_20BEC8FBC(&qword_27C764180, MEMORY[0x277CC9AF8]);
    sub_20C13C7C4();
  }

  sub_20B970D44(a1, *(v2 + *(a2 + 20)));
  sub_20C132E94();
  sub_20BEC8FBC(&unk_27C769340, MEMORY[0x277CC9578]);
  return sub_20C13C7C4();
}

uint64_t sub_20BEC8E70(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  if ((sub_20BEC8A78() & 1) == 0)
  {
    sub_20C133244();
    sub_20BEC8FBC(&qword_27C764180, MEMORY[0x277CC9AF8]);
    sub_20C13C7C4();
  }

  sub_20B970D44(v5, *(v2 + *(a2 + 20)));
  sub_20C132E94();
  sub_20BEC8FBC(&unk_27C769340, MEMORY[0x277CC9578]);
  sub_20C13C7C4();
  return sub_20C13E1B4();
}

uint64_t sub_20BEC8FBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BEC9004(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B80);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ShelfDiffableItemIdentifier();
  v11 = v10;
  v12 = *(v10 + 20);
  v13 = *(a1 + v12);
  v14 = (v13 >> 57) & 0x78 | v13 & 7;
  if (v14 == 31)
  {
    goto LABEL_8;
  }

  if (v14 == 30)
  {
    v15 = swift_projectBox();
    sub_20B52F9E8(v15, v9, &unk_27C7677D0);
    v34 = &v9[v7[12]];
    v16 = &v9[v7[20]];
    v33 = *v16;
    v17 = a2;
    v19 = *(v16 + 1);
    v18 = *(v16 + 2);

    a2 = v17;
    sub_20B6222E8(*&v9[v7[24]], *&v9[v7[24] + 8]);
    v20 = v34;

    v21 = sub_20C134014();
LABEL_9:
    v29 = v21;
LABEL_10:
    (*(*(v29 - 8) + 8))(v20);
    if (sub_20B969AA8(v13, *&a2[*(v11 + 20)]))
    {
      v31 = sub_20C132E54();
      return v31 & 1;
    }

LABEL_17:
    v31 = 0;
    return v31 & 1;
  }

  v22 = *&a2[v12];
  v23 = (v22 >> 57) & 0x78 | v22 & 7;
  if (v23 == 31)
  {
LABEL_8:
    v30 = swift_projectBox();
    sub_20B52F9E8(v30, v6, &qword_27C762B80);
    v20 = &v6[*(v4 + 48)];
    v21 = sub_20C136594();
    goto LABEL_9;
  }

  v34 = v10;
  if (v23 == 30)
  {
    v24 = swift_projectBox();
    sub_20B52F9E8(v24, v9, &unk_27C7677D0);
    v20 = &v9[v7[12]];
    v25 = &v9[v7[20]];
    v33 = a2;
    v26 = *v25;
    v27 = *(v25 + 1);
    v28 = *(v25 + 2);

    a2 = v33;
    sub_20B6222E8(*&v9[v7[24]], *&v9[v7[24] + 8]);

    v29 = sub_20C134014();
    v11 = v34;
    goto LABEL_10;
  }

  if ((sub_20C1331D4() & 1) == 0 || (sub_20B969AA8(v13, v22) & 1) == 0)
  {
    goto LABEL_17;
  }

  return sub_20C132E54();
}

uint64_t sub_20BEC93A0()
{
  v0 = sub_20C135174();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5];
  v7 = sub_20C136084();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B234();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      (*(v1 + 56))(v6, 1, 1, v0);
      sub_20B51C88C(0, &qword_281100530);
      v12 = sub_20C13D374();
      sub_20BECEE64(v6);

      return sub_20B520158(v6, &unk_27C76BC00);
    }
  }

  else
  {
    (*(v1 + 32))(v3, v9, v0);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      (*(v1 + 16))(v6, v3, v0);
      (*(v1 + 56))(v6, 0, 1, v0);
      sub_20B51C88C(0, &qword_281100530);
      v13 = sub_20C13D374();
      sub_20BECEE64(v6);

      sub_20B520158(v6, &unk_27C76BC00);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_20BECD604();
    }

    v14 = *(v10 + 48);
    (*(v1 + 8))(v3, v0);
    v15 = sub_20C136C64();
    return (*(*(v15 - 8) + 8))(&v9[v14], v15);
  }

  return result;
}

uint64_t sub_20BEC974C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BECBEBC(v1, v2);
  }

  return result;
}

uint64_t sub_20BEC97BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BECD604();
  }

  return result;
}

uint64_t sub_20BEC9814()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  result = (*(v6 + 8))(v8, v5);
  if ((*(v1 + 280) & 1) == 0)
  {
    *(v1 + 280) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_20C132964();
      v16 = v15;

      v17 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

      v18 = TVButtonTextContentView.init(title:)(v14, v16);
      sub_20BB88C24(v18, *(v11 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton));

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for SeymourLocalizationBundle();
      v19 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      sub_20C132964();

      sub_20BF87CDC();

      swift_unknownObjectRelease();
    }

    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      [*(*(v21 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView) + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_deviceBadgeView) setHidden_];
      swift_unknownObjectRelease();
    }

    __swift_project_boxed_opaque_existential_1((v1 + 152), *(v1 + 176));
    sub_20C13B184();
    sub_20B51C88C(0, &qword_281100530);
    v22 = sub_20C13D374();
    sub_20BECEE64(v4);

    sub_20B520158(v4, &unk_27C76BC00);
    sub_20BECD604();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v23 = result;
      type metadata accessor for SeymourLocalizationBundle();
      v24 = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      sub_20C132964();

      v26 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
      v27 = *(v23 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView);
      v28 = sub_20C13C914();

      [v27 setAccessibilityLabel_];

      [*(v23 + v26) setIsAccessibilityElement_];
      [*(v23 + v26) invalidateIntrinsicContentSize];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BEC9CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_20C13B894();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v5 = *(v76 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v76);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v81 = *(v83 - 8);
  v82 = v83 - 8;
  v90 = v81;
  v85 = *(v81 + 64);
  MEMORY[0x28223BE20](v83 - 8);
  v86 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v65 - v12;
  MEMORY[0x28223BE20](v13);
  v89 = &v65 - v14;
  MEMORY[0x28223BE20](v15);
  v91 = &v65 - v16;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v18 + 8))(v20, v17);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  v67 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v65 = v9;
  sub_20C13B954();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20BECFAE4;
  *(v22 + 24) = v21;
  v77 = v21;
  v23 = *(v5 + 16);
  v74 = v5 + 16;
  v75 = v23;
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v76;
  v23(v66, v9, v76);
  v25 = *(v5 + 80);
  v73 = v25;
  v26 = (v25 + 16) & ~v25;
  v71 = v26;
  v27 = (v6 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v70 = *(v5 + 32);
  v72 = v5 + 32;
  v29 = v24;
  v70(v28 + v26, &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v30 = (v28 + v27);
  *v30 = sub_20B5D9F30;
  v30[1] = v22;

  sub_20C137C94();
  v31 = *(v5 + 8);
  v68 = v5 + 8;
  v69 = v31;
  v32 = v65;
  v31(v65, v24);
  __swift_project_boxed_opaque_existential_1((v67 + 16), *(v67 + 40));
  v33 = v78;
  v34 = v79;
  v35 = v80;
  (*(v79 + 104))(v78, *MEMORY[0x277D4FA68], v80);
  sub_20C13B8F4();
  (*(v34 + 8))(v33, v35);
  v36 = swift_allocObject();
  v37 = v88;
  *(v36 + 16) = sub_20BECEB2C;
  *(v36 + 24) = v37;
  v38 = v66;
  v75(v66, v32, v29);
  v39 = swift_allocObject();
  v70(v39 + v71, v38, v29);
  v40 = (v39 + v27);
  *v40 = sub_20B5DF4B4;
  v40[1] = v36;

  v41 = v89;
  sub_20C137C94();
  v69(v32, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v42 = *(v81 + 72);
  v43 = v90;
  v44 = *(v90 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C14F320;
  v46 = v45 + ((v44 + 32) & ~v44);
  v47 = *(v43 + 16);
  v48 = v83;
  v47(v46, v91, v83);
  v49 = v46 + v42;
  v50 = v48;
  v47(v49, v41, v48);
  sub_20B51C88C(0, &qword_281100530);
  v51 = sub_20C13D374();
  sub_20C13A7C4();
  v52 = v84;
  sub_20C137C74();

  v53 = swift_allocObject();
  v54 = v88;
  *(v53 + 16) = v77;
  *(v53 + 24) = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_20BECEB48;
  *(v55 + 24) = v53;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_20BECEB64;
  *(v56 + 24) = v55;
  v57 = v86;
  v47(v86, v52, v50);
  v58 = (v44 + 16) & ~v44;
  v59 = (v85 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v90;
  (*(v90 + 32))(v60 + v58, v57, v50);
  v62 = (v60 + v59);
  *v62 = sub_20BECEC38;
  v62[1] = v56;
  sub_20B51C88C(0, &qword_27C7683B0);

  sub_20C137C94();
  v63 = *(v61 + 8);
  v63(v52, v50);
  v63(v89, v50);
  v63(v91, v50);
}

void sub_20BECA5DC(void **a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
  v5 = v3;
}

id sub_20BECA63C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    if (v4)
    {
      return v4;
    }
  }

  v6 = sub_20C133C44();
  sub_20BECFA90(&qword_27C7662C8, MEMORY[0x277D50320]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D50318], v6);
  return swift_willThrow();
}

uint64_t sub_20BECA758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v53 = a1;
  v54 = a2;
  v52 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v46 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v51 - 8);
  v50 = *(v13 + 64);
  MEMORY[0x28223BE20](v51);
  v49 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = v46 - v16;
  v17 = sub_20C13BB84();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v18 + 8))(v20, v17);
  v22 = v5[10];
  v21 = v5[11];
  v46[1] = v5;
  __swift_project_boxed_opaque_existential_1(v5 + 7, v22);
  (*(v21 + 8))(v53, v54, v22, v21);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20BECEA8C;
  *(v26 + 24) = v24;
  v27 = v47;
  (*(v8 + 16))(v47, v12, v7);
  v28 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v29 = swift_allocObject();
  (*(v8 + 32))(v29 + v28, v27, v7);
  v30 = (v29 + ((v9 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20B5F67A4;
  v30[1] = v26;
  v31 = v25;
  v32 = v48;
  sub_20C137C94();
  (*(v8 + 8))(v12, v7);
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v53;
  v36 = v54;
  v34[2] = v31;
  v34[3] = v35;
  v34[4] = v36;
  v34[5] = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_20BECEAD0;
  *(v37 + 24) = v34;
  v38 = v49;
  v39 = v51;
  (*(v13 + 16))(v49, v32, v51);
  v40 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v41 = (v50 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v13 + 32))(v42 + v40, v38, v39);
  v43 = (v42 + v41);
  *v43 = sub_20B5F7764;
  v43[1] = v37;
  v44 = v31;

  sub_20C137C94();
  return (*(v13 + 8))(v32, v39);
}

uint64_t sub_20BECACB0(void **a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = sub_20C13C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C4F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v13;
  aBlock[4] = sub_20BECEAFC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_129;
  v15 = _Block_copy(aBlock);

  v16 = v13;
  sub_20C13C4D4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_20BECFA90(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v12, v8, v15);
  _Block_release(v15);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_20BECAF60(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v9 = *(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView);
      sub_20C13B4A4();
      sub_20C13BB64();
      (*(v4 + 8))(v6, v3);
      [*(v9 + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_imageView) setImage_];
      sub_20C0D6AEC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BECB0E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  v9 = sub_20C13C4B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C13C4F4();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = a5;
  aBlock[4] = sub_20BECEAF0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_123;
  v17 = _Block_copy(aBlock);

  v18 = a1;

  sub_20C13C4D4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_20BECFA90(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_20BECB3AC(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  sub_20C13B4A4();

  v12 = a3;
  v13 = sub_20C13BB74();
  v14 = sub_20C13D1D4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v6;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = a1;
    v19 = v17;
    v34[0] = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_20B51E694(v18, a2, v34);
    *(v16 + 12) = 2082;
    swift_getErrorValue();
    v20 = MEMORY[0x20F2F5850](v32, v33);
    v22 = sub_20B51E694(v20, v21, v34);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_20B517000, v13, v14, "Unable to fetch avatar for %{public}s: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v19, -1, -1);
    v23 = v16;
    v6 = v30;
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  v24 = *(v7 + 8);
  v24(v11, v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v27 = *(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView);
      v28 = v31;
      sub_20C13B4A4();
      sub_20C13BB64();
      v24(v28, v6);
      [*(v27 + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_imageView) setImage_];
      sub_20C0D6AEC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20BECB6CC(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764698);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v29[-v4];
  v6 = *a1;
  v7 = [v6 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 userFullName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_20C13C954();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        [*(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton) setHidden_];
        [*(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView) setHidden_];
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v18 = swift_unknownObjectWeakLoadStrong();

      if (v18)
      {
        sub_20C0D6940(v11, v13);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v19 = swift_unknownObjectWeakLoadStrong();

      if (v19)
      {
        [*(*(v19 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView) + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_deviceBadgeView) setHidden_];
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v20 = sub_20C13C954();
      v22 = v21;
      sub_20B51C88C(0, &qword_281100530);
      v23 = sub_20C13D374();
      sub_20BECA758(v20, v22, v23, v5);

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
      (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
      sub_20B520158(v5, &qword_27C764698);
      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
    }

    else
    {
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
      (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
      sub_20B520158(v5, &qword_27C764698);
      v26 = sub_20C133C44();
      sub_20BECFA90(&qword_27C7662C8, MEMORY[0x277D50320]);
      v27 = swift_allocError();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D50318], v26);
      *(swift_allocObject() + 16) = v27;
      sub_20C137CA4();
    }
  }

  else
  {
    v14 = sub_20C13B8A4();
    sub_20BECFA90(&qword_27C762380, MEMORY[0x277D4FA88]);
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D4FA70], v14);
    *(swift_allocObject() + 16) = v15;

    sub_20C137CA4();
  }
}

uint64_t sub_20BECBC54(void *a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  v9 = a1;
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21[1] = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[0] = a2;
    v15 = v14;
    v22[0] = v14;
    *v13 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v21[3], v21[4]);
    v18 = sub_20B51E694(v16, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20B517000, v10, v11, "Error fetching acounts for TVRootMenu: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [*(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton) setHidden_];
      [*(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView) setHidden_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BECBEBC(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v50 = a1;
  v3 = sub_20C137424();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0);
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v6;
  MEMORY[0x28223BE20](v7);
  v58 = &v41 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_20C135174();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  __swift_project_boxed_opaque_existential_1(v2 + 19, v2[22]);
  sub_20C13B184();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_20B520158(v12, &unk_27C76BC00);
  }

  v21 = *(v14 + 32);
  v22 = v12;
  v23 = v13;
  v21(v19, v22, v13);
  v24 = v46;
  v45 = v19;
  sub_20C135114();
  v42 = v2;
  sub_20B98F290(v2 + 2, v58);
  (*(v47 + 8))(v24, v48);
  v43 = v14;
  v44 = v23;
  (*(v14 + 16))(v16, v19, v23);
  v25 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 2) = v50;
  *(v26 + 3) = v27;
  *(v26 + 4) = v42;
  v21(&v26[v25], v16, v23);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20BECE994;
  *(v28 + 24) = v26;
  v30 = v53;
  v29 = v54;
  v31 = v51;
  v32 = v58;
  (*(v53 + 16))(v51, v58, v54);
  v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = (v49 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v30 + 32))(v35 + v33, v31, v29);
  v36 = (v35 + v34);
  *v36 = sub_20B8FD810;
  v36[1] = v28;

  v37 = v52;
  sub_20C137C94();
  (*(v30 + 8))(v32, v29);
  v38 = v57;
  v39 = sub_20C137CB4();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v39(sub_20B5DF6DC, v40);

  (*(v55 + 8))(v37, v38);
  return (*(v43 + 8))(v45, v44);
}

void sub_20BECC494(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1 == a2 && a1[1] == a3;
  if (v6 || (sub_20C13DFF4() & 1) != 0)
  {
    sub_20B51C88C(0, &qword_281100530);
    v7 = sub_20C13D374();
    sub_20BECC534(a5, v7);
  }
}

uint64_t sub_20BECC534(uint64_t a1, void *a2)
{
  v64 = a1;
  v62 = sub_20C135174();
  v60 = *(v62 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v58 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764520);
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v55);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v56 = *(v59 - 8);
  v54 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v51 - v13;
  MEMORY[0x28223BE20](v14);
  v63 = &v51 - v15;
  v16 = v2[10];
  v17 = v2[11];
  v52 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 7, v16);
  (*(v17 + 16))(v64, v16, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20BECE698;
  *(v20 + 24) = v19;
  v21 = v55;
  (*(v5 + 16))(v7, v10, v55);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v7, v21);
  v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BB08438;
  v24[1] = v20;
  v25 = a2;
  v51 = v25;
  v26 = v53;
  sub_20C137C94();
  (*(v5 + 8))(v10, v21);
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v60;
  v29 = v58;
  v30 = v62;
  (*(v60 + 16))(v58, v64, v62);
  v31 = v28;
  v32 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v33 = (v61 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = v25;
  (*(v31 + 32))(v34 + v32, v29, v30);
  *(v34 + v33) = v27;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20BECE794;
  *(v35 + 24) = v34;
  v36 = v56;
  v37 = v57;
  v38 = v26;
  v39 = v26;
  v40 = v59;
  (*(v56 + 16))(v57, v39, v59);
  v41 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v42 = (v54 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v36 + 32))(v43 + v41, v37, v40);
  v44 = (v43 + v42);
  *v44 = sub_20B5DF204;
  v44[1] = v35;
  v45 = v51;
  v46 = v63;
  sub_20C137C94();
  v47 = *(v36 + 8);
  v47(v38, v40);
  v48 = sub_20C137CB4();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  v48(sub_20B52347C, v49);

  return (v47)(v46, v40);
}

uint64_t sub_20BECCB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = sub_20C13C4B4();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C13C4F4();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v12;
  v14[4] = v11;
  v14[5] = v13;
  aBlock[4] = sub_20BECE988;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_79;
  v15 = _Block_copy(aBlock);

  v16 = v12;

  sub_20C13C4D4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_20BECFA90(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v7, v15);
  _Block_release(v15);
  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);
}

uint64_t sub_20BECCE00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v23 = a1;
  v24 = a4;
  v26 = sub_20C13C4B4();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C13C4F4();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C135174();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a3, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v14, v13, v9);
  v18 = v23;
  v17 = v24;
  *(v16 + v15) = v23;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_20BECE840;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_148;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  sub_20C13C4D4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_20BECFA90(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v21 = v26;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v8, v6, v19);
  _Block_release(v19);
  (*(v28 + 8))(v6, v21);
  (*(v25 + 8))(v8, v27);
}

uint64_t sub_20BECD19C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_20C135174();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  sub_20C13B4A4();
  (*(v7 + 16))(v9, a1, v6);
  v15 = a2;
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v10;
    v19 = v18;
    v34 = swift_slowAlloc();
    v41[0] = v34;
    *v19 = 136315394;
    sub_20BECFA90(&unk_27C76B9B0, MEMORY[0x277D515D0]);
    v20 = sub_20C13DFA4();
    v36 = a3;
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    v23 = sub_20B51E694(v20, v22, v41);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    swift_getErrorValue();
    v24 = MEMORY[0x20F2F5850](v39, v40);
    v26 = sub_20B51E694(v24, v25, v41);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_20B517000, v16, v17, "Unable to fetch avatar for %s: %{public}s", v19, 0x16u);
    v27 = v34;
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v27, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    v28 = *(v38 + 8);
    v29 = v35;
    v28(v14, v35);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    v28 = *(v38 + 8);
    v28(v14, v10);
    v29 = v10;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v32 = *(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView);
      v33 = v37;
      sub_20C13B4A4();
      sub_20C13BB64();
      v28(v33, v29);
      [*(v32 + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_imageView) setImage_];
      sub_20C0D6AEC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BECD604()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = *(v73 + 64);
  MEMORY[0x28223BE20](v1);
  v66 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v59 - v4;
  MEMORY[0x28223BE20](v5);
  v68 = &v59 - v6;
  MEMORY[0x28223BE20](v7);
  v69 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9);
  v70 = &v59 - v10;
  v11 = sub_20C136F94();
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v59 - v18;
  v20 = sub_20C136C64();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v76 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  v23 = v20;
  sub_20C13B174();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &qword_27C768690);
  }

  else
  {
    (*(v21 + 32))(v76, v19, v20);
    sub_20C1369E4();
    sub_20C136F34();
    sub_20BECFA90(&qword_27C767AF0, MEMORY[0x277D53030]);
    v24 = sub_20C13DA74();
    v25 = *(v75 + 8);
    v25(v13, v11);
    v25(v16, v11);
    if (v24)
    {
      v62 = v21;
      v26 = v77;
      __swift_project_boxed_opaque_existential_1((v77 + 240), *(v77 + 264));
      v27 = v67;
      sub_20C139724();
      v28 = *__swift_project_boxed_opaque_existential_1((v26 + 96), *(v26 + 120));
      v79[3] = type metadata accessor for ContentAvailabilityFilter();
      v79[4] = &off_2822C8E88;
      v79[0] = v28;
      sub_20B51CC64(v79, v78);
      v29 = swift_allocObject();
      sub_20B51C710(v78, v29 + 16);

      __swift_destroy_boxed_opaque_existential_1(v79);
      v30 = swift_allocObject();
      *(v30 + 16) = sub_20BECE4DC;
      *(v30 + 24) = v29;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_20B8404CC;
      *(v31 + 24) = v30;
      v32 = v73;
      v60 = *(v73 + 16);
      v75 = v73 + 16;
      v33 = v66;
      v34 = v74;
      v60(v66, v27, v74);
      v61 = v23;
      v35 = *(v32 + 80);
      v63 = v35;
      v36 = (v35 + 16) & ~v35;
      v65 = v36;
      v37 = (v2 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      v64 = *(v32 + 32);
      v64(v38 + v36, v33, v34);
      v39 = (v38 + v37);
      *v39 = sub_20B8404D4;
      v39[1] = v31;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
      v40 = v68;
      sub_20C137C94();
      v41 = *(v32 + 8);
      v41(v27, v34);
      sub_20B51C88C(0, &qword_281100530);
      v42 = sub_20C13D374();
      v43 = v27;
      v44 = v27;
      v45 = v60;
      v60(v43, v40, v34);
      v46 = swift_allocObject();
      v64(v46 + v65, v44, v34);
      *(v46 + v37) = v42;
      v47 = v69;
      sub_20C137C94();
      v41(v40, v34);
      v48 = swift_allocObject();
      swift_weakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = sub_20BECE50C;
      *(v49 + 24) = v48;
      v45(v40, v47, v34);
      v50 = swift_allocObject();
      v64(v50 + v65, v40, v34);
      v51 = (v50 + v37);
      *v51 = sub_20BECE528;
      v51[1] = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
      v52 = v70;
      sub_20C137C94();
      v41(v47, v34);
      v53 = v72;
      v54 = sub_20C137CB4();
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      v54(sub_20B52347C, v55);

      (*(v71 + 8))(v52, v53);
      return (*(v62 + 8))(v76, v61);
    }

    (*(v21 + 8))(v76, v20);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v57 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
    v58 = result;
    [*(result + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView) setHidden_];
    [*(*(v58 + v57) + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_button) setUserInteractionEnabled_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BECDF74(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20B51CC64(a1, v7);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_20B51C710(v7, v4 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v5 + 24) = 41;
  *(v5 + 32) = 2;
  *(v5 + 40) = 25;
  *(v5 + 48) = &unk_20C15D270;
  *(v5 + 56) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750);
  return sub_20C137C94();
}

uint64_t sub_20BECE07C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_20BECE0FC(*(v3 + 16));
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_20BECE0FC(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1 < 1)
  {
    if (Strong)
    {
      v18 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
      v19 = *(*(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView) + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_buttonContentView);
      v20 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView;
      v21 = Strong;
      [*(v19 + OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView) setImage_];
      [*(v19 + v20) invalidateIntrinsicContentSize];
      [*(v21 + v18) invalidateIntrinsicContentSize];
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = (result + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView);
      v22 = *(*(result + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView) + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_buttonContentView);
      v23 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_textView;
      [*(v22 + OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_textView) setHidden_];
      [*(v22 + v23) invalidateIntrinsicContentSize];
      goto LABEL_10;
    }
  }

  else
  {
    if (Strong)
    {
      v4 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
      v5 = *(*(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView) + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_buttonContentView);
      v6 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView;
      v7 = Strong;
      [*(v5 + OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView) setImage_];
      [*(v5 + v6) invalidateIntrinsicContentSize];
      [*(v7 + v4) invalidateIntrinsicContentSize];
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = result;
      __swift_project_boxed_opaque_existential_1((v1 + 192), *(v1 + 216));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D83B88];
      *(v10 + 16) = xmmword_20C14F980;
      v12 = MEMORY[0x277D83C10];
      *(v10 + 56) = v11;
      *(v10 + 64) = v12;
      *(v10 + 32) = a1;
      sub_20C138D24();

      v13 = (v9 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView);
      v14 = *(*(v9 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView) + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_buttonContentView);
      v15 = OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_textView;
      [*(v14 + OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_textView) setHidden_];
      v16 = *(v14 + v15);
      v17 = sub_20C13C914();
      [v16 setText_];

      [*(v14 + v15) invalidateIntrinsicContentSize];

LABEL_10:
      [*v13 invalidateIntrinsicContentSize];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BECE3D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);

  __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  sub_20B583E6C(v0 + 288);

  return swift_deallocClassInstance();
}

unint64_t sub_20BECE488()
{
  result = qword_27C770120;
  if (!qword_27C770120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770120);
  }

  return result;
}

uint64_t sub_20BECE558(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v7[5] = v5;

  return sub_20C137C94();
}

void sub_20BECE5FC(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, void **), uint64_t a4, void **a5)
{
  v6 = a5[1];
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  v8 = v10;
  LOBYTE(v9) = 0;
  a1(&v8);

  sub_20B583FB8(v7, 0);
}

uint64_t sub_20BECE6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v7;

  v9 = v5;

  return sub_20C137C94();
}

uint64_t sub_20BECE794(void *a1)
{
  v3 = *(sub_20C135174() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_20BECCE00(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_20BECE840()
{
  v1 = *(sub_20C135174() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BECD19C(v0 + v2, v4, v5);
}

void sub_20BECE8D8(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 2);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  *&v8 = v10;
  BYTE8(v8) = 0;
  a1(&v8);

  sub_20B583FB8(v7, 0);
}

uint64_t objectdestroy_47Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20BECEB64@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_20BECEB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_20B51C88C(0, &qword_27C7683B0);

  return sub_20C137C94();
}

uint64_t sub_20BECEC68(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v6);
  v4 = v6;
  v7 = 0;
  a1(&v6);

  return sub_20B71C588(v4, 0);
}

void *sub_20BECED00(char a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  if (((1 << a1) & 0x1AB) != 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    [result setHidden_];
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    [result setHidden_];
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20BECEE64(uint64_t a1)
{
  v2 = v1;
  v92 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v81 = v4;
  v82 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v89 = *(v7 - 8);
  v90 = v7;
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v7);
  v86 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v81 - v10;
  MEMORY[0x28223BE20](v11);
  v88 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v81 - v14;
  v16 = sub_20C135174();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v91 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C13BB84();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  sub_20C13B4A4();
  sub_20C13BB64();
  v26 = *(v20 + 8);
  v26(v25, v19);
  if (*(v2 + 280) == 1)
  {
    sub_20BBC0E68(v92, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_20B520158(v15, &unk_27C76BC00);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v28 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
        v29 = Strong;
        [*(Strong + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView) setHidden_];
        [*(*(v29 + v28) + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_button) setUserInteractionEnabled_];
        swift_unknownObjectRelease();
      }

      v30 = v83;
      sub_20BEC9CEC(v83);
      v31 = swift_allocObject();
      swift_weakInit();
      v33 = v84;
      v32 = v85;
      v34 = v82;
      (*(v84 + 16))(v82, v30, v85);
      v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v36 = (v81 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v33 + 32))(v37 + v35, v34, v32);
      v38 = (v37 + v36);
      *v38 = sub_20BECF9A4;
      v38[1] = v31;
      v39 = v87;
      sub_20C137C94();
      (*(v33 + 8))(v30, v32);
      v40 = swift_allocObject();
      swift_weakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = sub_20BECF9AC;
      *(v41 + 24) = v40;
      v43 = v89;
      v42 = v90;
      v44 = v86;
      (*(v89 + 16))(v86, v39, v90);
      v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v46 = swift_allocObject();
      (*(v43 + 32))(v46 + v45, v44, v42);
      v47 = (v46 + ((v8 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v47 = sub_20B5F7764;
      v47[1] = v41;
      v48 = v88;
      sub_20C137C94();
      v49 = *(v43 + 8);
      v49(v39, v42);
      v50 = sub_20C137CB4();
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      *(v51 + 24) = 0;
      v50(sub_20B5DF6DC, v51);

      return (v49)(v48, v42);
    }

    v56 = v17;
    v57 = v91;
    (*(v17 + 32))(v91, v15, v16);
    v58 = swift_unknownObjectWeakLoadStrong();
    if (v58)
    {
      v59 = v58;
      [*(v58 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton) setHidden_];
      [*(v59 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView) setHidden_];
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v60 = sub_20C135154();
      sub_20C0D6940(v60, v61);
      swift_unknownObjectRelease();
    }

    v62 = swift_unknownObjectWeakLoadStrong();
    if (v62)
    {
      v63 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
      v64 = v62;
      [*(v62 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView) setHidden_];
      [*(*(v64 + v63) + OBJC_IVAR____TtC9SeymourUI23TVUpNextQueueButtonView_button) setUserInteractionEnabled_];
      swift_unknownObjectRelease();
    }

    v65 = sub_20C1350F4();
    v66 = swift_unknownObjectWeakLoadStrong();
    if (v65 == 1)
    {
      if (!v66)
      {
        goto LABEL_26;
      }

      v73 = v66;
      v74 = sub_20C13C914();
      v69 = [objc_opt_self() smm:v74 systemImageNamed:?];

      v70 = v56;
      v71 = *(*(v73 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView) + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_deviceBadgeView);
      if (*(v71 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize))
      {
        v72 = 46.0;
      }

      else
      {
        v72 = 23.0;
      }
    }

    else
    {
      if (v65)
      {
        if (v66)
        {
          v79 = 1;
          goto LABEL_30;
        }

LABEL_31:
        sub_20B51C88C(0, &qword_281100530);
        v80 = sub_20C13D374();
        sub_20BECC534(v57, v80);

        return (*(v56 + 8))(v57, v16);
      }

      if (!v66)
      {
LABEL_26:
        v66 = swift_unknownObjectWeakLoadStrong();
        if (v66)
        {
          v79 = 0;
LABEL_30:
          [*(*(v66 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView) + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_deviceBadgeView) setHidden_];
          swift_unknownObjectRelease();
          goto LABEL_31;
        }

        goto LABEL_31;
      }

      v67 = v66;
      v68 = sub_20C13C914();
      v69 = [objc_opt_self() smm:v68 systemImageNamed:?];

      v70 = v56;
      v71 = *(*(v67 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView) + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_deviceBadgeView);
      if (*(v71 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_badgeSize))
      {
        v72 = 46.0;
      }

      else
      {
        v72 = 23.0;
      }
    }

    v75 = [objc_opt_self() configurationWithPointSize_];
    v76 = *(v71 + OBJC_IVAR____TtC9SeymourUI15DeviceBadgeView_imageView);
    v77 = [v69 imageWithConfiguration_];
    v78 = v76;
    v56 = v70;
    [v78 setImage_];

    swift_unknownObjectRelease();
    v57 = v91;
    goto LABEL_26;
  }

  sub_20C13B4A4();
  v53 = sub_20C13BB74();
  v54 = sub_20C13D1D4();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_20B517000, v53, v54, "Cannot update Root Menu apperance until activated", v55, 2u);
    MEMORY[0x20F2F6A40](v55, -1, -1);
  }

  return (v26)(v22, v19);
}

uint64_t sub_20BECF9C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BECFA90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BECFB38(uint64_t a1, void *a2, uint64_t (*a3)(void *), uint64_t *a4)
{
  v55 = a2;
  v8 = sub_20C1391E4();
  v9 = *(v8 - 8);
  v60 = v8;
  v61 = v9;
  MEMORY[0x28223BE20](v8);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134C44();
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v13 - 8);
  v57 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v15 - 8);
  v56 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v17 - 8);
  v52 = &v50 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v19 - 8);
  v51 = &v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v50 - v22;
  v24 = sub_20C135D24();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C134F74();
  v53 = *(v28 - 8);
  v54 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v50 - v32;
  v34 = *(v4 + *v55);
  v62 = a1;
  *v27 = sub_20BED03EC(a3);
  (*(v25 + 104))(v27, *MEMORY[0x277D52100], v24);
  v35 = *(v34 + qword_27C79C018);
  v36 = *a4;
  v37 = sub_20C1333A4();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v23, v35 + v36, v37);
  (*(v38 + 56))(v23, 0, 1, v37);
  v39 = sub_20C135664();
  (*(*(v39 - 8) + 56))(v51, 1, 1, v39);
  v40 = sub_20C135674();
  (*(*(v40 - 8) + 56))(v52, 1, 1, v40);
  v41 = v56;
  sub_20C134F94();
  v42 = sub_20C134FB4();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
  v44 = sub_20C135F14();
  (*(*(v44 - 8) + 56))(v58, 1, 1, v44);
  sub_20C134F54();
  v45 = v53;
  v46 = v54;
  (*(v53 + 16))(v30, v33, v54);
  v47 = v59;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20BED2E60(&qword_281103B30, MEMORY[0x277D542C0]);
  swift_unknownObjectRetain();
  v48 = v60;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v61 + 8))(v47, v48);
  return (*(v45 + 8))(v33, v46);
}

void sub_20BED0244(void *a1)
{
  if (![a1 nextFocusedItem])
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v1 + qword_27C79C008);
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 isDescendantOfView_];

      if (v7)
      {
        swift_unknownObjectRelease();
LABEL_11:
        v12 = *(v1 + qword_27C79C030);
        *(v1 + qword_27C79C030) = v4;
        v11 = v4;

        return;
      }

      v4 = *(v1 + qword_27C79C010);
      v8 = [v4 view];
      if (v8)
      {
        v9 = v8;
        v10 = [v3 isDescendantOfView_];

        swift_unknownObjectRelease();
        if ((v10 & 1) == 0)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20BED03EC(uint64_t (*a1)(void *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  v3 = *(v1 + qword_27C79C008);
  *(inited + 32) = v3;
  v27 = inited + 32;
  v4 = *(v1 + qword_27C79C010);
  *(inited + 40) = v4;
  v29 = inited;
  v5 = inited & 0xC000000000000001;
  v6 = v3;
  v7 = v4;
  v8 = 0;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v8;
    v12 = v5 ? MEMORY[0x20F2F5430](v9, v29) : *(v27 + 8 * v9);
    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
      break;
    }

    v15 = [v14 topViewController];
    if (v15)
    {
      v33[0] = v15;
      sub_20B62BB28();
      goto LABEL_12;
    }

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
LABEL_3:

    sub_20BED2EA8(&v30);
LABEL_4:
    v8 = 1;
    v9 = 1;
    if (v11)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      return v10;
    }
  }

  v33[0] = v13;
  sub_20B62BB28();
  v16 = v13;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  if (!*(&v31 + 1))
  {
    goto LABEL_3;
  }

  sub_20B52E424(&v30, v33);
  result = a1(v33);
  v18 = *(result + 16);
  v19 = *(v10 + 16);
  v20 = v19 + v18;
  if (!__OFADD__(v19, v18))
  {
    v21 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v22 = *(v10 + 24) >> 1, v22 >= v20))
    {
      if (*(v21 + 16))
      {
        goto LABEL_19;
      }

LABEL_27:

      if (v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v26 = v19 + v18;
      }

      else
      {
        v26 = v19;
      }

      result = sub_20BC05FD8(result, v26, 1, v10);
      v10 = result;
      v22 = *(result + 24) >> 1;
      if (!*(v21 + 16))
      {
        goto LABEL_27;
      }

LABEL_19:
      if (v22 - *(v10 + 16) < v18)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v10 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_33;
        }

        *(v10 + 16) = v25;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v33);
    goto LABEL_4;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

char *TVCatalogModalityDetailViewController.__allocating_init(dependencies:pageNavigator:modalityIdentifier:currentFilter:currentResult:rootResult:options:pageContext:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, char *a3, objc_class *a4, char *a5, char *a6, char *a7, uint64_t a8, void (*a9)(void, void), unint64_t a10)
{
  v11 = v10;
  v134 = a8;
  v135 = a7;
  v136 = a6;
  v131 = a5;
  v137 = a3;
  v133 = a2;
  v124 = a1;
  v128 = a9;
  v127 = a10;
  v144 = sub_20C135914();
  v146 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v119 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v138 = &v109 - v16;
  v139 = sub_20C135524();
  v132 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v118 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v115 = &v109 - v19;
  MEMORY[0x28223BE20](v20);
  v140 = &v109 - v21;
  MEMORY[0x28223BE20](v22);
  v126 = &v109 - v23;
  v141 = sub_20C133E24();
  v143 = *(v141 - 8);
  v24 = v143;
  MEMORY[0x28223BE20](v141);
  v125 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v109 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = (&v109 - v30);
  v32 = sub_20C134EC4();
  v142 = *(v32 - 8);
  v33 = v142;
  MEMORY[0x28223BE20](v32);
  v114 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v109 - v39;
  v120 = objc_allocWithZone(v11);
  *v31 = a3;
  v31[1] = a4;
  v116 = a4;
  v41 = sub_20C135C84();
  swift_storeEnumTagMultiPayload();
  (*(*(v41 - 8) + 56))(v31, 0, 1, v41);

  sub_20C13CA04();
  v130 = v40;
  sub_20C134E94();
  v110 = *(v33 + 16);
  v111 = v33 + 16;
  v145 = v32;
  v110(v37, v40, v32);
  v122 = *(v24 + 16);
  v123 = v24 + 16;
  v42 = v131;
  v43 = v141;
  v122(v28, v131, v141);
  type metadata accessor for TVModalityDetailFilterResultPageDataProvider();
  swift_allocObject();
  v44 = v124;

  v45 = v128;
  v46 = v127;
  sub_20B58C2C8(v128, v127);
  v47 = v37;
  v129 = v28;
  v137 = sub_20B66D5A4(v44, v137, v116, v37, v45, v46, v28);

  sub_20B51CC64(v133, v152);
  v122(v28, v42, v43);
  v48 = *(v132 + 16);
  v49 = v126;
  v50 = v139;
  v48(v126, v136, v139);
  v112 = v48;
  v51 = v110;
  v110(v47, v130, v145);
  v48(v140, v135, v50);
  v113 = *(v146 + 16);
  v113(v138, v134, v144);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C40);
  v52 = objc_allocWithZone(v116);
  *&v52[qword_27C79C038 + 8] = 0;
  swift_unknownObjectWeakInit();

  v53 = v137;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v52[qword_27C76D2D0] = v149;
  v54 = &v52[qword_27C79C000];
  v55 = v52;
  v109 = v52;
  v56 = v47;
  v117 = v47;
  v57 = v145;
  v51(v54, v47, v145);
  *&v55[qword_27C79C018] = v53;
  v122(v125, v129, v141);
  v58 = v115;
  v59 = v49;
  v60 = v139;
  v61 = v112;
  v112(v115, v59, v139);
  v62 = v114;
  v51(v114, v56, v57);
  v63 = v118;
  v61(v118, v140, v60);
  v64 = v119;
  v113(v119, v138, v144);
  type metadata accessor for TVFilterOptionsListDataProvider();
  swift_allocObject();
  v65 = v124;

  v66 = v137;

  v67 = sub_20BDF8288(v65, v125, v58, v62, v63, v64, 0, 0);

  v68 = v109;
  *&v109[qword_27C79C020] = v67;
  sub_20B51CC64(v152, &v149);
  v69 = objc_allocWithZone(type metadata accessor for TVFilterOptionsListViewController());
  v70 = v150;
  v71 = v151;
  v72 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
  v73 = MEMORY[0x28223BE20](v72);
  v75 = &v109 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v76 + 16))(v75, v73);

  v77 = sub_20B61354C(v65, v67, v75, v69, v70, v71);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  sub_20B51CC64(v152, &v149);
  v78 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765FE8));
  v79 = v150;
  v80 = v151;
  v81 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
  v82 = MEMORY[0x28223BE20](v81);
  v84 = &v109 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v85 + 16))(v84, v82);

  v86 = sub_20B7FC5E4(v65, v66, v84, v78, v79, v80);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  v87 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v68[qword_27C79C008] = v87;
  *&v68[qword_27C79C010] = v86;
  *&v68[qword_27C79C030] = v87;
  v88 = &v68[qword_27C79C028];
  v89 = v127;
  *v88 = v128;
  *(v88 + 1) = v89;
  v148.receiver = v68;
  v148.super_class = v116;
  v90 = v87;
  v91 = v86;
  v92 = objc_msgSendSuper2(&v148, sel_init);
  [v90 setDelegate_];

  v93 = *(v146 + 8);
  v146 += 8;
  v128 = v93;
  v93(v138, v144);
  v94 = *(v132 + 8);
  v95 = v139;
  v94(v140, v139);
  v96 = *(v142 + 8);
  v142 += 8;
  v140 = v96;
  (v96)(v117, v145);
  v94(v126, v95);
  v97 = *(v143 + 8);
  v143 += 8;
  v98 = v141;
  v97(v129, v141);
  __swift_destroy_boxed_opaque_existential_1(v152);
  *&v91[qword_27C79A4C0 + 8] = &off_2822DCE00;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  v99 = v120;
  *&v120[OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator] = v92;
  v147.receiver = v99;
  v147.super_class = v121;
  v100 = objc_msgSendSuper2(&v147, sel_initWithStyle_, 1);
  v101 = *&v100[OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator];
  v102 = objc_opt_self();
  v103 = v100;
  v104 = v101;
  v105 = [v102 mainScreen];
  [v105 bounds];
  v107 = v106;

  [v103 setPreferredPrimaryColumnWidthFraction_];
  [v103 setPrimaryBackgroundStyle_];
  [v103 setViewController:*&v104[qword_27C79C008] forColumn:0];

  v128(v134, v144);
  v94(v135, v95);
  v94(v136, v95);
  v97(v131, v98);
  __swift_destroy_boxed_opaque_existential_1(v133);
  (v140)(v130, v145);

  return v103;
}

char *TVCatalogModalityDetailViewController.init(dependencies:pageNavigator:modalityIdentifier:currentFilter:currentResult:rootResult:options:pageContext:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, char *a3, objc_class *a4, uint64_t a5, char *a6, char *a7, uint64_t a8, void (*a9)(void, void), unint64_t a10)
{
  v135 = a8;
  v136 = a7;
  v134 = a6;
  v131 = a5;
  v137 = a3;
  v133 = a2;
  v123 = a1;
  v127 = a9;
  v126 = a10;
  v12 = sub_20C135914();
  v13 = *(v12 - 8);
  v145 = v12;
  v146 = v13;
  MEMORY[0x28223BE20](v12);
  v119 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v138 = &v109 - v16;
  v139 = sub_20C135524();
  v132 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v118 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v116 = &v109 - v19;
  MEMORY[0x28223BE20](v20);
  v144 = &v109 - v21;
  MEMORY[0x28223BE20](v22);
  v140 = &v109 - v23;
  v141 = sub_20C133E24();
  v143 = *(v141 - 8);
  v24 = v143;
  MEMORY[0x28223BE20](v141);
  v124 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v109 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = (&v109 - v30);
  v32 = sub_20C134EC4();
  v142 = *(v32 - 8);
  v33 = v142;
  MEMORY[0x28223BE20](v32);
  v115 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v109 - v36;
  v125 = &v109 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v109 - v39;
  *v31 = a3;
  v31[1] = a4;
  v117 = a4;
  v41 = sub_20C135C84();
  swift_storeEnumTagMultiPayload();
  (*(*(v41 - 8) + 56))(v31, 0, 1, v41);

  sub_20C13CA04();
  v130 = v40;
  sub_20C134E94();
  v111 = *(v33 + 16);
  v112 = v33 + 16;
  v42 = v32;
  v111(v37, v40, v32);
  v121 = *(v24 + 16);
  v122 = v24 + 16;
  v43 = v28;
  v44 = v28;
  v45 = v131;
  v46 = v141;
  v121(v44, v131, v141);
  type metadata accessor for TVModalityDetailFilterResultPageDataProvider();
  swift_allocObject();
  v47 = v123;

  v48 = v127;
  v49 = v126;
  sub_20B58C2C8(v127, v126);
  v50 = v125;
  v128 = v43;
  v137 = sub_20B66D5A4(v47, v137, v117, v125, v48, v49, v43);

  sub_20B51CC64(v133, v152);
  v121(v43, v45, v46);
  v51 = *(v132 + 16);
  v52 = v139;
  v51(v140, v134, v139);
  v113 = v51;
  v53 = v111;
  v111(v50, v130, v42);
  v51(v144, v136, v52);
  v114 = *(v146 + 16);
  v114(v138, v135, v145);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C40);
  v54 = objc_allocWithZone(v117);
  *&v54[qword_27C79C038 + 8] = 0;
  swift_unknownObjectWeakInit();

  v55 = v137;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v54[qword_27C76D2D0] = v149;
  v110 = v54;
  v56 = v50;
  v57 = v42;
  v129 = v42;
  v53(&v54[qword_27C79C000], v50, v42);
  *&v54[qword_27C79C018] = v55;
  v121(v124, v128, v141);
  v58 = v116;
  v59 = v139;
  v60 = v113;
  v113(v116, v140, v139);
  v61 = v115;
  v53(v115, v56, v57);
  v62 = v118;
  v60(v118, v144, v59);
  v63 = v119;
  v114(v119, v138, v145);
  type metadata accessor for TVFilterOptionsListDataProvider();
  swift_allocObject();
  v64 = v123;

  v65 = v137;

  v66 = sub_20BDF8288(v64, v124, v58, v61, v62, v63, 0, 0);

  v67 = v110;
  *&v110[qword_27C79C020] = v66;
  sub_20B51CC64(v152, &v149);
  v68 = objc_allocWithZone(type metadata accessor for TVFilterOptionsListViewController());
  v69 = v150;
  v70 = v151;
  v71 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v109 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v75 + 16))(v74, v72);

  v76 = sub_20B61354C(v64, v66, v74, v68, v69, v70);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  sub_20B51CC64(v152, &v149);
  v77 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765FE8));
  v78 = v150;
  v79 = v151;
  v80 = __swift_mutable_project_boxed_opaque_existential_1(&v149, v150);
  v81 = MEMORY[0x28223BE20](v80);
  v83 = &v109 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v84 + 16))(v83, v81);

  v85 = sub_20B7FC5E4(v64, v65, v83, v77, v78, v79);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  v86 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v67[qword_27C79C008] = v86;
  *&v67[qword_27C79C010] = v85;
  *&v67[qword_27C79C030] = v86;
  v87 = &v67[qword_27C79C028];
  v88 = v126;
  *v87 = v127;
  *(v87 + 1) = v88;
  v148.receiver = v67;
  v148.super_class = v117;
  v89 = v86;
  v90 = v85;
  v91 = objc_msgSendSuper2(&v148, sel_init);
  [v89 setDelegate_];

  v92 = *(v146 + 8);
  v146 += 8;
  v127 = v92;
  v92(v138, v145);
  v93 = *(v132 + 8);
  v94 = v139;
  v93(v144, v139);
  v95 = *(v142 + 8);
  v142 += 8;
  v144 = v95;
  (v95)(v125, v129);
  v93(v140, v94);
  v96 = *(v143 + 8);
  v143 += 8;
  v97 = v141;
  v96(v128, v141);
  __swift_destroy_boxed_opaque_existential_1(v152);
  *&v90[qword_27C79A4C0 + 8] = &off_2822DCE00;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  v98 = v120;
  *&v120[OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator] = v91;
  v99 = type metadata accessor for TVCatalogModalityDetailViewController();
  v147.receiver = v98;
  v147.super_class = v99;
  v100 = objc_msgSendSuper2(&v147, sel_initWithStyle_, 1);
  v101 = *&v100[OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator];
  v102 = objc_opt_self();
  v103 = v100;
  v104 = v101;
  v105 = [v102 mainScreen];
  [v105 bounds];
  v107 = v106;

  [v103 setPreferredPrimaryColumnWidthFraction_];
  [v103 setPrimaryBackgroundStyle_];
  [v103 setViewController:*&v104[qword_27C79C008] forColumn:0];

  v127(v135, v145);
  v93(v136, v94);
  v93(v134, v94);
  v96(v131, v97);
  __swift_destroy_boxed_opaque_existential_1(v133);
  (v144)(v130, v129);

  return v103;
}

uint64_t sub_20BED2540(char a1)
{
  v3 = sub_20C1390B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1333A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TVCatalogModalityDetailViewController();
  v17.receiver = v1;
  v17.super_class = v14;
  objc_msgSendSuper2(&v17, sel_viewDidAppear_, a1 & 1);
  v15 = *(v8 + 16);
  v15(v13, *(*&v1[OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator] + qword_27C79C018) + OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_metricPage, v7);
  v15(v10, v13, v7);
  sub_20C1390C4();
  swift_getObjectType();
  sub_20BED2E60(&qword_281103B40, MEMORY[0x277D54270]);
  swift_unknownObjectRetain();
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v13, v7);
}

void sub_20BED2828(char a1)
{
  v3 = sub_20C1393E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C132E94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TVCatalogModalityDetailViewController();
  v19.receiver = v1;
  v19.super_class = v11;
  objc_msgSendSuper2(&v19, sel_viewWillDisappear_, a1 & 1);
  sub_20C132E84();
  sub_20BECFB38(v10, &OBJC_IVAR____TtC9SeymourUI37TVCatalogModalityDetailViewController_coordinator, sub_20BED2F10, &OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_metricPage);
  (*(v8 + 8))(v10, v7);
  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 viewControllers];
    sub_20B62BB28();
    v15 = sub_20C13CC74();

    v18 = v1;
    MEMORY[0x28223BE20](v16);
    *(&v17 - 2) = &v18;
    LOBYTE(v14) = sub_20B79AEEC(sub_20B5978BC, (&v17 - 4), v15);

    if (v14)
    {
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_20C1393D4();
      sub_20BED2E60(&unk_281103B20, MEMORY[0x277D54388]);
      sub_20C13A764();

      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
    }
  }
}

id TVCatalogModalityDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TVCatalogModalityDetailViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id TVCatalogModalityDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVCatalogModalityDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BED2E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BED2EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76D368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BED2F4C(unint64_t a1)
{
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 1uLL:
      return type metadata accessor for AccountSettingRowCell();
    case 2uLL:
      return type metadata accessor for ActionButtonsCell();
    case 3uLL:
    case 0x44uLL:
      return type metadata accessor for ActionBannerCell();
    case 4uLL:
      return type metadata accessor for ActivityPickerCell();
    case 5uLL:
      return type metadata accessor for ArtworkHeaderCell();
    case 6uLL:
    case 0x11uLL:
    case 0x1AuLL:
    case 0x37uLL:
    case 0x3BuLL:
      return type metadata accessor for StandardFilterCell();
    case 7uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xFuLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x19uLL:
    case 0x25uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x3FuLL:
    case 0x43uLL:
      return sub_20C093BC8(a1);
    case 8uLL:
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E00);
      if (*(swift_projectBox() + *(v3 + 80)))
      {
        return type metadata accessor for RoundedDetailHeaderCell();
      }

      else
      {
        return type metadata accessor for FullWidthDetailHeaderCell();
      }

    case 0xBuLL:
      return type metadata accessor for DownloadButtonCell();
    case 0xCuLL:
      return type metadata accessor for DownloadButtonHeaderCell();
    case 0xDuLL:
      return type metadata accessor for DurationFilterCell();
    case 0xEuLL:
      return type metadata accessor for ContentUnavailableCell();
    case 0x10uLL:
    case 0x22uLL:
      return type metadata accessor for MarketingHeaderBannerCell();
    case 0x12uLL:
      return type metadata accessor for ExpandingDetailDescriptionCell();
    case 0x13uLL:
      return type metadata accessor for ExpandingTextCell();
    case 0x14uLL:
      return type metadata accessor for FilterHeaderCell();
    case 0x18uLL:
      return type metadata accessor for FullScreenMessageCell();
    case 0x1BuLL:
      return type metadata accessor for GuidedWalkMediaTagsCell();
    case 0x1CuLL:
    case 0x39uLL:
      return sub_20BED2F4C(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20));
    case 0x1DuLL:
      return type metadata accessor for HostedContentCell();
    case 0x1EuLL:
      v4 = &unk_27C7677D0;
      goto LABEL_57;
    case 0x1FuLL:
      v4 = &qword_27C762B80;
LABEL_57:
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
      v6 = swift_projectBox();
      v7 = (v5 + 64);
      goto LABEL_66;
    case 0x20uLL:
      v2 = &unk_27C772250;
      goto LABEL_65;
    case 0x21uLL:
      v2 = &qword_27C762B28;
      goto LABEL_65;
    case 0x23uLL:
      return type metadata accessor for MarketingHeaderUpsellCell();
    case 0x24uLL:
      return type metadata accessor for MetadataEntryCell();
    case 0x26uLL:
      return type metadata accessor for ModalityFilterCell();
    case 0x27uLL:
      return type metadata accessor for ModalityPickerItemCell();
    case 0x28uLL:
      return type metadata accessor for PreferredMusicGenreCell();
    case 0x29uLL:
      return type metadata accessor for MusicTrackCell();
    case 0x2AuLL:
      return type metadata accessor for MyLibraryEntryCell();
    case 0x2BuLL:
      return type metadata accessor for NotificationBannerCell();
    case 0x2CuLL:
      return type metadata accessor for OfflineWorkoutsBannerCell();
    case 0x2DuLL:
      return type metadata accessor for PlaylistDetailHeaderCell();
    case 0x2EuLL:
      return type metadata accessor for PreferenceDescriptionCell();
    case 0x2FuLL:
      return type metadata accessor for PreviewVideoLinkCell();
    case 0x30uLL:
      return type metadata accessor for ProgramDetailHeaderCell();
    case 0x31uLL:
      return type metadata accessor for ProgramMediaTagsCell();
    case 0x34uLL:
      return type metadata accessor for SchedulePickerCell();
    case 0x35uLL:
      return type metadata accessor for SegmentedOptionPickerCell();
    case 0x36uLL:
      return type metadata accessor for SelectedFilterCell();
    case 0x38uLL:
      return type metadata accessor for SortingHeaderCell();
    case 0x3AuLL:
      return type metadata accessor for ThemeFilterCell();
    case 0x3CuLL:
      return type metadata accessor for TrainerFilterCell();
    case 0x3DuLL:
      return type metadata accessor for PreferredTrainerCell();
    case 0x3EuLL:
      return type metadata accessor for UpNextQueueHeaderCell();
    case 0x40uLL:
      return type metadata accessor for ValueItemCell();
    case 0x41uLL:
      return type metadata accessor for WorkoutMediaTagsCell();
    case 0x42uLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28) > 1u)
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28) == 2)
        {
          return type metadata accessor for WeekdayPlannerModalityCell();
        }

        else
        {
          return type metadata accessor for WeekdayPlannerEmptyCell();
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28))
      {
        return type metadata accessor for WeekdayPlannerHeaderCell();
      }

      else
      {
        return type metadata accessor for WeekdayPlannerAddCell();
      }

    case 0x45uLL:
      return type metadata accessor for WorkoutPlanBannerCell();
    case 0x46uLL:
      return type metadata accessor for WorkoutPlanHeaderCell();
    case 0x47uLL:
      return type metadata accessor for WorkoutPlanGalleryBannerCell();
    case 0x48uLL:
      return type metadata accessor for WorkoutPlanGalleryBrickItemCell();
    case 0x49uLL:
      return type metadata accessor for WorkoutPlanDetailHeaderCell();
    case 0x4AuLL:
      v2 = &unk_27C762A70;
LABEL_65:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
      v6 = swift_projectBox();
      v7 = (v8 + 48);
LABEL_66:
      result = sub_20BED3C58(*(v6 + *v7));
      break;
    case 0x4BuLL:
      result = type metadata accessor for WorkoutPlanPreferenceRowCell();
      break;
    case 0x4CuLL:
      result = type metadata accessor for WorkoutPlanReviewHeaderCell();
      break;
    case 0x4DuLL:
      result = type metadata accessor for LoadingCell();
      break;
    default:
      result = type metadata accessor for AccountSettingAvatarRowCell();
      break;
  }

  return result;
}

uint64_t sub_20BED3500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C1823F0;
  *(v0 + 32) = type metadata accessor for AccountSettingAvatarRowCell();
  *(v0 + 40) = &off_2822C9C00;
  *(v0 + 48) = type metadata accessor for AccountSettingRowCell();
  *(v0 + 56) = &off_2822F48C0;
  *(v0 + 64) = type metadata accessor for ActionBannerCell();
  *(v0 + 72) = &off_2822E9950;
  *(v0 + 80) = type metadata accessor for ActionBrickItemCell();
  *(v0 + 88) = &off_282297588;
  *(v0 + 96) = type metadata accessor for ActionBrickRowCell();
  *(v0 + 104) = &off_2823005F8;
  *(v0 + 112) = type metadata accessor for ActionButtonsCell();
  *(v0 + 120) = &off_2822E82A0;
  *(v0 + 128) = type metadata accessor for ActivityPickerCell();
  *(v0 + 136) = &off_2822E9308;
  *(v0 + 144) = type metadata accessor for ArtworkHeaderCell();
  *(v0 + 152) = &off_2822A23B0;
  *(v0 + 160) = type metadata accessor for CircleItemCell();
  *(v0 + 168) = &off_2822B72D8;
  *(v0 + 176) = type metadata accessor for CircleRowCell();
  *(v0 + 184) = &off_2823033C8;
  *(v0 + 192) = type metadata accessor for ContentUnavailableCell();
  *(v0 + 200) = &off_2822AB5D8;
  *(v0 + 208) = type metadata accessor for DownloadButtonCell();
  *(v0 + 216) = &off_2823042C8;
  *(v0 + 224) = type metadata accessor for DownloadButtonHeaderCell();
  *(v0 + 232) = &off_2822E17C8;
  *(v0 + 240) = type metadata accessor for DurationFilterCell();
  *(v0 + 248) = &off_2822D12C0;
  *(v0 + 256) = type metadata accessor for DynamicBrickItemCell();
  *(v0 + 264) = &off_2822DDF08;
  *(v0 + 272) = type metadata accessor for EditorialCollectionBrickItemCell();
  *(v0 + 280) = &off_2822EE3D0;
  *(v0 + 288) = type metadata accessor for EditorialCollectionBrickRowCell();
  *(v0 + 296) = &off_2822C9130;
  *(v0 + 304) = type metadata accessor for ExpandingDetailDescriptionCell();
  *(v0 + 312) = &off_2822DF5C8;
  *(v0 + 320) = type metadata accessor for ExpandingTextCell();
  *(v0 + 328) = &off_2822A7818;
  *(v0 + 336) = type metadata accessor for FallbackCell();
  *(v0 + 344) = &off_2822B7120;
  *(v0 + 352) = type metadata accessor for FilterHeaderCell();
  *(v0 + 360) = &off_2822CE620;
  *(v0 + 368) = type metadata accessor for FullScreenMessageCell();
  *(v0 + 376) = &off_2822CF7D8;
  *(v0 + 384) = type metadata accessor for FullWidthDetailHeaderCell();
  *(v0 + 392) = &off_2822ABA08;
  *(v0 + 400) = type metadata accessor for GroupedBrickItemCell();
  *(v0 + 408) = &off_2822E0210;
  *(v0 + 416) = type metadata accessor for GuidedWalkMediaTagsCell();
  *(v0 + 424) = &off_2822F7838;
  *(v0 + 432) = type metadata accessor for GuidedWorkoutBrickItemCell();
  *(v0 + 440) = &off_28229AFA8;
  *(v0 + 448) = type metadata accessor for GuidedWorkoutBrickRowCell();
  *(v0 + 456) = &off_2822DE930;
  *(v0 + 464) = type metadata accessor for HighlightBrickItemCell();
  *(v0 + 472) = &off_2822AD880;
  *(v0 + 480) = type metadata accessor for HostedContentCell();
  *(v0 + 488) = &off_2822AE110;
  *(v0 + 496) = type metadata accessor for LoadingCell();
  *(v0 + 504) = &off_282307F40;
  *(v0 + 512) = type metadata accessor for MarketingHeaderBannerCell();
  *(v0 + 520) = &off_2822FAD50;
  *(v0 + 528) = type metadata accessor for MarketingHeaderUpsellCell();
  *(v0 + 536) = &off_2823065C0;
  *(v0 + 544) = type metadata accessor for MetadataEntryCell();
  *(v0 + 552) = &off_2822E2BA0;
  *(v0 + 560) = type metadata accessor for ModalityBrickItemCell();
  *(v0 + 568) = &off_2822F4D40;
  *(v0 + 576) = type metadata accessor for ModalityFilterCell();
  *(v0 + 584) = &off_2822AC048;
  *(v0 + 592) = type metadata accessor for ModalityPickerItemCell();
  *(v0 + 600) = &off_282305A18;
  *(v0 + 608) = type metadata accessor for MusicTrackCell();
  *(v0 + 616) = &off_2822B5990;
  *(v0 + 624) = type metadata accessor for MyLibraryEntryCell();
  *(v0 + 632) = &off_2822DE1B0;
  *(v0 + 640) = type metadata accessor for NotificationBannerCell();
  *(v0 + 648) = &off_2822B1B68;
  *(v0 + 656) = type metadata accessor for OfflineWorkoutsBannerCell();
  *(v0 + 664) = &off_282308118;
  *(v0 + 672) = type metadata accessor for PhoneIndexedBrickItemCell();
  *(v0 + 680) = &off_2822BAA88;
  *(v0 + 688) = type metadata accessor for PhoneStandardBrickRowCell();
  *(v0 + 696) = &off_2822AD4B8;
  *(v0 + 704) = type metadata accessor for PlaylistDetailHeaderCell();
  *(v0 + 712) = &off_2822E2558;
  *(v0 + 720) = type metadata accessor for PreferenceDescriptionCell();
  *(v0 + 728) = &off_2822998F0;
  *(v0 + 736) = type metadata accessor for PreferredMusicGenreCell();
  *(v0 + 744) = &off_282303100;
  *(v0 + 752) = type metadata accessor for PreferredTrainerCell();
  *(v0 + 760) = &off_2822F6E58;
  *(v0 + 768) = type metadata accessor for PreviewVideoLinkCell();
  *(v0 + 776) = &off_2822CE1E8;
  *(v0 + 784) = type metadata accessor for ProgramBrickItemCell();
  *(v0 + 792) = &off_2822A6690;
  *(v0 + 800) = type metadata accessor for ProgramBrickRowCell();
  *(v0 + 808) = &off_2822D2758;
  *(v0 + 816) = type metadata accessor for ProgramDetailHeaderCell();
  *(v0 + 824) = &off_2822C6748;
  *(v0 + 832) = type metadata accessor for ProgramMediaTagsCell();
  *(v0 + 840) = &off_2822DB4C8;
  *(v0 + 848) = type metadata accessor for RoundedDetailHeaderCell();
  *(v0 + 856) = &off_2822BD6E8;
  *(v0 + 864) = type metadata accessor for SchedulePickerCell();
  *(v0 + 872) = &off_2822DE5C8;
  *(v0 + 880) = type metadata accessor for SelectedFilterCell();
  *(v0 + 888) = &off_28229A7D8;
  *(v0 + 896) = type metadata accessor for SegmentedOptionPickerCell();
  *(v0 + 904) = &off_2822AD718;
  *(v0 + 912) = type metadata accessor for SortingHeaderCell();
  *(v0 + 920) = &off_2822F5C30;
  *(v0 + 928) = type metadata accessor for StandardBrickItemCell();
  *(v0 + 936) = &off_2822D2D48;
  *(v0 + 944) = type metadata accessor for StandardFilterCell();
  *(v0 + 952) = &off_2822B8068;
  *(v0 + 960) = type metadata accessor for ThemeFilterCell();
  *(v0 + 968) = &off_282301488;
  *(v0 + 976) = type metadata accessor for TrainerFilterCell();
  *(v0 + 984) = &off_2822B8298;
  *(v0 + 992) = type metadata accessor for UpNextQueueHeaderCell();
  *(v0 + 1000) = &off_2822BC500;
  *(v0 + 1008) = type metadata accessor for UpNextQueueRowCell();
  *(v0 + 1016) = &off_2822A88D0;
  *(v0 + 1024) = type metadata accessor for ValueItemCell();
  *(v0 + 1032) = &off_2822DAA68;
  *(v0 + 1040) = type metadata accessor for VideoBrickItemCell();
  *(v0 + 1048) = &off_28229D150;
  *(v0 + 1056) = type metadata accessor for VideoBrickRowCell();
  *(v0 + 1064) = &off_282297778;
  *(v0 + 1072) = type metadata accessor for WeekdayPlannerAddCell();
  *(v0 + 1080) = &off_2822B4B98;
  *(v0 + 1088) = type metadata accessor for WeekdayPlannerEmptyCell();
  *(v0 + 1096) = &off_2822F84E0;
  *(v0 + 1104) = type metadata accessor for WeekdayPlannerHeaderCell();
  *(v0 + 1112) = &off_2822C8518;
  *(v0 + 1120) = type metadata accessor for WeekdayPlannerModalityCell();
  *(v0 + 1128) = &off_2822AE8B0;
  *(v0 + 1136) = type metadata accessor for WorkoutMediaTagsCell();
  *(v0 + 1144) = &off_2822A6548;
  *(v0 + 1152) = type metadata accessor for WorkoutPlanBannerCell();
  *(v0 + 1160) = &off_2822AFCC0;
  *(v0 + 1168) = type metadata accessor for WorkoutPlanBrickItemCell();
  *(v0 + 1176) = &off_2822C6B10;
  *(v0 + 1184) = type metadata accessor for WorkoutPlanBrickRowCell();
  *(v0 + 1192) = &off_2822E4260;
  *(v0 + 1200) = type metadata accessor for WorkoutPlanDetailHeaderCell();
  *(v0 + 1208) = &off_2822FEC60;
  *(v0 + 1216) = type metadata accessor for WorkoutPlanHeaderCell();
  *(v0 + 1224) = &off_2822B8D70;
  *(v0 + 1232) = type metadata accessor for WorkoutPlanGalleryBannerCell();
  *(v0 + 1240) = &off_2822F7F20;
  *(v0 + 1248) = type metadata accessor for WorkoutPlanGalleryBrickItemCell();
  *(v0 + 1256) = &off_2822AF008;
  *(v0 + 1264) = type metadata accessor for WorkoutPlanPreferenceRowCell();
  *(v0 + 1272) = &off_2822B92C8;
  *(v0 + 1280) = type metadata accessor for WorkoutPlanReviewHeaderCell();
  *(v0 + 1288) = &off_2822A4D38;
  *(v0 + 1296) = type metadata accessor for WorkoutPlanScheduledItemCell();
  *(v0 + 1304) = &off_2822E96E0;
  return v0;
}

uint64_t sub_20BED3C58(char a1)
{
  switch(a1)
  {
    case 1:
    case 23:
      result = type metadata accessor for ActionBrickRowCell();
      break;
    case 2:
    case 3:
    case 4:
    case 12:
    case 21:
    case 24:
    case 30:
    case 35:
    case 36:
    case 40:
    case 41:
    case 44:
    case 45:
    case 47:
    case 48:
      result = sub_20C093E48(a1);
      break;
    case 5:
    case 13:
      result = type metadata accessor for GroupedBrickItemCell();
      break;
    case 6:
      result = type metadata accessor for CircleItemCell();
      break;
    case 7:
      result = type metadata accessor for CircleRowCell();
      break;
    case 8:
    case 25:
    case 28:
    case 29:
    case 34:
      result = type metadata accessor for PhoneStandardBrickRowCell();
      break;
    case 9:
    case 31:
      result = type metadata accessor for DynamicBrickItemCell();
      break;
    case 10:
      result = type metadata accessor for EditorialCollectionBrickItemCell();
      break;
    case 11:
      result = type metadata accessor for EditorialCollectionBrickRowCell();
      break;
    case 14:
    case 16:
      result = type metadata accessor for GuidedWorkoutBrickItemCell();
      break;
    case 15:
    case 17:
      result = type metadata accessor for GuidedWorkoutBrickRowCell();
      break;
    case 18:
      result = type metadata accessor for HighlightBrickItemCell();
      break;
    case 19:
      result = type metadata accessor for PhoneIndexedBrickItemCell();
      break;
    case 20:
    case 32:
    case 33:
      result = type metadata accessor for StandardBrickItemCell();
      break;
    case 22:
      result = type metadata accessor for ModalityBrickItemCell();
      break;
    case 26:
      result = type metadata accessor for ProgramBrickItemCell();
      break;
    case 27:
      result = type metadata accessor for ProgramBrickRowCell();
      break;
    case 37:
      result = type metadata accessor for UpNextQueueRowCell();
      break;
    case 38:
      result = type metadata accessor for VideoBrickItemCell();
      break;
    case 39:
      result = type metadata accessor for VideoBrickRowCell();
      break;
    case 42:
      result = type metadata accessor for WorkoutPlanBrickItemCell();
      break;
    case 43:
      result = type metadata accessor for WorkoutPlanBrickRowCell();
      break;
    case 46:
      result = type metadata accessor for WorkoutPlanScheduledItemCell();
      break;
    default:
      result = type metadata accessor for ActionBrickItemCell();
      break;
  }

  return result;
}

uint64_t sub_20BED3ECC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v2[5] = swift_task_alloc();
  v3 = sub_20C132E94();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_20C136C64();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BED4064, 0, 0);
}

uint64_t sub_20BED4064()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80));
  v1 = off_2822BE4E0;
  v2 = type metadata accessor for RemoteBrowsingSourceCoordinator();
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_20BED41B0;
  v4 = v0[12];

  return (v6)(v4, v2, &off_2822BE4D0);
}

uint64_t sub_20BED41B0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20BED4908;
  }

  else
  {
    v2 = sub_20BED42C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_20BED42C4()
{
  v1 = v0[4];
  sub_20C136AF4();
  v2 = sub_20C135734();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  if (v4 == 1)
  {
    sub_20B520158(v0[4], &unk_27C762390);
    (*(v6 + 56))(v8, 1, 1, v5);
LABEL_4:
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v12 = v0[2];
    sub_20B520158(v0[5], &qword_27C762AC0);
    (*(v10 + 32))(v12, v9, v11);
LABEL_5:

    v13 = v0[1];

    v13();
    return;
  }

  sub_20C135714();
  (*(v3 + 8))(v7, v2);
  if ((*(v6 + 48))(v8, 1, v5) == 1)
  {
    goto LABEL_4;
  }

  v14 = v0[8];
  v15 = v0[6];
  v16 = v0[7];
  (*(v16 + 32))(v0[9], v0[5], v15);
  sub_20C132E64();
  v17 = sub_20C132E04();
  v18 = *(v16 + 8);
  v0[15] = v18;
  v0[16] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v15);
  if ((v17 & 1) == 0)
  {
    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[10];
    v26 = v0[2];
    v18(v0[9], v0[6]);
    (*(v24 + 32))(v26, v23, v25);
    goto LABEL_5;
  }

  v19 = v0[14];
  v20 = *(*__swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80)) + 128);
  v21 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v20 + v22));
  sub_20B9FF8D0(v20 + v21);
  os_unfair_lock_unlock((v20 + v22));
  if (!v19)
  {
    v27 = swift_task_alloc();
    v0[17] = v27;
    *v27 = v0;
    v27[1] = sub_20BED4658;
    v28 = v0[2];

    MEMORY[0x2821AE7E0](v28);
  }
}

uint64_t sub_20BED4658()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20BED482C;
  }

  else
  {
    v2 = sub_20BED476C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BED476C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  (*(v0 + 120))(*(v0 + 72), *(v0 + 48));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20BED482C()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 16);
  (*(v0 + 120))(*(v0 + 72), *(v0 + 48));

  (*(v3 + 32))(v5, v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20BED4908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BED499C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_20C134F74();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20C136C64();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  v3[11] = swift_task_alloc();
  v6 = sub_20C135174();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BED4B5C, 0, 0);
}

uint64_t sub_20BED4B5C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = __swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80));
  __swift_project_boxed_opaque_existential_1((*v4 + 80), *(*v4 + 104));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    v8 = v0[2];
    sub_20B520158(v0[11], &unk_27C76BC00);
    v9 = sub_20C1356F4();
    sub_20BED929C(&qword_27C769680, MEMORY[0x277D51BF0]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D51B88], v9);
    swift_willThrow();

    (*(v6 + 16))(v8, v7, v5);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[12];
    v17 = *(v0[13] + 32);
    v17(v14, v0[11], v16);
    v17(v15, v14, v16);
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_20BED4E04;
    v19 = v0[10];

    return sub_20BED3ECC(v19);
  }
}

uint64_t sub_20BED4E04()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_20BED9770;
  }

  else
  {
    v2 = sub_20BED4F18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BED4F18()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v11 = v0[8];
  v12 = v0[12];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[2];
  MetricClickStream.applyingRemoteBrowsingEnvironment(_:)(v4, v5);
  MetricClickStream.applyingRemoteParticipant(_:)(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v4, v11);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BED5048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_20C1362F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20C136C64();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  v3[11] = swift_task_alloc();
  v6 = sub_20C135174();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BED5208, 0, 0);
}

uint64_t sub_20BED5208()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = __swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80));
  __swift_project_boxed_opaque_existential_1((*v4 + 80), *(*v4 + 104));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    v8 = v0[2];
    sub_20B520158(v0[11], &unk_27C76BC00);
    v9 = sub_20C1356F4();
    sub_20BED929C(&qword_27C769680, MEMORY[0x277D51BF0]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D51B88], v9);
    swift_willThrow();

    (*(v6 + 16))(v8, v7, v5);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[12];
    v17 = *(v0[13] + 32);
    v17(v14, v0[11], v16);
    v17(v15, v14, v16);
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_20BED54B0;
    v19 = v0[10];

    return sub_20BED3ECC(v19);
  }
}

uint64_t sub_20BED54B0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_20BED9770;
  }

  else
  {
    v2 = sub_20BED55C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BED55C4()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v11 = v0[8];
  v12 = v0[12];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[2];
  MetricPerformanceStream.applyingRemoteBrowsingEnvironment(_:)(v4, v5);
  MetricPerformanceStream.applyingRemoteParticipant(_:)(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v4, v11);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BED56F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_20C134C84();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20C136C64();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  v3[11] = swift_task_alloc();
  v6 = sub_20C135174();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BED58B4, 0, 0);
}

uint64_t sub_20BED58B4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = __swift_project_boxed_opaque_existential_1((v0[3] + 56), *(v0[3] + 80));
  __swift_project_boxed_opaque_existential_1((*v4 + 80), *(*v4 + 104));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    v8 = v0[2];
    sub_20B520158(v0[11], &unk_27C76BC00);
    v9 = sub_20C1356F4();
    sub_20BED929C(&qword_27C769680, MEMORY[0x277D51BF0]);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D51B88], v9);
    swift_willThrow();

    (*(v6 + 16))(v8, v7, v5);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[14];
    v15 = v0[15];
    v16 = v0[12];
    v17 = *(v0[13] + 32);
    v17(v14, v0[11], v16);
    v17(v15, v14, v16);
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_20BED5B5C;
    v19 = v0[10];

    return sub_20BED3ECC(v19);
  }
}

uint64_t sub_20BED5B5C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_20BED5DA0;
  }

  else
  {
    v2 = sub_20BED5C70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BED5C70()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v11 = v0[8];
  v12 = v0[12];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[2];
  MetricPlayStream.applyingRemoteBrowsingEnvironment(_:)(v4, v5);
  MetricPlayStream.applyingRemoteParticipant(_:)(v8);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v4, v11);
  (*(v2 + 8))(v1, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BED5DA0()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BED5E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v2 = sub_20C134F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640A8);
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  (*(v3 + 16))(v5, v26, v2);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v17 = v27;
  *(v16 + 16) = v27;
  (*(v3 + 32))(v16 + v15, v5, v2);
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourUI/RemoteBrowsingMetricClient.swift";
  *(v18 + 24) = 42;
  *(v18 + 32) = 2;
  *(v18 + 40) = 46;
  *(v18 + 48) = &unk_20C1825A8;
  *(v18 + 56) = v16;

  sub_20C137C94();
  sub_20B51CC64(v17 + 16, v31);
  v19 = swift_allocObject();
  sub_20B51C710(v31, v19 + 16);
  v21 = v28;
  v20 = v29;
  (*(v6 + 16))(v28, v10, v29);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BED9604;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v6 + 8))(v10, v20);
}

uint64_t sub_20BED6298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v2 = sub_20C1362F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764098);
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  (*(v3 + 16))(v5, v26, v2);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v17 = v27;
  *(v16 + 16) = v27;
  (*(v3 + 32))(v16 + v15, v5, v2);
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourUI/RemoteBrowsingMetricClient.swift";
  *(v18 + 24) = 42;
  *(v18 + 32) = 2;
  *(v18 + 40) = 46;
  *(v18 + 48) = &unk_20C182590;
  *(v18 + 56) = v16;

  sub_20C137C94();
  sub_20B51CC64(v17 + 16, v31);
  v19 = swift_allocObject();
  sub_20B51C710(v31, v19 + 16);
  v21 = v28;
  v20 = v29;
  (*(v6 + 16))(v28, v10, v29);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BED93E0;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v6 + 8))(v10, v20);
}

uint64_t sub_20BED66B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v2 = sub_20C134C84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764080);
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B544();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  (*(v3 + 16))(v5, v26, v2);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  v17 = v27;
  *(v16 + 16) = v27;
  (*(v3 + 32))(v16 + v15, v5, v2);
  v18 = swift_allocObject();
  *(v18 + 16) = "SeymourUI/RemoteBrowsingMetricClient.swift";
  *(v18 + 24) = 42;
  *(v18 + 32) = 2;
  *(v18 + 40) = 46;
  *(v18 + 48) = &unk_20C182568;
  *(v18 + 56) = v16;

  sub_20C137C94();
  sub_20B51CC64(v17 + 16, v31);
  v19 = swift_allocObject();
  sub_20B51C710(v31, v19 + 16);
  v21 = v28;
  v20 = v29;
  (*(v6 + 16))(v28, v10, v29);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  (*(v6 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20BED925C;
  v24[1] = v19;
  sub_20C137C94();
  return (*(v6 + 8))(v10, v20);
}

uint64_t sub_20BED6AD0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 128) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D8);
  *(v3 + 32) = swift_task_alloc();
  v4 = sub_20C135F84();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_20C13BB84();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BED6C84, 0, 0);
}

uint64_t sub_20BED6C84()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  sub_20C13B544();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v5 = off_2822BE4E0;
  v6 = type metadata accessor for RemoteBrowsingSourceCoordinator();
  v10 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_20BED6E30;
  v8 = v0[11];

  return (v10)(v8, v6, &off_2822BE4D0);
}

uint64_t sub_20BED6E30()
{

  if (v0)
  {

    v1 = sub_20BED74D8;
  }

  else
  {
    v1 = sub_20BED6F48;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20BED6F48()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = sub_20C136C64();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_20BC15E28(v2, v1);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[10];
  v7 = v0[6];
  if (v5 == 1)
  {
    v9 = v0[4];
    v8 = v0[5];
    sub_20B520158(v0[10], &qword_27C768690);
    (*(v7 + 56))(v9, 1, 1, v8);
    goto LABEL_21;
  }

  v10 = sub_20C136A64();
  (*(v4 + 8))(v6, v3);
  v11 = v10 + 56;
  v12 = -1;
  v13 = -1 << *(v10 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v10 + 56);
  v15 = (63 - v13) >> 6;
  v49 = (v7 + 32);
  v48 = (v7 + 8);

  v17 = v10;
  v18 = 0;
  v46 = v0;
  v47 = v10;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v21 = v0[7];
      v20 = v0[8];
      v22 = v0[5];
      (*(v7 + 16))(v20, *(v17 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v22);
      v23 = v7;
      v24 = *(v7 + 32);
      v24(v21, v20, v22);
      v25 = sub_20C135F74();
      v27 = v26;
      if (v25 == sub_20C1336F4() && v27 == v28)
      {
        break;
      }

      v30 = sub_20C13DFF4();

      if (v30)
      {
        goto LABEL_19;
      }

      v14 &= v14 - 1;
      v0 = v46;
      result = (*v48)(v46[7], v46[5]);
      v18 = v19;
      v17 = v47;
      v7 = v23;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

LABEL_19:

    v0 = v46;
    v24(v46[4], v46[7], v46[5]);
    v31 = 0;
LABEL_20:
    v33 = v0[5];
    v32 = v0[6];
    v34 = v0[4];
    (*(v32 + 56))(v34, v31, 1, v33);

    if ((*(v32 + 48))(v34, 1, v33) != 1)
    {
      v39 = v0[11];
      v40 = v0[9];
      v41 = v0[5];
      v42 = v0[2];
      (*v49)(v40, v0[4], v41);
      v43 = sub_20C135F24();
      v45 = v44;
      (*v48)(v40, v41);
      sub_20B520158(v39, &qword_27C768690);
      *v42 = v43;
      v42[1] = v45;

      v38 = v0[1];
      goto LABEL_23;
    }

LABEL_21:
    v35 = v0[11];
    sub_20B520158(v0[4], &qword_27C76B9D8);
    v36 = sub_20C133664();
    sub_20BED929C(&qword_27C76C3E8, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D50040], v36);
    swift_willThrow();
    sub_20B520158(v35, &qword_27C768690);

    v38 = v0[1];
LABEL_23:

    return v38();
  }

LABEL_7:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v31 = 1;
      goto LABEL_20;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BED74D8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = sub_20C136C64();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_20BC15E28(v2, v1);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[10];
  v7 = v0[6];
  if (v5 == 1)
  {
    v9 = v0[4];
    v8 = v0[5];
    sub_20B520158(v0[10], &qword_27C768690);
    (*(v7 + 56))(v9, 1, 1, v8);
    goto LABEL_21;
  }

  v10 = sub_20C136A64();
  (*(v4 + 8))(v6, v3);
  v11 = v10 + 56;
  v12 = -1;
  v13 = -1 << *(v10 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v10 + 56);
  v15 = (63 - v13) >> 6;
  v49 = (v7 + 32);
  v48 = (v7 + 8);

  v17 = v10;
  v18 = 0;
  v46 = v0;
  v47 = v10;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v21 = v0[7];
      v20 = v0[8];
      v22 = v0[5];
      (*(v7 + 16))(v20, *(v17 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v22);
      v23 = v7;
      v24 = *(v7 + 32);
      v24(v21, v20, v22);
      v25 = sub_20C135F74();
      v27 = v26;
      if (v25 == sub_20C1336F4() && v27 == v28)
      {
        break;
      }

      v30 = sub_20C13DFF4();

      if (v30)
      {
        goto LABEL_19;
      }

      v14 &= v14 - 1;
      v0 = v46;
      result = (*v48)(v46[7], v46[5]);
      v18 = v19;
      v17 = v47;
      v7 = v23;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

LABEL_19:

    v0 = v46;
    v24(v46[4], v46[7], v46[5]);
    v31 = 0;
LABEL_20:
    v33 = v0[5];
    v32 = v0[6];
    v34 = v0[4];
    (*(v32 + 56))(v34, v31, 1, v33);

    if ((*(v32 + 48))(v34, 1, v33) != 1)
    {
      v39 = v0[11];
      v40 = v0[9];
      v41 = v0[5];
      v42 = v0[2];
      (*v49)(v40, v0[4], v41);
      v43 = sub_20C135F24();
      v45 = v44;
      (*v48)(v40, v41);
      sub_20B520158(v39, &qword_27C768690);
      *v42 = v43;
      v42[1] = v45;

      v38 = v0[1];
      goto LABEL_23;
    }

LABEL_21:
    v35 = v0[11];
    sub_20B520158(v0[4], &qword_27C76B9D8);
    v36 = sub_20C133664();
    sub_20BED929C(&qword_27C76C3E8, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D50040], v36);
    swift_willThrow();
    sub_20B520158(v35, &qword_27C768690);

    v38 = v0[1];
LABEL_23:

    return v38();
  }

LABEL_7:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v31 = 1;
      goto LABEL_20;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BED7A68(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 128) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B9D8);
  *(v3 + 32) = swift_task_alloc();
  v4 = sub_20C135F84();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v5 = sub_20C13BB84();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BED7C1C, 0, 0);
}

uint64_t sub_20BED7C1C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  sub_20C13B544();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v5 = off_2822BE4E0;
  v6 = type metadata accessor for RemoteBrowsingSourceCoordinator();
  v10 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_20BED7DC8;
  v8 = v0[11];

  return (v10)(v8, v6, &off_2822BE4D0);
}

uint64_t sub_20BED7DC8()
{

  if (v0)
  {

    v1 = sub_20BED8470;
  }

  else
  {
    v1 = sub_20BED7EE0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20BED7EE0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = sub_20C136C64();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_20BC15E28(v2, v1);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[10];
  v7 = v0[6];
  if (v5 == 1)
  {
    v9 = v0[4];
    v8 = v0[5];
    sub_20B520158(v0[10], &qword_27C768690);
    (*(v7 + 56))(v9, 1, 1, v8);
    goto LABEL_21;
  }

  v10 = sub_20C136A64();
  (*(v4 + 8))(v6, v3);
  v11 = v10 + 56;
  v12 = -1;
  v13 = -1 << *(v10 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v10 + 56);
  v15 = (63 - v13) >> 6;
  v49 = (v7 + 32);
  v48 = (v7 + 8);

  v17 = v10;
  v18 = 0;
  v46 = v0;
  v47 = v10;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v21 = v0[7];
      v20 = v0[8];
      v22 = v0[5];
      (*(v7 + 16))(v20, *(v17 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v22);
      v23 = v7;
      v24 = *(v7 + 32);
      v24(v21, v20, v22);
      v25 = sub_20C135F74();
      v27 = v26;
      if (v25 == sub_20C1336F4() && v27 == v28)
      {
        break;
      }

      v30 = sub_20C13DFF4();

      if (v30)
      {
        goto LABEL_19;
      }

      v14 &= v14 - 1;
      v0 = v46;
      result = (*v48)(v46[7], v46[5]);
      v18 = v19;
      v17 = v47;
      v7 = v23;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

LABEL_19:

    v0 = v46;
    v24(v46[4], v46[7], v46[5]);
    v31 = 0;
LABEL_20:
    v33 = v0[5];
    v32 = v0[6];
    v34 = v0[4];
    (*(v32 + 56))(v34, v31, 1, v33);

    if ((*(v32 + 48))(v34, 1, v33) != 1)
    {
      v39 = v0[11];
      v40 = v0[9];
      v41 = v0[5];
      v42 = v0[2];
      (*v49)(v40, v0[4], v41);
      v43 = sub_20C135F34();
      v45 = v44;
      (*v48)(v40, v41);
      sub_20B520158(v39, &qword_27C768690);
      *v42 = v43;
      v42[1] = v45;

      v38 = v0[1];
      goto LABEL_23;
    }

LABEL_21:
    v35 = v0[11];
    sub_20B520158(v0[4], &qword_27C76B9D8);
    v36 = sub_20C133664();
    sub_20BED929C(&qword_27C76C3E8, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D50040], v36);
    swift_willThrow();
    sub_20B520158(v35, &qword_27C768690);

    v38 = v0[1];
LABEL_23:

    return v38();
  }

LABEL_7:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v31 = 1;
      goto LABEL_20;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BED8470()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = sub_20C136C64();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_20BC15E28(v2, v1);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[10];
  v7 = v0[6];
  if (v5 == 1)
  {
    v9 = v0[4];
    v8 = v0[5];
    sub_20B520158(v0[10], &qword_27C768690);
    (*(v7 + 56))(v9, 1, 1, v8);
    goto LABEL_21;
  }

  v10 = sub_20C136A64();
  (*(v4 + 8))(v6, v3);
  v11 = v10 + 56;
  v12 = -1;
  v13 = -1 << *(v10 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v10 + 56);
  v15 = (63 - v13) >> 6;
  v49 = (v7 + 32);
  v48 = (v7 + 8);

  v17 = v10;
  v18 = 0;
  v46 = v0;
  v47 = v10;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_10:
      v21 = v0[7];
      v20 = v0[8];
      v22 = v0[5];
      (*(v7 + 16))(v20, *(v17 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v22);
      v23 = v7;
      v24 = *(v7 + 32);
      v24(v21, v20, v22);
      v25 = sub_20C135F74();
      v27 = v26;
      if (v25 == sub_20C1336F4() && v27 == v28)
      {
        break;
      }

      v30 = sub_20C13DFF4();

      if (v30)
      {
        goto LABEL_19;
      }

      v14 &= v14 - 1;
      v0 = v46;
      result = (*v48)(v46[7], v46[5]);
      v18 = v19;
      v17 = v47;
      v7 = v23;
      if (!v14)
      {
        goto LABEL_7;
      }
    }

LABEL_19:

    v0 = v46;
    v24(v46[4], v46[7], v46[5]);
    v31 = 0;
LABEL_20:
    v33 = v0[5];
    v32 = v0[6];
    v34 = v0[4];
    (*(v32 + 56))(v34, v31, 1, v33);

    if ((*(v32 + 48))(v34, 1, v33) != 1)
    {
      v39 = v0[11];
      v40 = v0[9];
      v41 = v0[5];
      v42 = v0[2];
      (*v49)(v40, v0[4], v41);
      v43 = sub_20C135F34();
      v45 = v44;
      (*v48)(v40, v41);
      sub_20B520158(v39, &qword_27C768690);
      *v42 = v43;
      v42[1] = v45;

      v38 = v0[1];
      goto LABEL_23;
    }

LABEL_21:
    v35 = v0[11];
    sub_20B520158(v0[4], &qword_27C76B9D8);
    v36 = sub_20C133664();
    sub_20BED929C(&qword_27C76C3E8, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D50040], v36);
    swift_willThrow();
    sub_20B520158(v35, &qword_27C768690);

    v38 = v0[1];
LABEL_23:

    return v38();
  }

LABEL_7:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v31 = 1;
      goto LABEL_20;
    }

    v14 = *(v11 + 8 * v19);
    ++v18;
    if (v14)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BED8A6C()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_20C13B544();
  sub_20C13BB64();
  (*(v2 + 8))(v4, v1);
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  return sub_20C139EA4();
}

uint64_t sub_20BED8BA0(char a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourUI/RemoteBrowsingMetricClient.swift";
  *(v5 + 24) = 42;
  *(v5 + 32) = 2;
  *(v5 + 40) = 96;
  *(v5 + 48) = &unk_20C182550;
  *(v5 + 56) = v4;

  return sub_20C137C94();
}

uint64_t sub_20BED8C78(char a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourUI/RemoteBrowsingMetricClient.swift";
  *(v5 + 24) = 42;
  *(v5 + 32) = 2;
  *(v5 + 40) = 85;
  *(v5 + 48) = &unk_20C182540;
  *(v5 + 56) = v4;

  return sub_20C137C94();
}

uint64_t sub_20BED8D90()
{
  v0 = sub_20C133664();
  sub_20BED929C(&qword_27C76C3E8, MEMORY[0x277D500E0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D50070], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_20C137CA4();
}

uint64_t sub_20BED8E98()
{
  v0 = sub_20C133664();
  sub_20BED929C(&qword_27C76C3E8, MEMORY[0x277D500E0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D50070], v0);
  *(swift_allocObject() + 16) = v1;
  sub_20C1373B4();

  return sub_20C137CA4();
}

uint64_t sub_20BED8FE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BED6AD0(a1, v4, v5);
}

uint64_t sub_20BED90B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52A9D4;

  return sub_20BED7A68(a1, v4, v5);
}

uint64_t sub_20BED9160(uint64_t a1)
{
  v4 = *(sub_20C134C84() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BED56F4(a1, v6, v1 + v5);
}

uint64_t sub_20BED929C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BED92E4(uint64_t a1)
{
  v4 = *(sub_20C1362F4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BED5048(a1, v6, v1 + v5);
}

uint64_t objectdestroy_37Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_20BED94EC(uint64_t a1)
{
  v4 = *(sub_20C134F74() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BED499C(a1, v6, v1 + v5);
}

uint64_t sub_20BED961C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return a2(a1, v5, v6);
}

uint64_t sub_20BED96A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20BED986C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionOverlayPlatterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BED98C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v66 = a8;
  v67 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642C8);
  v60 = *(v62 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v63 = *(v17 - 8);
  v64 = v17;
  MEMORY[0x28223BE20](v17);
  v61 = &v55 - v18;
  v19 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BD71500(a7, v21, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    if (a6)
    {
      v50 = a4;
    }

    else
    {
      v50 = a5;
    }

    ObjectType = swift_getObjectType();
    (*(a2 + 72))(v67, a7, v50, ObjectType, a2);
    sub_20BEDAAB4(v21, type metadata accessor for ShelfItemAction);
    return;
  }

  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = *(v21 + 2);
  v25 = v21[24];
  v26 = swift_getObjectType();
  (*(a2 + 40))(v68, v26, a2);
  v78 = v68[8];
  v79 = v68[9];
  v80 = v69;
  v74 = v68[4];
  v75 = v68[5];
  v76 = v68[6];
  v77 = v68[7];
  v70 = v68[0];
  v71 = v68[1];
  v72 = v68[2];
  v73 = v68[3];
  if (sub_20B5EAF8C(&v70) == 1)
  {
LABEL_12:
    v52 = v22;
LABEL_13:
    sub_20BB125A4(v52, v23, v24, v25);
    return;
  }

  if (!(v25 >> 6))
  {
    sub_20B634408(v68);
    sub_20BEDAA94(v22, v23, v24, v25);
    sub_20BEDA40C(v25, a1, a2);
    sub_20BB125A4(v22, v23, v24, v25);
    goto LABEL_12;
  }

  if (v25 >> 6 == 1)
  {
    v67 = a1;
    v58 = a2;
    v27 = v22;
    v28 = v71;
    v29 = v77;
    v30 = v66;
    v31 = v66 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v57 = v24;
      v32 = *(v31 + 8);
      v33 = swift_getObjectType();
      v34 = *(v32 + 192);
      v56 = v27;
      v34(v30, v29, v28, v27, v33, v32);
      swift_unknownObjectRelease();
      sub_20B634408(v68);
      v35 = swift_allocObject();
      v36 = v58;
      *(v35 + 16) = v67;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_20BEDA2C0;
      *(v37 + 24) = v35;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_20BEDA344;
      *(v38 + 24) = v37;
      v39 = v59;
      v40 = v60;
      v41 = *(v60 + 16);
      v66 = v23;
      v42 = v62;
      v41(v59, v65, v62);
      v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v44 = swift_allocObject();
      (*(v40 + 32))(v44 + v43, v39, v42);
      v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v45 = sub_20BD714F4;
      v45[1] = v38;
      swift_unknownObjectRetain();
      v46 = v61;
      sub_20C137C94();
      (*(v40 + 8))(v65, v42);
      v47 = v64;
      v48 = sub_20C137CB4();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v48(sub_20B52347C, v49);

      sub_20BB125A4(v56, v66, v57, v25);
      (*(v63 + 8))(v46, v47);
      return;
    }

    sub_20B634408(v68);
    v52 = v27;
    goto LABEL_13;
  }

  if (v24 | v23 | v22 || v25 != 128)
  {
    sub_20B634408(v68);
    v53 = xmmword_20C1719C0;
    v54 = MEMORY[0x277D51768];
  }

  else
  {
    sub_20B634408(v68);
    v53 = xmmword_20C17BFC0;
    v54 = MEMORY[0x277D51780];
  }

  sub_20BED9F10(v54, v53);
}

uint64_t sub_20BED9F10(unsigned int *a1, __n128 a2)
{
  v32 = a2;
  v4 = type metadata accessor for PageMetricAction();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (v32.n128_u64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ShelfMetricAction();
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C136664();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = v9[7];
  v14 = *MEMORY[0x277D51408];
  v15 = sub_20C134F24();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  v16 = v9[8];
  v17 = sub_20C132C14();
  (*(*(v17 - 8) + 56))(&v11[v16], 1, 1, v17);
  v18 = v9[10];
  v19 = sub_20C135ED4();
  (*(*(v19 - 8) + 56))(&v11[v18], 1, 1, v19);
  v20 = v9[12];
  v21 = *a1;
  v22 = sub_20C1352E4();
  (*(*(v22 - 8) + 104))(&v11[v20], v21, v22);
  v23 = v9[13];
  v24 = sub_20C136E94();
  (*(*(v24 - 8) + 56))(&v11[v23], 1, 1, v24);
  v25 = MEMORY[0x277D84F90];
  v26 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  *&v11[v9[9]] = v32;
  v27 = &v11[v9[11]];
  *v27 = 0;
  *(v27 + 1) = 0;
  *&v11[v9[14]] = v26;
  sub_20BD71500(v11, v7 + *(v5 + 28), type metadata accessor for ShelfMetricAction);
  *v7 = v25;
  v28 = v2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 160))(v2, v7, ObjectType, v29);
    swift_unknownObjectRelease();
  }

  sub_20BEDAAB4(v7, type metadata accessor for PageMetricAction);
  return sub_20BEDAAB4(v11, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20BEDA2C0(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 96))(a1, ObjectType, v3);
}

uint64_t sub_20BEDA370(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_20C137C94();
}

uint64_t sub_20BEDA40C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v46 = a1;
  v51 = type metadata accessor for PageMetricAction();
  MEMORY[0x28223BE20](v51);
  v48 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45[-v5];
  v7 = sub_20C134F24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45[-v12];
  v14 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v14);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *MEMORY[0x277D52B38];
  v18 = sub_20C136664();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v13, v17, v18);
  (*(v19 + 56))(v13, 0, 1, v18);
  v20 = v46;
  v21 = *MEMORY[0x277D51408];
  v22 = *(v8 + 104);
  v49 = v7;
  v22(v10, v21, v7);
  v23 = sub_20C132C14();
  v24 = *(*(v23 - 8) + 56);
  v50 = v6;
  v24(v6, 1, 1, v23);
  if (v20 <= 3u)
  {
    if (v20 <= 1u)
    {
      v25 = v48;
      if (v20)
      {
        v47 = 0xEB00000000544E45;
        v26 = 0x4345525F54524F53;
      }

      else
      {
        v47 = 0x800000020C1953D0;
        v26 = 0xD000000000000014;
      }

      goto LABEL_17;
    }

    v25 = v48;
    if (v20 != 2)
    {
      v26 = 0xD000000000000011;
      v47 = 0x800000020C1953B0;
      goto LABEL_17;
    }

    v26 = 0x4D49545F54524F53;
LABEL_14:
    v47 = 0xE900000000000045;
    goto LABEL_17;
  }

  if (v20 <= 5u)
  {
    v25 = v48;
    if (v20 == 4)
    {
      v26 = 0x53554D5F54524F53;
      v47 = 0xEA00000000004349;
      goto LABEL_17;
    }

    v26 = 0x4E4F4E5F54524F53;
    goto LABEL_14;
  }

  v25 = v48;
  if (v20 == 6)
  {
    v47 = 0xEC00000052454E49;
    v26 = 0x4152545F54524F53;
  }

  else
  {
    v47 = 0xEA0000000000454DLL;
    v26 = 0x4548545F54524F53;
  }

LABEL_17:
  v27 = v14[8];
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(&v16[v27], 1, 1, v28);
  v29 = v14[10];
  v30 = *MEMORY[0x277D51790];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v16[v29], v30, v31);
  v32 = v14[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v16[v32], 1, 1, v33);
  v34 = MEMORY[0x277D84F90];
  v35 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20B5DF134(v13, v16, &unk_27C7622E0);
  (*(v8 + 32))(&v16[v14[5]], v10, v49);
  sub_20B5DF134(v50, &v16[v14[6]], &unk_27C7617F0);
  v36 = &v16[v14[7]];
  v37 = v47;
  *v36 = v26;
  v36[1] = v37;
  v38 = &v16[v14[9]];
  *v38 = 0;
  v38[1] = 0;
  *&v16[v14[12]] = v35;
  sub_20BD71500(v16, v25 + *(v51 + 20), type metadata accessor for ShelfMetricAction);
  *v25 = v34;
  v39 = v52;
  v40 = v52 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v40 + 8);
    ObjectType = swift_getObjectType();
    (*(v41 + 160))(v39, v25, ObjectType, v41);
    swift_unknownObjectRelease();
  }

  v43 = swift_getObjectType();
  (*(v54 + 96))(v20, v43);
  sub_20BEDAAB4(v25, type metadata accessor for PageMetricAction);
  return sub_20BEDAAB4(v16, type metadata accessor for ShelfMetricAction);
}

id sub_20BEDAA94(id result, int a2, id a3, unsigned __int8 a4)
{
  if (a4 >> 6 == 1)
  {
    return result;
  }

  if (!(a4 >> 6))
  {
  }

  return result;
}

uint64_t sub_20BEDAAB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20BEDAB18()
{
  result = qword_27C770130;
  if (!qword_27C770130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770130);
  }

  return result;
}

uint64_t PlaylistMenuOption.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6574656C6564;
  }

  if (a1 == 1)
  {
    return 1953064037;
  }

  return 1702257011;
}

uint64_t sub_20BEDABD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1953064037;
  if (v2 != 1)
  {
    v3 = 1702257011;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6574656C6564;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 1953064037;
  if (*a2 != 1)
  {
    v6 = 1702257011;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6574656C6564;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20C13DFF4();
  }

  return v9 & 1;
}

uint64_t sub_20BEDACB0@<X0>(_BYTE *a1@<X8>)
{
  result = _s9SeymourUI18PlaylistMenuOptionO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_20BEDACE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 1953064037;
  if (v2 != 1)
  {
    v4 = 1702257011;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6574656C6564;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_20BEDAD3C()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BEDADCC()
{
  sub_20C13CA64();
}

uint64_t sub_20BEDAE48()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI18PlaylistMenuOptionO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_20BEDAF24()
{
  result = qword_27C770138;
  if (!qword_27C770138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C770140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770138);
  }

  return result;
}

unint64_t sub_20BEDAF8C()
{
  result = qword_27C770148;
  if (!qword_27C770148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770148);
  }

  return result;
}

void sub_20BEDB010(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v12 = sub_20C133244();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51C88C(0, &qword_27C765FD8);
  v17 = sub_20C13D1A4();
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [v17 focusedItem];
  if (!v19)
  {

LABEL_14:
    (*(*&v13 + 56))(v11, 1, 1, v12);
LABEL_15:
    sub_20B520158(v11, &unk_27C7629C0);
    return;
  }

  v20 = *&v19;
  *&v73 = v8;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v22 = v21;
  v74 = *&a1;
  v72 = v3;
  if ([v21 isDescendantOfView_])
  {
    v70 = v13;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    v71 = v12;
    v69 = v15;
    if (v23)
    {
      swift_unknownObjectRetain();
    }

    sub_20B51C88C(0, &qword_27C762910);
    v68 = v20;
    swift_unknownObjectRetain();
    while (1)
    {
      v24 = v22;
      v25 = v16;
      v26 = sub_20C13D5F4();

      if (v26)
      {
        break;
      }

      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        v28 = v27;
        v29 = v24;

        v23 = v28;
      }

      v22 = [v24 superview];

      if (!v22)
      {
        goto LABEL_17;
      }
    }

LABEL_17:
    v12 = v71;
    v13 = v70;
    v15 = v69;
    if (v23)
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = [v25 indexPathForCell_];
        if (v31)
        {
          v32 = v73;
          v33 = v31;
          sub_20C1331E4();

          (*(*&v13 + 56))(v32, 0, 1, v12);
        }

        else
        {

          v32 = v73;
          (*(*&v13 + 56))(v73, 1, 1, v12);
        }

        sub_20B7FC3DC(v32, v11);
        goto LABEL_27;
      }

      ObjectType = swift_getObjectType();
      v35 = swift_conformsToProtocol2();
      if (v35)
      {
        (*(v35 + 8))(ObjectType, v35);

        swift_unknownObjectRelease();
        goto LABEL_28;
      }
    }
  }

  (*(*&v13 + 56))(v11, 1, 1, v12);
LABEL_27:

  swift_unknownObjectRelease();
LABEL_28:
  v36 = v74;
  if ((*(*&v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_15;
  }

  (*(*&v13 + 32))(v15, v11, v12);
  v37 = *(*&v36 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v38 = sub_20C133234();
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v74 = a2;
  if (v38 >= *(v37 + 16))
  {
LABEL_49:
    __break(1u);
    return;
  }

  v73 = *(v37 + 16 * v38 + 32);
  swift_unknownObjectRetain();
  v39 = sub_20C1331B4();
  v40 = [v16 layoutAttributesForItemAtIndexPath_];

  [v16 adjustedContentInset];
  v42 = v41;
  v44 = v43;
  [v16 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = -v42;
  [v16 contentSize];
  v55 = v44 + v54;
  v70 = v46;
  v79.origin.x = v46;
  v68 = v48;
  v79.origin.y = v48;
  v79.size.width = v50;
  v67 = v52;
  v79.size.height = v52;
  v56 = v55 - CGRectGetHeight(v79);
  if (v56 > v53)
  {
    v53 = v56;
  }

  sub_20C133234();
  sub_20C133234();
  v75 = v73;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770150);
  if (swift_dynamicCast())
  {
    v57 = *(&v77 + 1);
    v58 = v78;
    __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
    v59 = (*(v58 + 8))(v57, v58);
    __swift_destroy_boxed_opaque_existential_1(&v76);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    sub_20B520158(&v76, &qword_27C770158);
    v59 = 0;
  }

  sub_20B7FF548();
  if ((v61 & 1) == 0 && v40)
  {
    *&v73 = v53;
    v62 = v60;
    v63 = v40;
    [v63 frame];
    MinY = CGRectGetMinY(v80);
    v81.origin.x = v70;
    v81.origin.y = v68;
    v81.size.width = v50;
    v81.size.height = v67;
    Height = CGRectGetHeight(v81);
    [v63 frame];
    MaxY = CGRectGetMaxY(v82);

    if (MinY < v62)
    {
      (*(*&v13 + 8))(v15, v12);
      swift_unknownObjectRelease();

      return;
    }

    if (MaxY < Height + v62)
    {
      sub_20B7FF548();
      swift_unknownObjectRelease();

      (*(*&v13 + 8))(v15, v12);
      return;
    }
  }

  if (v59)
  {
    if (v40)
    {
      [v40 frame];
      CGRectGetMinY(v83);
      v84.origin.x = v70;
      v84.origin.y = v68;
      v84.size.width = v50;
      v84.size.height = v67;
      CGRectGetHeight(v84);
      [v40 frame];
      CGRectGetHeight(v85);
      swift_unknownObjectRelease();

      (*(*&v13 + 8))(v15, v12);
      return;
    }

    (*(*&v13 + 8))(v15, v12);
  }

  else
  {
    (*(*&v13 + 8))(v15, v12);
  }

  swift_unknownObjectRelease();
}

void sub_20BEDB8BC(char *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v110 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v100 - v13;
  v15 = sub_20C133244();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&a1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  sub_20B51C88C(0, &qword_27C765FD8);
  v108 = v19;
  v20 = sub_20C13D1A4();
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;
  v22 = [v20 focusedItem];
  if (*&v22 == 0.0)
  {

LABEL_14:
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_15:
    sub_20B520158(v14, &unk_27C7629C0);
    return;
  }

  v23 = *&v22;
  *&v103 = v11;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v25 = v24;
  v106 = a1;
  v26 = [v24 isDescendantOfView_];
  v105 = v16;
  v104 = v15;
  v107 = v18;
  if (!v26)
  {
    goto LABEL_21;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    swift_unknownObjectRetain();
  }

  sub_20B51C88C(0, &qword_27C762910);
  v102 = v23;
  swift_unknownObjectRetain();
  while (1)
  {
    v28 = v25;
    v29 = v108;
    v30 = sub_20C13D5F4();

    if (v30)
    {
      break;
    }

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = v31;
      v33 = v28;

      v27 = v32;
    }

    v25 = [v28 superview];

    if (!v25)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v16 = v105;
  v15 = v104;
  v18 = v107;
  if (!v27)
  {
LABEL_21:
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_27:

    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = [v29 indexPathForCell_];
    if (v35)
    {
      v36 = v103;
      v37 = v35;
      sub_20C1331E4();

      (*(v16 + 56))(v36, 0, 1, v15);
    }

    else
    {

      v36 = v103;
      (*(v16 + 56))(v103, 1, 1, v15);
    }

    sub_20B7FC3DC(v36, v14);
    goto LABEL_27;
  }

  ObjectType = swift_getObjectType();
  v39 = swift_conformsToProtocol2();
  if (v39)
  {
    (*(v39 + 8))(ObjectType, v39);

    swift_unknownObjectRelease();
  }

  else
  {

    (*(v16 + 56))(v14, 1, 1, v15);
    swift_unknownObjectRelease();
  }

  v18 = v107;
LABEL_28:
  v40 = v106;
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_15;
  }

  (*(v16 + 32))(v18, v14, v15);
  v41 = *&v40[OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves];
  v42 = sub_20C133234();
  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v102 = a3;
  if (v42 >= *(v41 + 16))
  {
LABEL_80:
    __break(1u);
    return;
  }

  v43 = (v41 + 32);
  v103 = *(v41 + 32 + 16 * v42);
  swift_unknownObjectRetain();
  v44 = sub_20C1331B4();
  v45 = v108;
  v46 = [v108 layoutAttributesForItemAtIndexPath_];

  [v45 adjustedContentInset];
  v48 = v47;
  v50 = v49;
  [v45 bounds];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = -v48;
  [v45 contentSize];
  v61 = v50 + v60;
  v101 = v52;
  v115.origin.x = v52;
  v62 = v58;
  v63 = v56;
  v64 = v54;
  v115.origin.y = v54;
  v115.size.width = v63;
  v115.size.height = v62;
  v65 = v61 - CGRectGetHeight(v115);
  if (v65 > v59)
  {
    v66 = v65;
  }

  else
  {
    v66 = v59;
  }

  v67 = sub_20C133234();
  v68 = *(v41 + 16);
  v106 = v46;
  if (v68)
  {
    v69 = v67;
    v70 = 0;
    while (v70 < *(v41 + 16))
    {
      v71 = *v43;
      swift_unknownObjectRetain();
      *&v112 = v109;
      v72 = (*(a6 + 16))(v110, a6);
      if (v72)
      {
        v73 = v72;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v71 == v73)
        {
          v74 = v69 == v70;
LABEL_43:
          v46 = v106;
          goto LABEL_45;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v70;
      v43 += 2;
      if (v68 == v70)
      {
        v74 = 0;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v74 = 0;
LABEL_45:
  v75 = sub_20C133234();
  v76 = *(v41 + 16);
  if (v76)
  {
    v77 = v75;
    v78 = (v41 + 16 * v76 + 16);
    while (1)
    {
      if (v76 > *(v41 + 16))
      {
        goto LABEL_78;
      }

      v79 = *v78;
      swift_unknownObjectRetain();
      *&v112 = v109;
      v80 = (*(a6 + 24))(v110, a6);
      if (v80)
      {
        v81 = v80;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v79 == v81)
        {
          v82 = v77 + 1 == v76;
LABEL_54:
          v46 = v106;
          goto LABEL_56;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v78 -= 2;
      if (!--v76)
      {
        v82 = 0;
        goto LABEL_54;
      }
    }
  }

  v82 = 0;
LABEL_56:
  v111 = v103;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770150);
  if (swift_dynamicCast())
  {
    v83 = *(&v113 + 1);
    v84 = v114;
    __swift_project_boxed_opaque_existential_1(&v112, *(&v113 + 1));
    v85 = (*(v84 + 8))(v83, v84);
    __swift_destroy_boxed_opaque_existential_1(&v112);
  }

  else
  {
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    sub_20B520158(&v112, &qword_27C770158);
    v85 = 0;
  }

  *&v112 = v109;
  v86 = *(a6 + 8);
  v86(v110, a6);
  if ((v88 & 1) != 0 || !v46)
  {
    if (v74)
    {
      (*(v105 + 8))(v107, v104);
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    *&v103 = v59;
    *&v100[1] = v66;
    v89 = v87;
    v90 = v46;
    [v90 frame];
    MinY = CGRectGetMinY(v116);
    v117.origin.x = v101;
    v117.origin.y = v54;
    v92 = v63;
    v117.size.width = v63;
    v93 = v62;
    v117.size.height = v62;
    Height = CGRectGetHeight(v117);
    [v90 frame];
    MaxY = CGRectGetMaxY(v118);

    if (v74 || MinY < v89)
    {
      (*(v105 + 8))(v107, v104);
      swift_unknownObjectRelease();

      return;
    }

    v96 = Height + v89;
    v46 = v106;
    v62 = v93;
    v63 = v92;
    v64 = v54;
    if (MaxY < v96)
    {
      *&v112 = v109;
      v86(v110, a6);
      swift_unknownObjectRelease();

      (*(v105 + 8))(v107, v104);
      return;
    }
  }

  if (v82)
  {
    [v108 contentSize];
    v119.origin.x = v101;
    v119.origin.y = v64;
    v119.size.width = v63;
    v119.size.height = v62;
    CGRectGetHeight(v119);
    swift_unknownObjectRelease();

    (*(v105 + 8))(v107, v104);
    return;
  }

  if (v85)
  {
    v97 = v105;
    v98 = v104;
    if (v46)
    {
      v99 = v107;
      [v46 frame];
      CGRectGetMinY(v120);
      v121.origin.x = v101;
      v121.origin.y = v64;
      v121.size.width = v63;
      v121.size.height = v62;
      CGRectGetHeight(v121);
      [v46 frame];
      CGRectGetHeight(v122);
      swift_unknownObjectRelease();

      (*(v97 + 8))(v99, v98);
      return;
    }

    (*(v105 + 8))(v107, v104);
  }

  else
  {
    (*(v105 + 8))(v107, v104);
  }

  swift_unknownObjectRelease();
}

void sub_20BEDC45C(uint64_t a1, uint64_t a2)
{
  sub_20BEDB010(a1, *a2);
  *a2 = v3;
  *(a2 + 8) = v4;
}

void sub_20BEDC4CC(uint64_t a1, uint64_t a2)
{
  sub_20BEDC51C(a1, *a2);
  *a2 = v3;
  *(a2 + 8) = v4;
}

void sub_20BEDC51C(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v63 - v8;
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51C88C(0, &qword_27C765FD8);
  v15 = sub_20C13D1A4();
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = [v15 focusedItem];
  if (!v17)
  {

LABEL_14:
    (*(*&v11 + 56))(v9, 1, 1, v10);
LABEL_15:
    sub_20B520158(v9, &unk_27C7629C0);
    return;
  }

  v18 = v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v20 = v19;
  v67 = *&v6;
  *&v68 = v13;
  if ([v19 isDescendantOfView_])
  {
    v65 = v11;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    v66 = v10;
    v64 = *&a1;
    if (v21)
    {
      swift_unknownObjectRetain();
    }

    sub_20B51C88C(0, &qword_27C762910);
    v63[1] = v18;
    swift_unknownObjectRetain();
    while (1)
    {
      v22 = v20;
      v23 = v14;
      v24 = sub_20C13D5F4();

      if (v24)
      {
        break;
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v26 = v25;
        v27 = v22;

        v21 = v26;
      }

      v20 = [v22 superview];

      if (!v20)
      {
        goto LABEL_17;
      }
    }

LABEL_17:
    v11 = v65;
    v10 = v66;
    *&a1 = v64;
    if (v21)
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = [v23 indexPathForCell_];
        if (v29)
        {
          v30 = *&v67;
          v31 = v29;
          sub_20C1331E4();

          (*(*&v11 + 56))(v30, 0, 1, v10);
        }

        else
        {

          v30 = *&v67;
          (*(*&v11 + 56))(COERCE_DOUBLE(*&v67), 1, 1, v10);
        }

        sub_20B7FC3DC(v30, v9);
        goto LABEL_27;
      }

      ObjectType = swift_getObjectType();
      v33 = swift_conformsToProtocol2();
      if (v33)
      {
        (*(v33 + 8))(ObjectType, v33);

        swift_unknownObjectRelease();
        goto LABEL_28;
      }
    }
  }

  (*(*&v11 + 56))(v9, 1, 1, v10);
LABEL_27:

  swift_unknownObjectRelease();
LABEL_28:
  v34 = v68;
  if ((*(*&v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_15;
  }

  (*(*&v11 + 32))(v34, v9, v10);
  v35 = *(a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v36 = sub_20C133234();
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v67 = a2;
    if (v36 < *(v35 + 16))
    {
      v68 = *(v35 + 16 * v36 + 32);
      swift_unknownObjectRetain();
      v37 = sub_20C1331B4();
      v38 = [v14 layoutAttributesForItemAtIndexPath_];

      [v14 adjustedContentInset];
      v40 = v39;
      v42 = v41;
      [v14 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = -v40;
      [v14 contentSize];
      v53 = v42 + v52;
      v64 = v50;
      v65 = v44;
      v73.origin.x = v44;
      v73.origin.y = v46;
      v73.size.width = v48;
      v73.size.height = v50;
      v54 = v53 - CGRectGetHeight(v73);
      if (v54 > v51)
      {
        v55 = v54;
      }

      else
      {
        v55 = v51;
      }

      sub_20C133234();
      sub_20C133234();
      v69 = v68;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770150);
      if (swift_dynamicCast())
      {
        v56 = *(&v71 + 1);
        v57 = v72;
        __swift_project_boxed_opaque_existential_1(&v70, *(&v71 + 1));
        v58 = (*(v57 + 8))(v56, v57);
        __swift_destroy_boxed_opaque_existential_1(&v70);
        if (!v38)
        {
          if (v58)
          {
            (*(*&v11 + 8))(v34, v10);
LABEL_46:
            swift_unknownObjectRelease();
            return;
          }

LABEL_45:
          (*(*&v11 + 8))(v34, v10);

          goto LABEL_46;
        }
      }

      else
      {
        v72 = 0;
        v70 = 0u;
        v71 = 0u;
        sub_20B520158(&v70, &qword_27C770158);
        if (!v38)
        {
          goto LABEL_45;
        }

        v58 = 0;
      }

      *&v68 = v55;
      v59 = v38;
      [v59 frame];
      MinY = CGRectGetMinY(v74);
      v75.size.height = v64;
      v75.origin.x = v65;
      v75.origin.y = v46;
      v75.size.width = v48;
      Height = CGRectGetHeight(v75);
      [v59 frame];
      MaxY = CGRectGetMaxY(v76);

      if (MinY < 780.0 || MaxY < Height + 780.0)
      {
        (*(*&v11 + 8))(v34, v10);
        swift_unknownObjectRelease();

        return;
      }

      if (v58)
      {
        [v59 frame];
        CGRectGetMinY(v77);
        v78.size.height = v64;
        v78.origin.x = v65;
        v78.origin.y = v46;
        v78.size.width = v48;
        CGRectGetHeight(v78);
        [v59 frame];
        CGRectGetHeight(v79);
        swift_unknownObjectRelease();

        (*(*&v11 + 8))(v34, v10);
        return;
      }

      goto LABEL_45;
    }
  }

  __break(1u);
}

uint64_t sub_20BEDCD94(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        sub_20B68E264(a2, &v17);
        if (v19)
        {
          type metadata accessor for CAShapeLayerLineCap(0);
          goto LABEL_22;
        }

LABEL_51:
        sub_20B8006F4(&v17);
        goto LABEL_52;
      }

      sub_20B68E264(a2, &v17);
      if (!v19)
      {
        goto LABEL_51;
      }

      type metadata accessor for CAShapeLayerLineJoin(0);
    }

    else
    {
      sub_20B68E264(a2, &v17);
      if (!v19)
      {
        goto LABEL_51;
      }

      type metadata accessor for CALayerCornerCurve(0);
    }

LABEL_22:
    if (swift_dynamicCast())
    {
      sub_20B68E264(a3, &v17);
      if (v19)
      {
        if (swift_dynamicCast())
        {
          v6 = sub_20C13C954();
          v8 = v7;
          if (v6 == sub_20C13C954() && v8 == v9)
          {
            v4 = 1;
          }

          else
          {
            v4 = sub_20C13DFF4();
          }

          return v4 & 1;
        }

        goto LABEL_52;
      }

      goto LABEL_51;
    }

LABEL_52:
    v4 = 0;
    return v4 & 1;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      sub_20B68E264(a2, &v17);
      if (!v19)
      {
        goto LABEL_51;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_52;
      }

      sub_20B68E264(a3, &v17);
      if (!v19)
      {
        goto LABEL_51;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_52;
      }

      v4 = 1;
      return v4 & 1;
    }

    if (*(a2 + 24))
    {
      sub_20B68E264(a2, &v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
      type metadata accessor for CGPath(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_60:
        v17 = 0;
        v18 = 0xE000000000000000;
        sub_20C13DC94();

        v17 = 0xD000000000000018;
        v18 = 0x800000020C1B62F0;
        v14 = &unk_27C770168;
        goto LABEL_61;
      }

      v5 = v16;
      if (!*(a3 + 24))
      {
        if (!v16)
        {
          goto LABEL_49;
        }

LABEL_46:

        goto LABEL_52;
      }

LABEL_41:
      sub_20B68E264(a3, &v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
      type metadata accessor for CGPath(0);
      if (swift_dynamicCast())
      {
        v10 = v16;
        if (v5)
        {
          if (!v16)
          {
            goto LABEL_46;
          }

          v11 = &unk_27C770160;
          v12 = type metadata accessor for CGPath;
          goto LABEL_45;
        }

        goto LABEL_47;
      }

      goto LABEL_60;
    }

    if (*(a3 + 24))
    {
      v5 = 0;
      goto LABEL_41;
    }

LABEL_49:
    v4 = 1;
    return v4 & 1;
  }

  if (!*(a2 + 24))
  {
    if (!*(a3 + 24))
    {
      goto LABEL_49;
    }

    v5 = 0;
LABEL_35:
    sub_20B68E264(a3, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
    type metadata accessor for CGColor(0);
    if (swift_dynamicCast())
    {
      v10 = v16;
      if (v5)
      {
        if (!v16)
        {
          goto LABEL_46;
        }

        v11 = &qword_27C768380;
        v12 = type metadata accessor for CGColor;
LABEL_45:
        sub_20BEDD370(v11, v12);
        v4 = sub_20C13B654();

        return v4 & 1;
      }

LABEL_47:
      if (v10)
      {

        goto LABEL_52;
      }

      goto LABEL_49;
    }

    goto LABEL_59;
  }

  sub_20B68E264(a2, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
  type metadata accessor for CGColor(0);
  if (swift_dynamicCast())
  {
    v5 = v16;
    if (!*(a3 + 24))
    {
      if (v16)
      {
        goto LABEL_46;
      }

      goto LABEL_49;
    }

    goto LABEL_35;
  }

LABEL_59:
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_20C13DC94();

  v17 = 0xD000000000000018;
  v18 = 0x800000020C1B62F0;
  v14 = &unk_27C770170;
LABEL_61:
  __swift_instantiateConcreteTypeFromMangledNameV2(v14);
  v15 = sub_20C13C9D4();
  MEMORY[0x20F2F4230](v15);

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BEDD370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BEDD3B8()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();

  return v2;
}

uint64_t sub_20BEDD594(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_20C13CB84();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20BEDD608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C13DAA4();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_20BEE3104(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_20C133244();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_20BEDD760@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20C13DAA4();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    a2(v8, *(a1 + 36), 0, a1);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_20BEDD84C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_20C13DAD4();
    v7 = v6;
    v8 = sub_20C13DB84();
    v10 = v9;
    v11 = MEMORY[0x20F2F5270](v5, v7, v8, v9);
    sub_20B526EA4(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_20B526EA4(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_20C13DAA4();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_20B526EA4(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_20BEDD970(uint64_t a1)
{
  v2 = sub_20C13DAA4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_20BB61B80(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t CatalogLockup.applyingRemoteBrowsingEnvironment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7678C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = &v80 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v11 - 8);
  v87 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7A0);
  MEMORY[0x28223BE20](v13 - 8);
  v94 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638A8);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = &v80 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770178);
  MEMORY[0x28223BE20](v17 - 8);
  v85 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8);
  MEMORY[0x28223BE20](v19 - 8);
  v83 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v21 - 8);
  v93 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v80 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763830);
  MEMORY[0x28223BE20](v26 - 8);
  v82 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  v95 = v2;
  v31 = sub_20C133E94();
  v33 = v32;
  v98 = 6;
  v96[0] = v31;
  v96[1] = v32;
  v35 = v34 & 1;
  LOBYTE(v97) = v34 & 1;
  sub_20B852060();
  sub_20B8520B4();
  v36 = sub_20C133C14();
  sub_20B683084(v31, v33, v35);
  v84 = a1;
  if (v36)
  {
    v37 = sub_20C136AA4();
  }

  else
  {
    v37 = sub_20C136B64();
  }

  MEMORY[0x28223BE20](v37);
  v78 = v95;
  v39 = sub_20BEE137C(sub_20BEDE6F8, v77, v38, MEMORY[0x277D53330], sub_20BC0F700, MEMORY[0x277D53330], sub_20BC0F700);
  v40 = *(v39 + 16);
  v91 = v30;
  v92 = v25;
  if (v40)
  {
    v81 = v6;
    v41 = sub_20BEDEF58(v40, 0, &qword_27C762668, &unk_20C150370, MEMORY[0x277D53330]);
    v42 = *(sub_20C137404() - 8);
    v43 = sub_20BEE2D04(v96, &v41[(*(v42 + 80) + 32) & ~*(v42 + 80)], v40, v39, MEMORY[0x277D53330]);

    sub_20B583EDC();
    if (v43 != v40)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = v81;
    v30 = v91;
    v25 = v92;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v96[0] = v41;
  sub_20BEDF054(v96);
  v44 = v82;

  v45 = v96[0];
  v46 = v96[0][2];
  if (v46)
  {
    v47 = v46 - 1;
    v48 = sub_20C137404();
    v49 = *(v48 - 8);
    (*(v49 + 16))(v30, v45 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v47, v48);

    (*(v49 + 56))(v30, 0, 1, v48);
  }

  else
  {

    v48 = sub_20C137404();
    (*(*(v48 - 8) + 56))(v30, 1, 1, v48);
  }

  sub_20B6A10A0(v30, v44);
  sub_20C137404();
  v50 = *(v48 - 8);
  if ((*(v50 + 48))(v44, 1, v48) == 1)
  {
    sub_20B520158(v44, &qword_27C763830);
    v81 = 0;
  }

  else
  {
    v81 = sub_20C1373D4();
    (*(v50 + 8))(v44, v48);
  }

  v51 = sub_20C136C44();
  MEMORY[0x28223BE20](v51);
  v78 = v95;
  v53 = sub_20BEE137C(sub_20BEE212C, v77, v52, MEMORY[0x277D53BA0], sub_20BC0D95C, MEMORY[0x277D53BA0], sub_20BC0D95C);
  v54 = v83;
  sub_20BEDD760(v53, sub_20BB614B8, MEMORY[0x277D53BA0], v83);

  v55 = sub_20C138034();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    sub_20B520158(v54, &qword_27C763EF8);
    v57 = 1;
  }

  else
  {
    sub_20C138004();
    (*(v56 + 8))(v54, v55);
    v57 = 0;
  }

  v58 = sub_20C132E94();
  v59 = *(*(v58 - 8) + 56);
  v59(v25, v57, 1, v58);
  v60 = sub_20C134E44();
  v61 = v85;
  (*(*(v60 - 8) + 56))();
  v59(v93, 1, 1, v58);
  v62 = sub_20C135434();
  v63 = v86;
  (*(*(v62 - 8) + 56))();
  v64 = sub_20C1335A4();
  (*(*(v64 - 8) + 56))();
  v65 = sub_20C137C24();
  v66 = v87;
  (*(*(v65 - 8) + 56))(v87, 1, 1, v65);
  v67 = sub_20C132C14();
  v68 = v88;
  (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
  v69 = sub_20C1341E4();
  v70 = *(*(v69 - 8) + 56);
  v71 = v89;
  v70(v89, 1, 1, v69);
  v70(v6, 1, 1, v69);
  v78 = 0;
  v79 = v6;
  v77[0] = 0;
  v77[1] = v71;
  v72 = v92;
  v73 = v63;
  v74 = v61;
  v75 = v93;
  sub_20C133FD4();
  sub_20B520158(v6, &qword_27C7678C0);
  sub_20B520158(v71, &qword_27C7678C0);
  sub_20B520158(v68, &unk_27C7617F0);
  sub_20B520158(v66, &unk_27C766680);
  sub_20B520158(v94, &qword_27C76B7A0);
  sub_20B520158(v73, &qword_27C7638A8);
  sub_20B520158(v75, &qword_27C762AC0);
  sub_20B520158(v74, &qword_27C770178);
  sub_20B520158(v72, &qword_27C762AC0);
  return sub_20B520158(v91, &qword_27C763830);
}

uint64_t sub_20BEDE72C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = v4;
  if (v3 == sub_20C133E44() && v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_20C13DFF4();
  }

  return v7 & 1;
}

void *sub_20BEDEA00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size_0(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *sub_20BEDEB1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_20BEDEC68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_20BEDECF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AEA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_20BEDEDA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size_0(v5);
  result = v5;
  v8 = ((v6 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 2) + (v8 >> 63));
  return result;
}

void *sub_20BEDEE28(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ADE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

size_t sub_20BEDEF58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_20BEDF054(void **a1)
{
  v2 = *(sub_20C137404() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BEDF0FC(v5);
  *a1 = v3;
}

void sub_20BEDF0FC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
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
        sub_20C137404();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137404() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20BEDF5C8(v8, v9, a1, v4);
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
    sub_20BEDF228(0, v2, 1, a1);
  }
}

void sub_20BEDF228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C137404();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C1373C4();
      v32 = v59;
      sub_20C1373C4();
      v62 = sub_20C132E04();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BEDF5C8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C137404();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20BEE01C8(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C1373C4();
      v34 = v159;
      sub_20C1373C4();
      LODWORD(v149) = sub_20C132E04();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C1373C4();
        v46 = v159;
        sub_20C1373C4();
        LOBYTE(v162) = sub_20C132E04() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
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

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20BEE01C8(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C1373C4();
    v120 = v159;
    sub_20C1373C4();
    LODWORD(v162) = sub_20C132E04();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
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