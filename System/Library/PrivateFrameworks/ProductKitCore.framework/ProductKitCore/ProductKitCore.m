uint64_t sub_29EBBA760()
{
  v0 = sub_29EC00988();
  __swift_allocate_value_buffer(v0, qword_2A1889A98);
  v1 = __swift_project_value_buffer(v0, qword_2A1889A98);
  if (qword_2A1889AC8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A188E650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_29EBBA828()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDC5D28]) init];
  [v0 setDiscretionary_];
  [v0 setCanUseLocalCacheServer_];
  [v0 setAllowsCellularAccess_];
  result = [v0 setTimeoutIntervalForResource_];
  qword_2A1889AB8 = v0;
  return result;
}

uint64_t sub_29EBBA8B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2A1C73D48](sub_29EBBA8D4, 0, 0);
}

void sub_29EBBA8D4()
{
  v1 = v0[2];
  v2 = sub_29EBBE288();
  v3 = [v2 assetType];

  if (v3)
  {
    sub_29EBBD8CC();
    v4 = sub_29EC00AE8();
    v6 = v5;

    v0[4] = v6;
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_29EBBA9CC;
    v8 = v0[3];

    sub_29EBC1B98(v4, v6, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29EBBA9CC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBBAB08, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EBBAB08()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_29EBBAB8C()
{
  v1 = v0[19];
  v2 = sub_29EBBE288();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29EBBACB4;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889BF0, &qword_29EC01D38);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29EBBAE64;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v2 queryMetaData_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29EBBACB4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBBAD94, 0, 0);
}

uint64_t sub_29EBBAD94()
{
  v1 = *(v0 + 144);
  v2 = [*(v0 + 160) results];
  if (v2)
  {
    v3 = v2;
    sub_29EBBD8CC();
    v4 = sub_29EC00C58();
  }

  else
  {
    v4 = MEMORY[0x29EDCA190];
  }

  v5 = *(v0 + 160);
  v6 = sub_29EBBAEC0(v4);

  v7 = *(v0 + 8);

  return v7(v1, v6);
}

uint64_t sub_29EBBAE64(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return swift_continuation_resume();
}

void *sub_29EBBAEC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_29EC010E8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x29EDCA190];
  result = sub_29EBD496C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x29EDABB10](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_29EBD496C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_29EBBD8CC();
        v16 = &off_2A254D9E8;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_29EBBD664(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_29EBD496C((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_29EBBD8CC();
        v16 = &off_2A254D9E8;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_29EBBD664(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_29EBBB078(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2A1C73D48](sub_29EBBB098, v1, 0);
}

uint64_t sub_29EBBB098()
{
  v1 = v0[3];
  if (*(v1 + 112))
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    *(v1 + 112) = 1;
    if (qword_2A1889A90 != -1)
    {
      swift_once();
    }

    v4 = sub_29EC00988();
    v0[4] = __swift_project_value_buffer(v4, qword_2A1889A98);
    v5 = sub_29EC00968();
    v6 = sub_29EC00ED8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_29EBB9000, v5, v6, "Updating catalog", v7, 2u);
      MEMORY[0x29EDAC460](v7, -1, -1);
    }

    v8 = v0[3];

    v9 = *(v8 + 120);
    v0[5] = *(v8 + 128);
    v10 = qword_2A1889AB0;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = qword_2A1889AB8;
    v15 = (v9 + *v9);
    v12 = v9[1];
    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = sub_29EBBB2E0;
    v14 = v0[2];

    return v15(v14, v11);
  }
}

uint64_t sub_29EBBB2E0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_29EBBB4E4;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_29EBBB408;
    v4 = v7;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

uint64_t sub_29EBBB408()
{
  v1 = v0[4];
  v2 = sub_29EC00968();
  v3 = sub_29EC00ED8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EBB9000, v2, v3, "Done updating catalog", v4, 2u);
    MEMORY[0x29EDAC460](v4, -1, -1);
  }

  v5 = v0[3];

  *(v5 + 112) = 0;
  v6 = v0[1];

  return v6();
}

uint64_t sub_29EBBB4E4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_29EBBB548(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 272) = a2;
  *(v4 + 280) = v3;
  *(v4 + 408) = a3;
  *(v4 + 264) = a1;
  *(v4 + 288) = *v3;
  v5 = sub_29EC00828();
  *(v4 + 296) = v5;
  v6 = *(v5 - 8);
  *(v4 + 304) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 312) = swift_task_alloc();
  v8 = type metadata accessor for MobileAssetRequest();
  *(v4 + 320) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBBB668, v3, 0);
}

uint64_t sub_29EBBB668()
{
  v22 = v0;
  if (qword_2A1889A90 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[34];
  v3 = sub_29EC00988();
  v0[42] = __swift_project_value_buffer(v3, qword_2A1889A98);
  sub_29EBBD540(v2, v1);
  v4 = sub_29EC00968();
  v5 = sub_29EC00ED8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v10 = sub_29EBBE530();
    v12 = v11;
    sub_29EBBD5A4(v7);
    v13 = sub_29EBD24D0(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Performing request: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  else
  {

    sub_29EBBD5A4(v7);
  }

  v14 = v0[35];
  v15 = *(v14 + 136);
  v0[43] = *(v14 + 144);

  v20 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[44] = v17;
  *v17 = v0;
  v17[1] = sub_29EBBB8D0;
  v18 = v0[34];

  return v20(v18);
}

uint64_t sub_29EBBB8D0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v5 = *(*v2 + 344);
  v6 = *(*v2 + 280);
  v8 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = a2;

  return MEMORY[0x2A1C73D48](sub_29EBBBA04, v6, 0);
}

uint64_t sub_29EBBBA04()
{
  v71 = v0;
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v1 + 16);
  if (v2)
  {
    if (!v3)
    {
      v4 = *(v0 + 408);
      v5 = *(v0 + 368);

      if (v2 == 2 && (v4 & 1) == 0)
      {
        v6 = *(v0 + 336);
        v7 = sub_29EC00968();
        v8 = sub_29EC00ED8();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_29EBB9000, v7, v8, "XML is missing", v9, 2u);
          MEMORY[0x29EDAC460](v9, -1, -1);
        }

        v10 = swift_task_alloc();
        *(v0 + 392) = v10;
        *v10 = v0;
        v10[1] = sub_29EBBC43C;
        v11 = *(v0 + 272);
        v12 = *(v0 + 280);

        return sub_29EBBB078(v11);
      }

LABEL_29:
      sub_29EBBD72C();
      swift_allocError();
      *v56 = xmmword_29EC01BA0;
      *(v56 + 16) = 2;
      swift_willThrow();
      v58 = *(v0 + 328);
      v59 = *(v0 + 312);

      v60 = *(v0 + 8);
      goto LABEL_32;
    }
  }

  else if (!v3)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_20;
  }

  v14 = 0;
  v15 = v1 + 32;
  do
  {
    if (v14 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_29EBBD600(v15, v0 + 136);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v16);
    if ((*(v17 + 8))(v16, v17))
    {
      sub_29EBBD664((v0 + 136), v0 + 96);
      sub_29EBBD664((v0 + 96), v0 + 56);
      goto LABEL_20;
    }

    ++v14;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    v15 += 40;
  }

  while (v3 != v14);
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  if (!*(v1 + 16))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_29EBBD600(*(v0 + 368) + 32, v0 + 56);
  if (*(v0 + 120))
  {
    sub_29EBBD67C(v0 + 96);
  }

LABEL_20:
  v18 = *(v0 + 368);
  if (!*(v0 + 80))
  {
    v36 = *(v0 + 336);
    sub_29EBBD67C(v0 + 56);

    v37 = sub_29EC00968();
    v38 = sub_29EC00EB8();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 368);
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v70[0] = v42;
      *v41 = 136315138;
      *(v0 + 256) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889BD8, &qword_29EC01D18);
      v43 = sub_29EC00B48();
      v45 = sub_29EBD24D0(v43, v44, v70);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_29EBB9000, v37, v38, "Failed to find asset, received: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x29EDAC460](v42, -1, -1);
      MEMORY[0x29EDAC460](v41, -1, -1);
    }

    else
    {
    }

    goto LABEL_29;
  }

  v19 = *(v0 + 368);

  sub_29EBBD664((v0 + 56), v0 + 16);
  v20 = *(v0 + 40);
  v21 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v20);
  v22 = (*(v21 + 8))(v20, v21);
  v23 = *(v0 + 336);
  if (v22)
  {
    sub_29EBBD600(v0 + 16, v0 + 216);
    v24 = sub_29EC00968();
    v25 = sub_29EC00ED8();
    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 304);
      v26 = *(v0 + 312);
      v68 = *(v0 + 296);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v70[0] = v29;
      *v28 = 136315138;
      v30 = *(v0 + 240);
      v31 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 216), v30);
      (*(v31 + 16))(v30, v31);
      sub_29EBBD9B8(&qword_2A1889BE0, MEMORY[0x29EDB9B18]);
      v32 = sub_29EC011D8();
      v34 = v33;
      (*(v27 + 8))(v26, v68);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
      v35 = sub_29EBD24D0(v32, v34, v70);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_29EBB9000, v24, v25, "Found local asset: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x29EDAC460](v29, -1, -1);
      MEMORY[0x29EDAC460](v28, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
    }

    v57 = *(v0 + 288);
    sub_29EBBC774((v0 + 16), *(v0 + 264));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v66 = *(v0 + 328);
    v67 = *(v0 + 312);

    v60 = *(v0 + 8);
LABEL_32:

    return v60();
  }

  else
  {
    sub_29EBBD600(v0 + 16, v0 + 176);
    v46 = sub_29EC00968();
    v47 = sub_29EC00ED8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136315138;
      v50 = *(v0 + 200);
      v51 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 176), v50);
      v52 = (*(v51 + 24))(v50, v51);
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      v55 = sub_29EBD24D0(v52, v54, v70);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_29EBB9000, v46, v47, "Downloading asset: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x29EDAC460](v49, -1, -1);
      MEMORY[0x29EDAC460](v48, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
    }

    v1 = *(v0 + 40);
    v15 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v1);
    if (qword_2A1889AB0 != -1)
    {
LABEL_42:
      swift_once();
    }

    v61 = qword_2A1889AB8;
    v62 = *(*(v0 + 272) + *(*(v0 + 320) + 20));
    v63 = *(v15 + 32);
    v69 = (v63 + *v63);
    v64 = v63[1];
    v65 = swift_task_alloc();
    *(v0 + 376) = v65;
    *v65 = v0;
    v65[1] = sub_29EBBC270;

    return v69(v61, (v62 & 1) == 0, v1, v15);
  }
}

uint64_t sub_29EBBC270()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_29EBBC6FC;
  }

  else
  {
    v6 = sub_29EBBC39C;
  }

  return MEMORY[0x2A1C73D48](v6, v5, 0);
}

uint64_t sub_29EBBC39C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 288);
  sub_29EBBC774((v0 + 16), *(v0 + 264));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29EBBC43C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[41];
    v6 = v2[39];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v2[50] = v9;
    *v9 = v4;
    v9[1] = sub_29EBBC5C8;
    v10 = v2[34];
    v11 = v2[35];
    v12 = v2[33];

    return sub_29EBBB548(v12, v10, 1);
  }
}

uint64_t sub_29EBBC5C8()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v7 = *v0;

  v3 = *(v1 + 328);
  v4 = *(v1 + 312);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_29EBBC6FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[48];
  v2 = v0[41];
  v3 = v0[39];

  v4 = v0[1];

  return v4();
}

void sub_29EBBC774(void *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v42[1] = *MEMORY[0x29EDCA608];
  v3 = sub_29EC00828();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v41 = &v37 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v37 - v10;
  v12 = [objc_opt_self() defaultManager];
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  (*(v13 + 16))(v14, v13);
  v15 = sub_29EC007C8();
  v38 = *(v4 + 8);
  v38(v11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889BE8, &qword_29EC01D28);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_29EC01BB0;
  v17 = *MEMORY[0x29EDB8D40];
  v18 = *MEMORY[0x29EDB8D50];
  *(v16 + 32) = *MEMORY[0x29EDB8D40];
  *(v16 + 40) = v18;
  type metadata accessor for URLResourceKey(0);
  v19 = v17;
  v20 = v18;
  v21 = sub_29EC00C48();

  v42[0] = 0;
  v22 = [v12 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:v21 options:7 error:v42];

  v23 = v42[0];
  if (!v22)
  {
    v32 = v42[0];
    v33 = sub_29EC00788();

LABEL_9:
    swift_willThrow();
    sub_29EBBD72C();
    swift_allocError();
    *v35 = xmmword_29EC01BD0;
    *(v35 + 16) = 2;
    swift_willThrow();

    goto LABEL_10;
  }

  v24 = sub_29EC00C58();
  v25 = v23;

  if (!*(v24 + 16))
  {

LABEL_8:
    sub_29EBBD72C();
    v33 = swift_allocError();
    *v34 = xmmword_29EC01BC0;
    *(v34 + 16) = 2;
    goto LABEL_9;
  }

  v26 = v40;
  (*(v4 + 16))(v40, v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  v27 = *(v4 + 32);
  v28 = v41;
  v27(v41, v26, v3);
  v29 = objc_allocWithZone(MEMORY[0x29EDB9F48]);
  v30 = sub_29EC007C8();
  v31 = [v29 initWithURL_];

  if (!v31)
  {
    v38(v28, v3);
    goto LABEL_8;
  }

  v27(v39, v28, v3);
LABEL_10:
  v36 = *MEMORY[0x29EDCA608];
}

uint64_t sub_29EBBCB88()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_29EBBCBFC(uint64_t a1, int a2)
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

uint64_t sub_29EBBCC1C(uint64_t result, int a2, int a3)
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

uint64_t sub_29EBBCC98(uint64_t a1, id *a2)
{
  result = sub_29EC00AC8();
  *a2 = 0;
  return result;
}

uint64_t sub_29EBBCD10(uint64_t a1, id *a2)
{
  v3 = sub_29EC00AD8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29EBBCD90@<X0>(uint64_t *a1@<X8>)
{
  sub_29EC00AE8();
  v2 = sub_29EC00AB8();

  *a1 = v2;
  return result;
}

uint64_t sub_29EBBCDD4()
{
  v1 = *v0;
  v2 = sub_29EC00AE8();
  v3 = MEMORY[0x29EDAB6E0](v2);

  return v3;
}

uint64_t sub_29EBBCE10()
{
  v1 = *v0;
  sub_29EC00AE8();
  sub_29EC00B88();
}

uint64_t sub_29EBBCE64()
{
  v1 = *v0;
  sub_29EC00AE8();
  sub_29EC012B8();
  sub_29EC00B88();
  v2 = sub_29EC012D8();

  return v2;
}

uint64_t sub_29EBBCEE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_29EC00AE8();
  v6 = v5;
  if (v4 == sub_29EC00AE8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_29EC011F8();
  }

  return v9 & 1;
}

uint64_t sub_29EBBCF80(uint64_t a1)
{
  v2 = sub_29EBBD9B8(&qword_2A1889C70, type metadata accessor for CKError);

  return MEMORY[0x2A1C5A7F0](a1, v2);
}

uint64_t sub_29EBBCFEC(uint64_t a1)
{
  v2 = sub_29EBBD9B8(&qword_2A1889C70, type metadata accessor for CKError);

  return MEMORY[0x2A1C5A7D0](a1, v2);
}

uint64_t sub_29EBBD058(void *a1, uint64_t a2)
{
  v4 = sub_29EBBD9B8(&qword_2A1889C70, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x2A1C5A7C8](v5, a2, v4);
}

uint64_t sub_29EBBD10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EBBD9B8(&qword_2A1889C70, type metadata accessor for CKError);

  return MEMORY[0x2A1C5A7E8](a1, a2, v4);
}

uint64_t sub_29EBBD188()
{
  v2 = *v0;
  sub_29EC012B8();
  sub_29EC00A78();
  return sub_29EC012D8();
}

void *sub_29EBBD1E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_29EBBD1F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29EC00AB8();

  *a2 = v5;
  return result;
}

