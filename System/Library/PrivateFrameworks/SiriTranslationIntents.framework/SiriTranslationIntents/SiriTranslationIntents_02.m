uint64_t sub_2693F8AC4()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0[5];
  v1 = v0[6];

  OUTLINED_FUNCTION_4_6();
  v4 = v0[9];

  return v3();
}

void sub_2693F8B28()
{
  OUTLINED_FUNCTION_17_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v8);
  v65 = &v59 - v9;
  sub_269423EE8();

  v62 = v4;
  sub_269423ED8();
  v10 = sub_269423228();

  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = sub_2693FD0F8(v10);
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + 16);
    if (!v13)
    {

      v36 = MEMORY[0x277D84F90];
LABEL_17:
      v70 = v36;
      if (!sub_26941C9D4(v36))
      {
        v37 = sub_269423E68();
        OUTLINED_FUNCTION_10_2(v37);
        sub_269423E58();
        OUTLINED_FUNCTION_10_6();
        sub_269423D78();
        v38 = sub_269423DA8();
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
        sub_269423E38();

        OUTLINED_FUNCTION_47_0();
        sub_2693FD518(v42, v43, v44);
        OUTLINED_FUNCTION_10_6();
        sub_269423D78();
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v45, v46, v47, v38);
        sub_269423E28();

        OUTLINED_FUNCTION_47_0();
        sub_2693FD518(v48, v49, v50);
        sub_269423E48();

        MEMORY[0x26D63BE10](v51);
        OUTLINED_FUNCTION_89();
        if (v52)
        {
LABEL_27:
          OUTLINED_FUNCTION_32_1(v19);
          sub_2694242A8();
        }

        sub_2694242C8();
      }

      v53 = sub_269423D48();
      OUTLINED_FUNCTION_10_2(v53);
      sub_269423D38();
      v54 = v65;
      sub_269424168();

      sub_269423DA8();
      OUTLINED_FUNCTION_11_4();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
      sub_269423D28();

      sub_2693FD518(v54, &qword_28030F610, &qword_269425760);
      sub_269423D18();

      sub_269423D58();

      goto LABEL_21;
    }

    v59 = v2;
    v60 = v10;
    v61 = v0;
    v70 = MEMORY[0x277D84F90];
    sub_269424518();
    v15 = sub_2693FD170(v12);
    v16 = v12 + 64;
    v17 = v13 - 1;
    v63 = v12 + 64;
    v64 = v12;
    v18 = v65;
    if ((v15 & 0x8000000000000000) == 0)
    {
      while (v15 < 1 << *(v12 + 32))
      {
        v19 = *(v16 + 8 * (v15 >> 6));
        if ((v19 & (1 << v15)) == 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v19 = *(v12 + 36);
        if (v14 != v19)
        {
          goto LABEL_23;
        }

        v67 = v14;
        v68 = v15 >> 6;
        v66 = v17;
        v20 = *(v12 + 56);
        v21 = (*(v12 + 48) + 16 * v15);
        v22 = *v21;
        v23 = v21[1];
        v24 = (v20 + 16 * v15);
        v25 = v24[1];
        v69 = *v24;
        v26 = sub_269423E68();
        OUTLINED_FUNCTION_10_2(v26);

        sub_269423E58();
        OUTLINED_FUNCTION_91();
        sub_269424168();
        v27 = sub_269423DA8();
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
        v10 = sub_269423E38();

        sub_2693FD518(v18, &qword_28030F610, &qword_269425760);
        sub_269424168();
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v31, v32, v33, v27);
        sub_269423E28();

        sub_2693FD518(v18, &qword_28030F610, &qword_269425760);
        sub_269423E48();

        sub_2694244F8();
        v34 = *(v70 + 16);
        sub_269424528();
        v12 = v64;
        sub_269424538();
        sub_269424508();
        v19 = -1 << *(v12 + 32);
        if (v15 >= -v19)
        {
          goto LABEL_24;
        }

        v16 = v63;
        if ((*(v63 + 8 * v68) & (1 << v15)) == 0)
        {
          goto LABEL_25;
        }

        if (v67 != *(v12 + 36))
        {
          goto LABEL_26;
        }

        v35 = sub_269424488();
        if (!v66)
        {

          v36 = v70;
          v10 = v60;
          goto LABEL_17;
        }

        v15 = v35;
        v14 = *(v12 + 36);
        v17 = v66 - 1;
        if (v35 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_14:

LABEL_21:
    OUTLINED_FUNCTION_16_3();
    return;
  }

  __break(1u);
}

uint64_t sub_2693F9048()
{
  OUTLINED_FUNCTION_11_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_69();
  v1[5] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2693F90D8()
{
  OUTLINED_FUNCTION_23_2();
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0[3] + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v4 = sub_269423DA8();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  sub_269423D68();
  OUTLINED_FUNCTION_108();
  v0[6] = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[7] = v12;
  *v12 = v13;
  v12[1] = sub_2693F9200;
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[2];

  return sub_26940A2F0();
}

uint64_t sub_2693F9200()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_8_4();
  *v4 = v3;
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = v5[4];
  v10 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v11 = v10;
  v3[8] = v0;

  v12 = OUTLINED_FUNCTION_79();
  sub_2693FD518(v12, v13, &qword_269425760);
  sub_2693FD518(v8, &qword_28030F610, &qword_269425760);
  if (v0)
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }

  else
  {
    v18 = v3[4];
    v17 = v3[5];

    OUTLINED_FUNCTION_43_0();

    return v19();
  }
}

uint64_t sub_2693F93B0()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0[4];
  v1 = v0[5];

  OUTLINED_FUNCTION_4_6();
  v4 = v0[8];

  return v3();
}

uint64_t sub_2693F9414()
{
  OUTLINED_FUNCTION_11_0();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FCA0, &unk_269427210);
  v1[12] = v7;
  OUTLINED_FUNCTION_12_2(v7);
  v9 = *(v8 + 64);
  v1[13] = OUTLINED_FUNCTION_82();
  v10 = sub_269423DA8();
  v1[14] = v10;
  OUTLINED_FUNCTION_5_0(v10);
  v1[15] = v11;
  v13 = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_69();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v14);
  v16 = *(v15 + 64);
  v1[21] = OUTLINED_FUNCTION_69();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2693F9588()
{
  OUTLINED_FUNCTION_58();
  v2 = v0[11];
  v3 = sub_269423FA8();
  v4 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v4))
  {
    OUTLINED_FUNCTION_33_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v5);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v11 = v0[26];
  v12 = v0[14];
  v14 = v0[9];
  v13 = v0[10];

  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v12);
  sub_2693FD518(v11, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v12);
  v21 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v21 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21 || !v0[9] && v0[10] == 0xE000000000000000 || (OUTLINED_FUNCTION_27_1(), (sub_269424688() & 1) != 0))
  {
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[14];
    v25 = *(v0[11] + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    v26 = OUTLINED_FUNCTION_9_5();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    OUTLINED_FUNCTION_11_4();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v24);
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v0[27] = v32;
    *v32 = v33;
    v32[1] = sub_2693F9E88;
    v34 = v0[25];
    v35 = v0[26];
    v36 = v0[24];
    v37 = v0[6];
    goto LABEL_10;
  }

  v40 = v0[7];
  v41 = v0[8];

  OUTLINED_FUNCTION_34_1();
  v42 = sub_26940BCAC();

  OUTLINED_FUNCTION_34_1();
  v43 = sub_26940C010();
  v44 = v43;
  if (v42 == 40 || (v45 = 1, v42 != 24) && v42 != 39)
  {
    v45 = v43 == 0;
  }

  v47 = v0[9];
  v46 = v0[10];

  v48._countAndFlagsBits = v47;
  v48._object = v46;
  v49.value = TranslationLanguages.init(rawValue:)(v48).value;
  value = v49.value;
  v126 = v49.value;
  if (v42 != 40)
  {
    v52 = sub_26940BD14(v42);
    v1 = v53;
    if (value == SiriTranslationIntents_TranslationLanguages_unknownDefault)
    {
      v54 = 0;
      v51 = 0;
      if (!v53)
      {
        goto LABEL_56;
      }

      goto LABEL_37;
    }

    v55 = v52;
LABEL_25:
    v56 = TranslationLanguages.getLocaleString()();
    if (!v1)
    {
      v59 = 1;
      if (!v56._object)
      {
        goto LABEL_53;
      }

      goto LABEL_38;
    }

    if (v56._object)
    {
      if (v55 == v56._countAndFlagsBits && v1 == v56._object)
      {

        goto LABEL_53;
      }

      v58 = sub_269424688();

      if (v58)
      {
LABEL_53:
        v51 = 1;
        goto LABEL_56;
      }

      if (v42 != 40)
      {
        LOBYTE(v59) = 1;
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v54 = 1;
LABEL_37:
    v59 = v54;
LABEL_38:

    if (v42 != 40)
    {
LABEL_41:
      v60 = v126;
      v61 = sub_26940BD00(v42);
      v1 = v61;
      if ((v59 & 1) == 0)
      {
        v51 = 0;
        if (v61 != 21)
        {
          goto LABEL_56;
        }

        v64 = 0;
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (!v59)
    {
      v64 = 0;
      goto LABEL_55;
    }

LABEL_40:
    v1 = 21;
    v60 = v126;
LABEL_42:
    v62 = sub_2693D6D00(v60);
    v63 = v62;
    if (v1 == 21)
    {
      v64 = 1;
LABEL_55:
      v51 = v64;
      goto LABEL_56;
    }

    if (v62 != 21)
    {
      v65 = sub_26940C22C(v1);
      v67 = v66;
      v68 = sub_26940C22C(v63);
      v1 = v69;
      if (v65 != v68 || v67 != v69)
      {
        sub_269424688();
      }

      v51 = 1;
      goto LABEL_56;
    }

    goto LABEL_53;
  }

  if (v49.value != SiriTranslationIntents_TranslationLanguages_unknownDefault)
  {
    v1 = 0;
    v55 = 0;
    goto LABEL_25;
  }

  v51 = 0;
LABEL_56:
  v71 = v0[20];
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  if (v45)
  {
    OUTLINED_FUNCTION_13_4();
    switch(v44)
    {
      case 1:
        OUTLINED_FUNCTION_24_2();
        break;
      case 2:
        OUTLINED_FUNCTION_23_3();
        break;
      default:
        break;
    }

    v72 = v0[11];
    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();
    OUTLINED_FUNCTION_80();

    if (!v1)
    {
      if (v42 != 40)
      {
        sub_26940BD14(v42);
      }

      v73 = v0[11];
      OUTLINED_FUNCTION_27_1();
      sub_2693F66D4();
      OUTLINED_FUNCTION_80();

      if (v42 != 40)
      {
        v0[4] = sub_26940BD14(v42);
        v0[5] = v74;
        sub_2693D50A4();
        sub_269424428();
        OUTLINED_FUNCTION_80();
      }
    }

    v76 = v0[19];
    v75 = v0[20];
    v78 = v0[14];
    v77 = v0[15];
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    (*(v77 + 8))(v75, v78);
    (*(v77 + 32))(v75, v76, v78);
  }

  v79 = v0[18];
  sub_269423D98();
  v80 = sub_269423FA8();
  v81 = sub_269424368();
  v82 = os_log_type_enabled(v80, v81);
  if (v51)
  {
    if (v82)
    {
      OUTLINED_FUNCTION_33_1();
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_2693C9000, v80, v81, "Generating localized language version using locale.", v83, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v84 = v0[11];

    sub_2693D768C(v126);
    OUTLINED_FUNCTION_27_1();
    sub_2693F66D4();
    v86 = v85;

    if (!v86)
    {
      v87 = v0[10];
      v0[2] = v0[9];
      v0[3] = v87;
      sub_2693D50A4();
      sub_269424428();
    }

    v89 = v0 + 16;
    v88 = v0[16];
  }

  else
  {
    if (v82)
    {
      OUTLINED_FUNCTION_33_1();
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_2693C9000, v80, v81, "Generating unsupported language using CAT.", v90, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v89 = v0 + 17;
    v127 = v0[17];
    v91 = v0[23];
    v92 = v0[13];
    v93 = v0[14];
    v94 = v0[11];
    v95 = v0[12];
    v96 = v0[9];
    v97 = v0[10];

    v98 = *(v94 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);

    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    OUTLINED_FUNCTION_11_4();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v93);
    sub_26940A12C(v91, 0, 0xE000000000000000);
    sub_2693FD518(v91, &qword_28030F610, &qword_269425760);
    sub_269424768();
    sub_2693FD518(v92, &qword_28030FCA0, &unk_269427210);
  }

  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v102 = *v89;
  v104 = v0[21];
  v103 = v0[22];
  v105 = v0[20];
  v106 = v0[18];
  v107 = v0[14];
  v108 = v0[15];
  v109 = v0[11];
  v110 = *(v108 + 8);
  v0[29] = v110;
  v110(v106, v107);
  (*(v108 + 32))(v106, v102, v107);
  v111 = *(v109 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);
  v112 = *(v108 + 16);
  v113 = OUTLINED_FUNCTION_38_0();
  v112(v113);
  v114 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v107);
  (v112)(v104, v106, v107);
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v107);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[30] = v120;
  *v120 = v121;
  v120[1] = sub_2693FA0B4;
  v122 = v0[26];
  v124 = v0[21];
  v123 = v0[22];
  v125 = v0[6];
LABEL_10:
  OUTLINED_FUNCTION_102();

  return sub_26940AC5C();
}

uint64_t sub_2693F9E88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = v4[27];
  v6 = v4[25];
  v7 = v4[24];
  v8 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v9 = v8;
  *(v10 + 224) = v0;

  OUTLINED_FUNCTION_47_0();
  sub_2693FD518(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v14, v15, &qword_269425760);
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2693F9FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  sub_2693FD518(*(v14 + 208), &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_53_0();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FA0B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = v4[30];
  v6 = v4[22];
  v7 = v4[21];
  v8 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v9 = v8;
  *(v10 + 248) = v0;

  OUTLINED_FUNCTION_47_0();
  sub_2693FD518(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v14, v15, &qword_269425760);
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2693FA210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v16 = OUTLINED_FUNCTION_52_0();
  v15(v16);
  v17 = OUTLINED_FUNCTION_91();
  v15(v17);
  sub_2693FD518(v14, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_53_0();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FA300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  sub_2693FD518(*(v14 + 208), &qword_28030F610, &qword_269425760);
  v15 = *(v14 + 224);
  OUTLINED_FUNCTION_51_0();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FA3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v17 = OUTLINED_FUNCTION_52_0();
  v16(v17);
  v18 = OUTLINED_FUNCTION_91();
  v16(v18);
  sub_2693FD518(v14, &qword_28030F610, &qword_269425760);
  v19 = *(v15 + 248);
  OUTLINED_FUNCTION_51_0();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FA4C8()
{
  OUTLINED_FUNCTION_11_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_69();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_16_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2693FA564()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[3] + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_33_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v11 = v0[5];
  v10 = v0[6];
  v13 = v0[3];
  v12 = v0[4];

  v14 = *(v13 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);
  v15 = sub_269423DA8();
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v15);
  OUTLINED_FUNCTION_21_3();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[7] = v25;
  *v25 = v26;
  v25[1] = sub_2693FA6CC;
  v28 = v0[5];
  v27 = v0[6];
  v29 = v0[4];
  v30 = v0[2];

  return sub_26940AC5C();
}

uint64_t sub_2693FA6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_10_5();
  v13 = v12;
  OUTLINED_FUNCTION_8_4();
  *v14 = v13;
  v16 = v15[7];
  v17 = v15[6];
  v18 = v15[5];
  v19 = v15[4];
  v20 = *v11;
  OUTLINED_FUNCTION_9_0();
  *v21 = v20;
  v13[8] = v10;

  v22 = OUTLINED_FUNCTION_79();
  sub_2693FD518(v22, v23, &qword_269425760);
  sub_2693FD518(v18, &qword_28030F610, &qword_269425760);
  sub_2693FD518(v17, &qword_28030F610, &qword_269425760);
  if (v10)
  {
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_73();

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  else
  {
    v29 = v13[5];
    v28 = v13[6];
    v30 = v13[4];

    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_73();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
  }
}

uint64_t sub_2693FA884()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  OUTLINED_FUNCTION_4_6();
  v5 = v0[8];

  return v4();
}

uint64_t sub_2693FA8F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_5();
}

uint64_t sub_2693FA908()
{
  OUTLINED_FUNCTION_23_2();
  v1 = v0[3] + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_33_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v10 = v0[3];

  v11 = *(v10 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[4] = v12;
  *v12 = v13;
  v12[1] = sub_2693FAA08;
  v14 = v0[2];

  return sub_26940A828(v14);
}

uint64_t sub_2693FAA08()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;

  OUTLINED_FUNCTION_4_6();

  return v5();
}

void sub_2693FAAE8()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v27 = v2;
  v28 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v29 = MEMORY[0x277D84F90];
  if (!v1)
  {
    goto LABEL_16;
  }

  if (!(v1 >> 62))
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_16:
    OUTLINED_FUNCTION_16_3();
    return;
  }

  v10 = sub_269424588();
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v10 >= 1)
  {
    v26 = 0;
    v11 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D63C060](v11, v1);
      }

      else
      {
        v12 = *(v1 + 8 * v11 + 32);
      }

      v13 = v12;
      sub_2693FACF0();
      v15 = v14;
      sub_2693FD090(v13, &selRef_romanization);
      if (v16)
      {
        OUTLINED_FUNCTION_10_6();
        sub_269423D78();
        sub_269423DA8();
        v26 = 1;
        OUTLINED_FUNCTION_11_4();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
        v21 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization;
        OUTLINED_FUNCTION_64();
        sub_2693FD020(v9, v15 + v21);
        swift_endAccess();
        sub_2693FD518(v9, &qword_28030F610, &qword_269425760);
      }

      v22 = type metadata accessor for TranslationItem(0);
      OUTLINED_FUNCTION_10_2(v22);

      sub_2693CE900();
      MEMORY[0x26D63BE10]();
      OUTLINED_FUNCTION_89();
      if (v24)
      {
        OUTLINED_FUNCTION_32_1(v23);
        sub_2694242A8();
      }

      ++v11;
      sub_2694242C8();
    }

    while (v10 != v11);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_2693FACF0()
{
  OUTLINED_FUNCTION_17_3();
  v1 = v0;
  v99 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v6 = OUTLINED_FUNCTION_12_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_7();
  v102 = v9;
  OUTLINED_FUNCTION_21_2();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v98 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v98 - v14;
  v16 = sub_269422D18();
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_5();
  v22 = sub_2693FD090(v4, &selRef_translatedSantitizedText);
  v103 = v4;
  if (v23)
  {
    v24 = v23;
    v25 = v22;
  }

  else
  {
    v26 = sub_269405C48(v4);
    if (v27)
    {
      v25 = v26;
    }

    else
    {
      v25 = 0;
    }

    if (v27)
    {
      v24 = v27;
    }

    else
    {
      v24 = 0xE000000000000000;
    }
  }

  sub_269422D08();
  v28 = sub_269422CF8();
  v101 = v28;
  v30 = v29;
  v31 = *(v19 + 8);
  v32 = OUTLINED_FUNCTION_61();
  v33(v32);
  type metadata accessor for SpeakAction();
  swift_allocObject();
  v100 = v30;
  sub_2693CB558(v99, v1, v25, v24, v28, v30);
  v34 = objc_allocWithZone(MEMORY[0x277D5C218]);

  v35 = [v34 init];
  v36 = sub_2693FCBA8(v35, sub_2693FC57C);
  v37 = sub_2694243F8();
  v39 = v38;

  if (v39)
  {
    v40 = v37;
  }

  else
  {
    v40 = 0;
  }

  v41 = 0xE000000000000000;
  if (v39)
  {
    v41 = v39;
  }

  v98[1] = v41;
  v99 = v40;
  type metadata accessor for StopSpeakAction();
  swift_allocObject();
  v42 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  v43 = sub_2693FCBA8(v42, sub_2693FC264);
  v44 = sub_2694243F8();
  v46 = v45;

  if (v46)
  {
    v47 = v44;
  }

  else
  {
    v47 = 0;
  }

  v98[0] = v47;
  v48 = type metadata accessor for TranslationItem.Builder(0);
  OUTLINED_FUNCTION_10_2(v48);
  v49 = sub_2693CE7A4();
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v50 = sub_269423DA8();
  v51 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
  v54 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_text;
  OUTLINED_FUNCTION_35_1();
  sub_2693FD020(v15, v49 + v54);
  swift_endAccess();
  v55 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v55, v56, &qword_269425760);
  v57 = v103;
  v58 = sub_2693FD090(v103, &selRef_definition);
  OUTLINED_FUNCTION_31_1(v58, v59);
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v50);
  v63 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_definition;
  OUTLINED_FUNCTION_35_1();
  sub_2693FD020(v13, v49 + v63);
  swift_endAccess();
  v64 = OUTLINED_FUNCTION_24_1();
  sub_2693FD518(v64, v65, &qword_269425760);
  v66 = sub_2693FD090(v57, &selRef_wordType);
  OUTLINED_FUNCTION_31_1(v66, v67);
  v68 = v102;
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  OUTLINED_FUNCTION_11_4();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v50);
  v72 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_wordType;
  OUTLINED_FUNCTION_35_1();
  sub_2693FD020(v68, v49 + v72);
  swift_endAccess();
  v73 = OUTLINED_FUNCTION_24_1();
  sub_2693FD518(v73, v74, &qword_269425760);
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v75 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v50);
  v78 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_speakAction;
  OUTLINED_FUNCTION_35_1();
  sub_2693FD020(v15, v49 + v78);
  swift_endAccess();
  v79 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v79, v80, &qword_269425760);
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v81 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v50);
  v84 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_stopSpeakAction;
  OUTLINED_FUNCTION_35_1();
  sub_2693FD020(v15, v49 + v84);
  swift_endAccess();
  v85 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v85, v86, &qword_269425760);
  OUTLINED_FUNCTION_10_6();
  sub_269423D78();
  v87 = OUTLINED_FUNCTION_9_5();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v50);
  v90 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_identifier;
  OUTLINED_FUNCTION_35_1();
  sub_2693FD020(v15, v49 + v90);
  swift_endAccess();
  v91 = OUTLINED_FUNCTION_38_0();
  sub_2693FD518(v91, v92, &qword_269425760);
  sub_2693FD090(v57, &selRef_romanization);
  if (v93)
  {
    OUTLINED_FUNCTION_10_6();
    sub_269423D78();
    v94 = OUTLINED_FUNCTION_9_5();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v50);
    v97 = OBJC_IVAR____TtCC22SiriTranslationIntents15TranslationItem7Builder_romanization;
    OUTLINED_FUNCTION_35_1();
    sub_2693FD020(v15, v49 + v97);
    swift_endAccess();
    sub_2693FD518(v15, &qword_28030F610, &qword_269425760);
  }

  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693FB2A4()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 16) + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (OUTLINED_FUNCTION_15_0(v3))
  {
    OUTLINED_FUNCTION_33_1();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v4);
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v10 = *(v0 + 16);

  v11 = *__swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider), *(v10 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider + 24));
  v12 = swift_task_alloc();
  *(v0 + 24) = v12;
  *v12 = v0;
  v12[1] = sub_2693FB3B0;

  return sub_2693CD3A4(0);
}

