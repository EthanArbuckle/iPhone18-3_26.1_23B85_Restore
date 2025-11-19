void sub_21D54FFDC(uint64_t a1)
{
  v96 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v86 - v2;
  v4 = sub_21DBF76AC();
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x28223BE20](v4);
  v90 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  MEMORY[0x28223BE20](v91);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v92 = &v86 - v9;
  MEMORY[0x28223BE20](v10);
  v93 = &v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  MEMORY[0x28223BE20](v12);
  v14 = (&v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  v18 = sub_21DBF9D8C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v88 = v7;
    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (!v24)
    {

      return;
    }

    v25 = v24;
    v26 = *(v23 + *(*v23 + 112));
    *v21 = v26;
    (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
    v27 = v26;
    LOBYTE(v26) = sub_21DBF9DAC();
    v29 = *(v19 + 8);
    v28 = v19 + 8;
    v29(v21, v18);
    if (v26)
    {
      v89 = v25;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B8);
      v31 = v23;
      v32 = *(v30 + 36);
      v33 = v96;
      sub_21D0D3954(v96 + v32, v17, &qword_27CE5C298);
      sub_21D1361E0(v17);
      sub_21D0D3954(v33 + v32, v14, &qword_27CE5C298);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = *v14;
        sub_21D8C8E30(*v14);

        return;
      }

      v87 = v31;
      v23 = v93;
      sub_21D0D523C(v14, v93, &qword_27CE5C2A0);
      sub_21D0D3954(v33 + *(v30 + 40), v3, &qword_27CE5C1C8);
      v36 = v94;
      v35 = v95;
      if ((*(v94 + 48))(v3, 1, v95) == 1)
      {
        sub_21D0CF7E0(v3, &qword_27CE5C1C8);
        v37 = objc_opt_self();
        v38 = sub_21DBFA12C();
        v39 = [v37 internalErrorWithDebugDescription_];

        sub_21D8C8E30(v39);

        v40 = v23;
LABEL_43:
        sub_21D0CF7E0(v40, &qword_27CE5C2A0);
        return;
      }

      v25 = v90;
      (*(v36 + 32))(v90, v3, v35);
      v41 = v91;
      v42 = *(v23 + *(v91 + 48));
      v43 = sub_21DBF773C();
      v44 = *(v43 - 8);
      v45 = v92;
      (*(v44 + 16))(v92, v23, v43);
      *(v45 + *(v41 + 48)) = v42;
      v46 = *(v89 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor);
      if (!v46)
      {
        v48 = v42;

        goto LABEL_13;
      }

      v47 = v42;
      if (v87 != v46)
      {

LABEL_13:

LABEL_42:
        sub_21D0CF7E0(v45, &qword_27CE5C2A0);
        (*(v36 + 8))(v25, v35);
        v40 = v23;
        goto LABEL_43;
      }

      v49 = v47;
      v50 = sub_21DBF6E3C();
      sub_21D4F5F28(v50);
      v52 = v51;

      if (v42)
      {
        v96 = v52;
        v53 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v54 = v89;
        swift_beginAccess();
        if (*(v54 + v53))
        {
          v55 = v49;

          sub_21D4F9F64(v55, v96);
        }

        else
        {
          v56 = *(v54 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store);
          sub_21D0D8CF0(0, &qword_280D1B900);
          v57 = v49;
          v58 = sub_21DBFB12C();
          v59 = swift_allocObject();
          *(v59 + 16) = 0;
          v60 = v56;
          v23 = v93;
          v61 = sub_21D87E81C(v60, sub_21D554248, v59, v57, v58);
          *(v54 + v53) = v61;

          swift_beginAccess();
          v61[3] = &protocol witness table for TTRShowSiriFoundInAppsDataModelSource;
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
      }

      v62 = v88;
      sub_21D0D3954(v92, v88, &qword_27CE5C2A0);

      v28 = sub_21DBF716C();
      (*(v44 + 8))(v62, v43);
      if (!(v28 >> 62))
      {
        v63 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v63)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    if (sub_21DBFBD7C())
    {
      v63 = sub_21DBFBD7C();
      if (!v63)
      {

        v65 = MEMORY[0x277D84F90];
LABEL_30:
        v36 = v94;
        v25 = v90;
        v45 = v92;
        if (*(v65 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v74 = sub_21DBFC40C();
        }

        else
        {
          v74 = MEMORY[0x277D84F98];
        }

        v99[0] = v74;
        v75 = sub_21DBF8E0C();
        sub_21D1931C0(v75, 1, v99);

        v76 = v99[0];
        v77 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v78 = v89;
        swift_beginAccess();
        if (*(v78 + v77))
        {

          sub_21D188810(v76);
          v80 = v79;

          TTRBatchFetchManager<A>.override(objects:)(v80);
        }

        else
        {
        }

        goto LABEL_41;
      }

LABEL_21:
      v99[0] = MEMORY[0x277D84F90];
      sub_21D18E6B8(0, v63 & ~(v63 >> 63), 0);
      if (v63 < 0)
      {
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      v64 = 0;
      v65 = v99[0];
      v66 = &off_278331000;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x223D44740](v64, v28);
        }

        else
        {
          v67 = *(v28 + 8 * v64 + 32);
        }

        v68 = v67;
        v69 = [v67 v66[425]];
        v99[0] = v65;
        v71 = *(v65 + 16);
        v70 = *(v65 + 24);
        if (v71 >= v70 >> 1)
        {
          v73 = v69;
          sub_21D18E6B8((v70 > 1), v71 + 1, 1);
          v66 = &off_278331000;
          v69 = v73;
          v65 = v99[0];
        }

        ++v64;
        *(v65 + 16) = v71 + 1;
        v72 = v65 + 16 * v71;
        *(v72 + 32) = v69;
        *(v72 + 40) = v68;
      }

      while (v63 != v64);

      goto LABEL_30;
    }

LABEL_40:

    v36 = v94;
    v45 = v92;
LABEL_41:
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_21DBFBEEC();
    v81 = v89;
    v97 = *v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD8);
    v82 = sub_21DBFA1AC();
    v84 = v83;

    v97 = v82;
    v98 = v84;
    MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
    v85 = sub_21DBFAEDC();
    v96 = &v86;
    MEMORY[0x28223BE20](v85);
    *(&v86 - 4) = v81;
    *(&v86 - 3) = v45;
    *(&v86 - 2) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    v35 = v95;
    goto LABEL_42;
  }
}

uint64_t sub_21D550BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D5541C8;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_173_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D5541C8;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_180;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D550F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D5541C8;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_97_1;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D5541C8;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_104_1;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D5512B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D5541C8;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_298_0;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D5541C8;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_305;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D551664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D53D78C(a1, v4, v5, v7, v6);
}

uint64_t sub_21D551724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D5541C8;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_270;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D5541C8;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_277;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D551A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D553894;
  *(v14 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_124;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D553894;
  *(v20 + 24) = v8;
  v31 = sub_21D554260;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_131;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

uint64_t sub_21D551E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = a3;
  v8[5] = a4;
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277CCA810];
  v12 = objc_opt_self();
  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D552CA8;
  *(v14 + 24) = v8;
  v31 = sub_21D552CB4;
  v32 = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_53_1;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:a1 queue:v13 usingBlock:v15];
  _Block_release(v15);

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277CCA808];
  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21D552CA8;
  *(v20 + 24) = v8;
  v31 = sub_21D552CB4;
  v32 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_21D0EE46C;
  ObjectType = &block_descriptor_59_0;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:a1 queue:v19 usingBlock:v21];
  _Block_release(v21);

  ObjectType = swift_getObjectType();
  *&aBlock = v16;
  v27 = swift_getObjectType();

  *&v26 = v22;
  type metadata accessor for NSUndoManager.ObservationToken();
  v23 = swift_allocObject();
  sub_21D0CF2E8(&aBlock, (v23 + 16));
  sub_21D0CF2E8(&v26, (v23 + 48));
  return v23;
}

void sub_21D552174(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    if (!v12)
    {
      return;
    }

    v13 = v12;
    v14 = objc_opt_self();
    v15 = [v14 defaultCenter];
    __swift_project_boxed_opaque_existential_1(v13 + 2, v13[5]);
    [v15 removeObserver_];

    swift_unknownObjectRelease();
    v16 = [v14 defaultCenter];
    __swift_project_boxed_opaque_existential_1(v13 + 6, v13[9]);
    [v16 removeObserver_];

    swift_unknownObjectRelease();
    swift_beginAccess();
    swift_weakAssign();
    if (qword_27CE57600 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_27CE67878);
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAE9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21D0C9000, v18, v19, "Removing undo manager observer because target is deallocated", v20, 2u);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    goto LABEL_19;
  }

  v6 = Strong;
  sub_21DBF4D3C();
  if (!v21[3])
  {
    sub_21D0CF7E0(v21, &qword_27CE5C690);
    goto LABEL_18;
  }

  sub_21D0D8CF0(0, &unk_280D17840);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    a4(v6);
LABEL_19:

    return;
  }

  v7 = v22;
  if (sub_21DBC127C() < 1)
  {

    goto LABEL_18;
  }

  if (qword_27CE57600 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE67878);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEAC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Ignoring undo manager change notification", v11, 2u);
    MEMORY[0x223D46520](v11, -1, -1);
  }
}

