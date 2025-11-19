void sub_2657EE73C(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v2 = sub_2657F2344();
    __swift_project_value_buffer(v2, qword_281446410);
    v3 = sub_2657F2334();
    v4 = sub_2657F2584();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2657B5000, v3, v4, "Sync engine is disabled because of unsupported device", v5, 2u);
      MEMORY[0x266760A30](v5, -1, -1);
    }
  }

  if ((v1 & 2) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v6 = sub_2657F2344();
    __swift_project_value_buffer(v6, qword_281446410);
    v7 = sub_2657F2334();
    v8 = sub_2657F2584();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2657B5000, v7, v8, "Sync engine is disabled because of preference", v9, 2u);
      MEMORY[0x266760A30](v9, -1, -1);
    }
  }

  if ((~v1 & 3) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v10 = sub_2657F2344();
    __swift_project_value_buffer(v10, qword_281446410);
    oslog = sub_2657F2334();
    v11 = sub_2657F2584();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2657B5000, oslog, v11, "Sync engine is enabled", v12, 2u);
      MEMORY[0x266760A30](v12, -1, -1);
    }
  }
}

void *sub_2657EE9C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v75 = a4;
  v76 = a2;
  v77 = a3;
  v69 = a11;
  v70 = a6;
  v67 = a10;
  v68 = a5;
  v65 = a1;
  v66 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD0, &qword_2657F51A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD8, &unk_2657F51A8);
  v19 = *(v18 - 8);
  v73 = v18;
  v74 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v72 = &v59 - v21;
  v22 = sub_2657F25B4();
  v60 = *(v22 - 8);
  v61 = v22;
  v23 = *(v60 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2657F2594();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v28 = sub_2657F23E4();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v62 = *a7;
  v64 = *a8;
  v63 = sub_2657D0F44(0, &qword_281446370, 0x277D85C78);
  v59 = "ictionary=}12";
  sub_2657F23D4();
  v79 = MEMORY[0x277D84F90];
  sub_2657EF918(&qword_281446390, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657D53B4(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220);
  sub_2657F2664();
  (*(v60 + 104))(v25, *MEMORY[0x277D85268], v61);
  v11[15] = sub_2657F25E4();
  v30 = MEMORY[0x277D84F98];
  v11[18] = MEMORY[0x277D84F98];
  v11[19] = 0;
  v11[21] = v30;
  v11[22] = v30;
  v11[23] = MEMORY[0x277D84FA0];
  type metadata accessor for UnfairLock();
  v11[25] = 0;
  v11[26] = 0;
  v11[24] = 0;
  v31 = swift_allocObject();
  v32 = swift_slowAlloc();
  *(v31 + 16) = v32;
  *v32 = 0;
  v12[28] = 0;
  v12[29] = 0;
  v12[27] = v31;
  *(v12 + 120) = 0;
  *(v12 + 16) = 0u;
  *(v12 + 17) = 0u;
  *(v12 + 18) = 0u;
  *(v12 + 19) = 0u;
  *(v12 + 20) = 0u;
  v34 = v76;
  v33 = v77;
  v12[3] = v65;
  v12[4] = v34;
  sub_2657BF854(v33, (v12 + 5));
  v35 = v75;
  sub_2657BF854(v75, (v12 + 10));
  v36 = v70;
  v12[16] = v68;
  v12[17] = v36;
  *(v12 + 16) = v62;
  v37 = v67;
  v12[20] = v66;
  v38 = v12[26];
  v39 = v69;
  v12[25] = v37;
  v12[26] = v39;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v40 = v64;
  v12[31] = v64;
  v41 = v35;
  v42 = v35[3];
  v43 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v44 = (*(v43 + 24))(v42, v43);
  v78 = v12[15];
  v45 = v78;
  v79 = v44;
  v46 = sub_2657F25A4();
  v47 = v71;
  (*(*(v46 - 8) + 56))(v71, 1, 1, v46);
  v48 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BF0, &qword_2657F51B8);
  sub_2657D53B4(&unk_2814463E8, &unk_280023BF0, &qword_2657F51B8);
  sub_2657EF098();
  v49 = v72;
  sub_2657F2384();
  sub_2657CC304(v47, &qword_280023BD0, &qword_2657F51A0);

  v50 = swift_allocObject();
  *(v50 + 16) = sub_2657F0704;
  *(v50 + 24) = v12;
  sub_2657D53B4(&unk_2814463F8, &qword_280023BD8, &unk_2657F51A8);

  v51 = v73;
  v52 = sub_2657F2394();

  (*(v74 + 8))(v49, v51);
  v53 = v12[24];
  v12[24] = v52;

  v79 = v40;
  sub_2657EE73C(&v79);
  ObjectType = swift_getObjectType();
  v55 = v76;
  v56 = *(v76 + 8);

  v56(v57, &protocol witness table for SyncEngine, ObjectType, v55);

  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v75);
  return v12;
}

