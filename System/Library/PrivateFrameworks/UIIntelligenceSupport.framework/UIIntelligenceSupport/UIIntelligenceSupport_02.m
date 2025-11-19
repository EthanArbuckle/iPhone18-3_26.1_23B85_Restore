uint64_t sub_1BBAADE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBAADE50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBAADE50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69676572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C626164616F6CLL && a2 == 0xEE00676E69727453 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C626164616F6CLL && a2 == 0xED00007961727241 || (sub_1BBB842F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BBB9B5E0 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BBB9B600 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001BBB9B620 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1BBAAE0A4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BBAAE0D8()
{
  result = qword_1ED6BDBB0;
  if (!qword_1ED6BDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBB0);
  }

  return result;
}

uint64_t sub_1BBAAE144(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B590);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAAE1B8()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBAAE1FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BBAAE20C(uint64_t a1, void (*a2)(__int128 *, __int128 *), uint64_t a3)
{
  v4 = *(a1 + 176);
  v5 = *(a1 + 144);
  v114 = *(a1 + 160);
  v115 = v4;
  v6 = *(a1 + 176);
  *v116 = *(a1 + 192);
  *&v116[10] = *(a1 + 202);
  v7 = *(a1 + 112);
  v8 = *(a1 + 80);
  v110 = *(a1 + 96);
  v111 = v7;
  v9 = *(a1 + 112);
  v10 = *(a1 + 144);
  v112 = *(a1 + 128);
  v113 = v10;
  v11 = *(a1 + 48);
  v12 = *(a1 + 16);
  v106 = *(a1 + 32);
  v107 = v11;
  v13 = *(a1 + 48);
  v14 = *(a1 + 80);
  v108 = *(a1 + 64);
  v109 = v14;
  v15 = *(a1 + 16);
  v105[0] = *a1;
  v105[1] = v15;
  v16 = v3[1];
  v101 = *v3;
  v102 = v16;
  v103[0] = v3[2];
  *(v103 + 9) = *(v3 + 41);
  v100[1] = v114;
  v100[2] = v6;
  v100[3] = *(a1 + 192);
  *(&v100[3] + 10) = *(a1 + 202);
  v97 = v110;
  v98 = v9;
  v99 = v112;
  v100[0] = v5;
  *&v95[32] = v106;
  *&v95[48] = v13;
  *&v95[64] = v108;
  v96 = v8;
  *v95 = v105[0];
  *&v95[16] = v12;
  v17 = (*&v103[0] >> 59) & 0x1E | (LODWORD(v103[0]) >> 2) & 1;
  v104 = *&v103[0];
  if (v17 == 4)
  {
    v32 = (*&v103[0] & 0xFFFFFFFFFFFFFFBLL);
    swift_beginAccess();
    v33 = v32[1];
    v34 = v32[2];
    v35 = v32[3];
    v56[1] = v32[4];
    v55 = v34;
    v56[0] = v35;
    v54 = v33;
    v59[1] = v56[1];
    v36 = v32[2];
    v57 = v32[1];
    v58 = v36;
    v59[0] = v32[3];
    v71 = *(&v100[2] + 8);
    v72 = *(&v100[3] + 8);
    v69 = *(v100 + 8);
    v70 = *(&v100[1] + 8);
    sub_1BBAA5104(v105, &v82);
    sub_1BBACBF34(&v54, &v82);
    v31 = &v69;
LABEL_8:
    v22 = sub_1BBA8BCC4(v31, &qword_1EBC7BBE0);
    *(v100 + 8) = v57;
    *(&v100[1] + 8) = v58;
    *(&v100[2] + 8) = v59[0];
    *(&v100[3] + 8) = v59[1];
    if ((v116[25] & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v17 == 2)
  {
    v23 = *&v103[0] & 0xFFFFFFFFFFFFFFBLL;
    v24 = v3[1];
    v54 = *v3;
    v55 = v24;
    v56[0] = v3[2];
    *(v56 + 9) = *(v3 + 41);
    v25 = *(a1 + 128);
    v71 = *(a1 + 112);
    v72 = v25;
    *&v73 = *(a1 + 144);
    v26 = *(a1 + 96);
    v69 = *(a1 + 80);
    v70 = v26;
    sub_1BBAA5104(v105, &v82);
    sub_1BBAAE914(&v104, &v82);
    sub_1BBA9B788(&v101, &v82);
    sub_1BBA8BCC4(&v69, &qword_1EBC7BBD8);
    v96 = v54;
    v97 = v55;
    v98 = v56[0];
    v99 = v56[1];
    *&v100[0] = v23;
    v27 = (v23 + *(*v23 + 88));
    swift_beginAccess();
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[3];
    v59[0] = v27[2];
    v59[1] = v30;
    v57 = v28;
    v58 = v29;
    v82 = *(v100 + 8);
    v83 = *(&v100[1] + 8);
    v84 = *(&v100[2] + 8);
    v85 = *(&v100[3] + 8);
    sub_1BBA8BC5C(&v57, &v53, &qword_1EBC7BBE0);
    v31 = &v82;
    goto LABEL_8;
  }

  if (v17 != 1)
  {
    v22 = sub_1BBAA5104(v105, &v82);
    if ((v116[25] & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_9:
    v37 = 1;
    goto LABEL_10;
  }

  v18 = *&v103[0] & 0xFFFFFFFFFFFFFFBLL;
  v19 = v3[1];
  v57 = *v3;
  v58 = v19;
  v59[0] = v3[2];
  *(v59 + 9) = *(v3 + 41);
  v20 = *(a1 + 24);
  v21 = *(a1 + 56);
  v71 = *(a1 + 40);
  v72 = v21;
  *&v73 = *(a1 + 72);
  v69 = *(a1 + 8);
  v70 = v20;
  sub_1BBAA5104(v105, &v82);
  sub_1BBAAE914(&v104, &v82);
  sub_1BBA9B788(&v101, &v82);
  v22 = sub_1BBA8BCC4(&v69, &qword_1EBC7BBD0);
  *&v95[8] = v57;
  *&v95[24] = v58;
  *&v95[40] = v59[0];
  *&v95[56] = v59[1];
  *&v95[72] = v18;
  if (v116[25])
  {
    goto LABEL_9;
  }

LABEL_14:
  v37 = 0;
  v46 = (v104 >> 59) & 0x1E | (v104 >> 2) & 1;
  if (v46 > 15)
  {
    if (v46 == 16)
    {
      v49 = v104 & 0xFFFFFFFFFFFFFFBLL;
      v22 = swift_beginAccess();
      v37 = *(v49 + 24);
    }

    else if (v46 == 17)
    {
      v48 = v104 & 0xFFFFFFFFFFFFFFBLL;
      v22 = swift_beginAccess();
      v37 = *(v48 + 32);
    }
  }

  else if (v46 == 5)
  {
    v37 = v104;
  }

  else if (v46 == 13)
  {
    v47 = (v104 & 0xFFFFFFFFFFFFFFBLL) + *(*(v104 & 0xFFFFFFFFFFFFFFBLL) + 88);
    swift_beginAccess();
    v22 = _s14CollectionItemV7StorageVMa();
    v37 = *(v47 + *(v22 + 24));
  }

LABEL_10:
  BYTE9(v100[4]) = v37 & 1;
  v50 = MEMORY[0x1BFB16D20](v22);
  v54 = v101;
  v55 = v102;
  v56[0] = v103[0];
  *(v56 + 9) = *(v103 + 9);
  v79 = v100[1];
  v80 = v100[2];
  v81[0] = v100[3];
  *(v81 + 10) = *(&v100[3] + 10);
  v75 = v97;
  v76 = v98;
  v77 = v99;
  v78 = v100[0];
  v71 = *&v95[32];
  v72 = *&v95[48];
  v73 = *&v95[64];
  v74 = v96;
  v69 = *v95;
  v70 = *&v95[16];
  v66 = v100[1];
  v67 = v100[2];
  v68[0] = v100[3];
  *(v68 + 10) = *(&v100[3] + 10);
  v62 = v97;
  v63 = v98;
  v64 = v99;
  v65 = v100[0];
  v59[0] = *&v95[32];
  v59[1] = *&v95[48];
  v60 = *&v95[64];
  v61 = v96;
  v38 = *v95;
  v57 = *v95;
  v58 = *&v95[16];
  sub_1BBAA5104(&v69, &v82);
  a2(&v54, &v57);
  v92 = v66;
  v93 = v67;
  v94[0] = v68[0];
  *(v94 + 10) = *(v68 + 10);
  v88 = v62;
  v89 = v63;
  v90 = v64;
  v91 = v65;
  v84 = v59[0];
  v85 = v59[1];
  v86 = v60;
  v87 = v61;
  v82 = v57;
  v83 = v58;
  sub_1BBAA53A8(&v82);
  objc_autoreleasePoolPop(v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
  v39 = swift_allocObject();
  v40 = v101;
  v41 = v102;
  v39[1] = xmmword_1BBB85CE0;
  v39[2] = v40;
  v42 = v103[0];
  v39[3] = v41;
  v39[4] = v42;
  *(v39 + 73) = *(v103 + 9);
  *&v54 = v39;
  sub_1BBA9B788(&v101, &v57);
  v43 = sub_1BBA9AC3C(v38);
  *v95 = v54;
  MEMORY[0x1EEE9AC00](v43);
  v44 = *(&v103[0] + 1);
  *&v57 = v104;
  sub_1BBAAE914(&v104, &v54);
  sub_1BBA9A66C(&v57, sub_1BBAE8304);
  sub_1BBA8ABF8(v57);
  if (((v104 >> 59) & 0x1E | (v104 >> 2) & 1) == 0x12)
  {
    BYTE8(v100[4]) = 4;
  }

  sub_1BBAA5584(v44, v95, a2, a3);
  v66 = v100[1];
  v67 = v100[2];
  v68[0] = v100[3];
  *(v68 + 10) = *(&v100[3] + 10);
  v62 = v97;
  v63 = v98;
  v64 = v99;
  v65 = v100[0];
  v59[0] = *&v95[32];
  v59[1] = *&v95[48];
  v60 = *&v95[64];
  v61 = v96;
  v57 = *v95;
  v58 = *&v95[16];
  return sub_1BBAA53A8(&v57);
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport19IntelligenceElementV7element_AC6ScreenV7contenttSg_0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport23IntelligenceProcessInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t IntelligenceElement.Window.init(identifier:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30[-v10];
  v12 = _s6WindowV7StorageVMa();
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BBAA8D28(v33);
  v16 = type metadata accessor for IntelligenceUserActivity();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_1BBAA6758(v11, &v15[v13[7]], &qword_1EBC7B830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for IntelligenceImage(0);
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1BBAA6758(v8, &v15[v13[11]], &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  *(v15 + 6) = 0;
  *(v15 + 7) = 1;
  v18 = &v15[v13[8]];
  *v18 = a1;
  v18[1] = a2;
  v15[v13[9]] = v31;
  v15[v13[10]] = 1;
  v19 = &v15[v13[12]];
  v20 = v33[13];
  v19[12] = v33[12];
  v19[13] = v20;
  v19[14] = v33[14];
  v21 = v33[9];
  v19[8] = v33[8];
  v19[9] = v21;
  v22 = v33[11];
  v19[10] = v33[10];
  v19[11] = v22;
  v23 = v33[5];
  v19[4] = v33[4];
  v19[5] = v23;
  v24 = v33[7];
  v19[6] = v33[6];
  v19[7] = v24;
  v25 = v33[1];
  *v19 = v33[0];
  v19[1] = v25;
  v26 = v33[3];
  v19[2] = v33[2];
  v19[3] = v26;
  v27 = &v15[v13[13]];
  *v27 = 0;
  v27[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
  v28 = swift_allocObject();
  result = sub_1BBA9FF64(v15, v28 + *(*v28 + 88), _s6WindowV7StorageVMa);
  *v32 = v28;
  return result;
}

void (*IntelligenceElement.Window.loadableAppCurrentUserActivity.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v10 = _s6WindowV7StorageVMa();
  sub_1BBA8BC5C(v9 + *(v10 + 20), v8, &qword_1EBC7BBB8);
  return sub_1BBAB1D3C;
}

uint64_t IntelligenceElement.LoadableValue.loadAsync(for:description:deadline:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a5 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntelligenceElement.LoadableValue.value.getter(v16, v15);
  IntelligenceElement.LoadableValue.loadAsync(for:description:deadline:baseValue:)(a1, a2, a3, a4, v15, a5, a6);
  return (*(v13 + 8))(v15, v12);
}

void IntelligenceElement.LoadableValue.loadAsync(for:description:deadline:baseValue:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v8 = v7;
  v49 = a4;
  v14 = *(a6 + 16);
  v15 = _s13LoadableValueV22InternalRepresentationOMa();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v44 - v17);
  v19 = a1[7];
  v55[6] = a1[6];
  *v56 = v19;
  *&v56[15] = *(a1 + 127);
  v20 = a1[3];
  v55[2] = a1[2];
  v55[3] = v20;
  v21 = a1[5];
  v55[4] = a1[4];
  v55[5] = v21;
  v22 = a1[1];
  v55[0] = *a1;
  v55[1] = v22;
  (*(v16 + 16))(&v44 - v17, v8, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v18;
    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v24 = sub_1BBB83758();
    __swift_project_value_buffer(v24, qword_1ED6BDEC0);

    v25 = sub_1BBB83738();
    v26 = sub_1BBB83D48();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v52 = v28;
      *v27 = 136446210;
      v29 = sub_1BBB75B54(v23);
      v31 = v30;

      v32 = sub_1BBA85E50(v29, v31, &v52);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1BBA81000, v25, v26, "LoadableValue is already being loaded asynchronously; returning existing async loadable for %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFB174E0](v28, -1, -1);
      MEMORY[0x1BFB174E0](v27, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v45 = a2;
  v33 = a3;
  v48 = a7;
  if (qword_1ED6BF1F8 != -1)
  {
    swift_once();
  }

  v46 = a5;
  v47 = v14;
  v34 = off_1ED6BF200;
  v36 = v55[0];
  v35 = DWORD1(v55[0]);
  if (qword_1ED6BDAE8 != -1)
  {
    swift_once();
  }

  v37 = off_1ED6BDAF0;
  os_unfair_lock_lock(off_1ED6BDAF0 + 6);
  v38 = *(v37 + 2);
  if (!__OFADD__(v38, 1))
  {
    *(v37 + 2) = v38 + 1;
    os_unfair_lock_unlock(v37 + 6);

    v39 = mach_continuous_time();
    *&v52 = v38;
    *(&v52 + 1) = __PAIR64__(v35, v36);
    *&v53 = v45;
    *(&v53 + 1) = v33;
    v54 = v39;
    v40 = v8;
    v41 = v34[2];
    MEMORY[0x1EEE9AC00](v39);
    *(&v44 - 12) = v36;
    *(&v44 - 11) = v35;
    *(&v44 - 5) = &v52;
    *(&v44 - 4) = v49;
    *(&v44 - 3) = v55;
    *(&v44 - 2) = v34;
    os_unfair_lock_lock((v41 + 32));
    sub_1BBAB0580((v41 + 16));
    os_unfair_lock_unlock((v41 + 32));
    v50[0] = v52;
    v50[1] = v53;
    v51 = v54;
    v42 = v47;
    v23 = sub_1BBAB190C(v50, v46, v47);
    v43 = *(v16 + 8);
    swift_retain_n();
    v43(v40, v15);
    *v40 = v23;
    swift_storeEnumTagMultiPayload();
    (*(*(v42 - 8) + 8))(v18, v42);
    a7 = v48;
LABEL_14:
    a7[3] = _s13LoadableValueV10AsyncValueVMa();
    a7[4] = swift_getWitnessTable();

    *a7 = v23;
    return;
  }

  __break(1u);
}

void sub_1BBAAF428(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v163 = a6;
  v159 = a5;
  v162 = a4;
  v171 = a3;
  v165 = HIDWORD(a2);
  v8 = sub_1BBB83818();
  v169 = *(v8 - 8);
  v170 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v160 = &v147 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v147 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v161 = &v147 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v167 = &v147 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v158 = &v147 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB00);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v147 - v22;
  v24 = sub_1BBB838D8();
  v172 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v164 = &v147 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v147 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v168 = &v147 - v33;
  v34 = *a1;
  if (!*(*a1 + 16) || (v35 = sub_1BBA98B58(a2), (v36 & 1) == 0))
  {
    if (qword_1ED6BDE98 != -1)
    {
      swift_once();
    }

    v46 = sub_1BBB83758();
    __swift_project_value_buffer(v46, qword_1ED6BDEA0);
    v47 = v171;
    sub_1BBAB0F54(v171, &v173);
    v48 = sub_1BBB83738();
    v49 = sub_1BBB83D48();
    sub_1BBAB159C(v47);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v173 = v51;
      *v50 = 136446466;
      *(v50 + 4) = sub_1BBA85E50(*(v47 + 16), *(v47 + 24), &v173);
      *(v50 + 12) = 2082;
      v177 = __PAIR64__(v165, a2);
      v52 = RequestID.debugDescription.getter();
      v54 = sub_1BBA85E50(v52, v53, &v173);

      *(v50 + 14) = v54;
      _os_log_impl(&dword_1BBA81000, v48, v49, "attempted to start async task '%{public}s' for an untracked request: %{public}s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB174E0](v51, -1, -1);
      MEMORY[0x1BFB174E0](v50, -1, -1);
    }

    goto LABEL_9;
  }

  v149 = v10;
  v150 = a1;
  v166 = v24;
  v152 = a2;
  v37 = (*(v34 + 56) + 48 * v35);
  v39 = *v37;
  v38 = v37[1];
  v40 = v37[2];
  v41 = v37[4];
  v42 = v37[5];
  v43 = (*v37 & 0xC000000000000001) == 0;
  v153 = v37[3];
  v156 = v41;
  v155 = v42;
  *(&v154 + 1) = v38;
  *&v154 = v39;
  if (v43)
  {
    v45 = *(v39 + 16);
    swift_retain_n();
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v44 = v40;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    swift_retain_n();
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v44 = v40;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v45 = sub_1BBB83F78();
  }

  v55 = v166;
  v56 = v172;
  if (v45)
  {
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  v57 = *(v153 + 16);
  swift_unknownObjectRelease();

  if (!v57)
  {
    if (qword_1ED6BDE98 != -1)
    {
      swift_once();
    }

    v120 = sub_1BBB83758();
    __swift_project_value_buffer(v120, qword_1ED6BDEA0);
    v121 = v171;
    sub_1BBAB0F54(v171, &v173);
    v48 = sub_1BBB83738();
    v122 = sub_1BBB83D48();
    sub_1BBAB159C(v121);
    if (!os_log_type_enabled(v48, v122))
    {

      swift_unknownObjectRelease();

LABEL_41:

      return;
    }

    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *&v173 = v124;
    *v123 = 136446466;
    *(v123 + 4) = sub_1BBA85E50(*(v121 + 16), *(v121 + 24), &v173);
    *(v123 + 12) = 2082;
    v177 = __PAIR64__(v165, v152);
    v125 = RequestID.debugDescription.getter();
    v127 = sub_1BBA85E50(v125, v126, &v173);

    *(v123 + 14) = v127;
    _os_log_impl(&dword_1BBA81000, v48, v122, "attempted to start async task '%{public}s' after collection has completed for request: %{public}s", v123, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB174E0](v124, -1, -1);
    MEMORY[0x1BFB174E0](v123, -1, -1);

    swift_unknownObjectRelease();
LABEL_9:

    return;
  }

LABEL_14:
  sub_1BBA8BC5C(v162, v23, &qword_1EBC7CB00);
  v58 = *(v56 + 48);
  v59 = v58(v23, 1, v55);
  v151 = v44;
  if (v59 == 1)
  {
    v148 = v58;
    sub_1BBB83898();
    v162 = v23;
    v60 = v164;
    sub_1BBB83898();
    sub_1BBB83898();
    v61 = v158;
    sub_1BBB838C8();
    v62 = *(v172 + 8);
    v62(v26, v166);
    v63 = v60;
    v64 = v162;
    v62(v63, v166);
    DispatchTimeInterval.seconds.getter();
    (*(v169 + 8))(v61, v170);
    v65 = v168;
    sub_1BBB838E8();
    v62(v31, v166);
    v56 = v172;
    v55 = v166;
    v66 = v148(v64, 1, v166);
    v67 = v167;
    if (v66 != 1)
    {
      sub_1BBA8BCC4(v64, &qword_1EBC7CB00);
    }
  }

  else
  {
    v65 = v168;
    (*(v56 + 32))(v168, v23, v55);
    v67 = v167;
  }

  v68 = v171;
  v69 = *(v171 + 16);
  v173 = *v171;
  v174 = v69;
  v175 = *(v171 + 32);
  v70 = sub_1BBAB07C4(&v173, v65);
  if (!v70)
  {
    v94 = v164;
    sub_1BBB838B8();
    v95 = v160;
    sub_1BBB838C8();
    v96 = *(v56 + 8);
    v172 = v56 + 8;
    v167 = v96;
    (v96)(v94, v55);
    v98 = v169;
    v97 = v170;
    if (qword_1ED6BDE98 != -1)
    {
      swift_once();
    }

    v99 = sub_1BBB83758();
    __swift_project_value_buffer(v99, qword_1ED6BDEA0);
    v100 = v149;
    v164 = *(v98 + 16);
    (v164)(v149, v95, v97);
    sub_1BBAB0F54(v68, &v173);
    v101 = sub_1BBB83738();
    v102 = v98;
    v103 = sub_1BBB83D48();
    sub_1BBAB159C(v68);
    v104 = os_log_type_enabled(v101, v103);
    v105 = v152;
    if (v104)
    {
      v106 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      *&v173 = v163;
      *v106 = 136446722;
      *(v106 + 4) = sub_1BBA85E50(*(v68 + 16), *(v68 + 24), &v173);
      *(v106 + 12) = 2082;
      v177 = __PAIR64__(v165, v105);
      v107 = RequestID.debugDescription.getter();
      v109 = sub_1BBA85E50(v107, v108, &v173);

      *(v106 + 14) = v109;
      *(v106 + 22) = 2082;
      v110 = DispatchTimeInterval.milliseconds.getter();
      if (v111)
      {
        v112 = v170;
        (v164)(v157, v100, v170);
        v113 = sub_1BBB83A78();
        v114 = v100;
        v115 = v113;
        v117 = v116;
      }

      else
      {
        v138 = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC00);
        v139 = swift_allocObject();
        v140 = MEMORY[0x1E69E63B0];
        *(v139 + 16) = xmmword_1BBB85CE0;
        v141 = MEMORY[0x1E69E6438];
        *(v139 + 56) = v140;
        *(v139 + 64) = v141;
        *(v139 + 32) = v138;
        v142 = sub_1BBB83A28();
        v114 = v100;
        v115 = v142;
        v117 = v143;
        v112 = v170;
      }

      v144 = *(v169 + 8);
      v144(v114, v112);
      v145 = sub_1BBA85E50(v115, v117, &v173);

      *(v106 + 24) = v145;
      _os_log_impl(&dword_1BBA81000, v101, v103, "attempted to start async task '%{public}s' for %{public}s but already %{public}s past deadline", v106, 0x20u);
      v146 = v163;
      swift_arrayDestroy();
      MEMORY[0x1BFB174E0](v146, -1, -1);
      MEMORY[0x1BFB174E0](v106, -1, -1);

      swift_unknownObjectRelease();

      v144(v160, v112);
    }

    else
    {

      swift_unknownObjectRelease();

      v119 = *(v102 + 8);
      v119(v100, v97);
      v119(v95, v97);
    }

    (v167)(v168, v166);
    goto LABEL_41;
  }

  v71 = v70;
  sub_1BBAB0F54(v68, &v173);
  swift_unknownObjectRetain();
  v72 = v153;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v173 = v72;
  v165 = v71;
  sub_1BBAB1064(v71, v68, isUniquelyReferenced_nonNull_native);
  sub_1BBAB159C(v68);
  v163 = v173;
  v74 = v164;
  sub_1BBB838B8();
  sub_1BBB838C8();
  v75 = *(v56 + 8);
  v172 = v56 + 8;
  v164 = v75;
  (v75)(v74, v55);
  v76 = v68;
  v77 = v169;
  v78 = v170;
  v79 = v67;
  if (qword_1ED6BDE98 != -1)
  {
    swift_once();
  }

  v80 = sub_1BBB83758();
  __swift_project_value_buffer(v80, qword_1ED6BDEA0);
  v81 = *(v77 + 16);
  v82 = v161;
  v81(v161, v79, v78);
  sub_1BBAB0F54(v76, &v173);
  v83 = sub_1BBB83738();
  v84 = sub_1BBB83D58();
  sub_1BBAB159C(v76);
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v177 = v162;
    *v85 = 136446466;
    v86 = *(v76 + 16);
    v173 = *v76;
    v174 = v86;
    v175 = *(v76 + 32);
    v87 = sub_1BBAB15CC();
    v89 = sub_1BBA85E50(v87, v88, &v177);

    *(v85 + 4) = v89;
    *(v85 + 12) = 2082;
    v90 = DispatchTimeInterval.milliseconds.getter();
    if (v91)
    {
      v81(v157, v82, v78);
      v92 = sub_1BBB83A78();
    }

    else
    {
      v128 = v90;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC00);
      v129 = swift_allocObject();
      v130 = MEMORY[0x1E69E63B0];
      *(v129 + 16) = xmmword_1BBB85CE0;
      v131 = MEMORY[0x1E69E6438];
      *(v129 + 56) = v130;
      *(v129 + 64) = v131;
      *(v129 + 32) = v128;
      v92 = sub_1BBB83A28();
    }

    v132 = v92;
    v133 = v93;
    v118 = *(v169 + 8);
    v118(v82, v78);
    v134 = sub_1BBA85E50(v132, v133, &v177);

    *(v85 + 14) = v134;
    v78 = v170;
    _os_log_impl(&dword_1BBA81000, v83, v84, "starting %{public}s with %{public}s until deadline", v85, 0x16u);
    v135 = v162;
    swift_arrayDestroy();
    MEMORY[0x1BFB174E0](v135, -1, -1);
    MEMORY[0x1BFB174E0](v85, -1, -1);
  }

  else
  {

    v118 = *(v77 + 8);
    v118(v82, v78);
  }

  v173 = v154;
  *&v174 = v151;
  *(&v174 + 1) = v163;
  v175 = v156;
  v176 = v155;

  v136 = v150;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v136;
  sub_1BBA989F4(&v173, v152, v137);
  swift_unknownObjectRelease();
  *v136 = v177;
  v118(v167, v78);
  (v164)(v168, v166);
}

uint64_t DispatchTimeInterval.seconds.getter()
{
  v1 = v0;
  v2 = sub_1BBB83818();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69E7F48])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6 * 1000.0;
  }

  else if (v7 == *MEMORY[0x1E69E7F38])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
  }

  else
  {
    if (v7 == *MEMORY[0x1E69E7F30])
    {
      (*(v3 + 96))(v6, v2);
      v9 = *v6;
      v10 = 1000.0;
    }

    else
    {
      if (v7 != *MEMORY[0x1E69E7F28])
      {
        (*(v3 + 8))(v6, v2);
        *&result = 0.0;
        return result;
      }

      (*(v3 + 96))(v6, v2);
      v9 = *v6;
      v10 = 1000000.0;
    }

    v8 = v9 / v10;
  }

  *&result = v8 / 1000.0;
  return result;
}

uint64_t sub_1BBAB07C4(__int128 *a1, uint64_t a2)
{
  v4 = sub_1BBB83828();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BBB83878();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BBB83818();
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = sub_1BBB83DE8();
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BBB838D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v45 = *a1;
  v46 = v20;
  v47 = *(a1 + 4);
  sub_1BBB838B8();
  sub_1BBAB0E6C(&unk_1ED6BDAA0, MEMORY[0x1E69E7FF8]);
  v35 = a2;
  LOBYTE(a2) = sub_1BBB83948();
  (*(v17 + 8))(v19, v16);
  v21 = 0;
  if (a2)
  {
    v32 = sub_1BBAB0F08(0, &qword_1ED6BDA58);
    if (qword_1ED6BDB00 != -1)
    {
      swift_once();
    }

    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BBAB0E6C(&unk_1ED6BDA60, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB28);
    sub_1BBAB0EB4(&qword_1ED6BDA70, &qword_1EBC7CB28);
    sub_1BBB83F28();
    v21 = sub_1BBB83DF8();
    (*(v33 + 8))(v15, v13);
    ObjectType = swift_getObjectType();
    v23 = v34;
    v24 = *(v34 + 104);
    v24(v12, *MEMORY[0x1E69E7F40], v7);
    *v9 = 0;
    v24(v9, *MEMORY[0x1E69E7F28], v7);
    MEMORY[0x1BFB164B0](v35, v12, v9, ObjectType);
    v25 = *(v23 + 8);
    v25(v9, v7);
    v25(v12, v7);
    v26 = swift_allocObject();
    v27 = v46;
    *(v26 + 24) = v45;
    *(v26 + 16) = v37;
    *(v26 + 40) = v27;
    *(v26 + 56) = v47;
    aBlock[4] = sub_1BBB33930;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BBA83B58;
    aBlock[3] = &block_descriptor_20;
    v28 = _Block_copy(aBlock);

    sub_1BBAB0F54(&v45, v43);
    v29 = v36;
    sub_1BBB83858();
    v30 = v39;
    sub_1BBAB0F8C();
    sub_1BBB83E08();
    _Block_release(v28);
    (*(v41 + 8))(v30, v42);
    (*(v38 + 8))(v29, v40);

    sub_1BBB83E28();
  }

  return v21;
}

uint64_t sub_1BBAB0E2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BBAB0E6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBAB0EB4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAB0F08(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BBAB0F8C()
{
  sub_1BBB83828();
  sub_1BBAB0E6C(&qword_1ED6BF0A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB30);
  sub_1BBAB0EB4(&qword_1ED6BF098, &unk_1EBC7CB30);
  return sub_1BBB83F28();
}

uint64_t sub_1BBAB1064(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BBAB11DC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1BBAB124C(v14, a3 & 1);
      v9 = sub_1BBAB11DC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1BBB84378();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1BBAB3868();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v21 = v19[6] + 40 * v9;
    v22 = *a2;
    v23 = *(a2 + 16);
    *(v21 + 32) = *(a2 + 32);
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return sub_1BBAB0F54(a2, v26);
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_1BBAB11DC(uint64_t *a1)
{
  v2 = *a1;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v2);
  v3 = sub_1BBB84438();

  return sub_1BBAB1524(a1, v3);
}

uint64_t sub_1BBAB124C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD88);
  v35 = a2;
  result = sub_1BBB840D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 40 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[3];
      v36 = v21[4];
      v37 = v21[2];
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1BBB843D8();
      MEMORY[0x1BFB16A50](v22);
      result = sub_1BBB84438();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 40 * v15);
      *v16 = v22;
      v16[1] = v23;
      v16[2] = v37;
      v16[3] = v24;
      v16[4] = v36;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1BBAB1524(uint64_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    do
    {
      if (*(*(v2 + 48) + 40 * result) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1BBAB15CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BBB84028();

  v3 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v3);

  MEMORY[0x1BFB16150](8236, 0xE200000000000000);
  v4 = RequestID.debugDescription.getter();
  MEMORY[0x1BFB16150](v4);

  MEMORY[0x1BFB16150](2564140, 0xE300000000000000);
  MEMORY[0x1BFB16150](v1, v2);
  MEMORY[0x1BFB16150](10535, 0xE200000000000000);
  return 0x736154636E797341;
}

uint64_t DispatchTimeInterval.milliseconds.getter()
{
  v1 = v0;
  v2 = sub_1BBB83818();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69E7F48])
  {
    (*(v3 + 96))(v6, v2);
    *&result = *v6 * 1000.0;
    return result;
  }

  if (v7 == *MEMORY[0x1E69E7F38])
  {
    (*(v3 + 96))(v6, v2);
    *&result = *v6;
    return result;
  }

  if (v7 == *MEMORY[0x1E69E7F30])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000.0;
LABEL_9:
    *&result = v9 / v10;
    return result;
  }

  if (v7 == *MEMORY[0x1E69E7F28])
  {
    (*(v3 + 96))(v6, v2);
    v9 = *v6;
    v10 = 1000000.0;
    goto LABEL_9;
  }

  (*(v3 + 8))(v6, v2);
  *&result = 0.0;
  return result;
}

