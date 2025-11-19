id sub_26CC15DB4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_26CC15E38()
{
  if (qword_280BBA5B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC16C10;

  return sub_26CC16630();
}

uint64_t sub_26CC15F08()
{
  result = sub_26CD3A59C();
  qword_280BBA240 = result;
  return result;
}

uint64_t sub_26CC15F40()
{
  result = sub_26CD3A59C();
  qword_280BBA230 = result;
  return result;
}

uint64_t sub_26CC15F9C()
{
  result = sub_26CD3A59C();
  qword_280BBA250 = result;
  return result;
}

uint64_t sub_26CC15FD4()
{
  if (qword_280BBB3A8 != -1)
  {
    swift_once();
  }

  v0 = qword_280BBCC88;
  v1 = qword_280BBB3A0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCC80;
  v3 = qword_280BBB460;
  swift_retain_n();

  if (v3 == -1)
  {
    if (*(v2 + 48))
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (*(v2 + 48))
    {
      goto LABEL_9;
    }
  }

  sub_26CC9C624(v2);
  v4 = *(v2 + 48);
  if ((v4 & 1) == 0)
  {
    *(v2 + 48) = v4 | 1;
  }

LABEL_9:

  off_280BBB2D8 = v0;
  unk_280BBB2E0 = v2;
  return result;
}

uint64_t sub_26CC16120(uint64_t a1, char a2, uint64_t *a3)
{
  _s5CacheCMa();
  v5 = swift_allocObject();
  result = sub_26CC9E36C(0xD00000000000001DLL, 0x800000026CD4E330, a2);
  *a3 = v5;
  return result;
}

uint64_t sub_26CC161CC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CC16204()
{
  result = type metadata accessor for SportsFavoriteService.UserConsent.State();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SportsFavoriteService.Favorites.State();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for SportsFavoriteService.UserConsent.State()
{
  result = qword_280BBB500;
  if (!qword_280BBB500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CC162D4()
{
  sub_26CC16358();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26CC16358()
{
  if (!qword_280BBB690)
  {
    sub_26CD3A1EC();
    v0 = sub_26CD3AADC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BBB690);
    }
  }
}

uint64_t type metadata accessor for SportsFavoriteService.Favorites.State()
{
  result = qword_280BBB288;
  if (!qword_280BBB288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CC163FC()
{
  sub_26CC16488();
  if (v0 <= 0x3F)
  {
    sub_26CC16358();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26CC16488()
{
  if (!qword_280BBB1F8[0])
  {
    sub_26CC164E4();
    v0 = sub_26CD3A91C();
    if (!v1)
    {
      atomic_store(v0, qword_280BBB1F8);
    }
  }
}

unint64_t sub_26CC164E4()
{
  result = qword_280BBB2C8;
  if (!qword_280BBB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB2C8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26CC1664C()
{
  v1 = *MEMORY[0x277CEE160];
  v2 = [objc_opt_self() ams_sharedAccountStore];
  v3 = [v2 ams:v1 activeiTunesAccountForMediaType:?];
  v0[19] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26CC16B00;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC2E0, qword_26CD3FAC8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26CC1691C;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v3 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26CC168C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26CC1691C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26CC169F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26CD3A1EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_26CC16A84()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_26CC16B00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_26CC16A84;
  }

  else
  {
    v3 = sub_26CC52E74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CC16C10(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_26CC16D10()
{
  result = qword_280BBB2C0;
  if (!qword_280BBB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB2C0);
  }

  return result;
}

uint64_t sub_26CC16D64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_26CC16DCC()
{
  result = qword_280BBB7E8;
  if (!qword_280BBB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB7E8);
  }

  return result;
}

uint64_t sub_26CC16E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26CC16E68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for SportsFavoriteService.Favorites.State();
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20]();
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD208, &qword_26CD451E8);
  v26 = *(v29 - 8);
  v9 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v22 - v10;
  v12 = _s5CacheC5ModelVMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC17304();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = a1;
  v17 = v26;
  v18 = v15;
  v31 = 0;
  sub_26CC16E20(&qword_280BBB510, type metadata accessor for SportsFavoriteService.UserConsent.State);
  v19 = v28;
  v20 = v29;
  sub_26CD3AE7C();
  sub_26CC183E0(v19, v18, type metadata accessor for SportsFavoriteService.UserConsent.State);
  v30 = 1;
  sub_26CC16E20(&qword_280BBB298, type metadata accessor for SportsFavoriteService.Favorites.State);
  sub_26CD3AE7C();
  (*(v17 + 8))(v11, v20);
  sub_26CC183E0(v6, v18 + *(v12 + 20), type metadata accessor for SportsFavoriteService.Favorites.State);
  sub_26CC18BE8(v18, v24, _s5CacheC5ModelVMa);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return sub_26CC18318(v18, _s5CacheC5ModelVMa);
}

unint64_t sub_26CC17258()
{
  result = qword_280BBB448;
  if (!qword_280BBB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB448);
  }

  return result;
}

unint64_t sub_26CC172B0()
{
  result = qword_280BBB450;
  if (!qword_280BBB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB450);
  }

  return result;
}

unint64_t sub_26CC17304()
{
  result = qword_280BBB458;
  if (!qword_280BBB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB458);
  }

  return result;
}

uint64_t SportsFavoriteService.UserConsent.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD100, &qword_26CD44410);
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v27 - v8;
  v10 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20]();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 20);
  v16 = sub_26CD3A1EC();
  v17 = *(*(v16 - 8) + 56);
  v32 = v15;
  v17(&v14[v15], 1, 1, v16);
  v19 = a1[3];
  v18 = a1[4];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26CC17780();
  v20 = v30;
  sub_26CD3B15C();
  if (v20)
  {
    v24 = v32;
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_26CC1B544(&v14[v24], &qword_2804BCA90, &qword_26CD3C200);
  }

  else
  {
    v21 = v5;
    v22 = v28;
    v35 = 0;
    sub_26CC177D4();
    v23 = v29;
    sub_26CD3AE7C();
    *v14 = v36;
    v34 = 1;
    sub_26CC169F4(&qword_280BBB698);
    sub_26CD3AE2C();
    sub_26CC17CCC(v21, &v14[v32]);
    v33 = 2;
    v25 = sub_26CD3AE4C();
    (*(v22 + 8))(v9, v23);
    v14[*(v10 + 24)] = v25 & 1;
    sub_26CC18254(v14, v27);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_26CC182B8(v14, type metadata accessor for SportsFavoriteService.UserConsent.State);
  }
}

unint64_t sub_26CC176D4()
{
  result = qword_280BBB518;
  if (!qword_280BBB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB518);
  }

  return result;
}

unint64_t sub_26CC1772C()
{
  result = qword_280BBB520;
  if (!qword_280BBB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB520);
  }

  return result;
}

unint64_t sub_26CC17780()
{
  result = qword_280BBB528[0];
  if (!qword_280BBB528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BBB528);
  }

  return result;
}

unint64_t sub_26CC177D4()
{
  result = qword_280BBB468;
  if (!qword_280BBB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB468);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TVSubscriptionsStoreError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TVSubscriptionsStoreError(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_26CC1796C()
{
  result = qword_280BBB470[0];
  if (!qword_280BBB470[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BBB470);
  }

  return result;
}

uint64_t sub_26CC179C4()
{
  if (*v0)
  {
    result = 0x657469726F766166;
  }

  else
  {
    result = 0x736E6F4372657375;
  }

  *v0;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices5GenreVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UpNextNotificationPayload.ItemImage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for UpNextNotificationPayload.ItemImage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26CC17BA4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x79747269447369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_26CC17C64@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return SportsFavoriteService.UserConsent.Status.init(rawValue:)(a1);
}

uint64_t SportsFavoriteService.UserConsent.Status.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_26CC17CCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_26CC17D98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D8, &qword_26CD45D88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD45CE0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000026CD4CC10;
  v1 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  *(inited + 48) = v1;
  *(inited + 56) = 0xD00000000000001CLL;
  *(inited + 64) = 0x800000026CD4CC30;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x800000026CD4CC50;
  *(inited + 96) = v1;
  *(inited + 104) = 0xD000000000000019;
  *(inited + 112) = 0x800000026CD4CD10;
  *(inited + 120) = v1;
  *(inited + 128) = 0xD000000000000027;
  *(inited + 136) = 0x800000026CD4CC80;
  *(inited + 144) = MEMORY[0x277D83B88];
  *(inited + 152) = 0xD000000000000026;
  *(inited + 160) = 0x800000026CD4CBE0;
  *(inited + 168) = sub_26CC18080(0, &unk_280BBB748, 0x277CCACA8);
  *(inited + 176) = 0xD00000000000001BLL;
  v2 = MEMORY[0x277D839B0];
  *(inited + 184) = 0x800000026CD4CD60;
  *(inited + 192) = v2;
  *(inited + 200) = 0xD000000000000019;
  *(inited + 208) = 0x800000026CD4CD80;
  *(inited + 216) = v1;
  v3 = sub_26CC180C8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4E0, &unk_26CD45D90);
  swift_arrayDestroy();
  v4 = sub_26CD3A59C();
  v5 = sub_26CD3A59C();
  v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

  v7 = type metadata accessor for TVAppCacheStorage();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC13TVAppServices17TVAppCacheStorage____lazy_storage___cacheUrl;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v10 + 16) = 0x61625F7070617674;
  *(v10 + 24) = 0xE900000000000067;
  v13 = sub_26CC191D0(v3, v6, v10, objc_allocWithZone(TVAppBag));

  return v13;
}

id sub_26CC18060()
{
  result = sub_26CC17D98();
  qword_280BBB720 = result;
  return result;
}

uint64_t sub_26CC18080(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26CC180C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD40, &qword_26CD3D008);
    v3 = sub_26CD3AD6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26CC181C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26CC181C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v6 = sub_26CD3B13C();

  return sub_26CC18830(a1, a2, v6);
}

uint64_t sub_26CC18254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC182B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26CC18318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26CC18378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26CC183E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SportsFavoriteService.Favorites.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD190, &qword_26CD44818);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v26 - v9;
  v11 = type metadata accessor for SportsFavoriteService.Favorites.State();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v17 = sub_26CD3A1EC();
  v18 = *(*(v17 - 8) + 56);
  v31 = v15;
  v32 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC18994();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_26CC9BE40(v31 + v32);
  }

  else
  {
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD178, &qword_26CD44810);
    v35 = 0;
    sub_26CC189F8(&qword_280BBB1F0, sub_26CC18A70);
    v20 = v30;
    sub_26CD3AE7C();
    v21 = v31;
    v26 = v36;
    *v31 = v36;
    v34 = 1;
    sub_26CC169F4(&qword_280BBB698);
    sub_26CD3AE2C();
    sub_26CC17CCC(v6, v21 + v32);
    v33 = 2;
    v22 = sub_26CD3AE4C();
    (*(v29 + 8))(v10, v20);
    v23 = v27;
    *(v21 + *(v11 + 24)) = v22 & 1;
    v24 = v23;
    sub_26CC18B28(v21, v28);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return sub_26CC18B8C(v21);
  }
}

unint64_t sub_26CC18830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26CD3AFDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26CC188E8()
{
  result = qword_280BBB2A0;
  if (!qword_280BBB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB2A0);
  }

  return result;
}

unint64_t sub_26CC18940()
{
  result = qword_280BBB2A8;
  if (!qword_280BBB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB2A8);
  }

  return result;
}

unint64_t sub_26CC18994()
{
  result = qword_280BBB2B0;
  if (!qword_280BBB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB2B0);
  }

  return result;
}

uint64_t sub_26CC189F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BD178, &qword_26CD44810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC18A70()
{
  result = qword_280BBB2B8;
  if (!qword_280BBB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB2B8);
  }

  return result;
}

uint64_t sub_26CC18AC4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x79747269447369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657469726F766166;
  }
}

uint64_t sub_26CC18B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoriteService.Favorites.State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC18B8C(uint64_t a1)
{
  v2 = type metadata accessor for SportsFavoriteService.Favorites.State();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CC18BE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26CC18C50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_26CC18CB4()
{
  v14 = *MEMORY[0x277D85DE8];
  sub_26CC18F30();
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v2 = byte_287DFA780[v0++ + 32];
    out_token = 0;
    v3 = sub_26CD3A9DC();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    aBlock[4] = sub_26CC96CA4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26CC96A5C;
    aBlock[3] = &block_descriptor_5;
    v5 = _Block_copy(aBlock);

    v6 = sub_26CD3A61C();

    notify_register_dispatch((v6 + 32), &out_token, v3, v5);

    _Block_release(v5);

    v7 = out_token;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_26CC18F7C(0, *(v1 + 2) + 1, 1, v1);
    }

    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v1 = sub_26CC18F7C((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 2) = v9 + 1;
    *&v1[4 * v9 + 32] = v7;
  }

  while (v0 != 3);
  v10 = *MEMORY[0x277D85DE8];
  return v1;
}

char *sub_26CC18F10()
{
  result = sub_26CC18CB4();
  qword_280BBCC90 = result;
  return result;
}

unint64_t sub_26CC18F30()
{
  result = qword_280BBB790;
  if (!qword_280BBB790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BBB790);
  }

  return result;
}

