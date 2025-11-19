void sub_261FDEA64(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_26203AD4C();
  sub_261F9D610();
  v4 = swift_allocError();
  sub_2620399DC();

  a3(v4);
}

void sub_261FDEB80()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v2 = sub_262039FAC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v10 = v9 - v8;
  v11 = sub_262039FEC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_74();
  v19 = v18 - v17;
  v20 = v0[16];
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v21 = v1[11];
  if (v21 && !v1[17] && !v1[18])
  {
    v22 = v1[12];
    v1[11] = 0;
    v1[12] = 0;
    v23 = v1[13];
    OUTLINED_FUNCTION_46();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = v22;
    v32[4] = sub_261FBD060;
    v32[5] = v24;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 1107296256;
    OUTLINED_FUNCTION_1();
    v32[2] = v25;
    v32[3] = &block_descriptor_70;
    v31 = _Block_copy(v32);
    v30 = v23;
    sub_261F7D45C(v21);
    sub_262039FCC();
    OUTLINED_FUNCTION_0_22();
    sub_261FC02FC(v26, v27);
    v28 = OUTLINED_FUNCTION_28();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v19, v10, v31);
    _Block_release(v31);

    sub_261F665E4(v21);
    (*(v5 + 8))(v10, v2);
    (*(v14 + 8))(v19, v11);
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t SecureSocketDataTransport.deinit()
{
  sub_261FE0C28();
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);
  sub_261F665E4(*(v0 + 88));

  v6 = *(v0 + 120);
  sub_261F665E4(*(v0 + 112));

  v7 = *(v0 + 136);
  swift_unknownObjectRelease();
  v8 = *(v0 + 144);
  swift_unknownObjectRelease();
  v9 = *(v0 + 152);

  sub_261F6BFFC(*(v0 + 160), *(v0 + 168));
  v10 = *(v0 + 176);

  sub_261FCB894(v0 + 192, &qword_27FEF9980, &qword_26203F7C0);
  return v0;
}

uint64_t SecureSocketDataTransport.__deallocating_deinit()
{
  SecureSocketDataTransport.deinit();

  return MEMORY[0x2821FE8D8](v0, 233, 7);
}

uint64_t sub_261FDEEF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 128);
  OUTLINED_FUNCTION_106();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  OUTLINED_FUNCTION_46();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_261FE16B8;
  *(v10 + 24) = v9;
  v17[4] = sub_261FC3F80;
  v17[5] = v10;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  v17[2] = v11;
  v17[3] = &block_descriptor_8;
  v12 = _Block_copy(v17);

  v13 = a1;

  v14 = OUTLINED_FUNCTION_28();
  dispatch_sync(v14, v15);
  _Block_release(v12);
  LOBYTE(v8) = OUTLINED_FUNCTION_38_2();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FDF034(uint64_t a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v72 = sub_262039FAC();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v72);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_262039FEC();
  v71 = *(v73 - 8);
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 112);
  v69 = a3;
  v70 = a4;
  if (v15 || (v35 = *(a1 + 32), v35 == -1))
  {
    v67 = a2;
    sub_261F9BCE0();
    sub_26203AD3C();
    v74 = aBlock;
    v75 = v78;
    sub_261F9D610();
    v16 = swift_allocError();
    sub_26203AD4C();
    v17 = v16;
    v18 = sub_26203A48C();
    if (qword_27FEF8660 != -1)
    {
      swift_once();
    }

    v19 = qword_27FEFA090;
    if (os_log_type_enabled(qword_27FEFA090, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v68 = v8;
      v22 = v21;
      aBlock = v21;
      *v20 = 136446466;
      swift_beginAccess();
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);

      v25 = sub_261F67FE4(v23, v24, &aBlock);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_26203ACCC();
      v28 = sub_261F67FE4(v26, v27, &aBlock);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_261F5B000, v19, v18, "%{public}s: Unable to start transport: %s", v20, 0x16u);
      swift_arrayDestroy();
      v29 = v22;
      v8 = v68;
      MEMORY[0x266724180](v29, -1, -1);
      MEMORY[0x266724180](v20, -1, -1);
    }

    v30 = swift_allocObject();
    v31 = v70;
    v30[2] = v69;
    v30[3] = v31;
    v30[4] = v16;
    v81 = sub_261FE29A4;
    v82 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_261F78F64;
    v80 = &block_descriptor_160;
    v32 = _Block_copy(&aBlock);

    v33 = v16;
    sub_262039FCC();
    v76 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    v34 = v72;
    sub_26203A75C();
    MEMORY[0x266722A20](0, v14, v11, v32);
    _Block_release(v32);

    (*(v8 + 8))(v11, v34);
    (*(v71 + 8))(v14, v73);
  }

  else
  {
    v36 = *(a1 + 104);
    *(a1 + 104) = a2;

    v37 = a2;
    v38 = *(a1 + 112);
    v39 = *(a1 + 120);
    *(a1 + 112) = a3;
    *(a1 + 120) = a4;
    v64 = v37;

    sub_261F665E4(v38);
    v63 = sub_261F9B6D0(0, &qword_28108B2A8, 0x277D85CA0);
    v62 = *(a1 + 128);
    v40 = sub_26203A5BC();
    v61 = v35;
    v66 = v40;
    swift_getObjectType();
    v81 = sub_261FE2930;
    v82 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v67 = &v79;
    v79 = sub_261F78F64;
    v80 = &block_descriptor_139;
    v41 = _Block_copy(&aBlock);

    sub_261FF0550();
    sub_261FF0554();
    sub_26203A5EC();
    _Block_release(v41);
    v42 = *(v8 + 8);
    v42(v11, v72);
    v68 = v8 + 8;
    v43 = v71 + 8;
    v44 = *(v71 + 8);
    v44(v14, v73);
    v71 = v43;
    v65 = v44;

    v81 = sub_261FE2934;
    v82 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_261F78F64;
    v80 = &block_descriptor_142;
    v45 = _Block_copy(&aBlock);

    sub_262039FCC();
    sub_261FDFC98();
    v46 = v66;
    sub_26203A5FC();
    _Block_release(v45);
    v42(v11, v72);
    v47 = v73;
    v44(v14, v73);

    v48 = *(a1 + 136);
    *(a1 + 136) = v46;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v49 = sub_26203A5DC();
    swift_getObjectType();
    v81 = sub_261FE293C;
    v82 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_261F78F64;
    v80 = &block_descriptor_145;
    v50 = _Block_copy(&aBlock);

    sub_261FF0550();
    sub_261FF0554();
    sub_26203A5EC();
    _Block_release(v50);
    v60 = v42;
    v42(v11, v72);
    v51 = v65;
    v65(v14, v47);

    v81 = sub_261FE2940;
    v82 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_261F78F64;
    v80 = &block_descriptor_148;
    v52 = _Block_copy(&aBlock);

    sub_262039FCC();
    sub_261FDFC98();
    sub_26203A5FC();
    _Block_release(v52);
    v53 = v72;
    v42(v11, v72);
    v51(v14, v73);

    v54 = *(a1 + 144);
    *(a1 + 144) = v49;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v55 = swift_allocObject();
    v56 = v70;
    v55[2] = v69;
    v55[3] = v56;
    v55[4] = a1;
    v81 = sub_261FE2948;
    v82 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_261F78F64;
    v80 = &block_descriptor_154;
    v57 = _Block_copy(&aBlock);

    sub_262039FCC();
    v74 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v14, v11, v57);
    _Block_release(v57);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v60(v11, v53);
    v65(v14, v73);
  }
}

uint64_t sub_261FDFBE8(void (*a1)(_BYTE *), uint64_t a2, void *a3)
{
  __src[0] = a3;
  sub_261F65314(__src);
  memcpy(__dst, __src, 0x92uLL);
  v5 = a3;
  a1(__dst);
  memcpy(v9, __dst, 0x92uLL);
  return sub_261F6A760(v9);
}

void sub_261FDFC68(uint64_t a1)
{
  v2 = *(a1 + 136);
  *(a1 + 136) = 0;
  swift_unknownObjectRelease();
  sub_261FDEB80();
}

uint64_t sub_261FDFC98()
{
  sub_262039FAC();
  sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  return sub_26203A75C();
}

void sub_261FDFD70(uint64_t a1)
{
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
  swift_unknownObjectRelease();
  sub_261FDEB80();
}

uint64_t sub_261FDFDA0(void (*a1)(_BYTE *))
{
  sub_261FDBAD0(__src);
  memcpy(v3, __src, 0x92uLL);
  a1(v3);
  return sub_261FE6EB4();
}

uint64_t sub_261FDFE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 128);
  OUTLINED_FUNCTION_14_1();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  OUTLINED_FUNCTION_46();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_261FE16C4;
  *(v12 + 24) = v11;
  v16[4] = sub_261FE2A04;
  v16[5] = v12;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  v16[2] = v13;
  v16[3] = &block_descriptor_13;
  v14 = _Block_copy(v16);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = OUTLINED_FUNCTION_38_2();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FDFF50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_262039FAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_262039FEC();
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[17])
  {
    v53 = v11;
    v18 = a1[13];
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v62 = sub_261FE28F4;
    v63 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_261F78F64;
    v61 = &block_descriptor_130;
    v20 = _Block_copy(&aBlock);
    v21 = v18;

    sub_262039FCC();
    v57 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
    v22 = v54;
    v23 = v55;
    v52 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v17, v23, v20);
    _Block_release(v20);

    (*(v53 + 8))(v23, v10);
    (*(v22 + 8))(v17, v52);
  }

  swift_beginAccess();
  if (!*(a1[19] + 16))
  {
    v52 = v14;
    v53 = v11;
    v51 = v10;
    swift_beginAccess();
    v24 = a1[20];
    v25 = a1[21];
    swift_unknownObjectRetain();
    sub_261F6B73C(v24, v25);
    v26 = MEMORY[0x266721A20](v24, v25);
    sub_261F6BFFC(v24, v25);
    if (v26 < a4)
    {
      goto LABEL_6;
    }

    v31 = a1[20];
    v32 = a1[21];
    sub_261F6B73C(v31, v32);
    sub_261FDDA5C(a5, v31, v32, &aBlock);
    v34 = aBlock;
    v33 = v59;
    v35 = a1[20];
    v36 = a1[21];
    sub_261F6B73C(v35, v36);
    v37 = MEMORY[0x266721A20](v34, v33);
    sub_261FDDBE0(v37, v35, v36, &aBlock);
    v38 = sub_261FDC2A4(aBlock, v59);
    v39 = a1[20];
    v40 = a1[21];
    a1[20] = v38;
    a1[21] = v41;
    sub_261F6BFFC(v39, v40);
    v42 = a1[13];
    v43 = swift_allocObject();
    v43[2] = a2;
    v43[3] = a3;
    v43[4] = v34;
    v43[5] = v33;
    v44 = v33;
    v50 = v33;
    v62 = sub_261FE28FC;
    v63 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_261F78F64;
    v61 = &block_descriptor_136;
    v45 = _Block_copy(&aBlock);

    v46 = v42;
    sub_261F6B73C(v34, v44);
    v47 = v17;
    sub_262039FCC();
    v56 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    v48 = v55;
    v49 = v51;
    sub_26203A75C();
    MEMORY[0x266722A20](0, v47, v48, v45);
    _Block_release(v45);
    swift_unknownObjectRelease();

    sub_261F6BFFC(v34, v50);
    (*(v53 + 8))(v48, v49);
    (*(v54 + 8))(v47, v52);
  }

  swift_unknownObjectRetain();
LABEL_6:
  swift_beginAccess();

  sub_262001C8C();
  v27 = *(a1[19] + 16);
  sub_262001D80(v27);
  v28 = a1[19];
  *(v28 + 16) = v27 + 1;
  v29 = (v28 + 32 * v27);
  v29[4] = a4;
  v29[5] = a5;
  v29[6] = a2;
  v29[7] = a3;
  a1[19] = v28;
  swift_endAccess();
  if (!v27)
  {
    swift_getObjectType();
    sub_26203A62C();
  }

  return swift_unknownObjectRelease();
}

void sub_261FE0580(void (*a1)(void *, void, uint64_t))
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_26203AD4C();
  sub_261F9D610();
  v2 = swift_allocError();
  *v3 = v4;
  v3[1] = v5;
  a1(v2, 0, 1);
}

uint64_t sub_261FE0670(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 128);
  OUTLINED_FUNCTION_14_1();
  v11 = swift_allocObject();
  v11[2] = v5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a1;
  v11[6] = a2;
  OUTLINED_FUNCTION_46();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_261FE16DC;
  *(v12 + 24) = v11;
  v16[4] = sub_261FE2A04;
  v16[5] = v12;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  v16[2] = v13;
  v16[3] = &block_descriptor_23;
  v14 = _Block_copy(v16);

  sub_261F6B73C(a1, a2);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = OUTLINED_FUNCTION_38_2();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FE07C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_262039FAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_262039FEC();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[18])
  {
    swift_beginAccess();

    swift_unknownObjectRetain();
    sub_261F6B73C(a4, a5);
    sub_262001CA4();
    v21 = *(a1[22] + 16);
    sub_262001D98(v21);
    v22 = a1[22];
    *(v22 + 16) = v21 + 1;
    v23 = (v22 + 32 * v21);
    v23[4] = a4;
    v23[5] = a5;
    v23[6] = a2;
    v23[7] = a3;
    a1[22] = v22;
    swift_endAccess();
    if (!v21)
    {
      swift_getObjectType();
      sub_26203A62C();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v31 = v11;
    v32 = v17;
    v25 = a1[13];
    v26 = v18;
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
    aBlock[4] = sub_261FE28EC;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261F78F64;
    aBlock[3] = &block_descriptor_124;
    v28 = _Block_copy(aBlock);
    v29 = v25;

    sub_262039FCC();
    v33 = MEMORY[0x277D84F90];
    sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
    sub_26203A75C();
    MEMORY[0x266722A20](0, v20, v14, v28);
    _Block_release(v28);

    (*(v31 + 8))(v14, v10);
    (*(v26 + 8))(v20, v32);
  }
}

void sub_261FE0B3C(void (*a1)(void *, void *))
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_26203AD4C();
  sub_261F9D610();
  v2 = swift_allocError();
  *v3 = v4;
  v3[1] = v5;
  a1(v2, v3);
}

uint64_t sub_261FE0C28()
{
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_46();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_261FE16F4;
  *(v2 + 24) = v0;
  v8[4] = sub_261FE2A04;
  v8[5] = v2;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  v8[2] = v3;
  v8[3] = &block_descriptor_30_0;
  v4 = _Block_copy(v8);

  v5 = OUTLINED_FUNCTION_72();
  dispatch_sync(v5, v6);
  _Block_release(v4);
  LOBYTE(v1) = OUTLINED_FUNCTION_38_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_261FE0D24(void *a1)
{
  v2 = sub_262039FAC();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_262039FEC();
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261F9BCE0();
  sub_26203AD3C();
  v58 = v60;
  v59 = v61;
  sub_26203AD4C();
  v43 = aBlock;
  v42 = v53;
  swift_beginAccess();
  v7 = a1[19];
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  v50 = a1;
  if (v8)
  {
    aBlock = MEMORY[0x277D84F90];

    sub_261F95A5C(0, v8, 0);
    v9 = aBlock;
    v10 = (v7 + 56);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      aBlock = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);

      if (v15 >= v14 >> 1)
      {
        sub_261F95A5C(v14 > 1, v15 + 1, 1);
        v9 = aBlock;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = sub_261FE28AC;
      *(v16 + 40) = v13;
      v10 += 4;
      --v8;
    }

    while (v8);

    a1 = v50;
  }

  swift_beginAccess();
  v17 = a1[22];
  v18 = *(v17 + 16);
  if (v18)
  {
    aBlock = MEMORY[0x277D84F90];

    sub_261F95A18(0, v18, 0);
    v19 = aBlock;
    v41 = v17;
    v20 = (v17 + 56);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      aBlock = v19;
      v24 = *(v19 + 16);
      v25 = *(v19 + 24);

      if (v24 >= v25 >> 1)
      {
        sub_261F95A18(v25 > 1, v24 + 1, 1);
        v19 = aBlock;
      }

      *(v19 + 16) = v24 + 1;
      v26 = v19 + 16 * v24;
      *(v26 + 32) = sub_261F9B624;
      *(v26 + 40) = v23;
      v20 += 4;
      --v18;
    }

    while (v18);

    a1 = v50;
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
  }

  v28 = a1[13];
  v29 = swift_allocObject();
  v30 = v43;
  v29[2] = v9;
  v29[3] = v30;
  v29[4] = v42;
  v29[5] = v19;
  v56 = sub_261FE28E0;
  v57 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_261F78F64;
  v55 = &block_descriptor_118;
  v31 = _Block_copy(&aBlock);
  v32 = v28;
  v33 = v44;
  sub_262039FCC();
  v51 = v27;
  sub_261FC02FC(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F7AA80(&qword_28108B330, &qword_27FEFA0B0, &unk_262040690);
  v34 = v46;
  v35 = v49;
  sub_26203A75C();
  MEMORY[0x266722A20](0, v33, v34, v31);
  _Block_release(v31);

  (*(v48 + 8))(v34, v35);
  (*(v45 + 8))(v33, v47);

  v36 = a1[19];
  v37 = MEMORY[0x277D84F90];
  a1[19] = MEMORY[0x277D84F90];

  v38 = a1[22];
  a1[22] = v37;

  if (a1[17])
  {
    v39 = a1[17];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_26203A61C();
    swift_unknownObjectRelease();
  }

  if (a1[18])
  {
    v40 = a1[18];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_26203A61C();
    swift_unknownObjectRelease();
  }

  sub_261FDEB80();
}

void sub_261FE12F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  for (i = (a1 + 40); v7; --v7)
  {
    v10 = *(i - 1);
    v9 = *i;
    sub_261F9D610();
    v11 = swift_allocError();
    *v12 = a2;
    v12[1] = a3;
    v19[0] = v11;
    v19[1] = 0;
    v20 = 1;

    v10(v19);

    i += 2;
  }

  v13 = *(a4 + 16);
  for (j = (a4 + 40); v13; --v13)
  {
    v16 = *(j - 1);
    v15 = *j;
    sub_261F9D610();
    v17 = swift_allocError();
    *v18 = a2;
    v18[1] = a3;
    v19[0] = v17;

    v16(v19);

    j += 2;
  }
}

void sub_261FE1438()
{
  v1 = *v0;
  sub_26203A7CC();
  MEMORY[0x266722710](0x6D656C706D696E55, 0xEF203A6465746E65);
  v2 = sub_26203AE8C();
  MEMORY[0x266722710](v2);

  MEMORY[0x266722710](0xD00000000000002DLL, 0x8000000262050690);
  sub_26203A91C();
  __break(1u);
}

uint64_t sub_261FE1530()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 184);
}

