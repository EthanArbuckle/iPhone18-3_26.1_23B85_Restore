void sub_2273F3D2C(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD428, &qword_227684B48);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD418, &unk_227684B38);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_226E97D1C(v13, &qword_27D7BD428, &qword_227684B48);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_227669290();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_226E937DC, v21);

    (*(v15 + 8))(v18, v14);
    sub_226EB4668(a1, 0, MEMORY[0x277D84FB8]);
  }
}

uint64_t sub_2273F3F6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v5;
  v7[5] = v6;

  sub_226F5E0B4(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);

  return sub_227669270();
}

void sub_2273F4020(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  *&v7 = v8;
  BYTE8(v7) = 0;
  a1(&v7);
  sub_226EB4668(v6, 0, MEMORY[0x277D84FB8]);
}

uint64_t sub_2273F40C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1, a1[1]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2273F4108(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_226E93080(a1, a2, v2 + v6, *v7, v7[1], &qword_27D7BA1B0, &unk_2276775B0, &unk_283AB7BB0, sub_2273F41F4);
}

unint64_t sub_2273F4264()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2273F426C();
}

unint64_t sub_2273F426C()
{
  v23[4] = *MEMORY[0x277D85DE8];
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_227662560();
  v23[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v23];

  if (v7)
  {
    v8 = v23[0];
    sub_22766CC20();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC940, &qword_22767F830);
    if (swift_dynamicCast())
    {
      result = v22[1];
    }

    else
    {
      result = sub_22714972C(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v10 = v23[0];
    v11 = sub_2276622C0();

    swift_willThrow();
    sub_22766A740();
    v12 = v11;
    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = MEMORY[0x22AA995D0](v22[3], v22[4]);
      v19 = sub_226E97AE8(v17, v18, v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_226E8E000, v13, v14, "Unable to deserialize remote identifier: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA9A450](v16, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v20 = sub_22714972C(MEMORY[0x277D84F90]);

    result = v20;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2273F5F54(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2273F60B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2273F6118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2273F7F54(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2273F86A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CA8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2273F871C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227665060();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2273F8744(uint64_t a1)
{
  *(a1 + 24) = sub_2273F87AC(&qword_2813A5740);
  result = sub_2273F87AC(&qword_2813A5738);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2273F87AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2276650A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2273F87F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a3;
  v25 = a2;
  v26 = sub_22766A170();
  v24 = *(v26 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227669D60();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF30, &qword_22767CC30);
  v14 = sub_2276638D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_227670CD0;
  (*(v15 + 16))(v18 + v17, v4, v14);
  v19 = v28;
  sub_22756601C(v18, v13[1], *(v13 + 16), v13[3]);

  if (!v19)
  {
    swift_getObjectType();
    sub_227669D50();
    sub_2276699D0();
    (*(v23 + 8))(v12, v9);
    sub_22766A160();
    v21 = v26;
    sub_2276699D0();
    return (*(v24 + 8))(v8, v21);
  }

  return result;
}

unint64_t sub_2273F8AD4(uint64_t a1)
{
  result = sub_2273F8AFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2273F8AFC()
{
  result = qword_2813A57F0;
  if (!qword_2813A57F0)
  {
    sub_2276638D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A57F0);
  }

  return result;
}

void sub_2273F8B54(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - v6;
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v16 = [a1 identifier];
  if (!v16)
  {
    goto LABEL_5;
  }

  v38 = v13;
  v17 = v16;
  v37 = sub_22766C000();
  v19 = v18;

  v20 = [a1 type];
  if (!v20)
  {
    goto LABEL_4;
  }

  v39 = v19;
  v35 = a2;
  v36 = v9;
  v21 = v20;
  v22 = sub_22766C000();
  v24 = v23;

  v25 = MEMORY[0x22AA922F0](v22, v24);
  if (v25 == 3)
  {
LABEL_4:

LABEL_5:
    v26 = sub_227664DD0();
    sub_2273F973C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51028], v26);
    swift_willThrow();

    return;
  }

  v34[3] = v25;
  v28 = [a1 remoteURL];
  if (v28)
  {
    v29 = v28;
    sub_22766C000();
  }

  v30 = v38;
  sub_227662310();
  v31 = v36;
  if ((*(v36 + 48))(v7, 1, v8) == 1)
  {

    sub_226E97D1C(v7, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_5;
  }

  (*(v31 + 32))(v15, v7, v8);
  v38 = [a1 priority];
  (*(v31 + 16))(v30, v15, v8);
  [a1 requestTime];
  [a1 expirationTime];
  v32 = [a1 bundleIdentifier];
  if (v32)
  {
    v33 = v32;
    sub_22766C000();
  }

  sub_227665FF0();

  (*(v31 + 8))(v15, v8);
}

size_t static AssetRequestReference.representativeSamples()()
{
  v45 = sub_2276624A0();
  v46 = *(v45 - 8);
  v0 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA30, &qword_227684F88);
  v2 = *(v43 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = v34 - v4;
  v42 = sub_227666070();
  v5 = *(v42 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v42);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766C090();
  v10 = sub_227665FC0();
  v11 = sub_2276622F0();
  sub_226F5D274();
  v12 = sub_22766BE70();
  v13 = sub_22766BE70();
  v14 = sub_22766CB70();
  v67 = v10;
  v68[0] = v9;
  v68[1] = v68;
  v68[2] = &v67;
  v65 = &unk_283A94DB8;
  v66 = v11;
  v68[3] = &v66;
  v68[4] = &v65;
  v63 = v13;
  v64 = v12;
  v68[5] = &v64;
  v68[6] = &v63;
  v62 = v14;
  v68[7] = &v62;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA38, &qword_227684F90);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA40, &qword_227684F98);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v60 = v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v48 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v49 = sub_226F5BF60(&qword_27D7BDA48, &qword_27D7BDA38, &qword_227684F90);
  v50 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v51 = sub_226F5BF60(&qword_27D7BDA50, &qword_27D7BDA40, &qword_227684F98);
  v52 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v53 = v52;
  v54 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v47 = MEMORY[0x277D84F90];
    result = sub_226F1F4C8(0, v16, 0);
    v18 = 0;
    v19 = v47;
    v36 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v35 = (v46 + 16);
    v34[1] = v5 + 32;
    v40 = v2;
    v39 = v5;
    v38 = v15;
    v37 = v16;
    while (v18 < *(v15 + 16))
    {
      v20 = v36 + *(v2 + 72) * v18;
      v46 = v19;
      v21 = v41;
      sub_2273F9674(v20, v41);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + v43[20]);
      v25 = *(v21 + v43[24]);
      v26 = *(v21 + v43[28]);
      v27 = (v21 + v43[32]);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v21 + 16);
      (*v35)(v44, v21 + v43[16], v45);

      sub_227665FF0();
      v31 = v21;
      v19 = v46;
      sub_226E97D1C(v31, &qword_27D7BDA30, &qword_227684F88);
      v47 = v19;
      v33 = *(v19 + 16);
      v32 = *(v19 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_226F1F4C8(v32 > 1, v33 + 1, 1);
        v19 = v47;
      }

      ++v18;
      *(v19 + 16) = v33 + 1;
      result = (*(v39 + 32))(v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, v8, v42);
      v2 = v40;
      v15 = v38;
      if (v37 == v18)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2273F9674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA30, &qword_227684F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273F96E4(uint64_t a1)
{
  result = sub_2273F973C(&qword_28139B6C8, MEMORY[0x277D52038]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273F973C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2273F9784(void *a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666000();
  v7 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666040();
  sub_227665FE0();
  v8 = sub_22766BFD0();

  [a1 setType_];

  sub_227666060();
  sub_227662390();
  (*(v3 + 8))(v6, v2);
  v9 = sub_22766BFD0();

  [a1 setRemoteURL_];

  v10 = sub_227666050();
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [a1 setPriority_];
  sub_227666010();
  [a1 setRequestTime_];
  sub_227666020();
  [a1 setExpirationTime_];
  sub_227666030();
  if (v11)
  {
    v12 = sub_22766BFD0();
  }

  else
  {
    v12 = 0;
  }

  [a1 setBundleIdentifier_];
}

void sub_2273F99AC(void *a1, uint64_t a2)
{
  v6 = sub_227662190();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666AC0();
  v12 = sub_2275336F0(v11);
  if (!v3)
  {
    v13 = sub_227534CF8(a2, v12);
    v66 = 0;
    v14 = v13;
    v60 = v7;
    v61 = a2;

    [a1 setBodyFocusIdentifierss_];

    v15 = sub_227666A70();
    v62 = a1;
    v17 = v16;
    v63 = v15;
    v64 = v16;
    v19 = v18 & 1;
    v65 = v18 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
    sub_227663AD0();
    v20 = sub_22766BFD0();
    v21 = v17;
    v22 = v62;
    sub_226EB2DFC(v15, v21, v19);

    [v22 setContentRating_];

    v23 = sub_227666B00();
    v24 = v66;
    v25 = sub_227533614(v23);
    if (!v24)
    {
      v66 = v2;
      v26 = v61;
      v27 = sub_227533AEC(v61, v25);
      v28 = v60;
      v29 = v27;

      [v22 setContributorIdentifierss_];

      sub_227666A60();
      sub_2276620E0();
      (*(v28 + 8))(v10, v6);
      v30 = sub_22766BFD0();

      [v22 setDateReleased_];

      sub_227666B40();
      [v22 setDuration_];
      v31 = sub_227666B30();
      if (v31 >= 0x7FFFFFFF)
      {
        v32 = 0x7FFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      [v22 setEpisode_];
      v33 = sub_227666AD0();
      v34 = sub_227533640(v33);
      v35 = sub_227533D80(v26, v34);

      [v22 setEquipmentIdentifierss_];

      sub_227666A50();
      v36 = sub_22766BFD0();

      [v22 setIdentifier_];

      v37 = sub_227666B50();
      v39 = v38;
      v63 = v37;
      v64 = v38;
      v41 = v40 & 1;
      v65 = v40 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438);
      sub_227663AD0();
      v42 = sub_22766BFD0();
      sub_226EB2DFC(v37, v39, v41);

      [v22 setMediaType_];

      sub_227666A90();
      v43 = sub_22766BFD0();

      [v22 setModalityIdentifier_];

      v44 = sub_227666AE0();
      v45 = sub_22753366C(v44);
      v46 = sub_2275342A8(v61, v45);

      [v22 setMusicGenreIdentifierss_];

      v47 = sub_227666AF0();
      v48 = sub_22753371C(v47);
      v49 = sub_227534F8C(v61, v48);

      [v62 setSkillLevelIdentifierss_];

      v50 = sub_227666A80();
      v51 = sub_227533698(v50);
      v52 = sub_22753453C(v61, v51);

      [v62 setThemeIdentifierss_];

      sub_227666B10();
      if (v53)
      {
        v54 = sub_22766BFD0();
      }

      else
      {
        v54 = 0;
      }

      [v62 setTitle_];

      v55 = sub_227666AA0();
      v56 = sub_2275336C4(v55);
      v57 = sub_2275347D0(v61, v56);

      [v62 setTrainerIdentifierss_];

      v58 = sub_227666B20();
      v59 = sub_2276484A0(v61, v58);

      [v62 setTraits_];
    }
  }
}

size_t static CatalogWorkoutReference.representativeSamples()()
{
  v45 = sub_227662190();
  v55 = *(v45 - 8);
  v0 = *(v55 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA58, &qword_227685008);
  v2 = *(v43 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v33 - v4;
  v41 = sub_227666B60();
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x22AA8E410](v7);
  sub_226F5D274();
  v10 = sub_22766BE70();
  sub_226F5D220();
  v11 = sub_22766CFA0();
  v12 = sub_22766C090();
  v13 = sub_22766C090();
  v14 = sub_22766C090();
  v73 = v10;
  v74[0] = v9;
  v74[1] = v74;
  v74[2] = &v73;
  v71 = v12;
  v72 = v11;
  v74[3] = &v72;
  v74[4] = &v71;
  v69 = v14;
  v70 = v13;
  v74[5] = &v70;
  v74[6] = &v69;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD8, &qword_2276772D8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v67 = v66;
  v68 = v66;
  v57 = sub_226F5BF60(&qword_27D7B9FE8, &qword_27D7B9FD8, &qword_2276772D8);
  v58 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v59 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v60 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v61 = v60;
  v62 = v60;
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v56 = MEMORY[0x277D84F90];
    result = sub_226F1F928(0, v16, 0);
    v18 = 0;
    v35 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v19 = v56;
    v34 = (v55 + 16);
    v33[1] = v5 + 32;
    v39 = v2;
    v38 = v5;
    v37 = v15;
    v36 = v16;
    v20 = v42;
    while (v18 < *(v15 + 16))
    {
      sub_2273FA734(v35 + *(v2 + 72) * v18, v20);
      v21 = *(v20 + v43[12]);
      v54 = *(v20 + v43[16]);
      v22 = (v20 + v43[20]);
      v24 = *v22;
      v23 = v22[1];
      v53 = v24;
      v47 = v23;
      v25 = (v20 + v43[24]);
      v26 = v25[1];
      v51 = *v25;
      v27 = (v20 + v43[28]);
      v28 = v27[1];
      v48 = *v27;
      v50 = sub_22766C090();
      v52 = sub_22766C090();
      v29 = *v34;
      v55 = v19;
      v29(v44, v20, v45);
      v49 = sub_22766C090();
      v46 = sub_22766C090();
      sub_22766C090();
      sub_22766C090();
      sub_22766C090();
      sub_226F50BBC(&unk_283A94E00);
      sub_226E97D1C(&unk_283A94E20, &qword_27D7BEF50, &qword_227671540);

      v30 = v40;
      v19 = v55;
      sub_227666AB0();
      sub_226E97D1C(v20, &qword_27D7BDA58, &qword_227685008);
      v56 = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F1F928(v31 > 1, v32 + 1, 1);
        v19 = v56;
      }

      ++v18;
      *(v19 + 16) = v32 + 1;
      result = (*(v38 + 32))(v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v30, v41);
      v2 = v39;
      v15 = v37;
      if (v36 == v18)
      {

        return v19;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2273FA734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA58, &qword_227685008);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2273FA7A4(uint64_t a1)
{
  result = sub_2273FA7FC(&qword_28139B5C8, MEMORY[0x277D52828]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273FA7FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2273FA844(uint64_t a1)
{
  v44 = sub_227664530();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_227664E40();
  v6 = *(v42 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v42);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v33[1] = v1;
    v49 = MEMORY[0x277D84F90];
    sub_226F1FA48(0, v10, 0);
    v12 = -1 << *(a1 + 32);
    v47 = a1 + 56;
    v48 = v49;
    result = sub_22766CC90();
    v13 = result;
    v14 = 0;
    v40 = v6;
    v41 = v3;
    v38 = v3 + 8;
    v39 = v3 + 16;
    v36 = a1;
    v37 = v6 + 32;
    v34 = a1 + 64;
    v35 = v10;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v47 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 36);
      v45 = v14;
      v46 = v18;
      v19 = v41;
      v20 = v43;
      v21 = v44;
      (*(v41 + 16))(v43, *(a1 + 48) + *(v41 + 72) * v13, v44);
      sub_227664510();
      sub_2276644F0();
      sub_227664490();
      sub_227664E30();
      (*(v19 + 8))(v20, v21);
      v22 = v48;
      v49 = v48;
      v24 = *(v48 + 16);
      v23 = *(v48 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1FA48(v23 > 1, v24 + 1, 1);
        v22 = v49;
      }

      *(v22 + 16) = v24 + 1;
      v25 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v48 = v22;
      result = (*(v40 + 32))(v22 + v25 + *(v40 + 72) * v24, v9, v42);
      a1 = v36;
      v15 = 1 << *(v36 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v26 = *(v47 + 8 * v17);
      if ((v26 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      if (v46 != *(v36 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v15 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v35;
      }

      else
      {
        v28 = v17 << 6;
        v29 = v17 + 1;
        v16 = v35;
        v30 = (v34 + 8 * v17);
        while (v29 < (v15 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_226EB526C(v13, v46, 0);
            v15 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v13, v46, 0);
      }

LABEL_4:
      v14 = v45 + 1;
      v13 = v15;
      if (v45 + 1 == v16)
      {
        return v48;
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
  }

  return result;
}

uint64_t sub_2273FAC2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_226F20148(0, v1, 0);
  v2 = v29;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v24 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v25 = *(v7 + 36);
    v26 = *(*(v7 + 48) + v6);
    sub_226ED978C();
    result = sub_227663B80();
    v12 = v27;
    v14 = *(v29 + 16);
    v13 = *(v29 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_226F20148((v13 > 1), v14 + 1, 1);
      v12 = v27;
    }

    *(v29 + 16) = v14 + 1;
    v15 = v29 + 24 * v14;
    *(v15 + 32) = v12;
    *(v15 + 48) = v28;
    v9 = 1 << *(v7 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v11);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v25 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v24;
    }

    else
    {
      v18 = v11 << 6;
      v19 = v11 + 1;
      v20 = (a1 + 64 + 8 * v11);
      v10 = v24;
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_226EB526C(v6, v25, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v25, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
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

uint64_t sub_2273FAE90(uint64_t a1)
{
  v46 = sub_227665CA0();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2276627D0();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_226F20288(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_227665C40();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F20288(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2273FB254(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22766CD20();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x277D84F90];
    sub_22766CF30();
    result = sub_22766CCD0();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x277D84F90];
  sub_22766CF30();
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_2274DD7C8(v28, v29, v30, a1);
    v14 = v13;
    v15 = ACHCodableFromTemplate();

    sub_22766CF00();
    v16 = *(v31 + 16);
    sub_22766CF40();
    sub_22766CF50();
    result = sub_22766CF10();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_22766CCF0())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB50, &qword_227685560);
      v8 = sub_22766C6A0();
      sub_22766CD70();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_226EB526C(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_226EB526C(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_2273FB648(unint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5, void (*a6)(id *))
{
  v8 = a1;
  v24[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22766CCE0();
    sub_226E99364(0, a3, a4);
    sub_226ECCEB4(a5, a3, a4);
    sub_22766C700();
    v8 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
    v14 = v24[6];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(a1 + 32);
    v11 = (a1 + 56);
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = (v17 & *(a1 + 56));
  }

  v18 = (v12 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v13;
    v20 = v14;
    v21 = v13;
    if (!v14)
    {
      break;
    }

LABEL_12:
    v22 = (v20 - 1) & v20;
    if (!*(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20))))))
    {
LABEL_18:
      sub_226EBB21C();
      return;
    }

    while (1)
    {
      a6(v24);

      v13 = v21;
      v14 = v22;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22766CD50())
      {
        sub_226E99364(0, a3, a4);
        swift_dynamicCast();
        v21 = v13;
        v22 = v14;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v21 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_18;
    }

    v20 = v11[v21];
    ++v19;
    if (v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2273FB844(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2270AE890(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2273FB948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(char *, char *))
{
  v29 = a4;
  v6 = a3(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v28 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = v28 - v16;
  v18 = 0;
  v30 = a1;
  v31 = a2;
  v21 = *(a1 + 56);
  v20 = a1 + 56;
  v19 = v21;
  v22 = 1 << *(v20 - 24);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v28[1] = v7 + 32;
  v28[2] = v7 + 16;
  v28[0] = v7 + 8;
  if ((v23 & v19) != 0)
  {
    do
    {
      v26 = v18;
LABEL_9:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v7 + 16))(v17, *(v30 + 48) + *(v7 + 72) * (v27 | (v26 << 6)), v6);
      (*(v7 + 32))(v11, v17, v6);
      v29(v14, v11);
      result = (*(v7 + 8))(v14, v6);
    }

    while (v24);
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      return v31;
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      v18 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2273FBB74(uint64_t a1)
{
  v51 = sub_2276682D0();
  v55 = *(v51 - 8);
  v2 = *(v55 + 64);
  v3 = MEMORY[0x28223BE20](v51);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v53 = &v45 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v7);
  v50 = &v45 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v56 = MEMORY[0x277D84F98];
  v52 = a1;
  v15 = *(a1 + 56);
  v14 = a1 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v47 = xmmword_227670CD0;
  v48 = v9;
  while (v18)
  {
LABEL_9:
    v21 = *(v55 + 72);
    v22 = v50;
    sub_226F1B5DC(*(v52 + 48) + v21 * (__clz(__rbit64(v18)) | (v11 << 6)), v50);
    sub_226F4FF14(v22, v9);
    sub_226F1B5DC(v9, v53);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v54 = v21;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v24 = 2;
      }

      else
      {
        sub_22742FDAC(v53, MEMORY[0x277D53468]);
        v24 = 0;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v24 = 1;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_22742FDAC(v53, MEMORY[0x277D53468]);
      v24 = 3;
    }

    else
    {
      sub_22742FDAC(v53, MEMORY[0x277D53468]);
      v24 = 4;
    }

    v26 = sub_226F491D4(v24);
    v27 = v12[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_32;
    }

    v30 = v25;
    if (v12[3] < v29)
    {
      sub_226FE48D4(v29, 1);
      v12 = v56;
      v31 = sub_226F491D4(v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_34;
      }

      v26 = v31;
    }

    v18 &= v18 - 1;
    if (v30)
    {
      v33 = v12[7];
      sub_226F4FF14(v9, v49);
      v34 = *(v33 + 8 * v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 8 * v26) = v34;
      v46 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_2273A5310(0, v34[2] + 1, 1, v34);
        *(v33 + 8 * v26) = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_2273A5310(v36 > 1, v37 + 1, 1, v34);
        *(v46 + 8 * v26) = v34;
      }

      v34[2] = v37 + 1;
      sub_226F4FF14(v49, v34 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + v37 * v54);
      v9 = v48;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B0, &qword_227673180);
      v38 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v47;
      v40 = v39 + v38;
      v9 = v48;
      sub_226F4FF14(v48, v40);
      v12[(v26 >> 6) + 8] |= 1 << v26;
      *(v12[6] + 8 * v26) = v24;
      *(v12[7] + 8 * v26) = v39;
      v41 = v12[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_33;
      }

      v12[2] = v43;
    }
  }

  while (1)
  {
    v20 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return v12;
    }

    v18 = *(v14 + 8 * v20);
    ++v11;
    if (v18)
    {
      v11 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2273FBFDC(uint64_t a1, uint64_t (*a2)(char *))
{
  v50 = a2;
  v3 = sub_2276682D0();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v48 = a1;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v46 = v11;
  v47 = a1 + 64;
  while (1)
  {
    v15 = v13;
    if (!v10)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v13 = v15;
LABEL_10:
      v16 = (v13 << 9) | (8 * __clz(__rbit64(v10)));
      v17 = *(v48 + 56);
      v45 = *(*(v48 + 48) + v16);
      v18 = *(v17 + v16);
      v51 = v14;
      v19 = *(v18 + 16);
      v49 = v18;
      if (v19)
      {
        v20 = v44;
        v21 = v18 + ((*(v44 + 80) + 32) & ~*(v44 + 80));

        v22 = *(v20 + 72);
        v23 = v14;
        do
        {
          sub_226F1B5DC(v21, v6);
          v24 = v50(v6);
          v25 = sub_22742FDAC(v6, MEMORY[0x277D53468]);
          if (v24)
          {
            MEMORY[0x22AA985C0](v25);
            if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22766C360();
            }

            sub_22766C3A0();
            v23 = v51;
          }

          v21 += v22;
          --v19;
        }

        while (v19);
      }

      else
      {

        v23 = v14;
      }

      v26 = v23 >> 62 ? sub_22766CD20() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 &= v10 - 1;
      if (v26)
      {
        break;
      }

      v15 = v13;
      v11 = v46;
      v7 = v47;
      v14 = MEMORY[0x277D84F90];
      if (!v10)
      {
LABEL_7:
        while (1)
        {
          v13 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v13 >= v11)
          {

            return v43;
          }

          v10 = *(v7 + 8 * v13);
          ++v15;
          if (v10)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v27 = sub_22766C2B0();

    v28 = [objc_opt_self() andPredicateWithSubpredicates_];

    v29 = v43[2];
    v14 = MEMORY[0x277D84F90];
    if (v43[3] <= v29)
    {
      sub_226FE466C(v29 + 1, 1);
    }

    v30 = v52;
    v31 = *(v52 + 40);
    result = sub_22766D360();
    v32 = v30 + 64;
    v43 = v30;
    v33 = -1 << *(v30 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v30 + 64 + 8 * (v34 >> 6))) == 0)
    {
      break;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v30 + 64 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v11 = v46;
    v7 = v47;
LABEL_36:
    *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = v43;
    *(v43[6] + 8 * v36) = v45;
    *(v41[7] + 8 * v36) = v28;
    ++v41[2];
  }

  v37 = 0;
  v38 = (63 - v33) >> 6;
  v11 = v46;
  v7 = v47;
  while (++v35 != v38 || (v37 & 1) == 0)
  {
    v39 = v35 == v38;
    if (v35 == v38)
    {
      v35 = 0;
    }

    v37 |= v39;
    v40 = *(v32 + 8 * v35);
    if (v40 != -1)
    {
      v36 = __clz(__rbit64(~v40)) + (v35 << 6);
      goto LABEL_36;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_2273FC414(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(a3, a2))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result && a3 - a2 < result)
  {
LABEL_9:
    if (a3 >= a2)
    {
      return a2;
    }

    goto LABEL_13;
  }

  v3 = a2 + result;
  if (!__OFADD__(a2, result))
  {
    if (v3 < a2)
    {
      goto LABEL_15;
    }

    v4 = v3 <= a3;
    a3 = a2 + result;
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2273FC470(uint64_t result, uint64_t a2)
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

uint64_t sub_2273FC4D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_22742DEB0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_22742DE4C(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_227662550();
    v15 = v14;
    result = sub_226EDC420(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2273FC638(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v4 = *(a3(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_2273FCB68(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v8 = v4;
  v9 = a2(0);
  if (v5)
  {
    return v4;
  }

  v10 = v9;
  [v9 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v12 = sub_22766C820();
  v13 = [v12 keyPath];

  v14 = sub_22766C000();
  v16 = v15;

  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  v17 = sub_22766C2B0();

  [v10 setPropertiesToFetch_];

  v18 = *(v8 + 16);
  sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  sub_22766C9E0();
  v20 = a3();

  if (!v20)
  {
    v4 = sub_227664DD0();
    sub_22742F224(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v26, *MEMORY[0x277D51018], v4);
    swift_willThrow();

    return v4;
  }

  v4 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v21 = *(v20 + 16);
  if (!v21)
  {
LABEL_11:

    return v4;
  }

  v22 = 0;
  while (v22 < *(v20 + 16))
  {
    v23 = v22 + 1;
    v24 = *(v20 + 32 + 8 * v22);

    result = a4(v25);
    v22 = v23;
    if (v21 == v23)
    {
      v4 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2273FCE18()
{
  v0 = sub_227665FA0();
  v1 = sub_2273FBB74(v0);
  v2 = sub_2273FBFDC(v1, sub_226F19EA8);

  v3 = sub_227665F90();
  v4 = sub_2273FBB74(v3);
  v5 = sub_2273FBFDC(v4, sub_226F1A9D0);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_226ECC830(*(v2 + 16), 0);
  v8 = sub_2274CF834(&v14, v7 + 32, v6, v2);
  result = sub_226EBB21C();
  if (v8 == v6)
  {
    v10 = *(v5 + 16);
    if (v10)
    {
      while (1)
      {
        v11 = sub_226ECC830(v10, 0);
        v5 = sub_2274CF834(&v14, v11 + 32, v10, v5);
        sub_226EBB21C();
        if (v5 == v10)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v7 = MEMORY[0x277D84F90];
        v10 = *(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v11 = MEMORY[0x277D84F90];
    }

    v14 = v7;
    sub_22745F2F8(v11);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v12 = sub_22766C2B0();

    v13 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2273FCFE0@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v95 = *(v2 - 8);
  v96 = v2;
  v83 = *(v95 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v82 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = &v69 - v5;
  v97 = sub_227662750();
  v87 = *(v97 - 8);
  v86 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v84 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v69 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = v91[8];
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v81 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  v88 = sub_227669890();
  v85 = *(v88 - 8);
  v23 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = swift_allocObject();
  *(v26 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v26 + 24) = 54;
  *(v26 + 32) = 2;
  *(v26 + 40) = 124;
  *(v26 + 48) = &unk_227685570;
  *(v26 + 56) = v1;
  v93 = sub_227667A70();

  v27 = v22;
  v79 = v22;
  sub_227669270();
  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v80 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v99 = v31;
  v36 = sub_22766C060();
  v76 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v78 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v75 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder.queryAchievementEnvironmentCache";
  *(v39 + 56) = 65;
  *(v39 + 64) = 2;

  v40 = v94;
  sub_227669270();
  v41 = v91;
  v74 = v91[2];
  v42 = v90;
  v43 = v92;
  v74(v90, v27, v92);
  v73 = *(v41 + 80);
  v44 = v41;
  v70 = ((v73 + 16) & ~v73) + v17;
  v45 = (v73 + 16) & ~v73;
  v72 = v45;
  v46 = swift_allocObject();
  v71 = v44[4];
  v71(v46 + v45, v42, v43);
  v48 = v95;
  v47 = v96;
  v49 = v82;
  (*(v95 + 16))(v82, v40, v96);
  v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v51 = (v83 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v48 + 32))(v52 + v50, v49, v47);
  v53 = (v52 + v51);
  *v53 = sub_227430948;
  v53[1] = v46;
  v54 = v81;
  sub_227669270();
  v55 = v87;
  v56 = v84;
  v57 = v97;
  (*(v87 + 16))(v84, v98, v97);
  v58 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v59 = (v86 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v75;
  *(v60 + 16) = v76;
  *(v60 + 24) = v61;
  *(v60 + 32) = "RemoteBrowsingEnvironmentBuilder.queryAchievementEnvironmentCache";
  *(v60 + 40) = 65;
  *(v60 + 48) = 2;
  (*(v55 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v77;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v62 = v90;
  v63 = v92;
  v74(v90, v54, v92);
  v64 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v71(v65 + v72, v62, v63);
  v66 = (v65 + v64);
  *v66 = sub_227430984;
  v66[1] = v60;

  sub_227669270();
  v67 = v91[1];
  v67(v54, v63);
  (*(v95 + 8))(v94, v96);
  (*(v55 + 8))(v98, v97);
  v67(v79, v63);
  (*(v85 + 8))(v80, v88);
}

uint64_t sub_2273FD8F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_227667A70();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273FD9EC, 0, 0);
}

uint64_t sub_2273FD9EC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[3] + 56), *(v0[3] + 80));
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_2273FDA94;
  v3 = v0[7];

  return sub_226ECA330(v3);
}

uint64_t sub_2273FDA94()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2273FDBA8;
  }

  else
  {
    v3 = sub_2273FDC18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2273FDBA8()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_2273FDC18()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  sub_2271480B4(MEMORY[0x277D84F90]);
  v6 = sub_2276667B0();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_227667A60();

  sub_226E97D1C(v3, &qword_27D7B8E40, &unk_227685580);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2273FDD68@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v95 = *(v2 - 8);
  v96 = v2;
  v83 = *(v95 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v82 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = &v69 - v5;
  v97 = sub_227662750();
  v87 = *(v97 - 8);
  v86 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v84 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v69 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4E0, &unk_227684C00);
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = v91[8];
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v81 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  v88 = sub_227669890();
  v85 = *(v88 - 8);
  v23 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = swift_allocObject();
  *(v26 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v26 + 24) = 54;
  *(v26 + 32) = 2;
  *(v26 + 40) = 138;
  *(v26 + 48) = &unk_227685550;
  *(v26 + 56) = v1;

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAF8, &qword_227685558);
  v79 = v22;
  sub_227669270();
  v27 = sub_2276697A0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_227669770();
  v80 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v31 = sub_22766A920();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_22766A8F0();
  v77 = v34;
  v99 = v30;
  v35 = sub_22766C060();
  v37 = v36;
  v76 = v36;
  sub_227662720();
  v38 = swift_allocObject();
  v78 = v30;
  *(v38 + 16) = v30;
  *(v38 + 24) = v34;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  *(v38 + 48) = "RemoteBrowsingEnvironmentBuilder.queryAchievementTemplates";
  *(v38 + 56) = 58;
  *(v38 + 64) = 2;

  v39 = v94;
  sub_227669270();
  v40 = v91;
  v41 = v91[2];
  v74 = v91 + 2;
  v75 = v41;
  v42 = v90;
  v43 = v22;
  v44 = v92;
  v41(v90, v43, v92);
  v73 = *(v40 + 80);
  v70 = ((v73 + 16) & ~v73) + v17;
  v45 = (v73 + 16) & ~v73;
  v72 = v45;
  v46 = swift_allocObject();
  v71 = v40[4];
  v71(v46 + v45, v42, v44);
  v47 = v95;
  v48 = v96;
  v49 = v82;
  (*(v95 + 16))(v82, v39, v96);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v83 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v50, v49, v48);
  v53 = (v52 + v51);
  *v53 = sub_227430830;
  v53[1] = v46;
  v54 = v81;
  sub_227669270();
  v55 = v87;
  v56 = v84;
  v57 = v97;
  (*(v87 + 16))(v84, v98, v97);
  v58 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v59 = (v86 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v76;
  *(v60 + 16) = v35;
  *(v60 + 24) = v61;
  *(v60 + 32) = "RemoteBrowsingEnvironmentBuilder.queryAchievementTemplates";
  *(v60 + 40) = 58;
  *(v60 + 48) = 2;
  (*(v55 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v77;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v62 = v90;
  v63 = v92;
  v75(v90, v54, v92);
  v64 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v71(v65 + v72, v62, v63);
  v66 = (v65 + v64);
  *v66 = sub_227431B1C;
  v66[1] = v60;

  sub_227669270();
  v67 = v91[1];
  v67(v54, v63);
  (*(v95 + 8))(v94, v96);
  (*(v55 + 8))(v98, v97);
  v67(v79, v63);
  (*(v85 + 8))(v80, v88);
}

uint64_t sub_2273FE67C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2276630F0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273FE73C, 0, 0);
}

uint64_t sub_2273FE73C()
{
  __swift_project_boxed_opaque_existential_0((*(v0 + 24) + 96), *(*(v0 + 24) + 120));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_2273FE7DC;

  return sub_226EB91E0();
}

uint64_t sub_2273FE7DC(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_2273FE8DC, 0, 0);
}

id sub_2273FE8DC()
{
  v1 = sub_2273FB254(v0[8]);

  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = v1;
      v25 = MEMORY[0x277D84F90];
      result = sub_226F206A8(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        break;
      }

      v5 = 0;
      v1 = v0[5];
      v6 = v25;
      v7 = v3;
      v23 = v3;
      v24 = v3 & 0xC000000000000001;
      v21 = v3 & 0xFFFFFFFFFFFFFF8;
      v22 = v2;
      while (1)
      {
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v24)
        {
          v9 = MEMORY[0x22AA991A0](v5, v7);
        }

        else
        {
          if (v5 >= *(v21 + 16))
          {
            goto LABEL_16;
          }

          v9 = *(v7 + 8 * v5 + 32);
        }

        v10 = v9;
        result = [v9 data];
        if (!result)
        {
          goto LABEL_23;
        }

        v11 = result;
        v12 = v0[6];
        sub_227662590();

        sub_2276630E0();
        v14 = *(v25 + 16);
        v13 = *(v25 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_226F206A8(v13 > 1, v14 + 1, 1);
        }

        v15 = v0[6];
        v16 = v0[4];
        *(v25 + 16) = v14 + 1;
        (*(v1 + 32))(v25 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v15, v16);
        ++v5;
        v7 = v23;
        if (v8 == v22)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v2 = sub_22766CD20();
      if (!v2)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_18:

    v6 = MEMORY[0x277D84F90];
LABEL_19:
    v17 = v0[6];
    v18 = v0[2];
    v19 = sub_226F47608(v6);

    *v18 = v19;

    v20 = v0[1];

    return v20();
  }

  return result;
}

uint64_t sub_2273FEB44@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v99 = *(v2 - 8);
  v100 = v2;
  v87 = *(v99 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v86 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v97 = &v72 - v5;
  v101 = sub_227662750();
  v91 = *(v101 - 8);
  v90 = *(v91 + 64);
  v6 = MEMORY[0x28223BE20](v101);
  v88 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = &v72 - v8;
  v81 = sub_22766B360();
  v9 = *(v81 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v81);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBA10, &unk_2276720E0);
  v15 = *(v94 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v94);
  v95 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v72 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - v21;
  v98 = &v72 - v21;
  v92 = sub_227669890();
  v89 = *(v92 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x28223BE20](v92);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = __swift_project_boxed_opaque_existential_0((v1 + 760), *(v1 + 784));
  v27 = *(*__swift_project_boxed_opaque_existential_0((*v26 + 16), *(*v26 + 40)) + 24);
  v82 = v20;
  sub_22728B1A0(9, 0, 0, v20);
  sub_2272A6AC0(v20, v22);
  v28 = v15;
  v29 = *(v15 + 8);
  v84 = v15 + 8;
  v85 = v29;
  v30 = v94;
  v29(v20, v94);
  v31 = sub_2276697A0();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_227669770();
  v83 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v12, v81);
  sub_227669880();
  v35 = sub_22766A920();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_22766A8F0();
  v81 = v38;
  v102 = v34;
  v39 = sub_22766C060();
  v79 = v39;
  v41 = v40;
  v42 = v96;
  sub_227662720();
  v43 = swift_allocObject();
  v80 = v34;
  *(v43 + 16) = v34;
  *(v43 + 24) = v38;
  *(v43 + 32) = v39;
  *(v43 + 40) = v41;
  v78 = v41;
  *(v43 + 48) = "RemoteBrowsingEnvironmentBuilder.evaluateAllRecommendations";
  *(v43 + 56) = 59;
  *(v43 + 64) = 2;

  v44 = v97;
  sub_227669270();
  v45 = v28;
  v77 = *(v28 + 16);
  v46 = v95;
  v77(v95, v98, v30);
  v47 = *(v45 + 80);
  v73 = ((v47 + 16) & ~v47) + v16;
  v74 = (v47 + 16) & ~v47;
  v48 = swift_allocObject();
  v49 = *(v45 + 32);
  v75 = v45 + 32;
  v76 = v49;
  v49(v48 + ((v47 + 16) & ~v47), v46, v30);
  v50 = v99;
  v51 = v100;
  v52 = v86;
  (*(v99 + 16))(v86, v44, v100);
  v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v54 = (v87 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v50 + 32))(v55 + v53, v52, v51);
  v56 = (v55 + v54);
  *v56 = sub_227430AA4;
  v56[1] = v48;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBA20, &qword_22767B6C0);
  v57 = v82;
  sub_227669270();
  v58 = v91;
  v59 = v88;
  v60 = v101;
  (*(v91 + 16))(v88, v42, v101);
  v61 = (*(v58 + 80) + 49) & ~*(v58 + 80);
  v62 = (v90 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v64 = v78;
  *(v63 + 16) = v79;
  *(v63 + 24) = v64;
  *(v63 + 32) = "RemoteBrowsingEnvironmentBuilder.evaluateAllRecommendations";
  *(v63 + 40) = 59;
  *(v63 + 48) = 2;
  (*(v58 + 32))(v63 + v61, v59, v60);
  *(v63 + v62) = v81;
  *(v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v80;
  v65 = v94;
  v66 = v95;
  v77(v95, v57, v94);
  v67 = (v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v76(v68 + v74, v66, v65);
  v69 = (v68 + v67);
  *v69 = sub_227431B1C;
  v69[1] = v63;

  sub_227669270();
  v70 = v85;
  v85(v57, v65);
  (*(v99 + 8))(v97, v100);
  (*(v58 + 8))(v96, v101);
  v70(v98, v65);
  (*(v89 + 8))(v83, v92);
}

uint64_t sub_2273FF45C@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v96 = *(v2 - 8);
  v97 = v2;
  v84 = *(v96 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v83 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v95 = &v70 - v5;
  v98 = sub_227662750();
  v88 = *(v98 - 8);
  v87 = *(v88 + 64);
  v6 = MEMORY[0x28223BE20](v98);
  v85 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v70 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5D0, &unk_22767E450);
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = v92[8];
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v82 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  v89 = sub_227669890();
  v86 = *(v89 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v89);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = swift_allocObject();
  *(v26 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v26 + 24) = 54;
  *(v26 + 32) = 2;
  *(v26 + 40) = 165;
  *(v26 + 48) = &unk_227685640;
  *(v26 + 56) = v1;
  v94 = sub_227663CA0();

  v27 = v22;
  v80 = v22;
  sub_227669270();
  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v81 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v78 = v35;
  v100 = v31;
  v36 = sub_22766C060();
  v38 = v37;
  v77 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v79 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder.fetchActivityRings";
  *(v39 + 56) = 51;
  *(v39 + 64) = 2;

  v40 = v95;
  sub_227669270();
  v41 = v92;
  v42 = v92[2];
  v75 = v92 + 2;
  v76 = v42;
  v43 = v91;
  v44 = v27;
  v45 = v93;
  v42(v91, v44, v93);
  v74 = *(v41 + 80);
  v71 = ((v74 + 16) & ~v74) + v17;
  v46 = (v74 + 16) & ~v74;
  v73 = v46;
  v47 = swift_allocObject();
  v72 = v41[4];
  v72(v47 + v46, v43, v45);
  v48 = v96;
  v49 = v97;
  v50 = v83;
  (*(v96 + 16))(v83, v40, v97);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v84 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v50, v49);
  v54 = (v53 + v52);
  *v54 = sub_2274318B0;
  v54[1] = v47;
  v55 = v82;
  sub_227669270();
  v56 = v88;
  v57 = v85;
  v58 = v98;
  (*(v88 + 16))(v85, v99, v98);
  v59 = (*(v56 + 80) + 49) & ~*(v56 + 80);
  v60 = (v87 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v77;
  *(v61 + 16) = v36;
  *(v61 + 24) = v62;
  *(v61 + 32) = "RemoteBrowsingEnvironmentBuilder.fetchActivityRings";
  *(v61 + 40) = 51;
  *(v61 + 48) = 2;
  (*(v56 + 32))(v61 + v59, v57, v58);
  *(v61 + v60) = v78;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
  v63 = v91;
  v64 = v93;
  v76(v91, v55, v93);
  v65 = (v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v72(v66 + v73, v63, v64);
  v67 = (v66 + v65);
  *v67 = sub_2274318EC;
  v67[1] = v61;

  sub_227669270();
  v68 = v92[1];
  v68(v55, v64);
  (*(v96 + 8))(v95, v97);
  (*(v56 + 8))(v99, v98);
  v68(v80, v64);
  (*(v86 + 8))(v81, v89);
}

uint64_t sub_2273FFD70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2273FFD90, 0, 0);
}

uint64_t sub_2273FFD90()
{
  v1 = v0[3];
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(MEMORY[0x277D4F340] + 4);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2273556E8;
  v6 = v0[2];
  v7.n128_u64[0] = 1.0;

  return MEMORY[0x2821AF000](v6, v2, v3, v7);
}

uint64_t sub_2273FFE5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v106 = *(v3 - 8);
  v107 = v3;
  v94 = *(v106 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v93 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v105 = &v80 - v6;
  v108 = sub_227662750();
  v97 = *(v108 - 8);
  v96 = *(v97 + 64);
  v7 = MEMORY[0x28223BE20](v108);
  v95 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v80 - v9;
  v89 = sub_22766B360();
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5C8, &qword_227684C68);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v80 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6A0, &unk_227685280);
  v103 = *(v23 - 8);
  v104 = v23;
  v24 = v103[8];
  v25 = MEMORY[0x28223BE20](v23);
  v101 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v90 = &v80 - v27;
  MEMORY[0x28223BE20](v26);
  v99 = &v80 - v28;
  v29 = sub_227669890();
  v91 = *(v29 - 8);
  v92 = v29;
  v30 = *(v91 + 64);
  MEMORY[0x28223BE20](v29);
  v100 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v32 = swift_allocObject();
  *(v32 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v32 + 24) = 54;
  *(v32 + 32) = 2;
  *(v32 + 40) = 174;
  *(v32 + 48) = &unk_227685628;
  *(v32 + 56) = v2;

  sub_227669270();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_227400B6C;
  *(v33 + 24) = 0;
  (*(v17 + 16))(v20, v22, v16);
  v34 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v35 = (v18 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v17 + 32))(v36 + v34, v20, v16);
  v37 = (v36 + v35);
  *v37 = sub_22743172C;
  v37[1] = v33;
  v102 = sub_227665E80();
  v38 = v99;
  sub_227669270();
  (*(v17 + 8))(v22, v16);
  v39 = sub_2276697A0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v88 + 8))(v12, v89);
  sub_227669880();
  v43 = sub_22766A920();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_22766A8F0();
  v89 = v46;
  v110 = v42;
  v47 = sub_22766C060();
  v88 = v47;
  v49 = v48;
  sub_227662720();
  v50 = swift_allocObject();
  v86 = v42;
  *(v50 + 16) = v42;
  *(v50 + 24) = v46;
  *(v50 + 32) = v47;
  *(v50 + 40) = v49;
  v87 = v49;
  *(v50 + 48) = "RemoteBrowsingEnvironmentBuilder::queryMindfulnessMinutes";
  *(v50 + 56) = 57;
  *(v50 + 64) = 2;

  v51 = v105;
  sub_227669270();
  v52 = v103;
  v85 = v103[2];
  v53 = v101;
  v54 = v38;
  v55 = v104;
  v85(v101, v54, v104);
  v84 = *(v52 + 80);
  v81 = ((v84 + 16) & ~v84) + v24;
  v56 = (v84 + 16) & ~v84;
  v83 = v56;
  v57 = swift_allocObject();
  v82 = v52[4];
  v82(v57 + v56, v53, v55);
  v58 = v106;
  v59 = v107;
  v60 = v93;
  (*(v106 + 16))(v93, v51, v107);
  v61 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v62 = (v94 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  (*(v58 + 32))(v63 + v61, v60, v59);
  v64 = (v63 + v62);
  *v64 = sub_22743175C;
  v64[1] = v57;
  v65 = v90;
  sub_227669270();
  v66 = v97;
  v67 = v95;
  v68 = v108;
  (*(v97 + 16))(v95, v109, v108);
  v69 = (*(v66 + 80) + 49) & ~*(v66 + 80);
  v70 = (v96 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v87;
  *(v71 + 16) = v88;
  *(v71 + 24) = v72;
  *(v71 + 32) = "RemoteBrowsingEnvironmentBuilder::queryMindfulnessMinutes";
  *(v71 + 40) = 57;
  *(v71 + 48) = 2;
  (*(v66 + 32))(v71 + v69, v67, v68);
  *(v71 + v70) = v89;
  *(v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = v86;
  v73 = v101;
  v74 = v104;
  v85(v101, v65, v104);
  v75 = (v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v82(v76 + v83, v73, v74);
  v77 = (v76 + v75);
  *v77 = sub_227431798;
  v77[1] = v71;

  sub_227669270();
  v78 = v103[1];
  v78(v65, v74);
  (*(v106 + 8))(v105, v107);
  (*(v66 + 8))(v109, v108);
  v78(v99, v74);
  (*(v91 + 8))(v100, v92);
}

uint64_t sub_22740091C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22740093C, 0, 0);
}

uint64_t sub_22740093C()
{
  v1 = *(v0 + 24);
  v2 = v1[70];
  v3 = v1[71];
  __swift_project_boxed_opaque_existential_0(v1 + 67, v2);
  v4 = *(MEMORY[0x277D4F220] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  v6 = *(v3 + 8);
  *v5 = v0;
  v5[1] = sub_2274009FC;

  return MEMORY[0x2821AED88](v2, v6);
}

uint64_t sub_2274009FC(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_227400B48, 0, 0);
  }
}

uint64_t sub_227400B6C(uint64_t *a1)
{
  v1 = *a1;
  sub_22766C500();
  return sub_227665E70();
}

uint64_t sub_227400BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5B0, &unk_22767E440);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB38, &qword_22768C990);
  sub_226ECF5D8(sub_227431508, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryBookmarks";
  *(v39 + 56) = 48;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_227431548;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryBookmarks";
  *(v59 + 40) = 48;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_2274014B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC698, &unk_227685270);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCB30, &unk_227686AE0);
  sub_226ECF5D8(sub_227431464, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllPlaylists";
  *(v39 + 56) = 51;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_2274314A4;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllPlaylists";
  *(v59 + 40) = 51;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_227401DB4@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v9 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  v13 = v9[3];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v10;
  v19 = v11;

  sub_22766A070();
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v12;
  *(v17 + 40) = v13;
  v20 = a4(100);
  if (v5)
  {
    swift_setDeallocating();

    v21 = *(v17 + 40);

    v22 = qword_2813B2078;
    v23 = sub_22766A100();
    (*(*(v23 - 8) + 8))(v17 + v22, v23);
    v24 = *(*v17 + 48);
    v25 = *(*v17 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v27 = v20;
    swift_setDeallocating();

    v28 = *(v17 + 40);

    v29 = qword_2813B2078;
    v30 = sub_22766A100();
    (*(*(v30 - 8) + 8))(v17 + v29, v30);
    v31 = *(*v17 + 48);
    v32 = *(*v17 + 52);
    result = swift_deallocClassInstance();
    *a5 = v27;
  }

  return result;
}

uint64_t sub_227401FE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226ECF5D8(sub_226F59E0C, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryCompletedMarketingVideoIdentifiers";
  *(v39 + 56) = 73;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_2274309C0;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryCompletedMarketingVideoIdentifiers";
  *(v59 + 40) = 73;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_2274028E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC690, &unk_227685260);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB28, &unk_227685600);
  sub_226ECF5D8(sub_227431238, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllBurnBarPreferences";
  *(v39 + 56) = 60;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_227431278;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllBurnBarPreferences";
  *(v59 + 40) = 60;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_2274031E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD590, &unk_22767E420);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB20, &unk_2276855F0);
  sub_226ECF5D8(sub_227431194, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllMetricPreferences";
  *(v39 + 56) = 59;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_2274311D4;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllMetricPreferences";
  *(v59 + 40) = 59;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_227403AE4@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v91 = *(v2 - 8);
  v92 = v2;
  v80 = *(v91 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v79 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v90 = &v67 - v5;
  v93 = sub_227662750();
  v84 = *(v93 - 8);
  v83 = *(v84 + 64);
  v6 = MEMORY[0x28223BE20](v93);
  v81 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v67 - v8;
  v75 = sub_22766B360();
  v9 = *(v75 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v75);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD580, &unk_22767E410);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = v88[8];
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v77 = &v67 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - v20;
  v85 = sub_227669890();
  v82 = *(v85 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x28223BE20](v85);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  __swift_project_boxed_opaque_existential_0((v1 + 680), *(v1 + 704));
  v25 = off_283AB27A8;
  type metadata accessor for PrivacyPreferenceDataSource();
  v76 = v21;
  v25();
  v26 = sub_2276697A0();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_227669770();
  v78 = v24;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v12, v75);
  sub_227669880();
  v30 = sub_22766A920();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_22766A8F0();
  v75 = v33;
  v95 = v29;
  v34 = sub_22766C060();
  v73 = v34;
  v36 = v35;
  sub_227662720();
  v37 = swift_allocObject();
  v74 = v29;
  *(v37 + 16) = v29;
  *(v37 + 24) = v33;
  *(v37 + 32) = v34;
  *(v37 + 40) = v36;
  v72 = v36;
  *(v37 + 48) = "RemoteBrowsingEnvironmentBuilder::queryDiagnosticsPrivacyPreference";
  *(v37 + 56) = 67;
  *(v37 + 64) = 2;

  v38 = v90;
  sub_227669270();
  v39 = v88;
  v71 = v88[2];
  v40 = v87;
  v41 = v21;
  v42 = v89;
  v71(v87, v41, v89);
  v70 = *(v39 + 80);
  v67 = ((v70 + 16) & ~v70) + v16;
  v43 = (v70 + 16) & ~v70;
  v69 = v43;
  v44 = swift_allocObject();
  v68 = v39[4];
  v68(v44 + v43, v40, v42);
  v45 = v91;
  v46 = v92;
  v47 = v79;
  (*(v91 + 16))(v79, v38, v92);
  v48 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v49 = (v80 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  (*(v45 + 32))(v50 + v48, v47, v46);
  v51 = (v50 + v49);
  *v51 = sub_2274310B0;
  v51[1] = v44;
  v52 = v77;
  sub_227669270();
  v53 = v84;
  v54 = v81;
  v55 = v93;
  (*(v84 + 16))(v81, v94, v93);
  v56 = (*(v53 + 80) + 49) & ~*(v53 + 80);
  v57 = (v83 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v72;
  *(v58 + 16) = v73;
  *(v58 + 24) = v59;
  *(v58 + 32) = "RemoteBrowsingEnvironmentBuilder::queryDiagnosticsPrivacyPreference";
  *(v58 + 40) = 67;
  *(v58 + 48) = 2;
  (*(v53 + 32))(v58 + v56, v54, v55);
  *(v58 + v57) = v75;
  *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v74;
  v60 = v87;
  v61 = v89;
  v71(v87, v52, v89);
  v62 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v68(v63 + v69, v60, v61);
  v64 = (v63 + v62);
  *v64 = sub_22742F2D0;
  v64[1] = v58;

  sub_227669270();
  v65 = v88[1];
  v65(v52, v61);
  (*(v91 + 8))(v90, v92);
  (*(v53 + 8))(v94, v93);
  v65(v76, v61);
  (*(v82 + 8))(v78, v85);
}

uint64_t sub_2274043A4@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v2 - 8);
  v95 = v2;
  v83 = *(v94 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v82 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v70 - v5;
  v96 = sub_227662750();
  v87 = *(v96 - 8);
  v86 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v96);
  v84 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v70 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = v91[8];
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v80 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  v88 = sub_227669890();
  v85 = *(v88 - 8);
  v23 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *__swift_project_boxed_opaque_existential_0((v1 + 680), *(v1 + 704));
  v79 = v22;
  sub_227360A74(v22);
  v27 = sub_2276697A0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_227669770();
  v81 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v31 = sub_22766A920();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_22766A8F0();
  v77 = v34;
  v98 = v30;
  v35 = sub_22766C060();
  v76 = v35;
  v37 = v36;
  sub_227662720();
  v38 = swift_allocObject();
  v78 = v30;
  *(v38 + 16) = v30;
  *(v38 + 24) = v34;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  v75 = v37;
  *(v38 + 48) = "RemoteBrowsingEnvironmentBuilder::queryNoticePreference";
  *(v38 + 56) = 55;
  *(v38 + 64) = 2;

  v39 = v93;
  sub_227669270();
  v40 = v91;
  v74 = v91[2];
  v41 = v90;
  v42 = v22;
  v43 = v92;
  v74(v90, v42, v92);
  v73 = *(v40 + 80);
  v70 = ((v73 + 16) & ~v73) + v17;
  v44 = (v73 + 16) & ~v73;
  v72 = v44;
  v45 = swift_allocObject();
  v71 = v40[4];
  v71(v45 + v44, v41, v43);
  v46 = v94;
  v47 = v82;
  v48 = v39;
  v49 = v95;
  (*(v94 + 16))(v82, v48, v95);
  v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v51 = (v83 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v46 + 32))(v52 + v50, v47, v49);
  v53 = (v52 + v51);
  *v53 = sub_227431038;
  v53[1] = v45;
  v83 = sub_227666C80();
  v54 = v80;
  sub_227669270();
  v55 = v87;
  v56 = v84;
  v57 = v96;
  (*(v87 + 16))(v84, v97, v96);
  v58 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v59 = (v86 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v75;
  *(v60 + 16) = v76;
  *(v60 + 24) = v61;
  *(v60 + 32) = "RemoteBrowsingEnvironmentBuilder::queryNoticePreference";
  *(v60 + 40) = 55;
  *(v60 + 48) = 2;
  (*(v55 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v77;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v62 = v90;
  v63 = v54;
  v64 = v92;
  v74(v90, v54, v92);
  v65 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v71(v66 + v72, v62, v64);
  v67 = (v66 + v65);
  *v67 = sub_227431074;
  v67[1] = v60;

  sub_227669270();
  v68 = v91[1];
  v68(v63, v64);
  (*(v94 + 8))(v93, v95);
  (*(v55 + 8))(v97, v96);
  v68(v79, v64);
  (*(v85 + 8))(v81, v88);
}

uint64_t sub_227404C4C@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v2 - 8);
  v95 = v2;
  v83 = *(v94 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v82 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v93 = &v70 - v5;
  v96 = sub_227662750();
  v87 = *(v96 - 8);
  v86 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v96);
  v84 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v70 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = v91[8];
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v80 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  v88 = sub_227669890();
  v85 = *(v88 - 8);
  v23 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *__swift_project_boxed_opaque_existential_0((v1 + 680), *(v1 + 704));
  v79 = v22;
  sub_226EDD55C(v22);
  v27 = sub_2276697A0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_227669770();
  v81 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v31 = sub_22766A920();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_22766A8F0();
  v77 = v34;
  v98 = v30;
  v35 = sub_22766C060();
  v76 = v35;
  v37 = v36;
  sub_227662720();
  v38 = swift_allocObject();
  v78 = v30;
  *(v38 + 16) = v30;
  *(v38 + 24) = v34;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  v75 = v37;
  *(v38 + 48) = "RemoteBrowsingEnvironmentBuilder::queryOptInPreference";
  *(v38 + 56) = 54;
  *(v38 + 64) = 2;

  v39 = v93;
  sub_227669270();
  v40 = v91;
  v74 = v91[2];
  v41 = v90;
  v42 = v22;
  v43 = v92;
  v74(v90, v42, v92);
  v73 = *(v40 + 80);
  v70 = ((v73 + 16) & ~v73) + v17;
  v44 = (v73 + 16) & ~v73;
  v72 = v44;
  v45 = swift_allocObject();
  v71 = v40[4];
  v71(v45 + v44, v41, v43);
  v46 = v94;
  v47 = v82;
  v48 = v39;
  v49 = v95;
  (*(v94 + 16))(v82, v48, v95);
  v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v51 = (v83 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v46 + 32))(v52 + v50, v47, v49);
  v53 = (v52 + v51);
  *v53 = sub_227430EBC;
  v53[1] = v45;
  v83 = sub_2276666A0();
  v54 = v80;
  sub_227669270();
  v55 = v87;
  v56 = v84;
  v57 = v96;
  (*(v87 + 16))(v84, v97, v96);
  v58 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v59 = (v86 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v75;
  *(v60 + 16) = v76;
  *(v60 + 24) = v61;
  *(v60 + 32) = "RemoteBrowsingEnvironmentBuilder::queryOptInPreference";
  *(v60 + 40) = 54;
  *(v60 + 48) = 2;
  (*(v55 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v77;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v62 = v90;
  v63 = v54;
  v64 = v92;
  v74(v90, v54, v92);
  v65 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v71(v66 + v72, v62, v64);
  v67 = (v66 + v65);
  *v67 = sub_227430EF8;
  v67[1] = v60;

  sub_227669270();
  v68 = v91[1];
  v68(v63, v64);
  (*(v94 + 8))(v93, v95);
  (*(v55 + 8))(v97, v96);
  v68(v79, v64);
  (*(v85 + 8))(v81, v88);
}

uint64_t sub_2274054F4@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v95 = *(v2 - 8);
  v96 = v2;
  v83 = *(v95 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v82 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = &v69 - v5;
  v97 = sub_227662750();
  v87 = *(v97 - 8);
  v86 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v84 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v69 - v8;
  v79 = sub_22766B360();
  v9 = *(v79 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v79);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD550, &unk_22767E3F0);
  v91 = *(v15 - 8);
  v92 = v15;
  v16 = v91[8];
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v81 = &v69 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  v88 = sub_227669890();
  v85 = *(v88 - 8);
  v22 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v25 = __swift_project_boxed_opaque_existential_0((v1 + 680), *(v1 + 704));
  v26 = *(*v25 + 56);
  v27 = *(*v25 + 64);
  __swift_project_boxed_opaque_existential_0((*v25 + 32), v26);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB0, &qword_227682F60);
  v78 = v21;
  sub_226ECF5D8(sub_2273622C4, 0, v26, v93, v27, v21);
  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v80 = v24;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v12, v79);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v79 = v35;
  v99 = v31;
  v36 = sub_22766C060();
  v76 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v77 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v75 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryPrivacyAcknowledgements";
  *(v39 + 56) = 62;
  *(v39 + 64) = 2;

  v40 = v94;
  sub_227669270();
  v41 = v91;
  v74 = v91[2];
  v42 = v90;
  v43 = v92;
  v74(v90, v21, v92);
  v44 = v41;
  v73 = *(v41 + 80);
  v70 = ((v73 + 16) & ~v73) + v16;
  v45 = (v73 + 16) & ~v73;
  v72 = v45;
  v46 = swift_allocObject();
  v71 = v44[4];
  v71(v46 + v45, v42, v43);
  v48 = v95;
  v47 = v96;
  v49 = v82;
  (*(v95 + 16))(v82, v40, v96);
  v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v51 = (v83 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v48 + 32))(v52 + v50, v49, v47);
  v53 = (v52 + v51);
  *v53 = sub_227430E58;
  v53[1] = v46;
  v54 = v81;
  sub_227669270();
  v55 = v87;
  v56 = v84;
  v57 = v97;
  (*(v87 + 16))(v84, v98, v97);
  v58 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v59 = (v86 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v75;
  *(v60 + 16) = v76;
  *(v60 + 24) = v61;
  *(v60 + 32) = "RemoteBrowsingEnvironmentBuilder::queryPrivacyAcknowledgements";
  *(v60 + 40) = 62;
  *(v60 + 48) = 2;
  (*(v55 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v79;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;
  v62 = v90;
  v63 = v92;
  v74(v90, v54, v92);
  v64 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v71(v65 + v72, v62, v63);
  v66 = (v65 + v64);
  *v66 = sub_227431B1C;
  v66[1] = v60;

  sub_227669270();
  v67 = v91[1];
  v67(v54, v63);
  (*(v95 + 8))(v94, v96);
  (*(v55 + 8))(v98, v97);
  v67(v78, v63);
  (*(v85 + 8))(v80, v88);
}

uint64_t sub_227405DE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC678, &unk_227685240);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB18, &unk_2276855C0);
  sub_226ECF5D8(sub_227430DB4, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllProgressPreferences";
  *(v39 + 56) = 61;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_227430DF4;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllProgressPreferences";
  *(v59 + 40) = 61;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_2274066E8@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v96 = *(v2 - 8);
  v97 = v2;
  v84 = *(v96 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v83 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v95 = &v70 - v5;
  v98 = sub_227662750();
  v88 = *(v98 - 8);
  v87 = *(v88 + 64);
  v6 = MEMORY[0x28223BE20](v98);
  v85 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v70 - v8;
  v80 = sub_22766B360();
  v9 = *(v80 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v80);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC688, &unk_227685250);
  v92 = *(v15 - 8);
  v93 = v15;
  v16 = v92[8];
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v82 = &v70 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v70 - v20;
  v89 = sub_227669890();
  v86 = *(v89 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x28223BE20](v89);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v25 = v1[83];
  v26 = v1[84];
  __swift_project_boxed_opaque_existential_0(v1 + 80, v25);
  sub_226E91B50((v1 + 115), &v100);
  v27 = swift_allocObject();
  sub_226E92AB8(&v100, v27 + 16);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC190, &unk_2276855E0);
  v79 = v21;
  sub_226ECF5D8(sub_227431114, v27, v25, v94, v26, v21);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v81 = v24;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v9 + 8))(v12, v80);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v80 = v35;
  *&v100 = v31;
  v36 = sub_22766C060();
  v38 = v37;
  v77 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v78 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllWorkoutPlanTemplateMetadata";
  *(v39 + 56) = 69;
  *(v39 + 64) = 2;

  v40 = v95;
  sub_227669270();
  v41 = v92;
  v42 = v92[2];
  v75 = v92 + 2;
  v76 = v42;
  v43 = v91;
  v44 = v93;
  v42(v91, v21, v93);
  v45 = v41;
  v74 = *(v41 + 80);
  v71 = ((v74 + 16) & ~v74) + v16;
  v46 = (v74 + 16) & ~v74;
  v73 = v46;
  v47 = swift_allocObject();
  v72 = v45[4];
  v72(v47 + v46, v43, v44);
  v48 = v96;
  v49 = v97;
  v50 = v83;
  (*(v96 + 16))(v83, v40, v97);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v84 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v50, v49);
  v54 = (v53 + v52);
  *v54 = sub_227431130;
  v54[1] = v47;
  v55 = v82;
  sub_227669270();
  v56 = v88;
  v57 = v85;
  v58 = v98;
  (*(v88 + 16))(v85, v99, v98);
  v59 = (*(v56 + 80) + 49) & ~*(v56 + 80);
  v60 = (v87 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v77;
  *(v61 + 16) = v36;
  *(v61 + 24) = v62;
  *(v61 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllWorkoutPlanTemplateMetadata";
  *(v61 + 40) = 69;
  *(v61 + 48) = 2;
  (*(v56 + 32))(v61 + v59, v57, v58);
  *(v61 + v60) = v80;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v63 = v91;
  v64 = v93;
  v76(v91, v55, v93);
  v65 = (v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v72(v66 + v73, v63, v64);
  v67 = (v66 + v65);
  *v67 = sub_227431B1C;
  v67[1] = v61;

  sub_227669270();
  v68 = v92[1];
  v68(v55, v64);
  (*(v96 + 8))(v95, v97);
  (*(v56 + 8))(v99, v98);
  v68(v79, v64);
  (*(v86 + 8))(v81, v89);
}

uint64_t sub_227407030@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1A0, &qword_22767DEA0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  v16 = sub_2272382B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v17 = *(v13 + 40);

    v18 = qword_2813B2078;
    v19 = sub_22766A100();
    (*(*(v19 - 8) + 8))(v13 + v18, v19);
    v20 = *(*v13 + 48);
    v21 = *(*v13 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v23 = v16;
    swift_setDeallocating();

    v24 = *(v13 + 40);

    v25 = qword_2813B2078;
    v26 = sub_22766A100();
    (*(*(v26 - 8) + 8))(v13 + v25, v26);
    v27 = *(*v13 + 48);
    v28 = *(*v13 + 52);
    swift_deallocClassInstance();
    v29 = sub_2273FAE90(v23);

    v30 = sub_226F45B58(v29);

    v31 = sub_227281800(v30, a1);

    MEMORY[0x28223BE20](v32);
    v35[2] = a1;
    v33 = sub_2275F2440(sub_22720D6AC, v35, v31);

    v34 = sub_226F459BC(v33);

    *a2 = v34;
  }

  return result;
}

uint64_t sub_227407328@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v105 = *(v3 - 8);
  v106 = v3;
  v94 = *(v105 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v93 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v104 = &v79 - v6;
  v107 = sub_227662750();
  v97 = *(v107 - 8);
  v96 = *(v97 + 64);
  v7 = MEMORY[0x28223BE20](v107);
  v95 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v79 - v9;
  v87 = sub_22766B360();
  v86 = *(v87 - 8);
  v10 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD540, &unk_227684C40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD520, &unk_22767E3E0);
  v101 = *(v23 - 8);
  v102 = v23;
  v88 = v101[8];
  v24 = MEMORY[0x28223BE20](v23);
  v89 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v90 = &v79 - v27;
  MEMORY[0x28223BE20](v26);
  v99 = &v79 - v28;
  v29 = sub_227669890();
  v91 = *(v29 - 8);
  v92 = v29;
  v30 = *(v91 + 64);
  MEMORY[0x28223BE20](v29);
  v100 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v32 = *(v1 + 664);
  v33 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v32);

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
  sub_226ECF5D8(sub_227430D70, v2, v32, v34, v33, v22);

  (*(v17 + 16))(v20, v22, v16);
  v35 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v36 = swift_allocObject();
  (*(v17 + 32))(v36 + v35, v20, v16);
  v37 = (v36 + ((v18 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_2274081EC;
  v37[1] = 0;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB10, &unk_2276855B0);
  v38 = v99;
  sub_227669270();
  (*(v17 + 8))(v22, v16);
  v39 = sub_2276697A0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v86 + 8))(v12, v87);
  sub_227669880();
  v43 = sub_22766A920();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_22766A8F0();
  v87 = v46;
  v109 = v42;
  v47 = sub_22766C060();
  v86 = v47;
  v49 = v48;
  sub_227662720();
  v50 = swift_allocObject();
  v84 = v42;
  *(v50 + 16) = v42;
  *(v50 + 24) = v46;
  *(v50 + 32) = v47;
  *(v50 + 40) = v49;
  v85 = v49;
  *(v50 + 48) = "RemoteBrowsingEnvironmentBuilder::queryCompletedWorkoutCounts";
  *(v50 + 56) = 61;
  *(v50 + 64) = 2;

  v51 = v104;
  sub_227669270();
  v52 = v101;
  v53 = v101[2];
  v81 = v101 + 2;
  v83 = v53;
  v54 = v89;
  v55 = v102;
  v53(v89, v38, v102);
  v82 = *(v52 + 80);
  v79 = v88 + ((v82 + 16) & ~v82);
  v56 = (v82 + 16) & ~v82;
  v80 = v56;
  v57 = swift_allocObject();
  v88 = v52[4];
  v88(v57 + v56, v54, v55);
  v59 = v105;
  v58 = v106;
  v60 = v93;
  (*(v105 + 16))(v93, v51, v106);
  v61 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v62 = (v94 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  (*(v59 + 32))(v63 + v61, v60, v58);
  v64 = (v63 + v62);
  *v64 = sub_227431B38;
  v64[1] = v57;
  v65 = v90;
  sub_227669270();
  v66 = v97;
  v67 = v95;
  v68 = v107;
  (*(v97 + 16))(v95, v108, v107);
  v69 = (*(v66 + 80) + 49) & ~*(v66 + 80);
  v70 = (v96 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v85;
  *(v71 + 16) = v86;
  *(v71 + 24) = v72;
  *(v71 + 32) = "RemoteBrowsingEnvironmentBuilder::queryCompletedWorkoutCounts";
  *(v71 + 40) = 61;
  *(v71 + 48) = 2;
  (*(v66 + 32))(v71 + v69, v67, v68);
  *(v71 + v70) = v87;
  *(v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = v84;
  v73 = v102;
  v83(v54, v65, v102);
  v74 = (v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  v88(v75 + v80, v54, v73);
  v76 = (v75 + v74);
  *v76 = sub_227431B1C;
  v76[1] = v71;

  sub_227669270();
  v77 = v101[1];
  v77(v65, v73);
  (*(v105 + 8))(v104, v106);
  (*(v66 + 8))(v108, v107);
  v77(v99, v73);
  (*(v91 + 8))(v100, v92);
}

uint64_t sub_227407DD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v40 = a3;
  v6 = sub_227667AA0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227665FB0();
  v11 = *(v10 - 8);
  v41 = v10;
  v42 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = sub_227663FA0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *__swift_project_boxed_opaque_existential_0((a2 + 376), *(a2 + 400));
  result = sub_226EAF48C(a1, v22);
  if (!v3)
  {
    v38 = v19;
    v39 = v18;
    v37 = 0;
    sub_227663F60();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B0, &qword_227673180);
    v27 = *(sub_2276682D0() - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_227670CD0;
    *(v30 + v29) = v26;
    swift_storeEnumTagMultiPayload();
    sub_226F4F620(v30);
    swift_setDeallocating();
    sub_22742FDAC(v30 + v29, MEMORY[0x277D53468]);
    swift_deallocClassInstance();
    sub_227665F80();
    v31 = v41;
    v32 = v42;
    (*(v42 + 16))(v15, v17, v41);
    sub_227667A90();
    v33 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_22742F870(v9, *v33, v33[1], *(v33 + 16), v33[3]);
    v34 = v37;
    v35 = sub_227232EB8(100);
    if (v34)
    {

      sub_22742FDAC(v9, MEMORY[0x277D530D0]);
      (*(v32 + 8))(v17, v31);
      return (*(v38 + 8))(v22, v39);
    }

    else
    {
      v36 = v35;

      sub_22742FDAC(v9, MEMORY[0x277D530D0]);
      (*(v32 + 8))(v17, v31);
      result = (*(v38 + 8))(v22, v39);
      *v40 = v36;
    }
  }

  return result;
}

uint64_t sub_2274081EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v3 = sub_227664530();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v19 = sub_22714B8A4(MEMORY[0x277D84F90]);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  v18[1] = v4 + 16;
  v13 = (v4 + 8);

  for (i = 0; v11; i = v15)
  {
    v15 = i;
LABEL_8:
    (*(v4 + 16))(v7, *(v8 + 48) + *(v4 + 72) * (__clz(__rbit64(v11)) | (v15 << 6)), v3);
    sub_2274097D0(&v19, v7, MEMORY[0x277D50950], MEMORY[0x277D50958]);
    v11 &= v11 - 1;
    (*v13)(v7, v3);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v16 = sub_226F35384(v19);
      *(swift_allocObject() + 16) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB10, &unk_2276855B0);
      return sub_227669280();
    }

    v11 = *(v8 + 56 + 8 * v15);
    ++i;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  (*v13)(v7, v3);

  __break(1u);
  return result;
}

uint64_t sub_227408470@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v116 = *(v3 - 8);
  v117 = v3;
  v105 = *(v116 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v104 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v115 = &v90 - v6;
  v118 = sub_227662750();
  v108 = *(v118 - 8);
  v107 = *(v108 + 64);
  v7 = MEMORY[0x28223BE20](v118);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v90 - v9;
  v100 = sub_22766B360();
  v99 = *(v100 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v96 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B340();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD530, &unk_227673EB0);
  v15 = *(v93 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v93);
  v91 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v90 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD528, &qword_2276855A0);
  v20 = *(v94 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v94);
  v112 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v92 = &v90 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD520, &unk_22767E3E0);
  v113 = *(v24 - 8);
  v114 = v24;
  v97 = v113[8];
  v25 = MEMORY[0x28223BE20](v24);
  v98 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v101 = &v90 - v28;
  MEMORY[0x28223BE20](v27);
  v110 = &v90 - v29;
  v30 = sub_227669890();
  v102 = *(v30 - 8);
  v103 = v30;
  v31 = *(v102 + 64);
  MEMORY[0x28223BE20](v30);
  v111 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v33 = *(v1 + 664);
  v34 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v33);
  v35 = sub_227663FA0();

  sub_226ECF5D8(sub_227430BBC, v2, v33, v35, v34, v19);

  v36 = v91;
  v37 = v93;
  (*(v15 + 16))(v91, v19, v93);
  v38 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v39 = swift_allocObject();
  (*(v15 + 32))(v39 + v38, v36, v37);
  v40 = (v39 + ((v16 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v40 = sub_227430C0C;
  v40[1] = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB08, &qword_2276855A8);
  v41 = v92;
  sub_227669270();
  (*(v15 + 8))(v19, v37);
  v42 = v112;
  v43 = v94;
  (*(v20 + 16))(v112, v41, v94);
  v44 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v45 = swift_allocObject();
  (*(v20 + 32))(v45 + v44, v42, v43);
  v46 = (v45 + ((v21 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v46 = sub_2274095B8;
  v46[1] = 0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB10, &unk_2276855B0);
  v47 = v110;
  sub_227669270();
  (*(v20 + 8))(v41, v43);
  v48 = sub_2276697A0();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_227669770();
  v52 = v96;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v99 + 8))(v52, v100);
  sub_227669880();
  v53 = sub_22766A920();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v56 = sub_22766A8F0();
  v100 = v56;
  v120 = v51;
  v57 = sub_22766C060();
  v99 = v57;
  v59 = v58;
  sub_227662720();
  v60 = swift_allocObject();
  v94 = v51;
  *(v60 + 16) = v51;
  *(v60 + 24) = v56;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v96 = v59;
  *(v60 + 48) = "RemoteBrowsingEnvironmentBuilder::queryCompletedTipCounts";
  *(v60 + 56) = 57;
  *(v60 + 64) = 2;

  v61 = v115;
  sub_227669270();
  v62 = v113;
  v63 = v113[2];
  v92 = (v113 + 2);
  v95 = v63;
  v64 = v98;
  v65 = v47;
  v66 = v114;
  v63(v98, v65, v114);
  v93 = *(v62 + 80);
  v90 = v97 + ((v93 + 16) & ~v93);
  v67 = (v93 + 16) & ~v93;
  v91 = v67;
  v68 = swift_allocObject();
  v97 = v62[4];
  v97(v68 + v67, v64, v66);
  v70 = v116;
  v69 = v117;
  v71 = v104;
  (*(v116 + 16))(v104, v61, v117);
  v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v73 = (v105 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  (*(v70 + 32))(v74 + v72, v71, v69);
  v75 = (v74 + v73);
  *v75 = sub_227430C64;
  v75[1] = v68;
  v76 = v101;
  sub_227669270();
  v77 = v108;
  v78 = v106;
  v79 = v118;
  (*(v108 + 16))(v106, v119, v118);
  v80 = (*(v77 + 80) + 49) & ~*(v77 + 80);
  v81 = (v107 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  v83 = v96;
  *(v82 + 16) = v99;
  *(v82 + 24) = v83;
  *(v82 + 32) = "RemoteBrowsingEnvironmentBuilder::queryCompletedTipCounts";
  *(v82 + 40) = 57;
  *(v82 + 48) = 2;
  (*(v77 + 32))(v82 + v80, v78, v79);
  *(v82 + v81) = v100;
  *(v82 + ((v81 + 15) & 0xFFFFFFFFFFFFFFF8)) = v94;
  v84 = v114;
  v95(v64, v76, v114);
  v85 = (v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v97(&v91[v86], v64, v84);
  v87 = (v86 + v85);
  *v87 = sub_227431B1C;
  v87[1] = v82;

  sub_227669270();
  v88 = v113[1];
  v88(v76, v84);
  (*(v116 + 8))(v115, v117);
  (*(v77 + 8))(v119, v118);
  v88(v110, v84);
  (*(v102 + 8))(v111, v103);
}

uint64_t sub_2274090E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  v5 = sub_227663FA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a2[83];
  v9 = a2[84];
  __swift_project_boxed_opaque_existential_0(a2 + 80, v8);
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB08, &qword_2276855A8);
  sub_226ECF5D8(sub_227430CC8, v11, v8, v12, v9, v15);
}

uint64_t sub_227409288@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_2276650A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  sub_227663F00();
  v14 = v13;
  result = sub_226F88F0C(a1);
  if (v2)
  {
    return result;
  }

  v38 = v10;
  v39 = 0;
  v40 = a2;
  v16 = 0;
  v17 = result + 56;
  v18 = 1 << *(result + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(result + 56);
  v21 = (v18 + 63) >> 6;
  v37 = (v6 + 32);
  v42 = (v6 + 8);
  v43 = v6 + 16;
  v41 = MEMORY[0x277D84F90];
  v44 = result;
  if (v20)
  {
    while (1)
    {
LABEL_12:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v27 = *(v6 + 72);
      (*(v6 + 16))(v12, *(result + 48) + v27 * (v26 | (v16 << 6)), v5);
      sub_227665090();
      if (v28 > 0.0)
      {
        sub_227665040();
        v23 = v22;
        sub_227665090();
        if (v14 > v23 / v24)
        {
          goto LABEL_7;
        }

LABEL_14:
        v36 = *v37;
        v36(v38, v12, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v41;
        v45 = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_226F1F848(0, *(v41 + 16) + 1, 1);
          v30 = v45;
        }

        v32 = *(v30 + 16);
        v31 = *(v30 + 24);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v41 = v32 + 1;
          v35 = v32;
          sub_226F1F848(v31 > 1, v32 + 1, 1);
          v33 = v41;
          v32 = v35;
          v30 = v45;
        }

        *(v30 + 16) = v33;
        v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v41 = v30;
        v36((v30 + v34 + v32 * v27), v38, v5);
        result = v44;
        if (!v20)
        {
          break;
        }
      }

      else
      {
        if (v14 <= 0.0)
        {
          goto LABEL_14;
        }

LABEL_7:
        (*v42)(v12, v5);
        result = v44;
        if (!v20)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v25 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v25 >= v21)
    {

      *v40 = v41;
      return result;
    }

    v20 = *(v17 + 8 * v25);
    ++v16;
    if (v20)
    {
      v16 = v25;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2274095B8(uint64_t *a1)
{
  v2 = sub_2276650A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = sub_22714B8A4(MEMORY[0x277D84F90]);
  v15 = v8;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v3 + 8);
    while (v10 < *(v7 + 16))
    {
      (*(v3 + 16))(v6, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v2);
      sub_2274097D0(&v15, v6, MEMORY[0x277D51310], MEMORY[0x277D51318]);
      ++v10;
      (*v11)(v6, v2);
      if (v9 == v10)
      {
        v8 = v15;
        goto LABEL_6;
      }
    }

    __break(1u);

    (*v11)(v6, v2);

    __break(1u);
  }

  else
  {
LABEL_6:
    v12 = sub_226F35384(v8);
    *(swift_allocObject() + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB10, &unk_2276855B0);
    return sub_227669280();
  }

  return result;
}

uint64_t sub_2274097D0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v81 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v73 - v9;
  v78 = sub_227662750();
  v82 = *(v78 - 8);
  v10 = *(v82 + 64);
  v11 = MEMORY[0x28223BE20](v78);
  v75 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v73 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v73 - v17;
  v19 = sub_227667DE0();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19);
  v83 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED0, &qword_227682020);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v73 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v73 - v31;
  v80 = a2;
  v33 = a3(v30);
  v76 = a1;
  v35 = *a1;
  v36 = *(*a1 + 16);
  v85 = v33;
  v86 = v18;
  v37 = v34;
  v88 = v20;
  if (v36)
  {
    v38 = sub_226E92000(v33, v34);
    v40 = v88;
    if (v39)
    {
      (v88[2])(v32, *(v35 + 56) + v88[9] * v38, v19);
      v41 = v40[7];
      v42 = v32;
      v43 = 0;
    }

    else
    {
      v41 = v88[7];
      v42 = v32;
      v43 = 1;
    }

    v84 = v41;
    v41(v42, v43, 1, v19);
  }

  else
  {
    v84 = v20[7];
    v84(v32, 1, 1, v19);
    v40 = v20;
  }

  v44 = v40[6];
  if (v44(v32, 1, v19))
  {
    sub_226E97D1C(v32, &qword_27D7BCED0, &qword_227682020);
    v45 = 0;
  }

  else
  {
    v46 = v40[2];
    v47 = v83;
    v46(v83, v32, v19);
    sub_226E97D1C(v32, &qword_27D7BCED0, &qword_227682020);
    v45 = sub_227667DC0();
    v48 = v47;
    v40 = v88;
    (v88[1])(v48, v19);
  }

  v49 = v78;
  if (*(v35 + 16))
  {
    v50 = sub_226E92000(v85, v37);
    if (v51)
    {
      v40 = v88;
      (v88[2])(v29, *(v35 + 56) + v88[9] * v50, v19);
      v52 = 0;
    }

    else
    {
      v52 = 1;
      v40 = v88;
    }
  }

  else
  {
    v52 = 1;
  }

  v73 = v40 + 7;
  v84(v29, v52, 1, v19);
  v53 = v44(v29, 1, v19);
  v54 = v87;
  if (v53)
  {
    sub_226E97D1C(v29, &qword_27D7BCED0, &qword_227682020);
    v55 = v82;
    v56 = v77;
    (*(v82 + 56))(v77, 1, 1, v49);
    v57 = v86;
    sub_227662660();
    v58 = (*(v55 + 48))(v56, 1, v49);
    v59 = v79;
    if (v58 != 1)
    {
      v58 = sub_226E97D1C(v56, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v60 = v40[2];
    v61 = v40;
    v62 = v83;
    v60(v83, v29, v19);
    sub_226E97D1C(v29, &qword_27D7BCED0, &qword_227682020);
    v63 = v45;
    v64 = v77;
    sub_227667DB0();
    (v61[1])(v62, v19);
    v55 = v82;
    (*(v82 + 56))(v64, 0, 1, v49);
    v45 = v63;
    v57 = v86;
    v58 = (*(v55 + 32))();
    v59 = v79;
  }

  v81(v58);
  sub_22742F224(&qword_28139BDC0, MEMORY[0x277CC9578]);
  if (sub_22766BF90())
  {
    (*(v55 + 8))(v59, v49);
    result = (*(v55 + 16))(v54, v57, v49);
  }

  else
  {
    result = (*(v55 + 32))(v54, v59, v49);
  }

  if (__OFADD__(v45, 1))
  {
    __break(1u);
  }

  else
  {
    (*(v55 + 16))(v75, v54, v49);

    v66 = v49;
    v67 = v83;
    v68 = v85;
    sub_227667DD0();
    v69 = v19;
    v70 = v88;
    v71 = v74;
    (v88[2])(v74, v67, v69);
    v84(v71, 0, 1, v69);
    sub_227364398(v71, v68, v37);
    (v70[1])(v67, v69);
    v72 = *(v55 + 8);
    v72(v87, v66);
    return (v72)(v86, v66);
  }

  return result;
}

uint64_t sub_227409FA8@<X0>(uint64_t a1@<X8>)
{
  v204 = a1;
  v203 = sub_227662750();
  v201 = *(v203 - 8);
  v200 = *(v201 + 64);
  v1 = MEMORY[0x28223BE20](v203);
  v198 = &v179 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v218 = &v179 - v3;
  v197 = sub_22766B360();
  v196 = *(v197 - 8);
  v4 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v195 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B340();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v194 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A0, &unk_22767E430);
  v230 = *(v216 - 8);
  v206 = *(v230 + 64);
  v9 = MEMORY[0x28223BE20](v216);
  v215 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v214 = &v179 - v12;
  MEMORY[0x28223BE20](v11);
  v217 = &v179 - v13;
  v202 = sub_227669890();
  v199 = *(v202 - 8);
  v14 = *(v199 + 64);
  MEMORY[0x28223BE20](v202);
  v229 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
  v193 = *(v207 - 8);
  v192 = v193[8];
  v16 = MEMORY[0x28223BE20](v207);
  v191 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v190 = &v179 - v18;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9550, &qword_22767B2D0);
  v219 = *(v188 - 8);
  v19 = *(v219 + 64);
  v20 = MEMORY[0x28223BE20](v188);
  MEMORY[0x28223BE20](v20);
  v22 = &v179 - v21;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v236 = *(v232 - 8);
  v234 = *(v236 + 64);
  v23 = MEMORY[0x28223BE20](v232);
  v213 = &v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v235 = &v179 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v212 = &v179 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v211 = &v179 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v209 = &v179 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v227 = &v179 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v228 = &v179 - v36;
  MEMORY[0x28223BE20](v35);
  v231 = &v179 - v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA88, &qword_2276852C8);
  v38 = swift_allocBox();
  v40 = v39;
  v41 = sub_2276661C0();
  v42 = *(*(v41 - 8) + 56);
  v42(v40, 1, 1, v41);
  v226 = swift_allocBox();
  v42(v43, 1, 1, v41);
  v44 = swift_allocObject();
  v225 = v44;
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  v45 = *(v208 + 6);
  __swift_project_boxed_opaque_existential_0(v208 + 2, *(v208 + 5));
  v46 = v22;
  sub_22766ADE0();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_227431AFC;
  *(v47 + 24) = v38;
  v210 = v38;
  v48 = v219;
  v49 = *(v219 + 16);
  v186 = v219 + 16;
  v187 = v49;
  v50 = &v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v50;
  v51 = v188;
  v49(v50, v22, v188);
  v52 = *(v48 + 80);
  v185 = v52;
  v53 = (v52 + 16) & ~v52;
  v183 = v53;
  v54 = (v19 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v180 = v54;
  v55 = swift_allocObject();
  v182 = *(v48 + 32);
  v184 = v48 + 32;
  v182(v55 + v53, v50, v51);
  v56 = (v55 + v54);
  *v56 = sub_226FD036C;
  v56[1] = v47;

  v57 = v228;
  sub_227669270();
  v58 = *(v48 + 8);
  v219 = v48 + 8;
  v181 = v58;
  v59 = v51;
  v58(v22, v51);
  v189 = 0x800000022769FE30;
  v60 = swift_allocObject();
  v60[2] = 0xD000000000000036;
  v60[3] = 0x800000022769FE30;
  v60[4] = 373;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_226F33024;
  *(v61 + 24) = v60;
  v62 = v236;
  v63 = *(v236 + 16);
  v205 = v236 + 16;
  v221 = v63;
  v64 = v227;
  v65 = v57;
  v66 = v57;
  v67 = v232;
  v63(v227, v65, v232);
  v68 = *(v62 + 80);
  v224 = v68;
  v69 = (v68 + 16) & ~v68;
  v222 = v69;
  v70 = (v234 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v220 = v70;
  v71 = swift_allocObject();
  v233 = *(v62 + 32);
  v234 = v62 + 32;
  v233(v71 + v69, v64, v67);
  v72 = (v71 + v70);
  *v72 = sub_226F32FE8;
  v72[1] = v61;
  sub_227669270();
  v73 = *(v62 + 8);
  v236 = v62 + 8;
  v223 = v73;
  v73(v66, v67);
  v74 = *(v208 + 6);
  __swift_project_boxed_opaque_existential_0(v208 + 2, *(v208 + 5));
  v75 = v46;
  sub_22766AE00();
  v76 = swift_allocObject();
  v77 = v226;
  *(v76 + 16) = sub_227431304;
  *(v76 + 24) = v77;
  v78 = v179;
  v79 = v59;
  v187(v179, v75, v59);
  v80 = v180;
  v81 = swift_allocObject();
  v182(v81 + v183, v78, v79);
  v82 = (v81 + v80);
  *v82 = sub_227431AC8;
  v82[1] = v76;

  sub_227669270();
  v181(v75, v79);
  v83 = v190;
  sub_22740B804();
  v84 = swift_allocObject();
  v85 = v225;
  *(v84 + 16) = sub_2273BC074;
  *(v84 + 24) = v85;
  v86 = v193;
  v87 = v191;
  v88 = v83;
  v89 = v207;
  (v193[2])(v191, v83, v207);
  v90 = v86;
  v91 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v92 = (v192 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (v90[4])(v93 + v91, v87, v89);
  v94 = (v93 + v92);
  *v94 = sub_226FCBEE0;
  v94[1] = v84;

  v95 = v209;
  sub_227669270();
  (v90[1])(v88, v89);
  v96 = swift_allocObject();
  v96[2] = 0xD000000000000036;
  v96[3] = v189;
  v96[4] = 381;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_226F33024;
  *(v97 + 24) = v96;
  v98 = v211;
  v99 = v232;
  v100 = v221;
  v221(v211, v95, v232);
  v101 = v220;
  v102 = v224;
  v103 = swift_allocObject();
  v233(v103 + v222, v98, v99);
  v104 = (v103 + v101);
  *v104 = sub_226F32FE8;
  v104[1] = v97;
  v105 = v227;
  sub_227669270();
  v106 = v99;
  v107 = v236;
  v223(v95, v99);
  sub_22766A7E0();
  v100(v95, v231, v99);
  v100(v98, v228, v99);
  v108 = v212;
  v100(v212, v105, v106);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8420, &unk_227670880);
  v109 = *(v107 + 64);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_227675BD0;
  v111 = v110 + ((v102 + 32) & ~v102);
  v112 = v233;
  v233(v111, v209, v106);
  v112(v111 + v109, v211, v106);
  v113 = v106;
  v114 = v221;
  v221((v111 + 2 * v109), v108, v106);
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v115 = sub_22766C950();
  sub_227669A50();
  v116 = v235;
  sub_227669250();

  v117 = swift_allocObject();
  v118 = v226;
  v119 = v210;
  v117[2] = v225;
  v117[3] = v119;
  v117[4] = v118;
  v120 = swift_allocObject();
  *(v120 + 16) = sub_227431348;
  *(v120 + 24) = v117;
  v121 = v213;
  v114(v213, v116, v113);
  v122 = v220;
  v123 = swift_allocObject();
  v233(v123 + v222, v121, v113);
  v124 = (v123 + v122);
  *v124 = sub_226F09740;
  v124[1] = v120;
  v125 = sub_227665630();

  v126 = v214;
  v191 = v125;
  sub_227669270();
  v223(v235, v113);
  v127 = v230;
  v211 = *(v230 + 16);
  v219 = v230 + 16;
  v128 = v215;
  v129 = v126;
  v130 = v216;
  (v211)(v215, v126, v216);
  v131 = *(v127 + 80);
  v209 = v131;
  v190 = (((v131 + 16) & ~v131) + v206);
  v132 = (v131 + 16) & ~v131;
  v207 = v132;
  v133 = (v190 + 7) & 0xFFFFFFFFFFFFFFF8;
  v192 = v133;
  v134 = swift_allocObject();
  v135 = *(v127 + 32);
  v206 = v127 + 32;
  v208 = v135;
  v135(v134 + v132, v128, v130);
  v136 = (v134 + v133);
  *v136 = sub_22740BBB8;
  v136[1] = 0;
  v137 = v217;
  sub_227669270();
  v138 = *(v127 + 8);
  v230 = v127 + 8;
  v193 = v138;
  (v138)(v129, v130);
  v139 = sub_2276697A0();
  v140 = *(v139 + 48);
  v141 = *(v139 + 52);
  swift_allocObject();
  v142 = sub_227669770();
  v143 = v195;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v196 + 8))(v143, v197);
  sub_227669880();
  v144 = sub_22766A920();
  v145 = *(v144 + 48);
  v146 = *(v144 + 52);
  swift_allocObject();
  v147 = sub_22766A8F0();
  v197 = v147;
  v237 = v142;
  v148 = sub_22766C060();
  v196 = v148;
  v150 = v149;
  v151 = v218;
  sub_227662720();
  v152 = swift_allocObject();
  *(v152 + 16) = v142;
  *(v152 + 24) = v147;
  *(v152 + 32) = v148;
  *(v152 + 40) = v150;
  v195 = v150;
  *(v152 + 48) = "RemoteBrowsingEnvironmentBuilder::queryRemoteBrowsingUser";
  *(v152 + 56) = 57;
  *(v152 + 64) = 2;

  v153 = v235;
  sub_227669270();
  (v211)(v128, v137, v130);
  v154 = swift_allocObject();
  v208(v154 + v207, v128, v130);
  v155 = v213;
  v156 = v153;
  v157 = v232;
  v221(v213, v156, v232);
  v158 = v220;
  v159 = swift_allocObject();
  v233(v159 + v222, v155, v157);
  v160 = (v159 + v158);
  *v160 = sub_2274313A4;
  v160[1] = v154;
  v161 = v214;
  sub_227669270();
  v162 = v201;
  v163 = v198;
  v164 = v203;
  (*(v201 + 16))(v198, v151, v203);
  v165 = (*(v162 + 80) + 49) & ~*(v162 + 80);
  v166 = (v200 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
  v167 = swift_allocObject();
  v168 = v195;
  *(v167 + 16) = v196;
  *(v167 + 24) = v168;
  *(v167 + 32) = "RemoteBrowsingEnvironmentBuilder::queryRemoteBrowsingUser";
  *(v167 + 40) = 57;
  *(v167 + 48) = 2;
  (*(v162 + 32))(v167 + v165, v163, v164);
  *(v167 + v166) = v197;
  *(v167 + ((v166 + 15) & 0xFFFFFFFFFFFFFFF8)) = v142;
  v169 = v215;
  v170 = v161;
  v171 = v216;
  (v211)(v215, v161, v216);
  v172 = v192;
  v173 = swift_allocObject();
  v208(v173 + v207, v169, v171);
  v174 = (v173 + v172);
  *v174 = sub_2274313B8;
  v174[1] = v167;

  sub_227669270();
  v175 = v193;
  (v193)(v170, v171);
  v176 = v232;
  v177 = v223;
  v223(v235, v232);
  (*(v162 + 8))(v218, v164);
  v175(v217, v171);
  v177(v212, v176);
  (*(v199 + 8))(v229, v202);
  v177(v227, v176);
  v177(v228, v176);
  v177(v231, v176);
}

uint64_t sub_22740B6E4(void **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA88, &qword_2276852C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = *a1;
  v8 = swift_projectBox();
  v9 = v7;
  result = sub_2276661A0();
  if (!v1)
  {
    v11 = sub_2276661C0();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    swift_beginAccess();
    return sub_226F09BAC(v6, v8, &qword_27D7BDA88, &qword_2276852C8);
  }

  return result;
}

uint64_t sub_22740B804()
{
  v1 = v0[41];
  __swift_project_boxed_opaque_existential_0(v0 + 37, v0[40]);
  v2 = sub_227669FC0();
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = v2;
  v5 = v3;
  sub_226FB2548();
  if (sub_22766CC10())
  {

LABEL_4:
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    return sub_22766AE20();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  return sub_227669280();
}

uint64_t sub_22740B900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDA88, &qword_2276852C8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_227665630();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = swift_projectBox();
  v17 = swift_projectBox();
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v23 = v18;
  swift_beginAccess();
  sub_226E93170(v16, v8, &qword_27D7BDA88, &qword_2276852C8);
  swift_beginAccess();
  sub_226E93170(v17, v24, &qword_27D7BDA88, &qword_2276852C8);

  sub_227665620();
  (*(v10 + 16))(v13, v15, v9);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + v20, v13, v9);
  sub_227669280();
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_22740BBB8(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5A8, &unk_227685610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v21 - v9);
  sub_226E93170(a1, v21 - v9, &qword_27D7BD5A8, &unk_227685610);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_226E97D1C(v10, &qword_27D7BD5A8, &unk_227685610);
  }

  v11 = *v10;
  sub_22766A730();
  v12 = v11;
  v13 = sub_22766B380();
  v14 = sub_22766C890();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136446210;
    swift_getErrorValue();
    v17 = MEMORY[0x22AA995D0](v21[2], v21[3]);
    v19 = sub_226E97AE8(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_226E8E000, v13, v14, "Unable to query remote browsing user: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22740BE40@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v105 = *(v120 - 8);
  v104 = *(v105 + 64);
  v2 = MEMORY[0x28223BE20](v120);
  v103 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v118 = &v90 - v4;
  v123 = sub_227662750();
  v119 = *(v123 - 8);
  v107 = *(v119 + 64);
  v5 = MEMORY[0x28223BE20](v123);
  v106 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v122 = &v90 - v7;
  v100 = sub_22766B360();
  v99 = *(v100 - 8);
  v8 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v95 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B340();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD508, &unk_227684C28);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v90 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD500, &qword_227684C20);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v121 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v110 = &v90 - v29;
  MEMORY[0x28223BE20](v28);
  v109 = &v90 - v30;
  v102 = sub_227669890();
  v101 = *(v102 - 8);
  v31 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v112 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v33 = __swift_project_boxed_opaque_existential_0((v1 + 600), *(v1 + 624));
  (*(v119 + 56))(v16, 1, 1, v123);
  v34 = *v33;
  sub_2273BA478(v16, v23);
  sub_226E97D1C(v16, &qword_27D7B9690, qword_227670B50);
  (*(v18 + 16))(v21, v23, v17);
  v35 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v36 = swift_allocObject();
  (*(v18 + 32))(v36 + v35, v21, v17);
  v37 = (v36 + ((v19 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v37 = sub_22740CA18;
  v37[1] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB00, &unk_227685590);
  v39 = v110;
  v111 = v38;
  sub_227669270();
  (*(v18 + 8))(v23, v17);
  v40 = *(v25 + 16);
  v116 = v25 + 16;
  v117 = v40;
  v41 = v121;
  v42 = v39;
  v43 = v24;
  v40(v121, v39, v24);
  v44 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v115 = *(v25 + 80);
  v93 = v44 + v26;
  v45 = v44;
  v114 = v44;
  v46 = (v44 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = v46;
  v47 = swift_allocObject();
  v48 = *(v25 + 32);
  v113 = v25 + 32;
  v48(v47 + v45, v41, v43);
  v91 = v48;
  v49 = (v47 + v46);
  *v49 = sub_22740CAB0;
  v49[1] = 0;
  v50 = v109;
  sub_227669270();
  v51 = *(v25 + 8);
  v96 = v25 + 8;
  v97 = v51;
  v51(v42, v43);
  v52 = sub_2276697A0();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  v55 = sub_227669770();
  v56 = v95;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v99 + 8))(v56, v100);
  sub_227669880();
  v57 = sub_22766A920();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  v60 = sub_22766A8F0();
  v100 = v60;
  v124 = v55;
  v61 = sub_22766C060();
  v99 = v61;
  v63 = v62;
  sub_227662720();
  v64 = swift_allocObject();
  v92 = v55;
  *(v64 + 16) = v55;
  *(v64 + 24) = v60;
  *(v64 + 32) = v61;
  *(v64 + 40) = v63;
  v98 = v63;
  *(v64 + 48) = "RemoteBrowsingEnvironmentBuilder.queryMetricIdentifiers";
  *(v64 + 56) = 55;
  *(v64 + 64) = 2;

  v65 = v118;
  sub_227669270();
  v66 = v121;
  v90 = v43;
  v117(v121, v50, v43);
  v67 = swift_allocObject();
  v48(v67 + v114, v66, v43);
  v68 = v105;
  v69 = v103;
  v70 = v120;
  (*(v105 + 16))(v103, v65, v120);
  v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v72 = (v104 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v68 + 32))(v73 + v71, v69, v70);
  v74 = (v73 + v72);
  *v74 = sub_227430B58;
  v74[1] = v67;
  v75 = v110;
  sub_227669270();
  v76 = v119;
  v77 = v106;
  v78 = v123;
  (*(v119 + 16))(v106, v122, v123);
  v79 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v80 = (v107 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v98;
  *(v81 + 16) = v99;
  *(v81 + 24) = v82;
  *(v81 + 32) = "RemoteBrowsingEnvironmentBuilder.queryMetricIdentifiers";
  *(v81 + 40) = 55;
  *(v81 + 48) = 2;
  (*(v76 + 32))(v81 + v79, v77, v78);
  *(v81 + v80) = v100;
  *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v92;
  v83 = v121;
  v84 = v90;
  v117(v121, v75, v90);
  v85 = v94;
  v86 = swift_allocObject();
  v91(v86 + v114, v83, v84);
  v87 = (v86 + v85);
  *v87 = sub_227431B1C;
  v87[1] = v81;

  sub_227669270();
  v88 = v97;
  v97(v75, v84);
  (*(v68 + 8))(v118, v120);
  (*(v76 + 8))(v122, v123);
  v88(v109, v84);
  (*(v101 + 8))(v112, v102);
}

uint64_t sub_22740CA18(uint64_t *a1)
{
  v1 = *a1;

  v3 = sub_226F355E4(v2);
  *(swift_allocObject() + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB00, &unk_227685590);

  return sub_227669280();
}

uint64_t sub_22740CAB0(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v7 = a1;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = MEMORY[0x22AA995D0](v16[2], v16[3]);
    v14 = sub_226E97AE8(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v8, v9, "Unable to fetch metric identifiers: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  *(swift_allocObject() + 16) = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB00, &unk_227685590);
  return sub_227669280();
}

uint64_t sub_22740CCDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4F0, &unk_22767E3D0);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9198, &qword_227673450);
  sub_226ECF5D8(sub_227430A24, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryResumableSessions";
  *(v39 + 56) = 56;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_227430A40;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryResumableSessions";
  *(v59 + 40) = 56;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_22740D5DC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v6 = sub_2276676D0();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227663FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *__swift_project_boxed_opaque_existential_0(a2 + 47, a2[50]);
  result = sub_226EAF48C(a1, v14);
  if (!v3)
  {
    v21 = v10;
    v22 = v6;
    v23 = v11;
    sub_227663EC0();
    v17 = *__swift_project_boxed_opaque_existential_0(a2 + 22, a2[25]);
    v18 = sub_22701C560(v9, a1);
    v19 = sub_2273FA844(v18);

    v20 = sub_226F42FB8(v19);

    (*(v25 + 8))(v9, v22);
    result = (*(v23 + 8))(v14, v21);
    *v24 = v20;
  }

  return result;
}

uint64_t sub_22740D834@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  LODWORD(v105) = a1;
  v103 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v104 = *(v112 - 8);
  v4 = *(v104 + 64);
  v5 = MEMORY[0x28223BE20](v112);
  v99 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v6;
  MEMORY[0x28223BE20](v5);
  v111 = v84 - v7;
  v110 = sub_227662750();
  v102 = *(v110 - 8);
  v8 = *(v102 + 64);
  v9 = MEMORY[0x28223BE20](v110);
  v101 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v10;
  MEMORY[0x28223BE20](v9);
  v113 = v84 - v11;
  v93 = sub_22766B360();
  v92 = *(v93 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v14 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B340();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v91 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v84 - v23;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v97 = *(v109 - 8);
  v25 = *(v97 + 64);
  v26 = MEMORY[0x28223BE20](v109);
  v106 = v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v94 = v84 - v28;
  MEMORY[0x28223BE20](v27);
  v108 = v84 - v29;
  v96 = sub_227669890();
  v95 = *(v96 - 8);
  v30 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v107 = v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v32 = *__swift_project_boxed_opaque_existential_0((v3 + 840), *(v3 + 864));
  v33 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v32 + v33, &v116);
  if (v117)
  {
    sub_226E92AB8(&v116, &v115);
    sub_226E91B50(&v115, &v114);
    v34 = swift_allocObject();
    sub_226E92AB8(&v114, v34 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(&v115);
  }

  else
  {
    sub_226F099DC();
    v35 = swift_allocError();
    *v36 = 0;
    *(swift_allocObject() + 16) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  v37 = swift_allocObject();
  *(v37 + 16) = v105 & 1;
  (*(v19 + 16))(v22, v24, v18);
  v38 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v39 = swift_allocObject();
  (*(v19 + 32))(v39 + v38, v22, v18);
  v40 = (v39 + ((v20 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v40 = sub_227430760;
  v40[1] = v37;
  v105 = sub_227665AD0();
  v41 = v108;
  sub_227669270();
  (*(v19 + 8))(v24, v18);
  v42 = sub_2276697A0();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v92 + 8))(v14, v93);
  sub_227669880();
  v46 = sub_22766A920();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  v49 = sub_22766A8F0();
  v93 = v49;
  *&v116 = v45;
  v50 = sub_22766C060();
  v92 = v50;
  v52 = v51;
  sub_227662720();
  v53 = swift_allocObject();
  v90 = v45;
  *(v53 + 16) = v45;
  *(v53 + 24) = v49;
  *(v53 + 32) = v50;
  *(v53 + 40) = v52;
  v91 = v52;
  *(v53 + 48) = "RemoteBrowsingEnvironmentBuilder.fetchServiceSubscription";
  *(v53 + 56) = 57;
  *(v53 + 64) = 2;

  v54 = v111;
  sub_227669270();
  v55 = v97;
  v56 = *(v97 + 16);
  v84[1] = v97 + 16;
  v89 = v56;
  v57 = v106;
  v58 = v109;
  v56(v106, v41, v109);
  v88 = *(v55 + 80);
  v85 = ((v88 + 16) & ~v88) + v25;
  v59 = (v88 + 16) & ~v88;
  v87 = v59;
  v60 = swift_allocObject();
  v61 = *(v55 + 32);
  v84[0] = v55 + 32;
  v86 = v61;
  v61(v60 + v59, v57, v58);
  v62 = v104;
  v63 = v99;
  v64 = v112;
  (*(v104 + 16))(v99, v54, v112);
  v65 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v66 = (v98 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  (*(v62 + 32))(v67 + v65, v63, v64);
  v68 = (v67 + v66);
  *v68 = sub_226EDA6EC;
  v68[1] = v60;
  v69 = v94;
  sub_227669270();
  v70 = v102;
  v71 = v101;
  v72 = v110;
  (*(v102 + 16))(v101, v113, v110);
  v73 = (*(v70 + 80) + 49) & ~*(v70 + 80);
  v74 = (v100 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  v76 = v91;
  *(v75 + 16) = v92;
  *(v75 + 24) = v76;
  *(v75 + 32) = "RemoteBrowsingEnvironmentBuilder.fetchServiceSubscription";
  *(v75 + 40) = 57;
  *(v75 + 48) = 2;
  (*(v70 + 32))(v75 + v73, v71, v72);
  *(v75 + v74) = v93;
  *(v75 + ((v74 + 15) & 0xFFFFFFFFFFFFFFF8)) = v90;
  v77 = v106;
  v78 = v109;
  v89(v106, v69, v109);
  v79 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v86(v80 + v87, v77, v78);
  v81 = (v80 + v79);
  *v81 = sub_227430768;
  v81[1] = v75;

  sub_227669270();
  v82 = *(v55 + 8);
  v82(v69, v78);
  (*(v62 + 8))(v111, v112);
  (*(v70 + 8))(v113, v110);
  v82(v108, v78);
  (*(v95 + 8))(v107, v96);
}

uint64_t sub_22740E494(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22740E5B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC670, &qword_22767E3C8);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
  sub_226ECF5D8(sub_2274306E0, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryUpNextQueue";
  *(v39 + 56) = 50;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_2274306FC;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryUpNextQueue";
  *(v59 + 40) = 50;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_22740EEB0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EA8, &unk_227678700);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_2272343B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  v22 = v15;
  swift_setDeallocating();

  v23 = *(v12 + 40);

  v24 = qword_2813B2078;
  v25 = sub_22766A100();
  (*(*(v25 - 8) + 8))(v12 + v24, v25);
  v26 = *(*v12 + 48);
  v27 = *(*v12 + 52);
  swift_deallocClassInstance();
  v28 = *(v22 + 16);
  if (!v28)
  {
    v29 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v33 = a2;
  v29 = sub_2274CDA24(v28, 0);
  v30 = *(sub_227664AA0() - 8);
  v31 = sub_2274CEE34(&v32, &v29[(*(v30 + 80) + 32) & ~*(v30 + 80)], v28, v22);

  sub_226EBB21C();
  if (v31 == v28)
  {
    a2 = v33;
LABEL_7:
    v32 = v29;
    sub_22742AF3C(&v32);

    *a2 = v32;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22740F1BC@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v96 = *(v2 - 8);
  v97 = v2;
  v84 = *(v96 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v83 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v95 = &v70 - v5;
  v98 = sub_227662750();
  v88 = *(v98 - 8);
  v87 = *(v88 + 64);
  v6 = MEMORY[0x28223BE20](v98);
  v85 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v70 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB80, &unk_22767BC20);
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = v92[8];
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v82 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  v89 = sub_227669890();
  v86 = *(v89 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v89);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = swift_allocObject();
  *(v26 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v26 + 24) = 54;
  *(v26 + 32) = 2;
  *(v26 + 40) = 481;
  *(v26 + 48) = &unk_227685530;
  *(v26 + 56) = v1;
  v94 = sub_2276638D0();

  v27 = v22;
  v80 = v22;
  sub_227669270();
  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v81 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v78 = v35;
  v100 = v31;
  v36 = sub_22766C060();
  v38 = v37;
  v77 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v79 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryActiveWorkoutPlan";
  *(v39 + 56) = 56;
  *(v39 + 64) = 2;

  v40 = v95;
  sub_227669270();
  v41 = v92;
  v42 = v92[2];
  v75 = v92 + 2;
  v76 = v42;
  v43 = v91;
  v44 = v27;
  v45 = v93;
  v42(v91, v44, v93);
  v74 = *(v41 + 80);
  v71 = ((v74 + 16) & ~v74) + v17;
  v46 = (v74 + 16) & ~v74;
  v73 = v46;
  v47 = swift_allocObject();
  v72 = v41[4];
  v72(v47 + v46, v43, v45);
  v48 = v96;
  v49 = v97;
  v50 = v83;
  (*(v96 + 16))(v83, v40, v97);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v84 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v50, v49);
  v54 = (v53 + v52);
  *v54 = sub_227430668;
  v54[1] = v47;
  v55 = v82;
  sub_227669270();
  v56 = v88;
  v57 = v85;
  v58 = v98;
  (*(v88 + 16))(v85, v99, v98);
  v59 = (*(v56 + 80) + 49) & ~*(v56 + 80);
  v60 = (v87 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v77;
  *(v61 + 16) = v36;
  *(v61 + 24) = v62;
  *(v61 + 32) = "RemoteBrowsingEnvironmentBuilder::queryActiveWorkoutPlan";
  *(v61 + 40) = 56;
  *(v61 + 48) = 2;
  (*(v56 + 32))(v61 + v59, v57, v58);
  *(v61 + v60) = v78;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
  v63 = v91;
  v64 = v93;
  v76(v91, v55, v93);
  v65 = (v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v72(v66 + v73, v63, v64);
  v67 = (v66 + v65);
  *v67 = sub_2274306A4;
  v67[1] = v61;

  sub_227669270();
  v68 = v92[1];
  v68(v55, v64);
  (*(v96 + 8))(v95, v97);
  (*(v56 + 8))(v99, v98);
  v68(v80, v64);
  (*(v86 + 8))(v81, v89);
}

uint64_t sub_22740FAD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22740FAF0, 0, 0);
}

uint64_t sub_22740FAF0()
{
  v1 = v0[3];
  v2 = v1[83];
  v3 = v1[84];
  __swift_project_boxed_opaque_existential_0(v1 + 80, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  v7 = sub_2276638D0();
  *v6 = v0;
  v6[1] = sub_22710AC00;
  v8 = v0[2];
  v9 = v0[3];

  return (v11)(v8, sub_227431AE4, v9, v7, v2, v3);
}

char *sub_22740FC5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  result = sub_226E9B790(0, 1, a1);
  if (!v2)
  {
    sub_22722AEAC(result, v8);

    v10 = sub_2276638D0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_226E97D1C(v8, &unk_27D7BB920, &unk_227672480);
      v12 = sub_227664EC0();
      sub_22742F224(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51188], v12);
      return swift_willThrow();
    }

    else
    {
      return (*(v11 + 32))(a2, v8, v10);
    }
  }

  return result;
}

uint64_t sub_22740FE4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4D0, &unk_227684BE0);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC1E0, &qword_22767CEB0);
  sub_226ECF5D8(sub_227430508, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryRecentlyViewedWorkoutPlanSummaries";
  *(v39 + 56) = 73;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_227430550;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryRecentlyViewedWorkoutPlanSummaries";
  *(v59 + 40) = 73;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_22741074C@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v95 = *(v2 - 8);
  v96 = v2;
  v83 = *(v95 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v82 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = &v69 - v5;
  v97 = sub_227662750();
  v87 = *(v97 - 8);
  v86 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v84 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v69 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC668, &qword_22767E3C0);
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = v91[8];
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v81 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  v88 = sub_227669890();
  v85 = *(v88 - 8);
  v23 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = swift_allocObject();
  *(v26 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v26 + 24) = 54;
  *(v26 + 32) = 2;
  *(v26 + 40) = 511;
  *(v26 + 48) = &unk_2276854C8;
  *(v26 + 56) = v1;

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAE0, &qword_2276854D0);
  v79 = v22;
  sub_227669270();
  v27 = sub_2276697A0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_227669770();
  v80 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v31 = sub_22766A920();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_22766A8F0();
  v77 = v34;
  v99 = v30;
  v35 = sub_22766C060();
  v37 = v36;
  v76 = v36;
  sub_227662720();
  v38 = swift_allocObject();
  v78 = v30;
  *(v38 + 16) = v30;
  *(v38 + 24) = v34;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  *(v38 + 48) = "RemoteBrowsingEnvironmentBuilder::queryRecentWorkoutPlanSummaries";
  *(v38 + 56) = 65;
  *(v38 + 64) = 2;

  v39 = v94;
  sub_227669270();
  v40 = v91;
  v41 = v91[2];
  v74 = v91 + 2;
  v75 = v41;
  v42 = v90;
  v43 = v22;
  v44 = v92;
  v41(v90, v43, v92);
  v73 = *(v40 + 80);
  v70 = ((v73 + 16) & ~v73) + v17;
  v45 = (v73 + 16) & ~v73;
  v72 = v45;
  v46 = swift_allocObject();
  v71 = v40[4];
  v71(v46 + v45, v42, v44);
  v47 = v95;
  v48 = v96;
  v49 = v82;
  (*(v95 + 16))(v82, v39, v96);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v83 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v50, v49, v48);
  v53 = (v52 + v51);
  *v53 = sub_2274302DC;
  v53[1] = v46;
  v54 = v81;
  sub_227669270();
  v55 = v87;
  v56 = v84;
  v57 = v97;
  (*(v87 + 16))(v84, v98, v97);
  v58 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v59 = (v86 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v76;
  *(v60 + 16) = v35;
  *(v60 + 24) = v61;
  *(v60 + 32) = "RemoteBrowsingEnvironmentBuilder::queryRecentWorkoutPlanSummaries";
  *(v60 + 40) = 65;
  *(v60 + 48) = 2;
  (*(v55 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v77;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v62 = v90;
  v63 = v92;
  v75(v90, v54, v92);
  v64 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v71(v65 + v72, v62, v63);
  v66 = (v65 + v64);
  *v66 = sub_227431B1C;
  v66[1] = v60;

  sub_227669270();
  v67 = v91[1];
  v67(v54, v63);
  (*(v95 + 8))(v94, v96);
  (*(v55 + 8))(v98, v97);
  v67(v79, v63);
  (*(v85 + 8))(v80, v88);
}

uint64_t sub_227411060(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2271716E4;

  return sub_2274110F4();
}

uint64_t sub_2274110F4()
{
  v1[4] = v0;
  v2 = sub_22766B390();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274111B4, 0, 0);
}

uint64_t sub_2274111B4()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_22766A670();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[83];
  v6 = v4[84];
  __swift_project_boxed_opaque_existential_0(v4 + 80, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[8] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC180, &qword_2276854E0);
  *v9 = v0;
  v9[1] = sub_227411388;
  v11 = v0[4];

  return (v13)(v0 + 2, sub_227430340, v11, v10, v5, v6);
}

