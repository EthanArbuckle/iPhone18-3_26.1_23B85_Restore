unint64_t sub_226FF6FA8()
{
  result = qword_28139B958;
  if (!qword_28139B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B958);
  }

  return result;
}

unint64_t sub_226FF7010()
{
  result = qword_27D7B9AA8;
  if (!qword_27D7B9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9AA8);
  }

  return result;
}

unint64_t sub_226FF7068()
{
  result = qword_28139B948;
  if (!qword_28139B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B948);
  }

  return result;
}

unint64_t sub_226FF70C0()
{
  result = qword_28139B950;
  if (!qword_28139B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B950);
  }

  return result;
}

unint64_t sub_226FF7114()
{
  result = qword_27D7B8A18;
  if (!qword_27D7B8A18)
  {
    sub_227669A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8A18);
  }

  return result;
}

uint64_t sub_226FF716C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32[-1] - v4;
  v6 = sub_22766A8A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v12 + 8))(v15, v11);
  v16 = *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_platform);
  v17 = sub_2276693C0();
  (*(v7 + 104))(v10, *MEMORY[0x277D4F8E8], v6);
  LOBYTE(v12) = sub_226EC9A38(v10, v17);

  result = (*(v7 + 8))(v10, v6);
  if (v12)
  {
    v19 = __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter), *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter + 24));
    sub_2276693E0();
    v20 = *v19;
    v21 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v22 = sub_22766BFD0();

    v23 = [v21 initWithBundleIdentifier_];

    v24 = *(v20 + 16);
    *(v20 + 16) = v23;

    *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_state) = 1;
    v25 = sub_22766C4B0();
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;
    sub_2272CAC00(0, 0, v5, &unk_227675250, v27);

    v28 = *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_eventHub);
    v29 = *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_eventHub + 8);
    swift_getObjectType();
    v30 = *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_subscriptionToken);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_226FFDCDC();

    sub_227669A10();

    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  return result;
}

uint64_t sub_226FF75A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_226FF75C0, 0, 0);
}

uint64_t sub_226FF75C0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_226FF76B4;

    return sub_226FFA70C();
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_226FF76B4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226FF77C8, 0, 0);
}

uint64_t sub_226FF77F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226E8E000, v9, v10, "[Notification Settings Migration] Received post install activity", v11, 2u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = sub_22766C4B0();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  sub_2272CA940(0, 0, v3, &unk_227675260, v15);
}

uint64_t sub_226FF7A70()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_226FF7BE8;

    return sub_226FFA70C();
  }

  else
  {
    v5 = v0[8];
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    v0[11] = v6;
    if (v6)
    {
      v7 = swift_task_alloc();
      v0[12] = v7;
      *v7 = v0;
      v7[1] = sub_226FF7DE4;

      return sub_226FF7EF0();
    }

    else
    {
      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_226FF7BE8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226FF7CFC, 0, 0);
}

uint64_t sub_226FF7CFC()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_226FF7DE4;

    return sub_226FF7EF0();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_226FF7DE4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_226FF7EF0()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_22766B390();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FF805C, 0, 0);
}

uint64_t sub_226FF805C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  (*(v2 + 16))(v1, *(v0 + 16) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator__migrationEnabled, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 96) != 1)
  {
    v19 = *(v0 + 48);
    sub_22766A600();
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 40);
    v23 = *(v0 + 48);
    v25 = *(v0 + 32);
    if (v22)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "[Notification Settings Migration] Migration disabled", v26, 2u);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    (*(v24 + 8))(v23, v25);
    goto LABEL_9;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  sub_22766AED0();
  v5 = sub_22766BFD0();

  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    v7 = *(v0 + 56);
    sub_22766A600();
    v8 = sub_22766B380();
    v9 = sub_22766C8B0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_226E8E000, v8, v9, "[Notification Settings Migration] Already migrated", v10, 2u);
      MEMORY[0x22AA9A450](v10, -1, -1);
    }

    v11 = *(v0 + 56);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);

    (*(v13 + 8))(v11, v12);
    v16 = *__swift_project_boxed_opaque_existential_0((v15 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter), *(v15 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter + 24));
    v17 = sub_22766C4B0();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;

    sub_2272CA940(0, 0, v14, &unk_227675240, v18);

LABEL_9:
    v27 = *(v0 + 80);
    v28 = *(v0 + 48);
    v29 = *(v0 + 56);
    v30 = *(v0 + 24);

    v31 = *(v0 + 8);

    return v31();
  }

  v33 = swift_task_alloc();
  *(v0 + 88) = v33;
  *v33 = v0;
  v33[1] = sub_226FF8404;
  v34 = *(v0 + 16);

  return sub_226FF8570();
}

uint64_t sub_226FF8404()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v9 = *v0;

  v3 = v1[10];
  v4 = v1[7];
  v5 = v1[6];
  v6 = v1[3];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_226FF8570()
{
  v1[7] = v0;
  v2 = sub_2276658F0();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_227667190();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = sub_2276659D0();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v11 = sub_22766B390();
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FF87B0, 0, 0);
}

uint64_t sub_226FF87B0()
{
  v1 = v0[28];
  sub_22766A600();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[Notification Settings Migration] Started migration", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v0[28];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[7];

  v9 = *(v7 + 8);
  v0[29] = v9;
  v9(v5, v6);
  v10 = __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter), *(v8 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter + 24));
  v18 = *v10;
  v19 = *(*v10 + 16);
  v0[30] = v19;
  if (v19)
  {
    v20 = swift_task_alloc();
    v0[31] = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = *(MEMORY[0x277D859E0] + 4);
    v22 = v19;
    v23 = swift_task_alloc();
    v0[32] = v23;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B20, &unk_227675220);
    *v23 = v0;
    v23[1] = sub_226FF8E54;
    v15 = sub_226FFDAB0;
    v10 = v0 + 6;
    v14 = 0x8000000227696960;
    v11 = 0;
    v12 = 0;
    v13 = 0xD000000000000016;
    v16 = v20;

    return MEMORY[0x2822007B8](v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    v75 = *(MEMORY[0x277D84F90] + 16);
    if (v75)
    {
      v25 = 0;
      v26 = v0[16];
      v27 = v0[12];
      v72 = (v27 + 104);
      v71 = *MEMORY[0x277D52C48];
      v69 = (v26 + 8);
      v73 = v26;
      v70 = (v26 + 32);
      v28 = MEMORY[0x277D84F90];
      v29 = (v27 + 8);
      do
      {
        if (v25 >= *(v24 + 16))
        {
          __break(1u);
          return MEMORY[0x2822007B8](v10, v11, v12, v13, v14, v15, v16, v17);
        }

        v30 = v0[14];
        v31 = v0[13];
        v32 = v0[11];
        v77 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v33 = *(v73 + 72);
        (*(v73 + 16))(v0[18], v24 + v77 + v33 * v25, v0[15]);
        sub_2276659C0();
        (*v72)(v31, v71, v32);
        v34 = sub_227667180();
        v35 = *v29;
        (*v29)(v31, v32);
        v35(v30, v32);
        v36 = v0[18];
        if (v34)
        {
          v37 = *v70;
          (*v70)(v0[17], v0[18], v0[15]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226F1FB08(0, *(v28 + 16) + 1, 1);
          }

          v39 = *(v28 + 16);
          v38 = *(v28 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_226F1FB08(v38 > 1, v39 + 1, 1);
          }

          v40 = v0[17];
          v41 = v0[15];
          *(v28 + 16) = v39 + 1;
          v10 = v37(v28 + v77 + v39 * v33, v40, v41);
        }

        else
        {
          v10 = (*v69)(v0[18], v0[15]);
        }

        ++v25;
        v0[33] = v28;
        v24 = MEMORY[0x277D84F90];
      }

      while (v75 != v25);

      if (*(v28 + 16))
      {
        v42 = *__swift_project_boxed_opaque_existential_0((v0[7] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver), *(v0[7] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver + 24));
        v43 = swift_task_alloc();
        v0[34] = v43;
        *v43 = v0;
        v43[1] = sub_226FF9450;
        v44 = v0[10];

        return sub_226EA84C8(v44);
      }

      v52 = v0[23];

      sub_22766A600();
      v47 = sub_22766B380();
      v53 = sub_22766C8B0();
      if (os_log_type_enabled(v47, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_226E8E000, v47, v53, "[Notification Settings Migration]: No settings to migrate from default of ON", v54, 2u);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      v50 = v0[29];
      v51 = v0[23];
    }

    else
    {
      v46 = v0[22];

      sub_22766A600();
      v47 = sub_22766B380();
      v48 = sub_22766C8B0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_226E8E000, v47, v48, "[Notification Settings Migration]: No topics to migrate", v49, 2u);
        MEMORY[0x22AA9A450](v49, -1, -1);
      }

      v50 = v0[29];
      v51 = v0[22];
    }

    v55 = v0[19];
    v56 = v0[20];
    v57 = v0[7];

    v50(v51, v55);
    sub_226FFA584(v57);
    v59 = v0[27];
    v58 = v0[28];
    v61 = v0[25];
    v60 = v0[26];
    v63 = v0[23];
    v62 = v0[24];
    v65 = v0[21];
    v64 = v0[22];
    v67 = v0[17];
    v66 = v0[18];
    v74 = v0[14];
    v76 = v0[13];
    v78 = v0[10];

    v68 = v0[1];

    return v68(0);
  }
}

uint64_t sub_226FF8E54()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226FF8F6C, 0, 0);
}

uint64_t sub_226FF8F6C()
{
  result = *(v0 + 48);
  v52 = *(result + 16);
  if (v52)
  {
    v2 = 0;
    v3 = *(v0 + 128);
    v4 = *(v0 + 96);
    v48 = *MEMORY[0x277D52C48];
    v47 = (v4 + 104);
    v49 = v3;
    v45 = (v3 + 8);
    v46 = (v3 + 32);
    v5 = MEMORY[0x277D84F90];
    v50 = *(v0 + 48);
    v6 = (v4 + 8);
    do
    {
      if (v2 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v7 = *(v0 + 112);
      v8 = *(v0 + 104);
      v9 = *(v0 + 88);
      v54 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v10 = *(v49 + 72);
      (*(v49 + 16))(*(v0 + 144), result + v54 + v10 * v2, *(v0 + 120));
      sub_2276659C0();
      (*v47)(v8, v48, v9);
      v11 = sub_227667180();
      v12 = *v6;
      (*v6)(v8, v9);
      v12(v7, v9);
      v13 = *(v0 + 144);
      if (v11)
      {
        v14 = *v46;
        (*v46)(*(v0 + 136), *(v0 + 144), *(v0 + 120));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_226F1FB08(0, *(v5 + 16) + 1, 1);
        }

        v16 = *(v5 + 16);
        v15 = *(v5 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_226F1FB08(v15 > 1, v16 + 1, 1);
        }

        v17 = *(v0 + 136);
        v18 = *(v0 + 120);
        *(v5 + 16) = v16 + 1;
        v14(v5 + v54 + v16 * v10, v17, v18);
      }

      else
      {
        (*v45)(*(v0 + 144), *(v0 + 120));
      }

      ++v2;
      *(v0 + 264) = v5;
      result = v50;
    }

    while (v52 != v2);

    if (*(v5 + 16))
    {
      v19 = *__swift_project_boxed_opaque_existential_0((*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver), *(*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver + 24));
      v20 = swift_task_alloc();
      *(v0 + 272) = v20;
      *v20 = v0;
      v20[1] = sub_226FF9450;
      v21 = *(v0 + 80);

      return sub_226EA84C8(v21);
    }

    v28 = *(v0 + 184);

    sub_22766A600();
    v23 = sub_22766B380();
    v29 = sub_22766C8B0();
    if (os_log_type_enabled(v23, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_226E8E000, v23, v29, "[Notification Settings Migration]: No settings to migrate from default of ON", v30, 2u);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    v26 = *(v0 + 232);
    v27 = *(v0 + 184);
  }

  else
  {
    v22 = *(v0 + 176);

    sub_22766A600();
    v23 = sub_22766B380();
    v24 = sub_22766C8B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_226E8E000, v23, v24, "[Notification Settings Migration]: No topics to migrate", v25, 2u);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    v26 = *(v0 + 232);
    v27 = *(v0 + 176);
  }

  v31 = *(v0 + 152);
  v32 = *(v0 + 160);
  v33 = *(v0 + 56);

  v26(v27, v31);
  sub_226FFA584(v33);
  v35 = *(v0 + 216);
  v34 = *(v0 + 224);
  v37 = *(v0 + 200);
  v36 = *(v0 + 208);
  v39 = *(v0 + 184);
  v38 = *(v0 + 192);
  v41 = *(v0 + 168);
  v40 = *(v0 + 176);
  v43 = *(v0 + 136);
  v42 = *(v0 + 144);
  v51 = *(v0 + 112);
  v53 = *(v0 + 104);
  v55 = *(v0 + 80);

  v44 = *(v0 + 8);

  return v44(0);
}

uint64_t sub_226FF9450()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226FF954C, 0, 0);
}

uint64_t sub_226FF954C()
{
  if ((*(v0[9] + 88))(v0[10], v0[8]) == *MEMORY[0x277D51A28])
  {
    v1 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v2 = (v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_accountProvider);
    v4 = *(v1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_accountProvider + 24);
    v3 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v4);
    v5 = *(MEMORY[0x277D4FAD8] + 4);
    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_226FF9804;

    return MEMORY[0x2821AFC58](v4, v3);
  }

  else
  {
    v7 = v0[33];
    v8 = v0[24];
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];

    (*(v10 + 8))(v9, v11);
    sub_22766A600();
    v12 = sub_22766B380();
    v13 = sub_22766C8B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226E8E000, v12, v13, "[Notification Settings Migration]: Storefront unavailable, not migrating", v14, 2u);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    v15 = v0[29];
    v16 = v0[24];
    v17 = v0[19];
    v18 = v0[20];
    v19 = v0[7];

    v15(v16, v17);
    sub_226FFA584(v19);
    v21 = v0[27];
    v20 = v0[28];
    v23 = v0[25];
    v22 = v0[26];
    v25 = v0[23];
    v24 = v0[24];
    v27 = v0[21];
    v26 = v0[22];
    v29 = v0[17];
    v28 = v0[18];
    v32 = v0[14];
    v33 = v0[13];
    v34 = v0[10];

    v30 = v0[1];

    return v30(0);
  }
}

