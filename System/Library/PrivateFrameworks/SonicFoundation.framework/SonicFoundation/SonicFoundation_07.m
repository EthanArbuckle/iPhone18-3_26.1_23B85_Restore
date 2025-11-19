uint64_t sub_26B1D2980(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    OUTLINED_FUNCTION_2_30();
    sub_26B212F80();

    sub_26B1D2F50();
    if (v2)
    {
      sub_26B2128F0();
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    sub_26B1D3018(v1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D2A54()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_26B2128F0();
  LOBYTE(v1) = sub_26B212C90();

  if (v1)
  {
    return 0;
  }

  v3 = v0[4];
  v4 = v0[5];
  sub_26B2128F0();
  LOBYTE(v3) = sub_26B212C90();

  if (v3)
  {
    return 0;
  }

  if (v0[7])
  {

    sub_26B1D2A54(v6);
  }

  return 1;
}

uint64_t sub_26B1D2B10()
{
  OUTLINED_FUNCTION_3_25();
  result = swift_beginAccess();
  if (v0[6])
  {
    __break(1u);
  }

  else
  {
    v2 = v0[3];

    v3 = v0[5];

    v4 = v0[9];

    swift_weakDestroy();
    v5 = v0[7];
    v0[7] = 0;

    if (v5)
    {
      do
      {

        if (!swift_isUniquelyReferenced_native())
        {
          break;
        }

        v6 = *(v5 + 56);
        swift_retain_n();

        v5 = v6;
      }

      while (v6);
    }

    return v0;
  }

  return result;
}

uint64_t sub_26B1D2BC8()
{
  sub_26B1D2B10();

  return MEMORY[0x2821FE8D8](v0, 92, 7);
}

uint64_t sub_26B1D2C20(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  v12 = *a2;
  v13 = v9;
  result = sub_26B1D2CD8(&v12, a3);
  if (!v6)
  {
    v11 = result;
    swift_beginAccess();
    result = *(v5 + 48);
    if (result)
    {
      return (*(a5 + 8))(result, v11, a4, a5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1D2CD8(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*(result + 16) == 1)
  {
    v4 = *(result + 8);
    swift_beginAccess();
    v5 = *(v2 + 48);
    v6 = sub_26B212B10();
    v7 = sqlite3_bind_parameter_index(v5, (v6 + 32));

    if (v7 > 0)
    {
      return v7;
    }

    sub_26B2136C0();

    strcpy(v14, "Position name ");
    HIBYTE(v14[1]) = -18;
    MEMORY[0x26D670040](v3, v4);
    MEMORY[0x26D670040](0xD00000000000001DLL, 0x800000026B220960);
    v12 = v14[0];
    v11 = v14[1];
    goto LABEL_9;
  }

  v8 = __OFADD__(v3, a2);
  v3 += a2;
  if (!v8)
  {
    if (v3 < 1)
    {
      v11 = 0x800000026B220980;
      sub_26B1D68E8();
      swift_allocError();
      v12 = 0xD00000000000004ELL;
      goto LABEL_11;
    }

    if (*(v2 + 64) >= v3)
    {
      return v3;
    }

    sub_26B2136C0();

    v14[2] = 0x6E6F697469736F50;
    v14[3] = 0xEF207865646E6920;
    v14[0] = v3;
    v3 = MEMORY[0x277D83BF8];
    v9 = sub_26B213B90();
    MEMORY[0x26D670040](v9);

    MEMORY[0x26D670040](0xD00000000000001ELL, 0x800000026B2209D0);
    v14[0] = *(v2 + 64);
    v10 = sub_26B213B90();
    MEMORY[0x26D670040](v10);

    v12 = 0x6E6F697469736F50;
    v11 = 0xEF207865646E6920;
LABEL_9:
    sub_26B1D68E8();
    swift_allocError();
LABEL_11:
    *v13 = v12;
    v13[1] = v11;
    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D2F50()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    OUTLINED_FUNCTION_2_30();
    sub_26B212F80();

    v2 = *(v0 + 72);
    *(v0 + 72) = MEMORY[0x277D84F90];

    if (*(v0 + 56))
    {
      v3 = *(v0 + 56);

      sub_26B1D2F50(v4);
    }

    OUTLINED_FUNCTION_3_25();
    swift_beginAccess();
    return sqlite3_clear_bindings(*(v0 + 48));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D3018(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[9];
  v2[9] = a1;
  sub_26B2128F0();

  v8 = 0;
  v36 = *(a1 + 16);
  v26 = a1;
  for (i = a1 + 32; ; i += 88)
  {
    if (v36 == v8)
    {
      v8 = v36;
      goto LABEL_10;
    }

    sub_26B1D66EC(i, v35);
    if (v8 == v2[8])
    {
      break;
    }

    sub_26B1D66EC(v35, &v28);
    v10 = v28;
    v11 = v29;
    if (v31 == 1)
    {
    }

    sub_26B1A8E10(v30, v32);
    v13 = v33;
    v12 = v34;
    v14 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v28 = v10;
    v29 = v11;
    sub_26B1D2C20(v14, &v28, a2, v13, v12);
    sub_26B1D6748(v35);
    sub_26B1D679C(v10, *(&v10 + 1), v11);
    result = __swift_destroy_boxed_opaque_existential_1(v32);
    ++v8;
    if (v4)
    {
      return result;
    }
  }

  result = sub_26B1D6748(v35);
LABEL_10:
  if (v2[7])
  {
    v15 = sub_26B1D65CC(v8, v36, v26);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    if (v20)
    {
      sub_26B213EA0();
      swift_unknownObjectRetain_n();

      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        swift_unknownObjectRelease();
        v24 = MEMORY[0x277D84F90];
      }

      v25 = *(v24 + 16);

      if (__OFSUB__(v21 >> 1, v19))
      {
        __break(1u);
      }

      else if (v25 == (v21 >> 1) - v19)
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v23)
        {
LABEL_21:
          sub_26B1D3018(v23, -v8);
        }

        v23 = MEMORY[0x277D84F90];
LABEL_20:
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_26B1D4394(v15, v17, v19, v21);
    v23 = v22;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26B1D3268()
{
  v6 = 0;
  OUTLINED_FUNCTION_3_25();
  swift_beginAccess();
  result = sqlite3_expanded_sql(*(v0 + 48));
  if (result)
  {
    result = sub_26B212A40();
    if (v2)
    {
      v6 = result;
    }

    else
    {
      result = 0;
    }

    if (*(v0 + 56))
    {
      v3 = *(v0 + 56);

      v5 = sub_26B1D3268(v4);
      MEMORY[0x26D670040](v5);

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D3308()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    OUTLINED_FUNCTION_2_30();
    sub_26B212F80();

    *(v0 + 88) = 0;
    if (*(v0 + 56))
    {
      v2 = *(v0 + 56);

      sub_26B1D3308(v3);
    }

    OUTLINED_FUNCTION_3_25();
    swift_beginAccess();
    return sqlite3_reset(*(v0 + 48));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D33E4()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  *(v1 + 200) = v0;
  v4 = sub_26B211BE0();
  *(v1 + 208) = v4;
  v5 = *(v4 - 8);
  *(v1 + 216) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 224) = swift_task_alloc();
  v7 = *(v3 + 16);
  *(v1 + 232) = *v3;
  *(v1 + 248) = v7;
  *(v1 + 97) = *(v3 + 32);

  return MEMORY[0x2822009F8](sub_26B1D34B8, v0, 0);
}

void sub_26B1D34B8()
{
  v67 = v0;
  if (*(v0 + 97))
  {
    v1 = *(v0 + 248);
    if (!v1)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v2 = *(v0 + 248);
    sub_26B2128F0();
    v3 = (v0 + 240);
  }

  else
  {
    v1 = *(v0 + 240);
    sub_26B2128F0();
    v3 = (v0 + 232);
  }

  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  *(v0 + 152) = *v3;
  *(v0 + 160) = v1;
  sub_26B211BC0();
  sub_26B14FCC8();
  v8 = sub_26B213490();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v4, v6);

  OUTLINED_FUNCTION_15_9();
  swift_beginAccess();
  v12 = sub_26B1CFB18(v8, v10);

  if (!v12)
  {
    v17 = *(v0 + 200);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 264) = Strong;
    *(v0 + 272) = *(v17 + 128);
    if (Strong)
    {
      if (*(v0 + 97) == 1)
      {
        v19 = *(v0 + 256);
        v20 = sub_26B2128F0();
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      *(v0 + 280) = v20;
      v38 = *(v20 + 16);
      *(v0 + 288) = v38;
      if (v38)
      {
        v39 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_35_4(v39);
          if (v42)
          {
            break;
          }

          sub_26B1D66EC(v41 + 88 * v40 + 32, v0 + 16);
          if (*(v0 + 96))
          {
            sub_26B1D679C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
            v59 = *(v0 + 80);
            *(v0 + 304) = *(v0 + 88);
            __swift_destroy_boxed_opaque_existential_1((v0 + 40));
            OUTLINED_FUNCTION_7_17();
            v60 = *(v59 + 4);
            v61 = swift_task_alloc();
            *(v0 + 312) = v61;
            *v61 = v0;
            OUTLINED_FUNCTION_9_19(v61);
            OUTLINED_FUNCTION_38_5();

            __asm { BRAA            X2, X16 }
          }

          sub_26B1D6748(v0 + 16);
          v39 = *(v0 + 296) + 1;
          if (v39 == *(v0 + 288))
          {
            v43 = *(v0 + 280);
            v44 = *(v0 + 264);
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_23:

      swift_unknownObjectRelease();
    }

    v45 = *(v0 + 97);
    v47 = *(v0 + 248);
    v46 = *(v0 + 256);
    v49 = *(v0 + 232);
    v48 = *(v0 + 240);
    v50 = *(v0 + 200);
    _s9StatementCMa();
    *&v64 = v49;
    *(&v64 + 1) = v48;
    *&v65 = v47;
    *(&v65 + 1) = v46;
    v66 = v45;
    OUTLINED_FUNCTION_32_7();
    sub_26B1A8558(v51, v52, v53, v54, v45);

    sub_26B1D26E8(v55, &v64);
    goto LABEL_25;
  }

  v13 = *(v0 + 97);
  swift_endAccess();
  if ((v13 & 1) == 0)
  {
    v14 = *(v0 + 240);
    sub_26B2128F0();
    v16 = (v0 + 232);
    goto LABEL_13;
  }

  v14 = *(v0 + 248);
  if (v14)
  {
    v15 = *(v0 + 248);
    sub_26B2128F0();
    v16 = (v0 + 240);
LABEL_13:
    v21 = *(v0 + 224);
    v22 = *(v0 + 200);
    v23 = *(v0 + 208);
    *(v0 + 168) = *v16;
    *(v0 + 176) = v14;
    sub_26B211BC0();
    v24 = sub_26B213490();
    v26 = v25;
    v11(v21, v23);

    OUTLINED_FUNCTION_15_9();
    swift_beginAccess();
    v28 = *(v22 + 160);
    v27 = *(v22 + 168);
    *(v0 + 184) = v24;
    *(v0 + 192) = v26;
    v29 = swift_task_alloc();
    v29[2] = v28;
    v29[3] = v27;
    v29[4] = v0 + 184;
    v30 = sub_26B1D2698(sub_26B1D684C, v29, v27);
    LOBYTE(v23) = v31;
    v33 = v32;

    if ((v23 & 1) == 0)
    {
      v34 = *(v0 + 200);
      sub_26B1D57C4(v30, v33);

      sub_26B1D5974(v30);
    }

    v35 = *(v0 + 200);
    sub_26B1CF4B4();
    swift_endAccess();
    sub_26B1AECD0(v35, sub_26B1D6870);
    v36 = *(v0 + 97);
    v37 = *(v0 + 248);
    v64 = *(v0 + 232);
    v65 = v37;
    v66 = v36;
    sub_26B1D2980(&v64);
LABEL_25:
    v56 = *(v0 + 224);

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_38_5();

    __asm { BRAA            X2, X16 }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_26B1D3984()
{
  OUTLINED_FUNCTION_25();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  v2[40] = v0;

  if (v0)
  {
    v8 = v2[35];
    v9 = v2[25];

    v10 = sub_26B1D3C80;
    v11 = v9;
  }

  else
  {
    v11 = v2[25];
    v10 = sub_26B1D3A98;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

void sub_26B1D3A98()
{
  v27 = v0;
  v1 = *(v0 + 304);

  v2 = *(v0 + 320);
  while (1)
  {
    v3 = *(v0 + 296) + 1;
    if (v3 == *(v0 + 288))
    {
      break;
    }

    OUTLINED_FUNCTION_35_4(v3);
    if (v6)
    {
      __break(1u);
      return;
    }

    sub_26B1D66EC(v5 + 88 * v4 + 32, v0 + 16);
    if (*(v0 + 96))
    {
      sub_26B1D679C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
      v19 = *(v0 + 80);
      *(v0 + 304) = *(v0 + 88);
      __swift_destroy_boxed_opaque_existential_1((v0 + 40));
      OUTLINED_FUNCTION_7_17();
      v24 = v20;
      v21 = *(v19 + 4);
      v22 = swift_task_alloc();
      *(v0 + 312) = v22;
      *v22 = v0;
      v23 = OUTLINED_FUNCTION_9_19();

      v24(v23);
      return;
    }

    sub_26B1D6748(v0 + 16);
  }

  v7 = *(v0 + 280);
  v8 = *(v0 + 264);

  swift_unknownObjectRelease();
  LOBYTE(v8) = *(v0 + 97);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v13 = *(v0 + 200);
  _s9StatementCMa();
  v25[0] = v12;
  v25[1] = v11;
  v25[2] = v10;
  v25[3] = v9;
  v26 = v8;
  sub_26B1A8558(v12, v11, v10, v9, v8);

  v15 = sub_26B1D26E8(v14, v25);
  v16 = *(v0 + 224);

  OUTLINED_FUNCTION_9_14();
  if (!v2)
  {
    v17 = v15;
  }

  v18(v17);
}

uint64_t sub_26B1D3C80()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[38];
  v2 = v0[33];
  swift_unknownObjectRelease();

  v3 = v0[40];
  v4 = v0[28];

  OUTLINED_FUNCTION_10_0();

  return v5();
}

void *sub_26B1D3CF0(uint64_t a1)
{
  _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(0xD000000000000040, 0x800000026B21FCB0, 0xFuLL);
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = a1;
  return v1;
}

void *sub_26B1D3D3C()
{
  sub_26B1D698C(0, &qword_2803E6DE0, 255, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13 - v3;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v7;
  v9[6] = v6;
  swift_retain_n();
  sub_26B2128F0();
  sub_26B197B60(0, 0, v4, 0, 0, &unk_26B21B6B0, v9);

  sub_26B16239C(v4);
  v10 = v0[3];

  v11 = v0[4];

  return v0;
}

uint64_t sub_26B1D3E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26B1D3EC0, a4, 0);
}

uint64_t sub_26B1D3EC0()
{
  v1 = v0[2];
  sub_26B1D1ADC(v0[3], v0[4]);
  OUTLINED_FUNCTION_10_0();

  return v2();
}

uint64_t sub_26B1D3F3C()
{
  sub_26B1D3D3C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26B1D3F98@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  return sub_26B2128F0();
}

uint64_t sub_26B1D3FA8()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_26B1D406C;

  return sub_26B1D3E9C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26B1D406C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B1D416C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3[1];
  v7 = sub_26B211BE0();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_26B1D2A54() & 1) == 0)
  {
    return OUTLINED_FUNCTION_39_4();
  }

  result = OUTLINED_FUNCTION_39_4();
  if (!v3)
  {
    if (a3[4])
    {
      v16 = a3[2];
      if (!v16)
      {
        __break(1u);
        return result;
      }

      v17 = a3[2];
      sub_26B2128F0();
    }

    else
    {
      v16 = v6;
      v18 = *a3;
      sub_26B2128F0();
      v6 = v18;
    }

    v23[1] = v6;
    v23[2] = v16;
    sub_26B211BC0();
    sub_26B14FCC8();
    v24 = sub_26B213490();
    v20 = v19;
    (*(v10 + 8))(v14, v7);

    OUTLINED_FUNCTION_15_9();
    swift_beginAccess();

    sub_26B2128F0();
    v21 = a1;
    v22 = v24;
    sub_26B1CFCE4(v21, 0, 1, v24, v20);
    sub_26B1CFB78(v22, v20);

    sub_26B1CF4B4();
    return swift_endAccess();
  }

  return result;
}

void sub_26B1D4394(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_26B1D6898();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 88);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_26B1D445C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *v6;
  v13 = v12 + 32 + 24 * result;
  sub_26B15C6F0();
  result = swift_arrayDestroy();
  v14 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_26B173F10((v12 + 32 + 24 * a2), v15 - a2, (v13 + 24 * a3));
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v12 + 16) = v18;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v13 = a4;
    *(v13 + 8) = a5;
    *(v13 + 16) = a6 & 1;
    if (v13 + 24 < (v13 + 24 * a3))
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1D45A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_26B152C58((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {
      result = sub_26B2128F0();
      __break(1u);
    }
  }

  return result;
}

void sub_26B1D46C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  sub_26B2128F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v7 + 16);
    sub_26B15B06C();
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  if (v11 >= *(v7 + 24) >> 1)
  {
    sub_26B15B06C();
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (!*v3)
  {
    if (v11 <= 0xE)
    {
      return;
    }

    v18 = 0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_25();
  swift_beginAccess();
  if (MEMORY[0x26D66F600](*(v13 + 16) & 0x3FLL) <= v11)
  {
    v18 = *(v13 + 24) & 0x3FLL;
    if (v11 <= 0xE && v18 == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    v20 = MEMORY[0x26D66F630](v11 + 1);
    sub_26B1D48D8(v20, v18);
    return;
  }

  sub_26B1D4818();
  if (*v3)
  {
    OUTLINED_FUNCTION_32_7();
    sub_26B1D4870(v14, v15, v16, v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B1D4818()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = *v0;
        v3 = sub_26B2121F0();

        *v0 = v3;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_26B1D4870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 + 8) + 16) + ~(a1[1] >> 6);
  v5 = (-1 << *a1) ^ ~(((v4 >> 63) & ~(-1 << *a1)) + v4);
  return sub_26B212180();
}

uint64_t sub_26B1D48D8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = v2[1];
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_26B1D4920(v2[1], a2, 0, v3);
  v6 = *v2;

  *v2 = v5;
  return result;
}

uint64_t sub_26B1D4920(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

  v8 = MEMORY[0x26D66F630](v6);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x26D66F640]();
    sub_26B1D4998(a1, (v9 + 16));
  }

  return v9;
}

uint64_t sub_26B1D49D8(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_26B214030();
        sub_26B2128F0();
        _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
        result = sub_26B214070();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_26B212160();

        if (v10)
        {
          while (1)
          {
            sub_26B2121C0();
          }
        }

        result = sub_26B2121B0();
        if (++v5 == a2)
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

uint64_t sub_26B1D4B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_26B213E30() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

uint64_t sub_26B1D4B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  result = sub_26B214070();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_26B212190();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_26B213E30())
        {
          break;
        }

        sub_26B2121C0();
        v11 = sub_26B2121A0();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void sub_26B1D4CB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v13 = *(v7 + 24) >> 1;
    if (v13 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v14 = v8 + v6;
    }

    else
    {
      v14 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v14 = v8 + v6;
  }

  else
  {
    v14 = v8;
  }

  sub_26B15B450(isUniquelyReferenced_nonNull_native, v14, 1);
  v7 = *v4;
  v13 = *(*v4 + 24) >> 1;
LABEL_12:
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_19:
      swift_unknownObjectRelease();
      *v4 = v7;
      return;
    }

    __break(1u);
  }

  if (v13 - *(v7 + 16) < v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_26B15C684();
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_19;
  }

  v15 = *(v7 + 16);
  v16 = __OFADD__(v15, v6);
  v17 = v15 + v6;
  if (!v16)
  {
    *(v7 + 16) = v17;
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_26B1D4DE4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(*(v1 + 8) + 16);
    v3 = v2 >= result;
    result = v2 - result;
    if (v3)
    {
      return sub_26B1D4E78(result, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D4E04(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(*v1 + 16);
  result = sub_26B1D6638(v2, -result, 0);
  if (v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 < result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_26B1D5D1C(result, v2);
}

uint64_t sub_26B1D4E78(uint64_t result, uint64_t a2)
{
  v4 = result;
  v6 = v2 + 1;
  v5 = *v2;
  if (!*v2)
  {
    return sub_26B1D5E34(v4, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = v2;
  v9 = *(*v6 + 16);
  v10 = v9 - v7;
  if ((v9 - v7) > (v9 >> 1))
  {
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) == (*(v5 + 24) & 0x3FLL) || v10 >= MEMORY[0x26D66F610]())
    {
      result = sub_26B1D4818();
      v15 = *v8;
      if (*v8)
      {
        v16 = *v8;

        sub_26B1D4FD4(v15 + 16, v15 + 32, v8, v4, a2);

        return sub_26B1D5E34(v4, a2);
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  sub_26B1D5E34(v4, a2);
  swift_beginAccess();
  v11 = *(v5 + 24) & 0x3FLL;
  v12 = *v6;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = *(*v6 + 16) >= 0x10uLL;
  }

  if (v13)
  {
    v14 = MEMORY[0x26D66F630]();
    return sub_26B1D48D8(v14, v11);
  }

  else
  {

    *v8 = 0;
  }

  return result;
}

uint64_t sub_26B1D4FD4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a5;
  v6 = a4;
  v8 = *(a3 + 8);
  v9 = *(v8 + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_18;
  }

  if (a5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = result;
  if (a4 == a5)
  {
LABEL_14:

    sub_26B1D5338(v6, v5, v8, v12);
  }

  if (a4 < a5)
  {

    v23 = v6;
    v13 = (v8 + 16 * v6 + 40);
    v14 = v6;
    v24 = v5;
    while (v14 < v5)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 8);
      v18 = *(v17 + 16);
      sub_26B2128F0();

      sub_26B1D4B8C(v15, v16, v17 + 32, v18, v12);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_16;
      }

      ++v14;
      result = sub_26B1D5150(v22, v12, a2, a3);
      v13 += 2;
      v5 = v24;
      if (v24 == v14)
      {

        v8 = *(a3 + 8);
        v6 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_26B1D5150(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_26B212160();
  sub_26B2121C0();
  if (v26)
  {
    v7 = sub_26B212170();
    v8 = a1;
    while (1)
    {
      result = sub_26B2121A0();
      if (v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_26;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_26B214030();
      sub_26B2128F0();
      _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
      v16 = sub_26B214070();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_27;
      }

      v19 = v18 & v16;
      if (v8 >= v7)
      {
        if (v19 >= v7 && v8 >= v19)
        {
LABEL_18:
          v22 = sub_26B2121A0();
          if ((v23 & 1) == 0)
          {
            v24 = ((v18 & ((v22 - (a2[1] >> 6)) >> 63)) + v22 - (a2[1] >> 6)) ^ v18;
          }

          v8 = a1;
          OUTLINED_FUNCTION_32_7();
          sub_26B212180();
        }
      }

      else if (v19 >= v7 || v8 >= v19)
      {
        goto LABEL_18;
      }

      sub_26B2121C0();
    }
  }

  OUTLINED_FUNCTION_32_7();

  return sub_26B212180();
}

uint64_t sub_26B1D5338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v7 = result;
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= result)
    {
      v16 = a2;
      v17 = __OFSUB__(v8, a2);
      v18 = v8 - a2;
      if (v17)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v18 >= MEMORY[0x26D66F600](*a4 & 0x3F) / 3)
      {
        sub_26B212160();
        v33 = sub_26B2121A0();
        if ((v34 & 1) == 0 && v33 >= v16)
        {
          v17 = __OFSUB__(v33, v4);
          result = v33 - v4;
          if (v17)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_26B2121B0();
        }

        return sub_26B2121C0();
      }

      result = sub_26B18D2DC(v16, a3);
      v20 = v19;
      v22 = v21;
      v24 = v23 >> 1;
      while (v22 != v24)
      {
        if (v22 >= v24)
        {
          goto LABEL_51;
        }

        v25 = (v20 + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        sub_26B214030();
        sub_26B2128F0();
        _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
        result = sub_26B214070();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_26B212160())
        {
          while (1)
          {
            v29 = sub_26B2121A0();
            if ((v30 & 1) == 0 && v29 == v16)
            {
              break;
            }

            sub_26B2121C0();
          }
        }

        result = v16 - v4;
        if (__OFSUB__(v16, v4))
        {
          goto LABEL_53;
        }

        sub_26B2121B0();

        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_54;
        }

        ++v22;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x26D66F600](*a4 & 0x3F);
      if (result / 3 > v7)
      {
        if (v7 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < v7)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v7)
          {

            goto LABEL_40;
          }

          v10 = (a3 + 32 + 16 * i);
          v11 = *v10;
          v12 = v10[1];
          v13 = *a4;
          sub_26B214030();
          sub_26B2128F0();
          _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
          result = sub_26B214070();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_26B212160())
          {
            while (1)
            {
              v14 = sub_26B2121A0();
              if ((v15 & 1) == 0 && v14 == i)
              {
                break;
              }

              sub_26B2121C0();
            }
          }

          result = i + v4;
          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          sub_26B2121B0();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_26B212160();
      v31 = sub_26B2121A0();
      if ((v32 & 1) == 0 && v31 < v7)
      {
        v17 = __OFADD__(v31, v4);
        result = v31 + v4;
        if (v17)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_26B2121B0();
      }

      result = sub_26B2121C0();
LABEL_40:
      v35 = a4[1];
      if (__OFSUB__(v35 >> 6, v4))
      {
        goto LABEL_59;
      }

      v36 = 1 << *a4;
      v17 = __OFSUB__(v36, 1);
      v37 = v36 - 1;
      if (v17)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v38 = (v37 & (((v35 >> 6) - v4) >> 63)) + (v35 >> 6) - v4;
      if (v38 < v37)
      {
        v37 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v38 - v37) << 6);
    }
  }

  return result;
}

void sub_26B1D57C4(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_26B1D5A08(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x26D66F610]())
  {
LABEL_12:
    sub_26B1D5A08(a1);
    if (v7)
    {
      swift_beginAccess();
      v12 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(*v5 + 16);
    if (v12 || v13 >= 0x10)
    {
      v14 = MEMORY[0x26D66F630](v13);
      sub_26B1D48D8(v14, v12);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_26B1D4818();
  v9 = *v3;
  if (*v3)
  {
    v10 = *v3;

    sub_26B1D5150(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v11 = v3[1];

      sub_26B1D5338(a1, a1 + 1, v11, (v9 + 16));

      sub_26B1D5A08(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_26B1D5974(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B1D579C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 24 * a1;
    v8 = *(v7 + 32);
    v7 += 32;
    v9 = *(v7 + 16);
    v10 = *(v7 + 8);
    sub_26B173F10((v7 + 24), v5 - 1 - a1, v7);
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_26B1D5A08(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B1D57B0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    sub_26B152C58((v8 + 48), v7, (v8 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

uint64_t sub_26B1D5A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v13[0] = a1;
  v13[1] = a2;
  v12[2] = v8;
  v12[3] = v7;
  v12[4] = v13;
  sub_26B1D2698(sub_26B1D6A34, v12, v7);
  v10 = v9;
  if (v9)
  {
    sub_26B1D5B2C(a1, a2, a3);
  }

  return v10 & 1;
}

uint64_t sub_26B1D5B2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = (v3 + 1);
  v9 = *(v3[1] + 16);
  v10 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    result = MEMORY[0x26D66F600](*(v10 + 16) & 0x3FLL);
    if (v9 >= result)
    {
      goto LABEL_11;
    }

    result = sub_26B1D4818();
    v9 = *v4;
    if (!*v4)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v4 = *v8;

    sub_26B1D6118(a3, v4, (v9 + 16));

    v11 = -1 << *(v9 + 16);
    v12 = a3 - (*(v9 + 24) >> 6);
    sub_26B212180();

    if (v4[2] < a3)
    {
      goto LABEL_23;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_10:
      sub_26B2128F0();
      return sub_26B1D6034(a3, a3, v7, a2);
    }

    __break(1u);
  }

  if (v9 < 0xF)
  {
    if (v9 >= a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  if (v9 < a3)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a3 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_26B2128F0();
  sub_26B1D6034(a3, a3, v7, a2);
  if (v10)
  {
    swift_beginAccess();
    v13 = *(v10 + 24) & 0x3FLL;
  }

  else
  {
    v13 = 0;
  }

  v14 = (*v8)[2];
  if (v13 || v14 >= 0x10)
  {
    v15 = MEMORY[0x26D66F630](v14);
    return sub_26B1D48D8(v15, v13);
  }

  else
  {

    *v4 = 0;
  }

  return result;
}

uint64_t sub_26B1D5D1C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v5, v8))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v5 - v7 > *(v4 + 24) >> 1)
  {
    sub_26B15B3FC();
    v4 = *v2;
  }

  v11 = (v4 + 32 + 24 * v6);
  sub_26B15C6F0();
  result = swift_arrayDestroy();
  if (!v7)
  {
    goto LABEL_13;
  }

  v12 = *(v4 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = sub_26B173F10((v4 + 32 + 24 * a2), v12 - a2, v11);
  v13 = *(v4 + 16);
  v14 = __OFADD__(v13, v8);
  v15 = v13 - v7;
  if (!v14)
  {
    *(v4 + 16) = v15;
LABEL_13:
    *v2 = v4;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26B1D5E34(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v5, v8))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v5 - v7 > *(v4 + 24) >> 1)
  {
    sub_26B15B06C();
    v4 = *v2;
  }

  v11 = (v4 + 32 + 16 * v6);
  result = swift_arrayDestroy();
  if (!v7)
  {
    goto LABEL_13;
  }

  v12 = *(v4 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = sub_26B152C58((v4 + 32 + 16 * a2), v12 - a2, v11);
  v13 = *(v4 + 16);
  v14 = __OFADD__(v13, v8);
  v15 = v13 - v7;
  if (!v14)
  {
    *(v4 + 16) = v15;
LABEL_13:
    *v2 = v4;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26B1D5F40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 24) >> 1)
  {
    sub_26B15B3FC();
  }

  return sub_26B1D445C(v9, a2, 1, a3, a4, a5 & 1);
}

uint64_t sub_26B1D6034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 24) >> 1)
  {
    sub_26B15B06C();
  }

  return sub_26B1D45A4(v8, a2, 1, a3, a4);
}

uint64_t sub_26B1D6118(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a2 + 16);
  if (result < (v6 >> 1))
  {
    v7 = *a3;
    v8 = 1 << *a3;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v11 = a3[1];
    if (v11 >> 6 >= -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    v13 = v12 + (v11 >> 6) + 1;
    if (v13 < v10)
    {
      v10 = 0;
    }

    a3[1] = a3[1] & 0x3F | ((v13 - v10) << 6);
    result = MEMORY[0x26D66F600](v7 & 0x3F);
    if (result / 3 >= v5)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v6 >= v5)
        {
          v31 = a2 + 32;

          v32 = 0;
          v33 = 1;
          while (v32 != v5)
          {
            v34 = (v31 + 16 * v32);
            v35 = *v34;
            v36 = v34[1];
            v37 = *a3;
            sub_26B214030();
            sub_26B2128F0();
            _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
            result = sub_26B214070();
            if (__OFSUB__(1 << *a3, 1))
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            if (sub_26B212160())
            {
              while (1)
              {
                v38 = sub_26B2121A0();
                if ((v39 & 1) == 0 && v38 == v33)
                {
                  break;
                }

                sub_26B2121C0();
              }
            }

            result = sub_26B2121A0();
            if (v40)
            {
              goto LABEL_63;
            }

            v9 = __OFSUB__(result--, 1);
            if (v9)
            {
              goto LABEL_52;
            }

            sub_26B2121B0();

            if (v32 == 0x7FFFFFFFFFFFFFFELL)
            {
              goto LABEL_53;
            }

            ++v32;
            ++v33;
          }
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    sub_26B212160();
    v14 = sub_26B2121A0();
    if ((v15 & 1) != 0 || v14 > v5)
    {
      return sub_26B2121C0();
    }

    v9 = __OFSUB__(v14, 1);
    result = v14 - 1;
    if (!v9)
    {
      sub_26B2121B0();
      return sub_26B2121C0();
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (MEMORY[0x26D66F600](*a3 & 0x3F) / 3 < (v6 + ~result))
  {
    sub_26B212160();
    v16 = sub_26B2121A0();
    if ((v17 & 1) != 0 || v16 < v5)
    {
      return sub_26B2121C0();
    }

    v9 = __OFADD__(v16, 1);
    result = v16 + 1;
    if (!v9)
    {
      sub_26B2121B0();
      return sub_26B2121C0();
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  result = sub_26B18D2DC(v5, a2);
  v19 = v18;
  v21 = v20;
  v23 = v22 >> 1;
  while (v21 != v23)
  {
    if (v21 >= v23)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v24 = (v19 + 16 * v21);
    v25 = *v24;
    v26 = v24[1];
    v27 = *a3;
    sub_26B214030();
    sub_26B2128F0();
    _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
    result = sub_26B214070();
    if (__OFSUB__(1 << *a3, 1))
    {
      goto LABEL_55;
    }

    if (sub_26B212160())
    {
      while (1)
      {
        v28 = sub_26B2121A0();
        if ((v29 & 1) == 0 && v28 == v5)
        {
          break;
        }

        sub_26B2121C0();
      }
    }

    result = sub_26B2121A0();
    if (v30)
    {
      goto LABEL_64;
    }

    v9 = __OFADD__(result++, 1);
    if (v9)
    {
      goto LABEL_56;
    }

    sub_26B2121B0();

    v9 = __OFADD__(v5++, 1);
    if (v9)
    {
      goto LABEL_57;
    }

    ++v21;
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_26B1D65CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_26B2128F0();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26B1D6638(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_26B1D6684()
{
  if (!qword_2803E8170)
  {
    _s9StatementCMa();
    sub_26B166760();
    v0 = sub_26B212920();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E8170);
    }
  }
}

uint64_t sub_26B1D679C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26B1D67AC@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  if (a1)
  {

    v6 = OUTLINED_FUNCTION_37_3();
    v11 = sub_26B1D4B8C(v6, v7, v8, v9, v10);
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_37_3();
    result = sub_26B1D4B00(v17, v18, v19, v20);
    v11 = result;
    v13 = v21;
    v15 = 0;
  }

  *a3 = v11;
  *(a3 + 8) = v13 & 1;
  *(a3 + 16) = v15;
  return result;
}

void sub_26B1D6898()
{
  if (!qword_2803E7018)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7018);
    }
  }
}

unint64_t sub_26B1D68E8()
{
  result = qword_2803E8178;
  if (!qword_2803E8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8178);
  }

  return result;
}

void sub_26B1D698C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{
  *(a1 + 8) = sub_26B1D3984;
  v2 = *(v1 + 272);
  return *(v1 + 264);
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_10()
{
  v4 = *(v2 + 216);

  return sub_26B15CF00(v0, v1, v4);
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return sub_26B1A85A8(v4, v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_27_8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_26B1AECD0(v1, v0);
}

uint64_t sub_26B1D6C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a5);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v18(v15, v17);
  if (v11)
  {
    return (*(v13 + 32))(a11, v17, a8);
  }

  return result;
}

uint64_t sub_26B1D6D2C(sqlite3 *a1)
{
  v2 = v1;
  v4 = sub_26B212AD0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[3];
  v17[1] = v1[2];
  v17[2] = v12;
  sub_26B2128F0();
  sub_26B212AC0();
  sub_26B14FCC8();
  v13 = sub_26B2134C0();
  (*(v7 + 8))(v11, v4);

  if (qword_2803E6AB8 != -1)
  {
    swift_once();
  }

  if (v13)
  {
    v14 = (v13 + 32);
  }

  else
  {
    v14 = 0;
  }

  swift_beginAccess();

  module_v2 = sqlite3_create_module_v2(a1, v14, &dword_2803F29C0, v2, sub_26B1DA790);
  swift_endAccess();

  return module_v2;
}

uint64_t sub_26B1D6ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a5);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v14, v16);
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

uint64_t sub_26B1D6FF0@<X0>(uint64_t *a1@<X8>)
{
  result = SQLVirtualTableModuleOption.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SQLTableFunctionCursorArguments.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 8 * a1);
  if (v5)
  {
    return (*(*(a4 + 8) + 16))(v5, a3);
  }

  sub_26B2136C0();

  v7 = sub_26B213B90();
  MEMORY[0x26D670040](v7);

  MEMORY[0x26D670040](544432416, 0xE400000000000000);
  v8 = sub_26B2141F0();
  MEMORY[0x26D670040](v8);

  sub_26B1B34BC();
  swift_allocError();
  *v9 = 0xD00000000000002ALL;
  v9[1] = 0x800000026B2209F0;
  return swift_willThrow();
}

uint64_t SQLIndexConstraint.columnName.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B1D72B8@<X0>(uint64_t *a1@<X8>)
{
  result = SQLIndexConstraint.Operator.rawValue.getter();
  *a1 = result;
  return result;
}

sqlite3_value *SQLIndexConstraint.decodeValue<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ppVal[1] = *MEMORY[0x277D85DE8];
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  ppVal[0] = 0;
  if (!v7)
  {
LABEL_15:
    __break(1u);
    __break(1u);
  }

  memmove(&__dst, v7, 0x60uLL);
  v17 = 0;
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = sqlite3_vtab_rhs_value(&__dst, v8, ppVal);
  if (v10 == 12)
  {
    v12 = 1;
    goto LABEL_10;
  }

  if (v10)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000017, 0x800000026B220A20);
    v13 = sub_26B213B90();
    MEMORY[0x26D670040](v13);

    MEMORY[0x26D670040](0xD000000000000020, 0x800000026B220A40);
    sub_26B1B34BC();
    swift_allocError();
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    result = swift_willThrow();
    goto LABEL_12;
  }

  result = ppVal[0];
  if (ppVal[0])
  {
    result = (*(*(a2 + 8) + 16))(ppVal[0], a1);
    if (v4)
    {
LABEL_12:
      v15 = *MEMORY[0x277D85DE8];
      return result;
    }

    v12 = 0;
LABEL_10:
    result = __swift_storeEnumTagSinglePayload(a3, v12, 1, a1);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t SQLIndexOrderingTerm.columnName.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t SQLVirtualTableIndexQuery.constraints.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SQLVirtualTableIndexQuery.orderingTerms.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SQLVirtualTableIndexQuery.usedColumns.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

char sub_26B1D76B0@<W0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v47 = a2[4];
  v5 = *(a2 + 3);
  v50 = *(a2 + 11);
  sub_26B16B360();
  v54 = v6;
  if (v4 && v3)
  {
    v7 = v6;
    v8 = 0;
    v49 = (v4 + 12 * v3);
    v9 = (v4 + 4);
    do
    {
      v11 = v9 - 4;
      v10 = *(v9 - 1);
      if (v9[1])
      {
        LOBYTE(v12) = SQLIndexConstraint.Operator.init(rawValue:)(*v9);
        if (v53 == 17)
        {

          sub_26B2136C0();

          v43 = sub_26B213B90();
          MEMORY[0x26D670040](v43);

          sub_26B1B34BC();
          swift_allocError();
          *v44 = 0xD000000000000024;
          v44[1] = 0x800000026B220B40;
          swift_willThrow();

          return v12;
        }

        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 16) <= v10)
        {
          goto LABEL_42;
        }

        v13 = (a1 + 32 + 16 * v10);
        v14 = v13[1];
        v51 = *v13;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        v17 = v7;
        sub_26B2128F0();
        if (v16 >= v15 >> 1)
        {
          sub_26B16B360();
          v17 = v19;
        }

        *(v17 + 16) = v16 + 1;
        v7 = v17;
        v18 = v17 + 40 * v16;
        *(v18 + 32) = v51;
        *(v18 + 40) = v14;
        *(v18 + 48) = v53;
        *(v18 + 49) = 1;
        *(v18 + 56) = v8;
        *(v18 + 64) = a2;
        v54 = v17;
      }

      v9 += 12;
      ++v8;
    }

    while (v11 + 12 != v49);
  }

  v20 = MEMORY[0x277D84F90];
  sub_26B16B2A8();
  v22 = v21;
  v55 = v21;
  if (!v5)
  {
    v12 = a1;
LABEL_22:
    v56 = v20;
    v33 = *(v12 + 16);
    if (!v33)
    {

LABEL_36:
      *a3 = v54;
      a3[1] = v22;
      a3[2] = v20;
      return v12;
    }

    v34 = 0;
    v35 = (v12 + 40);
    while (v34 <= 0x3F)
    {
      if ((v50 >> v34))
      {
        goto LABEL_28;
      }

LABEL_33:
      ++v34;
      v35 += 2;
      if (v33 == v34)
      {

        v22 = v55;
        goto LABEL_36;
      }
    }

    LOBYTE(v12) = a1;
    if (*(a1 + 16) < 0x3FuLL)
    {
      goto LABEL_40;
    }

    sub_26B2128F0();
    sub_26B168C58();
    v20 = v56;
LABEL_28:
    v37 = *(v35 - 1);
    v36 = *v35;
    sub_26B2128F0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v20 + 16);
      sub_26B16B280();
      v20 = v41;
    }

    v38 = *(v20 + 16);
    if (v38 >= *(v20 + 24) >> 1)
    {
      sub_26B16B280();
      v20 = v42;
    }

    *(v20 + 16) = v38 + 1;
    v39 = v20 + 16 * v38;
    *(v39 + 32) = v37;
    *(v39 + 40) = v36;
    v56 = v20;
    goto LABEL_33;
  }

  v12 = a1;
  if (!v47)
  {
    goto LABEL_22;
  }

  v23 = &v5[2 * v47];
  while (1)
  {
    v24 = *v5;
    if ((v24 & 0x80000000) != 0)
    {
      break;
    }

    if (*(v12 + 16) <= v24)
    {
      goto LABEL_39;
    }

    v25 = (a1 + 32 + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v5 + 4) != 0;
    v30 = *(v22 + 16);
    v29 = *(v22 + 24);
    sub_26B2128F0();
    if (v30 >= v29 >> 1)
    {
      sub_26B16B2A8();
      v22 = v32;
    }

    *(v22 + 16) = v30 + 1;
    v31 = v22 + 24 * v30;
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    *(v31 + 48) = v28;
    v5 += 2;
    v12 = a1;
    if (v5 == v23)
    {
      v55 = v22;
      v20 = MEMORY[0x277D84F90];
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return v12;
}

uint64_t SQLVirtualTableIndexResults.init(index:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *(a4 + 16) = a3;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = 25;
  *(a4 + 64) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  return result;
}

uint64_t SQLVirtualTableIndexResults.index.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_26B2128F0();
  return v1;
}