uint64_t sub_29EBBD240@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_29EC00AE8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_29EBBD26C(uint64_t a1)
{
  v2 = sub_29EBBD9B8(&qword_2A1889C78, type metadata accessor for URLResourceKey);
  v3 = sub_29EBBD9B8(&qword_2A1889C80, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29EBBD328(uint64_t a1)
{
  v2 = sub_29EBBD9B8(&qword_2A1889C38, type metadata accessor for CKError);

  return MEMORY[0x2A1C5B390](a1, v2);
}

uint64_t sub_29EBBD394(uint64_t a1)
{
  v2 = sub_29EBBD9B8(&qword_2A1889C38, type metadata accessor for CKError);

  return MEMORY[0x2A1C5B388](a1, v2);
}

uint64_t sub_29EBBD404(uint64_t a1)
{
  v2 = sub_29EBBD9B8(&qword_2A1889C70, type metadata accessor for CKError);

  return MEMORY[0x2A1C5A7C0](a1, v2);
}

uint64_t sub_29EBBD470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29EBBD9B8(&qword_2A1889C70, type metadata accessor for CKError);

  return MEMORY[0x2A1C5A7D8](a1, a2, a3, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_29EBBD540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBBD5A4(uint64_t a1)
{
  v2 = type metadata accessor for MobileAssetRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBBD600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29EBBD664(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_29EBBD67C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889BC8, &qword_29EC01D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_29EBBD72C()
{
  result = qword_2A1889BD0;
  if (!qword_2A1889BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889BD0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

uint64_t sub_29EBBD854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29EBBD8CC()
{
  result = qword_2A1889BF8;
  if (!qword_2A1889BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1889BF8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29EBBD9B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29EBBDC54(uint64_t a1, unint64_t *a2)
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

unint64_t sub_29EBBDCEC()
{
  result = qword_2A1889C60;
  if (!qword_2A1889C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889C60);
  }

  return result;
}

uint64_t sub_29EBBDDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29EC00928();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29EBBDEC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29EC00928();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MobileAssetRequest()
{
  result = qword_2A1889CF0;
  if (!qword_2A1889CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29EBBDFD0()
{
  sub_29EC00928();
  if (v0 <= 0x3F)
  {
    sub_29EBBE06C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29EBBE06C()
{
  if (!qword_2A1889D00)
  {
    v0 = sub_29EC00F58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1889D00);
    }
  }
}

uint64_t getEnumTagSinglePayload for MobileAssetRequest.QueryType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileAssetRequest.QueryType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29EBBE234()
{
  result = qword_2A1889D08;
  if (!qword_2A1889D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889D08);
  }

  return result;
}

uint64_t sub_29EBBE288()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x29EDC5D00]);
  v3 = sub_29EC00AB8();
  v4 = [v2 initWithType_];

  if (v4)
  {
    v5 = sub_29EC00AB8();
    v6 = type metadata accessor for MobileAssetRequest();
    v7 = (v1 + v6[6]);
    v8 = *v7;
    v9 = v7[1];
    v10 = sub_29EC00AB8();
    [v4 addKeyValuePair:v5 with:v10];

    v11 = (v1 + v6[7]);
    if ((v11[1] & 1) == 0)
    {
      v12 = *v11;
      v13 = sub_29EC00AB8();
      sub_29EC011D8();
      v14 = sub_29EC00AB8();

      [v4 addKeyValuePair:v13 with:v14];
    }

    if ((*(v1 + v6[5]) & 1) == 0)
    {
      [v4 returnTypes_];
    }

    return v4;
  }

  else
  {
    result = sub_29EC010D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_29EBBE478()
{
  v1 = *v0;
  sub_29EC012B8();
  MEMORY[0x29EDABD90](v1);
  return sub_29EC012D8();
}

uint64_t sub_29EBBE4EC()
{
  v1 = *v0;
  sub_29EC012B8();
  MEMORY[0x29EDABD90](v1);
  return sub_29EC012D8();
}

uint64_t sub_29EBBE530()
{
  sub_29EC01018();
  MEMORY[0x29EDAB670](0xD000000000000020, 0x800000029EC06EC0);
  sub_29EC00928();
  sub_29EBBE764();
  v1 = sub_29EC011D8();
  MEMORY[0x29EDAB670](v1);

  MEMORY[0x29EDAB670](0x69726F697270202CLL, 0xED0000203D207974);
  v2 = type metadata accessor for MobileAssetRequest();
  if (*(v0 + *(v2 + 20)))
  {
    v3 = 0x65736C6166;
  }

  else
  {
    v3 = 1702195828;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v5 = sub_29EC011D8();
  MEMORY[0x29EDAB670](v5);

  MEMORY[0x29EDAB670](0xD00000000000001ALL, 0x800000029EC06EF0);
  MEMORY[0x29EDAB670](v3, v4);

  MEMORY[0x29EDAB670](8236, 0xE200000000000000);
  v6 = sub_29EBBE288();
  v7 = [v6 queryParams];

  if (!v7)
  {
    sub_29EBBE7BC();
    v7 = MEMORY[0x29EDAB9E0](MEMORY[0x29EDCA190]);
  }

  v8 = [v7 description];
  v9 = sub_29EC00AE8();
  v11 = v10;

  MEMORY[0x29EDAB670](v9, v11);

  MEMORY[0x29EDAB670](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_29EBBE764()
{
  result = qword_2A1889D10;
  if (!qword_2A1889D10)
  {
    sub_29EC00928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889D10);
  }

  return result;
}

unint64_t sub_29EBBE7BC()
{
  result = qword_2A1889D18;
  if (!qword_2A1889D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1889D18);
  }

  return result;
}

uint64_t sub_29EBBE808()
{
  v0 = objc_allocWithZone(MEMORY[0x29EDB9F48]);
  v1 = sub_29EC007C8();
  v2 = [v0 initWithURL_];

  if (v2)
  {
    return v2;
  }

  sub_29EC01018();

  sub_29EC00828();
  sub_29EBBE9C8();
  v4 = sub_29EC011D8();
  MEMORY[0x29EDAB670](v4);

  result = sub_29EC010D8();
  __break(1u);
  return result;
}

unint64_t sub_29EBBE918()
{
  sub_29EC01018();

  sub_29EC00828();
  sub_29EBBE9C8();
  v0 = sub_29EC011D8();
  MEMORY[0x29EDAB670](v0);

  MEMORY[0x29EDAB670](41, 0xE100000000000000);
  return 0xD000000000000012;
}

unint64_t sub_29EBBE9C8()
{
  result = qword_2A1889BE0;
  if (!qword_2A1889BE0)
  {
    sub_29EC00828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889BE0);
  }

  return result;
}

uint64_t sub_29EBBEA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EC00828();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29EBBEAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EC00828();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MobileAssetResult()
{
  result = qword_2A1889D20;
  if (!qword_2A1889D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EBBEB70()
{
  result = sub_29EC00828();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EBBEC94(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29EBBED44()
{
  v0 = sub_29EC00988();
  __swift_allocate_value_buffer(v0, qword_2A1889D30);
  v1 = __swift_project_value_buffer(v0, qword_2A1889D30);
  if (qword_2A1889AD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A188E668);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_29EBBEE0C()
{
  if (qword_2A1889AC0 != -1)
  {
    swift_once();
  }

  v0 = sub_29EC00988();
  __swift_project_value_buffer(v0, qword_2A1889D30);
  oslog = sub_29EC00968();
  v1 = sub_29EC00ED8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_29EBB9000, oslog, v1, "Finished asset request", v2, 2u);
    MEMORY[0x29EDAC460](v2, -1, -1);
  }
}

uint64_t sub_29EBBEEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MobileAssetResult();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for MobileAssetRequest();
  v3[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBBEFE8, 0, 0);
}

uint64_t sub_29EBBEFE8()
{
  v32 = v0;
  v1 = *(v0 + 32);
  sub_29EC00908();
  v2 = sub_29EBBFFF0(8);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *(v0 + 88) = v2;
  *(v0 + 96) = v4;
  *(v0 + 104) = v6;
  *(v0 + 112) = v8;
  if (qword_2A1889AC0 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 80);
  v10 = *(v0 + 32);
  v11 = sub_29EC00988();
  *(v0 + 120) = __swift_project_value_buffer(v11, qword_2A1889D30);
  sub_29EBBD540(v10, v9);

  v12 = sub_29EC00968();
  v13 = sub_29EC00ED8();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 80);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315394;

    v18 = MEMORY[0x29EDAB630](v2, v4, v6, v8);
    v20 = v19;

    v21 = sub_29EBD24D0(v18, v20, &v31);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_29EBBE530();
    v24 = v23;
    sub_29EBBD5A4(v15);
    v25 = sub_29EBD24D0(v22, v24, &v31);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_29EBB9000, v12, v13, "%s Beginning MobileAsset request: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v17, -1, -1);
    MEMORY[0x29EDAC460](v16, -1, -1);
  }

  else
  {

    sub_29EBBD5A4(v15);
  }

  v26 = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 40), *(*(v0 + 40) + 24));
  v27 = swift_task_alloc();
  *(v0 + 128) = v27;
  *v27 = v0;
  v27[1] = sub_29EBBF2B4;
  v28 = *(v0 + 64);
  v29 = *(v0 + 32);

  return sub_29EBBB548(v28, v29, 0);
}

uint64_t sub_29EBBF2B4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_29EBBF5A0;
  }

  else
  {
    v3 = sub_29EBBF3C8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBBF3C8()
{
  v24 = v0;
  v2 = v0[14];
  v1 = v0[15];

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x29EDAB630](v9, v8, v7, v6);
    v14 = v13;

    v15 = sub_29EBD24D0(v12, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_29EBB9000, v3, v4, "%s: Finished MobileAsset request with identifier", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  else
  {
  }

  v16 = v0[7];
  v17 = v0[6];
  v18 = v0[3];
  sub_29EBC008C(v0[8], v18);
  (*(v16 + 56))(v18, 0, 1, v17);
  v19 = v0[10];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_29EBBF5A0()
{
  v32 = v0;
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];

  v4 = v1;
  v5 = sub_29EC00968();
  v6 = sub_29EC00ED8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v9 = v0[13];
    v8 = v0[14];
    v11 = v0[11];
    v10 = v0[12];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31[0] = v13;
    *v12 = 136315394;
    v14 = MEMORY[0x29EDAB630](v11, v10, v9, v8);
    v16 = v15;

    v17 = sub_29EBD24D0(v14, v16, v31);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v0[2] = v7;
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v19 = sub_29EC00B48();
    v21 = sub_29EBD24D0(v19, v20, v31);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_29EBB9000, v5, v6, "%s: MobileAsset request failed: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v13, -1, -1);
    MEMORY[0x29EDAC460](v12, -1, -1);
  }

  else
  {
    v22 = v0[14];
  }

  v23 = v0[17];
  if (*(v0[4] + *(v0[9] + 20)))
  {
    (*(v0[7] + 56))(v0[3], 1, 1, v0[6]);

    v24 = v0[10];
    v25 = v0[8];

    v26 = v0[1];
  }

  else
  {
    v27 = v0[10];
    v28 = v0[8];
    swift_willThrow();

    v26 = v0[1];
    v29 = v0[17];
  }

  return v26();
}

uint64_t sub_29EBBF82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 73) = a6;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  return MEMORY[0x2A1C73D48](sub_29EBBF85C, 0, 0);
}

uint64_t sub_29EBBF85C()
{
  if (qword_2A1889AC0 != -1)
  {
    swift_once();
  }

  v1 = sub_29EC00988();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_2A1889D30);
  v2 = sub_29EC00968();
  v3 = sub_29EC00ED8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_29EBB9000, v2, v3, "Fetching personalization asset", v4, 2u);
    MEMORY[0x29EDAC460](v4, -1, -1);
  }

  v5 = *(v0 + 73);
  v6 = *(v0 + 120);
  v10 = *(v0 + 104);

  *(v0 + 48) = v10;
  *(v0 + 64) = v6;
  *(v0 + 72) = v5;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_29EBBF9E8;
  v8 = *(v0 + 96);

  return PersonalizationAssetManager.asset(for:)(v0 + 16, v0 + 48);
}

uint64_t sub_29EBBF9E8()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_29EBBFC6C;
  }

  else
  {
    v3 = sub_29EBBFAFC;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBBFAFC()
{
  v20 = v0;
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 136);
    v3 = *(v0 + 40);
    v17 = *(v0 + 16);
    v18 = *(v0 + 24);
    v19 = v3;
    sub_29EBBFF38(v1);
    sub_29EBBFF48(v17, v18);
    v4 = v3;
    v1(v16, &v17);
    sub_29EBBFF1C(v1);
    v5 = v19;
    sub_29EBBFF9C(v17, v18);

    v6 = *(v0 + 40);
    sub_29EBBFF9C(*(v0 + 16), *(v0 + 24));

    v7 = v16[1];
    *(v0 + 16) = v16[0];
    *(v0 + 32) = v7;
  }

  v8 = *(v0 + 144);
  v9 = sub_29EC00968();
  v10 = sub_29EC00ED8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_29EBB9000, v9, v10, "Finished fetching personalization asset", v11, 2u);
    MEMORY[0x29EDAC460](v11, -1, -1);
  }

  v12 = *(v0 + 88);

  v13 = *(v0 + 32);
  *v12 = *(v0 + 16);
  v12[1] = v13;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29EBBFC6C()
{
  v18 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = v1;
  v4 = sub_29EC00968();
  v5 = sub_29EC00EB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[10] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v10 = sub_29EC00B48();
    v12 = sub_29EBD24D0(v10, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Finished fetching personalization asset with error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x29EDAC460](v8, -1, -1);
    MEMORY[0x29EDAC460](v7, -1, -1);
  }

  else
  {
    v13 = v0[20];
  }

  v14 = v0[11];
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 1;
  v15 = v0[1];

  return v15();
}

uint64_t *sub_29EBBFE10()
{
  v1 = *v0;
  v2 = v0[5];
  sub_29EBBFF1C(v0[4]);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t sub_29EBBFEAC()
{
  sub_29EBBFE10();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_29EBBFF1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29EBBFF38(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29EBBFF48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29EBBFF9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_29EBBFFF0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_29EC00B98();

    return sub_29EC00C38();
  }

  return result;
}

uint64_t sub_29EBC008C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t GenericAsset.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenericAsset.fileExtension.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

unint64_t GenericAsset.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_29EC01018();

  MEMORY[0x29EDAB670](v1, v2);
  MEMORY[0x29EDAB670](0x656C646E7562202CLL, 0xEA0000000000203ALL);
  v4 = [v3 description];
  v5 = sub_29EC00AE8();
  v7 = v6;

  MEMORY[0x29EDAB670](v5, v7);

  MEMORY[0x29EDAB670](41, 0xE100000000000000);
  return 0xD000000000000017;
}

void GenericAsset.fileURL.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;
  v12 = v10;

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v8)
  {
    MEMORY[0x29EDAB670](64, 0xE100000000000000);
    v13 = sub_29EC011D8();
    MEMORY[0x29EDAB670](v13);

    MEMORY[0x29EDAB670](120, 0xE100000000000000);
  }

  v14 = sub_29EC00AB8();

  v15 = sub_29EC00AB8();
  v16 = [v5 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_29EC007F8();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_29EC00828();
  (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t AdjustedAsset.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  v7 = v4;
}

uint64_t AdjustedAsset.adjustmentURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdjustedAsset() + 20);
  v4 = sub_29EC00828();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AdjustedAsset()
{
  result = qword_2A1889DC8;
  if (!qword_2A1889DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AdjustedAsset.description.getter()
{
  sub_29EC01018();

  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 40);
  v1 = GenericAsset.description.getter();
  MEMORY[0x29EDAB670](v1);

  MEMORY[0x29EDAB670](41, 0xE100000000000000);
  return 0xD000000000000015;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29EBC0648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_29EBC0690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EBC0700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29EC00828();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29EBC07C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_29EC00828();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29EBC0864()
{
  result = sub_29EC00828();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EBC08E0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_29EC00828();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr");
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v44);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v42 = &v41 - v12;
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v41 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v41 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DE0, "Pr");
  v18 = *(v6 + 72);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v46 = v18;
  v43 = swift_allocObject();
  v48 = v43 + v19;
  v20 = sub_29EC00AB8();
  v21 = sub_29EC00AB8();
  v22 = v1;
  v23 = [v1 URLForResource:v20 withExtension:v21];

  if (v23)
  {
    sub_29EC007F8();

    v24 = *(v3 + 56);
    v24(v17, 0, 1, v2);
  }

  else
  {
    v24 = *(v3 + 56);
    v24(v17, 1, 1, v2);
  }

  v25 = v2;
  sub_29EBC0F14(v17, v48);
  v26 = sub_29EC00AB8();
  v27 = sub_29EC00AB8();
  v28 = [v22 URLForResource:v26 withExtension:v27];

  v29 = v42;
  if (v28)
  {
    sub_29EC007F8();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v24(v15, v30, 1, v25);
  v31 = v48;
  sub_29EBC0F14(v15, v48 + v46);
  sub_29EBC0F84(v31, v29);
  sub_29EBC0F14(v29, v10);
  v32 = *(v3 + 48);
  v33 = (v3 + 32);
  if (v32(v10, 1, v25) == 1)
  {
    sub_29EBC0FF4(v10);
    v34 = MEMORY[0x29EDCA190];
  }

  else
  {
    v41 = *v33;
    v41(v47, v10, v25);
    v34 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_29EBFCB8C(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_29EBFCB8C(v35 > 1, v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v41(&v34[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36], v47, v25);
  }

  sub_29EBC0F84(v48 + v46, v29);
  sub_29EBC0F14(v29, v10);
  if (v32(v10, 1, v25) == 1)
  {
    sub_29EBC0FF4(v10);
  }

  else
  {
    v37 = *v33;
    (*v33)(v47, v10, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_29EBFCB8C(0, *(v34 + 2) + 1, 1, v34);
    }

    v39 = *(v34 + 2);
    v38 = *(v34 + 3);
    if (v39 >= v38 >> 1)
    {
      v34 = sub_29EBFCB8C(v38 > 1, v39 + 1, 1, v34);
    }

    *(v34 + 2) = v39 + 1;
    v37(&v34[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39], v47, v25);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v34 + 2))
  {
    (*(v3 + 16))(v45, &v34[(*(v3 + 80) + 32) & ~*(v3 + 80)], v25);
  }

  else
  {

    result = sub_29EC010D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_29EBC0F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBC0F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBC0FF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBC10F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29EC00988();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_29EC00978();
}

uint64_t sub_29EBC1168(uint64_t a1, uint64_t a2, int *a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_29EBC1260;

  return v8();
}

uint64_t sub_29EBC1260()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBC1B94, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_29EBC1394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2A1C73D48](sub_29EBC13BC, a4, 0);
}

uint64_t sub_29EBC13BC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = *(v2 + 352);
  v4 = *(v2 + 360);
  v0[2] = v0[9];
  v0[3] = v1;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_29EBC14C0;

  return v8(v0 + 2);
}

