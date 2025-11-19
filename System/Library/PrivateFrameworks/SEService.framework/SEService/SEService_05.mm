uint64_t sub_1C7C1FE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C2174C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C1FE34(uint64_t a1)
{
  v2 = sub_1C7C21318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C1FE70(uint64_t a1)
{
  v2 = sub_1C7C21318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SESnapshot.ProposedKernelInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264328, &qword_1C7C8F980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[2] = v1[2];
  v14[3] = v9;
  v14[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C21318();
  sub_1C7C7DBA4();
  v18 = 0;
  sub_1C7C7DA34();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v17 = 1;
  sub_1C7C7DA34();
  v16 = 2;
  sub_1C7C7DA34();
  v15 = 3;
  sub_1C7C7DA34();
  return (*(v5 + 8))(v8, v4);
}

uint64_t SESnapshot.ProposedKernelInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264338, &qword_1C7C8F988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C21318();
  sub_1C7C7DB94();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_1C7C7D9A4();
    v19 = 1;
    v12 = sub_1C7C7D9A4();
    v18 = 2;
    v16 = sub_1C7C7D9A4();
    v17 = 3;
    v15 = sub_1C7C7D9A4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    v14 = v15;
    a2[2] = v16;
    a2[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t static SESnapshot.canFit(proposedKernelInfo:reclaimUnusedSpace:session:)(_OWORD *a1, char a2, uint64_t a3)
{
  *(v3 + 224) = a3;
  *(v3 + 81) = a2;
  v5 = type metadata accessor for SERXPCRequest();
  *(v3 + 232) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 240) = swift_task_alloc();
  v7 = a1[1];
  *(v3 + 248) = *a1;
  *(v3 + 264) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C7C20350, 0, 0);
}

uint64_t sub_1C7C20350()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v2 = *(v0 + 81) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (qword_1EC2621D8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 264);
    v3 = *(v0 + 272);
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = off_1EC264760;
    v8 = type metadata accessor for MemoryUsage();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = v6;
    *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = v4;
    *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = v5;
    *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = v3;
    *(v0 + 160) = v9;
    *(v0 + 168) = v8;
    v10 = objc_msgSendSuper2((v0 + 160), sel_init);
    *(v0 + 280) = v10;
    if (v1)
    {
      v11 = *(v0 + 224);
      v12 = sub_1C7C54984(v0 + 136);
    }

    else
    {
      v12 = 0;
      v13 = 0xF000000000000000;
    }

    *(v0 + 296) = v12;
    *(v0 + 304) = v13;
    *(v0 + 288) = 0;
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v20 = *(v0 + 81);
    *v18 = v10;
    *(v18 + 8) = v20;
    *(v18 + 16) = v12;
    *(v18 + 24) = v13;
    *(v18 + 32) = 0;
    v21 = v12;
    v22 = v13;
    swift_storeEnumTagMultiPayload();
    v23 = v7[2];
    *(v0 + 312) = v23;
    v24 = v10;
    sub_1C7C19710(v21, v22);

    return MEMORY[0x1EEE6DFA0](sub_1C7C205C0, v23, 0);
  }

  else
  {
    sub_1C7BEADA0();
    swift_allocError();
    *v14 = 0xD00000000000005ALL;
    *(v14 + 8) = 0x80000001C7C9E420;
    *(v14 + 16) = 0;
    swift_willThrow();
    v15 = *(v0 + 240);

    v16 = *(v0 + 8);

    return v16(0);
  }
}

uint64_t sub_1C7C205C0()
{
  v1 = v0[39];
  v2 = v0[36];
  sub_1C7C35A1C(v0[30], v0 + 8);
  v0[40] = v2;
  if (v2)
  {
    v3 = sub_1C7C208E0;
  }

  else
  {
    v3 = sub_1C7C20654;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C7C20654()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 >> 4)
  {
    if (v3 >> 4 == 8)
    {
      v5 = *(v0 + 296);
      v4 = *(v0 + 304);
      v6 = *(v0 + 280);
      sub_1C7C21218(*(v0 + 240));
      sub_1C7BE49C8(v5, v4);

      v7 = *(v0 + 8);
      v8 = v1 & 1;
      goto LABEL_7;
    }

    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v11 = *(v0 + 280);
    v14 = *(v0 + 240);
    sub_1C7C7D794();
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    MEMORY[0x1CCA6B380](0x6465746365707845, 0xE900000000000020);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1C7C21274;
    *(v15 + 24) = 0;
    *(v0 + 192) = sub_1C7C218B4;
    *(v0 + 200) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264320, &qword_1C7C90C80);
    v16 = sub_1C7C7D324();
    MEMORY[0x1CCA6B380](v16);

    MEMORY[0x1CCA6B380](0x20746F67202CLL, 0xE600000000000000);
    *(v0 + 112) = v1;
    *(v0 + 120) = v2;
    *(v0 + 128) = v3;
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](46, 0xE100000000000000);
    sub_1C7C212A4(v1, v2, v3);
    v1 = *(v0 + 176);
    v2 = *(v0 + 184);
    sub_1C7C21218(v14);
    sub_1C7BE49C8(v13, v12);
    LOBYTE(v3) = 0;
  }

  else
  {
    v10 = *(v0 + 296);
    v9 = *(v0 + 304);
    v11 = *(v0 + 280);
    sub_1C7C21218(*(v0 + 240));
    sub_1C7BE49C8(v10, v9);
  }

  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  sub_1C7C15E5C();
  swift_willThrowTypedImpl();
  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v19 = *(v0 + 104);
  swift_allocError();
  *v20 = v17;
  *(v20 + 8) = v18;
  *(v20 + 16) = v19;
  v21 = *(v0 + 240);

  v7 = *(v0 + 8);
  v8 = 0;
LABEL_7:

  return v7(v8);
}

uint64_t sub_1C7C208E0()
{
  v32 = v0;
  sub_1C7C21218(*(v0 + 240));
  if (qword_1EC2621E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC264768);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = *(v0 + 56);
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v31);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "SERXPC: Unhandled error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = *(v0 + 320);
  v17 = *(v0 + 296);
  v16 = *(v0 + 304);
  v18 = *(v0 + 280);
  swift_getErrorValue();
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  v21 = *(v0 + 32);
  v22 = sub_1C7C7DB04();
  v24 = v23;

  sub_1C7BE49C8(v17, v16);
  *(v0 + 88) = v22;
  *(v0 + 96) = v24;
  *(v0 + 104) = 1;
  sub_1C7C15E5C();
  swift_willThrowTypedImpl();
  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  LOBYTE(v24) = *(v0 + 104);
  swift_allocError();
  *v27 = v25;
  *(v27 + 8) = v26;
  *(v27 + 16) = v24;
  v28 = *(v0 + 240);

  v29 = *(v0 + 8);

  return v29(0);
}

uint64_t SESnapshot.canFit(proposedUsage:)(void *a1)
{
  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v3, qword_1EC288338);
  v4 = a1;
  v5 = sub_1C7C7D194();
  v6 = sub_1C7C7D5A4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1C7BE42F8(0xD000000000000016, 0x80000001C7C9E480, &v47);
    *(v7 + 12) = 2112;
    *(v7 + 14) = v4;
    *v8 = v4;
    v10 = v4;
    _os_log_impl(&dword_1C7B9A000, v5, v6, "%s proposedKernelInfo = %@ ", v7, 0x16u);
    sub_1C7C2136C(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x1CCA6C990](v9, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v11 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  result = swift_beginAccess();
  v13 = *&v4[v11];
  v14 = v13 + 31;
  if (v13 >= 0)
  {
    v14 = *&v4[v11];
  }

  v15 = v14 >> 5;
  if ((v15 - 0x40000000000000) >> 55 != 511)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v15 << 9;
  if ((v13 & 0x800000000000001FLL) >= 1)
  {
    v17 = __OFADD__(v16, 512);
    v16 += 512;
    if (v17)
    {
      goto LABEL_30;
    }
  }

  v18 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = *(v19 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
  v21 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  result = swift_beginAccess();
  v24 = *&v4[v23];
  v17 = __OFSUB__(v22, v24);
  v25 = v22 - v24;
  if (v17)
  {
    goto LABEL_23;
  }

  v17 = __OFSUB__(v25, v16);
  v26 = v25 - v16;
  if (v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v26 - 25600;
  if (__OFADD__(v26, -25600))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  v29 = *(v20 + v28);
  v30 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  result = swift_beginAccess();
  v31 = *&v4[v30];
  v32 = v29 - v31;
  if (__OFSUB__(v29, v31))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  v34 = *(v20 + v33);
  v35 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  result = swift_beginAccess();
  v36 = *&v4[v35];
  v37 = v34 - v36;
  if (__OFSUB__(v34, v36))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = *(v19 + OBJC_IVAR____TtC9SEService7SEState_seType);
  v39 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  result = swift_beginAccess();
  v40 = *(v20 + v39);
  v17 = __OFADD__(v40, v13);
  v41 = v40 + v13;
  if (v17)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v42 = 14000;
  if (v38 < 3)
  {
    v42 = 24526;
  }

  v43 = v42 - v41;
  if (__OFSUB__(v42, v41))
  {
    goto LABEL_29;
  }

  v44 = sub_1C7C7D194();
  v45 = sub_1C7C7D5A4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134218752;
    *(v46 + 4) = v27;
    *(v46 + 12) = 2048;
    *(v46 + 14) = v32;
    *(v46 + 22) = 2048;
    *(v46 + 24) = v37;
    *(v46 + 32) = 2048;
    *(v46 + 34) = v43;
    _os_log_impl(&dword_1C7B9A000, v44, v45, "nvm status: %ld, cor status: %ld, cod status: %ld, idx status: %ld", v46, 0x2Au);
    MEMORY[0x1CCA6C990](v46, -1, -1);
  }

  return (v27 | v32 | v37 | v43) >= 0;
}

uint64_t sub_1C7C20FA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6513517 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6516333 && a2 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 828664167 && a2 == 0xE400000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 845441383 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

id sub_1C7C21108(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = (a1 + 40);
  v5 = v3 + 1;
  while (--v5)
  {
    v6 = v4 + 6;
    v7 = *(v4 - 1);
    v8 = *v4;
    v21 = 0;
    v9 = sub_1C7C12DC0(v7, v8, &v21);
    v4 = v6;
    v10 = __OFADD__(v2, v9);
    v2 += v9;
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  v11 = (a1 + 40);
  v12 = v3 + 1;
  while (--v12)
  {
    v13 = v11 + 6;
    v14 = *(v11 - 1);
    v15 = *v11;
    v21 = 1;
    v16 = sub_1C7C12DC0(v14, v15, &v21);
    v11 = v13;
    v10 = __OFADD__(v5, v16);
    v5 += v16;
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  v17 = type metadata accessor for MemoryUsage();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = v2;
  *&v18[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = v5;
  *&v18[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = 0;
  *&v18[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = 0;
  v20.receiver = v18;
  v20.super_class = v17;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1C7C21218(uint64_t a1)
{
  v2 = type metadata accessor for SERXPCRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7C21278(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_1C7C212A4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 4;
  if (v3 > 3)
  {
    if ((a3 >> 4) > 5u)
    {
      if (v3 == 6)
      {
LABEL_15:

        return;
      }

      if (v3 == 7)
      {
      }
    }

    else if (v3 == 4 || v3 == 5)
    {
      goto LABEL_15;
    }
  }

  else if ((a3 >> 4) > 1u)
  {
    if (v3 == 2 || v3 == 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a3 >> 4)
    {
      goto LABEL_15;
    }

    sub_1C7C15F78(a1, a2, a3);
  }
}

unint64_t sub_1C7C21318()
{
  result = qword_1EC264330;
  if (!qword_1EC264330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264330);
  }

  return result;
}

uint64_t sub_1C7C2136C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264340, &qword_1C7C8F998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1C7C213E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1C7C21444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C7C214C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C7C214E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1C7C21540()
{
  result = qword_1EC264348;
  if (!qword_1EC264348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264348);
  }

  return result;
}

unint64_t sub_1C7C21598()
{
  result = qword_1EC264350;
  if (!qword_1EC264350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264350);
  }

  return result;
}

unint64_t sub_1C7C215F0()
{
  result = qword_1EC264358;
  if (!qword_1EC264358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264358);
  }

  return result;
}

unint64_t sub_1C7C21648()
{
  result = qword_1EC264360;
  if (!qword_1EC264360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264360);
  }

  return result;
}

unint64_t sub_1C7C216A0()
{
  result = qword_1EC264368;
  if (!qword_1EC264368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264368);
  }

  return result;
}

unint64_t sub_1C7C216F8()
{
  result = qword_1EC264370;
  if (!qword_1EC264370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264370);
  }

  return result;
}

uint64_t sub_1C7C2174C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7173742 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6582115 && a2 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7499619 && a2 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7890025 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t static SESOnceOnlyTaskManager.register(taskIdentifier:performing:)(uint64_t a1)
{
  if (qword_1EDCF5570 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1EDCF6180;
  v4 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v1 + 4);
  sub_1C7C23D6C(&v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

void sub_1C7C219D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, objc_class *a5@<X4>, void *a6@<X8>)
{
  v11 = type metadata accessor for SESOnceOnlyTask();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v12[OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_task];
  *v14 = a3;
  *(v14 + 1) = a4;
  v31.receiver = v12;
  v31.super_class = v11;

  v15 = objc_msgSendSuper2(&v31, sel_init);
  v16 = qword_1EDCF6188;
  if (qword_1EDCF6188)
  {
    v17 = qword_1EDCF6188;
    v18 = qword_1EDCF6188;
  }

  else
  {
    v18 = [objc_allocWithZone(a5) init];
    v17 = 0;
    v16 = qword_1EDCF6188;
  }

  qword_1EDCF6188 = v18;
  v19 = v17;
  v20 = v18;

  swift_beginAccess();
  v21 = v15;
  v22 = sub_1C7C2AB08(&v32, v21);
  swift_endAccess();
  v23 = v32;
  if (v22)
  {
  }

  else
  {
    if (qword_1EDCF4FD8 != -1)
    {
      swift_once();
    }

    v24 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v24, qword_1EDCF4FE0);

    v25 = sub_1C7C7D194();
    v26 = sub_1C7C7D584();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1C7BE42F8(a1, a2, &v30);
      _os_log_impl(&dword_1C7B9A000, v25, v26, "Attempted to insert duplicate task with identifier %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x1CCA6C990](v28, -1, -1);
      MEMORY[0x1CCA6C990](v27, -1, -1);
    }
  }

  *a6 = v23;
}

void static SESOnceOnlyTaskManager.deregister(task:)(uint64_t a1)
{
  if (qword_1EDCF5570 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = qword_1EDCF6180;
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v1 + 4);
  sub_1C7C23DCC();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1C7C21D28(char *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1C7C7D2E4();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = *&a1[OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier];
    v6 = *&a1[OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier + 8];
    v7 = sub_1C7C7D2E4();
    [v4 removeObjectForKey_];

    v8 = qword_1EDCF6188;
    if (qword_1EDCF6188 && (swift_beginAccess(), v9 = v8, v10 = sub_1C7C238F4(a1), swift_endAccess(), v9, v10))
    {

      if (qword_1EDCF4FD8 != -1)
      {
        swift_once();
      }

      v11 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v11, qword_1EDCF4FE0);
      v12 = a1;
      v13 = sub_1C7C7D194();
      v14 = sub_1C7C7D574();

      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_13;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136315138;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_1C7C7D304();
      v21 = v20;

      v22 = sub_1C7BE42F8(v19, v21, v32);

      *(v15 + 4) = v22;
      v23 = "Successfully deregistered task with identifier %s";
    }

    else
    {
      if (qword_1EDCF4FD8 != -1)
      {
        swift_once();
      }

      v24 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v24, qword_1EDCF4FE0);
      v25 = a1;
      v13 = sub_1C7C7D194();
      v14 = sub_1C7C7D584();

      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_13;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136315138;
      v26 = v25;
      v27 = [v26 description];
      v28 = sub_1C7C7D304();
      v30 = v29;

      v31 = sub_1C7BE42F8(v28, v30, v32);

      *(v15 + 4) = v31;
      v23 = "Unable to deregister task with identifier %s";
    }

    _os_log_impl(&dword_1C7B9A000, v13, v14, v23, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x1CCA6C990](v16, -1, -1);
    MEMORY[0x1CCA6C990](v15, -1, -1);
LABEL_13:

    return;
  }

  __break(1u);
}

