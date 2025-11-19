uint64_t sub_27541FD60(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v14 = a2;
  v15 = a3;
  v16 = a4;
  if (*(v6 + 16))
  {
    MEMORY[0x28223BE20](a1);
    v11[2] = &v14;

    sub_27541CAC8(sub_275422168, v11, v6);
    v7 = sub_275420164();
    v9 = v8;

    v12 = v4;
    v13 = v5;
    MEMORY[0x277C776B0](8250, 0xE200000000000000);
    MEMORY[0x277C776B0](v7, v9);

    return v12;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_27541FE60(uint64_t *a1, char a2, uint64_t a3, void (*a4)(void *__return_ptr, void *))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v15 = a2;
  v16 = a3;
  if (*(v6 + 16))
  {
    MEMORY[0x28223BE20](a1);
    v12[2] = &v15;

    sub_27541CAC8(a4, v12, v6);
    v8 = sub_275420164();
    v10 = v9;

    v13 = v4;
    v14 = v5;
    MEMORY[0x277C776B0](8250, 0xE200000000000000);
    MEMORY[0x277C776B0](v8, v10);

    return v13;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_27541FF54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = a1;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (*(a3 + 16))
  {
    MEMORY[0x28223BE20](a1);
    v13[2] = &v16;

    sub_27541CAC8(sub_2754223CC, v13, a3);
    v9 = sub_275420164();
    v11 = v10;

    v14 = v7;
    v15 = a2;
    MEMORY[0x277C776B0](8250, 0xE200000000000000);
    MEMORY[0x277C776B0](v9, v11);

    return v14;
  }

  else
  {
  }

  return v7;
}

uint64_t sub_275420064(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(void *__return_ptr, void *))
{
  v7 = a1;
  v15 = a4;
  v16 = a5;
  if (*(a3 + 16))
  {
    MEMORY[0x28223BE20](a1);
    v12[2] = &v15;

    sub_27541CAC8(a6, v12, a3);
    sub_275420164();

    v13 = v7;
    v14 = a2;
    MEMORY[0x277C776B0](8250, 0xE200000000000000);
    v10 = OUTLINED_FUNCTION_18_0();
    MEMORY[0x277C776B0](v10);

    return v13;
  }

  else
  {
  }

  return v7;
}

uint64_t sub_275420164()
{
  sub_275422200(0, &qword_2809DB0E8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_275422184();
  v0 = sub_27546E4C0();
  MEMORY[0x277C776B0](v0);

  MEMORY[0x277C776B0](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_275420240(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  if (*(a1 + 80) != 1)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v37 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v37, qword_2809F3C00);

    v38 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_30_0();

    if (!OUTLINED_FUNCTION_26_1())
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_7_7();
    v39 = OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_44(v39);
    OUTLINED_FUNCTION_42(4.8149e-34);
    OUTLINED_FUNCTION_41();
    switch(v41)
    {
      case 1:
      case 2:
        v40 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v40 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_53(v40);
    OUTLINED_FUNCTION_28_1();
    *(v3 + 4) = v2;
    goto LABEL_73;
  }

  LOBYTE(v90) = 3;
  if ((sub_275408728(&v90) & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v42 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v42, qword_2809F3C00);

    v38 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_30_0();

    if (!OUTLINED_FUNCTION_26_1())
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_7_7();
    v43 = OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_44(v43);
    OUTLINED_FUNCTION_42(4.8149e-34);
    OUTLINED_FUNCTION_41();
    switch(v45)
    {
      case 1:
      case 2:
        v44 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v44 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_53(v44);
    OUTLINED_FUNCTION_28_1();
    *(v3 + 4) = v2;
    goto LABEL_73;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  OUTLINED_FUNCTION_51(a1);
  v9 = *(v8 + 72);
  v10 = OUTLINED_FUNCTION_18_0();
  v11(v10);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  OUTLINED_FUNCTION_51((a1 + 40));
  v15 = *(v14 + 72);
  v16 = OUTLINED_FUNCTION_18_0();
  v17(v16);
  v18 = sub_27541CC10(v73, v74, v2, v3, v4);
  sub_275421F08(v73, &qword_2809DAFF8, &_s9GenreTreeVN);
  sub_275421F08(v74, &qword_2809DAFF8, &_s9GenreTreeVN);
  if (!v18)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v46 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v46, qword_2809F3C00);

    v38 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_30_0();

    if (!OUTLINED_FUNCTION_26_1())
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_7_7();
    v47 = OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_44(v47);
    OUTLINED_FUNCTION_42(4.8149e-34);
    OUTLINED_FUNCTION_41();
    switch(v49)
    {
      case 1:
      case 2:
        v48 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v48 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

LABEL_45:
    OUTLINED_FUNCTION_53(v48);
    OUTLINED_FUNCTION_28_1();
    *(v3 + 4) = v2;
LABEL_73:
    OUTLINED_FUNCTION_32();
    _os_log_impl(v69, v70, v71, v72, v3, 0xCu);
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_13_5();
LABEL_74:

    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  OUTLINED_FUNCTION_51(a1);
  v22 = *(v21 + 88);
  v23 = OUTLINED_FUNCTION_18_0();
  v24(v23);
  if (!v75)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v50 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v50, qword_2809F3C00);

    v38 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_30_0();

    if (!OUTLINED_FUNCTION_26_1())
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_7_7();
    v51 = OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_44(v51);
    OUTLINED_FUNCTION_42(4.8149e-34);
    OUTLINED_FUNCTION_41();
    switch(v52)
    {
      case 1:
      case 2:
        v48 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v48 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        goto LABEL_45;
    }

    goto LABEL_45;
  }

  v90 = v75;
  v91 = v76;
  v92 = v77;
  v93 = v78;
  v94 = v79;
  v25 = *(a1 + 64);
  v26 = *(a1 + 72);
  OUTLINED_FUNCTION_51((a1 + 40));
  v28 = *(v27 + 88);
  v29 = OUTLINED_FUNCTION_18_0();
  v30(v29);
  if (!v80)
  {
    sub_275421F08(&v75, &qword_2809DB008, &_s13SongStructureVN);
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v53 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v53, qword_2809F3C00);

    v38 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_30_0();

    if (!OUTLINED_FUNCTION_26_1())
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_7_7();
    v85 = OUTLINED_FUNCTION_10_5();
    *v3 = 136315138;
    v54 = OUTLINED_FUNCTION_8_8();
    switch(v55)
    {
      case 1:
      case 2:
        v54 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v54 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v54, v26 | 0x8000000000000000, &v85);
    OUTLINED_FUNCTION_28_1();
    *(v3 + 4) = v2;
    goto LABEL_73;
  }

  v85 = v80;
  v86 = v81;
  v87 = v82;
  v88 = v83;
  v89 = v84;
  if ((sub_275420DF4(a1, (a1 + 40)) & 1) == 0)
  {
    OUTLINED_FUNCTION_52(&v75);
    OUTLINED_FUNCTION_52(&v80);
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v56 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v56, qword_2809F3C00);

    v38 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_30_0();

    if (!OUTLINED_FUNCTION_26_1())
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_46();
    *v3 = 136315138;
    v57 = OUTLINED_FUNCTION_8_8();
    switch(v59)
    {
      case 1:
      case 2:
        v57 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v57 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

LABEL_72:
    OUTLINED_FUNCTION_54(v57, v58);
    OUTLINED_FUNCTION_28_1();
    *(v3 + 4) = v2;
    goto LABEL_73;
  }

  if ((sub_275421164(&v90, &v85) & 1) == 0)
  {
    OUTLINED_FUNCTION_52(&v75);
    OUTLINED_FUNCTION_52(&v80);
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v60 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v60, qword_2809F3C00);

    v38 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_30_0();

    if (!OUTLINED_FUNCTION_26_1())
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_46();
    *v3 = 136315138;
    v57 = OUTLINED_FUNCTION_8_8();
    switch(v61)
    {
      case 1:
      case 2:
        v57 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v57 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        goto LABEL_72;
    }

    goto LABEL_72;
  }

  v31 = sub_275421674(&v90, &v85, 1);
  sub_275421F08(&v75, &qword_2809DB008, &_s13SongStructureVN);
  sub_275421F08(&v80, &qword_2809DB008, &_s13SongStructureVN);
  if ((v31 & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v62 = sub_27546E3E0();
    OUTLINED_FUNCTION_12_4(v62, qword_2809F3C00);

    v38 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_30_0();

    if (!OUTLINED_FUNCTION_26_1())
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_46();
    *v3 = 136315138;
    v57 = OUTLINED_FUNCTION_8_8();
    switch(v63)
    {
      case 1:
      case 2:
        v57 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v57 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        goto LABEL_72;
    }

    goto LABEL_72;
  }

  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v32 = sub_27546E3E0();
  OUTLINED_FUNCTION_12_4(v32, qword_2809F3C00);

  v33 = sub_27546E3C0();
  sub_27546E6E0();
  OUTLINED_FUNCTION_30_0();

  if (OUTLINED_FUNCTION_26_1())
  {
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_46();
    *v3 = 136315138;
    v34 = OUTLINED_FUNCTION_8_8();
    switch(v36)
    {
      case 1:
      case 2:
        v34 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v34 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_54(v34, v35);
    OUTLINED_FUNCTION_28_1();
    *(v3 + 4) = v2;
    OUTLINED_FUNCTION_32();
    _os_log_impl(v64, v65, v66, v67, v3, 0xCu);
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_13_5();
  }

  return 1;
}

uint64_t sub_275420DF4(void *a1, void *a2)
{
  if (sub_275421DA4(a1))
  {
    if (sub_275421DA4(a2))
    {
      if (sub_275421E30(a1))
      {
        if (sub_275421E30(a2))
        {
          if (qword_2809DACB0 != -1)
          {
            swift_once();
          }

          v4 = sub_27546E3E0();
          __swift_project_value_buffer(v4, qword_2809F3C00);
          v5 = sub_27546E3C0();
          v6 = sub_27546E6E0();
          if (!os_log_type_enabled(v5, v6))
          {
            v8 = 1;
            goto LABEL_28;
          }

          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_2753EC000, v5, v6, "Musicality attribute compatibility: Compatible.", v7, 2u);
          v8 = 1;
          goto LABEL_26;
        }

        if (qword_2809DACB0 != -1)
        {
          swift_once();
        }

        v14 = sub_27546E3E0();
        __swift_project_value_buffer(v14, qword_2809F3C00);
        v5 = sub_27546E3C0();
        v10 = sub_27546E6E0();
        if (os_log_type_enabled(v5, v10))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          v11 = "Musicality attribute compatibility: Incompatible. Incoming danceability insignificant.";
          goto LABEL_25;
        }

LABEL_27:
        v8 = 0;
        goto LABEL_28;
      }

      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v13 = sub_27546E3E0();
      __swift_project_value_buffer(v13, qword_2809F3C00);
      v5 = sub_27546E3C0();
      v10 = sub_27546E6E0();
      if (!os_log_type_enabled(v5, v10))
      {
        goto LABEL_27;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v11 = "Musicality attribute compatibility: Incompatible. Outgoing danceability insignificant.";
    }

    else
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v12 = sub_27546E3E0();
      __swift_project_value_buffer(v12, qword_2809F3C00);
      v5 = sub_27546E3C0();
      v10 = sub_27546E6E0();
      if (!os_log_type_enabled(v5, v10))
      {
        goto LABEL_27;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v11 = "Musicality attribute compatibility: Incompatible. Incoming acousticness significant.";
    }
  }

  else
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v9 = sub_27546E3E0();
    __swift_project_value_buffer(v9, qword_2809F3C00);
    v5 = sub_27546E3C0();
    v10 = sub_27546E6E0();
    if (!os_log_type_enabled(v5, v10))
    {
      goto LABEL_27;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v11 = "Musicality attribute compatibility: Incompatible. Outgoing acousticness significant.";
  }

LABEL_25:
  _os_log_impl(&dword_2753EC000, v5, v10, v11, v7, 2u);
  v8 = 0;
LABEL_26:
  MEMORY[0x277C78090](v7, -1, -1);
LABEL_28:

  return v8;
}

uint64_t sub_275421164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  sub_2753F8F3C(*(a1 + 64), v35);
  if (v36)
  {
    v3 = v37;
    sub_2753F7504(v35);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v4 = sub_27546E3E0();
    __swift_project_value_buffer(v4, qword_2809F3C00);
    v5 = sub_27546E3C0();
    v6 = sub_27546E6E0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35[0] = v8;
      *v7 = 136315138;
      v9 = sub_27546E540();
      v11 = sub_275446968(v9, v10, v35);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2753EC000, v5, v6, "Time signature compatibility: First outgoing time signature = %s.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x277C78090](v8, -1, -1);
      MEMORY[0x277C78090](v7, -1, -1);
    }

    sub_2753F8F3C(v2, v35);
    if (v36)
    {
      v12 = v37;
      sub_2753F7504(v35);
      v13 = sub_27546E3C0();
      v14 = sub_27546E6E0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v35[0] = v16;
        *v15 = 136315138;
        v17 = sub_27546E540();
        v19 = sub_275446968(v17, v18, v35);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2753EC000, v13, v14, "Time signature compatibility: First incoming time signature = %s.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x277C78090](v16, -1, -1);
        MEMORY[0x277C78090](v15, -1, -1);
      }

      v20 = sub_27546E3C0();
      v21 = sub_27546E6E0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v35[0] = v23;
        *v22 = 136315138;
        v24 = sub_27546E540();
        v26 = sub_275446968(v24, v25, v35);

        *(v22 + 4) = v26;
        _os_log_impl(&dword_2753EC000, v20, v21, "Time signature compatibility: Time signature relationship = %s.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x277C78090](v23, -1, -1);
        MEMORY[0x277C78090](v22, -1, -1);
      }

      v27 = sub_27546E3C0();
      v28 = sub_27546E6E0();
      v29 = os_log_type_enabled(v27, v28);
      if (v12 != v3)
      {
        if (!v29)
        {
          v31 = 0;
          goto LABEL_25;
        }

        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2753EC000, v27, v28, "Time signature compatibility: Incompatible.", v30, 2u);
        v31 = 0;
        goto LABEL_23;
      }

      if (v29)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v33 = "Time signature compatibility: Compatible.";
        goto LABEL_22;
      }

LABEL_24:
      v31 = 1;
      goto LABEL_25;
    }

    sub_275421F08(v35, &qword_2809DAEA8, &_s22BeatStabilityMapRegionVN);
    v27 = sub_27546E3C0();
    v28 = sub_27546E6E0();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v33 = "Time signature compatibility: Compatible. First incoming time signature not available.";
  }

  else
  {
    sub_275421F08(v35, &qword_2809DAEA8, &_s22BeatStabilityMapRegionVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v32 = sub_27546E3E0();
    __swift_project_value_buffer(v32, qword_2809F3C00);
    v27 = sub_27546E3C0();
    v28 = sub_27546E6E0();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v33 = "Time signature compatibility: Compatible. First outgoing time signature not available.";
  }

LABEL_22:
  _os_log_impl(&dword_2753EC000, v27, v28, v33, v30, 2u);
  v31 = 1;
LABEL_23:
  MEMORY[0x277C78090](v30, -1, -1);
LABEL_25:

  return v31;
}

