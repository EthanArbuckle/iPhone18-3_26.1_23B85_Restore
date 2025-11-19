uint64_t sub_22708760C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v78 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v51 - v8;
  v76 = sub_2276624A0();
  v10 = *(v76 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v76);
  v73 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v51 - v14;
  v61 = sub_227663180();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v61);
  v70 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v18) = *(a1 + 32);
  v19 = v18 & 0x3F;
  v20 = ((1 << v18) + 63) >> 6;
  v21 = 8 * v20;

  if (v19 > 0xD)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v52 = v20;
    v53 = v3;
    v51[1] = v51;
    MEMORY[0x28223BE20](v22);
    v56 = v51 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v56, v21);
    v62 = 0;
    v20 = 0;
    v23 = *(a1 + 56);
    v54 = a1 + 56;
    v24 = 1 << *(a1 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & v23;
    v27 = (v24 + 63) >> 6;
    v64 = (v10 + 6);
    v65 = v16 + 16;
    v57 = (v10 + 4);
    v74 = a2 + 56;
    v72 = v10 + 2;
    v77 = (v10 + 1);
    v63 = (v16 + 8);
    v21 = v76;
    v3 = v61;
    v66 = v27;
    v55 = a1;
    v58 = v10;
    v59 = v9;
    v75 = a2;
    v67 = v16;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v69 = (v26 - 1) & v26;
LABEL_15:
      v31 = v28 | (v20 << 6);
      v32 = *(a1 + 48);
      v33 = *(v16 + 72);
      v68 = v31;
      (*(v16 + 16))(v70, v32 + v33 * v31, v3);
      sub_227663160();
      if ((*v64)(v9, 1, v21) == 1)
      {
        sub_226E97D1C(v9, &unk_27D7BB570, &unk_227670FC0);
        goto LABEL_7;
      }

      (*v57)(v15, v9, v21);
      v34 = *(a2 + 16);
      v60 = v77 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v34 && (v35 = *(a2 + 40), sub_227087D1C(&qword_28139BDE0, MEMORY[0x277CC9260]), v36 = sub_22766BF50(), v37 = -1 << *(a2 + 32), v38 = v36 & ~v37, ((*(v74 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
      {
        v39 = v15;
        v71 = ~v37;
        v40 = v10[9];
        v41 = v10[2];
        while (1)
        {
          v42 = v76;
          v43 = v73;
          v41(v73, *(v75 + 48) + v40 * v38, v76);
          sub_227087D1C(&qword_28139BDD8, MEMORY[0x277CC9260]);
          v44 = sub_22766BFB0();
          v45 = *v77;
          (*v77)(v43, v42);
          if (v44)
          {
            break;
          }

          v38 = (v38 + 1) & v71;
          if (((*(v74 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            a2 = v75;
            v21 = v76;
            a1 = v55;
            v15 = v39;
            v3 = v61;
            v45(v15, v76);
            goto LABEL_22;
          }
        }

        v15 = v39;
        v21 = v76;
        v45(v39, v76);
        a2 = v75;
        a1 = v55;
        v10 = v58;
        v9 = v59;
        v3 = v61;
LABEL_7:
        v16 = v67;
        (*v63)(v70, v3);
        v27 = v66;
        v26 = v69;
      }

      else
      {
        (*v77)(v15, v21);
LABEL_22:
        (*v63)(v70, v3);
        v16 = v67;
        *&v56[(v68 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v68;
        v46 = __OFADD__(v62++, 1);
        v10 = v58;
        v9 = v59;
        v27 = v66;
        v26 = v69;
        if (v46)
        {
          goto LABEL_30;
        }
      }
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v27)
      {
        v47 = sub_22726B078(v56, v52, v62, a1);

        goto LABEL_28;
      }

      v30 = *(v54 + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v69 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v50 = swift_slowAlloc();

  v47 = sub_227086898(v50, v20, a1, a2);

  MEMORY[0x22AA9A450](v50, -1, -1);

LABEL_28:
  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t sub_227087D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227087DA8(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A55C0, MEMORY[0x277D530A8]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227087E3C(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5598, MEMORY[0x277D53450]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227087ED0(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5508, MEMORY[0x277D53BA0]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227087F64(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5540, MEMORY[0x277D538B8]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227087FF8(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A56B0, MEMORY[0x277D52498]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22708808C(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5560, MEMORY[0x277D53708]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227088120(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A54F0, MEMORY[0x277D53C88]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2270881B4(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A57D8, MEMORY[0x277D502D0]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227088248(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5760, MEMORY[0x277D51068]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2270882DC(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5618, MEMORY[0x277D52D18]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227088370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(uint64_t, void, void, void))
{
  v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v14 = *(a4 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_227670CD0;
  (*(v14 + 16))(v17 + v16, v8, a4);
  a8(v17, v13[1], *(v13 + 16), v13[3]);
}

uint64_t sub_227088484(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A56E0, MEMORY[0x277D51CF0]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2270884DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AssetProgressUpdated()
{
  result = qword_2813A1320;
  if (!qword_2813A1320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227088598()
{
  result = sub_2276624A0();
  if (v1 <= 0x3F)
  {
    result = sub_227663CD0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_227088630()
{
  result = qword_27D7BA108;
  if (!qword_27D7BA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA108);
  }

  return result;
}

unint64_t sub_227088684(uint64_t a1)
{
  result = sub_2270886AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2270886AC()
{
  result = qword_27D7BA110;
  if (!qword_27D7BA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA110);
  }

  return result;
}

uint64_t sub_227088700()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EF10(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EF10((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_227088808(uint64_t a1)
{
  sub_22766D370();
  sub_227667100();
  sub_227088BAC(&qword_27D7BA120, MEMORY[0x277D52B58]);
  sub_22766BF60();
  v2 = *(a1 + 20);
  sub_227665C20();
  sub_227088BAC(&qword_27D7BA128, MEMORY[0x277D51CB0]);
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_2270888F4(uint64_t a1, uint64_t a2)
{
  sub_227667100();
  sub_227088BAC(&qword_27D7BA120, MEMORY[0x277D52B58]);
  sub_22766BF60();
  v3 = *(a2 + 20);
  sub_227665C20();
  sub_227088BAC(&qword_27D7BA128, MEMORY[0x277D51CB0]);
  return sub_22766BF60();
}

uint64_t sub_2270889C8(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_227667100();
  sub_227088BAC(&qword_27D7BA120, MEMORY[0x277D52B58]);
  sub_22766BF60();
  v3 = *(a2 + 20);
  sub_227665C20();
  sub_227088BAC(&qword_27D7BA128, MEMORY[0x277D51CB0]);
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_227088AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x22AA933D0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return MEMORY[0x2821B1FF8](a1 + v6, a2 + v6);
}

uint64_t type metadata accessor for WorkoutPlanScheduleResult()
{
  result = qword_27D7BA130;
  if (!qword_27D7BA130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227088BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227088C1C()
{
  result = sub_227667100();
  if (v1 <= 0x3F)
  {
    result = sub_227665C20();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_227088CB0()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = v1[14];
  v8 = v1[15];
  swift_getObjectType();
  sub_22766A020();
  v9 = v1[26];
  swift_allocObject();
  swift_weakInit();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v12);
  swift_allocObject();
  swift_weakInit();
  sub_227089A90();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v12);
  swift_allocObject();
  swift_weakInit();
  sub_227089B7C();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v12);
  sub_22766A500();
  swift_allocObject();
  swift_weakInit();
  sub_2276699E0();

  __swift_destroy_boxed_opaque_existential_0(v12);
  sub_22766A570();
  swift_allocObject();
  swift_weakInit();
  sub_2276699E0();

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_227089020(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA148, &qword_2276782B8) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270890BC, 0, 0);
}

uint64_t sub_2270890BC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227089210;
    v4 = v0[6];

    return sub_226EA84C8(v4);
  }

  else
  {
    v6 = v0[6];
    v7 = sub_2276658F0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_226E97D1C(v6, &qword_27D7BA148, &qword_2276782B8);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_227089210()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227089D00, 0, 0);
}

uint64_t sub_227089328(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA148, &qword_2276782B8) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270893C4, 0, 0);
}

uint64_t sub_2270893C4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227089518;
    v4 = v0[6];

    return sub_226EA84C8(v4);
  }

  else
  {
    v6 = v0[6];
    v7 = sub_2276658F0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_226E97D1C(v6, &qword_27D7BA148, &qword_2276782B8);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_227089518()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227089630, 0, 0);
}

uint64_t sub_227089630()
{
  v1 = *(v0 + 48);
  v2 = sub_2276658F0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_226E97D1C(v1, &qword_27D7BA148, &qword_2276782B8);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2270896F0()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 21);
  v2 = v0[26];

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  sub_226E97D1C(v0 + OBJC_IVAR____TtC15SeymourServices27ContentAvailabilityObserver_previousContentAvailability, &qword_27D7BA148, &qword_2276782B8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ContentAvailabilityObserver()
{
  result = qword_28139E5C8;
  if (!qword_28139E5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2270897C4()
{
  sub_227089898();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_227089898()
{
  if (!qword_2813A56F8)
  {
    sub_2276658F0();
    v0 = sub_22766CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A56F8);
    }
  }
}

uint64_t sub_2270898F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA148, &qword_2276782B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227089960(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227089020(a1, v1);
}

uint64_t sub_2270899F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227089020(a1, v1);
}

unint64_t sub_227089A90()
{
  result = qword_28139A468[0];
  if (!qword_28139A468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28139A468);
  }

  return result;
}

uint64_t sub_227089AE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227089020(a1, v1);
}

unint64_t sub_227089B7C()
{
  result = qword_28139A158[0];
  if (!qword_28139A158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28139A158);
  }

  return result;
}

uint64_t sub_227089BD0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227089020(a1, v1);
}

uint64_t sub_227089C68(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_227089328(a1, v1);
}

uint64_t SQLiteDatabaseHandle.fetchResult(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_227089D2C, 0, 0);
}

uint64_t sub_227089D2C()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v1;

  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v2;
  v6[3] = sub_22708A320;
  v6[4] = v5;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA150, &qword_227678328);
  *v8 = v0;
  v8[1] = sub_227089E98;
  v10 = v0[2];

  return MEMORY[0x2822008A0](v10, 0, 0, 0x2865747563657865, 0xEE00293A68746977, sub_22708AC80, v6, v9);
}

uint64_t sub_227089E98()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227089FE0, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_227089FE0()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

sqlite3_stmt *sub_22708A04C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = sub_22708A340(a2, a3);
  if (!v4)
  {
    v8 = result;
    v9 = sqlite3_step(result);
    v10 = sub_2273946A4(v9);
    if (!v10)
    {
      sub_22706F95C();
      swift_allocError();
      *v22 = xmmword_227678310;
      *(v22 + 16) = 2;
      return swift_willThrow();
    }

    if (v10 != 1)
    {
      a4[3] = &type metadata for NoDatabaseResult;
      result = sub_22708AF88();
      a4[4] = result;
      return result;
    }

    v11 = sqlite3_reset(v8);
    sub_2273946A4(v11);
    v12 = sqlite3_column_count(v8);
    if ((v12 & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
      if (!v12)
      {
LABEL_16:
        v23 = type metadata accessor for SQLiteDatabaseResult();
        v24 = swift_allocObject();
        v24[2] = a1;
        v24[3] = v8;
        v24[4] = v13;
        a4[3] = v23;
        a4[4] = sub_226E9EC40(&qword_27D7BA170, type metadata accessor for SQLiteDatabaseResult);
        *a4 = v24;
      }

      v14 = v12;
      v27 = MEMORY[0x277D84F90];
      sub_226F1EF90(0, v12, 0);
      v15 = 0;
      v13 = v27;
      while (sqlite3_column_name(v8, v15))
      {
        v16 = sub_22766C140();
        v28 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          v26 = v16;
          v21 = v17;
          sub_226F1EF90(v18 > 1, v19 + 1, 1);
          v17 = v21;
          v16 = v26;
          v13 = v28;
        }

        ++v15;
        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        if (v14 == v15)
        {
          goto LABEL_16;
        }
      }
    }

    sub_22766CE20();

    v25 = sub_22766D140();
    MEMORY[0x22AA98450](v25);

    result = sub_22766CFB0();
    __break(1u);
  }

  return result;
}

uint64_t sub_22708A340(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = sub_2272BBF9C(a1, a2, sub_22708AFDC);
  sub_2273946A4(v4);
  if (!v3)
  {
    v2 = 0;
    sub_22706F95C();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22708A4B8@<X0>(char *zSql@<X0>, sqlite3_stmt **ppStmt@<X5>, uint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>, _DWORD *a6@<X8>)
{
  v8 = *(a3 + 16);
  if ((a5 & 0x1000000000000000) != 0)
  {
    v11 = *(a3 + 16);
    v12 = ppStmt;
    v13 = sub_22766C160();
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    v9 = v13;
    ppStmt = v12;
    v8 = v11;
  }

  else
  {
    if ((a5 & 0x2000000000000000) != 0)
    {
LABEL_6:
      v9 = HIBYTE(a5) & 0xF;
      goto LABEL_7;
    }

    v9 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  result = sqlite3_prepare_v2(v8, zSql, v9, ppStmt, 0);
  *a6 = result;
  return result;
}

uint64_t sub_22708A560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a3;
  v7 = sub_22766B3B0();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B3F0();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA158, &qword_227678330);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v25 - v19;
  v25[1] = *(a2 + 32);
  (*(v16 + 16))(v25 - v19, a1, v15, v18);
  v21 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v25[0];
  *(v22 + 3) = a4;
  *(v22 + 4) = a2;
  (*(v16 + 32))(&v22[v21], v20, v15);
  aBlock[4] = sub_22708AD44;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_10;
  v23 = _Block_copy(aBlock);

  sub_22766B3D0();
  v29 = MEMORY[0x277D84F90];
  sub_226E9EC40(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v14, v10, v23);
  _Block_release(v23);
  (*(v28 + 8))(v10, v7);
  (*(v26 + 8))(v14, v27);
}

uint64_t sub_22708A8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a3;
  v7 = sub_22766B3B0();
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B3F0();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA160, &qword_227678338);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v24 - v18;
  v24[1] = *(a2 + 32);
  (*(v16 + 16))(v24 - v18, a1, v15);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v24[0];
  *(v21 + 3) = a4;
  *(v21 + 4) = a2;
  (*(v16 + 32))(&v21[v20], v19, v15);
  aBlock[4] = sub_22708AEE8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_11;
  v22 = _Block_copy(aBlock);

  sub_22766B3D0();
  v28 = MEMORY[0x277D84F90];
  sub_226E9EC40(&qword_2813A5870, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v14, v10, v22);
  _Block_release(v22);
  (*(v27 + 8))(v10, v7);
  (*(v25 + 8))(v14, v26);
}

uint64_t sub_22708AC8C(void (*a1)(uint64_t *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  a1(&v4, *(a3 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA158, &qword_227678330);
  sub_22766C450();
}

uint64_t sub_22708AD6C(void (*a1)(uint64_t *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  a1(v5, *(a3 + 16));
  sub_226E91B50(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA160, &qword_227678338);
  sub_22766C450();
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t objectdestroy_4Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  v9 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22708AF10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, char *))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return a3(v5, v6, v7, v8);
}

unint64_t sub_22708AF88()
{
  result = qword_27D7BA168;
  if (!qword_27D7BA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA168);
  }

  return result;
}

uint64_t sub_22708B000(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_226F5E0B4(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_22708B024(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_226EDC420(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

id sub_22708B07C(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x22AA991A0](j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_22766CD20();
  }

  return result;
}

uint64_t sub_22708B1D0(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v22 = a2;
  v24 = a5(0);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = v21 - v10;
  v26 = a1;
  v12 = a4 + 56;
  v13 = 1 << *(a4 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a4 + 56);
  v16 = (v13 + 63) >> 6;
  v21[1] = v8 + 16;
  v23 = (v8 + 8);
  v25 = a4;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
      v20 = v24;
LABEL_9:
      (*(v8 + 16))(v11, *(v25 + 48) + *(v8 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v20);
      v22(&v26, v11);
      if (v5)
      {
        break;
      }

      v15 &= v15 - 1;
      result = (*v23)(v11, v20);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    (*v23)(v11, v20);
  }

  else
  {
LABEL_5:
    v20 = v24;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        return v26;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22708B3F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_22766ABE0();
    sub_22708B454(v1);
  }

  return result;
}

uint64_t sub_22708B454(char a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state);
  if (v12)
  {
    v13 = sub_22766C4B0();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v12;
    *(v14 + 40) = a1;

    sub_2272CA940(0, 0, v11, &unk_2276784D0, v14);
  }

  else
  {
    sub_22766A770();
    v16 = sub_22766B380();
    v17 = sub_22766C890();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "Trying to load new stores when persistent store is inactive. This is unexpected.", v18, 2u);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_22708B690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_226E92F34;

  return sub_2274D094C(a5);
}

uint64_t sub_22708B72C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_directory;
  v3 = sub_2276624A0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_dataProtectionMonitor));
  v4 = *(v0 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_eventHub);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_subscriptionToken);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_transactionCoordinator));
  v6 = *(v0 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_monitors);

  v7 = *(v0 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state);

  return v0;
}

uint64_t sub_22708B7F4()
{
  sub_22708B72C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PersistenceStore()
{
  result = qword_2813A3188;
  if (!qword_2813A3188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22708B8A0()
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

uint64_t sub_22708B98C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22708B9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22708BA40()
{
  v13 = *MEMORY[0x277D85DE8];
  v1[14] = v0;
  v2 = sub_22766C940();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = sub_22766CA10();
  v1[18] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v7 = *(*(sub_22766B3F0() - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v8 = sub_22766B390();
  v1[21] = v8;
  v9 = *(v8 - 8);
  v1[22] = v9;
  v10 = *(v9 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22708BBF0, 0, 0);
}

uint64_t sub_22708BBF0()
{
  v74 = v0;
  v73[1] = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v2 = [objc_opt_self() defaultManager];
  v3 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_directory;
  v4 = sub_2276623E0();
  v0[12] = 0;
  v5 = [v2 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:v0 + 12];

  v6 = v0[12];
  v7 = v0[14];
  if (v5)
  {
    v71 = v0 + 7;
    v72 = v0 + 2;
    v8 = v0[24];
    v9 = v6;
    sub_22766A770();

    v10 = sub_22766B380();
    v11 = sub_22766C8B0();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[24];
    v14 = v0[21];
    v15 = v0[22];
    if (v12)
    {
      v68 = v0[21];
      v16 = swift_slowAlloc();
      v70 = v1;
      v17 = swift_slowAlloc();
      v73[0] = v17;
      *v16 = 136315138;
      v18 = sub_227662390();
      v20 = sub_226E97AE8(v18, v19, v73);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_226E8E000, v10, v11, "Activating persistence store in path: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      v21 = v17;
      v1 = v70;
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);

      (*(v15 + 8))(v13, v68);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    v38 = v0[20];
    v40 = v0[17];
    v39 = v0[18];
    v41 = v0[16];
    v66 = v0[19];
    v67 = v0[15];
    v42 = v0[14];
    v69 = sub_227431B60(v1 + v3, *(v42 + 16));
    sub_226E91B50(v42 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_dataProtectionMonitor, v72);
    sub_226E91B50(v42 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_transactionCoordinator, v71);
    v43 = *(v42 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_monitors);
    sub_226E99364(0, &unk_28139D250, 0x277D85C90);

    sub_22766B3D0();
    v0[13] = MEMORY[0x277D84F90];
    sub_22708FC1C(&qword_28139D260, MEMORY[0x277D852D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8B0, &qword_227678490);
    sub_22708FC64();
    sub_22766CC80();
    (*(v41 + 104))(v40, *MEMORY[0x277D85268], v67);
    v44 = sub_22766CA20();
    v45 = type metadata accessor for PersistenceStoreDelegate();
    v0[25] = v45;
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    v48 = swift_allocObject();
    v0[26] = v48;
    swift_defaultActor_initialize();
    v49 = OBJC_IVAR____TtC15SeymourServices24PersistenceStoreDelegate_lock;
    v50 = *MEMORY[0x277D0A920];
    v51 = sub_22766A9D0();
    (*(*(v51 - 8) + 104))(&v48[v49], v50, v51);
    *(v48 + 27) = v69;
    sub_226E91B50(v72, (v48 + 120));
    sub_226E91B50(v71, (v48 + 176));
    *(v48 + 21) = v44;
    sub_226E99364(0, &unk_28139D268, 0x277CBE4A0);
    v52 = qword_2813A2140;
    v53 = v44;
    if (v52 != -1)
    {
      swift_once();
    }

    v62 = sub_2274EE780(word_2813B2670);
    v63 = v0[14];

    __swift_destroy_boxed_opaque_existential_0(v71);
    __swift_destroy_boxed_opaque_existential_0(v72);
    *(v48 + 14) = v62;
    *(v48 + 20) = v43;
    v64 = *(v63 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state);
    *(v63 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state) = v48;

    v65 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_22708C414, v48, 0);
  }

  else
  {
    v22 = v0[23];
    v23 = v6;
    v24 = sub_2276622C0();

    swift_willThrow();
    sub_22766A770();

    v25 = sub_22766B380();
    v26 = sub_22766C890();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[22];
    v28 = v0[23];
    v30 = v0[21];
    if (v27)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v73[0] = v32;
      *v31 = 136315138;
      v33 = sub_227662390();
      v35 = sub_226E97AE8(v33, v34, v73);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_226E8E000, v25, v26, "Failed to create library directory at path: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    (*(v29 + 8))(v28, v30);
    v36 = sub_227664DD0();
    sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51008], v36);
    swift_willThrow();
    v55 = v0[23];
    v54 = v0[24];
    v57 = v0[19];
    v56 = v0[20];
    v58 = v0[17];

    v59 = v0[1];
    v60 = *MEMORY[0x277D85DE8];

    return v59();
  }
}

uint64_t sub_22708C414()
{
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(MEMORY[0x277D0A890] + 4);
  v3 = swift_task_alloc();
  v1[27] = v3;
  v4 = sub_22708FC1C(qword_28139F288, type metadata accessor for PersistenceStoreDelegate);
  *v3 = v1;
  v3[1] = sub_22708C534;
  v6 = v1[25];
  v5 = v1[26];
  v7 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v4, &unk_227678498, v5, v6, v8, v4);
}

void sub_22708C534()
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;

  if (v0)
  {
    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(v2 + 208);
    v7 = *MEMORY[0x277D85DE8];

    MEMORY[0x2822009F8](sub_22708C6AC, v6, 0);
  }
}

uint64_t sub_22708C6AC()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22708C738, 0, 0);
}

uint64_t sub_22708C738()
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_22708C80C()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22708C870(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x2822009F8](sub_22708C894, 0, 0);
}

uint64_t sub_22708C894()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state;
  v3 = *(v1 + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state);
  *(v0 + 24) = v3;
  if (v3)
  {
    v4 = *(v0 + 80);
    v5 = *(v3 + 112);

    v6 = [v5 managedObjectModel];
    *(v0 + 32) = v6;
    v7 = swift_allocObject();
    *(v0 + 40) = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    v8 = *(v1 + v2);
    *(v0 + 48) = v8;
    v9 = v6;
    if (v8)
    {

      v10 = swift_task_alloc();
      *(v0 + 56) = v10;
      *v10 = v0;
      v10[1] = sub_22708CB70;

      return sub_22708D9EC(sub_22708D4BC, v7);
    }

    v14 = sub_227664DD0();
    sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51008], v14);
    swift_willThrow();

    v16 = *(v0 + 24);
  }

  else
  {
    v12 = sub_227664DD0();
    sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D51020], v12);
    swift_willThrow();
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_22708CB70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_22708CD20;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_22708CC98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22708CC98()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  v5 = v0[1];
  v6 = v0[9];

  return v5(v6);
}

uint64_t sub_22708CD20()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = *(v0 + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22708CD9C@<X0>(id a1@<X1>, uint64_t a2@<X0>, char a3@<W2>, void *a4@<X8>)
{
  v8 = [a1 entities];
  sub_226E99364(0, &unk_27D7BA198, 0x277CBE408);
  v9 = sub_22766C2C0();

  v12[2] = a2;
  v13 = a3;
  v10 = sub_22708B07C(MEMORY[0x277D84F90], sub_22708FBFC, v12, v9);

  if (!v4)
  {
    *a4 = v10;
  }

  return result;
}

void sub_22708CE7C(void **a1, void **a2, void *a3)
{
  v29 = a1;
  v6 = sub_227665530();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = *a2;
  v14 = [objc_allocWithZone(MEMORY[0x277CBE428]) init];
  [v14 setEntity_];
  v15 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v16 = *v15;
  v17 = *(v15 + 16);
  if (sub_227669C10())
  {
    v18 = sub_227664DD0();
    sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
    swift_willThrow();
  }

  else
  {
    sub_226E99364(0, &qword_27D7B8770, 0x277CBE438);
    v20 = sub_22766C9D0();
    if (v3)
    {
    }

    else
    {
      v21 = v20;
      v22 = [v13 managedObjectClassName];
      if (v22)
      {
        v23 = v22;
        sub_22766C000();

        v31 = v21;
        sub_22766D140();
        sub_227665520();
        (*(v30 + 16))(v10, v12, v6);
        v24 = v29;
        v25 = *v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2273A65D4(0, v25[2] + 1, 1, v25);
        }

        v27 = v25[2];
        v26 = v25[3];
        if (v27 >= v26 >> 1)
        {
          v25 = sub_2273A65D4(v26 > 1, v27 + 1, 1, v25);
        }

        v28 = v30;
        (*(v30 + 8))(v12, v6);
        v25[2] = v27 + 1;
        (*(v28 + 32))(v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, v10, v6);
        *v24 = v25;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_22708D1E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_22708BA40();
}

uint64_t sub_22708D29C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC15SeymourServices16PersistenceStore_state);
  v0[3] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22708D354, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2(0);
  }
}

uint64_t sub_22708D354()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = sub_226E9D1B4();

  return MEMORY[0x2822009F8](sub_22708D3C0, 0, 0);
}

uint64_t sub_22708D3C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 32);

  return v2(v3);
}