uint64_t sub_226FF9804(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v8 = *v2;
  *(*v2 + 288) = a1;

  if (v1)
  {
    v5 = *(v3 + 264);

    v6 = sub_226FFA0DC;
  }

  else
  {
    v6 = sub_226FF992C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226FF992C()
{
  v1 = *__swift_project_boxed_opaque_existential_0((*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_accountDeviceObserver), *(*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_accountDeviceObserver + 24));
  v2 = swift_task_alloc();
  *(v0 + 296) = v2;
  *v2 = v0;
  v2[1] = sub_226FF99D4;

  return sub_2272BF040();
}

uint64_t sub_226FF99D4(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_226FF9AD4, 0, 0);
}

uint64_t sub_226FF9AD4()
{
  v1 = *(v0 + 304);
  if (v1 && (v2 = *(v1 + 16), , v2 <= 1))
  {
    v25 = (*(v0 + 56) + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_notificationSettingsProvider);
    v26 = v25[3];
    v27 = v25[4];
    __swift_project_boxed_opaque_existential_0(v25, v26);
    v28 = *(MEMORY[0x277D4FB48] + 4);
    v29 = swift_task_alloc();
    *(v0 + 312) = v29;
    *v29 = v0;
    v29[1] = sub_226FF9D54;
    v30 = *(v0 + 288);
    v31 = *(v0 + 264);

    return MEMORY[0x2821AFD30](v31, v30, v26, v27);
  }

  else
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 208);

    sub_22766A600();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "[Notification Settings Migration]: Other supported device on the account, not migrating", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v8 = *(v0 + 232);
    v9 = *(v0 + 208);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 56);

    v8(v9, v10);
    sub_226FFA584(v12);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v32 = *(v0 + 112);
    v33 = *(v0 + 104);
    v34 = *(v0 + 80);

    v23 = *(v0 + 8);

    return v23(0);
  }
}

uint64_t sub_226FF9D54()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_226FFA288;
  }

  else
  {
    v3 = sub_226FF9E68;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FF9E68()
{
  v39 = v0;
  v1 = v0[33];
  v2 = v0[27];
  sub_22766A600();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[29];
  v9 = v0[27];
  v11 = v0[19];
  v10 = v0[20];
  if (v5)
  {
    v36 = v0[27];
    v12 = v0[15];
    v34 = v0[29];
    v13 = swift_slowAlloc();
    v32 = v11;
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x22AA98660](v7, v12);
    v17 = v16;

    v18 = sub_226E97AE8(v15, v17, &v38);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_226E8E000, v3, v4, "[Notification Settings Migration] Migrated setting %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v34(v36, v32);
  }

  else
  {
    v19 = v0[33];

    v8(v9, v11);
  }

  sub_226FFA584(v0[7]);
  v21 = v0[27];
  v20 = v0[28];
  v23 = v0[25];
  v22 = v0[26];
  v25 = v0[23];
  v24 = v0[24];
  v27 = v0[21];
  v26 = v0[22];
  v29 = v0[17];
  v28 = v0[18];
  v33 = v0[14];
  v35 = v0[13];
  v37 = v0[10];

  v30 = v0[1];

  return v30(1);
}

uint64_t sub_226FFA0DC()
{
  v1 = v0[25];
  sub_22766A600();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[Notification Settings Migration]: No account to migrate settings", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[7];

  v5(v6, v7);
  sub_226FFA584(v9);
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[21];
  v16 = v0[22];
  v19 = v0[17];
  v18 = v0[18];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[10];

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_226FFA288()
{
  v48 = v0;
  v1 = v0[40];
  v2 = v0[33];
  v3 = v0[21];
  sub_22766A600();

  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[40];
    v8 = v0[36];
    v9 = v0[33];
    v43 = v0[21];
    v45 = v0[29];
    v40 = v0[20];
    v41 = v0[19];
    v10 = v0[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v47 = v12;
    *v11 = 136315394;
    v13 = MEMORY[0x22AA98660](v9, v10);
    v15 = v14;

    v16 = sub_226E97AE8(v13, v15, &v47);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v17 = v0[2];
    v18 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v20 = sub_226E97AE8(v18, v19, &v47);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_226E8E000, v5, v6, "[Notification Settings Migration]: Failed to update settings: %s, error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    v45(v43, v41);
  }

  else
  {
    v21 = v0[40];
    v22 = v0[36];
    v23 = v0[33];
    v24 = v0[29];
    v26 = v0[20];
    v25 = v0[21];
    v27 = v0[19];

    v24(v25, v27);
  }

  sub_226FFA584(v0[7]);
  v29 = v0[27];
  v28 = v0[28];
  v31 = v0[25];
  v30 = v0[26];
  v33 = v0[23];
  v32 = v0[24];
  v35 = v0[21];
  v34 = v0[22];
  v37 = v0[17];
  v36 = v0[18];
  v42 = v0[14];
  v44 = v0[13];
  v46 = v0[10];

  v38 = v0[1];

  return v38(0);
}

uint64_t sub_226FFA584(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  sub_22766AED0();
  v7 = sub_22766BFD0();

  [v6 setBool:1 forKey:v7];

  v8 = *__swift_project_boxed_opaque_existential_0((a1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter), *(a1 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_engagementNotificationCenter + 24));
  v9 = sub_22766C4B0();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  sub_2272CA940(0, 0, v5, &unk_227675230, v10);
}

uint64_t sub_226FFA70C()
{
  v1[247] = v0;
  v2 = sub_22766B390();
  v1[253] = v2;
  v3 = *(v2 - 8);
  v1[259] = v3;
  v4 = *(v3 + 64) + 15;
  v1[265] = swift_task_alloc();
  v1[271] = swift_task_alloc();
  v1[277] = swift_task_alloc();
  v1[283] = swift_task_alloc();
  v1[289] = swift_task_alloc();
  v1[295] = swift_task_alloc();
  v1[301] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FFA814, 0, 0);
}

uint64_t sub_226FFA814()
{
  v1 = v0[301];
  v2 = v0[259];
  v3 = v0[253];
  v4 = v0[247];
  sub_22766A730();
  sub_22766B370();
  v5 = *(v2 + 8);
  v0[307] = v5;
  v0[313] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = objc_opt_self();
  v0[319] = v6;
  v7 = [v6 standardUserDefaults];
  v8 = sub_22766BFD0();
  v9 = [v7 BOOLForKey_];

  v10 = *(v4 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_platform);
  v11 = sub_227669410();
  if (v11 == sub_227669410())
  {
    v12 = [objc_opt_self() sharedBehavior];
    if (!v12)
    {
      __break(1u);
      return MEMORY[0x282200928](v12, v13, v14, v15);
    }

    v16 = v12;
    v17 = [v12 fitnessMode];

    if (!((v17 != 2) | v9 & 1))
    {
      if (BYSetupAssistantNeedsToRun())
      {
        v18 = v0[271];
        sub_22766A730();
        v19 = sub_22766B380();
        v20 = sub_22766C8B0();
        v21 = os_log_type_enabled(v19, v20);
        v22 = v0[271];
        v23 = v0[253];
        if (v21)
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_226E8E000, v19, v20, "[Amelia Badging] In buddy flow, not launching Fitness", v24, 2u);
          MEMORY[0x22AA9A450](v24, -1, -1);
        }

        v5(v22, v23);
        goto LABEL_8;
      }

      v34 = v0[247];
      v35 = swift_allocObject();
      v0[325] = v35;
      *(v35 + 16) = v34;
      v36 = v34;
      swift_asyncLet_begin();
      v37 = swift_allocObject();
      v0[331] = v37;
      *(v37 + 16) = v36;
      v38 = v36;
      swift_asyncLet_begin();
      v39 = swift_allocObject();
      v0[337] = v39;
      *(v39 + 16) = v38;
      v40 = v38;
      swift_asyncLet_begin();
      v14 = sub_226FFAC14;
      v12 = v0 + 82;
      v13 = v0 + 2890;
      v15 = v0 + 248;

      return MEMORY[0x282200928](v12, v13, v14, v15);
    }
  }

LABEL_8:
  v25 = v0[301];
  v26 = v0[295];
  v27 = v0[289];
  v28 = v0[283];
  v29 = v0[277];
  v30 = v0[271];
  v31 = v0[265];

  v32 = v0[1];

  return v32();
}

uint64_t sub_226FFAC30()
{
  if (*(v0 + 2890) == 1)
  {

    return MEMORY[0x282200930](v0 + 16, v0 + 2889, sub_226FFAD88, v0 + 2176);
  }

  else
  {
    v1 = *(v0 + 2216);
    sub_22766A730();
    v2 = sub_22766B380();
    v3 = sub_22766C8B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226E8E000, v2, v3, "[Amelia Badging] Content unavailable, not launching Fitness", v4, 2u);
      MEMORY[0x22AA9A450](v4, -1, -1);
    }

    v5 = *(v0 + 2504);
    v6 = *(v0 + 2456);
    v7 = *(v0 + 2216);
    v8 = *(v0 + 2024);

    v6(v7, v8);

    return MEMORY[0x282200920](v0 + 1296, v0 + 2888, sub_226FFB5D0, v0 + 2032);
  }
}

uint64_t sub_226FFAD88()
{
  *(v1 + 2744) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 1296, v1 + 2888, sub_226FFB648, v1 + 2224);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_226FFADCC, 0, 0);
  }
}

uint64_t sub_226FFADCC()
{
  if (*(v0 + 2889) == 1)
  {

    return MEMORY[0x282200928](v0 + 1296, v0 + 2888, sub_226FFAF24, v0 + 2512);
  }

  else
  {
    v1 = *(v0 + 2264);
    sub_22766A730();
    v2 = sub_22766B380();
    v3 = sub_22766C8B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226E8E000, v2, v3, "[Amelia Badging] Privacy acknowledged, not launching Fitness", v4, 2u);
      MEMORY[0x22AA9A450](v4, -1, -1);
    }

    v5 = *(v0 + 2504);
    v6 = *(v0 + 2456);
    v7 = *(v0 + 2264);
    v8 = *(v0 + 2024);

    v6(v7, v8);

    return MEMORY[0x282200920](v0 + 1296, v0 + 2888, sub_226FFB558, v0 + 2368);
  }
}

uint64_t sub_226FFAF40()
{
  if (*(v0 + 2888) == 1)
  {
    v1 = *(v0 + 2360);
    sub_22766A730();
    v2 = sub_22766B380();
    v3 = sub_22766C8B0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_226E8E000, v2, v3, "[Amelia Badging] Launching Fitness for Amelia Badging", v4, 2u);
      MEMORY[0x22AA9A450](v4, -1, -1);
    }

    v5 = *(v0 + 2504);
    v6 = *(v0 + 2456);
    v7 = *(v0 + 2360);
    v8 = *(v0 + 2024);

    v6(v7, v8);
    v9 = swift_task_alloc();
    *(v0 + 2792) = v9;
    *v9 = v0;
    v9[1] = sub_226FFB158;
    v10 = *(v0 + 1976);

    return sub_226FFCEE8();
  }

  else
  {
    v12 = *(v0 + 2312);
    sub_22766A730();
    v13 = sub_22766B380();
    v14 = sub_22766C8B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226E8E000, v13, v14, "[Amelia Badging] notification not authorized, not launching Fitness", v15, 2u);
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    v16 = *(v0 + 2504);
    v17 = *(v0 + 2456);
    v18 = *(v0 + 2312);
    v19 = *(v0 + 2024);

    v17(v18, v19);

    return MEMORY[0x282200920](v0 + 1296, v0 + 2888, sub_226FFB4C4, v0 + 2560);
  }
}

uint64_t sub_226FFB158()
{
  v2 = *v1;
  v3 = *(*v1 + 2792);
  v5 = *v1;
  *(*v1 + 2840) = v0;

  if (v0)
  {

    return MEMORY[0x282200920](v2 + 1296, v2 + 2888, sub_226FFB8C8, v2 + 2704);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226FFB298, 0, 0);
  }
}

uint64_t sub_226FFB298()
{
  v1 = [*(v0 + 2552) standardUserDefaults];
  v2 = sub_22766BFD0();
  [v1 setBool:1 forKey:v2];

  return MEMORY[0x282200920](v0 + 1296, v0 + 2888, sub_226FFB358, v0 + 2848);
}

uint64_t sub_226FFB3EC()
{
  v1 = v0[337];
  v2 = v0[331];
  v3 = v0[325];

  v4 = v0[301];
  v5 = v0[295];
  v6 = v0[289];
  v7 = v0[283];
  v8 = v0[277];
  v9 = v0[271];
  v10 = v0[265];

  v11 = v0[1];

  return v11();
}

uint64_t sub_226FFB6DC()
{
  v1 = *(v0 + 2744);
  v2 = *(v0 + 2120);
  sub_22766A730();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226E8E000, v4, v5, "[Amelia Badging] Not launching Fitness due to error %@", v6, 0xCu);
    sub_226E97D1C(v7, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 2696);
  v11 = *(v0 + 2648);
  v12 = *(v0 + 2600);
  v13 = *(v0 + 2504);
  (*(v0 + 2456))(*(v0 + 2120), *(v0 + 2024));

  v14 = *(v0 + 2408);
  v15 = *(v0 + 2360);
  v16 = *(v0 + 2312);
  v17 = *(v0 + 2264);
  v18 = *(v0 + 2216);
  v19 = *(v0 + 2168);
  v20 = *(v0 + 2120);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_226FFB95C()
{
  v1 = *(v0 + 2840);
  v2 = *(v0 + 2120);
  sub_22766A730();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_226E8E000, v4, v5, "[Amelia Badging] Not launching Fitness due to error %@", v6, 0xCu);
    sub_226E97D1C(v7, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 2696);
  v11 = *(v0 + 2648);
  v12 = *(v0 + 2600);
  v13 = *(v0 + 2504);
  (*(v0 + 2456))(*(v0 + 2120), *(v0 + 2024));

  v14 = *(v0 + 2408);
  v15 = *(v0 + 2360);
  v16 = *(v0 + 2312);
  v17 = *(v0 + 2264);
  v18 = *(v0 + 2216);
  v19 = *(v0 + 2168);
  v20 = *(v0 + 2120);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_226FFBB48(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_2276658F0();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FFBC14, 0, 0);
}

uint64_t sub_226FFBC14()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[7] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver), *(v0[7] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_contentAvailabilityObserver + 24));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_226FFBCC4;
  v3 = v0[11];

  return sub_226EA84C8(v3);
}

uint64_t sub_226FFBCC4()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226FFBDC0, 0, 0);
}

uint64_t sub_226FFBDC0()
{
  v1 = v0[11];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D51A28], v0[8]);
  sub_226FFDA58();
  sub_22766C290();
  sub_22766C290();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v2 = 1;
  }

  else
  {
    v3 = v0[3];
    v4 = v0[5];
    v2 = sub_22766D190();
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[6];
  v8 = *(v0[9] + 8);
  v8(v0[10], v6);
  v8(v5, v6);

  *v7 = v2 & 1;

  v9 = v0[1];

  return v9();
}

