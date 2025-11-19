uint64_t sub_27023C648(double a1, double a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7738, &unk_270241038);
  *(v2 + 208) = v3;
  v4 = *(v3 - 8);
  *(v2 + 216) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27023C714, 0, 0);
}

uint64_t sub_27023C714()
{
  v29 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = swift_allocObject();
  v0[29] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_27023CD4C;
  *(v4 + 24) = v3;
  v0[22] = sub_27023CD64;
  v0[23] = v4;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_27023CD8C;
  v0[21] = &block_descriptor;
  v5 = _Block_copy(v0 + 18);
  v6 = v0[23];

  v7 = [objc_opt_self() eventStreamWithEventActions_];
  v0[30] = v7;
  _Block_release(v5);
  if (v7)
  {
    if (qword_2807C7728 != -1)
    {
      swift_once();
    }

    v8 = sub_270240400();
    __swift_project_value_buffer(v8, qword_2807C7E90);
    v9 = sub_2702403E0();
    v10 = sub_270240460();
    v27 = v7;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[24];
      v11 = v0[25];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = sub_2702404A0();
      v17 = sub_27023F688(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_27023B000, v9, v10, "Performing primary action at location: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x27439B440](v14, -1, -1);
      MEMORY[0x27439B440](v13, -1, -1);
    }

    v18 = v0[27];
    v19 = v0[28];
    v20 = v0[26];
    v21 = [objc_allocWithZone(MEMORY[0x277D44348]) init];
    v0[31] = v21;
    v22 = [objc_allocWithZone(MEMORY[0x277D44350]) init];
    v0[32] = v22;
    v0[2] = v0;
    v0[3] = sub_27023CB88;
    swift_continuation_init();
    v0[17] = v20;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
    sub_270240440();
    (*(v18 + 32))(boxed_opaque_existential_0, v19, v20);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_27023CE4C;
    v0[13] = &block_descriptor_6;
    [v21 playEventStream:v27 options:v22 completion:v0 + 10];
    (*(v18 + 8))(boxed_opaque_existential_0, v20);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v24 = v0[28];
    sub_27023CDF8();
    swift_allocError();
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_27023CB88()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27023CC68, 0, 0);
}

uint64_t sub_27023CC68()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 224);

  v5 = *(v0 + 8);

  return v5();
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

id sub_27023CD4C(id result)
{
  if (result)
  {
    return [result tap_];
  }

  return result;
}

uint64_t sub_27023CD64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_27023CD8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return MEMORY[0x2821FEBE0](a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27023CDF8()
{
  result = qword_2807C77A0;
  if (!qword_2807C77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C77A0);
  }

  return result;
}

uint64_t sub_27023CE4C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7738, &unk_270241038);
  return sub_270240450();
}

uint64_t sub_27023CE9C()
{
  sub_270240530();
  MEMORY[0x27439B180](0);
  return sub_270240550();
}

uint64_t sub_27023CF08()
{
  sub_270240530();
  MEMORY[0x27439B180](0);
  return sub_270240550();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_27023D02C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrimaryActionActuation.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PrimaryActionActuation.Error(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s25UIIntelligenceInteraction11InteractionOwet_0(uint64_t a1, int a2)
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

uint64_t _s25UIIntelligenceInteraction11InteractionOwst_0(uint64_t result, int a2, int a3)
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

unint64_t sub_27023D27C()
{
  result = qword_2807C77A8;
  if (!qword_2807C77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C77A8);
  }

  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_2807C77B0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2807C77B0);
    }
  }
}

Swift::Void __swiftcall InteractionComposer.primaryAction(at:)(CGPoint at)
{
  y = at.y;
  x = at.x;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_27023D3D8(0, *(v4 + 2) + 1, 1, v4);
    *v1 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_27023D3D8((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[16 * v7];
  *(v8 + 4) = x;
  *(v8 + 5) = y;
  *v1 = v4;
}

char *sub_27023D3D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B20, &qword_270241230);
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

uint64_t sub_27023D4E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_27023D530(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27023D5DC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27023D6F4;

  return v9(a1, a2);
}

uint64_t sub_27023D6F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_27023D7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_270240320();
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

    return (v10 + 1);
  }
}