char *sub_26CC18F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD538, &unk_26CD46110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t type metadata accessor for TVAppCacheStorage()
{
  result = qword_280BBB8A0;
  if (!qword_280BBB8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26CC190D0()
{
  if (!qword_280BBB8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BCA30, &qword_26CD3DA70);
    v0 = sub_26CD3AADC();
    if (!v1)
    {
      atomic_store(v0, &qword_280BBB8C0);
    }
  }
}

void sub_26CC19134()
{
  sub_26CC190D0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_26CC191D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = sub_26CD3A41C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = type metadata accessor for TVAppCacheStorage();
  v25[4] = &off_287E049F8;
  v25[0] = a3;
  if (MEMORY[0x277D84F90] >> 62 && sub_26CD3ABAC())
  {
    v13 = sub_26CC7BE08(MEMORY[0x277D84F90]);
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  *&a4[OBJC_IVAR___TVAppBag_observers] = v13;
  *&a4[OBJC_IVAR___TVAppBag_snapshotBagAccessLock] = 0;
  *&a4[OBJC_IVAR___TVAppBag_snapshotBag] = 0;
  *&a4[OBJC_IVAR___TVAppBag_cachedBagAccessLock] = 0;
  v14 = OBJC_IVAR___TVAppBag_cachedBags;
  *&a4[v14] = sub_26CC194BC(MEMORY[0x277D84F90]);
  *&a4[OBJC_IVAR___TVAppBag_isSilentFetchingAccessLock] = 0;
  a4[OBJC_IVAR___TVAppBag_isSilentFetching] = 0;
  v15 = &a4[OBJC_IVAR___TVAppBag____lazy_storage___logPrefix];
  *v15 = 0;
  v15[1] = 0;
  v16 = &a4[OBJC_IVAR___TVAppBag____lazy_storage___systemVersion];
  *v16 = 0;
  v16[1] = 0;
  v17 = &a4[OBJC_IVAR___TVAppBag____lazy_storage___systemVersionInfo];
  *v17 = 0u;
  v17[1] = 0u;
  *(v17 + 25) = 0u;
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v18 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  sub_26CD3A3FC();
  *&a4[OBJC_IVAR___TVAppBag_diskCachedKeyTypes] = a1;

  *&a4[OBJC_IVAR___TVAppBag_diskCachedKeys] = sub_26CC19698(v19);
  *&a4[OBJC_IVAR___TVAppBag_amsBag] = a2;
  sub_26CC19A84(v25, &a4[OBJC_IVAR___TVAppBag_cacheStorage]);
  v24.receiver = a4;
  v24.super_class = TVAppBag;
  v20 = a2;
  v21 = objc_msgSendSuper2(&v24, sel_init);
  sub_26CC19AE8();
  sub_26CD3AA1C();
  sub_26CD3A3FC();

  (*(v9 + 8))(v12, v8);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

unint64_t sub_26CC194BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
    v3 = sub_26CD3AD6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_26CC1B4DC(v4, &v13, &qword_2804BCC60, &qword_26CD3CFC8);
      v5 = v13;
      v6 = v14;
      result = sub_26CC181C4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26CC331CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26CC195EC()
{
  sub_26CC1964C();
  result = sub_26CD3AACC();
  qword_280BBCC98 = result;
  word_280BBCCA0 = 0;
  return result;
}

unint64_t sub_26CC1964C()
{
  result = qword_280BBB710;
  if (!qword_280BBB710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BBB710);
  }

  return result;
}

uint64_t sub_26CC19698(uint64_t a1)
{
  result = MEMORY[0x26D6AD2F0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_26CC197B4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26CC197B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v9 = sub_26CD3B13C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26CD3AFDC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26CC19904(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26CC19904(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26CCE0138(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26CCE27DC();
      goto LABEL_16;
    }

    sub_26CCE328C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  result = sub_26CD3B13C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26CD3AFDC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26CD3B01C();
  __break(1u);
  return result;
}

uint64_t sub_26CC19A84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26CC19AE8()
{
  v0 = sub_26CD3A41C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v5 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  sub_26CD3A3FC();
  v11 = sub_26CC19D14();
  v12 = v6;
  MEMORY[0x26D6AD060](0x756769666E6F6320, 0xEA00000000006572);
  v8 = v11;
  v7 = v12;
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26CD3C1E0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_26CC19E10();
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  sub_26CD3A3DC();

  sub_26CC19E64();
  sub_26CC1A070();
  sub_26CC1A3F0();
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26CC19D14()
{
  v1 = (v0 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    *(v4 + 16) = xmmword_26CD3C1E0;
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = v0;
    v7 = sub_26CD3A5DC();
    MEMORY[0x26D6AD060](v7);

    v2 = 0x6761427070415654;
    v8 = v1[1];
    *v1 = 0x6761427070415654;
    v1[1] = 0xEA00000000003A3ALL;
  }

  return v2;
}

unint64_t sub_26CC19E10()
{
  result = qword_280BBB7E0;
  if (!qword_280BBB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB7E0);
  }

  return result;
}

void sub_26CC19E64()
{
  v1 = v0;
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  sub_26CD3AC6C();
  v2 = sub_26CC19D14();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  MEMORY[0x26D6AD060](0xD000000000000012, 0x800000026CD50BA0);
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_26CC19E10();
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  sub_26CD3A3DC();

  v6 = *(v1 + OBJC_IVAR___TVAppBag_amsBag);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_26CCBC48C;
  v14 = v7;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_26CCB7F10;
  v12 = &block_descriptor_70;
  v8 = _Block_copy(&v9);

  [v6 createSnapshotWithCompletion_];
  _Block_release(v8);
}

uint64_t sub_26CC1A070()
{
  v1 = v0;
  v2 = sub_26CD3AA3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_26CD3AC6C();
  v7 = sub_26CC19D14();
  v9 = v8;

  v18 = v7;
  v19 = v9;
  MEMORY[0x26D6AD060](0xD000000000000016, 0x800000026CD50B50);
  v10 = v18;
  v11 = v19;
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_26CC19E10();
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  sub_26CD3A3DC();

  v13 = [objc_opt_self() defaultCenter];
  v14 = *MEMORY[0x277CEE168];
  v15 = *(v1 + OBJC_IVAR___TVAppBag_amsBag);
  sub_26CD3AA4C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26CC1A360(&qword_280BBB780, MEMORY[0x277CC9DB0]);
  sub_26CD3A48C();

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  sub_26CD3A45C();
  swift_endAccess();
}

uint64_t sub_26CC1A360(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26CC1A3A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26CC1A3F0()
{
  v1 = v0;
  v61[1] = *MEMORY[0x277D85DE8];
  v2 = sub_26CD3A41C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v7 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  sub_26CD3A3FC();
  v8 = *(v0 + OBJC_IVAR___TVAppBag_cacheStorage + 24);
  v9 = *(v0 + OBJC_IVAR___TVAppBag_cacheStorage + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___TVAppBag_cacheStorage), v8);
  v10 = (*(v9 + 8))(v8, v9);
  if (v11 >> 60 != 15)
  {
    v22 = v10;
    v23 = v11;
    v24 = objc_opt_self();
    v52 = v22;
    *&v53 = v23;
    v25 = sub_26CD3A09C();
    v56 = 0;
    v26 = [v24 JSONObjectWithData:v25 options:0 error:&v56];

    if (!v26)
    {
      v34 = v56;
      v35 = sub_26CD39F8C();

      swift_willThrow();
      v36 = v35;
      sub_26CC1D1B8(v52, v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v12 = swift_allocObject();
      v53 = xmmword_26CD3C1E0;
      *(v12 + 16) = xmmword_26CD3C1E0;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_26CD3AC6C();
      v13 = sub_26CC19D14();
      MEMORY[0x26D6AD060](v13);

      MEMORY[0x26D6AD060](0xD000000000000024, 0x800000026CD509A0);
      v54 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      sub_26CD3AD1C();
      v14 = v57;
      *(v12 + 32) = v56;
      *(v12 + 40) = v14;
      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v15 = swift_allocObject();
      *(v15 + 16) = v53;
      *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v15 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v15 + 32) = v12;
      sub_26CD3A3DC();

      goto LABEL_16;
    }

    v27 = v56;
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    if (swift_dynamicCast())
    {
      sub_26CC1B954(v54, &v56);
      v28 = v57;
      v29 = v58;
      v30 = sub_26CC1BC18(v57, v58, v59, v60);
      v31 = v56;
      if (v30)
      {
        sub_26CC1D170(v28, v29);
        if (v31)
        {
          v32 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
          swift_beginAccess();
          os_unfair_lock_lock((v1 + v32));
          swift_endAccess();
          v33 = *(v1 + OBJC_IVAR___TVAppBag_cachedBags);
          *(v1 + OBJC_IVAR___TVAppBag_cachedBags) = v31;

          swift_beginAccess();
          os_unfair_lock_unlock((v1 + v32));
          swift_endAccess();
LABEL_15:
          sub_26CC1D1B8(v52, v53);
          goto LABEL_16;
        }
      }

      else
      {
        v61[0] = v56;
        sub_26CC1B544(v61, &qword_2804BCCA0, &qword_26CD45DA0);
        sub_26CC1D170(v28, v29);
      }

      v54 = 0;
      v55 = 0xE000000000000000;
      sub_26CD3AC6C();
      v43 = sub_26CC19D14();
      v45 = v44;

      v54 = v43;
      v55 = v45;
      MEMORY[0x26D6AD060](0xD000000000000016, 0x800000026CD50A30);
      v46 = v54;
      v47 = v55;
      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_26CD3C1E0;
      *(v48 + 56) = MEMORY[0x277D837D0];
      *(v48 + 64) = sub_26CC19E10();
      *(v48 + 32) = v46;
      *(v48 + 40) = v47;
      sub_26CD3A3DC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v37 = swift_allocObject();
      v51 = xmmword_26CD3C1E0;
      *(v37 + 16) = xmmword_26CD3C1E0;
      v56 = 0;
      v57 = 0xE000000000000000;
      sub_26CD3AC6C();
      v38 = sub_26CC19D14();
      v40 = v39;

      v56 = v38;
      v57 = v40;
      MEMORY[0x26D6AD060](0xD000000000000030, 0x800000026CD509F0);
      v41 = v57;
      *(v37 + 32) = v56;
      *(v37 + 40) = v41;
      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v42 = swift_allocObject();
      *(v42 + 16) = v51;
      *(v42 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v42 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v42 + 32) = v37;
      sub_26CD3A3DC();
    }

    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v16 = swift_allocObject();
  v53 = xmmword_26CD3C1E0;
  *(v16 + 16) = xmmword_26CD3C1E0;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_26CD3AC6C();
  v17 = sub_26CC19D14();
  v19 = v18;

  v56 = v17;
  v57 = v19;
  MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD509D0);
  v20 = v57;
  *(v16 + 32) = v56;
  *(v16 + 40) = v20;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v21 = swift_allocObject();
  *(v21 + 16) = v53;
  *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v21 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
  *(v21 + 32) = v16;
  sub_26CD3A3DC();

LABEL_16:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  result = (*(v3 + 8))(v6, v2);
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26CC1ACC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - v3;
  v5 = sub_26CD3A07C();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26CD3A41C();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v12 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v40 = v11;
  sub_26CD3A3FC();
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_26CD3AC6C();

  v44 = 0xD00000000000002ALL;
  v45 = 0x800000026CD51E60;
  v13 = *(v0 + 16);
  v34 = *(v0 + 24);
  v35 = v13;
  MEMORY[0x26D6AD060]();
  v14 = v44;
  v15 = v45;
  sub_26CD3A99C();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  v43 = xmmword_26CD3C1E0;
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v17 = sub_26CC19E10();
  *(v16 + 64) = v17;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  v39 = v12;
  sub_26CD3A3DC();

  sub_26CC1B2F4(v4);
  v18 = v37;
  if ((*(v37 + 48))(v4, 1, v5) == 1)
  {
    sub_26CC1B544(v4, &qword_2804BCA30, &qword_26CD3DA70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v19 = swift_allocObject();
    *(v19 + 16) = v43;
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000003CLL, 0x800000026CD51E90);
    MEMORY[0x26D6AD060](v35, v34);
    MEMORY[0x26D6AD060](0xD000000000000010, 0x800000026CD51ED0);
    v20 = v45;
    *(v19 + 32) = v44;
    *(v19 + 40) = v20;
    sub_26CD3A98C();
    v21 = swift_allocObject();
    *(v21 + 16) = v43;
    *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v21 + 64) = sub_26CC2E6E8();
    *(v21 + 32) = v19;
    sub_26CD3A3DC();

    v22 = 0;
LABEL_8:
    sub_26CD3AA1C();
    v31 = v40;
    sub_26CD3A3FC();
    (*(v41 + 8))(v31, v42);
    return v22;
  }

  v23 = v5;
  v24 = v36;
  (*(v18 + 32))(v36, v4, v23);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_26CD3AC6C();

  v44 = 0xD000000000000029;
  v45 = 0x800000026CD51EF0;
  sub_26CC1B8FC();
  v25 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v25);

  v26 = v44;
  v27 = v45;
  sub_26CD3A99C();
  v28 = swift_allocObject();
  *(v28 + 16) = v43;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = v17;
  *(v28 + 32) = v26;
  *(v28 + 40) = v27;
  sub_26CD3A3DC();

  v29 = v46;
  v30 = sub_26CD3A08C();
  if (!v29)
  {
    v22 = v30;
    (*(v18 + 8))(v24, v23);
    goto LABEL_8;
  }

  (*(v18 + 8))(v24, v23);
  sub_26CD3AA1C();
  v22 = v40;
  sub_26CD3A3FC();
  (*(v41 + 8))(v22, v42);
  return v22;
}

uint64_t sub_26CC1B2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC900, &unk_26CD47F10) - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC13TVAppServices17TVAppCacheStorage____lazy_storage___cacheUrl;
  swift_beginAccess();
  sub_26CC1B4DC(v1 + v9, v8, &qword_2804BC900, &unk_26CD47F10);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_26CC6FFD0(v8, a1);
  }

  sub_26CC1B544(v8, &qword_2804BC900, &unk_26CD47F10);
  sub_26CC1B5A4(v1, a1);
  sub_26CC1B4DC(a1, v6, &qword_2804BCA30, &qword_26CD3DA70);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_26CC1B88C(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_26CC1B4DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26CC1B544(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26CC1B5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26CD39F9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26CD3A07C();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v14 = sub_26CD3A7AC();

  if (v14[2])
  {
    v15 = v14[4];
    v16 = v14[5];

    sub_26CD39FBC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_26CD3C1E0;
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);
    sub_26CC16DCC();

    sub_26CD3A04C();

    (*(v5 + 8))(v8, v4);
    (*(v23 + 8))(v12, v9);
    return (*(v23 + 56))(a2, 0, 1, v9);
  }

  else
  {

    v21 = *(v23 + 56);

    return v21(a2, 1, 1, v9);
  }
}

uint64_t sub_26CC1B88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC900, &unk_26CD47F10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CC1B8FC()
{
  result = qword_280BBB8C8;
  if (!qword_280BBB8C8)
  {
    sub_26CD3A07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB8C8);
  }

  return result;
}

