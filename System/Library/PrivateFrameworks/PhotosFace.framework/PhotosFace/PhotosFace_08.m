uint64_t sub_22FE2910C(_OWORD *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FD8C738;

  return sub_22FE268E0(a1, v1);
}

uint64_t sub_22FE291D0(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800) - 8) + 80);

  return sub_22FE26B88(a1);
}

uint64_t sub_22FE2924C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return sub_22FDB4380(result, a2);
  }

  return result;
}

uint64_t sub_22FE292D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FE29370(uint64_t a1, uint64_t a2)
{
  v5 = sub_22FE42EB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  v10 = *(off_28148B418 + 2);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_22FE42EC4();
  result = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_22FE29DEC();

  if (v2)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v15 = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE29564(uint64_t a1, uint64_t a2)
{
  v5 = sub_22FE42EB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  v10 = *(off_28148B418 + 2);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_22FE42EC4();
  result = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_22FE29E14(&v17);

  if (v2)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return isEscapingClosureAtFileLocation;
    }

    goto LABEL_10;
  }

  isEscapingClosureAtFileLocation = v17;
  v15 = swift_isEscapingClosureAtFileLocation();

  if ((v15 & 1) == 0)
  {
    return isEscapingClosureAtFileLocation;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t XPCEventStream.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_28148B420 != -1)
  {
    swift_once();
  }

  v1 = qword_28148B428;
  v4[4] = sub_22FE29B94;
  v4[5] = v0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_22FE29CEC;
  v4[3] = &block_descriptor;
  v2 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v2);
  _Block_release(v2);
  return v0;
}

uint64_t XPCEventStream.init()()
{
  if (qword_28148B420 != -1)
  {
    swift_once();
  }

  v1 = qword_28148B428;
  v4[4] = sub_22FE29E60;
  v4[5] = v0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_22FE29CEC;
  v4[3] = &block_descriptor_4;
  v2 = _Block_copy(v4);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v1, v2);
  _Block_release(v2);
  return v0;
}

void sub_22FE2997C(void *a1, uint64_t a2)
{
  v4 = sub_22FE42D54();
  if (xpc_dictionary_get_string(a1, v4))
  {
    v5 = sub_22FE43104();
    v7 = v6;
    MEMORY[0x28223BE20](v5);
    v16[2] = a2;
    v16[3] = v8;
    v16[4] = v7;
    sub_22FE29370(sub_22FE29DCC, v16);
  }

  else
  {
    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v9 = sub_22FE42D34();
    __swift_project_value_buffer(v9, qword_28148B108);
    swift_unknownObjectRetain();
    v17 = sub_22FE42D14();
    v10 = sub_22FE436A4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      swift_getObjectType();
      v18 = a1;
      swift_unknownObjectRetain();
      v13 = sub_22FE430B4();
      v15 = sub_22FD98218(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_22FD6D000, v17, v10, "Unknown name for field: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x23190C380](v12, -1, -1);
      MEMORY[0x23190C380](v11, -1, -1);
    }

    else
    {
    }
  }
}

void sub_22FE29B9C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D34();
  __swift_project_value_buffer(v5, qword_28148B108);

  v6 = sub_22FE42D14();
  v7 = sub_22FE436C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_22FD98218(a2, a3, &v10);
    _os_log_impl(&dword_22FD6D000, v6, v7, "Got XPC Event Stream with object %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }
}

uint64_t sub_22FE29CEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22FE29DEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void *sub_22FE29E14@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_22FE29E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE29F04);
}

uint64_t sub_22FE29F04()
{
  v1 = v0[3];
  os_unfair_lock_lock((v1 + 64));
  v2 = sub_22FE2C064((v1 + 16), sub_22FE3CEEC);
  os_unfair_lock_unlock((v1 + 64));
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = v0[3];
      v3 = v0[4];
      v5 = v0[2];
      os_unfair_lock_lock((v3 + 24));
      v6 = *(v3 + 16);
      *(v3 + 16) = v6 + 1;
      os_unfair_lock_unlock((v3 + 24));
      v7 = swift_task_alloc();
      v0[6] = v7;
      v7[2] = v4;
      v7[3] = v3;
      v7[4] = v5;
      v7[5] = v6;
      v8 = swift_task_alloc();
      v0[7] = v8;
      v8[2] = v4;
      v8[3] = v3;
      v8[4] = v6;
      v9 = *(MEMORY[0x277D85A10] + 4);
      v10 = swift_task_alloc();
      v0[8] = v10;
      *v10 = v0;
      v10[1] = sub_22FE2A164;

      return MEMORY[0x282200830](v10, &unk_22FE4FC50);
    }

    v11 = v0[5];
    sub_22FE41BB0(v0[2], v11);
    v12 = type metadata accessor for StoredPhoto(0);
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    sub_22FD93E04(v11, *(*(v2 + 64) + 40), &qword_27DAE4580, &qword_22FE4B9C0);
    swift_continuation_throwingResume();
  }

  v13 = v0[5];

  v14 = v0[1];

  return v14();
}

void sub_22FE2A164()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);

    MEMORY[0x2822009F8](sub_22FE2A2A8);
  }
}

uint64_t sub_22FE2A2A8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FE2A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22FE2A330);
}

uint64_t sub_22FE2A330()
{
  v1 = v0[6];
  os_unfair_lock_lock((v1 + 64));
  v2 = sub_22FE2C064((v1 + 16), sub_22FE3CF14);
  os_unfair_lock_unlock((v1 + 64));
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = v0[6];
      v3 = v0[7];
      os_unfair_lock_lock((v3 + 24));
      v5 = *(v3 + 16);
      *(v3 + 16) = v5 + 1;
      os_unfair_lock_unlock((v3 + 24));
      v6 = swift_task_alloc();
      v0[8] = v6;
      v6[2] = v4;
      v6[3] = v3;
      v6[4] = v0 + 2;
      v6[5] = v5;
      v7 = swift_task_alloc();
      v0[9] = v7;
      v7[2] = v4;
      v7[3] = v3;
      v7[4] = v5;
      v8 = *(MEMORY[0x277D85A10] + 4);
      v9 = swift_task_alloc();
      v0[10] = v9;
      *v9 = v0;
      v9[1] = sub_22FE2A534;

      return MEMORY[0x282200830](v9, &unk_22FE4FBB8);
    }

    v11 = v0[4];
    v10 = v0[5];
    sub_22FDB4380(v11, v10);
    v12 = *(*(v2 + 64) + 40);
    *v12 = v11;
    v12[1] = v10;
    swift_continuation_throwingResume();
  }

  v13 = v0[1];

  return v13();
}

void sub_22FE2A534()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    MEMORY[0x2822009F8](sub_22FE2A678);
  }
}

uint64_t sub_22FE2A68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FE2A6B0);
}

uint64_t sub_22FE2A6B0()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1 + 16);
  sub_22FE2BD0C(v0 + 16);
  os_unfair_lock_unlock(v1 + 16);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 96) = v4;
  v5 = *(v0 + 40);
  *(v0 + 41) = v5;
  if (v3)
  {
    if (v3 == 1)
    {
      v7 = *(v0 + 72);
      v6 = *(v0 + 80);
      sub_22FE419B4(1, v2, v4, v5);
      os_unfair_lock_lock((v6 + 24));
      v8 = *(v6 + 16);
      *(v6 + 16) = v8 + 1;
      os_unfair_lock_unlock((v6 + 24));
      v9 = swift_task_alloc();
      *(v0 + 104) = v9;
      v9[2] = v7;
      v9[3] = v6;
      v9[4] = v8;
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      v10[2] = v7;
      v10[3] = v6;
      v10[4] = v8;
      v11 = *(MEMORY[0x277D85A10] + 4);
      v12 = swift_task_alloc();
      *(v0 + 120) = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5408, &qword_22FE4FC28);
      *v12 = v0;
      v12[1] = sub_22FE2A9A4;
      v13 = *(v0 + 64);

      return MEMORY[0x282200830](v13, &unk_22FE4FC20);
    }

    sub_22FE419B4(v3, v2, v4, v5);
    swift_continuation_throwingResume();
    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    *(v0 + 48) = v2;
    v14 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    swift_willThrowTypedImpl();
    *(v0 + 56) = v2;
    if (sub_22FE43C64())
    {
      sub_22FE41A00(v2, v4, 1);
      v15 = v4;
      v16 = v2;
    }

    else
    {
      swift_allocError();
      *v19 = v2;
      v3 = *(v0 + 16);
      v16 = *(v0 + 24);
      v15 = *(v0 + 32);
      v5 = *(v0 + 40);
    }

    sub_22FE419E0(v3, v16, v15, v5);
    sub_22FE41A00(v2, v4, 1);
    v18 = *(v0 + 8);
    goto LABEL_13;
  }

  sub_22FE419B4(0, v2, v4, v5);
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  v17 = *(v0 + 64);
  *v17 = v2;
  v17[1] = v4;
  sub_22FE419E0(v3, *(v0 + 88), *(v0 + 96), *(v0 + 41));
  v18 = *(v0 + 8);
LABEL_13:

  return v18();
}

uint64_t sub_22FE2A9A4()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v5 = sub_22FE2AB64;
  }

  else
  {
    v5 = sub_22FE2AAF8;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FE2AAF8()
{
  sub_22FE419E0(1, *(v0 + 88), *(v0 + 96), *(v0 + 41));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FE2AB64()
{
  sub_22FE419E0(1, *(v0 + 88), *(v0 + 96), *(v0 + 41));
  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FE2ABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5420, &qword_22FE4FC58);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = (&v55 - v19);
  v21 = v4[4];
  if (v21 < 0)
  {
    return 1;
  }

  v22 = v4[1];
  v23 = v4[5];
  v57 = *v4;
  v58 = v23;
  v24 = v4[2];
  v25 = v4[3];
  v64 = v57;
  v65 = v22;
  v62 = v21;
  v63 = v24;
  v61 = v25;
  v59 = v18;
  v60 = a3;
  v26 = *(v17 + 48);
  v27 = v17;
  v56 = v21;
  sub_22FE41BB0(a2, v20 + v26);
  v28 = type metadata accessor for StoredPhoto(0);
  v29 = v20 + v26;
  v30 = v59;
  (*(*(v28 - 8) + 56))(v29, 0, 1, v28);
  *v20 = v60;
  v20[1] = a1;
  sub_22FE3CF28(v20, v11);
  if ((*(v30 + 48))(v11, 1, v27) != 1)
  {
    sub_22FD93E6C(v20, &qword_27DAE4130, &qword_22FE4A140);
    sub_22FD93E6C(v11, &qword_27DAE5420, &qword_22FE4FC58);
    v34 = v63;
    *v4 = v57;
    v4[1] = v22;
    v4[2] = v34;
    v4[3] = v25;
    v35 = v58;
    v4[4] = v56;
    v4[5] = v35;
    return 1;
  }

  v31 = v57;
  v55 = v25;
  sub_22FD93E6C(v11, &qword_27DAE5420, &qword_22FE4FC58);
  if (!*(v56 + 16))
  {
    v37 = v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v38 = *(v22 + 16);
    if (v31)
    {
      v39 = v31;
      v40 = v56;

      sub_22FE3A674(v20, v37, v38, (v39 + 16), v39 + 32);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v40 = v56;
      if (v38)
      {
        v49 = *(v59 + 72);
        do
        {
          sub_22FD764B4(v37, v15, &qword_27DAE4130, &qword_22FE4A140);
          v50 = *v15;
          sub_22FD93E6C(v15, &qword_27DAE4130, &qword_22FE4A140);
          if (v50 == v60)
          {
            goto LABEL_18;
          }

          v37 += v49;
        }

        while (--v38);
      }
    }

    sub_22FE39904(v20);
LABEL_18:
    sub_22FD93E6C(v20, &qword_27DAE4130, &qword_22FE4A140);
    v51 = v65;
    v52 = v63;
    *v4 = v64;
    v4[1] = v51;
    v53 = v55;
    v4[2] = v52;
    v4[3] = v53;
    v54 = v58;
    v4[4] = v40;
    v4[5] = v54;
    return 2;
  }

  v32 = v31;
  if (v55)
  {
    v33 = sub_22FE3FECC(v55 + 16, v55 + 32, v56, 0);
  }

  else
  {
    v33 = 0;
  }

  v43 = v58;
  sub_22FE3B738(0, v33, sub_22FE3CEEC);
  v45 = v44;
  sub_22FD93E6C(v20, &qword_27DAE4130, &qword_22FE4A140);
  result = v45;
  v47 = v62;
  v46 = v63;
  v48 = v61;
  *v4 = v32;
  v4[1] = v22;
  v4[2] = v46;
  v4[3] = v48;
  v4[4] = v47;
  v4[5] = v43;
  return result;
}

uint64_t sub_22FE2AFE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  if (v5 < 0)
  {
    return 1;
  }

  v6 = v4;
  v11 = *v4;
  v12 = v4[1];
  v26 = v4[5];
  v13 = v4[2];
  v14 = v4[3];
  v34 = *v4;
  v35 = v12;
  v32 = v5;
  v33 = v13;
  v31 = v14;
  sub_22FDB4380(a2, a3);
  sub_22FE3D154(a4, &v27);
  v15 = v28;
  if (v28 != 1)
  {
    sub_22FDC27F0(a2, a3);
    sub_22FE4186C(v27, v15, v29, v30);
    v17 = v33;
    *v6 = v11;
    v6[1] = v12;
    v6[2] = v17;
    v6[3] = v14;
    v6[4] = v5;
    v6[5] = v26;
    return 1;
  }

  sub_22FE4186C(v27, 1, v29, v30);
  if (*(v5 + 16))
  {
    if (v14)
    {
      v16 = sub_22FE3FECC(v14 + 16, v14 + 32, v5, 0);
    }

    else
    {
      v16 = 0;
    }

    sub_22FE3B738(0, v16, sub_22FE3CF14);
    v22 = v21;
    sub_22FDC27F0(a2, a3);
    result = v22;
    v24 = v32;
    v23 = v33;
    v25 = v31;
    *v6 = v11;
    v6[1] = v12;
    v6[2] = v23;
    v6[3] = v25;
    v6[4] = v24;
    v6[5] = v26;
  }

  else
  {
    sub_22FE39794(a4, a1, a2, a3);
    sub_22FDC27F0(a2, a3);
    v19 = v35;
    v20 = v33;
    *v6 = v34;
    v6[1] = v19;
    v6[2] = v20;
    v6[3] = v14;
    v6[4] = v5;
    v6[5] = v26;
    return 2;
  }

  return result;
}