uint64_t sub_261FE1560(char a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

uint64_t sub_261FE16FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9980, &qword_26203F7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FE1980(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_261FE19C0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_261FE1A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26203937C();
  v7 = result;
  if (result)
  {
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_26203939C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_261F6DE04(v7, v13, a3);
}

uint64_t sub_261FE1AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_26203937C();
  if (v8)
  {
    v9 = v8;
    result = sub_2620393AC();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v11 = a1 - result + v9;
  }

  else
  {
    v11 = 0;
  }

  result = sub_26203939C();
  if (v11)
  {
    v12 = *(a4 + 80);
    v13 = (*(a4 + 72))(v11, a5);

    return v13;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_261FE1B60(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v6, v5);
      *v4 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_26203937C() && __OFSUB__(v6, sub_2620393AC()))
      {
        goto LABEL_24;
      }

      v13 = sub_2620393BC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26203935C();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_261FE22D8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_261F6BFFC(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      sub_26203944C();
      v6 = v20;
      v9 = sub_261FE22D8(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_261F6BFFC(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_261FE1F24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v16 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();
      sub_261F6B73C(v4, v3);
      sub_261F6BFFC(v4, v3);
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      v17 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v17 < v4)
      {
        goto LABEL_15;
      }

      if (sub_26203937C() && __OFSUB__(v4, sub_2620393AC()))
      {
        goto LABEL_16;
      }

      v18 = sub_2620393BC();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = sub_26203935C();

      v16 = v21;
LABEL_10:
      if (v17 < v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      v9 = sub_261FE238C(v4, v4 >> 32, v16, a2, a3);

      v14 = v16 | 0x4000000000000000;
LABEL_12:
      *a1 = v4;
      a1[1] = v14;
LABEL_13:
      v22 = *MEMORY[0x277D85DE8];
      return v9;
    case 2uLL:
      swift_retain_n();
      sub_261F6B73C(v4, v3);
      sub_261F6BFFC(v4, v3);
      *&v26 = v4;
      *(&v26 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_262040350;
      sub_261F6BFFC(0, 0xC000000000000000);
      sub_26203944C();
      v4 = v26;
      v13 = *(v26 + 16);
      v12 = *(v26 + 24);

      v9 = sub_261FE238C(v13, v12, *(&v26 + 1), a2, a3);

      v14 = *(&v26 + 1) | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      *(&v26 + 7) = 0;
      *&v26 = 0;
      v15 = *(a2 + 64);
      v9 = (*(a2 + 56))(&v26, a3);

      goto LABEL_13;
    default:
      swift_retain_n();
      sub_261F6BFFC(v4, v3);
      *&v26 = v4;
      WORD4(v26) = v3;
      BYTE10(v26) = BYTE2(v3);
      BYTE11(v26) = BYTE3(v3);
      BYTE12(v26) = BYTE4(v3);
      BYTE13(v26) = BYTE5(v3);
      BYTE14(v26) = BYTE6(v3);
      v8 = *(a2 + 64);
      v9 = (*(a2 + 56))(&v26, a3);
      v10 = v26;
      v11 = DWORD2(v26) | ((WORD6(v26) | (BYTE14(v26) << 16)) << 32);

      *a1 = v10;
      a1[1] = v11;
      goto LABEL_13;
  }
}

char *sub_261FE22D8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26203937C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2620393AC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26203939C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_261FE238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_26203937C();
  if (result)
  {
    v9 = result;
    result = sub_2620393AC();
    v10 = __OFSUB__(a1, result);
    v11 = a1 - result;
    if (!v10)
    {
      sub_26203939C();
      v12 = *(a4 + 64);
      v13 = (*(a4 + 56))(v9 + v11, a5);

      return v13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261FE2418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26203943C();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_2620393BC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26203936C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2620394AC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_261FE24E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_261FE257C(sub_261FE288C, v5, a1, a2);
}

uint64_t sub_261FE2534(uint64_t result)
{
  if (result)
  {
    result = sub_26203A7DC();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_261FE257C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_261FE25F8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1(0);
}

void *sub_261FE2624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_261FE24E0(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_261FE265C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_261FE2534(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_261FE269C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_261FE2704(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < result || v5 > result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v10)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_261FE28AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t sub_261FE2948()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_261FDFDA0(*(v0 + 16));
}

uint64_t objectdestroy_150Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  v2 = *(v0 - 288);

  return swift_unknownObjectRelease();
}

uint64_t *sub_261FE2AC8()
{
  if (qword_28108B5C8 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  return &qword_28108B5D0;
}

uint64_t *sub_261FE2B08()
{
  if (qword_28108CFD0 != -1)
  {
    OUTLINED_FUNCTION_6_6();
  }

  return &qword_28108CFD8;
}

id ControlChannelConnectionWireProtocolVersion.__allocating_init(rawValue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t (*static ControlChannelConnectionWireProtocolVersion.current.modify())()
{
  if (qword_28108CFD0 != -1)
  {
    OUTLINED_FUNCTION_6_6();
  }

  OUTLINED_FUNCTION_9();
  return j_j__swift_endAccess;
}

uint64_t (*static ControlChannelConnectionWireProtocolVersion.minimumSupported.modify())()
{
  if (qword_28108B5C8 != -1)
  {
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_9();
  return j_j__swift_endAccess;
}

void *sub_261FE2D88()
{
  if (qword_27FEF8670 != -1)
  {
    OUTLINED_FUNCTION_3_16();
  }

  return &qword_27FEFA0C8;
}

id sub_261FE2DEC(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_13_7();
  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_261FE2E74(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_13_7();
  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static ControlChannelConnectionWireProtocolVersion.minimumSupportedForWirelessPairing.modify())()
{
  if (qword_27FEF8670 != -1)
  {
    OUTLINED_FUNCTION_3_16();
  }

  OUTLINED_FUNCTION_9();
  return j__swift_endAccess;
}

id sub_261FE2F40@<X0>(void (*a1)(void)@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  a1();
  OUTLINED_FUNCTION_13_7();
  swift_beginAccess();
  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void sub_261FE2F9C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void **a6)
{
  v8 = *a1;
  a5();
  OUTLINED_FUNCTION_13_7();
  swift_beginAccess();
  v9 = *a6;
  *a6 = v8;
}

id sub_261FE3010(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = a2;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a3 = result;
  return result;
}

id ControlChannelConnectionWireProtocolVersion.init(rawValue:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_261FE3174()
{
  v2 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue);
  sub_261FE31C0();
  return sub_26203A72C();
}

unint64_t sub_261FE31C0()
{
  result = qword_28108B350;
  if (!qword_28108B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B350);
  }

  return result;
}

uint64_t ControlChannelConnectionWireProtocolVersion.__allocating_init(_:)(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_14_9();
            while (1)
            {
              OUTLINED_FUNCTION_2_15();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_0_23();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_8_8();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_80:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_2_15();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_23();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_8_8();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_14_9();
          while (1)
          {
            OUTLINED_FUNCTION_2_15();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_23();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_8_8();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_26203A82C();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_2_15();
                if (!v9 & v8)
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_0_23();
                if (!v9)
                {
                  goto LABEL_68;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_68;
                }

                OUTLINED_FUNCTION_8_8();
                if (v9)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_59;
          }

          goto LABEL_68;
        }

        goto LABEL_79;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_68;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_68;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_59;
              }
            }
          }

          goto LABEL_59;
        }

LABEL_68:
        v7 = 0;
        v12 = 1;
        goto LABEL_69;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_2_15();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_23();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_8_8();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_59:
          v12 = 0;
LABEL_69:
          v28 = v12;
          v23 = v12;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v7 = sub_261FE3814(result, a2, 10);
  v23 = v26;
LABEL_70:

  result = 0;
  if ((v23 & 1) == 0 && v7 >= 1)
  {
    v24 = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = v7;
    v27.receiver = v25;
    v27.super_class = v24;
    return objc_msgSendSuper2(&v27, sel_init);
  }

  return result;
}

id ControlChannelConnectionWireProtocolVersion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ControlChannelConnectionWireProtocolVersion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_261FE368C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = ControlChannelConnectionWireProtocolVersion.__allocating_init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_261FE36B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ControlChannelConnectionWireProtocolVersion.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261FE37EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ControlChannelConnectionWireProtocolVersion.__allocating_init(_:)(a1, a2);
  *a3 = result;
  return result;
}

unsigned __int8 *sub_261FE3814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26203A2FC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_261FE464C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26203A82C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_261FE3E04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unsigned __int8 *sub_261FE415C(uint64_t a1, uint64_t a2, int64_t a3)
{

  result = sub_26203A2FC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_261FE464C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26203A82C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_11_7();
          if (v20)
          {
            do
            {
              OUTLINED_FUNCTION_9_9();
              if (v15 && v24 < v22)
              {
                v25 = -48;
              }

              else if (v24 < 0x41 || v24 >= v21)
              {
                OUTLINED_FUNCTION_7_9();
                if (!v15 || v24 >= v26)
                {
                  goto LABEL_125;
                }

                v25 = -87;
              }

              else
              {
                v25 = -55;
              }

              if (!is_mul_ok(v23, a3) || __CFADD__(v23 * a3, (v24 + v25)))
              {
                goto LABEL_124;
              }

              OUTLINED_FUNCTION_12_8();
            }

            while (!v19);
LABEL_44:
            v6 = v18;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v6 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v6 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_125;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            if (!is_mul_ok(v30, a3))
            {
              goto LABEL_124;
            }

            v33 = v30 * a3;
            v34 = v31 + v32;
            v15 = __CFADD__(v33, v34);
            v30 = v33 + v34;
            if (v15)
            {
              goto LABEL_124;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v30;
          goto LABEL_125;
        }

        goto LABEL_64;
      }

      goto LABEL_124;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_11_7();
        if (v10)
        {
          while (1)
          {
            OUTLINED_FUNCTION_9_9();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              OUTLINED_FUNCTION_7_9();
              if (!v15 || v14 >= v17)
              {
                goto LABEL_125;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            if (!is_mul_ok(v13, a3) || v13 * a3 < (v14 + v16))
            {
              goto LABEL_124;
            }

            OUTLINED_FUNCTION_12_8();
            if (v19)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_64:
        v6 = 0;
LABEL_125:

        return v6;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v7) & 0xF;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        OUTLINED_FUNCTION_1_18();
        while (1)
        {
          OUTLINED_FUNCTION_9_9();
          if (v15 && v54 < v53)
          {
            v55 = -48;
          }

          else if (v54 < 0x41 || v54 >= v52)
          {
            OUTLINED_FUNCTION_7_9();
            if (!v15 || v54 >= v56)
            {
              goto LABEL_125;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }

          if (!is_mul_ok(v51, a3) || __CFADD__(v51 * a3, (v54 + v55)))
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_12_8();
          if (v19)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v37)
    {
      if (v37 != 1)
      {
        OUTLINED_FUNCTION_1_18();
        while (1)
        {
          OUTLINED_FUNCTION_9_9();
          if (v15 && v41 < v40)
          {
            v42 = -48;
          }

          else if (v41 < 0x41 || v41 >= v39)
          {
            OUTLINED_FUNCTION_7_9();
            if (!v15 || v41 >= v43)
            {
              goto LABEL_125;
            }

            v42 = -87;
          }

          else
          {
            v42 = -55;
          }

          if (!is_mul_ok(v38, a3) || v38 * a3 < (v41 + v42))
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_12_8();
          if (v19)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    if (v37 != 1)
    {
      OUTLINED_FUNCTION_1_18();
      do
      {
        OUTLINED_FUNCTION_9_9();
        if (v15 && v48 < v47)
        {
          v49 = -48;
        }

        else if (v48 < 0x41 || v48 >= v46)
        {
          OUTLINED_FUNCTION_7_9();
          if (!v15 || v48 >= v50)
          {
            goto LABEL_125;
          }

          v49 = -87;
        }

        else
        {
          v49 = -55;
        }

        if (!is_mul_ok(v45, a3) || __CFADD__(v45 * a3, (v48 + v49)))
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_12_8();
      }

      while (!v19);
LABEL_123:
      v6 = v44;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_261FE464C(uint64_t a1, unint64_t a2)
{
  v2 = sub_261FE46B8(sub_261FE46B4, 0, a1, a2);
  v6 = sub_261FE46EC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_261FE46B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_261FE46EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26203A22C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_26203A6EC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_261F69588(v9, 0);
  v12 = sub_261FE484C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_26203A22C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_26203A82C();
LABEL_4:

  return sub_26203A22C();
}

unint64_t sub_261FE484C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_261FE4A5C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26203A2AC();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26203A82C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_261FE4A5C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_26203A28C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_261FE4A5C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_26203A2BC();
    OUTLINED_FUNCTION_10_6(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x266722740](15, a1 >> 16);
    OUTLINED_FUNCTION_10_6(v3);
    return v4 | 8;
  }
}

uint64_t CUPairingStream.decode<A>(message:)(uint64_t *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_26203930C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2620392FC();
  v6 = sub_26203952C();
  v13 = OUTLINED_FUNCTION_27_4(v6, sel_decryptData_aadData_error_, v7, v8, v9, v10, v11, v12, 0);

  v14 = v21;
  if (v13)
  {
    v15 = sub_26203954C();
    v17 = v16;

    sub_2620392EC();
    sub_261F6BFFC(v15, v17);
  }

  else
  {
    v18 = v14;
    sub_2620393FC();

    swift_willThrow();
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void CUPairingStream.encode<A>(_:)(uint64_t *a1@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = sub_26203933C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_26203932C();
  v6 = sub_26203931C();
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_26203952C();
    v17 = OUTLINED_FUNCTION_27_4(v10, sel_encryptData_aadData_error_, v11, v12, v13, v14, v15, v16, 0);

    v18 = v24;
    if (v17)
    {
      v19 = sub_26203954C();
      v21 = v20;
      sub_261F6BFFC(v8, v9);

      *a1 = v19;
      a1[1] = v21;
      goto LABEL_5;
    }

    v23 = v18;
    sub_2620393FC();

    swift_willThrow();
    sub_261F6BFFC(v8, v9);
  }

LABEL_5:
  v22 = *MEMORY[0x277D85DE8];
}

uint64_t CUPairedPeer.remoteUnlockKey.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    OUTLINED_FUNCTION_0_24();
    v1 = OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_12_9(v1, v2, v3, v4, v5, v6);

    sub_261F67914(v17);
    if (v19)
    {
      v7 = OUTLINED_FUNCTION_4_12();
      return OUTLINED_FUNCTION_5_10(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v18, &qword_27FEF9870, &qword_26203C960);
  return 0;
}

uint64_t CUPairedPeer.remoteUnlockKey.setter(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_15_6(v8, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v9, v10, v11, v12, v13, v35, v38, v41, *(&v41 + 1), v42, *(&v42 + 1), v43);
  v14 = sub_26203A79C();
  if (a2 >> 60 == 15)
  {
    OUTLINED_FUNCTION_7_10();
    sub_261F81D84(a1, a2);
    sub_261FCB894(&v43, &qword_27FEF9870, &qword_26203C960);
    v22 = sub_261F67388();
    if (v23)
    {
      v24 = v22;
      swift_isUniquelyReferenced_nonNull_native();
      v25 = v7[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      sub_26203A8EC();
      sub_261F67914(v7[6] + 40 * v24);
      sub_261F8D184((v7[7] + 32 * v24), &v41);
      sub_26203A90C();
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    sub_261F67914(v45);
    sub_261FCB894(&v41, &qword_27FEF9870, &qword_26203C960);
  }

  else
  {
    v44 = MEMORY[0x277CC9318];
    *&v43 = a1;
    *(&v43 + 1) = a2;
    OUTLINED_FUNCTION_22_5(v14, v15, v16, v17, v18, v19, v20, v21, v36, v39, v41, v42, *(&v42 + 1), v43);
    sub_261F81D84(a1, a2);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_21_5(v26, v27, v28, v29, v30, v31, v32, v33, v37, v40, v41);
  }

  sub_261FE6B78(v7, v3);
  return sub_261F6ADEC(a1, a2);
}

id sub_261FE5020@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 sessionType];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0x10104uLL >> (8 * result);
    if (result >= 5)
    {
      LOBYTE(v4) = 4;
    }

    *a1 = v4;
  }

  return result;
}

id sub_261FE5078()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_26203A18C();
  v7[0] = 0;
  v2 = [v0 openStreamWithName:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_2620393FC();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id CUPairedPeer.lastSeenWireProtocolVersion.getter()
{
  v1 = sub_261F6752C(v0, &selRef_info);
  if (!v1)
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  v8 = 0xD00000000000001BLL;
  v9 = 0x800000026204F450;
  sub_26203A79C();
  sub_261F678B4(v2, &v11);

  sub_261F67914(v10);
  if (!*(&v12 + 1))
  {
LABEL_6:
    sub_261FCB894(&v11, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  if (swift_dynamicCast())
  {
    v3 = v10[0];
    v4 = type metadata accessor for ControlChannelConnectionWireProtocolVersion();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue] = v3;
    v7.receiver = v5;
    v7.super_class = v4;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  return 0;
}

void CUPairedPeer.lastSeenWireProtocolVersion.setter(void *a1)
{
  if (sub_261F6752C(v1, &selRef_info))
  {
    OUTLINED_FUNCTION_0_24();
    OUTLINED_FUNCTION_15_6(v3, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v4, v5, v6, v7, v8, a1, v46, v50, v53, v54, v56, v58);
    sub_26203A79C();
    if (v43)
    {
      v16 = *&v43[OBJC_IVAR____TtC19RemotePairingDevice43ControlChannelConnectionWireProtocolVersion_rawValue];
      v59 = MEMORY[0x277D83B88];
      *&v58 = v16;
      OUTLINED_FUNCTION_22_5(v43, v9, v10, v11, v12, v13, v14, v15, v43, v47, v51, v55, v57, v58);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_19();
      OUTLINED_FUNCTION_21_5(v17, v18, v19, v20, v21, v22, v23, v24, v44, v48, v52);
    }

    else
    {
      sub_261F67388();
      if (v25)
      {
        OUTLINED_FUNCTION_16_9();
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_11_8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
        v26 = OUTLINED_FUNCTION_8_9();
        v34 = OUTLINED_FUNCTION_9_10(v26, v27, v28, v29, v30, v31, v32, v33, 0, v47, v51);
        OUTLINED_FUNCTION_13_8(v34, v35, v36, v37, v38, v39, v40, v41, v45, v49, v51, *(&v51 + 1), v55, v57, v58);
        OUTLINED_FUNCTION_14_10();
      }

      else
      {
        OUTLINED_FUNCTION_7_10();
      }

      sub_261F67914(v60);
      sub_261FCB894(&v58, &qword_27FEF9870, &qword_26203C960);
    }

    sub_26203A0BC();
    OUTLINED_FUNCTION_16_9();

    [v1 setInfo_];
  }

  else
  {
    [v1 setInfo_];
  }
}

uint64_t sub_261FE5428()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA0E8 = result;
  return result;
}

uint64_t IdentityError.hashValue.getter()
{
  v1 = *v0;
  sub_26203ADDC();
  MEMORY[0x266723290](v1);
  return sub_26203AE0C();
}

void CUPairedPeer.udid.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  OUTLINED_FUNCTION_3_17();
  *(&v67 + 1) = v8;
  v9 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_15_6(v10, v11, MEMORY[0x277D837E0], v12, v13, v14, v15, v16, v51, v55, v59, v62, v63, v65, v17);
  v18 = sub_26203A79C();
  if (a2)
  {
    v68 = v9;
    *&v67 = a1;
    *(&v67 + 1) = a2;
    OUTLINED_FUNCTION_22_5(v18, v19, v20, v21, v22, v23, v24, v25, v52, v56, v60, v64, v66, v67);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_21_5(v26, v27, v28, v29, v30, v31, v32, v33, v53, v57, v61);
  }

  else
  {
    sub_261F67388();
    if (v34)
    {
      OUTLINED_FUNCTION_16_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      v35 = OUTLINED_FUNCTION_8_9();
      v43 = OUTLINED_FUNCTION_9_10(v35, v36, v37, v38, v39, v40, v41, v42, v52, v56, v60);
      OUTLINED_FUNCTION_13_8(v43, v44, v45, v46, v47, v48, v49, v50, v54, v58, v60, *(&v60 + 1), v64, v66, v67);
      OUTLINED_FUNCTION_14_10();
    }

    else
    {
      OUTLINED_FUNCTION_7_10();
    }

    sub_261F67914(v69);
    sub_261FCB894(&v67, &qword_27FEF9870, &qword_26203C960);
  }

  sub_261FE6B78(v7, v3);
}

uint64_t CUPairedPeer.udid.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_5(a1);
  *v1 = CUPairedPeer.udid.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_19_5();
}

id CUPairedPeer.ecid.getter()
{
  v1 = sub_261F6752C(v0, &selRef_info);
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_6;
  }

  v2 = v1;
  OUTLINED_FUNCTION_3_17();
  sub_26203A79C();
  sub_261F678B4(v2, &v7);

  sub_261F67914(v6);
  if (!*(&v8 + 1))
  {
LABEL_6:
    sub_261FCB894(&v7, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  sub_261F9B6D0(0, &unk_28108B270, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v6[0];
  v4 = [v6[0] unsignedLongLongValue];

  return v4;
}

void CUPairedPeer.ecid.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  OUTLINED_FUNCTION_3_17();
  *(&v65 + 1) = v8;
  OUTLINED_FUNCTION_15_6(v9, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v10, v11, v12, v13, v14, v49, v53, v57, v60, v61, v63, v15);
  v16 = sub_26203A79C();
  if (a2)
  {
    sub_261F67388();
    if (v24)
    {
      OUTLINED_FUNCTION_16_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      v25 = OUTLINED_FUNCTION_8_9();
      v33 = OUTLINED_FUNCTION_9_10(v25, v26, v27, v28, v29, v30, v31, v32, v50, v54, v58);
      OUTLINED_FUNCTION_13_8(v33, v34, v35, v36, v37, v38, v39, v40, v51, v55, v58, *(&v58 + 1), v62, v64, v65);
      OUTLINED_FUNCTION_14_10();
    }

    else
    {
      OUTLINED_FUNCTION_7_10();
    }

    sub_261F67914(v67);
    sub_261FCB894(&v65, &qword_27FEF9870, &qword_26203C960);
  }

  else
  {
    v66 = MEMORY[0x277D84D38];
    *&v65 = a1;
    OUTLINED_FUNCTION_22_5(v16, v17, v18, v19, v20, v21, v22, v23, v50, v54, v58, v62, v64, v65);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_21_5(v41, v42, v43, v44, v45, v46, v47, v48, v52, v56, v59);
  }

  sub_261FE6B78(v7, v3);
}

uint64_t CUPairedPeer.ecid.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_5(a1);
  *v1 = CUPairedPeer.ecid.getter();
  *(v1 + 8) = v2 & 1;
  return OUTLINED_FUNCTION_19_5();
}

uint64_t CUPairedPeer.btAddressString.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    v18[0] = 0x726464417462;
    v18[1] = 0xE600000000000000;
    v1 = OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_12_9(v1, v2, v3, v4, v5, v6);

    sub_261F67914(v17);
    if (v18[3])
    {
      v7 = OUTLINED_FUNCTION_4_12();
      return OUTLINED_FUNCTION_5_10(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v18, &qword_27FEF9870, &qword_26203C960);
  return OUTLINED_FUNCTION_84();
}

uint64_t sub_261FE5B68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_261F81D84(*a1, v3);
  return CUPairedPeer.remoteUnlockKey.setter(v2, v3);
}

uint64_t CUPairedPeer.remoteUnlockKey.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_5(a1);
  *v1 = CUPairedPeer.remoteUnlockKey.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_19_5();
}

uint64_t sub_261FE5BEC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_108();
    sub_261F81D84(v5, v6);
    v7 = OUTLINED_FUNCTION_108();
    CUPairedPeer.remoteUnlockKey.setter(v7, v8);
    v9 = OUTLINED_FUNCTION_108();

    return sub_261F6ADEC(v9, v10);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_108();
    return CUPairedPeer.remoteUnlockKey.setter(v12, v13);
  }
}

uint64_t CUPairedPeer.serialNumber.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    OUTLINED_FUNCTION_0_24();
    v1 = OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_12_9(v1, v2, v3, v4, v5, v6);

    sub_261F67914(v17);
    if (v19)
    {
      v7 = OUTLINED_FUNCTION_4_12();
      return OUTLINED_FUNCTION_5_10(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v18, &qword_27FEF9870, &qword_26203C960);
  return OUTLINED_FUNCTION_84();
}

uint64_t sub_261FE5D10(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  v9 = OUTLINED_FUNCTION_75();
  return a5(v9);
}

void CUPairedPeer.serialNumber.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  OUTLINED_FUNCTION_0_24();
  v8 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_15_6(v9, v10, MEMORY[0x277D837E0], v11, v12, v13, v14, v15, v49, v53, v57, v60, v61, v63, v65);
  v16 = sub_26203A79C();
  if (a2)
  {
    v66 = v8;
    *&v65 = a1;
    *(&v65 + 1) = a2;
    OUTLINED_FUNCTION_22_5(v16, v17, v18, v19, v20, v21, v22, v23, v50, v54, v58, v62, v64, v65);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_19();
    OUTLINED_FUNCTION_21_5(v24, v25, v26, v27, v28, v29, v30, v31, v51, v55, v59);
  }

  else
  {
    sub_261F67388();
    if (v32)
    {
      OUTLINED_FUNCTION_16_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_11_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      v33 = OUTLINED_FUNCTION_8_9();
      v41 = OUTLINED_FUNCTION_9_10(v33, v34, v35, v36, v37, v38, v39, v40, v50, v54, v58);
      OUTLINED_FUNCTION_13_8(v41, v42, v43, v44, v45, v46, v47, v48, v52, v56, v58, *(&v58 + 1), v62, v64, v65);
      OUTLINED_FUNCTION_14_10();
    }

    else
    {
      OUTLINED_FUNCTION_7_10();
    }

    sub_261F67914(v67);
    sub_261FCB894(&v65, &qword_27FEF9870, &qword_26203C960);
  }

  sub_261FE6B78(v7, v3);
}

uint64_t CUPairedPeer.serialNumber.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_26_5(a1);
  *v1 = CUPairedPeer.serialNumber.getter();
  v1[1] = v2;
  return OUTLINED_FUNCTION_19_5();
}

uint64_t sub_261FE5EF8(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];

    v8 = OUTLINED_FUNCTION_75();
    a3(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_75();
    return (a3)(v10);
  }
}

uint64_t sub_261FE5F70()
{
  v1 = sub_261F6752C(v0, &selRef_info);
  if (!v1)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  v2 = v1;
  *&v5 = 0xD000000000000020;
  *(&v5 + 1) = 0x8000000262050BF0;
  sub_26203A79C();
  sub_261F678B4(v2, &v5);

  sub_261F67914(v4);
  if (!*(&v6 + 1))
  {
LABEL_8:
    sub_261FCB894(&v5, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v4[0];
  }

  else
  {
    return 0;
  }
}

void sub_261FE6070(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_261F6752C(v2, &selRef_info);
  if (!v6)
  {
    v6 = sub_26203A0FC();
  }

  v7 = v6;
  *&v13 = 0xD000000000000020;
  *(&v13 + 1) = 0x8000000262050BF0;
  sub_26203A79C();
  if (a2)
  {
    v8 = sub_261F67388();
    if (v9)
    {
      v10 = v8;
      swift_isUniquelyReferenced_nonNull_native();
      *&v12 = v7;
      v11 = v7[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98E0, &qword_26203F6C8);
      sub_26203A8EC();
      sub_261F67914(v7[6] + 40 * v10);
      sub_261F8D184((v7[7] + 32 * v10), &v13);
      sub_26203A90C();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    sub_261F67914(v15);
    sub_261FCB894(&v13, &qword_27FEF9870, &qword_26203C960);
  }

  else
  {
    *(&v14 + 1) = MEMORY[0x277D839F8];
    *&v13 = a1;
    sub_261F8D184(&v13, &v12);
    swift_isUniquelyReferenced_nonNull_native();
    sub_261FA447C();
    sub_261F67914(v15);
  }

  sub_261FE6B78(v7, v3);
}

uint64_t CUPairedPeer.initialPairingTime.getter@<X0>(uint64_t a1@<X8>)
{
  sub_261FE5F70();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_2620395CC();
    v3 = 0;
  }

  v4 = sub_2620395EC();

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v4);
}

uint64_t sub_261FE62A8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_261F8D618(a1, &v10 - v6);
  v8 = *a2;
  return CUPairedPeer.initialPairingTime.setter(v7);
}

uint64_t CUPairedPeer.initialPairingTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  sub_261F8D618(a1, &v12 - v4);
  v6 = sub_2620395EC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (EnumTagSinglePayload == 1)
  {
    sub_261FCB894(v5, &qword_27FEF91C0, &qword_26203CD50);
    v8 = 0;
  }

  else
  {
    sub_2620395DC();
    v10 = v9;
    (*(*(v6 - 8) + 8))(v5, v6);
    v8 = v10;
  }

  sub_261FE6070(v8, EnumTagSinglePayload == 1);
  return sub_261FCB894(a1, &qword_27FEF91C0, &qword_26203CD50);
}

void (*CUPairedPeer.initialPairingTime.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF91C0, &qword_26203CD50) - 8) + 64);
  a1[1] = __swift_coroFrameAllocStub(v3);
  v4 = __swift_coroFrameAllocStub(v3);
  a1[2] = v4;
  CUPairedPeer.initialPairingTime.getter(v4);
  return sub_261FE651C;
}

