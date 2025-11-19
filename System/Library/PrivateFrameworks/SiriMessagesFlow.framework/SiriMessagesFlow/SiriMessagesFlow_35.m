uint64_t sub_267E77C48(void *a1)
{
  v1 = [a1 addressComponents];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSTextCheckingKey(0);
  sub_267E77CBC();
  v3 = sub_267EF8EF8();

  return v3;
}

unint64_t sub_267E77CBC()
{
  result = qword_280228BE8;
  if (!qword_280228BE8)
  {
    type metadata accessor for NSTextCheckingKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228BE8);
  }

  return result;
}

uint64_t sub_267E77D14(void *a1)
{
  v1 = [a1 originalURL];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow25MessageReadingSummaryTypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_267E77D94(uint64_t a1, unsigned int a2)
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

uint64_t sub_267E77DD4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_267E77E1C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_267E77E48()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 128) = v1;
  OUTLINED_FUNCTION_31_27(v2);
  v3 = sub_267EF4578();
  *(v0 + 24) = v3;
  OUTLINED_FUNCTION_30_0(v3);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4228();
  *(v0 + 48) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v0 + 56) = v8;
  v10 = *(v9 + 64) + 15;
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 72) = swift_task_alloc();
  *(v0 + 80) = swift_task_alloc();
  v11 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  *(v0 + 88) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267E77F7C()
{
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 128);
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(v0 + 96) = OUTLINED_FUNCTION_56_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 104) = v4;
  *v4 = v5;
  if (v2)
  {
    *(v3 + 8) = sub_267E782A8;
    v6 = *(v0 + 64);
    v7 = 1;
  }

  else
  {
    *(v3 + 8) = sub_267E78088;
    v8 = *(v0 + 72);
    OUTLINED_FUNCTION_26_35();
  }

  return sub_267CEAE1C(v6, v7);
}

uint64_t sub_267E78088()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E78180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = v14[12];
  v16 = v14[10];
  v17 = v14[7];
  v32 = v14[11];
  v33 = v14[8];
  v18 = v14[5];
  v19 = v14[6];
  v21 = v14[3];
  v20 = v14[4];
  v22 = v14[2];
  (*(v17 + 32))(v16, v14[9], v19);
  (*(v20 + 104))(v18, *MEMORY[0x277D5BF68], v21);
  sub_267EF41C8();

  (*(v20 + 8))(v18, v21);
  (*(v17 + 8))(v16, v19);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_267E782A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E783A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = v14[12];
  v16 = v14[10];
  v17 = v14[7];
  v32 = v14[11];
  v33 = v14[9];
  v18 = v14[5];
  v19 = v14[6];
  v21 = v14[3];
  v20 = v14[4];
  v22 = v14[2];
  (*(v17 + 32))(v16, v14[8], v19);
  (*(v20 + 104))(v18, *MEMORY[0x277D5BF68], v21);
  sub_267EF41C8();

  (*(v20 + 8))(v18, v21);
  (*(v17 + 8))(v16, v19);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_267E784C8()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 128) = v1;
  OUTLINED_FUNCTION_31_27(v2);
  v3 = sub_267EF4578();
  *(v0 + 24) = v3;
  OUTLINED_FUNCTION_30_0(v3);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4228();
  *(v0 + 48) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v0 + 56) = v8;
  v10 = *(v9 + 64) + 15;
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 72) = swift_task_alloc();
  *(v0 + 80) = swift_task_alloc();
  v11 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  *(v0 + 88) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267E785FC()
{
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 128);
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(v0 + 96) = OUTLINED_FUNCTION_56_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 104) = v4;
  *v4 = v5;
  if (v2)
  {
    *(v3 + 8) = sub_267E78A04;
    v6 = *(v0 + 64);
    OUTLINED_FUNCTION_26_35();
    v9 = 1;
  }

  else
  {
    *(v3 + 8) = sub_267E78714;
    v10 = *(v0 + 72);
    OUTLINED_FUNCTION_26_35();
    v9 = 0;
  }

  return sub_267CEB050(v7, v8, 0, v9);
}

uint64_t sub_267E78714()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E7880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v27;
  a22 = v28;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  (*(*(v22 + 56) + 32))(*(v22 + 80), *(v22 + 72), *(v22 + 48));
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v22 + 128);
    v33 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    a11 = v23;
    *v33 = 136315138;
    if (v32)
    {
      v34 = 0x657369636E6F63;
    }

    else
    {
      v34 = 0x636972656E6567;
    }

    v24 = sub_267BA33E8(v34, 0xE700000000000000, &a11);

    *(v33 + 4) = v24;
    OUTLINED_FUNCTION_33_1(&dword_267B93000, v35, v36, "#MessageReadingDialogFactory returning %s multilingual hint dialog");
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_21_32();
  v37 = *MEMORY[0x277D5BF68];
  v38 = OUTLINED_FUNCTION_30_35();
  v39(v38);
  sub_267EF41C8();

  (*(v23 + 8))(v25, v26);
  v40 = *(v24 + 8);
  v41 = OUTLINED_FUNCTION_73();
  v42(v41);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E78A04()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E78AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_65();
  a21 = v27;
  a22 = v28;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  (*(*(v22 + 56) + 32))(*(v22 + 80), *(v22 + 64), *(v22 + 48));
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v22 + 128);
    v33 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    a11 = v23;
    *v33 = 136315138;
    if (v32)
    {
      v34 = 0x657369636E6F63;
    }

    else
    {
      v34 = 0x636972656E6567;
    }

    v24 = sub_267BA33E8(v34, 0xE700000000000000, &a11);

    *(v33 + 4) = v24;
    OUTLINED_FUNCTION_33_1(&dword_267B93000, v35, v36, "#MessageReadingDialogFactory returning %s multilingual hint dialog");
    __swift_destroy_boxed_opaque_existential_0(v23);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_21_32();
  v37 = *MEMORY[0x277D5BF68];
  v38 = OUTLINED_FUNCTION_30_35();
  v39(v38);
  sub_267EF41C8();

  (*(v23 + 8))(v25, v26);
  v40 = *(v24 + 8);
  v41 = OUTLINED_FUNCTION_73();
  v42(v41);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64_3();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E78CF8()
{
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_32_23();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_267E78D90()
{
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_32_23();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_267E78E28()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 256) = v1;
  OUTLINED_FUNCTION_31_27(v2);
  v3 = sub_267EF4578();
  *(v0 + 24) = v3;
  OUTLINED_FUNCTION_30_0(v3);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4228();
  *(v0 + 48) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v0 + 56) = v8;
  v10 = *(v9 + 64) + 15;
  *(v0 + 64) = swift_task_alloc();
  *(v0 + 72) = swift_task_alloc();
  *(v0 + 80) = swift_task_alloc();
  *(v0 + 88) = swift_task_alloc();
  *(v0 + 96) = swift_task_alloc();
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  *(v0 + 120) = swift_task_alloc();
  v11 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  *(v0 + 128) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_267E78F98()
{
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 256);
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  *(v0 + 136) = sub_267EF78E8();
  switch(v2)
  {
    case 1:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 160) = v17;
      *v17 = v18;
      v17[1] = sub_267E7952C;
      v19 = *(v0 + 104);
      OUTLINED_FUNCTION_26_35();
      goto LABEL_12;
    case 2:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 192) = v11;
      *v11 = v12;
      v11[1] = sub_267E7996C;
      v13 = *(v0 + 88);
      OUTLINED_FUNCTION_26_35();
      goto LABEL_10;
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 176) = v14;
      *v14 = v15;
      v14[1] = sub_267E79750;
      v5 = *(v0 + 96);
      v6 = 1;
LABEL_10:
      v16 = 1;
      goto LABEL_13;
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 208) = v7;
      *v7 = v8;
      v7[1] = sub_267E79B9C;
      v9 = *(v0 + 80);

      return sub_267CEB2D4();
    case 5:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 224) = v20;
      *v20 = v21;
      v20[1] = sub_267E79DD0;
      v22 = *(v0 + 72);

      return sub_267CEB384();
    case 6:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 240) = v23;
      *v23 = v24;
      v23[1] = sub_267E7A00C;
      v25 = *(v0 + 64);

      return sub_267CEB434();
    default:
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 144) = v3;
      *v3 = v4;
      v3[1] = sub_267E792E0;
      v5 = *(v0 + 112);
      v6 = 1;
LABEL_12:
      v16 = 0;
LABEL_13:

      return sub_267CEB4E4(v5, v6, v16);
  }
}

uint64_t sub_267E792E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E793D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = v18[17];
  v20 = v18[15];
  v41 = v18[16];
  v42 = v18[13];
  v43 = v18[12];
  v44 = v18[11];
  v45 = v18[10];
  v46 = v18[9];
  v47 = v18[8];
  v21 = v18[6];
  v22 = v18[7];
  v24 = v18[4];
  v23 = v18[5];
  v26 = v18[2];
  v25 = v18[3];
  (*(v22 + 32))(v20, v18[14], v21);
  v27 = *MEMORY[0x277D5BF68];
  v28 = OUTLINED_FUNCTION_11_47();
  v29(v28);
  sub_267EF41C8();

  v30 = OUTLINED_FUNCTION_24_37();
  v31(v30);
  (*(v22 + 8))(v20, v21);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, a16, a17, a18);
}

uint64_t sub_267E7952C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E79624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = v18[17];
  v21 = v18[15];
  v44 = v18[16];
  v45 = v18[14];
  v22 = v18[12];
  v23 = v18[13];
  OUTLINED_FUNCTION_22_31();
  v25 = v18[2];
  v24 = v18[3];
  v26 = OUTLINED_FUNCTION_6_48();
  v27(v26, v23, v19);
  v28 = *MEMORY[0x277D5BF68];
  v29 = OUTLINED_FUNCTION_11_47();
  v30(v29);
  sub_267EF41C8();

  v31 = OUTLINED_FUNCTION_24_37();
  v32(v31);
  v33 = OUTLINED_FUNCTION_25_39();
  v34(v33);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E79750()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E79848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = v18[17];
  v21 = v18[15];
  v44 = v18[16];
  v45 = v18[14];
  v23 = v18[12];
  v22 = v18[13];
  OUTLINED_FUNCTION_22_31();
  v25 = v18[2];
  v24 = v18[3];
  v26 = OUTLINED_FUNCTION_6_48();
  v27(v26, v23, v19);
  v28 = *MEMORY[0x277D5BF68];
  v29 = OUTLINED_FUNCTION_11_47();
  v30(v29);
  OUTLINED_FUNCTION_35_28();

  v31 = OUTLINED_FUNCTION_24_37();
  v32(v31);
  v33 = OUTLINED_FUNCTION_25_39();
  v34(v33);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E7996C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E79A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = v18[16];
  v20 = v18[17];
  OUTLINED_FUNCTION_8_52();
  v21 = v18[11];
  v44 = v18[10];
  v45 = v18[9];
  v46 = v18[8];
  v22 = v18[6];
  v23 = v18[7];
  v25 = v18[4];
  v24 = v18[5];
  v27 = v18[2];
  v26 = v18[3];
  v28 = OUTLINED_FUNCTION_6_48();
  v29(v28, v21, v22);
  v30 = *MEMORY[0x277D5BF68];
  v31 = OUTLINED_FUNCTION_11_47();
  v32(v31);
  OUTLINED_FUNCTION_35_28();

  (*(v25 + 8))(v24, v26);
  v33 = OUTLINED_FUNCTION_25_39();
  v34(v33);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, v44, v45, v46, a16, a17, a18);
}

uint64_t sub_267E79B9C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E79C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = v18[16];
  v20 = v18[17];
  OUTLINED_FUNCTION_8_52();
  v21 = v18[10];
  v45 = v18[11];
  v46 = v18[9];
  v47 = v18[8];
  v22 = v18[6];
  v23 = v18[7];
  v25 = v18[4];
  v24 = v18[5];
  v27 = v18[2];
  v26 = v18[3];
  v28 = OUTLINED_FUNCTION_6_48();
  v29(v28, v21, v22);
  v30 = *MEMORY[0x277D5BF68];
  v31 = OUTLINED_FUNCTION_11_47();
  v32(v31);
  OUTLINED_FUNCTION_35_28();

  (*(v25 + 8))(v24, v26);
  v33 = *(v23 + 8);
  v34 = OUTLINED_FUNCTION_73();
  v35(v34);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, v45, v46, v47, a16, a17, a18);
}

uint64_t sub_267E79DD0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E79EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = v18[16];
  v20 = v18[17];
  OUTLINED_FUNCTION_8_52();
  v42 = v18[11];
  v43 = v18[10];
  v21 = v18[9];
  v44 = v18[8];
  v22 = v18[6];
  v23 = v18[7];
  v25 = v18[4];
  v24 = v18[5];
  v27 = v18[2];
  v26 = v18[3];
  v28 = OUTLINED_FUNCTION_6_48();
  v29(v28, v21, v22);
  (*(v25 + 104))(v24, *MEMORY[0x277D5BF68], v26);
  OUTLINED_FUNCTION_35_28();

  (*(v25 + 8))(v24, v26);
  v30 = *(v23 + 8);
  v31 = OUTLINED_FUNCTION_73();
  v32(v31);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, v42, v43, v44, a16, a17, a18);
}

uint64_t sub_267E7A00C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E7A104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = v18[16];
  v20 = v18[17];
  OUTLINED_FUNCTION_8_52();
  v42 = v18[11];
  v43 = v18[10];
  v21 = v18[8];
  v44 = v18[9];
  v22 = v18[6];
  v23 = v18[7];
  v25 = v18[4];
  v24 = v18[5];
  v27 = v18[2];
  v26 = v18[3];
  v28 = OUTLINED_FUNCTION_6_48();
  v29(v28, v21, v22);
  (*(v25 + 104))(v24, *MEMORY[0x277D5BF68], v26);
  sub_267EF41C8();

  (*(v25 + 8))(v24, v26);
  v30 = *(v23 + 8);
  v31 = OUTLINED_FUNCTION_73();
  v32(v31);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, v42, v43, v44, a16, a17, a18);
}

uint64_t sub_267E7A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 152);
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 168);
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 184);
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 200);
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 216);
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 232);
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 248);
  OUTLINED_FUNCTION_0_69();

  OUTLINED_FUNCTION_5_65();
  OUTLINED_FUNCTION_64_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267E7A720()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_27(v1);
  v2 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v2);
  v4 = *(v3 + 64);
  *(v0 + 24) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E7A798()
{
  OUTLINED_FUNCTION_12();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v1 = v0[3];
  type metadata accessor for SearchForMessagesCATs();
  sub_267EF7B68();
  v0[4] = OUTLINED_FUNCTION_56_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v2;
  *v2 = v3;
  v2[1] = sub_267E7A868;
  v4 = v0[2];

  return sub_267CE9318();
}

uint64_t sub_267E7A868()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E7A960()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267E7A9C0()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_267E7AA30(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x2822009F8](sub_267E7AA50, 0, 0);
}

uint64_t sub_267E7AA50()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[17] + 64), *(v0[17] + 88));
  if (sub_267BCF4EC())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_267EF8A08();
    v0[18] = __swift_project_value_buffer(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95C8();
    if (os_log_type_enabled(v3, v4))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#NetworkConnectivityCheckFlow device is offline");
      OUTLINED_FUNCTION_32_0();
    }

    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_267E7AC6C;
    v8 = v0[17];

    return sub_267E7B26C();
  }

  else
  {
    *(v0[17] + 56) = 0;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95C8();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v13, v14, "#NetworkConnectivityCheckFlow device is online");
      OUTLINED_FUNCTION_32_0();
    }

    v15 = v0[16];

    sub_267EF4018();
    OUTLINED_FUNCTION_17();

    return v16();
  }
}

uint64_t sub_267E7AC6C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 152);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 160) = v0;

  if (v0)
  {
    v7 = sub_267E7AF68;
  }

  else
  {
    v7 = sub_267E7AD70;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E7AD70()
{
  v1 = v0[17];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  (*(v3 + 40))(v2, v3);
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v4);
  v6 = *(MEMORY[0x277D5BF40] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_267E7AE64;

  return MEMORY[0x2821BB5D0](v0 + 2, v4, v5);
}

uint64_t sub_267E7AE64()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 168);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 176) = v0;

  if (v0)
  {
    v7 = sub_267E7B0B4;
  }

  else
  {
    v7 = sub_267E0A804;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E7AF68()
{
  v20 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    OUTLINED_FUNCTION_11_40(4.8149e-34);
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[14];
    v11 = sub_267EF9F68();
    v13 = sub_267BA33E8(v11, v12, &v19);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v14, v15, "#NetworkConnectivityCheckFlow Unable to make response %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v16 = v0[16];
  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_267E7B0B4()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[22];
  v2 = v0[18];
  v3 = v1;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    OUTLINED_FUNCTION_11_40(4.8149e-34);
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[14];
    v11 = sub_267EF9F68();
    v13 = sub_267BA33E8(v11, v12, &v19);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_11_9(&dword_267B93000, v14, v15, "#NetworkConnectivityCheckFlow Unable to make response %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v16 = v0[16];
  sub_267EF4018();
  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_267E7B26C()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v4 = *(*(sub_267EF7B88() - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = sub_267EF4228();
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E7B38C, 0, 0);
}

uint64_t sub_267E7B38C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[20];
  type metadata accessor for MessagesCATs();
  sub_267EF7B68();
  v0[24] = sub_267EF78E8();
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_267E7B44C;
  v3 = v0[23];

  return sub_267CB3274(v3);
}

uint64_t sub_267E7B44C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 200);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (v0)
  {
    v7 = sub_267E7B744;
  }

  else
  {
    v8 = *(v3 + 192);

    v7 = sub_267E7B558;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E7B558()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v21 = *(v0 + 160);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_10_0();
  v10(v9);
  v11 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_10_0();
  v14(v13);
  v15 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v16 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
  v17 = sub_267EF4CC8();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v18 = MEMORY[0x277D5C1D8];
  v6[3] = v17;
  v6[4] = v18;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F98();
  sub_267B9FF34(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();

  return v19();
}

uint64_t sub_267E7B744()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[19];
  v3 = v0[20];

  OUTLINED_FUNCTION_17();
  v6 = v0[26];

  return v5();
}

uint64_t *sub_267E7B7EC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  return v0;
}

uint64_t sub_267E7B81C()
{
  sub_267E7B7EC();

  return swift_deallocClassInstance();
}

uint64_t sub_267E7B884(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BAEBEC;

  return sub_267E7AA30(a1);
}

uint64_t sub_267E7B928(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_267E7B968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267E7B9CC(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  if (a2)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);

    v9 = sub_267EF89F8();
    v10 = sub_267EF95D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136642819;
      *(v11 + 4) = sub_267BA33E8(a1, a2, &v15);
      _os_log_impl(&dword_267B93000, v9, v10, "#ContextConversationResolver found Messaages app conversation: %{sensitive}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D60A7B0](v12, -1, -1);
      MEMORY[0x26D60A7B0](v11, -1, -1);
    }

    return a3(a1, a2);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;

    sub_267E7BDE0(sub_267E7D3F0, v14);
  }
}

uint64_t sub_267E7BBB0(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (a2)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136642819;
      *(v9 + 4) = sub_267BA33E8(a1, a2, &v18);
      _os_log_impl(&dword_267B93000, v7, v8, "#ContextConversationResolver conversation found in notification: %{sensitive}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D60A7B0](v10, -1, -1);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    v11 = a1;
    v12 = a2;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v15, "#ContextConversationResolver conversation not found in notification / application context", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    v11 = 0;
    v12 = 0;
  }

  return a3(v11, v12);
}

uint64_t sub_267E7BDE0(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_267EF89E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D47618]) init];
  v11 = sub_267EF8FF8();
  v22 = v10;
  [v10 setSourceAppId_];

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v12 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v13 = v2[8];
  v14 = v2[9];
  __swift_project_boxed_opaque_existential_0(v2 + 5, v13);
  (*(v14 + 16))(v25, v13, v14);
  __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  (*(v4 + 16))(v7, v9, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v4 + 32))(v17 + v15, v7, v3);
  v18 = (v17 + v16);
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  sub_267BA9F38(0, &qword_28022C9F8, 0x277D47620);

  v20 = v22;
  sub_267EF4268();

  (*(v4 + 8))(v9, v3);
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_267E7C0CC(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v3 = sub_267EF89E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v10 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  (*(v4 + 16))(v7, v9, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v12, v7, v3);
  v15 = (v14 + v13);
  v16 = v19;
  *v15 = v18;
  v15[1] = v16;

  sub_267C0BC60(sub_267E7D2E8, v14);

  return (*(v4 + 8))(v9, v3);
}