uint64_t sub_22FE2B198(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5420, &qword_22FE4FC58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v20 = &v51 - v19;
  v21 = v2[4];
  if (v21 < 0)
  {
    return 1;
  }

  v52 = v18;
  v53 = v17;
  v56 = v7;
  v61 = v21;
  v23 = *v2;
  v22 = v2[1];
  v24 = v2[3];
  v58 = v2[2];
  v59 = v24;
  v60 = v2[5];
  v63 = v23;
  v64 = v22;
  v25 = *(v16 + 48);
  v26 = type metadata accessor for StoredPhoto(0);
  (*(*(v26 - 8) + 56))(&v20[v25], 1, 1, v26);
  *v20 = a1;
  *(v20 + 1) = 0;
  v27 = v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v54 = v22;
  v55 = v23;
  v28 = *(v22 + 16);
  v57 = v20;
  if (!v23)
  {
    if (v28)
    {
      v29 = 0;
      v34 = *(v9 + 72);
      while (1)
      {
        sub_22FD764B4(v27, v12, &qword_27DAE4130, &qword_22FE4A140);
        v35 = *v12;
        sub_22FD93E6C(v12, &qword_27DAE4130, &qword_22FE4A140);
        if (v35 == a1)
        {
          break;
        }

        ++v29;
        v27 += v34;
        if (v28 == v29)
        {
          goto LABEL_9;
        }
      }

      v33 = 0;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v29 = sub_22FE3A674(v20, v27, v28, (v23 + 16), v23 + 32);
  v31 = v30;
  v33 = v32;

  if (v31)
  {
LABEL_9:
    v36 = v57;
    sub_22FD764B4(v57, v12, &qword_27DAE4130, &qword_22FE4A140);
    v37 = v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v37;
    v39 = v56;
    sub_22FE3F3BC(v12, isUniquelyReferenced_nonNull_native, v56);
    sub_22FD93E6C(v39, &qword_27DAE5420, &qword_22FE4FC58);
    sub_22FD93E6C(v36, &qword_27DAE4130, &qword_22FE4A140);
    v40 = v62;
    v41 = v54;
    *v2 = v55;
    v2[1] = v41;
    v42 = v59;
    v2[2] = v40;
    v2[3] = v42;
    v43 = v60;
    v2[4] = v61;
    v2[5] = v43;
    return 1;
  }

LABEL_12:
  v45 = v52;
  sub_22FE3B454(v29, v33, v52);
  sub_22FD93E6C(v57, &qword_27DAE4130, &qword_22FE4A140);
  v46 = v53;
  sub_22FD93E04(v45, v53, &qword_27DAE4130, &qword_22FE4A140);
  v47 = v64;
  *v2 = v63;
  v2[1] = v47;
  v48 = v59;
  v2[2] = v58;
  v2[3] = v48;
  v49 = v60;
  v2[4] = v61;
  v2[5] = v49;
  v50 = *(v46 + 8);
  sub_22FD93E6C(v46, &qword_27DAE4130, &qword_22FE4A140);
  return v50;
}

uint64_t sub_22FE2B560(uint64_t a1)
{
  v2 = v1[4];
  if (v2 < 0)
  {
    return 1;
  }

  v3 = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v25 = v5;
  v26 = v6;
  v10 = (v6 + 32);
  v11 = *(v6 + 16);
  if (v5)
  {
    v12 = sub_22FE3A88C(a1, 0, 0, 0xF000000000000000, v10, v11, (v5 + 16));
    if ((v14 & 1) == 0)
    {
LABEL_12:
      sub_22FE3B5CC(v12, v13, &v22);
      v19 = *(&v22 + 1);
      v18 = v23;
      v20 = v24;
      sub_22FDC27F0(0, 0xF000000000000000);
      sub_22FDC27F0(v18, v20);
      result = v19;
      v21 = v26;
      *v3 = v25;
      v3[1] = v21;
      v3[2] = v7;
      v3[3] = v8;
      goto LABEL_13;
    }
  }

  else if (v11)
  {
    v12 = 0;
    while (1)
    {
      v16 = *v10;
      v10 += 4;
      if (v16 == a1)
      {
        break;
      }

      if (v11 == ++v12)
      {
        goto LABEL_10;
      }
    }

    v13 = 0;
    goto LABEL_12;
  }

LABEL_10:
  sub_22FDE65C8(0, 0xF000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22FE3F77C(a1, 0, 0, 0xF000000000000000, isUniquelyReferenced_nonNull_native, &v22);
  sub_22FE4186C(v22, *(&v22 + 1), v23, v24);
  sub_22FDC27F0(0, 0xF000000000000000);
  *v1 = v5;
  v1[1] = v6;
  v1[2] = v7;
  v1[3] = v8;
  result = 1;
LABEL_13:
  v3[4] = v2;
  v3[5] = v9;
  return result;
}

unint64_t sub_22FE2B6C8(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = (v4 + 32);
  v6 = *(v4 + 16);
  if (!*v2)
  {
    if (v6)
    {
      v7 = 0;
      while (1)
      {
        v10 = *v5;
        v5 += 2;
        if (v10 == a1)
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 0;
        }
      }

      v8 = 0;
      return sub_22FE3B738(v7, v8, sub_22FE3CF14);
    }

    return 0;
  }

  v7 = sub_22FE3A9A8(a1, a2, v5, v6, (*v2 + 16));
  if (v9)
  {
    return 0;
  }

  return sub_22FE3B738(v7, v8, sub_22FE3CF14);
}

char *sub_22FE2B768(void *a1)
{
  v2 = v1[4];
  if (v2 < 0)
  {
    return 0;
  }

  v4 = v1[5];
  v5 = v1[2];
  v6 = v1[1];
  v30 = v1[3];
  v31 = *v1;

  if (a1 && !*(v2 + 16))
  {
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    v9 = sub_22FE43C64();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = swift_allocError();
      *v11 = a1;
    }

    *v1 = v10;
    v1[1] = 0;
    v1[2] = 0;
    v1[3] = 0;
  }

  else
  {
    *v1 = 0u;
    *(v1 + 1) = 0u;
  }

  *(v1 + 2) = xmmword_22FE49940;
  v12 = *(v6 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v32 = MEMORY[0x277D84F90];
    sub_22FD925A8(0, v12, 0);
    v7 = v32;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
    v15 = 0;
    v18 = *(v14 - 8);
    result = (v14 - 8);
    v17 = v18;
    v19 = v6 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + 8;
    do
    {
      if (v15 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v20 = *(v19 + *(v17 + 72) * v15);
      v33 = v7;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        v23 = v17;
        result = sub_22FD925A8((v21 > 1), v22 + 1, 1);
        v17 = v23;
        v7 = v33;
      }

      ++v15;
      *(v7 + 16) = v22 + 1;
      *(v7 + 8 * v22 + 32) = v20;
    }

    while (v12 != v15);
    v13 = MEMORY[0x277D84F90];
    v24 = *(v2 + 16);
    if (!v24)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v7 = MEMORY[0x277D84F90];
  v24 = *(v2 + 16);
  if (!v24)
  {
LABEL_24:

    return v7;
  }

LABEL_17:
  v34 = v13;
  result = sub_22FD92578(0, v24, 0);
  v25 = 0;
  v26 = 40;
  while (v25 < *(v2 + 16))
  {
    v27 = *(v2 + v26);
    v29 = *(v34 + 16);
    v28 = *(v34 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_22FD92578((v28 > 1), v29 + 1, 1);
    }

    ++v25;
    *(v34 + 16) = v29 + 1;
    *(v34 + 8 * v29 + 32) = v27;
    v26 += 16;
    if (v24 == v25)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_22FE2BA64(void *a1)
{
  v2 = v1[4];
  if (v2 < 0)
  {
    return 0;
  }

  v4 = v1[5];
  v5 = v1[2];
  v6 = v1[1];
  v26 = v1[3];
  v27 = *v1;

  if (a1 && !*(v2 + 16))
  {
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    v9 = sub_22FE43C64();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = swift_allocError();
      *v11 = a1;
    }

    *v1 = v10;
    v1[1] = 0;
    v1[2] = 0;
    v1[3] = 0;
  }

  else
  {
    *v1 = 0u;
    *(v1 + 1) = 0u;
  }

  *(v1 + 2) = xmmword_22FE49940;
  v12 = *(v6 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v28 = MEMORY[0x277D84F90];
    result = sub_22FD925A8(0, v12, 0);
    v15 = 0;
    v7 = v28;
    v16 = (v6 + 40);
    do
    {
      if (v15 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v17 = *v16;
      v19 = *(v28 + 16);
      v18 = *(v28 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_22FD925A8((v18 > 1), v19 + 1, 1);
      }

      ++v15;
      *(v28 + 16) = v19 + 1;
      *(v28 + 8 * v19 + 32) = v17;
      v16 += 4;
    }

    while (v12 != v15);
    v13 = MEMORY[0x277D84F90];
    v20 = *(v2 + 16);
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  v7 = MEMORY[0x277D84F90];
  v20 = *(v2 + 16);
  if (!v20)
  {
LABEL_24:

    return v7;
  }

LABEL_17:
  v29 = v13;
  result = sub_22FD92648(0, v20, 0);
  v21 = 0;
  v22 = 40;
  while (v21 < *(v2 + 16))
  {
    v23 = *(v2 + v22);
    v25 = *(v29 + 16);
    v24 = *(v29 + 24);
    if (v25 >= v24 >> 1)
    {
      result = sub_22FD92648((v24 > 1), v25 + 1, 1);
    }

    ++v21;
    *(v29 + 16) = v25 + 1;
    *(v29 + 8 * v25 + 32) = v23;
    v22 += 16;
    if (v20 == v21)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_22FE2BD0C(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v1[4] < 0)
  {
    if (v3)
    {
      *v1 = 0u;
      *(v1 + 1) = 0u;
      *(v1 + 2) = xmmword_22FE49940;
      *a1 = 0;
      *(a1 + 8) = v3;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
      return;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    v8 = 0xF000000000000000;
    goto LABEL_11;
  }

  v4 = *(v1 + 1);
  v5 = v1[1];
  if (*(v5 + 16))
  {
    v9 = *(v1 + 1);
    v10 = *(v1 + 2);
    v14 = *v1;
    v15 = v5;
    if (v3)
    {
      v6 = sub_22FE40500(v3 + 16, v3 + 32, v5, 0);
    }

    else
    {
      v6 = 0;
    }

    sub_22FE3B5CC(0, v6, &v11);
    v7 = v15;
    *v1 = v14;
    v1[1] = v7;
    *(v1 + 1) = v9;
    *(v1 + 2) = v10;
    v8 = v13;
    *a1 = v12;
LABEL_11:
    *(a1 + 16) = v8;
    goto LABEL_12;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
LABEL_12:
  *(a1 + 24) = 0;
}

unint64_t sub_22FE2BE28@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = result;
    v8 = v3[1];
    v9 = v3[2];
    v10 = v3[3];
    v11 = v3[5];
    v29 = *v3;
    v30 = v8;
    v27 = v10;
    v28 = v6;
    v26 = v11;
    result = sub_22FE3D270(a2);
    if (v13 == 1)
    {
      if (*(v8 + 16))
      {
        if (v5)
        {
          v14 = sub_22FE40500(v5 + 16, v5 + 32, v8, 0);
        }

        else
        {
          v14 = 0;
        }

        result = sub_22FE3B5CC(0, v14, &v23);
        v20 = v30;
        v21 = v26;
        *v3 = v29;
        v3[1] = v20;
        v3[2] = v9;
        v3[3] = v10;
        v3[4] = v6;
        v3[5] = v21;
        v22 = v25;
        *a3 = v24;
        *(a3 + 16) = v22;
        v15 = 2;
      }

      else
      {
        result = sub_22FE39850(a2, v7);
        v17 = v27;
        v18 = v28;
        v19 = v26;
        *v3 = v5;
        v3[1] = v8;
        v3[2] = v9;
        v3[3] = v17;
        v3[4] = v18;
        v3[5] = v19;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = 0;
        v15 = -1;
      }

      goto LABEL_13;
    }

    v16 = v26;
    *v3 = v5;
    v3[1] = v8;
    v3[2] = v9;
    v3[3] = v10;
    v3[4] = v6;
    v3[5] = v16;
LABEL_9:
    *a3 = xmmword_22FE4BA20;
    *(a3 + 24) = 0;
    return result;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = xmmword_22FE49940;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v5;
  v15 = 1;
LABEL_13:
  *(a3 + 24) = v15;
  return result;
}

uint64_t sub_22FE2BFA4(uint64_t a1)
{
  if (v1[4] < 0)
  {
    return 1;
  }

  v3 = *v1;
  v2 = v1[1];
  v4 = v1[5];
  v5 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  sub_22FE2B6C8(a1, 0);
  if (v7 == 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22FE3F9E8(a1, 0, isUniquelyReferenced_nonNull_native);
    *v1 = v3;
    v1[1] = v2;
    v1[2] = v5;
    v1[3] = v10;
    v1[4] = v11;
    v1[5] = v4;
    return 1;
  }

  result = v7;
  *v1 = v3;
  v1[1] = v2;
  v1[2] = v5;
  v1[3] = v10;
  v1[4] = v11;
  v1[5] = v4;
  return result;
}

uint64_t sub_22FE2C064(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v2 = a1[4];
  if (v2 < 0)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[3];
  if (*(v2 + 16))
  {
    v7 = a1[1];
    v8 = a1[2];
    v9 = a1[5];
    v14 = a1[3];
    if (v5)
    {
      v10 = sub_22FE3FECC(v5 + 16, v5 + 32, v2, 0);
    }

    else
    {
      v10 = 0;
    }

    sub_22FE3B738(0, v10, a2);
    result = v13;
    *a1 = v4;
    a1[1] = v7;
    a1[2] = v8;
    a1[3] = v14;
    a1[4] = v2;
    a1[5] = v9;
  }

  else
  {
    v12 = a1[3];

    return 1;
  }

  return result;
}

uint64_t sub_22FE2C164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a2;
  return MEMORY[0x2822009F8](sub_22FE2C188);
}

uint64_t sub_22FE2C188()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[3] = sub_22FE42604;
  v4 = swift_continuation_init();
  sub_22FE40618(v4, v3, v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

void sub_22FE2C24C(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  os_unfair_lock_lock(a1 + 16);
  v7 = a4(a3);
  os_unfair_lock_unlock(a1 + 16);
  if (v7 >= 2)
  {

    swift_continuation_throwingResume();
  }
}

uint64_t sub_22FE2C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a4;
  v4[12] = a1;
  return MEMORY[0x2822009F8](sub_22FE2C2F0);
}

uint64_t sub_22FE2C2F0()
{
  v2 = v0[13];
  v1 = v0[14];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_22FE2C39C;
  v3 = swift_continuation_init();
  sub_22FE40878(v3, v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FE2C39C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  else
  {
    **(*v0 + 96) = *(*v0 + 80);
  }

  v3 = *(v1 + 8);

  return v3();
}

void sub_22FE2C4B0(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 16);
  v5 = sub_22FE2BFA4(a3);
  os_unfair_lock_unlock(a1 + 16);
  if (v5 >= 2)
  {
    **(*(v5 + 64) + 40) = xmmword_22FE4BA20;

    swift_continuation_throwingResume();
  }
}

void *XPCMessageCenter.Client.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[3] = a2;
  result[4] = 0;
  result[2] = a1;
  return result;
}

uint64_t sub_22FE2C590(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - v14;
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_22FD93E6C(a1, &qword_27DAE5400, &qword_22FE4FBC0);
    v16 = *v3;
    v17 = sub_22FD748E8(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22FDDF060();
        v22 = v27;
      }

      sub_22FD93E04(*(v22 + 56) + *(v11 + 72) * v19, v9, &qword_27DAE2CA8, &unk_22FE4BE90);
      sub_22FE3FC24(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_22FD93E6C(v9, &qword_27DAE5400, &qword_22FE4FBC0);
  }

  else
  {
    sub_22FD93E04(a1, v15, &qword_27DAE2CA8, &unk_22FE4BE90);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_22FDDFAD8(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

void sub_22FE2C7E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  v10 = *(v3 + 32);
  if (v10 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 32) = v10 + 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
    v12 = a2 + v11[7];
    sub_22FE439E4();
    v13 = (a2 + v11[9]);
    *v13 = 0;
    v13[1] = 0;
    *(a2 + v11[10]) = 0;
    *a2 = a1;
    *(a2 + v11[8]) = v10;
    sub_22FD764B4(a2, v9, &qword_27DAE2CA8, &unk_22FE4BE90);
    (*(*(v11 - 1) + 56))(v9, 0, 1, v11);
    swift_beginAccess();

    sub_22FE2C590(v9, v10);
    swift_endAccess();
    if (qword_28148B0E0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = sub_22FE42D34();
  __swift_project_value_buffer(v14, qword_28148B0E8);

  v15 = sub_22FE42D14();
  v16 = sub_22FE43694();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), &v20);
    *(v17 + 12) = 1024;
    *(v17 + 14) = v10;
    _os_log_impl(&dword_22FD6D000, v15, v16, "%s: Inserted request %u", v17, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23190C380](v18, -1, -1);
    MEMORY[0x23190C380](v17, -1, -1);
  }

  sub_22FE2E130();
}

uint64_t sub_22FE2CA74(unsigned int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  swift_beginAccess();
  v12 = *(v1 + 40);
  if (*(v12 + 16) && (v13 = sub_22FD748E8(a1), (v14 & 1) != 0))
  {
    sub_22FD764B4(*(v12 + 56) + *(v4 + 72) * v13, v11, &qword_27DAE2CA8, &unk_22FE4BE90);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(v4 + 56))(v11, v15, 1, v3);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_22FD93E6C(v11, &qword_27DAE5400, &qword_22FE4FBC0);
    return 0;
  }

  else
  {
    sub_22FD764B4(v11, v7, &qword_27DAE2CA8, &unk_22FE4BE90);
    sub_22FD93E6C(v11, &qword_27DAE5400, &qword_22FE4FBC0);
    v16 = *&v7[*(v3 + 40)];
    sub_22FD93E6C(v7, &qword_27DAE2CA8, &unk_22FE4BE90);
  }

  return v16;
}

uint64_t sub_22FE2CC8C(uint64_t a1, int a2)
{
  *(v3 + 200) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0) - 8) + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v3 + 144) = sub_22FE43374();
  *(v3 + 152) = v5;

  return MEMORY[0x2822009F8](sub_22FE2CDD0);
}

uint64_t sub_22FE2CDD0()
{
  v33 = v0;
  v1 = *(v0 + 112);
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (*(v2 + 16))
  {
    v3 = sub_22FD748E8(*(v0 + 200));
    v4 = *(v0 + 136);
    if (v5)
    {
      v6 = v3;
      v7 = *(v2 + 56);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
      v9 = *(v8 - 8);
      sub_22FD764B4(v7 + *(v9 + 72) * v6, v4, &qword_27DAE2CA8, &unk_22FE4BE90);
      (*(v9 + 56))(v4, 0, 1, v8);
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    }
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v13 = *(v0 + 128);
  sub_22FD764B4(*(v0 + 136), v13, &qword_27DAE5400, &qword_22FE4FBC0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  *(v0 + 160) = v14;
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v13, 1, v14);
  sub_22FD93E6C(v13, &qword_27DAE5400, &qword_22FE4FBC0);
  if (v16 == 1)
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 112);
    v18 = sub_22FE42D34();
    __swift_project_value_buffer(v18, qword_28148B0E8);

    v19 = sub_22FE42D14();
    v20 = sub_22FE436A4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 112);
      v22 = *(v0 + 200);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_22FD98218(*(v21 + 16), *(v21 + 24), &v32);
      *(v23 + 12) = 1024;
      *(v23 + 14) = v22;
      _os_log_impl(&dword_22FD6D000, v19, v20, "%s: Received response for non-existent request %u", v23, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23190C380](v24, -1, -1);
      MEMORY[0x23190C380](v23, -1, -1);
    }

    sub_22FDED1BC();
    swift_allocError();
    *v25 = 2;
    v27 = *(v0 + 128);
    v26 = *(v0 + 136);
    v28 = *(v0 + 120);
    swift_willThrow();
    sub_22FD93E6C(v26, &qword_27DAE5400, &qword_22FE4FBC0);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = v15(*(v0 + 136), 1, v14);
    if (v31 == 1)
    {
      __break(1u);
    }

    else
    {
      v31 = sub_22FE2D224;
    }

    return MEMORY[0x2822009F8](v31);
  }
}

uint64_t sub_22FE2D224()
{
  v1 = v0[17];
  v2 = (v1 + *(v0[20] + 36));
  v3 = *v2;
  if (*v2)
  {
    goto LABEL_3;
  }

  v4 = *v1;
  v5 = *(v4 + 24);
  v6 = v2[1];
  *v2 = *(v4 + 16);
  v2[1] = v5;

  result = sub_22FE41B54(0, v6, MEMORY[0x277D85008]);
  v3 = *v2;
  if (*v2)
  {
LABEL_3:
    v8 = v2[1];
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_22FE2D340;

    return sub_22FE2A68C((v0 + 11), v3, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE2D340()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_22FE2D59C;
  }

  else
  {
    v3 = sub_22FE2D454;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FE2D454(uint64_t a1)
{
  v2 = *(v1 + 136);
  v3 = *(*(v1 + 160) + 40);
  v4 = *(v2 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1);
  }

  else
  {
    *(v2 + v3) = v6;
    *(v1 + 184) = *(v1 + 88);
    v7 = *(v1 + 144);
    v8 = *(v1 + 152);
    return MEMORY[0x2822009F8](sub_22FE2D494);
  }
}

uint64_t sub_22FE2D494()
{
  v1 = *(v0 + 192);
  if (v1 >> 60 == 15)
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v4 = *(v0 + 200);
    swift_beginAccess();
    sub_22FE2D6B4(v4, v2);
    sub_22FD93E6C(v2, &qword_27DAE5400, &qword_22FE4FBC0);
    swift_endAccess();
    v1 = *(v0 + 192);
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  *v8 = *(v0 + 184);
  v8[1] = v1;
  sub_22FD93E6C(v6, &qword_27DAE5400, &qword_22FE4FBC0);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22FE2D59C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  return MEMORY[0x2822009F8](sub_22FE2D5B4);
}

uint64_t sub_22FE2D5B4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 200);
  swift_beginAccess();
  sub_22FE2D6B4(v3, v1);
  sub_22FD93E6C(v1, &qword_27DAE5400, &qword_22FE4FBC0);
  swift_endAccess();
  v4 = *(v0 + 176);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  swift_willThrow();
  sub_22FD93E6C(v5, &qword_27DAE5400, &qword_22FE4FBC0);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22FE2D6B4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22FD748E8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22FDDF060();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
    v20 = *(v13 - 8);
    sub_22FD93E04(v12 + *(v20 + 72) * v8, a2, &qword_27DAE2CA8, &unk_22FE4BE90);
    sub_22FE3FC24(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_22FE2D82C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5400, &qword_22FE4FBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v45 - v11);
  swift_beginAccess();
  v13 = *(v2 + 40);
  v57 = a1;

  sub_22FE2DDF8(sub_22FE41994, v56, v13);
  v53 = *(v14 + 16);
  if (!v53)
  {
    return;
  }

  v15 = *(v9 + 80);
  v51 = *(v8 + 32);
  v52 = v14 + ((v15 + 32) & ~v15);
  v55 = *(v9 + 72);
  v50 = (v9 + 56);
  v45[1] = v14;

  v16 = 0;
  v48 = v7;
  v49 = v2;
  v46 = v12;
  v47 = v8;
  while (1)
  {
    sub_22FD764B4(v52 + v55 * v16, v12, &qword_27DAE2CA8, &unk_22FE4BE90);
    v18 = *v12;
    sub_22FDED1BC();
    v19 = swift_allocError();
    *v20 = 1;
    v21 = *(v18 + 16);
    os_unfair_lock_lock(v21 + 16);
    v22 = sub_22FE2BA64(v19);
    v24 = v23;
    os_unfair_lock_unlock(v21 + 16);
    if (v22)
    {
      break;
    }

LABEL_22:

    v36 = *(v12 + v51);
    swift_beginAccess();
    v37 = *(v2 + 40);
    v38 = sub_22FD748E8(v36);
    if (v39)
    {
      v40 = v38;
      v41 = *(v2 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v2 + 40);
      v58 = v43;
      *(v2 + 40) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22FDDF060();
        v43 = v58;
      }

      sub_22FD93E04(*(v43 + 56) + v40 * v55, v7, &qword_27DAE2CA8, &unk_22FE4BE90);
      sub_22FE3FC24(v40, v43);
      v44 = *(v2 + 40);
      *(v2 + 40) = v43;

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    ++v16;
    (*v50)(v7, v17, 1, v8);
    sub_22FD93E6C(v7, &qword_27DAE5400, &qword_22FE4FBC0);
    swift_endAccess();
    sub_22FD93E6C(v12, &qword_27DAE2CA8, &unk_22FE4BE90);
    if (v16 == v53)
    {

      return;
    }
  }

  v25 = *(v22 + 2);
  v54 = v22;
  if (v25)
  {
    v26 = v22 + 32;

    do
    {
      if (*v26++)
      {
        swift_continuation_throwingResume();
      }

      --v25;
    }

    while (v25);
  }

  else
  {
  }

  v28 = *(v24 + 16);
  v29 = v19;
  if (!v28)
  {
LABEL_21:
    sub_22FE41B54(v54, v24, MEMORY[0x277D84FB8]);

    v7 = v48;
    v2 = v49;
    v12 = v46;
    v8 = v47;
    goto LABEL_22;
  }

  v30 = 0;
  while (v30 < *(v24 + 16))
  {
    if (*(v24 + 32 + 8 * v30))
    {
      v59 = v19;
      v33 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v34 = sub_22FE43C64();
      if (v34)
      {
        v31 = v34;
      }

      else
      {
        v31 = swift_allocError();
        *v35 = v19;
      }

      swift_allocError();
      *v32 = v31;
      swift_continuation_throwingResumeWithError();
    }

    if (v28 == ++v30)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_22FE2DCE0()
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90) + 28);
  return sub_22FE439F4() & 1;
}

void sub_22FE2DDF8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  MEMORY[0x28223BE20](v11);
  v41 = a3;
  v42 = &v33 - v12;
  v13 = 0;
  v16 = *(a3 + 64);
  v15 = a3 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v13;
    if (!v19)
    {
      break;
    }

    v22 = v4;
LABEL_10:
    v23 = *(v41 + 56);
    v36 = *(v40 + 72);
    v24 = v37;
    sub_22FD764B4(v23 + v36 * (__clz(__rbit64(v19)) | (v13 << 6)), v37, &qword_27DAE2CA8, &unk_22FE4BE90);
    v25 = v42;
    sub_22FD93E04(v24, v42, &qword_27DAE2CA8, &unk_22FE4BE90);
    v26 = v38(v25);
    v4 = v22;
    if (v22)
    {
      sub_22FD93E6C(v42, &qword_27DAE2CA8, &unk_22FE4BE90);

      return;
    }

    v19 &= v19 - 1;
    if (v26)
    {
      sub_22FD93E04(v42, v34, &qword_27DAE2CA8, &unk_22FE4BE90);
      v27 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22FD927D4(0, *(v27 + 16) + 1, 1);
        v27 = v43;
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_22FD927D4(v29 > 1, v30 + 1, 1);
        v31 = v30 + 1;
        v27 = v43;
      }

      *(v27 + 16) = v31;
      v32 = *(v40 + 80);
      v35 = v27;
      sub_22FD93E04(v34, v27 + ((v32 + 32) & ~v32) + v30 * v36, &qword_27DAE2CA8, &unk_22FE4BE90);
    }

    else
    {
      sub_22FD93E6C(v42, &qword_27DAE2CA8, &unk_22FE4BE90);
    }
  }

  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v13);
    ++v21;
    if (v19)
    {
      v22 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_22FE2E130()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  if (!*(v0 + 72))
  {
    swift_beginAccess();
    if (*(*(v0 + 40) + 16))
    {
      if ((*(v0 + 64) & 1) == 0)
      {
        v6 = *(v0 + 48);
        v5 = *(v0 + 56);
        v7 = sub_22FE43404();
        (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
        v8 = swift_allocObject();
        v8[2] = 0;
        v8[3] = 0;
        v8[4] = v0;
        v8[5] = v6;
        v8[6] = v5;

        v9 = sub_22FE2EDBC(0, 0, v4, &unk_22FE4FBD0, v8);
        sub_22FD93E6C(v4, qword_27DAE3188, &qword_22FE49380);
        v10 = *(v0 + 72);
        *(v0 + 72) = v9;
      }
    }
  }
}

uint64_t sub_22FE2E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_22FE43A14();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v7 = sub_22FE43A24();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
  v3[20] = sub_22FE43374();
  v3[21] = v10;

  return MEMORY[0x2822009F8](sub_22FE2E45C);
}

uint64_t sub_22FE2E45C()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v0 + 152);
  v3 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE485C0, 0x94049F30F7200000);
  v5 = v4;
  sub_22FE43D44();
  *(v0 + 64) = v3;
  *(v0 + 72) = v5;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;

  return MEMORY[0x2822009F8](sub_22FE2E52C);
}

uint64_t sub_22FE2E52C()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v7 = sub_22FE4194C(&qword_27DAE4710, MEMORY[0x277D85928]);
  sub_22FE43D24();
  sub_22FE4194C(&qword_27DAE4718, MEMORY[0x277D858F8]);
  sub_22FE43A34();
  v8 = *(v5 + 8);
  v0[22] = v8;
  v0[23] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_22FE2E6B0;
  v11 = v0[19];
  v13 = v0[16];
  v12 = v0[17];

  return MEMORY[0x2822008C8](v13, v0 + 5, v12, v7);
}