uint64_t sub_29EBC14C0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_29EBC15E8;
  }

  else
  {
    v3 = sub_29EBC15D4;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBC1604()
{
  v20 = v0;
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v1;
  v5 = sub_29EC00968();
  v6 = sub_29EC00EB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EBD24D0(v9, v8, &v19);
    *(v10 + 12) = 2080;
    v0[4] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_29EBB9000, v5, v6, "### %s ERROR -- %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  else
  {
    v16 = v0[12];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_29EBC17D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_29EBC188C;

  return sub_29EBDF318(a4, a5, a6);
}

uint64_t sub_29EBC188C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBC19C0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_29EBC19C0()
{
  v20 = v0;
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v1;
  v5 = sub_29EC00968();
  v6 = sub_29EC00EB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[7];
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EBD24D0(v9, v8, &v19);
    *(v10 + 12) = 2080;
    v0[2] = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v13 = sub_29EC00B48();
    v15 = sub_29EBD24D0(v13, v14, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_29EBB9000, v5, v6, "### %s ERROR -- %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDAC460](v11, -1, -1);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  else
  {
    v16 = v0[7];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_29EBC1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2A1C73D48](sub_29EBC1BBC, 0, 0);
}

uint64_t sub_29EBC1BBC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E00, &qword_29EC02568);
  v4 = *(v3 + 52);
  v5 = (*(v3 + 48) + 3) & 0x1FFFFFFFCLL;
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v7 = *(*v6 + *MEMORY[0x29EDC9DE8] + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v14 = *(v0 + 24);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 2, v8);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v6;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v14;
  *(v10 + 40) = v6;
  *(v10 + 48) = v1;
  *(v10 + 56) = v1;
  v11 = *(MEMORY[0x29EDCA470] + 4);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_29EBC1DD8;

  return MEMORY[0x2A1C73C78]();
}

uint64_t sub_29EBC1DD8()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v5 = sub_29EBC1F90;
  }

  else
  {
    v5 = sub_29EBC1F2C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EBC1F2C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EBC1F90()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_29EBC1FFC()
{
  v0 = sub_29EC00988();
  __swift_allocate_value_buffer(v0, qword_2A1889DE8);
  v1 = __swift_project_value_buffer(v0, qword_2A1889DE8);
  if (qword_2A1889AC8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2A188E650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_29EBC20C4(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = swift_getObjectType();

  return MEMORY[0x2A1C73D48](sub_29EBC2138, 0, 0);
}

uint64_t sub_29EBC2138()
{
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E00, &qword_29EC02568);
  v3 = *(v2 + 52);
  v4 = (*(v2 + 48) + 3) & 0x1FFFFFFFCLL;
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v6 = *(*v5 + *MEMORY[0x29EDC9DE8] + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 2, v7);
  v8 = [v1 assetId];
  if (v8)
  {
    v9 = v8;
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = *(v0 + 88);
    v13 = *(v0 + 16);
    v14 = sub_29EC00AE8();
    v16 = v15;

    *(v0 + 48) = v16;
    v17 = swift_task_alloc();
    *(v0 + 56) = v17;
    *(v17 + 16) = v5;
    *(v17 + 24) = v12;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    *(v17 + 48) = v11;
    *(v17 + 56) = v10;
    v18 = swift_task_alloc();
    *(v0 + 64) = v18;
    v18[2] = v11;
    v18[3] = v13;
    v18[4] = v5;
    v18[5] = v10;
    v19 = *(MEMORY[0x29EDCA470] + 4);
    v20 = swift_task_alloc();
    *(v0 + 72) = v20;
    *v20 = v0;
    v20[1] = sub_29EBC2394;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2A1C73C78]();
}

uint64_t sub_29EBC2394()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v6 = sub_29EBC2568;
  }

  else
  {
    v6 = sub_29EBC2504;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29EBC2504()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EBC2568()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_29EBC25CC(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  sub_29EBC37AC(a1 + *(*a1 + *MEMORY[0x29EDC9DE8] + 16), (a1 + ((*(*a1 + 48) + 3) & 0x1FFFFFFFCLL)));
  if (a2)
  {
    if (qword_2A1889AE8 != -1)
    {
      swift_once();
    }

    v9 = sub_29EC00988();
    __swift_project_value_buffer(v9, qword_2A1889DE8);

    v10 = sub_29EC00968();
    v11 = sub_29EC00ED8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_29EBD24D0(a3, a4, aBlock);
      _os_log_impl(&dword_29EBB9000, v10, v11, "Cancelling download for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x29EDAC460](v13, -1, -1);
      MEMORY[0x29EDAC460](v12, -1, -1);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    aBlock[4] = sub_29EBC44E8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29EBC2994;
    aBlock[3] = &block_descriptor_17;
    v15 = _Block_copy(aBlock);

    [a5 cancelDownload_];
    _Block_release(v15);
  }
}

void sub_29EBC282C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_2A1889AE8 != -1)
  {
    swift_once();
  }

  v6 = sub_29EC00988();
  __swift_project_value_buffer(v6, qword_2A1889DE8);

  oslog = sub_29EC00968();
  v7 = sub_29EC00ED8();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_29EBD24D0(a2, a3, &v11);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    _os_log_impl(&dword_29EBB9000, oslog, v7, "Download cancelled for %s with result %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }
}

uint64_t sub_29EBC299C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_29EBC29F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EBC2A1C, 0, 0);
}

uint64_t sub_29EBC2A1C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x29EDCA478] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_29EBC2B14;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v5, 0, 0, 0xD000000000000025, 0x800000029EC07180, sub_29EBC376C, v1, v6);
}

uint64_t sub_29EBC2B14()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBC2C50, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EBC2C50()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_29EBC2CB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8]();
  v11 = &v22 - v10;
  if (qword_2A1889AE8 != -1)
  {
    swift_once();
  }

  v12 = sub_29EC00988();
  __swift_project_value_buffer(v12, qword_2A1889DE8);
  v13 = sub_29EC00968();
  v14 = sub_29EC00ED8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_29EBB9000, v13, v14, "Starting download", v15, 2u);
    MEMORY[0x29EDAC460](v15, -1, -1);
  }

  v30 = sub_29EBC2FDC;
  v31 = 0;
  aBlock = MEMORY[0x29EDCA5F8];
  v27 = 1107296256;
  v28 = sub_29EBC3134;
  v29 = &block_descriptor_0;
  v16 = _Block_copy(&aBlock);
  [a2 attachProgressCallBack_];
  _Block_release(v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = *(v8 + 80);
  v22 = a1;
  v18 = (v17 + 24) & ~v17;
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  (*(v8 + 32))(v19 + v18, v11, v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v30 = sub_29EBC3794;
  v31 = v19;
  aBlock = MEMORY[0x29EDCA5F8];
  v27 = 1107296256;
  v28 = sub_29EBC1FF4;
  v29 = &block_descriptor_11;
  v21 = _Block_copy(&aBlock);

  [a2 startDownload:v25 then:v21];
  _Block_release(v21);
  sub_29EBC4134(v20, v22);
}

void sub_29EBC2FDC(void *a1)
{
  if (a1)
  {
    v1 = qword_2A1889AE8;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_29EC00988();
    __swift_project_value_buffer(v3, qword_2A1889DE8);
    v8 = v2;
    v4 = sub_29EC00968();
    v5 = sub_29EC00EA8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      [v8 expectedTimeRemaining];
      *(v6 + 4) = v7;
      *(v6 + 12) = 1024;
      *(v6 + 14) = [v8 isStalled];

      _os_log_impl(&dword_29EBB9000, v4, v5, "Download progress: %f %{BOOL}d", v6, 0x12u);
      MEMORY[0x29EDAC460](v6, -1, -1);
    }

    else
    {

      v4 = v8;
    }
  }
}

void sub_29EBC3134(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_29EBC31A0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(_s11CancelStateOMa() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1889AE8 != -1)
  {
    swift_once();
  }

  v7 = sub_29EC00988();
  __swift_project_value_buffer(v7, qword_2A1889DE8);
  v8 = sub_29EC00968();
  v9 = sub_29EC00ED8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_29EBB9000, v8, v9, "Finished download", v10, 2u);
    MEMORY[0x29EDAC460](v10, -1, -1);
  }

  v11 = *(*a2 + *MEMORY[0x29EDC9DE8] + 16);
  v12 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v12));
  sub_29EBC43F0(a2 + v11, v6);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v14 = (*(*(v13 - 8) + 48))(v6, 2, v13);
  if (v14)
  {
    if (v14 != 1)
    {
      os_unfair_lock_unlock((a2 + v12));
      return;
    }
  }

  else
  {
    sub_29EBC4454(v6);
  }

  os_unfair_lock_unlock((a2 + v12));
  if (a1)
  {
    sub_29EBBD72C();
    v15 = swift_allocError();
    if (a1 == 51)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if (a1 == 12)
    {
      v17 = 10;
    }

    *v16 = v17;
    *(v16 + 8) = 0;
    *(v16 + 16) = 2;
    v18[1] = v15;
    sub_29EC00D18();
  }

  else
  {
    sub_29EC00D28();
  }
}

void sub_29EBC3434()
{
  v1 = [*v0 getLocalFileUrl];
  if (v1)
  {
    v2 = v1;
    sub_29EC007F8();
  }

  else
  {
    __break(1u);
  }
}

id sub_29EBC349C()
{
  result = [*v0 assetId];
  if (result)
  {
    v2 = result;
    v3 = sub_29EC00AE8();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29EBC34FC(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_29EBC35A4;

  return sub_29EBC20C4(a1, a2);
}

uint64_t sub_29EBC35A4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EBC36AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EBC4A5C;

  return sub_29EBC29F4(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29EBC37AC(uint64_t a1, os_unfair_lock_s *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v8 = v15 - v7;
  v9 = *(*(_s11CancelStateOMa() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(a2);
  sub_29EBC43F0(a1, v11);
  v12 = (*(v5 + 48))(v11, 2, v4);
  if (v12)
  {
    if (v12 == 1)
    {
      sub_29EBC4454(a1);
      (*(v5 + 56))(a1, 2, 2, v4);
    }

    os_unfair_lock_unlock(a2);
  }

  else
  {
    (*(v5 + 32))(v8, v11, v4);
    sub_29EBC4454(a1);
    (*(v5 + 56))(a1, 2, 2, v4);
    os_unfair_lock_unlock(a2);
    sub_29EBBD72C();
    v13 = swift_allocError();
    *v14 = xmmword_29EC02500;
    *(v14 + 16) = 2;
    v15[1] = v13;
    sub_29EC00D18();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_29EBC39E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EBC3A0C, 0, 0);
}

uint64_t sub_29EBC3A0C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v1;
  v6 = *(MEMORY[0x29EDCA478] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_29EBC3B1C;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v8, 0, 0, 0xD000000000000023, 0x800000029EC07230, sub_29EBC4640, v3, v9);
}

uint64_t sub_29EBC3B1C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBC3C58, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EBC3C58()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void sub_29EBC3CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a4;
  v26 = a5;
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8]();
  v11 = &v24 - v10;
  if (qword_2A1889AE8 != -1)
  {
    swift_once();
  }

  v12 = sub_29EC00988();
  __swift_project_value_buffer(v12, qword_2A1889DE8);
  v13 = sub_29EC00968();
  v14 = sub_29EC00ED8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_29EBB9000, v13, v14, "Starting catalog download", v15, 2u);
    MEMORY[0x29EDAC460](v15, -1, -1);
  }

  v16 = objc_opt_self();
  v17 = sub_29EC00AB8();
  v18 = v27;
  (*(v8 + 16))(v11, v27, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v26;
  (*(v8 + 32))(v21 + v19, v11, v7);
  *(v21 + v20) = v24;
  aBlock[4] = sub_29EBC472C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EBC1FF4;
  aBlock[3] = &block_descriptor_28;
  v23 = _Block_copy(aBlock);

  [v16 startCatalogDownload:v17 options:v25 then:v23];
  _Block_release(v23);

  sub_29EBC4134(v22, v18);
}

void sub_29EBC3F94(uint64_t a1, uint64_t a2)
{
  v4 = *(*(_s11CancelStateOMa() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a2 + *MEMORY[0x29EDC9DE8] + 16);
  v8 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v8));
  sub_29EBC43F0(a2 + v7, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v10 = (*(*(v9 - 8) + 48))(v6, 2, v9);
  if (v10)
  {
    if (v10 != 1)
    {
      os_unfair_lock_unlock((a2 + v8));
      return;
    }
  }

  else
  {
    sub_29EBC4454(v6);
  }

  os_unfair_lock_unlock((a2 + v8));
  if (a1)
  {
    sub_29EBBD72C();
    v11 = swift_allocError();
    *v12 = xmmword_29EC02510;
    *(v12 + 16) = 2;
    v13[1] = v11;
    sub_29EC00D18();
  }

  else
  {
    sub_29EC00D28();
  }
}

void sub_29EBC4134(uint64_t a1, uint64_t a2)
{
  v4 = *(*(_s11CancelStateOMa() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + *MEMORY[0x29EDC9DE8] + 16);
  v8 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v8));
  sub_29EBC43F0(a1 + v7, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 2, v9);
  if (v11 == 1)
  {
    sub_29EBC4454(a1 + v7);
    (*(v10 + 16))(a1 + v7, a2, v9);
    (*(v10 + 56))(a1 + v7, 0, 2, v9);
    os_unfair_lock_unlock((a1 + v8));
  }

  else if (v11 == 2)
  {
    sub_29EBC4454(a1 + v7);
    (*(v10 + 56))(a1 + v7, 2, 2, v9);
    os_unfair_lock_unlock((a1 + v8));
    sub_29EBBD72C();
    v12 = swift_allocError();
    *v13 = xmmword_29EC02500;
    *(v13 + 16) = 2;
    v14[1] = v12;
    sub_29EC00D18();
  }

  else
  {
    os_unfair_lock_unlock((a1 + v8));
    sub_29EC010D8();
    __break(1u);
  }
}