uint64_t sub_227411388()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2271E98B8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2274114A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2274114A4()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[10] = v2;
  v3 = sub_227665750();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAE0, &qword_2276854D0);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D859B8] + 4);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_2274115C4;

  return MEMORY[0x282200740](v0 + 3, v3, v4, 0, 0, &unk_2276854F0, v5, v3);
}

uint64_t sub_2274115C4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_227411754;
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    v4 = sub_2274116E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2274116E8()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_227411754()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[13];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

char *sub_2274117C8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_227666D70();
  result = sub_22728278C(1, 1, v5, a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22741181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_227665750();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAE8, &qword_2276854F8) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAF0, &unk_227685500);
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v11 = *(v10 + 64) + 15;
  v4[22] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v13 = sub_2276638D0();
  v4[25] = v13;
  v14 = *(v13 - 8);
  v4[26] = v14;
  v4[27] = *(v14 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227411A40, 0, 0);
}

uint64_t sub_227411A40()
{
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v46 = *(v0 + 104);
  v47 = *(v0 + 208);

  v14 = 0;
  v44 = v8;
  v45 = v3;
  while (v7)
  {
LABEL_11:
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v52 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 200);
    v50 = *(v0 + 184);
    v48 = v21;
    v49 = *(v0 + 112);
    (*(v47 + 16))(v20, *(v46 + 48) + *(v47 + 72) * (__clz(__rbit64(v7)) | (v14 << 6)), v22);
    v23 = sub_22766C4B0();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v21, 1, 1, v23);
    v25 = *(v47 + 32);
    v25(v19, v20, v22);
    v26 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v27 = swift_allocObject();
    v27[2] = 0;
    v51 = v27 + 2;
    v27[3] = 0;
    v27[4] = v49;
    v53 = v27;
    v25(v27 + v26, v19, v22);
    sub_226E93170(v48, v50, &unk_27D7BC8E0, &qword_2276784C0);
    LODWORD(v26) = (*(v24 + 48))(v50, 1, v23);

    v28 = *(v0 + 184);
    if (v26 == 1)
    {
      sub_226E97D1C(*(v0 + 184), &unk_27D7BC8E0, &qword_2276784C0);
    }

    else
    {
      sub_22766C4A0();
      (*(v24 + 8))(v28, v23);
    }

    if (*v51)
    {
      v29 = v53[3];
      v30 = *v51;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v31 = sub_22766C420();
      v33 = v32;
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = **(v0 + 96);

    if (v33 | v31)
    {
      v15 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v31;
      *(v0 + 40) = v33;
    }

    else
    {
      v15 = 0;
    }

    v7 &= v7 - 1;
    v16 = *(v0 + 192);
    v17 = *(v0 + 120);
    *(v0 + 48) = 1;
    *(v0 + 56) = v15;
    *(v0 + 64) = v34;
    swift_task_create();

    v9 = sub_226E97D1C(v16, &unk_27D7BC8E0, &qword_2276784C0);
    v8 = v44;
    v3 = v45;
  }

  while (1)
  {
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return MEMORY[0x2822004E8](v9, v10, v11, v12, v13);
    }

    if (v18 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v18);
    ++v14;
    if (v7)
    {
      v14 = v18;
      goto LABEL_11;
    }
  }

  v35 = *(v0 + 176);
  v36 = *(v0 + 120);
  v38 = *(v0 + 96);
  v37 = *(v0 + 104);

  *(v0 + 72) = MEMORY[0x277D84FA0];
  v39 = *v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766C4C0();
  v40 = *(MEMORY[0x277D85828] + 4);
  v41 = swift_task_alloc();
  *(v0 + 240) = v41;
  *v41 = v0;
  v41[1] = sub_227411EA0;
  v42 = *(v0 + 176);
  v9 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = v0 + 80;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x2822004E8](v9, v10, v11, v12, v13);
}