uint64_t SQLVirtualTableIndexResults.index.setter(int a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t SQLVirtualTableIndexResults.ConstraintUsage.constraint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = *(v1 + 24);
  return sub_26B2128F0();
}

uint64_t SQLVirtualTableIndexResults.ConstraintUsage.constraint.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 17) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  return result;
}

uint64_t SQLVirtualTableIndexResults.cursorArguments.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SQLVirtualTableIndexResults.estimatedCost.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t SQLVirtualTableIndexResults.estimatedCost.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

char *sub_26B1D7DA0(char *result)
{
  v2 = result;
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  *(result + 10) = *v1;
  if (v3)
  {
    sub_26B15FDE4();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_26B1DBDF8();
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    sub_26B2128F0();
    v11 = sub_26B214200();
    swift_setDeallocating();
    sub_26B185930();
    result = sqlite3_vmprintf("%s", v11);
    *(v2 + 6) = result;
    *(v2 + 14) = 1;
  }

  v12 = 0;
  v13 = *(v5 + 16);
  v14 = (v5 + 72);
  while (v13 != v12)
  {
    if (v12 >= *(v5 + 16))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v15 = *(v2 + 4);
    if (!v15)
    {
      goto LABEL_16;
    }

    if (v12 == 0x7FFFFFFF)
    {
      goto LABEL_15;
    }

    v16 = *(v14 - 2);
    v17 = *v14;
    v14 += 48;
    v18 = v15 + 8 * v16;
    *v18 = ++v12;
    *(v18 + 4) = v17;
  }

  if ((v7 & 1) == 0)
  {
    *(v2 + 8) = v6;
  }

  *(v2 + 9) = v8;
  if (v9)
  {
    *(v2 + 20) = 1;
  }

  return result;
}