uint64_t sub_1BBAB190C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s13LoadableValueV10AsyncValueV7StorageVMa();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v18[0] = *a1;
  v18[1] = v13;
  v19 = v14;
  (*(v6 + 16))(v8, a2, a3);
  sub_1BBAB1ACC(v18, v8, a3, v12);
  v15 = sub_1BBAB1BC8();
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_1BBAB1ACC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = a1[1];
  v14 = *a1;
  v7 = *(a1 + 4);
  v8 = _s13LoadableValueV10AsyncValueV7StorageVMa();
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  v12 = *(a3 - 8);
  (*(v12 + 56))(a4 + *(v8 + 28), 1, 1, a3);

  *a4 = v14;
  *(a4 + 16) = v13;
  *(a4 + 32) = v7;
  v9 = *(v12 + 32);
  v10 = a4 + *(v8 + 32);

  return v9(v10, a2, a3);
}

uint64_t sub_1BBAB1BC8()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1BBB84078();
  return sub_1BBB84068();
}

uint64_t sub_1BBAB1C44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1BBAB1CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BBAB1D64(uint64_t a1, char a2, void (*a3)(void *), uint64_t *a4)
{
  v5 = *a1;
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  if (a2)
  {
    sub_1BBA8BC5C(v7, v6, a4);
    a3(v6);
    sub_1BBA8BCC4(v7, a4);
  }

  else
  {
    a3(v7);
  }

  free(v7);
  free(v6);

  free(v5);
}

