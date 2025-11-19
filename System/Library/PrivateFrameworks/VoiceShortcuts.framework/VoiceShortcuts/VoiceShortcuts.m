uint64_t __VCApplicationPresentInLayout_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUIApplicationElement])
  {
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_23103FC20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23103FC2C();
}

uint64_t sub_23103FC2C()
{
  v0 = sub_231157818();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_2311580A8();
    sub_231158E28();

    memset(v7, 0, sizeof(v7));
    sub_2311577F8();
    sub_23103FD78();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

void sub_23103FD78()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_23104007C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t OUTLINED_FUNCTION_12_0()
{
}

void OUTLINED_FUNCTION_12_1()
{
  v2 = v0[115];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[99];
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  *(v0 + 152) = sub_23106BC9C;

  return swift_continuation_init();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_69(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_5()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

void OUTLINED_FUNCTION_12_6()
{

  sub_2310CC690();
}

uint64_t sub_231040038()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_13_3()
{

  sub_231061350();
}

uint64_t OUTLINED_FUNCTION_13_5(float *a1, float a2)
{
  *a1 = a2;
  *(v3 + 4) = sub_23106EEB4(v2);
}

uint64_t OUTLINED_FUNCTION_13_6()
{
  result = *(v0 - 224);
  v2 = *(v0 - 216);
  v3 = *(v0 - 200);
  v4 = *(v0 - 320);
  return result;
}

unint64_t OUTLINED_FUNCTION_13_8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  return result;
}

uint64_t sub_231040270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v64 = sub_231158CF8();
  v69 = *(v64 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_231158D48();
  v7 = *(v61 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_231157818();
  v66 = *(v59 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v11;
  v57 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v12 = *(a1 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers);
  v13 = sub_231158E28();
  v14 = [v12 objectForKey_];

  if (v14)
  {
    v16 = [v14 keyEnumerator];
  }

  else
  {
    v16 = 0;
  }

  v56 = v66 + 16;
  v55 = OBJC_IVAR___SwiftVCDaemonXPCEventHandler_queue;
  v54 = v66 + 32;
  v53 = &v71;
  v52 = (v69 + 8);
  v51 = (v7 + 8);
  *&v15 = 136315138;
  v50 = v15;
  v47 = v14;
  v48 = v16;
  if (v16)
  {
    while (1)
    {
      if ([v16 nextObject])
      {
        sub_231159468();
        swift_unknownObjectRelease();
      }

      else
      {
        v74 = 0u;
        v75 = 0u;
      }

      aBlock = v74;
      v71 = v75;
      if (!*(&v75 + 1))
      {
        break;
      }

      sub_231040B88(&aBlock, &v76);
      __swift_project_boxed_opaque_existential_0(&v76, v77);
      v17 = sub_2311597F8();
      if (v14 && (v18 = [v14 objectForKey_]) != 0)
      {
        v19 = v18;
        v20 = [v18 allObjects];

        v21 = sub_231158F48();
        v16 = v48;
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      v22 = *(v21 + 16);
      if (v22)
      {
        v49 = v21;
        v23 = v21 + 32;
        v67 = v17;
        do
        {
          sub_231040B98(v23, &aBlock);
          if (swift_dynamicCast())
          {
            v68 = *(&v74 + 1);
            v69 = v74;
            if (qword_280CCB540 != -1)
            {
              swift_once();
            }

            v24 = sub_231158258();
            __swift_project_value_buffer(v24, qword_280CCB548);
            swift_unknownObjectRetain();
            v25 = sub_231158238();
            v26 = sub_2311592C8();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              *&aBlock = v28;
              *v27 = v50;
              *&v74 = v17;
              swift_unknownObjectRetain();
              v29 = sub_231158E68();
              v31 = sub_2310488F8(v29, v30, &aBlock);

              *(v27 + 4) = v31;
              v17 = v67;
              _os_log_impl(&dword_23103C000, v25, v26, "Sending XPC event message to %s", v27, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v28);
              MEMORY[0x2319267C0](v28, -1, -1);
              MEMORY[0x2319267C0](v27, -1, -1);
            }

            v32 = *(v63 + v55);
            v33 = v66;
            v34 = v57;
            v35 = v59;
            (*(v66 + 16))(v57, v65, v59);
            v36 = (*(v33 + 80) + 40) & ~*(v33 + 80);
            v37 = swift_allocObject();
            v38 = v68;
            v39 = v69;
            *(v37 + 2) = v17;
            *(v37 + 3) = v39;
            *(v37 + 4) = v38;
            (*(v33 + 32))(&v37[v36], v34, v35);
            v72 = sub_231040F74;
            v73 = v37;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v71 = sub_231040F30;
            *(&v71 + 1) = &block_descriptor_0;
            v40 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();
            v41 = v60;
            sub_231158D08();
            *&v74 = MEMORY[0x277D84F90];
            sub_231040C14(&qword_280CCB090, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
            sub_231040C5C(qword_280CCAFD0, &unk_27DD3C750, &qword_231161B50);
            v42 = v62;
            v43 = v64;
            sub_231159498();
            MEMORY[0x231924E10](0, v41, v42, v40);
            _Block_release(v40);
            v44 = v42;
            v17 = v67;
            (*v52)(v44, v43);
            (*v51)(v41, v61);
          }

          v23 += 32;
          --v22;
        }

        while (v22);
        swift_unknownObjectRelease();

        v16 = v48;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_0(&v76);
      v14 = v47;
      if (!v16)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:

    aBlock = 0u;
    v71 = 0u;
  }

  return sub_231040EC8(&aBlock);
}

uint64_t sub_231040A84()
{
  v1 = sub_231157818();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_231040B88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_231040B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_231040C14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231040C5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_231040CB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_51_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_231040EC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE30, &qword_231166210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231040F30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_231040F74()
{
  v1 = *(*(sub_231157818() - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  return sub_231040FDC(v2);
}

id sub_231040FDC(void *a1)
{
  swift_unknownObjectRetain();
  v2 = sub_231158E28();
  v3 = NSSelectorFromString(v2);

  v4 = sub_2311577D8();
  [a1 performSelector:v3 withObject:v4];

  return a1;
}

uint64_t sub_231041074(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_2310410B8()
{
  v0 = sub_231157F18();
  v26 = *(v0 - 8);
  v1 = *(v26 + 64);
  MEMORY[0x28223BE20](v0);
  v25 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_231157E88();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_231157F28();
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231158258();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v16 = sub_231158238();
  v17 = sub_2311592F8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v21 = v0;
    v19 = v18;
    *v18 = 0;
    _os_log_impl(&dword_23103C000, v16, v17, "Scheduler: received daemon wakeup request, shortcuts app must have launched", v18, 2u);
    v0 = v21;
    MEMORY[0x2319267C0](v19, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  (*(v3 + 104))(v6, *MEMORY[0x277D79C08], v23);
  (*(v26 + 104))(v25, *MEMORY[0x277D79C48], v0);
  sub_231157E98();
  sub_231041410(v9);
  return (*(v22 + 8))(v9, v24);
}

uint64_t sub_231041410(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v6 = &v43 - v5;
  v7 = sub_231157F28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = sub_231158258();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *MEMORY[0x277D7A4E8];
  sub_2311581C8();
  v49 = *(v8 + 16);
  v50 = v7;
  v49(v13, a1, v7);
  v19 = sub_231158238();
  v20 = sub_2311592B8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v44 = v1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v46 = v6;
    v24 = v23;
    v52 = v23;
    *v22 = 136315138;
    v25 = sub_231157E68();
    v45 = a1;
    v27 = v26;
    v28 = v13;
    v29 = v50;
    (*(v8 + 8))(v28, v50);
    v30 = sub_2310488F8(v25, v27, &v52);
    a1 = v45;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_23103C000, v19, v20, "Scheduler: submitting request %s into the debouncer", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v31 = v24;
    v6 = v46;
    MEMORY[0x2319267C0](v31, -1, -1);
    v32 = v22;
    v2 = v44;
    MEMORY[0x2319267C0](v32, -1, -1);
  }

  else
  {

    v33 = v13;
    v29 = v50;
    (*(v8 + 8))(v33, v50);
  }

  (*(v47 + 8))(v17, v48);
  sub_2311589E8();
  sub_2311589D8();
  sub_2311589A8();

  v34 = *(v2 + 32);
  sub_231157E68();
  v35 = sub_231158E28();

  v36 = v51;
  v49(v51, a1, v29);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v37);
  v38 = type metadata accessor for ToolKitIndexingScheduler.DebouncedReason();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  sub_231080244(v36, v6);
  [v34 pokeWithReason:v35 userInfo:v41];
}

id VCWorkflowReferencesForAccessSpecifier(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if ([v6 allowUnrestrictedAccess])
  {
    v7 = [v5 sortedVisibleWorkflowsByName];
  }

  else
  {
    v8 = [v6 associatedAppBundleIdentifier];
    v7 = [v5 sortedVisibleWorkflowsWithAssociatedAppBundleIdentifier:v8];
  }

  v9 = [v7 descriptors];
  v10 = [v7 fetchError];

  if (v10)
  {
    if (a3)
    {
      [v7 fetchError];
      *a3 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

void VCVoiceShortcutsFromWorkflows(void *a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __VCVoiceShortcutsFromWorkflows_block_invoke;
    v9[3] = &unk_2788FF390;
    v10 = v7;
    v11 = a3;
    [a1 if_mapAsynchronously:v9 completionHandler:a4];
  }

  else
  {
    (*(a4 + 16))(a4, 0, 0);
  }
}

void __VCVoiceShortcutsFromWorkflows_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  LODWORD(a1) = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __VCVoiceShortcutsFromWorkflows_block_invoke_2;
  v9[3] = &unk_2788FF368;
  v10 = v6;
  v8 = v6;
  VCVoiceShortcutFromWorkflow(a2, v7, a1, 0, v9);
}

void VCVoiceShortcutFromWorkflow(void *a1, void *a2, int a3, char a4, void *a5)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"name", @"workflowSubtitle", @"associatedAppBundleIdentifier", @"creationDate", @"modificationDate", 0}];
    }

    v52 = 0;
    v14 = [v10 recordWithDescriptor:v9 properties:v13 error:&v52];
    v15 = v52;
    if (v14)
    {
      v41 = v10;
      v16 = [v9 identifier];
      v17 = [v14 name];
      if ([v17 wf_isEmpty])
      {
        v18 = MEMORY[0x277CCA9B8];
        v19 = *MEMORY[0x277D7A388];
        v53 = *MEMORY[0x277CCA470];
        v54[0] = @"Shortcut has no name";
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v21 = v20 = v16;
        v22 = [v18 errorWithDomain:v19 code:1009 userInfo:v21];

        v23 = v20;
        (v12)[2](v12, 0, v22);
      }

      else
      {
        v40 = v15;
        v24 = [v14 workflowSubtitle];
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __VCVoiceShortcutFromWorkflow_block_invoke;
        aBlock[3] = &unk_2788FF318;
        v39 = v16;
        v46 = v16;
        v38 = v17;
        v47 = v17;
        v37 = v24;
        v48 = v37;
        v25 = v14;
        v49 = v25;
        v26 = v9;
        v50 = v26;
        v27 = v12;
        v51 = v27;
        v28 = _Block_copy(aBlock);
        v29 = v28;
        if (a3)
        {
          v36 = v13;
          v30 = [v26 associatedAppBundleIdentifier];
          v31 = [v30 length];

          if (!v31 || (a4 & 1) != 0)
          {
            v33 = [objc_alloc(MEMORY[0x277CD3FE8]) initWithWorkflowReference:v26 includeIcon:v31 == 0];
            [v33 _setLaunchId:*MEMORY[0x277D7A300]];
            if (v31)
            {
              [v33 setIconForAssociatedApplicationInWorkflow:v26];
            }

            v34 = [objc_alloc(MEMORY[0x277CD4158]) initWithIntent:v33];
            (v29)[2](v29, v34);
          }

          else
          {
            v32 = [objc_alloc(MEMORY[0x277D7CA60]) initWithRecord:v25 reference:v26 storageProvider:0 error:0];
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __VCVoiceShortcutFromWorkflow_block_invoke_2;
            v42[3] = &unk_2788FF340;
            v43 = v27;
            v44 = v29;
            [v32 generateShortcutRepresentation:v42];
          }

          v13 = v36;
        }

        else
        {
          (*(v28 + 2))(v28, 0);
        }

        v15 = v40;

        v17 = v38;
        v23 = v39;
        v22 = v37;
      }

      v10 = v41;
    }

    else
    {
      (v12)[2](v12, 0, v15);
    }
  }

  else
  {
    (*(v11 + 2))(v11, 0, 0);
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __VCVoiceShortcutFromWorkflow_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D79D90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v5;
  v7 = *(a1 + 48);
  v18 = [*(a1 + 56) associatedAppBundleIdentifier];
  v8 = [v18 length];
  if (v8)
  {
    v9 = [*(a1 + 56) associatedAppBundleIdentifier];
  }

  else
  {
    v9 = *MEMORY[0x277D7A338];
  }

  v10 = [*(a1 + 56) creationDate];
  v11 = [*(a1 + 56) modificationDate];
  v12 = [*(a1 + 64) lastRunDate];
  v13 = [*(a1 + 64) runEventsCount];
  v19 = 0;
  v14 = [v17 initWithIdentifier:v16 phrase:v6 shortcutName:v6 shortcutDescription:v7 associatedAppBundleIdentifier:v9 dateCreated:v10 dateLastModified:v11 lastRunDate:v12 runEventsCount:v13 shortcut:v4 keyImageData:0 error:&v19];

  v15 = v19;
  if (v8)
  {
  }

  (*(*(a1 + 72) + 16))();
}

uint64_t sub_231042244@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231047E28();
  *a1 = result;
  return result;
}

void sub_231042280(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_2310422B4();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_231042338()
{
  MEMORY[0x231926880](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231042374()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

char *sub_231042408(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

uint64_t sub_231042430()
{
  MEMORY[0x231926880](v0 + 16);
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2310425FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231042684(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 sub_2310426A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2310426B4()
{
  v1 = *(v0 + 40);

  v2 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2310426E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231042728()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_231042808()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_33();
  v8(v7);

  return MEMORY[0x2821FE8E8](v0, ((v3 + 24) & ~v3) + v5, v3 | 7);
}

uint64_t sub_2310428B8()
{
  v1 = sub_231158C48();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 80) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = *(v0 + 56);

  v9 = *(v0 + 72);

  v10 = OUTLINED_FUNCTION_33();
  v11(v10);
  v12 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23104299C()
{
  v1 = sub_231158AE8();
  OUTLINED_FUNCTION_4(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 24) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = OUTLINED_FUNCTION_33();
  v9(v8);
  v10 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_231042AC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231042AF8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231042C10()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231042C8C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231042CC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231042D10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = BGSystemTaskRequest.relatedApps.getter();
  *a2 = result;
  return result;
}

__n128 sub_231042D5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231042D74()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231042DAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231042DE4()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231042E28()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_231042E5C()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231042F1C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231042F84()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231042FD8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231043010()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231043068()
{
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23104309C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2310430D0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231043104()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231043220()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_231043270()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_23107E904(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v2 = *(v0 + 144);

  v3 = *(v0 + 152);
  swift_unknownObjectRelease();
  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2310432E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231043320()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231043354()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_231043390()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2310433C4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2310433F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2310434C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_231043530()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231043564()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231043598()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310435CC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2310436BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2310436FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231043734()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23104376C()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C2D8, &qword_231163AF0);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_20_5();
  v9 = *(v0 + 24);

  (*(v5 + 8))(v0 + ((v6 + 32) & ~v6), v3);
  v10 = *(v0 + v1);

  v11 = *(v0 + v2);

  return MEMORY[0x2821FE8E8](v0, v2 + 8, v6 | 7);
}

uint64_t sub_23104384C()
{
  v3 = sub_231158668();
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_20_5();
  (*(v5 + 8))(v0 + ((v6 + 24) & ~v6), v3);
  v9 = *(v0 + v1);

  v10 = *(v0 + v2);

  return MEMORY[0x2821FE8E8](v0, v2 + 8, v6 | 7);
}

uint64_t sub_231043940()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_231043A18(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231043A2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231043A64()
{
  v1 = *(v0 + 40);

  v2 = OUTLINED_FUNCTION_0_4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231043A94()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_231043B2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231043B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_2311590F8();
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  if (a2 != 0x7FFFFFFF)
  {
    sub_2311590E8();
    v8 = sub_231159448();
    v9 = a1 + *(a3 + 40);
    goto LABEL_8;
  }

  v10 = *(a1 + *(a3 + 36));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_231043C4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = sub_2311590F8();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    sub_2311590E8();
    v10 = sub_231159448();
    v11 = a1 + *(a4 + 40);
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_231043D84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231043DBC()
{
  v2 = sub_231158368();
  OUTLINED_FUNCTION_0_13(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = OUTLINED_FUNCTION_10_9();
  v8(v7);
  v9 = *(v0 + v1);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v5 | 7);
}

uint64_t sub_231043E40()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C5F8, &unk_2311645D8);
  OUTLINED_FUNCTION_0_13(v2);
  v4 = *(v3 + 8);
  v3 += 8;
  v5 = *(v3 + 72);
  v6 = *(v3 + 56);
  v7 = OUTLINED_FUNCTION_10_9();
  v8(v7);
  v9 = *(v0 + v1);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v5 | 7);
}

uint64_t sub_231043ED8()
{
  v1 = sub_231158308();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231043F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231158418();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_231044044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231158418();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_231044118()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_23104414C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2310441EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231044220()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231044288()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2310442C4()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231044350()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2310443A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2310443DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231044414()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231044448()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_23104449C()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231044560()
{
  MEMORY[0x231926880](v0 + 16);
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_231044594()
{
  v1 = *(v0 + 16);

  sub_231092F7C(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 72) >= 5uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_231044620()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231044654()
{
  v2 = type metadata accessor for ShortcutTransformer();
  OUTLINED_FUNCTION_174(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 2);

  v9 = *(v1 + 4);

  v10 = *(v1 + 5);

  v11 = *(v1 + 6);

  v12 = *(v1 + 7);

  v13 = sub_231158418();
  OUTLINED_FUNCTION_0_13(v13);
  (*(v14 + 8))(&v1[v5]);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_231044758()
{
  v2 = type metadata accessor for ShortcutTransformer();
  OUTLINED_FUNCTION_174(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = sub_231158418();
  OUTLINED_FUNCTION_0_13(v11);
  (*(v12 + 8))(v10);

  return MEMORY[0x2821FE8E8](v1, v9 + 8, v7 | 7);
}

uint64_t sub_2310448E0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_11_10(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  OUTLINED_FUNCTION_13_0(v8);
  (*(v9 + 8))(v0 + v4);
  v10 = *(v0 + v4 + *(v1 + 44));

  v11 = *(v1 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  if (!OUTLINED_FUNCTION_35_4(v12))
  {
    OUTLINED_FUNCTION_11(v1);
    (*(v13 + 8))(v0 + v4 + v11, v1);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
  v14 = OUTLINED_FUNCTION_32_6();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_231044A38()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_11_10(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  OUTLINED_FUNCTION_13_0(v8);
  (*(v9 + 8))(v0 + v4);
  v10 = *(v0 + v4 + *(v1 + 44));

  v11 = *(v1 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  if (!OUTLINED_FUNCTION_35_4(v12))
  {
    OUTLINED_FUNCTION_11(v1);
    (*(v13 + 8))(v0 + v4 + v11, v1);
  }

  v14 = OUTLINED_FUNCTION_32_6();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_231044B7C()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_1_14();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6);
  swift_unknownObjectRelease();
  v9 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  v10 = OUTLINED_FUNCTION_32_6();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_231044C54()
{
  OUTLINED_FUNCTION_77();
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_1_14();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  OUTLINED_FUNCTION_11_10(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  (*(v4 + 8))(v0 + v5, v2);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  OUTLINED_FUNCTION_13_0(v13);
  (*(v14 + 8))(v0 + v10);
  v15 = *(v0 + v10 + *(v1 + 44));

  v16 = *(v1 + 48);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  if (!__swift_getEnumTagSinglePayload(v0 + v10 + v16, 1, v17))
  {
    OUTLINED_FUNCTION_11(v17);
    (*(v18 + 8))(v0 + v10 + v16, v17);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
  OUTLINED_FUNCTION_78();

  return MEMORY[0x2821FE8E8](v19, v20, v21);
}

uint64_t sub_231044E18()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_1_14();
  v3 = v2;
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);
  v8 = OUTLINED_FUNCTION_32_6();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

uint64_t sub_231044EC4()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_13();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_231045018()
{
  MEMORY[0x231926880](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231045050()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  v8 = *(v0 + 7);

  v9 = *(v0 + 8);

  v10 = *(v0 + 9);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

__n128 sub_23104513C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231045148()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_231045204()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231045240()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231045298()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2310452D4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23104536C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2310453A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2310453EC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA0, &qword_2311652D0);
  OUTLINED_FUNCTION_13_0(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = *(v0 + v3 + v1[11]);

  v8 = v1[12];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  if (!__swift_getEnumTagSinglePayload(v0 + v3 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_0((v0 + v10));

  return MEMORY[0x2821FE8E8](v0, v10 + 40, v2 | 7);
}

uint64_t sub_2310455A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2310455E0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231045614()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_23104565C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23104569C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_231045734(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_231045740()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4(AssociatedTypeWitness);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 40) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v0 + 4);

  (*(v5 + 8))(&v0[v7], AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v7 + v9, v6 | 7);
}

uint64_t sub_23104580C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231045844()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23104587C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2310458E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2310CE690();
  *a1 = result;
  return result;
}

uint64_t sub_231045910(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *v1;
  return sub_2310CDC68();
}

uint64_t sub_23104594C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23104598C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231045A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_231045B4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_231045C04()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_231045C3C()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_231045D08()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231045D38()
{
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_13_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_231045DB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_231045E00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_231045E80()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231045EB4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231045F34()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231045F68()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231045F9C()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231045FD4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23104600C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231046040()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_231046084()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2310460B8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_9_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_23104613C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_231046164(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_231046250()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_2310462B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2310461A8();
  *a2 = result;
  return result;
}

uint64_t sub_2310462DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_231046250();
}

void (*sub_231046308(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___WFToastManager_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_23104638C;
}

void sub_23104638C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_231046484()
{
  v1 = *(v0 + OBJC_IVAR___WFToastManager_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_231048E94(v2, &v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;

  return v3;
}

id sub_231046510@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___WFToastManager__toastedSession);
  *a1 = v2;
  return v2;
}

id ToastManager.init(with:)()
{
  v1 = [v0 init];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_23104662C()
{
  v1 = *(v0 + OBJC_IVAR___WFToastManager__toastedSession);
  v2 = OBJC_IVAR___WFToastManager_transaction;
  result = *(v0 + OBJC_IVAR___WFToastManager_transaction);
  if (v1)
  {
    if (result)
    {
      return result;
    }

    v1 = os_transaction_create();
    v4 = *(v0 + v2);
  }

  *(v0 + v2) = v1;

  return swift_unknownObjectRelease();
}

void sub_23104669C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___WFToastManager__toastedSession);
  *(v1 + OBJC_IVAR___WFToastManager__toastedSession) = a1;
  v3 = a1;

  sub_23104662C();
}

uint64_t sub_2310466F4()
{
  v1 = *(v0 + OBJC_IVAR___WFToastManager_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_231048F04(v2, &v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;

  return v3;
}

void sub_231046788(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>)
{
  v72 = a4;
  v9 = sub_231158258();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  v18 = OBJC_IVAR___WFToastManager_timer;
  [*(a1 + OBJC_IVAR___WFToastManager_timer) cancel];
  v19 = *(a1 + v18);
  *(a1 + v18) = 0;

  sub_23104669C(0);
  v20 = objc_allocWithZone(sub_231157AF8());

  v21 = sub_231157AD8();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v22;

  sub_231157AB8();

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v71 = a2;
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = v24;

  sub_231157AC8();

  v26 = v21;
  sub_23104669C(v21);
  v27 = v73;
  sub_231157AE8();
  v73 = v27;
  if (v27)
  {
    v28 = *MEMORY[0x277D7A4B8];
    v29 = v68;
    sub_2311581C8();

    v30 = sub_231158238();
    v31 = sub_2311592D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v26;
      v34 = swift_slowAlloc();
      v74[0] = v34;
      *v32 = 136315138;
      *(v32 + 4) = sub_2310488F8(v71, a3, v74);
      _os_log_impl(&dword_23103C000, v30, v31, "Failed to toast session with identifier %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v35 = v34;
      v26 = v33;
      MEMORY[0x2319267C0](v35, -1, -1);
      MEMORY[0x2319267C0](v32, -1, -1);
    }

    (*(v69 + 8))(v29, v70);
    sub_23104669C(0);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      v46 = sub_231158E28();
      [v45 toastManager:a1 didFailToToastSessionWithIdentifier:v46 error:0];
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v47 = 0;
    v73 = 0;
  }

  else
  {
    if (a5 == -1.0)
    {
      v36 = *MEMORY[0x277D7A4B8];
      v37 = v15;
      sub_2311581C8();

      v38 = sub_231158238();
      v39 = sub_2311592F8();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = v26;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v74[0] = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_2310488F8(v71, a3, v74);
        _os_log_impl(&dword_23103C000, v38, v39, "Toasted session with identifier %s for infinite duration...", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x2319267C0](v42, -1, -1);
        v43 = v41;
        v26 = v40;
        MEMORY[0x2319267C0](v43, -1, -1);
      }

      (*(v69 + 8))(v37, v70);
    }

    else
    {
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = a5;
      v50 = v71;
      *(v49 + 32) = v71;
      *(v49 + 40) = a3;
      objc_allocWithZone(MEMORY[0x277D79F48]);

      v51 = sub_231047B68(0, sub_231049708, v49, a5);
      v52 = *(a1 + v18);
      *(a1 + v18) = v51;
      v53 = v51;

      [v53 start];
      v54 = *MEMORY[0x277D7A4B8];
      v55 = v17;
      sub_2311581C8();

      v56 = sub_231158238();
      v57 = sub_2311592F8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = v53;
        v59 = v26;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v68 = v55;
        v62 = v61;
        v74[0] = v61;
        *v60 = 136315394;
        *(v60 + 4) = sub_2310488F8(v50, a3, v74);
        *(v60 + 12) = 2048;
        *(v60 + 14) = a5;
        _os_log_impl(&dword_23103C000, v56, v57, "Toasted session with identifier %s for duration %f secs...", v60, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x2319267C0](v62, -1, -1);
        v63 = v60;
        v26 = v59;
        MEMORY[0x2319267C0](v63, -1, -1);

        (*(v69 + 8))(v68, v70);
      }

      else
      {

        (*(v69 + 8))(v17, v70);
      }
    }

    swift_beginAccess();
    v64 = swift_unknownObjectWeakLoadStrong();
    if (v64)
    {
      v65 = v64;
      v66 = sub_231158E28();
      [v65 toastManager:a1 didToastSessionWithIdentifier:v66 duration:a5];

      swift_unknownObjectRelease();
    }

    v47 = 1;
  }

  *v72 = v47;
}

void sub_231046F64(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_231158258();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D7A4B8];
  sub_2311581C8();

  v16 = sub_231158238();
  v17 = sub_2311592F8();

  v18 = os_log_type_enabled(v16, v17);
  v34[2] = a5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v34[1] = a4;
    v20 = a3;
    v21 = v19;
    v22 = swift_slowAlloc();
    v23 = a5;
    v24 = v22;
    v35[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2310488F8(v23, a6, v35);
    _os_log_impl(&dword_23103C000, v16, v17, "Toasted session with identifier %s going away...", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x2319267C0](v24, -1, -1);
    v25 = v21;
    a3 = v20;
    MEMORY[0x2319267C0](v25, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = *(Strong + OBJC_IVAR___WFToastManager_lock);
    v29 = MEMORY[0x28223BE20](Strong);
    v34[-2] = v29;
    MEMORY[0x28223BE20](v29);
    v34[-2] = sub_231049A54;
    v34[-1] = v30;

    os_unfair_lock_lock(v28 + 4);
    sub_231049AA0();
    os_unfair_lock_unlock(v28 + 4);

    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      v33 = sub_231158E28();
      [v32 toastManager:v27 didDismissToastedSessionWithIdentifier:v33];

      v31 = swift_unknownObjectRelease();
    }

    a3(v31);
  }
}

void sub_23104726C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_231158258();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277D7A4B8];
  sub_2311581C8();

  v12 = sub_231158238();
  v13 = sub_2311592D8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2310488F8(a2, a3, &v28);
    _os_log_impl(&dword_23103C000, v12, v13, "Our toast was invalidated for session with identifier %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x2319267C0](v16, -1, -1);
    v17 = v15;
    a1 = v27;
    MEMORY[0x2319267C0](v17, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(Strong + OBJC_IVAR___WFToastManager_lock);
    v21 = MEMORY[0x28223BE20](Strong);
    *(&v27 - 2) = v21;
    MEMORY[0x28223BE20](v21);
    *(&v27 - 2) = sub_231049A54;
    *(&v27 - 1) = v22;

    os_unfair_lock_lock(v20 + 4);
    sub_231049AA0();
    os_unfair_lock_unlock(v20 + 4);

    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = sub_231158E28();
      if (a1)
      {
        v26 = sub_231157928();
      }

      else
      {
        v26 = 0;
      }

      [v24 toastManager:v19 didFailToToastSessionWithIdentifier:v25 error:v26];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_23104757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_231159588();
    MEMORY[0x231924980](0xD00000000000001ALL, 0x80000002311676B0);
    sub_231159158();
    MEMORY[0x231924980](0xD000000000000019, 0x80000002311676D0);
    MEMORY[0x231924980](a2, a3);
    sub_231047700(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_231047700(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_231158258();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *MEMORY[0x277D7A4B8];
  sub_2311581C8();

  v12 = sub_231158238();
  v13 = sub_2311592F8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2310488F8(a1, a2, v21);
    _os_log_impl(&dword_23103C000, v12, v13, "Dismissing the toast with reason: %s, if it exists", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2319267C0](v15, -1, -1);
    MEMORY[0x2319267C0](v14, -1, -1);
  }

  v16 = (*(v7 + 8))(v10, v6);
  v17 = *(v3 + OBJC_IVAR___WFToastManager_lock);
  v18 = MEMORY[0x28223BE20](v16);
  v21[-2] = v3;
  MEMORY[0x28223BE20](v18);
  v21[-2] = sub_231048F20;
  v21[-1] = v19;

  os_unfair_lock_lock(v17 + 4);
  sub_231040038();
  os_unfair_lock_unlock(v17 + 4);
}

id ToastManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ToastManager.init()()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___WFToastManager_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B970, &qword_231161060);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR___WFToastManager__toastedSession] = 0;
  *&v0[OBJC_IVAR___WFToastManager_transaction] = 0;
  *&v0[OBJC_IVAR___WFToastManager_timer] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ToastManager();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ToastManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToastManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_231047B68(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_231040F30;
  v10[3] = &block_descriptor;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithInterval:a1 queue:v7 handler:a4];

  _Block_release(v7);

  return v8;
}

uint64_t sub_231047C30()
{
  v0 = sub_231158E58();
  v1 = MEMORY[0x2319249B0](v0);

  return v1;
}

uint64_t sub_231047C68()
{
  sub_231158E58();
  sub_231158EA8();
}

uint64_t sub_231047CBC()
{
  sub_231158E58();
  sub_231159918();
  sub_231158EA8();
  v0 = sub_231159948();

  return v0;
}

uint64_t sub_231047D30(uint64_t a1, id *a2)
{
  result = sub_231158E38();
  *a2 = 0;
  return result;
}

uint64_t sub_231047DA8(uint64_t a1, id *a2)
{
  v3 = sub_231158E48();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_231047E28()
{
  sub_231158E58();
  v0 = sub_231158E28();

  return v0;
}

uint64_t sub_231047E6C(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB078, type metadata accessor for CCItemError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_231047ED8(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB078, type metadata accessor for CCItemError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_231047F44(uint64_t a1)
{
  v2 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_231047FB0()
{
  v1 = OUTLINED_FUNCTION_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_231047FF0()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_23104D8B4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_231048018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_231158E28();

  *a2 = v5;
  return result;
}

uint64_t sub_231048074(uint64_t a1)
{
  v2 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2310480E0(uint64_t a1)
{
  v2 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23104814C(void *a1, uint64_t a2)
{
  v4 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2310481DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_231048278(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_2310482E4(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_231048350(void *a1, uint64_t a2)
{
  v4 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_2310483E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23104845C()
{
  v2 = *v0;
  sub_231159918();
  sub_231158DD8();
  return sub_231159948();
}

uint64_t sub_2310484C0(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCAF88, type metadata accessor for VCXPCEventName);
  v3 = sub_231049274(&qword_27DD3B9F0, type metadata accessor for VCXPCEventName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23104857C(uint64_t a1)
{
  v2 = sub_231049274(&qword_27DD3B9D8, type metadata accessor for VCXPCEventStream);
  v3 = sub_231049274(&unk_27DD3B9E0, type metadata accessor for VCXPCEventStream);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_231048638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231049274(&unk_280CCB068, type metadata accessor for CCItemError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2310486BC(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB020, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_231048728(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB020, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_231048794(uint64_t a1)
{
  v2 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_231048800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231049274(&qword_280CCB018, type metadata accessor for BGSystemTaskSchedulerError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

void *sub_231048884(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2310488BC(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&var1);
  if (!v2)
  {
    v3 = var1;
  }

  return v3 & 1;
}

uint64_t sub_2310488F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2310489BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_231040B98(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2310489BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_231048ABC(a5, a6);
    *a1 = v9;
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
    result = sub_2311595D8();
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

uint64_t sub_231048ABC(uint64_t a1, unint64_t a2)
{
  v4 = sub_231048B08(a1, a2);
  sub_231048C20(&unk_2845D73D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_231048B08(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_231158ED8())
  {
    result = sub_231048D04(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_231159578();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2311595D8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_231048C20(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_231048D74(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_231048D04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BA58, &unk_231161670);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_231048D74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BA58, &unk_231161670);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void *sub_231048E68@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_231048884(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_231048ED4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr)@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2310488BC(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
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

uint64_t sub_231049188(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2310491A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_231049274(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2310495A0()
{
  result = qword_280CCB088;
  if (!qword_280CCB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB088);
  }

  return result;
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_231049920(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_231049AC4()
{
  v0 = sub_231158258();
  __swift_allocate_value_buffer(v0, qword_280CCB548);
  __swift_project_value_buffer(v0, qword_280CCB548);
  return sub_231158248();
}

id DaemonXPCEventHandler.init(streams:queue:)(uint64_t a1, void *a2)
{
  v3 = OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3B970, &qword_231161060);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + v3) = v4;
  v75 = OBJC_IVAR___SwiftVCDaemonXPCEventHandler_streamForEvent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BBE8, &qword_231161AA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161A90;
  *(inited + 32) = @"ApplicationRegistered";
  *(inited + 40) = @"com.apple.distnoted.matching";
  *(inited + 48) = @"ApplicationUnregistered";
  *(inited + 56) = @"com.apple.distnoted.matching";
  *(inited + 64) = @"ApplicationStateChanged";
  *(inited + 72) = @"com.apple.distnoted.matching";
  *(inited + 80) = @"LNAppShortcutsChangedNotification";
  *(inited + 88) = @"com.apple.distnoted.matching";
  *(inited + 96) = @"com.apple.language.changed";
  *(inited + 104) = @"com.apple.notifyd.matching";
  *(inited + 112) = @"kAFPreferencesDidChangeDarwinNotification";
  *(inited + 120) = @"com.apple.notifyd.matching";
  *(inited + 128) = @"com.apple.nanoregistry.paireddevicedidchangeversion";
  *(inited + 136) = @"com.apple.notifyd.matching";
  *(inited + 144) = @"com.apple.mobile.keybagd.first_unlock";
  *(inited + 152) = @"com.apple.notifyd.matching";
  *(inited + 160) = @"com.apple.system.timezone";
  *(inited + 168) = @"com.apple.notifyd.matching";
  *(inited + 176) = @"com.apple.system.clock_set";
  *(inited + 184) = @"com.apple.notifyd.matching";
  *(inited + 192) = @"com.apple.mediaaccessibility.displayFilterSettingsChanged";
  *(inited + 200) = @"com.apple.notifyd.matching";
  *(inited + 208) = @"com.apple.accessibility.reduce.motion.status";
  *(inited + 216) = @"com.apple.notifyd.matching";
  *(inited + 224) = @"com.apple.accessibility.enhance.background.contrast.status";
  *(inited + 232) = @"com.apple.notifyd.matching";
  *(inited + 240) = @"UIAccessibilityInvertColorsChanged";
  *(inited + 248) = @"com.apple.notifyd.matching";
  *(inited + 256) = @"com.apple.accessibility.voiceovertouch.status";
  *(inited + 264) = @"com.apple.notifyd.matching";
  *(inited + 272) = @"com.apple.accessibility.zoomtouch.status";
  *(inited + 280) = @"com.apple.notifyd.matching";
  *(inited + 288) = @"com.apple.accessibility.commandandcontrol.status";
  *(inited + 296) = @"com.apple.notifyd.matching";
  *(inited + 304) = @"com.apple.accessibility.pointer.increased.contrast";
  *(inited + 312) = @"com.apple.notifyd.matching";
  *(inited + 320) = @"com.apple.accessibility.classic.wob.status";
  *(inited + 328) = @"com.apple.notifyd.matching";
  *(inited + 336) = @"com.apple.accessibility.reduce.white.point";
  *(inited + 344) = @"com.apple.notifyd.matching";
  *(inited + 352) = @"com.apple.commcenter.DataSettingsChangedNotification";
  *(inited + 360) = @"com.apple.notifyd.matching";
  *(inited + 368) = @"com.apple.callhistory.notification.calls-changed";
  *(inited + 376) = @"com.apple.notifyd.matching";
  *(inited + 384) = @"CNFavoritesChangedExternallyNotification";
  *(inited + 392) = @"com.apple.notifyd.matching";
  *(inited + 400) = @"com.apple.appprotection.change.hidden";
  *(inited + 408) = @"com.apple.notifyd.matching";
  *(inited + 416) = @"com.apple.spotlightui.prefschanged";
  *(inited + 424) = @"com.apple.notifyd.matching";
  *(inited + 432) = @"LNMetadataChangedNotification";
  *(inited + 440) = @"com.apple.distnoted.matching";
  *(inited + 448) = @"TKToolkitDatabaseChangedNotification";
  *(inited + 456) = @"com.apple.distnoted.matching";
  *(inited + 464) = @"Hidden App Bundle IDs Subscription";
  *(inited + 472) = @"com.apple.appprotection.preferences.change.event";
  *(inited + 480) = @"com.apple.shortcuts.daemon-wakeup-request";
  *(inited + 488) = @"com.apple.notifyd.matching";
  *(inited + 496) = @"com.apple.gms.availability.notification";
  *(inited + 504) = @"com.apple.notifyd.matching";
  type metadata accessor for VCXPCEventName(0);
  type metadata accessor for VCXPCEventStream(0);
  sub_231040C14(&qword_280CCAF88, type metadata accessor for VCXPCEventName);
  v6 = @"com.apple.distnoted.matching";
  v7 = @"com.apple.notifyd.matching";
  v8 = v6;
  v9 = v7;
  v10 = v8;
  v11 = v9;
  v12 = v10;
  v13 = v11;
  v14 = v12;
  v15 = v13;
  v16 = @"ApplicationRegistered";
  v17 = @"ApplicationUnregistered";
  v18 = @"ApplicationStateChanged";
  v19 = @"LNAppShortcutsChangedNotification";
  v20 = @"com.apple.language.changed";
  v21 = @"kAFPreferencesDidChangeDarwinNotification";
  v22 = @"com.apple.nanoregistry.paireddevicedidchangeversion";
  v23 = @"com.apple.mobile.keybagd.first_unlock";
  v24 = @"com.apple.system.timezone";
  v25 = @"com.apple.system.clock_set";
  v26 = @"com.apple.mediaaccessibility.displayFilterSettingsChanged";
  v27 = @"com.apple.accessibility.reduce.motion.status";
  v28 = @"com.apple.accessibility.enhance.background.contrast.status";
  v29 = @"UIAccessibilityInvertColorsChanged";
  v30 = @"com.apple.accessibility.voiceovertouch.status";
  v31 = @"com.apple.accessibility.zoomtouch.status";
  v32 = @"com.apple.accessibility.commandandcontrol.status";
  v33 = @"com.apple.accessibility.pointer.increased.contrast";
  v34 = @"com.apple.accessibility.classic.wob.status";
  v35 = @"com.apple.accessibility.reduce.white.point";
  v36 = @"com.apple.commcenter.DataSettingsChangedNotification";
  v37 = @"com.apple.callhistory.notification.calls-changed";
  v38 = @"CNFavoritesChangedExternallyNotification";
  v39 = @"com.apple.appprotection.change.hidden";
  v40 = @"com.apple.spotlightui.prefschanged";
  v41 = @"LNMetadataChangedNotification";
  v42 = v79;
  v43 = @"TKToolkitDatabaseChangedNotification";
  v44 = @"Hidden App Bundle IDs Subscription";
  v45 = @"com.apple.appprotection.preferences.change.event";
  v46 = @"com.apple.shortcuts.daemon-wakeup-request";
  v47 = @"com.apple.gms.availability.notification";
  *&v79[v75] = sub_231158DB8();
  if (qword_280CCB540 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v48 = sub_231158258();
  __swift_project_value_buffer(v48, qword_280CCB548);
  v49 = a1;

  v50 = sub_231158238();
  v51 = sub_2311592B8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    v81 = v53;
    *v52 = 136315138;
    v55 = *(a1 + 16);
    v56 = MEMORY[0x277D84F90];
    if (v55)
    {
      v76 = v53;
      v80 = MEMORY[0x277D84F90];
      sub_23104CA0C(0, v55, 0);
      v56 = v80;
      v57 = (a1 + 32);
      do
      {
        v58 = *v57;
        v59 = sub_231158E58();
        v61 = v60;
        v63 = *(v80 + 16);
        v62 = *(v80 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_23104CA0C((v62 > 1), v63 + 1, 1);
        }

        *(v80 + 16) = v63 + 1;
        v64 = v80 + 16 * v63;
        *(v64 + 32) = v59;
        *(v64 + 40) = v61;
        ++v57;
        --v55;
      }

      while (v55);
      v49 = a1;
      v42 = v79;
      v54 = v76;
    }

    v65 = MEMORY[0x231924A30](v56, MEMORY[0x277D837D0]);
    v67 = v66;

    v68 = sub_2310488F8(v65, v67, &v81);

    *(v52 + 4) = v68;
    _os_log_impl(&dword_23103C000, v50, v51, "Creating XPC event handler with streams: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  *&v42[OBJC_IVAR___SwiftVCDaemonXPCEventHandler_streams] = v49;
  *&v42[OBJC_IVAR___SwiftVCDaemonXPCEventHandler_queue] = a2;
  v69 = objc_opt_self();
  v70 = a2;
  v71 = [v69 strongToStrongObjectsMapTable];
  *&v42[OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers] = v71;
  v72 = type metadata accessor for DaemonXPCEventHandler();
  v82.receiver = v42;
  v82.super_class = v72;
  v73 = objc_msgSendSuper2(&v82, sel_init);

  return v73;
}

id DaemonXPCEventHandler.__allocating_init(streams:)()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_10_0();
  return DaemonXPCEventHandler.init(streams:)();
}

id DaemonXPCEventHandler.init(streams:)()
{
  v0 = sub_231159318();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_5_0();
  v2 = sub_231159328();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = sub_231158D48();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  OUTLINED_FUNCTION_5_0();
  type metadata accessor for VCXPCEventStream(0);
  v13 = sub_231158F38();

  sub_23104CA2C();
  sub_231158D38();
  (*(v5 + 104))(v10, *MEMORY[0x277D85268], v2);
  sub_231040C14(&unk_280CCAF10, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_231040C5C(&qword_280CCAFC0, &qword_27DD3BC00, &unk_231161AB0);
  sub_231159498();
  v14 = sub_231159358();
  v15 = [v17 initWithStreams:v13 queue:v14];

  return v15;
}

void sub_23104A65C()
{
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_231040060(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23104A6FC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, const char *a6)
{
  v10 = *(a1 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers);
  v11 = sub_231158E28();
  v12 = [v10 objectForKey_];

  v13 = v12;
  if (!v12)
  {
    v12 = [objc_opt_self() weakToStrongObjectsMapTable];
    v14 = sub_231158E28();
    [v10 &selRef_stateClass];

    if (qword_280CCB540 != -1)
    {
      swift_once();
    }

    v15 = sub_231158258();
    __swift_project_value_buffer(v15, qword_280CCB548);

    v16 = a4;
    v17 = sub_231158238();
    v18 = sub_2311592B8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_2310488F8(a2, a3, &v32);
      *(v19 + 12) = 2080;
      type metadata accessor for VCXPCEventStream(0);
      v21 = v16;
      v22 = sub_231158E68();
      v24 = v18;
      v25 = sub_2310488F8(v22, v23, &v32);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_23103C000, v17, v24, "Registering for event: %s on stream: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319267C0](v20, -1, -1);
      MEMORY[0x2319267C0](v19, -1, -1);
    }

    sub_23104B4EC();
    v13 = 0;
  }

  v26 = v13;
  v27 = [v12 objectForKey_];

  v28 = v27;
  if (!v27)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
    [v12 setObject:v28 forKey:a5];
  }

  v29 = v27;
  v30 = NSStringFromSelector(a6);
  if (!v30)
  {
    sub_231158E58();
    v30 = sub_231158E28();
  }

  [v28 addObject_];
}

void sub_23104AB08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_23104ACC0(a3, *(v3 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_streamForEvent));
  if (v5)
  {
    v6 = v5;
    sub_231158E58();
    sub_23104A65C();
  }

  else
  {
    if (qword_280CCB540 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v7 = sub_231158258();
    __swift_project_value_buffer(v7, qword_280CCB548);
    v8 = a3;
    oslog = sub_231158238();
    v9 = sub_2311592D8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_231158E58();
      v14 = sub_2310488F8(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23103C000, oslog, v9, "Unable to add observer for %s. No stream found.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }
  }
}

void *sub_23104ACC0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_231092BD8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_23104AD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23105FECC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_23104AD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23105FECC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_23104ADA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_231092C6C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_231040B98(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_23104AE04(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_231092CB0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

double sub_23104AE54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_23105FECC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_231040B98(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_23104AFB4()
{
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_23104007C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23104B034(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a2 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers);
    v5 = a1;
    v6 = [v4 objectForKey_];
    if (v6)
    {
      v7 = v6;
      [v6 removeObjectForKey_];
    }

LABEL_4:
  }

  else
  {
    v5 = [*(a2 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers) objectEnumerator];
    if (v5)
    {
      while (1)
      {
        if ([v5 nextObject])
        {
          sub_231159468();
          swift_unknownObjectRelease();
        }

        else
        {
          *v8 = 0u;
          v9 = 0u;
        }

        v10 = *v8;
        v11 = v9;
        if (!*(&v9 + 1))
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC70, &unk_231161B70);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_4;
        }

        [v8[0] removeObjectForKey_];

        if (!v5)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v10 = 0u;
      v11 = 0u;
    }

    sub_231040EC8(&v10);
  }
}

void sub_23104B248()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_23104007C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23104B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *(a3 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers);
    v6 = sub_231158E28();
    v7 = [v5 objectForKey_];

    if (v7)
    {
      [v7 removeObjectForKey_];
LABEL_4:
    }
  }

  else
  {
    v7 = [*(a3 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_observers) objectEnumerator];
    if (v7)
    {
      while (1)
      {
        if ([v7 nextObject])
        {
          sub_231159468();
          swift_unknownObjectRelease();
        }

        else
        {
          *v8 = 0u;
          v9 = 0u;
        }

        v10 = *v8;
        v11 = v9;
        if (!*(&v9 + 1))
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC70, &unk_231161B70);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_4;
        }

        [v8[0] removeObjectForKey_];

        if (!v7)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v10 = 0u;
      v11 = 0u;
    }

    sub_231040EC8(&v10);
  }
}

uint64_t sub_23104B4EC()
{
  OUTLINED_FUNCTION_12();
  sub_231158E58();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_14_0();
  v3 = v3 && v0 == v2;
  if (v3)
  {

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15();

  if (v1)
  {
LABEL_28:
    sub_231157E28();
    OUTLINED_FUNCTION_9_0();
    swift_allocObject();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_3(v17);
    sub_231040C14(&unk_280CCB148, MEMORY[0x277D79B98]);
    OUTLINED_FUNCTION_10_0();

    goto LABEL_29;
  }

  sub_231158E58();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_14_0();
  if (v3 && v0 == v4)
  {

    goto LABEL_33;
  }

  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15();

  if (v1)
  {
LABEL_33:
    sub_231158138();
    OUTLINED_FUNCTION_9_0();
    swift_allocObject();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_3(v18);
    sub_231040C14(&qword_280CCB0C0, MEMORY[0x277D79D30]);
    OUTLINED_FUNCTION_10_0();

    goto LABEL_29;
  }

  sub_231158E58();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_14_0();
  if (v3 && v0 == v6)
  {

    goto LABEL_35;
  }

  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15();

  if (v1)
  {
LABEL_35:
    sub_2311580D8();
    OUTLINED_FUNCTION_9_0();
    swift_allocObject();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_3(v19);
    sub_231040C14(&unk_280CCB0F0, MEMORY[0x277D79D00]);
    OUTLINED_FUNCTION_10_0();

    goto LABEL_29;
  }

  sub_231158E58();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_14_0();
  if (v3 && v0 == v8)
  {

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_15();

  if (v1)
  {
LABEL_37:
    sub_231158188();
    OUTLINED_FUNCTION_9_0();
    swift_allocObject();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_8();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_3(v20);
    sub_231040C14(&unk_280CCB0A0, MEMORY[0x277D79D58]);
    OUTLINED_FUNCTION_10_0();

    goto LABEL_29;
  }

  v10 = sub_231158E58();
  v12 = v11;
  if (v10 == sub_231158E58() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_231159818();

    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  sub_231158098();
  OUTLINED_FUNCTION_9_0();
  swift_allocObject();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_3(v21);
  sub_231040C14(&unk_280CCB128, MEMORY[0x277D79CD8]);
  OUTLINED_FUNCTION_10_0();

LABEL_29:
  sub_231157CC8();
}

uint64_t sub_23104B980()
{
  v0 = sub_231157818();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_231158E28();
    memset(v7, 0, sizeof(v7));
    sub_2311577F8();
    sub_23103FD78();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_23104BAB0()
{
  v0 = sub_231157818();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_231158E28();
    memset(v8, 0, sizeof(v8));
    v7 = sub_231158158();
    if (v7)
    {
      sub_23104BC20(v7);
    }

    sub_2311577F8();
    sub_23103FD78();

    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

uint64_t sub_23104BC20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC60, &qword_231161B58);
    v2 = sub_2311596F8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_231040B98(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_231040B88(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_231040B88(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_231040B88(v32, v33);
    v15 = *(v2 + 40);
    result = sub_231159508();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_231040B88(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_23104BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = sub_231157818();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v14 = v13 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    a5();
    sub_23103FD78();

    return (*(v9 + 8))(v14, v6);
  }

  return result;
}

void sub_23104BFF8()
{
  v1 = *(v0 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_lock);
  os_unfair_lock_assert_not_owner(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  OUTLINED_FUNCTION_13();
  sub_23104007C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_23104C06C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___SwiftVCDaemonXPCEventHandler_streams);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = sub_231158E58();
      v7 = v6;
      if (v5 == sub_231158E58() && v7 == v8)
      {
        v46 = v4;
      }

      else
      {
        v10 = sub_231159818();
        v11 = v4;

        if ((v10 & 1) == 0)
        {
          v12 = sub_231158E58();
          v14 = v13;
          if (v12 == sub_231158E58() && v14 == v15)
          {
          }

          else
          {
            v17 = sub_231159818();

            if ((v17 & 1) == 0)
            {
              v18 = sub_231158E58();
              v20 = v19;
              if (v18 == sub_231158E58() && v20 == v21)
              {
              }

              else
              {
                v23 = sub_231159818();

                if ((v23 & 1) == 0)
                {
                  v24 = sub_231158E58();
                  v26 = v25;
                  if (v24 == sub_231158E58() && v26 == v27)
                  {
                  }

                  else
                  {
                    v29 = sub_231159818();

                    if ((v29 & 1) == 0)
                    {
                      v30 = sub_231158E58();
                      v32 = v31;
                      if (v30 == sub_231158E58() && v32 == v33)
                      {
                      }

                      else
                      {
                        v35 = sub_231159818();

                        if ((v35 & 1) == 0)
                        {
                          if (qword_280CCB540 != -1)
                          {
                            swift_once();
                          }

                          v36 = sub_231158258();
                          __swift_project_value_buffer(v36, qword_280CCB548);
                          v37 = v11;
                          v38 = sub_231158238();
                          v39 = sub_2311592F8();

                          log = v38;
                          if (os_log_type_enabled(v38, v39))
                          {
                            v40 = swift_slowAlloc();
                            v41 = swift_slowAlloc();
                            v51 = v41;
                            *v40 = 136315138;
                            type metadata accessor for VCXPCEventStream(0);
                            v49 = v37;
                            v42 = sub_231158E68();
                            v44 = sub_2310488F8(v42, v43, &v51);

                            *(v40 + 4) = v44;
                            _os_log_impl(&dword_23103C000, log, v39, "Unknown stream type: %s", v40, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0(v41);
                            MEMORY[0x2319267C0](v41, -1, -1);
                            MEMORY[0x2319267C0](v40, -1, -1);

                            v45 = v49;
                          }

                          else
                          {

                            v45 = v38;
                          }

                          goto LABEL_37;
                        }
                      }

                      sub_231158098();
                      v47 = MEMORY[0x277D79CD8];
                      v48 = &unk_280CCB128;
                      goto LABEL_36;
                    }
                  }

                  sub_231158188();
                  v47 = MEMORY[0x277D79D58];
                  v48 = &unk_280CCB0A0;
LABEL_36:
                  sub_231040C14(v48, v47);
                  sub_231157CB8();

                  goto LABEL_37;
                }
              }

              sub_231157E28();
              v47 = MEMORY[0x277D79B98];
              v48 = &unk_280CCB148;
              goto LABEL_36;
            }
          }

          sub_2311580D8();
          v47 = MEMORY[0x277D79D00];
          v48 = &unk_280CCB0F0;
          goto LABEL_36;
        }
      }

      sub_231158138();
      sub_231040C14(&qword_280CCB0C0, MEMORY[0x277D79D30]);
      sub_231157CB8();

LABEL_37:
      ++v3;
      --v2;
    }

    while (v2);
  }
}

id DaemonXPCEventHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonXPCEventHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonXPCEventHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_23104C774(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

unint64_t sub_23104C794(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= result && result + 8 * a2 > a3)
  {
    if (a3 != result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
      v5 = OUTLINED_FUNCTION_1_0();

      return MEMORY[0x2821FE820](v5);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
    v4 = OUTLINED_FUNCTION_1_0();

    return MEMORY[0x2821FE828](v4);
  }

  return result;
}

char *sub_23104C84C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_23104C874(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

char *sub_23104C898(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

uint64_t sub_23104C920(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_1_0();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_1_0();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

char *sub_23104CA0C(char *a1, int64_t a2, char a3)
{
  result = sub_23104CE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23104CA2C()
{
  result = qword_280CCAF08;
  if (!qword_280CCAF08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAF08);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_23104CC4C(char *a1, int64_t a2, char a3)
{
  result = sub_23104CF1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23104CC6C(size_t a1, int64_t a2, char a3)
{
  result = sub_23104D370(a1, a2, a3, *v3, &qword_27DD3BC58, &unk_231161B40, MEMORY[0x277D79B60], MEMORY[0x277D79B60]);
  *v3 = result;
  return result;
}

void *sub_23104CCC4(void *a1, int64_t a2, char a3)
{
  result = sub_23104D01C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23104CCE4(char *a1, int64_t a2, char a3)
{
  result = sub_23104D14C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23104CD04(char *a1, int64_t a2, char a3)
{
  result = sub_23104D264(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23104CD24(size_t a1, int64_t a2, char a3)
{
  result = sub_23104D370(a1, a2, a3, *v3, &qword_27DD3BC38, &qword_231161B18, MEMORY[0x277D79C70], MEMORY[0x277D79C70]);
  *v3 = result;
  return result;
}

size_t sub_23104CD7C(size_t a1, int64_t a2, char a3)
{
  result = sub_23104D370(a1, a2, a3, *v3, &qword_27DD3BC20, &qword_231161B00, MEMORY[0x277D7C018], MEMORY[0x277D7C018]);
  *v3 = result;
  return result;
}

void *sub_23104CDD4(void *a1, int64_t a2, char a3)
{
  result = sub_23104D538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23104CDF4(char *a1, int64_t a2, char a3)
{
  result = sub_23104D670(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23104CE14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23104CF1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC50, &qword_231161B38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_23104D01C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC08, &qword_231161AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC10, &qword_231161AF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23104D14C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC40, &unk_231161B20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23104D264(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC68, &qword_231161B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23104D370(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    sub_23104C920(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_23104D538(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC28, &qword_231161B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC30, &qword_231161B10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23104D670(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC18, &qword_231161AF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_23104D7C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23104BAB0();
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_23104D844()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_23104B980();
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

uint64_t OUTLINED_FUNCTION_2_1()
{

  return sub_231159818();
}

void *OUTLINED_FUNCTION_3(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_231158E58();
}

uint64_t OUTLINED_FUNCTION_15()
{
}

void OUTLINED_FUNCTION_16()
{

  JUMPOUT(0x2319267C0);
}

uint64_t sub_23104D9D8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_231158C58();
  v2[13] = v3;
  OUTLINED_FUNCTION_5(v3);
  v2[14] = v4;
  v6 = *(v5 + 64);
  v2[15] = OUTLINED_FUNCTION_21_0();
  v7 = sub_231158488();
  v2[16] = v7;
  OUTLINED_FUNCTION_5(v7);
  v2[17] = v8;
  v10 = *(v9 + 64);
  v2[18] = OUTLINED_FUNCTION_21_0();
  v11 = sub_231157A38();
  v2[19] = v11;
  OUTLINED_FUNCTION_5(v11);
  v2[20] = v12;
  v14 = *(v13 + 64);
  v2[21] = OUTLINED_FUNCTION_21_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C310, &unk_231163B00);
  v2[22] = v15;
  OUTLINED_FUNCTION_5(v15);
  v2[23] = v16;
  v18 = *(v17 + 64);
  v2[24] = OUTLINED_FUNCTION_21_0();
  v19 = sub_231158538();
  v2[25] = v19;
  OUTLINED_FUNCTION_5(v19);
  v2[26] = v20;
  v22 = *(v21 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCE0, &qword_231161D10);
  OUTLINED_FUNCTION_19(v23);
  v25 = *(v24 + 64);
  v2[29] = OUTLINED_FUNCTION_21_0();
  v26 = sub_231158418();
  v2[30] = v26;
  OUTLINED_FUNCTION_5(v26);
  v2[31] = v27;
  v29 = *(v28 + 64);
  v2[32] = OUTLINED_FUNCTION_21_0();

  return MEMORY[0x2822009F8](sub_23104DC50, 0, 0);
}

uint64_t sub_23104DC50()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v62 = *(v0 + 168);
  v63 = *(v0 + 200);
  v65 = *(v0 + 160);
  v66 = *(v0 + 232);
  v67 = *(v0 + 152);
  v7 = *(v0 + 88);
  v64 = *(*(v0 + 96) + 16);
  sub_231158508();
  swift_getKeyPath();
  v8 = swift_allocObject();
  v9 = *(v7 + 16);
  v61 = *(v7 + 8);
  *(v8 + 16) = v61;
  *(v8 + 24) = v9;
  *v4 = v8;
  (*(v5 + 104))(v4, *MEMORY[0x277D721C8], v6);
  sub_231051AE0();
  sub_231051E04(&qword_27DD3BCE8, &unk_27DD3C310, &unk_231163B00);

  OUTLINED_FUNCTION_16_0();
  sub_2311588F8();

  (*(v5 + 8))(v4, v6);
  v10 = *(v3 + 8);
  v10(v2, v63);
  sub_231157A28();
  sub_2311586D8();
  (*(v65 + 8))(v62, v67);
  v10(v1, v63);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
  {
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 104);
    sub_231051B38(v12, &qword_27DD3BCE0, &qword_231161D10);
    sub_231158B68();
    sub_231158B58();
    sub_231159588();
    MEMORY[0x231924980](0xD00000000000005ALL, 0x8000000231167D90);
    MEMORY[0x231924980](v61, v9);
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    (*(v14 + 104))(v13, *MEMORY[0x277D73298], v15);
    sub_231158B48();

    v16 = *(v14 + 8);
    v17 = OUTLINED_FUNCTION_17();
    v18(v17);
    goto LABEL_6;
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 88);
  (*(*(v0 + 248) + 32))(v19, v12, v11);
  v21 = sub_23104E578(v20, v19);
  *(v0 + 264) = v21;
  if (!v21)
  {
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v26 = *(v0 + 240);
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);
    v29 = *(v0 + 104);
    v30 = *(v0 + 88);
    sub_231158B68();
    sub_231158B58();
    sub_231159588();
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    MEMORY[0x231924980](0xD000000000000057, 0x8000000231167DF0);
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[2];
    *(v0 + 64) = *(v30 + 6);
    *(v0 + 32) = v32;
    *(v0 + 48) = v33;
    *(v0 + 16) = v31;
    sub_231159688();
    v34 = *(v0 + 80);
    *v27 = *(v0 + 72);
    v27[1] = v34;
    (*(v28 + 104))(v27, *MEMORY[0x277D73298], v29);
    sub_231158B48();

    (*(v28 + 8))(v27, v29);
    v35 = *(v25 + 8);
    v36 = OUTLINED_FUNCTION_17();
    v37(v36);
LABEL_6:
    v38 = *(v0 + 256);
    v39 = *(v0 + 224);
    v40 = *(v0 + 232);
    v41 = *(v0 + 216);
    v42 = *(v0 + 192);
    v43 = *(v0 + 168);
    v44 = *(v0 + 144);
    v45 = *(v0 + 120);

    v46 = *(v0 + 8);
    OUTLINED_FUNCTION_28();

    __asm { BRAA            X2, X16 }
  }

  v22 = v21;
  v23 = *(v0 + 144);
  sub_23104F9D0();
  v49 = *(v0 + 96);
  v50 = v22[4];
  v51 = v22[5];
  v52 = v22[2];
  v53 = v22[3];
  v54 = *(v49 + 24);
  v55 = *(v49 + 32);
  v56 = *(MEMORY[0x277D72268] + 4);
  v57 = swift_task_alloc();
  *(v0 + 272) = v57;
  *v57 = v0;
  v57[1] = sub_23104E234;
  v58 = *(v0 + 144);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_28();

  return MEMORY[0x2821DA7E0]();
}

uint64_t sub_23104E234(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  v4[35] = v1;

  v7 = v4[18];
  v8 = v4[17];
  v9 = v4[16];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_23104E49C;
  }

  else
  {
    v4[36] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_23104E3BC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_23104E3BC()
{
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v5 = v0[31];

  v6 = *(v5 + 8);
  v7 = OUTLINED_FUNCTION_17();
  v8(v7);
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  OUTLINED_FUNCTION_10_1();

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_23104E49C()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  v5 = v0[35];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  OUTLINED_FUNCTION_10_1();

  v9 = v0[1];

  return v9();
}

uint64_t sub_23104E578(unsigned __int8 *a1, uint64_t a2)
{
  v195 = a2;
  v184 = sub_231158418();
  v3 = OUTLINED_FUNCTION_4(v184);
  v183 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_23(&v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB8, &unk_231161CE0);
  v9 = OUTLINED_FUNCTION_19(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23(&v178 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCC0, &qword_231162760);
  v14 = OUTLINED_FUNCTION_19(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v178 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCC8, &qword_231161CF0);
  v20 = OUTLINED_FUNCTION_19(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23(&v178 - v24);
  v191 = sub_231158A08();
  v25 = OUTLINED_FUNCTION_4(v191);
  v190 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v178 - v33;
  v35 = sub_231158A68();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_23(&v178 - v43);
  v196 = sub_231158B38();
  v44 = OUTLINED_FUNCTION_4(v196);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9_1();
  v51 = v49 - v50;
  v53 = MEMORY[0x28223BE20](v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8_0();
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v178 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  inited = &v178 - v59;
  MEMORY[0x28223BE20](v58);
  v182 = a1;
  v63 = *a1;
  v194 = v35;
  v189 = v38;
  v181 = v18;
  switch(v63)
  {
    case 1:
    case 2:
      v113 = v182;
      if (v182[4])
      {
        v114 = v182[2];
        v115 = v182[3];
        v197 = v182[1];
        v198 = v114;

        OUTLINED_FUNCTION_20();

        v116 = OUTLINED_FUNCTION_16_0();
        MEMORY[0x231924980](v116);
      }

      else
      {
        v125 = v182[1];
        v126 = v182[2];
      }

      v127 = v185;
      v128 = v184;
      v129 = v183;
      v130 = v195;
      if (v113[6])
      {
        v131 = v113[5];
        v132 = v113[6];
      }

      else
      {
        v131 = sub_2311583F8();
        v132 = v133;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
      v134 = sub_231158DB8();
      (*(v129 + 16))(v127, v130, v128);
      v135 = type metadata accessor for CustomTool();
      v136 = *(v135 + 48);
      v137 = *(v135 + 52);
      v80 = swift_allocObject();
      v107 = OUTLINED_FUNCTION_17();
      v109 = v131;
      v110 = v132;
      v111 = v134;
      v112 = v127;
      goto LABEL_42;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
      v186 = v62;
      v187 = v31;
      v34 = 0x6F6974617265706FLL;
      OUTLINED_FUNCTION_24_0();
      v57 = sub_231158378();
      v64 = 0;
      v65 = *(v57 + 2);
      v66 = v46 + 16;
      v67 = v46 + 8;
      inited = v196;
      while (2)
      {
        if (v65 == v64)
        {
          goto LABEL_11;
        }

        if (v64 >= *(v57 + 2))
        {
          __break(1u);
          goto LABEL_58;
        }

        (*(v46 + 16))(v51, &v57[((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v64], inited);
        if (sub_231158B18() == 0x6F6974617265706FLL && v68 == 0xE90000000000006ELL)
        {
        }

        else
        {
          v70 = sub_231159818();

          if ((v70 & 1) == 0)
          {
            inited = v196;
            (*v67)(v51, v196);
            ++v64;
            continue;
          }

          inited = v196;
        }

        break;
      }

      v71 = *(v46 + 32);
      v71(v186, v51, inited);
      v72 = v193;
      v73 = OUTLINED_FUNCTION_4_0();
      v74 = (v71)(v73);
      v75 = v187;
      MEMORY[0x2319245F0](v74);
      sub_2311589F8();
      OUTLINED_FUNCTION_25();
      v76(v75, v191);
      v77 = OUTLINED_FUNCTION_14_1(v201);
      sub_2310CF274(v77, v78);

      v79 = v194;
      if (__swift_getEnumTagSinglePayload(v57, 1, v194) == 1)
      {
        (*v67)(v72, inited);
        goto LABEL_16;
      }

      (*(v189 + 32))(v192, v57, v79);
      v81 = v182;
      v82 = v182[4];
      if (v82)
      {
        v83 = v182[2];
        v84 = v182[3];
        v197 = v182[1];
        v198 = v83;

        OUTLINED_FUNCTION_20();

        MEMORY[0x231924980](v84, v82);

        v191 = v197;
        v190 = v198;
      }

      else
      {
        v85 = v182[2];
        v191 = v182[1];
        v190 = v85;
      }

      v86 = v179;
      v87 = v81[6];
      v88 = v192;
      if (v87)
      {
        v188 = v81[5];
        v187 = v87;
      }

      else
      {
        OUTLINED_FUNCTION_24_0();
        v188 = sub_2311583F8();
        v187 = v89;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD0, &qword_231161CF8);
      inited = swift_initStackObject();
      *(inited + 1) = xmmword_231161B80;
      *(inited + 4) = 0x6F6974617265706FLL;
      *(inited + 5) = 0xE90000000000006ELL;
      sub_231158948();
      v34 = swift_allocBox();
      v66 = v189;
      (*(v189 + 16))(v86, v88, v79);

      sub_231158E98();
      if (qword_27DD3B940 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_59;
    default:
      v178 = &v178 - v61;
      v117 = 0xEB00000000657079;
      v66 = 0x547972616D6D7573;
      OUTLINED_FUNCTION_24_0();
      v118 = sub_231158378();
      v67 = 0;
      v193 = *(v118 + 16);
      v192 = v46 + 16;
      v188 = v46 + 8;
      break;
  }

  while (1)
  {
    if (v193 == v67)
    {
LABEL_11:

      return 0;
    }

    if (v67 >= *(v118 + 16))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      OUTLINED_FUNCTION_0_1();
LABEL_25:
      v90 = qword_27DD3C0A8;
      v91 = sub_231158E28();
      v92 = sub_231158E28();

      v93 = [v90 localizedStringForKey:v91 value:v92 table:0];

      sub_231158E58();
      v94 = sub_231158B88();
      __swift_storeEnumTagSinglePayload(v180, 1, 1, v94);
      v95 = v181;
      sub_231158B98();
      v96 = sub_231158BF8();
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v96);
      sub_231158938();
      v97 = sub_231158978();
      v98 = MEMORY[0x277D72A68];
      *(inited + 9) = v97;
      *(inited + 10) = v98;
      *__swift_allocate_boxed_opaque_existential_1(inited + 6) = v34;
      v99 = *MEMORY[0x277D729E8];
      (*(*(v97 - 8) + 104))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
      v100 = sub_231158DB8();
      (*(v66 + 8))(v192, v194);
      (*v67)(v193, v196);
      OUTLINED_FUNCTION_27();
      v102 = *(v101 - 256);
      OUTLINED_FUNCTION_26_0();
      v103();
      v104 = type metadata accessor for CustomTool();
      v105 = *(v104 + 48);
      v106 = *(v104 + 52);
      v80 = swift_allocObject();
      v107 = v191;
      v108 = v190;
      v109 = v188;
      v110 = v187;
      v111 = v100;
      v112 = v102;
      goto LABEL_42;
    }

    (*(v46 + 16))(v57, v118 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v67, v196);
    if (sub_231158B18() == v66 && v119 == v117)
    {
      break;
    }

    v121 = v66;
    v122 = v117;
    v123 = sub_231159818();

    if (v123)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_15_0();
    v124(v57, v196);
    ++v67;
    v117 = v122;
    v66 = v121;
  }

  v121 = v66;
  v122 = v117;

LABEL_46:

  v139 = *(v46 + 32);
  v140 = v196;
  v139(inited, v57, v196);
  v141 = (v139)(v178, inited, v140);
  MEMORY[0x2319245F0](v141);
  sub_2311589F8();
  OUTLINED_FUNCTION_25();
  v142(v34, v191);
  v143 = OUTLINED_FUNCTION_14_1(v200);
  sub_2310CF274(v143, v144);

  v145 = v194;
  if (__swift_getEnumTagSinglePayload(v57, 1, v194) == 1)
  {
    OUTLINED_FUNCTION_15_0();
    v146 = OUTLINED_FUNCTION_4_0();
    v147(v146);
LABEL_16:
    sub_231051B38(v57, &qword_27DD3BCC8, &qword_231161CF0);
    return 0;
  }

  v148 = v186;
  (*(v189 + 32))(v186, v57, v145);
  v149 = v182;
  if (v182[4])
  {
    v150 = v182[2];
    v151 = v182[3];
    v197 = v182[1];
    v198 = v150;

    OUTLINED_FUNCTION_20();

    v152 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x231924980](v152);

    v192 = v197;
    v191 = v198;
  }

  else
  {
    v153 = v182[2];
    v192 = v182[1];
    v191 = v153;
  }

  v154 = v179;
  OUTLINED_FUNCTION_24_0();
  v155 = v149[6];
  if (v155)
  {
    v193 = v149[5];
    v190 = v155;
  }

  else
  {
    v193 = sub_2311583F8();
    v190 = v156;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD0, &qword_231161CF8);
  v157 = swift_initStackObject();
  *(v157 + 16) = xmmword_231161B80;
  *(v157 + 32) = v121;
  *(v157 + 40) = v122;
  sub_231158948();
  v158 = swift_allocBox();
  v159 = v189;
  v160 = v194;
  (*(v189 + 16))(v154, v148, v194);

  sub_231158E98();
  if (qword_27DD3B940 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v161 = qword_27DD3C0A8;
  v162 = sub_231158E28();
  v163 = sub_231158E28();

  v164 = [v161 localizedStringForKey:v162 value:v163 table:0];

  sub_231158E58();
  v165 = sub_231158B88();
  __swift_storeEnumTagSinglePayload(v180, 1, 1, v165);
  OUTLINED_FUNCTION_14_1(v199);
  sub_231158B98();
  v166 = sub_231158BF8();
  __swift_storeEnumTagSinglePayload(v163, 0, 1, v166);
  sub_231158938();
  v167 = sub_231158978();
  v168 = MEMORY[0x277D72A68];
  *(v157 + 72) = v167;
  *(v157 + 80) = v168;
  *__swift_allocate_boxed_opaque_existential_1((v157 + 48)) = v158;
  v169 = *MEMORY[0x277D729E8];
  (*(*(v167 - 8) + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCD8, &unk_231161D00);
  v170 = sub_231158DB8();
  (*(v159 + 8))(v186, v160);
  OUTLINED_FUNCTION_15_0();
  v171(v178, v196);
  OUTLINED_FUNCTION_27();
  v173 = *(v172 - 256);
  OUTLINED_FUNCTION_26_0();
  v174();
  v175 = type metadata accessor for CustomTool();
  v176 = *(v175 + 48);
  v177 = *(v175 + 52);
  v80 = swift_allocObject();
  v107 = v192;
  v108 = v191;
  v109 = v193;
  v110 = v190;
  v111 = v170;
  v112 = v173;
LABEL_42:
  sub_23104F95C(v107, v108, v109, v110, v111, v112);
  return v80;
}

uint64_t sub_23104F688()
{
  if (v0[4])
  {
    v1 = v0[3];
    v6 = v0[1];
    v7 = v0[2];

    MEMORY[0x231924980](45, 0xE100000000000000);

    v2 = OUTLINED_FUNCTION_16_0();
    MEMORY[0x231924980](v2);

    return v6;
  }

  else
  {
    v3 = v0[1];
    v4 = v0[2];
  }

  return v3;
}

uint64_t sub_23104F71C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_23104F744()
{
  sub_23104F71C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23104F79C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 72) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  *v6 = v3;
  v6[1] = sub_23104F84C;

  return sub_23104D9D8(v3 + 16);
}

uint64_t sub_23104F84C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 72) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

char *sub_23104F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 4) = a1;
  *(v6 + 5) = a2;
  *(v6 + 2) = a3;
  *(v6 + 3) = a4;
  *(v6 + 6) = a5;
  v8 = OBJC_IVAR____TtC14VoiceShortcuts10CustomTool_sourceToolDefinition;
  v9 = sub_231158418();
  OUTLINED_FUNCTION_13_0(v9);
  (*(v10 + 32))(&v6[v8], a6);
  return v6;
}

uint64_t sub_23104F9D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCB0, &qword_231164120);
  v2 = OUTLINED_FUNCTION_19(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  v7 = sub_231158418();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v12 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC14VoiceShortcuts10CustomTool_sourceToolDefinition);
  v13 = *(v0 + 48);
  v14 = sub_2311585A8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v14);

  return sub_231158448();
}

char *sub_23104FB1C()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 6);

  v4 = OBJC_IVAR____TtC14VoiceShortcuts10CustomTool_sourceToolDefinition;
  v5 = sub_231158418();
  OUTLINED_FUNCTION_13_0(v5);
  (*(v6 + 8))(&v0[v4]);
  return v0;
}

uint64_t sub_23104FB8C()
{
  sub_23104FB1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CustomTool()
{
  result = qword_27DD3BC78;
  if (!qword_27DD3BC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23104FC38()
{
  result = sub_231158418();
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

unint64_t sub_23104FCE8()
{
  result = qword_27DD3BC88;
  if (!qword_27DD3BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BC88);
  }

  return result;
}

void sub_23104FD3C(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v41 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v42 = OUTLINED_FUNCTION_12_0();
      v43 = OUTLINED_FUNCTION_2_2(v42, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v44 - 42;
      break;
    case 2:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v29 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v30 = OUTLINED_FUNCTION_12_0();
      v31 = OUTLINED_FUNCTION_2_2(v30, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v32 - 43;
      break;
    case 3:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v37 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v38 = OUTLINED_FUNCTION_12_0();
      v39 = OUTLINED_FUNCTION_2_2(v38, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v40 | 8;
      break;
    case 4:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v17 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v18 = OUTLINED_FUNCTION_12_0();
      v19 = OUTLINED_FUNCTION_2_2(v18, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v20 + 7;
      break;
    case 5:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_45;
    case 6:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v12 = 0xD000000000000045;
      OUTLINED_FUNCTION_4_0();
      v61 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v62 = OUTLINED_FUNCTION_12_0();
      v63 = OUTLINED_FUNCTION_2_2(v62, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      v24 = "com.apple.UniversalAccess.UASettingsShortcuts.UAToggleHoverTextIntent";
      goto LABEL_55;
    case 7:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_67;
    case 8:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v71 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v72 = OUTLINED_FUNCTION_12_0();
      v73 = OUTLINED_FUNCTION_2_2(v72, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v74 + 3;
      break;
    case 9:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_66;
    case 10:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v12 = 0xD000000000000045;
      OUTLINED_FUNCTION_4_0();
      v68 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v69 = OUTLINED_FUNCTION_12_0();
      v70 = OUTLINED_FUNCTION_2_2(v69, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      v24 = "com.apple.UniversalAccess.UASettingsShortcuts.UAToggleMonoAudioIntent";
      goto LABEL_55;
    case 11:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 == -1)
      {
        goto LABEL_19;
      }

      goto LABEL_66;
    case 12:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v12 = 0xD000000000000045;
      OUTLINED_FUNCTION_4_0();
      v21 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v22 = OUTLINED_FUNCTION_12_0();
      v23 = OUTLINED_FUNCTION_2_2(v22, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      v24 = "com.apple.UniversalAccess.UASettingsShortcuts.UAToggleMouseKeysIntent";
LABEL_55:
      v11 = (v24 - 32);
      break;
    case 13:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
LABEL_68:
        OUTLINED_FUNCTION_0_1();
      }

LABEL_45:
      OUTLINED_FUNCTION_4_0();
      v57 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v58 = OUTLINED_FUNCTION_12_0();
      v59 = OUTLINED_FUNCTION_2_2(v58, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v60 - 1;
      break;
    case 14:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
LABEL_66:
        OUTLINED_FUNCTION_0_1();
      }

LABEL_19:
      OUTLINED_FUNCTION_4_0();
      v25 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v26 = OUTLINED_FUNCTION_12_0();
      v27 = OUTLINED_FUNCTION_2_2(v26, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v28 + 1;
      break;
    case 15:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v33 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v34 = OUTLINED_FUNCTION_12_0();
      v35 = OUTLINED_FUNCTION_2_2(v34, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v36 + 4;
      break;
    case 16:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v13 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v14 = OUTLINED_FUNCTION_12_0();
      v15 = OUTLINED_FUNCTION_2_2(v14, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v16 + 9;
      break;
    case 17:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
LABEL_67:
        OUTLINED_FUNCTION_0_1();
      }

LABEL_35:
      OUTLINED_FUNCTION_4_0();
      v45 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v46 = OUTLINED_FUNCTION_12_0();
      v47 = OUTLINED_FUNCTION_2_2(v46, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v48 | 2;
      break;
    case 18:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v64 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v65 = OUTLINED_FUNCTION_12_0();
      v66 = OUTLINED_FUNCTION_2_2(v65, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v67 + 12;
      break;
    case 19:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v79 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v80 = OUTLINED_FUNCTION_12_0();
      v81 = OUTLINED_FUNCTION_2_2(v80, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v82 + 14;
      break;
    case 20:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v49 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v50 = OUTLINED_FUNCTION_12_0();
      v51 = OUTLINED_FUNCTION_2_2(v50, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v52 - 33;
      break;
    case 21:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v53 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v54 = OUTLINED_FUNCTION_12_0();
      v55 = OUTLINED_FUNCTION_2_2(v54, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v56 - 41;
      break;
    case 22:
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v75 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v76 = OUTLINED_FUNCTION_12_0();
      v77 = OUTLINED_FUNCTION_2_2(v76, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();

      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_1_1();
      v12 = v78 - 39;
      break;
    default:
      v4 = 0x8000000231167D50;
      sub_231158E98();
      OUTLINED_FUNCTION_6_1();
      if (qword_27DD3B940 != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      OUTLINED_FUNCTION_4_0();
      v7 = sub_231158E28();
      OUTLINED_FUNCTION_4_0();
      sub_231158E28();
      v8 = OUTLINED_FUNCTION_12_0();
      v9 = OUTLINED_FUNCTION_2_2(v8, sel_localizedStringForKey_value_table_);

      sub_231158E58();
      OUTLINED_FUNCTION_11_2();
      v10 = 0xD000000000000011;
      v11 = "framework/ContentKit";
      v12 = 0xD00000000000004ALL;
      break;
  }

  *a2 = a1;
  *(a2 + 8) = v12;
  *(a2 + 16) = v11 | 0x8000000000000000;
  *(a2 + 24) = v10;
  *(a2 + 32) = v4;
  *(a2 + 40) = v2;
  *(a2 + 48) = v3;
}

unint64_t sub_231050C00(char a1)
{
  result = 0xD00000000000004ALL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000004DLL;
      break;
    case 4:
      result = 0xD00000000000004CLL;
      break;
    case 5:
    case 13:
      result = 0xD000000000000044;
      break;
    case 6:
    case 10:
    case 12:
      result = 0xD000000000000045;
      break;
    case 7:
    case 17:
      result = 0xD000000000000047;
      break;
    case 8:
      result = 0xD000000000000048;
      break;
    case 9:
    case 11:
    case 14:
      result = 0xD000000000000046;
      break;
    case 15:
      result = 0xD000000000000049;
      break;
    case 16:
      result = 0xD00000000000004ELL;
      break;
    case 18:
      result = 0xD000000000000051;
      break;
    case 19:
      result = 0xD000000000000053;
      break;
    case 20:
      result = 0xD000000000000024;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 22:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231050DD0()
{
  v0 = sub_231159848();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_231050E5C()
{
  v0 = sub_231158E58();
  v2 = v1;
  if (v0 == sub_231158E58() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_0();
    v5 = sub_231159818();
  }

  return v5 & 1;
}

uint64_t sub_231050EFC()
{
  OUTLINED_FUNCTION_22();
  v3 = 0x6953657361726870;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v4 == 1)
    {
      v6 = 0x80000002311672E0;
    }

    else
    {
      v6 = 0x8000000231167300;
    }
  }

  else
  {
    v5 = 0x6953657361726870;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v2 == 1)
    {
      v0 = 0x80000002311672E0;
    }

    else
    {
      v0 = 0x8000000231167300;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231159818();
  }

  return v8 & 1;
}

uint64_t sub_231050FE4(unsigned __int8 a1, char a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F69737365536F6ELL;
  v4 = a1;
  v5 = 0x6F69737365536F6ELL;
  v6 = 0xE90000000000006ELL;
  switch(v4)
  {
    case 1:
      v6 = 0x8000000231167420;
      v5 = 0xD00000000000001ALL;
      break;
    case 2:
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x666C65536F6ELL;
      break;
    default:
      v5 = 0xD000000000000010;
      v6 = 0x8000000231167400;
      break;
  }

  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_18();
      v3 = v8 | v7;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x666C65536F6ELL;
      break;
    default:
      v3 = 0xD000000000000010;
      v2 = 0x8000000231167400;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_231159818();
  }

  return v10 & 1;
}

uint64_t sub_231051130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_16_0();
    v10 = sub_231159818();
  }

  return v10 & 1;
}

uint64_t sub_231051228(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_22();
  }

  sub_231158EA8();
}

uint64_t sub_2310512BC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_18();
      break;
    default:
      break;
  }

  sub_231158EA8();
}

uint64_t sub_231051374(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_231158EA8();
}

uint64_t sub_2310513D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231050DD0();
  *a2 = result;
  return result;
}

unint64_t sub_231051404@<X0>(unint64_t *a1@<X8>)
{
  result = sub_231050C00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231051440()
{
  *&v9 = 0;
  *(&v9 + 1) = 0xE000000000000000;
  sub_231159588();
  v7 = v9;
  MEMORY[0x231924980](0xD000000000000018, 0x8000000231167AB0);
  v1 = sub_231050C00(*v0);
  MEMORY[0x231924980](v1);

  MEMORY[0x231924980](0x54656372756F7320, 0xEF203A64496C6F6FLL);
  MEMORY[0x231924980](*(v0 + 8), *(v0 + 16));
  MEMORY[0x231924980](0x6966696C61757120, 0xEB00000000207265);
  v9 = *(v0 + 24);
  v8 = *(v0 + 24);
  sub_2310519C0(&v9, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCA8, &unk_231161CD0);
  v2 = sub_231158E68();
  MEMORY[0x231924980](v2);

  MEMORY[0x231924980](0x206D6F7473756320, 0xEE00203A656D616ELL);
  v8 = *(v0 + 40);
  v6 = *(v0 + 40);
  sub_2310519C0(&v8, &v5);
  v3 = sub_231158E68();
  MEMORY[0x231924980](v3);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return v7;
}

BOOL sub_2310515EC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_231050C00(*a1);
  v7 = v6;
  if (v5 == sub_231050C00(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_231159818();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v11 && (sub_231159818() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a2 + 32);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = *(a1 + 24) == *(a2 + 24) && v12 == v13;
    if (!v14 && (sub_231159818() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *(a1 + 40) == *(a2 + 40) && v15 == v16;
    return v17 || (sub_231159818() & 1) != 0;
  }

  return !v16;
}

uint64_t sub_231051728()
{
  sub_231050C00(*v0);
  sub_231158EA8();

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_231158EA8();
  if (*(v0 + 32))
  {
    v3 = *(v0 + 24);
    sub_231159938();
    sub_231158EA8();
  }

  else
  {
    sub_231159938();
  }

  if (!*(v0 + 48))
  {
    return sub_231159938();
  }

  v4 = *(v0 + 40);
  sub_231159938();

  return sub_231158EA8();
}

uint64_t sub_231051800()
{
  sub_231159918();
  sub_231051728();
  return sub_231159948();
}

unint64_t sub_231051844(uint64_t a1)
{
  *(a1 + 8) = sub_231051874();
  result = sub_2310518C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_231051874()
{
  result = qword_27DD3BC90;
  if (!qword_27DD3BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BC90);
  }

  return result;
}

unint64_t sub_2310518C8()
{
  result = qword_27DD3BC98;
  if (!qword_27DD3BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BC98);
  }

  return result;
}

unint64_t sub_231051920()
{
  result = qword_27DD3BCA0;
  if (!qword_27DD3BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BCA0);
  }

  return result;
}

uint64_t sub_231051980()
{
  sub_231159918();
  sub_231051728();
  return sub_231159948();
}

uint64_t sub_2310519C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BCA8, &unk_231161CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_231051AE0()
{
  result = qword_27DD3C320;
  if (!qword_27DD3C320)
  {
    sub_231158538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3C320);
  }

  return result;
}

uint64_t sub_231051B38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_0(v4);
  (*(v5 + 8))(a1);
  return a1;
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

uint64_t sub_231051BAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_231051BEC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CustomToolPlan.ToolType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustomToolPlan.ToolType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231051E04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_231051E50()
{
  result = qword_27DD3BD00;
  if (!qword_27DD3BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BD00);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

id OUTLINED_FUNCTION_2_2(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];
}

void OUTLINED_FUNCTION_11_2()
{
}

void OUTLINED_FUNCTION_20()
{

  JUMPOUT(0x231924980);
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return swift_task_alloc();
}

uint64_t sub_2310520A4(unsigned __int8 a1)
{
  sub_231159918();
  MEMORY[0x2319253F0](a1);
  return sub_231159948();
}

uint64_t sub_231052108()
{
  v1 = *v0;
  sub_231159918();
  MEMORY[0x2319253F0](v1);
  return sub_231159948();
}

id sub_231052158()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_2310521B8(v0);
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;
    v4 = v2;
    sub_2310549FC(v3);
  }

  sub_231054AB8(v1);
  return v2;
}

id sub_2310521B8(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v12[0] = 0;
  v2 = [v1 databaseWithError_];
  v3 = v12[0];
  if (v2)
  {
    v4 = v2;
    v5 = objc_allocWithZone(MEMORY[0x277D7C988]);
    v6 = v3;
    v7 = [v5 initWithDatabase_];
  }

  else
  {
    v8 = v12[0];
    v9 = sub_231157938();

    swift_willThrow();
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2310522A0()
{
  OUTLINED_FUNCTION_4_1();
  v13 = *MEMORY[0x277D85DE8];
  v1[95] = v0;
  v1[94] = v2;
  v1[93] = v3;
  v1[92] = v4;
  v5 = sub_231157E38();
  v1[96] = v5;
  v6 = *(v5 - 8);
  v1[97] = v6;
  v7 = *(v6 + 64) + 15;
  v1[98] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231052390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v90 = *MEMORY[0x277D85DE8];
  v13 = v12[93];
  v14 = [objc_allocWithZone(MEMORY[0x277D7C290]) init];
  v12[99] = v14;
  [v14 setShouldPrompt_];
  [v14 setEnabled_];
  v15 = sub_2310C6F34();
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v18 = v15;
    v19 = v16;
    v17 = sub_231157998();
    sub_231054A4C(v18, v19);
  }

  v20 = v12[98];
  v21 = v12[97];
  v22 = v12[96];
  v23 = v12[94];
  v24 = v12[93];
  [v14 setTriggerData_];

  [v14 setShouldRecur_];
  (*(v21 + 16))(v20, v23, v22);
  v25 = (*(v21 + 88))(v20, v22);
  if (v25 == *MEMORY[0x277D79BA0])
  {
    v26 = v12[98];
    (*(v12[97] + 96))(v26, v12[96]);
    v27 = *v26;
    v12[100] = *v26;
    v29 = *(v26 + 8);
    v28 = *(v26 + 16);
    v30 = [v27 identifier];
    sub_231158E58();

    v31 = objc_allocWithZone(MEMORY[0x277D23848]);
    v32 = sub_231054904();
    v12[101] = v32;
    v33 = [objc_allocWithZone(MEMORY[0x277D23C38]) initWithOptions_];
    v12[102] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_231161E80;
    *(v34 + 32) = v32;
    sub_231054A0C(0, &qword_27DD3BD28, 0x277D23848);
    v35 = v32;
    v36 = sub_231158F38();

    v12[90] = 0;
    v37 = [v33 actionsWithFullyQualifiedIdentifiers:v36 error:v12 + 90];

    v38 = v12[90];
    if (v37)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD30, &qword_231161EE8);
      v39 = sub_231158D98();
      v40 = v38;

      v41 = [v35 bundleIdentifier];
      v42 = sub_231158E58();
      v44 = v43;

      v45 = sub_23104AD08(v42, v44, v39);

      if (v45)
      {
        v46 = [v35 actionIdentifier];
        v47 = sub_231158E58();
        v49 = v48;

        v50 = sub_23104AD58(v47, v49, v45);
        v12[103] = v50;

        if (v50)
        {
          sub_231054A0C(0, &qword_27DD3BD38, 0x277D7A000);
          v51 = sub_231053C8C(v35, v27, v50);
          v12[104] = v51;
          v52 = [objc_opt_self() defaultDatabase];
          v12[105] = v52;
          v12[18] = v12;
          v12[23] = v12 + 91;
          v12[19] = sub_231052BC0;
          v53 = swift_continuation_init();
          v12[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD40, &qword_231161EF0);
          v12[50] = MEMORY[0x277D85DD0];
          v12[51] = 1107296256;
          v12[52] = sub_231053CF4;
          v12[53] = &block_descriptor_14;
          v12[54] = v53;
          [v51 createWorkflowWithEnvironment:0 database:v52 completionHandler:v12 + 50];
          v54 = *MEMORY[0x277D85DE8];
LABEL_14:
          OUTLINED_FUNCTION_3_0();

          return MEMORY[0x282200938](v69);
        }
      }

      sub_2310549A8();
      OUTLINED_FUNCTION_13_1();
      *v74 = 2;
      swift_willThrow();

LABEL_21:
LABEL_25:

      v77 = v12[98];

      OUTLINED_FUNCTION_0_2();
      v78 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_3_0();

      return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, v90, a11, a12);
    }

    v75 = v38;
    sub_231157938();

    swift_willThrow();
    goto LABEL_24;
  }

  if (v25 == *MEMORY[0x277D79BA8])
  {
    v55 = v12[98];
    v56 = v12[95];
    (*(v12[97] + 96))(v55, v12[96]);
    v58 = *v55;
    v57 = v55[1];
    v59 = *(v56 + 16);
    v12[88] = 0;
    v60 = [v59 databaseWithError_];
    v12[111] = v60;
    v61 = v12[88];
    if (v60)
    {
      v27 = v60;
      v62 = v61;
      v63 = sub_231158E28();

      v35 = [v27 referenceForWorkflowID_];
      v12[112] = v35;

      if (!v35)
      {
        sub_2310549A8();
        OUTLINED_FUNCTION_13_1();
        *v87 = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      v64 = v12[95];
      v65 = sub_231052158();
      v12[113] = v65;
      if (v65)
      {
        v66 = v65;
        v12[2] = v12;
        v12[7] = v12 + 89;
        v12[3] = sub_2310532C0;
        v67 = swift_continuation_init();
        v12[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD20, &qword_231161ED8);
        v12[34] = MEMORY[0x277D85DD0];
        v12[35] = 1107296256;
        v12[36] = sub_231053CF4;
        v12[37] = &block_descriptor_7;
        v12[38] = v67;
        [v66 saveNewConfiguredTrigger:v14 notifyDaemon:1 completion:v12 + 34];
        v68 = *MEMORY[0x277D85DE8];
        goto LABEL_14;
      }

      sub_2310549A8();
      OUTLINED_FUNCTION_13_1();
      *v88 = 0;
      swift_willThrow();

      goto LABEL_21;
    }

    v76 = v61;

    sub_231157938();

    swift_willThrow();
LABEL_24:
    v27 = v14;
    goto LABEL_25;
  }

  v71 = v12[96];
  v72 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();

  return sub_231159808();
}

uint64_t sub_231052BC0()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 848) = *(v4 + 176);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231052CEC()
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = v0[105];
  v2 = v0[99];
  v3 = v0[95];
  v4 = v0[91];
  v0[107] = v4;

  v5 = [v4 record];
  [v5 setHiddenFromLibraryAndSync_];

  [v2 setEditableShortcut_];
  v6 = sub_231052158();
  v0[108] = v6;
  if (!v6)
  {
    v14 = v0[104];
    v15 = v0[103];
    v16 = v0[102];
    v17 = v0[101];
    v18 = v0[100];
    v19 = v0[99];
    sub_2310549A8();
    OUTLINED_FUNCTION_13_1();
    *v20 = 0;
    swift_willThrow();

    v21 = v0[98];

    OUTLINED_FUNCTION_1();
    v22 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  v7 = v6;
  v8 = v0[99];
  v9 = [v4 record];
  v0[109] = v9;
  v0[26] = v0;
  v0[31] = v0 + 86;
  v0[27] = sub_231052F78;
  v10 = swift_continuation_init();
  v0[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD48, &qword_231161EF8);
  v0[58] = MEMORY[0x277D85DD0];
  v0[59] = 1107296256;
  v0[60] = sub_231053D20;
  v0[61] = &block_descriptor_17;
  v0[62] = v10;
  [v7 saveNewConfiguredTrigger:v8 workflow:v9 notifyDaemon:1 completion:v0 + 58];
  v11 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();

  return MEMORY[0x282200938](v12);
}

uint64_t sub_231052F78()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 880) = *(v4 + 240);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310530A4()
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 872);
  v2 = *(v0 + 688);
  v3 = *(v0 + 696);

  v4 = v2;
  v5 = [v4 trigger];
  sub_2310C7484((v0 + 608));
  v6 = *(v0 + 856);
  v15 = *(v0 + 832);
  v16 = *(v0 + 824);
  v7 = *(v0 + 816);
  v17 = *(v0 + 800);
  v18 = *(v0 + 808);
  v8 = *(v0 + 792);
  v9 = *(v0 + 736);

  v10 = [v4 identifier];
  sub_231158E58();

  sub_2310548A0(v0 + 608, v0 + 648);
  OUTLINED_FUNCTION_7_1();

  __swift_destroy_boxed_opaque_existential_0((v0 + 608));
  v11 = *(v0 + 784);

  OUTLINED_FUNCTION_1();
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t sub_2310532C0()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 912) = *(v4 + 48);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310533EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v43 = *MEMORY[0x277D85DE8];
  v19 = *(v13 + 904);
  v20 = *(v13 + 760);
  v21 = *(v13 + 712);
  *(v13 + 920) = v21;

  v22 = v20[3];
  *(v13 + 928) = v22;
  if (v22)
  {
    v23 = v22;
    v24 = [v21 identifier];
    if (!v24)
    {
      sub_231158E58();
      v24 = sub_231158E28();
    }

    *(v13 + 936) = v24;
    v25 = *(v13 + 896);
    *(v13 + 80) = v13;
    *(v13 + 120) = v13 + 952;
    *(v13 + 88) = sub_2310536A8;
    v26 = swift_continuation_init();
    *(v13 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD10, &qword_231161ED0);
    *(v13 + 336) = MEMORY[0x277D85DD0];
    *(v13 + 344) = 1107296256;
    *(v13 + 352) = sub_231053E78;
    *(v13 + 360) = &block_descriptor_10;
    *(v13 + 368) = v26;
    [v23 associateWorkflowToTriggerID:v24 deletingExistingReference:0 notifyDaemon:0 workflowReference:v25 completion:v13 + 336];
    v27 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_3_0();

    return MEMORY[0x282200938](v28);
  }

  else
  {
    v30 = [*(v13 + 920) trigger];
    OUTLINED_FUNCTION_11_3();
    if (v12)
    {
      OUTLINED_FUNCTION_12_1();
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      v33 = [v20 identifier];
      sub_231158E58();

      sub_2310548A0(v13 + 528, v13 + 568);
      OUTLINED_FUNCTION_7_1();

      __swift_destroy_boxed_opaque_existential_0((v13 + 528));
    }

    v31 = *(v13 + 784);

    OUTLINED_FUNCTION_0_2();
    v32 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_3_0();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, a11, a12);
  }
}

uint64_t sub_2310536A8()
{
  OUTLINED_FUNCTION_4_1();
  v10 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 944) = *(v4 + 112);
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310537D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v34 = *MEMORY[0x277D85DE8];
  v20 = *(v14 + 936);
  sub_2310549FC(*(v14 + 928));

  v21 = [*(v14 + 920) trigger];
  OUTLINED_FUNCTION_11_3();
  if (v13)
  {
    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    v24 = [v20 identifier];
    sub_231158E58();

    sub_2310548A0(v14 + 528, v14 + 568);
    OUTLINED_FUNCTION_7_1();

    __swift_destroy_boxed_opaque_existential_0((v14 + 528));
  }

  v22 = *(v14 + 784);

  OUTLINED_FUNCTION_0_2();
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, a11, a12);
}

uint64_t sub_231053928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_6_2();
  v33 = *MEMORY[0x277D85DE8];
  v13 = v12[106];
  v14 = v12[105];
  v15 = v12[104];
  v16 = v12[103];
  v17 = v12[102];
  v18 = v12[101];
  v19 = v12[100];
  v20 = v12[99];
  swift_willThrow();

  v21 = v12[106];
  v22 = v12[98];

  OUTLINED_FUNCTION_0_2();
  v23 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, a11, a12);
}

void sub_2310539F4()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[110];
  v15 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[99];
  swift_willThrow();

  v10 = v0[110];
  v11 = v0[98];

  OUTLINED_FUNCTION_1();
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_231053AEC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[99];
  swift_willThrow();

  v6 = v0[114];
  v7 = v0[98];

  OUTLINED_FUNCTION_1();
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_231053BB0()
{
  OUTLINED_FUNCTION_6_2();
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[99];
  swift_willThrow();

  sub_2310549FC(v3);
  v8 = v0[118];
  v9 = v0[98];

  OUTLINED_FUNCTION_1();
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

id sub_231053C8C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:a1 action:a2 metadata:a3];

  return v6;
}

uint64_t *sub_231053D20(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_231060450(v8, v9);
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = a2;
  v11 = a3;

  return sub_231058230(v8, v10, v11);
}

uint64_t *sub_231053DC8(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(uint64_t, id))
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = v8;
    v11 = a4;

    return v11(v10, v9);
  }

  if (a2)
  {
    v9 = a2;
    v10 = v8;
    v11 = a5;

    return v11(v10, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_231053E78(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_231060450(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_231058250(v9, a2);
  }
}

uint64_t sub_231053EFC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  OUTLINED_FUNCTION_9();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231053F2C()
{
  v1 = v0[20];
  v2 = sub_231052158();
  v0[21] = v2;
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[19];
    v5 = sub_231158E28();
    v0[22] = v5;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_2310540A8;
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BD10, &qword_231161ED0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_231053E78;
    v0[13] = &block_descriptor_1;
    v0[14] = v6;
    [v2 deleteTriggerWithIdentifier:v5 notifyDaemon:1 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    OUTLINED_FUNCTION_1();

    return v7();
  }
}

uint64_t sub_2310540A8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 184) = *(v4 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2310541A8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_231054208()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  OUTLINED_FUNCTION_1();
  v5 = v0[23];

  return v4();
}

uint64_t sub_23105427C()
{
  v3 = v1;
  v37[5] = *MEMORY[0x277D85DE8];
  v31 = sub_231157DA8();
  v33 = *(v31 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v37[0] = 0;
  v7 = [v6 databaseWithError_];
  if (!v7)
  {
    v24 = v37[0];
    sub_231157938();

    swift_willThrow();
    goto LABEL_18;
  }

  v8 = v7;
  v9 = v37[0];
  v10 = [v8 allConfiguredTriggers];
  v11 = [v10 descriptors];

  sub_231054A0C(0, &qword_27DD3BD08, 0x277D7C288);
  v12 = sub_231158F48();

  v13 = sub_23106FF58(v12);
  if (!v13)
  {

    v2 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v14 = v13;
  v35 = MEMORY[0x277D84F90];
  sub_23104CC6C(0, v13 & ~(v13 >> 63), 0);
  if (v14 < 0)
  {
LABEL_21:
    __break(1u);
  }

  v27 = v8;
  v15 = 0;
  v2 = v35;
  v28 = v12 & 0xFFFFFFFFFFFFFF8;
  v29 = v33 + 32;
  v30 = v12 & 0xC000000000000001;
  do
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v30)
    {
      v17 = MEMORY[0x231925080](v15, v12);
    }

    else
    {
      if (v15 >= *(v28 + 16))
      {
        goto LABEL_20;
      }

      v17 = *(v12 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = [v17 trigger];
    sub_2310C7484(v37);
    if (v3)
    {

      goto LABEL_18;
    }

    v34 = 0;

    v20 = [v18 identifier];
    sub_231158E58();

    sub_2310548A0(v37, v36);
    v21 = v32;
    sub_231157D98();

    __swift_destroy_boxed_opaque_existential_0(v37);
    v35 = v2;
    v23 = *(v2 + 16);
    v22 = *(v2 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_23104CC6C(v22 > 1, v23 + 1, 1);
      v21 = v32;
      v2 = v35;
    }

    *(v2 + 16) = v23 + 1;
    (*(v33 + 32))(v2 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23, v21, v31);
    ++v15;
    v3 = v34;
  }

  while (v16 != v14);

LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_23105463C(uint64_t a1@<X8>)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 16);
  v17[0] = 0;
  v5 = [v4 databaseWithError_];
  if (v5)
  {
    v6 = v5;
    v7 = v17[0];
    v8 = sub_231158E28();
    v9 = [v6 configuredTriggerForTriggerID_];

    if (v9)
    {
      v10 = [v9 trigger];
      sub_2310C7484(v17);

      if (v2)
      {
      }

      else
      {
        v13 = [v9 identifier];
        sub_231158E58();

        sub_2310548A0(v17, v16);
        sub_231157D98();

        __swift_destroy_boxed_opaque_existential_0(v17);
        v14 = sub_231157DA8();
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
      }
    }

    else
    {
      v12 = sub_231157DA8();
      __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
    }
  }

  else
  {
    v11 = v17[0];
    sub_231157938();

    swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_231054848()
{
  sub_231054820();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2310548A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_231054904()
{
  v1 = sub_231158E28();

  v2 = sub_231158E28();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

unint64_t sub_2310549A8()
{
  result = qword_27DD3BD18;
  if (!qword_27DD3BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BD18);
  }

  return result;
}

void sub_2310549FC(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_231054A0C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_231054A4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_231054A60(a1, a2);
  }

  return a1;
}

uint64_t sub_231054A60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_231054AB8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TriggerService.TriggerServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TriggerService.TriggerServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231054C30()
{
  result = qword_27DD3BD50;
  if (!qword_27DD3BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3BD50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1()
{

  return sub_231157D98();
}

void OUTLINED_FUNCTION_8_1()
{
  v3 = v1[115];
  v4 = v1[112];
  v5 = v1[111];
  v6 = v1[99];
  v7 = v1[92];
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return sub_2310C7484((v0 + 528));
}

id sub_231054D64()
{
  result = [objc_allocWithZone(type metadata accessor for SpotlightDomainsCleaner()) init];
  qword_27DD42C80 = result;
  return result;
}

id sub_231054D94()
{
  if (qword_27DD3B938 != -1)
  {
    swift_once();
  }

  v1 = qword_27DD42C80;

  return v1;
}

id sub_231054E18()
{
  *&v0[OBJC_IVAR___WFSpotlightDomainsCleaner_observers] = MEMORY[0x277D84F90];
  sub_231158CB8();
  sub_231158C98();
  v1 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  *&v0[OBJC_IVAR___WFSpotlightDomainsCleaner_index] = sub_2310C0D80();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SpotlightDomainsCleaner();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_231054EEC()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2 = OBJC_IVAR___WFSpotlightDomainsCleaner_observers;
  swift_beginAccess();
  sub_231086000();
  v3 = *(*(v0 + v2) + 16);
  sub_2310860D4(v3);
  v4 = *(v0 + v2);
  *(v4 + 16) = v3 + 1;
  sub_2310555F8(v6, v4 + 8 * v3 + 32);
  *(v1 + v2) = v4;
  return swift_endAccess();
}

uint64_t sub_231054FB0(uint64_t a1)
{
  v3 = OBJC_IVAR___WFSpotlightDomainsCleaner_observers;
  swift_beginAccess();
  swift_unknownObjectRetain();
  result = sub_231055184((v1 + v3), a1);
  v5 = *(*(v1 + v3) + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_2310553B0(result, v5);
    return swift_endAccess();
  }

  return result;
}

void sub_231055050(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id SpotlightDomainsCleaner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightDomainsCleaner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_231055184(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_231055318(v6, a2);
  if (v2)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
LABEL_5:
    swift_unknownObjectRelease();
    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 8 * result + 40; ; i += 8)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        goto LABEL_5;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

      sub_23105549C(v6 + i, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        swift_unknownObjectRelease();
        result = sub_23105550C(v17);
        if (v13 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_23105550C(v17);
      }

      if (v9 != v3)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v14 = *(v6 + 16);
        if (v3 >= v14)
        {
          goto LABEL_27;
        }

        result = sub_23105549C(v6 + 32 + 8 * v3, v17);
        if (v9 >= v14)
        {
          goto LABEL_28;
        }

        sub_23105549C(v6 + i, &v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_231055574(v6);
          v6 = v15;
        }

        result = sub_231055588(&v16, v6 + 8 * v3 + 32);
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        result = sub_231055588(v17, v6 + i);
        *a1 = v6;
      }

      ++v3;
LABEL_24:
      ++v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231055318(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = a1 + 32; ; i += 8)
  {
    if (v4 == v3)
    {
      v8 = 0;
      goto LABEL_8;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    ++v3;
  }

  v8 = v3;
LABEL_8:
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_2310553B0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2310B2C5C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 8 * v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_23104C794(v9 + 8 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23105549C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23105550C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231055588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310555F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231055678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_231055668();
  *a2 = 0;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_2310556B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    result = sub_231159868();
    __break(1u);
  }

  else
  {
    v6 = &v5[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_entityTypeIdentifier];
    *v6 = 0xD000000000000019;
    *(v6 + 1) = 0x80000002311682E0;
    v7 = &v5[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_typeDisplayName];
    *v7 = 0x7265646C6F46;
    *(v7 + 1) = 0xE600000000000000;
    v8 = sub_231158E28();

    v9 = sub_231158E28();
    v10 = sub_231158E28();

    v15.receiver = v5;
    v15.super_class = type metadata accessor for WFAppEntityContextualAction();
    v14 = 0;
    v13 = 0;
    v11 = objc_msgSendSuper2(&v15, sel_initWithIdentifier_wfActionIdentifier_type_correspondingSystemActionType_associatedAppBundleIdentifier_resultFileOperation_alternate_filteringBehavior_parameters_displayString_title_subtitle_icon_accessoryIcon_actionShowsUserInterface_isReversible_, v8, 0, 1, 0, 0, 1, v13, 0, 0, v9, v10, 0, 0, 0, v14);

    return v11;
  }

  return result;
}

id sub_23105591C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v3 = [v0 identifier];
  v4 = sub_231158E58();
  v6 = v5;

  v7 = *&v1[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_entityTypeIdentifier];
  v8 = *&v1[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_entityTypeIdentifier + 8];
  v9 = objc_allocWithZone(MEMORY[0x277CC34B0]);

  v10 = v2;
  v18 = sub_231055DD0(v4, v6, v7, v8, v10);
  v11 = [v1 identifier];
  sub_231158E58();

  v12 = [v1 title];
  sub_231158E58();

  v13 = *&v1[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_typeDisplayName];
  v14 = *&v1[OBJC_IVAR____TtC14VoiceShortcuts27WFAppEntityContextualAction_typeDisplayName + 8];
  sub_231158DB8();
  sub_2311593E8();

  sub_231055E7C(v10, &selRef_contentType);
  if (v15)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_3(&selRef_setContentType_, "e:isReversible:)");
  }

  sub_231055E7C(v10, &selRef_userActivityType);
  if (v16)
  {
  }

  else
  {
    OUTLINED_FUNCTION_0_3(&selRef_setUserActivityType_, "e:isReversible:)");
  }

  return v18;
}

uint64_t sub_231055B54(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  result = sub_231159868();
  __break(1u);
  return result;
}

id sub_231055CE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFAppEntityContextualAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_231055D8C()
{
  result = qword_27DD3BD78;
  if (!qword_27DD3BD78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD3BD78);
  }

  return result;
}

id sub_231055DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_231158E28();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_231158E28();

LABEL_6:
  v10 = [v5 initWithUniqueIdentifier:v8 domainIdentifier:v9 attributeSet:a5];

  return v10;
}

uint64_t sub_231055E7C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231158E58();

  return v4;
}

void sub_231055EDC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_231158E28();

  [a3 *a4];
}

unint64_t sub_231055F5C()
{
  result = qword_27DD3BD80[0];
  if (!qword_27DD3BD80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD3BD80);
  }

  return result;
}

void OUTLINED_FUNCTION_0_3(SEL *a1@<X3>, uint64_t a2@<X8>)
{

  sub_231055EDC(0xD00000000000001BLL, a2 | 0x8000000000000000, v2, a1);
}

uint64_t EventNode.filter(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventFilter();

  swift_unknownObjectRetain();
  return sub_23105604C(a1, a2, v2);
}

uint64_t sub_23105604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_4();
  v6 = swift_allocObject();
  sub_2310562BC(a1, a2, a3);
  return v6;
}

uint64_t sub_23105609C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = *a1;
  result = sub_2310561C4();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 32) = v8;
    *(result + 40) = v9;
    v10 = sub_231056638;
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}