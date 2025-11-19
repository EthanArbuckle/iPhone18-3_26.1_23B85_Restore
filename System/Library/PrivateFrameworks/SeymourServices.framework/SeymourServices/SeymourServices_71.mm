uint64_t sub_2275A3014(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_227598524(a1);
}

uint64_t sub_2275A30B0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E92F34;

  return sub_22759EB88(a1, a2);
}

uint64_t sub_2275A315C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return sub_22759EF04(a1, a2);
}

uint64_t sub_2275A3208(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return sub_22759F21C(a1, a2);
}

uint64_t sub_2275A32B4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return sub_22759F3F8(a1, a2);
}

uint64_t sub_2275A3360(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return sub_22759F5E4(a1, a2);
}

uint64_t sub_2275A340C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return sub_22759F7C0(a1, a2);
}

uint64_t sub_2275A34B8(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return sub_22759F99C(a1, a2);
}

uint64_t sub_2275A3564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 48))(a1, a2, a3, v7, v8);
}

unint64_t sub_2275A35D8()
{
  result = qword_27D7BF448;
  if (!qword_27D7BF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF448);
  }

  return result;
}

uint64_t sub_2275A365C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2275A36CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 40))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A37D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_2275A3860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A392C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 64))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A39F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 56))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A3AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 32))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A3B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A3C04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2275A3C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 24))(a1, a2, a3, v7, v8);
}