uint64_t IntelligenceElement.Window.loadableAppCurrentUserActivity.setter(uint64_t a1)
{
  v3 = _s6WindowV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v7 + v8, v6);
  sub_1BBAA6910(a1, &v6[*(v4 + 28)], &qword_1EBC7BBB8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBAB1FA0(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v12 = swift_allocObject();
    sub_1BBA9FF64(v6, v12 + *(*v12 + 88), _s6WindowV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

uint64_t sub_1BBAB1FA0(uint64_t a1, uint64_t a2)
{
  v4 = _s6WindowV7StorageVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static IntelligenceUserActivity.fetchCurrentUserActivity(completionHandler:)(void (*a1)(char *, void), uint64_t a2)
{
  v3 = a1;
  if (MEMORY[0x1E69DF000])
  {
    v28 = a1;
    v4 = sub_1BBB834F8();
    v5 = *(v4 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v8 = v26 - v7;
    v9 = objc_opt_self();
    v10 = [v9 currentUserActivityUUID];
    MEMORY[0x1EEE9AC00](v10);
    if (v11)
    {
      v12 = v11;
      sub_1BBB834D8();

      v26[0] = a2;
      v27 = v9;
      v13 = *(v5 + 32);
      v13(v26 - v7, v26 - v7, v4);
      v14 = sub_1BBB834B8();
      v26[1] = v26;
      v15 = MEMORY[0x1EEE9AC00](v14);
      v16 = v26 - v7;
      (*(v5 + 16))(v26 - v7, v26 - v7, v4, v15);
      v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v18 = swift_allocObject();
      v19 = v26[0];
      *(v18 + 16) = v28;
      *(v18 + 24) = v19;
      v13((v18 + v17), v16, v4);
      aBlock[4] = sub_1BBB79DA0;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BBB79C1C;
      aBlock[3] = &block_descriptor_5;
      v20 = _Block_copy(aBlock);

      [v27 fetchUserActivityWithUUID:v14 completionHandler:v20];
      _Block_release(v20);

      return (*(v5 + 8))(v8, v4);
    }

    v3 = v28;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v26 - v23;
  v25 = type metadata accessor for IntelligenceUserActivity();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v3(v24, 0);
  return sub_1BBA8BCC4(v24, &qword_1EBC7B830);
}

uint64_t sub_1BBAB237C()
{
  v1 = sub_1BBB834F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1BBAB2440(uint64_t a1, uint64_t a2)
{
  _s13LoadableValueV10AsyncValueV7StorageVMa();
  v3 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_1BBAB2508((a2 + v3));
  os_unfair_lock_unlock((a2 + v4));
}

void sub_1BBAB2524(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BBB83E98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  v11 = a1[3];
  if (!v11)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    v18 = v10;
    sub_1BBB84028();

    v24 = 0xD000000000000019;
    v25 = 0x80000001BBB9D6F0;
    v19 = _s13LoadableValueV10AsyncValueV7StorageVMa();
    (*(v8 + 16))(v18, a1 + *(v19 + 28), v7);
    v20 = (*(*(a3 - 8) + 48))(v18, 1, a3);
    (*(v8 + 8))(v18, v7);
    if (v20 == 1)
    {
      v21 = 0x64656C696166;
    }

    else
    {
      v21 = 0x6574656C706D6F63;
    }

    if (v20 == 1)
    {
      v22 = 0xE600000000000000;
    }

    else
    {
      v22 = 0xE900000000000064;
    }

    MEMORY[0x1BFB16150](v21, v22);

    sub_1BBB840A8();
    __break(1u);
LABEL_15:
    os_unfair_lock_unlock((a3 + 32));
    __break(1u);
    return;
  }

  v12 = a1[4];
  v14 = a1[1];
  v13 = a1[2];
  v24 = *a1;
  v25 = v14;
  v26 = v13;
  v27 = v11;
  v28 = v12;
  v15 = *(_s13LoadableValueV10AsyncValueV7StorageVMa() + 28);
  (*(v8 + 8))(a1 + v15, v7);
  v16 = *(a3 - 8);
  (*(v16 + 16))(a1 + v15, a2, a3);
  v17 = (*(v16 + 56))(a1 + v15, 0, 1, a3);
  if (qword_1ED6BF1F8 != -1)
  {
    v17 = swift_once();
  }

  a3 = *(off_1ED6BF200 + 2);
  MEMORY[0x1EEE9AC00](v17);
  os_unfair_lock_lock((a3 + 32));
  sub_1BBAB2908((a3 + 16), v23);
  if (v3)
  {
    goto LABEL_15;
  }

  os_unfair_lock_unlock((a3 + 32));
  if (v23[2])
  {
    sub_1BBB333BC(v23);
    swift_unknownObjectRelease();
  }

  a1[4] = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
}

void sub_1BBAB2920(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v9 = sub_1BBB836A8();
  v111 = *(v9 - 8);
  v112 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v98 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v98 - v16;
  v110 = a1;
  v18 = *a1;
  if (!*(v18 + 16) || (v19 = *(a2 + 12), v107 = *(a2 + 8), v106 = v19, v20 = v107 | (v19 << 32), v21 = sub_1BBA98B58(v20), (v22 & 1) == 0))
  {
    if (a3)
    {
LABEL_28:
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return;
    }

    if (qword_1ED6BDAB0 != -1)
    {
      swift_once();
    }

    v56 = sub_1BBB836E8();
    __swift_project_value_buffer(v56, qword_1ED6BDAB8);
    if ((*a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v109 = a4;
      sub_1BBB836B8();
      sub_1BBAB0F54(a2, &v117);
      sub_1BBAB3C08();
      sub_1BBAB3B98();
      sub_1BBAB3C5C(v57);
      sub_1BBAB0F54(a2, &v117);
      v58 = sub_1BBB836D8();
      v59 = sub_1BBB83E48();
      sub_1BBAB159C(a2);
      sub_1BBAB159C(a2);
      if (sub_1BBB83E88())
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v117 = v61;
        *v60 = 134218242;
        v62 = *(a2 + 24);
        *(v60 + 4) = *(a2 + 32);
        *(v60 + 12) = 2082;
        *(v60 + 14) = sub_1BBA85E50(*(a2 + 16), v62, &v117);
        v63 = sub_1BBB83698();
        _os_signpost_emit_with_name_impl(&dword_1BBA81000, v58, v59, v63, "AsyncTask", "%{public, signpost.description:begin_time}llu PastDeadline %{public}s", v60, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x1BFB174E0](v61, -1, -1);
        MEMORY[0x1BFB174E0](v60, -1, -1);
      }

      (*(v111 + 8))(v11, v112);
      if (qword_1ED6BDE98 == -1)
      {
        goto LABEL_25;
      }
    }

    swift_once();
LABEL_25:
    v64 = sub_1BBB83758();
    __swift_project_value_buffer(v64, qword_1ED6BDEA0);
    sub_1BBAB0F54(a2, &v117);
    v65 = sub_1BBB83738();
    v66 = sub_1BBB83D48();
    sub_1BBAB159C(a2);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v116[0] = v68;
      *v67 = 136446210;
      v69 = *(a2 + 16);
      v117 = *a2;
      v118 = v69;
      v119 = *(a2 + 32);
      v70 = sub_1BBAB15CC();
      v72 = sub_1BBA85E50(v70, v71, v116);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_1BBA81000, v65, v66, "ignoring async task that completed late past its deadline: %{public}s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1BFB174E0](v68, -1, -1);
      MEMORY[0x1BFB174E0](v67, -1, -1);
    }

    a4 = v109;
    goto LABEL_28;
  }

  v103 = v4;
  v100 = v20;
  v23 = (*(v18 + 56) + 48 * v21);
  v25 = *v23;
  v24 = v23[1];
  v26 = v23[2];
  v27 = v23[4];
  v28 = v23[5];
  v121 = v23[3];
  v105 = v27;

  v102 = v25;
  v29 = v26;

  v104 = v24;

  v108 = v28;
  swift_unknownObjectRetain();
  v30 = sub_1BBAB37CC(a2);
  if (v30 >= 2)
  {
    swift_getObjectType();
    sub_1BBB83E18();
  }

  v109 = a4;
  v101 = v30;
  if ((a3 & 1) == 0)
  {
    if (qword_1ED6BDAB0 == -1)
    {
LABEL_30:
      v73 = sub_1BBB836E8();
      __swift_project_value_buffer(v73, qword_1ED6BDAB8);
      if ((*a2 & 0x8000000000000000) == 0)
      {
        sub_1BBB836B8();
        sub_1BBAB0F54(a2, &v117);
        sub_1BBAB3C08();
        sub_1BBAB3B98();
        sub_1BBAB3C5C(v74);
        sub_1BBAB0F54(a2, &v117);
        v75 = sub_1BBB836D8();
        v76 = sub_1BBB83E48();
        sub_1BBAB159C(a2);
        sub_1BBAB159C(a2);
        if (sub_1BBB83E88())
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v117 = v78;
          *v77 = 134218242;
          v79 = *(a2 + 24);
          *(v77 + 4) = *(a2 + 32);
          *(v77 + 12) = 2082;
          *(v77 + 14) = sub_1BBA85E50(*(a2 + 16), v79, &v117);
          v80 = sub_1BBB83698();
          _os_signpost_emit_with_name_impl(&dword_1BBA81000, v75, v76, v80, "AsyncTask", "%{public, signpost.description:begin_time}llu %{public}s", v77, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v78);
          MEMORY[0x1BFB174E0](v78, -1, -1);
          MEMORY[0x1BFB174E0](v77, -1, -1);
        }

        (*(v111 + 8))(v14, v112);
        a3 = v108;
        v81 = v105;
        v24 = v102;
        v82 = v104;
        if (qword_1ED6BDE98 != -1)
        {
          swift_once();
        }

        v83 = sub_1BBB83758();
        __swift_project_value_buffer(v83, qword_1ED6BDEA0);
        v43 = v121;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        sub_1BBAB0F54(a2, &v117);

        v44 = v81;
        v45 = sub_1BBB83738();
        v46 = v82;
        v47 = sub_1BBB83D58();
        sub_1BBAB159C(a2);
        if (os_log_type_enabled(v45, v47))
        {
          v48 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v116[0] = v112;
          *v48 = 136446466;
          v84 = *(a2 + 16);
          v117 = *a2;
          v118 = v84;
          v119 = *(a2 + 32);
          v85 = sub_1BBAB15CC();
          v87 = sub_1BBA85E50(v85, v86, v116);

          *(v48 + 4) = v87;
          *(v48 + 12) = 2050;
          v88 = *(v43 + 16);
          swift_unknownObjectRelease();

          v54 = v104;

          *(v48 + 14) = v88;
          swift_unknownObjectRelease();

          v55 = "completed %{public}s; async tasks still pending: %{public}ld";
          goto LABEL_37;
        }

LABEL_38:

        swift_unknownObjectRelease_n();

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v91 = v109;
        v94 = v46;
        v92 = v110;
        v93 = v44;
        goto LABEL_39;
      }

      __break(1u);
      goto LABEL_48;
    }

LABEL_46:
    swift_once();
    goto LABEL_30;
  }

  a3 = *(a2 + 16);
  v14 = *(a2 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1BBA86A94(0, *(v29 + 2) + 1, 1, v29);
  }

  v24 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v24 >= v31 >> 1)
  {
    v29 = sub_1BBA86A94((v31 > 1), v24 + 1, 1, v29);
  }

  *(v29 + 2) = v24 + 1;
  v32 = &v29[16 * v24];
  *(v32 + 4) = a3;
  *(v32 + 5) = v14;
  if (qword_1ED6BDAB0 != -1)
  {
    swift_once();
  }

  v99 = a3;
  v33 = sub_1BBB836E8();
  __swift_project_value_buffer(v33, qword_1ED6BDAB8);
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  sub_1BBB836B8();
  sub_1BBAB0F54(a2, &v117);
  sub_1BBAB3C08();
  sub_1BBAB3B98();
  sub_1BBAB3C5C(v34);
  sub_1BBAB0F54(a2, &v117);
  v35 = sub_1BBB836D8();
  v36 = sub_1BBB83E48();
  sub_1BBAB159C(a2);
  sub_1BBAB159C(a2);
  if (sub_1BBB83E88())
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v14;
    v40 = v38;
    *&v117 = v38;
    *v37 = 134218242;
    *(v37 + 4) = *(a2 + 32);
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_1BBA85E50(v99, v39, &v117);
    v41 = sub_1BBB83698();
    _os_signpost_emit_with_name_impl(&dword_1BBA81000, v35, v36, v41, "AsyncTaskTimeout", "%{public, signpost.description:begin_time}llu %{public}s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1BFB174E0](v40, -1, -1);
    MEMORY[0x1BFB174E0](v37, -1, -1);
  }

  (*(v111 + 8))(v17, v112);
  a3 = v108;
  v14 = v104;
  v24 = v102;
  a4 = v105;
  if (qword_1ED6BDE98 != -1)
  {
LABEL_48:
    swift_once();
  }

  v42 = sub_1BBB83758();
  __swift_project_value_buffer(v42, qword_1ED6BDEA0);
  v43 = v121;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1BBAB0F54(a2, &v117);

  v44 = a4;
  v45 = sub_1BBB83738();
  v46 = v14;
  v47 = sub_1BBB83D48();
  sub_1BBAB159C(a2);
  if (!os_log_type_enabled(v45, v47))
  {
    goto LABEL_38;
  }

  v48 = swift_slowAlloc();
  v112 = swift_slowAlloc();
  v116[0] = v112;
  *v48 = 136446466;
  v49 = *(a2 + 16);
  v117 = *a2;
  v118 = v49;
  v119 = *(a2 + 32);
  v50 = sub_1BBAB15CC();
  v52 = sub_1BBA85E50(v50, v51, v116);

  *(v48 + 4) = v52;
  *(v48 + 12) = 2050;
  v53 = *(v43 + 16);
  swift_unknownObjectRelease();

  v54 = v104;

  *(v48 + 14) = v53;
  swift_unknownObjectRelease();

  v55 = "timed out %{public}s; async tasks still pending: %{public}ld";
LABEL_37:
  _os_log_impl(&dword_1BBA81000, v45, v47, v55, v48, 0x16u);
  v89 = v112;
  __swift_destroy_boxed_opaque_existential_1(v112);
  MEMORY[0x1BFB174E0](v89, -1, -1);
  v90 = v48;
  a3 = v108;
  MEMORY[0x1BFB174E0](v90, -1, -1);

  v91 = v109;
  v92 = v110;
  v93 = v105;
  v94 = v54;
LABEL_39:
  *&v117 = v24;
  *(&v117 + 1) = v94;
  *&v118 = v29;
  *(&v118 + 1) = v43;
  v119 = v93;
  v120 = a3;
  v95 = v92[1];
  v116[0] = __PAIR64__(v106, v107);
  sub_1BBAB3C6C(v95, v116, &v113);
  if (v114)
  {
    sub_1BBAE45CC(v100, v116);
    sub_1BBA8BCC4(v116, &qword_1EBC7CB08);
  }

  else
  {

    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116[0] = *v92;
    sub_1BBA989F4(&v117, v100, isUniquelyReferenced_nonNull_native);

    *v92 = v116[0];
  }

  swift_unknownObjectRelease_n();
  sub_1BBAB3DF0(v101);

  v97 = v114;
  *v91 = v113;
  *(v91 + 16) = v97;
  *(v91 + 32) = v115;
}

uint64_t sub_1BBAB37CC(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_1BBAB11DC(a1);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BBAB3868();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 8 * v5);
  sub_1BBAB39F4(v5, v7);
  *v2 = v7;
  return v8;
}

void *sub_1BBAB3868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD88);
  v2 = *v0;
  v3 = sub_1BBB840C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 40 * v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = v18[4];
        v23 = (*(v4 + 48) + 40 * v17);
        v24 = v18[1];
        *v23 = *v18;
        v23[1] = v24;
        v23[2] = v19;
        v23[3] = v20;
        v23[4] = v22;
        *(*(v4 + 56) + 8 * v17) = v21;
        swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1BBAB39F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BBB83F48() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 40 * v6);
      sub_1BBB843D8();
      MEMORY[0x1BFB16A50](v9);
      result = sub_1BBB84438();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = v11 + 40 * v3;
        v13 = (v11 + 40 * v6);
        if (v3 != v6 || v12 >= v13 + 40)
        {
          v14 = *v13;
          v15 = v13[1];
          *(v12 + 32) = *(v13 + 4);
          *v12 = v14;
          *(v12 + 16) = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BBAB3C08()
{
  result = qword_1ED6BDE60;
  if (!qword_1ED6BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDE60);
  }

  return result;
}

uint64_t sub_1BBAB3C5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BBAB3C6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    result = *(*v3 + 16);
    if (!result)
    {
      goto LABEL_5;
    }

LABEL_6:
    a1 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  result = sub_1BBB83F78();
  if (result)
  {
    goto LABEL_6;
  }

LABEL_5:
  if (*(v3[3] + 16))
  {
    goto LABEL_6;
  }

  v8 = v3[4];
  v9 = v3[1];
  v12 = v3[2];
  v16 = v12;
  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBB85CE0;
    *(inited + 32) = v6;
    v14 = inited + 32;
    *(inited + 40) = v12;
    v10 = sub_1BBACB034(inited);
    swift_setDeallocating();

    sub_1BBA8BC5C(&v16, &v15, &qword_1EBC7B590);
    sub_1BBA8BCC4(v14, &qword_1EBC7CB20);
  }

  else
  {
    v10 = sub_1BBACB034(MEMORY[0x1E69E7CC0]);
  }

  v11 = v3[5];

  result = swift_unknownObjectRetain();
LABEL_7:
  *a3 = a1;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v10;
  a3[4] = v11;
  return result;
}

uint64_t sub_1BBAB3DF0(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t IntelligenceElement.init(boundingBox:content:subelements:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = *a1;
  result = sub_1BBA96B70(MEMORY[0x1E69E7CC0]);
  *(a3 + 40) = a2;
  *(a3 + 48) = result;
  *(a3 + 56) = 0;
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = v13;
  return result;
}

uint64_t IntelligenceElement.Screen.init(type:connectionType:identifier:pixelBounds:scale:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v14 = _s6ScreenV7StorageVMa();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  LOBYTE(a2) = *a2;
  sub_1BBAA8D28(v32);
  v18 = *(v15 + 52);
  v19 = type metadata accessor for IntelligenceImage(0);
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = *(a5 + 16);
  *(v17 + 24) = *a5;
  v21 = v32[12];
  v22 = v32[13];
  v23 = v32[10];
  *(v17 + 264) = v32[11];
  *(v17 + 280) = v21;
  v24 = v32[14];
  *(v17 + 296) = v22;
  *(v17 + 312) = v24;
  *(v17 + 40) = v20;
  *(v17 + 8) = a7;
  *(v17 + 72) = xmmword_1BBB89870;
  v25 = v32[6];
  *(v17 + 200) = v32[7];
  v26 = v32[9];
  *(v17 + 216) = v32[8];
  *(v17 + 232) = v26;
  *(v17 + 248) = v23;
  v27 = v32[2];
  *(v17 + 136) = v32[3];
  v28 = v32[5];
  *(v17 + 152) = v32[4];
  *(v17 + 168) = v28;
  *(v17 + 184) = v25;
  v29 = v32[1];
  *(v17 + 88) = v32[0];
  *v17 = a1;
  v17[1] = a2;
  *(v17 + 1) = a3;
  *(v17 + 2) = a4;
  v17[56] = *(a5 + 32);
  *(v17 + 104) = v29;
  *(v17 + 120) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
  v30 = swift_allocObject();
  result = sub_1BBAAB49C(v17, v30 + *(*v30 + 88), _s6ScreenV7StorageVMa);
  *a6 = v30;
  return result;
}

uint64_t IntelligenceElement.Screen.encodedFBSDisplayIdentity.setter(uint64_t a1, uint64_t a2)
{
  v5 = _s6ScreenV7StorageVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  v9 = *(**v2 + 88);
  swift_beginAccess();
  sub_1BBAB4200(v8 + v9, v7);
  sub_1BBAB42C8(*(v7 + 9), *(v7 + 10));
  *(v7 + 9) = a1;
  *(v7 + 10) = a2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v2;
    v11 = *(*v10 + 88);
    swift_beginAccess();
    sub_1BBAB4264(v7, v10 + v11);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v13 = swift_allocObject();
    sub_1BBAAB49C(v7, v13 + *(*v13 + 88), _s6ScreenV7StorageVMa);

    *v2 = v13;
  }

  return result;
}

uint64_t sub_1BBAB4200(uint64_t a1, uint64_t a2)
{
  v4 = _s6ScreenV7StorageVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBAB4264(uint64_t a1, uint64_t a2)
{
  v4 = _s6ScreenV7StorageVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBAB42C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BBA885E8(a1, a2);
  }

  return a1;
}