uint64_t sub_26CC1B954@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v6 = 0;
    goto LABEL_13;
  }

  v4 = sub_26CC181C4(0x74636944676162, 0xE700000000000000);
  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  sub_26CC168C0(*(a1 + 56) + 32 * v4, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (swift_dynamicCast())
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

LABEL_10:
  v7 = sub_26CC181C4(0x6D6E6F7269766E65, 0xEF6F666E49746E65);
  if ((v8 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_26CC168C0(*(a1 + 56) + 32 * v7, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v9 = sub_26CC194BC(MEMORY[0x277D84F90]);
    goto LABEL_15;
  }

  v9 = v14;
LABEL_15:
  result = sub_26CC1BAC0(v9);
  *a2 = v6;
  a2[1] = result;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  return result;
}

uint64_t sub_26CC1BAC0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v5 = 0;
    goto LABEL_12;
  }

  v2 = sub_26CC181C4(0x65566D6574737973, 0xED00006E6F697372);
  if ((v3 & 1) == 0)
  {
    v5 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_10;
    }

LABEL_12:

    return v5;
  }

  sub_26CC168C0(*(a1 + 56) + 32 * v2, v10);
  if (swift_dynamicCast())
  {
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

LABEL_10:
  v6 = sub_26CC181C4(0x6F724665726F7473, 0xEC0000006449746ELL);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_26CC168C0(*(a1 + 56) + 32 * v6, v10);

  swift_dynamicCast();
  return v5;
}

uint64_t sub_26CC1BC18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3AC6C();
    v4 = sub_26CC19D14();
    v6 = v5;

    v41 = v4;
    v42 = v6;
    v7 = " Invalid cache, ignore";
    v8 = 0xD00000000000002CLL;
LABEL_13:
    MEMORY[0x26D6AD060](v8, v7 | 0x8000000000000000);
    v21 = v42;
    v20 = v41;
LABEL_14:
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26CD3C1E0;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_26CC19E10();
    *(v23 + 32) = v20;
    *(v23 + 40) = v21;
LABEL_15:
    sub_26CD3A3DC();

    return 0;
  }

  v13 = sub_26CC1C330();
  v15 = v14;
  v16 = _s13TVAppServices0A12AccountStoreC10storefrontSSSgvgZ_0();
  v18 = v17;
  if (!a2)
  {

    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    sub_26CD3AC6C();
    v22 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v22);

    v7 = "vironmentInfo is nil, ignore";
    v8 = 0xD000000000000042;
    goto LABEL_13;
  }

  v33 = v16;

  sub_26CC1C4E0(a1, a2, &v36);
  sub_26CC1C4E0(v13, v15, &v41);
  if ((v38 & 1) != 0 || (v44 & 1) != 0 || v37 != v43)
  {
    goto LABEL_7;
  }

  v25 = v46;
  if (v40)
  {
    if (v46)
    {
      goto LABEL_24;
    }

LABEL_7:

    swift_bridgeObjectRelease_n();
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    sub_26CD3AC6C();
    v19 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v19);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50AD0);
    sub_26CD3AD1C();
    sub_26CC1D140(&v36);
    MEMORY[0x26D6AD060](0x203A776F6E202CLL, 0xE700000000000000);
    sub_26CD3AD1C();
    sub_26CC1D140(&v41);
    v21 = 0xE000000000000000;
    v20 = 0;
    goto LABEL_14;
  }

  if (v39 != v45)
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_7;
  }

LABEL_24:
  sub_26CC1D140(&v41);
  sub_26CC1D140(&v36);
  if (!a4)
  {
    if (!v18)
    {
LABEL_33:

      goto LABEL_34;
    }

LABEL_37:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();
    v31 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v31);

    MEMORY[0x26D6AD060](0xD000000000000025, 0x800000026CD50B00);
    sub_26CD3AD1C();
    MEMORY[0x26D6AD060](0x203A776F6E202CLL, 0xE700000000000000);
    sub_26CD3AD1C();

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26CD3C1E0;
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = sub_26CC19E10();
    *(v32 + 32) = v35;
    goto LABEL_15;
  }

  if (!v18)
  {
    goto LABEL_37;
  }

  if (v33 != a3 || v18 != a4)
  {
    v26 = sub_26CD3AFDC();

    if (v26)
    {

      goto LABEL_33;
    }

    goto LABEL_37;
  }

  swift_bridgeObjectRelease_n();
LABEL_34:
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  sub_26CD3AC6C();
  v27 = sub_26CC19D14();
  v29 = v28;

  *&v34 = v27;
  *(&v34 + 1) = v29;
  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD50B30);
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26CD3C1E0;
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_26CC19E10();
  *(v30 + 32) = v34;
  sub_26CD3A3DC();

  return 1;
}

uint64_t sub_26CC1C330()
{
  v1 = (v0 + OBJC_IVAR___TVAppBag____lazy_storage___systemVersion);
  if (*(v0 + OBJC_IVAR___TVAppBag____lazy_storage___systemVersion + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR___TVAppBag____lazy_storage___systemVersion + 8);
  }

  else
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 systemVersion];

    v2 = sub_26CD3A5CC();
    v7 = v6;

    v8 = v1[1];
    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

uint64_t _s13TVAppServices0A12AccountStoreC10storefrontSSSgvgZ_0()
{
  v0 = objc_opt_self();
  v1 = [v0 ams_sharedAccountStore];
  v2 = [v1 ams_activeiTunesAccount];

  if (!v2)
  {
    v3 = [v0 ams_sharedAccountStore];
    v2 = [v3 ams_localiTunesAccount];

    if (!v2)
    {
      return 0;
    }
  }

  v4 = [v2 ams_storefront];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_26CD3A5CC();

  return v5;
}

uint64_t sub_26CC1C4E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[0] = 46;
  v32[1] = 0xE100000000000000;
  v31 = v32;

  v6 = 1;
  v8 = sub_26CC1C6E4(0x7FFFFFFFFFFFFFFFLL, 1, sub_26CC1CAA4, v30, a1, a2, v7);
  v9 = v8;
  v10 = v8[2];
  if (!v10)
  {
    v17 = 0;
LABEL_18:

    v28 = 0;
    v26 = 1;
    goto LABEL_19;
  }

  v29 = a1;
  v11 = v8[4];
  v12 = v8[5];
  if ((v12 ^ v11) >= 0x4000)
  {
    v14 = v8[6];
    v13 = v8[7];
    v15 = sub_26CC1CC08(v8[4], v8[5], v14, v13, 10);
    if ((v16 & 0x100) != 0)
    {

      v17 = sub_26CCBA608(v11, v12, v14, v13, 10);
      v6 = v18;
    }

    else
    {
      v17 = v15;
      v6 = v16;
    }

    if (v6)
    {
      v17 = 0;
    }

    if (v9[2] >= 2uLL)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v17 = 0;
  if (v10 < 2)
  {
LABEL_17:
    a1 = v29;
    goto LABEL_18;
  }

LABEL_10:
  v19 = v9[8];
  v20 = v9[9];
  v22 = v9[10];
  v21 = v9[11];

  if ((v20 ^ v19) >> 14)
  {
    v23 = sub_26CC1CC08(v19, v20, v22, v21, 10);
    if ((v24 & 0x100) != 0)
    {
      v23 = sub_26CCBA608(v19, v20, v22, v21, 10);
    }

    v25 = v23;
    v26 = v24;

    a1 = v29;
    if (v26)
    {
      v28 = 0;
    }

    else
    {
      v28 = v25;
    }
  }

  else
  {

    v28 = 0;
    v26 = 1;
    a1 = v29;
  }

LABEL_19:
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v17;
  *(a3 + 24) = v6 & 1;
  *(a3 + 32) = v28;
  *(a3 + 40) = v26 & 1;
  return result;
}

unint64_t sub_26CC1C6E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26CD3A73C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_26CC1CAFC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_26CC1CAFC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_26CD3A71C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_26CD3A65C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_26CD3A65C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_26CD3A73C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_26CC1CAFC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_26CD3A73C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_26CC1CAFC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_26CC1CAFC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_26CD3A65C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26CC1CAA4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26CD3AFDC() & 1;
  }
}

char *sub_26CC1CAFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD500, &unk_26CD460D0);
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

uint64_t sub_26CC1CC08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_26CD3ACCC();
  }

  result = sub_26CC1CCD4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_26CC1CCD4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_26CCBAF98(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_26CD3A6CC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_26CCBAF98(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_26CCBAF98(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_26CD3A6CC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_26CC1D170(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_26CC1D1B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26CC18C50(a1, a2);
  }

  return a1;
}

Swift::Void __swiftcall TVAppBag.prewarm()()
{
  v1 = v0;
  v2 = sub_26CD3A41C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BBCC98;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_26CD3AC6C();
  v10 = sub_26CC19D14();
  v12 = v11;

  v20 = v10;
  v21 = v12;
  MEMORY[0x26D6AD060](0x6D72617765727020, 0xEE00747261747320);
  v19[1] = v1;
  v14 = v20;
  v13 = v21;
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26CD3C1E0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_26CC19E10();
  *(v15 + 32) = v14;
  *(v15 + 40) = v13;
  sub_26CD3A3DC();

  v16 = v9;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  sub_26CD3A3FC();
  sub_26CD3AA2C();
  sub_26CD3A3FC();
  (*(v3 + 16))(v6, v8, v2);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v17, v6, v2);
  sub_26CC1D5F8(0xD000000000000026, 0x800000026CD4CBE0, sub_26CCB7428, v18, &unk_287E02DF8, sub_26CC1DE14, &block_descriptor_65);

  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v3 + 8))(v8, v2);
}

uint64_t sub_26CC1D528()
{
  v1 = sub_26CD3A41C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26CC1D5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v32[1] = a5;
  v37 = a4;
  v34 = a3;
  v10 = sub_26CD3A49C();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26CD3A4CC();
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [*(v7 + OBJC_IVAR___TVAppBag_amsBag) isExpired];
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  aBlock = 0;
  v44 = 0xE000000000000000;
  sub_26CD3AC6C();

  aBlock = sub_26CC19D14();
  v44 = v19;
  MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD506E0);
  v33 = a1;
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0x697078457369202CLL, 0xEC0000003D646572);
  if (v18)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v18)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v20, v21);

  v23 = aBlock;
  v22 = v44;
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26CD3C1E0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_26CC19E10();
  *(v24 + 32) = v23;
  *(v24 + 40) = v22;
  sub_26CD3A3DC();

  if (v18)
  {
    if (qword_280BBB6A8 != -1)
    {
      swift_once();
    }

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v29 = v33;
    v28 = v34;
    v27[2] = v26;
    v27[3] = v29;
    v27[4] = a2;
    v27[5] = v28;
    v27[6] = v37;
    v47 = v35;
    v48 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_26CC1DDD0;
    v46 = v36;
    v30 = _Block_copy(&aBlock);

    sub_26CD3A4AC();
    v42 = MEMORY[0x277D84F90];
    sub_26CC1A360(&qword_280BBB7F0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
    sub_26CC1DD84(&qword_280BBB7D0, &unk_2804BCC40, &unk_26CD45D50);
    v31 = v41;
    sub_26CD3AB5C();
    MEMORY[0x26D6AD3E0](0, v17, v13, v30);
    _Block_release(v30);
    (*(v40 + 8))(v13, v31);
    (*(v38 + 8))(v17, v39);
  }

  return result;
}

