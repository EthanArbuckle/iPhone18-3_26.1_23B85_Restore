void sub_1E3CF1994()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - v6;
  v33 = sub_1E41FDC74();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v34 = v12 - v11;
  v13 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1E324FBDC();
  (*(v15 + 16))(v19, v20, v13);

  v21 = sub_1E41FFC94();
  v22 = sub_1E42067E4();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_13_13();
    v23 = swift_slowAlloc();
    v32[2] = v3;
    v24 = v23;
    OUTLINED_FUNCTION_15_4();
    v25 = swift_slowAlloc();
    v32[1] = v7;
    v26 = v1;
    v27 = v25;
    v35 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1E3270FC8(v26, v0, &v35);
    _os_log_impl(&dword_1E323F000, v21, v22, "SiriLinks: Registering library media item for %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  (*(v15 + 8))(v19, v13);
  (*(v9 + 104))(v34, *MEMORY[0x1E695A148], v33);
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);

  sub_1E41FDC84();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF1C5C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v39 - v7;
  v8 = sub_1E41FDC74();
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v40 = v11 - v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  if (!(*(*v2 + 552))())
  {
    v46 = 0u;
    v47 = 0u;
    goto LABEL_6;
  }

  v44 = &unk_1F5D7C0A8;
  v45 = &off_1F5D7BC88;
  LOBYTE(v43[0]) = 0;
  v16 = OUTLINED_FUNCTION_47_39();
  sub_1E3F9F164(v16);

  __swift_destroy_boxed_opaque_existential_1(v43);
  if (!*(&v47 + 1))
  {
LABEL_6:
    sub_1E325F6F0(&v46, &unk_1ECF296E0);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    v17 = v43[0];
    goto LABEL_8;
  }

LABEL_7:
  v17 = sub_1E4205CB4();
LABEL_8:
  v18 = sub_1E324FBDC();
  (*(v14 + 16))(v0, v18, v12);

  v19 = sub_1E41FFC94();
  v20 = sub_1E42067E4();

  if (os_log_type_enabled(v19, v20))
  {
    v39 = v4;
    OUTLINED_FUNCTION_13_13();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v22 = swift_slowAlloc();
    v43[0] = v22;
    *v21 = 136315138;
    if (v2[3])
    {
      v23 = v2[2];
      v24 = v2[3];
    }

    else
    {
      v24 = 0xE200000000000000;
      v23 = 16718;
    }

    v25 = sub_1E3270FC8(v23, v24, v43);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1E323F000, v19, v20, "SiriLinks: Registering media item for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v14 + 8))(v0, v12);
  }

  else
  {

    (*(v14 + 8))(v0, v12);
  }

  sub_1E3CF3550(v17, 8);
  sub_1E3CF3550(v17, 3);
  v44 = &unk_1F5D7C0A8;
  v45 = &off_1F5D7BC88;
  LOBYTE(v43[0]) = 2;
  v26 = OUTLINED_FUNCTION_47_39();
  sub_1E3F9F164(v26);
  if (*(&v47 + 1))
  {
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_1E325F6F0(&v46, &unk_1ECF296E0);
  }

  v27 = OUTLINED_FUNCTION_11_6();
  sub_1E3CF253C(v27, v28, v29, v30, v31, v32, v33, v34, v39, v40, v41, v42);

  sub_1E3CF32D4(v41);

  sub_1E41FE414();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_1E41FDC84();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF2110()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  sub_1E41FDC74();
  OUTLINED_FUNCTION_0_10();
  v49 = v14;
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v48 = type metadata accessor for SiriMediaDomainInfo(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = (v17 - v16);
  v19 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  sub_1E324FBDC();
  v26 = OUTLINED_FUNCTION_57_24();
  v47 = v19;
  v27(v26);
  sub_1E3CF5854(v2, v18, type metadata accessor for SiriMediaDomainInfo);
  v28 = sub_1E41FFC94();
  v29 = sub_1E42067E4();
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_13_13();
    v30 = swift_slowAlloc();
    v44 = v0;
    v31 = v30;
    OUTLINED_FUNCTION_15_4();
    v32 = swift_slowAlloc();
    v46 = v4;
    v33 = v32;
    v51 = v32;
    *v31 = 136315138;
    v45 = v12;
    v43 = v9;
    v34 = *v18;
    v35 = v18[1];

    OUTLINED_FUNCTION_1_197();
    sub_1E3CF56F0();
    v36 = sub_1E3270FC8(v34, v35, &v51);
    v9 = v43;

    *(v31 + 4) = v36;
    v12 = v45;
    _os_log_impl(&dword_1E323F000, v28, v29, "SiriLinks: Retrieving media item for %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v0 = v44;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {

    OUTLINED_FUNCTION_1_197();
    sub_1E3CF56F0();
  }

  (*(v21 + 8))(v25, v47);
  v37 = v48;
  (*(v49 + 16))(v0, v2 + *(v48 + 20), v50);
  sub_1E38B2468(v2 + *(v37 + 24), v9);
  v38 = sub_1E41FE414();
  if (__swift_getEnumTagSinglePayload(v9, 1, v38) == 1)
  {

    OUTLINED_FUNCTION_58_4();
    sub_1E41FE344();
    if (__swift_getEnumTagSinglePayload(v9, 1, v38) != 1)
    {
      sub_1E325F6F0(v9, &unk_1ECF363C0);
    }
  }

  else
  {
    (*(*(v38 - 8) + 32))(v12, v9, v38);
  }

  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  sub_1E41FDC84();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF253C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = *MEMORY[0x1E695A148];
  v26 = sub_1E41FDC74();
  (*(*(v26 - 8) + 104))(v17, v25, v26);
  if (!v13)
  {
LABEL_20:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E3C7EAD8(4);
  if (v28 == v15 && v27 == v13)
  {
  }

  else
  {
    v30 = OUTLINED_FUNCTION_18_83();

    if ((v30 & 1) == 0)
    {
      sub_1E3C7EAD8(5);
      if (v32 == v15 && v31 == v13)
      {
      }

      else
      {
        v34 = OUTLINED_FUNCTION_18_83();

        if ((v34 & 1) == 0)
        {
          sub_1E3C7EAD8(6);
          if (v36 == v15 && v35 == v13)
          {
          }

          else
          {
            v38 = OUTLINED_FUNCTION_18_83();

            if ((v38 & 1) == 0)
            {
              sub_1E324FBDC();
              v39 = OUTLINED_FUNCTION_57_24();
              v40(v39);

              v41 = sub_1E41FFC94();
              v42 = sub_1E42067D4();

              if (os_log_type_enabled(v41, v42))
              {
                OUTLINED_FUNCTION_13_13();
                v43 = swift_slowAlloc();
                OUTLINED_FUNCTION_15_4();
                v44 = swift_slowAlloc();
                v55 = v44;
                *v43 = 136315138;
                *(v43 + 4) = sub_1E3270FC8(v15, v13, &v55);
                _os_log_impl(&dword_1E323F000, v41, v42, "SiriLinks: No associated IntentMediaItem.ItemType found for %s", v43, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v44);
                OUTLINED_FUNCTION_7_17();
                MEMORY[0x1E69143B0]();
                OUTLINED_FUNCTION_7_17();
                MEMORY[0x1E69143B0]();
              }

              (*(v20 + 8))(v24, v18);
              goto LABEL_20;
            }
          }
        }
      }
    }
  }

  v45 = OUTLINED_FUNCTION_29_65();
  v46(v45);
  OUTLINED_FUNCTION_25_2();

  v51(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12);
}

uint64_t sub_1E3CF2858()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = sub_1E41FFCB4();
  v0[11] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[12] = v5;
  v0[13] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  v0[14] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FDC74();
  v0[15] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[16] = v8;
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3CF2990()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[10];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[9] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_1E3CF5774();

    OUTLINED_FUNCTION_32_0();
    v3 = sub_1E3A47920();
    v0[19] = v3;
    v4 = [objc_opt_self() wlkDefaultQueue];
    v0[20] = v4;
    [v4 addOperation_];
    v5 = swift_task_alloc();
    v0[21] = v5;
    *(v5 + 16) = v3;
    v6 = swift_task_alloc();
    v0[22] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37310);
    *v6 = v0;
    v6[1] = sub_1E3CF2C30;
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DE38](v7, v8, v9, 0xD000000000000016, v10, v11, v5, v12);
  }

  else
  {
    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    v16 = sub_1E324FBDC();
    (*(v14 + 16))(v13, v16, v15);
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1E323F000, v17, v18, "SiriLinkRoutingModifier: Error decoding library ID", v19, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];

    (*(v21 + 8))(v20, v22);
    type metadata accessor for SiriMediaDomainInfo(0);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);

    OUTLINED_FUNCTION_54();

    return v27();
  }
}

uint64_t sub_1E3CF2C30()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3CF2D38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  if (!v1)
  {
    v6 = *(v0 + 152);

LABEL_12:

LABEL_13:

    type metadata accessor for SiriMediaDomainInfo(0);
    OUTLINED_FUNCTION_32_2();
    goto LABEL_28;
  }

  if (!v2)
  {
    v7 = *(v0 + 152);

    goto LABEL_12;
  }

  if (!*(v0 + 56))
  {
    v12 = *(v0 + 152);

    goto LABEL_13;
  }

  v3 = *(v0 + 32);
  v30 = *(v0 + 16);
  v4 = v3 == 0x6569766F4DLL && v2 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_24_72(), (sub_1E42079A4() & 1) != 0))
  {
    v5 = MEMORY[0x1E695A138];
  }

  else
  {
    v13 = v3 == 0x65646F73697045 && v2 == 0xE700000000000000;
    if (v13 || (OUTLINED_FUNCTION_24_72(), (sub_1E42079A4() & 1) != 0) || (v3 == 2003789907 ? (v14 = v2 == 0xE400000000000000) : (v14 = 0), v14 || (OUTLINED_FUNCTION_24_72(), (sub_1E42079A4() & 1) != 0)))
    {
      v5 = MEMORY[0x1E695A130];
    }

    else
    {
      v5 = MEMORY[0x1E695A130];
      if (v3 != 0x6E6F73616553 || v2 != 0xE600000000000000)
      {
        OUTLINED_FUNCTION_24_72();
        v28 = sub_1E42079A4();

        v15 = MEMORY[0x1E695A148];
        if (v28)
        {
          v15 = v5;
        }

        goto LABEL_27;
      }
    }
  }

  v15 = v5;
LABEL_27:
  v16 = *(v0 + 160);
  v29 = *(v0 + 152);
  v17 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 112);
  v22 = *(v0 + 64);
  (*(v19 + 104))(v18, *v15, v20);
  (*(v19 + 16))(v17, v18, v20);
  sub_1E41FE404();

  (*(v19 + 8))(v18, v20);
  *v22 = v30;
  *(v22 + 1) = v1;
  v23 = type metadata accessor for SiriMediaDomainInfo(0);
  (*(v19 + 32))(&v22[v23[5]], v17, v20);
  sub_1E327D738(v21, &v22[v23[6]]);
  v24 = &v22[v23[7]];
  *v24 = 0;
  *(v24 + 1) = 0xE000000000000000;
  OUTLINED_FUNCTION_114();
  v11 = v23;
LABEL_28:
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);

  OUTLINED_FUNCTION_54();

  return v25();
}

uint64_t sub_1E3CF306C()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3CF3110()
{
  OUTLINED_FUNCTION_156();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_35_3();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v2, v1, v3);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, v2, v3);
  aBlock[4] = sub_1E3CF6404;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E329EEC4;
  aBlock[3] = &block_descriptor_95;
  v10 = _Block_copy(aBlock);

  [v0 setCompletionBlock_];
  _Block_release(v10);
}

uint64_t sub_1E3CF32D4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9 + 8;
  v11 = sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v21[3] = &unk_1F5D7C0A8;
  v21[4] = &off_1F5D7BC88;
  LOBYTE(v21[0]) = 1;
  sub_1E3F9F164(v21);
  if (v23)
  {
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_1E41FE404();

      sub_1E325F6F0(v10, &unk_1ECF363C0);
      v15 = OUTLINED_FUNCTION_53();
      sub_1E327D738(v15, v16);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1E325F6F0(v22, &unk_1ECF296E0);
  }

  v17 = OUTLINED_FUNCTION_11_6();
  sub_1E38B2468(v17, v18);
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {
    OUTLINED_FUNCTION_58_4();
    sub_1E41FE344();
    sub_1E325F6F0(v10, &unk_1ECF363C0);
    result = __swift_getEnumTagSinglePayload(v6, 1, v11);
    if (result != 1)
    {
      return sub_1E325F6F0(v6, &unk_1ECF363C0);
    }
  }

  else
  {
    sub_1E325F6F0(v10, &unk_1ECF363C0);
    return (*(*(v11 - 8) + 32))(a1, v6, v11);
  }

  return result;
}

uint64_t sub_1E3CF3550(uint64_t a1, char a2)
{
  v3[3] = &unk_1F5D7C0A8;
  v3[4] = &off_1F5D7BC88;
  LOBYTE(v3[0]) = a2;
  sub_1E3F9F164(v3);
  if (v5)
  {
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_1E325F6F0(v4, &unk_1ECF296E0);
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3CF361C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  v4 = *(v3 + 24);
  sub_1E41FDCA4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(v2, v0 + v4);
  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3CF36B8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_217();
  v4 = sub_1E3CF1538(v2, v3);

  return MEMORY[0x1EEDB2C58](a1, v4);
}

uint64_t sub_1E3CF3728()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_52_35();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_14_3(v4);
  *v5 = v6;
  v5[1] = sub_1E327C238;

  return MEMORY[0x1EEDB3F60](v3, v2, v1, v0);
}

uint64_t sub_1E3CF37D4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_217();
  v4 = sub_1E3CF1538(v2, v3);

  return MEMORY[0x1EEDB3F68](a1, v4);
}

uint64_t sub_1E3CF3840()
{
  OUTLINED_FUNCTION_24();
  v0[18] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v2);
  v0[19] = OUTLINED_FUNCTION_86_0();
  v3 = type metadata accessor for ViewModelLinkEntity(0);
  v0[20] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[21] = v4;
  v0[22] = OUTLINED_FUNCTION_86_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37318);
  OUTLINED_FUNCTION_17_2(v5);
  v0[23] = OUTLINED_FUNCTION_86_0();
  v6 = type metadata accessor for SiriMediaDomainInfo(0);
  v0[24] = v6;
  OUTLINED_FUNCTION_17_2(v6);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v7 = sub_1E41FFCB4();
  v0[27] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[28] = v8;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3CF3A08()
{
  v92 = v0;
  v1 = v0[34];
  v3 = v0[27];
  v2 = v0[28];
  v4 = sub_1E324FBDC();
  v0[35] = v4;
  v5 = *(v2 + 16);
  v0[36] = v5;
  v0[37] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);

  v6 = sub_1E41FFC94();
  v7 = sub_1E42067D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    OUTLINED_FUNCTION_13_13();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v11 = *(v8 + 16);
    v88 = v5;
    v91[0] = v10;
    v86 = v4;
    if (v11)
    {
    }

    v83 = v0[34];
    v17 = v0[27];
    v16 = v0[28];
    v18 = OUTLINED_FUNCTION_17_11();
    v21 = sub_1E3270FC8(v18, v19, v20);

    *(v9 + 4) = v21;
    OUTLINED_FUNCTION_41_45(&dword_1E323F000, v22, v7, "SiriLinks: requested entity for identifier: %s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    v15 = *(v16 + 8);
    v15(v83, v17);
    v4 = v86;
    v5 = v88;
  }

  else
  {
    v12 = v0[34];
    v13 = v0[27];
    v14 = v0[28];

    v15 = *(v14 + 8);
    v15(v12, v13);
  }

  v0[38] = v15;
  v23 = v0[18];
  if (v23[2])
  {
    v25 = v23[4];
    v24 = v23[5];
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v0[39] = v25;
  v0[40] = v24;
  OUTLINED_FUNCTION_24_72();
  if ((sub_1E3CF48AC() & 1) == 0)
  {
    v38 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v38 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      sub_1E3CF4A94(v25, v24);
      v39 = v0[27];
      v82 = v0[31];
      v85 = v15;
      v90 = v5;
      v47 = v0[25];
      v48 = v0[22];
      v77 = v0[24];
      v78 = v0[19];
      *(v48 + *(v0[20] + 28)) = 0;
      *v48 = v25;
      v48[1] = v24;
      v49 = v0[7];
      v80 = v0[6];
      v48[2] = v80;
      v48[3] = v49;

      sub_1E41FE404();
      v81 = v39;
      v51 = v0[8];
      v50 = v0[9];
      v87 = v4;
      v52 = v0[5];
      v75 = v0[4];
      v53 = v77;

      sub_1E3CF253C(v75, v52, v54, v55, v56, v57, v58, v59, v74, v75, v77, v78);

      sub_1E38B2468(v79, v47 + *(v53 + 24));
      v76 = v51;
      *v47 = v51;
      v47[1] = v50;
      v60 = v50;
      v61 = (v47 + *(v53 + 28));
      *v61 = v80;
      v61[1] = v49;

      sub_1E3CF2110();
      OUTLINED_FUNCTION_1_197();
      sub_1E3CF56F0();
      sub_1E325F6F0(v79, &unk_1ECF363C0);
      v90(v82, v87, v81);
      sub_1E3CF57C0((v0 + 2), (v0 + 10));
      v62 = sub_1E41FFC94();
      v63 = sub_1E42067D4();
      sub_1E3CF5744((v0 + 2));
      v64 = os_log_type_enabled(v62, v63);
      v65 = v0[31];
      v66 = v0[27];
      if (v64)
      {
        OUTLINED_FUNCTION_13_13();
        v67 = swift_slowAlloc();
        OUTLINED_FUNCTION_15_4();
        v68 = swift_slowAlloc();
        v91[0] = v68;
        *v67 = 136315138;

        sub_1E3CF5744((v0 + 2));
        v69 = sub_1E3270FC8(v76, v60, v91);

        *(v67 + 4) = v69;
        OUTLINED_FUNCTION_42_52(&dword_1E323F000, v70, v63, "SiriLinks: Retrieved media item for %s");
        __swift_destroy_boxed_opaque_existential_1(v68);
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      else
      {
        sub_1E3CF5744((v0 + 2));
      }

      v85(v65, v66);
      v72 = v0[21];
      v71 = v0[22];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37320);
      v73 = OUTLINED_FUNCTION_59_25();
      *(v73 + 16) = xmmword_1E4297BE0;
      v89 = v73;
      sub_1E3CF57F8(v71, v73 + v72, type metadata accessor for ViewModelLinkEntity);
LABEL_23:
      OUTLINED_FUNCTION_26_74();

      OUTLINED_FUNCTION_13_7();

      return v46(v89);
    }

LABEL_22:
    v89 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  sub_1E4206024();
  OUTLINED_FUNCTION_24_72();
  v26 = sub_1E4206054();

  v27 = sub_1E3CF49F0(v26, v25, v24);
  if ((v27 ^ v28) < 0x4000)
  {
    v29 = v0[32];
    v30 = v0[27];

    v5(v29, v4, v30);

    v31 = sub_1E41FFC94();
    v32 = sub_1E42067F4();

    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_13_13();
      v84 = v15;
      v33 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v34 = swift_slowAlloc();
      v91[0] = v34;
      *v33 = 136315138;
      v35 = sub_1E3270FC8(v25, v24, v91);

      *(v33 + 4) = v35;
      OUTLINED_FUNCTION_42_52(&dword_1E323F000, v36, v32, "SiriLinkRoutingModifier:: Unable to obtain adamID for %s");
      __swift_destroy_boxed_opaque_existential_1(v34);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      v37 = OUTLINED_FUNCTION_34_54();
      v84(v37);
    }

    else
    {

      v45 = OUTLINED_FUNCTION_34_54();
      (v15)(v45);
    }

    goto LABEL_22;
  }

  v40 = MEMORY[0x1E6910920]();
  v42 = v41;

  v0[41] = v40;
  v0[42] = v42;
  v43 = swift_task_alloc();
  v0[43] = v43;
  *v43 = v0;
  v43[1] = sub_1E3CF4270;

  return sub_1E3CF2858();
}

