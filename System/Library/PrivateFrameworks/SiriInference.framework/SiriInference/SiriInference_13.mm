uint64_t sub_1DD47DFE4()
{
  v40 = v0;
  if (qword_1EE166108 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v1 = v0[24];
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F088);
  sub_1DD47D50C(v1, (v0 + 2));
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v4))
  {
    v5 = OUTLINED_FUNCTION_54();
    v39 = OUTLINED_FUNCTION_62();
    *v5 = 136315138;
    v6 = v0[7];
    v7 = v0[8];

    sub_1DD47E8F4((v0 + 2));
    v8 = sub_1DD39565C(v6, v7, &v39);

    *(v5 + 4) = v8;
    _os_log_impl(&dword_1DD38D000, v3, v4, "DASActivity: received trigger for %s", v5, 0xCu);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    v9 = sub_1DD47E8F4((v0 + 2));
  }

  v11 = v0[24];
  v10 = v0[25];
  v12 = *(v11 + 112);
  (*(v11 + 104))(v9);
  v13 = [v10 setTaskCompleted];
  v14 = *(v11 + 96);
  if ((*(v11 + 88))(v13))
  {
    v15 = v0[24];
    DASActivity.unregister(cancel:)(0);
    if (qword_1EE1632C8 != -1)
    {
      OUTLINED_FUNCTION_2_34();
    }

    v16 = v0[37];
    v18 = v0[35];
    v17 = v0[36];
    v19 = v0[33];
    v20 = v0[34];
    v21 = v0[32];
    v34 = v0[31];
    v35 = v0[38];
    v37 = v0[30];
    v38 = v0[29];
    v22 = v0[28];
    v36 = v0[27];
    v23 = v0[26];
    sub_1DD63FBE8();
    *v20 = 5;
    (*(v19 + 104))(v20, *MEMORY[0x1E69E7F48], v21);
    v24 = OUTLINED_FUNCTION_7_25();
    MEMORY[0x1E12B1F30](v24);
    (*(v19 + 8))(v20, v21);
    v25 = *(v17 + 8);
    v25(v16, v18);
    v0[21] = sub_1DD47E40C;
    v0[22] = 0;
    v0[17] = MEMORY[0x1E69E9820];
    v0[18] = 1107296256;
    v0[19] = sub_1DD3CBCD0;
    v0[20] = &block_descriptor_7;
    v26 = _Block_copy(v0 + 17);
    sub_1DD63FBA8();
    v0[23] = MEMORY[0x1E69E7CC0];
    sub_1DD47EAB0(&qword_1EE163978, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFE8, &qword_1DD64F0F0);
    sub_1DD3CBFCC(&qword_1EE1638E0, &qword_1ECCDBFE8, &qword_1DD64F0F0);
    sub_1DD640718();
    MEMORY[0x1E12B2750](v35, v34, v22, v26);
    _Block_release(v26);
    (*(v36 + 8))(v22, v23);
    (*(v37 + 8))(v34, v38);
    v25(v35, v18);
  }

  v28 = v0[37];
  v27 = v0[38];
  v29 = v0[34];
  v30 = v0[31];
  v31 = v0[28];

  v32 = v0[1];

  return v32();
}

uint64_t sub_1DD47E40C()
{
  if (qword_1EE166108 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F088);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "DASActivity: terminating the process", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  return MEMORY[0x1EEE75030]();
}

id sub_1DD47E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DD63FDA8();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DD47E600;
  v13[3] = &block_descriptor_4;
  v10 = _Block_copy(v13);

  v11 = [v5 registerForTaskWithIdentifier:v9 usingQueue:a3 launchHandler:v10];

  _Block_release(v10);

  return v11;
}