uint64_t sub_26CC1DAD8()
{
  MEMORY[0x26D6AE420](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC1DB10()
{
  v10 = sub_26CD3A9CC();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26CD3A9BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26CD3A4CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  sub_26CD3A4BC();
  v11 = MEMORY[0x277D84F90];
  sub_26CC1A360(&unk_280BBB798, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC80, &unk_26CD45D70);
  sub_26CC1DD84(&qword_280BBB7B8, &unk_2804BCC80, &unk_26CD45D70);
  sub_26CD3AB5C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_26CD3AA0C();
  qword_280BBB6B0 = result;
  return result;
}

uint64_t sub_26CC1DD84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26CC1DDD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_26CC1DE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    a6(a2, a3, a4, a5);
  }
}

uint64_t sub_26CC1DED0(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v10 = sub_26CD3A41C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___TVAppBag_isSilentFetching;
  if (*(v5 + OBJC_IVAR___TVAppBag_isSilentFetching) == 1)
  {
    v35 = a3;
    v36 = v13;
    v37 = v12;
    *(v5 + OBJC_IVAR___TVAppBag_isSilentFetching) = 1;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v34 = a4;
    v17 = qword_280BBCC98;
    sub_26CD3A40C();
    sub_26CD3AA2C();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    v32 = xmmword_26CD3C1E0;
    *(v18 + 16) = xmmword_26CD3C1E0;
    v19 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v20 = sub_26CC19E10();
    *(v18 + 64) = v20;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;

    sub_26CD3A3EC();

    sub_26CC23428(a1, a2, v19, *(v5 + OBJC_IVAR___TVAppBag_amsBag), 1, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v40[0] = 0;
      v40[1] = 0;
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26CD3AC6C();
    v21 = sub_26CC19D14();
    v23 = v22;

    v38 = v21;
    v39 = v23;
    MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50760);
    MEMORY[0x26D6AD060](a1, a2);
    v24 = v38;
    v25 = v39;
    sub_26CD3A99C();
    v26 = swift_allocObject();
    *(v26 + 16) = v32;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v20;
    *(v26 + 32) = v24;
    *(v26 + 40) = v25;
    sub_26CD3A3DC();

    v35(v40);

    sub_26CD3AA1C();
    sub_26CD3A3FC();
    result = (*(v36 + 8))(v15, v37);
    *(v5 + v16) = 0;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26CD3AC6C();
    v28 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v28);

    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50700);
    MEMORY[0x26D6AD060](a1, a2);
    v29 = v38;
    v30 = v39;
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26CD3C1E0;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_26CC19E10();
    *(v31 + 32) = v29;
    *(v31 + 40) = v30;
    sub_26CD3A3DC();
  }

  return result;
}

uint64_t sub_26CC1E390()
{
  type metadata accessor for TVBagService();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0x413BAF8000000000;
  qword_280BBB5F0 = v0;
  return result;
}

uint64_t _sSo8TVAppBagC0A8ServicesE6string3forSSSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v37 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v33 = v9;
  sub_26CD3A3EC();

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_26CD3AC6C();

  v38 = sub_26CC19D14();
  v39 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v34 = a1;
  v15 = v38;
  v16 = v39;
  sub_26CD3A99C();
  v32[1] = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v37;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  sub_26CD3A3DC();

  v18 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v18));
  v19 = *(v2 + OBJC_IVAR___TVAppBag_snapshotBag);
  v20 = v19;
  os_unfair_lock_unlock((v3 + v18));
  swift_endAccess();
  if (v19)
  {
    v21 = v20;
    v22 = v34;
    v23 = sub_26CC227C4(v34, a2, v21, 0, v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26CD3AC6C();
    v25 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v25, v26);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v27 = v34;
    MEMORY[0x26D6AD060](v34, a2);
    v28 = v39;
    *(v24 + 32) = v38;
    *(v24 + 40) = v28;
    sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 32) = v24;
    sub_26CD3A3DC();

    v21 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v23 = sub_26CC227C4(v27, a2, v21, 0, v3);
    v22 = v27;
  }

  sub_26CC1D5F8(v22, a2, nullsub_1, 0, &unk_287E02DF8, sub_26CC1DE14, &block_descriptor_65);
  sub_26CD3AA1C();
  v30 = v33;
  sub_26CD3A3FC();
  (*(v35 + 8))(v30, v36);
  return v23;
}

uint64_t TVBagService.bag.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC1EA18, v1, 0);
}

uint64_t objectdestroy_9Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26CC1EA18()
{
  v0[5] = &type metadata for FeatureFlagManager;
  v1 = sub_26CC30530();
  *(v0 + 16) = 0;
  v0[6] = v1;
  v2 = sub_26CD3A29C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((v2 & 1) == 0)
  {
    return sub_26CD3AD2C();
  }

  v3 = v0[8];
  if (*(v3 + 112))
  {
    v4 = *(v3 + 112);
  }

  else
  {
    v6 = v0[9];
    v7 = sub_26CD3A86C();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = sub_26CC1ECC4();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = v3;
    swift_retain_n();
    v4 = sub_26CD282EC(0, 0, v6, &unk_26CD4A670, v9, &qword_2804BDD50, &qword_26CD4A678);
    v10 = *(v3 + 112);
    *(v3 + 112) = v4;
    swift_retain_n();
  }

  v0[10] = v4;
  v11 = *(MEMORY[0x277D857C8] + 4);
  swift_retain_n();
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDD50, &qword_26CD4A678);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  *v12 = v0;
  v12[1] = sub_26CC247AC;
  v15 = v0[7];
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v15, v4, v13, v14, v16);
}

uint64_t sub_26CC1EC84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_26CC1ECC4()
{
  result = qword_280BBB5E0;
  if (!qword_280BBB5E0)
  {
    type metadata accessor for TVBagService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB5E0);
  }

  return result;
}

uint64_t sub_26CC1ED18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CC1ED8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC246B8;

  return sub_26CC1EE40(a1);
}

uint64_t sub_26CC1EE40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC246B8;

  return sub_26CC1EEDC(a1);
}