uint64_t _s11CancelStateOMa()
{
  result = qword_2A1889E10;
  if (!qword_2A1889E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EBC43F0(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBC4454(uint64_t a1)
{
  v2 = _s11CancelStateOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EBC44B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EBC456C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29EBC4A5C;

  return sub_29EBC39E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29EBC4744(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_29EBC4818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EBC48A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E08, &qword_29EC02570);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_29EBC4934()
{
  sub_29EBC498C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_29EBC498C()
{
  if (!qword_2A1889E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2A188A0F0, &qword_29EC023F0);
    v0 = sub_29EC00D38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1889E20);
    }
  }
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

unint64_t sub_29EBC4A6C(uint64_t a1)
{
  v2 = sub_29EC008F8();
  v3 = *(v2 - 8);
  v78 = v2;
  v79 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v77 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E40, &qword_29EC025C8);
  v6 = *(*(v76 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v76);
  v75 = &v60 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A270, &unk_29EC05F00);
  v8 = *(*(v74 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v74);
  v73 = &v60 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  v62 = *(v72 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v72);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v70 = &v60 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E68, &unk_29EC025F0);
  v15 = *(*(v69 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v69);
  v68 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v16);
  v67 = &v60 - v18;
  v80 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E58, &qword_29EC025E0);
    v19 = sub_29EC01118();
  }

  else
  {
    v19 = MEMORY[0x29EDCA198];
  }

  v20 = v80 + 64;
  v21 = 1 << *(v80 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v80 + 64);
  v24 = (v21 + 63) >> 6;
  v64 = v79 + 32;
  v65 = v79 + 16;
  v61 = v19 + 8;

  v26 = 0;
  v66 = v20;
  v63 = v19;
  v71 = v13;
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v24)
    {

      return v19;
    }

    v23 = *(v20 + 8 * v29);
    ++v26;
    if (v23)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v31 = v30 | (v29 << 6);
        v32 = v79;
        v33 = (*(v80 + 48) + 16 * v31);
        v35 = *v33;
        v34 = v33[1];
        v36 = v69;
        v37 = v67;
        v38 = v78;
        (*(v79 + 16))(&v67[*(v69 + 48)], *(v80 + 56) + *(v79 + 72) * v31, v78);
        *v37 = v35;
        v37[1] = v34;
        v39 = v68;
        sub_29EBC6AD8(v37, v68, &qword_2A1889E68, &unk_29EC025F0);
        v40 = *(v36 + 48);
        v41 = *(v76 + 48);
        v42 = *v39;
        v43 = v39[1];
        (*(v32 + 32))(v77, v39 + v40, v38);

        v44 = v75;
        v45 = v43;
        swift_dynamicCast();
        v46 = *(v74 + 48);
        v47 = &v44[v41];
        v48 = v73;
        sub_29EBC6AD8(v47, &v73[v46], &qword_2A188A260, &qword_29EC05EE0);
        v49 = &v48[v46];
        v50 = v70;
        sub_29EBC6AD8(v49, v70, &qword_2A188A260, &qword_29EC05EE0);
        v51 = v71;
        v52 = v42;
        sub_29EBC6AD8(v50, v71, &qword_2A188A260, &qword_29EC05EE0);
        v53 = v42;
        v19 = v63;
        result = sub_29EBEECD0(v53, v43);
        v54 = result;
        if (v55)
        {
          v27 = (v19[6] + 16 * result);
          v28 = v27[1];
          *v27 = v52;
          v27[1] = v43;

          result = sub_29EBC6A08(v51, v19[7] + *(v62 + 72) * v54);
          v26 = v29;
          v20 = v66;
          if (!v23)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v20 = v66;
          if (v19[2] >= v19[3])
          {
            goto LABEL_20;
          }

          *(v61 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
          v56 = (v19[6] + 16 * result);
          *v56 = v52;
          v56[1] = v45;
          result = sub_29EBC6AD8(v51, v19[7] + *(v62 + 72) * result, &qword_2A188A260, &qword_29EC05EE0);
          v57 = v19[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_21;
          }

          v19[2] = v59;
          v26 = v29;
          if (!v23)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v29 = v26;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_29EBC5004@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E40, &qword_29EC025C8) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A270, &unk_29EC05F00);
  v7 = *a1;
  v6 = a1[1];
  sub_29EBC6990(a1 + v4, a2 + *(v5 + 48));
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_29EBC5090(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E58, &qword_29EC025E0);
  v44 = a2;
  result = sub_29EC01108();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v2;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_29EBC6AD8(v31, v45, &qword_2A188A260, &qword_29EC05EE0);
      }

      else
      {
        sub_29EBC6990(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_29EC012B8();
      sub_29EC00B88();
      result = sub_29EC012D8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_29EBC6AD8(v45, *(v12 + 56) + v30 * v20, &qword_2A188A260, &qword_29EC05EE0);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_29EBC53F0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29EC00FB8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_29EC012B8();

      sub_29EC00B88();
      v13 = sub_29EC012D8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_29EBC55F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E58, &qword_29EC025E0);
  v5 = *v0;
  v6 = sub_29EC010F8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_29EBC6990(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_29EBC6AD8(v26, *(v28 + 56) + v27, &qword_2A188A260, &qword_29EC05EE0);
      }

      while (v16);
    }

    v19 = v11;
    v7 = v33;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_29EBC583C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E40, &qword_29EC025C8);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E30, &qword_29EC025B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v13);
  v18 = (&v44 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v44 = v6;
  v49 = v22;
  if (v23)
  {
    v45 = a1;
    v24 = v21;
LABEL_11:
    v28 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v24 << 6);
    v30 = (*(v19 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_29EBC6990(*(v19 + 56) + *(v46 + 72) * v29, v10);
    v33 = v48;
    v34 = *(v48 + 48);
    *v18 = v32;
    v18[1] = v31;
    v35 = v10;
    v36 = v33;
    sub_29EBC6AD8(v35, v18 + v34, &qword_2A188A260, &qword_29EC05EE0);
    v37 = v47;
    (*(v47 + 56))(v18, 0, 1, v36);

    v27 = v24;
    v38 = v37;
    a1 = v45;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v49;
    v1[3] = v27;
    v1[4] = v28;
    v39 = v1[5];
    v40 = v1[6];
    sub_29EBC6AD8(v18, v15, &qword_2A1889E30, &qword_29EC025B8);
    v41 = 1;
    if ((*(v38 + 48))(v15, 1, v36) != 1)
    {
      v42 = v44;
      sub_29EBC6AD8(v15, v44, &qword_2A1889E40, &qword_29EC025C8);
      v39(v42);
      sub_29EBC6A78(v42, &qword_2A1889E40, &qword_29EC025C8);
      v41 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A270, &unk_29EC05F00);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v38 = v47;
        v36 = v48;
        (*(v47 + 56))(&v44 - v17, 1, 1, v48);
        v28 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_29EBC5C04()
{
  v0 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v1 = sub_29EC00AB8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_29EC00AB8();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  sub_29EC00AE8();

  v5 = sub_29EC01138();

  return v5 == 1;
}

unint64_t sub_29EBC5D0C()
{
  v0 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v1 = sub_29EC00AB8();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_29EBC6A78(&v9, &qword_2A1889E38, &qword_29EC025C0);
    return sub_29EBF0904(MEMORY[0x29EDCA190]);
  }

  v3 = sub_29EC00AB8();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_29EC00F98();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E60, &qword_29EC025E8);
  if (swift_dynamicCast())
  {
    v5 = sub_29EBC4A6C(v7);

    return v5;
  }

  return sub_29EBF0904(MEMORY[0x29EDCA190]);
}

uint64_t sub_29EBC5E90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E50, &qword_29EC025D8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = (v42 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v42[3] = a1;
  v42[4] = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v42[5] = v19;
  v42[6] = 0;
  v42[7] = v22 & v20;
  v42[8] = a2;
  v42[9] = a3;

  v42[1] = a3;

  while (1)
  {
    sub_29EBC583C(v17);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A270, &unk_29EC05F00);
    if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
    {
      sub_29EBC6A00();
    }

    v25 = *v17;
    v24 = v17[1];
    sub_29EBC6AD8(v17 + *(v23 + 48), v13, &qword_2A188A260, &qword_29EC05EE0);
    v26 = *a5;
    v28 = sub_29EBEECD0(v25, v24);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_29EBC55F4();
        v36 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_29EBC6A08(v13, v36[7] + *(v43 + 72) * v28);
      a4 = 1;
    }

    else
    {
      sub_29EBC5090(v31, a4 & 1);
      v33 = *a5;
      v34 = sub_29EBEECD0(v25, v24);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v28 = v34;
      v36 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v36[6] + 16 * v28);
      *v37 = v25;
      v37[1] = v24;
      sub_29EBC6AD8(v13, v36[7] + *(v43 + 72) * v28, &qword_2A188A260, &qword_29EC05EE0);
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_20;
      }

      v36[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_29EC01248();
  __break(1u);
  return result;
}

void sub_29EBC61DC(uint64_t a1)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E28, &qword_29EC025B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v66 = v64 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  v72 = *(v67 - 8);
  v4 = *(v72 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v67);
  v73 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v69 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E30, &qword_29EC025B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v64 - v13;
  v15 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v64[1] = "could not be found";
  v16 = sub_29EC00AB8();
  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    v18 = sub_29EC00AB8();
    v19 = [v17 objectForKey_];

    if (v19)
    {
      sub_29EC00F98();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E48, &qword_29EC025D0);
      if (swift_dynamicCast())
      {
        v20 = v74;
        v21 = v70;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v76 = v20;
        sub_29EBC5E90(v21, sub_29EBC5004, 0, isUniquelyReferenced_nonNull_native, &v76);
        v64[0] = 0;
        swift_bridgeObjectRelease_n();
        v70 = v76;
      }

      else
      {
        v64[0] = 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  v64[0] = 0;
  sub_29EBC6A78(&v76, &qword_2A1889E38, &qword_29EC025C0);
LABEL_11:
  v23 = v70 + 64;
  v24 = 1 << *(v70 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v70 + 64);
  v27 = (v24 + 63) >> 6;
  v65 = (v72 + 56);
  v28 = 0;

  v68 = v12;
  v71 = v14;
  while (v26)
  {
    v30 = v28;
LABEL_26:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v69;
    v36 = (*(v70 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    sub_29EBC6990(*(v70 + 56) + *(v72 + 72) * v34, v69);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E40, &qword_29EC025C8);
    v40 = *(v39 + 48);
    v41 = v68;
    *v68 = v38;
    *(v41 + 1) = v37;
    v42 = v35;
    v12 = v41;
    sub_29EBC6AD8(v42, &v41[v40], &qword_2A188A260, &qword_29EC05EE0);
    (*(*(v39 - 8) + 56))(v12, 0, 1, v39);

LABEL_27:
    v43 = v71;
    sub_29EBC6AD8(v12, v71, &qword_2A1889E30, &qword_29EC025B8);
    v44 = v43;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E40, &qword_29EC025C8);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {

      v59 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
      v60 = sub_29EC00AB8();
      v61 = [v59 initWithSuiteName_];

      if (v61)
      {
        v62 = sub_29EC00A58();

        v63 = sub_29EC00AB8();
        [v61 setObject:v62 forKey:v63];
      }

      else
      {
      }

      return;
    }

    v46 = *v44;
    v47 = v44[1];
    v48 = v44 + *(v45 + 48);
    v49 = v73;
    sub_29EBC6AD8(v48, v73, &qword_2A188A260, &qword_29EC05EE0);
    v50 = sub_29EC008F8();
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      v51 = sub_29EBEECD0(v46, v47);
      v53 = v52;

      if (v53)
      {
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *&v76 = v29;
        if (!v54)
        {
          sub_29EBC55F4();
          v29 = v76;
        }

        v55 = *(*(v29 + 48) + 16 * v51 + 8);

        v56 = v66;
        sub_29EBC6AD8(*(v29 + 56) + *(v72 + 72) * v51, v66, &qword_2A188A260, &qword_29EC05EE0);
        sub_29EBC53F0(v51, v29);
        v57 = 0;
      }

      else
      {
        v57 = 1;
        v56 = v66;
      }

      (*v65)(v56, v57, 1, v67);
      sub_29EBC6A78(v56, &qword_2A1889E28, &qword_29EC025B0);
    }

    else
    {
    }

    sub_29EBC6A78(v73, &qword_2A188A260, &qword_29EC05EE0);
  }

  if (v27 <= v28 + 1)
  {
    v31 = v28 + 1;
  }

  else
  {
    v31 = v27;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E40, &qword_29EC025C8);
      (*(*(v58 - 8) + 56))(v12, 1, 1, v58);
      v26 = 0;
      v28 = v32;
      goto LABEL_27;
    }

    v26 = *(v23 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_29EBC6990(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBC6A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A260, &qword_29EC05EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EBC6A78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29EBC6AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t AirTagHardwareModel.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_29EC01138();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_29EBC6BC8()
{
  sub_29EC012B8();
  sub_29EC00B88();
  return sub_29EC012D8();
}

uint64_t sub_29EBC6C3C()
{
  sub_29EC012B8();
  sub_29EC00B88();
  return sub_29EC012D8();
}

uint64_t sub_29EBC6CA0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29EC01138();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_29EBC6D14(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_29EBC6D28()
{
  result = qword_2A1889E70;
  if (!qword_2A1889E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889E70);
  }

  return result;
}

unint64_t sub_29EBC6D80()
{
  result = qword_2A1889E78;
  if (!qword_2A1889E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1889E80, &qword_29EC02668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889E78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirTagHardwareModel(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AirTagHardwareModel(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_29EBC6ECC()
{
  v1[215] = v0;
  v2 = type metadata accessor for MobileAssetRequest();
  v1[216] = v2;
  v3 = *(v2 - 8);
  v1[217] = v3;
  v1[218] = *(v3 + 64);
  v1[219] = swift_task_alloc();
  v1[220] = swift_task_alloc();
  v4 = type metadata accessor for MobileAssetResult();
  v1[221] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v1[224] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr") - 8) + 64) + 15;
  v1[225] = swift_task_alloc();
  v7 = sub_29EC00828();
  v1[226] = v7;
  v8 = *(v7 - 8);
  v1[227] = v8;
  v9 = *(v8 + 64) + 15;
  v1[228] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBC707C, 0, 0);
}

uint64_t sub_29EBC707C()
{
  v71 = v0;
  if (qword_2A1889AC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1720);
  v2 = sub_29EC00988();
  __swift_project_value_buffer(v2, qword_2A1889D30);

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1720);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v69 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 56);
    v9 = *(v5 + 64);
    v10 = *(v5 + 72);
    v11 = *(v5 + 80);
    v12 = *(v5 + 88);
    v13 = *(v5 + 96);
    *(v0 + 1336) = *(v5 + 48);
    *(v0 + 1344) = v8;
    *(v0 + 1352) = v9;
    *(v0 + 1360) = v10;
    *(v0 + 1368) = v11;
    *(v0 + 1376) = v12;
    *(v0 + 1384) = v13;
    sub_29EBCB0F0(v10, v11, v12, v13);
    v14 = sub_29EC00B48();
    v16 = sub_29EBD24D0(v14, v15, &v69);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_29EBB9000, v3, v4, "Beginning asset request for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x29EDAC460](v7, -1, -1);
    MEMORY[0x29EDAC460](v6, -1, -1);
  }

  v17 = *(v0 + 1816);
  v18 = *(v0 + 1808);
  v19 = *(v0 + 1800);
  sub_29EBBD600(*(v0 + 1720) + 104, v0 + 1432);
  sub_29EBC8F48(0x2C31676154726941, 0xE900000000000031, v19);
  if ((*(v17 + 48))(v19, 1, v18) == 1)
  {
    v68 = *(v0 + 1760);
    v65 = *(v0 + 1752);
    v66 = *(v0 + 1744);
    v20 = *(v0 + 1736);
    v21 = *(v0 + 1728);
    v22 = *(v0 + 1720);
    sub_29EBC6A78(*(v0 + 1800), &qword_2A1889DD8, "Pr");
    v69 = 0x2C31676154726941;
    v70 = 0xE900000000000031;
    MEMORY[0x29EDAB670](3307053, 0xE300000000000000);
    v24 = v69;
    v23 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889ED8, &qword_29EC02C60);
    v25 = *(v20 + 72);
    v26 = *(v20 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_29EC01BB0;
    v28 = v27 + ((v26 + 32) & ~v26);

    sub_29EC00918();
    *(v28 + v21[5]) = 0;
    v29 = (v28 + v21[6]);
    *v29 = v24;
    v29[1] = v23;
    v30 = v28 + v21[7];
    *v30 = 0;
    *(v30 + 8) = 1;
    v31 = v28 + v25;
    v32 = *(v22 + 48);
    sub_29EC00918();
    v33 = v21[5];
    *(v31 + v33) = 1;
    v34 = (v31 + v21[6]);
    *v34 = v24;
    v34[1] = v23;
    v35 = v31 + v21[7];
    *v35 = v32;
    *(v35 + 8) = 0;
    sub_29EBCEA88(v28, v68, type metadata accessor for MobileAssetRequest);
    v67 = v33;
    if (*(v68 + v33))
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    v64 = v36;
    sub_29EBCEFC8(v68, v65, type metadata accessor for MobileAssetRequest);
    sub_29EBBD600(v0 + 1432, v0 + 1512);
    v37 = (v26 + 16) & ~v26;
    v38 = (v66 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    sub_29EBCEFC8(v65, v39 + v37, type metadata accessor for MobileAssetRequest);
    sub_29EBBD664((v0 + 1512), v39 + v38);
    v40 = sub_29EBFCA44(0, 1, 1, MEMORY[0x29EDCA190]);
    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_29EBFCA44((v41 > 1), v42 + 1, 1, v40);
    }

    v43 = *(v0 + 1760);
    v44 = *(v0 + 1752);
    v40[2] = v42 + 1;
    v45 = &v40[3 * v42];
    v45[4] = v64;
    v45[5] = &unk_29EC02D28;
    v45[6] = v39;
    sub_29EBCEA88(v31, v43, type metadata accessor for MobileAssetRequest);

    if (*(v68 + v67))
    {
      v46 = 2;
    }

    else
    {
      v46 = 1;
    }

    sub_29EBCEFC8(v43, v44, type metadata accessor for MobileAssetRequest);
    sub_29EBBD600(v0 + 1432, v0 + 1592);
    v47 = swift_allocObject();
    sub_29EBCEFC8(v44, v47 + ((v26 + 16) & ~v26), type metadata accessor for MobileAssetRequest);
    sub_29EBBD664((v0 + 1592), v47 + v38);
    v49 = v40[2];
    v48 = v40[3];
    if (v49 >= v48 >> 1)
    {
      v40 = sub_29EBFCA44((v48 > 1), v49 + 1, 1, v40);
    }

    v50 = *(v0 + 1720);
    v40[2] = v49 + 1;
    v51 = &v40[3 * v49];
    v51[4] = v46;
    v51[5] = &unk_29EC02D30;
    v51[6] = v47;
    v52 = swift_allocObject();
    *(v0 + 1848) = v52;
    v52[2] = v50;
    v52[3] = 0x2C31676154726941;
    v52[4] = 0xE900000000000031;
    v54 = v40[2];
    v53 = v40[3];

    if (v54 >= v53 >> 1)
    {
      v40 = sub_29EBFCA44((v53 > 1), v54 + 1, 1, v40);
    }

    v55 = *(v0 + 1776);
    v56 = *(v0 + 1768);
    v57 = *(v0 + 1720);
    v40[2] = v54 + 1;
    v58 = &v40[3 * v54];
    v58[4] = 1;
    v58[5] = &unk_29EC02D40;
    v58[6] = v52;
    v59 = swift_allocObject();
    *(v0 + 1856) = v59;
    *(v59 + 16) = v57;
    *(v59 + 24) = v40;

    swift_asyncLet_begin();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889EE0, &qword_29EC02CA8);
    swift_asyncLet_begin();
    v60 = *(v0 + 1776);

    return MEMORY[0x2A1C73CB8](v0 + 16, v60, sub_29EBC7A6C, v0 + 1296);
  }

  else
  {
    (*(*(v0 + 1816) + 32))(*(v0 + 1824), *(v0 + 1800), *(v0 + 1808));
    v61 = swift_task_alloc();
    *(v0 + 1832) = v61;
    *v61 = v0;
    v61[1] = sub_29EBC77D4;
    v62 = *(v0 + 1720);

    return sub_29EBC9380();
  }
}

uint64_t sub_29EBC77D4(uint64_t a1)
{
  v2 = *(*v1 + 1832);
  v4 = *v1;
  *(*v1 + 1840) = a1;

  return MEMORY[0x2A1C73D48](sub_29EBC78D4, 0, 0);
}

uint64_t sub_29EBC78D4()
{
  v1 = v0[230];
  v2 = v0[228];
  v3 = v0[227];
  v4 = v0[226];
  v5 = v0[224];
  v6 = v0[223];
  (*(v3 + 16))(v5, v2, v4);
  sub_29EBCEA88(v5, v6, type metadata accessor for MobileAssetResult);
  type metadata accessor for AirTagPairing.Assets();
  v7 = swift_allocObject();
  v8 = sub_29EBBE808();
  sub_29EBCF084(v6, type metadata accessor for MobileAssetResult);
  sub_29EBCF084(v5, type metadata accessor for MobileAssetResult);
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  *(v7 + 16) = v8;
  *(v7 + 24) = v1;
  sub_29EBBEE0C();
  v9 = v0[228];
  v10 = v0[225];
  v11 = v0[224];
  v12 = v0[223];
  v13 = v0[222];
  v14 = v0[220];
  v15 = v0[219];

  v16 = v0[1];

  return v16(v7);
}

uint64_t sub_29EBC7A6C()
{
  v1[233] = v0;
  if (v0)
  {

    return MEMORY[0x2A1C73CA8](v1 + 82, v1 + 209, sub_29EBC7D5C, v1 + 174);
  }

  else
  {
    sub_29EBCEA88(v1[222], v1[224], type metadata accessor for MobileAssetResult);

    return MEMORY[0x2A1C73CB0](v1 + 82, v1 + 209, sub_29EBC7B34, v1 + 194);
  }
}

uint64_t sub_29EBC7B50()
{
  v1 = v0[224];
  v2 = v0[209];
  type metadata accessor for AirTagPairing.Assets();
  v3 = swift_allocObject();
  v0[234] = v3;

  v4 = sub_29EBBE808();
  sub_29EBCF084(v1, type metadata accessor for MobileAssetResult);
  *(v3 + 16) = v4;
  *(v3 + 24) = v2;

  return MEMORY[0x2A1C73CA8](v0 + 82, v0 + 209, sub_29EBC7C0C, v0 + 204);
}

uint64_t sub_29EBC7C64()
{
  v1 = v0[232];
  v2 = v0[231];
  v3 = v0[215];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  sub_29EBBEE0C();

  v4 = v0[234];
  v5 = v0[228];
  v6 = v0[225];
  v7 = v0[224];
  v8 = v0[223];
  v9 = v0[222];
  v10 = v0[220];
  v11 = v0[219];

  v12 = v0[1];

  return v12(v4);
}

uint64_t sub_29EBC7DB4()
{
  v1 = v0[232];
  v2 = v0[231];
  v3 = v0[228];
  v4 = v0[225];
  v5 = v0[224];
  v6 = v0[223];
  v7 = v0[222];
  v8 = v0[220];
  v9 = v0[219];
  v10 = v0[215];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  sub_29EBBEE0C();

  v11 = v0[1];
  v12 = v0[233];

  return v11();
}

uint64_t sub_29EBC7EB0()
{
  v1[215] = v0;
  v2 = type metadata accessor for MobileAssetRequest();
  v1[216] = v2;
  v3 = *(v2 - 8);
  v1[217] = v3;
  v1[218] = *(v3 + 64);
  v1[219] = swift_task_alloc();
  v1[220] = swift_task_alloc();
  v4 = type metadata accessor for MobileAssetResult();
  v1[221] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v1[224] = swift_task_alloc();
  v1[225] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr") - 8) + 64) + 15;
  v1[226] = swift_task_alloc();
  v7 = sub_29EC00828();
  v1[227] = v7;
  v8 = *(v7 - 8);
  v1[228] = v8;
  v9 = *(v8 + 64) + 15;
  v1[229] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBC806C, 0, 0);
}