uint64_t sub_1E3CF4270()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 352) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3CF4384()
{
  v35 = v0;
  v1 = v0[23];
  v2 = v0[24];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[40];
  if (EnumTagSinglePayload == 1)
  {
    v5 = v0[36];
    v6 = v0[35];
    v7 = v0[33];
    v8 = v0[27];

    sub_1E325F6F0(v1, &qword_1ECF37318);
    v5(v7, v6, v8);

    v9 = sub_1E41FFC94();
    v10 = sub_1E42067F4();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[42];
    if (v11)
    {
      v13 = v0[41];
      v32 = v0[38];
      OUTLINED_FUNCTION_13_13();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v15 = swift_slowAlloc();
      v34 = v15;
      *v14 = 136315138;
      v16 = sub_1E3270FC8(v13, v12, &v34);

      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_42_52(&dword_1E323F000, v17, v10, "SiriLinks: library: unable to decode media item for adam id %s");
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      v18 = OUTLINED_FUNCTION_34_54();
      v32(v18);
    }

    else
    {
      v27 = v0[38];
      v28 = v0[33];
      v29 = v0[27];

      v27(v28, v29);
    }

    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = v0[39];
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[20];

    sub_1E3CF57F8(v1, v20, type metadata accessor for SiriMediaDomainInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37320);
    v23 = OUTLINED_FUNCTION_59_25();
    *(v23 + 16) = xmmword_1E4297BE0;
    v33 = v23;
    v24 = (v23 + v1);
    sub_1E3CF5854(v20, v21, type metadata accessor for SiriMediaDomainInfo);
    *(v24 + *(v22 + 28)) = 0;
    *v24 = v19;
    v24[1] = v4;
    v25 = (v21 + *(v2 + 28));
    v26 = v25[1];
    v24[2] = *v25;
    v24[3] = v26;

    sub_1E3CF2110();
    sub_1E3CF56F0();
    sub_1E3CF56F0();
  }

  OUTLINED_FUNCTION_26_74();

  OUTLINED_FUNCTION_13_7();

  return v30(v33);
}

uint64_t sub_1E3CF46AC()
{
  v1 = *(v0 + 352);
  (*(v0 + 288))(*(v0 + 240), *(v0 + 280), *(v0 + 216));
  v2 = v1;
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 352);
  if (v5)
  {
    OUTLINED_FUNCTION_13_13();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_41_45(&dword_1E323F000, v11, v4, "SiriLinks: library:  unable to obtain media item for link entity [%@]");
    sub_1E325F6F0(v8, &unk_1ECF28E30);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {
  }

  (*(v0 + 304))(*(v0 + 240), *(v0 + 216));

  OUTLINED_FUNCTION_13_7();
  v13 = MEMORY[0x1E69E7CC0];

  return v12(v13);
}

uint64_t sub_1E3CF48AC()
{

  do
  {
    while (1)
    {
      v0 = sub_1E42060A4();
      if (!v1)
      {

        sub_1E42060A4();
        v9 = v8;

        if (v9)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v2 = v0;
      v3 = v1;
      v4 = sub_1E42060A4();
      if (!v5)
      {

        return 1;
      }

      if (v2 != v4 || v3 != v5)
      {
        break;
      }
    }

    v7 = sub_1E42079A4();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

unint64_t sub_1E3CF49F0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1E4206184();

    return v4;
  }

  return result;
}

uint64_t sub_1E3CF4A94(uint64_t a1, unint64_t a2)
{
  OUTLINED_FUNCTION_173();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FE444();
  if (v11 >> 60 == 15)
  {
    sub_1E3CF58B0();
    swift_allocError();
    *v12 = 2;
    return swift_willThrow();
  }

  else
  {
    v29 = v2;
    sub_1E41FDE24();
    swift_allocObject();
    sub_1E41FDE14();
    sub_1E3CF5904();
    sub_1E41FDE04();
    if (v3)
    {

      v14 = OUTLINED_FUNCTION_17_11();
      return sub_1E38DCE1C(v14, v15);
    }

    else
    {
      v16 = sub_1E324FBDC();
      (*(v9 + 16))(v4, v16, v7);

      v17 = sub_1E41FFC94();
      v18 = sub_1E42067D4();

      v28 = v18;
      if (os_log_type_enabled(v17, v18))
      {
        OUTLINED_FUNCTION_13_13();
        v27 = v17;
        v19 = swift_slowAlloc();
        OUTLINED_FUNCTION_15_4();
        v20 = swift_slowAlloc();
        v34 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1E3270FC8(a1, a2, &v34);
        _os_log_impl(&dword_1E323F000, v27, v28, "SiriLinks: Retrieved media item for %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();

        v21 = OUTLINED_FUNCTION_17_11();
        sub_1E38DCE1C(v21, v22);
      }

      else
      {

        v23 = OUTLINED_FUNCTION_17_11();
        sub_1E38DCE1C(v23, v24);
      }

      v25 = OUTLINED_FUNCTION_53();
      result = v26(v25);
      *v29 = v30;
      v29[1] = v31;
      v29[2] = v32;
      v29[3] = v33;
    }
  }

  return result;
}

uint64_t sub_1E3CF4D6C()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3CF6674;

  return sub_1E3CF3840();
}

uint64_t sub_1E3CF4DFC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_38_41(v1);

  return MEMORY[0x1EEDB2EB0](v3);
}

uint64_t sub_1E3CF4E94()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_52_35();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E3CF4F44;

  return MEMORY[0x1EEDB2EC0](v4, v3, v1, v0);
}

uint64_t sub_1E3CF4F44()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  OUTLINED_FUNCTION_13_7();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1E3CF5030()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_156();
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  v4 = sub_1E3CF5A74();
  *v3 = v2;
  v3[1] = sub_1E327C238;

  return MEMORY[0x1EEDB2ED8](v1, v0, v4);
}

uint64_t sub_1E3CF50DC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_38_41(v1);

  return MEMORY[0x1EEDB3B80](v3);
}

uint64_t sub_1E3CF517C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C725579616C70 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657449616964656DLL && a2 == 0xED0000657079546DLL;
    if (v6 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x657449616964656DLL && a2 == 0xEE00656C7469546DLL;
      if (v7 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 25705 && a2 == 0xE200000000000000)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_0_54();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1E3CF52AC(char a1)
{
  result = 0x6C725579616C70;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x657449616964656DLL;
      break;
    case 3:
      result = 25705;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3CF5334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3CF517C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E3CF5368(uint64_t a1)
{
  v2 = sub_1E3CF5958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E3CF53A4(uint64_t a1)
{
  v2 = sub_1E3CF5958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E3CF53E0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37338);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3CF5958();
  sub_1E4207C04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_30_58();
  v11 = sub_1E4207834();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  OUTLINED_FUNCTION_30_58();
  v13 = sub_1E4207834();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  OUTLINED_FUNCTION_30_58();
  v25 = sub_1E4207834();
  v27 = v15;
  v35 = 3;
  v16 = sub_1E4207834();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_1E3CF57C0(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_1E3CF5744(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

double sub_1E3CF568C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E3CF53E0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_1E3CF56F0()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1E3CF5774()
{
  result = qword_1ECF37308;
  if (!qword_1ECF37308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF37308);
  }

  return result;
}

uint64_t sub_1E3CF57F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3CF5854(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3CF58B0()
{
  result = qword_1ECF37328;
  if (!qword_1ECF37328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37328);
  }

  return result;
}

unint64_t sub_1E3CF5904()
{
  result = qword_1ECF37330;
  if (!qword_1ECF37330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37330);
  }

  return result;
}

unint64_t sub_1E3CF5958()
{
  result = qword_1ECF5F270[0];
  if (!qword_1ECF5F270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5F270);
  }

  return result;
}

unint64_t sub_1E3CF5A74()
{
  result = qword_1ECF37358;
  if (!qword_1ECF37358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37358);
  }

  return result;
}

unint64_t sub_1E3CF5C34()
{
  result = qword_1ECF373A0;
  if (!qword_1ECF373A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373A0);
  }

  return result;
}

unint64_t sub_1E3CF5C8C()
{
  result = qword_1ECF373A8;
  if (!qword_1ECF373A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373A8);
  }

  return result;
}

unint64_t sub_1E3CF5D1C()
{
  result = qword_1ECF373B0;
  if (!qword_1ECF373B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373B0);
  }

  return result;
}

unint64_t sub_1E3CF5DAC()
{
  result = qword_1ECF373B8;
  if (!qword_1ECF373B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF373C0);
    sub_1E3CF1538(&qword_1ECF37378, type metadata accessor for ViewModelLinkEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373B8);
  }

  return result;
}

unint64_t sub_1E3CF5E64()
{
  result = qword_1ECF373C8;
  if (!qword_1ECF373C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373C8);
  }

  return result;
}

uint64_t sub_1E3CF5FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriLinkError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3CF6128()
{
  result = qword_1ECF373D0;
  if (!qword_1ECF373D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF373D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF372E0);
    sub_1E32752B0(&qword_1ECF372E8, &qword_1ECF372E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF373D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LinkItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3CF6300()
{
  result = qword_1ECF5FE10[0];
  if (!qword_1ECF5FE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5FE10);
  }

  return result;
}

unint64_t sub_1E3CF6358()
{
  result = qword_1ECF5FF20;
  if (!qword_1ECF5FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5FF20);
  }

  return result;
}

unint64_t sub_1E3CF63B0()
{
  result = qword_1ECF5FF28[0];
  if (!qword_1ECF5FF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5FF28);
  }

  return result;
}

void sub_1E3CF6404()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0);
  OUTLINED_FUNCTION_17_2(v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong response], v2, v3))
  {
    v4 = [v3 type];
    v5 = sub_1E4205F14();
    v7 = v6;

    if (v5 == 0x6E6F73616553 && v7 == 0xE600000000000000)
    {

      v10 = &selRef_showID;
    }

    else
    {
      OUTLINED_FUNCTION_53();
      v9 = sub_1E42079A4();

      v10 = &selRef_canonicalID;
      if (v9)
      {
        v10 = &selRef_showID;
      }
    }

    v12 = [v3 *v10];
    sub_1E4205F14();

    v13 = [v3 type];
    sub_1E4205F14();

    v14 = [v3 url];
    sub_1E4205F14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0);
    sub_1E42063D4();
  }

  else
  {
    sub_1E3CF58B0();
    swift_allocError();
    *v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF373E0);
    sub_1E42063C4();
  }
}

double sub_1E3CF669C()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_topInset;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3CF66D0(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_topInset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3CF6770()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_fakeRoundingContentBelow;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t (*sub_1E3CF67B0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3CF7A50;
}

uint64_t sub_1E3CF6804()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_showsSeparators;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

id sub_1E3CF6844(char a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v2[v4] = a1;
  return [v2 vui_setNeedsLayout];
}

uint64_t (*sub_1E3CF68A0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3CF68F4;
}

id sub_1E3CF68F8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 vui_setNeedsLayout];
  }

  return result;
}

void *sub_1E3CF694C()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3CF6988(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView;
  v6 = a1;
  swift_beginAccess();
  v7 = *(v1 + v5);
  if (!v7)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    [v4 removeFromSuperview];
    v10 = sub_1E3CF6E70();
    [v10 removeFromSuperview];

LABEL_7:
    v9 = [v4 setMaskView_];
    goto LABEL_8;
  }

  if (v7 == v4)
  {
    goto LABEL_11;
  }

  [v4 removeFromSuperview];
  v8 = sub_1E3CF6E70();
  [v8 removeFromSuperview];

  if (v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  v11 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE0))(v9);
  if (v11)
  {
    v12 = v11;
    [v1 vui:v11 addSubview:0 oldView:?];
    v13 = sub_1E3CF6E70();
    [v12 vui:v13 addSubview:0 oldView:?];

    [v12 setMaskView_];
    [v12 setVuiClipsToBounds_];
    v14 = sub_1E3CF6D34();
    v15 = [v12 vuiBackgroundColor];
    [v14 setVuiBackgroundColor_];

    v16 = [v12 vuiBackgroundColor];
    [v1 setVuiBackgroundColor_];

    v17 = OUTLINED_FUNCTION_8_122();
    [v17 v18];
    v19 = sub_1E3CF6DA8();
    v20 = OUTLINED_FUNCTION_8_122();
    [v20 v21];

    v22 = OUTLINED_FUNCTION_8_122();
    [v22 v23];
    v24 = OUTLINED_FUNCTION_8_122();
    [v24 v25];
  }

  [v1 vui_setNeedsLayout];
LABEL_11:
}

void (*sub_1E3CF6C04(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E3CF6C8C;
}

void sub_1E3CF6C8C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E3CF6988(v3);
  }

  else
  {
    sub_1E3CF6988(*(*a1 + 24));
  }

  free(v2);
}

id sub_1E3CF6CF8()
{
  result = [objc_opt_self() blackColor];
  qword_1ECF5FFB8 = result;
  return result;
}

id sub_1E3CF6D34()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___backgroundExtensionView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___backgroundExtensionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___backgroundExtensionView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E3CF6DA8()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [v4 vuiLayer];
    if (v5)
    {
      v6 = v5;
      [v5 setMaskedCorners_];
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1E3CF6E70()
{
  v1 = OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___amsMaskingView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___amsMaskingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___amsMaskingView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v5 = [objc_opt_self() blackColor];
    [v4 setVuiBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1E3CF6F24()
{
  *&v0[OBJC_IVAR____TtC8VideosUI18AccountMessageView_topInset] = 0;
  v0[OBJC_IVAR____TtC8VideosUI18AccountMessageView_fakeRoundingContentBelow] = 1;
  v0[OBJC_IVAR____TtC8VideosUI18AccountMessageView_showsSeparators] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView] = 0;
  OUTLINED_FUNCTION_3_163();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v1] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_bottomSeparatorView;
  *&v0[v3] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23.receiver = v0;
  v23.super_class = type metadata accessor for AccountMessageView();
  v4 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_1E3CF6D34();
  v6 = OUTLINED_FUNCTION_7_157();
  [v6 v7];

  v8 = sub_1E3CF6DA8();
  v9 = OUTLINED_FUNCTION_7_157();
  [v9 v10];

  v11 = OUTLINED_FUNCTION_7_157();
  [v11 v12];
  v13 = OUTLINED_FUNCTION_7_157();
  [v13 v14];
  v15 = [*&v4[OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView] layer];
  [v15 setCornerRadius_];

  v16 = OUTLINED_FUNCTION_12_109();
  if (_MergedGlobals_7 != -1)
  {
    swift_once();
  }

  v17 = [qword_1ECF5FFB8 CGColor];
  [v16 setShadowColor_];

  v18 = OUTLINED_FUNCTION_12_109();
  [v18 setShadowRadius_];

  v19 = OUTLINED_FUNCTION_12_109();
  LODWORD(v20) = 0.25;
  [v19 setShadowOpacity_];

  v21 = OUTLINED_FUNCTION_12_109();
  [v21 setShadowPathIsBounds_];

  return v4;
}

void sub_1E3CF71D0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView_topInset) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView_fakeRoundingContentBelow) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView_showsSeparators) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AccountMessageView_amsView) = 0;
  OUTLINED_FUNCTION_3_163();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v1) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC8VideosUI18AccountMessageView_bottomSeparatorView;
  *(v0 + v3) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3CF72C8(char a1, double a2, double a3)
{
  v4 = v3;
  v64.receiver = v3;
  v64.super_class = type metadata accessor for AccountMessageView();
  v8 = objc_msgSendSuper2(&v64, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xE0))(v8);
  if (!v10)
  {
    return 0.0;
  }

  v11 = v10;
  sub_1E3A286D4();
  sub_1E41DA724();
  [v11 sizeThatFits_];
  v13 = v12;
  if ([objc_opt_self() isPad])
  {
    sub_1E3A51598();
  }

  OUTLINED_FUNCTION_16_1();
  v15 = *(v14 + 152);
  v16 = v15();
  OUTLINED_FUNCTION_33_2();
  Height = CGRectGetHeight(v65);
  v18 = v15();
  OUTLINED_FUNCTION_33_2();
  MaxY = CGRectGetMaxY(v66);
  OUTLINED_FUNCTION_33_2();
  v20 = CGRectGetMaxY(v67);
  v21 = *&v3[OBJC_IVAR____TtC8VideosUI18AccountMessageView_topSeparatorView];
  (*((*v9 & *v21) + 0x70))();
  [v3 safeAreaInsets];
  sub_1E3952BE0(v22, v23, v24, v25);
  [v3 safeAreaInsets];
  [v3 safeAreaInsets];
  if ((a1 & 1) == 0)
  {
    [v11 setFrame_];
    v26 = sub_1E3CF6E70();
    [v26 setFrame_];

    v27 = sub_1E3CF6D34();
    OUTLINED_FUNCTION_16_1();
    v29 = *(v28 + 176);
    v30 = v29();
    if (v30)
    {
      v31 = MaxY;
    }

    else
    {
      v31 = 0.0;
    }

    if (v30)
    {
      v32 = a2;
    }

    else
    {
      v32 = 0.0;
    }

    if (v30)
    {
      v33 = 20.0;
    }

    else
    {
      v33 = 0.0;
    }

    [v27 setFrame_];

    v34 = sub_1E3CF6DA8();
    v35 = v29();
    if (v35)
    {
      v36 = v20;
    }

    else
    {
      v36 = 0.0;
    }

    if (v35)
    {
      v37 = a2;
    }

    else
    {
      v37 = 0.0;
    }

    if (v35)
    {
      v38 = 20.0;
    }

    else
    {
      v38 = 0.0;
    }

    [v34 setFrame_];

    if (v29())
    {
      v39 = [*&v4[OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___backgroundExtensionView] layer];
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_10_10();
      objc_opt_self();
      v40 = OUTLINED_FUNCTION_16();
      v43 = [v41 v42];
      v44 = OUTLINED_FUNCTION_16();
      v47 = [v45 v46];
      [v47 appendPath_];
      v48 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      v49 = *MEMORY[0x1E69797F8];
      [v48 setFillRule_];
      v50 = [v47 CGPath];
      [v48 setPath_];

      [v39 setMask_];
      v51 = [*&v4[OBJC_IVAR____TtC8VideosUI18AccountMessageView____lazy_storage___shadowView] layer];
      [v4 bounds];
      OUTLINED_FUNCTION_10_10();
      v52 = objc_opt_self();
      v53 = OUTLINED_FUNCTION_16();
      v56 = [v54 v55];
      v68.origin.x = OUTLINED_FUNCTION_16();
      Width = CGRectGetWidth(v68);
      v69.origin.x = OUTLINED_FUNCTION_16();
      v58 = [v52 bezierPathWithRect_];
      [v58 appendPath_];
      v59 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      [v59 setFillRule_];
      v60 = [v58 CGPath];
      [v59 setPath_];

      [v51 setMask_];
    }

    OUTLINED_FUNCTION_16_1();
    if ((*(v61 + 200))())
    {
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_7_23();
      [v4 vuiIsRTL];
      OUTLINED_FUNCTION_11_113();
      [v21 setFrame_];
      v62 = *&v4[OBJC_IVAR____TtC8VideosUI18AccountMessageView_bottomSeparatorView];
      OUTLINED_FUNCTION_33_2();
      OUTLINED_FUNCTION_7_23();
      [v4 vuiIsRTL];
      OUTLINED_FUNCTION_11_113();
      [v62 setFrame_];
    }
  }

  return a2;
}

id sub_1E3CF799C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountMessageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3CF7A74()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 392))())
  {
    type metadata accessor for EpisodeLockupLayout();
    OUTLINED_FUNCTION_19_3();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  type metadata accessor for EpisodeLockupLayout();
  return sub_1E3C62E3C();
}

uint64_t sub_1E3CF7AF0()
{
  if (!sub_1E39C408C(39))
  {
    return 0;
  }

  type metadata accessor for ImageViewModel();
  OUTLINED_FUNCTION_19_3();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v6 = 0;
    v5 = MEMORY[0x1E69E6370];
    v4[0] = 1;
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 784);

    v2(&v6, v4, &unk_1F5D5E7B8, &off_1F5D5CC78);

    sub_1E325F69C(v4, &unk_1ECF296E0);
  }

  else
  {
  }

  return v0;
}