uint64_t sub_275421674(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 64);
  v4 = *(a2 + 64);
  sub_2753F8F3C(v3, &v46);
  if (v48)
  {
    v5 = v49;
    v6 = v50;
    sub_2753F7504(&v46);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_27546E3E0();
    __swift_project_value_buffer(v7, qword_2809F3C00);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6E0();
    v43 = v5;
    v42 = v6;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v45 = v11;
      v46 = v5;
      *v10 = 136315138;
      v47 = v6;
      v12 = sub_27546E540();
      v14 = sub_275446968(v12, v13, &v45);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2753EC000, v8, v9, "Tempo compatibility: First outgoing tempo = %s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x277C78090](v11, -1, -1);
      MEMORY[0x277C78090](v10, -1, -1);
    }

    sub_2753F8F3C(v4, &v46);
    if (v48)
    {
      v15 = v49;
      v16 = v50;
      sub_2753F7504(&v46);
      v17 = sub_27546E3C0();
      v18 = sub_27546E6E0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v45 = v20;
        v46 = v15;
        *v19 = 136315138;
        v47 = v16;
        v21 = sub_27546E540();
        v23 = sub_275446968(v21, v22, &v45);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_2753EC000, v17, v18, "Tempo compatibility: First incoming tempo = %s.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x277C78090](v20, -1, -1);
        MEMORY[0x277C78090](v19, -1, -1);
      }

      if (*(v3 + 16) == 1)
      {
        v24 = 0.16;
        if (a3)
        {
          v24 = 0.287;
        }

        v25 = sub_2753F7FF0(v43, v42, v15, v16, v24);
        v26 = sub_27546E3C0();
        v27 = sub_27546E6E0();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v46 = v29;
          *v28 = 136315138;
          LOBYTE(v45) = v25;
          v30 = sub_27546E540();
          v32 = sub_275446968(v30, v31, &v46);

          *(v28 + 4) = v32;
          _os_log_impl(&dword_2753EC000, v26, v27, "Tempo compatibility: Tempo relationship = %s.", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x277C78090](v29, -1, -1);
          MEMORY[0x277C78090](v28, -1, -1);
        }

        v33 = v25;
        v34 = sub_27546E3C0();
        v35 = sub_27546E6E0();
        v36 = os_log_type_enabled(v34, v35);
        if (v33 > 0xFB)
        {
          if (!v36)
          {
            v38 = 0;
            goto LABEL_30;
          }

          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_2753EC000, v34, v35, "Tempo compatibility: Incompatible.", v37, 2u);
          v38 = 0;
          goto LABEL_28;
        }

        if (v36)
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          v40 = "Tempo compatibility: Compatible.";
          goto LABEL_27;
        }

LABEL_29:
        v38 = 1;
        goto LABEL_30;
      }

      v34 = sub_27546E3C0();
      v35 = sub_27546E6E0();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_29;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v40 = "Tempo compatibility: Compatible. Multiple outgoing tempos.";
    }

    else
    {
      sub_275421F08(&v46, &qword_2809DAEA8, &_s22BeatStabilityMapRegionVN);
      v34 = sub_27546E3C0();
      v35 = sub_27546E6E0();
      if (!os_log_type_enabled(v34, v35))
      {
        goto LABEL_29;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v40 = "Tempo compatibility: Compatible. First incoming tempo not available.";
    }
  }

  else
  {
    sub_275421F08(&v46, &qword_2809DAEA8, &_s22BeatStabilityMapRegionVN);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v39 = sub_27546E3E0();
    __swift_project_value_buffer(v39, qword_2809F3C00);
    v34 = sub_27546E3C0();
    v35 = sub_27546E6E0();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_29;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v40 = "Tempo compatibility: Compatible. First outgoing tempo not available.";
  }

LABEL_27:
  _os_log_impl(&dword_2753EC000, v34, v35, v40, v37, 2u);
  v38 = 1;
LABEL_28:
  MEMORY[0x277C78090](v37, -1, -1);
LABEL_30:

  return v38;
}

uint64_t sub_275421C30@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = &unk_2884113D8;
  sub_275421CC8();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_275474500;
  *(v2 + 56) = &_s55BeatMatchedFilteredCrossFadeCandidateGenerationStrategyVN;
  *(v2 + 64) = &off_288414448;
  *(v2 + 32) = &unk_288411428;
  *(a1 + 16) = v2;
}

void sub_275421CC8()
{
  if (!qword_2809DB0D8)
  {
    sub_275421D20();
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB0D8);
    }
  }
}

unint64_t sub_275421D20()
{
  result = qword_2809DB0E0;
  if (!qword_2809DB0E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809DB0E0);
  }

  return result;
}

BOOL sub_275421DA4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 120))(&v4, v1, v2);
  if (v6)
  {
    return 1;
  }

  if (v5 > 1.0)
  {
    return 1;
  }

  return v5 < 0.85;
}

BOOL sub_275421E30(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 128))(&v4, v1, v2);
  if (v6)
  {
    return 1;
  }

  if (v5 >= 0.3)
  {
    return v5 <= 1.0;
  }

  return 0;
}