uint64_t sub_22FE2E6B0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v12 = *v1;
  *(*v1 + 200) = v0;

  v4 = *(v2 + 184);
  if (v0)
  {
    (*(v2 + 176))(*(v2 + 128), *(v2 + 104));
    v5 = sub_22FE2EA64;
  }

  else
  {
    v7 = *(v2 + 144);
    v6 = *(v2 + 152);
    v8 = *(v2 + 136);
    (*(v2 + 176))(*(v2 + 128), *(v2 + 104));
    (*(v7 + 8))(v6, v8);
    v9 = *(v2 + 160);
    v10 = *(v2 + 168);
    v5 = sub_22FE2E810;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FE2E810()
{
  v21 = v0;
  if (*(*(*(v0 + 80) + 40) + 16))
  {
    v1 = *(v0 + 80);
    sub_22FE2F07C(*(v0 + 88), *(v0 + 96));
    v2 = *(v0 + 152);
    v3 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE485C0, 0x94049F30F7200000);
    v5 = v4;
    sub_22FE43D44();
    *(v0 + 64) = v3;
    *(v0 + 72) = v5;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;

    return MEMORY[0x2822009F8](sub_22FE2E52C);
  }

  else
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
      v18 = *(v0 + 80);
    }

    v6 = sub_22FE42D34();
    __swift_project_value_buffer(v6, qword_28148B0E8);

    v7 = sub_22FE42D14();
    v8 = sub_22FE436C4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 80);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22FD98218(*(v9 + 16), *(v9 + 24), &v20);
      _os_log_impl(&dword_22FD6D000, v7, v8, "%s: No More Requests, all done!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23190C380](v11, -1, -1);
      MEMORY[0x23190C380](v10, -1, -1);
    }

    v12 = *(v0 + 152);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 80);
    v16 = *(v15 + 72);
    *(v15 + 72) = 0;

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_22FE2EA64()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x2822009F8](sub_22FE2EAD8);
}

uint64_t sub_22FE2EAD8()
{
  v23 = v0;
  if (qword_28148B0E0 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[10];
  v3 = sub_22FE42D34();
  __swift_project_value_buffer(v3, qword_28148B0E8);

  v4 = v1;
  v5 = sub_22FE42D14();
  v6 = sub_22FE436C4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_22FD98218(*(v9 + 16), *(v9 + 24), &v22);
    *(v10 + 12) = 2112;
    v13 = v8;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_22FD6D000, v5, v6, "%s: Failed to sleep during timeout task: %@", v10, 0x16u);
    sub_22FD93E6C(v11, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190C380](v12, -1, -1);
    MEMORY[0x23190C380](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[19];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[10];
  v19 = *(v18 + 72);
  *(v18 + 72) = 0;

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FE2ED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_22FD73F54;

  return sub_22FE2E2A4(a4, a5, a6);
}

uint64_t sub_22FE2EDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22FD764B4(a3, v27 - v11, qword_27DAE3188, &qword_22FE49380);
  v13 = sub_22FE43404();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22FD93E6C(v12, qword_27DAE3188, &qword_22FE49380);
  }

  else
  {
    sub_22FE433F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22FE43374();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22FE430C4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_22FE2F07C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v59 = *(v61 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v6 = &v53 - v5;
  v7 = sub_22FE43A14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  swift_beginAccess();
  if (*(*(v2 + 40) + 16))
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v15 = sub_22FE42D34();
    v16 = __swift_project_value_buffer(v15, qword_28148B0E8);

    v58 = v16;
    v17 = sub_22FE42D14();
    v18 = sub_22FE43694();

    LODWORD(v57) = v18;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63 = v55;
      *v19 = 136315394;
      *(v19 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), &v63);
      *(v19 + 12) = 2080;
      v20 = sub_22FE43E64();
      v56 = v7;
      v22 = v11;
      v23 = v14;
      v24 = v8;
      v25 = sub_22FD98218(v20, v21, &v63);
      v7 = v56;

      *(v19 + 14) = v25;
      v8 = v24;
      v14 = v23;
      v11 = v22;
      v26 = v17;
      _os_log_impl(&dword_22FD6D000, v17, v57, "%s: Checking for timeout requests that are over %s old.", v19, 0x16u);
      v27 = v55;
      swift_arrayDestroy();
      MEMORY[0x23190C380](v27, -1, -1);
      MEMORY[0x23190C380](v19, -1, -1);
    }

    else
    {
    }

    sub_22FE439E4();
    sub_22FE43EA4();
    sub_22FE43E84();
    sub_22FE43A04();
    v33 = *(v8 + 8);
    v33(v11, v7);
    sub_22FE2D82C(v14);
    v35 = v34;
    v33(v14, v7);
    if (*(v35 + 16))
    {

      v36 = sub_22FE42D14();
      v37 = sub_22FE436C4();

      if (os_log_type_enabled(v36, v37))
      {
        LODWORD(v58) = v37;
        v38 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v63 = v57;
        *v38 = 136315650;
        *(v38 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), &v63);
        *(v38 + 12) = 2048;
        v39 = *(v35 + 16);
        *(v38 + 14) = v39;
        *(v38 + 22) = 2080;
        if (v39)
        {
          v54 = v38;
          v56 = v36;
          v62 = MEMORY[0x277D84F90];
          sub_22FD927B4(0, v39, 0);
          v40 = v62;
          v41 = *(v59 + 80);
          v42 = &qword_27DAE2CA8;
          v55 = v35;
          v43 = v35 + ((v41 + 32) & ~v41);
          v60 = *(v59 + 72);
          do
          {
            sub_22FD764B4(v43, v6, v42, &unk_22FE4BE90);
            if (qword_28148B410 != -1)
            {
              swift_once();
            }

            type metadata accessor for CommunicationActor();
            sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
            sub_22FE43374();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v44 = *&v6[*(v61 + 32)];
            v45 = v42;
            sub_22FD93E6C(v6, v42, &unk_22FE4BE90);
            v62 = v40;
            v47 = *(v40 + 16);
            v46 = *(v40 + 24);
            if (v47 >= v46 >> 1)
            {
              sub_22FD927B4((v46 > 1), v47 + 1, 1);
              v40 = v62;
            }

            *(v40 + 16) = v47 + 1;
            *(v40 + 4 * v47 + 32) = v44;
            v43 += v60;
            --v39;
            v42 = v45;
          }

          while (v39);

          v36 = v56;
          v38 = v54;
        }

        else
        {

          v40 = MEMORY[0x277D84F90];
        }

        v48 = MEMORY[0x23190AE90](v40, MEMORY[0x277D84CC0]);
        v50 = v49;

        v51 = sub_22FD98218(v48, v50, &v63);

        *(v38 + 24) = v51;
        _os_log_impl(&dword_22FD6D000, v36, v58, "%s: Timed out %ld requests: %s", v38, 0x20u);
        v52 = v57;
        swift_arrayDestroy();
        MEMORY[0x23190C380](v52, -1, -1);
        MEMORY[0x23190C380](v38, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_28148B0E0 != -1)
    {
      swift_once();
    }

    v28 = sub_22FE42D34();
    __swift_project_value_buffer(v28, qword_28148B0E8);

    v29 = sub_22FE42D14();
    v30 = sub_22FE43694();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v63 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_22FD98218(*(v3 + 16), *(v3 + 24), &v63);
      _os_log_impl(&dword_22FD6D000, v29, v30, "%s: Checked timeout requests, is empty, returning.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23190C380](v32, -1, -1);
      MEMORY[0x23190C380](v31, -1, -1);
    }
  }
}

Swift::Void __swiftcall XPCMessageCenter.Server.activate()()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22FE42DD4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v0[3];
  v20 = v0[2];
  v7 = qword_28148B420;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_28148B428;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52B8, &unk_22FE4F940);
  v9 = *(v4 + 72);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_22FE49F60;
  v11 = v8;
  sub_22FE42DC4();
  sub_22FE4194C(qword_28148AE90, MEMORY[0x277D855D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52C0, &qword_22FE4F740);
  sub_22FDBC930(&qword_28148AE70, &qword_27DAE52C0, &qword_22FE4F740);
  sub_22FE43824();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = *(v2 + 80);
  *(v13 + 24) = *(v2 + 88);
  *(v13 + 32) = *(v2 + 96);
  *(v13 + 48) = *(v2 + 112);
  *(v13 + 56) = v12;
  v14 = sub_22FE42E44();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_22FE42E24();
  v18 = v1[4];
  v1[4] = v17;

  if (v1[4])
  {
    v19 = v1[4];

    sub_22FE42E34();
  }
}

uint64_t XPCMessageCenter.Server.registerData<A>(request:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 80);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](a1);
  (*(v15 + 16))(v18 - v14, v13);
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = a4;
  v16[4] = v10[11];
  v16[5] = v10[12];
  v16[6] = a5;
  v16[7] = v10[13];
  v16[8] = v10[14];
  v16[9] = a2;
  v16[10] = a3;
  v18[4] = &unk_22FE4F958;
  v18[5] = v16;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE5360, &qword_22FE4F9A0);
  sub_22FE42FA4();
  sub_22FE42FC4();
  return swift_endAccess();
}

uint64_t XPCMessageCenter.Client.sendData(request:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v5[7] = *v4;
  v7 = *(v6 + 80);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();

  return MEMORY[0x2822009F8](sub_22FE2FEBC);
}

uint64_t sub_22FE2FEBC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v15 = v0[5];
  v16 = v0[2];
  (*(v4 + 16))(v1, v0[3], v3);
  v8 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = *(v6 + 88);
  *(v10 + 32) = *(v6 + 96);
  *(v10 + 48) = *(v6 + 112);
  *(v10 + 56) = v5;
  (*(v4 + 32))(v10 + v8, v1, v3);
  v11 = (v10 + v9);
  *v11 = v7;
  v11[1] = v15;

  sub_22FDB4380(v7, v15);
  v12 = sub_22FE275DC(&unk_22FE4F9B8, v10);

  *v16 = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_22FE3002C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165527472617473 && a2 == 0xEC00000074736575;
  if (v4 || (sub_22FE43CB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x78654E6863746566 && a2 == 0xE900000000000074)
  {

    return 1;
  }

  else
  {
    v6 = sub_22FE43CB4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22FE30104(char a1)
{
  if (a1)
  {
    return 0x78654E6863746566;
  }

  else
  {
    return 0x7165527472617473;
  }
}

uint64_t sub_22FE301E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE30238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE3028C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_22FE43CB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_22FE43CB4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22FE30348(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_22FE30360(void *a1, void *a2)
{
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v57 = a2[2];
  v5 = v57;
  v58 = v4;
  v59 = v7;
  v60 = v6;
  v61 = v8;
  NextCodingKeys = type metadata accessor for XPCMessageCenter.XPCRequest.FetchNextCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_22FE43C04();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v39 - v11;
  v58 = v4;
  v59 = v7;
  v60 = v6;
  v61 = v8;
  started = type metadata accessor for XPCMessageCenter.XPCRequest.StartRequestCodingKeys();
  v41 = swift_getWitnessTable();
  v42 = started;
  v13 = sub_22FE43C04();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v56 = &v39 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  v16 = *(v39 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v53 = &v39 - v17;
  v18 = *(a2 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = (&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = v5;
  v58 = v4;
  v59 = v7;
  v60 = v6;
  v50 = v8;
  v61 = v8;
  type metadata accessor for XPCMessageCenter.XPCRequest.CodingKeys();
  swift_getWitnessTable();
  v51 = sub_22FE43C04();
  v54 = *(v51 - 8);
  v23 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  v25 = &v39 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FE43E44();
  (*(v18 + 16))(v22, v52, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v22;
    LOBYTE(v57) = 1;
    v28 = v44;
    v29 = v51;
    sub_22FE43BC4();
    v30 = v47;
    sub_22FE43BF4();
    (*(v46 + 8))(v28, v30);
    return (*(v54 + 8))(v25, v29);
  }

  else
  {
    v32 = AssociatedTypeWitness;
    v33 = (v22 + *(swift_getTupleTypeMetadata2() + 48));
    v34 = v33[1];
    v52 = *v33;
    v35 = v39;
    (*(v39 + 32))(v53, v22, v32);
    LOBYTE(v57) = 0;
    v36 = v51;
    sub_22FE43BC4();
    LOBYTE(v57) = 0;
    v37 = v49;
    v38 = v55;
    sub_22FE43BE4();
    if (v38)
    {
      sub_22FD917D4(v52, v34);
      (*(v48 + 8))(v56, v37);
      (*(v35 + 8))(v53, v32);
      return (*(v54 + 8))(v25, v36);
    }

    else
    {
      v57 = v52;
      v58 = v34;
      v62 = 1;
      sub_22FE421D4();
      sub_22FE43BE4();
      (*(v48 + 8))(v56, v37);
      (*(v35 + 8))(v53, v32);
      (*(v54 + 8))(v25, v36);
      return sub_22FD917D4(v52, v34);
    }
  }
}

uint64_t sub_22FE30988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v92 = a1;
  v84 = a7;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  v91 = a6;
  NextCodingKeys = type metadata accessor for XPCMessageCenter.XPCRequest.FetchNextCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v78 = NextCodingKeys;
  v69 = sub_22FE43BB4();
  v68 = *(v69 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v79 = &v63 - v14;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  v91 = a6;
  started = type metadata accessor for XPCMessageCenter.XPCRequest.StartRequestCodingKeys();
  v75 = swift_getWitnessTable();
  v76 = started;
  v74 = sub_22FE43BB4();
  v70 = *(v74 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v74);
  v82 = &v63 - v17;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  v91 = a6;
  type metadata accessor for XPCMessageCenter.XPCRequest.CodingKeys();
  swift_getWitnessTable();
  v83 = sub_22FE43BB4();
  v85 = *(v83 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  v20 = &v63 - v19;
  v71 = a2;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  v72 = a4;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  v73 = a5;
  v91 = a6;
  v21 = type metadata accessor for XPCMessageCenter.XPCRequest();
  v80 = *(v21 - 8);
  v81 = v21;
  v22 = *(v80 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v63 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v63 - v29;
  v31 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v32 = v86;
  sub_22FE43E34();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_0(v92);
  }

  v64 = v24;
  v67 = 0;
  v66 = v27;
  v33 = v82;
  v65 = v30;
  v35 = v83;
  v34 = v84;
  v86 = v20;
  *&v87 = sub_22FE43BA4();
  sub_22FE43354();
  swift_getWitnessTable();
  *&v89 = sub_22FE43814();
  *(&v89 + 1) = v36;
  *&v90 = v37;
  *(&v90 + 1) = v38;
  sub_22FE43804();
  swift_getWitnessTable();
  sub_22FE43604();
  v39 = v87;
  if (v87 == 2 || (v63 = v89, v87 = v89, v88 = v90, (sub_22FE43644() & 1) == 0))
  {
    v49 = sub_22FE43964();
    swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE55B8, &qword_22FE4FF30) + 48);
    *v51 = v81;
    v53 = v86;
    sub_22FE43B64();
    sub_22FE43954();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    (*(v85 + 8))(v53, v35);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v92);
  }

  if ((v39 & 1) == 0)
  {
    LOBYTE(v87) = 0;
    v41 = v86;
    v54 = v67;
    sub_22FE43B54();
    v43 = v80;
    if (!v54)
    {
      v44 = v34;
      v55 = v33;
      swift_getAssociatedTypeWitness();
      LOBYTE(v87) = 0;
      v57 = v66;
      sub_22FE43B84();
      v59 = *(swift_getTupleTypeMetadata2() + 48);
      LOBYTE(v87) = 1;
      sub_22FE422A0();
      v60 = v74;
      sub_22FE43B84();
      (*(v70 + 8))(v55, v60);
      (*(v85 + 8))(v41, v35);
      swift_unknownObjectRelease();
      v58 = v81;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  LOBYTE(v87) = 1;
  v40 = v79;
  v41 = v86;
  v42 = v67;
  sub_22FE43B54();
  v43 = v80;
  if (v42)
  {
LABEL_10:
    (*(v85 + 8))(v41, v35);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v92);
  }

  v44 = v34;
  v45 = v69;
  v46 = sub_22FE43B94();
  v47 = v40;
  v48 = v85;
  (*(v68 + 8))(v47, v45);
  (*(v48 + 8))(v41, v35);
  swift_unknownObjectRelease();
  v57 = v64;
  *v64 = v46;
  v58 = v81;
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v61 = *(v43 + 32);
  v62 = v65;
  v61(v65, v57, v58);
  v61(v44, v62, v58);
  return __swift_destroy_boxed_opaque_existential_0(v92);
}

uint64_t sub_22FE312B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7274537472617473 && a2 == 0xEB000000006D6165;
  if (v4 || (sub_22FE43CB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000 || (sub_22FE43CB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563637553646E65 && a2 == 0xEA00000000007373 || (sub_22FE43CB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F727245646E65 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22FE43CB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22FE31460(unsigned __int8 a1)
{
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](a1);
  return sub_22FE43E04();
}

uint64_t sub_22FE314A8(unsigned __int8 a1)
{
  v1 = 0x7274537472617473;
  v2 = 0x6563637553646E65;
  if (a1 != 2)
  {
    v2 = 0x726F727245646E65;
  }

  if (a1)
  {
    v1 = 1954047342;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22FE31528(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22FE43CB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22FE31598(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v74 = a4;
  v72 = a3;
  v73 = a2;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v84 = a9;
  v14 = type metadata accessor for XPCMessageCenter.XPCResponse.EndErrorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v66 = v14;
  v15 = sub_22FE43C04();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = v51 - v17;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v84 = a9;
  v18 = type metadata accessor for XPCMessageCenter.XPCResponse.EndSuccessCodingKeys();
  v19 = swift_getWitnessTable();
  v64 = v18;
  v62 = v19;
  v63 = sub_22FE43C04();
  v61 = *(v63 - 8);
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = v51 - v21;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v84 = a9;
  CodingKeys = type metadata accessor for XPCMessageCenter.XPCResponse.NextCodingKeys();
  v23 = swift_getWitnessTable();
  v56 = CodingKeys;
  v55 = v23;
  v59 = sub_22FE43C04();
  v58 = *(v59 - 8);
  v24 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = v51 - v25;
  v80 = a5;
  v81 = a6;
  v82 = a7;
  v83 = a8;
  v84 = a9;
  type metadata accessor for XPCMessageCenter.XPCResponse.StartStreamCodingKeys();
  v51[1] = swift_getWitnessTable();
  v54 = sub_22FE43C04();
  v53 = *(v54 - 8);
  v26 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = v51 - v27;
  v80 = a5;
  v81 = a6;
  v67 = a7;
  v82 = a7;
  v83 = a8;
  v69 = a8;
  v84 = a9;
  type metadata accessor for XPCMessageCenter.XPCResponse.CodingKeys();
  swift_getWitnessTable();
  v28 = sub_22FE43C04();
  v76 = *(v28 - 8);
  v77 = v28;
  v29 = *(v76 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = v51 - v30;
  v32 = a1;
  v34 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(v32, v34);
  v75 = v31;
  sub_22FE43E44();
  if (v74 > 1u)
  {
    if (v74 == 2)
    {
      LOBYTE(v80) = 3;
      v40 = v68;
      v41 = v77;
      v42 = v75;
      sub_22FE43BC4();
      v78 = v73;
      v79 = v72;
      v80 = a5;
      v81 = a6;
      v82 = v67;
      v83 = v69;
      v84 = a9;
      type metadata accessor for XPCMessageCenter.XPCErrorResponse();
      swift_getWitnessTable();
      v43 = v71;
      sub_22FE43BE4();
      (*(v70 + 8))(v40, v43);
      return (*(v76 + 8))(v42, v41);
    }

    else
    {
      LOBYTE(v80) = 2;
      v48 = v60;
      v49 = v77;
      v50 = v75;
      sub_22FE43BC4();
      (*(v61 + 8))(v48, v63);
      return (*(v76 + 8))(v50, v49);
    }
  }

  else if (v74)
  {
    LOBYTE(v80) = 1;
    v44 = v57;
    v45 = v77;
    v46 = v75;
    sub_22FE43BC4();
    v80 = v73;
    v81 = v72;
    sub_22FE421D4();
    v47 = v59;
    sub_22FE43BE4();
    (*(v58 + 8))(v44, v47);
    return (*(v76 + 8))(v46, v45);
  }

  else
  {
    LOBYTE(v80) = 0;
    v35 = v52;
    v36 = v77;
    v37 = v75;
    sub_22FE43BC4();
    v38 = v54;
    sub_22FE43BF4();
    (*(v53 + 8))(v35, v38);
    return (*(v76 + 8))(v37, v36);
  }
}

uint64_t sub_22FE31CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v93 = a6;
  v12 = type metadata accessor for XPCMessageCenter.XPCResponse.EndErrorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v80 = v12;
  v71 = sub_22FE43BB4();
  v70 = *(v71 - 8);
  v13 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v81 = &v59 - v14;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v93 = a6;
  v15 = type metadata accessor for XPCMessageCenter.XPCResponse.EndSuccessCodingKeys();
  v16 = swift_getWitnessTable();
  v78 = v15;
  v77 = v16;
  v69 = sub_22FE43BB4();
  v68 = *(v69 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v76 = &v59 - v18;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v93 = a6;
  CodingKeys = type metadata accessor for XPCMessageCenter.XPCResponse.NextCodingKeys();
  v20 = swift_getWitnessTable();
  v74 = CodingKeys;
  v73 = v20;
  v67 = sub_22FE43BB4();
  v66 = *(v67 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v75 = &v59 - v22;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v93 = a6;
  started = type metadata accessor for XPCMessageCenter.XPCResponse.StartStreamCodingKeys();
  v72 = swift_getWitnessTable();
  v65 = sub_22FE43BB4();
  v64 = *(v65 - 8);
  v24 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v26 = &v59 - v25;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  v82 = a4;
  v83 = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v85 = a5;
  v86 = a6;
  v93 = a6;
  type metadata accessor for XPCMessageCenter.XPCResponse.CodingKeys();
  swift_getWitnessTable();
  v84 = sub_22FE43BB4();
  v27 = *(v84 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v84);
  v30 = &v59 - v29;
  v31 = a1;
  v32 = a1[3];
  v33 = a1[4];
  v94 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v34 = v87;
  sub_22FE43E34();
  if (!v34)
  {
    v60 = started;
    v61 = v26;
    v63 = a2;
    v62 = 0;
    v35 = v85;
    started = v86;
    v87 = v27;
    v36 = v84;
    v37 = v30;
    *&v91 = sub_22FE43BA4();
    sub_22FE43354();
    swift_getWitnessTable();
    *&v89 = sub_22FE43814();
    *(&v89 + 1) = v38;
    *&v90 = v39;
    *(&v90 + 1) = v40;
    sub_22FE43804();
    swift_getWitnessTable();
    sub_22FE43604();
    v41 = v91;
    v42 = v36;
    if (v91 == 4 || (v59 = v89, v91 = v89, v92 = v90, (sub_22FE43644() & 1) == 0))
    {
      v47 = sub_22FE43964();
      swift_allocError();
      v49 = v48;
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE55B8, &qword_22FE4FF30) + 48);
      *&v91 = v63;
      *(&v91 + 1) = v83;
      *&v92 = v82;
      *(&v92 + 1) = v35;
      v93 = started;
      *v49 = type metadata accessor for XPCMessageCenter.XPCResponse();
      sub_22FE43B64();
      sub_22FE43954();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
      swift_willThrow();
      (*(v87 + 8))(v37, v36);
    }

    else
    {
      if (v41 > 1)
      {
        v43 = v87;
        if (v41 == 2)
        {
          LOBYTE(v91) = 2;
          started = v76;
          v51 = v62;
          sub_22FE43B54();
          if (!v51)
          {
            (*(v68 + 8))(started, v69);
            (*(v43 + 8))(v37, v36);
            swift_unknownObjectRelease();
            started = 0;
            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v91) = 3;
          v55 = v81;
          v56 = v62;
          sub_22FE43B54();
          if (!v56)
          {
            *&v91 = v63;
            *(&v91 + 1) = v83;
            *&v92 = v82;
            *(&v92 + 1) = v35;
            v93 = started;
            type metadata accessor for XPCMessageCenter.XPCErrorResponse();
            swift_getWitnessTable();
            v57 = v71;
            sub_22FE43B84();
            (*(v70 + 8))(v55, v57);
            (*(v43 + 8))(v37, v42);
            swift_unknownObjectRelease();
            started = v88;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v43 = v87;
        if (v41)
        {
          LOBYTE(v91) = 1;
          v52 = v75;
          v53 = v62;
          sub_22FE43B54();
          if (!v53)
          {
            sub_22FE422A0();
            v54 = v67;
            sub_22FE43B84();
            (*(v66 + 8))(v52, v54);
            (*(v43 + 8))(v37, v36);
            swift_unknownObjectRelease();
            started = v91;
            goto LABEL_18;
          }
        }

        else
        {
          LOBYTE(v91) = 0;
          v44 = v61;
          v45 = v62;
          sub_22FE43B54();
          if (!v45)
          {
            v46 = v65;
            LODWORD(started) = sub_22FE43B94();
            (*(v64 + 8))(v44, v46);
            (*(v43 + 8))(v37, v42);
            swift_unknownObjectRelease();
            started = started;
            goto LABEL_18;
          }
        }
      }

      (*(v43 + 8))(v37, v42);
    }

    swift_unknownObjectRelease();
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_0(v94);
  return started;
}

uint64_t sub_22FE3272C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22FE43CB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22FE327A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  type metadata accessor for XPCMessageCenter.XPCErrorResponse.CodingKeys();
  swift_getWitnessTable();
  v9 = sub_22FE43C04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FE43E44();
  sub_22FE43BD4();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_22FE32914(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  type metadata accessor for XPCMessageCenter.XPCErrorResponse.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_22FE43BB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FE43E34();
  if (!v6)
  {
    v14 = sub_22FE43B74();
    (*(v9 + 8))(v12, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

uint64_t sub_22FE32AF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE32B48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE32BC0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_22FD7729C(*v1);
}

uint64_t sub_22FE32C0C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void))
{
  sub_22FE43DB4();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6]);
  return sub_22FE43E04();
}

uint64_t sub_22FE32CBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE32D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

BOOL sub_22FE32DA4(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  return sub_22FE31428(*a1, *a2);
}

uint64_t sub_22FE32DC0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_22FE31460(*v1);
}

uint64_t sub_22FE32DD4(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  return sub_22FE31438(a1, *v2);
}

uint64_t sub_22FE32DE8(uint64_t a1, void *a2)
{
  sub_22FE43DB4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  sub_22FE31438(v10, *v2);
  return sub_22FE43E04();
}

uint64_t sub_22FE32E38(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_22FE314A8(*v1);
}

uint64_t sub_22FE32E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6]);
  *a5 = result;
  return result;
}

uint64_t sub_22FE32EBC@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a3 = result;
  return result;
}

uint64_t sub_22FE32EFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE32F50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE32FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_22FE31528(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_22FE32FE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE33034(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE33094@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = sub_22FE32AC8();

  *a2 = v8 & 1;
  return result;
}

uint64_t sub_22FE330E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE3313C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE33190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE331E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE33238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE3328C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE332E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22FE31CC8(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

uint64_t sub_22FE3335C()
{
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](0);
  return sub_22FE43E04();
}

uint64_t sub_22FE333A0()
{
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](0);
  return sub_22FE43E04();
}

uint64_t sub_22FE333F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_22FE3272C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_22FE33434@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22FE33478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_22FE334CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_22FE33520@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22FE32914(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_22FE33588()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = sub_22FE42D84();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if (v0[4])
  {
    v7 = v0[4];
LABEL_3:

    return v7;
  }

  sub_22FE42DB4();
  v8 = v0[2];
  v9 = v0[3];
  v10 = qword_28148B420;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28148B428;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = *(v4 + 80);
  *(v13 + 24) = *(v4 + 88);
  *(v13 + 32) = *(v4 + 96);
  *(v13 + 48) = *(v4 + 112);
  *(v13 + 56) = v12;
  v14 = v11;

  sub_22FE42D74();
  v7 = sub_22FE42D64();

  if (!v2)
  {
    v16 = v3[4];
    v3[4] = v7;

    goto LABEL_3;
  }

  return v7;
}

uint64_t sub_22FE3377C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_22FE42E54();
    sub_22FE4194C(&qword_27DAE5358, MEMORY[0x277D855E8]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 16))(v6, a2, v4);
    XPCMessageCenter.Client.onCancel(error:)(v5);
  }

  return result;
}

uint64_t XPCMessageCenter.Client.onCancel(error:)(void *a1)
{
  v2 = v1;
  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v4 = sub_22FE42D34();
  __swift_project_value_buffer(v4, qword_28148B108);
  v5 = a1;
  v6 = sub_22FE42D14();
  v7 = sub_22FE436A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FD6D000, v6, v7, "Session Cancelled: %@", v8, 0xCu);
    sub_22FD93E6C(v9, &qword_27DAE4208, &qword_22FE4ACE0);
    MEMORY[0x23190C380](v9, -1, -1);
    MEMORY[0x23190C380](v8, -1, -1);
  }

  v12 = *(v2 + 32);
  *(v2 + 32) = 0;
}

void *XPCMessageCenter.Client.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  return v2;
}

uint64_t XPCMessageCenter.Client.deinit()
{
  if (*(v0 + 32))
  {

    sub_22FE42DA4();
  }

  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t XPCMessageCenter.Client.__deallocating_deinit()
{
  XPCMessageCenter.Client.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22FE33AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = a6;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  *(v6 + 112) = a1;
  *(v6 + 120) = a2;
  v7 = *a3;
  v8 = *(*a3 + 80);
  *(v6 + 160) = v8;
  v9 = v7[11];
  *(v6 + 168) = v9;
  v10 = v7[12];
  *(v6 + 176) = v10;
  v11 = v7[13];
  *(v6 + 184) = v11;
  v12 = v7[14];
  *&v13 = v8;
  *(&v13 + 1) = v9;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  *(v6 + 192) = v12;
  *(v6 + 32) = v14;
  *(v6 + 16) = v13;
  *(v6 + 48) = v12;
  v15 = type metadata accessor for XPCMessageCenter.XPCRequest();
  *(v6 + 200) = v15;
  v16 = *(v15 - 8);
  *(v6 + 208) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE33C10);
}

uint64_t sub_22FE33C10()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v7 = v0[18];
  swift_getAssociatedTypeWitness();
  v8 = (v1 + *(swift_getTupleTypeMetadata2() + 48));
  sub_22FE43254();
  *v8 = v7;
  v8[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_22FDB4380(v7, v5);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_22FE33D48;
  v10 = v0[28];
  v11 = v0[16];

  return sub_22FE34788(v10);
}

uint64_t sub_22FE33D48(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 232);
  v8 = *v4;
  v6[30] = a1;
  v6[31] = a2;
  *(v6 + 328) = a3;
  v6[32] = v3;

  v9 = v5[28];
  v10 = v5[26];
  v11 = v5[25];
  v14 = *(v10 + 8);
  v12 = v10 + 8;
  v13 = v14;
  if (v3)
  {
    v13(v9, v11);
    v15 = sub_22FE346A4;
  }

  else
  {
    v6[33] = v13;
    v6[34] = v12 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v9, v11);
    v15 = sub_22FE33ED8;
  }

  return MEMORY[0x2822009F8](v15);
}