uint64_t sub_26B1D7EF4(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 16);
  v4 = sub_26B2133E0();
  (*(*(v4 - 8) + 8))(v1 + v2, v4);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
  v5 = *(v1 + 24);

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_26B1D7F7C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  v8 = *(_s13TableFunctionC13_VirtualTableV8FunctionVMa() + 36);
  v9 = sub_26B2133E0();
  v10 = *(*(v9 - 8) + 32);

  return v10(a6 + v8, a5, v9);
}

uint64_t sub_26B1D8018(uint64_t a1)
{
  v3 = *(v1 + 5);

  *(v1 + 5) = 0;
  v4 = *(a1 + 44);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_26B2133E0();
  (*(*(v8 - 8) + 8))(&v1[v4], v8);
  __swift_storeEnumTagSinglePayload(&v1[v4], 1, 1, AssociatedTypeWitness);
  *(v1 + 4) = 0;
  v9 = *(v1 + 1);

  *(v1 + 1) = 0;
  return result;
}

uint64_t sub_26B1D80D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(_s13TableFunctionC19_VirtualTableCursorV6CursorVMa() + 44);
  swift_getAssociatedTypeWitness();
  v11 = sub_26B2133E0();
  v12 = *(*(v11 - 8) + 32);

  return v12(a8 + v10, a7, v11);
}