void sub_267E7C2FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_267EF9688();
  if (qword_280228820 != -1)
  {
LABEL_60:
    swift_once();
  }

  sub_267EF89B8();
  if (!a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v15, "#ContextConversationResolver SharedContextService didn't fetch contexts", v16, 2u);
      MEMORY[0x26D60A7B0](v16, -1, -1);
    }

    (a3)(0, 0);
    return;
  }

  v36 = a3;
  v35 = a1;
  v5 = sub_267D102E0(v35, &selRef_applicationContexts, &qword_28022AEE8, 0x277CEF170);
  if (!v5)
  {
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  a1 = v5;
  a3 = 0xD000000000000013;
  v6 = sub_267BAF0DC(v5);
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v17 = sub_267EF8A08();
      __swift_project_value_buffer(v17, qword_280240FB0);
      v18 = sub_267EF89F8();
      v19 = sub_267EF95D8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_267B93000, v18, v19, "#ContextConversationResolver Messages app is not in the foreground", v20, 2u);
        MEMORY[0x26D60A7B0](v20, -1, -1);
      }

      (v36)(0, 0);
      v21 = v35;
      goto LABEL_53;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v37 = v8;
    v9 = sub_267D24554(v8);
    if (!v10)
    {
      goto LABEL_16;
    }

    if (v9 == 0xD000000000000013 && v10 == 0x8000000267F10280)
    {
      break;
    }

    v12 = sub_267EF9EA8();

    if (v12)
    {
      goto LABEL_29;
    }

LABEL_16:
  }

LABEL_29:

  v22 = sub_267D102E0(v37, &selRef_aceContexts, &qword_28022CC40, 0x277D470E0);
  if (!v22)
  {
    goto LABEL_63;
  }

  v23 = v22;
  a1 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v24 = sub_267BAF0DC(v22);
  v25 = 0;
  a3 = 0x277D47000;
  while (v24 != v25)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x26D609870](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v26;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x26D608F90]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      a1 = v38;
      ++v25;
    }

    else
    {

      ++v25;
    }
  }

  if (sub_267BAF0DC(a1))
  {
    sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x26D609870](0, a1);
    }

    else
    {
      v28 = *(a1 + 32);
    }

    v29 = v28;

    v30 = sub_267E7D38C(v29);
    v36(v30);

    return;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v31 = sub_267EF8A08();
  __swift_project_value_buffer(v31, qword_280240FB0);
  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_267B93000, v32, v33, "#ContextConversationResolve Messages app does not display a conversation", v34, 2u);
    MEMORY[0x26D60A7B0](v34, -1, -1);
  }

  (v36)(0, 0);
  v21 = v37;
LABEL_53:
}

void sub_267E7C944(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v78 = a4;
  v79 = a3;
  v84 = a1;
  v4 = sub_267EF43D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v76 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v86 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v15;
  v16 = sub_267EF2CC8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v87 = &v76 - v23;
  MEMORY[0x28223BE20](v22);
  v88 = &v76 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC48, &qword_267F0D378);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  sub_267EF9688();
  if (qword_280228820 != -1)
  {
LABEL_58:
    swift_once();
  }

  sub_267EF89B8();
  sub_267E7D480(v84, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v10, v28, v4);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v29 = sub_267EF8A08();
    __swift_project_value_buffer(v29, qword_280240FB0);
    v30 = *(v5 + 16);
    v31 = v83;
    v88 = v10;
    v30(v83, v10, v4);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v89 = v35;
      *v34 = 136315138;
      sub_267E7D4F0();
      v36 = sub_267EF9E58();
      v37 = v31;
      v39 = v38;
      v40 = *(v5 + 8);
      v40(v37, v4);
      v41 = sub_267BA33E8(v36, v39, &v89);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_267B93000, v32, v33, "#ContextConversationResolver notification search failed: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x26D60A7B0](v35, -1, -1);
      MEMORY[0x26D60A7B0](v34, -1, -1);
    }

    else
    {

      v40 = *(v5 + 8);
      v40(v31, v4);
    }

    (v79)(0, 0);
    v40(v88, v4);
  }

  else
  {
    v4 = v17;
    v82 = v21;
    v77 = *v28;
    v42 = sub_267D102E0(v77, &selRef_notifications, &qword_28022A398, 0x277D47608);
    if (v42)
    {
      v43 = v42;
      v89 = MEMORY[0x277D84F90];
      v28 = sub_267BAF0DC(v42);
      v5 = 0;
      v10 = (v43 & 0xC000000000000001);
      v17 = (v43 & 0xFFFFFFFFFFFFFF8);
      while (v28 != v5)
      {
        if (v10)
        {
          v44 = MEMORY[0x26D609870](v5, v43);
        }

        else
        {
          if (v5 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v44 = *(v43 + 8 * v5 + 32);
        }

        v45 = v44;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
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

        v46 = sub_267E51D50(v44);
        if (!v47)
        {
          goto LABEL_19;
        }

        v21 = v46;
        v48 = v47;

        v49 = HIBYTE(v48) & 0xF;
        if ((v48 & 0x2000000000000000) == 0)
        {
          v49 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {
          sub_267EF9BD8();
          v21 = v89[2];
          sub_267EF9C08();
          sub_267EF9C18();
          sub_267EF9BE8();
        }

        else
        {
LABEL_19:
        }

        ++v5;
      }

      v21 = v89;
      v83 = sub_267BAF0DC(v89);
      if (v83)
      {
        sub_267BBD0EC(0, (v21 & 0xC000000000000001) == 0, v21);
        v81 = v21 & 0xC000000000000001;
        if ((v21 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x26D609870](0, v21);
        }

        else
        {
          v50 = *(v21 + 32);
        }

        v84 = v50;
        v51 = (v4 + 32);
        v52 = (v4 + 8);
        v28 = 1;
        v80 = v21;
        while (v83 != v28)
        {
          if (v81)
          {
            v53 = MEMORY[0x26D609870](v28, v21);
          }

          else
          {
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_56;
            }

            if (v28 >= *(v21 + 16))
            {
              goto LABEL_57;
            }

            v53 = *(v21 + 8 * v28 + 32);
          }

          v5 = v53;
          v10 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
            goto LABEL_55;
          }

          v54 = [v84 date];
          if (v54)
          {
            v55 = v54;
            v56 = v87;
            sub_267EF2C98();

            v57 = *v51;
            v58 = v85;
            (*v51)(v85, v56, v16);
            __swift_storeEnumTagSinglePayload(v58, 0, 1, v16);
            v57(v88, v58, v16);
          }

          else
          {
            v59 = v85;
            __swift_storeEnumTagSinglePayload(v85, 1, 1, v16);
            sub_267EF2C18();
            if (__swift_getEnumTagSinglePayload(v59, 1, v16) != 1)
            {
              sub_267C1D46C(v85);
            }
          }

          v60 = [v5 date];
          if (v60)
          {
            v61 = v60;
            v62 = v87;
            sub_267EF2C98();

            v63 = *v51;
            v64 = v86;
            (*v51)(v86, v62, v16);
            __swift_storeEnumTagSinglePayload(v64, 0, 1, v16);
            v65 = v82;
            v63(v82, v64, v16);
          }

          else
          {
            v66 = v86;
            __swift_storeEnumTagSinglePayload(v86, 1, 1, v16);
            v65 = v82;
            sub_267EF2C18();
            if (__swift_getEnumTagSinglePayload(v66, 1, v16) != 1)
            {
              sub_267C1D46C(v86);
            }
          }

          v4 = v88;
          v67 = sub_267EF2C68();
          v17 = *v52;
          (*v52)(v65, v16);
          v17(v4, v16);
          if (v67)
          {

            ++v28;
            v84 = v5;
          }

          else
          {

            ++v28;
          }

          v21 = v80;
        }

        v68 = v84;
        v69 = sub_267E51D50(v84);
        v79(v69);
      }

      else
      {

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v70 = sub_267EF8A08();
        __swift_project_value_buffer(v70, qword_280240FB0);
        v71 = sub_267EF89F8();
        v72 = sub_267EF95D8();
        v73 = os_log_type_enabled(v71, v72);
        v74 = v79;
        if (v73)
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_267B93000, v71, v72, "#ContextConversationResolver conversation not found in notifications", v75, 2u);
          MEMORY[0x26D60A7B0](v75, -1, -1);
        }

        v74(0, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_267E7D2E8()
{
  v0 = *(sub_267EF89E8() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = OUTLINED_FUNCTION_0_70(v1);

  sub_267E7C2FC(v3, v4, v5);
}

uint64_t sub_267E7D38C(void *a1)
{
  v1 = [a1 chatIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

void sub_267E7D3F8()
{
  v0 = *(sub_267EF89E8() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  v2 = *(v0 + 64);
  v3 = OUTLINED_FUNCTION_0_70(v1);

  sub_267E7C944(v3, v4, v5, v6);
}

uint64_t sub_267E7D480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC48, &qword_267F0D378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267E7D4F0()
{
  result = qword_28022B5B0;
  if (!qword_28022B5B0)
  {
    sub_267EF43D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022B5B0);
  }

  return result;
}

uint64_t sub_267E7D548()
{
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = 1;
  return sub_267EF1B18();
}

uint64_t sub_267E7D55C()
{
  sub_267BFC094();

  return swift_deallocClassInstance();
}

void *sub_267E7D5B4(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 41) = *(a1 + 33);
  *(v1 + 42) = *(a1 + 34);
  *(v1 + 43) = *(a1 + 35);
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 40);
  *(v1 + 56) = v2;
  *(v1 + 57) = *(a1 + 49);
  return sub_267BF4998(a1);
}

double sub_267E7D5F0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_4();
  v8 = v5 == 0xD000000000000014 && v6 == a1;
  if (v8 || (v9 = v5, (OUTLINED_FUNCTION_2_6() & 1) != 0))
  {
    v10 = *(v2 + 40);
LABEL_7:
    *(a2 + 24) = MEMORY[0x277D839B0];
    *a2 = v10;
    return result;
  }

  OUTLINED_FUNCTION_2_4();
  v12 = v9 == 0xD000000000000020 && v11 == a1;
  if (v12 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = *(v2 + 41);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v14 = v9 == 0xD000000000000017 && v13 == a1;
  if (v14 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = *(v2 + 42);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v16 = v9 == 0xD00000000000001CLL && v15 == a1;
  if (v16 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    v10 = *(v2 + 43);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  v18 = v9 == 0xD000000000000021 && v17 == a1;
  if (v18 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
  {
    if (*(v2 + 56))
    {
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    else
    {
      result = *(v2 + 48);
      *(a2 + 24) = MEMORY[0x277D839F8];
      *a2 = result;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_4();
    v20 = v9 == 0xD00000000000001DLL && v19 == a1;
    if (v20 || (OUTLINED_FUNCTION_2_6() & 1) != 0)
    {
      v10 = *(v2 + 57);
      goto LABEL_7;
    }

    return sub_267EF1B24(v9, a1, a2);
  }

  return result;
}

uint64_t sub_267E7D79C()
{
  v0 = sub_267EF9D38();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_267E7D7EC(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267E7D8B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_267E7D79C();
  *a2 = result;
  return result;
}

unint64_t sub_267E7D8E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_267E7D7EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267E7D918@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267E7D7E8();
  *a1 = result;
  return result;
}

uint64_t sub_267E7D94C(uint64_t a1)
{
  v2 = sub_267E7DEEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267E7D988(uint64_t a1)
{
  v2 = sub_267E7DEEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267E7DA10(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC60, &qword_267F0D410);
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267E7DEEC();
  sub_267EFA078();
  if (v2)
  {
    v11 = 0;
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for MessagesSpokenDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    *(v1 + 40) = sub_267EF9DA8() & 1;
    OUTLINED_FUNCTION_0_71(1);
    *(v1 + 41) = sub_267EF9DA8() & 1;
    OUTLINED_FUNCTION_0_71(2);
    *(v1 + 42) = sub_267EF9DA8() & 1;
    OUTLINED_FUNCTION_0_71(3);
    *(v1 + 43) = sub_267EF9DA8() & 1;
    OUTLINED_FUNCTION_0_71(4);
    *(v1 + 48) = sub_267EF9D68();
    *(v1 + 56) = v9 & 1;
    OUTLINED_FUNCTION_0_71(5);
    *(v1 + 57) = sub_267EF9DA8() & 1;
    sub_267B9AFEC(a1, v14);
    v11 = sub_267EF1C28(v14);
    v12 = OUTLINED_FUNCTION_8_32();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v11;
}

uint64_t sub_267E7DC6C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC50, &qword_267F0D408);
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v21 - v10;
  result = sub_267EF1E48(a1);
  if (!v2)
  {
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_267E7DEEC();
    sub_267EFA088();
    v14 = *(v1 + 40);
    v27 = 0;
    OUTLINED_FUNCTION_0_25();
    v15 = *(v1 + 41);
    v26 = 1;
    OUTLINED_FUNCTION_0_25();
    v16 = *(v1 + 42);
    v25 = 2;
    OUTLINED_FUNCTION_0_25();
    v17 = *(v1 + 43);
    v24 = 3;
    OUTLINED_FUNCTION_0_25();
    v18 = *(v1 + 48);
    v19 = *(v1 + 56);
    v23 = 4;
    sub_267EF9DD8();
    v20 = *(v1 + 57);
    v22 = 5;
    OUTLINED_FUNCTION_0_25();
    return (*(v7 + 8))(v11, v4);
  }

  return result;
}

uint64_t sub_267E7DE74()
{
  sub_267BBC36C();

  return swift_deallocClassInstance();
}

unint64_t sub_267E7DEEC()
{
  result = qword_28022CC58;
  if (!qword_28022CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CC58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesSpokenDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267E7E020()
{
  result = qword_28022CC68;
  if (!qword_28022CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CC68);
  }

  return result;
}

unint64_t sub_267E7E078()
{
  result = qword_28022CC70;
  if (!qword_28022CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CC70);
  }

  return result;
}

unint64_t sub_267E7E0D0()
{
  result = qword_28022CC78;
  if (!qword_28022CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CC78);
  }

  return result;
}

id sub_267E7E128(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v83 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v5);
  v82 = &v81 - v6;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  v84 = &v81 - v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  v81 = &v81 - v10;
  OUTLINED_FUNCTION_115();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v81 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v81 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v81 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v81 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v81 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v81 - v27;
  v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = [a1 nameComponents];
  if (v30)
  {
    v31 = v30;
    sub_267EF2A18();

    sub_267EF2A58();
    v32 = 0;
  }

  else
  {
    sub_267EF2A58();
    v32 = 1;
  }

  OUTLINED_FUNCTION_18_28(v26, v32);
  sub_267D2E49C(v26, v28);
  sub_267EF2A58();
  if (OUTLINED_FUNCTION_14_36(v28))
  {
    v33 = sub_267B9FF34(v28, &unk_28022BCA0, &unk_267EFD990);
LABEL_6:
    v34 = 0;
    goto LABEL_9;
  }

  sub_267EF2988();
  v36 = v35;
  v33 = sub_267B9FF34(v28, &unk_28022BCA0, &unk_267EFD990);
  if (!v36)
  {
    goto LABEL_6;
  }

  v34 = sub_267EF8FF8();

LABEL_9:
  OUTLINED_FUNCTION_92_1(v33, sel_setFirstName_);

  v37 = [a1 displayName];
  v38 = sub_267EF9028();
  v40 = v39;

  sub_267C47248(v38, v40, v29, &selRef_setFullName_);
  v41 = [a1 nameComponents];
  if (v41)
  {
    v42 = v41;
    sub_267EF2A18();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  OUTLINED_FUNCTION_18_28(v20, v43);
  sub_267D2E49C(v20, v23);
  if (OUTLINED_FUNCTION_14_36(v23))
  {
    v44 = sub_267B9FF34(v23, &unk_28022BCA0, &unk_267EFD990);
    v45 = 0;
    v46 = v83;
  }

  else
  {
    sub_267EF29A8();
    v48 = v47;
    v44 = sub_267B9FF34(v23, &unk_28022BCA0, &unk_267EFD990);
    v46 = v83;
    if (v48)
    {
      v45 = sub_267EF8FF8();
    }

    else
    {
      v45 = 0;
    }
  }

  OUTLINED_FUNCTION_92_1(v44, sel_setLastName_);

  v49 = [a1 nameComponents];
  if (v49)
  {
    v50 = v49;
    sub_267EF2A18();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  OUTLINED_FUNCTION_18_28(v14, v51);
  sub_267D2E49C(v14, v17);
  if (OUTLINED_FUNCTION_14_36(v17))
  {
    sub_267B9FF34(v17, &unk_28022BCA0, &unk_267EFD990);
    v52 = 0;
    v53 = v84;
    goto LABEL_28;
  }

  v54 = v81;
  sub_267EF29F8();
  if (OUTLINED_FUNCTION_14_36(v54))
  {
    OUTLINED_FUNCTION_99_0();
    sub_267B9FF34(v55, v56, v57);
    OUTLINED_FUNCTION_99_0();
    sub_267B9FF34(v58, v59, v60);
  }

  else
  {
    sub_267EF2988();
    v62 = v61;
    OUTLINED_FUNCTION_8_53(v54);
    OUTLINED_FUNCTION_8_53(v17);
    if (v62)
    {
      v52 = sub_267EF8FF8();

      goto LABEL_27;
    }
  }

  v52 = 0;
LABEL_27:
  v53 = v84;
LABEL_28:
  [v29 setFirstNamePhonetic_];

  v63 = [a1 nameComponents];
  if (v63)
  {
    v64 = v63;
    v65 = v82;
    sub_267EF2A18();

    v66 = 0;
  }

  else
  {
    v66 = 1;
    v65 = v82;
  }

  OUTLINED_FUNCTION_18_28(v65, v66);
  sub_267D2E49C(v65, v53);
  if (OUTLINED_FUNCTION_14_36(v53))
  {
    v67 = &unk_28022BCA0;
    v68 = &unk_267EFD990;
    v69 = v53;
LABEL_35:
    sub_267B9FF34(v69, v67, v68);
LABEL_36:
    v73 = 0;
    goto LABEL_37;
  }

  sub_267EF29F8();
  if (OUTLINED_FUNCTION_14_36(v46))
  {
    OUTLINED_FUNCTION_99_0();
    sub_267B9FF34(v70, v71, v72);
    OUTLINED_FUNCTION_99_0();
    goto LABEL_35;
  }

  sub_267EF29A8();
  v80 = v79;
  OUTLINED_FUNCTION_8_53(v46);
  OUTLINED_FUNCTION_8_53(v53);
  if (!v80)
  {
    goto LABEL_36;
  }

  v73 = sub_267EF8FF8();

LABEL_37:
  [v29 setLastNamePhonetic_];

  v74 = sub_267BBD380(a1);
  if (v75)
  {
    v76 = sub_267EF8FF8();
  }

  else
  {
    v76 = 0;
  }

  OUTLINED_FUNCTION_92_1(v74, sel_setInternalGUID_);

  [a1 isMe];
  sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
  v77 = sub_267EF97F8();
  OUTLINED_FUNCTION_92_1(v77, sel_setMe_);

  return v29;
}

id sub_267E7E7F0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    sub_267BA9F38(0, &qword_28022B3D0, 0x277D47178);
    v4 = sub_267EF9858();
    [v3 setAppInfo_];
  }

  return v3;
}

id sub_267E7E88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, uint64_t a7)
{
  v28[3] = a6;
  OUTLINED_FUNCTION_4_63();
  v13 = sub_267EF2D28();
  v14 = OUTLINED_FUNCTION_58(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267C47248(v8, v7, v21, &selRef_setMessage_);
  v22 = v21;
  [v22 setCanUseServerTTS_];
  sub_267EF2D18();
  v23 = sub_267EF2CE8();
  v25 = v24;
  (*(v16 + 8))(v20, v13);
  sub_267C47248(v23, v25, v22, &selRef_setAceId_);

  sub_267C47248(a3, a4, v22, &selRef_setDialogIdentifier_);
  v26 = sub_267EF9378();
  [v22 setListenAfterSpeaking_];

  [v22 setContext_];
  swift_unknownObjectRelease();

  return v22;
}

void sub_267E7EA58(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v17 = v2;

LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A40, &qword_267EFEEA0);
    v18 = sub_267EF92D8();

    v19 = sub_267EF8FF8();
    [v3 setValue:v18 forKey:v19];

    return;
  }

  v25 = MEMORY[0x277D84F90];
  v20 = v2;
  v5 = v2;
  v22 = v4;
  sub_267C7231C();
  v6 = 0;
  v23 = a1 + 32;
  v21 = a1;
  while (v6 < *(a1 + 16))
  {
    v7 = *(v23 + 8 * v6);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v15 = *(v23 + 8 * v6);
      }

      v8 = sub_267EF9A68();
      if (!v8)
      {
LABEL_16:
        v14 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    v24 = MEMORY[0x277D84F90];

    sub_267EF9BF8();
    if (v8 < 0)
    {
      goto LABEL_24;
    }

    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D609870](v9, v7);
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 dictionary];

      sub_267EF9BD8();
      v13 = *(v24 + 16);
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v8 != v9);

    v14 = v24;
    a1 = v21;
    v4 = v22;
LABEL_17:
    v16 = *(v25 + 16);
    if (v16 >= *(v25 + 24) >> 1)
    {
      sub_267C7231C();
      v4 = v22;
    }

    ++v6;
    *(v25 + 16) = v16 + 1;
    *(v25 + 8 * v16 + 32) = v14;
    if (v6 == v4)
    {

      v3 = v20;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

id sub_267E7ECFC(uint64_t a1)
{
  v2 = sub_267EF2D28();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267E7F03C(a1, v10);
  sub_267EF2D18();
  v11 = sub_267EF2CE8();
  v13 = v12;
  (*(v5 + 8))(v9, v2);
  sub_267C47248(v11, v13, v10, &selRef_setAceId_);

  return v10;
}

uint64_t sub_267E7EE1C(uint64_t a1, uint64_t a2)
{
  sub_267BE4994(a2, v18);
  v2 = v19;
  if (!v19)
  {
    sub_267B9FF34(v18, &qword_280229910, &unk_267EFEB70);
LABEL_16:
    v16 = 0;
    return v16 & 1;
  }

  v3 = v20;
  __swift_project_boxed_opaque_existential_0(v18, v19);
  v4 = (*(v3 + 16))(v2, v3);
  if (!sub_267BAF0DC(v4))
  {

    __swift_destroy_boxed_opaque_existential_0(v18);
    goto LABEL_16;
  }

  sub_267BBD0EC(0, (v4 & 0xC000000000000001) == 0, v4);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26D609870](0, v4);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = v5;

  __swift_destroy_boxed_opaque_existential_0(v18);
  v7 = [v6 sender];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [v7 personHandle];

  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = [v9 type];

  v11 = [v6 sender];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 displayName];

    sub_267EF9028();
    LOBYTE(v12) = sub_267EF9118();

    v14 = v12 ^ 1;
  }

  else
  {
    v14 = 1;
  }

  if ((sub_267BE8214() & 1) != 0 || v10 != 2)
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = sub_267BE84FC();

  v16 = v15 & v14;
  return v16 & 1;
}

void sub_267E7F03C(uint64_t a1, void *a2)
{
  sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
  v3 = sub_267EF92D8();

  [a2 setViews_];
}

uint64_t sub_267E7F0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = v4;
  v137 = a4;
  v138 = a3;
  v135 = a1;
  v133 = type metadata accessor for FollowupOfferFlow.State(0);
  v8 = OUTLINED_FUNCTION_22(v133);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  v134 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v132 = v121 - v16;
  v17 = sub_267EF7B88();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = v121 - v27;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v131 = v26;
  v28 = sub_267EF8A08();
  v136 = __swift_project_value_buffer(v28, qword_280240FB0);
  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v30))
  {
    v31 = v13;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_267B93000, v29, v5, "#MessageReadingFlowDelegate creating offer transition for barge in", v32, 2u);
    v33 = v32;
    v13 = v31;
    MEMORY[0x26D60A7B0](v33, -1, -1);
  }

  v160[0] = v6;
  v35 = v138 + 8;
  v34 = *(v138 + 8);
  v36 = *(v34(a2) + 416);

  v139 = v36;
  if (!v36)
  {
    v44 = sub_267EF89F8();
    v45 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v47, v48, "#MessageReadingFlowDelegate no current conversation, skipping follow-up");
      MEMORY[0x26D60A7B0](v46, -1, -1);
    }

    goto LABEL_31;
  }

  v127 = v21;
  v160[0] = v6;
  v37 = OUTLINED_FUNCTION_6_49();
  v38 = *(v34(v37) + 88);

  v123 = v34;
  v128 = v14;
  v129 = v6;
  if (v38)
  {
    v154[0] = v6;

    v39 = OUTLINED_FUNCTION_6_49();
    v40 = v34(v39);
    sub_267B9AFEC(v40 + 16, v160);

    OUTLINED_FUNCTION_3_78();
    if (!v41)
    {
      OUTLINED_FUNCTION_4_0();
    }

    __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
    v42 = sub_267BB4A3C();
    v43 = sub_267E7FF50(v139, v160, &v157, v42, 0);
  }

  else
  {
    v126 = v13;
    v163 = v6;

    v49 = OUTLINED_FUNCTION_6_49();
    v50 = v34(v49);
    sub_267B9AFEC(v50 + 16, v160);

    OUTLINED_FUNCTION_3_78();
    if (!v41)
    {
      OUTLINED_FUNCTION_4_0();
    }

    __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
    v125 = sub_267BB4A3C();
    v155 = &type metadata for MessagesFeatureFlagsImpl;
    v156 = off_2878D1228;
    v152 = &type metadata for CATProvider;
    v153 = &off_2878CE7A0;
    v51 = type metadata accessor for ReplyOfferFlowStrategy();
    OUTLINED_FUNCTION_27_4(v51);
    v52 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v154, &type metadata for MessagesFeatureFlagsImpl);
    __swift_mutable_project_boxed_opaque_existential_1(v151, &type metadata for CATProvider);
    v149 = &type metadata for MessagesFeatureFlagsImpl;
    v150 = off_2878D1228;
    v146 = &type metadata for CATProvider;
    v147 = &off_2878CE7A0;
    v53 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
    v43 = v52;
    __swift_storeEnumTagSinglePayload(v52 + v53, 6, 9, v54);
    v55 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager;
    *(v43 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager) = 0;
    *(v43 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) = v139;
    sub_267B9AFEC(&v145, v43 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider);
    sub_267C2FB6C(&v157, &v140, &qword_2802299B0, &unk_267F00D00);
    if (v141)
    {
      sub_267B9A5E8(&v140, &v142);
    }

    else
    {
      v56 = a2;
      v57 = v161;
      v58 = v162;
      __swift_project_boxed_opaque_existential_0(v160, v161);
      v59 = *(v58 + 1);
      v60 = v58;
      a2 = v56;
      v6 = v129;
      v59(&v142, v57, v60);
      v61 = sub_267BFA8F4(&v142);
      __swift_destroy_boxed_opaque_existential_0(&v142);
      v143 = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
      v144 = &off_2878D3460;
      *&v142 = v61;
      if (v141)
      {
        sub_267B9F98C(&v140, &qword_2802299B0, &unk_267F00D00);
      }
    }

    sub_267B9A5E8(&v142, v43 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns);
    __swift_project_boxed_opaque_existential_0(&v145, v146);
    v62 = sub_267BB4A3C();

    sub_267B9F98C(&v157, &qword_2802299B0, &unk_267F00D00);
    *(v43 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_labelsCATs) = v62;
    sub_267B9A5E8(&v148, v43 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags);
    v63 = *(v43 + v55);
    *(v43 + v55) = 0;

    sub_267B9AFEC(v160, v43 + 16);
    __swift_destroy_boxed_opaque_existential_0(&v145);
    __swift_destroy_boxed_opaque_existential_0(v160);
    __swift_destroy_boxed_opaque_existential_0(v151);
    __swift_destroy_boxed_opaque_existential_0(v154);
    v13 = v126;
    v34 = v123;
  }

  *&v140 = v6;

  v122 = a2;
  v64 = OUTLINED_FUNCTION_6_49();
  v126 = v35;
  v65 = v34(v64);
  v66 = v130;
  __swift_storeEnumTagSinglePayload(v130, 1, 1, v13);
  v67 = type metadata accessor for SiriKitFlowFactoryImpl();
  v68 = v13;
  v69 = swift_allocObject();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  type metadata accessor for SendMessageCATs();
  sub_267EF7B68();
  v125 = sub_267EF78E8();
  v161 = v67;
  v162 = &off_2878CFE90;
  v160[0] = v69;
  v70 = type metadata accessor for FollowupOfferFlow(0);
  v121[1] = OUTLINED_FUNCTION_27_4(v70);
  v71 = swift_allocObject();
  v72 = __swift_mutable_project_boxed_opaque_existential_1(v160, v67);
  v124 = v121;
  v73 = *(v67[-1].Description + 8);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_0_0();
  v76 = (v75 - v74);
  (*(v77 + 16))(v75 - v74);
  v78 = *v76;
  v158 = v67;
  v159 = &off_2878CFE90;
  *&v157 = v78;
  *(v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider) = 0;
  *(v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState) = 0;
  v79 = (v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  *v79 = 0;
  v79[1] = 0;
  v80 = (v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy);
  v127 = v43;
  *v80 = v43;
  v80[1] = &off_2878D94A8;
  *(v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) = v139;
  *(v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) = v65;
  v81 = v131;
  sub_267C2FB6C(v66, v131, &qword_2802299A8, &unk_267F00CF0);
  if (__swift_getEnumTagSinglePayload(v81, 1, v68) == 1)
  {
    v82 = type metadata accessor for EmptyReferenceResolver();
    v83 = swift_allocObject();
    v155 = v82;
    v156 = sub_267E7FF08(&qword_2802299B8, type metadata accessor for EmptyReferenceResolver);
    v154[0] = v83;
    v152 = sub_267EF68A8();
    v153 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v151);

    sub_267EF6898();
    sub_267B9AFEC(v65 + 16, &v148);
    sub_267B9AFEC(v151, &v145);
    sub_267B9AFEC(v154, &v142);
    v84 = swift_allocObject();
    sub_267B9A5E8(&v148, v84 + 16);
    sub_267B9A5E8(&v145, v84 + 56);
    sub_267B9A5E8(&v142, v84 + 96);
    sub_267EF4C08();
    sub_267BB7170();
    v85 = v132;
    sub_267EF7058();
    sub_267B9F98C(v66, &qword_2802299A8, &unk_267F00CF0);
    __swift_destroy_boxed_opaque_existential_0(v151);
    __swift_destroy_boxed_opaque_existential_0(v154);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v68);
    v87 = v128;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v81, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {

    sub_267B9F98C(v66, &qword_2802299A8, &unk_267F00CF0);
    v87 = v128;
    v85 = v132;
    (*(v128 + 32))(v132, v81, v68);
  }

  (*(v87 + 32))(v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer, v85, v68);
  sub_267B9A5E8(&v157, v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory);
  v88 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  swift_storeEnumTagMultiPayload();
  v89 = v134;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_267BF8DEC(v89, v71 + v88);
  swift_endAccess();
  *(v71 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_sendMessageCATs) = v125;
  sub_267B9AFEC(v65 + 16, v71 + 16);

  __swift_destroy_boxed_opaque_existential_0(v160);
  v90 = sub_267C5F164(v135);
  v91 = v129;
  if ((v90 & 1) == 0)
  {
    v115 = sub_267EF89F8();
    v116 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v118, v119, "#MessageReadingFlowDelegate Follow-up flow did not accept barge-in input");
      MEMORY[0x26D60A7B0](v117, -1, -1);
    }