uint64_t sub_21D5524F8(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 40);
  v4 = *(a2 + 41);
  v6 = *a2;
  v7 = v2;
  v8 = *(a2 + 24);
  v9 = v3;
  v10 = v4;
  v5 = *(result + 80);
  if (v5)
  {

    v5(&v6);

    return sub_21D0D0E88(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D552580(uint64_t result, uint64_t *a2, uint64_t (*a3)(void (*)(void), uint64_t))
{
  v3 = *(a2 + 8);
  v4 = a2[2];
  v5 = *(a2 + 24);
  v6 = *(a2 + 25);
  v10 = *a2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v7 = *(result + 64);
  if (v7)
  {
    v8 = *(result + 72);

    v7(&v10);

    return a3(v7, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D552610(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE569A8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5DA68);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTREditTodaySectionsMonitorableDataView: did fetch data", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult;
  swift_beginAccess();
  sub_21D0EB8DC(a1, v2 + v8, &qword_27CE5C3D8);
  swift_endAccess();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D55278C(void *a1)
{
  if (qword_27CE569A8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5DA68);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTREditTodaySectionsMonitorableDataView: did hit error {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t dispatch thunk of TTREditTodaySectionsInteractorType.saveNewOrdering(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D1237C4;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for TTREditTodaySectionsInteractor()
{
  result = qword_27CE5DAA8;
  if (!qword_27CE5DAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D552AD4()
{
  sub_21D552BB4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D552BB4()
{
  if (!qword_27CE5DAB8)
  {
    sub_21DBF760C();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE5DAB8);
    }
  }
}

void sub_21D552D5C(void *a1, char a2, char a3)
{
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {

      return;
    }

    v12 = *(v11 + 40);
    *v9 = v12;
    (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
    v13 = v12;
    LOBYTE(v12) = sub_21DBF9DAC();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      swift_beginAccess();
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      sub_21D43DE58(a1, a2 & 1);
      sub_21D43DE58(a1, a2 & 1);
      *(v11 + 16) = a1;
      *(v11 + 24) = a2 & 1;
      sub_21D43DEB8(v14, v15);
      if ((a2 & 1) == 0)
      {
        swift_beginAccess();
        *(v11 + 32) = a1;
        sub_21DBF8E0C();

        if (a3)
        {
          v27 = objc_opt_self();
          v28 = sub_21DBFA12C();
          v29 = [v27 internalErrorWithDebugDescription_];

          if (qword_27CE56750 != -1)
          {
            swift_once();
          }

          v30 = sub_21DBF84BC();
          __swift_project_value_buffer(v30, qword_27CE5C180);
          v31 = v29;
          v32 = sub_21DBF84AC();
          v33 = sub_21DBFAEBC();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v40 = v35;
            *v34 = 136315138;
            swift_getErrorValue();
            v36 = sub_21DBFC74C();
            v38 = sub_21D0CDFB4(v36, v37, &v40);

            *(v34 + 4) = v38;
            _os_log_impl(&dword_21D0C9000, v32, v33, "TTRTemplatesListMonitorableDataView: did hit error {error: %s}", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x223D46520](v35, -1, -1);
            MEMORY[0x223D46520](v34, -1, -1);
          }
        }

        else
        {
          sub_21D42D000(a1);
        }

        v25 = a1;
        v26 = 0;
        goto LABEL_18;
      }

      if (qword_27CE56750 == -1)
      {
LABEL_6:
        v16 = sub_21DBF84BC();
        __swift_project_value_buffer(v16, qword_27CE5C180);
        v17 = a1;
        v18 = sub_21DBF84AC();
        v19 = sub_21DBFAEBC();
        sub_21D43DEB8(a1, 1);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v41[0] = v21;
          *v20 = 136315138;
          swift_getErrorValue();
          v22 = sub_21DBFC74C();
          v24 = sub_21D0CDFB4(v22, v23, v41);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_21D0C9000, v18, v19, "TTRTemplatesListMonitorableDataView: did hit error {error: %s}", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x223D46520](v21, -1, -1);
          MEMORY[0x223D46520](v20, -1, -1);
        }

        v25 = a1;
        v26 = 1;
LABEL_18:
        sub_21D43DEB8(v25, v26);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_6;
  }
}

void sub_21D553270(void *a1, void *a2, char a3, char a4)
{
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_9:

    return;
  }

  v14 = *(v13 + 56);
  *v11 = v14;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v15 = v14;
  LOBYTE(v14) = sub_21DBF9DAC();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  swift_beginAccess();
  v16 = *(v13 + 16);
  v17 = *(v13 + 24);
  v18 = *(v13 + 32);
  sub_21D43A0E8(a1, a2, a3 & 1);
  sub_21D43A0E8(a1, a2, a3 & 1);
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3 & 1;
  sub_21D43A134(v16, v17, v18);
  if (a3)
  {
    if (qword_27CE57638 == -1)
    {
LABEL_6:
      v19 = sub_21DBF84BC();
      __swift_project_value_buffer(v19, qword_27CE67958);
      v20 = a1;
      v21 = sub_21DBF84AC();
      v22 = sub_21DBFAEBC();
      sub_21D43A134(a1, a2, 1);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v48[0] = v24;
        *v23 = 136446210;
        swift_getErrorValue();
        v25 = sub_21DBFC75C();
        v27 = sub_21D0CDFB4(v25, v26, v48);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_21D0C9000, v21, v22, "TTRReminderDetailDatabaseMonitor: did hit error {error: %{public}s}", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x223D46520](v24, -1, -1);
        MEMORY[0x223D46520](v23, -1, -1);
      }

      sub_21D43A134(a1, a2, 1);
      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

  swift_beginAccess();
  v28 = *(v13 + 40);
  v29 = *(v13 + 48);
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  sub_21D15751C(a1);
  v30 = a2;
  sub_21D55381C(v28, v29);
  if ((a4 & 1) == 0)
  {
    if (a1 != 1)
    {
      v47 = a1;
      v44 = a1;
      sub_21DBF906C();
      sub_21D157878(a1);

      sub_21D157878(a1);
      return;
    }

    goto LABEL_9;
  }

  v31 = objc_opt_self();
  v32 = sub_21DBFA12C();
  v33 = [v31 internalErrorWithDebugDescription_];

  if (qword_27CE57638 != -1)
  {
    swift_once();
  }

  v34 = sub_21DBF84BC();
  __swift_project_value_buffer(v34, qword_27CE67958);
  v35 = v33;
  v36 = sub_21DBF84AC();
  v37 = sub_21DBFAEBC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v47 = v39;
    *v38 = 136446210;
    swift_getErrorValue();
    v40 = sub_21DBFC75C();
    v42 = sub_21D0CDFB4(v40, v41, &v47);
    v46 = v30;
    v43 = v42;

    *(v38 + 4) = v43;
    _os_log_impl(&dword_21D0C9000, v36, v37, "TTRReminderDetailDatabaseMonitor: did hit error {error: %{public}s}", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x223D46520](v39, -1, -1);
    MEMORY[0x223D46520](v38, -1, -1);

    sub_21D157878(a1);
  }

  else
  {

    sub_21D157878(a1);
  }
}

void sub_21D55381C(void *a1, void *a2)
{
  if (a2 != 1)
  {
    sub_21D157878(a1);
  }
}

void sub_21D553AD4(void *a1, char a2, char a3)
{
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {

      return;
    }

    v12 = *(v11 + 40);
    *v9 = v12;
    (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
    v13 = v12;
    LOBYTE(v12) = sub_21DBF9DAC();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      swift_beginAccess();
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      sub_21D43DE58(a1, a2 & 1);
      sub_21D43DE58(a1, a2 & 1);
      *(v11 + 16) = a1;
      *(v11 + 24) = a2 & 1;
      sub_21D43DEB8(v14, v15);
      if ((a2 & 1) == 0)
      {
        swift_beginAccess();
        *(v11 + 32) = a1;
        sub_21DBF8E0C();

        if (a3)
        {
          v27 = objc_opt_self();
          v28 = sub_21DBFA12C();
          v29 = [v27 internalErrorWithDebugDescription_];

          if (qword_27CE56A90 != -1)
          {
            swift_once();
          }

          v30 = sub_21DBF84BC();
          __swift_project_value_buffer(v30, qword_27CE5EC48);
          v31 = v29;
          v32 = sub_21DBF84AC();
          v33 = sub_21DBFAEBC();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v40 = v35;
            *v34 = 136315138;
            swift_getErrorValue();
            v36 = sub_21DBFC74C();
            v38 = sub_21D0CDFB4(v36, v37, &v40);

            *(v34 + 4) = v38;
            _os_log_impl(&dword_21D0C9000, v32, v33, "TTRIReminderSectionPickerMonitorableDataView: did hit error {error: %s}", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x223D46520](v35, -1, -1);
            MEMORY[0x223D46520](v34, -1, -1);
          }
        }

        else
        {
          sub_21D5E4350(a1);
        }

        v25 = a1;
        v26 = 0;
        goto LABEL_18;
      }

      if (qword_27CE56A90 == -1)
      {
LABEL_6:
        v16 = sub_21DBF84BC();
        __swift_project_value_buffer(v16, qword_27CE5EC48);
        v17 = a1;
        v18 = sub_21DBF84AC();
        v19 = sub_21DBFAEBC();
        sub_21D43DEB8(a1, 1);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v41[0] = v21;
          *v20 = 136315138;
          swift_getErrorValue();
          v22 = sub_21DBFC74C();
          v24 = sub_21D0CDFB4(v22, v23, v41);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_21D0C9000, v18, v19, "TTRIReminderSectionPickerMonitorableDataView: did hit error {error: %s}", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x223D46520](v21, -1, -1);
          MEMORY[0x223D46520](v20, -1, -1);
        }

        v25 = a1;
        v26 = 1;
LABEL_18:
        sub_21D43DEB8(v25, v26);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_6;
  }
}

uint64_t objectdestroy_46Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_241Tm()
{

  sub_21D43DEB8(*(v0 + 24), *(v0 + 32));
  sub_21D43DEB8(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

id UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_280D17218 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((byte_280D17220 & 1) == 0)
    {
      v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v9 = sub_21DBFA12C();

      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      v7 = [v8 initWithTitle:v9 style:2 target:sub_21DBFC62C() action:a4];

      goto LABEL_8;
    }
  }

  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v7 = [v6 initWithBarButtonSystemItem:0 target:sub_21DBFC62C() action:a4];
LABEL_8:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v7;
}

id UIBarButtonItem.ttr_view.getter()
{
  v1 = [v0 view];

  return v1;
}

id UIBarButtonItem.ttr_viewForPresenting.getter()
{
  v1 = [v0 _viewForPresenting];

  return v1;
}

uint64_t TTRRemindersInteraction.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTRRemindersInteraction.deleteInteractions(for:)(void *a1)
{
  return sub_21D554B7C(a1, &unk_282EC3B30, sub_21D226DA8, &block_descriptor_48);
}

{
  return sub_21D554B7C(a1, &unk_282EC3BD0, sub_21D555CE4, &block_descriptor_12_1);
}

uint64_t sub_21D5544BC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F468);
  v1 = __swift_project_value_buffer(v0, qword_280D0F468);
  if (qword_280D0C890 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void TTRRemindersInteraction.donateReminderCreation(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_21DBF9D2C();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D8C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + 16);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D851F0], v10, v12);
  v22[1] = v15;
  LOBYTE(v15) = sub_21DBF9DAC();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v18 = (*(v17 + 40))(v16, v17);
    if (v18)
    {
      v19 = v18;
      if ([v18 length] < 1)
      {
      }

      else
      {
        sub_21D0D32E4(a1, v27);
        v20 = swift_allocObject();
        *(v20 + 16) = v2;
        sub_21D0D0FD0(v27, v20 + 24);
        aBlock[4] = sub_21D554B48;
        aBlock[5] = v20;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0D74FC;
        aBlock[3] = &block_descriptor_6_2;
        v21 = _Block_copy(aBlock);

        sub_21DBF9D4C();
        v25 = MEMORY[0x277D84F90];
        sub_21D0CD898();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
        sub_21D0CD8F0();
        sub_21DBFBCBC();
        MEMORY[0x223D438F0](0, v9, v6, v21);
        _Block_release(v21);

        (*(v24 + 8))(v6, v4);
        (*(v23 + 8))(v9, v7);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t TTRRemindersInteraction.donateReminderUpdate(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_21D5558E0(v4, v1, v2, v3);
}

void sub_21D5549B4(void *a1)
{
  v2 = sub_21DBF56BC();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 objectID];
  v8 = [v7 uuid];

  sub_21DBF568C();
  v9 = sub_21DBF565C();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC08D00;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  v14 = sub_21DBFA5DC();

  [v12 deleteInteractionsWithIdentifiers:v14 completion:0];
}

uint64_t sub_21D554B7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23[1] = a2;
  v6 = sub_21DBF9D2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21DBF9D5C();
  v10 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + 16);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D851F0], v13, v15);
  v23[0] = v18;
  LOBYTE(v18) = sub_21DBF9DAC();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    aBlock[4] = v24;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v25;
    v21 = _Block_copy(aBlock);
    v22 = a1;
    sub_21DBF9D4C();
    v27 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0CD8F0();
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v12, v9, v21);
    _Block_release(v21);
    (*(v7 + 8))(v9, v6);
    (*(v10 + 8))(v12, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D554EB4(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v33 = sub_21DBF56BC();
  v2 = *(v33 - 8);
  *&v3 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = 0;
  v6 = [a1 fetchRemindersWithError_];
  v7 = v34[0];
  if (!v6)
  {
    v27 = v34[0];
    v28 = sub_21DBF52DC();

    swift_willThrow();
    return;
  }

  v8 = v6;
  sub_21D0D8CF0(0, &qword_280D17860);
  v9 = sub_21DBFA5EC();
  v10 = v7;

  if (v9 >> 62)
  {
    v11 = sub_21DBFBD7C();
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_4:
      v34[0] = MEMORY[0x277D84F90];
      sub_21D18E678(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
      }

      v12 = 0;
      v13 = v34[0];
      v14 = v9;
      v31 = v9 & 0xC000000000000001;
      v32 = v9;
      v15 = (v2 + 8);
      v16 = v11;
      do
      {
        if (v31)
        {
          v17 = MEMORY[0x223D44740](v12, v14);
        }

        else
        {
          v17 = *(v14 + 8 * v12 + 32);
        }

        v18 = v17;
        v19 = [v17 objectID];
        v20 = [v19 uuid];

        sub_21DBF568C();
        v21 = sub_21DBF565C();
        v23 = v22;

        (*v15)(v5, v33);
        v34[0] = v13;
        v25 = v13[2];
        v24 = v13[3];
        if (v25 >= v24 >> 1)
        {
          sub_21D18E678((v24 > 1), v25 + 1, 1);
          v13 = v34[0];
        }

        ++v12;
        v13[2] = v25 + 1;
        v26 = &v13[2 * v25];
        v26[4] = v21;
        v26[5] = v23;
        v14 = v32;
      }

      while (v16 != v12);
    }
  }

  v29 = objc_opt_self();
  v30 = sub_21DBFA5DC();

  [v29 deleteInteractionsWithIdentifiers:v30 completion:0];
}

void sub_21D5551E4(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_280D0F460 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_280D0F468);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136315138;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
      v10 = sub_21DBFA1AC();
      v12 = sub_21D0CDFB4(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v5, v6, "error donating interaction: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223D46520](v8, -1, -1);
      MEMORY[0x223D46520](v7, -1, -1);

      return;
    }

    v16 = a1;
  }

  else
  {
    if (qword_280D0F460 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_280D0F468);
    oslog = sub_21DBF84AC();
    v14 = sub_21DBFAE9C();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v14, "no error donating interaction to CoreDuet", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    v16 = oslog;
  }
}

void sub_21D555484(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = sub_21DBF56BC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 32))(v12, v13);
  v14 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v15 = sub_21DBFA12C();

  v36 = [v14 initWithSpokenPhrase_];

  v16 = sub_21DBF509C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v11, 1, 1, v16);
  v37 = v8;
  v18(v8, 1, 1, v16);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 8))(v19, v20);
  v22 = [v21 uuid];

  sub_21DBF568C();
  v33 = sub_21DBF565C();
  (*(v34 + 8))(v5, v35);
  sub_21D0D8CF0(0, &qword_280D176C8);
  v23 = sub_21DBFA5DC();
  v24 = *(v17 + 48);
  v25 = 0;
  if (v24(v11, 1, v16) != 1)
  {
    v25 = sub_21DBF4EDC();
    (*(v17 + 8))(v11, v16);
  }

  v26 = v37;
  if (v24(v37, 1, v16) == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_21DBF4EDC();
    (*(v17 + 8))(v26, v16);
  }

  v28 = objc_allocWithZone(MEMORY[0x277CD4228]);
  v29 = sub_21DBFA12C();

  v30 = v28;
  v31 = v36;
  v32 = [v30 initWithTitle:v36 tasks:v23 groupName:0 createdDateComponents:v25 modifiedDateComponents:v27 identifier:v29];

  *v38 = v32;
}

uint64_t TTRRemindersInteraction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D5558E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF9D2C();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D5C();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D8C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32[3] = a3;
  v32[4] = a4;
  __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*(a3 - 8) + 16))();
  v17 = *(a2 + 16);
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D851F0], v13);
  v24[1] = v17;
  LOBYTE(v17) = sub_21DBF9DAC();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = (*(a4 + 40))(a3, a4);
    if (v19)
    {
      v20 = v19;
      if ([v19 length] < 1)
      {
      }

      else
      {
        sub_21D0D32E4(v32, v31);
        v21 = swift_allocObject();
        *(v21 + 16) = a2;
        sub_21D0D0FD0(v31, v21 + 24);
        aBlock[4] = sub_21D556974;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D0D74FC;
        aBlock[3] = &block_descriptor_23_1;
        v22 = _Block_copy(aBlock);

        sub_21DBF9D4C();
        v29 = MEMORY[0x277D84F90];
        sub_21D0CD898();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
        sub_21D0CD8F0();
        v23 = v28;
        sub_21DBFBCBC();
        MEMORY[0x223D438F0](0, v12, v9, v22);
        _Block_release(v22);

        (*(v27 + 8))(v9, v23);
        (*(v25 + 8))(v12, v26);
      }
    }

    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dispatch thunk of TTRRemindersInteractionType.deleteInteractions(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 24))();
}

id sub_21D555D78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = TTRReminderProtocol.spatialEventTrigger()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = TTRReminderProtocol.temporalEventTrigger()();
  v27 = MEMORY[0x277D84F90];
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v4, v5);
  if (v6)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v8 = sub_21DBFA12C();

    [v7 initWithSpokenPhrase_];

    MEMORY[0x223D42D80]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 184))(v26, v9, v10);
  sub_21D0FACE0(v26, &v23);
  if (v24)
  {
    sub_21D0D0FD0(&v23, v22);
    sub_21D555484(v22, &v25);
    __swift_destroy_boxed_opaque_existential_0(v22);
    sub_21D45C980(v26);
    v11 = v25;
  }

  else
  {
    sub_21D45C980(v26);
    v11 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x277CD3A18]);
  sub_21D0D8CF0(0, &qword_280D17810);
  v13 = v11;
  v14 = v2;
  v15 = v3;
  v16 = sub_21DBFA5DC();

  v17 = [v12 initWithTargetTaskList:v13 taskTitles:v16 spatialEventTrigger:v14 temporalEventTrigger:v15 priority:0];

  v18 = qword_280D19F80;
  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBFA12C();
  [v19 _setLaunchId_];

  return v19;
}

id sub_21D556070(void *a1)
{
  v2 = sub_21DBF56BC();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v56 = TTRReminderProtocol.spatialEventTrigger()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = TTRReminderProtocol.temporalEventTrigger()();
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 48))(v11, v12);
  if (v13)
  {
    v14 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v15 = sub_21DBFA12C();

    v64 = [v14 initWithSpokenPhrase_];
  }

  else
  {
    v64 = 0;
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 48))(v16, v17);
  v18 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v19 = sub_21DBFA12C();

  v58 = [v18 initWithSpokenPhrase_];

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 64))(v20, v21);
  v23 = 1;
  if (v22)
  {
    v23 = 2;
  }

  v57 = v23;
  v24 = sub_21DBF509C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(v9, 1, 1, v24);
  v63 = v6;
  v26(v6, 1, 1, v24);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = *(v28 + 8);
  v59 = v10;
  v30 = v56;
  v31 = v29(v27, v28);
  v32 = [v31 uuid];

  v33 = v60;
  sub_21DBF568C();

  sub_21DBF565C();
  v34 = v9;
  (*(v61 + 8))(v33, v62);
  v35 = *(v25 + 48);
  v36 = v35(v9, 1, v24);
  v37 = 0;
  if (v36 != 1)
  {
    v37 = sub_21DBF4EDC();
    (*(v25 + 8))(v34, v24);
  }

  v38 = v63;
  if (v35(v63, 1, v24) == 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = sub_21DBF4EDC();
    (*(v25 + 8))(v38, v24);
  }

  v40 = objc_allocWithZone(MEMORY[0x277CD4220]);
  v41 = sub_21DBFA12C();

  v42 = v58;
  v43 = v59;
  v44 = [v40 initWithTitle:v58 status:v57 taskType:2 spatialEventTrigger:v30 temporalEventTrigger:v59 createdDateComponents:v37 modifiedDateComponents:v39 identifier:v41];

  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  if ((*(v46 + 64))(v45, v46))
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  v48 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v49 = v64;
  v50 = [v48 initWithTargetTask:v44 taskTitle:v64 status:v47 priority:0 spatialEventTrigger:v30 temporalEventTrigger:v43];
  v51 = qword_280D19F80;
  v52 = v50;
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = sub_21DBFA12C();
  [v52 _setLaunchId_];

  return v52;
}