uint64_t sub_2693FB3B0()
{
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_5();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;

  OUTLINED_FUNCTION_71();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_2693FB49C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_log;
  v2 = sub_269423FC8();
  OUTLINED_FUNCTION_4_5(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCats);

  v5 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translateCATsSimple);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_translatePatternProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents24TemplatingResultProvider_deviceState));
  return v0;
}

uint64_t sub_2693FB534()
{
  sub_2693FB49C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void static SirikitApp.== infix(_:_:)()
{
  OUTLINED_FUNCTION_17_3();
  v3 = v2;
  OUTLINED_FUNCTION_96();
  v4 = sub_269423DA8();
  v5 = OUTLINED_FUNCTION_2(v4);
  v67 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_5();
  v64 = v10 - v9;
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD38, qword_269427460) - 8);
  v12 = *(*v11 + 64);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v64 - v14;
  v16 = OUTLINED_FUNCTION_91();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  v19 = OUTLINED_FUNCTION_12_2(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_20();
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  v65 = v0;
  sub_269423D08();
  v66 = v3;
  sub_269423D08();
  v29 = v11[14];
  sub_2693FD290(v28, v15, &qword_28030F610, &qword_269425760);
  sub_2693FD290(v1, &v15[v29], &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_109(v15);
  if (v36)
  {
    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v30, v31, v32);
    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v33, v34, v35);
    OUTLINED_FUNCTION_109(&v15[v29]);
    if (v36)
    {
      sub_2693FD518(v15, &qword_28030F610, &qword_269425760);
LABEL_12:
      sub_269423CF8();
      sub_269423CF8();
      v62 = OUTLINED_FUNCTION_29();
      sub_2693FB908(v62, v63);
      OUTLINED_FUNCTION_110();

      goto LABEL_13;
    }

LABEL_9:
    sub_2693FD518(v15, &qword_28030FD38, qword_269427460);
    goto LABEL_13;
  }

  sub_2693FD290(v15, v24, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_109(&v15[v29]);
  if (v36)
  {
    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v37, v38, v39);
    OUTLINED_FUNCTION_57_0();
    sub_2693FD518(v40, v41, v42);
    v43 = *(v67 + 8);
    v44 = OUTLINED_FUNCTION_79();
    v45(v44);
    goto LABEL_9;
  }

  v46 = v67;
  v47 = v64;
  (*(v67 + 32))(v64, &v15[v29], v4);
  OUTLINED_FUNCTION_2_7();
  sub_2693FD1F4(v48, v49);
  v50 = sub_2694240F8();
  v51 = *(v46 + 8);
  v51(v47, v4);
  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v52, v53, v54);
  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v55, v56, v57);
  v58 = OUTLINED_FUNCTION_79();
  (v51)(v58);
  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v59, v60, v61);
  if (v50)
  {
    goto LABEL_12;
  }

LABEL_13:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693FB908(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_269424588();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != result)
  {
    v17 = 0;
    return v17 & 1;
  }

  if (!v5)
  {
    goto LABEL_30;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_30:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    sub_269423E78();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_269424588();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D63C060](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_21:
          MEMORY[0x26D63C060](v12 - 4, a2);
          goto LABEL_26;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v15 = *(a2 + 8 * v12);

LABEL_26:
      static SirikitLocalizedAppName.== infix(_:_:)();
      v17 = v16;

      if (v17)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2693FBAC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  static SirikitApp.== infix(_:_:)();
  return v4 & 1;
}