void static SESOnceOnlyTaskManager.runAll()(uint64_t a1)
{
  if (qword_1EDCF5570 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_1EDCF6180;
  v2 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_1C7C24540();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1C7C2217C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v44 - v5;
  v47 = dispatch_group_create();
  v6 = qword_1EDCF6188;
  if (!qword_1EDCF6188)
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C7C7D6D4())
    {
      sub_1C7C23E10(MEMORY[0x1E69E7CC0]);
      v8 = v13;
      if ((v13 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CD0];
      if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    v11 = 0;
    v14 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(v8 + 56);
    goto LABEL_13;
  }

  v7 = OBJC_IVAR____TtC9SEService22SESOnceOnlyTaskManager_tasks;
  swift_beginAccess();
  v8 = *(v6 + v7);

  if ((v8 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_1C7C7D6C4();
  type metadata accessor for SESOnceOnlyTask();
  sub_1C7C24144();
  sub_1C7C7D524();
  v8 = v56;
  v9 = v57;
  v10 = v58;
  v11 = v59;
  v12 = v60;
LABEL_13:
  v44 = v10;
  v17 = (v10 + 64) >> 6;
  v45 = v17;
  v46 = v8;
  while (v8 < 0)
  {
    v24 = sub_1C7C7D6F4();
    if (!v24)
    {
      goto LABEL_33;
    }

    v51 = v24;
    type metadata accessor for SESOnceOnlyTask();
    swift_dynamicCast();
    v23 = v61;
    v21 = v11;
    v22 = v12;
    if (!v61)
    {
      goto LABEL_33;
    }

LABEL_25:
    v49 = v22;
    v25 = v9;
    v26 = v47;
    dispatch_group_enter(v47);
    v27 = sub_1C7C7D4D4();
    v28 = *(v27 - 8);
    v29 = v50;
    (*(v28 + 56))(v50, 1, 1, v27);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v23;
    v30[5] = v26;
    sub_1C7C2434C(v29, v4);
    LODWORD(v29) = (*(v28 + 48))(v4, 1, v27);
    v48 = v23;
    v31 = v26;

    if (v29 == 1)
    {
      sub_1C7C243BC(v4);
    }

    else
    {
      sub_1C7C7D4C4();
      (*(v28 + 8))(v4, v27);
    }

    v32 = v30[2];
    v33 = v30[3];
    swift_unknownObjectRetain();

    v9 = v25;
    if (v32)
    {
      swift_getObjectType();
      v34 = sub_1C7C7D474();
      v36 = v35;
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v17 = v45;
    v37 = v49;
    sub_1C7C243BC(v50);
    v38 = swift_allocObject();
    *(v38 + 16) = &unk_1C7C8FDE0;
    *(v38 + 24) = v30;
    if (v36 | v34)
    {
      v52 = 0;
      v53 = 0;
      v54 = v34;
      v55 = v36;
    }

    v8 = v46;
    v18 = v48;
    swift_task_create();

    v11 = v21;
    v12 = v37;
  }

  v19 = v11;
  v20 = v12;
  v21 = v11;
  if (!v12)
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        goto LABEL_33;
      }

      v20 = *(v9 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_21:
  v22 = (v20 - 1) & v20;
  v23 = *(*(v8 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
  if (v23)
  {
    goto LABEL_25;
  }

LABEL_33:
  sub_1C7C0040C();
  sub_1C7C7D5B4();
  if (qword_1EDCF4FD8 == -1)
  {
    goto LABEL_34;
  }

LABEL_38:
  swift_once();
LABEL_34:
  v39 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v39, qword_1EDCF4FE0);
  v40 = sub_1C7C7D194();
  v41 = sub_1C7C7D574();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1C7B9A000, v40, v41, "Successfully run all one-time tasks", v42, 2u);
    MEMORY[0x1CCA6C990](v42, -1, -1);
  }

  v43 = qword_1EDCF6188;
  qword_1EDCF6188 = 0;
}

uint64_t sub_1C7C22704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_1C7C22798;

  return sub_1C7C228F4();
}

uint64_t sub_1C7C22798()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C22894, 0, 0);
}

uint64_t sub_1C7C22894()
{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C7C22914()
{
  v30 = v0;
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1C7C7D2E4();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    __break(1u);
    return MEMORY[0x1EEE6DDE0]();
  }

  v4 = (v0[2] + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier);
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_1C7C7D2E4();
  v8 = [v3 BOOLForKey_];

  if ((v8 & 1) == 0)
  {
    v25 = v0[2];
    v26 = swift_task_alloc();
    v0[3] = v26;
    *(v26 + 16) = v25;
    v27 = *(MEMORY[0x1E69E88D0] + 4);
    v28 = swift_task_alloc();
    v0[4] = v28;
    *v28 = v0;
    v28[1] = sub_1C7C22C3C;

    return MEMORY[0x1EEE6DDE0]();
  }

  if (qword_1EDCF4FD8 != -1)
  {
    swift_once();
  }

  v9 = v0[2];
  v10 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v10, qword_1EDCF4FE0);
  v11 = v9;
  v12 = sub_1C7C7D194();
  v13 = sub_1C7C7D574();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[2];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    v17 = v14;
    v18 = [v17 description];
    v19 = sub_1C7C7D304();
    v21 = v20;

    v22 = sub_1C7BE42F8(v19, v21, &v29);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_1C7B9A000, v12, v13, "One-time task %s already ran", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x1CCA6C990](v16, -1, -1);
    MEMORY[0x1CCA6C990](v15, -1, -1);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1C7C22C3C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C22D54, 0, 0);
}

uint64_t sub_1C7C22D54()
{
  v19 = v0;
  if (qword_1EDCF4FD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EDCF4FE0);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D574();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_1C7C7D304();
    v13 = v12;

    v14 = sub_1C7BE42F8(v11, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "Successfully run one-time task %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = *(v0 + 16);
  sub_1C7C231D0();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1C7C22F28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2643A8, &qword_1C7C8FE08);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EDCF6180 = result;
  return result;
}

id SESOnceOnlyTaskManager.init()()
{
  ObjectType = swift_getObjectType();
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v4 = ObjectType;
    if (sub_1C7C7D6D4())
    {
      sub_1C7C23E10(MEMORY[0x1E69E7CC0]);
      v2 = v5;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    ObjectType = v4;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC9SEService22SESOnceOnlyTaskManager_tasks] = v2;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t SESOnceOnlyTask.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier + 8);

  return v1;
}

void sub_1C7C231D0()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1C7C7D2E4();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    v4 = sub_1C7C7D464();
    v5 = *(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier);
    v6 = *(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier + 8);
    v7 = sub_1C7C7D2E4();
    [v3 setValue:v4 forKey:v7];
  }

  else
  {
    __break(1u);
  }
}

unint64_t SESOnceOnlyTask.overrideDescription.getter()
{
  sub_1C7C7D794();

  MEMORY[0x1CCA6B380](*(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier), *(v0 + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_identifier + 8));
  MEMORY[0x1CCA6B380](41, 0xE100000000000000);
  return 0xD000000000000010;
}

id SESOnceOnlyTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C7C23424()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EDCF4FE0);
  __swift_project_value_buffer(v0, qword_1EDCF4FE0);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7C234A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7C2359C;

  return v7(a1);
}