void sub_21D556654(char a1, void *a2)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v8 = sub_21D555D78(a2);
LABEL_5:
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v8 response:0];

    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    v13 = *(v12 + 8);
    v14 = v10;
    v15 = v13(v11, v12);
    v16 = [v15 uuid];

    sub_21DBF568C();
    sub_21DBF565C();
    (*(v5 + 8))(v7, v4);
    v17 = sub_21DBFA12C();

    [v14 setIdentifier_];

    aBlock[4] = sub_21D5551E4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D11E5E4;
    aBlock[3] = &block_descriptor_17_0;
    v18 = _Block_copy(aBlock);
    [v14 donateInteractionWithCompletion_];

    _Block_release(v18);
    return;
  }

  if (a1 == 2)
  {
    v8 = sub_21D556070(a2);
    goto LABEL_5;
  }

  if (qword_280D0F460 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_280D0F468);
  v20 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v20);
  sub_21DAEAB00("Trying to donate a user action that doesn't support Siri Donation", 65, 2);
  __break(1u);
}

uint64_t objectdestroy_2Tm_0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

BOOL static TTRReminderCellStyle.CompletedButtonType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return ((v3 ^ v2) & 1) == 0;
      }
    }

    else if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

BOOL sub_21D556A04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v5 = v3 ^ v2;
  v6 = v5 ^ 1;
  if (v3 >= 0x40)
  {
    v6 = 0;
  }

  v7 = (v5 & 1) == 0;
  if ((v3 & 0xC0) != 0x40)
  {
    v7 = 0;
  }

  v8 = v3 == 128;
  if (v4 != 1)
  {
    v7 = v8;
  }

  if (!v4)
  {
    return v6;
  }

  return v7;
}

uint64_t TTRReminderCellStyle.titlePlaceholderText.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderCellStyle.titlePlaceholderText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void sub_21D556B54()
{
  word_280D15940 = 0;
  byte_280D15942 = 1;
  qword_280D15948 = 0;
  qword_280D15950 = 0;
  word_280D15958 = 257;
}

_BYTE *TTRReminderCellStyle.init(completedButtonType:hoverButtonType:allowsEditing:titlePlaceholderText:hasAccessibilityDragSourceDescriptors:hasAccessibilityCustomActions:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a2;
  *a8 = *result;
  *(a8 + 1) = v8;
  *(a8 + 2) = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  *(a8 + 25) = a7;
  return result;
}

uint64_t static TTRReminderCellStyle.normal.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D15938 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_280D15940);
  v3 = byte_280D15942;
  v5 = qword_280D15948;
  v4 = qword_280D15950;
  v6 = word_280D15958;
  v7 = HIBYTE(word_280D15958);
  *a1 = word_280D15940;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

void sub_21D556C38()
{
  word_280D15968 = 128;
  byte_280D1596A = 1;
  qword_280D15970 = 0;
  qword_280D15978 = 0;
  word_280D15980 = 0;
}

uint64_t static TTRReminderCellStyle.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D15960 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_280D15968);
  v3 = byte_280D1596A;
  v5 = qword_280D15970;
  v4 = qword_280D15978;
  v6 = word_280D15980;
  v7 = HIBYTE(word_280D15980);
  *a1 = word_280D15968;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

void sub_21D556CF8()
{
  word_27CE5DB18 = 64;
  byte_27CE5DB1A = 0;
  qword_27CE5DB20 = 0;
  unk_27CE5DB28 = 0;
  word_27CE5DB30 = 1;
}

uint64_t static TTRReminderCellStyle.siriFoundInApps.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE569B8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB18);
  v3 = byte_27CE5DB1A;
  v5 = qword_27CE5DB20;
  v4 = unk_27CE5DB28;
  v6 = word_27CE5DB30;
  v7 = HIBYTE(word_27CE5DB30);
  *a1 = word_27CE5DB18;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

void sub_21D556DB8()
{
  word_27CE5DB38 = 1;
  byte_27CE5DB3A = 1;
  qword_27CE5DB40 = 0;
  unk_27CE5DB48 = 0;
  word_27CE5DB50 = 1;
}

uint64_t static TTRReminderCellStyle.template.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE569C0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB38);
  v3 = byte_27CE5DB3A;
  v5 = qword_27CE5DB40;
  v4 = unk_27CE5DB48;
  v6 = word_27CE5DB50;
  v7 = HIBYTE(word_27CE5DB50);
  *a1 = word_27CE5DB38;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

void sub_21D556E74()
{
  word_27CE5DB58 = 1;
  byte_27CE5DB5A = 0;
  qword_27CE5DB60 = 0;
  unk_27CE5DB68 = 0;
  word_27CE5DB70 = 0;
}

uint64_t static TTRReminderCellStyle.publicTemplate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE569C8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB58);
  v3 = byte_27CE5DB5A;
  v5 = qword_27CE5DB60;
  v4 = unk_27CE5DB68;
  v6 = word_27CE5DB70;
  v7 = HIBYTE(word_27CE5DB70);
  *a1 = word_27CE5DB58;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

void sub_21D556F30()
{
  word_27CE5DB78 = 257;
  byte_27CE5DB7A = 0;
  qword_27CE5DB80 = 0;
  unk_27CE5DB88 = 0;
  word_27CE5DB90 = 0;
}

uint64_t static TTRReminderCellStyle.recentlyDeleted.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE569D0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB78);
  v3 = byte_27CE5DB7A;
  v5 = qword_27CE5DB80;
  v4 = unk_27CE5DB88;
  v6 = word_27CE5DB90;
  v7 = HIBYTE(word_27CE5DB90);
  *a1 = word_27CE5DB78;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

void sub_21D556FEC()
{
  word_27CE5DB98 = 1;
  byte_27CE5DB9A = 1;
  qword_27CE5DBA0 = 0;
  unk_27CE5DBA8 = 0;
  word_27CE5DBB0 = 257;
}

uint64_t static TTRReminderCellStyle.sharingExtension.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE569D8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DB98);
  v3 = byte_27CE5DB9A;
  v5 = qword_27CE5DBA0;
  v4 = unk_27CE5DBA8;
  v6 = word_27CE5DBB0;
  v7 = HIBYTE(word_27CE5DBB0);
  *a1 = word_27CE5DB98;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

void sub_21D5570AC()
{
  word_27CE5DBB8 = 65;
  byte_27CE5DBBA = 0;
  qword_27CE5DBC0 = 0;
  unk_27CE5DBC8 = 0;
  word_27CE5DBD0 = 0;
}

uint64_t static TTRReminderCellStyle.sharingExtensionSuggestion.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE569E0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = HIBYTE(word_27CE5DBB8);
  v3 = byte_27CE5DBBA;
  v5 = qword_27CE5DBC0;
  v4 = unk_27CE5DBC8;
  v6 = word_27CE5DBD0;
  v7 = HIBYTE(word_27CE5DBD0);
  *a1 = word_27CE5DBB8;
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;
  *(a1 + 25) = v7;

  return sub_21DBF8E0C();
}

unint64_t sub_21D557194()
{
  result = qword_27CE5DBD8;
  if (!qword_27CE5DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5DBD8);
  }

  return result;
}

unint64_t sub_21D5571EC()
{
  result = qword_27CE5DBE0;
  if (!qword_27CE5DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5DBE0);
  }

  return result;
}

unint64_t sub_21D557244()
{
  result = qword_27CE5DBE8;
  if (!qword_27CE5DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5DBE8);
  }

  return result;
}

uint64_t initializeWithCopy for TTRReminderCellStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRReminderCellStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t assignWithTake for TTRReminderCellStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for TTRReminderCellStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderCellStyle.CompletedButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRReminderCellStyle.CompletedButtonType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21D5575F0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_21D55761C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

uint64_t Collection<>.isSingleUncommittedReminder.getter()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBFAC8C() != 1)
  {
    return 0;
  }

  sub_21DBFACEC();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_21D24BDFC(v5, v9);
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v2);
    sub_21D1067F8(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return 0;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_21D1067F8(v2, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      return 1;
    }

    sub_21D1067F8(v2, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    return 0;
  }

  sub_21D5578D8(v5);
  return 0;
}

uint64_t sub_21D5578D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D557A2C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_21D557B30()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v1 = sub_21DBFA12C();

  [v0 setTitle_];

  return [v0 setClearsSelectionOnViewWillAppear_];
}

uint64_t sub_21D557C8C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v24 = sub_21DBF9D2C();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D7C();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v22 - v16;
  v29.receiver = v2;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_viewDidAppear_, a1 & 1, v15);
  sub_21D0CE468();
  v18 = sub_21DBFB12C();
  sub_21DBF9D6C();
  sub_21DBF9D9C();
  v22 = *(v11 + 8);
  v22(v13, v10);
  aBlock[4] = sub_21D558040;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_10_0;
  v19 = _Block_copy(aBlock);
  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D559E00(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
  v20 = v24;
  sub_21DBFBCBC();
  MEMORY[0x223D43880](v17, v9, v6, v19);
  _Block_release(v19);

  (*(v27 + 8))(v6, v20);
  (*(v25 + 8))(v9, v26);
  return (v22)(v17, v23);
}

void sub_21D5580A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  if (!a1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore34TTRIRecurrenceEditorViewController_presenter);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule;
      swift_beginAccess();
      sub_21D0D3954(v6 + v9, v5, &qword_27CE5A018);
      swift_unknownObjectRetain();
      sub_21D559430(v5, v8);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_21D0CF7E0(v5, &qword_27CE5A018);
    }
  }
}

id sub_21D5582B0(void *a1, void *a2)
{
  v5 = sub_21DBFA12C();
  v6 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v6)
  {
    v7 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v8 = sub_21DBFA12C();
    v6 = [v7 initWithStyle:0 reuseIdentifier:v8];
  }

  v9 = sub_21DBF5D0C();
  v10 = v9;
  if (v9)
  {
    if (v9 == 1)
    {
      v14 = [v6 textLabel];
      if (!v14)
      {
        v10 = 1;
        goto LABEL_17;
      }

      a2 = v14;
      v2 = 0x800000021DC5FA30;
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_19;
  }

  v2 = sub_21DBF5CCC();
  swift_unknownObjectRetain();
  a2 = sub_21D55AC6C();
  swift_unknownObjectRelease();
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2 >= a2[2])
  {
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
LABEL_12:
    v16 = v2;
    sub_21DBF516C();
    goto LABEL_13;
  }

  v11 = a2[v2 + 4];

  v12 = [v6 textLabel];
  if (!v12)
  {
    v10 = 0;
    goto LABEL_17;
  }

  a2 = v12;
  v13 = [objc_opt_self() localizedDescriptionForRepeatType_];
  if (v13)
  {
    goto LABEL_14;
  }

  sub_21DBFA16C();
LABEL_13:
  v13 = sub_21DBFA12C();

LABEL_14:
  [a2 setText_];

LABEL_17:
  [v6 setAccessoryType_];
  return v6;
}

void sub_21D5588F8()
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8);
  MEMORY[0x28223BE20](v65);
  v2 = &v53 - v1;
  v3 = sub_21DBF5D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v67 = &v53 - v17;
  if ([v0 isViewLoaded])
  {
    v18 = [v0 tableView];
    if (v18)
    {
      v69 = v18;
      v19 = [v18 indexPathsForVisibleRows];
      if (v19)
      {
        v20 = v4;
        v21 = v19;
        v54 = sub_21DBFA5EC();

        v22 = *(*&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIRecurrenceEditorViewController_presenter] + 48);
        swift_unknownObjectRetain();
        v23 = sub_21D55ADA0(v22);
        v25 = v24;
        swift_unknownObjectRelease();
        v26 = v67;
        if (v25)
        {
          v27 = 0;
          v28 = 1;
        }

        else
        {
          v27 = v23;
          v28 = 0;
        }

        MEMORY[0x223D3E470](v27, v28);
        v30 = v3;
        v63 = *(v20 + 56);
        v64 = v20 + 56;
        v63(v26, 0, 1, v3);
        v31 = *(v54 + 16);
        if (v31)
        {
          v66 = v14;
          v59 = v11;
          v57 = v6;
          v32 = *(v20 + 16);
          v33 = v54 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
          v34 = (v20 + 48);
          v55 = (v20 + 48);
          v56 = (v20 + 32);
          v68 = *(v20 + 72);
          v72 = (v20 + 8);
          v73 = v32;
          v61 = v2;
          v62 = v20 + 16;
          v35 = v60;
          v32(v60, v33, v3);
          while (1)
          {
            v38 = sub_21DBF5C6C();
            v39 = [v69 cellForRowAtIndexPath_];

            if (v39)
            {
              break;
            }

LABEL_14:
            (*v72)(v35, v30);
            v33 += v68;
            if (!--v31)
            {
              goto LABEL_26;
            }

            v73(v35, v33, v30);
          }

          v70 = v31;
          v71 = v39;
          v40 = v30;
          v41 = v34;
          v42 = v66;
          v73(v66, v35, v40);
          v63(v42, 0, 1, v40);
          v43 = *(v65 + 48);
          v44 = v61;
          sub_21D0D3954(v42, v61, &unk_27CE58E70);
          sub_21D0D3954(v67, v44 + v43, &unk_27CE58E70);
          v45 = *v41;
          if ((*v41)(v44, 1, v40) == 1)
          {
            sub_21D0CF7E0(v42, &unk_27CE58E70);
            v46 = v45(v44 + v43, 1, v40) == 1;
            v34 = v41;
            v30 = v40;
            v47 = v44;
            v31 = v70;
            if (v46)
            {
              sub_21D0CF7E0(v47, &unk_27CE58E70);
              v36 = 3;
              v37 = v71;
LABEL_13:
              [v37 setAccessoryType_];

              goto LABEL_14;
            }
          }

          else
          {
            v48 = v59;
            sub_21D0D3954(v44, v59, &unk_27CE58E70);
            if (v45(v44 + v43, 1, v40) != 1)
            {
              v49 = v57;
              (*v56)(v57, v44 + v43, v40);
              sub_21D559E00(&qword_280D17150, MEMORY[0x277CC9AF8]);
              v58 = sub_21DBFA10C();
              v50 = *v72;
              v51 = v49;
              v34 = v55;
              (*v72)(v51, v40);
              sub_21D0CF7E0(v66, &unk_27CE58E70);
              v50(v48, v40);
              sub_21D0CF7E0(v44, &unk_27CE58E70);
              v35 = v60;
              v30 = v40;
              v31 = v70;
              v37 = v71;
              if (v58)
              {
                v36 = 3;
                goto LABEL_13;
              }

              goto LABEL_23;
            }

            v34 = v41;
            sub_21D0CF7E0(v66, &unk_27CE58E70);
            (*v72)(v48, v40);
            v47 = v44;
            v35 = v60;
            v30 = v40;
            v31 = v70;
          }

          sub_21D0CF7E0(v47, &qword_27CE5DBF8);
          v37 = v71;
LABEL_23:
          v36 = sub_21DBF5D0C() == 1;
          goto LABEL_13;
        }

LABEL_26:

        v52 = v67;

        sub_21D0CF7E0(v52, &unk_27CE58E70);
      }

      else
      {
        v29 = v69;
      }
    }
  }
}