void sub_1DD47E600(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1DD47E690()
{
  v1 = sub_1DD63FDA8();
  v2 = [v0 deregisterTaskWithIdentifier_];

  return v2;
}

id sub_1DD47E6F8(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ([v1 submitTaskRequest:a1 error:v5])
  {
    result = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_1DD63CD98();

    result = swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1DD47E7C8()
{
  v1 = sub_1DD63FDA8();
  v2 = [v0 taskRequestForIdentifier_];

  return v2;
}

id sub_1DD47E838()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DD63FDA8();
  v6[0] = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1DD63CD98();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD47E92C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DD47E96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD47E9F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[19];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD3B5438;

  return sub_1DD47DE04(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1DD47EAB0(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL OUTLINED_FUNCTION_10_25(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{

  return sub_1DD47D50C(v27, &a27);
}

void OUTLINED_FUNCTION_12_20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_13_20()
{
}

uint64_t sub_1DD47EB70@<X0>(int a1@<W0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (qword_1EE1659D0 != -1)
  {
    swift_once();
  }

  if (sub_1DD47ECE0(a1, qword_1EE1659D8))
  {

    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_13:

    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
    return result;
  }

  v12 = sub_1DD4055B0();
  result = sqlite3_errmsg(v12);
  if (result)
  {
    v7 = sub_1DD63FF68();
    v8 = v14;
    if (a2)
    {

      v9 = sub_1DD5D2C8C();
      v10 = v15;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v16 = sub_1DD47F490(a1);
    if (v16 == 92)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v18 = [objc_opt_self() callStackSymbols];
    v11 = sub_1DD640118();

    v6 = v17;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD47ECE0(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = MEMORY[0x1E12B3110](*(a2 + 40), a1, 4);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 4 * v7) != a1);
  }

  return v2;
}

uint64_t sub_1DD47ED70()
{
  OUTLINED_FUNCTION_14_1();
  v2 = sub_1DD63F8B8();
  v3 = OUTLINED_FUNCTION_6_28(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_37();
  if (!v6)
  {
    return 0;
  }

  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_2_35();
  sub_1DD47FD3C(v8, v9);
  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_0_55();
  do
  {
    OUTLINED_FUNCTION_3_32(v10);
    if (!v11)
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_4_29();
    v13(v12);
    OUTLINED_FUNCTION_2_35();
    sub_1DD47FD3C(&qword_1ECCDD278, v14);
    OUTLINED_FUNCTION_7_26();
    v15 = OUTLINED_FUNCTION_10_26();
    v16(v15);
    v10 = v0 + 1;
  }

  while ((v7 & 1) == 0);
  return v1;
}

BOOL sub_1DD47EEBC(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD640E78();
  OUTLINED_FUNCTION_0_55();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = sub_1DD640CD8();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t sub_1DD47EFA0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_1();
  v4 = *(v3 + 40);
  sub_1DD63FDD8();
  sub_1DD640E28();
  sub_1DD63FD28();
  v5 = sub_1DD640E78();

  OUTLINED_FUNCTION_0_55();
  v7 = ~v6;
  do
  {
    v8 = v5 & v7;
    v9 = (1 << (v5 & v7)) & *(v2 + 56 + (((v5 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = *(*(v2 + 48) + 8 * v8);
    v12 = sub_1DD63FDD8();
    v14 = v13;
    if (v12 == sub_1DD63FDD8() && v14 == v15)
    {

      return 1;
    }

    v17 = sub_1DD640CD8();

    v5 = v8 + 1;
  }

  while ((v17 & 1) == 0);
  return v10;
}

uint64_t sub_1DD47F0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a5[2])
  {
    return 0;
  }

  v10 = a5[5];
  sub_1DD640E28();
  sub_1DD63FD28();
  if (a4)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  sub_1DD640E78();
  OUTLINED_FUNCTION_0_55();
  v14 = v13 & ~v12;
  if (((*(a5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v12;
  while (1)
  {
    v16 = (a5[6] + 32 * v14);
    v18 = v16[2];
    v17 = v16[3];
    v19 = *v16 == a1 && v16[1] == a2;
    if (!v19 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_24;
    }

    if (!v17)
    {
      break;
    }

    if (a4)
    {
      v20 = v18 == a3 && v17 == a4;
      if (v20 || (sub_1DD640CD8() & 1) != 0)
      {
        return 1;
      }
    }

    else
    {
    }

LABEL_24:
    v14 = (v14 + 1) & v15;
    if (((*(a5 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  if (a4)
  {
    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_1DD47F270(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    OUTLINED_FUNCTION_14_1();
    v6 = *(v5 + 40);
    sub_1DD640E28();
    MEMORY[0x1E12B3140](v3);
    v7 = sub_1DD640E78();
    v8 = ~(-1 << *(v2 + 32));
    do
    {
      v9 = v7 & v8;
      v10 = (1 << (v7 & v8)) & *(v2 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
      v4 = v10 != 0;
      if (!v10)
      {
        break;
      }

      v7 = v9 + 1;
    }

    while (*(*(v2 + 48) + 8 * v9) != v3);
  }

  return v4;
}

uint64_t sub_1DD47F31C()
{
  OUTLINED_FUNCTION_14_1();
  v2 = sub_1DD63EA08();
  v3 = OUTLINED_FUNCTION_6_28(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_37();
  if (!v6)
  {
    return 0;
  }

  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_1_42();
  sub_1DD47FD3C(v8, v9);
  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_0_55();
  do
  {
    OUTLINED_FUNCTION_3_32(v10);
    if (!v11)
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_4_29();
    v13(v12);
    OUTLINED_FUNCTION_1_42();
    sub_1DD47FD3C(&qword_1ECCDD288, v14);
    OUTLINED_FUNCTION_7_26();
    v15 = OUTLINED_FUNCTION_10_26();
    v16(v15);
    v10 = v0 + 1;
  }

  while ((v7 & 1) == 0);
  return v1;
}

uint64_t sub_1DD47F490(int a1)
{
  if (!v2 & v1)
  {
    switch(a1)
    {
      case 100:
        return 29;
      case 101:
        return 30;
      case 283:
        return 40;
      case 284:
        return 41;
      case 539:
        return 51;
      case 769:
        return 52;
      case 776:
        return 53;
      case 778:
        return 54;
      case 782:
        return 55;
      case 787:
        return 56;
      case 1032:
        return 57;
      case 1034:
        return 58;
      case 1038:
        return 59;
      case 1043:
        return 60;
      case 1288:
        return 61;
      case 1290:
        return 62;
      case 1294:
        return 63;
      case 1299:
        return 64;
      case 1544:
        return 65;
      case 1546:
        return 66;
      case 1555:
        return 67;
      case 1802:
        return 68;
      case 1811:
        return 69;
      case 2058:
        return 70;
      case 2067:
        return 71;
      case 2314:
        return 72;
      case 2323:
        return 73;
      case 2570:
        return 74;
      case 2579:
        return 75;
      case 2826:
        return 76;
      case 3082:
        return 77;
      case 3338:
        return 78;
      case 3594:
        return 79;
      case 3850:
        return 80;
      case 4106:
        return 81;
      case 4362:
        return 82;
      case 4618:
        return 83;
      case 4874:
        return 84;
      case 5130:
        return 85;
      case 5386:
        return 86;
      case 5642:
        return 87;
      case 5898:
        return 88;
      case 6154:
        return 89;
      case 6410:
        return 90;
      case 6666:
        return 91;
      default:
        return 92;
    }
  }

  else
  {
    v3 = 0;
    result = 11;
    switch(a1)
    {
      case 0:
        goto LABEL_117;
      case 1:
        v3 = 1;
        goto LABEL_117;
      case 2:
        v3 = 2;
        goto LABEL_117;
      case 3:
        v3 = 3;
        goto LABEL_117;
      case 4:
        v3 = 4;
        goto LABEL_117;
      case 5:
        v3 = 5;
        goto LABEL_117;
      case 6:
        v3 = 6;
        goto LABEL_117;
      case 7:
        v3 = 7;
        goto LABEL_117;
      case 8:
        v3 = 8;
        goto LABEL_117;
      case 9:
        v3 = 9;
        goto LABEL_117;
      case 10:
        v3 = 10;
LABEL_117:
        result = v3;
        break;
      case 11:
        return result;
      case 12:
        result = 12;
        break;
      case 13:
        result = 13;
        break;
      case 14:
        result = 14;
        break;
      case 15:
        result = 15;
        break;
      case 16:
        result = 16;
        break;
      case 17:
        result = 17;
        break;
      case 18:
        result = 18;
        break;
      case 19:
        result = 19;
        break;
      case 20:
        result = 20;
        break;
      case 21:
        result = 21;
        break;
      case 22:
        result = 22;
        break;
      case 23:
        result = 23;
        break;
      case 24:
        result = 24;
        break;
      case 25:
        result = 25;
        break;
      case 26:
        result = 26;
        break;
      case 27:
        result = 27;
        break;
      case 28:
        result = 28;
        break;
      default:
        JUMPOUT(0);
    }
  }

  return result;
}

uint64_t sub_1DD47F990(uint64_t a1)
{
  v2 = sub_1DD47FC58();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DD47F9CC(uint64_t a1)
{
  v2 = sub_1DD47FC58();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DD47FA08()
{
  v1 = *(v0 + 4);
  if (v1)
  {
    v2 = *(v0 + 3);
    v3 = 0xE000000000000000;
    sub_1DD6408D8();
    v5 = *(v0 + 1);
    v4 = *(v0 + 2);
    if (v4)
    {
      v6 = *(v0 + 1);
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      v3 = *(v0 + 2);
    }

    MEMORY[0x1E12B2260](v6, v3);

    MEMORY[0x1E12B2260](10272, 0xE200000000000000);
    MEMORY[0x1E12B2260](v2, v1);
    v7 = 0x3A65646F63282029;
    v8 = 0xE900000000000020;
  }

  else
  {
    v9 = *(v0 + 2);
    if (v9)
    {
      v10 = *(v0 + 1);
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = *(v0 + 2);
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    MEMORY[0x1E12B2260](v10, v11);

    v7 = 0x203A65646F632820;
    v8 = 0xE800000000000000;
  }

  MEMORY[0x1E12B2260](v7, v8);
  v13 = *v0;
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DD47FB84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD270, &qword_1DD64F1A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  v2 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1DD63FDD8();
  *(inited + 40) = v3;
  v5 = *(v0 + 8);
  v4 = *(v0 + 16);
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (!v4)
  {
    v5 = 0;
  }

  v6 = 0xE000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v6;

  return sub_1DD63FC88();
}

unint64_t sub_1DD47FC58()
{
  result = qword_1ECCDD268;
  if (!qword_1ECCDD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD268);
  }

  return result;
}

uint64_t sub_1DD47FCE4@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD47F490(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD47FD10@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1DD47FCAC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DD47FD3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ResultCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xA5)
  {
    if (a2 + 91 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 91) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 92;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5C;
  v5 = v6 - 92;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResultCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 91 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 91) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xA5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xA4)
  {
    v6 = ((a2 - 165) >> 8) + 1;
    *result = a2 + 91;
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
          *result = a2 + 91;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD47FEE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DD47FF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD47FF88()
{
  result = qword_1ECCDD290;
  if (!qword_1ECCDD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD290);
  }

  return result;
}

BOOL sub_1DD480018()
{
  v0 = sub_1DD63D2B8();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD63D188();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  sub_1DD63D1A8();
  (*(v11 + 104))(v16, *MEMORY[0x1E6969868], v8);
  v19 = sub_1DD63D178();
  v20 = *(v11 + 8);
  v20(v16, v8);
  v20(v18, v8);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  (*(v3 + 104))(v7, *MEMORY[0x1E6969A68], v0);
  v21 = sub_1DD63D2C8();
  (*(v3 + 8))(v7, v0);
  return (v21 & 3) == 0 && v21 % 100 || v21 % 400 == 0;
}

uint64_t sub_1DD480258()
{
  result = sub_1DD63CF48();
  v2 = round(v1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DD4802B8()
{
  v0 = sub_1DD63D078();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D068();
  v5 = sub_1DD480258();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1DD480384()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD298, &qword_1DD64F418);
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v84 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  v23 = sub_1DD63E1B8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B8, &qword_1DD64F438);
  OUTLINED_FUNCTION_3(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2C0, &qword_1DD64F440);
  v34 = OUTLINED_FUNCTION_3(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v84 - v40;
  result = sub_1DD63E068();
  if ((v43 & 1) == 0 && __OFADD__(result++, 1))
  {
    __break(1u);
    return result;
  }

  v88 = v11;
  v89 = v43;
  v90 = result;
  v91 = v5;
  sub_1DD63E038();
  v45 = sub_1DD63E018();
  OUTLINED_FUNCTION_8(v41, 1, v45);
  if (v59)
  {
    sub_1DD417838(v41, &qword_1ECCDD2C0, &qword_1DD64F440);
    v46 = 0;
    v47 = v91;
    v48 = v93;
LABEL_11:
    v57 = v92;
    goto LABEL_17;
  }

  v86 = v24;
  v87 = v23;
  v49 = sub_1DD63DFF8();
  v51 = v50;
  OUTLINED_FUNCTION_72(v45);
  v53 = *(v52 + 8);
  v53(v41, v45);
  if (!v51)
  {
    v46 = 0;
    v47 = v91;
    v48 = v93;
    v24 = v86;
    v23 = v87;
    goto LABEL_11;
  }

  v85 = v49;
  sub_1DD63E038();
  OUTLINED_FUNCTION_8(v38, 1, v45);
  if (v59)
  {
    v54 = &qword_1ECCDD2C0;
    v55 = &qword_1DD64F440;
    v56 = v38;
LABEL_15:
    sub_1DD417838(v56, v54, v55);
    v61 = 12;
    goto LABEL_16;
  }

  sub_1DD63E008();
  v53(v38, v45);
  v58 = sub_1DD63DFB8();
  OUTLINED_FUNCTION_8(v32, 1, v58);
  if (v59)
  {
    v54 = &qword_1ECCDD2B8;
    v55 = &qword_1DD64F438;
    v56 = v32;
    goto LABEL_15;
  }

  sub_1DD3DE1D0(&v95);
  OUTLINED_FUNCTION_72(v58);
  (*(v60 + 8))(v32, v58);
  v61 = v95;
LABEL_16:
  v47 = v91;
  v57 = v92;
  v48 = v93;
  v24 = v86;
  v94 = v61;
  type metadata accessor for DateTime.Date.Holiday();
  swift_allocObject();
  v46 = DateTime.Date.Holiday.init(with:name:calendarSystem:)(v85, v51, v85, v51, &v94);

  v23 = v87;
LABEL_17:
  sub_1DD63E098();
  OUTLINED_FUNCTION_8(v22, 1, v23);
  if (v59)
  {
    sub_1DD417838(v22, &qword_1ECCDD2B0, &qword_1DD64F430);
  }

  else
  {
    (*(v24 + 32))(v57, v22, v23);
    v62 = sub_1DD567F90();
    if (v62)
    {
      (*(v24 + 8))(v57, v23);
    }

    else
    {
      TerminalElement.Qualifier.toQualifier()(&v98);
      (*(v24 + 8))(v57, v23);
      if (v98 != 20)
      {
        v97 = 38;
        v96 = v98;
        type metadata accessor for DateTime.DateTimeRange();
        swift_allocObject();
        v63 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, 0, 0, 0, 0, &v97, &v96);

        goto LABEL_24;
      }
    }
  }

  v63 = 0;
LABEL_24:
  v64 = sub_1DD63E028();
  LODWORD(v92) = v65;
  v66 = sub_1DD63E058();
  LODWORD(v68) = v67;
  sub_1DD480B8C(v48);
  v69 = sub_1DD63DFD8();
  OUTLINED_FUNCTION_8(v48, 1, v69);
  if (v59)
  {
    sub_1DD417838(v48, &qword_1ECCDD2A8, &qword_1DD64F428);
    v70 = 7;
  }

  else
  {
    LODWORD(v91) = v68;
    v68 = v46;
    v71 = v66;
    v72 = v64;
    v73 = v88;
    sub_1DD63DFC8();
    v74 = sub_1DD63E118();
    OUTLINED_FUNCTION_8(v73, 1, v74);
    if (v75)
    {
      sub_1DD417838(v73, &qword_1ECCDD2A0, &qword_1DD64F420);
      v104 = 7;
    }

    else
    {
      sub_1DD547BD8();
      OUTLINED_FUNCTION_72(v74);
      (*(v76 + 8))(v73, v74);
    }

    OUTLINED_FUNCTION_72(v69);
    (*(v77 + 8))(v93, v69);
    v70 = v104;
    v64 = v72;
    v66 = v71;
    v46 = v68;
    LOBYTE(v68) = v91;
  }

  v103 = v70;
  v102 = 12;
  sub_1DD63E088();
  v78 = sub_1DD63E198();
  OUTLINED_FUNCTION_8(v47, 1, v78);
  if (v59)
  {
    sub_1DD417838(v47, &qword_1ECCDD298, &qword_1DD64F418);
    v80 = 7;
  }

  else
  {
    sub_1DD4ACD84(&v101);
    OUTLINED_FUNCTION_72(v78);
    (*(v79 + 8))(v47, v78);
    v80 = v101;
  }

  v100 = v80;
  v81 = sub_1DD63E048();
  v83 = v82;

  v99 = 7;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  return DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v64, v92 & 1, v90, v89 & 1, v66, v68 & 1, &v103, v46, &v102, 0, 1, &v100, v81, v83 & 1, &v99, v63);
}

uint64_t sub_1DD480B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(sub_1DD63E078() + 16);

  if (v2 == 1)
  {
    result = sub_1DD63E078();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = sub_1DD63DFD8();
    OUTLINED_FUNCTION_72(v5);
    (*(v6 + 16))(a1, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    v7 = a1;
    v8 = 0;
    v9 = v5;
  }

  else
  {
    v9 = sub_1DD63DFD8();
    v7 = a1;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

BOOL sub_1DD480C68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2C0, &qword_1DD64F440);
  OUTLINED_FUNCTION_3(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD298, &qword_1DD64F418);
  OUTLINED_FUNCTION_3(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40[-v22];
  sub_1DD63E028();
  if ((v24 & 1) == 0)
  {
    return 1;
  }

  sub_1DD63E088();
  v25 = sub_1DD63E198();
  v26 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v25);
  sub_1DD417838(v23, &qword_1ECCDD298, &qword_1DD64F418);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD63E068();
    if ((v28 & 1) == 0)
    {
      return 1;
    }

    sub_1DD63E058();
    if ((v29 & 1) == 0)
    {
      return 1;
    }

    sub_1DD63E038();
    v30 = sub_1DD63E018();
    OUTLINED_FUNCTION_8(v17, 1, v30);
    if (v37)
    {
      sub_1DD417838(v17, &qword_1ECCDD2C0, &qword_1DD64F440);
    }

    else
    {
      sub_1DD63DFF8();
      v32 = v31;
      OUTLINED_FUNCTION_72(v30);
      (*(v33 + 8))(v17, v30);
      if (v32)
      {

        return 1;
      }
    }

    sub_1DD480B8C(v11);
    v35 = sub_1DD63DFD8();
    OUTLINED_FUNCTION_8(v11, 1, v35);
    if (v37)
    {
      sub_1DD417838(v11, &qword_1ECCDD2A8, &qword_1DD64F428);
      return 0;
    }

    else
    {
      sub_1DD63DFC8();
      v36 = sub_1DD63E118();
      OUTLINED_FUNCTION_8(v5, 1, v36);
      if (v37)
      {
        sub_1DD417838(v5, &qword_1ECCDD2A0, &qword_1DD64F420);
        v41 = 7;
      }

      else
      {
        sub_1DD547BD8();
        OUTLINED_FUNCTION_72(v36);
        (*(v38 + 8))(v5, v36);
      }

      OUTLINED_FUNCTION_72(v35);
      (*(v39 + 8))(v11, v35);
      return v41 != 7;
    }
  }

  return v26;
}

uint64_t DateTime.Date.__allocating_init(withDay:month:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withDay:month:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.__allocating_init(withHoliday:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withHoliday:)(v1);
  return v0;
}

uint64_t DateTime.Date.__allocating_init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v40) = a6;
  OUTLINED_FUNCTION_24_10();
  HIDWORD(v40) = v17;
  HIDWORD(v36) = a11;
  OUTLINED_FUNCTION_2_36();
  v18 = swift_allocObject();
  v19 = *a7;
  v20 = *a9;
  v21 = *a12;
  v22 = OUTLINED_FUNCTION_16_20(v18);
  *(v22 + 48) = a5;
  v24 = OUTLINED_FUNCTION_20_15(v22, v23, a13, v36, a5, v40, a16, a8);
  *(v24 + 80) = a10;
  result = OUTLINED_FUNCTION_29_10(v24, v25, v26, v27, v28, v29, v30, v31, v34, v37, v38);
  *(result + 96) = v35;
  *(result + 104) = v41 & 1;
  *(result + 105) = v33;
  *(result + 112) = v42;
  return result;
}

uint64_t DateTime.Date.day.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t DateTime.Date.month.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t DateTime.Date.year.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t DateTime.Date.weekOfYear.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t DateTime.Date.dayOfWeekOrdinal.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_1DD481178()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030) - 8) + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290) - 8) + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = sub_1DD63D328();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_1DD63CB68();
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  sub_1DD63CAA8();
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  sub_1DD63CAC8();
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  sub_1DD63CA38();
  v17 = *(v0 + 89);
  if (v17 != 7)
  {
    v18 = qword_1DD64F740[v17];
  }

  sub_1DD63CB58();
  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  return sub_1DD63C9D8();
}

uint64_t DateTime.Date.__allocating_init(withDay:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withDay:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withDay:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1793;
  *(v1 + 64) = 0;
  *(v1 + 72) = 12;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.init(withDay:month:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1793;
  *(v2 + 64) = 0;
  *(v2 + 72) = 12;
  *(v2 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDay:monthOfYear:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withDay:monthOfYear:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.init(withDay:monthOfYear:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 72) = v3;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1793;
  *(v2 + 64) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDay:monthOfYear:year:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_30_0();
  DateTime.Date.init(withDay:monthOfYear:year:)(v1, v2, v3);
  return v0;
}

uint64_t DateTime.Date.init(withDay:monthOfYear:year:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 72) = v4;
  *(v3 + 48) = a3;
  *(v3 + 56) = 1792;
  *(v3 + 64) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withYear:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withYear:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withYear:)(uint64_t a1)
{
  *(v1 + 48) = a1;
  *(v1 + 56) = 1792;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 72) = 12;
  *(v1 + 64) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDay:month:year:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_30_0();
  DateTime.Date.init(withDay:month:year:)(v1, v2, v3);
  return v0;
}

uint64_t DateTime.Date.init(withDay:month:year:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 48) = a3;
  *(v3 + 56) = 1792;
  *(v3 + 64) = 0;
  *(v3 + 72) = 12;
  *(v3 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withMonth:year:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withMonth:year:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.init(withMonth:year:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = 0;
  *(v2 + 48) = a2;
  *(v2 + 56) = 1792;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 12;
  *(v2 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDefinedValue:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withDefinedValue:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withDefinedValue:)(_BYTE *a1)
{
  *(v1 + 57) = *a1;
  OUTLINED_FUNCTION_18_17();
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = 12;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.init(withHoliday:)(uint64_t a1)
{
  *(v1 + 64) = a1;
  OUTLINED_FUNCTION_18_17();
  *(v1 + 56) = 1793;
  *(v1 + 72) = 12;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDayOfWeek:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withDayOfWeek:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withDayOfWeek:)(_BYTE *a1)
{
  *(v1 + 89) = *a1;
  OUTLINED_FUNCTION_18_17();
  *(v1 + 56) = 1793;
  *(v1 + 64) = 0;
  *(v1 + 72) = 12;
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1793;
  return OUTLINED_FUNCTION_1_43();
}

uint64_t DateTime.Date.__allocating_init(withDayOfWeek:dayOfWeekOrdinal:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withDayOfWeek:dayOfWeekOrdinal:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.init(withDayOfWeek:dayOfWeekOrdinal:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 89) = *a1;
  *(v2 + 96) = a2;
  *(v2 + 104) = 1792;
  OUTLINED_FUNCTION_18_17();
  *(v2 + 56) = 1793;
  *(v2 + 64) = 0;
  *(v2 + 72) = 12;
  *(v2 + 80) = 0;
  *(v2 + 88) = v3;
  return OUTLINED_FUNCTION_1_43();
}

uint64_t DateTime.Date.__allocating_init(withMonthOfYear:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_15_2();
  DateTime.Date.init(withMonthOfYear:)(v1);
  return v0;
}

uint64_t DateTime.Date.init(withMonthOfYear:)(_BYTE *a1)
{
  *(v1 + 72) = *a1;
  OUTLINED_FUNCTION_18_17();
  *(v1 + 56) = 1793;
  *(v1 + 64) = 0;
  *(v1 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withMonthOfYear:year:)()
{
  OUTLINED_FUNCTION_2_36();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_11_24();
  DateTime.Date.init(withMonthOfYear:year:)(v1, v2);
  return v0;
}

uint64_t DateTime.Date.init(withMonthOfYear:year:)(_BYTE *a1, uint64_t a2)
{
  *(v2 + 72) = *a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = 1792;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 64) = 0;
  *(v2 + 80) = 0;
  return OUTLINED_FUNCTION_0_56(1793);
}

uint64_t DateTime.Date.__allocating_init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 *a12, uint64_t a13)
{
  LODWORD(v38) = a6;
  OUTLINED_FUNCTION_24_10();
  HIDWORD(v38) = v14;
  HIDWORD(v33) = a11;
  OUTLINED_FUNCTION_2_36();
  v15 = swift_allocObject();
  v16 = *a7;
  v17 = *a9;
  v18 = *a12;
  v19 = OUTLINED_FUNCTION_16_20(v15);
  *(v19 + 48) = a5;
  v21 = OUTLINED_FUNCTION_20_15(v19, v20, v31, v33, a13, a5, v38, a8);
  *(v21 + 80) = a10;
  result = OUTLINED_FUNCTION_29_10(v21, v22, v23, v24, v25, v26, v27, v28, v32, v34, v35);
  *(result + 96) = v36;
  *(result + 104) = v39 & 1;
  *(result + 105) = v30;
  *(result + 112) = 0;
  return result;
}

uint64_t DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char *a7, uint64_t a8, char *a9, uint64_t a10, char a11, char *a12, uint64_t a13, char a14, char *a15)
{
  v16 = *a7;
  v17 = *a9;
  v18 = *a12;
  v19 = *a15;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2 & 1;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4 & 1;
  *(v15 + 48) = a5;
  *(v15 + 56) = a6 & 1;
  *(v15 + 57) = v16;
  *(v15 + 64) = a8;
  *(v15 + 72) = v17;
  *(v15 + 80) = a10;
  *(v15 + 88) = a11 & 1;
  *(v15 + 89) = v18;
  *(v15 + 96) = a13;
  *(v15 + 104) = a14 & 1;
  *(v15 + 105) = v19;
  return OUTLINED_FUNCTION_1_43();
}

uint64_t DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char *a7, uint64_t a8, char *a9, uint64_t a10, char a11, char *a12, uint64_t a13, char a14, char *a15, uint64_t a16)
{
  v17 = *a7;
  v18 = *a9;
  v19 = *a12;
  v20 = *a15;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2 & 1;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4 & 1;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6 & 1;
  *(v16 + 57) = v17;
  *(v16 + 64) = a8;
  *(v16 + 72) = v18;
  *(v16 + 80) = a10;
  *(v16 + 88) = a11 & 1;
  *(v16 + 89) = v19;
  *(v16 + 96) = a13;
  *(v16 + 104) = a14 & 1;
  *(v16 + 105) = v20;
  *(v16 + 112) = a16;
  return v16;
}

uint64_t sub_1DD481A74()
{
  if (*(v0 + 40) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v1 = *(v0 + 32);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v1);
  }

  if (*(v0 + 24) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v2 = *(v0 + 16);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v2);
  }

  if (*(v0 + 56) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v3 = *(v0 + 48);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v3);
  }

  if (*(v0 + 88) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v4 = *(v0 + 80);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v4);
  }

  v5 = *(v0 + 105);
  if (v5 == 7)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v5);
  }

  v6 = *(v0 + 89);
  if (v6 == 7)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v6);
  }

  if (*(v0 + 104) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v7 = *(v0 + 96);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v7);
  }

  v8 = *(v0 + 72);
  if (v8 == 12)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v8);
  }

  v9 = *(v0 + 57);
  if (v9 == 7)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v9);
  }

  if (*(v0 + 64))
  {
    OUTLINED_FUNCTION_64();
    sub_1DD4C4904();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (!*(v0 + 112))
  {
    return OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_64();
  return sub_1DD49CDC8();
}

BOOL static DateTime.Date.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a2 + 32);
    v3 = *(a1 + 32);
    OUTLINED_FUNCTION_26_14();
    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a1 + 16);
    OUTLINED_FUNCTION_26_14();
    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a2 + 48);
    v9 = *(a1 + 48);
    OUTLINED_FUNCTION_26_14();
    if (v10)
    {
      return 0;
    }
  }

  if (*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    v11 = *(a2 + 80);
    v12 = *(a1 + 80);
    OUTLINED_FUNCTION_26_14();
    if (v13)
    {
      return 0;
    }
  }

  v14 = *(a1 + 105);
  v15 = *(a2 + 105);
  if (v14 == 7)
  {
    if (v15 != 7)
    {
      return 0;
    }
  }

  else if (v14 != v15)
  {
    return 0;
  }

  v16 = *(a1 + 89);
  v17 = *(a2 + 89);
  if (v16 == 7)
  {
    if (v17 != 7)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  if (*(a1 + 104))
  {
    if (!*(a2 + 104))
    {
      return 0;
    }
  }

  else
  {
    v18 = *(a2 + 96);
    v19 = *(a1 + 96);
    OUTLINED_FUNCTION_26_14();
    if (v20)
    {
      return 0;
    }
  }

  v21 = *(a1 + 72);
  v22 = *(a2 + 72);
  if (v21 != 12)
  {
    if (v21 == v22)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (v22 != 12)
  {
    return 0;
  }

LABEL_33:
  v23 = *(a1 + 57);
  v24 = *(a2 + 57);
  if (v23 == 7)
  {
    if (v24 != 7)
    {
      return 0;
    }
  }

  else if (v23 != v24)
  {
    return 0;
  }

  v26 = *(a1 + 112);
  v27 = *(a2 + 112);
  result = (v26 | v27) == 0;
  if (v26)
  {
    if (v27)
    {
      type metadata accessor for DateTime.DateTimeRange();

      OUTLINED_FUNCTION_1_8();
      v28 = static DateTime.DateTimeRange.== infix(_:_:)();

      return v28;
    }
  }

  return result;
}

BOOL static DateTime.Date.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) & 1) != 0 || (*(a2 + 56))
  {
    return 0;
  }

  v3 = *(a1 + 48);
  v4 = *(a2 + 48);
  if (v3 < v4)
  {
    return 1;
  }

  if (v3 != v4 || (*(a1 + 40) & 1) != 0 || (*(a2 + 40) & 1) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 != v6 || (*(a1 + 24) & 1) != 0 || (*(a2 + 24) & 1) != 0)
  {
    return 0;
  }

  return *(a1 + 16) < *(a2 + 16);
}