double sub_26B1D81A0()
{
  dword_2803F29C0 = 4;
  unk_2803F29C4 = 0;
  dword_2803F29CC = 0;
  qword_2803F29D0 = sub_26B1D8470;
  qword_2803F29D8 = sub_26B1D84EC;
  qword_2803F29E0 = sub_26B1D8558;
  unk_2803F29E8 = 0;
  qword_2803F29F0 = sub_26B1D85D4;
  qword_2803F29F8 = sub_26B1D8640;
  qword_2803F2A00 = sub_26B1D8708;
  qword_2803F2A08 = sub_26B1D8770;
  qword_2803F2A10 = sub_26B1D8784;
  qword_2803F2A18 = sub_26B1D8810;
  qword_2803F2A20 = sub_26B1D8848;
  result = 0.0;
  unk_2803F2A28 = 0u;
  unk_2803F2A38 = 0u;
  unk_2803F2A48 = 0u;
  unk_2803F2A58 = 0u;
  unk_2803F2A68 = 0u;
  unk_2803F2A78 = 0u;
  return result;
}

uint64_t sub_26B1D8278(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5)
  {

    v9 = v8(v6, a5);
    sub_26B193F8C(v8);

    return v9;
  }

LABEL_9:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_26B1D8474(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *(result + 24);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v6 = *(v3 + 80);
    v5 = *(v3 + 88);

    v7 = v6(v2, a2);

    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_26B1D84F0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v4 = *(v2 + 64);
      v3 = *(v2 + 72);

      v4(v1);

      sqlite3_free(v1);
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

uint64_t sub_26B1D855C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *(result + 24);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v6 = *(v3 + 96);
    v5 = *(v3 + 104);

    v7 = v6(v2, a2);

    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_26B1D85D8(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      v4 = *(v2 + 112);
      v3 = *(v2 + 120);

      v4(v1);

      sqlite3_free(v1);
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

uint64_t sub_26B1D8644(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result;
  if (a3)
  {
    result = sub_26B212C20();
    v9 = result;
    v11 = v10;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = 0;
  v11 = 0;
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = *(v8 + 8);
  if (v12)
  {
    v14 = *(v12 + 128);
    v13 = *(v12 + 136);

    v15 = v14(v8, a2, v9, v11, a5, a4);

    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26B1D870C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v4 = *(v2 + 144);
      v3 = *(v2 + 152);

      v5 = v4(v1);

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D8774(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D8788(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 8);
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v8 = *(v4 + 160);
    v7 = *(v4 + 168);

    v9 = v8(v3, a2, a3);

    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26B1D8814(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 24))
    {
      return 12;
    }

    if (a2)
    {
      result = 0;
      *a2 = *(v2 + 16);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_26B1D88BC(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_26B1D88BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a1;
  v5[5] = a5;
  v8 = OUTLINED_FUNCTION_12_16();
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v5[8] = sub_26B1DBE4C;
  v5[9] = v8;
  v9 = OUTLINED_FUNCTION_12_16();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v5[10] = sub_26B1DBE98;
  v5[11] = v9;
  v10 = OUTLINED_FUNCTION_12_16();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v5[12] = sub_26B1DBEA0;
  v5[13] = v10;
  v11 = OUTLINED_FUNCTION_12_16();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v5[14] = sub_26B1DBEA8;
  v5[15] = v11;
  v12 = OUTLINED_FUNCTION_12_16();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v5[16] = sub_26B1DBEF4;
  v5[17] = v12;
  v13 = OUTLINED_FUNCTION_12_16();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v5[18] = sub_26B1DBEFC;
  v5[19] = v13;
  v14 = OUTLINED_FUNCTION_12_16();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v5[20] = sub_26B1DBF04;
  v5[21] = v14;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v5;
  v5[6] = sub_26B1DBF0C;
  v5[7] = v15;

  sub_26B193F8C(0);
  return v5;
}

uint64_t sub_26B1D8A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s13TableFunctionC13_VirtualTableV8FunctionVMa();
  v12 = a3;
  v13 = a4;
  v14 = a2;
  sub_26B1D6C5C(v8, 1, sub_26B1DC06C, v11, a1, &_s13TableFunctionC13_VirtualTableVN, v8, MEMORY[0x277D84A98], MEMORY[0x277D849A8], MEMORY[0x277D84AC0], v10);
  return v15;
}

void sub_26B1D8B14(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v6 = v5;
  v12 = sub_26B2133E0();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v45 = a4;
  v46 = &v38 - v14;
  v15 = (*(a4 + 24))(a3, a4);
  v16 = *(v15 + 16);
  v47 = a5;
  if (v16)
  {
    v39 = v5;
    v40 = a3;
    v41 = a2;
    v42 = a1;
    v54[0] = MEMORY[0x277D84F90];
    sub_26B15B644();
    v17 = v54[0];
    v18 = (v15 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v54[0] = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      sub_26B2128F0();
      if (v22 >= v21 >> 1)
      {
        sub_26B15B644();
        v17 = v54[0];
      }

      *(v17 + 16) = v22 + 1;
      v23 = v17 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      v18 += 3;
      --v16;
    }

    while (v16);

    a5 = v47;
    a2 = v41;
    a1 = v42;
    v6 = v39;
    a3 = v40;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  sub_26B1D76B0(v17, a2, v56);
  if (v6)
  {
    sub_26B15FDE4();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    ErrorValue = swift_getErrorValue();
    v31 = *(*(v57 - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v33 + 16))(&v38 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = sub_26B212AE0();
    v36 = v35;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_26B1DBDF8();
    *(inited + 32) = v34;
    *(inited + 40) = v36;
    v37 = sub_26B214200();
    swift_setDeallocating();
    sub_26B185930();
    *(a1 + 16) = sqlite3_vmprintf("%s", v37);

    *a5 = 1;
  }

  else
  {
    v24 = *&v56[8];
    v42 = *v56;
    v25 = *&v56[16];
    v26 = v45;
    v27 = _s13TableFunctionC13_VirtualTableV8FunctionVMa();
    v28 = v46;
    (*(v43 + 16))(v46, a1 + *(v27 + 36), v44);
    if (__swift_getEnumTagSinglePayload(v28, 1, a3) == 1)
    {
      __break(1u);
    }

    else
    {
      v55[0] = v42;
      v55[1] = v24;
      v55[2] = v25;
      (*(v26 + 48))(v56, v55, a3, v26);

      (*(*(a3 - 8) + 8))(v28, a3);
      memcpy(v54, v56, 0x41uLL);
      if (v54[3])
      {
        v48 = *v56;
        v49 = *&v56[16];
        v50 = v54[3];
        v51 = *&v56[32];
        v52 = *&v56[48];
        v53 = v56[64];
        sub_26B1D7DA0(a2);
        sub_26B1DC090(v54);
        *v47 = 0;
      }

      else
      {
        *v47 = 19;
      }
    }
  }
}

sqlite3_uint64 sub_26B1D8FC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(_s13TableFunctionC19_VirtualTableCursorV6CursorVMa() - 8) + 64);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = sqlite3_malloc64(result);
    if (v9)
    {
      v10 = v9;
      v11 = _s13TableFunctionC13_VirtualTableV8FunctionVMa();
      v12 = MEMORY[0x28223BE20](v11);
      v14[2] = a3;
      v14[3] = a4;
      v14[4] = v10;
      v14[5] = a1;
      sub_26B1D6C5C(v12, 1, sub_26B1DC024, v14, a1, &_s13TableFunctionC13_VirtualTableVN, v12, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v13);
      result = 0;
      *a2 = v10;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t sub_26B1D90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa();
  v14 = a4;
  v15 = a5;
  v16 = a3;
  v17 = a1;
  return sub_26B1D6ED0(v10, 1, sub_26B1DC048, v13, a2, v10, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v12);
}

uint64_t sub_26B1D91A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_26B2133E0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v37 = &v29 - v13;
  v36 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa();
  v14 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v15 = *(a5 + 24);
  v34 = *(a2 + 24);
  v35 = &v29 - v16;

  v17 = v15(a4, a5);
  v18 = *(v17 + 16);
  if (v18)
  {
    v30 = a3;
    v31 = a4;
    v32 = a1;
    v33 = v5;
    v39 = MEMORY[0x277D84F90];
    sub_26B15B644();
    v19 = v39;
    v20 = (v17 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v39 = v19;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);
      sub_26B2128F0();
      if (v24 >= v23 >> 1)
      {
        sub_26B15B644();
        v19 = v39;
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v20 += 3;
      --v18;
    }

    while (v18);

    a1 = v32;
    a3 = v30;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v26 = v37;
  __swift_storeEnumTagSinglePayload(v37, 1, 1, AssociatedTypeWitness);
  v27 = v35;
  sub_26B1D80D0(0, v34, 0, 1, a3, v19, v26, v35);
  return sub_26B1F567C(v27, a1, v36);
}

uint64_t sub_26B1D93FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = a4(0);
  v15 = a2;
  v16 = a3;
  return sub_26B1D6C5C(v11, 1, a5, v14, a1, a6, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v13);
}

uint64_t sub_26B1D94C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa();
  v20 = a7;
  v21 = a8;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  sub_26B1D6C5C(v16, 1, sub_26B1DBFCC, v19, a1, &_s13TableFunctionC19_VirtualTableCursorVN, v16, MEMORY[0x277D84A98], MEMORY[0x277D849A8], MEMORY[0x277D84AC0], v18);
  return v27;
}

void sub_26B1D959C(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int *a9@<X8>)
{
  v49 = a4;
  v45 = a9;
  v46 = a6;
  v48 = a3;
  v47 = a2;
  v13 = sub_26B2133E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v19 = *(v44 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v43 - v20;
  v51 = a1;
  v22 = *(a1 + 32);
  if (!v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  v23 = _s13TableFunctionC13_VirtualTableV8FunctionVMa();
  (*(v14 + 16))(v17, v22 + *(v23 + 36), v13);
  if (__swift_getEnumTagSinglePayload(v17, 1, a7) == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v53[0] = a5;
  v53[1] = v46;
  v24 = v50;
  (*(a8 + 56))(v47, v48, v49, v53, a7, a8);
  if (!v24)
  {
    (*(*(a7 - 8) + 8))(v17, a7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v37 = v51;
    *(v51 + 16) = v26;
    *(v37 + 24) = v38 & 1;
    v39 = *(_s13TableFunctionC19_VirtualTableCursorV6CursorVMa() + 44);
    v40 = sub_26B2133E0();
    (*(*(v40 - 8) + 8))(v37 + v39, v40);
    v41 = v44;
    (*(v44 + 16))(v37 + v39, v21, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v37 + v39, 0, 1, AssociatedTypeWitness);
    (*(v41 + 8))(v21, AssociatedTypeWitness);
    v42 = 0;
LABEL_8:
    *v45 = v42;
    return;
  }

  (*(*(a7 - 8) + 8))(v17, a7);
  v27 = *(v51 + 32);
  if (v27)
  {
    sub_26B15FDE4();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    ErrorValue = swift_getErrorValue();
    v30 = *(*(v52 - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v32 + 16))(&v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = sub_26B212AE0();
    v35 = v34;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_26B1DBDF8();
    *(inited + 32) = v33;
    *(inited + 40) = v35;
    v36 = sub_26B214200();
    swift_setDeallocating();
    sub_26B185930();
    *(v27 + 16) = sqlite3_vmprintf("%s", v36);

    v42 = 1;
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_26B1D9A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa();
  v10 = a2;
  v11 = a3;
  sub_26B1D6C5C(v6, 1, sub_26B1DBFAC, v9, a1, &_s13TableFunctionC19_VirtualTableCursorVN, v6, MEMORY[0x277D84A98], MEMORY[0x277D849A8], MEMORY[0x277D84AC0], v8);
  return v12;
}

void sub_26B1D9B10(uint64_t a1@<X0>, int *a2@<X8>)
{
  v5 = *(_s13TableFunctionC19_VirtualTableCursorV6CursorVMa() + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (__swift_getEnumTagSinglePayload(a1 + v5, 1, AssociatedTypeWitness) == 1)
  {
    __break(1u);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    if (!v2)
    {
      v20 = 0;
      *(a1 + 16) = v8;
      *(a1 + 24) = v9 & 1;
      goto LABEL_6;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      sub_26B15FDE4();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26B2162F0;
      ErrorValue = swift_getErrorValue();
      v13 = *(*(v21[1] - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v15 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v16 = sub_26B212AE0();
      v18 = v17;
      *(inited + 56) = MEMORY[0x277D837D0];
      *(inited + 64) = sub_26B1DBDF8();
      *(inited + 32) = v16;
      *(inited + 40) = v18;
      v19 = sub_26B214200();
      swift_setDeallocating();
      sub_26B185930();
      *(v10 + 16) = sqlite3_vmprintf("%s", v19);

      v20 = 1;
LABEL_6:
      *a2 = v20;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_26B1D9D48(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa();
  v14 = a4;
  v15 = a5;
  v16 = a3;
  v17 = a2;
  sub_26B1D6C5C(v10, 1, sub_26B1DBF84, v13, a1, &_s13TableFunctionC19_VirtualTableCursorVN, v10, MEMORY[0x277D84A98], MEMORY[0x277D849A8], MEMORY[0x277D84AC0], v12);
  return v18;
}

void sub_26B1D9E04(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v34 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_26B2133E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = *(a1 + 40);
  if (!v13)
  {
    goto LABEL_12;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v13 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v35 = a4;
  v14 = v13 + 16 * a2;
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  v17 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa();
  (*(v9 + 16))(v12, a1 + *(v17 + 44), v8);
  if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38[0] = v16;
  v38[1] = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = *(AssociatedConformanceWitness + 16);
  sub_26B2128F0();
  v20 = v36;
  v19(v39, v38, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v20)
  {

    (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
    v21 = v40;
    v22 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v22 + 16))(v34, v21, v22);
    *v35 = 0;
    __swift_destroy_boxed_opaque_existential_1(v39);
    return;
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(v12, AssociatedTypeWitness);
  v23 = *(a1 + 32);
  if (v23)
  {
    sub_26B15FDE4();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    ErrorValue = swift_getErrorValue();
    v26 = *(*(v37 - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v28 + 16))(&v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = sub_26B212AE0();
    v31 = v30;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_26B1DBDF8();
    *(inited + 32) = v29;
    *(inited + 40) = v31;
    v32 = sub_26B214200();
    swift_setDeallocating();
    sub_26B185930();
    *(v23 + 16) = sqlite3_vmprintf("%s", v32);

    *v35 = 1;
    return;
  }

LABEL_14:
  __break(1u);
}

void sub_26B1DA1FC(sqlite3 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = _s13TableFunctionC13_VirtualTableV8FunctionVMa();
  v12 = *(*(v11 - 8) + 64);
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v13 = sqlite3_malloc64(v12);
  if (v13)
  {
    v14 = v13;
    v43 = v5;
    v44 = a2;
    v15 = (*(a5 + 32))(a4, a5);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32);
      do
      {
        v18 = *v17++;
        sqlite3_vtab_config_1(a1, v18 + 1);
        --v16;
      }

      while (v16);
    }

    v42 = a1;

    MEMORY[0x28223BE20](v19);
    v41[2] = a4;
    v41[3] = a5;
    v41[4] = a3;
    v20 = v43;
    sub_26B1D6ED0(v11, 1, sub_26B1DBF48, v41, v14, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v40);
    *v44 = v14;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_26B2136C0();

    v47 = 0xD00000000000001CLL;
    v48 = 0x800000026B220B20;
    v21 = (*(a5 + 24))(a4, a5);
    v22 = *(v21 + 16);
    if (v22)
    {
      v43 = v20;
      v49 = MEMORY[0x277D84F90];
      sub_26B15B06C();
      v23 = 0;
      v24 = v49;
      v25 = (v21 + 48);
      v44 = v21;
      while (v23 < *(v21 + 16))
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v45 = *(v25 - 2);
        v46 = v26;
        swift_bridgeObjectRetain_n();
        MEMORY[0x26D670040](32, 0xE100000000000000);
        v28 = 0xE400000000000000;
        v29 = 1280070990;
        v30 = v22;
        switch(v27)
        {
          case 1:
            v28 = 0xE700000000000000;
            v29 = 0x52454745544E49;
            break;
          case 2:
            v29 = 1279346002;
            break;
          case 3:
            v29 = 1415071060;
            break;
          case 4:
            v29 = 1112493122;
            break;
          case 5:
            v28 = 0xE600000000000000;
            v29 = 0x4E4544444948;
            break;
          default:
            break;
        }

        MEMORY[0x26D670040](v29, v28);

        v31 = v45;
        v32 = v46;
        v49 = v24;
        v33 = *(v24 + 16);
        if (v33 >= *(v24 + 24) >> 1)
        {
          sub_26B15B06C();
          v24 = v49;
        }

        ++v23;
        *(v24 + 16) = v33 + 1;
        v34 = v24 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v32;
        v25 += 24;
        v22 = v30;
        v35 = v30 == v23;
        v21 = v44;
        if (v35)
        {

          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_22:
    v45 = v24;
    sub_26B1DC7CC(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_26B165358();
    v36 = sub_26B2129F0();
    v38 = v37;

    MEMORY[0x26D670040](v36, v38);

    MEMORY[0x26D670040](0x3B29202020200ALL, 0xE700000000000000);
    v39 = sub_26B212B10();

    sqlite3_declare_vtab(v42, (v39 + 32));
  }
}

uint64_t sub_26B1DA634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B2133E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v18 - v10;
  v12 = _s13TableFunctionC13_VirtualTableV8FunctionVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  v16 = *(a4 + 40);

  v16(a3, a4);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, a3);
  sub_26B1D7F7C(0, 0, 0, a2, v11, v15);
  return sub_26B1F567C(v15, a1, v12);
}

void *sub_26B1DA794()
{
  v1 = v0[3];

  v2 = v0[7];
  sub_26B193F8C(v0[6]);
  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  return v0;
}

uint64_t sub_26B1DA7F4()
{
  sub_26B1DA794();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t SQLDatabase.registerFunction<A>(_:named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_26B1DA844()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  v0[23] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  swift_beginAccess();
  v5 = sub_26B15CF00(v2, v3, *(v1 + v4));
  if (v5)
  {
    v6 = v5;
    v7 = v0[17];
    swift_endAccess();
    v8 = *(v6 + 32);

    if (v8 == v7)
    {
      OUTLINED_FUNCTION_20();

      return v9();
    }
  }

  else
  {
    swift_endAccess();
  }

  v11 = v0[21];
  v12 = v0[22];
  v14 = v0[19];
  v13 = v0[20];
  v16 = v0[17];
  v15 = v0[18];
  _s13TableFunctionCMa();
  sub_26B2128F0();
  v17 = OUTLINED_FUNCTION_4_23();
  v22 = sub_26B1D884C(v17, v18, v19, v20, v21);
  v0[24] = v22;
  v25 = *(v12 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  v0[25] = v25;
  if (v25)
  {

    v22 = OUTLINED_FUNCTION_4_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_26B1DA9B0()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE1D0(v0[25], v0[24]);
  v0[26] = 0;
  v1 = v0[25];
  v2 = v0[22];

  return MEMORY[0x2822009F8](sub_26B1DAA4C, v2, 0);
}

uint64_t sub_26B1DAA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  v15 = v12[22];
  v16 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_transactions;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if ((v17 & 0xC000000000000001) != 0)
  {
    if (v17 < 0)
    {
      v18 = *(v15 + v16);
    }

    sub_26B2128F0();
    sub_26B2135E0();
    type metadata accessor for SQLDatabase.Transaction();
    sub_26B1DB1A8();
    sub_26B2131F0();
    v21 = v12[2];
    v22 = v12[3];
    v24 = v12[4];
    v23 = v12[5];
    v25 = v12[6];
  }

  else
  {
    v26 = -1 << *(v17 + 32);
    v22 = v17 + 56;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v17 + 56);
    v21 = sub_26B2128F0();
    v23 = 0;
  }

  v12[27] = v21;
  v12[28] = v22;
  v12[30] = v23;
  v12[31] = v25;
  v12[29] = v24;
  if (v21 < 0)
  {
    v34 = sub_26B213610();
    if (!v34)
    {
      goto LABEL_22;
    }

    v12[16] = v34;
    type metadata accessor for SQLDatabase.Transaction();
    OUTLINED_FUNCTION_19_9();
    v33 = v12[10];
    v30 = v23;
    v32 = v25;
  }

  else
  {
    v29 = v25;
    v30 = v23;
    if (!v25)
    {
      v31 = v23;
      while (1)
      {
        v30 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v30 >= ((v24 + 64) >> 6))
        {
          goto LABEL_22;
        }

        v29 = *(v22 + 8 * v30);
        ++v31;
        if (v29)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v21, v19, v20);
    }

LABEL_15:
    v32 = (v29 - 1) & v29;
    v33 = *(*(v21 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
  }

  v12[33] = v30;
  v12[34] = v32;
  v12[32] = v33;
  if (v33)
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_78();

    return MEMORY[0x2822009F8](v21, v19, v20);
  }

LABEL_22:
  OUTLINED_FUNCTION_11_14();
  sub_26B152CD4();
  OUTLINED_FUNCTION_18_11();

  v36 = *(v14 + v13);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_20();
  *(v14 + v13) = a10;
  swift_endAccess();

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_78();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_26B1DAC7C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[22];
  v0[35] = *(v0[32] + 128);

  v2 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26B1DACE8()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 280);
  v2 = *(v0 + 192);

  v3 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26B1DAD4C()
{
  v30 = v0;
  v1 = *(v0 + 280);
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = *(v0 + 192);
  v6 = sub_26B1D6D2C(v4);
  v7 = v6;
  sub_26B1E26EC(v6, v0 + 80);
  v8 = *(v0 + 84);
  if (v8 != 1 && (v8 != 14 || *(v0 + 80) != 16))
  {
    v10 = sqlite3_extended_errcode(*(v1 + 136));
    v4 = sqlite3_errstr(v7);
    if (v4)
    {
      v11 = sub_26B212C20();
      v13 = v12;
      v4 = sqlite3_errmsg(*(v1 + 136));
      if (v4)
      {
        v14 = *(v0 + 280);
        v15 = *(v0 + 192);
        v27 = *(v0 + 176);
        v16 = sub_26B212C20();
        v18 = v17;
        sub_26B1AFA88();
        v19 = swift_allocError();
        v21 = v20;
        *(v0 + 288) = v19;
        *v20 = v10;
        sub_26B1E26EC(v10, &v28);
        v22 = v29;
        v21[1] = v28;
        *(v21 + 8) = v22;
        *(v21 + 2) = v11;
        *(v21 + 3) = v13;
        *(v21 + 4) = v16;
        *(v21 + 5) = v18;
        swift_willThrow();

        v4 = sub_26B1DB094;
        v2 = v27;
        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x2822009F8](v4, v2, v3);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = *(v0 + 280);
  v24 = *(v0 + 192);
  v25 = *(v0 + 176);

  v4 = sub_26B1DAF0C;
  v2 = v25;
LABEL_11:
  v3 = 0;

  return MEMORY[0x2822009F8](v4, v2, v3);
}

uint64_t sub_26B1DAF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  v15 = v12[32];

  v19 = v12[33];
  v20 = v12[34];
  v12[30] = v19;
  v12[31] = v20;
  v21 = v12[27];
  if (v21 < 0)
  {
    v28 = sub_26B213610();
    if (!v28)
    {
      goto LABEL_14;
    }

    v12[16] = v28;
    type metadata accessor for SQLDatabase.Transaction();
    v27 = OUTLINED_FUNCTION_19_9();
    v26 = v12[10];
    v23 = v19;
    v25 = v20;
  }

  else
  {
    v22 = v20;
    v23 = v19;
    if (!v20)
    {
      v24 = v19;
      while (1)
      {
        v23 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v23 >= ((v12[29] + 64) >> 6))
        {
          goto LABEL_14;
        }

        v22 = *(v12[28] + 8 * v23);
        ++v24;
        if (v22)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v16, v17, v18);
    }

LABEL_7:
    v25 = (v22 - 1) & v22;
    v26 = *(*(v21 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  }

  v12[33] = v23;
  v12[34] = v25;
  v12[32] = v26;
  if (v26)
  {
    OUTLINED_FUNCTION_2_31(v27);
    OUTLINED_FUNCTION_78();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }

LABEL_14:
  OUTLINED_FUNCTION_11_14();
  sub_26B152CD4();
  OUTLINED_FUNCTION_18_11();

  v30 = *(v14 + v13);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_20();
  *(v14 + v13) = a10;
  swift_endAccess();

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_78();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_26B1DB094()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];

  OUTLINED_FUNCTION_4_23();
  sub_26B152CD4();
  v8 = v0[36];
  OUTLINED_FUNCTION_10_0();

  return v9();
}

uint64_t sub_26B1DB120()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[26];
  OUTLINED_FUNCTION_10_0();

  return v4();
}

unint64_t sub_26B1DB1A8()
{
  result = qword_2803E7DD8;
  if (!qword_2803E7DD8)
  {
    type metadata accessor for SQLDatabase.Transaction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DD8);
  }

  return result;
}

uint64_t SQLDatabase.unregisterFunction(named:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_26B1DB218()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  v0[8] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (sub_26B16E800(v0[5], v0[6]), (v3 & 1) != 0))
  {
    v4 = v0[7];
    v5 = swift_endAccess();
    v8 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection;
    v0[9] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection;
    v9 = *(v4 + v8);
    v0[10] = v9;
    if (v9)
    {

      v5 = OUTLINED_FUNCTION_4_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_20();

    return v10();
  }
}

uint64_t sub_26B1DB318()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[10];
  sub_26B1D1E28();
  v0[11] = 0;
  v2 = v0[10];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_26B1DB3B4, v3, 0);
}

uint64_t sub_26B1DB3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3[7] + v3[9]);
  v3[12] = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_25();
    v5 = v3[6];
    sub_26B2128F0();

    a1 = OUTLINED_FUNCTION_4_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1DB434()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[11];
  sub_26B1AE41C(v0[12], v0[5], v0[6]);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_26B1CEA68;
  }

  else
  {
    v4 = v0[12];
    v5 = v0[7];

    v3 = sub_26B1DB4D0;
    v2 = v5;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26B1DB4D0()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  swift_beginAccess();
  sub_26B1CEEAC(v4, v3);
  swift_endAccess();

  OUTLINED_FUNCTION_20();

  return v5();
}

uint64_t sub_26B1DB568(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B212AD0();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  sub_26B212AC0();
  sub_26B14FCC8();
  v14 = sub_26B2134C0();
  (*(v9 + 8))(v13, v6);
  if (v14)
  {
    v15 = (v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  module_v2 = sqlite3_create_module_v2(a1, v15, 0, 0, 0);

  return module_v2;
}

unint64_t sub_26B1DB69C()
{
  result = qword_2803E8190;
  if (!qword_2803E8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8190);
  }

  return result;
}

unint64_t sub_26B1DB6F4()
{
  result = qword_2803E8198;
  if (!qword_2803E8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8198);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLVirtualTableModuleOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SQLTableFunctionCursorArguments(uint64_t a1, int a2)
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

uint64_t sub_26B1DB93C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26B1DB97C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SQLIndexConstraint.Operator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SQLIndexConstraint.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B1DBB38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26B1DBB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B1DBBE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_26B1DBC28(uint64_t result, int a2, int a3)
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

uint64_t sub_26B1DBC84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_26B1DBCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26B1DBD40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_26B1DBD94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_26B1DBDF8()
{
  result = qword_2803E81A0;
  if (!qword_2803E81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E81A0);
  }

  return result;
}

void sub_26B1DBF84(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_26B1D9E04(a1, *(v2 + 32), *(v2 + 40), a2);
}

void sub_26B1DBFAC(uint64_t a1@<X0>, int *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_26B1D9B10(a1, a2);
}

uint64_t sub_26B1DC004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26B1D9494();
}

uint64_t sub_26B1DC090(uint64_t a1)
{
  sub_26B1DC7CC(0, qword_2803E81A8, &type metadata for SQLVirtualTableIndexResults, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B1DC110()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26B1D8A34();
}

void sub_26B1DC130(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  _s13TableFunctionC13_VirtualTableV8FunctionVMa();
  sub_26B2133D0();
  sub_26B2133E0();
  if (v3 <= 0x3F)
  {
    sub_26B1DC750();
    if (v4 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_26B2133E0();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26B1DC22C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v12)
  {
    v15 = v14 + ((v13 + 48) & ~v13);
    v16 = 8 * v15;
    if (v15 > 3)
    {
      goto LABEL_12;
    }

    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v19 >= 2)
    {
LABEL_12:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_28;
      }

LABEL_20:
      v20 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v20 = 0;
      }

      if (v15)
      {
        if (v15 > 3)
        {
          LODWORD(v15) = 4;
        }

        switch(v15)
        {
          case 2:
            LODWORD(v15) = *a1;
            break;
          case 3:
            LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v15) = *a1;
            break;
          default:
            LODWORD(v15) = *a1;
            break;
        }
      }

      v22 = v12 + (v15 | v20);
      return (v22 + 1);
    }
  }

LABEL_28:
  if (v11 <= 0x7FFFFFFE)
  {
    v21 = *(a1 + 8);
    if (v21 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    v22 = v21 - 1;
    if (v22 < 0)
    {
      v22 = -1;
    }

    return (v22 + 1);
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, v10, AssociatedTypeWitness);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_26B1DC420(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = 0;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = (v15 + 48) & ~v15;
  if (v12)
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v17 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v18 = v16 + v17;
  v19 = 8 * (v16 + v17);
  if (a3 > v14)
  {
    if (v18 <= 3)
    {
      v20 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v20))
      {
        v10 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v10 = v21;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v14 >= a2)
  {
    switch(v10)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v13 > 0x7FFFFFFE)
          {
            v25 = (((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15);
            if (v13 >= a2)
            {

              __swift_storeEnumTagSinglePayload(v25, a2 + 1, v12, AssociatedTypeWitness);
            }

            else
            {
              if (v17 <= 3)
              {
                v26 = ~(-1 << (8 * v17));
              }

              else
              {
                v26 = -1;
              }

              if (v17)
              {
                v27 = v26 & (~v13 + a2);
                if (v17 <= 3)
                {
                  v28 = v17;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v17);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *(a1 + 24) = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 8) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v22 = ~v14 + a2;
    if (v18 < 4)
    {
      v23 = (v22 >> v19) + 1;
      if (v18)
      {
        v24 = v22 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v24;
          *(a1 + 2) = BYTE2(v24);
        }

        else if (v18 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v22;
      v23 = 1;
    }

    switch(v10)
    {
      case 1:
        *(a1 + v18) = v23;
        break;
      case 2:
        *(a1 + v18) = v23;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *(a1 + v18) = v23;
        break;
      default:
        return;
    }
  }
}

void sub_26B1DC750()
{
  if (!qword_2803E8230)
  {
    sub_26B1DC7CC(255, qword_2803E8238, &type metadata for SQLColumnName, MEMORY[0x277D83940]);
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E8230);
    }
  }
}

void sub_26B1DC7CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26B1DC81C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_26B2133E0();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B1DC89C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 > v8)
  {
    v12 = v10 + ((v9 + 32) & ~v9);
    v13 = 8 * v12;
    if (v12 > 3)
    {
      goto LABEL_12;
    }

    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 >= 2)
    {
LABEL_12:
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

LABEL_20:
      v17 = (v14 - 1) << v13;
      if (v12 > 3)
      {
        v17 = 0;
      }

      if (v12)
      {
        if (v12 > 3)
        {
          LODWORD(v12) = 4;
        }

        switch(v12)
        {
          case 2:
            LODWORD(v12) = *a1;
            break;
          case 3:
            LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v12) = *a1;
            break;
          default:
            LODWORD(v12) = *a1;
            break;
        }
      }

      v19 = v8 + (v12 | v17);
      return (v19 + 1);
    }
  }

LABEL_28:
  if (v7 <= 0x7FFFFFFE)
  {
    v18 = *(a1 + 3);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 - 1;
    if (v19 < 0)
    {
      v19 = -1;
    }

    return (v19 + 1);
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 32) & ~v9, v6, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_26B1DCA60(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 32) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v24 = (&a1[v12 + 32] & ~v12);
            if (v10 >= a2)
            {
              v28 = a2 + 1;
              v29 = &a1[v12 + 32] & ~v12;

              __swift_storeEnumTagSinglePayload(v29, v28, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v25 = ~(-1 << (8 * v14));
              }

              else
              {
                v25 = -1;
              }

              if (v14)
              {
                v26 = v25 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v27 = v14;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v14);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 2) = 0;
            *(a1 + 3) = 0;
            *a1 = a2 - 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 3) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_20()
{
  v4 = *(v1 + v0);

  return sub_26B166248();
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_9()
{

  return swift_dynamicCast();
}

uint64_t sub_26B1DCDD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 264) = v3;
  *v3 = v1;
  v3[1] = sub_26B1DCE84;

  return sub_26B1FAB80(v1 + 208, a1);
}

uint64_t sub_26B1DCE84()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1DCF80()
{
  OUTLINED_FUNCTION_2_32();
  v0[8] = sub_26B1E2324;
  v0[9] = 0;

  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_4_26(&unk_26B21A1A0);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_32_5(v1);

  return v3();
}

uint64_t sub_26B1DD044()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 320);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v5 + 328) = v0;

  if (!v0)
  {
    *(v5 + 250) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B1DD150()
{
  v1 = *(v0 + 272);
  OUTLINED_FUNCTION_10_0();
  return v2();
}

uint64_t sub_26B1DD174()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_98();
  sub_26B1E243C(v0 + 144, &qword_2803E82F8);
  OUTLINED_FUNCTION_9_14();
  v1 = *(v0 + 250);
  OUTLINED_FUNCTION_25_2();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1DD1F8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_37_4();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1DD268()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_99();
  sub_26B1E243C(v0 + 80, &qword_2803E82F8);
  v1 = *(v0 + 328);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1DD2E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_26(&unk_26B21C078);
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_8(v1);

  return v3(v2);
}

uint64_t sub_26B1DD37C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1DD478()
{
  OUTLINED_FUNCTION_2_32();
  v0[8] = sub_26B1E2350;
  v0[9] = 0;

  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_4_26(&unk_26B21A198);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_32_5(v1);

  return v3();
}

uint64_t sub_26B1DD53C()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_1();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v10 = *(v9 + 320);
  v11 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v12 = v11;
  *(v7 + 328) = v0;

  if (!v0)
  {
    *(v7 + 250) = v3;
    *(v7 + 336) = v5;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26B1DD650()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 250);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_98();
  sub_26B1E243C(v0 + 144, &qword_2803E82F0);
  v2 = OUTLINED_FUNCTION_33_6();

  return v3(v2);
}

uint64_t sub_26B1DD6D8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_37_4();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1DD748()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_99();
  sub_26B1E243C(v0 + 80, &qword_2803E82F0);
  v1 = *(v0 + 328);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1DD7C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_26(&unk_26B21C068);
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_8(v1);

  return v3(v2);
}

uint64_t sub_26B1DD85C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1DD958()
{
  OUTLINED_FUNCTION_2_32();
  v0[8] = sub_26B1E237C;
  v0[9] = 0;

  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_4_26(&unk_26B21A190);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_32_5(v1);

  return v3();
}

uint64_t sub_26B1DDA1C()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_1();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v10 = *(v9 + 320);
  v11 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v12 = v11;
  *(v7 + 328) = v0;

  if (!v0)
  {
    *(v7 + 250) = v3;
    *(v7 + 336) = v5;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26B1DDB30()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 250);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_98();
  sub_26B1E243C(v0 + 144, &qword_2803E82E8);
  v2 = OUTLINED_FUNCTION_33_6();

  return v3(v2);
}

uint64_t sub_26B1DDBB8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_37_4();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1DDC28()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_99();
  sub_26B1E243C(v0 + 80, &qword_2803E82E8);
  v1 = *(v0 + 328);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1DDCA8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B1E2534, v2, 0);
}

uint64_t sub_26B1DDCCC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B1DDCF0, v2, 0);
}

uint64_t sub_26B1DDCF0()
{
  result = *(v0[9] + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  if (result)
  {
    OUTLINED_FUNCTION_25();
    v2 = v0[7];
    v3 = v0[8];
    *v2 = v4;
    v5 = *v3;
    v6 = *(v3 + 16);
    *(v2 + 40) = *(v3 + 32);
    *(v2 + 24) = v6;
    *(v2 + 8) = v5;

    sub_26B1E23E0(v3, (v0 + 2));
    OUTLINED_FUNCTION_20();

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SQLDatabase.transaction(named:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1DDDA8, v2);
}

void sub_26B1DDDA8()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 56);
  if (*(v1 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_isDeserialized) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
    if (v2)
    {
      *(v0 + 80) = v2;
      v3 = *(v0 + 48);

      *(v0 + 112) = 0;
      type metadata accessor for SQLDatabase.Transaction();
      swift_allocObject();

      sub_26B2128F0();
      v4 = swift_task_alloc();
      *(v0 + 88) = v4;
      *v4 = v0;
      v5 = OUTLINED_FUNCTION_10_17(v4);

      sub_26B1DF8AC(v5, v6, v7, (v0 + 112), v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    _s10ConnectionCMa();
    swift_allocObject();

    v10 = swift_task_alloc();
    *(v0 + 64) = v10;
    *v10 = v0;
    v10[1] = sub_26B1DDF40;
    v11 = *(v0 + 56);

    sub_26B1AC488();
  }
}

uint64_t sub_26B1DDF40()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_28_7();

    return v11();
  }

  else
  {
    v13 = *(v5 + 56);
    *(v5 + 72) = v3;

    return MEMORY[0x2822009F8](sub_26B1DE06C, v13, 0);
  }
}

uint64_t sub_26B1DE06C()
{
  OUTLINED_FUNCTION_10_3();
  *(v0 + 80) = *(v0 + 72);
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  *(v0 + 112) = 0;
  type metadata accessor for SQLDatabase.Transaction();
  swift_allocObject();

  sub_26B2128F0();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_10_17(v3);

  return sub_26B1DF8AC(v4, v5, v6, (v0 + 112), v7, v8);
}

uint64_t sub_26B1DE134()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  v5[12] = v0;

  v11 = v5[7];
  if (!v0)
  {
    v5[13] = v3;
  }

  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26B1DE244()
{
  OUTLINED_FUNCTION_10_3();
  v8 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  swift_beginAccess();

  sub_26B1E1CC8(&v7, v1);
  swift_endAccess();

  OUTLINED_FUNCTION_9_14();
  v5 = v0[13];

  return v4(v5);
}

uint64_t sub_26B1DE308(uint64_t a1)
{
  swift_beginAccess();
  sub_26B1E1254(a1);
  swift_endAccess();
}

uint64_t sub_26B1DE3A8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_32_5(v8);

  return SQLDatabase.transaction(named:)(v4, v2);
}