uint64_t IntelligenceElement.Image.init(name:textDescription:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = _s5ImageV7StorageVMa();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBAA6758(a5, v14 + *(v15 + 32), &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v14[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D0);
  v16 = swift_allocObject();
  result = sub_1BBAB441C(v14, v16 + *(*v16 + 88), _s5ImageV7StorageVMa);
  *a6 = v16;
  return result;
}

uint64_t sub_1BBAB441C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t UIIntelligenceElementCollector.collect(_:)(_OWORD *a1)
{
  v2 = a1[1];
  __src[0] = *a1;
  __src[1] = v2;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v3 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_elementCollectionResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4[2];
  if (v5)
  {
    v6 = (v5 << 6) - 64;
    if (!*(v4 + v6 + 72))
    {
      swift_beginAccess();
      sub_1BBA9B788(__src, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v3) = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_1BBB3D5A0(v4);
        *(v1 + v3) = v4;
      }

      if (v5 <= v4[2])
      {
        v8 = *(v4 + v6 + 32);
        v9 = *(v4 + v6 + 48);
        v10 = *&v4[8 * v5];
        *&v13[9] = *(v4 + v6 + 73);
        v12[1] = v9;
        *v13 = v10;
        v12[0] = v8;
        memmove(v4 + v6 + 32, __src, 0x39uLL);
        *(v1 + v3) = v4;
        swift_endAccess();
        return sub_1BBA8BCC4(v12, &qword_1EBC7B618);
      }

      __break(1u);
    }
  }

  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

__n128 IntelligenceElement.Button.init(title:image:role:enablement:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  *v12 = a1[2];
  *&v12[9] = *(a1 + 41);
  v13 = *a2;
  v14 = a2[1];
  *v15 = a2[2];
  *&v15[9] = *(a2 + 41);
  v6 = *a3;
  v7 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
  v8 = swift_allocObject();
  *(v8 + 80) = v13;
  *(v8 + 96) = v14;
  *(v8 + 112) = *v15;
  *(v8 + 121) = *&v15[9];
  *(v8 + 16) = v10;
  *(v8 + 32) = v11;
  result = *v12;
  *(v8 + 48) = *v12;
  *(v8 + 64) = *&v12[16];
  *(v8 + 137) = v6;
  *(v8 + 138) = v7;
  *a5 = v8;
  return result;
}

uint64_t IntelligenceElement.Button.title.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v44[2] = v3[3];
  v44[3] = v6;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  *(v45 + 11) = *(v3 + 123);
  v10 = *(v45 + 11);
  v44[5] = v8;
  v45[0] = v9;
  v44[4] = v7;
  v44[0] = v4;
  v44[1] = v5;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[4];
  v14 = v3[5];
  v40[0] = v3[3];
  v40[1] = v13;
  v16 = v3[1];
  v15 = v3[2];
  v38 = v11;
  v39 = v15;
  *(v43 + 11) = v10;
  v17 = v3[7];
  v42 = v3[6];
  v43[0] = v17;
  v41 = v14;
  v18 = v3[3];
  *(v47 + 9) = *(v3 + 57);
  v46[1] = v12;
  v47[0] = v18;
  v46[0] = v16;
  sub_1BBAB48D0(v44, v36);
  sub_1BBA8BCC4(v46, &qword_1EBC7BAA8);
  v19 = a1[1];
  v38 = *a1;
  v39 = v19;
  v40[0] = a1[2];
  *(v40 + 9) = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v20 = *v1;
    swift_beginAccess();
    v21 = v20[5];
    v22 = v20[6];
    v23 = v20[7];
    *(v37 + 11) = *(v20 + 123);
    v37[0] = v23;
    v24 = v20[1];
    v25 = v20[2];
    v26 = v20[4];
    v36[2] = v20[3];
    v36[3] = v26;
    v36[4] = v21;
    v36[5] = v22;
    v36[0] = v24;
    v36[1] = v25;
    v27 = v39;
    v20[1] = v38;
    v20[2] = v27;
    v28 = v40[1];
    v20[3] = v40[0];
    v20[4] = v28;
    v29 = v42;
    v20[5] = v41;
    v20[6] = v29;
    v30 = v43[0];
    *(v20 + 123) = *(v43 + 11);
    v20[7] = v30;
    return sub_1BBAB4908(v36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
    v32 = swift_allocObject();
    v33 = v42;
    v32[5] = v41;
    v32[6] = v33;
    v32[7] = v43[0];
    *(v32 + 123) = *(v43 + 11);
    v34 = v39;
    v32[1] = v38;
    v32[2] = v34;
    v35 = v40[1];
    v32[3] = v40[0];
    v32[4] = v35;

    *v1 = v32;
  }

  return result;
}

uint64_t IntelligenceElement.Button.image.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v45[2] = v3[3];
  v45[3] = v6;
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  *(v46 + 11) = *(v3 + 123);
  v10 = *(v46 + 11);
  v45[5] = v8;
  v46[0] = v9;
  v45[4] = v7;
  v45[0] = v4;
  v45[1] = v5;
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[4];
  v40 = v3[3];
  v41 = v13;
  v38 = v11;
  v39 = v12;
  v14 = v3[5];
  v15 = v3[6];
  *(v44 + 11) = v10;
  v16 = v3[7];
  v43 = v3[6];
  v44[0] = v16;
  v17 = v3[5];
  v42 = v14;
  v18 = v3[7];
  *(v48 + 9) = *(v3 + 121);
  v47[1] = v15;
  v48[0] = v18;
  v47[0] = v17;
  sub_1BBAB48D0(v45, v36);
  sub_1BBA8BCC4(v47, &qword_1EBC7BAA8);
  v19 = a1[1];
  v42 = *a1;
  v43 = v19;
  v44[0] = a1[2];
  *(v44 + 9) = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v20 = *v1;
    swift_beginAccess();
    v21 = v20[5];
    v22 = v20[6];
    v23 = v20[7];
    *(v37 + 11) = *(v20 + 123);
    v37[0] = v23;
    v24 = v20[1];
    v25 = v20[2];
    v26 = v20[4];
    v36[2] = v20[3];
    v36[3] = v26;
    v36[4] = v21;
    v36[5] = v22;
    v36[0] = v24;
    v36[1] = v25;
    v27 = v39;
    v20[1] = v38;
    v20[2] = v27;
    v28 = v41;
    v20[3] = v40;
    v20[4] = v28;
    v29 = v43;
    v20[5] = v42;
    v20[6] = v29;
    v30 = v44[0];
    *(v20 + 123) = *(v44 + 11);
    v20[7] = v30;
    return sub_1BBAB4908(v36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB0);
    v32 = swift_allocObject();
    v33 = v43;
    v32[5] = v42;
    v32[6] = v33;
    v32[7] = v44[0];
    *(v32 + 123) = *(v44 + 11);
    v34 = v39;
    v32[1] = v38;
    v32[2] = v34;
    v35 = v41;
    v32[3] = v40;
    v32[4] = v35;

    *v1 = v32;
  }

  return result;
}

uint64_t sub_1BBAB4B48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t IntelligenceElement.Text.init(attributedText:editable:textOptions:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v45 = a4;
  v7 = _s4TextV7StorageVMa();
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = *a2;
  v43 = a2[1];
  v44 = v12;
  v13 = *(a2 + 4);
  v42 = *(a2 + 5);
  v41 = *(a2 + 24);
  v14 = a3[1];
  v37 = *a3;
  v15 = a3[3];
  v38 = a3[2];
  v35 = v15;
  v39 = a3[4];
  v36 = *(a3 + 20);
  v16 = sub_1BBB83148();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  (*(v17 + 16))(&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16, v18);
  swift_getKeyPath();
  sub_1BBA90AD0();
  sub_1BBA8BDFC(&unk_1EBC7B388, MEMORY[0x1EEE78058]);
  sub_1BBB83168();
  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  v49 = xmmword_1ED6BDCF0;
  v50[0] = xmmword_1ED6BDD00;
  *(v50 + 10) = *(&xmmword_1ED6BDD00 + 10);
  (*(v17 + 8))(a1, v16);
  v20 = &v11[v7[5]];
  v21 = v43;
  *v20 = v44;
  *(v20 + 1) = v21;
  v22 = v42;
  *(v20 + 4) = v13;
  *(v20 + 5) = v22;
  *(v20 + 24) = v41;
  v11[v7[6]] = 0;
  v11[v7[7]] = 0;
  v11[v7[8]] = 0;
  v11[v7[9]] = 1;
  v23 = &v11[v7[10]];
  v24 = v50[0];
  *v23 = v49;
  v23[1] = v24;
  *(v23 + 26) = *(v50 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
  v25 = swift_allocObject();
  v26 = *(*v25 + 88);
  result = sub_1BBB5889C(v11, v25 + v26);
  if ((v14 & 0xFF00) != 0x200)
  {
    v48 = v14 & 1;
    v47 = v35 & 1;
    v28 = (v35 >> 8) & 1;
    v46 = v36 & 1;
    v29 = (v36 >> 8) & 1;
    swift_beginAccess();
    v30 = v25 + v26;
    v31 = v40;
    sub_1BBB587E4(v30, v40);
    v32 = v31 + v7[10];
    *v32 = v37;
    *(v32 + 8) = v48;
    *(v32 + 9) = BYTE1(v14) & 1;
    *(v32 + 16) = v38;
    *(v32 + 24) = v47;
    *(v32 + 25) = v28;
    *(v32 + 32) = v39;
    *(v32 + 40) = v46;
    *(v32 + 41) = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v33 = *(*v25 + 88);
      swift_beginAccess();
      sub_1BBB58900(v31, v25 + v33);
      result = swift_endAccess();
    }

    else
    {
      v34 = swift_allocObject();
      sub_1BBB5889C(v31, v34 + *(*v34 + 88));

      v25 = v34;
    }
  }

  *v45 = v25;
  return result;
}

uint64_t IntelligenceElement.Section.Layout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFE8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFF0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFF8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAB5968();
  sub_1BBB84478();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1BBAB57C4();
    v14 = v18;
    sub_1BBB84208();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1BBB4C9B8();
    sub_1BBB84208();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t IntelligenceElement.Collection.Layout.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4A0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4A8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAB5818();
  sub_1BBB84478();
  if (v12 == 2)
  {
    v21 = 0;
    sub_1BBB182E8();
    sub_1BBB84208();
    (*(v16 + 8))(v7, v17);
  }

  else
  {
    v23 = 1;
    sub_1BBAB5A64();
    v14 = v18;
    sub_1BBB84208();
    v22 = v12 & 1;
    sub_1BBAB56C8();
    v15 = v20;
    sub_1BBB84288();
    (*(v19 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BBAB562C()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

unint64_t sub_1BBAB5674()
{
  result = qword_1ED6BDD50;
  if (!qword_1ED6BDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD50);
  }

  return result;
}

unint64_t sub_1BBAB56C8()
{
  result = qword_1EBC7AF30;
  if (!qword_1EBC7AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF30);
  }

  return result;
}

unint64_t sub_1BBAB571C()
{
  result = qword_1EBC7AF28;
  if (!qword_1EBC7AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF28);
  }

  return result;
}

unint64_t sub_1BBAB5770()
{
  result = qword_1EBC7B0E0;
  if (!qword_1EBC7B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0E0);
  }

  return result;
}

unint64_t sub_1BBAB57C4()
{
  result = qword_1EBC7B098;
  if (!qword_1EBC7B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B098);
  }

  return result;
}

unint64_t sub_1BBAB5818()
{
  result = qword_1EBC7B1D0;
  if (!qword_1EBC7B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1D0);
  }

  return result;
}

unint64_t sub_1BBAB586C()
{
  result = qword_1EBC7B1E8;
  if (!qword_1EBC7B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1E8);
  }

  return result;
}

unint64_t sub_1BBAB58C0()
{
  result = qword_1EBC7B008;
  if (!qword_1EBC7B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B008);
  }

  return result;
}

unint64_t sub_1BBAB5914()
{
  result = qword_1EBC7B0D8;
  if (!qword_1EBC7B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0D8);
  }

  return result;
}

unint64_t sub_1BBAB5968()
{
  result = qword_1EBC7B0B0;
  if (!qword_1EBC7B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0B0);
  }

  return result;
}

unint64_t sub_1BBAB59BC()
{
  result = qword_1EBC7B010;
  if (!qword_1EBC7B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B010);
  }

  return result;
}

unint64_t sub_1BBAB5A10()
{
  result = qword_1EBC7B0C8;
  if (!qword_1EBC7B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0C8);
  }

  return result;
}

unint64_t sub_1BBAB5A64()
{
  result = qword_1EBC7B1A8;
  if (!qword_1EBC7B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1A8);
  }

  return result;
}

unint64_t sub_1BBAB5AB8()
{
  v1 = 0x664F7265626D756ELL;
  v2 = 0x74756F79616CLL;
  if (*v0 != 2)
  {
    v2 = 0x736E6F6974636573;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1BBAB5B40()
{
  if (*v0)
  {
    return 0x6D726F66696E75;
  }

  else
  {
    return 0x646578696DLL;
  }
}

uint64_t sub_1BBAB5B78()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0x726564616568;
  v4 = 0x7265746F6F66;
  if (v1 != 4)
  {
    v4 = 0x736D657469;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x664F7265626D756ELL;
  if (v1 != 1)
  {
    v5 = 0x74756F79616CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1BBAB5C2C()
{
  result = qword_1EBC7AD98;
  if (!qword_1EBC7AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD98);
  }

  return result;
}

uint64_t IntelligenceElement.Scrollable.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA9E5A0();
  sub_1BBB84458();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v27 = 0;
    sub_1BBA9E608(&qword_1EBC7AB70, type metadata accessor for CGSize);
    sub_1BBB84178();
    v23 = v24;
    v21 = a2;
    v22 = *(&v24 + 1);
    v9 = v25;
    v27 = 1;
    sub_1BBB841B8();
    v10 = v9;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    type metadata accessor for CGPoint(0);
    v27 = 2;
    sub_1BBA9E608(&qword_1EBC7AB68, type metadata accessor for CGPoint);
    sub_1BBB841B8();
    v14 = v24;
    v27 = 3;
    sub_1BBAB60C8();
    sub_1BBB841B8();
    v19 = v25;
    v20 = v24;
    v27 = 4;
    sub_1BBAB6454();
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v16 = v24;
    v26 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
    v17 = swift_allocObject();
    *(v17 + 16) = v12;
    *(v17 + 24) = v11;
    *(v17 + 32) = v10;
    *(v17 + 40) = v13;
    *(v17 + 56) = v14;
    v18 = v20;
    *(v17 + 88) = v19;
    *(v17 + 72) = v18;
    *(v17 + 104) = v16;
    *v21 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BBAB601C()
{
  result = qword_1EBC7B500;
  if (!qword_1EBC7B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B500);
  }

  return result;
}

unint64_t sub_1BBAB6074()
{
  result = qword_1EBC7B508;
  if (!qword_1EBC7B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B508);
  }

  return result;
}

unint64_t sub_1BBAB60C8()
{
  result = qword_1EBC7ADB0;
  if (!qword_1EBC7ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADB0);
  }

  return result;
}

uint64_t IntelligenceElement.EdgeInsets.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D578);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA9E938();
  sub_1BBB84458();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_1BBAA7A60();
    sub_1BBB841B8();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_1BBB841B8();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_1BBB841B8();
    v12 = v15;
    HIBYTE(v14) = 3;
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BBAB63A8()
{
  result = qword_1EBC7B518;
  if (!qword_1EBC7B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B518);
  }

  return result;
}

unint64_t sub_1BBAB6400()
{
  result = qword_1EBC7B520;
  if (!qword_1EBC7B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B520);
  }

  return result;
}

unint64_t sub_1BBAB6454()
{
  result = qword_1EBC7AD28;
  if (!qword_1EBC7AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD28);
  }

  return result;
}

void *sub_1BBAB6508@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BBAB6544()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BBAB65D8()
{
  result = qword_1EBC7ADB8;
  if (!qword_1EBC7ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADB8);
  }

  return result;
}

uint64_t IntelligenceElement.Collection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C498);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAB586C();
  sub_1BBB84458();
  if (!v2)
  {
    v20 = 0;
    v9 = sub_1BBB841A8();
    v19 = 1;
    v10 = sub_1BBB841A8();
    v17 = 2;
    sub_1BBAB69A0();
    sub_1BBB841B8();
    HIDWORD(v14) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    v16 = 3;
    sub_1BBAA0B24(&qword_1EBC7ABA0, sub_1BBAB80F0);
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = BYTE4(v14);
    *(v13 + 40) = v12;
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BBAB68F4()
{
  result = qword_1EBC7B1D8;
  if (!qword_1EBC7B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1D8);
  }

  return result;
}

unint64_t sub_1BBAB694C()
{
  result = qword_1EBC7B1E0;
  if (!qword_1EBC7B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1E0);
  }

  return result;
}

unint64_t sub_1BBAB69A0()
{
  result = qword_1EBC7ADC0;
  if (!qword_1EBC7ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADC0);
  }

  return result;
}

uint64_t _s10CollectionV6LayoutOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t _s10CollectionV6LayoutOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t IntelligenceElement.Collection.Layout.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4B8);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4C0);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBAB5818();
  v15 = v36;
  sub_1BBB84458();
  if (!v15)
  {
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BBB841F8();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BBA870CC();
    if (v20 == 2 || v40 != v41 >> 1)
    {
      v24 = sub_1BBB84058();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v26 = &type metadata for IntelligenceElement.Collection.Layout;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        v42 = 1;
        sub_1BBAB5A64();
        v21 = v13;
        v22 = v6;
        sub_1BBB84118();
        v23 = v36;
        sub_1BBAB7348();
        v29 = v22;
        v30 = v32;
        sub_1BBB841B8();
        (*(v33 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v42;
      }

      else
      {
        v42 = 0;
        sub_1BBB182E8();
        sub_1BBB84118();
        v28 = v36;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v31 = 2;
      }

      *v16 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1BBAB7044()
{
  result = qword_1EBC7B198;
  if (!qword_1EBC7B198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B198);
  }

  return result;
}

unint64_t sub_1BBAB709C()
{
  result = qword_1EBC7B1A0;
  if (!qword_1EBC7B1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1A0);
  }

  return result;
}

unint64_t sub_1BBAB7104()
{
  result = qword_1EBC7B1B0;
  if (!qword_1EBC7B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1B0);
  }

  return result;
}

unint64_t sub_1BBAB715C()
{
  result = qword_1EBC7B1B8;
  if (!qword_1EBC7B1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1B8);
  }

  return result;
}

unint64_t sub_1BBAB71C4()
{
  result = qword_1EBC7B1C0;
  if (!qword_1EBC7B1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1C0);
  }

  return result;
}

unint64_t sub_1BBAB721C()
{
  result = qword_1EBC7B1C8;
  if (!qword_1EBC7B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B1C8);
  }

  return result;
}