uint64_t sub_227411EA0()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_2274121B4;
  }

  else
  {
    v5 = sub_227411FB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227411FB8()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[28];
    v4 = v0[29];
    v7 = v0[23];
    v6 = v0[24];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[11];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v10 = v0[9];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[17];
    v13 = v0[18];
    (*(v3 + 32))(v14, v1, v2);
    sub_2270C00D8(v13, v14);
    (*(v3 + 8))(v13, v2);
    v15 = *(MEMORY[0x277D85828] + 4);
    v16 = swift_task_alloc();
    v0[30] = v16;
    *v16 = v0;
    v16[1] = sub_227411EA0;
    v17 = v0[22];
    v18 = v0[19];
    v19 = v0[20];

    return MEMORY[0x2822004E8](v18, 0, 0, v19, v0 + 10);
  }
}

uint64_t sub_2274121B4()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[19];
  v7 = v0[17];
  v6 = v0[18];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_227412298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_2276627D0();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22741235C, 0, 0);
}

uint64_t sub_22741235C()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0((v0[3] + 960), *(v0[3] + 984));
  sub_2276637C0();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_227412420;
  v4 = v0[7];
  v5 = v0[2];

  return sub_22714E544(v5, v4);
}

uint64_t sub_227412420()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *v1;
  v6[9] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226FFC220, 0, 0);
  }

  else
  {
    v7 = v6[7];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_2274125C8@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v95 = *(v2 - 8);
  v96 = v2;
  v83 = *(v95 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v82 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = &v69 - v5;
  v97 = sub_227662750();
  v87 = *(v97 - 8);
  v86 = *(v87 + 64);
  v6 = MEMORY[0x28223BE20](v97);
  v84 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v69 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD4C0, &unk_227684BD0);
  v91 = *(v16 - 8);
  v92 = v16;
  v17 = v91[8];
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v81 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  v88 = sub_227669890();
  v85 = *(v88 - 8);
  v23 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = swift_allocObject();
  *(v26 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v26 + 24) = 54;
  *(v26 + 32) = 2;
  *(v26 + 40) = 546;
  *(v26 + 48) = &unk_2276854B0;
  *(v26 + 56) = v1;

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAD8, &qword_2276854B8);
  v79 = v22;
  sub_227669270();
  v27 = sub_2276697A0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_227669770();
  v80 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v31 = sub_22766A920();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_22766A8F0();
  v77 = v34;
  v99 = v30;
  v35 = sub_22766C060();
  v37 = v36;
  v76 = v36;
  sub_227662720();
  v38 = swift_allocObject();
  v78 = v30;
  *(v38 + 16) = v30;
  *(v38 + 24) = v34;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  *(v38 + 48) = "RemoteBrowsingEnvironmentBuilder::queryActiveWorkoutPlanItemMetrics";
  *(v38 + 56) = 67;
  *(v38 + 64) = 2;

  v39 = v94;
  sub_227669270();
  v40 = v91;
  v41 = v91[2];
  v74 = v91 + 2;
  v75 = v41;
  v42 = v90;
  v43 = v22;
  v44 = v92;
  v41(v90, v43, v92);
  v73 = *(v40 + 80);
  v70 = ((v73 + 16) & ~v73) + v17;
  v45 = (v73 + 16) & ~v73;
  v72 = v45;
  v46 = swift_allocObject();
  v71 = v40[4];
  v71(v46 + v45, v42, v44);
  v47 = v95;
  v48 = v96;
  v49 = v82;
  (*(v95 + 16))(v82, v39, v96);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v83 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v50, v49, v48);
  v53 = (v52 + v51);
  *v53 = sub_22743017C;
  v53[1] = v46;
  v54 = v81;
  sub_227669270();
  v55 = v87;
  v56 = v84;
  v57 = v97;
  (*(v87 + 16))(v84, v98, v97);
  v58 = (*(v55 + 80) + 49) & ~*(v55 + 80);
  v59 = (v86 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v61 = v76;
  *(v60 + 16) = v35;
  *(v60 + 24) = v61;
  *(v60 + 32) = "RemoteBrowsingEnvironmentBuilder::queryActiveWorkoutPlanItemMetrics";
  *(v60 + 40) = 67;
  *(v60 + 48) = 2;
  (*(v55 + 32))(v60 + v58, v56, v57);
  *(v60 + v59) = v77;
  *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
  v62 = v90;
  v63 = v92;
  v75(v90, v54, v92);
  v64 = (v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v71(v65 + v72, v62, v63);
  v66 = (v65 + v64);
  *v66 = sub_2274301B8;
  v66[1] = v60;

  sub_227669270();
  v67 = v91[1];
  v67(v54, v63);
  (*(v95 + 8))(v94, v96);
  (*(v55 + 8))(v98, v97);
  v67(v79, v63);
  (*(v85 + 8))(v80, v88);
}

uint64_t sub_227412EDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2276627D0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2276638D0();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227412FF8, 0, 0);
}