uint64_t sub_26B1DE450()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  v5[6] = v3;

  if (v0)
  {
    OUTLINED_FUNCTION_28_7();

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v5[7] = v13;
    *v13 = v9;
    v13[1] = sub_26B1DE5AC;
    v14 = v5[3];
    v15 = v5[4];

    return sub_26B204E78();
  }
}

uint64_t sub_26B1DE5AC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[2];

    return MEMORY[0x2822009F8](sub_26B1DE81C, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[9] = v10;
    *v10 = v7;
    v10[1] = sub_26B1DE700;
    v11 = v3[6];

    return SQLDatabase.Transaction.commit()();
  }
}

uint64_t sub_26B1DE700()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *(v2 + 72);
  *v4 = *v1;
  *(v3 + 80) = v0;

  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1DE81C()
{
  OUTLINED_FUNCTION_25();
  v0[11] = v0[8];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_16_11(v1);

  return SQLDatabase.Transaction.rollback()();
}

uint64_t sub_26B1DE890()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_20();

  return v2();
}

uint64_t sub_26B1DE8E8()
{
  OUTLINED_FUNCTION_25();
  v0[11] = v0[10];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_16_11(v1);

  return SQLDatabase.Transaction.rollback()();
}

uint64_t sub_26B1DE95C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v9 + 104) = v0;

  if (v0)
  {
    v10 = sub_26B1DEAE0;
  }

  else
  {
    v10 = sub_26B1DEA70;
  }

  return MEMORY[0x2822009F8](v10, v6, 0);
}