void sub_21D559028()
{
  v1 = v0;
  v2 = sub_21DBF5B9C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 tableView];
  if (v7)
  {
    v8 = v7;
    v15 = &unk_282EA6D88;
    sub_21D559E00(&qword_280D1B818, MEMORY[0x277CC9A28]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70);
    sub_21D0D9418(&qword_280D178C8, &unk_27CE67A70);
    sub_21DBFBCBC();
    v9 = sub_21DBF5A8C();
    v10 = *(v3 + 8);
    v10(v6, v2);
    [v8 _reloadSectionHeaderFooters_withRowAnimation_];

    v11 = [v1 tableView];
    if (v11)
    {
      v12 = v11;
      v15 = &unk_282EA6DB0;
      sub_21DBFBCBC();
      v13 = sub_21DBF5A8C();
      v10(v6, v2);
      [v12 _reloadSectionHeaderFooters_withRowAnimation_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21D55927C(char a1)
{
  v2 = v1;
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = [v2 tableView];
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 indexPathForSelectedRow];

  if (!v14)
  {
    return;
  }

  sub_21DBF5CAC();

  (*(v5 + 32))(v11, v7, v4);
  v15 = [v2 tableView];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_21DBF5C6C();
  [v16 deselectRowAtIndexPath:v17 animated:a1 & 1];

  (*(v5 + 8))(v11, v4);
}

uint64_t sub_21D559430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = aBlock - v7;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = objc_opt_self();
  v10 = sub_21DBFA12C();

  sub_21D0D3954(a1, v8, &qword_27CE5A018);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_21D559CF8(v8, v12 + v11);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D559D68;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_49;
  v14 = _Block_copy(aBlock);

  [v9 withActionName:v10 block:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21D55973C()
{
  result = sub_21DBF5D0C();
  if (result)
  {
    if (result == 1)
    {
      swift_unknownObjectRetain();
      sub_21D55A630();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v1 = sub_21D55AC6C();
  swift_unknownObjectRelease();
  result = sub_21DBF5CCC();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *(v1 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v2 = *(v1 + 8 * result + 32);

  swift_unknownObjectRetain();
  sub_21D55A4F0(v2);
LABEL_7:

  return swift_unknownObjectRelease();
}

id sub_21D559820(void *a1, uint64_t a2)
{
  v43 = a1;
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v10 - 8);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v19 = *(v5 + 16);
  v41 = a2;
  v19(&v38 - v17, a2, v4, v16);
  v42 = v5;
  v20 = *(v5 + 56);
  v20(v18, 0, 1, v4);
  v21 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore34TTRIRecurrenceEditorViewController_presenter) + 48);
  swift_unknownObjectRetain();
  v22 = sub_21D55ADA0(v21);
  v24 = v23;
  swift_unknownObjectRelease();
  if (v24)
  {
    v25 = 0;
    v26 = 1;
  }

  else
  {
    v25 = v22;
    v26 = 0;
  }

  MEMORY[0x223D3E470](v25, v26);
  v20(v14, 0, 1, v4);
  v27 = *(v7 + 48);
  sub_21D0D3954(v18, v9, &unk_27CE58E70);
  sub_21D0D3954(v14, &v9[v27], &unk_27CE58E70);
  v28 = v42;
  v29 = *(v42 + 48);
  if (v29(v9, 1, v4) != 1)
  {
    v31 = v40;
    sub_21D0D3954(v9, v40, &unk_27CE58E70);
    if (v29(&v9[v27], 1, v4) != 1)
    {
      v33 = &v9[v27];
      v34 = v39;
      (*(v28 + 32))(v39, v33, v4);
      sub_21D559E00(&qword_280D17150, MEMORY[0x277CC9AF8]);
      v35 = v31;
      v36 = sub_21DBFA10C();
      v37 = *(v28 + 8);
      v37(v34, v4);
      sub_21D0CF7E0(v14, &unk_27CE58E70);
      sub_21D0CF7E0(v18, &unk_27CE58E70);
      v37(v35, v4);
      sub_21D0CF7E0(v9, &unk_27CE58E70);
      if (v36)
      {
        v30 = 3;
        return [v43 setAccessoryType_];
      }

      goto LABEL_10;
    }

    sub_21D0CF7E0(v14, &unk_27CE58E70);
    sub_21D0CF7E0(v18, &unk_27CE58E70);
    (*(v28 + 8))(v31, v4);
LABEL_9:
    sub_21D0CF7E0(v9, &qword_27CE5DBF8);
LABEL_10:
    v30 = sub_21DBF5D0C() == 1;
    return [v43 setAccessoryType_];
  }

  sub_21D0CF7E0(v14, &unk_27CE58E70);
  sub_21D0CF7E0(v18, &unk_27CE58E70);
  if (v29(&v9[v27], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_21D0CF7E0(v9, &unk_27CE58E70);
  v30 = 3;
  return [v43 setAccessoryType_];
}

uint64_t sub_21D559CF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D559D68()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D4592CC(v0 + v2, v3);
}

uint64_t sub_21D559E00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D559E74(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v68 = a3;
  LODWORD(v67) = a2;
  v6 = sub_21DBF5C4C();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF563C();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v58 - v11;
  v12 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v60 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v58 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v58 - v31;
  sub_21D55B0F8(a1, &v58 - v31);
  if (v67)
  {
    v33 = 1;
    if (!(*(v13 + 48))(v32, 1, v12))
    {
      sub_21D3351BC(v32, v23);
      v67 = sub_21D7DAFA0(*(v4 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate));
      v58 = v34;
      v36 = v35;
      sub_21D3351BC(v23, v17);
      v37 = v12[5];
      if (*&v23[v37] == 3)
      {
        v38 = *&v23[v12[13]];
        if (v38)
        {
          if (*(v38 + 16))
          {
            v39 = *&v23[v12[12]];
            if (v39)
            {
              if (*(v39 + 16))
              {
                *&v17[v37] = 2;
              }
            }
          }
        }
      }

      sub_21D55B1D8(v17, v20);
      sub_21D7D8908(v67, v58, v36 & 1, v29);
      sub_21D335220(v20);
      sub_21D335220(v23);
      v33 = 0;
    }

    (*(v13 + 56))(v29, v33, 1, v12);
    sub_21D55B23C(v29, v32);
  }

  sub_21D55B0F8(v32, v26);
  if ((*(v13 + 48))(v26, 1, v12) == 1)
  {
    sub_21D0CF7E0(v26, &qword_27CE5A018);
    v40 = 0;
LABEL_16:
    v50 = 0;
    v52 = 0;
    goto LABEL_17;
  }

  v41 = v60;
  sub_21D55B1D8(v26, v60);
  v42 = *(v4 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate);
  v43 = [v42 date];
  v44 = v64;
  sub_21DBF55FC();

  v45 = v61;
  sub_21DBF5C3C();
  v46 = v59;
  v40 = TTRRecurrenceRuleModel.repeatTypeAndEndDate(recurrenceDate:recurrenceTimeZone:)(v59, v44, v45);
  (*(v62 + 8))(v45, v63);
  v47 = v66;
  v48 = *(v65 + 8);
  v48(v44, v66);
  sub_21D0CF7E0(v46, &qword_27CE58D68);
  if (v40 != 11)
  {
    sub_21D335220(v41);
    goto LABEL_16;
  }

  v49 = [v42 date];
  sub_21DBF55FC();

  v50 = TTRRecurrenceRuleModel.naturalLanguageString(startDate:)();
  v52 = v51;
  v48(v44, v47);
  sub_21D335220(v41);
LABEL_17:
  v53 = v4[8];
  v54 = (v53 | v52) == 0;
  if (v53 && v52)
  {
    if (v4[7] == v50 && v53 == v52)
    {
      v54 = 1;
    }

    else
    {
      v54 = sub_21DBFC64C();
    }
  }

  v55 = v4[6];
  v56 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule;
  swift_beginAccess();
  sub_21D55B168(v32, v4 + v56);
  swift_endAccess();
  v4[7] = v50;
  v4[8] = v52;

  v4[6] = v40;
  if (v68)
  {
    if (v55 != v40 && swift_unknownObjectWeakLoadStrong())
    {
      sub_21D5588F8();
      swift_unknownObjectRelease();
    }

    if ((v54 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      sub_21D559028();
      swift_unknownObjectRelease();
    }
  }

  return sub_21D0CF7E0(v32, &qword_27CE5A018);
}

uint64_t sub_21D55A4F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  TTRRecurrenceRuleModel.init(repeatType:)(a1, &v11 - v4);
  sub_21D559E74(v5, 1, 1);
  if (v1[6] == a1)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong navigationController];

      v9 = [v8 popViewControllerAnimated_];
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D55927C(0);
    swift_unknownObjectRelease();
  }

  return sub_21D0CF7E0(v5, &qword_27CE5A018);
}

uint64_t sub_21D55A630()
{
  v1 = v0;
  v2 = sub_21DBF5C4C();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_21DBF563C();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule;
  swift_beginAccess();
  v13 = (*(v9 + 48))(v1 + v12, 1, v8);
  v14 = 0;
  if (!v13)
  {
    sub_21D3351BC(v1 + v12, v11);
    v14 = TTRRecurrenceRuleModel.standaloneREMRecurrenceRule()();
    sub_21D335220(v11);
  }

  __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate);
  v16 = [v15 date];
  sub_21DBF55FC();

  v17 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_supportsHourlyRecurrence) == 1)
  {
    v18 = [v15 isAllDay];
  }

  else
  {
    v18 = 1;
  }

  v19 = swift_allocObject();
  swift_weakInit();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v21 = Strong;

  v22 = [v21 navigationController];

  if (!v22)
  {

LABEL_12:
    v22 = v14;
    goto LABEL_13;
  }

  v30 = v18;
  v31 = v2;
  v23 = objc_allocWithZone(TTRICustomRecurrenceViewController);
  v24 = sub_21DBF55BC();
  v25 = sub_21DBF5C0C();
  v26 = [v23 initWithStartDate:v24 timeZone:v25];

  if (v14)
  {
    [v26 setRecurrenceRule_];
  }

  aBlock[4] = sub_21D55B66C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1B6000;
  aBlock[3] = &block_descriptor_50;
  v27 = _Block_copy(aBlock);

  [v26 setCompletionBlock_];
  _Block_release(v27);
  [v26 setProhibitsHourlyRecurrence_];
  [v22 pushViewController:v26 animated:1];

  v2 = v31;
LABEL_13:

  (*(v33 + 8))(v4, v2);
  (*(v5 + 8))(v7, v32);
}

uint64_t sub_21D55AAD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TTRRecurrenceRuleModel.init(sourceRule:)(a1, v8);
    sub_21D3351BC(v8, v4);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_21D559E74(v4, 1, 1);

    sub_21D0CF7E0(v4, &qword_27CE5A018);
    return sub_21D335220(v8);
  }

  return result;
}

uint64_t sub_21D55AC6C()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_21D55ACCC(v0);
    *(v0 + 72) = v1;
    sub_21DBF8E0C();
  }

  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D55ACCC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59948);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D00;
  *(v2 + 32) = 0;
  v6 = v2;
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_supportsHourlyRecurrence) == 1)
  {
    v3 = v2;
    if (([*(a1 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_displayDate) isAllDay] & 1) == 0)
    {
      v4 = sub_21D2132F8(1, 2, 1, v3);
      *(v4 + 2) = 2;
      *(v4 + 5) = 1;
      v6 = v4;
    }
  }

  sub_21D562B98(&unk_282EA6D20);
  return v6;
}

uint64_t sub_21D55ADA0(uint64_t a1)
{
  v2 = sub_21D55AE0C();
  if (*(v2 + 16) && (v3 = sub_21D181E04(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_21D55AE0C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter____lazy_storage___indexOfRepeatType;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter____lazy_storage___indexOfRepeatType))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter____lazy_storage___indexOfRepeatType);
  }

  else
  {
    v3 = v0;
    v4 = sub_21D55AC6C();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59940);
      v7 = sub_21DBFC40C();
      v4 = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F98];
    }

    v9 = v7;
    sub_21D55B2AC(v4, 0, v5, 1, &v9);
    v2 = v9;
    *(v3 + v1) = v9;
  }

  sub_21DBF8E0C();
  return v2;
}