uint64_t sub_275421EC4()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_275421F08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_275422200(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_275421F78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_275421FD4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_275422030(uint64_t a1, uint64_t a2)
{
  sub_275422200(0, &qword_2809DAFF8, &_s9GenreTreeVN, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2754220B8@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = *a2;
  result = sub_27542020C(*a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v10;
  }

  return result;
}

uint64_t sub_27542211C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_27541FF54(*a1, a1[1], a1[2], *a2, *(a2 + 8), *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

unint64_t sub_275422184()
{
  result = qword_2809DB0F0;
  if (!qword_2809DB0F0)
  {
    sub_275422200(255, &qword_2809DB0E8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB0F0);
  }

  return result;
}

void sub_275422200(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_275422250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, void *)@<X3>, uint64_t *a4@<X8>)
{
  result = sub_275420064(*a1, a1[1], a1[2], *a2, *(a2 + 8), a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_2754222A0@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t (*a3)(void, void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *a2, *(a2 + 1));
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

void OUTLINED_FUNCTION_3_11()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x277C78090);
}

void OUTLINED_FUNCTION_6_8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_275422200(0, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_10_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_13_5()
{

  JUMPOUT(0x277C78090);
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_17_3()
{

  JUMPOUT(0x277C78090);
}

void OUTLINED_FUNCTION_18_3()
{

  JUMPOUT(0x277C78090);
}

BOOL OUTLINED_FUNCTION_24_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_26_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_28_1()
{
}

uint64_t OUTLINED_FUNCTION_29_1()
{
  result = v0;
  v3 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0()
{
}

uint64_t OUTLINED_FUNCTION_31@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = v2;
  *(result + 48) = 2;
  return result;
}

void OUTLINED_FUNCTION_34(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_35()
{
}

uint64_t OUTLINED_FUNCTION_36(uint64_t *a1)
{
  v4 = *(v2 - 316);
  v5 = *(v2 - 328);

  return sub_27541FE60(a1, v4, v1, v5);
}

uint64_t OUTLINED_FUNCTION_37()
{

  return sub_275422030(v0, v1 - 280);
}

uint64_t OUTLINED_FUNCTION_38()
{

  return sub_275422030(v0, v1 - 216);
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_49(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_50(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{

  return sub_275421F08(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1)
{

  return sub_275446968(a1, v1 | 0x8000000000000000, (v2 - 152));
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_275446968(a1, v2 | 0x8000000000000000, va);
}

uint64_t sub_2754228C8(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 1);
  if (*(a1 + 80) != 1)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v25 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v25, qword_2809F3C00);
    v26 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_7_7();
    v27 = OUTLINED_FUNCTION_10_5();
    v45[0] = v27;
    *v5 = 136315138;
    v28 = v2 + 16;
    switch(v4)
    {
      case 1:
      case 2:
        v28 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v28 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v28, 0x800000027546F0E0, v45);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v36 = "%s: Not applicable. Placement not late-to-early.";
    goto LABEL_41;
  }

  LOBYTE(v45[0]) = 1;
  if ((sub_275408728(v45) & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v29 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v29, qword_2809F3C00);
    v26 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_7_7();
    v27 = OUTLINED_FUNCTION_10_5();
    v45[0] = v27;
    *v5 = 136315138;
    v30 = v2 + 16;
    switch(v4)
    {
      case 1:
      case 2:
        v30 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v30 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v30, 0x800000027546F0E0, v45);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v36 = "%s: Not applicable. Transition complexity not compatible.";
    goto LABEL_41;
  }

  v7 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v8 = *(v7 + 72);
  v9 = OUTLINED_FUNCTION_4_10();
  v10(v9);
  v11 = *(a1 + 72);
  __swift_project_boxed_opaque_existential_1((a1 + 40), *(a1 + 64));
  v12 = *(v11 + 72);
  v13 = OUTLINED_FUNCTION_4_10();
  v14(v13);
  v15 = sub_27541CDB8(v44, v45, v4, v5);
  sub_275422F08(v44);
  sub_275422F08(v45);
  if ((v15 & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v31 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v31, qword_2809F3C00);
    v26 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_7_7();
    v27 = OUTLINED_FUNCTION_10_5();
    v43 = v27;
    *v5 = 136315138;
    v32 = OUTLINED_FUNCTION_8_8();
    switch(v33)
    {
      case 1:
      case 2:
        v32 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v32 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v32, v3 | 0x8000000000000000, &v43);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v36 = "%s: Not applicable. Genres not compatible.";
    goto LABEL_41;
  }

  v16 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v17 = *(v16 + 104);
  v18 = OUTLINED_FUNCTION_4_10();
  if (!v19(v18))
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v37 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v37, qword_2809F3C00);
    v26 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_7_7();
    v27 = OUTLINED_FUNCTION_10_5();
    v43 = v27;
    *v5 = 136315138;
    v38 = OUTLINED_FUNCTION_8_8();
    switch(v39)
    {
      case 1:
      case 2:
        v38 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v38 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v38, v3 | 0x8000000000000000, &v43);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v36 = "%s: Not applicable. Outgoing loudness map not available.";
LABEL_41:
    OUTLINED_FUNCTION_11_6(&dword_2753EC000, v34, v35, v36);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
LABEL_42:

    return 0;
  }

  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v20 = sub_27546E3E0();
  OUTLINED_FUNCTION_6_9(v20, qword_2809F3C00);
  v21 = sub_27546E3C0();
  sub_27546E6E0();
  OUTLINED_FUNCTION_10_6();
  if (OUTLINED_FUNCTION_9_5())
  {
    OUTLINED_FUNCTION_7_7();
    v22 = OUTLINED_FUNCTION_10_5();
    v43 = v22;
    *v5 = 136315138;
    v23 = OUTLINED_FUNCTION_8_8();
    switch(v24)
    {
      case 1:
      case 2:
        v23 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v23 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v23, v3 | 0x8000000000000000, &v43);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_11_6(&dword_2753EC000, v40, v41, "%s: Applicable.");
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  return 1;
}

uint64_t sub_275422F08(uint64_t a1)
{
  sub_275422F64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275422F64()
{
  if (!qword_2809DAFF8)
  {
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAFF8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

BOOL OUTLINED_FUNCTION_9_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_10_6()
{
}

void OUTLINED_FUNCTION_11_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_275423050(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (*(a1 + 80) != 1)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v15 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v15, qword_2809F3C00);
    v16 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_7_7();
    v17 = OUTLINED_FUNCTION_10_5();
    v31[0] = v17;
    *v4 = 136315138;
    v18 = v2 + 16;
    switch(v3)
    {
      case 1:
      case 2:
        v18 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v18 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v18, 0x800000027546F0E0, v31);
    OUTLINED_FUNCTION_28_1();
    *(v4 + 4) = v3;
    v25 = "%s: Not applicable. Placement not late-to-early.";
    goto LABEL_33;
  }

  LOBYTE(v31[0]) = 0;
  if ((sub_275408728(v31) & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v19 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v19, qword_2809F3C00);
    v16 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_7_7();
    v17 = OUTLINED_FUNCTION_10_5();
    v31[0] = v17;
    *v4 = 136315138;
    v20 = v2 + 16;
    switch(v3)
    {
      case 1:
      case 2:
        v20 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v20 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v20, 0x800000027546F0E0, v31);
    OUTLINED_FUNCTION_28_1();
    *(v4 + 4) = v3;
    v25 = "%s: Not applicable. Transition complexity not compatible.";
    goto LABEL_33;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 72))(v30, v6, v7);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  __swift_project_boxed_opaque_existential_1((a1 + 40), v8);
  (*(v9 + 72))(v31, v8, v9);
  v10 = sub_27541CFE4(v30, v31, v3, v4);
  sub_275422F08(v30);
  sub_275422F08(v31);
  if ((v10 & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v21 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v21, qword_2809F3C00);
    v16 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_7_7();
    v17 = OUTLINED_FUNCTION_10_5();
    v29 = v17;
    *v4 = 136315138;
    v22 = v9 + 16;
    switch(v3)
    {
      case 1:
      case 2:
        v22 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v22 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v22, 0x800000027546F0E0, &v29);
    OUTLINED_FUNCTION_28_1();
    *(v4 + 4) = v3;
    v25 = "%s: Not applicable. Genres not compatible.";
LABEL_33:
    OUTLINED_FUNCTION_11_6(&dword_2753EC000, v23, v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
LABEL_34:

    return 0;
  }

  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v11 = sub_27546E3E0();
  OUTLINED_FUNCTION_6_9(v11, qword_2809F3C00);
  v12 = sub_27546E3C0();
  sub_27546E6E0();
  OUTLINED_FUNCTION_10_6();
  if (OUTLINED_FUNCTION_9_5())
  {
    OUTLINED_FUNCTION_7_7();
    v13 = OUTLINED_FUNCTION_10_5();
    v29 = v13;
    *v4 = 136315138;
    v14 = v9 + 16;
    switch(v3)
    {
      case 1:
      case 2:
        v14 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v14 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    sub_275446968(v14, 0x800000027546F0E0, &v29);
    OUTLINED_FUNCTION_28_1();
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_11_6(&dword_2753EC000, v26, v27, "%s: Applicable.");
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  return 1;
}

uint64_t sub_275423588(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 1);
  if (*(a1 + 80) != 1)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v26 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v26, qword_2809F3C00);
    v27 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_7_7();
    v28 = OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_16_3(v28);
    OUTLINED_FUNCTION_42(4.8149e-34);
    OUTLINED_FUNCTION_41();
    switch(v30)
    {
      case 1:
      case 2:
        v29 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v29 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_19_4(v29);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v41 = "%s: Not applicable. Placement not late-to-early.";
    goto LABEL_65;
  }

  v64[0] = 2;
  if ((sub_275408728(v64) & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v31 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v31, qword_2809F3C00);
    v27 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_7_7();
    v32 = OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_16_3(v32);
    OUTLINED_FUNCTION_42(4.8149e-34);
    OUTLINED_FUNCTION_41();
    switch(v34)
    {
      case 1:
      case 2:
        v33 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v33 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_19_4(v33);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v41 = "%s: Not applicable. Transition complexity not compatible.";
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_12_5();
  v6 = *(v3 + 72);
  v7 = OUTLINED_FUNCTION_4_10();
  v8(v7);
  OUTLINED_FUNCTION_11_7();
  v9 = *(v3 + 72);
  v10 = OUTLINED_FUNCTION_4_10();
  v11(v10);
  v12 = sub_27541D210(v61, v62, v4, v5);
  v2 = &qword_2809DAFF8;
  sub_275423ED0(v61, &qword_2809DAFF8);
  sub_275423ED0(v62, &qword_2809DAFF8);
  if ((v12 & 1) == 0)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v35 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v35, qword_2809F3C00);
    v27 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_7_7();
    v36 = OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_16_3(v36);
    OUTLINED_FUNCTION_42(4.8149e-34);
    OUTLINED_FUNCTION_41();
    switch(v38)
    {
      case 1:
      case 2:
        v37 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v37 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_19_4(v37);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v41 = "%s: Not applicable. Genres not compatible.";
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_12_5();
  v13 = OUTLINED_FUNCTION_4_10();
  v14(v13);
  if (!v63[0])
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v42 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v42, qword_2809F3C00);
    v27 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_7_7();
    v43 = OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_16_3(v43);
    OUTLINED_FUNCTION_42(4.8149e-34);
    OUTLINED_FUNCTION_41();
    switch(v45)
    {
      case 1:
      case 2:
        v44 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v44 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_19_4(v44);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v41 = "%s: Not applicable. Outgoing song structure not available.";
    goto LABEL_65;
  }

  sub_275423ED0(v63, &qword_2809DB008);
  OUTLINED_FUNCTION_11_7();
  v15 = OUTLINED_FUNCTION_4_10();
  v16(v15);
  if (!*v64)
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v46 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v46, qword_2809F3C00);
    v27 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_15_4();
    *v5 = 136315138;
    v47 = OUTLINED_FUNCTION_8_8();
    switch(v49)
    {
      case 1:
      case 2:
        v47 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v47 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_54(v47, v48);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v41 = "%s: Not applicable. Incoming song structure not available.";
    goto LABEL_65;
  }

  sub_275423ED0(v64, &qword_2809DB008);
  OUTLINED_FUNCTION_12_5();
  v17 = OUTLINED_FUNCTION_4_10();
  if (!v18(v17))
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v50 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v50, qword_2809F3C00);
    v27 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_15_4();
    *v5 = 136315138;
    v51 = OUTLINED_FUNCTION_8_8();
    switch(v53)
    {
      case 1:
      case 2:
        v51 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v51 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_54(v51, v52);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v41 = "%s: Not applicable. Outgoing loudness map not available.";
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_11_7();
  v19 = OUTLINED_FUNCTION_4_10();
  if (!v20(v19))
  {
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v54 = sub_27546E3E0();
    OUTLINED_FUNCTION_6_9(v54, qword_2809F3C00);
    v27 = sub_27546E3C0();
    sub_27546E6E0();
    OUTLINED_FUNCTION_10_6();
    if (!OUTLINED_FUNCTION_9_5())
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_15_4();
    *v5 = 136315138;
    v55 = OUTLINED_FUNCTION_8_8();
    switch(v57)
    {
      case 1:
      case 2:
        v55 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v55 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_54(v55, v56);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    v41 = "%s: Not applicable. Incoming loudness map not available.";
LABEL_65:
    OUTLINED_FUNCTION_11_6(&dword_2753EC000, v39, v40, v41);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
LABEL_66:

    return 0;
  }

  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v21 = sub_27546E3E0();
  OUTLINED_FUNCTION_6_9(v21, qword_2809F3C00);
  v22 = sub_27546E3C0();
  sub_27546E6E0();
  OUTLINED_FUNCTION_10_6();
  if (OUTLINED_FUNCTION_9_5())
  {
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_15_4();
    *v5 = 136315138;
    v23 = OUTLINED_FUNCTION_8_8();
    switch(v25)
    {
      case 1:
      case 2:
        v23 = OUTLINED_FUNCTION_4_9();
        break;
      case 3:
        v23 = OUTLINED_FUNCTION_14_4();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_54(v23, v24);
    OUTLINED_FUNCTION_28_1();
    *(v5 + 4) = v4;
    OUTLINED_FUNCTION_11_6(&dword_2753EC000, v58, v59, "%s: Applicable.");
    __swift_destroy_boxed_opaque_existential_1(&qword_2809DAFF8);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  return 1;
}

uint64_t sub_275423ED0(uint64_t a1, unint64_t *a2)
{
  sub_275423F2C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_275423F2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_27546E6F0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void *OUTLINED_FUNCTION_11_7()
{
  v2 = v0[9];
  v3 = v0[8];

  return __swift_project_boxed_opaque_existential_1(v0 + 5, v3);
}

void *OUTLINED_FUNCTION_12_5()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{

  return sub_275446968(a1, v1 | 0x8000000000000000, (v2 - 136));
}

uint64_t sub_275423FF0()
{
  sub_2754241A0(0, &qword_2809DB100, &qword_2809DB108);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_275474510;
  *(v0 + 56) = &_s43BeatMatchedFilteredCrossFadeStylingStrategyVN;
  *(v0 + 64) = &off_2884146B8;
  sub_275421C30(v0 + 32);
  *(v0 + 96) = &_s29SmartCrossFadeStylingStrategyVN;
  *(v0 + 104) = &off_2884148C8;
  *(v0 + 72) = 1;
  sub_2754241A0(0, &qword_2809DB0D8, &qword_2809DB0E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_275474500;
  *(v1 + 56) = &_s41SmartCrossFadeCandidateGenerationStrategyVN;
  *(v1 + 64) = &off_2884145E8;
  *(v1 + 32) = &unk_2884114B0;
  *(v0 + 80) = v1;
  *(v0 + 136) = &_s29DeadAirRemovalStylingStrategyVN;
  *(v0 + 144) = &off_288414768;
  *(v0 + 112) = 2;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_275474500;
  *(v2 + 56) = &_s41DeadAirRemovalCandidateGenerationStrategyVN;
  *(v2 + 64) = &off_288414508;
  *(v2 + 32) = &unk_288411460;
  *(v0 + 120) = v2;
  *(v0 + 176) = &_s32FallbackCrossFadeStylingStrategyVN;
  *(v0 + 184) = &off_288414818;
  *(v0 + 152) = 3;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_275474500;
  *(v3 + 56) = &_s44FallbackCrossFadeCandidateGenerationStrategyVN;
  *(v3 + 64) = &off_288414578;
  *(v3 + 32) = &unk_288411488;
  *(v0 + 160) = v3;
  return v0;
}

void sub_2754241A0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2753F1680(255, a3);
    v4 = sub_27546E990();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275424238(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v38 = sub_27546E490();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v38);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = 0;
  v37 = *(a3 + 16);
  v34 = v5 + 16;
  v13 = (v5 + 8);
  v31 = (v5 + 32);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v37 == v12)
    {

      return v33;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v15 = *(v5 + 72);
    v16 = a3;
    (*(v5 + 16))(v11, a3 + v14 + v15 * v12, v38);
    v17 = v35(v11);
    if (v3)
    {
      (*v13)(v11, v38);
      v28 = v33;

      return v28;
    }

    if (v17)
    {
      v30 = *v31;
      v30(v32, v11, v38);
      v18 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v18;
      }

      else
      {
        v21 = *(v18 + 16);
        v22 = OUTLINED_FUNCTION_0_21();
        sub_27544135C(v22, v23, v24);
        v20 = v39;
      }

      a3 = v16;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v33 = v26 + 1;
        v29 = v26;
        sub_27544135C(v25 > 1, v26 + 1, 1);
        v27 = v33;
        v26 = v29;
        a3 = v16;
        v20 = v39;
      }

      ++v12;
      *(v20 + 16) = v27;
      v33 = v20;
      result = (v30)(v20 + v14 + v26 * v15, v32, v38);
    }

    else
    {
      result = (*v13)(v11, v38);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

void sub_275424530(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t *), void (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_1_16();
  v9 = v8;
  v10 = 0;
  v12 = *(v11 + 16);
  v13 = v11 + 32;
  v14 = MEMORY[0x277D84F90];
  v24 = v15;
  v23 = v8;
  while (1)
  {
    if (v12 == v10)
    {
      goto LABEL_14;
    }

    if (v10 >= *(v6 + 16))
    {
      break;
    }

    sub_2753F161C(v13, v26);
    v16 = v9(v26);
    if (v5)
    {
      __swift_destroy_boxed_opaque_existential_1(v26);

LABEL_14:

      return;
    }

    if (v16)
    {
      a4(v26, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = *(v14 + 16);
        v19 = OUTLINED_FUNCTION_0_21();
        a5(v19);
        v14 = v27;
      }

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        (a5)(v20 > 1, v21 + 1, 1);
        v14 = v27;
      }

      *(v14 + 16) = v21 + 1;
      a4 = v24;
      v24(v25, (v14 + 40 * v21 + 32));
      v9 = v23;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    v13 += 40;
    ++v10;
  }

  __break(1u);
}

void sub_2754246AC()
{
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_2_14(v6, v7, v8);
  v9 = MEMORY[0x277D84F90];
  v19 = v10;
  while (1)
  {
    if (v2 == v5)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    sub_2753F2548(v4, __src);
    v11 = v3(__src);
    if (v0)
    {
      sub_2753F25A4(__src);

LABEL_14:

      return;
    }

    if (v11)
    {
      memcpy(__dst, __src, sizeof(__dst));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = *(v9 + 16);
        v14 = OUTLINED_FUNCTION_0_21();
        sub_2754419BC(v14, v15, v16);
        v9 = v22;
      }

      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2754419BC((v17 > 1), v18 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v18 + 1;
      memcpy((v9 + (v18 << 8) + 32), __dst, 0x100uLL);
      v3 = v19;
    }

    else
    {
      sub_2753F25A4(__src);
    }

    v4 += 256;
    ++v5;
  }

  __break(1u);
}

void sub_275424814(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_275408FEC(a1, v76);
  v60 = a1;
  v63 = a1;

  sub_275424530(sub_275425E2C, v62, a2, sub_275425EA0, sub_275441A5C);
  v6 = v3;
  v7 = 0;
  v61 = *(v8 + 16);
  v82 = v8;
  v9 = v8 + 32;
  v58 = "Smart Cross-Fade";
  while (v61 != v7)
  {
    if (v7 >= *(v82 + 16))
    {
      __break(1u);
      goto LABEL_62;
    }

    sub_2753F161C(v9, v73);
    v10 = v74;
    v11 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(v11 + 40))(__src, v60, v10, v11);
    if (v6)
    {

      sub_275425E4C(v76);
LABEL_60:
      __swift_destroy_boxed_opaque_existential_1(v73);
      return;
    }

    if (__src[6])
    {
      memcpy(__dst, __src, sizeof(__dst));
      v12 = v77;
      v13 = v78;
      __swift_project_boxed_opaque_existential_1(v76, v77);
      v14 = (*(v13 + 80))(v12, v13);
      if (v14)
      {
      }

      v15 = v80;
      v16 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      if ((*(v16 + 80))(v15, v16))
      {
      }

      else if (!v14)
      {
        goto LABEL_49;
      }

      if (LOBYTE(__dst[0]) == 3 && *(&__dst[0] + 1) == 3)
      {
LABEL_49:

        sub_2753F2548(__dst, v70);
LABEL_50:
        memcpy(__src, v70, sizeof(__src));
        v45 = v74;
        v46 = v75;
        __swift_project_boxed_opaque_existential_1(v73, v74);
        (*(v46 + 8))(v70, v45, v46);
        sub_275425334(v70[0], &__dst[4] + 8, &__src[9]);
        if (qword_2809DACB0 == -1)
        {
LABEL_51:
          v47 = sub_27546E3E0();
          __swift_project_value_buffer(v47, qword_2809F3C00);
          sub_2753F161C(v73, v70);
          v48 = sub_27546E3C0();
          v49 = sub_27546E6E0();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v69[0] = v51;
            *v50 = 136315138;
            v52 = *(&v70[1] + 1);
            v53 = *&v70[2];
            __swift_project_boxed_opaque_existential_1(v70, *(&v70[1] + 1));
            (*(v53 + 8))(v68, v52, v53);
            v54 = 0xD000000000000020;
            switch(LOBYTE(v68[0]))
            {
              case 1:
                v54 = 0xD000000000000010;
                v55 = "Dead-Air Removal";
                goto LABEL_57;
              case 2:
                v54 = 0xD000000000000010;
                v55 = "Fallback Cross-Fade";
                goto LABEL_57;
              case 3:
                v54 = 0xD000000000000013;
                v55 = "utgoing";
LABEL_57:
                v58 = v55;
                break;
              default:
                break;
            }

            __swift_destroy_boxed_opaque_existential_1(v70);
            v56 = sub_275446968(v54, v58 | 0x8000000000000000, v69);

            *(v50 + 4) = v56;
            _os_log_impl(&dword_2753EC000, v48, v49, "%s: Styling result identified.", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v51);
            MEMORY[0x277C78090](v51, -1, -1);
            MEMORY[0x277C78090](v50, -1, -1);

            sub_2753F25A4(__dst);
          }

          else
          {

            sub_2753F25A4(__dst);
            __swift_destroy_boxed_opaque_existential_1(v70);
          }

          sub_275425E4C(v76);
          memcpy(a3, __src, 0x100uLL);
          goto LABEL_60;
        }

LABEL_62:
        swift_once();
        goto LABEL_51;
      }

      sub_2753EF9D0(&__dst[4] + 8, v69);
      sub_2753EF3C8(v69, v66);
      if (v67)
      {
        v64[0] = *v66;
        v64[1] = *&v66[16];
        sub_2753F0410(v64, v65);
        v68[0] = v65[0];
        v68[1] = v65[1];
        BYTE10(v68[10]) = 1;
      }

      else
      {
        memcpy(v68, v66, 0xAAuLL);
        BYTE10(v68[10]) = 0;
      }

      v27 = sub_2753EFAB4();
      sub_275409AE4(v69);
      if (v27)
      {
        v28 = *&__dst[3];
        memcpy(&v70[4] + 8, v68, 0xABuLL);
        LOBYTE(v70[0]) = __dst[0];
        v6 = 0;
        *(&v70[0] + 1) = *(&__dst[0] + 1);
        v70[1] = __dst[1];
        *&v70[2] = *&__dst[2];
        BYTE8(v70[2]) = BYTE8(__dst[2]);
        v70[3] = __dst[3];
        *&v70[4] = *&__dst[4];
        *(&v70[15] + 1) = *(&__dst[15] + 1);

        if (v28)
        {

          goto LABEL_50;
        }
      }

      else
      {
        sub_275409AE4(v68);
        bzero(v70, 0x100uLL);
      }

      sub_27541C60C(v70);
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v29 = sub_27546E3E0();
      __swift_project_value_buffer(v29, qword_2809F3C00);
      sub_2753F161C(v73, __src);
      v30 = sub_27546E3C0();
      v31 = sub_27546E6E0();
      if (!os_log_type_enabled(v30, v31))
      {

        sub_2753F25A4(__dst);
        v38 = __src;
LABEL_34:
        __swift_destroy_boxed_opaque_existential_1(v38);
        goto LABEL_42;
      }

      v59 = v9;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v70[0] = v33;
      *v32 = 136315138;
      v34 = __src[3];
      v35 = __src[4];
      __swift_project_boxed_opaque_existential_1(__src, __src[3]);
      (*(v35 + 8))(v69, v34, v35);
      v36 = 0xD000000000000020;
      v37 = "Smart Cross-Fade";
      switch(LOBYTE(v69[0]))
      {
        case 1:
          v36 = 0xD000000000000010;
          v37 = "Dead-Air Removal";
          break;
        case 2:
          v36 = 0xD000000000000010;
          v37 = "Fallback Cross-Fade";
          break;
        case 3:
          v36 = 0xD000000000000013;
          v37 = "utgoing";
          break;
        default:
          break;
      }

      __swift_destroy_boxed_opaque_existential_1(__src);
      v39 = sub_275446968(v36, v37 | 0x8000000000000000, v70);

      *(v32 + 4) = v39;
      _os_log_impl(&dword_2753EC000, v30, v31, "%s: Stereo styling result identified but spatial styling result not identified.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x277C78090](v33, -1, -1);
      MEMORY[0x277C78090](v32, -1, -1);

      sub_2753F25A4(__dst);
    }

    else
    {
      sub_27541C60C(__src);
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v17 = sub_27546E3E0();
      __swift_project_value_buffer(v17, qword_2809F3C00);
      sub_2753F161C(v73, __dst);
      v18 = sub_27546E3C0();
      v19 = sub_27546E6E0();
      if (!os_log_type_enabled(v18, v19))
      {

        v38 = __dst;
        goto LABEL_34;
      }

      v59 = v9;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      __src[0] = v21;
      *v20 = 136315138;
      v22 = *(&__dst[1] + 1);
      v23 = *&__dst[2];
      __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
      (*(v23 + 8))(v70, v22, v23);
      v24 = 0xD000000000000020;
      v25 = "Smart Cross-Fade";
      switch(LOBYTE(v70[0]))
      {
        case 1:
          v24 = 0xD000000000000010;
          v25 = "Dead-Air Removal";
          break;
        case 2:
          v24 = 0xD000000000000010;
          v25 = "Fallback Cross-Fade";
          break;
        case 3:
          v24 = 0xD000000000000013;
          v25 = "utgoing";
          break;
        default:
          break;
      }

      __swift_destroy_boxed_opaque_existential_1(__dst);
      v40 = sub_275446968(v24, v25 | 0x8000000000000000, __src);

      *(v20 + 4) = v40;
      _os_log_impl(&dword_2753EC000, v18, v19, "%s: Styling result not identified.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x277C78090](v21, -1, -1);
      MEMORY[0x277C78090](v20, -1, -1);
    }

    v9 = v59;
LABEL_42:
    __swift_destroy_boxed_opaque_existential_1(v73);
    v9 += 40;
    ++v7;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v41 = sub_27546E3E0();
  __swift_project_value_buffer(v41, qword_2809F3C00);
  v42 = sub_27546E3C0();
  v43 = sub_27546E6E0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2753EC000, v42, v43, "All algorithms: Styling result not identified.", v44, 2u);
    MEMORY[0x277C78090](v44, -1, -1);
  }

  sub_275425E4C(v76);
  bzero(a3, 0x100uLL);
}

uint64_t sub_2754252CC(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 32))(a2, v3, v4) & 1;
}

void sub_275425334(char a1, uint64_t a2, uint64_t a3)
{
  sub_2754097E0(v102);
  sub_2753F12B8(v102, __src);
  if (v107)
  {
    sub_2753F122C(v102);
    v6 = __src;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    v6 = v100;
    sub_275409C88();
    sub_2753F1398(__dst);
    sub_2753F122C(v102);
  }

  v8 = *v6;
  v7 = v6[1];
  sub_2754097E0(__src);
  sub_2753F12B8(__src, __dst);
  if (v104)
  {
    sub_2753F122C(__src);
    v9 = __dst;
  }

  else
  {
    memcpy(v100, __dst, 0x51uLL);
    v9 = v105;
    sub_275409C88();
    sub_2753F1398(v100);
    sub_2753F122C(__src);
  }

  if (*v9 - v8 != 0.0 || v9[1] - v7 != 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v10 = sub_27546E3E0();
    __swift_project_value_buffer(v10, qword_2809F3C00);
    sub_2753EF3C8(a2, v102);
    v11 = sub_27546E3C0();
    v12 = sub_27546E6E0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v101 = v14;
      *v13 = 136315394;
      v15 = 0xD000000000000020;
      v16 = "Smart Cross-Fade";
      switch(a1)
      {
        case 1:
          v17 = "Smart Cross-Fade";
          goto LABEL_16;
        case 2:
          v17 = "Dead-Air Removal";
LABEL_16:
          v16 = (v17 - 32);
          v15 = 0xD000000000000010;
          break;
        case 3:
          v16 = "utgoing";
          v15 = 0xD000000000000013;
          break;
        default:
          break;
      }

      v18 = sub_275446968(v15, v16 | 0x8000000000000000, &v101);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2080;
      sub_2754097E0(__src);
      sub_2753F12B8(__src, __dst);
      if (v104)
      {
        v19 = sub_2753F122C(__src);
        v27 = __dst;
      }

      else
      {
        memcpy(v100, __dst, 0x51uLL);
        v27 = v105;
        sub_275409C88();
        sub_2753F1398(v100);
        v19 = sub_2753F122C(__src);
      }

      v28 = sub_2753F1314(*v27, v27[1], v19, v20, v21, v22, v23, v24, v25, v26);
      v30 = v29;
      sub_275409AE4(v102);
      v31 = sub_275446968(v28, v30, &v101);

      *(v13 + 14) = v31;
      _os_log_impl(&dword_2753EC000, v11, v12, "%s: Outgoing stereo song time range = %s.", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v14, -1, -1);
      MEMORY[0x277C78090](v13, -1, -1);
    }

    else
    {

      sub_275409AE4(v102);
    }

    sub_2753EF3C8(a3, v102);
    v32 = sub_27546E3C0();
    v33 = sub_27546E6E0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v101 = v35;
      *v34 = 136315394;
      v36 = 0xD000000000000020;
      v37 = "Smart Cross-Fade";
      switch(a1)
      {
        case 0:
          break;
        case 1:
          v38 = "Smart Cross-Fade";
          goto LABEL_27;
        case 2:
          v38 = "Dead-Air Removal";
LABEL_27:
          v37 = (v38 - 32);
          v36 = 0xD000000000000010;
          break;
        case 3:
          v37 = "utgoing";
          v36 = 0xD000000000000013;
          break;
        default:
LABEL_66:
          JUMPOUT(0);
      }

      v39 = sub_275446968(v36, v37 | 0x8000000000000000, &v101);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      sub_2754097E0(__src);
      sub_2753F12B8(__src, __dst);
      if (v104)
      {
        v40 = sub_2753F122C(__src);
        v48 = __dst;
      }

      else
      {
        memcpy(v100, __dst, 0x51uLL);
        v48 = v105;
        sub_275409C88();
        sub_2753F1398(v100);
        v40 = sub_2753F122C(__src);
      }

      v49 = sub_2753F1314(*v48, v48[1], v40, v41, v42, v43, v44, v45, v46, v47);
      v51 = v50;
      sub_275409AE4(v102);
      v52 = sub_275446968(v49, v51, &v101);

      *(v34 + 14) = v52;
      _os_log_impl(&dword_2753EC000, v32, v33, "%s: Outgoing spatial song time range = %s.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v35, -1, -1);
      MEMORY[0x277C78090](v34, -1, -1);
    }

    else
    {

      sub_275409AE4(v102);
    }
  }

  sub_275409858(v102);
  sub_2753F12B8(v102, __src);
  if (v107)
  {
    sub_2753F122C(v102);
    v53 = __src;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    v53 = v100;
    sub_275409C88();
    sub_2753F1398(__dst);
    sub_2753F122C(v102);
  }

  v55 = *v53;
  v54 = v53[1];
  sub_275409858(__src);
  sub_2753F12B8(__src, __dst);
  if (v104)
  {
    sub_2753F122C(__src);
    v56 = __dst;
  }

  else
  {
    memcpy(v100, __dst, 0x51uLL);
    v56 = v105;
    sub_275409C88();
    sub_2753F1398(v100);
    sub_2753F122C(__src);
  }

  if (*v56 - v55 != 0.0 || v56[1] - v54 != 0.0)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v57 = sub_27546E3E0();
    __swift_project_value_buffer(v57, qword_2809F3C00);
    sub_2753EF3C8(a2, v102);
    v58 = sub_27546E3C0();
    v59 = sub_27546E6E0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v101 = v61;
      *v60 = 136315394;
      v62 = 0xD000000000000020;
      v63 = "Smart Cross-Fade";
      switch(a1)
      {
        case 1:
          v64 = "Smart Cross-Fade";
          goto LABEL_48;
        case 2:
          v64 = "Dead-Air Removal";
LABEL_48:
          v63 = (v64 - 32);
          v62 = 0xD000000000000010;
          break;
        case 3:
          v63 = "utgoing";
          v62 = 0xD000000000000013;
          break;
        default:
          break;
      }

      v65 = sub_275446968(v62, v63 | 0x8000000000000000, &v101);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      sub_275409858(__src);
      sub_2753F12B8(__src, __dst);
      if (v104)
      {
        v66 = sub_2753F122C(__src);
        v74 = __dst;
      }

      else
      {
        memcpy(v100, __dst, 0x51uLL);
        v74 = v105;
        sub_275409C88();
        sub_2753F1398(v100);
        v66 = sub_2753F122C(__src);
      }

      v75 = sub_2753F1314(*v74, v74[1], v66, v67, v68, v69, v70, v71, v72, v73);
      v77 = v76;
      sub_275409AE4(v102);
      v78 = sub_275446968(v75, v77, &v101);

      *(v60 + 14) = v78;
      _os_log_impl(&dword_2753EC000, v58, v59, "%s: Incoming stereo song time range = %s.", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v61, -1, -1);
      MEMORY[0x277C78090](v60, -1, -1);
    }

    else
    {

      sub_275409AE4(v102);
    }

    sub_2753EF3C8(a3, v102);
    v79 = sub_27546E3C0();
    v80 = sub_27546E6E0();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v101 = v82;
      *v81 = 136315394;
      v83 = 0xD000000000000020;
      v84 = "Smart Cross-Fade";
      switch(a1)
      {
        case 0:
          goto LABEL_61;
        case 1:
          v85 = "Smart Cross-Fade";
          goto LABEL_59;
        case 2:
          v85 = "Dead-Air Removal";
LABEL_59:
          v84 = (v85 - 32);
          v83 = 0xD000000000000010;
          goto LABEL_61;
        case 3:
          v84 = "utgoing";
          v83 = 0xD000000000000013;
LABEL_61:
          v86 = sub_275446968(v83, v84 | 0x8000000000000000, &v101);

          *(v81 + 4) = v86;
          *(v81 + 12) = 2080;
          sub_275409858(__src);
          sub_2753F12B8(__src, __dst);
          if (v104)
          {
            v87 = sub_2753F122C(__src);
            v95 = __dst;
          }

          else
          {
            memcpy(v100, __dst, 0x51uLL);
            v95 = v105;
            sub_275409C88();
            sub_2753F1398(v100);
            v87 = sub_2753F122C(__src);
          }

          v96 = sub_2753F1314(*v95, v95[1], v87, v88, v89, v90, v91, v92, v93, v94);
          v98 = v97;
          sub_275409AE4(v102);
          v99 = sub_275446968(v96, v98, &v101);

          *(v81 + 14) = v99;
          _os_log_impl(&dword_2753EC000, v79, v80, "%s: Incoming spatial song time range = %s.", v81, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x277C78090](v82, -1, -1);
          MEMORY[0x277C78090](v81, -1, -1);

          return;
        default:
          goto LABEL_66;
      }
    }

    sub_275409AE4(v102);
  }
}

uint64_t sub_275425EDC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v32 = *(a1 + 96);
  v33 = *(a1 + 88);
  v31 = *(a1 + 104);
  v30 = *(a1 + 112);
  v25 = *(a1 + 128);
  v26 = *(a1 + 120);
  v24 = *(a1 + 136);
  v23 = *(a1 + 144);
  v18 = *(a1 + 145);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v28 = a2[12];
  v29 = a2[11];
  v27 = a2[13];
  v13 = *(a2 + 112);
  v21 = a2[16];
  v22 = a2[15];
  v20 = a2[17];
  v19 = *(a2 + 144);
  v17 = *(a2 + 145);
  v39[0] = *a1;
  v39[1] = v4;
  v40 = *(a1 + 16);
  v41 = v5;
  v42 = v6;
  v43 = v7;
  v34[0] = v8;
  v34[1] = v9;
  v35 = *(a2 + 1);
  v36 = v10;
  v37 = v11;
  v38 = v12;
  v14 = static Transition.AutomationEffectParameter.== infix(_:_:)(v39, v34);

  result = 0;
  if ((v14 & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 56), *(a2 + 7)), vceqq_f64(*(a1 + 72), *(a2 + 9))), xmmword_275477140)) & 0xF) == 0)
  {
    if ((sub_2754296C0(v33, v32, v31, v30, v29, v28, v27, v13) & 1) == 0 || (sub_2754296C0(v26, v25, v24, v23, v22, v21, v20, v19) & 1) == 0)
    {
      return 0;
    }

    if (!(v18 >> 6))
    {
      return v17 <= 0x3F && v18 == v17;
    }

    if (v18 >> 6 == 1)
    {
      return (v17 & 0xC0) == 0x40 && ((v17 ^ v18) & 0x3F) == 0;
    }

    if (v18 == 128)
    {
      if (v17 != 128)
      {
        return 0;
      }
    }

    else if (v17 != 129)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_275426124()
{
  v0 = sub_27546E840();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_275426174(char a1)
{
  result = 0x6574656D61726170;
  switch(a1)
  {
    case 1:
      result = 0x6D69547472617473;
      break;
    case 2:
      result = 0x656D6954646E65;
      break;
    case 3:
      result = 0x6C61567472617473;
      break;
    case 4:
      result = 0x65756C6156646E65;
      break;
    case 5:
      result = 0x6C6F707265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275426284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275426124();
  *a2 = result;
  return result;
}

uint64_t sub_2754262B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275426174(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2754262E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275426170();
  *a1 = result;
  return result;
}

uint64_t sub_275426328(uint64_t a1)
{
  v2 = sub_275426B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275426364(uint64_t a1)
{
  v2 = sub_275426B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754263A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275426D44(0, &qword_2809DB110, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_8_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275426B70();
  sub_27546EAE0();
  if (!v2)
  {
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_5_10();
    v10 = sub_27546E8A0();
    sub_275449B80(v10, v13, &v46);

    if (v47)
    {
      v41 = v47;
      v40 = v46;
      v42 = v48;
      v43 = v49;
      v14 = v51;
      v44 = v50;
      v45 = v52;
      v54 = 1;
      sub_275426C38();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_5_10();
      sub_27546E8D0();
      v15 = v46;
      v16 = v47;
      v54 = 2;
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_5_10();
      sub_27546E8D0();
      v18 = v46;
      v19 = v47;
      v54 = 3;
      sub_275426CD0();
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_5_10();
      sub_27546E8D0();
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v53 = v49;
      v54 = 4;
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_5_10();
      sub_27546E8D0();
      v33 = v46;
      v34 = v47;
      v35 = v48;
      v36 = v49;
      LOBYTE(v46) = 5;
      OUTLINED_FUNCTION_5_10();
      v20 = sub_27546E8A0();
      sub_27544FC0C(v20, v21, &v54);

      v22 = v54;
      if (v54 < 0xFCu)
      {
        v31 = OUTLINED_FUNCTION_0_22();
        v32(v31);
        *a2 = v40;
        *(a2 + 8) = v41;
        *(a2 + 16) = v42;
        *(a2 + 24) = v43;
        *(a2 + 32) = v44;
        *(a2 + 40) = v14;
        *(a2 + 48) = v45;
        *(a2 + 56) = v15;
        *(a2 + 64) = v16;
        *(a2 + 72) = v18;
        *(a2 + 80) = v19;
        *(a2 + 88) = v37;
        *(a2 + 96) = v38;
        *(a2 + 104) = v39;
        *(a2 + 112) = v53;
        *(a2 + 113) = v46;
        *(a2 + 116) = *(&v46 + 3);
        *(a2 + 120) = v33;
        *(a2 + 128) = v34;
        *(a2 + 136) = v35;
        *(a2 + 144) = v36;
        *(a2 + 145) = v22;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      OUTLINED_FUNCTION_4_11();
      v23 = OUTLINED_FUNCTION_7_8();
      sub_275426D24(v23, v24, v25, v26);
      v27 = OUTLINED_FUNCTION_3_12();
      sub_275426D24(v27, v28, v29, v30);
      LOBYTE(v46) = 5;
      sub_27546E7D0();
      swift_allocError();
      sub_275426BC4();
    }

    else
    {
      LOBYTE(v46) = 0;
      sub_27546E7D0();
      swift_allocError();
      sub_275426BC4();
    }

    sub_27546E7A0();
    swift_willThrow();
    v11 = OUTLINED_FUNCTION_0_22();
    v12(v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_275426894(void *a1)
{
  sub_275426D44(0, &qword_2809DB138, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_9(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v27 - v10;
  v13 = *(v1 + 40);
  v12 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  v17 = *(v1 + 80);
  v18 = *(v1 + 88);
  v34 = *(v1 + 96);
  v35 = v18;
  v19 = *(v1 + 104);
  v41 = *(v1 + 112);
  v20 = *(v1 + 128);
  v29 = *(v1 + 120);
  v30 = v20;
  v32 = *(v1 + 136);
  v33 = v19;
  v31 = *(v1 + 144);
  v28 = *(v1 + 145);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275426B70();
  sub_27546EB00();
  LOBYTE(v37) = 0;
  v22 = v36;
  sub_27546E920();
  if (v22)
  {
    return (*(v7 + 8))(v11, v4);
  }

  v23 = v33;
  v24 = v34;
  v25 = v35;
  v37 = v14;
  v38 = v15;
  v42 = 1;
  sub_275426DA8();
  OUTLINED_FUNCTION_1_17();
  v37 = v16;
  v38 = v17;
  v42 = 2;
  OUTLINED_FUNCTION_1_17();
  v37 = v25;
  v38 = v24;
  v39 = v23;
  v40 = v41;
  v42 = 3;
  sub_275426DFC();
  OUTLINED_FUNCTION_1_17();
  v37 = v29;
  v38 = v30;
  v39 = v32;
  v40 = v31;
  v42 = 4;
  OUTLINED_FUNCTION_1_17();
  LOBYTE(v37) = v28;
  Transition.ContinuousSchedule.AutomationCurve.id.getter();
  v42 = 5;
  sub_27546E920();
  (*(v7 + 8))(v11, v4);
}

unint64_t sub_275426B70()
{
  result = qword_2809DB118;
  if (!qword_2809DB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB118);
  }

  return result;
}

unint64_t sub_275426BC4()
{
  result = qword_2809DB120;
  if (!qword_2809DB120)
  {
    sub_275426D44(255, &qword_2809DB110, MEMORY[0x277D844C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB120);
  }

  return result;
}

unint64_t sub_275426C38()
{
  result = qword_2809DB128;
  if (!qword_2809DB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB128);
  }

  return result;
}

uint64_t sub_275426C8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_275426CD0()
{
  result = qword_2809DB130;
  if (!qword_2809DB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB130);
  }

  return result;
}

uint64_t sub_275426D24(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

void sub_275426D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275426B70();
    v7 = a3(a1, &_s14AutomationRampV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275426DA8()
{
  result = qword_2809DB140;
  if (!qword_2809DB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB140);
  }

  return result;
}

unint64_t sub_275426DFC()
{
  result = qword_2809DB148;
  if (!qword_2809DB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB148);
  }

  return result;
}

uint64_t _s14AutomationRampV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14AutomationRampV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x275426FA4);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_275426FF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 146))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_275427030(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2754270AC()
{
  result = qword_2809DB150;
  if (!qword_2809DB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB150);
  }

  return result;
}

unint64_t sub_275427104()
{
  result = qword_2809DB158;
  if (!qword_2809DB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB158);
  }

  return result;
}

unint64_t sub_27542715C()
{
  result = qword_2809DB160;
  if (!qword_2809DB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB160);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return sub_27546E950();
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  result = *(v0 - 288);
  v2 = *(v0 - 280);
  v3 = *(v0 - 272);
  v4 = *(v0 - 260);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_11()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 216);
  v4 = *(v0 - 208);
  v5 = *(v0 - 200);
  v6 = *(v0 - 192);
  v7 = *(v0 - 184);

  return sub_275426C8C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_6_10()
{
  result = *(v0 - 224);
  v2 = *(v0 - 216);
  v3 = *(v0 - 208);
  v4 = *(v0 - 200);
  v5 = *(v0 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_8()
{
  result = *(v0 - 256);
  v2 = *(v0 - 248);
  v3 = *(v0 - 240);
  v4 = *(v0 - 72);
  return result;
}

uint64_t sub_275427284(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return sub_27543CD70(*(a1 + 32), *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2754272D8(char a1)
{
  if (a1)
  {
    return 0x6974616D6F747561;
  }

  else
  {
    return 0x6E656D6563616C70;
  }
}

uint64_t sub_27542731C()
{
  v0 = sub_27546E840();

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

uint64_t sub_27542736C(char a1)
{
  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_2754273C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27542731C();
  *a2 = result;
  return result;
}

uint64_t sub_2754273F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2754272D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27542742C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27542731C();
  *a1 = result;
  return result;
}

uint64_t sub_275427468(uint64_t a1)
{
  v2 = sub_275427D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754274A4(uint64_t a1)
{
  v2 = sub_275427D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275427504@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27542731C();
  *a2 = result;
  return result;
}

uint64_t sub_27542753C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27542736C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_275427570@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27542731C();
  *a1 = result;
  return result;
}

uint64_t sub_2754275A0(uint64_t a1)
{
  v2 = sub_275427D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754275DC(uint64_t a1)
{
  v2 = sub_275427D38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275427618@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  OUTLINED_FUNCTION_2_17();
  v3 = MEMORY[0x277D844C8];
  sub_275427ED8(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v40 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = OUTLINED_FUNCTION_1_18();
  sub_275427ED8(v15, v16, v17, &unk_288414AE0, v3);
  OUTLINED_FUNCTION_8_9(v18);
  v39 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275427D8C();
  v24 = v41;
  sub_27546EAE0();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v40;
  LOBYTE(v42) = 0;
  sub_275427D38();
  sub_27546E850();
  v41 = a1;
  v44 = 0;
  sub_275427DE0();
  sub_27546E8D0();
  v26 = v42;
  v27 = v43;
  v44 = 1;
  sub_27546E8D0();
  v37 = v14;
  v28 = v42;
  v29 = v43;
  sub_275427E34();
  v44 = 1;
  sub_275427F94(&qword_2809DB198, sub_275427E84);
  sub_27546E8D0();
  v30 = v41;
  (*(v25 + 8))(v37, v8);
  v31 = OUTLINED_FUNCTION_3_13();
  v32(v31);
  v33 = v42;
  result = __swift_destroy_boxed_opaque_existential_1(v30);
  v35 = v38;
  *v38 = v26;
  v35[1] = v27;
  v35[2] = v28;
  v35[3] = v29;
  v35[4] = v33;
  return result;
}

uint64_t sub_2754279A8(void *a1)
{
  OUTLINED_FUNCTION_2_17();
  v2 = MEMORY[0x277D84538];
  sub_275427ED8(0, v3, v4, v5, MEMORY[0x277D84538]);
  v7 = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v35 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = OUTLINED_FUNCTION_1_18();
  sub_275427ED8(v14, v15, v16, &unk_288414AE0, v2);
  v18 = v17;
  OUTLINED_FUNCTION_8_9(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275427D8C();
  v27 = v18;
  sub_27546EB00();
  LOBYTE(v37) = 0;
  sub_275427D38();
  sub_27546E8F0();
  v28 = v34;
  v37 = *v34;
  v38 = 0;
  sub_275427F40();
  OUTLINED_FUNCTION_4_12();
  v29 = v36;
  sub_27546E950();
  if (v29)
  {
    (*(v35 + 8))(v13, v7);
  }

  else
  {
    v36 = v18;
    v33 = v20;
    v31 = v35;
    v37 = v28[1];
    v38 = 1;
    OUTLINED_FUNCTION_4_12();
    sub_27546E950();
    *&v37 = *(v28 + 4);
    v38 = 1;
    sub_275427E34();
    sub_275427F94(&qword_2809DB1C0, sub_275428000);
    v27 = v36;
    sub_27546E950();
    v32 = v31;
    v20 = v33;
    (*(v32 + 8))(v13, v7);
  }

  return (*(v20 + 8))(v25, v27);
}

double sub_275427CD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275427618(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_275427D38()
{
  result = qword_2809DB170;
  if (!qword_2809DB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB170);
  }

  return result;
}

unint64_t sub_275427D8C()
{
  result = qword_2809DB180;
  if (!qword_2809DB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB180);
  }

  return result;
}

unint64_t sub_275427DE0()
{
  result = qword_2809DB188;
  if (!qword_2809DB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB188);
  }

  return result;
}

void sub_275427E34()
{
  if (!qword_2809DB190)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB190);
    }
  }
}

unint64_t sub_275427E84()
{
  result = qword_2809DB1A0;
  if (!qword_2809DB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1A0);
  }

  return result;
}

void sub_275427ED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_275427F40()
{
  result = qword_2809DB1B8;
  if (!qword_2809DB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1B8);
  }

  return result;
}

uint64_t sub_275427F94(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_275427E34();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275428000()
{
  result = qword_2809DB1C8;
  if (!qword_2809DB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1C8);
  }

  return result;
}

_BYTE *sub_275428068(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275428134);
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

uint64_t sub_275428168(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_2754281A8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_275428200()
{
  result = qword_2809DB1D0;
  if (!qword_2809DB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1D0);
  }

  return result;
}

unint64_t sub_275428258()
{
  result = qword_2809DB1D8;
  if (!qword_2809DB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1D8);
  }

  return result;
}

unint64_t sub_2754282B0()
{
  result = qword_2809DB1E0;
  if (!qword_2809DB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1E0);
  }

  return result;
}

unint64_t sub_275428308()
{
  result = qword_2809DB1E8;
  if (!qword_2809DB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1E8);
  }

  return result;
}

unint64_t sub_275428360()
{
  result = qword_2809DB1F0;
  if (!qword_2809DB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1F0);
  }

  return result;
}

unint64_t sub_2754283B8()
{
  result = qword_2809DB1F8;
  if (!qword_2809DB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB1F8);
  }

  return result;
}