uint64_t sub_22708D424(char a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226F39AF0;

  return sub_22708C870(a1);
}

void sub_22708D4DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA188, &qword_227678470);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_22708FA78;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_11;
  v16 = _Block_copy(aBlock);

  [a3 performBlock_];
  _Block_release(v16);
}

void sub_22708D6AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = sub_22708FB60;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_39;
  v16 = _Block_copy(aBlock);

  [a3 performBlock_];
  _Block_release(v16);
}

uint64_t sub_22708D87C(void (*a1)(uint64_t *__return_ptr))
{
  v2 = MEMORY[0x22AA99A00]();
  a1(&v5);
  v3 = v5;
  objc_autoreleasePoolPop(v2);
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA188, &qword_227678470);
  return sub_22766C450();
}

uint64_t sub_22708D940(void (*a1)(void))
{
  v2 = MEMORY[0x22AA99A00]();
  a1();
  objc_autoreleasePoolPop(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  return sub_22766C450();
}

uint64_t sub_22708D9EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22766B390();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22708DAB0, v2, 0);
}

uint64_t sub_22708DAB0()
{
  v1 = *(MEMORY[0x277D0A890] + 4);
  v2 = swift_task_alloc();
  v0[9] = v2;
  v3 = type metadata accessor for PersistenceStoreDelegate();
  v0[10] = v3;
  v4 = sub_22708FC1C(qword_28139F288, type metadata accessor for PersistenceStoreDelegate);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_22708DBBC;
  v5 = v0[5];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v4, &unk_227678448, v5, v3, v6, v4);
}

void sub_22708DBBC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_22708DCF0, v5, 0);
  }
}

uint64_t sub_22708DCF0()
{
  v1 = [*(*(v0 + 40) + 112) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v3 = sub_22766C2C0();

  if (v3 >> 62)
  {
    v14 = sub_22766CD20();

    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      v5 = *(v0 + 40);
      v6 = swift_task_alloc();
      *(v0 + 96) = v6;
      v7 = *(v0 + 24);
      *(v6 + 16) = v5;
      *(v6 + 24) = v7;
      v8 = *(MEMORY[0x277D0A890] + 4);
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA180, &qword_227678460);
      *v9 = v0;
      v9[1] = sub_22708E014;
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);
      v13 = *(v0 + 40);

      return MEMORY[0x282161508](v0 + 16, &unk_227678458, v6, v11, v10, v12);
    }
  }

  v15 = *(v0 + 64);
  sub_22766A770();
  v16 = sub_22766B380();
  v17 = sub_22766C890();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_226E8E000, v16, v17, "Aborting transaction due to unloaded stores.", v18, 2u);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  v20 = *(v0 + 56);
  v19 = *(v0 + 64);
  v21 = *(v0 + 48);

  (*(v20 + 8))(v19, v21);
  v22 = sub_227664DD0();
  sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51020], v22);
  swift_willThrow();
  v24 = *(v0 + 64);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_22708E014()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_22708E168, v4, 0);
  }

  else
  {
    v5 = v3[12];
    v6 = v3[8];

    v7 = v3[2];

    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_22708E168()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22708E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22766B390();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22708E298, v3, 0);
}

uint64_t sub_22708E298()
{
  v1 = *(MEMORY[0x277D0A890] + 4);
  v2 = swift_task_alloc();
  v0[9] = v2;
  v3 = type metadata accessor for PersistenceStoreDelegate();
  v0[10] = v3;
  v4 = sub_22708FC1C(qword_28139F288, type metadata accessor for PersistenceStoreDelegate);
  v0[11] = v4;
  *v2 = v0;
  v2[1] = sub_22708E3A4;
  v5 = v0[5];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282161508](v4, &unk_2276784A8, v5, v3, v6, v4);
}

void sub_22708E3A4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    MEMORY[0x2822009F8](sub_22708E4D8, v5, 0);
  }
}

uint64_t sub_22708E4D8()
{
  v1 = [*(*(v0 + 40) + 112) persistentStoreCoordinator];
  v2 = [v1 persistentStores];

  sub_226E99364(0, &qword_281398AC8, 0x277CBE4D0);
  v3 = sub_22766C2C0();

  if (v3 >> 62)
  {
    v15 = sub_22766CD20();

    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v4)
    {
LABEL_3:
      v5 = *(v0 + 40);
      v6 = swift_task_alloc();
      *(v0 + 96) = v6;
      v7 = *(v0 + 24);
      *(v6 + 16) = v5;
      *(v6 + 24) = v7;
      v8 = *(MEMORY[0x277D0A890] + 4);
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      *v9 = v0;
      v9[1] = sub_22708E7F0;
      v10 = *(v0 + 80);
      v11 = *(v0 + 88);
      v12 = *(v0 + 40);
      v13 = *(v0 + 16);
      v14 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282161508](v13, &unk_2276784B8, v6, v10, v14, v11);
    }
  }

  v16 = *(v0 + 64);
  sub_22766A770();
  v17 = sub_22766B380();
  v18 = sub_22766C890();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_226E8E000, v17, v18, "Aborting transaction due to unloaded stores.", v19, 2u);
    MEMORY[0x22AA9A450](v19, -1, -1);
  }

  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = *(v0 + 48);

  (*(v21 + 8))(v20, v22);
  v23 = sub_227664DD0();
  sub_22708FC1C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51020], v23);
  swift_willThrow();
  v25 = *(v0 + 64);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_22708E7F0()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_22708E168, v4, 0);
  }

  else
  {
    v5 = v3[12];
    v6 = v3[8];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_22708E93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22708E95C, a2, 0);
}