uint64_t sub_27023D8CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_270240320();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for InteractionRunner()
{
  result = qword_2807C7B28;
  if (!qword_2807C7B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27023D9D0()
{
  sub_270240320();
  if (v0 <= 0x3F)
  {
    sub_27023DA54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27023DA54()
{
  if (!qword_2807C7B38)
  {
    v0 = sub_270240430();
    if (!v1)
    {
      atomic_store(v0, &qword_2807C7B38);
    }
  }
}

uint64_t sub_27023DAA4()
{
  v1[12] = v0;
  v2 = sub_270240390();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for InteractionRunner();
  v1[16] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v7 = sub_270240350();
  v1[18] = v7;
  v8 = *(v7 - 8);
  v1[19] = v8;
  v9 = *(v8 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27023DC08, 0, 0);
}

void sub_27023DC08()
{
  if (qword_2807C7730 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_270240380();
  *(v0 + 184) = __swift_project_value_buffer(v2, qword_2807C7EA8);
  sub_270240340();
  v3 = sub_270240370();
  v4 = sub_270240490();
  if (sub_2702404B0())
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_270240330();
    _os_signpost_emit_with_name_impl(&dword_27023B000, v3, v4, v7, "PerformInteractions", "", v6, 2u);
    MEMORY[0x27439B440](v6, -1, -1);
  }

  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);

  (*(v11 + 16))(v8, v9, v10);
  v12 = sub_2702403C0();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + 192) = sub_2702403B0();
  v15 = *(v11 + 8);
  *(v0 + 200) = v15;
  *(v0 + 208) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v9, v10);
  if (qword_2807C7720 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 136);
  v17 = *(v0 + 96);
  v18 = sub_270240400();
  __swift_project_value_buffer(v18, qword_2807C7E78);
  sub_27023E6D8(v17, v16);
  v19 = sub_2702403E0();
  v20 = sub_270240460();
  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 136);
  v74 = v0;
  if (v21)
  {
    v23 = *(v0 + 128);
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    v25 = *(*(v22 + *(v23 + 20)) + 16);
    sub_27023E73C(v22);
    *(v24 + 4) = v25;
    v26 = v0;
    _os_log_impl(&dword_27023B000, v19, v20, "Performing %ld interactions", v24, 0xCu);
    MEMORY[0x27439B440](v24, -1, -1);
  }

  else
  {
    v26 = v0;
    sub_27023E73C(v22);
  }

  v27 = *(v26 + 128);
  v28 = *(v26 + 96);

  v29 = *(v28 + *(v27 + 20));
  v30 = *(v29 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v76 = MEMORY[0x277D84F90];
    sub_27023E798(0, v30, 0);
    v31 = v76;
    v32 = (v29 + 32);
    do
    {
      v75 = v30;
      v33 = *v32;
      *(v26 + 40) = &type metadata for PrimaryActionActuation;
      *(v26 + 48) = &off_2820517E0;
      *(v26 + 16) = v33;
      v35 = v76[2];
      v34 = v76[3];
      v36 = &type metadata for PrimaryActionActuation;
      if (v35 >= v34 >> 1)
      {
        sub_27023E798((v34 > 1), v35 + 1, 1);
        v36 = *(v26 + 40);
      }

      v37 = __swift_mutable_project_boxed_opaque_existential_1(v26 + 16, v36);
      Description = v36[-1].Description;
      v39 = Description[8] + 15;
      v40 = swift_task_alloc();
      v41 = v37;
      v26 = v0;
      (Description[2])(v40, v41, v36);
      v42 = *v40;
      *(v0 + 80) = &type metadata for PrimaryActionActuation;
      *(v0 + 88) = &off_2820517E0;
      *(v0 + 56) = v42;
      v76[2] = v35 + 1;
      sub_27023E808((v0 + 56), &v76[5 * v35 + 4]);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      ++v32;
      --v30;
    }

    while (v75 != 1);
  }

  *(v26 + 216) = v31;
  v43 = v31[2];
  *(v26 + 224) = v43;
  if (v43)
  {
    *(v26 + 232) = 0;
    if (v31[2])
    {
      v44 = __swift_project_boxed_opaque_existential_0(v31 + 4, v31[7]);
      v45 = *v44;
      v46 = v44[1];
      v47 = swift_task_alloc();
      *(v26 + 240) = v47;
      *v47 = v26;
      v47[1] = sub_27023E26C;

      sub_27023C648(v45, v46);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v48 = *(v26 + 184);
    v49 = *(v26 + 192);
    v50 = *(v26 + 160);

    v51 = sub_270240370();
    sub_2702403A0();
    v52 = sub_270240480();
    if (sub_2702404B0())
    {
      v53 = *(v26 + 192);
      v55 = *(v26 + 112);
      v54 = *(v26 + 120);
      v56 = v26;
      v57 = *(v26 + 104);

      sub_2702403D0();

      if ((*(v55 + 88))(v54, v57) == *MEMORY[0x277D85B00])
      {
        v58 = "[Error] Interval already ended";
      }

      else
      {
        (*(v56[14] + 8))(v56[15], v56[13]);
        v58 = "";
      }

      v59 = v56[20];
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = sub_270240330();
      _os_signpost_emit_with_name_impl(&dword_27023B000, v51, v52, v61, "PerformInteractions", v58, v60, 2u);
      v62 = v60;
      v26 = v74;
      MEMORY[0x27439B440](v62, -1, -1);
    }

    v64 = *(v26 + 200);
    v63 = *(v26 + 208);
    v65 = *(v26 + 192);
    v67 = *(v26 + 168);
    v66 = *(v26 + 176);
    v68 = *(v26 + 160);
    v69 = v26;
    v70 = *(v26 + 144);
    v71 = v69[17];
    v72 = v69[15];

    v64(v68, v70);

    v73 = v69[1];

    v73();
  }
}

uint64_t sub_27023E26C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);

    v5 = sub_27023E62C;
  }

  else
  {
    v5 = sub_27023E388;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_27023E388()
{
  v1 = v0[29] + 1;
  if (v1 == v0[28])
  {
    v2 = v0[27];
    v3 = v0[23];
    v4 = v0[24];
    v5 = v0[20];

    v6 = sub_270240370();
    sub_2702403A0();
    v7 = sub_270240480();
    if (sub_2702404B0())
    {
      v8 = v0[24];
      v10 = v0[14];
      v9 = v0[15];
      v11 = v0[13];

      sub_2702403D0();

      if ((*(v10 + 88))(v9, v11) == *MEMORY[0x277D85B00])
      {
        v12 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[14] + 8))(v0[15], v0[13]);
        v12 = "";
      }

      v18 = v0[20];
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_270240330();
      _os_signpost_emit_with_name_impl(&dword_27023B000, v6, v7, v20, "PerformInteractions", v12, v19, 2u);
      MEMORY[0x27439B440](v19, -1, -1);
    }

    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[24];
    v25 = v0[21];
    v24 = v0[22];
    v26 = v0[20];
    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[15];

    v22(v26, v27);

    v30 = v0[1];

    v30();
  }

  else
  {
    v0[29] = v1;
    v13 = v0[27];
    if (v1 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = __swift_project_boxed_opaque_existential_0((v13 + 40 * v1 + 32), *(v13 + 40 * v1 + 56));
      v15 = *v14;
      v16 = v14[1];
      v17 = swift_task_alloc();
      v0[30] = v17;
      *v17 = v0;
      v17[1] = sub_27023E26C;

      sub_27023C648(v15, v16);
    }
  }
}