LABEL_31:
    v114 = sub_267EF4548();
    v112 = v137;
    v113 = 1;
    return __swift_storeEnumTagSinglePayload(v112, v113, 1, v114);
  }

  v160[0] = v129;
  v93 = v122;
  v92 = v123;
  v95 = v138;
  v94 = v139;
  (v123)(v122, v138);
  v96 = v94;
  v97 = *(v94 + 88);
  v98 = *(v96 + 96);

  v99 = sub_267BFB860();

  *&v157 = v91;
  v100 = v92(v93, v95);
  v161 = &type metadata for MessagesFeatureFlagsImpl;
  v162 = off_2878D1228;
  type metadata accessor for OfferReplyReturnGroup();
  v101 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v160, &type metadata for MessagesFeatureFlagsImpl);
  v101[8] = &type metadata for MessagesFeatureFlagsImpl;
  v101[9] = off_2878D1228;
  v102 = v139;
  v101[2] = v100;
  v101[3] = v102;
  v101[4] = v99;

  __swift_destroy_boxed_opaque_existential_0(v160);
  v160[0] = v71;
  *&v157 = v101;
  v103 = sub_267EF33F8();
  OUTLINED_FUNCTION_27_4(v103);
  swift_allocObject();
  sub_267E7FF08(&qword_2802299C0, type metadata accessor for FollowupOfferFlow);
  sub_267E7FF08(&qword_2802299C8, type metadata accessor for OfferReplyReturnGroup);

  v104 = sub_267EF33E8();

  v105 = v137;
  *v137 = v104;
  v106 = *MEMORY[0x277D5B898];
  v107 = sub_267EF3758();
  OUTLINED_FUNCTION_22(v107);
  (*(v108 + 104))(v105, v106);
  v109 = *MEMORY[0x277D5BF50];
  v110 = sub_267EF4548();
  OUTLINED_FUNCTION_22(v110);
  (*(v111 + 104))(v105, v109, v110);
  v112 = v105;
  v113 = 0;
  v114 = v110;
  return __swift_storeEnumTagSinglePayload(v112, v113, 1, v114);
}

uint64_t sub_267E7FF08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267E7FF50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39[3] = &type metadata for MessagesFeatureFlagsImpl;
  v39[4] = &off_2878D1228;
  v38[3] = &type metadata for CATProvider;
  v38[4] = &off_2878CE7A0;
  v8 = type metadata accessor for SpokenReplyOfferFlowStrategy();
  OUTLINED_FUNCTION_27_4(v8);
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v39, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v38, &type metadata for CATProvider);
  v37[3] = &type metadata for MessagesFeatureFlagsImpl;
  v37[4] = &off_2878D1228;
  v36[3] = &type metadata for CATProvider;
  v36[4] = &off_2878CE7A0;
  sub_267B9AFEC(a2, v33);
  sub_267B9AFEC(v37, v32);
  sub_267B9AFEC(v36, v31);
  sub_267C2FB6C(a3, v30, &qword_2802299B0, &unk_267F00D00);
  __swift_mutable_project_boxed_opaque_existential_1(v32, v32[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  v28 = &type metadata for MessagesFeatureFlagsImpl;
  v29 = &off_2878D1228;
  v25 = &type metadata for CATProvider;
  v26 = &off_2878CE7A0;
  v10 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229900, &unk_267EFEB60);
  __swift_storeEnumTagSinglePayload(v9 + v10, 6, 9, v11);
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager;
  *(v9 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager) = 0;
  *(v9 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) = a1;
  sub_267B9AFEC(v24, v9 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider);
  sub_267C2FB6C(v30, &v19, &qword_2802299B0, &unk_267F00D00);
  if (v20)
  {
    sub_267B9A5E8(&v19, &v21);
  }

  else
  {
    v13 = v34;
    v14 = v35;
    __swift_project_boxed_opaque_existential_0(v33, v34);
    (*(v14 + 8))(&v21, v13, v14);
    v15 = sub_267BFA8F4(&v21);
    __swift_destroy_boxed_opaque_existential_0(&v21);
    v22 = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
    v23 = &off_2878D3460;
    *&v21 = v15;
    if (v20)
    {
      sub_267B9F98C(&v19, &qword_2802299B0, &unk_267F00D00);
    }
  }

  sub_267B9A5E8(&v21, v9 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns);
  __swift_project_boxed_opaque_existential_0(v24, v25);
  v16 = sub_267BB4A3C();

  sub_267B9F98C(a3, &qword_2802299B0, &unk_267F00D00);
  __swift_destroy_boxed_opaque_existential_0(a2);
  sub_267B9F98C(v30, &qword_2802299B0, &unk_267F00D00);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v37);
  *(v9 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_labelsCATs) = v16;
  sub_267B9A5E8(&v27, v9 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags);
  *(v9 + v12) = a5;
  sub_267B9AFEC(v33, v9 + 16);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v33);
  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v9;
}

uint64_t sub_267E80268()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CC98, &unk_267F0D650);
  return sub_267EF9098();
}

uint64_t sub_267E802CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  return sub_267BB16A4(v1 + v3, a1, &qword_280229110, &unk_267F08700);
}

uint64_t sub_267E80334()
{
  sub_267BA0068();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessageReadingActionGroup()
{
  result = qword_28022CC80;
  if (!qword_28022CC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267E803E0()
{
  sub_267C4C258();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267E80518(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = sub_267EF41B8();
  if (!v10)
  {
LABEL_15:

    return 0;
  }

  v11 = v10;
  v12 = sub_267E80914(v10);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_18:
    v33 = sub_267EF7938();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_267EF7928();
    sub_267EF7C18();
    if (v36)
    {
      sub_267EF90F8();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = sub_267EF79B8();
    __swift_storeEnumTagSinglePayload(v7, v37, 1, v38);
    sub_267EF7918();

    sub_267BBD6F0(v7);
    sub_267EF7908();

    v32 = sub_267EF7948();

    return v32;
  }

  result = sub_267E80914(v11);
  if (result)
  {
    v15 = result;
    v16 = *(result + 16);
    if (v16)
    {
      v40 = v7;
      v41 = v11;
      v42 = v1;
      v43 = a1;
      v48 = v13;
      sub_267EF9BF8();
      result = sub_267BA7F44(v15);
      v18 = result;
      v19 = v15 + 64;
      v20 = v16 - 1;
      v44 = v15 + 64;
      if ((result & 0x8000000000000000) == 0)
      {
        while (v18 < 1 << *(v15 + 32))
        {
          if ((*(v19 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
          {
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          if (v17 != *(v15 + 36))
          {
            goto LABEL_24;
          }

          v46 = v17;
          v47 = v18 >> 6;
          v45 = v20;
          v21 = (*(v15 + 48) + 16 * v18);
          v23 = *v21;
          v22 = v21[1];
          v24 = (*(v15 + 56) + 16 * v18);
          v26 = *v24;
          v25 = v24[1];
          v27 = sub_267EF7B48();
          v28 = *(v27 + 48);
          v29 = *(v27 + 52);
          swift_allocObject();

          sub_267EF7B38();
          sub_267EF90F8();
          v30 = sub_267EF79B8();
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
          sub_267EF7B18();

          sub_267BBD6F0(v9);
          sub_267EF90F8();
          __swift_storeEnumTagSinglePayload(v9, 0, 1, v30);
          sub_267EF7B08();

          sub_267BBD6F0(v9);
          sub_267EF7B28();

          sub_267EF9BD8();
          v31 = *(v48 + 16);
          sub_267EF9C08();
          sub_267EF9C18();
          result = sub_267EF9BE8();
          if (v18 >= -(-1 << *(v15 + 32)))
          {
            goto LABEL_25;
          }

          v19 = v44;
          if ((*(v44 + 8 * v47) & (1 << v18)) == 0)
          {
            goto LABEL_26;
          }

          if (v46 != *(v15 + 36))
          {
            goto LABEL_27;
          }

          result = sub_267EF99F8();
          if (!v45)
          {

            v7 = v40;
            v11 = v41;
            goto LABEL_18;
          }

          v18 = result;
          v17 = *(v15 + 36);
          v20 = v45 - 1;
          if (result < 0)
          {
            break;
          }
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_267E80914(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF8EF8();

  return v3;
}

id sub_267E80978(uint64_t a1)
{
  v2 = sub_267EF2AF8();
  v3 = [swift_getObjCClassFromMetadata() attachmentWithSharedLink_];

  v4 = sub_267EF2BA8();
  OUTLINED_FUNCTION_22(v4);
  (*(v5 + 8))(a1);
  return v3;
}

uint64_t sub_267E80A08(void *a1, void *a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = v6[2];
  *(v11 + 40) = 1;
  sub_267ED9A2C(a1);
  if (v12 || sub_267BCEA0C(a1))
  {

    goto LABEL_4;
  }

  v25 = [a1 speakableGroupName];
  if (v25)
  {

    goto LABEL_4;
  }

  v64 = [a1 outgoingMessageType];
  if (v64 == [a2 outgoingMessageType])
  {
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if ([a1 outgoingMessageType] || a4)
  {
    goto LABEL_4;
  }

  if (a5)
  {
    OUTLINED_FUNCTION_58_13();
    if (!v55)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v65 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v65, qword_280240FB0);
    v66 = sub_267EF89F8();
    v67 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v67))
    {
      v68 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v68);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v69, v70, "#SendMessageChangeHandler modify request without recipient, content or app, clearing content and audio message attachment");
      OUTLINED_FUNCTION_32_0();
    }

    v71 = sub_267ED9A2C(a2);
    v72 = *(v11 + 56);
    *(v11 + 48) = v71;
    *(v11 + 56) = v73;

    OUTLINED_FUNCTION_4_64();
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
    if (sub_267E0CA8C(a2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
    }

    else
    {
      *(&v75 + 1) = 0;
      *&v76 = 0;
    }

    OUTLINED_FUNCTION_27_33();
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
  }

LABEL_4:
  if (sub_267EF96E8() & 1) != 0 && (sub_267EF96C8())
  {
    OUTLINED_FUNCTION_58_13();
    if (!v55)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v16);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v17, v18, "#SendMessageChangeHandler modify request from audio message to text, clearing audio message attachment");
      OUTLINED_FUNCTION_32_0();
    }

    if (sub_267E0CA8C(a2))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
    }

    else
    {
      *(&v75 + 1) = 0;
      *&v76 = 0;
    }

    OUTLINED_FUNCTION_27_33();
LABEL_23:
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_24;
  }

  if (sub_267EF96C8() & 1) != 0 && (sub_267EF96E8())
  {
    OUTLINED_FUNCTION_58_13();
    if (!v55)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v19 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v21))
    {
      v22 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v22);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v23, v24, "#SendMessageChangeHandler modify request from text message to audio, clearing message content");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_4_64();
    goto LABEL_23;
  }

LABEL_24:
  if (sub_267BCEA0C(a1))
  {

    OUTLINED_FUNCTION_58_13();
    if (!v55)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v29);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v30, v31, "#SendMessageChangeHandler modify recipient, clearing current recipients & group");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_4_64();
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_4_64();
    sub_267ECE290();
    sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
    sub_267D294C0(0, 0);
    sub_267D291CC(0);
    v32 = *(sub_267C7A4A0() + 16);

    if (v32)
    {
      sub_267C7A4A0();
      sub_267C7A414();
      v33 = *(v11 + 136);

      sub_267C3911C(a1, 0);
    }
  }

  else
  {
    v34 = [a1 speakableGroupName];
    if (v34)
    {
      v35 = v34;
      OUTLINED_FUNCTION_58_13();
      if (!v55)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v36 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v36, qword_280240FB0);
      v37 = sub_267EF89F8();
      v38 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v38))
      {
        v39 = OUTLINED_FUNCTION_32();
        *v39 = 0;
        _os_log_impl(&dword_267B93000, v37, v38, "#SendMessageChangeHandler modify group, clearing current recipients & group", v39, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      OUTLINED_FUNCTION_4_64();
      sub_267ECE290();
      sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
      *(&v76 + 1) = sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
      *&v75 = v35;
      v40 = v35;
      sub_267ECE290();
      sub_267B9F98C(&v75, &qword_28022AEF0, &qword_267EFCDE0);
      v41 = sub_267D2904C();
      sub_267D294C0(v41, v42);
      sub_267D291CC(0);
    }
  }

  if (a4)
  {
    OUTLINED_FUNCTION_58_13();
    if (!v55)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v43 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v43, qword_280240FB0);
    v44 = sub_267EF89F8();
    v45 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_9_53(v45))
    {
      v46 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_24_38(v46);
      OUTLINED_FUNCTION_86_0(&dword_267B93000, v47, v48, "#SendMessageChangeHandler modify app, updating intent for app change");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267E81CAC(a2, a3, a4);
  }

  sub_267ED9A2C(a1);
  if (!v49)
  {
    goto LABEL_54;
  }

  v50 = sub_267ED9A2C(a2);
  v52 = v51;
  v53 = sub_267ED9A2C(a1);
  if (!v52)
  {
    if (!v54)
    {
LABEL_54:
      v57 = 0;
      goto LABEL_55;
    }

LABEL_52:

    v57 = 1;
    goto LABEL_55;
  }

  if (!v54)
  {
    goto LABEL_52;
  }

  v55 = v50 == v53 && v52 == v54;
  if (v55)
  {

    goto LABEL_54;
  }

  v56 = sub_267EF9EA8();

  v57 = v56 ^ 1;