void sub_261FE651C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_261F8D618(v3, v2);
    CUPairedPeer.initialPairingTime.setter(v2);
    sub_261FCB894(v3, &qword_27FEF91C0, &qword_26203CD50);
  }

  else
  {
    CUPairedPeer.initialPairingTime.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t CUPairedPeer.isPairedForAutomation.getter()
{
  if (!sub_261F6752C(v0, &selRef_acl))
  {
    OUTLINED_FUNCTION_7_10();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_17_7();
  v1 = OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_12_9(v1, v2, v3, v4, v5, v6);

  sub_261F67914(v8);
  if (!v10)
  {
LABEL_6:
    sub_261FCB894(v9, &qword_27FEF9870, &qword_26203C960);
    return 0;
  }

  result = OUTLINED_FUNCTION_4_12();
  if (result)
  {
    return v8[0];
  }

  return result;
}

uint64_t CUPairedPeer.associatedLockdownHostBUID.getter()
{
  if (sub_261F6752C(v0, &selRef_info))
  {
    OUTLINED_FUNCTION_17_7();
    v1 = OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_12_9(v1, v2, v3, v4, v5, v6);

    sub_261F67914(v17);
    if (v19)
    {
      v7 = OUTLINED_FUNCTION_4_12();
      return OUTLINED_FUNCTION_5_10(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  sub_261FCB894(v18, &qword_27FEF9870, &qword_26203C960);
  return OUTLINED_FUNCTION_84();
}

void sub_261FE670C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  CUPairedPeer.lastSeenWireProtocolVersion.setter(v2);
}

uint64_t CUPairedPeer.lastSeenWireProtocolVersion.modify(id *a1)
{
  a1[1] = v1;
  *a1 = CUPairedPeer.lastSeenWireProtocolVersion.getter();
  return OUTLINED_FUNCTION_19_5();
}

void sub_261FE6780(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    CUPairedPeer.lastSeenWireProtocolVersion.setter(v2);
  }

  else
  {
    CUPairedPeer.lastSeenWireProtocolVersion.setter(*a1);
  }
}

uint64_t CUPairedPeer.verify(authTag:data:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38[1] = *MEMORY[0x277D85DE8];
  if (!MEMORY[0x277D441B0])
  {
    sub_26203A49C();
    if (qword_27FEF8680 != -1)
    {
      OUTLINED_FUNCTION_10_7();
    }

    sub_26203969C();
    goto LABEL_21;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D441B0]) init];
  v10 = sub_261FC5F18(v5);
  if (v11 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v12 = sub_26203952C();
    sub_261F6ADEC(v13, v14);
  }

  [v9 setDeviceIRKData_];

  OUTLINED_FUNCTION_75();
  v15 = sub_26203952C();
  v16 = sub_26203952C();
  v37[0] = 0;
  v17 = [v9 verifyAuthTag:v15 data:v16 type:a5 error:v37];

  if (!v17)
  {
    v20 = v37[0];
    v21 = sub_2620393FC();

    swift_willThrow();
    if (a5 == 2 && (CUPairedPeer.btAddressString.getter(), v22) && (v23 = sub_26203A18C(), , v24 = _RPTextToMACAddress(v23), v23, v24))
    {
      v25 = sub_26203954C();
      v27 = v26;

      if (MEMORY[0x2667219E0](v25, v27, a3, a4))
      {
        v28 = sub_26203A47C();
        if (qword_27FEF8680 != -1)
        {
          OUTLINED_FUNCTION_10_7();
        }

        v29 = qword_27FEFA0E8;
        if (os_log_type_enabled(qword_27FEFA0E8, v28))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v38[0] = v31;
          *v30 = 136315138;
          v37[0] = CUPairedPeer.udid.getter();
          v37[1] = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
          v33 = sub_26203A20C();
          v35 = sub_261F67FE4(v33, v34, v38);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_261F5B000, v29, v28, "Identity verified using BT Address in pairing record instead of authTag for device with udid: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v31);
          MEMORY[0x266724180](v31, -1, -1);
          MEMORY[0x266724180](v30, -1, -1);
        }

        sub_261F6BFFC(v25, v27);
        goto LABEL_10;
      }

      sub_261F6BFFC(v25, v27);
    }

    else
    {
    }

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  v18 = v37[0];

LABEL_10:
  result = 1;
LABEL_22:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261FE6B78(uint64_t a1, void *a2)
{
  v3 = sub_26203A0BC();

  [a2 setInfo_];
}

unint64_t sub_261FE6BFC()
{
  result = qword_27FEFA0F0;
  if (!qword_27FEFA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA0F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IdentityError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    return a10;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return swift_once();
}

id OUTLINED_FUNCTION_27_4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v9 a2];
}

uint64_t sub_261FE6DE0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_63();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_43_3(v1);

  sub_261FEC34C(sub_261FEDEEC, v0, &unk_28748EC88, sub_261FEDF44, sub_261FD9D88);
}

uint64_t sub_261FE6EB4()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_63();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_43_3(v1);

  sub_261FEC34C(sub_261FEDE84, v0, &unk_28748EBE8, sub_261FEDE90, sub_261FDFE0C);
}

uint64_t sub_261FE6F88(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  sub_261FEC34C(sub_261FEDD24, v5, &unk_28748EB48, sub_261FEDD30, sub_261FEC0B4);
}

uint64_t sub_261FE7078()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA0F8 = result;
  return result;
}

uint64_t RemoteXPCControlChannelTransport.xpcConnection.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
}

uint64_t sub_261FE7174()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_261FE71A4(char a1)
{
  result = OUTLINED_FUNCTION_43();
  *(v1 + 56) = a1;
  return result;
}

void sub_261FE7268()
{
  OUTLINED_FUNCTION_96();
  v3 = v2;
  v5 = v4;
  v6 = sub_262039FAC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v14 = v13 - v12;
  v15 = sub_262039FEC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v36 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_46();
    v20 = swift_allocObject();
    *(v20 + 16) = v5;
    *(v20 + 24) = v3;
    OUTLINED_FUNCTION_8_10(v20);
    v38 = 1107296256;
    OUTLINED_FUNCTION_1();
    v39 = v21;
    v40 = &block_descriptor_9_0;
    v22 = _Block_copy(&v37);

    sub_262039FCC();
    OUTLINED_FUNCTION_0_25();
    sub_261FEDBA0(v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F98F68();
    OUTLINED_FUNCTION_14_11();
    sub_26203A75C();
    v25 = OUTLINED_FUNCTION_32_3();
    MEMORY[0x266722A20](v25);
    _Block_release(v22);
    (*(v9 + 8))(v14, v6);
  }

  else
  {
    v35 = v9;
    v34 = *(v0 + 40);
    v26 = **(v0 + 32);
    sub_26203970C();
    OUTLINED_FUNCTION_46();
    v27 = swift_allocObject();
    *(v27 + 16) = v5;
    *(v27 + 24) = v3;
    sub_261FECEA8();
    sub_261FECEFC();

    sub_26203984C();

    sub_26203975C();
    OUTLINED_FUNCTION_46();
    v28 = swift_allocObject();
    *(v28 + 16) = v5;
    *(v28 + 24) = v3;
    OUTLINED_FUNCTION_8_10(v28);
    v38 = 1107296256;
    OUTLINED_FUNCTION_1();
    v39 = v29;
    v40 = &block_descriptor_9;
    v30 = _Block_copy(&v37);

    sub_262039FCC();
    OUTLINED_FUNCTION_0_25();
    sub_261FEDBA0(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F98F68();
    OUTLINED_FUNCTION_14_11();
    sub_26203A75C();
    v33 = OUTLINED_FUNCTION_32_3();
    MEMORY[0x266722A20](v33);
    _Block_release(v30);
    (*(v35 + 8))(v14, v6);
  }

  (*(v36 + 8))(v1, v15);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FE765C(void (*a1)(_BYTE *))
{
  sub_261F9BCE0();
  sub_26203AD3C();
  __src[1] = v6[1];
  sub_261F9D610();
  v2 = swift_allocError();
  sub_26203AD4C();
  __src[0] = v2;
  sub_261F65314(__src);
  memcpy(__dst, __src, 0x92uLL);
  a1(__dst);
  memcpy(v6, __dst, 0x92uLL);
  return sub_261F6A760(v6);
}

uint64_t sub_261FE7774(void *__src, void (*a2)(_BYTE *))
{
  memcpy(__dst, __src, 0x93uLL);
  if (sub_261F65308(__dst) == 1)
  {
    __srca[0] = *nullsub_1(__dst);
    sub_261F65314(__srca);
    memcpy(v8, __srca, 0x92uLL);
    memcpy(v10, __src, 0x93uLL);
    v4 = *nullsub_1(v10);
  }

  else
  {
    v5 = nullsub_1(__dst);
    memcpy(__srca, v5, 0x92uLL);
    sub_261FEDDA4(__srca);
    memcpy(v8, __srca, 0x92uLL);
    memcpy(v10, __src, 0x93uLL);
    v6 = nullsub_1(v10);
    sub_261FBCBCC(v6, v11);
  }

  a2(v8);
  memcpy(v11, v8, 0x92uLL);
  return sub_261F6A760(v11);
}

uint64_t sub_261FE788C(uint64_t (*a1)(_BYTE *))
{
  sub_261FDBAD0(__src);
  memcpy(v3, __src, 0x92uLL);
  return a1(v3);
}

void sub_261FE78E4()
{
  OUTLINED_FUNCTION_96();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_262039FAC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40_3();
  v31 = sub_262039FEC();
  v14 = OUTLINED_FUNCTION_0(v31);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74();
  v21 = v20 - v19;
  memcpy(v32, v7, 0x92uLL);
  v22 = *(v0 + 32);
  sub_261FECEA8();
  sub_261FECEFC();
  sub_26203973C();
  OUTLINED_FUNCTION_46();
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  *(v23 + 24) = v3;
  v32[4] = sub_261FECF60;
  v32[5] = v23;
  v32[0] = MEMORY[0x277D85DD0];
  OUTLINED_FUNCTION_9_11(COERCE_DOUBLE(1107296256));
  v32[2] = v24;
  v32[3] = &block_descriptor_21;
  v25 = _Block_copy(v32);

  sub_262039FCC();
  OUTLINED_FUNCTION_0_25();
  sub_261FEDBA0(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  OUTLINED_FUNCTION_14_11();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v21, v1, v25);
  _Block_release(v25);
  v28 = *(v11 + 8);
  v29 = OUTLINED_FUNCTION_28_5();
  v30(v29);
  (*(v16 + 8))(v21, v31);

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FE7C88()
{
  sub_261F9BCE0();
  sub_26203AD3C();
  sub_261F9D610();
  OUTLINED_FUNCTION_72_0();
  swift_allocError();
  sub_26203AD4C();
  return swift_willThrow();
}

uint64_t NWInterface.isAWDL.getter()
{
  if (sub_262039B0C() == 0x306C647761 && v0 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v2 = sub_26203AC0C();

    return v2 & 1;
  }
}

uint64_t sub_261FE7E50()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  OUTLINED_FUNCTION_40(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_37();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  OUTLINED_FUNCTION_40(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  OUTLINED_FUNCTION_40(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v18 = *(v0 + 32);

  sub_262039B8C();

  v19 = sub_262039E8C();
  v20 = OUTLINED_FUNCTION_37_2();
  if (__swift_getEnumTagSinglePayload(v20, v21, v19) == 1)
  {
    v22 = &qword_27FEFA108;
    v23 = &qword_2620434D8;
    v24 = v1;
LABEL_7:
    sub_261F66E60(v24, v22, v23);
    v29 = 0;
    return v29 & 1;
  }

  sub_262039E5C();
  OUTLINED_FUNCTION_71(v19);
  (*(v25 + 8))(v1, v19);
  v26 = sub_262039A7C();
  if (OUTLINED_FUNCTION_44_1(v26) == 1)
  {
    v22 = &qword_27FEFA110;
    v23 = &unk_2620434E0;
    v24 = v11;
    goto LABEL_7;
  }

  sub_262039A6C();
  OUTLINED_FUNCTION_71(v1);
  (*(v27 + 8))(v11, v1);
  v28 = sub_262039B3C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
  {
    v22 = &unk_27FEF9B60;
    v23 = &unk_262040530;
    v24 = v17;
    goto LABEL_7;
  }

  if (sub_262039B0C() == 0x306C647761 && v31 == 0xE500000000000000)
  {

    v29 = 1;
  }

  else
  {
    v29 = sub_26203AC0C();
  }

  OUTLINED_FUNCTION_71(v28);
  v34 = *(v33 + 8);
  v35 = OUTLINED_FUNCTION_108();
  v36(v35);
  return v29 & 1;
}

uint64_t sub_261FE811C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for AtomicCounter();
  OUTLINED_FUNCTION_46();
  swift_allocObject();
  result = AtomicCounter.init()();
  *a2 = result;
  return result;
}

uint64_t sub_261FE8158(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  v9 = OUTLINED_FUNCTION_75();
  return a5(v9);
}

uint64_t sub_261FE819C()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_261FE81E4()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_261FE8228(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_261FE8288(v4);
}

uint64_t sub_261FE8254()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_261FE8288(uint64_t a1)
{
  OUTLINED_FUNCTION_43();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_261FE830C()
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return *(v0 + 41);
}

uint64_t sub_261FE833C(char a1)
{
  result = OUTLINED_FUNCTION_43();
  *(v1 + 41) = a1;
  return result;
}

BOOL sub_261FE83B4()
{
  sub_261FE8408(v2);
  v0 = v3 != 0;
  sub_261F66E60(v2, &qword_27FEF9980, &qword_26203F7C0);
  return v0;
}

uint64_t sub_261FE8408@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_34_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_40(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_37();
  v10 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  sub_261FEDB40(v1 + v10, v2, &qword_27FEFA118, &qword_26204AE60);
  v11 = type metadata accessor for DiscoveredBonjourAdvert();
  v12 = OUTLINED_FUNCTION_37_2();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
    result = sub_261F66E60(v2, &qword_27FEFA118, &qword_26204AE60);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v11;
    *(a1 + 32) = &protocol witness table for DiscoveredBonjourAdvert;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
    return sub_261FECF8C(v2, boxed_opaque_existential_0);
  }

  return result;
}

uint64_t sub_261FE8514(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_261FEDB40(a1, &v10 - v6, &qword_27FEFA118, &qword_26204AE60);
  v8 = *a2;
  return sub_261FE8624(v7);
}

uint64_t sub_261FE85C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  return sub_261FEDB40(v1 + v3, a1, &qword_27FEFA118, &qword_26204AE60);
}

uint64_t sub_261FE8624(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
  swift_beginAccess();
  sub_261FECFF0(a1, v1 + v3);
  swift_endAccess();
  sub_261FEA704();
  return sub_261F66E60(a1, &qword_27FEFA118, &qword_26204AE60);
}

void (*sub_261FE86A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_33();
  return sub_261FE86F8;
}

void sub_261FE86F8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_261FEA704();
  }
}