uint64_t sub_1C7C2359C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C7C23694(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
    v2 = sub_1C7C7D764();
    v16 = v2;
    sub_1C7C7D6C4();
    if (sub_1C7C7D6F4())
    {
      type metadata accessor for SESOnceOnlyTask();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1C7C2B014(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1C7C7D614();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1C7C7D6F4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1C7C23870(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1C7C7D614();
  v5 = -1 << *(a2 + 32);
  result = sub_1C7C7D6B4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1C7C238F4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1C7C7D704();

    if (v7)
    {
      v8 = sub_1C7C23A78();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for SESOnceOnlyTask();
  v11 = *(v3 + 40);
  v12 = sub_1C7C7D614();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1C7C7D624();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C7C2BBA8();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1C7C23BCC(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1C7C23A78()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1C7C7D6D4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1C7C23694(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1C7C7D614();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for SESOnceOnlyTask();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1C7C7D624();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1C7C23BCC(v9);
  result = sub_1C7C7D624();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C7C23BCC(unint64_t result)
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

    v9 = sub_1C7C7D694();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1C7C7D614();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1C7C23D6C@<X0>(void *a1@<X8>)
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

uint64_t sub_1C7C23DCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1C7C23E10(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1C7C7D6D4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
      v3 = sub_1C7C7D774();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1C7C7D6D4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1CCA6B7B0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1C7C7D614();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for SESOnceOnlyTask();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1C7C7D624();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_1C7C7D614();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for SESOnceOnlyTask();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1C7C7D624();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1C7C24144()
{
  result = qword_1EC264398;
  if (!qword_1EC264398)
  {
    type metadata accessor for SESOnceOnlyTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264398);
  }

  return result;
}

uint64_t sub_1C7C24198(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C7C24258;

  return sub_1C7C22704(a1, v4, v5, v7, v6);
}

uint64_t sub_1C7C24258()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C7C2434C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7C243BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7C24424(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C7C24258;

  return sub_1C7C234A4(a1, v5);
}

uint64_t sub_1C7C244DC()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC9SEService15SESOnceOnlyTask_task;
  v2 = *(v1 + 8);
  (*v1)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2643A0, &qword_1C7C8FE00);
  return sub_1C7C7D494();
}

id SERCredentialInfo.__allocating_init(moduleAIDs:packageAID:containerSize:requiredMemoryForCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs] = a1;
  v12 = &v11[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v11[OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize] = a4;
  *&v11[OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id SERCredentialInfo.init(moduleAIDs:packageAID:containerSize:requiredMemoryForCredential:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs] = a1;
  v12 = &v5[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v5[OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize] = a4;
  *&v5[OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential] = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id SERCredentialInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C7C2471C()
{
  v1 = 0x4941656C75646F6DLL;
  v2 = 0x656E6961746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x416567616B636170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C7C247B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C2664C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C247D8(uint64_t a1)
{
  v2 = sub_1C7C24BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C24814(uint64_t a1)
{
  v2 = sub_1C7C24BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SERCredentialInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SERCredentialInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2643D8, &unk_1C7C8FE10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C24BC4();
  sub_1C7C7DBA4();
  v15 = *(v3 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs);
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
  sub_1C7C2500C(&unk_1EC2643F0);
  sub_1C7C7DA44();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID);
    v13 = *(v3 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID + 8);
    LOBYTE(v15) = 1;

    sub_1C7C7DA14();

    v15 = *(v3 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize);
    HIBYTE(v14) = 2;
    type metadata accessor for MemoryUsage();
    sub_1C7C25078(&qword_1EC265240);
    sub_1C7C7DA44();
    v15 = *(v3 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential);
    HIBYTE(v14) = 3;
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C7C24BC4()
{
  result = qword_1EC2643E0;
  if (!qword_1EC2643E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2643E0);
  }

  return result;
}

id SERCredentialInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264400, &qword_1C7C8FE20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C24BC4();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    v19 = 0;
    sub_1C7C2500C(&qword_1EC264408);
    sub_1C7C7D9B4();
    v12 = OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs;
    *&v1[OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs] = v20;
    LOBYTE(v20) = 1;
    v13 = sub_1C7C7D984();
    v16[1] = v12;
    v14 = &v1[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID];
    *v14 = v13;
    v14[1] = v15;
    type metadata accessor for MemoryUsage();
    v19 = 2;
    v16[0] = sub_1C7C25078(&qword_1EC264410);
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize] = v20;
    v19 = 3;
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential] = v20;
    v18.receiver = v1;
    v18.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v18, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_1C7C2500C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC265230, &qword_1C7C94520);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C25078(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MemoryUsage();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C7C250BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SERCredentialInfo.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static SERCredentialInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC2643B0 = a1;
  return result;
}

Swift::Void __swiftcall SERCredentialInfo.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs);
  v5 = *(v4 + 16);
  if (v5)
  {
    v20 = MEMORY[0x1E69E7CC0];

    sub_1C7C7D804();
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_1C7C7D2E4();

      sub_1C7C7D7E4();
      v9 = *(v20 + 16);
      sub_1C7C7D814();
      sub_1C7C7D824();
      sub_1C7C7D7F4();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  sub_1C7C142A8();
  v10 = sub_1C7C7D414();

  v11 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID);
  v13 = *(v2 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID + 8);

  v14 = sub_1C7C7D2E4();

  v15 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize);
  v17 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v16 forKey:v17];

  v18 = *(v2 + OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential);
  v19 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];
}

id SERCredentialInfo.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

char *SERCredentialInfo.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C7C142A8();
  v3 = sub_1C7C7D604();
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v5 = sub_1C7C7D5E4();
  if (!v5)
  {

LABEL_17:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = v5;
  type metadata accessor for MemoryUsage();
  v7 = sub_1C7C7D5E4();
  if (!v7)
  {

    goto LABEL_17;
  }

  v8 = v7;
  v9 = sub_1C7C7D5E4();
  if (!v9)
  {

    goto LABEL_17;
  }

  v10 = v9;
  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v9;
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_24:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v30 = sub_1C7C7D304();
    v32 = v31;
    v33 = objc_allocWithZone(ObjectType);
    *&v33[OBJC_IVAR____TtC9SEService17SERCredentialInfo_moduleAIDs] = v13;
    v34 = &v33[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID];
    *v34 = v30;
    v34[1] = v32;
    *&v33[OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize] = v8;
    *&v33[OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential] = v41;
    v42.receiver = v33;
    v42.super_class = ObjectType;
    v35 = v8;
    v36 = v41;
    v37 = objc_msgSendSuper2(&v42, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v37;
  }

  v11 = sub_1C7C7D6D4();
  v41 = v10;
  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_7:
  v43 = MEMORY[0x1E69E7CC0];
  result = sub_1C7C2599C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v38 = v8;
    v39 = ObjectType;
    v40 = v6;
    v13 = v43;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v14 = 0;
      do
      {
        MEMORY[0x1CCA6B7B0](v14, v4);
        v15 = sub_1C7C7D304();
        v17 = v16;
        swift_unknownObjectRelease();
        v43 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1C7C2599C((v18 > 1), v19 + 1, 1);
          v13 = v43;
        }

        ++v14;
        *(v13 + 16) = v19 + 1;
        v20 = v13 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v11 != v14);
    }

    else
    {
      v21 = (v4 + 32);
      do
      {
        v22 = *v21;
        v23 = sub_1C7C7D304();
        v43 = v13;
        v26 = *(v13 + 16);
        v25 = *(v13 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = v23;
          v29 = v24;
          sub_1C7C2599C((v25 > 1), v26 + 1, 1);
          v24 = v29;
          v23 = v28;
          v13 = v43;
        }

        *(v13 + 16) = v26 + 1;
        v27 = v13 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        ++v21;
        --v11;
      }

      while (v11);
    }

    v6 = v40;
    v8 = v38;
    ObjectType = v39;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

char *sub_1C7C2599C(char *a1, int64_t a2, char a3)
{
  result = sub_1C7C25D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C7C25A48()
{
  result = qword_1EC264418;
  if (!qword_1EC264418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264418);
  }

  return result;
}

unint64_t sub_1C7C25AA0()
{
  result = qword_1EC264420;
  if (!qword_1EC264420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264420);
  }

  return result;
}

unint64_t sub_1C7C25AF8()
{
  result = qword_1EC264428;
  if (!qword_1EC264428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264428);
  }

  return result;
}

void *sub_1C7C25B4C(void *a1, int64_t a2, char a3)
{
  result = sub_1C7C25E9C(a1, a2, a3, *v3, &qword_1EC264488, &qword_1C7C90028, &qword_1EC264490, &qword_1C7C90030);
  *v3 = result;
  return result;
}

void *sub_1C7C25B8C(void *a1, int64_t a2, char a3)
{
  result = sub_1C7C25E9C(a1, a2, a3, *v3, &qword_1EC264458, &qword_1C7C8FFF8, &qword_1EC264460, &unk_1C7C90000);
  *v3 = result;
  return result;
}

size_t sub_1C7C25BCC(size_t a1, int64_t a2, char a3)
{
  result = sub_1C7C25FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C7C25BEC(void *a1, int64_t a2, char a3)
{
  result = sub_1C7C261C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C7C25C0C(char *a1, int64_t a2, char a3)
{
  result = sub_1C7C262F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C7C25C2C(char *a1, int64_t a2, char a3)
{
  result = sub_1C7C25C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C7C25C4C(char *a1, int64_t a2, char a3)
{
  result = sub_1C7C26410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C7C25C6C(void *a1, int64_t a2, char a3)
{
  result = sub_1C7C26504(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C7C25C8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264468, &qword_1C7C905F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C7C25D90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264498, &qword_1C7C90600);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C7C25E9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_1C7C25FD0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264440, &unk_1C7C8FFE0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1C7C261C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264470, &qword_1C7C90010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264478, &qword_1C7C90018);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C7C262F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264480, &qword_1C7C90020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C7C26410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264450, &qword_1C7C8FFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C7C26504(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264430, &qword_1C7C8FFD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264438, &qword_1C7C8FFD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C7C2664C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4941656C75646F6DLL && a2 == 0xEA00000000007344;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416567616B636170 && a2 == 0xEA00000000004449 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED0000657A695372 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001C7C9E5C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C267D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C7C2434C(a3, v27 - v11);
  v13 = sub_1C7C7D4D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C7C243BC(v12);
  }

  else
  {
    sub_1C7C7D4C4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C7C7D474();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C7C7D344() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F8, &qword_1C7C902E8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1C7C243BC(a3);

      return v24;
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

  sub_1C7C243BC(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F8, &qword_1C7C902E8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t SESContactlessTCCContext.NFCTCCRow.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SESContactlessTCCContext.NFCTCCRow.rowStyle.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t SESContactlessTCCContext.NFCTCCRow.RowStyle.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x1CCA6BB80](0);
  }

  v1 = *v0;
  MEMORY[0x1CCA6BB80](1);

  return sub_1C7C7D364();
}

uint64_t SESContactlessTCCContext.NFCTCCRow.RowStyle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C7C7DB64();
  if (v2)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C26BCC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C7C7DB64();
  if (v2)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C26C3C()
{
  if (!v0[1])
  {
    return MEMORY[0x1CCA6BB80](0);
  }

  v1 = *v0;
  MEMORY[0x1CCA6BB80](1);

  return sub_1C7C7D364();
}

uint64_t sub_1C7C26CB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C7C7DB64();
  if (v2)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t SESContactlessTCCContext.NFCTCCRow.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C7C7D364();
  if (!v4)
  {
    return MEMORY[0x1CCA6BB80](0);
  }

  MEMORY[0x1CCA6BB80](1);

  return sub_1C7C7D364();
}

uint64_t SESContactlessTCCContext.NFCTCCRow.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C7C7DB64();
  sub_1C7C7D364();
  if (v4)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C26E30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C7C7DB64();
  sub_1C7C7D364();
  if (v4)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C26EBC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C7C7D364();
  if (!v4)
  {
    return MEMORY[0x1CCA6BB80](0);
  }

  MEMORY[0x1CCA6BB80](1);

  return sub_1C7C7D364();
}

uint64_t sub_1C7C26F38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C7C7DB64();
  sub_1C7C7D364();
  if (v4)
  {
    MEMORY[0x1CCA6BB80](1);
    sub_1C7C7D364();
  }

  else
  {
    MEMORY[0x1CCA6BB80](0);
  }

  return sub_1C7C7DB84();
}

uint64_t SESContactlessTCCContext.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SESContactlessTCCContext.init(_:)(a1, a2);
  return v4;
}

void SESContactlessTCCContext.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  aBlock[7] = *v4;
  v7 = sub_1C7C7D234();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 32) = -1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v12 = tcc_message_options_create();
  if (!v12)
  {
    goto LABEL_13;
  }

  v39 = v3;
  v40 = a2;
  v41 = v12;
  v13 = sub_1C7C28E14();
  v14 = v8[13];
  v37 = *MEMORY[0x1E69E7F98];
  v36 = v14;
  v14(v11);
  v38 = v13;
  v15 = sub_1C7C7D5C4();
  v35 = v8[1];
  v35(v11, v7);
  v16 = tcc_server_create();

  if (v16)
  {
    v17 = *MEMORY[0x1E69D5530];
    if (*MEMORY[0x1E69D5530])
    {
      v18 = v16;
      v19 = *MEMORY[0x1E69D5530];
      v20 = tcc_service_singleton_for_CF_name();

      if (!v20)
      {
LABEL_11:
        swift_unknownObjectRelease();
        goto LABEL_12;
      }

      v34 = v20;
      v21 = *MEMORY[0x1E69D5528];
      if (*MEMORY[0x1E69D5528])
      {
        v22 = *MEMORY[0x1E69D5528];
        v23 = tcc_service_singleton_for_CF_name();

        if (v23)
        {
          *(v4 + 40) = v41;
          *(v4 + 48) = v18;
          v33[0] = v18;
          v33[1] = v23;
          *(v4 + 56) = v34;
          *(v4 + 64) = v23;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          tcc_message_options_set_reply_handler_policy();
          v36(v11, v37, v7);
          v24 = sub_1C7C7D5C4();
          v35(v11, v7);
          v25 = swift_allocObject();
          swift_weakInit();
          aBlock[4] = sub_1C7C28E60;
          aBlock[5] = v25;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1C7C2775C;
          aBlock[3] = &block_descriptor;
          v26 = _Block_copy(aBlock);

          swift_beginAccess();
          notify_register_dispatch("com.apple.tcc.access.changed", (v4 + 32), v24, v26);
          swift_endAccess();
          _Block_release(v26);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  if (qword_1EC2621C0 != -1)
  {
    swift_once();
  }

  v27 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v27, qword_1EC2644A0);
  v28 = sub_1C7C7D194();
  v29 = sub_1C7C7D584();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1C7B9A000, v28, v29, "Unable to create TCC services necessary for class", v30, 2u);
    MEMORY[0x1CCA6C990](v30, -1, -1);
  }

  sub_1C7C28DC0();
  swift_allocError();
  *v31 = 0;
  swift_willThrow();

  v32 = *(v4 + 24);

  swift_deallocPartialClassInstance();
}

uint64_t sub_1C7C274E0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644F0, &qword_1C7C8FDD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1C7C7D4D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1C7C7D4B4();

  v8 = sub_1C7C7D4A4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_1C7C267D0(0, 0, v6, &unk_1C7C902D0, v9);
}

uint64_t sub_1C7C27604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1C7C7D4B4();
  v4[7] = sub_1C7C7D4A4();
  v6 = sub_1C7C7D474();

  return MEMORY[0x1EEE6DFA0](sub_1C7C2769C, v6, v5);
}