uint64_t sub_26B1DEA70()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  swift_willThrow();

  v3 = *(v0 + 88);
  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B1DEAE0()
{
  OUTLINED_FUNCTION_10_3();
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[6];
  sub_26B1E1EB4();
  OUTLINED_FUNCTION_24_4();
  *v4 = v1;
  v4[1] = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t SQLDatabase.withTransaction<A>(named:_:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  v1[5] = v6;
  v1[6] = v0;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = swift_task_alloc();
  v1[7] = v10;
  *v10 = v1;
  OUTLINED_FUNCTION_32_5(v10);

  return SQLDatabase.transaction(named:)(v5, v3);
}

uint64_t sub_26B1DEC24()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  v5[8] = v3;

  if (v0)
  {
    OUTLINED_FUNCTION_28_7();

    return v11();
  }

  else
  {
    v17 = (v5[3] + *v5[3]);
    v13 = *(v5[3] + 4);
    v14 = swift_task_alloc();
    v5[9] = v14;
    *v14 = v9;
    v14[1] = sub_26B1DEDE8;
    v15 = v5[4];
    v16 = v5[2];

    return v17(v16, v3);
  }
}

uint64_t sub_26B1DEDE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (v0)
  {
    v3[12] = v0;
    v9 = swift_task_alloc();
    v3[13] = v9;
    *v9 = v7;
    OUTLINED_FUNCTION_17_12(v9);
    v10 = v3[8];

    return SQLDatabase.Transaction.rollback()();
  }

  else
  {
    v12 = swift_task_alloc();
    v3[10] = v12;
    *v12 = v7;
    v12[1] = sub_26B1DEF60;
    v13 = v3[8];

    return SQLDatabase.Transaction.commit()();
  }
}