uint64_t sub_227412FF8()
{
  v1 = v0[3];
  v2 = v1[83];
  v3 = v1[84];
  __swift_project_boxed_opaque_existential_0(v1 + 80, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_227413160;
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[3];

  return (v11)(v7, sub_22743020C, v9, v8, v2, v3);
}

uint64_t sub_227413160()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_2274134C8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_22741327C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22741327C()
{
  v1 = v0[9];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0((v0[3] + 960), *(v0[3] + 984));
  sub_2276637C0();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_227413340;
  v4 = v0[6];

  return sub_22714D158(v4);
}

uint64_t sub_227413340(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  v4[13] = v1;

  v7 = v4[6];
  v8 = v4[5];
  v9 = v4[4];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_2274135DC;
  }

  else
  {
    v4[14] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_227413540;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2274134C8()
{
  v1 = v0[3];

  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_227413540()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[2];
  (*(v0[8] + 8))(v0[9], v0[7]);
  *v3 = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_2274135DC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_227413664()
{
  v0 = sub_2276678C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  if (sub_2276697C0())
  {

    return sub_2276678B0();
  }

  else
  {
    sub_2276678B0();
    sub_2276678A0();
    v12 = MEMORY[0x277D53030];
    sub_22742F224(&qword_27D7BDAC0, MEMORY[0x277D53030]);
    sub_22766C290();
    sub_22742F224(&qword_27D7BDAC8, v12);
    sub_22766D4C0();
    (*(v1 + 16))(v5, v8, v0);
    sub_22742F224(&qword_27D7BDAD0, v12);
    sub_22766CC60();
    v13 = *(v1 + 8);
    v13(v8, v0);
    return (v13)(v10, v0);
  }
}

uint64_t sub_2274138B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC660, &unk_22767E3B0);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDAB8, &qword_2276854A0);
  sub_226ECF5D8(sub_227430018, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAllAudioFocusSelection";
  *(v39 + 56) = 61;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_227430044;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAllAudioFocusSelection";
  *(v59 + 40) = 61;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_2274141B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v76 = *(v77 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC658, &qword_22767E3A8);
  v89 = *(v15 - 8);
  v90 = v15;
  v16 = v89[8];
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v79 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v93 = &v68 - v20;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v22 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v25 = *(v1 + 664);
  v26 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v25);
  v27 = sub_227669040();
  v91 = v27;

  sub_226ECF5D8(sub_22742FF84, v2, v25, v27, v26, v21);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v24;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v76 + 8))(v12, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v76 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v75 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAudioLanguageEngagementSheetAcknowledgment";
  *(v39 + 56) = 81;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v16;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_22742FFA0;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v76;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAudioLanguageEngagementSheetAcknowledgment";
  *(v59 + 40) = 81;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v75;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_22742FFDC;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_227414AB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C90, &qword_227671C88);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = *__swift_project_boxed_opaque_existential_0((a2 + 416), *(a2 + 440));
  result = sub_2275129B4(a1, v13);
  if (!v3)
  {
    sub_226E93170(v13, v11, &qword_27D7B8C90, &qword_227671C88);
    v16 = sub_227669040();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v11, 1, v16) == 1)
    {
      sub_226E97D1C(v11, &qword_27D7B8C90, &qword_227671C88);
      sub_227669030();
      return sub_226E97D1C(v13, &qword_27D7B8C90, &qword_227671C88);
    }

    else
    {
      sub_226E97D1C(v13, &qword_27D7B8C90, &qword_227671C88);
      return (*(v17 + 32))(a3, v11, v16);
    }
  }

  return result;
}