void static SirikitLocalizedAppName.== infix(_:_:)()
{
  OUTLINED_FUNCTION_17_3();
  v2 = v1;
  v3 = sub_269423DA8();
  v4 = OUTLINED_FUNCTION_2(v3);
  v84 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_5();
  v80 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD38, qword_269427460);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_7();
  v83 = v14;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v77[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v19 = OUTLINED_FUNCTION_12_2(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_7();
  v79 = v22;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v23);
  v81 = &v77[-v24];
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v25);
  v82 = &v77[-v26];
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_39_0();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v77[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v77[-v32];
  v34 = sub_269423E08();
  v85 = v2;
  v35 = sub_269423E08();
  v36 = v35;
  if (v34)
  {
    if (!v35)
    {

      goto LABEL_28;
    }

    sub_269423CA8();
    v37 = sub_2694243E8();

    if ((v37 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v35)
  {

    goto LABEL_28;
  }

  sub_269423E18();
  sub_269423E18();
  v38 = *(v10 + 48);
  sub_2693FD290(v33, v17, &qword_28030F610, &qword_269425760);
  sub_2693FD290(v31, &v17[v38], &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_3_0(v17);
  if (!v41)
  {
    sub_2693FD290(v17, v0, &qword_28030F610, &qword_269425760);
    OUTLINED_FUNCTION_3_0(&v17[v38]);
    if (!v41)
    {
      v45 = v84;
      v46 = &v17[v38];
      v47 = v80;
      (*(v84 + 32))(v80, v46, v3);
      OUTLINED_FUNCTION_2_7();
      sub_2693FD1F4(v48, v49);
      v78 = sub_2694240F8();
      v50 = *(v45 + 8);
      v50(v47, v3);
      sub_2693FD518(v31, &qword_28030F610, &qword_269425760);
      sub_2693FD518(v33, &qword_28030F610, &qword_269425760);
      v50(v0, v3);
      v51 = OUTLINED_FUNCTION_72();
      sub_2693FD518(v51, v52, &qword_269425760);
      if ((v78 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    sub_2693FD518(v31, &qword_28030F610, &qword_269425760);
    v42 = OUTLINED_FUNCTION_29();
    sub_2693FD518(v42, v43, &qword_269425760);
    (*(v84 + 8))(v0, v3);
LABEL_16:
    v44 = v17;
LABEL_27:
    sub_2693FD518(v44, &qword_28030FD38, qword_269427460);
    goto LABEL_28;
  }

  sub_2693FD518(v31, &qword_28030F610, &qword_269425760);
  v39 = OUTLINED_FUNCTION_29();
  sub_2693FD518(v39, v40, &qword_269425760);
  OUTLINED_FUNCTION_3_0(&v17[v38]);
  if (!v41)
  {
    goto LABEL_16;
  }

  sub_2693FD518(v17, &qword_28030F610, &qword_269425760);
LABEL_18:
  v53 = v82;
  sub_269423DF8();
  v54 = v81;
  sub_269423DF8();
  v55 = *(v10 + 48);
  v56 = v83;
  sub_2693FD290(v53, v83, &qword_28030F610, &qword_269425760);
  sub_2693FD290(v54, v56 + v55, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_3_0(v56);
  if (!v41)
  {
    v63 = v79;
    sub_2693FD290(v56, v79, &qword_28030F610, &qword_269425760);
    OUTLINED_FUNCTION_3_0(v56 + v55);
    if (!v64)
    {
      v71 = v54;
      v72 = v84;
      v73 = v80;
      (*(v84 + 32))(v80, v56 + v55, v3);
      OUTLINED_FUNCTION_2_7();
      sub_2693FD1F4(v74, v75);
      sub_2694240F8();
      v76 = *(v72 + 8);
      v76(v73, v3);
      sub_2693FD518(v71, &qword_28030F610, &qword_269425760);
      sub_2693FD518(v53, &qword_28030F610, &qword_269425760);
      v76(v63, v3);
      sub_2693FD518(v56, &qword_28030F610, &qword_269425760);
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_48_0();
    sub_2693FD518(v65, v66, v67);
    OUTLINED_FUNCTION_48_0();
    sub_2693FD518(v68, v69, v70);
    (*(v84 + 8))(v63, v3);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v57, v58, v59);
  OUTLINED_FUNCTION_48_0();
  sub_2693FD518(v60, v61, v62);
  OUTLINED_FUNCTION_3_0(v56 + v55);
  if (!v41)
  {
LABEL_26:
    v44 = v56;
    goto LABEL_27;
  }

  sub_2693FD518(v56, &qword_28030F610, &qword_269425760);
LABEL_28:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2693FC140(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  static SirikitLocalizedAppName.== infix(_:_:)();
  return v4 & 1;
}

uint64_t type metadata accessor for TemplatingResultProvider()
{
  result = qword_28030FD70;
  if (!qword_28030FD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2693FC1B8()
{
  result = sub_269423FC8();
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

id sub_2693FC264(void *a1)
{
  v21[7] = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v1 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v21[3] = 0xD00000000000002BLL;
  v21[4] = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x61657053706F7453, 0xEF6E6F697463416BLL);
  v2 = sub_269424108();

  v3 = [v1 initWithIdentifier_];

  v4 = sub_269422BA8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v3;
  sub_269422B98();
  type metadata accessor for StopSpeakAction();
  sub_2693FD1F4(&qword_28030FD08, type metadata accessor for StopSpeakAction);
  v12 = sub_269422B88();
  v14 = v13;

  v15 = objc_opt_self();

  v16 = sub_269422C98();
  sub_2693D6C54(v12, v14);
  v21[0] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:v21];

  v18 = v21[0];
  if (v17)
  {
    sub_269424458();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD80, &qword_269427580);
    if (swift_dynamicCast())
    {
      v8 = v21[0];
      goto LABEL_3;
    }
  }

  else
  {
    v19 = v18;
    v20 = sub_269422C48();

    swift_willThrow();
  }

  v8 = sub_2694240B8();
LABEL_3:
  sub_2693FCC24(v8);

  v9 = sub_269424098();

  [v7 setUserData_];

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_2693FC57C(void *a1)
{
  v21[7] = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v1 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v21[3] = 0xD00000000000002BLL;
  v21[4] = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x7463416B61657053, 0xEB000000006E6F69);
  v2 = sub_269424108();

  v3 = [v1 initWithIdentifier_];

  v4 = sub_269422BA8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v3;
  sub_269422B98();
  type metadata accessor for SpeakAction();
  sub_2693FD1F4(&qword_28030F578, type metadata accessor for SpeakAction);
  v12 = sub_269422B88();
  v14 = v13;

  v15 = objc_opt_self();

  v16 = sub_269422C98();
  sub_2693D6C54(v12, v14);
  v21[0] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:v21];

  v18 = v21[0];
  if (v17)
  {
    sub_269424458();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD80, &qword_269427580);
    if (swift_dynamicCast())
    {
      v8 = v21[0];
      goto LABEL_3;
    }
  }

  else
  {
    v19 = v18;
    v20 = sub_269422C48();

    swift_willThrow();
  }

  v8 = sub_2694240B8();
LABEL_3:
  sub_2693FCC24(v8);

  v9 = sub_269424098();

  [v7 setUserData_];

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_2693FC890(void *a1)
{
  v21[7] = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v1 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v21[3] = 0xD00000000000002BLL;
  v21[4] = 0x80000002694296D0;
  MEMORY[0x26D63BD80](46, 0xE100000000000000);
  MEMORY[0x26D63BD80](0x74616C736E617254, 0xEF6E6F6974634165);
  v2 = sub_269424108();

  v3 = [v1 initWithIdentifier_];

  v4 = sub_269422BA8();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = v3;
  sub_269422B98();
  type metadata accessor for TranslateAction();
  sub_2693FD1F4(&qword_28030FD98, type metadata accessor for TranslateAction);
  v12 = sub_269422B88();
  v14 = v13;

  v15 = objc_opt_self();

  v16 = sub_269422C98();
  sub_2693D6C54(v12, v14);
  v21[0] = 0;
  v17 = [v15 JSONObjectWithData:v16 options:0 error:v21];

  v18 = v21[0];
  if (v17)
  {
    sub_269424458();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD80, &qword_269427580);
    if (swift_dynamicCast())
    {
      v8 = v21[0];
      goto LABEL_3;
    }
  }

  else
  {
    v19 = v18;
    v20 = sub_269422C48();

    swift_willThrow();
  }

  v8 = sub_2694240B8();
LABEL_3:
  sub_2693FCC24(v8);

  v9 = sub_269424098();

  [v7 setUserData_];

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

id sub_2693FCBA8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = objc_opt_self();

  v6 = a2(v5);
  v7 = [v4 runSiriKitExecutorCommandWithContext:a1 payload:v6];

  return v7;
}

uint64_t sub_2693FCC24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FD88, &qword_269427588);
    v2 = sub_269424598();
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
    sub_2693DC120(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2693FD0E8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2693FD0E8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2693FD0E8(v32, v33);
    v15 = *(v2 + 40);
    result = sub_269424498();
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
    result = sub_2693FD0E8(v33, (*(v2 + 56) + 32 * v19));
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

unint64_t sub_2693FCEE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_269424738();
  sub_269424188();
  v6 = sub_269424758();

  return sub_2693FCF60(a1, a2, v6);
}

unint64_t sub_2693FCF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_269424688() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2693FD020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2693FD090(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_269424118();
    OUTLINED_FUNCTION_74();
  }

  return OUTLINED_FUNCTION_34_1();
}

_OWORD *sub_2693FD0E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2693FD0F8(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2694240A8();

  return v3;
}

uint64_t sub_2693FD170(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_269424478();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_2693FD1B0()
{
  result = qword_28030FD90;
  if (!qword_28030FD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030FD90);
  }

  return result;
}

uint64_t sub_2693FD1F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2693FD290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_5(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_34_1();
  v9(v8);
  return a2;
}

uint64_t sub_2693FD2EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2693FD35C()
{
  result = qword_28030FDA0;
  if (!qword_28030FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FDA0);
  }

  return result;
}

uint64_t sub_2693FD3B0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_96();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_5(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_34_1();
  v9(v8);
  return a2;
}

uint64_t sub_2693FD408(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_96();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4_5(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_34_1();
  v9(v8);
  return a2;
}

uint64_t sub_2693FD460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2693FD4B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_20_5(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_2693FD518(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_22_3@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_36_1(uint64_t a1)
{

  return sub_2693FCBA8(a1, sub_2693FC890);
}

uint64_t OUTLINED_FUNCTION_43_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_0()
{
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  v14 = v0[13];
}

uint64_t OUTLINED_FUNCTION_52_0()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[20];
  result = v0[18];
  v5 = v0[14];
  v6 = v0[15] + 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_0()
{
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[16];
  v14 = v0[13];
}

uint64_t OUTLINED_FUNCTION_64()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_81()
{

  return sub_269422D98();
}

uint64_t OUTLINED_FUNCTION_82()
{

  return swift_task_alloc();
}

char *OUTLINED_FUNCTION_83()
{
  v2 = *(v0 + 16) + 1;

  return sub_26941F7F4(0, v2, 1);
}

BOOL OUTLINED_FUNCTION_84()
{

  return os_log_type_enabled(v1, v0);
}

void OUTLINED_FUNCTION_104()
{
  v3 = *(v1 + v0 + 32);

  TranslationLanguages.rawValue.getter(v3);
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x28211F2F8](a1, a2, a3, a4, 0, 1, v4, v4);
}

void OUTLINED_FUNCTION_108()
{

  sub_2693F8B28();
}

uint64_t OUTLINED_FUNCTION_110()
{
}

uint64_t sub_2693FDB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v103 = a2;
  v107 = a3;
  v6 = sub_2694234E8();
  v7 = OUTLINED_FUNCTION_2(v6);
  v97 = v8;
  v98 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_5();
  v96 = v12 - v11;
  v13 = sub_269423488();
  v14 = OUTLINED_FUNCTION_2(v13);
  v100 = v15;
  v101 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_5();
  v99 = v19 - v18;
  v20 = sub_269423458();
  v21 = OUTLINED_FUNCTION_2(v20);
  v105 = v22;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v108 = &v91[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v104 = &v91[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDF0, &unk_269427718);
  v29 = OUTLINED_FUNCTION_2(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  v35 = &v91[-v34];
  v36 = sub_269423418();
  v37 = OUTLINED_FUNCTION_2(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_5();
  v44 = v43 - v42;
  v45 = OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_log;
  v46 = *(v39 + 16);
  v106 = a1;
  v46(v44, a1, v36);
  v47 = *(v31 + 16);
  v48 = v103;
  v103 = v28;
  v47(v35, v48, v28);
  v102 = v45;
  v49 = v4;
  v50 = sub_269423FA8();
  v51 = sub_269424368();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v109 = v95;
    *v52 = 136315394;
    OUTLINED_FUNCTION_8_5();
    sub_269400F78(v53, v54);
    v93 = v50;
    v55 = sub_269424668();
    v92 = v51;
    v56 = v49;
    v57 = v20;
    v59 = v58;
    (*(v39 + 8))(v44, v36);
    v60 = sub_2693DB6E0(v55, v59, &v109);
    v20 = v57;
    v49 = v56;

    *(v52 + 4) = v60;
    *(v52 + 12) = 2112;
    v61 = v103;
    v62 = sub_269423378();
    (*(v31 + 8))(v35, v61);
    *(v52 + 14) = v62;
    v63 = v93;
    v64 = v94;
    *v94 = v62;
    _os_log_impl(&dword_2693C9000, v63, v92, "Action for input: %s and intent: %@", v52, 0x16u);
    sub_2693EE27C(v64, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v95);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    (*(v31 + 8))(v35, v103);
    (*(v39 + 8))(v44, v36);
  }

  type metadata accessor for ConverterUtils();
  v65 = v104;
  sub_269423408();
  v66 = sub_2694112A0();
  v67 = v105;
  v68 = *(v105 + 8);
  v68(v65, v20);
  if (v66)
  {
    sub_269423408();
    v69 = sub_269411390(v65);
    v68(v65, v20);
    if (v69)
    {
      return sub_269423098();
    }
  }

  v71 = v108;
  sub_269423408();
  if ((*(v67 + 88))(v71, v20) != *MEMORY[0x277D5C160])
  {
    v82 = *(v49 + 16);
    sub_269423408();
    v83 = sub_26940E444(v65, 1);
    v68(v65, v20);
    if (v83)
    {
      v84 = [v83 isCancel];
      if (!v84)
      {
        sub_269400FC0();
        v84 = sub_2694243D8();
      }

      v85 = sub_269424348();

      if (v85 < 1)
      {

        v68(v108, v20);
        return sub_2694230A8();
      }

      sub_269423098();
    }

    else
    {
      v87 = sub_269423FA8();
      v88 = sub_269424368();
      if (os_log_type_enabled(v87, v88))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_9_2(&dword_2693C9000, v89, v90, "Ignore parse because nlConverter failed to get TranslateIntent");
        OUTLINED_FUNCTION_6_0();
      }

      sub_2694230B8();
    }

    return (v68)(v108, v20);
  }

  v72 = v108;
  (*(v67 + 96))(v108, v20);
  v74 = v99;
  v73 = v100;
  v75 = v101;
  (*(v100 + 32))(v99, v72, v101);
  v76 = *(v49 + 24);
  v77 = v96;
  sub_269423478();
  v86 = sub_2694062B0(v77, 0);
  (*(v97 + 8))(v77, v98);
  if (v86)
  {
    (*(v73 + 8))(v74, v75);

    return sub_2694230A8();
  }

  v78 = sub_269423FA8();
  v79 = sub_269424368();
  if (os_log_type_enabled(v78, v79))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_2(&dword_2693C9000, v80, v81, "Ignore usoParse because nlxConverter failed to get TranslateIntent");
    OUTLINED_FUNCTION_6_0();
  }

  sub_2694230B8();
  return (*(v73 + 8))(v74, v75);
}

uint64_t sub_2693FE398()
{
  OUTLINED_FUNCTION_11_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2694234E8();
  v1[6] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_82();
  v9 = sub_269423488();
  v1[9] = v9;
  OUTLINED_FUNCTION_5_0(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_82();
  v13 = sub_269423458();
  v1[12] = v13;
  OUTLINED_FUNCTION_5_0(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v1[14] = OUTLINED_FUNCTION_69();
  v1[15] = swift_task_alloc();
  v17 = sub_269423418();
  v1[16] = v17;
  OUTLINED_FUNCTION_5_0(v17);
  v1[17] = v18;
  v20 = *(v19 + 64);
  v1[18] = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_2693FE534()
{
  v81 = v0;
  v2 = v0[5];
  (*(v0[17] + 16))(v0[18], v0[3], v0[16]);
  v3 = sub_269423FA8();
  v4 = sub_269424368();
  v5 = OUTLINED_FUNCTION_10_7(v4);
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  if (v5)
  {
    OUTLINED_FUNCTION_17_0();
    v78 = OUTLINED_FUNCTION_18_5();
    v80[0] = v78;
    *v1 = 136315138;
    OUTLINED_FUNCTION_8_5();
    sub_269400F78(v9, v10);
    v11 = sub_269424668();
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    v14 = sub_2693DB6E0(v11, v13, v80);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v15, v16, "parseValueResponse: %s");
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v17 = v0[15];
  v18 = v0[12];
  v19 = v0[13];
  v21 = v0[3];
  v20 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDF0, &unk_269427718);
  v22 = sub_269423378();
  sub_269423408();
  v23 = (*(v19 + 88))(v17, v18);
  v24 = v0[15];
  if (v23 == *MEMORY[0x277D5C160])
  {
    v26 = v0[10];
    v25 = v0[11];
    v28 = v0[8];
    v27 = v0[9];
    v29 = v0[5];
    (*(v0[13] + 96))(v0[15], v0[12]);
    (*(v26 + 32))(v25, v24, v27);
    v30 = *(v29 + 24);
    sub_269423478();
    v38 = sub_2694062B0(v28, 0);
    v39 = v0[10];
    v24 = v0[11];
    v40 = v0[9];
    (*(v0[7] + 8))(v0[8], v0[6]);
    (*(v39 + 8))(v24, v40);
    if (!v38)
    {
      v79 = 0;
      goto LABEL_61;
    }

    v79 = v38;
  }

  else
  {
    v32 = v0[13];
    v31 = v0[14];
    v33 = v0[12];
    v34 = v0[3];
    v35 = *(v0[5] + 16);
    sub_269423408();
    v36 = sub_26940E444(v31, 0);
    v37 = *(v32 + 8);
    v37(v31, v33);
    v79 = v36;
    v37(v24, v33);
    if (!v36)
    {
      goto LABEL_61;
    }
  }

  sub_269400E8C(&v79);
  if (!v41)
  {
LABEL_29:
    if (!v79)
    {
      goto LABEL_61;
    }

    sub_269400DFC(&v79);
    if (!v48)
    {
      goto LABEL_61;
    }

    if (v79 && (v49 = sub_269400DFC(&v79), v50))
    {
      if (!v49)
      {
        OUTLINED_FUNCTION_25_2();
        if (v44)
        {

          goto LABEL_61;
        }
      }

      OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_36_2();
      if (v24)
      {
        goto LABEL_61;
      }
    }

    else
    {
    }

    sub_26941C0F8(v22);
    if (v53)
    {

      v54 = sub_26941C0F8(v22);
      if (!v55)
      {
        goto LABEL_61;
      }

      if (v54 || (OUTLINED_FUNCTION_25_2(), !v44))
      {
        OUTLINED_FUNCTION_5_8();
        OUTLINED_FUNCTION_36_2();
        if (v24)
        {
          goto LABEL_58;
        }

LABEL_61:
        v62 = sub_269423FA8();
        v63 = sub_269424378();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_2693C9000, v62, v63, "Unexpected state where both targetLanguage and phrase are missing but not provided by user.", v64, 2u);
          OUTLINED_FUNCTION_1_3();
        }

        v58 = 0;
        v59 = 0xE000000000000000;
        goto LABEL_64;
      }
    }

LABEL_58:
    if (v79 && (sub_269400DFC(&v79), v60))
    {
      v61 = sub_269424108();
    }

    else
    {
      v61 = 0;
    }

    [v22 setPhrase_];

    v76 = sub_26941C0F8(v22);
    if (v77)
    {
      v58 = v76;
    }

    else
    {
      v58 = 0;
    }

    v59 = 0xE000000000000000;
    if (v77)
    {
      v59 = v77;
    }

    goto LABEL_64;
  }

  if (!v79 || (v42 = sub_269400E8C(&v79), !v43))
  {

    goto LABEL_18;
  }

  if (!v42)
  {
    OUTLINED_FUNCTION_25_2();
    if (v44)
    {

      goto LABEL_29;
    }
  }

  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_36_2();
  if (v24)
  {
    goto LABEL_29;
  }

LABEL_18:
  sub_26941C104(v22);
  if (v45)
  {

    v46 = sub_26941C104(v22);
    if (v47)
    {
      if (!v46)
      {
        OUTLINED_FUNCTION_25_2();
        if (v44)
        {

          goto LABEL_37;
        }
      }

      OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_36_2();
      if (v24)
      {
        goto LABEL_37;
      }
    }

    sub_26941C104(v22);
    if (sub_2693D8BA0() == 3)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  if (v79)
  {
    v51 = sub_269400E8C(&v79);
    if (!v52)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
    }
  }

  else
  {
    v51 = 0;
    v52 = 0xE000000000000000;
  }

  sub_269400E28(v51, v52, v22);
  v56 = sub_26941C104(v22);
  if (v57)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0;
  }

  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

LABEL_64:
  v65 = v0[18];
  v67 = v0[14];
  v66 = v0[15];
  v68 = v0[11];
  v69 = v0[8];
  v70 = v0[2];
  v80[3] = MEMORY[0x277D837D0];
  v80[0] = v58;
  v80[1] = v59;
  type metadata accessor for TranslatePhraseIntent();
  sub_269423258();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE00, qword_269427728);
  OUTLINED_FUNCTION_33_2(v70, v72, v73, v71);

  OUTLINED_FUNCTION_4_6();

  return v74();
}

uint64_t sub_2693FEC00()
{
  OUTLINED_FUNCTION_11_0();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = sub_269423248();
  v1[33] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[34] = v5;
  v7 = *(v6 + 64);
  v1[35] = OUTLINED_FUNCTION_82();
  v8 = sub_269423088();
  v1[36] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[37] = v9;
  v11 = *(v10 + 64);
  v1[38] = OUTLINED_FUNCTION_82();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  v1[39] = v12;
  v13 = *(*(v12 - 8) + 64);
  v1[40] = OUTLINED_FUNCTION_82();
  v14 = *(*(sub_269423078() - 8) + 64);
  v1[41] = OUTLINED_FUNCTION_82();
  v15 = sub_269423368();
  v1[42] = v15;
  OUTLINED_FUNCTION_5_0(v15);
  v1[43] = v16;
  v18 = *(v17 + 64);
  v1[44] = OUTLINED_FUNCTION_69();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v19 = sub_2694233D8();
  v1[47] = v19;
  OUTLINED_FUNCTION_5_0(v19);
  v1[48] = v20;
  v22 = *(v21 + 64);
  v1[49] = OUTLINED_FUNCTION_69();
  v1[50] = swift_task_alloc();
  v23 = *(*(type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0) - 8) + 64);
  v1[51] = OUTLINED_FUNCTION_82();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDF0, &unk_269427718);
  v1[52] = v24;
  OUTLINED_FUNCTION_5_0(v24);
  v1[53] = v25;
  v27 = *(v26 + 64);
  v1[54] = OUTLINED_FUNCTION_69();
  v1[55] = swift_task_alloc();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2693FEE94()
{
  v2 = v1[55];
  v3 = v1[52];
  v4 = v1[53];
  v5 = v1[31];
  v6 = v1[32];
  v1[56] = OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_log;
  v71 = *(v4 + 16);
  v71(v2, v5, v3);
  v7 = sub_269423FA8();
  v8 = sub_269424368();
  v9 = OUTLINED_FUNCTION_10_7(v8);
  v10 = v1[55];
  v11 = &unk_269427000;
  v12 = v1[52];
  v13 = v1[53];
  if (v9)
  {
    v14 = OUTLINED_FUNCTION_17_0();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = sub_269423378();
    v17 = *(v13 + 8);
    v18 = OUTLINED_FUNCTION_30_1();
    v17(v18);
    v19 = v17;
    *(v14 + 4) = v16;
    *v15 = v16;
    v11 = &unk_269427000;
    _os_log_impl(&dword_2693C9000, v7, v0, "makePromptForValue for %@", v14, 0xCu);
    sub_2693EE27C(v15, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v20 = *(v13 + 8);
    v21 = OUTLINED_FUNCTION_30_1();
    v20(v21);
    v19 = v20;
  }

  v22 = v1[52];
  v23 = v1[31];
  v24 = sub_269423378();
  v25 = sub_26941C128(v24);
  if (!v26)
  {
    goto LABEL_10;
  }

  if (!v25)
  {
    OUTLINED_FUNCTION_25_2();
    if (v27)
    {

      goto LABEL_14;
    }
  }

  v28 = OUTLINED_FUNCTION_5_8();

  if ((v28 & 1) == 0)
  {
LABEL_10:
    v29 = v1[52];
    v30 = v1[31];
    v31 = sub_269423378();
    sub_26941C128(v31);
    if (sub_2693D8BA0() == 3)
    {
      v32 = *(v1[32] + 32);
      swift_task_alloc();
      OUTLINED_FUNCTION_56_0();
      v1[73] = v33;
      *v33 = v34;
      v33[1] = sub_269400140;
      v35 = v1[35];
      OUTLINED_FUNCTION_31_2();

      return sub_2693FA8F4(v36);
    }
  }

LABEL_14:
  v39 = (v1[32] + OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_featureFlags);
  v40 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v41 = *(v40 + 8);
  v42 = OUTLINED_FUNCTION_91();
  if (v43(v42))
  {
    v71(v1[54], v1[31], v1[52]);
    v44 = sub_269423FA8();
    v45 = sub_269424368();
    v46 = OUTLINED_FUNCTION_10_7(v45);
    v48 = v1[53];
    v47 = v1[54];
    v49 = v1[52];
    if (v46)
    {
      v50 = OUTLINED_FUNCTION_17_0();
      v51 = swift_slowAlloc();
      *v50 = v11[183];
      v52 = sub_269423378();
      v53 = OUTLINED_FUNCTION_30_1();
      v19(v53);
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&dword_2693C9000, v44, v40, "makePromptForValue for using RF 2.0 %@", v50, 0xCu);
      sub_2693EE27C(v51, &unk_280310170, &qword_269425DD0);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v61 = OUTLINED_FUNCTION_30_1();
      v19(v61);
    }

    v62 = v1[52];
    v63 = v1[50];
    v64 = v1[31];
    v65 = *(v1[32] + 32);
    v1[57] = sub_269423378();
    sub_2694233C8();
    swift_task_alloc();
    OUTLINED_FUNCTION_56_0();
    v1[58] = v66;
    *v66 = v67;
    v66[1] = sub_2693FF350;
    v69 = v1[50];
    v68 = v1[51];
    OUTLINED_FUNCTION_31_2();

    return sub_2693F7D58();
  }

  else
  {
    v54 = v1[52];
    v55 = v1[49];
    v56 = v1[31];
    v57 = *(v1[32] + 32);
    v1[64] = sub_269423378();
    sub_2694233C8();
    v58 = swift_task_alloc();
    v1[65] = v58;
    *v58 = v1;
    v58[1] = sub_2693FFA88;
    v59 = v1[49];
    OUTLINED_FUNCTION_31_2();

    return sub_2693F6BF4();
  }
}

uint64_t sub_2693FF350()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = v4[58];
  v6 = v4[57];
  v7 = v4[50];
  v8 = v4[48];
  v9 = v4[47];
  v10 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v11 = v10;
  *(v13 + 472) = v12;
  *(v13 + 480) = v0;

  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_91();
  v16(v15);

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2693FF4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50_0();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_62();
  a20 = v22;
  v25 = v22[51];
  v26 = v22[46];
  v27 = v22[40];
  v28 = v22[41];
  v30 = v22[37];
  v29 = v22[38];
  v80 = v22[36];
  v81 = v22[56];
  v31 = v22[32];
  v22[10] = type metadata accessor for SiriTranslationModels(0);
  v22[11] = sub_269400F78(&qword_280310160, type metadata accessor for SiriTranslationModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22 + 7);
  sub_269400EB8(v25, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  sub_269423068();
  OUTLINED_FUNCTION_7_3();
  sub_2694232E8();
  v33 = *(v31 + 40);
  sub_26941E944();
  v34 = sub_2694231F8();
  OUTLINED_FUNCTION_33_2(v27, v35, v36, v34);
  sub_269423348();
  sub_269423358();
  sub_269423328();
  sub_269423318();
  v38 = *(v30 + 104);
  v37 = v30 + 104;
  v38(v29, *MEMORY[0x277D5BC50], v80);
  sub_269423308();
  v39 = sub_269423FA8();
  v40 = sub_269424368();
  if (OUTLINED_FUNCTION_10_7(v40))
  {
    v41 = v22[46];
    v42 = v22[42];
    OUTLINED_FUNCTION_17_0();
    a11 = OUTLINED_FUNCTION_18_5();
    *v37 = 136315138;
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_9_6();
    sub_269400F78(v43, v44);
    v45 = sub_269424668();
    sub_2693DB6E0(v45, v46, &a11);
    OUTLINED_FUNCTION_34_2();
    *(v37 + 4) = v42;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v47, v48, "makePromptForValue manifest using RF 2.0: %s");
    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_1_3();
  }

  v49 = v22[32] + v22[56];
  v50 = sub_269423FA8();
  v51 = sub_269424368();
  if (OUTLINED_FUNCTION_10_7(v51))
  {
    v52 = v22[46];
    v54 = v22[39];
    v53 = v22[40];
    OUTLINED_FUNCTION_17_0();
    a11 = OUTLINED_FUNCTION_18_5();
    *v37 = 136315138;
    swift_beginAccess();
    sub_269423338();
    swift_endAccess();
    v55 = sub_269424128();
    sub_2693DB6E0(v55, v56, &a11);
    OUTLINED_FUNCTION_34_2();
    *(v37 + 4) = v53;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v57, v58, "makePromptForValue manifest.nlContextUpdate using RF 2.0: %s");
    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_1_3();
  }

  v59 = v22[59];
  v60 = v22[46];
  v61 = sub_269423218();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  v22[61] = sub_269423208();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  v64 = swift_allocObject();
  v22[62] = v64;
  *(v64 + 16) = xmmword_269427450;
  *(v64 + 32) = v59;
  OUTLINED_FUNCTION_13();
  v65 = *(MEMORY[0x277D5BD38] + 4);
  v82 = *MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38];
  v66 = v59;
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v22[63] = v67;
  *v67 = v68;
  v67[1] = sub_2693FF878;
  v69 = v22[46];
  v70 = v22[30];
  OUTLINED_FUNCTION_44_0();

  return v75(v71, v72, v73, v74, v75, v76, v77, v78, v80, v82, a11, a12, a13, a14);
}

uint64_t sub_2693FF878()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v2 = v1[63];
  v3 = v1[62];
  v4 = v1[61];
  v5 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2693FF998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 408);
  v16 = *(v14 + 368);
  v17 = *(v14 + 336);
  v18 = *(v14 + 344);

  sub_269400F1C(v15);
  v19 = *(v18 + 8);
  v20 = OUTLINED_FUNCTION_91();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1((v14 + 56));
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2693FFA88()
{
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = v4[65];
  v6 = v4[64];
  v7 = v4[49];
  v8 = v4[48];
  v9 = v4[47];
  v10 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v11 = v10;
  *(v13 + 528) = v12;
  *(v13 + 536) = v0;

  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_91();
  v16(v15);

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2693FFC08()
{
  v46 = v0;
  v1 = v0[56];
  v2 = v0[45];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[32];
  sub_269423068();
  OUTLINED_FUNCTION_7_3();
  sub_2694232E8();
  v6 = *(v5 + 40);
  sub_26941E944();
  v7 = sub_2694231F8();
  OUTLINED_FUNCTION_33_2(v4, v8, v9, v7);
  sub_269423348();
  sub_269423358();
  sub_269423328();
  v10 = sub_269423FA8();
  v11 = sub_269424368();
  if (OUTLINED_FUNCTION_10_7(v11))
  {
    v12 = v0[45];
    v13 = v0[42];
    OUTLINED_FUNCTION_17_0();
    v45 = OUTLINED_FUNCTION_18_5();
    *v1 = 136315138;
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_9_6();
    sub_269400F78(v14, v15);
    v16 = sub_269424668();
    sub_2693DB6E0(v16, v17, &v45);
    OUTLINED_FUNCTION_34_2();
    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v18, v19, "makePromptForValue manifest: %s");
    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_1_3();
  }

  v20 = v0[32] + v0[56];
  v21 = sub_269423FA8();
  v22 = sub_269424368();
  if (OUTLINED_FUNCTION_10_7(v22))
  {
    v23 = v0[45];
    v25 = v0[39];
    v24 = v0[40];
    OUTLINED_FUNCTION_17_0();
    v45 = OUTLINED_FUNCTION_18_5();
    *v1 = 136315138;
    swift_beginAccess();
    sub_269423338();
    swift_endAccess();
    v26 = sub_269424128();
    sub_2693DB6E0(v26, v27, &v45);
    OUTLINED_FUNCTION_34_2();
    *(v1 + 4) = v24;
    OUTLINED_FUNCTION_6_6(&dword_2693C9000, v28, v29, "makePromptForValue manifest.nlContextUpdate: %s");
    OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_1_3();
  }

  v31 = v0[44];
  v30 = v0[45];
  v32 = v0[42];
  v33 = v0[43];
  v34 = sub_269423218();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v0[68] = sub_269423208();
  OUTLINED_FUNCTION_13();
  (*(v33 + 16))(v31, v30, v32);
  v37 = *(MEMORY[0x277D5BD48] + 4);
  v44 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[69] = v38;
  *v38 = v39;
  v38[1] = sub_2693FFEDC;
  v40 = v0[66];
  v41 = v0[44];
  v42 = v0[30];

  return v44(v42, v40, v41);
}