uint64_t sub_26CC1EEDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_26CD3A33C() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(sub_26CD3A2FC() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_26CD3A35C();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_26CD3A31C();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v11 = *(*(sub_26CD3A38C() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = *(*(sub_26CD3A2BC() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = sub_26CD3A36C();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC1F110, v1, 0);
}

uint64_t sub_26CC1F110()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  sub_26CD3A2AC();
  sub_26CD3A37C();
  sub_26CD3A2DC();
  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[8];
  v10 = v0[4];
  v9 = v0[5];
  v11 = *(v0[3] + 120);
  sub_26CD3A30C();
  (*(v7 + 16))(v4, v5, v6);
  sub_26CD3A2EC();
  sub_26CD3A32C();
  sub_26CD3A34C();
  v12 = *(MEMORY[0x277CEE750] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_26CC2442C;
  v14 = v0[17];
  v15 = v0[8];
  v16 = v0[2];

  return MEMORY[0x2821408B0](v16, v15);
}

id sub_26CC1F328(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_26CD3A5CC();
  v12 = v11;
  v13 = a1;
  a4(v10, v12);

  v14 = sub_26CD3A07C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v17 = 0;
  if (v16 != 1)
  {
    v18 = sub_26CD39FCC();
    (*(v15 + 8))(v9, v14);
    v17 = v18;
  }

  return v17;
}

uint64_t _sSo8TVAppBagC0A8ServicesE9cachedURL3for10Foundation0E0VSgSS_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v53 - v8;
  v57 = sub_26CD3A07C();
  v56 = *(v57 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v57);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26CD3A41C();
  v59 = *(v11 - 8);
  v60 = v11;
  v12 = *(v59 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  v63 = xmmword_26CD3C1E0;
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v17 = sub_26CC19E10();
  *(v16 + 64) = v17;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  v62 = v14;
  sub_26CD3A3EC();

  *&v68 = 0;
  *(&v68 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v68 = sub_26CC19D14();
  *(&v68 + 1) = v18;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, a2);
  v19 = v3;
  v20 = v68;
  sub_26CD3A99C();
  v61 = v15;
  v21 = swift_allocObject();
  *(v21 + 16) = v63;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = v17;
  v54 = v17;
  *(v21 + 32) = v20;
  v22 = v3;
  sub_26CD3A3DC();

  if (sub_26CC2016C(a1, a2, *(v3 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v23 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v3 + v23));
    v24 = *(v3 + OBJC_IVAR___TVAppBag_cachedBags);

    os_unfair_lock_unlock((v19 + v23));
    swift_endAccess();
    if (*(v24 + 16))
    {
      v25 = sub_26CC181C4(a1, a2);
      v26 = v62;
      v27 = v56;
      v28 = v55;
      if (v29)
      {
        sub_26CC168C0(*(v24 + 56) + 32 * v25, &v68);
      }

      else
      {

        v68 = 0u;
        v69 = 0u;
      }
    }

    else
    {

      v68 = 0u;
      v69 = 0u;
      v26 = v62;
      v27 = v56;
      v28 = v55;
    }

    sub_26CC200FC(&v68, &v66);
    if (v67)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v66 = 0;
        *(&v66 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v34 = v27;
        v35 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v36 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v35, v36);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v37 = v66;
        sub_26CD3A99C();
        v38 = swift_allocObject();
        *(v38 + 16) = v63;
        v39 = v54;
        *(v38 + 56) = MEMORY[0x277D837D0];
        *(v38 + 64) = v39;
        *(v38 + 32) = v37;
        sub_26CD3A3DC();

        (*(v34 + 56))(v58, 1, 1, v57);
        sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02D58, sub_26CC2175C, &block_descriptor_52);
LABEL_18:
        sub_26CC1B544(&v68, &qword_2804BBDA8, &qword_26CD3D5F0);
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v66, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    sub_26CC20394(&v68, v28);
    v40 = v57;
    if ((*(v27 + 48))(v28, 1, v57) != 1)
    {
      v45 = v53;
      (*(v27 + 32))(v53, v28, v40);
      v46 = v58;
      (*(v27 + 16))(v58, v45, v40);
      (*(v27 + 56))(v46, 0, 1, v40);
      sub_26CC1D5F8(a1, a2, nullsub_1, 0, &unk_287E02D58, sub_26CC2175C, &block_descriptor_52);
      (*(v27 + 8))(v45, v40);
      goto LABEL_18;
    }

    sub_26CC1B544(v28, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC200FC(&v68, &v64);
    if (v65)
    {
      sub_26CC331CC(&v64, &v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v41 = swift_allocObject();
      *(v41 + 16) = v63;
      *&v64 = 0;
      *(&v64 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
      MEMORY[0x26D6AD060](a1, a2);
      MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
      __swift_project_boxed_opaque_existential_1(&v66, v67);
      swift_getDynamicType();
      v42 = sub_26CD3B1AC();
      MEMORY[0x26D6AD060](v42);

      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v43 = *(&v64 + 1);
      *(v41 + 32) = v64;
      *(v41 + 40) = v43;
      sub_26CD3A98C();
      v44 = swift_allocObject();
      *(v44 + 16) = v63;
      *(v44 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v44 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v44 + 32) = v41;
      sub_26CD3A3DC();

      __swift_destroy_boxed_opaque_existential_1(&v66);
    }

    else
    {
      sub_26CC1B544(&v64, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();
    v47 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v48 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v47, v48);

    MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
    MEMORY[0x26D6AD060](a1, a2);
    v49 = v66;
    sub_26CD3A99C();
    v50 = swift_allocObject();
    *(v50 + 16) = v63;
    v51 = v54;
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = v51;
    *(v50 + 32) = v49;
    sub_26CD3A3DC();

    sub_26CCB65D8(a1, a2, *(v22 + OBJC_IVAR___TVAppBag_amsBag), 1, v58);
    sub_26CC1B544(&v68, &qword_2804BBDA8, &qword_26CD3D5F0);
    v26 = v62;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v30 = swift_allocObject();
    *(v30 + 16) = v63;
    *&v68 = 0;
    *(&v68 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v31 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v68 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v68 + 1) = v31;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](a1, a2);
    v32 = *(&v68 + 1);
    *(v30 + 32) = v68;
    *(v30 + 40) = v32;
    sub_26CD3A98C();
    v33 = swift_allocObject();
    *(v33 + 16) = v63;
    *(v33 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v33 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v33 + 32) = v30;
    sub_26CD3A3DC();

    _sSo8TVAppBagC0A8ServicesE3url3for10Foundation3URLVSgSS_tF_0(a1, a2, v58);
    v26 = v62;
  }

LABEL_21:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  return (*(v59 + 8))(v26, v60);
}

uint64_t sub_26CC200FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC2016C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v7 = sub_26CD3B13C();
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
    if (v12 || (sub_26CD3AFDC() & 1) != 0)
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

id sub_26CC20324(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 *a3];

  return v5;
}

uint64_t sub_26CC20394@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-v7];
  v9 = sub_26CD3A07C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26CC200FC(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v14 = swift_dynamicCast();
  v15 = v10[7];
  if (!v14)
  {
    v15(v8, 1, 1, v9);
    sub_26CC1B544(v8, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CC200FC(a1, v20);
    if (v21)
    {
      if (swift_dynamicCast())
      {
        sub_26CD3A03C();

        v17 = swift_dynamicCast() ^ 1;
        return (v15)(a2, v17, 1, v9);
      }
    }

    else
    {
      sub_26CC1B544(v20, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v17 = 1;
    return (v15)(a2, v17, 1, v9);
  }

  v15(v8, 0, 1, v9);
  v16 = v10[4];
  v16(v13, v8, v9);
  v16(a2, v13, v9);
  v17 = 0;
  return (v15)(a2, v17, 1, v9);
}

id sub_26CC20678(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  if (v10 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  return v11;
}

uint64_t sub_26CC20728(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v11 = swift_allocObject();
  v56 = xmmword_26CD3C1E0;
  *(v11 + 16) = xmmword_26CD3C1E0;
  *(v11 + 56) = MEMORY[0x277D837D0];
  v12 = sub_26CC19E10();
  *(v11 + 64) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;

  v55 = a2;
  v52 = v9;
  sub_26CD3A3EC();

  *&v61 = 0;
  *(&v61 + 1) = 0xE000000000000000;
  sub_26CD3AC6C();

  *&v61 = sub_26CC19D14();
  *(&v61 + 1) = v13;
  MEMORY[0x26D6AD060](0xD000000000000017, 0x800000026CD503D0);
  MEMORY[0x26D6AD060](a1, v55);
  v14 = v61;
  sub_26CD3A99C();
  v51 = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = v56;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = v12;
  v50 = v12;
  *(v15 + 32) = v14;
  v16 = v55;
  sub_26CD3A3DC();

  if (sub_26CC2016C(a1, v16, *(v2 + OBJC_IVAR___TVAppBag_diskCachedKeys)))
  {
    v17 = OBJC_IVAR___TVAppBag_cachedBagAccessLock;
    swift_beginAccess();
    os_unfair_lock_lock((v2 + v17));
    v18 = *(v2 + OBJC_IVAR___TVAppBag_cachedBags);

    v49 = v3;
    os_unfair_lock_unlock((v3 + v17));
    swift_endAccess();
    if (*(v18 + 16))
    {
      v19 = a1;
      v20 = sub_26CC181C4(a1, v16);
      v21 = v52;
      if (v22)
      {
        sub_26CC168C0(*(v18 + 56) + 32 * v20, &v61);
      }

      else
      {

        v61 = 0u;
        v62 = 0u;
      }
    }

    else
    {

      v61 = 0u;
      v62 = 0u;
      v21 = v52;
      v19 = a1;
    }

    sub_26CC200FC(&v61, &v59);
    if (v60)
    {
      sub_26CC18080(0, &unk_280BBB760, 0x277CBEB68);
      if (swift_dynamicCast())
      {

        *&v59 = 0;
        *(&v59 + 1) = 0xE000000000000000;
        sub_26CD3AC6C();
        v28 = *(v49 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
        v29 = *(v49 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

        MEMORY[0x26D6AD060](v28, v29);

        MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD504B0);
        v30 = v59;
        sub_26CD3A99C();
        v31 = swift_allocObject();
        *(v31 + 16) = v56;
        v32 = v50;
        *(v31 + 56) = MEMORY[0x277D837D0];
        *(v31 + 64) = v32;
        *(v31 + 32) = v30;
        v27 = 2;
        sub_26CD3A3DC();

        v33 = v19;
        v34 = v16;
LABEL_18:
        sub_26CC1D5F8(v33, v34, nullsub_1, 0, &unk_287E02C68, sub_26CC21730, &block_descriptor_31);
        sub_26CC1B544(&v61, &qword_2804BBDA8, &qword_26CD3D5F0);
        goto LABEL_21;
      }
    }

    else
    {
      sub_26CC1B544(&v59, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    v35 = sub_26CCBBF9C(&v61);
    if (v35 != 2)
    {
      v27 = v35;
      v33 = v19;
      v34 = v55;
      goto LABEL_18;
    }

    sub_26CC200FC(&v61, &v57);
    if (v58)
    {
      sub_26CC331CC(&v57, &v59);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v36 = swift_allocObject();
      *(v36 + 16) = v56;
      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      MEMORY[0x26D6AD060](0xD000000000000027, 0x800000026CD50460);
      MEMORY[0x26D6AD060](v19, v55);
      MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50490);
      __swift_project_boxed_opaque_existential_1(&v59, v60);
      swift_getDynamicType();
      v37 = sub_26CD3B1AC();
      MEMORY[0x26D6AD060](v37);

      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v38 = *(&v57 + 1);
      *(v36 + 32) = v57;
      *(v36 + 40) = v38;
      sub_26CD3A98C();
      v39 = swift_allocObject();
      *(v39 + 16) = v56;
      *(v39 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v39 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v39 + 32) = v36;
      sub_26CD3A3DC();

      __swift_destroy_boxed_opaque_existential_1(&v59);
    }

    else
    {
      sub_26CC1B544(&v57, &qword_2804BBDA8, &qword_26CD3D5F0);
    }

    *&v59 = 0;
    *(&v59 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();
    v40 = v49;
    v41 = *(v49 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v42 = *(v49 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v41, v42);

    MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD50420);
    v43 = v55;
    MEMORY[0x26D6AD060](v19, v55);
    v44 = v59;
    sub_26CD3A99C();
    v45 = swift_allocObject();
    *(v45 + 16) = v56;
    v46 = v50;
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = v46;
    *(v45 + 32) = v44;
    sub_26CD3A3DC();

    v27 = sub_26CCBB014(v19, v43, *(v40 + OBJC_IVAR___TVAppBag_amsBag), 1, v40);
    sub_26CC1B544(&v61, &qword_2804BBDA8, &qword_26CD3D5F0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v23 = swift_allocObject();
    *(v23 + 16) = v56;
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_26CD3AC6C();

    v24 = *(v2 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);
    *&v61 = *(v2 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    *(&v61 + 1) = v24;

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD503F0);
    MEMORY[0x26D6AD060](a1, v16);
    v25 = *(&v61 + 1);
    *(v23 + 32) = v61;
    *(v23 + 40) = v25;
    sub_26CD3A98C();
    v26 = swift_allocObject();
    *(v26 + 16) = v56;
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v26 + 32) = v23;
    sub_26CD3A3DC();

    v27 = sub_26CCB019C(a1, v16);
    v21 = v52;
  }

LABEL_21:
  sub_26CD3AA1C();
  sub_26CD3A3FC();
  (*(v53 + 8))(v21, v54);
  return v27;
}

void sub_26CC211E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_26CC21270(a2, a3, a4, a5, a6);
  }
}

uint64_t sub_26CC21270(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v12 = sub_26CD3A41C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR___TVAppBag_isSilentFetching;
  if (*(v7 + OBJC_IVAR___TVAppBag_isSilentFetching) == 1)
  {
    v36 = a4;
    v37 = a3;
    v38 = v15;
    v39 = v14;
    *(v7 + OBJC_IVAR___TVAppBag_isSilentFetching) = 1;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v19 = qword_280BBCC98;
    sub_26CD3A40C();
    sub_26CD3AA2C();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v20 = swift_allocObject();
    v34 = xmmword_26CD3C1E0;
    *(v20 + 16) = xmmword_26CD3C1E0;
    *(v20 + 56) = MEMORY[0x277D837D0];
    v21 = sub_26CC19E10();
    *(v20 + 64) = v21;
    *(v20 + 32) = a1;
    *(v20 + 40) = a2;

    sub_26CD3A3EC();

    sub_26CC23428(a1, a2, a5, *(v7 + OBJC_IVAR___TVAppBag_amsBag), 1, &v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
    v22 = swift_dynamicCast();
    if ((v22 & 1) == 0)
    {
      v42 = 0;
    }

    v43 = v22 ^ 1;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_26CD3AC6C();
    v23 = sub_26CC19D14();
    v25 = v24;

    v40 = v23;
    v41 = v25;
    MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50760);
    MEMORY[0x26D6AD060](a1, a2);
    v26 = v40;
    v27 = v41;
    sub_26CD3A99C();
    v28 = swift_allocObject();
    *(v28 + 16) = v34;
    *(v28 + 56) = MEMORY[0x277D837D0];
    *(v28 + 64) = v21;
    *(v28 + 32) = v26;
    *(v28 + 40) = v27;
    sub_26CD3A3DC();

    v37(&v42);
    sub_26CD3AA1C();
    sub_26CD3A3FC();
    result = (*(v38 + 8))(v17, v39);
    *(v7 + v18) = 0;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v40 = 0;
    v41 = 0xE000000000000000;
    sub_26CD3AC6C();
    v30 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v30);

    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50700);
    MEMORY[0x26D6AD060](a1, a2);
    v31 = v40;
    v32 = v41;
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26CD3C1E0;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_26CC19E10();
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    sub_26CD3A3DC();
  }

  return result;
}

uint64_t sub_26CC21788(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v10 = sub_26CD3A41C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR___TVAppBag_isSilentFetching;
  if (*(v5 + OBJC_IVAR___TVAppBag_isSilentFetching) == 1)
  {
    v33 = a4;
    v34 = a3;
    v35 = v13;
    v36 = v12;
    *(v5 + OBJC_IVAR___TVAppBag_isSilentFetching) = 1;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v17 = qword_280BBCC98;
    sub_26CD3A40C();
    sub_26CD3AA2C();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    v31 = xmmword_26CD3C1E0;
    *(v18 + 16) = xmmword_26CD3C1E0;
    *(v18 + 56) = MEMORY[0x277D837D0];
    v19 = sub_26CC19E10();
    *(v18 + 64) = v19;
    *(v18 + 32) = a1;
    *(v18 + 40) = a2;

    sub_26CD3A3EC();

    sub_26CC23428(a1, a2, MEMORY[0x277D839B0], *(v5 + OBJC_IVAR___TVAppBag_amsBag), 1, &v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v39 = 2;
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    sub_26CD3AC6C();
    v20 = sub_26CC19D14();
    v22 = v21;

    v37 = v20;
    v38 = v22;
    MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50760);
    MEMORY[0x26D6AD060](a1, a2);
    v23 = v37;
    v24 = v38;
    sub_26CD3A99C();
    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = v19;
    *(v25 + 32) = v23;
    *(v25 + 40) = v24;
    sub_26CD3A3DC();

    v34(&v39);
    sub_26CD3AA1C();
    sub_26CD3A3FC();
    result = (*(v35 + 8))(v15, v36);
    *(v5 + v16) = 0;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    sub_26CD3AC6C();
    v27 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v27);

    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50700);
    MEMORY[0x26D6AD060](a1, a2);
    v28 = v37;
    v29 = v38;
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_26CD3C1E0;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_26CC19E10();
    *(v30 + 32) = v28;
    *(v30 + 40) = v29;
    sub_26CD3A3DC();
  }

  return result;
}

uint64_t sub_26CC21C44(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_26CD3A41C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR___TVAppBag_isSilentFetching;
  if (*(v5 + OBJC_IVAR___TVAppBag_isSilentFetching) == 1)
  {
    v42 = v17;
    v43 = v16;
    v44 = a4;
    v45 = a3;
    v21 = a1;
    *(v5 + OBJC_IVAR___TVAppBag_isSilentFetching) = 1;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v22 = qword_280BBCC98;
    sub_26CD3A40C();
    sub_26CD3AA2C();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v23 = swift_allocObject();
    v40 = xmmword_26CD3C1E0;
    *(v23 + 16) = xmmword_26CD3C1E0;
    *(v23 + 56) = MEMORY[0x277D837D0];
    v39 = sub_26CC19E10();
    *(v23 + 64) = v39;
    *(v23 + 32) = v21;
    *(v23 + 40) = a2;

    sub_26CD3A3EC();

    v24 = sub_26CD3A07C();
    sub_26CC23428(v21, a2, v24, *(v5 + OBJC_IVAR___TVAppBag_amsBag), 1, &v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
    v25 = swift_dynamicCast();
    (*(*(v24 - 8) + 56))(v13, v25 ^ 1u, 1, v24);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_26CD3AC6C();
    v26 = sub_26CC19D14();
    v28 = v27;

    v46 = v26;
    v47 = v28;
    MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50760);
    MEMORY[0x26D6AD060](v21, a2);
    v29 = v46;
    v30 = v47;
    sub_26CD3A99C();
    v31 = swift_allocObject();
    *(v31 + 16) = v40;
    v32 = v39;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = v32;
    *(v31 + 32) = v29;
    *(v31 + 40) = v30;
    sub_26CD3A3DC();

    v45(v13);
    sub_26CC1B544(v13, &qword_2804BCA30, &qword_26CD3DA70);
    sub_26CD3AA1C();
    sub_26CD3A3FC();
    result = (*(v42 + 8))(v19, v43);
    *(v5 + v20) = 0;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    sub_26CD3AC6C();
    v34 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v34);

    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50700);
    MEMORY[0x26D6AD060](a1, a2);
    v35 = v46;
    v36 = v47;
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26CD3C1E0;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_26CC19E10();
    *(v37 + 32) = v35;
    *(v37 + 40) = v36;
    sub_26CD3A3DC();
  }

  return result;
}

uint64_t _sSo8TVAppBagC0A8ServicesE5array3forSayypGSgSS_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26CD3A41C();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v10 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  v37 = xmmword_26CD3C1E0;
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_26CC19E10();
  *(v12 + 64) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  v33 = v9;
  sub_26CD3A3EC();

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_26CD3AC6C();

  v38 = sub_26CC19D14();
  v39 = v14;
  MEMORY[0x26D6AD060](0xD000000000000011, 0x800000026CD50320);
  MEMORY[0x26D6AD060](a1, a2);
  v34 = a1;
  v15 = v38;
  v16 = v39;
  sub_26CD3A99C();
  v32[1] = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = v37;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  sub_26CD3A3DC();

  v18 = OBJC_IVAR___TVAppBag_snapshotBagAccessLock;
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v18));
  v19 = *(v2 + OBJC_IVAR___TVAppBag_snapshotBag);
  v20 = v19;
  os_unfair_lock_unlock((v3 + v18));
  swift_endAccess();
  if (v19)
  {
    v21 = v20;
    v22 = v34;
    v23 = sub_26CC22DEC(v34, a2, v21, 0, v3, &unk_2804BD460, &unk_26CD45D60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v24 = swift_allocObject();
    *(v24 + 16) = v37;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_26CD3AC6C();
    v25 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
    v26 = *(v3 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

    MEMORY[0x26D6AD060](v25, v26);

    MEMORY[0x26D6AD060](0xD00000000000002FLL, 0x800000026CD50340);
    v27 = v34;
    MEMORY[0x26D6AD060](v34, a2);
    v28 = v39;
    *(v24 + 32) = v38;
    *(v24 + 40) = v28;
    sub_26CD3A98C();
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v29 + 32) = v24;
    sub_26CD3A3DC();

    v21 = *(v3 + OBJC_IVAR___TVAppBag_amsBag);
    v23 = sub_26CC22DEC(v27, a2, v21, 0, v3, &unk_2804BD460, &unk_26CD45D60);
    v22 = v27;
  }

  sub_26CC1D5F8(v22, a2, nullsub_1, 0, &unk_287E02CB8, sub_26CC23F40, &block_descriptor_38);
  sub_26CD3AA1C();
  v30 = v33;
  sub_26CD3A3FC();
  (*(v35 + 8))(v30, v36);
  return v23;
}