uint64_t sub_226FFBF28(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_227666C80();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  v1[7] = v5;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_226FFC024;

  return sub_226FFC4A8(v5);
}

uint64_t sub_226FFC024()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_226FFC220;
  }

  else
  {
    v3 = sub_226FFC138;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FFC138()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = sub_227666C60();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *(v0 + 16) = v5;
  *(v0 + 24) = v7 & 1;
  *(v0 + 25) = 0;
  sub_226FFD9B0();
  sub_226FFDA04();
  *v4 = sub_227663B30() & 1;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_226FFC220()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_226FFC284(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_226FFC318;

  return sub_226FFC984();
}

uint64_t sub_226FFC318(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_226FFC418, 0, 0);
}

uint64_t sub_226FFC418()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = [v1 authorizationStatus];

  *v2 = v3 == 2;
  v4 = v0[1];

  return v4();
}

uint64_t sub_226FFC4A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD570, &unk_227670850);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FFC5D0, 0, 0);
}

uint64_t sub_226FFC5D0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = *__swift_project_boxed_opaque_existential_0((v0[3] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_privacyPreferenceDataSource), *(v0[3] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_privacyPreferenceDataSource + 24));
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v2, v4);
  sub_227360A74(v1);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *(v6 + 16) = "SeymourServices/EngagementNotificationCoordinator.swift";
  *(v6 + 24) = 55;
  *(v6 + 32) = 2;
  *(v6 + 40) = 197;
  *(v6 + 48) = v1;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = sub_227666C80();
  *v8 = v0;
  v8[1] = sub_226FFC770;
  v10 = v0[2];

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226FFD7B8, v6, v9);
}

uint64_t sub_226FFC770()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *v1;
  v4[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226FFC8FC, 0, 0);
  }

  else
  {
    v5 = v4[6];
    (*(v4[8] + 8))(v4[9], v4[7]);

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_226FFC8FC()
{
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_226FFC9A4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_platform);
  sub_2276693E0();
  v2 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v3 = sub_22766BFD0();

  v4 = [v2 initWithBundleIdentifier_];
  v0[4] = v4;

  v5 = swift_task_alloc();
  v0[5] = v5;
  *(v5 + 16) = v4;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  v8 = sub_226FFD6F0();
  *v7 = v0;
  v7[1] = sub_226FFCB04;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000001ELL, 0x80000002276968B0, sub_226FFD6E8, v5, v8);
}

uint64_t sub_226FFCB04()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_226FFCC1C, 0, 0);
}

uint64_t sub_226FFCC1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_226FFCC80(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B18, &unk_2276751D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_226FFD73C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226FFCE80;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);

  [a2 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t sub_226FFCE30(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B18, &unk_2276751D8);
  return sub_22766C450();
}

void sub_226FFCE80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_226FFCEE8()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FFCFEC, 0, 0);
}

uint64_t sub_226FFCFEC()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v3 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_platform);
  sub_2276693E0();
  v5 = *(v3 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_appLauncher + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_appLauncher), *(v3 + OBJC_IVAR____TtC15SeymourServices33EngagementNotificationCoordinator_appLauncher + 24));
  sub_227665920();
  sub_227662470();

  sub_22766AAC0();

  sub_226E97D1C(v2, &unk_27D7BB570, &unk_227670FC0);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *(v6 + 16) = "SeymourServices/EngagementNotificationCoordinator.swift";
  *(v6 + 24) = 55;
  *(v6 + 32) = 2;
  *(v6 + 40) = 212;
  *(v6 + 48) = v1;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_226FFD1A4;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_226EC4D0C, v6, v9);
}

uint64_t sub_226FFD1A4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v5 = sub_226FFD364;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v5 = sub_226FFD2F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226FFD2F4()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226FFD364()
{
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

id sub_226FFD41C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementNotificationCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EngagementNotificationCoordinator()
{
  result = qword_28139DB28;
  if (!qword_28139DB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226FFD5B0()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_226FFD694()
{
  result = qword_27D7B9B10;
  if (!qword_27D7B9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9B10);
  }

  return result;
}

unint64_t sub_226FFD6F0()
{
  result = qword_281398A88;
  if (!qword_281398A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281398A88);
  }

  return result;
}

uint64_t sub_226FFD73C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B18, &unk_2276751D8) - 8) + 80);

  return sub_226FFCE30(a1);
}

uint64_t sub_226FFD7D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_226FFBB48(a1, v4);
}

uint64_t sub_226FFD870(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return sub_226FFBF28(a1);
}

uint64_t sub_226FFD910(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_226FFC284(a1);
}

unint64_t sub_226FFD9B0()
{
  result = qword_28139B5B0;
  if (!qword_28139B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B5B0);
  }

  return result;
}

unint64_t sub_226FFDA04()
{
  result = qword_28139B5A8;
  if (!qword_28139B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B5A8);
  }

  return result;
}

unint64_t sub_226FFDA58()
{
  result = qword_28139B798;
  if (!qword_28139B798)
  {
    sub_2276658F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B798);
  }

  return result;
}

uint64_t sub_226FFDAB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227217930(a1, v4, v5, v6);
}

uint64_t sub_226FFDB6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_227217930(a1, v4, v5, v6);
}

uint64_t sub_226FFDC20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_226FF75A0(a1, v4, v5, v6);
}

unint64_t sub_226FFDCDC()
{
  result = qword_28139DEC0;
  if (!qword_28139DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139DEC0);
  }

  return result;
}

uint64_t sub_226FFDD30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_226FF7A50(a1, v4, v5, v6);
}

uint64_t sub_226FFDE0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226FFDEDC();
  }

  return result;
}

uint64_t sub_226FFDE64()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_22766A030();
    sub_226FFE670(v1, v2);
  }

  return result;
}

uint64_t sub_226FFDEDC()
{
  v0 = sub_227667900();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v11 + 8))(v14, v10);
  sub_2276678E0();
  sub_226E923DC(v4, v9);
  (*(v1 + 8))(v4, v0);
  v15 = sub_227669290();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_226FFE1A8;
  *(v16 + 24) = 0;
  v15(sub_226E93814, v16);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_226FFE1A8(uint64_t a1)
{
  v2 = sub_227662750();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227665AD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = sub_22766B390();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v39 - v23);
  sub_226FFEA28(a1, &v39 - v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    sub_22766A640();
    v26 = v25;
    v27 = sub_22766B380();
    v28 = sub_22766C8B0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v25;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_226E8E000, v27, v28, "Failed to schedule fetch service subscription: %@", v29, 0xCu);
      sub_226F2534C(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    else
    {
    }

    return (*(v41 + 8))(v20, v42);
  }

  else
  {
    (*(v7 + 32))(v13, v24, v6);
    sub_22766A640();
    (*(v7 + 16))(v11, v13, v6);
    v33 = sub_22766B380();
    v34 = sub_22766C8B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109120;
      sub_227662740();
      v36 = sub_227665AA0();
      (*(v39 + 8))(v5, v40);
      LODWORD(v40) = v36 & 1;
      v37 = *(v7 + 8);
      v37(v11, v6);
      *(v35 + 4) = v40;
      _os_log_impl(&dword_226E8E000, v33, v34, "Scheduled service subscription fetch: %{BOOL}d", v35, 8u);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    else
    {
      v37 = *(v7 + 8);
      v37(v11, v6);
    }

    (*(v41 + 8))(v18, v42);
    return (v37)(v13, v6);
  }
}

uint64_t sub_226FFE670(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766A2B0();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16 == 0xD000000000000037 && 0x8000000227696A30 == a2 || (result = sub_22766D190(), (result & 1) != 0))
  {
    sub_22766A640();
    v20 = sub_22766B380();
    v21 = sub_22766C8B0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31 = v4;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_226E8E000, v20, v21, "[ServiceSubscriptionSystem] Handling service subscription changed stream event", v22, 2u);
      v24 = v23;
      v4 = v31;
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    v25 = v32;
    v26 = *(v32 + 88);
    v27 = *(v32 + 96);
    swift_getObjectType();
    (*(v9 + 104))(v12, *MEMORY[0x277D4E120], v8);
    sub_227669660();
    (*(v9 + 8))(v12, v8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    swift_getObjectType();
    sub_22766A2A0();
    sub_2276699D0();
    return (*(v33 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_226FFE9B4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v2 = v0[10];

  v3 = v0[11];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_226FFEA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B28, &unk_227684550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SQLiteDatabase.hash(into:)()
{
  v1 = v0;
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SQLiteDatabase();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226FFF108(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B30, &qword_227675350) + 48));
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x22AA996B0](1);
    sub_226FFF1B4(&qword_28139BDE0, MEMORY[0x277CC9260]);
    sub_22766BF60();
    v12 = sub_227669C30();
    MEMORY[0x22AA996B0](v12);
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = *v10;
    v15 = v10[1];
    MEMORY[0x22AA996B0](0);
    sub_22766C100();
  }
}

uint64_t SQLiteDatabase.hashValue.getter()
{
  sub_22766D370();
  SQLiteDatabase.hash(into:)();
  return sub_22766D3F0();
}

uint64_t sub_226FFECE8()
{
  sub_22766D370();
  SQLiteDatabase.hash(into:)();
  return sub_22766D3F0();
}

uint64_t sub_226FFED2C()
{
  sub_22766D370();
  SQLiteDatabase.hash(into:)();
  return sub_22766D3F0();
}

BOOL _s15SeymourServices14SQLiteDatabaseO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SQLiteDatabase();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v36 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B60, &qword_2276753D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v36 - v19;
  v21 = (&v36 + *(v18 + 56) - v19);
  sub_226FFF108(a1, &v36 - v19);
  sub_226FFF108(a2, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226FFF108(v20, v13);
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B30, &qword_227675350) + 48);
    v23 = v13[v22];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *(v21 + v22);
      (*(v5 + 32))(v8, v21, v4);
      v25 = sub_227662420();
      v26 = *(v5 + 8);
      v26(v13, v4);
      if (v25)
      {
        v27 = sub_227669C30();
        v28 = sub_227669C30();
        v26(v8, v4);
        sub_226FFF374(v20);
        return v27 == v28;
      }

      v26(v8, v4);
      goto LABEL_16;
    }

    (*(v5 + 8))(v13, v4);
LABEL_8:
    sub_226FFF30C(v20);
    return 0;
  }

  sub_226FFF108(v20, v15);
  v31 = *v15;
  v30 = v15[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_8;
  }

  if (v31 == *v21 && v30 == v21[1])
  {
    v35 = v21[1];
  }

  else
  {
    v33 = v21[1];
    v34 = sub_22766D190();

    if ((v34 & 1) == 0)
    {
LABEL_16:
      sub_226FFF374(v20);
      return 0;
    }
  }

  sub_226FFF374(v20);
  return 1;
}

uint64_t type metadata accessor for SQLiteDatabase()
{
  result = qword_27D7B9B40;
  if (!qword_27D7B9B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226FFF108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLiteDatabase();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FFF1B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226FFF1FC()
{
  sub_226FFF270();
  if (v0 <= 0x3F)
  {
    sub_226FFF2A0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_226FFF270()
{
  result = qword_27D7B9B50;
  if (!qword_27D7B9B50)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27D7B9B50);
  }

  return result;
}

void sub_226FFF2A0()
{
  if (!qword_27D7B9B58)
  {
    sub_2276624A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D7B9B58);
    }
  }
}