uint64_t sub_261FE872C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261FE882C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_261FEDB0C;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_261FE879C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
  }

  v6 = *a2;
  sub_261F7D45C(v3);
  return sub_261FE8884();
}

uint64_t sub_261FE882C()
{
  v1 = (v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_261F7D45C(v3);
  return v3;
}

uint64_t sub_261FE8884()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v0;
  return sub_261F665E4(v4);
}

uint64_t NWConnectionControlChannelTransport.__allocating_init(connection:bonjourEndpoint:netLinkManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_36_3();
  v5 = *(v3 + 48);
  v6 = *(v3 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_75();
  NWConnectionControlChannelTransport.init(connection:bonjourEndpoint:netLinkManager:)(v8, v9, a3);
  return v7;
}

uint64_t NWConnectionControlChannelTransport.init(connection:bonjourEndpoint:netLinkManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3;
  OUTLINED_FUNCTION_36_3();
  *(v6 + 40) = 0;
  v8 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
  v9 = type metadata accessor for DiscoveredBonjourAdvert();
  __swift_storeEnumTagSinglePayload(v6 + v8, 1, 1, v9);
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint) = 0;
  v10 = (v6 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate);
  *v10 = 0;
  v10[1] = 0;
  *(v6 + 32) = v5;
  swift_beginAccess();

  sub_261FECFF0(v4, v6 + v8);
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkManager) = a3;
  v11 = qword_27FEF8698;
  v12 = a3;
  if (v11 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v13 = sub_26203ABAC();
  MEMORY[0x266722710](v13);

  sub_261F66E60(v4, &qword_27FEFA118, &qword_26204AE60);
  *(v6 + 16) = 762340212;
  *(v6 + 24) = 0xE400000000000000;
  return v6;
}

void sub_261FE8AFC()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_262039FAC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v90 = v10;
  v91 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v88 = v14 - v13;
  OUTLINED_FUNCTION_9_5();
  v89 = sub_262039FEC();
  v15 = OUTLINED_FUNCTION_0(v89);
  v87 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_74();
  v86 = v20 - v19;
  OUTLINED_FUNCTION_9_5();
  v82 = sub_262039F9C();
  v21 = OUTLINED_FUNCTION_0(v82);
  v81 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_74();
  v80 = (v26 - v25);
  OUTLINED_FUNCTION_9_5();
  v93 = sub_26203A03C();
  v27 = OUTLINED_FUNCTION_0(v93);
  v84 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v79 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v92 = &v79 - v33;
  OUTLINED_FUNCTION_9_5();
  v34 = sub_262039A7C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_74();
  v42 = (v41 - v40);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v43 = *(v0 + 32);
  OUTLINED_FUNCTION_63();
  v44 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_14_1();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = v43;
  v83 = v5;
  v45[4] = v5;
  v45[5] = v3;
  v45[6] = v7;
  swift_retain_n();

  v85 = v3;

  v46 = v7;
  sub_261F7D45C(sub_261FED060);
  sub_262039BDC();

  v47 = *(v1 + 32);

  sub_261F7D45C(sub_261FED070);
  OUTLINED_FUNCTION_28_5();
  sub_262039BEC();

  v48 = *(v1 + 32);

  sub_262039C8C();

  v49 = v37[11];
  v50 = OUTLINED_FUNCTION_34_3();
  if (v51(v50) == *MEMORY[0x277CD8B00])
  {
    v52 = v37[12];
    v53 = OUTLINED_FUNCTION_34_3();
    v54(v53);
    v55 = v42[1];

    v56 = v42[3];

    v57 = v42[5];

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA130, &qword_2620434F0);
    sub_261F66E60(v42 + *(v58 + 80), &unk_27FEF9B60, &unk_262040530);
    v59 = v79;
    sub_26203A02C();
    v60 = v80;
    *v80 = 10;
    v61 = v81;
    v62 = v82;
    (*(v81 + 104))(v60, *MEMORY[0x277D85188], v82);
    MEMORY[0x266722530](v59, v60);
    (*(v61 + 8))(v60, v62);
    v82 = v84[1];
    v82(v59, v93);
    OUTLINED_FUNCTION_63();
    v63 = swift_allocObject();
    swift_weakInit();
    v84 = v46;
    v64 = *(v1 + 32);
    OUTLINED_FUNCTION_14_1();
    v65 = swift_allocObject();
    v65[2] = v63;
    v65[3] = v64;
    v66 = v83;
    v65[4] = 10;
    v65[5] = v66;
    v65[6] = v85;
    v95[4] = sub_261FED078;
    v95[5] = v65;
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 1107296256;
    OUTLINED_FUNCTION_1();
    v95[2] = v67;
    v95[3] = &block_descriptor_34;
    v68 = _Block_copy(v95);
    swift_retain_n();

    v69 = v86;
    sub_262039FCC();
    v94 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_0_25();
    sub_261FEDBA0(v70, v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
    sub_261F98F68();
    v72 = v88;
    v73 = v91;
    sub_26203A75C();
    v74 = v92;
    MEMORY[0x2667229F0](v92, v69, v72, v68);
    _Block_release(v68);

    (*(v90 + 8))(v72, v73);
    (*(v87 + 8))(v69, v89);
    v82(v74, v93);
  }

  else
  {
    v75 = v37[1];
    v76 = OUTLINED_FUNCTION_34_3();
    v77(v76);
  }

  v78 = *(v1 + 32);

  sub_262039C4C();

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FE91C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t a6)
{
  v109 = a4;
  v112 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v90[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v100 = &v90[-v14];
  v101 = sub_262039B3C();
  v98 = *(v101 - 8);
  v15 = *(v98 + 64);
  MEMORY[0x28223BE20](v101);
  v110 = &v90[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = &v90[-v19];
  v20 = sub_262039E8C();
  v104 = *(v20 - 8);
  v105 = v20;
  v21 = *(v104 + 64);
  MEMORY[0x28223BE20](v20);
  v103 = &v90[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_262039E9C();
  v107 = *(v23 - 8);
  v108 = v23;
  v24 = *(v107 + 64);
  MEMORY[0x28223BE20](v23);
  v106 = &v90[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_262039C3C();
  v111 = *(v26 - 8);
  v27 = *(v111 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v90[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v90[-v32];
  MEMORY[0x28223BE20](v31);
  v35 = &v90[-v34];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v37 = result;
    swift_beginAccess();
    if (*(v37 + 32) != a3)
    {
    }

    v97 = v37;
    v38 = sub_26203A4AC();
    if (qword_27FEF8688 != -1)
    {
      swift_once();
    }

    v93 = a6;
    v95 = a5;
    v39 = qword_27FEFA0F8;
    v40 = v111;
    v41 = *(v111 + 16);
    v41(v35, v112, v26);
    v96 = v39;
    if (os_log_type_enabled(v39, v38))
    {
      v42 = swift_slowAlloc();
      v91 = v38;
      v43 = v42;
      v92 = swift_slowAlloc();
      v115[0] = v92;
      *v43 = 136446466;
      v94 = v41;
      v44 = v97;
      swift_beginAccess();
      v46 = *(v44 + 16);
      v45 = *(v44 + 24);

      v47 = sub_261F67FE4(v46, v45, v115);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v94(v33, v35, v26);
      v48 = sub_26203A20C();
      v50 = v49;
      v51 = *(v40 + 8);
      v51(v35, v26);
      v52 = sub_261F67FE4(v48, v50, v115);
      v41 = v94;

      *(v43 + 14) = v52;
      v53 = v96;
      _os_log_impl(&dword_261F5B000, v96, v91, "%{public}s: Connection state changed to %s", v43, 0x16u);
      v54 = v92;
      swift_arrayDestroy();
      MEMORY[0x266724180](v54, -1, -1);
      MEMORY[0x266724180](v43, -1, -1);
      v55 = v110;
    }

    else
    {
      v51 = *(v40 + 8);
      v51(v35, v26);
      v55 = v110;
      v53 = v96;
    }

    v41(v30, v112, v26);
    v56 = (*(v40 + 88))(v30, v26);
    if (v56 == *MEMORY[0x277CD8DE8])
    {
      (*(v40 + 96))(v30, v26);
      v58 = v106;
      v57 = v107;
      v59 = v108;
      (*(v107 + 32))(v106, v30, v108);
      v60 = *(v97 + 32);

      sub_262039C6C();

      sub_261FEDBA0(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
      v61 = swift_allocError();
      (*(v57 + 16))(v62, v58, v59);
      v114[0] = v61;
      sub_261F65314(v114);
      memcpy(v113, v114, 0x92uLL);
      v109(v113);
LABEL_13:

      memcpy(v115, v113, 0x92uLL);
      sub_261F6A760(v115);
      return (*(v57 + 8))(v58, v59);
    }

    v63 = v56;
    if (v56 == *MEMORY[0x277CD8DE0])
    {
      (*(v40 + 96))(v30, v26);
      v58 = v106;
      v57 = v107;
      v59 = v108;
      (*(v107 + 32))(v106, v30, v108);
      sub_261FEDBA0(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
      v64 = swift_allocError();
      (*(v57 + 16))(v65, v58, v59);
      v114[0] = v64;
      sub_261F65314(v114);
      memcpy(v113, v114, 0x92uLL);
      v109(v113);
      goto LABEL_13;
    }

    if (v56 == *MEMORY[0x277CD8DD8])
    {
    }

    v66 = v97;
    if (v56 == *MEMORY[0x277CD8DF8])
    {
    }

    if (v56 == *MEMORY[0x277CD8DD0])
    {
      v67 = *(v97 + 32);

      v68 = v102;
      sub_262039B8C();

      v69 = v105;
      if (__swift_getEnumTagSinglePayload(v68, 1, v105) == 1)
      {
        sub_261F66E60(v68, &qword_27FEFA108, &qword_2620434D8);
        v70 = sub_26203A48C();
        v71 = os_log_type_enabled(v53, v70);
        v72 = v95;
        if (v71)
        {
          v73 = swift_slowAlloc();
          v74 = v53;
          v75 = swift_slowAlloc();
          v115[0] = v75;
          *v73 = 136446210;
          swift_beginAccess();
          v76 = *(v66 + 16);
          v77 = *(v66 + 24);

          v78 = sub_261F67FE4(v76, v77, v115);
          v72 = v95;

          *(v73 + 4) = v78;
          _os_log_impl(&dword_261F5B000, v74, v70, "%{public}s: Transport connection in state ready but has no associated path", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v75);
          MEMORY[0x266724180](v75, -1, -1);
          MEMORY[0x266724180](v73, -1, -1);
        }

        goto LABEL_28;
      }

      (*(v104 + 32))(v103, v68, v69);
      v80 = v99;
      sub_262039E5C();
      v81 = sub_262039A7C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v80, 1, v81);
      v72 = v95;
      if (EnumTagSinglePayload == 1)
      {
        sub_261F66E60(v80, &qword_27FEFA110, &unk_2620434E0);
        v83 = v100;
        __swift_storeEnumTagSinglePayload(v100, 1, 1, v101);
      }

      else
      {
        v83 = v100;
        sub_262039A6C();
        (*(*(v81 - 8) + 8))(v80, v81);
        v84 = v101;
        if (__swift_getEnumTagSinglePayload(v83, 1, v101) != 1)
        {
          (*(v98 + 32))(v55, v83, v84);
          v87 = v66 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate;
          swift_beginAccess();
          v88 = *v87;
          if (*v87)
          {
            v89 = *(v87 + 8);

            if ((v88(v55) & 1) == 0)
            {
              (*(v98 + 8))(v55, v84);
              sub_261F665E4(v88);
              goto LABEL_27;
            }

            sub_261FEBA1C();
            sub_261F665E4(v88);
          }

          (*(v98 + 8))(v55, v84);
LABEL_27:
          v85 = v103;
          sub_261FEA998();
          (*(v104 + 8))(v85, v69);
LABEL_28:
          sub_261FDBAD0(v115);
          memcpy(v114, v115, 0x92uLL);
          v86 = v109;
          v109(v114);
          sub_261FE6F88(v86, v72);
        }
      }

      sub_261F66E60(v83, &unk_27FEF9B60, &unk_262040530);
      goto LABEL_27;
    }

    v79 = *MEMORY[0x277CD8DF0];

    if (v63 != v79)
    {
      return (v51)(v30, v26);
    }
  }

  return result;
}

uint64_t sub_261FE9E08(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    v3 = sub_26203A48C();
    if (qword_27FEF8688 != -1)
    {
      swift_once();
    }

    v4 = qword_27FEFA0F8;
    if (os_log_type_enabled(qword_27FEFA0F8, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      swift_beginAccess();
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);

      v9 = sub_261F67FE4(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_261F5B000, v4, v3, "%{public}s: Cancelling TCP control channel transport as it is no longer viable", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x266724180](v6, -1, -1);
      MEMORY[0x266724180](v5, -1, -1);
    }

    return sub_261FEA66C();
  }

  return result;
}

uint64_t sub_261FE9F60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v7 = sub_262039C3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-v13];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v29 = a4;
    swift_beginAccess();
    if (v16[4] == a2)
    {
      v17 = v16[4];

      sub_262039C5C();

      (*(v8 + 104))(v12, *MEMORY[0x277CD8DF8], v7);
      v18 = MEMORY[0x2667220D0](v14, v12);
      v19 = *(v8 + 8);
      v19(v12, v7);
      v19(v14, v7);
      if (v18)
      {
        v28 = sub_26203A48C();
        if (qword_27FEF8688 != -1)
        {
          swift_once();
        }

        v20 = qword_27FEFA0F8;
        if (os_log_type_enabled(qword_27FEFA0F8, v28))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v32[0] = v22;
          *v21 = 136446466;
          swift_beginAccess();
          v24 = v16[2];
          v23 = v16[3];

          v25 = sub_261F67FE4(v24, v23, v32);

          *(v21 + 4) = v25;
          *(v21 + 12) = 2048;
          *(v21 + 14) = a3;
          _os_log_impl(&dword_261F5B000, v20, v28, "%{public}s: Cancelling TCP control channel transport as connection is stuck preparing after %ld seconds", v21, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          MEMORY[0x266724180](v22, -1, -1);
          MEMORY[0x266724180](v21, -1, -1);
        }

        sub_261F9BCE0();
        sub_26203ACDC();
        v31[0] = v32[0];
        v31[1] = v32[1];
        sub_261F9D610();
        v26 = swift_allocError();
        sub_26203AD4C();
        v31[0] = v26;
        sub_261F65314(v31);
        memcpy(v30, v31, 0x92uLL);
        v29(v30);
        memcpy(v32, v30, 0x92uLL);
        sub_261F6A760(v32);
        sub_261FEA66C();
      }
    }
  }

  return result;
}

uint64_t sub_261FEA308@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA108, &qword_2620434D8);
  OUTLINED_FUNCTION_40(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_40_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  OUTLINED_FUNCTION_40(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v13 = *(v1 + 32);

  sub_262039B8C();

  v14 = sub_262039E8C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v14) == 1)
  {
    sub_261F66E60(v3, &qword_27FEFA108, &qword_2620434D8);
    sub_262039A7C();
    v15 = OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
LABEL_4:
    sub_261F66E60(v2, &qword_27FEFA110, &unk_2620434E0);
LABEL_5:
    v33[3] = MEMORY[0x277D837D0];
    v33[0] = 0xD00000000000002ELL;
    v33[1] = 0x8000000262050CB0;
    v34 = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    v23 = v22;
    *v22 = 1;
    v32 = 1;
    v24 = ControlChannelConnectionError.Message.format(code:)(&v32);
    sub_261F65C08(v33);
    *(v23 + 8) = v24;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 0u;
    *(v23 + 7) = 0;
    return swift_willThrow();
  }

  sub_262039E6C();
  OUTLINED_FUNCTION_71(v14);
  (*(v18 + 8))(v3, v14);
  v19 = sub_262039A7C();
  v20 = OUTLINED_FUNCTION_37_2();
  if (__swift_getEnumTagSinglePayload(v20, v21, v19) == 1)
  {
    goto LABEL_4;
  }

  v26 = *(v19 - 8);
  if ((*(v26 + 88))(v2, v19) != *MEMORY[0x277CD8B08])
  {
    (*(v26 + 8))(v2, v19);
    goto LABEL_5;
  }

  (*(v26 + 96))(v2, v19);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA138, &qword_2620434F8) + 48);
  v28 = sub_262039A4C();
  OUTLINED_FUNCTION_6_1(v28);
  (*(v29 + 32))(a1, v2);
  v30 = sub_262039A5C();
  OUTLINED_FUNCTION_6_1(v30);
  return (*(v31 + 8))(v2 + v27);
}

uint64_t sub_261FEA66C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkManager);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint);
    if (v2)
    {
      *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint) = 0;
      v3 = v1;
      [v3 removeEndpoint_];
    }
  }

  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v4 = *(v0 + 32);

  sub_262039C6C();
}