uint64_t sub_1BBAB7270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646578696DLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D726F66696E75 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t sub_1BBAB7348()
{
  result = qword_1EBC7ACA0;
  if (!qword_1EBC7ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACA0);
  }

  return result;
}

uint64_t IntelligenceElement.Section.Layout.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D000);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D008);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D010);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAB5968();
  v12 = v31;
  sub_1BBB84458();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1BBB841F8();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1BBA870CC();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1BBB84058();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v22 = &type metadata for IntelligenceElement.Section.Layout;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1BBAB57C4();
        sub_1BBB84118();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1BBB4C9B8();
        sub_1BBB84118();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1BBAB7884()
{
  result = qword_1EBC7B088;
  if (!qword_1EBC7B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B088);
  }

  return result;
}

unint64_t sub_1BBAB78DC()
{
  result = qword_1EBC7B090;
  if (!qword_1EBC7B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B090);
  }

  return result;
}

unint64_t sub_1BBAB7944()
{
  result = qword_1EBC7B078;
  if (!qword_1EBC7B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B078);
  }

  return result;
}

unint64_t sub_1BBAB799C()
{
  result = qword_1EBC7B080;
  if (!qword_1EBC7B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B080);
  }

  return result;
}

unint64_t sub_1BBAB7A04()
{
  result = qword_1EBC7B0A0;
  if (!qword_1EBC7B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0A0);
  }

  return result;
}

unint64_t sub_1BBAB7A5C()
{
  result = qword_1EBC7B0A8;
  if (!qword_1EBC7B0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0A8);
  }

  return result;
}

uint64_t sub_1BBAB7AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953720684 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

unint64_t sub_1BBAB7B88()
{
  result = qword_1EBC7AC98;
  if (!qword_1EBC7AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AC98);
  }

  return result;
}

uint64_t IntelligenceElement.Section.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1BBAB5A10();
  sub_1BBB84458();
  if (!v2)
  {
    v10 = v6;
    LOBYTE(v38) = 0;
    v11 = v5;
    v22 = sub_1BBB841A8();
    LOBYTE(v38) = 1;
    v21 = sub_1BBB841A8();
    LOBYTE(v34) = 2;
    sub_1BBAB7348();
    sub_1BBB841B8();
    v13 = v38;
    v37 = 3;
    sub_1BBAB80F0();
    sub_1BBB84178();
    v34 = v38;
    v35 = v39;
    *v36 = v40[0];
    *&v36[9] = *(v40 + 9);
    v30 = 4;
    sub_1BBB84178();
    v27 = v31;
    v28 = v32;
    *v29 = v33[0];
    *&v29[9] = *(v33 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    v25 = 5;
    sub_1BBAA0B24(&qword_1EBC7ABA0, sub_1BBAB80F0);
    sub_1BBB841B8();
    (*(v10 + 8))(v8, v11);
    *(v24 + 7) = v34;
    *(&v24[1] + 7) = v35;
    *(&v24[2] + 7) = *v36;
    v24[3] = *&v36[9];
    *(v23 + 7) = v27;
    v14 = v26;
    *(&v23[1] + 7) = v28;
    *(&v23[2] + 7) = *v29;
    v23[3] = *&v29[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
    v15 = swift_allocObject();
    v16 = v24[1];
    *(v15 + 33) = v24[0];
    *(v15 + 49) = v16;
    v17 = v24[3];
    *(v15 + 65) = v24[2];
    *(v15 + 81) = v17;
    v18 = v23[1];
    *(v15 + 97) = v23[0];
    *(v15 + 113) = v18;
    v19 = v23[3];
    *(v15 + 129) = v23[2];
    v20 = v21;
    *(v15 + 16) = v22;
    *(v15 + 24) = v20;
    *(v15 + 32) = v13;
    *(v15 + 145) = v19;
    *(v15 + 168) = v14;
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

unint64_t sub_1BBAB8044()
{
  result = qword_1EBC7B0B8;
  if (!qword_1EBC7B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0B8);
  }

  return result;
}

unint64_t sub_1BBAB809C()
{
  result = qword_1EBC7B0C0;
  if (!qword_1EBC7B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0C0);
  }

  return result;
}

unint64_t sub_1BBAB80F0()
{
  result = qword_1EBC7AC90;
  if (!qword_1EBC7AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AC90);
  }

  return result;
}

unint64_t sub_1BBAB8144()
{
  result = qword_1EBC7AD50;
  if (!qword_1EBC7AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD50);
  }

  return result;
}

uint64_t IntelligenceElement.CollectionItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = _s14CollectionItemV7StorageVMa();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C818);
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA0970();
  sub_1BBB84458();
  if (!v2)
  {
    v20 = v6;
    v21 = v7;
    v10 = sub_1BBB83548();
    v22 = &v19;
    v11 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v10);
    v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = 0;
    sub_1BBAA0A74(&unk_1EBC7AE38);
    v14 = v24;
    sub_1BBB841B8();
    v26 = 1;
    v19 = sub_1BBB841A8();
    v25 = 2;
    v16 = sub_1BBB84148();
    (*(v21 + 8))(v9, v14);
    v17 = v20;
    (*(v11 + 32))(v20, v13, v10);
    *(v17 + *(v4 + 20)) = v19;
    *(v17 + *(v4 + 24)) = v16 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C808);
    v18 = swift_allocObject();
    sub_1BBAB8664(v17, v18 + *(*v18 + 88));
    *v23 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBAB8520()
{
  result = sub_1BBB83548();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BBAB85B8()
{
  result = qword_1EBC7B180;
  if (!qword_1EBC7B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B180);
  }

  return result;
}

unint64_t sub_1BBAB8610()
{
  result = qword_1EBC7B188;
  if (!qword_1EBC7B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B188);
  }

  return result;
}

uint64_t sub_1BBAB8664(uint64_t a1, uint64_t a2)
{
  v4 = _s14CollectionItemV7StorageVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBAB86C8()
{
  result = qword_1EBC7ACF0;
  if (!qword_1EBC7ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACF0);
  }

  return result;
}

uint64_t IntelligenceElement.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v4 = _s4TextV7StorageVMa();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D338);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30[-v9];
  v11 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1BBA8DD24();
  sub_1BBB84458();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v42 = v4;
  v43 = v6;
  v44 = v8;
  LOBYTE(v47) = 0;
  sub_1BBAAB454();
  sub_1BBB841B8();
  v41 = v10;
  v12 = v49;
  v13 = sub_1BBB83148();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BBB82E68();
  swift_allocObject();
  sub_1BBB82E58();
  sub_1BBAB8DB8();
  sub_1BBB82E38();
  v38 = v16;
  v39 = v14;
  v40 = v30;

  LOBYTE(v47) = 2;
  sub_1BBB58A98();
  sub_1BBB84178();
  if (v49 == 3)
  {
    v17 = 0;
  }

  else
  {
    v17 = v49;
  }

  LOBYTE(v49) = 3;
  v54 = sub_1BBB84148();
  LOBYTE(v49) = 4;
  v37 = sub_1BBB84148();
  v55 = 1;
  sub_1BBB58AEC();
  sub_1BBB84178();
  v19 = v38;
  v36 = v17;
  v34 = v50;
  v35 = v49;
  v33 = v51;
  v32 = v52;
  v31 = v53;
  v20 = v39;
  v21 = v43;
  (*(v39 + 16))(v43, v38, v13);
  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  v47 = xmmword_1ED6BDCF0;
  v48[0] = xmmword_1ED6BDD00;
  *(v48 + 10) = *(&xmmword_1ED6BDD00 + 10);
  sub_1BBA885E8(v12, *(&v12 + 1));
  (*(v20 + 8))(v19, v13);
  (*(v44 + 8))(v41, v7);
  v22 = v42;
  v23 = v21 + v42[5];
  v24 = v34;
  *v23 = v35;
  *(v23 + 16) = v24;
  v25 = v32;
  *(v23 + 32) = v33;
  *(v23 + 40) = v25;
  *(v23 + 48) = v31;
  *(v21 + v22[6]) = v36;
  *(v21 + v22[7]) = v54 & 1;
  *(v21 + v22[8]) = v37 & 1;
  *(v21 + v22[9]) = 0;
  v26 = (v21 + v22[10]);
  v27 = v48[0];
  *v26 = v47;
  v26[1] = v27;
  *(v26 + 26) = *(v48 + 10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2E0);
  v28 = swift_allocObject();
  sub_1BBB5889C(v21, v28 + *(*v28 + 88));
  v29 = v46;
  *v45 = v28;
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

unint64_t sub_1BBAB8DB8()
{
  result = qword_1EBC7B448;
  if (!qword_1EBC7B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B448);
  }

  return result;
}

BOOL sub_1BBAB8E74(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t getEnumTagSinglePayload for IntelligenceSnapshotConfiguration.SnapshotTarget.LayerSnapshotTarget(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntelligenceSnapshotConfiguration.SnapshotTarget.LayerSnapshotTarget(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1BBAB8F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1BBAB903C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBAB90FC()
{
  v1 = *(type metadata accessor for IntelligenceImageProcessor.Input(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for IntelligenceImageProcessor.Options(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  v9 = (v0 + v3);
  type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v11 = sub_1BBB833F8();
    (*(*(v11 - 8) + 8))(v9, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B840);
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_6;
    }
  }

LABEL_6:
  v12 = v0 + v7;
  v13 = type metadata accessor for IntelligenceFile.Attributes(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v7, 1, v13))
  {
    v25 = v8;
    v26 = v7;
    v14 = sub_1BBB83658();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v12, 1, v14))
    {
      (*(v15 + 8))(v12, v14);
    }

    v16 = *(v13 + 24);
    v17 = sub_1BBB83498();
    v24 = *(v17 - 8);
    v18 = *(v24 + 48);
    if (!v18(v12 + v16, 1, v17))
    {
      (*(v24 + 8))(v12 + v16, v17);
    }

    v19 = *(v13 + 28);
    v20 = v18(v12 + v19, 1, v17);
    v8 = v25;
    v7 = v26;
    if (!v20)
    {
      (*(v24 + 8))(v12 + v19, v17);
    }
  }

  v21 = *(v5 + 24);
  v22 = sub_1BBB83848();
  (*(*(v22 - 8) + 8))(v12 + v21, v22);

  return MEMORY[0x1EEE6BDD0](v0, ((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t sub_1BBAB94B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BBAB951C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1BBAB958C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B848);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1BBB83848();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BBAB96BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B848);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1BBB83848();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BBAB97EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBAB9880@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v10[2] = v3[3];
  v10[3] = v6;
  v10[0] = v4;
  v10[1] = v5;
  v7 = v3[2];
  *a2 = v3[1];
  a2[1] = v7;
  a2[2] = v3[3];
  a2[3] = v6;
  return sub_1BBACBF34(v10, v9);
}

uint64_t sub_1BBAB98EC(__int128 *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_1BBACBF34(v6, &v5);
  return IntelligenceElement.RemoteProcess.processInfo.setter(a1);
}

uint64_t sub_1BBAB993C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1BBAB9988(uint64_t *a1)
{
  v2 = *a1;

  return IntelligenceElement.RemoteProcess.remoteContext.setter(&v2);
}

uint64_t sub_1BBAB99F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1BBAB9A60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1BBAB9AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1BBAB9B50@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *&v12[9] = *(v3 + 57);
  v7 = *&v12[9];
  v11[1] = v5;
  *v12 = v6;
  v11[0] = v4;
  *(a2 + 41) = v7;
  v8 = v3[2];
  *a2 = v3[1];
  a2[1] = v8;
  a2[2] = v3[3];
  return sub_1BBA9EDF0(v11, v10);
}

uint64_t sub_1BBAB9BE0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[6];
  v9[0] = v3[5];
  v9[1] = v4;
  v10[0] = v3[7];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 121);
  v6 = *(v10 + 9);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t sub_1BBAB9C68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 137);
  return result;
}

uint64_t sub_1BBAB9CE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 138);
  return result;
}

uint64_t sub_1BBAB9D68()
{
  v1 = type metadata accessor for IntelligenceFile.Attributes(0);
  v19 = *(*(v1 - 8) + 80);
  v16 = *(*(v1 - 8) + 64);
  v18 = sub_1BBB833F8();
  v2 = *(v18 - 8);
  v3 = *(v2 + 80);
  v15 = *(v2 + 64);

  v17 = (v19 + 159) & ~v19;
  v4 = v0 + v17;
  v5 = sub_1BBB83658();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v17, 1, v5))
  {
    (*(v6 + 8))(v4, v5);
  }

  v7 = *(v1 + 24);
  v8 = sub_1BBB83498();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = *(v1 + 28);
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = (v17 + v16 + v3) & ~v3;
  v13 = (v15 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v12, v18);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 16, v19 | v3 | 7);
}

uint64_t sub_1BBABA01C()
{
  v1 = type metadata accessor for IntelligenceFile.Attributes(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 159) & ~v2;
  v13 = *(*(v1 - 8) + 64);

  v4 = v0 + v3;
  v5 = sub_1BBB83658();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = *(v1 + 24);
  v8 = sub_1BBB83498();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = *(v1 + 28);
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((((v13 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1BBABA25C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return IntelligenceElement.ImageMedia.textDescription.setter(v1, v2);
}

uint64_t sub_1BBABA2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 88);
  swift_beginAccess();
  return sub_1BBA8BC5C(v3 + v4, a2, &qword_1EBC7B7E8);
}

uint64_t sub_1BBABA320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for IntelligenceFile.Attributes(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1BBABA454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for IntelligenceFile.Attributes(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1BBABA588()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBABA5FC@<X0>(_BYTE *a1@<X8>)
{
  result = IntelligenceElement.exceedsVisibleSubelementLimit.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BBABA648@<X0>(_BYTE *a1@<X8>)
{
  result = IntelligenceElement.exceedsOffscreenSubelementLimit.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1BBABA694@<X0>(unint64_t *a1@<X8>)
{
  result = IntelligenceElement.extraAttributes.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBABA6EC@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceElement.customTypeNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBABA744@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceElement.customControllerTypeNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBABA79C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceElement.appEntityIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBABA7E0@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceElement.appIntentIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1BBABA824@<D0>(uint64_t a1@<X8>)
{
  IntelligenceElement.loadableAppIntentsPayload.getter(&v5);
  v2 = v6;
  v3 = v7;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1BBABA874@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceElement.appIntentsPayload.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBABA8A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BBAE593C(*a1, v2);
  return IntelligenceElement.appIntentsPayload.setter(v1, v2);
}

uint64_t sub_1BBABA8E4@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceElement.appIntentsPayloadDebugDescription.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BBABA93C@<X0>(uint64_t *a1@<X8>)
{
  result = IntelligenceElement.accessibilityLabel.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBABA9B0()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1BBABAA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBAFAE30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBABAA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BBABAB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BBABAC70@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BBABAC88@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 24);
  *a2 = *(result + 16);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BBABACA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BBABACB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

double sub_1BBABACF0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 96);
  *a2 = result;
  return result;
}

uint64_t sub_1BBABAD00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1BBABADC8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBABAEC8(_OWORD *a1)
{
  v2 = a1[7];
  v8[6] = a1[6];
  v9[0] = v2;
  *(v9 + 15) = *(a1 + 127);
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v4 = a1[5];
  v8[4] = a1[4];
  v8[5] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1BBA94F7C(v8, &v7);
  return IntelligenceFragment.RemoteContext.request.setter(a1);
}

uint64_t sub_1BBABAF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IntelligenceFragment.RemoteID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BBABB018(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 112) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IntelligenceFragment.RemoteID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBABB0BC()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1BBABB11C@<X0>(uint64_t *a1@<X8>)
{
  sub_1BBB127F8();
  result = sub_1BBB83EF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBABB178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IntelligenceFragment();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BBABB244(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IntelligenceFragment();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BBABB2FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBABB33C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1BBABB3AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1BBABB41C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1BBABB49C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1BBABB584@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBC7C528;
  return result;
}

uint64_t sub_1BBABB5D0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EBC7C528 = v1;
  return result;
}

uint64_t sub_1BBABB6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBB83548();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BBABB798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BBB83548();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BBABB850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1BBABB8C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1BBABB90C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return IntelligenceElement.Table.Column.identifier.setter(v1, v2);
}

uint64_t sub_1BBABB94C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1BBABB9BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = v3[3];
  v6 = v3[4];
  *&v11[9] = *(v3 + 89);
  v4 = *&v11[9];
  v10[0] = v5;
  v10[1] = v6;
  *v11 = v3[5];
  v7 = *v11;
  a2[1] = v6;
  a2[2] = v7;
  *(a2 + 41) = v4;
  *a2 = v3[3];
  return sub_1BBA9EDF0(v10, v9);
}

uint64_t sub_1BBABBA30(__int128 *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  sub_1BBA9EDF0(v5, &v4);
  return IntelligenceElement.Table.Column.header.setter(a1);
}

__n128 sub_1BBABBAA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 80) = v2;
  v3 = *(a1 + 120);
  *(a2 + 96) = *(a1 + 104);
  *(a2 + 112) = v3;
  v4 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v4;
  result = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

__n128 sub_1BBABBAD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 64);
  *(a2 + 88) = v2;
  v3 = *(a1 + 112);
  *(a2 + 104) = *(a1 + 96);
  *(a2 + 120) = v3;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 40) = result;
  *(a2 + 56) = v6;
  return result;
}

uint64_t sub_1BBABBB0C@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v2 = *(result + 16);
  if (*(result + 32))
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unsigned int *sub_1BBABBB24(unsigned int *result, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    v2 = *result;
    v3 = *(a2 + 24);
    result = sub_1BBB2EBAC(*(a2 + 16), v3, 0);
    *(a2 + 16) = v2;
    *(a2 + 24) = v3;
    *(a2 + 32) = 0;
  }

  return result;
}

uint64_t sub_1BBABBB78@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  if (*(result + 32))
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t *sub_1BBABBB90(uint64_t *result, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    v2 = *result;
    v3 = *(a2 + 16);
    v4 = v3;
    result = sub_1BBB2EBAC(v3, *(a2 + 24), 0);
    *(a2 + 16) = v4;
    *(a2 + 24) = v2;
    *(a2 + 32) = 0;
  }

  return result;
}

__n128 sub_1BBABBBE8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 192);
  *(a2 + 64) = *(a1 + 176);
  *(a2 + 80) = v2;
  v3 = *(a1 + 224);
  *(a2 + 96) = *(a1 + 208);
  *(a2 + 112) = v3;
  v4 = *(a1 + 128);
  *a2 = *(a1 + 112);
  *(a2 + 16) = v4;
  result = *(a1 + 144);
  v6 = *(a1 + 160);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