uint64_t sub_21D55AF0C()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0(v0 + 80);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRIRecurrenceEditorPresenter_recurrenceRule, &qword_27CE5A018);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRecurrenceEditorPresenter()
{
  result = qword_27CE5DC20;
  if (!qword_27CE5DC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D55B01C()
{
  sub_21D23C48C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21D55B0F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D55B168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D55B1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRecurrenceRuleModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D55B23C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21D55B2AC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = a1;
  v11 = *(a1 + 16);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = a3 <= a2 ? a2 : a3;
  if (a2 == a3)
  {
    goto LABEL_6;
  }

  if (a3 < a2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a2 >= a3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = a5;
  v39 = v12;
  LOBYTE(v13) = a4;
  v8 = a2;
  v9 = a3;
  v6 = *(a1 + 32);
  v14 = *a5;
  a1 = sub_21D181E04(v6);
  v16 = *(v14 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v7 = v15;
  if (*(v14 + 24) < v19)
  {
    sub_21D21A888(v19, v13 & 1);
    a1 = sub_21D181E04(v6);
    if ((v7 & 1) == (v20 & 1))
    {
      goto LABEL_15;
    }

LABEL_13:
    type metadata accessor for REMRepeatType(0);
    a1 = sub_21DBFC70C();
    __break(1u);
  }

  if (v13)
  {
LABEL_15:
    v21 = v9;
    v22 = v8;
    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_19:
  v25 = a1;
  sub_21D22333C();
  a1 = v25;
  v22 = v8;
  v21 = v9;
  if (v7)
  {
LABEL_16:
    v23 = swift_allocError();
    swift_willThrow();

    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_37;
  }

LABEL_20:
  v26 = *v5;
  *(*v5 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  *(v26[6] + 8 * a1) = v6;
  *(v26[7] + 8 * a1) = v22;
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    sub_21DBFBEEC();
    MEMORY[0x223D42AA0](0xD00000000000001BLL, 0x800000021DC448B0);
    type metadata accessor for REMRepeatType(0);
    sub_21DBFC14C();
    MEMORY[0x223D42AA0](39, 0xE100000000000000);
    sub_21DBFC31C();
    __break(1u);
    return;
  }

  v26[2] = v28;
  v13 = v11 - 1;
  if (v11 != 1)
  {
    v8 = 0;
    v39 += ~v22;
    v9 = v22 + 1;
    v11 = v22 + 1 - v21;
    while ((v8 + 1) < *(v10 + 16))
    {
      if (!(v11 + v8))
      {
        goto LABEL_6;
      }

      if (v39 == v8)
      {
        goto LABEL_33;
      }

      v6 = *(v10 + 40 + 8 * v8);
      v29 = *v5;
      v30 = sub_21D181E04(v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v18 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v18)
      {
        goto LABEL_34;
      }

      v7 = v31;
      if (v29[3] < v34)
      {
        sub_21D21A888(v34, 1);
        v30 = sub_21D181E04(v6);
        if ((v7 & 1) != (v35 & 1))
        {
          goto LABEL_13;
        }
      }

      if (v7)
      {
        goto LABEL_16;
      }

      v36 = *v5;
      *(*v5 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v36[6] + 8 * v30) = v6;
      *(v36[7] + 8 * v30) = v9 + v8;
      v37 = v36[2];
      v18 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v18)
      {
        goto LABEL_35;
      }

      v36[2] = v38;
      if (v13 == ++v8)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_36;
  }

LABEL_6:
}

uint64_t sub_21D55B674()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DC30);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DC30);
  if (qword_280D0C890 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void TTRCurrentUserActivityProvider.fetchCurrentUserActivity(completion:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CE569E8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5DC30);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "Getting NSUserActivity._currentUserActivityUUID", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11[4] = sub_21D55C2A0;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_21D55C948;
  v11[3] = &block_descriptor_51;
  v10 = _Block_copy(v11);

  [v8 _currentUserActivityUUIDWithOptions_completionHandler_];
  _Block_release(v10);
}

void sub_21D55B8F0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void (*a5)(void, void *), uint64_t a6)
{
  v101 = a5;
  v98 = a2;
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v93 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v87 - v14;
  v92 = v16;
  MEMORY[0x28223BE20](v17);
  v97 = &v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v19 - 8);
  v96 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  if (qword_27CE569E8 != -1)
  {
    swift_once();
  }

  v27 = sub_21DBF84BC();
  v28 = __swift_project_value_buffer(v27, qword_27CE5DC30);
  v100 = a1;
  sub_21D55CB10(a1, v26);
  sub_21DBF8E0C();
  v29 = a4;
  v99 = v28;
  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAE9C();

  if (os_log_type_enabled(v30, v31))
  {
    v89 = v31;
    v90 = v15;
    v95 = a6;
    v32 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    aBlock[0] = v88;
    *v32 = 136315650;
    sub_21D55CB10(v26, v23);
    v33 = (*(v11 + 48))(v23, 1, v10);
    v94 = v10;
    v91 = v11;
    if (v33 == 1)
    {
      sub_21D0CF7E0(v23, &qword_27CE58370);
      v34 = 0xE300000000000000;
      v35 = 7104878;
    }

    else
    {
      v35 = sub_21DBF565C();
      v34 = v46;
      (*(v11 + 8))(v23, v10);
    }

    sub_21D0CF7E0(v26, &qword_27CE58370);
    v47 = sub_21D0CDFB4(v35, v34, aBlock);

    *(v32 + 4) = v47;
    *(v32 + 12) = 2080;
    v48 = 7104878;
    if (a3)
    {
      v49 = v98;
    }

    else
    {
      v49 = 7104878;
    }

    v50 = 0xE300000000000000;
    if (a3)
    {
      v51 = a3;
    }

    else
    {
      v51 = 0xE300000000000000;
    }

    sub_21DBF8E0C();
    v52 = sub_21D0CDFB4(v49, v51, aBlock);

    *(v32 + 14) = v52;
    *(v32 + 22) = 2080;
    if (a4)
    {
      swift_getErrorValue();
      v48 = sub_21DBFC74C();
      v50 = v53;
    }

    v10 = v94;
    v54 = sub_21D0CDFB4(v48, v50, aBlock);

    *(v32 + 24) = v54;
    _os_log_impl(&dword_21D0C9000, v30, v89, "Got current userActivity {userActivityUUID: %s, userActivityApplicationBundleIdentifier: %s, error: %s}", v32, 0x20u);
    v55 = v88;
    swift_arrayDestroy();
    MEMORY[0x223D46520](v55, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);

    a6 = v95;
    v11 = v91;
    v15 = v90;
    v36 = v100;
    if (!a4)
    {
      goto LABEL_20;
    }
  }

  else
  {

    sub_21D0CF7E0(v26, &qword_27CE58370);
    v36 = v100;
    if (!a4)
    {
LABEL_20:
      v56 = v96;
      sub_21D55CB10(v36, v96);
      if ((*(v11 + 48))(v56, 1, v10) == 1)
      {
        sub_21D0CF7E0(v56, &qword_27CE58370);
        v57 = sub_21DBF84AC();
        v58 = sub_21DBFAEDC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_21D0C9000, v57, v58, "No current userActivity found. {resolve: nil}", v59, 2u);
          MEMORY[0x223D46520](v59, -1, -1);
        }

        v101(0, 0);
      }

      else
      {
        v60 = v97;
        v100 = *(v11 + 32);
        v100(v97, v56, v10);
        v61 = *(v11 + 16);
        v61(v15, v60, v10);
        v62 = sub_21DBF84AC();
        v63 = v10;
        v64 = sub_21DBFAE9C();
        if (os_log_type_enabled(v62, v64))
        {
          v65 = swift_slowAlloc();
          v94 = v63;
          v66 = v65;
          v67 = swift_slowAlloc();
          v96 = v61;
          v68 = v67;
          aBlock[0] = v67;
          *v66 = 136315138;
          v69 = sub_21DBF565C();
          v95 = a6;
          v71 = v70;
          v72 = *(v11 + 8);
          v98 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v73 = v94;
          v99 = v72;
          v72(v15, v94);
          v74 = sub_21D0CDFB4(v69, v71, aBlock);
          a6 = v95;

          *(v66 + 4) = v74;
          v75 = v64;
          v76 = v11;
          _os_log_impl(&dword_21D0C9000, v62, v75, "Getting NSUserActivity with uuid {uuid: %s}", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v68);
          v77 = v68;
          v61 = v96;
          MEMORY[0x223D46520](v77, -1, -1);
          MEMORY[0x223D46520](v66, -1, -1);

          v63 = v73;
        }

        else
        {

          v78 = *(v11 + 8);
          v98 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v99 = v78;
          v78(v15, v63);
          v76 = v11;
        }

        v96 = objc_opt_self();
        v79 = v97;
        v80 = sub_21DBF566C();
        v81 = v93;
        v61(v93, v79, v63);
        v82 = (*(v76 + 80) + 16) & ~*(v76 + 80);
        v83 = (v92 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        v100((v84 + v82), v81, v63);
        v85 = (v84 + v83);
        *v85 = v101;
        v85[1] = a6;
        aBlock[4] = sub_21D55CB80;
        aBlock[5] = v84;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21D55C8BC;
        aBlock[3] = &block_descriptor_10_1;
        v86 = _Block_copy(aBlock);

        [v96 _fetchUserActivityWithUUID_completionHandler_];
        _Block_release(v86);

        v99(v79, v63);
      }

      return;
    }
  }

  v37 = a4;
  v38 = sub_21DBF84AC();
  v39 = sub_21DBFAEBC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 136315138;
    swift_getErrorValue();
    v42 = sub_21DBFC74C();
    v44 = sub_21D0CDFB4(v42, v43, aBlock);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_21D0C9000, v38, v39, "Got error in _currentUserActivityUUID. {error: %s}", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x223D46520](v41, -1, -1);
    MEMORY[0x223D46520](v40, -1, -1);
  }

  v45 = a4;
  v101(0, a4);
}

void sub_21D55C2A8(void *a1, void *a2, uint64_t a3, void (*a4)(void, void), void *a5)
{
  v10 = sub_21DBF56BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  if (a2)
  {
    v17 = a2;
    if (qword_27CE569E8 != -1)
    {
      swift_once();
    }

    v18 = sub_21DBF84BC();
    __swift_project_value_buffer(v18, qword_27CE5DC30);
    (*(v11 + 16))(v16, a3, v10);
    v19 = a2;
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v54 = a4;
      v24 = v23;
      v56 = v23;
      *v22 = 136315394;
      v25 = sub_21DBF565C();
      v55 = a5;
      v27 = v26;
      (*(v11 + 8))(v16, v10);
      v28 = sub_21D0CDFB4(v25, v27, &v56);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v29 = sub_21DBFC74C();
      v31 = sub_21D0CDFB4(v29, v30, &v56);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_21D0C9000, v20, v21, "Error fetching NSUserActivity from uuid. {uuid: %s, error: %s}", v22, 0x16u);
      swift_arrayDestroy();
      v32 = v24;
      a4 = v54;
      MEMORY[0x223D46520](v32, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v16, v10);
    }

    v43 = a2;
    a4(0, a2);
  }

  else if (a1)
  {
    v33 = qword_27CE569E8;
    v34 = a1;
    if (v33 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_27CE5DC30);
    v36 = v34;
    v37 = sub_21DBF84AC();
    v38 = sub_21DBFAEDC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = a1;
      v41 = v36;
      _os_log_impl(&dword_21D0C9000, v37, v38, "Successfully obtained userActivity {userActivity: %@}", v39, 0xCu);
      sub_21D0CF7E0(v40, &unk_27CE60070);
      MEMORY[0x223D46520](v40, -1, -1);
      MEMORY[0x223D46520](v39, -1, -1);
    }

    v55 = v36;
    a4(a1, 0);

    v42 = v55;
  }

  else
  {
    v55 = a5;
    if (qword_27CE569E8 != -1)
    {
      swift_once();
    }

    v44 = sub_21DBF84BC();
    __swift_project_value_buffer(v44, qword_27CE5DC30);
    (*(v11 + 16))(v13, a3, v10);
    v45 = sub_21DBF84AC();
    v46 = sub_21DBFAEBC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v56 = v48;
      *v47 = 136315138;
      v49 = sub_21DBF565C();
      v51 = v50;
      (*(v11 + 8))(v13, v10);
      v52 = sub_21D0CDFB4(v49, v51, &v56);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_21D0C9000, v45, v46, "No NSUserActivity found for uuid, and no errors given. Maybe the system has purged it. {uuid: %s}", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x223D46520](v48, -1, -1);
      MEMORY[0x223D46520](v47, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    a4(0, 0);
  }
}

void sub_21D55C8BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_21D55C948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_21DBF568C();
    v12 = sub_21DBF56BC();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = sub_21DBF56BC();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  if (a3)
  {
    v14 = sub_21DBFA16C();
    a3 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = a4;
  v11(v10, v14, a3, a4);

  return sub_21D0CF7E0(v10, &qword_27CE58370);
}

uint64_t sub_21D55CB10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21D55CB80(void *a1, void *a2)
{
  v5 = *(sub_21DBF56BC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_21D55C2A8(a1, a2, v2 + v6, v8, v9);
}

uint64_t TTRIRemindersListDisclosureView.actionDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIRemindersListDisclosureView.actionDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRIRemindersListDisclosureView.isExpanded.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
  swift_beginAccess();
  return *(v0 + v1);
}

id TTRIRemindersListDisclosureView.isExpanded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_21D55CE2C();
}

id sub_21D55CE2C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed);
  if (v2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (v2)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed) setAlpha_];
  [v3 setUserInteractionEnabled_];
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded);
  [v6 setAlpha_];
  return [v6 setUserInteractionEnabled_];
}

id (*TTRIRemindersListDisclosureView.isExpanded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D55CF5C;
}

id sub_21D55CF5C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_21D55CE2C();
  }

  return result;
}

id TTRIRemindersListDisclosureView.tintColor.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_tintColor);

  return v1;
}

void TTRIRemindersListDisclosureView.tintColor.setter(void *a1)
{
  ObjectType = swift_getObjectType();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_setTintColor_, a1);
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, sel_tintColor);
  [v4 setTintColor_];

  v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, sel_tintColor);
  [v6 setTintColor_];
}

void (*TTRIRemindersListDisclosureView.tintColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  ObjectType = swift_getObjectType();
  v4[6].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[5].receiver = [(objc_super *)v4 tintColor];
  return sub_21D55D2B0;
}

void sub_21D55D2B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    *(v2 + 16) = *(v2 + 88);
    objc_msgSendSuper2((v2 + 16), sel_setTintColor_, v3);
  }

  else
  {
    v5 = *(v2 + 88);
    v4 = *(v2 + 96);
    *(v2 + 32) = v5;
    *(v2 + 40) = v4;
    objc_msgSendSuper2((v2 + 32), sel_setTintColor_, v3);

    v6 = *(v5 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed);
    *(v2 + 48) = v5;
    *(v2 + 56) = v4;
    v7 = objc_msgSendSuper2((v2 + 48), sel_tintColor);
    [v6 setTintColor_];

    v8 = *(v5 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded);
    *(v2 + 64) = v5;
    *(v2 + 72) = v4;
    v9 = objc_msgSendSuper2((v2 + 64), sel_tintColor);
    [v8 setTintColor_];
  }

  free(v2);
}

id TTRIRemindersListDisclosureView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *TTRIRemindersListDisclosureView.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded] = 0;
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_imageConfiguration;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v4 = sub_21D900614(2);
  v5 = [objc_opt_self() configurationWithFont:v4 scale:1];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage] = 0;
  type metadata accessor for TTRIRemindersListDisclosureButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed] = v7;
  *&v1[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded] = v8;
  v9 = *MEMORY[0x277CEC620];
  v10 = *(MEMORY[0x277CEC620] + 8);
  v11 = v7;
  v12 = v8;
  LODWORD(v13) = 1148846080;
  [v11 setLayoutSize:v9 withContentPriority:{v10, v13}];
  v14 = v12;
  LODWORD(v15) = 1148846080;
  [v14 setLayoutSize:v9 withContentPriority:{v10, v15}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC0AA00;
  *(v16 + 32) = v14;
  *(v16 + 40) = v11;
  sub_21D114EC8();
  v17 = sub_21DBFA5DC();

  v23.receiver = v1;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, sel_initWithArrangedSubviews_, v17);

  v19 = *&v18[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed];
  v20 = v18;
  [v19 setBackgroundImage:sub_21D55DFB0() forState:0];
  [*&v20[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded] setBackgroundImage:sub_21D55E0C8() forState:0];
  [v11 setAlpha_];

  [v14 setAlpha_];
  [v20 setHorizontalAlignment_];
  [v20 setVerticalAlignment_];
  [v11 addTarget:v20 action:sel_subtaskDisclosureButtonAction_ forControlEvents:0x2000];
  [v14 addTarget:v20 action:sel_subtaskDisclosureButtonAction_ forControlEvents:0x2000];
  v21 = [objc_opt_self() defaultCenter];
  [v21 addObserver:v20 selector:sel_buttonShapesSettingDidChange name:*MEMORY[0x277D76450] object:0];

  return v20;
}

id TTRIRemindersListDisclosureView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIRemindersListDisclosureView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:v3 name:*MEMORY[0x277D76450] object:0];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

id sub_21D55DB60()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage) = 0;

  [*(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed) setBackgroundImage:sub_21D55DFB0() forState:0];
  v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded);
  v4 = sub_21D55E0C8();

  return [v3 setBackgroundImage:v4 forState:0];
}

id TTRIRemindersListDisclosureView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIRemindersListDisclosureView.__allocating_init(arrangedSubviews:)(uint64_t a1)
{
  if (a1)
  {
    sub_21D114EC8();
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

uint64_t sub_21D55DFB0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage;
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage);
  if (!result)
  {
    UIAccessibilityButtonShapesEnabled();
    v3 = objc_opt_self();
    v4 = sub_21DBFA12C();

    v5 = [v3 __systemImageNamedSwift_];

    if (v5)
    {
      v6 = [v5 imageWithConfiguration_];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;

    return *(v0 + v1);
  }

  return result;
}

uint64_t sub_21D55E0C8()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage;
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage);
  if (!result)
  {
    UIAccessibilityButtonShapesEnabled();
    v3 = objc_opt_self();
    v4 = sub_21DBFA12C();

    v5 = [v3 __systemImageNamedSwift_];

    if (v5)
    {
      v6 = [v5 imageWithConfiguration_];
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;

    return *(v0 + v1);
  }

  return result;
}

void _s15RemindersUICore31TTRIRemindersListDisclosureViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded) = 0;
  v2 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_imageConfiguration;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v3 = sub_21D900614(2);
  v4 = [objc_opt_self() configurationWithFont:v3 scale:1];

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedCollapsedImage) = 0;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_cachedExpandedImage) = 0;
  sub_21DBFC31C();
  __break(1u);
}