void sub_261FEA704()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v2 = type metadata accessor for DiscoveredBonjourAdvert();
  v3 = OUTLINED_FUNCTION_6_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_74();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  OUTLINED_FUNCTION_40(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13 + 40;
  v15 = sub_26203A4AC();
  if (qword_27FEF8688 != -1)
  {
    OUTLINED_FUNCTION_2_17();
  }

  v16 = qword_27FEFA0F8;
  if (os_log_type_enabled(qword_27FEFA0F8, v15))
  {
    OUTLINED_FUNCTION_57_1();
    v17 = swift_slowAlloc();
    v27[0] = OUTLINED_FUNCTION_39_0();
    *v17 = 136446466;
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v18 = *(v1 + 16);
    v19 = *(v1 + 24);

    v20 = sub_261F67FE4(v18, v19, v27);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint;
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    sub_261FEDB40(v1 + v21, v14, &qword_27FEFA118, &qword_26204AE60);
    if (__swift_getEnumTagSinglePayload(v14, 1, v2))
    {
      sub_261F66E60(v14, &qword_27FEFA118, &qword_26204AE60);
      v22 = 0xE500000000000000;
      v23 = 0x3E6C696E3CLL;
    }

    else
    {
      sub_261FEDDC4(v14, v8);
      sub_261F66E60(v14, &qword_27FEFA118, &qword_26204AE60);
      v23 = DiscoveredBonjourAdvert.debugDescription.getter();
      v22 = v24;
      sub_261FEDE28(v8);
    }

    v25 = sub_261F67FE4(v23, v22, v27);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_261F5B000, v16, v15, "%{public}s: bonjour endpoint updated: %s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  swift_beginAccess();
  *(v1 + 41) = 1;
  OUTLINED_FUNCTION_31_0();
}

void sub_261FEA998()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  v134 = v5;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA110, &unk_2620434E0);
  v6 = OUTLINED_FUNCTION_6_1(v127);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v126 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v115[-v11];
  v131 = sub_262039A4C();
  v13 = OUTLINED_FUNCTION_0(v131);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v122 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v124 = &v115[-v20];
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v130 = &v115[-v22];
  OUTLINED_FUNCTION_9_5();
  v23 = sub_262039E8C();
  v24 = OUTLINED_FUNCTION_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v132 = v27;
  OUTLINED_FUNCTION_29();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v115[-v30];
  MEMORY[0x28223BE20](v29);
  v34 = &v115[-v33];
  v35 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkManager);
  if (v35)
  {
    v128 = v12;
    v133 = v32;
    v119 = v4;
    v120 = v2;
    v121 = v15;
    v36 = v35;
    v37 = sub_26203A4AC();
    if (qword_27FEF8688 != -1)
    {
      OUTLINED_FUNCTION_2_17();
    }

    v38 = qword_27FEFA0F8;
    v39 = v133;
    v40 = *(v133 + 16);
    v40(v34, v134, v23);
    v41 = os_log_type_enabled(v38, v37);
    v125 = v0;
    v123 = v38;
    v129 = v40;
    if (v41)
    {
      OUTLINED_FUNCTION_57_1();
      v116 = v42;
      v43 = swift_slowAlloc();
      v118 = v36;
      v44 = v43;
      v117 = OUTLINED_FUNCTION_39_0();
      v135[0] = v117;
      *v44 = 136446466;
      OUTLINED_FUNCTION_7_2();
      swift_beginAccess();
      v46 = *(v0 + 16);
      v45 = *(v0 + 24);

      v47 = sub_261F67FE4(v46, v45, v135);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      v40(v31, v34, v23);
      sub_26203A20C();
      v48 = *(v39 + 8);
      v48(v34, v23);
      v49 = OUTLINED_FUNCTION_22_1();
      v52 = sub_261F67FE4(v49, v50, v51);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_261F5B000, v38, v116, "%{public}s: Trying to monitor reachability of path: %s", v44, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_1_0();
      v36 = v118;
      OUTLINED_FUNCTION_1_0();
    }

    else
    {
      v48 = *(v39 + 8);
      v48(v34, v23);
    }

    v53 = v128;
    sub_262039E6C();
    v54 = sub_262039A7C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v54);
    v56 = v129;
    if (EnumTagSinglePayload == 1)
    {
      sub_261F66E60(v53, &qword_27FEFA110, &unk_2620434E0);
      goto LABEL_13;
    }

    v57 = *(v54 - 8);
    v58 = v57[11];
    v59 = OUTLINED_FUNCTION_28_5();
    if (v60(v59) != *MEMORY[0x277CD8B08])
    {
      v78 = v57[1];
      v79 = OUTLINED_FUNCTION_28_5();
      v80(v79);
LABEL_13:
      v81 = sub_26203A48C();
      v82 = v132;
      v56(v132, v134, v23);
      v83 = v123;
      v84 = os_log_type_enabled(v123, v81);
      v85 = v125;
      if (v84)
      {
        OUTLINED_FUNCTION_57_1();
        v86 = swift_slowAlloc();
        v136[0] = OUTLINED_FUNCTION_39_0();
        *v86 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v87 = v85;
        v88 = *(v85 + 16);
        v89 = v82;
        v90 = *(v87 + 24);

        v91 = OUTLINED_FUNCTION_22_1();
        v94 = sub_261F67FE4(v91, v92, v93);

        *(v86 + 4) = v94;
        *(v86 + 12) = 2080;
        sub_262039E6C();
        sub_26203A20C();
        v48(v89, v23);
        v95 = OUTLINED_FUNCTION_22_1();
        v98 = sub_261F67FE4(v95, v96, v97);

        *(v86 + 14) = v98;
        _os_log_impl(&dword_261F5B000, v83, v81, "%{public}s: Unable to monitor path which does not have resolved host/port as remote endpoint: %s", v86, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      else
      {

        v48(v82, v23);
      }

      goto LABEL_16;
    }

    v61 = v57[12];
    v62 = OUTLINED_FUNCTION_28_5();
    v63(v62);
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA138, &qword_2620434F8) + 48);
    v65 = v121;
    (*(v121 + 32))(v130, v53, v131);
    v66 = sub_262039A5C();
    OUTLINED_FUNCTION_6_1(v66);
    (*(v67 + 8))(v53 + v64);
    sub_261F9B6D0(0, &qword_27FEFA158, 0x277D028B8);
    v68 = *(v65 + 16);
    v69 = OUTLINED_FUNCTION_108();
    v68(v69);
    sub_261FEB3B0();
    if (v70)
    {
      v71 = v125;
      v72 = *(v125 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint);
      *(v125 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport__netlinkEndpoint) = v70;
      v73 = v70;

      OUTLINED_FUNCTION_63();
      v74 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v75 = swift_allocObject();
      v75[2] = v74;
      v75[3] = v71;
      v76 = v120;
      v75[4] = v119;
      v75[5] = v76;
      v135[4] = sub_261FEDA90;
      v135[5] = v75;
      v135[0] = MEMORY[0x277D85DD0];
      v135[1] = 1107296256;
      v135[2] = sub_261F78F64;
      v135[3] = &block_descriptor_71;
      v77 = _Block_copy(v135);

      [v73 setStateChangedHandler_];
      _Block_release(v77);
      [v36 addEndpoint_];

      (*(v65 + 8))(v130, v131);
    }

    else
    {
      v99 = sub_26203A48C();
      v100 = v122;
      (v68)(v122, v130, v131);
      if (os_log_type_enabled(v123, v99))
      {
        OUTLINED_FUNCTION_57_1();
        v101 = swift_slowAlloc();
        v134 = OUTLINED_FUNCTION_39_0();
        v136[0] = v134;
        *v101 = 136446466;
        v102 = v125;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        LODWORD(v133) = v99;
        v103 = v65;
        v104 = *(v102 + 16);
        v105 = *(v102 + 24);
        v106 = v131;

        v107 = sub_261F67FE4(v104, v105, v136);

        *(v101 + 4) = v107;
        *(v101 + 12) = 2080;
        (v68)(v124, v100, v106);
        v108 = sub_26203A20C();
        v110 = v109;
        v111 = *(v103 + 8);
        v111(v100, v106);
        v112 = sub_261F67FE4(v108, v110, v136);

        *(v101 + 14) = v112;
        _os_log_impl(&dword_261F5B000, v123, v133, "%{public}s: Unable to create CUNetLinkEndpoint from connection host: %s", v101, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();

        v111(v130, v106);
      }

      else
      {

        v113 = *(v65 + 8);
        v114 = v131;
        v113(v100, v131);
        v113(v130, v114);
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_31_0();
}

void sub_261FEB3B0()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v3 = sub_262039ACC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40_3();
  v8 = sub_262039A9C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74();
  v16 = v15 - v14;
  v17 = sub_262039A4C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v25 = v24 - v23;
  v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v20 + 16))(v25, v2, v17);
  v27 = *(v20 + 88);
  v28 = OUTLINED_FUNCTION_22_1();
  v30 = v29(v28);
  if (v30 == *MEMORY[0x277CD8AE8])
  {
    v31 = OUTLINED_FUNCTION_13_9();
    v32(v31);
    v33 = *(v25 + 8);

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA160, &unk_262043E90) + 48);
    sub_26203A48C();
    if (qword_27FEF8688 != -1)
    {
      OUTLINED_FUNCTION_2_17();
    }

    sub_26203969C();

    v35 = *(v20 + 8);
    v36 = OUTLINED_FUNCTION_108();
    v37(v36);
    sub_261F66E60(v25 + v34, &unk_27FEF9B60, &unk_262040530);
  }

  else if (v30 == *MEMORY[0x277CD8AD8])
  {
    v38 = OUTLINED_FUNCTION_13_9();
    v39(v38);
    (*(v11 + 32))(v16, v25, v8);
    IPv4Address.copy_sockaddr_in()(v40);
    OUTLINED_FUNCTION_42_2(v41, sel_setIpAddr_);
    v42 = *(v20 + 8);
    v43 = OUTLINED_FUNCTION_108();
    v44(v43);
    (*(v11 + 8))(v16, v8);
  }

  else if (v30 == *MEMORY[0x277CD8AE0])
  {
    v45 = OUTLINED_FUNCTION_13_9();
    v46(v45);
    (*(v55 + 32))(v0, v25, v3);
    IPv6Address.copy_sockaddr_in6()(v47);
    OUTLINED_FUNCTION_42_2(v48, sel_setIpAddr_);
    v49 = *(v20 + 8);
    v50 = OUTLINED_FUNCTION_108();
    v51(v50);
    (*(v55 + 8))(v0, v3);
  }

  else
  {
    v52 = *(v20 + 8);
    v53 = OUTLINED_FUNCTION_108();
    v52(v53);

    v54 = OUTLINED_FUNCTION_22_1();
    v52(v54);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_261FEB78C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_26203A47C();
    if (qword_27FEF8688 != -1)
    {
      swift_once();
    }

    v8 = qword_27FEFA0F8;
    v9 = &property descriptor for static Defaults.hostAllowRSDDeviceDiscovery;
    if (os_log_type_enabled(qword_27FEFA0F8, v7))
    {
      v10 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      __src[0] = v24;
      *v10 = 136446722;
      swift_beginAccess();
      v12 = *(a2 + 16);
      v11 = *(a2 + 24);

      v13 = sub_261F67FE4(v12, v11, __src);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      v14 = v6;
      v15 = [v14 description];
      v16 = sub_26203A1BC();
      v17 = a3;
      v19 = v18;

      v20 = sub_261F67FE4(v16, v19, __src);

      *(v10 + 14) = v20;
      v9 = &property descriptor for static Defaults.hostAllowRSDDeviceDiscovery;
      *(v10 + 22) = 2080;
      __dst[0] = [v14 state];
      v21 = sub_26203ABAC();
      v23 = sub_261F67FE4(v21, v22, __src);
      a3 = v17;

      *(v10 + 24) = v23;
      _os_log_impl(&dword_261F5B000, v8, v7, "%{public}s: Control channel endpoint %s reachability state changed: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266724180](v24, -1, -1);
      MEMORY[0x266724180](v10, -1, -1);
    }

    if ([v6 v9[344]] == 3)
    {
      sub_261FEDA9C(__src);
      memcpy(__dst, __src, 0x92uLL);
      a3(__dst);
    }
  }
}

void sub_261FEBA1C()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v57 = v2;
  v58 = v3;
  v56 = v4;
  v6 = v5;
  v7 = sub_262039A7C();
  v8 = OUTLINED_FUNCTION_40(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74();
  v55 = v12 - v11;
  OUTLINED_FUNCTION_9_5();
  v13 = sub_262039B3C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v50[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v23 = &v50[-v22];
  v24 = sub_26203A4AC();
  if (qword_27FEF8688 != -1)
  {
    OUTLINED_FUNCTION_2_17();
  }

  v25 = qword_27FEFA0F8;
  v26 = *(v16 + 16);
  v54 = v6;
  v26(v23, v6, v13);
  if (os_log_type_enabled(v25, v24))
  {
    OUTLINED_FUNCTION_57_1();
    v27 = swift_slowAlloc();
    v52 = v25;
    v28 = v27;
    v53 = OUTLINED_FUNCTION_39_0();
    v60[0] = v53;
    *v28 = 136446466;
    OUTLINED_FUNCTION_7_2();
    swift_beginAccess();
    v51 = v24;
    v29 = v26;
    v31 = v1[2];
    v30 = v1[3];

    v32 = sub_261F67FE4(v31, v30, v60);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    v29(v21, v23, v13);
    v33 = sub_26203A20C();
    v35 = v34;
    v36 = v23;
    v37 = v29;
    (*(v16 + 8))(v36, v13);
    v38 = sub_261F67FE4(v33, v35, v60);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_261F5B000, v52, v51, "%{public}s: Network control channel started but used prohibited interface %s. Starting new connection", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1_0();
  }

  else
  {
    (*(v16 + 8))(v23, v13);
    v37 = v26;
  }

  swift_beginAccess();
  v39 = v1[4];

  sub_262039B7C();
  v40 = sub_262039CCC();
  if (v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF95F0, &unk_2620402A0);
  v42 = *(v16 + 72);
  v43 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26203E9E0;
  v37(v44 + v43, v54, v13);
  v59 = v41;
  sub_261FFA140();
  sub_262039CDC();
  sub_262039C8C();
  v45 = sub_262039CAC();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  v48 = sub_262039C0C();
  v49 = v1[4];
  v1[4] = v48;

  sub_261FE8AFC(v56, v57, v58);
  sub_262039C6C();

  OUTLINED_FUNCTION_31_0();
}

void sub_261FEBE0C()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_36_3();
  v5 = sub_262039BCC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v14 = *(v0 + 32);
  OUTLINED_FUNCTION_46();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = v2;
  *v13 = sub_261FED088;
  v13[1] = v15;
  (*(v8 + 104))(v13, *MEMORY[0x277CD8DB0], v5);
  sub_262039BBC();

  sub_262039B9C();
  OUTLINED_FUNCTION_75();
  sub_262039C1C();

  (*(v8 + 8))(v13, v5);
  OUTLINED_FUNCTION_31_0();
}

void sub_261FEBF78(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA520, &qword_262045940);
  OUTLINED_FUNCTION_40(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_75();
  sub_261FEDB40(v8, v9, &qword_27FEFA520, &qword_262045940);
  v10 = sub_262039E9C();
  v11 = 0;
  if (OUTLINED_FUNCTION_44_1(v10) != 1)
  {
    sub_261FEDBA0(&qword_27FEFA168, MEMORY[0x277CD8FC0]);
    OUTLINED_FUNCTION_72_0();
    v11 = swift_allocError();
    OUTLINED_FUNCTION_71(a1);
    (*(v12 + 32))();
  }

  a2(v11);
}

uint64_t sub_261FEC0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  v8 = *(v4 + 32);
  OUTLINED_FUNCTION_107();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a3;
  v9[4] = a4;

  sub_262039C7C();
}

uint64_t NWConnectionControlChannelTransport.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_261F66E60(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_bonjourEndpoint, &qword_27FEFA118, &qword_26204AE60);

  v3 = *(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate + 8);
  sub_261F665E4(*(v0 + OBJC_IVAR____TtC19RemotePairingDevice35NWConnectionControlChannelTransport_interfaceIsProhibitedPredicate));
  return v0;
}

uint64_t NWConnectionControlChannelTransport.__deallocating_deinit()
{
  NWConnectionControlChannelTransport.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_261FEC34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  if (qword_28108B5A8 != -1)
  {
    swift_once();
  }

  v10 = qword_2810955B0;
  OUTLINED_FUNCTION_107();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;

  a5(v10, v10, a4, v11);
}

void sub_261FEC420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void, void, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_96();
  v25 = v24;
  v27 = v26;
  v28 = v21;
  if (v29)
  {
    v30 = v21;
LABEL_36:
    swift_willThrow();
    __src[0] = v28;
    sub_261FEDD8C(__src);
    memcpy(v53, __src, 0x93uLL);
    v52 = v28;
    v27(v53);

    memcpy(v55, v53, 0x93uLL);
    sub_261F66E60(v55, &qword_27FEFA170, &qword_262043EA0);
    OUTLINED_FUNCTION_31_0();
    return;
  }

  v31 = v23;
  v32 = v22;
  if (qword_28108B5A0 != -1)
  {
    swift_once();
  }

  sub_26200F7A8();
  if ((v33 & 1) == 0)
  {
    v38 = 0x8000000262050E90;
    v55[3] = MEMORY[0x277D837D0];
    v39 = 0xD00000000000001ALL;
LABEL_35:
    v55[0] = v39;
    v55[1] = v38;
    LOBYTE(v55[4]) = 1;
    sub_261F65C5C();
    OUTLINED_FUNCTION_72_0();
    v28 = swift_allocError();
    v50 = v49;
    *v49 = 2;
    LOBYTE(__src[0]) = 2;
    v51 = ControlChannelConnectionError.Message.format(code:)(__src);
    sub_261F65C08(v55);
    *(v50 + 8) = v51;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 0u;
    *(v50 + 7) = 0;
    goto LABEL_36;
  }

  v34 = MEMORY[0x266721A20](qword_2810955A0, *algn_2810955A8);
  v35 = v32 >> 62;
  v36 = 0;
  v37 = v28;
  switch(v32 >> 62)
  {
    case 1uLL:
      v36 = v28;
      break;
    case 2uLL:
      v36 = *(v28 + 16);
      break;
    default:
      break;
  }

  v40 = __OFADD__(v36, v34);
  v41 = v36 + v34;
  if (v40)
  {
    __break(1u);
    goto LABEL_38;
  }

  v42 = v41 + 2;
  if (__OFADD__(v41, 2))
  {
LABEL_38:
    __break(1u);
    return;
  }

  switch(v35)
  {
    case 1:
      goto LABEL_16;
    case 2:
      v37 = *(v28 + 16);
LABEL_16:
      if (v41 < v37)
      {
        goto LABEL_34;
      }

      if (v35 == 2)
      {
        v43 = *(v28 + 24);
      }

      else
      {
        v43 = v28 >> 32;
      }

      break;
    case 3:
      if (v41 < 0)
      {
        goto LABEL_34;
      }

      if (v42 > 0 || __OFSUB__(v41, v42))
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    default:
      if (v41 < 0)
      {
        goto LABEL_34;
      }

      v43 = BYTE6(v32);
      break;
  }

  if (v41 >= v42 || v43 < v42)
  {
LABEL_34:
    v38 = 0x8000000262050EB0;
    v55[3] = MEMORY[0x277D837D0];
    v39 = 0xD00000000000001CLL;
    goto LABEL_35;
  }