uint64_t sub_22708E95C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = *(v3 + 112);
  v5 = sub_226E9D1B4();
  v6 = swift_allocObject();
  v0[7] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;

  v7 = [v4 newBackgroundContext];
  v0[8] = v7;
  [v7 setMergePolicy_];
  *(swift_task_alloc() + 16) = v7;
  sub_226E99364(0, &qword_281398A90, 0x277CBE440);
  v8 = v7;
  sub_22766C9C0();

  v9 = v0[2];
  v0[9] = v9;
  v10 = *(v3 + 160);
  v0[10] = v10;
  v11 = swift_allocObject();
  v0[11] = v11;
  *(v11 + 16) = sub_22708FD7C;
  *(v11 + 24) = v6;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  *(v11 + 48) = v5;
  *(v11 + 56) = v10;
  *(v11 + 64) = v9;
  *(v11 + 72) = v8;
  v12 = v8;
  v13 = v9;
  v14 = v12;
  v15 = v13;
  swift_bridgeObjectRetain_n();
  v16 = v14;
  v17 = v15;

  return MEMORY[0x2822009F8](sub_22708EB38, 0, 0);
}

uint64_t sub_22708EB38()
{
  v1 = v0[5].i64[1];
  v2 = swift_task_alloc();
  v0[6].i64[0] = v2;
  v2[1] = vextq_s8(v0[4], v0[4], 8uLL);
  v2[2].i64[0] = sub_22708FDF8;
  v2[2].i64[1] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_22708EC4C;
  v5 = v0[1].i64[1];
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22708FE24, v2, v6);
}

uint64_t sub_22708EC4C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22708EE08;
    v5 = 0;
  }

  else
  {
    v6 = v2[11];
    v7 = v2[12];
    v8 = v2[4];

    v4 = sub_22708ED7C;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22708ED7C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22708EE08()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[4];

  return MEMORY[0x2822009F8](sub_22708EE7C, v3, 0);
}

uint64_t sub_22708EE7C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_22708EF04(void *a1, void *a2, char a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v14[3] = &type metadata for PersistenceHandle;
  v14[4] = &off_283A9AF78;
  v10 = swift_allocObject();
  v14[0] = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = a1;
  v12 = a2;

  a5(v14);
  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t sub_22708EFCC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 128) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  return MEMORY[0x2822009F8](sub_22708EFF4, v4, 0);
}

uint64_t sub_22708EFF4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 128);
  v4 = *(v0 + 40);
  v5 = [*(v0 + 32) newBackgroundContext];
  *(v0 + 64) = v5;
  [v5 setMergePolicy_];
  *(swift_task_alloc() + 16) = v5;
  sub_226E99364(0, &qword_281398A90, 0x277CBE440);
  v6 = v5;
  sub_22766C9C0();

  v7 = *(v0 + 16);
  *(v0 + 72) = v7;
  v8 = *(v2 + 160);
  *(v0 + 80) = v8;
  v9 = swift_allocObject();
  *(v0 + 88) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v1;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = v3;
  *(v9 + 56) = v8;
  *(v9 + 64) = v7;
  *(v9 + 72) = v6;
  v10 = v6;
  v11 = v7;
  v12 = v10;
  v13 = v11;
  swift_bridgeObjectRetain_n();
  v14 = v12;
  v15 = v13;

  return MEMORY[0x2822009F8](sub_22708F190, 0, 0);
}

uint64_t sub_22708F190()
{
  v1 = v0[5].i64[1];
  v2 = swift_task_alloc();
  v0[6].i64[0] = v2;
  v2[1] = vextq_s8(v0[4], v0[4], 8uLL);
  v2[2].i64[0] = sub_22708FA40;
  v2[2].i64[1] = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6].i64[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA180, &qword_227678460);
  *v4 = v0;
  v4[1] = sub_22708F2B0;

  return MEMORY[0x2822008A0](&v0[1].u64[1], 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_22708FA6C, v2, v5);
}

uint64_t sub_22708F2B0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_22708F478;
    v5 = 0;
  }

  else
  {
    v6 = v2[11];
    v7 = v2[12];
    v8 = v2[7];

    v2[15] = v2[3];
    v4 = sub_22708F3F0;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22708F3F0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[15];

  return v4(v5);
}

uint64_t sub_22708F478()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_22708F4EC, v3, 0);
}

uint64_t sub_22708F4EC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

uint64_t sub_22708F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22708F590, a2, 0);
}

uint64_t sub_22708F590()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0[3] + 112);
  v4 = sub_226E9D1B4();
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_22708F690;
  v7 = v0[3];

  return sub_22708EFCC(v3, v4, sub_22708F990, v5);
}

uint64_t sub_22708F690(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_226F73F68;
  }

  else
  {
    v9 = v4[6];
    v10 = v4[3];

    v4[9] = a1;
    v8 = sub_22708F7D0;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_22708F7F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_22708F570(a1, v4, v5, v6);
}

uint64_t sub_22708F8BC@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t *__return_ptr, uint64_t *)@<X4>, void *a6@<X8>)
{
  v17[3] = &type metadata for PersistenceHandle;
  v17[4] = &off_283A9AF78;
  v13 = swift_allocObject();
  v17[0] = v13;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = a1;
  v15 = a2;

  a5(&v18, v17);
  result = __swift_destroy_boxed_opaque_existential_0(v17);
  if (!v6)
  {
    *a6 = v18;
  }

  return result;
}

void *sub_22708F9C8@<X0>(void *(*a1)(void **__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X7>, void *a7@<X8>)
{
  result = a1(&v11, a2, a3, a4, a5);
  if (!v7)
  {
    sub_227125B34(a6);
    result = v11;
    *a7 = v11;
  }

  return result;
}

void *sub_22708FA40@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 64);
  return sub_22708F9C8(*(v1 + 16), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 72), a1);
}

uint64_t objectdestroy_29Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22708FB88(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t sub_22708FC1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22708FC64()
{
  result = qword_28139D2D0;
  if (!qword_28139D2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BC8B0, &qword_227678490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D2D0);
  }

  return result;
}

uint64_t sub_22708FCC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22708E93C(a1, v4, v5, v6);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22708FE30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_226E92F34;

  return sub_22708B690(a1, v4, v5, v6, v7);
}

uint64_t sub_22708FF78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22708FFD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_227090024(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v1, 0);
  v2 = v28;
  v4 = -1 << *(a1 + 32);
  v27 = a1 + 56;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v26 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + v6);
    result = sub_2276637A0();
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      v25 = result;
      sub_226F1EF90(v14 > 1, v15 + 1, 1);
      v13 = v24;
      result = v25;
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = result;
    *(v16 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v27 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v9 = v26;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_226EB526C(v6, v11, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
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

void sub_227090248(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226EBF9F4;
  *(v7 + 24) = v6;
  v9[4] = sub_2270931E8;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_227093A90;
  v9[3] = &block_descriptor_12;
  v8 = _Block_copy(v9);

  [a3 addFinishBlock_];
  _Block_release(v8);
}

void sub_227090358(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226EB438C;
  *(v7 + 24) = v6;
  v9[4] = sub_2270934F0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_227093A90;
  v9[3] = &block_descriptor_72;
  v8 = _Block_copy(v9);

  [a3 addFinishBlock_];
  _Block_release(v8);
}

void sub_227090468(uint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
  }

  else if (a1)
  {
    v6 = swift_unknownObjectRetain();
    a3(v6, 0);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_22766CFB0();
    __break(1u);
  }
}

void sub_22709055C(void *a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);
    v6 = a2;

LABEL_4:

    return;
  }

  if (a1)
  {
    v8 = a1;
    a3(a1, 0);
    v6 = v8;

    goto LABEL_4;
  }

  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_227090658()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v2 = v0[8];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2270906D4()
{
  if (*(v0 + 64))
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      *(swift_allocObject() + 16) = v1;
      swift_unknownObjectRetain();

      return sub_227669270();
    }

    v6 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0]);
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D50090], v6);
    *(swift_allocObject() + 16) = v7;
  }

  else
  {
    v3 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0]);
    v4 = swift_allocError();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D50080], v3);
    *(swift_allocObject() + 16) = v4;
  }

  return sub_227669280();
}

void sub_22709093C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226EB496C;
  *(v7 + 24) = v6;
  v9[4] = sub_2270931F8;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_22718CCBC;
  v9[3] = &block_descriptor_42;
  v8 = _Block_copy(v9);

  [a3 performMaintenanceWithCompletion_];
  _Block_release(v8);
}

void sub_227090A4C(void *a1, void (*a2)(void *, void))
{
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766D420();
  a2(v4, v5);
  sub_226EB4548(v4, v5);
}

uint64_t sub_227090AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1A8, &qword_227678660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v31 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v13 + 8))(v16, v12);
  v17 = *(v3 + 64);
  if (v17)
  {
    v18 = *(v3 + 64);
    swift_unknownObjectRetain();
    sub_227090024(a1);
    v19 = sub_22766C2B0();

    v20 = [v17 resetIDForTopics:v19 options:{0, v31[0]}];

    *(swift_allocObject() + 16) = v20;
    v21 = v20;
    sub_227669270();
    v22 = swift_allocObject();
    *(v22 + 16) = nullsub_1;
    *(v22 + 24) = 0;
    (*(v6 + 16))(v9, v11, v5);
    v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    (*(v6 + 32))(v25 + v23, v9, v5);
    v26 = (v25 + v24);
    *v26 = sub_2270931B8;
    v26[1] = v22;

    sub_227669270();

    swift_unknownObjectRelease();
    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    v28 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D50080], v28);
    *(swift_allocObject() + 16) = v29;
    return sub_227669280();
  }
}

void sub_227090F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_227662750();
  if ((*(*(v11 - 8) + 48))(a3, 1, v11) == 1)
  {

    v12 = sub_227149604(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B8, &qword_227678668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    v14 = *MEMORY[0x277D28760];
    *(inited + 32) = *MEMORY[0x277D28760];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
    sub_226EDDC60(a3, boxed_opaque_existential_0);

    v16 = v14;
    v12 = sub_227149604(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &qword_27D7BA1C0, &qword_227678670);
  }

  v17 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v17;
  sub_227093510(v12, sub_2270930C4, 0, isUniquelyReferenced_nonNull_native, aBlock);

  sub_2276637A0();
  v19 = sub_22766BFD0();

  type metadata accessor for MTIDOptionKey(0);
  sub_22709329C(&qword_27D7B8210, type metadata accessor for MTIDOptionKey);
  v20 = sub_22766BE90();

  v21 = swift_allocObject();
  *(v21 + 16) = sub_226ECCE0C;
  *(v21 + 24) = v10;
  aBlock[4] = sub_2270937F0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227093A90;
  aBlock[3] = &block_descriptor_87;
  v22 = _Block_copy(aBlock);

  [a5 queryIDForTopic:v19 type:1 options:v20 completion:v22];
  _Block_release(v22);
}

uint64_t sub_22709125C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v22[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = v22 - v11;
  v13 = *(v5 + 64);
  if (v13)
  {
    sub_226EDDC60(a2, v22 - v11);
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    sub_226EDDCD0(v12, v16 + v14);
    *(v16 + v15) = v5;
    v17 = v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = v13;
    *(v17 + 8) = a1;
    swift_unknownObjectRetain();

    return sub_227669270();
  }

  else
  {
    v19 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0]);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D50080], v19);
    *(swift_allocObject() + 16) = v20;

    return sub_227669280();
  }
}

void sub_2270914B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_227662750();
  if ((*(*(v11 - 8) + 48))(a3, 1, v11) == 1)
  {

    v12 = sub_227149604(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B8, &qword_227678668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    v14 = *MEMORY[0x277D28760];
    *(inited + 32) = *MEMORY[0x277D28760];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
    sub_226EDDC60(a3, boxed_opaque_existential_0);

    v16 = v14;
    v12 = sub_227149604(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &qword_27D7BA1C0, &qword_227678670);
  }

  v17 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v17;
  sub_227093510(v12, sub_2270930C4, 0, isUniquelyReferenced_nonNull_native, aBlock);

  sub_2276637A0();
  v19 = sub_22766BFD0();

  type metadata accessor for MTIDOptionKey(0);
  sub_22709329C(&qword_27D7B8210, type metadata accessor for MTIDOptionKey);
  v20 = sub_22766BE90();

  v21 = swift_allocObject();
  *(v21 + 16) = sub_227093A78;
  *(v21 + 24) = v10;
  aBlock[4] = sub_227093A74;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227093A90;
  aBlock[3] = &block_descriptor_116;
  v22 = _Block_copy(aBlock);

  [a5 queryIDForTopic:v19 type:2 options:v20 completion:v22];
  _Block_release(v22);
}

void sub_2270917D0(uint64_t a1, id a2, void (*a3)(id, uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 0, 1);
    v6 = a2;
LABEL_3:

    return;
  }

  if (!a1)
  {
    v11 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0]);
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D50058], v11);
    a3(v12, 0, 1);
    v6 = v12;
    goto LABEL_3;
  }

  v7 = [swift_unknownObjectRetain() idString];
  v8 = sub_22766C000();
  v10 = v9;

  a3(v8, v10, 0);
  swift_unknownObjectRelease();
}

uint64_t sub_227091960(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v19 - v8;
  v10 = *(v2 + 64);
  if (v10)
  {
    sub_226EDDC60(a2, &v19 - v8);
    v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v12 = (v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    sub_226EDDCD0(v9, v13 + v11);
    *(v13 + v12) = v2;
    v14 = v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = v10;
    *(v14 + 8) = a1;
    sub_227665E60();
    swift_unknownObjectRetain();

    return sub_227669270();
  }

  else
  {
    v16 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0]);
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D50080], v16);
    *(swift_allocObject() + 16) = v17;
    sub_227665E60();

    return sub_227669280();
  }
}

void sub_227091BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_227662750();
  if ((*(*(v10 - 8) + 48))(a3, 1, v10) == 1)
  {
    v11 = sub_227149604(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B8, &qword_227678668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    v13 = *MEMORY[0x277D28760];
    *(inited + 32) = *MEMORY[0x277D28760];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
    sub_226EDDC60(a3, boxed_opaque_existential_0);
    v15 = v13;
    v11 = sub_227149604(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &qword_27D7BA1C0, &qword_227678670);
  }

  v16 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v16;
  sub_227093510(v11, sub_2270930C4, 0, isUniquelyReferenced_nonNull_native, aBlock);

  sub_2276637A0();
  v18 = sub_22766BFD0();

  type metadata accessor for MTIDOptionKey(0);
  sub_22709329C(&qword_27D7B8210, type metadata accessor for MTIDOptionKey);
  v19 = sub_22766BE90();

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  aBlock[4] = sub_227093824;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_227092244;
  aBlock[3] = &block_descriptor_99;
  v21 = _Block_copy(aBlock);

  [a5 IDFieldsForTopic:v18 options:v19 completion:v21];
  _Block_release(v21);
}