uint64_t sub_227414C7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v107 = *(v3 - 8);
  v108 = v3;
  v96 = *(v107 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v95 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v106 = &v81 - v6;
  v109 = sub_227662750();
  v99 = *(v109 - 8);
  v98 = *(v99 + 64);
  v7 = MEMORY[0x28223BE20](v109);
  v97 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v110 = &v81 - v9;
  v89 = sub_22766B360();
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD490, &unk_227684BA0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v81 - v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC650, &qword_22767E3A0);
  v103 = *(v105 - 8);
  v90 = v103[8];
  v23 = MEMORY[0x28223BE20](v105);
  v91 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v92 = &v81 - v26;
  MEMORY[0x28223BE20](v25);
  v101 = &v81 - v27;
  v28 = sub_227669890();
  v93 = *(v28 - 8);
  v94 = v28;
  v29 = *(v93 + 64);
  MEMORY[0x28223BE20](v28);
  v102 = &v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v31 = *(v1 + 664);
  v32 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v31);

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  sub_226ECF5D8(sub_22742FE8C, v2, v31, v33, v32, v22);

  v34 = swift_allocObject();
  *(v34 + 16) = sub_22741574C;
  *(v34 + 24) = 0;
  (*(v17 + 16))(v20, v22, v16);
  v35 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v36 = (v18 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  (*(v17 + 32))(v37 + v35, v20, v16);
  v38 = (v37 + v36);
  *v38 = sub_22742FEDC;
  v38[1] = v34;
  v104 = sub_2276668F0();
  v39 = v101;
  sub_227669270();
  (*(v17 + 8))(v22, v16);
  v40 = sub_2276697A0();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v88 + 8))(v12, v89);
  sub_227669880();
  v44 = sub_22766A920();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_22766A8F0();
  v89 = v47;
  v111 = v43;
  v48 = sub_22766C060();
  v88 = v48;
  v50 = v49;
  sub_227662720();
  v51 = swift_allocObject();
  v86 = v43;
  *(v51 + 16) = v43;
  *(v51 + 24) = v47;
  *(v51 + 32) = v48;
  *(v51 + 40) = v50;
  v87 = v50;
  *(v51 + 48) = "RemoteBrowsingEnvironmentBuilder::queryAudioLanguagePreference";
  *(v51 + 56) = 62;
  *(v51 + 64) = 2;

  v52 = v106;
  sub_227669270();
  v53 = v103;
  v54 = v103[2];
  v83 = v103 + 2;
  v85 = v54;
  v55 = v91;
  v56 = v39;
  v57 = v105;
  v54(v91, v56, v105);
  v84 = *(v53 + 80);
  v81 = v90 + ((v84 + 16) & ~v84);
  v58 = (v84 + 16) & ~v84;
  v82 = v58;
  v59 = swift_allocObject();
  v90 = v53[4];
  v90(v59 + v58, v55, v57);
  v61 = v107;
  v60 = v108;
  v62 = v95;
  (*(v107 + 16))(v95, v52, v108);
  v63 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v64 = (v96 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v61 + 32))(v65 + v63, v62, v60);
  v66 = (v65 + v64);
  *v66 = sub_22742FF0C;
  v66[1] = v59;
  v67 = v92;
  sub_227669270();
  v68 = v99;
  v69 = v97;
  v70 = v109;
  (*(v99 + 16))(v97, v110, v109);
  v71 = (*(v68 + 80) + 49) & ~*(v68 + 80);
  v72 = (v98 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v87;
  *(v73 + 16) = v88;
  *(v73 + 24) = v74;
  *(v73 + 32) = "RemoteBrowsingEnvironmentBuilder::queryAudioLanguagePreference";
  *(v73 + 40) = 62;
  *(v73 + 48) = 2;
  (*(v68 + 32))(v73 + v71, v69, v70);
  *(v73 + v72) = v89;
  *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v86;
  v75 = v105;
  v85(v55, v67, v105);
  v76 = (v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v90(v77 + v82, v55, v75);
  v78 = (v77 + v76);
  *v78 = sub_22742FF48;
  v78[1] = v73;

  sub_227669270();
  v79 = v103[1];
  v79(v67, v75);
  (*(v107 + 8))(v106, v108);
  (*(v68 + 8))(v110, v109);
  v79(v101, v75);
  (*(v93 + 8))(v102, v94);
}

uint64_t sub_22741574C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94C0, &unk_2276874A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  sub_226E93170(a1, &v13 - v6, &qword_27D7B94C0, &unk_2276874A0);
  v8 = sub_2276668F0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_226E97D1C(v7, &qword_27D7B94C0, &unk_2276874A0);
  v10 = sub_2276654A0();
  sub_22742F224(&qword_27D7B94C8, MEMORY[0x277D516B0]);
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D516A0], v10);
  return swift_willThrow();
}