uint64_t sub_226FFF30C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B60, &qword_2276753D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FFF374(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteDatabase();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FFF3D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  v25 = *(a1 + 16);
  sub_226F1FB48(0, v1, 0);
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

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_226F1FB48((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + v15 + 32) = v12;
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

    if (v13 != *(a1 + 36))
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
          sub_226EB526C(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_226EB526C(result, v13, 0);
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

uint64_t sub_226FFF5EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_227662BD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_227668B10();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662C50();
  v34 = sub_226FFF3D0(v12);

  v35 = v1;
  v13 = sub_227662C10();
  v14 = *(v13 + 16);
  if (v14)
  {
    v33[1] = a1;
    v53 = MEMORY[0x277D84F90];
    v15 = v13;
    sub_226F1FB28(0, v14, 0);
    result = v15;
    v17 = 0;
    v18 = v53;
    v41 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v42 = v14;
    v39 = (v4 + 8);
    v40 = v4 + 16;
    v37 = v3;
    v38 = v8 + 32;
    v36 = v4;
    v44 = v11;
    v45 = v8;
    v43 = result;
    while (v17 < *(result + 16))
    {
      (*(v4 + 16))(v7, v41 + *(v4 + 72) * v17, v3);
      v19 = sub_227662B80();
      v21 = v20;
      v51 = sub_227662BC0();
      v50 = sub_227662BA0();
      v49 = sub_227662B90();
      v22 = sub_227662BB0();
      v23 = *(v22 + 16);
      if (v23)
      {
        v47 = v21;
        v48 = v19;
        v52 = MEMORY[0x277D84F90];
        sub_226F1FB48(0, v23, 0);
        v24 = v52;
        v25 = *(v52 + 16);
        v26 = 32;
        do
        {
          v27 = *(v22 + v26);
          v52 = v24;
          v28 = *(v24 + 24);
          if (v25 >= v28 >> 1)
          {
            sub_226F1FB48((v28 > 1), v25 + 1, 1);
            v24 = v52;
          }

          *(v24 + 16) = v25 + 1;
          *(v24 + v25 + 32) = v27;
          ++v26;
          ++v25;
          --v23;
        }

        while (v23);

        v4 = v36;
        v3 = v37;
      }

      else
      {
      }

      v29 = v44;
      sub_227668AD0();
      (*v39)(v7, v3);
      v53 = v18;
      v31 = *(v18 + 16);
      v30 = *(v18 + 24);
      v32 = v45;
      if (v31 >= v30 >> 1)
      {
        sub_226F1FB28(v30 > 1, v31 + 1, 1);
        v18 = v53;
      }

      ++v17;
      *(v18 + 16) = v31 + 1;
      (*(v32 + 32))(v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31, v29, v46);
      result = v43;
      if (v17 == v42)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    sub_227662C20();
    if (sub_227662C40() <= 0)
    {
      sub_227662C20();
    }

    else
    {
      sub_227662C40();
    }

    sub_227662C30();
    sub_226F43718(v34);

    return sub_227668860();
  }

  return result;
}

size_t static PlaylistItem.representativeSamples()()
{
  v31 = sub_227663AB0();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v31);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  sub_226FFFEB8();
  v5 = sub_22766CFA0();
  sub_226F5D220();
  v6 = sub_22766CFA0();
  sub_226FFFF0C();
  sub_226ED56C4();
  v7 = sub_227663B50();
  sub_226F5D274();
  v8 = sub_22766BE70();
  v47 = v5;
  v48[0] = v4;
  v48[1] = v48;
  v48[2] = &v47;
  v45 = v7;
  v46 = v6;
  v48[3] = &v46;
  v48[4] = &v45;
  v44 = v8;
  v48[5] = &v44;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B78, &qword_2276753E0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CE8, &qword_227671E40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B80, &qword_2276753E8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v34 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v35 = sub_226F5BF60(&qword_27D7B9B88, &qword_27D7B9B78, &qword_2276753E0);
  v36 = sub_226F5BF60(&qword_27D7B8D08, &qword_27D7B8CE8, &qword_227671E40);
  v37 = sub_226F5BF60(&qword_27D7B9B90, &qword_27D7B9B80, &qword_2276753E8);
  v38 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_226F1F348(0, v10, 0);
    v12 = 0;
    v13 = v33;
    v27 = v0 + 32;
    v14 = v9 + 48;
    v30 = v0;
    v29 = v9;
    v28 = v10;
    v26 = v3;
    while (v12 < *(v9 + 16))
    {
      v15 = *(v14 - 16);
      v16 = *(v14 - 8);
      v17 = *v14;
      v18 = *(v14 + 8);
      v32 = v13;
      v19 = *(v14 + 16);
      v20 = *(v14 + 24);
      v21 = *(v14 + 32);
      v22 = *(v14 + 40);

      sub_226EB396C(v19, v20, v21);
      v13 = v32;
      sub_227663A50();
      v33 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1F348(v23 > 1, v24 + 1, 1);
        v13 = v33;
      }

      ++v12;
      *(v13 + 16) = v24 + 1;
      result = (*(v30 + 32))(v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v26, v31);
      v14 += 64;
      v9 = v29;
      if (v28 == v12)
      {

        return v13;
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

unint64_t sub_226FFFEB8()
{
  result = qword_27D7B9B68;
  if (!qword_27D7B9B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9B68);
  }

  return result;
}

unint64_t sub_226FFFF0C()
{
  result = qword_27D7B9B70;
  if (!qword_27D7B9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9B70);
  }

  return result;
}

void sub_226FFFF60(void *a1)
{
  v2 = [a1 identifier];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 mediaType];
  if (!v4)
  {

LABEL_5:
    v6 = sub_227664DD0();
    sub_2270001DC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v4;
  sub_22766C000();

  [a1 index];
  [a1 healthKitActivityType];
  sub_226ED56C4();
  sub_227663AE0();
  [a1 duration];
  sub_227663A50();
LABEL_6:
}

uint64_t sub_227000184(uint64_t a1)
{
  result = sub_2270001DC(&qword_2813A57D0, MEMORY[0x277D502D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2270001DC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_227000224(void *a1)
{
  sub_227663A60();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  v3 = sub_227663A80();
  if (v3 >= 0x7FFFFFFF)
  {
    v4 = 0x7FFFFFFFLL;
  }

  else
  {
    v4 = v3;
  }

  [a1 setIndex_];
  v5 = sub_227663A70();
  if (v5 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
  }

  [a1 setHealthKitActivityType_];
  v7 = sub_227663AA0();
  v9 = v8;
  v11 = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9B98, &qword_227675438);
  sub_227663AD0();
  v12 = sub_22766BFD0();
  sub_226EB2DFC(v7, v9, v11);

  [a1 setMediaType_];

  sub_227663A90();
  return [a1 setDuration_];
}

uint64_t sub_227000374()
{
  v1 = v0;
  v2 = sub_227669A70();
  v52 = v2;
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  v50 = v1;
  ObjectType = swift_getObjectType();
  v53 = v12;
  v15 = *MEMORY[0x277D4E748];
  v16 = v3[13];
  v49 = v3 + 13;
  v16(v6, v15, v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v47 = v13;
  v48 = ObjectType;
  sub_227669E90();

  v17 = v3[1];
  v46 = v3 + 1;
  v18 = v52;
  v17(v6, v52);
  v51 = v17;
  swift_unknownObjectRelease();
  v53 = v12;
  v16(v6, *MEMORY[0x277D4E8F0], v18);
  v45 = v16;
  swift_allocObject();
  swift_weakInit();
  v44 = sub_2276668F0();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v19 = v52;
  v17(v6, v52);
  swift_unknownObjectRelease();
  v53 = v12;
  v16(v6, *MEMORY[0x277D4E960], v19);
  swift_allocObject();
  swift_weakInit();
  v43 = sub_227666F20();
  swift_unknownObjectRetain();
  sub_227669E80();

  v51(v6, v19);
  swift_unknownObjectRelease();
  v53 = v12;
  v45(v6, *MEMORY[0x277D4E978], v19);
  swift_allocObject();
  swift_weakInit();
  v42 = sub_227667170();
  swift_unknownObjectRetain();
  sub_227669E80();

  v21 = v51;
  v20 = v52;
  v51(v6, v52);
  swift_unknownObjectRelease();
  v53 = v12;
  v22 = v45;
  v45(v6, *MEMORY[0x277D4E9F0], v20);
  swift_allocObject();
  swift_weakInit();
  v41 = sub_2276675F0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v23 = v52;
  v21(v6, v52);
  swift_unknownObjectRelease();
  v53 = v12;
  v22(v6, *MEMORY[0x277D4E800], v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v21(v6, v23);
  swift_unknownObjectRelease();
  v53 = v12;
  v40 = *MEMORY[0x277D4E9B8];
  (v22)(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v24 = v51;
  v51(v6, v23);
  swift_unknownObjectRelease();
  v53 = v12;
  v39 = *MEMORY[0x277D4EA00];
  v25 = v45;
  (v45)(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v26 = v52;
  v24(v6, v52);
  swift_unknownObjectRelease();
  v53 = v12;
  v37 = *MEMORY[0x277D4EA08];
  v27 = v26;
  v25(v6);
  swift_allocObject();
  v28 = v50;
  swift_weakInit();
  sub_227669EA0();

  v29 = v51;
  v51(v6, v27);
  swift_unknownObjectRelease();
  v53 = v12;
  v38 = *MEMORY[0x277D4EA50];
  v25(v6);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v30 = v52;
  v29(v6, v52);
  swift_unknownObjectRelease();
  v31 = *(v28 + 88);
  v48 = *(v28 + 104);
  v47 = swift_getObjectType();
  v53 = v31;
  (v25)(v6, v40, v30);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v32 = v51;
  v51(v6, v30);
  swift_unknownObjectRelease();
  v53 = v31;
  (v25)(v6, v39, v30);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v32(v6, v30);
  swift_unknownObjectRelease();
  v53 = v31;
  (v25)(v6, v37, v30);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v33 = v51;
  v51(v6, v30);
  swift_unknownObjectRelease();
  v53 = v31;
  (v25)(v6, v38, v30);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v34 = v52;
  v33(v6, v52);
  swift_unknownObjectRelease();
  v53 = v31;
  (v25)(v6, *MEMORY[0x277D4ECC8], v34);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v33(v6, v34);
  return swift_unknownObjectRelease();
}

uint64_t sub_227001110@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 80);

    sub_22766A750();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[13];
    v10 = v8[14];
    __swift_project_boxed_opaque_existential_0(v8 + 10, v9);

    sub_226ECF5D8(sub_227002F78, v8, v9, MEMORY[0x277D51960], v10, a1);

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BC0, &qword_2276754D8);
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t sub_227001308(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_227001328, 0, 0);
}

uint64_t sub_227001328()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 80);

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_227001470;
    v4 = v0[5];

    return sub_226FC6D5C(v4);
  }

  else
  {
    v6 = v0[5];
    v7 = sub_2276668F0();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_227001470()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22700162C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22700158C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22700158C()
{
  v1 = *(v0 + 40);
  v2 = sub_2276668F0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22700162C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_227001690@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_22766B390();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_227668D10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v32 - v16;
  v17 = *a1;
  v18 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 80);

    sub_227668CF0();
    v21 = *(v12 + 48);
    if (v21(v10, 1, v11) == 1)
    {
      v22 = v35;
      (*(v12 + 104))(v35, *MEMORY[0x277D53870], v11);
      if (v21(v10, 1, v11) != 1)
      {
        sub_227002E04(v10);
      }
    }

    else
    {
      v22 = v35;
      (*(v12 + 32))(v35, v10, v11);
    }

    sub_22766A750();
    sub_22766B370();
    (*(v33 + 8))(v6, v34);
    v25 = v20[13];
    v26 = v20[14];
    __swift_project_boxed_opaque_existential_0(v20 + 10, v25);
    (*(v12 + 16))(v15, v22, v11);
    v27 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    (*(v12 + 32))(v28 + v27, v15, v11);
    v29 = sub_227666F20();

    v24 = v36;
    sub_226ECF5D8(sub_227002EC4, v28, v25, v29, v26, v36);

    (*(v12 + 8))(v22, v11);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v24 = v36;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BB8, &qword_2276754D0);
  return (*(*(v30 - 8) + 56))(v24, v23, 1, v30);
}

uint64_t sub_227001AD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_22766B390();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_227668D10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v32 - v16;
  v17 = *a1;
  v18 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 80);

    sub_227668CF0();
    v21 = *(v12 + 48);
    if (v21(v10, 1, v11) == 1)
    {
      v22 = v35;
      (*(v12 + 104))(v35, *MEMORY[0x277D53870], v11);
      if (v21(v10, 1, v11) != 1)
      {
        sub_227002E04(v10);
      }
    }

    else
    {
      v22 = v35;
      (*(v12 + 32))(v35, v10, v11);
    }

    sub_22766A750();
    sub_22766B370();
    (*(v33 + 8))(v6, v34);
    v25 = v20[13];
    v26 = v20[14];
    __swift_project_boxed_opaque_existential_0(v20 + 10, v25);
    (*(v12 + 16))(v15, v22, v11);
    v27 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    (*(v12 + 32))(v28 + v27, v15, v11);
    v29 = sub_227667170();

    v24 = v36;
    sub_226ECF5D8(sub_227002E98, v28, v25, v29, v26, v36);

    (*(v12 + 8))(v22, v11);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v24 = v36;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BB0, &qword_2276754C8);
  return (*(*(v30 - 8) + 56))(v24, v23, 1, v30);
}

uint64_t sub_227001F18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_22766B390();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_227668D10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v32 - v16;
  v17 = *a1;
  v18 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + 80);

    sub_227668CF0();
    v21 = *(v12 + 48);
    if (v21(v10, 1, v11) == 1)
    {
      v22 = v35;
      (*(v12 + 104))(v35, *MEMORY[0x277D53870], v11);
      if (v21(v10, 1, v11) != 1)
      {
        sub_227002E04(v10);
      }
    }

    else
    {
      v22 = v35;
      (*(v12 + 32))(v35, v10, v11);
    }

    sub_22766A750();
    sub_22766B370();
    (*(v33 + 8))(v6, v34);
    v25 = v20[13];
    v26 = v20[14];
    __swift_project_boxed_opaque_existential_0(v20 + 10, v25);
    (*(v12 + 16))(v15, v22, v11);
    v27 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    (*(v12 + 32))(v28 + v27, v15, v11);
    v29 = sub_2276675F0();

    v24 = v36;
    sub_226ECF5D8(sub_227002E6C, v28, v25, v29, v26, v36);

    (*(v12 + 8))(v22, v11);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v24 = v36;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA8, &qword_2276754C0);
  return (*(*(v30 - 8) + 56))(v24, v23, 1, v30);
}

uint64_t sub_227002360@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 80);

    sub_22766A750();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = v11[13];
    v13 = v11[14];
    __swift_project_boxed_opaque_existential_0(v11 + 10, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_227002DE4, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

uint64_t sub_227002590(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_2270025B0, 0, 0);
}

uint64_t sub_2270025B0()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[7] = *(Strong + 80);

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_2270026B8;
    v4 = v0[5];

    return sub_226FC71E0(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2270026B8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227002FA0, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2270027F4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 80);

    a2(a1);

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v9 - 8) + 56))(a3, v8, 1, v9);
}

uint64_t sub_2270028E4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 80);

    sub_22766A750();
    sub_22766B370();
    (*(v5 + 8))(v8, v4);
    v12 = v11[13];
    v13 = v11[14];
    __swift_project_boxed_opaque_existential_0(v11 + 10, v12);
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v9;

    sub_226ECF5D8(sub_227002DC4, v14, v12, MEMORY[0x277D84F78] + 8, v13, a2);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

uint64_t sub_227002B40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_227001308(a1, v1);
}

uint64_t sub_227002BFC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227002590(a1, v1);
}

uint64_t sub_227002C94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227002590(a1, v1);
}

void sub_227002DC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_226FC9008();
}

uint64_t sub_227002E04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227002FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_22766B390();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[11] = v10;
  *v10 = v6;
  v10[1] = sub_227003098;

  return sub_227003714();
}

uint64_t sub_227003098(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_2270034DC;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_2270031C0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2270031C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v1 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_energyBurnedDataProvider);
  *(v1 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_energyBurnedDataProvider) = v0[13];

  v7 = v1[15];
  v8 = v1[16];
  __swift_project_boxed_opaque_existential_0(v1 + 12, v7);
  v9 = swift_allocObject();
  v0[14] = v9;
  v9[2] = v5;
  v9[3] = v3;
  v9[4] = v4;
  v9[5] = v2;
  v9[6] = v1;
  v10 = *(v8 + 24);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[15] = v12;
  v13 = sub_227667A70();
  *v12 = v0;
  v12[1] = sub_227003390;
  v14 = v0[2];

  return (v16)(v14, sub_227005FEC, v9, v13, v7, v8);
}

uint64_t sub_227003390()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2270035F4, 0, 0);
  }

  else
  {
    v4 = v3[14];
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2270034DC()
{
  v1 = v0[12];
  v2 = v0[10];
  sub_22766A610();
  v3 = sub_22766B380();
  v4 = sub_22766C890();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226E8E000, v3, v4, "Failed to create new AchievementEnvironment", v5, 2u);
    MEMORY[0x22AA9A450](v5, -1, -1);
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  (*(v7 + 8))(v6, v8);
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_2270035F4()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[10];
  sub_22766A610();
  v4 = sub_22766B380();
  v5 = sub_22766C890();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226E8E000, v4, v5, "Failed to create new AchievementEnvironment", v6, 2u);
    MEMORY[0x22AA9A450](v6, -1, -1);
  }

  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  (*(v8 + 8))(v7, v9);
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_227003714()
{
  v1[29] = v0;
  v2 = sub_22766B390();
  v1[30] = v2;
  v3 = *(v2 - 8);
  v1[31] = v3;
  v4 = *(v3 + 64) + 15;
  v1[32] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[33] = v5;
  *v5 = v1;
  v5[1] = sub_227003804;

  return sub_2270055E8(35);
}