__n128 sub_1BBABBC0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  *(a2 + 176) = *(a1 + 64);
  *(a2 + 192) = v2;
  v3 = *(a1 + 112);
  *(a2 + 208) = *(a1 + 96);
  *(a2 + 224) = v3;
  v4 = *(a1 + 16);
  *(a2 + 112) = *a1;
  *(a2 + 128) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 144) = result;
  *(a2 + 160) = v6;
  return result;
}

uint64_t sub_1BBABBC3C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BBABBC94()
{

  return MEMORY[0x1EEE6BDD0](v0, 159, 7);
}

uint64_t sub_1BBABBCDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 25);
  v5 = *a1;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  return IntelligenceElement.Document.paginationInfo.setter(&v5);
}

uint64_t sub_1BBABBD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8DocumentV15InternalBackingOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BBABBE24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s8DocumentV15InternalBackingOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

id sub_1BBABBEDC@<X0>(void *a1@<X8>)
{
  result = UIIntelligenceElementCollector.visitedViews.getter();
  *a1 = result;
  return result;
}

void sub_1BBABBF08(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews);
  *(*a2 + OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews) = *a1;
  v3 = v2;
}

uint64_t sub_1BBABBF58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1BBABBFD0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 56);
  *&v12[9] = *(v3 + 65);
  v7 = *&v12[9];
  v11[1] = v5;
  *v12 = v6;
  v11[0] = v4;
  *(a2 + 41) = v7;
  v8 = *(v3 + 40);
  *a2 = *(v3 + 24);
  a2[1] = v8;
  a2[2] = *(v3 + 56);
  return sub_1BBA9EDF0(v11, v10);
}

uint64_t sub_1BBABC068@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  v9[0] = *(v3 + 88);
  v9[1] = v4;
  v10[0] = *(v3 + 120);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 129);
  v6 = *(v10 + 9);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t sub_1BBABC0F4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 168);
  v9[0] = *(v3 + 152);
  v9[1] = v4;
  v10[0] = *(v3 + 184);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 193);
  v6 = *(v10 + 9);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t sub_1BBABC180@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 232);
  v9[0] = *(v3 + 216);
  v9[1] = v4;
  v10[0] = *(v3 + 248);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 257);
  v6 = *(v10 + 9);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t sub_1BBABC210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1BBABC280@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1BBABC2F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1BBABC370@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v12[0] = *(v3 + 72);
  v5 = v12[0];
  v6 = *(v3 + 56);
  *(v12 + 9) = *(v3 + 81);
  v7 = *(v12 + 9);
  v11[0] = v4;
  v11[1] = v6;
  a2[2] = v5;
  *(a2 + 41) = v7;
  v8 = *(v3 + 56);
  *a2 = *(v3 + 40);
  a2[1] = v8;
  return sub_1BBA9EDF0(v11, v10);
}

uint64_t sub_1BBABC404@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v9[0] = *(v3 + 104);
  v9[1] = v4;
  v10[0] = *(v3 + 136);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 145);
  v6 = *(v10 + 9);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t sub_1BBABC490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 168);
}

uint64_t sub_1BBABC508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BBABC580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1BBABC69C()
{
  sub_1BBB586AC();
  sub_1BBB83248();
  __break(1u);
}

uint64_t sub_1BBABC7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBB83148();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

uint64_t sub_1BBABC8A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BBB83148();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 1);
  }

  return result;
}

uint64_t sub_1BBABC968()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 129, 7);
}

uint64_t sub_1BBABC9DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(**a1 + 88);
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1BBABCA78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  result = swift_beginAccess();
  *a2 = *(v3 + 1);
  return result;
}

uint64_t sub_1BBABCB14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return IntelligenceElement.Screen.identifier.setter(v1, v2);
}

double sub_1BBABCB7C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  result = *(v3 + 64);
  *a2 = result;
  return result;
}

uint64_t sub_1BBABCC08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BBAE593C(*a1, v2);
  return IntelligenceElement.Screen.encodedFBSDisplayIdentity.setter(v1, v2);
}

uint64_t sub_1BBABCC50(_OWORD *a1)
{
  v2 = a1[13];
  v11[12] = a1[12];
  v11[13] = v2;
  v11[14] = a1[14];
  v3 = a1[9];
  v11[8] = a1[8];
  v11[9] = v3;
  v4 = a1[11];
  v11[10] = a1[10];
  v11[11] = v4;
  v5 = a1[5];
  v11[4] = a1[4];
  v11[5] = v5;
  v6 = a1[7];
  v11[6] = a1[6];
  v11[7] = v6;
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  v8 = a1[3];
  v11[2] = a1[2];
  v11[3] = v8;
  sub_1BBA8BC5C(v11, &v10, &qword_1EBC7D440);
  return IntelligenceElement.Screen.snapshotConfiguration.setter(a1);
}

uint64_t sub_1BBABCCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1BBABCDB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BBABCFEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1BBABD05C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1BBABD0CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1BBABD13C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1BBABD1AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1BBABD224@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

__n128 sub_1BBABD2C8@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

__n128 sub_1BBABD338@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 56);
  *a2 = result;
  return result;
}

__n128 sub_1BBABD3A8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 72);
  v5 = *(v3 + 88);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1BBABD3F4(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return IntelligenceElement.Scrollable.contentInsets.setter(v3);
}

uint64_t sub_1BBABD42C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_1BBABD4AC()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1BBABD560(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_1BBA8BC5C(v6, &v5, &qword_1EBC7BBE0);
  return IntelligenceElement.Window.appProcessInfo.setter(a1);
}

uint64_t sub_1BBABD60C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return IntelligenceElement.Window.identifier.setter(v1, v2);
}

uint64_t sub_1BBABD6F0(_OWORD *a1)
{
  v2 = a1[13];
  v11[12] = a1[12];
  v11[13] = v2;
  v11[14] = a1[14];
  v3 = a1[9];
  v11[8] = a1[8];
  v11[9] = v3;
  v4 = a1[11];
  v11[10] = a1[10];
  v11[11] = v4;
  v5 = a1[5];
  v11[4] = a1[4];
  v11[5] = v5;
  v6 = a1[7];
  v11[6] = a1[6];
  v11[7] = v6;
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  v8 = a1[3];
  v11[2] = a1[2];
  v11[3] = v8;
  sub_1BBA8BC5C(v11, &v10, &qword_1EBC7D440);
  return IntelligenceElement.Window.snapshotConfiguration.setter(a1);
}

uint64_t sub_1BBABD78C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  j__swift_retain();
  return IntelligenceElement.Window.windowContentGeneratedPDF.setter(&v3);
}

uint64_t sub_1BBABD7D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[9];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1BBABD924(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

id _UIIntelligenceDecodeUserActivity(void *a1)
{
  v1 = MEMORY[0x1E696B090];
  v2 = a1;
  v3 = [[v1 alloc] _initWithUserActivityData:v2];

  return v3;
}

uint64_t IntelligenceElement.Axis.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1BBA86A94((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x746E6F7A69726F68;
  *(v5 + 5) = 0xEA00000000006C61;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1BBA86A94((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6C61636974726576;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v9 = sub_1BBB83938();
  v11 = v10;

  MEMORY[0x1BFB16150](v9, v11);

  MEMORY[0x1BFB16150](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1BBABDD6C()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBABDDB4()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

void *sub_1BBABDE24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1BBABDE50@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BBABE088()
{
  v0 = sub_1BBB83A18();
  v1 = MEMORY[0x1BFB161B0](v0);

  return v1;
}

uint64_t sub_1BBABE0C4()
{
  sub_1BBB83A18();
  sub_1BBB83AC8();
}

uint64_t sub_1BBABE118()
{
  sub_1BBB83A18();
  sub_1BBB843D8();
  sub_1BBB83AC8();
  v0 = sub_1BBB84438();

  return v0;
}

uint64_t sub_1BBABE194(uint64_t a1, id *a2)
{
  result = sub_1BBB839F8();
  *a2 = 0;
  return result;
}

uint64_t sub_1BBABE20C(uint64_t a1, id *a2)
{
  v3 = sub_1BBB83A08();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BBABE28C@<X0>(uint64_t *a1@<X8>)
{
  sub_1BBB83A18();
  v2 = sub_1BBB839E8();

  *a1 = v2;
  return result;
}

uint64_t sub_1BBABE448()
{
  sub_1BBB843D8();
  swift_getWitnessTable();
  sub_1BBB835B8();
  return sub_1BBB84438();
}

uint64_t sub_1BBABE4AC()
{
  swift_getWitnessTable();

  return sub_1BBB835A8();
}

uint64_t sub_1BBABE518()
{
  v0 = sub_1BBB83A18();
  v2 = v1;
  if (v0 == sub_1BBB83A18() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BBB842F8();
  }

  return v5 & 1;
}

uint64_t sub_1BBABE5A0()
{
  swift_getWitnessTable();

  return sub_1BBB835A8();
}

uint64_t sub_1BBABE60C()
{
  swift_getWitnessTable();

  return sub_1BBB835A8();
}

uint64_t sub_1BBABE678@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BBB839E8();

  *a1 = v2;
  return result;
}

uint64_t sub_1BBABE6C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BBB83A18();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBABE6EC(uint64_t a1)
{
  v2 = sub_1BBABEA40(&qword_1EBC7B758, type metadata accessor for URLResourceKey);
  v3 = sub_1BBABEA40(&unk_1EBC7B760, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1BBABE7B0()
{
  result = qword_1EBC7B2B8;
  if (!qword_1EBC7B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B2B8);
  }

  return result;
}

unint64_t sub_1BBABE804()
{
  result = qword_1EBC7B480;
  if (!qword_1EBC7B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B480);
  }

  return result;
}

unint64_t sub_1BBABE85C()
{
  result = qword_1EBC7B2A8;
  if (!qword_1EBC7B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B2A8);
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
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

uint64_t sub_1BBABE900(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15AuditTokenErrorOwet(uint64_t a1, int a2)
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

uint64_t _s15AuditTokenErrorOwst(uint64_t result, int a2, int a3)
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

uint64_t sub_1BBABEA40(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1BBABEBA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B5F8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1BBABECD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B658);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_1BBABEDF8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1BBABEFE0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B630);
  v10 = *(sub_1BBB83658() - 8);
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
  v15 = *(sub_1BBB83658() - 8);
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

char *sub_1BBABF1B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1BBABF32C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBABF34C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

uint64_t IntelligenceElement.Image.name.getter()
{
  v1 = (*v0 + *(**v0 + 88));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BBABF514@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 88));
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t IntelligenceElement.Image.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = _s5ImageV7StorageVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  v9 = *(**v2 + 88);
  swift_beginAccess();
  sub_1BBABF6F0(v8 + v9, v7);

  *v7 = a1;
  v7[1] = a2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v2;
    v11 = *(*v10 + 88);
    swift_beginAccess();
    sub_1BBABF754(v7, v10 + v11);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D0);
    v13 = swift_allocObject();
    sub_1BBAB441C(v7, v13 + *(*v13 + 88), _s5ImageV7StorageVMa);

    *v2 = v13;
  }

  return result;
}

uint64_t sub_1BBABF6F0(uint64_t a1, uint64_t a2)
{
  v4 = _s5ImageV7StorageVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBABF754(uint64_t a1, uint64_t a2)
{
  v4 = _s5ImageV7StorageVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*IntelligenceElement.Image.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (*v1 + *(**v1 + 88));
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_1BBABF868;
}

uint64_t IntelligenceElement.Image.textDescription.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1BBABF8E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t IntelligenceElement.Image.textDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = _s5ImageV7StorageVMa();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  v9 = *(**v2 + 88);
  swift_beginAccess();
  sub_1BBABF6F0(v8 + v9, v7);

  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v2;
    v11 = *(*v10 + 88);
    swift_beginAccess();
    sub_1BBABF754(v7, v10 + v11);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D0);
    v13 = swift_allocObject();
    sub_1BBAB441C(v7, v13 + *(*v13 + 88), _s5ImageV7StorageVMa);

    *v2 = v13;
  }

  return result;
}

void (*IntelligenceElement.Image.textDescription.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v4 + 24) = *(v5 + 16);
  *(v4 + 32) = v6;

  return sub_1BBABFB74;
}

void sub_1BBABFB8C(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {

    a3(v5, v6);
  }

  else
  {
    a3(*(*a1 + 24), v6);
  }

  free(v4);
}

uint64_t IntelligenceElement.Image.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v13 = _s5ImageV7StorageVMa();
  sub_1BBA8BC5C(v12 + *(v13 + 24), v11, &qword_1EBC7B7E8);
  sub_1BBA8BC5C(v11, v8, &qword_1EBC7B7E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v8;
    v15 = v14 + *(*v14 + *MEMORY[0x1E69E6B68] + 16);
    v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v14 + v16));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F0);
    sub_1BBA8BC5C(v15 + *(v17 + 28), v5, &qword_1EBC7B7D8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
    v19 = *(*(v18 - 8) + 48);
    if (v19(v5, 1, v18) == 1)
    {
      sub_1BBA8BC5C(v15 + *(v17 + 32), a1, &qword_1EBC7B7F8);
      if (v19(v5, 1, v18) != 1)
      {
        sub_1BBA8BCC4(v5, &qword_1EBC7B7D8);
      }
    }

    else
    {
      sub_1BBAA6758(v5, a1, &qword_1EBC7B7F8);
    }

    os_unfair_lock_unlock((v14 + v16));
  }

  else
  {
    sub_1BBAA6758(v8, a1, &qword_1EBC7B7F8);
  }

  return sub_1BBA8BCC4(v11, &qword_1EBC7B7E8);
}

uint64_t sub_1BBABFF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v8 = _s5ImageV7StorageVMa();
  sub_1BBA8BC5C(v7 + *(v8 + 24), v6, &qword_1EBC7B7E8);
  sub_1BBAC030C(a2);
  return sub_1BBA8BCC4(v6, &qword_1EBC7B7E8);
}

uint64_t sub_1BBAC0070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1BBA8BC5C(a1, &v9 - v6, &qword_1EBC7B7F8);
  sub_1BBA8BC5C(v7, v4, &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  IntelligenceElement.Image.loadableImage.setter(v4);
  return sub_1BBA8BCC4(v7, &qword_1EBC7B7F8);
}

uint64_t IntelligenceElement.Image.image.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBA8BC5C(a1, &v6 - v3, &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  IntelligenceElement.Image.loadableImage.setter(v4);
  return sub_1BBA8BCC4(a1, &qword_1EBC7B7F8);
}

uint64_t IntelligenceElement.Image.loadableImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = _s5ImageV7StorageVMa();
  return sub_1BBA8BC5C(v3 + *(v4 + 24), a1, &qword_1EBC7B7E8);
}

uint64_t sub_1BBAC030C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v15 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  MEMORY[0x1EEE9AC00]();
  v7 = (&v15 - v6);
  sub_1BBA8BC5C(v2, &v15 - v6, &qword_1EBC7B7E0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1BBAA6758(v7, a1, &qword_1EBC7B7F8);
  }

  v8 = *v7;
  v9 = v8 + *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F0);
  sub_1BBA8BC5C(v9 + *(v11 + 28), v5, &qword_1EBC7B7D8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v5, 1, v12) == 1)
  {
    sub_1BBA8BC5C(v9 + *(v11 + 32), a1, &qword_1EBC7B7F8);
    if (v13(v5, 1, v12) != 1)
    {
      sub_1BBA8BCC4(v5, &qword_1EBC7B7D8);
    }
  }

  else
  {
    sub_1BBAA6758(v5, a1, &qword_1EBC7B7F8);
  }

  os_unfair_lock_unlock((v8 + v10));
}

uint64_t sub_1BBAC05AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B818);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v17 - v8);
  sub_1BBA8BC5C(v2, &v17 - v8, &qword_1EBC7B820);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1BBAA6758(v9, a1, &qword_1EBC7B830);
  }

  v10 = *v9;
  v11 = v10 + *(*v10 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(*v10 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v10 + v12));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B828);
  sub_1BBA8BC5C(v11 + *(v13 + 28), v6, &qword_1EBC7B818);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v6, 1, v14) == 1)
  {
    sub_1BBA8BC5C(v11 + *(v13 + 32), a1, &qword_1EBC7B830);
    if (v15(v6, 1, v14) != 1)
    {
      sub_1BBA8BCC4(v6, &qword_1EBC7B818);
    }
  }

  else
  {
    sub_1BBAA6758(v6, a1, &qword_1EBC7B830);
  }

  os_unfair_lock_unlock((v10 + v12));
}