uint64_t sub_22FE33ED8()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    sub_22FDD4264();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_22FE28D40(v3, v2, v1);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 200);
    **(v0 + 216) = *(v0 + 240);
    swift_storeEnumTagMultiPayload();
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    v10[1] = sub_22FE3402C;
    v11 = *(v0 + 216);
    v12 = *(v0 + 128);

    return sub_22FE34788(v11);
  }
}

uint64_t sub_22FE3402C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  v8 = *(*v4 + 280);
  v9 = *v4;
  v7[36] = a1;
  v7[37] = a2;
  v7[38] = v3;

  v10 = v6[34];
  v11 = v6[33];
  v12 = v6[27];
  v13 = v6[25];
  if (v3)
  {
    v11(v12, v13);
    v14 = sub_22FE34710;
  }

  else
  {
    *(v7 + 329) = a3;
    v11(v12, v13);
    v14 = sub_22FE341BC;
  }

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_22FE341BC()
{
  if (*(v0 + 329) > 1u)
  {
    if (*(v0 + 329) != 2)
    {
      v18 = *(v0 + 216);
      v19 = *(v0 + 224);
      sub_22FE28D40(*(v0 + 240), *(v0 + 248), 0);

      v10 = *(v0 + 8);
      goto LABEL_11;
    }

    *(v0 + 56) = *(v0 + 160);
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v2 = *(v0 + 240);
    v1 = *(v0 + 248);
    v6 = *(v0 + 192);
    *(v0 + 72) = *(v0 + 176);
    *(v0 + 88) = v6;
    type metadata accessor for XPCMessageCenter.XPCErrorResponse();
    swift_getWitnessTable();
    swift_allocError();
    *v7 = v5;
    v7[1] = v4;
LABEL_6:
    swift_willThrow();
    sub_22FE28D40(v2, v1, 0);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);

    v10 = *(v0 + 8);
LABEL_11:

    return v10();
  }

  if (!*(v0 + 329))
  {
    v2 = *(v0 + 240);
    v1 = *(v0 + 248);
    sub_22FDD4264();
    swift_allocError();
    *v3 = 1;
    goto LABEL_6;
  }

  v11 = *(v0 + 288);
  v12 = *(v0 + 296);
  v13 = *(v0 + 112);
  *(v0 + 96) = v11;
  *(v0 + 104) = v12;
  sub_22FDB4380(v11, v12);
  v20 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 312) = v15;
  *v15 = v0;
  v15[1] = sub_22FE34410;
  v16 = *(v0 + 120);

  return v20(v0 + 96);
}

uint64_t sub_22FE34410()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_22FE345F8;
  }

  else
  {
    v3 = sub_22FE34524;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FE34524()
{
  v1 = v0[36];
  v2 = v0[37];
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v1, v2, 1);
  v3 = v0[25];
  *v0[27] = v0[30];
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_22FE3402C;
  v5 = v0[27];
  v6 = v0[16];

  return sub_22FE34788(v5);
}

uint64_t sub_22FE345F8()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[30];
  v3 = v0[31];
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v1, v2, 1);
  sub_22FE28D40(v4, v3, 0);
  v5 = v0[40];
  v7 = v0[27];
  v6 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22FE346A4()
{
  v1 = v0[32];
  v3 = v0[27];
  v2 = v0[28];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FE34710()
{
  sub_22FE28D40(v0[30], v0[31], 0);
  v1 = v0[38];
  v3 = v0[27];
  v2 = v0[28];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FE34788(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *v1;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  v2[13] = off_28148B418;
  type metadata accessor for CommunicationActor();
  v2[14] = sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
  v2[15] = sub_22FE43374();
  v2[16] = v3;

  return MEMORY[0x2822009F8](sub_22FE348A8);
}

uint64_t sub_22FE348A8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  v4[1] = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  v7 = *(v3 + 112);
  v8 = *(v3 + 96);
  *(v0 + 16) = *(v3 + 80);
  *(v0 + 32) = v8;
  *(v0 + 48) = v7;
  v9 = type metadata accessor for XPCMessageCenter.XPCResponse();
  *v6 = v0;
  v6[1] = sub_22FE349D8;

  return MEMORY[0x2822008A0](v0 + 56, v1, v2, 0x73656D28646E6573, 0xEE00293A65676173, sub_22FE41380, v4, v9);
}

uint64_t sub_22FE349D8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v11 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[15];
    v5 = v2[16];
    v6 = sub_22FE34B14;
  }

  else
  {
    v7 = v2[17];

    v8 = v2[15];
    v9 = v2[16];
    v6 = sub_22FE34AF4;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22FE34B14()
{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_22FE34B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v30 = a1;
  v3 = *(*a2 + 80);
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v26 = *(*a2 + 112);
  v27 = v3;
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = v6;
  v35 = v26;
  v7 = type metadata accessor for XPCMessageCenter.XPCResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v28 = v7;
  v8 = sub_22FE433A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_22FE33588();
  (*(v9 + 16))(v12, v30, v8);
  v14 = *(v9 + 80);
  v25[2] = v13;
  v15 = (v14 + 56) & ~v14;
  v16 = swift_allocObject();
  v17 = v6;
  v18 = v5;
  v19 = v4;
  v20 = v27;
  *(v16 + 2) = v27;
  *(v16 + 3) = v19;
  *(v16 + 4) = v18;
  *(v16 + 5) = v17;
  v21 = v8;
  v22 = v26;
  *(v16 + 6) = v26;
  v23 = *(v9 + 32);
  v25[1] = v21;
  v23(&v16[v15], v12);
  v31 = v20;
  v32 = v19;
  v33 = v18;
  v34 = v17;
  v35 = v22;
  type metadata accessor for XPCMessageCenter.XPCRequest();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22FE42D94();
}

uint64_t sub_22FE34F08(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 17) == 1)
  {
    v3 = v2;
    type metadata accessor for XPCMessageCenter.XPCResponse();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE433A4();
    return sub_22FE43384();
  }

  else
  {
    sub_22FE2924C(v2, *(a1 + 8), *(a1 + 16));
    type metadata accessor for XPCMessageCenter.XPCResponse();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE433A4();
    return sub_22FE43394();
  }
}

uint64_t XPCMessageCenter.Server.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XPCMessageCenter.Server.init(serviceName:)(a1, a2);
  return v4;
}

uint64_t *XPCMessageCenter.Server.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v2[4] = 0;
  v6 = *(v5 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE5360, &qword_22FE4F9A0);
  swift_getTupleTypeMetadata2();
  v8 = sub_22FE432D4();
  v9 = sub_22FDECED0(v8, v6, v7, *(v5 + 88));

  v2[5] = v9;
  v2[2] = a1;
  v2[3] = a2;
  v10 = sub_22FDB13CC(0xD000000000000015, 0x800000022FE44940, 0x86AC351052600000);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE5368, &qword_22FE4F9C8);
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  v14 = sub_22FD761C8(MEMORY[0x277D84F90]);
  *(v13 + 72) = 0;
  *(v13 + 40) = v14;
  *(v13 + 48) = v10;
  *(v13 + 56) = v12;
  *(v13 + 64) = 0;
  *(v13 + 16) = 0xD000000000000010;
  *(v13 + 24) = 0x800000022FE44960;
  v2[6] = v13;
  return v2;
}