uint64_t sub_2754284A4()
{
  v0 = sub_27546E840();

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

uint64_t sub_2754284F8(char a1)
{
  if (a1)
  {
    return 0x6E4974657366666FLL;
  }

  else
  {
    return 0x65766974616C6572;
  }
}

uint64_t sub_27542856C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2754284A4();
  *a2 = result;
  return result;
}

uint64_t sub_27542859C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2754284F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2754285D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2754284A4();
  *a1 = result;
  return result;
}

uint64_t sub_2754285F8(uint64_t a1)
{
  v2 = sub_275428A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275428634(uint64_t a1)
{
  v2 = sub_275428A14();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_275428670(uint64_t *a1)
{
  sub_275428ABC(0, &qword_2809DB200, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275428A14();
  sub_27546EAE0();
  if (!v1)
  {
    v15[7] = 0;
    sub_275428A68();
    sub_27546E8D0();
    v2 = v16;
    v15[6] = 1;
    sub_27546E870();
    (*(v8 + 8))(v12, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_275428844(void *a1, double a2)
{
  sub_275428ABC(0, &qword_2809DB218, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v16[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275428A14();
  sub_27546EB00();
  v17 = a2;
  v16[15] = 0;
  sub_275428B20();
  sub_27546E950();
  if (!v2)
  {
    v16[14] = 1;
    sub_27546E930();
  }

  return (*(v9 + 8))(v13, v6);
}

void sub_2754289CC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_275428670(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_275428A14()
{
  result = qword_2809DB208;
  if (!qword_2809DB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB208);
  }

  return result;
}

unint64_t sub_275428A68()
{
  result = qword_2809DB210;
  if (!qword_2809DB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB210);
  }

  return result;
}

void sub_275428ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275428A14();
    v7 = a3(a1, &_s14AutomationTimeV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275428B20()
{
  result = qword_2809DB220;
  if (!qword_2809DB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB220);
  }

  return result;
}

_BYTE *_s14AutomationTimeV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275428C40);
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

unint64_t sub_275428C8C()
{
  result = qword_2809DB228;
  if (!qword_2809DB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB228);
  }

  return result;
}

unint64_t sub_275428CE4()
{
  result = qword_2809DB230;
  if (!qword_2809DB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB230);
  }

  return result;
}

unint64_t sub_275428D3C()
{
  result = qword_2809DB238;
  if (!qword_2809DB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB238);
  }

  return result;
}

BOOL sub_275428D90()
{
  v0 = sub_27546E840();

  return v0 != 0;
}

uint64_t sub_275428DD8(void *a1, double a2, double a3)
{
  sub_27542928C(0, &qword_2809DB250, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_8_9(v6);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275429238();
  sub_27546EB00();
  *v17 = a2;
  *&v17[1] = a3;
  sub_275427F40();
  sub_27546E950();
  return (*(v10 + 8))(v14, v7);
}

double sub_275428F30(uint64_t *a1)
{
  sub_27542928C(0, &qword_2809DB240, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275429238();
  sub_27546EAE0();
  if (!v1)
  {
    sub_275427DE0();
    sub_27546E8D0();
    (*(v8 + 8))(v12, v5);
    v2 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

BOOL sub_2754290D8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275428D90();
  *a2 = result;
  return result;
}

BOOL sub_275429140@<W0>(_BYTE *a1@<X8>)
{
  result = sub_275428D90();
  *a1 = result;
  return result;
}

uint64_t sub_275429178(uint64_t a1)
{
  v2 = sub_275429238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754291B4(uint64_t a1)
{
  v2 = sub_275429238();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2754291F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_275428F30(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_275429238()
{
  result = qword_2809DB248;
  if (!qword_2809DB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB248);
  }

  return result;
}

void sub_27542928C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275429238();
    v7 = a3(a1, &_s20MappedAutomationTimeV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *_s20MappedAutomationTimeV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27542938CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754293D8()
{
  result = qword_2809DB258;
  if (!qword_2809DB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB258);
  }

  return result;
}

unint64_t sub_275429430()
{
  result = qword_2809DB260;
  if (!qword_2809DB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB260);
  }

  return result;
}

unint64_t sub_275429488()
{
  result = qword_2809DB268;
  if (!qword_2809DB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB268);
  }

  return result;
}

double sub_2754294DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5)
  {
    v5 = *&a2;
    if (!*(a1 + 16))
    {
      return v5;
    }

    v10 = sub_27540C314(a3, a4);
    if ((v22 & 1) == 0)
    {
      return v5;
    }

    return *(*(a1 + 56) + 8 * v10);
  }

  if (a5 != 1)
  {
    return *&a2;
  }

  if (*(a1 + 16))
  {
    v8 = OUTLINED_FUNCTION_3_14();
    v10 = sub_27540C314(v8, v9);
    if (v11)
    {
      return *(*(a1 + 56) + 8 * v10);
    }
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v12 = sub_27546E3E0();
  __swift_project_value_buffer(v12, qword_2809F3C00);

  v13 = sub_27546E3C0();
  v14 = sub_27546E6D0();
  v15 = OUTLINED_FUNCTION_3_14();
  sub_275426D24(v15, v16, a4, 1u);
  if (os_log_type_enabled(v13, v14))
  {
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v17 = 136315138;
    v18 = OUTLINED_FUNCTION_3_14();
    *(v17 + 4) = sub_275446968(v18, v19, v20);
    _os_log_impl(&dword_2753EC000, v13, v14, "Mapped automation value missing. ID = %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x277C78090](v24, -1, -1);
    MEMORY[0x277C78090](v17, -1, -1);
  }

  sub_275408F98();
  swift_allocError();
  *v21 = 13;
  swift_willThrow();
  return v5;
}

uint64_t sub_2754296C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a4)
  {
    if (!a8 && *&a1 == *&a5)
    {
      if (a2 != a6 || a3 != a7)
      {
        return sub_27546E9A0();
      }

      return 1;
    }

    return 0;
  }

  if (a4 == 1)
  {
    if (a8 == 1)
    {
      if (a1 != a5 || a2 != a6)
      {
        return sub_27546E9A0();
      }

      return 1;
    }

    return 0;
  }

  return a8 == 2 && *&a1 == *&a5;
}

uint64_t sub_275429764()
{
  v0 = sub_27546E840();

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

uint64_t sub_2754297B8(char a1)
{
  if (a1)
  {
    return 0x746C7561666564;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_275429844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275429764();
  *a2 = result;
  return result;
}

uint64_t sub_275429874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2754297B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2754298A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275429764();
  *a1 = result;
  return result;
}

uint64_t sub_2754298D0(uint64_t a1)
{
  v2 = sub_275429DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27542990C(uint64_t a1)
{
  v2 = sub_275429DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_275429948(uint64_t *a1)
{
  sub_275429EE0(0, &qword_2809DB270, MEMORY[0x277D844C8]);
  v4 = OUTLINED_FUNCTION_8_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275429DC4();
  sub_27546EAE0();
  if (!v1)
  {
    sub_275429E18();
    sub_27546E890();
    v11 = sub_27546E870();
    v8 = v11;
    v14 = v12;
    if (v19)
    {
      v15 = OUTLINED_FUNCTION_0_23();
      v16(v15);
      if (v14)
      {
        v8 = v18;
      }
    }

    else
    {
      if (v12)
      {
        sub_27546E7D0();
        swift_allocError();
        v8 = v17;
        sub_275429E6C();
        sub_27546E7A0();
        swift_willThrow();
      }

      v9 = OUTLINED_FUNCTION_0_23();
      v10(v9);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_275429BCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_275429EE0(0, &qword_2809DB290, MEMORY[0x277D84538]);
  v9 = OUTLINED_FUNCTION_8_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275429DC4();
  sub_27546EB00();
  if (!a5)
  {
    sub_275429F44();
    OUTLINED_FUNCTION_2_18();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    OUTLINED_FUNCTION_1_19();
    sub_27546E930();
    goto LABEL_6;
  }

  if (a5 != 1)
  {
    goto LABEL_5;
  }

  sub_275429F44();
  OUTLINED_FUNCTION_2_18();
LABEL_6:
  v15 = *(v11 + 8);
  v16 = OUTLINED_FUNCTION_3_14();
  return v17(v16);
}

void *sub_275429D6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_275429948(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_275429DC4()
{
  result = qword_2809DB278;
  if (!qword_2809DB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB278);
  }

  return result;
}

unint64_t sub_275429E18()
{
  result = qword_2809DB280;
  if (!qword_2809DB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB280);
  }

  return result;
}

unint64_t sub_275429E6C()
{
  result = qword_2809DB288;
  if (!qword_2809DB288)
  {
    sub_275429EE0(255, &qword_2809DB270, MEMORY[0x277D844C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB288);
  }

  return result;
}

void sub_275429EE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275429DC4();
    v7 = a3(a1, &_s21MappedAutomationValueO10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275429F44()
{
  result = qword_2809DB298;
  if (!qword_2809DB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB298);
  }

  return result;
}

_BYTE *_s21MappedAutomationValueO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27542A064);
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

uint64_t sub_27542A09C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27542A0DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_27542A140()
{
  result = qword_2809DB2A0;
  if (!qword_2809DB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2A0);
  }

  return result;
}

unint64_t sub_27542A198()
{
  result = qword_2809DB2A8;
  if (!qword_2809DB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2A8);
  }

  return result;
}

unint64_t sub_27542A1F0()
{
  result = qword_2809DB2B0;
  if (!qword_2809DB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_19()
{
  v1 = *(v0 - 112);
  *(v0 - 96) = 1;
  return v0 - 96;
}

uint64_t OUTLINED_FUNCTION_2_18()
{
  v2 = *(v0 - 104);

  return sub_27546E950();
}

uint64_t sub_27542A2A0(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_24();
  sub_27546EAD0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    OUTLINED_FUNCTION_0_24();
    v1 = sub_27546E9B0();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_27542A34C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAF0();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_27546E9F0();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_27542A3E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27542A2A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_27542A414(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_27542A34C(a1);
}

unint64_t sub_27542A434()
{
  result = qword_2809DB2B8;
  if (!qword_2809DB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2B8);
  }

  return result;
}

unint64_t sub_27542A48C()
{
  result = qword_2809DB2C0;
  if (!qword_2809DB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2C0);
  }

  return result;
}

unint64_t sub_27542A4F4()
{
  result = qword_2809DB2C8;
  if (!qword_2809DB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2C8);
  }

  return result;
}

double sub_27542A55C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_27542A568(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_24();
  sub_27546EAD0();
  if (v1)
  {
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  OUTLINED_FUNCTION_0_24();
  sub_27546E9C0();
  v2 = v5;
  if (v5 < 0.0 || v5 > 1.0)
  {
    sub_27546E7D0();
    swift_allocError();
    sub_27546E790();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v8);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v2;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_27542A678(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAF0();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_27546EA00();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void sub_27542A70C(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_27542A568(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_27542A764()
{
  result = qword_2809DB2D0;
  if (!qword_2809DB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2D0);
  }

  return result;
}

void *sub_27542A7D8(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAD0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_27542AA14();
    sub_27542AAB8(&qword_2809DB2E0, sub_27542AA64);
    sub_27546E9E0();
    v4 = v6;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_27542A8EC(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAF0();
  v5[6] = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_27542AA14();
  sub_27542AAB8(&qword_2809DB2F0, sub_27542AB24);
  sub_27546EA20();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void *sub_27542A9CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_27542A7D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_27542AA14()
{
  if (!qword_2809DB2D8)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB2D8);
    }
  }
}

unint64_t sub_27542AA64()
{
  result = qword_2809DB2E8;
  if (!qword_2809DB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2E8);
  }

  return result;
}

uint64_t sub_27542AAB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_27542AA14();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27542AB24()
{
  result = qword_2809DB2F8;
  if (!qword_2809DB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB2F8);
  }

  return result;
}

uint64_t sub_27542AB88(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if ((sub_27543C938(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  v6 = *(a2 + 48);

  return sub_27543C938(v5, v6);
}

uint64_t sub_27542AC3C()
{
  v0 = sub_27546E840();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27542AC88(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x74657366666FLL;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0x7463757274736E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27542AD14()
{
  v0 = sub_27546E840();

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

uint64_t sub_27542AD68(char a1)
{
  if (a1)
  {
    return 0x676E696D6F636E69;
  }

  else
  {
    return 0x676E696F6774756FLL;
  }
}

uint64_t sub_27542ADC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27542AC3C();
  *a2 = result;
  return result;
}

uint64_t sub_27542ADF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27542AC88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27542AE24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27542AC3C();
  *a1 = result;
  return result;
}

uint64_t sub_27542AE58(uint64_t a1)
{
  v2 = sub_27542B7DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27542AE94(uint64_t a1)
{
  v2 = sub_27542B7DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27542AED0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_27543E9D0();
}

uint64_t sub_27542AEF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27542AD14();
  *a2 = result;
  return result;
}

uint64_t sub_27542AF24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27542AD68(*v1);
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_27542AF74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27542AD14();
  *a1 = result;
  return result;
}

uint64_t sub_27542AF9C(uint64_t a1)
{
  v2 = sub_27542B788();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27542AFD8(uint64_t a1)
{
  v2 = sub_27542B788();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27542B014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  OUTLINED_FUNCTION_2_19();
  v3 = MEMORY[0x277D844C8];
  sub_27542B8D8(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v44 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = OUTLINED_FUNCTION_1_20();
  sub_27542B8D8(v15, v16, v17, v18, v3);
  v20 = v19;
  OUTLINED_FUNCTION_8_9(v19);
  v45 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v41 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542B7DC();
  v28 = v47;
  sub_27546EAE0();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v14;
  v30 = v45;
  v31 = v46;
  v52 = 0;
  sub_27542B830();
  OUTLINED_FUNCTION_8_10();
  sub_27546E8D0();
  v32 = v26;
  v33 = v48;
  OUTLINED_FUNCTION_7_10();
  sub_275427DE0();
  OUTLINED_FUNCTION_8_10();
  sub_27546E890();
  if (v50)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v48;
  }

  if (v50)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v49;
  }

  LOBYTE(v48) = 2;
  v36 = sub_27546E880();
  v51 = v37;
  v47 = v36;
  LOBYTE(v48) = 3;
  sub_27542B788();
  sub_27546E850();
  v43 = v32;
  v52 = 0;
  sub_27542B884();
  OUTLINED_FUNCTION_8_10();
  v42 = v38;
  sub_27546E8D0();
  v41 = v48;
  OUTLINED_FUNCTION_7_10();
  OUTLINED_FUNCTION_8_10();
  v42 = v29;
  sub_27546E8D0();
  (*(v44 + 8))(v42, v8);
  (*(v30 + 8))(v43, v20);
  v39 = v48;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  *(v31 + 24) = v47;
  *(v31 + 32) = v51 & 1;
  *(v31 + 40) = v41;
  *(v31 + 48) = v39;
  return result;
}

uint64_t sub_27542B3E8(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_2_19();
  v4 = MEMORY[0x277D84538];
  sub_27542B8D8(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = OUTLINED_FUNCTION_8_9(v8);
  v38 = v10;
  v39 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = OUTLINED_FUNCTION_1_20();
  sub_27542B8D8(v16, v17, v18, v19, v4);
  v21 = v20;
  OUTLINED_FUNCTION_8_9(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v37 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542B7DC();
  sub_27546EB00();
  v30 = v2;
  *&v41 = *v2;
  v42 = 0;
  sub_27542B940();
  OUTLINED_FUNCTION_3_15();
  v31 = v40;
  sub_27546E950();
  if (v31)
  {
    return (*(v23 + 8))(v28, v21);
  }

  v32 = v39;
  v41 = *(v30 + 1);
  OUTLINED_FUNCTION_7_10();
  sub_275427F40();
  OUTLINED_FUNCTION_3_15();
  sub_27546E950();
  *&v41 = v30[3];
  BYTE8(v41) = *(v30 + 32);
  v42 = 2;
  sub_27542B994();
  sub_27542B9E4();
  OUTLINED_FUNCTION_3_15();
  sub_27546E950();
  LOBYTE(v41) = 3;
  sub_27542B788();
  v34 = v21;
  v35 = v15;
  v36 = v34;
  sub_27546E8F0();
  *&v41 = v30[5];
  v42 = 0;
  sub_27542BA54();
  sub_27546E950();
  *&v41 = v30[6];
  OUTLINED_FUNCTION_7_10();
  sub_27546E950();
  (*(v38 + 8))(v35, v32);
  return (*(v23 + 8))(v28, v36);
}

double sub_27542B720@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27542B014(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_27542B788()
{
  result = qword_2809DB308;
  if (!qword_2809DB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB308);
  }

  return result;
}

unint64_t sub_27542B7DC()
{
  result = qword_2809DB318;
  if (!qword_2809DB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB318);
  }

  return result;
}

unint64_t sub_27542B830()
{
  result = qword_2809DB320;
  if (!qword_2809DB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB320);
  }

  return result;
}

unint64_t sub_27542B884()
{
  result = qword_2809DB328;
  if (!qword_2809DB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB328);
  }

  return result;
}

void sub_27542B8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_27542B940()
{
  result = qword_2809DB340;
  if (!qword_2809DB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB340);
  }

  return result;
}

void sub_27542B994()
{
  if (!qword_2809DB348)
  {
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB348);
    }
  }
}

unint64_t sub_27542B9E4()
{
  result = qword_2809DB350;
  if (!qword_2809DB350)
  {
    sub_27542B994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB350);
  }

  return result;
}

unint64_t sub_27542BA54()
{
  result = qword_2809DB358;
  if (!qword_2809DB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB358);
  }

  return result;
}

uint64_t _s4SongV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_27542BB30(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27542BBFCLL);
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

_BYTE *sub_27542BC30(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27542BCFCLL);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_27542BD4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_27542BD8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27542BDE8()
{
  result = qword_2809DB360;
  if (!qword_2809DB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB360);
  }

  return result;
}

unint64_t sub_27542BE40()
{
  result = qword_2809DB368;
  if (!qword_2809DB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB368);
  }

  return result;
}

unint64_t sub_27542BE98()
{
  result = qword_2809DB370;
  if (!qword_2809DB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB370);
  }

  return result;
}

unint64_t sub_27542BEF0()
{
  result = qword_2809DB378;
  if (!qword_2809DB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB378);
  }

  return result;
}