uint64_t sub_2693FFEDC()
{
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_15_6();
  *v4 = v3;
  v6 = v5[69];
  v7 = v5[68];
  v8 = v5[44];
  v9 = v5[43];
  v10 = v5[42];
  v11 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v12 = v11;
  v3[70] = v0;

  v13 = *(v9 + 8);
  v3[71] = v13;
  v3[72] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v10);

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26940006C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 576);
  v16 = *(v14 + 528);
  (*(v14 + 568))(*(v14 + 360), *(v14 + 336));

  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269400140()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = *(v4 + 584);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v8 + 592) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26940023C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 320);
  v17 = *(v14 + 272);
  v16 = *(v14 + 280);
  v18 = *(v14 + 264);
  v19 = *(v14 + 240);
  v20 = *(*(v14 + 256) + 40);
  sub_26941E6B0();
  v21 = sub_2694231F8();
  OUTLINED_FUNCTION_33_2(v15, v22, v23, v21);
  v24 = sub_2694234B8();
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0;
  *(v14 + 16) = 0u;
  v25 = MEMORY[0x277D5C1D8];
  v19[3] = v24;
  v19[4] = v25;
  __swift_allocate_boxed_opaque_existential_0(v19);
  sub_269423108();
  sub_2693EE27C(v14 + 16, &qword_280310190, qword_269427220);
  sub_2693EE27C(v15, &qword_28030FC98, &qword_269427710);
  v26 = *(v17 + 8);
  v27 = OUTLINED_FUNCTION_91();
  v28(v27);
  OUTLINED_FUNCTION_3_8();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v14 + 16, a10, a11, a12, a13, a14);
}

uint64_t sub_2694003D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 480);
  OUTLINED_FUNCTION_0_11();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269400490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 536);
  OUTLINED_FUNCTION_0_11();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26940054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 576);
  v16 = *(v14 + 568);
  v17 = *(v14 + 360);
  v18 = *(v14 + 336);

  v16(v17, v18);
  v19 = *(v14 + 560);
  OUTLINED_FUNCTION_0_11();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26940062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_62();
  v15 = *(v14 + 592);
  OUTLINED_FUNCTION_0_11();

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_44_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

char *sub_2694006E8()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_log;
  v6 = sub_269423FC8();
  OUTLINED_FUNCTION_8_3(v6);
  (*(v7 + 8))(&v0[v5]);
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_deviceState]);
  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC22SiriTranslationIntents37TranslatePhraseNeedsValueFlowStrategy_featureFlags]);
  return v0;
}

uint64_t sub_26940077C()
{
  sub_2694006E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for TranslatePhraseNeedsValueFlowStrategy()
{
  result = qword_28030FDD8;
  if (!qword_28030FDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269400828()
{
  result = sub_269423FC8();
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

uint64_t sub_2694008FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2693ED200;

  return sub_2693FE398();
}

uint64_t sub_2694009B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2693EC8CC;

  return sub_2693FEC00();
}

uint64_t sub_269400A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B370] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_2693ED200;

  return MEMORY[0x2821B9BF8](a1, a2, v10, a4);
}

uint64_t sub_269400B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5B378] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy();
  *v9 = v4;
  v9[1] = sub_2693ED200;

  return MEMORY[0x2821B9C00](a1, a2, v10, a4);
}

uint64_t sub_269400BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5C0B0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy();
  *v13 = v6;
  v13[1] = sub_2693ED200;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_269400CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(MEMORY[0x277D5C0B8] + 4);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = type metadata accessor for TranslatePhraseNeedsValueFlowStrategy();
  *v15 = v7;
  v15[1] = sub_2693ED200;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v16, a7);
}

uint64_t sub_269400DFC(id *a1)
{
  v1 = *a1;

  return sub_26941C134(v1);
}

void sub_269400E28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  [a3 setTargetLanguage_];
}

uint64_t sub_269400E8C(id *a1)
{
  v1 = *a1;

  return sub_26941C128(v1);
}

uint64_t sub_269400EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269400F1C(uint64_t a1)
{
  v2 = type metadata accessor for SiriTranslationModels.SiriTranslationDisambiguationModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269400F78(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269400FC0()
{
  result = qword_28030FCD8;
  if (!qword_28030FCD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030FCD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[44];
  v10 = v0[40];
  v11 = v0[41];
  v13 = v0[38];
  v14 = v0[35];
}

uint64_t OUTLINED_FUNCTION_3_8()
{
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[49];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[44];
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[38];
  v14 = v0[35];
}

uint64_t OUTLINED_FUNCTION_5_8()
{

  return sub_269424688();
}

void OUTLINED_FUNCTION_6_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_10_7(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_15_7()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_18_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a4);
}

uint64_t OUTLINED_FUNCTION_34_2()
{
}

uint64_t OUTLINED_FUNCTION_36_2()
{
}

uint64_t sub_2694011E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE50, &qword_269427798);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8();
  qword_28030FE10 = result;
  return result;
}

uint64_t sub_269401238()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8();
  qword_28030FE18 = result;
  return result;
}

uint64_t sub_26940128C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8();
  qword_28030FE20 = result;
  return result;
}

uint64_t sub_2694012E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8();
  qword_28030FE28 = result;
  return result;
}

uint64_t sub_269401334()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE58, &unk_2694277A0);
  OUTLINED_FUNCTION_10_2(v0);
  OUTLINED_FUNCTION_0_12();
  result = OUTLINED_FUNCTION_2_8();
  qword_28030FE30 = result;
  return result;
}

uint64_t sub_269401388()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  OUTLINED_FUNCTION_10_2(v0);
  result = sub_269423618();
  qword_28030FE38 = result;
  return result;
}

uint64_t sub_2694013E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FF08, &unk_269427B30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269427780;
  if (qword_28030F140 != -1)
  {
    swift_once();
  }

  v1 = qword_28030FE38;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE48, &qword_269427790);
  *(v0 + 56) = v2;
  v3 = sub_2694024F8(&qword_28030FF10, &qword_28030FE48, &qword_269427790);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_28030F118;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28030FE10;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE50, &qword_269427798);
  *(v0 + 104) = sub_2694024F8(&qword_28030FF18, &qword_28030FE50, &qword_269427798);
  *(v0 + 72) = v5;
  v6 = qword_28030F130;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_28030FE28;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;
  v8 = qword_28030F128;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28030FE20;
  *(v0 + 176) = v2;
  *(v0 + 184) = v3;
  *(v0 + 152) = v9;
  v10 = qword_28030F120;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28030FE18;
  *(v0 + 216) = v2;
  *(v0 + 224) = v3;
  *(v0 + 192) = v11;
  v12 = qword_28030F138;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_28030FE30;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FE58, &unk_2694277A0);
  *(v0 + 264) = sub_2694024F8(&qword_28030FF20, &qword_28030FE58, &unk_2694277A0);
  *(v0 + 232) = v13;
  v14 = sub_269423608();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  result = sub_2694235F8();
  qword_28030FE40 = result;
  return result;
}

uint64_t sub_269401714()
{
  v0 = sub_2694245A8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269401774(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x6552657361726870;
  }
}

uint64_t sub_2694017D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_269401714();
  *a2 = result;
  return result;
}

uint64_t sub_269401804@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269401774(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26940188C()
{
  if (qword_28030F148 != -1)
  {
    swift_once();
  }
}

BOOL sub_2694018E8()
{
  v0 = sub_2694245A8();

  return v0 != 0;
}

BOOL sub_26940195C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2694018E8();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TranslationNLIntent.TranslationConfirmation(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for TranslationNLIntent.TranslationConfirmation(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x269401AA4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranslationNLIntent.TranslationPhraseReference(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x269401BA8);
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

uint64_t sub_269401BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2694239E8();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_269401C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2694239E8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TranslationNLIntent()
{
  result = qword_28030FE60;
  if (!qword_28030FE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269401CE8()
{
  result = sub_2694239E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269401D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_269401E24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2694239E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_269401EA4(uint64_t a1)
{
  v2 = sub_2694022BC(&qword_28030FED0);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_269401F0C(uint64_t a1)
{
  v2 = sub_2694022BC(&qword_28030FED0);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_269401F64(uint64_t a1)
{
  v2 = sub_2694022BC(&qword_28030FED0);

  return MEMORY[0x2821C0C70](a1, v2);
}

unint64_t sub_269402028()
{
  result = qword_28030FE80;
  if (!qword_28030FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FE80);
  }

  return result;
}

unint64_t sub_2694020C4()
{
  result = qword_28030FE98;
  if (!qword_28030FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FE98);
  }

  return result;
}

unint64_t sub_26940211C()
{
  result = qword_28030FEA0;
  if (!qword_28030FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEA0);
  }

  return result;
}

unint64_t sub_269402174()
{
  result = qword_28030FEA8;
  if (!qword_28030FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEA8);
  }

  return result;
}

unint64_t sub_269402210()
{
  result = qword_28030FEC0;
  if (!qword_28030FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEC0);
  }

  return result;
}

unint64_t sub_269402268()
{
  result = qword_28030FEC8;
  if (!qword_28030FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEC8);
  }

  return result;
}

uint64_t sub_2694022BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranslationNLIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269402300()
{
  result = qword_28030FED8;
  if (!qword_28030FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FED8);
  }

  return result;
}

unint64_t sub_269402354()
{
  result = qword_28030FEE0;
  if (!qword_28030FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEE0);
  }

  return result;
}

unint64_t sub_2694023A8()
{
  result = qword_28030FEE8;
  if (!qword_28030FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEE8);
  }

  return result;
}

unint64_t sub_2694023FC()
{
  result = qword_28030FEF0;
  if (!qword_28030FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEF0);
  }

  return result;
}

unint64_t sub_269402450()
{
  result = qword_28030FEF8;
  if (!qword_28030FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FEF8);
  }

  return result;
}

unint64_t sub_2694024A4()
{
  result = qword_28030FF00;
  if (!qword_28030FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF00);
  }

  return result;
}

uint64_t sub_2694024F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_2_8()
{

  return sub_269423618();
}

uint64_t sub_269402564()
{
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_language);
  sub_2693D033C(v0 + OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_translateAction);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *sub_2694025F4(uint64_t a1)
{
  v1[2] = 0;
  v3 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_language;
  swift_beginAccess();
  sub_2693D0278(a1 + v3, v1 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language);
  v4 = OBJC_IVAR____TtCC22SiriTranslationIntents19TranslationLanguage7Builder_translateAction;
  swift_beginAccess();
  sub_2693D0278(a1 + v4, v1 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction);
  if (!sub_269402788())
  {
    v5 = sub_269423E88();
    sub_269424378();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F690, &qword_269425988);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2694256B0;
    v11 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FF70, &qword_269427C80);
    v7 = sub_269424128();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_2693D02E8();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_269423F98();
  }

  return v1;
}

BOOL sub_269402788()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_10();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language, &v13 - v7);
  v9 = sub_269423DA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);
  sub_2693D033C(v8);
  if (EnumTagSinglePayload == 1)
  {
    return 0;
  }

  sub_2693D0278(v0 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction, v5);
  v11 = __swift_getEnumTagSinglePayload(v5, 1, v9) != 1;
  sub_2693D033C(v5);
  return v11;
}

uint64_t sub_2694028A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_10();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v15 || (sub_269424688() & 1) != 0)
  {
    sub_2693D0278(v3 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language, v14);
    v16 = sub_269423DA8();
    if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
    {
      v17 = v14;
LABEL_8:
      result = sub_2693D033C(v17);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v16 - 8) + 32))(boxed_opaque_existential_0, v14, v16);
  }

  else
  {
    if (a1 != 0x74616C736E617274 || a2 != 0xEF6E6F6974634165)
    {
      result = sub_269424688();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_2693D0278(v3 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction, v11);
    v21 = sub_269423DA8();
    if (__swift_getEnumTagSinglePayload(v11, 1, v21) == 1)
    {
      v17 = v11;
      goto LABEL_8;
    }

    *(a3 + 24) = v21;
    v22 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(*(v21 - 8) + 32))(v22, v11, v21);
  }
}

uint64_t sub_269402AC8()
{
  v0 = sub_2694245A8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269402B1C(char a1)
{
  if (a1)
  {
    return 0x74616C736E617274;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_269402B84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_269402AC8();
  *a2 = result;
  return result;
}

uint64_t sub_269402BB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_269402B1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_269402BE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_269402AC8();
  *a1 = result;
  return result;
}

uint64_t sub_269402C1C(uint64_t a1)
{
  v2 = sub_2694034AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269402C58(uint64_t a1)
{
  v2 = sub_2694034AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_269402C94()
{
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language);
  sub_2693D033C(v0 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction);
  return v0;
}

uint64_t sub_269402CD4()
{
  sub_269402C94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_269402D54()
{
  sub_2693CF8D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269402DF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FF68, &unk_269427C70);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2694034AC();
  sub_269424788();
  v14 = OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language;
  v20 = 0;
  sub_269423DA8();
  OUTLINED_FUNCTION_0_13();
  sub_269403464(v15, v16);
  OUTLINED_FUNCTION_3_9(v3 + v14, &v20);
  if (!v2)
  {
    v19 = 1;
    OUTLINED_FUNCTION_3_9(v3 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction, &v19);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_269402F74(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_26940307C(a1);
  return v5;
}

void sub_269402FEC()
{
  sub_2693CF8D8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id *sub_26940307C(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_10();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v26 = v25 - v10;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FF58, &qword_269427C68);
  v11 = OUTLINED_FUNCTION_2(v27);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v1[2] = 0;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2694034AC();
  sub_269424778();
  if (v2)
  {

    type metadata accessor for TranslationLanguage(0);
    v20 = *(*v1 + 12);
    v21 = *(*v1 + 26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v25[1] = v13;
    sub_269423DA8();
    v29 = 0;
    OUTLINED_FUNCTION_0_13();
    sub_269403464(v17, v18);
    v19 = v26;
    OUTLINED_FUNCTION_5_9();
    sub_2693D03F8(v19, v1 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_language);
    v28 = 1;
    OUTLINED_FUNCTION_5_9();
    v23 = OUTLINED_FUNCTION_1_7();
    v24(v23);
    sub_2693D03F8(v8, v1 + OBJC_IVAR____TtC22SiriTranslationIntents19TranslationLanguage_translateAction);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_269403384@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_269402F74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_269403464(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2694034AC()
{
  result = qword_28030FF60;
  if (!qword_28030FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranslationLanguage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2694035CCLL);
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

unint64_t sub_269403608()
{
  result = qword_28030FF78;
  if (!qword_28030FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF78);
  }

  return result;
}

unint64_t sub_269403660()
{
  result = qword_28030FF80;
  if (!qword_28030FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF80);
  }

  return result;
}

unint64_t sub_2694036B8()
{
  result = qword_28030FF88;
  if (!qword_28030FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28030FF88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_7()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDAF0](a1, a2, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return sub_2694245D8();
}

uint64_t sub_269403784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v13 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  if (qword_28030F0D0 != -1)
  {
    swift_once();
  }

  v14 = sub_269423FC8();
  v15 = __swift_project_value_buffer(v14, qword_280314F30);
  (*(*(v14 - 8) + 16))(v6 + v13, v15, v14);
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent) = 0;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translatePhraseIntentHandler) = a2;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlConverter) = a3;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translationApiClient) = a1;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlContextProvider) = a4;
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_templatinResultProvider) = a5;
  sub_2693DC180(a6, v6 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_outputPublisher);
  return v6;
}

BOOL sub_2694038BC()
{
  v1 = v0;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2693C9000, v2, v3, "On input.", v4, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v5 = *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlConverter);
  v6 = sub_26940FE58();
  v7 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent;
  v8 = *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent);
  *(v1 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent) = v6;

  return *(v1 + v7) != 0;
}