void *XPCMessageCenter.Server.deinit()
{
  if (v0[4])
  {

    sub_22FE42E14();
  }

  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t XPCMessageCenter.Server.__deallocating_deinit()
{
  XPCMessageCenter.Server.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22FE3527C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_22FE42DE4();
  if (v15 != 1)
  {
    return sub_22FE42E04();
  }

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v13[7] = a2;

  sub_22FE42DF4();
}

void sub_22FE353AC(BOOL *a1@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22FE184A4();
  if (!v2)
  {
    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v3 = sub_22FE42D34();
    __swift_project_value_buffer(v3, qword_28148B108);
    v4 = sub_22FE42D14();
    v5 = sub_22FE436C4();
    if (os_log_type_enabled(v4, v5))
    {
      v13 = a1;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14[0] = v7;
      *v6 = 136315138;
      if (xpc_copy_code_signing_identity_for_token())
      {
        v8 = sub_22FE43104();
        v10 = v9;
      }

      else
      {
        v10 = 0xE300000000000000;
        v8 = 4144959;
      }

      v11 = sub_22FD98218(v8, v10, v14);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_22FD6D000, v4, v5, "Rejecting Request from %s: Missing Entitlement", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23190C380](v7, -1, -1);
      MEMORY[0x23190C380](v6, -1, -1);

      a1 = v13;
    }

    else
    {
    }
  }

  *a1 = v2;
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22FE355DC@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_22FE35660(a1);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_22FE35660(uint64_t a1)
{
  v2 = v1;
  v105 = a1;
  v3 = *v1;
  v94 = sub_22FE42E84();
  v98 = *(v94 - 8);
  v4 = *(v98 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = v5;
  v93 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v102 = &v85 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  v9 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v99 = (&v85 - v10);
  v11 = v3[12];
  v12 = v3[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  v13 = *(v97 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v96 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  v17 = v3[14];
  *&v18 = v12;
  *(&v18 + 1) = v3[11];
  *&v19 = v11;
  *(&v19 + 1) = v3[13];
  v103 = v19;
  v104 = v18;
  v108 = v18;
  v109 = v19;
  v110 = v17;
  v20 = type metadata accessor for XPCMessageCenter.XPCRequest();
  v100 = *(v20 - 8);
  v21 = *(v100 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  swift_getWitnessTable();
  sub_22FE42E74();
  v27 = v98;
  v88 = v13;
  v28 = v97;
  v91 = v2;
  v29 = AssociatedTypeWitness;
  v89 = v17;
  v30 = v100;
  (*(v100 + 16))(v23, v26, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v90 = v26;
  if (EnumCaseMultiPayload == 1)
  {
    LODWORD(AssociatedTypeWitness) = *v23;
    v32 = sub_22FE43404();
    (*(*(v32 - 8) + 56))(v102, 1, 1, v32);
    v33 = v27;
    v34 = v93;
    v35 = v94;
    (*(v27 + 16))(v93, v105, v94);
    v36 = qword_28148B410;
    v37 = v91;

    if (v36 != -1)
    {
      swift_once();
    }

    v38 = off_28148B418;
    v39 = sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
    v40 = (*(v33 + 80) + 84) & ~*(v33 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    *(v41 + 24) = v39;
    v42 = v103;
    *(v41 + 32) = v104;
    *(v41 + 48) = v42;
    *(v41 + 64) = v89;
    *(v41 + 72) = v37;
    *(v41 + 80) = AssociatedTypeWitness;
    (*(v33 + 32))(v41 + v40, v34, v35);

    sub_22FE0BBD0(0, 0, v102, &unk_22FE4FB60, v41);

    return (*(v30 + 8))(v90, v20);
  }

  else
  {
    v92 = v20;
    v44 = v29;
    v45 = &v23[*(swift_getTupleTypeMetadata2() + 48)];
    v47 = *v45;
    v46 = v45[1];
    v98 = v47;
    v94 = v46;
    v48 = v28;
    v49 = v16;
    v87 = *(v28 + 32);
    v85 = v28 + 32;
    v87(v16, v23, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52E8, &qword_22FE4F768);
    v50 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE3EB0, &unk_22FE4FB70);
    v51 = swift_allocObject();
    *(v51 + 24) = 0;
    *(v51 + 16) = 0;
    v52 = MEMORY[0x277D84F90];
    sub_22FE38DB0(MEMORY[0x277D84F90]);
    v54 = v53;
    v56 = v55;
    sub_22FE38CB8(v52, sub_22FE38E78, sub_22FD92698, &qword_27DAE40A8, &qword_22FE4A0D8);
    v58 = v57;
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE52F0, &qword_22FE4F770);
    v61 = swift_allocObject();
    *(v61 + 64) = 0;
    *(v61 + 16) = v54;
    *(v61 + 24) = v56;
    v62 = MEMORY[0x277D84FA0];
    *(v61 + 32) = MEMORY[0x277D84FA0];
    *(v61 + 40) = v58;
    v63 = v48;
    *(v61 + 48) = v60;
    *(v61 + 56) = v62;
    *(v50 + 16) = v61;
    *(v50 + 24) = v51;
    v64 = v91[6];

    v65 = v99;
    sub_22FE2C7E4(v50, v99);

    v86 = *(v65 + *(v95 + 32));
    v66 = sub_22FE43404();
    (*(*(v66 - 8) + 56))(v102, 1, 1, v66);
    v67 = *(v48 + 16);
    v68 = v96;
    v95 = v49;
    v67(v96, v49, v44);

    sub_22FDB4380(v98, v94);
    v69 = qword_28148B410;
    v93 = v50;

    if (v69 != -1)
    {
      swift_once();
    }

    v70 = off_28148B418;
    v71 = sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
    v72 = (*(v63 + 80) + 72) & ~*(v63 + 80);
    v73 = (v88 + v72 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v74 = v63;
    v75 = (v73 + 11) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    *(v78 + 16) = v70;
    *(v78 + 24) = v71;
    v79 = v103;
    *(v78 + 32) = v104;
    *(v78 + 48) = v79;
    v80 = v89;
    *(v78 + 64) = v89;
    v87((v78 + v72), v68, AssociatedTypeWitness);
    v81 = v86;
    *(v78 + v73) = v86;
    *(v78 + v75) = v91;
    v82 = (v78 + v76);
    v83 = v98;
    v84 = v94;
    *v82 = v98;
    v82[1] = v84;
    *(v78 + v77) = v93;

    sub_22FE0BBD0(0, 0, v102, &unk_22FE4FB88, v78);

    v106 = v81;
    v107 = 0;
    v108 = v104;
    v109 = v103;
    v110 = v80;
    type metadata accessor for XPCMessageCenter.XPCResponse();
    swift_getWitnessTable();
    sub_22FE42E64();

    sub_22FD917D4(v83, v84);
    sub_22FD93E6C(v99, &qword_27DAE2CA8, &unk_22FE4BE90);
    (*(v74 + 8))(v95, AssociatedTypeWitness);
    return (*(v100 + 8))(v90, v92);
  }
}

uint64_t sub_22FE36148(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a6;
  *(v6 + 48) = v8;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_22FE36180);
}

uint64_t sub_22FE36180()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 88) = 2;
  *(v1 + 24) = *(v0 + 40);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_22FE362A0;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 32);

  return v10(boxed_opaque_existential_1, v6, v7, v0 + 88);
}

uint64_t sub_22FE362A0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE363D4);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FE363D4()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_22FE36438(uint64_t a1, _OWORD *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v15 = *(v2 + 48);
  v11 = *(v2 + 64);
  v10 = *(v2 + 72);
  v12 = *(v2 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22FD8C738;

  return sub_22FE36148(a1, a2, v10, v12, v6, v7);
}

uint64_t sub_22FE36538(uint64_t a1, uint64_t a2)
{
  v6 = (*(*(*(v2 + 16) - 8) + 80) + 64) & ~*(*(*(v2 + 16) - 8) + 80);
  v7 = *(v2 + 56);
  v8 = (v2 + ((*(*(*(v2 + 16) - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22FD8C738;

  return sub_22FE33AA0(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_22FE36664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = a8;
  *(v8 + 360) = v22;
  *(v8 + 336) = a6;
  *(v8 + 344) = a7;
  *(v8 + 68) = a5;
  *(v8 + 328) = a4;
  v9 = *a6;
  *(v8 + 368) = *a6;
  *(v8 + 376) = *(v9 + 96);
  v10 = *(v9 + 80);
  *(v8 + 384) = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 392) = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  *(v8 + 400) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v14 = sub_22FE43744();
  *(v8 + 424) = v14;
  v15 = *(v14 - 8);
  *(v8 + 432) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 440) = swift_task_alloc();
  v17 = *(v10 - 8);
  *(v8 + 448) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  *(v8 + 488) = off_28148B418;
  type metadata accessor for CommunicationActor();
  *(v8 + 496) = sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v8 + 504) = sub_22FE43374();
  *(v8 + 512) = v19;

  return MEMORY[0x2822009F8](sub_22FE3691C);
}

uint64_t sub_22FE3691C()
{
  v112 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 376);
  v3 = *(v0 + 384);
  v5 = *(*(v0 + 400) + 16);
  (v5)(*(v0 + 416), *(v0 + 328), *(v0 + 392));
  sub_22FE43264();
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 432) + 8))(*(v0 + 440), *(v0 + 424));
    if (qword_28148B100 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v6 = *(v0 + 408);
      v7 = *(v0 + 392);
      v8 = *(v0 + 328);
      v9 = sub_22FE42D34();
      __swift_project_value_buffer(v9, qword_28148B108);
      (v5)(v6, v8, v7);
      v10 = sub_22FE42D14();
      v11 = sub_22FE436A4();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 408);
        v13 = *(v0 + 416);
        v15 = *(v0 + 392);
        v14 = *(v0 + 400);
        v104 = *(v0 + 68);
        v16 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v111[0] = v107;
        *v16 = 67109378;
        *(v16 + 4) = v104;
        *(v16 + 8) = 2080;
        (v5)(v13, v12, v15);
        v17 = sub_22FE430B4();
        v19 = v18;
        (*(v14 + 8))(v12, v15);
        v20 = sub_22FD98218(v17, v19, v111);

        *(v16 + 10) = v20;
        _os_log_impl(&dword_22FD6D000, v10, v11, "XPC %u: Invalid message type: %s", v16, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v107);
        MEMORY[0x23190C380](v107, -1, -1);
        MEMORY[0x23190C380](v16, -1, -1);
      }

      else
      {
        v47 = *(v0 + 400);
        v46 = *(v0 + 408);
        v48 = *(v0 + 392);

        (*(v47 + 8))(v46, v48);
      }

      sub_22FE28C14();
      v49 = swift_allocError();
      *v50 = 1;
      swift_willThrow();
LABEL_22:
      v80 = *(*(v0 + 360) + 16);
      os_unfair_lock_lock(v80 + 16);
      v81 = sub_22FE2BA64(v49);
      v83 = v82;
      os_unfair_lock_unlock(v80 + 16);
      if (!v81)
      {
        break;
      }

      v84 = *(v81 + 2);
      v110 = v81;
      if (v84)
      {
        v85 = v81 + 32;

        do
        {
          if (*v85++)
          {
            swift_continuation_throwingResume();
          }

          --v84;
        }

        while (v84);
      }

      else
      {
      }

      v87 = *(v83 + 16);
      v88 = v49;
      if (!v87)
      {
LABEL_38:
        sub_22FE41B54(v110, v83, MEMORY[0x277D84FB8]);

        break;
      }

      v89 = 0;
      while (v89 < *(v83 + 16))
      {
        if (*(v83 + 32 + 8 * v89))
        {
          *(v0 + 312) = v49;
          v91 = v49;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
          v92 = sub_22FE43C64();
          if (v92)
          {
            v5 = v92;
          }

          else
          {
            v5 = swift_allocError();
            *v93 = v49;
          }

          swift_allocError();
          *v90 = v5;
          swift_continuation_throwingResumeWithError();
        }

        if (v87 == ++v89)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_43:
      swift_once();
    }

    v95 = *(v0 + 472);
    v94 = *(v0 + 480);
    v97 = *(v0 + 456);
    v96 = *(v0 + 464);
    v98 = *(v0 + 440);
    v100 = *(v0 + 408);
    v99 = *(v0 + 416);

    v101 = *(v0 + 8);

    return v101();
  }

  else
  {
    v21 = *(v0 + 368);
    v22 = *(v0 + 336);
    (*(*(v0 + 448) + 32))(*(v0 + 480), *(v0 + 440), *(v0 + 384));
    swift_beginAccess();
    v23 = *(v22 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5360, &qword_22FE4F9A0);
    v24 = *(v21 + 88);
    sub_22FE42FB4();
    v25 = *(v0 + 232);
    v26 = *(v0 + 240);
    *(v0 + 520) = v25;
    *(v0 + 528) = v26;
    if (!v25)
    {
      swift_endAccess();
      if (qword_28148B100 != -1)
      {
        swift_once();
      }

      v51 = *(v0 + 480);
      v53 = *(v0 + 448);
      v52 = *(v0 + 456);
      v54 = *(v0 + 384);
      v55 = sub_22FE42D34();
      __swift_project_value_buffer(v55, qword_28148B108);
      v56 = *(v53 + 16);
      v56(v52, v51, v54);
      v57 = sub_22FE42D14();
      v58 = sub_22FE436A4();
      if (os_log_type_enabled(v57, v58))
      {
        v106 = v58;
        v59 = *(v0 + 456);
        v60 = *(v0 + 464);
        v61 = *(v0 + 448);
        v62 = *(v0 + 384);
        v63 = *(v0 + 68);
        v64 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v111[0] = v108;
        *v64 = 67109378;
        *(v64 + 4) = v63;
        *(v64 + 8) = 2080;
        v56(v60, v59, v62);
        v65 = sub_22FE430B4();
        v67 = v66;
        v5 = *(v61 + 8);
        v5(v59, v62);
        v68 = sub_22FD98218(v65, v67, v111);

        *(v64 + 10) = v68;
        _os_log_impl(&dword_22FD6D000, v57, v106, "XPC %u: Couldn't find a registry for type: %s", v64, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v108);
        MEMORY[0x23190C380](v108, -1, -1);
        MEMORY[0x23190C380](v64, -1, -1);
      }

      else
      {
        v75 = *(v0 + 448);
        v74 = *(v0 + 456);
        v76 = *(v0 + 384);

        v5 = *(v75 + 8);
        v5(v74, v76);
      }

      v77 = *(v0 + 480);
      v78 = *(v0 + 384);
      sub_22FE28C14();
      v49 = swift_allocError();
      *v79 = 2;
      swift_willThrow();
      v5(v77, v78);
      goto LABEL_22;
    }

    swift_endAccess();
    if (qword_28148B100 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 472);
    v27 = *(v0 + 480);
    v29 = *(v0 + 448);
    v30 = *(v0 + 384);
    v31 = sub_22FE42D34();
    *(v0 + 536) = __swift_project_value_buffer(v31, qword_28148B108);
    v32 = *(v29 + 16);
    v32(v28, v27, v30);
    v33 = sub_22FE42D14();
    v34 = sub_22FE43694();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 472);
    if (v35)
    {
      v37 = *(v0 + 464);
      v105 = v34;
      v38 = *(v0 + 448);
      v39 = *(v0 + 384);
      v102 = *(v0 + 68);
      v40 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v111[0] = v103;
      *v40 = 67109378;
      *(v40 + 4) = v102;
      *(v40 + 8) = 2080;
      v32(v37, v36, v39);
      v41 = sub_22FE430B4();
      v43 = v42;
      v44 = *(v38 + 8);
      v44(v36, v39);
      v45 = sub_22FD98218(v41, v43, v111);

      *(v40 + 10) = v45;
      _os_log_impl(&dword_22FD6D000, v33, v105, "XPC %u: Starting to process request %s", v40, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x23190C380](v103, -1, -1);
      MEMORY[0x23190C380](v40, -1, -1);
    }

    else
    {
      v69 = *(v0 + 448);
      v70 = *(v0 + 384);

      v44 = *(v69 + 8);
      v44(v36, v70);
    }

    *(v0 + 544) = v44;
    *(v0 + 248) = *(v0 + 344);
    v109 = (v25 + *v25);
    v71 = v25[1];
    v72 = swift_task_alloc();
    *(v0 + 552) = v72;
    *v72 = v0;
    v72[1] = sub_22FE37334;

    return v109(v0 + 128, v0 + 248);
  }
}

uint64_t sub_22FE37334()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = v2[66];
  sub_22FD6EBD8(v2[65]);
  v6 = v2[64];
  v7 = v2[63];
  if (v0)
  {
    v8 = sub_22FE37664;
  }

  else
  {
    v8 = sub_22FE3749C;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_22FE3749C()
{
  v1 = v0[19];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 16, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[24] = swift_getAssociatedTypeWitness();
  v0[25] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 21);
  sub_22FE43464();

  v0[71] = 0;
  v6 = v0[61];
  v7 = v0[62];
  v8 = v0[24];
  v9 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 21), v8);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[72] = v11;
  *v11 = v0;
  v11[1] = sub_22FE378BC;

  return MEMORY[0x282200310](v0 + 33, v6, v7, v0 + 40, v8, v9);
}

id sub_22FE37664()
{
  v1 = *(v0 + 448) + 8;
  (*(v0 + 544))(*(v0 + 480), *(v0 + 384));
  v2 = *(v0 + 560);
  v3 = *(*(v0 + 360) + 16);
  os_unfair_lock_lock(v3 + 16);
  v4 = sub_22FE2BA64(v2);
  v6 = v5;
  os_unfair_lock_unlock(v3 + 16);
  if (!v4)
  {
LABEL_18:

    v19 = *(v0 + 472);
    v18 = *(v0 + 480);
    v21 = *(v0 + 456);
    v20 = *(v0 + 464);
    v22 = *(v0 + 440);
    v24 = *(v0 + 408);
    v23 = *(v0 + 416);

    v25 = *(v0 + 8);

    return v25();
  }

  v7 = *(v4 + 2);
  v26 = v4;
  if (v7)
  {
    v8 = v4 + 32;

    do
    {
      if (*v8++)
      {
        swift_continuation_throwingResume();
      }

      --v7;
    }

    while (v7);
  }

  else
  {
  }

  v10 = *(v6 + 16);
  result = v2;
  if (!v10)
  {
LABEL_17:
    sub_22FE41B54(v26, v6, MEMORY[0x277D84FB8]);

    goto LABEL_18;
  }

  v12 = 0;
  while (v12 < *(v6 + 16))
  {
    if (*(v6 + 32 + 8 * v12))
    {
      *(v0 + 312) = v2;
      v15 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v16 = sub_22FE43C64();
      if (v16)
      {
        v13 = v16;
      }

      else
      {
        v13 = swift_allocError();
        *v17 = v2;
      }

      swift_allocError();
      *v14 = v13;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v10 == ++v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE378BC()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v8 = *v1;

  v4 = *(v2 + 504);
  v5 = *(v2 + 512);
  if (v0)
  {
    v6 = sub_22FE38138;
  }

  else
  {
    v6 = sub_22FE379CC;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22FE379CC()
{
  v1 = *(v0 + 272);
  *(v0 + 584) = *(v0 + 264);
  *(v0 + 592) = v1;
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 544);
    v3 = *(v0 + 480);
    v4 = *(v0 + 448);
    v5 = *(v0 + 384);
    v6 = *(v0 + 360);
    __swift_destroy_boxed_opaque_existential_0((v0 + 168));
    sub_22FE402C0(0, *(v6 + 16));
    v2(v3, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
    v8 = *(v0 + 472);
    v7 = *(v0 + 480);
    v10 = *(v0 + 456);
    v9 = *(v0 + 464);
    v11 = *(v0 + 440);
    v13 = *(v0 + 408);
    v12 = *(v0 + 416);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 536);
    v17 = sub_22FE42D14();
    v18 = sub_22FE43694();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 568);
      v20 = *(v0 + 68);
      v21 = swift_slowAlloc();
      *v21 = 67109376;
      *(v21 + 4) = v20;
      *(v21 + 8) = 2048;
      *(v21 + 10) = v19;
      _os_log_impl(&dword_22FD6D000, v17, v18, "XPC %u: Enqueuing message %ld", v21, 0x12u);
      MEMORY[0x23190C380](v21, -1, -1);
    }

    v22 = *(v0 + 568);

    *(v0 + 600) = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      v23 = sub_22FE37BBC;
    }

    return MEMORY[0x2822009F8](v23);
  }
}

uint64_t sub_22FE37BBC()
{
  v1 = *(v0 + 360);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v0 + 280) = *(v0 + 584);
  os_unfair_lock_lock((v2 + 64));
  v4 = *(v2 + 48);
  if (v4 < 0)
  {
    os_unfair_lock_unlock((v2 + 64));
  }

  else
  {
    if (!*(v4 + 16))
    {
      os_unfair_lock_unlock((v2 + 64));
      goto LABEL_17;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);
    v9 = *(v2 + 56);
    *(v0 + 296) = v7;
    *(v0 + 304) = v4;
    if (v7)
    {
      v40 = v8;
      v10 = v5;
      v11 = *(v7 + 16);
      v12 = *(v4 + 32);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v12);
      v13 = sub_22FE43E04();
      v15 = 1 << *(v7 + 16);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v16)
      {
        __break(1u);
        return MEMORY[0x282200830](v13, v14);
      }

      v18 = v17 & v13;
      v19 = sub_22FE42924();
      *(v0 + 72) = v7 + 16;
      *(v0 + 80) = v7 + 32;
      *(v0 + 88) = v18;
      *(v0 + 96) = v19;
      *(v0 + 104) = v20;
      *(v0 + 112) = v21;
      *(v0 + 120) = 0;
      v5 = v10;
      v8 = v40;
      if (v19)
      {
        goto LABEL_8;
      }

      do
      {
LABEL_6:
        __break(1u);
        do
        {
          sub_22FE42974();
          if (!*(v0 + 96))
          {
            goto LABEL_6;
          }

LABEL_8:
          v22 = *(v0 + 88);
          *(v0 + 16) = *(v0 + 72);
          *(v0 + 32) = v22;
          *(v0 + 48) = *(v0 + 104);
          *(v0 + 64) = *(v0 + 120);
          v23 = sub_22FE42954();
        }

        while ((v24 & 1) != 0 || v23);
      }

      while (!*(v0 + 40));
      v25 = *(v0 + 88);
    }

    else
    {
      v25 = 0;
    }

    sub_22FE3B738(0, v25, sub_22FE3CF14);
    v27 = v26;
    v28 = *(v0 + 296);
    v29 = *(v0 + 304);
    *(v2 + 16) = v5;
    *(v2 + 24) = v6;
    *(v2 + 32) = v8;
    *(v2 + 40) = v28;
    *(v2 + 48) = v29;
    *(v2 + 56) = v9;
    os_unfair_lock_unlock((v2 + 64));
    if (v27)
    {
      if (v27 == 1)
      {
LABEL_17:
        os_unfair_lock_lock((v3 + 24));
        v30 = *(v3 + 16);
        *(v3 + 16) = v30 + 1;
        os_unfair_lock_unlock((v3 + 24));
        v31 = swift_task_alloc();
        *(v0 + 608) = v31;
        v31[2] = v2;
        v31[3] = v3;
        v31[4] = v0 + 280;
        v31[5] = v30;
        v32 = swift_task_alloc();
        *(v0 + 616) = v32;
        v32[2] = v2;
        v32[3] = v3;
        v32[4] = v30;
        v33 = *(MEMORY[0x277D85A10] + 4);
        v13 = swift_task_alloc();
        *(v0 + 624) = v13;
        *v13 = v0;
        *(v13 + 8) = sub_22FE37EEC;
        v14 = &unk_22FE4F798;

        return MEMORY[0x282200830](v13, v14);
      }

      v34 = *(v0 + 280);
      v35 = *(v0 + 288);
      sub_22FDB4380(v34, v35);
      v36 = *(*(v27 + 64) + 40);
      *v36 = v34;
      v36[1] = v35;
      swift_continuation_throwingResume();
    }
  }

  v37 = *(v0 + 504);
  v38 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_22FE3804C);
}

void sub_22FE37EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 616);
    v6 = *(v2 + 608);

    MEMORY[0x2822009F8](sub_22FE38034);
  }
}

uint64_t sub_22FE38034()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  return MEMORY[0x2822009F8](sub_22FE3804C);
}

uint64_t sub_22FE3804C()
{
  sub_22FDC27F0(v0[73], v0[74]);
  v0[71] = v0[75];
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[24];
  v4 = v0[25];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 21), v3);
  v5 = *(MEMORY[0x277D856D8] + 4);
  v6 = swift_task_alloc();
  v0[72] = v6;
  *v6 = v0;
  v6[1] = sub_22FE378BC;

  return MEMORY[0x282200310](v0 + 33, v1, v2, v0 + 40, v3, v4);
}

id sub_22FE38138()
{
  v1 = *(v0 + 448) + 8;
  (*(v0 + 544))(*(v0 + 480), *(v0 + 384));
  v2 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  v3 = *(*(v0 + 360) + 16);
  os_unfair_lock_lock(v3 + 16);
  v4 = sub_22FE2BA64(v2);
  v6 = v5;
  os_unfair_lock_unlock(v3 + 16);
  if (!v4)
  {
LABEL_18:

    v19 = *(v0 + 472);
    v18 = *(v0 + 480);
    v21 = *(v0 + 456);
    v20 = *(v0 + 464);
    v22 = *(v0 + 440);
    v24 = *(v0 + 408);
    v23 = *(v0 + 416);

    v25 = *(v0 + 8);

    return v25();
  }

  v7 = *(v4 + 2);
  v26 = v4;
  if (v7)
  {
    v8 = v4 + 32;

    do
    {
      if (*v8++)
      {
        swift_continuation_throwingResume();
      }

      --v7;
    }

    while (v7);
  }

  else
  {
  }

  v10 = *(v6 + 16);
  result = v2;
  if (!v10)
  {
LABEL_17:
    sub_22FE41B54(v26, v6, MEMORY[0x277D84FB8]);

    goto LABEL_18;
  }

  v12 = 0;
  while (v12 < *(v6 + 16))
  {
    if (*(v6 + 32 + 8 * v12))
    {
      *(v0 + 312) = v2;
      v15 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
      v16 = sub_22FE43C64();
      if (v16)
      {
        v13 = v16;
      }

      else
      {
        v13 = swift_allocError();
        *v17 = v2;
      }

      swift_allocError();
      *v14 = v13;
      result = swift_continuation_throwingResumeWithError();
    }

    if (v10 == ++v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE383A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  *(v6 + 180) = a5;
  *(v6 + 256) = a4;
  *(v6 + 264) = a6;
  *(v6 + 272) = *a4;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE4194C(&qword_28148B408, type metadata accessor for CommunicationActor);
  *(v6 + 280) = sub_22FE43374();
  *(v6 + 288) = v7;

  return MEMORY[0x2822009F8](sub_22FE384BC);
}

uint64_t sub_22FE384BC()
{
  v1 = *(v0 + 180);
  v2 = *(v0 + 256);
  v3 = *(v2 + 48);

  v4 = sub_22FE2CA74(v1);

  if (qword_28148B100 != -1)
  {
    swift_once();
  }

  v5 = sub_22FE42D34();
  __swift_project_value_buffer(v5, qword_28148B108);
  v6 = sub_22FE42D14();
  v7 = sub_22FE43694();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 180);
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2048;
    *(v9 + 10) = v4;
    _os_log_impl(&dword_22FD6D000, v6, v7, "XPC %u: Reading message %ld", v9, 0x12u);
    MEMORY[0x23190C380](v9, -1, -1);
  }

  *(v0 + 296) = *(v2 + 48);

  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_22FE3868C;
  v11 = *(v0 + 180);

  return sub_22FE2CC8C(v0 + 232, v11);
}