unint64_t sub_27542BF48()
{
  result = qword_2809DB380;
  if (!qword_2809DB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB380);
  }

  return result;
}

unint64_t sub_27542BFA0()
{
  result = qword_2809DB388;
  if (!qword_2809DB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB388);
  }

  return result;
}

void *sub_27542C054@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27542C0A0(uint64_t *a1)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_24();
  sub_27546EAD0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    OUTLINED_FUNCTION_0_24();
    v1 = sub_27546E9D0();
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_27542C144(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAF0();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_27546EA10();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_27542C1D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27542C0A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_27542C240()
{
  result = qword_2809DB390;
  if (!qword_2809DB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB390);
  }

  return result;
}

uint64_t sub_27542C2A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_27546E140();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  if (qword_2809DADB0 != -1)
  {
    swift_once();
  }

  v17 = sub_27542CA80(a1, a2, a3, a4, qword_2809F3C28);
  if (v17)
  {
    v18 = v17;

    sub_27546E130();

    (*(v10 + 32))(v16, v14, v9);
    v19 = sub_27546E150();
    if (!v4)
    {
      a2 = sub_27542C638(v19, v20);
    }

    (*(v10 + 8))(v16, v9);
  }

  else
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v21 = sub_27546E3E0();
    __swift_project_value_buffer(v21, qword_2809F3C00);

    v22 = sub_27546E3C0();
    v23 = sub_27546E6D0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315394;
      v26 = sub_275446968(a1, a2, &v30);

      *(v24 + 4) = v26;
      *(v24 + 12) = 2080;
      a2 = sub_275446968(a3, a4, &v30);

      *(v24 + 14) = a2;
      _os_log_impl(&dword_2753EC000, v22, v23, "Transition style catalog JSON resource missing. Name = %s. Extension = %s.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v25, -1, -1);
      MEMORY[0x277C78090](v24, -1, -1);
    }

    else
    {
    }

    sub_275408F98();
    swift_allocError();
    *v27 = 13;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_27542C638(uint64_t a1, unint64_t a2)
{
  v5 = sub_27546E120();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_27546E110();
  sub_27542CAF8();
  sub_27546E100();
  sub_27542CB4C(a1, a2);

  if (!v2)
  {
    return v9;
  }

  return result;
}