uint64_t sub_227003804(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v7 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v5 = sub_227003D0C;
  }

  else
  {
    v5 = sub_227003918;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227003918()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  sub_226E91B50(v2 + 56, v0 + 80);
  sub_226FB68A4(v2 + 136, v0 + 16);
  sub_226E91B50(v2 + 96, v0 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 80, *(v0 + 104));
  *(v0 + 184) = &type metadata for AchievementAwardDataStore;
  *(v0 + 192) = &off_283AC5C08;
  type metadata accessor for SessionEnergyBurnedDataProvider();
  v3 = swift_allocObject();
  *(v0 + 288) = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 160, &type metadata for AchievementAwardDataStore);
  *(v3 + 48) = &type metadata for AchievementAwardDataStore;
  *(v3 + 56) = &off_283AC5C08;
  *(v3 + 16) = sub_2271480B4(MEMORY[0x277D84F90]);
  sub_227010A38((v0 + 16), (v3 + 64));
  sub_226E92AB8((v0 + 120), v3 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v4 = *(v1 + 16);
  *(v0 + 296) = v4;
  v5 = *(v0 + 272);
  if (v4)
  {
    *(v0 + 304) = 0;
    v6 = *(v5 + 32);
    *(v0 + 312) = v6;

    v7 = swift_task_alloc();
    *(v0 + 320) = v7;
    *v7 = v0;
    v7[1] = sub_227003AD8;
    v8 = *(v0 + 288);

    return sub_2271E12E0(v6);
  }

  else
  {
    v10 = *(v0 + 256);

    v11 = *(v0 + 8);
    v12 = *(v0 + 288);

    return v11(v12);
  }
}

uint64_t sub_227003AD8()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_227003BF0, 0, 0);
}

uint64_t sub_227003BF0()
{
  v1 = v0[38] + 1;
  if (v1 == v0[37])
  {
    v2 = v0[34];
    v3 = v0[32];

    v4 = v0[1];
    v5 = v0[36];

    return v4(v5);
  }

  else
  {
    v0[38] = v1;
    v7 = *(v0[34] + 8 * v1 + 32);
    v0[39] = v7;

    v8 = swift_task_alloc();
    v0[40] = v8;
    *v8 = v0;
    v8[1] = sub_227003AD8;
    v9 = v0[36];

    return sub_2271E12E0(v7);
  }
}

uint64_t sub_227003D0C()
{
  v25 = v0;
  v1 = v0[35];
  v2 = v0[32];
  sub_22766A610();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    v8 = v0[31];
    v7 = v0[32];
    v9 = v0[30];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[25];
    v13 = MEMORY[0x22AA995D0](v0[26], v0[27]);
    v15 = sub_226E97AE8(v13, v14, &v24);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v4, v5, "[AchievementEnvironmentProvider] Failed to load EnergyBurnedDataSource: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v17 = v0[31];
    v16 = v0[32];
    v18 = v0[30];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[35];
  v20 = v0[32];
  swift_willThrow();

  v21 = v0[1];
  v22 = v0[35];

  return v21();
}

uint64_t sub_227003EE0@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a4;
  v37 = a5;
  v38 = a3;
  v34 = a7;
  v35 = a2;
  v10 = type metadata accessor for DateIntervalSessionThreshold();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E40, &unk_227685580);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v31 - v20;
  v22 = sub_227004248();
  v23 = a1;
  sub_2270043C0(a1, v21);
  if (v7)
  {
  }

  v25 = v10;
  v32 = v13;
  v33 = v22;
  __swift_project_boxed_opaque_existential_0((a6 + 56), *(a6 + 80));
  v26 = OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval;
  sub_2274B5B28(v17, (a6 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval), v23);
  sub_226E97D1C(v17, &qword_27D7B9690, qword_227670B50);
  v31[1] = sub_2270045EC(v23);
  v27 = sub_227662010();
  v28 = a6 + v26;
  v29 = v32;
  (*(*(v27 - 8) + 16))(v32, v28, v27);
  *(v29 + v25[5]) = 0x4072C00000000000;
  v30 = v29 + v25[6];
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v29 + v25[7]) = 0x3FE0000000000000;
  sub_2274BAAE4(v29, v23);
  sub_226F733F0(v29);
  sub_227004B5C(v23);

  return sub_227667A20();
}

unint64_t sub_227004248()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_energyBurnedDataProvider);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v6 + 16);
  }

  else
  {
    sub_22766A610();
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226E8E000, v9, v10, "[AchievementEnvironmentProvider] EnergyBurnedDataSource was nil, failed to fetch highest energy burned values per modality", v11, 2u);
      MEMORY[0x22AA9A450](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return sub_2271480B4(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2270043C0@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
  result = sub_2274B71C4((v2 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval), a1, a2);
  if (v3)
  {
    sub_22766A610();
    v12 = v3;
    v13 = sub_22766B380();
    v14 = sub_22766C890();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22 = v6;
      v16 = v15;
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = MEMORY[0x22AA995D0](v23, v24);
      v20 = sub_226E97AE8(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_226E8E000, v13, v14, "Fetching currentWeeklyStreak from achievementDataStore failed with error %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AA9A450](v17, -1, -1);
      MEMORY[0x22AA9A450](v16, -1, -1);

      (*(v7 + 8))(v10, v22);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2270045EC(uint64_t a1)
{
  v3 = v2;
  v65 = *MEMORY[0x277D85DE8];
  v61 = sub_22766B390();
  v5 = *(v61 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v61);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227666FF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226EB16F8(a1);
  if (v2)
  {
    v15 = v61;
    goto LABEL_30;
  }

  v16 = v14;
  v64 = v13;
  v57 = v9;
  v17 = v14[32];
  v18 = v17 & 0x3F;
  v53 = ((1 << v17) + 63) >> 6;
  v54 = a1;
  v19 = 8 * v53;

  v55 = v1;
  if (v18 > 0xD)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v50 = v3;
    v51 = v8;
    v52 = v5;
    v49[1] = v49;
    MEMORY[0x28223BE20](v20);
    v56 = v49 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v56, v19);
    v5 = 0;
    v8 = (v16 + 56);
    v21 = 1 << *(v16 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v16 + 56);
    v3 = (v21 + 63) >> 6;
    v60 = v10 + 16;
    v58 = 0;
    v59 = (v10 + 8);
    v19 = v57;
    v62 = v10;
    v63 = v16;
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_16:
      v28 = v25 | (v5 << 6);
      v24 = v64;
      (*(v10 + 16))(v64, *(v16 + 48) + *(v10 + 72) * v28, v19);
      v29 = *(sub_227666F90() + 16);

      if (v29 == 1)
      {
        v30 = sub_227666F90();
        v31 = *(v30 + 16);
        v32 = 32;
        do
        {
          if (!v31)
          {

            v34 = sub_227666F90();
            v35 = *(v34 + 16);
            v36 = 32;
            v10 = v62;
            v16 = v63;
            v19 = v57;
            while (v35)
            {
              v37 = *(v34 + v36);
              v36 += 8;
              --v35;
              if (v37 == 52)
              {
                goto LABEL_24;
              }
            }

            v24 = v64;
            goto LABEL_8;
          }

          v33 = *(v30 + v32);
          v32 += 8;
          --v31;
        }

        while (v33 != 37);
        v10 = v62;
        v16 = v63;
        v19 = v57;
LABEL_24:

        (*v59)(v64, v19);
        *&v56[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
        if (__OFADD__(v58++, 1))
        {
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_8:
        (*v59)(v24, v19);
        v10 = v62;
        v16 = v63;
      }
    }

    v26 = v5;
    while (1)
    {
      v5 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v5 >= v3)
      {
LABEL_27:
        v39 = sub_226EBAEF0(v56, v53, v58, v16);

        v15 = v61;
        v8 = v51;
        v5 = v52;
        v40 = v50;
        goto LABEL_28;
      }

      v27 = *&v8[8 * v5];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_36:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v47 = swift_slowAlloc();
  v48 = sub_22700C11C(v47, v53, v16, sub_227005144, 0);
  if (!v3)
  {
    v39 = v48;

    MEMORY[0x22AA9A450](v47, -1, -1);

    v40 = 0;
    v15 = v61;
LABEL_28:
    v41 = sub_2270051F0(v39, v54);
    if (!v40)
    {
      v42 = v41;

LABEL_33:
      v45 = *MEMORY[0x277D85DE8];
      return v42;
    }

LABEL_30:
    sub_22766A610();
    v42 = sub_22766B380();
    v43 = sub_22766C890();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_226E8E000, v42, v43, "[AchievementEnvironmentProvider] Failed to fetch modalityReferences, guidedArchivedSessionCounts is [:]", v44, 2u);
      MEMORY[0x22AA9A450](v44, -1, -1);
    }

    (*(v5 + 8))(v8, v15);
    swift_willThrow();
    goto LABEL_33;
  }

  result = MEMORY[0x22AA9A450](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_227004B5C(uint64_t a1)
{
  v2 = v1;
  v67 = *MEMORY[0x277D85DE8];
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227666FF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226EB16F8(a1);
  if (v1)
  {
    v15 = v4;
    goto LABEL_33;
  }

  v16 = v14;
  v65 = v13;
  v59 = v9;
  v17 = v14[32];
  v18 = v17 & 0x3F;
  v56 = ((1 << v17) + 63) >> 6;
  v57 = a1;
  v19 = 8 * v56;

  v15 = v4;
  if (v18 > 0xD)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v52 = v2;
    v53 = v8;
    v54 = v5;
    v55 = v15;
    v51 = &v51;
    MEMORY[0x28223BE20](v20);
    v58 = &v51 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v58, v19);
    v5 = 0;
    v8 = (v16 + 56);
    v21 = 1 << *(v16 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v15 = v22 & *(v16 + 56);
    v2 = (v21 + 63) >> 6;
    v62 = v10 + 16;
    v63 = v10;
    v60 = 0;
    v61 = (v10 + 8);
    v19 = v59;
    v64 = v16;
    while (v15)
    {
      v24 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_16:
      v27 = v24 | (v5 << 6);
      v23 = v65;
      (*(v10 + 16))(v65, *(v16 + 48) + *(v10 + 72) * v27, v19);
      v28 = *(sub_227666F90() + 16);

      if (v28 == 1)
      {
        v29 = sub_227666F90();
        v30 = *(v29 + 16);
        v31 = 32;
        do
        {
          if (!v30)
          {

            v33 = sub_227666F90();
            v34 = *(v33 + 16);
            v35 = 32;
            v10 = v63;
            v16 = v64;
            v19 = v59;
            while (v34)
            {
              v36 = *(v33 + v35);
              v35 += 8;
              --v34;
              if (v36 == 52)
              {
                goto LABEL_24;
              }
            }

            v23 = v65;
            goto LABEL_8;
          }

          v32 = *(v29 + v31);
          v31 += 8;
          --v30;
        }

        while (v32 != 37);
        v10 = v63;
        v16 = v64;
        v19 = v59;
LABEL_24:

        (*v61)(v65, v19);
        *&v58[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
        if (__OFADD__(v60++, 1))
        {
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
LABEL_8:
        (*v61)(v23, v19);
        v10 = v63;
        v16 = v64;
      }
    }

    v25 = v5;
    while (1)
    {
      v5 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v5 >= v2)
      {
LABEL_27:
        v38 = sub_226EBAEF0(v58, v56, v60, v16);
        v39 = v52;
        v5 = v54;
        v15 = v55;
        v8 = v53;
        goto LABEL_28;
      }

      v26 = *&v8[8 * v5];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v15 = (v26 - 1) & v26;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v48 = swift_slowAlloc();
  v49 = sub_22700C11C(v48, v56, v16, sub_227005144, 0);
  if (!v2)
  {
    v50 = v49;
    v39 = 0;

    MEMORY[0x22AA9A450](v48, -1, -1);
    v38 = v50;
LABEL_28:
    v40 = v57;
    if (*(v38 + 16) <= *(v16 + 16) >> 3)
    {
      v66 = v16;
      sub_22700642C(v38, &qword_27D7B8FA8, &unk_227672A50, MEMORY[0x277D52AF8], sub_22700C5D4);

      v41 = v66;
    }

    else
    {
      v41 = sub_2270080B0(v38, v16);
    }

    v42 = sub_2270051F0(v41, v40);
    if (!v39)
    {
      v43 = v42;

LABEL_36:
      v46 = *MEMORY[0x277D85DE8];
      return v43;
    }

LABEL_33:
    sub_22766A610();
    v43 = sub_22766B380();
    v44 = sub_22766C890();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_226E8E000, v43, v44, "[AchievementEnvironmentProvider] Failed to query archivedSessionCountsPerModality", v45, 2u);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    (*(v5 + 8))(v8, v15);
    swift_willThrow();
    goto LABEL_36;
  }

  result = MEMORY[0x22AA9A450](v48, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_227005144()
{
  v0 = *(sub_227666F90() + 16);

  if (v0 != 1)
  {
    return 0;
  }

  v1 = sub_227666F90();
  v2 = *(v1 + 16);
  v3 = 32;
  while (v2)
  {
    v4 = *(v1 + v3);
    v3 += 8;
    --v2;
    if (v4 == 37)
    {
      v5 = 1;
      goto LABEL_14;
    }
  }

  v6 = sub_227666F90();
  v7 = *(v6 + 16);
  v8 = 32;
  do
  {
    v9 = v7-- != 0;
    v5 = v9;
    if (!v9)
    {
      break;
    }

    v10 = *(v6 + v8);
    v8 += 8;
  }

  while (v10 != 52);
LABEL_14:

  return v5;
}

uint64_t sub_2270051F0(uint64_t a1, uint64_t a2)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v23 = a2;
  v11 = sub_22708B050(MEMORY[0x277D84F98], sub_227010A1C, v21, a1);
  if (!v3)
  {
    v20[1] = 0;
    sub_22766A610();

    v12 = sub_22766B380();
    v13 = sub_22766C8B0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      v24 = v20[0];
      *v14 = 136315138;
      v15 = sub_22766BEC0();
      v17 = sub_226E97AE8(v15, v16, &v24);

      *(v14 + 4) = v17;
      _os_log_impl(&dword_226E8E000, v12, v13, "[AchievementEnvironmentProvider] Archived session counts per modality: %s", v14, 0xCu);
      v18 = v20[0];
      __swift_destroy_boxed_opaque_existential_0(v20[0]);
      MEMORY[0x22AA9A450](v18, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  return v11;
}

uint64_t sub_227005410(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a1;
  v8 = type metadata accessor for DateIntervalSessionThreshold();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227666F70();
  v15 = v14;
  v16 = OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval;
  v17 = sub_227662010();
  (*(*(v17 - 8) + 16))(v12, a3 + v16, v17);
  *&v12[v9[7]] = 0x4072C00000000000;
  v18 = &v12[v9[8]];
  *v18 = 0;
  v18[8] = 1;
  *&v12[v9[9]] = 0x3FE0000000000000;
  v19 = sub_2274BBBF4(a2, a4);
  if (v4)
  {

    sub_226F733F0(v12);
    return swift_willThrow();
  }

  else
  {
    v20 = v13;
    v21 = v27;
    v22 = sub_2274BC0E0(v12, v19, a4);
    sub_226F733F0(v12);

    v23 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v21;
    sub_227369C3C(v22, v20, v15, isUniquelyReferenced_nonNull_native);

    *v21 = v28;
  }

  return result;
}

uint64_t sub_2270055E8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22766B390();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270056A8, 0, 0);
}

uint64_t sub_2270056A8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_0(v1 + 12, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v0[12] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = *(v4 + 24);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E30, &unk_227672460);
  *v9 = v0;
  v9[1] = sub_22700585C;

  return (v12)(v0 + 5, sub_227010A50, v6, v10, v3, v4);
}

uint64_t sub_22700585C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_2270059E4;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_227005978;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227005978()
{
  v1 = v0[11];
  v2 = v0[5];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_2270059E4()
{
  v26 = v0;
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];

  sub_22766A610();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = v0[2];
    v14 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v16 = sub_226E97AE8(v14, v15, &v25);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "Failed to fetch all completed archived session identifiers: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[14];
  v21 = v0[11];
  swift_willThrow();

  v22 = v0[1];
  v23 = v0[14];

  return v22();
}

uint64_t sub_227005BBC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_227662010();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-v12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v21 = a3;
  (*(v7 + 16))(v11, Strong + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval, v6);

  (*(v7 + 32))(v13, v11, v6);
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]), v16 = sub_227010A6C(v13, *v15, v15[1], *(v15 + 16), v15[3]), result = , !v16))
  {
    (*(v7 + 8))(v13, v6);
LABEL_7:
    sub_226F73CD0();
    swift_allocError();
    *v19 = 4;
    return swift_willThrow();
  }

  if (a2)
  {
    v18 = sub_226F73070(0, v16[2], a2, v16, a2);

    result = (*(v7 + 8))(v13, v6);
    *v21 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227005E1C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_currentDateInterval;
  v2 = sub_227662010();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices35AchievementEnvironmentCacheProvider_energyBurnedDataProvider);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AchievementEnvironmentCacheProvider()
{
  result = qword_281399A58;
  if (!qword_281399A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227005F3C()
{
  result = sub_227662010();
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

uint64_t sub_22700604C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22700C498(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_227006178(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(v2 + 48) + (v10 | (v9 << 6)));
        result = sub_22700CA80();
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2270062A8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        sub_226EB396C(*v11, v13, v14);
        v15 = sub_22700C8C0();
        sub_227010FE0(v15, v16, v17);
        result = sub_226EB2DFC(v12, v13, v14);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_22700642C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), void (*a5)(char *))
{
  v27 = a3;
  v28 = a5;
  v26 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - v10;
  v12 = a4(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = v25 - v16;
  if (*(*v5 + 16))
  {
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(a1 + 56);
    v21 = (v18 + 63) >> 6;
    v25[1] = v13 + 8;
    v25[2] = v13 + 16;

    for (i = 0; v20; result = sub_226E97D1C(v11, v26, v27))
    {
      v23 = i;
LABEL_10:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v13 + 16))(v17, *(a1 + 48) + *(v13 + 72) * (v24 | (v23 << 6)), v12);
      v28(v17);
      (*(v13 + 8))(v17, v12);
    }

    while (1)
    {
      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
      }

      v20 = *(a1 + 56 + 8 * v23);
      ++i;
      if (v20)
      {
        i = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227006648(uint64_t a1, uint64_t a2)
{
  v66[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2276694E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v52 - v10;
  MEMORY[0x28223BE20](v9);
  i = v52 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_31;
  }

  v66[0] = a1;
  v13 = *(a1 + 16);

  v54 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v56 = a1;
  v57 = a1 + ((v17 + 32) & ~v17);
  v63 = *(v15 + 56);
  v64 = v16;
  v61 = (a2 + 56);
  v62 = a2;
  v65 = v15;
  v18 = (v15 - 8);
  v53 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v14 + 1;
    v66[1] = v14 + 1;
    v64(i, v57 + v63 * v14, v4);
    v19 = *(a2 + 40);
    v55 = sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v20 = sub_22766BF50();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v64(v11, *(v62 + 48) + v22 * v63, v4);
    sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0]);
    v26 = sub_22766BFB0();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v62;
  v30 = *(v62 + 32);
  v52[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v52[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    MEMORY[0x28223BE20](v28);
    v33 = v52 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v61, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v53 = v33;
    v54 = (v34 - 1);
    v35 = *(v56 + 16);
    v36 = v58;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_227268FCC(v53, v52[0], v54, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v56 + 16))
      {
        break;
      }

      v58 = v36;
      v64(v60, v57 + v36 * v63, v4);
      v38 = *(v29 + 40);
      v39 = sub_22766BF50();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v61[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v11, *(v62 + 48) + v22 * v63, v4);
      v41 = sub_22766BFB0();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v61[v22 >> 6]) == 0)
          {
            break;
          }

          v64(v11, *(v62 + 48) + v22 * v63, v4);
          v43 = sub_22766BFB0();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v60, v4);
        v29 = v62;
LABEL_16:
        v37 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v27(v60, v4);
      v44 = v53[v24];
      v53[v24] = v44 & ~v23;
      v29 = v62;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v54 - 1;
      v37 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v45)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v31;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v62;

      v29 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v61, v49);
  a2 = sub_22700D684(v51, v52[0], v62, v22, v66);

  MEMORY[0x22AA9A450](v51, -1, -1);