uint64_t sub_1E3CF7BE0()
{
  if (*(v0 + 192))
  {
    type metadata accessor for ViewModel();
    sub_1E3CFE54C(&qword_1EE23BA60, type metadata accessor for ViewModel);

    OUTLINED_FUNCTION_18_5();
    v1 = sub_1E4205E84();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1E3CF7C94()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_173();
  v5 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  type metadata accessor for AppEnvironment();
  sub_1E3CFE54C(&qword_1EE283350, type metadata accessor for AppEnvironment);
  v0[27] = sub_1E4201754();
  v0[28] = v12;
  v13 = type metadata accessor for EpisodeLockup(0);
  v14 = *(v13 + 32);
  *(v0 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v15 = (v0 + *(v13 + 36));
  type metadata accessor for Router();
  OUTLINED_FUNCTION_38_42();
  sub_1E3CFE54C(v16, v17);
  *v15 = sub_1E4201754();
  v15[1] = v18;
  *v0 = v4;
  memcpy(v0 + 1, v2, 0xC3uLL);
  type metadata accessor for ContextMenuModel();

  sub_1E375C1CC(v2, v23);
  v19 = sub_1E3E6CDBC();
  v21 = *v19;
  v20 = v19[1];
  v23[0] = v21;
  v23[1] = v20;

  sub_1E4207414();
  (*(v7 + 104))(v11, *MEMORY[0x1E697E660], v5);
  v22 = sub_1E4188148(v4, v11);
  sub_1E37E6F2C(v2);
  v0[26] = v22;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF7EC0()
{
  OUTLINED_FUNCTION_31_1();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37408);
  OUTLINED_FUNCTION_0_10();
  v49 = v0;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_44();
  v50 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37410);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v52 = v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37418);
  OUTLINED_FUNCTION_0_10();
  v45 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v46 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37420);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v47 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37428);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37430);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v51 = v20;
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  v22 = (*(v21 + 2144))();

  if (v22)
  {
    type metadata accessor for EpisodeLockup(0);
    sub_1E3746E10(v17);
    v23 = sub_1E3B02A04();
    (*(v13 + 8))(v17, v11);
    if (v23)
    {
      sub_1E3CF86E8();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v24, v25, v26);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_34_55();
      OUTLINED_FUNCTION_21_1();
      sub_1E3CF9730(v27, v28, v29, v30);
      v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37468);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37470);
      OUTLINED_FUNCTION_11_114();
      sub_1E3CF9730(v31, &qword_1ECF37470, &unk_1E42CBC00, v32);
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_63_22();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v33, v34);
    }

    else
    {
      sub_1E3CF89F0();
      (*(v45 + 16))(v47, v46, v48);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_34_55();
      sub_1E3CF9730(v37, v38, v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37468);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37470);
      OUTLINED_FUNCTION_11_114();
      sub_1E3CF9730(v41, &qword_1ECF37470, &unk_1E42CBC00, v42);
      OUTLINED_FUNCTION_3_8();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_5_15();
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_63_22();
      sub_1E4201F44();
      (*(v45 + 8))(v46, v48);
    }

    sub_1E3743538(v18, v52, &qword_1ECF37430);
    swift_storeEnumTagMultiPayload();
    sub_1E3CF950C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374D0);
    OUTLINED_FUNCTION_15_108();
    sub_1E374AD40(v43, &qword_1ECF374D0);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_15_10();
    OUTLINED_FUNCTION_17_12();
    v44 = sub_1E3CF9868();
    OUTLINED_FUNCTION_33_51(v44);
    sub_1E4201F44();
    sub_1E325F69C(v51, &qword_1ECF37430);
  }

  else
  {
    sub_1E3CF8EA4(v50);
    (*(v49 + 16))(v52, v50, v53);
    swift_storeEnumTagMultiPayload();
    sub_1E3CF950C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374D0);
    OUTLINED_FUNCTION_15_108();
    sub_1E374AD40(v35, &qword_1ECF374D0);
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_10_6();
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_5_15();
    OUTLINED_FUNCTION_17_12();
    OUTLINED_FUNCTION_15_10();
    OUTLINED_FUNCTION_17_12();
    v36 = sub_1E3CF9868();
    OUTLINED_FUNCTION_33_51(v36);
    sub_1E4201F44();
    (*(v49 + 8))(v50, v53);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CF86E8()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37460);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37450);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  (*(v9 + 1152))();

  sub_1E3CF7A74();
  OUTLINED_FUNCTION_30();
  (*(v10 + 176))(v25);

  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37520);
  sub_1E3CFC920(v0, v2 + *(v11 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v13 = sub_1E4202744();
  *(inited + 32) = v13;
  v14 = sub_1E4202754();
  *(inited + 33) = v14;
  v15 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v13)
  {
    v15 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v14)
  {
    v15 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_13_3(v16, v17, v18, v19);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v20 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v20, v21, v22);
  v23 = (v1 + *(v7 + 36));
  *v23 = v15;
  OUTLINED_FUNCTION_11_4(v23);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v1, v4, &qword_1ECF37450);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37428);
  memcpy((v4 + *(v24 + 36)), v26, 0x70uLL);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3CF89F0()
{
  OUTLINED_FUNCTION_9_4();
  v45 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37498);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v43 - v4;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37488);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37470);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37468);
  OUTLINED_FUNCTION_0_10();
  v44 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  v18 = (*(v17 + 1152))();
  v20 = v19;

  *v5 = sub_1E4201B84();
  *(v5 + 1) = v18;
  v5[16] = v20 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37568);
  sub_1E3CFB600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v22 = sub_1E4202744();
  *(inited + 32) = v22;
  *(inited + 33) = sub_1E4202754();
  v23 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v22)
  {
    v23 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v24)
  {
    v23 = sub_1E4202774();
  }

  sub_1E3CF7A74();
  OUTLINED_FUNCTION_30();
  (*(v25 + 176))(v48);

  v29.n128_u64[0] = 0;
  if ((v49 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_3(v29, v26, v27, v28);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v5, v8, &qword_1ECF37498);
  OUTLINED_FUNCTION_141();
  v31 = &v8[v30];
  *v31 = v23;
  OUTLINED_FUNCTION_11_4(v31);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v8, v12, &qword_1ECF37488);
  memcpy(&v12[*(v9 + 36)], v50, 0x70uLL);
  v32 = *(v0 + 208);
  OUTLINED_FUNCTION_11_114();
  v35 = sub_1E3CF9730(v33, &qword_1ECF37470, &unk_1E42CBC00, v34);
  v36 = v43[2];
  sub_1E4187EA8(v32, v9, v35);
  sub_1E325F69C(v12, &qword_1ECF37470);
  v37 = sub_1E3CF7A74();
  v46 = v9;
  v47 = v35;
  OUTLINED_FUNCTION_3_8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_78_0();
  v39 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  v40 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  v41 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  v42 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v37, v39 & 1, v40 & 1, v41 & 1, v42 & 1, v13, OpaqueTypeConformance2);

  (*(v44 + 8))(v36, v13);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CF8EA4(uint64_t a1@<X8>)
{
  v3 = v1;
  v84 = a1;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v82 = v5;
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v81 = v7 - v6;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374C8);
  OUTLINED_FUNCTION_0_10();
  v69 = v9;
  v70 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374C0);
  OUTLINED_FUNCTION_0_10();
  v71 = v14;
  v72 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v64 = v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374B8);
  OUTLINED_FUNCTION_0_10();
  v76 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v66 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374B0);
  OUTLINED_FUNCTION_0_10();
  v77 = v21;
  v78 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v68 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374A0);
  OUTLINED_FUNCTION_0_10();
  v79 = v25;
  v80 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v75 = v28;
  v29 = *v1;
  memcpy(v90, v3 + 1, 0xC3uLL);
  v86 = v3;

  sub_1E375C1CC(v90, v89);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374A8);
  v74 = sub_1E3CF9868();
  sub_1E390F194(v29, v90, 1, sub_1E3CFE394, v2);
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_15_108();
  v31 = sub_1E374AD40(v30, &qword_1ECF374D0);
  v32 = OUTLINED_FUNCTION_24_73();
  v33 = v65;
  sub_1E38838AC(v32, v34, v35, v31, v36);

  sub_1E325F69C(v2, &qword_1ECF374D0);
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  (*(v37 + 552))(v89);

  OUTLINED_FUNCTION_32_1();
  if (v40)
  {
    v41 = v38;
  }

  else
  {
    v41 = v39;
  }

  v87 = v33;
  v88 = v31;
  OUTLINED_FUNCTION_2_2();
  v42 = OUTLINED_FUNCTION_65_20();
  v43 = v64;
  v44 = v69;
  sub_1E391F8C0(v69, v42, v41);
  (*(v70 + 8))(v13, v44);
  v45 = v3[26];
  v87 = v44;
  v88 = v42;
  OUTLINED_FUNCTION_10_6();
  v46 = OUTLINED_FUNCTION_65_20();
  v47 = v66;
  v48 = v71;
  sub_1E4187EA8(v45, v71, v46);
  v49 = v43;
  v50 = v48;
  (*(v72 + 8))(v49, v48);
  v51 = v3;
  v52 = sub_1E3CF7A74();
  v87 = v50;
  v88 = v46;
  OUTLINED_FUNCTION_3_8();
  v53 = OUTLINED_FUNCTION_65_20();
  v54 = v67;
  OUTLINED_FUNCTION_74();
  LOBYTE(v45) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_74();
  LOBYTE(v50) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_74();
  v55 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_74();
  v56 = OUTLINED_FUNCTION_51_1();
  v57 = v68;
  sub_1E383F6D4(v52, v45 & 1, v50 & 1, v55 & 1, v56 & 1, v54, v53);

  (*(v76 + 8))(v47, v54);
  v58 = v81;
  sub_1E4202474();
  v87 = v54;
  v88 = v53;
  OUTLINED_FUNCTION_5_15();
  v59 = OUTLINED_FUNCTION_65_20();
  v60 = v75;
  v61 = v77;
  sub_1E4203224();
  (*(v82 + 8))(v58, v83);
  (*(v78 + 8))(v57, v61);
  v85 = v51;
  v87 = v61;
  v88 = v59;
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_65_20();
  v62 = v79;
  sub_1E42030F4();
  (*(v80 + 8))(v60, v62);
  OUTLINED_FUNCTION_54_0();
}

unint64_t sub_1E3CF950C()
{
  result = qword_1ECF37438;
  if (!qword_1ECF37438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37430);
    sub_1E3CF9730(&qword_1ECF37440, &qword_1ECF37428, &unk_1E42CBBD8, sub_1E3CF9678);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37468);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37470);
    sub_1E3CF9730(&qword_1ECF37478, &qword_1ECF37470, &unk_1E42CBC00, sub_1E3CF97B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37438);
  }

  return result;
}

unint64_t sub_1E3CF9678()
{
  result = qword_1ECF37448;
  if (!qword_1ECF37448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37450);
    sub_1E374AD40(&qword_1ECF37458, &unk_1ECF37460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37448);
  }

  return result;
}

uint64_t sub_1E3CF9730(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3CF97B0()
{
  result = qword_1ECF37480;
  if (!qword_1ECF37480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37488);
    sub_1E374AD40(&qword_1ECF37490, &unk_1ECF37498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37480);
  }

  return result;
}

unint64_t sub_1E3CF9868()
{
  result = qword_1ECF374E0;
  if (!qword_1ECF374E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A8);
    sub_1E374AD40(&qword_1ECF374E8, &unk_1ECF374F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF374E0);
  }

  return result;
}

void sub_1E3CF9964()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel();
    if (v1 <= 0x3F)
    {
      sub_1E381EC50();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_37_50();
        sub_1E3CF9E08(319, v3, v4, MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          sub_1E389B5AC();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1E3CF9A58()
{
  result = qword_1ECF374F8;
  if (!qword_1ECF374F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37500);
    sub_1E3CF950C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF374D0);
    sub_1E374AD40(&qword_1ECF374D8, &qword_1ECF374D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3CF9868();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF374F8);
  }

  return result;
}

void sub_1E3CF9D04()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3CF9E08(319, &qword_1ECF37508, type metadata accessor for EpisodeLockupLayout, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_37_50();
      sub_1E3CF9E08(319, v2, v3, MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        sub_1E3AB40E8();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3CF9E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1E3CF9E84(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374F0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  *v1 = sub_1E4201D54();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37590);
  sub_1E3CF9FC8();
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_30();
  (*(v5 + 176))(&v12);

  if (v13)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_3(v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_3();
  v10 = sub_1E4202734();
  sub_1E3741EA0(v1, a1, &qword_1ECF374F0);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF374A8) + 36));
  *v11 = v10;
  OUTLINED_FUNCTION_11_4(v11);
}

void sub_1E3CF9FC8()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v73 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37598);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375A8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v72 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375B0);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375B8);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61[-v28];
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_226();
  *v24 = sub_1E4201D54();
  *(v24 + 1) = 0;
  v24[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375C0);
  sub_1E3CFA64C();
  if (sub_1E3CF7BE0())
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  sub_1E3741EA0(v24, v29, &qword_1ECF375B0);
  *&v29[*(v26 + 44)] = v31;
  v64 = v0;
  sub_1E3741EA0(v29, v0, &qword_1ECF375B8);
  type metadata accessor for EpisodeLockup(0);
  sub_1E3746E10(v20);
  v62 = sub_1E3B02B0C();
  v32 = *(v16 + 8);
  v65 = v14;
  v66 = v16 + 8;
  v32(v20, v14);
  v75 = v2;
  v74 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600);
  type metadata accessor for DownloadStatusAndContextMenuButtonView(0);
  sub_1E3BFC99C();
  sub_1E3CFE4F4();
  sub_1E3DE5EA0(sub_1E3CFE3B8, sub_1E3CFE428, v63);
  sub_1E4202744();
  v33 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v34)
  {
    v33 = sub_1E4202774();
  }

  sub_1E3CF7A74();
  OUTLINED_FUNCTION_30();
  v36 = (*(v35 + 2024))();

  (*(*v36 + 152))(&v76, v37);

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_73_14();
  sub_1E3741EA0(v38, v39, v40);
  OUTLINED_FUNCTION_141();
  v42 = (v36 + v41);
  *v42 = v33;
  OUTLINED_FUNCTION_11_4(v42);
  if (sub_1E3CF7BE0())
  {
    v43 = 0.0;
  }

  else
  {
    v43 = 1.0;
  }

  v44 = v67;
  sub_1E3741EA0(v36, v67, &qword_1ECF375A0);
  OUTLINED_FUNCTION_141();
  *(v44 + v45) = v43;
  v46 = v70;
  sub_1E3741EA0(v44, v70, &qword_1ECF375A8);
  sub_1E3746E10(v20);
  v71 = sub_1E3B02B0C();
  v32(v20, v65);
  v47 = v64;
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v48, v49, v50);
  v51 = v72;
  sub_1E3743538(v46, v72, &qword_1ECF375A8);
  v52 = v73;
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v53, v54, v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375C8);
  v57 = v52 + v56[12];
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 9) = v62 & 1;
  sub_1E3743538(v51, v52 + v56[16], &qword_1ECF375A8);
  v58 = v52 + v56[20];
  *v58 = 0;
  *(v58 + 8) = 0;
  *(v58 + 9) = (v71 & 1) == 0;
  sub_1E325F69C(v46, &qword_1ECF375A8);
  sub_1E325F69C(v47, &qword_1ECF375B8);
  sub_1E325F69C(v51, &qword_1ECF375A8);
  v59 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v59, v60);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3CFA64C()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v138 = v4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375D0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v147 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_19_2();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528);
  OUTLINED_FUNCTION_0_10();
  v144 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v131[-v19];
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37538);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v146 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v131[-v34];
  v136 = v3;
  v36 = sub_1E3AE9144(23);
  v143 = v35;
  v141 = v13;
  v139 = v8;
  v140 = v11;
  if (v36)
  {
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_156_2();
    sub_1E38838AC(v37, v38, v39, v40, v41);
    (*(v13 + 8))(v0, v11);
    sub_1E4202744();
    v42 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v43)
    {
      v42 = sub_1E4202774();
    }

    v44 = sub_1E3C27528();
    v45 = v137;
    if (v44)
    {
      OUTLINED_FUNCTION_30();
      (*(v46 + 152))(&v148);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_66_23();
    v47(v1, v20, v145);
    v48 = (v1 + *(v45 + 36));
    *v48 = v42;
    OUTLINED_FUNCTION_11_4(v48);
    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v49, v50, v51);
    OUTLINED_FUNCTION_72_21();
    OUTLINED_FUNCTION_38_2();
    sub_1E3741EA0(v52, v53, v54);
  }

  else
  {
    v45 = v137;
  }

  v55 = v135;
  OUTLINED_FUNCTION_62_25();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = v136;
  v61 = sub_1E3AE9144(15);
  v62 = v134;
  if (v61)
  {
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_156_2();
    OUTLINED_FUNCTION_79_17(v63, v64, v65, v66, v67);
    (*(v141 + 8))(v0, v1);
    sub_1E4202744();
    v68 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v43)
    {
      v68 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v69 + 152))(&v149);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_66_23();
    v70 = v132;
    v71(v132, v62, v145);
    v72 = (v70 + *(v45 + 36));
    *v72 = v68;
    OUTLINED_FUNCTION_11_4(v72);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v73, v74, v75);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v76, v77, v78);
  }

  OUTLINED_FUNCTION_62_25();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
  v83 = v147;
  sub_1E3CFAFF8();
  v84 = sub_1E4203D44();
  v86 = v85;
  v87 = v83 + *(v55 + 36);
  if (sub_1E3AE9144(4))
  {
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_156_2();
    OUTLINED_FUNCTION_79_17(v88, v89, v90, v91, v92);
    (*(v141 + 8))(v0, v83);
    sub_1E4202744();
    v93 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v43)
    {
      v93 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v94 + 152))(&v150);

      OUTLINED_FUNCTION_32_1();
    }

    v95 = v139;
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v60 = v133;
    (*(v144 + 32))(v133, v142, v145);
    v96 = (v60 + *(v45 + 36));
    *v96 = v93;
    OUTLINED_FUNCTION_11_4(v96);
    OUTLINED_FUNCTION_72_21();
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v97, v98, v99);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v100, v101, v102);
  }

  else
  {
    v95 = v139;
  }

  OUTLINED_FUNCTION_62_25();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v106);
  v107 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375D8) + 36));
  *v107 = v84;
  v107[1] = v86;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v108, v109, v110);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v111, v112, v113);
  v114 = v147;
  v115 = v95;
  sub_1E3743538(v147, v95, &qword_1ECF375D0);
  OUTLINED_FUNCTION_72_21();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v116, v117, v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375E0);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v120, v121, v122);
  sub_1E3743538(v115, v60 + *(v119 + 64), &qword_1ECF375D0);
  OUTLINED_FUNCTION_50_3(v114);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v123, v124);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v125, v126);
  OUTLINED_FUNCTION_50_3(v115);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v127, v128);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v129, v130);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CFAFF8()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v0;
  v46 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375E8);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v44 = v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF375F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  type metadata accessor for EpisodeLockup(0);
  sub_1E3746E10(v21);
  v22 = sub_1E3B02B0C();
  (*(v17 + 8))(v21, v15);
  if ((v22 & 1) == 0)
  {
    if (*(v2 + 192))
    {
      v23 = sub_1E39C408C(4);
      if (v23)
      {
        if (*v23 == _TtC8VideosUI13TextViewModel)
        {
          goto LABEL_7;
        }
      }
    }
  }

  if (!sub_1E3AE9144(4))
  {
    v36 = 1;
    v34 = v45;
    v33 = v46;
    goto LABEL_13;
  }

LABEL_7:
  sub_1E3C27528();
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  OUTLINED_FUNCTION_0_21();
  v24 = v44;
  OUTLINED_FUNCTION_156_2();
  sub_1E38838AC(v25, v26, v27, v28, v29);
  (*(v6 + 8))(v9, v4);
  sub_1E4202744();
  v30 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v31)
  {
    v30 = sub_1E4202774();
  }

  v32 = sub_1E3C27528();
  v34 = v45;
  v33 = v46;
  if (v32)
  {
    OUTLINED_FUNCTION_30();
    (*(v35 + 152))(&v47);

    OUTLINED_FUNCTION_32_1();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  sub_1E3741EA0(v24, v1, &qword_1ECF375E8);
  v37 = (v1 + *(v34 + 36));
  *v37 = v30;
  OUTLINED_FUNCTION_11_4(v37);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v38, v39, v40);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v41, v42, v43);
  v36 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v33, v36, 1, v34);
  OUTLINED_FUNCTION_10_3();
}