uint64_t sub_227091EC4(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BBD00, &unk_227684CE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v27 - v11);
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_15;
    }

    v28 = sub_227664820();
    v29 = v14;
    sub_22766CDA0();
    if (*(a1 + 16))
    {
      v15 = sub_226E9BF6C(v30);
      if (v16)
      {
        sub_226E97CC0(*(a1 + 56) + 32 * v15, v31);
        sub_226E9B62C(v30);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_15;
        }

        v28 = sub_227664800();
        v29 = v17;
        sub_22766CDA0();
        if (*(a1 + 16))
        {
          v18 = sub_226E9BF6C(v30);
          if (v19)
          {
            sub_226E97CC0(*(a1 + 56) + 32 * v18, v31);
            sub_226E9B62C(v30);
            if (swift_dynamicCast())
            {
              v12 = v10;
              v31[0] = sub_227664810();
              v31[1] = v20;
              sub_22766CDA0();
              if (*(a1 + 16) && (v21 = sub_226E9BF6C(v30), (v22 & 1) != 0))
              {
                sub_226E97CC0(*(a1 + 56) + 32 * v21, v31);
                sub_226E9B62C(v30);
                swift_dynamicCast();
              }

              else
              {
                sub_226E9B62C(v30);
              }

              sub_227665E40();
              goto LABEL_16;
            }

LABEL_15:
            v23 = sub_2276636A0();
            sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0]);
            v24 = swift_allocError();
            (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D50078], v23);
            *v12 = v24;
LABEL_16:
            swift_storeEnumTagMultiPayload();
            goto LABEL_17;
          }
        }
      }
    }

    sub_226E9B62C(v30);
    goto LABEL_15;
  }

  *v12 = a2;
  swift_storeEnumTagMultiPayload();
  v13 = a2;
LABEL_17:
  a3(v12);
  return sub_226E97D1C(v12, &unk_27D7BBD00, &unk_227684CE0);
}

uint64_t sub_227092244(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_2270922F0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v69 = a1;
  v68 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v67 = *(v6 - 8);
  v65 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v57 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD640, &unk_227684CD0);
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v64);
  v11 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v70 = *(v4 + 64);
  if (v70)
  {
    v21 = v4;
    v60 = v20;
    v61 = v19;
    v62 = &v57 - v18;
    v22 = sub_227662750();
    v23 = (*(*(v22 - 8) + 48))(a2, 1, v22);
    v63 = a2;
    v59 = v13;
    v58 = v9;
    if (v23 == 1)
    {
      swift_unknownObjectRetain();
      v24 = sub_227149604(MEMORY[0x277D84F90]);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B8, &qword_227678668);
      inited = swift_initStackObject();
      v30 = MEMORY[0x277D28760];
      *(inited + 16) = xmmword_227670CD0;
      v31 = v15;
      v32 = *v30;
      v57 = v14;
      *(inited + 32) = v32;
      *(inited + 64) = v6;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
      sub_226EDDC60(a2, boxed_opaque_existential_0);
      swift_unknownObjectRetain();
      v34 = v32;
      v15 = v31;
      v24 = sub_227149604(inited);
      swift_setDeallocating();
      v14 = v57;
      sub_226E97D1C(inited + 32, &qword_27D7BA1C0, &qword_227678670);
    }

    v35 = *(v21 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v35;
    sub_227093510(v24, sub_2270930C4, 0, isUniquelyReferenced_nonNull_native, &v71);

    sub_2276637A0();
    v37 = sub_22766BFD0();

    type metadata accessor for MTIDOptionKey(0);
    sub_22709329C(&qword_27D7B8210, type metadata accessor for MTIDOptionKey);
    v38 = sub_22766BE90();

    v39 = [v70 IDFieldsForTopic:v37 options:v38];

    *(swift_allocObject() + 16) = v39;
    sub_2270932EC();
    v40 = v59;
    sub_227669270();
    v41 = swift_allocObject();
    *(v41 + 16) = sub_227092ADC;
    *(v41 + 24) = 0;
    v42 = v64;
    (*(v8 + 16))(v11, v40, v64);
    v43 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v44 = (v58 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    (*(v8 + 32))(v45 + v43, v11, v42);
    v46 = (v45 + v44);
    *v46 = sub_227093338;
    v46[1] = v41;
    v47 = v42;
    v48 = v62;
    sub_227669270();
    (*(v8 + 8))(v40, v47);
    v49 = v66;
    sub_226EDDC60(v63, v66);
    v50 = (*(v67 + 80) + 17) & ~*(v67 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = v69;
    sub_226EDDCD0(v49, v51 + v50);
    v52 = v61;
    (*(v15 + 16))(v61, v48, v14);
    v53 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v54 = (v60 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    (*(v15 + 32))(v55 + v53, v52, v14);
    v56 = (v55 + v54);
    *v56 = sub_227093368;
    v56[1] = v51;
    sub_227669270();
    swift_unknownObjectRelease();
    return (*(v15 + 8))(v48, v14);
  }

  else
  {
    v25 = sub_2276636A0();
    sub_22709329C(&qword_28139BCC0, MEMORY[0x277D500E0]);
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D50080], v25);
    *(swift_allocObject() + 16) = v26;

    return sub_227669280();
  }
}

void sub_227092ADC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v11[0] = 0;
  v4 = [objc_opt_self() dataWithJSONObject:v3 options:0 error:v11];
  v5 = v11[0];
  if (v4)
  {
    v6 = sub_227662590();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    v9 = v5;
    sub_2276622C0();

    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_227092BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34[-v7];
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16) == 1)
  {
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = *a1;
    sub_22766A740();
    sub_226EDDC60(a3, v8);
    v18 = v15;
    v19 = sub_22766B380();
    v20 = sub_22766C890();
    sub_2270934D8(v15, v16, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37 = v16;
      v22 = v21;
      v36 = swift_slowAlloc();
      v40 = v36;
      *v22 = 136446722;
      v23 = sub_2276637A0();
      v35 = v20;
      v25 = sub_226E97AE8(v23, v24, &v40);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2082;
      v26 = sub_22766CB80();
      v28 = v27;
      sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
      v29 = sub_226E97AE8(v26, v28, &v40);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2082;
      swift_getErrorValue();
      v30 = MEMORY[0x22AA995D0](v38, v39);
      v32 = sub_226E97AE8(v30, v31, &v40);

      *(v22 + 24) = v32;
      _os_log_impl(&dword_226E8E000, v19, v35, "Failed to get identifier for topic: %{public}s, date: %{public}s, error: %{public}s", v22, 0x20u);
      v33 = v36;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v33, -1, -1);
      MEMORY[0x22AA9A450](v22, -1, -1);

      sub_2270934D8(v15, v37, 1);
    }

    else
    {

      sub_2270934D8(v15, v16, 1);
      sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
    }

    return (*(v10 + 8))(v14, v9);
  }

  return result;
}

uint64_t sub_227092EF4()
{
  v1 = *v0;
  v2 = *__swift_project_boxed_opaque_existential_0((*v0 + 24), *(*v0 + 48));
  v3 = [objc_allocWithZone(MEMORY[0x277D28768]) initWithAMSBag_];
  swift_unknownObjectRelease();
  v4 = *(v1 + 64);
  *(v1 + 64) = v3;

  return swift_unknownObjectRelease();
}

id sub_2270930C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_226E97CC0((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

uint64_t sub_227093114(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  swift_unknownObjectRetain();

  return sub_227669270();
}

uint64_t sub_227093200(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_227669270();
}

uint64_t sub_22709329C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2270932EC()
{
  result = qword_28139D2B0;
  if (!qword_28139D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D2B0);
  }

  return result;
}

uint64_t sub_227093368(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_227092BC0(a1, v4, v5);
}

uint64_t sub_227093410(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_2270934D8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_226EDC420(a1, a2);
  }
}

unint64_t sub_227093510(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_2274E85AC(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_226F04970(v43, v41);
  v13 = *a5;
  result = sub_226F49208(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_226FE609C(v19, a4 & 1);
    v21 = *a5;
    result = sub_226F49208(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for MTIDOptionKey(0);
    result = sub_22766D220();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_226FF1EA4();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_226F04970(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_226F04970(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_2274E85AC(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_226F04970(v43, v41);
        v31 = *a5;
        result = sub_226F49208(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_226FE609C(v35, 1);
          v36 = *a5;
          result = sub_226F49208(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_0(v30);
          sub_226F04970(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_226F04970(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_2274E85AC(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_226EBB21C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);

  v10 = *(v0 + v8);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v8 + 9, v2 | 7);
}

uint64_t sub_227093980(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = (v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = *(v10 + 8);

  return a3(a1, a2, v3 + v7, v9, v11, v12);
}

uint64_t sub_227093A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(a2 - 8);
  v4[9] = v5;
  v6 = *(v5 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = sub_22766B390();
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();
  v10 = sub_227665680();
  v4[15] = v10;
  v11 = *(v10 - 8);
  v4[16] = v11;
  v12 = *(v11 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227093C10, 0, 0);
}

uint64_t sub_227093C10()
{
  if (qword_28139B7F8 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v15 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_28139B800);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = *(v15 + 16);
  v14 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_227093DB0;
  v8 = v0[17];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];

  return v14(v11, v8, v12, v9);
}

uint64_t sub_227093DB0()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *v1;
  v6[19] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227093F78, 0, 0);
  }

  else
  {
    v7 = v6[17];
    v8 = v6[14];
    v9 = v6[10];
    v10 = v6[11];

    v11 = v6[1];

    return v11();
  }
}

uint64_t sub_227093F78()
{
  v39 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  sub_22766A730();
  v6 = *(v4 + 16);
  v6(v2, v3, v5);
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();
  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  if (v9)
  {
    v36 = *(v0 + 152);
    v37 = *(v0 + 96);
    v14 = *(v0 + 72);
    v15 = *(v0 + 80);
    v35 = v8;
    v16 = *(v0 + 48);
    log = v7;
    v17 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v33;
    *v17 = 136446210;
    v6(v15, v12, v16);
    v18 = sub_22766C060();
    v19 = v10;
    v21 = v20;
    (*(v14 + 8))(v12, v16);
    v22 = sub_226E97AE8(v18, v21, &v38);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_226E8E000, log, v35, "Failed to fetch default restriction for zone provider: %{public}s. Using unrestricted restriction.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v11 + 8))(v19, v37);
  }

  else
  {
    v23 = *(v0 + 72);
    v24 = *(v0 + 48);

    (*(v23 + 8))(v12, v24);
    (*(v11 + 8))(v10, v13);
  }

  v25 = *(v0 + 40);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = *(v0 + 136);
  v28 = *(v0 + 112);
  v30 = *(v0 + 80);
  v29 = *(v0 + 88);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22709422C@<X0>(uint64_t a1@<X8>)
{
  v35 = sub_227662A90();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_227668A20();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v27 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276627D0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662A10();
  v15 = *(v14 + 16);
  if (v15)
  {
    v26[1] = v13;
    v26[2] = v1;
    v26[3] = a1;
    v36 = MEMORY[0x277D84F90];
    sub_226F1FFA8(0, v15, 0);
    v16 = v36;
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v26[0] = v14;
    v20 = v14 + v19;
    v30 = *(v17 + 56);
    v31 = v18;
    v28 = v7 + 32;
    v29 = (v17 - 8);
    v21 = v27;
    v32 = v7;
    v33 = v17;
    do
    {
      v22 = v35;
      v31(v6, v20, v35);
      sub_227662A70();
      sub_227662A80();
      sub_227662A60();
      sub_227668A10();
      (*v29)(v6, v22);
      v36 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1FFA8(v23 > 1, v24 + 1, 1);
        v21 = v27;
        v16 = v36;
      }

      *(v16 + 16) = v24 + 1;
      (*(v32 + 32))(v16 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v24, v21, v34);
      v20 += v30;
      --v15;
    }

    while (v15);
  }

  sub_227662A20();
  sub_227662A30();
  return sub_2276686A0();
}

uint64_t sub_227094564()
{
  v0 = sub_227669910();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v1 + 104))(v4, *MEMORY[0x277D4E0D8], v0);
  sub_227669660();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_227094670(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22766B390();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227094730, 0, 0);
}

uint64_t sub_227094730()
{
  v1 = v0[8];
  sub_22766A620();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Received Up Next Queue Item Update. Sending Event.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  (*(v6 + 8))(v5, v7);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2270948CC;

    return sub_227094A10();
  }

  else
  {
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2270948CC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F9E114, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_227094A10()
{
  v1[2] = v0;
  v2 = sub_22766A150();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227094AD0, 0, 0);
}

uint64_t sub_227094AD0()
{
  v1 = *(v0 + 16);
  v2 = v1[8];
  __swift_project_boxed_opaque_existential_0(v1 + 4, v1[7]);
  v3 = *(v2 + 24);

  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_227094C34;
  v6 = *(v0 + 16);

  return v8();
}

uint64_t sub_227094C34()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_227094E18;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_227094D50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227094D50()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  swift_getObjectType();
  sub_22766A140();
  sub_2276699D0();
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_227094E18()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_227094EA8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_226F73E2C;

    return sub_227094A10();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227094F90()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22709500C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_22766B390();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1C8, &qword_2276786E0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_227664AA0();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = sub_2276653B0();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270951EC, 0, 0);
}

uint64_t sub_2270951EC()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[17];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v46 = *(v3 + 72);
    v43 = v0[13];
    v5 = (v43 + 32);
    v44 = MEMORY[0x277D84F90];
    v6 = v4;
    v7 = *(v1 + 16);
    do
    {
      v8 = v0[21];
      v9 = v0[19];
      v10 = v0[16];
      sub_227095D0C(v6, v8);
      sub_227095D70(v8, v9);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = *v5;
        (*v5)(v0[15], v0[19], v0[12]);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v12 = v44;
        }

        else
        {
          v12 = sub_2273A65FC(0, v44[2] + 1, 1, v44);
        }

        v14 = v12[2];
        v13 = v12[3];
        if (v14 >= v13 >> 1)
        {
          v12 = sub_2273A65FC(v13 > 1, v14 + 1, 1, v12);
        }

        v15 = v0[15];
        v16 = v0[12];
        v12[2] = v14 + 1;
        v44 = v12;
        v11(v12 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v14, v15, v16);
      }

      else
      {
        sub_227095DD4(v0[19]);
      }

      v6 += v46;
      --v7;
    }

    while (v7);
    v17 = v0[13];
    v18 = (v17 + 56);
    v19 = (v17 + 48);
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = v0[20];
      v22 = v0[18];
      v23 = v0[16];
      sub_227095D0C(v4, v21);
      sub_227095D70(v21, v22);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v25 = v0[18];
      v26 = v0[11];
      if (EnumCaseMultiPayload == 1)
      {
        (*v18)(v0[11], 1, 1, v0[12]);
        sub_227095DD4(v25);
      }

      else
      {
        v27 = v0[12];
        (*v5)(v0[11], v0[18], v27);
        (*v18)(v26, 0, 1, v27);
      }

      v28 = v0[11];
      v29 = v0[12];
      if ((*v19)(v28, 1, v29) == 1)
      {
        sub_226E97D1C(v28, &qword_27D7BA1C8, &qword_2276786E0);
      }

      else
      {
        v30 = *v5;
        (*v5)(v0[14], v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2273A65FC(0, *(v20 + 2) + 1, 1, v20);
        }

        v32 = *(v20 + 2);
        v31 = *(v20 + 3);
        if (v32 >= v31 >> 1)
        {
          v20 = sub_2273A65FC(v31 > 1, v32 + 1, 1, v20);
        }

        v33 = v0[14];
        v34 = v0[12];
        *(v20 + 2) = v32 + 1;
        v30(&v20[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v32], v33, v34);
      }

      v4 += v46;
      --v2;
    }

    while (v2);
    v35 = v44;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
    v20 = MEMORY[0x277D84F90];
  }

  v36 = v0[7];
  v37 = v36[8];
  __swift_project_boxed_opaque_existential_0(v36 + 4, v36[7]);
  v38 = swift_allocObject();
  v0[22] = v38;
  v38[2] = v35;
  v38[3] = v36;
  v38[4] = v20;
  v39 = *(v37 + 24);

  v45 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  v0[23] = v41;
  *v41 = v0;
  v41[1] = sub_2270956AC;

  return v45();
}