LABEL_55:
  *(v11 + 209) = v57 & 1;
  sub_267ECE5F0();
  v58 = *(v11 + 136);
  v77 = 0;
  v75 = 0u;
  v76 = 0u;

  sub_267C3A088();
  sub_267B9F98C(&v75, &qword_280229508, &unk_267EFD960);
  v59 = v6[17];
  __swift_project_boxed_opaque_existential_0(v6 + 13, v6[16]);
  sub_267EF3B18();
  v60 = [a2 typeName];
  sub_267EF9028();

  v61 = swift_allocObject();
  *(v61 + 16) = a2;
  *(v61 + 24) = v58;

  v62 = a2;
  LOBYTE(v75) = 1;
  OUTLINED_FUNCTION_26_36();
  OUTLINED_FUNCTION_74();
  sub_267EF3848();
}

uint64_t sub_267E81224(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v83 - v9;
  v11 = v2[2];
  *(v11 + 42) = 0;
  v12 = sub_267ED9A2C(a1);
  v14 = &off_279C2E000;
  v84 = v2;
  if (v13)
  {
    v15 = v12;
    v16 = v13;
    v17 = sub_267ED9A2C(a2);
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v83 = v11;
      v21 = v2[12];
      __swift_project_boxed_opaque_existential_0(v2 + 8, v2[11]);
      sub_267EF3B68();
      v22 = sub_267EF2E38();
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v22);
      v23 = sub_267D5E5A0(v15, v16, v10, v19, v20);
      v25 = v24;

      sub_267B9F98C(v10, &unk_28022AF10, &unk_267F001E0);
      OUTLINED_FUNCTION_44_1();
      if (!v26)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v27 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
      v28 = sub_267EF89F8();
      v29 = sub_267EF95D8();
      v30 = OUTLINED_FUNCTION_5_2(v29);
      v11 = v83;
      if (v30)
      {
        v31 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v31);
        OUTLINED_FUNCTION_81(&dword_267B93000, v32, v29, "#SendMessageChangeHandler append content request with new content");
        OUTLINED_FUNCTION_26();
      }

      v87 = MEMORY[0x277D837D0];
      v85 = v23;
      v86 = v25;
    }

    else
    {
      OUTLINED_FUNCTION_44_1();
      if (!v26)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v34 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v34, qword_280240FB0);
      v35 = sub_267EF89F8();
      v36 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_9_53(v36))
      {
        v37 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v37);
        OUTLINED_FUNCTION_81(&dword_267B93000, v38, &off_279C2E000, "#SendMessageChangeHandler append content when previous content was nil, setting new content as the content");
        OUTLINED_FUNCTION_26();
      }

      v87 = MEMORY[0x277D837D0];
      v85 = v15;
      v86 = v16;
    }

    OUTLINED_FUNCTION_31_28();
    sub_267ECE290();
    sub_267B9F98C(&v85, &qword_28022AEF0, &qword_267EFCDE0);
    *(v11 + 209) = 1;
    v14 = &off_279C2E000;
  }

  else
  {
    sub_267ED9A2C(a1);
    if (v33 || sub_267BCEA0C(a1))
    {
    }

    else
    {
      v74 = [a1 speakableGroupName];
      if (v74)
      {
      }

      else
      {
        v75 = sub_267ED9A2C(a2);
        v76 = *(v11 + 56);
        *(v11 + 48) = v75;
        *(v11 + 56) = v77;

        OUTLINED_FUNCTION_44_1();
        if (!v26)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v78 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v78, qword_280240FB0);
        v79 = sub_267EF89F8();
        v80 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v80))
        {
          v81 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v81);
          OUTLINED_FUNCTION_81(&dword_267B93000, v82, v80, "#SendMessageChangeHandler append content request without new content, saving current content and clearing content in the intent");
          OUTLINED_FUNCTION_26();
        }

        OUTLINED_FUNCTION_61_12();
        OUTLINED_FUNCTION_31_28();
        sub_267ECE290();
        sub_267B9F98C(&v85, &qword_28022AEF0, &qword_267EFCDE0);
      }
    }
  }

  v39 = sub_267BCEA0C(a1);
  if (v39)
  {
    v40 = v39;
    OUTLINED_FUNCTION_44_1();
    if (!v26)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v41 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v41, qword_280240FB0);
    v42 = sub_267EF89F8();
    v43 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v43))
    {
      v44 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v44);
      OUTLINED_FUNCTION_81(&dword_267B93000, v45, v43, "#SendMessageChangeHandler append recipient request, adding recipient");
      OUTLINED_FUNCTION_26();
    }

    v46 = sub_267BCEA0C(a2);
    v47 = MEMORY[0x277D84F90];
    if (v46)
    {
      v47 = v46;
    }

    v85 = v47;
    sub_267C9B508(v40);
    v48 = sub_267ECEE14(v85);

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
    v85 = v48;
    sub_267ECE290();
    sub_267B9F98C(&v85, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_61_12();
    sub_267ECE290();
    sub_267B9F98C(&v85, &qword_28022AEF0, &qword_267EFCDE0);
    sub_267D294C0(0, 0);
    v49 = *(sub_267C7A4A0() + 16);

    if (v49)
    {
      sub_267C7A4A0();
      sub_267C7A414();
    }
  }

  v50 = [a1 v14[431]];
  if (v50)
  {
    v51 = v50;
    OUTLINED_FUNCTION_44_1();
    if (!v26)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v52 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v52, qword_280240FB0);
    v53 = v51;
    v54 = sub_267EF89F8();
    v55 = sub_267EF95D8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v51;
      v58 = v53;
      _os_log_impl(&dword_267B93000, v54, v55, "#SendMessageChangeHandler change group request, setting new group %@", v56, 0xCu);
      sub_267B9F98C(v57, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v87 = sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
    v85 = v53;
    v59 = v53;
    sub_267ECE290();
    OUTLINED_FUNCTION_74();
    sub_267B9F98C(v60, v61, v62);
    v63 = sub_267D2904C();
    sub_267D294C0(v63, v64);
    OUTLINED_FUNCTION_61_12();
    sub_267ECE290();
    OUTLINED_FUNCTION_74();
    sub_267B9F98C(v65, v66, v67);
    sub_267D291CC(0);
  }

  v68 = *(v11 + 136);
  v88 = 0;
  OUTLINED_FUNCTION_61_12();

  sub_267C3911C(a2, 1);
  sub_267C3A088();
  sub_267B9F98C(&v85, &qword_280229508, &unk_267EFD960);
  v69 = v84[17];
  __swift_project_boxed_opaque_existential_0(v84 + 13, v84[16]);
  sub_267EF3B18();
  v70 = [a2 typeName];
  sub_267EF9028();

  v71 = swift_allocObject();
  *(v71 + 16) = a2;
  *(v71 + 24) = v68;

  v72 = a2;
  LOBYTE(v85) = 1;
  OUTLINED_FUNCTION_26_36();
  OUTLINED_FUNCTION_74();
  sub_267EF3848();
}