uint64_t sub_1C7C2769C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    v6 = *(Strong + 16);
    v5 = *(Strong + 24);

    v6(v7);
  }

  **(v0 + 40) = v4 == 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C7C2775C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t SESContactlessTCCContext.NFCTCCRowForBundle(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  sub_1C7C7D344();
  v8 = tcc_identity_create();

  if (v8)
  {
    v10 = *(v3 + 40);
    v9 = *(v3 + 48);
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v7;
    v11[4] = a1;
    v11[5] = a2;
    aBlock[4] = sub_1C7C28EC4;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C7C27E34;
    aBlock[3] = &block_descriptor_9;
    v27 = a1;
    v12 = _Block_copy(aBlock);

    tcc_server_message_get_authorization_records_by_identity();
    swift_unknownObjectRelease();
    _Block_release(v12);
    swift_beginAccess();
    v13 = *(v7 + 24);
    if (v13)
    {
      v14 = *(v7 + 16);
      v15 = *(v7 + 32);
      v16 = *(v7 + 40);
      *a3 = v14;
      a3[1] = v13;
      a3[2] = v15;
      a3[3] = v16;
      sub_1C7C28E80(v14, v13);
    }

    else
    {

      *a3 = v27;
      a3[1] = a2;
      a3[2] = 0;
      a3[3] = 0;
    }
  }

  else
  {
    if (qword_1EC2621C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v18, qword_1EC2644A0);

    v19 = sub_1C7C7D194();
    v20 = sub_1C7C7D584();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1C7BE42F8(a1, a2, aBlock);
      _os_log_impl(&dword_1C7B9A000, v19, v20, "Unable to create TCC identity for %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x1CCA6C990](v22, -1, -1);
      MEMORY[0x1CCA6C990](v21, -1, -1);
    }

    v23 = *(v7 + 16);
    v24 = *(v7 + 24);
    v25 = *(v7 + 32);
    v26 = *(v7 + 40);
    sub_1C7C28E80(v23, v24);

    *a3 = v23;
    a3[1] = v24;
    a3[2] = v25;
    a3[3] = v26;
  }

  return result;
}

void sub_1C7C27ABC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!tcc_authorization_record_get_service())
  {
LABEL_5:
    swift_unknownObjectRelease();
LABEL_6:
    if (qword_1EC2621C0 != -1)
    {
      swift_once();
    }

    v11 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v11, qword_1EC2644A0);
    v12 = a2;
    oslog = sub_1C7C7D194();
    v13 = sub_1C7C7D564();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v26[0] = v15;
      *v14 = 136315138;
      v16 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2644E8, &unk_1C7C902B8);
      v17 = sub_1C7C7D324();
      v19 = sub_1C7BE42F8(v17, v18, v26);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C7B9A000, oslog, v13, "error when checking tcc: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1CCA6C990](v15, -1, -1);
      MEMORY[0x1CCA6C990](v14, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (a2)
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  if ([*(a3 + 56) isEqual_])
  {
    type metadata accessor for SESContactlessTCCContext();
    sub_1C7C27D48(a5, a6, v26);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v20 = a4[2];
    v21 = a4[3];
    v22 = a4[4];
    v23 = a4[5];
    v24 = v26[1];
    *(a4 + 1) = v26[0];
    *(a4 + 2) = v24;
    sub_1C7C29104(v20, v21);
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C7C27D48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  authorization_right = tcc_authorization_record_get_authorization_right();
  if ((authorization_right - 2) >= 2)
  {
    if (authorization_right == 1)
    {
      *a3 = a1;
      a3[1] = a2;
      a3[2] = 0;
      a3[3] = 0;
      goto LABEL_11;
    }

    if (qword_1EC2621B8 != -1)
    {
      swift_once();
    }

    v7 = &qword_1EC2642E8;
  }

  else
  {
    if (qword_1EC2621B0 != -1)
    {
      swift_once();
    }

    v7 = &qword_1EC2642D8;
  }

  v9 = *v7;
  v8 = v7[1];

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v9;
  a3[3] = v10;
LABEL_11:
}

uint64_t sub_1C7C27E34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t SESContactlessTCCContext.allNFCTCCRows()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[7];
  v14 = sub_1C7C28ED0;
  v15 = v1;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C7C27E34;
  v13 = &block_descriptor_15;
  v5 = _Block_copy(&v10);

  tcc_server_message_get_authorization_records_by_service();
  _Block_release(v5);
  v6 = v0[8];
  v14 = sub_1C7C28ED8;
  v15 = v1;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1C7C27E34;
  v13 = &block_descriptor_18;
  v7 = _Block_copy(&v10);

  tcc_server_message_get_authorization_records_by_service();
  _Block_release(v7);
  swift_beginAccess();
  v8 = *(v1 + 16);

  return v8;
}

void sub_1C7C28078(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = qword_1EC2621C0;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v5, qword_1EC2644A0);
    v6 = v4;
    oslog = sub_1C7C7D194();
    v7 = sub_1C7C7D584();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34 = v9;
      *v8 = 136315138;
      type metadata accessor for CFError(0);
      v10 = v6;
      v11 = sub_1C7C7D324();
      v13 = sub_1C7BE42F8(v11, v12, &v34);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1C7B9A000, oslog, v7, "Error when checking tcc: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1CCA6C990](v9, -1, -1);
      MEMORY[0x1CCA6C990](v8, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  swift_unknownObjectRetain();
  if (tcc_authorization_record_get_subject_identity())
  {
    tcc_identity_get_identifier();
    v15 = sub_1C7C7D2D4();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      type metadata accessor for SESContactlessTCCContext();
      sub_1C7C27D48(v17, v18, &v34);

      v19 = v35;
      if (v35)
      {
        v20 = v34;
        *osloga = v36;
        swift_beginAccess();
        v21 = *(a3 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v21;
        if (isUniquelyReferenced_nonNull_native)
        {
          v23 = a3;
        }

        else
        {
          v28 = sub_1C7C2A7E4(0, *(v21 + 2) + 1, 1, v21);
          v23 = a3;
          v21 = v28;
          *(a3 + 16) = v28;
        }

        v24 = *(v21 + 2);
        v25 = *(v21 + 3);
        v26 = v24 + 1;
        if (v24 >= v25 >> 1)
        {
          v29 = v21;
          v30 = *(v21 + 2);
          v31 = sub_1C7C2A7E4((v25 > 1), v24 + 1, 1, v29);
          v24 = v30;
          v23 = a3;
          v21 = v31;
        }

        *(v21 + 2) = v26;
        v27 = &v21[32 * v24];
        *(v27 + 4) = v20;
        *(v27 + 5) = v19;
        *(v27 + 3) = *osloga;
        *(v23 + 16) = v21;
        swift_endAccess();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
}

void sub_1C7C283A4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = qword_1EC2621C0;
    v4 = a2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v5, qword_1EC2644A0);
    v6 = v4;
    oslog = sub_1C7C7D194();
    v7 = sub_1C7C7D584();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39 = v9;
      *v8 = 136315138;
      v38 = v6;
      type metadata accessor for CFError(0);
      v10 = v6;
      v11 = sub_1C7C7D324();
      v13 = sub_1C7BE42F8(v11, v12, &v39);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1C7B9A000, oslog, v7, "Error when checking tcc: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x1CCA6C990](v9, -1, -1);
      MEMORY[0x1CCA6C990](v8, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  swift_unknownObjectRetain();
  if (!tcc_authorization_record_get_subject_identity())
  {
    goto LABEL_21;
  }

  tcc_identity_get_identifier();
  v15 = sub_1C7C7D2D4();
  if (!v16)
  {
    swift_unknownObjectRelease();
LABEL_21:
    if (qword_1EC2621C0 != -1)
    {
      swift_once();
    }

    v23 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v23, qword_1EC2644A0);
    v24 = sub_1C7C7D194();
    v25 = sub_1C7C7D584();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C7B9A000, v24, v25, "No identity or bundleID for record, skipping", v26, 2u);
      MEMORY[0x1CCA6C990](v26, -1, -1);
    }

    swift_unknownObjectRelease();
    return;
  }

  v17 = v15;
  v18 = v16;
  swift_beginAccess();
  v19 = *(a3 + 16);
  v20 = (v19 + 40);
  v21 = *(v19 + 16) + 1;
  while (--v21)
  {
    if (*(v20 - 1) != v17 || v18 != *v20)
    {
      v20 += 4;
      if ((sub_1C7C7DAA4() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  if (qword_1EC2621C0 != -1)
  {
    swift_once();
  }

  v27 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v27, qword_1EC2644A0);

  v28 = sub_1C7C7D194();
  v29 = sub_1C7C7D564();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1C7BE42F8(v17, v18, &v38);
    _os_log_impl(&dword_1C7B9A000, v28, v29, "Adding %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x1CCA6C990](v31, -1, -1);
    MEMORY[0x1CCA6C990](v30, -1, -1);
  }

  swift_beginAccess();
  v32 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_1C7C2A7E4(0, *(v32 + 2) + 1, 1, v32);
    *(a3 + 16) = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1C7C2A7E4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[32 * v35];
  *(v36 + 4) = v17;
  *(v36 + 5) = v18;
  *(v36 + 6) = 0;
  *(v36 + 7) = 0;
  *(a3 + 16) = v32;
  swift_endAccess();
LABEL_37:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t SESContactlessTCCContext.deinit()
{
  v1 = v0;
  if (qword_1EC2621C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC2644A0);
  v3 = sub_1C7C7D194();
  v4 = sub_1C7C7D574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C7B9A000, v3, v4, "Cancelling notification for contactless TCC", v5, 2u);
    MEMORY[0x1CCA6C990](v5, -1, -1);
  }

  swift_beginAccess();
  notify_cancel(*(v1 + 32));
  v6 = *(v1 + 24);

  v7 = *(v1 + 40);
  swift_unknownObjectRelease();
  v8 = *(v1 + 48);
  swift_unknownObjectRelease();
  v9 = *(v1 + 56);
  swift_unknownObjectRelease();
  v10 = *(v1 + 64);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SESContactlessTCCContext.__deallocating_deinit()
{
  SESContactlessTCCContext.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1C7C28A08()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC2644A0);
  __swift_project_value_buffer(v0, qword_1EC2644A0);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7C28A88(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1C7C28B7C;

  return v6(v2 + 32);
}

uint64_t sub_1C7C28B7C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s9SEService24SESContactlessTCCContextC9NFCTCCRowV8RowStyleO2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C7C7DAA4();
}

BOOL _s9SEService24SESContactlessTCCContextC9NFCTCCRowV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1C7C7DAA4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        return v9 || (sub_1C7C7DAA4() & 1) != 0;
      }
    }

    else if (!v4)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1C7C28DC0()
{
  result = qword_1EC2644B8;
  if (!qword_1EC2644B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2644B8);
  }

  return result;
}

unint64_t sub_1C7C28E14()
{
  result = qword_1EDCF4FA0;
  if (!qword_1EDCF4FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCF4FA0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C7C28E80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C7C28EE4()
{
  result = qword_1EC2644C8;
  if (!qword_1EC2644C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2644C8);
  }

  return result;
}

unint64_t sub_1C7C28F3C()
{
  result = qword_1EC2644D0;
  if (!qword_1EC2644D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2644D0);
  }

  return result;
}

uint64_t sub_1C7C28FF4(uint64_t a1, int a2)
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

uint64_t sub_1C7C2903C(uint64_t result, int a2, int a3)
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

unint64_t sub_1C7C290B0()
{
  result = qword_1EC2644E0;
  if (!qword_1EC2644E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2644E0);
  }

  return result;
}

uint64_t sub_1C7C29104(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C7C29148(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C7C24258;

  return sub_1C7C27604(a1, v4, v5, v6);
}

uint64_t sub_1C7C291FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C7C29378;

  return sub_1C7C28A88(a1, v5);
}

uint64_t sub_1C7C292B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C7C24258;

  return sub_1C7C28A88(a1, v5);
}

uint64_t TCCContext.TCCService.tccString.getter(uint64_t a1)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    v1 = *MEMORY[0x1E69D5530];
    if (*MEMORY[0x1E69D5530])
    {
LABEL_9:
      v2 = sub_1C7C7D304();

      return v2;
    }

    __break(1u);
  }

  v1 = *MEMORY[0x1E69D55E0];
  if (*MEMORY[0x1E69D55E0])
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  if (!a1)
  {
    v1 = *MEMORY[0x1E69D5528];
    if (*MEMORY[0x1E69D5528])
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

uint64_t TCCContext.TCCService.defaultAppTCCService.getter(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      return 0;
    }

    else if (result == 2)
    {
      return 1;
    }

    else
    {
      result = sub_1C7C7DAC4();
      __break(1u);
    }
  }

  return result;
}

unint64_t TCCContext.TCCService.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t TCCContext.DefaultAppCapableTCCService.tccService.getter(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      return 2;
    }

    else
    {
      result = sub_1C7C7DAC4();
      __break(1u);
    }
  }

  return result;
}

uint64_t TCCContext.DefaultAppCapableTCCService.defaultAppEntitlement.getter(uint64_t a1)
{
  result = 0xD000000000000033;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000045;
    }

    else
    {
      result = sub_1C7C7DAC4();
      __break(1u);
    }
  }

  return result;
}

uint64_t TCCContext.DefaultAppCapableTCCService.fallbackTCCService.getter(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

unint64_t TCCContext.DefaultAppCapableTCCService.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1C7C295E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t TCCContext.TCCAccess.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6465696E6564;
    }

    if (a1 == 3)
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = 1851880039;
      return v1 | 0x64657400000000;
    }

    if (a1 == 1)
    {
      v1 = 1768778092;
      return v1 | 0x64657400000000;
    }
  }

  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