double sub_1E3CFB3C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37588);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF37538);
  sub_1E3743538(*(a1 + 16), a2 + v5[16], &qword_1ECF37538);
  sub_1E3743538(*(a1 + 24), a2 + v5[20], &qword_1ECF37540);
  v6 = a2 + v5[24];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *v7;
  LOBYTE(v7) = *(v7 + 8);
  *v6 = v9;
  *(v6 + 8) = v7;
  result = *v8;
  *(a2 + v5[28]) = *v8;
  return result;
}

uint64_t sub_1E3CFB4B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF37548);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37558);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF37540);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF37540);
  sub_1E3743538(a1[3], a2 + v4[20], &qword_1ECF37540);
  v5 = v4[24];
  v6 = a1[4];
  memcpy(__dst, v6, 0x81uLL);
  memmove((a2 + v5), v6, 0x81uLL);
  v7 = a2 + v4[28];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v7 = v10;
  *(v7 + 8) = v8;
  v11 = a2 + v4[32];
  LOBYTE(v8) = *(v9 + 8);
  LOBYTE(v10) = *(v9 + 48);
  v12 = *(v9 + 16);
  v13 = *(v9 + 32);
  *v11 = *v9;
  *(v11 + 8) = v8;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  return sub_1E3743538(__dst, &v15, &qword_1ECF37550);
}

void sub_1E3CFB600()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37570);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37548);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_226();
  sub_1E3CFB870(v0);
  *v8 = sub_1E4201D54();
  *(v8 + 1) = 0;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37578);
  sub_1E3CFBE94();
  sub_1E3AEABF4(v17);
  sub_1E3743538(v0, v13, &qword_1ECF37548);
  sub_1E3743538(v8, v1, &qword_1ECF37570);
  sub_1E3743538(v13, v3, &qword_1ECF37548);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37580);
  sub_1E3743538(v1, v3 + *(v15 + 48), &qword_1ECF37570);
  v16 = *(v15 + 64);
  memcpy(v18, v17, 0x51uLL);
  memcpy((v3 + v16), v17, 0x51uLL);
  sub_1E3743538(v18, v19, &qword_1ECF32A38);
  sub_1E325F69C(v8, &qword_1ECF37570);
  sub_1E325F69C(v0, &qword_1ECF37548);
  memcpy(v19, v17, 0x51uLL);
  sub_1E325F69C(v19, &qword_1ECF32A38);
  sub_1E325F69C(v1, &qword_1ECF37570);
  sub_1E325F69C(v13, &qword_1ECF37548);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CFB870(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37560);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v7 = sub_1E3CF7AF0();
  if (v7)
  {
    v8 = v7;
    v42 = a1;
    sub_1E3CF7A74();
    OUTLINED_FUNCTION_30();
    v10 = (*(v9 + 2144))();

    if ((v10 & 1) == 0 || (v11 = sub_1E3CF7AF0()) == 0)
    {
      sub_1E3EB9BB4(&v48);
      v46 = v48;
      v12 = v50;
      v47 = v49;
      v16 = v51;
      v17 = v52;
      v18 = v53;
      v44 = v54;
      v45[0] = *v55;
      *(v45 + 14) = *&v55[14];
      v19 = v56;
      v20 = v57;
LABEL_19:
      v48 = v46;
      v54 = v44;
      v49 = v47;
      v50 = v12;
      v51 = v16;
      v52 = v17;
      v53 = v18;
      *v55 = v45[0];
      *&v55[14] = *(v45 + 14);
      v56 = v19;
      v57 = v20;
      LOBYTE(v46) = 0;
      (*(*v8 + 776))(&v44, &v46, &unk_1F5D5D408, &off_1F5D5C818);
      if (*(&v45[0] + 1))
      {
        swift_dynamicCast();
        OUTLINED_FUNCTION_49_42();
        if (v30)
        {
          v31 = v46;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        sub_1E325F69C(&v44, &unk_1ECF296E0);
        v31 = 0;
        OUTLINED_FUNCTION_49_42();
      }

      v32 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v8, &v48, 0, v32 & 1, 0, 0, v1);
      OUTLINED_FUNCTION_141();
      *(v1 + v33) = 256;
      sub_1E3CFD640();
      if (v31)
      {
        sub_1E4200BA4();
      }

      else
      {
        sub_1E4200BB4();
      }

      sub_1E3BCECB4();
      sub_1E374AD40(&qword_1EE289DB0, &qword_1ECF2D3E8);
      sub_1E42034B4();
      sub_1E375C31C(&v48);

      v34 = OUTLINED_FUNCTION_74();
      v35(v34);
      sub_1E325F69C(v1, &qword_1ECF2FEC0);
      v51(v42, v43, v18);
      OUTLINED_FUNCTION_62_25();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
      OUTLINED_FUNCTION_54_0();
      return;
    }

    v12 = (*(*v11 + 392))();
    if (v12)
    {
      OUTLINED_FUNCTION_8();
      v41 = COERCE_DOUBLE((*(v13 + 432))());
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        v26 = sub_1E3C6DC88();
        if (v41 <= 1.0)
        {
          v12 = *v26;
        }

        else
        {
          v12 = 0;
        }

        if (v41 <= 1.0)
        {
          v16 = 0;
        }

        else
        {
          v16 = *v26;
        }

        goto LABEL_18;
      }

      v12 = 0;
    }

    v16 = 0;
LABEL_18:
    v27 = j__OUTLINED_FUNCTION_51_1();
    v28 = j__OUTLINED_FUNCTION_18();
    v29 = j__OUTLINED_FUNCTION_18();
    v40 = v28 & 1;
    v18 = 1;
    sub_1E3EB9C0C(v12, v16, 0, 0, 0, 1, v27 & 1, 2, &v48, 0, 1, 0, 1, 0, 2, v40, v29 & 1);
    v20 = v57;
    v46 = v48;
    v47 = v49;
    v44 = v54;
    v45[0] = *v55;
    *(v45 + 14) = *&v55[14];

    v17 = 0;
    v19 = 1;
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_62_25();
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

void sub_1E3CFBE94()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v4 = v3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37540);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_12();
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528);
  OUTLINED_FUNCTION_0_10();
  v143 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v130 - v20;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v130 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37538);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v36);
  v135 = v2;
  v37 = sub_1E3AE9144(23);
  v142 = v12;
  v139 = v4;
  v141 = v14;
  if (v37)
  {
    v130[0] = v8;
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_46_42();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_156_2();
    sub_1E38838AC(v38, v39, v40, v41, v42);
    v43 = OUTLINED_FUNCTION_171_0();
    v44(v43);
    sub_1E4202744();
    v45 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v46)
    {
      v45 = sub_1E4202774();
    }

    v47 = sub_1E3C27528();
    v48 = v134;
    if (v47)
    {
      OUTLINED_FUNCTION_30();
      (*(v49 + 152))(&v153);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_66_23();
    v51(v28, v21, v144);
    v52 = &v28[*(v48 + 36)];
    *v52 = v45;
    OUTLINED_FUNCTION_11_4(v52);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v53, v54, v55);
    OUTLINED_FUNCTION_73_14();
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v56, v57, v58);
    v50 = 0;
    v8 = v130[0];
  }

  else
  {
    v50 = 1;
    v21 = v145;
    v48 = v134;
  }

  v59 = 1;
  __swift_storeEnumTagSinglePayload(v21, v50, 1, v48);
  if (sub_1E3AE9144(15))
  {
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_46_42();
    OUTLINED_FUNCTION_0_21();
    v60 = OUTLINED_FUNCTION_24_73();
    OUTLINED_FUNCTION_76_16(v60, v61, v62, v63, v64);
    v65 = OUTLINED_FUNCTION_171_0();
    v66(v65);
    sub_1E4202744();
    v67 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    v68 = v146;
    if (!v46)
    {
      v67 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v69 + 152))(&v154);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_66_23();
    v70 = v131;
    v71(v131, v140, v144);
    v72 = (v70 + *(v48 + 36));
    *v72 = v67;
    OUTLINED_FUNCTION_11_4(v72);
    OUTLINED_FUNCTION_73_14();
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v73, v74, v75);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v76, v77, v78);
    v59 = 0;
  }

  else
  {
    v68 = v146;
  }

  v79 = 1;
  __swift_storeEnumTagSinglePayload(v68, v59, 1, v48);
  if (sub_1E3AE9144(4))
  {
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_46_42();
    OUTLINED_FUNCTION_0_21();
    v80 = v133;
    v81 = OUTLINED_FUNCTION_24_73();
    OUTLINED_FUNCTION_76_16(v81, v82, v83, v84, v85);
    v86 = OUTLINED_FUNCTION_171_0();
    v87(v86);
    sub_1E4202744();
    v88 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v46)
    {
      v88 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v89 + 152))(&v155);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v91 = v132;
    (*(v143 + 32))(v132, v80, v144);
    v92 = (v91 + *(v48 + 36));
    *v92 = v88;
    OUTLINED_FUNCTION_11_4(v92);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v93, v94, v95);
    v90 = v136;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v96, v97, v98);
    v79 = 0;
  }

  else
  {
    v90 = v136;
  }

  __swift_storeEnumTagSinglePayload(v90, v79, 1, v48);
  sub_1E3CF7A74();
  OUTLINED_FUNCTION_2_1();
  v100 = (*(v99 + 1856))();

  (*(*v100 + 152))(&v156, v101);

  if (v157)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    OUTLINED_FUNCTION_13_3(v102, v103, v104, v105);
  }

  OUTLINED_FUNCTION_3();
  v106 = sub_1E4202734();
  OUTLINED_FUNCTION_73_14();
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v107, v108, v109);
  OUTLINED_FUNCTION_141();
  v111 = (v79 + v110);
  *v111 = v106;
  OUTLINED_FUNCTION_11_4(v111);
  OUTLINED_FUNCTION_73_14();
  sub_1E3741EA0(v112, v113, &qword_1ECF37540);
  v114 = sub_1E3FFE5B8(0, 1);
  v150 = 0;
  v151 = 0;
  v152[0] = &v150;
  v115 = v137;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v116, v117, v118);
  v152[1] = v115;
  OUTLINED_FUNCTION_72_21();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v119, v120, v121);
  v152[2] = v0;
  sub_1E3743538(v79, v8, &qword_1ECF37540);
  v148 = 0;
  v149 = 0;
  v152[3] = v8;
  v152[4] = &v148;
  v147 = v114;
  v152[5] = &v147;
  sub_1E3CFB3C8(v152, v139);
  sub_1E325F69C(v79, &qword_1ECF37540);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v122, v123);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v124, v125);
  sub_1E325F69C(v8, &qword_1ECF37540);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v126, v127);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v128, v129);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3CFC920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v175 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v155 - v7;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37528);
  OUTLINED_FUNCTION_0_10();
  v177 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v167 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v173 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_226();
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37530);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v162 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  v161 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v160 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v159 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v155 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v158 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37538);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v168 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v164 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v155 - v34;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37540);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  v171 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_6();
  v170 = v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_6();
  v169 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_6();
  v166 = v43;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_6();
  v182 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_6();
  v163 = v47;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_6();
  v181 = v49;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v155 - v51;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_25_3();
  v179 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37548);
  v56 = OUTLINED_FUNCTION_17_2(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_5();
  v183 = v57;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_25_3();
  v178 = v59;
  sub_1E3CFB870(v59);
  v60 = sub_1E3AE9144(23);
  v174 = v8;
  if (v60)
  {
    v157 = a1;
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21();
    v156 = v2;
    OUTLINED_FUNCTION_156_2();
    sub_1E38838AC(v61, v62, v63, v64, v65);
    v66 = v4;
    (*(v175 + 8))(v8, v4);
    sub_1E4202744();
    v67 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v68)
    {
      v67 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v69 + 152))(v198);

      OUTLINED_FUNCTION_32_1();
    }

    v72 = v156;
    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    (*(v177 + 32))(v25, v72, v180);
    v71 = v165;
    v73 = &v25[*(v165 + 36)];
    *v73 = v67;
    OUTLINED_FUNCTION_15_3(v73);
    v74 = v25;
    v75 = v158;
    sub_1E3741EA0(v74, v158, &qword_1ECF37530);
    sub_1E3741EA0(v75, v35, &qword_1ECF37530);
    v70 = 0;
  }

  else
  {
    v66 = v4;
    v70 = 1;
    v71 = v165;
  }

  __swift_storeEnumTagSinglePayload(v35, v70, 1, v71);
  v76 = sub_1E4202744();
  v77 = sub_1E4202774();
  sub_1E4202774();
  v78 = sub_1E4202774();
  v80 = v175;
  v79 = v176;
  if (v78 != v76)
  {
    v77 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v35, v52, &qword_1ECF37538);
  v81 = &v52[*(v79 + 36)];
  *v81 = v77;
  OUTLINED_FUNCTION_15_3(v81);
  sub_1E3741EA0(v52, v179, &qword_1ECF37540);
  v82 = sub_1E3AE9144(15);
  if (v82)
  {
    v83 = v82;
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_64_21();
    OUTLINED_FUNCTION_0_21();
    v84 = OUTLINED_FUNCTION_24_73();
    sub_1E38838AC(v84, v85, v86, v87, v88);
    (*(v80 + 8))(v83, v66);
    sub_1E4202744();
    v89 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    v90 = v167;
    if (!v68)
    {
      v89 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v91 + 152))(v199);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v94 = v160;
    (*(v177 + 32))(v160, v173, v180);
    v95 = (v94 + *(v71 + 36));
    *v95 = v89;
    OUTLINED_FUNCTION_15_3(v95);
    OUTLINED_FUNCTION_38_2();
    sub_1E3741EA0(v96, v97, v98);
    v93 = v164;
    OUTLINED_FUNCTION_38_2();
    sub_1E3741EA0(v99, v100, v101);
    v92 = 0;
    v79 = v176;
  }

  else
  {
    v92 = 1;
    v90 = v167;
    v93 = v164;
  }

  __swift_storeEnumTagSinglePayload(v93, v92, 1, v71);
  v102 = sub_1E4202744();
  v103 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v102)
  {
    v103 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v104 = v163;
  sub_1E3741EA0(v93, v163, &qword_1ECF37538);
  v105 = (v104 + *(v79 + 36));
  *v105 = v103;
  OUTLINED_FUNCTION_15_3(v105);
  sub_1E3741EA0(v104, v181, &qword_1ECF37540);
  v106 = sub_1E3AE9144(4);
  if (v106)
  {
    v107 = v106;
    sub_1E3C27528();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_64_21();
    OUTLINED_FUNCTION_0_21();
    v108 = OUTLINED_FUNCTION_24_73();
    sub_1E38838AC(v108, v109, v110, v111, v112);
    (*(v80 + 8))(v107, v66);
    sub_1E4202744();
    v113 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v68)
    {
      v113 = sub_1E4202774();
    }

    if (sub_1E3C27528())
    {
      OUTLINED_FUNCTION_30();
      (*(v114 + 152))(v200);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v117 = v162;
    (*(v177 + 32))(v162, v90, v180);
    v118 = (v117 + *(v71 + 36));
    *v118 = v113;
    OUTLINED_FUNCTION_15_3(v118);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v119, v120, v121);
    v116 = v168;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v122, v123, v124);
    v115 = 0;
  }

  else
  {
    v115 = 1;
    v116 = v168;
  }

  __swift_storeEnumTagSinglePayload(v116, v115, 1, v71);
  v125 = sub_1E4202744();
  v126 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v125)
  {
    v126 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v127 = v166;
  sub_1E3741EA0(v116, v166, &qword_1ECF37538);
  v128 = (v127 + *(v79 + 36));
  *v128 = v126;
  OUTLINED_FUNCTION_15_3(v128);
  sub_1E3741EA0(v127, v182, &qword_1ECF37540);
  sub_1E3AEABF4(v197);
  LOBYTE(v127) = sub_1E4202744();
  LODWORD(v180) = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v127)
  {
    LODWORD(v180) = sub_1E4202774();
  }

  sub_1E4200A54();
  v177 = v129;
  v131 = v130;
  v133 = v132;
  v135 = v134;
  memcpy(v196, v197, 0x51uLL);
  v196[88] = 0;
  v136 = sub_1E3FFE5B8(0, 1);
  v137 = sub_1E4202744();
  v138 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v137)
  {
    v138 = sub_1E4202774();
  }

  sub_1E4200A54();
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v147 = v183;
  sub_1E3743538(v178, v183, &qword_1ECF37548);
  v194[0] = v147;
  v148 = v179;
  v149 = v169;
  sub_1E3743538(v179, v169, &qword_1ECF37540);
  v194[1] = v149;
  v150 = v181;
  v151 = v170;
  sub_1E3743538(v181, v170, &qword_1ECF37540);
  v194[2] = v151;
  v152 = v182;
  v153 = v171;
  sub_1E3743538(v182, v171, &qword_1ECF37540);
  v194[3] = v153;
  memcpy(v193, v196, 0x58uLL);
  LOBYTE(v193[11]) = v180;
  v193[12] = v177;
  v193[13] = v131;
  v193[14] = v133;
  v193[15] = v135;
  LOBYTE(v193[16]) = 0;
  v191 = 0;
  v192 = 0;
  v194[4] = v193;
  v194[5] = &v191;
  v184 = v136;
  v185 = v138;
  v186 = v140;
  v187 = v142;
  v188 = v144;
  v189 = v146;
  v190 = 0;
  v194[6] = &v184;
  sub_1E3CFB4B0(v194, v172);
  OUTLINED_FUNCTION_50_3(v152);
  OUTLINED_FUNCTION_50_3(v150);
  OUTLINED_FUNCTION_50_3(v148);
  sub_1E325F69C(v178, &qword_1ECF37548);
  memcpy(v195, v193, 0x81uLL);
  sub_1E325F69C(v195, &qword_1ECF37550);
  OUTLINED_FUNCTION_50_3(v153);
  OUTLINED_FUNCTION_50_3(v151);
  OUTLINED_FUNCTION_50_3(v149);
  return sub_1E325F69C(v183, &qword_1ECF37548);
}

uint64_t sub_1E3CFD640()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for EpisodeLockup(v2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4200AE4();
  sub_1E3CFE0A8(v1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1E3CFE10C(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1E3CFE170;
  *(v15 + 24) = v14;
  sub_1E4203B64();

  return (*(v8 + 8))(v12, v6);
}

void *sub_1E3CFD810@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E4201B84();
  v10 = 0;
  sub_1E3CFD8E0();
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, 0x161uLL);
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v3, v4, v5);
  sub_1E325F69C(v12, &unk_1ECF37510);
  memcpy(&v9[7], __dst, 0x161uLL);
  v6 = v10;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  return memcpy((a1 + 17), v9, 0x168uLL);
}