uint64_t sub_29EBC806C()
{
  v81 = v0;
  if (qword_2A1889AC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1720);
  v2 = sub_29EC00988();
  __swift_project_value_buffer(v2, qword_2A1889D30);

  v3 = sub_29EC00968();
  v4 = sub_29EC00ED8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1720);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v79 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 56);
    v9 = *(v5 + 64);
    v10 = *(v5 + 72);
    v11 = *(v5 + 80);
    v12 = *(v5 + 88);
    v13 = *(v5 + 96);
    *(v0 + 1336) = *(v5 + 48);
    *(v0 + 1344) = v8;
    *(v0 + 1352) = v9;
    *(v0 + 1360) = v10;
    *(v0 + 1368) = v11;
    *(v0 + 1376) = v12;
    *(v0 + 1384) = v13;
    sub_29EBCB0F0(v10, v11, v12, v13);
    v14 = sub_29EC00B48();
    v16 = sub_29EBD24D0(v14, v15, &v79);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_29EBB9000, v3, v4, "Beginning asset request for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x29EDAC460](v7, -1, -1);
    MEMORY[0x29EDAC460](v6, -1, -1);
  }

  v17 = *(v0 + 1824);
  v18 = *(v0 + 1816);
  v19 = *(v0 + 1808);
  v20 = *(v0 + 1720);
  sub_29EBBD600(v20 + 104, v0 + 1432);
  LOBYTE(v79) = *(v20 + 64);
  v21 = HeadphoneHardwareModel.rawValue.getter();
  v23 = v22;
  sub_29EBC8F48(v21, v22, v19);
  if ((*(v17 + 48))(v19, 1, v18) == 1)
  {
    v78 = *(v0 + 1760);
    v73 = *(v0 + 1752);
    v74 = *(v0 + 1744);
    v24 = *(v0 + 1736);
    v25 = *(v0 + 1728);
    v26 = *(v0 + 1720);
    sub_29EBC6A78(*(v0 + 1808), &qword_2A1889DD8, "Pr");
    v76 = v21;
    v77 = v23;
    v79 = v21;
    v80 = v23;

    MEMORY[0x29EDAB670](3307053, 0xE300000000000000);
    v28 = v79;
    v27 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889ED8, &qword_29EC02C60);
    v29 = *(v24 + 72);
    v30 = *(v24 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_29EC01BB0;
    v32 = v31 + ((v30 + 32) & ~v30);

    sub_29EC00918();
    *(v32 + v25[5]) = 0;
    v33 = (v32 + v25[6]);
    *v33 = v28;
    v33[1] = v27;
    v34 = v32 + v25[7];
    *v34 = 0;
    *(v34 + 8) = 1;
    v35 = v32 + v29;
    v36 = *(v26 + 48);
    sub_29EC00918();
    v37 = v25[5];
    *(v35 + v37) = 1;
    v38 = (v35 + v25[6]);
    *v38 = v28;
    v38[1] = v27;
    v39 = v35 + v25[7];
    *v39 = v36;
    *(v39 + 8) = 0;
    sub_29EBCEA88(v32, v78, type metadata accessor for MobileAssetRequest);
    if (*(v78 + v37))
    {
      v40 = 2;
    }

    else
    {
      v40 = 1;
    }

    v72 = v40;
    sub_29EBCEFC8(v78, v73, type metadata accessor for MobileAssetRequest);
    sub_29EBBD600(v0 + 1432, v0 + 1512);
    v41 = (v30 + 16) & ~v30;
    v42 = (v74 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v75 = v41;
    sub_29EBCEFC8(v73, v43 + v41, type metadata accessor for MobileAssetRequest);
    sub_29EBBD664((v0 + 1512), v43 + v42);
    v44 = sub_29EBFCA44(0, 1, 1, MEMORY[0x29EDCA190]);
    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = sub_29EBFCA44((v45 > 1), v46 + 1, 1, v44);
    }

    v47 = *(v0 + 1760);
    v48 = *(v0 + 1752);
    v44[2] = v46 + 1;
    v49 = &v44[3 * v46];
    v49[4] = v72;
    v49[5] = &unk_29EC02C68;
    v49[6] = v43;
    sub_29EBCEA88(v35, v47, type metadata accessor for MobileAssetRequest);

    if (*(v78 + v37))
    {
      v50 = 2;
    }

    else
    {
      v50 = 1;
    }

    sub_29EBCEFC8(v47, v48, type metadata accessor for MobileAssetRequest);
    sub_29EBBD600(v0 + 1432, v0 + 1592);
    v51 = swift_allocObject();
    sub_29EBCEFC8(v48, v51 + v75, type metadata accessor for MobileAssetRequest);
    sub_29EBBD664((v0 + 1592), v51 + v42);
    v53 = v44[2];
    v52 = v44[3];
    if (v53 >= v52 >> 1)
    {
      v44 = sub_29EBFCA44((v52 > 1), v53 + 1, 1, v44);
    }

    v54 = *(v0 + 1720);
    v44[2] = v53 + 1;
    v55 = &v44[3 * v53];
    v55[4] = v50;
    v55[5] = &unk_29EC02C70;
    v55[6] = v51;
    v56 = swift_allocObject();
    *(v0 + 1856) = v56;
    v56[2] = v54;
    v56[3] = v76;
    v56[4] = v77;
    v58 = v44[2];
    v57 = v44[3];

    if (v58 >= v57 >> 1)
    {
      v44 = sub_29EBFCA44((v57 > 1), v58 + 1, 1, v44);
    }

    v59 = *(v0 + 1784);
    v60 = *(v0 + 1768);
    v61 = *(v0 + 1720);
    v44[2] = v58 + 1;
    v62 = &v44[3 * v58];
    v62[4] = 1;
    v62[5] = &unk_29EC02C80;
    v62[6] = v56;
    v63 = swift_allocObject();
    *(v0 + 1864) = v63;
    *(v63 + 16) = v61;
    *(v63 + 24) = v44;

    swift_asyncLet_begin();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889EE0, &qword_29EC02CA8);
    swift_asyncLet_begin();
    v64 = *(v0 + 1784);

    return MEMORY[0x2A1C73CB8](v0 + 16, v64, sub_29EBC8AB0, v0 + 1296);
  }

  else
  {
    v65 = *(v0 + 1832);
    v66 = *(v0 + 1824);
    v67 = *(v0 + 1816);
    v68 = *(v0 + 1808);

    (*(v66 + 32))(v65, v68, v67);
    v69 = swift_task_alloc();
    *(v0 + 1840) = v69;
    *v69 = v0;
    v69[1] = sub_29EBC87D0;
    v70 = *(v0 + 1720);

    return sub_29EBC98AC();
  }
}

uint64_t sub_29EBC87D0(uint64_t a1)
{
  v2 = *(*v1 + 1840);
  v4 = *v1;
  *(*v1 + 1848) = a1;

  return MEMORY[0x2A1C73D48](sub_29EBC88D0, 0, 0);
}

uint64_t sub_29EBC88D0()
{
  v1 = v0[231];
  v2 = v0[225];
  v3 = v0[224];
  (*(v0[228] + 16))(v2, v0[229], v0[227]);
  sub_29EBCEA88(v2, v3, type metadata accessor for MobileAssetResult);
  type metadata accessor for HeadphonePairing.Assets();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 1;
  v4[6] = sub_29EBBE808();
  v4[7] = v1;
  if (v1)
  {
    v5 = v0[231];

    sub_29EBCE418(v6, v5);
  }

  v7 = v0[229];
  v8 = v0[228];
  v9 = v0[227];
  v10 = v0[225];
  sub_29EBCF084(v0[224], type metadata accessor for MobileAssetResult);
  sub_29EBCF084(v10, type metadata accessor for MobileAssetResult);
  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  sub_29EBBEE0C();
  v11 = v0[229];
  v12 = v0[226];
  v13 = v0[225];
  v14 = v0[224];
  v15 = v0[223];
  v16 = v0[222];
  v17 = v0[220];
  v18 = v0[219];

  v19 = v0[1];

  return v19(v4);
}

uint64_t sub_29EBC8AB0()
{
  v1[234] = v0;
  if (v0)
  {

    return MEMORY[0x2A1C73CA8](v1 + 82, v1 + 209, sub_29EBC8DE4, v1 + 174);
  }

  else
  {
    sub_29EBCEA88(v1[223], v1[222], type metadata accessor for MobileAssetResult);

    return MEMORY[0x2A1C73CB0](v1 + 82, v1 + 209, sub_29EBC8B78, v1 + 194);
  }
}

uint64_t sub_29EBC8B94()
{
  v1 = v0[222];
  v2 = v0[209];
  type metadata accessor for HeadphonePairing.Assets();
  v3 = swift_allocObject();
  v0[235] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 1;

  v3[6] = sub_29EBBE808();
  v3[7] = v2;
  if (v2)
  {

    sub_29EBCE418(v4, v2);
  }

  sub_29EBCF084(v0[222], type metadata accessor for MobileAssetResult);

  return MEMORY[0x2A1C73CA8](v0 + 82, v0 + 209, sub_29EBC8C88, v0 + 204);
}

uint64_t sub_29EBC8CE0()
{
  v1 = v0[233];
  v2 = v0[232];
  v3 = v0[215];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  sub_29EBBEE0C();

  v4 = v0[235];
  v5 = v0[229];
  v6 = v0[226];
  v7 = v0[225];
  v8 = v0[224];
  v9 = v0[223];
  v10 = v0[222];
  v11 = v0[220];
  v12 = v0[219];

  v13 = v0[1];

  return v13(v4);
}

uint64_t sub_29EBC8E3C()
{
  v1 = v0[233];
  v2 = v0[232];
  v3 = v0[229];
  v4 = v0[226];
  v5 = v0[225];
  v6 = v0[224];
  v7 = v0[223];
  v8 = v0[222];
  v9 = v0[220];
  v14 = v0[219];
  v10 = v0[215];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  sub_29EBBEE0C();

  v11 = v0[1];
  v12 = v0[234];

  return v11();
}