uint64_t sub_27023E62C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[15];

  v7 = v0[1];
  v8 = v0[31];

  return v7();
}

uint64_t sub_27023E6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionRunner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27023E73C(uint64_t a1)
{
  v2 = type metadata accessor for InteractionRunner();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_27023E798(void *a1, int64_t a2, char a3)
{
  result = sub_27023E820(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_27023E808(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_27023E820(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B40, &qword_2702412E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B48, &qword_2702412E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27023E97C()
{
  v1 = *v0;
  sub_270240530();
  MEMORY[0x27439B180](v1);
  return sub_270240550();
}

uint64_t sub_27023E9F0()
{
  v1 = *v0;
  sub_270240530();
  MEMORY[0x27439B180](v1);
  return sub_270240550();
}

uint64_t InteractionSession.__allocating_init(label:)(uint64_t a1, unint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  if (a2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (a2)
  {
    v6 = a2;
  }

  *(result + 24) = v5;
  *(result + 32) = v6;
  if (qword_2807C7710 != -1)
  {
    v7 = result;
    swift_once();
    return v7;
  }

  return result;
}

uint64_t InteractionSession.init(label:)(uint64_t a1, unint64_t a2)
{
  *(v2 + 16) = 0;
  if (a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0xE000000000000000;
  if (a2)
  {
    v4 = a2;
  }

  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  if (qword_2807C7710 != -1)
  {
    swift_once();
  }

  return v2;
}

uint64_t InteractionSession.deinit()
{
  if ((*(v0 + 16) | 2) == 2)
  {
    v1 = *(v0 + 32);

    return v0;
  }

  else
  {
    result = sub_2702404E0();
    __break(1u);
  }

  return result;
}

uint64_t InteractionSession.__deallocating_deinit()
{
  if ((*(v0 + 16) | 2) == 2)
  {
    v1 = *(v0 + 32);

    v2 = v0;
    v3 = 40;
    v4 = 7;
  }

  else
  {
    v2 = sub_2702404E0();
    __break(1u);
  }

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

void sub_27023EC44()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_2807C7718 != -1)
    {
      swift_once();
    }

    v2 = sub_270240400();
    __swift_project_value_buffer(v2, qword_2807C7E60);

    oslog = sub_2702403E0();
    v3 = sub_270240470();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      v7 = *(v1 + 24);
      v6 = *(v1 + 32);

      v8 = sub_27023F688(v7, v6, &v15);

      *(v4 + 4) = v8;
      v9 = "[%s] Attempted to start an interaction session that has already been started";
LABEL_10:
      _os_log_impl(&dword_27023B000, oslog, v3, v9, v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x27439B440](v5, -1, -1);
      MEMORY[0x27439B440](v4, -1, -1);

      return;
    }
  }

  else
  {
    *(v0 + 16) = 1;
    if (qword_2807C7718 != -1)
    {
      swift_once();
    }

    v10 = sub_270240400();
    __swift_project_value_buffer(v10, qword_2807C7E60);

    oslog = sub_2702403E0();
    v3 = sub_270240460();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      v12 = *(v1 + 24);
      v11 = *(v1 + 32);

      v13 = sub_27023F688(v12, v11, &v15);

      *(v4 + 4) = v13;
      v9 = "[%s] Started interaction session";
      goto LABEL_10;
    }
  }
}

uint64_t sub_27023EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for InteractionRunner();
  v4[7] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27023EF60, 0, 0);
}

uint64_t sub_27023EF60()
{
  if (*(v0[6] + 16) != 1)
  {
    return sub_2702404E0();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v0[2] = MEMORY[0x277D84F90];
  v3(v0 + 2);
  v6 = sub_270240320();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  *(v1 + *(v2 + 20)) = v0[2];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_27023F0E0;
  v8 = v0[8];

  return sub_27023DAA4();
}

uint64_t sub_27023F0E0()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_27023F264;
  }

  else
  {
    v3 = sub_27023F1F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27023F1F4()
{
  sub_27023E73C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27023F264()
{
  sub_27023E73C(v0[8]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

void sub_27023F2D4()
{
  v1 = v0;
  *(v0 + 16) = 2;
  if (qword_2807C7718 != -1)
  {
    swift_once();
  }

  v2 = sub_270240400();
  __swift_project_value_buffer(v2, qword_2807C7E60);

  oslog = sub_2702403E0();
  v3 = sub_270240460();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v7 = *(v1 + 24);
    v6 = *(v1 + 32);

    v8 = sub_27023F688(v7, v6, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_27023B000, oslog, v3, "[%s] Ended interaction session", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x27439B440](v5, -1, -1);
    MEMORY[0x27439B440](v4, -1, -1);
  }
}

void sub_27023F44C()
{
  v0 = [objc_opt_self() tokenForCurrentProcess];
  v1 = sub_270240410();
  v2 = [v0 hasEntitlement_];

  if ((v2 & 1) == 0)
  {
    if (qword_2807C7718 != -1)
    {
      swift_once();
    }

    v3 = sub_270240400();
    __swift_project_value_buffer(v3, qword_2807C7E60);
    oslog = sub_2702403E0();
    v4 = sub_270240470();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_27023B000, oslog, v4, "Missing com.apple.private.hid.client.event-dispatch.internal entitlement. Some interactions might be non-functional.", v5, 2u);
      MEMORY[0x27439B440](v5, -1, -1);
    }
  }
}

uint64_t sub_27023F5B8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_27023F62C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_27023F688(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_27023F688(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_27023F754(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_27023D02C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_27023F754(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_27023F860(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2702404D0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_27023F860(uint64_t a1, unint64_t a2)
{
  v4 = sub_27023F8AC(a1, a2);
  sub_27023F9DC(&unk_2880325D0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_27023F8AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_27023FAC8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2702404D0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_270240420();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_27023FAC8(v10, 0);
        result = sub_2702404C0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_27023F9DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_27023FB3C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_27023FAC8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B58, &qword_2702413E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_27023FB3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C7B58, &qword_2702413E0);
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

_BYTE **sub_27023FC30(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t dispatch thunk of InteractionSession.perform(target:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_27023D6F4;

  return v12(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for InteractionSession.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InteractionSession.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27023FF80()
{
  result = qword_2807C7B50;
  if (!qword_2807C7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807C7B50);
  }

  return result;
}

uint64_t sub_27023FFD4()
{
  v0 = sub_270240400();
  __swift_allocate_value_buffer(v0, qword_2807C7E60);
  __swift_project_value_buffer(v0, qword_2807C7E60);
  return sub_2702403F0();
}

uint64_t sub_270240054()
{
  v0 = sub_270240400();
  __swift_allocate_value_buffer(v0, qword_2807C7E78);
  __swift_project_value_buffer(v0, qword_2807C7E78);
  return sub_2702403F0();
}

uint64_t sub_2702400D4()
{
  v0 = sub_270240400();
  __swift_allocate_value_buffer(v0, qword_2807C7E90);
  __swift_project_value_buffer(v0, qword_2807C7E90);
  return sub_2702403F0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2702401B4()
{
  v0 = sub_270240400();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_270240380();
  __swift_allocate_value_buffer(v5, qword_2807C7EA8);
  __swift_project_value_buffer(v5, qword_2807C7EA8);
  if (qword_2807C7720 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_2807C7E78);
  (*(v1 + 16))(v4, v6, v0);
  return sub_270240360();
}