uint64_t sub_269403984()
{
  OUTLINED_FUNCTION_11_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(sub_269423078() - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_82();
  v4 = sub_269423368();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269403A50()
{
  OUTLINED_FUNCTION_23_2();
  v1 = v0[8] + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  v2 = sub_269423FA8();
  v3 = sub_269424368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2693C9000, v2, v3, "Execute Async.", v4, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v5 = v0[8];

  v6 = *(v5 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_intent);
  v0[13] = v6;
  if (v6)
  {
    v7 = v0[8];
    sub_269423C48();
    v8 = v6;
    sub_269423C38();
    sub_269423C18();

    v9 = sub_269423F38();

    v10 = *(v7 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translatePhraseIntentHandler);
    v11 = v8;

    sub_2693F19F0(v11, v10, v7, v11, v9);
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_269403C38;
    v13 = v0[8];

    return sub_269404E98();
  }

  else
  {
    v15 = v0[7];
    sub_269423148();
    v16 = v0[12];
    v17 = v0[9];

    OUTLINED_FUNCTION_1_8();

    return v18();
  }
}

uint64_t sub_269403C38()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269403D34()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  sub_269423068();
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  sub_2694232E8();

  v6 = sub_269423218();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[16] = sub_269423208();
  v9 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  v0[17] = v9;
  v10 = *(MEMORY[0x277D5BD48] + 4);
  v15 = (*MEMORY[0x277D5BD48] + MEMORY[0x277D5BD48]);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[18] = v11;
  *v11 = v12;
  v11[1] = sub_269403E80;
  v13 = v0[12];

  return v15(v0 + 2, v9, v13);
}

uint64_t sub_269403E80()
{
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_15_6();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    v9 = *(v3 + 128);
  }

  else
  {
    v10 = *(v3 + 128);
    v11 = *(v3 + 136);
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_269403FAC()
{
  OUTLINED_FUNCTION_23_2();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[7];
  sub_269423148();

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_13_5();
  v8(v7);
  v9 = v0[12];
  v10 = v0[9];

  OUTLINED_FUNCTION_1_8();

  return v11();
}

uint64_t sub_269404040()
{
  OUTLINED_FUNCTION_11_0();

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  OUTLINED_FUNCTION_4_6();

  return v4();
}

uint64_t sub_2694040B0()
{
  OUTLINED_FUNCTION_23_2();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_13_5();
  v6(v5);
  v7 = *(v0 + 152);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);

  OUTLINED_FUNCTION_4_6();

  return v10();
}

void sub_269404140(void *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v85 = a3;
  v84 = sub_269422CE8();
  v7 = OUTLINED_FUNCTION_5_0(v84);
  v90 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  v14 = a1;
  v89 = a2;
  v86 = v13;
  v15 = sub_269423FA8();
  v16 = sub_269424368();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_17_0();
    v88 = OUTLINED_FUNCTION_16_0();
    v94 = v88;
    *v17 = 136315138;
    v18 = v14;
    v19 = [v18 description];
    v20 = sub_269424118();
    v21 = a4;
    v23 = v22;

    v24 = sub_2693DB6E0(v20, v23, &v94);
    a4 = v21;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2693C9000, v15, v16, "Translated intent and got response: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v25 = sub_26941FFC0(v14);
  if (v25)
  {
    v26 = v25;
    v27 = sub_26941C9D4(v25);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v29 = (v28 + 16);
    v30 = swift_allocObject();
    *(v30 + 16) = 1;
    v31 = (v30 + 16);
    v81 = sub_26941C9D4(v26);
    if (v81)
    {
      v82 = v30;
      v83 = v28;
      v79 = *(v89 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translationApiClient);
      v80 = v26 & 0xC000000000000001;
      swift_beginAccess();
      swift_beginAccess();
      v32 = 0;
      v74 = v26 + 32;
      v78 = a4;
      v33 = v90 + 1;
      *&v34 = 136315138;
      v75 = v34;
      v77 = v26;
      v76 = v27;
      while (1)
      {
        v35 = v80;
        sub_26942008C(v32, v80 == 0, v26);
        v36 = v35 ? MEMORY[0x26D63C060](v32, v26) : *(v74 + 8 * v32);
        v37 = __OFADD__(v32, 1);
        v38 = v32 + 1;
        if (v37)
        {
          break;
        }

        *v31 = 1;
        v39 = v36;
        v40 = sub_269423FA8();
        v41 = sub_269424368();

        v42 = os_log_type_enabled(v40, v41);
        v90 = v39;
        v87 = v38;
        if (v42)
        {
          v43 = OUTLINED_FUNCTION_17_0();
          v44 = OUTLINED_FUNCTION_16_0();
          v93 = v44;
          *v43 = v75;
          v91 = sub_269405C48(v39);
          v92 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
          v46 = sub_269424128();
          v48 = sub_2693DB6E0(v46, v47, &v93);
          v39 = v90;

          *(v43 + 4) = v48;
          _os_log_impl(&dword_2693C9000, v40, v41, "Speaking item: %s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v49 = sub_26941C104(v85);
        if (v50)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0;
        }

        v88 = v51;
        if (v50)
        {
          v52 = v50;
        }

        else
        {
          v52 = 0xE000000000000000;
        }

        v53 = sub_269405C48(v39);
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 0;
        }

        if (v54)
        {
          v56 = v54;
        }

        else
        {
          v56 = 0xE000000000000000;
        }

        OUTLINED_FUNCTION_15_8();
        v57 = swift_allocObject();
        v58 = v83;
        v57[2] = v89;
        v57[3] = v58;
        v57[4] = v82;

        LOBYTE(v91) = 0;
        sub_2693D4578(v88, v52, v55, v56, v78, sub_269405F38, v57);

        v59 = *(v58 + 16);
        v37 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v37)
        {
          goto LABEL_40;
        }

        *v29 = v60;
        sub_269422CD8();
        sub_269422CC8();
        v62 = v61;
        isa = v33->isa;
        v64 = v84;
        (v33->isa)(v12, v84);
        v65 = v76;
        do
        {
          if (*v29 >= v65)
          {
            break;
          }

          if ((*v31 & 1) == 0)
          {
            break;
          }

          sub_269422CD8();
          sub_269422CC8();
          v67 = v66;
          isa(v12, v64);
        }

        while (v67 - v62 <= 5.0);

        v32 = v87;
        v26 = v77;
        if (v87 == v81)
        {

          OUTLINED_FUNCTION_11_5();
          return;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {

      OUTLINED_FUNCTION_11_5();
    }
  }

  else
  {
    v90 = sub_269423FA8();
    v68 = sub_269424368();
    if (os_log_type_enabled(v90, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2693C9000, v90, v68, "Received no items to speak.", v69, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_11_5();
  }
}

uint64_t sub_2694047C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v9 = sub_269423FA8();
  v10 = sub_269424368();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v26[0] = a1;
    v26[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v13 = sub_269424128();
    v15 = sub_2693DB6E0(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2693C9000, v9, v10, "Speaking item error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D63C8E0](v12, -1, -1);
    MEMORY[0x26D63C8E0](v11, -1, -1);
  }

  v16 = sub_269423FA8();
  v17 = sub_269424368();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v18 = 136315138;
    swift_beginAccess();
    v24 = *(a4 + 16);
    v20 = sub_269424668();
    v22 = sub_2693DB6E0(v20, v21, v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2693C9000, v16, v17, "Incrementing index: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x26D63C8E0](v19, -1, -1);
    MEMORY[0x26D63C8E0](v18, -1, -1);
  }

  result = swift_beginAccess();
  *(a5 + 16) = 0;
  return result;
}

uint64_t sub_269404A48(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlContextProvider);
  sub_26941D9EC();
  v8 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  return sub_269423348();
}

uint64_t sub_269404B10(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC50, &qword_2694271F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_269424338();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_2693EC23C(0, 0, v8, &unk_269427EB8, v10);
}

uint64_t sub_269404C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_269423158();
  v6[4] = v7;
  v8 = *(v7 - 8);
  v6[5] = v8;
  v9 = *(v8 + 64) + 15;
  v6[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[7] = v10;
  *v10 = v6;
  v10[1] = sub_269404D0C;

  return sub_269403984();
}

uint64_t sub_269404D0C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_15_6();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269404E08()
{
  OUTLINED_FUNCTION_23_2();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_1_8();

  return v5();
}

uint64_t sub_269404E98()
{
  OUTLINED_FUNCTION_11_0();
  v1[18] = v2;
  v1[19] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FC98, &qword_269427710) - 8) + 64);
  v1[20] = OUTLINED_FUNCTION_82();
  v4 = sub_2694234B8();
  v1[21] = v4;
  OUTLINED_FUNCTION_5_0(v4);
  v1[22] = v5;
  v7 = *(v6 + 64);
  v1[23] = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_269404F70()
{
  v1 = v0[18];
  v2 = v0[19];
  v0[24] = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  v3 = v1;
  v4 = sub_269423FA8();
  v5 = sub_269424368();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[18];
    v7 = OUTLINED_FUNCTION_17_0();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2693C9000, v4, v5, "Generating empty dialog for nl context update for: %@", v7, 0xCu);
    sub_2693EE27C(v8, &unk_280310170, &qword_269425DD0);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v10 = v0[21];
  v11 = v0[19];

  v12 = [objc_allocWithZone(MEMORY[0x277D47290]) init];
  v0[25] = v12;
  sub_269405CAC(0, 0xE000000000000000, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277D479E0]) init];
  v0[26] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D47288]) init];
  v0[27] = v14;
  [v14 setContent_];
  [v14 setSpokenOnly_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FDA8, &qword_2694275A0);
  OUTLINED_FUNCTION_15_8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269427450;
  *(v15 + 32) = v14;
  v16 = v14;
  sub_269405D10(v15, v13);
  v17 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_outputPublisher;
  v0[28] = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_outputPublisher;
  v18 = *(v11 + v17 + 24);
  v19 = *(v11 + v17 + 32);
  __swift_project_boxed_opaque_existential_1((v11 + v17), v18);
  OUTLINED_FUNCTION_15_8();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_269427450;
  *(v20 + 32) = v13;
  v21 = MEMORY[0x277D5C1D8];
  v0[5] = v10;
  v0[6] = v21;
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v22 = v13;
  sub_269423498();
  v23 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  v0[29] = v24;
  *v24 = v25;
  v24[1] = sub_26940523C;

  return MEMORY[0x2821BB5D0](v0 + 2, v18, v19);
}

uint64_t sub_26940523C()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_15_6();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_269405340()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = (v7 + *(v0 + 224));
  v9 = *(v7 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlContextProvider);
  sub_26941D9EC();
  v10 = sub_2694231F8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  MEMORY[0x26D63ACC0](v1, v5, MEMORY[0x277D84F90], v0 + 56);
  sub_2693EE27C(v0 + 56, &qword_280310190, qword_269427220);
  sub_2693EE27C(v5, &qword_28030FC98, &qword_269427710);
  v11 = v8[3];
  v12 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v11);
  v13 = MEMORY[0x277D5C1D8];
  *(v0 + 120) = v4;
  *(v0 + 128) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  (*(v3 + 16))(boxed_opaque_existential_0, v2, v4);
  v15 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v0 + 248) = v16;
  *v16 = v17;
  v16[1] = sub_2694054E4;

  return MEMORY[0x2821BB5D0](v0 + 96, v11, v12);
}

uint64_t sub_2694054E4()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_5();
  v3 = v2;
  OUTLINED_FUNCTION_15_6();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 96));
  }

  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2694055E8()
{
  OUTLINED_FUNCTION_17_5();

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_13_5();
  v6(v5);
  v7 = *(v1 + 184);
  v8 = *(v1 + 160);

  OUTLINED_FUNCTION_1_8();

  return v9();
}

uint64_t sub_269405680()
{
  v20 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = v3;
  v7 = sub_269423FA8();
  LOBYTE(v5) = sub_269424368();

  if (os_log_type_enabled(v7, v5))
  {
    v8 = OUTLINED_FUNCTION_17_0();
    v9 = OUTLINED_FUNCTION_16_0();
    v19 = v9;
    OUTLINED_FUNCTION_19_4(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310180, &unk_269425CC0);
    v10 = sub_269424128();
    v12 = sub_2693DB6E0(v10, v11, &v19);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_18_6(&dword_2693C9000, v13, v14, "Encountered error trying to set nl context update: %s.");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v15 = *(v0 + 184);
  v16 = *(v0 + 160);

  OUTLINED_FUNCTION_1_8();

  return v17();
}

uint64_t sub_269405800()
{
  v24 = v1;
  OUTLINED_FUNCTION_17_5();

  v4 = *(v3 + 8);
  v5 = OUTLINED_FUNCTION_13_5();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v1 + 12);
  v7 = v1[32];
  v8 = v1[24];
  v9 = v1[19];
  v10 = v7;
  v11 = sub_269423FA8();
  LOBYTE(v9) = sub_269424368();

  if (os_log_type_enabled(v11, v9))
  {
    v12 = OUTLINED_FUNCTION_17_0();
    v13 = OUTLINED_FUNCTION_16_0();
    v23 = v13;
    OUTLINED_FUNCTION_19_4(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280310180, &unk_269425CC0);
    v14 = sub_269424128();
    v16 = sub_2693DB6E0(v14, v15, &v23);

    *(v12 + 4) = v16;
    OUTLINED_FUNCTION_18_6(&dword_2693C9000, v17, v18, "Encountered error trying to set nl context update: %s.");
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v19 = v1[23];
  v20 = v1[20];

  OUTLINED_FUNCTION_1_8();

  return v21();
}

uint64_t sub_26940598C()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_log;
  v2 = sub_269423FC8();
  OUTLINED_FUNCTION_8_3(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_translationApiClient);

  v5 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlConverter);

  v6 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_nlContextProvider);

  v7 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_templatinResultProvider);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents10RepeatFlow_outputPublisher));
  return v0;
}