size_t static CatalogMetadataJournal.representativeSamples()()
{
  v16 = sub_227666330();
  v0 = *(v16 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  sub_226F5D274();
  v22 = sub_22766BE70();
  v23[0] = v4;
  v23[1] = v23;
  v23[2] = &v22;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v18 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v19 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    result = sub_226F1F888(0, v6, 0);
    v8 = 0;
    v9 = v17;
    v10 = (v5 + 48);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;

      sub_227666300();
      v17 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F1F888(v14 > 1, v15 + 1, 1);
        v9 = v17;
      }

      ++v8;
      *(v9 + 16) = v15 + 1;
      result = (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v15, v3, v16);
      v10 += 3;
      if (v6 == v8)
      {

        return v9;
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

void sub_2275A4010(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    [a1 timestamp];
    sub_227666300();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_2275A4210(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

id sub_2275A4140(void *a1)
{
  sub_227666310();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666320();
  return [a1 setTimestamp_];
}

uint64_t sub_2275A41B8(uint64_t a1)
{
  result = sub_2275A4210(&qword_28139B690, MEMORY[0x277D522A0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275A4210(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2275A4268(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227665F20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2276627D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  v18 = [a1 sessionIdentifier];
  if (!v18)
  {
    goto LABEL_9;
  }

  v32 = v2;
  v31[2] = a2;
  v19 = v18;
  v31[1] = sub_22766C000();
  v21 = v20;

  v22 = [a1 planIdentifier];
  if (!v22)
  {
LABEL_8:

LABEL_9:
    v29 = sub_227664DD0();
    sub_2275A4FF0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51028], v29);
    swift_willThrow();

    return;
  }

  v23 = v22;
  v31[3] = v21;
  sub_2276627B0();

  (*(v8 + 32))(v17, v15, v7);
  v24 = [a1 reference];
  if (!v24)
  {
    (*(v8 + 8))(v17, v7);
    goto LABEL_8;
  }

  v25 = v24;
  (*(v8 + 16))(v12, v17, v7);
  v26 = v25;
  v27 = v32;
  sub_226F5B7DC(v26);
  if (v27)
  {

    v28 = *(v8 + 8);
    v28(v12, v7);
    v28(v17, v7);
  }

  else
  {
    sub_227667750();

    (*(v8 + 8))(v17, v7);
  }
}

void sub_2275A45E0(void *a1, uint64_t a2)
{
  v27 = sub_227665F20();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276627D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667740();
  v13 = sub_227662790();
  v14 = v12;
  v15 = a1;
  (*(v9 + 8))(v14, v8);
  [a1 setPlanIdentifier_];

  sub_227667770();
  v16 = objc_opt_self();
  v17 = sub_22766BFD0();
  v18 = [v16 insertNewObjectForEntityForName:v17 inManagedObjectContext:a2];

  type metadata accessor for ManagedWorkoutPlanReference();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = v27;
    v22 = v26[1];
    sub_226F5C16C(v19);
    (*(v4 + 8))(v7, v21);
    if (v22)
    {
    }

    else
    {
      [v15 setReference_];

      sub_227667760();
      v25 = sub_22766BFD0();

      [v15 setSessionIdentifier_];
    }
  }

  else
  {

    v23 = sub_227664DD0();
    sub_2275A4FF0(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51000], v23);
    swift_willThrow();
    (*(v4 + 8))(v7, v27);
  }
}

size_t static ArchivedWorkoutPlanSession.representativeSamples()()
{
  v42 = sub_227665F20();
  v31 = *(v42 - 8);
  v0 = *(v31 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2276627D0();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF558, &qword_22768BFD8);
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = v30 - v7;
  v37 = sub_227667780();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662780();
  v13 = static WorkoutPlanReference.representativeSamples()();
  v14 = sub_22766C090();
  v51 = v13;
  v52[0] = v12;
  v52[1] = v52;
  v52[2] = &v51;
  v50 = v14;
  v52[3] = &v50;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF560, &qword_22768BFE0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v44 = sub_226F5BF60(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v45 = sub_226F5BF60(&qword_27D7BF568, &qword_27D7BF560, &qword_22768BFE0);
  v46 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v43 = MEMORY[0x277D84F90];
    result = sub_226F1F5C8(0, v16, 0);
    v18 = 0;
    v19 = v43;
    v33 = v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v32 = (v2 + 16);
    v31 += 16;
    v30[1] = v8 + 32;
    v35 = v15;
    v34 = v5;
    while (v18 < *(v15 + 16))
    {
      v20 = v16;
      v21 = v8;
      v22 = v36;
      sub_2275A4EC0(v33 + *(v5 + 72) * v18, v36);
      v23 = *(v38 + 48);
      v24 = (v22 + *(v38 + 64));
      v25 = v11;
      v27 = *v24;
      v26 = v24[1];
      (*v32)(v39, v22, v40);
      (*v31)(v41, v22 + v23, v42);

      sub_227667750();
      sub_2275A4F30(v22);
      v43 = v19;
      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_226F1F5C8(v28 > 1, v29 + 1, 1);
        v19 = v43;
      }

      ++v18;
      *(v19 + 16) = v29 + 1;
      v8 = v21;
      result = (*(v21 + 32))(v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v29, v25, v37);
      v16 = v20;
      v5 = v34;
      v11 = v25;
      v15 = v35;
      if (v20 == v18)
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

uint64_t sub_2275A4EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF558, &qword_22768BFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275A4F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF558, &qword_22768BFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2275A4F98(uint64_t a1)
{
  result = sub_2275A4FF0(&qword_2813A55C8, MEMORY[0x277D52F78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275A4FF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2275A5038(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        sub_226EA1E2C(*(a1 + 48) + 40 * v13, v34);
        sub_226E97CC0(*(a1 + 56) + 32 * v13, v35 + 8);
        v32[0] = v35[0];
        v32[1] = v35[1];
        v33 = v36;
        v31[0] = v34[0];
        v31[1] = v34[1];
        sub_226EA1E2C(v31, &v25);
        if (!swift_dynamicCast())
        {
          sub_226E97D1C(v31, &qword_27D7BF570, &unk_22768C110);

          goto LABEL_23;
        }

        v15 = v24[0];
        v14 = v24[1];
        sub_226E97CC0(v32 + 8, v24);
        sub_226E97D1C(v31, &qword_27D7BF570, &unk_22768C110);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v28 = v25;
        v29 = v26;
        v30 = v27;
        result = sub_226E92000(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v15;
          v9[1] = v14;
          v11 = result;

          result = sub_227333460(&v25, v2[7] + 40 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          v18 = v2[7] + 40 * result;
          v19 = v25;
          v20 = v26;
          *(v18 + 32) = v27;
          *v18 = v19;
          *(v18 + 16) = v20;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_27;
          }

          v2[2] = v23;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_226E97D1C(&v25, &qword_27D7BF578, &qword_22768C120);
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2275A5364(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_226EA1E2C(*(a1 + 48) + 40 * v14, v29);
        sub_226E97CC0(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_226EA1E2C(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_226E97CC0(v27 + 8, v22);
        sub_226E97D1C(v26, &qword_27D7BF570, &unk_22768C110);
        v23 = v20;
        sub_226F04970(v22, v24);
        v15 = v23;
        sub_226F04970(v24, v25);
        sub_226F04970(v25, &v23);
        result = sub_226E92000(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_226F04970(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_226F04970(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_226E97D1C(v26, &qword_27D7BF570, &unk_22768C110);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_2275A5640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v57 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF580, &qword_22768C128);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v57 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  v8 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = (&v57 - v9);
  v10 = sub_227662750();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v65 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v64 = &v57 - v17;
  v73 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98F8, &qword_227674D48);
    v18 = sub_22766D010();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v19 = v73 + 64;
  v20 = 1 << *(v73 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v73 + 64);
  v23 = (v20 + 63) >> 6;
  v70 = (v71 + 56);
  v72 = (v71 + 32);
  v58 = v18 + 8;
  v59 = v71 + 40;

  v25 = 0;
  v62 = v5;
  v61 = v19;
  v60 = v23;
  v63 = v14;
  while (1)
  {
    if (!v22)
    {
      while (1)
      {
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v28 >= v23)
        {

          return v18;
        }

        v22 = *(v19 + 8 * v28);
        ++v25;
        if (v22)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v28 = v25;
LABEL_14:
    v29 = __clz(__rbit64(v22)) | (v28 << 6);
    v30 = (*(v73 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_226E97CC0(*(v73 + 56) + 32 * v29, v78);
    *&v77 = v31;
    *(&v77 + 1) = v32;
    v75[2] = v77;
    v76[0] = v78[0];
    v76[1] = v78[1];
    v33 = v32;
    v74 = v77;
    sub_226F04970(v76, v75);

    if (!swift_dynamicCast())
    {
      break;
    }

    v22 &= v22 - 1;
    (*v70)(v5, 0, 1, v10);
    v34 = v5;
    v35 = *v72;
    v36 = v65;
    (*v72)(v65, v34, v10);
    v37 = *(v69 + 48);
    v38 = v10;
    v39 = v68;
    v35(&v68[v37], v36, v38);
    v40 = v67;
    v41 = *(v67 + 48);
    v42 = v33;
    v43 = v66;
    *v66 = v74;
    v43[1] = v42;
    v44 = &v39[v37];
    v10 = v38;
    v45 = v63;
    v35(v43 + v41, v44, v10);
    v46 = *(v40 + 48);
    v47 = *v43;
    v48 = v43[1];
    v49 = v43 + v46;
    v50 = v64;
    v35(v64, v49, v10);
    v35(v45, v50, v10);
    result = sub_226E92000(v47, v48);
    v51 = result;
    if (v52)
    {
      v26 = (v18[6] + 16 * result);
      v27 = v26[1];
      *v26 = v47;
      v26[1] = v48;

      result = (*(v71 + 40))(v18[7] + *(v71 + 72) * v51, v45, v10);
    }

    else
    {
      if (v18[2] >= v18[3])
      {
        goto LABEL_23;
      }

      *(v58 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v53 = (v18[6] + 16 * result);
      *v53 = v47;
      v53[1] = v48;
      result = (v35)(v18[7] + *(v71 + 72) * result, v45, v10);
      v54 = v18[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_24;
      }

      v18[2] = v56;
    }

    v25 = v28;
    v5 = v62;
    v19 = v61;
    v23 = v60;
  }

  (*v70)(v5, 1, 1, v10);
  sub_226E97D1C(v5, &qword_27D7B9690, qword_227670B50);

  return 0;
}

uint64_t RecentAPIAccessRestrictionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  RecentAPIAccessRestrictionProvider.init()();
  return v0;
}

uint64_t RecentAPIAccessRestrictionProvider.init()()
{
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_22766BFD0();
  v3 = [v1 dictionaryForKey_];

  if (!v3 || (v4 = sub_22766BEB0(), v3, v5 = sub_2275A5640(v4), , !v5))
  {
    v5 = sub_22714A6B4(MEMORY[0x277D84F90]);
  }

  *(v0 + 112) = v5;
  return v0;
}

uint64_t RecentAPIAccessRestrictionProvider.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecentAPIAccessRestrictionProvider.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t RecentAPIAccessRestrictionProvider.restriction(for:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_227662750();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = sub_22766B390();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275A5F28, v2, 0);
}

uint64_t sub_2275A5F28()
{
  v1 = v0[6];
  v2 = sub_22730F118();
  if (v3)
  {
    v4 = MEMORY[0x277D4E2D0];
LABEL_21:
    v47 = sub_227669A60();
    sub_226FF7114();
    swift_allocError();
    (*(*(v47 - 8) + 104))(v48, *v4, v47);
    v49 = v0[15];
    v51 = v0[11];
    v50 = v0[12];
    v52 = v0[10];
    swift_willThrow();

    v53 = v0[1];
    goto LABEL_27;
  }

  v5 = *&v2;
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v9 = v0[6];
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v6, v8);
  v10 = sub_227665640();
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    v14 = v0[7];
    swift_beginAccess();
    v15 = *(v14 + 112);
    if (!*(v15 + 16) || (, v16 = sub_226E92000(v13, v12), v18 = v17, , (v18 & 1) == 0))
    {

      v4 = MEMORY[0x277D4E2C0];
      goto LABEL_21;
    }

    v19 = v5;
    v21 = v0[11];
    v20 = v0[12];
    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];
    (*(v23 + 16))(v21, *(v15 + 56) + *(v23 + 72) * v16, v24);

    (*(v23 + 32))(v20, v21, v24);
    sub_227662720();
    sub_227662680();
    v26 = v25;
    v27 = *(v23 + 8);
    v27(v22, v24);
    v28 = v0[12];
    v29 = v0[8];
    if (v26 >= v19)
    {
      v54 = v0[6];
      v70 = v0[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A08, &unk_22768C040);
      v55 = sub_227665680();
      v56 = *(v55 - 8);
      v57 = *(v56 + 72);
      v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_227670CD0;
      (*(v56 + 16))(v59 + v58, v54, v55);
      v60 = sub_226F4B130(v59);
      swift_setDeallocating();
      (*(v56 + 8))(v59 + v58, v55);
      swift_deallocClassInstance();
      v27(v28, v29);
      v61 = v70;
      *v70 = v60;
      v62 = MEMORY[0x277D515F0];
      goto LABEL_25;
    }

    v30 = v0[5];
    v27(v0[12], v0[8]);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    v32 = *(*(v31 - 8) + 56);
    v33 = v30;
LABEL_19:
    v46 = 1;
    goto LABEL_26;
  }

  v34 = v0[6];
  v35 = sub_227665650();
  v36 = sub_226F4920C(v35);

  v37 = *(v36 + 16);
  if (!v37)
  {
LABEL_18:
    v45 = v0[5];

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    v32 = *(*(v31 - 8) + 56);
    v33 = v45;
    goto LABEL_19;
  }

  v38 = 32;
  while (1)
  {
    if (*(v36 + v38) == 2)
    {
      goto LABEL_10;
    }

    v39 = sub_227665A80();
    v41 = v40;
    if (v39 == sub_227665A80() && v41 == v42)
    {
      break;
    }

    v44 = sub_22766D190();

    if (v44)
    {
      goto LABEL_24;
    }

LABEL_10:
    ++v38;
    if (!--v37)
    {
      goto LABEL_18;
    }
  }

LABEL_24:

  v61 = v0[5];
  v62 = MEMORY[0x277D515F8];
LABEL_25:
  v63 = *v62;
  v64 = sub_227665360();
  (*(*(v64 - 8) + 104))(v61, v63, v64);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  v32 = *(*(v31 - 8) + 56);
  v33 = v61;
  v46 = 0;
LABEL_26:
  v32(v33, v46, 1, v31);
  v65 = v0[15];
  v66 = v0[11];
  v67 = v0[12];
  v68 = v0[10];

  v53 = v0[1];
LABEL_27:

  return v53();
}

uint64_t RecentAPIAccessRestrictionProvider.effectiveRestriction(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return RecentAPIAccessRestrictionProvider.restriction(for:)(a1, a2);
}

uint64_t sub_2275A65C4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return RecentAPIAccessRestrictionProvider.restriction(for:)(a1, a2);
}

uint64_t sub_2275A66C0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = sub_227664010();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - v10;
  sub_226E93170(v1, &v13 - v10, &qword_27D7BC9B8, &unk_227682440);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v13, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v13;
  }

  return result;
}

uint64_t sub_2275A68B0()
{
  v2 = v0;
  v3 = sub_227284754(0);
  if (v1)
  {
    return v2;
  }

  v4 = v3;
  [v3 setResultType_];
  [v4 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_227670CD0;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v6 = sub_22766C820();
  v7 = [v6 keyPath];

  v8 = sub_22766C000();
  v10 = v9;

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  v11 = sub_22766C2B0();

  [v4 setPropertiesToFetch_];

  v12 = *(v2 + 16);
  sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  v13 = sub_22766C9E0();
  v15 = sub_2273C23D0(v13);

  if (!v15)
  {
    v22 = sub_227664DD0();
    sub_226EAC144(&qword_28139B8D0, MEMORY[0x277D51040]);
    v2 = swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51018], v22);
    swift_willThrow();

    return v2;
  }

  v16 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);
  if (!v17)
  {
LABEL_11:

    if (*(v16 + 16))
    {
      v2 = *(v16 + 32);
    }

    else
    {
      v2 = 0;
    }

    return v2;
  }

  v18 = 0;
  while (v18 < *(v15 + 16))
  {
    v19 = v18 + 1;
    v20 = *(v15 + 32 + 8 * v18);

    result = sub_227462844(v21);
    v18 = v19;
    if (v17 == v19)
    {
      v16 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275A6BA0()
{
  v1 = v0[5];
  v2 = v1[17];
  if (v2 && (v3 = v1[18]) != 0 && (v4 = v1[19]) != 0)
  {
    v14 = v0[1];

    return v14(v2, v3, v4);
  }

  else
  {
    v6 = v1[15];
    v7 = v1[16];
    __swift_project_boxed_opaque_existential_0(v1 + 12, v6);
    v8 = *(v7 + 24);

    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[6] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF590, qword_22768C1D0);
    *v10 = v0;
    v10[1] = sub_2275A6D94;
    v12 = v0[5];

    return (v13)(v0 + 2, sub_2275B4798, v12, v11, v6, v7);
  }
}

uint64_t sub_2275A6D94()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2275A6ED0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2275A6EB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275A6ED0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2275A6F34@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v156 = a2;
  v151 = a3;
  v166[1] = *MEMORY[0x277D85DE8];
  v155 = sub_227664010();
  v165 = *(v155 - 8);
  v4 = *(v165 + 64);
  v5 = (MEMORY[0x28223BE20])(v155);
  v153 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (MEMORY[0x28223BE20])(v5);
  v154 = &v139 - v8;
  v9 = (MEMORY[0x28223BE20])(v7);
  v152 = &v139 - v10;
  v11 = (MEMORY[0x28223BE20])(v9);
  v157 = &v139 - v12;
  v13 = (MEMORY[0x28223BE20])(v11);
  v158 = &v139 - v14;
  v15 = (MEMORY[0x28223BE20])(v13);
  v17 = &v139 - v16;
  v18 = (MEMORY[0x28223BE20])(v15);
  v20 = &v139 - v19;
  v21 = (MEMORY[0x28223BE20])(v18);
  v23 = &v139 - v22;
  v24 = (MEMORY[0x28223BE20])(v21);
  v26 = &v139 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v139 - v27;
  v29 = sub_227663FA0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v164;
  result = sub_226EB16F8(a1);
  if (v34)
  {
    goto LABEL_15;
  }

  v163 = v29;
  v164 = v30;
  v160 = v26;
  v149 = v23;
  v146 = v28;
  v148 = v20;
  v145 = v17;
  v150 = result;
  v36 = *__swift_project_boxed_opaque_existential_0(v156 + 7, v156[10]);
  sub_226EAF48C(a1, v33);
  v37 = sub_227663E90();
  (*(v164 + 8))(v33, v163);
  v38 = sub_226F90F20(a1);
  v144 = 0;
  v142 = v38;
  v143 = a1;
  v39 = (v37 + 56);
  v40 = 1 << *(v37 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v37 + 56);
  v43 = (v40 + 63) >> 6;
  v44 = v165;
  v162 = v165 + 32;
  v163 = v165 + 16;
  v164 = v165 + 8;
  v159 = v37;

  v46 = 0;
  v47 = v155;
  v48 = v149;
  v161 = v39;
  v49 = v160;
  if (v42)
  {
    while (1)
    {
      v50 = v46;
LABEL_9:
      v51 = *(v44 + 72);
      v20 = *(v44 + 16);
      (v20)(v49, *(v159 + 48) + v51 * (__clz(__rbit64(v42)) | (v50 << 6)), v47);
      v44 = *(v44 + 32);
      (v44)(v48, v49, v47);
      sub_227664000();
      if (v52 == 300.0)
      {
        break;
      }

      v42 &= v42 - 1;
      v45 = (*v164)(v48, v47);
      v46 = v50;
      v44 = v165;
      v39 = v161;
      v49 = v160;
      if (!v42)
      {
        goto LABEL_6;
      }
    }

    v165 = v20;
    v147 = v51;
    v53 = v159;

    v20 = v146;
    (v44)(v146, v48, v47);
    sub_227664000();
    v55 = v54;
    sub_227663FF0();
    v57 = v55 + v56;
    sub_227664000();
    v58 = sub_227663FE0();
    v59 = MEMORY[0x28223BE20](v58);
    v60 = v142;
    *(&v139 - 8) = v143;
    *(&v139 - 7) = v60;
    *(&v139 - 48) = 1;
    *(&v139 - 5) = v59;
    *(&v139 - 4) = v57;
    *(&v139 - 24) = 1;
    v137 = v53;
    v39 = v144;
    v45 = sub_226FE01F8(sub_2275B47B4, (&v139 - 10), v150);
    if (v39)
    {

      (*v164)(v20, v47);
LABEL_14:

LABEL_15:
      v61 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (*(v45 + 16))
    {
      v62 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
      v63 = sub_22766D010();
      v45 = v62;
    }

    else
    {
LABEL_19:
      v63 = MEMORY[0x277D84F98];
    }

    v64 = v155;
    v149 = v44;
    v166[0] = v63;
    sub_2275B2FAC(v45, 1, v166);
    if (v39)
    {
      goto LABEL_76;
    }

    v140 = 0;
    v160 = *v164;
    v65 = v160(v20, v64);
    v144 = &v139;
    v139 = v166[0];
    MEMORY[0x28223BE20](v65);
    v66 = &v139 - 4;
    v137 = 0x4072C00000000000;
    v67 = v159;
    v68 = *(v159 + 32);
    v69 = v68 & 0x3F;
    v70 = ((1 << v68) + 63) >> 6;
    v71 = 8 * v70;

    if (v69 > 0xD)
    {
      goto LABEL_71;
    }

    while (1)
    {
      v141 = &v139;
      MEMORY[0x28223BE20](v72);
      v73 = &v139 - ((v71 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v73, v71);
      v146 = 0;
      v74 = 0;
      v75 = 1 << *(v67 + 32);
      v76 = -1;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      v77 = v76 & *(v67 + 56);
      v71 = (v75 + 63) >> 6;
      v78 = v155;
      v66 = v158;
      v79 = v161;
      while (v77)
      {
        v80 = __clz(__rbit64(v77));
        v77 &= v77 - 1;
LABEL_32:
        v83 = v80 | (v74 << 6);
        (v165)(v148, *(v67 + 48) + v83 * v147, v78);
        sub_227664000();
        v78 = v155;
        v85 = v84;
        v160(v148, v155);
        v66 = v158;
        v79 = v161;
        if (v85 != 300.0)
        {
          *&v73[(v83 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v83;
          if (__OFADD__(v146++, 1))
          {
            __break(1u);
LABEL_36:
            v148 = sub_22726C91C(v73, v70, v146, v67);
            goto LABEL_37;
          }
        }
      }

      v81 = v74;
      while (1)
      {
        v74 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v74 >= v71)
        {
          goto LABEL_36;
        }

        v82 = v79[v74];
        ++v81;
        if (v82)
        {
          v80 = __clz(__rbit64(v82));
          v77 = (v82 - 1) & v82;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_71:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v67 = v159;
    }

    v20 = swift_slowAlloc();
    v136 = v140;
    v148 = sub_2275B2F1C(v20, v70, v159, sub_2275B47CC, v66);
    v140 = v136;
    if (v136)
    {
      goto LABEL_77;
    }

    v67 = v159;

    MEMORY[0x22AA9A450](v20, -1, -1);
    v78 = v155;
    v66 = v158;
LABEL_37:
    v87 = 1 << *(v67 + 32);
    v88 = -1;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    v89 = v88 & *(v67 + 56);
    v90 = (v87 + 63) >> 6;

    v91 = 0;
    v20 = 0x4072C00000000000;
    v92 = v161;
    if (v89)
    {
      while (1)
      {
        v93 = v91;
        v94 = v157;
LABEL_45:
        (v165)(v66, *(v67 + 48) + (__clz(__rbit64(v89)) | (v93 << 6)) * v147, v78);
        v149(v94, v66, v78);
        sub_227664000();
        if (v95 == 300.0)
        {
          break;
        }

        v89 &= v89 - 1;
        v160(v94, v78);
        v91 = v93;
        v66 = v158;
        v92 = v161;
        if (!v89)
        {
          goto LABEL_41;
        }
      }

      v89 = v145;
      v149(v145, v94, v78);
      sub_227664000();
      v97 = v96;
      sub_227663FF0();
      v99 = v97 + v98;
      sub_227664000();
      v100 = sub_227663FE0();
      v101 = MEMORY[0x28223BE20](v100);
      v102 = v142;
      *(&v139 - 8) = v143;
      *(&v139 - 7) = v102;
      *(&v139 - 48) = 0;
      *(&v139 - 5) = v101;
      *(&v139 - 4) = v99;
      *(&v139 - 24) = 1;
      v137 = v148;
      v103 = v140;
      v104 = sub_226FE01F8(sub_2275B4898, (&v139 - 10), v150);
      v144 = v103;
      if (v103)
      {

        v160(v89, v78);
        goto LABEL_14;
      }

      v20 = v104;

      if (*(v20 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
        v105 = sub_22766D010();
        goto LABEL_54;
      }
    }

    else
    {
LABEL_41:
      v94 = v157;
      while (1)
      {
        v93 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          break;
        }

        if (v93 >= v90)
        {
          goto LABEL_75;
        }

        v89 = v92[v93];
        ++v91;
        if (v89)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
    }

    v105 = MEMORY[0x277D84F98];
LABEL_54:
    v106 = v155;
    v107 = v153;
    v108 = v147;
    v166[0] = v105;
    v109 = v144;
    sub_2275B2FAC(v20, 1, v166);
    if (!v109)
    {
      v160(v89, v106);
      v158 = v166[0];
      v110 = 1 << *(v67 + 32);
      v111 = -1;
      if (v110 < 64)
      {
        v111 = ~(-1 << v110);
      }

      v20 = v111 & *(v67 + 56);
      v112 = (v110 + 63) >> 6;

      for (i = 0; ; i = v116)
      {
        v115 = v154;
        if (!v20)
        {
          while (1)
          {
            v116 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v116 >= v112)
            {
              goto LABEL_75;
            }

            v20 = v161[v116];
            ++i;
            if (v20)
            {
              goto LABEL_63;
            }
          }

          __break(1u);
          goto LABEL_68;
        }

        v116 = i;
LABEL_63:
        (v165)(v154, *(v67 + 48) + (__clz(__rbit64(v20)) | (v116 << 6)) * v108, v106);
        v149(v107, v115, v106);
        sub_227664000();
        if (v117 == 300.0)
        {
          break;
        }

        v20 &= v20 - 1;
        v113 = v160(v107, v106);
      }

      v112 = v152;
      v149(v152, v107, v106);
      sub_227664000();
      v119 = v118;
      sub_227663FF0();
      v121 = v119 + v120;
      sub_227664000();
      v122 = sub_227663FE0();
      v123 = MEMORY[0x28223BE20](v122);
      v124 = v142;
      *(&v139 - 8) = v143;
      *(&v139 - 7) = v124;
      *(&v139 - 48) = 1;
      *(&v139 - 5) = v123;
      *(&v139 - 4) = v121;
      *(&v139 - 24) = 0;
      v137 = v67;
      v113 = sub_226FE01F8(sub_2275B4898, (&v139 - 10), v150);
      if (*(v113 + 16))
      {
        v125 = v113;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
        v126 = sub_22766D010();
        v113 = v125;
        goto LABEL_69;
      }

LABEL_68:
      v126 = MEMORY[0x277D84F98];
LABEL_69:
      v127 = v155;
      v128 = v156;
      v129 = v151;
      v166[0] = v126;
      sub_2275B2FAC(v113, 1, v166);

      v160(v112, v127);

      v130 = v166[0];
      v131 = v128[17];
      v132 = v139;
      v128[17] = v139;

      v133 = v128[18];
      v134 = v158;
      v128[18] = v158;

      v135 = v128[19];
      v128[19] = v130;

      *v129 = v132;
      v129[1] = v134;
      v129[2] = v130;
      goto LABEL_15;
    }

    goto LABEL_76;
  }

  while (1)
  {
LABEL_6:
    v50 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v50 >= v43)
    {
      break;
    }

    v42 = v39[v50];
    ++v46;
    if (v42)
    {
      goto LABEL_9;
    }
  }

LABEL_75:

  v138 = 0;
  v137 = 106;
  sub_22766CFB0();
  __break(1u);
LABEL_76:
  swift_unexpectedError();
  __break(1u);
LABEL_77:

  result = MEMORY[0x22AA9A450](v20, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2275A7F48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v154 = a6;
  LODWORD(v152) = a5;
  LODWORD(v151) = a4;
  v146 = a7;
  v145 = sub_227664010();
  v155 = *(v145 - 8);
  v14 = *(v155 + 64);
  v15 = MEMORY[0x28223BE20](v145);
  v150 = v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v149 = v141 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v143 = v141 - v20;
  v21 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = v21[3];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  v30 = v22;
  v31 = v23;

  sub_22766A070();
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  *(v29 + 32) = v24;
  *(v29 + 40) = v25;
  swift_getKeyPath();
  v144 = a1;
  v32 = sub_227666F70();
  v34 = v33;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v161[0] = v32;
  v161[1] = v34;
  v35 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v158 = v35;
  v36 = sub_22766C820();
  sub_226E93170(v161, v159, &unk_27D7BC990, &qword_227670A30);
  v37 = v160;
  if (v160)
  {
    v38 = __swift_project_boxed_opaque_existential_0(v159, v160);
    v39 = *(v37 - 8);
    v40 = *(v39 + 64);
    MEMORY[0x28223BE20](v38);
    v42 = v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42);
    v43 = sub_22766D170();
    (*(v39 + 8))(v42, v37);
    __swift_destroy_boxed_opaque_existential_0(v159);
  }

  else
  {
    v43 = 0;
  }

  v157 = objc_opt_self();
  v44 = [v157 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  v45 = [objc_allocWithZone(v156) initWithLeftExpression:v36 rightExpression:v44 modifier:0 type:4 options:0];

  sub_226E97D1C(v161, &unk_27D7BC990, &qword_227670A30);
  v46 = qword_2813B2078;
  swift_beginAccess();
  v47 = v45;
  v48 = sub_22766A080();
  v50 = v49;
  MEMORY[0x22AA985C0]();
  if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    sub_22766C3A0();
    (v48)(v161, 0);
    swift_endAccess();

    swift_getKeyPath();
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    v161[0] = a3;

    v51 = sub_22766C820();
    sub_226E93170(v161, v159, &unk_27D7BC990, &qword_227670A30);
    v52 = v160;
    if (v160)
    {
      v53 = __swift_project_boxed_opaque_existential_0(v159, v160);
      v54 = *(v52 - 8);
      v55 = *(v54 + 64);
      MEMORY[0x28223BE20](v53);
      v57 = v141 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v57);
      v58 = sub_22766D170();
      (*(v54 + 8))(v57, v52);
      __swift_destroy_boxed_opaque_existential_0(v159);
    }

    else
    {
      v58 = 0;
    }

    v59 = [v157 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v60 = [objc_allocWithZone(v156) initWithLeftExpression:v51 rightExpression:v59 modifier:0 type:10 options:0];

    sub_226E97D1C(v161, &unk_27D7BC990, &qword_227670A30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v61 = swift_allocObject();
    v148 = xmmword_227670B30;
    *(v61 + 16) = xmmword_227670B30;
    *(v61 + 32) = v60;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C38, qword_22768C260);
    v63 = objc_allocWithZone(v62);
    v64 = sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v65 = v60;
    v147 = v64;
    v66 = sub_22766C2B0();

    v67 = [v63 initWithType:0 subpredicates:v66];

    swift_beginAccess();
    v68 = v67;
    v69 = sub_22766A080();
    v71 = v70;
    MEMORY[0x22AA985C0]();
    if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v139 = *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v69(v161, 0);
    swift_endAccess();

    if ((v151 & 1) == 0)
    {
      v142 = v62;
      v151 = v46;
      swift_getKeyPath();
      v72 = MEMORY[0x277D839F8];
      v162 = MEMORY[0x277D839F8];
      *v161 = a8;

      v73 = sub_22766C820();
      sub_226E93170(v161, v159, &unk_27D7BC990, &qword_227670A30);
      v74 = v160;
      if (v160)
      {
        v75 = __swift_project_boxed_opaque_existential_0(v159, v160);
        v76 = *(v74 - 8);
        v77 = *(v76 + 64);
        MEMORY[0x28223BE20](v75);
        v79 = v141 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v76 + 16))(v79);
        v80 = sub_22766D170();
        (*(v76 + 8))(v79, v74);
        v72 = MEMORY[0x277D839F8];
        __swift_destroy_boxed_opaque_existential_0(v159);
      }

      else
      {
        v80 = 0;
      }

      v81 = [v157 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v82 = [objc_allocWithZone(v156) initWithLeftExpression:v73 rightExpression:v81 modifier:0 type:3 options:0];

      sub_226E97D1C(v161, &unk_27D7BC990, &qword_227670A30);
      swift_getKeyPath();
      v162 = v72;
      *v161 = a9;

      v83 = sub_22766C820();
      sub_226E93170(v161, v159, &unk_27D7BC990, &qword_227670A30);
      v84 = v160;
      v141[1] = v29;
      if (v160)
      {
        v85 = __swift_project_boxed_opaque_existential_0(v159, v160);
        v86 = *(v84 - 8);
        v87 = *(v86 + 64);
        MEMORY[0x28223BE20](v85);
        v89 = v141 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v86 + 16))(v89);
        v90 = sub_22766D170();
        (*(v86 + 8))(v89, v84);
        __swift_destroy_boxed_opaque_existential_0(v159);
      }

      else
      {
        v90 = 0;
      }

      v91 = [v157 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v92 = [objc_allocWithZone(v156) initWithLeftExpression:v83 rightExpression:v91 modifier:0 type:1 options:0];

      sub_226E97D1C(v161, &unk_27D7BC990, &qword_227670A30);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_2276756A0;
      *(v93 + 32) = v82;
      *(v93 + 40) = v92;
      v94 = v142;
      v95 = objc_allocWithZone(v142);
      v96 = v82;
      v97 = v92;
      v98 = sub_22766C2B0();

      v99 = [v95 initWithType:1 subpredicates:v98];

      v100 = swift_allocObject();
      *(v100 + 16) = v148;
      *(v100 + 32) = v99;
      v101 = objc_allocWithZone(v94);
      v102 = v99;
      v103 = sub_22766C2B0();

      v104 = [v101 initWithType:0 subpredicates:v103];

      swift_beginAccess();
      v105 = v104;
      v106 = sub_22766A080();
      v108 = v107;
      MEMORY[0x22AA985C0]();
      if (*((*v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v140 = *((*v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v106(v161, 0);
      swift_endAccess();
    }

    swift_getKeyPath();
    v47 = sub_227397EAC();

    swift_getKeyPath();

    v109 = v153;
    v110 = COERCE_DOUBLE(sub_2275A68B0());
    v112 = v111;
    v48 = v109;

    if (v109)
    {
    }

    if (v112)
    {

      v114 = 0;
      v115 = 0;
      v116 = 0;
      v117 = 255;
      goto LABEL_40;
    }

    v152 = v47;
    v153 = 0;
    a8 = v110;
    a3 = v154 + 56;
    v118 = 1 << *(v154 + 32);
    v119 = -1;
    if (v118 < 64)
    {
      v119 = ~(-1 << v118);
    }

    v29 = v119 & *(v154 + 56);
    v120 = (v118 + 63) >> 6;
    v157 = (v155 + 16);
    v158 = v155 + 32;
    v156 = (v155 + 8);

    v121 = 0;
    v46 = v145;
    if (v29)
    {
      break;
    }

LABEL_28:
    while (1)
    {
      v122 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        break;
      }

      if (v122 >= v120)
      {

        v138 = 1;
        v137 = v143;
        goto LABEL_39;
      }

      v29 = *(a3 + 8 * v122);
      ++v121;
      if (v29)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_42:
    sub_22766C360();
  }

  while (1)
  {
    v122 = v121;
LABEL_31:
    v48 = v155;
    v47 = v149;
    (*(v155 + 16))(v149, *(v154 + 48) + *(v155 + 72) * (__clz(__rbit64(v29)) | (v122 << 6)), v46);
    v123 = *(v48 + 32);
    v124 = v150;
    v123(v150, v47, v46);
    sub_227664000();
    v126 = v125;
    sub_227663FF0();
    v128 = v126 + v127;
    sub_227664000();
    a9 = v129;
    sub_227663FE0();
    if (a9 - v130 <= a8 && v128 >= a8)
    {
      break;
    }

    v29 &= v29 - 1;
    (*v156)(v124, v46);
    v121 = v122;
    if (!v29)
    {
      goto LABEL_28;
    }
  }

  v137 = v143;
  v123(v143, v124, v46);
  v138 = 0;
LABEL_39:
  v132 = (*(v155 + 56))(v137, v138, 1, v46);
  MEMORY[0x28223BE20](v132);
  v141[-2] = v144;
  v114 = sub_2275A66C0(sub_2275B4838);
  v115 = v133;
  v117 = v134;
  v116 = v135;

  result = sub_226E97D1C(v137, &qword_27D7BC9B8, &unk_227682440);
LABEL_40:
  v136 = v146;
  *v146 = v114;
  v136[1] = v115;
  v136[2] = v117;
  v136[3] = v116;
  return result;
}

uint64_t sub_2275A8F38(uint64_t a1, char a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_2275A8FD0;

  return sub_2275A6B80();
}

uint64_t sub_2275A8FD0(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 24);
  v5 = *v3;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275A9114, 0, 0);
  }
}

uint64_t sub_2275A9114()
{
  v2 = (v0 + 40);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  if (*(v0 + 56) == 1)
  {
    v6 = *(v0 + 32);
  }

  else
  {
    v7 = *(v0 + 40);

    v1 = v4;
    v2 = (v0 + 32);
  }

  v8 = sub_2275B3674(v1, v5);
  v9 = *v2;
  v10 = *(v0 + 57);
  v11 = *(v0 + 16);

  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_24;
    }

    v13 = COERCE_DOUBLE(sub_2274CFEB4(v8));
    v15 = v14;

    if (v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v13;
    }

    if ((v15 & 1) == 0 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v16 <= -9.22337204e18)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v16 < 9.22337204e18)
    {
LABEL_38:
      v28 = *(v0 + 8);

      return v28(v16);
    }

    __break(1u);
  }

  v17 = COERCE_DOUBLE(sub_2274CFDA4(v8));
  v19 = v18;

  if (v19)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v17;
  }

  if ((v19 & 1) == 0 && (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    goto LABEL_43;
  }

  if (v16 <= -9.22337204e18)
  {
    goto LABEL_45;
  }

  if (v16 < 9.22337204e18)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_24:
  v21 = 0;
  v22 = -1 << *(v8 + 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v8 + 64);
  v25 = (63 - v22) >> 6;
  v16 = 0.0;
  if (v24)
  {
    while (1)
    {
      v26 = v21;
LABEL_33:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v16 = v16 + *(*(v8 + 56) + ((v26 << 9) | (8 * v27)));
      if (!v24)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
LABEL_29:
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v26 >= v25)
    {
      break;
    }

    v24 = *(v8 + 64 + 8 * v26);
    ++v21;
    if (v24)
    {
      v21 = v26;
      goto LABEL_33;
    }
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_46;
  }

  if (v16 > -9.22337204e18)
  {
    if (v16 >= 9.22337204e18)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_2275A93D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_2275A9464;

  return sub_2275A6B80();
}

uint64_t sub_2275A9464(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9(0);
  }

  else
  {

    *(v6 + 64) = a2;
    *(v6 + 72) = a1;

    return MEMORY[0x2822009F8](sub_2275A95D4, 0, 0);
  }
}

uint64_t sub_2275A95D4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);

  v5 = sub_2275B3674(v2, v4);

  v6 = sub_2274CFEB4(v5);
  LOBYTE(v4) = v7;

  *(v0 + 80) = v6;
  *(v0 + 200) = v4;
  v9 = *&v6;
  if (v4)
  {
    v9 = 0.0;
    v10 = 0;
  }

  else
  {
    v10 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_2275A9720;
  v12 = *(v0 + 40);

  return sub_2275A6B80();
}

uint64_t sub_2275A9720(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9(0);
  }

  else
  {

    *(v6 + 104) = a2;
    *(v6 + 112) = a1;

    return MEMORY[0x2822009F8](sub_2275A9890, 0, 0);
  }
}

uint64_t sub_2275A9890()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 16);

  v5 = sub_2275B3674(v2, v4);

  v6 = sub_2274CFDA4(v5);
  LOBYTE(v4) = v7;

  *(v0 + 120) = v6;
  *(v0 + 201) = v4;
  v9 = *&v6;
  if (v4)
  {
    v9 = 0.0;
    v10 = 0;
  }

  else
  {
    v10 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_2275A99DC;
  v12 = *(v0 + 40);

  return sub_2275A6B80();
}

uint64_t sub_2275A99DC(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 128);
  v5 = *v3;
  v5[17] = a1;
  v5[18] = a2;
  v5[19] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275A9B24, 0, 0);
  }
}

uint64_t sub_2275A9B24()
{
  v1 = *(v0 + 144);
  v3 = (v0 + 136);
  v2 = *(v0 + 136);
  v4 = *(v0 + 152);
  v5 = *(v0 + 24);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 200) & 1) != 0 || *(v0 + 80) < 6)
  {
    v7 = *(v0 + 144);
  }

  else
  {
    v6 = *(v0 + 136);

    v2 = v1;
    v3 = (v0 + 144);
  }

  v8 = sub_2275B3674(v2, v5);
  v9 = *v3;
  v10 = *(v0 + 24);

  v11 = sub_2274CFEB4(v8);
  v13 = v12;

  *(v0 + 160) = v11;
  *(v0 + 202) = v13;
  v15 = *&v11;
  if (v13)
  {
    v15 = 0.0;
    v16 = 0;
  }

  else
  {
    v16 = (v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v16)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = sub_2275A9CE0;
  v18 = *(v0 + 40);

  return sub_2275A6B80();
}

uint64_t sub_2275A9CE0(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 168);
  v5 = *v3;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275A9E28, 0, 0);
  }
}