id sub_26CC22718(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_26CD3A5CC();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  if (v11)
  {
    v12 = sub_26CD3A59C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_26CC227C4(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_26CD3A41C();
  v43 = *(v10 - 8);
  v44 = v10;
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v14 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v16 = swift_allocObject();
  v45 = xmmword_26CD3C1E0;
  *(v16 + 16) = xmmword_26CD3C1E0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  v41 = sub_26CC19E10();
  *(v16 + 64) = v41;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;

  v42 = v13;
  sub_26CD3A3EC();

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_26CD3AC6C();
  v17 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v17);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v40 = a4 & 1;
  if (a4)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (a4)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v18, v19);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v20 = a3;
  *&v48[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v21 = a5;
  v22 = a2;
  v23 = a1;
  v25 = v51;
  v24 = v52;
  sub_26CD3A99C();
  v39 = v15;
  v26 = swift_allocObject();
  *(v26 + 16) = v45;
  v27 = MEMORY[0x277D837D0];
  v28 = v41;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = v28;
  *(v26 + 32) = v25;
  *(v26 + 40) = v24;
  sub_26CD3A3DC();

  sub_26CC23428(v23, v22, v27, v20, v40, &v51);
  sub_26CC200FC(&v51, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v49 = 0;
    v50 = 0;
  }

  sub_26CC200FC(&v51, &v46);
  if (v47)
  {
    sub_26CC331CC(&v46, v48);
    if (!v50)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v29 = swift_allocObject();
      *(v29 + 16) = v45;
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v30 = v21 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix;
      v31 = *(v21 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v32 = *(v30 + 8);

      MEMORY[0x26D6AD060](v31, v32);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v23, v22);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v33 = *(&v46 + 1);
      *(v29 + 32) = v46;
      *(v29 + 40) = v33;
      sub_26CD3A98C();
      v34 = swift_allocObject();
      *(v34 + 16) = v45;
      *(v34 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v34 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v34 + 32) = v29;
      sub_26CD3A3DC();
    }

    __swift_destroy_boxed_opaque_existential_1(v48);
    v35 = &v51;
  }

  else
  {
    sub_26CC1B544(&v51, &qword_2804BBDA8, &qword_26CD3D5F0);
    v35 = &v46;
  }

  sub_26CC1B544(v35, &qword_2804BBDA8, &qword_26CD3D5F0);
  v36 = v49;
  sub_26CD3AA1C();
  v37 = v42;
  sub_26CD3A3FC();
  (*(v43 + 8))(v37, v44);
  return v36;
}

uint64_t sub_26CC22DEC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v42 = a6;
  v43 = a7;
  v12 = sub_26CD3A41C();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  v47 = xmmword_26CD3C1E0;
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v41 = sub_26CC19E10();
  *(v17 + 64) = v41;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v44 = v15;
  sub_26CD3A3EC();

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_26CD3AC6C();
  v18 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v18);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v40 = a4 & 1;
  if (a4)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a4)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v19, v20);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v21 = a3;
  *&v50[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v22 = a5;
  v23 = a2;
  v24 = a1;
  v26 = v52;
  v25 = v53;
  sub_26CD3A99C();
  v39 = v16;
  v27 = swift_allocObject();
  *(v27 + 16) = v47;
  v28 = v41;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v28;
  *(v27 + 32) = v26;
  *(v27 + 40) = v25;
  sub_26CD3A3DC();

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  sub_26CC23428(v24, v23, v29, v21, v40, &v52);
  sub_26CC200FC(&v52, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v51 = 0;
  }

  sub_26CC200FC(&v52, &v48);
  if (v49)
  {
    sub_26CC331CC(&v48, v50);
    if (!v51)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v30 = swift_allocObject();
      *(v30 + 16) = v47;
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v31 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v32 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v31, v32);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v24, v23);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v33 = *(&v48 + 1);
      *(v30 + 32) = v48;
      *(v30 + 40) = v33;
      sub_26CD3A98C();
      v34 = swift_allocObject();
      *(v34 + 16) = v47;
      *(v34 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v34 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v34 + 32) = v30;
      sub_26CD3A3DC();
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
    v35 = &v52;
  }

  else
  {
    sub_26CC1B544(&v52, &qword_2804BBDA8, &qword_26CD3D5F0);
    v35 = &v48;
  }

  sub_26CC1B544(v35, &qword_2804BBDA8, &qword_26CD3D5F0);
  v36 = v51;
  sub_26CD3AA1C();
  v37 = v44;
  sub_26CD3A3FC();
  (*(v45 + 8))(v37, v46);
  return v36;
}

void sub_26CC23428(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_26CD3A59C();
  v13 = sub_26CC18080(0, &unk_280BBB748, 0x277CCACA8);
  if (a3 == MEMORY[0x277D837D0] || v13 == a3)
  {
    v15 = v13;
    v16 = [a4 stringForKey_];
LABEL_22:
    v24 = v16;
    v25 = sub_26CC23970(v24, a1, a2, a5 & 1);

    if (v25)
    {
      v26 = v15;
    }

    else
    {
      v26 = 0;
    }

    *a6 = v25;
    goto LABEL_26;
  }

  v17 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  v15 = v17;
  if (v17 == a3 || sub_26CD3A07C() == a3)
  {
    v16 = [a4 URLForKey_];
    goto LABEL_22;
  }

  v15 = sub_26CC18080(0, &unk_280BBB7A8, 0x277CBEAC0);
  if (v15 == a3 || __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD450, &unk_26CD47370) == a3)
  {
    v16 = [a4 dictionaryForKey_];
    goto LABEL_22;
  }

  v15 = sub_26CC18080(0, &qword_280BBB758, 0x277CBEA60);
  if (v15 == a3 || __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BD460, &unk_26CD45D60) == a3)
  {
    v16 = [a4 arrayForKey_];
    goto LABEL_22;
  }

  if (a3 == MEMORY[0x277D839B0])
  {
    v27 = [a4 BOOLForKey_];
    v28 = sub_26CC23970(v27, a1, a2, a5 & 1);

    if (v28)
    {
      v29 = [v28 BOOLValue];

      v30 = v29;
      v26 = MEMORY[0x277D839B0];
    }

    else
    {

      v26 = 0;
      v30 = 0;
    }

    *a6 = v30;
    goto LABEL_26;
  }

  if (a3 != MEMORY[0x277D83B88])
  {
    if (a3 != MEMORY[0x277D839F8])
    {
      if (qword_280BBB6B8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26CD3C1E0;
      sub_26CD3AC6C();
      v19 = sub_26CC19D14();
      v21 = v20;

      MEMORY[0x26D6AD060](0xD000000000000025, 0x800000026CD50780);
      v22 = sub_26CD3B1AC();
      MEMORY[0x26D6AD060](v22);

      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_26CD3C1E0;
      *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v23 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v23 + 32) = v18;
      sub_26CD3A3DC();

      *a6 = 0u;
      *(a6 + 16) = 0u;
      return;
    }

    v35 = [a4 doubleForKey_];
    v36 = sub_26CC23970(v35, a1, a2, a5 & 1);

    if (v36)
    {
      [v36 doubleValue];
      v38 = v37;

      v26 = MEMORY[0x277D839F8];
    }

    else
    {

      v26 = 0;
      v38 = 0;
    }

    *a6 = v38;
LABEL_26:
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *(a6 + 24) = v26;
    return;
  }

  v31 = [a4 integerForKey_];
  v32 = sub_26CC23970(v31, a1, a2, a5 & 1);

  if (v32)
  {
    v33 = [v32 integerValue];

    v34 = MEMORY[0x277D83B88];
    v12 = v32;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  *a6 = v33;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = v34;
}

id sub_26CC23970(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([a1 isLoaded])
  {
    v23 = 0;
    v8 = [a1 valueWithError_];
    v9 = v23;
    if (v8)
    {
      result = v8;
      goto LABEL_15;
    }

    v16 = v9;
    v17 = sub_26CD39F8C();

    swift_willThrow();
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_26CD3AC6C();
    v19 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v19);

    MEMORY[0x26D6AD060](0xD000000000000028, 0x800000026CD50830);
    MEMORY[0x26D6AD060](a2, a3);
    MEMORY[0x26D6AD060](0x20726F727265202CLL, 0xEA0000000000203DLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v20 = v24;
    *(v18 + 32) = v23;
    *(v18 + 40) = v20;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26CD3C1E0;
    *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v21 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v21 + 32) = v18;
    sub_26CD3A3DC();

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if ((a4 & 1) == 0)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_26CD3AC6C();
    v14 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v14);

    MEMORY[0x26D6AD060](0xD000000000000036, 0x800000026CD507B0);
    MEMORY[0x26D6AD060](a2, a3);
    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 32) = v13;
    sub_26CD3A3DC();

    goto LABEL_14;
  }

  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_26CD3AC6C();
  v11 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v11);

  MEMORY[0x26D6AD060](0xD00000000000003ELL, 0x800000026CD507F0);
  MEMORY[0x26D6AD060](1702195828, 0xE400000000000000);
  MEMORY[0x26D6AD060](0x203D2079656B202CLL, 0xE800000000000000);
  MEMORY[0x26D6AD060](a2, a3);
  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26CD3C1E0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_26CC19E10();
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xE000000000000000;
  sub_26CD3A3DC();

  result = sub_26CCB99EC(a1, a2, a3);
LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26CC23F54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = sub_26CD3A41C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR___TVAppBag_isSilentFetching;
  if (*(v9 + OBJC_IVAR___TVAppBag_isSilentFetching) == 1)
  {
    v40 = a4;
    v41 = a3;
    v42 = v17;
    v43 = v16;
    *(v9 + OBJC_IVAR___TVAppBag_isSilentFetching) = 1;
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v21 = qword_280BBCC98;
    sub_26CD3A40C();
    sub_26CD3AA2C();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v22 = swift_allocObject();
    v38 = xmmword_26CD3C1E0;
    *(v22 + 16) = xmmword_26CD3C1E0;
    *(v22 + 56) = MEMORY[0x277D837D0];
    v37 = sub_26CC19E10();
    *(v22 + 64) = v37;
    *(v22 + 32) = a1;
    *(v22 + 40) = a2;

    sub_26CD3A3EC();

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    sub_26CC23428(a1, a2, v23, *(v9 + OBJC_IVAR___TVAppBag_amsBag), 1, &v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v46 = 0;
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_26CD3AC6C();
    v24 = sub_26CC19D14();
    v26 = v25;

    v44 = v24;
    v45 = v26;
    MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50760);
    MEMORY[0x26D6AD060](a1, a2);
    v27 = v44;
    v28 = v45;
    sub_26CD3A99C();
    v29 = swift_allocObject();
    *(v29 + 16) = v38;
    v30 = v37;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = v30;
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    sub_26CD3A3DC();

    v41(&v46);

    sub_26CD3AA1C();
    sub_26CD3A3FC();
    result = (*(v42 + 8))(v19, v43);
    *(v9 + v20) = 0;
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_26CD3AC6C();
    v32 = sub_26CC19D14();
    MEMORY[0x26D6AD060](v32);

    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50700);
    MEMORY[0x26D6AD060](a1, a2);
    v33 = v44;
    v34 = v45;
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_26CD3C1E0;
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = sub_26CC19E10();
    *(v35 + 32) = v33;
    *(v35 + 40) = v34;
    sub_26CD3A3DC();
  }

  return result;
}