BOOL static DateTime.Date.<= infix(_:_:)()
{
  type metadata accessor for DateTime.Date();
  v0 = OUTLINED_FUNCTION_1_8();
  if (static DateTime.Date.< infix(_:_:)(v0, v1))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_1_8();
  return static DateTime.Date.== infix(_:_:)(v3, v4);
}

BOOL static DateTime.Date.> infix(_:_:)()
{
  type metadata accessor for DateTime.Date();
  OUTLINED_FUNCTION_1_8();
  return !static DateTime.Date.<= infix(_:_:)();
}

BOOL static DateTime.Date.>= infix(_:_:)()
{
  type metadata accessor for DateTime.Date();
  v0 = OUTLINED_FUNCTION_1_8();
  return !static DateTime.Date.< infix(_:_:)(v0, v1);
}

uint64_t sub_1DD481F00()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    v11 = *(v0 + 48);
    v1 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v1);

    sub_1DD3BE2A4();
    if (*(v2 + 16) >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    v12 = *(v0 + 32);
    v3 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v3);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if ((*(v0 + 24) & 1) == 0)
  {
    v13 = *(v0 + 16);
    v5 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v5);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 89) != 7)
  {
    MEMORY[0x1E12B2260](0x656557664F796164, 0xEA00000000003D6BLL);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 72) != 12)
  {
    MEMORY[0x1E12B2260](0x59664F68746E6F6DLL, 0xEC0000003D726165);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 57) != 7)
  {
    MEMORY[0x1E12B2260](0x5664656E69666564, 0xED00003D65756C61);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 64))
  {

    v6 = sub_1DD4C4A34();
    MEMORY[0x1E12B2260](v6);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v4)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v7 = sub_1DD63FD58();
  v9 = v8;

  MEMORY[0x1E12B2260](v7, v9);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x5B65746144;
}

void sub_1DD48236C()
{
  v1 = v0;
  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1ECD0DDC0);
  OUTLINED_FUNCTION_15_2();

  oslog = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240704;
    *(v4 + 4) = (v1[24] & 1) == 0;
    *(v4 + 8) = 1026;
    *(v4 + 10) = (v1[40] & 1) == 0;
    *(v4 + 14) = 1026;
    *(v4 + 16) = (v1[56] & 1) == 0;

    _os_log_impl(&dword_1DD38D000, oslog, v3, "day present: %{BOOL,public}d, month present: %{BOOL,public}d, year present: %{BOOL,public}d", v4, 0x14u);
    MEMORY[0x1E12B3DA0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD4824D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1918985593 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x796164696C6F68 && a2 == 0xE700000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x59664F68746E6F6DLL && a2 == 0xEB00000000726165;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6559664F6B656577 && a2 == 0xEA00000000007261;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656557664F796164 && a2 == 0xE90000000000006BLL;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001DD66D320 == a2;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7261646E656C6163 && a2 == 0xEB00000000617245;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E6972727563636FLL && a2 == 0xEB000000006E4967)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1DD640CD8();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD48284C(char a1)
{
  result = 7954788;
  switch(a1)
  {
    case 1:
      result = 0x68746E6F6DLL;
      break;
    case 2:
      result = 1918985593;
      break;
    case 3:
      result = 0x5664656E69666564;
      break;
    case 4:
      result = 0x796164696C6F68;
      break;
    case 5:
      result = 0x59664F68746E6F6DLL;
      break;
    case 6:
      result = 0x6559664F6B656577;
      break;
    case 7:
      result = 0x656557664F796164;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x7261646E656C6163;
      break;
    case 10:
      result = 0x6E6972727563636FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD482998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4824D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4829C0(uint64_t a1)
{
  v2 = sub_1DD48335C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4829FC(uint64_t a1)
{
  v2 = sub_1DD48335C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.Date.deinit()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 112);

  return v0;
}

uint64_t DateTime.Date.__deallocating_deinit()
{
  DateTime.Date.deinit();
  OUTLINED_FUNCTION_2_36();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD482A8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2C8, &qword_1DD64F450);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD48335C();
  sub_1DD640EF8();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  LOBYTE(v29) = 0;
  OUTLINED_FUNCTION_32();
  sub_1DD640BF8();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    OUTLINED_FUNCTION_10_27(1);
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    OUTLINED_FUNCTION_10_27(2);
    LOBYTE(v29) = *(v3 + 57);
    v30 = 3;
    sub_1DD4833B0();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    v29 = *(v3 + 64);
    v30 = 4;
    type metadata accessor for DateTime.Date.Holiday();
    OUTLINED_FUNCTION_13_21();
    sub_1DD483650(v20, 255, v21);
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    LOBYTE(v29) = *(v3 + 72);
    v30 = 5;
    sub_1DD483404();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    v22 = *(v3 + 80);
    v23 = *(v3 + 88);
    OUTLINED_FUNCTION_10_27(6);
    LOBYTE(v29) = *(v3 + 89);
    v30 = 7;
    sub_1DD483458();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    v24 = *(v3 + 96);
    v25 = *(v3 + 104);
    OUTLINED_FUNCTION_10_27(8);
    LOBYTE(v29) = *(v3 + 105);
    v30 = 9;
    sub_1DD4834AC();
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    v29 = *(v3 + 112);
    v30 = 10;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_14_22();
    sub_1DD483650(v26, 255, v27);
    OUTLINED_FUNCTION_8_24();
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1DD482DA8()
{
  sub_1DD640E28();
  sub_1DD481A74();
  return sub_1DD640E78();
}

uint64_t DateTime.Date.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_36();
  v2 = swift_allocObject();
  DateTime.Date.init(from:)(a1);
  return v2;
}

uint64_t DateTime.Date.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD308, &qword_1DD64F458);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD48335C();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.Date();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v21) = 0;
    *(v1 + 16) = sub_1DD640B08();
    *(v1 + 24) = v9 & 1;
    *(v1 + 32) = OUTLINED_FUNCTION_9_21(1);
    *(v1 + 40) = v10 & 1;
    *(v1 + 48) = OUTLINED_FUNCTION_9_21(2);
    *(v1 + 56) = v11 & 1;
    sub_1DD483500();
    OUTLINED_FUNCTION_6_29();
    *(v1 + 57) = 0;
    type metadata accessor for DateTime.Date.Holiday();
    OUTLINED_FUNCTION_13_21();
    sub_1DD483650(v12, 255, v13);
    OUTLINED_FUNCTION_17_19();
    *(v1 + 64) = v21;
    sub_1DD483554();
    OUTLINED_FUNCTION_6_29();
    *(v1 + 72) = 0;
    *(v1 + 80) = OUTLINED_FUNCTION_9_21(6);
    *(v1 + 88) = v15 & 1;
    sub_1DD4835A8();
    OUTLINED_FUNCTION_6_29();
    *(v1 + 89) = 0;
    *(v1 + 96) = OUTLINED_FUNCTION_9_21(8);
    *(v1 + 104) = v16 & 1;
    sub_1DD4835FC();
    OUTLINED_FUNCTION_6_29();
    *(v1 + 105) = 0;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_14_22();
    sub_1DD483650(v17, 255, v18);
    OUTLINED_FUNCTION_17_19();
    v19 = OUTLINED_FUNCTION_41();
    v20(v19);
    *(v1 + 112) = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD4831D0()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD481A74();
  return sub_1DD640E78();
}

BOOL sub_1DD483258(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.Date.<= infix(_:_:)();
}

BOOL sub_1DD48327C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.Date.>= infix(_:_:)();
}

BOOL sub_1DD4832A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.Date.> infix(_:_:)();
}

uint64_t sub_1DD4832C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.Date.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD48335C()
{
  result = qword_1ECCDD2D0;
  if (!qword_1ECCDD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2D0);
  }

  return result;
}

unint64_t sub_1DD4833B0()
{
  result = qword_1ECCDD2D8;
  if (!qword_1ECCDD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2D8);
  }

  return result;
}

unint64_t sub_1DD483404()
{
  result = qword_1ECCDD2E8;
  if (!qword_1ECCDD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2E8);
  }

  return result;
}

unint64_t sub_1DD483458()
{
  result = qword_1ECCDD2F0;
  if (!qword_1ECCDD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2F0);
  }

  return result;
}

unint64_t sub_1DD4834AC()
{
  result = qword_1ECCDD2F8;
  if (!qword_1ECCDD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD2F8);
  }

  return result;
}

unint64_t sub_1DD483500()
{
  result = qword_1ECCDD310;
  if (!qword_1ECCDD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD310);
  }

  return result;
}

unint64_t sub_1DD483554()
{
  result = qword_1ECCDD320;
  if (!qword_1ECCDD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD320);
  }

  return result;
}

unint64_t sub_1DD4835A8()
{
  result = qword_1ECCDD328;
  if (!qword_1ECCDD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD328);
  }

  return result;
}

unint64_t sub_1DD4835FC()
{
  result = qword_1ECCDD330;
  if (!qword_1ECCDD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD330);
  }

  return result;
}

uint64_t sub_1DD483650(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *_s4DateC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD483A40()
{
  result = qword_1ECCDD348;
  if (!qword_1ECCDD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD348);
  }

  return result;
}

unint64_t sub_1DD483A98()
{
  result = qword_1ECCDD350;
  if (!qword_1ECCDD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD350);
  }

  return result;
}

unint64_t sub_1DD483AF0()
{
  result = qword_1ECCDD358;
  if (!qword_1ECCDD358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD358);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_27@<X0>(char a1@<W8>)
{
  *(v1 - 80) = a1;

  return sub_1DD640BF8();
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  *(result + 88) = a11 & 1;
  *(result + 89) = v11;
  return result;
}

uint64_t sub_1DD483BE4(uint64_t a1)
{
  v2 = sub_1DD63D2B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v44 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCDC3D0, &unk_1DD6461A0);
  sub_1DD3D8B30();
  v8 = sub_1DD63FC88();
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v40 = v3 + 16;
  v37 = v3;
  v43 = v3 + 8;
  v38 = a1;

  v14 = 0;
  v34 = v13;
  v35 = a1 + 56;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = *(v38 + 48);
      v18 = v36;
      v17 = v37;
      v39 = *(v37 + 72);
      v19 = *(v37 + 16);
      v19(v36, v16 + v39 * (__clz(__rbit64(v12)) | (v15 << 6)), v2);
      v19(v44, v18, v2);
      v41 = sub_1DD63CAD8();
      v42 = v20;
      v21 = *(v17 + 8);
      v21(v18, v2);
      swift_isUniquelyReferenced_nonNull_native();
      v45 = v8;
      sub_1DD3FE7FC();
      if (__OFADD__(*(v8 + 16), (v23 & 1) == 0))
      {
        break;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD360, &qword_1DD64F778);
      if (sub_1DD640A08())
      {
        sub_1DD3FE7FC();
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_22;
        }

        v24 = v26;
      }

      v12 &= v12 - 1;
      v8 = v45;
      if (v25)
      {
        OUTLINED_FUNCTION_1_44();
        v21(v44, v2);
      }

      else
      {
        *(v45 + 8 * (v24 >> 6) + 64) |= 1 << v24;
        v28 = v44;
        v19((*(v8 + 48) + v24 * v39), v44, v2);
        OUTLINED_FUNCTION_1_44();
        v21(v28, v2);
        v29 = *(v8 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_21;
        }

        *(v8 + 16) = v31;
      }

      v14 = v15;
      v13 = v34;
      v9 = v35;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return v8;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

void sub_1DD483F74()
{
  sub_1DD63CA28();
  if ((v0 & 1) == 0)
  {
    sub_1DD63CA28();
    if ((v1 & 1) == 0)
    {
      sub_1DD63CA28();
      sub_1DD63CA28();
    }
  }

  sub_1DD63CAB8();
  if ((v2 & 1) == 0)
  {
    sub_1DD63CAB8();
    if ((v3 & 1) == 0)
    {
      sub_1DD63CAB8();
      sub_1DD63CAB8();
    }
  }

  sub_1DD63CA98();
  if ((v4 & 1) == 0)
  {
    sub_1DD63CA98();
    if ((v5 & 1) == 0)
    {
      sub_1DD63CA98();
      sub_1DD63CA98();
    }
  }

  sub_1DD63CB48();
  if ((v6 & 1) == 0)
  {
    sub_1DD63CB48();
    if ((v7 & 1) == 0)
    {
      sub_1DD63CB48();
      sub_1DD63CB48();
    }
  }

  sub_1DD63CA78();
  if ((v8 & 1) == 0)
  {
    sub_1DD63CA78();
    if ((v9 & 1) == 0)
    {
      sub_1DD63CA78();
      sub_1DD63CA78();
    }
  }

  sub_1DD63CAE8();
  if ((v10 & 1) == 0)
  {
    sub_1DD63CAE8();
    if ((v11 & 1) == 0)
    {
      sub_1DD63CAE8();
      sub_1DD63CAE8();
    }
  }

  sub_1DD63CB08();
  if ((v12 & 1) == 0)
  {
    sub_1DD63CB08();
    if ((v13 & 1) == 0)
    {
      sub_1DD63CB08();
      sub_1DD63CB08();
    }
  }

  OUTLINED_FUNCTION_0_57();
}