unint64_t sub_1C7C296CC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C7C2C660(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C7C29700()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      v2 = 1851880039;
      return v2 | 0x64657400000000;
    }

    if (v1 == 1)
    {
      v2 = 1768778092;
      return v2 | 0x64657400000000;
    }

    goto LABEL_12;
  }

  if (v1 == 2)
  {
    return 0x6465696E6564;
  }

  if (v1 != 3)
  {
LABEL_12:
    v4 = *v0;
    result = sub_1C7C7DAC4();
    __break(1u);
    return result;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t TCCContext.checkTCCAccess(to:for:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 3)
  {
    result = sub_1C7C7DAC4();
    __break(1u);
  }

  else
  {
    v7 = *(&off_1E82D1EA0 + a1);
    swift_getKeyPath();
    v21 = v3;

    v8 = v3;
    v9 = swift_readAtKeyPath();
    v11 = *v10;

    v9(v20, 0);

    if (v11)
    {
      if (*(v11 + 16))
      {
        v12 = sub_1C7C70200(a2, a3);
        if (v13)
        {
          v14 = *(*(v11 + 56) + 8 * v12);
LABEL_10:

          return v14;
        }
      }
    }

    else
    {
      v15 = sub_1C7C2CE08(a1);
      v20[0] = v8;
      v21 = v15;
      v16 = v8;

      swift_setAtReferenceWritableKeyPath();

      if (*(v15 + 16))
      {
        v17 = sub_1C7C70200(a2, a3);
        if (v18)
        {
          v14 = *(*(v15 + 56) + 8 * v17);
          goto LABEL_10;
        }
      }
    }

    return 3;
  }

  return result;
}

uint64_t TCCContext.getTCCKnownBundleIds(for:filter:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a1;
  if (a1 >= 3)
  {
    goto LABEL_42;
  }

  v5 = *(&off_1E82D1EA0 + a1);
  swift_getKeyPath();
  v53 = v2;

  v6 = v2;
  v7 = swift_readAtKeyPath();
  v9 = *v8;

  v7(v52, 0);

  if (!v9)
  {
    v29 = sub_1C7C2CE08(v3);
    v52[0] = v6;
    v53 = v29;
    v30 = v6;

    swift_setAtReferenceWritableKeyPath();

    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v3 = v32 & *(v29 + 64);
    v33 = (v31 + 63) >> 6;

    v34 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (!v3)
        {
          do
          {
            v35 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_41;
            }

            if (v35 >= v33)
            {
LABEL_39:

              v49 = sub_1C7C2D48C(v51);

              return v49;
            }

            v3 = *(v29 + 64 + 8 * v35);
            ++v34;
          }

          while (!v3);
          v34 = v35;
        }

        v36 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v37 = v36 | (v34 << 6);
        v38 = (*(v29 + 48) + 16 * v37);
        v39 = *v38;
        v40 = v38[1];
        v41 = *(*(v29 + 56) + 8 * v37);
        if (!a2)
        {
          break;
        }

        sub_1C7C2D46C(a2);

        v42 = a2(v41);
        sub_1C7C2D47C(a2);
        if (v42)
        {
          goto LABEL_34;
        }
      }

      if (v41 != 3)
      {
        v43 = v38[1];

LABEL_34:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1C7C2A8F0(0, *(v51 + 2) + 1, 1, v51);
        }

        v45 = *(v51 + 2);
        v44 = *(v51 + 3);
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v48 = sub_1C7C2A8F0((v44 > 1), v45 + 1, 1, v51);
          v46 = v45 + 1;
          v51 = v48;
        }

        *(v51 + 2) = v46;
        v47 = &v51[16 * v45];
        *(v47 + 4) = v39;
        *(v47 + 5) = v40;
      }
    }
  }

  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v3 = v11 & *(v9 + 64);
  v12 = (v10 + 63) >> 6;

  v13 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  while (v3)
  {
LABEL_12:
    v15 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (*(v9 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(v9 + 56) + 8 * v16);
    if (a2)
    {
      v21 = v17[1];

      sub_1C7C2D46C(a2);
      v22 = a2(v20);
      sub_1C7C2D47C(a2);
      if (v22)
      {
        goto LABEL_16;
      }
    }

    else if (v20 != 3)
    {
      v23 = v17[1];

LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1C7C2A8F0(0, *(v51 + 2) + 1, 1, v51);
      }

      v25 = *(v51 + 2);
      v24 = *(v51 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v28 = sub_1C7C2A8F0((v24 > 1), v25 + 1, 1, v51);
        v26 = v25 + 1;
        v51 = v28;
      }

      *(v51 + 2) = v26;
      v27 = &v51[16 * v25];
      *(v27 + 4) = v18;
      *(v27 + 5) = v19;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_39;
    }

    v3 = *(v9 + 64 + 8 * v14);
    ++v13;
    if (v3)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  v52[0] = v3;
  result = sub_1C7C7DAC4();
  __break(1u);
  return result;
}

void sub_1C7C29E44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = qword_1EDCF4FB8;
    v6 = a2;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v7, qword_1EDCF4FC0);
    v8 = v6;
    oslog = sub_1C7C7D194();
    v9 = sub_1C7C7D584();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48[0] = v11;
      *v10 = 136315394;
      type metadata accessor for CFError(0);
      sub_1C7C2D748(&qword_1EC264548, type metadata accessor for CFError);
      v12 = sub_1C7C7DB04();
      v14 = sub_1C7BE42F8(v12, v13, v48);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = TCCContext.TCCService.tccString.getter(a3);
      v17 = sub_1C7BE42F8(v15, v16, v48);

      *(v10 + 14) = v17;
      _os_log_impl(&dword_1C7B9A000, oslog, v9, "Error %s while getting auth records for service %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA6C990](v11, -1, -1);
      MEMORY[0x1CCA6C990](v10, -1, -1);

      return;
    }

LABEL_24:

    return;
  }

  if (!a1)
  {
LABEL_20:
    if (qword_1EDCF4FB8 != -1)
    {
      swift_once();
    }

    v36 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v36, qword_1EDCF4FC0);
    oslog = sub_1C7C7D194();
    v37 = sub_1C7C7D574();
    if (os_log_type_enabled(oslog, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48[0] = v39;
      *v38 = 136315138;
      v40 = TCCContext.TCCService.tccString.getter(a3);
      v42 = sub_1C7BE42F8(v40, v41, v48);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1C7B9A000, oslog, v37, "No authorizationRecord / identity for tccService %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x1CCA6C990](v39, -1, -1);
      MEMORY[0x1CCA6C990](v38, -1, -1);

      return;
    }

    goto LABEL_24;
  }

  swift_unknownObjectRetain();
  if (!tcc_authorization_record_get_subject_identity())
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  authorization_right = tcc_authorization_record_get_authorization_right();
  tcc_identity_get_identifier();
  v19 = sub_1C7C7D384();
  v21 = v20;
  if (qword_1EDCF4FB8 != -1)
  {
    swift_once();
  }

  v22 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v22, qword_1EDCF4FC0);

  v23 = sub_1C7C7D194();
  v24 = sub_1C7C7D574();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48[0] = v43;
    *v25 = 136315650;
    *(v25 + 4) = sub_1C7BE42F8(v19, v21, v48);
    *(v25 + 12) = 2080;
    v26 = sub_1C7C2A3E8(authorization_right);
    v44 = authorization_right;
    v28 = sub_1C7BE42F8(v26, v27, v48);

    *(v25 + 14) = v28;
    *(v25 + 22) = 2080;
    v29 = TCCContext.TCCService.tccString.getter(a3);
    v31 = sub_1C7BE42F8(v29, v30, v48);

    *(v25 + 24) = v31;
    authorization_right = v44;
    _os_log_impl(&dword_1C7B9A000, v23, v24, "Found auth record for bundle ID %s with authorization %s for service %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v43, -1, -1);
    MEMORY[0x1CCA6C990](v25, -1, -1);
  }

  v32 = 1;
  if (authorization_right != 3)
  {
    v32 = 2;
  }

  if (authorization_right == 2)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  swift_beginAccess();
  v34 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1C7C67E60(v33, v19, v21, isUniquelyReferenced_nonNull_native);

  *(a4 + 16) = v47;
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

unint64_t sub_1C7C2A3E8(uint64_t a1)
{
  result = 0xD00000000000001FLL;
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 != 3)
      {
        return 0xD000000000000028;
      }

      return result;
    }

    if (a1 == 5)
    {
      return 0xD000000000000023;
    }

    if (a1 == 6)
    {
      return 0xD000000000000022;
    }

    return 0xD00000000000001BLL;
  }

  if (!a1)
  {
    return 0xD00000000000001ELL;
  }

  if (a1 != 1 && a1 != 2)
  {
    return 0xD00000000000001BLL;
  }

  return result;
}

id TCCContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TCCContext.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC9SEService10TCCContext_hceService] = 0;
  *&v0[OBJC_IVAR____TtC9SEService10TCCContext_secService] = 0;
  *&v0[OBJC_IVAR____TtC9SEService10TCCContext_paymentReaderService] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id TCCContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7C2A664()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EDCF4FC0);
  __swift_project_value_buffer(v0, qword_1EDCF4FC0);
  return sub_1C7C7D1A4();
}

char *sub_1C7C2A6E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264468, &qword_1C7C905F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1C7C2A7E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264558, &unk_1C7C90610);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C7C2A8F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264498, &qword_1C7C90600);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C7C2A9FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264530, &qword_1C7C905D8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C7C2AB08(void *a1, void *a2)
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

    v9 = sub_1C7C7D6E4();

    if (v9)
    {

      type metadata accessor for SESOnceOnlyTask();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1C7C7D6D4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1C7C23694(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1C7C2B014(v22 + 1);
    }

    v20 = v8;
    sub_1C7C23870(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for SESOnceOnlyTask();
  v11 = *(v6 + 40);
  v12 = sub_1C7C7D614();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1C7C2B714(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1C7C7D624();

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

uint64_t sub_1C7C2AD20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C7C7DB64();
  sub_1C7C7D364();
  v9 = sub_1C7C7DB84();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C7C7DAA4() & 1) != 0)
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

    sub_1C7C2B874(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C7C2AE70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v10 = *v4;
  v11 = *(*v4 + 40);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  sub_1C7C7DB64();
  CredentialType.hash(into:)();
  v12 = sub_1C7C7DB84();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(v10 + 48) + 24 * v14;
      v17 = *(v16 + 8);
      v26 = *v16;
      v27 = v17;
      v28 = *(v16 + 16);
      sub_1C7BDF708(v26, v17, v28);
      v18 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v26, &v32);
      sub_1C7BEA9D8(v26, v27, v28);
      if (v18)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v8 = v32;
        v7 = v33;
        v6 = v34;
        goto LABEL_6;
      }
    }

    sub_1C7BEA9D8(v32, v33, v34);
    v22 = *(v10 + 48) + 24 * v14;
    v23 = *v22;
    v24 = *(v22 + 8);
    *a1 = *v22;
    *(a1 + 8) = v24;
    v25 = *(v22 + 16);
    *(a1 + 16) = v25;
    sub_1C7BDF708(v23, v24, v25);
    return 0;
  }

  else
  {
LABEL_6:
    v19 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    sub_1C7BDF708(v8, v7, v6);
    sub_1C7C2B9F4(v8, v7, v6, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v26;
    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = v6;
    return 1;
  }
}

uint64_t sub_1C7C2B014(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
  result = sub_1C7C7D754();
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1C7C7D614();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C7C2B23C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264540, &qword_1C7C905F8);
  result = sub_1C7C7D754();
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
      sub_1C7C7DB64();
      sub_1C7C7D364();
      result = sub_1C7C7DB84();
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

uint64_t sub_1C7C2B49C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264538, &unk_1C7C905E0);
  result = sub_1C7C7D754();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1C7C7DB64();
      CredentialType.hash(into:)();
      result = sub_1C7C7DB84();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_1C7C2B714(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C7C2B014(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1C7C2BBA8();
      goto LABEL_12;
    }

    sub_1C7C2BFBC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1C7C7D614();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for SESOnceOnlyTask();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1C7C7D624();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C7C7DAE4();
  __break(1u);
}

uint64_t sub_1C7C2B874(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C7C2B23C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C7C2BCF8();
      goto LABEL_16;
    }

    sub_1C7C2C1D0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C7C7DB64();
  sub_1C7C7D364();
  result = sub_1C7C7DB84();
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

      result = sub_1C7C7DAA4();
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
  result = sub_1C7C7DAE4();
  __break(1u);
  return result;
}

uint64_t sub_1C7C2B9F4(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v6 = v5;
  v8 = a3;
  v9 = a2;
  v10 = result;
  v31 = result;
  v32 = a2;
  v33 = a3;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a5)
  {
    sub_1C7C2B49C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1C7C2BE54();
      goto LABEL_13;
    }

    sub_1C7C2C408(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  v28 = v10;
  v29 = v9;
  v30 = v8;
  sub_1C7C7DB64();
  CredentialType.hash(into:)();
  result = sub_1C7C7DB84();
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    while (1)
    {
      v17 = *(v13 + 48) + 24 * a4;
      v18 = *(v17 + 8);
      v25 = *v17;
      v26 = v18;
      v27 = *(v17 + 16);
      sub_1C7BDF708(v25, v18, v27);
      v19 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v25, &v31);
      result = sub_1C7BEA9D8(v25, v26, v27);
      if (v19)
      {
        goto LABEL_16;
      }

      a4 = (a4 + 1) & v16;
      if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        v10 = v31;
        v9 = v32;
        v8 = v33;
        break;
      }
    }
  }