uint64_t sub_2275A9E28()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = (v0 + 176);
  v3 = *(v0 + 176);
  v5 = *(v0 + 24);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 200) & 1) != 0 || *(v0 + 80) < 6)
  {
    v7 = *(v0 + 184);
  }

  else
  {
    v6 = *(v0 + 176);

    v3 = v2;
    v4 = (v0 + 184);
  }

  v8 = sub_2275B3674(v3, v5);
  v9 = *v4;
  v10 = *(v0 + 24);

  v11 = sub_2274CFDA4(v8);
  v13 = v12;

  v15 = *&v11;
  if (v13)
  {
    v15 = 0.0;
    v16 = 0;
  }

  else
  {
    v16 = (v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v16)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  if (*(v0 + 202))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v0 + 160);
  }

  if (*(v0 + 201))
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v0 + 120);
  }

  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    goto LABEL_34;
  }

  v21 = *(v0 + 80);
  if (*(v0 + 200))
  {
    v21 = 0;
  }

  v19 = __OFADD__(v15, v21);
  v22 = v15 + v21;
  if (v19)
  {
    goto LABEL_35;
  }

  v23 = *(v0 + 32);
  v25 = v20 > v23 || v22 > v23;
  v26 = *(v0 + 8);

  return v26(v25);
}

uint64_t sub_2275AA00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF588, &unk_22768C1B8);
  v6[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275AA120, 0, 0);
}

uint64_t sub_2275AA120()
{
  v1 = *(v0 + 24);
  *(v0 + 1208) = 8;
  sub_226F480FC();
  sub_226EC1E18();
  v2 = sub_22766C600();
  *(v0 + 1209) = 0;
  v3 = sub_22766C600();
  *(v0 + 1210) = 13;
  v4 = sub_22766C600();
  v5 = *(v1 + 16);
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        if (v5 == 3)
        {
          v6 = swift_task_alloc();
          *(v0 + 152) = v6;
          *v6 = v0;
          v7 = sub_2275AAA5C;
LABEL_19:
          v6[1] = v7;
          v22 = *(v0 + 56);
          v23 = *(v0 + 24);

          return sub_2275A8F38(v23, 0, 2);
        }

        if (v5 >= 4)
        {
          v31 = *(v0 + 48);
          v32 = *(v0 + 24);
          if (*(v31 + 16) <= v5 >> 3)
          {
            v67 = *(v0 + 24);

            sub_2270062A8(v31);
            v34 = v67;
          }

          else
          {
            v33 = *(v0 + 24);

            v34 = sub_227009F28(v31, v32);
          }

          *(v0 + 168) = v34;
          v51 = swift_task_alloc();
          *(v0 + 176) = v51;
          *v51 = v0;
          v51[1] = sub_2275AAE2C;
          v52 = *(v0 + 48);
          v53 = *(v0 + 56);
          v54 = *(v0 + 32);
          v55 = v34;
          goto LABEL_55;
        }

        goto LABEL_13;
      }

      if (v5 == 2)
      {
        v6 = swift_task_alloc();
        *(v0 + 320) = v6;
        *v6 = v0;
        v7 = sub_2275ABFD8;
        goto LABEL_19;
      }

      if (v5 >= 3)
      {
        if (*(v0 + 40) <= 1)
        {
          v59 = *(v0 + 16);
          v60 = *MEMORY[0x277D511F0];
          v61 = sub_227664EC0();
          v62 = *(v61 - 8);
          (*(v62 + 104))(v59, v60, v61);
          (*(v62 + 56))(v59, 0, 1, v61);
          v64 = 0;
          goto LABEL_14;
        }

        v45 = *(v0 + 48);
        v46 = *(v0 + 24);
        if (*(v45 + 16) <= v5 >> 3)
        {
          v70 = *(v0 + 24);

          sub_2270062A8(v45);
          v27 = v70;
        }

        else
        {
          v47 = *(v0 + 24);

          v27 = sub_227009F28(v45, v46);
        }

        *(v0 + 336) = v27;
        v48 = sub_226F4D188(&unk_283A93CC0);
        *(v0 + 344) = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        swift_arrayDestroy();
        v49 = swift_task_alloc();
        *(v0 + 352) = v49;
        *v49 = v0;
        v50 = sub_2275AC3A8;
LABEL_54:
        v49[1] = v50;
        v63 = *(v0 + 56);
        v54 = *(v0 + 32);
        v55 = v27;
        v52 = v48;
LABEL_55:

        return sub_2275A93D0(v55, v52, v54);
      }
    }

    else if (v4)
    {
      if (v5 == 2)
      {
        v6 = swift_task_alloc();
        *(v0 + 504) = v6;
        *v6 = v0;
        v7 = sub_2275AD62C;
        goto LABEL_19;
      }

      if (v5 >= 3)
      {
        v38 = *(v0 + 48);
        v39 = sub_226F4D188(&unk_283A93D10);
        *(v0 + 520) = v39;
        sub_226E97D1C(&unk_283A93D30, &qword_27D7B8560, &unk_227671560);
        v40 = *(v1 + 16);
        v41 = *(v0 + 48);
        v42 = *(v0 + 24);
        if (*(v38 + 16) <= v40 >> 3)
        {
          v69 = *(v0 + 24);

          sub_2270062A8(v41);
          v44 = v69;
        }

        else
        {
          v43 = *(v0 + 24);

          v44 = sub_227009F28(v41, v42);
        }

        v56 = sub_22742F60C(&unk_283A93D48, v44);
        *(v0 + 528) = v56;
        sub_226E97D1C(&unk_283A93D68, &qword_27D7B8560, &unk_227671560);
        v57 = swift_task_alloc();
        *(v0 + 536) = v57;
        *v57 = v0;
        v57[1] = sub_2275AD9FC;
        v58 = *(v0 + 56);
        v54 = *(v0 + 32);
        v55 = v56;
        v52 = v39;
        goto LABEL_55;
      }
    }

    else if (v5 >= 2)
    {
      v28 = *(v0 + 48);
      v29 = *(v0 + 24);
      if (*(v28 + 16) <= v5 >> 3)
      {
        v66 = *(v0 + 24);

        sub_2270062A8(v28);
        v27 = v66;
      }

      else
      {
        v30 = *(v0 + 24);

        v27 = sub_227009F28(v28, v29);
      }

      *(v0 + 688) = v27;
      v48 = sub_226F4D188(&unk_283A93D80);
      *(v0 + 696) = v48;
      sub_226E97D1C(&unk_283A93DA0, &qword_27D7B8560, &unk_227671560);
      v49 = swift_task_alloc();
      *(v0 + 704) = v49;
      *v49 = v0;
      v50 = sub_2275AEC94;
      goto LABEL_54;
    }
  }

  else if (v3)
  {
    if (v4)
    {
      if (v5 == 2)
      {
        v6 = swift_task_alloc();
        *(v0 + 856) = v6;
        *v6 = v0;
        v7 = sub_2275AFF2C;
        goto LABEL_19;
      }

      if (v5 >= 3)
      {
        v35 = *(v0 + 48);
        v36 = *(v0 + 24);
        if (*(v35 + 16) <= v5 >> 3)
        {
          v68 = *(v0 + 24);

          sub_2270062A8(v35);
          v27 = v68;
        }

        else
        {
          v37 = *(v0 + 24);

          v27 = sub_227009F28(v35, v36);
        }

        *(v0 + 872) = v27;
        v48 = sub_226F4D188(&unk_283A93DB8);
        *(v0 + 880) = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        swift_arrayDestroy();
        v49 = swift_task_alloc();
        *(v0 + 888) = v49;
        *v49 = v0;
        v50 = sub_2275B02FC;
        goto LABEL_54;
      }
    }

    else if (v5 >= 2)
    {
      v24 = *(v0 + 48);
      v25 = *(v0 + 24);
      if (*(v24 + 16) <= v5 >> 3)
      {
        v65 = *(v0 + 24);

        sub_2270062A8(v24);
        v27 = v65;
      }

      else
      {
        v26 = *(v0 + 24);

        v27 = sub_227009F28(v24, v25);
      }

      *(v0 + 1040) = v27;
      v48 = sub_226F4D188(&unk_283A93E08);
      *(v0 + 1048) = v48;
      sub_226E97D1C(&unk_283A93E28, &qword_27D7B8560, &unk_227671560);
      v49 = swift_task_alloc();
      *(v0 + 1056) = v49;
      *v49 = v0;
      v50 = sub_2275B1594;
      goto LABEL_54;
    }
  }

LABEL_13:
  v8 = *(v0 + 16);
  v9 = sub_227664EC0();
  v64 = 1;
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_14:
  v11 = *(v0 + 136);
  v10 = *(v0 + 144);
  v13 = *(v0 + 120);
  v12 = *(v0 + 128);
  v15 = *(v0 + 104);
  v14 = *(v0 + 112);
  v17 = *(v0 + 88);
  v16 = *(v0 + 96);
  v18 = *(v0 + 72);
  v19 = *(v0 + 80);

  v20 = *(v0 + 8);

  return v20(v64);
}

uint64_t sub_2275AAA5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[17];
    v7 = v4[18];
    v10 = v4[15];
    v9 = v4[16];
    v12 = v4[13];
    v11 = v4[14];
    v14 = v4[11];
    v13 = v4[12];
    v17 = v4 + 9;
    v15 = v4[9];
    v16 = v17[1];

    v18 = *(v6 + 8);

    return v18(0);
  }

  else
  {
    v4[20] = a1;

    return MEMORY[0x2822009F8](sub_2275AAC30, 0, 0);
  }
}