uint64_t sub_267E819A0(uint64_t a1, void *a2)
{
  result = sub_267BCEA0C(a2);
  if (result)
  {
    v4 = result;
    v31[0] = MEMORY[0x277D84F90];
    v5 = 0;
    v29 = result & 0xC000000000000001;
    v30 = sub_267BAF0DC(result);
    v25 = (a1 + 40);
    v26 = v4 + 32;
    v27 = v4;
    v28 = a1;
    while (1)
    {
      if (v5 == v30)
      {

        v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
        sub_267ECE290();
        return sub_267B9F98C(v31, &qword_28022AEF0, &qword_267EFCDE0);
      }

      sub_267BBD0EC(v5, v29 == 0, v4);
      result = v29 ? MEMORY[0x26D609870](v5, v4) : *(v26 + 8 * v5);
      v6 = result;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v8 = *(a1 + 16);
      v9 = v25;
      if (v8)
      {
        while (1)
        {
          v10 = v9[3];
          v11 = v9[4];
          v12 = v9[1];
          v13 = v9[2];
          v14 = *(v9 - 1);
          v15 = *v9;

          sub_267DEB810();
          if (v16)
          {
            break;
          }

          --v8;
          v9 += 6;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v18 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
        v19 = v6;
        v20 = sub_267EF89F8();
        v21 = sub_267EF95D8();

        a1 = v28;
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138412290;
          *(v22 + 4) = v19;
          *v23 = v19;
          v24 = v19;
          _os_log_impl(&dword_267B93000, v20, v21, "#SendMessageChangeHandler removing recipient: %@", v22, 0xCu);
          sub_267B9F98C(v23, &unk_280229E30, &unk_267EFC270);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_26();
        }

        else
        {
        }

        v4 = v27;
      }

      else
      {
LABEL_10:
        sub_267EF9BD8();
        v17 = *(v31[0] + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v4 = v27;
        a1 = v28;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_267E81CAC(void *a1, uint64_t a2, unint64_t a3)
{
  v311 = sub_267EF6868();
  v6 = OUTLINED_FUNCTION_58(v311);
  v283 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v309 = v10;
  v308 = sub_267EF6A08();
  v11 = OUTLINED_FUNCTION_58(v308);
  v310 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v273 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_267EF6A88();
  v17 = OUTLINED_FUNCTION_58(v293);
  v291 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v21);
  v289 = sub_267EF6B88();
  v22 = OUTLINED_FUNCTION_58(v289);
  v288 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v26);
  v27 = sub_267EF6B38();
  v28 = OUTLINED_FUNCTION_18(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1(v31);
  v275 = sub_267EF2E38();
  v32 = OUTLINED_FUNCTION_22(v275);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  v296 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v37 = OUTLINED_FUNCTION_18(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_45_0();
  v304 = v41;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v42 = OUTLINED_FUNCTION_22(v281);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_45_0();
  v303 = v48;
  v285 = sub_267EF6B18();
  v49 = OUTLINED_FUNCTION_58(v285);
  v284 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_0();
  v294 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v55 = OUTLINED_FUNCTION_18(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v274 = &v273 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v60 = OUTLINED_FUNCTION_18(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_60();
  v65 = v63 - v64;
  v67 = MEMORY[0x28223BE20](v66);
  v69 = &v273 - v68;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v71);
  v307 = sub_267EF2BA8();
  v72 = OUTLINED_FUNCTION_58(v307);
  v282 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v77);
  v78 = sub_267EF2728();
  v79 = OUTLINED_FUNCTION_58(v78);
  v278 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  v84 = &v273 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = 0x8000000267F10280;
  v301 = a2;
  v85 = a2 == 0xD000000000000013 && 0x8000000267F10280 == a3;
  v86 = v85;
  v299 = v86;
  v306 = v16;
  v298 = a3;
  if (!v85 && (OUTLINED_FUNCTION_21_33() & 1) == 0)
  {
    v297 = 0;
    v122 = sub_267E76140(a1);
    if (v122)
    {
      v123 = v122;
      v302 = a1;
      v88 = sub_267BAF0DC(v122);
      v124 = 0;
      a3 = v123 & 0xC000000000000001;
      v279 = MEMORY[0x277D84F90];
      v282 += 8;
      while (v88 != v124)
      {
        if (a3)
        {
          v125 = MEMORY[0x26D609870](v124, v123);
        }

        else
        {
          if (v124 >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_140;
          }

          v125 = *(v123 + 8 * v124 + 32);
        }

        a1 = v125;
        v16 = (v124 + 1);
        if (__OFADD__(v124, 1))
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        v126 = [v125 sharedLink];
        if (v126)
        {
          v127 = v126;
          sub_267EF2B48();

          v128 = 0;
        }

        else
        {
          v128 = 1;
        }

        v129 = v307;
        __swift_storeEnumTagSinglePayload(v65, v128, 1, v307);
        sub_267C26704(v65, v69);
        if (__swift_getEnumTagSinglePayload(v69, 1, v129) == 1)
        {

          sub_267B9F98C(v69, &qword_280229E20, &unk_267EFDCC0);
          ++v124;
          v16 = v306;
        }

        else
        {
          v130 = sub_267EF2AC8();
          v278 = v131;

          (*v282)(v69, v307);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = *(v279 + 16);
            sub_267BF4EE8();
            v279 = v137;
          }

          v132 = *(v279 + 16);
          a1 = (v132 + 1);
          if (v132 >= *(v279 + 24) >> 1)
          {
            sub_267BF4EE8();
            v279 = v138;
          }

          v133 = v279;
          *(v279 + 16) = a1;
          v134 = v133 + 16 * v132;
          v135 = v278;
          *(v134 + 32) = v130;
          *(v134 + 40) = v135;
          v124 = v16;
          v16 = v306;
        }
      }

      a1 = v302;
      a3 = v298;
      v139 = v279;
    }

    else
    {
      v139 = MEMORY[0x277D84F90];
    }

    v313 = v139;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267BF5748();
    v140 = sub_267EF8FC8();
    v142 = v141;

    v143 = sub_267ED9A2C(a1);
    if (v144)
    {
      v145 = v143;
      v146 = v144;
      v147 = HIBYTE(v144) & 0xF;
      if ((v144 & 0x2000000000000000) == 0)
      {
        v147 = v143 & 0xFFFFFFFFFFFFLL;
      }

      if (v147)
      {
        v148 = v305[12];
        __swift_project_boxed_opaque_existential_0(v305 + 8, v305[11]);
        v149 = v274;
        a3 = v298;
        sub_267EF3B68();
        __swift_storeEnumTagSinglePayload(v149, 0, 1, v275);
        v140 = sub_267D5E5A0(v140, v142, v149, v145, v146);
        v151 = v150;

        sub_267B9F98C(v149, &unk_28022AF10, &unk_267F001E0);
        v142 = v151;
      }

      else
      {
      }
    }

    v152 = HIBYTE(v142) & 0xF;
    if ((v142 & 0x2000000000000000) == 0)
    {
      v152 = v140 & 0xFFFFFFFFFFFFLL;
    }

    v88 = v297;
    if (v152)
    {
      v153 = MEMORY[0x277D837D0];
    }

    else
    {

      v140 = 0;
      v142 = 0;
      v153 = 0;
      v315 = 0;
    }

    v313 = v140;
    v314 = v142;
    v316 = v153;
    OUTLINED_FUNCTION_31_28();
    sub_267ECE290();
    sub_267B9F98C(&v313, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_67;
  }

  v87 = objc_allocWithZone(MEMORY[0x277CCA948]);
  v88 = 0;
  v89 = sub_267BD346C(32);
  if (!v89)
  {
    goto LABEL_67;
  }

  v297 = 0;
  if (qword_280228818 != -1)
  {
    goto LABEL_145;
  }

  while (1)
  {
    v275 = v89;
    v90 = sub_267EF8A08();
    v274 = __swift_project_value_buffer(v90, qword_280240FB0);
    v91 = sub_267EF89F8();
    v92 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v92))
    {
      v93 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v93);
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v94, v95, "#SendMessageChangeHandler changing back to 1st party");
      OUTLINED_FUNCTION_40_0();
    }

    v302 = a1;
    v96 = sub_267ED9A2C(a1);
    if (v97)
    {
      v98 = v96;
    }

    else
    {
      v98 = 0;
    }

    if (v97)
    {
      v99 = v97;
    }

    else
    {
      v99 = 0xE000000000000000;
    }

    v100 = MEMORY[0x26D608EC0](v98, v99);

    v101 = sub_267EF8FF8();
    v102 = sub_267EF8FF8();
    v103 = v100;
    v104 = [v275 stringByReplacingMatchesInString:v101 options:0 range:0 withTemplate:{v100, v102}];

    v105 = sub_267EF9028();
    v107 = v106;

    v313 = v105;
    v314 = v107;
    sub_267EF26D8();
    sub_267BB5034();
    v108 = MEMORY[0x277D837D0];
    v109 = sub_267EF9918();
    v111 = v110;
    (*(v278 + 8))(v84, v78);

    v112 = HIBYTE(v111) & 0xF;
    if ((v111 & 0x2000000000000000) == 0)
    {
      v112 = v109 & 0xFFFFFFFFFFFFLL;
    }

    if (!v112)
    {

      v109 = 0;
      v111 = 0;
      v108 = 0;
      v315 = 0;
    }

    v113 = v307;
    v313 = v109;
    v314 = v111;
    v316 = v108;
    OUTLINED_FUNCTION_31_28();
    a1 = v302;
    sub_267ECE290();
    sub_267B9F98C(&v313, &qword_28022AEF0, &qword_267EFCDE0);
    v114 = sub_267EF8FF8();

    v115 = v275;
    v116 = [v275 matchesInString:v114 options:0 range:{0, v103}];

    sub_267BA9F38(0, &qword_280229D10, 0x277CCACC0);
    v88 = sub_267EF92F8();

    v117 = sub_267BF6698();

    if (v117)
    {
      v118 = [v117 URL];

      OUTLINED_FUNCTION_22_32();
      a3 = v298;
      if (v118)
      {
        v119 = v276;
        sub_267EF2B48();

        v120 = 0;
        v121 = v279;
      }

      else
      {
        v120 = 1;
        v121 = v279;
        v119 = v276;
      }

      v154 = v307;
      __swift_storeEnumTagSinglePayload(v119, v120, 1, v307);
      sub_267C26704(v119, v121);
      if (__swift_getEnumTagSinglePayload(v121, 1, v154) != 1)
      {
        (*(v282 + 32))(v277, v121, v154);
        v158 = sub_267EF89F8();
        v159 = sub_267EF95D8();
        if (os_log_type_enabled(v158, v159))
        {
          v160 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v160);
          OUTLINED_FUNCTION_45_1();
          _os_log_impl(v161, v162, v163, v164, v165, 2u);
          OUTLINED_FUNCTION_40_0();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v166 = swift_allocObject();
        *(v166 + 16) = xmmword_267EFCA40;
        sub_267BA9F38(0, &qword_280229328, 0x277CD4070);
        v167 = v282;
        v168 = v273;
        v169 = v277;
        (*(v282 + 16))(v273, v277, v307);
        *(v166 + 32) = sub_267E80978(v168);
        v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
        v313 = v166;
        sub_267ECE290();

        (*(v167 + 8))(v169, v307);
        v155 = &qword_28022AEF0;
        v156 = &qword_267EFCDE0;
        v157 = &v313;
        goto LABEL_66;
      }
    }

    else
    {

      v121 = v279;
      __swift_storeEnumTagSinglePayload(v279, 1, 1, v113);
      OUTLINED_FUNCTION_22_32();
      a3 = v298;
    }

    v155 = &qword_280229E20;
    v156 = &unk_267EFDCC0;
    v157 = v121;
LABEL_66:
    sub_267B9F98C(v157, v155, v156);
LABEL_67:
    if ((v299 & 1) == 0 && (OUTLINED_FUNCTION_21_33() & 1) == 0)
    {
      v170 = sub_267E76140(a1);
      if (v170)
      {
        v171 = v170;
        v297 = v88;
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v65 = a1;
        v172 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v172, qword_280240FB0);
        v173 = sub_267EF89F8();
        v174 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v174))
        {
          v175 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_61(v175);
          OUTLINED_FUNCTION_28_11(&dword_267B93000, v176, v177, "#SendMessageChangeHandler 3p app requested, redacting non-audio attachments");
          OUTLINED_FUNCTION_40_0();
        }

        v313 = MEMORY[0x277D84F90];
        v88 = sub_267BAF0DC(v171);
        v178 = 0;
        a3 = v171 & 0xFFFFFFFFFFFFFF8;
        v16 = &off_279C2E000;
        while (v88 != v178)
        {
          if ((v171 & 0xC000000000000001) != 0)
          {
            v179 = MEMORY[0x26D609870](v178, v171);
          }

          else
          {
            if (v178 >= *((v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_142;
            }

            v179 = *(v171 + 8 * v178 + 32);
          }

          v180 = v179;
          if (__OFADD__(v178, 1))
          {
            goto LABEL_141;
          }

          v181 = [v179 audioMessageFile];
          if (v181)
          {

            sub_267EF9BD8();
            a1 = *(v313 + 16);
            sub_267EF9C08();
            sub_267EF9C18();
            sub_267EF9BE8();
          }

          else
          {
          }

          ++v178;
        }

        v182 = v313;
        if (sub_267BAF0DC(v313))
        {
          a1 = v65;
          OUTLINED_FUNCTION_22_32();
          v16 = v306;
          a3 = v298;
          if (v182)
          {
            v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A440, &qword_267F02630);
            v313 = v182;
LABEL_90:
            sub_267ECE290();
            sub_267B9F98C(&v313, &qword_28022AEF0, &qword_267EFCDE0);
            goto LABEL_91;
          }
        }

        else
        {

          a1 = v65;
          OUTLINED_FUNCTION_22_32();
          v16 = v306;
          a3 = v298;
        }

        OUTLINED_FUNCTION_61_12();
        goto LABEL_90;
      }
    }

LABEL_91:
    v183 = sub_267BCEA0C(a1);
    if (!v183)
    {
      return;
    }

    v65 = v183;
    if (!sub_267BAF0DC(v183))
    {

      return;
    }

    if (qword_280228818 != -1)
    {
LABEL_143:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v184 = sub_267EF8A08();
    v185 = __swift_project_value_buffer(v184, qword_280240FB0);
    v186 = sub_267EF89F8();
    v187 = sub_267EF95D8();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61(v188);
      OUTLINED_FUNCTION_45_1();
      _os_log_impl(v189, v190, v191, v192, v193, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v194 = v305[7];
    __swift_project_boxed_opaque_existential_0(v305 + 3, v305[6]);
    v279 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v195 = sub_267EF2D28();
    v196 = v303;
    v282 = v195;
    __swift_storeEnumTagSinglePayload(v303, 1, 1, v195);
    v197 = sub_267EF6C28();
    __swift_storeEnumTagSinglePayload(v304, 1, 1, v197);
    v299 = OUTLINED_FUNCTION_28_3();
    v300 = sub_267EF6FF8();
    v307 = sub_267EF6FC8();
    v198 = v196;
    v199 = v286;
    sub_267C2FB6C(v198, v286, &qword_280229430, &qword_267EFD2C0);

    v278 = v185;
    v200 = sub_267EF89F8();
    v201 = sub_267EF95D8();

    v202 = os_log_type_enabled(v200, v201);
    v302 = a1;
    v297 = v88;
    if (v202)
    {
      v203 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *v203 = 136315394;
      v312 = v204;
      v313 = v301;
      v314 = a3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
      v205 = sub_267EF9098();
      v207 = sub_267BA33E8(v205, v206, &v312);

      *(v203 + 4) = v207;
      *(v203 + 12) = 2080;
      sub_267C2FB6C(v199, v280, &qword_280229430, &qword_267EFD2C0);
      v208 = sub_267EF9098();
      v210 = v209;
      sub_267B9F98C(v199, &qword_280229430, &qword_267EFD2C0);
      v211 = sub_267BA33E8(v208, v210, &v312);
      v16 = v306;

      *(v203 + 14) = v211;
      _os_log_impl(&dword_267B93000, v200, v201, "#SiriKitContactResolving CRR config creation with appIdentifier:%s, crrCommsAppSelectionJointId:%s", v203, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      sub_267B9F98C(v199, &qword_280229430, &qword_267EFD2C0);
    }

    v212 = v287;
    v213 = v282;
    if (v307 && (sub_267EF6F98(), v214 = sub_267EF37B8(), v216 = v215, , v216))
    {
      v306 = v214;
    }

    else
    {

      v306 = 0;
    }

    v313 = v279;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229438, &unk_267F01FB0);
    v287 = sub_267EF9098();
    v286 = v217;
    v218 = v305[12];
    __swift_project_boxed_opaque_existential_0(v305 + 8, v305[11]);
    sub_267EF3B68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v219 = swift_allocObject();
    *(v219 + 16) = xmmword_267EFC020;
    v220 = v298;
    *(v219 + 32) = v301;
    *(v219 + 40) = v220;
    sub_267C2FB6C(v304, v295, &qword_280229428, &unk_267F00E50);
    sub_267C2FB6C(v303, v212, &qword_280229430, &qword_267EFD2C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v212, 1, v213);

    if (EnumTagSinglePayload == 1)
    {
      sub_267B9F98C(v212, &qword_280229430, &qword_267EFD2C0);
    }

    else
    {
      sub_267EF2CE8();
      (*(*(v213 - 8) + 8))(v212, v213);
    }

    v222 = v289;
    sub_267EF6B28();
    v84 = v290;
    (*(v288 + 104))(v290, *MEMORY[0x277D56148], v222);
    v223 = v292;
    (*(v291 + 104))(v292, *MEMORY[0x277D560D0], v293);
    sub_267EF6AF8();

    sub_267B9F98C(v304, &qword_280229428, &unk_267F00E50);
    sub_267B9F98C(v303, &qword_280229430, &qword_267EFD2C0);
    if (sub_267EF6FC8())
    {
      v223 = sub_267EF6FA8();

      v78 = sub_267EF8678();
    }

    else
    {
      v78 = 0;
    }

    a1 = v302;
    sub_267EF6B08();
    sub_267B9AFEC((v305 + 3), &v313);
    v224 = __swift_project_boxed_opaque_existential_0(&v313, v316);
    v225 = sub_267BAF0DC(v65);
    if (!v225)
    {
      goto LABEL_119;
    }

    v223 = v225;
    v307 = v224;
    v312 = MEMORY[0x277D84F90];
    v89 = &v312;
    sub_267C72284();
    if ((v223 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_145:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v226 = 0;
  v227 = v312;
  do
  {
    if ((v65 & 0xC000000000000001) != 0)
    {
      v228 = MEMORY[0x26D609870](v226, v65);
    }

    else
    {
      v228 = *(v65 + 8 * v226 + 32);
    }

    v229 = v228;
    sub_267EF97D8();

    v312 = v227;
    v230 = v16;
    v231 = *(v227 + 16);
    if (v231 >= *(v227 + 24) >> 1)
    {
      sub_267C72284();
      v227 = v312;
    }

    ++v226;
    *(v227 + 16) = v231 + 1;
    (*(v310 + 32))(v227 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + *(v310 + 72) * v231, v230, v308);
    v16 = v230;
  }

  while (v223 != v226);
LABEL_119:

  OUTLINED_FUNCTION_22_32();
  v232 = sub_267EF6878();
  if (v223)
  {
    v233 = OUTLINED_FUNCTION_19_42();
    v234(v233);

    __swift_destroy_boxed_opaque_existential_0(&v313);
    v235 = v223;
    v236 = sub_267EF89F8();
    v237 = sub_267EF95E8();

    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v312 = v223;
      v313 = v239;
      *v238 = 136315138;
      v240 = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v241 = sub_267EF9098();
      v243 = sub_267BA33E8(v241, v242, &v313);

      *(v238 + 4) = v243;
      OUTLINED_FUNCTION_45_1();
      _os_log_impl(v244, v245, v246, v247, v248, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v239);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    v249 = MEMORY[0x277D84F90];
LABEL_129:
    v259 = v311;
    OUTLINED_FUNCTION_61_12();
  }

  else
  {
    v249 = v232;

    __swift_destroy_boxed_opaque_existential_0(&v313);
    v250 = *(v249 + 16);
    if (v250)
    {
      v313 = MEMORY[0x277D84F90];
      sub_267EF9BF8();
      v310 = *(v283 + 16);
      v251 = *(v283 + 80);
      v308 = v249;
      v252 = v249 + ((v251 + 32) & ~v251);
      v253 = *(v283 + 72);
      v254 = (v283 + 8);
      v255 = v311;
      v256 = v309;
      do
      {
        (v310)(v256, v252, v255);
        sub_267EF6858();
        (*v254)(v256, v255);
        sub_267EF9BD8();
        v257 = *(v313 + 16);
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        v252 += v253;
        --v250;
      }

      while (v250);
      (*(v284 + 8))(v294, v285);
      v258 = v313;
      v249 = v308;
      if (!v313)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v260 = OUTLINED_FUNCTION_19_42();
      v261(v260);
      v258 = MEMORY[0x277D84F90];
    }

    v262 = sub_267ECEE14(v258);

    v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
    v313 = v262;
    v259 = v311;
  }

  sub_267ECE290();
  sub_267B9F98C(&v313, &qword_28022AEF0, &qword_267EFCDE0);
  v263 = *(v249 + 16);
  if (v263)
  {
    v313 = MEMORY[0x277D84F90];
    sub_267C72264(0, v263, 0);
    v264 = v313;
    v310 = *(v283 + 16);
    v265 = *(v283 + 80);
    v308 = v249;
    v266 = v249 + ((v265 + 32) & ~v265);
    v267 = *(v283 + 72);
    v268 = (v283 + 8);
    do
    {
      v269 = v309;
      (v310)(v309, v266, v259);
      v270 = sub_267EF6828();
      (*v268)(v269, v259);
      v313 = v264;
      v272 = *(v264 + 16);
      v271 = *(v264 + 24);
      if (v272 >= v271 >> 1)
      {
        sub_267C72264((v271 > 1), v272 + 1, 1);
        v264 = v313;
      }

      *(v264 + 16) = v272 + 1;
      *(v264 + 4 * v272 + 32) = v270;
      v266 += v267;
      --v263;
      v259 = v311;
    }

    while (v263);
  }

  sub_267C7A414();
}

uint64_t sub_267E83968@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CCB8, &qword_267F0D6D8);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  v62 = &v53 - v5;
  v6 = sub_267EF51F8();
  v7 = OUTLINED_FUNCTION_58(v6);
  v60 = v8;
  v61 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v59 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v56 = &v53 - v14;
  v66 = sub_267EF5318();
  v55 = *(v66 - 8);
  v64 = v55;
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  v65 = sub_267EF5378();
  v19 = OUTLINED_FUNCTION_58(v65);
  v21 = v20;
  v54 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_60();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v53 - v28;
  v30 = sub_267EF5198();
  v31 = OUTLINED_FUNCTION_58(v30);
  v33 = v32;
  v57 = v31;
  v58 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_60();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v53 - v40;
  sub_267BC8EDC(0, 0, &v53 - v40);
  sub_267EF5368();
  (*(v33 + 16))(v38, v41, v30);
  sub_267EF5358();
  sub_267EF5308();
  (*(v21 + 16))(v26, v29, v65);
  sub_267EF5298();
  v42 = v56;
  sub_267EF51E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229AA8, &qword_267EFEF30);
  v43 = *(v55 + 72);
  v44 = v64;
  v45 = *(v64 + 80);
  OUTLINED_FUNCTION_6_50();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_267EFC020;
  (*(v44 + 16))(v46 + v30, v18, v66);
  sub_267EF51C8();
  v47 = v60;
  v48 = v61;
  (*(v60 + 16))(v59, v42, v61);
  v49 = *MEMORY[0x277D5DA78];
  v50 = sub_267EF5158();
  v51 = v62;
  (*(*(v50 - 8) + 104))(v62, v49, v50);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v50);
  sub_267EF4C58();
  (*(v47 + 8))(v42, v48);
  (*(v64 + 8))(v18, v66);
  (*(v54 + 8))(v29, v65);
  return (*(v58 + 8))(v41, v57);
}

uint64_t sub_267E83E04(uint64_t a1)
{
  v2 = sub_267EF4C08();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267EF4BA8();
  v10 = OUTLINED_FUNCTION_58(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = sub_267EF8A08();
  __swift_project_value_buffer(v17, qword_280240FB0);
  v18 = *(v12 + 16);
  v56 = a1;
  v18(v16, a1, v9);
  v19 = sub_267EF89F8();
  v20 = sub_267EF95C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v53 = v5;
    v22 = v21;
    v52 = swift_slowAlloc();
    v59[0] = v52;
    *v22 = 136315138;
    sub_267E865A8(&qword_28022AF50, MEMORY[0x277D5C118]);
    v23 = sub_267EF9E58();
    v54 = v2;
    v25 = v24;
    (*(v12 + 8))(v16, v9);
    v26 = sub_267BA33E8(v23, v25, v59);
    v2 = v54;

    *(v22 + 4) = v26;
    _os_log_impl(&dword_267B93000, v19, v20, "#UnsendMessagesRCHFlowStrategy received input: %s", v22, 0xCu);
    v27 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x26D60A7B0](v27, -1, -1);
    v28 = v22;
    v5 = v53;
    MEMORY[0x26D60A7B0](v28, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v16, v9);
  }

  v29 = v55;
  sub_267EF4B88();
  v30 = sub_267E57DFC(v29, &v57);
  (*(v5 + 8))(v29, v2, v30);
  if (v58)
  {
    sub_267BE58F4(&v57, v59);
    OUTLINED_FUNCTION_13_1();
    v31 = v2[36];
    v32 = OUTLINED_FUNCTION_38_0();
    if (v33(v32) & 1) != 0 && (OUTLINED_FUNCTION_13_1(), v34 = v2[28], v35 = OUTLINED_FUNCTION_38_0(), (v36(v35)) || (OUTLINED_FUNCTION_13_1(), v37 = v2[12], v38 = OUTLINED_FUNCTION_38_0(), (v39(v38)))
    {
      sub_267EF3E58();
    }

    else
    {
      v46 = sub_267EF89F8();
      v47 = sub_267EF95D8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v48);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v49, v50, "#UnsendMessagesRCHFlowStrategy unrelated request, ignoring");
        OUTLINED_FUNCTION_26();
      }

      sub_267EF3E68();
    }

    return __swift_destroy_boxed_opaque_existential_0(v59);
  }

  else
  {
    sub_267B9FF34(&v57, &unk_28022BBF0, &unk_267F01C60);
    v40 = sub_267EF89F8();
    v41 = sub_267EF95C8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v42);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v43, v44, "#UnsendMessagesRCHFlowStrategy unexpected input, ignoring");
      OUTLINED_FUNCTION_26();
    }

    return sub_267EF3E68();
  }
}

uint64_t sub_267E84268()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_22_0();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

char *sub_267E84294()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#UnsendMessagesRCHFlowStrategy making intent");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 16);

  v8 = [*(v7 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 32)) sentMessages];
  if (v8)
  {
    sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
    v9 = sub_267EF92F8();

    v10 = sub_267BAF0DC(v9);
    if (v10)
    {
      v11 = v10;
      v26 = MEMORY[0x277D84F90];
      result = sub_267BC7934(0, v10 & ~(v10 >> 63), 0);
      if (v11 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = 0;
      v8 = v26;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x26D609870](v13, v9);
        }

        else
        {
          v14 = *(v9 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = [v14 identifier];
        v17 = sub_267EF9028();
        v19 = v18;

        v21 = v26[2];
        v20 = v26[3];
        if (v21 >= v20 >> 1)
        {
          sub_267BC7934((v20 > 1), v21 + 1, 1);
        }

        ++v13;
        v26[2] = v21 + 1;
        v22 = &v26[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
      }

      while (v11 != v13);
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }
  }

  v23 = objc_allocWithZone(MEMORY[0x277CD4290]);
  v24 = sub_267E8653C(v8);
  v25 = *(v0 + 8);

  return v25(v24);
}

uint64_t sub_267E84518()
{
  OUTLINED_FUNCTION_12();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = sub_267EF4228();
  v1[27] = v6;
  v7 = *(v6 - 8);
  v1[28] = v7;
  v8 = *(v7 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E84654()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#UnsendMessagesRCHFlowStrategy received error response");
    OUTLINED_FUNCTION_26();
  }

  v7 = v0[24];

  v8 = [v7 code];
  if (v8 == 9)
  {
    v9 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_unsendMessagesCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[36] = v10;
    *v10 = v11;
    v10[1] = sub_267E84B20;
    v12 = v0[34];

    return sub_267EBC480();
  }

  else if (*MEMORY[0x277CD45B0] == v8)
  {
    v14 = v0[25];
    v15 = *(v14 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_unsendMessagesCATs);
    v16 = [*(v14 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext + *(type metadata accessor for TimedSentMessageContext(0) + 28)) recipients];
    if (v16)
    {
      sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
      v17 = sub_267EF92F8();

      v16 = sub_267BAF0DC(v17);

      LOBYTE(v16) = v16 == 1;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[38] = v18;
    *v18 = v19;
    v18[1] = sub_267E84D6C;
    v20 = v0[33];

    return sub_267EBBE4C(v20, v16);
  }

  else if (*MEMORY[0x277CD45C0] == v8)
  {
    v21 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_unsendMessagesCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[40] = v22;
    *v22 = v23;
    v22[1] = sub_267E84FBC;
    v24 = v0[32];

    return sub_267EBC3D0();
  }

  else if (*MEMORY[0x277CD45B8] == v8)
  {
    v25 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_unsendMessagesCATs);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[42] = v26;
    *v26 = v27;
    v26[1] = sub_267E8520C;
    v28 = v0[31];

    return sub_267EBC320();
  }

  else if (v8 == 10)
  {
    v29 = v0[23];
    v30 = *(v0[25] + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_unsendMessagesCATs);
    type metadata accessor for MessagesApp(0);

    v31 = sub_267EC814C();
    v0[44] = v31;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[45] = v32;
    *v32 = v33;
    v32[1] = sub_267E8545C;
    v34 = v0[30];

    return sub_267EBC0A0(v34, v31);
  }

  else
  {
    v35 = v0[25];
    v36 = v35[6];
    __swift_project_boxed_opaque_existential_0(v35 + 2, v35[5]);
    v37 = *(v36 + 8);
    v38 = OUTLINED_FUNCTION_38_0();
    v39(v38);
    v40 = *(MEMORY[0x277D5BCD8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[47] = v41;
    *v41 = v42;
    v41[1] = sub_267E856B4;
    v43 = v0[29];

    return MEMORY[0x2821BAEE0](v43, v0 + 2);
  }
}

uint64_t sub_267E84B20()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 296) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E84C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v21 = v19[34];
  v20 = v19[35];
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_72();
  v24(v23);
  OUTLINED_FUNCTION_1_81();
  v25 = OUTLINED_FUNCTION_12_0();
  v26(v25);
  v27 = v19[15];
  __swift_project_boxed_opaque_existential_0(v19 + 12, v27);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_3_79();
  OUTLINED_FUNCTION_28_35(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66();
  sub_267B9FF34(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v30 = OUTLINED_FUNCTION_7_49();
  v31(v30);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E84D6C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E84E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = v19[35];
  v21 = v19[33];
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_72();
  v24(v23);
  OUTLINED_FUNCTION_1_81();
  v25 = OUTLINED_FUNCTION_12_0();
  v26(v25);
  v27 = v19[15];
  __swift_project_boxed_opaque_existential_0(v19 + 12, v27);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_3_79();
  OUTLINED_FUNCTION_28_35(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66();
  sub_267B9FF34(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v30 = OUTLINED_FUNCTION_7_49();
  v31(v30);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E84FBC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 320);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E850B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = v19[35];
  v21 = v19[32];
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_72();
  v24(v23);
  OUTLINED_FUNCTION_1_81();
  v25 = OUTLINED_FUNCTION_12_0();
  v26(v25);
  v27 = v19[15];
  __swift_project_boxed_opaque_existential_0(v19 + 12, v27);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_3_79();
  OUTLINED_FUNCTION_28_35(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66();
  sub_267B9FF34(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v30 = OUTLINED_FUNCTION_7_49();
  v31(v30);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E8520C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E85308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = v19[35];
  v21 = v19[31];
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_72();
  v24(v23);
  OUTLINED_FUNCTION_1_81();
  v25 = OUTLINED_FUNCTION_12_0();
  v26(v25);
  v27 = v19[15];
  __swift_project_boxed_opaque_existential_0(v19 + 12, v27);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_3_79();
  OUTLINED_FUNCTION_28_35(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66();
  sub_267B9FF34(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v30 = OUTLINED_FUNCTION_7_49();
  v31(v30);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E8545C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 368) = v0;

  if (!v0)
  {
    v9 = *(v3 + 352);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267E85560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v20 = v19[35];
  v21 = v19[30];
  OUTLINED_FUNCTION_37_16();
  v22();
  v23 = OUTLINED_FUNCTION_0_72();
  v24(v23);
  OUTLINED_FUNCTION_1_81();
  v25 = OUTLINED_FUNCTION_12_0();
  v26(v25);
  v27 = v19[15];
  __swift_project_boxed_opaque_existential_0(v19 + 12, v27);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v28 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v28);
  OUTLINED_FUNCTION_3_79();
  OUTLINED_FUNCTION_28_35(v29, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66();
  sub_267B9FF34(v27, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v30 = OUTLINED_FUNCTION_7_49();
  v31(v30);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v27, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E856B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v6 = *(v5 + 376);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 384) = v0;

  sub_267B9FF34(v3 + 16, &qword_28022A620, &qword_267F08EC0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E857C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  (*(v19[28] + 32))(v19[35], v19[29], v19[27]);
  v20 = OUTLINED_FUNCTION_0_72();
  v21(v20);
  OUTLINED_FUNCTION_1_81();
  v22 = OUTLINED_FUNCTION_12_0();
  v23(v22);
  v24 = v19[15];
  __swift_project_boxed_opaque_existential_0(v19 + 12, v24);
  OUTLINED_FUNCTION_12_0();
  sub_267EF3BC8();
  v25 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_32_1(v25);
  OUTLINED_FUNCTION_3_79();
  OUTLINED_FUNCTION_28_35(v26, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_2_66();
  sub_267B9FF34(v24, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v18, &unk_28022AE40, &unk_267EFCB60);
  v27 = OUTLINED_FUNCTION_7_49();
  v28(v27);
  OUTLINED_FUNCTION_22_33();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v24, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_267E85920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 384);
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_267E859B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 296);
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_267E85A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 312);
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_267E85AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 328);
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_267E85B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 344);
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_267E85C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 352);

  v12 = *(v10 + 368);
  OUTLINED_FUNCTION_8_54();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_267E85CB8()
{
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_unsendMessagesCATs);

  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_commonTemplateProvider));
}

uint64_t sub_267E85CFC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267C97AF4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_sentMessageContext);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_unsendMessagesCATs);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow29UnsendMessagesRCHFlowStrategy_commonTemplateProvider));
  return v0;
}