LABEL_13:
  v20 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = *(v20 + 48) + 24 * a4;
  *v21 = v10;
  *(v21 + 8) = v9;
  *(v21 + 16) = v8;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_16:
  result = sub_1C7C7DAE4();
  __break(1u);
  return result;
}

id sub_1C7C2BBA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
  v2 = *v0;
  v3 = sub_1C7C7D744();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_1C7C2BCF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264540, &qword_1C7C905F8);
  v2 = *v0;
  v3 = sub_1C7C7D744();
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

void *sub_1C7C2BE54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264538, &unk_1C7C905E0);
  v2 = *v0;
  v3 = sub_1C7C7D744();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_1C7BDF708(v19, v20, v22);
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

uint64_t sub_1C7C2BFBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264390, &qword_1C7C8FDC8);
  result = sub_1C7C7D754();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1C7C7D614();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_1C7C2C1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264540, &qword_1C7C905F8);
  result = sub_1C7C7D754();
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
      sub_1C7C7DB64();

      sub_1C7C7D364();
      result = sub_1C7C7DB84();
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

uint64_t sub_1C7C2C408(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264538, &unk_1C7C905E0);
  result = sub_1C7C7D754();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_1C7C7DB64();
      sub_1C7BDF708(v20, v21, v22);
      CredentialType.hash(into:)();
      result = sub_1C7C7DB84();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

unint64_t sub_1C7C2C660(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t _s9SEService10TCCContextC28checkTCCAccessWithoutLoading2to3forAC0D0OAC10TCCServiceO_SStFZ_0(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C7C7D2E4();
  v6 = TCCAccessCopyInformationForBundleId();

  if (!v6)
  {
    if (qword_1EDCF4FB8 != -1)
    {
      swift_once();
    }

    v30 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v30, qword_1EDCF4FC0);

    v31 = sub_1C7C7D194();
    v32 = sub_1C7C7D594();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1C7BE42F8(a2, a3, v57);
      _os_log_impl(&dword_1C7B9A000, v31, v32, "Unable to look up TCC for %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1CCA6C990](v34, -1, -1);
      MEMORY[0x1CCA6C990](v33, -1, -1);
    }

    return 3;
  }

  v53 = sub_1C7C7D424();

  v7 = *MEMORY[0x1E69D54F8];
  if (!*MEMORY[0x1E69D54F8])
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v57[0] = v7;
    result = sub_1C7C7DAC4();
    __break(1u);
    return result;
  }

  v8 = *MEMORY[0x1E69D54E8];
  v52 = v7;
  if (!v8)
  {
    goto LABEL_73;
  }

  v51 = v8;
  v58 = MEMORY[0x1E69E7CC0];
  v9 = v53;
  if (v53 >> 62)
  {
LABEL_44:
    v10 = sub_1C7C7D6D4();
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_45:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  v10 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_45;
  }

LABEL_6:
  v11 = 0;
  v12 = v9 & 0xC000000000000001;
  v13 = v9 & 0xFFFFFFFFFFFFFF8;
  v14 = &unk_1EC264550;
  v50 = v10;
  while (!v12)
  {
    if (v11 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v15 = *(v9 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_36;
    }

LABEL_12:
    v57[0] = v15;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, &qword_1C7C90608);
    if (swift_dynamicCast())
    {
      v17 = v14;
      v18 = v55;
      v55 = v52;
      type metadata accessor for CFString(0);
      sub_1C7C2D748(&qword_1EC2623F8, type metadata accessor for CFString);
      v19 = v52;
      sub_1C7C7D734();
      if (v18[2] && (v20 = sub_1C7C70304(v57), (v21 & 1) != 0))
      {
        v22 = *(v18[7] + 8 * v20);
        swift_unknownObjectRetain();
        sub_1C7C2D790(v57);

        if (swift_dynamicCast())
        {
          v7 = a1;
          if (a1 == 2)
          {
            v7 = MEMORY[0x1E69D55E0];
            v23 = *MEMORY[0x1E69D55E0];
            if (!*MEMORY[0x1E69D55E0])
            {
              goto LABEL_76;
            }
          }

          else if (a1 == 1)
          {
            v7 = MEMORY[0x1E69D5530];
            v23 = *MEMORY[0x1E69D5530];
            if (!*MEMORY[0x1E69D5530])
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (a1)
            {
              goto LABEL_77;
            }

            v7 = MEMORY[0x1E69D5528];
            v23 = *MEMORY[0x1E69D5528];
            if (!*MEMORY[0x1E69D5528])
            {
              goto LABEL_74;
            }
          }

          v24 = sub_1C7C7D304();
          v26 = v25;

          if (v52 == v24 && v56 == v26)
          {
          }

          else
          {
            v27 = sub_1C7C7DAA4();

            if ((v27 & 1) == 0)
            {
              swift_unknownObjectRelease();
              goto LABEL_33;
            }
          }

          sub_1C7C7D7E4();
          v28 = *(v58 + 16);
          sub_1C7C7D814();
          sub_1C7C7D824();
          sub_1C7C7D7F4();
LABEL_33:
          v9 = v53;
          v14 = v17;
          v10 = v50;
          goto LABEL_8;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_1C7C2D790(v57);
      }

      v9 = v53;
      v10 = v50;
    }

    else
    {
      swift_unknownObjectRelease();
    }

LABEL_8:
    ++v11;
    if (v16 == v10)
    {
      goto LABEL_37;
    }
  }

  v15 = MEMORY[0x1CCA6B7B0](v11, v9);
  v16 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_12;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v29 = v58;
LABEL_46:

  if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
  {
LABEL_69:
    v35 = sub_1C7C7D6D4();
    if (!v35)
    {
      goto LABEL_70;
    }

LABEL_49:
    v36 = 0;
    v37 = &unk_1EC264550;
    v54 = v35;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1CCA6B7B0](v36, v29);
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_66:
          __break(1u);
LABEL_67:

          return 2;
        }
      }

      else
      {
        if (v36 >= *(v29 + 16))
        {
          __break(1u);
          goto LABEL_69;
        }

        v38 = *(v29 + 8 * v36 + 32);
        swift_unknownObjectRetain();
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_66;
        }
      }

      v57[0] = v38;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37, &qword_1C7C90608);
      if (swift_dynamicCast())
      {
        v40 = v37;
        v41 = v55;
        v55 = v51;
        type metadata accessor for CFString(0);
        sub_1C7C2D748(&qword_1EC2623F8, type metadata accessor for CFString);
        v42 = v51;
        sub_1C7C7D734();
        if (v41[2] && (v43 = sub_1C7C70304(v57), (v44 & 1) != 0))
        {
          v45 = *(v41[7] + 8 * v43);
          swift_unknownObjectRetain();
          sub_1C7C2D790(v57);

          objc_opt_self();
          v46 = swift_dynamicCastObjCClass();
          if (v46)
          {
            v47 = [v46 BOOLValue];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v37 = v40;
            v35 = v54;
            if (v47)
            {

              return 0;
            }

            goto LABEL_51;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          sub_1C7C2D790(v57);
        }

        v37 = v40;
        v35 = v54;
      }

      else
      {
        swift_unknownObjectRelease();
      }

LABEL_51:
      ++v36;
      if (v39 == v35)
      {
        goto LABEL_67;
      }
    }
  }

  v35 = *(v29 + 16);
  if (v35)
  {
    goto LABEL_49;
  }

LABEL_70:

  return 3;
}

unint64_t sub_1C7C2CE08(uint64_t a1)
{
  v2 = sub_1C7C7D234();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCF4FB8 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EDCF4FC0);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D564();
  v10 = os_log_type_enabled(v8, v9);
  v50 = a1;
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = TCCContext.TCCService.tccString.getter(a1);
    v15 = sub_1C7BE42F8(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "Loading TCC information for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x1CCA6C990](v12, -1, -1);
    MEMORY[0x1CCA6C990](v11, -1, -1);
  }

  sub_1C7C28E14();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E7F98], v2);
  v16 = sub_1C7C7D5C4();
  (*(v3 + 8))(v6, v2);
  v17 = tcc_server_create();

  if (v17)
  {
    v18 = v50;
    TCCContext.TCCService.tccString.getter(v50);
    v19 = sub_1C7C7D2E4();

    v20 = tcc_service_singleton_for_CF_name();

    if (v20)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = MEMORY[0x1E69E7CC8];
      v22 = swift_allocObject();
      *(v22 + 16) = v18;
      *(v22 + 24) = v21;
      aBlock[4] = sub_1C7C2D728;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C7C27E34;
      aBlock[3] = &block_descriptor_0;
      v23 = _Block_copy(aBlock);

      tcc_server_message_get_authorization_records_by_service();
      _Block_release(v23);

      v24 = sub_1C7C7D194();
      v25 = sub_1C7C7D574();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock[0] = v49;
        *v26 = 136315394;
        v27 = TCCContext.TCCService.tccString.getter(v18);
        v29 = sub_1C7BE42F8(v27, v28, aBlock);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        swift_beginAccess();
        v30 = *(v21 + 16);

        v31 = sub_1C7C7D264();
        v33 = v32;

        v34 = sub_1C7BE42F8(v31, v33, aBlock);

        *(v26 + 14) = v34;
        _os_log_impl(&dword_1C7B9A000, v24, v25, "Loaded TCC information for service %s --> %s", v26, 0x16u);
        v35 = v49;
        swift_arrayDestroy();
        MEMORY[0x1CCA6C990](v35, -1, -1);
        MEMORY[0x1CCA6C990](v26, -1, -1);
      }

      else
      {
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_beginAccess();
      v39 = *(v21 + 16);
    }

    else
    {
      v40 = sub_1C7C7D194();
      v41 = sub_1C7C7D584();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136315138;
        v44 = TCCContext.TCCService.tccString.getter(v18);
        v46 = sub_1C7BE42F8(v44, v45, aBlock);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_1C7B9A000, v40, v41, "Unable to create tcc Service string %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x1CCA6C990](v43, -1, -1);
        MEMORY[0x1CCA6C990](v42, -1, -1);
      }

      v39 = sub_1C7C730F8(MEMORY[0x1E69E7CC0]);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v36 = sub_1C7C7D194();
    v37 = sub_1C7C7D584();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1C7B9A000, v36, v37, "Failed to create tcc server", v38, 2u);
      MEMORY[0x1CCA6C990](v38, -1, -1);
    }

    return sub_1C7C730F8(MEMORY[0x1E69E7CC0]);
  }

  return v39;
}

uint64_t sub_1C7C2D46C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C7C2D47C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C7C2D48C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1CCA6B510](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C7C2AD20(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1C7C2D528()
{
  result = qword_1EC264518;
  if (!qword_1EC264518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264518);
  }

  return result;
}

unint64_t sub_1C7C2D580()
{
  result = qword_1EC264520;
  if (!qword_1EC264520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264520);
  }

  return result;
}

unint64_t sub_1C7C2D5D8()
{
  result = qword_1EC264528;
  if (!qword_1EC264528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264528);
  }

  return result;
}