LABEL_25:
  v45 = sub_261F6BE04(v28, v32, v34);
  OUTLINED_FUNCTION_46();
  v46 = swift_allocObject();
  *(v46 + 16) = v27;
  *(v46 + 24) = v25;

  a21(v45, v45, v31, v46);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FEC734(void *__src, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    memcpy(v28, __src, 0x93uLL);
    if (sub_261F65308(v28) == 1)
    {
      v9 = *nullsub_1(v28);
      v10 = sub_26203A48C();
      if (qword_28108B640 != -1)
      {
        swift_once();
      }

      v11 = qword_28108B648;
      if (os_log_type_enabled(qword_28108B648, v10))
      {
        v12 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v27[0] = v23;
        *v12 = 136446466;
        swift_beginAccess();
        v13 = *(v8 + 24);
        v14 = *(v8 + 32);

        v15 = sub_261F67FE4(v13, v14, v27);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        __srca[0] = v9;
        memcpy(v26, __src, 0x93uLL);
        v16 = *nullsub_1(v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v17 = sub_26203A20C();
        v19 = sub_261F67FE4(v17, v18, v27);

        *(v12 + 14) = v19;
        _os_log_impl(&dword_261F5B000, v11, v10, "%{public}s: received error reading message: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266724180](v23, -1, -1);
        MEMORY[0x266724180](v12, -1, -1);
      }

      __srca[0] = v9;
      sub_261F65314(__srca);
      memcpy(v24, __srca, 0x92uLL);
      memcpy(v26, __dst, 0x93uLL);
      v20 = *nullsub_1(v26);
      a3(v24);

      memcpy(v27, v24, 0x92uLL);
      return sub_261F6A760(v27);
    }

    else
    {
      v21 = nullsub_1(v28);
      memmove(__srca, v21, 0x92uLL);
      sub_261FEDDA4(__srca);
      memcpy(v24, __srca, 0x92uLL);
      memcpy(v26, __src, 0x93uLL);
      v22 = nullsub_1(v26);
      sub_261FBCBCC(v22, v27);
      a3(v24);
      memcpy(v27, v24, 0x92uLL);
      sub_261F6A760(v27);
      sub_261FE6DE0(a3, a4);
    }
  }

  return result;
}

void sub_261FECA68()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_36_3();
  OUTLINED_FUNCTION_45_1(v27);
  OUTLINED_FUNCTION_7_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    OUTLINED_FUNCTION_45_1(v26);
    if (sub_261F65308(v26) == 1)
    {
      v8 = *nullsub_1(v26);
      v9 = sub_26203A48C();
      if (qword_28108B640 != -1)
      {
        swift_once();
      }

      v10 = qword_28108B648;
      if (os_log_type_enabled(qword_28108B648, v9))
      {
        OUTLINED_FUNCTION_57_1();
        v11 = swift_slowAlloc();
        v25[0] = OUTLINED_FUNCTION_39_0();
        *v11 = 136446466;
        OUTLINED_FUNCTION_7_2();
        swift_beginAccess();
        v12 = *(v7 + 16);
        v13 = *(v7 + 24);

        v14 = sub_261F67FE4(v12, v13, v25);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2080;
        __src[0] = v8;
        OUTLINED_FUNCTION_45_1(v24);
        v15 = *nullsub_1(v24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v16 = sub_26203A20C();
        v18 = sub_261F67FE4(v16, v17, v25);

        *(v11 + 14) = v18;
        _os_log_impl(&dword_261F5B000, v10, v9, "%{public}s: received error reading message: %s", v11, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_1_0();
      }

      __src[0] = v8;
      sub_261F65314(__src);
      memcpy(__dst, __src, 0x92uLL);
      memcpy(v24, v27, 0x93uLL);
      v19 = *nullsub_1(v24);
      v5(__dst);

      memcpy(v25, __dst, 0x92uLL);
      sub_261F6A760(v25);
    }

    else
    {
      v20 = nullsub_1(v26);
      memmove(__src, v20, 0x92uLL);
      sub_261FEDDA4(__src);
      memcpy(__dst, __src, 0x92uLL);
      OUTLINED_FUNCTION_45_1(v24);
      v21 = nullsub_1(v24);
      sub_261FBCBCC(v21, v25);
      v5(__dst);
      memcpy(v25, __dst, 0x92uLL);
      sub_261F6A760(v25);
      v1(v5, v3);
    }
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FECD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for RemoteXPCControlChannelTransport();
  v9 = swift_allocObject();

  return sub_261FECDB4(a1, a2, v9, a4, a5);
}

uint64_t sub_261FECDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 56) = 33619968;
  *(a3 + 32) = a1;
  *(a3 + 40) = a5;
  *(a3 + 48) = a2;
  v6 = qword_28108CE50;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_262017880();
  v7 = sub_26203ABAC();
  MEMORY[0x266722710](v7);

  *(a3 + 16) = 0x707865746F6D6572;
  *(a3 + 24) = 0xEA00000000002D63;
  return a3;
}

unint64_t sub_261FECEA8()
{
  result = qword_28108B720;
  if (!qword_28108B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B720);
  }

  return result;
}

unint64_t sub_261FECEFC()
{
  result = qword_28108B728;
  if (!qword_28108B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108B728);
  }

  return result;
}

uint64_t sub_261FECF60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_261FECF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredBonjourAdvert();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FECFF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA118, &qword_26204AE60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_261FED090()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_26200C248();
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice21ControlChannelMessageO5EventO(uint64_t a1)
{
  v1 = *(a1 + 72) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice21ControlChannelMessageO7RequestO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice04PeerC4InfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_19RemotePairingDevice21ControlChannelMessageO8ResponseO(uint64_t a1)
{
  if ((*(a1 + 121) & 7u) <= 5)
  {
    return *(a1 + 121) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_261FED128(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 146))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v2 = ((*(a1 + 144) >> 11) & 3 | (4 * ((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3))) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void sub_261FED180(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(a1 + 136) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(a1 + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(a1 + 146) = 0;
    }

    if (a2)
    {
      v4 = (-a2 >> 2) & 0x3F | (-a2 << 6);
      v5 = (-a2 & 3) << 11;
      *a1 = ((v4 << 58) | (2 * v4)) & 0xF000000000000007;
      bzero((a1 + 8), 0x88uLL);
      *(a1 + 144) = v5;
    }
  }
}

void sub_261FED230(uint64_t a1, unsigned int a2)
{
  if (a2 < 2)
  {
    v3 = *(a1 + 144) & 0xE7FF | (a2 << 11);
    *a1 &= 0xFFFFFFFFFFFFFF9uLL;
    *(a1 + 144) = v3;
  }

  else
  {
    *a1 = (a2 - 2) & 1 | (8 * ((a2 - 2) >> 1));
    bzero((a1 + 8), 0x88uLL);
    *(a1 + 144) = 4096;
  }
}

uint64_t type metadata accessor for NWConnectionControlChannelTransport()
{
  result = qword_27FEFA140;
  if (!qword_27FEFA140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261FED5AC()
{
  sub_261FEDA38();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_261FEDA38()
{
  if (!qword_27FEFA150)
  {
    type metadata accessor for DiscoveredBonjourAdvert();
    v0 = sub_26203A6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEFA150);
    }
  }
}

void sub_261FEDA9C(uint64_t a1)
{
  *a1 = 1;
  bzero((a1 + 8), 0x88uLL);
  *(a1 + 144) = 4096;
}

uint64_t sub_261FEDAD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_261FEDB0C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_261FEDB40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_261FEDBA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_261FEDD24(void *__src)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_261FEDCB4(__src);
}

uint64_t sub_261FEDDA4(uint64_t result)
{
  v1 = *(result + 144) & 0xE7FF;
  *result &= 0xFFFFFFFFFFFFFF9uLL;
  *(result + 144) = v1;
  return result;
}

uint64_t sub_261FEDDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveredBonjourAdvert();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261FEDE28(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveredBonjourAdvert();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_261FEDE84(void *__src)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_261FEDC44(__src);
}

uint64_t objectdestroy_11Tm_0(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_107();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_43_3(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;
}

uint64_t OUTLINED_FUNCTION_44_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void sub_261FEE024(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  OS_dispatch_queue.parentQueue.setter(v2);
}

void OS_dispatch_queue.parentQueue.setter(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, &unk_27FEFA178, a1, 1);
  swift_endAccess();
}

void (*OS_dispatch_queue.parentQueue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = OS_dispatch_queue.parentQueue.getter();
  return sub_261FEE108;
}

void sub_261FEE108(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    OS_dispatch_queue.parentQueue.setter(v2);
  }

  else
  {
    OS_dispatch_queue.parentQueue.setter(*a1);
  }
}

uint64_t OS_dispatch_queue.childQueue(label:qos:attributes:autoreleaseFrequency:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = sub_26203A56C();
  v7 = OUTLINED_FUNCTION_0(v37);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_74();
  v14 = v13 - v12;
  v15 = sub_26203A53C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_74();
  v23 = v22 - v21;
  v24 = sub_262039FEC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_74();
  v32 = v31 - v30;
  sub_261F6935C();
  (*(v27 + 16))(v32, a3, v24);
  (*(v18 + 16))(v23, a4, v15);
  (*(v9 + 16))(v14, a5, v37);
  v33 = v5;

  v34 = sub_26203A58C();
  OS_dispatch_queue.parentQueue.setter(v6);
  return v34;
}

id sub_261FEE390(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_26203ABCC();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_2620393EC();

  v11 = sub_261FEE4E4();
  return v11;
}

id sub_261FEE4E4()
{
  v1 = [v0 userInfo];
  v2 = sub_26203A0DC();

  v3 = sub_261FEE5E0(v2);

  v4 = sub_261FEE928(v3);

  v5 = [v0 domain];
  v6 = sub_26203A1BC();
  v8 = v7;

  v9 = [v0 code];
  v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  return sub_261FBF774(v6, v8, v9, v4);
}

uint64_t sub_261FEE5E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
  v2 = sub_26203A0FC();
  v3 = *(a1 + 64);
  v17 = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_261F681A8(*(a1 + 56) + 32 * v10, &v16);
    v15[0] = v13;
    v15[1] = v12;

    sub_261FEEBBC(&v17, v15);
    v6 &= v6 - 1;
    sub_261FCB894(v15, &qword_27FEFA190, &qword_262043EB0);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v17;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_261FCB894(v15, &qword_27FEFA190, &qword_262043EB0);

  __break(1u);
  return result;
}

uint64_t sub_261FEE784(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
  v2 = sub_26203A0FC();
  v3 = *(a1 + 64);
  v14 = v2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    sub_261F67C78(*(a1 + 48) + 40 * v10, v12);
    sub_261F681A8(*(a1 + 56) + 32 * v10, &v13);
    sub_261FEEDB8(&v14, v12);
    v6 &= v6 - 1;
    sub_261FCB894(v12, &qword_27FEFA1A8, &qword_262043EC8);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_261FCB894(v12, &qword_27FEFA1A8, &qword_262043EC8);

  __break(1u);
  return result;
}