uint64_t sub_267E85D4C()
{
  sub_267E85CFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnsendMessagesRCHFlowStrategy()
{
  result = qword_28022CCD8;
  if (!qword_28022CCD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E85DF8()
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267E85EB8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BD5D40;

  return sub_267E84268();
}

uint64_t sub_267E85F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UnsendMessagesRCHFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_267E85F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for UnsendMessagesRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_267E86068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for UnsendMessagesRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_267E86138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for UnsendMessagesRCHFlowStrategy();
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_267E86208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for UnsendMessagesRCHFlowStrategy();
  *v13 = v6;
  v13[1] = sub_267BAEBEC;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_267E862E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BBD07C;

  return sub_267E84518();
}

uint64_t sub_267E8639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D5C0D0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for UnsendMessagesRCHFlowStrategy();
  *v9 = v4;
  v9[1] = sub_267BA83C4;

  return MEMORY[0x2821BBB48](a1, a2, v10, a4);
}

id sub_267E8653C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_267EF92D8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithMessageIdentifiers_];

  return v3;
}

uint64_t sub_267E865A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267E86600(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);

  v6 = sub_267BAF0DC(v5);
  if (!v6)
  {

    return;
  }

  v7 = v6;
  v8 = 0;
  v9 = v5 & 0xC000000000000001;
  v59 = v5 + 32;
  v60 = v5 & 0xFFFFFFFFFFFFFF8;
  v56 = MEMORY[0x277D84F90];
  v10 = &off_279C2E000;
  v57 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v9)
    {
      v11 = MEMORY[0x26D609870](v8, v5);
    }

    else
    {
      if (v8 >= *(v60 + 16))
      {
        goto LABEL_47;
      }

      v11 = *(v59 + 8 * v8);
    }

    if (__OFADD__(v8++, 1))
    {
      break;
    }

    v62 = v11;
    v13 = [v11 v10[424]];
    v14 = sub_267EF9028();
    v16 = v15;

    v17 = *v2;
    if (!*(*v2 + 16))
    {
      goto LABEL_17;
    }

    v18 = sub_267BA9948();
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

    v61 = v14;
    v7 = v5;
    v10 = *(*(v17 + 56) + 8 * v18);
    v20 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v20);
    v2 = *(v5 + 32);

    (v2)(v20, v5);
    v9 = v21;
    if (!v10[2])
    {

LABEL_16:

      OUTLINED_FUNCTION_11_48();
LABEL_17:

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v35 = sub_267EF8A08();
      __swift_project_value_buffer(v35, qword_280240FB0);
      v36 = sub_267EF89F8();
      v37 = sub_267EF95D8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_267B93000, v36, v37, "#MessageRegistry Tried to account for component which doesn't exist or was already accounted for", v38, 2u);
        MEMORY[0x26D60A7B0](v38, -1, -1);
      }

      goto LABEL_22;
    }

    v22 = sub_267BA9948();
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }

    v25 = *(v10[7] + v22);

    OUTLINED_FUNCTION_11_48();
    if (v25)
    {
      goto LABEL_17;
    }

    v27 = sub_267E86AEC(v64, v61, v16);
    if (*v26)
    {
      v28 = v26;
      v29 = a1[3];
      v30 = a1[4];
      v55 = v27;
      __swift_project_boxed_opaque_existential_0(a1, v29);
      v31 = (*(v30 + 32))(v29, v30);
      v33 = v32;
      v34 = *v28;
      swift_isUniquelyReferenced_nonNull_native();
      v63 = *v28;
      sub_267E86BC0(1, v31, v33);
      *v28 = v63;
      v9 = v57;

      v55(v64, 0);
    }

    else
    {
      (v27)(v64, 0);
    }

    v39 = *v2;
    v10 = &off_279C2E000;
    if (!*(*v2 + 16))
    {
      goto LABEL_48;
    }

    v40 = sub_267BA9948();
    if ((v41 & 1) == 0)
    {
      goto LABEL_49;
    }

    v42 = 0;
    v43 = *(*(v39 + 56) + 8 * v40);
    v44 = 1 << *(v43 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v43 + 64);
    v47 = (v44 + 63) >> 6;
    while (v46)
    {
      v48 = v42;
LABEL_37:
      v49 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      if ((*(*(v43 + 56) + (v49 | (v48 << 6))) & 1) == 0)
      {

        goto LABEL_22;
      }
    }

    while (1)
    {
      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v48 >= v47)
      {
        break;
      }

      v46 = *(v43 + 64 + 8 * v48);
      ++v42;
      if (v46)
      {
        v42 = v48;
        goto LABEL_37;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = *(v56 + 16);
      sub_267BF4EE8();
      v56 = v53;
    }

    v50 = *(v56 + 16);
    if (v50 >= *(v56 + 24) >> 1)
    {
      sub_267BF4EE8();
      v56 = v54;
    }

    *(v56 + 16) = v50 + 1;
    v51 = v56 + 16 * v50;
    *(v51 + 32) = v61;
    *(v51 + 40) = v16;
LABEL_22:
    if (v8 == v7)
    {

      return;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void (*sub_267E86AEC(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_267E873DC(v6, a2, a3);
  return sub_267E86B60;
}

void sub_267E86B60(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_267E86BC0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_267BA9948();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD00, &qword_267F0D8A8);
  result = sub_267EF9C68();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v4;
  result = sub_267BA9948();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    *(v16[7] + v11) = a1 & 1;
  }

  else
  {
    sub_267E8721C(v11, a2, a3, a1 & 1, v16);
  }

  return result;
}

uint64_t sub_267E86D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_0_73(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_10_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_6_51();
    if (!v16)
    {
      goto LABEL_14;
    }

    v9 = v15;
  }

  if (v8)
  {
    v17 = *(*v7 + 56);
    v18 = *(v17 + 8 * v9);
    *(v17 + 8 * v9) = v6;
  }

  else
  {
    OUTLINED_FUNCTION_5_67();
    sub_267BE6244(v20, v21, v22, v23, v24);
  }
}

uint64_t sub_267E86DF4()
{
  v4 = OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_0_73(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_10_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD20, &qword_267F0D8D0);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_6_51();
    if (!v8)
    {
      goto LABEL_14;
    }

    v3 = v7;
  }

  if (v2)
  {
    v9 = *(*v1 + 56);
    v10 = *(v9 + 8 * v3);
    *(v9 + 8 * v3) = v0;
    OUTLINED_FUNCTION_60_2();
  }

  else
  {
    OUTLINED_FUNCTION_5_67();
    sub_267BE6244(v13, v14, v15, v16, v17);
    OUTLINED_FUNCTION_60_2();
  }
}

uint64_t sub_267E86ED4()
{
  v1 = OUTLINED_FUNCTION_1_82();
  OUTLINED_FUNCTION_0_73(v1, v2);
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD28, &qword_267F0D8D8);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    OUTLINED_FUNCTION_8_55();
    OUTLINED_FUNCTION_3_80();
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v7 = *(*v0 + 56);
    OUTLINED_FUNCTION_60_2();

    return sub_267E87724(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_5_67();
    sub_267E87264(v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_60_2();
  }
}

uint64_t sub_267E86FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OUTLINED_FUNCTION_4_65();
  OUTLINED_FUNCTION_0_73(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD10, &qword_267F0D8C0);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    v15 = *v3;
    OUTLINED_FUNCTION_12_45();
    OUTLINED_FUNCTION_3_80();
    if (!v17)
    {
      goto LABEL_14;
    }

    v13 = v16;
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(sub_267EF6F88() - 8);
    v21 = *(v20 + 40);
    v22 = v19 + *(v20 + 72) * v13;
    OUTLINED_FUNCTION_60_2();

    __asm { BRAA            X3, X16 }
  }

  sub_267E872C0(v13, a2, a3, a1, v18);
  OUTLINED_FUNCTION_60_2();
}

_OWORD *sub_267E8710C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v10 = OUTLINED_FUNCTION_4_65();
  OUTLINED_FUNCTION_0_73(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_10_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    v13 = *v3;
    OUTLINED_FUNCTION_12_45();
    OUTLINED_FUNCTION_6_51();
    if (!v15)
    {
      goto LABEL_14;
    }

    v5 = v14;
  }

  v16 = *v6;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0((v16[7] + 32 * v5));
    OUTLINED_FUNCTION_60_2();

    return sub_267BA7F4C(v17, v18);
  }

  else
  {
    sub_267E87370(v5, a2, a3, a1, v16);
    OUTLINED_FUNCTION_60_2();
  }
}

unint64_t sub_267E8721C(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_267E87264(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_267E872C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_267EF6F88();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_267E87370(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_267BA7F4C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void (*sub_267E873DC(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_267E876F0(v7);
  v7[9] = sub_267E874D4(v7 + 4, a2, a3);
  return sub_267E87474;
}

void sub_267E87474(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_267E874D4(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_267BA9948();
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD08, &unk_267F0D8B0);
  if (sub_267EF9C68())
  {
    v14 = *v4;
    v15 = sub_267BA9948();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_267EF9F28();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_267E87614;
}

void sub_267E87614(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_267BE6244(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_267CF6F5C(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229130, &qword_267F0B830);
    sub_267EF9C88();
  }

  v6 = *v1;

  free(v1);
}

uint64_t (*sub_267E876F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_267E87718;
}

uint64_t sub_267E87780(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v136 = v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_77_0();
  v159 = v6;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77_0();
  v158 = v8;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77_0();
  v160 = v10;
  OUTLINED_FUNCTION_115();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v135 - v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v157 = v15;
  OUTLINED_FUNCTION_115();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v135 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  v135[0] = v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77_0();
  v156 = v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77_0();
  v155 = v24;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0();
  v154 = v26;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77_0();
  v153 = v28;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_77_0();
  v152 = v30;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_77_0();
  v151 = v32;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_77_0();
  v150 = v34;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_77_0();
  v149 = v36;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_77_0();
  v148 = v38;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_0();
  v147 = v40;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_77_0();
  v146 = v42;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_77_0();
  v145 = v44;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_77_0();
  v144 = v46;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_77_0();
  v142 = v48;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_77_0();
  v143 = v50;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_77_0();
  v141 = v52;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_77_0();
  v140 = v54;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_77_0();
  v139 = v56;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_77_0();
  v138 = v58;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_77_0();
  v137 = v60;
  OUTLINED_FUNCTION_115();
  v62 = MEMORY[0x28223BE20](v61);
  v64 = v135 - v63;
  MEMORY[0x28223BE20](v62);
  v66 = v135 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v70 = v135 - v69;
  sub_267BE28D0(a1, &selRef_siteName);
  if (v71)
  {

    sub_267BE28D0(a1, &selRef_siteName);
    if (!v72)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  sub_267E77D14(a1);
  if (v73)
  {
    sub_267EF2B88();

    v74 = sub_267EF2BA8();
    if (__swift_getEnumTagSinglePayload(v70, 1, v74) == 1)
    {
      sub_267BB2D24(v70);
    }

    else
    {
      v75 = sub_267EF2AF8();
      v76 = [v75 _lp_simplifiedDisplayString];

      sub_267EF9028();
      v78 = v77;

      (*(*(v74 - 8) + 8))(v70, v74);
      if (v78)
      {
LABEL_3:
        sub_267EF90F8();
      }
    }
  }

LABEL_8:
  v79 = sub_267EF79B8();
  OUTLINED_FUNCTION_5_68(v66);
  sub_267BE28D0(a1, &selRef_title);
  if (v80)
  {
    sub_267EF90F8();
  }

  v81 = v138;
  v82 = 1;
  v83 = v64;
  OUTLINED_FUNCTION_4_66(v64);
  INMessageLinkMediaType.description.getter([a1 linkMediaType]);
  v84 = v137;
  sub_267EF90F8();

  __swift_storeEnumTagSinglePayload(v84, 0, 1, v79);
  sub_267BE28D0(a1, &selRef_songTitle);
  if (v85)
  {
    sub_267EF90F8();

    v82 = 0;
  }

  __swift_storeEnumTagSinglePayload(v81, v82, 1, v79);
  sub_267BE28D0(a1, &selRef_songArtist);
  if (v86)
  {
    sub_267EF90F8();

    v87 = OUTLINED_FUNCTION_7_51();
    v88 = v14;
  }

  else
  {
    v88 = v14;
    v87 = v139;
  }

  OUTLINED_FUNCTION_0_74(v87);
  sub_267BE28D0(a1, &selRef_albumName);
  v89 = v135[0];
  if (v90)
  {
    sub_267EF90F8();

    v91 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v91 = v140;
  }

  OUTLINED_FUNCTION_1_83(v91);
  sub_267BE28D0(a1, &selRef_albumArtist);
  if (v92)
  {
    sub_267EF90F8();

    v93 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v93 = v141;
  }

  OUTLINED_FUNCTION_0_74(v93);
  sub_267BE28D0(a1, &selRef_musicVideoName);
  if (v94)
  {
    sub_267EF90F8();

    v95 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v95 = v143;
  }

  OUTLINED_FUNCTION_1_83(v95);
  sub_267BE28D0(a1, &selRef_musicVideoArtist);
  if (v96)
  {
    sub_267EF90F8();

    v97 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v97 = v142;
  }

  OUTLINED_FUNCTION_0_74(v97);
  sub_267BE28D0(a1, &selRef_artistName);
  if (v98)
  {
    sub_267EF90F8();

    v99 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v99 = v144;
  }

  OUTLINED_FUNCTION_1_83(v99);
  sub_267BE28D0(a1, &selRef_playlistName);
  if (v100)
  {
    sub_267EF90F8();

    v101 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v101 = v145;
  }

  OUTLINED_FUNCTION_0_74(v101);
  sub_267BE28D0(a1, &selRef_playlistCurator);
  if (v102)
  {
    sub_267EF90F8();

    v103 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v103 = v146;
  }

  OUTLINED_FUNCTION_1_83(v103);
  sub_267BE28D0(a1, &selRef_radioName);
  if (v104)
  {
    sub_267EF90F8();

    v105 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v105 = v147;
  }

  OUTLINED_FUNCTION_0_74(v105);
  sub_267BE28D0(a1, &selRef_radioCurator);
  if (v106)
  {
    sub_267EF90F8();

    v107 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v107 = v148;
  }

  OUTLINED_FUNCTION_1_83(v107);
  sub_267BE28D0(a1, &selRef_softwareName);
  if (v108)
  {
    sub_267EF90F8();

    v109 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v109 = v149;
  }

  OUTLINED_FUNCTION_0_74(v109);
  sub_267BE28D0(a1, &selRef_bookName);
  if (v110)
  {
    sub_267EF90F8();

    v111 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v111 = v150;
  }

  OUTLINED_FUNCTION_1_83(v111);
  sub_267BE28D0(a1, &selRef_bookAuthor);
  if (v112)
  {
    sub_267EF90F8();

    v113 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v113 = v151;
  }

  OUTLINED_FUNCTION_0_74(v113);
  sub_267BE28D0(a1, &selRef_audioBookName);
  if (v114)
  {
    sub_267EF90F8();

    v115 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v115 = v152;
  }

  OUTLINED_FUNCTION_1_83(v115);
  sub_267BE28D0(a1, &selRef_audioBookAuthor);
  if (v116)
  {
    sub_267EF90F8();

    v117 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v117 = v153;
  }

  OUTLINED_FUNCTION_0_74(v117);
  sub_267BE28D0(a1, &selRef_podcastName);
  if (v118)
  {
    sub_267EF90F8();

    v119 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v119 = v154;
  }

  OUTLINED_FUNCTION_1_83(v119);
  sub_267BE28D0(a1, &selRef_podcastArtist);
  if (v120)
  {
    sub_267EF90F8();

    v121 = OUTLINED_FUNCTION_7_51();
  }

  else
  {
    v121 = v155;
  }

  OUTLINED_FUNCTION_0_74(v121);
  sub_267BE28D0(a1, &selRef_podcastEpisodeName);
  if (v122)
  {
    sub_267EF90F8();

    v123 = OUTLINED_FUNCTION_6_52();
  }

  else
  {
    v123 = v156;
  }

  OUTLINED_FUNCTION_1_83(v123);
  sub_267BE28D0(a1, &selRef_podcastEpisodePodcastName);
  if (v124)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_4_66(v89);
  sub_267BE28D0(a1, &selRef_tvEpisodeEpisodeName);
  if (v125)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_5_68(v19);
  sub_267BE28D0(a1, &selRef_tvEpisodeSeasonName);
  if (v126)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_4_66(v157);
  sub_267BE28D0(a1, &selRef_tvSeasonName);
  if (v127)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_5_68(v88);
  sub_267BE28D0(a1, &selRef_movieName);
  if (v128)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_4_66(v160);
  sub_267BE28D0(a1, &selRef_tvShowName);
  if (v129)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_5_68(v158);
  sub_267BE28D0(a1, &selRef_movieBundleName);
  if (v130)
  {
    sub_267EF90F8();
  }

  OUTLINED_FUNCTION_4_66(v159);
  sub_267BE28D0(a1, &selRef_appleTvTitle);
  if (v131)
  {
    sub_267EF90F8();
  }

  v132 = v136;
  OUTLINED_FUNCTION_5_68(v136);
  v133 = sub_267C87668(v66, v83, v137, v138, v139, v140, v141, v143, v142, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v89, v19, v157, v88, v160, v158, v159, v132);

  return v133;
}

uint64_t sub_267E884B4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = sub_267EF4D38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
}

uint64_t sub_267E88670(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  while (v5)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11);
    if (!v3)
    {
      --v5;
      if ((v9 & 1) == 0)
      {
        continue;
      }
    }

    return v7;
  }

  return 8;
}

uint64_t sub_267E886DC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v4);
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  OUTLINED_FUNCTION_43();
  v2 = sub_267EF5018();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

uint64_t sub_267E88754()
{
  OUTLINED_FUNCTION_18_37();
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000002FLL, 0x8000000267F1C960);
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  v2 = sub_267EF5018();
  MEMORY[0x26D608E60](v2);

  OUTLINED_FUNCTION_23_29();
  return v4;
}

void sub_267E887F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_267EF4D18();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v12 = (v11 - v10);
  sub_267E5A3C8();
  v13 = sub_267EF97F8();
  (*(v7 + 16))(v12, a1, v4);
  v14 = (*(v7 + 88))(v12, v4);
  if (v14 == *MEMORY[0x277D60170])
  {
    v15 = OUTLINED_FUNCTION_3_81();
    v16(v15);
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_3:
    v18 = v17;

LABEL_7:
    v13 = v18;
    goto LABEL_8;
  }

  if (v14 == *MEMORY[0x277D60188])
  {
    v19 = OUTLINED_FUNCTION_3_81();
    v20(v19);
    v21 = sub_267E88CB0(*v12);
LABEL_6:
    v18 = v21;

    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x277D60180])
  {
    v35 = OUTLINED_FUNCTION_3_81();
    v36(v35);
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    goto LABEL_3;
  }

  if (v14 == *MEMORY[0x277D60178])
  {
    v37 = OUTLINED_FUNCTION_3_81();
    v38(v37);
    v21 = sub_267E88EB8(*v12);
    goto LABEL_6;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v39 = sub_267EF8A08();
  __swift_project_value_buffer(v39, qword_280240FB0);
  OUTLINED_FUNCTION_43();

  v40 = sub_267EF89F8();
  v41 = sub_267EF95E8();

  if (os_log_type_enabled(v40, v41))
  {
    v46 = swift_slowAlloc();
    v47 = OUTLINED_FUNCTION_52();
    v48 = v47;
    *v46 = 136315138;
    v42 = *(v2 + 48);
    __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    v43 = sub_267EF5018();
    v45 = sub_267BA33E8(v43, v44, &v48);

    *(v46 + 4) = v45;
    _os_log_impl(&dword_267B93000, v40, v41, "#AppSelectionSignalCollection signal=[%s]: unknown SignalValue type", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  (*(v7 + 8))(v12, v4);
LABEL_8:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  OUTLINED_FUNCTION_43();

  v23 = v13;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_52();
    v48 = v28;
    *v26 = 136315394;
    v29 = *(v2 + 48);
    __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
    v30 = sub_267EF5018();
    v32 = sub_267BA33E8(v30, v31, &v48);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v23;
    v33 = v23;
    _os_log_impl(&dword_267B93000, v24, v25, "#AppSelectionSignalCollection signal=[%s]: value=[%@]", v26, 0x16u);
    sub_267B9F98C(v27, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v34 = *(v2 + 64);
  (*(v2 + 56))(v23);
}

id sub_267E88CB0(uint64_t a1)
{
  v2 = sub_267C8F66C(a1);
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);

    v5 = sub_267EF89F8();
    v6 = sub_267EF95E8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315394;
      v9 = v1[6];
      __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
      v10 = sub_267EF5018();
      v12 = sub_267BA33E8(v10, v11, &v16);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_267BA33E8(7630409, 0xE300000000000000, &v16);
      _os_log_impl(&dword_267B93000, v5, v6, "#AppSelectionSignalCollection signal=[%s]: unexpected value of %s, set to -1", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v8, -1, -1);
      MEMORY[0x26D60A7B0](v7, -1, -1);
    }

    sub_267E5A3C8();
    return sub_267EF97F8();
  }

  else
  {
    v14 = v2;
    v15 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    return [v15 initWithInteger_];
  }
}