uint64_t sub_22FE3868C()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v11 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[35];
    v5 = v2[36];
    v6 = sub_22FE388F8;
  }

  else
  {
    v7 = v2[37];

    v8 = v2[35];
    v9 = v2[36];
    v6 = sub_22FE387A8;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_22FE387A8()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  if (v1 >> 60 == 15)
  {
    *(v0 + 56) = *(v2 + 80);
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 3;
    v4 = *(v2 + 112);
    *(v0 + 72) = *(v2 + 96);
    *(v0 + 88) = v4;
    type metadata accessor for XPCMessageCenter.XPCResponse();
    swift_getWitnessTable();
    sub_22FE42E64();
  }

  else
  {
    *(v0 + 208) = *(v0 + 232);
    *(v0 + 216) = v1;
    *(v0 + 224) = 1;
    v5 = *(v2 + 112);
    v6 = *(v2 + 96);
    *(v0 + 96) = *(v2 + 80);
    *(v0 + 112) = v6;
    *(v0 + 128) = v5;
    type metadata accessor for XPCMessageCenter.XPCResponse();
    swift_getWitnessTable();
    sub_22FE42E64();
    sub_22FE28D40(*(v0 + 208), *(v0 + 216), *(v0 + 224));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22FE388F8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  v4 = *(v0 + 272);

  swift_getErrorValue();
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  sub_22FE43C74();
  v7 = *(v4 + 112);
  v8 = *(v4 + 80);
  v9 = *(v4 + 96);
  *(v0 + 160) = 0;
  *(v0 + 168) = 0xE000000000000000;
  *(v0 + 176) = 2;
  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  *(v0 + 48) = v7;
  type metadata accessor for XPCMessageCenter.XPCResponse();
  swift_getWitnessTable();
  sub_22FE42E64();

  sub_22FE28D40(*(v0 + 160), *(v0 + 168), *(v0 + 176));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22FE38A30(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD842A0;

  return v7(a1);
}

void sub_22FE38B64(uint64_t a1)
{
  v2 = sub_22FE38E78();
  v3 = sub_22FE38E80(v10, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v10[0];
  if (v10[0] != v4)
  {
    if ((v10[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 >= v10[0])
    {
      v6 = v3;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      sub_22FE3AAC4(a1, a1 + v8, 0, (2 * v5) | 1);
      v10[1] = v6;
      v10[2] = v9;
      if (*(a1 + 16) >= v4)
      {
        sub_22FE40A4C(a1 + v8, v5, (2 * v4) | 1);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_22FE38CB8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v9 = a2();
  v10 = sub_22FE38FEC(v15, a1, 0, 1, v9, a3);
  v11 = *(a1 + 16);
  v12 = v15[0];
  if (v15[0] != v11)
  {
    if (v15[0] < 0)
    {
      __break(1u);
    }

    else if (v11 >= v15[0])
    {
      v13 = v10;
      sub_22FE3AC7C(a1, a1 + 32, 0, (2 * v15[0]) | 1, a4, a5);
      v15[1] = v13;
      v15[2] = v14;
      if (*(a1 + 16) >= v11)
      {
        sub_22FE40FA4(a1 + 32, v12, (2 * v11) | 1, a3);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_22FE38DB0(uint64_t a1)
{
  v2 = sub_22FE38E78();
  v3 = sub_22FE390D8(v8, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v8[0];
  if (v8[0] != v4)
  {
    if (v8[0] < 0)
    {
      __break(1u);
    }

    else if (v4 >= v8[0])
    {
      v6 = v3;
      sub_22FE3AD44(a1, a1 + 32, 0, (2 * v8[0]) | 1);
      v8[1] = v6;
      v8[2] = v7;
      if (*(a1 + 16) >= v4)
      {
        sub_22FE40DDC(a1 + 32, v5, (2 * v4) | 1);

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_22FE38E80(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x23190A5B0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x23190A5C0]();
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
    sub_22FE3AE30(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
    v18 = sub_22FE391BC(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_22FE38FEC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(BOOL, uint64_t, uint64_t))
{
  v10 = *(a2 + 16);
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  v12 = MEMORY[0x23190A5B0](*(a2 + 16));
  if (v12 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > 4)
  {
    v16 = MEMORY[0x23190A5C0]();
    sub_22FE3B164(a2 + 32, v10, (v16 + 16));
    *a1 = v17;
    return v16;
  }

  else if (v10 >= 2)
  {
    v18 = sub_22FE394F4(a2 + 32, v10, a6);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v10;
  }

  return result;
}

uint64_t sub_22FE390D8(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x23190A5B0](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x23190A5C0]();
    sub_22FE3B2DC(a2 + 32, v8, (v14 + 16));
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_22FE39634(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

size_t sub_22FE391BC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v28 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v37 = MEMORY[0x277D84F90];
  result = sub_22FD925D8(0, a2 & ~(a2 >> 63), 0);
  v15 = v37;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v28[1] = v2;
      v29 = a1;
      v16 = 0;
      v30 = a2;
      v35 = v13;
      while (!__OFADD__(v16, 1))
      {
        v32 = v16;
        v33 = v16 + 1;
        v34 = *(v36 + 72);
        result = sub_22FD764B4(a1 + v34 * v16, v13, &qword_27DAE4130, &qword_22FE4A140);
        v17 = -*(v15 + 16);
        v18 = -1;
        v19 = v15;
        while (v17 + v18 != -1)
        {
          ++v18;
          v20 = v35;
          if (v18 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v21 = v19 + v34;
          sub_22FD764B4(v19 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v10, &qword_27DAE4130, &qword_22FE4A140);
          v22 = *v20;
          v23 = *v10;
          result = sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
          v19 = v21;
          if (v22 == v23)
          {
            sub_22FD93E6C(v35, &qword_27DAE4130, &qword_22FE4A140);

            return v32;
          }
        }

        v13 = v35;
        v24 = v31;
        sub_22FD764B4(v35, v31, &qword_27DAE4130, &qword_22FE4A140);
        v37 = v15;
        v26 = *(v15 + 16);
        v25 = *(v15 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_22FD925D8(v25 > 1, v26 + 1, 1);
          v15 = v37;
        }

        sub_22FD93E6C(v13, &qword_27DAE4130, &qword_22FE4A140);
        *(v15 + 16) = v26 + 1;
        result = sub_22FD93E04(v24, v15 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + v26 * v34, &qword_27DAE4130, &qword_22FE4A140);
        v16 = v33;
        a1 = v29;
        v27 = v30;
        if (v33 == v30)
        {

          return v27;
        }
      }

LABEL_16:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22FE394F4(uint64_t a1, uint64_t a2, void (*a3)(BOOL, uint64_t, uint64_t))
{
  v16 = MEMORY[0x277D84F90];
  a3(0, a2 & ~(a2 >> 63), 0);
  result = v16;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = *(a1 + 16 * i);
        v10 = *(result + 16);
        v11 = v10 + 1;
        v12 = 32;
        while (--v11)
        {
          v13 = *(result + v12);
          v12 += 16;
          if (*(a1 + 16 * i) == v13)
          {

            return i;
          }
        }

        v17 = result;
        v14 = *(result + 24);
        if (v10 >= v14 >> 1)
        {
          v15 = *(a1 + 16 * i);
          a3(v14 > 1, v10 + 1, 1);
          v9 = v15;
          result = v17;
        }

        *(result + 16) = v10 + 1;
        *(result + 16 * v10 + 32) = v9;
        if (v8 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22FE39634(uint64_t a1, uint64_t a2)
{
  v19 = MEMORY[0x277D84F90];
  result = sub_22FD92678(0, a2 & ~(a2 >> 63), 0);
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = (a1 + 32 * i);
        v8 = *v7;
        v9 = *(v7 + 2);
        v10 = *(v7 + 3);
        v11 = *v7;
        v12 = *(v19 + 16) + 1;
        v13 = 32;
        while (--v12)
        {
          v14 = *(v19 + v13);
          v13 += 32;
          if (v11 == v14)
          {

            return i;
          }
        }

        v18 = v8;
        result = sub_22FDE65C8(v9, v10);
        v16 = *(v19 + 16);
        v15 = *(v19 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_22FD92678((v15 > 1), v16 + 1, 1);
        }

        *(v19 + 16) = v16 + 1;
        v17 = v19 + 32 * v16;
        *(v17 + 32) = v18;
        *(v17 + 48) = v9;
        *(v17 + 56) = v10;
        if (v6 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22FE39794(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4[1];
  v6 = (v5 + 32);
  v7 = *(v5 + 16);
  if (*v4)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    sub_22FE3A88C(a1, a2, a3, a4, v6, v7, (*v4 + 16));
    if (v12)
    {
      a4 = v11;
      a3 = v10;
      a2 = v9;
      a1 = v8;
LABEL_8:
      sub_22FE39B54(a1, a2, a3, a4);
      v15 = *(v4[1] + 16) - 1;
      return 1;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    v13 = 0;
    while (1)
    {
      v14 = *v6;
      v6 += 4;
      if (v14 == a1)
      {
        break;
      }

      if (v7 == ++v13)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t sub_22FE39850(uint64_t a1, uint64_t a2)
{
  v3 = v2[1];
  v4 = (v3 + 32);
  v5 = *(v3 + 16);
  if (*v2)
  {
    v6 = a1;
    v7 = a2;
    sub_22FE3A9A8(a1, a2, v4, v5, (*v2 + 16));
    if (v9)
    {
      a2 = v7;
      a1 = v6;
LABEL_9:
      sub_22FE39D50(a1, a2, v8, sub_22FD92698);
      v12 = *(v2[1] + 16) - 1;
      return 1;
    }
  }

  else
  {
    if (!v5)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }

    v10 = 0;
    while (1)
    {
      v11 = *v4;
      v4 += 2;
      if (v11 == a1)
      {
        break;
      }

      if (v5 == ++v10)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t sub_22FE39904(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v21 - v6;
  sub_22FD764B4(a1, &v21 - v6, &qword_27DAE4130, &qword_22FE4A140);
  v8 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22FD925D8(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_22FD925D8(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = sub_22FD93E04(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, &qword_27DAE4130, &qword_22FE4A140);
  v1[1] = v9;
  v14 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    if (MEMORY[0x23190A580](*(v14 + 16) & 0x3FLL) > v12)
    {
      v15 = *v1;
      result = swift_isUniquelyReferenced_native();
      v16 = *v1;
      if ((result & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v17 = *v1;
        v18 = sub_22FE429A4();

        *v1 = v18;
        v16 = v18;
      }

      if (v16)
      {
        v19 = *(v16 + 16);
        v20 = *(*v8 + 16) + ~(*(v16 + 24) >> 6);
        return sub_22FE42944();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_22FE39F74(sub_22FE3A12C);
}

uint64_t sub_22FE39B54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = v4 + 1;
  v10 = v4[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[1] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22FD92678(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_22FD92678((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  v14 = (v10 + 32 * v13);
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v4[1] = v10;
  v15 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x23190A580](*(v15 + 16) & 0x3FLL) > v13)
    {
      sub_22FDE65C8(a3, a4);
      v16 = *v4;
      result = swift_isUniquelyReferenced_native();
      v18 = *v4;
      if ((result & 1) == 0)
      {
        if (!v18)
        {
LABEL_18:
          __break(1u);
          return result;
        }

        v19 = *v4;
        v20 = sub_22FE429A4();

        *v4 = v20;
        v18 = v20;
      }

      if (v18)
      {
        v21 = *(v18 + 16);
        v22 = *(*v9 + 16) + ~(*(v18 + 24) >> 6);
        return sub_22FE42944();
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_13:
    sub_22FDE65C8(a3, a4);
    return sub_22FE39F74(sub_22FE3A1D4);
  }

  if (v13 >= 0xF)
  {
    goto LABEL_13;
  }

  return sub_22FDE65C8(a3, a4);
}

uint64_t sub_22FE39D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = v4;
  v11 = v4[1];
  v9 = v4 + 1;
  v10 = v11;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v11;
  if ((result & 1) == 0)
  {
    result = a4(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    result = a4(v13 > 1, v14 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v14 + 1;
  v15 = v10 + 16 * v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v6[1] = v10;
  v16 = *v6;
  if (*v6)
  {
    swift_beginAccess();
    if (MEMORY[0x23190A580](*(v16 + 16) & 0x3FLL) > v14)
    {
      v17 = *v6;
      result = swift_isUniquelyReferenced_native();
      v18 = *v6;
      if ((result & 1) == 0)
      {
        if (!v18)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v19 = *v6;
        v20 = sub_22FE429A4();

        *v6 = v20;
        v18 = v20;
      }

      if (v18)
      {
        v21 = *(v18 + 16);
        v22 = *(*v9 + 16) + ~(*(v18 + 24) >> 6);
        return sub_22FE42944();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v14 < 0xF)
  {
    return result;
  }

  return sub_22FE39ED4();
}

uint64_t sub_22FE39ED4()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x23190A5B0](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_22FE3A0AC(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_22FE39F74(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x23190A5B0](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_22FE3A024(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_22FE3A024(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x23190A5B0](v8);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x23190A5C0](v10, a4);
    a5(a1, v12 + 16, v12 + 32);
    return v12;
  }

  return result;
}

uint64_t sub_22FE3A0AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x23190A5B0](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x23190A5C0](v8, a4);
    sub_22FE3A224(a1, (v10 + 16));
    return v10;
  }

  return result;
}

void sub_22FE3A274(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a4;
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v29 - v9);
  v42 = a2;
  if (a2)
  {
    if ((v42 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = *(v8 + 72);
      v31 = &v29 - v9;
      v32 = v12;
      v13 = &qword_27DAE4130;
      v30 = a3;
      while (1)
      {
        sub_22FD764B4(v34 + v32 * v11, v10, v13, &qword_22FE4A140);
        v14 = *a3;
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](*v10);
        v15 = sub_22FE43E04();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v33;
        v21 = sub_22FE42924();
        v22 = v13;
        v24 = v23;
        v26 = v25;
        v27 = v10;
        v28 = v22;
        sub_22FD93E6C(v27, v22, &qword_22FE4A140);
        v35 = a3;
        v36 = v20;
        v37 = v19;
        v38 = v21;
        v39 = v24;
        v40 = v26;
        v41 = 0;
        while (v38)
        {
          sub_22FE42974();
        }

        sub_22FE42964();
        ++v11;
        v13 = v28;
        a3 = v30;
        v10 = v31;
        if (v11 == v42)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_22FE3A45C(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 32 * v6);
        v8 = *a3;
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v7);
        result = sub_22FE43E04();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_22FE42924())
        {
          while (1)
          {
            sub_22FE42974();
          }
        }

        result = sub_22FE42964();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FE3A568(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = result;
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 16 * v6);
        v8 = *a3;
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v7);
        result = sub_22FE43E04();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_22FE42924())
        {
          while (1)
          {
            sub_22FE42974();
          }
        }

        result = sub_22FE42964();
        if (++v6 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FE3A674(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = (v32 - v12);
  v14 = *a4;
  sub_22FE43DB4();
  v15 = *a1;
  MEMORY[0x23190B9F0](*a1);
  result = sub_22FE43E04();
  v17 = 1 << *a4;
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = v19 & result;
    v21 = sub_22FE42924();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v20;
    *(&v35 + 1) = v21;
    *&v36 = v22;
    *(&v36 + 1) = v23;
    v37 = 0;
    v24 = sub_22FE42954();
    v25 = v24;
    if ((v26 & 1) == 0)
    {
      v27 = *(v10 + 72);
      sub_22FD764B4(a2 + v27 * v24, v13, &qword_27DAE4130, &qword_22FE4A140);
      v28 = *v13;
      sub_22FD93E6C(v13, &qword_27DAE4130, &qword_22FE4A140);
      if (v28 != v15)
      {
        do
        {
          sub_22FE42974();
          v32[1] = v34;
          v32[2] = v35;
          v32[3] = v36;
          v33 = v37;
          v29 = sub_22FE42954();
          v25 = v29;
          if (v30)
          {
            break;
          }

          sub_22FD764B4(a2 + v27 * v29, v13, &qword_27DAE4130, &qword_22FE4A140);
          v31 = *v13;
          sub_22FD93E6C(v13, &qword_27DAE4130, &qword_22FE4A140);
        }

        while (v31 != v15);
      }
    }

    return v25;
  }

  return result;
}

uint64_t sub_22FE3A88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v10 = *a7;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  result = sub_22FE43E04();
  if (__OFSUB__(1 << *a7, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22FE42924();
    result = sub_22FE42954();
    if ((v12 & 1) == 0 && *(a5 + 32 * result) != a1)
    {
      do
      {
        sub_22FE42974();
        result = sub_22FE42954();
      }

      while ((v13 & 1) == 0 && *(a5 + 32 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_22FE3A9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  result = sub_22FE43E04();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22FE42924();
    result = sub_22FE42954();
    if ((v10 & 1) == 0 && *(a3 + 16 * result) != a1)
    {
      do
      {
        sub_22FE42974();
        result = sub_22FE42954();
      }

      while ((v11 & 1) == 0 && *(a3 + 16 * result) != a1);
    }
  }

  return result;
}

void sub_22FE3AAC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4128, &unk_22FE4FC70);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_22FE3AC7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = MEMORY[0x277D84F90];
      if (v6 != a3)
      {
LABEL_7:
        memcpy(v10 + 4, (a2 + 16 * a3), 16 * v7);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 17;
      }

      v10[2] = v7;
      v10[3] = 2 * (v12 >> 4);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22FE3AD44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B8, &qword_22FE4FBA0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B0, &qword_22FE4FC00);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22FE3AE30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v32 - v12);
  if (a2)
  {
    if (a2 < 0)
    {
LABEL_16:
      __break(1u);
    }

    else
    {
      v32 = v4;
      v14 = 0;
      v34 = a2;
      v33 = a3;
      while (1)
      {
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        v37 = v14 + 1;
        v15 = *(v36 + 72);
        v41 = v14;
        v16 = v50 + v15 * v14;
        sub_22FD764B4(v16, v13, &qword_27DAE4130, &qword_22FE4A140);
        v17 = *a3;
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](*v13);
        v18 = sub_22FE43E04();
        v19 = 1 << *a3;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
          goto LABEL_15;
        }

        v22 = v21 & v18;
        v23 = v35;
        v40 = sub_22FE42924();
        v39 = v24;
        v38 = v25;
        sub_22FD93E6C(v13, &qword_27DAE4130, &qword_22FE4A140);
        *&v42 = a3;
        *(&v42 + 1) = v23;
        *&v43 = v22;
        *(&v43 + 1) = v40;
        *&v44 = v39;
        *(&v44 + 1) = v38;
        v45 = 0;
        v49 = 0;
        v46 = v42;
        v47 = v43;
        v48 = v44;
        v26 = sub_22FE42954();
        v27 = v50;
        if ((v28 & 1) == 0)
        {
          break;
        }

LABEL_4:
        sub_22FE42964();
        v14 = v37;
        a3 = v33;
        if (v37 == v34)
        {
          return;
        }
      }

      while (1)
      {
        sub_22FD764B4(v27 + v26 * v15, v13, &qword_27DAE4130, &qword_22FE4A140);
        sub_22FD764B4(v16, v10, &qword_27DAE4130, &qword_22FE4A140);
        v29 = *v13;
        sub_22FD93E6C(v13, &qword_27DAE4130, &qword_22FE4A140);
        v30 = *v10;
        sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
        if (v29 == v30)
        {
          break;
        }

        sub_22FE42974();
        v46 = v42;
        v47 = v43;
        v48 = v44;
        v49 = v45;
        v26 = sub_22FE42954();
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }
  }
}

uint64_t sub_22FE3B164(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = 0;
  while (2)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v8 = (v5 + 16 * v6);
    v9 = *v8;
    v10 = *a3;
    sub_22FE43DB4();
    MEMORY[0x23190B9F0](v9);
    result = sub_22FE43E04();
    if (__OFSUB__(1 << *a3, 1))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_22FE42924();
    while (1)
    {
      v11 = sub_22FE42954();
      if (v12)
      {
        break;
      }

      if (*(v5 + 16 * v11) == *v8)
      {
        return 0;
      }

      sub_22FE42974();
    }

    result = sub_22FE42964();
    ++v6;
    if (v7 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22FE3B2DC(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = 0;
  while (2)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v8 = (v5 + 32 * v6);
    v9 = *v8;
    v10 = *a3;
    sub_22FE43DB4();
    MEMORY[0x23190B9F0](v9);
    result = sub_22FE43E04();
    if (__OFSUB__(1 << *a3, 1))
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_22FE42924();
    while (1)
    {
      v11 = sub_22FE42954();
      if (v12)
      {
        break;
      }

      if (*(v5 + 32 * v11) == *v8)
      {
        return 0;
      }

      sub_22FE42974();
    }

    result = sub_22FE42964();
    ++v6;
    if (v7 != a2)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22FE3B454@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_22FE3B888(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x23190A590]())
  {
LABEL_16:
    sub_22FE3B888(a1, a3);
    return sub_22FE39F74(sub_22FE3A12C);
  }

  v10 = *v3;
  result = swift_isUniquelyReferenced_native();
  v12 = *v3;
  if ((result & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *v3;
    v14 = sub_22FE429A4();

    *v3 = v14;
    v12 = v14;
  }

  if (v12)
  {

    result = sub_22FE3BEA0(a2, (v12 + 16), v12 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_22FE3C17C(a1, a1 + 1, v6, (v12 + 16), v12 + 32);

      return sub_22FE3B888(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_22FE3B5CC@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_22FE3B9C8(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x23190A590]())
  {
LABEL_16:
    sub_22FE3B9C8(a1, a3);
    return sub_22FE39F74(sub_22FE3A1D4);
  }

  v10 = *v3;
  result = swift_isUniquelyReferenced_native();
  v12 = *v3;
  if ((result & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *v3;
    v14 = sub_22FE429A4();

    *v3 = v14;
    v12 = v14;
  }

  if (v12)
  {
    result = sub_22FE3BCC0(a2, (v12 + 16), v12 + 32, v3);
    v15 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v15 >= a1)
    {
      sub_22FE3C6D0(a1, v15, v6, (v12 + 16));
      return sub_22FE3B9C8(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_22FE3B738(int64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_22FE3BA50(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x23190A590]())
  {
LABEL_16:
    v16 = sub_22FE3BA50(a1, a3);
    sub_22FE39ED4();
    return v16;
  }

  v10 = *v3;
  result = swift_isUniquelyReferenced_native();
  v12 = *v3;
  if ((result & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *v3;
    v14 = sub_22FE429A4();

    *v3 = v14;
    v12 = v14;
  }

  if (v12)
  {
    result = sub_22FE3BAE0(a2, (v12 + 16), v12 + 32, v3);
    v15 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v15 >= a1)
    {
      sub_22FE3CAC0(a1, v15, v6, (v12 + 16));
      return sub_22FE3BA50(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

size_t sub_22FE3B888@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FE3CED8(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_22FD93E04(v11, a2, &qword_27DAE4130, &qword_22FE4A140);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FE3B9C8@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FE3CF00(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[4 * a1];
    v9 = *(v8 + 3);
    v10 = v7 - 1;
    *a2 = *(v8 + 2);
    a2[1] = v9;
    result = memmove(v8 + 4, v8 + 8, 32 * (v7 - 1 - a1));
    v5[2] = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FE3BA50(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

unint64_t sub_22FE3BAE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v20 = sub_22FE42924();
  sub_22FE42974();
  if (v20)
  {
    v7 = sub_22FE42934();
    while (1)
    {
      result = sub_22FE42954();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = *(v11 + 16 * result + 32);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v13);
      result = sub_22FE43E04();
      v14 = 1 << *a2;
      v15 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_22;
      }

      v16 = v15 & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v16 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v17 = sub_22FE42954();
      if ((v18 & 1) == 0)
      {
        v8 = ((v15 & ((v17 - (a2[1] >> 6)) >> 63)) + v17 - (a2[1] >> 6)) ^ v15;
      }

      v6 = a1;
      sub_22FE42944();
LABEL_5:
      sub_22FE42974();
    }

    if (v16 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_22FE42944();
}

unint64_t sub_22FE3BCC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v20 = sub_22FE42924();
  sub_22FE42974();
  if (v20)
  {
    v7 = sub_22FE42934();
    while (1)
    {
      result = sub_22FE42954();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = *(v11 + 32 * result + 32);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v13);
      result = sub_22FE43E04();
      v14 = 1 << *a2;
      v15 = v14 - 1;
      if (__OFSUB__(v14, 1))
      {
        goto LABEL_22;
      }

      v16 = v15 & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v16 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v17 = sub_22FE42954();
      if ((v18 & 1) == 0)
      {
        v8 = ((v15 & ((v17 - (a2[1] >> 6)) >> 63)) + v17 - (a2[1] >> 6)) ^ v15;
      }

      v6 = a1;
      sub_22FE42944();
LABEL_5:
      sub_22FE42974();
    }

    if (v16 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_22FE42944();
}

unint64_t sub_22FE3BEA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v27 - v10);
  v12 = sub_22FE42924();
  *&v29 = a2;
  *(&v29 + 1) = a3;
  *&v30 = a1;
  *(&v30 + 1) = v12;
  *&v31 = v13;
  *(&v31 + 1) = v14;
  v32 = 0;
  sub_22FE42974();
  if (*(&v30 + 1))
  {
    v27 = a3;
    v15 = sub_22FE42934();
    while (1)
    {
      v37 = v29;
      v38 = v30;
      v39 = v31;
      v40 = v32;
      result = sub_22FE42954();
      if (v18)
      {
LABEL_24:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v19 = *(v28 + 8);
      if (result >= *(v19 + 16))
      {
        goto LABEL_22;
      }

      v20 = *a2;
      sub_22FD764B4(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v11, &qword_27DAE4130, &qword_22FE4A140);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](*v11);
      v21 = sub_22FE43E04();
      result = sub_22FD93E6C(v11, &qword_27DAE4130, &qword_22FE4A140);
      v22 = 1 << *a2;
      v23 = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        goto LABEL_23;
      }

      v24 = v23 & v21;
      if (a1 >= v15)
      {
        if (v24 < v15)
        {
          goto LABEL_5;
        }
      }

      else if (v24 >= v15)
      {
        goto LABEL_15;
      }

      if (a1 >= v24)
      {
LABEL_15:
        v33 = v29;
        v34 = v30;
        v35 = v31;
        v36 = v32;
        v25 = sub_22FE42954();
        if ((v26 & 1) == 0)
        {
          v16 = ((v23 & ((v25 - (a2[1] >> 6)) >> 63)) + v25 - (a2[1] >> 6)) ^ v23;
        }

        a1 = v34;
        sub_22FE42944();
      }

LABEL_5:
      sub_22FE42974();
      if (!*(&v30 + 1))
      {
        return sub_22FE42944();
      }
    }
  }

  return sub_22FE42944();
}

void sub_22FE3C17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v62 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v61 - v16);
  v18 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v18 >= 1)
  {
    v19 = *(v62 + 16);
    if (a1 >= (v19 - v18) / 2)
    {
      if (__OFSUB__(v19, a2))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if ((v19 - a2) >= MEMORY[0x23190A580](*a4 & 0x3F, v15) / 3)
      {
LABEL_51:
        v56 = sub_22FE42924();
        *&v69 = a4;
        *(&v69 + 1) = a5;
        *&v70 = 0;
        *(&v70 + 1) = v56;
        *&v71 = v57;
        *(&v71 + 1) = v58;
        v72 = 0;
        while (1)
        {
          v65 = v69;
          v66 = v70;
          v67 = v71;
          v68 = v72;
          v59 = sub_22FE42954();
          if ((v60 & 1) == 0 && v59 >= a2)
          {
            if (__OFSUB__(v59, v18))
            {
              goto LABEL_59;
            }

            sub_22FE42964();
          }

          sub_22FE42974();
          if (!v70)
          {
            return;
          }
        }
      }

      if (v19 < a2)
      {
        goto LABEL_69;
      }

      if (a2 < 0)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v19 != a2)
      {
        if (v19 <= a2)
        {
LABEL_71:
          __break(1u);
          return;
        }

        v64 = v62 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v63 = *(v10 + 72);

        v37 = &qword_27DAE4130;
        while (1)
        {
          v38 = v37;
          sub_22FD764B4(v64 + v63 * a2, v13, v37, &qword_22FE4A140);
          v39 = *a4;
          sub_22FE43DB4();
          MEMORY[0x23190B9F0](*v13);
          v40 = sub_22FE43E04();
          v41 = 1 << *a4;
          v25 = __OFSUB__(v41, 1);
          v42 = v41 - 1;
          if (v25)
          {
            goto LABEL_60;
          }

          v43 = v42 & v40;
          v44 = sub_22FE42924();
          *&v65 = a4;
          *(&v65 + 1) = a5;
          *&v66 = v43;
          *(&v66 + 1) = v44;
          *&v67 = v45;
          *(&v67 + 1) = v46;
          v68 = 0;
          while (*(&v66 + 1))
          {
            v69 = v65;
            v70 = v66;
            v71 = v67;
            v72 = v68;
            v47 = sub_22FE42954();
            if ((v48 & 1) == 0 && v47 == a2)
            {
              break;
            }

            sub_22FE42974();
          }

          v49 = a2 + 1;
          v50 = __OFADD__(a2, 1);
          if (__OFSUB__(a2, v18))
          {
            goto LABEL_61;
          }

          sub_22FE42964();
          v37 = v38;
          sub_22FD93E6C(v13, v38, &qword_22FE4A140);
          if (v50)
          {
            goto LABEL_62;
          }

          ++a2;
          if (v49 == v19)
          {

            return;
          }
        }
      }
    }

    else
    {
      if (MEMORY[0x23190A580](*a4 & 0x3F, v15) / 3 <= a1)
      {
        v51 = sub_22FE42924();
        *&v69 = a4;
        *(&v69 + 1) = a5;
        *&v70 = 0;
        *(&v70 + 1) = v51;
        *&v71 = v52;
        *(&v71 + 1) = v53;
        v72 = 0;
        while (1)
        {
          v65 = v69;
          v66 = v70;
          v67 = v71;
          v68 = v72;
          v54 = sub_22FE42954();
          if ((v55 & 1) == 0 && v54 < a1)
          {
            if (__OFADD__(v54, v18))
            {
              __break(1u);
              goto LABEL_51;
            }

            sub_22FE42964();
          }

          sub_22FE42974();
          if (!v70)
          {
            goto LABEL_18;
          }
        }
      }

      if (a1 < 0)
      {
        goto LABEL_67;
      }

      if (v19 < a1)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      if (a1)
      {
        v64 = v62 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v20 = *(v10 + 72);

        v21 = 0;
        while (1)
        {
          sub_22FD764B4(v64 + v20 * v21, v17, &qword_27DAE4130, &qword_22FE4A140);
          v22 = *a4;
          sub_22FE43DB4();
          MEMORY[0x23190B9F0](*v17);
          v23 = sub_22FE43E04();
          v24 = 1 << *a4;
          v25 = __OFSUB__(v24, 1);
          v26 = v24 - 1;
          if (v25)
          {
            break;
          }

          v27 = v26 & v23;
          v28 = sub_22FE42924();
          *&v65 = a4;
          *(&v65 + 1) = a5;
          *&v66 = v27;
          *(&v66 + 1) = v28;
          *&v67 = v29;
          *(&v67 + 1) = v30;
          v68 = 0;
          while (*(&v66 + 1))
          {
            v69 = v65;
            v70 = v66;
            v71 = v67;
            v72 = v68;
            v31 = sub_22FE42954();
            if ((v32 & 1) == 0 && v31 == v21)
            {
              break;
            }

            sub_22FE42974();
          }

          if (__OFADD__(v21, v18))
          {
            goto LABEL_58;
          }

          ++v21;
          sub_22FE42964();
          sub_22FD93E6C(v17, &qword_27DAE4130, &qword_22FE4A140);
          if (v21 == a1)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_18:
      v33 = a4[1];
      if (__OFSUB__(v33 >> 6, v18))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v34 = 1 << *a4;
      v25 = __OFSUB__(v34, 1);
      v35 = v34 - 1;
      if (v25)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v36 = (v35 & (((v33 >> 6) - v18) >> 63)) + (v33 >> 6) - v18;
      if (v36 < v35)
      {
        v35 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v36 - v35) << 6);
    }
  }
}

uint64_t sub_22FE3C6D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x23190A580](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < v8)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(a3 + 32 + 32 * v10);
            v12 = *a4;
            sub_22FE43DB4();
            MEMORY[0x23190B9F0](v11);
            result = sub_22FE43E04();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_22FE42924())
            {
              while (1)
              {
                v13 = sub_22FE42954();
                if ((v14 & 1) == 0 && v13 == v10)
                {
                  break;
                }

                sub_22FE42974();
              }
            }

            result = v10 + v5;
            if (__OFADD__(v10, v5))
            {
              goto LABEL_51;
            }

            ++v10;
            result = sub_22FE42964();
            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_22FE42924();
      v21 = sub_22FE42954();
      if ((v22 & 1) != 0 || v21 >= v8)
      {
LABEL_29:
        result = sub_22FE42974();
LABEL_17:
        v15 = a4[1];
        if (__OFSUB__(v15 >> 6, v5))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v16 = 1 << *a4;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v19 = (v18 & (((v15 >> 6) - v5) >> 63)) + (v15 >> 6) - v5;
        if (v19 < v18)
        {
          v18 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v19 - v18) << 6);
        return result;
      }

      if (!__OFADD__(v21, v5))
      {
        sub_22FE42964();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_22FE42924();
      v23 = sub_22FE42954();
      if ((v24 & 1) == 0 && v23 >= v4)
      {
        v17 = __OFSUB__(v23, v5);
        result = v23 - v5;
        if (v17)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_22FE42964();
      }

      return sub_22FE42974();
    }

    v4 = a2;
    v20 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = MEMORY[0x23190A580](*a4 & 0x3F);
    if (v20 >= result / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v4)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v4 < 0)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      while (1)
      {
        v25 = *(a3 + 32 + 32 * v4);
        v26 = *a4;
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v25);
        result = sub_22FE43E04();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_22FE42924())
        {
          while (1)
          {
            v27 = sub_22FE42954();
            if ((v28 & 1) == 0 && v27 == v4)
            {
              break;
            }

            sub_22FE42974();
          }
        }

        result = sub_22FE42964();
        if (++v4 == v9)
        {
          return result;
        }
      }

      goto LABEL_53;
    }
  }

  return result;
}

uint64_t sub_22FE3CAC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x23190A580](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v9 < v8)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            v11 = *(a3 + 32 + 16 * v10);
            v12 = *a4;
            sub_22FE43DB4();
            MEMORY[0x23190B9F0](v11);
            result = sub_22FE43E04();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_22FE42924())
            {
              while (1)
              {
                v13 = sub_22FE42954();
                if ((v14 & 1) == 0 && v13 == v10)
                {
                  break;
                }

                sub_22FE42974();
              }
            }

            result = v10 + v5;
            if (__OFADD__(v10, v5))
            {
              goto LABEL_55;
            }

            ++v10;
            result = sub_22FE42964();
            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_17;
      }

      sub_22FE42924();
      v27 = sub_22FE42954();
      if ((v28 & 1) != 0 || v27 >= v8)
      {
LABEL_42:
        result = sub_22FE42974();
LABEL_17:
        v15 = a4[1];
        if (__OFSUB__(v15 >> 6, v5))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v16 = 1 << *a4;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v19 = (v18 & (((v15 >> 6) - v5) >> 63)) + (v15 >> 6) - v5;
        if (v19 < v18)
        {
          v18 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v19 - v18) << 6);
        return result;
      }

      if (!__OFADD__(v27, v5))
      {
        sub_22FE42964();
        goto LABEL_42;
      }

      __break(1u);
LABEL_48:
      sub_22FE42924();
      v29 = sub_22FE42954();
      if ((v30 & 1) == 0 && v29 >= v4)
      {
        v17 = __OFSUB__(v29, v5);
        result = v29 - v5;
        if (v17)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        sub_22FE42964();
      }

      return sub_22FE42974();
    }

    v4 = a2;
    v20 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    result = MEMORY[0x23190A580](*a4 & 0x3F);
    if (v20 >= result / 3)
    {
      goto LABEL_48;
    }

    if (v9 < v4)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v4 < 0)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v9 != v4)
    {
      if (v9 <= v4)
      {
LABEL_68:
        __break(1u);
        return result;
      }

      while (1)
      {
        v21 = *(a3 + 32 + 16 * v4);
        v22 = *a4;
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v21);
        result = sub_22FE43E04();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_22FE42924())
        {
          while (1)
          {
            v23 = sub_22FE42954();
            if ((v24 & 1) == 0 && v23 == v4)
            {
              break;
            }

            sub_22FE42974();
          }
        }

        v25 = v4 + 1;
        v26 = __OFADD__(v4, 1);
        result = v4 - v5;
        if (__OFSUB__(v4, v5))
        {
          goto LABEL_58;
        }

        result = sub_22FE42964();
        if (v26)
        {
          goto LABEL_59;
        }

        ++v4;
        if (v25 == v9)
        {
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FE3CF28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v25 - v9);
  v11 = *v3;
  v12 = *(*v3 + 40);
  sub_22FE43DB4();
  v29 = *a1;
  MEMORY[0x23190B9F0]();
  v13 = sub_22FE43E04();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v25 = v3;
    v26 = v7;
    v27 = v6;
    v28 = a2;
    v16 = ~v14;
    v17 = *(v7 + 72);
    while (1)
    {
      sub_22FD764B4(*(v11 + 48) + v17 * v15, v10, &qword_27DAE4130, &qword_22FE4A140);
      v18 = *v10;
      sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
      if (v18 == v29)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v19 = 1;
        a2 = v28;
        goto LABEL_10;
      }
    }

    v20 = v25;
    v21 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v20;
    v30 = *v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22FE3D4EC();
      v23 = v30;
    }

    a2 = v28;
    sub_22FD93E04(*(v23 + 48) + v17 * v15, v28, &qword_27DAE4130, &qword_22FE4A140);
    sub_22FE3ED90(v15);
    v19 = 0;
    *v20 = v30;
LABEL_10:
    v7 = v26;
    v6 = v27;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a2, v19, 1, v6);
}

unint64_t sub_22FE3D154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  result = sub_22FE43E04();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 32 * v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v16 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22FE3D714();
      v13 = v16;
    }

    v14 = (*(v13 + 48) + 32 * v9);
    v15 = v14[1];
    *a2 = *v14;
    *(a2 + 16) = v15;
    result = sub_22FE3F064(v9);
    *v2 = v16;
  }

  else
  {
LABEL_5:
    *a2 = xmmword_22FE4F930;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t sub_22FE3D270(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  v5 = sub_22FE43E04();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 16 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22FE3D878();
    v12 = v16;
  }

  v13 = (*(v12 + 48) + 16 * v7);
  v14 = *v13;
  v15 = v13[1];
  sub_22FE3F210(v7);
  result = v14;
  *v1 = v16;
  return result;
}

void *sub_22FE3D390()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4228, &qword_22FE4A728);
  v2 = *v0;
  v3 = sub_22FE43894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22FE3D4EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE5428, &unk_22FE4FC60);
  v6 = *v0;
  v7 = sub_22FE43894();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v23 + 72) * (v18 | (v12 << 6));
        sub_22FD764B4(*(v6 + 48) + v21, v5, &qword_27DAE4130, &qword_22FE4A140);
        result = sub_22FD93E04(v5, *(v8 + 48) + v21, &qword_27DAE4130, &qword_22FE4A140);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_22FE3D714()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE53F8, &qword_22FE4FBA8);
  v2 = *v0;
  v3 = sub_22FE43894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
        *(v21 + 24) = v20;
        result = sub_22FDE65C8(v19, v20);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_22FE3D878()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5418, &qword_22FE4FC38);
  v2 = *v0;
  v3 = sub_22FE43894();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_22FE3D9BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4228, &qword_22FE4A728);
  result = sub_22FE438A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22FE43DB4();

      sub_22FE430D4();
      result = sub_22FE43E04();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22FE3DBF4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v35 = (&v31 - v6);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE5428, &unk_22FE4FC60);
  result = sub_22FE438A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v32 = v2;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v7 + 48);
      v34 = *(v33 + 72);
      v22 = v35;
      sub_22FD764B4(v21 + v34 * (v18 | (v11 << 6)), v35, &qword_27DAE4130, &qword_22FE4A140);
      v23 = *(v10 + 40);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](*v22);
      result = sub_22FE43E04();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_22FD93E04(v35, *(v10 + 48) + v17 * v34, &qword_27DAE4130, &qword_22FE4A140);
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_22FE3DEEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE53F8, &qword_22FE4FBA8);
  result = sub_22FE438A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 32 * (v15 | (v7 << 6)));
      v27 = v18[1];
      v28 = *v18;
      v19 = *(v6 + 40);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v28);
      result = sub_22FE43E04();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 32 * v13);
      *v14 = v28;
      v14[1] = v27;
      ++*(v6 + 16);
      result = sub_22FDE65C8(v27, *(&v27 + 1));
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22FE3E118(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5418, &qword_22FE4FC38);
  result = sub_22FE438A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v19);
      result = sub_22FE43E04();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22FE3E344(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4228, &qword_22FE4A728);
  result = sub_22FE438A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22FE43DB4();
      sub_22FE430D4();
      result = sub_22FE43E04();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22FE3E5A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = (&v35 - v6);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE5428, &unk_22FE4FC60);
  result = sub_22FE438A4();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = v10;
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = *(v7 + 48);
      v38 = *(v37 + 72);
      v24 = v39;
      sub_22FD93E04(v23 + v38 * (v20 | (v11 << 6)), v39, &qword_27DAE4130, &qword_22FE4A140);
      v25 = *(v19 + 40);
      sub_22FE43DB4();
      v26 = *v24;
      v10 = v19;
      MEMORY[0x23190B9F0](v26);
      result = sub_22FE43E04();
      v27 = -1 << *(v19 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_22FD93E04(v39, *(v19 + 48) + v18 * v38, &qword_27DAE4130, &qword_22FE4A140);
      ++*(v19 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v19 = v10;
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v7 + 32);
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    v2 = v36;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_22FE3E8D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE53F8, &qword_22FE4FBA8);
  result = sub_22FE438A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v29 = v19[1];
      v30 = *v19;
      v20 = *(v6 + 40);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v30);
      result = sub_22FE43E04();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v30;
      v15[1] = v29;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22FE3EB34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5418, &qword_22FE4FC38);
  result = sub_22FE438A4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v20);
      result = sub_22FE43E04();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_22FE3ED90(int64_t a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v24 - v5);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;
    v11 = *v1;

    v12 = sub_22FE43844();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v13 = (v12 + 1) & v10;
      v14 = *(v3 + 72);
      v26 = v14;
      v27 = v7;
      while (1)
      {
        v15 = v14 * v9;
        v16 = v28;
        sub_22FD764B4(*(v6 + 48) + v14 * v9, v28, &qword_27DAE4130, &qword_22FE4A140);
        v17 = *(v6 + 40);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](*v16);
        v18 = sub_22FE43E04();
        sub_22FD93E6C(v16, &qword_27DAE4130, &qword_22FE4A140);
        v19 = v18 & v10;
        if (a1 >= v13)
        {
          if (v19 < v13)
          {
            v14 = v26;
            goto LABEL_5;
          }

          v14 = v26;
          if (a1 < v19)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = v26;
          if (v19 < v13 && a1 < v19)
          {
            goto LABEL_5;
          }
        }

        v20 = v14 * a1;
        if (v14 * a1 < v15 || *(v6 + 48) + v14 * a1 >= (*(v6 + 48) + v15 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v20 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v10;
        if (((*(v27 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {

          v7 = v27;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v6 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v23;
    ++*(v6 + 36);
  }
}

unint64_t sub_22FE3F064(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22FE43844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = *(v3 + 40);
        v13 = *(*(v3 + 48) + 32 * v6);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v13);
        v14 = sub_22FE43E04() & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 32 * v2);
          v17 = (v15 + 32 * v6);
          if (v2 != v6 || v16 >= v17 + 2)
          {
            v11 = v17[1];
            *v16 = *v17;
            v16[1] = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22FE3F210(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_22FE43844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 16 * v6);
        sub_22FE43DB4();
        MEMORY[0x23190B9F0](v12);
        v13 = sub_22FE43E04() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 16 * v2);
          v16 = (v14 + 16 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_22FE3F3BC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v7 = *(v44 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v44);
  v10 = (&v44 - v9);
  v11 = *v3;
  v12 = *(*v3 + 40);
  sub_22FE43DB4();
  v46 = a1;
  v13 = *a1;
  MEMORY[0x23190B9F0](*a1);
  v14 = sub_22FE43E04();
  v15 = -1 << *(v11 + 32);
  v16 = v14 & ~v15;
  v17 = *(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16;
  v47 = v3;
  v48 = v7;
  if (v17)
  {
    LODWORD(v50) = a2;
    v18 = ~v15;
    v19 = *(v7 + 72);
    while (1)
    {
      sub_22FD764B4(*(v11 + 48) + v19 * v16, v10, &qword_27DAE4130, &qword_22FE4A140);
      v20 = *v10;
      sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
      v21 = v20 == v13;
      v22 = v20 != v13;
      if (v21)
      {
        break;
      }

      v16 = (v16 + 1) & v18;
      if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v4 = v47;
        v7 = v48;
        LOBYTE(a2) = v50;
        v23 = 1;
        goto LABEL_8;
      }
    }

    v23 = 0;
    v4 = v47;
    v7 = v48;
    LOBYTE(a2) = v50;
  }

  else
  {
    v22 = 1;
    v23 = 1;
  }

LABEL_8:
  v24 = *(v11 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26 = *(v11 + 24);
  if (v26 >= v25 && (a2 & 1) != 0)
  {
    if (!v22)
    {
LABEL_12:
      v27 = *(v7 + 72) * v16;
LABEL_27:
      v42 = *v4;
      v41 = v45;
      sub_22FD93E04(*(*v4 + 48) + v27, v45, &qword_27DAE4130, &qword_22FE4A140);
      sub_22FD93E04(v46, *(v42 + 48) + v27, &qword_27DAE4130, &qword_22FE4A140);
      v40 = 0;
      return (*(v7 + 56))(v41, v40, 1, v44);
    }

    goto LABEL_24;
  }

  if (a2)
  {
    sub_22FE3E5A4(v25);
  }

  else
  {
    if (v26 >= v25)
    {
      sub_22FE3D4EC();
      if (!v22)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    sub_22FE3DBF4(v25);
  }

  v28 = *v4;
  v29 = *(*v4 + 40);
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](v13);
  v30 = sub_22FE43E04();
  v31 = v28 + 56;
  v49 = v28 + 56;
  v50 = v28;
  v32 = -1 << *(v28 + 32);
  v16 = v30 & ~v32;
  if (((*(v31 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_23:
    v4 = v47;
    v7 = v48;
    if (!v22)
    {
      goto LABEL_31;
    }

LABEL_24:
    v36 = *v4;
    *(*v4 + 8 * (v16 >> 6) + 56) |= 1 << v16;
    sub_22FD93E04(v46, *(v36 + 48) + *(v7 + 72) * v16, &qword_27DAE4130, &qword_22FE4A140);
    v37 = *(v36 + 16);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (!v38)
    {
      *(v36 + 16) = v39;
      v40 = 1;
      v41 = v45;
      return (*(v7 + 56))(v41, v40, 1, v44);
    }

    goto LABEL_30;
  }

  v33 = ~v32;
  v34 = *(v7 + 72);
  while (1)
  {
    v27 = v34 * v16;
    sub_22FD764B4(*(v50 + 48) + v34 * v16, v10, &qword_27DAE4130, &qword_22FE4A140);
    v35 = *v10;
    sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
    if (v35 == v13)
    {
      break;
    }

    v16 = (v16 + 1) & v33;
    if (((*(v49 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v4 = v47;
  v7 = v48;
  if (!v22)
  {
    goto LABEL_27;
  }

LABEL_31:
  result = sub_22FE43D04();
  __break(1u);
  return result;
}

uint64_t sub_22FE3F77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *v6;
  v13 = *(*v6 + 40);
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  v14 = sub_22FE43E04();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = 1;
    while (1)
    {
      v19 = *(*(v12 + 48) + 32 * v16);
      v20 = v19 != a1;
      if (v19 == a1)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v18 = 0;
  }

  else
  {
    v20 = 1;
    v18 = 1;
  }

LABEL_8:
  v21 = *(v12 + 16);
  result = v21 + v18;
  if (__OFADD__(v21, v18))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23 = *(v12 + 24);
  if (v23 < result || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_22FE3E8D8(result);
    }

    else
    {
      if (v23 >= result)
      {
        result = sub_22FE3D714();
        if (!v20)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_22FE3DEEC(result);
    }

    v24 = *v6;
    v25 = *(*v6 + 40);
    sub_22FE43DB4();
    MEMORY[0x23190B9F0](a1);
    result = sub_22FE43E04();
    v26 = -1 << *(v24 + 32);
    v16 = result & ~v26;
    if ((*(v24 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v27 = ~v26;
      while (*(*(v24 + 48) + 32 * v16) != a1)
      {
        v16 = (v16 + 1) & v27;
        if (((*(v24 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (!v20)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_23:
      if (v20)
      {
LABEL_24:
        v28 = *v6;
        *(*v6 + 8 * (v16 >> 6) + 56) |= 1 << v16;
        v29 = (*(v28 + 48) + 32 * v16);
        *v29 = a1;
        v29[1] = a2;
        v29[2] = a3;
        v29[3] = a4;
        v30 = *(v28 + 16);
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (!v31)
        {
          *(v28 + 16) = v32;
          *a6 = xmmword_22FE4F930;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          return result;
        }

        goto LABEL_30;
      }
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE40B8, &qword_22FE4FBA0);
    result = sub_22FE43D04();
    __break(1u);
    return result;
  }

  if (v20)
  {
    goto LABEL_24;
  }

LABEL_27:
  v33 = *(*v6 + 48) + 32 * v16;
  v34 = *(v33 + 16);
  *a6 = *v33;
  *(a6 + 16) = v34;
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3;
  *(v33 + 24) = a4;
  return result;
}

uint64_t sub_22FE3F9E8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](a1);
  v9 = sub_22FE43E04();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = 1;
    while (1)
    {
      v14 = *(*(v7 + 48) + 16 * v11);
      v15 = v14 != a1;
      if (v14 == a1)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v13 = 0;
  }

  else
  {
    v15 = 1;
    v13 = 1;
  }

LABEL_8:
  v16 = *(v7 + 16);
  v17 = v16 + v13;
  if (__OFADD__(v16, v13))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = *(v7 + 24);
  if (v18 < v17 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22FE3EB34(v17);
    }

    else
    {
      if (v18 >= v17)
      {
        sub_22FE3D878();
        if (!v15)
        {
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      sub_22FE3E118(v17);
    }

    v19 = *v3;
    v20 = *(*v3 + 40);
    sub_22FE43DB4();
    MEMORY[0x23190B9F0](a1);
    v21 = sub_22FE43E04();
    v22 = -1 << *(v19 + 32);
    v11 = v21 & ~v22;
    if ((*(v19 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v23 = ~v22;
      while (*(*(v19 + 48) + 16 * v11) != a1)
      {
        v11 = (v11 + 1) & v23;
        if (((*(v19 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (!v15)
      {
        goto LABEL_27;
      }
    }

    else
    {
LABEL_23:
      if (v15)
      {
LABEL_24:
        v24 = *v3;
        *(*v3 + 8 * (v11 >> 6) + 56) |= 1 << v11;
        v25 = (*(v24 + 48) + 16 * v11);
        *v25 = a1;
        v25[1] = a2;
        v26 = *(v24 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (!v27)
        {
          result = 0;
          *(v24 + 16) = v28;
          return result;
        }

        goto LABEL_30;
      }
    }

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5410, &qword_22FE4FC30);
    result = sub_22FE43D04();
    __break(1u);
    return result;
  }

  if (v15)
  {
    goto LABEL_24;
  }

LABEL_27:
  v30 = (*(*v3 + 48) + 16 * v11);
  result = *v30;
  v31 = v30[1];
  *v30 = a1;
  v30[1] = a2;
  return result;
}

unint64_t sub_22FE3FC24(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FE43844() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x23190B990](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22FE3FDEC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  *(v5 + 80) = a2;
  *(v5 + 88) = a5;
  *(v5 + 96) = *a4;
  return MEMORY[0x2822009F8](sub_22FE3FE14);
}

uint64_t sub_22FE3FE14()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[2] = v0;
  v0[3] = sub_22FD8AFE8;
  v5 = swift_continuation_init();
  sub_22FE40798(v5, v4, v2, v1, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FE3FECC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = *(a3 + 16 * a4 + 32);
  v7 = *result;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](v6);
  result = sub_22FE43E04();
  v8 = 1 << *v5;
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = v10 & result;
  v14 = sub_22FE42924();
  if (v14)
  {
    goto LABEL_7;
  }

LABEL_5:
  __break(1u);
  do
  {
    sub_22FE42974();
    if (!v14)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = sub_22FE42954();
  }

  while ((v12 & 1) != 0 || v11 != a4);
  return v13;
}

void sub_22FE3FFE4(void *a1, os_unfair_lock_s *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - v6;
  os_unfair_lock_lock(a2 + 16);
  v8 = sub_22FE2B768(a1);
  v10 = v9;
  os_unfair_lock_unlock(a2 + 16);
  if (v8)
  {
    v11 = *(v8 + 2);
    if (v11)
    {
      v12 = v8 + 32;

      do
      {
        if (*v12++)
        {
          swift_continuation_throwingResume();
        }

        --v11;
      }

      while (v11);
    }

    else
    {
    }

    if (a1)
    {
      v26[0] = v8;
      v14 = *(v10 + 16);
      v15 = a1;
      if (v14)
      {
        v16 = 0;
        while (v16 < *(v10 + 16))
        {
          if (*(v10 + 32 + 8 * v16))
          {
            v26[1] = a1;
            v20 = a1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
            v21 = sub_22FE43C64();
            if (v21)
            {
              v17 = v21;
            }

            else
            {
              v17 = swift_allocError();
              *v18 = a1;
            }

            swift_allocError();
            *v19 = v17;
            swift_continuation_throwingResumeWithError();
          }

          if (v14 == ++v16)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
        sub_22FE41B54(v26[0], v10, MEMORY[0x277D84FB8]);
      }
    }

    else
    {
      v22 = *(v10 + 16);
      if (v22)
      {
        v23 = 32;
        do
        {
          v24 = *(v10 + v23);
          if (v24)
          {
            v25 = type metadata accessor for StoredPhoto(0);
            (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
            sub_22FD93E04(v7, *(*(v24 + 64) + 40), &qword_27DAE4580, &qword_22FE4B9C0);
            swift_continuation_throwingResume();
          }

          v23 += 8;
          --v22;
        }

        while (v22);
      }

      sub_22FE41B54(v8, v10, MEMORY[0x277D84FB8]);
    }
  }
}

void sub_22FE402C0(void *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 16);
  v4 = sub_22FE2BA64(a1);
  v6 = v5;
  os_unfair_lock_unlock(a2 + 16);
  if (v4)
  {
    v7 = *(v4 + 2);
    if (v7)
    {
      v8 = v4 + 32;

      do
      {
        if (*v8++)
        {
          swift_continuation_throwingResume();
        }

        --v7;
      }

      while (v7);
    }

    else
    {
    }

    if (a1)
    {
      v10 = *(v6 + 16);
      v11 = a1;
      if (v10)
      {
        v12 = 0;
        while (v12 < *(v6 + 16))
        {
          if (*(v6 + 32 + 8 * v12))
          {
            v16 = a1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
            v17 = sub_22FE43C64();
            if (v17)
            {
              v13 = v17;
            }

            else
            {
              v13 = swift_allocError();
              *v14 = a1;
            }

            swift_allocError();
            *v15 = v13;
            swift_continuation_throwingResumeWithError();
          }

          if (v10 == ++v12)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
        sub_22FE41B54(v4, v6, MEMORY[0x277D84FB8]);
      }
    }

    else
    {
      v18 = *(v6 + 16);
      if (v18)
      {
        v19 = 32;
        do
        {
          v20 = *(v6 + v19);
          if (v20)
          {
            **(*(v20 + 64) + 40) = xmmword_22FE4BA20;
            swift_continuation_throwingResume();
          }

          v19 += 8;
          --v18;
        }

        while (v18);
      }

      sub_22FE41B54(v4, v6, MEMORY[0x277D84FB8]);
    }
  }
}

uint64_t sub_22FE40500(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(a3 + 16) <= a4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  v6 = *(a3 + 32 * a4 + 32);
  v7 = *result;
  sub_22FE43DB4();
  MEMORY[0x23190B9F0](v6);
  result = sub_22FE43E04();
  v8 = 1 << *v5;
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v9)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = v10 & result;
  v14 = sub_22FE42924();
  if (v14)
  {
    goto LABEL_7;
  }

LABEL_5:
  __break(1u);
  do
  {
    sub_22FE42974();
    if (!v14)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = sub_22FE42954();
  }

  while ((v12 & 1) != 0 || v11 != a4);
  return v13;
}

void sub_22FE40618(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4580, &qword_22FE4B9C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  os_unfair_lock_lock(a2 + 16);
  v12 = sub_22FE2ABD0(a1, a3, a4);
  os_unfair_lock_unlock(a2 + 16);
  if (v12 == 1)
  {

    swift_continuation_throwingResume();
  }

  else if (v12 != 2)
  {
    swift_continuation_throwingResume();
    if (v12)
    {
      sub_22FE41BB0(a3, v11);
      v13 = type metadata accessor for StoredPhoto(0);
      (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
      sub_22FD93E04(v11, *(*(v12 + 64) + 40), &qword_27DAE4580, &qword_22FE4B9C0);
      swift_continuation_throwingResume();
    }
  }
}

void sub_22FE40798(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  os_unfair_lock_lock(a2 + 16);
  v10 = sub_22FE2AFE0(a1, a3, a4, a5);
  os_unfair_lock_unlock(a2 + 16);
  if (v10 != 1)
  {
    if (v10 == 2)
    {
      return;
    }

    swift_continuation_throwingResume();
    if (!v10)
    {
      return;
    }

    sub_22FDB4380(a3, a4);
    v11 = *(*(v10 + 64) + 40);
    *v11 = a3;
    v11[1] = a4;
  }

  swift_continuation_throwingResume();
}

void sub_22FE40878(unint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  os_unfair_lock_lock(a2 + 16);
  sub_22FE2BE28(a1, a3, &v16);
  os_unfair_lock_unlock(a2 + 16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  if (v19 > 1u)
  {
    if (v19 == 2)
    {
      if (v16)
      {
        sub_22FE41ACC(v16, v17, v18, 2);
        swift_continuation_throwingResume();
      }

      else
      {
        sub_22FE41ACC(0, v17, v18, 2);
      }

      v15 = *(*(a1 + 64) + 40);
      *v15 = v6;
      v15[1] = v8;
      swift_continuation_throwingResume();
      v10 = v7;
      v11 = v6;
      v12 = v8;
      v13 = 2;
    }

    else
    {
      sub_22FE41ACC(v16, v17, v18, 255);
      v10 = v7;
      v11 = v6;
      v12 = v8;
      v13 = -1;
    }
  }

  else if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    swift_allocError();
    *v14 = v7;
    sub_22FE41ACC(v7, v6, v8, 1);
    swift_continuation_throwingResumeWithError();
    v10 = v16;
    v11 = v17;
    v12 = v18;
    v13 = v19;
  }

  else
  {
    sub_22FE41ACC(v16, v17, v18, 0);
    v9 = *(*(a1 + 64) + 40);
    *v9 = v7;
    v9[1] = v6;
    swift_continuation_throwingResume();
    v10 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 0;
  }

  sub_22FE41B10(v10, v11, v12, v13);
}

void sub_22FE40A4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v41 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4130, &qword_22FE4A140);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v37 - v12);
  v42 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v14 = v42;
  if (a2 > v42)
  {
    v14 = a2;
  }

  v39 = v14;
  v38 = v4;
  v37 = &v37 - v12;
  while (a2 != v39)
  {
    v15 = v40;
    v16 = *(v40 + 72);
    v44 = a2;
    sub_22FD764B4(v41 + v16 * a2, v13, &qword_27DAE4130, &qword_22FE4A140);
    v18 = *v4;
    v17 = v4[1];
    v19 = v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    if (*v4)
    {
      v20 = *(v18 + 16);
      sub_22FE43DB4();
      v21 = *v13;
      MEMORY[0x23190B9F0](v21);
      v22 = sub_22FE43E04();
      v23 = 1 << *(v18 + 16);
      v24 = __OFSUB__(v23, 1);
      v25 = v23 - 1;
      if (v24)
      {
        goto LABEL_24;
      }

      v26 = v25 & v22;
      v27 = sub_22FE42924();
      *&v53 = v18 + 16;
      *(&v53 + 1) = v18 + 32;
      *&v54 = v26;
      *(&v54 + 1) = v27;
      *&v55 = v28;
      *(&v55 + 1) = v29;
      v56 = 0;
      v30 = sub_22FE42954();
      LOBYTE(v26) = v31;
      v45 = v53;
      v46 = v54;
      v47 = v55;
      v48 = v56;
      v43 = v18;

      if ((v26 & 1) == 0)
      {
        v32 = v30;
        v4 = v38;
        while (1)
        {
          sub_22FD764B4(v19 + v32 * v16, v10, &qword_27DAE4130, &qword_22FE4A140);
          v33 = *v10;
          sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
          if (v33 == v21)
          {
            break;
          }

          sub_22FE42974();
          v49 = v45;
          v50 = v46;
          v51 = v47;
          v52 = v48;
          v32 = sub_22FE42954();
          if (v34)
          {
            goto LABEL_7;
          }
        }

        v13 = v37;
        goto LABEL_9;
      }

      v4 = v38;
LABEL_7:

      v13 = v37;
    }

    else
    {
      v35 = *(v17 + 16);
      if (v35)
      {
        do
        {
          sub_22FD764B4(v19, v10, &qword_27DAE4130, &qword_22FE4A140);
          v36 = *v10;
          sub_22FD93E6C(v10, &qword_27DAE4130, &qword_22FE4A140);
          if (v36 == *v13)
          {
            goto LABEL_9;
          }

          v19 += v16;
        }

        while (--v35);
      }
    }

    sub_22FE39904(v13);
LABEL_9:
    a2 = v44 + 1;
    sub_22FD93E6C(v13, &qword_27DAE4130, &qword_22FE4A140);
    if (a2 == v42)
    {
      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_22FE40DDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v20 = result;
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v5 = a2;
  v19 = a3 >> 1;
  while (v5 < v4)
  {
    v6 = (v20 + 32 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    v12 = *v3;
    v11 = v3[1];
    v13 = (v11 + 32);
    if (*v3)
    {
      v14 = *(v12 + 16);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v7);
      result = sub_22FE43E04();
      if (__OFSUB__(1 << *(v12 + 16), 1))
      {
        goto LABEL_19;
      }

      sub_22FE42924();
      result = sub_22FE42954();
      if ((v15 & 1) == 0)
      {
        while (v13[4 * result] != v7)
        {
          sub_22FE42974();
          result = sub_22FE42954();
          if (v16)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v17 = *(v11 + 16);
      if (v17)
      {
        do
        {
          v18 = *v13;
          v13 += 4;
          if (v18 == v7)
          {
            goto LABEL_6;
          }
        }

        while (--v17);
      }
    }

LABEL_4:
    sub_22FDE65C8(v9, v10);
    sub_22FE39B54(v7, v8, v9, v10);
    result = sub_22FDC27F0(v9, v10);
LABEL_5:
    v4 = v19;
LABEL_6:
    if (++v5 == v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_22FE40FA4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v5 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return result;
  }

  v6 = a2;
  v7 = result;
  while (v6 < v5)
  {
    v9 = (v7 + 16 * v6);
    v10 = *v9;
    v11 = v9[1];
    v13 = *v4;
    v12 = v4[1];
    v14 = (v12 + 32);
    if (*v4)
    {
      v15 = *(v13 + 16);
      sub_22FE43DB4();
      MEMORY[0x23190B9F0](v10);
      result = sub_22FE43E04();
      v16 = 1 << *(v13 + 16);
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        goto LABEL_19;
      }

      v24 = v18 & result;
      sub_22FE42924();
      result = sub_22FE42954();
      v8 = v24;
      if ((v19 & 1) == 0)
      {
        while (v14[2 * result] != v10)
        {
          sub_22FE42974();
          v8 = v24;
          result = sub_22FE42954();
          if (v20)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      v21 = *(v12 + 16);
      if (v21)
      {
        do
        {
          v22 = *v14;
          v14 += 2;
          if (v22 == v10)
          {
            goto LABEL_6;
          }
        }

        while (--v21);
      }

      v8 = 0;
    }

LABEL_5:
    result = sub_22FE39D50(v10, v11, v8, a4);
LABEL_6:
    if (++v6 == v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_22FE412FC()
{
  result = qword_27DAE53F0;
  if (!qword_27DAE53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE53F0);
  }

  return result;
}

uint64_t sub_22FE413A0(uint64_t a1)
{
  v3 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  type metadata accessor for XPCMessageCenter.XPCResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v4 = *(*(sub_22FE433A4() - 8) + 80);

  return sub_22FE34F08(a1);
}

uint64_t sub_22FE41490(uint64_t a1)
{
  v2 = v1[2];
  v4[1] = v1[1];
  v4[2] = v2;
  v4[3] = v1[3];
  v5 = a1;
  return sub_22FE29370(sub_22FE414E8, v4);
}

uint64_t sub_22FE414E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_22FE3377C(v0[7], v0[8]);
}

double sub_22FE41510@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v6[1] = v2[1];
  v6[2] = v4;
  v6[3] = v2[3];
  v7 = a1;
  sub_22FE29564(sub_22FE41580, v6);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_22FE41580@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  return sub_22FE355DC(v1[8], a1);
}

uint64_t sub_22FE415A8(uint64_t a1)
{
  v4 = *(sub_22FE42E84() - 8);
  v5 = (*(v4 + 80) + 84) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FD73F54;

  return sub_22FE383A0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_22FE416B0(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = v1[6];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + v10 + 8);
  v17 = *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_22FD8C738;

  return sub_22FE36664(a1, v11, v12, v1 + v7, v13, v14, v15, v16);
}

uint64_t sub_22FE4186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    return sub_22FDC27F0(a3, a4);
  }

  return result;
}

uint64_t sub_22FE41884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22FD8C738;

  return sub_22FE2ED10(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22FE4194C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22FE419B4(id result, void *a2, unint64_t a3, char a4)
{
  if (result != 1)
  {
    return sub_22FE419D4(a2, a3, a4 & 1);
  }

  return result;
}

id sub_22FE419D4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_22FDE65C8(a1, a2);
  }
}

void sub_22FE419E0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a1 != 1)
  {
    sub_22FE41A00(a2, a3, a4 & 1);
  }
}

void sub_22FE41A00(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_22FDC27F0(a1, a2);
  }
}

uint64_t sub_22FE41A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FD73F54;

  return sub_22FE2C2CC(a1, v4, v5, v6);
}

id sub_22FE41ACC(id result, unint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_22FE41AE0(result, a2, a3, a4);
  }

  return result;
}

id sub_22FE41AE0(id result, unint64_t a2, unint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:
      return sub_22FDE65C8(a2, a3);
    case 1:
      return result;
    case 0:
      return sub_22FDE65C8(result, a2);
  }

  return result;
}

void sub_22FE41B10(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_22FE41B24(a1, a2, a3, a4);
  }
}

void sub_22FE41B24(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:
      sub_22FDC27F0(a2, a3);
      break;
    case 1:

      break;
    case 0:
      sub_22FDC27F0(a1, a2);
      break;
  }
}

uint64_t sub_22FE41B54(uint64_t result, uint64_t a2, void (*a3)(void))
{
  if (result)
  {
    a3();

    return (a3)(a2);
  }

  return result;
}

uint64_t sub_22FE41BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhoto(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FE41C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FD8C738;

  return sub_22FE2C164(a1, v4, v5, v7, v6);
}

uint64_t sub_22FE41D08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10PhotosFace16XPCMessageCenterC11XPCResponseOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22FE41D7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FE41DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FE41E08(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22FE41E20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22FE41E64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FE41F00(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v8 = 4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v9 = v8 | 1;
  if ((v8 | 1) <= 3)
  {
    v10 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = *&a1[v9];
      if (v13)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v17 = a1[v8];
    if (v17 >= 2)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_27;
  }

LABEL_23:
  v15 = (v13 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return (v16 | v15) + 255;
}

void sub_22FE42024(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF0)
  {
    v10 = 4;
  }

  v11 = v10 | 1;
  if (a3 < 0xFF)
  {
    v14 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v11] = 0;
    }

    else if (v14)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v10] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v15 = a2 - 255;
  bzero(a1, v10 | 1);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_21:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

unint64_t sub_22FE421D4()
{
  result = qword_27DAE55B0;
  if (!qword_27DAE55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE55B0);
  }

  return result;
}

unint64_t sub_22FE422A0()
{
  result = qword_27DAE55C0[0];
  if (!qword_27DAE55C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAE55C0);
  }

  return result;
}