unint64_t sub_261FEE928(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA180, &unk_26203F6F0);
    v2 = sub_26203A94C();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    sub_261F67C78(*(a1 + 48) + 40 * v11, v27);
    v28 = *(*(a1 + 56) + 8 * v11);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
    swift_dynamicCast();
    sub_261F8D184(&v23, v25);
    sub_261F8D184(v25, v26);
    sub_261F8D184(v26, &v24);
    result = sub_261FA3868(v21, v22);
    v12 = result;
    if (v13)
    {
      v14 = (v2[6] + 16 * result);
      v15 = v14[1];
      *v14 = v21;
      v14[1] = v22;

      v16 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      result = sub_261F8D184(&v24, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v21;
      v17[1] = v22;
      result = sub_261F8D184(&v24, (v2[7] + 32 * result));
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_20;
      }

      v2[2] = v20;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_261FEEBBC(uint64_t *a1, uint64_t a2)
{
  sub_261FEF274(a2, &v11, &qword_27FEFA190, &qword_262043EB0);
  *(&v9 + 1) = MEMORY[0x277D837D0];
  v8 = v11;
  v4 = sub_261FEEFD0(&v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v12);
  sub_261FEF274(a2, &v11, &qword_27FEFA190, &qword_262043EB0);
  *(&v9 + 1) = MEMORY[0x277D84F70] + 8;
  *&v8 = swift_allocObject();
  sub_261F8D184(&v12, (v8 + 16));
  sub_261FEEFD0(&v8);
  __swift_destroy_boxed_opaque_existential_0Tm(&v8);

  v14 = v4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
  if (swift_dynamicCast())
  {
    v11 = v8;
    v12 = v9;
    v13 = v10;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_261FCB894(&v8, &qword_27FEFA198, &qword_262043EB8);
    *&v11 = v4;
    swift_unknownObjectRetain();
    *&v8 = sub_26203A20C();
    *(&v8 + 1) = v5;
    sub_26203A79C();
  }

  v6 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  *&v8 = *a1;
  sub_261FA4680();
  swift_unknownObjectRelease();
  *a1 = v8;
  return sub_261F67914(&v11);
}

uint64_t sub_261FEEDB8(uint64_t *a1, uint64_t a2)
{
  sub_261FEF274(a2, &v14, &qword_27FEFA1A8, &qword_262043EC8);
  *(&v11 + 1) = MEMORY[0x277D84030];
  v4 = swift_allocObject();
  *&v10 = v4;
  v5 = v15;
  *(v4 + 16) = v14;
  *(v4 + 32) = v5;
  *(v4 + 48) = v16;
  v6 = sub_261FEEFD0(&v10);
  __swift_destroy_boxed_opaque_existential_0Tm(&v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  sub_261FEF274(a2, &v14, &qword_27FEFA1A8, &qword_262043EC8);
  *(&v11 + 1) = MEMORY[0x277D84F70] + 8;
  *&v10 = swift_allocObject();
  sub_261F8D184(v17, (v10 + 16));
  sub_261FEEFD0(&v10);
  __swift_destroy_boxed_opaque_existential_0Tm(&v10);
  sub_261F67914(&v14);
  v13 = v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
  if (swift_dynamicCast())
  {
    v14 = v10;
    v15 = v11;
    v16 = v12;
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_261FCB894(&v10, &qword_27FEFA198, &qword_262043EB8);
    *&v14 = v6;
    swift_unknownObjectRetain();
    *&v10 = sub_26203A20C();
    *(&v10 + 1) = v7;
    sub_26203A79C();
  }

  v8 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  *&v10 = *a1;
  sub_261FA4680();
  swift_unknownObjectRelease();
  *a1 = v10;
  return sub_261F67914(&v14);
}

uint64_t sub_261FEEFD0(uint64_t a1)
{
  sub_261F681A8(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1A0, &qword_262043EC0);
  if (swift_dynamicCast())
  {
    sub_261FEE784(v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
    v2 = sub_26203A0BC();
LABEL_15:
    v9 = v2;

    return v9;
  }

  sub_261F681A8(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9168, &qword_26203C998);
  if (!swift_dynamicCast())
  {
    sub_261F681A8(a1, v12);
    sub_261F9D664();
    if (swift_dynamicCast())
    {
      v9 = sub_261FEE4E4();
    }

    else
    {
      sub_261F681A8(a1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
      if (!swift_dynamicCast())
      {
        sub_261F681A8(a1, v12);
        sub_26203A20C();
        v2 = sub_26203A18C();
        goto LABEL_15;
      }

      return v10;
    }

    return v9;
  }

  v3 = v10;
  v4 = v10[2];
  if (!v4)
  {
LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA188, &qword_262043EA8);
    v2 = sub_26203A3AC();
    goto LABEL_15;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_26203A86C();
  v6 = 0;
  v7 = (v3 + 4);
  while (v6 < v3[2])
  {
    ++v6;
    sub_261F681A8(v7, v12);
    sub_261FEEFD0(v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    sub_26203A83C();
    v8 = *(v11 + 16);
    sub_26203A87C();
    sub_26203A88C();
    result = sub_26203A84C();
    v7 += 32;
    if (v4 == v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261FEF274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_261FEF2DC()
{
  sub_261FBD334();
  result = sub_26203A6BC();
  qword_27FEFA1B0 = result;
  return result;
}

uint64_t CertificateUtilities.RawTLSPublicKeyInfo.publicKeyDERData.getter()
{
  v1 = *(v0 + 8);
  sub_261F6B73C(v1, *(v0 + 16));
  return v1;
}

void static CertificateUtilities.createTLSRawPublicKey(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, sec_identity_t *a3@<X8>)
{
  v7 = static P256.Signing.PrivateKey.createKeyPair()();
  if (!v3)
  {
    v8 = v7;
    v9 = sub_261FEF89C(v7, a1, a2);
    v10 = *MEMORY[0x277CBECE8];
    v11 = SecIdentityCreate();
    if (v11 && (v12 = v11, v13 = sec_identity_create(v11), v12, v13))
    {
      v14 = SecCertificateCopyKey(v9);
      if (v14)
      {
        v15 = v14;
        v16 = SecKeyCopySubjectPublicKeyInfo();
        if (v16)
        {
          v17 = v16;
          v18 = sub_26203954C();
          v20 = v19;

          *a3 = v13;
          a3[1] = v18;
          a3[2] = v20;
        }

        else
        {
          sub_261F9BCE0();
          OUTLINED_FUNCTION_0_26();
          sub_26203AD3C();
          OUTLINED_FUNCTION_3_18();
          sub_261F9D610();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_2_18();
          sub_26203AD4C();
          swift_willThrow();

          swift_unknownObjectRelease();
        }
      }

      else
      {
        sub_261F9BCE0();
        OUTLINED_FUNCTION_0_26();
        sub_26203AD3C();
        OUTLINED_FUNCTION_3_18();
        sub_261F9D610();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_2_18();
        sub_26203AD4C();
        swift_willThrow();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_261F9BCE0();
      OUTLINED_FUNCTION_0_26();
      sub_26203AD3C();
      OUTLINED_FUNCTION_3_18();
      sub_261F9D610();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_18();
      sub_26203AD4C();
      swift_willThrow();
    }
  }
}

uint64_t static P256.Signing.PrivateKey.createKeyPair()()
{
  error[11] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA1B8, &qword_262043EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26203F720;
  v1 = *MEMORY[0x277CDC028];
  v2 = *MEMORY[0x277CDC060];
  *(inited + 32) = *MEMORY[0x277CDC028];
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CDBFE0];
  v4 = *MEMORY[0x277CDBFF0];
  *(inited + 48) = *MEMORY[0x277CDBFE0];
  *(inited + 56) = v4;
  v5 = *MEMORY[0x277CDC018];
  *(inited + 64) = *MEMORY[0x277CDC018];
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  *(inited + 72) = sub_26203A41C();
  type metadata accessor for CFString(0);
  sub_261FEFF74(&unk_28108B2E0, type metadata accessor for CFString);
  sub_26203A0FC();
  error[0] = 0;
  v11 = sub_26203A0BC();
  RandomKey = SecKeyCreateRandomKey(v11, error);

  v13 = error[0];
  if (error[0])
  {

    type metadata accessor for CFError(0);
    sub_261FEFF74(&qword_27FEFA1C8, type metadata accessor for CFError);
    swift_allocError();
    *v14 = v13;
    swift_willThrow();

LABEL_5:
    v15 = *MEMORY[0x277D85DE8];
    return RandomKey;
  }

  if (RandomKey)
  {

    goto LABEL_5;
  }

  result = sub_26203A91C();
  __break(1u);
  return result;
}

uint64_t sub_261FEF89C(__SecKey *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1D0, &qword_262043FE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26203CD30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1D8, &unk_262043FE8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26203E9E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1E0, &qword_26203E9F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_262043ED0;
  v6 = *MEMORY[0x277CDC450];
  type metadata accessor for CFString(0);
  v8 = v7;
  *(v5 + 32) = v6;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 88) = MEMORY[0x277D837D0];
  *(v5 + 56) = v7;
  *(v5 + 64) = 21333;
  *(v5 + 72) = 0xE200000000000000;
  *(v4 + 32) = v5;
  *(v3 + 32) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26203E9E0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_262043ED0;
  v12 = *MEMORY[0x277CDC458];
  *(v11 + 32) = *MEMORY[0x277CDC458];
  *(v11 + 88) = v9;
  *(v11 + 56) = v8;
  *(v11 + 64) = 0x6E4920656C707041;
  *(v11 + 72) = 0xEA00000000002E63;
  *(v10 + 32) = v11;
  *(v3 + 40) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26203E9E0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_262043ED0;
  v15 = *MEMORY[0x277CDC460];
  *(v14 + 32) = *MEMORY[0x277CDC460];
  *(v14 + 88) = v9;
  *(v14 + 56) = v8;
  *(v14 + 64) = 0xD000000000000017;
  *(v14 + 72) = 0x8000000262051090;
  *(v13 + 32) = v14;
  *(v3 + 48) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_26203E9E0;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_262043ED0;
  v18 = *MEMORY[0x277CDC448];
  *(v17 + 32) = *MEMORY[0x277CDC448];
  *(v17 + 88) = v9;
  *(v17 + 56) = v8;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  *(v16 + 32) = v17;
  *(v3 + 56) = v16;
  v19 = v6;
  v20 = v12;
  v21 = v15;
  v22 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1E8, &qword_262043FF8);
  v50 = sub_26203A3AC();

  v23 = sub_26203A41C();
  v49 = MEMORY[0x266721A00](&unk_287489288, 12);
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1F0, &qword_262044000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26203F720;
  v27 = *MEMORY[0x277CDC210];
  *(inited + 32) = *MEMORY[0x277CDC210];
  type metadata accessor for CFNumber(0);
  *(inited + 40) = v23;
  v28 = *MEMORY[0x277CDC570];
  *(inited + 64) = v29;
  *(inited + 72) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA1F8, &qword_262044008);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_26203E9E0;
  v31 = *MEMORY[0x277CDC578];
  *(v30 + 32) = *MEMORY[0x277CDC578];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9B00, &unk_26203E630);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26203E9E0;
  *(v32 + 32) = a2;
  *(v32 + 40) = a3;
  *(v30 + 40) = v32;

  v33 = v27;
  v52 = v23;
  v34 = v28;
  v35 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9990, &qword_26203F7D0);
  sub_261FEFF74(&unk_28108B2E0, type metadata accessor for CFString);
  sub_26203A0FC();
  v36 = sub_26203A0BC();

  type metadata accessor for CFDictionary(0);
  v38 = v37;
  *(inited + 80) = v36;
  v39 = *MEMORY[0x277CDC208];
  *(inited + 104) = v37;
  *(inited + 112) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA200, &qword_262044010);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_26203E9E0;
  *(v40 + 32) = 0x332E39322E352E32;
  *(v40 + 40) = 0xE900000000000037;
  *(v40 + 48) = v49;
  *(v40 + 56) = v25;
  v41 = v39;
  sub_261F6B73C(v49, v25);
  sub_26203A0FC();
  v42 = sub_26203A0BC();

  *(inited + 144) = v38;
  *(inited + 120) = v42;
  sub_26203A0FC();
  v43 = sub_26203A0BC();

  v44 = SecKeyCopyPublicKey(a1);
  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (SelfSignedCertificate)
  {

    sub_261F6BFFC(v49, v25);
  }

  else
  {
    sub_26203A48C();
    if (qword_27FEF86A0 != -1)
    {
      swift_once();
    }

    sub_26203969C();
    sub_261F9BCE0();
    sub_26203AD3C();
    sub_261F9D610();
    swift_allocError();
    sub_26203AD4C();
    swift_willThrow();

    sub_261F6BFFC(v49, v25);
  }

  return SelfSignedCertificate;
}

uint64_t sub_261FEFF74(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for CertificateUtilities(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_261FF0078(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_261F95AC0(0, v1, 0);
  v2 = v30;
  result = sub_261FFEDA8(a1);
  v5 = result;
  v7 = v6;
  v8 = 0;
  v27 = a1 + 64;
  v26 = v1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_24;
      }

      sub_261FA5688(*(a1 + 56) + 48 * v5, v28);
      sub_261F79740(v28, v29);
      sub_261FFEDE8(v28);
      v30 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_261F95AC0(v10 > 1, v11 + 1, 1);
        v2 = v30;
      }

      *(v2 + 16) = v11 + 1;
      result = sub_261F797BC(v29, v2 + 40 * v11 + 32);
      v12 = 1 << *(a1 + 32);
      if (v5 >= v12)
      {
        goto LABEL_25;
      }

      v13 = *(v27 + 8 * v9);
      if ((v13 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_27;
      }

      v14 = v13 & (-2 << (v5 & 0x3F));
      if (v14)
      {
        v12 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v9 << 6;
        v16 = v9 + 1;
        v17 = (a1 + 72 + 8 * v9);
        while (v16 < (v12 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            v20 = OUTLINED_FUNCTION_35_3();
            result = sub_261FFEE18(v20, v21, v22);
            v12 = __clz(__rbit64(v18)) + v15;
            goto LABEL_18;
          }
        }

        v23 = OUTLINED_FUNCTION_35_3();
        result = sub_261FFEE18(v23, v24, v25);
      }

LABEL_18:
      if (++v8 == v26)
      {
        return v2;
      }

      v7 = *(a1 + 36);
      v5 = v12;
      if (v12 < 0)
      {
        break;
      }
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
  return result;
}

void (*sub_261FF02CC(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_261FFAECC(v6, a2, a3);
  return sub_261FFF850;
}

void (*sub_261FF0340(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_261FFAF64(v6, a2, a3);
  return sub_261FF03B4;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_261FF03B8()
{

  sub_261FFA278(v0);
}

uint64_t sub_261FF03FC()
{
  v1 = *v0;
  if (*(*v0 + 16))
  {
    v2 = v1[4];
    v3 = v1[5];
    v4 = v1[6];
    v5 = v1[7];

    sub_261FFB5BC(0, 1);
    return OUTLINED_FUNCTION_108();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261FF0460@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA360, &qword_2620447B8);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v10 - v6;
  v8 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_261FD46AC(*v1);
  v9 = type metadata accessor for TunnelMessage();
  result = __swift_getEnumTagSinglePayload(v7, 1, v9);
  if (result != 1)
  {
    result = sub_261FFEEEC(v7, a1);
    if (*(v8 + 16))
    {
      return sub_261FFB890(0, 1);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_261FF0554()
{
  sub_262039FAC();
  OUTLINED_FUNCTION_104_0();
  sub_261F6E4A4(v0, v1);
  v2 = OUTLINED_FUNCTION_42_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_155_0();
  sub_261F67F70(v4, v5, v6);
  return sub_26203A75C();
}

uint64_t sub_261FF0618()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_28108B620 = result;
  return result;
}

uint64_t sub_261FF0694()
{
  type metadata accessor for AtomicCounter();
  swift_allocObject();
  result = AtomicCounter.init()();
  qword_27FEFA208 = result;
  return result;
}

uint64_t sub_261FF06D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626174617267696DLL && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_26203AC0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6150656C676E6973 && a2 == 0xEA00000000006874)
  {

    return 1;
  }

  else
  {
    v7 = sub_26203AC0C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_261FF07A8(char a1)
{
  if (a1)
  {
    return 0x6150656C676E6973;
  }

  else
  {
    return 0x626174617267696DLL;
  }
}

uint64_t sub_261FF07EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261FF06D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261FF0814(uint64_t a1)
{
  v2 = sub_261FF0C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FF0850(uint64_t a1)
{
  v2 = sub_261FF0C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FF088C(uint64_t a1)
{
  v2 = sub_261FF0CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FF08C8(uint64_t a1)
{
  v2 = sub_261FF0CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261FF0904(uint64_t a1)
{
  v2 = sub_261FF0C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261FF0940(uint64_t a1)
{
  v2 = sub_261FF0C84();

  return MEMORY[0x2821FE720](a1, v2);
}

void TunnelConnectionType.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v39 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA210, &qword_262044060);
  v5 = OUTLINED_FUNCTION_0(v4);
  v37 = v6;
  v38 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v36 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA218, &qword_262044068);
  v12 = OUTLINED_FUNCTION_0(v11);
  v34 = v13;
  v35 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA220, &qword_262044070);
  OUTLINED_FUNCTION_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_127();
  v33 = *v0;
  v25 = *(v0 + 8);
  v26 = v3[4];
  __swift_project_boxed_opaque_existential_0Tm(v3, v3[3]);
  sub_261FF0C30();
  OUTLINED_FUNCTION_258();
  sub_26203AE5C();
  if (v25 == 1)
  {
    sub_261FF0CD8();
    sub_26203AA9C();
    (*(v34 + 8))(v18, v35);
    v27 = *(v21 + 8);
  }

  else
  {
    sub_261FF0C84();
    sub_26203AA9C();
    v40 = v33;
    sub_261FCF9F4();
    sub_26203AB3C();
    OUTLINED_FUNCTION_207();
    v30 = OUTLINED_FUNCTION_59_0();
    v31(v30);
    v32 = *(v21 + 8);
  }

  v28 = OUTLINED_FUNCTION_100();
  v29(v28);
  OUTLINED_FUNCTION_38_0();
}

unint64_t sub_261FF0C30()
{
  result = qword_27FEFA228;
  if (!qword_27FEFA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA228);
  }

  return result;
}

unint64_t sub_261FF0C84()
{
  result = qword_27FEFA230;
  if (!qword_27FEFA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA230);
  }

  return result;
}

unint64_t sub_261FF0CD8()
{
  result = qword_27FEFA240;
  if (!qword_27FEFA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA240);
  }

  return result;
}

void TunnelConnectionType.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v51 = v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA248, &qword_262044078);
  OUTLINED_FUNCTION_0(v54);
  v52 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA250, &qword_262044080);
  OUTLINED_FUNCTION_0(v11);
  v50 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_127();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA258, &unk_262044088);
  OUTLINED_FUNCTION_0(v16);
  v53 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_0();
  v22 = v5[3];
  v21 = v5[4];
  v23 = OUTLINED_FUNCTION_123();
  __swift_project_boxed_opaque_existential_0Tm(v23, v24);
  sub_261FF0C30();
  sub_26203AE3C();
  if (v0)
  {
    goto LABEL_8;
  }

  v49 = v2;
  v55 = v5;
  v25 = sub_26203AA7C();
  sub_261F99084(v25, 0);
  if (v27 == v28 >> 1)
  {
LABEL_7:
    v35 = sub_26203A81C();
    OUTLINED_FUNCTION_72_0();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA260, &qword_26203CDB0) + 48);
    *v37 = &type metadata for TunnelConnectionType;
    sub_26203A98C();
    sub_26203A80C();
    v39 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_71(v35);
    (*(v40 + 104))(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_207();
    v41(v1, v16);
    v5 = v55;
LABEL_8:
    v42 = v5;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_38_0();
    return;
  }

  if (v27 < (v28 >> 1))
  {
    v29 = *(v26 + v27);
    sub_261F99070(v27 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      if (v29)
      {
        sub_261FF0C84();
        sub_26203A97C();
        v34 = v51;
        sub_261FCF150();
        sub_26203AA2C();
        swift_unknownObjectRelease();
        (*(v52 + 8))(v49, v54);
        v45 = *(v53 + 8);
        v46 = OUTLINED_FUNCTION_209();
        v47(v46);
        v48 = v56;
      }

      else
      {
        sub_261FF0CD8();
        sub_26203A97C();
        v34 = v51;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v3, v11);
        OUTLINED_FUNCTION_207();
        v43 = OUTLINED_FUNCTION_45_0();
        v44(v43);
        v48 = 0;
      }

      *v34 = v48;
      *(v34 + 8) = v29 ^ 1;
      v42 = v55;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

RemotePairingDevice::TunnelConnectionPriority sub_261FF12AC@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = TunnelConnectionPriority.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261FF12EC@<X0>(uint64_t *a1@<X8>)
{
  result = TunnelConnectionPriority.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_261FF13EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_4();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_60_2();
  v8 = *(v7 + 88);
  v9 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_0();
  sub_261F79740(a1, v2);
  *(v2 + 40) = a2;
  OUTLINED_FUNCTION_71_2();
  swift_storeEnumTagMultiPayload();

  sub_261F6D760();
  v15 = *(v11 + 8);
  v16 = OUTLINED_FUNCTION_71_2();
  return v17(v16);
}

void sub_261FF14F8()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_23_4();
  v4 = *(v3 + 80);
  v6 = *(v5 + 88);
  v7 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14();
  v13 = *v2;
  v14 = OUTLINED_FUNCTION_94();
  sub_261F79740(v14, v15);
  *(v0 + 40) = v13;
  OUTLINED_FUNCTION_122();
  swift_storeEnumTagMultiPayload();
  sub_261F6D760();
  v16 = *(v9 + 8);
  v17 = OUTLINED_FUNCTION_122();
  v18(v17);
  OUTLINED_FUNCTION_22_2();
}

void sub_261FF15EC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_23_4();
  v4 = v3;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_110_0();
  v7 = sub_26203A6DC();
  OUTLINED_FUNCTION_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_0();
  sub_261F7A074(v0);
  v13 = OUTLINED_FUNCTION_211();
  if (__swift_getEnumTagSinglePayload(v13, v14, v6) == 1)
  {
    v15 = *(v9 + 8);
    v16 = OUTLINED_FUNCTION_39_1();
    v17(v16);
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
  }

  else
  {
    *(v2 + 24) = v6;
    *(v2 + 32) = *(v4 + 88);
    __swift_allocate_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_71(v6);
    (*(v18 + 32))();
  }

  OUTLINED_FUNCTION_22_2();
}

uint64_t sub_261FF1734(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = sub_26203A6DC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1);
  v12 = *a2;
  return sub_261FF1804(v10);
}

uint64_t sub_261FF1804(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_96_0();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_96_0();
  v7 = *(v6 + 80);
  v8 = sub_26203A6DC();
  OUTLINED_FUNCTION_6_1(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_261FF18A4()
{
  OUTLINED_FUNCTION_31_5();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF18FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_261F674BC(a1, &v9 - v6, &qword_27FEFA270, &qword_262041910);
  v7 = *a2;
  return sub_261FF1A04();
}

uint64_t sub_261FF19A8()
{
  OUTLINED_FUNCTION_83_1();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_79();
  v2 = OUTLINED_FUNCTION_115_0();
  return sub_261F674BC(v2, v3, v4, v5);
}

uint64_t sub_261FF1A04()
{
  OUTLINED_FUNCTION_31_5();
  v3 = *(v2 + 112);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(v0, v1 + v3, &qword_27FEFA270, &qword_262041910);
  return swift_endAccess();
}

uint64_t sub_261FF1A74()
{
  OUTLINED_FUNCTION_31_5();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF1ACC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_261FF1B38();
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t sub_261FF1B38()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_49_2(*(v1 + 120));
  OUTLINED_FUNCTION_146();
  return *v0 | (*(v0 + 2) << 16);
}

uint64_t sub_261FF1B80(int a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_189(*(v3 + 120));
  OUTLINED_FUNCTION_148();
  result = swift_beginAccess();
  *v1 = a1;
  *(v1 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t sub_261FF1BD0()
{
  OUTLINED_FUNCTION_31_5();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

void sub_261FF1C28()
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_189(*(v0 + 128));
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_268();
}

uint64_t sub_261FF1C68(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_49_2(*(v4 + 128));
  OUTLINED_FUNCTION_148();
  result = swift_beginAccess();
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_261FF1CC0()
{
  OUTLINED_FUNCTION_31_5();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF1D18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_261FF1D58();
}

uint64_t sub_261FF1D58()
{
  OUTLINED_FUNCTION_2_8();
  v2 = (v0 + *(v1 + 136));
  v3 = v2[1];
  *v2 = v4;
  v2[1] = v5;
}

uint64_t sub_261FF1D8C(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_261F7C884();
  a1[1] = v3;
  return OUTLINED_FUNCTION_19_5();
}

uint64_t sub_261FF1DD0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    OUTLINED_FUNCTION_98_0();
    sub_261FF1D58();
  }

  else
  {
    OUTLINED_FUNCTION_98_0();
    return sub_261FF1D58();
  }
}

void *sub_261FF1E3C@<X0>(uint64_t *a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  result = a2(&v7);
  v6 = v8;
  *a3 = v7;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_261FF1E84(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v6 = *a2;
  v8 = *a1;
  v9 = v5;
  return a5(&v8);
}

void sub_261FF1EC8()
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_189(*(v0 + 144));
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_268();
}

uint64_t sub_261FF1F08(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_49_2(*(v4 + 144));
  OUTLINED_FUNCTION_148();
  result = swift_beginAccess();
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_261FF1F60()
{
  OUTLINED_FUNCTION_31_5();
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF1FB8()
{
  OUTLINED_FUNCTION_31_5();
  v3 = *(v2 + 152);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(v0, v1 + v3, &qword_27FEFA288, &qword_262044098);
  return swift_endAccess();
}

void sub_261FF2028()
{
  OUTLINED_FUNCTION_2_8();
  v2 = (v0 + *(v1 + 160));
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *v4 = v3;
  *(v4 + 8) = v2;
}

void sub_261FF2060(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  OUTLINED_FUNCTION_2_8();
  v5 = v1 + *(v4 + 160);
  *v5 = v6;
  *(v5 + 8) = v7;
}

uint64_t sub_261FF2098()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_79();
  v3 = *(v0 + v2);
}

uint64_t sub_261FF20DC()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *(v1 + 176);
  OUTLINED_FUNCTION_79();
  v3 = *(v0 + v2);
}

uint64_t sub_261FF2120()
{
  OUTLINED_FUNCTION_31_5();
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  return OUTLINED_FUNCTION_183_0();
}

uint64_t sub_261FF2178()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *(v1 + 184);
  OUTLINED_FUNCTION_79();
  v3 = *(v0 + v2);
}

uint64_t sub_261FF21BC()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *(v1 + 192);
  OUTLINED_FUNCTION_79();
  v3 = *(v0 + v2);
}

uint64_t sub_261FF2200(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_96_0();
  v5 = *(v4 + 208);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_96_0();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_96_0();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for TunnelEndpoint.State();
  OUTLINED_FUNCTION_6_1(v10);
  (*(v11 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_261FF22B0()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_49_2(*(v1 + 216));
  OUTLINED_FUNCTION_146();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
}

uint64_t sub_261FF2300()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_49_2(*(v1 + 224));
  OUTLINED_FUNCTION_146();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
}

uint64_t sub_261FF2350()
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_49_2(*(v1 + 232));
  OUTLINED_FUNCTION_146();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
}

uint64_t sub_261FF23A0()
{
  OUTLINED_FUNCTION_83_1();
  v1 = *(v0 + 240);
  OUTLINED_FUNCTION_79();
  v2 = OUTLINED_FUNCTION_115_0();
  return sub_261F674BC(v2, v3, v4, v5);
}

uint64_t sub_261FF23FC()
{
  OUTLINED_FUNCTION_31_5();
  v3 = *(v2 + 240);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(v0, v1 + v3, &qword_27FEFA2A0, &qword_2620440B0);
  return swift_endAccess();
}

uint64_t sub_261FF246C()
{
  OUTLINED_FUNCTION_2_8();
  v2 = (v0 + *(v1 + 248));
  v3 = *v2;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_47();
  sub_261F7D45C(v5);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_261FF24D0()
{
  OUTLINED_FUNCTION_2_8();
  v2 = (v0 + *(v1 + 256));
  v3 = *v2;
  v4 = v2[1];
  v5 = OUTLINED_FUNCTION_47();
  sub_261F7D45C(v5);
  return OUTLINED_FUNCTION_47();
}

uint64_t sub_261FF2534()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *(v0 + *(v1 + 264));
  return swift_unknownObjectRetain();
}

uint64_t sub_261FF255C()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *(v1 + 264);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
  return swift_unknownObjectRelease();
}

uint64_t sub_261FF258C()
{
  OUTLINED_FUNCTION_2_8();
  v1 = *(v0 + 272);
  return OUTLINED_FUNCTION_106_0(v2);
}

uint64_t sub_261FF25B0()
{
  OUTLINED_FUNCTION_2_8();
  v2 = *(v0 + *(v1 + 288));
}

uint64_t sub_261FF25D8()
{
  OUTLINED_FUNCTION_2_8();
  v1 = *(v0 + 288);
  return OUTLINED_FUNCTION_106_0(v2);
}

uint64_t TunnelEndpoint.__allocating_init(connection:workQueue:)()
{
  v0 = OUTLINED_FUNCTION_233();
  v1 = OUTLINED_FUNCTION_98_0();
  TunnelEndpoint.init(connection:workQueue:)(v1, v2);
  return v0;
}