void sub_1DD4841F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5)
{
  v9 = sub_1DD63D2D8();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  LODWORD(v109) = a2[1];
  HIDWORD(v109) = v17;
  v108 = *(a2 + 1);
  v18 = a2[16];
  LODWORD(v107) = a2[17];
  HIDWORD(v107) = v18;
  LODWORD(a2) = a2[18];
  v20 = *a5;
  if (sub_1DD3CC020(MEMORY[0x1E69E7CC0]))
  {
    sub_1DD56C450(MEMORY[0x1E69E7CC0], v21, v22, v23, v24, v25, v26, v27, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  v123 = v28;
  v29 = *(a1 + 57);
  if (v29 != 7)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD643B80;
    v35 = qword_1DD64F7D0[v29];
    v120 = 0;
    v121 = 0;
    v119 = v35;
    LOBYTE(v122) = 0;
    LOBYTE(v115) = 40;
    type metadata accessor for DateTimeConstraint();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_7_28();
    *(inited + 32) = sub_1DD48DFB4(v36, v37, v38, v39, v40, v41, 1, v42);
    sub_1DD418B8C(inited);
    return;
  }

  v106 = *(a1 + 64);
  if (v106)
  {
    HIDWORD(v103) = a2;
    LODWORD(v104) = a4;
    HIDWORD(v105) = v20;
    v31 = v106[2];
    v30 = v106[3];
    v32 = *(v106 + 48);
    if (v32 == 12)
    {
      v33 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
      swift_beginAccess();
      (*(v12 + 16))(v16, &a3[v33], v9);

      sub_1DD3DE430(v16, &v119);
      if (v119 == 12)
      {
        v32 = 2;
      }

      else
      {
        v32 = v119;
      }
    }

    else
    {
      v43 = v106[3];
    }

    v44 = *(a1 + 112);
    if (v44)
    {
      v45 = *(v44 + 57) << 8;
    }

    else
    {
      v45 = 5120;
    }

    v119 = v31;
    v120 = v30;
    v121 = v45 | v32;
    OUTLINED_FUNCTION_9_22(3);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_0_58();
    a4 = v104;
    v50 = OUTLINED_FUNCTION_1_45(10, v46, v47, v48, v49);
    OUTLINED_FUNCTION_4_30(v50);

    v20 = HIDWORD(v105);
    LOBYTE(a2) = BYTE4(v103);
  }

  v51 = *(a1 + 89);
  if (v51 != 7)
  {
    v52 = *(a1 + 96);
    v53 = *(a1 + 104);
    v119 = qword_1DD64F808[v51];
    v120 = v52;
    v121 = v53;
    LOBYTE(v122) = 2;
    HIBYTE(v118) = v20;
    type metadata accessor for DateTimeConstraint();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_0_58();
    v58 = OUTLINED_FUNCTION_1_45(6, v54, v55, v56, v57);
    OUTLINED_FUNCTION_4_30(v58);
  }

  v59 = *(a1 + 72);
  if (v59 != 12)
  {
    OUTLINED_FUNCTION_2_37((v59 + 1));
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_0_58();
    v64 = OUTLINED_FUNCTION_1_45(9, v60, v61, v62, v63);
    OUTLINED_FUNCTION_4_30(v64);
  }

  v65 = *(a1 + 40);
  if ((v65 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_37(*(a1 + 32));
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_0_58();
    v70 = OUTLINED_FUNCTION_1_45(9, v66, v67, v68, v69);
    OUTLINED_FUNCTION_4_30(v70);
  }

  v71 = *(a1 + 24);
  if ((v71 & 1) == 0)
  {
    OUTLINED_FUNCTION_2_37(*(a1 + 16));
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_0_58();
    v76 = OUTLINED_FUNCTION_1_45(5, v72, v73, v74, v75);
    OUTLINED_FUNCTION_4_30(v76);
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    OUTLINED_FUNCTION_2_37(*(a1 + 48));
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_0_58();
    v81 = OUTLINED_FUNCTION_1_45(11, v77, v78, v79, v80);
    OUTLINED_FUNCTION_4_30(v81);
  }

  v82 = *(a1 + 112);
  if (v82)
  {
    v83 = *(v82 + 56);
    if (v83 == 38)
    {
      v84 = *(v82 + 57);
      if (v84 == 17)
      {
        if (v106 || !v65 || *(a1 + 72) != 12 || (v71 & 1) == 0 || *(a1 + 89) != 7)
        {
          OUTLINED_FUNCTION_3_33();
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_0_58();
          OUTLINED_FUNCTION_7_28();
          goto LABEL_44;
        }

        v120 = 0;
        v121 = 0;
        v119 = 2;
      }

      else
      {
        if (v84 != 19)
        {
          return;
        }

        v119 = 0;
        v120 = 0;
        v121 = 0;
      }

      OUTLINED_FUNCTION_9_22(4);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_0_58();
      v87 = 13;
      v88 = 2;
      v89 = 4;
      v90 = 1;
      v91 = 0;
LABEL_44:
      v102 = sub_1DD48DFB4(v87, v85, v88, v89, v86, v90, 1, v91);
      OUTLINED_FUNCTION_4_30(v102);

      return;
    }

    if (qword_1ECCDB0C0 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v92 = sub_1DD63F9F8();
    __swift_project_value_buffer(v92, qword_1ECD0DDC0);
    v93 = sub_1DD63F9D8();
    v94 = sub_1DD640368();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v104 = v95;
      v106 = swift_slowAlloc();
      v119 = v106;
      *v95 = 136315138;
      HIBYTE(v118) = v83;
      v96 = sub_1DD63FE38();
      HIDWORD(v105) = v20;
      LOBYTE(v95) = a2;
      a2 = a3;
      v98 = a4;
      v99 = sub_1DD39565C(v96, v97, &v119);
      LOBYTE(v20) = BYTE4(v105);

      v100 = v104;
      *(v104 + 1) = v99;
      a4 = v98;
      a3 = a2;
      LOBYTE(a2) = v95;
      _os_log_impl(&dword_1DD38D000, v93, v94, "generating constraints for %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v106);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    HIBYTE(v118) = v83;
    LOBYTE(v119) = BYTE4(v109);
    BYTE1(v119) = v109;
    v120 = v108;
    LOBYTE(v121) = BYTE4(v107);
    BYTE1(v121) = v107;
    BYTE2(v121) = a2;
    BYTE6(v118) = v20;
    v101 = sub_1DD484820(&v118 + 7, a1, &v119, a3, a4, &v118 + 6);
    sub_1DD608750(v101);
  }
}

uint64_t sub_1DD484BF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DD484C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_33()
{
  *(v1 - 120) = 0;
  *(v1 - 112) = 0;
  *(v1 - 128) = 0x3FF0000000000000;
  *(v1 - 104) = 0;
  *(v1 - 129) = v0;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t sub_1DD484CB8(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v3 = sub_1DD63D2B8();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = sub_1DD63D078();
  v13 = OUTLINED_FUNCTION_0(v12);
  v79 = v14;
  v80 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_4();
  v76 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v67 - v20;
  sub_1DD63C848();
  sub_1DD63C828();
  LODWORD(v75) = *MEMORY[0x1E6969A48];
  v22 = *(v6 + 104);
  v23 = OUTLINED_FUNCTION_17_20();
  v22(v23);
  OUTLINED_FUNCTION_15_1();
  v24 = a1;
  v77 = sub_1DD63D2C8();
  v25 = *(v6 + 8);
  v26 = OUTLINED_FUNCTION_7_29();
  v25(v26);
  LODWORD(v74) = *MEMORY[0x1E6969A78];
  v27 = OUTLINED_FUNCTION_17_20();
  v22(v27);
  OUTLINED_FUNCTION_15_1();
  v28 = v24;
  v29 = sub_1DD63D2C8();
  v30 = OUTLINED_FUNCTION_7_29();
  v25(v30);
  LODWORD(v73) = *MEMORY[0x1E6969A68];
  v31 = OUTLINED_FUNCTION_17_20();
  v22(v31);
  OUTLINED_FUNCTION_15_1();
  v32 = sub_1DD63D2C8();
  v33 = OUTLINED_FUNCTION_7_29();
  v25(v33);
  v71 = type metadata accessor for DateTime.Date();
  swift_allocObject();
  v77 = DateTime.Date.init(withDay:month:year:)(v77, v29, v32);
  v70 = *MEMORY[0x1E6969A58];
  v34 = OUTLINED_FUNCTION_17_20();
  v22(v34);
  OUTLINED_FUNCTION_15_1();
  v35 = sub_1DD63D2C8();
  v36 = OUTLINED_FUNCTION_7_29();
  v25(v36);
  v37 = v35 - 12;
  if (v35 <= 12)
  {
    v37 = v35;
  }

  v72 = v37;
  v69 = *MEMORY[0x1E6969A88];
  v38 = OUTLINED_FUNCTION_17_20();
  v22(v38);
  OUTLINED_FUNCTION_15_1();
  v78 = v21;
  v67[0] = sub_1DD63D2C8();
  v39 = OUTLINED_FUNCTION_7_29();
  v25(v39);
  v68 = *MEMORY[0x1E6969A98];
  v40 = OUTLINED_FUNCTION_17_20();
  v22(v40);
  OUTLINED_FUNCTION_15_1();
  v41 = sub_1DD63D2C8();
  v42 = OUTLINED_FUNCTION_7_29();
  v25(v42);
  v85 = v35 > 11;
  v67[1] = type metadata accessor for DateTime.Time();
  swift_allocObject();
  v72 = DateTime.Time.init(withHour:minute:second:meridiem:)(v72, v67[0], v41, &v85);
  (v22)(v11, v75, v3);
  v43 = v76;
  v44 = v28;
  v75 = sub_1DD63D2C8();
  v45 = OUTLINED_FUNCTION_7_29();
  v25(v45);
  (v22)(v11, v74, v3);
  v46 = sub_1DD63D2C8();
  v47 = OUTLINED_FUNCTION_7_29();
  v25(v47);
  (v22)(v11, v73, v3);
  v48 = v43;
  v49 = v44;
  v50 = sub_1DD63D2C8();
  v51 = OUTLINED_FUNCTION_7_29();
  v25(v51);
  swift_allocObject();
  v75 = DateTime.Date.init(withDay:month:year:)(v75, v46, v50);
  (v22)(v11, v70, v3);
  v52 = v48;
  v53 = sub_1DD63D2C8();
  v54 = OUTLINED_FUNCTION_7_29();
  v25(v54);
  v55 = v53 - 12;
  if (v53 <= 12)
  {
    v55 = v53;
  }

  v74 = v55;
  (v22)(v11, v69, v3);
  OUTLINED_FUNCTION_15_1();
  v73 = sub_1DD63D2C8();
  v56 = OUTLINED_FUNCTION_7_29();
  v25(v56);
  (v22)(v11, v68, v3);
  OUTLINED_FUNCTION_15_1();
  v57 = sub_1DD63D2C8();
  v58 = OUTLINED_FUNCTION_7_29();
  v25(v58);
  v84 = v53 > 11;
  swift_allocObject();
  DateTime.Time.init(withHour:minute:second:meridiem:)(v74, v73, v57, &v84);
  OUTLINED_FUNCTION_43();
  type metadata accessor for DateTime();
  swift_allocObject();
  v59 = v77;
  v60 = v72;
  v61 = DateTime.init(withDate:time:)(v77, v72);
  swift_allocObject();
  DateTime.init(withDate:time:)(v75, v49);
  OUTLINED_FUNCTION_43();
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v62 = DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v61, v49);
  v83 = 1;
  v82 = 4;
  swift_allocObject();
  v63 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v59, v60, &v83, v81, &v82, v62);
  v64 = *(v79 + 8);

  v65 = v80;
  v64(v52, v80);
  v64(v78, v65);
  return v63;
}

void sub_1DD4852E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v218 = a4;
  v215 = a2;
  v222 = a1;
  v223 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC130, &unk_1DD645260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_1_4();
  v214 = v8 - v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v11);
  v209 = sub_1DD63D2B8();
  v12 = OUTLINED_FUNCTION_0(v209);
  v208 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v20);
  v226 = sub_1DD63D078();
  v21 = *(v226 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v226 - 8);
  OUTLINED_FUNCTION_1_4();
  v25 = (v23 - v24);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v197 - v28;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_0();
  v224 = v35;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v197 - v39;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v41 = *(*(v212 - 8) + 64);
  MEMORY[0x1EEE9AC00](v212);
  OUTLINED_FUNCTION_1_4();
  v213 = v42 - v43;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_0();
  v220 = v45;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_0();
  v219 = v47;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_0();
  v217 = v49;
  OUTLINED_FUNCTION_8_1();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v197 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v197 - v55;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_18_0();
  v221 = v58;
  OUTLINED_FUNCTION_8_1();
  v60 = MEMORY[0x1EEE9AC00](v59);
  v62 = &v197 - v61;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_18_0();
  v227 = v63;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_16_3();
  v228 = v65;
  v66 = a3;
  LODWORD(v65) = *(a3 + 49);
  v67 = MEMORY[0x1E6969A98];
  v225 = v21;
  v210 = v25;
  v204 = v29;
  if (v65)
  {
    OUTLINED_FUNCTION_12_0();
    v68 = sub_1DD640CD8();

    if ((v68 & 1) == 0)
    {
      if (v218)
      {
        v69 = v208;
        v70 = v209;
        (*(v208 + 104))(v18, *v67, v209);
        v71 = v221;
        v72 = v222;
        sub_1DD63D268();
        (*(v69 + 8))(v18, v70);
        v73 = v214;
        sub_1DD48FBC0(v214);
        sub_1DD3D5CFC();
        sub_1DD3ADFD0(v73, &qword_1ECCDC130, &unk_1DD645260);
        sub_1DD3ADFD0(v71, &qword_1ECCDEBC0, &qword_1DD6445A0);
        v74 = v226;
        v75 = v228;
        v76 = v217;
      }

      else
      {
        sub_1DD63C848();
        OUTLINED_FUNCTION_10_15();
        v74 = v226;
        __swift_storeEnumTagSinglePayload(v84, v85, v86, v226);
        v75 = v228;
        v76 = v217;
        v72 = v222;
      }

      sub_1DD3D7DA0(v53, v75);
      v81 = v227;
      v216 = *(v21 + 16);
      (v216)(v227, v72, v74);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v74);
      v90 = v219;
      goto LABEL_30;
    }
  }

  else
  {
  }

  v77 = v222;
  sub_1DD480258();
  sub_1DD63CF38();
  OUTLINED_FUNCTION_10_15();
  v74 = v226;
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v226);
  v216 = *(v21 + 16);
  (v216)(v40, v77, v74);
  v81 = v227;
  if (*(v66 + 52) != 1 || *(v66 + 51) != 38 || *(v66 + 48) || (v82 = *(v66 + 24), v82 >= -1.0))
  {
LABEL_26:
    if (v218)
    {
      v108 = v221;
      (v216)(v221, v40, v74);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v74);
      v112 = v214;
      sub_1DD48FBC0(v214);
      sub_1DD3D710C(v108, v112);
      sub_1DD3ADFD0(v112, &qword_1ECCDC130, &unk_1DD645260);
      sub_1DD3ADFD0(v108, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v113 = *(v225 + 8);
      v114 = OUTLINED_FUNCTION_29_11();
      v115(v114);
    }

    else
    {
      sub_1DD63C828();
      v116 = *(v225 + 8);
      v117 = OUTLINED_FUNCTION_29_11();
      v118(v117);
      OUTLINED_FUNCTION_10_15();
      __swift_storeEnumTagSinglePayload(v119, v120, v121, v74);
    }

    v75 = v228;
    v90 = v219;
    sub_1DD3D7DA0(v56, v81);
    v76 = v217;
LABEL_30:
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v122 = sub_1DD63F9F8();
    v123 = __swift_project_value_buffer(v122, qword_1ECD0DDC0);
    sub_1DD3B7EA0(v75, v76);
    sub_1DD3B7EA0(v81, v90);
    v222 = v123;
    v124 = sub_1DD63F9D8();
    v125 = sub_1DD640368();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      *v126 = 136315394;
      v127 = v221;
      sub_1DD3B7EA0(v76, v221);
      v128 = sub_1DD63FE38();
      v130 = v129;
      sub_1DD3ADFD0(v76, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v131 = sub_1DD39565C(v128, v130, &v229);
      v81 = v227;

      *(v126 + 4) = v131;
      *(v126 + 12) = 2080;
      sub_1DD3B7EA0(v90, v127);
      v132 = sub_1DD63FE38();
      v134 = v133;
      sub_1DD3ADFD0(v90, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v135 = sub_1DD39565C(v132, v134, &v229);
      v74 = v226;

      *(v126 + 14) = v135;
      _os_log_impl(&dword_1DD38D000, v124, v125, "finished converging dateInterval, dateIntervalStart: %s, dateIntervalEnd: %s", v126, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      v75 = v228;
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      sub_1DD3ADFD0(v90, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v136 = OUTLINED_FUNCTION_15_0();
      sub_1DD3ADFD0(v136, v137, &qword_1DD6445A0);
    }

    v138 = v223;
    v139 = v224;
    v140 = v220;
    sub_1DD3B7EA0(v75, v220);
    OUTLINED_FUNCTION_9_23(v140);
    if (v146)
    {
      v141 = v140;
    }

    else
    {
      v142 = v138;
      v143 = v225;
      v144 = *(v225 + 32);
      v144(v139, v140, v74);
      v145 = v213;
      sub_1DD3B7EA0(v81, v213);
      OUTLINED_FUNCTION_9_23(v145);
      if (!v146)
      {
        v155 = v211;
        v144(v211, v145, v74);
        v156 = v155;
        OUTLINED_FUNCTION_8_25();
        sub_1DD487AF0(v157, v158);
        v159 = sub_1DD63FD68();
        if ((v159 & 1) == 0)
        {
          v173 = v205;
          v174 = v216;
          (v216)(v205, v139, v74);
          v175 = v206;
          OUTLINED_FUNCTION_27_13();
          v174();
          v176 = sub_1DD63F9D8();
          v177 = sub_1DD640368();
          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            v229 = v222;
            *v178 = 136315394;
            OUTLINED_FUNCTION_8_25();
            sub_1DD487AF0(v179, v180);
            v221 = v176;
            v181 = sub_1DD640CB8();
            v182 = v175;
            v184 = v183;
            v185 = *(v225 + 8);
            LODWORD(v225) = v177;
            v185(v173, v74);
            v186 = sub_1DD39565C(v181, v184, &v229);

            *(v178 + 4) = v186;
            *(v178 + 12) = 2080;
            v187 = sub_1DD640CB8();
            v189 = v188;
            v185(v182, v74);
            v190 = sub_1DD39565C(v187, v189, &v229);
            v156 = v211;

            *(v178 + 14) = v190;
            v191 = v221;
            _os_log_impl(&dword_1DD38D000, v221, v225, "returning, dateIntervalStart: %s, dateIntervalEnd: %s", v178, 0x16u);
            swift_arrayDestroy();
            v138 = v223;
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          else
          {
            v138 = v142;

            v185 = *(v225 + 8);
            v194 = OUTLINED_FUNCTION_31_12();
            (v185)(v194);
            v185(v173, v74);
          }

          v195 = v216;
          (v216)(v207, v224, v74);
          OUTLINED_FUNCTION_27_13();
          v195();
          sub_1DD63C838();
          v185(v156, v74);
          v196 = OUTLINED_FUNCTION_29_11();
          (v185)(v196);
          v153 = 0;
          v81 = v227;
          v75 = v228;
          goto LABEL_45;
        }

        v160 = v204;
        v161 = v216;
        (v216)(v204, v139, v74);
        OUTLINED_FUNCTION_27_13();
        v161();
        v162 = sub_1DD63F9D8();
        v163 = sub_1DD640378();
        v138 = v142;
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          *v164 = 134218240;
          v165 = v162;
          sub_1DD63CF48();
          v167 = v166;
          LODWORD(v227) = v163;
          v168 = *(v225 + 8);
          v168(v160, v74);
          *(v164 + 4) = v167;
          *(v164 + 12) = 2048;
          v169 = v210;
          sub_1DD63CF48();
          v171 = v170;
          v168(v169, v74);
          *(v164 + 14) = v171;
          _os_log_impl(&dword_1DD38D000, v165, v227, "It seems that start > end: [%f, %f]", v164, 0x16u);
          OUTLINED_FUNCTION_0_1();

          v168(v211, v74);
          v172 = OUTLINED_FUNCTION_31_12();
          (v168)(v172);
          v75 = v228;
        }

        else
        {

          v192 = *(v225 + 8);
          v192(v210, v74);
          v192(v160, v74);
          v192(v156, v74);
          v193 = OUTLINED_FUNCTION_31_12();
          (v192)(v193);
        }

LABEL_44:
        v153 = 1;
LABEL_45:
        sub_1DD3ADFD0(v81, &qword_1ECCDEBC0, &qword_1DD6445A0);
        sub_1DD3ADFD0(v75, &qword_1ECCDEBC0, &qword_1DD6445A0);
        v154 = sub_1DD63C868();
        __swift_storeEnumTagSinglePayload(v138, v153, 1, v154);
        return;
      }

      v147 = *(v143 + 8);
      v148 = OUTLINED_FUNCTION_31_12();
      v149(v148);
      v141 = v145;
      v138 = v142;
    }

    sub_1DD3ADFD0(v141, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v150 = sub_1DD63F9D8();
    v151 = sub_1DD640378();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      *v152 = 0;
      _os_log_impl(&dword_1DD38D000, v150, v151, "Could not set dateIntervalStart and dateIntervalEnd", v152, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_44;
  }

  v198 = v66;
  sub_1DD48FBC0(v203);
  v83 = v203;
  if (__swift_getEnumTagSinglePayload(v203, 1, v209) == 1)
  {
    sub_1DD3ADFD0(v83, &qword_1ECCDC130, &unk_1DD645260);
    goto LABEL_26;
  }

  v91 = v208;
  v92 = v83;
  v93 = v209;
  (*(v208 + 32))(v202, v92, v209);
  (*(v91 + 104))(v18, *v67, v93);
  sub_1DD63D268();
  v94 = *(v91 + 8);
  v208 = v91 + 8;
  v203 = v94;
  v94(v18, v209);
  v95 = v214;
  sub_1DD48FBC0(v214);
  v96 = v221;
  sub_1DD3D5CFC();
  sub_1DD3ADFD0(v95, &qword_1ECCDC130, &unk_1DD645260);
  sub_1DD3ADFD0(v96, &qword_1ECCDEBC0, &qword_1DD6445A0);
  v97 = v225;
  v98 = *(v225 + 8);
  v99 = OUTLINED_FUNCTION_29_11();
  v198 = v100;
  (v100)(v99);
  OUTLINED_FUNCTION_9_23(v62);
  if (v146)
  {
    v101 = v200;
    (v216)(v200, v222, v74);
    OUTLINED_FUNCTION_9_23(v62);
    if (!v146)
    {
      sub_1DD3ADFD0(v62, &qword_1ECCDEBC0, &qword_1DD6445A0);
    }
  }

  else
  {
    v101 = v200;
    (*(v97 + 32))(v200, v62, v74);
  }

  v102 = *(v225 + 32);
  (v102)(v40, v101, v74);
  if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_19_2();
    v103 = v209;
    if (v104)
    {
      v105 = v202;
      sub_1DD63D268();
      v106 = v105;
      v107 = v201;
      v203(v106, v103);
      v74 = v226;
      v198(v40, v226);
      if (__swift_getEnumTagSinglePayload(v107, 1, v74) == 1)
      {
        (v216)(v199, v222, v74);
        OUTLINED_FUNCTION_9_23(v107);
        if (!v146)
        {
          sub_1DD3ADFD0(v107, &qword_1ECCDEBC0, &qword_1DD6445A0);
        }
      }

      else
      {
        (v102)(v199, v107, v74);
      }

      OUTLINED_FUNCTION_27_13();
      v102();
      v81 = v227;
      goto LABEL_26;
    }
  }

  __break(1u);
}

uint64_t sub_1DD4865EC(uint64_t a1, int a2, uint64_t a3)
{
  v189 = a3;
  v220 = *MEMORY[0x1E69E9840];
  v204 = sub_1DD63D2B8();
  v7 = OUTLINED_FUNCTION_0(v204);
  v197 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v12);
  v185 = sub_1DD63CBB8();
  v13 = OUTLINED_FUNCTION_0(v185);
  v184 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_14_2(v18 - v17);
  v187 = sub_1DD63D078();
  v19 = OUTLINED_FUNCTION_0(v187);
  v186 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v190 = v24 - v23;
  v205 = a2;
  v208 = a2;
  v188 = a1 & 0xC000000000000001;
  v194 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v45 = *(a1 + 32);
    v46 = a1;
    v47 = v45 & 0x3F;
    v200 = ((1 << v45) + 63) >> 6;
    v48 = 8 * v200;

    if (v47 <= 0xD)
    {
      goto LABEL_32;
    }

    goto LABEL_191;
  }

  v25 = MEMORY[0x1E69E7CD0];
  v215 = MEMORY[0x1E69E7CD0];
  if (a1 < 0)
  {
    v26 = a1;
  }

  else
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1DD640778();
  v3 = -1;
  while (1)
  {
    v27 = sub_1DD6407F8();
    if (!v27)
    {
      break;
    }

    v209[0] = v27;
    type metadata accessor for DateTimeConstraint();
    swift_dynamicCast();
    if (*(v210 + 49))
    {
      if (*(v210 + 49) == 1)
      {
        v26 = 0xE300000000000000;
      }

      else
      {
        OUTLINED_FUNCTION_32_11();
      }
    }

    else
    {
      OUTLINED_FUNCTION_33_8();
    }

    OUTLINED_FUNCTION_21_14();
    if (v32)
    {
      v31 = 0xE500000000000000;
      OUTLINED_FUNCTION_12_0();
    }

    else
    {
      if (v29 == 1)
      {
        v30 = 6581861;
      }

      else
      {
        v30 = 0x746573746F6ELL;
      }

      if (v29 == 1)
      {
        v31 = 0xE300000000000000;
      }

      else
      {
        v31 = 0xE600000000000000;
      }
    }

    v32 = v28 == v30 && v26 == v31;
    if (v32)
    {

LABEL_27:
      v26 = v210;
      v41 = v25[2];
      if (v25[3] <= v41)
      {
        sub_1DD57162C(v41 + 1, v34, v35, v36, v37, v38, v39, v40, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
      }

      v25 = v215;
      v42 = v215[5];
      sub_1DD640E28();
      sub_1DD48E664(v209);
      sub_1DD640E78();
      v43 = -1 << *(v25 + 32);
      v44 = sub_1DD640758();
      *(v25 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v44;
      *(v25[6] + 8 * v44) = v26;
      ++v25[2];
    }

    else
    {
      v33 = sub_1DD640CD8();

      if (v33)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_66:
  v181 = 0;
  while (2)
  {
    v72 = v201;
    v73 = sub_1DD487798(v25);

    v199 = v73;
    v75 = sub_1DD5940C4(v74);
    v76 = sub_1DD3CC020(v75);
    v77 = 0;
    v78 = MEMORY[0x1E69E7CC0];
    while (v76 != v77)
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x1E12B2C10](v77, v75);
      }

      else
      {
        if (v77 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_155;
        }

        v72 = *(v75 + 8 * v77 + 32);
      }

      if (__OFADD__(v77, 1))
      {
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v79 = sub_1DD48E73C();

      v72 = *(v79 + 16);
      v3 = *(v78 + 16);
      if (__OFADD__(v3, v72))
      {
        goto LABEL_156;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v3 + v72 > *(v78 + 24) >> 1)
      {
        sub_1DD3BFEEC();
        v78 = v80;
      }

      if (*(v79 + 16))
      {
        v81 = *(v78 + 16);
        if ((*(v78 + 24) >> 1) - v81 < v72)
        {
          goto LABEL_159;
        }

        v82 = v78 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v81;
        swift_arrayInitWithCopy();

        if (v72)
        {
          v83 = *(v78 + 16);
          v70 = __OFADD__(v83, v72);
          v84 = v83 + v72;
          if (v70)
          {
LABEL_183:
            __break(1u);
            goto LABEL_184;
          }

          *(v78 + 16) = v84;
        }
      }

      else
      {

        if (v72)
        {
          goto LABEL_157;
        }
      }

      ++v77;
    }

    v48 = sub_1DD418734();
    OUTLINED_FUNCTION_21_14();
    if (v32)
    {

      goto LABEL_89;
    }

    OUTLINED_FUNCTION_12_0();
    v85 = sub_1DD640CD8();

    if (v85)
    {
LABEL_89:
      sub_1DD63C848();
      goto LABEL_90;
    }

    sub_1DD63C828();
LABEL_90:
    sub_1DD63D1F8();

    if (v188)
    {
      OUTLINED_FUNCTION_13_22();
      sub_1DD640778();
      OUTLINED_FUNCTION_43();
      v72 = type metadata accessor for DateTimeConstraint();
      OUTLINED_FUNCTION_0_59();
      sub_1DD487AF0(v86, v87);
      OUTLINED_FUNCTION_15_0();
      sub_1DD6402A8();
      v3 = v210;
      v48 = v211;
      v88 = v212;
      v89 = v213;
      v90 = v214;
    }

    else
    {
      OUTLINED_FUNCTION_16_21();
      v72 = ~v91;
      OUTLINED_FUNCTION_10_5();
      v90 = v92 & v93;

      v88 = v72;
      v89 = 0;
    }

    v183 = v88;
    v94 = (v88 + 64) >> 6;
    v200 = v197 + 16;
    v201 = (v197 + 8);
    v205 = 1;
    v193 = v48;
    v192 = v3;
    v191 = v94;
    if (v3 < 0)
    {
      goto LABEL_100;
    }

    while (1)
    {
      v95 = v89;
      v96 = v89;
      if (!v90)
      {
        break;
      }

LABEL_98:
      OUTLINED_FUNCTION_14_3();
      v99 = v98 & v97;
      v100 = *(v3 + 48);
      OUTLINED_FUNCTION_26_15(v101);
      if (!v72)
      {
        goto LABEL_123;
      }

      while (1)
      {
        v103 = sub_1DD48E73C();
        v104 = *(v103 + 16);
        if (v104)
        {
          v198 = v72;
          v196 = v99;
          v105 = 0;
          v106 = (*(v197 + 80) + 32) & ~*(v197 + 80);
          v195 = v103;
          v107 = v103 + v106;
          v108 = *(v197 + 72);
          v109 = *(v197 + 16);
          do
          {
            v110 = v202;
            v111 = v204;
            v109(v202, v107 + v108 * v105, v204);
            v112 = sub_1DD63CAD8();
            v114 = v113;
            (*v201)(v110, v111);
            if ((v114 & 1) == 0)
            {
              v115 = v199;
              if (v199[2])
              {
                v116 = sub_1DD3FEB14();
                if (v117)
                {
                  v118 = *(*(v115 + 56) + 8 * v116);
                  v119 = *(v118 + 16);
                  if (!v119 || ((v205 ^ 1) & 1) != 0)
                  {
                    v205 = (v119 == 0) & v205;
                  }

                  else
                  {
                    v120 = (v118 + 32);
                    do
                    {
                      v121 = v119-- != 0;
                      v122 = v121;
                      v205 = v122;
                      if (!v121)
                      {
                        break;
                      }

                      v123 = *v120++;
                    }

                    while (v123 != v112);
                  }
                }
              }
            }

            ++v105;
          }

          while (v105 != v104);

          v48 = v193;
          v3 = v192;
          v94 = v191;
          v99 = v196;
          v72 = v198;
        }

        else
        {
        }

        v89 = v96;
        v90 = v99;
        if ((v3 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_100:
        v102 = sub_1DD6407F8();
        if (v102)
        {
          v215 = v102;
          type metadata accessor for DateTimeConstraint();
          swift_dynamicCast();
          v72 = v209[0];
          v96 = v89;
          v99 = v90;
          if (v209[0])
          {
            continue;
          }
        }

        goto LABEL_123;
      }
    }

    while (1)
    {
      v96 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        goto LABEL_158;
      }

      if (v96 >= v94)
      {
        break;
      }

      ++v95;
      if (*(v48 + 8 * v96))
      {
        goto LABEL_98;
      }
    }

LABEL_123:

    sub_1DD3AA5A4();
    v72 = v190;
    if (!sub_1DD480018())
    {
      v129 = OUTLINED_FUNCTION_3_34();
      v130(v129);
      OUTLINED_FUNCTION_20_16();
      v132 = v72;
      goto LABEL_150;
    }

    if (v188)
    {
      OUTLINED_FUNCTION_13_22();
      sub_1DD640778();
      OUTLINED_FUNCTION_43();
      v72 = type metadata accessor for DateTimeConstraint();
      OUTLINED_FUNCTION_0_59();
      sub_1DD487AF0(v124, v125);
      OUTLINED_FUNCTION_15_0();
      sub_1DD6402A8();
      v3 = v215;
      v48 = v216;
      v126 = v217;
      v127 = v218;
      v128 = v219;
    }

    else
    {
      OUTLINED_FUNCTION_16_21();
      v126 = ~v133;
      OUTLINED_FUNCTION_10_5();
      v128 = v134 & v135;

      v127 = 0;
    }

    v4 = -9.22337204e18;
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_129:
      v136 = v127;
      v46 = v127;
      if (v128)
      {
LABEL_133:
        OUTLINED_FUNCTION_14_3();
        v139 = v138 & v137;
        v140 = *(v3 + 48);
        OUTLINED_FUNCTION_26_15(v141);
        if (v72)
        {
          goto LABEL_137;
        }

LABEL_148:
        OUTLINED_FUNCTION_22_13();
        goto LABEL_149;
      }

      while (1)
      {
        v46 = v136 + 1;
        if (__OFADD__(v136, 1))
        {
          break;
        }

        if (v46 >= ((v126 + 64) >> 6))
        {
          goto LABEL_148;
        }

        ++v136;
        if (*(v48 + 8 * v46))
        {
          goto LABEL_133;
        }
      }

      __break(1u);
LABEL_186:
      OUTLINED_FUNCTION_34_11();
      sub_1DD3AA5A4();

      v172 = v197 + 104;
      v173 = v182;
      v174 = v204;
      (*(v197 + 104))(v182, *MEMORY[0x1E6969A48], v204);
      v175 = v190;
      v176 = sub_1DD63D2C8();
      (*(v172 - 96))(v173, v174);
      v177 = OUTLINED_FUNCTION_3_34();
      v178(v177);
      OUTLINED_FUNCTION_20_16();
      v179(v175, v187);
      v149 = (v176 != 28) & v205;
      goto LABEL_151;
    }

    while (1)
    {
      v142 = sub_1DD6407F8();
      if (!v142)
      {
        goto LABEL_148;
      }

      v207 = v142;
      type metadata accessor for DateTimeConstraint();
      swift_dynamicCast();
      v72 = v209[0];
      v46 = v127;
      v139 = v128;
      if (!v209[0])
      {
        goto LABEL_148;
      }

LABEL_137:
      if (*(v72 + 16) == 9)
      {
        v143 = *(v72 + 24);
        if (*(v72 + 48) == 2)
        {
          goto LABEL_145;
        }

        if (!*(v72 + 48))
        {
          break;
        }
      }

LABEL_146:

      v127 = v46;
      v128 = v139;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_129;
      }
    }

    if ((~*&v143 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_188;
    }

    v144 = *(v72 + 24);
    if (v143 <= -9.22337204e18)
    {
      goto LABEL_189;
    }

    OUTLINED_FUNCTION_19_2();
    if (!v146)
    {
      goto LABEL_190;
    }

    *&v143 = v145;
LABEL_145:
    if (*&v143 != 2)
    {
      goto LABEL_146;
    }

    OUTLINED_FUNCTION_22_13();
    sub_1DD3AA5A4();

    if (v188)
    {
      OUTLINED_FUNCTION_13_22();
      sub_1DD640778();
      OUTLINED_FUNCTION_43();
      v72 = type metadata accessor for DateTimeConstraint();
      OUTLINED_FUNCTION_0_59();
      sub_1DD487AF0(v152, v153);
      OUTLINED_FUNCTION_15_0();
      sub_1DD6402A8();
      v154 = v209[0];
      v48 = v209[1];
      v155 = v209[2];
      v156 = v209[3];
      v3 = v209[4];
      goto LABEL_161;
    }

LABEL_160:
    v48 = v194 + 56;
    v157 = *(v194 + 56);
    v155 = ~(-1 << *(v194 + 32));
    OUTLINED_FUNCTION_10_5();
    v3 = v158 & v159;

    v156 = 0;
LABEL_161:
    v160 = v154;
    if (v154 < 0)
    {
      while (1)
      {
        v168 = sub_1DD6407F8();
        if (!v168)
        {
          goto LABEL_184;
        }

        v206 = v168;
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v72 = v207;
        v46 = v156;
        v164 = v3;
        if (!v207)
        {
          goto LABEL_184;
        }

LABEL_170:
        if (*(v72 + 16) == 5)
        {
          v169 = *(v72 + 24);
          if (*(v72 + 48) == 2)
          {
            goto LABEL_178;
          }

          if (!*(v72 + 48))
          {
            break;
          }
        }

LABEL_179:

        v156 = v46;
        v3 = v164;
        if ((v160 & 0x8000000000000000) == 0)
        {
          goto LABEL_162;
        }
      }

      if ((~v169 & 0x7FF0000000000000) == 0)
      {
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
      }

      v170 = *(v72 + 24);
      if (*&v169 <= v4)
      {
        goto LABEL_194;
      }

      OUTLINED_FUNCTION_19_2();
      if (!v146)
      {
        goto LABEL_195;
      }

      v169 = v171;
LABEL_178:
      if (v169 >= 29)
      {
        goto LABEL_186;
      }

      goto LABEL_179;
    }

LABEL_162:
    v161 = v156;
    v46 = v156;
    if (!v3)
    {
      while (1)
      {
        v46 = v161 + 1;
        if (__OFADD__(v161, 1))
        {
          break;
        }

        if (v46 >= ((v155 + 64) >> 6))
        {
          goto LABEL_184;
        }

        ++v161;
        if (*(v48 + 8 * v46))
        {
          goto LABEL_166;
        }
      }

      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v180 = swift_slowAlloc();
        v25 = sub_1DD497E80(v180, v200, v46, sub_1DD487AD0);
        v181 = 0;
        OUTLINED_FUNCTION_0_1();
        continue;
      }

LABEL_32:
      v199 = &v181;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v50 = (&v181 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0));
      sub_1DD57634C(0, v200, v50);
      v3 = 0;
      v51 = 0;
      v54 = *(v46 + 56);
      v53 = v46 + 56;
      v52 = v54;
      v55 = 1 << *(v53 - 24);
      v56 = -1;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      v57 = v56 & v52;
      v58 = (v55 + 63) >> 6;
      do
      {
LABEL_35:
        if (v57)
        {
          v59 = __clz(__rbit64(v57));
          v57 &= v57 - 1;
          goto LABEL_42;
        }

        v60 = v51;
        do
        {
          v51 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            __break(1u);
            goto LABEL_183;
          }

          if (v51 >= v58)
          {
            goto LABEL_65;
          }

          ++v60;
        }

        while (!*(v53 + 8 * v51));
        OUTLINED_FUNCTION_14_3();
        v57 = v62 & v61;
LABEL_42:
        v63 = v59 | (v51 << 6);
        if (*(*(*(v194 + 48) + 8 * v63) + 49))
        {
          if (*(*(*(v194 + 48) + 8 * v63) + 49) == 1)
          {
            v48 = 0xE300000000000000;
          }

          else
          {
            OUTLINED_FUNCTION_32_11();
          }
        }

        else
        {
          OUTLINED_FUNCTION_33_8();
        }

        OUTLINED_FUNCTION_21_14();
        if (v32)
        {
          v67 = 0xE500000000000000;
          OUTLINED_FUNCTION_12_0();
        }

        else
        {
          if (v65 == 1)
          {
            v66 = 6581861;
          }

          else
          {
            v66 = 0x746573746F6ELL;
          }

          if (v65 == 1)
          {
            v67 = 0xE300000000000000;
          }

          else
          {
            v67 = 0xE600000000000000;
          }
        }

        if (v64 == v66 && v48 == v67)
        {

          break;
        }

        v69 = sub_1DD640CD8();
      }

      while ((v69 & 1) == 0);
      *(v50 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
      v70 = __OFADD__(v3++, 1);
      if (!v70)
      {
        goto LABEL_35;
      }

      __break(1u);
LABEL_65:
      sub_1DD51607C(v50, v200, v3, v194);
      v25 = v71;
      goto LABEL_66;
    }

    break;
  }

LABEL_166:
  OUTLINED_FUNCTION_14_3();
  v164 = v163 & v162;
  v166 = *(v165 + 48);
  OUTLINED_FUNCTION_26_15(v167);
  if (v72)
  {
    goto LABEL_170;
  }

LABEL_184:
  OUTLINED_FUNCTION_34_11();
LABEL_149:
  sub_1DD3AA5A4();
  v147 = OUTLINED_FUNCTION_3_34();
  v148(v147);
  OUTLINED_FUNCTION_20_16();
  v132 = v190;
LABEL_150:
  v131(v132, v187);
  v149 = v205;
LABEL_151:
  v150 = *MEMORY[0x1E69E9840];
  return v149 & 1;
}