uint64_t sub_227415924@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC680, &unk_22767E400);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB8C0, &qword_22767F780);
  sub_226ECF5D8(sub_227430FA4, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryOnboardingSurveyResult";
  *(v39 + 56) = 61;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_227430FC0;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryOnboardingSurveyResult";
  *(v59 + 40) = 61;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227430FFC;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

char *sub_227416224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22734441C(a1);
  if (!v2)
  {
    sub_226F75D68(result, a2);
  }

  return result;
}

uint64_t sub_227416268@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v3 - 8);
  v95 = v3;
  v81 = *(v94 + 64);
  v4 = MEMORY[0x28223BE20](v3);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v68 - v6;
  v96 = sub_227662750();
  v85 = *(v96 - 8);
  v84 = *(v85 + 64);
  v7 = MEMORY[0x28223BE20](v96);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v68 - v9;
  v77 = sub_22766B360();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v77);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC648, &qword_22767E398);
  v89 = *(v16 - 8);
  v90 = v16;
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v88 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v93 = &v68 - v21;
  v86 = sub_227669890();
  v83 = *(v86 - 8);
  v23 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = *(v1 + 664);
  v27 = *(v2 + 672);
  __swift_project_boxed_opaque_existential_0((v2 + 640), v26);

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8568, &unk_227685490);
  sub_226ECF5D8(sub_22742FE0C, v2, v26, v91, v27, v22);

  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v78 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v77);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v77 = v35;
  v98 = v31;
  v36 = sub_22766C060();
  v75 = v36;
  v38 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v76 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  v74 = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryRecentSearchTerms";
  *(v39 + 56) = 56;
  *(v39 + 64) = 2;

  v40 = v92;
  sub_227669270();
  v41 = v89;
  v73 = v89[2];
  v42 = v88;
  v43 = v90;
  v73(v88, v93, v90);
  v72 = *(v41 + 80);
  v69 = ((v72 + 16) & ~v72) + v17;
  v44 = (v72 + 16) & ~v72;
  v71 = v44;
  v45 = swift_allocObject();
  v70 = v41[4];
  v70(v45 + v44, v42, v43);
  v47 = v94;
  v46 = v95;
  v48 = v80;
  (*(v94 + 16))(v80, v40, v95);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v81 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_22742FE28;
  v52[1] = v45;
  v53 = v79;
  sub_227669270();
  v54 = v85;
  v55 = v82;
  v56 = v96;
  (*(v85 + 16))(v82, v97, v96);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "RemoteBrowsingEnvironmentBuilder::queryRecentSearchTerms";
  *(v59 + 40) = 56;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v77;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  v61 = v88;
  v62 = v90;
  v73(v88, v53, v90);
  v63 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v70(v64 + v71, v61, v62);
  v65 = (v64 + v63);
  *v65 = sub_227431B1C;
  v65[1] = v59;

  sub_227669270();
  v66 = v89[1];
  v66(v53, v62);
  (*(v94 + 8))(v92, v95);
  (*(v54 + 8))(v97, v96);
  v66(v93, v62);
  (*(v83 + 8))(v78, v86);
}