uint64_t sub_2270956AC()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_227095A2C;
  }

  else
  {
    v4 = sub_2270957DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2270957DC()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 56) + 88), *(*(v0 + 56) + 112));
  sub_2271D7EE8();
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_227095884;
  v3 = *(v0 + 56);

  return sub_227094A10();
}

uint64_t sub_227095884()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227095AEC, 0, 0);
  }

  else
  {
    v5 = v3[20];
    v4 = v3[21];
    v7 = v3[18];
    v6 = v3[19];
    v9 = v3[14];
    v8 = v3[15];
    v10 = v3[10];
    v11 = v3[11];

    v12 = v3[1];

    return v12();
  }
}

uint64_t sub_227095A2C()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[10];
  v7 = v0[11];

  v9 = v0[1];
  v10 = v0[24];

  return v9();
}

uint64_t sub_227095AEC()
{
  v32 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 80);
  sub_22766A730();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 72);
    v30 = *(v0 + 80);
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v0 + 32);
    v14 = sub_22766D250();
    v16 = sub_226E97AE8(v14, v15, &v31);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to perform index maintenance with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v30, v8);
  }

  else
  {
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);

    (*(v18 + 8))(v17, v19);
  }

  v21 = *(v0 + 160);
  v20 = *(v0 + 168);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v27 = *(v0 + 80);
  v26 = *(v0 + 88);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_227095D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276653B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227095D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276653B0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227095DD4(uint64_t a1)
{
  v2 = sub_2276653B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227095E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v43 = a3;
  v51 = a1;
  v6 = sub_22766B390();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227664AA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v49 = v10;
  v50 = a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    v20 = *(v10 + 16);
    v18 = v10 + 16;
    v19 = v20;
    v21 = v50 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v22 = *(v18 + 56);
    v23 = (v18 - 8);
    while (1)
    {
      v19(v16, v21, v9, v14);
      sub_226F7587C(v16, v51);
      if (v4)
      {
        return (*v23)(v16, v9);
      }

      (*v23)(v16, v9);
      v21 += v22;
      if (!--v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v24 = *__swift_project_boxed_opaque_existential_0((v43 + 88), *(v43 + 112));
    v25 = v51;
    result = sub_2270970C4(v50, v51);
    if (!v4)
    {
      v27 = *(v42 + 16);
      if (v27)
      {
        v28 = v48;
        v48 = *(v49 + 16);
        v49 += 16;
        v29 = *(v49 + 64);
        v45 = (v29 + 32) & ~v29;
        v46 = v29;
        v30 = v42 + v45;
        v50 = *(v49 + 56);
        v44 = xmmword_227670CD0;
        v47 = (v49 - 8);
        do
        {
          v31 = v48;
          (v48)(v28, v30, v9);
          v32 = __swift_project_boxed_opaque_existential_0(v25, v25[3]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84A8, &qword_227670D00);
          v33 = v45;
          v34 = swift_allocObject();
          *(v34 + 16) = v44;
          v35 = v34 + v33;
          v36 = v34;
          v31(v35, v28, v9);
          sub_227555964(v36, v32[1], *(v32 + 16), v32[3]);

          (*v47)(v28, v9);
          v25 = v51;
          v30 += v50;
          --v27;
        }

        while (v27);
      }

      v37 = *__swift_project_boxed_opaque_existential_0((v43 + 88), *(v43 + 112));
      return sub_2271DCA5C(v42, v25);
    }
  }

  return result;
}

uint64_t sub_227096314@<X0>(void *a1@<X0>, char **a2@<X8>)
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
    sub_2270972C4(&v32, sub_227097B34, sub_2270974C0);

    *a2 = v32;
    return result;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_227096648(void *a1)
{
  v97 = sub_22766B390();
  v95 = *(v97 - 8);
  v2 = *(v95 + 64);
  MEMORY[0x28223BE20](v97);
  v96 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v113 = &v92 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1D0, &qword_2276786F8);
  v7 = *(*(v109 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v109);
  v107 = (&v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  *&v108 = &v92 - v10;
  v11 = sub_227664AA0();
  v110 = *(v11 - 8);
  v12 = *(v110 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v92 - v16;
  v18 = a1[3];
  v98 = a1;
  v19 = __swift_project_boxed_opaque_existential_0(a1, v18);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = v19[3];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8EA8, &unk_227678700);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = v20;
  v29 = v21;

  sub_22766A070();
  *(v27 + 16) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = v22;
  *(v27 + 40) = v23;
  v30 = v112;
  v31 = sub_2272343B8(100);
  v32 = v30;
  if (v30)
  {
    swift_setDeallocating();

    v33 = *(v27 + 40);

    v34 = qword_2813B2078;
    v35 = sub_22766A100();
    (*(*(v35 - 8) + 8))(v27 + v34, v35);
    v36 = *(*v27 + 48);
    v37 = *(*v27 + 52);
    return swift_deallocClassInstance();
  }

  v39 = v31;
  v112 = v17;
  v94 = v15;
  v106 = v11;
  swift_setDeallocating();

  v40 = *(v27 + 40);

  v41 = qword_2813B2078;
  v42 = sub_22766A100();
  (*(*(v42 - 8) + 8))(v27 + v41, v42);
  v43 = *(*v27 + 48);
  v44 = *(*v27 + 52);
  swift_deallocClassInstance();
  v45 = *(v39 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v47 = sub_2274CDA24(*(v39 + 16), 0);
    v48 = sub_2274CEE34(v114, &v47[(*(v110 + 80) + 32) & ~*(v110 + 80)], v45, v39);
    v32 = v114[2];
    v111 = v114[4];

    sub_226EBB21C();
    v49 = v106;
    if (v48 != v45)
    {
      goto LABEL_29;
    }

    v32 = v30;
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
    v49 = v106;
  }

  v114[0] = v47;
  sub_2270972C4(v114, sub_227098518, sub_227097768);

  v50 = v114[0];
  v51 = v114[0][2];
  if (v51)
  {
    v93 = 0;
    v114[0] = v46;
    sub_226F1F7E8(0, v51, 0);
    v52 = 0;
    v53 = v114[0];
    v54 = v110;
    v102 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v101 = v50 + v102;
    v100 = v110 + 16;
    v99 = v110 + 32;
    v55 = v50[2];
    v104 = v50;
    v105 = v55;
    v56 = v109;
    v32 = v108;
    v57 = v112;
    v103 = v51;
    while (v105 != v52)
    {
      if (v52 >= v50[2])
      {
        goto LABEL_27;
      }

      v58 = *(v56 + 48);
      v112 = *(v54 + 72);
      (*(v54 + 16))(&v32[v58], &v101[v112 * v52], v49);
      v59 = v32;
      v60 = v107;
      *v107 = v52;
      v61 = v60 + *(v56 + 48);
      v111 = *(v54 + 32);
      v111(v61, &v59[v58], v49);
      v62 = sub_227662750();
      (*(*(v62 - 8) + 56))(v113, 1, 1, v62);
      sub_227664A60();
      sub_226E97D1C(v113, &qword_27D7B9690, qword_227670B50);
      sub_226E97D1C(v60, &qword_27D7BA1D0, &qword_2276786F8);
      v63 = v53;
      v114[0] = v53;
      v64 = v49;
      v66 = v53[2];
      v65 = v53[3];
      if (v66 >= v65 >> 1)
      {
        sub_226F1F7E8(v65 > 1, v66 + 1, 1);
        v63 = v114[0];
      }

      ++v52;
      v63[2] = v66 + 1;
      v53 = v63;
      v111(v63 + v102 + v66 * v112, v57, v64);
      v50 = v104;
      v49 = v64;
      v56 = v109;
      v54 = v110;
      v32 = v108;
      if (v103 == v52)
      {

        v32 = v93;
        v67 = v53;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

    v67 = MEMORY[0x277D84F90];
    v54 = v110;
LABEL_16:
    v68 = v94;
    v69 = v98;
    v113 = *(v67 + 2);
    if (!v113)
    {
    }

    v70 = 0;
    v111 = (v54 + 16);
    v112 = (v54 + 8);
    v108 = xmmword_227670CD0;
    v109 = v67;
    while (v70 < *(v67 + 2))
    {
      v71 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v72 = v32;
      v73 = *(v110 + 16);
      v73(v68, &v67[v71 + *(v110 + 72) * v70], v106);
      v74 = __swift_project_boxed_opaque_existential_0(v69, v69[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84A8, &qword_227670D00);
      v75 = swift_allocObject();
      *(v75 + 16) = v108;
      v76 = v75 + v71;
      v77 = v106;
      v73(v76, v68, v106);
      v78 = v72;
      sub_227555964(v75, v74[1], *(v74 + 16), v74[3]);
      v32 = v72;
      if (v72)
      {
        v79 = v96;
        sub_22766A770();
        v80 = v78;
        v81 = sub_22766B380();
        v82 = sub_22766C8B0();

        v83 = os_log_type_enabled(v81, v82);
        v84 = v97;
        v85 = v95;
        if (v83)
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v114[0] = v87;
          *v86 = 136315138;
          swift_getErrorValue();
          v88 = sub_22766D250();
          v90 = sub_226E97AE8(v88, v89, v114);

          *(v86 + 4) = v90;
          _os_log_impl(&dword_226E8E000, v81, v82, "ERROR: %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x22AA9A450](v87, -1, -1);
          v91 = v86;
          v77 = v106;
          MEMORY[0x22AA9A450](v91, -1, -1);

          (*(v85 + 8))(v96, v97);
        }

        else
        {

          (*(v85 + 8))(v79, v84);
        }

        swift_willThrow();

        return (*v112)(v94, v77);
      }

      ++v70;
      (*v112)(v68, v77);
      v69 = v98;
      v67 = v109;
      if (v113 == v70)
      {
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2270970C4(uint64_t a1, unint64_t a2)
{
  v21 = a2;
  v26 = sub_227664AA0();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v27 = MEMORY[0x277D84F90];
  sub_226F1EF90(0, v6, 0);
  v7 = v27;
  if (v6)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v23 = *(v8 + 56);
    v24 = v9;
    v22 = (v8 - 8);
    do
    {
      v11 = v25;
      v12 = v26;
      v13 = v8;
      v24(v25, v10, v26);
      v14 = sub_227664A30();
      v16 = v15;
      (*v22)(v11, v12);
      v27 = v7;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F1EF90(v17 > 1, v18 + 1, 1);
        v7 = v27;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v10 += v23;
      --v6;
      v8 = v13;
    }

    while (v6);
  }

  sub_2272D7D2C(1, v7, v21);
}

uint64_t sub_2270972C4(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_227664AA0() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_22711787C(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_227097384(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_227097384(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_22766D130();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227664AA0();
        v10 = sub_22766C380();
        *(v10 + 16) = v9;
      }

      v11 = *(sub_227664AA0() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_2270974C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_227664AA0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v34 - v12;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v48 = &v34 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v20 = *(v18 + 56);
    v45 = (v18 - 8);
    v46 = v19;
    v47 = v18;
    v42 = (v18 + 16);
    v43 = v17;
    v21 = (v17 + v20 * (a3 - 1));
    v41 = -v20;
    v22 = a1 - a3;
    v35 = v20;
    v23 = v17 + v20 * a3;
LABEL_5:
    v39 = v21;
    v40 = a3;
    v37 = v23;
    v38 = v22;
    v50 = v22;
    v24 = v21;
    while (1)
    {
      v25 = v48;
      v26 = v46;
      (v46)(v48, v23, v8, v15);
      v27 = v49;
      v26(v49, v24, v8);
      v28 = sub_227664A50();
      v29 = sub_227664A50();
      v30 = *v45;
      (*v45)(v27, v8);
      v30(v25, v8);
      if (v28 >= v29)
      {
LABEL_4:
        a3 = v40 + 1;
        v21 = &v39[v35];
        v22 = v38 - 1;
        v23 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v23, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v24, v32, v8);
      v24 += v41;
      v23 += v41;
      if (__CFADD__(v50++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_227097768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v58 = sub_227662750();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v58);
  v57 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v47 - v12;
  v13 = sub_227664AA0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  result = MEMORY[0x28223BE20](v17);
  v23 = &v47 - v21;
  v49 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v26 = *(v22 + 16);
    v25 = v22 + 16;
    v27 = *(v25 + 56);
    v54 = v13;
    v55 = (v8 + 8);
    v63 = (v25 - 8);
    v64 = v26;
    v65 = v25;
    v28 = v24 + v27 * (a3 - 1);
    v59 = -v27;
    v60 = (v25 + 16);
    v29 = a1 - a3;
    v61 = v24;
    v48 = v27;
    v30 = v24 + v27 * a3;
    v66 = &v47 - v21;
LABEL_5:
    v52 = v28;
    v53 = a3;
    v50 = v30;
    v51 = v29;
    while (1)
    {
      v31 = v64;
      v64(v23, v30, v13);
      v31(v19, v28, v13);
      v32 = sub_227664A50();
      if (v32 == sub_227664A50())
      {
        v33 = v56;
        sub_227664A80();
        v34 = v19;
        v35 = v57;
        sub_227664A80();
        v36 = sub_2276626C0();
        v37 = *v55;
        v38 = v35;
        v39 = v58;
        (*v55)(v38, v58);
        v40 = v39;
        v19 = v34;
        v23 = v66;
        v37(v33, v40);
        v13 = v54;
      }

      else
      {
        v41 = sub_227664A50();
        v36 = v41 < sub_227664A50();
      }

      v42 = *v63;
      (*v63)(v19, v13);
      result = (v42)(v23, v13);
      if ((v36 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v28 = v52 + v48;
        v29 = v51 - 1;
        v30 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v43 = *v60;
      v44 = v62;
      (*v60)(v62, v30, v13);
      swift_arrayInitWithTakeFrontToBack();
      v45 = v44;
      v23 = v66;
      result = (v43)(v28, v45, v13);
      v28 += v59;
      v30 += v59;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_227097B34(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v119 = a1;
  v9 = sub_227664AA0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v123 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v133 = &v116 - v13;
  MEMORY[0x28223BE20](v14);
  v139 = &v116 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v138 = &v116 - v19;
  v20 = a3[1];
  v128 = v17;
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v119;
    if (!*v119)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v128;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v22 = sub_2271171D0(v22);
    }

    v141 = v22;
    v112 = *(v22 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v22[16 * v112];
        v114 = *&v22[16 * v112 + 24];
        sub_2270992DC(*a3 + *(v9 + 72) * v113, *a3 + *(v9 + 72) * *&v22[16 * v112 + 16], *a3 + *(v9 + 72) * v114, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v114 < v113)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2271171D0(v22);
        }

        if (v112 - 2 >= *(v22 + 2))
        {
          goto LABEL_120;
        }

        v115 = &v22[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v141 = v22;
        sub_227117144(v112 - 1);
        v22 = v141;
        v112 = *(v141 + 2);
        if (v112 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v117 = a4;
  v21 = 0;
  v136 = (v17 + 8);
  v137 = v17 + 16;
  v135 = (v17 + 32);
  v22 = MEMORY[0x277D84F90];
  v121 = a3;
  v140 = v9;
  while (1)
  {
    v129 = v22;
    if (v21 + 1 >= v20)
    {
      v34 = v21 + 1;
    }

    else
    {
      v130 = v20;
      v118 = v6;
      v23 = *a3;
      v120 = v21;
      v24 = v128[9];
      v5 = &v23[v24 * (v21 + 1)];
      v25 = v23;
      v134 = v23;
      v26 = v9;
      v27 = v128[2];
      v28 = v138;
      v27(v138, v5, v26, v18);
      v29 = &v25[v24 * v21];
      v30 = v139;
      v126 = v27;
      (v27)(v139, v29, v26);
      v131 = sub_227664A50();
      v127 = sub_227664A50();
      v31 = v128[1];
      v31(v30, v26);
      v125 = v31;
      v31(v28, v26);
      v32 = v120 + 2;
      v132 = v24;
      v33 = &v134[v24 * (v120 + 2)];
      while (1)
      {
        v34 = v130;
        if (v130 == v32)
        {
          break;
        }

        v35 = v126;
        LODWORD(v134) = v131 < v127;
        v36 = v138;
        v37 = v140;
        (v126)(v138, v33, v140);
        v38 = v139;
        v35(v139, v5, v37);
        v39 = sub_227664A50();
        v40 = sub_227664A50();
        v41 = v125;
        (v125)(v38, v37);
        v41(v36, v37);
        v22 = v129;
        ++v32;
        v33 += v132;
        v5 += v132;
        if (((v134 ^ (v39 >= v40)) & 1) == 0)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v6 = v118;
      v21 = v120;
      a3 = v121;
      v9 = v140;
      if (v131 < v127)
      {
        if (v34 < v120)
        {
          goto LABEL_123;
        }

        if (v120 < v34)
        {
          v42 = v132 * (v34 - 1);
          v5 = v34 * v132;
          v130 = v34;
          v43 = v34;
          v44 = v120;
          v45 = v120 * v132;
          do
          {
            if (v44 != --v43)
            {
              v46 = *a3;
              if (!v46)
              {
                goto LABEL_129;
              }

              v47 = *v135;
              (*v135)(v123, &v46[v45], v9);
              if (v45 < v42 || &v46[v45] >= &v46[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v47(&v46[v42], v123, v9);
              a3 = v121;
              v22 = v129;
            }

            ++v44;
            v42 -= v132;
            v5 -= v132;
            v45 += v132;
          }

          while (v44 < v43);
          v6 = v118;
          v21 = v120;
          v34 = v130;
        }
      }
    }

    v48 = a3[1];
    if (v34 < v48)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v117)
      {
        if (__OFADD__(v21, v117))
        {
          goto LABEL_124;
        }

        if (v21 + v117 >= v48)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v21 + v117;
        }

        if (v5 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v5)
        {
          break;
        }
      }
    }

    v5 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_2273A4F9C(0, *(v22 + 2) + 1, 1, v22);
    }

    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v22 = sub_2273A4F9C((v49 > 1), v50 + 1, 1, v22);
    }

    *(v22 + 2) = v51;
    v52 = &v22[16 * v50];
    *(v52 + 4) = v21;
    *(v52 + 5) = v5;
    v53 = *v119;
    if (!*v119)
    {
      goto LABEL_131;
    }

    v124 = v5;
    if (v50)
    {
      while (1)
      {
        v5 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v54 = *(v22 + 4);
          v55 = *(v22 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_52:
          if (v57)
          {
            goto LABEL_110;
          }

          v70 = &v22[16 * v51];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_113;
          }

          v76 = &v22[16 * v5 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_117;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v5 = v51 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v80 = &v22[16 * v51];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_66:
        if (v75)
        {
          goto LABEL_112;
        }

        v83 = &v22[16 * v5];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_115;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_73:
        v91 = v5 - 1;
        if (v5 - 1 >= v51)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v92 = *&v22[16 * v91 + 32];
        v93 = *&v22[16 * v5 + 40];
        sub_2270992DC(*a3 + v128[9] * v92, *a3 + v128[9] * *&v22[16 * v5 + 32], *a3 + v128[9] * v93, v53);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v93 < v92)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2271171D0(v22);
        }

        if (v91 >= *(v22 + 2))
        {
          goto LABEL_107;
        }

        v94 = &v22[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v141 = v22;
        sub_227117144(v5);
        v22 = v141;
        v51 = *(v141 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v22[16 * v51 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_108;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_109;
      }

      v65 = &v22[16 * v51];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_111;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_114;
      }

      if (v69 >= v61)
      {
        v87 = &v22[16 * v5 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_118;
        }

        if (v56 < v90)
        {
          v5 = v51 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v124;
    if (v124 >= v20)
    {
      goto LABEL_94;
    }
  }

  v118 = v6;
  v95 = *a3;
  v96 = v128[9];
  v134 = v128[2];
  v97 = &v95[v96 * (v34 - 1)];
  v131 = -v96;
  v132 = v95;
  v120 = v21;
  v98 = (v21 - v34);
  v122 = v96;
  v99 = &v95[v34 * v96];
  v124 = v5;
LABEL_85:
  v130 = v34;
  v125 = v99;
  v126 = v98;
  v127 = v97;
  v100 = v97;
  while (1)
  {
    v101 = v138;
    v102 = v134;
    (v134)(v138, v99, v9, v18);
    v103 = v139;
    v102(v139, v100, v140);
    v104 = sub_227664A50();
    v105 = sub_227664A50();
    v106 = *v136;
    v107 = v103;
    v9 = v140;
    (*v136)(v107, v140);
    v106(v101, v9);
    if (v104 >= v105)
    {
LABEL_84:
      v34 = v130 + 1;
      v97 = v127 + v122;
      v98 = v126 - 1;
      v5 = v124;
      v99 = &v125[v122];
      if (v130 + 1 != v124)
      {
        goto LABEL_85;
      }

      v6 = v118;
      v21 = v120;
      a3 = v121;
      v22 = v129;
      if (v124 < v120)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    v108 = *v135;
    v109 = v133;
    (*v135)(v133, v99, v9);
    swift_arrayInitWithTakeFrontToBack();
    v108(v100, v109, v9);
    v100 += v131;
    v99 += v131;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_227098518(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v168 = a4;
  v166 = a1;
  v181 = sub_227662750();
  v8 = *(v181 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v181);
  v180 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v179 = &v159 - v12;
  v13 = sub_227664AA0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v169 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v185 = &v159 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v188 = &v159 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v163 = &v159 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v162 = &v159 - v27;
  result = MEMORY[0x28223BE20](v26);
  v32 = *(a3 + 8);
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_105:
    v4 = *v166;
    if (!*v166)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_2271171D0(v34);
      v34 = result;
    }

    v192 = v34;
    v153 = *(v34 + 16);
    if (v153 >= 2)
    {
      while (1)
      {
        v154 = *a3;
        if (!*a3)
        {
          goto LABEL_141;
        }

        v155 = v34;
        v156 = a3;
        v34 = v153 - 1;
        a3 = *&v155[16 * v153];
        v157 = *&v155[16 * v153 + 24];
        sub_227099894(&v154[*(v14 + 72) * a3], &v154[*(v14 + 72) * *&v155[16 * v153 + 16]], &v154[*(v14 + 72) * v157], v4);
        if (v6)
        {
        }

        if (v157 < a3)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_2271171D0(v155);
        }

        if (v153 - 2 >= *(v155 + 2))
        {
          goto LABEL_131;
        }

        v158 = &v155[16 * v153];
        *v158 = a3;
        *(v158 + 1) = v157;
        v192 = v155;
        result = sub_227117144(v34);
        v34 = v192;
        v153 = *(v192 + 16);
        a3 = v156;
        if (v153 <= 1)
        {
        }
      }
    }
  }

  v160 = &v159 - v29;
  v173 = v31;
  v187 = v30;
  v33 = 0;
  v178 = (v8 + 8);
  v190 = (v14 + 8);
  v191 = (v14 + 16);
  v189 = (v14 + 32);
  v34 = MEMORY[0x277D84F90];
  v161 = a3;
  v175 = v14;
  v182 = v13;
  while (1)
  {
    v35 = v33;
    v36 = v33 + 1;
    if (v36 >= v32)
    {
      v49 = v168;
      goto LABEL_32;
    }

    v172 = v32;
    v37 = *a3;
    v38 = *(v14 + 72);
    v177 = v36;
    v39 = *(v14 + 16);
    v40 = v35;
    v41 = v160;
    v39(v160, &v37[v38 * v36], v13);
    v167 = v40;
    v176 = v38;
    v186 = v37;
    v42 = &v37[v38 * v40];
    v4 = v162;
    v171 = v39;
    v39(v162, v42, v13);
    v43 = sub_227664A50();
    v44 = sub_227664A50();
    v164 = v6;
    v165 = v34;
    if (v43 == v44)
    {
      v6 = v179;
      sub_227664A80();
      v45 = v180;
      sub_227664A80();
      LODWORD(v174) = sub_2276626C0();
      v46 = *v178;
      v47 = v45;
      v48 = v181;
      (*v178)(v47, v181);
      v46(v6, v48);
    }

    else
    {
      v50 = sub_227664A50();
      LODWORD(v174) = v50 < sub_227664A50();
    }

    v51 = *v190;
    v52 = v182;
    (*v190)(v4, v182);
    v170 = v51;
    result = (v51)(v41, v52);
    v53 = (v167 + 2);
    v54 = v177;
    v55 = v176 * (v167 + 2);
    v56 = &v186[v55];
    v57 = v176 * v177;
    v58 = &v186[v176 * v177];
    v59 = v173;
    v60 = v163;
    do
    {
      v64 = v53;
      v66 = v54;
      v14 = v57;
      v65 = v55;
      v186 = v53;
      if (v53 >= v172)
      {
        break;
      }

      v183 = v54;
      v184 = v55;
      v67 = v182;
      v68 = v171;
      v171(v60, v56, v182);
      v68(v59, v58, v67);
      v69 = v60;
      v70 = sub_227664A50();
      if (v70 == sub_227664A50())
      {
        v71 = v179;
        sub_227664A80();
        v72 = v180;
        sub_227664A80();
        v62 = sub_2276626C0();
        v73 = *v178;
        v74 = v72;
        v75 = v181;
        (*v178)(v74, v181);
        v76 = v71;
        v59 = v173;
        v73(v76, v75);
      }

      else
      {
        v61 = sub_227664A50();
        v62 = v61 < sub_227664A50();
      }

      v4 = v182;
      v6 = v170;
      (v170)(v59, v182);
      result = v6(v69, v4);
      v63 = v62 & 1;
      v64 = v186;
      v53 = v186 + 1;
      v56 = &v176[v56];
      v58 = &v176[v58];
      v66 = v183;
      v65 = v184;
      v54 = v183 + 1;
      v57 = &v176[v14];
      v55 = &v176[v184];
      v60 = v69;
    }

    while ((v174 & 1) == v63);
    a3 = v161;
    if (v174)
    {
      v35 = v167;
      v49 = v168;
      v34 = v165;
      v13 = v182;
      if (v64 < v167)
      {
        goto LABEL_134;
      }

      if (v167 >= v64)
      {
        v36 = v64;
        v6 = v164;
        v14 = v175;
        goto LABEL_32;
      }

      v4 = v167 * v176;
      v77 = v167;
      do
      {
        if (v77 != v66)
        {
          v79 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v80 = v66;
          v81 = v65;
          v184 = *v189;
          (v184)(v169, &v79[v4], v13);
          if (v4 < v14 || &v79[v4] >= &v81[v79])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v4 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = (v184)(&v79[v14], v169, v13);
          v49 = v168;
          v65 = v81;
          v66 = v80;
        }

        ++v77;
        v14 -= v176;
        v65 -= v176;
        v4 += v176;
      }

      while (v77 < v66--);
      v36 = v186;
      v6 = v164;
      v14 = v175;
      v34 = v165;
    }

    else
    {
      v36 = v64;
      v6 = v164;
      v14 = v175;
      v49 = v168;
      v34 = v165;
      v13 = v182;
    }

    v35 = v167;
LABEL_32:
    v82 = *(a3 + 8);
    v177 = v36;
    if (v36 < v82)
    {
      v122 = __OFSUB__(v36, v35);
      v83 = v36 - v35;
      if (v122)
      {
        goto LABEL_133;
      }

      if (v83 < v49)
      {
        if (__OFADD__(v35, v49))
        {
          goto LABEL_135;
        }

        if (v35 + v49 >= v82)
        {
          v84 = v82;
        }

        else
        {
          v84 = (v35 + v49);
        }

        if (v84 < v35)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v85 = v177;
        if (v177 != v84)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v177 < v35)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v34 + 16) + 1, 1, v34);
      v34 = result;
    }

    v4 = *(v34 + 16);
    v107 = *(v34 + 24);
    v108 = v4 + 1;
    if (v4 >= v107 >> 1)
    {
      result = sub_2273A4F9C((v107 > 1), v4 + 1, 1, v34);
      v34 = result;
    }

    *(v34 + 16) = v108;
    v109 = v34 + 16 * v4;
    v110 = v177;
    *(v109 + 32) = v35;
    *(v109 + 40) = v110;
    if (!*v166)
    {
      goto LABEL_142;
    }

    if (v4)
    {
      v14 = *v166;
      while (1)
      {
        v111 = v108 - 1;
        if (v108 >= 4)
        {
          break;
        }

        if (v108 == 3)
        {
          v112 = *(v34 + 32);
          v113 = *(v34 + 40);
          v122 = __OFSUB__(v113, v112);
          v114 = v113 - v112;
          v115 = v122;
LABEL_74:
          if (v115)
          {
            goto LABEL_121;
          }

          v128 = (v34 + 16 * v108);
          v130 = *v128;
          v129 = v128[1];
          v131 = __OFSUB__(v129, v130);
          v132 = v129 - v130;
          v133 = v131;
          if (v131)
          {
            goto LABEL_124;
          }

          v134 = (v34 + 32 + 16 * v111);
          v136 = *v134;
          v135 = v134[1];
          v122 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v122)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v132, v137))
          {
            goto LABEL_128;
          }

          if (v132 + v137 >= v114)
          {
            if (v114 < v137)
            {
              v111 = v108 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v138 = (v34 + 16 * v108);
        v140 = *v138;
        v139 = v138[1];
        v122 = __OFSUB__(v139, v140);
        v132 = v139 - v140;
        v133 = v122;
LABEL_88:
        if (v133)
        {
          goto LABEL_123;
        }

        v141 = v34 + 16 * v111;
        v143 = *(v141 + 32);
        v142 = *(v141 + 40);
        v122 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v122)
        {
          goto LABEL_126;
        }

        if (v144 < v132)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v111 - 1;
        if (v111 - 1 >= v108)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v149 = v34;
        v150 = *(v34 + 32 + 16 * v4);
        v151 = *(v34 + 32 + 16 * v111);
        v34 = *(v34 + 32 + 16 * v111 + 8);
        sub_227099894(*a3 + v175[9] * v150, *a3 + v175[9] * v151, *a3 + v175[9] * v34, v14);
        if (v6)
        {
        }

        if (v34 < v150)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_2271171D0(v149);
        }

        if (v4 >= *(v149 + 2))
        {
          goto LABEL_118;
        }

        v152 = &v149[16 * v4];
        *(v152 + 4) = v150;
        *(v152 + 5) = v34;
        v192 = v149;
        result = sub_227117144(v111);
        v34 = v192;
        v108 = *(v192 + 16);
        if (v108 <= 1)
        {
          goto LABEL_3;
        }
      }

      v116 = v34 + 32 + 16 * v108;
      v117 = *(v116 - 64);
      v118 = *(v116 - 56);
      v122 = __OFSUB__(v118, v117);
      v119 = v118 - v117;
      if (v122)
      {
        goto LABEL_119;
      }

      v121 = *(v116 - 48);
      v120 = *(v116 - 40);
      v122 = __OFSUB__(v120, v121);
      v114 = v120 - v121;
      v115 = v122;
      if (v122)
      {
        goto LABEL_120;
      }

      v123 = (v34 + 16 * v108);
      v125 = *v123;
      v124 = v123[1];
      v122 = __OFSUB__(v124, v125);
      v126 = v124 - v125;
      if (v122)
      {
        goto LABEL_122;
      }

      v122 = __OFADD__(v114, v126);
      v127 = v114 + v126;
      if (v122)
      {
        goto LABEL_125;
      }

      if (v127 >= v119)
      {
        v145 = (v34 + 32 + 16 * v111);
        v147 = *v145;
        v146 = v145[1];
        v122 = __OFSUB__(v146, v147);
        v148 = v146 - v147;
        if (v122)
        {
          goto LABEL_129;
        }

        if (v114 < v148)
        {
          v111 = v108 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v32 = *(a3 + 8);
    v33 = v177;
    v14 = v175;
    if (v177 >= v32)
    {
      goto LABEL_105;
    }
  }

  v165 = v34;
  v164 = v6;
  v86 = *a3;
  v87 = *(v14 + 72);
  v186 = *(v14 + 16);
  v88 = &v86[v87 * (v177 - 1)];
  v183 = -v87;
  v167 = v35;
  v4 = v35 - v177;
  v170 = v87;
  v184 = v86;
  v89 = &v86[v177 * v87];
  v14 = v188;
  v171 = v84;
LABEL_43:
  v176 = v88;
  v177 = v85;
  v172 = v89;
  v174 = v4;
  v90 = v88;
  while (1)
  {
    v92 = v186;
    v91 = v187;
    (v186)(v187, v89, v13);
    v92(v14, v90, v13);
    v93 = sub_227664A50();
    if (v93 == sub_227664A50())
    {
      v94 = v179;
      sub_227664A80();
      v95 = v180;
      sub_227664A80();
      v96 = sub_2276626C0();
      v97 = *v178;
      v98 = v95;
      v99 = v181;
      (*v178)(v98, v181);
      v100 = v94;
      v13 = v182;
      v101 = v99;
      v14 = v188;
      v97(v100, v101);
    }

    else
    {
      v102 = sub_227664A50();
      v96 = v102 < sub_227664A50();
    }

    v103 = *v190;
    (*v190)(v14, v13);
    result = (v103)(v91, v13);
    if ((v96 & 1) == 0)
    {
LABEL_42:
      v85 = v177 + 1;
      v88 = &v170[v176];
      v4 = v174 - 1;
      v89 = &v170[v172];
      if ((v177 + 1) != v171)
      {
        goto LABEL_43;
      }

      v177 = v171;
      v6 = v164;
      a3 = v161;
      v34 = v165;
      v35 = v167;
      goto LABEL_53;
    }

    if (!v184)
    {
      break;
    }

    v104 = *v189;
    v105 = v185;
    (*v189)(v185, v89, v13);
    swift_arrayInitWithTakeFrontToBack();
    v104(v90, v105, v13);
    v90 += v183;
    v89 += v183;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

void sub_2270992DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = sub_227664AA0();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v48 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v65 = a1;
  v64 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v18;
    if (v18 >= 1)
    {
      v33 = -v14;
      v52 = a4;
      v53 = (v8 + 16);
      v51 = (v8 + 8);
      v34 = v32;
      v61 = a1;
      v54 = v33;
      do
      {
        v49 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = a3;
        v55 = v35;
        v56 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v65 = v35;
            v63 = v49;
            goto LABEL_58;
          }

          v38 = v37;
          v50 = v32;
          v60 = v37 + v33;
          v39 = v34 + v33;
          v40 = *v53;
          v41 = v58;
          v42 = v34 + v33;
          v43 = v34;
          v44 = v62;
          (*v53)(v58, v42, v62);
          v45 = v59;
          (v40)(v59, v36, v44);
          v57 = sub_227664A50();
          v46 = sub_227664A50();
          v47 = *v51;
          (*v51)(v45, v44);
          v47(v41, v44);
          if (v57 < v46)
          {
            break;
          }

          v32 = v39;
          v37 = v60;
          if (v38 < v43 || v60 >= v43)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v56;
            a1 = v61;
          }

          else
          {
            v36 = v56;
            a1 = v61;
            if (v38 != v43)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          v33 = v54;
          v35 = v55;
          if (v39 <= v52)
          {
            a2 = v55;
            goto LABEL_57;
          }
        }

        v34 = v43;
        if (v38 < v55 || v60 >= v55)
        {
          a3 = v60;
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v61;
          v32 = v50;
          v33 = v54;
        }

        else
        {
          a3 = v60;
          a2 = v56;
          a1 = v61;
          v32 = v50;
          v33 = v54;
          if (v38 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_57:
    v65 = a2;
    v63 = v32;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v17;
    v63 = a4 + v17;
    v60 = a3;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v55 = v14;
      v56 = v8 + 16;
      v53 = (v8 + 8);
      v54 = v20;
      do
      {
        v61 = a1;
        v21 = v58;
        v22 = v62;
        v23 = v54;
        v54(v58, a2, v62);
        v24 = v59;
        v23(v59, a4, v22);
        v25 = a2;
        v26 = sub_227664A50();
        v27 = sub_227664A50();
        v28 = *v53;
        (*v53)(v24, v22);
        v28(v21, v22);
        if (v26 >= v27)
        {
          v29 = v55;
          v31 = a4 + v55;
          v30 = v61;
          if (v61 < a4 || v61 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v61 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v55;
          a2 = v25 + v55;
          v30 = v61;
          if (v61 < v25 || v61 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v30 + v29;
        v65 = a1;
      }

      while (a4 < v57 && a2 < v60);
    }
  }

LABEL_58:
  sub_22711736C(&v65, &v64, &v63);
}

uint64_t sub_227099894(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v93 = a1;
  v87 = sub_227662750();
  v6 = *(v87 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v87);
  v86 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v77 - v10;
  v92 = sub_227664AA0();
  v11 = *(v92 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v92);
  v82 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  result = MEMORY[0x28223BE20](v18);
  v22 = &v77 - v21;
  v83 = *(v23 + 72);
  if (!v83)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v91 = a2;
  v24 = a2 - v93;
  if (a2 - v93 == 0x8000000000000000 && v83 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - v91;
  if (a3 - v91 == 0x8000000000000000 && v83 == -1)
  {
    goto LABEL_68;
  }

  v96 = v93;
  v26 = v84;
  v95 = v84;
  if (v24 / v83 >= v25 / v83)
  {
    v29 = v25 / v83 * v83;
    if (v84 < v91 || v91 + v29 <= v84)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v84 != v91)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = v26 + v29;
    if (v29 < 1)
    {
      v56 = v26 + v29;
    }

    else
    {
      v54 = -v83;
      v83 = v11 + 16;
      v79 = (v6 + 8);
      v81 = (v11 + 8);
      v55 = v26 + v29;
      v56 = v53;
      v90 = v54;
      do
      {
        v78 = v56;
        v57 = v91;
        v91 += v54;
        v88 = v57;
        while (1)
        {
          if (v57 <= v93)
          {
            v96 = v57;
            v94 = v78;
            goto LABEL_65;
          }

          v58 = a3;
          v80 = v56;
          v59 = *v83;
          v89 = v55 + v54;
          v60 = v92;
          v59(v17);
          v61 = v82;
          (v59)(v82, v91, v60);
          v62 = sub_227664A50();
          if (v62 == sub_227664A50())
          {
            v63 = v85;
            sub_227664A80();
            v64 = v61;
            v65 = v86;
            sub_227664A80();
            v66 = sub_2276626C0();
            v67 = *v79;
            v68 = v65;
            v69 = v87;
            (*v79)(v68, v87);
            v67(v63, v69);
          }

          else
          {
            v70 = sub_227664A50();
            v64 = v61;
            v66 = v70 < sub_227664A50();
          }

          v71 = v58 + v90;
          v72 = *v81;
          v73 = v92;
          (*v81)(v64, v92);
          v72(v17, v73);
          if (v66)
          {
            break;
          }

          v74 = v89;
          v56 = v89;
          v75 = v84;
          a3 = v71;
          if (v58 < v55 || v71 >= v55)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v58 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v56;
          v54 = v90;
          v57 = v88;
          if (v74 <= v75)
          {
            v91 = v88;
            goto LABEL_64;
          }
        }

        v76 = v84;
        a3 = v71;
        if (v58 < v88 || v71 >= v88)
        {
          swift_arrayInitWithTakeFrontToBack();
          v56 = v80;
        }

        else
        {
          v56 = v80;
          if (v58 != v88)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v54 = v90;
      }

      while (v55 > v76);
    }

LABEL_64:
    v96 = v91;
    v94 = v56;
  }

  else
  {
    v27 = v24 / v83 * v83;
    v90 = v20;
    if (v84 < v93 || v93 + v27 <= v84)
    {
      swift_arrayInitWithTakeFrontToBack();
      v28 = v91;
    }

    else
    {
      v28 = v91;
      if (v84 != v93)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v89 = v26 + v27;
    v94 = v26 + v27;
    v30 = v27 < 1 || v28 >= a3;
    v31 = v83;
    if (!v30)
    {
      v32 = v26;
      v33 = *(v11 + 16);
      v81 = (v11 + 16);
      v82 = (v6 + 8);
      v34 = (v11 + 8);
      v88 = a3;
      v80 = (v11 + 8);
      do
      {
        v91 = v28;
        v35 = v92;
        v33(v22, v28, v92);
        v36 = v22;
        v37 = v90;
        v33(v90, v32, v35);
        v38 = sub_227664A50();
        if (v38 == sub_227664A50())
        {
          v39 = v85;
          sub_227664A80();
          v40 = v86;
          sub_227664A80();
          v41 = sub_2276626C0();
          v42 = *v82;
          v43 = v40;
          v44 = v32;
          v45 = v87;
          (*v82)(v43, v87);
          v46 = v39;
          v47 = v45;
          v32 = v44;
          v31 = v83;
          v42(v46, v47);
          v34 = v80;
        }

        else
        {
          v48 = sub_227664A50();
          v41 = v48 < sub_227664A50();
        }

        v49 = *v34;
        v50 = v37;
        v51 = v92;
        (*v34)(v50, v92);
        v49(v36, v51);
        v22 = v36;
        if (v41)
        {
          v28 = v91 + v31;
          if (v93 < v91 || v93 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v52 = v88;
          }

          else
          {
            v52 = v88;
            if (v93 != v91)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v28 = v91;
          if (v93 < v32 || v93 >= v32 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            v52 = v88;
          }

          else
          {
            v52 = v88;
            if (v93 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v95 = v32 + v31;
          v32 += v31;
        }

        v93 += v31;
        v96 = v93;
      }

      while (v32 < v89 && v28 < v52);
    }
  }

LABEL_65:
  sub_22711736C(&v96, &v95, &v94);
  return 1;
}

unint64_t sub_22709A08C()
{
  result = qword_27D7BA1D8;
  if (!qword_27D7BA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA1D8);
  }

  return result;
}

unint64_t sub_22709A0E0(uint64_t a1)
{
  result = sub_22709A108();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22709A108()
{
  result = qword_27D7BA1E0;
  if (!qword_27D7BA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA1E0);
  }

  return result;
}

uint64_t sub_22709A15C()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EDD0(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EDD0((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22709A264(uint64_t a1)
{
  v37 = sub_2276640A0();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227664070();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EFF0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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

char *sub_22709A590(void *a1)
{
  v1 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E88, &qword_227672538);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v2;
  v11 = v3;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v12 = sub_2272340B8(100);
  swift_setDeallocating();

  v13 = *(v9 + 40);

  v14 = qword_2813B2078;
  v15 = sub_22766A100();
  (*(*(v15 - 8) + 8))(v9 + v14, v15);
  v16 = *(*v9 + 48);
  v17 = *(*v9 + 52);
  swift_deallocClassInstance();
  return v12;
}

void sub_22709A73C(uint64_t a1, void *a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E88, &qword_227672538);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  v36 = v14;
  v37 = v13;
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  v38 = v7;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  swift_getKeyPath();
  v15 = sub_22709A264(a1);
  v42 = v2;
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v41[0] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226ED25F8(v41, v39);
  v17 = v40;
  if (v40)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v39, v40);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1E8 &qword_227678890))];

  sub_226EBC888(v41);
  v25 = qword_2813B2078;
  swift_beginAccess();
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v41, 0);
  swift_endAccess();

  v29 = sub_227542738(v12 + v25, v38, v8);
  if (v29)
  {
    if (v29 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v30 = v42;
  v31 = sub_22723EF70(0);
  if (v30)
  {
LABEL_10:

    return;
  }

  v32 = v31;
  [v31 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v33 = sub_22766C9E0();
  v34 = sub_226EDAB24(v33);

  sub_226EDAB78(v34, v36);
}

uint64_t sub_22709AB70()
{
  v0 = sub_227665680();
  __swift_allocate_value_buffer(v0, qword_28139B800);
  __swift_project_value_buffer(v0, qword_28139B800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1F0, &qword_227678898);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  *(inited + 32) = 0;
  *(inited + 40) = 1;
  sub_22766C550();
  *(inited + 48) = v2;
  *(inited + 56) = 0;
  sub_226F4D9B0(inited);
  swift_setDeallocating();
  return sub_227665660();
}

uint64_t static RestrictionProfile.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28139B7F8 != -1)
  {
    swift_once();
  }

  v2 = sub_227665680();
  v3 = __swift_project_value_buffer(v2, qword_28139B800);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static RestrictionProfile.current.setter(uint64_t a1)
{
  if (qword_28139B7F8 != -1)
  {
    swift_once();
  }

  v2 = sub_227665680();
  v3 = __swift_project_value_buffer(v2, qword_28139B800);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static RestrictionProfile.current.modify())()
{
  if (qword_28139B7F8 != -1)
  {
    swift_once();
  }

  v0 = sub_227665680();
  __swift_project_value_buffer(v0, qword_28139B800);
  swift_beginAccess();
  return j__swift_endAccess;
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

uint64_t static AudioLanguageEngagementSheetAcknowledgment.representativeSamples()()
{
  v0 = sub_227669040();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22709B0AC();
  sub_22709B100();
  v5 = sub_227663B50();
  v6 = *(v5 + 16);
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_226F1F668(0, v6, 0);
    v7 = v15;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      sub_227669030();
      v15 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_226F1F668(v11 > 1, v12 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v12 + 1;
      (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v4, v0);
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

unint64_t sub_22709B0AC()
{
  result = qword_27D7BA1F8;
  if (!qword_27D7BA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA1F8);
  }

  return result;
}

unint64_t sub_22709B100()
{
  result = qword_27D7BA200;
  if (!qword_27D7BA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA200);
  }

  return result;
}

void sub_22709B160(void *a1)
{
  [a1 state];
  sub_22709B100();
  sub_227663AE0();
  sub_227669030();
}

id sub_22709B1E0(void *a1)
{
  v4 = sub_227669020();
  LOBYTE(v5) = v2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F80, &qword_227676E88);
  result = sub_227663AD0();
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v6 <= 0x7FFFFFFF)
  {
    return [a1 setState_];
  }

  __break(1u);
  return result;
}

unint64_t sub_22709B280(uint64_t a1)
{
  result = sub_22709B2A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22709B2A8()
{
  result = qword_2813A5510;
  if (!qword_2813A5510)
  {
    sub_227669040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813A5510);
  }

  return result;
}

void sub_22709B300(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_22709BBB8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9F1D0;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);

  [a2 deviceListWithContext:a3 completion:v13];
  _Block_release(v13);
}

char *sub_22709B4B8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
    sub_22766A730();
    v12 = a2;
    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = sub_2276622B0();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_226E8E000, v13, v14, "Encountered error in fetching devices: %{public}@", v15, 0xCu);
      sub_226F2534C(v16);
      MEMORY[0x22AA9A450](v16, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v55 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968);
    return sub_22766C440();
  }

  v48 = a3;
  if (!a1)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v19 = [a1 deviceList];
  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
LABEL_29:
    v55 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968);
    return sub_22766C450();
  }

  v21 = v19;
  sub_22709BC44();
  v22 = sub_22766C2C0();

  if (v22 >> 62)
  {
    v23 = sub_22766CD20();
    if (v23)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_28:

    goto LABEL_29;
  }

LABEL_9:
  v55 = v20;
  result = sub_226F1FAE8(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = 0;
    v49 = v22;
    v50 = v22 & 0xC000000000000001;
    v20 = v55;
    while (1)
    {
      v25 = v50 ? MEMORY[0x22AA991A0](v24, v22) : *(v22 + 8 * v24 + 32);
      v26 = v25;
      result = [v25 buildNumber];
      if (!result)
      {
        break;
      }

      v27 = result;
      v28 = sub_22766C000();
      v51 = v29;
      v52 = v28;

      v30 = [v26 operatingSystemName];
      if (v30)
      {
        v31 = v30;
        v32 = sub_22766C000();
        v53 = v33;
        v54 = v32;
      }

      else
      {
        v53 = 0;
        v54 = 0;
      }

      v34 = [v26 operatingSystemVersion];
      if (v34)
      {
        v35 = v34;
        v36 = sub_22766C000();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      result = [v26 model];
      if (!result)
      {
        goto LABEL_32;
      }

      v39 = result;
      v40 = sub_22766C000();
      v42 = v41;

      v55 = v20;
      v44 = v20[2];
      v43 = v20[3];
      if (v44 >= v43 >> 1)
      {
        sub_226F1FAE8((v43 > 1), v44 + 1, 1);
        v20 = v55;
      }

      ++v24;
      v20[2] = v44 + 1;
      v45 = &v20[8 * v44];
      v46 = v51;
      v45[4] = v52;
      v45[5] = v46;
      v47 = v53;
      v45[6] = v54;
      v45[7] = v47;
      v45[8] = v36;
      v45[9] = v38;
      v45[10] = v40;
      v45[11] = v42;
      v22 = v49;
      if (v23 == v24)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22709B8E4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_22709B908, 0, 0);
}

uint64_t sub_22709B908()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA208, &qword_227678960);
  *v3 = v0;
  v3[1] = sub_22709BA14;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x8000000227698B40, sub_22709BBB0, v1, v4);
}

uint64_t sub_22709BA14()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_22709BB4C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_22709BB30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22709BB4C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

char *sub_22709BBB8(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA210, qword_227678968) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_22709B4B8(a1, a2, v6);
}

unint64_t sub_22709BC44()
{
  result = qword_27D7BA218;
  if (!qword_27D7BA218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7BA218);
  }

  return result;
}

uint64_t sub_22709BC90()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2274E2FEC(v1);
  sub_22766C100();

  sub_2275E0328(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22709BD20()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2274E2FEC(v1);
  sub_22766C100();

  sub_2275E0328(v2);
  sub_22766C100();
}

uint64_t sub_22709BDA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2274E2FEC(v1);
  sub_22766C100();

  sub_2275E0328(v2);
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_22709BE34(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a2;
  v5 = sub_2274E2FEC(*a1);
  v7 = v6;
  if (v5 == sub_2274E2FEC(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_22766D190();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = sub_2275E0328(v2);
  v14 = v13;
  if (v12 == sub_2275E0328(v3) && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22766D190();
  }

  return v11 & 1;
}

uint64_t sub_22709BF40()
{
  sub_22766CE20();

  v0 = sub_22709C030();
  v1 = MEMORY[0x22AA958B0](&type metadata for PersistenceSchemaVersion, v0);
  MEMORY[0x22AA98450](v1);

  MEMORY[0x22AA98450](0x203A6174614420, 0xE700000000000000);
  v2 = sub_22709C084();
  v3 = MEMORY[0x22AA958B0](&type metadata for PersistenceDataVersion, v2);
  MEMORY[0x22AA98450](v3);

  return 0x203A616D65686353;
}

unint64_t sub_22709C030()
{
  result = qword_28139A2B0[0];
  if (!qword_28139A2B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28139A2B0);
  }

  return result;
}

unint64_t sub_22709C084()
{
  result = qword_28139A358;
  if (!qword_28139A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A358);
  }

  return result;
}

BOOL sub_22709C0D8()
{
  v0 = 0;
  v1 = 0x21u;
  do
  {
    v2 = byte_283A917F8[v1];
    if (sub_2274E3784(v0, v2))
    {
      v0 = v2;
    }

    ++v1;
  }

  while (v1 != 115);
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = byte_283A917A0[v3 + 33];
    result = sub_2275E0808(v4, v5);
    if (result)
    {
      v4 = v5;
    }

    ++v3;
  }

  while (v3 != 55);
  LOBYTE(word_2813B2670) = v0;
  HIBYTE(word_2813B2670) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for PersistenceVersion(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC9)
  {
    goto LABEL_17;
  }

  if (a2 + 65335 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65335 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65335;
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

      return (*a1 | (v4 << 16)) - 65335;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65335;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 0x38;
  v8 = v6 - 56;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceVersion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65335 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65335 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC9)
  {
    v4 = 0;
  }

  if (a2 > 0xC8)
  {
    v5 = ((a2 - 201) >> 16) + 1;
    *result = a2 - 201;
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
    *(result + 1) = a2 + 55;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22709C2D8()
{
  result = qword_27D7BA220;
  if (!qword_27D7BA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA220);
  }

  return result;
}

uint64_t sub_22709C32C()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = sub_227667D30();
  v9 = v8;
  if (v7 == sub_227667D30() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_22766D190();

    if ((v12 & 1) == 0)
    {
      sub_22766A740();
      v14 = sub_22766B380();
      v15 = sub_22766C890();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_226E8E000, v14, v15, "[MetricRecordingContext] DNU not consented - dropping event", v16, 2u);
        MEMORY[0x22AA9A450](v16, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
      v17 = sub_2276636A0();
      sub_226F09790();
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D50088], v17);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22709C54C()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for MetricRecordingContext() + 20);
  v16 = sub_227666C60();
  v17 = v7 & 1;
  v14 = 1;
  v15 = 1;
  sub_226FFD9B0();
  sub_226FFDA04();
  result = sub_227663B20();
  if ((result & 1) == 0)
  {
    sub_22766A740();
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226E8E000, v9, v10, "[MetricRecordingContext] GDPR not consented - dropping event", v11, 2u);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v12 = sub_2276636A0();
    sub_226F09790();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D50088], v12);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22709C75C(uint64_t a1)
{
  v37 = sub_227663480();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227663410();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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

uint64_t sub_22709CA64()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);

  return swift_deallocClassInstance();
}

uint64_t sub_22709CAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a1;
  v77 = a2;
  v64 = sub_22766B390();
  v63 = *(v64 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD7B0, &unk_227682270);
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA410, &qword_227678AB0);
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v75 = *(v16 - 8);
  v76 = v16;
  v17 = *(v75 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v71 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v19;
  MEMORY[0x28223BE20](v18);
  v74 = &v61 - v20;
  v21 = sub_22766A8A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v3 + 216);
  v27 = sub_2276693C0();
  (*(v22 + 104))(v25, *MEMORY[0x277D4F980], v21);
  v28 = sub_226EC9A38(v25, v27);

  (*(v22 + 8))(v25, v21);
  if (v28)
  {
    sub_22766A6C0();
    v29 = sub_22766B380();
    v30 = sub_22766C8B0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_226E8E000, v29, v30, "[Catalog Update] Skipping metadata refresh - platform performs refresh in background.", v31, 2u);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    (*(v63 + 8))(v6, v64);
    return sub_2276692A0();
  }

  else
  {
    v33 = *(v3 + 200);
    v34 = *(v3 + 208);
    __swift_project_boxed_opaque_existential_0((v3 + 176), v33);
    v35 = swift_allocObject();
    *(v35 + 16) = v62;
    *(v35 + 24) = v3;
    v36 = sub_2276690A0();

    sub_226ECF5D8(sub_22709D4B0, v35, v33, v36, v34, v11);

    v37 = *__swift_project_boxed_opaque_existential_0((v3 + 96), *(v3 + 120));
    v79[3] = type metadata accessor for CatalogScriptClient();
    v79[4] = &off_283AC6368;
    v79[0] = v37;
    sub_226E91B50(v79, v78);
    v38 = swift_allocObject();
    sub_226E92AB8(v78, v38 + 16);

    __swift_destroy_boxed_opaque_existential_0(v79);
    v40 = v68;
    v39 = v69;
    v41 = v65;
    (*(v68 + 16))(v65, v11, v69);
    v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v43 = swift_allocObject();
    (*(v40 + 32))(v43 + v42, v41, v39);
    v44 = (v43 + ((v8 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v44 = sub_22709D52C;
    v44[1] = v38;
    sub_227668CE0();
    v45 = v70;
    sub_227669270();
    (*(v40 + 8))(v11, v39);
    v47 = v72;
    v46 = v73;
    v48 = v67;
    (*(v72 + 16))(v67, v45, v73);
    v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v50 = swift_allocObject();
    (*(v47 + 32))(v50 + v49, v48, v46);
    v51 = (v50 + ((v13 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v51 = sub_22709D534;
    v51[1] = 0;
    v52 = v74;
    sub_227669270();
    (*(v47 + 8))(v45, v46);
    v53 = swift_allocObject();
    *(v53 + 16) = sub_22709D758;
    *(v53 + 24) = 0;
    v55 = v75;
    v54 = v76;
    v56 = v71;
    (*(v75 + 16))(v71, v52, v76);
    v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v58 = (v66 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    (*(v55 + 32))(v59 + v57, v56, v54);
    v60 = (v59 + v58);
    *v60 = sub_226F5AAF8;
    v60[1] = v53;
    sub_227669270();
    return (*(v55 + 8))(v52, v54);
  }
}

uint64_t sub_22709D2E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22709C75C(a2);
  v7 = sub_226F3E6A8(v6);

  v8 = *(v7 + 16);
  if (v8)
  {
    v18[6] = a3;
    v9 = sub_2274CD6BC(v8, 0);
    v10 = sub_2274CDE20(v18, v9 + 4, v8, v7);

    result = sub_226EBB21C();
    if (v10 != v8)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v12 = sub_226F7F468(v9, 0, 1, a1);
  if (v3)
  {
  }

  else
  {
    v13 = v12;

    v14 = sub_226F420C8(v13);

    v15 = sub_22736EE60(v14);

    v16 = sub_227009018(v15, v7);

    v17 = sub_22736EEA0(v16);

    sub_22742F5E0(v17, v14);

    return sub_227669090();
  }
}

uint64_t sub_22709D4CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = *__swift_project_boxed_opaque_existential_0((*v5 + 16), *(*v5 + 40));
  return sub_227321ACC(29, a1, a3);
}

uint64_t sub_22709D534@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_227668CC0();
  v8 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v9 = 0;
    v10 = (v2 + 8);
    v11 = (result + 40);
    *&v7 = 136446210;
    v22 = v7;
    v23 = v1;
    v24 = result;
    while (v9 < *(v8 + 16))
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_22766A6C0();

      v14 = sub_22766B380();
      v15 = sub_22766C8B0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = v10;
        v18 = swift_slowAlloc();
        v26 = v18;
        *v16 = v22;
        *(v16 + 4) = sub_226E97AE8(v12, v13, &v26);
        _os_log_impl(&dword_226E8E000, v14, v15, "[Catalog Update] Failed to update workout identifier %{public}s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        v19 = v18;
        v10 = v17;
        MEMORY[0x22AA9A450](v19, -1, -1);
        v20 = v16;
        v1 = v23;
        v8 = v24;
        MEMORY[0x22AA9A450](v20, -1, -1);
      }

      result = (*v10)(v5, v1);
      ++v9;
      v11 += 2;
      if (v25 == v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return sub_2276692A0();
  }

  return result;
}

uint64_t sub_22709D758(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v8 = a1;
  v9 = sub_22766B380();
  v10 = sub_22766C890();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v14 = MEMORY[0x22AA995D0](v18[3], v18[4]);
    v16 = sub_226E97AE8(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v9, v10, "[Catalog Update] Failed to update workouts with error: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_22709D984(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_22709DA4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22709DAA8(void (*a1)(id, uint64_t), int a2, id a3)
{
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v6 = sub_227664470();
    sub_226E9EC88(&qword_27D7BA250, MEMORY[0x277D50940]);
    v5 = swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D50930], v6);
  }

  v8 = a3;
  a1(v5, 1);
}

uint64_t sub_22709DBF0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  (*(v0 + 168))(*(v0 + 136), *(v0 + 112));
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_227669930();
  swift_willThrow();
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  sub_227669920();
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v9 = *(v0 + 8);
  v10 = *(v0 + 200);

  return v9();
}

uint64_t sub_22709DD14(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = swift_task_alloc();
  v2[22] = v3;
  *v3 = v2;
  v3[1] = sub_22709DDA4;

  return sub_226EA0808();
}

uint64_t sub_22709DDA4(uint64_t a1)
{
  v3 = *(*v2 + 176);
  v4 = *v2;
  *(v4 + 184) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22709DEDC, 0, 0);
  }
}

uint64_t sub_22709DEDC()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = sub_22766BFD0();
  v5 = [v1 doubleForKey_];
  v0[24] = v5;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22709E034;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3B8, &qword_227678BC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22709E260;
  v0[13] = &block_descriptor_147;
  v0[14] = v6;
  [v5 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22709E034()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_22709E1E0;
  }

  else
  {
    v3 = sub_22709E144;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22709E144()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  [v2 doubleValue];
  v5 = v4;

  swift_unknownObjectRelease();
  v6 = *(v0 + 8);
  v7.n128_u64[0] = v5;

  return v6(v3, v7);
}

uint64_t sub_22709E1E0()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v0[25];
  v5 = v0[1];

  return v5(0);
}

uint64_t sub_22709E260(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_22709E340(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA268, &qword_227678B10);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A71F8;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_22709E71C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A8, &qword_227678B30);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A73C4;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_22709EAF8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2D8, &qword_227678B50);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA2E0, &qword_227672100);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7414;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}

uint64_t sub_22709EED4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA338, &qword_227678B78);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA340, &unk_22767E480);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A754C;
  *(v35 + 24) = v33;

  v34(sub_226E9F7B8, v35);
}

uint64_t sub_22709F2B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v43 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA320, &qword_227678B68);
  v46 = *(v11 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v14 = sub_22766B390();
  v44 = *(v14 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_226E97A5C(0x65uLL);
  sub_22766A710();
  v18 = sub_22766B380();
  v41 = sub_22766C8B0();
  v42 = v18;
  if (os_log_type_enabled(v18, v41))
  {
    v19 = swift_slowAlloc();
    v40 = a6;
    v20 = v19;
    v38 = swift_slowAlloc();
    v48 = v38;
    *v20 = 134218498;
    *(v20 + 4) = v47;
    *(v20 + 12) = 2080;
    v21 = sub_22766CE50();
    v39 = a4;
    v23 = sub_226E97AE8(v21, v22, &v48);
    v37 = v14;
    v24 = v11;
    v25 = a2;
    v26 = a3;
    v27 = a5;
    v28 = v23;
    LOBYTE(a4) = v39;

    *(v20 + 14) = v28;
    a5 = v27;
    a3 = v26;
    a2 = v25;
    v11 = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = a5;
    v29 = v42;
    _os_log_impl(&dword_226E8E000, v42, v41, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v20, 0x20u);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v30, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v44 + 8))(v17, v37);
  }

  else
  {

    (*(v44 + 8))(v17, v14);
  }

  v31 = v46;
  (*(v46 + 16))(v13, v43, v11);
  v32 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = a2;
  *(v33 + 32) = a3;
  *(v33 + 40) = a4;
  *(v33 + 48) = a5;
  (*(v31 + 32))(v33 + v32, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA328, &unk_227684D30);
  v34 = sub_227669290();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2270A7524;
  *(v35 + 24) = v33;

  v34(sub_226E93814, v35);
}