LABEL_30:

LABEL_31:
  v46 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_227006D08(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_2276694E0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_226E97D1C(v32, &qword_27D7B8460, qword_2276709E0);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v35 = sub_22766BF50();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0]);
    v39 = sub_22766BFB0();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_226E97D1C(v26, &qword_27D7B8460, qword_2276709E0);
        a2 = sub_227268FCC(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_22766BF50();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_22766BFB0();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_22766BFB0();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_22700DA78(v68, v69, v84, v26, &v93);

  MEMORY[0x22AA9A450](v68, -1, -1);
LABEL_52:
  sub_226EBB21C();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22700776C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_22766D370();

    sub_22766C100();
    v24 = sub_22766D3F0();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_22766D190() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_22726999C(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_22766D370();

            sub_22766C100();
            v43 = sub_22766D3F0();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_22766D190() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_22700DF4C(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x22AA9A450](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_226EBB21C();
    goto LABEL_53;
  }

  result = MEMORY[0x22AA9A450](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_227007CDC(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v46[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v46[0] = a1;
    v42 = *(a1 + 16);
    if (v42)
    {
      v3 = a2 + 56;
      v43 = a1;
      v44 = a1 + 32;

      v4 = 0;
      while (1)
      {
        v5 = *(v44 + v4++);
        v6 = *(v2 + 40);
        sub_22766D370();
        v7 = sub_227664570();
        MEMORY[0x22AA996B0](v7);
        v8 = sub_22766D3F0();
        v9 = -1 << *(v2 + 32);
        v10 = v8 & ~v9;
        v11 = v10 >> 6;
        v12 = 1 << v10;
        if (((1 << v10) & *(v3 + 8 * (v10 >> 6))) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v42)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      v13 = ~v9;
      while (1)
      {
        v14 = *(*(v2 + 48) + v10);
        v15 = sub_227664570();
        v16 = sub_227664570();
        if (v15 == v16)
        {
          break;
        }

        v10 = (v10 + 1) & v13;
        v11 = v10 >> 6;
        v12 = 1 << v10;
        if (((1 << v10) & *(v3 + 8 * (v10 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v46[1] = v4;
      v17 = *(v2 + 32);
      v18 = ((1 << v17) + 63) >> 6;
      v19 = 8 * v18;
      if ((v17 & 0x3Fu) > 0xD)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v40[0] = v18;
        v40[1] = v40;
        MEMORY[0x28223BE20](v16);
        v10 = v40 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v10, (v2 + 56), v20);
        v21 = *(v2 + 16);
        *(v10 + 8 * v11) &= ~v12;
        v41 = v10;
        v42 = v21 - 1;
        v11 = v43;
        v22 = *(v43 + 16);
        if (v4 == v22)
        {
LABEL_13:
          v2 = sub_22726A538(v41, v40[0], v42, v2);
          goto LABEL_14;
        }

        v18 = 1;
        while (v4 < v22)
        {
          v12 = *(v44 + v4);
          v25 = *(v2 + 40);
          sub_22766D370();
          v26 = sub_227664570();
          v10 = &v45;
          MEMORY[0x22AA996B0](v26);
          v27 = sub_22766D3F0();
          v28 = -1 << *(v2 + 32);
          v29 = v27 & ~v28;
          v30 = v29 >> 6;
          v31 = 1 << v29;
          if (((1 << v29) & *(v3 + 8 * (v29 >> 6))) != 0)
          {
            v32 = ~v28;
            while (1)
            {
              v33 = *(*(v2 + 48) + v29);
              v10 = sub_227664570();
              if (v10 == sub_227664570())
              {
                break;
              }

              v29 = (v29 + 1) & v32;
              v30 = v29 >> 6;
              v31 = 1 << v29;
              if (((1 << v29) & *(v3 + 8 * (v29 >> 6))) == 0)
              {
                v11 = v43;
                goto LABEL_17;
              }
            }

            v34 = v41[v30];
            v41[v30] = v34 & ~v31;
            v11 = v43;
            if ((v34 & v31) != 0)
            {
              v35 = v42 - 1;
              if (__OFSUB__(v42, 1))
              {
                goto LABEL_30;
              }

              --v42;
              if (!v35)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v22 = *(v11 + 16);
          if (v4 == v22)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v36 = v19;

        v37 = v36;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v38 = swift_slowAlloc();
      memcpy(v38, (v2 + 56), v37);
      v39 = sub_22700E184(v38, v18, v2, v10, v46);

      MEMORY[0x22AA9A450](v38, -1, -1);

      v2 = v39;
    }
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2270080B0(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_227666FF0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_226E97D1C(v32, &qword_27D7B8FA8, &unk_227672A50);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_227010FF8(&unk_28139B578, MEMORY[0x277D52AF8]);
    v35 = sub_22766BF50();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_227010FF8(&qword_28139B570, MEMORY[0x277D52AF8]);
    v39 = sub_22766BFB0();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_226E97D1C(v26, &qword_27D7B8FA8, &unk_227672A50);
        a2 = sub_226EBAEF0(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_22766BF50();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_22766BFB0();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_22766BFB0();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_22700E344(v68, v69, v84, v26, &v93);

  MEMORY[0x22AA9A450](v68, -1, -1);
LABEL_52:
  sub_226EBB21C();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_227008B14(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v65 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v6 = a1;
    v7 = *(a1 + 56);
    v57 = a1 + 56;
    v8 = -1 << *(a1 + 32);
    v56 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;

    v59 = 0;
    do
    {
LABEL_6:
      if (!v10)
      {
        v14 = v59;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v15 >= v11)
          {
            goto LABEL_42;
          }

          v10 = *(v57 + 8 * v15);
          ++v14;
          if (v10)
          {
            v59 = v15;
            goto LABEL_12;
          }
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_12:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = *(*(v6 + 48) + (v16 | (v59 << 6)));
      v18 = *(v5 + 40);
      sub_22766D370();
      v19 = sub_227669310();
      MEMORY[0x22AA996B0](v19);
      v20 = sub_22766D3F0();
      v21 = -1 << *(v5 + 32);
      v2 = v20 & ~v21;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0);
    v22 = ~v21;
    while (1)
    {
      v23 = *(*(v5 + 48) + v2);
      v24 = sub_227669310();
      v25 = sub_227669310();
      if (v24 == v25)
      {
        break;
      }

      v2 = (v2 + 1) & v22;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0)
      {
        v6 = v58;
        goto LABEL_6;
      }
    }

    v62 = v56;
    v63 = v59;
    v64 = v10;
    v61[0] = v58;
    v61[1] = v57;
    v26 = *(v5 + 32);
    v52 = ((1 << v26) + 63) >> 6;
    v13 = 8 * v52;
    if ((v26 & 0x3Fu) <= 0xD)
    {
      goto LABEL_19;
    }

LABEL_46:
    v48 = v13;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v49 = swift_slowAlloc();
      memcpy(v49, (v5 + 56), v48);
      v50 = sub_22700E818(v49, v52, v5, v2, v61);

      MEMORY[0x22AA9A450](v49, -1, -1);
      v56 = v62;
      v59 = v63;
      v5 = v50;
      goto LABEL_42;
    }

LABEL_19:
    v53 = &v51;
    MEMORY[0x28223BE20](v25);
    v2 = &v51 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, (v5 + 56), v27);
    v28 = *(v2 + 8 * v3) & ~v4;
    v29 = *(v5 + 16);
    v55 = v2;
    *(v2 + 8 * v3) = v28;
    v30 = v29 - 1;
LABEL_20:
    v54 = v30;
    while (v10)
    {
      v32 = v58;
LABEL_29:
      v35 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v36 = *(*(v32 + 48) + (v35 | (v59 << 6)));
      v37 = *(v5 + 40);
      sub_22766D370();
      v38 = sub_227669310();
      v2 = &v60;
      MEMORY[0x22AA996B0](v38);
      v39 = sub_22766D3F0();
      v40 = -1 << *(v5 + 32);
      v4 = v39 & ~v40;
      v3 = v4 >> 6;
      v41 = 1 << v4;
      if (((1 << v4) & *(v12 + 8 * (v4 >> 6))) != 0)
      {
        v42 = *(*(v5 + 48) + v4);
        v2 = sub_227669310();
        if (v2 == sub_227669310())
        {
LABEL_21:
          v31 = v55[v3];
          v55[v3] = v31 & ~v41;
          if ((v31 & v41) != 0)
          {
            v30 = v54 - 1;
            if (__OFSUB__(v54, 1))
            {
              __break(1u);
            }

            if (v54 == 1)
            {

              v5 = MEMORY[0x277D84FA0];
              goto LABEL_42;
            }

            goto LABEL_20;
          }
        }

        else
        {
          v43 = ~v40;
          while (1)
          {
            v4 = (v4 + 1) & v43;
            v3 = v4 >> 6;
            v41 = 1 << v4;
            if (((1 << v4) & *(v12 + 8 * (v4 >> 6))) == 0)
            {
              break;
            }

            v44 = *(*(v5 + 48) + v4);
            v2 = sub_227669310();
            if (v2 == sub_227669310())
            {
              goto LABEL_21;
            }
          }
        }
      }
    }

    v32 = v58;
    v33 = v59;
    while (1)
    {
      v34 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v34 >= v11)
      {
        break;
      }

      v10 = *(v57 + 8 * v34);
      ++v33;
      if (v10)
      {
        v59 = v34;
        goto LABEL_29;
      }
    }

    if (v11 <= v59 + 1)
    {
      v45 = v59 + 1;
    }

    else
    {
      v45 = v11;
    }

    v59 = v45 - 1;
    v5 = sub_22726AB18(v55, v52, v54, v5);
LABEL_42:
    sub_226EBB21C();
  }

  else
  {

    v5 = MEMORY[0x277D84FA0];
  }

  v46 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_227009018(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v60[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x277D84FA0];
    goto LABEL_43;
  }

  v60[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v51 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v56 = v4;
  v57 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v54 = v5 + 1;
    v11 = *(v2 + 40);
    sub_22766D370();

    sub_22766C100();
    v12 = sub_22766D3F0();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v54;
    if (v54 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_22766D190() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v57;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v60[1] = v54;

  v22 = *(v2 + 32);
  v52 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v52;
  v24 = v57;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v45 = v23;

  v46 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v53 = &v50;
    MEMORY[0x28223BE20](v21);
    v14 = &v50 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v59 = v7;
    memcpy(v14, v7, v25);
    v58 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v55 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v56;
    v7 = *(v56 + 16);
    v30 = v54;
    while (1)
    {
      v54 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_22726999C(v55, v52, v54, v58);
LABEL_42:

LABEL_43:
        v43 = *MEMORY[0x277D85DE8];
        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v58;
        v34 = *(v58 + 40);
        sub_22766D370();

        sub_22766C100();
        v35 = sub_22766D3F0();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v59[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v57;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((sub_22766D190() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v59[v37 >> 6]) == 0)
          {
            v29 = v56;
            goto LABEL_37;
          }

          v42 = (*(v58 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v56;
      v31 = v55[v14];
      v55[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v54 - 1;
      v24 = v57;
      if (__OFSUB__(v54, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v54 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v7, v46);
  v48 = v51;
  v49 = sub_22700EA24(v47, v52, v2, v14, v60);

  if (!v48)
  {

    MEMORY[0x22AA9A450](v47, -1, -1);

    v2 = v49;
    goto LABEL_43;
  }

  result = MEMORY[0x22AA9A450](v47, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2270094C4(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BC8, &qword_227675590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v70 - v10);
  v12 = sub_227665F20();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v70 - v16);
  MEMORY[0x28223BE20](v18);
  v85 = (&v70 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v71 = v11;
  v73 = v8;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v84 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v92 = (v24 & v21);
  v77 = (63 - v23) >> 6;
  v91 = v19 + 16;
  v82 = (v19 + 48);
  v83 = (v19 + 56);
  v81 = (v19 + 32);
  v87 = (a2 + 56);
  v72 = v19;
  v93 = (v19 + 8);

  v26 = 0;
  v74 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v92;
    v28 = v26;
    if (v92)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v71;
      (*(v72 + 16))(v71, *(a1 + 48) + *(v72 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v77 <= (v26 + 1) ? v26 + 1 : v77;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v77)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v71;
    }

    v79 = *v83;
    v79(v32, v33, 1, v12);
    v94 = a1;
    v95 = v22;
    v96 = v84;
    v97 = v30;
    v98 = v2;
    v78 = *v82;
    if (v78(v32, 1, v12) == 1)
    {
      sub_226E97D1C(v32, &qword_27D7B9BC8, &qword_227675590);
      goto LABEL_52;
    }

    v76 = *v81;
    v76(v85, v32, v12);
    v34 = *(a2 + 40);
    v75 = sub_227010FF8(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
    v35 = sub_22766BF50();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v87[v26 >> 6]) != 0)
    {
      break;
    }

    (*v93)(v85, v12);
LABEL_22:
    v26 = v30;
    v92 = v2;
  }

  v70 = v93 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v86 = ~v36;
  v37 = *(v72 + 72);
  v88 = *(v72 + 16);
  v89 = v37;
  while (1)
  {
    v88(v17, *(a2 + 48) + v89 * v26, v12);
    v38 = sub_227010FF8(&qword_27D7B8700, MEMORY[0x277D51FE0]);
    v39 = sub_22766BFB0();
    v92 = *v93;
    v92(v17, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v86;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v87[v26 >> 6]) == 0)
    {
      a1 = v74;
      v92(v85, v12);
      goto LABEL_22;
    }
  }

  v86 = v38;
  v40 = (v92)(v85, v12);
  v41 = *(a2 + 32);
  v70 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v70;
  a1 = v74;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v71 = &v70;
    MEMORY[0x28223BE20](v40);
    v43 = &v70 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v87, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v85 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v73;
    v47 = i;
    v48 = v77;
LABEL_26:
    v72 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v88(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v89, v12);
      v53 = 0;
LABEL_39:
      v79(v26, v53, 1, v12);
      v94 = a1;
      v95 = v47;
      v96 = v84;
      v97 = v30;
      v98 = v2;
      if (v78(v26, 1, v12) == 1)
      {
        sub_226E97D1C(v26, &qword_27D7B9BC8, &qword_227675590);
        a2 = sub_22726B3A0(v85, v70, v72, a2);
        goto LABEL_52;
      }

      v76(v90, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_22766BF50();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v87[v58 >> 6]) != 0)
      {
        v88(v17, *(v56 + 48) + v58 * v89, v12);
        v59 = sub_22766BFB0();
        v92(v17, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v87[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v88(v17, *(v56 + 48) + v58 * v89, v12);
            v61 = sub_22766BFB0();
            v92(v17, v12);
          }

          while ((v61 & 1) == 0);
        }

        v92(v90, v12);
        v62 = v85[v28];
        v85[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v74;
        v26 = v73;
        v47 = i;
        v48 = v77;
        if ((v62 & v22) != 0)
        {
          v46 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v92(v90, v12);
        a2 = v56;
        a1 = v74;
        v26 = v73;
        v47 = i;
        v48 = v77;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v85 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v85;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v87, v66);
  sub_22700EC08(v68, v70, v85, v26, &v94);
  a2 = v69;

  MEMORY[0x22AA9A450](v68, -1, -1);
LABEL_52:
  sub_226EBB21C();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_227009F28(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v80 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v57 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v62 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v70 = (a2 + 56);

    v13 = 0;
    v67 = v6;
    v65 = v10;
    v66 = v11;
    while (1)
    {
      if (!v9)
      {
        v14 = v13;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_42;
          }

          if (v15 >= v10)
          {
            goto LABEL_39;
          }

          v9 = *(v6 + 8 * v15);
          ++v14;
          if (v9)
          {
            v13 = v15;
            break;
          }
        }
      }

      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v68 = v13;
      v17 = *(v11 + 48) + 24 * (v16 | (v13 << 6));
      v18 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v4 + 40);
      v73 = *v17;
      v19 = v73;
      v74 = v18;
      v75 = v20;
      sub_22766D370();
      sub_226EB396C(v73, v18, v20);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      v63 = sub_226F480FC();
      sub_227663B10();
      v22 = sub_22766D3F0();
      v10 = v4;
      v23 = -1 << *(v4 + 32);
      v6 = v22 & ~v23;
      v2 = v6 >> 6;
      v3 = 1 << v6;
      if (((1 << v6) & v70[v6 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_226EB2DFC(v19, v18, v20);
      v4 = v10;
      v11 = v66;
      v6 = v67;
      v13 = v68;
      v10 = v65;
    }

    v24 = ~v23;
    v69 = sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v25 = *(v10 + 48) + 24 * v6;
      v26 = *(v25 + 16);
      v71 = *v25;
      v72 = v26;
      v73 = v19;
      v74 = v18;
      v75 = v20;
      if (sub_227663B20())
      {
        break;
      }

      v6 = (v6 + 1) & v24;
      v2 = v6 >> 6;
      v3 = 1 << v6;
      if (((1 << v6) & v70[v6 >> 6]) == 0)
      {
        goto LABEL_6;
      }
    }

    v77 = v62;
    v78 = v68;
    v79 = v9;
    v76[0] = v66;
    v76[1] = v67;
    v27 = sub_226EB2DFC(v19, v18, v20);
    v4 = v10;
    v28 = *(v10 + 32);
    v58 = ((1 << v28) + 63) >> 6;
    v12 = 8 * v58;
    if ((v28 & 0x3Fu) > 0xD)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v59 = &v56;
      MEMORY[0x28223BE20](v27);
      v6 = &v56 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v6, v70, v29);
      v30 = *(v4 + 16);
      v31 = *(v6 + 8 * v2) & ~v3;
      v61 = v6;
      *(v6 + 8 * v2) = v31;
      v32 = v30 - 1;
      v2 = v67;
      v33 = v68;
      v34 = v65;
LABEL_21:
      v60 = v32;
      while (v9)
      {
LABEL_29:
        v37 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v68 = v33;
        v38 = *(v66 + 48) + 24 * (v37 | (v33 << 6));
        v40 = *(v38 + 8);
        v41 = *(v38 + 16);
        v42 = *(v4 + 40);
        v73 = *v38;
        v39 = v73;
        v74 = v40;
        v75 = v41;
        sub_22766D370();
        sub_226EB396C(v39, v40, v41);
        sub_227663B10();
        v43 = sub_22766D3F0();
        v44 = -1 << *(v4 + 32);
        v3 = v43 & ~v44;
        v6 = v3 >> 6;
        v45 = 1 << v3;
        if (((1 << v3) & v70[v3 >> 6]) != 0)
        {
          v46 = ~v44;
          while (1)
          {
            v47 = *(v10 + 48) + 24 * v3;
            v48 = *(v47 + 16);
            v71 = *v47;
            v72 = v48;
            v73 = v39;
            v74 = v40;
            v75 = v41;
            if (sub_227663B20())
            {
              break;
            }

            v3 = (v3 + 1) & v46;
            v6 = v3 >> 6;
            v45 = 1 << v3;
            if (((1 << v3) & v70[v3 >> 6]) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_226EB2DFC(v39, v40, v41);
          v49 = v61[v6];
          v61[v6] = v49 & ~v45;
          v50 = (v49 & v45) == 0;
          v4 = v10;
          v2 = v67;
          v33 = v68;
          v34 = v65;
          if (!v50)
          {
            v32 = v60 - 1;
            if (__OFSUB__(v60, 1))
            {
              __break(1u);
            }

            if (v60 == 1)
            {

              v4 = MEMORY[0x277D84FA0];
              goto LABEL_39;
            }

            goto LABEL_21;
          }
        }

        else
        {
LABEL_22:
          sub_226EB2DFC(v39, v40, v41);
          v4 = v10;
          v2 = v67;
          v33 = v68;
          v34 = v65;
        }
      }

      v35 = v33;
      while (1)
      {
        v36 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v36 >= v34)
        {
          v4 = sub_22726A888(v61, v58, v60, v4);
          goto LABEL_39;
        }

        v9 = *(v2 + 8 * v36);
        ++v35;
        if (v9)
        {
          v33 = v36;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v53 = v12;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v54 = swift_slowAlloc();
    memcpy(v54, v70, v53);
    v55 = v57;
    v4 = sub_22700F0DC(v54, v58, v4, v6, v76);

    if (!v55)
    {

      MEMORY[0x22AA9A450](v54, -1, -1);
      v62 = v77;
LABEL_39:
      sub_226EBB21C();
      goto LABEL_40;
    }

    result = MEMORY[0x22AA9A450](v54, -1, -1);
    __break(1u);
  }

  else
  {

    v4 = MEMORY[0x277D84FA0];
LABEL_40:
    v51 = *MEMORY[0x277D85DE8];
    return v4;
  }

  return result;
}

uint64_t sub_22700A628(uint64_t a1, uint64_t a2)
{
  v66[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v52 - v10;
  MEMORY[0x28223BE20](v9);
  i = v52 - v12;
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_31;
  }

  v66[0] = a1;
  v13 = *(a1 + 16);

  v54 = v13;
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = 0;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = *(v15 + 64);
  v56 = a1;
  v57 = a1 + ((v17 + 32) & ~v17);
  v63 = *(v15 + 56);
  v64 = v16;
  v61 = (a2 + 56);
  v62 = a2;
  v65 = v15;
  v18 = (v15 - 8);
  v53 = ((v15 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v14 + 1;
    v66[1] = v14 + 1;
    v64(i, v57 + v63 * v14, v4);
    v19 = *(a2 + 40);
    v55 = sub_227010FF8(&qword_28139BCA8, MEMORY[0x277D501C8]);
    v20 = sub_22766BF50();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) != 0)
    {
      break;
    }

    v27 = *v18;
LABEL_10:
    v27(i, v4);
    v14 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v25 = ~v21;
  while (1)
  {
    v64(v11, *(v62 + 48) + v22 * v63, v4);
    sub_227010FF8(&qword_27D7B8678, MEMORY[0x277D501C8]);
    v26 = sub_22766BFB0();
    v27 = *v18;
    (*v18)(v11, v4);
    if (v26)
    {
      break;
    }

    v22 = (v22 + 1) & v25;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & v61[v22 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v28 = (v27)(i, v4);
  v29 = v62;
  v30 = *(v62 + 32);
  v52[0] = ((1 << v30) + 63) >> 6;
  v31 = 8 * v52[0];
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    MEMORY[0x28223BE20](v28);
    v33 = v52 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v61, v32);
    v34 = *(v29 + 16);
    *&v33[8 * v23] &= ~v24;
    v53 = v33;
    v54 = (v34 - 1);
    v35 = *(v56 + 16);
    v36 = v58;
    for (i = v35; ; v35 = i)
    {
      if (v36 == v35)
      {
        a2 = sub_22726B9F0(v53, v52[0], v54, v29);
        goto LABEL_30;
      }

      if (v36 >= *(v56 + 16))
      {
        break;
      }

      v58 = v36;
      v64(v60, v57 + v36 * v63, v4);
      v38 = *(v29 + 40);
      v39 = sub_22766BF50();
      v40 = -1 << *(v29 + 32);
      v22 = v39 & ~v40;
      v24 = v22 >> 6;
      v23 = 1 << v22;
      if (((1 << v22) & v61[v22 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v11, *(v62 + 48) + v22 * v63, v4);
      v41 = sub_22766BFB0();
      v27(v11, v4);
      if ((v41 & 1) == 0)
      {
        v42 = ~v40;
        while (1)
        {
          v22 = (v22 + 1) & v42;
          v24 = v22 >> 6;
          v23 = 1 << v22;
          if (((1 << v22) & v61[v22 >> 6]) == 0)
          {
            break;
          }

          v64(v11, *(v62 + 48) + v22 * v63, v4);
          v43 = sub_22766BFB0();
          v27(v11, v4);
          if (v43)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v27(v60, v4);
        v29 = v62;
LABEL_16:
        v37 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v27(v60, v4);
      v44 = v53[v24];
      v53[v24] = v44 & ~v23;
      v29 = v62;
      if ((v44 & v23) == 0)
      {
        goto LABEL_16;
      }

      v45 = v54 - 1;
      v37 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v45)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v36 = v37 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v31;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v62;

      v29 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v61, v49);
  a2 = sub_22700F384(v51, v52[0], v62, v22, v66);

  MEMORY[0x22AA9A450](v51, -1, -1);
LABEL_30:

LABEL_31:
  v46 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_22700ACE8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedDirtySyncZone, sub_22726C040, sub_22726C040, type metadata accessor for ManagedDirtySyncZone);
}

uint64_t sub_22700AD90(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedHealthKitMindfulSession, sub_22726C054, sub_22726C054, type metadata accessor for ManagedHealthKitMindfulSession);
}

uint64_t sub_22700AE38(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void (*)(void), unint64_t, void (*)(void), uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  v64 = a3;
  v10 = a2;
  v74 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v10 = MEMORY[0x277D84FA0];
    goto LABEL_40;
  }

  v60 = a5;
  v61 = a6;
  v12 = a1 + 64;
  v11 = *(a1 + 64);
  v13 = -1 << *(a1 + 32);
  v62 = a4;
  v63 = ~v13;
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v11;
  v16 = (63 - v13) >> 6;
  v69 = (a2 + 56);

  v19 = 0;
  v66 = v17;
  v67 = v12;
  for (i = v16; ; v16 = i)
  {
    if (!v15)
    {
      v20 = v19;
      do
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_42;
        }

        if (v21 >= v16)
        {
          goto LABEL_39;
        }

        v15 = *(v12 + 8 * v21);
        ++v20;
      }

      while (!v15);
      v19 = v21;
    }

    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = *(v17 + 56);
    v68 = v19;
    v24 = *(v10 + 40);
    v25 = *(v23 + ((v19 << 9) | (8 * v22)));
    v26 = sub_22766CB20();
    v27 = -1 << *(v10 + 32);
    v7 = v26 & ~v27;
    v6 = v7 >> 6;
    v8 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v17 = v66;
    v12 = v67;
    v19 = v68;
  }

  v9 = ~v27;
  v64(0);
  while (1)
  {
    v28 = *(*(v10 + 48) + 8 * v7);
    v29 = sub_22766CB30();

    if (v29)
    {
      break;
    }

    v7 = (v7 + 1) & v9;
    v6 = v7 >> 6;
    v8 = 1 << v7;
    if (((1 << v7) & v69[v7 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v30 = v67;
  v31 = v68;
  v71 = v63;
  v72 = v68;
  v73 = v15;
  v9 = v66;
  v70[0] = v66;
  v70[1] = v67;

  v33 = *(v10 + 32);
  v59 = ((1 << v33) + 63) >> 6;
  v18 = 8 * v59;
  if ((v33 & 0x3Fu) > 0xD)
  {
    goto LABEL_43;
  }

  while (2)
  {
    v60 = &v59;
    MEMORY[0x28223BE20](v32);
    v7 = &v59 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v7, v69, v34);
    v35 = *(v7 + 8 * v6) & ~v8;
    v36 = *(v10 + 16);
    v64 = v7;
    *(v7 + 8 * v6) = v35;
    v37 = (v36 - 1);
    v38 = i;
LABEL_21:
    v61 = v37;
    while (v15)
    {
LABEL_29:
      v41 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v42 = *(v9 + 56);
      v68 = v31;
      v43 = *(v10 + 40);
      v44 = *(v42 + ((v31 << 9) | (8 * v41)));
      v45 = sub_22766CB20();
      v7 = -1 << *(v10 + 32);
      v46 = v45 & ~v7;
      v6 = v46 >> 6;
      v8 = 1 << v46;
      if (((1 << v46) & v69[v46 >> 6]) == 0)
      {
        goto LABEL_22;
      }

      v47 = *(*(v10 + 48) + 8 * v46);
      v48 = sub_22766CB30();

      if (v48)
      {
LABEL_34:

        v38 = i;
        v51 = *(v64 + v6);
        *(v64 + v6) = v51 & ~v8;
        v9 = v66;
        v30 = v67;
        v31 = v68;
        if ((v51 & v8) != 0)
        {
          v37 = (v61 - 1);
          if (__OFSUB__(v61, 1))
          {
            __break(1u);
          }

          if (v61 == 1)
          {

            v10 = MEMORY[0x277D84FA0];
            goto LABEL_39;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v7 = ~v7;
        while (1)
        {
          v46 = (v46 + 1) & v7;
          v6 = v46 >> 6;
          v8 = 1 << v46;
          if (((1 << v46) & v69[v46 >> 6]) == 0)
          {
            break;
          }

          v49 = *(*(v10 + 48) + 8 * v46);
          v50 = sub_22766CB30();

          if (v50)
          {
            goto LABEL_34;
          }
        }

LABEL_22:

        v9 = v66;
        v30 = v67;
        v31 = v68;
        v38 = i;
      }
    }

    v39 = v31;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        v10 = v62(v64, v59, v61, v10);
        goto LABEL_39;
      }

      v15 = *(v30 + 8 * v40);
      ++v39;
      if (v15)
      {
        v31 = v40;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v54 = v18;

    v55 = v54;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v30 = v67;
      v31 = v68;
      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v69, v55);
  sub_22700F778(v56, v59, v10, v7, v70, v60, v61);
  v58 = v57;

  MEMORY[0x22AA9A450](v56, -1, -1);
  v63 = v71;
  v10 = v58;
LABEL_39:
  sub_226EBB21C();
LABEL_40:
  v52 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22700B370(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedPrivacyAcknowledgement, sub_22726C068, sub_22726C068, type metadata accessor for ManagedPrivacyAcknowledgement);
}

uint64_t sub_22700B418(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedEngagementBadge, sub_22726C07C, sub_22726C07C, type metadata accessor for ManagedEngagementBadge);
}

uint64_t sub_22700B4C0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedPlaylistItem, sub_22726C090, sub_22726C090, type metadata accessor for ManagedPlaylistItem);
}

uint64_t sub_22700B568(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedArchivedWorkoutPlanSession, sub_22726C0A4, sub_22726C0A4, type metadata accessor for ManagedArchivedWorkoutPlanSession);
}

uint64_t sub_22700B610(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedWorkoutPlanSummaryViewed, sub_22726C0B8, sub_22726C0B8, type metadata accessor for ManagedWorkoutPlanSummaryViewed);
}

uint64_t sub_22700B6B8(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v69 - v10);
  v12 = sub_227663480();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v69 - v17);
  MEMORY[0x28223BE20](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_226E97D1C(v32, &unk_27D7BD3F0, &unk_2276823F0);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_227010FF8(&unk_2813A5800, MEMORY[0x277D4FF88]);
    v35 = sub_22766BF50();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_227010FF8(&qword_27D7B89E0, MEMORY[0x277D4FF88]);
    v39 = sub_22766BFB0();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x28223BE20](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_226E97D1C(v26, &unk_27D7BD3F0, &unk_2276823F0);
        a2 = sub_22726AD50(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_22766BF50();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_22766BFB0();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_22766BFB0();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_22700F9BC(v68, v69, v84, v26, &v93);

  MEMORY[0x22AA9A450](v68, -1, -1);
LABEL_52:
  sub_226EBB21C();
LABEL_54:
  v63 = *MEMORY[0x277D85DE8];
  return a2;
}

void *sub_22700C11C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
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

    v10 = sub_2272C553C(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_22700C1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  v35 = a1;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE180();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2270101C4(v16, MEMORY[0x277D53DA0], &qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_22700C498(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22766D370();
  sub_22766C100();
  v7 = sub_22766D3F0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_22766D190() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2270EE3B0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_227010000(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_22700C5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_227666FF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_227010FF8(&unk_28139B578, MEMORY[0x277D52AF8]);
  v35 = a1;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_227010FF8(&qword_28139B570, MEMORY[0x277D52AF8]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE584();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2270101C4(v16, MEMORY[0x277D52AF8], &unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_22700C8C0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  v3 = sub_22766D3F0();
  v4 = -1 << *(v1 + 32);
  v5 = v3 & ~v4;
  if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return 0;
  }

  v6 = ~v4;
  sub_226F48150();
  sub_226EC1E18();
  while (1)
  {
    v7 = *(v1 + 48) + 24 * v5;
    v16 = *v7;
    v18 = *(v7 + 16);
    if (sub_227663B20())
    {
      break;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2270EE854();
    v11 = v17;
  }

  v12 = *(v11 + 48) + 24 * v5;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  sub_2270104C0(v5);
  result = v13;
  *v0 = v17;
  return result;
}

uint64_t sub_22700CA80()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 40);
  sub_22766D370();
  v4 = sub_227669310();
  MEMORY[0x22AA996B0](v4);
  v5 = sub_22766D3F0();
  v6 = -1 << *(v2 + 32);
  v7 = v5 & ~v6;
  if (((*(v2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 7;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = *(*(v2 + 48) + v7);
    v10 = sub_227669310();
    if (v10 == sub_227669310())
    {
      break;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 7;
    }
  }

  v12 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2270EE840();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + v7);
  sub_2270106D0(v7);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_22700CBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_227665F20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_227010FF8(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
  v35 = a1;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_227010FF8(&qword_27D7B8700, MEMORY[0x277D51FE0]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE55C();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2270101C4(v16, MEMORY[0x277D51FE0], &unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_22700CE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2276638D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_227010FF8(&qword_2813A57E8, MEMORY[0x277D50180]);
  v35 = a1;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_227010FF8(&qword_27D7B8920, MEMORY[0x277D50180]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE534();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2270101C4(v16, MEMORY[0x277D50180], &qword_2813A57E8, MEMORY[0x277D50180], MEMORY[0x277D50188]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_22700D1F0(void *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v5;

    v13 = a1;
    v14 = sub_22766CD60();

    if (v14)
    {
      v15 = sub_22700FE90(v11, v13, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v18 = v5;
  sub_226E99364(0, a2, a3);
  v19 = *(v7 + 40);
  v20 = sub_22766CB20();
  v21 = -1 << *(v7 + 32);
  v22 = v20 & ~v21;
  if (((*(v7 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    return 0;
  }

  v23 = ~v21;
  while (1)
  {
    v24 = *(*(v7 + 48) + 8 * v22);
    v25 = sub_22766CB30();

    if (v25)
    {
      break;
    }

    v22 = (v22 + 1) & v23;
    if (((*(v7 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return 0;
    }
  }

  v26 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v18;
  v30 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v28 = v30;
  }

  v29 = *(*(v28 + 48) + 8 * v22);
  sub_22701087C(v22);
  result = v29;
  *v18 = v30;
  return result;
}

uint64_t sub_22700D398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_227010FF8(&unk_2813A5800, MEMORY[0x277D4FF88]);
  v35 = a1;
  v13 = sub_22766BF50();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_227010FF8(&qword_27D7B89E0, MEMORY[0x277D4FF88]);
      v22 = sub_22766BFB0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE50C();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_2270101C4(v16, MEMORY[0x277D4FF88], &unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_22700D684(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v37 = a2;
  v9 = sub_2276694E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v44 = &v37 - v16;
  result = MEMORY[0x28223BE20](v15);
  v50 = &v37 - v18;
  v19 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v38 = a1;
  v39 = v19 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    return sub_227268FCC(v38, v37, v39, a3);
  }

  v42 = v10 + 32;
  v43 = v10;
  v45 = a3 + 56;
  v40 = a5;
  v48 = v10 + 16;
  v49 = (v10 + 8);
  while (v21 < v22)
  {
    v24 = *(v10 + 80);
    v47 = *(v10 + 72);
    v25 = v44;
    v46 = *(v10 + 16);
    v46(v44, v20 + ((v24 + 32) & ~v24) + v47 * v21, v9);
    a5[1] = v21 + 1;
    (*(v10 + 32))(v50, v25, v9);
    v26 = *(a3 + 40);
    sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v27 = sub_22766BF50();
    v28 = -1 << *(a3 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    v31 = 1 << v29;
    if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
    {
      v23 = *v49;
LABEL_6:
      result = (v23)(v50, v9);
      goto LABEL_7;
    }

    v41 = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = a3;
    v33 = ~v28;
    while (1)
    {
      v46(v14, *(v32 + 48) + v29 * v47, v9);
      sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0]);
      v34 = sub_22766BFB0();
      v23 = *v49;
      (*v49)(v14, v9);
      if (v34)
      {
        break;
      }

      v29 = (v29 + 1) & v33;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v45 + 8 * (v29 >> 6))) == 0)
      {
        a3 = v32;
        a5 = v40;
        goto LABEL_6;
      }
    }

    result = (v23)(v50, v9);
    v35 = v38[v30];
    v38[v30] = v35 & ~v31;
    if ((v35 & v31) == 0)
    {
      a3 = v32;
      a5 = v40;
LABEL_7:
      v10 = v43;
      goto LABEL_8;
    }

    v36 = v39 - 1;
    v10 = v43;
    if (__OFSUB__(v39, 1))
    {
      goto LABEL_21;
    }

    a3 = v32;
    a5 = v40;
    --v39;
    if (!v36)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v20 = *a5;
    v21 = a5[1];
    v22 = *(*a5 + 16);
    if (v21 == v22)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22700DA78(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_2276694E0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_226E97D1C(v12, &qword_27D7B8460, qword_2276709E0);
          v48 = v64;

          return sub_227268FCC(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
        v38 = sub_22766BF50();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0]);
        v46 = sub_22766BFB0();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_22700DF4C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_22726999C(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_22766D370();

        sub_22766C100();
        v20 = sub_22766D3F0();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_22766D190() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}