void sub_1E3CFD8E0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  type metadata accessor for DownloadStatusAndContextMenuButtonView(0);
  sub_1E3746E10(v0);
  v7 = sub_1E3B02B0C();
  v8 = *(v5 + 8);
  v8(v0, v3);
  if (v7)
  {
    sub_1E3CFE078(v30);
  }

  else
  {
    sub_1E3CFDB74();
    nullsub_1(v9, v10);
    OUTLINED_FUNCTION_80_12(v30);
  }

  sub_1E3CFDDB0();
  sub_1E3746E10(v0);
  v11 = sub_1E3B02B0C();
  v8(v0, v3);
  if (v11)
  {
    sub_1E3CFDB74();
    nullsub_1(v12, v13);
    memcpy(v29, v27, 0x81uLL);
  }

  else
  {
    sub_1E3CFE078(v29);
  }

  memcpy(v21, v30, sizeof(v21));
  OUTLINED_FUNCTION_80_12(v25);
  memcpy(v22, v30, sizeof(v22));
  memcpy(v20, v30, 0x81uLL);
  memcpy(v23, v28, 0x51uLL);
  memcpy(&v20[136], v28, 0x51uLL);
  OUTLINED_FUNCTION_80_12(&v24);
  OUTLINED_FUNCTION_80_12(&v20[224]);
  memcpy(v2, v20, 0x161uLL);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v14, v15, v16);
  sub_1E3743538(v23, v27, &qword_1ECF32A38);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v17, v18, v19);
  sub_1E325F69C(v25, &unk_1ECF37518);
  memcpy(v26, v28, 0x51uLL);
  sub_1E325F69C(v26, &qword_1ECF32A38);
  memcpy(v27, v21, 0x81uLL);
  sub_1E325F69C(v27, &unk_1ECF37518);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CFDB74()
{
  OUTLINED_FUNCTION_9_4();
  v6 = v5;
  v7 = sub_1E39C408C(233);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  if (*v7 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
  {

LABEL_9:
    sub_1E3CE3B40(v24);
    goto LABEL_10;
  }

  v9 = v0 + *(type metadata accessor for DownloadStatusAndContextMenuButtonView(0) + 28);
  v10 = *(v9 + 8);
  LOBYTE(__dst[0]) = *v9;
  __dst[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E4203914();
  sub_1E3F66914(v8, 0, v24[0], v24[1], v24[2], __src);
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  sub_1E4203DA4();
  sub_1E4200D94();
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  if (LOBYTE(__dst[0]) == 1 && *(v0 + 8) && (OUTLINED_FUNCTION_8(), (*(v11 + 1976))(), OUTLINED_FUNCTION_30(), (*(v12 + 152))(v22), v1 = v22[0], v2 = v22[1], v3 = v22[2], v4 = v22[3], , (v23 & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v17 = sub_1E4202734();

  __src[88] = 0;
  memcpy(__dst, __src, 0x58uLL);
  LOBYTE(__dst[11]) = v17;
  __dst[12] = v1;
  __dst[13] = v2;
  __dst[14] = v3;
  __dst[15] = v4;
  LOBYTE(__dst[16]) = 0;
  nullsub_1(v18, v19);
  memcpy(v24, __dst, 0x81uLL);
LABEL_10:
  memcpy(v6, v24, 0x81uLL);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CFDDB0()
{
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_173();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v6 = *v1;
  if (sub_1E39C408C(67))
  {

    v8 = v1[1];
    if (v8 && ((*(*v8 + 2000))(v7), OUTLINED_FUNCTION_30(), (*(v9 + 152))(&v41), , (v42 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v10, v11, v12, v13);
    }

    else
    {
      v14 = OUTLINED_FUNCTION_5_8();
    }

    v24 = v14;
    v25 = v15;
    v26 = v16;
    type metadata accessor for DownloadStatusAndContextMenuButtonView(0);
    sub_1E3746E10(v2);
    v40 = sub_1E3B02B0C();
    v27 = *(v4 + 8);
    v28 = OUTLINED_FUNCTION_171_0();
    v27(v28);
    sub_1E3746E10(v2);
    v39 = sub_1E3B02B0C();
    v29 = OUTLINED_FUNCTION_171_0();
    v27(v29);
    sub_1E3746E10(v2);
    v30 = sub_1E3B02B0C();
    v31 = OUTLINED_FUNCTION_171_0();
    v27(v31);
    v19 = v26;
    if (v8)
    {
      v32 = *(*v8 + 2000);

      v34 = v32(v33);
    }

    else
    {

      v34 = 0;
    }

    sub_1E397F070(v6, v34, v43);
    v38 = v43[0];
    v37 = v43[1];
    v35 = v44;
    if (v40)
    {
      v17 = v24;
    }

    else
    {
      v17 = 0.0;
    }

    if (v39)
    {
      v18 = 0;
    }

    else
    {
      v18 = v25;
    }

    if ((v30 & 1) == 0)
    {
      v19 = 0;
    }

    v36 = sub_1E4202734();
    v23 = v37;
    v22 = v38;
    v21 = v35;
    v20 = v36;
  }

  else
  {
    v17 = 0.0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *v0 = v22;
  *(v0 + 16) = v23;
  *(v0 + 32) = v21;
  *(v0 + 40) = v20;
  *(v0 + 48) = v17;
  *(v0 + 56) = v18;
  *(v0 + 64) = 0;
  *(v0 + 72) = v19;
  *(v0 + 80) = 0;
  OUTLINED_FUNCTION_10_3();
}

double sub_1E3CFE078(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 113) = 0u;
  return result;
}

uint64_t sub_1E3CFE0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CFE10C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeLockup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CFE170()
{
  v1 = type metadata accessor for EpisodeLockup(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  result = sub_1E39C408C(39);
  if (result)
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_19_3();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v12 = 0;
      *(&v14 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v13) = 1;
      v6 = *(*v4 + 784);

      v6(&v12, &v13, &unk_1F5D5E7B8, &off_1F5D5CC78);

      sub_1E325F69C(&v13, &unk_1ECF296E0);
      v7 = *(v2 + *(v1 + 36));
      if (v7)
      {
        v13 = 0u;
        v14 = 0u;
        v15 = 1;
        v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x1D0);
        v9 = v7;
        v8(2, v5, 0, &v13);
      }

      else
      {
        type metadata accessor for Router();
        OUTLINED_FUNCTION_38_42();
        sub_1E3CFE54C(v10, v11);
        OUTLINED_FUNCTION_21_1();
        result = sub_1E4201744();
        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E3CFE3B8@<X0>(void *a1@<X8>)
{
  v2 = sub_1E39C408C(96);
  if (v2)
  {
    sub_1E413D6F4(v2, a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for PlaybackStatus(0);

  return __swift_storeEnumTagSinglePayload(a1, v3, 1, v4);
}

uint64_t sub_1E3CFE428@<X0>(void *a1@<X8>)
{
  v3 = **(v1 + 16);

  v4 = sub_1E3CF7A74();
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for DownloadStatusAndContextMenuButtonView(0);
  *(a1 + *(v6 + 24)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *a1 = v3;
  a1[1] = v4;
  v7 = a1 + *(v6 + 28);
  result = sub_1E42038E4();
  *v7 = v9;
  *(v7 + 1) = v10;
  return result;
}

unint64_t sub_1E3CFE4F4()
{
  result = qword_1ECF60060;
  if (!qword_1ECF60060)
  {
    type metadata accessor for DownloadStatusAndContextMenuButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF60060);
  }

  return result;
}

uint64_t sub_1E3CFE54C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_79_17@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{

  return sub_1E38838AC(a1, a2, a3, a4, a5);
}

void *OUTLINED_FUNCTION_80_12(void *a1)
{

  return memcpy(a1, (v1 + 1312), 0x81uLL);
}

uint64_t sub_1E3CFE5D8()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  static NSNotificationName.VUISportsFavoritesLocalStorageDidChange = result;
  return result;
}

uint64_t *NSNotificationName.VUISportsFavoritesLocalStorageDidChange.unsafeMutableAddressor()
{
  if (qword_1ECF60070 != -1)
  {
    OUTLINED_FUNCTION_18_84();
  }

  return &static NSNotificationName.VUISportsFavoritesLocalStorageDidChange;
}

uint64_t sub_1E3CFE670()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  static NSNotificationName.VUISportsFavoritesFavoritesRequestDidFinish = result;
  return result;
}

uint64_t *NSNotificationName.VUISportsFavoritesFavoritesRequestDidFinish.unsafeMutableAddressor()
{
  if (_MergedGlobals_230 != -1)
  {
    OUTLINED_FUNCTION_17_99();
  }

  return &static NSNotificationName.VUISportsFavoritesFavoritesRequestDidFinish;
}

uint64_t sub_1E3CFE708()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  static NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange = result;
  return result;
}

uint64_t *NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor()
{
  if (qword_1EE28C438 != -1)
  {
    OUTLINED_FUNCTION_15_109();
  }

  return &static NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange;
}

uint64_t sub_1E3CFE7A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0);
  return sub_1E42006B4();
}

void sub_1E3CFE834()
{
  type metadata accessor for SportsFavoritesManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 2;
  v1 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress;
  *(v0 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock) = 0;
  *(v0 + v3) = 0;
  v4 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoriteIdsSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *(v0 + v4) = sub_1E4200544();
  sub_1E3CFEA94(1);
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  [v6 addObserver:v0 selector:sel_handleSportsFavoriteSyncNotification_ name:*MEMORY[0x1E69E1730] object:0];

  v7 = [v5 defaultCenter];
  v8 = _MergedGlobals_230;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_17_99();
  }

  [v7 addObserver:v0 selector:sel_handleFavoriteRequestDidFinish_ name:static NSNotificationName.VUISportsFavoritesFavoritesRequestDidFinish object:0];

  v9 = [v5 defaultCenter];
  v10 = qword_1EE28C438;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_15_109();
  }

  [v9 addObserver:v0 selector:sel_handleAccountDidChange_ name:static NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange object:0];

  qword_1EE2AACB0 = v0;
}

uint64_t *sub_1E3CFEA54()
{
  if (qword_1EE299E48 != -1)
  {
    OUTLINED_FUNCTION_4_170();
  }

  return &qword_1EE2AACB0;
}

void sub_1E3CFEA94(char a1)
{
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_1E3D034E8;
  v5[5] = v3;
  OUTLINED_FUNCTION_3_4();
  v5[1] = 1107296256;
  v5[2] = sub_1E3CFF370;
  v5[3] = &block_descriptor_96;
  v4 = _Block_copy(v5);

  [v2 getFavoriteTeamsIgnoringCache:a1 & 1 completion:v4];
  _Block_release(v4);
}

void sub_1E3CFEB68()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40);
  OUTLINED_FUNCTION_0_10();
  v81 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37608);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v83 = &v76 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - v24;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v82 = v6;
    if (v1)
    {
      *(Strong + 32) = 1;
      v28 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      sub_1E37E93E8(v27 + v28, v25, &qword_1ECF37608);
      if (__swift_getEnumTagSinglePayload(v25, 1, v13))
      {
        v29 = v1;
        sub_1E325F6F0(v25, &qword_1ECF37608);
      }

      else
      {
        v45 = OUTLINED_FUNCTION_53_34();
        v46(v45, v25, v13);
        v47 = v1;
        sub_1E325F6F0(v25, &qword_1ECF37608);
        v85 = v1;
        v48 = v1;
        sub_1E42063C4();
        v49 = OUTLINED_FUNCTION_63_0();
        v50(v49);
      }

      v51 = v83;
      v52 = OUTLINED_FUNCTION_19_90();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v13);
      OUTLINED_FUNCTION_11_3();
      sub_1E3D00130(v51, v27 + v28);
      swift_endAccess();
      v55 = sub_1E324FBDC();
      v56 = v82;
      (*(v82 + 16))(v12, v55, v4);
      v57 = v1;
      v58 = sub_1E41FFC94();
      v59 = sub_1E42067E4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_6_21();
        v61 = swift_slowAlloc();
        v79 = v4;
        v62 = v61;
        v85 = v61;
        *v60 = 136315138;
        swift_getErrorValue();
        v63 = sub_1E4207AB4();
        v65 = sub_1E3270FC8(v63, v64, &v85);

        *(v60 + 4) = v65;
        _os_log_impl(&dword_1E323F000, v58, v59, "SportsFavoritesLocalStorage::error fetching favorites:%s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v56 + 8))(v12, v79);
      }

      else
      {

        (*(v56 + 8))(v12, v4);
      }
    }

    else
    {
      v30 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
      OUTLINED_FUNCTION_11_3();
      os_unfair_lock_lock((v27 + v30));
      swift_endAccess();
      if (v3)
      {
        v31 = v3;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v32 = sub_1E32772D8(v31);
      OUTLINED_FUNCTION_3_0();
      v33 = *(v27 + 24);

      v34 = sub_1E3868C04(v32, v33);

      v35 = 1;
      if (v34)
      {
        v35 = *(v27 + 32);
      }

      v78 = v35;
      *(v27 + 24) = v32;

      *(v27 + 32) = 0;
      OUTLINED_FUNCTION_3_0();
      *(v27 + 16) = 1;
      OUTLINED_FUNCTION_11_3();
      os_unfair_lock_unlock((v27 + v30));
      swift_endAccess();
      v36 = sub_1E324FBDC();
      v37 = v82;
      (*(v82 + 16))(v10, v36, v4);

      v38 = sub_1E41FFC94();
      v39 = sub_1E42067E4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_6_21();
        v77 = swift_slowAlloc();
        v84 = v77;
        *v40 = 136315138;
        v41 = sub_1E4206634();
        v79 = v4;
        v43 = v42;

        v44 = sub_1E3270FC8(v41, v43, &v84);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1E323F000, v38, v39, "SportsFavoritesLocalStorage:: favorites changed:%s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v82 + 8))(v10, v79);
      }

      else
      {

        (*(v37 + 8))(v10, v4);
      }

      if (v78)
      {
        OUTLINED_FUNCTION_58_28();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
        OUTLINED_FUNCTION_0_218();
        sub_1E32752B0(v66, &unk_1ECF326C0);
        sub_1E4200624();

        sub_1E3CFFB28();
      }

      v67 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      sub_1E37E93E8(v27 + v67, v21, &qword_1ECF37608);
      if (__swift_getEnumTagSinglePayload(v21, 1, v13))
      {
        sub_1E325F6F0(v21, &qword_1ECF37608);
      }

      else
      {
        v68 = OUTLINED_FUNCTION_53_34();
        v69(v68, v21, v13);
        sub_1E325F6F0(v21, &qword_1ECF37608);
        sub_1E42063D4();
        v70 = OUTLINED_FUNCTION_63_0();
        v71(v70);
      }

      v72 = v83;
      v73 = OUTLINED_FUNCTION_19_90();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v13);
      OUTLINED_FUNCTION_11_3();
      sub_1E3D00130(v72, v27 + v67);
      swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CFF370(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E42062B4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1E3CFF428()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E41FDF14();
  if (!*(&v36 + 1))
  {
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_26_75() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = v30;
  v9 = v33;
  if (!sub_1E41FDF24())
  {

    goto LABEL_15;
  }

  v11 = sub_1E4205C44();

  *&v31 = sub_1E4205F14();
  *(&v31 + 1) = v12;
  v13 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v34 = 0u;
  }

  v35 = v31;
  v36 = v34;
  if (!*(&v34 + 1))
  {

LABEL_14:
    sub_1E325F6F0(&v35, &unk_1ECF296E0);
    goto LABEL_15;
  }

  sub_1E3280A90(0, &qword_1EE23ADD0);
  if ((OUTLINED_FUNCTION_26_75() & 1) == 0)
  {

LABEL_23:

    goto LABEL_15;
  }

  v14 = v28;
  v15 = [v11 vui:@"Error" errorForKey:?];
  if (!v15)
  {
    v25 = [v28 integerValue];
    v29 = MEMORY[0x1E69E7CD0];
    v32 = MEMORY[0x1E69E7CD0];
    if (v25)
    {
      sub_1E3277398(&v35, v10, v9);

      v26 = MEMORY[0x1E69E7CD0];
      v27 = v29;
    }

    else
    {
      sub_1E3277398(&v35, v10, v9);

      v27 = MEMORY[0x1E69E7CD0];
      v26 = v32;
    }

    (*(*v1 + 400))(v26, v27);

    goto LABEL_23;
  }

  v16 = v15;

  v17 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v17, v2);
  v18 = v16;
  v19 = sub_1E41FFC94();
  v20 = sub_1E42067D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_6_21();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v18;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1E323F000, v19, v20, "SportsFavoritesLocalStorage:: not updating favorite ids due to error %@", v21, 0xCu);
    sub_1E325F6F0(v22, &unk_1ECF28E30);
    v18 = v28;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v23 = v19;
    v19 = v28;
  }

  (*(v4 + 8))(v8, v2);
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CFF900()
{
  if ([objc_opt_self() userHasActiveAccount])
  {

    sub_1E3CFEA94(1);
  }

  else
  {
    v1 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
    OUTLINED_FUNCTION_11_3();
    os_unfair_lock_lock((v0 + v1));
    swift_endAccess();
    OUTLINED_FUNCTION_3_0();
    *(v0 + 16) = 0;
    OUTLINED_FUNCTION_3_0();
    *(v0 + 24) = MEMORY[0x1E69E7CD0];

    OUTLINED_FUNCTION_11_3();
    os_unfair_lock_unlock((v0 + v1));
    swift_endAccess();

    v2 = OUTLINED_FUNCTION_27_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v2);
    OUTLINED_FUNCTION_0_218();
    OUTLINED_FUNCTION_77();
    sub_1E32752B0(v3, v4);
    OUTLINED_FUNCTION_59_26();
  }
}

uint64_t sub_1E3CFFA48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E41FDEE4();

  a4(v12);

  return (*(v7 + 8))(v11, v5);
}

void sub_1E3CFFB28()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1ECF60070 != -1)
  {
    OUTLINED_FUNCTION_18_84();
    v1 = v2;
  }

  [v1 postNotificationName:static NSNotificationName.VUISportsFavoritesLocalStorageDidChange object:v0];
}

uint64_t sub_1E3CFFBB8()
{
  OUTLINED_FUNCTION_24();
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40);
  v1[10] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[11] = v3;
  v1[12] = OUTLINED_FUNCTION_86_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37608);
  OUTLINED_FUNCTION_17_2(v4);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3CFFCAC()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(v3 + v4, v1, &qword_1ECF37608);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_1E325F6F0(v0[14], &qword_1ECF37608);
  }

  else
  {
    v5 = v0[14];
    (*(v0[11] + 16))(v0[12], v5, v0[10]);
    sub_1E325F6F0(v5, &qword_1ECF37608);
    sub_1E3D002C4();
    v6 = swift_allocError();
    *v7 = 2;
    v0[8] = v6;
    sub_1E42063C4();
    v8 = OUTLINED_FUNCTION_27_0();
    v9(v8);
  }

  v10 = v0[13];
  v11 = v0[9];
  v12 = OUTLINED_FUNCTION_19_90();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_11_3();
  sub_1E3D00130(v10, v3 + v4);
  swift_endAccess();
  if (*(v11 + 32) == 2)
  {
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    v0[15] = v16;
    swift_weakInit();
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_1E3CFFF40;
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DE38](v18, v19, v20, 0xD000000000000016, v21, v22, v16, v23);
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v24();
  }
}

uint64_t sub_1E3CFFF40()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3D00044()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_12();

  return v0();
}

uint64_t sub_1E3D000B0()
{
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D00130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37608);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3D001A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37608);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10[-v2];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DA40);
    OUTLINED_FUNCTION_2();
    v7 = OUTLINED_FUNCTION_27_0();
    v8(v7);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
    v9 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation;
    OUTLINED_FUNCTION_11_3();
    sub_1E3D00130(v3, v5 + v9);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1E3D002C4()
{
  result = qword_1ECF37610;
  if (!qword_1ECF37610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37610);
  }

  return result;
}

void sub_1E3D00318()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v5(v0);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  if (os_log_type_enabled(v6, v7))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_108_1(&dword_1E323F000, v8, v9, "SportsFavoritesLocalStorage::setTeamFavorites");
    OUTLINED_FUNCTION_6_0();
  }

  v10 = OUTLINED_FUNCTION_63_0();
  v11(v10);
  v12 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
  OUTLINED_FUNCTION_11_3();
  v24 = v12;
  os_unfair_lock_lock((v1 + v12));
  swift_endAccess();
  OUTLINED_FUNCTION_3_0();
  *(v1 + 24) = MEMORY[0x1E69E7CD0];

  v13 = sub_1E32AE9B0(v3);
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {
      *(v1 + 32) = 0;
      OUTLINED_FUNCTION_11_3();
      os_unfair_lock_unlock((v1 + v24));
      swift_endAccess();
      OUTLINED_FUNCTION_58_28();
      v21 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21);
      OUTLINED_FUNCTION_0_218();
      OUTLINED_FUNCTION_77();
      sub_1E32752B0(v22, v23);
      OUTLINED_FUNCTION_59_26();

      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = sub_1E39C2CD0();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v26[3] = &unk_1F5D5D528;
      v26[4] = &off_1F5D5C858;
      LOBYTE(v26[0]) = 0;
      v19 = j__OUTLINED_FUNCTION_18();
      v20 = sub_1E39C29F0(v26, v19 & 1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      if (v20)
      {
        OUTLINED_FUNCTION_11_3();
        sub_1E3277398(&v25, v17, v18);
        swift_endAccess();

        continue;
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1E3D005F8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    v5 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
    OUTLINED_FUNCTION_11_3();
    os_unfair_lock_lock((v2 + v5));
    swift_endAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v6 = *(v2 + 24);

    LOBYTE(v3) = sub_1E3862230(a1, v3, v6);

    OUTLINED_FUNCTION_11_3();
    os_unfair_lock_unlock((v2 + v5));
    swift_endAccess();
  }

  return v3 & 1;
}