id sub_267E88EB8(uint64_t a1)
{
  v2 = sub_267C8F5FC(a1);
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);

    v5 = sub_267EF89F8();
    v6 = sub_267EF95E8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315394;
      v9 = v1[6];
      __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
      v10 = sub_267EF5018();
      v12 = sub_267BA33E8(v10, v11, &v16);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_267BA33E8(0x656C62756F44, 0xE600000000000000, &v16);
      _os_log_impl(&dword_267B93000, v5, v6, "#AppSelectionSignalCollection signal=[%s]: unexpected value of %s, set to -1", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v8, -1, -1);
      MEMORY[0x26D60A7B0](v7, -1, -1);
    }

    sub_267E5A3C8();
    return sub_267EF97F8();
  }

  else
  {
    v14 = *&v2;
    v15 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    return [v15 initWithDouble_];
  }
}

uint64_t sub_267E890D0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_267E8918C()
{
  OUTLINED_FUNCTION_18_37();
  sub_267EF9B68();

  v1 = v0[8];
  __swift_project_boxed_opaque_existential_0(v0 + 4, v0[7]);
  v2 = sub_267EF5018();
  MEMORY[0x26D608E60](v2);

  OUTLINED_FUNCTION_23_29();
  return 0xD00000000000002DLL;
}

void sub_267E89224()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF4D18();
  v5 = OUTLINED_FUNCTION_58(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = (&v72 - v14);
  v16 = v7[2];
  v16(&v72 - v14, v3, v4);
  v17 = v7[11];
  v18 = OUTLINED_FUNCTION_46_2();
  v20 = v19(v18);
  if (v20 == *MEMORY[0x277D60170])
  {
    v21 = v7[12];
    v22 = OUTLINED_FUNCTION_46_2();
    v23(v22);
    v24 = v1[2];
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = *v15;
      v27 = (v24 + 40);
      v29 = v1[9];
      v28 = v1[10];
      do
      {
        v30 = *(v27 - 1);
        v31 = *v27;
        v32 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        v33 = [v32 initWithInteger_];
        v29(v30, v31, v33);

        v27 += 2;
        --v25;
      }

      while (v25);
    }

    goto LABEL_20;
  }

  if (v20 == *MEMORY[0x277D60188])
  {
    v34 = v7[12];
    v35 = OUTLINED_FUNCTION_46_2();
    v36(v35);
    sub_267E8970C(*v15);
LABEL_10:

    goto LABEL_20;
  }

  if (v20 == *MEMORY[0x277D60178])
  {
    v37 = v7[12];
    v38 = OUTLINED_FUNCTION_46_2();
    v39(v38);
    sub_267E89BE0(*v15);
    goto LABEL_10;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v40 = sub_267EF8A08();
  __swift_project_value_buffer(v40, qword_280240FB0);
  v16(v12, v3, v4);

  v41 = sub_267EF89F8();
  v42 = sub_267EF95E8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v77 = v75;
    *v43 = 136315906;
    v44 = v1[8];
    __swift_project_boxed_opaque_existential_0(v1 + 4, v1[7]);
    v74 = v42;
    v45 = sub_267EF5018();
    v47 = sub_267BA33E8(v45, v46, &v77);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    sub_267E8D674(&qword_28022CD78, 255, MEMORY[0x277D60190]);
    v48 = sub_267EF9E58();
    v50 = v49;
    v51 = OUTLINED_FUNCTION_11_49();
    v52(v51);
    v53 = sub_267BA33E8(v48, v50, &v77);

    *(v43 + 14) = v53;
    *(v43 + 22) = 2112;
    v55 = v1[2];
    v54 = v1[3];
    *(v43 + 24) = v54;
    v56 = v73;
    *v73 = v54;
    *(v43 + 32) = 2080;
    v57 = v54;
    v58 = MEMORY[0x26D608FD0](v55, MEMORY[0x277D837D0]);
    v60 = sub_267BA33E8(v58, v59, &v77);

    *(v43 + 34) = v60;
    _os_log_impl(&dword_267B93000, v41, v74, "#AppSelectionSignalCollection signal=[%s]: unexpected signalValue=[%s], set to defaultSignalValue=[%@] for apps=[%s]", v43, 0x2Au);
    sub_267B9F98C(v56, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v61 = OUTLINED_FUNCTION_11_49();
    v62(v61);
  }

  v63 = v1[2];
  v64 = *(v63 + 16);
  if (v64)
  {
    v66 = v1[9];
    v65 = v1[10];
    v67 = (v63 + 40);
    v68 = v1[3];
    do
    {
      v69 = *(v67 - 1);
      v70 = *v67;

      v66(v69, v70, v68);

      v67 += 2;
      --v64;
    }

    while (v64);
  }

  v71 = OUTLINED_FUNCTION_46_2();
  v76(v71);
LABEL_20:
  OUTLINED_FUNCTION_47();
}

void sub_267E8970C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = (v2 + 40);
    v39 = v43[3];
    v38 = v43[9];
    v37 = v43[10];
    do
    {
      v41 = v5;
      v42 = v3;
      v7 = *(v5 - 1);
      v6 = *v5;
      v45 = v39;
      v8 = *(v4 + 16);

      v9 = v39;
      if (v8 && (v10 = sub_267BA9948(), (v11 & 1) != 0))
      {
        v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        swift_beginAccess();
        v45 = v12;

        v9 = v12;
      }

      else
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v13 = sub_267EF8A08();
        __swift_project_value_buffer(v13, qword_280240FB0);

        v14 = sub_267EF89F8();
        v15 = sub_267EF95D8();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v44 = v17;
          *v16 = 136315394;
          v18 = v43[8];
          __swift_project_boxed_opaque_existential_0(v43 + 4, v43[7]);
          v19 = sub_267EF5018();
          v21 = sub_267BA33E8(v19, v20, &v44);

          *(v16 + 4) = v21;
          *(v16 + 12) = 2080;
          *(v16 + 14) = sub_267BA33E8(v7, v6, &v44);
          _os_log_impl(&dword_267B93000, v14, v15, "#AppSelectionSignalCollection signal=[%s]: no signal value for app=[%s]", v16, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D60A7B0](v17, -1, -1);
          v22 = v16;
          v4 = a1;
          MEMORY[0x26D60A7B0](v22, -1, -1);
        }
      }

      v23 = v9;
      v40 = v7;
      v38(v7, v6, v23);

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v24 = sub_267EF8A08();
      __swift_project_value_buffer(v24, qword_280240FB0);

      v25 = sub_267EF89F8();
      v26 = sub_267EF95D8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44 = v29;
        *v27 = 136315906;
        v30 = v43[8];
        __swift_project_boxed_opaque_existential_0(v43 + 4, v43[7]);
        v4 = a1;
        v31 = sub_267EF5018();
        v33 = sub_267BA33E8(v31, v32, &v44);

        *(v27 + 4) = v33;
        *(v27 + 12) = 2112;
        *(v27 + 14) = v23;
        *v28 = v23;
        *(v27 + 22) = 2080;
        v34 = v23;
        *(v27 + 24) = sub_267BA33E8(7630409, 0xE300000000000000, &v44);
        *(v27 + 32) = 2080;
        v35 = sub_267BA33E8(v40, v6, &v44);

        *(v27 + 34) = v35;
        _os_log_impl(&dword_267B93000, v25, v26, "#AppSelectionSignalCollection signal=[%s]: instrumented value=[%@] of type=[%s] for app=[%s]", v27, 0x2Au);
        sub_267B9F98C(v28, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v28, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v29, -1, -1);
        MEMORY[0x26D60A7B0](v27, -1, -1);
      }

      else
      {
      }

      v5 = v41 + 2;
      v3 = v42 - 1;
    }

    while (v42 != 1);
  }
}

void sub_267E89BE0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = a1;
    v5 = (v2 + 40);
    v6 = v47[9];
    v43 = v6;
    v44 = v47[3];
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v49 = v44;
      v9 = *(v4 + 16);

      v10 = v44;
      if (v9 && (v11 = sub_267BA9948(), (v12 & 1) != 0))
      {
        v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        swift_beginAccess();
        v49 = v13;

        v10 = v13;
      }

      else
      {
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v14 = sub_267EF8A08();
        __swift_project_value_buffer(v14, qword_280240FB0);

        v15 = sub_267EF89F8();
        v16 = sub_267EF95D8();

        if (os_log_type_enabled(v15, v16))
        {
          v45 = v10;
          v17 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v48 = v41;
          *v17 = 136315394;
          v18 = v7;
          v19 = v5;
          v20 = v3;
          v21 = v47[8];
          __swift_project_boxed_opaque_existential_0(v47 + 4, v47[7]);
          v3 = v20;
          v5 = v19;
          v7 = v18;
          v22 = sub_267EF5018();
          v24 = sub_267BA33E8(v22, v23, &v48);

          *(v17 + 4) = v24;
          *(v17 + 12) = 2080;
          *(v17 + 14) = sub_267BA33E8(v18, v8, &v48);
          _os_log_impl(&dword_267B93000, v15, v16, "#AppSelectionSignalCollection signal=[%s]: no signal value for app=[%s]", v17, 0x16u);
          swift_arrayDestroy();
          v4 = a1;
          MEMORY[0x26D60A7B0](v41, -1, -1);
          v25 = v17;
          v10 = v45;
          MEMORY[0x26D60A7B0](v25, -1, -1);
        }
      }

      v26 = v10;
      v46 = v7;
      v43(v7, v8, v26);

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v27 = sub_267EF8A08();
      __swift_project_value_buffer(v27, qword_280240FB0);

      v28 = sub_267EF89F8();
      v29 = sub_267EF95D8();

      if (os_log_type_enabled(v28, v29))
      {
        v42 = v3;
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v48 = v40;
        *v30 = 136315906;
        v32 = v47[8];
        __swift_project_boxed_opaque_existential_0(v47 + 4, v47[7]);
        v4 = a1;
        v33 = sub_267EF5018();
        v35 = sub_267BA33E8(v33, v34, &v48);

        *(v30 + 4) = v35;
        *(v30 + 12) = 2112;
        *(v30 + 14) = v26;
        *v31 = v26;
        *(v30 + 22) = 2080;
        v36 = v26;
        *(v30 + 24) = sub_267BA33E8(0x656C62756F44, 0xE600000000000000, &v48);
        *(v30 + 32) = 2080;
        v37 = sub_267BA33E8(v46, v8, &v48);

        *(v30 + 34) = v37;
        _os_log_impl(&dword_267B93000, v28, v29, "#AppSelectionSignalCollection signal=[%s]: instrumented value=[%@] of type=[%s] for app=[%s]", v30, 0x2Au);
        sub_267B9F98C(v31, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v31, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v40, -1, -1);
        v38 = v30;
        v3 = v42;
        MEMORY[0x26D60A7B0](v38, -1, -1);
      }

      else
      {
      }

      v5 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_267E8A0E0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v2 = *(v0 + 80);

  return v0;
}

uint64_t sub_267E8A118()
{
  sub_267E8A0E0();

  return swift_deallocClassInstance();
}