uint64_t sub_29EBC8F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v44 = a3;
  v42 = sub_29EC00958();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  (MEMORY[0x2A1C7C4A8])();
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_29EC00828();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x2A1C7C4A8])();
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = v39 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v40 = v39 - v19;
  v49 = a1;
  v50 = a2;
  v47 = 44;
  v48 = 0xE100000000000000;
  v45 = 95;
  v46 = 0xE100000000000000;
  sub_29EBCF030();
  v49 = sub_29EC00F88();
  v50 = v20;
  MEMORY[0x29EDAB670](1598833453, 0xE400000000000000);
  v47 = *(v4 + 48);
  v21 = sub_29EC011D8();
  MEMORY[0x29EDAB670](v21);

  v39[2] = v49;
  type metadata accessor for MobileAssetManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = [v23 bundleURL];

  sub_29EC007F8();
  sub_29EC00948();
  sub_29EC007D8();
  v25 = *(v7 + 8);
  v39[1] = v7 + 8;
  v26 = v42;
  v25(v10, v42);
  v43 = v11;
  v27 = *(v11 + 8);
  v28 = v15;
  v29 = v41;
  v27(v28, v41);
  sub_29EC00948();
  v30 = v40;
  sub_29EC007D8();

  v25(v10, v26);
  v27(v18, v29);
  v31 = [objc_opt_self() defaultManager];
  sub_29EC00808();
  v32 = sub_29EC00AB8();

  LODWORD(v23) = [v31 fileExistsAtPath_];

  if (v23)
  {
    v34 = v43;
    v33 = v44;
    (*(v43 + 32))(v44, v30, v29);
    v35 = 0;
    v36 = v33;
    v37 = v34;
  }

  else
  {
    v27(v30, v29);
    v35 = 1;
    v37 = v43;
    v36 = v44;
  }

  return (*(v37 + 56))(v36, v35, 1, v29);
}

uint64_t sub_29EBC9380()
{
  v1[2] = v0;
  v2 = sub_29EC00828();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBC9440, 0, 0);
}

uint64_t sub_29EBC9440()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  *(v0 + 48) = v2;
  v3 = *(v1 + 80);
  *(v0 + 56) = v3;
  v4 = *(v1 + 88);
  *(v0 + 64) = v4;
  v5 = *(v1 + 96);
  *(v0 + 128) = v5;
  if (v5 == 255)
  {
    v22 = *(v0 + 40);

    v23 = *(v0 + 8);

    return v23(0);
  }

  else
  {
    v24 = v2;
    sub_29EBCB0F0(v2, v3, v4, v5);
    v6 = _sSo11CKContainerC14ProductKitCoreE16AirTagsContainerABvgZ_0();
    *(v0 + 72) = v6;
    v7 = _sSo11CKContainerC14ProductKitCoreE31PersonalizationManateeContainerABvgZ_0();
    *(v0 + 80) = v7;
    v8 = qword_2A1889B00;
    v9 = v6;
    v10 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    v15 = __swift_project_value_buffer(v14, qword_2A188A0A8);
    (*(v12 + 16))(v11, v15, v14);
    type metadata accessor for PersonalizationAssetManager();
    swift_allocObject();
    v16 = PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(v9, v10, v11);
    *(v0 + 88) = v16;
    v17 = *(v13 + 32);
    *(v0 + 96) = v17;
    v18 = *(v13 + 40);
    *(v0 + 104) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v24;
    *(v19 + 32) = v3;
    *(v19 + 40) = v4;
    *(v19 + 48) = v5;
    *(v19 + 56) = v17;
    *(v19 + 64) = v18;
    type metadata accessor for PersonalizationDownloadTaskManager();
    swift_allocObject();
    *(v0 + 112) = sub_29EBF3634(&unk_29EC02D70, v19, 1.0);
    sub_29EBBFF38(v17);
    sub_29EBCB0F0(v24, v3, v4, v5);
    sub_29EBBFF38(v17);

    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    *v20 = v0;
    v20[1] = sub_29EBC96F4;

    return sub_29EBF2D40();
  }
}

uint64_t sub_29EBC96F4()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBC97F0, 0, 0);
}

uint64_t sub_29EBC97F0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = *(v0 + 128);
  sub_29EBBFF1C(*(v0 + 96));

  sub_29EBCB188(v8, v7, v6, v9);
  v10 = *(v0 + 40);

  v11 = *(v0 + 8);

  return v11(v2);
}

uint64_t sub_29EBC98AC()
{
  v1[2] = v0;
  v2 = sub_29EC00828();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBC996C, 0, 0);
}

uint64_t sub_29EBC996C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  *(v0 + 48) = v2;
  v3 = *(v1 + 80);
  *(v0 + 56) = v3;
  v4 = *(v1 + 88);
  *(v0 + 64) = v4;
  v5 = *(v1 + 96);
  *(v0 + 128) = v5;
  if (v5 == 255)
  {
    v22 = *(v0 + 40);

    v23 = *(v0 + 8);

    return v23(0);
  }

  else
  {
    v24 = v2;
    sub_29EBCB0F0(v2, v3, v4, v5);
    v6 = _sSo11CKContainerC14ProductKitCoreE16AirTagsContainerABvgZ_0();
    *(v0 + 72) = v6;
    v7 = _sSo11CKContainerC14ProductKitCoreE31PersonalizationManateeContainerABvgZ_0();
    *(v0 + 80) = v7;
    v8 = qword_2A1889B00;
    v9 = v6;
    v10 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 32);
    v11 = *(v0 + 40);
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    v15 = __swift_project_value_buffer(v14, qword_2A188A0A8);
    (*(v12 + 16))(v11, v15, v14);
    type metadata accessor for PersonalizationAssetManager();
    swift_allocObject();
    v16 = PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(v9, v10, v11);
    *(v0 + 88) = v16;
    v17 = *(v13 + 32);
    *(v0 + 96) = v17;
    v18 = *(v13 + 40);
    *(v0 + 104) = v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v24;
    *(v19 + 32) = v3;
    *(v19 + 40) = v4;
    *(v19 + 48) = v5;
    *(v19 + 56) = v17;
    *(v19 + 64) = v18;
    type metadata accessor for PersonalizationDownloadTaskManager();
    swift_allocObject();
    *(v0 + 112) = sub_29EBF3634(&unk_29EC02CB8, v19, 1.0);
    sub_29EBBFF38(v17);
    sub_29EBCB0F0(v24, v3, v4, v5);
    sub_29EBBFF38(v17);

    v20 = swift_task_alloc();
    *(v0 + 120) = v20;
    *v20 = v0;
    v20[1] = sub_29EBC9C20;

    return sub_29EBF2D40();
  }
}

uint64_t sub_29EBC9C20()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2A1C73D48](sub_29EBCF4B0, 0, 0);
}

uint64_t sub_29EBC9D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr") - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_29EC00828();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBC9E18, 0, 0);
}

uint64_t sub_29EBC9E18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  sub_29EBCA17C(*(v0 + 32), *(v0 + 40), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29EBC6A78(*(v0 + 48), &qword_2A1889DD8, "Pr");
    if (qword_2A1889AC0 != -1)
    {
      swift_once();
    }

    v5 = sub_29EC00988();
    __swift_project_value_buffer(v5, qword_2A1889D30);
    v6 = sub_29EC00968();
    v7 = sub_29EC00EB8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_29EBB9000, v6, v7, "Could not find installed fallback asset", v8, 2u);
      MEMORY[0x29EDAC460](v8, -1, -1);
    }

    v9 = *(v0 + 72);
    v10 = *(v0 + 48);

    sub_29EBBD72C();
    swift_allocError();
    *v11 = xmmword_29EC01BA0;
    *(v11 + 16) = 2;
    swift_willThrow();

    v12 = *(v0 + 8);
  }

  else
  {
    v13 = *(v0 + 72);
    v14 = *(v0 + 56);
    v15 = *(v0 + 16);
    v16 = *(*(v0 + 64) + 32);
    v16(v13, *(v0 + 48), v14);
    v16(v15, v13, v14);
    v17 = type metadata accessor for MobileAssetResult();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);

    v12 = *(v0 + 8);
  }

  return v12();
}

uint64_t sub_29EBCA080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889DD8, "Pr") - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_29EC00828();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBCF4D0, 0, 0);
}

uint64_t sub_29EBCA17C@<X0>(void (**a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v58 = a1;
  v57 = a3;
  v72[8] = *MEMORY[0x29EDCA608];
  v59 = sub_29EC00708();
  v56[0] = *(v59 - 8);
  v3 = *(v56[0] + 64);
  MEMORY[0x2A1C7C4A8](v59);
  v66 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29EC00958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29EC00828();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = v56 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = v56 - v19;
  v61 = [objc_opt_self() defaultManager];
  type metadata accessor for MobileAssetManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = [v22 bundleURL];

  sub_29EC007F8();
  sub_29EC00948();
  sub_29EC007D8();
  (*(v6 + 8))(v9, v5);
  v67 = v11;
  v24 = *(v11 + 8);
  v24(v18, v10);
  v25 = sub_29EC007C8();
  v62 = v24;
  v63 = v11 + 8;
  v24(v20, v10);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889BE8, &qword_29EC01D28);
  v26 = swift_allocObject();
  v64 = xmmword_29EC02720;
  *(v26 + 16) = xmmword_29EC02720;
  v27 = *MEMORY[0x29EDB8D40];
  *(v26 + 32) = *MEMORY[0x29EDB8D40];
  type metadata accessor for URLResourceKey(0);
  v28 = v27;
  v29 = sub_29EC00C48();

  v72[0] = 0;
  v30 = v61;
  v31 = [v61 contentsOfDirectoryAtURL:v25 includingPropertiesForKeys:v29 options:4 error:v72];

  v32 = v72[0];
  if (v31)
  {
    v33 = sub_29EC00C58();
    v34 = v32;

    v72[0] = v58;
    v72[1] = v60;
    v70 = 44;
    v71 = 0xE100000000000000;
    v68 = 95;
    v69 = 0xE100000000000000;
    sub_29EBCF030();
    v56[1] = sub_29EC00F88();
    v61 = *(v33 + 16);
    if (!v61)
    {
LABEL_13:

      v44 = 1;
      v43 = v57;
      goto LABEL_16;
    }

    v56[2] = v35;
    v36 = 0;
    v60 = (v33 + ((*(v67 + 80) + 32) & ~*(v67 + 80)));
    v58 = (v56[0] + 8);
    while (v36 < *(v33 + 16))
    {
      (*(v67 + 16))(v15, &v60[*(v67 + 72) * v36], v10);
      inited = swift_initStackObject();
      *(inited + 16) = v64;
      *(inited + 32) = v28;
      v38 = v28;
      sub_29EBF7108(inited);
      swift_setDeallocating();
      sub_29EBCF084(inited + 32, type metadata accessor for URLResourceKey);
      v39 = v66;
      sub_29EC00798();

      v40 = sub_29EC006F8();
      (*v58)(v39, v59);
      if (v40 != 2 && (v40 & 1) != 0)
      {
        sub_29EC007B8();
        v41 = sub_29EC00C08();

        if (v41)
        {

          v42 = v57;
          (*(v67 + 32))(v57, v15, v10);
          v43 = v42;
          v44 = 0;
          goto LABEL_16;
        }
      }

      ++v36;
      v62(v15, v10);
      if (v61 == v36)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v33 = v57;
  v45 = v72[0];
  v28 = sub_29EC00788();

  swift_willThrow();
  if (qword_2A1889AC0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v46 = sub_29EC00988();
  __swift_project_value_buffer(v46, qword_2A1889D30);
  v47 = v28;
  v48 = sub_29EC00968();
  v49 = sub_29EC00EB8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = v28;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v53;
    *v51 = v53;
    _os_log_impl(&dword_29EBB9000, v48, v49, "Failed to iterate over directory contents: %@", v50, 0xCu);
    sub_29EBC6A78(v51, &qword_2A1889F10, &qword_29EC02D20);
    MEMORY[0x29EDAC460](v51, -1, -1);
    MEMORY[0x29EDAC460](v50, -1, -1);
  }

  else
  {
  }

  v44 = 1;
  v43 = v33;
LABEL_16:
  result = (*(v67 + 56))(v43, v44, 1, v10);
  v55 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29EBCA9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EBCAA0C, 0, 0);
}

uint64_t sub_29EBCAA0C()
{
  v1 = v0[4];
  v2 = *(v0[3] + 56);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889EE8, &qword_29EC02CC0);
  v4 = type metadata accessor for MobileAssetResult();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x29EDCA460] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_29EBCAB2C;
  v8 = v0[2];

  return MEMORY[0x2A1C73C68](v8, v3, v4, 0, 0, &unk_29EC02D78, v5, v3);
}

uint64_t sub_29EBCAB2C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBCAC68, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EBCAC68()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_29EBCACCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EBCACF0, 0, 0);
}

uint64_t sub_29EBCACF0()
{
  v1 = v0[4];
  v2 = *(v0[3] + 56);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889EE8, &qword_29EC02CC0);
  v4 = type metadata accessor for MobileAssetResult();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x29EDCA460] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_29EBCAE10;
  v8 = v0[2];

  return MEMORY[0x2A1C73C68](v8, v3, v4, 0, 0, &unk_29EC02CD0, v5, v3);
}

uint64_t sub_29EBCAE10()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EBCF4DC, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

ProductKitCore::AirTagPairing::Configuration::Color_optional __swiftcall AirTagPairing.Configuration.Color.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 99)
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

uint64_t AirTagPairing.Configuration.Color.rawValue.getter()
{
  if (*v0)
  {
    return 99;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EBCAF7C()
{
  v1 = *v0;
  sub_29EC012B8();
  if (v1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x29EDABD90](v2);
  return sub_29EC012D8();
}

uint64_t sub_29EBCAFCC()
{
  if (*v0)
  {
    v1 = 99;
  }

  else
  {
    v1 = 0;
  }

  return MEMORY[0x29EDABD90](v1);
}

uint64_t sub_29EBCB004()
{
  v1 = *v0;
  sub_29EC012B8();
  if (v1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x29EDABD90](v2);
  return sub_29EC012D8();
}

void *sub_29EBCB050@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 99)
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

void sub_29EBCB070(uint64_t *a1@<X8>)
{
  v2 = 99;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t AirTagPairing.Configuration.personalizationAssetInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_29EBCB0F0(v2, v3, v4, v5);
}

uint64_t sub_29EBCB0F0(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_29EBCB104(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_29EBCB104(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return sub_29EBBFF48(result, a2);
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    return sub_29EBBFF48(result, a2);
  }
}

__n128 AirTagPairing.Configuration.personalizationAssetInfo.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_29EBCB188(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_29EBCB188(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_29EBCB19C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_29EBCB19C(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
    return sub_29EBBFF9C(result, a2);
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }

    return sub_29EBBFF9C(result, a2);
  }
}

void AirTagPairing.Configuration.init(hardwareModel:color:timeout:)(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  *(a2 + 16) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(a2 + 48) = -1;
  v4 = v3 == 0;
  v5 = 99;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = a3;
}

uint64_t sub_29EBCB228@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_29EBCB0F0(v2, v3, v4, v5);
}

uint64_t AirTagPairing.AssetRequest.init(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v12 = *(a1 + 3);
  v6 = a1[5];
  v7 = *(a1 + 48);
  v8 = type metadata accessor for MobileAssetManager();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 112) = 0;
  *(v9 + 120) = &unk_29EC01D40;
  *(v9 + 128) = 0;
  *(v9 + 136) = &unk_29EC01D30;
  *(v9 + 144) = 0;
  v14 = v8;
  v15 = &off_2A254D750;
  *&v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889E88, &qword_29EC02730);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 1;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = v3;
  *(v10 + 56) = v4;
  *(v10 + 64) = v5;
  *(v10 + 72) = v12;
  *(v10 + 88) = v6;
  *(v10 + 96) = v7;
  result = sub_29EBBD664(&v13, v10 + 104);
  *a2 = v10;
  return result;
}

uint64_t AirTagPairing.AssetRequest.assets()()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EBCB408;

  return sub_29EBC6ECC();
}

uint64_t sub_29EBCB408(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t AirTagPairing.Assets.AdjustedImageIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_29EC01138();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_29EBCB594()
{
  sub_29EC012B8();
  sub_29EC00B88();
  return sub_29EC012D8();
}

uint64_t sub_29EBCB600()
{
  sub_29EC012B8();
  sub_29EC00B88();
  return sub_29EC012D8();
}

uint64_t sub_29EBCB650@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_29EC01138();

  *a2 = v5 != 0;
  return result;
}