uint64_t sub_1E3D006B4()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v6 = sub_1E324FBDC();
  (*(v4 + 16))(v0, v6, v2);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_125_0();
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, v8, "SportsFavoritesLocalStorage::returnTeamFavorites", v9, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v0, v2);
  v10 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
  OUTLINED_FUNCTION_11_3();
  os_unfair_lock_lock((v0 + v10));
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = *(v0 + 24);

  os_unfair_lock_unlock((v1 + v10));
  swift_endAccess();
  return v11;
}

uint64_t sub_1E3D00838(uint64_t a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v4(v1);
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_108_1(&dword_1E323F000, v7, v8, "SportsFavoritesLocalStorage::setTeamFavorites_ids");
    OUTLINED_FUNCTION_6_0();
  }

  v9 = OUTLINED_FUNCTION_63_0();
  v10(v9);
  v11 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
  OUTLINED_FUNCTION_11_3();
  os_unfair_lock_lock((v1 + v11));
  swift_endAccess();
  OUTLINED_FUNCTION_3_0();
  *(v1 + 24) = a1;

  *(v1 + 32) = 1;
  OUTLINED_FUNCTION_11_3();
  os_unfair_lock_unlock((v1 + v11));
  swift_endAccess();
  OUTLINED_FUNCTION_58_28();
  v12 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  OUTLINED_FUNCTION_0_218();
  OUTLINED_FUNCTION_77();
  sub_1E32752B0(v13, v14);
  OUTLINED_FUNCTION_59_26();
}

void sub_1E3D00A0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v10 = sub_1E324FBDC();
  (*(v8 + 16))(v0, v10, v6);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v11, v12, "SportsFavoritesLocalStorage::handleFavoritesChange", v13, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v0, v6);
  v14 = OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_teamFavoritesLock;
  OUTLINED_FUNCTION_11_3();
  os_unfair_lock_lock((v1 + v14));
  swift_endAccess();
  OUTLINED_FUNCTION_4_4();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_9:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (*(v5 + 48) + ((v21 << 10) | (16 * v22)));
      v24 = *v23;
      v25 = v23[1];
      OUTLINED_FUNCTION_11_3();

      sub_1E3277398(&v40, v24, v25);
      swift_endAccess();

      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v21 >= v19)
    {
      break;
    }

    v17 = *(v5 + 56 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_4_4();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;

  v31 = 0;
  if (!v28)
  {
    goto LABEL_13;
  }

  do
  {
    v32 = v31;
LABEL_17:
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = (*(v3 + 48) + ((v32 << 10) | (16 * v33)));
    v35 = *v34;
    v36 = v34[1];
    OUTLINED_FUNCTION_11_3();

    sub_1E397B708(v35, v36);
    swift_endAccess();
  }

  while (v28);
LABEL_13:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      *(v1 + 32) = 1;
      OUTLINED_FUNCTION_11_3();
      os_unfair_lock_unlock((v1 + v14));
      swift_endAccess();
      OUTLINED_FUNCTION_58_28();
      v37 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37);
      OUTLINED_FUNCTION_0_218();
      OUTLINED_FUNCTION_77();
      sub_1E32752B0(v38, v39);
      OUTLINED_FUNCTION_59_26();

      OUTLINED_FUNCTION_25_2();
      return;
    }

    v28 = *(v3 + 56 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_17;
    }
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1E3D00D6C()
{

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_pendingContinuation, &qword_1ECF37608);

  return v0;
}

uint64_t sub_1E3D00DC4()
{
  sub_1E3D00D6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3D00E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_27_10();
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = v5;
  OUTLINED_FUNCTION_157();
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  v12 = objc_opt_self();

  if (([v12 userHasActiveAccount] & 1) != 0 || (objc_msgSend(v12, sel_allowsAccountModification) & 1) == 0)
  {
    sub_1E3D00FF8();
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1E3D034F0;
    *(v13 + 24) = v11;
    v16[4] = sub_1E3D034FC;
    v16[5] = v13;
    OUTLINED_FUNCTION_3_4();
    v16[1] = 1107296256;
    v16[2] = sub_1E326FFE4;
    v16[3] = &block_descriptor_43_0;
    v14 = _Block_copy(v16);

    [v12 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v14];
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_157();
  swift_bridgeObjectRelease_n();
}

void sub_1E3D00FF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  if (v9)
  {
    (v7)(v9);
    goto LABEL_16;
  }

  if ((*(*v3 + 552))())
  {
    v27 = &type metadata for ViewModelKeys.Sports;
    v28 = &off_1F5D7BC68;
    v26[0] = 3;
    OUTLINED_FUNCTION_57_25();
    if (v30)
    {
      if ((OUTLINED_FUNCTION_26_75() & 1) == 0)
      {
LABEL_12:

        __swift_destroy_boxed_opaque_existential_1(v26);
        goto LABEL_13;
      }

      __swift_destroy_boxed_opaque_existential_1(v26);
      v27 = &type metadata for ViewModelKeys.Sports;
      v28 = &off_1F5D7BC68;
      v26[0] = 4;
      OUTLINED_FUNCTION_57_25();

      if (v30)
      {
        if (OUTLINED_FUNCTION_26_75())
        {
          __swift_destroy_boxed_opaque_existential_1(v26);
          OUTLINED_FUNCTION_67_6();
          v17 = swift_allocObject();
          v17[2] = v24;
          v17[3] = v25;
          v17[4] = v1;
          v17[5] = v24;
          v17[6] = v25;
          v17[7] = v7;
          v17[8] = v5;

          sub_1E3D0180C(v17);

          goto LABEL_16;
        }

        goto LABEL_12;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1E325F6F0(&v29, &unk_1ECF296E0);
  }

LABEL_13:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v18(v16);
  v19 = sub_1E41FFC94();
  v20 = sub_1E42067E4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_125_0();
    *v21 = 0;
    _os_log_impl(&dword_1E323F000, v19, v20, "SportsFavoritesLocalStorage::performTeamFavoritesOperation:: missing data, unable to perform", v21, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v12 + 8))(v16, v10);
  sub_1E3D002C4();
  v22 = swift_allocError();
  *v23 = 0;
  v7();

LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D012EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v48 = v19;
  v49 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v47 = v21 - v20;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  if (v9)
  {
    v45 = v24;
    v46 = v23;
    OUTLINED_FUNCTION_67_6();
    v28 = swift_allocObject();
    v28[2] = v1;
    v28[3] = v17;
    v28[4] = v15;
    v28[5] = v5;
    v28[6] = v3;
    v28[7] = v13;
    v28[8] = v11;
    if (*(v1 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress) == 1)
    {
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      OUTLINED_FUNCTION_157();
      swift_bridgeObjectRetain_n();
      (v5)(0);
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress) = 1;
      OUTLINED_FUNCTION_4_0();
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = sub_1E3D036B0;
      v33[4] = v28;
      sub_1E3280A90(0, &qword_1EE23B1D0);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      OUTLINED_FUNCTION_157();
      swift_bridgeObjectRetain_n();

      v44 = sub_1E4206A04();
      v34 = swift_allocObject();
      v34[2] = sub_1E3D037CC;
      v34[3] = v33;
      v34[4] = v13;
      v34[5] = v11;
      v34[6] = v1;
      OUTLINED_FUNCTION_2_12(v34);
      OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
      *&v51 = v35;
      *(&v51 + 1) = &block_descriptor_68_0;
      v43 = _Block_copy(&v50);

      sub_1E4203FE4();
      *&v50 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_11_115();
      sub_1E3D03CE8(v36, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      OUTLINED_FUNCTION_47();
      sub_1E32752B0(v38, v39);
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v27, v47, v43);
      _Block_release(v43);

      (*(v48 + 8))(v47, v49);
      (*(v45 + 8))(v27, v46);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else if (v7)
  {
    *&v50 = v17;
    *(&v50 + 1) = v15;
    *&v51 = v13;
    *(&v51 + 1) = v11;
    v52 = 0;
    v29 = swift_allocObject();
    v30 = v51;
    *(v29 + 16) = v50;
    *(v29 + 32) = v30;
    *(v29 + 48) = v52;
    *(v29 + 56) = v1;
    *(v29 + 64) = v17;
    *(v29 + 72) = v15;
    *(v29 + 80) = v5;
    *(v29 + 88) = v3;
    swift_bridgeObjectRetain_n();

    sub_1E3D0259C(&v50);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E3D002C4();
    swift_allocError();
    *v40 = 1;
    v5();
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3D0180C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_42_1();
  sub_1E4206474();
  v5 = OUTLINED_FUNCTION_19_90();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_10_9();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = sub_1E3D03508;
  v9[5] = a1;

  sub_1E37748D8(0, 0, v1, &unk_1E42CC020, v9);
}

void sub_1E3D018EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (v3)
  {
    v11 = v3;
    v12 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v12, v4);
    v13 = v3;
    v14 = sub_1E41FFC94();
    v15 = sub_1E42067F4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_6_21();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v16 = 136315138;
      swift_getErrorValue();
      v17 = sub_1E4207AB4();
      v19 = sub_1E3270FC8(v17, v18, &v22);

      *(v16 + 4) = v19;
      _os_log_impl(&dword_1E323F000, v14, v15, "SportsFavoritesLocalStorage: failed to authenticate user with error=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    v20 = v3;
    v1(v3);
  }

  else
  {
    v1(0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D01AF4()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FF154();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF024();
  v0[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FF044();
  v0[10] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[11] = v8;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3D01C48()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FF0C4();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E3D01CE8;
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE43730](v2);
}

uint64_t sub_1E3D01CE8()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 120) = v0;

  v7 = OUTLINED_FUNCTION_27_0();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3D01E3C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[7];
  v12 = v0[2];
  sub_1E41FF014();
  (*(v4 + 8))(v5, v6);
  (*(v3 + 104))(v1, *MEMORY[0x1E69D5858], v2);
  v7 = sub_1E3988234();
  v8 = *(v3 + 8);
  v8(v1, v2);
  v12(v7 & 1, 0);
  v9 = OUTLINED_FUNCTION_146();
  (v8)(v9);

  OUTLINED_FUNCTION_15_12();

  return v10();
}

uint64_t sub_1E3D01F84()
{
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3D02008(uint64_t a1, char a2)
{
  v13 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37620);
  sub_1E4148DE0(sub_1E3D041DC);
  v11 = a1;
  v12 = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37628);
  sub_1E4148DE0(sub_1E3D04298);
  *&v9 = sub_1E4205F14();
  *(&v9 + 1) = v4;
  sub_1E4207414();
  v10 = MEMORY[0x1E69E6370];
  LOBYTE(v9) = 0;
  sub_1E329504C(&v9, v8);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1E377DF14(v8, &v11);
  sub_1E375D84C(&v11);
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_1E4205ED4();
  v7 = sub_1E4205C44();
  [v5 postNotificationName:@"VUIFavoritesRequestDidFinishNotification" object:v6 userInfo:v7];
}

uint64_t sub_1E3D021F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1E329504C(a1, v6);
    swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1E377DF14(v6, a2);
    *v2 = v5;
    return sub_1E375D84C(a2);
  }

  else
  {
    sub_1E325F6F0(a1, &unk_1ECF296E0);
    sub_1E3D03D30(a2, v6);
    sub_1E375D84C(a2);
    return sub_1E325F6F0(v6, &unk_1ECF296E0);
  }
}

void sub_1E3D022BC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v34 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v35 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v39 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v37 = v21;
  v38 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v36 = sub_1E4206A04();
  v25 = swift_allocObject();
  v26 = *(v10 + 16);
  *(v25 + 16) = *v10;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(v10 + 32);
  *(v25 + 56) = v14;
  v27 = v12 & 1;
  *(v25 + 64) = v12 & 1;
  *(v25 + 72) = v8;
  *(v25 + 80) = v34;
  *(v25 + 88) = v5;
  *(v25 + 96) = v3;
  *(v25 + 104) = v1;
  OUTLINED_FUNCTION_2_12(v25);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v41[2] = v28;
  v41[3] = &block_descriptor_102_0;
  v29 = _Block_copy(v41);
  sub_1E3D04198(v10, &v40);
  sub_1E3D041D0(v14, v27);

  sub_1E4203FE4();
  v41[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11_115();
  sub_1E3D03CE8(v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v32, v33);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v24, v19, v29);
  _Block_release(v29);

  (*(v39 + 8))(v19, v35);
  (*(v37 + 8))(v24, v38);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D0259C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = *(a1 + 32);
  sub_1E4206474();
  v7 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_27_10();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_50_36(v11);
  if (v6)
  {

    v12 = &unk_1E42CC030;
  }

  else
  {

    v12 = &unk_1E42CC040;
  }

  sub_1E37748D8(0, 0, v5, v12, v6);
}

uint64_t sub_1E3D026C0()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1E41FF104();
  v0[6] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FF154();
  v0[9] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FF144();
  v0[12] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3D02804()
{
  sub_1E41FF0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8);
  v2 = sub_1E41FF114();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_32_58();
  *(v0 + 120) = v5;
  *(v5 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  OUTLINED_FUNCTION_10_9();
  v6 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_45_46(v6, v7, v8, v9, v10, v11, v12, v13, v14);
  (*(v4 + 104))(v5 + v1, *MEMORY[0x1E69D58D8], v2, v15);

  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  *v16 = v0;
  v17 = OUTLINED_FUNCTION_37_51(v16);

  return MEMORY[0x1EEE43750](v17, v18);
}

uint64_t sub_1E3D02980()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 136) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3D02B00()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_1E41FF104();
  v0[6] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FF154();
  v0[9] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FF144();
  v0[12] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_86_0();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3D02C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1E41FF0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8);
  v14 = sub_1E41FF114();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v17 = OUTLINED_FUNCTION_32_58();
  *(v12 + 120) = v17;
  *(v17 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  OUTLINED_FUNCTION_10_9();
  v18 = swift_allocObject();
  v27 = OUTLINED_FUNCTION_45_46(v18, v19, v20, v21, v22, v23, v24, v25, v26);
  (*(v16 + 104))(v17 + v13, *MEMORY[0x1E69D58D8], v14, v27);

  v28 = swift_task_alloc();
  *(v12 + 128) = v28;
  *v28 = v12;
  v29 = OUTLINED_FUNCTION_37_51(v28);

  return MEMORY[0x1EEE43768](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1E3D02DC0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = *v1;
  OUTLINED_FUNCTION_7();
  *v9 = v8;
  *(v10 + 136) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3D02F40()
{
  v1 = *(v0 + 56);
  v2 = sub_1E41FF134();
  v3 = v2 + 56;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = (63 - v5) >> 6;
  v25 = v1;
  v27 = v2;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      do
      {
LABEL_8:
        (*(v25 + 16))(v26[8], *(v27 + 48) + *(v25 + 72) * (__clz(__rbit64(v6)) | (v9 << 6)), v26[6]);
        v12 = sub_1E41FF0D4();
        v14 = v13;
        v15 = OUTLINED_FUNCTION_146();
        v16(v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1E3740F88(0, *(v10 + 16) + 1, 1, v10);
          v10 = result;
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_1E3740F88((v17 > 1), v18 + 1, 1, v10);
          v10 = result;
        }

        v6 &= v6 - 1;
        *(v10 + 16) = v18 + 1;
        v19 = v10 + 16 * v18;
        *(v19 + 32) = v12;
        *(v19 + 40) = v14;
      }

      while (v6);
    }
  }

  v21 = v26[13];
  v20 = v26[14];
  v22 = v26[12];
  v23 = v26[4];

  sub_1E32772D8(v10);
  v23();

  (*(v21 + 8))(v20, v22);

  OUTLINED_FUNCTION_15_12();

  return v24();
}

uint64_t sub_1E3D0319C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3D03214()
{
  result = qword_1ECF37618;
  if (!qword_1ECF37618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37618);
  }

  return result;
}

uint64_t type metadata accessor for SportsFavoritesManager()
{
  result = qword_1EE299E30;
  if (!qword_1EE299E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3D032BC()
{
  sub_1E3D0338C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3D0338C()
{
  if (!qword_1EE23B428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DA40);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B428);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SportsFavoritesManager.OperationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E3D03508()
{
  OUTLINED_FUNCTION_31_1();
  if (v2)
  {
    (*(v0 + 56))(v1);
  }

  else
  {
    if (qword_1EE299E48 != -1)
    {
      OUTLINED_FUNCTION_4_170();
    }

    v3 = OUTLINED_FUNCTION_146();
    v4(v3);
    OUTLINED_FUNCTION_146();
    sub_1E3D012EC();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D035DC()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3D01AF4();
}

uint64_t sub_1E3D03670()
{
}

uint64_t sub_1E3D036B0(char a1)
{
  v3 = v1[5];
  v2 = v1[6];
  if ((a1 & 1) == 0)
  {
    return v3(0);
  }

  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[7];
  v8 = v1[8];
  *&v12 = v5;
  *(&v12 + 1) = v6;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  v14 = 1;
  v9 = swift_allocObject();
  v10 = v13;
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  *(v9 + 48) = v14;
  *(v9 + 56) = v4;
  *(v9 + 64) = v5;
  *(v9 + 72) = v6;
  *(v9 + 80) = v3;
  *(v9 + 88) = v2;
  swift_bridgeObjectRetain_n();

  sub_1E3D0259C(&v12);
}

uint64_t sub_1E3D037CC(char a1)
{
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress) = 0;
  }

  return v3(a1 & 1);
}

void sub_1E3D0383C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  if ([objc_opt_self() isSUIEnabled])
  {
    v5 = 1;
LABEL_10:
    v2(v5);
    return;
  }

  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [objc_opt_self() topPresentedViewController];
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = v8;
  OUTLINED_FUNCTION_23();
  sub_1E3741090(0xD000000000000015, v10, v7);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    OUTLINED_FUNCTION_67_6();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E4297BE0;
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1E3283528();
    *(v12 + 32) = v3;
    *(v12 + 40) = v4;

    sub_1E4205F44();

    sub_1E3280A90(0, &qword_1ECF297E8);
    OUTLINED_FUNCTION_25();
    v17 = sub_1E379796C(v13, v14, v15, v16, 1);
    sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v7);
    v31 = v9;
    if (v18)
    {
      v19 = sub_1E4205ED4();
    }

    else
    {
      v19 = 0;
    }

    v20 = objc_opt_self();
    OUTLINED_FUNCTION_2_4();
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v1;
    v36 = sub_1E3D03E18;
    v37 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1E377674C;
    v35 = &block_descriptor_74_0;
    v22 = _Block_copy(&aBlock);

    v30 = [v20 vui:v19 actionWithTitle:1 style:v22 handler:?];
    _Block_release(v22);

    sub_1E3741090(0xD00000000000001CLL, 0x80000001E427DAB0, v7);
    if (v23)
    {
      v24 = sub_1E4205ED4();
    }

    else
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_2_4();
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    *(v25 + 24) = v1;
    v36 = sub_1E3D03E44;
    v37 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1E377674C;
    v35 = &block_descriptor_80;
    v26 = _Block_copy(&aBlock);

    v27 = [v20 vui:v24 actionWithTitle:2 style:v26 handler:?];
    _Block_release(v26);

    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    swift_weakInit();
    v36 = sub_1E3D03E70;
    v37 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1E378AEA4;
    v35 = &block_descriptor_84_0;
    v29 = _Block_copy(&aBlock);

    [v17 vui:v29 setDismissalHandler:?];
    _Block_release(v29);
    [v17 vui:v30 addAction:?];
    [v17 vui:v27 addAction:?];
    [v17 vui:v31 presentAlertFromPresentingController:1 animated:0 completion:?];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3D03CE8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1E3D03D30@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E375D924(a1);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0);
    sub_1E4207644();
    sub_1E375D84C(*(v8 + 48) + 40 * v6);
    sub_1E329504C((*(v8 + 56) + 32 * v6), a2);
    sub_1E4207664();
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1E3D03E70()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8VideosUI22SportsFavoritesManager_isRemovalConfirmationInProgress) = 0;
  }

  return result;
}