uint64_t sub_26CC2442C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 24);
  if (v0)
  {
    v9 = sub_26CD285C8;
  }

  else
  {
    v9 = sub_26CC245B4;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_26CC245B4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[5];
  v11 = v0[4];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26CC246B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26CC247AC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_26CD27AD8;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 64);

    v5 = sub_26CC248D4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26CC248D4()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26CC24994(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBAE0, &unk_26CD3C1F0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_26CD3A07C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[14];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_26CC24B18(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBAE0, &unk_26CD3C1F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_26CD3A07C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[14];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26CC24C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26CC24DD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void *sub_26CC24F2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_26CC24F70(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_26CC2508C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC250C4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26CC2514C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC25184()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC251E4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC2524C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26CC25264()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC2547C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26CC25538(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26CC255E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26CC256A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26CC257BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_26CC257F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC2587C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_13TVAppServices21SportsFavoriteServiceV8ExecutorVs5Error_pIegHgzo_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26CC258F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC25934()
{
  MEMORY[0x26D6AE420](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC2596C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  v2 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26CC259D8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC25A20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC25A58()
{
  MEMORY[0x26D6AE420](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC25A90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCCA8, &qword_26CD429F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26CC25B24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC25D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_26CC25DE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_26CC25EAC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF0, &qword_26CD42A70);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[5];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_26CC26048(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF0, &qword_26CD42A70);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[13];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_26CC261D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 128);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 72);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 116);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26CC26320(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 128) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 116);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26CC26470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26CC2654C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_26CC26618(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26CC266D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26CC26784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SportsFavoriteService.Favorites.State();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26CC26874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SportsFavoriteService.Favorites.State();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26CC26970()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC269A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_26CC26A10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26CC26A60()
{
  v1 = _s5CacheC5ModelVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v28 = *(*(v1 - 8) + 64) + 7;
  v25 = (v28 + v3) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v24 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  v6 = *(v24 + 20);
  v7 = sub_26CD3A1EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v10 = (v2 + v25 + 8) & ~v2;
  v27 = v1;
  v11 = (v5 + *(v1 + 20));
  v12 = *v11;

  v13 = type metadata accessor for SportsFavoriteService.Favorites.State();
  v14 = *(v13 + 20);
  if (!v9(&v11[v14], 1, v7))
  {
    (*(v8 + 8))(&v11[v14], v7);
  }

  v26 = (v2 + v25 + 8) & ~v2;
  v15 = v0 + v10;
  v16 = *(v24 + 20);
  if (!v9(v0 + v10 + v16, 1, v7))
  {
    (*(v8 + 8))(v15 + v16, v7);
  }

  v17 = (v15 + *(v27 + 20));
  v18 = *v17;

  v19 = *(v13 + 20);
  if (!v9(&v17[v19], 1, v7))
  {
    (*(v8 + 8))(&v17[v19], v7);
  }

  v20 = (v28 + v26) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;

  v22 = *(v0 + v21);

  return MEMORY[0x2821FE8E8](v0, ((v21 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26CC26D08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0) - 8);
  v9 = *(v8 + 80);
  v32 = *(v8 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = (v0 + v7);
  v11 = *(v0 + v7 + 8);

  if (*(v0 + v7 + 16))
  {
    v12 = v10[3];
  }

  if (v10[4])
  {
    v13 = v10[5];
  }

  v14 = v9 + v7;
  if (v10[6])
  {
    v15 = v10[7];
  }

  v16 = v14 + 96;
  if (v10[8])
  {
    v17 = v10[9];
  }

  v18 = v16 & ~v9;
  if (v10[10])
  {
    v19 = v10[11];
  }

  v20 = (v0 + v18);
  v21 = _s10NetworkingO12FetchedValueOMa(0);
  if (!(*(*(v21 - 8) + 48))(v0 + v18, 1, v21))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v20;
    }

    else
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD138, &unk_26CD45540);
      v23 = *(v31 + 48);
      v24 = sub_26CD3A1EC();
      v25 = *(v24 - 8);
      v26 = *(v25 + 48);
      if (!v26(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      v27 = *(v31 + 64);
      if (!v26(&v20[v27], 1, v24))
      {
        (*(v25 + 8))(&v20[v27], v24);
      }
    }
  }

  v28 = (v32 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v9 | 7);
}

uint64_t sub_26CC27044(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26CC27054()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26CC270FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26CC2718C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_26CC27240(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26CC272EC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26CC27344()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC273D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC27408()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26CC275E8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC27620()
{
  v1 = sub_26CD3A07C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26CC276F4()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 139, 7);
}

uint64_t sub_26CC27754()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  if (v0[15])
  {
    v4 = v0[12];

    v5 = v0[15];
  }

  v6 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_26CC277BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC277F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC2787C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_26CC278C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

double sub_26CC2791C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
  swift_beginAccess();
  result = *(v3 + 32);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  *(a2 + 32) = result;
  return result;
}

__n128 sub_26CC27978(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_26CC279DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_26CC27A38(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_26CC27A9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_26CC27AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_26CC27BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_26CC27CA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC27CDC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26CC27D3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_26CC27D8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_26CC27DE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_26CC27E34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_26CC27E84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_26CC27ED4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 104);
}

uint64_t sub_26CC27F24()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 139, 7);
}

uint64_t sub_26CC27F84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  if (v2 >> 60 != 15)
  {
    sub_26CC18C50(v0[4], v2);
  }

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26CC27FE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_26CC28034()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC2806C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26CC280B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_26CC280FC()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 139, 7);
}

uint64_t sub_26CC2815C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  result = TVAppPreferencesAccessor.tvAppEnabledOverride.getter();
  *a2 = result;
  return result;
}