ProductKitCore::AirTagPairing::Assets::VideoIdentifier_optional __swiftcall AirTagPairing.Assets.VideoIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_29EC01138();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AirTagPairing.Assets.VideoIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64726143786F7250;
  if (v1 != 3)
  {
    v2 = 0x5F656C6261736944;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000012;
  if (*v0)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29EBCB800()
{
  v1 = *v0;
  sub_29EC012B8();
  sub_29EC00B88();

  return sub_29EC012D8();
}

uint64_t sub_29EBCB904()
{
  *v0;
  *v0;
  *v0;
  sub_29EC00B88();
}

uint64_t sub_29EBCB9F4()
{
  v1 = *v0;
  sub_29EC012B8();
  sub_29EC00B88();

  return sub_29EC012D8();
}

void sub_29EBCBB00(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000706F6F6C5FLL;
  v4 = 0x64726143786F7250;
  if (v2 != 3)
  {
    v4 = 0x5F656C6261736944;
    v3 = 0xEC000000706F6F6CLL;
  }

  if (v2 == 2)
  {
    v4 = 0xD000000000000017;
    v3 = 0x800000029EC06B00;
  }

  v5 = 0x800000029EC06AC0;
  v6 = 0xD000000000000012;
  if (*v1)
  {
    v6 = 0xD000000000000010;
    v5 = 0x800000029EC06AE0;
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AirTagPairing.Assets.adjustedImage(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for AdjustedAsset() + 20);
  v5 = v3;

  v6 = v5;

  sub_29EBC08E0(a1 + v4);

  *a1 = 0x746375646F7250;
  *(a1 + 8) = 0xE700000000000000;
  *(a1 + 16) = v6;
  *(a1 + 24) = 6778480;
  *(a1 + 32) = 0xE300000000000000;
  *(a1 + 40) = 0;
  return result;
}

uint64_t AirTagPairing.Assets.video(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = 0xED0000706F6F6C5FLL;
  v6 = 0x64726143786F7250;
  if (v4 != 3)
  {
    v6 = 0x5F656C6261736944;
    v5 = 0xEC000000706F6F6CLL;
  }

  if (v4 == 2)
  {
    v6 = 0xD000000000000017;
    v5 = 0x800000029EC06B00;
  }

  v7 = 0x800000029EC06AC0;
  v8 = 0xD000000000000012;
  if (*a1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000029EC06AE0;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (*a1 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  v11 = *(v2 + 16);
  v12 = *(type metadata accessor for AdjustedAsset() + 20);
  v13 = v11;

  v14 = v13;

  sub_29EBC08E0(a2 + v12);

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v14;
  *(a2 + 24) = 7761773;
  *(a2 + 32) = 0xE300000000000000;
  *(a2 + 40) = 0;
  return result;
}

uint64_t AirTagPairing.Assets.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t AirTagPairing.Assets.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_29EBCBE34(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 96) = a4;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for MobileAssetResult();
  *(v4 + 104) = v5;
  v6 = *(v5 - 8);
  *(v4 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889EF0, &qword_29EC02CD8) - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889EE8, &qword_29EC02CC0);
  *(v4 + 136) = v9;
  v10 = *(v9 - 8);
  *(v4 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889EF8, &unk_29EC02CE0) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0) - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EBCC060, 0, 0);
}

uint64_t sub_29EBCC060()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[29] = v2;
  v54 = v2;
  if (v2)
  {
    v56 = v0 + 2;
    v59 = *v0[10];
    v3 = sub_29EC00D98();
    v4 = *(v3 - 8);
    v58 = *(v4 + 56);
    v57 = (v4 + 48);
    v55 = (v4 + 8);
    v5 = (v1 + 48);
    v6 = &qword_2A188A0E0;
    v7 = &qword_29EC051A0;
    v8 = v54;
    do
    {
      v62 = v8;
      v13 = v0[27];
      v12 = v0[28];
      v14 = v7;
      v15 = v6;
      v17 = *(v5 - 2);
      v16 = *(v5 - 1);
      v61 = v5;
      v18 = *v5;
      v58(v12, 1, 1, v3);
      v19 = swift_allocObject();
      *(v19 + 16) = 0u;
      v20 = (v19 + 16);
      *(v19 + 32) = v17;
      *(v19 + 40) = v16;
      v6 = v15;
      v7 = v14;
      v0 = v60;
      *(v19 + 48) = v18;
      sub_29EBCEF60(v12, v13, v6, v7);
      LODWORD(v13) = (*v57)(v13, 1, v3);
      swift_retain_n();
      v21 = v60[27];
      if (v13 == 1)
      {
        sub_29EBC6A78(v60[27], v6, v7);
        if (*v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_29EC00D88();
        (*v55)(v21, v3);
        if (*v20)
        {
LABEL_9:
          v24 = *(v19 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_29EC00D08();
          v23 = v25;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_10:

      if (v23 | v22)
      {
        v9 = v56;
        *v56 = 0;
        v56[1] = 0;
        v60[4] = v22;
        v60[5] = v23;
      }

      else
      {
        v9 = 0;
      }

      v10 = v60[28];
      v11 = v60[17];
      v60[6] = 1;
      v60[7] = v9;
      v60[8] = v59;
      swift_task_create();

      sub_29EBC6A78(v10, v6, v7);
      v5 = v61 + 3;
      v8 = v62 - 1;
    }

    while (v62 != 1);
  }

  v26 = v0[26];
  v27 = v0[12];
  v28 = v0[10];
  v29 = sub_29EC00D98();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v27;
  sub_29EBCD494(v26, &unk_29EC02D08, v30);
  sub_29EBC6A78(v26, &qword_2A188A0E0, &qword_29EC051A0);
  if (v54)
  {
    v31 = v0[11];
    v34 = *(v31 + 32);
    v32 = v31 + 32;
    v33 = v34;
    v35 = *(v32 + 16);

    v40 = 1;
LABEL_14:
    v41 = (v32 + 24 * v40);
    while (1)
    {
      if (v54 == v40)
      {

        goto LABEL_22;
      }

      if (v40 >= v54)
      {
        break;
      }

      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_26;
      }

      v44 = *v41;
      v41 += 3;
      v43 = v44;
      ++v40;
      if (v33 < v44)
      {
        v45 = *(v41 - 1);

        v40 = v42;
        v33 = v43;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v33 = -1;
LABEL_22:
    v60[30] = v33;
    v46 = v60[25];
    v47 = v60[13];
    v48 = v60[14];
    v49 = *(v48 + 56);
    v60[31] = v49;
    v60[32] = (v48 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v49(v46, 1, 1, v47);
    v60[33] = -1;
    v60[34] = 0;
    v50 = *(MEMORY[0x29EDCA3D8] + 4);
    v51 = swift_task_alloc();
    v60[35] = v51;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F00, &qword_29EC02D10);
    *v51 = v60;
    v51[1] = sub_29EBCC528;
    v36 = v60[16];
    v52 = v60[10];
    v37 = 0;
    v38 = 0;
  }

  return MEMORY[0x2A1C73BD0](v36, v37, v38, v39);
}

uint64_t sub_29EBCC528()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_29EBCCE18;
  }

  else
  {
    v3 = sub_29EBCC63C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBCC63C()
{
  v1 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v1, 1, *(v0 + 136)) != 1)
  {
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    sub_29EBC6AD8(v1, v3, &qword_2A1889EE8, &qword_29EC02CC0);
    sub_29EBCEF60(v3, v4, &qword_2A1889EE8, &qword_29EC02CC0);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F08, &qword_29EC02D18);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      v6 = *(v0 + 200);
      v7 = *(v0 + 176);
      v8 = *(v0 + 136);
      v9 = *(v0 + 104);
      v10 = *(v0 + 112);
      v11 = **(v0 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
      sub_29EC00DE8();
      sub_29EBCEF60(v6, v7, &qword_2A1889EF8, &unk_29EC02CE0);
      v12 = (*(v10 + 48))(v7, 1, v9);
      v13 = *(v0 + 176);
      if (v12 == 1)
      {
        v14 = *(v0 + 160);
        sub_29EBC6A78(*(v0 + 176), &qword_2A1889EF8, &unk_29EC02CE0);
        sub_29EBBD72C();
        swift_allocError();
        *v15 = xmmword_29EC02500;
        *(v15 + 16) = 2;
        swift_willThrow();
        v16 = v14;
LABEL_6:
        sub_29EBC6A78(v16, &qword_2A1889EE8, &qword_29EC02CC0);
        goto LABEL_7;
      }

      v50 = *(v0 + 176);
LABEL_17:
      v56 = *(v0 + 216);
      v55 = *(v0 + 224);
      v58 = *(v0 + 200);
      v57 = *(v0 + 208);
      v59 = *(v0 + 192);
      v73 = *(v0 + 184);
      v75 = *(v0 + 168);
      v77 = *(v0 + 152);
      v79 = *(v0 + 128);
      v80 = *(v0 + 120);
      v60 = *(v0 + 72);
      sub_29EBC6A78(*(v0 + 160), &qword_2A1889EE8, &qword_29EC02CC0);
      sub_29EBC6A78(v58, &qword_2A1889EF8, &unk_29EC02CE0);
      sub_29EBCEFC8(v50, v60, type metadata accessor for MobileAssetResult);

      v25 = *(v0 + 8);
      goto LABEL_18;
    }

    v26 = *(v0 + 272);
    v27 = *(v0 + 152);
    v28 = *(v27 + *(v5 + 48));
    v29 = sub_29EBC6AD8(v27, *(v0 + 192), &qword_2A1889EF8, &unk_29EC02CE0);
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return MEMORY[0x2A1C73BD0](v29, v30, v31, v32);
    }

    v34 = *(v0 + 184);
    v35 = *(v0 + 104);
    v36 = *(v0 + 112);
    sub_29EBCEF60(*(v0 + 192), v34, &qword_2A1889EF8, &unk_29EC02CE0);
    v37 = *(v36 + 48);
    v38 = v37(v34, 1, v35);
    v39 = *(v0 + 184);
    if (v38 == 1)
    {
      v40 = *(v0 + 232);
      sub_29EBC6A78(v39, &qword_2A1889EF8, &unk_29EC02CE0);
      if (v33 == v40)
      {
        v42 = (v0 + 168);
        v41 = *(v0 + 168);
        v43 = *(v0 + 200);
        v44 = *(v0 + 136);
        v45 = *(v0 + 104);
        v46 = **(v0 + 80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
        sub_29EC00DE8();
        sub_29EBCEF60(v43, v41, &qword_2A1889EF8, &unk_29EC02CE0);
        if (v37(v41, 1, v45) == 1)
        {
          v47 = *(v0 + 192);
          v48 = *(v0 + 160);
          sub_29EBC6A78(*(v0 + 168), &qword_2A1889EF8, &unk_29EC02CE0);
          sub_29EBBD72C();
          swift_allocError();
          *v49 = xmmword_29EC01BD0;
          *(v49 + 16) = 2;
          swift_willThrow();
          sub_29EBC6A78(v47, &qword_2A1889EF8, &unk_29EC02CE0);
          v16 = v48;
          goto LABEL_6;
        }

        goto LABEL_16;
      }

      v62 = *(v0 + 160);
      sub_29EBC6A78(*(v0 + 192), &qword_2A1889EF8, &unk_29EC02CE0);
      sub_29EBC6A78(v62, &qword_2A1889EE8, &qword_29EC02CC0);
    }

    else
    {
      v42 = (v0 + 120);
      v51 = *(v0 + 240);
      sub_29EBCEFC8(v39, *(v0 + 120), type metadata accessor for MobileAssetResult);
      if (v28 == v51)
      {
        v52 = *(v0 + 136);
        v53 = **(v0 + 80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
        sub_29EC00DE8();
LABEL_16:
        v50 = *v42;
        sub_29EBC6A78(*(v0 + 192), &qword_2A1889EF8, &unk_29EC02CE0);
        v54 = *(v0 + 176);
        goto LABEL_17;
      }

      v63 = *(v0 + 264);
      v64 = *(v0 + 160);
      sub_29EBC6A78(*(v0 + 192), &qword_2A1889EF8, &unk_29EC02CE0);
      sub_29EBC6A78(v64, &qword_2A1889EE8, &qword_29EC02CC0);
      if (v63 < v28)
      {
        v66 = *(v0 + 248);
        v65 = *(v0 + 256);
        v67 = *(v0 + 200);
        v68 = *(v0 + 120);
        v69 = *(v0 + 104);
        sub_29EBC6A78(v67, &qword_2A1889EF8, &unk_29EC02CE0);
        sub_29EBCEFC8(v68, v67, type metadata accessor for MobileAssetResult);
        v66(v67, 0, 1, v69);
        goto LABEL_26;
      }

      sub_29EBCF084(*(v0 + 120), type metadata accessor for MobileAssetResult);
    }

    v28 = *(v0 + 264);
LABEL_26:
    *(v0 + 264) = v28;
    *(v0 + 272) = v33;
    v70 = *(MEMORY[0x29EDCA3D8] + 4);
    v71 = swift_task_alloc();
    *(v0 + 280) = v71;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F00, &qword_29EC02D10);
    *v71 = v0;
    v71[1] = sub_29EBCC528;
    v29 = *(v0 + 128);
    v72 = *(v0 + 80);
    v30 = 0;
    v31 = 0;

    return MEMORY[0x2A1C73BD0](v29, v30, v31, v32);
  }

  sub_29EBC6A78(v1, &qword_2A1889EF0, &qword_29EC02CD8);
  sub_29EBBD72C();
  swift_allocError();
  *v2 = xmmword_29EC02500;
  *(v2 + 16) = 2;
  swift_willThrow();
LABEL_7:
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v0 + 160);
  v74 = *(v0 + 152);
  v76 = *(v0 + 128);
  v78 = *(v0 + 120);
  sub_29EBC6A78(*(v0 + 200), &qword_2A1889EF8, &unk_29EC02CE0);

  v25 = *(v0 + 8);
LABEL_18:

  return v25();
}

uint64_t sub_29EBCCE18()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[15];
  v14 = v0[36];
  sub_29EBC6A78(v0[25], &qword_2A1889EF8, &unk_29EC02CE0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29EBCCF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[3] = a1;
  v5[4] = a4;
  v10 = (a5 + *a5);
  v7 = a5[1];
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_29EBCD02C;

  return v10(a1);
}

uint64_t sub_29EBCD02C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_29EBCD210;
  }

  else
  {
    *(v2 + 56) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F08, &qword_29EC02D18) + 48);
    v4 = sub_29EBCD15C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EBCD15C()
{
  v1 = *(v0 + 24);
  *(v1 + *(v0 + 56)) = *(v0 + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F08, &qword_29EC02D18);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29EBCD210()
{
  v22 = v0;
  if (qword_2A1889B28 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_29EC00988();
  __swift_project_value_buffer(v2, qword_2A188A8A0);
  v3 = v1;
  v4 = sub_29EC00968();
  v5 = sub_29EC00ED8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A188A0F0, &qword_29EC023F0);
    v11 = sub_29EC00B48();
    v13 = sub_29EBD24D0(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_29EBB9000, v4, v5, "Race task failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x29EDAC460](v9, -1, -1);
    MEMORY[0x29EDAC460](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[3];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F08, &qword_29EC02D18) + 48);
  v16 = type metadata accessor for MobileAssetResult();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = v0[3];
  *(v17 + v15) = v0[4];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F08, &qword_29EC02D18);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = v0[1];

  return v19();
}

uint64_t sub_29EBCD494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A188A0E0, &qword_29EC051A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = v20 - v9;
  sub_29EBCEF60(a1, v20 - v9, &qword_2A188A0E0, &qword_29EC051A0);
  v11 = sub_29EC00D98();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29EBC6A78(v10, &qword_2A188A0E0, &qword_29EC051A0);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_29EC00D08();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_29EC00D88();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889EE8, &qword_29EC02CC0);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_29EBCD690(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2A1C73D48](sub_29EBCD6B4, 0, 0);
}

uint64_t sub_29EBCD6B4(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x2A1C73BA0](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x29EDCA3C0] + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_29EBCD79C;
  a1 = v4;

  return MEMORY[0x2A1C73BA0](a1);
}

uint64_t sub_29EBCD79C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EBCD95C;
  }

  else
  {
    v3 = sub_29EBCD8B0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EBCD8B0()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F08, &qword_29EC02D18);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29EBCD95C()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1889F08, &qword_29EC02D18);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_29EBCDA14()
{
  result = qword_2A1889E90;
  if (!qword_2A1889E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889E90);
  }

  return result;
}

unint64_t sub_29EBCDA78()
{
  result = qword_2A1889E98;
  if (!qword_2A1889E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889E98);
  }

  return result;
}

unint64_t sub_29EBCDAD0()
{
  result = qword_2A1889EA0;
  if (!qword_2A1889EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889EA0);
  }

  return result;
}

unint64_t sub_29EBCDB28()
{
  result = qword_2A1889EA8;
  if (!qword_2A1889EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889EA8);
  }

  return result;
}

unint64_t sub_29EBCDBB0()
{
  result = qword_2A1889EC0;
  if (!qword_2A1889EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889EC0);
  }

  return result;
}

uint64_t sub_29EBCDC34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t get_enum_tag_for_layout_string_14ProductKitCore27PersonalizationAssetManagerC0E4InfoOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_29EBCDCF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_29EBCDD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = ~a2;
    }
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AirTagPairing.AssetRequest(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AirTagPairing.AssetRequest(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AirTagPairing.Assets.VideoIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirTagPairing.Assets.VideoIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29EBCE0A8(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileAssetRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EBC4A5C;

  return sub_29EBBEEF4(a1, v1 + v5, v1 + v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for MobileAssetRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_29EC00928();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[8] + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v4));

  return MEMORY[0x2A1C733A0](v0, v4 + 40, v2 | 7);
}

uint64_t sub_29EBCE2B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EBC4A5C;

  return sub_29EBCA080(a1, v4, v5, v6);
}