uint64_t sub_1DD4876AC(uint64_t a1, char a2)
{
  v2 = 0x7472617473;
  if (*(*a1 + 49))
  {
    if (*(*a1 + 49) == 1)
    {
      v3 = 0xE300000000000000;
      v4 = 6581861;
    }

    else
    {
      v3 = 0xE600000000000000;
      v4 = 0x746573746F6ELL;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x7472617473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6581861;
    }

    else
    {
      v2 = 0x746573746F6ELL;
    }

    if (a2 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (v4 == v2 && v3 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DD640CD8();
  }

  return v7 & 1;
}

uint64_t sub_1DD487798(uint64_t a1)
{
  type metadata accessor for DateTimeConstraint();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD368, &qword_1DD64F840);
  sub_1DD487AF0(&qword_1ECCDC188, type metadata accessor for DateTimeConstraint);
  v2 = sub_1DD63FC88();
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    sub_1DD6402A8();
    a1 = v34;
    v3 = v35;
    v4 = v36;
    v5 = v37;
    v6 = v38;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v31 = v10;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_26:
      sub_1DD3AA5A4();
      return v2;
    }

    while (1)
    {
      v32 = v14;
      v16 = v3;
      v17 = a1;
      v18 = v15[7];

      swift_isUniquelyReferenced_nonNull_native();
      v33 = v2;
      v19 = sub_1DD3FEB14();
      if (__OFADD__(v2[2], (v20 & 1) == 0))
      {
        break;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD370, &qword_1DD64F848);
      if (sub_1DD640A08())
      {
        v23 = sub_1DD3FEB14();
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_30;
        }

        v21 = v23;
      }

      if (v22)
      {
        v25 = v2[7];
        v26 = *(v25 + 8 * v21);
        *(v25 + 8 * v21) = v18;
      }

      else
      {
        v2[(v21 >> 6) + 8] |= 1 << v21;
        *(v2[6] + 8 * v21) = v15;
        *(v2[7] + 8 * v21) = v18;
        v27 = v2[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_29;
        }

        v2[2] = v29;
      }

      v5 = v13;
      a1 = v17;
      v3 = v16;
      v10 = v31;
      v6 = v32;
      if ((a1 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_1DD6407F8())
      {
        swift_dynamicCast();
        v15 = v33;
        v13 = v5;
        v14 = v6;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_26;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD487AF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_34()
{
  v1 = *(*(v0 - 488) + 8);
  result = *(v0 - 336);
  v3 = *(v0 - 480);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_22()
{
  if (*(v0 - 408) < 0)
  {
    v2 = *(v0 - 408);
  }

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_26_15@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + (v2 | (8 * a1)));
}

void sub_1DD487C10(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTime();
    sub_1DD488E94();
    sub_1DD6402A8();
    v1 = v22;
    v2 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1DD6407F8() || (type metadata accessor for DateTime(), swift_dynamicCast(), v14 = v27, v4 = v9, v5 = v10, !v27))
      {
LABEL_26:
        sub_1DD3AA5A4();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v14)
    {
      goto LABEL_26;
    }

LABEL_18:
    v15 = *(v14 + 16);
    if (!v15)
    {

      goto LABEL_8;
    }

    v16 = *(v15 + 89);

    v9 = v4;
    v10 = v5;
    if (v16 != 7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v21 + 16);
        sub_1DD3BFFC4();
        v21 = v19;
      }

      v17 = *(v21 + 16);
      if (v17 >= *(v21 + 24) >> 1)
      {
        sub_1DD3BFFC4();
        v21 = v20;
      }

      *(v21 + 16) = v17 + 1;
      *(v21 + v17 + 32) = v16;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

INDateComponentsRange __swiftcall DateTime.toINDateComponentsRange()()
{
  v1 = *v0;
  v2 = sub_1DD63D328();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD63D2D8();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D288();
  sub_1DD63D318();
  v18 = sub_1DD487FFC(v0, v17, v9);
  (*(v5 + 8))(v9, v2);
  (*(v13 + 8))(v17, v10);
  return v18;
}

id sub_1DD487FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC4F8, &unk_1DD646910);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  v12 = sub_1DD63CBB8();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v65 - v21;
  v66 = a2;
  sub_1DD488550(a1, a2, a3);
  v22 = *(a1 + 24);
  if (v22)
  {
    LOBYTE(v22) = *(v22 + 72);
  }

  v23 = *(a1 + 56);
  v67 = v19;
  if (v23)
  {
    v24 = *(v23 + 32);
    if (v24)
    {
      v25 = *(v24 + 24);
      if (v25)
      {
        if (v22)
        {
          v69 = 0;
          goto LABEL_12;
        }

        v26 = *(v25 + 72);
        goto LABEL_11;
      }
    }
  }

  v26 = 0;
  v69 = 0;
  if ((v22 & 1) == 0)
  {
LABEL_11:
    v69 = v26 ^ 1;
  }

LABEL_12:
  if (qword_1ECCDB0C0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v27 = sub_1DD63F9F8();
  v28 = OUTLINED_FUNCTION_11(v27, qword_1ECD0DDC0);
  v29 = sub_1DD640368();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v65 = a1;
    v31 = v30;
    *v30 = 67109120;
    *(v30 + 4) = v69;
    _os_log_impl(&dword_1DD38D000, v28, v29, "Setting allDay to %{BOOL}d", v30, 8u);
    a1 = v65;
    MEMORY[0x1E12B3DA0](v31, -1, -1);
  }

  if (v23 && *(v23 + 32))
  {
    v32 = *(v23 + 32);

    v34 = v67;
    sub_1DD488550(v33, v66, a3);
    v35 = sub_1DD488B98(a1);
    v36 = *(v15 + 16);
    v36(v11, v70, v12);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v12);
    v40 = v68;
    v36(v68, v34, v12);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v12);
    v44 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v45 = v44;
    if (v35)
    {
      v46 = v40;
      v47 = v35;
      v48 = [v45 initWithBool_];
      v49 = objc_allocWithZone(MEMORY[0x1E696E800]);
      v50 = sub_1DD488CD8(v11, v46, v35, 0, 0, v48);
    }

    else
    {
      [v44 initWithBool_];
      v62 = objc_allocWithZone(MEMORY[0x1E696E800]);
      v50 = OUTLINED_FUNCTION_7_30();
    }

    v63 = *(v15 + 8);
    v63(v67, v12);
    v63(v70, v12);
  }

  else
  {
    v51 = sub_1DD488B98(a1);
    (*(v15 + 16))(v11, v70, v12);
    OUTLINED_FUNCTION_10_15();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v12);
    v55 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v12);
    v56 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v57 = v56;
    if (v51)
    {
      v58 = v51;
      v59 = [v57 initWithBool_];
      v60 = objc_allocWithZone(MEMORY[0x1E696E800]);
      v50 = sub_1DD488CD8(v11, v55, v51, 0, 0, v59);
    }

    else
    {
      [v56 initWithBool_];
      v61 = objc_allocWithZone(MEMORY[0x1E696E800]);
      v50 = OUTLINED_FUNCTION_7_30();
    }

    (*(v15 + 8))(v70, v12);
  }

  return v50;
}