uint64_t sub_269405A50()
{
  sub_26940598C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RepeatFlow()
{
  result = qword_28030FF98;
  if (!qword_28030FF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269405AFC()
{
  result = sub_269423FC8();
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

uint64_t sub_269405C0C()
{
  type metadata accessor for RepeatFlow();

  return sub_269422FC8();
}

uint64_t sub_269405C48(void *a1)
{
  v1 = [a1 translatedText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269424118();

  return v3;
}

void sub_269405CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269424108();

  [a3 setText_];
}

void sub_269405D10(uint64_t a1, void *a2)
{
  sub_269405D84();
  v3 = sub_269424278();

  [a2 setDialogs_];
}

unint64_t sub_269405D84()
{
  result = qword_28030FFA8;
  if (!qword_28030FFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030FFA8);
  }

  return result;
}

uint64_t sub_269405DC8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269405E10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_56_0();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_2693EC8CC;

  return sub_269404C10(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_269405EF4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_15_8();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_1_8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_17_5()
{
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
}

void OUTLINED_FUNCTION_18_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_19_4(float a1)
{
  *v3 = a1;
  *(v2 + 136) = v1;

  return v1;
}

uint64_t sub_269405FF4()
{
  sub_269423468();
  if (qword_28030F168 != -1)
  {
    swift_once();
  }

  v0 = qword_2803150A8;
  type metadata accessor for SiriEnvironmentUtil();
  v1 = swift_allocObject();
  v2 = type metadata accessor for SiriReferenceResolutionConverter();
  v22[3] = v2;
  v22[4] = &off_2879F5168;
  v22[0] = v0;
  v3 = type metadata accessor for NLXConverter();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v2);
  v8 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v20 = v2;
  v21 = &off_2879F5168;
  *&v19 = v12;
  v13 = OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_log;
  v14 = qword_28030F078;
  swift_retain_n();
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_269423FC8();
  __swift_project_value_buffer(v15, qword_280314E28);
  OUTLINED_FUNCTION_20_5(v15);
  (*(v16 + 16))(v6 + v13);
  sub_2693DBCC8(&v23, v6 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState);
  sub_2693DBCC8(&v19, v6 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider);
  *(v6 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_siriEnvironmentUtil) = v1;
  __swift_destroy_boxed_opaque_existential_1(v22);

  qword_280315070 = v6;
  return result;
}

uint64_t sub_2694062B0(uint64_t a1, int a2)
{
  HIDWORD(v72) = a2;
  v2 = sub_269423588();
  v3 = OUTLINED_FUNCTION_2(v2);
  v76 = v4;
  v77 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269423538();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_50();
  v74 = v18;
  v19 = sub_2694234C8();
  v20 = OUTLINED_FUNCTION_2(v19);
  v80 = v21;
  v81 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10();
  v73 = v24 - v25;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_50();
  v79 = v27;
  result = sub_2694234D8();
  v29 = result;
  v30 = 0;
  v31 = *(result + 16);
  while (1)
  {
    if (v31 == v30)
    {

      v32 = sub_269423FA8();
      sub_269424378();
      v33 = OUTLINED_FUNCTION_0_14();
      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_33_1();
        v35 = swift_slowAlloc();
        *v35 = 0;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v36, v37, v38, v39, v35, 2u);
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
      }

      v40 = sub_269423C78();
      OUTLINED_FUNCTION_1_9();
      sub_269409D3C(v41, v42);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_39_1();
      *v43 = v45;
      v43[1] = v44;
      v46 = *MEMORY[0x277D61E00];
      OUTLINED_FUNCTION_20_5(v40);
      (*(v47 + 104))();
      swift_willThrow();
      return v31;
    }

    if (v30 >= *(v29 + 16))
    {
      break;
    }

    (*(v11 + 16))(v16, v29 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v8);
    if (sub_2694234F8())
    {

      v48 = v74;
      (*(v11 + 32))(v74, v16, v8);
      v49 = v75;
      sub_269423528();
      (*(v11 + 8))(v48, v8);
      v50 = v73;
      sub_269423578();
      (*(v76 + 8))(v49, v77);
      (*(v80 + 32))(v79, v50, v81);
      v51 = v78;
      v52 = sub_2694235C8();
      if (v51)
      {

        v53 = sub_269423FA8();
        sub_269424378();
        v54 = OUTLINED_FUNCTION_0_14();
        if (os_log_type_enabled(v54, v55))
        {
          OUTLINED_FUNCTION_33_1();
          v31 = swift_slowAlloc();
          *v31 = 0;
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v56, v57, v58, v59, v31, 2u);
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        v60 = sub_269423C78();
        OUTLINED_FUNCTION_1_9();
        sub_269409D3C(v61, v62);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_39_1();
        *v64 = v63 + 21;
        v64[1] = v65;
        v66 = *MEMORY[0x277D61E00];
        OUTLINED_FUNCTION_20_5(v60);
        (*(v67 + 104))();
        swift_willThrow();
        v68 = OUTLINED_FUNCTION_28_1();
        v69(v68);
      }

      else
      {
        v31 = sub_269406820(v52, BYTE4(v72) & 1);
        v70 = OUTLINED_FUNCTION_28_1();
        v71(v70);
      }

      return v31;
    }

    ++v30;
    result = (*(v11 + 8))(v16, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_269406820(uint64_t a1, char a2)
{
  v3 = MEMORY[0x26D63B2C0]();
  if (sub_26941C9D4())
  {
    sub_26942008C(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D63C060](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    sub_269423798();
    if (v27)
    {
      sub_269423918();
      if (OUTLINED_FUNCTION_36_3())
      {

        v5 = sub_269406B1C(v28, a2 & 1);
LABEL_14:
        v14 = v5;

        return v14;
      }
    }

    else
    {
      sub_269409CE0(v26, &qword_280310008, &qword_269427FA8);
    }

    sub_269423798();

    if (v27)
    {
      sub_2694238C8();
      if (OUTLINED_FUNCTION_36_3())
      {
        v5 = sub_2694083A0(v28, a2 & 1);
        goto LABEL_14;
      }
    }

    else
    {
      sub_269409CE0(v26, &qword_280310008, &qword_269427FA8);
    }

    v20 = sub_269423FA8();
    v21 = sub_269424378();
    v22 = OUTLINED_FUNCTION_16_6();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_33_1();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2693C9000, v20, v21, "userStartUSOGraph is neither a translate nor noVerb task.", v24, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    return 0;
  }

  else
  {

    v6 = sub_269423FA8();
    sub_269424378();
    v7 = OUTLINED_FUNCTION_0_14();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_33_1();
      v9 = swift_slowAlloc();
      *v9 = 0;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v10, v11, v12, v13, v9, 2u);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    v14 = sub_269423C78();
    OUTLINED_FUNCTION_1_9();
    sub_269409D3C(v15, v16);
    swift_allocError();
    *v17 = 0xD00000000000003ALL;
    v17[1] = 0x800000026942A100;
    v18 = *MEMORY[0x277D61E00];
    OUTLINED_FUNCTION_20_5(v14);
    (*(v19 + 104))();
    swift_willThrow();
  }

  return v14;
}

void *sub_269406B1C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = 0x65736C6166;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_6_2();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v264 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50();
  v283 = v16;
  v17 = v2 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_log;
  v18 = sub_269423FA8();
  sub_269424368();
  v19 = OUTLINED_FUNCTION_0_14();
  v21 = os_log_type_enabled(v19, v20);
  v276 = v17;
  LODWORD(v274) = a2;
  if (v21)
  {
    v22 = a2;
    v23 = OUTLINED_FUNCTION_17_0();
    v24 = OUTLINED_FUNCTION_16_0();
    v288 = v24;
    *v23 = 136315138;
    if (v22)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v22)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_2693DB6E0(v25, v26, &v288);
    v17 = v276;

    *(v23 + 4) = v27;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v28, v29, v30, v31, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  OUTLINED_FUNCTION_33_3();
  v32 = v288;
  if (v288)
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v33 = sub_269423888();
    OUTLINED_FUNCTION_44_1();
    v292 = v33;
    v293 = v32;
    v278 = v32;
  }

  else
  {
    v33 = 0;
    v278 = 0;
    v292 = 0;
    v293 = 0;
  }

  OUTLINED_FUNCTION_33_3();
  if (v288)
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v34 = sub_269411B2C();

    v35 = v34 & 1;
  }

  else
  {
    v35 = 2;
  }

  v277 = v35;
  v36 = sub_269423FA8();
  v37 = sub_269424368();
  v38 = OUTLINED_FUNCTION_9_7();
  v40 = os_log_type_enabled(v38, v39);
  v275 = v2;
  v282 = v33;
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_17_0();
    v42 = OUTLINED_FUNCTION_16_0();
    v288 = v42;
    *v41 = 136315138;
    LOBYTE(v284[0]) = v277;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF8, &qword_269427F98);
    v43 = sub_269424128();
    v45 = sub_2693DB6E0(v43, v44, &v288);
    v17 = v276;

    *(v41 + 4) = v45;
    v3 = v275;
    _os_log_impl(&dword_2693C9000, v36, v37, "Phrase has profanity: %s.", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  OUTLINED_FUNCTION_33_3();
  v46 = v288;
  if (v288)
  {
    sub_2694237F8();
    OUTLINED_FUNCTION_21_4();
    sub_2694238A8();
    OUTLINED_FUNCTION_23_4();
  }

  v47 = sub_269409580(v46);
  v49 = v48;

  if (v49)
  {
    v290 = v47;
    v291 = v49;
    v281 = v49;
  }

  else
  {
    OUTLINED_FUNCTION_33_3();
    if (v288 && (sub_2694237F8(), OUTLINED_FUNCTION_23_4(), v46))
    {
      sub_2694238A8();
      OUTLINED_FUNCTION_21_4();
      v47 = sub_2694237B8();
      OUTLINED_FUNCTION_44_1();
      v290 = v47;
      v291 = v46;
      v281 = v46;
    }

    else
    {
      v47 = 0;
      v281 = 0;
      v290 = 0;
      v291 = 0;
    }
  }

  v50 = a1;
  v280 = sub_269411EA4();
  sub_269423788();
  if (v288)
  {
    v50 = v288;
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v51 = sub_2694238A8();
  }

  else
  {
    v51 = 0;
  }

  sub_269409580(v51);
  OUTLINED_FUNCTION_74();

  if (!v50)
  {
    OUTLINED_FUNCTION_33_3();
    if (v288 && (v50 = v288, sub_2694237E8(), OUTLINED_FUNCTION_21_4(), v52 = sub_2694238A8(), , v52))
    {
      v50 = v52;
      sub_2694237B8();
      OUTLINED_FUNCTION_74();
    }

    else
    {

      OUTLINED_FUNCTION_24_3();
    }
  }

  v53._countAndFlagsBits = OUTLINED_FUNCTION_34_1();
  TranslationLanguages.init(rawValue:)(v53);
  OUTLINED_FUNCTION_5_1();
  v279 = v47;
  if (v54)
  {
    OUTLINED_FUNCTION_33_3();
    if (v288)
    {
      v50 = v288;
      sub_2694237E8();
      OUTLINED_FUNCTION_21_4();
      v55 = sub_2694238A8();
    }

    else
    {
      v55 = 0;
    }

    sub_269409580(v55);
    OUTLINED_FUNCTION_74();

    if (!v50)
    {
      OUTLINED_FUNCTION_33_3();
      if (v288 && (sub_2694237E8(), OUTLINED_FUNCTION_21_4(), v59 = sub_2694238A8(), , v59))
      {
        sub_2694237B8();
        OUTLINED_FUNCTION_74();
      }

      else
      {

        OUTLINED_FUNCTION_24_3();
      }
    }

    OUTLINED_FUNCTION_34_1();
    v60 = sub_2693D8BA0();
    if (v60 == 3)
    {
      v61 = 0;
      v62 = 0;
      goto LABEL_47;
    }

    countAndFlagsBits = sub_2693D8390(v60);
  }

  else
  {
    v58 = TranslationLanguages.getLocaleString()();
    object = v58._object;
    countAndFlagsBits = v58._countAndFlagsBits;
  }

  v61 = countAndFlagsBits;
  v62 = object;
LABEL_47:
  v63 = *&v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider + 24];
  v271 = &v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider];
  v64 = *__swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider], v63);
  v65 = v283;
  sub_269413780(v283);
  sub_269409C70(v65, v15);
  v66 = sub_269424038();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v66);
  v266 = v66;
  if (EnumTagSinglePayload == 1)
  {
    sub_269409CE0(v15, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5(v66);
    (*(v68 + 8))(v15, v66);
  }

  sub_269423808();
  OUTLINED_FUNCTION_43_1();

  v69 = v288;
  v70 = sub_2694099B4();
  v71 = sub_269423FA8();
  v72 = sub_269424368();
  v73 = OUTLINED_FUNCTION_16_6();
  v75 = os_log_type_enabled(v73, v74);
  v273 = v70;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v265 = v61;
    v77 = v62;
    v78 = v69;
    v79 = v76;
    v284[0] = swift_slowAlloc();
    *v79 = 136315906;
    if (v70)
    {
      v80 = 1702195828;
    }

    else
    {
      v80 = 0x65736C6166;
    }

    if (v70)
    {
      v81 = 0xE400000000000000;
    }

    else
    {
      v81 = 0xE500000000000000;
    }

    v82 = sub_2693DB6E0(v80, v81, v284);

    *(v79 + 4) = v82;
    *(v79 + 12) = 2080;
    v288 = v279;
    v289 = v281;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
    v83 = sub_269424128();
    v85 = sub_2693DB6E0(v83, v84, v284);

    *(v79 + 14) = v85;
    *(v79 + 22) = 2080;
    v288 = v282;
    v289 = v278;

    v86 = sub_269424128();
    v88 = sub_2693DB6E0(v86, v87, v284);

    *(v79 + 24) = v88;
    *(v79 + 32) = 2080;
    v17 = v276;
    LOBYTE(v288) = v280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310000, &qword_269427FA0);
    v89 = sub_269424128();
    v6 = v90;
    v91 = sub_2693DB6E0(v89, v90, v284);

    *(v79 + 34) = v91;
    v3 = v275;
    _os_log_impl(&dword_2693C9000, v71, v72, "Siri same session: %s, targetLanguage: %s, phrase: %s, reference: %s", v79, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    v69 = v78;
    v62 = v77;
    v61 = v265;
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  LODWORD(v92) = v277;
  if (v274)
  {
    v93 = v278;
    v94 = v281;
    if (v281)
    {
      if (v278)
      {
        goto LABEL_189;
      }

LABEL_111:
      OUTLINED_FUNCTION_4_8();
      if ((v155 & 1) == 0)
      {
        v93 = 0;
        goto LABEL_152;
      }

      v281 = v94;
      v156 = sub_269423FA8();
      sub_269424368();
      v157 = OUTLINED_FUNCTION_0_14();
      if (os_log_type_enabled(v157, v158))
      {
        OUTLINED_FUNCTION_33_1();
        v159 = swift_slowAlloc();
        OUTLINED_FUNCTION_20_0(v159);
        OUTLINED_FUNCTION_9_2(&dword_2693C9000, v160, v161, "SRR fallback, intentPhrase missing, reference present or following session..");
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
      }

      OUTLINED_FUNCTION_30_2();
      v162 = v270;
      sub_269413780(v270);
      if (v69)
      {

        v163 = sub_269423FA8();
        sub_269424368();
        v164 = OUTLINED_FUNCTION_0_14();
        if (os_log_type_enabled(v164, v165))
        {
          OUTLINED_FUNCTION_33_1();
          v166 = swift_slowAlloc();
          OUTLINED_FUNCTION_20_0(v166);
          OUTLINED_FUNCTION_9_2(&dword_2693C9000, v167, v168, "Got SRR uso entity.");
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        if (sub_2694237E8())
        {
          sub_269423888();
          OUTLINED_FUNCTION_40_0();
          v170 = v169;
        }

        else
        {
          v170 = 0;
          v93 = 0;
        }

        OUTLINED_FUNCTION_34_3();
        v282 = v170;
        v292 = v170;
        v293 = v93;

        v174 = sub_2694237E8();
        if (v174)
        {
          v175 = v174;
          sub_269423898();
          OUTLINED_FUNCTION_21_4();
          v6 = sub_269423778();
          OUTLINED_FUNCTION_44_1();
          v94 = v281;
          if (v62)
          {

            goto LABEL_145;
          }

          v6 = static TranslationLanguages.getByLocale(locale:)(v6, v175);

          if (v6 == 23)
          {

            v61 = 0;
            v62 = 0;
LABEL_144:
            v94 = v281;
LABEL_145:
            v192 = v270;
            if (v94)
            {
              OUTLINED_FUNCTION_11_6();
              if (v193)
              {
                if (v93)
                {
                  v194 = sub_269423FA8();
                  sub_269424368();
                  v195 = OUTLINED_FUNCTION_9_7();
                  if (os_log_type_enabled(v195, v196))
                  {
                    v197 = OUTLINED_FUNCTION_17_0();
                    v276 = v197;
                    v278 = OUTLINED_FUNCTION_16_0();
                    v285 = v278;
                    *v197 = 136315138;
                    v288 = v282;
                    v289 = v93;

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
                    v198 = sub_269424128();
                    v3 = v199;
                    v200 = sub_2693DB6E0(v198, v199, &v285);
                    OUTLINED_FUNCTION_7_4();

                    *(v276 + 1) = v200;
                    OUTLINED_FUNCTION_38_1();
                    _os_log_impl(v201, v202, v203, v204, v205, 0xCu);
                    OUTLINED_FUNCTION_5_10(&v298);
                    OUTLINED_FUNCTION_12_5();
                    MEMORY[0x26D63C8E0]();
                  }

                  v154 = &v296;
LABEL_187:
                  sub_269409CE0(*(v154 - 32), &qword_28030FFF0, &unk_269428490);
                  v95 = 1;
                  goto LABEL_63;
                }
              }
            }

            sub_269409CE0(v192, &qword_28030FFF0, &unk_269428490);
LABEL_152:
            if (!v94)
            {
LABEL_153:
              OUTLINED_FUNCTION_4_8();
              if ((v206 & 1) == 0)
              {
                v95 = 0;
                v94 = 0;
                goto LABEL_190;
              }

              v207 = sub_269423FA8();
              sub_269424368();
              v208 = OUTLINED_FUNCTION_0_14();
              if (os_log_type_enabled(v208, v209))
              {
                OUTLINED_FUNCTION_33_1();
                v210 = swift_slowAlloc();
                OUTLINED_FUNCTION_20_0(v210);
                OUTLINED_FUNCTION_9_2(&dword_2693C9000, v211, v212, "SRR fallback, target language is missing, reference present or following session.");
                OUTLINED_FUNCTION_12_5();
                MEMORY[0x26D63C8E0]();
              }

              OUTLINED_FUNCTION_30_2();
              sub_269413780(v269);
              if (!v69)
              {
                v94 = 0;
LABEL_188:
                sub_269409CE0(v269, &qword_28030FFF0, &unk_269428490);
                goto LABEL_189;
              }

              v213 = sub_269423FA8();
              sub_269424368();
              v214 = OUTLINED_FUNCTION_0_14();
              if (os_log_type_enabled(v214, v215))
              {
                OUTLINED_FUNCTION_33_1();
                v216 = swift_slowAlloc();
                OUTLINED_FUNCTION_20_0(v216);
                OUTLINED_FUNCTION_9_2(&dword_2693C9000, v217, v218, "Got SRR uso entity.");
                OUTLINED_FUNCTION_12_5();
                MEMORY[0x26D63C8E0]();
              }

              if (sub_2694237F8() && (sub_2694238A8(), OUTLINED_FUNCTION_37_2(), v6))
              {
                sub_2694237B8();
                OUTLINED_FUNCTION_74();
              }

              else
              {
                v219 = sub_2694237F8();
                if (v219)
                {
                  v6 = v219;
                  sub_269423888();
                  OUTLINED_FUNCTION_74();
                }

                else
                {
                  OUTLINED_FUNCTION_45_1();
                  OUTLINED_FUNCTION_24_3();
                }
              }

              v220._countAndFlagsBits = OUTLINED_FUNCTION_34_1();
              TranslationLanguages.init(rawValue:)(v220);
              OUTLINED_FUNCTION_5_1();
              v278 = v93;
              if (v54)
              {
                if (sub_2694237F8() && (sub_269423898(), OUTLINED_FUNCTION_37_2(), v6))
                {
                  sub_269423778();
                  OUTLINED_FUNCTION_74();
                }

                else
                {

                  OUTLINED_FUNCTION_24_3();
                }

                v222 = OUTLINED_FUNCTION_34_1();
                static TranslationLanguages.getByLocale(locale:)(v222, v223);
                OUTLINED_FUNCTION_18_7();
                if (v6 == 23)
                {
                  type metadata accessor for NLConverter();
                  v224 = sub_26940D5B8(&v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState]);
                  if (v225)
                  {
                    v226 = v225;
                  }

                  else
                  {
                    v224 = 0;
                    v226 = 0xE000000000000000;
                  }

                  static TranslationLanguages.getByLocale(locale:)(v224, v226);
                  OUTLINED_FUNCTION_18_7();
                  v227 = 0;
                  v228 = 0;
LABEL_179:
                  v281 = v228;
                  OUTLINED_FUNCTION_34_3();
                  v290 = v227;
                  v291 = v228;

                  v231 = sub_269423FA8();
                  sub_269424368();
                  v232 = OUTLINED_FUNCTION_9_7();
                  v234 = os_log_type_enabled(v232, v233);
                  v279 = v227;
                  if (v234)
                  {
                    v235 = OUTLINED_FUNCTION_17_0();
                    v276 = OUTLINED_FUNCTION_16_0();
                    v287 = v276;
                    *v235 = 136315138;
                    v285 = v227;
                    v286 = v281;

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
                    v236 = sub_269424128();
                    v3 = v237;
                    v238 = sub_2693DB6E0(v236, v237, &v287);
                    OUTLINED_FUNCTION_7_4();

                    *(v235 + 4) = v238;
                    OUTLINED_FUNCTION_38_1();
                    _os_log_impl(v239, v240, v241, v242, v235, 0xCu);
                    OUTLINED_FUNCTION_5_10(&v297);
                    OUTLINED_FUNCTION_12_5();
                    MEMORY[0x26D63C8E0]();
                  }

                  v93 = v278;
                  v94 = v281;
                  if (v281)
                  {
                    OUTLINED_FUNCTION_11_6();
                    if (v243)
                    {
                      if (v93)
                      {
                        v244 = sub_269423FA8();
                        sub_269424368();
                        v245 = OUTLINED_FUNCTION_9_7();
                        if (os_log_type_enabled(v245, v246))
                        {
                          v247 = OUTLINED_FUNCTION_17_0();
                          v274 = v247;
                          v276 = OUTLINED_FUNCTION_16_0();
                          v286 = v93;
                          v287 = v276;
                          *v247 = 136315138;
                          v285 = v282;

                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
                          v248 = sub_269424128();
                          v3 = v249;
                          v250 = sub_2693DB6E0(v248, v249, &v287);
                          OUTLINED_FUNCTION_7_4();

                          *(v274 + 4) = v250;
                          OUTLINED_FUNCTION_38_1();
                          _os_log_impl(v251, v252, v253, v254, v255, 0xCu);
                          OUTLINED_FUNCTION_5_10(&v297);
                          OUTLINED_FUNCTION_12_5();
                          MEMORY[0x26D63C8E0]();
                        }

                        v154 = &v295;
                        goto LABEL_187;
                      }
                    }
                  }

                  goto LABEL_188;
                }
              }

              else
              {
                LOBYTE(v213) = v221;
              }

              TranslationLanguages.rawValue.getter(v213);
              v227 = v229;
              v228 = v230;
              goto LABEL_179;
            }

LABEL_189:
            v95 = 0;
            goto LABEL_190;
          }

          v191 = TranslationLanguages.getLocaleString()();
          v61 = v191._countAndFlagsBits;
          v62 = v191._object;
        }
      }

      else
      {
        v171 = v162;
        v172 = v267;
        sub_269409C70(v171, v267);
        v173 = v266;
        if (__swift_getEnumTagSinglePayload(v172, 1, v266) == 1)
        {
          sub_269409CE0(v172, &qword_28030FFF0, &unk_269428490);
        }

        else
        {
          sub_269424028();
          OUTLINED_FUNCTION_20_5(v173);
          (*(v176 + 8))(v172, v173);
        }

        v94 = v281;
        sub_2694238B8();
        OUTLINED_FUNCTION_43_1();

        v6 = v288;
        if (!v288)
        {
          v93 = 0;
          goto LABEL_145;
        }

        v177 = sub_269423FA8();
        sub_269424368();
        v178 = OUTLINED_FUNCTION_0_14();
        if (os_log_type_enabled(v178, v179))
        {
          OUTLINED_FUNCTION_33_1();
          v3 = swift_slowAlloc();
          *v3 = 0;
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v180, v181, v182, v183, v3, 2u);
          OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        v184 = sub_269423888();
        v93 = v185;
        OUTLINED_FUNCTION_34_3();
        v292 = v184;
        v293 = v93;

        v282 = v184;
        if (!v62)
        {
          if (!sub_269423898() || (v186 = sub_269423778(), v188 = v187, , !v188))
          {

            v186 = 0;
            v188 = 0xE000000000000000;
          }

          v189 = static TranslationLanguages.getByLocale(locale:)(v186, v188);

          if (v189 == 23)
          {

            v61 = 0;
            v62 = 0;
          }

          else
          {
            v190 = TranslationLanguages.getLocaleString()();
            v61 = v190._countAndFlagsBits;
            v62 = v190._object;
          }

          v3 = v275;
          goto LABEL_144;
        }
      }

      goto LABEL_144;
    }

    if (v278)
    {
      goto LABEL_153;
    }

    OUTLINED_FUNCTION_4_8();
    if ((v96 & 1) == 0)
    {
      v94 = 0;
      goto LABEL_111;
    }

    v97 = sub_269423FA8();
    sub_269424368();
    v98 = OUTLINED_FUNCTION_0_14();
    if (os_log_type_enabled(v98, v99))
    {
      OUTLINED_FUNCTION_33_1();
      v100 = swift_slowAlloc();
      OUTLINED_FUNCTION_20_0(v100);
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v101, v102, "SRR fallback when target language and phrase aren't known. Reference is present or following session..");
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    OUTLINED_FUNCTION_30_2();
    sub_269413780(v268);
    if (!v69)
    {
      v94 = 0;
LABEL_110:
      sub_269409CE0(v268, &qword_28030FFF0, &unk_269428490);
      goto LABEL_111;
    }

    v103 = sub_269423FA8();
    sub_269424368();
    v104 = OUTLINED_FUNCTION_0_14();
    if (os_log_type_enabled(v104, v105))
    {
      OUTLINED_FUNCTION_33_1();
      v106 = swift_slowAlloc();
      OUTLINED_FUNCTION_20_0(v106);
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v107, v108, "Got SRR entity.");
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (sub_2694237F8() && (sub_2694238A8(), OUTLINED_FUNCTION_37_2(), v6))
    {
      sub_2694237B8();
      OUTLINED_FUNCTION_74();
    }

    else
    {
      v109 = sub_2694237F8();
      if (v109)
      {
        v6 = v109;
        sub_269423888();
        OUTLINED_FUNCTION_74();
      }

      else
      {
        OUTLINED_FUNCTION_45_1();
        OUTLINED_FUNCTION_24_3();
      }
    }

    v110._countAndFlagsBits = OUTLINED_FUNCTION_34_1();
    TranslationLanguages.init(rawValue:)(v110);
    OUTLINED_FUNCTION_5_1();
    if (v54)
    {
      if (sub_2694237F8() && (sub_269423898(), OUTLINED_FUNCTION_37_2(), v6))
      {
        sub_269423778();
        OUTLINED_FUNCTION_74();
      }

      else
      {

        OUTLINED_FUNCTION_24_3();
      }

      v112 = OUTLINED_FUNCTION_34_1();
      static TranslationLanguages.getByLocale(locale:)(v112, v113);
      OUTLINED_FUNCTION_18_7();
      if (v6 == 23)
      {
        type metadata accessor for NLConverter();
        v114 = sub_26940D5B8(&v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState]);
        if (v115)
        {
          v116 = v115;
        }

        else
        {
          v114 = 0;
          v116 = 0xE000000000000000;
        }

        LOBYTE(v103) = static TranslationLanguages.getByLocale(locale:)(v114, v116);

        v117 = 0;
        v118 = 0;
        if (v103 == 23)
        {
          goto LABEL_91;
        }
      }
    }

    else
    {
      LOBYTE(v103) = v111;
    }

    TranslationLanguages.rawValue.getter(v103);
    v117 = v119;
    v118 = v120;
LABEL_91:
    OUTLINED_FUNCTION_34_3();
    v290 = v117;
    v291 = v118;

    v93 = v118;
    v121 = sub_269423FA8();
    sub_269424368();
    v122 = OUTLINED_FUNCTION_0_14();
    v124 = os_log_type_enabled(v122, v123);
    v279 = v117;
    v281 = v118;
    if (v124)
    {
      v125 = OUTLINED_FUNCTION_17_0();
      v126 = OUTLINED_FUNCTION_16_0();
      v265 = v61;
      v278 = v62;
      v127 = v126;
      v284[0] = v126;
      *v125 = 136315138;
      v128 = v125;
      v288 = v117;
      v289 = v118;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v129 = sub_269424128();
      v3 = v130;
      v92 = sub_2693DB6E0(v129, v130, v284);
      OUTLINED_FUNCTION_7_4();

      *(v128 + 1) = v92;
      LODWORD(v92) = v277;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v131, v132, v133, v134, v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v127);
      v62 = v278;
      v61 = v265;
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (!sub_2694237E8() || (sub_269423898(), OUTLINED_FUNCTION_37_2(), !v117) || (v136 = sub_269423778(), v138 = v137, , !v138))
    {

      v136 = 0;
      v138 = 0xE000000000000000;
    }

    v6 = static TranslationLanguages.getByLocale(locale:)(v136, v138);

    if (v6 != 23)
    {
      v139 = TranslationLanguages.getLocaleString()();
      v61 = v139._countAndFlagsBits;

      v62 = v139._object;
    }

    v94 = v281;
    if (v281)
    {
      OUTLINED_FUNCTION_11_6();
      if (v140)
      {
        if (sub_2694237E8())
        {

          if (!sub_2694237E8() || (v141 = sub_269423888(), OUTLINED_FUNCTION_40_0(), , !v93))
          {

            v141 = 0;
            v93 = 0xE000000000000000;
          }

          OUTLINED_FUNCTION_34_3();
          v292 = v141;
          v293 = v93;

          v142 = sub_269423FA8();
          sub_269424368();
          v143 = OUTLINED_FUNCTION_0_14();
          v145 = os_log_type_enabled(v143, v144);
          v282 = v141;
          if (v145)
          {
            v92 = OUTLINED_FUNCTION_17_0();
            v278 = OUTLINED_FUNCTION_16_0();
            v285 = v278;
            *v92 = 136315138;
            v284[0] = v141;
            v284[1] = v93;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
            v146 = sub_269424128();
            v3 = v147;
            v148 = v93;
            v149 = sub_2693DB6E0(v146, v147, &v285);
            OUTLINED_FUNCTION_7_4();

            *(v92 + 4) = v149;
            v93 = v148;
            OUTLINED_FUNCTION_38_1();
            _os_log_impl(v150, v151, v152, v153, v92, 0xCu);
            OUTLINED_FUNCTION_5_10(&v298);
            OUTLINED_FUNCTION_12_5();
            MEMORY[0x26D63C8E0]();
          }

          v154 = &v294;
          goto LABEL_187;
        }

        v94 = v281;
      }
    }

    goto LABEL_110;
  }

  v95 = 0;
  v93 = v278;
LABEL_63:
  v94 = v281;