Swift::Void __swiftcall UITextField.setTextIfChanged(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = [v1 text];
  if (!v4)
  {
    if (!object)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_21DBFA16C();
  v8 = v7;

  if (!object)
  {

    v11 = 0;
    goto LABEL_12;
  }

  if (v6 != countAndFlagsBits || v8 != object)
  {
    v10 = sub_21DBFC64C();

    if (v10)
    {
      return;
    }

LABEL_10:
    v11 = sub_21DBFA12C();
LABEL_12:
    v12 = v11;
    [v1 setText_];

    return;
  }
}

Swift::Void __swiftcall UITextView.setTextIfChanged(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (a1.value._object)
  {
    object = a1.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_21DBF8E0C();
  v4 = [v1 text];
  if (!v4)
  {
LABEL_13:
    v11 = sub_21DBFA12C();

    [v1 setText_];

    return;
  }

  v5 = v4;
  v6 = sub_21DBFA16C();
  v8 = v7;

  if (v6 == countAndFlagsBits && v8 == object)
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }
}

id UITextInput<>.ttrBeginEditing()()
{
  v1 = [v0 window];
  [v1 makeKeyWindow];

  return [v0 becomeFirstResponder];
}

id UITextInput<>.textRangeForEndOfDocument.getter()
{
  v1 = [v0 endOfDocument];
  v2 = [v0 endOfDocument];
  v3 = [v0 textRangeFromPosition:v1 toPosition:v2];

  return v3;
}

id UITextInput<>.textRange(nsRange:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 beginningOfDocument];
  v6 = [v2 positionFromPosition:v5 offset:a1];

  if (v6)
  {
    v7 = [v2 positionFromPosition:v6 offset:a2];
    if (v7)
    {
      v8 = v7;
      v9 = [v2 textRangeFromPosition:v6 toPosition:v7];

      result = v9;
      if (v9)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

void UITextInput<>.replaceRangePreservingSelection(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = UITextInput<>.textRange(nsRange:)(a1, a2);
  if (v7)
  {
    v8 = v7;
    v22 = [v4 selectedTextRange];
    v9 = sub_21DBFA12C();
    [v4 replaceRange:v8 withText:v9];

    if (v22)
    {
      v10 = MEMORY[0x223D42B30](a3, a4);
      v11 = [v8 start];
      v12 = [v8 end];
      v13 = [v4 offsetFromPosition:v11 toPosition:v12];

      v14 = v10 - v13;
      if (__OFSUB__(v10, v13))
      {
        __break(1u);
        return;
      }

      v15 = [v22 start];
      v16 = sub_21D55E9A8(v15, v4, v8, v10 - v13);

      if (v16)
      {
        v17 = [v22 end];
        v18 = sub_21D55E9A8(v17, v4, v8, v14);

        if (v18)
        {
          v19 = [v4 textRangeFromPosition:v16 toPosition:v18];
          if (v19)
          {
            v20 = v19;
            [v4 setSelectedTextRange_];

            v16 = v20;
          }

          else
          {
            v20 = v16;
            v16 = v18;
          }
        }
      }

      v21 = v22;
    }

    else
    {
      v21 = v8;
    }
  }
}

id sub_21D55E9A8(void *a1, void *a2, id a3, uint64_t a4)
{
  v8 = [a3 end];
  v9 = [a2 offsetFromPosition:v8 toPosition:a1];

  if ((v9 & 0x8000000000000000) == 0)
  {
    return [a2 positionFromPosition:a1 offset:a4];
  }

  v11 = [a3 start];
  v12 = [a2 offsetFromPosition:v11 toPosition:a1];

  if ((v12 & 0x8000000000000000) != 0)
  {
    return a1;
  }

  v13 = [a3 end];
  v14 = [a2 positionFromPosition:v13 offset:a4];

  return v14;
}

void (*sub_21D55EAD8(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 inputAccessoryView];
  return sub_21D55EB34;
}

void sub_21D55EB34(id *a1)
{
  v1 = *a1;
  [a1[1] setInputAccessoryView_];
}

void (*sub_21D55EB7C(void *a1))(id *)
{
  a1[1] = v1;
  *a1 = [v1 inputAccessoryView];
  return sub_21D55EC1C;
}

uint64_t Locale.uses12HourTime.getter()
{
  v0 = objc_opt_self();
  v1 = sub_21DBFA12C();
  v2 = sub_21DBF574C();
  v3 = [v0 dateFormatFromTemplate:v1 options:0 locale:v2];

  if (v3)
  {
    sub_21DBFA16C();

    sub_21D176F0C();
    LOBYTE(v3) = sub_21DBFBBDC();
  }

  return v3 & 1;
}

BOOL Locale.Language.isEquivalentOrMoreSpecific(than:)(uint64_t a1)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DCE0);
  MEMORY[0x28223BE20](v91);
  v92 = v87 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DCE8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v104 = v87 - v8;
  MEMORY[0x28223BE20](v9);
  v96 = v87 - v10;
  MEMORY[0x28223BE20](v11);
  v95 = v87 - v12;
  v99 = sub_21DBF579C();
  v105 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v88 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = v87 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DCF0);
  MEMORY[0x28223BE20](v93);
  v100 = v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DCF8);
  MEMORY[0x28223BE20](v17 - 8);
  v90 = v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = v87 - v20;
  MEMORY[0x28223BE20](v21);
  v98 = v87 - v22;
  MEMORY[0x28223BE20](v23);
  v101 = v87 - v24;
  v103 = sub_21DBF578C();
  v107 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v89 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v102 = v87 - v27;
  v28 = sub_21DBF572C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v94 = v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DD00);
  MEMORY[0x28223BE20](v31);
  v33 = v87 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF40);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = v87 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = v87 - v41;
  if (sub_21DBF57CC())
  {
    return 1;
  }

  v87[0] = v6;
  v87[1] = v1;
  sub_21DBF57DC();
  v87[2] = a1;
  sub_21DBF57DC();
  v44 = *(v31 + 48);
  sub_21D0D3954(v42, v33, &qword_27CE5CF40);
  sub_21D0D3954(v39, &v33[v44], &qword_27CE5CF40);
  v45 = *(v29 + 48);
  if (v45(v33, 1, v28) == 1)
  {
    sub_21D0CF7E0(v39, &qword_27CE5CF40);
    sub_21D0CF7E0(v42, &qword_27CE5CF40);
    if (v45(&v33[v44], 1, v28) == 1)
    {
      sub_21D0CF7E0(v33, &qword_27CE5CF40);
      goto LABEL_12;
    }

LABEL_8:
    v46 = &qword_27CE5DD00;
    v47 = v33;
LABEL_9:
    sub_21D0CF7E0(v47, v46);
    return 0;
  }

  sub_21D0D3954(v33, v36, &qword_27CE5CF40);
  if (v45(&v33[v44], 1, v28) == 1)
  {
    sub_21D0CF7E0(v39, &qword_27CE5CF40);
    sub_21D0CF7E0(v42, &qword_27CE5CF40);
    (*(v29 + 8))(v36, v28);
    goto LABEL_8;
  }

  v48 = v94;
  (*(v29 + 32))(v94, &v33[v44], v28);
  sub_21D55FB94(&qword_27CE5DD18, MEMORY[0x277CC9640]);
  v49 = sub_21DBFA10C();
  v50 = *(v29 + 8);
  v50(v48, v28);
  sub_21D0CF7E0(v39, &qword_27CE5CF40);
  sub_21D0CF7E0(v42, &qword_27CE5CF40);
  v50(v36, v28);
  sub_21D0CF7E0(v33, &qword_27CE5CF40);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v51 = v101;
  sub_21DBF57EC();
  v52 = v107;
  v53 = *(v107 + 48);
  v54 = v103;
  if (v53(v51, 1, v103) == 1)
  {
    v55 = v99;
    v56 = v104;
    v57 = v105;
    v58 = v106;
LABEL_14:
    sub_21D0CF7E0(v51, &qword_27CE5DCF8);
    goto LABEL_15;
  }

  v61 = v102;
  v94 = *(v52 + 32);
  (v94)(v102, v51, v54);
  v62 = v98;
  sub_21DBF57EC();
  v63 = v97;
  (*(v52 + 16))(v97, v61, v54);
  (*(v52 + 56))(v63, 0, 1, v54);
  v64 = *(v93 + 48);
  v65 = v100;
  sub_21D0D3954(v62, v100, &qword_27CE5DCF8);
  v101 = v64;
  v66 = v65;
  sub_21D0D3954(v63, &v64[v65], &qword_27CE5DCF8);
  v67 = v53(v65, 1, v54);
  v68 = v54;
  v57 = v105;
  if (v67 == 1)
  {
    sub_21D0CF7E0(v63, &qword_27CE5DCF8);
    v69 = v100;
    sub_21D0CF7E0(v62, &qword_27CE5DCF8);
    (*(v107 + 8))(v102, v68);
    v70 = v53(&v101[v69], 1, v68);
    v56 = v104;
    v58 = v106;
    if (v70 == 1)
    {
      v51 = v69;
      v55 = v99;
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  v74 = v65;
  v75 = v90;
  sub_21D0D3954(v74, v90, &qword_27CE5DCF8);
  v76 = v101;
  if (v53(&v101[v66], 1, v68) == 1)
  {
    sub_21D0CF7E0(v97, &qword_27CE5DCF8);
    sub_21D0CF7E0(v98, &qword_27CE5DCF8);
    v77 = *(v107 + 8);
    v77(v102, v68);
    v77(v75, v68);
    v69 = v100;
LABEL_25:
    v46 = &qword_27CE5DCF0;
    v47 = v69;
    goto LABEL_9;
  }

  v80 = v89;
  (v94)(v89, &v76[v66], v68);
  sub_21D55FB94(&qword_27CE5DD10, MEMORY[0x277CC9698]);
  v81 = v66;
  v82 = sub_21DBFA10C();
  v83 = *(v107 + 8);
  v83(v80, v68);
  sub_21D0CF7E0(v97, &qword_27CE5DCF8);
  sub_21D0CF7E0(v98, &qword_27CE5DCF8);
  v83(v102, v68);
  v83(v75, v68);
  sub_21D0CF7E0(v81, &qword_27CE5DCF8);
  v56 = v104;
  v58 = v106;
  v55 = v99;
  if ((v82 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v59 = v95;
  sub_21DBF57FC();
  v60 = *(v57 + 48);
  if (v60(v59, 1, v55) == 1)
  {
LABEL_16:
    sub_21D0CF7E0(v59, &qword_27CE5DCE8);
    return 1;
  }

  v107 = *(v57 + 32);
  (v107)(v58, v59, v55);
  v71 = v96;
  sub_21DBF57FC();
  (*(v57 + 16))(v56, v58, v55);
  (*(v57 + 56))(v56, 0, 1, v55);
  v72 = *(v91 + 48);
  v73 = v71;
  v59 = v92;
  sub_21D0D3954(v73, v92, &qword_27CE5DCE8);
  sub_21D0D3954(v56, v59 + v72, &qword_27CE5DCE8);
  if (v60(v59, 1, v55) == 1)
  {
    sub_21D0CF7E0(v56, &qword_27CE5DCE8);
    sub_21D0CF7E0(v96, &qword_27CE5DCE8);
    (*(v57 + 8))(v106, v55);
    if (v60(v59 + v72, 1, v55) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

  v78 = v87[0];
  sub_21D0D3954(v59, v87[0], &qword_27CE5DCE8);
  if (v60(v59 + v72, 1, v55) == 1)
  {
    sub_21D0CF7E0(v104, &qword_27CE5DCE8);
    sub_21D0CF7E0(v96, &qword_27CE5DCE8);
    v79 = *(v105 + 8);
    v79(v106, v55);
    v79(v78, v55);
LABEL_28:
    v46 = &qword_27CE5DCE0;
    v47 = v59;
    goto LABEL_9;
  }

  v84 = v88;
  (v107)(v88, v59 + v72, v55);
  sub_21D55FB94(&qword_27CE5DD08, MEMORY[0x277CC96C0]);
  v85 = sub_21DBFA10C();
  v86 = *(v105 + 8);
  v86(v84, v55);
  sub_21D0CF7E0(v104, &qword_27CE5DCE8);
  sub_21D0CF7E0(v96, &qword_27CE5DCE8);
  v86(v106, v55);
  v86(v78, v55);
  sub_21D0CF7E0(v59, &qword_27CE5DCE8);
  return (v85 & 1) != 0;
}

uint64_t sub_21D55FB94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D55FBDC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DD20);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DD20);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRFeedbackProvider.__allocating_init(hostingViewController:)(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = 0;
  sub_21D55FE70((v2 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_autoCategorizationFeedbackSubject));
  sub_21D5602FC((v2 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_suggestedRemindersFeedbackSubject));
  swift_unknownObjectWeakAssign();

  return v2;
}

uint64_t TTRFeedbackProvider.init(hostingViewController:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 24) = 0;
  sub_21D55FE70((v1 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_autoCategorizationFeedbackSubject));
  sub_21D5602FC((v1 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_suggestedRemindersFeedbackSubject));
  swift_unknownObjectWeakAssign();

  return v1;
}

void sub_21D55FD98()
{
  v1 = *(v0 + 24);
  if (v1 || (sub_21DBF9DDC(), v2 = sub_21D560D9C(&qword_27CE5DD48), v3 = swift_unknownObjectRetain(), v4 = MEMORY[0x223D42580](v3, v2), v5 = *(v0 + 24), *(v0 + 24) = v4, v5, (v1 = *(v0 + 24)) != 0))
  {
    v6 = v1;
    sub_21DBF9DBC();
  }
}

uint64_t sub_21D55FE70@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DD68);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v4;
  v5 = sub_21DBF5E0C();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D085C8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DD70);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58250);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D20;
  v13 = v12 + v11;
  v14 = *(v9 + 48);
  v15 = *MEMORY[0x277D08650];
  v16 = sub_21DBF5E4C();
  v17 = *(*(v16 - 8) + 104);
  v17(v13, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21DC08D00;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF516C();
  *(v13 + v14) = v18;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = *(v9 + 48);
  v17(v13 + v10, *MEMORY[0x277D08648], v16);
  *(v13 + v10 + v21) = &unk_282EA6FD0;
  sub_21D178BC0(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = sub_21DBF5E2C();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v24 = objc_allocWithZone(sub_21DBF5E3C());
  v25 = sub_21DBF5E1C();
  v26 = v33;
  *v33 = v25;
  v27 = *MEMORY[0x277D08530];
  v28 = sub_21DBF5DFC();
  return (*(*(v28 - 8) + 104))(v26, v27, v28);
}

uint64_t sub_21D5602FC@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DD68);
  MEMORY[0x28223BE20](v1 - 8);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v4;
  v5 = sub_21DBF5E0C();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D085C8], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DD70);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58250);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D20;
  v13 = v12 + v11;
  v14 = *(v9 + 48);
  v15 = *MEMORY[0x277D08650];
  v16 = sub_21DBF5E4C();
  v17 = *(*(v16 - 8) + 104);
  v17(v13, v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21DC08D00;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v19 = sub_21DBF516C();
  *(v13 + v14) = v18;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = *(v9 + 48);
  v17(v13 + v10, *MEMORY[0x277D08648], v16);
  *(v13 + v10 + v21) = &unk_282EA7000;
  sub_21D178BC0(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = sub_21DBF5E2C();
  v23 = *(*(v22 - 8) + 56);
  v23(v31, 1, 1, v22);
  v23(v32, 1, 1, v22);
  v24 = objc_allocWithZone(sub_21DBF5E3C());
  v25 = sub_21DBF5E1C();
  v26 = v33;
  *v33 = v25;
  v27 = *MEMORY[0x277D08530];
  v28 = sub_21DBF5DFC();
  return (*(*(v28 - 8) + 104))(v26, v27, v28);
}

uint64_t type metadata accessor for TTRFeedbackProvider()
{
  result = qword_27CE5DD58;
  if (!qword_27CE5DD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRFeedbackProvider.deinit()
{
  MEMORY[0x223D46650](v0 + 16);

  v1 = OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_autoCategorizationFeedbackSubject;
  v2 = sub_21DBF5DFC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_suggestedRemindersFeedbackSubject, v2);
  return v0;
}

uint64_t TTRFeedbackProvider.__deallocating_deinit()
{
  MEMORY[0x223D46650](v0 + 16);

  v1 = OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_autoCategorizationFeedbackSubject;
  v2 = sub_21DBF5DFC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRFeedbackProvider_suggestedRemindersFeedbackSubject, v2);

  return swift_deallocClassInstance();
}

id TTRFeedbackProvider.viewControllerForPresentation(controller:)()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v1 init];
  }

  return result;
}