uint64_t sub_26B1DEF60()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *(v2 + 80);
  *v4 = *v1;
  *(v3 + 88) = v0;

  v6 = *(v2 + 48);
  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1DF07C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_20();

  return v2();
}

uint64_t sub_26B1DF0D4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v9 + 112) = v0;

  if (v0)
  {
    v10 = sub_26B1DF304;
  }

  else
  {
    v10 = sub_26B1DF1E8;
  }

  return MEMORY[0x2822009F8](v10, v6, 0);
}

uint64_t sub_26B1DF1E8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  swift_willThrow();

  v3 = *(v0 + 96);
  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B1DF258()
{
  OUTLINED_FUNCTION_25();
  (*(*(v0[5] - 8) + 8))(v0[2]);
  v0[12] = v0[11];
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_17_12(v1);
  v2 = v0[8];

  return SQLDatabase.Transaction.rollback()();
}

uint64_t sub_26B1DF304()
{
  OUTLINED_FUNCTION_10_3();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  sub_26B1E1EB4();
  OUTLINED_FUNCTION_24_4();
  *v4 = v1;
  v4[1] = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1DF3BC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_19_10();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_26_11();
    sub_26B1E1F08();
    v2 = OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_22_11(v2, v3);
    OUTLINED_FUNCTION_10_0();

    return v4();
  }

  else
  {
    *(v1 + 48) = *(*(v1 + 40) + 128);

    v6 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_26B1DF4BC()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE554(v0[6]);
  v0[7] = 0;
  v2 = v0[5];
  v1 = v0[6];

  return MEMORY[0x2822009F8](sub_26B1DF554, v2, 0);
}

uint64_t sub_26B1DF554()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 40);
  *(v1 + 136) = 1;
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);

  v3(v1);

  OUTLINED_FUNCTION_20();

  return v4();
}

uint64_t sub_26B1DF5DC()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1DF654()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_19_10();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_26_11();
    sub_26B1E1F08();
    v2 = OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_22_11(v2, v3);
    OUTLINED_FUNCTION_10_0();

    return v4();
  }

  else
  {
    *(v1 + 48) = *(*(v1 + 40) + 128);

    v6 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_26B1DF754()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE574(v0[6]);
  v0[7] = 0;
  v2 = v0[5];
  v1 = v0[6];

  return MEMORY[0x2822009F8](sub_26B1E2538, v2, 0);
}

uint64_t sub_26B1DF830()
{
  v1 = *v0;
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1DF870()
{
  v1 = *v0;
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1DF8AC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = *v6;
  *(v7 + 80) = *a4;
  return OUTLINED_FUNCTION_2_13(sub_26B1DF900, 0);
}

uint64_t sub_26B1DF900()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  swift_defaultActor_initialize();
  v1[15] = v2;
  v1[16] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_26B1DF98C, v4, 0);
}

uint64_t sub_26B1DF98C()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE448(*(v0 + 16), *(v0 + 80));
  *(v0 + 72) = 0;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B1DFA14()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  *(v1 + 136) = 0;
  *(v1 + 144) = v2;
  return OUTLINED_FUNCTION_2_13(sub_26B1DFA38, v1);
}

uint64_t sub_26B1DFA38()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_9_14();
  v3 = *(v0 + 56);

  return v2(v3);
}

uint64_t sub_26B1DFA98()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[2];
  v5 = *(v1 + 120);

  v6 = *(v1 + 128);

  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_10_0();
  v8 = v0[9];

  return v7();
}

uint64_t sub_26B1DFB3C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_5_21();
  sub_26B2136C0();

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }

    v4 = 0xE900000000000045;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x4445525245464544;
  }

  MEMORY[0x26D670040](v3, v4);

  MEMORY[0x26D670040](0x4341534E41525420, 0xEC0000004E4F4954);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_17();
  sqlite3_exec(v5, v6, v7, v8, 0);

  return OUTLINED_FUNCTION_40_3();
}

uint64_t SQLDatabase.Transaction.deinit()
{
  OUTLINED_FUNCTION_17();
  result = swift_beginAccess();
  if (*(v0 + 136) == 1)
  {
    v2 = *(v0 + 120);

    v3 = *(v0 + 128);

    v4 = *(v0 + 152);

    swift_defaultActor_destroy();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SQLDatabase.Transaction.__deallocating_deinit()
{
  SQLDatabase.Transaction.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t SQLDatabase.Transaction.name.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_26B2128F0();
  return v1;
}

uint64_t SQLDatabase.Transaction.isFinalized.getter()
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  return *(v0 + 136);
}

uint64_t SQLDatabase.Transaction.deferringForeignKeys.getter()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 16) = 0xD000000000000019;
  OUTLINED_FUNCTION_4_26(&unk_26B21BD58);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0x800000026B220BD0;
  *(v0 + 48) = 0;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_32_5(v1);

  return v3(v0 + 16);
}

uint64_t sub_26B1DFE48()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;

  v8 = *(v6 + 8);
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t SQLDatabase.Transaction.deferForeignKeyEnforcement(enabled:)(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 89) = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1DFF64, v1);
}

uint64_t sub_26B1DFF64()
{
  v1 = MEMORY[0x277D84F90];
  sub_26B16AFCC();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = v4 + 1;
  if (v4 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_21();
    v3 = v16;
  }

  v6 = *(v0 + 89);
  *(v3 + 16) = v5;
  v7 = v3 + 80 * v4;
  *(v7 + 32) = 0xD00000000000001CLL;
  *(v7 + 40) = 0x800000026B220BF0;
  v8 = MEMORY[0x277D839B0];
  *(v7 + 104) = 0;
  *(v0 + 120) = v8;
  *(v0 + 128) = &protocol witness table for Bool;
  *(v0 + 96) = v6;
  sub_26B16BCF8(v0 + 96, v0 + 16);
  *(v0 + 88) = 1;
  v9 = v4 + 2;
  if (v9 > *(v3 + 24) >> 1)
  {
    sub_26B16AFCC();
    v3 = v17;
  }

  *(v3 + 16) = v9;
  memcpy((v3 + 80 * v5 + 32), (v0 + 16), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v10 = *(v3 + 16);
  if (v10 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_21();
    v3 = v18;
  }

  *(v3 + 16) = v10 + 1;
  v11 = v3 + 80 * v10;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  *(v11 + 96) = v22;
  *(v11 + 64) = v20;
  *(v11 + 80) = v21;
  *(v11 + 48) = v19;
  *(v11 + 104) = 0;
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v13 = *(v1 + 16);
  if (v13)
  {

    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();

    *(v0 + 136) = v3;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    *(v0 + 160) = v1;
    *(v0 + 168) = v13 != 0;
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_26B1E0248;
    v15 = *(v0 + 176);

    return SQLDatabase.Transaction.execute(_:)(v0 + 136);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E0248()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  v5 = v2[23];
  v6 = *v1;
  *v4 = *v1;
  v3[24] = v0;

  sub_26B1A85A8(v3[17], v2[18], v2[19], v2[20], *(v3 + 168));
  if (v0)
  {
    v7 = v3[22];
    OUTLINED_FUNCTION_36_4();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    v11 = v6[1];

    return v11();
  }
}

uint64_t SQLDatabase.Transaction.Error.message.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return v1;
}

uint64_t SQLDatabase.Transaction.Error.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id SQLDatabase.Transaction.RollbackError.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *SQLDatabase.Transaction.RollbackError.rollbackReason.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SQLDatabase.Transaction.save(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_2_13(sub_26B1E0560, v3);
}

uint64_t sub_26B1E0560()
{
  OUTLINED_FUNCTION_10_3();
  v1 = v0[8];
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  if (*(v1 + 136))
  {
    v3 = v0[6];
    v2 = v0[7];
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();
    OUTLINED_FUNCTION_29_7();
    MEMORY[0x26D670040](0xD00000000000003CLL);
    MEMORY[0x26D670040](v3, v2);
    sub_26B1E1F08();
    v4 = OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_22_11(v4, v5);
    OUTLINED_FUNCTION_10_0();

    return v6();
  }

  else
  {
    v8 = v0[7];
    v0[9] = *(v0[8] + 128);
    sub_26B2128F0();

    v9 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_26B1E0680()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE69C(v0[9], v0[6], v0[7]);
  v0[10] = 0;
  v2 = v0[8];
  v1 = v0[9];

  return MEMORY[0x2822009F8](sub_26B1E071C, v2, 0);
}

uint64_t sub_26B1E071C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v2 = v0[5];
  *v2 = v0[6];
  v2[1] = v1;
  OUTLINED_FUNCTION_9_14();
  v5 = v3;
  sub_26B2128F0();

  return v5();
}

uint64_t sub_26B1E0788()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1E07E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D670040](a2, a3);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_17();
  sqlite3_exec(v3, v4, v5, v6, 0);

  return OUTLINED_FUNCTION_40_3();
}