void *sub_27542C6E0(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAD0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_27542C91C();
    sub_27542C9C0(&qword_2809DB3A0, sub_27542C96C);
    sub_27546E9E0();
    v4 = v6;
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_27542C7F4(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAF0();
  v5[6] = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_27542C91C();
  sub_27542C9C0(&qword_2809DB3B0, sub_27542CA2C);
  sub_27546EA20();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void *sub_27542C8D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_27542C6E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_27542C91C()
{
  if (!qword_2809DB398)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB398);
    }
  }
}

unint64_t sub_27542C96C()
{
  result = qword_2809DB3A8;
  if (!qword_2809DB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB3A8);
  }

  return result;
}

uint64_t sub_27542C9C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_27542C91C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27542CA2C()
{
  result = qword_2809DB3B8;
  if (!qword_2809DB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB3B8);
  }

  return result;
}

id sub_27542CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_27546E500();
  v7 = sub_27546E500();
  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_27542CAF8()
{
  result = qword_2809DB3C0;
  if (!qword_2809DB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB3C0);
  }

  return result;
}

uint64_t sub_27542CB4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_27542CBA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27542CBF4(a1, *v2, v6);
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_27542CBF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = a2 + 8;
  v6 = *(a2 + 16) + 1;
  while (--v6)
  {
    v7 = (v5 + 56);
    v8 = *(v5 + 24);
    v5 += 56;
    if (v8 == result)
    {
      v14 = *(v7 - 24);
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = *(v7 + 1);
      v12 = *(v7 + 2);

      v13 = v14;
      goto LABEL_6;
    }
  }

  v3 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0uLL;