uint64_t sub_1DD488550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v68 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v68 - v11;
  v13 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  v14 = sub_1DD63D328();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
  sub_1DD63CB68();
  v15 = *(a1 + 16);
  if (v15)
  {
    switch(*(v15 + 89))
    {
      case 7:
        v16 = *(a1 + 16);

        break;
      default:
        v17 = *(a1 + 16);

        OUTLINED_FUNCTION_6_30();
        sub_1DD63CB58();
        break;
    }

    if (*(v15 + 72) != 12)
    {
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CAC8();
    }

    if ((*(v15 + 40) & 1) == 0)
    {
      v18 = *(v15 + 32);
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CAC8();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v19 = sub_1DD63F9F8();
      v20 = OUTLINED_FUNCTION_11(v19, qword_1ECD0DDC0);
      v21 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v21))
      {
        v22 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_1_46(v22);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v23, v24, "toINDateComponentsRange(): setting dateComponents.month");
        OUTLINED_FUNCTION_3_35();
      }
    }

    if ((*(v15 + 24) & 1) == 0)
    {
      v25 = *(v15 + 16);
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CA38();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v26 = sub_1DD63F9F8();
      v27 = OUTLINED_FUNCTION_11(v26, qword_1ECD0DDC0);
      v28 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v28))
      {
        v29 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_1_46(v29);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v30, v31, "toINDateComponentsRange(): setting dateComponents.day");
        OUTLINED_FUNCTION_3_35();
      }
    }

    if (*(v15 + 56) == 1)
    {
    }

    else
    {
      v32 = *(v15 + 48);
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CAA8();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v33 = sub_1DD63F9F8();
      v34 = OUTLINED_FUNCTION_11(v33, qword_1ECD0DDC0);
      v35 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v35))
      {
        v36 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_1_46(v36);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v37, v38, "toINDateComponentsRange(): setting dateComponents.year");
        OUTLINED_FUNCTION_3_35();
      }
    }
  }

  v39 = *(a1 + 24);
  if (v39)
  {
    if (*(v39 + 24) == 1)
    {
    }

    else
    {
      if ((*(v39 + 57) & (*(v39 + 16) < 12)) == 0)
      {
        v40 = *(v39 + 16);
      }

      OUTLINED_FUNCTION_6_30();
      sub_1DD63CA88();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v41 = sub_1DD63F9F8();
      v42 = OUTLINED_FUNCTION_11(v41, qword_1ECD0DDC0);
      v43 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v43))
      {
        v44 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_9_24(v44);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v45, v46, "toINDateComponentsRange(): setting dateComponents.hour");
        OUTLINED_FUNCTION_8_26();
      }
    }

    if ((*(v39 + 40) & 1) == 0)
    {
      v47 = *(v39 + 32);
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CAF8();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v48 = sub_1DD63F9F8();
      v49 = OUTLINED_FUNCTION_11(v48, qword_1ECD0DDC0);
      v50 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v50))
      {
        v51 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_9_24(v51);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v52, v53, "toINDateComponentsRange(): setting dateComponents.minute");
        OUTLINED_FUNCTION_8_26();
      }
    }

    if (*(v39 + 56) == 1)
    {
    }

    else
    {
      v54 = *(v39 + 48);
      OUTLINED_FUNCTION_6_30();
      sub_1DD63CB18();
      sub_1DD63C978();
      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v55 = sub_1DD63F9F8();
      v56 = OUTLINED_FUNCTION_11(v55, qword_1ECD0DDC0);
      v57 = sub_1DD640368();
      if (OUTLINED_FUNCTION_4_0(v57))
      {
        v58 = OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_9_24(v58);
        OUTLINED_FUNCTION_12_2(&dword_1DD38D000, v59, v60, "toINDateComponentsRange(): setting dateComponents.second");
        OUTLINED_FUNCTION_8_26();
      }
    }
  }

  (*(*(v13 - 8) + 16))(v12, v69, v13);
  OUTLINED_FUNCTION_10_15();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v13);
  sub_1DD63CB88();
  (*(*(v14 - 8) + 16))(v8, a3, v14);
  OUTLINED_FUNCTION_10_15();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v14);
  return sub_1DD63CBA8();
}

id sub_1DD488B98(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 24))
  {
    return 0;
  }

  v3 = *(v2 + 25);
  if (v3 == 13)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 48);

  v8 = sub_1DD488C68(v7);

  sub_1DD488E50();
  v9 = 0;
  if ((v3 - 1) <= 0xB)
  {
    v9 = qword_1DD64F850[(v3 - 1)];
  }

  v4 = sub_1DD4E099C(v9, v8, v6);

  return v4;
}

uint64_t sub_1DD488C68(uint64_t a1)
{
  sub_1DD487C10(a1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v3 |= qword_1DD64F8B0[v5];
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1DD488CD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = sub_1DD63CBB8();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v13) != 1)
  {
    v14 = sub_1DD63CA08();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v13) != 1)
  {
    v15 = sub_1DD63CA08();
    (*(*(v13 - 8) + 8))(a2, v13);
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v15 = 0;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v16 = sub_1DD63FDA8();

LABEL_8:
  v17 = [v7 initWithStartDateComponents:v14 endDateComponents:v15 recurrenceRule:a3 userInput:v16 allDay:a6];

  return v17;
}

unint64_t sub_1DD488E50()
{
  result = qword_1ECCDD378;
  if (!qword_1ECCDD378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDD378);
  }

  return result;
}

unint64_t sub_1DD488E94()
{
  result = qword_1ECCDC740;
  if (!qword_1ECCDC740)
  {
    type metadata accessor for DateTime();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC740);
  }

  return result;
}

void OUTLINED_FUNCTION_3_35()
{
  v2 = *(v0 - 96);

  JUMPOUT(0x1E12B3DA0);
}

uint64_t DateTime.RecurrencePattern.DefinedRecurrencePattern.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DD640AA8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DD488FB0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return DateTime.RecurrencePattern.DefinedRecurrencePattern.init(rawValue:)(a1);
}

uint64_t sub_1DD488FBC@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.RecurrencePattern.DefinedRecurrencePattern.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

unint64_t sub_1DD48909C()
{
  result = qword_1ECCDD380;
  if (!qword_1ECCDD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD380);
  }

  return result;
}

_BYTE *_s24DefinedRecurrencePatternOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4891CC()
{
  result = qword_1ECCDD388;
  if (!qword_1ECCDD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD388);
  }

  return result;
}

uint64_t DateTime.__allocating_init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  OUTLINED_FUNCTION_1_47();
  v16 = swift_allocObject();
  DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t DateTime.__allocating_init(withDate:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_47();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  result = OUTLINED_FUNCTION_0_60(v2);
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t DateTime.__allocating_init(occurringIn:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_47();
  result = swift_allocObject();
  *(result + 56) = a1;
  *(result + 64) = 0;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 48) = 4;
  return result;
}

BOOL static DateTime.> infix(_:_:)()
{
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_1_8();
  return !static DateTime.<= infix(_:_:)();
}

BOOL static DateTime.<= infix(_:_:)()
{
  type metadata accessor for DateTime();
  v0 = OUTLINED_FUNCTION_1_8();
  if (static DateTime.< infix(_:_:)(v0, v1))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_1_8();
  return static DateTime.== infix(_:_:)(v3, v4);
}