uint64_t sub_227416B68@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = sub_226F4A780(&unk_283A94E38);
  v6 = sub_227664980();
  v7 = sub_227397AA0(v5, v6, 0, 0, a1);

  if (!v2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_227416BE4@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v96 = *(v2 - 8);
  v97 = v2;
  v84 = *(v96 + 64);
  v3 = MEMORY[0x28223BE20](v2);
  v83 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v95 = &v70 - v5;
  v98 = sub_227662750();
  v88 = *(v98 - 8);
  v87 = *(v88 + 64);
  v6 = MEMORY[0x28223BE20](v98);
  v85 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v99 = &v70 - v8;
  v9 = sub_22766B360();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B340();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC640, &qword_22767E390);
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = v92[8];
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v82 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - v21;
  v89 = sub_227669890();
  v86 = *(v89 - 8);
  v23 = *(v86 + 64);
  MEMORY[0x28223BE20](v89);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A7E0();
  v26 = swift_allocObject();
  *(v26 + 16) = "SeymourServices/RemoteBrowsingEnvironmentBuilder.swift";
  *(v26 + 24) = 54;
  *(v26 + 32) = 2;
  *(v26 + 40) = 649;
  *(v26 + 48) = &unk_227685318;
  *(v26 + 56) = v1;
  v94 = sub_227668B50();

  v27 = v22;
  v80 = v22;
  sub_227669270();
  v28 = sub_2276697A0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_227669770();
  v81 = v25;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v10 + 8))(v13, v9);
  sub_227669880();
  v32 = sub_22766A920();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_22766A8F0();
  v78 = v35;
  v100 = v31;
  v36 = sub_22766C060();
  v38 = v37;
  v77 = v37;
  sub_227662720();
  v39 = swift_allocObject();
  v79 = v31;
  *(v39 + 16) = v31;
  *(v39 + 24) = v35;
  *(v39 + 32) = v36;
  *(v39 + 40) = v38;
  *(v39 + 48) = "RemoteBrowsingEnvironmentBuilder::queryPersonalizationData";
  *(v39 + 56) = 58;
  *(v39 + 64) = 2;

  v40 = v95;
  sub_227669270();
  v41 = v92;
  v42 = v92[2];
  v75 = v92 + 2;
  v76 = v42;
  v43 = v91;
  v44 = v27;
  v45 = v93;
  v42(v91, v44, v93);
  v74 = *(v41 + 80);
  v71 = ((v74 + 16) & ~v74) + v17;
  v46 = (v74 + 16) & ~v74;
  v73 = v46;
  v47 = swift_allocObject();
  v72 = v41[4];
  v72(v47 + v46, v43, v45);
  v48 = v96;
  v49 = v97;
  v50 = v83;
  (*(v96 + 16))(v83, v40, v97);
  v51 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v52 = (v84 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v48 + 32))(v53 + v51, v50, v49);
  v54 = (v53 + v52);
  *v54 = sub_22742F4D0;
  v54[1] = v47;
  v55 = v82;
  sub_227669270();
  v56 = v88;
  v57 = v85;
  v58 = v98;
  (*(v88 + 16))(v85, v99, v98);
  v59 = (*(v56 + 80) + 49) & ~*(v56 + 80);
  v60 = (v87 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v77;
  *(v61 + 16) = v36;
  *(v61 + 24) = v62;
  *(v61 + 32) = "RemoteBrowsingEnvironmentBuilder::queryPersonalizationData";
  *(v61 + 40) = 58;
  *(v61 + 48) = 2;
  (*(v56 + 32))(v61 + v59, v57, v58);
  *(v61 + v60) = v78;
  *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v79;
  v63 = v91;
  v64 = v93;
  v76(v91, v55, v93);
  v65 = (v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v72(v66 + v73, v63, v64);
  v67 = (v66 + v65);
  *v67 = sub_22742F50C;
  v67[1] = v61;

  sub_227669270();
  v68 = v92[1];
  v68(v55, v64);
  (*(v96 + 8))(v95, v97);
  (*(v56 + 8))(v99, v98);
  v68(v80, v64);
  (*(v86 + 8))(v81, v89);
}

uint64_t sub_2274174F8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_227668830();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB930, &unk_22767B3F0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_227664CA0();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v10 = sub_227667500();
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93D8, &qword_227673E10);
  v2[21] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227417714, 0, 0);
}