uint64_t sub_1E3D03EB8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_28_57(v1);

  return sub_1E3D02B00();
}

uint64_t objectdestroy_86Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_27_10();

  return swift_deallocObject();
}

uint64_t sub_1E3D03F90()
{
  OUTLINED_FUNCTION_27_2();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_28_57(v1);

  return sub_1E3D026C0();
}

void sub_1E3D04024()
{
  OUTLINED_FUNCTION_31_1();
  v1 = *(v0 + 56);
  v2 = *(v0 + 96);
  if (*(v0 + 64))
  {
    v3 = v1;
    sub_1E3D02008(0, 1);
    v2(v1);
    OUTLINED_FUNCTION_25_2();

    sub_1E3798224(v4, v5);
  }

  else
  {
    v7 = *(v0 + 48);
    v8 = *(**(v0 + 72) + 392);

    v8(v9);
    v10 = [objc_opt_self() sharedInstance];
    v11 = v1[2];
    sub_1E3798224(v1, 0);
    if (v7)
    {
      [v10 register:v11 newTeamsAdded:0 teamsRemoved:1];

      v12 = 1;
    }

    else
    {
      [v10 register:v11 newTeamsAdded:1 teamsRemoved:0];

      v12 = 0;
    }

    sub_1E3D02008(v12, 0);
    v2(0);
    OUTLINED_FUNCTION_25_2();
  }
}

id sub_1E3D041D0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1E3D041DC()
{
  v4[0] = sub_1E4205F14();
  v4[1] = v0;
  sub_1E4207414();
  swift_getErrorValue();
  v4[3] = v3;
  __swift_allocate_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_77();
  v1();
  return sub_1E3D021F4(v4, v5);
}

uint64_t sub_1E3D04298(uint64_t *a1)
{
  v1 = *a1;
  sub_1E4205F14();
  v5[1] = v2;
  sub_1E4207414();
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v5[3] = sub_1E3280A90(0, &qword_1EE23ADD0);
  v5[0] = v3;
  return sub_1E3D021F4(v5, v6);
}

uint64_t objectdestroy_54Tm()
{
  sub_1E3D03670();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_32_58()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_57_25()
{

  return sub_1E3F9F164((v0 - 152));
}

uint64_t OUTLINED_FUNCTION_58_28()
{
}

uint64_t type metadata accessor for EditorialLockup()
{
  result = qword_1EE2A42E0;
  if (!qword_1EE2A42E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3D044C0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(type metadata accessor for EditorialLockup() + 36);
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  sub_1E3929B88();
  sub_1E4200CD4();
  *a3 = a1;
  memcpy((a3 + 8), a2, 0xC3uLL);
  v14 = *(*a1 + 392);

  if (!v14(v15))
  {
    goto LABEL_4;
  }

  type metadata accessor for EditorialLockupLayout();
  OUTLINED_FUNCTION_20_2();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

LABEL_4:
    type metadata accessor for EditorialLockupLayout();
    v16 = sub_1E3C5C364();
  }

  *(a3 + 216) = v16;
  type metadata accessor for ContextMenuModel();

  sub_1E3E6CDBC();

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  v17 = sub_1E4188148(a1, v12);
  *(a3 + 208) = v17;
  v19 = (*(*a1 + 488))(v17, v18);

  if (v19 && (v21 = sub_1E373E010(67, v19), result = , v21))
  {

    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  *(a3 + 224) = v22;
  return result;
}

void sub_1E3D0475C()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v23 = v5;
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37640);
  OUTLINED_FUNCTION_0_10();
  v22 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37648);
  OUTLINED_FUNCTION_0_10();
  v25 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  sub_1E3D04A3C();
  sub_1E4202474();
  sub_1E3D04D00();
  sub_1E4203224();
  (*(v23 + 8))(v8, v24);
  sub_1E325F6F0(v2, &qword_1ECF37638);
  v16 = *(v0 + 208);
  OUTLINED_FUNCTION_15_10();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4187EA8(v16, v10, OpaqueTypeConformance2);
  (*(v22 + 8))(v3, v10);
  v18 = *(v0 + 216);
  OUTLINED_FUNCTION_3_8();
  v19 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_78_0();
  v20 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  LOBYTE(OpaqueTypeConformance2) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_78_0();
  v21 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v18, v20 & 1, OpaqueTypeConformance2 & 1, 0, v21 & 1, v13, v19);
  (*(v25 + 8))(v1, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D04A3C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376A8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37670);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_36();
  if ((*(v9 + 1920))())
  {
    sub_1E3D04F88();
    sub_1E3743538(v2, v0, &qword_1ECF37670);
    swift_storeEnumTagMultiPayload();
    sub_1E3D04E88();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37698);
    OUTLINED_FUNCTION_15_108();
    sub_1E328FCF4(v10, &qword_1ECF37698);
    OUTLINED_FUNCTION_21_76();
    OUTLINED_FUNCTION_15_45();
    sub_1E4201F44();
    sub_1E325F6F0(v2, &qword_1ECF37670);
  }

  else
  {
    sub_1E3D052F4();
    (*(v5 + 16))(v0, v1, v3);
    swift_storeEnumTagMultiPayload();
    sub_1E3D04E88();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37698);
    OUTLINED_FUNCTION_15_108();
    sub_1E328FCF4(v11, &qword_1ECF37698);
    OUTLINED_FUNCTION_21_76();
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
    (*(v5 + 8))(v1, v3);
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3D04D00()
{
  result = qword_1ECF37650;
  if (!qword_1ECF37650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37638);
    sub_1E3D04D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37650);
  }

  return result;
}

unint64_t sub_1E3D04D84()
{
  result = qword_1ECF37658;
  if (!qword_1ECF37658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37660);
    sub_1E3D04E88();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37698);
    sub_1E328FCF4(&qword_1ECF376A0, &qword_1ECF37698);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37658);
  }

  return result;
}

unint64_t sub_1E3D04E88()
{
  result = qword_1ECF37668;
  if (!qword_1ECF37668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37670);
    sub_1E328FCF4(&qword_1ECF37678, &qword_1ECF37680);
    sub_1E328FCF4(&qword_1ECF37688, &qword_1ECF37690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37668);
  }

  return result;
}

void sub_1E3D04F88()
{
  OUTLINED_FUNCTION_93();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37690);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37680);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_5();
  v5 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_8();
  (*(v12 + 176))(&v28);
  type metadata accessor for EditorialLockup();
  sub_1E3746E10(v11);
  v13 = sub_1E3B02B0C();
  (*(v7 + 8))(v11, v5);
  if (v13)
  {
    *v1 = sub_1E4201D54();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376C8);
    sub_1E3D06CB8();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v14, v15, v16);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_21_1();
    sub_1E328FCF4(v17, v18);
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
    *v0 = sub_1E4201B84();
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376C0);
    sub_1E3D07954();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v21, v22, v23);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v24, v25);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
  }

  sub_1E328FCF4(v19, v20);
  OUTLINED_FUNCTION_75();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v26, v27);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D052F4()
{
  OUTLINED_FUNCTION_93();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37698);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  v4 = *v0;
  memcpy(v11, v0 + 1, 0xC3uLL);

  sub_1E375C1CC(v11, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377B8);
  sub_1E3D084F0();
  sub_1E390F194(v4, v11, 1, sub_1E3D084CC, v1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 552))(v9);
  if (v10)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *v9;
  }

  OUTLINED_FUNCTION_15_108();
  v8 = sub_1E328FCF4(v7, &qword_1ECF37698);
  sub_1E391F8C0(v2, v8, v6);
  sub_1E325F6F0(v1, &qword_1ECF37698);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3D054B0()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EditorialLockupLayout();
      if (v2 <= 0x3F)
      {
        sub_1E38D5D68();
        if (v3 <= 0x3F)
        {
          sub_1E3BFC284();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3D0558C()
{
  OUTLINED_FUNCTION_21_5();
  v33 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37800);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_31_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  *v4 = sub_1E4201D54();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37808);
  sub_1E3D0592C();
  sub_1E4202764();
  OUTLINED_FUNCTION_8();
  v13 = *(v12 + 176);
  v13(v34);
  if ((v35 & 1) == 0)
  {
    v16.n128_u64[0] = v34[2];
    v17.n128_u64[0] = v34[3];
    v14.n128_u64[0] = v34[0];
    v15.n128_u64[0] = v34[1];
    j_nullsub_1(v14, v15, v16, v17);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v4, v3, &qword_1ECF37800);
  OUTLINED_FUNCTION_33_52();
  v18 = sub_1E4202784();
  v13(v36);
  if ((v37 & 1) == 0)
  {
    v21.n128_u64[0] = v36[2];
    v22.n128_u64[0] = v36[3];
    v19.n128_u64[0] = v36[0];
    v20.n128_u64[0] = v36[1];
    j_nullsub_1(v19, v20, v21, v22);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v3, v2, &qword_1ECF377F0);
  v23 = (v2 + *(v9 + 36));
  *v23 = v18;
  OUTLINED_FUNCTION_11_4(v23);
  v24 = sub_1E4202754();
  v13(v38);
  if ((v39 & 1) == 0)
  {
    v27.n128_u64[0] = v38[2];
    v28.n128_u64[0] = v38[3];
    v25.n128_u64[0] = v38[0];
    v26.n128_u64[0] = v38[1];
    j_nullsub_1(v25, v26, v27, v28);
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v1, &qword_1ECF377E0);
  v29 = (v1 + *(v32 + 36));
  *v29 = v24;
  OUTLINED_FUNCTION_11_4(v29);
  if (!*(v0 + 192) || (type metadata accessor for ViewModel(), sub_1E3D08830(&qword_1EE23BA60, type metadata accessor for ViewModel), , OUTLINED_FUNCTION_18_5(), v30 = sub_1E4205E84(), , v31 = 0.0, (v30 & 1) == 0))
  {
    v31 = 1.0;
  }

  sub_1E3741EA0(v1, v33, &qword_1ECF377D0);
  *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377B8) + 36)) = v31;
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3D0592C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v187 = v2;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37810);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v186 = v4;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37818);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v168 = v6;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37820);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v175 = v8;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37828);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v169 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37700);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v166 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v167 = v15;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v165 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v179 = v19;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37830);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v173 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37838);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v184 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v192 = v26;
  v189 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v193 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v177 = v33;
  v178 = v32;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_5();
  v171 = v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v159 - v36;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_5();
  v164 = v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v159 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29880);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_5();
  v163 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  v162 = &v159 - v47;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v159 - v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_78();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29848);
  v53 = OUTLINED_FUNCTION_17_2(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_5();
  v181 = v54;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v55);
  v180 = &v159 - v56;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v57);
  v191 = &v159 - v58;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_25_3();
  v190 = v60;
  v188 = v1;
  v61 = sub_1E39C408C(23);
  if (!v61)
  {
    goto LABEL_7;
  }

  if (*v61 != _TtC8VideosUI13TextViewModel)
  {

LABEL_7:
    v74 = 1;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  HIDWORD(v161) = sub_1E4202754();
  OUTLINED_FUNCTION_36();
  (*(v62 + 1776))();
  OUTLINED_FUNCTION_30();
  (*(v63 + 152))(v194);

  v64 = 0uLL;
  v65 = 0uLL;
  if ((v195 & 1) == 0)
  {
    sub_1E4200A54();
    *(&v65 + 1) = v66;
    *(&v64 + 1) = v67;
  }

  v159 = v65;
  v160 = v64;
  (*(v177 + 32))(v42, v37, v178);
  OUTLINED_FUNCTION_32_59(&v42[*(v170 + 36)]);
  OUTLINED_FUNCTION_19_5();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_92_1();

  sub_1E3741EA0(v42, v50, &qword_1ECF28CC0);
  memcpy(&v50[*(v43 + 36)], v196, 0x70uLL);
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v68, v69, v70);
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v71, v72, v73);
  v74 = 0;
LABEL_8:
  v75 = 1;
  __swift_storeEnumTagSinglePayload(v190, v74, 1, v43);
  v76 = sub_1E39C408C(15);
  v77 = v188;
  v79 = v192;
  v78 = v193;
  if (v76)
  {
    if (*v76 == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      HIDWORD(v161) = sub_1E4202754();
      OUTLINED_FUNCTION_36();
      (*(v80 + 1800))();
      OUTLINED_FUNCTION_30();
      (*(v81 + 152))(v197);

      v82 = 0uLL;
      v83 = 0uLL;
      if ((v198 & 1) == 0)
      {
        sub_1E4200A54();
        *(&v83 + 1) = v84;
        *(&v82 + 1) = v85;
      }

      v159 = v83;
      v160 = v82;
      v86 = v164;
      (*(v177 + 32))(v164, v171, v178);
      OUTLINED_FUNCTION_32_59(v86 + *(v170 + 36));
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_23_3();
      OUTLINED_FUNCTION_92_1();

      v87 = v86;
      v88 = v163;
      sub_1E3741EA0(v87, v163, &qword_1ECF28CC0);
      memcpy((v88 + *(v43 + 36)), v199, 0x70uLL);
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v89, v90, v91);
      OUTLINED_FUNCTION_18_5();
      sub_1E3741EA0(v92, v93, v94);
      v75 = 0;
    }

    else
    {
    }
  }

  __swift_storeEnumTagSinglePayload(v191, v75, 1, v43);
  v95 = *(type metadata accessor for EditorialLockup() + 36);
  sub_1E3746E10(v31);
  LODWORD(v178) = sub_1E3B02B0C();
  v96 = *(v78 + 8);
  v97 = v189;
  v96(v31, v189);
  v98 = sub_1E39C408C(67);
  v193 = v78 + 8;
  v177 = v95;
  if (v98)
  {

    sub_1E3746E10(v31);
    v99 = sub_1E3B02B0C();
    v96(v31, v97);
    if (v99)
    {
      v100 = v179;
      sub_1E3D0676C(v179);
      v101 = v167;
      sub_1E3D06840();
      v102 = v165;
      sub_1E3743538(v100, v165, &qword_1ECF29600);
      v103 = v166;
      sub_1E3743538(v101, v166, &qword_1ECF37700);
      v104 = v169;
      sub_1E3743538(v102, v169, &qword_1ECF29600);
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37868);
      sub_1E3743538(v103, v104 + *(v105 + 48), &qword_1ECF37700);
      sub_1E325F6F0(v103, &qword_1ECF37700);
      v106 = OUTLINED_FUNCTION_75();
      sub_1E325F6F0(v106, v107);
      sub_1E3743538(v104, v175, &qword_1ECF37828);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_1();
      sub_1E328FCF4(v108, &qword_1ECF37828);
      OUTLINED_FUNCTION_9_0();
      sub_1E328FCF4(v109, v110);
      v79 = v192;
      sub_1E4201F44();
      sub_1E325F6F0(v104, &qword_1ECF37828);
      sub_1E325F6F0(v101, &qword_1ECF37700);
      v111 = v179;
      v112 = &qword_1ECF29600;
    }

    else
    {
      v116 = sub_1E4201B84();
      v117 = v168;
      *v168 = v116;
      v117[1] = 0;
      *(v117 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37860);
      sub_1E3D06B18(v77, v118, v119, v120, v121, v122, v123, v124, v159, *(&v159 + 1), v160, *(&v160 + 1), v161, v162, v163, v164, v165, v166, v167, v168);
      sub_1E3743538(v117, v175, &qword_1ECF37818);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_1();
      sub_1E328FCF4(v125, v126);
      OUTLINED_FUNCTION_9_0();
      sub_1E328FCF4(v127, &qword_1ECF37818);
      sub_1E4201F44();
      v111 = v117;
      v112 = &qword_1ECF37818;
    }

    sub_1E325F6F0(v111, v112);
    OUTLINED_FUNCTION_38_2();
    sub_1E3743538(v128, v129, v130);
  }

  else
  {
    sub_1E3D0676C(v179);
    OUTLINED_FUNCTION_38_2();
    sub_1E3743538(v113, v114, v115);
  }

  swift_storeEnumTagMultiPayload();
  sub_1E3D0874C();
  sub_1E3BFC99C();
  sub_1E4201F44();
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v131, v132);
  sub_1E3746E10(v31);
  LODWORD(v188) = sub_1E3B02B0C();
  v96(v31, v189);
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v133, v134, v135);
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v136, v137, v138);
  v139 = v79;
  v140 = v184;
  sub_1E3743538(v139, v184, &qword_1ECF37838);
  v141 = v187;
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v142, v143, v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37858);
  OUTLINED_FUNCTION_38_2();
  sub_1E3743538(v146, v147, v148);
  v149 = v141 + v145[16];
  *v149 = 0;
  *(v149 + 8) = 0;
  *(v149 + 9) = v178 & 1;
  sub_1E3743538(v140, v141 + v145[20], &qword_1ECF37838);
  v150 = v141 + v145[24];
  *v150 = 0;
  *(v150 + 8) = 0;
  *(v150 + 9) = (v188 & 1) == 0;
  sub_1E325F6F0(v192, &qword_1ECF37838);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v151, v152);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v153, v154);
  sub_1E325F6F0(v140, &qword_1ECF37838);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v155, v156);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F6F0(v157, v158);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D0676C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = sub_1E39C408C(96);
  if (v7)
  {
    sub_1E413D6F4(v7, v6);
    sub_1E3C75118(v6, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

void sub_1E3D06840()
{
  OUTLINED_FUNCTION_93();
  v1 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = *v0;
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 1872);

  v12 = v10(v11);
  sub_1E397F070(v8, v12, v22);
  type metadata accessor for EditorialLockup();
  sub_1E3746E10(v7);
  LOBYTE(v8) = sub_1E3B02B0C();
  (*(v3 + 8))(v7, v1);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF350B0);
    sub_1E4200CE4();
  }

  sub_1E4203DA4();
  sub_1E4200D94();
  *v21 = v22[0];
  *&v21[16] = v22[1];
  v21[32] = v23;
  if (*(v0 + 224))
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  memcpy(v20, v21, 0x58uLL);
  LOBYTE(v20[11]) = 0;
  *&v20[12] = v13;
  v14 = [objc_opt_self() sharedInstance];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1E3741090(1163022157, 0xE400000000000000, v14);
    v18 = v17;

    if (v18)
    {
      v19[0] = v16;
      v19[1] = v18;
      sub_1E32822E0();
      sub_1E42071D4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37728);
    sub_1E3D082FC();
    sub_1E32822E0();
    sub_1E4203114();

    memcpy(v19, v20, sizeof(v19));
    sub_1E325F6F0(v19, &qword_1ECF37728);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3D06B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37700);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  sub_1E3D0676C(&a9 - v38);
  sub_1E3D06840();
  sub_1E3743538(v39, v36, &qword_1ECF29600);
  OUTLINED_FUNCTION_15_45();
  sub_1E3743538(v40, v41, v42);
  sub_1E3743538(v36, v23, &qword_1ECF29600);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37870);
  OUTLINED_FUNCTION_29_66(v43);
  OUTLINED_FUNCTION_109_0(v31);
  sub_1E325F6F0(v39, &qword_1ECF29600);
  OUTLINED_FUNCTION_109_0(v28);
  sub_1E325F6F0(v36, &qword_1ECF29600);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D06CB8()
{
  OUTLINED_FUNCTION_21_5();
  v31 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376D0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376E8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376F0);
  sub_1E3D07044(v2 + *(v19 + 44));
  v20 = sub_1E4202744();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v20)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v2, v1, &qword_1ECF376D0);
  OUTLINED_FUNCTION_33_52();
  v21 = sub_1E4202754();
  v22 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v21)
  {
    v22 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v0, &qword_1ECF376D8);
  v23 = (v0 + *(v7 + 36));
  *v23 = v22;
  OUTLINED_FUNCTION_11_4(v23);
  sub_1E4203D84();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_30_8();
  sub_1E3741EA0(v0, v15, &qword_1ECF376E0);
  memcpy(&v15[*(v30 + 36)], v32, 0x70uLL);
  sub_1E3741EA0(v15, v18, &qword_1ECF376E8);
  v24 = sub_1E3FFE5B8(0, 1);
  sub_1E3743538(v18, v12, &qword_1ECF376E8);
  v25 = v31;
  OUTLINED_FUNCTION_15_45();
  sub_1E3743538(v26, v27, v28);
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF376F8) + 48)) = v24;
  sub_1E325F6F0(v18, &qword_1ECF376E8);
  sub_1E325F6F0(v12, &qword_1ECF376E8);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3D07044@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37700);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_5();
  v47 = v4;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_3();
  v43 = v6;
  v7 = type metadata accessor for StackedTextViews(0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v45 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37708) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37710);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37718);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v44 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v27 = v26;
  sub_1E3D0750C();
  *(v1 + *(v13 + 44)) = 0;
  sub_1E4202754();
  v28 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v29)
  {
    v28 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v30 + 1824))();
  OUTLINED_FUNCTION_30();
  (*(v31 + 152))(&v48);

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v18, &qword_1ECF37708);
  v32 = &v18[*(v15 + 36)];
  *v32 = v28;
  OUTLINED_FUNCTION_11_4(v32);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_19_5();
  LOBYTE(v43) = v33;
  v42 = 0;
  OUTLINED_FUNCTION_30_8();
  sub_1E3741EA0(v18, v24, &qword_1ECF37710);
  memcpy(&v24[*(v19 + 36)], __src, 0x70uLL);
  v34 = v27;
  sub_1E3741EA0(v24, v27, &qword_1ECF37718);
  sub_1E3D077EC(v12);
  v35 = v43;
  sub_1E3D06840();
  v36 = v44;
  sub_1E3743538(v34, v44, &qword_1ECF37718);
  v37 = v45;
  sub_1E38F84AC(v12, v45);
  v38 = v47;
  sub_1E3743538(v35, v47, &qword_1ECF37700);
  v39 = v46;
  sub_1E3743538(v36, v46, &qword_1ECF37718);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37720);
  sub_1E38F84AC(v37, v39 + *(v40 + 48));
  sub_1E3743538(v38, v39 + *(v40 + 64), &qword_1ECF37700);
  sub_1E325F6F0(v35, &qword_1ECF37700);
  sub_1E38F8510(v12);
  sub_1E325F6F0(v34, &qword_1ECF37718);
  sub_1E325F6F0(v38, &qword_1ECF37700);
  sub_1E38F8510(v37);
  return sub_1E325F6F0(v36, &qword_1ECF37718);
}