LABEL_190:
  if (v92 == 2 || (v92 & 1) == 0)
  {
    v256 = v94;
    v257 = MEMORY[0x277D84F90];
  }

  else
  {
    v256 = v94;
    v257 = &unk_2879F3F20;
  }

  type metadata accessor for NLConverter();
  v258 = &v3[OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState];

  LOBYTE(v263) = 1;
  sub_26940D8A8(v279, v256, v282, v93, v61, v62, v280, v95, v263, v257, v258, v17, v264, v265, v266, v267, v268, v269, v270, v271, v272, v274, v275, v276);
  v260 = v259;

  if (v62)
  {

    sub_269409CE0(v283, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    v261 = [v260 sourceLanguage];
    if (v261)
    {

      sub_269409CE0(v283, &qword_28030FFF0, &unk_269428490);
    }

    else
    {
      sub_269409CE0(v283, &qword_28030FFF0, &unk_269428490);
    }
  }

  return v260;
}

void *sub_2694083A0(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_10();
  v167 = v6 - v7;
  OUTLINED_FUNCTION_21_2();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v167 - v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39();
  v172 = v12;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39();
  v168 = v14;
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_50();
  v169 = v16;
  v174 = v2;
  v17 = v2 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_log;
  v18 = sub_269423FA8();
  v19 = sub_269424368();
  v20 = OUTLINED_FUNCTION_16_6();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_33_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_35_2(&dword_2693C9000, v22, v19, "Converting to noVerb task.");
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v170 = v11;

  OUTLINED_FUNCTION_29_1();
  if (v178)
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v23 = sub_269423888();
    OUTLINED_FUNCTION_40_0();

    v182 = v23;
    v183 = v19;
  }

  else
  {
    v23 = 0;
    v19 = 0;
    v182 = 0;
    v183 = 0;
  }

  OUTLINED_FUNCTION_29_1();
  v24 = v178;
  v175 = v23;
  if (v178)
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    v24 = sub_269411B2C();

    v25 = v24 & 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = sub_269423FA8();
  v27 = sub_269424368();
  v28 = OUTLINED_FUNCTION_16_6();
  v30 = os_log_type_enabled(v28, v29);
  v177 = v17;
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_17_0();
    v24 = OUTLINED_FUNCTION_16_0();
    v178 = v24;
    *v31 = 136315138;
    LOBYTE(v180[0]) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF8, &qword_269427F98);
    v32 = sub_269424128();
    v34 = sub_2693DB6E0(v32, v33, &v178);

    *(v31 + 4) = v34;
    _os_log_impl(&dword_2693C9000, v26, v27, "Phrase has profanity: %s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  OUTLINED_FUNCTION_29_1();
  v35 = v178;
  if (v178)
  {
    sub_2694237F8();
    OUTLINED_FUNCTION_23_4();
    if (v24)
    {
      v35 = v24;
      sub_2694238A8();
      OUTLINED_FUNCTION_21_4();
    }

    else
    {
      v35 = 0;
    }
  }

  v36 = sub_269409580(v35);
  v38 = v37;

  if (v38)
  {
    v176 = v36;
  }

  else
  {
    OUTLINED_FUNCTION_29_1();
    v35 = v178;
    if (v178 && (sub_2694237F8(), OUTLINED_FUNCTION_23_4(), v36))
    {
      v35 = v36;
      sub_2694238A8();
      OUTLINED_FUNCTION_21_4();
      v176 = sub_2694237B8();
      v38 = v39;
    }

    else
    {
      v176 = 0;
      v38 = 0;
    }
  }

  OUTLINED_FUNCTION_29_1();
  if (v178)
  {
    v35 = v178;
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    sub_2694236D8();
    OUTLINED_FUNCTION_23_4();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  OUTLINED_FUNCTION_29_1();
  v41 = v178;
  if (v178)
  {
    v35 = v178;
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    sub_2694238A8();
    OUTLINED_FUNCTION_23_4();
  }

  sub_269409580(v41);
  OUTLINED_FUNCTION_25_3();
  if (!v27)
  {
    OUTLINED_FUNCTION_29_1();
    if (v178)
    {
      sub_2694237E8();
      OUTLINED_FUNCTION_21_4();
      sub_2694238A8();
      OUTLINED_FUNCTION_23_4();
      sub_2694237B8();
      OUTLINED_FUNCTION_25_3();
    }

    v35 = 0;
    v27 = 0xE000000000000000;
  }

  v42._countAndFlagsBits = v35;
  v42._object = v27;
  TranslationLanguages.init(rawValue:)(v42);
  OUTLINED_FUNCTION_5_1();
  if (v43)
  {
    OUTLINED_FUNCTION_29_1();
    v44 = v178;
    if (v178)
    {
      sub_2694237E8();
      OUTLINED_FUNCTION_21_4();
      sub_2694238A8();
      OUTLINED_FUNCTION_23_4();
    }

    sub_269409580(v44);
    OUTLINED_FUNCTION_25_3();
    v48 = sub_2693D8BA0();
    if (v48 == 3)
    {
      v173 = 0;
      v49 = 0;
      if (a2)
      {
        goto LABEL_39;
      }

LABEL_36:
      v50 = 0;
      v51 = v174;
      goto LABEL_51;
    }

    countAndFlagsBits = sub_2693D8390(v48);
  }

  else
  {
    v47 = TranslationLanguages.getLocaleString()();
    object = v47._object;
    countAndFlagsBits = v47._countAndFlagsBits;
  }

  v173 = countAndFlagsBits;
  v49 = object;
  if ((a2 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_39:
  HIDWORD(v171) = v25;
  if (v38)
  {
    if (v19)
    {
      v50 = 0;
LABEL_49:
      v51 = v174;
      goto LABEL_50;
    }

    v51 = v174;
    if (v40)
    {
      v50 = 0;
      v19 = 0;
LABEL_50:
      v25 = HIDWORD(v171);
      goto LABEL_51;
    }

    goto LABEL_115;
  }

  if (v19)
  {
    v50 = 0;
LABEL_48:
    v38 = 0;
    goto LABEL_49;
  }

  if (v40)
  {
    v50 = 0;
    v19 = 0;
    goto LABEL_48;
  }

  LODWORD(v60) = v177;
  v61 = sub_269423FA8();
  v62 = sub_269424368();
  v63 = OUTLINED_FUNCTION_16_6();
  if (os_log_type_enabled(v63, v64))
  {
    OUTLINED_FUNCTION_33_1();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_35_2(&dword_2693C9000, v65, v62, "SRR fallback when target language and phrase aren't known. Reference is present.");
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v66 = *__swift_project_boxed_opaque_existential_1((v174 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider), *(v174 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider + 24));
  v67 = v169;
  sub_269413780(v169);
  v68 = v67;
  v69 = v168;
  sub_269409C70(v68, v168);
  v70 = sub_269424038();
  if (__swift_getEnumTagSinglePayload(v69, 1, v70) == 1)
  {
    sub_269409CE0(v69, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5(v70);
    (*(v71 + 8))(v69, v70);
  }

  sub_269423808();
  OUTLINED_FUNCTION_22_4();

  v38 = v178;
  v51 = v174;
  if (v178)
  {
    v72 = sub_269423FA8();
    v73 = sub_269424368();
    v74 = OUTLINED_FUNCTION_16_6();
    if (os_log_type_enabled(v74, v75))
    {
      OUTLINED_FUNCTION_33_1();
      v69 = swift_slowAlloc();
      *v69 = 0;
      OUTLINED_FUNCTION_35_2(&dword_2693C9000, v76, v73, "Got SRR entity.");
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (!sub_2694237F8() || (sub_2694238A8(), OUTLINED_FUNCTION_23_4(), !v69) || (v77 = sub_2694237B8(), v79 = v78, , !v79))
    {
      v80 = sub_2694237F8();
      if (v80 && (v69 = v80, v77 = sub_269423888(), v79 = v81, , v79))
      {
      }

      else
      {
        OUTLINED_FUNCTION_45_1();
        v77 = 0;
        v79 = 0xE000000000000000;
      }
    }

    v82._countAndFlagsBits = v77;
    v82._object = v79;
    TranslationLanguages.init(rawValue:)(v82);
    OUTLINED_FUNCTION_5_1();
    v168 = v38;
    if (v43)
    {
      if (!sub_2694237F8() || (sub_269423898(), OUTLINED_FUNCTION_23_4(), !v69) || (v84 = sub_269423778(), v86 = v85, , !v86))
      {

        v84 = 0;
        v86 = 0xE000000000000000;
      }

      static TranslationLanguages.getByLocale(locale:)(v84, v86);
      OUTLINED_FUNCTION_18_7();
      if (v60 == 23)
      {
        type metadata accessor for NLConverter();
        v87 = sub_26940D5B8((v51 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState));
        if (v88)
        {
          v89 = v88;
        }

        else
        {
          v87 = 0;
          v89 = 0xE000000000000000;
        }

        static TranslationLanguages.getByLocale(locale:)(v87, v89);
        OUTLINED_FUNCTION_18_7();

        v91 = 0;
        v38 = 0;
      }

      else
      {
        TranslationLanguages.rawValue.getter(v69);
        v91 = v93;
        v38 = v94;
      }

      LODWORD(v60) = v177;
    }

    else
    {
      TranslationLanguages.rawValue.getter(v83);
      v91 = v90;
      v38 = v92;
    }

    v95 = sub_269423FA8();
    v96 = sub_269424368();
    v97 = OUTLINED_FUNCTION_16_6();
    v99 = os_log_type_enabled(v97, v98);
    v176 = v91;
    if (v99)
    {
      v100 = OUTLINED_FUNCTION_17_0();
      v101 = OUTLINED_FUNCTION_16_0();
      v180[0] = v101;
      *v100 = 136315138;
      v178 = v91;
      v179 = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
      v102 = sub_269424128();
      v91 = v103;
      v60 = sub_2693DB6E0(v102, v103, v180);

      *(v100 + 4) = v60;
      _os_log_impl(&dword_2693C9000, v95, v96, "Target Language: %s.", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
      v51 = v174;
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (!sub_2694237E8() || (sub_269423898(), OUTLINED_FUNCTION_23_4(), !v91) || (v104 = sub_269423778(), v106 = v105, , !v106))
    {

      v104 = 0;
      v106 = 0xE000000000000000;
    }

    static TranslationLanguages.getByLocale(locale:)(v104, v106);
    OUTLINED_FUNCTION_18_7();
    if (v60 != 23)
    {
      v107 = TranslationLanguages.getLocaleString()();
      v173 = v107._countAndFlagsBits;

      v49 = v107._object;
    }

    if (v38)
    {
      v108 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v108 = v176 & 0xFFFFFFFFFFFFLL;
      }

      if (!v108)
      {
        sub_269409CE0(v169, &qword_28030FFF0, &unk_269428490);

        goto LABEL_115;
      }

      if (sub_2694237E8())
      {

        if (sub_2694237E8())
        {
          sub_269423888();
          OUTLINED_FUNCTION_40_0();
        }

        OUTLINED_FUNCTION_45_1();
        v19 = 0xE000000000000000;
        v182 = 0;
        v183 = 0xE000000000000000;
        v109 = sub_269423FA8();
        v110 = sub_269424368();
        v111 = OUTLINED_FUNCTION_16_6();
        v113 = os_log_type_enabled(v111, v112);
        v175 = 0;
        if (v113)
        {
          v114 = OUTLINED_FUNCTION_17_0();
          v115 = OUTLINED_FUNCTION_16_0();
          v180[0] = v115;
          *v114 = 136315138;
          v178 = 0;
          v179 = 0xE000000000000000;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
          v116 = sub_269424128();
          v118 = sub_2693DB6E0(v116, v117, v180);

          *(v114 + 4) = v118;
          _os_log_impl(&dword_2693C9000, v109, v110, "Setting translateToSourceLanguage to TRUE and intentPhrase is %s.", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v115);
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
          v51 = v174;
          OUTLINED_FUNCTION_12_5();
          MEMORY[0x26D63C8E0]();
        }

        sub_269409CE0(v169, &qword_28030FFF0, &unk_269428490);
        v50 = 1;
        goto LABEL_50;
      }
    }
  }

  sub_269409CE0(v169, &qword_28030FFF0, &unk_269428490);
LABEL_115:
  v119 = sub_269423FA8();
  sub_269424368();
  v120 = OUTLINED_FUNCTION_0_14();
  if (os_log_type_enabled(v120, v121))
  {
    OUTLINED_FUNCTION_33_1();
    v122 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v122);
    OUTLINED_FUNCTION_9_2(&dword_2693C9000, v123, v124, "SRR fallback, intentPhrase missing, reference present.");
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v125 = *__swift_project_boxed_opaque_existential_1((v51 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider), *(v51 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider + 24));
  v126 = v172;
  sub_269413780(v172);
  v127 = v170;
  sub_269409C70(v126, v170);
  v128 = sub_269424038();
  if (__swift_getEnumTagSinglePayload(v127, 1, v128) == 1)
  {
    sub_269409CE0(v127, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5(v128);
    (*(v129 + 8))(v127, v128);
  }

  v25 = HIDWORD(v171);
  sub_269423808();
  OUTLINED_FUNCTION_22_4();

  if (v178)
  {
    v130 = sub_269423FA8();
    sub_269424368();
    v131 = OUTLINED_FUNCTION_0_14();
    if (os_log_type_enabled(v131, v132))
    {
      OUTLINED_FUNCTION_33_1();
      v133 = swift_slowAlloc();
      OUTLINED_FUNCTION_20_0(v133);
      OUTLINED_FUNCTION_9_2(&dword_2693C9000, v134, v135, "Got SRR uso entity.");
      OUTLINED_FUNCTION_12_5();
      MEMORY[0x26D63C8E0]();
    }

    if (sub_2694237E8())
    {
      v136 = sub_269423888();
      OUTLINED_FUNCTION_44_1();
    }

    else
    {
      v136 = 0;
      v130 = 0;
    }

    OUTLINED_FUNCTION_34_3();
    v175 = v136;
    v182 = v136;
    v183 = v130;

    if (!sub_2694237E8() || (v138 = sub_269423898(), , !v138) || (v139 = sub_269423778(), v141 = v140, , !v141))
    {

LABEL_149:
      v25 = HIDWORD(v171);
      goto LABEL_150;
    }

    v25 = HIDWORD(v171);
    if (v49)
    {

      goto LABEL_139;
    }

    v153 = v139;
LABEL_146:
    v154 = static TranslationLanguages.getByLocale(locale:)(v153, v141);

    if (v154 == 23)
    {

      v173 = 0;
      v49 = 0;
    }

    else
    {
      v155 = TranslationLanguages.getLocaleString()();
      v173 = v155._countAndFlagsBits;
      v49 = v155._object;
    }

    goto LABEL_149;
  }

  v137 = v167;
  sub_269409C70(v172, v167);
  if (__swift_getEnumTagSinglePayload(v137, 1, v128) == 1)
  {
    sub_269409CE0(v137, &qword_28030FFF0, &unk_269428490);
  }

  else
  {
    sub_269424028();
    OUTLINED_FUNCTION_20_5(v128);
    (*(v142 + 8))(v137, v128);
  }

  sub_2694238B8();
  OUTLINED_FUNCTION_22_4();

  if (!v178)
  {
    v130 = 0;
    goto LABEL_150;
  }

  v143 = sub_269423FA8();
  sub_269424368();
  v144 = OUTLINED_FUNCTION_0_14();
  if (os_log_type_enabled(v144, v145))
  {
    OUTLINED_FUNCTION_33_1();
    v146 = swift_slowAlloc();
    OUTLINED_FUNCTION_20_0(v146);
    OUTLINED_FUNCTION_9_2(&dword_2693C9000, v147, v148, "Got SRR localized USO entity.");
    OUTLINED_FUNCTION_12_5();
    MEMORY[0x26D63C8E0]();
  }

  v149 = sub_269423888();
  v130 = v150;
  OUTLINED_FUNCTION_34_3();
  v175 = v149;
  v182 = v149;
  v183 = v130;

  if (!v49)
  {
    if (!sub_269423898() || (v151 = sub_269423778(), v141 = v152, , !v141))
    {

      v151 = 0;
      v141 = 0xE000000000000000;
    }

    v153 = v151;
    goto LABEL_146;
  }

LABEL_139:

  if (!v38)
  {
    goto LABEL_158;
  }

LABEL_150:
  v156 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v156 = v176 & 0xFFFFFFFFFFFFLL;
  }

  if (v156)
  {
    if (v130)
    {
      v157 = sub_269423FA8();
      v158 = sub_269424368();
      v159 = OUTLINED_FUNCTION_16_6();
      if (os_log_type_enabled(v159, v160))
      {
        v161 = OUTLINED_FUNCTION_17_0();
        v162 = OUTLINED_FUNCTION_16_0();
        v180[1] = v130;
        v181 = v162;
        *v161 = 136315138;
        v180[0] = v175;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310140, &qword_269427110);
        v163 = sub_269424128();
        v165 = sub_2693DB6E0(v163, v164, &v181);

        *(v161 + 4) = v165;
        v51 = v174;
        _os_log_impl(&dword_2693C9000, v157, v158, "Setting translateToSourceLanguage to TRUE based on localized uso entity and intentPhrase is %s.", v161, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v162);
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
        OUTLINED_FUNCTION_12_5();
        MEMORY[0x26D63C8E0]();
      }

      sub_269409CE0(v172, &qword_28030FFF0, &unk_269428490);
      v50 = 1;
      v19 = v130;
      goto LABEL_50;
    }

    sub_269409CE0(v172, &qword_28030FFF0, &unk_269428490);
    v50 = 0;
    v19 = 0;
  }

  else
  {
LABEL_158:
    sub_269409CE0(v172, &qword_28030FFF0, &unk_269428490);
    v50 = 0;
    v19 = v130;
  }

LABEL_51:

  sub_2694235E8();
  if (v180[0])
  {
    sub_2694237E8();
    OUTLINED_FUNCTION_21_4();
    sub_2694236D8();
    OUTLINED_FUNCTION_23_4();

    v52 = 0;
  }

  else
  {
    v52 = 2;
  }

  v53 = v177;
  if (v25 == 2 || (v25 & 1) == 0)
  {
    v54 = MEMORY[0x277D84F90];
  }

  else
  {
    v54 = &unk_2879F3F50;
  }

  type metadata accessor for NLConverter();
  LOBYTE(v166) = 1;
  sub_26940D8A8(v176, v38, v175, v19, v173, v49, v52, v50, v166, v54, v51 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState, v53, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
  v56 = v55;

  if (v49)
  {
  }

  else
  {
    sub_26941C110(v56);
    v58 = v57;

    if (!v58)
    {
      return v56;
    }
  }

  return v56;
}

uint64_t sub_269409580(uint64_t a1)
{
  v2 = sub_269423658();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if (!a1)
  {
    return OUTLINED_FUNCTION_34_1();
  }

  result = sub_2694236E8();
  if (!result)
  {
    return OUTLINED_FUNCTION_34_1();
  }

  v15 = result;
  v24 = *(result + 16);
  if (!v24)
  {
LABEL_13:

    return OUTLINED_FUNCTION_34_1();
  }

  v23 = v13;
  v16 = 0;
  v17 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v16 < *(v15 + 16))
  {
    (*(v5 + 16))(v10, v17 + *(v5 + 72) * v16, v2);
    v18 = sub_269423648();
    if (v19)
    {
      if (v18 == 0x65676175676E616CLL && v19 == 0xE800000000000000)
      {

LABEL_17:

        v22 = v23;
        (*(v5 + 32))(v23, v10, v2);
        sub_269423638();
        (*(v5 + 8))(v22, v2);
        sub_269424138();
        OUTLINED_FUNCTION_74();

        return OUTLINED_FUNCTION_34_1();
      }

      v21 = sub_269424688();

      if (v21)
      {
        goto LABEL_17;
      }
    }

    ++v16;
    result = (*(v5 + 8))(v10, v2);
    if (v24 == v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2694097D4()
{
  v1 = OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_log;
  v2 = sub_269423FC8();
  OUTLINED_FUNCTION_20_5(v2);
  (*(v3 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_srrEntityProvider));
  v4 = *(v0 + OBJC_IVAR____TtC22SiriTranslationIntents12NLXConverter_siriEnvironmentUtil);

  return v0;
}

uint64_t sub_269409860()
{
  sub_2694097D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NLXConverter()
{
  result = qword_28030FFD0;
  if (!qword_28030FFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26940990C()
{
  result = sub_269423FC8();
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

BOOL sub_2694099B4()
{
  v0 = sub_269423F48();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  sub_269423C48();
  sub_269423C38();
  sub_269423C18();

  sub_269423F28();

  (*(v3 + 104))(v8, *MEMORY[0x277D55F78], v0);
  sub_269409D3C(&qword_28030FFE8, MEMORY[0x277D55F80]);
  sub_269424258();
  sub_269424258();
  v12 = *(v3 + 8);
  v12(v8, v0);
  v12(v11, v0);
  return v14[1] == v14[0];
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_269409B9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_269409BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269409C2C()
{
  result = qword_28030FFE0;
  if (!qword_28030FFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28030FFE0);
  }

  return result;
}

uint64_t sub_269409C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030FFF0, &unk_269428490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269409CE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_20_5(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_269409D3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void OUTLINED_FUNCTION_5_10(uint64_t a1@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(*(a1 - 256));
  v2 = *(v1 - 268);

  JUMPOUT(0x26D63C8E0);
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  result = v0;
  v3 = *(v1 - 288);
  return result;
}

void OUTLINED_FUNCTION_11_6()
{
  if ((v0 & 0x2000000000000000) == 0)
  {
    v2 = *(v1 - 256) & 0xFFFFFFFFFFFFLL;
  }
}

uint64_t OUTLINED_FUNCTION_18_7()
{
}

uint64_t OUTLINED_FUNCTION_21_4()
{
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return sub_2694237D8();
}

uint64_t OUTLINED_FUNCTION_23_4()
{
}

uint64_t OUTLINED_FUNCTION_25_3()
{
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return sub_2694235E8();
}

uint64_t *OUTLINED_FUNCTION_30_2()
{
  result = __swift_project_boxed_opaque_existential_1(*(v0 - 312), *(*(v0 - 312) + 24));
  v2 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return sub_269423788();
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_35_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_36_3()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_37_2()
{
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return sub_2694237D8();
}

uint64_t OUTLINED_FUNCTION_44_1()
{
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t type metadata accessor for TranslateCATs()
{
  result = qword_280310018;
  if (!qword_280310018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26940A12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v6 = OUTLINED_FUNCTION_12_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_269427440;
  OUTLINED_FUNCTION_0_15();
  v14 = OUTLINED_FUNCTION_5_11(v12, v13);
  sub_26940B480(v14, v10, &qword_28030F610, &qword_269425760);
  v15 = sub_269423DA8();
  OUTLINED_FUNCTION_14_4(v10);
  if (v16)
  {
    sub_269409CE0(v10, &qword_28030F610, &qword_269425760);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v15;
    __swift_allocate_boxed_opaque_existential_0((v11 + 48));
    OUTLINED_FUNCTION_20_5(v15);
    (*(v17 + 32))();
  }

  strcpy((v11 + 80), "languageGroup");
  *(v11 + 94) = -4864;
  *(v11 + 120) = MEMORY[0x277D837D0];
  *(v11 + 96) = a2;
  *(v11 + 104) = a3;

  sub_269423CC8();
}

uint64_t sub_26940A2F0()
{
  OUTLINED_FUNCTION_11_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 97) = v3;
  *(v1 + 96) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v8);
  v10 = *(v9 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26940A39C()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v1 + 64);
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v4 = swift_allocObject();
  *(v1 + 72) = v4;
  *(v4 + 16) = xmmword_269427FB0;
  OUTLINED_FUNCTION_0_15();
  *(v5 + 32) = v6;
  *(v5 + 40) = v0;
  sub_26940B480(v3, v2, &qword_28030F610, &qword_269425760);
  v7 = sub_269423DA8();
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 64), &qword_28030F610, &qword_269425760);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_1_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_6_8();
    v10();
  }

  v11 = *(v1 + 56);
  v12 = *(v1 + 32);
  OUTLINED_FUNCTION_3_10();
  *(v4 + 80) = v13;
  *(v4 + 88) = v0;
  sub_26940B480(v14, v11, &qword_28030F610, &qword_269425760);
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 56), &qword_28030F610, &qword_269425760);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    OUTLINED_FUNCTION_1_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_6_8();
    v17();
  }

  v18 = *(v1 + 40);
  v19 = *(v1 + 96);
  *(v4 + 128) = 0xD000000000000017;
  *(v4 + 136) = 0x800000026942A2C0;
  v20 = MEMORY[0x277D839B0];
  *(v4 + 144) = v19;
  *(v4 + 168) = v20;
  *(v4 + 176) = 0x656D614E707061;
  *(v4 + 184) = 0xE700000000000000;
  v21 = 0;
  if (v18)
  {
    v21 = sub_269423D68();
  }

  else
  {
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  v22 = *(v1 + 97);
  *(v4 + 192) = v18;
  *(v4 + 216) = v21;
  strcpy((v4 + 224), "isButtonLabel");
  *(v4 + 238) = -4864;
  *(v4 + 264) = v20;
  *(v4 + 240) = v22;
  v23 = *(MEMORY[0x277D55BF0] + 4);
  v28 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v24 = swift_task_alloc();
  *(v1 + 80) = v24;
  *v24 = v1;
  v24[1] = sub_26940A678;
  v25 = *(v1 + 48);
  v26 = *(v1 + 16);

  return v28(v26, 0xD00000000000001DLL, 0x800000026942A2E0, v4);
}

uint64_t sub_26940A678()
{
  OUTLINED_FUNCTION_11_0();
  v3 = *(*v1 + 80);
  v2 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v4 = v2;
  v2[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    v9 = v2[8];
    v8 = v2[9];
    v10 = v2[7];

    OUTLINED_FUNCTION_4_6();

    return v11();
  }
}

uint64_t sub_26940A7B8()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  OUTLINED_FUNCTION_4_6();
  v5 = v0[11];

  return v4();
}

uint64_t sub_26940A828(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_13_6(MEMORY[0x277D55BF0]);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26940A8EC;
  v4 = MEMORY[0x277D84F90];

  return v6(a1, 0xD000000000000016, 0x800000026942A2A0, v4);
}

uint64_t sub_26940A8EC()
{
  OUTLINED_FUNCTION_11_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;

  OUTLINED_FUNCTION_4_6();

  return v4();
}

uint64_t sub_26940A9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  v6 = OUTLINED_FUNCTION_12_2(v5);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269425F30;
  OUTLINED_FUNCTION_3_10();
  v17 = OUTLINED_FUNCTION_5_11(v15, v16);
  sub_26940B480(v17, v13, &qword_28030F610, &qword_269425760);
  v18 = sub_269423DA8();
  OUTLINED_FUNCTION_14_4(v13);
  if (v19)
  {
    sub_269409CE0(v13, &qword_28030F610, &qword_269425760);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
  }

  else
  {
    *(v14 + 72) = v18;
    __swift_allocate_boxed_opaque_existential_0((v14 + 48));
    OUTLINED_FUNCTION_20_5(v18);
    (*(v20 + 32))();
  }

  OUTLINED_FUNCTION_0_15();
  *(v14 + 80) = v21;
  *(v14 + 88) = 0xEF7365676175676ELL;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280310028, &unk_269428020);
  *(v14 + 96) = a2;
  *(v14 + 120) = v22;
  *(v14 + 128) = 0x6D6574497473616CLL;
  *(v14 + 136) = 0xE800000000000000;
  sub_26940B480(a3, v11, &qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_14_4(v11);
  if (v19)
  {

    sub_269409CE0(v11, &qword_28030F610, &qword_269425760);
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
  }

  else
  {
    *(v14 + 168) = v18;
    __swift_allocate_boxed_opaque_existential_0((v14 + 144));
    OUTLINED_FUNCTION_20_5(v18);
    (*(v23 + 32))();
  }

  sub_269423CC8();
}

uint64_t sub_26940AC5C()
{
  OUTLINED_FUNCTION_11_0();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 108) = v18;
  *(v1 + 107) = v3;
  *(v1 + 106) = v4;
  *(v1 + 105) = v5;
  *(v1 + 104) = v6;
  *(v1 + 24) = v7;
  *(v1 + 32) = v8;
  *(v1 + 16) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F610, &qword_269425760);
  OUTLINED_FUNCTION_12_2(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26940AD28()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v1 + 72);
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F600, &qword_269425750);
  v4 = swift_allocObject();
  *(v1 + 80) = v4;
  *(v4 + 16) = xmmword_269425E80;
  OUTLINED_FUNCTION_3_10();
  *(v5 + 32) = v6;
  *(v5 + 40) = v0;
  sub_26940B480(v3, v2, &qword_28030F610, &qword_269425760);
  v7 = sub_269423DA8();
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 72), &qword_28030F610, &qword_269425760);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    OUTLINED_FUNCTION_1_2();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_6_8();
    v10();
  }

  v11 = *(v1 + 64);
  v12 = *(v1 + 32);
  OUTLINED_FUNCTION_0_15();
  *(v4 + 80) = v13;
  *(v4 + 88) = v0;
  sub_26940B480(v14, v11, &qword_28030F610, &qword_269425760);
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 64), &qword_28030F610, &qword_269425760);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    OUTLINED_FUNCTION_1_2();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_6_8();
    v17();
  }

  v18 = *(v1 + 56);
  v19 = *(v1 + 40);
  v20 = *(v1 + 107);
  v21 = *(v1 + 106);
  v22 = *(v1 + 105);
  v23 = *(v1 + 104);
  *(v4 + 128) = 0xD00000000000001DLL;
  *(v4 + 136) = 0x800000026942A200;
  v24 = MEMORY[0x277D839B0];
  *(v4 + 144) = v23;
  *(v4 + 168) = v24;
  *(v4 + 176) = 0xD000000000000010;
  *(v4 + 184) = 0x800000026942A220;
  *(v4 + 192) = v22;
  *(v4 + 216) = v24;
  strcpy((v4 + 224), "emptyResponse");
  *(v4 + 238) = -4864;
  *(v4 + 240) = v21;
  *(v4 + 264) = v24;
  *(v4 + 272) = 0x526C6172656E6567;
  *(v4 + 280) = 0xEF65736E6F707365;
  *(v4 + 288) = v20;
  *(v4 + 312) = v24;
  *(v4 + 320) = 0x657361726870;
  *(v4 + 328) = 0xE600000000000000;
  sub_26940B480(v19, v18, &qword_28030F610, &qword_269425760);
  if (OUTLINED_FUNCTION_4_9() == 1)
  {
    sub_269409CE0(*(v1 + 56), &qword_28030F610, &qword_269425760);
    *(v4 + 336) = 0u;
    *(v4 + 352) = 0u;
  }

  else
  {
    *(v4 + 360) = v7;
    __swift_allocate_boxed_opaque_existential_0((v4 + 336));
    OUTLINED_FUNCTION_1_2();
    v26 = *(v25 + 32);
    OUTLINED_FUNCTION_6_8();
    v27();
  }

  v28 = *(v1 + 108);
  *(v4 + 368) = 0xD00000000000001BLL;
  *(v4 + 376) = 0x800000026942A260;
  *(v4 + 408) = v24;
  *(v4 + 384) = v28;
  v29 = OUTLINED_FUNCTION_13_6(MEMORY[0x277D55BF0]);
  *(v1 + 88) = v29;
  *v29 = v1;
  v29[1] = sub_26940B0C4;
  v30 = *(v1 + 48);
  v31 = *(v1 + 16);

  return v33(v31, 0xD000000000000010, 0x800000026942A240, v4);
}