unint64_t sub_2657EF098()
{
  result = qword_281446380;
  if (!qword_281446380)
  {
    sub_2657D0F44(255, &qword_281446370, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281446380);
  }

  return result;
}

uint64_t sub_2657EF104(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_2657EF170()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2657D9CB0(v1);
}

void sub_2657EF1D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);
  v5[0] = *(v0 + 40);
  v5[1] = v4;
  v6 = *(v0 + 72);
  sub_2657EFB10(v5, v2, v3);
}

void sub_2657EF23C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  sub_2657DBB84(v1, v2, v3, v4, v5);
}

void sub_2657EF26C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = v4;
  sub_2657DC9B8(v1, v3, &v5);
}

unint64_t sub_2657EF2B8()
{
  result = qword_280023C00;
  if (!qword_280023C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023C00);
  }

  return result;
}

uint64_t sub_2657EF6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9[1] = a5;
  v10 = a3;
  v9[0] = a4;
  return v6(a1, a2, &v10, v9);
}

uint64_t sub_2657EF700@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v8 = v2[2];
  result = SyncEngine._queue_syncService(_:shouldAcceptIncomingMessage:from:)(v4, a1, v5, v6, v7);
  *a2 = result & 1;
  return result;
}

uint64_t objectdestroy_213Tm(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[3];
  swift_unknownObjectRelease();
  v5 = v1[6];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2657EF7A0(uint64_t (*a1)(uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[2];
  v8 = sub_2657D9730(v3, v4, v5, v6);
  return a1(v8);
}

uint64_t sub_2657EF7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2657EF854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2657EF918(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2657EF978(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_2657EF9A8()
{
  v1 = sub_2657F2414();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 120);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_2657F2434();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = *(*(v0 + 216) + 16);

    os_unfair_lock_lock(v9);
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    v12 = *(v0 + 240);

    os_unfair_lock_unlock(v9);

    if (v10)
    {
      v14[0] = v11;
      v14[1] = v10;
      v15 = v12 & 0x1FF;
      sub_2657EB840(v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2657EFB10(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v45 = a3;
  v6 = sub_2657F2414();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = *(a1 + 2);
  v15 = *(a1 + 3);
  v14 = *(a1 + 4);
  v16 = *(v4 + 120);
  *v10 = v16;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v17 = v16;
  LOBYTE(v16) = sub_2657F2434();
  (*(v7 + 8))(v10, v6);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v18 = *(v4 + 104);
  v19 = *(v4 + 112);
  __swift_project_boxed_opaque_existential_1((v4 + 80), v18);
  if ((*(v19 + 16))(v18, v19))
  {
    if ((~*(v4 + 248) & 3) == 0)
    {
      LOBYTE(v46[0]) = v11;
      v46[1] = v12;
      v46[2] = v13;
      v46[3] = v15;
      v46[4] = v14;
      v21 = v44;
      v20 = v45;
      sub_2657DD5D4(v46, v44, v45);
      LOBYTE(v46[0]) = v11;
      sub_2657B8A48(v21, v20, v46);
      return;
    }

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v30 = sub_2657F2344();
    __swift_project_value_buffer(v30, qword_281446410);

    v23 = sub_2657F2334();
    v24 = sub_2657F2574();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46[0] = v26;
      *v25 = 136380675;
      v31 = *(v4 + 208);
      if (v31)
      {
        v32 = *(v4 + 200);
        v33 = v31;
      }

      else
      {
        v37 = IDSCopyLocalDeviceUniqueID();
        if (v37)
        {
          v38 = v37;
          v32 = sub_2657F2484();
          v33 = v39;
        }

        else
        {
          v32 = 0xD000000000000017;
          v33 = 0x80000002657F8510;
        }
      }

      v42 = sub_2657B7F9C(v32, v33, v46);

      *(v25 + 4) = v42;
      v41 = "(%{private}s) Will not handle message because sync is inactive";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v23, v24, v41, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x266760A30](v26, -1, -1);
      MEMORY[0x266760A30](v25, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v22 = sub_2657F2344();
  __swift_project_value_buffer(v22, qword_281446410);

  v23 = sub_2657F2334();
  v24 = sub_2657F2584();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46[0] = v26;
    *v25 = 136380675;
    v27 = *(v4 + 208);
    if (v27)
    {
      v28 = *(v4 + 200);
      v29 = v27;
    }

    else
    {
      v34 = IDSCopyLocalDeviceUniqueID();
      if (v34)
      {
        v35 = v34;
        v28 = sub_2657F2484();
        v29 = v36;
      }

      else
      {
        v28 = 0xD000000000000017;
        v29 = 0x80000002657F8510;
      }
    }

    v40 = sub_2657B7F9C(v28, v29, v46);

    *(v25 + 4) = v40;
    v41 = "(%{private}s) Will not handle message because keybag is locked";
    goto LABEL_22;
  }

LABEL_23:
}

uint64_t sub_2657EFF60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v27 = a2;
  v36 = a4;
  v28 = a1;
  v35 = sub_2657F22A4();
  v5 = *(*(v35 - 8) + 64);
  result = MEMORY[0x28223BE20](v35);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v7;
  v9 = 0;
  v37 = a3;
  v10 = *(a3 + 64);
  v29 = 0;
  v30 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v31 = v7 + 8;
  v32 = v7 + 16;
  v15 = v33;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v38 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = (v37[6] + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v24 = v34;
    v23 = v35;
    v25 = v19;
    (*(v34 + 16))(v15, v37[7] + *(v34 + 72) * v19, v35);

    LOBYTE(v21) = v36(v21, v22, v15);
    (*(v24 + 8))(v15, v23);

    v13 = v38;
    if (v21)
    {
      *(v28 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_2657ECBEC(v28, v27, v29, v37);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_2657ECBEC(v28, v27, v29, v37);
    }

    v18 = *(v30 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v38 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657F01AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2657EFF60(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_2657EC7D8(v11, v6, v4, a2);
  result = MEMORY[0x266760A30](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2657F032C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2657F0394()
{
  result = qword_280023C90;
  if (!qword_280023C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023C90);
  }

  return result;
}

uint64_t sub_2657F03E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2657F0480()
{
  result = qword_280023CA0;
  if (!qword_280023CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023CA0);
  }

  return result;
}

uint64_t sub_2657F04D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657F05F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  return v5(a1, a2, *a3, *a4, a4[1]);
}

uint64_t LinearRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = xmmword_2657F3400;
  return v0;
}

uint64_t LinearRetryTimer.init()()
{
  *(v0 + 40) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = 3;
  return v0;
}

void *LinearRetryTimer.__allocating_init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v4[6] = v5;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a1;
  return v4;
}

void *LinearRetryTimer.init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v2[6] = v5;
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t LinearRetryTimer.deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return v0;
}

uint64_t LinearRetryTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

SessionSyncEngine::SyncProtocolVersion_optional __swiftcall SyncProtocolVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2657F0A80()
{
  result = qword_280023CA8;
  if (!qword_280023CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023CA8);
  }

  return result;
}

void *sub_2657F0AD4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_2657F0C10()
{
  result = qword_280023CB0;
  if (!qword_280023CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023CB0);
  }

  return result;
}

uint64_t sub_2657F0C68()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2657F0CDC()
{
  v2 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BB0, &qword_2657F5148);
  sub_2657F0D38();
  return sub_2657F2374();
}

unint64_t sub_2657F0D38()
{
  result = qword_2814463D8;
  if (!qword_2814463D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280023BB0, &qword_2657F5148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814463D8);
  }

  return result;
}

uint64_t CustomizableRetryTimer.init()()
{
  *(v0 + 40) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = 3;
  return v0;
}

void *CustomizableRetryTimer.init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v2[6] = v5;
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t CustomizableRetryTimer.deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_2657F0F74(void (*a1)(char *, os_log_t), uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 48) + 16);

  os_unfair_lock_lock(v7);
  sub_2657F1084(a1, a2, a3);
  os_unfair_lock_unlock(v7);
}