uint64_t sub_227417714()
{
  v1 = v0[7];
  v2 = v1[83];
  v3 = v1[84];
  __swift_project_boxed_opaque_existential_0(v1 + 80, v2);
  v4 = *(v3 + 24);

  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_22741787C;
  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[7];

  return (v11)(v7, sub_22742F548, v9, v8, v2, v3);
}

uint64_t sub_22741787C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_227418768;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_227417998;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227417998()
{
  v1 = *(v0 + 176);
  sub_226E93170(*(v0 + 184), v1, &qword_27D7B93D8, &qword_227673E10);
  v2 = sub_227668A00();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_226E97D1C(*(v0 + 176), &qword_27D7B93D8, &qword_227673E10);
LABEL_7:
    v13 = *(v0 + 56);
    v14 = v13[83];
    v15 = v13[84];
    __swift_project_boxed_opaque_existential_0(v13 + 80, v14);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D84F90];
    *(v0 + 232) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v17;
    v18 = *(v15 + 24);

    v23 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 240) = v20;
    v21 = sub_227668B50();
    *v20 = v0;
    v20[1] = sub_227418544;
    v22 = *(v0 + 48);

    return (v23)(v22, sub_22742F598, v16, v21, v14, v15);
  }

  v4 = *(v0 + 176);
  v5 = sub_2276689C0();
  v7 = v6;
  (*(v3 + 8))(v4, v2);
  *(v0 + 16) = v5;
  *(v0 + 24) = v7 & 1;
  *(v0 + 32) = 1;
  *(v0 + 40) = 1;
  sub_22717AD98();
  sub_22717ADEC();
  if ((sub_227663B20() & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_0((*(v0 + 56) + 496), *(*(v0 + 56) + 520));
  sub_2276674E0();
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_227417CF4;
  v10 = *(v0 + 160);
  v11 = MEMORY[0x277D84F90];

  return sub_2274FBDB4(v10, v11);
}