void sub_267E8A24C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD70, &qword_267F0DA90);
  v4 = OUTLINED_FUNCTION_22(v75);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  v74 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v73 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v72 = v15;
  OUTLINED_FUNCTION_115();
  v17 = MEMORY[0x28223BE20](v16);
  v25 = OUTLINED_FUNCTION_15_44(v17, v18, v19, v20, v21, v22, v23, v24, v62);
  v26 = OUTLINED_FUNCTION_58(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v33 = v32 - v31;
  v34 = *(v3 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v63 = v1;
    v81[0] = MEMORY[0x277D84F90];
    v66 = v34;
    sub_267C727BC();
    v35 = v81[0];
    v37 = sub_267BA7F44(v3);
    v38 = 0;
    v79 = v3 + 64;
    v70 = v9;
    v69 = v9 + 8;
    v65 = v36;
    v64 = v3 + 72;
    v68 = v28;
    v67 = v3;
    while ((v37 & 0x8000000000000000) == 0 && v37 < 1 << *(v3 + 32))
    {
      v39 = v37 >> 6;
      if ((*(v79 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v36)
      {
        goto LABEL_25;
      }

      v77 = v36;
      v76 = v38;
      v78 = *(v28 + 72);
      (*(v28 + 16))(v71, *(v3 + 48) + v78 * v37, v25);
      v40 = *(v28 + 32);
      v80 = *(*(v3 + 56) + 16 * v37);
      v40(v72, v71, v25);
      *(v72 + *(v75 + 48)) = v80;
      sub_267E8D614(v72, v73, &qword_28022CD70, &qword_267F0DA90);
      v41 = *(v75 + 48);
      v40(v74, v73, v25);
      v42 = (v74 + *(v75 + 48));
      v43 = swift_allocObject();
      *(v43 + 16) = *(v73 + v41);
      *v42 = sub_267E8D5DC;
      v42[1] = v43;
      sub_267E8D614(v74, v70, &qword_28022CD70, &qword_267F0DA90);
      v44 = *(v69 + *(v75 + 48));

      v40(v33, v70, v25);
      v81[0] = v35;
      v46 = *(v35 + 16);
      v45 = *(v35 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_10_46(v45);
        sub_267C727BC();
        v35 = v81[0];
      }

      *(v35 + 16) = v46 + 1;
      v28 = v68;
      v40(v35 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + v46 * v78, v33, v25);
      v3 = v67;
      v47 = 1 << *(v67 + 32);
      if (v37 >= v47)
      {
        goto LABEL_26;
      }

      v48 = *(v79 + 8 * v39);
      if ((v48 & (1 << v37)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v67 + 36) != v77)
      {
        goto LABEL_28;
      }

      v49 = v48 & (-2 << (v37 & 0x3F));
      if (v49)
      {
        v47 = __clz(__rbit64(v49)) | v37 & 0x7FFFFFFFFFFFFFC0;
        v50 = v76;
      }

      else
      {
        v51 = v39 << 6;
        v52 = v39 + 1;
        v53 = (v64 + 8 * v39);
        while (v52 < (v47 + 63) >> 6)
        {
          v55 = *v53++;
          v54 = v55;
          v51 += 64;
          ++v52;
          if (v55)
          {
            OUTLINED_FUNCTION_17_31();
            sub_267C96654(v37, v56, v57);
            v47 = __clz(__rbit64(v54)) + v51;
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_17_31();
        sub_267C96654(v37, v58, v59);
LABEL_19:
        v50 = v76;
      }

      v38 = v50 + 1;
      v37 = v47;
      v36 = v65;
      if (v38 == v66)
      {
        v1 = v63;
        goto LABEL_22;
      }
    }

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
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_267E8BEDC(0, v35, v81);

    swift_bridgeObjectRetain_n();
    v60 = sub_267EF4DC8();
    v61 = sub_267DA893C(v60);

    sub_267E8BFC0(v61, v1, v3);

    __swift_destroy_boxed_opaque_existential_0(v81);
    OUTLINED_FUNCTION_47();
  }
}

double sub_267E8A804@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD60, &unk_267F0DA80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_267EF4D38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267E8ABE0(v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_267B9F98C(v9, &qword_28022CD60, &unk_267F0DA80);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = sub_267C8EF34(v14, a2);
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = v19;
      sub_267B9AFEC(a1, &v35);
      v21 = type metadata accessor for AppIndependentSignalInstrumentation();
      v22 = swift_allocObject();
      sub_267B9A5E8(&v35, v22 + 16);
      *(v22 + 56) = sub_267E8D858;
      *(v22 + 64) = v20;
      *(a3 + 24) = v21;
      *(a3 + 32) = sub_267E8D674(&qword_28022CD48, v23, type metadata accessor for AppIndependentSignalInstrumentation);
      *a3 = v22;
      (*(v11 + 8))(v14, v10);
      return result;
    }

    (*(v11 + 8))(v14, v10);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v25 = sub_267EF8A08();
  __swift_project_value_buffer(v25, qword_280240FB0);
  sub_267B9AFEC(a1, &v35);
  v26 = sub_267EF89F8();
  v27 = sub_267EF95E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 136315138;
    __swift_project_boxed_opaque_existential_0(&v35, v36);
    v30 = sub_267EF5018();
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0(&v35);
    v33 = sub_267BA33E8(v30, v32, &v34);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_267B93000, v26, v27, "#SignalInstrumentation - No instrumentation for gathered signal %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x26D60A7B0](v29, -1, -1);
    MEMORY[0x26D60A7B0](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v35);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_267E8ABE0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B08, &qword_267F0F240);
  v2 = sub_267EF4D38();
  OUTLINED_FUNCTION_58(v2);
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_267F016D0;
  v9 = v8 + v7;
  v10 = *(v4 + 104);
  (v10)(v9, *MEMORY[0x277D601C8], v2);
  (v10)(v9 + v6, *MEMORY[0x277D601A0], v2);
  (v10)(v9 + 2 * v6, *MEMORY[0x277D601D8], v2);
  v11 = *MEMORY[0x277D60218];
  v12 = OUTLINED_FUNCTION_16_39(3 * v6);
  v10(v12);
  (v10)(v9 + 4 * v6, *MEMORY[0x277D601B8], v2);
  v13 = *MEMORY[0x277D601E0];
  v14 = OUTLINED_FUNCTION_16_39(5 * v6);
  v10(v14);
  (v10)(v9 + 6 * v6, *MEMORY[0x277D601F0], v2);
  v15 = *MEMORY[0x277D601B0];
  v16 = OUTLINED_FUNCTION_16_39(7 * v6);
  v10(v16);
  (v10)(v9 + 8 * v6, *MEMORY[0x277D60208], v2);
  v17 = *MEMORY[0x277D60200];
  v18 = OUTLINED_FUNCTION_16_39(9 * v6);
  v10(v18);
  (v10)(v9 + 10 * v6, *MEMORY[0x277D601E8], v2);
  (v10)(v9 + 11 * v6, *MEMORY[0x277D601A8], v2);
  (v10)(v9 + 12 * v6, *MEMORY[0x277D601F8], v2);
  (v10)(v9 + 13 * v6, *MEMORY[0x277D60210], v2);
  sub_267E884B4(sub_267E8D534, v8, a1);
  swift_setDeallocating();
  return sub_267DB70FC();
}

void sub_267E8B378()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD70, &qword_267F0DA90);
  v12 = OUTLINED_FUNCTION_22(v86);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v85 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v84 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v83 = v23;
  OUTLINED_FUNCTION_115();
  v25 = MEMORY[0x28223BE20](v24);
  v90 = OUTLINED_FUNCTION_15_44(v25, v26, v27, v28, v29, v30, v31, v32, v70);
  v33 = OUTLINED_FUNCTION_58(v90);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_0();
  v81 = v39 - v38;
  v40 = *(v3 + 16);
  if (v40)
  {
    v71 = v5;
    v72 = v11;
    v73 = v9;
    v93[0] = MEMORY[0x277D84F90];
    v76 = v40;
    sub_267C727BC();
    v42 = sub_267BA7F44(v3);
    v43 = 0;
    v44 = v3 + 64;
    v80 = v17;
    v79 = v17 + 8;
    v75 = v41;
    v74 = v3 + 72;
    v45 = v90;
    v77 = v3 + 64;
    v78 = v35;
    while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v3 + 32))
    {
      v46 = v42 >> 6;
      if ((*(v44 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v3 + 36) != v41)
      {
        goto LABEL_26;
      }

      v87 = v43;
      v88 = v41;
      v89 = *(v35 + 72);
      (*(v35 + 16))(v82, *(v3 + 48) + v89 * v42, v45);
      v47 = *(v35 + 32);
      v92 = *(*(v3 + 56) + 16 * v42);
      v47(v83, v82, v45);
      *(v83 + *(v86 + 48)) = v92;
      sub_267E8D614(v83, v84, &qword_28022CD70, &qword_267F0DA90);
      v48 = *(v86 + 48);
      v47(v85, v84, v90);
      v49 = v3;
      v50 = (v85 + *(v86 + 48));
      v51 = swift_allocObject();
      *(v51 + 16) = *(v84 + v48);
      *v50 = sub_267E8D85C;
      v50[1] = v51;
      v45 = v90;
      sub_267E8D614(v85, v80, &qword_28022CD70, &qword_267F0DA90);
      v52 = *(v79 + *(v86 + 48));

      v47(v81, v80, v90);
      OUTLINED_FUNCTION_19_43();
      if (v55)
      {
        OUTLINED_FUNCTION_10_46(v53);
        sub_267C727BC();
        v54 = v93[0];
      }

      *(v54 + 16) = v52;
      v35 = v78;
      v91 = v54;
      v47(v54 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v80 * v89, v81, v90);
      v56 = 1 << *(v49 + 32);
      if (v42 >= v56)
      {
        goto LABEL_27;
      }

      v3 = v49;
      v44 = v77;
      v57 = *(v77 + 8 * v46);
      if ((v57 & (1 << v42)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v3 + 36) != v88)
      {
        goto LABEL_29;
      }

      v58 = v57 & (-2 << (v42 & 0x3F));
      if (v58)
      {
        v56 = __clz(__rbit64(v58)) | v42 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v59 = v46 << 6;
        v60 = v46 + 1;
        v61 = (v74 + 8 * v46);
        while (v60 < (v56 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            OUTLINED_FUNCTION_17_31();
            sub_267C96654(v42, v64, v65);
            v56 = __clz(__rbit64(v62)) + v59;
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_17_31();
        sub_267C96654(v42, v66, v67);
LABEL_19:
        v35 = v78;
      }

      v43 = v87 + 1;
      v42 = v56;
      v41 = v75;
      if (v87 + 1 == v76)
      {
        v9 = v73;
        v1 = v0;
        v11 = v72;
        v5 = v71;
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
LABEL_29:
    __break(1u);
  }

  else
  {
    v91 = MEMORY[0x277D84F90];
LABEL_23:
    sub_267E8BEDC(v7, v91, v93);

    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_27_34();
    v68 = v5;
    v69 = OUTLINED_FUNCTION_13_47();
    sub_267DA893C(v69);
    OUTLINED_FUNCTION_12_46();

    sub_267E8C31C(v11, v1, v3, v9, v5);

    __swift_destroy_boxed_opaque_existential_0(v93);
    OUTLINED_FUNCTION_47();
  }
}

void sub_267E8B974()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD58, &qword_267F0DA78);
  v14 = OUTLINED_FUNCTION_22(v88);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_60();
  v87 = v17 - v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77_0();
  v86 = v20;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v21);
  v85 = &v70 - v22;
  v84 = sub_267EF4D38();
  v23 = OUTLINED_FUNCTION_58(v84);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v29 = (v28 - v27);
  v30 = *(v3 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v82 = v29;
    v70 = v7;
    v71 = v5;
    v72 = v13;
    v73 = v11;
    v74 = v1;
    v75 = v9;
    v94[0] = MEMORY[0x277D84F90];
    v32 = v26;
    sub_267C727BC();
    v33 = v32;
    v93 = v94[0];
    v36 = sub_267BA7F44(v3);
    v37 = 0;
    v38 = v3 + 64;
    v81 = v32 + 16;
    v83 = v32 + 32;
    v76 = v3 + 72;
    v77 = v30;
    v78 = v3 + 64;
    v79 = v3;
    v80 = v32;
    if ((v36 & 0x8000000000000000) == 0)
    {
      while (v36 < 1 << *(v3 + 32))
      {
        v39 = v36 >> 6;
        if ((*(v38 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v3 + 36) != v34)
        {
          goto LABEL_25;
        }

        v89 = v35;
        v90 = v37;
        v91 = v34;
        v40 = *(v3 + 48);
        v92 = *(v33 + 72);
        v41 = v40 + v92 * v36;
        v42 = *(v33 + 16);
        v43 = v85;
        v44 = v33;
        v45 = v84;
        v42(v85, v41, v84);
        v46 = *(*(v3 + 56) + 8 * v36);
        v47 = *(v44 + 32);
        v48 = v86;
        v47(v86, v43, v45);
        v49 = v87;
        v50 = v88;
        *(v48 + *(v88 + 48)) = v46;
        sub_267E8D614(v48, v49, &qword_28022CD58, &qword_267F0DA78);
        v51 = *(v49 + *(v50 + 48));

        v52 = v82;
        v53 = v49;
        v54 = v45;
        v47(v82, v53, v45);
        OUTLINED_FUNCTION_19_43();
        if (v57)
        {
          OUTLINED_FUNCTION_10_46(v55);
          sub_267C727BC();
          v56 = v94[0];
        }

        *(v56 + 16) = v46;
        v33 = v80;
        v58 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v93 = v56;
        v47(v56 + v58 + v51 * v92, v52, v54);
        v3 = v79;
        v59 = 1 << *(v79 + 32);
        if (v36 >= v59)
        {
          goto LABEL_26;
        }

        v38 = v78;
        v60 = *(v78 + 8 * v39);
        if ((v60 & (1 << v36)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v79 + 36) != v91)
        {
          goto LABEL_28;
        }

        v61 = v60 & (-2 << (v36 & 0x3F));
        if (v61)
        {
          v59 = __clz(__rbit64(v61)) | v36 & 0x7FFFFFFFFFFFFFC0;
          v62 = v77;
        }

        else
        {
          v63 = v39 << 6;
          v64 = v39 + 1;
          v65 = (v76 + 8 * v39);
          v62 = v77;
          while (v64 < (v59 + 63) >> 6)
          {
            v67 = *v65++;
            v66 = v67;
            v63 += 64;
            ++v64;
            if (v67)
            {
              sub_267C96654(v36, v91, v89 & 1);
              v59 = __clz(__rbit64(v66)) + v63;
              goto LABEL_18;
            }
          }

          sub_267C96654(v36, v91, v89 & 1);
        }

LABEL_18:
        v37 = v90 + 1;
        if (v90 + 1 == v62)
        {
          v9 = v75;
          v1 = v74;
          v11 = v73;
          v5 = v71;
          v7 = v70;
          v31 = v93;
          goto LABEL_22;
        }

        v35 = 0;
        v34 = *(v3 + 36);
        v36 = v59;
        if (v59 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
  }

  else
  {
LABEL_22:
    sub_267E8BEDC(v7, v31, v94);

    OUTLINED_FUNCTION_27_34();
    swift_bridgeObjectRetain_n();
    v68 = v5;
    v69 = OUTLINED_FUNCTION_13_47();
    sub_267DA893C(v69);
    OUTLINED_FUNCTION_12_46();

    sub_267E8C914(v11, v1, v3, v9, v5);

    __swift_destroy_boxed_opaque_existential_0(v94);
    OUTLINED_FUNCTION_47();
  }
}

uint64_t sub_267E8BE88(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return sub_267E88670(sub_267E8D510, v3, &unk_2878CDF18);
}

uint64_t sub_267E8BEDC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_267EF50A8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_267EF5098();
  sub_267EF5078();

  if (a2)
  {
    sub_267EF5058();
    OUTLINED_FUNCTION_12_46();
  }

  if (a1)
  {
    v9 = a1;
    sub_267EF5068();
    OUTLINED_FUNCTION_12_46();
  }

  v10 = sub_267EF50B8();
  v11 = MEMORY[0x277D603C0];
  a3[3] = v10;
  a3[4] = v11;
  __swift_allocate_boxed_opaque_existential_0(a3);
  sub_267EF5088();
}

uint64_t sub_267E8BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = MEMORY[0x277D84F90];
    v6 = a1 + 32;
    do
    {
      sub_267B9AFEC(v6, v15);
      sub_267E8A804(v15, a3, &v12);
      __swift_destroy_boxed_opaque_existential_0(v15);
      if (v13)
      {
        sub_267B9A5E8(&v12, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = *(v5 + 16);
          sub_267C71E88();
          v5 = v9;
        }

        v7 = *(v5 + 16);
        if (v7 >= *(v5 + 24) >> 1)
        {
          sub_267C71E88();
          v5 = v10;
        }

        *(v5 + 16) = v7 + 1;
        sub_267B9A5E8(v14, v5 + 40 * v7 + 32);
      }

      else
      {
        sub_267B9F98C(&v12, &qword_28022CD50, &qword_267F0DA70);
      }

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  sub_267C9BC2C(v5);
  swift_endAccess();
}

void sub_267E8C138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21_34();
  a33 = v34;
  a34 = v37;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = *(v35 + 16);
  if (v44)
  {
    v45 = v36;
    v46 = MEMORY[0x277D84F90];
    v47 = v35 + 32;
    do
    {
      sub_267B9AFEC(v47, &a18);
      sub_267B9AFEC(&a18, &a14);
      v48 = type metadata accessor for AppDependentSignalInstrumentation();
      v49 = swift_allocObject();
      v49[3] = v41;
      sub_267B9A5E8(&a14, (v49 + 4));
      v49[2] = v43;
      v49[9] = v45;
      v49[10] = v39;
      a12 = v48;
      a13 = sub_267E8D674(&qword_28022CD68, v50, type metadata accessor for AppDependentSignalInstrumentation);
      *&a10 = v49;

      v51 = v41;

      __swift_destroy_boxed_opaque_existential_0(&a18);
      if (a12)
      {
        sub_267B9A5E8(&a10, &a14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = *(v46 + 16);
          sub_267C71E88();
          v46 = v54;
        }

        v52 = *(v46 + 16);
        if (v52 >= *(v46 + 24) >> 1)
        {
          sub_267C71E88();
          v46 = v55;
        }

        *(v46 + 16) = v52 + 1;
        sub_267B9A5E8(&a14, v46 + 40 * v52 + 32);
      }

      else
      {
        sub_267B9F98C(&a10, &qword_28022CD50, &qword_267F0DA70);
      }

      v47 += 40;
      --v44;
    }

    while (v44);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_14_44();
  sub_267C9BC2C(v46);
  swift_endAccess();

  OUTLINED_FUNCTION_22_34();
}

uint64_t sub_267E8C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v47 = a4;
  v55 = a3;
  v45[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD60, &unk_267F0DA80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v45 - v8;
  v56 = sub_267EF4D38();
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v14 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    v52 = (v11 + 32);
    v17 = MEMORY[0x277D84F90];
    v51 = (v11 + 8);
    *&v13 = 136315138;
    v49 = v13;
    v53 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = v9;
    while (1)
    {
      sub_267B9AFEC(v16, v63);
      __swift_project_boxed_opaque_existential_0(v63, v63[3]);
      sub_267E8ABE0(v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v56) == 1)
      {
        break;
      }

      (*v52)(v14, v9, v56);
      if (!*(v55 + 16) || (v18 = sub_267C94E20(), (v19 & 1) == 0))
      {
        (*v51)(v14, v56);
        goto LABEL_9;
      }

      v20 = v18;
      v21 = *(v55 + 56);
      v22 = swift_allocObject();
      v48 = *(v21 + 16 * v20);
      *(v22 + 16) = v48;
      sub_267B9AFEC(v63, &v61);
      v23 = type metadata accessor for AppDependentSignalInstrumentation();
      v24 = swift_allocObject();
      v54 = v15;
      v25 = v17;
      v26 = v46;
      v24[3] = v46;
      sub_267B9A5E8(&v61, (v24 + 4));
      v24[2] = v47;
      v24[9] = sub_267E8D85C;
      v24[10] = v22;
      *(&v59 + 1) = v23;
      v60 = sub_267E8D674(&qword_28022CD68, v27, type metadata accessor for AppDependentSignalInstrumentation);
      *&v58 = v24;
      v14 = v53;
      v28 = *v51;

      v29 = v26;
      v17 = v25;
      v15 = v54;
      v28(v14, v56);
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v63);
      if (*(&v59 + 1))
      {
        sub_267B9A5E8(&v58, &v61);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = *(v17 + 16);
          sub_267C71E88();
          v17 = v42;
        }

        v40 = *(v17 + 16);
        if (v40 >= *(v17 + 24) >> 1)
        {
          sub_267C71E88();
          v17 = v43;
        }

        *(v17 + 16) = v40 + 1;
        sub_267B9A5E8(&v61, v17 + 40 * v40 + 32);
      }

      else
      {
        sub_267B9F98C(&v58, &qword_28022CD50, &qword_267F0DA70);
      }

      v16 += 40;
      v15 = (v15 - 1);
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    sub_267B9F98C(v9, &qword_28022CD60, &unk_267F0DA80);
LABEL_9:
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v30 = sub_267EF8A08();
    __swift_project_value_buffer(v30, qword_280240FB0);
    sub_267B9AFEC(v63, &v61);
    v31 = sub_267EF89F8();
    v32 = sub_267EF95E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v57 = v54;
      *v33 = v49;
      __swift_project_boxed_opaque_existential_0(&v61, v62);
      v34 = sub_267EF5018();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_0(&v61);
      v37 = sub_267BA33E8(v34, v36, &v57);
      v9 = v50;

      *(v33 + 4) = v37;
      _os_log_impl(&dword_267B93000, v31, v32, "#SignalInstrumentation - No instrumentation for gathered signal %s", v33, 0xCu);
      v38 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x26D60A7B0](v38, -1, -1);
      v39 = v33;
      v14 = v53;
      MEMORY[0x26D60A7B0](v39, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v61);
    }

    v58 = 0u;
    v59 = 0u;
    v60 = 0;
    goto LABEL_15;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_25:
  swift_beginAccess();
  sub_267C9BC2C(v17);
  swift_endAccess();
}

uint64_t sub_267E8C914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v50 = a5;
  v51 = a4;
  v57 = a3;
  v49[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD60, &unk_267F0DA80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v49 - v8;
  v10 = sub_267EF4D38();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v58 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    v55 = (v12 + 32);
    v17 = MEMORY[0x277D84F90];
    v54 = (v12 + 8);
    *&v13 = 136315138;
    v52 = v13;
    v53 = v10;
    while (1)
    {
      sub_267B9AFEC(v16, v65);
      __swift_project_boxed_opaque_existential_0(v65, v66);
      sub_267E8ABE0(v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        break;
      }

      (*v55)(v58, v9, v10);
      if (!*(v57 + 16))
      {
        goto LABEL_13;
      }

      v18 = sub_267C94E20();
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = *(*(v57 + 56) + 8 * v18);
      v21 = v66;
      v22 = v67;
      __swift_project_boxed_opaque_existential_0(v65, v66);

      v23 = sub_267E8BE88(v21, v22);
      if (v23 == 8)
      {
        (*v54)(v58, v10);

        goto LABEL_14;
      }

      if (!*(v20 + 16) || (v24 = sub_267C94EB8(v23), (v25 & 1) == 0))
      {

LABEL_13:
        (*v54)(v58, v10);
LABEL_14:
        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v33 = sub_267EF8A08();
        __swift_project_value_buffer(v33, qword_280240FB0);
        sub_267B9AFEC(v65, &v63);
        v34 = sub_267EF89F8();
        v35 = sub_267EF95E8();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&v56 = v16;
          v38 = v37;
          v59 = v37;
          *v36 = v52;
          __swift_project_boxed_opaque_existential_0(&v63, v64);
          v39 = sub_267EF5018();
          v41 = v40;
          __swift_destroy_boxed_opaque_existential_0(&v63);
          v42 = sub_267BA33E8(v39, v41, &v59);
          v10 = v53;

          *(v36 + 4) = v42;
          _os_log_impl(&dword_267B93000, v34, v35, "#SignalInstrumentation - No instrumentation for the gathered signal %s.", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          v43 = v38;
          v16 = v56;
          MEMORY[0x26D60A7B0](v43, -1, -1);
          MEMORY[0x26D60A7B0](v36, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v63);
        }

        v60 = 0u;
        v61 = 0u;
        v62 = 0;
        goto LABEL_20;
      }

      v56 = *(*(v20 + 56) + 16 * v24);

      v26 = swift_allocObject();
      *(v26 + 16) = v56;
      sub_267B9AFEC(v65, &v63);
      v27 = type metadata accessor for AppDependentSignalInstrumentation();
      v28 = swift_allocObject();
      *&v56 = v17;
      v29 = v50;
      v28[3] = v50;
      sub_267B9A5E8(&v63, (v28 + 4));
      v28[2] = v51;
      v28[9] = sub_267E8D50C;
      v28[10] = v26;
      *(&v61 + 1) = v27;
      v62 = sub_267E8D674(&qword_28022CD68, v30, type metadata accessor for AppDependentSignalInstrumentation);
      *&v60 = v28;
      v31 = *v54;

      v32 = v29;
      v17 = v56;
      v31(v58, v10);
LABEL_20:
      __swift_destroy_boxed_opaque_existential_0(v65);
      if (*(&v61 + 1))
      {
        sub_267B9A5E8(&v60, &v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = *(v17 + 16);
          sub_267C71E88();
          v17 = v46;
        }

        v44 = *(v17 + 16);
        if (v44 >= *(v17 + 24) >> 1)
        {
          sub_267C71E88();
          v17 = v47;
        }

        *(v17 + 16) = v44 + 1;
        sub_267B9A5E8(&v63, v17 + 40 * v44 + 32);
      }

      else
      {
        sub_267B9F98C(&v60, &qword_28022CD50, &qword_267F0DA70);
      }

      v16 += 40;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    sub_267B9F98C(v9, &qword_28022CD60, &unk_267F0DA80);
    goto LABEL_14;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_30:
  swift_beginAccess();
  sub_267C9BC2C(v17);
  swift_endAccess();
}

void sub_267E8CF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_21_34();
  a33 = v34;
  a34 = v37;
  v39 = v38;
  v40 = *(v35 + 16);
  if (v40)
  {
    v41 = v36;
    v42 = MEMORY[0x277D84F90];
    v43 = v35 + 32;
    do
    {
      sub_267B9AFEC(v43, &a18);
      sub_267B9AFEC(&a18, &a14);
      v44 = type metadata accessor for AppIndependentSignalInstrumentation();
      v45 = swift_allocObject();
      sub_267B9A5E8(&a14, v45 + 16);
      *(v45 + 56) = v41;
      *(v45 + 64) = v39;
      a12 = v44;
      a13 = sub_267E8D674(&qword_28022CD48, v46, type metadata accessor for AppIndependentSignalInstrumentation);
      *&a10 = v45;

      __swift_destroy_boxed_opaque_existential_0(&a18);
      if (a12)
      {
        sub_267B9A5E8(&a10, &a14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = *(v42 + 16);
          sub_267C71E88();
          v42 = v49;
        }

        v47 = *(v42 + 16);
        if (v47 >= *(v42 + 24) >> 1)
        {
          sub_267C71E88();
          v42 = v50;
        }

        *(v42 + 16) = v47 + 1;
        sub_267B9A5E8(&a14, v42 + 40 * v47 + 32);
      }

      else
      {
        sub_267B9F98C(&a10, &qword_28022CD50, &qword_267F0DA70);
      }

      v43 += 40;
      --v40;
    }

    while (v40);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_14_44();
  sub_267C9BC2C(v42);
  swift_endAccess();

  OUTLINED_FUNCTION_22_34();
}