id sub_21D5609AC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75D28]);

    return [v1 init];
  }

  return result;
}

void sub_21D560A00()
{
  sub_21D560D9C(&qword_27CE5DD48);

  JUMPOUT(0x223D425A0);
}

void sub_21D560A9C(void *a1)
{
  v2 = v1;
  if (qword_27CE569F0 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE5DD20);
  v5 = a1;
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRFeedbackProvider: Evaluation result: %@", v8, 0xCu);
    sub_21D560EB8(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  v11 = *(v2 + 24);
  *(v2 + 24) = 0;
}

void sub_21D560BE8(void *a1)
{
  if (qword_27CE569F0 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE5DD20);
  v4 = a1;
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRFeedbackProvider: Evaluation did fail: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  v12 = *(v1 + 24);
  *(v1 + 24) = 0;
}

uint64_t sub_21D560D9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTRFeedbackProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D560DE8()
{
  result = sub_21DBF5DFC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D560EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int __swiftcall TTRReminderListPickerViewModel.numberOfLists(inSectionAt:)(Swift::Int inSectionAt)
{
  if (inSectionAt < 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 16) > inSectionAt)
  {
    return *(*(*v1 + 48 * inSectionAt + 72) + 16);
  }

  __break(1u);
  return inSectionAt;
}

uint64_t TTRReminderListPickerViewModel.sectionHeader(at:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(*v2 + 16) <= result)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = -1;
  }

  else if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *v2 + 48 * result;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    v8 = *(v3 + 64);
    *(a2 + 32) = v8;
    return sub_21D1B201C(v4, v5, v6, v7, v8);
  }

  return result;
}

double TTRReminderListPickerViewModel.list(at:inSectionAt:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21DBF676C();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[1];
  v42 = *v3;
  v43 = v10;
  TTRReminderListPickerViewModel.remListOrCustomSmartList(at:inSectionAt:)(a1, a2, &v69);
  v11 = v69;
  v12 = v70;
  if (v70)
  {
    v13 = v69;
    sub_21DBF674C();
    TTRAccountsListsViewModel.List.init(remSmartList:reminderCounts:parentList:)(v13, v9, 0, &v42);
  }

  else
  {
    v69 = 0;
    v14 = v11;
    sub_21DBF674C();
    TTRAccountsListsViewModel.List.init(remList:sharingContactsData:reminderCounts:)(v14, &v69, v9, &v42);
  }

  v41 = v42;
  v40 = v43;
  v39 = v44;
  v38 = v45;
  v37 = v46;
  v36 = v47;
  v35 = v48;
  v34 = v49;
  v33 = v50;
  v32 = v51;
  v15 = v52;
  v31 = v53;
  v16 = v54;
  v30 = v55;
  v29 = v56;
  HIDWORD(v28) = v57;
  LODWORD(v28) = v58;
  v17 = v67;
  v18 = v68;
  v19 = [v11 objectID];
  if (v10)
  {
    sub_21D0D8CF0(0, &qword_280D17880);
    v20 = v10;
    v21 = v12;
    v22 = v20;
    v23 = sub_21DBFB63C();

    v12 = v21;
  }

  else
  {
    v23 = 0;
  }

  LOBYTE(v69) = v16;
  v24 = v40;
  *a3 = v41;
  *(a3 + 8) = v24;
  *(a3 + 16) = v39;
  *(a3 + 24) = v38;
  v25 = v36;
  *(a3 + 40) = v37;
  *(a3 + 48) = v25;
  *(a3 + 56) = v35;
  *(a3 + 72) = v34;
  *(a3 + 88) = v33;
  *(a3 + 104) = v32;
  *(a3 + 120) = v15;
  *(a3 + 128) = v31;
  *(a3 + 144) = v69;
  *(a3 + 145) = v30;
  *(a3 + 146) = v29;
  *(a3 + 147) = BYTE4(v28);
  *(a3 + 148) = v28;
  *(a3 + 152) = v27[3];
  *(a3 + 168) = v27[2];
  *(a3 + 184) = v27[1];
  result = *v27;
  *(a3 + 200) = v27[0];
  *(a3 + 216) = v17;
  *(a3 + 217) = v18;
  *(a3 + 218) = v12;
  *(a3 + 219) = v23 & 1;
  return result;
}