uint64_t sub_29EBCE36C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EBC4A5C;

  return sub_29EBCACCC(a1, v5, v4);
}

uint64_t sub_29EBCE418(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphonePairing.Assets();
  v31[3] = v4;
  v31[4] = &protocol witness table for HeadphonePairing.Assets;
  v31[0] = a1;
  if (*(a2 + 48) == 1)
  {
    swift_beginAccess();
    v5 = *(a2 + 88);
    if (v5 == 1)
    {
    }

    else
    {
      v19 = *(a2 + 72);
      v18 = *(a2 + 80);
      v20 = *(a2 + 64);
      swift_beginAccess();
      v21 = a1[2];
      v22 = a1[3];
      v23 = a1[4];
      v24 = a1[5];
      a1[2] = v20;
      a1[3] = v19;
      a1[4] = v18;
      a1[5] = v5;

      sub_29EBCEC1C(v20, v19, v18, v5);
      sub_29EBCEC60(v21, v22, v23, v24);
    }
  }

  else
  {
    v6 = v4;
    sub_29EBBD600(v31, v29);
    swift_beginAccess();
    v7 = *(a2 + 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 56) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_29EBFC7F8(0, v7[2] + 1, 1, v7);
      *(a2 + 56) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_29EBFC7F8((v9 > 1), v10 + 1, 1, v7);
      *(a2 + 56) = v7;
    }

    v11 = v30;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    v13 = *(*(v11 - 8) + 64);
    MEMORY[0x2A1C7C4A8](v12);
    v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v27 = v6;
    v28 = &protocol witness table for HeadphonePairing.Assets;
    *&v26 = v17;
    v7[2] = v10 + 1;
    sub_29EBBD664(&v26, &v7[5 * v10 + 4]);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    *(a2 + 56) = v7;
    swift_endAccess();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t sub_29EBCE68C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_29EBCE720;

  return sub_29EBC9380();
}

uint64_t sub_29EBCE720(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2A1C73D48](sub_29EBCE820, 0, 0);
}

uint64_t sub_29EBCE844(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_29EBCE8D8;

  return sub_29EBC98AC();
}

uint64_t sub_29EBCE8D8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2A1C73D48](sub_29EBCF4CC, 0, 0);
}

uint64_t sub_29EBCE9D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EBC4A5C;

  return sub_29EBCE844(a1);
}

uint64_t sub_29EBCEA88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29EBCEAF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29EBC4A5C;

  return sub_29EBBF82C(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_29EBCEC1C(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 1)
  {
    sub_29EBBFF48(result, a2);

    return a4;
  }

  return result;
}

void sub_29EBCEC60(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 1)
  {
    sub_29EBBFF9C(a1, a2);
  }
}

uint64_t sub_29EBCECA4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_29EBC4A5C;

  return sub_29EBCBE34(a1, a2, v6, v7);
}

uint64_t sub_29EBCED64()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2A1C733A0](v0, 56, 7);
}

uint64_t sub_29EBCEDA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EBC4A5C;

  return sub_29EBCCF30(a1, v4, v5, v6, v7);
}

uint64_t sub_29EBCEE6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EBCEEA4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EBC4A5C;

  return sub_29EBCD690(a1, v6);
}

uint64_t sub_29EBCEF60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29EBCEFC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_29EBCF030()
{
  result = qword_2A1889F18;
  if (!qword_2A1889F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889F18);
  }

  return result;
}

uint64_t sub_29EBCF084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29EBCF124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EBC35A4;

  return sub_29EBC9D1C(a1, v4, v5, v6);
}

uint64_t objectdestroy_45Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EBCF218(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EBC4A5C;

  return sub_29EBCA9E8(a1, v5, v4);
}

uint64_t sub_29EBCF2C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29EBC4A5C;

  return sub_29EBCE68C(a1);
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 16);

  sub_29EBCB19C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  if (*(v0 + 56))
  {
    v2 = *(v0 + 64);
  }

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

uint64_t sub_29EBCF3D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29EBC35A4;

  return sub_29EBBF82C(a1, v4, v5, v6, v7, v10, v8, v9);
}

ProductKitCore::HeadphoneHardwareModel_optional __swiftcall HeadphoneHardwareModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_29EC01218();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t HeadphoneHardwareModel.rawValue.getter()
{
  result = 0x3173646F50726941;
  switch(*v0)
  {
    case 5:
      result = 0x4D73646F50726941;
      break;
    case 6:
      result = 0x4D73646F50726941;
      break;
    case 7:
      result = 0x5073646F50726941;
      break;
    case 8:
      result = 0x5073646F50726941;
      break;
    case 9:
      result = 0x5073646F50726941;
      break;
    case 0xA:
      result = 0x7469467374616542;
      break;
    case 0xB:
      result = 0x6C6F537374616542;
      break;
    case 0xC:
      result = 0x6C6F537374616542;
      break;
    case 0xD:
      result = 0x7574537374616542;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0x6C6F537374616542;
      break;
    case 0x10:
      result = 0x6C69507374616542;
      break;
    case 0x11:
    case 0x12:
      result = 0xD000000000000012;
      break;
    case 0x13:
      result = 0xD000000000000010;
      break;
    case 0x14:
      result = 0x2C31587374616542;
      break;
    case 0x15:
      result = 0x2C32587374616542;
      break;
    case 0x16:
      result = 0x6165427265776F50;
      break;
    case 0x17:
      result = 0x6165627265776F50;
      break;
    case 0x18:
      result = 0xD000000000000010;
      break;
    case 0x19:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_29EBCF9F4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HeadphoneHardwareModel.rawValue.getter();
  v4 = v3;
  if (v2 == HeadphoneHardwareModel.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_29EC011F8();
  }

  return v7 & 1;
}

uint64_t sub_29EBCFA90()
{
  v1 = *v0;
  sub_29EC012B8();
  HeadphoneHardwareModel.rawValue.getter();
  sub_29EC00B88();

  return sub_29EC012D8();
}

uint64_t sub_29EBCFAF8()
{
  v2 = *v0;
  HeadphoneHardwareModel.rawValue.getter();
  sub_29EC00B88();
}

uint64_t sub_29EBCFB5C()
{
  v1 = *v0;
  sub_29EC012B8();
  HeadphoneHardwareModel.rawValue.getter();
  sub_29EC00B88();

  return sub_29EC012D8();
}

unint64_t sub_29EBCFBDC@<X0>(unint64_t *a1@<X8>)
{
  result = HeadphoneHardwareModel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HeadphoneHardwareModel.engravingAssetProductID.getter()
{
  v1 = 8194;
  result = 8217;
  switch(*v0)
  {
    case 1:
      result = 8207;
      break;
    case 2:
      result = 8211;
      break;
    case 3:
    case 4:
      return result;
    case 5:
      result = 8202;
      break;
    case 6:
      result = 8223;
      break;
    case 7:
      result = 8206;
      break;
    case 8:
      result = 8212;
      break;
    case 9:
      result = 8231;
      break;
    case 0xA:
      result = 8210;
      break;
    case 0xB:
      result = 8198;
      break;
    case 0xC:
      result = 8204;
      break;
    case 0xD:
      result = 8201;
      break;
    case 0xE:
      result = 8215;
      break;
    case 0xF:
      result = 8229;
      break;
    case 0x10:
      v1 = 8218;
      goto LABEL_3;
    case 0x11:
      result = 8209;
      break;
    case 0x12:
      result = 8214;
      break;
    case 0x13:
      result = 8230;
      break;
    case 0x14:
      result = 8197;
      break;
    case 0x15:
      result = 8208;
      break;
    case 0x16:
      result = 8195;
      break;
    case 0x17:
      result = 8205;
      break;
    case 0x18:
      result = 8203;
      break;
    case 0x19:
      result = 8221;
      break;
    default:
LABEL_3:
      result = v1;
      break;
  }

  return result;
}

ProductKitCore::HeadphoneHardwareModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeadphoneHardwareModel.init(productID:)(Swift::UInt32 productID)
{
  v2 = 0;
  while (v2 != 26)
  {
    v4 = byte_2A254D0C0[v2 + 32];
    if (dword_29EC02F14[v4] != productID)
    {
      v3 = (v4 - 3) <= 7u ? dword_29EC02F7C[(v4 - 3)] : -1;
      ++v2;
      if (v3 != productID)
      {
        continue;
      }
    }

    *v1 = v4;
    return productID;
  }

  sub_29EBBD72C();
  swift_allocError();
  *v5 = xmmword_29EC02D80;
  *(v5 + 16) = 2;
  LOBYTE(productID) = swift_willThrow();
  return productID;
}

ProductKitCore::HeadphoneHardwareModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeadphoneHardwareModel.init(codename:)(Swift::String codename)
{
  object = codename._object;
  countAndFlagsBits = codename._countAndFlagsBits;
  v4 = v1;
  v5 = 0;
  while (2)
  {
    v6 = byte_2A254D0C0[v5++ + 32];
    v7 = 0xE400000000000000;
    v8 = 943206754;
    switch(v6)
    {
      case 1:
        v9 = 943206754;
        goto LABEL_41;
      case 2:
        if (countAndFlagsBits != 943208034)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 3:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6538363762)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 4:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6D38363762)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 5:
        if (countAndFlagsBits != 892417378)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 6:
        v7 = 0xE500000000000000;
        if (countAndFlagsBits != 0x6335313562)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 7:
        if (countAndFlagsBits != 943272546)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 8:
        if (countAndFlagsBits != 943273570)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 9:
        if (countAndFlagsBits != 943208290)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 10:
        if (countAndFlagsBits != 876164194)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 11:
        if (countAndFlagsBits != 842347362)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 12:
        if (countAndFlagsBits != 959525986)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 13:
        if (countAndFlagsBits != 859059298)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 14:
        if (countAndFlagsBits != 859124834)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 15:
        if (countAndFlagsBits != 892744802)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 16:
        if (countAndFlagsBits != 926430306)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 17:
        if (countAndFlagsBits != 925906274)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 18:
        v9 = 925906274;
LABEL_41:
        if (v9 + 256 != countAndFlagsBits)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 19:
        v8 = 859190370;
        goto LABEL_50;
      case 20:
        if (countAndFlagsBits != 842543714)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 21:
        if (countAndFlagsBits != 842478434)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 22:
        if (countAndFlagsBits != 842085218)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 23:
        if (countAndFlagsBits != 875967330)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 24:
        if (countAndFlagsBits != 875836514)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      case 25:
        if (countAndFlagsBits != 943273058)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v8 != countAndFlagsBits)
        {
          goto LABEL_52;
        }

LABEL_51:
        if (v7 == object)
        {
          goto LABEL_69;
        }

LABEL_52:
        v10 = sub_29EC011F8();

        if (v10)
        {
          goto LABEL_70;
        }

        if (v6 == 8)
        {
          v12 = 0xE500000000000000;
          if (countAndFlagsBits == 0x6338393662)
          {
            goto LABEL_63;
          }

LABEL_64:
          v13 = sub_29EC011F8();

          if (v13)
          {
            goto LABEL_70;
          }

          if (v5 == 26)
          {

            sub_29EBBD72C();
            swift_allocError();
            *v14 = xmmword_29EC02D80;
            *(v14 + 16) = 2;
            return swift_willThrow();
          }

          continue;
        }

        if (v6 == 10)
        {
          v11 = 0x6234393462;
        }

        else
        {
          v11 = 808464482;
        }

        if (v6 == 10)
        {
          v12 = 0xE500000000000000;
        }

        else
        {
          v12 = 0xE400000000000000;
        }

        if (v11 != countAndFlagsBits)
        {
          goto LABEL_64;
        }

LABEL_63:
        if (v12 != object)
        {
          goto LABEL_64;
        }

LABEL_69:

LABEL_70:

        *v4 = v6;
        return result;
    }
  }
}

unint64_t sub_29EBD02F4()
{
  result = qword_2A1889F20;
  if (!qword_2A1889F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889F20);
  }

  return result;
}

unint64_t sub_29EBD034C()
{
  result = qword_2A1889F28;
  if (!qword_2A1889F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A1889F30, &qword_29EC02DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1889F28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneHardwareModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneHardwareModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_29EBD0500(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004C5FLL;
  v3 = a1;
  v4 = 0xEA0000000000525FLL;
  if (a1 == 4)
  {
    v4 = 0xEA00000000004C5FLL;
  }

  if (a1 == 3)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x64726143786F7250;
  }

  if (a1 == 3)
  {
    v6 = 0x800000029EC06D50;
  }

  else
  {
    v6 = v4;
  }

  v7 = 0x800000029EC06CF0;
  v8 = 0xD00000000000001CLL;
  v9 = 0x800000029EC06D10;
  v10 = 0xD00000000000001DLL;
  if (v3 != 1)
  {
    v10 = 0xD00000000000001ALL;
    v9 = 0x800000029EC06D30;
  }

  if (v3)
  {
    v8 = v10;
    v7 = v9;
  }

  if (v3 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 2)
  {
    v12 = v7;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x800000029EC06D50;
      if (v11 != 0xD00000000000001BLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEA0000000000525FLL;
      }

      if (v11 != 0x64726143786F7250)
      {
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x800000029EC06D10;
      if (v11 != 0xD00000000000001DLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v2 = 0x800000029EC06D30;
      if (v11 != 0xD00000000000001ALL)
      {
LABEL_36:
        v13 = sub_29EC011F8();
        goto LABEL_37;
      }
    }
  }

  else
  {
    v2 = 0x800000029EC06CF0;
    if (v11 != 0xD00000000000001CLL)
    {
      goto LABEL_36;
    }
  }

  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_29EBD0688(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = 0xD000000000000017;
  v4 = "BatterySwap_loop";
  v5 = a1;
  if (a1 == 5)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a1 == 5)
  {
    v7 = "ProxCard_loop-charged";
  }

  else
  {
    v7 = "ProxCard_loop-charging";
  }

  v8 = 0xD000000000000015;
  if (a1 == 3)
  {
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (v5 == 3)
  {
    v10 = "ProxCard_connect-loop";
  }

  else
  {
    v10 = "ProxCard_loop-fit";
  }

  if (v5 > 4)
  {
    v9 = v6;
    v10 = v7;
  }

  if (v5 == 1)
  {
    v11 = "ProxCard_features";
  }

  else
  {
    v8 = 0xD000000000000011;
    v11 = "Card_L";
  }

  if (v5)
  {
    v3 = v8;
    v12 = v11;
  }

  else
  {
    v12 = "BatterySwap_loop";
  }

  if (v5 > 2)
  {
    v13 = v10;
  }

  else
  {
    v9 = v3;
    v13 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000015;
        v4 = "ProxCard_features";
      }

      else
      {
        v4 = "Card_L";
      }
    }

    else
    {
      v2 = 0xD000000000000017;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000016;
      v4 = "ProxCard_loop-charged";
    }

    else
    {
      v2 = 0xD000000000000014;
      v4 = "ProxCard_loop-charging";
    }
  }

  else if (a2 == 3)
  {
    v4 = "ProxCard_connect-loop";
  }

  else
  {
    v2 = 0xD000000000000015;
    v4 = "ProxCard_loop-fit";
  }

  if (v9 == v2 && (v13 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_29EC011F8();
  }

  return v14 & 1;
}

uint64_t sub_29EBD0820(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000706F6F6C5FLL;
  v3 = 0x64726143786F7250;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (v4)
    {
      v8 = 0x800000029EC06AE0;
    }

    else
    {
      v8 = 0x800000029EC06AC0;
    }
  }

  else
  {
    v5 = 0x5F656C6261736944;
    v6 = 0xEC000000706F6F6CLL;
    if (a1 == 3)
    {
      v5 = 0x64726143786F7250;
      v6 = 0xED0000706F6F6C5FLL;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = v5;
    }

    if (v4 == 2)
    {
      v8 = 0x800000029EC06B00;
    }

    else
    {
      v8 = v6;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a2)
    {
      v2 = 0x800000029EC06AE0;
    }

    else
    {
      v2 = 0x800000029EC06AC0;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v2 = 0x800000029EC06B00;
      if (v7 != 0xD000000000000017)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 != 3)
    {
      v2 = 0xEC000000706F6F6CLL;
      if (v7 != 0x5F656C6261736944)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  if (v7 != v3)
  {
LABEL_31:
    v9 = sub_29EC011F8();
    goto LABEL_32;
  }

LABEL_28:
  if (v8 != v2)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:

  return v9 & 1;
}