uint64_t sub_1C7C2D680(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C7C003B8();
  result = MEMORY[0x1CCA6B510](v2, &type metadata for CredentialType, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1C7BDF708(v7, v6, v8);
      sub_1C7C2AE70(v9, v7, v6, v8);
      sub_1C7BEA9D8(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C7C2D748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SECErrorInternal.localizedDescription.getter(uint64_t a1)
{
  result = 0x6174614465726F43;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 16:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
    case 22:
    case 26:
      result = 0xD000000000000023;
      break;
    case 4:
    case 12:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD00000000000002ELL;
      break;
    case 6:
    case 33:
      result = 0xD000000000000010;
      break;
    case 7:
    case 25:
      result = 0xD000000000000034;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 10:
    case 13:
    case 19:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD000000000000022;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
    case 28:
      result = 0xD00000000000001DLL;
      break;
    case 20:
    case 30:
      result = 0xD000000000000026;
      break;
    case 21:
    case 29:
      result = 0xD00000000000002BLL;
      break;
    case 23:
      result = 0xD00000000000001BLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 27:
      result = 0xD000000000000015;
      break;
    case 31:
      result = 0xD00000000000001FLL;
      break;
    case 32:
      result = 0xD00000000000001ALL;
      break;
    case 34:
      result = 0xD000000000000011;
      break;
    default:
      result = sub_1C7C7DAC4();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1C7C2DBF8()
{
  v2 = *v0;
  sub_1C7C7DB64();
  sub_1C7C7D294();
  return sub_1C7C7DB84();
}

uint64_t sub_1C7C2DC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C7C2E050();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1C7C2DCA8()
{
  v2 = *v0;
  sub_1C7C7DB64();
  sub_1C7C7D294();
  return sub_1C7C7DB84();
}

unint64_t sub_1C7C2DD08@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C7C2DE24(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C7C2DD3C(uint64_t a1)
{
  v2 = sub_1C7C2E050();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1C7C2DD78(uint64_t a1)
{
  v2 = sub_1C7C2E050();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1C7C2DDD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C7C2E050();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

unint64_t sub_1C7C2DE24(unint64_t result)
{
  if (result > 0x22)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C7C2DE38()
{
  result = qword_1EC264560;
  if (!qword_1EC264560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264560);
  }

  return result;
}

unint64_t sub_1C7C2DE8C()
{
  result = qword_1EC264568;
  if (!qword_1EC264568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264568);
  }

  return result;
}

unint64_t sub_1C7C2DEE4()
{
  result = qword_1EC264570;
  if (!qword_1EC264570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264570);
  }

  return result;
}

unint64_t sub_1C7C2DF3C()
{
  result = qword_1EC264578;
  if (!qword_1EC264578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264578);
  }

  return result;
}

unint64_t sub_1C7C2DF94()
{
  result = qword_1EC264580;
  if (!qword_1EC264580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264580);
  }

  return result;
}

unint64_t sub_1C7C2DFEC()
{
  result = qword_1EC264588;
  if (!qword_1EC264588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264588);
  }

  return result;
}

unint64_t sub_1C7C2E050()
{
  result = qword_1EC264590;
  if (!qword_1EC264590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264590);
  }

  return result;
}

uint64_t sub_1C7C2E0A8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v47 = MEMORY[0x1E69E7CC0];
  sub_1C7C25B8C(0, v3, 0);
  v4 = v47;
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = sub_1C7C7D684();
  v9 = 0;
  v10 = *(v5 + 36);
  v40 = v5 + 72;
  v41 = v3;
  v43 = v10;
  v44 = v5;
  v42 = v5 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
  {
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(v5 + 36))
    {
      goto LABEL_24;
    }

    v46 = v8 >> 6;
    v45 = v9;
    v13 = v4;
    v14 = *(v5 + 56);
    v15 = *(v5 + 48) + 24 * v8;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v14 + 8 * v8);
    v20 = sub_1C7C7CFB4();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1C7BDF708(v17, v16, v18);
    sub_1C7C7CFA4();
    sub_1C7BDF724();
    v23 = sub_1C7C7CF94();
    if (v2)
    {
      goto LABEL_28;
    }

    v25 = v23;
    v26 = v24;

    v27 = sub_1C7C7D024();
    sub_1C7BDF778(v25, v26);
    v28 = sub_1C7C7D544();
    sub_1C7BEA9D8(v17, v16, v18);
    v4 = v13;
    v30 = *(v13 + 16);
    v29 = *(v13 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1C7C25B8C((v29 > 1), v30 + 1, 1);
      v4 = v13;
    }

    *(v4 + 16) = v30 + 1;
    v31 = v4 + 16 * v30;
    *(v31 + 32) = v27;
    *(v31 + 40) = v28;
    v10 = v43;
    v5 = v44;
    v11 = 1 << *(v44 + 32);
    if (v8 >= v11)
    {
      goto LABEL_25;
    }

    v6 = v42;
    v32 = *(v42 + 8 * v46);
    if ((v32 & (1 << v8)) == 0)
    {
      goto LABEL_26;
    }

    if (v43 != *(v44 + 36))
    {
      goto LABEL_27;
    }

    v33 = v32 & (-2 << (v8 & 0x3F));
    if (v33)
    {
      v11 = __clz(__rbit64(v33)) | v8 & 0x7FFFFFFFFFFFFFC0;
      v12 = v41;
    }

    else
    {
      v34 = v46 << 6;
      v35 = v46 + 1;
      v12 = v41;
      v36 = (v40 + 8 * v46);
      while (v35 < (v11 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          sub_1C7C322B0(v8, v43, 0);
          v11 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      sub_1C7C322B0(v8, v43, 0);
    }

LABEL_4:
    v2 = 0;
    v9 = v45 + 1;
    v8 = v11;
    if (v45 + 1 == v12)
    {
      return v4;
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
LABEL_27:
  __break(1u);
LABEL_28:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1C7C2E3D0(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1C7C7D6D4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C7C25BEC(0, v2 & ~(v2 >> 63), 0);
    v3 = v43;
    if (v32)
    {
      v4 = sub_1C7C7D844();
    }

    else
    {
      v6 = -1 << *(v1 + 32);
      v4 = sub_1C7C7D684();
      v5 = *(v1 + 36);
    }

    v40 = v4;
    v41 = v5;
    v42 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v30 = v2;
      v31 = v1;
      while (v7 < v2)
      {
        if (__OFADD__(v7, 1))
        {
          goto LABEL_27;
        }

        v15 = v40;
        v16 = v42;
        v33 = v41;
        sub_1C7C72C88(&v39, v40, v41, v42, v1);
        v18 = v17;
        v19 = v39;
        v20 = sub_1C7C7D304();
        CredentialType.init(rawValue:)(v20, v21, &v37);
        if (v38 == 255)
        {
          v34 = 0;
          v23 = 0;
          v22 = 22;
        }

        else
        {
          v35 = v37;
          v36 = v38;
          CredentialType.init(fromLegacy:)(&v35, &v37);
          v34 = *(&v37 + 1);
          v22 = v37;
          v23 = v38;
        }

        v24 = sub_1C7C7D534();

        v25 = v3;
        v43 = v3;
        v26 = *(v3 + 16);
        v27 = *(v25 + 24);
        if (v26 >= v27 >> 1)
        {
          sub_1C7C25BEC((v27 > 1), v26 + 1, 1);
          v25 = v43;
        }

        *(v25 + 16) = v26 + 1;
        v28 = v25 + 32 * v26;
        *(v28 + 32) = v22;
        *(v28 + 40) = v34;
        *(v28 + 48) = v23;
        *(v28 + 56) = v24;
        if (v32)
        {
          v1 = v31;
          if (!v16)
          {
            goto LABEL_29;
          }

          v3 = v25;
          if (sub_1C7C7D864())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          v14 = v7 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265020, &qword_1C7C90A10);
          v29 = sub_1C7C7D274();
          sub_1C7C7D8C4();
          v29(&v37, 0);
        }

        else
        {
          v3 = v25;
          v1 = v31;
          sub_1C7C729F4(v15, v33, v16, v31);
          v9 = v8;
          v11 = v10;
          v13 = v12;
          sub_1C7C322B0(v15, v33, v16);
          v40 = v9;
          v41 = v11;
          v42 = v13 & 1;
          v2 = v30;
          v14 = v7 + 1;
        }

        ++v7;
        if (v14 == v2)
        {
          sub_1C7C322B0(v40, v41, v42);
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C7C2E6D8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1C7C7D6D4();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if (v4)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C7C25BEC(0, v4 & ~(v4 >> 63), 0);
    v40 = v49;
    if (v37)
    {
      v5 = sub_1C7C7D844();
    }

    else
    {
      v7 = -1 << *(v3 + 32);
      v5 = sub_1C7C7D684();
      v6 = *(v3 + 36);
    }

    v46 = v5;
    v47 = v6;
    v48 = v37 != 0;
    if ((v4 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v35 = v4;
      v36 = v3;
      while (v8 < v4)
      {
        if (__OFADD__(v8, 1))
        {
          goto LABEL_27;
        }

        v16 = v48;
        v38 = v46;
        v39 = v47;
        sub_1C7C72A74(&v45, v46, v47, v48, v3);
        v18 = v17;
        v19 = v45;
        v20 = sub_1C7C7D054();
        v22 = v21;
        v23 = sub_1C7C7CF84();
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        swift_allocObject();
        sub_1C7BED654(v20, v22);
        sub_1C7C7CF74();
        sub_1C7BE4974();
        sub_1C7C7CF64();
        if (v2)
        {

          sub_1C7BDF778(v20, v22);

          sub_1C7BDF778(v20, v22);
          v26 = 0;
          v27 = 0;
          v28 = 22;
        }

        else
        {

          sub_1C7BDF778(v20, v22);
          v41 = v43;
          v42 = v44;
          CredentialType.init(fromLegacy:)(&v41, &v43);
          sub_1C7BDF778(v20, v22);
          v26 = *(&v43 + 1);
          v28 = v43;
          v27 = v44;
        }

        v29 = sub_1C7C7D534();

        v30 = v40;
        v49 = v40;
        v32 = *(v40 + 16);
        v31 = *(v40 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1C7C25BEC((v31 > 1), v32 + 1, 1);
          v30 = v49;
        }

        *(v30 + 16) = v32 + 1;
        v33 = v30 + 32 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v26;
        *(v33 + 48) = v27;
        *(v33 + 56) = v29;
        v40 = v30;
        if (v37)
        {
          v2 = 0;
          v3 = v36;
          if (!v16)
          {
            goto LABEL_29;
          }

          if (sub_1C7C7D864())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v4 = v35;
          v15 = v8 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646C0, &qword_1C7C90A18);
          v34 = sub_1C7C7D274();
          sub_1C7C7D8C4();
          v34(&v43, 0);
        }

        else
        {
          v3 = v36;
          sub_1C7C72858(v38, v39, v16, v36);
          v10 = v9;
          v12 = v11;
          v14 = v13;
          sub_1C7C322B0(v38, v39, v16);
          v46 = v10;
          v47 = v12;
          v48 = v14 & 1;
          v15 = v8 + 1;
          v2 = 0;
          v4 = v35;
        }

        ++v8;
        if (v15 == v4)
        {
          sub_1C7C322B0(v46, v47, v48);
          return;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C7C2EA70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264448, &qword_1C7C90A20);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v33 - v5;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1C7C7D6D4();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v36 = v6;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C7C25BCC(0, v7 & ~(v7 >> 63), 0);
    v40 = v45;
    if (v39)
    {
      result = sub_1C7C7D844();
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      result = sub_1C7C7D684();
      v9 = *(a1 + 36);
    }

    v42 = result;
    v43 = v9;
    v44 = v39 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v33[0] = v1;
      v33[1] = v12;
      v34 = v7;
      v35 = a1;
      while (v11 < v7)
      {
        v19 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_26;
        }

        v21 = v42;
        v20 = v43;
        v22 = v44;
        sub_1C7C72A1C(v41, v42, v43, v44, a1);
        v24 = v23;
        v25 = v41[0];
        v26 = *(v38 + 48);
        v27 = v36;
        sub_1C7C7D0E4();

        *(v27 + v26) = v25;
        v28 = v40;
        v45 = v40;
        v30 = *(v40 + 16);
        v29 = *(v40 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1C7C25BCC(v29 > 1, v30 + 1, 1);
          v27 = v36;
          v28 = v45;
        }

        *(v28 + 16) = v30 + 1;
        v31 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v28;
        result = sub_1C7C32A4C(v27, v28 + v31 + *(v37 + 72) * v30, &qword_1EC264448, &qword_1C7C90A20);
        if (v39)
        {
          a1 = v35;
          if (!v22)
          {
            goto LABEL_28;
          }

          if (sub_1C7C7D864())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646D0, &qword_1C7C90A28);
          v32 = sub_1C7C7D274();
          sub_1C7C7D8C4();
          result = v32(v41, 0);
        }

        else
        {
          a1 = v35;
          sub_1C7C72830(v21, v20, v22, v35);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          result = sub_1C7C322B0(v21, v20, v22);
          v42 = v14;
          v43 = v16;
          v44 = v18 & 1;
          v7 = v34;
        }

        ++v11;
        if (v19 == v7)
        {
          sub_1C7C322B0(v42, v43, v44);
          return v40;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7C2EDC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v41 = MEMORY[0x1E69E7CC0];
  sub_1C7C25BEC(0, v1, 0);
  v2 = v41;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1C7C7D684();
  v7 = result;
  v8 = 0;
  v35 = *(v3 + 36);
  v28 = v3 + 72;
  v29 = v1;
  v30 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v35 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v8;
    v11 = *(v3 + 56);
    v12 = *(v3 + 48) + 24 * v7;
    v13 = v3;
    v15 = *(v12 + 8);
    v16 = *(v11 + 8 * v7);
    v17 = *(v12 + 16);
    v36[0] = *v12;
    v14 = v36[0];
    v36[1] = v15;
    v37 = v17;
    CredentialType.init(fromLegacy:)(v36, v38);
    v40 = v16;
    v33 = v38[1];
    v34 = v38[0];
    v32 = v39;
    result = sub_1C7BDF708(v14, v15, v17);
    v41 = v2;
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1C7C25BEC((v18 > 1), v19 + 1, 1);
      v2 = v41;
    }

    *(v2 + 16) = v19 + 1;
    v20 = v2 + 32 * v19;
    *(v20 + 32) = v34;
    *(v20 + 40) = v33;
    *(v20 + 48) = v32;
    *(v20 + 56) = v16;
    v9 = 1 << *(v13 + 32);
    v4 = v30;
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v21 = *(v30 + 8 * v10);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v13;
    if (v35 != *(v13 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v28 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1C7C322B0(v7, v35, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1C7C322B0(v7, v35, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v9;
    if (v31 + 1 == v29)
    {
      return v2;
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
  return result;
}

id ReservationState.__allocating_init(counts:reservations:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC9SEService16ReservationState_counts] = a1;
  *&v5[OBJC_IVAR____TtC9SEService16ReservationState_reservations] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ReservationState.init(counts:reservations:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9SEService16ReservationState_counts] = a1;
  *&v2[OBJC_IVAR____TtC9SEService16ReservationState_reservations] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t ReservationState.stringValue.getter()
{
  swift_getObjectType();
  v0 = sub_1C7C7CFB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7C2F3D0(&unk_1EC264F30, v3, type metadata accessor for ReservationState);
  v4 = sub_1C7C7CF94();
  v6 = v5;
  v7 = sub_1C7C7D034();
  sub_1C7BDF778(v4, v6);

  return v7;
}

uint64_t sub_1C7C2F3D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ReservationState.description.getter()
{
  v1 = v0;
  sub_1C7C7D794();

  v2 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v3 = *(v1 + v2);
  sub_1C7C003B8();

  v4 = sub_1C7C7D264();
  v6 = v5;

  MEMORY[0x1CCA6B380](v4, v6);

  MEMORY[0x1CCA6B380](0x617672657365520ALL, 0xEE003A736E6F6974);
  v7 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v8 = *(v1 + v7);
  sub_1C7C7D104();
  type metadata accessor for Reservation();
  sub_1C7C2F3D0(&unk_1EC264F40, 255, MEMORY[0x1E69695A8]);

  v9 = sub_1C7C7D264();
  v11 = v10;

  MEMORY[0x1CCA6B380](v9, v11);

  return 0xD000000000000013;
}

id sub_1C7C2F600(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C7C7D2E4();

  return v5;
}

unint64_t ReservationState.debugDescription.getter()
{
  swift_getObjectType();
  sub_1C7C7D794();
  v0 = ReservationState.description.getter();

  v12 = v0;
  MEMORY[0x1CCA6B380](0x632067756265440ALL, 0xED0000203A65646FLL);
  v1 = sub_1C7C7CFB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1C7C7CFA4();
  sub_1C7C2F3D0(&unk_1EC264F30, v4, type metadata accessor for ReservationState);
  v5 = sub_1C7C7CF94();
  v7 = v6;
  v8 = sub_1C7C7D034();
  v10 = v9;
  sub_1C7BDF778(v5, v7);

  MEMORY[0x1CCA6B380](v8, v10);

  return v12;
}

Swift::Void __swiftcall ReservationState.encode(with:)(NSCoder with)
{
  v2 = v1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2645D0, &qword_1C7C907F0);
  v4 = *(*(v75 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v75);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v73 = &v65 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v72 = &v65 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v65 - v11;
  v12 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v13 = *(v2 + v12);

  v15 = sub_1C7C2E0A8(v14);

  if (*(v15 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D0, &qword_1C7C907F8);
    v16 = sub_1C7C7D914();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC8];
  }

  v81[0] = v16;

  sub_1C7C315A8(v17, 1, v81);
  v65 = 0;

  sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  sub_1C7BED6A8(0, &qword_1EC2645D8, 0x1E696AD98);
  sub_1C7C32260(&qword_1EC2645E0, &qword_1EC262ED0, 0x1E695DEF0);
  v18 = sub_1C7C7D244();

  v19 = sub_1C7C7D2E4();
  isa = with.super.isa;
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  v20 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
  swift_beginAccess();
  v21 = *(v2 + v20);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v80 = MEMORY[0x1E69E7CC0];

    sub_1C7C25B4C(0, v22, 0);
    v23 = v80;
    v24 = v21 + 64;
    v25 = -1 << *(v21 + 32);
    v26 = sub_1C7C7D684();
    v27 = 0;
    v79 = *(v21 + 36);
    v28 = v21 + 72;
    v67 = v21 + 72;
    v68 = v22;
    v69 = v21 + 64;
    v70 = v21;
    while ((v26 & 0x8000000000000000) == 0)
    {
      v28 = 1 << *(v21 + 32);
      if (v26 >= v28)
      {
        break;
      }

      v31 = v26 >> 6;
      v28 = *(v24 + 8 * (v26 >> 6));
      if ((v28 & (1 << v26)) == 0)
      {
        goto LABEL_30;
      }

      v28 = *(v21 + 36);
      if (v79 != v28)
      {
        goto LABEL_31;
      }

      v76 = v27;
      v77 = 1 << v26;
      v32 = *(v21 + 48);
      v33 = sub_1C7C7D104();
      v34 = *(v33 - 8);
      v35 = v71;
      (*(v34 + 16))(v71, v32 + *(v34 + 72) * v26, v33);
      v36 = *(*(v21 + 56) + 8 * v26);
      v37 = *(v34 + 32);
      v78 = v23;
      v38 = v72;
      v37(v72, v35, v33);
      v39 = v75;
      *(v38 + *(v75 + 48)) = v36;
      v40 = v73;
      sub_1C7C329E4(v38, v73, &qword_1EC2645D0, &qword_1C7C907F0);
      v41 = *(v40 + *(v39 + 48));
      v42 = v36;

      v43 = sub_1C7C7D0C4();
      v44 = v38;
      v45 = v74;
      sub_1C7C32A4C(v44, v74, &qword_1EC2645D0, &qword_1C7C907F0);
      v46 = *(v45 + *(v39 + 48));
      v47 = *(v34 + 8);
      v48 = v45;
      v23 = v78;
      v47(v48, v33);
      v47(v40, v33);
      v80 = v23;
      v50 = *(v23 + 16);
      v49 = *(v23 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1C7C25B4C((v49 > 1), v50 + 1, 1);
        v23 = v80;
      }

      *(v23 + 16) = v50 + 1;
      v51 = v23 + 16 * v50;
      *(v51 + 32) = v43;
      *(v51 + 40) = v46;
      v21 = v70;
      v28 = *(v70 + 32);
      v29 = 1 << v28;
      if (v26 >= 1 << v28)
      {
        goto LABEL_32;
      }

      v24 = v69;
      v28 = *(v69 + 8 * v31);
      if ((v28 & v77) == 0)
      {
        goto LABEL_33;
      }

      if (v79 != *(v70 + 36))
      {
        goto LABEL_34;
      }

      v52 = v28 & (-2 << (v26 & 0x3F));
      if (v52)
      {
        v28 = __clz(__rbit64(v52));
        v29 = v28 | v26 & 0x7FFFFFFFFFFFFFC0;
        v30 = v68;
      }

      else
      {
        v53 = v31 << 6;
        v54 = v31 + 1;
        v30 = v68;
        v55 = (v67 + 8 * v31);
        while (v54 < (v29 + 63) >> 6)
        {
          v57 = *v55++;
          v56 = v57;
          v53 += 64;
          ++v54;
          if (v57)
          {
            sub_1C7C322B0(v26, v79, 0);
            v28 = __clz(__rbit64(v56));
            v29 = v28 + v53;
            goto LABEL_7;
          }
        }

        sub_1C7C322B0(v26, v79, 0);
      }

LABEL_7:
      v27 = v76 + 1;
      v26 = v29;
      if (v76 + 1 == v30)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    v64 = *(v28 - 256);
  }

  else
  {
LABEL_24:
    v58 = isa;
    if (*(v23 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2645E8, &qword_1C7C90800);
      v59 = sub_1C7C7D914();
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC8];
    }

    v80 = v59;

    v61 = v65;
    sub_1C7C31220(v60, 1, &v80);
    if (!v61)
    {

      sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
      type metadata accessor for Reservation();
      sub_1C7C32260(&unk_1EC2645F8, &qword_1EC263460, 0x1E696AFB0);
      v62 = sub_1C7C7D244();

      v63 = sub_1C7C7D2E4();
      [(objc_class *)v58 encodeObject:v62 forKey:v63];

      return;
    }
  }

  swift_unexpectedError();
  __break(1u);
}

id ReservationState.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
  type metadata accessor for Reservation();
  v4 = sub_1C7C7D5F4();
  if (!v4)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  v5 = v4;
  sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  sub_1C7BED6A8(0, &qword_1EC2645D8, 0x1E696AD98);
  v6 = sub_1C7C7D5F4();
  if (v6)
  {
    sub_1C7C2E3D0(v6);
    v8 = v7;

    if (*(v8 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
      v9 = sub_1C7C7D914();
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC8];
    }

    v21[0] = v9;
    sub_1C7C31E74(v8, 1, v21);
LABEL_14:
    v15 = v21[0];
    goto LABEL_15;
  }

  sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  v11 = sub_1C7C7D5F4();
  if (v11)
  {
    sub_1C7C2E6D8(v11);
    v13 = v12;

    if (*(v13 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
      v14 = sub_1C7C7D914();
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC8];
    }

    v21[0] = v14;
    sub_1C7C322BC(v13, 1, v21);

    goto LABEL_14;
  }

  v15 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
LABEL_15:
  *&v1[OBJC_IVAR____TtC9SEService16ReservationState_counts] = v15;
  v16 = sub_1C7C2EA70(v5);

  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264608, &qword_1C7C90808);
    v17 = sub_1C7C7D914();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
  }

  v21[0] = v17;

  sub_1C7C31930(v18, 1, v21);

  *&v1[OBJC_IVAR____TtC9SEService16ReservationState_reservations] = v21[0];
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, sel_init);

  return v10;
}

uint64_t CredentialType.init(fromLegacy:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C7C7CF84();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1C7BED654(a1, a2);
  sub_1C7C7CF74();
  sub_1C7BE4974();
  sub_1C7C7CF64();

  sub_1C7BDF778(a1, a2);
  v11 = v13;
  v12 = v14;
  CredentialType.init(fromLegacy:)(&v11, &v13);
  result = sub_1C7BDF778(a1, a2);
  v10 = v14;
  *a3 = v13;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_1C7C3058C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7461767265736572;
  }

  else
  {
    v4 = 0x73746E756F63;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEC000000736E6F69;
  }

  if (*a2)
  {
    v6 = 0x7461767265736572;
  }

  else
  {
    v6 = 0x73746E756F63;
  }

  if (*a2)
  {
    v7 = 0xEC000000736E6F69;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();
  }

  return v9 & 1;
}

uint64_t sub_1C7C30638()
{
  v1 = *v0;
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C306C0()
{
  *v0;
  sub_1C7C7D364();
}

uint64_t sub_1C7C30734()
{
  v1 = *v0;
  sub_1C7C7DB64();
  sub_1C7C7D364();

  return sub_1C7C7DB84();
}

uint64_t sub_1C7C307B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1C7C7D934();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1C7C30818(uint64_t *a1@<X8>)
{
  v2 = 0x73746E756F63;
  if (*v1)
  {
    v2 = 0x7461767265736572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC000000736E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1C7C3085C()
{
  if (*v0)
  {
    result = 0x7461767265736572;
  }

  else
  {
    result = 0x73746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C3089C@<X0>(char *a1@<X8>)
{
  v2 = sub_1C7C7D934();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1C7C30900(uint64_t a1)
{
  v2 = sub_1C7C325A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C3093C(uint64_t a1)
{
  v2 = sub_1C7C325A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ReservationState.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264620, &qword_1C7C90818);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &ObjectType - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C325A4();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264630, &qword_1C7C90820);
    v16 = 0;
    sub_1C7C326EC(&unk_1EC264FD0, sub_1C7BE4974);
    sub_1C7C7D9B4();
    v12 = sub_1C7C2EDC8(v17);

    if (*(v12 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
      v13 = sub_1C7C7D914();
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC8];
    }

    v17 = v13;
    sub_1C7C31E74(v12, 1, &v17);
    *&v1[OBJC_IVAR____TtC9SEService16ReservationState_counts] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264640, &qword_1C7C90828);
    v16 = 1;
    sub_1C7C325F8();
    sub_1C7C7D9B4();
    (*(v6 + 8))(v9, v5);
    *&v1[OBJC_IVAR____TtC9SEService16ReservationState_reservations] = v17;
    v15.receiver = v1;
    v15.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t static ReservationState.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC2645A0 = a1;
  return result;
}

id ReservationState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReservationState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ReservationState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264660, &qword_1C7C90830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C325A4();
  sub_1C7C7DBA4();
  v11 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v16 = *(v3 + v11);
  LOBYTE(v15) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264630, &qword_1C7C90820);
  sub_1C7C326EC(&qword_1EC264668, sub_1C7BDF724);
  sub_1C7C7DA44();
  if (!v2)
  {
    v12 = OBJC_IVAR____TtC9SEService16ReservationState_reservations;
    swift_beginAccess();
    v15 = *(v3 + v12);
    v14[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264640, &qword_1C7C90828);
    sub_1C7C32770();
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_1C7C311AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ReservationState.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C7C31220(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_1C7C70348(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_1C7C70D04(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_1C7C70348(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
    v11 = sub_1C7C7DAF4();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1C7C722D8();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v23[6] + 8 * v11) = v9;
  *(v23[7] + 8 * v11) = v10;
  v24 = v23[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1C7C7D794();
    MEMORY[0x1CCA6B380](0xD00000000000001BLL, 0x80000001C7C9EFC0);
    sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
    sub_1C7C7D834();
    MEMORY[0x1CCA6B380](39, 0xE100000000000000);
    sub_1C7C7D8D4();
    __break(1u);
    return;
  }

  v23[2] = v25;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v27 = *v6;
      v28 = *a3;
      v9 = *(v6 - 1);
      v10 = v27;
      v29 = sub_1C7C70348(v9);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_1C7C70D04(v33, 1);
        v34 = *a3;
        v29 = sub_1C7C70348(v9);
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
      *(v36[6] + 8 * v29) = v9;
      *(v36[7] + 8 * v29) = v10;
      v37 = v36[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v38;
      v6 += 2;
      if (v4 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}