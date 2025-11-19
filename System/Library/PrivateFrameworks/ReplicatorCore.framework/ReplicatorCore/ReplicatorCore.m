void sub_2304318E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_230431958(id a1, _BYTE *a2)
{
  v2 = a1;
  if (a2[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_isXPCServerEnabled] != 1)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v21 = sub_2304A5B74();
    __swift_project_value_buffer(v21, qword_28149B008);
    v22 = sub_2304A5B54();
    v23 = sub_2304A5E94();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_13;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Replicator is disabled";
    goto LABEL_12;
  }

  v4 = [a1 remoteToken];
  v5 = sub_2304A5D14();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = [v2 remoteToken];
    v8 = [v7 pid];

    v9 = objc_allocWithZone(_s14ReplicatorCore6ClientCMa_0());
    v10 = a2;
    v2 = v2;
    v11 = sub_230431E38(v2, v8, v10, v9);

    v12 = *&v10[OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock];
    v14 = MEMORY[0x28223BE20](v13);
    MEMORY[0x28223BE20](v14);

    os_unfair_lock_lock(v12 + 4);
    sub_230431F78(v15);
    os_unfair_lock_unlock(v12 + 4);

    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v10;
    *(v16 + 32) = v11;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_230432510;
    *(v17 + 24) = v16;
    aBlock[4] = sub_2304324E0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23043248C;
    aBlock[3] = &block_descriptor_4;
    v18 = _Block_copy(aBlock);
    v19 = v10;
    v20 = v11;

    [v2 configure_];
    _Block_release(v18);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      [v2 activate];

      return;
    }

    __break(1u);
  }

  else if (qword_281499E38 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v26 = sub_2304A5B74();
  __swift_project_value_buffer(v26, qword_28149B008);
  v22 = sub_2304A5B54();
  v23 = sub_2304A5E74();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Remote process is not entitled";
LABEL_12:
    _os_log_impl(&dword_230430000, v22, v23, v25, v24, 2u);
    MEMORY[0x23191A000](v24, -1, -1);
  }

LABEL_13:

  [v2 invalidate];
}