uint64_t sub_2275AAC30()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v3 + 48);
  if (v1 > v4)
  {
    v10 = *MEMORY[0x277D511F8];
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2 + v5, v10, v6);
    v8 = 0;
    v9 = v0[18];
    v3 = v0[8];
  }

  else
  {
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    v8 = 1;
    v9 = v2;
  }

  v24 = v1 <= v4;
  v11 = v0[2];
  (*(v7 + 56))(v2 + v5, v8, 1, v6);
  sub_2275B4728(v9 + *(v3 + 48), v11);
  v13 = v0[17];
  v12 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[9];
  v21 = v0[10];

  v22 = v0[1];

  return v22(v24);
}

uint64_t sub_2275AAE2C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_2275B2824;
  }

  else
  {
    v8 = *(v4 + 168);

    *(v4 + 1211) = a1 & 1;
    v7 = sub_2275AAF60;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2275AAF60()
{
  if (*(v0 + 1211) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *MEMORY[0x277D511F8];
    v3 = sub_227664EC0();
    v4 = *(v3 - 8);
    (*(v4 + 104))(v1, v2, v3);
    (*(v4 + 56))(v1, 0, 1, v3);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);

    v15 = *(v0 + 8);

    v15(0);
  }

  else
  {
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    *(v0 + 192) = v17 * v16;
    if ((v17 * v16) >> 64 == (v17 * v16) >> 63)
    {
      v18 = *(v0 + 48);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = *(v0 + 24);
        if (v19 <= *(v20 + 16) >> 3)
        {
          v28 = *(v0 + 24);

          sub_2270062A8(v18);
          v22 = v28;
        }

        else
        {
          v21 = *(v0 + 24);

          v22 = sub_227009F28(v18, v20);
        }

        *(v0 + 216) = v22;
        v26 = swift_task_alloc();
        *(v0 + 224) = v26;
        *v26 = v0;
        v26[1] = sub_2275AB630;
        v27 = *(v0 + 56);

        sub_2275A6B80();
      }

      else
      {
        v23 = swift_task_alloc();
        *(v0 + 200) = v23;
        *v23 = v0;
        v23[1] = sub_2275AB258;
        v24 = *(v0 + 56);
        v25 = *(v0 + 24);

        sub_2275A8F38(v25, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275AB258(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[17];
    v7 = v4[18];
    v10 = v4[15];
    v9 = v4[16];
    v12 = v4[13];
    v11 = v4[14];
    v14 = v4[11];
    v13 = v4[12];
    v17 = v4 + 9;
    v15 = v4[9];
    v16 = v17[1];

    v18 = *(v6 + 8);

    return v18(0);
  }

  else
  {
    v4[26] = a1;

    return MEMORY[0x2822009F8](sub_2275AB42C, 0, 0);
  }
}

uint64_t sub_2275AB42C()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[24] >= v0[26])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[17];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v22 = v0[24] >= v0[26];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];
  v19 = v0[10];

  v20 = v0[1];

  return v20(v22);
}

uint64_t sub_2275AB630(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 224);
  v8 = *v3;
  *(*v3 + 232) = v2;

  if (v2)
  {
    v9 = sub_2275AB770;
  }

  else
  {

    *(v6 + 240) = a2;
    *(v6 + 248) = a1;
    v9 = sub_2275AB860;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2275AB770()
{
  v1 = v0[27];

  v14 = v0[29];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275AB860()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);

  v5 = sub_2275B3674(v2, v4);

  v6 = sub_2274CFEB4(v5);
  v8 = v7;

  *(v0 + 256) = v6;
  *(v0 + 1212) = v8;
  v10 = *&v6;
  if (v8)
  {
    v10 = 0.0;
    v11 = 0;
  }

  else
  {
    v11 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = swift_task_alloc();
  *(v0 + 264) = v12;
  *v12 = v0;
  v12[1] = sub_2275AB9BC;
  v13 = *(v0 + 56);

  return sub_2275A6B80();
}

uint64_t sub_2275AB9BC(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 264);
  v5 = *v3;
  v5[34] = a1;
  v5[35] = a2;
  v5[36] = v2;

  if (v2)
  {
    v7 = v5[17];
    v6 = v5[18];
    v9 = v5[15];
    v8 = v5[16];
    v11 = v5[13];
    v10 = v5[14];
    v13 = v5[11];
    v12 = v5[12];
    v14 = v5[9];
    v17 = v5[10];

    v15 = v5[1];

    return v15(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275ABB98, 0, 0);
  }
}

uint64_t sub_2275ABB98()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = *(v0 + 48);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1212) & 1) != 0 || *(v0 + 256) < 6)
  {
    v5 = (v0 + 272);
    v7 = *(v0 + 280);
  }

  else
  {
    v5 = (v0 + 280);
    v6 = *(v0 + 272);

    v3 = v2;
  }

  v8 = sub_2275B3674(v3, v4);
  v9 = *v5;
  v10 = *(v0 + 48);

  v11 = sub_2274CFEB4(v8);
  v13 = v12;

  *(v0 + 296) = v11;
  *(v0 + 1213) = v13;
  v15 = *&v11;
  if (v13)
  {
    v15 = 0.0;
  }

  else if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = *(v0 + 1212);
  v17 = *(v0 + 256);
  v18 = *(v0 + 32);
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *v19 = v0;
  v19[1] = sub_2275ABD9C;
  v20 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v18 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v16;
  if (v17 > 5)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 56);
  v23 = *(v0 + 24);

  return sub_2275A8F38(v23, v21, 2);
}

uint64_t sub_2275ABD9C(uint64_t a1)
{
  v3 = *(*v2 + 304);
  v4 = *v2;
  v4[39] = a1;

  if (v1)
  {
    v6 = v4[17];
    v5 = v4[18];
    v8 = v4[15];
    v7 = v4[16];
    v10 = v4[13];
    v9 = v4[14];
    v12 = v4[11];
    v11 = v4[12];
    v13 = v4[9];
    v14 = v4[10];

    v15 = v4[1];

    return v15(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275ABF6C, 0, 0);
  }
}

uint64_t sub_2275ABF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(*(v3 + 48) + 16);
  v6 = v4 <= v5;
  v7 = v4 - v5;
  if (v6)
  {
    goto LABEL_7;
  }

  if (*(v3 + 1213))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v3 + 296);
  }

  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    __break(1u);
LABEL_7:
    v9 = 0;
  }

  v10 = *(v3 + 312);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    *(v3 + 208) = v12;
    return MEMORY[0x2822009F8](sub_2275AB42C, 0, 0);
  }
}

uint64_t sub_2275ABFD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[17];
    v7 = v4[18];
    v10 = v4[15];
    v9 = v4[16];
    v12 = v4[13];
    v11 = v4[14];
    v14 = v4[11];
    v13 = v4[12];
    v17 = v4 + 9;
    v15 = v4[9];
    v16 = v17[1];

    v18 = *(v6 + 8);

    return v18(0);
  }

  else
  {
    v4[41] = a1;

    return MEMORY[0x2822009F8](sub_2275AC1AC, 0, 0);
  }
}

uint64_t sub_2275AC1AC()
{
  v1 = v0[41];
  v2 = v0[16];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v3 + 48);
  if (v1 > v4)
  {
    v10 = *MEMORY[0x277D511F8];
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2 + v5, v10, v6);
    v8 = 0;
    v9 = v0[16];
    v3 = v0[8];
  }

  else
  {
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    v8 = 1;
    v9 = v2;
  }

  v24 = v1 <= v4;
  v11 = v0[2];
  (*(v7 + 56))(v2 + v5, v8, 1, v6);
  sub_2275B4728(v9 + *(v3 + 48), v11);
  v13 = v0[17];
  v12 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[9];
  v21 = v0[10];

  v22 = v0[1];

  return v22(v24);
}

uint64_t sub_2275AC3A8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v7 = sub_2275B2914;
  }

  else
  {
    v8 = *(v4 + 336);

    *(v4 + 1214) = a1 & 1;
    v7 = sub_2275AC4DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2275AC4DC()
{
  if (*(v0 + 1214) == 1)
  {
    v1 = *(v0 + 344);
    v2 = *(v0 + 16);

    v3 = *MEMORY[0x277D511F8];
    v4 = sub_227664EC0();
    v5 = *(v4 - 8);
    (*(v5 + 104))(v2, v3, v4);
    (*(v5 + 56))(v2, 0, 1, v4);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    v16 = *(v0 + 8);

    v16(0);
  }

  else
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    *(v0 + 368) = v18 * v17;
    if ((v18 * v17) >> 64 == (v18 * v17) >> 63)
    {
      v19 = *(v0 + 344);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v0 + 24);
        if (v20 <= *(v21 + 16) >> 3)
        {
          v29 = *(v0 + 24);

          sub_2270062A8(v19);
          v23 = v29;
        }

        else
        {
          v22 = *(v0 + 24);

          v23 = sub_227009F28(v19, v21);
        }

        *(v0 + 392) = v23;
        v27 = swift_task_alloc();
        *(v0 + 400) = v27;
        *v27 = v0;
        v27[1] = sub_2275ACBB8;
        v28 = *(v0 + 56);

        sub_2275A6B80();
      }

      else
      {
        v24 = swift_task_alloc();
        *(v0 + 376) = v24;
        *v24 = v0;
        v24[1] = sub_2275AC7C4;
        v25 = *(v0 + 56);
        v26 = *(v0 + 24);

        sub_2275A8F38(v26, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275AC7C4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 376);
  v7 = *v2;

  v8 = v4[43];

  if (v1)
  {
    v10 = v5[17];
    v9 = v5[18];
    v12 = v5[15];
    v11 = v5[16];
    v14 = v5[13];
    v13 = v5[14];
    v16 = v5[11];
    v15 = v5[12];
    v19 = v5 + 9;
    v17 = v5[9];
    v18 = v19[1];

    v20 = *(v7 + 8);

    return v20(0);
  }

  else
  {
    v5[48] = a1;

    return MEMORY[0x2822009F8](sub_2275AC9B4, 0, 0);
  }
}

uint64_t sub_2275AC9B4()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[46] >= v0[48])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[15];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v22 = v0[46] >= v0[48];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];
  v19 = v0[10];

  v20 = v0[1];

  return v20(v22);
}

uint64_t sub_2275ACBB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 400);
  v8 = *v3;
  *(*v3 + 408) = v2;

  if (v2)
  {
    v9 = sub_2275ACCF8;
  }

  else
  {

    *(v6 + 416) = a2;
    *(v6 + 424) = a1;
    v9 = sub_2275ACDF4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2275ACCF8()
{
  v1 = v0[49];
  v2 = v0[43];

  v15 = v0[51];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275ACDF4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v3 = *(v0 + 408);
  v4 = *(v0 + 392);

  v5 = sub_2275B3674(v2, v4);

  v6 = sub_2274CFEB4(v5);
  v8 = v7;

  *(v0 + 432) = v6;
  *(v0 + 1215) = v8;
  v10 = *&v6;
  if (v8)
  {
    v10 = 0.0;
    v11 = 0;
  }

  else
  {
    v11 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = swift_task_alloc();
  *(v0 + 440) = v12;
  *v12 = v0;
  v12[1] = sub_2275ACF50;
  v13 = *(v0 + 56);

  return sub_2275A6B80();
}

uint64_t sub_2275ACF50(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 440);
  v8 = *v3;
  v4[56] = a1;
  v4[57] = a2;
  v4[58] = v2;

  if (v2)
  {
    v6 = sub_2275AD278;
  }

  else
  {

    v6 = sub_2275AD074;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2275AD074()
{
  v2 = *(v0 + 456);
  v1 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 344);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1215) & 1) != 0 || *(v0 + 432) < 6)
  {
    v5 = (v0 + 448);
    v7 = *(v0 + 456);
  }

  else
  {
    v5 = (v0 + 456);
    v6 = *(v0 + 448);

    v3 = v2;
  }

  v8 = sub_2275B3674(v3, v4);
  v9 = *v5;
  v10 = *(v0 + 344);

  v11 = sub_2274CFEB4(v8);
  v13 = v12;

  *(v0 + 472) = v11;
  *(v0 + 1216) = v13;
  v15 = *&v11;
  if (v13)
  {
    v15 = 0.0;
  }

  else if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = *(v0 + 1215);
  v17 = *(v0 + 432);
  v18 = *(v0 + 32);
  v19 = swift_task_alloc();
  *(v0 + 480) = v19;
  *v19 = v0;
  v19[1] = sub_2275AD368;
  v20 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v18 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v16;
  if (v17 > 5)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 56);
  v23 = *(v0 + 24);

  return sub_2275A8F38(v23, v21, 2);
}

uint64_t sub_2275AD278()
{
  v1 = v0[43];

  v14 = v0[58];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275AD368(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v7 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v5 = sub_2275AD53C;
  }

  else
  {
    v5 = sub_2275AD47C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275AD47C()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 344) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 472);
  if (*(v0 + 1216))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 488);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 384) = v11;
    v3 = sub_2275AC9B4;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275AD53C()
{
  v1 = v0[43];

  v14 = v0[62];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275AD62C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[17];
    v7 = v4[18];
    v10 = v4[15];
    v9 = v4[16];
    v12 = v4[13];
    v11 = v4[14];
    v14 = v4[11];
    v13 = v4[12];
    v17 = v4 + 9;
    v15 = v4[9];
    v16 = v17[1];

    v18 = *(v6 + 8);

    return v18(0);
  }

  else
  {
    v4[64] = a1;

    return MEMORY[0x2822009F8](sub_2275AD800, 0, 0);
  }
}

uint64_t sub_2275AD800()
{
  v1 = v0[64];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v3 + 48);
  if (v1 > v4)
  {
    v10 = *MEMORY[0x277D511F8];
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2 + v5, v10, v6);
    v8 = 0;
    v9 = v0[14];
    v3 = v0[8];
  }

  else
  {
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    v8 = 1;
    v9 = v2;
  }

  v24 = v1 <= v4;
  v11 = v0[2];
  (*(v7 + 56))(v2 + v5, v8, 1, v6);
  sub_2275B4728(v9 + *(v3 + 48), v11);
  v13 = v0[17];
  v12 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[9];
  v21 = v0[10];

  v22 = v0[1];

  return v22(v24);
}

uint64_t sub_2275AD9FC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v7 = sub_2275B2A0C;
  }

  else
  {
    v8 = *(v4 + 528);

    *(v4 + 1217) = a1 & 1;
    v7 = sub_2275ADB30;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2275ADB30()
{
  if (*(v0 + 1217) == 1)
  {
    v1 = *(v0 + 520);
    v2 = *(v0 + 16);

    v3 = *MEMORY[0x277D511F8];
    v4 = sub_227664EC0();
    v5 = *(v4 - 8);
    (*(v5 + 104))(v2, v3, v4);
    (*(v5 + 56))(v2, 0, 1, v4);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    v16 = *(v0 + 8);

    v16(0);
  }

  else
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    *(v0 + 552) = v18 * v17;
    if ((v18 * v17) >> 64 == (v18 * v17) >> 63)
    {
      v19 = *(v0 + 520);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v0 + 24);
        if (v20 <= *(v21 + 16) >> 3)
        {
          v29 = *(v0 + 24);

          sub_2270062A8(v19);
          v23 = v29;
        }

        else
        {
          v22 = *(v0 + 24);

          v23 = sub_227009F28(v19, v21);
        }

        *(v0 + 576) = v23;
        v27 = swift_task_alloc();
        *(v0 + 584) = v27;
        *v27 = v0;
        v27[1] = sub_2275AE20C;
        v28 = *(v0 + 56);

        sub_2275A6B80();
      }

      else
      {
        v24 = swift_task_alloc();
        *(v0 + 560) = v24;
        *v24 = v0;
        v24[1] = sub_2275ADE18;
        v25 = *(v0 + 56);
        v26 = *(v0 + 24);

        sub_2275A8F38(v26, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275ADE18(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 560);
  v7 = *v2;

  v8 = v4[65];

  if (v1)
  {
    v10 = v5[17];
    v9 = v5[18];
    v12 = v5[15];
    v11 = v5[16];
    v14 = v5[13];
    v13 = v5[14];
    v16 = v5[11];
    v15 = v5[12];
    v19 = v5 + 9;
    v17 = v5[9];
    v18 = v19[1];

    v20 = *(v7 + 8);

    return v20(0);
  }

  else
  {
    v5[71] = a1;

    return MEMORY[0x2822009F8](sub_2275AE008, 0, 0);
  }
}

uint64_t sub_2275AE008()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[69] >= v0[71])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[13];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v22 = v0[69] >= v0[71];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];
  v19 = v0[10];

  v20 = v0[1];

  return v20(v22);
}

uint64_t sub_2275AE20C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 584);
  v8 = *v3;
  *(*v3 + 592) = v2;

  if (v2)
  {
    v9 = sub_2275AE350;
  }

  else
  {

    *(v6 + 600) = a2;
    *(v6 + 608) = a1;
    v9 = sub_2275AE44C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2275AE350()
{
  v1 = v0[72];
  v2 = v0[65];

  v15 = v0[74];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275AE44C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 576);

  v5 = sub_2275B3674(v1, v4);

  v6 = sub_2274CFEB4(v5);
  v8 = v7;

  *(v0 + 616) = v6;
  *(v0 + 1218) = v8;
  v10 = *&v6;
  if (v8)
  {
    v10 = 0.0;
    v11 = 0;
  }

  else
  {
    v11 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = swift_task_alloc();
  *(v0 + 624) = v12;
  *v12 = v0;
  v12[1] = sub_2275AE5AC;
  v13 = *(v0 + 56);

  return sub_2275A6B80();
}

uint64_t sub_2275AE5AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 624);
  v8 = *v3;
  v4[79] = a1;
  v4[80] = a2;
  v4[81] = v2;

  if (v2)
  {
    v6 = sub_2275AE8DC;
  }

  else
  {

    v6 = sub_2275AE6D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2275AE6D4()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = *(v0 + 632);
  v4 = *(v0 + 520);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1218) & 1) != 0 || *(v0 + 616) < 6)
  {
    v5 = (v0 + 632);
    v7 = *(v0 + 640);
  }

  else
  {
    v5 = (v0 + 640);
    v6 = *(v0 + 632);

    v3 = v2;
  }

  v8 = sub_2275B3674(v3, v4);
  v9 = *v5;
  v10 = *(v0 + 520);

  v11 = sub_2274CFEB4(v8);
  v13 = v12;

  *(v0 + 656) = v11;
  *(v0 + 1219) = v13;
  v15 = *&v11;
  if (v13)
  {
    v15 = 0.0;
  }

  else if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = *(v0 + 1218);
  v17 = *(v0 + 616);
  v18 = *(v0 + 32);
  v19 = swift_task_alloc();
  *(v0 + 664) = v19;
  *v19 = v0;
  v19[1] = sub_2275AE9CC;
  v20 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v18 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v16;
  if (v17 > 5)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 56);
  v23 = *(v0 + 24);

  return sub_2275A8F38(v23, v21, 2);
}