void sub_1E3D0750C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37758);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  if (sub_1E39C408C(39))
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      if ((*(*v10 + 392))())
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          OUTLINED_FUNCTION_8();
          v14 = (*(v13 + 1920))();
          (*(*v12 + 2240))(v14 & 1);
        }

        else
        {
        }
      }

      else
      {
        v12 = 0;
      }

      sub_1E3EB9BB4(v21);
      v20 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v11, v21, v12, v20 & 1, 0, 0, v0);
      sub_1E375C31C(v21);
      swift_getOpaqueTypeConformance2();
      sub_1E4202ED4();

      (*(v6 + 8))(v0, v4);
      sub_1E3741EA0(v1, v3, &qword_1ECF37758);
      __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1E3D077EC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E4297BD0;
  v3 = sub_1E39C408C(17);
  if (v3)
  {
    if (*v3 == _TtC8VideosUI13TextViewModel)
    {
      *(v2 + 32) = v3;
      goto LABEL_6;
    }
  }

  *(v2 + 32) = 0;
LABEL_6:
  v4 = sub_1E39C408C(23);
  if (v4)
  {
    if (*v4 == _TtC8VideosUI13TextViewModel)
    {
      *(v2 + 40) = v4;
      goto LABEL_11;
    }
  }

  *(v2 + 40) = 0;
LABEL_11:
  v5 = sub_1E39C408C(15);
  if (v5)
  {
    if (*v5 == _TtC8VideosUI13TextViewModel)
    {
      *(v2 + 48) = v5;
      goto LABEL_16;
    }
  }

  *(v2 + 48) = 0;
LABEL_16:
  v6 = sub_1E404034C(v5);
  v7 = j__OUTLINED_FUNCTION_18() & 1;

  return sub_1E403E654(v2, v6, v7, a1);
}

void sub_1E3D07954()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v49 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37760);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v50 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37708) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37710);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37768);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_49_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37770);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v51 = v4;
  sub_1E3D0750C();
  *(v2 + *(v10 + 44)) = 0;
  sub_1E4202784();
  v22 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v23)
  {
    v22 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  (*(v24 + 1824))();
  OUTLINED_FUNCTION_30();
  (*(v25 + 152))(&v52);

  sub_1E4200A54();
  OUTLINED_FUNCTION_5_23();
  sub_1E3741EA0(v2, v15, &qword_1ECF37708);
  v26 = &v15[*(v12 + 36)];
  *v26 = v22;
  OUTLINED_FUNCTION_32_15(v26);
  sub_1E4202744();
  v27 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v23)
  {
    v27 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_5_23();
  sub_1E3741EA0(v15, v1, &qword_1ECF37710);
  v28 = (v1 + *(v47 + 36));
  *v28 = v27;
  OUTLINED_FUNCTION_32_15(v28);
  sub_1E4202754();
  v29 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v23)
  {
    v29 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_5_23();
  sub_1E3741EA0(v1, v20, &qword_1ECF37768);
  v30 = &v20[*(v48 + 36)];
  *v30 = v29;
  OUTLINED_FUNCTION_32_15(v30);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v31, v32, v33);
  *v0 = sub_1E4201D54();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37778);
  sub_1E3D07E00();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v34, v35, v36);
  v37 = v50;
  sub_1E3743538(v0, v50, &qword_1ECF37760);
  v38 = v49;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v39, v40, v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37780);
  sub_1E3743538(v37, v38 + *(v42 + 48), &qword_1ECF37760);
  sub_1E325F6F0(v0, &qword_1ECF37760);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v43, v44);
  sub_1E325F6F0(v37, &qword_1ECF37760);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v45, v46);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3D07E00()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37788);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37790);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37798);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39[-1] - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78();
  v22 = sub_1E4201B84();
  OUTLINED_FUNCTION_36();
  (*(v23 + 1872))();
  OUTLINED_FUNCTION_30();
  (*(v24 + 152))(v39);

  v25 = v39[1];
  if (v40)
  {
    v25 = 0;
  }

  *v2 = v22;
  *(v2 + 8) = v25;
  *(v2 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377A0);
  sub_1E3D08188(v2 + *(v26 + 44));
  v27 = sub_1E4202744();
  v28 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v27)
  {
    v28 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v2, v1, &qword_1ECF37788);
  v29 = v1 + *(v12 + 36);
  *v29 = v28;
  *(v29 + 8) = v7;
  *(v29 + 16) = v3;
  *(v29 + 24) = v4;
  *(v29 + 32) = v5;
  *(v29 + 40) = 0;
  v30 = sub_1E4202754();
  v31 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v30)
  {
    v31 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v20, &qword_1ECF37790);
  v32 = &v20[*(v38 + 36)];
  *v32 = v31;
  OUTLINED_FUNCTION_11_4(v32);
  sub_1E3741EA0(v20, v0, &qword_1ECF37798);
  v33 = sub_1E3FFE5B8(0, 1);
  sub_1E3743538(v0, v17, &qword_1ECF37798);
  *v9 = 0;
  *(v9 + 8) = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377A8);
  sub_1E3743538(v17, v9 + v34[12], &qword_1ECF37798);
  v35 = v9 + v34[16];
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v9 + v34[20]) = v33;
  v36 = OUTLINED_FUNCTION_78_0();
  sub_1E325F6F0(v36, v37);
  sub_1E325F6F0(v17, &qword_1ECF37798);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3D08188@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37700);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for StackedTextViews(0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  sub_1E3D077EC(&v23 - v16);
  sub_1E3D06840();
  sub_1E38F84AC(v17, v14);
  OUTLINED_FUNCTION_15_45();
  sub_1E3743538(v18, v19, v20);
  sub_1E38F84AC(v14, a1);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF377B0);
  OUTLINED_FUNCTION_29_66(v21);
  OUTLINED_FUNCTION_109_0(v9);
  sub_1E38F8510(v17);
  OUTLINED_FUNCTION_109_0(v6);
  return sub_1E38F8510(v14);
}

unint64_t sub_1E3D082FC()
{
  result = qword_1ECF37730;
  if (!qword_1ECF37730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37728);
    sub_1E3D08388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37730);
  }

  return result;
}

unint64_t sub_1E3D08388()
{
  result = qword_1ECF37738;
  if (!qword_1ECF37738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37740);
    sub_1E3D08440();
    sub_1E328FCF4(&qword_1EE2889E0, &qword_1ECF2C5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37738);
  }

  return result;
}

unint64_t sub_1E3D08440()
{
  result = qword_1ECF37748;
  if (!qword_1ECF37748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37750);
    sub_1E3880454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37748);
  }

  return result;
}

unint64_t sub_1E3D084F0()
{
  result = qword_1ECF377C0;
  if (!qword_1ECF377C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF377B8);
    sub_1E3D0857C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF377C0);
  }

  return result;
}

unint64_t sub_1E3D0857C()
{
  result = qword_1ECF377C8;
  if (!qword_1ECF377C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF377D0);
    sub_1E3D08608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF377C8);
  }

  return result;
}

unint64_t sub_1E3D08608()
{
  result = qword_1ECF377D8;
  if (!qword_1ECF377D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF377E0);
    sub_1E3D08694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF377D8);
  }

  return result;
}

unint64_t sub_1E3D08694()
{
  result = qword_1ECF377E8;
  if (!qword_1ECF377E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF377F0);
    sub_1E328FCF4(&qword_1ECF377F8, &qword_1ECF37800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF377E8);
  }

  return result;
}

unint64_t sub_1E3D0874C()
{
  result = qword_1ECF37840;
  if (!qword_1ECF37840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37830);
    sub_1E328FCF4(&qword_1ECF37848, &qword_1ECF37828);
    sub_1E328FCF4(&qword_1ECF37850, &qword_1ECF37818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37840);
  }

  return result;
}

uint64_t sub_1E3D08830(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_59@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 36);
  v4 = *(v1 + 16);
  *(a1 + 24) = *v1;
  *(a1 + 8) = v4;
  *(a1 + 40) = v2 & 1;

  return sub_1E4203DB4();
}

uint64_t sub_1E3D088A0()
{
  v1 = v0;
  while (1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    v2 = [v1 nextResponder];

    v1 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return result;
  }

  return 0;
}

void sub_1E3D0894C(void *a1, void *a2)
{
  v5 = *&v2[*a2];
  *&v2[*a2] = a1;
  v3 = *&v2[*a2];
  v4 = a1;
  [v2 vui:v3 addSubview:v5 oldView:?];
}

id sub_1E3D089CC()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_166(&OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageView);
  v7 = type metadata accessor for DownloadStateIndicatorView();
  v14.receiver = v0;
  v14.super_class = v7;
  result = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (__OFADD__(qword_1EE295C48, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EE295C48;
    v9 = result;
    v10 = sub_1E324FBDC();
    (*(v3 + 16))(v6, v10, v1);
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = qword_1EE295C48;
      _os_log_impl(&dword_1E323F000, v11, v12, "DownloadStateIndicatorView::init activeItemCount = %ld", v13, 0xCu);
      MEMORY[0x1E69143B0](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v1);
    return v9;
  }

  return result;
}

void sub_1E3D08BD4()
{
  OUTLINED_FUNCTION_2_166(&OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageView);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3D08C5C()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(qword_1EE295C48, 1))
  {
    __break(1u);
  }

  else
  {
    --qword_1EE295C48;
    v8 = sub_1E324FBDC();
    (*(v4 + 16))(v7, v8, v2);
    v9 = sub_1E41FFC94();
    v10 = sub_1E42067E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = qword_1EE295C48;
      _os_log_impl(&dword_1E323F000, v9, v10, "DownloadStateIndicatorView::deinit itemCount = %ld", v11, 0xCu);
      MEMORY[0x1E69143B0](v11, -1, -1);
    }

    (*(v4 + 8))(v7, v2);
    v12 = type metadata accessor for DownloadStateIndicatorView();
    v13.receiver = v1;
    v13.super_class = v12;
    objc_msgSendSuper2(&v13, sel_dealloc);
  }
}

char *sub_1E3D08E94(__objc2_class **a1, uint64_t a2, char *a3)
{
  if (*a1 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
  {
    return 0;
  }

  if (a3)
  {

    v6 = a3;
  }

  else
  {
    v7 = objc_allocWithZone(type metadata accessor for DownloadStateIndicatorView());

    v6 = [v7 init];
  }

  v8 = a3;
  sub_1E3D09424(a1);

  *&v6[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_preferredLayout] = a2;

  return v6;
}

void sub_1E3D08F78()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_preferredLayout);
  if (!v2)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_viewModel);
    if (v2)
    {
      v6 = *(*v2 + 392);

      v8 = v6(v7);

      if (v8)
      {
        type metadata accessor for DownloadStateIndicatorLayout();
        v2 = swift_dynamicCastClass();
        if (!v2)
        {
        }
      }

      else
      {
        v2 = 0;
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageView))
  {

    v3 = OUTLINED_FUNCTION_6_12();
    [v4 v5];
    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v2)
  {
LABEL_10:
    v9 = *(*v2 + 1728);

    v11 = v9(v10);

    (*(*v11 + 224))(v12);

    v13 = *(*v2 + 1728);

    v15 = v13(v14);

    (*(*v15 + 328))(v16);
  }

LABEL_11:
  OUTLINED_FUNCTION_6_12();
}

void sub_1E3D091F0(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_hasVisibleState) == 1)
  {
    if (a1)
    {
      v2 = OUTLINED_FUNCTION_6_12();
      v3(v2);
    }

    else
    {
      v4 = *(v1 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageView);
      if (v4)
      {
        v5 = v4;
        OUTLINED_FUNCTION_5_150();
        [v5 setFrame_];
      }

      OUTLINED_FUNCTION_5_150();
      Width = CGRectGetWidth(v12);
      OUTLINED_FUNCTION_5_150();
      Height = CGRectGetHeight(v13);
      v8 = *(v1 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_progressView);
      if (v8)
      {
        if (Height >= Width)
        {
          Height = Width;
        }

        v9 = Height + -2.0;
        v10 = v8;
        OUTLINED_FUNCTION_5_150();
        v11 = (CGRectGetWidth(v14) - v9) * 0.5;
        OUTLINED_FUNCTION_5_150();
        [v10 setFrame_];
      }

      OUTLINED_FUNCTION_6_12();
    }
  }
}

void sub_1E3D093A4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_viewModel);
  if (v2)
  {
    v3 = v2 == a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    sub_1E3D09424(a1);
  }
}

uint64_t sub_1E3D093C4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_viewModel) = 0;

  *(v0 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageObserver) = 0;

  *(v0 + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_progressObserver) = 0;
}

void sub_1E3D09424(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30);
  OUTLINED_FUNCTION_0_10();
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37878);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageObserver;
  *&v1[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageObserver] = 0;

  v14 = OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_progressObserver;
  *&v1[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_progressObserver] = 0;

  *&v1[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_viewModel] = a1;

  sub_1E4172E90();
  sub_1E4172FD4();
  v15 = OUTLINED_FUNCTION_4_171();
  sub_1E3D09790(v15, v16, v17, 1);

  sub_1E4172FB8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E3C85ECC(&unk_1EE28A100, &qword_1ECF37878);
  sub_1E4200844();
  OUTLINED_FUNCTION_16_6();
  (*(v9 + 8))(v12, v7);
  *&v1[v13] = v12;

  v18 = v26;
  sub_1E4173100();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E3C85ECC(&qword_1EE28A110, &qword_1ECF35A30);
  v19 = v27;
  sub_1E4200844();
  OUTLINED_FUNCTION_16_6();
  (*(v28 + 8))(v18, v19);
  *&v1[v14] = v18;

  (*(*a1 + 320))(v20);
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  v22 = v21;
  v24 = v23;

  sub_1E38E89A0(v22, v24, v2);
}

void sub_1E3D09790(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  [v4 setVuiClipsToBounds_];
  v8 = OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageView;
  if (!*&v4[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_imageView])
  {
    goto LABEL_12;
  }

  if (*&v4[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_viewModel])
  {

    v9 = sub_1E4172E90();

    if (a1)
    {
      if (!v9)
      {
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
      if (v9 != a1)
      {
        goto LABEL_12;
      }
    }

    else if (v9)
    {
      swift_unknownObjectRelease();
      type metadata accessor for UIFactory();
      a1 = 0;
      goto LABEL_13;
    }

LABEL_11:
    if ((a4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_11;
  }

LABEL_12:
  type metadata accessor for UIFactory();
LABEL_13:
  v10 = *&v5[v8];
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1E3D09CE8();
  v11 = v10;
  v12 = sub_1E393D92C(a1, v10, v49, 0);

  sub_1E373C624(v49);
  sub_1E3D08934(v12);
  v13 = *&v5[v8];
  if (v13)
  {
    [v13 setVuiContentMode_];
  }

LABEL_15:
  v14 = OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_viewModel;
  if (*&v5[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_viewModel])
  {

    v15 = sub_1E4173808();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1E3AF9DBC(v15, &unk_1F5D7FBE0);
  v17 = *&v5[v8];
  if (v17)
  {
    [v17 setHidden_];
  }

  v18 = OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_progressView;
  v19 = *&v5[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_progressView];
  if (v19)
  {
    goto LABEL_46;
  }

  v20 = *&v5[v14];
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = *(*v20 + 392);

  v21(v22);
  OUTLINED_FUNCTION_16_6();
  type metadata accessor for DownloadStateIndicatorLayout();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
  }

  v23 = *&v5[v18];
  if (v23)
  {
    v24 = *&v5[v18];
  }

  else
  {
LABEL_26:
    v24 = [objc_allocWithZone(VUICircularProgress) init];
    v23 = 0;
  }

  v25 = objc_opt_self();
  v26 = v24;
  v27 = v23;
  v28 = [v25 clearColor];
  [v26 setVuiBackgroundColor_];

  v29 = OUTLINED_FUNCTION_4_171();
  [v29 v30];
  [v26 setProgressWidth_];
  [v26 setCenterSquareWidth_];
  v31 = OUTLINED_FUNCTION_4_171();
  [v31 v32];
  v33 = OUTLINED_FUNCTION_4_171();
  [v33 v34];
  v35 = sub_1E3E60700();
  [v26 setVuiTintColor_];

  if (v20)
  {
    v36 = *(*v20 + 1704);

    v38 = v20;
    v36(v37);
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
    v38 = *v35;
  }

  [v26 setProgressFillColor_];

  [v26 setProgressBgColor_];
  v39 = OUTLINED_FUNCTION_4_171();
  [v39 v40];
  v41 = v26;
  sub_1E3D08940(v26);

  v19 = *&v5[v18];
  if (v19)
  {
LABEL_46:
    [v19 setHidden_];
    v42 = *&v5[v18];
    if (v42)
    {
      if (!v16)
      {
        goto LABEL_36;
      }

      if ((a3 & 1) == 0)
      {
        v44 = *&a2;
        v43 = v42;
        goto LABEL_38;
      }

      if (*&v5[v14])
      {
        v43 = v42;

        v44 = sub_1E4172FD4();
      }

      else
      {
LABEL_36:
        v43 = v42;
        v44 = 0.0;
      }

LABEL_38:
      [v43 setProgress_];
    }
  }

  if (*&v5[v14])
  {

    v45 = sub_1E4173898();
  }

  else
  {
    v45 = 0;
  }

  [v5 setHidden_];
  if (((v45 & 1) == 0) == v5[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_hasVisibleState])
  {
    v5[OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_hasVisibleState] = v45 & 1;
    [v5 vui_setNeedsLayout];
    v46 = [v5 superview];
    [v46 vui_setNeedsLayout];
  }
}

unint64_t sub_1E3D09CE8()
{
  result = qword_1EE23B360;
  if (!qword_1EE23B360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B360);
  }

  return result;
}

void sub_1E3D09D2C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1E3D09790(v1, 0, 1, 0);
  }
}

uint64_t sub_1E3D09D90(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = Strong;
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC8VideosUI26DownloadStateIndicatorView_viewModel);

      if (v6)
      {
        v5 = sub_1E4172E90();
      }

      else
      {
        v5 = 0;
      }
    }

    sub_1E3D09790(v5, v1, 0, 0);
  }

  return result;
}