BOOL static DateTime.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v4 = a2[2];
  if (!v4)
  {
    return 0;
  }

  type metadata accessor for DateTime.Date();
  if (static DateTime.Date.< infix(_:_:)(v2, v4))
  {
    return 1;
  }

  if (!static DateTime.Date.== infix(_:_:)(v2, v4))
  {
    goto LABEL_10;
  }

  v7 = a1[3];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = a2[3];
  if (!v8)
  {
    goto LABEL_10;
  }

  type metadata accessor for DateTime.Time();
  if (static DateTime.Time.< infix(_:_:)(v7, v8))
  {

    return 1;
  }

  if (!static DateTime.Time.== infix(_:_:)(v7, v8))
  {
    goto LABEL_10;
  }

  v9 = a1[7];
  if (!v9)
  {

LABEL_19:

LABEL_10:

    return 0;
  }

  v10 = a2[7];
  if (!v10)
  {

    goto LABEL_19;
  }

  type metadata accessor for DateTime.DateTimeRange();

  v11 = static DateTime.DateTimeRange.< infix(_:_:)(v9, v10);

  return (v11 & 1) != 0;
}

BOOL static DateTime.>= infix(_:_:)()
{
  type metadata accessor for DateTime();
  v0 = OUTLINED_FUNCTION_1_8();
  return !static DateTime.< infix(_:_:)(v0, v1);
}

uint64_t DateTime.__allocating_init(withDate:time:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_47();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  result = OUTLINED_FUNCTION_0_60(v4);
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t DateTime.__allocating_init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_47();
  result = swift_allocObject();
  v13 = *a3;
  v14 = *a5;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v13;
  *(result + 40) = a4;
  *(result + 48) = v14;
  *(result + 56) = a6;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_1DD48967C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD4896F0(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1DD4896B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1DD489734(&v4);
}

uint64_t sub_1DD4896F0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 64);
  return result;
}

uint64_t sub_1DD489734(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_1DD489774()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030) - 8) + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290) - 8) + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = sub_1DD63D328();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  result = sub_1DD63CB68();
  v12 = *(v0 + 16);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v15 = *(v0 + 16);

    sub_1DD63CA38();
    v16 = *(v12 + 32);
    v17 = *(v12 + 40);
    sub_1DD63CAC8();
    v18 = *(v12 + 48);
    v19 = *(v12 + 56);
    sub_1DD63CAA8();
    v20 = *(v12 + 89);
    if (v20 != 7)
    {
      v21 = qword_1DD64FD00[v20];
    }

    sub_1DD63CB58();
  }

  v22 = *(v0 + 24);
  if (v22)
  {
    if (*(v22 + 24) == 1 || (v23 = *(v22 + 57), v23 == 2))
    {
    }

    else
    {
      if ((v23 & (*(v22 + 16) < 12)) == 0)
      {
        v24 = *(v22 + 16);
      }

      sub_1DD63CA88();
    }

    v25 = *(v22 + 32);
    v26 = *(v22 + 40);
    sub_1DD63CAF8();
    v27 = *(v22 + 48);
    v28 = *(v22 + 56);
    sub_1DD63CB18();
  }

  return result;
}

uint64_t DateTime.init(withDate:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return OUTLINED_FUNCTION_2_38();
}

uint64_t DateTime.init(withDate:time:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_2_38();
}

uint64_t DateTime.__allocating_init(withDate:time:occurringIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_47();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[7] = a3;
  v6[8] = 0;
  return OUTLINED_FUNCTION_0_60(v6);
}

uint64_t DateTime.init(withDate:time:occurringIn:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 56) = a3;
  *(v3 + 64) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  return OUTLINED_FUNCTION_5_38();
}

uint64_t DateTime.__allocating_init(withDefinedValue:)()
{
  OUTLINED_FUNCTION_1_47();
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 48) = 4;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t DateTime.init(withDefinedValue:)()
{
  result = v0;
  *(v0 + 40) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = 4;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t DateTime.__allocating_init(withTime:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_47();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  result = OUTLINED_FUNCTION_0_60(v2);
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t DateTime.init(withTime:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return OUTLINED_FUNCTION_2_38();
}

uint64_t DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v7 = *a3;
  v8 = *a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v7;
  *(v6 + 40) = a4;
  *(v6 + 48) = v8;
  *(v6 + 56) = a6;
  *(v6 + 64) = 0;
  return v6;
}

uint64_t DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v9 = v8;
  v16 = *a4;
  v17 = *a8;
  *(v9 + 64) = 0;
  v24 = v16;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  v18 = DateTime.Time.init(withHour:minute:second:meridiem:)(a1, a2, a3, &v24);
  v23 = v17;
  swift_allocObject();
  v19 = DateTime.Time.init(withHour:minute:second:meridiem:)(a5, a6, a7, &v23);
  *(v9 + 24) = v18;
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_23_5();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = v18;
  *(v20 + 32) = 1;
  *(v20 + 40) = 0;
  *(v20 + 48) = 4;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  OUTLINED_FUNCTION_23_5();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = v19;
  *(v21 + 32) = 1;
  *(v21 + 40) = 0;
  *(v21 + 48) = 4;
  *(v21 + 56) = 0;
  *(v21 + 64) = 0;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  *(v9 + 56) = DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v20, v21);
  *(v9 + 16) = 0;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 4;

  return v9;
}

uint64_t DateTime.__allocating_init(withStartHour:startMinute:startSecond:startMeridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  OUTLINED_FUNCTION_1_47();
  v8 = swift_allocObject();
  DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v9 = *a4;
  *(v5 + 64) = 0;
  v12 = v9;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  v10 = DateTime.Time.init(withHour:minute:second:meridiem:)(a1, a2, a3, &v12);
  *(v5 + 56) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = v10;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0;
  *(v5 + 48) = 4;
  return v5;
}

uint64_t DateTime.__allocating_init(withDate:occurringIn:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_47();
  v4 = swift_allocObject();
  v4[7] = a2;
  v4[8] = 0;
  v4[2] = a1;
  v4[3] = 0;
  return OUTLINED_FUNCTION_0_60(v4);
}

uint64_t DateTime.init(withDate:occurringIn:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  *(v2 + 64) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  return OUTLINED_FUNCTION_5_38();
}

uint64_t DateTime.init(occurringIn:)(uint64_t a1)
{
  *(v1 + 56) = a1;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  return OUTLINED_FUNCTION_5_38();
}

uint64_t sub_1DD489E08(void *a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (!v3)
  {
    v5 = 0;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 32);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(v6 + 24);

LABEL_9:
  v8 = a1[2];
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_23_5();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;
  *(v9 + 32) = 1;
  *(v9 + 40) = 0;
  *(v9 + 48) = 4;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  v10 = a1[7];
  if (v10 && (v11 = *(v10 + 32)) != 0)
  {
    v12 = *(v11 + 16);
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_23_5();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v7;
  *(v13 + 32) = 1;
  *(v13 + 40) = 0;
  *(v13 + 48) = 4;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  v20 = 38;
  v19 = 20;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v14 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, v9, v13, 0, 0, &v20, &v19);
  v15 = a1[2];
  v16 = a1[5];
  OUTLINED_FUNCTION_23_5();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v5;
  *(v17 + 32) = 1;
  *(v17 + 40) = v16;
  *(v17 + 48) = 4;
  *(v17 + 56) = v14;
  *(v17 + 64) = 0;

  return v17;
}

uint64_t sub_1DD489FC8(void *a1)
{
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_64();
    sub_1DD481A74();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_64();
    sub_1DD5FBA5C();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 32) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](0);
  }

  if (*(v1 + 40))
  {
    OUTLINED_FUNCTION_64();
    sub_1DD57D78C(a1);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (!*(v1 + 56))
  {
    return OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_64();
  return sub_1DD49CDC8();
}

BOOL static DateTime.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    type metadata accessor for DateTime.Date();

    v6 = static DateTime.Date.== infix(_:_:)(v4, v5);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  type metadata accessor for DateTime.Time();
  if (!static DateTime.Time.== infix(_:_:)(v7, v8))
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    type metadata accessor for DateTime.DateTimeRange();

    v12 = static DateTime.DateTimeRange.== infix(_:_:)(v10);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  result = (v13 | v14) == 0;
  if (v13)
  {
    if (v14)
    {
      type metadata accessor for DateTime.RecurrencePattern();

      v15 = OUTLINED_FUNCTION_1_8();
      v17 = static DateTime.RecurrencePattern.== infix(_:_:)(v15, v16);

      return v17 & 1;
    }
  }

  return result;
}

uint64_t sub_1DD48A1FC()
{
  if (v0[2])
  {
    OUTLINED_FUNCTION_23_15();
    v1 = sub_1DD481F00();
    MEMORY[0x1E12B2260](v1);

    sub_1DD3BE2A4();
    v3 = v2;
    if (*(v2 + 16) >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v3 = v13;
    }

    OUTLINED_FUNCTION_16_22();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (v0[3])
  {
    OUTLINED_FUNCTION_23_15();
    v4 = sub_1DD5FBC68();
    MEMORY[0x1E12B2260](v4);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v3 = v14;
    }

    if (*(v3 + 16) >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v3 = v15;
    }

    OUTLINED_FUNCTION_16_22();
  }

  if (v0[7])
  {

    v5 = sub_1DD49D2E4();
    MEMORY[0x1E12B2260](v5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v3 = v16;
    }

    if (*(v3 + 16) >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v3 = v17;
    }

    OUTLINED_FUNCTION_16_22();
  }

  if (v0[5])
  {

    sub_1DD6408D8();

    v6 = sub_1DD57DA68();
    MEMORY[0x1E12B2260](v6);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v3 = v18;
    }

    v7 = *(v3 + 16);
    if (v7 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v3 = v19;
    }

    *(v3 + 16) = v7 + 1;
    v8 = v3 + 16 * v7;
    *(v8 + 32) = 0xD000000000000012;
    *(v8 + 40) = 0x80000001DD66D350;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v9 = sub_1DD63FD58();
  v11 = v10;

  MEMORY[0x1E12B2260](v9, v11);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x656D695465746144;
}

uint64_t sub_1DD48A504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701669236 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001DD66D3A0 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C61726F706D6574 && a2 == 0xEE00746E65746E49;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6972727563636FLL && a2 == 0xEB000000006E4967;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000015 && 0x80000001DD66D3D0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD48A750(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 1701669236;
      break;
    case 2:
      result = 0x5664656E69666564;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6C61726F706D6574;
      break;
    case 5:
      result = 0x6E6972727563636FLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD48A838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD48A504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD48A860(uint64_t a1)
{
  v2 = sub_1DD48B254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD48A89C(uint64_t a1)
{
  v2 = sub_1DD48B254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *DateTime.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return v0;
}

uint64_t DateTime.__deallocating_deinit()
{
  DateTime.deinit();
  OUTLINED_FUNCTION_1_47();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD48A93C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD390, &qword_1DD64FA38);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD48B254();
  sub_1DD640EF8();
  v25 = *(v3 + 16);
  LOBYTE(v24) = 0;
  type metadata accessor for DateTime.Date();
  OUTLINED_FUNCTION_9_25();
  sub_1DD48B4A0(v14, 255, v15);
  OUTLINED_FUNCTION_4_31();
  if (!v2)
  {
    v25 = *(v3 + 24);
    LOBYTE(v24) = 1;
    type metadata accessor for DateTime.Time();
    OUTLINED_FUNCTION_12_21();
    sub_1DD48B4A0(v16, 255, v17);
    OUTLINED_FUNCTION_4_31();
    LOBYTE(v25) = *(v3 + 32);
    LOBYTE(v24) = 2;
    sub_1DD48B2A8();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C08();
    v25 = *(v3 + 40);
    LOBYTE(v24) = 3;
    type metadata accessor for DateTime.RecurrencePattern();
    OUTLINED_FUNCTION_11_25();
    sub_1DD48B4A0(v18, 255, v19);
    OUTLINED_FUNCTION_4_31();
    LOBYTE(v25) = *(v3 + 48);
    LOBYTE(v24) = 4;
    sub_1DD48B2FC();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C08();
    v25 = *(v3 + 56);
    LOBYTE(v24) = 5;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_10_28();
    sub_1DD48B4A0(v20, 255, v21);
    OUTLINED_FUNCTION_4_31();
    swift_beginAccess();
    v24 = *(v3 + 64);
    v23[15] = 6;
    sub_1DD48B350();
    OUTLINED_FUNCTION_10_4();
    sub_1DD640C68();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1DD48AC3C()
{
  sub_1DD640E28();
  sub_1DD489FC8(v1);
  return sub_1DD640E78();
}

uint64_t DateTime.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_47();
  v2 = swift_allocObject();
  DateTime.init(from:)(a1);
  return v2;
}

uint64_t DateTime.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD3D0, &qword_1DD64FA40);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  *(v1 + 64) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD48B254();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DateTime.Date();
    OUTLINED_FUNCTION_9_25();
    sub_1DD48B4A0(v9, 255, v10);
    OUTLINED_FUNCTION_3_36();
    *(v1 + 16) = v20;
    type metadata accessor for DateTime.Time();
    OUTLINED_FUNCTION_12_21();
    sub_1DD48B4A0(v11, 255, v12);
    OUTLINED_FUNCTION_3_36();
    *(v1 + 24) = v20;
    sub_1DD48B3A4();
    OUTLINED_FUNCTION_17_21();
    sub_1DD640B18();
    *(v1 + 32) = v20;
    type metadata accessor for DateTime.RecurrencePattern();
    OUTLINED_FUNCTION_11_25();
    sub_1DD48B4A0(v13, 255, v14);
    OUTLINED_FUNCTION_3_36();
    *(v1 + 40) = v20;
    sub_1DD48B3F8();
    OUTLINED_FUNCTION_17_21();
    sub_1DD640B18();
    *(v1 + 48) = v20;
    type metadata accessor for DateTime.DateTimeRange();
    LOBYTE(v21) = 5;
    OUTLINED_FUNCTION_10_28();
    sub_1DD48B4A0(v16, 255, v17);
    OUTLINED_FUNCTION_3_36();
    *(v1 + 56) = v20;
    sub_1DD48B44C();
    OUTLINED_FUNCTION_17_21();
    sub_1DD640B78();
    v18 = OUTLINED_FUNCTION_8_27();
    v19(v18);
    swift_beginAccess();
    *(v1 + 64) = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD48B0EC()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD489FC8(v3);
  return sub_1DD640E78();
}

BOOL sub_1DD48B174(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.<= infix(_:_:)();
}

BOOL sub_1DD48B198(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.>= infix(_:_:)();
}

BOOL sub_1DD48B1BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.> infix(_:_:)();
}

uint64_t sub_1DD48B1E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD48B254()
{
  result = qword_1ECCDD398;
  if (!qword_1ECCDD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD398);
  }

  return result;
}

unint64_t sub_1DD48B2A8()
{
  result = qword_1ECCDD3B0;
  if (!qword_1ECCDD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3B0);
  }

  return result;
}

unint64_t sub_1DD48B2FC()
{
  result = qword_1ECCDD3C0;
  if (!qword_1ECCDD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3C0);
  }

  return result;
}

unint64_t sub_1DD48B350()
{
  result = qword_1ECCDD3C8;
  if (!qword_1ECCDD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3C8);
  }

  return result;
}

unint64_t sub_1DD48B3A4()
{
  result = qword_1ECCDD3E8;
  if (!qword_1ECCDD3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3E8);
  }

  return result;
}

unint64_t sub_1DD48B3F8()
{
  result = qword_1ECCDD3F8;
  if (!qword_1ECCDD3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD3F8);
  }

  return result;
}

unint64_t sub_1DD48B44C()
{
  result = qword_1ECCDD400;
  if (!qword_1ECCDD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD400);
  }

  return result;
}

uint64_t sub_1DD48B4A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for DateTime.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD48B7DC()
{
  result = qword_1ECCDD410;
  if (!qword_1ECCDD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD410);
  }

  return result;
}

unint64_t sub_1DD48B834()
{
  result = qword_1ECCDD418;
  if (!qword_1ECCDD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD418);
  }

  return result;
}

unint64_t sub_1DD48B88C()
{
  result = qword_1ECCDD420;
  if (!qword_1ECCDD420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD420);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_36()
{

  return sub_1DD640B18();
}

_BYTE *_s5BoundOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD48BBA0()
{
  OUTLINED_FUNCTION_79();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD48BCB0()
{
  OUTLINED_FUNCTION_0_61();
  v1 = dword_1DD64FDE4[v0];
  sub_1DD640E58();
  return sub_1DD640E78();
}

uint64_t sub_1DD48BD10()
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](0);
  return sub_1DD640E78();
}