uint64_t sub_2657F1020(void (*a1)(void))
{
  v3 = *(*(v1 + 48) + 16);

  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

void sub_2657F1084(void (*a1)(char *, os_log_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  v60 = a2;
  v67 = a1;
  v5 = sub_2657F23B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2657F23E4();
  v63 = *(v66 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2657F23A4();
  v59 = *(v57 - 8);
  v11 = *(v59 + 64);
  v12 = MEMORY[0x28223BE20](v57);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = (&v53 - v14);
  v69 = sub_2657F2404();
  isa = v69[-1].isa;
  v16 = *(isa + 8);
  v17 = MEMORY[0x28223BE20](v69);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v68 = &v53 - v20;
  v21 = sub_2657F25F4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(v4[6] + 16));
  v26 = v4[4];
  v27 = v26 - 1;
  if (v26 >= 1)
  {
    v55 = v6;
    v56 = v5;
    v28 = (*(*v4 + 232))();
    v4[4] = v27;
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v29 = sub_2657F2344();
    __swift_project_value_buffer(v29, qword_281446410);
    v30 = sub_2657F2334();
    v31 = sub_2657F2584();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134349056;
      *(v32 + 4) = v28;
      _os_log_impl(&dword_2657B5000, v30, v31, "Retry timer will fire in %{public}llus", v32, 0xCu);
      MEMORY[0x266760A30](v32, -1, -1);
    }

    sub_2657F1DC4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2657F1E10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C48, &unk_2657F5370);
    sub_2657F1E68();
    sub_2657F2664();
    v33 = sub_2657F2604();
    (*(v22 + 8))(v25, v21);
    sub_2657F23F4();
    if ((v28 & 0x8000000000000000) == 0)
    {
      *v15 = v28;
      v34 = *MEMORY[0x277D85188];
      v35 = v59;
      v54 = v4;
      v36 = v57;
      v37 = *(v59 + 104);
      v37(v15, v34, v57);
      MEMORY[0x26675FF40](v19, v15);
      v38 = *(v35 + 8);
      v38(v15, v36);
      v67 = *(isa + 1);
      v67(v19, v69);
      ObjectType = swift_getObjectType();
      *v15 = 10;
      v37(v15, v34, v36);
      v40 = v58;
      sub_2657EB10C(v58);
      v41 = v68;
      MEMORY[0x266760160](v68, v40, v15, ObjectType);
      v38(v40, v36);
      v38(v15, v36);
      v42 = swift_allocObject();
      v43 = v54;
      v44 = v60;
      v42[2] = v54;
      v42[3] = v44;
      v42[4] = v64;
      aBlock[4] = sub_2657F1ECC;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2657CE9D4;
      aBlock[3] = &block_descriptor_2;
      v45 = _Block_copy(aBlock);

      v46 = v62;
      sub_2657EB4EC();
      v47 = v65;
      sub_2657EB4F0();
      sub_2657F2614();
      _Block_release(v45);
      (*(v55 + 8))(v47, v56);
      (*(v63 + 8))(v46, v66);

      v48 = v43[5];
      v43[5] = v33;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      sub_2657F2634();
      swift_unknownObjectRelease_n();
      v67(v41, v69);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_281446408 != -1)
  {
LABEL_15:
    swift_once();
  }

  v49 = sub_2657F2344();
  __swift_project_value_buffer(v49, qword_281446410);
  v69 = sub_2657F2334();
  v50 = sub_2657F2574();
  if (os_log_type_enabled(v69, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2657B5000, v69, v50, "Exhausted retry attempts; will not try again", v51, 2u);
    MEMORY[0x266760A30](v51, -1, -1);
  }

  v52 = v69;
}

void sub_2657F186C()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 48) + 16));
  if (*(v0 + 40))
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v2 = sub_2657F2344();
    __swift_project_value_buffer(v2, qword_281446410);
    v3 = sub_2657F2334();
    v4 = sub_2657F2584();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2657B5000, v3, v4, "Cancelling retry timer", v5, 2u);
      MEMORY[0x266760A30](v5, -1, -1);
    }

    if (*(v1 + 40))
    {
      v6 = *(v1 + 40);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_2657F2624();
      swift_unknownObjectRelease();
      v7 = *(v1 + 40);
    }

    *(v1 + 40) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t CustomizableRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = xmmword_2657F3400;
  return v0;
}