uint64_t sub_26940B0C4()
{
  v3 = *(*v1 + 88);
  v2 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v4 = v2;
  v2[12] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_45_0();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    v9 = v2[9];
    v8 = v2[10];
    v12 = v2 + 7;
    v10 = v2[7];
    v11 = v12[1];

    OUTLINED_FUNCTION_4_6();

    return v13();
  }
}

uint64_t sub_26940B21C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  OUTLINED_FUNCTION_4_6();
  v6 = v0[12];

  return v5();
}

uint64_t sub_26940B2A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_6_8();
  return sub_26940B2F0(v3, v4);
}

uint64_t sub_26940B2F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_269423EB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28030F620, &unk_269425770);
  v10 = OUTLINED_FUNCTION_12_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_26940B480(a1, &v16 - v13, &qword_28030F620, &unk_269425770);
  (*(v5 + 16))(v8, a2, v4);
  v14 = sub_269423CB8();
  (*(v5 + 8))(a2, v4);
  sub_269409CE0(a1, &qword_28030F620, &unk_269425770);
  return v14;
}

uint64_t sub_26940B480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_20_5(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_5_11@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;
  *(a1 + 40) = 0xEE0065676175676ELL;
  return v2;
}

uint64_t OUTLINED_FUNCTION_13_6@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_26940B5A4()
{
  v2 = sub_269423818();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_10_2(v8);
  v9 = sub_2694238F8();
  v10 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v10);
  sub_269423988();
  sub_26941C0F8(v0);
  sub_269423968();

  sub_2694238D8();

  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_269423988();
  sub_26941C104(v0);
  sub_269423968();

  sub_2694238E8();

  v13 = sub_269423948();
  OUTLINED_FUNCTION_10_2(v13);
  sub_269423938();
  (*(v5 + 104))(v1, *MEMORY[0x277D5EE50], v2);
  sub_269423928();
  (*(v5 + 8))(v1, v2);

  sub_2694237C8();

  v14 = MEMORY[0x26D63B350](v9);

  return v14;
}

uint64_t sub_26940B854(void *a1, void *a2)
{
  v26 = sub_269423818();
  v4 = OUTLINED_FUNCTION_2(v26);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_10_2(v9);
  v10 = sub_2694238F8();
  v11 = sub_269423868();
  OUTLINED_FUNCTION_10_2(v11);
  sub_269423858();
  sub_26941C110(a1);
  if (v12)
  {
    sub_269423848();
  }

  v13 = sub_269423998();
  OUTLINED_FUNCTION_10_2(v13);
  sub_269423988();

  sub_269423978();

  sub_26941C0F8(a1);
  if (v14)
  {
    sub_269423968();
  }

  sub_2694238D8();

  v15 = *(v11 + 48);
  v16 = *(v11 + 52);
  swift_allocObject();
  sub_269423858();
  sub_26941C104(a1);
  if (v17)
  {
    sub_269423848();
  }

  v18 = *(v13 + 48);
  v19 = *(v13 + 52);
  swift_allocObject();
  sub_269423988();

  sub_269423978();

  sub_269405C48(a2);
  if (v20)
  {
    sub_269423968();
  }

  sub_2693FD014(a2);
  if (v21)
  {
    sub_269423958();
  }

  sub_2694238E8();

  v22 = sub_269423948();
  OUTLINED_FUNCTION_10_2(v22);
  sub_269423938();
  (*(v6 + 104))(v2, *MEMORY[0x277D5EE50], v26);
  sub_269423928();
  (*(v6 + 8))(v2, v26);

  sub_2694237C8();

  v23 = MEMORY[0x26D63B350](v10);

  return v23;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26940BB84(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26940BBC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26940BC10(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269424118();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_16()
{

  return sub_269423908();
}

uint64_t sub_26940BCAC()
{
  v0 = sub_2694246B8();

  if (v0 >= 0x28)
  {
    return 40;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26940BD14(char a1)
{
  result = 0x45415F7261;
  switch(a1)
  {
    case 1:
      v3 = 1432317541;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
    case 2:
      return 0x42475F6E65;
    case 3:
      v11 = 1096773221;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x5500000000;
    case 4:
      v9 = 1130327653;
      goto LABEL_48;
    case 5:
      v7 = 1230990949;
      goto LABEL_42;
    case 6:
      return 0x47535F6E65;
    case 7:
      return 0x5A4E5F6E65;
    case 8:
      v8 = 1230990949;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 9:
      v9 = 1516203621;
      goto LABEL_48;
    case 10:
      v5 = 1130325348;
      goto LABEL_33;
    case 11:
      v8 = 1147102564;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 12:
      v10 = 1096770916;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
    case 13:
      v3 = 1163883365;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x5300000000;
    case 14:
      return 0x584D5F7365;
    case 15:
      v4 = 1130328933;
      goto LABEL_22;
    case 16:
      return 0x53555F7365;
    case 17:
      v6 = 1180660326;
      goto LABEL_44;
    case 18:
      return 0x41435F7266;
    case 19:
      return 0x48435F7266;
    case 20:
      return 0x45425F7266;
    case 21:
      v10 = 1230992489;
      return v10 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
    case 22:
      return 0x48435F7469;
    case 23:
      v7 = 1130326138;
      goto LABEL_42;
    case 24:
      return 0x4B485F687ALL;
    case 25:
      return OUTLINED_FUNCTION_1_10();
    case 26:
      return OUTLINED_FUNCTION_0_17();
    case 27:
      v6 = 1264545643;
      goto LABEL_44;
    case 28:
      v6 = 1113551984;
      goto LABEL_44;
    case 29:
      v11 = 1381987698;
      return v11 & 0xFFFF0000FFFFFFFFLL | 0x5500000000;
    case 30:
      v9 = 1398764129;
      goto LABEL_48;
    case 31:
      v4 = 1314876526;
      goto LABEL_22;
    case 32:
      v8 = 1113549934;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 33:
      v6 = 1415541364;
LABEL_44:
      result = v6 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
      break;
    case 34:
      v7 = 1449093494;
LABEL_42:
      result = v7 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
      break;
    case 35:
      v5 = 1415538804;
LABEL_33:
      result = v5 & 0xFFFF0000FFFFFFFFLL | 0x4800000000;
      break;
    case 36:
      result = OUTLINED_FUNCTION_2_9();
      break;
    case 37:
      v4 = 1348430960;
LABEL_22:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
      break;
    case 38:
      v9 = 1432316789;
LABEL_48:
      result = v9 & 0xFFFF0000FFFFFFFFLL | 0x4100000000;
      break;
    case 39:
      result = 0x4E435F657579;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26940C010()
{
  v0 = sub_2694245A8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26940C05C(char a1)
{
  result = 0x53555F6E65;
  switch(a1)
  {
    case 1:
      v3 = 1113551984;
      goto LABEL_21;
    case 2:
      v6 = 1130326138;
      goto LABEL_14;
    case 3:
      v3 = 1180660326;
      goto LABEL_21;
    case 4:
      return 0x54495F7469;
    case 5:
      v5 = 1147102564;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 6:
      v3 = 1264545643;
      goto LABEL_21;
    case 7:
      return 0x55525F7572;
    case 8:
      return 0x53455F7365;
    case 9:
      v5 = 1096774241;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
    case 10:
      return OUTLINED_FUNCTION_0_17();
    case 11:
      v4 = 1314876526;
      goto LABEL_19;
    case 12:
      return OUTLINED_FUNCTION_2_9();
    case 13:
      v4 = 1348430960;
LABEL_19:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x4C00000000;
      break;
    case 14:
      result = 0x48545F6874;
      break;
    case 15:
      v3 = 1415541364;
LABEL_21:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x5200000000;
      break;
    case 16:
      result = OUTLINED_FUNCTION_1_10();
      break;
    case 17:
      v6 = 1449093494;
LABEL_14:
      result = v6 & 0xFFFF0000FFFFFFFFLL | 0x4E00000000;
      break;
    case 18:
      result = 0x61696E6961726B75;
      break;
    case 19:
      result = 0x73656E6F746E6163;
      break;
    case 20:
      result = 0x4E495F6968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26940C22C(char a1)
{
  result = 28261;
  switch(a1)
  {
    case 1:
      result = 29808;
      break;
    case 2:
      result = 26746;
      break;
    case 3:
      result = 29286;
      break;
    case 4:
      result = 29801;
      break;
    case 5:
      result = 25956;
      break;
    case 6:
      result = 28523;
      break;
    case 7:
      result = 30066;
      break;
    case 8:
      result = 29541;
      break;
    case 9:
      result = 29281;
      break;
    case 10:
      result = 24938;
      break;
    case 11:
      result = 27758;
      break;
    case 12:
      result = 25705;
      break;
    case 13:
      result = 27760;
      break;
    case 14:
      result = 26740;
      break;
    case 15:
      result = 29300;
      break;
    case 16:
      result = 30580;
      break;
    case 17:
      result = 26998;
      break;
    case 18:
      result = 27509;
      break;
    case 19:
      result = 6649209;
      break;
    case 20:
      result = 26984;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26940C37C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26940BCAC();
  *a2 = result;
  return result;
}

uint64_t sub_26940C3AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26940BD14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26940C3E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26940C22C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for SupportedSourceLocales(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD9)
  {
    if (a2 + 39 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 39) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 40;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v5 = v6 - 40;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}