uint64_t IntelligenceElement.Image.loadableImage.setter(uint64_t a1)
{
  v3 = _s5ImageV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBABF6F0(v7 + v8, v6);
  sub_1BBAC1E64(a1, &v6[*(v4 + 32)]);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBABF754(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D0);
    v12 = swift_allocObject();
    sub_1BBAB441C(v6, v12 + *(*v12 + 88), _s5ImageV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.Image.image.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[6] = v10;
  v12 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v13 = _s5ImageV7StorageVMa();
  sub_1BBA8BC5C(v12 + *(v13 + 24), v8, &qword_1EBC7B7E8);
  sub_1BBAC030C(v11);
  sub_1BBA8BCC4(v8, &qword_1EBC7B7E8);
  return sub_1BBAC0B64;
}

void sub_1BBAC0B64(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    sub_1BBA8BC5C(*(*a1 + 48), v3, &qword_1EBC7B7F8);
    sub_1BBA8BC5C(v3, v5, &qword_1EBC7B7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
    swift_storeEnumTagMultiPayload();
    IntelligenceElement.Image.loadableImage.setter(v5);
    sub_1BBA8BCC4(v3, &qword_1EBC7B7F8);
  }

  else
  {
    sub_1BBA8BC5C(*(*a1 + 48), v5, &qword_1EBC7B7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
    swift_storeEnumTagMultiPayload();
    IntelligenceElement.Image.loadableImage.setter(v5);
  }

  sub_1BBA8BCC4(v4, &qword_1EBC7B7F8);
  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1BBAC0CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = _s5ImageV7StorageVMa();
  return sub_1BBA8BC5C(v3 + *(v4 + 24), a2, &qword_1EBC7B7E8);
}

uint64_t sub_1BBAC0D2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBA8BC5C(a1, &v6 - v3, &qword_1EBC7B7E8);
  return IntelligenceElement.Image.loadableImage.setter(v4);
}

void (*IntelligenceElement.Image.loadableImage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v10 = _s5ImageV7StorageVMa();
  sub_1BBA8BC5C(v9 + *(v10 + 24), v8, &qword_1EBC7B7E8);
  return sub_1BBAC0F08;
}

void sub_1BBAC0F08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1BBA8BC5C(*(*a1 + 40), v3, &qword_1EBC7B7E8);
    IntelligenceElement.Image.loadableImage.setter(v3);
    sub_1BBA8BCC4(v4, &qword_1EBC7B7E8);
  }

  else
  {
    IntelligenceElement.Image.loadableImage.setter(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t IntelligenceElement.Image.init(name:textDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = _s5ImageV7StorageVMa();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20 - v15;
  v17 = type metadata accessor for IntelligenceImage(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1BBAA6758(v16, v13 + *(v11 + 32), &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  v13[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D0);
  v18 = swift_allocObject();
  result = sub_1BBAB441C(v13, v18 + *(*v18 + 88), _s5ImageV7StorageVMa);
  *a5 = v18;
  return result;
}

uint64_t sub_1BBAC1188(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6373654474786574;
  v4 = 0xEF6E6F6974706972;
  if (v2 != 1)
  {
    v3 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6373654474786574;
  v8 = 0xEF6E6F6974706972;
  if (*a2 != 1)
  {
    v7 = 0x6567616D69;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBAC1294()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAC1338()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBAC13C8()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBAC1468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAC29F4();
  *a1 = result;
  return result;
}

void sub_1BBAC1498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF6E6F6974706972;
  v5 = 0x6373654474786574;
  if (v2 != 1)
  {
    v5 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BBAC14F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBAC29F4();
  *a1 = result;
  return result;
}

uint64_t sub_1BBAC152C(uint64_t a1)
{
  v2 = sub_1BBA90EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBAC1568(uint64_t a1)
{
  v2 = sub_1BBA90EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Image.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v30 = _s5ImageV7StorageVMa();
  MEMORY[0x1EEE9AC00](v30);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B808);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA90EE0();
  sub_1BBB84458();
  if (v2)
  {
    v21 = a1;
  }

  else
  {
    v27 = a1;
    v11 = v8;
    v13 = v29;
    v12 = v30;
    v34 = 0;
    v14 = v31;
    v25 = sub_1BBB84138();
    v26 = v15;
    v33 = 1;
    v23 = sub_1BBB84138();
    v24 = v16;
    v32 = 2;
    sub_1BBA9107C(&qword_1EBC7AD68);
    sub_1BBB841B8();
    (*(v13 + 8))(v10, v14);
    sub_1BBAA6758(v11, v5 + *(v12 + 24), &qword_1EBC7B7E8);
    v18 = v26;
    *v5 = v25;
    v5[1] = v18;
    v19 = v24;
    v5[2] = v23;
    v5[3] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D0);
    v20 = swift_allocObject();
    sub_1BBAB441C(v5, v20 + *(*v20 + 88), _s5ImageV7StorageVMa);
    v21 = v27;
    *v28 = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t IntelligenceElement.Image.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for IntelligenceImage(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*v0 + *(**v0 + 88));
  swift_beginAccess();
  v11 = v10[1];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = *v10;
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = *v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_9:
    v16 = MEMORY[0x1E69E7CC0];
    v20 = v10[3];
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v43 = 0x22203A656D616ELL;
  v44 = 0xE700000000000000;

  MEMORY[0x1BFB16150](v12, v11);

  MEMORY[0x1BFB16150](34, 0xE100000000000000);
  v14 = v43;
  v15 = v44;
  v16 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1BBA86A94((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[16 * v18];
  *(v19 + 4) = v14;
  *(v19 + 5) = v15;
  v20 = v10[3];
  if (v20)
  {
LABEL_10:
    v21 = v10[2];
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v43 = 0;
      v44 = 0xE000000000000000;

      sub_1BBB84028();

      v43 = 0xD000000000000012;
      v44 = 0x80000001BBB9AE60;
      MEMORY[0x1BFB16150](v21, v20);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v23 = v43;
      v24 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1BBA86A94(0, *(v16 + 2) + 1, 1, v16);
      }

      v26 = *(v16 + 2);
      v25 = *(v16 + 3);
      if (v26 >= v25 >> 1)
      {
        v16 = sub_1BBA86A94((v25 > 1), v26 + 1, 1, v16);
      }

      *(v16 + 2) = v26 + 1;
      v27 = &v16[16 * v26];
      *(v27 + 4) = v23;
      *(v27 + 5) = v24;
    }
  }

LABEL_18:
  v28 = _s5ImageV7StorageVMa();
  sub_1BBA8BC5C(v10 + *(v28 + 24), v3, &qword_1EBC7B7E8);
  sub_1BBAC030C(v6);
  sub_1BBA8BCC4(v3, &qword_1EBC7B7E8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BBA8BCC4(v6, &qword_1EBC7B7F8);
  }

  else
  {
    v29 = v41;
    sub_1BBAB441C(v6, v41, type metadata accessor for IntelligenceImage);
    v43 = 0x203A6567616D69;
    v44 = 0xE700000000000000;
    v30 = sub_1BBAFEABC();
    MEMORY[0x1BFB16150](v30);

    v31 = v43;
    v32 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1BBA86A94(0, *(v16 + 2) + 1, 1, v16);
    }

    v34 = *(v16 + 2);
    v33 = *(v16 + 3);
    if (v34 >= v33 >> 1)
    {
      v16 = sub_1BBA86A94((v33 > 1), v34 + 1, 1, v16);
    }

    sub_1BBAC2A40(v29, type metadata accessor for IntelligenceImage);
    *(v16 + 2) = v34 + 1;
    v35 = &v16[16 * v34];
    *(v35 + 4) = v31;
    *(v35 + 5) = v32;
  }

  v43 = 0x286567616D49;
  v44 = 0xE600000000000000;
  v42 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v36 = sub_1BBB83938();
  v38 = v37;

  MEMORY[0x1BFB16150](v36, v38);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v43;
}

uint64_t sub_1BBAC1E64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV5ImageV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for IntelligenceFile.Attributes(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v46 - v7;
  v8 = type metadata accessor for IntelligenceImage(0);
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B838);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v49 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - v21;
  v23 = *a2;
  v24 = (*a1 + *(**a1 + 88));
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];
  v27 = (v23 + *(*v23 + 88));
  swift_beginAccess();
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_21;
    }

    v29 = v25 == *v27 && v26 == v28;
    if (!v29 && (sub_1BBB842F8() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v28)
  {
    goto LABEL_21;
  }

  v30 = v24[3];
  v31 = v27[3];
  if (!v30)
  {
    if (!v31)
    {
      goto LABEL_17;
    }

LABEL_21:
    v37 = 0;
    return v37 & 1;
  }

  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = v24[2] == v27[2] && v30 == v31;
  if (!v32 && (sub_1BBB842F8() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v33 = _s5ImageV7StorageVMa();
  sub_1BBA8BC5C(v24 + *(v33 + 24), v14, &qword_1EBC7B7E8);
  sub_1BBAC030C(v22);
  sub_1BBA8BCC4(v14, &qword_1EBC7B7E8);
  sub_1BBA8BC5C(v27 + *(v33 + 24), v14, &qword_1EBC7B7E8);
  sub_1BBAC030C(v20);
  sub_1BBA8BCC4(v14, &qword_1EBC7B7E8);
  v34 = *(v10 + 48);
  v35 = v51;
  sub_1BBA8BC5C(v22, v51, &qword_1EBC7B7F8);
  sub_1BBA8BC5C(v20, v35 + v34, &qword_1EBC7B7F8);
  v36 = *(v50 + 48);
  if (v36(v35, 1, v8) == 1)
  {
    sub_1BBA8BCC4(v20, &qword_1EBC7B7F8);
    sub_1BBA8BCC4(v22, &qword_1EBC7B7F8);
    if (v36(v35 + v34, 1, v8) == 1)
    {
      sub_1BBA8BCC4(v35, &qword_1EBC7B7F8);
      v37 = 1;
      return v37 & 1;
    }

LABEL_25:
    sub_1BBA8BCC4(v35, &qword_1EBC7B838);
    v37 = 0;
    return v37 & 1;
  }

  v39 = v49;
  sub_1BBA8BC5C(v35, v49, &qword_1EBC7B7F8);
  if (v36(v35 + v34, 1, v8) == 1)
  {
    sub_1BBA8BCC4(v20, &qword_1EBC7B7F8);
    sub_1BBA8BCC4(v22, &qword_1EBC7B7F8);
    sub_1BBAC2A40(v39, type metadata accessor for IntelligenceImage);
    goto LABEL_25;
  }

  v40 = v48;
  sub_1BBAB441C(v35 + v34, v48, type metadata accessor for IntelligenceImage);
  v41 = sub_1BBB00EFC();
  v42 = sub_1BBB00EFC();
  v43 = sub_1BBADF440(v41, v42);

  if (v43)
  {
    v44 = v46;
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v46);
    v45 = v47;
    _s21UIIntelligenceSupport17IntelligenceImageV20sourceFileAttributesAA0cF0C0G0Vvg_0(v47);
    v37 = static IntelligenceFile.Attributes.== infix(_:_:)(v44, v45);
    sub_1BBAC2A40(v45, type metadata accessor for IntelligenceFile.Attributes);
    sub_1BBAC2A40(v44, type metadata accessor for IntelligenceFile.Attributes);
  }

  else
  {
    v37 = 0;
  }

  sub_1BBAC2A40(v40, type metadata accessor for IntelligenceImage);
  sub_1BBA8BCC4(v20, &qword_1EBC7B7F8);
  sub_1BBA8BCC4(v22, &qword_1EBC7B7F8);
  sub_1BBAC2A40(v39, type metadata accessor for IntelligenceImage);
  sub_1BBA8BCC4(v35, &qword_1EBC7B7F8);
  return v37 & 1;
}

uint64_t sub_1BBAC252C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B7F8);
    sub_1BBAC25B4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAC25B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntelligenceImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t _s5ImageVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s5ImageVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BBAC27B4()
{
  sub_1BBAC2838();
  if (v0 <= 0x3F)
  {
    sub_1BBAC2888();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BBAC2838()
{
  if (!qword_1ED6BE480)
  {
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BE480);
    }
  }
}

void sub_1BBAC2888()
{
  if (!qword_1ED6BDDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B7F8);
    v0 = type metadata accessor for IntelligenceElement.LoadableValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BDDA8);
    }
  }
}

unint64_t sub_1BBAC28F0()
{
  result = qword_1EBC7B810;
  if (!qword_1EBC7B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B810);
  }

  return result;
}

unint64_t sub_1BBAC2948()
{
  result = qword_1EBC7B3F8;
  if (!qword_1EBC7B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B3F8);
  }

  return result;
}

unint64_t sub_1BBAC29A0()
{
  result = qword_1EBC7B400;
  if (!qword_1EBC7B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B400);
  }

  return result;
}

uint64_t sub_1BBAC29F4()
{
  v0 = sub_1BBB84108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBAC2A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BBAC2AD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
  swift_storeEnumTagMultiPayload();
  v5 = a1;
}

uint64_t static IntelligenceImageProcessor.Input.fileURL(_:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (sub_1BBB832C8())
  {
    v8 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B840) + 48));
    v9 = sub_1BBB833F8();
    (*(*(v9 - 8) + 16))(a4, a1, v9);
    *v8 = a2;
    v8[1] = a3;
    type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1BBB84028();

    v11 = sub_1BBB832F8();
    MEMORY[0x1BFB16150](v11);

    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

void _s21UIIntelligenceSupport26IntelligenceImageProcessorV5InputV4hash4intoys6HasherVz_tF_0()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBAC78EC(v1, v4, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = *v4;
    MEMORY[0x1BFB16A50](0);
    type metadata accessor for CGImage(0);
    v7 = &unk_1EBC7BA00;
    v8 = type metadata accessor for CGImage;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v6 = *v4;
    MEMORY[0x1BFB16A50](1);
    type metadata accessor for IOSurfaceRef(0);
    v7 = &unk_1EBC7B9F8;
    v8 = type metadata accessor for IOSurfaceRef;
LABEL_5:
    sub_1BBACA7C8(v7, v8);
    sub_1BBB835B8();
    sub_1BBB83AC8();

    return;
  }

  v9 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B840) + 48) + 8);
  v10 = sub_1BBB833F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 32))(v14, v4, v10, v12);
  MEMORY[0x1BFB16A50](2);
  sub_1BBACB5A0();
  sub_1BBB83918();
  sub_1BBB84408();
  if (v9)
  {
    sub_1BBB83AC8();
  }

  (*(v11 + 8))(v14, v10);
}

uint64_t IntelligenceImageProcessor.Input.hashValue.getter()
{
  sub_1BBB843D8();
  _s21UIIntelligenceSupport26IntelligenceImageProcessorV5InputV4hash4intoys6HasherVz_tF_0();
  return sub_1BBB84438();
}

uint64_t sub_1BBAC2FB8()
{
  sub_1BBB843D8();
  _s21UIIntelligenceSupport26IntelligenceImageProcessorV5InputV4hash4intoys6HasherVz_tF_0();
  return sub_1BBB84438();
}

uint64_t sub_1BBAC2FF8()
{
  sub_1BBB843D8();
  _s21UIIntelligenceSupport26IntelligenceImageProcessorV5InputV4hash4intoys6HasherVz_tF_0();
  return sub_1BBB84438();
}

uint64_t IntelligenceImageProcessor.Options.imageRepresentations.getter()
{
  type metadata accessor for IntelligenceImageProcessor.Options(0);
}

uint64_t IntelligenceImageProcessor.Options.imageRepresentations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceImageProcessor.Options(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntelligenceImageProcessor.Options.processingQoS.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceImageProcessor.Options(0) + 24);
  v4 = sub_1BBB83848();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntelligenceImageProcessor.Options.processingQoS.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceImageProcessor.Options(0) + 24);
  v4 = sub_1BBB83848();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 IntelligenceImageProcessor.Options.OutputFileProperties.sandboxExtensionType.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 IntelligenceImageProcessor.Options.OutputFileProperties.sandboxExtensionType.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

uint64_t IntelligenceImageProcessor.Options.OutputFileProperties.StorageType.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t _s21UIIntelligenceSupport29IntelligenceCollectionRequestV012UserActivityD6OptionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

__n128 IntelligenceImageProcessor.Options.outputFileProperties.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceImageProcessor.Options(0) + 28);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  return result;
}

__n128 IntelligenceImageProcessor.Options.outputFileProperties.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = v1 + *(type metadata accessor for IntelligenceImageProcessor.Options(0) + 28);
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 33) = v4;
  return result;
}

double IntelligenceImageProcessor.Options.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceFile.Attributes(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for IntelligenceImageProcessor.Options(0);
  v4 = v3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBB85CE0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  if (qword_1ED6BDDC8 != -1)
  {
    swift_once();
  }

  memmove((inited + 48), &xmmword_1ED6BDDD0, 0x39uLL);
  *(inited + 112) = 72;
  if (qword_1ED6BEB10 != -1)
  {
    swift_once();
  }

  *(inited + 120) = qword_1ED6BEB18;
  *(inited + 128) = 0x3FE999999999999ALL;
  *(inited + 136) = 0;

  v6 = sub_1BBAC7278(inited);
  swift_setDeallocating();
  sub_1BBAC7878(inited + 32);
  *(a1 + v4) = v6;
  v7 = v3[6];
  v8 = *MEMORY[0x1E69E7F88];
  v9 = sub_1BBB83848();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = a1 + v3[7];
  result = 0.0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  return result;
}

uint64_t IntelligenceImageProcessor.ImageProcessingError.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t static IntelligenceImageProcessor.process(_:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v31 = sub_1BBB83828();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BBB83878();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntelligenceImageProcessor.Options(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = type metadata accessor for IntelligenceImageProcessor.Input(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBAB0F08(0, &qword_1ED6BF090);
  v28 = sub_1BBB83DD8();
  sub_1BBAC78EC(v27, v16, type metadata accessor for IntelligenceImageProcessor.Input);
  sub_1BBAC78EC(a2, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntelligenceImageProcessor.Options);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + *(v11 + 80) + v17) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_1BBAC7954(v16, v19 + v17, type metadata accessor for IntelligenceImageProcessor.Input);
  sub_1BBAC7954(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for IntelligenceImageProcessor.Options);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v30;
  *v20 = v29;
  v20[1] = v21;
  aBlock[4] = sub_1BBAC79BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BBA83B58;
  aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);

  sub_1BBB83858();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1BBACA7C8(&qword_1ED6BF0A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC7CB30);
  sub_1BBA83AF4();
  v23 = v31;
  sub_1BBB83F28();
  v24 = v28;
  MEMORY[0x1BFB16410](0, v9, v6, v22);
  _Block_release(v22);

  (*(v34 + 8))(v6, v23);
  (*(v32 + 8))(v9, v33);
}

uint64_t sub_1BBAC3BE0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B980);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = type metadata accessor for IntelligenceImage(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IntelligenceImageProcessor.processSynchronously(_:options:)(a1, a2, v11);
  sub_1BBAC78EC(v11, v8, type metadata accessor for IntelligenceImage);
  swift_storeEnumTagMultiPayload();
  a3(v8);
  sub_1BBA8BCC4(v8, &qword_1EBC7B980);
  return sub_1BBACA760(v11, type metadata accessor for IntelligenceImage);
}