void *CustomizableRetryTimer.__allocating_init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v4[6] = v5;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a1;
  return v4;
}

uint64_t sub_2657F1AB0(uint64_t a1, uint64_t (*a2)(BOOL))
{
  v4 = *(*(a1 + 48) + 16);

  os_unfair_lock_lock(v4);
  sub_2657F1B4C(a1, &v6);
  os_unfair_lock_unlock(v4);

  return a2(v6);
}

void sub_2657F1B4C(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
    __break(1u);
  }

  else if (qword_281446408 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v6 = sub_2657F2344();
  __swift_project_value_buffer(v6, qword_281446410);
  v7 = sub_2657F2334();
  v8 = sub_2657F2584();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v5;
    _os_log_impl(&dword_2657B5000, v7, v8, "Retry timer fired (attempt #%{public}ld)", v9, 0xCu);
    MEMORY[0x266760A30](v9, -1, -1);
  }

  sub_2657F186C();
  *a2 = v4 == 0;
}

uint64_t CustomizableRetryTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_2657F1DC4()
{
  result = qword_280023C38;
  if (!qword_280023C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280023C38);
  }

  return result;
}

unint64_t sub_2657F1E10()
{
  result = qword_280023C40;
  if (!qword_280023C40)
  {
    sub_2657F25F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023C40);
  }

  return result;
}

unint64_t sub_2657F1E68()
{
  result = qword_280023C50;
  if (!qword_280023C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280023C48, &unk_2657F5370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023C50);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2657F1EF0()
{
  MEMORY[0x266760A30](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2657F1F54()
{
  v0 = sub_2657F22E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2657F2344();
  __swift_allocate_value_buffer(v5, qword_281446410);
  __swift_project_value_buffer(v5, qword_281446410);
  (*(v1 + 104))(v4, *MEMORY[0x277CB96A8], v0);
  return sub_2657F2324();
}

uint64_t static Logger.syncEngine.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v2 = sub_2657F2344();
  v3 = __swift_project_value_buffer(v2, qword_281446410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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