uint64_t sub_26CC281A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC281DC()
{
  v1 = sub_26CD39D0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26CC282DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26CC28334(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TVAppServices12TVAppBagMock_prewarmCallCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_26CC28388()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26CC2841C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC2845C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC284D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC28514()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC2854C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26CC28590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BDA88, &qword_26CD48358);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26CC28624()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26CC2865C()
{
  v1 = sub_26CD39D0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_26CC28750()
{
  v1 = sub_26CD39D0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26CC28824()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC28860@<X0>(_BYTE *a1@<X8>)
{
  result = _s13TVAppServices16PreferencesStoreV26sportsScoreSpoilersAllowedSbvgZ_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26CC28898(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_26CD39D0C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_26CD3A20C();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_26CC289C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_26CD39D0C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_26CD3A20C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26CC28AEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_26CD3A20C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_26CD39D0C();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_26CC28C1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_26CD3A20C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_26CD39D0C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26CC28D40()
{
  v1 = sub_26CD39D0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_26CC28E2C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_26CC28EA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t UpNextCollection.collectionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpNextCollection.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UpNextCollection.paginationToken.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t UpNextItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpNextItem.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UpNextItem.image.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v5 = v1[6];
  v4 = v1[7];
  *a1 = v1[3];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v5;
  a1[4] = v4;
}

uint64_t UpNextItem.title.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t UpNextItem.contextString.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t UpNextItem.overlay.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 184);
  v14 = *(v1 + 168);
  v2 = v14;
  v15 = v3;
  v16[0] = *(v1 + 200);
  v4 = v16[0];
  *(v16 + 10) = *(v1 + 210);
  v5 = *(v16 + 10);
  v6 = *(v1 + 120);
  v11[0] = *(v1 + 104);
  v11[1] = v6;
  v8 = *(v1 + 152);
  v12 = *(v1 + 136);
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 106) = v5;
  return sub_26CC2913C(v11, &v10);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t UpNextItem.sportingEventDetails.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for UpNextItem(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_26CC29274(v4, v5);
}

uint64_t sub_26CC29274(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t UpNextItem.actionURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UpNextItem(0) + 56);
  v4 = sub_26CD3A07C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UpNextItem.channel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UpNextItem(0) + 64);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;

  return sub_26CC293D4(v4, v5, v6, v7);
}

uint64_t sub_26CC293D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_26CC29418@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

TVAppServices::UpNextSubtitleComponents_optional __swiftcall UpNextSubtitleComponents.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t UpNextSubtitleComponents.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0xD000000000000015;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CC29538()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC2962C()
{
  *v0;
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CC2970C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC29808(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x747865746E6F63;
  v5 = 0x800000026CD4AD50;
  v6 = 0x800000026CD4AD70;
  v7 = 0xD000000000000015;
  if (v2 != 3)
  {
    v7 = 0xD000000000000010;
    v6 = 0x800000026CD4AD90;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x800000026CD4AD30;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t UpNextEpisodeDetails.showId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpNextEpisodeDetails.episodeTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UpNextEpisodeDetails.showTitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UpNextEpisodeDetails.seasonTitle.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t UpNextEpisodeDetails.seasonNumber.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t UpNextEpisodeDetails.episodeNumber.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t UpNextSportingEventDetails.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UpNextSportingEventDetails.shortTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UpNextItemOverlay.progress.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t UpNextItemOverlay.timeRemaining.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t UpNextItemOverlay.channelLogo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_26CC29AD4(v2, v3);
}

uint64_t sub_26CC29AD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t UpNextItemOverlay.appIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_26CC29AD4(v2, v3);
}

uint64_t UpNextItemOverlay.rentalExpiration.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

TVAppServices::UpNextContext_optional __swiftcall UpNextContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UpNextContext.rawValue.getter()
{
  result = 0x65756E69746E6F43;
  switch(*v0)
  {
    case 1:
      result = 0x6F7369704577654ELL;
      break;
    case 2:
      result = 0x6573616863727550;
      break;
    case 3:
      result = 0x6C61746E6552;
      break;
    case 4:
      result = 0x736970457478654ELL;
      break;
    case 5:
      result = 0x736165537478654ELL;
      break;
    case 6:
      result = 0x6F7361655377654ELL;
      break;
    case 7:
      result = 0x556F546465646441;
      break;
    case 8:
    case 9:
    case 0xA:
      result = 0x6C62616C69617641;
      break;
    case 0xB:
      result = 0x6F53676E696D6F43;
      break;
    case 0xC:
      result = 0x657469726F766146;
      break;
    case 0xD:
      result = 0x706168437478654ELL;
      break;
    case 0xE:
      result = 0x747061684377654ELL;
      break;
    case 0xF:
      result = 1702259020;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26CC29D7C()
{
  result = qword_2804BBAE8;
  if (!qword_2804BBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBAE8);
  }

  return result;
}

uint64_t sub_26CC29DD0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = UpNextContext.rawValue.getter();
  v4 = v3;
  if (v2 == UpNextContext.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26CD3AFDC();
  }

  return v7 & 1;
}

unint64_t sub_26CC29E70()
{
  result = qword_2804BBAF0;
  if (!qword_2804BBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBAF0);
  }

  return result;
}

uint64_t sub_26CC29EC4()
{
  v1 = *v0;
  sub_26CD3B0FC();
  UpNextContext.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC29F2C()
{
  v2 = *v0;
  UpNextContext.rawValue.getter();
  sub_26CD3A54C();
}

uint64_t sub_26CC29F90()
{
  v1 = *v0;
  sub_26CD3B0FC();
  UpNextContext.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC2A000@<X0>(uint64_t *a1@<X8>)
{
  result = UpNextContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26CC2A044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26CC2A08C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26CC2A110()
{
  v0 = MEMORY[0x277D837D0];
  sub_26CC30074(319, &qword_2804BBB08, &type metadata for UpNextContext, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_26CC30074(319, &qword_280BB9BF8, v0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26CC2A310(319, &qword_2804BBB10, type metadata accessor for UpNextEpisodeDetails);
      if (v3 <= 0x3F)
      {
        sub_26CC30074(319, &qword_2804BBB18, &type metadata for UpNextSportingEventDetails, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_26CD3A07C();
          if (v5 <= 0x3F)
          {
            sub_26CC2A310(319, &qword_280BBB1C8, MEMORY[0x277CC9260]);
            if (v6 <= 0x3F)
            {
              sub_26CC30074(319, &qword_2804BBB20, &type metadata for Channel, MEMORY[0x277D83D88]);
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

void sub_26CC2A310(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26CD3AADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for UpNextSubtitleComponents(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpNextSubtitleComponents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26CC2A4DC()
{
  sub_26CC30074(319, &qword_280BB9BF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26CC30074(319, &qword_2804BBB38, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26CC30074(319, &qword_2804BBB40, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26CC2A310(319, &qword_280BBB690, MEMORY[0x277CC9578]);
        if (v3 <= 0x3F)
        {
          sub_26CC2A310(319, &qword_280BBB1C8, MEMORY[0x277CC9260]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26CC2A660(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26CC2A6A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_13TVAppServices13ImageTemplateVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26CC2A73C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 122))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_26CC2A798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpNextContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UpNextContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26CC2A9A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CC2A9C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_26CC2AA10@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBB58, &qword_26CD3C658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v55 - v6;
  Item = type metadata accessor for UpNextItem(0);
  v63 = *(Item - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](Item);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v55 - v13;
  v14 = Data.asDictionary()();
  if (!v14)
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v36 = 3;
    v37 = &unk_287DF96A0;
    goto LABEL_31;
  }

  v15 = sub_26CCC7710(15, v14);
  if (v15)
  {
    v16 = v15;
    v17 = sub_26CCC7710(72, v15);
    if (v17)
    {
      v18 = v17;
      v19 = sub_26CCC7724(27, v17);
      if (v20)
      {
        v55 = v20;
        v56 = v19;
        v58 = a1;

        v69 = sub_26CCC7710(11, v16);

        v57 = v18;
        v21 = sub_26CCC77D4(43, v18);
        v22 = MEMORY[0x277D84F90];
        if (!v21)
        {
          v21 = MEMORY[0x277D84F90];
        }

        v68 = *(v21 + 16);
        if (!v68)
        {
LABEL_26:

          v38 = v22;
          v39 = v57;
          v40 = sub_26CCC7724(88, v57);
          v42 = v41;
          v43 = sub_26CCC7724(50, v39);
          v45 = v44;

          v47 = v58;
          v48 = v55;
          *v58 = v56;
          v47[1] = v48;
          v47[2] = v40;
          v47[3] = v42;
          v47[4] = v38;
          v47[5] = v43;
          v47[6] = v45;
          return result;
        }

        v23 = 0;
        v60 = 0x800000026CD4D390;
        v65 = (v63 + 56);
        v66 = v21 + 32;
        v64 = (v63 + 48);
        v71 = xmmword_26CD3C1E0;
        v59 = 0xD000000000000018;
        v61 = v12;
        v67 = v21;
        while (v23 < *(v21 + 16))
        {
          v24 = *(v66 + 8 * v23);

          sub_26CC2B1DC(v25, v69);
          if (v2)
          {
            v70 = v22;
            v26 = Item;
            if (qword_280BBB6B8 != -1)
            {
              swift_once();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
            v27 = swift_allocObject();
            *(v27 + 16) = v71;
            v72 = 0;
            v73 = 0xE000000000000000;
            sub_26CD3AC6C();

            v72 = v59;
            v73 = v60;
            v74 = v23;
            v28 = sub_26CD3AF8C();
            MEMORY[0x26D6AD060](v28);

            MEMORY[0x26D6AD060](8250, 0xE200000000000000);
            swift_getErrorValue();
            v29 = sub_26CD3B08C();
            MEMORY[0x26D6AD060](v29);

            v30 = v73;
            *(v27 + 32) = v72;
            *(v27 + 40) = v30;
            sub_26CD3A98C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
            v31 = swift_allocObject();
            *(v31 + 16) = v71;
            *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
            *(v31 + 64) = sub_26CC2E6E8();
            *(v31 + 32) = v27;
            sub_26CD3A3DC();

            v2 = 0;
            v32 = 1;
            Item = v26;
            v12 = v61;
            v22 = v70;
          }

          else
          {
            v32 = 0;
          }

          (*v65)(v7, v32, 1, Item);

          if ((*v64)(v7, 1, Item) == 1)
          {
            sub_26CC1B544(v7, &qword_2804BBB58, &qword_26CD3C658);
          }

          else
          {
            v33 = v62;
            sub_26CC2E7E8(v7, v62);
            sub_26CC2E7E8(v33, v12);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_26CCBE36C(0, v22[2] + 1, 1, v22);
            }

            v35 = v22[2];
            v34 = v22[3];
            if (v35 >= v34 >> 1)
            {
              v22 = sub_26CCBE36C(v34 > 1, v35 + 1, 1, v22);
            }

            v22[2] = v35 + 1;
            sub_26CC2E7E8(v12, v22 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v35);
          }

          ++v23;
          v21 = v67;
          if (v68 == v23)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_33;
      }
    }
  }

  if (qword_280BBB6B8 != -1)
  {
LABEL_33:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v37 = swift_allocObject();
  v37[1] = xmmword_26CD3C1E0;
  v72 = 0;
  v73 = 0xE000000000000000;
  sub_26CD3AC6C();

  v72 = 0xD000000000000012;
  v73 = 0x800000026CD4D370;
  v49 = sub_26CD3A50C();
  v51 = v50;

  MEMORY[0x26D6AD060](v49, v51);

  v52 = v73;
  *(v37 + 4) = v72;
  *(v37 + 5) = v52;
  v36 = 6;
LABEL_31:
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_26CD3C1E0;
  *(v53 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v53 + 64) = sub_26CC2E6E8();
  *(v53 + 32) = v37;
  sub_26CD3A3DC();

  sub_26CC2E794();
  swift_allocError();
  *v54 = v36;
  return swift_willThrow();
}

uint64_t sub_26CC2CFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v43 - v14;
  v15 = sub_26CCC7724(78, a1);
  v17 = v16;
  v18 = sub_26CCC7724(80, a1);
  v20 = v19;
  v21 = sub_26CCC7724(70, a1);
  v47 = v22;
  v48 = v21;
  v46 = sub_26CCC7AAC(68, a1);
  v45 = v23;
  v50 = sub_26CCC7944(19, a1);
  v49 = v24;
  v25 = qword_2804BDBE8;
  if (qword_2804BDBE8)
  {
    v43 = v20;
    v44 = v18;
    v26 = v15;
    v27 = a3;
    v28 = a2;

    v29 = sub_26CCC79F8(71, v25);

    if (v29 != 2 && (v29 & 1) != 0)
    {
      v30 = sub_26CCC7944(22, a1);
      v32 = v50;
      if ((v31 & 1) == 0)
      {
        v32 = v30;
      }

      v50 = v32;
      v49 &= v31;
    }

    a2 = v28;
    a3 = v27;
    v15 = v26;
    v20 = v43;
    v18 = v44;
  }

  sub_26CCC7944(65, a1);
  if (v33)
  {
    v34 = sub_26CD3A1EC();
    (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
  }

  else
  {
    v35 = v51;
    sub_26CD3A19C();
    v36 = sub_26CD3A1EC();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  }

  v37 = sub_26CCC7724(81, a1);
  sub_26CC2D728(v37, v38, 0);

  v39 = sub_26CD3A07C();
  (*(*(v39 - 8) + 56))(v11, 0, 1, v39);
  EpisodeDetails = type metadata accessor for UpNextEpisodeDetails(0);
  sub_26CC16D64(v51, a4 + *(EpisodeDetails + 40), &qword_2804BCA90, &qword_26CD3C200);
  sub_26CC16D64(v11, a4 + *(EpisodeDetails + 44), &qword_2804BCA30, &qword_26CD3DA70);
  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = v18;
  *(a4 + 40) = v20;
  v41 = v47;
  *(a4 + 48) = v48;
  *(a4 + 56) = v41;
  *(a4 + 64) = v46;
  *(a4 + 72) = v45 & 1;
  *(a4 + 80) = v50;
  *(a4 + 88) = v49 & 1;
}

uint64_t sub_26CC2D358@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBAE0, &unk_26CD3C1F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = *a1;
  v20 = qword_2804BDBE8;
  if (!qword_2804BDBE8)
  {
    goto LABEL_9;
  }

  v21 = sub_26CCC79F8(71, v20);

  if (v21 == 2 || (v21 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_26CC1B4DC(a2, v18, &qword_2804BBAE0, &unk_26CD3C1F0);
  EpisodeDetails = type metadata accessor for UpNextEpisodeDetails(0);
  v23 = *(*(EpisodeDetails - 8) + 48);
  if (v23(v18, 1, EpisodeDetails) == 1)
  {
    goto LABEL_8;
  }

  v37 = v23;
  v24 = *(v18 + 7);

  sub_26CC2FA80(v18);
  if (v24)
  {

    sub_26CC1B4DC(a2, v16, &qword_2804BBAE0, &unk_26CD3C1F0);
    if (v37(v16, 1, EpisodeDetails) == 1)
    {
      v18 = v16;
LABEL_8:
      sub_26CC1B544(v18, &qword_2804BBAE0, &unk_26CD3C1F0);
      goto LABEL_9;
    }

    v35 = v16[88];
    result = sub_26CC2FA80(v16);
    if ((v35 & 1) == 0)
    {
      v30 = 0;
      v31 = 1;
      goto LABEL_14;
    }
  }

LABEL_9:
  sub_26CC1B4DC(a2, v13, &qword_2804BBAE0, &unk_26CD3C1F0);
  v25 = type metadata accessor for UpNextEpisodeDetails(0);
  v26 = *(*(v25 - 8) + 48);
  if (v26(v13, 1, v25) == 1)
  {
    v27 = v13;
LABEL_11:
    result = sub_26CC1B544(v27, &qword_2804BBAE0, &unk_26CD3C1F0);
LABEL_13:
    v30 = 0;
    v31 = 0;
    goto LABEL_14;
  }

  v29 = v13[72];
  result = sub_26CC2FA80(v13);
  if (v29)
  {
    goto LABEL_13;
  }

  sub_26CC1B4DC(a2, v10, &qword_2804BBAE0, &unk_26CD3C1F0);
  if (v26(v10, 1, v25) == 1)
  {
    v27 = v10;
    goto LABEL_11;
  }

  v34 = v10[88];
  result = sub_26CC2FA80(v10);
  v31 = 0;
  v30 = v34 ^ 1;
LABEL_14:
  if (v19 > 3)
  {
    if (v19 <= 0x10)
    {
      if (((1 << v19) & 0x19F80) == 0)
      {
        if (((1 << v19) & 0x60) != 0)
        {
          v32 = 4;
          goto LABEL_34;
        }

        if (((1 << v19) & 0x6000) != 0)
        {
          v32 = 3;
          goto LABEL_34;
        }

        goto LABEL_28;
      }

LABEL_20:
      v32 = 0;
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if ((v19 - 2) < 2)
  {
    goto LABEL_20;
  }

  if (v19)
  {
LABEL_28:
    if (v30)
    {
      v33 = 1;
    }

    else
    {
      v33 = 3;
    }

    goto LABEL_31;
  }

  v33 = v30 & 1;
LABEL_31:
  if (v31)
  {
    v32 = 2;
  }

  else
  {
    v32 = v33;
  }

LABEL_34:
  *a3 = v32;
  return result;
}

uint64_t sub_26CC2D728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_26CD3A07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_6:
    sub_26CC2E794();
    swift_allocError();
    *v18 = 5;
    return swift_willThrow();
  }

  sub_26CD3A03C();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26CC1B544(v9, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v15 = swift_allocObject();
    v20 = xmmword_26CD3C1E0;
    *(v15 + 16) = xmmword_26CD3C1E0;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_26CD3AC6C();

    v21 = 0xD000000000000015;
    v22 = 0x800000026CD4D3B0;
    MEMORY[0x26D6AD060](a1, a2);
    v16 = v22;
    *(v15 + 32) = v21;
    *(v15 + 40) = v16;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v17 = swift_allocObject();
    *(v17 + 16) = v20;
    *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v17 + 64) = sub_26CC2E6E8();
    *(v17 + 32) = v15;
    sub_26CD3A3DC();

    goto LABEL_6;
  }

  (*(v11 + 32))(v14, v9, v10);
  if (a3)
  {
    sub_26CC2DD4C(a3);
  }

  sub_26CD3A05C();

  return (*(v11 + 8))(v14, v10);
}

double sub_26CC2DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(a3 + 32);
  if (a4)
  {
    v11 = sub_26CCC7710(28, a4);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 6;
  }

  if (v12 == 6)
  {

    goto LABEL_19;
  }

  if (v12 != 3)
  {
    if (v12 == 2)
    {
      v13 = v11;
      v14 = sub_26CCC7710(5, a5);
      if (v14)
      {
LABEL_14:

        goto LABEL_20;
      }

      if (v13)
      {

        v14 = sub_26CCC7710(4, v13);

        goto LABEL_14;
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

  if (!v11)
  {
LABEL_19:
    v14 = 0;
LABEL_20:
    v15 = 0;
    if (v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v15 = sub_26CCC7710(95, v11);

  v14 = 0;
  if (!v15)
  {
LABEL_21:
    v15 = sub_26CCC7710(74, a5);
  }

LABEL_22:
  if (v8)
  {

    v16 = v9;
    if (!v15)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_36;
    }
  }

  v17 = sub_26CCC7724(91, v15);
  if (v18)
  {
    v19 = v18;
    v38 = v17;
    v20 = sub_26CCC7944(96, v15);
    if (v21)
    {
    }

    else
    {
      v22 = *&v20;
      v37 = v9;
      v23 = COERCE_DOUBLE(sub_26CCC7944(25, v15));
      v25 = v24;

      if ((v25 & 1) == 0 && v22 * v23 > 0.0)
      {
        v9 = v37;
        *a1 = v38;
        *(a1 + 8) = v19;
        *(a1 + 16) = v22 / v23;
        *(a1 + 24) = v16;
        *(a1 + 32) = v8;
        if (v8)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v9 = v37;
    }
  }

LABEL_36:

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (v8)
  {
LABEL_37:

    if (!v14)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

LABEL_32:
  v9 = 0;
  if (!v14)
  {
    goto LABEL_45;
  }

LABEL_38:
  v26 = sub_26CCC7724(91, v14);
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    v30 = sub_26CCC7944(96, v14);
    if (v31)
    {
    }

    else
    {
      v32 = *&v30;
      v33 = COERCE_DOUBLE(sub_26CCC7944(25, v14));
      v35 = v34;

      if ((v35 & 1) == 0 && v32 * v33 > 0.0)
      {
        *a2 = v29;
        *(a2 + 8) = v28;
        result = v32 / v33;
        *(a2 + 16) = v32 / v33;
        *(a2 + 24) = v9;
        *(a2 + 32) = v8;
        return result;
      }
    }
  }

LABEL_45:

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}