uint64_t sub_2275AE8DC()
{
  v1 = v0[65];

  v14 = v0[81];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275AE9CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 664);
  v7 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v5 = sub_2275AEBA4;
  }

  else
  {
    v5 = sub_2275AEAE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275AEAE4()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 520) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 656);
  if (*(v0 + 1219))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 672);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 568) = v11;
    v3 = sub_2275AE008;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275AEBA4()
{
  v1 = v0[65];

  v14 = v0[85];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275AEC94(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 704);
  v6 = *v2;
  *(*v2 + 712) = v1;

  if (v1)
  {
    v7 = sub_2275B2B08;
  }

  else
  {
    v8 = *(v4 + 688);

    *(v4 + 1220) = a1 & 1;
    v7 = sub_2275AEDC8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2275AEDC8()
{
  if (*(v0 + 1220) == 1)
  {
    v1 = *(v0 + 696);
    v2 = *(v0 + 16);

    v3 = *MEMORY[0x277D511F8];
    v4 = sub_227664EC0();
    v5 = *(v4 - 8);
    (*(v5 + 104))(v2, v3, v4);
    (*(v5 + 56))(v2, 0, 1, v4);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    v16 = *(v0 + 8);

    v16(0);
  }

  else
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    *(v0 + 720) = v18 * v17;
    if ((v18 * v17) >> 64 == (v18 * v17) >> 63)
    {
      v19 = *(v0 + 696);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v0 + 24);
        if (v20 <= *(v21 + 16) >> 3)
        {
          v29 = *(v0 + 24);

          sub_2270062A8(v19);
          v23 = v29;
        }

        else
        {
          v22 = *(v0 + 24);

          v23 = sub_227009F28(v19, v21);
        }

        *(v0 + 744) = v23;
        v27 = swift_task_alloc();
        *(v0 + 752) = v27;
        *v27 = v0;
        v27[1] = sub_2275AF4A4;
        v28 = *(v0 + 56);

        sub_2275A6B80();
      }

      else
      {
        v24 = swift_task_alloc();
        *(v0 + 728) = v24;
        *v24 = v0;
        v24[1] = sub_2275AF0B0;
        v25 = *(v0 + 56);
        v26 = *(v0 + 24);

        sub_2275A8F38(v26, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275AF0B0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 728);
  v7 = *v2;

  v8 = v4[87];

  if (v1)
  {
    v10 = v5[17];
    v9 = v5[18];
    v12 = v5[15];
    v11 = v5[16];
    v14 = v5[13];
    v13 = v5[14];
    v16 = v5[11];
    v15 = v5[12];
    v19 = v5 + 9;
    v17 = v5[9];
    v18 = v19[1];

    v20 = *(v7 + 8);

    return v20(0);
  }

  else
  {
    v5[92] = a1;

    return MEMORY[0x2822009F8](sub_2275AF2A0, 0, 0);
  }
}

uint64_t sub_2275AF2A0()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[90] >= v0[92])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[12];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v22 = v0[90] >= v0[92];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];
  v19 = v0[10];

  v20 = v0[1];

  return v20(v22);
}

uint64_t sub_2275AF4A4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 752);
  v8 = *v3;
  *(*v3 + 760) = v2;

  if (v2)
  {
    v9 = sub_2275AF5E8;
  }

  else
  {

    *(v6 + 768) = a2;
    *(v6 + 776) = a1;
    v9 = sub_2275AF6E4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2275AF5E8()
{
  v1 = v0[93];
  v2 = v0[87];

  v15 = v0[95];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275AF6E4()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 744);

  v5 = sub_2275B3674(v1, v4);

  v6 = sub_2274CFEB4(v5);
  v8 = v7;

  *(v0 + 784) = v6;
  *(v0 + 1221) = v8;
  v10 = *&v6;
  if (v8)
  {
    v10 = 0.0;
    v11 = 0;
  }

  else
  {
    v11 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = swift_task_alloc();
  *(v0 + 792) = v12;
  *v12 = v0;
  v12[1] = sub_2275AF844;
  v13 = *(v0 + 56);

  return sub_2275A6B80();
}

uint64_t sub_2275AF844(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 792);
  v8 = *v3;
  v4[100] = a1;
  v4[101] = a2;
  v4[102] = v2;

  if (v2)
  {
    v6 = sub_2275AFB74;
  }

  else
  {

    v6 = sub_2275AF96C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2275AF96C()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = *(v0 + 696);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1221) & 1) != 0 || *(v0 + 784) < 6)
  {
    v5 = (v0 + 800);
    v7 = *(v0 + 808);
  }

  else
  {
    v5 = (v0 + 808);
    v6 = *(v0 + 800);

    v3 = v2;
  }

  v8 = sub_2275B3674(v3, v4);
  v9 = *v5;
  v10 = *(v0 + 696);

  v11 = sub_2274CFEB4(v8);
  v13 = v12;

  *(v0 + 824) = v11;
  *(v0 + 1222) = v13;
  v15 = *&v11;
  if (v13)
  {
    v15 = 0.0;
  }

  else if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = *(v0 + 1221);
  v17 = *(v0 + 784);
  v18 = *(v0 + 32);
  v19 = swift_task_alloc();
  *(v0 + 832) = v19;
  *v19 = v0;
  v19[1] = sub_2275AFC64;
  v20 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v18 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v16;
  if (v17 > 5)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 56);
  v23 = *(v0 + 24);

  return sub_2275A8F38(v23, v21, 2);
}

uint64_t sub_2275AFB74()
{
  v1 = v0[87];

  v14 = v0[102];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275AFC64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 832);
  v7 = *v2;
  *(v3 + 840) = a1;
  *(v3 + 848) = v1;

  if (v1)
  {
    v5 = sub_2275AFE3C;
  }

  else
  {
    v5 = sub_2275AFD7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275AFD7C()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 696) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 824);
  if (*(v0 + 1222))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 840);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 736) = v11;
    v3 = sub_2275AF2A0;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275AFE3C()
{
  v1 = v0[87];

  v14 = v0[106];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275AFF2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 856);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[17];
    v7 = v4[18];
    v10 = v4[15];
    v9 = v4[16];
    v12 = v4[13];
    v11 = v4[14];
    v14 = v4[11];
    v13 = v4[12];
    v17 = v4 + 9;
    v15 = v4[9];
    v16 = v17[1];

    v18 = *(v6 + 8);

    return v18(0);
  }

  else
  {
    v4[108] = a1;

    return MEMORY[0x2822009F8](sub_2275B0100, 0, 0);
  }
}

uint64_t sub_2275B0100()
{
  v1 = v0[108];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v3 + 48);
  if (v1 > v4)
  {
    v10 = *MEMORY[0x277D511F8];
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2 + v5, v10, v6);
    v8 = 0;
    v9 = v0[11];
    v3 = v0[8];
  }

  else
  {
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    v8 = 1;
    v9 = v2;
  }

  v24 = v1 <= v4;
  v11 = v0[2];
  (*(v7 + 56))(v2 + v5, v8, 1, v6);
  sub_2275B4728(v9 + *(v3 + 48), v11);
  v13 = v0[17];
  v12 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[9];
  v21 = v0[10];

  v22 = v0[1];

  return v22(v24);
}

uint64_t sub_2275B02FC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 888);
  v6 = *v2;
  *(*v2 + 896) = v1;

  if (v1)
  {
    v7 = sub_2275B2C04;
  }

  else
  {
    v8 = *(v4 + 872);

    *(v4 + 1223) = a1 & 1;
    v7 = sub_2275B0430;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2275B0430()
{
  if (*(v0 + 1223) == 1)
  {
    v1 = *(v0 + 880);
    v2 = *(v0 + 16);

    v3 = *MEMORY[0x277D511F8];
    v4 = sub_227664EC0();
    v5 = *(v4 - 8);
    (*(v5 + 104))(v2, v3, v4);
    (*(v5 + 56))(v2, 0, 1, v4);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    v16 = *(v0 + 8);

    v16(0);
  }

  else
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    *(v0 + 904) = v18 * v17;
    if ((v18 * v17) >> 64 == (v18 * v17) >> 63)
    {
      v19 = *(v0 + 880);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v0 + 24);
        if (v20 <= *(v21 + 16) >> 3)
        {
          v29 = *(v0 + 24);

          sub_2270062A8(v19);
          v23 = v29;
        }

        else
        {
          v22 = *(v0 + 24);

          v23 = sub_227009F28(v19, v21);
        }

        *(v0 + 928) = v23;
        v27 = swift_task_alloc();
        *(v0 + 936) = v27;
        *v27 = v0;
        v27[1] = sub_2275B0B0C;
        v28 = *(v0 + 56);

        sub_2275A6B80();
      }

      else
      {
        v24 = swift_task_alloc();
        *(v0 + 912) = v24;
        *v24 = v0;
        v24[1] = sub_2275B0718;
        v25 = *(v0 + 56);
        v26 = *(v0 + 24);

        sub_2275A8F38(v26, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275B0718(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 912);
  v7 = *v2;

  v8 = v4[110];

  if (v1)
  {
    v10 = v5[17];
    v9 = v5[18];
    v12 = v5[15];
    v11 = v5[16];
    v14 = v5[13];
    v13 = v5[14];
    v16 = v5[11];
    v15 = v5[12];
    v19 = v5 + 9;
    v17 = v5[9];
    v18 = v19[1];

    v20 = *(v7 + 8);

    return v20(0);
  }

  else
  {
    v5[115] = a1;

    return MEMORY[0x2822009F8](sub_2275B0908, 0, 0);
  }
}

uint64_t sub_2275B0908()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[113] >= v0[115])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[10];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v22 = v0[113] >= v0[115];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];
  v19 = v0[10];

  v20 = v0[1];

  return v20(v22);
}

uint64_t sub_2275B0B0C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 936);
  v8 = *v3;
  *(*v3 + 944) = v2;

  if (v2)
  {
    v9 = sub_2275B0C50;
  }

  else
  {

    *(v6 + 952) = a2;
    *(v6 + 960) = a1;
    v9 = sub_2275B0D4C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2275B0C50()
{
  v1 = v0[116];
  v2 = v0[110];

  v15 = v0[118];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275B0D4C()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  v4 = *(v0 + 928);

  v5 = sub_2275B3674(v1, v4);

  v6 = sub_2274CFEB4(v5);
  v8 = v7;

  *(v0 + 968) = v6;
  *(v0 + 1224) = v8;
  v10 = *&v6;
  if (v8)
  {
    v10 = 0.0;
    v11 = 0;
  }

  else
  {
    v11 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = swift_task_alloc();
  *(v0 + 976) = v12;
  *v12 = v0;
  v12[1] = sub_2275B0EAC;
  v13 = *(v0 + 56);

  return sub_2275A6B80();
}

uint64_t sub_2275B0EAC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 976);
  v8 = *v3;
  v4[123] = a1;
  v4[124] = a2;
  v4[125] = v2;

  if (v2)
  {
    v6 = sub_2275B11DC;
  }

  else
  {

    v6 = sub_2275B0FD4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2275B0FD4()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 984);
  v4 = *(v0 + 880);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1224) & 1) != 0 || *(v0 + 968) < 6)
  {
    v5 = (v0 + 984);
    v7 = *(v0 + 992);
  }

  else
  {
    v5 = (v0 + 992);
    v6 = *(v0 + 984);

    v3 = v2;
  }

  v8 = sub_2275B3674(v3, v4);
  v9 = *v5;
  v10 = *(v0 + 880);

  v11 = sub_2274CFEB4(v8);
  v13 = v12;

  *(v0 + 1008) = v11;
  *(v0 + 1225) = v13;
  v15 = *&v11;
  if (v13)
  {
    v15 = 0.0;
  }

  else if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = *(v0 + 1224);
  v17 = *(v0 + 968);
  v18 = *(v0 + 32);
  v19 = swift_task_alloc();
  *(v0 + 1016) = v19;
  *v19 = v0;
  v19[1] = sub_2275B12CC;
  v20 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v18 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v16;
  if (v17 > 5)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 56);
  v23 = *(v0 + 24);

  return sub_2275A8F38(v23, v21, 2);
}

uint64_t sub_2275B11DC()
{
  v1 = v0[110];

  v14 = v0[125];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275B12CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1016);
  v7 = *v2;
  *(v3 + 1024) = a1;
  *(v3 + 1032) = v1;

  if (v1)
  {
    v5 = sub_2275B14A4;
  }

  else
  {
    v5 = sub_2275B13E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275B13E4()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 880) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 1008);
  if (*(v0 + 1225))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 1024);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 920) = v11;
    v3 = sub_2275B0908;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275B14A4()
{
  v1 = v0[110];

  v14 = v0[129];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275B1594(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1056);
  v6 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {
    v7 = sub_2275B2D00;
  }

  else
  {
    v8 = *(v4 + 1040);

    *(v4 + 1226) = a1 & 1;
    v7 = sub_2275B16C8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2275B16C8()
{
  if (*(v0 + 1226) == 1)
  {
    v1 = *(v0 + 1048);
    v2 = *(v0 + 16);

    v3 = *MEMORY[0x277D511F8];
    v4 = sub_227664EC0();
    v5 = *(v4 - 8);
    (*(v5 + 104))(v2, v3, v4);
    (*(v5 + 56))(v2, 0, 1, v4);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    v16 = *(v0 + 8);

    v16(0);
  }

  else
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    *(v0 + 1072) = v18 * v17;
    if ((v18 * v17) >> 64 == (v18 * v17) >> 63)
    {
      v19 = *(v0 + 1048);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v0 + 24);
        if (v20 <= *(v21 + 16) >> 3)
        {
          v29 = *(v0 + 24);

          sub_2270062A8(v19);
          v23 = v29;
        }

        else
        {
          v22 = *(v0 + 24);

          v23 = sub_227009F28(v19, v21);
        }

        *(v0 + 1096) = v23;
        v27 = swift_task_alloc();
        *(v0 + 1104) = v27;
        *v27 = v0;
        v27[1] = sub_2275B1D9C;
        v28 = *(v0 + 56);

        sub_2275A6B80();
      }

      else
      {
        v24 = swift_task_alloc();
        *(v0 + 1080) = v24;
        *v24 = v0;
        v24[1] = sub_2275B19B0;
        v25 = *(v0 + 56);
        v26 = *(v0 + 24);

        sub_2275A8F38(v26, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275B19B0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 1080);
  v7 = *v2;

  v8 = v4[131];

  if (v1)
  {
    v10 = v5[17];
    v9 = v5[18];
    v12 = v5[15];
    v11 = v5[16];
    v14 = v5[13];
    v13 = v5[14];
    v16 = v5[11];
    v15 = v5[12];
    v19 = v5 + 9;
    v17 = v5[9];
    v18 = v19[1];

    v20 = *(v7 + 8);

    return v20(0);
  }

  else
  {
    v5[136] = a1;

    return MEMORY[0x2822009F8](sub_2275B1BA0, 0, 0);
  }
}

uint64_t sub_2275B1BA0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = *(v2 + 48);
  if (v0[134] >= v0[136])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v2 = v0[8];
    v8 = v0[9];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v22 = v0[134] >= v0[136];
  v11 = v0[17];
  v10 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v15 = v0[13];
  v14 = v0[14];
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[9];
  v19 = v0[10];

  v20 = v0[1];

  return v20(v22);
}

uint64_t sub_2275B1D9C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1104);
  v8 = *v3;
  *(*v3 + 1112) = v2;

  if (v2)
  {
    v9 = sub_2275B1EE0;
  }

  else
  {

    *(v6 + 1120) = a2;
    *(v6 + 1128) = a1;
    v9 = sub_2275B1FDC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2275B1EE0()
{
  v1 = v0[137];
  v2 = v0[131];

  v15 = v0[139];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275B1FDC()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1096);

  v5 = sub_2275B3674(v1, v4);

  v6 = sub_2274CFEB4(v5);
  v8 = v7;

  *(v0 + 1136) = v6;
  *(v0 + 1227) = v8;
  v10 = *&v6;
  if (v8)
  {
    v10 = 0.0;
    v11 = 0;
  }

  else
  {
    v11 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = swift_task_alloc();
  *(v0 + 1144) = v12;
  *v12 = v0;
  v12[1] = sub_2275B213C;
  v13 = *(v0 + 56);

  return sub_2275A6B80();
}

uint64_t sub_2275B213C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1144);
  v8 = *v3;
  v4[144] = a1;
  v4[145] = a2;
  v4[146] = v2;

  if (v2)
  {
    v6 = sub_2275B246C;
  }

  else
  {

    v6 = sub_2275B2264;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2275B2264()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1048);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1227) & 1) != 0 || *(v0 + 1136) < 6)
  {
    v5 = (v0 + 1152);
    v7 = *(v0 + 1160);
  }

  else
  {
    v5 = (v0 + 1160);
    v6 = *(v0 + 1152);

    v3 = v2;
  }

  v8 = sub_2275B3674(v3, v4);
  v9 = *v5;
  v10 = *(v0 + 1048);

  v11 = sub_2274CFEB4(v8);
  v13 = v12;

  *(v0 + 1176) = v11;
  *(v0 + 1228) = v13;
  v15 = *&v11;
  if (v13)
  {
    v15 = 0.0;
  }

  else if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = *(v0 + 1227);
  v17 = *(v0 + 1136);
  v18 = *(v0 + 32);
  v19 = swift_task_alloc();
  *(v0 + 1184) = v19;
  *v19 = v0;
  v19[1] = sub_2275B255C;
  v20 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v18 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v16;
  if (v17 > 5)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 56);
  v23 = *(v0 + 24);

  return sub_2275A8F38(v23, v21, 2);
}