uint64_t sub_1DD48BD70()
{
  OUTLINED_FUNCTION_0_61();
  MEMORY[0x1E12B3140](v0 + 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48BE34(__int16 a1)
{
  OUTLINED_FUNCTION_79();
  sub_1DD538ED0(a1);
  OUTLINED_FUNCTION_2_39();

  return sub_1DD640E78();
}

uint64_t sub_1DD48BEE8()
{
  OUTLINED_FUNCTION_0_61();
  MEMORY[0x1E12B3140](qword_1DD64FF58[v0]);
  return sub_1DD640E78();
}

uint64_t sub_1DD48BF84()
{
  OUTLINED_FUNCTION_0_61();
  MEMORY[0x1E12B3140](v0 & 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48C008(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_79();
  a2(a1);
  OUTLINED_FUNCTION_2_39();

  return sub_1DD640E78();
}

uint64_t sub_1DD48C094()
{
  OUTLINED_FUNCTION_79();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD48C154(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_79();
  a2(v5, a1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48C19C()
{
  OUTLINED_FUNCTION_0_61();
  MEMORY[0x1E12B3140](v0);
  return sub_1DD640E78();
}

uint64_t sub_1DD48C1D8(uint64_t a1)
{
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](a1);
  return sub_1DD640E78();
}

uint64_t sub_1DD48C230()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD48C27C(char a1)
{
  if (!a1)
  {
    return 0x7472617473;
  }

  if (a1 == 1)
  {
    return 6581861;
  }

  return 0x746573746F6ELL;
}

uint64_t sub_1DD48C2E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD48C230();
  *a2 = result;
  return result;
}

uint64_t sub_1DD48C318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD48C27C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD48C348()
{
  result = qword_1ECCDD428;
  if (!qword_1ECCDD428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD428);
  }

  return result;
}

uint64_t sub_1DD48C3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D218();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s19ConvergenceStrategyOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC168, &unk_1DD64FFB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_1DD3DD8F4(a1, &v22 - v16);
  sub_1DD3DD8F4(a2, &v17[v18]);
  switch(__swift_getEnumTagSinglePayload(v17, 3, v4))
  {
    case 1u:
      if (OUTLINED_FUNCTION_0_62() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (OUTLINED_FUNCTION_0_62() == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 3u:
      if (OUTLINED_FUNCTION_0_62() != 3)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_1DD3DD958(v17);
      v19 = 1;
      break;
    default:
      sub_1DD3DD8F4(v17, v12);
      if (OUTLINED_FUNCTION_0_62())
      {
        (*(v5 + 8))(v12, v4);
LABEL_7:
        sub_1DD48C670(v17);
        v19 = 0;
      }

      else
      {
        (*(v5 + 32))(v8, &v17[v18], v4);
        v19 = sub_1DD63D208();
        v21 = *(v5 + 8);
        v21(v8, v4);
        v21(v12, v4);
        sub_1DD3DD958(v17);
      }

      break;
  }

  return v19 & 1;
}

uint64_t _s19ConvergenceStrategyOMa()
{
  result = qword_1ECCDD430;
  if (!qword_1ECCDD430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD48C670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC168, &unk_1DD64FFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD48C700()
{
  v0 = sub_1DD63D218();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t _s5GrainOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5GrainOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD48C8FC()
{
  OUTLINED_FUNCTION_2_40();
  v3 = v2;
  v4 = v1;
  switch(v5)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_6_31();
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_10_29();
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_13_23();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_12_22();
      break;
    case 5:
      v4 = OUTLINED_FUNCTION_27_14();
      break;
    case 6:
      v4 = OUTLINED_FUNCTION_8_28();
      break;
    case 7:
      v4 = OUTLINED_FUNCTION_0_63();
      break;
    case 8:
      v4 = OUTLINED_FUNCTION_11_26();
      break;
    case 9:
      v4 = OUTLINED_FUNCTION_9_26();
      break;
    case 10:
      v4 = OUTLINED_FUNCTION_7_31();
      break;
    case 11:
      v4 = OUTLINED_FUNCTION_22_14();
      break;
    default:
      break;
  }

  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_3_37();
      break;
    case 2:
      OUTLINED_FUNCTION_15_19();
      break;
    case 3:
      OUTLINED_FUNCTION_18_18();
      break;
    case 4:
      OUTLINED_FUNCTION_17_22();
      break;
    case 5:
      OUTLINED_FUNCTION_26_16();
      break;
    case 6:
      OUTLINED_FUNCTION_5_39();
      break;
    case 7:
      OUTLINED_FUNCTION_1_48();
      break;
    case 8:
      OUTLINED_FUNCTION_16_23();
      break;
    case 9:
      OUTLINED_FUNCTION_14_24();
      break;
    case 10:
      OUTLINED_FUNCTION_4_32();
      break;
    case 11:
      OUTLINED_FUNCTION_21_15();
      break;
    default:
      break;
  }

  if (v4 == v1 && v0 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_17();

    v8 = v7 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_1DD48CA6C()
{
  OUTLINED_FUNCTION_25_9();
  v4 = v3 | 0x6973754274780000;
  if (v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v0)
  {
    v6 = 0xEF7961447373656ELL;
  }

  else
  {
    v6 = v2;
  }

  if (v1)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = v4;
  }

  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0xEF7961447373656ELL;
  }

  if (v5 == v7 && v6 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = sub_1DD640CD8();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

BOOL sub_1DD48CB28()
{
  v0 = *(OUTLINED_FUNCTION_24_11() + 24);
  v1 = sub_1DD63CFC8();
  return OUTLINED_FUNCTION_20_17(v1);
}

uint64_t sub_1DD48CBB4()
{
  OUTLINED_FUNCTION_2_40();
  v4 = v3;
  v5 = "ISLAMIC_UMALQURA";
  v6 = v2;
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_6_31();
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_10_29();
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_13_23();
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_12_22();
      break;
    case 5:
      v6 = 0xD000000000000010;
      v0 = 0x80000001DD668C10;
      break;
    case 6:
      v6 = OUTLINED_FUNCTION_8_28();
      break;
    case 7:
      v6 = OUTLINED_FUNCTION_0_63();
      break;
    case 8:
      v6 = OUTLINED_FUNCTION_11_26();
      break;
    case 9:
      v6 = OUTLINED_FUNCTION_9_26();
      break;
    case 10:
      v6 = OUTLINED_FUNCTION_7_31();
      break;
    case 11:
      v6 = OUTLINED_FUNCTION_22_14();
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_3_37();
      break;
    case 2:
      OUTLINED_FUNCTION_15_19();
      break;
    case 3:
      OUTLINED_FUNCTION_18_18();
      break;
    case 4:
      OUTLINED_FUNCTION_17_22();
      break;
    case 5:
      v2 = 0xD000000000000010;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    case 6:
      OUTLINED_FUNCTION_5_39();
      break;
    case 7:
      OUTLINED_FUNCTION_1_48();
      break;
    case 8:
      OUTLINED_FUNCTION_16_23();
      break;
    case 9:
      OUTLINED_FUNCTION_14_24();
      break;
    case 10:
      OUTLINED_FUNCTION_4_32();
      break;
    case 11:
      OUTLINED_FUNCTION_21_15();
      break;
    default:
      break;
  }

  if (v6 == v2 && v0 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_19_17();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1DD48CD38(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x697375427478656ELL;
  }

  if (v2)
  {
    v4 = 0xEF7961447373656ELL;
  }

  else
  {
    v4 = 0x80000001DD668CC0;
  }

  if (a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x697375427478656ELL;
  }

  if (a2)
  {
    v6 = 0x80000001DD668CC0;
  }

  else
  {
    v6 = 0xEF7961447373656ELL;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1DD640CD8();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

BOOL sub_1DD48CDFC()
{
  v0 = *(OUTLINED_FUNCTION_24_11() + 24);
  v1 = sub_1DD63CFC8();
  return OUTLINED_FUNCTION_20_17(v1);
}

uint64_t sub_1DD48CE70()
{
  OUTLINED_FUNCTION_2_40();
  v3 = v2;
  v4 = v1;
  switch(v5)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_6_31();
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_10_29();
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_13_23();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_12_22();
      break;
    case 5:
      v4 = OUTLINED_FUNCTION_27_14();
      break;
    case 6:
      v4 = OUTLINED_FUNCTION_8_28();
      break;
    case 7:
      v4 = OUTLINED_FUNCTION_0_63();
      break;
    case 8:
      v4 = OUTLINED_FUNCTION_11_26();
      break;
    case 9:
      v4 = OUTLINED_FUNCTION_9_26();
      break;
    case 10:
      v4 = OUTLINED_FUNCTION_7_31();
      break;
    case 11:
      v4 = OUTLINED_FUNCTION_22_14();
      break;
    default:
      break;
  }

  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_3_37();
      break;
    case 2:
      OUTLINED_FUNCTION_15_19();
      break;
    case 3:
      OUTLINED_FUNCTION_18_18();
      break;
    case 4:
      OUTLINED_FUNCTION_17_22();
      break;
    case 5:
      OUTLINED_FUNCTION_26_16();
      break;
    case 6:
      OUTLINED_FUNCTION_5_39();
      break;
    case 7:
      OUTLINED_FUNCTION_1_48();
      break;
    case 8:
      OUTLINED_FUNCTION_16_23();
      break;
    case 9:
      OUTLINED_FUNCTION_14_24();
      break;
    case 10:
      OUTLINED_FUNCTION_4_32();
      break;
    case 11:
      OUTLINED_FUNCTION_21_15();
      break;
    default:
      break;
  }

  if (v4 == v1 && v0 == 0xE800000000000000)
  {
    v7 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_17();
  }

  return v7 & 1;
}

uint64_t sub_1DD48CFCC()
{
  OUTLINED_FUNCTION_25_9();
  v4 = v3 | 0x6973754274780000;
  if (v0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v0)
  {
    v6 = 0xEF7961447373656ELL;
  }

  else
  {
    v6 = v2;
  }

  if (v1)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = v4;
  }

  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0xEF7961447373656ELL;
  }

  if (v5 == v7 && v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_19_17();
  }

  return v10 & 1;
}

uint64_t sub_1DD48D068()
{
  v0 = *(OUTLINED_FUNCTION_24_11() + 24);

  return sub_1DD63CFC8();
}

BOOL sub_1DD48D0A4(void *a1, void *a2)
{
  v10 = a2[9];
  v12 = a2[10];
  v6 = a1[9];
  v8 = a1[10];
  sub_1DD3B7F10();
  v4 = OUTLINED_FUNCTION_23_16();
  if (v4 == -1)
  {
    return 1;
  }

  if (v4 == 1)
  {
    return 0;
  }

  v11 = a2[5];
  v13 = a2[6];
  v7 = a1[5];
  v9 = a1[6];
  return OUTLINED_FUNCTION_23_16() == -1;
}

unint64_t sub_1DD48D158(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

unint64_t sub_1DD48D168@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD48D158(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DD48D194@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD48D150(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1DD48D1F0()
{
  result = qword_1ECCDD440;
  if (!qword_1ECCDD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_19_17()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return type metadata accessor for LearnedDisambiguation();
}

_BYTE *_s7MeasureOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD48D420()
{
  result = qword_1ECCDD448;
  if (!qword_1ECCDD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD448);
  }

  return result;
}

unsigned __int8 *_s6SourceOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD7)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 0x26)
    {
      v7 = v6 - 37;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 5)
    {
      return (v7 - 4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 41;
    if (a2 + 41 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 41);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s6SourceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 41;
  if (a3 + 41 >= 0xFFFF00)
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

  if (a3 >= 0xD7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xD6)
  {
    v7 = ((a2 - 215) >> 8) + 1;
    *result = a2 + 41;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 41;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD48D5F8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x26)
  {
    return v1 - 37;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DD48D60C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 37;
  }

  return result;
}

BOOL sub_1DD48D62C(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case '&':
      if (v2 == 38)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case '\'':
      if (v2 == 39)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    case '(':
      if (v2 != 40)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    case ')':
      if (v2 != 41)
      {
        goto LABEL_11;
      }

LABEL_9:
      result = 1;
      break;
    default:
      if ((v2 - 38) >= 4)
      {
        result = *a1 == v2;
      }

      else
      {
LABEL_11:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference18DateTimeConstraintC5ValueO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 5)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DD48D6E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 25))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 6)
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

uint64_t sub_1DD48D728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1DD48D770(uint64_t result, unsigned int a2)
{
  v2 = a2 - 6;
  if (a2 >= 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 6;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1DD48D7A0()
{
  result = qword_1ECCDD450;
  if (!qword_1ECCDD450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD450);
  }

  return result;
}

uint64_t sub_1DD48D7F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  switch(v2)
  {
    case 0:
      if (v11)
      {
        return 0;
      }

      return v5 == v8;
    case 1:
      if (v11 != 1)
      {
        return 0;
      }

      return ((LODWORD(v8) ^ LODWORD(v5)) & 1) == 0;
    case 2:
      if (v11 != 2)
      {
        return 0;
      }

      v12 = *&v5 == *&v8;
      result = (*&v5 == *&v8) & v10;
      if (v12)
      {
        if (v7)
        {
          return result;
        }

        else
        {
          return (v6 == v9) & ~v10;
        }
      }

      return result;
    case 3:
      if (v11 != 3)
      {
        return 0;
      }

      if (*&v5 == *&v8 && v6 == v9)
      {
        if (v10 != v7)
        {
          return 0;
        }
      }

      else
      {
        v15 = sub_1DD640CD8();
        result = 0;
        if ((v15 & 1) == 0 || v10 != v7)
        {
          return result;
        }
      }

      result = (v10 & 0xFF00) == 0x1400 && (v7 & 0xFF00) == 5120;
      if ((v7 & 0xFF00) != 0x1400 && (v10 & 0xFF00) != 5120)
      {
        return ((v10 ^ v7) & 0xFF00) == 0;
      }

      return result;
    case 4:
      if (v11 != 4)
      {
        return 0;
      }

      return sub_1DD3AE3B4(LOBYTE(v5), SLOBYTE(v8));
    case 5:
      if (v11 != 5)
      {
        return 0;
      }

      if (v5 != v8 || (v9 ^ v6) != 0)
      {
        return 0;
      }

      v17 = *(a1 + 16);

      return sub_1DD57D41C(v17, v10);
    case 6:
      if (v6 | *&v5 | v7)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11 == 6;
      }

      return v18 && (v9 | *&v8 | v10) == 0;
    default:
      return 0;
  }
}

void sub_1DD48D9CC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  switch(v5)
  {
    case 1:
      MEMORY[0x1E12B3140](1);
      v8 = v2 & 1;
      goto LABEL_22;
    case 2:
      MEMORY[0x1E12B3140](2);
      MEMORY[0x1E12B3140](v2);
      if (v4)
      {
        goto LABEL_12;
      }

      sub_1DD640E48();
      v8 = v3;
      goto LABEL_22;
    case 3:
      MEMORY[0x1E12B3140](3);
      sub_1DD63FD28();
      MEMORY[0x1E12B3140](v4);
      if ((v4 & 0xFF00) == 0x1400)
      {
LABEL_12:
        sub_1DD640E48();
      }

      else
      {
        sub_1DD640E48();
        v8 = BYTE1(v4);
LABEL_22:
        MEMORY[0x1E12B3140](v8);
      }

      return;
    case 4:
      MEMORY[0x1E12B3140](4);

      sub_1DD408DD8();
      return;
    case 5:
      MEMORY[0x1E12B3140](5);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v2;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x1E12B3170](v9);
      MEMORY[0x1E12B3140](v3);

      sub_1DD57F490(a1, v4, v10, v11, v12, v13, v14, v15);
      return;
    case 6:
      v8 = 6;
      goto LABEL_22;
    default:
      MEMORY[0x1E12B3140](0);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1E12B3170](v7);
      return;
  }
}

uint64_t sub_1DD48DB34()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1DD640E28();
  sub_1DD48D9CC(v4);
  return sub_1DD640E78();
}

uint64_t sub_1DD48DB9C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1DD640E28();
  sub_1DD48D9CC(v4);
  return sub_1DD640E78();
}

uint64_t sub_1DD48DBF4(uint64_t a1, void (*a2)(uint64_t))
{
  v46 = sub_1DD63C868();
  v3 = OUTLINED_FUNCTION_0(v46);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v45 = v9 - v8;
  v44 = sub_1DD63D078();
  v10 = OUTLINED_FUNCTION_0(v44);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v43 = v15;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1DD42B688();
    v18 = v52;
    result = sub_1DD55B198(a1);
    v21 = result;
    v22 = 0;
    v51 = a1 + 56;
    v42 = v5;
    v40 = a1 + 64;
    v41 = v16;
    v23 = v5;
    v48 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v21 < 1 << *(a1 + 32))
      {
        v24 = v21 >> 6;
        if ((*(v51 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v19)
        {
          goto LABEL_27;
        }

        v50 = v20;
        v49 = v19;
        v25 = v23;
        v26 = (*(v23 + 16))(v45, *(a1 + 48) + *(v23 + 72) * v21, v46);
        a2(v26);
        v27 = v18;
        (*(v25 + 8))(v45, v46);
        v28 = *(v18 + 16);
        if (v28 >= *(v18 + 24) >> 1)
        {
          sub_1DD42B688();
          v27 = v18;
        }

        *(v27 + 16) = v28 + 1;
        OUTLINED_FUNCTION_18_3();
        v18 = v27;
        result = (*(v30 + 32))(v27 + v29 + *(v30 + 72) * v28, v43);
        if (v50)
        {
          goto LABEL_31;
        }

        a1 = v48;
        v31 = 1 << *(v48 + 32);
        v23 = v42;
        if (v21 >= v31)
        {
          goto LABEL_28;
        }

        v32 = *(v51 + 8 * v24);
        if ((v32 & (1 << v21)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v48 + 36) != v49)
        {
          goto LABEL_30;
        }

        v33 = v32 & (-2 << (v21 & 0x3F));
        if (v33)
        {
          v31 = __clz(__rbit64(v33)) | v21 & 0x7FFFFFFFFFFFFFC0;
          v34 = v41;
        }

        else
        {
          v35 = v24 << 6;
          v36 = v24 + 1;
          v34 = v41;
          v37 = (v40 + 8 * v24);
          while (v36 < (v31 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              result = sub_1DD3AA558(v21, v49, 0);
              v23 = v42;
              v31 = __clz(__rbit64(v38)) + v35;
              goto LABEL_19;
            }
          }

          result = sub_1DD3AA558(v21, v49, 0);
          v23 = v42;
LABEL_19:
          a1 = v48;
        }

        if (++v22 == v34)
        {
          return v18;
        }

        v20 = 0;
        v19 = *(a1 + 36);
        v21 = v31;
        if (v31 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}