uint64_t SQLDatabase.Transaction.release(savepoint:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[5] = v1;
  v2[6] = v3;
  v2[7] = v4;
  return OUTLINED_FUNCTION_2_13(sub_26B1E089C, v1);
}

uint64_t sub_26B1E089C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    v2 = *(v1 + 40);
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();
    OUTLINED_FUNCTION_29_7();
    MEMORY[0x26D670040](0xD00000000000003FLL);
    MEMORY[0x26D670040](*(v2 + 112), *(v2 + 120));
    sub_26B1E1F08();
    v3 = OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_22_11(v3, v4);
    OUTLINED_FUNCTION_10_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_38_6();
    sub_26B2128F0();

    v7 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_26B1E09A8()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE6C8(v0[8], v0[6], v0[7]);
  v0[9] = 0;
  v1 = v0[8];

  OUTLINED_FUNCTION_20();

  return v2();
}

uint64_t sub_26B1E0A5C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_10_0();

  return v3();
}

uint64_t sub_26B1E0AB8()
{
  OUTLINED_FUNCTION_5_21();
  sub_26B2136C0();

  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_17();
  sqlite3_exec(v0, v1, v2, v3, 0);

  return OUTLINED_FUNCTION_40_3();
}

uint64_t SQLDatabase.Transaction.rollback(to:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[5] = v1;
  v2[6] = v3;
  v2[7] = v4;
  return OUTLINED_FUNCTION_2_13(sub_26B1E0B7C, v1);
}

uint64_t sub_26B1E0B7C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    v2 = *(v1 + 40);
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();
    OUTLINED_FUNCTION_29_7();
    MEMORY[0x26D670040](0xD000000000000043);
    MEMORY[0x26D670040](*(v2 + 112), *(v2 + 120));
    sub_26B1E1F08();
    v3 = OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_22_11(v3, v4);
    OUTLINED_FUNCTION_10_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_38_6();
    sub_26B2128F0();

    v7 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_26B1E0C88()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE6F4(v0[8], v0[6], v0[7]);
  v0[9] = 0;
  v1 = v0[8];

  OUTLINED_FUNCTION_20();

  return v2();
}

uint64_t sub_26B1E0D3C()
{
  OUTLINED_FUNCTION_5_21();
  sub_26B2136C0();

  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_17();
  sqlite3_exec(v0, v1, v2, v3, 0);

  return OUTLINED_FUNCTION_40_3();
}

uint64_t sub_26B1E0DF8()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  if (*(v1 + 136))
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_26_11();
    sub_26B1E1F08();
    v2 = OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_22_11(v2, v3);
    OUTLINED_FUNCTION_10_0();

    return v4();
  }

  else
  {
    *(v0 + 72) = *(*(v0 + 64) + 128);

    v6 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_26B1E0EFC()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  insert_rowid = sqlite3_last_insert_rowid(*(v1 + 136));

  OUTLINED_FUNCTION_9_14();

  return v3(insert_rowid);
}

uint64_t SQLDatabase.Transaction.hashValue.getter()
{
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1E102C()
{
  v1 = *v0;
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1E108C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_26B1AB090();
    v2 = sub_26B213670();
    v16 = v2;
    sub_26B2135E0();
    while (1)
    {
      if (!sub_26B213610())
      {

        return v2;
      }

      type metadata accessor for SQLDatabase.Transaction();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26B1E13A8(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      sub_26B214030();
      MEMORY[0x26D671480]();
      result = sub_26B214070();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_26B1E1254(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v7 = *(v3 + 40);
    sub_26B214030();
    MEMORY[0x26D671480](a1);
    v8 = sub_26B214070();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v3 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v10) == a1)
      {
        v11 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v1;
        v15 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B1E17D0();
          v13 = v15;
        }

        v6 = *(*(v13 + 48) + 8 * v10);
        sub_26B1E1B2C(v10);
        *v1 = v15;
        return v6;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  sub_26B2128F0();

  v5 = sub_26B213620();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_26B1E16F0(v4, a1);

  return v6;
}

uint64_t sub_26B1E13A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_26B1AB090();
  result = sub_26B213660();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_26B1E168C(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_26B214030();
    MEMORY[0x26D671480](v17);
    result = sub_26B214070();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_26B1E15E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26B214030();
  MEMORY[0x26D671480](a1);
  sub_26B214070();
  v5 = -1 << *(a2 + 32);
  result = sub_26B2135D0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26B1E168C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26B218860;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_26B1E16F0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = sub_26B2135F0();
  v6 = swift_unknownObjectRetain();
  v11 = sub_26B1E108C(v6, v5);
  v7 = *(v11 + 40);
  sub_26B214030();
  MEMORY[0x26D671480](a2);
  for (i = sub_26B214070(); ; i = result + 1)
  {
    result = i & ~(-1 << *(v11 + 32));
    if (((*(v11 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      break;
    }

    v10 = *(*(v11 + 48) + 8 * result);
    if (v10 == a2)
    {
      sub_26B1E1B2C(result);
      *v2 = v11;
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_26B1E17D0()
{
  v1 = v0;
  sub_26B1AB090();
  v2 = *v0;
  v3 = sub_26B213650();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_26B1E1914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_26B1AB090();
  result = sub_26B213660();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_26B214030();
        MEMORY[0x26D671480](v16);
        result = sub_26B214070();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);

        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_26B1E1B2C(unint64_t result)
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

    v9 = sub_26B2135C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_26B214030();
        MEMORY[0x26D671480](v12);
        v13 = sub_26B214070() & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v10 || v2 >= v13)
        {
          goto LABEL_15;
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

uint64_t sub_26B1E1CC8(void *a1, uint64_t a2)
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

    sub_26B2128F0();
    v8 = sub_26B213600();

    if (v8)
    {

      type metadata accessor for SQLDatabase.Transaction();
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
    }

    else
    {
      result = sub_26B2135F0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v14 = sub_26B1E108C(v7, result + 1);
        v15 = *(v14 + 16);
        if (*(v14 + 24) <= v15)
        {
          sub_26B1E13A8(v15 + 1);
        }

        sub_26B1E15E8(v16, v14);

        *v3 = v14;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_26B214030();
    MEMORY[0x26D671480](a2);
    v11 = sub_26B214070();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v17 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *v2;

        sub_26B1E21F0(v19, v13, isUniquelyReferenced_nonNull_native);
        *v2 = v21;
        goto LABEL_16;
      }

      if (*(*(v6 + 48) + 8 * v13) == a2)
      {
        break;
      }

      v11 = v13 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v13);

    return 0;
  }

  return result;
}

unint64_t sub_26B1E1EB4()
{
  result = qword_2803E82C0;
  if (!qword_2803E82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E82C0);
  }

  return result;
}

unint64_t sub_26B1E1F08()
{
  result = qword_2803E82C8;
  if (!qword_2803E82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E82C8);
  }

  return result;
}

unint64_t sub_26B1E1F60()
{
  result = qword_2803E82D0;
  if (!qword_2803E82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E82D0);
  }

  return result;
}

unint64_t sub_26B1E1FB8()
{
  result = qword_2803E82D8;
  if (!qword_2803E82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E82D8);
  }

  return result;
}

_BYTE *sub_26B1E2068(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B1E2154(uint64_t *a1, int a2)
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

uint64_t sub_26B1E2194(uint64_t result, int a2, int a3)
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

uint64_t sub_26B1E21F0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26B1E13A8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26B1E1914(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_26B214030();
      MEMORY[0x26D671480](v5);
      result = sub_26B214070();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for SQLDatabase.Transaction();
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26B1E17D0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26B213F00();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_26B1E2324(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_26B1FB538(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_26B1E23A8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_26B1E243C(uint64_t a1, unint64_t *a2)
{
  sub_26B1E2498(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26B1E2498(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for SQLDatabase.AsyncResultsIterator();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_26B1E24E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SQLDatabase.Transaction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1)
{
  *(a1 + 8) = sub_26B1DE134;
  v3 = v2[6];
  v4 = v2[7];
  v5 = v2[5];
  return v1;
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_26_11()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  JUMPOUT(0x26D670040);
}

void OUTLINED_FUNCTION_35_5()
{

  JUMPOUT(0x26D670040);
}

unint64_t OUTLINED_FUNCTION_37_4()
{
  *(v0 + 256) = *(v0 + 328);

  return sub_26B162128();
}

uint64_t OUTLINED_FUNCTION_38_6()
{
  result = v0[7];
  v0[8] = *(v0[5] + 128);
  return result;
}

void OUTLINED_FUNCTION_41_4()
{

  JUMPOUT(0x26D671480);
}

uint64_t sub_26B1E26EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = result & 0xFFFFFF00;
  v4 = 14;
  switch(result)
  {
    case 0:
      v4 = 1;
      v5 = v3 == 512;
      v6 = 1;
      v7 = 1;
      if (v3 == 512)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      goto LABEL_51;
    case 1:
      if (v3 == 512)
      {
        v12 = 1;
      }

      else
      {
        v12 = 3;
      }

      if (v3 == 768)
      {
        v12 = 2;
      }

      if (v3 == 256)
      {
        v2 = 0;
      }

      else
      {
        v2 = v12;
      }

      v4 = 2;
      break;
    case 2:
      break;
    case 3:
      v2 = 1;
      break;
    case 4:
      v2 = v3 != 512;
      v4 = 3;
      break;
    case 5:
      v4 = 4;
      v9 = 4;
      v10 = v3 == 512;
      v7 = 4;
      v11 = 4;
      goto LABEL_33;
    case 6:
      v4 = 5;
      v5 = v3 == 512;
      v6 = 5;
      v7 = 5;
      goto LABEL_48;
    case 7:
      v2 = 2;
      break;
    case 8:
      v2 = (result - 256) >> 8;
      v4 = 6;
      if (v2 >= 6)
      {
        v2 = 6;
      }

      break;
    case 9:
      v2 = 3;
      break;
    case 10:
      if ((result - 256) >> 8 >= 0x21)
      {
        v2 = 33;
      }

      else
      {
        v2 = (result - 256) >> 8;
      }

      v4 = 7;
      break;
    case 11:
      v4 = 8;
      v9 = 8;
      v10 = v3 == 512;
      v7 = 8;
      v11 = 8;
LABEL_33:
      if (v10)
      {
        v13 = 1;
      }

      else
      {
        v13 = 3;
      }

      if (v10)
      {
        v7 = v11;
      }

      if (v3 == 768)
      {
        v8 = 2;
      }

      else
      {
        v8 = v13;
      }

      if (v3 == 768)
      {
        v7 = v9;
      }

      goto LABEL_53;
    case 12:
      v2 = 4;
      break;
    case 13:
      v2 = 5;
      break;
    case 14:
      if ((result - 256) >> 8 >= 6)
      {
        v2 = 6;
      }

      else
      {
        v2 = (result - 256) >> 8;
      }

      v4 = 9;
      break;
    case 15:
      v2 = 6;
      break;
    case 16:
      v2 = 7;
      break;
    case 17:
      v2 = 8;
      break;
    case 18:
      v2 = 9;
      break;
    case 19:
      if ((result - 256) >> 8 >= 0xC)
      {
        v2 = 12;
      }

      else
      {
        v2 = (result - 256) >> 8;
      }

      v4 = 10;
      break;
    case 20:
      v2 = 10;
      break;
    case 21:
      v2 = 11;
      break;
    case 22:
      v2 = 12;
      break;
    case 23:
      v2 = v3 != 256;
      v4 = 11;
      break;
    case 24:
      v2 = 13;
      break;
    case 25:
      v2 = 14;
      break;
    case 26:
      v2 = 15;
      break;
    case 27:
      v4 = 12;
      v5 = v3 == 512;
      v6 = 12;
      v7 = 12;
LABEL_48:
      if (v5)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

LABEL_51:
      if (!v5)
      {
        v7 = v6;
      }

LABEL_53:
      if (v3 == 256)
      {
        v2 = 0;
      }

      else
      {
        v2 = v8;
      }

      if (v3 != 256)
      {
        v4 = v7;
      }

      break;
    case 28:
      v2 = v3 != 256;
      v4 = 13;
      break;
    default:
      v2 = result;
      v4 = 0;
      break;
  }

  *a2 = v2;
  *(a2 + 4) = v4;
  return result;
}