uint64_t static IntelligenceImageProcessor.processSynchronously(_:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v5 = type metadata accessor for IntelligenceImageProcessor.Input.Storage(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B848);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v52 - v12;
  v70 = type metadata accessor for IntelligenceFile.Attributes(0);
  v72 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  v21 = v73;
  result = sub_1BBACA478(a1, a2);
  if (!v21)
  {
    v73 = v20;
    v63 = v17;
    v64 = result;
    v62 = a1;
    v65 = v5;
    v66 = v7;
    v68 = 0;
    v23 = v69;
    sub_1BBA8BC5C(a2, v69, &qword_1EBC7B848);
    v24 = v72 + 48;
    v25 = *(v72 + 48);
    v26 = v70;
    v27 = v25(v23, 1, v70);
    v67 = v14;
    if (v27 == 1)
    {
      v56 = sub_1BBB83658();
      v28 = *(v56 - 8);
      v55 = *(v28 + 56);
      v57 = v28 + 56;
      v59 = v10;
      v55(v10, 1, 1, v56);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
      v61 = &v52;
      v30 = *(*(v29 - 8) + 64);
      MEMORY[0x1EEE9AC00](v29 - 8);
      v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
      v53 = &v52 - v31;
      v32 = sub_1BBB83498();
      v33 = *(*(v32 - 8) + 56);
      v60 = v25;
      v34 = (v33)(&v52 - v31, 1, 1, v32);
      v58 = &v52;
      v35 = MEMORY[0x1EEE9AC00](v34);
      v54 = &v52 - v31;
      v33(v35);
      v72 = v24;
      v36 = v73;
      v55(v73, 1, 1, v56);
      v37 = v26[6];
      v38 = v36 + v26[5];
      (v33)(v36 + v37, 1, 1, v32);
      v39 = v26[7];
      (v33)(v36 + v39, 1, 1, v32);
      sub_1BBAA6910(v59, v36, &qword_1EBC7B858);
      *v38 = 0;
      *(v38 + 8) = 1;
      sub_1BBAA6910(v53, v36 + v37, &qword_1EBC7B860);
      sub_1BBAA6910(v54, v36 + v39, &qword_1EBC7B860);
      v40 = v60(v23, 1, v26);
      v41 = v66;
      v42 = v62;
      v43 = v63;
      if (v40 != 1)
      {
        sub_1BBA8BCC4(v23, &qword_1EBC7B848);
      }
    }

    else
    {
      v36 = v73;
      sub_1BBAC7954(v23, v73, type metadata accessor for IntelligenceFile.Attributes);
      v41 = v66;
      v42 = v62;
      v43 = v63;
    }

    v44 = sub_1BBB833F8();
    v45 = *(v44 - 8);
    MEMORY[0x1EEE9AC00](v44);
    v47 = (&v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_1BBAC78EC(v42, v41, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B840);

      (*(v45 + 32))(v47, v41, v44);
      IntelligenceFile.Attributes.resolved(using:)(v47, v43);
      v36 = v73;
      (*(v45 + 8))(v47, v44);
      sub_1BBACA760(v36, type metadata accessor for IntelligenceFile.Attributes);
      sub_1BBAC7954(v43, v36, type metadata accessor for IntelligenceFile.Attributes);
    }

    else
    {
      sub_1BBACA760(v41, type metadata accessor for IntelligenceImageProcessor.Input.Storage);
    }

    v48 = v67;
    sub_1BBAC78EC(v36, v67, type metadata accessor for IntelligenceFile.Attributes);
    v49 = v64;
    if (*(v64 + 16))
    {
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B868) + 48);
      v51 = v71;
      *v71 = v49;
      sub_1BBAC7954(v48, v51 + v50, type metadata accessor for IntelligenceFile.Attributes);
      type metadata accessor for IntelligenceImage.InternalRepresentation(0);
      swift_storeEnumTagMultiPayload();
      return sub_1BBACA760(v36, type metadata accessor for IntelligenceFile.Attributes);
    }

    else
    {
      result = sub_1BBB840A8();
      __break(1u);
    }
  }

  return result;
}

uint64_t static IntelligenceImageProcessor.process(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BBAC4694, 0, 0);
}

uint64_t sub_1BBAC4694()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = type metadata accessor for IntelligenceImage(0);
  *v2 = v0;
  v2[1] = sub_1BBAC4790;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000013, 0x80000001BBB9AFD0, sub_1BBACA7C0, v1, v3);
}

uint64_t sub_1BBAC4790()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BBAC48CC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1BBAC48CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BBAC4930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B978);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  static IntelligenceImageProcessor.process(_:options:completion:)(a2, a3, sub_1BBACB454, v12);
}

uint64_t sub_1BBAC4A84(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceImage(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B980);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  sub_1BBA8BC5C(a1, v15 - v9, &qword_1EBC7B980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    sub_1BBACA810();
    v12 = swift_allocError();
    *v13 = v11;
    v15[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B978);
    return sub_1BBB83C28();
  }

  else
  {
    sub_1BBAC7954(v10, v7, type metadata accessor for IntelligenceImage);
    sub_1BBAC78EC(v7, v4, type metadata accessor for IntelligenceImage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B978);
    sub_1BBB83C38();
    return sub_1BBACA760(v7, type metadata accessor for IntelligenceImage);
  }
}

void sub_1BBAC4C78(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v171 = a7;
  v172 = a6;
  v175 = a5;
  v174 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v179 = &v161 - v13;
  v173 = type metadata accessor for IntelligenceFile.Attributes(0);
  MEMORY[0x1EEE9AC00](v173);
  v170 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v169 = &v161 - v16;
  v188 = sub_1BBB83658();
  v184 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v177 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v161 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v161 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v181 = (&v161 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v183 = &v161 - v27;
  v28 = a1;
  Width = CGImageGetWidth(v28);
  Height = CGImageGetHeight(v28);
  v31 = *(a2 + 32);
  v190 = *(a2 + 16);
  v191 = v31;
  *v192 = *(a2 + 48);
  *&v192[9] = *(a2 + 57);
  LODWORD(v178) = a3;
  v32 = sub_1BBAC5F20(Width, Height, a3);
  v182 = a2;
  if ((v34 & 1) == 0)
  {
    v35 = v32;
    v36 = v33;
    if (CGImageGetBitsPerComponent(v28) >= 16)
    {
      v37 = 16;
    }

    else
    {
      v37 = 8;
    }

    AlphaInfo = CGImageGetAlphaInfo(v28);
    if (AlphaInfo > kCGImageAlphaNoneSkipFirst)
    {
      v39 = 1;
    }

    else
    {
      v39 = dword_1BBB861A4[AlphaInfo];
    }

    v40 = CGImageGetColorSpace(v28);
    if (!v40)
    {
      v40 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    v41 = CGBitmapContextCreate(0, v35, v36, v37, 0, v40, v39);

    if (!v41)
    {
      sub_1BBACA810();
      v84 = swift_allocError();
      *v132 = 5;
      swift_willThrow();

      goto LABEL_39;
    }

    sub_1BBB83D28();
    Image = CGBitmapContextCreateImage(v41);
    if (!Image)
    {
      sub_1BBACA810();
      v84 = swift_allocError();
      *v133 = 6;
      swift_willThrow();

      goto LABEL_39;
    }

    v43 = Image;

    v28 = v43;
    a2 = v182;
  }

  v176 = a8;
  v187 = v28;
  v44 = *(a2 + 88);
  v45 = *(v44 + 16);
  v46 = v188;
  if (!v45)
  {
    __break(1u);
    return;
  }

  v47 = v184[2];
  v48 = (v184 + 1);
  v49 = (v44 + ((*(v184 + 80) + 32) & ~*(v184 + 80)));
  v50 = v184[9];
  v168 = v49;
  v186 = (v184 + 1);
  v185 = v184 + 2;
  do
  {
    v51 = v47;
    v47(v23, v49, v46);
    sub_1BBB83628();
    v52 = sub_1BBB835F8();
    v53 = v46;
    v54 = v52;
    v189 = *v48;
    v189(v20, v53);
    if ((v54 & 1) == 0 || (v55 = CGImageGetAlphaInfo(v187), v55 <= kCGImageAlphaNoneSkipFirst) && ((1 << v55) & 0x61) != 0)
    {
      v56 = v184[4];
      v57 = v181;
      v58 = v188;
      v56(v181, v23, v188);
      v59 = v183;
      v56(v183, v57, v58);
      goto LABEL_20;
    }

    v46 = v188;
    v48 = v186;
    v189(v23, v188);
    v49 = (v49 + v50);
    --v45;
    v47 = v51;
  }

  while (v45);
  v59 = v183;
  v51(v183, v168, v46);
LABEL_20:
  v60 = v187;
  v61 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  sub_1BBB835D8();
  v62 = sub_1BBB839E8();

  v63 = CGImageDestinationCreateWithData(v61, v62, 1uLL, 0);

  if (!v63)
  {
    sub_1BBACA810();
    v84 = swift_allocError();
    *v85 = 7;
    swift_willThrow();

LABEL_34:
    v189(v59, v188);

LABEL_35:
    a8 = v176;
LABEL_39:
    *a8 = v84;
    return;
  }

  v181 = v63;
  v168 = v61;
  v64 = *MEMORY[0x1E696D888];
  v65 = v182;
  v66 = *(v182 + 80);
  v67 = MEMORY[0x1E69E6530];
  *(&v191 + 1) = MEMORY[0x1E69E6530];
  *&v190 = v66;
  sub_1BBACB024(&v190, &v193);
  v68 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v194 = v68;
  sub_1BBB40A3C(&v193, v64, isUniquelyReferenced_nonNull_native);
  v70 = v194;
  v71 = *MEMORY[0x1E696D880];
  *(&v191 + 1) = v67;
  *&v190 = v66;
  sub_1BBACB024(&v190, &v193);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v194 = v70;
  sub_1BBB40A3C(&v193, v71, v72);
  v73 = v194;
  v74 = *MEMORY[0x1E696DE78];
  *(&v191 + 1) = MEMORY[0x1E69E7668];
  LODWORD(v190) = v178;
  sub_1BBACB024(&v190, &v193);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v194 = v73;
  sub_1BBB40A3C(&v193, v74, v75);
  v76 = v194;
  sub_1BBB83628();
  LOBYTE(v73) = sub_1BBB835F8();
  v77 = v188;
  v78 = v189;
  v189(v20, v188);
  if (v73)
  {
    v79 = *MEMORY[0x1E696D338];
    v80 = *(v65 + 96);
    *(&v191 + 1) = MEMORY[0x1E69E63B0];
    *&v190 = v80;
    sub_1BBACB024(&v190, &v193);
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v194 = v76;
    sub_1BBB40A3C(&v193, v79, v81);
    v82 = v194;
    v83 = *MEMORY[0x1E696D370];
    *(&v191 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v190) = 0;
  }

  else
  {
    sub_1BBB83608();
    v86 = sub_1BBB835F8();
    v78(v20, v77);
    if ((v86 & 1) == 0)
    {
      goto LABEL_27;
    }

    v87 = *MEMORY[0x1E696DEB0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BBB85CE0;
    v89 = *MEMORY[0x1E696DEA0];
    *(inited + 32) = *MEMORY[0x1E696DEA0];
    *(inited + 40) = 8;
    v90 = v89;
    v91 = sub_1BBAC7AB8(inited);
    swift_setDeallocating();
    sub_1BBA8BCC4(inited + 32, &qword_1EBC7B990);
    *(&v191 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B998);
    *&v190 = v91;
    sub_1BBACB024(&v190, &v193);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v194 = v76;
    sub_1BBB40A3C(&v193, v87, v92);
    v82 = v194;
    v83 = *MEMORY[0x1E696DE88];
    *(&v191 + 1) = MEMORY[0x1E69E6530];
    *&v190 = 2;
  }

  sub_1BBACB024(&v190, &v193);
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v194 = v82;
  sub_1BBB40A3C(&v193, v83, v93);
LABEL_27:
  v60 = v187;
  v94 = v168;
  v95 = v181;
  type metadata accessor for CFString(0);
  sub_1BBACA7C8(&qword_1EBC7B5D8, type metadata accessor for CFString);
  v96 = sub_1BBB838F8();

  CGImageDestinationAddImage(v95, v60, v96);

  if (!CGImageDestinationFinalize(v95))
  {
    sub_1BBACA810();
    v84 = swift_allocError();
    *v131 = 8;
    swift_willThrow();

    goto LABEL_34;
  }

  v97 = v94;
  v167 = sub_1BBB83468();
  v178 = v98;
  v168 = v97;

  v99 = v177;
  v100 = v188;
  v51(v177, v59, v188);
  v101 = v172 + *(type metadata accessor for IntelligenceImageProcessor.Options(0) + 28);
  if (*(v101 + 33))
  {
    LODWORD(v169) = *(v101 + 32);
    v172 = type metadata accessor for IntelligenceFile(0);
    v102 = *(v101 + 16);
    v166 = *v101;
    v165 = v102;
    v103 = v179;
    v51(v179, v99, v100);
    v164 = v184[7];
    v164(v103, 0, 1, v100);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
    v185 = &v161;
    v105 = *(*(v104 - 8) + 64);
    MEMORY[0x1EEE9AC00](v104 - 8);
    v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
    v163 = &v161 - v106;
    v107 = sub_1BBB83498();
    v108 = v100;
    v109 = *(*(v107 - 8) + 56);
    v110 = (v109)(&v161 - v106, 1, 1, v107);
    v184 = &v161;
    v111 = MEMORY[0x1EEE9AC00](v110);
    v162 = &v161 - v106;
    v109(v111);
    v112 = v170;
    v164(v170, 1, 1, v108);
    v113 = v173;
    v114 = *(v173 + 24);
    v115 = v112 + *(v173 + 20);
    (v109)(v112 + v114, 1, 1, v107);
    v116 = v99;
    v117 = *(v113 + 28);
    (v109)(v112 + v117, 1, 1, v107);
    sub_1BBAA6910(v179, v112, &qword_1EBC7B858);
    *v115 = 0;
    *(v115 + 8) = 1;
    sub_1BBAA6910(v163, v112 + v114, &qword_1EBC7B860);
    sub_1BBAA6910(v162, v112 + v117, &qword_1EBC7B860);
    v190 = v166;
    v191 = v165;
    v192[0] = v169;
    v118 = v175;

    v119 = v118;
    v120 = v180;
    v121 = IntelligenceFile.__allocating_init(writingDataToTemporaryFile:name:attributes:sandboxExtensionType:)(v167, v178, v174, v119, v112, &v190);
    v180 = v120;
    if (v120)
    {
      v122 = v116;
      v123 = v188;
      v124 = v189;
      v189(v122, v188);
      v125 = v187;
      v126 = v183;
      if (qword_1ED6BDEB8 != -1)
      {
        swift_once();
      }

      v127 = sub_1BBB83758();
      v128 = __swift_project_value_buffer(v127, qword_1ED6BDEC0);
      MEMORY[0x1EEE9AC00](v128);
      v129 = v180;
      *(&v161 - 2) = v180;
      Logger.error(public:error:)(sub_1BBAC6110, 0, sub_1BBACB52C);
      sub_1BBACA810();
      v84 = swift_allocError();
      *v130 = 4;
      swift_willThrow();

      v124(v126, v123);
      goto LABEL_35;
    }

    v152 = v121;
    v153 = v116;
    v150 = v188;
    v154 = v188;
  }

  else
  {
    v134 = v179;
    v51(v179, v99, v100);
    v135 = v184[7];
    v135(v134, 0, 1, v100);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B860);
    v185 = &v161;
    v137 = *(*(v136 - 8) + 64);
    MEMORY[0x1EEE9AC00](v136 - 8);
    v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF0;
    v176 = (&v161 - v138);
    v139 = sub_1BBB83498();
    v140 = v100;
    v141 = *(*(v139 - 8) + 56);
    v142 = v141(&v161 - v138, 1, 1, v139);
    v184 = &v161;
    v143 = MEMORY[0x1EEE9AC00](v142);
    v144 = &v161 - v138;
    (v141)(&v161 - v138, 1, 1, v139, v143);
    v145 = v169;
    v135(v169, 1, 1, v140);
    v146 = v173;
    v147 = *(v173 + 24);
    v148 = v145 + *(v173 + 20);
    v141((v145 + v147), 1, 1, v139);
    v149 = *(v146 + 28);
    v141((v145 + v149), 1, 1, v139);
    v150 = v140;
    sub_1BBAA6910(v179, v145, &qword_1EBC7B858);
    *v148 = 0;
    *(v148 + 8) = 1;
    sub_1BBAA6910(v176, v145 + v147, &qword_1EBC7B860);
    sub_1BBAA6910(v144, v145 + v149, &qword_1EBC7B860);
    type metadata accessor for IntelligenceFile(0);
    swift_allocObject();
    v151 = v175;

    v152 = IntelligenceFile.init(data:name:attributes:)(v167, v178, v174, v151, v145);
    v153 = v177;
    v154 = v140;
  }

  v155 = v189;
  v189(v153, v154);
  v156 = v187;
  v157 = v183;
  v158 = v182;
  sub_1BBACB4D0(v182, &v190);

  v159 = v171;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  *&v190 = *v159;
  *v159 = 0x8000000000000000;
  sub_1BBB4075C(v152, v158, v160);
  sub_1BBAC7878(v158);
  *v159 = v190;

  v155(v157, v150);
}

uint64_t sub_1BBAC5F20(uint64_t result, uint64_t a2, int a3)
{
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if ((a3 - 5) >= 4)
  {
    v7 = result;
  }

  else
  {
    v7 = a2;
  }

  if ((a3 - 5) >= 4)
  {
    v8 = a2;
  }

  else
  {
    v8 = result;
  }

  v9 = *(v3 + 8) | (v4 >= v7);
  if (*(v3 + 8) & 1 | (v4 >= v7))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v4 / v7;
  }

  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  if (v5 >= v8)
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    if (v9 & 1 | (v5 / v8 < v10))
    {
      v10 = v5 / v8;
    }

    v9 = 0;
  }

  v13 = *(v3 + 48);
  if (a2 >= result)
  {
    v14 = result;
  }

  else
  {
    v14 = a2;
  }

  if (a2 <= result)
  {
    v15 = result;
  }

  else
  {
    v15 = a2;
  }

  if (v11 >= v15)
  {
    v12 = 1;
  }

  if (v12 != 1)
  {
    if (v9 & 1 | (v11 / v15 < v10))
    {
      v10 = v11 / v15;
    }

    if (v13 >= v14)
    {
      v17 = 1;
    }

    else
    {
      v17 = *(v3 + 56);
    }

    if (v17)
    {
LABEL_37:
      v18 = v10;
      goto LABEL_43;
    }

    v18 = v13 / v14;
    goto LABEL_41;
  }

  if (v13 >= v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = *(v3 + 56);
  }

  if (v16)
  {
    if (v9)
    {
      return 0;
    }

    goto LABEL_37;
  }

  v18 = v13 / v14;
  if ((v9 & 1) == 0)
  {
LABEL_41:
    if (v18 >= v10)
    {
      v18 = v10;
    }
  }

LABEL_43:
  v19 = floor(v18 * result);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v20 = floor(v18 * a2);
  if (v19 <= 1)
  {
    result = 1;
  }

  else
  {
    result = v19;
  }

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_56;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_58:
    __break(1u);
  }

  return result;
}