uint64_t sub_230431DC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_230431E38(void *a1, int a2, uint64_t a3, char *a4)
{
  v7 = OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&a4[v7] = v8;
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_delegate + 8] = 0;
  v9 = swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_lock_descriptors] = MEMORY[0x277D84FA0];
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_connection] = a1;
  *&a4[OBJC_IVAR____TtC14ReplicatorCoreP33_586791E780FEDC6114754B28ABA431B16Client_pid] = a2;
  *(v9 + 8) = &off_28451C338;
  swift_unknownObjectWeakAssign();
  v12.receiver = a4;
  v12.super_class = _s14ReplicatorCore6ClientCMa_0();
  v10 = a1;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_230431F50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_230431FB0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_23043202C(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

uint64_t sub_23043202C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2304A6054();

    if (v9)
    {

      _s14ReplicatorCore6ClientCMa_0();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2304A6044();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_23045A6B0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_23046BFE4(v22 + 1, &qword_27DB541A0, &unk_2304A7558);
    }

    v20 = v8;
    sub_230464EC4();

    *v3 = v21;
    goto LABEL_16;
  }

  _s14ReplicatorCore6ClientCMa_0();
  v11 = *(v6 + 40);
  v12 = sub_2304A5F64();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_230432278(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27DB541A0, &unk_2304A7558, _s14ReplicatorCore6ClientCMa_0);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2304A5F74();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_230432278(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_23046BFE4(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_23046D154(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_23046DC98(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_2304A5F64();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_2304A5F74();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2304A6304();
  __break(1u);
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
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

uint64_t sub_23043248C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_2304324E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_230432544(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2304A4C04();
  v7 = sub_2304A5D14();

  v22 = sub_230432908;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2304328BC;
  v21 = &block_descriptor_65;
  v8 = _Block_copy(&aBlock);
  v9 = [objc_opt_self() interfaceWithIdentifier:v7 configurator:v8];

  _Block_release(v8);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    aBlock = 0;
    v19 = 0xE000000000000000;
    sub_2304A6104();

    aBlock = 0xD000000000000018;
    v19 = 0x80000002304A9130;
    v10 = sub_2304A62D4();
    MEMORY[0x2319192E0](v10);

    v11 = *(a3 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_queue);
    v12 = sub_2304A5D14();

    v13 = [objc_opt_self() queueWithName:v12 targetQueue:v11];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a4;
    v22 = sub_23048A32C;
    v23 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_2304318E8;
    v21 = &block_descriptor_74;
    v16 = _Block_copy(&aBlock);
    v17 = a4;

    [a1 setInvalidationHandler_];
    _Block_release(v16);
  }
}

uint64_t sub_230432840()
{
  MEMORY[0x23191A070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230432878()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2304328BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_230432908(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

void sub_230432B9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock);
    v5 = MEMORY[0x28223BE20](Strong);
    MEMORY[0x28223BE20](v5);

    os_unfair_lock_lock(v2 + 4);
    sub_230432D54(&v6);
    os_unfair_lock_unlock(v2 + 4);
    if (v0)
    {
      __break(1u);
    }

    else
    {

      sub_2304A4C24();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = sub_2304A4104();
    sub_2304332D4(&qword_27DB545C8, MEMORY[0x277D462F8]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277D462E0], v3);
    swift_willThrow();
  }
}

void *sub_230432D54@<X0>(void *a1@<X8>)
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

uint64_t sub_230432DB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v5 = *(*(v63 - 8) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v62 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = v52 - v9;
  MEMORY[0x28223BE20](v8);
  v60 = v52 - v10;
  v71 = sub_2304A4F74();
  v11 = *(v71 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v71);
  v15 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_lock_devices);
  if (!v16)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
LABEL_23:
    *a2 = v18;
    return result;
  }

  v52[0] = a2;
  v52[1] = v2;
  v72 = MEMORY[0x277D84F90];

  sub_23045FAE4(0, v17, 0);
  v18 = v72;
  v19 = -1 << *(v16 + 32);
  v70 = v16 + 64;
  result = sub_2304A5FB4();
  v20 = result;
  v21 = 0;
  v57 = v11 + 32;
  v58 = v11 + 16;
  v53 = v16 + 72;
  v54 = v17;
  v59 = v15;
  v55 = v11;
  v56 = v16;
  while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v16 + 32))
  {
    if ((*(v70 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_25;
    }

    v66 = 1 << v20;
    v67 = v20 >> 6;
    v24 = *(v16 + 36);
    v64 = v21;
    v65 = v24;
    v25 = v63;
    v26 = *(v63 + 48);
    v27 = *(v16 + 48);
    v28 = sub_2304A4084();
    v29 = *(v28 - 8);
    v30 = v29;
    v31 = v27 + *(v29 + 72) * v20;
    v32 = *(v29 + 16);
    v69 = v18;
    v33 = v60;
    v32(v60, v31, v28);
    v34 = *(v16 + 56);
    v68 = *(v11 + 72);
    v35 = v71;
    (*(v11 + 16))(&v33[v26], v34 + v68 * v20, v71);
    v36 = v61;
    (*(v30 + 32))(v61, v33, v28);
    v37 = *(v11 + 32);
    v38 = &v33[v26];
    v18 = v69;
    v37(v36 + *(v25 + 48), v38, v35);
    v39 = v62;
    sub_230464ABC(v36, v62, &unk_27DB54640, &qword_2304A73F8);
    v40 = *(v25 + 48);
    v41 = v59;
    v37(v59, (v39 + v40), v35);
    (*(v30 + 8))(v39, v28);
    v72 = v18;
    v43 = *(v18 + 16);
    v42 = *(v18 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_23045FAE4(v42 > 1, v43 + 1, 1);
      v18 = v72;
    }

    *(v18 + 16) = v43 + 1;
    v44 = v55;
    result = (v37)(v18 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + v43 * v68, v41, v71);
    v16 = v56;
    v22 = 1 << *(v56 + 32);
    if (v20 >= v22)
    {
      goto LABEL_26;
    }

    v45 = *(v70 + 8 * v67);
    if ((v45 & v66) == 0)
    {
      goto LABEL_27;
    }

    if (v65 != *(v56 + 36))
    {
      goto LABEL_28;
    }

    v11 = v44;
    v46 = v45 & (-2 << (v20 & 0x3F));
    if (v46)
    {
      v22 = __clz(__rbit64(v46)) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v64;
    }

    else
    {
      v47 = v67 << 6;
      v48 = v67 + 1;
      v49 = (v53 + 8 * v67);
      while (v48 < (v22 + 63) >> 6)
      {
        v51 = *v49++;
        v50 = v51;
        v47 += 64;
        ++v48;
        if (v51)
        {
          result = sub_230433B44(v20, v65, 0);
          v22 = __clz(__rbit64(v50)) + v47;
          goto LABEL_20;
        }
      }

      result = sub_230433B44(v20, v65, 0);
LABEL_20:
      v23 = v64;
    }

    v21 = v23 + 1;
    v20 = v22;
    if (v21 == v54)
    {

      a2 = v52[0];
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2304332D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23043331C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_23043339C(int a1)
{
  v2 = sub_2304A5CA4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + 16);
    *v6 = v9;
    v10 = *MEMORY[0x277D85200];
    v11 = v3[13];
    v11(v6, v10, v2);
    v12 = v9;
    LOBYTE(v9) = sub_2304A5CB4();
    v13 = v3[1];
    result = v13(v6, v2);
    if (v9)
    {
      if (a1)
      {
      }

      v14 = *(v8 + 16);
      *v6 = v14;
      v11(v6, v10, v2);
      v15 = v14;
      LOBYTE(v14) = sub_2304A5CB4();
      result = v13(v6, v2);
      if (v14)
      {
        *(v8 + 40) = 1;
        v16 = *(v8 + 32);
        v17[7] = 1;
        sub_2304A5BA4();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_230433558()
{
  v1 = *(*v0 + 16);
  sub_2304A5EE4();
  return v3;
}

uint64_t sub_2304335C0(uint64_t a1)
{
  v3 = sub_2304A4434();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A44F4();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v36 - v13;
  v15 = sub_2304A46C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2304A4AB4();
  v20 = sub_2304A5D94();

  if (v20)
  {
    v21 = 1;
    return v21 & 1;
  }

  v37 = v19;
  v22 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 56);
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  v36[1] = a1;
  sub_2304A4AD4();
  v38 = v15;
  sub_2304A48D4();
  v23 = v38;

  if ((*(v16 + 48))(v14, 1, v23) == 1)
  {
    sub_230464970(v14, &unk_27DB53F00, &unk_2304A7B70);
LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  v24 = v16;
  v25 = *(v16 + 32);
  v26 = v37;
  v25(v37, v14, v23);
  sub_2304A4674();
  sub_2304A4494();
  (*(v39 + 8))(v10, v40);
  v27 = sub_2304A4414();
  (*(v41 + 8))(v6, v42);
  if (v27 != 7)
  {
    (*(v24 + 8))(v26, v23);
    goto LABEL_13;
  }

  v29 = sub_2304A4AB4();
  v30 = v28;
  if (v29 == 0x7463617265746E69 && v28 == 0xEB000000006E6F69 || (sub_2304A62F4() & 1) != 0)
  {
    v31 = *(v24 + 8);
    v32 = v37;
LABEL_10:
    v31(v32, v38);
LABEL_11:

    v21 = 1;
    return v21 & 1;
  }

  v34 = v37;
  if (v29 == 0x7265766F63736964 && v30 == 0xE900000000000079 || (sub_2304A62F4() & 1) != 0)
  {
    v31 = *(v24 + 8);
    v32 = v34;
    goto LABEL_10;
  }

  v35 = v38;
  if (v29 == 7037793 && v30 == 0xE300000000000000 || (sub_2304A62F4() & 1) != 0)
  {
    (*(v24 + 8))(v37, v35);
    goto LABEL_11;
  }

  if (v29 == 0x73656E656C617473 && v30 == 0xEA00000000007373)
  {

    (*(v24 + 8))(v37, v35);
    v21 = 1;
  }

  else
  {
    v21 = sub_2304A62F4();

    (*(v24 + 8))(v37, v35);
  }

  return v21 & 1;
}

void *__swift_project_boxed_opaque_existential_5Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_230433B44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_230433B50()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230433B88()
{
  v1 = sub_2304A57B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_230433C4C()
{
  v1 = sub_2304A46C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2304A5124();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_230433DAC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_230433DC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_230433E14()
{
  MEMORY[0x23191A070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230433E4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_230433E8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230433EC4()
{
  MEMORY[0x23191A070](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230433F24()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_230433F5C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_230433FC4()
{
  v1 = sub_2304A3FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23043404C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230434084()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2304340BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2304340F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230434140()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_230434188(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2304A4114();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_230434234(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2304A4114();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_230434328()
{
  v1 = *v0;
  sub_2304A6394();
  MEMORY[0x231919910](v1);
  return sub_2304A63B4();
}

uint64_t sub_23043439C()
{
  v1 = *v0;
  sub_2304A6394();
  MEMORY[0x231919910](v1);
  return sub_2304A63B4();
}

void sub_2304343F0(id a1, _BYTE *a2)
{
  v2 = a1;
  if (a2[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_isEnabled] != 1)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v20 = sub_2304A5B74();
    __swift_project_value_buffer(v20, qword_28149B008);
    v21 = sub_2304A5B54();
    v22 = sub_2304A5E94();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_13;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Replicator is disabled";
    goto LABEL_12;
  }

  v4 = [a1 remoteToken];
  v5 = sub_2304A5D14();
  v6 = [v4 hasEntitlement_];

  if (v6)
  {
    v7 = [v2 remoteToken];
    v8 = [v7 pid];

    v9 = objc_allocWithZone(type metadata accessor for Client());
    v10 = a2;
    v2 = v2;
    v11 = sub_230460650(v2, v8, v10, v9);

    v12 = *&v10[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock];
    v14 = MEMORY[0x28223BE20](v13);
    MEMORY[0x28223BE20](v14);

    os_unfair_lock_lock(v12 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v12 + 4);

    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = v10;
    *(v15 + 32) = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_230464BF0;
    *(v16 + 24) = v15;
    aBlock[4] = sub_2304324E0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23043248C;
    aBlock[3] = &block_descriptor;
    v17 = _Block_copy(aBlock);
    v18 = v10;
    v19 = v11;

    [v2 configure_];
    _Block_release(v17);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      [v2 activate];

      return;
    }

    __break(1u);
  }

  else if (qword_281499E38 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v25 = sub_2304A5B74();
  __swift_project_value_buffer(v25, qword_28149B008);
  v21 = sub_2304A5B54();
  v22 = sub_2304A5E74();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Client is missing the data provider entitlement";
LABEL_12:
    _os_log_impl(&dword_230430000, v21, v22, v24, v23, 2u);
    MEMORY[0x23191A000](v23, -1, -1);
  }

LABEL_13:

  [v2 invalidate];
}

void sub_23043485C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  sub_23046AB70(&v4, a2);
  v3 = v4;
  swift_endAccess();
}

void sub_2304348D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2304A5554();
  v7 = sub_2304A5D14();

  v22 = sub_230434DE8;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_2304328BC;
  v21 = &block_descriptor_100;
  v8 = _Block_copy(&aBlock);
  v9 = [objc_opt_self() interfaceWithIdentifier:v7 configurator:v8];

  _Block_release(v8);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    aBlock = 0;
    v19 = 0xE000000000000000;
    sub_2304A6104();

    aBlock = 0xD000000000000012;
    v19 = 0x80000002304A83E0;
    v10 = sub_2304A62D4();
    MEMORY[0x2319192E0](v10);

    v11 = *(a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_queue);
    v12 = sub_2304A5D14();

    v13 = [objc_opt_self() queueWithName:v12 targetQueue:v11];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a4;
    v22 = sub_230464BFC;
    v23 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_2304318E8;
    v21 = &block_descriptor_109;
    v16 = _Block_copy(&aBlock);
    v17 = a4;

    [a1 setInvalidationHandler_];
    _Block_release(v16);
  }
}

void sub_230434BD4(void *a1)
{
  v7[4] = sub_230434D1C;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_230434D94;
  v7[3] = &block_descriptor_113;
  v2 = _Block_copy(v7);
  v3 = &unk_284521300;

  v4 = objc_opt_self();
  v5 = [v4 protocolForProtocol:v3 interpreter:v2];
  _Block_release(v2);

  [a1 setClient_];
  v6 = [v4 protocolForProtocol_];
  [a1 setServer_];
}

id sub_230434D1C(void *a1)
{
  [a1 selector];
  if (sub_2304A4094())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

id sub_230434D94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_230434DEC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v2 = sub_2304A5B74();
    __swift_project_value_buffer(v2, qword_28149B008);
    v3 = sub_2304A5B54();
    v4 = sub_2304A5E94();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_230430000, v3, v4, "Connection invalidated", v5, 2u);
      MEMORY[0x23191A000](v5, -1, -1);
    }

    v6 = *&v1[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock];
    v8 = MEMORY[0x28223BE20](v7);
    MEMORY[0x28223BE20](v8);

    os_unfair_lock_lock(v6 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v6 + 4);
  }

  return result;
}

void sub_230434F98(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_23045AF30(a2, type metadata accessor for Client, sub_23046CE58, sub_23045B0CC);
  swift_endAccess();
}

void sub_230435048()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v5 = 0;
    v2 = *(Strong + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

    os_unfair_lock_lock(v2 + 4);
    sub_23044A3E0(v1, &v5);
    os_unfair_lock_unlock(v2 + 4);

    if (v5)
    {
      v3 = *&v1[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 32];
      __swift_project_boxed_opaque_existential_5Tm(&v1[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster], *&v1[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 24]);
      v4 = sub_2304A5144();
      (*(v3 + 8))(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_230435144()
{
  v146 = sub_2304A51C4();
  v147 = *(v146 - 8);
  v0 = *(v147 + 64);
  MEMORY[0x28223BE20](v146 - 8);
  v145 = &v142 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2304A5294();
  v165 = *(v2 - 8);
  v166 = v2;
  v3 = *(v165 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v160 = (&v142 - v8);
  MEMORY[0x28223BE20](v7);
  v163 = &v142 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54188, &qword_2304A7540);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v155 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v158 = (&v142 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v156 = &v142 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v149 = (&v142 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v152 = &v142 - v21;
  MEMORY[0x28223BE20](v20);
  v153 = (&v142 - v22);
  sub_230460740();
  v154 = v6;
  v159 = v32;

  while (1)
  {
    v33 = *(v161 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 32);
    __swift_project_boxed_opaque_existential_5Tm((v161 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(v161 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
    v34 = sub_2304A5484();
    v144 = 0;
    v35 = v155;
    v36 = v159;
    v37 = v153;
    if (v159)
    {
      v164 = v34;
      v38 = 0;
      v39 = *(v159 + 64);
      v148 = (v159 + 64);
      v40 = 1 << *(v159 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v42 = v41 & v39;
      v162 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_predefinedClientDescriptorIDs;
      v43 = (v40 + 63) >> 6;
      v151 = v165 + 16;
      v150 = (v165 + 32);
      v157 = (v165 + 8);
      v44 = v152;
      if ((v41 & v39) == 0)
      {
LABEL_11:
        if (v43 <= v38 + 1)
        {
          v46 = v38 + 1;
        }

        else
        {
          v46 = v43;
        }

        v47 = v46 - 1;
        while (1)
        {
          v45 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_89;
          }

          if (v45 >= v43)
          {
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
            (*(*(v63 - 8) + 56))(v44, 1, 1, v63);
            v42 = 0;
            goto LABEL_19;
          }

          v42 = v148[v45];
          ++v38;
          if (v42)
          {
            goto LABEL_18;
          }
        }
      }

      while (1)
      {
        v45 = v38;
LABEL_18:
        v48 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v49 = v48 | (v45 << 6);
        v50 = (*(v159 + 48) + 16 * v49);
        v52 = *v50;
        v51 = v50[1];
        v53 = v165;
        v54 = v166;
        v55 = v163;
        (*(v165 + 16))(v163, *(v159 + 56) + *(v165 + 72) * v49, v166);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
        v57 = *(v56 + 48);
        v58 = v152;
        *v152 = v52;
        *(v58 + 1) = v51;
        v44 = v58;
        (*(v53 + 32))(&v58[v57], v55, v54);
        (*(*(v56 - 8) + 56))(v44, 0, 1, v56);

        v47 = v45;
        v37 = v153;
LABEL_19:
        sub_230464ABC(v44, v37, &qword_27DB54188, &qword_2304A7540);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
        if ((*(*(v59 - 8) + 48))(v37, 1, v59) == 1)
        {
          break;
        }

        v60 = *v37;
        v61 = *(v37 + 8);
        v62 = *(v59 + 48);
        v6 = v44;
        swift_beginAccess();
        sub_23046ADBC(&v168, v60, v61);
        swift_endAccess();

        (*v157)((v37 + v62), v166);
        v38 = v47;
        if (!v42)
        {
          goto LABEL_11;
        }
      }

      v36 = v159;

      v6 = v154;
      v35 = v155;
      v34 = v164;
    }

    if (v34)
    {
      v164 = v34;
      if (v36)
      {
        break;
      }

      goto LABEL_57;
    }

    v164 = sub_230461054(MEMORY[0x277D84F90]);
    if (v36)
    {
      break;
    }

LABEL_57:
    v106 = *(v161 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
    __swift_project_boxed_opaque_existential_5Tm((v161 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v161 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
    v37 = v144;
    v107 = sub_2304A5404();
    if (v37)
    {

      v108 = 0;
      v37 = 0;
    }

    else
    {
      v108 = v107;
    }

    v109 = 0;
    v110 = (v164 + 64);
    v111 = 1 << *(v164 + 32);
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v113 = v112 & *(v164 + 64);
    v143 = (v161 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
    v152 = ((v111 + 63) >> 6);
    v153 = (v165 + 16);
    v162 = (v165 + 32);
    v151 = v147 + 16;
    v150 = (v147 + 8);
    v156 = (v165 + 8);
    v157 = (v164 + 64);
    v159 = v108;
    while (v113)
    {
      v160 = v37;
      v114 = v109;
LABEL_75:
      v117 = __clz(__rbit64(v113));
      v113 &= v113 - 1;
      v118 = v117 | (v114 << 6);
      v119 = v165;
      v120 = (*(v164 + 48) + 16 * v118);
      v122 = *v120;
      v121 = v120[1];
      v123 = v163;
      v124 = v166;
      (*(v165 + 16))(v163, *(v164 + 56) + *(v165 + 72) * v118, v166);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
      v126 = *(v125 + 48);
      v127 = v155;
      *v155 = v122;
      *(v127 + 1) = v121;
      v128 = v123;
      v35 = v127;
      (*(v119 + 32))(&v127[v126], v128, v124);
      (*(*(v125 - 8) + 56))(v35, 0, 1, v125);

      v6 = v154;
      v108 = v159;
      v37 = v160;
LABEL_76:
      v129 = v158;
      sub_230464ABC(v35, v158, &qword_27DB54188, &qword_2304A7540);
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
      if ((*(*(v130 - 8) + 48))(v129, 1, v130) == 1)
      {
      }

      v131 = v129;
      v132 = *v129;
      v133 = v131[1];
      (*v162)(v6, v131 + *(v130 + 48), v166);
      if (v108 && *(v108 + 16) && (, v134 = sub_230469C40(v132, v133), v136 = v135, , (v136 & 1) != 0))
      {
        v137 = *(v108 + 56) + *(v147 + 72) * v134;
        v138 = v145;
        v139 = v146;
        (*(v147 + 16))(v145, v137, v146);

        if ((sub_2304A5164() & 1) == 0)
        {
          (*v150)(v138, v139);
          v108 = v159;
          v110 = v157;
          goto LABEL_64;
        }

        v149 = v143[3];
        v160 = v143[8];
        v148 = __swift_project_boxed_opaque_existential_5Tm(v143, v149);
        v144 = sub_2304A51B4();
        sub_2304A5184();
        sub_2304A4254();

        (*v150)(v138, v139);
        v108 = v159;
      }

      else
      {
      }

      sub_2304396D0(v6, 0);
      v110 = v157;
      if (v37)
      {

        v37 = 0;
      }

LABEL_64:
      (*v156)(v6, v166);
    }

    if (v152 <= v109 + 1)
    {
      v115 = (v109 + 1);
    }

    else
    {
      v115 = v152;
    }

    v116 = v115 - 1;
    while (1)
    {
      v114 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      if (v114 >= v152)
      {
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
        (*(*(v140 - 8) + 56))(v35, 1, 1, v140);
        v113 = 0;
        v109 = v116;
        goto LABEL_76;
      }

      v113 = v110[v114];
      ++v109;
      if (v113)
      {
        v160 = v37;
        v109 = v114;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    swift_once();
    v23 = sub_2304A5B74();
    __swift_project_value_buffer(v23, qword_28149B008);
    v24 = v37;
    v25 = sub_2304A5B54();
    v26 = sub_2304A5E74();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v37;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_230430000, v25, v26, "Failed to load predefined descriptors: %{public}@", v27, 0xCu);
      sub_230464970(v28, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v28, -1, -1);
      v31 = v27;
      v6 = v154;
      MEMORY[0x23191A000](v31, -1, -1);
    }

    else
    {
    }

    v159 = 0;
  }

  v64 = 0;
  v65 = *(v36 + 64);
  v152 = (v36 + 64);
  v66 = 1 << *(v36 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & v65;
  v151 = (v66 + 63) >> 6;
  v157 = (v165 + 16);
  v162 = (v165 + 32);
  v153 = (v165 + 40);
  v69 = v149;
  while (2)
  {
    if (v68)
    {
      v37 = v64;
LABEL_42:
      v72 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
      v73 = v72 | (v37 << 6);
      v74 = (*(v159 + 48) + 16 * v73);
      v76 = *v74;
      v75 = v74[1];
      v78 = v165;
      v77 = v166;
      v79 = v163;
      (*(v165 + 16))(v163, *(v159 + 56) + *(v165 + 72) * v73, v166);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
      v81 = *(v80 + 48);
      v82 = v156;
      *v156 = v76;
      *(v82 + 1) = v75;
      (*(v78 + 32))(&v82[v81], v79, v77);
      (*(*(v80 - 8) + 56))(v82, 0, 1, v80);

      v71 = v37;
      v83 = v82;
      v69 = v149;
    }

    else
    {
      if (v151 <= v64 + 1)
      {
        v70 = v64 + 1;
      }

      else
      {
        v70 = v151;
      }

      v71 = v70 - 1;
      while (1)
      {
        v37 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          goto LABEL_90;
        }

        if (v37 >= v151)
        {
          break;
        }

        v68 = *&v152[8 * v37];
        v64 = (v64 + 1);
        if (v68)
        {
          goto LABEL_42;
        }
      }

      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
      v105 = v156;
      (*(*(v104 - 8) + 56))(v156, 1, 1, v104);
      v83 = v105;
      v68 = 0;
    }

    sub_230464ABC(v83, v69, &qword_27DB54188, &qword_2304A7540);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
    if ((*(*(v84 - 8) + 48))(v69, 1, v84) == 1)
    {

      v6 = v154;
      v35 = v155;
      goto LABEL_57;
    }

    v85 = v71;
    v86 = *v69;
    v37 = v69[1];
    v87 = *v162;
    v6 = v69;
    (*v162)(v160, v69 + *(v84 + 48), v166);
    v88 = v164;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = v88;
    v91 = sub_230469C40(v86, v37);
    v92 = *(v88 + 16);
    v93 = (v90 & 1) == 0;
    v94 = v92 + v93;
    if (__OFADD__(v92, v93))
    {
      goto LABEL_91;
    }

    v95 = v90;
    if (*(v88 + 24) >= v94)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v90 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_31;
      }

      sub_230471050();
      if (v95)
      {
        goto LABEL_31;
      }

LABEL_51:
      v98 = v166;
      v99 = v167;
      v167[(v91 >> 6) + 8] |= 1 << v91;
      v100 = (v99[6] + 16 * v91);
      *v100 = v86;
      v100[1] = v37;
      v87((v99[7] + *(v165 + 72) * v91), v160, v98);
      v101 = v99[2];
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (v102)
      {
        goto LABEL_92;
      }

      v164 = v99;
      v99[2] = v103;
LABEL_32:
      v64 = v85;
      v69 = v6;
      continue;
    }

    break;
  }

  sub_23046E1C0(v94, isUniquelyReferenced_nonNull_native);
  v96 = sub_230469C40(v86, v37);
  if ((v95 & 1) == (v97 & 1))
  {
    v91 = v96;
    if ((v95 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_31:

    v164 = v167;
    (*(v165 + 40))(v167[7] + *(v165 + 72) * v91, v160, v166);
    goto LABEL_32;
  }

  result = sub_2304A6314();
  __break(1u);
  return result;
}

void sub_23043645C(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_clients;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v31 = a2;
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_2304A6004();
    type metadata accessor for Client();
    sub_230464B8C(&qword_27DB53F28, type metadata accessor for Client);
    sub_2304A5E24();
    v7 = v33;
    v8 = v34;
    v9 = v35;
    v10 = v36;
    v11 = v37;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    v7 = v6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (!v11)
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v16 = *(v8 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    swift_once();
    v23 = sub_2304A5B74();
    __swift_project_value_buffer(v23, qword_28149B008);
    v24 = v17;
    v25 = sub_2304A5B54();
    v26 = sub_2304A5E74();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = v17;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_230430000, v25, v26, "Failed to notify client of record changes: %{public}@", v27, 0xCu);
      sub_230464970(v28, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v28, -1, -1);
      MEMORY[0x23191A000](v27, -1, -1);
    }

    else
    {
    }

    v22 = 0;
    goto LABEL_21;
  }

LABEL_12:
  v18 = (v16 - 1) & v16;
  v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
  if (!v19)
  {
LABEL_20:
    sub_230433B3C();

    v22 = 0;
    a2 = v31;
LABEL_21:
    *a2 = v22;
    return;
  }

  while (1)
  {
    a2 = v7;
    v20 = *&v19[OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock];
    v32 = MEMORY[0x28223BE20](v19);
    MEMORY[0x28223BE20](v32);
    os_unfair_lock_lock(v20 + 4);
    sub_230464E24(&v38);
    v21 = v20 + 4;
    if (v2)
    {
      break;
    }

    os_unfair_lock_unlock(v21);
    if (v38)
    {
      sub_230433B3C();

      sub_230453294();

      v22 = 1;
      a2 = v31;
      goto LABEL_21;
    }

    v10 = v17;
    v11 = v18;
    v7 = a2;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (sub_2304A6074())
    {
      type metadata accessor for Client();
      swift_dynamicCast();
      v19 = v38;
      v17 = v10;
      v18 = v11;
      if (v38)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  os_unfair_lock_unlock(v21);
  __break(1u);
}

uint64_t sub_230436904(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_2304A61A4() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a3 + 32);
    v6 = ~v9;
    v5 = a3 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a3 + 64);
    v8 = a3;
  }

  v13 = 0;
  v26 = v8;
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v14 = sub_2304A6234();
  if (!v14)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v28 = v14;
  sub_2304A4984();
  swift_dynamicCast();
  v17 = v27[0];
  v28 = v16;
  type metadata accessor for ClientDataSource();
  swift_dynamicCast();
  v18 = v27[0];
  v19 = v13;
  if (v17)
  {
    while (1)
    {
      v27[0] = v17;
      v27[1] = v18;
      v24 = a1(v27);
      if (v4)
      {

        sub_230433B3C();
        return v17;
      }

      if (v24)
      {
        sub_230433B3C();
        return v17;
      }

      v13 = v19;
      v8 = v26;
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v20 = v13;
      v21 = v7;
      v19 = v13;
      if (!v7)
      {
        break;
      }

LABEL_15:
      v7 = (v21 - 1) & v21;
      v22 = (v19 << 9) | (8 * __clz(__rbit64(v21)));
      v23 = *(v8 + 56);
      v17 = *(*(v8 + 48) + v22);
      v18 = *(v23 + v22);

      if (!v17)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v19 >= ((v6 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v21 = *(v5 + 8 * v19);
      ++v20;
      if (v21)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_230433B3C();
    return 0;
  }

  return result;
}

uint64_t sub_230436B74@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_2304A5294();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_230436E34@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v35 = a2;
  v36 = a1;
  v33 = a4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54640, &qword_2304A73F8);
  v32 = *(v37 - 8);
  v7 = *(v32 + 64);
  v8 = MEMORY[0x28223BE20](v37);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v38 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v10;
      v39 = v5;
      v20 = v18;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = v38;
      v23 = *(v38 + 48);
      v24 = sub_2304A4084();
      v25 = v34;
      (*(*(v24 - 8) + 16))(v34, v23 + *(*(v24 - 8) + 72) * v21, v24);
      v26 = *(v22 + 56);
      v27 = sub_2304A4F74();
      (*(*(v27 - 8) + 16))(v25 + *(v37 + 48), v26 + *(*(v27 - 8) + 72) * v21, v27);
      v10 = v19;
      sub_230464ABC(v25, v19, &unk_27DB54640, &qword_2304A73F8);
      v28 = v39;
      v29 = v36(v19);
      v5 = v28;
      if (v28)
      {
        sub_230464970(v19, &unk_27DB54640, &qword_2304A73F8);
      }

      if (v29)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_230464970(v19, &unk_27DB54640, &qword_2304A73F8);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v30 = v33;
    sub_230464ABC(v10, v33, &unk_27DB54640, &qword_2304A73F8);
    return (*(v32 + 56))(v30, 0, 1, v37);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return (*(v32 + 56))(v33, 1, 1, v37);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v19 = v10;
        v39 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_230437148(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2304A6044())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231919680](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_23043725C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_2304A46C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

void sub_230437458(uint64_t a1)
{
  v3 = sub_2304A4B14();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v68 = &v61 - v8;
  MEMORY[0x28223BE20](v7);
  v67 = &v61 - v9;
  v10 = sub_2304A4084();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2304A5124();
  v61 = *(v66 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x28223BE20](v66);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v61 - v17;
  v19 = sub_2304A46C4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1;
  v24 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 56);
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  sub_2304A4AD4();
  v25 = v19;
  v26 = v20;
  sub_2304A48D4();

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_230464970(v18, &unk_27DB53F00, &unk_2304A7B70);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v27 = sub_2304A5B74();
    __swift_project_value_buffer(v27, qword_28149B008);
    v28 = v71;
    v29 = v72;
    v30 = *(v71 + 16);
    v31 = v67;
    v30(v67, a1, v72);
    v32 = v68;
    v30(v68, a1, v29);
    v33 = sub_2304A5B54();
    v34 = sub_2304A5E74();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v73 = v70;
      *v35 = 136446466;
      v36 = sub_2304A4AD4();
      LODWORD(v66) = v34;
      v37 = v36;
      v39 = v38;
      v40 = *(v28 + 8);
      v40(v31, v29);
      v41 = sub_23046A5C8(v37, v39, &v73);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2082;
      v42 = v69;
      sub_2304A4AF4();
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0]);
      v43 = v32;
      v44 = v65;
      v45 = sub_2304A62D4();
      v47 = v46;
      (*(v64 + 8))(v42, v44);
      v40(v43, v29);
      v48 = sub_23046A5C8(v45, v47, &v73);

      *(v35 + 14) = v48;
      _os_log_impl(&dword_230430000, v33, v66, "Received message from device without a relationship: %{public}s; %{public}s", v35, 0x16u);
      v49 = v70;
      swift_arrayDestroy();
      MEMORY[0x23191A000](v49, -1, -1);
      MEMORY[0x23191A000](v35, -1, -1);
    }

    else
    {

      v54 = *(v28 + 8);
      v54(v32, v29);
      v54(v31, v29);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    sub_2304A4144();
    v50 = sub_2304A4AA4();
    v52 = v51;
    sub_2304A4AE4();
    sub_230464B8C(&qword_27DB53F10, MEMORY[0x277D46800]);
    v53 = v66;
    sub_2304A4124();
    sub_2304617C4(v50, v52);
    sub_2304A4684();
    v55 = v70;
    v56 = sub_2304A50D4();
    v57 = *(v62 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v58 = MEMORY[0x28223BE20](v56);
    *(&v61 - 2) = v59;
    *(&v61 - 1) = v55;
    MEMORY[0x28223BE20](v58);
    *(&v61 - 2) = sub_230461818;
    *(&v61 - 1) = v60;

    os_unfair_lock_lock(v57 + 4);
    sub_230431F50();
    os_unfair_lock_unlock(v57 + 4);
    (*(v26 + 8))(v23, v25);

    (*(v61 + 8))(v55, v53);
  }
}

void sub_230437DF0(uint64_t a1)
{
  v3 = sub_2304A4B14();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v64 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F20, &qword_2304A7388);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = v57 - v10;
  v69 = sub_2304A4084();
  v67 = *(v69 - 8);
  v11 = *(v67 + 64);
  v12 = MEMORY[0x28223BE20](v69);
  v57[1] = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = v57 - v14;
  v15 = sub_2304A5124();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x28223BE20](v15);
  v59 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB53F00, &unk_2304A7B70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v57 - v20;
  v22 = sub_2304A46C4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1;
  v27 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 56);
  __swift_project_boxed_opaque_existential_5Tm((v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
  v28 = a1;
  sub_2304A4AD4();
  sub_2304A48D4();

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v29 = v68;
    v30 = v69;
    sub_230464970(v21, &unk_27DB53F00, &unk_2304A7B70);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v31 = sub_2304A5B74();
    __swift_project_value_buffer(v31, qword_28149B008);
    v33 = v65;
    v32 = v66;
    v34 = *(v65 + 16);
    v35 = v63;
    v34(v63, a1, v66);
    v36 = v64;
    v34(v64, v28, v32);
    v37 = sub_2304A5B54();
    v38 = sub_2304A5E74();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v36;
      v40 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v40 = 136446466;
      v41 = sub_2304A4AD4();
      LODWORD(v61) = v38;
      v42 = v41;
      v44 = v43;
      v45 = *(v33 + 8);
      v45(v35, v32);
      v46 = sub_23046A5C8(v42, v44, &v70);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2082;
      sub_2304A4AF4();
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0]);
      v47 = sub_2304A62D4();
      v49 = v48;
      (*(v67 + 8))(v29, v30);
      v45(v39, v32);
      v50 = sub_23046A5C8(v47, v49, &v70);

      *(v40 + 14) = v50;
      _os_log_impl(&dword_230430000, v37, v61, "Received chronod message from device without a relationship: %{public}s; %{public}s", v40, 0x16u);
      v51 = v62;
      swift_arrayDestroy();
      MEMORY[0x23191A000](v51, -1, -1);
      MEMORY[0x23191A000](v40, -1, -1);
    }

    else
    {

      v56 = *(v33 + 8);
      v56(v36, v32);
      v56(v35, v32);
    }
  }

  else
  {
    (*(v23 + 32))(v26, v21, v22);
    sub_2304A4AF4();
    sub_2304A4684();
    v66 = sub_2304A4AB4();
    sub_2304A4AA4();
    (*(v67 + 56))(v58, 1, 1, v69);
    v52 = v59;
    v53 = sub_2304A50F4();
    v54 = *(v62 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
    v55 = MEMORY[0x28223BE20](v53);
    MEMORY[0x28223BE20](v55);

    os_unfair_lock_lock(v54 + 4);
    sub_230464ECC();
    os_unfair_lock_unlock(v54 + 4);
    (*(v23 + 8))(v26, v22);

    (*(v60 + 8))(v52, v61);
  }
}

void sub_2304385A4(NSObject *a1, uint64_t a2)
{
  v4 = sub_2304A4084();
  v160 = *(v4 - 8);
  v161 = v4;
  v5 = *(v160 + 64);
  MEMORY[0x28223BE20](v4);
  v159 = v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A5124();
  v163 = *(v7 - 8);
  v164 = v7;
  v8 = *(v163 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v147 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v162 = v147 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v158 = (v147 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v147 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v151 = v147 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v150 = v147 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v148 = v147 - v27;
  MEMORY[0x28223BE20](v26);
  v149 = v147 - v28;
  v29 = sub_2304A4BE4();
  v152 = *(v29 - 8);
  v30 = *(v152 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2304A52C4();
  v156 = *(v157 - 8);
  isa = v156[8].isa;
  MEMORY[0x28223BE20](v157);
  v155 = v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v153 = a1;
  v36 = *(&a1->isa + v35);
  v166 = a2;

  v37 = sub_230436904(sub_230461834, v165, v36);
  v39 = v38;

  if (v37)
  {

    sub_230461854(v37);
    v40 = OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
    v154 = v39;
    v41 = sub_2304A5254();
    v42 = sub_2304A5094();
    if (*(v41 + 16))
    {
      v147[1] = v40;
      v44 = sub_230469C40(v42, v43);
      v46 = v45;

      if (v46)
      {
        (v156[2].isa)(v155, *(v41 + 56) + v156[9].isa * v44, v157);

        sub_2304A52B4();
        sub_2304A50B4();
        v47 = sub_2304A4BA4();
        (*(v152 + 8))(v32, v29);
        v48 = v163;
        if (v47)
        {
          v49 = sub_2304A5114();
          v51 = v50;
          v52 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages;
          v53 = v153;
          swift_beginAccess();
          v54 = *(&v53->isa + v52);
          v55 = v164;
          if (*(v54 + 16) && (, v56 = sub_230469C40(v49, v51), v58 = v57, , (v58 & 1) != 0))
          {
            v59 = *(*(v54 + 56) + 8 * v56);
          }

          else
          {

            v59 = MEMORY[0x277D84F90];
          }

          v136 = v149;
          (*(v48 + 16))(v149, a2, v55);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_23045A0B8(0, v59[2] + 1, 1, v59, &qword_27DB53F18, &qword_2304A7380, MEMORY[0x277D46800]);
          }

          v138 = v59[2];
          v137 = v59[3];
          if (v138 >= v137 >> 1)
          {
            v59 = sub_23045A0B8(v137 > 1, v138 + 1, 1, v59, &qword_27DB53F18, &qword_2304A7380, MEMORY[0x277D46800]);
          }

          v59[2] = v138 + 1;
          (*(v48 + 32))(v59 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v138, v136, v55);
          v139 = sub_2304A5114();
          v141 = v140;
          v142 = v153;
          swift_beginAccess();
          v143 = *(&v142->isa + v52);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v168 = *(&v142->isa + v52);
          *(&v142->isa + v52) = 0x8000000000000000;
          sub_23045BCA0(v59, v139, v141, isUniquelyReferenced_nonNull_native);

          *(&v142->isa + v52) = v168;
          swift_endAccess();
          v145 = *(&v142[4].isa + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster);
          __swift_project_boxed_opaque_existential_5Tm((&v142->isa + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster), *(&v142[3].isa + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster));
          v146 = sub_2304A5274();
          (*(v145 + 8))(v146);
        }

        else
        {
          v110 = v164;
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v111 = sub_2304A5B74();
          __swift_project_value_buffer(v111, qword_28149B008);
          v112 = *(v48 + 16);
          v113 = v148;
          v112(v148, a2, v110);
          v114 = v150;
          v112(v150, a2, v110);
          v115 = v151;
          v112(v151, a2, v110);
          v116 = sub_2304A5B54();
          v117 = sub_2304A5E74();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v167[0] = v162;
            *v118 = 136446722;
            v119 = v159;
            LODWORD(v158) = v117;
            sub_2304A50E4();
            sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0]);
            v120 = v161;
            v121 = sub_2304A62D4();
            v153 = v116;
            v122 = v114;
            v124 = v123;
            (*(v160 + 8))(v119, v120);
            v125 = *(v48 + 8);
            v125(v113, v110);
            v126 = sub_23046A5C8(v121, v124, v167);

            *(v118 + 4) = v126;
            *(v118 + 12) = 2050;
            v127 = sub_2304A50B4();
            v125(v122, v110);
            *(v118 + 14) = v127;
            *(v118 + 22) = 2082;
            v128 = v151;
            v129 = sub_2304A5114();
            v131 = v130;
            v125(v128, v110);
            v132 = sub_23046A5C8(v129, v131, v167);

            *(v118 + 24) = v132;
            v133 = v153;
            _os_log_impl(&dword_230430000, v153, v158, "Received message %{public}s with unsupported protocol version %{public}llu for client ID %{public}s", v118, 0x20u);
            v134 = v162;
            swift_arrayDestroy();
            MEMORY[0x23191A000](v134, -1, -1);
            MEMORY[0x23191A000](v118, -1, -1);
          }

          else
          {
            v135 = *(v48 + 8);
            v135(v114, v110);

            v135(v115, v110);
            v135(v113, v110);
          }
        }

        (v156[1].isa)(v155, v157);
        return;
      }
    }

    else
    {
    }

    v81 = v163;
    v80 = v164;
    v82 = v162;
    v83 = v158;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v84 = sub_2304A5B74();
    __swift_project_value_buffer(v84, qword_28149B008);
    v85 = *(v81 + 16);
    v85(v21, a2, v80);
    v85(v83, a2, v80);
    v85(v82, a2, v80);
    v86 = sub_2304A5B54();
    v87 = sub_2304A5E74();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v167[0] = v163;
      *v88 = 136446722;
      v89 = v159;
      LODWORD(v157) = v87;
      sub_2304A50E4();
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0]);
      v90 = v161;
      v91 = sub_2304A62D4();
      v156 = v86;
      v92 = v80;
      v94 = v93;
      (*(v160 + 8))(v89, v90);
      v95 = *(v81 + 8);
      v95(v21, v92);
      v96 = sub_23046A5C8(v91, v94, v167);

      *(v88 + 4) = v96;
      *(v88 + 12) = 2082;
      v97 = sub_2304A5094();
      v99 = v98;
      v95(v83, v92);
      v100 = sub_23046A5C8(v97, v99, v167);

      *(v88 + 14) = v100;
      *(v88 + 22) = 2082;
      v101 = v162;
      v102 = sub_2304A5114();
      v104 = v103;
      v95(v101, v92);
      v105 = sub_23046A5C8(v102, v104, v167);

      *(v88 + 24) = v105;
      v106 = v156;
      _os_log_impl(&dword_230430000, v156, v157, "Received message %{public}s with unknown message type %{public}s for client ID %{public}s", v88, 0x20u);
      v107 = v163;
      swift_arrayDestroy();
      MEMORY[0x23191A000](v107, -1, -1);
      MEMORY[0x23191A000](v88, -1, -1);
    }

    else
    {

      v108 = *(v81 + 8);
      v108(v82, v80);
      v108(v83, v80);
      v108(v21, v80);
    }
  }

  else
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v60 = sub_2304A5B74();
    __swift_project_value_buffer(v60, qword_28149B008);
    v61 = v163;
    v62 = v164;
    v63 = *(v163 + 16);
    v63(v14, a2, v164);
    v63(v11, a2, v62);
    v64 = sub_2304A5B54();
    v65 = sub_2304A5E74();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v162 = swift_slowAlloc();
      v167[0] = v162;
      *v66 = 136446466;
      v158 = v64;
      v67 = v159;
      LODWORD(v157) = v65;
      sub_2304A50E4();
      sub_230464B8C(&qword_27DB54610, MEMORY[0x277CC95F0]);
      v68 = v161;
      v69 = sub_2304A62D4();
      v71 = v70;
      (*(v160 + 8))(v67, v68);
      v72 = *(v61 + 8);
      v72(v14, v62);
      v73 = sub_23046A5C8(v69, v71, v167);

      *(v66 + 4) = v73;
      *(v66 + 12) = 2082;
      v74 = sub_2304A5114();
      v76 = v75;
      v72(v11, v62);
      v77 = sub_23046A5C8(v74, v76, v167);

      *(v66 + 14) = v77;
      v78 = v158;
      _os_log_impl(&dword_230430000, v158, v157, "Received message %{public}s with no local data source for client ID %{public}s", v66, 0x16u);
      v79 = v162;
      swift_arrayDestroy();
      MEMORY[0x23191A000](v79, -1, -1);
      MEMORY[0x23191A000](v66, -1, -1);
    }

    else
    {

      v109 = *(v61 + 8);
      v109(v11, v62);
      v109(v14, v62);
    }
  }
}

uint64_t sub_23043961C(uint64_t a1)
{
  v1 = *(a1 + 8) + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor;
  v2 = sub_2304A5284();
  v4 = v3;
  if (v2 == sub_2304A5114() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2304A62F4();
  }

  return v7 & 1;
}

uint64_t sub_2304396D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v5 = sub_2304A5294();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v10 = sub_2304A5B74();
  v11 = __swift_project_value_buffer(v10, qword_28149B008);
  (*(v6 + 16))(v9, a1, v5);
  v38 = v11;
  v12 = sub_2304A5B54();
  v13 = sub_2304A5E94();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v3;
    v16 = v15;
    v42[0] = v15;
    *v14 = 136446210;
    v17 = sub_2304A5284();
    v36 = a1;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = sub_23046A5C8(v17, v19, v42);
    a1 = v36;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_230430000, v12, v13, "Registering client: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    v21 = v16;
    v3 = v37;
    MEMORY[0x23191A000](v21, -1, -1);
    MEMORY[0x23191A000](v14, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v42[0] = sub_2304A5284();
  v42[1] = v22;
  v40 = 14906;
  v41 = 0xE200000000000000;
  sub_2304645C4();
  v23 = sub_2304A5F84();

  if ((v23 & 1) == 0)
  {
    v24 = *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_allowedClientVerifier + 32);
    __swift_project_boxed_opaque_existential_5Tm((v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_allowedClientVerifier), *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_allowedClientVerifier + 24));
    v25 = sub_2304A5284();
    v26 = (*(v24 + 8))(v25);

    if (v26)
    {
      v28 = *(v3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
      v29 = MEMORY[0x28223BE20](v27);
      *(&v36 - 4) = v3;
      *(&v36 - 3) = a1;
      *(&v36 - 2) = v39;
      MEMORY[0x28223BE20](v29);
      *(&v36 - 2) = sub_230464724;
      *(&v36 - 1) = v30;

      os_unfair_lock_lock(v28 + 4);
      sub_230464ECC();
      os_unfair_lock_unlock(v28 + 4);
    }

    v32 = sub_2304A5B54();
    v33 = sub_2304A5E74();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_230430000, v32, v33, "Client is not in the allow-list", v34, 2u);
      MEMORY[0x23191A000](v34, -1, -1);
    }
  }

  sub_230464618();
  swift_allocError();
  *v35 = 0;
  return swift_willThrow();
}

void sub_230439B14(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = v3;
  v341 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540A0, &qword_2304A7490);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v321 = &v300 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v319 = &v300 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v320 = &v300 - v14;
  MEMORY[0x28223BE20](v13);
  v322 = &v300 - v15;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
  v16 = *(*(v325 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v325);
  v323 = &v300 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v324 = &v300 - v19;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
  v20 = *(*(v347 - 1) + 64);
  v21 = MEMORY[0x28223BE20](v347);
  v344 = &v300 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v343 = (&v300 - v24);
  MEMORY[0x28223BE20](v23);
  v346 = &v300 - v25;
  v345 = sub_2304A5224();
  v348 = *(v345 - 8);
  v26 = v348[8];
  v27 = MEMORY[0x28223BE20](v345);
  v338 = &v300 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v339 = &v300 - v29;
  v331 = sub_2304A51C4();
  v332 = *(v331 - 8);
  v30 = *(v332 + 64);
  v31 = MEMORY[0x28223BE20](v331);
  v329 = (&v300 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v326 = &v300 - v34;
  MEMORY[0x28223BE20](v33);
  v327 = &v300 - v35;
  v336 = sub_2304A53C4();
  v335 = *(v336 - 8);
  v36 = *(v335 + 64);
  MEMORY[0x28223BE20](v336);
  v337 = &v300 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v349 = sub_2304A5294();
  v342 = *(v349 - 1);
  v38 = *(v342 + 64);
  v39 = MEMORY[0x28223BE20](v349);
  v333 = &v300 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v330 = &v300 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v328 = (&v300 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v340 = &v300 - v46;
  MEMORY[0x28223BE20](v45);
  v334 = &v300 - v47;
  v48 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v49 = *(v48 + a1);
  v356 = a2;

  v50 = sub_23043C618(sub_230464744, v355, v49);
  v51 = sub_23043CC94(v50);

  v52 = sub_230473CA0(v51);

  v53 = sub_2304A5244();
  v354 = a2;
  v54 = sub_23043CF14(sub_230464764, v353, v53);

  v55 = sub_230473CA0(v54);

  v56 = sub_23043E37C(v52, v55);

  v57 = sub_23043E37C(v55, v52);

  v58 = sub_23045D958(v55, v52);
  v351 = a1;
  v352 = a2;

  v59 = sub_23045DC04(sub_230464784, v350, v58);
  if (v4)
  {

LABEL_40:

    return;
  }

  v314 = v56;
  v316 = v48;
  v308 = 0;
  v315 = v57;
  v311 = v55;
  v317 = v59;
  v312 = v52;
  v313 = v58;
  v318 = a2;
  v60 = a1;
  v61 = v342;
  v62 = a2;
  if (!v341)
  {
    goto LABEL_37;
  }

  v63 = v341;
  sub_2304A5234();
  v303 = v63;
  v309 = *(v63 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection);
  v64 = [v309 remoteToken];
  v65 = sub_2304A5D14();

  v66 = [v64 hasEntitlement_];

  if (v66)
  {
    v310 = v60;
    v67 = v61;
    if ((v317 & 0xC000000000000001) != 0)
    {

      sub_2304A6004();
      v65 = sub_2304A4984();
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
      sub_2304A5E24();
      v69 = v357[8];
      v68 = v357[9];
      v71 = v357[10];
      v70 = v357[11];
      v72 = v357[12];
    }

    else
    {
      v85 = -1 << *(v317 + 32);
      v68 = v317 + 56;
      v71 = ~v85;
      v86 = -v85;
      if (v86 < 64)
      {
        v87 = ~(-1 << v86);
      }

      else
      {
        v87 = -1;
      }

      v72 = (v87 & *(v317 + 56));
      v70 = 0;
    }

    v88 = v334;
    v300 = v71;
    v89 = (v71 + 64) >> 6;
    v307 = (v67 + 16);
    v304 = (v67 + 32);
    v306 = (v67 + 8);
    v305 = v68;
    if (v69 < 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    v90 = v70;
    v91 = v72;
    v92 = v70;
    if (!v72)
    {
      while (1)
      {
        v92 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          break;
        }

        if (v92 >= v89)
        {
          goto LABEL_36;
        }

        v91 = *(v68 + 8 * v92);
        ++v90;
        if (v91)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_126:

      v282 = v309[4];
      __swift_project_boxed_opaque_existential_5Tm(v309, v309[3]);
      v283 = sub_2304A5404();
      v308 = v65;
      if (v65)
      {

        return;
      }

      v284 = sub_2304A5284();
      if (*(v283 + 16))
      {
        v286 = sub_230469C40(v284, v285);
        v288 = v287;

        v289 = v332;
        if (v288)
        {
          (*(v332 + 16))(v322, *(v283 + 56) + *(v332 + 72) * v286, v331);

          v290 = 0;
        }

        else
        {

          v290 = 1;
        }

        v291 = v320;
LABEL_144:
        v292 = v322;
        v293 = v331;
        v347 = *(v289 + 56);
        v347(v322, v290, 1, v331);
        sub_230464B24(v292, v291, &qword_27DB540A0, &qword_2304A7490);
        v294 = *(v289 + 48);
        v332 = v289 + 48;
        v349 = v294;
        v295 = v294(v291, 1, v293);
        v296 = v291;
        v297 = v295;
        sub_230464970(v296, &qword_27DB540A0, &qword_2304A7490);
        if (v297 == 1)
        {
          sub_2304A5284();
          v298 = v319;
          sub_2304A51A4();
          v347(v298, 0, 1, v293);
          sub_2304647C4(v298, v292);
        }

        else
        {
          if (v349(v292, 1, v293) == 1)
          {
LABEL_157:
            __break(1u);
            return;
          }

          sub_2304A5174();
        }

        sub_230464834(v309, v357);
        __swift_project_boxed_opaque_existential_5Tm(v357, v357[3]);
        v299 = v321;
        sub_230464B24(v292, v321, &qword_27DB540A0, &qword_2304A7490);
        if (v349(v299, 1, v331) != 1)
        {

          sub_2304A5434();
          v306(v299, v331);
          __swift_destroy_boxed_opaque_existential_0Tm(v357);
          sub_230464970(v292, &qword_27DB540A0, &qword_2304A7490);
          return;
        }

LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

LABEL_141:

      v290 = 1;
      v291 = v320;
      v289 = v332;
      goto LABEL_144;
    }

LABEL_22:
    v93 = ((v91 - 1) & v91);
    v94 = *(*(v69 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v91)))));

    while (v94)
    {
      v341 = v93;
      v301 = v70;
      v96 = *(v316 + v310);
      v302 = v72;
      if ((v96 & 0xC000000000000001) != 0)
      {

        v97 = sub_2304A6224();

        if (!v97)
        {
          goto LABEL_45;
        }

        v358 = v97;
        type metadata accessor for ClientDataSource();
        swift_dynamicCast();
        v98 = v357[0];
      }

      else
      {
        if (!*(v96 + 16))
        {
          goto LABEL_46;
        }

        v99 = sub_230469CB8(v94);
        if ((v100 & 1) == 0)
        {
LABEL_45:

LABEL_46:

          if (qword_281499E38 != -1)
          {
LABEL_151:
            swift_once();
          }

          v122 = sub_2304A5B74();
          __swift_project_value_buffer(v122, qword_28149B008);
          v123 = v330;
          v124 = v349;
          (*v307)(v330, v318, v349);
          v125 = sub_2304A5B54();
          v126 = sub_2304A5E74();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v357[0] = v128;
            *v127 = 136446210;
            v129 = sub_2304A5284();
            v130 = v123;
            v132 = v131;
            (*v306)(v130, v124);
            v133 = sub_23046A5C8(v129, v132, v357);

            *(v127 + 4) = v133;
            _os_log_impl(&dword_230430000, v125, v126, "Data integrity problem found while trying to validate existing client entitlements: %{public}s", v127, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v128);
            MEMORY[0x23191A000](v128, -1, -1);
            MEMORY[0x23191A000](v127, -1, -1);
          }

          else
          {

            (*v306)(v123, v124);
          }

          (*(v335 + 104))(v337, *MEMORY[0x277D468D0], v336);
          sub_2304A53E4();
          sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
          swift_allocError();
          sub_2304A53D4();
          swift_willThrow();

          sub_230433B3C();
          return;
        }

        v98 = *(*(v96 + 56) + 8 * v99);
      }

      if (!v98)
      {
        goto LABEL_46;
      }

      v333 = v94;
      v101 = *v307;
      v102 = v340;
      v103 = v349;
      (*v307)(v340, v98 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_clientDescriptor, v349);

      (*v304)(v88, v102, v103);
      sub_2304A5234();
      v104 = [v309 remoteToken];
      v105 = sub_2304A5D14();

      v65 = [v104 hasEntitlement_];

      if (!v65)
      {

        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v134 = sub_2304A5B74();
        __swift_project_value_buffer(v134, qword_28149B008);
        v135 = v328;
        v136 = v349;
        v101(v328, v318, v349);
        v137 = sub_2304A5B54();
        v138 = sub_2304A5E74();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v348 = swift_slowAlloc();
          v357[0] = v348;
          *v139 = 136446210;
          v140 = sub_2304A5284();
          v141 = v135;
          v142 = v136;
          v144 = v143;
          v145 = *v306;
          (*v306)(v141, v142);
          v146 = sub_23046A5C8(v140, v144, v357);
          v136 = v142;

          *(v139 + 4) = v146;
          _os_log_impl(&dword_230430000, v137, v138, "Cannot replace an existing client without the existing entitlement: %{public}s", v139, 0xCu);
          v147 = v348;
          __swift_destroy_boxed_opaque_existential_0Tm(v348);
          MEMORY[0x23191A000](v147, -1, -1);
          MEMORY[0x23191A000](v139, -1, -1);
        }

        else
        {

          v190 = v135;
          v145 = *v306;
          (*v306)(v190, v136);
        }

        v191 = v334;
        (*(v335 + 104))(v337, *MEMORY[0x277D468C0], v336);
        sub_2304A53E4();
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();
        sub_230433B3C();

        v145(v191, v136);
        return;
      }

      (*v306)(v88, v103);

      v70 = v92;
      v72 = v341;
      v68 = v305;
      if ((v69 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      v95 = sub_2304A6074();
      if (!v95)
      {
        break;
      }

      v358 = v95;
      sub_2304A4984();
      swift_dynamicCast();
      v94 = v357[0];
      v92 = v70;
      v93 = v72;
    }

LABEL_36:
    sub_230433B3C();

    v62 = v318;
    v60 = v310;
LABEL_37:
    v106 = (v60 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore);
    v107 = *(v60 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 32);
    __swift_project_boxed_opaque_existential_5Tm((v60 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(v60 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
    v108 = v308;
    sub_2304A54A4();
    if (v108)
    {

      goto LABEL_40;
    }

    v316 = v106;
    v109 = (v60 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore);
    v110 = *(v60 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
    __swift_project_boxed_opaque_existential_5Tm((v60 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v60 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
    v111 = sub_2304A5404();
    v309 = v109;
    v112 = sub_2304A5284();
    if (*(v111 + 16))
    {
      v114 = sub_230469C40(v112, v113);
      v116 = v115;

      if (v116)
      {
        v117 = v332;
        v118 = *(v111 + 56) + *(v332 + 72) * v114;
        v119 = v326;
        v120 = v331;
        (*(v332 + 16))(v326, v118, v331);

        v121 = v327;
        (*(v117 + 32))(v327, v119, v120);
        if ((sub_2304A5164() & 1) == 0)
        {
          sub_2304A5194();
          sub_2304A5174();
        }

        goto LABEL_57;
      }
    }

    else
    {
    }

    sub_2304A5284();
    v121 = v329;
    sub_2304A51A4();
LABEL_57:
    v148 = v309[4];
    __swift_project_boxed_opaque_existential_5Tm(v309, v309[3]);
    sub_2304A5434();
    v310 = v60;
    v149 = *(v332 + 8);
    v307 = (v332 + 8);
    v306 = v149;
    v149(v121, v331);
    v150 = sub_2304A5244();
    MEMORY[0x28223BE20](v150);
    *(&v300 - 2) = v314;
    *(&v300 - 1) = v62;
    v151 = sub_23045CE40(sub_2304647A4, (&v300 - 4), v150, sub_23045F028, sub_23045F028);
    v308 = 0;

    v152 = *(v151 + 16);
    v153 = v347;
    v154 = v346;
    if (v152)
    {
      v357[0] = MEMORY[0x277D84F90];
      v330 = v151;
      sub_23045FA5C(0, v152, 0);
      v341 = v357[0];
      v155 = ~(-1 << v330[32]);
      v340 = v330 + 64;
      v156 = sub_2304A5FB4();
      v157 = v330;
      v158 = 0;
      v329 = v348 + 2;
      v328 = v348 + 4;
      v326 = v330 + 72;
      v327 = v152;
      while ((v156 & 0x8000000000000000) == 0 && v156 < 1 << v157[32])
      {
        v333 = v158;
        v337 = (v156 >> 6);
        v162 = *&v340[8 * (v156 >> 6)];
        v336 = 1 << v156;
        if ((v162 & (1 << v156)) == 0)
        {
          goto LABEL_132;
        }

        v334 = *(v157 + 9);
        v163 = *(v153 + 12);
        v164 = *(v157 + 7);
        v165 = (*(v157 + 6) + 16 * v156);
        v166 = v153;
        v168 = *v165;
        v167 = v165[1];
        v169 = v348;
        v335 = v348[9];
        v170 = v345;
        (v348[2])(&v154[v163], v164 + v335 * v156, v345);
        v171 = v154;
        v172 = v343;
        *v343 = v168;
        *(v172 + 8) = v167;
        v173 = v169[4];
        v173(v172 + *(v166 + 12), &v171[v163], v170);
        v174 = v344;
        sub_230464ABC(v172, v344, &qword_27DB54038, &qword_2304A7458);
        v175 = *(v174 + 8);

        v176 = v339;
        v173(v339, (v174 + *(v166 + 12)), v170);
        v177 = v341;
        v357[0] = v341;
        v179 = v341[2];
        v178 = v341[3];
        if (v179 >= v178 >> 1)
        {
          sub_23045FA5C(v178 > 1, v179 + 1, 1);
          v170 = v345;
          v177 = v357[0];
        }

        v177[2] = v179 + 1;
        v180 = (*(v169 + 80) + 32) & ~*(v169 + 80);
        v341 = v177;
        v173(v177 + v180 + v179 * v335, v176, v170);
        v157 = v330;
        v159 = 1 << v330[32];
        if (v156 >= v159)
        {
          goto LABEL_133;
        }

        v181 = *&v340[8 * v337];
        v153 = v347;
        v154 = v346;
        if ((v181 & v336) == 0)
        {
          goto LABEL_134;
        }

        if (v334 != *(v330 + 9))
        {
          goto LABEL_135;
        }

        v182 = v169;
        v183 = v181 & (-2 << (v156 & 0x3F));
        if (v183)
        {
          v159 = __clz(__rbit64(v183)) | v156 & 0x7FFFFFFFFFFFFFC0;
          v62 = v318;
          v160 = v327;
          v161 = v333;
        }

        else
        {
          v184 = v337 << 6;
          v185 = (v337 + 1);
          v186 = &v326[8 * v337];
          v62 = v318;
          v160 = v327;
          while (v185 < (v159 + 63) >> 6)
          {
            v188 = *v186++;
            v187 = v188;
            v184 += 64;
            ++v185;
            if (v188)
            {
              sub_230433B44(v156, v334, 0);
              v157 = v330;
              v159 = __clz(__rbit64(v187)) + v184;
              goto LABEL_75;
            }
          }

          sub_230433B44(v156, v334, 0);
          v157 = v330;
LABEL_75:
          v161 = v333;
        }

        v158 = v161 + 1;
        v156 = v159;
        if (v158 == v160)
        {

          v189 = v341;
          goto LABEL_80;
        }
      }

      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
    }

    else
    {

      v189 = MEMORY[0x277D84F90];
      v182 = v348;
LABEL_80:
      v192 = v62;
      v341 = v189;
      v193 = v62;
      v194 = v310;
      sub_23043ED1C(v192, v189);
      v195 = sub_2304A5244();
      MEMORY[0x28223BE20](v195);
      *(&v300 - 2) = v317;
      *(&v300 - 1) = v193;
      v196 = v308;
      v197 = sub_23045CE40(sub_230464EE4, (&v300 - 4), v195, sub_23045F028, sub_23045F028);
      v198 = v196;

      v199 = *(v197 + 16);
      v310 = v194;
      if (!v199)
      {
        v232 = v193;

        v233 = MEMORY[0x277D84F90];
LABEL_100:
        sub_23043F898(v232, v233);
        v234 = sub_23045FE98(v315);
        sub_230440248(v234);
        if (v198)
        {
        }

        else
        {
          v340 = v233;

          v235 = v316[4];
          __swift_project_boxed_opaque_existential_5Tm(v316, v316[3]);
          v236 = sub_2304A5484();
          v308 = 0;
          v237 = *(v236 + 64);
          v344 = v236 + 64;
          v238 = 1 << *(v236 + 32);
          v239 = -1;
          if (v238 < 64)
          {
            v239 = ~(-1 << v238);
          }

          v240 = v239 & v237;
          v343 = ((v238 + 63) >> 6);
          v347 = (v342 + 16);
          v346 = (v342 + 8);

          v242 = 0;
          v243 = MEMORY[0x277D84F90];
          v244 = v325;
          v245 = v324;
          v345 = v241;
          while (1)
          {
            v348 = v243;
            if (!v240)
            {
              break;
            }

LABEL_111:
            v247 = __clz(__rbit64(v240)) | (v242 << 6);
            v248 = (*(v236 + 48) + 16 * v247);
            v249 = *v248;
            v250 = v248[1];
            v251 = v342;
            v252 = *(v236 + 56) + *(v342 + 72) * v247;
            v253 = v244;
            v254 = v349;
            (*(v342 + 16))(&v245[*(v244 + 48)], v252, v349);
            *v245 = v249;
            *(v245 + 1) = v250;
            v255 = v323;
            sub_230464B24(v245, v323, &qword_27DB54080, &qword_2304A7478);
            v256 = *(v255 + 8);

            v257 = *(v253 + 48);
            v258 = sub_2304A5254();
            v259 = (*(v251 + 8))(v255 + v257, v254);
            MEMORY[0x28223BE20](v259);
            *(&v300 - 2) = v245;
            v260 = v308;
            v261 = sub_23043D2B8(sub_230464EAC, (&v300 - 4), v258);
            v308 = v260;

            sub_230464970(v245, &qword_27DB54080, &qword_2304A7478);
            v262 = *(v261 + 16);
            v243 = v348;
            v263 = v348[2];
            v264 = v263 + v262;
            if (__OFADD__(v263, v262))
            {
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
              goto LABEL_156;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v264 > (v243[3] >> 1))
            {
              if (v263 <= v264)
              {
                v266 = v263 + v262;
              }

              else
              {
                v266 = v263;
              }

              v243 = sub_23045A0B8(isUniquelyReferenced_nonNull_native, v266, 1, v243, &qword_27DB54088, &qword_2304A7480, MEMORY[0x277D46370]);
            }

            v240 &= v240 - 1;
            if (*(v261 + 16))
            {
              v267 = (v243[3] >> 1) - v243[2];
              v268 = *(sub_2304A41F4() - 8);
              if (v267 < v262)
              {
                goto LABEL_154;
              }

              v269 = (*(v268 + 80) + 32) & ~*(v268 + 80);
              v270 = *(v268 + 72);
              swift_arrayInitWithCopy();

              v244 = v325;
              v245 = v324;
              v236 = v345;
              if (v262)
              {
                v271 = v243[2];
                v272 = __OFADD__(v271, v262);
                v273 = v271 + v262;
                if (v272)
                {
                  goto LABEL_155;
                }

                v243[2] = v273;
              }
            }

            else
            {

              v244 = v325;
              v245 = v324;
              v236 = v345;
              if (v262)
              {
                goto LABEL_153;
              }
            }
          }

          while (1)
          {
            v246 = v242 + 1;
            if (__OFADD__(v242, 1))
            {
              __break(1u);
              goto LABEL_151;
            }

            if (v246 >= v343)
            {
              break;
            }

            v240 = *(v344 + 8 * v246);
            ++v242;
            if (v240)
            {
              v242 = v246;
              goto LABEL_111;
            }
          }

          v274 = (v310 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
          v275 = *(v310 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 40);
          __swift_project_boxed_opaque_existential_5Tm((v310 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v310 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
          sub_2304A4654();
          v276 = v274[8];
          __swift_project_boxed_opaque_existential_5Tm(v274, v274[3]);
          sub_2304A5284();
          v277 = sub_2304A4294();

          v278 = sub_230473CA0(v277);

          v279 = sub_23043E37C(v311, v278);
          v280 = sub_23045FE98(v279);
          v281 = v308;
          sub_230440248(v280);
          v65 = v281;
          if (!v281)
          {
            goto LABEL_126;
          }
        }

        goto LABEL_40;
      }

      v308 = v196;
      v357[0] = MEMORY[0x277D84F90];
      v327 = v199;
      sub_23045FA5C(0, v199, 0);
      v340 = v357[0];
      v200 = ~(-1 << *(v197 + 32));
      v339 = (v197 + 64);
      v201 = sub_2304A5FB4();
      v202 = 0;
      v330 = (v182 + 2);
      v329 = v182 + 4;
      v326 = (v197 + 72);
      v203 = v197;
      v328 = v197;
      while ((v201 & 0x8000000000000000) == 0 && v201 < 1 << *(v203 + 32))
      {
        v333 = v202;
        v337 = (v201 >> 6);
        v206 = *&v339[8 * (v201 >> 6)];
        v336 = 1 << v201;
        if ((v206 & (1 << v201)) == 0)
        {
          goto LABEL_137;
        }

        v334 = *(v203 + 36);
        v207 = *(v153 + 12);
        v208 = *(v203 + 56);
        v209 = (*(v203 + 48) + 16 * v201);
        v210 = v153;
        v212 = *v209;
        v211 = v209[1];
        v213 = v348;
        v335 = v348[9];
        v214 = v345;
        (v348[2])(&v154[v207], v208 + v335 * v201, v345);
        v215 = v154;
        v216 = v343;
        *v343 = v212;
        *(v216 + 8) = v211;
        v217 = v213[4];
        v217(v216 + *(v210 + 12), &v215[v207], v214);
        v218 = v344;
        sub_230464ABC(v216, v344, &qword_27DB54038, &qword_2304A7458);
        v219 = *(v218 + 8);

        v220 = v338;
        v217(v338, (v218 + *(v210 + 12)), v214);
        v221 = v340;
        v357[0] = v340;
        v223 = *(v340 + 2);
        v222 = *(v340 + 3);
        if (v223 >= v222 >> 1)
        {
          sub_23045FA5C(v222 > 1, v223 + 1, 1);
          v214 = v345;
          v221 = v357[0];
        }

        *(v221 + 16) = v223 + 1;
        v224 = (*(v213 + 80) + 32) & ~*(v213 + 80);
        v340 = v221;
        v217(v221 + v224 + v223 * v335, v220, v214);
        v203 = v328;
        v204 = 1 << *(v328 + 32);
        if (v201 >= v204)
        {
          goto LABEL_138;
        }

        v225 = *&v339[8 * v337];
        v153 = v347;
        v154 = v346;
        if ((v225 & v336) == 0)
        {
          goto LABEL_139;
        }

        if (v334 != *(v328 + 9))
        {
          goto LABEL_140;
        }

        v226 = v225 & (-2 << (v201 & 0x3F));
        if (v226)
        {
          v204 = __clz(__rbit64(v226)) | v201 & 0x7FFFFFFFFFFFFFC0;
          v205 = v318;
        }

        else
        {
          v227 = v337 << 6;
          v228 = (v337 + 1);
          v229 = &v326[8 * v337];
          v205 = v318;
          while (v228 < (v204 + 63) >> 6)
          {
            v231 = *v229++;
            v230 = v231;
            v227 += 64;
            ++v228;
            if (v231)
            {
              sub_230433B44(v201, v334, 0);
              v204 = __clz(__rbit64(v230)) + v227;
              goto LABEL_83;
            }
          }

          sub_230433B44(v201, v334, 0);
        }

LABEL_83:
        v202 = v333 + 1;
        v201 = v204;
        if (v333 + 1 == v327)
        {
          v232 = v205;

          v233 = v340;
          v198 = v308;
          goto LABEL_100;
        }
      }
    }

    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v73 = sub_2304A5B74();
  __swift_project_value_buffer(v73, qword_28149B008);
  v74 = v333;
  v75 = v349;
  (*(v61 + 16))(v333, v62, v349);
  v76 = sub_2304A5B54();
  v77 = sub_2304A5E74();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v357[0] = v79;
    *v78 = 136446210;
    v80 = sub_2304A5284();
    v81 = v61;
    v83 = v82;
    (*(v81 + 8))(v74, v75);
    v84 = sub_23046A5C8(v80, v83, v357);

    *(v78 + 4) = v84;
    _os_log_impl(&dword_230430000, v76, v77, "Cannot register a client without the specified entitlement: %{public}s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x23191A000](v79, -1, -1);
    MEMORY[0x23191A000](v78, -1, -1);
  }

  else
  {

    (*(v61 + 8))(v74, v75);
  }

  (*(v335 + 104))(v337, *MEMORY[0x277D468C0], v336);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();
}

uint64_t sub_23043C580(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_2304A4954();
  v4 = v3;
  if (v2 == sub_2304A5284() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2304A62F4();
  }

  return v7 & 1;
}

uint64_t sub_23043C618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x277D84F98];
    v32 = MEMORY[0x277D84F98];
    v7 = sub_2304A61A4();
    v8 = sub_2304A6234();
    if (v8)
    {
      v9 = v8;
      sub_2304A4984();
      v10 = v9;
      v6 = MEMORY[0x277D84F98];
      do
      {
        v30 = v10;
        swift_dynamicCast();
        type metadata accessor for ClientDataSource();
        swift_dynamicCast();
        v11 = v31;
        if (!v31)
        {
          break;
        }

        v12 = v30;

        v13 = v5(&v31, &v30);
        if (v3)
        {
          sub_230433B3C();

          return v6;
        }

        v14 = v13;

        if (v14)
        {
          v15 = v7;
          v16 = v5;
          v17 = v4;
          v18 = *(v6 + 16);
          if (*(v6 + 24) <= v18)
          {
            sub_23046E490(v18 + 1, 1);
          }

          v6 = v32;
          v31 = v11;
          v19 = *(v32 + 40);
          sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
          result = sub_2304A5CF4();
          v21 = v6 + 64;
          v22 = -1 << *(v6 + 32);
          v23 = result & ~v22;
          v24 = v23 >> 6;
          if (((-1 << v23) & ~*(v6 + 64 + 8 * (v23 >> 6))) != 0)
          {
            v25 = __clz(__rbit64((-1 << v23) & ~*(v6 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
            v4 = v17;
            v5 = v16;
            v7 = v15;
          }

          else
          {
            v26 = 0;
            v27 = (63 - v22) >> 6;
            v4 = v17;
            v5 = v16;
            v7 = v15;
            do
            {
              if (++v24 == v27 && (v26 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v28 = v24 == v27;
              if (v24 == v27)
              {
                v24 = 0;
              }

              v26 |= v28;
              v29 = *(v21 + 8 * v24);
            }

            while (v29 == -1);
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          }

          *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
          *(*(v6 + 48) + 8 * v25) = v11;
          *(*(v6 + 56) + 8 * v25) = v12;
          ++*(v6 + 16);
        }

        else
        {
        }

        v10 = sub_2304A6234();
      }

      while (v10);
    }

    sub_230433B3C();
  }

  else
  {
    v6 = sub_23045CE40(a1, a2, a3, sub_23045F29C, sub_23045F29C);
  }

  return v6;
}

uint64_t sub_23043C994(uint64_t a1)
{
  v1 = a1;
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2304A6044();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v27 = MEMORY[0x277D84F90];
    sub_2304A6154();
    v24 = sub_2304A6194();
    v25 = v4;
    v26 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v27 = MEMORY[0x277D84F90];
  sub_2304A6154();
  v5 = -1 << *(v1 + 32);
  v6 = sub_2304A5FB4();
  v7 = *(v1 + 36);
  v24 = v6;
  v25 = v7;
  v26 = 0;
LABEL_7:
  result = sub_2304A4984();
  v20 = v1;
  v8 = 0;
  v19 = v2;
  while (v8 < v2)
  {
    if (__OFADD__(v8, 1))
    {
      goto LABEL_20;
    }

    v15 = v25;
    v16 = v26;
    v22 = v24;
    sub_230460490(v23, v24, v25, v26, v1, type metadata accessor for ClientDataSource);
    sub_2304A5214();
    sub_2304A5284();
    sub_2304A4974();

    sub_2304A6134();
    v17 = *(v27 + 16);
    sub_2304A6164();
    sub_2304A6174();
    sub_2304A6144();
    if (v21)
    {
      result = v22;
      v1 = v20;
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_2304A61C4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v19;
      v14 = v8 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F60, &qword_2304A73C0);
      v18 = sub_2304A5CE4();
      sub_2304A6244();
      result = v18(v23, 0);
    }

    else
    {
      v9 = sub_23046020C(v22, v15, v16, v20);
      v11 = v10;
      v13 = v12;
      result = sub_230433B44(v22, v15, v16);
      v24 = v9;
      v25 = v11;
      v26 = v13 & 1;
      v1 = v20;
      v2 = v19;
      v14 = v8 + 1;
    }

    ++v8;
    if (v14 == v2)
    {
      sub_230433B44(v24, v25, v26);
      return v27;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23043CC94(uint64_t a1)
{
  v1 = a1;
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2304A6044();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x277D84F90];
    sub_2304A6154();
    result = sub_2304A6194();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  sub_2304A6154();
  v5 = -1 << *(v1 + 32);
  result = sub_2304A5FB4();
  v6 = *(v1 + 36);
  v23 = result;
  v24 = v6;
  v25 = 0;
LABEL_7:
  v7 = 0;
  v20 = v2;
  while (v7 < v2)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v14 = v23;
    v15 = v24;
    v16 = v25;
    sub_230460490(v22, v23, v24, v25, v1, type metadata accessor for ClientDataSource);
    v17 = v1;

    sub_2304A6134();
    v18 = *(v26 + 16);
    sub_2304A6164();
    sub_2304A6174();
    result = sub_2304A6144();
    if (v21)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_2304A61C4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F60, &qword_2304A73C0);
      v19 = sub_2304A5CE4();
      sub_2304A6244();
      result = v19(v22, 0);
    }

    else
    {
      v8 = sub_23046020C(v14, v15, v16, v1);
      v10 = v9;
      v12 = v11;
      result = sub_230433B44(v14, v15, v16);
      v23 = v8;
      v24 = v10;
      v25 = v12 & 1;
      v1 = v17;
      v2 = v20;
    }

    ++v7;
    if (v13 == v2)
    {
      sub_230433B44(v23, v24, v25);
      return v26;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23043CF14(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v45 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
  v6 = *(*(v43 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v43);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v42 = &v36 - v10;
  v11 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v52 = MEMORY[0x277D84F90];
    sub_2304A6154();
    v13 = a3 + 64;
    v14 = -1 << *(a3 + 32);
    v15 = sub_2304A5FB4();
    v16 = 0;
    v17 = *(a3 + 36);
    v37 = a3 + 72;
    v38 = v11;
    v40 = a3 + 64;
    v41 = v9;
    v39 = v17;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a3 + 32))
    {
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      if (v17 != *(a3 + 36))
      {
        goto LABEL_23;
      }

      v47 = 1 << v15;
      v48 = v15 >> 6;
      v46 = v16;
      v19 = v43;
      v20 = *(v43 + 48);
      v21 = *(a3 + 56);
      v22 = (*(a3 + 48) + 16 * v15);
      v23 = v22[1];
      v49 = *v22;
      v50 = v4;
      v24 = sub_2304A5224();
      v25 = *(v24 - 8);
      v26 = v21 + *(v25 + 72) * v15;
      v9 = v41;
      v27 = v42;
      (*(v25 + 16))(&v42[v20], v26, v24);
      *v9 = v49;
      v9[1] = v23;
      (*(v25 + 32))(v9 + *(v19 + 48), &v27[v20], v24);

      v28 = v50;
      v44(&v51, v9);
      if (v28)
      {
        goto LABEL_27;
      }

      v4 = 0;
      sub_230464970(v9, &qword_27DB54038, &qword_2304A7458);
      sub_2304A6134();
      v29 = *(v52 + 16);
      sub_2304A6164();
      sub_2304A6174();
      sub_2304A6144();
      v18 = 1 << *(a3 + 32);
      if (v15 >= v18)
      {
        goto LABEL_24;
      }

      v13 = v40;
      v30 = *(v40 + 8 * v48);
      if ((v30 & v47) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v17) = v39;
      if (v39 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v31 = v30 & (-2 << (v15 & 0x3F));
      if (v31)
      {
        v18 = __clz(__rbit64(v31)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v9 = (v48 << 6);
        v32 = v48 + 1;
        v33 = (v37 + 8 * v48);
        while (v32 < (v18 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v9 += 8;
          ++v32;
          if (v35)
          {
            sub_230433B44(v15, v39, 0);
            v18 = v9 + __clz(__rbit64(v34));
            goto LABEL_4;
          }
        }

        sub_230433B44(v15, v39, 0);
      }

LABEL_4:
      v16 = v46 + 1;
      v15 = v18;
      if (v46 + 1 == v38)
      {
        return v52;
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
LABEL_26:
    __break(1u);
LABEL_27:
    sub_230464970(v9, &qword_27DB54038, &qword_2304A7458);

    __break(1u);
  }

  return result;
}

uint64_t sub_23043D2B8(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v54 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54090, &qword_2304A7488);
  v4 = *(*(v52 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v52);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v51 = &v44 - v8;
  v50 = sub_2304A41F4();
  v9 = *(v50 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v50);
  v59 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v62 = MEMORY[0x277D84F90];
    sub_23045FAA0(0, v12, 0);
    v60 = v62;
    v14 = a3 + 64;
    v15 = -1 << *(a3 + 32);
    v16 = sub_2304A5FB4();
    v17 = 0;
    v18 = *(a3 + 36);
    v48 = v9 + 32;
    v49 = a3;
    v44 = a3 + 72;
    v45 = v12;
    v46 = v18;
    v47 = a3 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a3 + 32))
    {
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_25;
      }

      if (v18 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v56 = 1 << v16;
      v57 = v16 >> 6;
      v55 = v17;
      v21 = v9;
      v22 = v52;
      v23 = *(v52 + 48);
      v24 = v7;
      v25 = *(a3 + 56);
      v26 = (*(a3 + 48) + 16 * v16);
      v27 = v26[1];
      v58 = *v26;
      v28 = sub_2304A52C4();
      v29 = *(v28 - 8);
      v30 = v25 + *(v29 + 72) * v16;
      v7 = v24;
      v31 = v51;
      (*(v29 + 16))(&v51[v23], v30, v28);
      *v7 = v58;
      v7[1] = v27;
      (*(v29 + 32))(v7 + *(v22 + 48), &v31[v23], v28);

      v32 = v61;
      v53(v7);
      v61 = v32;
      if (v32)
      {
        goto LABEL_30;
      }

      sub_230464970(v7, &unk_27DB54090, &qword_2304A7488);
      v33 = v60;
      v62 = v60;
      v35 = *(v60 + 16);
      v34 = *(v60 + 24);
      v9 = v21;
      if (v35 >= v34 >> 1)
      {
        sub_23045FAA0(v34 > 1, v35 + 1, 1);
        v33 = v62;
      }

      *(v33 + 16) = v35 + 1;
      v36 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v60 = v33;
      (*(v21 + 32))(v33 + v36 + *(v21 + 72) * v35, v59, v50);
      a3 = v49;
      v19 = 1 << *(v49 + 32);
      if (v16 >= v19)
      {
        goto LABEL_27;
      }

      v14 = v47;
      v37 = *(v47 + 8 * v57);
      if ((v37 & v56) == 0)
      {
        goto LABEL_28;
      }

      LODWORD(v18) = v46;
      if (v46 != *(v49 + 36))
      {
        goto LABEL_29;
      }

      v38 = v37 & (-2 << (v16 & 0x3F));
      if (v38)
      {
        v19 = __clz(__rbit64(v38)) | v16 & 0x7FFFFFFFFFFFFFC0;
        v20 = v55;
      }

      else
      {
        v39 = v57 << 6;
        v40 = v57 + 1;
        v41 = (v44 + 8 * v57);
        while (v40 < (v19 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            sub_230433B44(v16, v46, 0);
            v19 = __clz(__rbit64(v42)) + v39;
            goto LABEL_21;
          }
        }

        sub_230433B44(v16, v46, 0);
LABEL_21:
        v20 = v55;
      }

      v17 = v20 + 1;
      v16 = v19;
      if (v17 == v45)
      {
        return v60;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_230464970(v7, &unk_27DB54090, &qword_2304A7488);

    __break(1u);
  }

  return result;
}

uint64_t sub_23043D750(uint64_t a1)
{
  v1 = a1;
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2304A6044();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_23045FA3C(0, v2 & ~(v2 >> 63), 0);
    v27 = v32;
    if (v26)
    {
      result = sub_2304A6194();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      result = sub_2304A5FB4();
      v4 = *(v1 + 36);
    }

    v29 = result;
    v30 = v4;
    v31 = v26 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v24 = v2;
      v25 = v1;
      while (v6 < v2)
      {
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v13 = v29;
        v14 = v30;
        v15 = v31;
        sub_230460490(v28, v29, v30, v31, v1, type metadata accessor for ClientDataSource);
        v16 = sub_2304A5234();
        v18 = v17;

        v19 = v27;
        v32 = v27;
        v21 = *(v27 + 16);
        v20 = *(v27 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_23045FA3C((v20 > 1), v21 + 1, 1);
          v19 = v32;
        }

        *(v19 + 16) = v21 + 1;
        v22 = v19 + 16 * v21;
        *(v22 + 32) = v16;
        *(v22 + 40) = v18;
        v27 = v19;
        if (v26)
        {
          v1 = v25;
          if (!v15)
          {
            goto LABEL_26;
          }

          if (sub_2304A61C4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v24;
          v12 = v6 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F60, &qword_2304A73C0);
          v23 = sub_2304A5CE4();
          sub_2304A6244();
          result = v23(v28, 0);
        }

        else
        {
          v1 = v25;
          v7 = sub_23046020C(v13, v14, v15, v25);
          v9 = v8;
          v11 = v10;
          result = sub_230433B44(v13, v14, v15);
          v29 = v7;
          v30 = v9;
          v31 = v11 & 1;
          v2 = v24;
          v12 = v6 + 1;
        }

        ++v6;
        if (v12 == v2)
        {
          sub_230433B44(v29, v30, v31);
          return v27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_23043DA28(uint64_t a1)
{
  v50 = sub_2304A4434();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v50);
  v49 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = v41 - v7;
  v8 = sub_2304A4BE4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2304A4E64();
  v51 = *(v46 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v46);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = sub_2304A6044();
  }

  else
  {
    v14 = *(a1 + 16);
  }

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v67 = MEMORY[0x277D84F90];
  sub_23045FB6C(0, v14 & ~(v14 >> 63), 0);
  v15 = v67;
  if (v52)
  {
    result = sub_2304A6194();
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    result = sub_2304A5FB4();
    v17 = *(a1 + 36);
  }

  v64 = result;
  v65 = v17;
  v66 = v52 != 0;
  if ((v14 & 0x8000000000000000) == 0)
  {
    v41[1] = v1;
    v19 = 0;
    v44 = (v3 + 8);
    v43 = v51 + 32;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v20 = a1;
    }

    v41[2] = v20;
    v45 = a1;
    v42 = v14;
    while (v19 < v14)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      v55 = v19 + 1;
      v56 = v19;
      v53 = v64;
      v54 = v65;
      v61 = v66;
      sub_230460490(v63, v64, v65, v66, a1, MEMORY[0x277D464D8]);
      v29 = sub_2304A4964();
      v59 = v30;
      v60 = v29;
      v31 = sub_2304A4954();
      v57 = v32;
      v58 = v31;
      v33 = v48;
      sub_2304A4944();
      sub_2304A4414();
      v62 = v15;
      v34 = v13;
      v35 = *v44;
      v36 = v50;
      (*v44)(v33, v50);
      v37 = v49;
      sub_2304A4944();
      sub_2304A4424();
      v35(v37, v36);
      v13 = v34;
      v15 = v62;
      sub_2304A4BB4();
      sub_2304A4E24();

      v67 = v15;
      v39 = *(v15 + 16);
      v38 = *(v15 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_23045FB6C(v38 > 1, v39 + 1, 1);
        v15 = v67;
      }

      *(v15 + 16) = v39 + 1;
      result = (*(v51 + 32))(v15 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39, v13, v46);
      if (v52)
      {
        a1 = v45;
        if (!v61)
        {
          goto LABEL_28;
        }

        if (sub_2304A61C4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54130, &qword_2304A74F8);
        v40 = sub_2304A5CE4();
        sub_2304A6244();
        result = v40(v63, 0);
      }

      else
      {
        v22 = v53;
        v21 = v54;
        v23 = v61;
        a1 = v45;
        v24 = sub_23046020C(v53, v54, v61, v45);
        v26 = v25;
        v28 = v27;
        result = sub_230433B44(v22, v21, v23);
        v64 = v24;
        v65 = v26;
        v66 = v28 & 1;
      }

      v19 = v56 + 1;
      v14 = v42;
      if (v55 == v42)
      {
        sub_230433B44(v64, v65, v66);
        return v15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_23043DF8C(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2304A6044();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_23045FA3C(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_2304A5FF4();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_2304A5FB4();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_23045FF48(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 description];
        v15 = sub_2304A5D24();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_23045FA3C((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_2304A6014())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F68, &qword_2304A73C8);
          v7 = sub_2304A5E14();
          sub_2304A6094();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_230433B44(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_230433B44(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_230433B44(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_23043E2F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2304A4984();
  v5 = *a1;
  v4 = a1[1];
  sub_2304A5284();
  v6 = sub_2304A4974();

  *a2 = v6;
  return result;
}

uint64_t sub_23043E37C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_2304A6044();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_23045CFD0(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_2304A6044() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_2304A6044();
  v2 = sub_23045A47C(v5, v6);
LABEL_10:

  return sub_23045D208(a1, v2);
}

uint64_t sub_23043E470(uint64_t *a1, uint64_t a2, char *a3)
{
  v71 = a3;
  v5 = sub_2304A53C4();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540C8, &qword_2304A74B0);
  v8 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB540D0, &qword_2304A74B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v66 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v73 = &v65 - v17;
  v18 = sub_2304A5224();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v65 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v28 = *a1;
  v29 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v30 = *(a2 + v29);

  v31 = sub_230496468(v28, v30);

  if (v31)
  {
    v69 = v10;
    v32 = *(v19 + 16);
    v32(v25, v31 + OBJC_IVAR____TtC14ReplicatorCore16ClientDataSource_zoneDescriptor, v18);

    v67 = *(v19 + 32);
    v68 = v19 + 32;
    v67(v27, v25, v18);
    v33 = sub_2304A5244();
    v34 = sub_2304A4964();
    v36 = *(v33 + 16);
    v71 = v27;
    if (v36)
    {
      v37 = sub_230469C40(v34, v35);
      v39 = v38;

      if (v39)
      {
        v40 = v73;
        v32(v73, *(v33 + 56) + *(v19 + 72) * v37, v18);

        v41 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v41 = 1;
    v40 = v73;
LABEL_12:
    v54 = *(v19 + 56);
    v54(v40, v41, 1, v18);
    v55 = v72;
    v32(v72, v71, v18);
    v54(v55, 0, 1, v18);
    v56 = v69;
    v57 = *(v70 + 48);
    sub_230464B24(v55, v69, &unk_27DB540D0, &qword_2304A74B8);
    sub_230464B24(v40, v56 + v57, &unk_27DB540D0, &qword_2304A74B8);
    v58 = *(v19 + 48);
    if (v58(v56, 1, v18) == 1)
    {
      sub_230464970(v55, &unk_27DB540D0, &qword_2304A74B8);
      sub_230464970(v40, &unk_27DB540D0, &qword_2304A74B8);
      (*(v19 + 8))(v71, v18);
      if (v58(v56 + v57, 1, v18) == 1)
      {
        sub_230464970(v56, &unk_27DB540D0, &qword_2304A74B8);
        v53 = 0;
        return v53 & 1;
      }
    }

    else
    {
      v59 = v66;
      sub_230464B24(v56, v66, &unk_27DB540D0, &qword_2304A74B8);
      if (v58(v56 + v57, 1, v18) != 1)
      {
        v61 = v65;
        v67(v65, (v56 + v57), v18);
        sub_230464B8C(&unk_281499F68, MEMORY[0x277D46840]);
        v62 = sub_2304A5D04();
        v63 = *(v19 + 8);
        v63(v61, v18);
        sub_230464970(v72, &unk_27DB540D0, &qword_2304A74B8);
        sub_230464970(v73, &unk_27DB540D0, &qword_2304A74B8);
        v63(v71, v18);
        v63(v59, v18);
        sub_230464970(v56, &unk_27DB540D0, &qword_2304A74B8);
        v53 = v62 ^ 1;
        return v53 & 1;
      }

      sub_230464970(v72, &unk_27DB540D0, &qword_2304A74B8);
      sub_230464970(v73, &unk_27DB540D0, &qword_2304A74B8);
      v60 = *(v19 + 8);
      v60(v71, v18);
      v60(v59, v18);
    }

    sub_230464970(v56, &qword_27DB540C8, &qword_2304A74B0);
    v53 = 1;
    return v53 & 1;
  }

  v43 = v68;
  v42 = v69;
  v44 = v67;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v45 = sub_2304A5B74();
  __swift_project_value_buffer(v45, qword_28149B008);

  v46 = sub_2304A5B54();
  v47 = sub_2304A5E74();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v75 = v49;
    *v48 = 136446210;
    v74 = v28;
    sub_2304A4984();
    sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
    v50 = sub_2304A62D4();
    v52 = sub_23046A5C8(v50, v51, &v75);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_230430000, v46, v47, "Data integrity problem found while trying to resolve updated zone identifier: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x23191A000](v49, -1, -1);
    MEMORY[0x23191A000](v48, -1, -1);
  }

  (*(v43 + 104))(v44, *MEMORY[0x277D468D0], v42);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();
  return v53 & 1;
}

uint64_t sub_23043ED1C(uint64_t a1, uint64_t a2)
{
  v91 = sub_2304A5294();
  v5 = *(v91 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2304A5224();
  v8 = *(v92 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v92);
  v89 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v85 - v12;
  v107 = v2;
  v13 = *&v2[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock];

  os_unfair_lock_assert_owner(v13 + 4);

  v15 = *(a2 + 16);
  if (!v15)
  {
    return result;
  }

  v98 = sub_2304A4984();
  v88 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster;
  v103 = &v107[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator];
  v87 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_recordDataStore;
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v104 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v19 = *(v8 + 16);
  v17 = v8 + 16;
  v18 = v19;
  v96 = (v17 - 8);
  v86 = (v5 + 16);
  v95 = *(v17 + 56);
  *&v20 = 136446210;
  v85 = v20;
  v21 = v92;
  v93 = v17;
  v94 = v19;
  v97 = a1;
  while (1)
  {
    v105 = v15;
    v18(v106, v16, v21);
    sub_2304A5214();
    sub_2304A5284();
    v26 = sub_2304A4974();

    v27 = *&v107[v104];
    if ((v27 & 0xC000000000000001) != 0)
    {
      if (v27 < 0)
      {
        v28 = *&v107[v104];
      }

      v29 = *&v107[v104];

      v30 = sub_2304A6224();

      if (!v30)
      {
        goto LABEL_19;
      }

      *&v109 = v30;
      type metadata accessor for ClientDataSource();
      swift_dynamicCast();
      v31 = *&v112[0];
    }

    else
    {
      if (!*(v27 + 16))
      {
        goto LABEL_20;
      }

      v32 = *&v107[v104];

      v33 = sub_230469CB8(v26);
      if ((v34 & 1) == 0)
      {
LABEL_19:

        goto LABEL_20;
      }

      v31 = *(*(v27 + 56) + 8 * v33);
    }

    if (v31)
    {

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v35 = sub_2304A5B74();
      __swift_project_value_buffer(v35, qword_28149B008);

      v36 = sub_2304A5B54();
      v37 = sub_2304A5E74();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v112[0] = v39;
        *v38 = v85;
        *&v109 = v26;
        sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
        v40 = sub_2304A62D4();
        v42 = v16;
        v43 = sub_23046A5C8(v40, v41, v112);

        *(v38 + 4) = v43;
        v16 = v42;
        v18 = v94;
        _os_log_impl(&dword_230430000, v36, v37, "Cannot create a data source for zone %{public}s because it already exists", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x23191A000](v39, -1, -1);
        MEMORY[0x23191A000](v38, -1, -1);
      }

      else
      {
      }

      (*v96)(v106, v21);
      v25 = v105;
      a1 = v97;
      goto LABEL_5;
    }

LABEL_20:
    v101 = v26;
    v100 = v16;
    v44 = v88;
    v45 = v107;
    sub_230464834(&v107[v88], v112);
    v110 = type metadata accessor for ReplicationServer();
    v111 = &off_28451BC20;
    *&v109 = v45;
    v46 = type metadata accessor for ClientRecordChangeNotifier();
    v47 = swift_allocObject();
    sub_230433DAC(&v109, v47 + 16);
    sub_230433DAC(v112, v47 + 56);
    v102 = type metadata accessor for ClientDataSource();
    v48 = v90;
    (*v86)(v90, a1, v91);
    v49 = v89;
    v18(v89, v106, v21);
    v50 = *(v103 + 3);
    v51 = *(v103 + 8);
    v52 = __swift_project_boxed_opaque_existential_5Tm(v103, v50);
    sub_230464834(&v45[v87], v112);
    v53 = sub_230464834(&v45[v44], &v109);
    v54 = *(*(v50 - 8) + 64);
    MEMORY[0x28223BE20](v53);
    v56 = &v85 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v56, v52, v50);
    v108 = v47;
    v58 = v45;
    v99 = v47;

    v59 = v48;
    v60 = v104;
    v61 = sub_2304A3484(v59, v49, v56, v112, &v109, &v108, v102, v46, v50, &off_28451C110, v51);
    swift_beginAccess();
    v62 = *&v45[v60];
    if ((v62 & 0xC000000000000001) != 0)
    {
      if (v62 < 0)
      {
        v63 = *&v45[v60];
      }

      else
      {
        v63 = v62 & 0xFFFFFFFFFFFFFF8;
      }

      v64 = v101;

      v65 = sub_2304A6044();
      if (__OFADD__(v65, 1))
      {
        goto LABEL_43;
      }

      v66 = sub_230479300(v63, v65 + 1);
      *&v107[v60] = v66;
    }

    else
    {
      v67 = *&v45[v60];
      v64 = v101;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v109 = *&v107[v60];
    v69 = v109;
    *&v107[v60] = 0x8000000000000000;
    v71 = sub_230469CB8(v64);
    v72 = *(v69 + 16);
    v73 = (v70 & 1) == 0;
    v74 = v72 + v73;
    v75 = v97;
    v76 = v92;
    v18 = v94;
    if (__OFADD__(v72, v73))
    {
      break;
    }

    v77 = v70;
    if (*(v69 + 24) >= v74)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v80 = v109;
        if ((v70 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_2304711E8();
        v80 = v109;
        if ((v77 & 1) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_23046E490(v74, isUniquelyReferenced_nonNull_native);
      v78 = sub_230469CB8(v64);
      if ((v77 & 1) != (v79 & 1))
      {
        goto LABEL_45;
      }

      v71 = v78;
      v80 = v109;
      if ((v77 & 1) == 0)
      {
LABEL_34:
        v80[(v71 >> 6) + 8] |= 1 << v71;
        *(v80[6] + 8 * v71) = v64;
        *(v80[7] + 8 * v71) = v61;
        v81 = v80[2];
        v82 = __OFADD__(v81, 1);
        v83 = v81 + 1;
        if (v82)
        {
          goto LABEL_44;
        }

        v80[2] = v83;
        goto LABEL_4;
      }
    }

    v22 = v80[7];
    v23 = *(v22 + 8 * v71);
    *(v22 + 8 * v71) = v61;

LABEL_4:
    *&v107[v60] = v80;
    swift_endAccess();
    v24 = *(v103 + 8);
    __swift_project_boxed_opaque_existential_5Tm(v103, *(v103 + 3));
    sub_230464B8C(&qword_28149AA70, type metadata accessor for ClientDataSource);

    sub_2304A4244();

    (*v96)(v106, v76);
    v25 = v105;
    v16 = v100;
    a1 = v75;
    v21 = v76;
LABEL_5:
    v16 += v95;
    v15 = v25 - 1;
    if (!v15)
    {
      v84 = *(v103 + 8);
      __swift_project_boxed_opaque_existential_5Tm(v103, *(v103 + 3));
      return sub_2304A4264();
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_2304A6314();
  __break(1u);
  return result;
}

uint64_t sub_23043F738(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17 - v9;
  v12 = *a1;
  v11 = a1[1];
  *v10 = v12;
  *(v10 + 1) = v11;
  v13 = *(v8 + 56);
  v14 = sub_2304A5224();
  (*(*(v14 - 8) + 16))(&v10[v13], a2, v14);
  sub_2304A4984();

  sub_2304A5284();
  v15 = sub_2304A4974();

  LOBYTE(v13) = sub_2304957C8(v15, a3);

  sub_230464970(v10, &qword_27DB54038, &qword_2304A7458);
  return v13 & 1;
}

uint64_t sub_23043F898(uint64_t a1, uint64_t a2)
{
  v86 = sub_2304A5294();
  v5 = *(v86 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A5224();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v84 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = &v79 - v13;
  v101 = v2;
  v14 = *&v2[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock];

  os_unfair_lock_assert_owner(v14 + 4);

  v16 = *(a2 + 16);
  if (!v16)
  {
    return result;
  }

  v99 = sub_2304A4984();
  v83 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster;
  v92 = &v101[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator];
  v82 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_recordDataStore;
  v17 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v97 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v18 = *(v9 + 16);
  v81 = (v5 + 16);
  v98 = v9 + 16;
  v95 = *(v9 + 72);
  v96 = (v9 + 8);
  *&v19 = 136446210;
  v87 = v19;
  v94 = a1;
  v93 = v8;
  v80 = v18;
  v18(v100, v17, v8);
  while (1)
  {
    sub_2304A5214();
    sub_2304A5284();
    v20 = sub_2304A4974();

    v21 = *&v101[v97];
    if ((v21 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v21 + 16))
    {
      v26 = *&v101[v97];

      v27 = sub_230469CB8(v20);
      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }

      v25 = *(*(v21 + 56) + 8 * v27);

      goto LABEL_15;
    }

LABEL_23:
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v51 = sub_2304A5B74();
    __swift_project_value_buffer(v51, qword_28149B008);

    v52 = sub_2304A5B54();
    v53 = sub_2304A5E74();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v106 = v55;
      *v54 = v87;
      *&v103 = v20;
      sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
      v56 = sub_2304A62D4();
      v58 = sub_23046A5C8(v56, v57, &v106);

      *(v54 + 4) = v58;
      v8 = v93;
      _os_log_impl(&dword_230430000, v52, v53, "Cannot update a data source for zone %{public}s because it does not exist", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x23191A000](v55, -1, -1);
      v59 = v54;
      a1 = v94;
      MEMORY[0x23191A000](v59, -1, -1);
    }

    else
    {
    }

    result = (*v96)(v100, v8);
LABEL_5:
    v17 += v95;
    if (!--v16)
    {
      return result;
    }

    v18(v100, v17, v8);
  }

  if (v21 < 0)
  {
    v22 = *&v101[v97];
  }

  v23 = *&v101[v97];

  v24 = sub_2304A6224();

  if (!v24)
  {
LABEL_22:

    goto LABEL_23;
  }

  *&v103 = v24;
  type metadata accessor for ClientDataSource();
  swift_dynamicCast();
  v25 = v106;
LABEL_15:

  if (!v25)
  {
    goto LABEL_23;
  }

  v89 = v16;

  v29 = v18;
  v30 = v83;
  v31 = v8;
  v32 = v101;
  sub_230464834(&v101[v83], &v106);
  v104 = type metadata accessor for ReplicationServer();
  v105 = &off_28451BC20;
  *&v103 = v32;
  v91 = type metadata accessor for ClientRecordChangeNotifier();
  v33 = swift_allocObject();
  sub_230433DAC(&v103, v33 + 16);
  sub_230433DAC(&v106, v33 + 56);
  v90 = type metadata accessor for ClientDataSource();
  v34 = v85;
  (*v81)(v85, a1, v86);
  v35 = v84;
  v29(v84, v100, v31);
  v36 = *(v92 + 3);
  v37 = *(v92 + 8);
  v38 = __swift_project_boxed_opaque_existential_5Tm(v92, v36);
  sub_230464834(&v32[v82], &v106);
  v39 = sub_230464834(&v32[v30], &v103);
  v40 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42, v38, v36);
  v102 = v33;
  v44 = v101;
  v88 = v33;

  v78 = v37;
  v45 = v97;
  v46 = sub_2304A3484(v34, v35, v42, &v106, &v103, &v102, v90, v91, v36, &off_28451C110, v78);
  v47 = v101;
  swift_beginAccess();
  v48 = *&v47[v45];
  if ((v48 & 0xC000000000000001) != 0)
  {
    if (v48 < 0)
    {
      v49 = *&v47[v45];
    }

    else
    {
      v49 = v48 & 0xFFFFFFFFFFFFFF8;
    }

    v50 = sub_2304A6044();
    if (__OFADD__(v50, 1))
    {
      goto LABEL_42;
    }

    *&v47[v45] = sub_230479300(v49, v50 + 1);
  }

  else
  {
    v60 = *&v47[v45];

    v47 = v101;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v103 = *&v47[v45];
  v62 = v103;
  *&v47[v45] = 0x8000000000000000;
  v64 = sub_230469CB8(v20);
  v65 = *(v62 + 16);
  v66 = (v63 & 1) == 0;
  v67 = v65 + v66;
  v16 = v89;
  if (!__OFADD__(v65, v66))
  {
    v68 = v63;
    if (*(v62 + 24) >= v67)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v71 = v103;
        if ((v63 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_2304711E8();
        v71 = v103;
        if ((v68 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_23046E490(v67, isUniquelyReferenced_nonNull_native);
      v69 = sub_230469CB8(v20);
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_44;
      }

      v64 = v69;
      v71 = v103;
      if ((v68 & 1) == 0)
      {
LABEL_37:
        v71[(v64 >> 6) + 8] |= 1 << v64;
        *(v71[6] + 8 * v64) = v20;
        *(v71[7] + 8 * v64) = v46;
        v74 = v71[2];
        v75 = __OFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_43;
        }

        v71[2] = v76;
        goto LABEL_39;
      }
    }

    v72 = v71[7];
    v73 = *(v72 + 8 * v64);
    *(v72 + 8 * v64) = v46;

LABEL_39:
    *&v101[v45] = v71;
    swift_endAccess();
    v77 = *(v92 + 8);
    __swift_project_boxed_opaque_existential_5Tm(v92, *(v92 + 3));
    sub_230464B8C(&qword_28149AA70, type metadata accessor for ClientDataSource);

    sub_2304A4244();

    v8 = v93;
    result = (*v96)(v100, v93);
    a1 = v94;
    v18 = v80;
    goto LABEL_5;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_2304A6314();
  __break(1u);
  return result;
}

uint64_t sub_230440248(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_assert_owner(v4 + 4);

  if (a1 >> 62)
  {
    result = sub_2304A6044();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 >= 1)
  {
    v30 = (v1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
    v29 = a1 & 0xC000000000000001;
    v32 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
    swift_beginAccess();
    v7 = 0;
    v28 = a1;
    v31 = v6;
    while (1)
    {
      if (v29)
      {
        v8 = MEMORY[0x231919680](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v9 = sub_2304A5B74();
      __swift_project_value_buffer(v9, qword_28149B008);

      v10 = sub_2304A5B54();
      v11 = sub_2304A5E94();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = v2;
        v14 = swift_slowAlloc();
        v33 = v14;
        *v12 = 136446210;
        v34 = v8;
        sub_2304A4984();
        sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
        v15 = sub_2304A62D4();
        v17 = sub_23046A5C8(v15, v16, &v33);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_230430000, v10, v11, "Removing data source and records for zone identifier %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        v18 = v14;
        v2 = v13;
        a1 = v28;
        MEMORY[0x23191A000](v18, -1, -1);
        MEMORY[0x23191A000](v12, -1, -1);
      }

      v19 = v30[8];
      __swift_project_boxed_opaque_existential_5Tm(v30, v30[3]);
      sub_2304A4244();
      v20 = *(v2 + v32);
      if ((v20 & 0xC000000000000001) != 0)
      {
        if (v20 < 0)
        {
          v21 = *(v2 + v32);
        }

        v22 = sub_2304A6224();

        if (v22)
        {
          v34 = v22;
          type metadata accessor for ClientDataSource();
          swift_dynamicCast();
          v23 = v33;
          goto LABEL_22;
        }
      }

      else
      {
        if (!*(v20 + 16))
        {
          goto LABEL_6;
        }

        v24 = *(v2 + v32);

        v25 = sub_230469CB8(v8);
        if (v26)
        {
          v23 = *(*(v20 + 56) + 8 * v25);

LABEL_22:

          if (v23)
          {
            sub_23049CB98();
            swift_beginAccess();

            sub_230478DEC(v27);
            swift_endAccess();
          }

          goto LABEL_6;
        }
      }

LABEL_6:
      ++v7;

      if (v31 == v7)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230440644(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v7 = sub_2304A5B74();
  __swift_project_value_buffer(v7, qword_28149B008);

  v8 = sub_2304A5B54();
  v9 = sub_2304A5E74();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_23046A5C8(a1, a2, &v17);
    _os_log_impl(&dword_230430000, v8, v9, "Unregistering client: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23191A000](v11, -1, -1);
    MEMORY[0x23191A000](v10, -1, -1);
  }

  v12 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);

  os_unfair_lock_lock(v12 + 4);
  sub_230464ECC();
  os_unfair_lock_unlock(v12 + 4);

  if (!v3)
  {
    v16 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 64);
    __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
    return sub_2304A4264();
  }

  return result;
}

uint64_t sub_230440874(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v109 = a4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
  v10 = *(*(v103 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v103);
  v102 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = &v96 - v13;
  v14 = sub_2304A53C4();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = *(v97 + 64);
  MEMORY[0x28223BE20](v14);
  v99 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v105 = a1;
  v100 = v17;
  v18 = *(a1 + v17);

  v106 = a2;
  v20 = v6;
  v21 = sub_230461C60(v19, a2, a3);
  v107 = a3;

  v22 = sub_23043D750(v21);
  v104 = v20;

  v23 = sub_230473E0C(v22);

  v24 = 0;
  v26 = v23 + 56;
  v25 = *(v23 + 56);
  v111 = v23;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25;
  v108 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
  v30 = (v27 + 63) >> 6;
  if ((v28 & v25) != 0)
  {
    while (1)
    {
      v31 = v24;
LABEL_8:
      v32 = (*(v111 + 48) + ((v31 << 10) | (16 * __clz(__rbit64(v29)))));
      v5 = *v32;
      v22 = v32[1];
      v33 = *(v109 + v108);

      v34 = [v33 remoteToken];
      v35 = sub_2304A5D14();
      v36 = [v34 hasEntitlement_];

      if (!v36)
      {
        break;
      }

      v29 &= v29 - 1;

      v24 = v31;
      if (!v29)
      {
        goto LABEL_5;
      }
    }

    if (qword_281499E38 == -1)
    {
      goto LABEL_38;
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v31 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v31 >= v30)
      {
        break;
      }

      v29 = *(v26 + 8 * v31);
      ++v24;
      if (v29)
      {
        goto LABEL_8;
      }
    }

    v37 = (v105 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore);
    v22 = *(v105 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24);
    __swift_project_boxed_opaque_existential_5Tm((v105 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), v22);
    v38 = v104;
    result = sub_2304A5494();
    if (v38)
    {
      return result;
    }

    v40 = v37[4];
    __swift_project_boxed_opaque_existential_5Tm(v37, v37[3]);
    v41 = sub_2304A5484();
    v111 = 0;
    v42 = *(v41 + 64);
    v104 = v41 + 64;
    v43 = 1 << *(v41 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v5 = v44 & v42;
    v99 = ((v43 + 63) >> 6);

    v46 = 0;
    v47 = MEMORY[0x277D84F90];
    v108 = v45;
    while (v5)
    {
      v109 = v47;
LABEL_22:
      v49 = __clz(__rbit64(v5)) | (v46 << 6);
      v50 = *(v41 + 56);
      v51 = (*(v41 + 48) + 16 * v49);
      v53 = *v51;
      v52 = v51[1];
      v54 = sub_2304A5294();
      v55 = *(v54 - 8);
      v56 = v50 + *(v55 + 72) * v49;
      v57 = v103;
      v22 = v101;
      (*(v55 + 16))(&v101[*(v103 + 48)], v56, v54);
      *v22 = v53;
      v22[1] = v52;
      v58 = v102;
      sub_230464B24(v22, v102, &qword_27DB54080, &qword_2304A7478);
      v59 = *(v58 + 8);

      v60 = *(v57 + 48);
      v61 = sub_2304A5254();
      v62 = (*(v55 + 8))(v58 + v60, v54);
      MEMORY[0x28223BE20](v62);
      *(&v96 - 2) = v22;
      v63 = v111;
      v64 = sub_23043D2B8(sub_2304646C8, (&v96 - 4), v61);
      v111 = v63;

      sub_230464970(v22, &qword_27DB54080, &qword_2304A7478);
      v65 = *(v64 + 16);
      v47 = v109;
      v66 = v109[2];
      v67 = v66 + v65;
      if (__OFADD__(v66, v65))
      {
        goto LABEL_46;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v67 > v47[3] >> 1)
      {
        if (v66 <= v67)
        {
          v69 = v66 + v65;
        }

        else
        {
          v69 = v66;
        }

        v47 = sub_23045A0B8(isUniquelyReferenced_nonNull_native, v69, 1, v47, &qword_27DB54088, &qword_2304A7480, MEMORY[0x277D46370]);
      }

      v5 &= v5 - 1;
      if (*(v64 + 16))
      {
        v70 = (v47[3] >> 1) - v47[2];
        v71 = *(sub_2304A41F4() - 8);
        if (v70 < v65)
        {
          goto LABEL_48;
        }

        v72 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v73 = *(v71 + 72);
        swift_arrayInitWithCopy();

        v41 = v108;
        if (v65)
        {
          v74 = v47[2];
          v75 = __OFADD__(v74, v65);
          v76 = v74 + v65;
          if (v75)
          {
            goto LABEL_49;
          }

          v47[2] = v76;
        }
      }

      else
      {

        v41 = v108;
        if (v65)
        {
          goto LABEL_47;
        }
      }
    }

    while (1)
    {
      v48 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v48 >= v99)
      {

        v77 = v105;
        v78 = *(v105 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 40);
        __swift_project_boxed_opaque_existential_5Tm((v105 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v105 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
        sub_2304A4654();

        v79 = *(v77 + v100);
        v80 = v107;

        v82 = v106;
        v83 = v111;
        v84 = sub_230461C60(v81, v106, v80);

        v85 = sub_23043C994(v84);

        sub_230440248(v85);

        if (!v83)
        {
          v86 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_predefinedClientDescriptorIDs;
          swift_beginAccess();
          v87 = *(v77 + v86);

          v88 = sub_230495958(v82, v80, v87);

          if ((v88 & 1) == 0)
          {
            v95 = *(v77 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
            __swift_project_boxed_opaque_existential_5Tm((v77 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v77 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
            return sub_2304A5424();
          }
        }

        return result;
      }

      v5 = *(v104 + 8 * v48);
      ++v46;
      if (v5)
      {
        v109 = v47;
        v46 = v48;
        goto LABEL_22;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  swift_once();
LABEL_38:
  v89 = sub_2304A5B74();
  __swift_project_value_buffer(v89, qword_28149B008);

  v90 = sub_2304A5B54();
  v91 = sub_2304A5E74();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v110 = v93;
    *v92 = 136446210;
    v94 = sub_23046A5C8(v5, v22, &v110);

    *(v92 + 4) = v94;
    _os_log_impl(&dword_230430000, v90, v91, "Cannot remove client without entitlement: %{public}s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    MEMORY[0x23191A000](v93, -1, -1);
    MEMORY[0x23191A000](v92, -1, -1);
  }

  else
  {
  }

  (*(v97 + 104))(v99, *MEMORY[0x277D468C0], v98);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();
}

uint64_t sub_230441210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v57 = a2;
  v54 = a1;
  v60 = sub_2304A4BE4();
  v66 = *(v60 - 8);
  v4 = *(v66 + 64);
  v5 = MEMORY[0x28223BE20](v60);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v51 - v7;
  v8 = sub_2304A4434();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54080, &qword_2304A7478);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54090, &qword_2304A7488);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v56 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v23 = sub_2304A41D4();
  v64 = *(v23 - 8);
  v65 = v23;
  v24 = *(v64 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v63 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v51 - v27;
  sub_230464B24(a1, v22, &unk_27DB54090, &qword_2304A7488);
  v29 = *(v22 + 1);

  v30 = *(v17 + 56);
  sub_2304A52A4();
  v51 = v31;
  v32 = sub_2304A52C4();
  v33 = *(v32 - 8);
  v52 = *(v33 + 8);
  v53 = v33 + 8;
  v52(&v22[v30], v32);
  sub_230464B24(v57, v15, &qword_27DB54080, &qword_2304A7478);
  v34 = *(v15 + 1);

  v35 = *(v12 + 56);
  sub_2304A5284();
  v36 = sub_2304A5294();
  (*(*(v36 - 8) + 8))(&v15[v35], v36);
  v55 = v28;
  sub_2304A41B4();
  (*(v64 + 16))(v63, v28, v65);
  v37 = v54;
  sub_230464B24(v54, v22, &unk_27DB54090, &qword_2304A7488);
  v38 = *(v22 + 1);

  v39 = *(v17 + 56);
  v40 = v58;
  sub_2304A52B4();
  v41 = v52;
  v52(&v22[v39], v32);
  v42 = v40;
  v57 = sub_2304A4BC4();
  v43 = *(v66 + 8);
  v66 += 8;
  v44 = v42;
  v45 = v60;
  v43(v44, v60);
  v46 = v56;
  sub_230464B24(v37, v56, &unk_27DB54090, &qword_2304A7488);
  v47 = *(v46 + 8);

  v48 = *(v17 + 56);
  v49 = v61;
  sub_2304A52B4();
  v41(v46 + v48, v32);
  sub_2304A4BD4();
  v43(v49, v45);
  sub_2304A4404();
  sub_2304A41E4();
  return (*(v64 + 8))(v55, v65);
}

void sub_230441708(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock;
  v8 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_lock(v8 + 4);
  sub_230464ECC();
  os_unfair_lock_unlock(v8 + 4);

  if (!v3 && (a1 == 0xD000000000000011 && 0x80000002304A8260 == a2 || (sub_2304A62F4() & 1) != 0))
  {
    v12 = 0;
    v9 = *(v2 + v7);

    os_unfair_lock_lock(v9 + 4);
    sub_23044A3E0(v4, &v12);
    os_unfair_lock_unlock(v9 + 4);

    if (v12)
    {
      v10 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 32);
      __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster), *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 24));
      v11 = sub_2304A5144();
      (*(v10 + 8))(v11);
    }
  }
}

uint64_t sub_23044189C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v90 = a1;
  v85 = sub_2304A51C4();
  v7 = *(v85 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v85);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v79 - v12;
  v13 = sub_2304A5294();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v79 - v18;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v19 = sub_2304A5B74();
  v20 = __swift_project_value_buffer(v19, qword_28149B008);

  v21 = sub_2304A5B54();
  v22 = sub_2304A5E94();

  v23 = os_log_type_enabled(v21, v22);
  v84 = v7;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v82 = v20;
    v26 = v17;
    v27 = v11;
    v28 = a3;
    v29 = v25;
    v91 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_23046A5C8(v90, a2, &v91);
    _os_log_impl(&dword_230430000, v21, v22, "Enabling client: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v30 = v29;
    a3 = v28;
    v11 = v27;
    v17 = v26;
    MEMORY[0x23191A000](v30, -1, -1);
    MEMORY[0x23191A000](v24, -1, -1);
  }

  v31 = *(a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
  result = sub_2304A5484();
  if (!v4)
  {
    v33 = result;
    v82 = 0;
    if (*(result + 16) && (v34 = sub_230469C40(v90, a2), (v35 & 1) != 0))
    {
      v81 = a3;
      v36 = v87;
      v37 = *(v33 + 56) + *(v88 + 72) * v34;
      v80 = *(v88 + 16);
      v80(v87, v37, v89);

      sub_2304A5234();
      v38 = [*(v86 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
      v39 = sub_2304A5D14();

      v40 = [v38 hasEntitlement_];

      if (v40)
      {
        v41 = (v81 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore);
        v42 = *(v81 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
        __swift_project_boxed_opaque_existential_5Tm((v81 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v81 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
        v43 = v82;
        v44 = sub_2304A5404();
        if (v43)
        {
          return (*(v88 + 8))(v87, v89);
        }

        v45 = v44;
        if (!*(v44 + 16) || (v46 = sub_230469C40(v90, a2), (v47 & 1) == 0))
        {

          v72 = sub_2304A5B54();
          v73 = sub_2304A5E74();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v91 = v75;
            *v74 = 136446210;
            *(v74 + 4) = sub_23046A5C8(v90, a2, &v91);
            _os_log_impl(&dword_230430000, v72, v73, "Client has no settings: %{public}s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v75);
            MEMORY[0x23191A000](v75, -1, -1);
            MEMORY[0x23191A000](v74, -1, -1);
          }

          sub_230464618();
          swift_allocError();
          *v76 = 0;
          swift_willThrow();
          return (*(v88 + 8))(v87, v89);
        }

        v49 = v84;
        v48 = v85;
        (*(v84 + 16))(v11, *(v45 + 56) + *(v84 + 72) * v46, v85);

        v50 = v83;
        (*(v49 + 32))();
        if (sub_2304A5184())
        {

          v51 = sub_2304A5B54();
          v52 = sub_2304A5E94();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v91 = v54;
            *v53 = 136446210;
            *(v53 + 4) = sub_23046A5C8(v90, a2, &v91);
            _os_log_impl(&dword_230430000, v51, v52, "Client is already enabled: %{public}s", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v54);
            MEMORY[0x23191A000](v54, -1, -1);
            MEMORY[0x23191A000](v53, -1, -1);
          }

          (*(v49 + 8))(v50, v48);
          return (*(v88 + 8))(v87, v89);
        }

        sub_2304A5194();
        v77 = v41[4];
        __swift_project_boxed_opaque_existential_5Tm(v41, v41[3]);
        sub_2304A5434();
        v78 = *(v81 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 64);
        __swift_project_boxed_opaque_existential_5Tm((v81 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v81 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
        sub_2304A4254();
        (*(v49 + 8))(v50, v48);
        return (*(v88 + 8))(v87, v89);
      }

      else
      {
        v60 = v89;
        v80(v17, v36, v89);
        v61 = sub_2304A5B54();
        v62 = sub_2304A5E74();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v91 = v64;
          *v63 = 136446210;
          v65 = sub_2304A5234();
          v67 = v66;
          v68 = *(v88 + 8);
          v68(v17, v89);
          v69 = sub_23046A5C8(v65, v67, &v91);

          *(v63 + 4) = v69;
          _os_log_impl(&dword_230430000, v61, v62, "Client is missing entitlement: %{public}s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v64);
          MEMORY[0x23191A000](v64, -1, -1);
          v70 = v63;
          v36 = v87;
          v60 = v89;
          MEMORY[0x23191A000](v70, -1, -1);
        }

        else
        {

          v68 = *(v88 + 8);
          v68(v17, v60);
        }

        sub_230464618();
        swift_allocError();
        *v71 = 0;
        swift_willThrow();
        return (v68)(v36, v60);
      }
    }

    else
    {

      v55 = sub_2304A5B54();
      v56 = sub_2304A5E74();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v91 = v58;
        *v57 = 136446210;
        *(v57 + 4) = sub_23046A5C8(v90, a2, &v91);
        _os_log_impl(&dword_230430000, v55, v56, "Client is unknown: %{public}s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v58);
        MEMORY[0x23191A000](v58, -1, -1);
        MEMORY[0x23191A000](v57, -1, -1);
      }

      sub_230464618();
      swift_allocError();
      *v59 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_230442244(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock;
  v8 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_lock(v8 + 4);
  sub_230464ECC();
  os_unfair_lock_unlock(v8 + 4);

  if (!v3 && (a1 == 0xD000000000000011 && 0x80000002304A8260 == a2 || (sub_2304A62F4() & 1) != 0))
  {
    v12 = 0;
    v9 = *(v2 + v7);

    os_unfair_lock_lock(v9 + 4);
    sub_23044A3E0(v4, &v12);
    os_unfair_lock_unlock(v9 + 4);

    if (v12)
    {
      v10 = *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 32);
      __swift_project_boxed_opaque_existential_5Tm((v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster), *(v4 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster + 24));
      v11 = sub_2304A5144();
      (*(v10 + 8))(v11);
    }
  }
}

uint64_t sub_2304423D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v155 = a1;
  v9 = sub_2304A5224();
  v148 = *(v9 - 8);
  v149 = v9;
  v10 = *(v148 + 64);
  MEMORY[0x28223BE20](v9);
  v147 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54030, &qword_2304A7450);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v150 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v151 = (&v133 - v16);
  v17 = sub_2304A51C4();
  v145 = *(v17 - 8);
  v146 = v17;
  v18 = *(v145 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v143 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v144 = &v133 - v21;
  v22 = sub_2304A5294();
  v153 = *(v22 - 8);
  v23 = v153[8];
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v152 = &v133 - v27;
  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v28 = sub_2304A5B74();
  __swift_project_value_buffer(v28, qword_28149B008);

  v29 = sub_2304A5B54();
  v30 = sub_2304A5E94();

  v31 = os_log_type_enabled(v29, v30);
  v154 = v22;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v142 = v4;
    v34 = v26;
    v35 = a4;
    v36 = a3;
    v37 = v33;
    v157[0] = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_23046A5C8(v155, a2, v157);
    _os_log_impl(&dword_230430000, v29, v30, "Disabling client: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v38 = v37;
    a3 = v36;
    a4 = v35;
    v26 = v34;
    v5 = v142;
    MEMORY[0x23191A000](v38, -1, -1);
    MEMORY[0x23191A000](v32, -1, -1);
  }

  v39 = *(a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(a3 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
  result = sub_2304A5484();
  if (v5)
  {
    return result;
  }

  v41 = result;
  v142 = 0;
  if (!*(result + 16) || (v42 = sub_230469C40(v155, a2), (v43 & 1) == 0))
  {

    v53 = sub_2304A5B54();
    v54 = sub_2304A5E74();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v157[0] = v56;
      *v55 = 136446210;
      *(v55 + 4) = sub_23046A5C8(v155, a2, v157);
      _os_log_impl(&dword_230430000, v53, v54, "Client is unknown: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x23191A000](v56, -1, -1);
      MEMORY[0x23191A000](v55, -1, -1);
    }

    sub_230464618();
    swift_allocError();
    *v57 = 0;
    return swift_willThrow();
  }

  v141 = a3;
  v44 = v152;
  v45 = *(v41 + 56) + v153[9] * v42;
  v140 = v153[2];
  v140(v152, v45, v154);

  sub_2304A5234();
  v46 = [*(a4 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
  v47 = sub_2304A5D14();

  v48 = [v46 hasEntitlement_];

  if (!v48)
  {
    v58 = v154;
    v140(v26, v44, v154);
    v59 = sub_2304A5B54();
    v60 = sub_2304A5E74();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v157[0] = v62;
      *v61 = 136446210;
      v63 = sub_2304A5234();
      v65 = v64;
      v66 = v153[1];
      v66(v26, v154);
      v67 = sub_23046A5C8(v63, v65, v157);
      v68 = v152;

      *(v61 + 4) = v67;
      _os_log_impl(&dword_230430000, v59, v60, "Client is missing entitlement: %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v62);
      MEMORY[0x23191A000](v62, -1, -1);
      v69 = v61;
      v58 = v154;
      MEMORY[0x23191A000](v69, -1, -1);
    }

    else
    {
      v68 = v44;

      v66 = v153[1];
      v66(v26, v58);
    }

    sub_230464618();
    swift_allocError();
    *v70 = 0;
    swift_willThrow();
    return (v66)(v68, v58);
  }

  v49 = (v141 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore);
  v50 = *(v141 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((v141 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v141 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
  v51 = v142;
  v52 = sub_2304A5404();
  v142 = v51;
  if (v51)
  {
    return (v153[1])(v152, v154);
  }

  v71 = v52;
  if (!*(v52 + 16) || (v72 = sub_230469C40(v155, a2), (v73 & 1) == 0))
  {

    v88 = sub_2304A5B54();
    v89 = sub_2304A5E74();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v157[0] = v91;
      *v90 = 136446210;
      *(v90 + 4) = sub_23046A5C8(v155, a2, v157);
      _os_log_impl(&dword_230430000, v88, v89, "Client has no settings: %{public}s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      MEMORY[0x23191A000](v91, -1, -1);
      MEMORY[0x23191A000](v90, -1, -1);
    }

    v92 = v154;
    v93 = v152;
    sub_230464618();
    swift_allocError();
    *v94 = 0;
    swift_willThrow();
    return (v153[1])(v93, v92);
  }

  v75 = v145;
  v74 = v146;
  v76 = v143;
  (*(v145 + 16))(v143, *(v71 + 56) + *(v145 + 72) * v72, v146);

  v77 = v144;
  (*(v75 + 32))(v144, v76, v74);
  if ((sub_2304A5184() & 1) == 0)
  {

    v123 = sub_2304A5B54();
    v124 = sub_2304A5E94();

    v125 = os_log_type_enabled(v123, v124);
    v126 = v152;
    if (v125)
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v157[0] = v128;
      *v127 = 136446210;
      *(v127 + 4) = sub_23046A5C8(v155, a2, v157);
      _os_log_impl(&dword_230430000, v123, v124, "Client is already disabled: %{public}s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v128);
      MEMORY[0x23191A000](v128, -1, -1);
      MEMORY[0x23191A000](v127, -1, -1);
    }

    (*(v145 + 8))(v77, v146);
    return (v153[1])(v126, v154);
  }

  v134 = v49;
  v78 = sub_2304A5244();
  v80 = (v78 + 64);
  v79 = *(v78 + 64);
  v137 = v78;
  v81 = 1 << *(v78 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & v79;
  v140 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  result = swift_beginAccess();
  v84 = 0;
  v85 = (v81 + 63) >> 6;
  v136 = v148 + 16;
  v135 = v148 + 32;
  v138 = (v148 + 8);
  v87 = v149;
  v86 = v150;
  v143 = v80;
  v139 = v85;
  while (v83)
  {
    v96 = v84;
LABEL_42:
    v99 = __clz(__rbit64(v83));
    v83 &= v83 - 1;
    v100 = v99 | (v96 << 6);
    v101 = (*(v137 + 48) + 16 * v100);
    v103 = *v101;
    v102 = v101[1];
    v105 = v147;
    v104 = v148;
    (*(v148 + 16))(v147, *(v137 + 56) + *(v148 + 72) * v100, v87);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
    v107 = *(v106 + 48);
    v108 = v150;
    *v150 = v103;
    *(v108 + 1) = v102;
    v86 = v108;
    v87 = v149;
    (*(v104 + 32))(&v108[v107], v105, v149);
    (*(*(v106 - 8) + 56))(v86, 0, 1, v106);

LABEL_43:
    v109 = v151;
    sub_230464ABC(v86, v151, &qword_27DB54030, &qword_2304A7450);
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
    if ((*(*(v110 - 8) + 48))(v109, 1, v110) == 1)
    {

      v129 = v144;
      sub_2304A5194();
      v130 = v134[4];
      __swift_project_boxed_opaque_existential_5Tm(v134, v134[3]);
      v131 = v142;
      sub_2304A5434();
      if (!v131)
      {
        v132 = *(v141 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 64);
        __swift_project_boxed_opaque_existential_5Tm((v141 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v141 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
        sub_2304A4254();
      }

      (*(v145 + 8))(v129, v146);
      return (v153[1])(v152, v154);
    }

    v111 = *v109;
    v112 = v109[1];
    sub_2304A4984();
    v113 = sub_2304A4974();

    v114 = *(v140 + v141);
    if ((v114 & 0xC000000000000001) != 0)
    {
      if (v114 < 0)
      {
        v115 = *(v140 + v141);
      }

      v116 = *(v140 + v141);

      v117 = sub_2304A6224();

      v86 = v150;
      if (!v117)
      {
        goto LABEL_29;
      }

      v156 = v117;
      type metadata accessor for ClientDataSource();
      swift_dynamicCast();
      v118 = v157[5];
    }

    else
    {
      v86 = v150;
      if (!*(v114 + 16))
      {
        goto LABEL_29;
      }

      v119 = *(v140 + v141);

      v120 = sub_230469CB8(v113);
      if ((v121 & 1) == 0)
      {

LABEL_29:
        v95 = v151 + *(v110 + 48);
LABEL_30:
        v85 = v139;

        v80 = v143;
        goto LABEL_31;
      }

      v118 = *(*(v114 + 56) + 8 * v120);
    }

    v95 = v151 + *(v110 + 48);
    if (!v118)
    {
      v87 = v149;
      goto LABEL_30;
    }

    sub_23049CBB8();

    v87 = v149;
    v80 = v143;
    v85 = v139;
LABEL_31:
    result = (*v138)(v95, v87);
  }

  if (v85 <= v84 + 1)
  {
    v97 = v84 + 1;
  }

  else
  {
    v97 = v85;
  }

  v98 = v97 - 1;
  while (1)
  {
    v96 = v84 + 1;
    if (__OFADD__(v84, 1))
    {
      break;
    }

    if (v96 >= v85)
    {
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
      (*(*(v122 - 8) + 56))(v86, 1, 1, v122);
      v83 = 0;
      v84 = v98;
      goto LABEL_43;
    }

    v83 = *&v80[8 * v96];
    ++v84;
    if (v83)
    {
      v84 = v96;
      goto LABEL_42;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2304432E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v79 = a4;
  v80 = a2;
  v81 = a3;
  v78 = a5;
  v6 = sub_2304A51C4();
  v77 = *(v6 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2304A5294();
  v82 = *(v10 - 8);
  v11 = *(v82 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  v17 = *(a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 32);
  __swift_project_boxed_opaque_existential_5Tm((a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore), *(a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore + 24));
  v18 = v83;
  result = sub_2304A5484();
  if (!v18)
  {
    v20 = result;
    v72 = v9;
    v73 = a1;
    v74 = v14;
    v75 = 0;
    v22 = v78;
    v21 = v79;
    v76 = v16;
    v83 = v10;
    v23 = v81;
    v24 = v82;
    v25 = v80;
    if (*(result + 16) && (v26 = sub_230469C40(v80, v81), (v27 & 1) != 0))
    {
      v28 = *(v20 + 56) + *(v24 + 72) * v26;
      v29 = v76;
      v30 = *(v24 + 16);
      v30(v76, v28, v83);

      sub_2304A5234();
      v31 = [*(v21 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
      v32 = sub_2304A5D14();

      v33 = [v31 hasEntitlement_];

      if (v33)
      {
        v34 = *(v73 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 32);
        __swift_project_boxed_opaque_existential_5Tm((v73 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore), *(v73 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore + 24));
        v35 = v75;
        v36 = sub_2304A5404();
        if (v35)
        {
          return (*(v82 + 8))(v29, v83);
        }

        else
        {
          v58 = v36;
          if (*(v36 + 16) && (v59 = sub_230469C40(v25, v81), (v60 & 1) != 0))
          {
            v61 = v77;
            v62 = v72;
            (*(v77 + 16))(v72, *(v58 + 56) + *(v77 + 72) * v59, v6);

            v63 = sub_2304A5184();
            (*(v61 + 8))(v62, v6);
            result = (*(v82 + 8))(v29, v83);
            *v22 = v63 & 1;
          }

          else
          {

            if (qword_281499E38 != -1)
            {
              swift_once();
            }

            v64 = sub_2304A5B74();
            __swift_project_value_buffer(v64, qword_28149B008);
            v65 = v81;

            v66 = sub_2304A5B54();
            v67 = sub_2304A5E74();

            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v84 = v69;
              *v68 = 136446210;
              *(v68 + 4) = sub_23046A5C8(v25, v65, &v84);
              _os_log_impl(&dword_230430000, v66, v67, "Client is unknown: %{public}s", v68, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v69);
              MEMORY[0x23191A000](v69, -1, -1);
              MEMORY[0x23191A000](v68, -1, -1);
            }

            v70 = v83;
            sub_230464618();
            swift_allocError();
            *v71 = 0;
            swift_willThrow();
            return (*(v82 + 8))(v29, v70);
          }
        }
      }

      else
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v43 = sub_2304A5B74();
        __swift_project_value_buffer(v43, qword_28149B008);
        v44 = v74;
        v45 = v83;
        v30(v74, v29, v83);
        v46 = sub_2304A5B54();
        v47 = sub_2304A5E74();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = v44;
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v84 = v50;
          *v49 = 136446210;
          v51 = sub_2304A5234();
          v53 = v52;
          v54 = *(v82 + 8);
          v54(v48, v83);
          v55 = sub_23046A5C8(v51, v53, &v84);
          v29 = v76;

          *(v49 + 4) = v55;
          _os_log_impl(&dword_230430000, v46, v47, "Client is missing entitlement: %{public}s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v50);
          v56 = v50;
          v45 = v83;
          MEMORY[0x23191A000](v56, -1, -1);
          MEMORY[0x23191A000](v49, -1, -1);
        }

        else
        {

          v54 = *(v82 + 8);
          v54(v44, v45);
        }

        sub_230464618();
        swift_allocError();
        *v57 = 0;
        swift_willThrow();
        return (v54)(v29, v45);
      }
    }

    else
    {

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v37 = sub_2304A5B74();
      __swift_project_value_buffer(v37, qword_28149B008);

      v38 = sub_2304A5B54();
      v39 = sub_2304A5E74();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v84 = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_23046A5C8(v25, v23, &v84);
        _os_log_impl(&dword_230430000, v38, v39, "Client is unknown: %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x23191A000](v41, -1, -1);
        MEMORY[0x23191A000](v40, -1, -1);
      }

      sub_230464618();
      swift_allocError();
      *v42 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_230443AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a1 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore);
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_5Tm(v8, v8[3]);
  result = sub_2304A5484();
  if (!v4)
  {
    v11 = result;
    if (*(result + 16) && (v12 = sub_230469C40(a2, a3), (v13 & 1) != 0))
    {
      v14 = v12;
      v15 = *(v11 + 56);
      v16 = sub_2304A5294();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a4, v15 + *(v17 + 72) * v14, v16);

      return (*(v17 + 56))(a4, 0, 1, v16);
    }

    else
    {

      v18 = sub_2304A5294();
      return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
    }
  }

  return result;
}

void sub_230443C58(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v159 = a5;
  v158 = a4;
  v160 = a3;
  v162 = a2;
  v154 = sub_2304A53E4();
  v156 = *(v154 - 8);
  v6 = *(v156 + 64);
  v7 = MEMORY[0x28223BE20](v154);
  v150[1] = v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v150[0] = v150 - v10;
  MEMORY[0x28223BE20](v9);
  v151 = v150 - v11;
  v152 = sub_2304A53C4();
  v155 = *(v152 - 8);
  v12 = *(v155 + 64);
  MEMORY[0x28223BE20](v152);
  v153 = v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2304A4FF4();
  v15 = *(v14 - 1);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v167 = v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v170 = v150 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v150 - v22;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &off_2304A7000; v24; i = &off_2304A7000)
  {
    v26 = 0;
    v169 = a1 & 0xC000000000000001;
    v157 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = MEMORY[0x277D84F98];
    *&v21 = *(i + 70);
    v161 = v21;
    v164 = v24;
    v165 = a1;
    *&v168 = v14;
    v171 = v15 + 1;
    v163 = v23;
    while (1)
    {
      if (v169)
      {
        v28 = MEMORY[0x231919680](v26, a1);
      }

      else
      {
        if (v26 >= *(v157 + 16))
        {
          goto LABEL_43;
        }

        v28 = a1[v26 + 4];
      }

      v15 = v28;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v174 = v26 + 1;
      v175 = v26;
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v29 = sub_2304A5B74();
      v30 = __swift_project_value_buffer(v29, qword_28149B008);
      v31 = v15;
      v173 = v30;
      v32 = sub_2304A5B54();
      v33 = sub_2304A5E94();

      v34 = os_log_type_enabled(v32, v33);
      v176 = v27;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        v177 = v172;
        *v35 = v161;
        sub_2304A5944();
        sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
        v36 = v168;
        v37 = sub_2304A62D4();
        v39 = v38;
        v40 = v171;
        (*v171)(v23, v36);
        v41 = sub_23046A5C8(v37, v39, &v177);

        *(v35 + 4) = v41;
        _os_log_impl(&dword_230430000, v32, v33, "Adding record with ID: %{public}s", v35, 0xCu);
        v42 = v172;
        __swift_destroy_boxed_opaque_existential_0Tm(v172);
        MEMORY[0x23191A000](v42, -1, -1);
        MEMORY[0x23191A000](v35, -1, -1);
      }

      else
      {

        v36 = v168;
        v40 = v171;
      }

      sub_2304A5944();
      v43 = sub_2304A4FB4();
      v45 = v44;
      v46 = *v40;
      (*v40)(v23, v36);
      v177 = v43;
      v178 = v45;
      v180 = 14906;
      v181 = 0xE200000000000000;
      sub_2304645C4();
      v47 = sub_2304A5F84();

      if (v47)
      {
        v71 = v36;
        v175 = v46;
        v72 = v31;
        v73 = sub_2304A5B54();
        v74 = sub_2304A5E74();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v177 = v76;
          *v75 = v161;
          sub_2304A5944();
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
          v77 = sub_2304A62D4();
          v79 = v78;
          (v175)(v23, v71);
          v80 = sub_23046A5C8(v77, v79, &v177);

          *(v75 + 4) = v80;
          v81 = "Zone ID is illegal in record ID: %{public}s";
          goto LABEL_33;
        }

LABEL_34:

        sub_230464618();
        swift_allocError();
        *v87 = 0;
LABEL_41:
        swift_willThrow();

        return;
      }

      sub_2304A5944();
      v48 = sub_2304A4F84();
      v50 = v49;
      (v46)(v23, v36);
      v177 = v48;
      v178 = v50;
      v180 = 14906;
      v181 = 0xE200000000000000;
      v51 = sub_2304A5F84();

      if (v51)
      {
        v82 = v36;
        v175 = v46;
        v72 = v31;
        v73 = sub_2304A5B54();
        v74 = sub_2304A5E74();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v177 = v76;
          *v75 = v161;
          sub_2304A5944();
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
          v83 = sub_2304A62D4();
          v85 = v84;
          (v175)(v23, v82);
          v86 = sub_23046A5C8(v83, v85, &v177);

          *(v75 + 4) = v86;
          v81 = "Client ID is illegal in record ID: %{public}s";
LABEL_33:
          _os_log_impl(&dword_230430000, v73, v74, v81, v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v76);
          MEMORY[0x23191A000](v76, -1, -1);
          MEMORY[0x23191A000](v75, -1, -1);
        }

        goto LABEL_34;
      }

      v52 = v170;
      sub_2304A5944();
      v53 = sub_2304A4FA4();
      v55 = v54;
      (v46)(v52, v36);

      v56 = HIBYTE(v55) & 0xF;
      if ((v55 & 0x2000000000000000) == 0)
      {
        v56 = v53 & 0xFFFFFFFFFFFFLL;
      }

      v57 = v31;
      if (!v56)
      {
        v88 = sub_2304A5B54();
        v89 = sub_2304A5E74();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          *v90 = 0;
          _os_log_impl(&dword_230430000, v88, v89, "Empty record ID is illegal", v90, 2u);
          MEMORY[0x23191A000](v90, -1, -1);
        }

        (*(v155 + 104))(v153, *MEMORY[0x277D468C0], v152);
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
        swift_allocError();
        sub_2304A53D4();
        swift_willThrow();

        return;
      }

      v58 = v46;
      v59 = sub_2304A5954();
      sub_2304A4E84();
      v60 = sub_2304A4E74();
      if (v59 >= 1 && v60 < v59)
      {
        v72 = v57;
        v91 = sub_2304A5B54();
        v92 = sub_2304A5E74();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v175 = v58;
          v95 = v94;
          v177 = v94;
          *v93 = v161;
          sub_2304A5944();
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
          v96 = sub_2304A62D4();
          v98 = v97;
          (v175)(v23, v36);
          v99 = sub_23046A5C8(v96, v98, &v177);

          *(v93 + 4) = v99;
          _os_log_impl(&dword_230430000, v91, v92, "Record is too large with ID: %{public}s", v93, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v95);
          MEMORY[0x23191A000](v95, -1, -1);
          MEMORY[0x23191A000](v93, -1, -1);
        }

        (*(v155 + 104))(v153, *MEMORY[0x277D468C0], v152);
        sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
        swift_allocError();
        sub_2304A53D4();
        goto LABEL_41;
      }

      v172 = sub_2304A4984();
      sub_2304A5944();
      sub_2304A4FB4();
      v61 = v36;
      (v46)(v23, v36);
      v62 = v167;
      v173 = v57;
      sub_2304A5944();
      sub_2304A4F84();
      (v46)(v62, v61);
      v15 = sub_2304A4974();

      v63 = v176;
      if (v176[2] && (v64 = sub_230469CB8(v15), (v65 & 1) != 0))
      {
        v177 = *(*(v63 + 56) + 8 * v64);
      }

      else
      {
        v177 = MEMORY[0x277D84F90];
      }

      v66 = v164;
      a1 = v165;
      v67 = v173;
      MEMORY[0x231919320]();
      if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v177 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2304A5DE4();
      }

      sub_2304A5DF4();
      v68 = v177;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v180 = v63;
      v14 = &v180;
      sub_23045BE1C(v68, v15, isUniquelyReferenced_nonNull_native);

      v27 = v180;
      v26 = (v175 + 1);
      v23 = v163;
      if (v174 == v66)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v24 = sub_2304A6044();
  }

  v27 = MEMORY[0x277D84F98];
LABEL_46:
  v100 = v27 + 64;
  v101 = 1 << *(v27 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v102 & *(v27 + 64);
  v104 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  v173 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
  v176 = v27;

  v174 = v104;
  swift_beginAccess();
  v105 = 0;
  v106 = (v101 + 63) >> 6;
  LODWORD(v167) = *MEMORY[0x277D468C0];
  v171 = (v155 + 104);
  v170 = (v156 + 32);
  v172 = MEMORY[0x277D84F90];
  LODWORD(v169) = *MEMORY[0x277D468D0];
  *&v107 = 136446210;
  v168 = v107;
  while (v103)
  {
    v108 = v105;
LABEL_54:
    v109 = (v108 << 9) | (8 * __clz(__rbit64(v103)));
    v110 = *(v176[6] + v109);
    v103 &= v103 - 1;
    v111 = *(v176[7] + v109);
    v112 = *(v162 + v174);
    v175 = v110;
    if ((v112 & 0xC000000000000001) != 0)
    {
      swift_retain_n();

      v113 = sub_2304A6224();

      if (!v113)
      {
        goto LABEL_64;
      }

      v182 = v113;
      type metadata accessor for ClientDataSource();
      swift_dynamicCast();
      v114 = v180;
      goto LABEL_60;
    }

    v115 = *(v112 + 16);

    if (v115)
    {

      v116 = sub_230469CB8(v110);
      if ((v117 & 1) == 0)
      {
LABEL_64:

        goto LABEL_65;
      }

      v114 = *(*(v112 + 56) + 8 * v116);

LABEL_60:

      if (!v114)
      {
        goto LABEL_65;
      }

      sub_2304A5234();
      v118 = [*(v173 + v160) remoteToken];
      v119 = sub_2304A5D14();

      v120 = [v118 hasEntitlement_];

      if ((v120 & 1) == 0)
      {

        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v134 = sub_2304A5B74();
        __swift_project_value_buffer(v134, qword_28149B008);

        v135 = sub_2304A5B54();
        v136 = sub_2304A5E74();

        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          v180 = v165;
          *v137 = v168;
          v182 = v175;
          sub_2304A4984();
          sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
          LODWORD(v164) = v136;
          v138 = sub_2304A62D4();
          v140 = sub_23046A5C8(v138, v139, &v180);

          *(v137 + 4) = v140;
          _os_log_impl(&dword_230430000, v135, v164, "Cannot add a record to a zone without entitlement: %{public}s", v137, 0xCu);
          v141 = v165;
          __swift_destroy_boxed_opaque_existential_0Tm(v165);
          MEMORY[0x23191A000](v141, -1, -1);
          MEMORY[0x23191A000](v137, -1, -1);
        }

        (*v171)(v153, v167, v152);
        sub_2304A53D4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_23045A0B8(0, v172[2] + 1, 1, v172, &unk_27DB54068, &unk_2304A7470, MEMORY[0x277D468E0]);
        }

        v131 = v172[2];
        v142 = v172[3];
        v132 = v131 + 1;
        if (v131 >= v142 >> 1)
        {
          v172 = sub_23045A0B8(v142 > 1, v131 + 1, 1, v172, &unk_27DB54068, &unk_2304A7470, MEMORY[0x277D468E0]);
        }

        v133 = &v179;
        goto LABEL_83;
      }

      v121 = v166;
      sub_230497E44(v111, v158, v159);
      v166 = v121;
      if (v121)
      {

        goto LABEL_88;
      }

      v105 = v108;
    }

    else
    {
LABEL_65:

      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v122 = sub_2304A5B74();
      __swift_project_value_buffer(v122, qword_28149B008);

      v123 = sub_2304A5B54();
      v124 = sub_2304A5E74();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v180 = v165;
        *v125 = v168;
        v182 = v110;
        sub_2304A4984();
        sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
        v126 = sub_2304A62D4();
        v128 = sub_23046A5C8(v126, v127, &v180);

        *(v125 + 4) = v128;
        _os_log_impl(&dword_230430000, v123, v124, "Cannot add a record to a zone that does not exist: %{public}s", v125, 0xCu);
        v129 = v165;
        __swift_destroy_boxed_opaque_existential_0Tm(v165);
        MEMORY[0x23191A000](v129, -1, -1);
        MEMORY[0x23191A000](v125, -1, -1);
      }

      (*v171)(v153, v169, v152);
      sub_2304A53D4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v172 = sub_23045A0B8(0, v172[2] + 1, 1, v172, &unk_27DB54068, &unk_2304A7470, MEMORY[0x277D468E0]);
      }

      v131 = v172[2];
      v130 = v172[3];
      v132 = v131 + 1;
      if (v131 >= v130 >> 1)
      {
        v172 = sub_23045A0B8(v130 > 1, v131 + 1, 1, v172, &unk_27DB54068, &unk_2304A7470, MEMORY[0x277D468E0]);
      }

      v133 = &v180;
LABEL_83:
      v143 = *(v133 - 32);
      v144 = v172;
      v172[2] = v132;
      (*(v156 + 32))(v144 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v131, v143, v154);
      v105 = v108;
    }
  }

  while (1)
  {
    v108 = v105 + 1;
    if (__OFADD__(v105, 1))
    {
      __break(1u);
      return;
    }

    if (v108 >= v106)
    {
      break;
    }

    v103 = *(v100 + 8 * v108);
    ++v105;
    if (v103)
    {
      goto LABEL_54;
    }
  }

  if (v172[2])
  {
    v145 = v156;
    v146 = *(v156 + 16);
    v147 = v151;
    v148 = v154;
    v146(v151, v172 + ((*(v156 + 80) + 32) & ~*(v156 + 80)), v154);

    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    swift_allocError();
    v146(v149, v147, v148);
    swift_willThrow();
    (*(v145 + 8))(v147, v148);

    return;
  }

LABEL_88:
}

uint64_t sub_230445334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_2304A5FB4();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_230460148(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_2304A5294();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

void sub_2304453F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = *(sub_2304A4FF4() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      v14 = MEMORY[0x2319199F0]();
      sub_2304454F4(v12, a2, a3, a4, &v15);
      if (v5)
      {
        break;
      }

      v5 = 0;
      objc_autoreleasePoolPop(v14);
      v12 += v13;
      if (!--v6)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v14);
  }
}

void sub_2304454F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v76 = a5;
  v69 = a4;
  v71 = a3;
  v7 = sub_2304A53C4();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2304A4FF4();
  v77 = *(v72 - 8);
  v10 = *(v77 + 64);
  v11 = MEMORY[0x28223BE20](v72);
  v68 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v67 - v16;
  sub_2304A4984();
  sub_2304A4FB4();
  sub_2304A4F84();
  v18 = sub_2304A4974();

  v19 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  swift_beginAccess();
  v20 = *(a2 + v19);

  v21 = sub_230496468(v18, v20);

  if (!v21)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v33 = sub_2304A5B74();
    __swift_project_value_buffer(v33, qword_28149B008);
    v34 = v77;
    v35 = v72;
    (*(v77 + 16))(v17, a1, v72);
    v36 = sub_2304A5B54();
    v37 = sub_2304A5E74();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v78 = v39;
      *v38 = 136446210;
      sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
      v40 = sub_2304A62D4();
      v42 = v41;
      (*(v34 + 8))(v17, v35);
      v43 = sub_23046A5C8(v40, v42, &v78);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_230430000, v36, v37, "Cannot remove a record from a zone that does not exist: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x23191A000](v39, -1, -1);
      MEMORY[0x23191A000](v38, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v17, v35);
    }

    (*(v73 + 104))(v75, *MEMORY[0x277D468D0], v74);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    v32 = swift_allocError();
    sub_2304A53D4();
    swift_willThrow();
    goto LABEL_23;
  }

  v22 = sub_230496CAC(a1, 0, 0);
  if (!v22)
  {
    v44 = v77;
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v45 = sub_2304A5B74();
    __swift_project_value_buffer(v45, qword_28149B008);
    v46 = v72;
    (*(v44 + 16))(v15, a1, v72);
    v47 = sub_2304A5B54();
    v48 = sub_2304A5E74();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v78 = v71;
      *v49 = 136446210;
      sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
      v50 = sub_2304A62D4();
      v52 = v51;
      (*(v44 + 8))(v15, v46);
      v53 = sub_23046A5C8(v50, v52, &v78);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_230430000, v47, v48, "Cannot remove a record that does not exist: %{public}s", v49, 0xCu);
      v54 = v71;
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x23191A000](v54, -1, -1);
      MEMORY[0x23191A000](v49, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v15, v46);
    }

    (*(v73 + 104))(v75, *MEMORY[0x277D468D0], v74);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    v32 = swift_allocError();
    sub_2304A53D4();
    swift_willThrow();

LABEL_23:

    goto LABEL_24;
  }

  v23 = v22;
  sub_2304A5234();
  v24 = [*(v71 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection) remoteToken];
  v25 = sub_2304A5D14();

  v26 = [v24 hasEntitlement_];

  v27 = v77;
  if ((v26 & 1) == 0)
  {
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v55 = sub_2304A5B74();
    __swift_project_value_buffer(v55, qword_28149B008);
    v56 = v23;
    v57 = sub_2304A5B54();
    v58 = sub_2304A5E74();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v78 = v70;
      *v59 = 136446210;
      v60 = v68;
      LODWORD(v69) = v58;
      sub_2304A5944();
      sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
      v61 = v72;
      v62 = sub_2304A62D4();
      v71 = v56;
      v64 = v63;
      (*(v27 + 8))(v60, v61);
      v65 = sub_23046A5C8(v62, v64, &v78);
      v56 = v71;

      *(v59 + 4) = v65;
      _os_log_impl(&dword_230430000, v57, v69, "Cannot remove a record to a zone without entitlement: %{public}s", v59, 0xCu);
      v66 = v70;
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      MEMORY[0x23191A000](v66, -1, -1);
      MEMORY[0x23191A000](v59, -1, -1);
    }

    (*(v73 + 104))(v75, *MEMORY[0x277D468C0], v74);
    sub_2304A53E4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    v32 = swift_allocError();
    sub_2304A53D4();
    swift_willThrow();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54020, &unk_2304A8040);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2304A7270;
  sub_2304A5944();
  v31 = v70;
  sub_23049D5C0(v30, v69);
  v32 = v31;

  if (v31)
  {
LABEL_24:
    *v76 = v32;
  }
}

void sub_230445F6C()
{
  swift_getObjectType();
  v2 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_lock(v2 + 4);
  sub_230464E54(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_230446050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v156 = a5;
  v155 = a4;
  v161 = a3;
  v151 = a6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54050, &qword_2304A7468);
  v8 = *(*(v175 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v175);
  v174 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v173 = &v148 - v12;
  MEMORY[0x28223BE20](v11);
  v172 = &v148 - v13;
  v14 = sub_2304A4FF4();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v170 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v160 = &v148 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v154 = &v148 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v153 = &v148 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v152 = &v148 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v27 = MEMORY[0x28223BE20](v26);
  v164 = &v148 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v33 = &v148 - v32;
  v186 = MEMORY[0x277D84F98];
  v34 = *(a1 + 16);
  v179 = v29;
  v176 = v30;
  if (v34)
  {
    v150 = v31;
    v158 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
    v35 = v30;
    v167 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v36 = a1 + v167;
    v169 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
    swift_beginAccess();
    v159 = 0;
    v37 = *(v35 + 16);
    v35 += 16;
    v180 = (v35 - 8);
    v181 = v37;
    v166 = (v35 + 16);
    v38 = MEMORY[0x277D84F90];
    v182 = v35;
    v39 = *(v35 + 56);
    *&v40 = 136446210;
    v162 = v40;
    v165 = a2;
    v171 = v33;
    v168 = v39;
    v37(v33, v36, v14);
    while (1)
    {
      if (*(v186 + 16))
      {
        sub_230469D9C(v33);
        if (v41)
        {
          (*v180)(v33, v14);
          goto LABEL_4;
        }
      }

      v178 = v38;
      sub_2304A4984();
      sub_2304A4FB4();
      sub_2304A4F84();
      v42 = sub_2304A4974();

      v43 = *(a2 + v169);
      v177 = v42;
      if ((v43 & 0xC000000000000001) != 0)
      {

        v44 = sub_2304A6224();

        if (!v44)
        {

          v33 = v171;
          goto LABEL_26;
        }

        v183 = v44;
        type metadata accessor for ClientDataSource();
        swift_dynamicCast();
        v45 = v185;

        v33 = v171;
        if (!v45)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v33 = v171;
        if (!*(v43 + 16))
        {
          goto LABEL_26;
        }

        v46 = sub_230469CB8(v42);
        if ((v47 & 1) == 0)
        {

LABEL_26:
          if (qword_281499E38 != -1)
          {
            swift_once();
          }

          v73 = sub_2304A5B74();
          __swift_project_value_buffer(v73, qword_28149B008);
          v74 = v164;
          v181(v164, v33, v14);
          v75 = sub_2304A5B54();
          v76 = sub_2304A5E74();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v185 = v78;
            *v77 = v162;
            sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
            v79 = sub_2304A62D4();
            v81 = v80;
            v82 = v74;
            v83 = *v180;
            (*v180)(v82, v179);
            v84 = sub_23046A5C8(v79, v81, &v185);
            v14 = v179;

            *(v77 + 4) = v84;
            _os_log_impl(&dword_230430000, v75, v76, "Cannot find a record in a zone that does not exist: %{public}s", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v78);
            v85 = v78;
            v33 = v171;
            MEMORY[0x23191A000](v85, -1, -1);
            MEMORY[0x23191A000](v77, -1, -1);
          }

          else
          {

            v86 = v74;
            v83 = *v180;
            (*v180)(v86, v14);
          }

          v39 = v168;
          v181(v170, v33, v14);
          v87 = v178;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = sub_23045A0B8(0, v87[2] + 1, 1, v87, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
          }

          v89 = v87[2];
          v88 = v87[3];
          v90 = v87;
          if (v89 >= v88 >> 1)
          {
            v90 = sub_23045A0B8(v88 > 1, v89 + 1, 1, v87, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
          }

          v83(v33, v14);
          *(v90 + 16) = v89 + 1;
          v38 = v90;
          (*v166)(v90 + v167 + v89 * v39, v170, v14);
LABEL_36:
          a2 = v165;
          goto LABEL_4;
        }

        v45 = *(*(v43 + 56) + 8 * v46);

        if (!v45)
        {
          goto LABEL_26;
        }
      }

      sub_2304A5234();
      v48 = [*(v161 + v158) remoteToken];
      v49 = sub_2304A5D14();

      v50 = [v48 hasEntitlement_];

      v163 = v45;
      if ((v50 & 1) == 0)
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v61 = sub_2304A5B74();
        __swift_project_value_buffer(v61, qword_28149B008);
        v62 = v154;
        v181(v154, v33, v14);
        v63 = sub_2304A5B54();
        v64 = sub_2304A5E74();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v185 = v157;
          *v65 = v162;
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
          v66 = sub_2304A62D4();
          v68 = v67;
          v69 = v62;
          v70 = *v180;
          (*v180)(v69, v14);
          v71 = sub_23046A5C8(v66, v68, &v185);
          v33 = v171;

          *(v65 + 4) = v71;
          _os_log_impl(&dword_230430000, v63, v64, "Cannot access a record in a zone without entitlement: %{public}s", v65, 0xCu);
          v72 = v157;
          __swift_destroy_boxed_opaque_existential_0Tm(v157);
          MEMORY[0x23191A000](v72, -1, -1);
          MEMORY[0x23191A000](v65, -1, -1);
        }

        else
        {

          v91 = v62;
          v70 = *v180;
          (*v180)(v91, v14);
        }

        v39 = v168;
        v181(v160, v33, v14);
        v92 = v178;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_23045A0B8(0, v92[2] + 1, 1, v92, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        v94 = v92[2];
        v93 = v92[3];
        v95 = v92;
        if (v94 >= v93 >> 1)
        {
          v95 = sub_23045A0B8(v93 > 1, v94 + 1, 1, v92, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        v70(v33, v14);
        *(v95 + 16) = v94 + 1;
        v38 = v95;
        (*v166)(v95 + v167 + v94 * v39, v160, v14);
        goto LABEL_36;
      }

      v51 = sub_230496CAC(v33, v155 & 1, v156 & 1);
      v157 = v51;
      if (v51)
      {
        v52 = v51;
        v53 = v152;
        v181(v152, v33, v14);
        v54 = v52;
        v55 = v52;
        v38 = v54;
        sub_230477ABC(v55, v53);
        v56 = sub_2304A5954();
        sub_2304A4FA4();
        v57 = sub_2304A5D64();

        v58 = v56 + v57;
        if (__OFADD__(v56, v57))
        {
          goto LABEL_86;
        }

        v59 = __OFADD__(v159, v58);
        v60 = v159 + v58;
        if (v59)
        {
          goto LABEL_87;
        }

        v38 = v178;
        v39 = v168;
      }

      else
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v96 = sub_2304A5B74();
        __swift_project_value_buffer(v96, qword_28149B008);
        v97 = v150;
        v181(v150, v33, v14);
        v98 = sub_2304A5B54();
        v99 = sub_2304A5E74();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v148 = v100;
          v149 = swift_slowAlloc();
          v185 = v149;
          *v100 = v162;
          sub_230464B8C(&qword_281499F78, MEMORY[0x277D46790]);
          v101 = sub_2304A62D4();
          v103 = v102;
          (*v180)(v97, v14);
          v104 = sub_23046A5C8(v101, v103, &v185);
          v33 = v171;

          v105 = v148;
          *(v148 + 1) = v104;
          v106 = v105;
          _os_log_impl(&dword_230430000, v98, v99, "Cannot return a record that does not exist: %{public}s", v105, 0xCu);
          v107 = v149;
          __swift_destroy_boxed_opaque_existential_0Tm(v149);
          MEMORY[0x23191A000](v107, -1, -1);
          MEMORY[0x23191A000](v106, -1, -1);
        }

        else
        {

          (*v180)(v97, v14);
        }

        v39 = v168;
        v181(v153, v33, v14);
        v108 = v178;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_23045A0B8(0, v108[2] + 1, 1, v108, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        v110 = v108[2];
        v109 = v108[3];
        v111 = v108;
        if (v110 >= v109 >> 1)
        {
          v111 = sub_23045A0B8(v109 > 1, v110 + 1, 1, v108, &qword_27DB54020, &unk_2304A8040, MEMORY[0x277D46790]);
        }

        *(v111 + 16) = v110 + 1;
        v38 = v111;
        (*v166)(v111 + v167 + v110 * v39, v153, v14);
        v60 = v159;
      }

      v159 = v60;
      if (v60 > 512000)
      {
        if (qword_281499E38 == -1)
        {
          goto LABEL_77;
        }

        goto LABEL_88;
      }

      (*v180)(v33, v14);

LABEL_4:
      v36 += v39;
      if (!--v34)
      {
        goto LABEL_56;
      }

      v181(v33, v36, v14);
    }
  }

  v38 = MEMORY[0x277D84F90];
LABEL_56:
  while (1)
  {
    swift_beginAccess();
    v112 = v186;
    v113 = *(v186 + 16);
    if (!v113)
    {
      break;
    }

    v178 = v38;
    v184 = MEMORY[0x277D84F90];

    sub_2304A6154();
    v114 = v112 + 64;
    v115 = -1 << *(v112 + 32);
    v38 = sub_2304A5FB4();
    v116 = 0;
    v177 = v176 + 16;
    v171 = v176 + 32;
    v170 = (v176 + 8);
    v167 = v112 + 72;
    v168 = v113;
    v169 = v112 + 64;
    while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(v112 + 32))
    {
      v120 = v38 >> 6;
      v33 = 1 << v38;
      if ((*(v114 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
      {
        goto LABEL_82;
      }

      v121 = *(v112 + 36);
      v180 = v116;
      v181 = v121;
      v122 = v176;
      v123 = v172;
      (*(v176 + 16))(v172, *(v112 + 48) + *(v176 + 72) * v38, v14);
      v124 = *(*(v112 + 56) + 8 * v38);
      v125 = v112;
      v126 = v173;
      (*(v122 + 32))(v173, v123, v14);
      v127 = v175;
      *&v126[*(v175 + 48)] = v124;
      v128 = v126;
      v129 = v174;
      sub_230464ABC(v128, v174, &unk_27DB54050, &qword_2304A7468);
      v182 = *(v129 + *(v127 + 48));
      v130 = *(v122 + 8);
      v131 = v124;
      v132 = v129;
      v112 = v125;
      v130(v132, v14);
      sub_2304A6134();
      v133 = *(v184 + 16);
      sub_2304A6164();
      sub_2304A6174();
      sub_2304A6144();
      v117 = 1 << *(v125 + 32);
      if (v38 >= v117)
      {
        goto LABEL_83;
      }

      v114 = v169;
      v134 = *(v169 + 8 * v120);
      if ((v134 & v33) == 0)
      {
        goto LABEL_84;
      }

      if (v181 != *(v112 + 36))
      {
        goto LABEL_85;
      }

      v135 = v134 & (-2 << (v38 & 0x3F));
      if (v135)
      {
        v117 = __clz(__rbit64(v135)) | v38 & 0x7FFFFFFFFFFFFFC0;
        v14 = v179;
        v118 = v180;
        v119 = v168;
      }

      else
      {
        v136 = v120 << 6;
        v137 = v120 + 1;
        v138 = (v167 + 8 * v120);
        v14 = v179;
        v119 = v168;
        while (v137 < (v117 + 63) >> 6)
        {
          v139 = *v138++;
          v33 = v139;
          v136 += 64;
          ++v137;
          if (v139)
          {
            sub_230433B44(v38, v181, 0);
            v117 = __clz(__rbit64(v33)) + v136;
            goto LABEL_72;
          }
        }

        sub_230433B44(v38, v181, 0);
LABEL_72:
        v118 = v180;
      }

      v116 = (v118 + 1);
      v38 = v117;
      if (v116 == v119)
      {
        result = swift_bridgeObjectRelease_n();
        v141 = v184;
        v38 = v178;
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
LABEL_77:
    v143 = sub_2304A5B74();
    __swift_project_value_buffer(v143, qword_28149B008);

    v144 = v38;
    v145 = sub_2304A5B54();
    v146 = sub_2304A5E94();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 134349568;
      *(v147 + 4) = v159;
      *(v147 + 12) = 2050;
      swift_beginAccess();
      *(v147 + 14) = *(v186 + 16);
      *(v147 + 22) = 2050;
      *(v147 + 24) = *(v144 + 16);

      _os_log_impl(&dword_230430000, v145, v146, "Batch size exceeded: %{public}ld; returning %{public}ld records; %{public}ld failures", v147, 0x20u);
      MEMORY[0x23191A000](v147, -1, -1);
    }

    else
    {
    }

    v38 = v144;

    (*v180)(v33, v14);
  }

  v141 = MEMORY[0x277D84F90];
LABEL_75:
  v142 = v151;
  *v151 = v141;
  v142[1] = v38;
  return result;
}

uint64_t sub_23044747C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v117 = a3;
  v106 = a4;
  v6 = sub_2304A53C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2304A5224();
  v11 = *(v134 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v134);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54030, &qword_2304A7450);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v129 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v128 = &v102 - v21;
  v22 = sub_2304A5294();
  v23 = *(*(v22 - 8) + 64);
  result = MEMORY[0x28223BE20](v22);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D84F90];
  v137 = MEMORY[0x277D84F90];
  v108 = *(a1 + 16);
  if (!v108)
  {
LABEL_47:
    *v106 = v29;
    return result;
  }

  v103 = v7;
  v104 = v6;
  v105 = v10;
  v30 = 0;
  v115 = (a2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator);
  v32 = *(v25 + 16);
  v31 = v25 + 16;
  v113 = v32;
  v33 = *(v31 + 64);
  v130 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources;
  v112 = a1 + ((v33 + 32) & ~v33);
  v120 = v11 + 16;
  v116 = OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_connection;
  v132 = (v11 + 32);
  v127 = v11;
  v123 = (v11 + 8);
  v109 = (v31 - 8);
  v111 = *(v31 + 56);
  *&v26 = 136446210;
  v118 = v26;
  v133 = v15;
  v110 = v22;
  v131 = v28;
  v126 = a2;
  v107 = v31;
LABEL_4:
  v114 = v30 + 1;
  v113(v28, v112 + v111 * v30, v22);
  v34 = sub_2304A5244();
  v36 = v34 + 64;
  v35 = *(v34 + 64);
  v122 = v34;
  v37 = 1 << *(v34 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & v35;
  result = swift_beginAccess();
  v40 = 0;
  v41 = (v37 + 63) >> 6;
  v42 = v127;
  v124 = v41;
  v125 = v36;
  while (1)
  {
    if (!v39)
    {
      if (v41 <= v40 + 1)
      {
        v45 = v40 + 1;
      }

      else
      {
        v45 = v41;
      }

      v46 = v45 - 1;
      while (1)
      {
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v44 >= v41)
        {
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
          v80 = v129;
          (*(*(v79 - 8) + 56))(v129, 1, 1, v79);
          v39 = 0;
          v40 = v46;
          v57 = v80;
          v53 = v134;
          goto LABEL_22;
        }

        v39 = *(v36 + 8 * v44);
        ++v40;
        if (v39)
        {
          v40 = v44;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_46:
      v29 = v137;
      goto LABEL_47;
    }

    v44 = v40;
LABEL_21:
    v47 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v48 = v47 | (v44 << 6);
    v49 = v121;
    v50 = (*(v122 + 48) + 16 * v48);
    v51 = *v50;
    v52 = v50[1];
    v53 = v134;
    (*(v42 + 16))(v121, *(v122 + 56) + *(v42 + 72) * v48, v134);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
    v55 = *(v54 + 48);
    v56 = v129;
    *v129 = v51;
    *(v56 + 1) = v52;
    v57 = v56;
    (*(v42 + 32))(&v56[v55], v49, v53);
    (*(*(v54 - 8) + 56))(v57, 0, 1, v54);

    v15 = v133;
LABEL_22:
    v58 = v57;
    v59 = v128;
    sub_230464ABC(v58, v128, &qword_27DB54030, &qword_2304A7450);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54038, &qword_2304A7458);
    if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
    {

      v28 = v131;
      v22 = v110;
      result = (*v109)(v131, v110);
      v30 = v114;
      if (v114 != v108)
      {
        goto LABEL_4;
      }

      goto LABEL_46;
    }

    v61 = *(v59 + 8);

    (*v132)(v15, v59 + *(v60 + 48), v53);
    sub_2304A4984();
    sub_2304A5214();
    sub_2304A5284();
    v62 = sub_2304A4974();

    v63 = *(v126 + v130);
    if ((v63 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v63 + 16))
    {
      v67 = *(v126 + v130);

      v68 = sub_230469CB8(v62);
      if (v69)
      {
        v70 = *(*(v63 + 56) + 8 * v68);

        if (v70)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

LABEL_36:
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v81 = sub_2304A5B74();
    __swift_project_value_buffer(v81, qword_28149B008);

    v82 = sub_2304A5B54();
    v83 = sub_2304A5E74();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v135 = v62;
      v136 = v85;
      *v84 = v118;
      sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
      v86 = sub_2304A62D4();
      v88 = sub_23046A5C8(v86, v87, &v136);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_230430000, v82, v83, "Cannot find a zone that does not exist: %{public}s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v85);
      MEMORY[0x23191A000](v85, -1, -1);
      MEMORY[0x23191A000](v84, -1, -1);
    }

    else
    {
    }

    v15 = v133;
    v43 = v134;
LABEL_10:
    v36 = v125;
    result = (*v123)(v15, v43);
    v42 = v127;
    v41 = v124;
  }

  if (v63 < 0)
  {
    v64 = *(v126 + v130);
  }

  v65 = *(v126 + v130);

  v66 = sub_2304A6224();

  if (!v66)
  {
    goto LABEL_36;
  }

  v135 = v66;
  type metadata accessor for ClientDataSource();
  swift_dynamicCast();
  if (!v136)
  {
    goto LABEL_36;
  }

LABEL_32:
  sub_2304A5234();
  v71 = [*(v117 + v116) remoteToken];
  v72 = sub_2304A5D14();

  v73 = [v71 hasEntitlement_];

  if (v73)
  {
    v74 = v115[8];
    __swift_project_boxed_opaque_existential_5Tm(v115, v115[3]);
    v75 = sub_2304A42B4();
    MEMORY[0x28223BE20](v75);
    v15 = v133;
    v76 = v131;
    *(&v102 - 2) = v133;
    *(&v102 - 1) = v76;
    v77 = v119;
    v78 = sub_2304485C0(sub_2304643C4, (&v102 - 4), v75);
    v119 = v77;

    sub_230448A94(v78, &qword_27DB53F80, &qword_2304A73E0, MEMORY[0x277D46528], MEMORY[0x277D46528]);

    v43 = v134;
    goto LABEL_10;
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v89 = sub_2304A5B74();
  __swift_project_value_buffer(v89, qword_28149B008);

  v90 = sub_2304A5B54();
  v91 = sub_2304A5E74();

  v92 = os_log_type_enabled(v90, v91);
  v93 = v110;
  if (v92)
  {
    v94 = v62;
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v135 = v94;
    v136 = v96;
    *v95 = v118;
    sub_230464B8C(&qword_27DB54028, MEMORY[0x277D464B8]);
    v97 = sub_2304A62D4();
    v99 = sub_23046A5C8(v97, v98, &v136);

    *(v95 + 4) = v99;
    _os_log_impl(&dword_230430000, v90, v91, "Cannot access a record in a zone without entitlement: %{public}s", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v96);
    MEMORY[0x23191A000](v96, -1, -1);
    MEMORY[0x23191A000](v95, -1, -1);
  }

  v100 = v134;
  v101 = v131;
  (*(v103 + 104))(v105, *MEMORY[0x277D468C0], v104);
  sub_2304A53E4();
  sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
  swift_allocError();
  sub_2304A53D4();
  swift_willThrow();

  (*v123)(v133, v100);
  return (*v109)(v101, v93);
}