uint64_t TTRReminderListPickerViewModel.remListOrCustomSmartList(at:inSectionAt:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21DBF648C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - v12;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(*v3 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(*v3 + 48 * a2 + 72);
  if (*(v15 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1;
  v17 = *(v8 + 16);
  v17(&v22 - v12, v16, v7, v13);
  (v17)(v10, v14, v7);
  v18 = (*(v8 + 88))(v10, v7);
  if (v18 == *MEMORY[0x277D45028] || v18 == *MEMORY[0x277D45020])
  {
    v20 = v18 != *MEMORY[0x277D45028];
    (*(v8 + 8))(v14, v7);
    result = (*(v8 + 96))(v10, v7);
    *a3 = *v10;
    *(a3 + 8) = v20;
    return result;
  }

LABEL_15:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

id static TTRReminderListPickerViewModel.CustomSmartListPredicate.fromSpecificAccountOrExcludeAll(accountID:)@<X0>(id a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  *a2 = v2;
  return a1;
}

uint64_t TTRReminderListPickerViewModel.init(accounts:customSmartListPredicate:disabledListID:)@<X0>(uint64_t a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v113 = a4;
  v111 = sub_21DBF648C();
  v117 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v114 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v105 = (&v99 - v9);
  MEMORY[0x28223BE20](v10);
  v106 = (&v99 - v11);
  MEMORY[0x28223BE20](v12);
  v107 = &v99 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v99 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v99 - v18);
  v118 = sub_21DBF64DC();
  v20 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v99 - v27;
  v29 = *a2;
  v30 = *(a1 + 16);
  if (v30 >= 2)
  {
    v112 = a3;
    v31 = 0;
    v16 = 0;
    v120[0] = MEMORY[0x277D84F90];
    a3 = v20 + 16;
    v32 = v20 + 8;
    while (v31 < *(a1 + 16))
    {
      v33 = v118;
      (*(v20 + 16))(v28, a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v31, v118, v26);
      sub_21D563B3C(v28, v29, &v119);
      ++v31;
      (*v32)(v28, v33);
      sub_21D562230(v119);
      if (v30 == v31)
      {
        sub_21D22BF80(v29);

        v29 = v120[0];
        a3 = v112;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_60:
    swift_once();
    goto LABEL_9;
  }

  if (!v30)
  {
    sub_21D22BF80(*a2);

    v29 = MEMORY[0x277D84F90];
LABEL_58:
    v95 = v113;
    *v113 = v29;
    v95[1] = a3;
    return result;
  }

  v35 = v25;
  v36 = v118;
  (*(v20 + 16))(v22, a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v118, v26);

  (*(v20 + 32))(v35, v22, v36);
  v120[0] = v29;
  sub_21D567410(v35, v120);
  v30 = v37;
  v32 = v38;
  v40 = v39;
  sub_21D22BF80(v29);
  v104 = v35;
  if ((v40 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21DC08D00;
    v51 = sub_21DBF64CC();
    v52 = [v51 displayName];

    v53 = sub_21DBFA16C();
    v107 = v54;

    if (v30 >> 62)
    {
      v41 = sub_21DBFBD7C();
    }

    else
    {
      v41 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v114;
    v55 = MEMORY[0x277D84F90];
    if (v41)
    {
      v120[0] = MEMORY[0x277D84F90];
      sub_21D18E93C(0, v41 & ~(v41 >> 63), 0);
      if (v41 < 0)
      {
        goto LABEL_65;
      }

      v106 = v53;
      v103 = v29;
      v115 = v32;
      v116 = v30;
      v112 = a3;
      v55 = v120[0];
      if ((v30 & 0xC000000000000001) != 0)
      {
        v56 = 0;
        v57 = *MEMORY[0x277D45028];
        v58 = (v117 + 104);
        v114 = (v117 + 32);
        v59 = v111;
        do
        {
          *v19 = MEMORY[0x223D44740](v56, v116);
          (*v58)(v19, v57, v59);
          v120[0] = v55;
          v61 = *(v55 + 16);
          v60 = *(v55 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_21D18E93C(v60 > 1, v61 + 1, 1);
            v55 = v120[0];
          }

          ++v56;
          *(v55 + 16) = v61 + 1;
          (*(v117 + 32))(v55 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v61, v19, v59);
        }

        while (v41 != v56);
      }

      else
      {
        v78 = (v30 + 32);
        LODWORD(v114) = *MEMORY[0x277D45028];
        v109 = *(v117 + 104);
        v110 = v117 + 104;
        v108 = v117 + 32;
        v79 = v111;
        do
        {
          v80 = *v78;
          *v16 = *v78;
          v109(v16, v114, v79);
          v120[0] = v55;
          v82 = *(v55 + 16);
          v81 = *(v55 + 24);
          v83 = v80;
          if (v82 >= v81 >> 1)
          {
            sub_21D18E93C(v81 > 1, v82 + 1, 1);
            v55 = v120[0];
          }

          *(v55 + 16) = v82 + 1;
          (*(v117 + 32))(v55 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v82, v16, v79);
          ++v78;
          --v41;
        }

        while (v41);
      }

      a3 = v112;
      v32 = v115;
      v30 = v116;
      v29 = v103;
      v53 = v106;
    }

    v84 = v107;
    *(v29 + 32) = v53;
    *(v29 + 40) = v84;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 1;
    *(v29 + 72) = v55;
    v85 = v30;
    v86 = v32;
    v87 = 0;
LABEL_57:
    sub_21D56781C(v85, v86, v87);
    result = (*(v20 + 8))(v104, v118);
    goto LABEL_58;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21DC08D20;
  if (qword_280D1BAA8 != -1)
  {
    goto LABEL_60;
  }

LABEL_9:
  v41 = 0xEB00000000656C62;
  v102 = qword_280D1BAB0;
  v42 = sub_21DBF516C();
  if (v30 >> 62)
  {
    v96 = v42;
    v97 = v43;
    v98 = sub_21DBFBD7C();
    v43 = v97;
    v44 = v98;
    v42 = v96;
  }

  else
  {
    v44 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = MEMORY[0x277D84F90];
  v112 = a3;
  v115 = v32;
  v116 = v30;
  v103 = v29;
  if (v44)
  {
    v100 = v43;
    v101 = v42;
    v120[0] = MEMORY[0x277D84F90];
    sub_21D18E93C(0, v44 & ~(v44 >> 63), 0);
    if ((v44 & 0x8000000000000000) == 0)
    {
      v45 = v120[0];
      if ((v30 & 0xC000000000000001) != 0)
      {
        v46 = 0;
        LODWORD(v114) = *MEMORY[0x277D45028];
        v47 = (v117 + 104);
        v48 = v111;
        do
        {
          *v16 = MEMORY[0x223D44740](v46, v116);
          (*v47)(v16, v114, v48);
          v120[0] = v45;
          v50 = *(v45 + 16);
          v49 = *(v45 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_21D18E93C(v49 > 1, v50 + 1, 1);
            v45 = v120[0];
          }

          ++v46;
          *(v45 + 16) = v50 + 1;
          (*(v117 + 32))(v45 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v50, v16, v48);
        }

        while (v44 != v46);
      }

      else
      {
        v62 = (v30 + 32);
        LODWORD(v114) = *MEMORY[0x277D45028];
        v109 = *(v117 + 104);
        v110 = v117 + 104;
        v108 = v117 + 32;
        v63 = v111;
        v64 = v106;
        do
        {
          v65 = *v62;
          *v64 = *v62;
          v109(v64, v114, v63);
          v120[0] = v45;
          v66 = *(v45 + 16);
          v67 = *(v45 + 24);
          v68 = v65;
          if (v66 >= v67 >> 1)
          {
            sub_21D18E93C(v67 > 1, v66 + 1, 1);
            v45 = v120[0];
          }

          *(v45 + 16) = v66 + 1;
          (*(v117 + 32))(v45 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v66, v64, v63);
          ++v62;
          --v44;
        }

        while (v44);
      }

      a3 = v112;
      v32 = v115;
      v30 = v116;
      v29 = v103;
      v42 = v101;
      v43 = v100;
      goto LABEL_35;
    }

    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_35:
  *(v29 + 32) = v42;
  *(v29 + 40) = v43;
  *(v29 + 48) = 0;
  *(v29 + 56) = 0;
  *(v29 + 64) = 2;
  *(v29 + 72) = v45;
  v16 = sub_21DBF516C();
  v41 = v69;
  if (v32 >> 62)
  {
    v70 = sub_21DBFBD7C();
  }

  else
  {
    v70 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = MEMORY[0x277D84F90];
  if (!v70)
  {
LABEL_56:
    *(v29 + 80) = v16;
    *(v29 + 88) = v41;
    *(v29 + 96) = 0;
    *(v29 + 104) = 0;
    *(v29 + 112) = 2;
    *(v29 + 120) = v71;
    v85 = v30;
    v86 = v32;
    v87 = 1;
    goto LABEL_57;
  }

  v120[0] = MEMORY[0x277D84F90];
  sub_21D18E93C(0, v70 & ~(v70 >> 63), 0);
  if ((v70 & 0x8000000000000000) == 0)
  {
    v102 = v41;
    v106 = v16;
    v71 = v120[0];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v72 = 0;
      LODWORD(v114) = *MEMORY[0x277D45020];
      v73 = (v117 + 104);
      v74 = v111;
      v75 = v107;
      do
      {
        *v75 = MEMORY[0x223D44740](v72, v115);
        (*v73)(v75, v114, v74);
        v120[0] = v71;
        v77 = *(v71 + 16);
        v76 = *(v71 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_21D18E93C(v76 > 1, v77 + 1, 1);
          v71 = v120[0];
        }

        ++v72;
        *(v71 + 16) = v77 + 1;
        (*(v117 + 32))(v71 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v77, v75, v74);
      }

      while (v70 != v72);
    }

    else
    {
      v88 = (v32 + 32);
      LODWORD(v114) = *MEMORY[0x277D45020];
      v109 = *(v117 + 104);
      v110 = v117 + 104;
      v108 = v117 + 32;
      v89 = v111;
      v90 = v105;
      do
      {
        v91 = *v88;
        *v90 = *v88;
        v109(v90, v114, v89);
        v120[0] = v71;
        v92 = *(v71 + 16);
        v93 = *(v71 + 24);
        v94 = v91;
        if (v92 >= v93 >> 1)
        {
          sub_21D18E93C(v93 > 1, v92 + 1, 1);
          v71 = v120[0];
        }

        *(v71 + 16) = v92 + 1;
        (*(v117 + 32))(v71 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v92, v90, v89);
        ++v88;
        --v70;
      }

      while (v70);
    }

    a3 = v112;
    v32 = v115;
    v30 = v116;
    v41 = v102;
    v29 = v103;
    v16 = v106;
    goto LABEL_56;
  }

LABEL_66:
  __break(1u);

  (*v32)(v41, v120);

  __break(1u);
  return result;
}

uint64_t sub_21D562230(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D2111E4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D5623AC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D210A84(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D562524(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D2120C4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D56261C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D211FB8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D56273C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_21DBFBF9C();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DF70);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21D562840(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D2129B0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D562960(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21DBFBD7C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21DADFE64();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21D565B20(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21D562AA4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21D21329C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D562B98(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21D2132F8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21D562CDC(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D2138B4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58670);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21D562DE0(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D213A0C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58660);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D562F40(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D213408(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D563038(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21D2140D8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D563124(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D2142F8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D563244(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D214580(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D56333C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D2147F8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D56345C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21D563628(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D212DD4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D563720(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21D2146A4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21D563898(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_21DBFBD7C();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21D563998()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DD80);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DD80);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderListPickerViewModel.List.list.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v30 = v1[10];
  v31 = v2;
  v4 = v1[11];
  v32[0] = v1[12];
  *(v32 + 10) = *(v1 + 202);
  v5 = v1[7];
  v7 = v1[5];
  v26 = v1[6];
  v6 = v26;
  v27 = v5;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[3];
  v13 = v1[1];
  v22 = v1[2];
  v12 = v22;
  v23 = v11;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  *(a1 + 202) = *(v1 + 202);
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v7;
  *a1 = v18;
  a1[1] = v13;
  return sub_21D567868(v21, &v20);
}

size_t sub_21D563B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v103 = sub_21DBF648C();
  v112 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v8 = (&v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v98 = (&v92 - v10);
  MEMORY[0x28223BE20](v11);
  v99 = (&v92 - v12);
  MEMORY[0x28223BE20](v13);
  v100 = &v92 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = (&v92 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = (&v92 - v19);
  v113 = a2;
  sub_21D567410(a1, &v113);
  v22 = v21;
  v110 = v23;
  v111 = v21;
  v104 = v24;
  if ((v24 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_21DC08D00;
    v40 = sub_21DBF64CC();
    v41 = [v40 displayName];

    v42 = sub_21DBFA16C();
    v100 = v43;

    if (v22 >> 62)
    {
      v44 = sub_21DBFBD7C();
    }

    else
    {
      v44 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = MEMORY[0x277D84F90];
    if (v44)
    {
      v113 = MEMORY[0x277D84F90];
      result = sub_21D18E93C(0, v44 & ~(v44 >> 63), 0);
      if (v44 < 0)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v99 = v42;
      v101 = a3;
      v102 = v3;
      v45 = v113;
      if ((v22 & 0xC000000000000001) != 0)
      {
        v46 = 0;
        v109 = *MEMORY[0x277D45028];
        v47 = (v112 + 104);
        v108 = v112 + 32;
        v48 = v103;
        do
        {
          *v20 = MEMORY[0x223D44740](v46, v111);
          (*v47)(v20, v109, v48);
          v113 = v45;
          v50 = *(v45 + 16);
          v49 = *(v45 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_21D18E93C(v49 > 1, v50 + 1, 1);
            v45 = v113;
          }

          ++v46;
          *(v45 + 16) = v50 + 1;
          (*(v112 + 32))(v45 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v50, v20, v48);
        }

        while (v44 != v46);
      }

      else
      {
        v73 = (v22 + 32);
        v109 = *MEMORY[0x277D45028];
        v107 = *(v112 + 104);
        v108 = v112 + 104;
        v106 = v112 + 32;
        v74 = v103;
        do
        {
          v75 = *v73;
          *v8 = *v73;
          v107(v8, v109, v74);
          v113 = v45;
          v77 = *(v45 + 16);
          v76 = *(v45 + 24);
          v78 = v75;
          if (v77 >= v76 >> 1)
          {
            sub_21D18E93C(v76 > 1, v77 + 1, 1);
            v45 = v113;
          }

          *(v45 + 16) = v77 + 1;
          (*(v112 + 32))(v45 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v77, v8, v74);
          ++v73;
          --v44;
        }

        while (v44);
      }

      a3 = v101;
      v22 = v111;
      v42 = v99;
    }

    v58 = v105;
    v79 = v100;
    *(v105 + 32) = v42;
    *(v58 + 40) = v79;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 1;
    *(v58 + 72) = v45;
    v63 = v110;
LABEL_51:
    result = sub_21D56781C(v22, v63, v104 & 1);
    *a3 = v58;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDA0);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_21DC08D20;
  v25 = sub_21DBF64CC();
  v26 = [v25 displayName];

  v27 = sub_21DBFA16C();
  v97 = v28;

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v29 = qword_280D1BAB0;
  v31 = sub_21DBF516C();
  v96 = v29;
  if (v22 >> 62)
  {
    v87 = v30;
    v88 = sub_21DBFBD7C();
    v30 = v87;
    v32 = v88;
  }

  else
  {
    v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x277D84F90];
  v101 = a3;
  v102 = v3;
  if (!v32)
  {
    goto LABEL_29;
  }

  v95 = v30;
  v113 = MEMORY[0x277D84F90];
  result = sub_21D18E93C(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  v93 = v31;
  v94 = v27;
  v33 = v113;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v35 = 0;
    v109 = *MEMORY[0x277D45028];
    v36 = (v112 + 104);
    v108 = v112 + 32;
    v37 = v103;
    do
    {
      *v17 = MEMORY[0x223D44740](v35, v111);
      (*v36)(v17, v109, v37);
      v113 = v33;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_21D18E93C(v38 > 1, v39 + 1, 1);
        v33 = v113;
      }

      ++v35;
      *(v33 + 16) = v39 + 1;
      (*(v112 + 32))(v33 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v39, v17, v37);
    }

    while (v32 != v35);
  }

  else
  {
    v51 = (v22 + 32);
    v109 = *MEMORY[0x277D45028];
    v107 = *(v112 + 104);
    v108 = v112 + 104;
    v106 = v112 + 32;
    v52 = v103;
    v53 = v99;
    do
    {
      v54 = *v51;
      *v53 = *v51;
      v107(v53, v109, v52);
      v113 = v33;
      v55 = *(v33 + 16);
      v56 = *(v33 + 24);
      v57 = v54;
      if (v55 >= v56 >> 1)
      {
        sub_21D18E93C(v56 > 1, v55 + 1, 1);
        v33 = v113;
      }

      *(v33 + 16) = v55 + 1;
      (*(v112 + 32))(v33 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v55, v53, v52);
      ++v51;
      --v32;
    }

    while (v32);
  }

  a3 = v101;
  v31 = v93;
  v27 = v94;
  v30 = v95;
LABEL_29:
  v58 = v105;
  v59 = v97;
  *(v105 + 32) = v27;
  *(v58 + 40) = v59;
  *(v58 + 48) = v31;
  *(v58 + 56) = v30;
  *(v58 + 64) = 0;
  *(v58 + 72) = v33;
  v60 = sub_21DBF516C();
  v62 = v61;
  v63 = v110;
  if (v110 >> 62)
  {
    v89 = v110;
    v90 = v62;
    v91 = sub_21DBFBD7C();
    v62 = v90;
    v63 = v89;
    v64 = v91;
  }

  else
  {
    v64 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = MEMORY[0x277D84F90];
  v22 = v111;
  if (!v64)
  {
LABEL_50:
    *(v58 + 80) = v60;
    *(v58 + 88) = v62;
    *(v58 + 96) = 0;
    *(v58 + 104) = 0;
    *(v58 + 112) = 2;
    *(v58 + 120) = v65;
    goto LABEL_51;
  }

  v99 = v62;
  v66 = v63;
  v113 = MEMORY[0x277D84F90];
  result = sub_21D18E93C(0, v64 & ~(v64 >> 63), 0);
  if ((v64 & 0x8000000000000000) == 0)
  {
    v97 = v60;
    v65 = v113;
    if ((v66 & 0xC000000000000001) != 0)
    {
      v67 = 0;
      v109 = *MEMORY[0x277D45020];
      v68 = (v112 + 104);
      v108 = v112 + 32;
      v69 = v103;
      v70 = v100;
      do
      {
        *v70 = MEMORY[0x223D44740](v67, v110);
        (*v68)(v70, v109, v69);
        v113 = v65;
        v72 = *(v65 + 16);
        v71 = *(v65 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_21D18E93C(v71 > 1, v72 + 1, 1);
          v65 = v113;
        }

        ++v67;
        *(v65 + 16) = v72 + 1;
        (*(v112 + 32))(v65 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v72, v70, v69);
      }

      while (v64 != v67);
    }

    else
    {
      v80 = (v66 + 32);
      v109 = *MEMORY[0x277D45020];
      v107 = *(v112 + 104);
      v108 = v112 + 104;
      v106 = v112 + 32;
      v81 = v98;
      v82 = v103;
      do
      {
        v83 = *v80;
        *v81 = *v80;
        v107(v81, v109, v82);
        v113 = v65;
        v85 = *(v65 + 16);
        v84 = *(v65 + 24);
        v86 = v83;
        if (v85 >= v84 >> 1)
        {
          sub_21D18E93C(v84 > 1, v85 + 1, 1);
          v65 = v113;
        }

        *(v65 + 16) = v85 + 1;
        (*(v112 + 32))(v65 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v85, v81, v82);
        ++v80;
        --v64;
      }

      while (v64);
    }

    a3 = v101;
    v63 = v110;
    v22 = v111;
    v58 = v105;
    v60 = v97;
    v62 = v99;
    goto LABEL_50;
  }

LABEL_57:
  __break(1u);
  return result;
}

void TTRReminderListPickerViewModel.allREMLists()()
{
  v1 = sub_21DBF648C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  v26 = MEMORY[0x277D84F90];
  v19 = *(v5 + 16);
  if (v19)
  {
    v6 = 0;
    v18 = v5 + 32;
    v24 = v2 + 88;
    v25 = v2 + 16;
    v7 = *MEMORY[0x277D45028];
    v23 = *MEMORY[0x277D45020];
    v16 = (v2 + 96);
    v17 = v5;
    while (v6 < *(v5 + 16))
    {
      v22 = v6;
      v8 = *(v18 + 48 * v6 + 40);
      v9 = *(v8 + 16);
      sub_21DBF8E0C();
      if (v9)
      {
        v10 = 0;
        v20 = v9 - 1;
        do
        {
          v11 = v10;
          while (1)
          {
            if (v11 >= *(v8 + 16))
            {
              __break(1u);
              goto LABEL_19;
            }

            v10 = v11 + 1;
            (*(v2 + 16))(v4, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v1);
            v12 = (*(v2 + 88))(v4, v1);
            if (v12 == v7)
            {
              break;
            }

            if (v12 != v23)
            {
              goto LABEL_20;
            }

            (*(v2 + 8))(v4, v1);
            ++v11;
            if (v9 == v10)
            {
              goto LABEL_3;
            }
          }

          (*v16)(v4, v1);
          v21 = *v4;
          MEMORY[0x223D42D80]();
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v15 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
        }

        while (v20 != v11);
      }

LABEL_3:
      v6 = v22 + 1;

      v5 = v17;
      if (v6 == v19)
      {
        return;
      }
    }

LABEL_19:
    __break(1u);
LABEL_20:
    if (qword_27CE569F8 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE5DD80);
    v14 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v14);
    sub_21DAEAB00("Unknown list type", 17, 2);
    __break(1u);
  }
}

void TTRReminderListPickerViewModel.listOrCustomSmartList(with:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v4 = sub_21DBF648C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  v28 = *(*v2 + 16);
  if (v28)
  {
    v26 = a2;
    v9 = 0;
    v29 = v8 + 32;
    v34 = v5 + 16;
    v33 = v5 + 88;
    v32 = *MEMORY[0x277D45028];
    v31 = *MEMORY[0x277D45020];
    v10 = (v5 + 96);
    v27 = v8;
    do
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_21;
      }

      v30 = v9;
      v11 = *(v29 + 48 * v9 + 40);
      v12 = *(v11 + 16);
      sub_21DBF8E0C();
      if (v12)
      {
        v13 = 0;
        while (v13 < *(v11 + 16))
        {
          (*(v5 + 16))(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v4);
          v18 = (*(v5 + 88))(v7, v4);
          if (v18 == v32)
          {
            (*v10)(v7, v4);
            v14 = *v7;
            sub_21D0D8CF0(0, &qword_280D17680);
            v15 = v14;
            v16 = [v15 objectID];
            v17 = sub_21DBFB63C();

            if (v17)
            {
              v22 = 0;
              goto LABEL_16;
            }
          }

          else
          {
            if (v18 != v31)
            {
              goto LABEL_22;
            }

            (*v10)(v7, v4);
            v19 = *v7;
            sub_21D0D8CF0(0, &qword_280D17680);
            v15 = v19;
            v20 = [v15 objectID];
            v21 = sub_21DBFB63C();

            if (v21)
            {
              v22 = 1;
LABEL_16:

              goto LABEL_17;
            }
          }

          ++v13;

          if (v12 == v13)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        if (qword_27CE569F8 != -1)
        {
          swift_once();
        }

        v23 = sub_21DBF84BC();
        __swift_project_value_buffer(v23, qword_27CE5DD80);
        v24 = MEMORY[0x277D84F90];
        sub_21D17716C(MEMORY[0x277D84F90]);
        sub_21D17716C(v24);
        sub_21DAEAB00("Unknown list type", 17, 2);
        __break(1u);
        return;
      }

LABEL_3:
      v9 = v30 + 1;

      v8 = v27;
    }

    while (v9 != v28);
    v15 = 0;
    v22 = -1;
LABEL_17:
    a2 = v26;
  }

  else
  {
    v15 = 0;
    v22 = -1;
  }

  *a2 = v15;
  *(a2 + 8) = v22;
}

uint64_t sub_21D564C84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DE10, &qword_27CE5DE08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE08);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D0C1D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D564E24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DDB0, &qword_27CE58698);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58698);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D0C300);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D564FC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DE40, &qword_27CE5DE38);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE38);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17770);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565164(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DEB0, &qword_27CE58858);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17880);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565304(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DF88, &qword_27CE5DF80);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17860);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D5654A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DFC0, &qword_27CE5DFB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFB8);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D17690);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565644(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DFA8, &qword_27CE5DFA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DFA0);
            v9 = sub_21D198E24(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D4D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D5657E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_280D0C390, &qword_27CE5DF98);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF98);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &unk_280D0C2F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&qword_27CE5DF68, &qword_27CE5DF60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF60);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D177D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565B20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DF50, &qword_27CE5DF48);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF48);
            v9 = sub_21D198EA4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565CBC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&unk_27CE5DDF8, &qword_27CE5DDF0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DDF0);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D0C290);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D565E5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DBFBD7C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DBFBD7C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21D568338(&qword_27CE5DED8, &qword_27CE5DED0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DED0);
            v9 = sub_21D198D24(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21D0D8CF0(0, &qword_280D0C2E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}