uint64_t sub_2275B246C()
{
  v1 = v0[131];

  v14 = v0[146];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275B255C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1184);
  v7 = *v2;
  *(v3 + 1192) = a1;
  *(v3 + 1200) = v1;

  if (v1)
  {
    v5 = sub_2275B2734;
  }

  else
  {
    v5 = sub_2275B2674;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275B2674()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 1048) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 1176);
  if (*(v0 + 1228))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 1192);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 1088) = v11;
    v3 = sub_2275B1BA0;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275B2734()
{
  v1 = v0[131];

  v14 = v0[150];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275B2824()
{
  v1 = v0[21];

  v14 = v0[23];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_2275B2914()
{
  v2 = v0[42];
  v1 = v0[43];

  v15 = v0[45];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275B2A0C()
{
  v1 = v0[66];
  v2 = v0[65];

  v15 = v0[68];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275B2B08()
{
  v1 = v0[87];
  v2 = v0[86];

  v15 = v0[89];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275B2C04()
{
  v1 = v0[110];
  v2 = v0[109];

  v15 = v0[112];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275B2D00()
{
  v1 = v0[131];
  v2 = v0[130];

  v15 = v0[133];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_2275B2DFC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];

  v2 = v0[18];

  v3 = v0[19];

  return swift_deallocClassInstance();
}

void *sub_2275B2E80(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_2275B3394(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_2275B2F1C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_2272C595C(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void sub_2275B2FAC(uint64_t a1, char a2, void *a3)
{
  v40 = *(a1 + 16);
  if (!v40)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = *a3;
  sub_226EB396C(v7, v6, v9);
  v11 = sub_226F491D8(v7, v6, v9);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_226FEEFE8(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_226F491D8(v7, v6, v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    v11 = sub_22766D220();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_226FF5CF4();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_226EB2DFC(v7, v6, v9);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = v23[6] + 24 * v11;
  *v24 = v7;
  *(v24 + 8) = v6;
  *(v24 + 16) = v9;
  *(v23[7] + 8 * v11) = v8;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v15)
  {
    v23[2] = v26;
    if (v40 != 1)
    {
      v5 = (a1 + 88);
      v27 = 1;
      while (v27 < *(a1 + 16))
      {
        v7 = *(v5 - 3);
        v6 = *(v5 - 2);
        v8 = *v5;
        v9 = *(v5 - 8);
        v28 = *a3;
        sub_226EB396C(v7, v6, v9);
        v29 = sub_226F491D8(v7, v6, v9);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v15 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v30;
        if (v28[3] < v33)
        {
          sub_226FEEFE8(v33, 1);
          v34 = *a3;
          v29 = sub_226F491D8(v7, v6, v9);
          if ((v17 & 1) != (v35 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v36 = *a3;
        *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v37 = v36[6] + 24 * v29;
        *v37 = v7;
        *(v37 + 8) = v6;
        *(v37 + 16) = v9;
        *(v36[7] + 8 * v29) = v8;
        v38 = v36[2];
        v15 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v27;
        v36[2] = v39;
        v5 += 4;
        if (v40 == v27)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_2275B3394(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v32 = 0;
  v5 = 0;
  v8 = *(a3 + 64);
  v6 = a3 + 64;
  v7 = v8;
  v9 = 1 << *(v6 - 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v37 = a4 + 56;
  v30 = v12;
  v31 = v6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v34 = v11;
      v29 = v13 | (v5 << 6);
      v16 = *(a3 + 48) + 24 * v29;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(a4 + 40);
      sub_22766D370();
      sub_226EB396C(v18, v17, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v21 = sub_22766D3F0();
      v22 = -1 << *(a4 + 32);
      v23 = v21 & ~v22;
      if ((*(v37 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v24 = ~v22;
        sub_226F48150();
        sub_226EC1E18();
        while (1)
        {
          v25 = *(a4 + 48) + 24 * v23;
          v35 = *v25;
          v36 = *(v25 + 16);
          if (sub_227663B20())
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v37 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        result = sub_226EB2DFC(v18, v17, v19);
        *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v6 = v31;
        v26 = __OFADD__(v32++, 1);
        v12 = v30;
        v11 = v34;
        if (v26)
        {
          __break(1u);
          return sub_2273297D0(v28, a2, v32, a3);
        }
      }

      else
      {
LABEL_5:
        result = sub_226EB2DFC(v18, v17, v19);
        v12 = v30;
        v6 = v31;
        v11 = v34;
      }
    }
  }

  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v12)
    {
      return sub_2273297D0(v28, a2, v32, a3);
    }

    v15 = *(v6 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2275B3628(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_2275B3674(a1, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2275B3674(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_2275B2E80(v13, v7, a1, a2);
      MEMORY[0x22AA9A450](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2275B3394(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2275B3834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC950, &unk_22767F840) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275B38E0, 0, 0);
}

uint64_t sub_2275B38E0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_227667950();
  v4 = v3;
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;

  v11 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v8)
  {
    v12 = v8;
LABEL_10:
    v8 = (v12 - 1) & v12;
    if (*(v1 + 16))
    {
      v14 = (*(v4 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v12)))));
      v15 = v0[4];
      v16 = *v14;
      v17 = v14[1];

      v18 = sub_226E92000(v16, v17);
      if (v19)
      {
        v20 = *(v1 + 56) + 24 * v18;
        v21 = *v20;
        v22 = *(v20 + 8);
        v29 = *(v20 + 16);
        sub_226EB396C(*v20, v22, v29);

        result = swift_isUniquelyReferenced_nonNull_native();
        v30 = v21;
        if ((result & 1) == 0)
        {
          result = sub_2273A59E0(0, v31[2] + 1, 1, v31);
          v31 = result;
        }

        v24 = v31[2];
        v23 = v31[3];
        if (v24 >= v23 >> 1)
        {
          result = sub_2273A59E0((v23 > 1), v24 + 1, 1, v31);
          v31 = result;
        }

        v31[2] = v24 + 1;
        v25 = &v31[3 * v24];
        v25[4] = v30;
        v25[5] = v22;
        *(v25 + 48) = v29;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v12 = *(v5 + 8 * v13);
    ++v11;
    if (v12)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  v26 = v0[2];

  v0[8] = sub_226F43CE0(v31);

  v0[9] = sub_227667940();
  v0[10] = sub_227667960();
  v27 = swift_task_alloc();
  v0[11] = v27;
  *v27 = v0;
  v27[1] = sub_2275B3B5C;
  v28 = v0[5];

  return sub_2275A6B80();
}

uint64_t sub_2275B3B5C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v6[18] = v2;
    v9 = sub_2275B4030;
  }

  else
  {

    v6[13] = a2;
    v6[14] = a1;
    v9 = sub_2275B3CA0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2275B3CA0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[8];

  v5 = sub_2275B3674(v2, v4);

  v6 = sub_2274CFDA4(v5);
  LOBYTE(v4) = v7;

  v11 = *&v6;
  if (v4)
  {
    v11 = 0.0;
    v12 = 0;
  }

  else
  {
    v12 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  if (v0[9] < v11)
  {
    v13 = sub_227664EC0();
    sub_226EAC144(&qword_28139B898, MEMORY[0x277D51210]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D511F8], v13);
    swift_willThrow();
    v0[18] = v14;
    v8 = sub_2275B4030;
    v9 = 0;
    v10 = 0;

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v16 = v0[3];
  v17 = *(v0[10] + 16);
  v18 = sub_227667250();
  v0[15] = v18;
  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_2275B3EFC;
  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[7];
  v23 = v0[5];

  return sub_2275AA00C(v22, v20, v21, v17, v18);
}

uint64_t sub_2275B3EFC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_2275B4354;
  }

  else
  {
    v8 = *(v4 + 120);

    *(v4 + 184) = a1 & 1;
    v7 = sub_2275B40BC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2275B4030()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_2275B40BC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 184) != 1)
  {
    v10 = *(v3 + 48);
    sub_226E93170(*(v3 + 56), v10, &qword_27D7BC950, &unk_22767F840);
    v11 = sub_227664EC0();
    sub_226EAC144(&qword_28139B898, MEMORY[0x277D51210]);
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v11 - 8);
    v16 = *(v15 + 48);
    v17 = v16(v10, 1, v11);
    v18 = *(v3 + 48);
    if (v17 == 1)
    {
      (*(v15 + 104))(v14, *MEMORY[0x277D51200], v11);
      if (v16(v18, 1, v11) != 1)
      {
        sub_226E97D1C(*(v3 + 48), &qword_27D7BC950, &unk_22767F840);
      }
    }

    else
    {
      (*(v15 + 32))(v14, *(v3 + 48), v11);
    }

    v19 = *(v3 + 56);
    swift_willThrow();
    sub_226E97D1C(v19, &qword_27D7BC950, &unk_22767F840);
    *(v3 + 144) = v12;
    a1 = sub_2275B4030;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v4 = *(v3 + 72);
  v5 = *(*(v3 + 80) + 16);
  *(v3 + 152) = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v6 = swift_task_alloc();
  *(v3 + 160) = v6;
  *v6 = v3;
  v6[1] = sub_2275B43C4;
  v7 = *(v3 + 64);
  v8 = *(v3 + 40);

  return sub_2275A8F38(v7, 0, 2);
}

uint64_t sub_2275B4354()
{
  v1 = v0[15];

  v0[18] = v0[17];

  return MEMORY[0x2822009F8](sub_2275B4030, 0, 0);
}

uint64_t sub_2275B43C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_2275B46A8;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_2275B44EC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2275B44EC()
{
  if (v0[19] >= v0[22])
  {
    v5 = v0[10];
    v6 = v0[8];
    v7 = v0[6];
    sub_226E97D1C(v0[7], &qword_27D7BC950, &unk_22767F840);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v1 = v0[7];
    v2 = sub_227664EC0();
    sub_226EAC144(&qword_28139B898, MEMORY[0x277D51210]);
    v3 = swift_allocError();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D51200], v2);
    swift_willThrow();
    sub_226E97D1C(v1, &qword_27D7BC950, &unk_22767F840);
    v0[18] = v3;

    return MEMORY[0x2822009F8](sub_2275B4030, 0, 0);
  }
}

uint64_t sub_2275B46A8()
{
  sub_226E97D1C(v0[7], &qword_27D7BC950, &unk_22767F840);
  v0[18] = v0[21];

  return MEMORY[0x2822009F8](sub_2275B4030, 0, 0);
}

uint64_t sub_2275B4728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC950, &unk_22767F840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_2275B47CC()
{
  v1 = *(v0 + 16);
  sub_227664000();
  return v2 != v1;
}

double sub_2275B4838@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_227666FB0();
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  sub_227664000();
  result = v6 / 60.0;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2275B48B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = sub_22766B3B0();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22766B3F0();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B3C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_226EA1CF4();
  (*(v14 + 104))(v17, *MEMORY[0x277D851D0], v13);

  v19 = sub_22766C980();
  (*(v14 + 8))(v17, v13);
  v20 = swift_allocObject();
  v20[2] = v23;
  v20[3] = sub_226EB496C;
  v20[4] = v18;
  aBlock[4] = sub_2275B5430;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_41;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v26 = MEMORY[0x277D84F90];
  sub_226E9D3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v8, v21);
  _Block_release(v21);

  (*(v25 + 8))(v8, v5);
  (*(v9 + 8))(v12, v24);
}

void sub_2275B4C3C(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v45 = a3;
  v46 = a2;
  v44 = a1;
  v3 = sub_22766B390();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v39 - v8;
  MEMORY[0x28223BE20](v7);
  v39 = &v39 - v9;
  v10 = sub_227669A90();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = [v15 standardUserDefaults];
  v17 = v11[13];
  v17(v14, *MEMORY[0x277D4F060], v10);
  sub_227669A80();
  v18 = v11[1];
  v18(v14, v10);
  v19 = sub_22766BFD0();

  [v16 doubleForKey_];
  v21 = v20;

  if (v21 == 0.0)
  {
    v22 = v41;
    sub_22766A730();
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Last jetpack update not recorded, updating now";
LABEL_10:
      v34 = v24;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v22 = v40;
  sub_2276625E0();
  v28 = v27 - v21;
  sub_22766C510();
  if (v28 >= v29)
  {
    sub_22766A730();
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Last jetpack update more than 3 days ago, updating now";
      goto LABEL_10;
    }

LABEL_12:

    (*(v42 + 8))(v22, v43);
    v36 = *(v44 + 16);
    v35 = *(v44 + 24);
    swift_getObjectType();
    sub_2271BD400();
    sub_2276699D0();
    goto LABEL_13;
  }

  v30 = [v15 standardUserDefaults];
  v17(v14, *MEMORY[0x277D4EFC8], v10);
  sub_227669A80();
  v18(v14, v10);
  v31 = sub_22766BFD0();

  v32 = [v30 BOOLForKey_];

  if (v32)
  {
    v22 = v39;
    sub_22766A730();
    v23 = sub_22766B380();
    v33 = sub_22766C8B0();
    if (os_log_type_enabled(v23, v33))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "Found a pending server request for jetpack update, updating now";
      v34 = v33;
LABEL_11:
      _os_log_impl(&dword_226E8E000, v23, v34, v26, v25, 2u);
      MEMORY[0x22AA9A450](v25, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D430();
  v37 = v47;
  v38 = v48;
  v46(v47, v48);
  sub_226EB4548(v37, v38);
}

uint64_t sub_2275B50F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_2275B5154()
{
  v0 = sub_227669A90();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  sub_2276625E0();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  v14 = v1[13];
  v14(v4, *MEMORY[0x277D4F060], v0);
  sub_227669A80();
  v15 = v1[1];
  v15(v4, v0);
  v16 = sub_22766BFD0();

  [v13 setDouble:v16 forKey:v11];

  v17 = [v12 standardUserDefaults];
  v14(v4, *MEMORY[0x277D4EFC8], v0);
  sub_227669A80();
  v15(v4, v0);
  v18 = sub_22766BFD0();

  [v17 removeObjectForKey_];
}

void sub_2275B5448(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 shownState];
  if (v4 == 1)
  {
    v5 = 1;
    goto LABEL_5;
  }

  if (!v4)
  {
    v5 = 0;
LABEL_5:

    *a2 = v5;
    return;
  }

  v6 = sub_227664DD0();
  sub_226FC4F70();
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

uint64_t sub_2275B5554(uint64_t a1, uint64_t a2)
{
  v4 = sub_2275B561C();

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

unint64_t sub_2275B55A0(uint64_t a1)
{
  result = sub_2275B55C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2275B55C8()
{
  result = qword_27D7BF598;
  if (!qword_27D7BF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF598);
  }

  return result;
}

unint64_t sub_2275B561C()
{
  result = qword_27D7BF5A0;
  if (!qword_27D7BF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF5A0);
  }

  return result;
}

uint64_t sub_2275B5680(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = sub_22766BA40();
  sub_227366BD4(0x6572617764726168, 0xED00006C65646F4DLL, &v4);
  sub_226EBC888(&v4);
  v5 = sub_22766BC40();
  v6 = MEMORY[0x277D22338];
  __swift_allocate_boxed_opaque_existential_0(&v4);
  sub_22766BC30();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_226E92AB8(&v4, a1);
}

uint64_t sub_2275B5754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v52 = a1;
  v50 = a3;
  v55[5] = *MEMORY[0x277D85DE8];
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v5 + 8))(v8, v4);
  v55[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5D8, &qword_22768C478);
  sub_2273CCBB4(&qword_27D7BF5E0, &qword_27D7BF5D8, &qword_22768C478);
  v9 = sub_22766C7A0();
  v10 = v9;
  v11 = *(v9 + 16);
  if (!v11)
  {
LABEL_60:

    v42 = sub_227666740();
    sub_2275BB6AC(&qword_28139B638, MEMORY[0x277D52688]);
    v43 = swift_allocError();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D52608], v42);
    *(swift_allocObject() + 16) = v43;
    result = sub_227669280();
    goto LABEL_65;
  }

  v12 = 0;
  v51 = 0;
  v13 = v9 + 32;
  v49 = v11;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

    sub_226E91B50(v13, v55);
    __swift_project_boxed_opaque_existential_0(v55, v55[3]);
    v14 = sub_22766AC80();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0(v55);
    v17 = sub_227668B90();
    v19 = v17;
    v20 = v18;
    if (v16 >> 60 == 15)
    {
      if (v18 >> 60 == 15)
      {

        sub_226FB1424(v14, v16);
        goto LABEL_64;
      }

LABEL_8:
      sub_226FB1424(v14, v16);
      v21 = v19;
      v22 = v20;
LABEL_9:
      sub_226FB1424(v21, v22);
      goto LABEL_10;
    }

    if (v18 >> 60 == 15)
    {
      goto LABEL_8;
    }

    v23 = v16 >> 62;
    v24 = v18 >> 62;
    if (v16 >> 62 == 3)
    {
      v25 = 0;
      if (!v14 && v16 == 0xC000000000000000 && v18 >> 62 == 3)
      {
        v25 = 0;
        if (!v17 && v18 == 0xC000000000000000)
        {
          sub_226FB1424(0, 0xC000000000000000);
          v14 = 0;
          goto LABEL_62;
        }
      }

LABEL_29:
      if (v24 <= 1)
      {
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        v25 = BYTE6(v16);
        if (v24 <= 1)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      LODWORD(v25) = HIDWORD(v14) - v14;
      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_69;
      }

      v25 = v25;
      goto LABEL_29;
    }

    if (v23 == 2)
    {
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v28)
      {
        goto LABEL_70;
      }

      goto LABEL_29;
    }

    v25 = 0;
    if (v24 <= 1)
    {
LABEL_30:
      if (v24)
      {
        LODWORD(v29) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_67;
        }

        v29 = v29;
      }

      else
      {
        v29 = BYTE6(v18);
      }

      goto LABEL_37;
    }

LABEL_35:
    if (v24 != 2)
    {
      break;
    }

    v31 = *(v17 + 16);
    v30 = *(v17 + 24);
    v28 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v28)
    {
      goto LABEL_68;
    }

LABEL_37:
    if (v25 != v29)
    {
      goto LABEL_43;
    }

    if (v25 < 1)
    {
      goto LABEL_61;
    }

    if (v23 > 1)
    {
      if (v23 != 2)
      {
        memset(v54, 0, 14);
        sub_226FB1554(v14, v16);
        sub_226FB1554(v19, v20);
        goto LABEL_57;
      }

      v32 = *(v14 + 16);
      v48 = *(v14 + 24);
      sub_226FB1554(v14, v16);
      sub_226FB1554(v19, v20);
      v33 = sub_227662060();
      if (v33)
      {
        v34 = sub_227662090();
        if (__OFSUB__(v32, v34))
        {
          goto LABEL_73;
        }

        v33 += v32 - v34;
      }

      if (__OFSUB__(v48, v32))
      {
        goto LABEL_72;
      }

      sub_227662080();
      v35 = v33;
      v36 = v19;
      v37 = v20;
      v38 = v51;
    }

    else
    {
      if (!v23)
      {
        v54[0] = v14;
        LOWORD(v54[1]) = v16;
        BYTE2(v54[1]) = BYTE2(v16);
        BYTE3(v54[1]) = BYTE3(v16);
        BYTE4(v54[1]) = BYTE4(v16);
        BYTE5(v54[1]) = BYTE5(v16);
        sub_226FB1554(v14, v16);
        sub_226FB1554(v19, v20);
LABEL_57:
        v38 = v51;
        sub_2275BA344(v54, v19, v20, &v53);
        sub_226FB1424(v19, v20);
        sub_226FB1424(v14, v16);
        sub_226FB1424(v19, v20);
        v41 = v53;
        goto LABEL_58;
      }

      if (v14 >> 32 < v14)
      {
        goto LABEL_71;
      }

      v48 = (v14 >> 32) - v14;
      sub_226FB1554(v14, v16);
      sub_226FB1554(v19, v20);
      v39 = sub_227662060();
      if (v39)
      {
        v40 = sub_227662090();
        if (__OFSUB__(v14, v40))
        {
          goto LABEL_74;
        }

        v39 += v14 - v40;
      }

      v38 = v51;
      sub_227662080();
      v35 = v39;
      v36 = v19;
      v37 = v20;
    }

    sub_2275BA344(v35, v36, v37, v54);
    sub_226FB1424(v19, v20);
    sub_226FB1424(v14, v16);
    sub_226FB1424(v19, v20);
    v41 = v54[0];
LABEL_58:
    sub_226FB1424(v14, v16);
    if (v41)
    {
      goto LABEL_63;
    }

    v51 = v38;
    v11 = v49;
LABEL_10:
    ++v12;
    v13 += 40;
    if (v11 == v12)
    {
      goto LABEL_60;
    }
  }

  if (v25)
  {
LABEL_43:
    sub_226FB1424(v17, v18);
    v21 = v14;
    v22 = v16;
    goto LABEL_9;
  }

LABEL_61:
  sub_226FB1424(v17, v18);
LABEL_62:
  sub_226FB1424(v14, v16);
LABEL_63:

LABEL_64:
  result = sub_2276692A0();
LABEL_65:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2275B5E70(void *a1, uint64_t a2)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED8, &qword_227682028);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v55 - v5;
  v7 = sub_227668BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v58 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v57 = a1;
  v23 = *a1;
  if (*(v23 + 16))
  {
    v56 = v15;
    v24 = &v55 - v21;
    v25 = v6;
    v26 = v11;
    v27 = v8;
    v28 = v7;
    v29 = v22;
    result = sub_226F3B28C(v60);
    v30 = v29;
    v31 = v28;
    v32 = v27;
    v33 = v26;
    v34 = v25;
    v35 = v16;
    v36 = v24;
    v37 = v12;
    v38 = v56;
    if (v39)
    {
      v40 = *(v23 + 56) + *(v30 + 72) * result;
      v41 = v58;
      v55 = v30;
      sub_2275BA59C(v40, v58);
      sub_2275BAD08(v41, v36);
      sub_22766A730();
      sub_22766B370();
      (*(v37 + 8))(v38, v33);
      (*(v32 + 16))(v59, v60, v31);
      v43 = *v36;
      v42 = *(v36 + 1);
      sub_226E91B50((v36 + 16), (v34 + 16));
      v44 = v35[6];
      v45 = sub_227662750();
      v46 = *(v45 - 8);
      result = (*(v46 + 16))(&v34[v44], &v36[v44], v45);
      v47 = *&v36[v35[7]];
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
      }

      else
      {
        v49 = v43;
        v50 = v35[8];

        sub_227662720();
        (*(v46 + 56))(&v34[v50], 0, 1, v45);
        v51 = &v36[v35[9]];
        v52 = *v51;
        v53 = *(v51 + 1);
        *v34 = v49;
        *(v34 + 1) = v42;
        *&v34[v35[7]] = v48;
        v54 = &v34[v35[9]];
        *v54 = v52;
        *(v54 + 1) = v53;
        (*(v55 + 56))(v34, 0, 1, v35);

        sub_2273647D4(v34, v59);
        return sub_2275BA600(v36);
      }
    }
  }

  return result;
}

uint64_t sub_2275B62B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  result = (*(v15 + 8))(v18, v14);
  v20 = *a1;
  v21 = *(*a1 + 16);
  if (v21)
  {
    result = sub_226F3B28C(a2);
    if (v22)
    {
      sub_2275BA59C(*(v20 + 56) + *(v7 + 72) * result, v11);
      sub_2275BAD08(v11, v13);
      v23 = *v13;
      v24 = v13[1];
      if (v23 == sub_227668BA0() && v24 == v25)
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_22766D190();
      }

      result = sub_2275BA600(v13);
      LOBYTE(v21) = v27 & 1;
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  *a3 = v21;
  return result;
}

unint64_t sub_2275B6500(void *a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  v88 = a4;
  v97 = a3;
  v6 = sub_22766B390();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  MEMORY[0x28223BE20](v6);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = &v82 - v11;
  v91 = sub_227662750();
  v89 = *(v91 - 8);
  v12 = *(v89 + 64);
  v13 = MEMORY[0x28223BE20](v91);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v82 - v16;
  MEMORY[0x28223BE20](v15);
  v90 = &v82 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v95 = (&v82 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED8, &qword_227682028);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v82 - v23;
  v25 = sub_227668BB0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v30 = *(v96 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v96);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v32);
  v98 = (&v82 - v36);
  v86 = a1;
  v37 = *a1;
  if (*(v37 + 16))
  {
    result = sub_226F3B28C(a2);
    if (v38)
    {
      sub_2275BA59C(*(v37 + 56) + *(v30 + 72) * result, v34);
      v39 = v34;
      v40 = v98;
      sub_2275BAD08(v39, v98);
      v83 = a2;
      if (sub_227668BA0() == *v40 && v41 == v40[1])
      {
      }

      else
      {
        v42 = sub_22766D190();

        if ((v42 & 1) == 0)
        {
          return sub_2275BA600(v98);
        }
      }

      (*(v26 + 16))(v29, v83, v25);
      v43 = v96;
      (*(v30 + 56))(v24, 1, 1, v96);
      sub_2273647D4(v24, v29);
      v44 = v97;
      v45 = v95;
      sub_226E93170(v97, v95, &qword_27D7BD6D0, &qword_22768C440);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = *v45;
        Kind = v88[3].Kind;
        __swift_project_boxed_opaque_existential_0(&v88[1].Kind, v88[2].Description);
        v48 = v87;
        sub_227662720();
        v49 = v43[6];
        v50 = v98;
        sub_227662680();
        v52 = v51;
        (*(v89 + 8))(v48, v91);
        v53 = *(v50 + v43[7]);
        v101 = &type metadata for GuestPairingVerifierAnalyticsEvent;
        v102 = sub_2275BACB4();
        v54 = swift_allocObject();
        v100[0] = v54;
        v54[2] = v52;
        v54[3] = 0;
        v54[4] = v53;
        v54[5] = v46;
        v55 = v46;
        sub_227669B60();

        __swift_destroy_boxed_opaque_existential_0(v100);
      }

      else
      {
        v56 = v90;
        sub_227662720();
        sub_226E91B50(&v88[1], v100);
        v86 = v102;
        v88 = v101;
        v83 = __swift_project_boxed_opaque_existential_0(v100, v101);
        v57 = v87;
        sub_227662720();
        v58 = v43[6];
        v50 = v98;
        sub_227662680();
        v60 = v59;
        v61 = v89;
        v62 = *(v89 + 8);
        v63 = v57;
        v64 = v43;
        v65 = v91;
        v62(v63, v91);
        v66 = v85;
        sub_226E93170(v50 + v64[8], v85, &qword_27D7B9690, qword_227670B50);
        v67 = *(v61 + 48);
        if (v67(v66, 1, v65) == 1)
        {
          v68 = v56;
          v69 = v84;
          (*(v61 + 16))(v84, v68, v65);
          v70 = v67(v66, 1, v65);
          v71 = v69;
          if (v70 != 1)
          {
            sub_226E97D1C(v66, &qword_27D7B9690, qword_227670B50);
          }
        }

        else
        {
          v71 = v84;
          (*(v61 + 32))(v84, v66, v65);
        }

        v72 = v90;
        sub_227662680();
        v74 = v73;
        v62(v71, v65);
        v75 = v96;
        v76 = *(v50 + *(v96 + 28));
        v99[3] = &type metadata for GuestPairingVerifierAnalyticsEvent;
        v99[4] = sub_2275BACB4();
        v77 = swift_allocObject();
        v99[0] = v77;
        v77[2] = v60;
        v77[3] = v74;
        v77[4] = v76;
        v77[5] = 0;
        sub_227669B60();
        v78 = v65;
        v43 = v75;
        v62(v72, v78);
        __swift_destroy_boxed_opaque_existential_0(v99);
        __swift_destroy_boxed_opaque_existential_0(v100);
        sub_226E97D1C(v95, &qword_27D7BD6D0, &qword_22768C440);
        v44 = v97;
      }

      v79 = v92;
      sub_22766A730();
      sub_22766B370();
      (*(v93 + 8))(v79, v94);
      v80 = v50 + v43[9];
      v81 = *(v80 + 8);
      (*v80)(v44);
      return sub_2275BA600(v98);
    }
  }

  return result;
}

uint64_t sub_2275B6D68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  v2 = v0[19];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification()
{
  result = qword_28139D8C0;
  if (!qword_28139D8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2275B6E58()
{
  sub_22713E174();
  if (v0 <= 0x3F)
  {
    sub_227662750();
    if (v1 <= 0x3F)
    {
      sub_2270503BC();
      if (v2 <= 0x3F)
      {
        sub_227551450();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2275B6F24(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v6 + 8))(v9, v5);
  v10 = *(a1 + 152);

  os_unfair_lock_lock((v10 + 24));
  sub_2275BA65C((v10 + 16), &v13);
  os_unfair_lock_unlock((v10 + 24));
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    *a2 = v11;
  }
}

uint64_t sub_2275B708C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;

  v8 = sub_2275BA7DC(v7, a2);
  swift_bridgeObjectRelease_n();

  *a1 = MEMORY[0x277D84F98];
  *a3 = v8;
  return result;
}

void sub_2275B7110(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v6 = (v30 - v5);
  v35 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = (v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = v30 - v13;
  v15 = *a1;
  v16 = *(*a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v30[1] = a2;
    v37 = MEMORY[0x277D84F90];
    sub_226F1F4E8(0, v16, 0);
    v17 = v37;
    v18 = v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v32 = *(v7 + 72);
    v31 = *MEMORY[0x277D51BA0];
    v30[2] = v11 + 32;
    v33 = v11;
    do
    {
      sub_2275BA59C(v18, v10);
      v19 = v10 + *(v35 + 36);
      v20 = v14;
      v22 = *v19;
      v21 = *(v19 + 1);
      v23 = sub_227665A60();
      sub_2275BB6AC(&qword_27D7BD250, MEMORY[0x277D51BF0]);
      v24 = swift_allocError();
      (*(*(v23 - 8) + 104))(v25, v31, v23);
      *v6 = v24;
      swift_storeEnumTagMultiPayload();
      v22(v6);
      v14 = v20;
      sub_226E97D1C(v6, &qword_27D7BD6D0, &qword_22768C440);
      v26 = v10[6];
      __swift_project_boxed_opaque_existential_0(v10 + 2, v10[5]);
      sub_22766AD00();
      sub_2275BA600(v10);
      v37 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_226F1F4E8(v27 > 1, v28 + 1, 1);
        v17 = v37;
      }

      *(v17 + 16) = v28 + 1;
      (*(v33 + 32))(v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, v20, v34);
      v18 += v32;
      --v16;
    }

    while (v16);
  }

  v37 = v17;
  sub_226EA1CF4();
  v29 = sub_22766C950();
  sub_227669A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_2273CCBB4(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60);
  sub_227669260();
}

uint64_t sub_2275B7524(void (*a1)(void **), void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v100 = a4;
  v97 = a2;
  v87 = sub_227668BB0();
  v99 = *(v87 - 8);
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v87);
  v92 = v7;
  v93 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v89 = *(v90 - 8);
  v8 = *(v89 + 64);
  v9 = MEMORY[0x28223BE20](v90);
  v86 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v98 = &v77 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v77 - v13;
  MEMORY[0x28223BE20](v12);
  v88 = &v77 - v14;
  v82 = sub_22766B390();
  v81 = *(v82 - 1);
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v83 = *(v17 - 8);
  v18 = *(v83 + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v84 = (&v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v94 = &v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v77 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5B8, &qword_22768C448);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v31 = (&v77 - v30);
  v32 = *(a3 + 152);
  v101 = v100;
  v102 = a3;
  v96 = a3;
  v85 = a1;
  v103 = a1;
  v104 = v97;

  os_unfair_lock_lock((v32 + 24));
  sub_2275BADF0((v32 + 16), v31);
  os_unfair_lock_unlock((v32 + 24));

  v91 = v31;
  sub_226E93170(v31, v29, &qword_27D7BF5B8, &qword_22768C448);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = *v29;
    *v24 = *v29;
    swift_storeEnumTagMultiPayload();
    v34 = v33;
    v85(v24);

    sub_226E97D1C(v24, &qword_27D7BD6D0, &qword_22768C440);
  }

  else
  {
    v35 = v94;
    sub_2275BAD08(v29, v94);
    v36 = v80;
    sub_22766A730();
    sub_22766B370();
    (*(v81 + 8))(v36, v82);
    v106 = 0;
    memset(v105, 0, sizeof(v105));
    sub_2276693D0();
    v37 = v98;
    sub_227668B60();
    sub_226E97D1C(v105, &qword_27D7BE4C8, &unk_22768C450);
    v38 = v84;
    sub_2275BA59C(v35, v84);
    v39 = v99;
    v40 = *(v99 + 16);
    v85 = (v99 + 16);
    v97 = v40;
    v78 = v8;
    v41 = v93;
    v42 = v18;
    v43 = v87;
    v40();
    v44 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v45 = *(v39 + 80);
    v46 = v39;
    v47 = (v42 + v45 + v44) & ~v45;
    v83 = v45 | 7;
    v48 = (v92 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    sub_2275BAD08(v38, v49 + v44);
    v50 = *(v46 + 32);
    v99 = v46 + 32;
    v84 = v50;
    v51 = v41;
    v52 = v43;
    (v50)(v49 + v47, v51, v43);
    *(v49 + v48) = v96;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_2275BAE10;
    *(v53 + 24) = v49;
    v54 = v89;
    v55 = *(v89 + 16);
    v81 = v89 + 16;
    v82 = v55;
    v56 = v86;
    v57 = v37;
    v58 = v90;
    v55(v86, v57, v90);
    v59 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v80 = *(v54 + 80);
    v79 = v59;
    v60 = (v78 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = v60;
    v61 = swift_allocObject();
    v78 = *(v54 + 32);
    v78(v61 + v59, v56, v58);
    v62 = (v61 + v60);
    *v62 = sub_227086964;
    v62[1] = v53;
    v63 = v96;

    sub_227669270();
    v89 = *(v54 + 8);
    (v89)(v98, v58);
    v64 = v93;
    (v97)(v93, v100, v52);
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    (v84)(v65 + ((v45 + 24) & ~v45), v64, v52);
    v66 = swift_allocObject();
    *(v66 + 16) = sub_2275BAF10;
    *(v66 + 24) = v65;
    v67 = v98;
    v68 = v95;
    v82(v98, v95, v58);
    v69 = v77;
    v70 = swift_allocObject();
    v78(v70 + v79, v67, v58);
    v71 = (v70 + v69);
    *v71 = sub_226F5AAF8;
    v71[1] = v66;

    v72 = v88;
    sub_227669270();
    v73 = v89;
    (v89)(v68, v58);
    v74 = sub_227669290();
    v75 = swift_allocObject();
    *(v75 + 16) = 0;
    *(v75 + 24) = 0;
    v74(sub_226E9F7B0, v75);

    v73(v72, v58);
    sub_2275BA600(v94);
  }

  return sub_226E97D1C(v91, &qword_27D7BF5B8, &qword_22768C448);
}

uint64_t sub_2275B7F2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v63 = a4;
  v64 = a5;
  v61 = a3;
  v68 = a6;
  v8 = sub_22766B390();
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v8);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227668BB0();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v58 - v16;
  v17 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCED8, &qword_227682028);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v58 - v27;
  v65 = a1;
  v29 = *a1;
  if (*(v29 + 16) && (v30 = sub_226F3B28C(a2), (v31 & 1) != 0))
  {
    v65 = v8;
    sub_2275BA59C(*(v29 + 56) + *(v18 + 72) * v30, v28);
    (*(v18 + 56))(v28, 0, 1, v17);
    sub_226E97D1C(v28, &qword_27D7BCED8, &qword_227682028);
    v32 = v60;
    sub_22766A730();
    v33 = v66;
    v34 = v67;
    (*(v66 + 16))(v15, a2, v67);
    v35 = sub_22766B380();
    v36 = sub_22766C890();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69 = v38;
      *v37 = 136446210;
      sub_2275BB6AC(&qword_27D7BB3E0, MEMORY[0x277D537B0]);
      v39 = sub_22766D140();
      v41 = v40;
      (*(v33 + 8))(v15, v34);
      v42 = sub_226E97AE8(v39, v41, &v69);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_226E8E000, v35, v36, "Already verifying guest pairing request for handshake %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9A450](v38, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);

      (*(v59 + 8))(v60, v65);
    }

    else
    {

      (*(v33 + 8))(v15, v34);
      (*(v59 + 8))(v32, v65);
    }

    v54 = sub_227665A60();
    sub_2275BB6AC(&qword_27D7BD250, MEMORY[0x277D51BF0]);
    v55 = swift_allocError();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D51BC8], v54);
    *v68 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5B8, &qword_22768C448);
  }

  else
  {
    v60 = *(v18 + 56);
    (v60)(v28, 1, 1, v17);
    sub_226E97D1C(v28, &qword_27D7BCED8, &qword_227682028);
    v43 = a2;
    v44 = sub_227668BA0();
    v46 = v45;
    v47 = v61[11];
    __swift_project_boxed_opaque_existential_0(v61 + 7, v61[10]);
    sub_22766AD70();
    v48 = v21 + v17[6];
    sub_227662720();
    v49 = v17[8];
    v50 = sub_227662750();
    (*(*(v50 - 8) + 56))(v21 + v49, 1, 1, v50);
    *v21 = v44;
    v21[1] = v46;
    *(v21 + v17[7]) = 0;
    v51 = (v21 + v17[9]);
    v52 = v64;
    *v51 = v63;
    v51[1] = v52;
    v53 = v62;
    (*(v66 + 16))(v62, v43, v67);
    sub_2275BA59C(v21, v26);
    (v60)(v26, 0, 1, v17);

    sub_2273647D4(v26, v53);
    sub_2275BAD08(v21, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5B8, &qword_22768C448);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2275B85D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = sub_227668BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  sub_226E91B50(a1 + 16, v44);
  v36 = v46;
  v37 = v45;
  v35 = __swift_project_boxed_opaque_existential_0(v44, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5C0, &qword_22768C468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  v38 = a2;
  v16 = sub_227668B70();
  if (v17 == -1)
  {
    *(inited + 32) = 4;

    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v34 = a3;
    v42 = v16;
    v43 = v17 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5C8, &qword_22768C470);
    sub_227663B00();
    v18 = *(inited + 32);

    if (v18 == 4)
    {
      v19 = MEMORY[0x277D84F90];
    }

    else
    {
      v19 = sub_2273A7268(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v33 = v21 + 1;
        v32 = sub_2273A7268((v20 > 1), v21 + 1, 1, v19);
        v22 = v33;
        v19 = v32;
      }

      *(v19 + 2) = v22;
      v19[v21 + 32] = v18;
    }

    a3 = v34;
  }

  sub_226F47FF4(v19);

  (*(v8 + 16))(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v7);
  v23 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  (*(v8 + 32))(v24 + v23, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_22766AD20();

  v25 = swift_allocObject();
  *(v25 + 16) = nullsub_1;
  *(v25 + 24) = 0;
  v27 = v39;
  v26 = v40;
  (*(v10 + 16))(v39, v14, v40);
  v28 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v29 = swift_allocObject();
  (*(v10 + 32))(v29 + v28, v27, v26);
  v30 = (v29 + ((v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_2275BB118;
  v30[1] = v25;
  sub_227669270();
  (*(v10 + 8))(v14, v26);
  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t sub_2275B8A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v119 = a3;
  v120 = a4;
  v124 = a2;
  v129 = a7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD5F0, &qword_227684C80);
  v115 = *(v116 - 8);
  v10 = *(v115 + 64);
  v11 = MEMORY[0x28223BE20](v116);
  v114 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v12;
  MEMORY[0x28223BE20](v11);
  v132 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v121 = *(v14 - 8);
  v122 = v14;
  v15 = *(v121 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v118 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v17;
  MEMORY[0x28223BE20](v16);
  v128 = &v101 - v18;
  v19 = sub_227668BB0();
  v20 = *(v19 - 8);
  v133 = v19;
  v134 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v127 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  v25 = sub_227665350();
  v130 = *(v25 - 8);
  v131 = v25;
  v26 = *(v130 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v125 = v28;
  v126 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v101 - v29;
  v108 = sub_22766B390();
  v107 = *(v108 - 1);
  v31 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v33 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a5[19];
  v135 = a6;

  os_unfair_lock_lock((v34 + 24));
  sub_2275BB154((v34 + 16), &v136);
  os_unfair_lock_unlock((v34 + 24));
  v35 = v136;

  if (v35 == 1)
  {
    v123 = a5;
    v37 = a5[19];
    MEMORY[0x28223BE20](v36);
    *(&v101 - 2) = a6;

    os_unfair_lock_lock((v37 + 24));
    sub_2275BB170((v37 + 16));
    os_unfair_lock_unlock((v37 + 24));

    sub_22766A730();
    v38 = *(v130 + 16);
    v112 = v130 + 16;
    v111 = v38;
    v38(v30, a1, v131);
    v39 = *(v134 + 16);
    v110 = v134 + 16;
    v109 = v39;
    v39(v24, a6, v133);
    v40 = sub_22766B380();
    v41 = sub_22766C8B0();
    v42 = os_log_type_enabled(v40, v41);
    v106 = a1;
    v105 = a6;
    v104 = v21;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v136 = v44;
      *v43 = 136446466;
      sub_2275BB6AC(&qword_27D7BF5D0, MEMORY[0x277D515D0]);
      v45 = v40;
      v46 = v41;
      v47 = v131;
      v48 = sub_22766D140();
      v50 = v49;
      (*(v130 + 8))(v30, v47);
      v51 = sub_226E97AE8(v48, v50, &v136);

      *(v43 + 4) = v51;
      *(v43 + 12) = 2082;
      sub_2275BB6AC(&qword_27D7BB3E0, MEMORY[0x277D537B0]);
      v52 = v133;
      v53 = sub_22766D140();
      v55 = v54;
      (*(v134 + 8))(v24, v52);
      v56 = sub_226E97AE8(v53, v55, &v136);

      *(v43 + 14) = v56;
      _os_log_impl(&dword_226E8E000, v45, v46, "Handshaking with %{public}s matching %{public}s...", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v44, -1, -1);
      v57 = v43;
      a6 = v105;
      v58 = v106;
      MEMORY[0x22AA9A450](v57, -1, -1);
    }

    else
    {
      v58 = a1;

      (*(v134 + 8))(v24, v133);
      (*(v130 + 8))(v30, v131);
    }

    (*(v107 + 8))(v33, v108);
    v63 = v123;
    v64 = v123[18];
    __swift_project_boxed_opaque_existential_0(v123 + 14, v123[17]);
    sub_22766C9A0();
    sub_22766ACB0();
    v65 = v127;
    v66 = v133;
    v109(v127, a6, v133);
    v67 = v126;
    v68 = v131;
    v111(v126, v58, v131);
    v69 = v134;
    v102 = *(v134 + 80);
    v70 = (v102 + 24) & ~v102;
    v71 = v130;
    v103 = *(v130 + 80);
    v104 += v103;
    v72 = (v104 + v70) & ~v103;
    v107 = v102 | v103;
    v73 = swift_allocObject();
    *(v73 + 16) = v63;
    v108 = *(v69 + 32);
    v134 = v69 + 32;
    v108(v73 + v70, v65, v66);
    v130 = *(v71 + 32);
    v74 = v68;
    (v130)(v73 + v72, v67, v68);
    v75 = v115;
    v76 = v114;
    v77 = v116;
    (*(v115 + 16))(v114, v132, v116);
    v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v79 = (v113 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    (*(v75 + 32))(v80 + v78, v76, v77);
    v81 = (v80 + v79);
    *v81 = sub_2275BB18C;
    v81[1] = v73;
    v82 = v123;

    sub_227669270();
    (*(v75 + 8))(v132, v77);
    v83 = v127;
    v84 = v133;
    v109(v127, v105, v133);
    v85 = v126;
    v86 = v74;
    v111(v126, v106, v74);
    v87 = (v102 + 48) & ~v102;
    v88 = (v104 + v87) & ~v103;
    v89 = swift_allocObject();
    v90 = v124;
    v89[2] = v82;
    v89[3] = v90;
    v91 = v120;
    v89[4] = v119;
    v89[5] = v91;
    v108(v89 + v87, v83, v84);
    (v130)(v89 + v88, v85, v86);
    v92 = swift_allocObject();
    *(v92 + 16) = sub_2275BB294;
    *(v92 + 24) = v89;
    v94 = v121;
    v93 = v122;
    v95 = v118;
    v96 = v128;
    (*(v121 + 16))(v118, v128, v122);
    v97 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v98 = (v117 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = swift_allocObject();
    (*(v94 + 32))(v99 + v97, v95, v93);
    v100 = (v99 + v98);
    *v100 = sub_22732067C;
    v100[1] = v92;

    swift_unknownObjectRetain();
    sub_227669270();
    return (*(v94 + 8))(v96, v93);
  }

  else
  {
    v59 = sub_227665A60();
    sub_2275BB6AC(&qword_27D7BD250, MEMORY[0x277D51BF0]);
    v60 = swift_allocError();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x277D51BB0], v59);
    *(swift_allocObject() + 16) = v60;
    return sub_227669280();
  }
}

uint64_t sub_2275B966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v65 = a5;
  v66 = a6;
  v53 = a4;
  v55 = a3;
  v51 = a2;
  v7 = sub_227668BB0();
  v62 = *(v7 - 8);
  v63 = v7;
  v64 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_227665350();
  v9 = *(v54 - 8);
  v58 = *(v9 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_227669A70();
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBB78, &qword_22767BC10);
  v57 = *(v61 - 8);
  v59 = *(v57 + 64);
  v15 = MEMORY[0x28223BE20](v61);
  v56 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v48 - v17;
  v18 = sub_22766A790();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v23 = *(a1 + 104);
  v24 = *(a1 + 96);
  swift_getObjectType();
  sub_22766A780();
  sub_2276699D0();
  (*(v19 + 8))(v22, v18);
  swift_getObjectType();
  v25 = v49;
  (*(v11 + 104))(v14, *MEMORY[0x277D4EC70], v49);
  v26 = v53;
  v67 = sub_227668BA0();
  v68 = v27;
  sub_227667670();
  sub_227669610();

  (*(v11 + 8))(v14, v25);
  v28 = v52;
  v29 = v54;
  (*(v9 + 16))(v52, v65, v54);
  v30 = v62;
  v31 = v60;
  v32 = v26;
  v33 = v63;
  (*(v62 + 16))(v60, v32, v63);
  v34 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v35 = v30;
  v36 = (v58 + *(v30 + 80) + v34) & ~*(v30 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v50;
  (*(v9 + 32))(v37 + v34, v28, v29);
  (*(v35 + 32))(v37 + v36, v31, v33);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2275BB4D0;
  *(v38 + 24) = v37;
  v39 = v56;
  v40 = v57;
  v41 = v48;
  v42 = v61;
  (*(v57 + 16))(v56, v48, v61);
  v43 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v44 = (v59 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  (*(v40 + 32))(v45 + v43, v39, v42);
  v46 = (v45 + v44);
  *v46 = sub_2275BB5B4;
  v46[1] = v38;

  sub_227669270();
  return (*(v40 + 8))(v41, v42);
}

void sub_2275B9C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a4;
  v22 = a3;
  v5 = sub_227667670();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227665350();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - v17;
  (*(v11 + 16))(v14, v22, v10);
  (*(v6 + 16))(v9, v23, v5);
  sub_227668710();
  swift_storeEnumTagMultiPayload();
  v19 = *(a2 + 152);
  v25 = v24;
  v26 = v18;
  v27 = a2;

  os_unfair_lock_lock((v19 + 24));
  v20 = v28;
  sub_2275BB6F4((v19 + 16));
  os_unfair_lock_unlock((v19 + 24));
  if (v20)
  {
    __break(1u);
  }

  else
  {

    sub_226E97D1C(v18, &qword_27D7BD6D0, &qword_22768C440);
  }
}

void sub_2275B9EC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD6D0, &qword_22768C440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  *&v13[-v9] = a1;
  swift_storeEnumTagMultiPayload();
  v11 = *(a2 + 152);
  v14 = a3;
  v15 = v10;
  v16 = a2;
  v12 = a1;

  os_unfair_lock_lock((v11 + 24));
  sub_2275BAF90((v11 + 16));
  os_unfair_lock_unlock((v11 + 24));
  if (v3)
  {
    __break(1u);
  }

  else
  {

    sub_226E97D1C(v10, &qword_27D7BD6D0, &qword_22768C440);
  }
}

uint64_t sub_2275B9FE0(uint64_t a1)
{
  v3 = sub_227668BB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *v1;
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_227668720();

  return sub_227669270();
}

uint64_t sub_2275BA138()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD5E0, &unk_227684C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF5A8, &qword_22768C438);
  sub_227669280();
  (*(v2 + 16))(v5, v7, v1);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  (*(v2 + 32))(v10 + v9, v5, v1);
  v11 = (v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = sub_2275B7110;
  v11[1] = 0;
  sub_227669270();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_2275BA344@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_227662060();
    if (v10)
    {
      v11 = sub_227662090();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_227662080();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_227662060();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_227662090();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_227662080();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2275BA59C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275BA600(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2275BA678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = *a1;
  *(v7 + 48) = v6;

  swift_unknownObjectRetain();

  return sub_227669270();
}

void sub_2275BA738(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 2);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  *&v8 = v10;
  BYTE8(v8) = 0;
  a1(&v8);

  sub_226EB4548(v7, 0);
}

uint64_t sub_2275BA7DC(uint64_t a1, void *a2)
{
  v55 = a2;
  v54 = sub_227662750();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v52);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v46 = v2;
    v64 = MEMORY[0x277D84F90];
    sub_226F20828(0, v11, 0);
    v13 = -1 << *(a1 + 32);
    v61 = a1 + 64;
    v62 = v64;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v51 = (v4 + 8);
    v50 = *MEMORY[0x277D51BA0];
    v47 = a1 + 72;
    v48 = v11;
    v49 = a1;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v18 = v14 >> 6;
      if ((*(v61 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      v19 = *(a1 + 36);
      v56 = v15;
      v57 = v19;
      v20 = *(a1 + 56);
      v60 = *(v7 + 72);
      sub_2275BA59C(v20 + v60 * v14, v10);
      v21 = v55[5];
      v59 = v55[6];
      v58 = __swift_project_boxed_opaque_existential_0(v55 + 2, v21);
      v22 = v53;
      sub_227662720();
      v23 = v10;
      v24 = v52;
      v25 = *(v52 + 24);
      sub_227662680();
      v27 = v26;
      (*v51)(v22, v54);
      v28 = *(v23 + *(v24 + 28));
      v29 = sub_227665A60();
      sub_2275BB6AC(&qword_27D7BD250, MEMORY[0x277D51BF0]);
      v30 = v7;
      v31 = swift_allocError();
      (*(*(v29 - 8) + 104))(v32, v50, v29);
      v63[3] = &type metadata for GuestPairingVerifierAnalyticsEvent;
      v63[4] = sub_2275BACB4();
      v33 = swift_allocObject();
      v63[0] = v33;
      v33[2] = v27;
      v33[3] = 0;
      v33[4] = v28;
      v33[5] = v31;
      sub_227669B60();
      __swift_destroy_boxed_opaque_existential_0(v63);
      v34 = v62;
      v64 = v62;
      v36 = *(v62 + 16);
      v35 = *(v62 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_226F20828(v35 > 1, v36 + 1, 1);
        v34 = v64;
      }

      *(v34 + 16) = v36 + 1;
      v37 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v62 = v34;
      result = sub_2275BAD08(v23, v34 + v37 + v36 * v60);
      a1 = v49;
      v16 = 1 << *(v49 + 32);
      if (v14 >= v16)
      {
        goto LABEL_24;
      }

      v38 = *(v61 + 8 * v18);
      if ((v38 & (1 << v14)) == 0)
      {
        goto LABEL_25;
      }

      if (v57 != *(v49 + 36))
      {
        goto LABEL_26;
      }

      v7 = v30;
      v10 = v23;
      v39 = v38 & (-2 << (v14 & 0x3F));
      if (v39)
      {
        v16 = __clz(__rbit64(v39)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v17 = v48;
      }

      else
      {
        v40 = v23;
        v41 = v18 << 6;
        v42 = v18 + 1;
        v43 = (v47 + 8 * v18);
        v17 = v48;
        while (v42 < (v16 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_226EB526C(v14, v57, 0);
            v16 = __clz(__rbit64(v44)) + v41;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v14, v57, 0);
LABEL_19:
        v10 = v40;
      }

      v15 = v56 + 1;
      v14 = v16;
      if (v56 + 1 == v17)
      {
        return v62;
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

unint64_t sub_2275BACB4()
{
  result = qword_27D7BF5B0;
  if (!qword_27D7BF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF5B0);
  }

  return result;
}

uint64_t sub_2275BAD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}