LABEL_6:
  *a3 = v3;
  *(a3 + 8) = v13;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
  return result;
}

unint64_t sub_27542CCB0()
{
  result = qword_2809DB3C8;
  if (!qword_2809DB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB3C8);
  }

  return result;
}

uint64_t sub_27542CD04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954676E6F73 && a2 == 0xE800000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000027546F1B0 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x697469736E617274 && a2 == 0xEE00656D69546E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_27542CE2C(char a1)
{
  if (!a1)
  {
    return 0x656D6954676E6F73;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x697469736E617274;
}

uint64_t sub_27542CE94(void *a1)
{
  sub_27542D574(0, &qword_2809DB3F8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v14 = *v1;
  v13 = v1[1];
  v15 = v1[2];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542D424();
  sub_27546EB00();
  v20 = v14;
  v19 = 0;
  sub_27542D5D8();
  OUTLINED_FUNCTION_1_21();
  if (!v2)
  {
    v20 = v13;
    v19 = 1;
    sub_27542D62C();
    OUTLINED_FUNCTION_1_21();
    v20 = v15;
    v19 = 2;
    sub_27542D680();
    OUTLINED_FUNCTION_1_21();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_27542D038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_27542D574(0, &qword_2809DB3D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542D424();
  sub_27546EAE0();
  if (!v2)
  {
    v20 = 0;
    sub_27542D478();
    OUTLINED_FUNCTION_0_25();
    v15 = v21;
    v20 = 1;
    sub_27542D4CC();
    OUTLINED_FUNCTION_0_25();
    v16 = v21;
    v20 = 2;
    sub_27542D520();
    OUTLINED_FUNCTION_0_25();
    (*(v9 + 8))(v13, v6);
    v18 = v21;
    *a2 = v15;
    a2[1] = v16;
    a2[2] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27542D21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27542CD04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27542D264@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27542CE24();
  *a1 = result;
  return result;
}

uint64_t sub_27542D28C(uint64_t a1)
{
  v2 = sub_27542D424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27542D2C8(uint64_t a1)
{
  v2 = sub_27542D424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s13TimeAlignmentVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13TimeAlignmentVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_27542D424()
{
  result = qword_2809DB3D8;
  if (!qword_2809DB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB3D8);
  }

  return result;
}

unint64_t sub_27542D478()
{
  result = qword_2809DB3E0;
  if (!qword_2809DB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB3E0);
  }

  return result;
}

unint64_t sub_27542D4CC()
{
  result = qword_2809DB3E8;
  if (!qword_2809DB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB3E8);
  }

  return result;
}

unint64_t sub_27542D520()
{
  result = qword_2809DB3F0;
  if (!qword_2809DB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB3F0);
  }

  return result;
}

void sub_27542D574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27542D424();
    v7 = a3(a1, &_s13TimeAlignmentV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27542D5D8()
{
  result = qword_2809DB400;
  if (!qword_2809DB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB400);
  }

  return result;
}

unint64_t sub_27542D62C()
{
  result = qword_2809DB408;
  if (!qword_2809DB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB408);
  }

  return result;
}

unint64_t sub_27542D680()
{
  result = qword_2809DB410;
  if (!qword_2809DB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB410);
  }

  return result;
}

_BYTE *_s13TimeAlignmentV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27542D7A0);
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

unint64_t sub_27542D7DC()
{
  result = qword_2809DB418;
  if (!qword_2809DB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB418);
  }

  return result;
}

unint64_t sub_27542D834()
{
  result = qword_2809DB420;
  if (!qword_2809DB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB420);
  }

  return result;
}

unint64_t sub_27542D88C()
{
  result = qword_2809DB428;
  if (!qword_2809DB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB428);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_25()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_1_21()
{

  return sub_27546E950();
}

double sub_27542D92C@<D0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  if (v8 >= *a1)
  {
    v13 = *a1;
  }

  else
  {
    v13 = *(a2 + 16);
  }

  v14 = v13 - *v3;
  v15 = 0.0;
  v16 = 0.0;
  if (v14 > 0.0)
  {
    v16 = 1.0 / v6 * v14;
  }

  v23[1] = *v3;
  v23[2] = v11;
  v23[3] = v12;
  v24 = *(v3 + 24);
  v25 = *(v3 + 40);
  v26 = *(v3 + 56);
  v23[0] = v5;
  v21[0] = v6;
  v21[1] = v7;
  v21[2] = v8;
  v21[3] = v9;
  v22 = v10;
  sub_27542E124(v23, v21);
  if (v9 >= v5)
  {
    v18 = v9;
  }

  else
  {
    v18 = v5;
  }

  v19 = v18 - v9;
  if (v19 > 0.0)
  {
    v15 = 1.0 / v7 * v19;
  }

  result = v11 + v16 + v17 + v15;
  *a3 = v5;
  a3[1] = result;
  a3[2] = v12 + result - v11;
  return result;
}

double sub_27542DA30@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>)
{
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *v9;
  v16 = *(v9 + 8);
  v18 = *(v9 + 16);
  v43 = *a1;
  v46[0] = *a2;
  v19 = *&v16 + *&v43 - *&v18;
  v48 = v17;
  v49 = v16;
  v50 = v18;
  v20 = *(v9 + 40);
  v51 = *(v9 + 24);
  v52 = v20;
  LOBYTE(v53) = *(v9 + 56);
  OUTLINED_FUNCTION_3_16(a1, a2, a3, a4, a5, a6, a7, a8, v37, v40, v43, v46[0], v11, v13, v14, v47, v13, v17, v16, v18, v51, *(&v51 + 1), v20, *(&v20 + 1), v53, v54);
  v21 = v55;
  if (v55 >= v19)
  {
    v21 = v19;
  }

  v22 = v21 - *&v16;
  v23 = 0.0;
  if (v22 > 0.0)
  {
    v23 = v22 / (1.0 / v12);
  }

  v41 = *&v23;
  OUTLINED_FUNCTION_0_26();
  v54 = *&v19;
  *v46 = v12;
  v46[1] = v11;
  v46[2] = v13;
  v46[3] = v14;
  v47 = v15;
  sub_27542E1D4(&v54, v46);
  v38 = v24;
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_3_16(v25, v26, v27, v28, v29, v30, v31, v32, v38, v41, v44, SLOBYTE(v12), v11, v13, v14, v47, v14, v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54);
  if (v55 >= v19)
  {
    v33 = v55;
  }

  else
  {
    v33 = v19;
  }

  v34 = v33 - v55;
  v35 = 0.0;
  if (v34 > 0.0)
  {
    v35 = v34 / (1.0 / *&v11);
  }

  *a9 = *&v17 + v42 + v39 + v35;
  a9[1] = v19;
  result = v45;
  a9[2] = v45;
  return result;
}

uint64_t sub_27542DB88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000027546F1D0 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027546F1F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

unint64_t sub_27542DC68(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_27542DCA0(void *a1)
{
  sub_27542E4D8(0, &qword_2809DB430, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = *v1;
  v14 = *(v1 + 2);
  v18 = *(v1 + 40);
  v19 = *(v1 + 24);
  v20 = v13;
  v15 = *(v1 + 56);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542E3DC();
  sub_27546EB00();
  v21 = v20;
  *&v22 = v14;
  v24 = 0;
  sub_27542E430();
  OUTLINED_FUNCTION_2_20();
  sub_27546E950();
  if (!v2)
  {
    v22 = v18;
    v21 = v19;
    v23 = v15;
    v24 = 1;
    sub_27542E484();
    OUTLINED_FUNCTION_2_20();
    sub_27546E910();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_27542DE4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27542E4D8(0, &qword_2809DB450, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v20 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542E3DC();
  sub_27546EAE0();
  if (!v2)
  {
    v23 = 0;
    sub_27542E53C();
    OUTLINED_FUNCTION_1_22();
    sub_27546E8D0();
    v15 = v20;
    v16 = v21;
    v23 = 1;
    sub_27542E590();
    OUTLINED_FUNCTION_1_22();
    sub_27546E890();
    (*(v9 + 8))(v13, v6);
    v18 = v22;
    *a2 = v15;
    *(a2 + 16) = v16;
    v19 = v21;
    *(a2 + 24) = v20;
    *(a2 + 40) = v19;
    *(a2 + 56) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27542E02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27542DB88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27542E054@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27542DC60();
  *a1 = result;
  return result;
}

uint64_t sub_27542E07C(uint64_t a1)
{
  v2 = sub_27542E3DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27542E0B8(uint64_t a1)
{
  v2 = sub_27542E3DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_27542E124(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a2[2];
  v4 = a2[3];
  if (v4 < *a1)
  {
    v2 = a2[3];
  }

  v5 = v2 - v3;
  if (v2 - v3 > 0.0)
  {
    v6 = *a2;
    v7 = v4 - v3;
    if (v7 > 0.0)
    {
      v8 = (a2[1] - v6) / v7;
      if (fabs(v8) >= 0.000001)
      {
        v9 = v6 + v8 * v5;
        log(v6);
        log(v9);
      }
    }
  }
}

void sub_27542E1D4(double *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v14 = v2[1];
  *v15 = v2[2];
  *&v15[9] = *(v2 + 41);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v22 = *v2;
  v23 = v14;
  v24[0] = v2[2];
  *(v24 + 9) = *(v2 + 41);
  v21 = v6;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  sub_27542D92C(&v21, &v16, v25);
  v9 = v25[1];
  v25[0] = v7;
  *&v22 = v4;
  *(&v22 + 1) = v5;
  *&v23 = v6;
  *(&v23 + 1) = v7;
  LOBYTE(v24[0]) = v8;
  sub_27542D92C(v25, &v22, &v16);
  v10 = v17;
  if (v17 >= v3)
  {
    v10 = v3;
  }

  v11 = v10 - v9;
  if (v10 - v9 > 0.0 && v7 - v6 > 0.0)
  {
    v12 = (v5 - v4) / (v7 - v6);
    if (fabs(v12) >= 0.000001)
    {
      v13 = log(v4);
      exp(v13 + v12 * v11);
    }
  }
}

uint64_t sub_27542E320(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 57))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v3 = *(a1 + 56) & 0x3C | (*(a1 + 56) >> 6);
      v4 = v3 ^ 0x3F;
      v2 = 62 - v3;
      if (v4 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27542E370(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = (a2 ^ 0x3F) & 0xFC | ((a2 ^ 0x3F) << 6);
    }
  }

  return result;
}

unint64_t sub_27542E3DC()
{
  result = qword_2809DB438;
  if (!qword_2809DB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB438);
  }

  return result;
}

unint64_t sub_27542E430()
{
  result = qword_2809DB440;
  if (!qword_2809DB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB440);
  }

  return result;
}

unint64_t sub_27542E484()
{
  result = qword_2809DB448;
  if (!qword_2809DB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB448);
  }

  return result;
}

void sub_27542E4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27542E3DC();
    v7 = a3(a1, &_s23TimeAlignmentCalculatorV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27542E53C()
{
  result = qword_2809DB458;
  if (!qword_2809DB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB458);
  }

  return result;
}

unint64_t sub_27542E590()
{
  result = qword_2809DB460;
  if (!qword_2809DB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB460);
  }

  return result;
}

_BYTE *_s23TimeAlignmentCalculatorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27542E6B0);
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

unint64_t sub_27542E6EC()
{
  result = qword_2809DB468;
  if (!qword_2809DB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB468);
  }

  return result;
}

unint64_t sub_27542E744()
{
  result = qword_2809DB470;
  if (!qword_2809DB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB470);
  }

  return result;
}