uint64_t TunnelEndpoint.init(connection:workQueue:)(uint64_t a1, void *a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_23_4();
  v83 = v4;
  v6 = *(v5 + 104);
  v7 = *(v5 + 80);
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  OUTLINED_FUNCTION_2_8();
  v12 = *(v11 + 112);
  sub_262039ACC();
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_40_4();
  v18 = v3 + *(v17 + 120);
  *v18 = 0;
  *(v18 + 2) = 1;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_15_7(*(v19 + 128));
  OUTLINED_FUNCTION_27_5(*(v20 + 136));
  OUTLINED_FUNCTION_15_7(*(v21 + 144));
  v23 = v3 + *(v22 + 152);
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  OUTLINED_FUNCTION_40_4();
  v25 = v3 + *(v24 + 160);
  *v25 = 0;
  *(v25 + 8) = 1;
  OUTLINED_FUNCTION_40_4();
  v27 = *(v26 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_11_9();
  sub_261F67F70(v28, &qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_175_0();
  *(v3 + v27) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v30 = *(v29 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
  OUTLINED_FUNCTION_175_0();
  *(v3 + v30) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v32 = *(v31 + 184);
  OUTLINED_FUNCTION_175_0();
  *(v3 + v32) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v34 = *(v33 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  OUTLINED_FUNCTION_175_0();
  *(v3 + v34) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v36 = *(v35 + 216);
  if (qword_28108B3C0 != -1)
  {
    OUTLINED_FUNCTION_34_4();
  }

  v37 = &qword_28108B3C8;
  OUTLINED_FUNCTION_146();
  v38 = qword_28108B3C8;
  v39 = unk_28108B3D0;
  v40 = byte_28108B3D8;
  v41 = qword_28108B3E0;

  v42 = sub_261F83F58(v38, v39, v40, v41);

  if (v42 < 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v43 = (v3 + v36);
  v44 = OUTLINED_FUNCTION_84();
  *v43 = sub_261FFADB0(v44, v45, v42);
  v43[1] = 0;
  v43[2] = v42;
  OUTLINED_FUNCTION_40_4();
  v47 = *(v46 + 224);
  v41 = qword_28108B3C8;
  v48 = unk_28108B3D0;
  v49 = byte_28108B3D8;
  v50 = qword_28108B3E0;

  v51 = sub_261F83F58(v41, v48, v49, v50);

  if (v51 < 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v52 = (v3 + v47);
  v53 = OUTLINED_FUNCTION_84();
  *v52 = sub_261FFADB0(v53, v54, v51);
  v52[1] = 0;
  v52[2] = v51;
  OUTLINED_FUNCTION_40_4();
  v56 = *(v55 + 232);
  v41 = qword_28108B3C8;
  v57 = unk_28108B3D0;
  v58 = byte_28108B3D8;
  v59 = qword_28108B3E0;

  v37 = sub_261F83F58(v41, v57, v58, v59);

  if (v37 < 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v60 = (v3 + v56);
  v61 = OUTLINED_FUNCTION_84();
  *v60 = sub_261FFADB0(v61, v62, v37);
  v60[1] = 0;
  v60[2] = v37;
  OUTLINED_FUNCTION_40_4();
  v64 = *(v63 + 240);
  type metadata accessor for TunnelInterfaceParameters();
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_27_5(*(v69 + 248));
  OUTLINED_FUNCTION_27_5(*(v70 + 256));
  *(v3 + *(v71 + 264)) = 0;
  OUTLINED_FUNCTION_40_4();
  *(v3 + *(v72 + 272)) = 0;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_15_7(*(v73 + 280));
  *(v3 + *(v74 + 288)) = 0;
  v37 = a1;
  sub_261F79740(a1, &v86);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(&v86, v23, &qword_27FEFA288, &qword_262044098);
  swift_endAccess();
  *v25 = 0;
  *(v25 + 8) = 0;
  OUTLINED_FUNCTION_40_4();
  *(v3 + *(v75 + 200)) = a2;
  OUTLINED_FUNCTION_40_4();
  v77 = *(v76 + 208);
  v78 = *(v83 + 88);
  OUTLINED_FUNCTION_210();
  type metadata accessor for TunnelEndpoint.State();
  swift_storeEnumTagMultiPayload();
  v86 = 0;
  v87 = 0xE000000000000000;
  v41 = a2;
  sub_26203A7CC();

  v86 = 0x6E656C656E6E7574;
  v87 = 0xEF2D746E696F7064;
  if (qword_27FEF86B0 != -1)
  {
LABEL_11:
    swift_once();
  }

  sub_262017880();
  v79 = sub_26203ABAC();
  MEMORY[0x266722710](v79);

  v80 = v86;
  v81 = v87;
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  *(v3 + 16) = v80;
  *(v3 + 24) = v81;
  return v3;
}

uint64_t TunnelEndpoint.__allocating_init(id:connection:workQueue:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  OUTLINED_FUNCTION_233();
  v8 = OUTLINED_FUNCTION_67_2();
  TunnelEndpoint.init(id:connection:workQueue:)(v8, a2, a3, a4);
  return v4;
}

uint64_t TunnelEndpoint.init(id:connection:workQueue:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v92 = *v4;
  v5 = *(*v4 + 104);
  v6 = *(*v4 + 80);
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_2_8();
  v11 = *(v10 + 112);
  sub_262039ACC();
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_2_8();
  v17 = v4 + *(v16 + 120);
  *v17 = 0;
  v17[2] = 1;
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_78_1(*(v18 + 128));
  v20 = (v4 + *(v19 + 136));
  *v20 = 0;
  v20[1] = 0;
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_78_1(*(v21 + 144));
  v23 = v4 + *(v22 + 152);
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  OUTLINED_FUNCTION_2_8();
  v25 = v4 + *(v24 + 160);
  *v25 = 0;
  v25[8] = 1;
  OUTLINED_FUNCTION_2_8();
  v27 = *(v26 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_11_9();
  sub_261F67F70(v28, &qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_129_0();
  *(v4 + v27) = sub_26203A0FC();
  OUTLINED_FUNCTION_2_8();
  v30 = *(v29 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
  OUTLINED_FUNCTION_129_0();
  *(v4 + v30) = sub_26203A0FC();
  OUTLINED_FUNCTION_2_8();
  v32 = *(v31 + 184);
  OUTLINED_FUNCTION_129_0();
  *(v4 + v32) = sub_26203A0FC();
  OUTLINED_FUNCTION_2_8();
  v34 = *(v33 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  OUTLINED_FUNCTION_129_0();
  *(v4 + v34) = sub_26203A0FC();
  OUTLINED_FUNCTION_2_8();
  v36 = *(v35 + 216);
  if (qword_28108B3C0 != -1)
  {
    OUTLINED_FUNCTION_34_4();
  }

  OUTLINED_FUNCTION_146();
  v37 = byte_28108B3D8;
  v38 = qword_28108B3E0;

  v39 = OUTLINED_FUNCTION_39_1();
  v41 = sub_261F83F58(v39, v40, v37, v38);

  if (v41 < 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v43 = (v4 + v36);
  v44 = OUTLINED_FUNCTION_84();
  *v43 = sub_261FFADB0(v44, v45, v41);
  v43[1] = 0;
  v43[2] = v41;
  OUTLINED_FUNCTION_2_8();
  v47 = *(v46 + 224);
  v48 = byte_28108B3D8;
  v49 = qword_28108B3E0;

  v50 = OUTLINED_FUNCTION_39_1();
  v52 = sub_261F83F58(v50, v51, v48, v49);

  if (v52 < 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v53 = (v4 + v47);
  v54 = OUTLINED_FUNCTION_84();
  *v53 = sub_261FFADB0(v54, v55, v52);
  v53[1] = 0;
  v53[2] = v52;
  OUTLINED_FUNCTION_2_8();
  v57 = *(v56 + 232);
  v58 = unk_28108B3D0;
  v59 = byte_28108B3D8;
  v60 = qword_28108B3E0;

  v61 = OUTLINED_FUNCTION_39_1();
  v63 = sub_261F83F58(v61, v62, v59, v60);

  if (v63 >= 1)
  {
    v64 = (v4 + v57);
    v65 = OUTLINED_FUNCTION_84();
    *v64 = sub_261FFADB0(v65, v66, v63);
    v64[1] = 0;
    v64[2] = v63;
    OUTLINED_FUNCTION_2_8();
    v68 = *(v67 + 240);
    type metadata accessor for TunnelInterfaceParameters();
    OUTLINED_FUNCTION_108_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
    OUTLINED_FUNCTION_2_8();
    v74 = (v4 + *(v73 + 248));
    *v74 = 0;
    v74[1] = 0;
    OUTLINED_FUNCTION_2_8();
    v76 = (v4 + *(v75 + 256));
    *v76 = 0;
    v76[1] = 0;
    OUTLINED_FUNCTION_2_8();
    *(v4 + *(v77 + 264)) = 0;
    OUTLINED_FUNCTION_2_8();
    *(v4 + *(v78 + 272)) = 0;
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_78_1(*(v79 + 280));
    *(v4 + *(v80 + 288)) = 0;
    sub_261F79740(a3, aBlock);
    OUTLINED_FUNCTION_36_1();
    swift_beginAccess();
    sub_261FB9B04(aBlock, v23, &qword_27FEFA288, &qword_262044098);
    swift_endAccess();
    *v25 = 0;
    v25[8] = 0;
    OUTLINED_FUNCTION_2_8();
    *(v4 + *(v81 + 200)) = a4;
    OUTLINED_FUNCTION_2_8();
    v83 = *(v82 + 208);
    v84 = *(v92 + 88);
    OUTLINED_FUNCTION_155_0();
    type metadata accessor for TunnelEndpoint.State();
    swift_storeEnumTagMultiPayload();
    v4[2] = a1;
    v4[3] = a2;
    OUTLINED_FUNCTION_63();
    v85 = swift_allocObject();
    OUTLINED_FUNCTION_262(v85);
    swift_weakInit();
    OUTLINED_FUNCTION_107();
    v86 = swift_allocObject();
    v86[2] = v6;
    v86[3] = v84;
    v86[4] = v58;
    aBlock[4] = sub_261FFCAE4;
    aBlock[5] = v86;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261FF325C;
    aBlock[3] = &block_descriptor_10;
    v87 = _Block_copy(aBlock);
    v88 = a4;

    OUTLINED_FUNCTION_72();
    v89 = os_state_add_handler();
    _Block_release(v87);

    __swift_destroy_boxed_opaque_existential_0Tm(a3);
    OUTLINED_FUNCTION_2_8();
    v91 = v4 + *(v90 + 280);
    *v91 = v89;
    v91[8] = 0;
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_261FF325C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

void TunnelEndpoint.__allocating_init(id:connectionObject:workQueue:priority:preReadMessages:zeroConnectionCancellationPolicy:)()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_267();
  TunnelEndpoint.init(id:connectionObject:workQueue:priority:preReadMessages:zeroConnectionCancellationPolicy:)();
  OUTLINED_FUNCTION_22_2();
}

void TunnelEndpoint.init(id:connectionObject:workQueue:priority:preReadMessages:zeroConnectionCancellationPolicy:)()
{
  OUTLINED_FUNCTION_96();
  v1 = v0;
  v124 = v3;
  v125 = v2;
  v119 = v4;
  v120 = v5;
  v116 = *v6;
  v117 = v7;
  v113 = *(v6 + 8);
  v122 = *v8;
  v121 = *(v8 + 8);
  v118 = *v0;
  v9 = *(*v0 + 104);
  v10 = *(*v0 + 80);
  OUTLINED_FUNCTION_108_0();
  v123 = v11;
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_2_8();
  v16 = *(v15 + 112);
  sub_262039ACC();
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_40_4();
  v22 = v1 + *(v21 + 120);
  *v22 = 0;
  *(v22 + 2) = 1;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_15_7(*(v23 + 128));
  OUTLINED_FUNCTION_27_5(*(v24 + 136));
  OUTLINED_FUNCTION_15_7(*(v25 + 144));
  v27 = v1 + *(v26 + 152);
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0;
  OUTLINED_FUNCTION_40_4();
  v29 = v1 + *(v28 + 160);
  *v29 = 0;
  v112 = v29;
  *(v29 + 8) = 1;
  OUTLINED_FUNCTION_40_4();
  v31 = *(v30 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_11_9();
  sub_261F67F70(v32, &qword_27FEF98B0, &unk_26203F690);
  OUTLINED_FUNCTION_162_0();
  v114 = v31;
  *(v1 + v31) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v34 = *(v33 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
  OUTLINED_FUNCTION_162_0();
  v115 = v34;
  *(v1 + v34) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v36 = *(v35 + 184);
  OUTLINED_FUNCTION_162_0();
  *(v1 + v36) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v38 = *(v37 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  OUTLINED_FUNCTION_162_0();
  *(v1 + v38) = sub_26203A0FC();
  OUTLINED_FUNCTION_40_4();
  v40 = *(v39 + 216);
  if (qword_28108B3C0 != -1)
  {
    OUTLINED_FUNCTION_34_4();
  }

  OUTLINED_FUNCTION_146();
  v42 = qword_28108B3C8;
  v41 = unk_28108B3D0;
  v43 = byte_28108B3D8;
  v44 = qword_28108B3E0;

  v45 = sub_261F83F58(v42, v41, v43, v44);

  if (v45 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v46 = (v1 + v40);
  v47 = OUTLINED_FUNCTION_84();
  *v46 = sub_261FFADB0(v47, v48, v45);
  v46[1] = 0;
  v46[2] = v45;
  OUTLINED_FUNCTION_40_4();
  v50 = *(v49 + 224);
  v51 = byte_28108B3D8;
  v52 = qword_28108B3E0;

  v53 = OUTLINED_FUNCTION_42_3();
  v55 = sub_261F83F58(v53, v54, v51, v52);

  if (v55 < 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v56 = (v1 + v50);
  v57 = OUTLINED_FUNCTION_84();
  *v56 = sub_261FFADB0(v57, v58, v55);
  v56[1] = 0;
  v56[2] = v55;
  OUTLINED_FUNCTION_40_4();
  v60 = *(v59 + 232);
  v61 = byte_28108B3D8;
  v62 = qword_28108B3E0;

  v63 = OUTLINED_FUNCTION_42_3();
  v65 = sub_261F83F58(v63, v64, v61, v62);

  if (v65 < 1)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v66 = (v1 + v60);
  v67 = OUTLINED_FUNCTION_84();
  *v66 = sub_261FFADB0(v67, v68, v65);
  v66[1] = 0;
  v66[2] = v65;
  OUTLINED_FUNCTION_40_4();
  v70 = *(v69 + 240);
  type metadata accessor for TunnelInterfaceParameters();
  OUTLINED_FUNCTION_108_0();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_27_5(*(v75 + 248));
  OUTLINED_FUNCTION_27_5(*(v76 + 256));
  *(v1 + *(v77 + 264)) = 0;
  OUTLINED_FUNCTION_40_4();
  *(v1 + *(v78 + 272)) = 0;
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_15_7(*(v79 + 280));
  *(v1 + *(v80 + 288)) = 0;
  sub_261F79740(v125, aBlock);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  sub_261FB9B04(aBlock, v27, &qword_27FEFA288, &qword_262044098);
  swift_endAccess();
  *v112 = v116;
  *(v112 + 8) = v113;
  if (!v113)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA298, &qword_2620440A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26203E9E0;
    v82 = v125[3];
    v83 = v125[4];
    v84 = OUTLINED_FUNCTION_11_0();
    __swift_project_boxed_opaque_existential_0Tm(v84, v85);
    OUTLINED_FUNCTION_149_0();
    v86 = OUTLINED_FUNCTION_67_2();
    v87(v86, v83);
    sub_261F79740(v125, inited + 48);
    *(inited + 88) = v116;
  }

  v88 = sub_26203A0FC();
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  v89 = *(v1 + v114);
  *(v1 + v114) = v88;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA290, &qword_2620440A0);
  v90 = swift_initStackObject();
  *(v90 + 16) = xmmword_26203E9E0;
  v91 = v125[3];
  v92 = v125[4];
  v93 = OUTLINED_FUNCTION_11_0();
  __swift_project_boxed_opaque_existential_0Tm(v93, v94);
  OUTLINED_FUNCTION_149_0();
  v95 = OUTLINED_FUNCTION_67_2();
  v96(v95, v92);
  *(v90 + 48) = v117;
  v97 = sub_26203A0FC();
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  v98 = *(v1 + v115);
  *(v1 + v115) = v97;

  OUTLINED_FUNCTION_40_4();
  *(v1 + *(v99 + 200)) = v124;
  OUTLINED_FUNCTION_40_4();
  v101 = *(v100 + 208);
  v102 = *(v118 + 88);
  type metadata accessor for TunnelEndpoint.State();
  swift_storeEnumTagMultiPayload();
  v1[2] = v119;
  v1[3] = v120;
  OUTLINED_FUNCTION_40_4();
  v104 = v1 + *(v103 + 144);
  OUTLINED_FUNCTION_148();
  swift_beginAccess();
  *v104 = v122;
  *(v104 + 8) = v121;
  OUTLINED_FUNCTION_63();
  v105 = swift_allocObject();
  OUTLINED_FUNCTION_136_0(v105);
  swift_weakInit();
  OUTLINED_FUNCTION_107();
  v106 = swift_allocObject();
  v106[2] = v123;
  v106[3] = v102;
  v106[4] = v104;
  aBlock[4] = sub_261FFF820;
  v127 = v106;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261FF325C;
  aBlock[3] = &block_descriptor_10;
  _Block_copy(aBlock);
  v107 = v127;
  v108 = v124;

  os_state_add_handler();
  v109 = OUTLINED_FUNCTION_70();
  _Block_release(v109);

  OUTLINED_FUNCTION_40_4();
  v111 = v1 + *(v110 + 280);
  *v111 = v107;
  *(v111 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0Tm(v125);
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FF3ABC()
{
  OUTLINED_FUNCTION_79();
  if (swift_weakLoadStrong())
  {
    sub_261FFA6C4();
  }

  return 0;
}

uint64_t TunnelEndpoint.deinit()
{
  OUTLINED_FUNCTION_23_4();
  v2 = v1;
  v4 = (v0 + *(v3 + 280));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    os_state_remove_handler();
  }

  v6 = *(v0 + 24);

  OUTLINED_FUNCTION_2_8();
  v8 = *(v7 + 104);
  v9 = *(v2 + 80);
  OUTLINED_FUNCTION_110_0();
  v10 = sub_26203A6DC();
  OUTLINED_FUNCTION_6_1(v10);
  (*(v11 + 8))(v0 + v8);
  OUTLINED_FUNCTION_2_8();
  sub_261F66E60(v0 + *(v12 + 112), &qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_2_8();
  v14 = *(v0 + *(v13 + 136) + 8);

  OUTLINED_FUNCTION_2_8();
  sub_261F66E60(v0 + *(v15 + 152), &qword_27FEFA288, &qword_262044098);
  OUTLINED_FUNCTION_2_8();
  v17 = *(v0 + *(v16 + 168));

  OUTLINED_FUNCTION_2_8();
  v19 = *(v0 + *(v18 + 176));

  OUTLINED_FUNCTION_2_8();
  v21 = *(v0 + *(v20 + 184));

  OUTLINED_FUNCTION_2_8();
  v23 = *(v0 + *(v22 + 192));

  OUTLINED_FUNCTION_2_8();

  OUTLINED_FUNCTION_2_8();
  v26 = *(v25 + 208);
  v27 = *(v2 + 88);
  OUTLINED_FUNCTION_110_0();
  v28 = type metadata accessor for TunnelEndpoint.State();
  OUTLINED_FUNCTION_6_1(v28);
  (*(v29 + 8))(v0 + v26);
  OUTLINED_FUNCTION_2_8();
  v31 = *(v0 + *(v30 + 216));

  OUTLINED_FUNCTION_2_8();
  v33 = *(v0 + *(v32 + 224));

  OUTLINED_FUNCTION_2_8();
  v35 = *(v0 + *(v34 + 232));

  OUTLINED_FUNCTION_2_8();
  sub_261F66E60(v0 + *(v36 + 240), &qword_27FEFA2A0, &qword_2620440B0);
  OUTLINED_FUNCTION_2_8();
  v38 = (v0 + *(v37 + 248));
  v39 = v38[1];
  sub_261F665E4(*v38);
  OUTLINED_FUNCTION_2_8();
  v41 = (v0 + *(v40 + 256));
  v42 = v41[1];
  sub_261F665E4(*v41);
  OUTLINED_FUNCTION_2_8();
  v44 = *(v0 + *(v43 + 264));
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_8();
  v46 = *(v0 + *(v45 + 288));

  OUTLINED_FUNCTION_2_8();
  v48 = *(v47 + 272);
  v49 = *(v0 + v48);
  *(v0 + v48) = 0;

  if (v49)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      OUTLINED_FUNCTION_40_4();
      v51 = *(v49 + *(v50 + 272));
      swift_retain_n();

      v49 = v51;
    }

    while (v51);
  }

  return v0;
}