unint64_t sub_27542E79C()
{
  result = qword_2809DB478;
  if (!qword_2809DB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB478);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_0_26()
{
  v1 = *(v0 + 24);
  result = *(v0 + 40);
  v3 = *(v0 + 56);
  return result;
}

double OUTLINED_FUNCTION_3_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  a16 = v26;

  return sub_27542D92C(&a17, &a12, &a26);
}

uint64_t sub_27542E878(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x800000027546F210 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x800000027546F230 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000016 && 0x800000027546F250 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_27542E994(unsigned __int8 a1)
{
  result = 0xD00000000000001BLL;
  if (a1 >= 2u)
  {
    return 0xD000000000000016;
  }

  return result;
}

uint64_t sub_27542E9E8(void *a1)
{
  OUTLINED_FUNCTION_1_23();
  sub_27542F008(0, v4, v5, &_s17TransitionTimeMapV10CodingKeysON, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_8_9(v6);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v25 - v13;
  v15 = *v1;
  v16 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542EF60();
  sub_27546EB00();
  v27 = v15;
  v28 = v16;
  v26 = 0;
  OUTLINED_FUNCTION_0_27();
  sub_27542F008(0, v21, v22, v23, MEMORY[0x277D83638]);
  sub_27542F070(&qword_2809DB4A0, sub_27542D680);
  OUTLINED_FUNCTION_2_21();
  if (!v2)
  {
    v27 = v17;
    v28 = v18;
    v26 = 1;
    OUTLINED_FUNCTION_2_21();
    v27 = v19;
    v26 = 2;
    sub_27542D680();
    sub_27546E950();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_27542EC0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_1_23();
  sub_27542F008(0, v5, v6, &_s17TransitionTimeMapV10CodingKeysON, MEMORY[0x277D844C8]);
  v28 = v7;
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v27 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542EF60();
  sub_27546EAE0();
  if (!v2)
  {
    v16 = v10;
    OUTLINED_FUNCTION_0_27();
    sub_27542F008(0, v17, v18, v19, MEMORY[0x277D83638]);
    v31 = 0;
    sub_27542F070(&qword_2809DB4B0, sub_27542D520);
    v20 = v28;
    OUTLINED_FUNCTION_3_17();
    v21 = v29;
    v22 = v30;
    v31 = 1;
    OUTLINED_FUNCTION_3_17();
    v23 = v29;
    v24 = v30;
    v31 = 2;
    sub_27542D520();
    sub_27546E8D0();
    (*(v16 + 8))(v14, v20);
    v26 = v29;
    *a2 = v21;
    a2[1] = v22;
    a2[2] = v23;
    a2[3] = v24;
    a2[4] = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27542EE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27542E878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27542EEB8(uint64_t a1)
{
  v2 = sub_27542EF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27542EEF4(uint64_t a1)
{
  v2 = sub_27542EF60();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27542EF60()
{
  result = qword_2809DB488;
  if (!qword_2809DB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB488);
  }

  return result;
}

unint64_t sub_27542EFB4()
{
  result = qword_2809DB498;
  if (!qword_2809DB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB498);
  }

  return result;
}

void sub_27542F008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_27542F070(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_27();
    sub_27542F008(255, v5, v6, v7, MEMORY[0x277D83638]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s17TransitionTimeMapV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27542F1D0);
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

unint64_t sub_27542F20C()
{
  result = qword_2809DB4B8;
  if (!qword_2809DB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4B8);
  }

  return result;
}

unint64_t sub_27542F264()
{
  result = qword_2809DB4C0;
  if (!qword_2809DB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4C0);
  }

  return result;
}

unint64_t sub_27542F2BC()
{
  result = qword_2809DB4C8;
  if (!qword_2809DB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_21()
{

  return sub_27546E950();
}

uint64_t OUTLINED_FUNCTION_3_17()
{

  return sub_27546E8D0();
}

void sub_27542F3A0(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, double *a8@<X8>)
{
  v10 = *a1;
  v11 = *(v8 + 8);
  v12 = *(v8 + 16);
  if (*a1 < v12 || (v13 = *(v8 + 56), v13 > 0xFB))
  {
    v19 = v11 + v10 - v12;
    v18 = *v8 + v19 - v11;
  }

  else
  {
    v14 = *(v8 + 24);
    v15 = *(v8 + 32);
    v16 = *(v8 + 40);
    v17 = *(v8 + 48);
    v22[1] = *v8;
    v22[2] = v11;
    v22[3] = v12;
    v22[4] = v14;
    v22[5] = v15;
    v22[6] = v16;
    v22[7] = v17;
    v23 = v13;
    v22[0] = v10;
    *v20 = v14;
    *&v20[1] = v15;
    *&v20[2] = v16;
    *&v20[3] = v17;
    v21 = v13;
    sub_27542DA30(v22, v20, a2, a3, a4, a5, a6, a7, v24);
    v18 = v24[0];
    v19 = v24[1];
    v10 = v24[2];
  }

  *a8 = v18;
  a8[1] = v19;
  a8[2] = v10;
}

uint64_t sub_27542F44C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000027546F270 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_27542F4E8(void *a1)
{
  v2 = v1;
  sub_27542F9B0(0, &qword_2809DB4D0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542F908();
  sub_27546EB00();
  v14 = v2[1];
  v16[0] = *v2;
  v16[1] = v14;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  sub_27542F95C();
  sub_27546E950();
  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_27542F648@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27542F9B0(0, &qword_2809DB4E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27542F908();
  sub_27546EAE0();
  if (!v2)
  {
    sub_27542FA14();
    sub_27546E8D0();
    (*(v9 + 8))(v13, v6);
    v15 = v17[1];
    *a2 = v17[0];
    a2[1] = v15;
    a2[2] = v18[0];
    *(a2 + 41) = *(v18 + 9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_27542F7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27542F44C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27542F834@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27542F860(uint64_t a1)
{
  v2 = sub_27542F908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27542F89C(uint64_t a1)
{
  v2 = sub_27542F908();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_27542F908()
{
  result = qword_2809DB4D8;
  if (!qword_2809DB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4D8);
  }

  return result;
}

unint64_t sub_27542F95C()
{
  result = qword_2809DB4E0;
  if (!qword_2809DB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4E0);
  }

  return result;
}

void sub_27542F9B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27542F908();
    v7 = a3(a1, &_s22PlaybackTimeCalculatorV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27542FA14()
{
  result = qword_2809DB4F0;
  if (!qword_2809DB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4F0);
  }

  return result;
}

_BYTE *_s22PlaybackTimeCalculatorV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27542FB04);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27542FB40()
{
  result = qword_2809DB4F8;
  if (!qword_2809DB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB4F8);
  }

  return result;
}

unint64_t sub_27542FB98()
{
  result = qword_2809DB500;
  if (!qword_2809DB500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB500);
  }

  return result;
}

unint64_t sub_27542FBF0()
{
  result = qword_2809DB508;
  if (!qword_2809DB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB508);
  }

  return result;
}

uint64_t sub_27542FC4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 121))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v3 = *(a1 + 56) & 0x3C | (*(a1 + 56) >> 6);
      v4 = v3 ^ 0x3F;
      v2 = 62 - v3;
      if (v4 >= 0x3D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27542FC9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 56) = (a2 ^ 0x3F) & 0xFC | ((a2 ^ 0x3F) << 6);
    }
  }

  return result;
}

__n128 sub_27542FD18@<Q0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, __n128 *a8@<X8>)
{
  v10 = *a1;
  v11 = v8[1];
  v26[0] = *v8;
  v26[1] = v11;
  v27[0] = v8[2];
  *(v27 + 9) = *(v8 + 41);
  v22 = v8[4];
  v23 = v8[5];
  *v24 = v8[6];
  *&v24[9] = *(v8 + 105);
  v25 = v10;
  sub_27542F3A0(&v25, a2, a3, a4, a5, a6, a7, v28);
  v12 = v28[0];
  v13 = v28[1];
  v14 = v28[2];
  v28[0] = v10;
  sub_27542F3A0(v28, v15, v16, v17, v18, v19, v20, v26);
  result = v26[0];
  a8->n128_f64[0] = v12;
  a8->n128_f64[1] = v13;
  a8[1] = result;
  a8[2].n128_f64[0] = v14;
  return result;
}

uint64_t sub_27542FDC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ELL && 0x800000027546F290 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000027546F2B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_27542FEC8(void *a1)
{
  v3 = v1;
  sub_2754303F8(0, &qword_2809DB510, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = v3[5];
  v23 = v3[4];
  v24 = v14;
  v25[0] = v3[6];
  *(v25 + 9) = *(v3 + 105);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275430350();
  sub_27546EB00();
  v16 = v3[1];
  v20 = *v3;
  v21 = v16;
  v22[0] = v3[2];
  *(v22 + 9) = *(v3 + 41);
  v19 = 0;
  sub_2754303A4();
  OUTLINED_FUNCTION_0_28();
  if (!v2)
  {
    v20 = v23;
    v21 = v24;
    v22[0] = v25[0];
    *(v22 + 9) = *(v25 + 9);
    v19 = 1;
    OUTLINED_FUNCTION_0_28();
  }

  return (*(v9 + 8))(v13, v6);
}

uint64_t sub_275430068@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v24 = a2;
  sub_2754303F8(0, &qword_2809DB528, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275430350();
  sub_27546EAE0();
  if (!v2)
  {
    v19 = 0;
    sub_27543045C();
    OUTLINED_FUNCTION_1_24();
    v23[0] = v20;
    v23[1] = v21;
    v23[2] = v22[0];
    *(&v23[2] + 9) = *(v22 + 9);
    v15[15] = 1;
    OUTLINED_FUNCTION_1_24();
    (*(v8 + 8))(v12, v5);
    v23[4] = v16;
    v23[5] = v17;
    v23[6] = *v18;
    *(&v23[6] + 9) = *&v18[9];
    memcpy(v24, v23, 0x79uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_275430280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27542FDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754302A8(uint64_t a1)
{
  v2 = sub_275430350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754302E4(uint64_t a1)
{
  v2 = sub_275430350();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_275430350()
{
  result = qword_2809DB518;
  if (!qword_2809DB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB518);
  }

  return result;
}

unint64_t sub_2754303A4()
{
  result = qword_2809DB520;
  if (!qword_2809DB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB520);
  }

  return result;
}

void sub_2754303F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275430350();
    v7 = a3(a1, &_s34SynchronizedPlaybackTimeCalculatorV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27543045C()
{
  result = qword_2809DB530;
  if (!qword_2809DB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB530);
  }

  return result;
}

_BYTE *_s34SynchronizedPlaybackTimeCalculatorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27543057CLL);
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

unint64_t sub_2754305B8()
{
  result = qword_2809DB538;
  if (!qword_2809DB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB538);
  }

  return result;
}

unint64_t sub_275430610()
{
  result = qword_2809DB540;
  if (!qword_2809DB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB540);
  }

  return result;
}

unint64_t sub_275430668()
{
  result = qword_2809DB548;
  if (!qword_2809DB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB548);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_28()
{

  return sub_27546E950();
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return sub_27546E8D0();
}

uint64_t sub_275430708(uint64_t *a1, int a2)
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

uint64_t sub_275430748(uint64_t result, int a2, int a3)
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

uint64_t sub_275430794(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 32;
    v5 = *(a1 + 32);
    v6 = *(a1 + 32 + 8 * v2 - 8);
    if (v6 - v5 >= a2)
    {
      OUTLINED_FUNCTION_0_29(a1, &qword_2809DB580, &type metadata for TransitionTime);
      v7 = swift_allocObject();
      v9 = 0;
      *(v7 + 16) = xmmword_275474500;
      *(v7 + 32) = v5;
      v10 = a2 + a2;
      while (1)
      {
        v11 = *(v4 + 8 * v9);
        v12 = v11 - v5;
        if (v10 <= v11 - v5)
        {
          v16 = *(v7 + 16);
          do
          {
            v17 = *(v7 + 24);
            if (v16 >= v17 >> 1)
            {
              v7 = OUTLINED_FUNCTION_17_4(v7, v17);
            }

            v5 = v5 + a2;
            *(v7 + 16) = v16 + 1;
            *(v7 + 8 * v16 + 32) = v5;
            v12 = v11 - v5;
            ++v16;
          }

          while (v10 <= v11 - v5);
        }

        if (v6 - v11 == 0.0)
        {
          break;
        }

        if (v6 - v11 >= a2 && v12 >= a2)
        {
          v14 = *(v7 + 16);
          v13 = *(v7 + 24);
          v15 = v14 + 1;
          goto LABEL_19;
        }

LABEL_22:
        if (++v9 == v2)
        {
          return v7;
        }
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v15 = v14 + 1;
      v11 = v6;
LABEL_19:
      if (v14 >= v13 >> 1)
      {
        v7 = OUTLINED_FUNCTION_17_4(v7, v13);
      }

      *(v7 + 16) = v15;
      *(v7 + 8 * v14 + 32) = v11;
      v5 = v11;
      goto LABEL_22;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_275430900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000027546F2D0 == a2;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000027546F2F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

unint64_t sub_2754309D4(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_275430A0C(void *a1, uint64_t a2)
{
  sub_275430F54(0, &qword_2809DB550, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275430F00();
  sub_27546EB00();
  v20 = a2;
  v19[15] = 0;
  OUTLINED_FUNCTION_5_11();
  sub_2754323B8(0, v15, v16, v17);
  sub_275430FB8(&qword_2809DB568, sub_27542D680);
  sub_27546E950();
  if (!v2)
  {
    v19[14] = 1;
    sub_27546E930();
  }

  return (*(v9 + 8))(v13, v6);
}

double sub_275430BE0(uint64_t *a1)
{
  sub_275430F54(0, &qword_2809DB570, MEMORY[0x277D844C8]);
  v5 = OUTLINED_FUNCTION_8_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275430F00();
  sub_27546EAE0();
  if (!v1)
  {
    OUTLINED_FUNCTION_5_11();
    sub_2754323B8(0, v9, v10, v11);
    sub_275430FB8(&qword_2809DB578, sub_27542D520);
    sub_27546E8D0();
    sub_27546E8B0();
    v2 = v13;
    v14 = OUTLINED_FUNCTION_0_23();
    v15(v14);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_275430E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275430900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275430E38(uint64_t a1)
{
  v2 = sub_275430F00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275430E74(uint64_t a1)
{
  v2 = sub_275430F00();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_275430EB0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_275430BE0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_275430F00()
{
  result = qword_2809DB558;
  if (!qword_2809DB558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB558);
  }

  return result;
}

void sub_275430F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275430F00();
    v7 = a3(a1, &_s28StepTransitionTimeCalculatorV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_275430FB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_5_11();
    sub_2754323B8(255, v5, v6, v7);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_275431038()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DADC0, &type metadata for Transition.ContinuousSchedule.Automation);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_9_6(v9);
      OUTLINED_FUNCTION_7_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275440E0C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6_12();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2754310F8()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      sub_275432158(0, &qword_2809DB590, sub_275432100);
      v8 = OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_9_6(v8);
      OUTLINED_FUNCTION_7_11(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_3_18();
        sub_275440E4C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_12_6();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}