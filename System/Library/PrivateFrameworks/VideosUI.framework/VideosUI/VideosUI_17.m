uint64_t sub_1E3766C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) && (v3 = sub_1E327D33C(a2, a3), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_19_13(v3, v4, v5, v6, v7, v8, v9, v10, *&v13[0]);
    v11 = 1;
  }

  else
  {
    v11 = 0;
    memset(v13, 0, sizeof(v13));
  }

  sub_1E329505C(v13);
  return v11;
}

uint64_t sub_1E3766C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) && (v3 = sub_1E327D33C(a2, a3), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_19_13(v3, v4, v5, v6, v7, v8, v9, v10, *&v13[0]);
    v11 = 0;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v11 = 1;
  }

  sub_1E329505C(v13);
  return v11;
}

uint64_t sub_1E3766CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) && (v5 = OUTLINED_FUNCTION_13_8(), v7 = sub_1E327D33C(v5, v6), (v8 & 1) != 0))
  {
    OUTLINED_FUNCTION_19_13(v7, v8, v9, v10, v11, v12, v13, v14, *&v16[0]);
    sub_1E329505C(v16);
    return OUTLINED_FUNCTION_3_20();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    sub_1E329505C(v16);
    *&v16[0] = 0;
    *(&v16[0] + 1) = 0xE000000000000000;
    sub_1E42074B4();

    *&v16[0] = a2;
    *(&v16[0] + 1) = a3;
    OUTLINED_FUNCTION_23();
    MEMORY[0x1E69109E0](0xD000000000000013);
    return 0;
  }
}

uint64_t sub_1E3766D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a2 + 40;
  v6 = *(a2 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 16;
    v8 = *(v5 - 8);
    v12 = a1;

    v8(&v11, &v12);

    v5 = v7;
    if (v11 == 1)
    {
      v9 = a3(a1);
      return v9 & 1;
    }
  }

  v9 = OUTLINED_FUNCTION_3_20();
  return v9 & 1;
}

uint64_t sub_1E3766E4C(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = OUTLINED_FUNCTION_13_8(), v4 = sub_1E327D33C(v2, v3), (v5 & 1) != 0) && (sub_1E328438C(*(a1 + 56) + 32 * v4, &v18), sub_1E376948C(), (swift_dynamicCast() & 1) != 0))
  {

    return OUTLINED_FUNCTION_3_20();
  }

  else
  {
    v7 = OUTLINED_FUNCTION_13_8();
    sub_1E3277E60(v7, v8, a1, v9);
    v10 = v20;
    sub_1E329505C(&v18);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1E42074B4();

    if (v10)
    {
      v11 = OUTLINED_FUNCTION_13_8();
      MEMORY[0x1E69109E0](v11);
      OUTLINED_FUNCTION_23();
      MEMORY[0x1E69109E0](0xD000000000000019);
      v12 = OUTLINED_FUNCTION_13_8();
      sub_1E3277E60(v12, v13, a1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
      v15 = sub_1E4205F84();
      MEMORY[0x1E69109E0](v15);

      MEMORY[0x1E69109E0](39, 0xE100000000000000);
    }

    else
    {
      v18 = 0x6465746365707845;
      v19 = 0xE900000000000020;
      v16 = OUTLINED_FUNCTION_13_8();
      MEMORY[0x1E69109E0](v16);
      MEMORY[0x1E69109E0](0xD00000000000001BLL, 0x80000001E425B270);
    }

    return 0;
  }
}

uint64_t sub_1E376702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3277E60(a2, a3, a1, &v34);
  if (!v35)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_13(v6, v7, v8, MEMORY[0x1E69E63B0], v9, v10, v11, v12, v29, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_12_23();
    sub_1E42074B4();

    *&v34 = a2;
    *(&v34 + 1) = a3;
    OUTLINED_FUNCTION_18_10();
    v27 = OUTLINED_FUNCTION_13_8();
    MEMORY[0x1E69109E0](v27);
    OUTLINED_FUNCTION_23();
    v25 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  v13 = v32;
  v14 = OUTLINED_FUNCTION_13_8();
  sub_1E3277E60(v14, v15, a1, v16);
  if (!v35)
  {
LABEL_7:
    sub_1E329505C(&v34);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_26_13(v17, v18, v19, MEMORY[0x1E69E63B0], v20, v21, v22, v23, v30, SLOBYTE(v32));
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v13 > v33)
  {
    OUTLINED_FUNCTION_12_23();
    sub_1E42074B4();
    MEMORY[0x1E69109E0](a2, a3);
    MEMORY[0x1E69109E0](0x746F6E2073617720, 0xEC000000203D3C20);
    v24 = OUTLINED_FUNCTION_13_8();
    MEMORY[0x1E69109E0](v24);
    MEMORY[0x1E69109E0](8238, 0xE200000000000000);
    sub_1E4206594();
    MEMORY[0x1E69109E0](0x203D3C2120, 0xE500000000000000);
    sub_1E4206594();
    MEMORY[0x1E69109E0](0x692066666944202ELL, 0xEA00000000002073);
    sub_1E4206594();
    v25 = 29549;
    v26 = 0xE200000000000000;
LABEL_9:
    MEMORY[0x1E69109E0](v25, v26);
    return 0;
  }

  return OUTLINED_FUNCTION_3_20();
}

uint64_t sub_1E376726C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF293B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E429A200;
  OUTLINED_FUNCTION_5_10();
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  OUTLINED_FUNCTION_2_4();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E37695B0;
  *(v11 + 24) = v10;
  *(v9 + 32) = sub_1E37695A8;
  *(v9 + 40) = v11;
  OUTLINED_FUNCTION_5_10();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = a3;
  v12[4] = a4;
  OUTLINED_FUNCTION_2_4();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E37695B0;
  *(v13 + 24) = v12;
  *(v9 + 48) = sub_1E37695A8;
  *(v9 + 56) = v13;
  OUTLINED_FUNCTION_5_10();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v4;
  OUTLINED_FUNCTION_2_4();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1E3769188;
  *(v15 + 24) = v14;
  *(v9 + 64) = sub_1E37695A8;
  *(v9 + 72) = v15;
  OUTLINED_FUNCTION_5_10();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v4;
  OUTLINED_FUNCTION_2_4();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1E37695BC;
  *(v17 + 24) = v16;
  *(v9 + 80) = sub_1E37695A8;
  *(v9 + 88) = v17;
  v18 = OUTLINED_FUNCTION_22_9();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = v4;
  OUTLINED_FUNCTION_2_4();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1E376959C;
  *(v19 + 24) = v18;
  *(v9 + 96) = sub_1E37695A8;
  *(v9 + 104) = v19;
  v20 = OUTLINED_FUNCTION_22_9();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = v4;
  OUTLINED_FUNCTION_2_4();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E37691F0;
  *(v21 + 24) = v20;
  *(v9 + 112) = sub_1E37695A8;
  *(v9 + 120) = v21;
  OUTLINED_FUNCTION_2_4();
  v22 = swift_allocObject();
  *(v22 + 16) = v9;
  *(v22 + 24) = v4;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return v22;
}

uint64_t sub_1E376750C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E429A210;
  *(v0 + 32) = sub_1E4205F14();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1E4205F14();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1E4205F14();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1E4205F14();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1E4205F14();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1E3C6A90C(1);
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1E3C6A90C(0);
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_1E3C6C2D0(0);
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_1E3C6C2D0(4);
  *(v0 + 168) = v9;
  sub_1E3C6A554(4);
  *(v0 + 176) = v10;
  *(v0 + 184) = v11;
  sub_1E3C6A554(6);
  *(v0 + 192) = v12;
  *(v0 + 200) = v13;
  sub_1E3C6A554(7);
  *(v0 + 208) = v14;
  *(v0 + 216) = v15;
  sub_1E3C6A554(8);
  *(v0 + 224) = v16;
  *(v0 + 232) = v17;
  *(v0 + 240) = sub_1E3C6C2D0(1);
  *(v0 + 248) = v18;
  *(v0 + 256) = sub_1E3C6C2D0(7);
  *(v0 + 264) = v19;
  *(v0 + 272) = sub_1E3C6C2D0(8);
  *(v0 + 280) = v20;
  *(v0 + 288) = sub_1E3C6C2D0(9);
  *(v0 + 296) = v21;
  *(v0 + 304) = sub_1E3C6C2D0(10);
  *(v0 + 312) = v22;
  *(v0 + 320) = sub_1E3C6C2D0(11);
  *(v0 + 328) = v23;
  *(v0 + 336) = sub_1E3C6C2D0(12);
  *(v0 + 344) = v24;
  result = sub_1E3C6C2D0(5);
  *(v0 + 352) = result;
  *(v0 + 360) = v26;
  qword_1EE28B268 = v0;
  return result;
}

uint64_t sub_1E3767684()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF293B8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E429A220;
  v5 = type metadata accessor for PagePerformanceVerification();
  sub_1E3C6C2D0(0);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v6);
  OUTLINED_FUNCTION_2_4();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E3768E74;
  *(v7 + 24) = v0;
  *(v4 + 32) = sub_1E3768E7C;
  *(v4 + 40) = v7;
  sub_1E4205F14();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v8);
  OUTLINED_FUNCTION_2_4();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E37695B0;
  *(v9 + 24) = v0;
  *(v4 + 48) = sub_1E37695A8;
  *(v4 + 56) = v9;
  sub_1E4205F14();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v10);
  OUTLINED_FUNCTION_2_4();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E37695B0;
  *(v11 + 24) = v0;
  *(v4 + 64) = sub_1E37695A8;
  *(v4 + 72) = v11;
  sub_1E4205F14();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v12);
  OUTLINED_FUNCTION_2_4();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E37695B0;
  *(v13 + 24) = v0;
  *(v4 + 80) = sub_1E37695A8;
  *(v4 + 88) = v13;
  sub_1E3C6A554(4);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v14);
  OUTLINED_FUNCTION_2_4();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1E37695B0;
  *(v15 + 24) = v0;
  *(v4 + 96) = sub_1E37695A8;
  *(v4 + 104) = v15;
  sub_1E3C6A554(6);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v16);
  OUTLINED_FUNCTION_2_4();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1E37695B0;
  *(v17 + 24) = v0;
  *(v4 + 112) = sub_1E37695A8;
  *(v4 + 120) = v17;
  sub_1E3C6A554(7);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v18);
  OUTLINED_FUNCTION_2_4();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1E37695B0;
  *(v19 + 24) = v0;
  *(v4 + 128) = sub_1E37695A8;
  *(v4 + 136) = v19;
  sub_1E3C6A554(8);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v20);
  OUTLINED_FUNCTION_2_4();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1E37695B0;
  *(v21 + 24) = v0;
  *(v4 + 144) = sub_1E37695A8;
  *(v4 + 152) = v21;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v22);
  OUTLINED_FUNCTION_2_4();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1E37695B0;
  *(v23 + 24) = v0;
  *(v4 + 160) = sub_1E37695A8;
  *(v4 + 168) = v23;
  sub_1E3C6C2D0(7);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v24);
  OUTLINED_FUNCTION_2_4();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1E37695B0;
  *(v25 + 24) = v0;
  *(v4 + 176) = sub_1E37695A8;
  *(v4 + 184) = v25;
  sub_1E3C6C2D0(8);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v26);
  OUTLINED_FUNCTION_2_4();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1E37695B0;
  *(v27 + 24) = v0;
  *(v4 + 192) = sub_1E37695A8;
  *(v4 + 200) = v27;
  sub_1E3C6C2D0(9);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v28);
  OUTLINED_FUNCTION_2_4();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1E37695B0;
  *(v29 + 24) = v0;
  *(v4 + 208) = sub_1E37695A8;
  *(v4 + 216) = v29;
  sub_1E3C6C2D0(10);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v30);
  OUTLINED_FUNCTION_2_4();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1E37695B0;
  *(v31 + 24) = v0;
  *(v4 + 224) = sub_1E37695A8;
  *(v4 + 232) = v31;
  sub_1E3C6C2D0(11);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v32);
  OUTLINED_FUNCTION_2_4();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1E37695B0;
  *(v33 + 24) = v0;
  *(v4 + 240) = sub_1E37695A8;
  *(v4 + 248) = v33;
  sub_1E3C6C2D0(12);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v34);
  OUTLINED_FUNCTION_2_4();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E37695B0;
  *(v35 + 24) = v0;
  *(v4 + 256) = sub_1E37695A8;
  *(v4 + 264) = v35;
  sub_1E3C6C2D0(5);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_5_10();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_0_18(v36);
  OUTLINED_FUNCTION_2_4();
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1E37695B0;
  *(v37 + 24) = v0;
  *(v4 + 272) = sub_1E37695A8;
  *(v4 + 280) = v37;
  v38 = sub_1E4205F14();
  v40 = v39;
  OUTLINED_FUNCTION_5_10();
  v41 = swift_allocObject();
  v41[2] = v5;
  v41[3] = v38;
  v41[4] = v40;
  v164[3] = MEMORY[0x1E69E6158];
  v164[0] = 0xD000000000000010;
  v164[1] = 0x80000001E425B1E0;
  sub_1E328438C(v164, v163);
  v42 = swift_allocObject();
  *(v42 + 16) = 7368801;
  *(v42 + 24) = 0xE300000000000000;
  *(v42 + 32) = v5;
  sub_1E329504C(v163, (v42 + 40));
  __swift_destroy_boxed_opaque_existential_1(v164);
  v43 = OUTLINED_FUNCTION_22_9();
  v43[2] = sub_1E3768E80;
  v43[3] = v42;
  v43[4] = sub_1E37695B0;
  v43[5] = v41;
  v43[6] = v5;
  OUTLINED_FUNCTION_2_4();
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1E376903C;
  *(v44 + 24) = v43;
  *(v4 + 288) = sub_1E37695A8;
  *(v4 + 296) = v44;
  sub_1E3C6C2D0(0);
  OUTLINED_FUNCTION_9_9();
  sub_1E3C6A554(4);
  v47 = sub_1E376726C(v41, v42, v45, v46);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF293C0);
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_17_13(v48, xmmword_1E429A230);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_2_4();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_15_23(v49);
  OUTLINED_FUNCTION_2_4();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1E3769040;
  *(v50 + 24) = v2;
  v48[2].n128_u64[0] = sub_1E3769048;
  v48[2].n128_u64[1] = v50;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_2_4();
  v51 = swift_allocObject();
  OUTLINED_FUNCTION_15_23(v51);
  OUTLINED_FUNCTION_2_4();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E376904C;
  *(v52 + 24) = v2;
  v48[3].n128_u64[0] = sub_1E37695AC;
  v48[3].n128_u64[1] = v52;
  sub_1E3C6C2D0(5);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_2_4();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_15_23(v53);
  OUTLINED_FUNCTION_2_4();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E37695B4;
  *(v54 + 24) = v2;
  v48[4].n128_u64[0] = sub_1E37695AC;
  v48[4].n128_u64[1] = v54;
  sub_1E3C6A554(8);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_2_4();
  v55 = swift_allocObject();
  OUTLINED_FUNCTION_15_23(v55);
  OUTLINED_FUNCTION_2_4();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1E37695B4;
  *(v56 + 24) = v2;
  v48[5].n128_u64[0] = sub_1E37695AC;
  v48[5].n128_u64[1] = v56;
  sub_1E3C6A554(7);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_2_4();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_15_23(v57);
  OUTLINED_FUNCTION_2_4();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1E37695B4;
  *(v58 + 24) = v2;
  v48[6].n128_u64[0] = sub_1E37695AC;
  v48[6].n128_u64[1] = v58;
  sub_1E3C6A554(6);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_2_4();
  v59 = swift_allocObject();
  OUTLINED_FUNCTION_15_23(v59);
  OUTLINED_FUNCTION_2_4();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1E37695B4;
  *(v60 + 24) = v2;
  v48[7].n128_u64[0] = sub_1E37695AC;
  v48[7].n128_u64[1] = v60;
  sub_1E3C6A554(5);
  OUTLINED_FUNCTION_16_11();
  OUTLINED_FUNCTION_2_4();
  v61 = swift_allocObject();
  OUTLINED_FUNCTION_15_23(v61);
  OUTLINED_FUNCTION_2_4();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1E37695B4;
  *(v62 + 24) = v2;
  v48[8].n128_u64[0] = sub_1E37695AC;
  v48[8].n128_u64[1] = v62;
  OUTLINED_FUNCTION_10_9();
  v63 = swift_allocObject();
  v63[2] = v48;
  v63[3] = sub_1E37693E0;
  v63[4] = v47;
  v63[5] = v5;
  OUTLINED_FUNCTION_2_4();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1E3769054;
  *(v64 + 24) = v63;
  *(v4 + 304) = sub_1E37695A8;
  *(v4 + 312) = v64;
  sub_1E3C6A554(4);
  OUTLINED_FUNCTION_11_24();
  sub_1E3C6A554(5);
  OUTLINED_FUNCTION_1_53(v65, v66);
  OUTLINED_FUNCTION_20_17();

  v67 = swift_allocObject();
  OUTLINED_FUNCTION_17_13(v67, xmmword_1E429A200);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v68 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v68);
  OUTLINED_FUNCTION_2_4();
  v69 = swift_allocObject();
  *(v69 + 16) = sub_1E37695B8;
  *(v69 + 24) = v3;
  v67[2].n128_u64[0] = sub_1E37695AC;
  v67[2].n128_u64[1] = v69;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v70 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v70);
  OUTLINED_FUNCTION_2_4();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1E37695B4;
  *(v71 + 24) = v3;
  v67[3].n128_u64[0] = sub_1E37695AC;
  v67[3].n128_u64[1] = v71;
  sub_1E3C6C2D0(5);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v72 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v72);
  OUTLINED_FUNCTION_2_4();
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1E37695B4;
  *(v73 + 24) = v3;
  v67[4].n128_u64[0] = sub_1E37695AC;
  v67[4].n128_u64[1] = v73;
  sub_1E3C6A554(8);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v74 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v74);
  OUTLINED_FUNCTION_2_4();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1E37695B4;
  *(v75 + 24) = v3;
  v67[5].n128_u64[0] = sub_1E37695AC;
  v67[5].n128_u64[1] = v75;
  sub_1E3C6A554(7);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v76 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v76);
  OUTLINED_FUNCTION_2_4();
  v77 = swift_allocObject();
  *(v77 + 16) = sub_1E37695B4;
  *(v77 + 24) = v3;
  v67[6].n128_u64[0] = sub_1E37695AC;
  v67[6].n128_u64[1] = v77;
  sub_1E3C6A554(6);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v78 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v78);
  OUTLINED_FUNCTION_2_4();
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1E37695B4;
  *(v79 + 24) = v3;
  v67[7].n128_u64[0] = sub_1E37695AC;
  v67[7].n128_u64[1] = v79;
  OUTLINED_FUNCTION_10_9();
  v80 = swift_allocObject();
  OUTLINED_FUNCTION_4_22(v80);
  OUTLINED_FUNCTION_2_4();
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1E37695A0;
  *(v81 + 24) = v1;
  *(v4 + 320) = sub_1E37695A8;
  *(v4 + 328) = v81;
  sub_1E3C6A554(5);
  OUTLINED_FUNCTION_11_24();
  sub_1E3C6A554(6);
  OUTLINED_FUNCTION_1_53(v82, v83);
  OUTLINED_FUNCTION_20_17();

  v84 = swift_allocObject();
  OUTLINED_FUNCTION_17_13(v84, xmmword_1E429A240);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v85 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v85);
  OUTLINED_FUNCTION_2_4();
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1E37695B8;
  *(v86 + 24) = v3;
  v84[2].n128_u64[0] = sub_1E37695AC;
  v84[2].n128_u64[1] = v86;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v87 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v87);
  OUTLINED_FUNCTION_2_4();
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1E37695B4;
  *(v88 + 24) = v3;
  v84[3].n128_u64[0] = sub_1E37695AC;
  v84[3].n128_u64[1] = v88;
  sub_1E3C6C2D0(5);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v89 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v89);
  OUTLINED_FUNCTION_2_4();
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1E37695B4;
  *(v90 + 24) = v3;
  v84[4].n128_u64[0] = sub_1E37695AC;
  v84[4].n128_u64[1] = v90;
  sub_1E3C6A554(8);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v91 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v91);
  OUTLINED_FUNCTION_2_4();
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1E37695B4;
  *(v92 + 24) = v3;
  v84[5].n128_u64[0] = sub_1E37695AC;
  v84[5].n128_u64[1] = v92;
  sub_1E3C6A554(7);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v93 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v93);
  OUTLINED_FUNCTION_2_4();
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1E37695B4;
  *(v94 + 24) = v3;
  v84[6].n128_u64[0] = sub_1E37695AC;
  v84[6].n128_u64[1] = v94;
  OUTLINED_FUNCTION_10_9();
  v95 = swift_allocObject();
  OUTLINED_FUNCTION_4_22(v95);
  OUTLINED_FUNCTION_2_4();
  v96 = swift_allocObject();
  *(v96 + 16) = sub_1E37695A0;
  *(v96 + 24) = v1;
  *(v4 + 336) = sub_1E37695A8;
  *(v4 + 344) = v96;
  sub_1E3C6A554(6);
  OUTLINED_FUNCTION_11_24();
  sub_1E3C6A554(7);
  OUTLINED_FUNCTION_1_53(v97, v98);
  OUTLINED_FUNCTION_20_17();

  v99 = swift_allocObject();
  OUTLINED_FUNCTION_17_13(v99, xmmword_1E4298AD0);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v100 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v100);
  OUTLINED_FUNCTION_2_4();
  v101 = swift_allocObject();
  *(v101 + 16) = sub_1E37695B8;
  *(v101 + 24) = v3;
  v99[2].n128_u64[0] = sub_1E37695AC;
  v99[2].n128_u64[1] = v101;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v102 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v102);
  OUTLINED_FUNCTION_2_4();
  v103 = swift_allocObject();
  *(v103 + 16) = sub_1E37695B4;
  *(v103 + 24) = v3;
  v99[3].n128_u64[0] = sub_1E37695AC;
  v99[3].n128_u64[1] = v103;
  sub_1E3C6C2D0(5);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v104 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v104);
  OUTLINED_FUNCTION_2_4();
  v105 = swift_allocObject();
  *(v105 + 16) = sub_1E37695B4;
  *(v105 + 24) = v3;
  v99[4].n128_u64[0] = sub_1E37695AC;
  v99[4].n128_u64[1] = v105;
  sub_1E3C6A554(8);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v106 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v106);
  OUTLINED_FUNCTION_2_4();
  v107 = swift_allocObject();
  *(v107 + 16) = sub_1E37695B4;
  *(v107 + 24) = v3;
  v99[5].n128_u64[0] = sub_1E37695AC;
  v99[5].n128_u64[1] = v107;
  OUTLINED_FUNCTION_10_9();
  v108 = swift_allocObject();
  OUTLINED_FUNCTION_4_22(v108);
  OUTLINED_FUNCTION_2_4();
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1E37695A0;
  *(v109 + 24) = v1;
  *(v4 + 352) = sub_1E37695A8;
  *(v4 + 360) = v109;
  sub_1E3C6A554(7);
  OUTLINED_FUNCTION_11_24();
  sub_1E3C6A554(8);
  OUTLINED_FUNCTION_1_53(v110, v111);
  OUTLINED_FUNCTION_20_17();

  v112 = swift_allocObject();
  OUTLINED_FUNCTION_17_13(v112, xmmword_1E4297BD0);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v113 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v113);
  OUTLINED_FUNCTION_2_4();
  v114 = swift_allocObject();
  *(v114 + 16) = sub_1E37695B8;
  *(v114 + 24) = v3;
  v112[2].n128_u64[0] = sub_1E37695AC;
  v112[2].n128_u64[1] = v114;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v115 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v115);
  OUTLINED_FUNCTION_2_4();
  v116 = swift_allocObject();
  *(v116 + 16) = sub_1E37695B4;
  *(v116 + 24) = v3;
  v112[3].n128_u64[0] = sub_1E37695AC;
  v112[3].n128_u64[1] = v116;
  sub_1E3C6C2D0(5);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v117 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v117);
  OUTLINED_FUNCTION_2_4();
  v118 = swift_allocObject();
  *(v118 + 16) = sub_1E37695B4;
  *(v118 + 24) = v3;
  v112[4].n128_u64[0] = sub_1E37695AC;
  v112[4].n128_u64[1] = v118;
  OUTLINED_FUNCTION_10_9();
  v119 = swift_allocObject();
  OUTLINED_FUNCTION_4_22(v119);
  OUTLINED_FUNCTION_2_4();
  v120 = swift_allocObject();
  *(v120 + 16) = sub_1E37695A0;
  *(v120 + 24) = v1;
  *(v4 + 368) = sub_1E37695A8;
  *(v4 + 376) = v120;
  sub_1E3C6C2D0(0);
  OUTLINED_FUNCTION_11_24();
  v121 = sub_1E3C6C2D0(4);
  OUTLINED_FUNCTION_1_53(v121, v122);
  OUTLINED_FUNCTION_20_17();

  v123 = OUTLINED_FUNCTION_21_22();
  OUTLINED_FUNCTION_17_13(v123, xmmword_1E4299720);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v124 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v124);
  OUTLINED_FUNCTION_2_4();
  v125 = swift_allocObject();
  *(v125 + 16) = sub_1E37695B8;
  *(v125 + 24) = v3;
  v123[2].n128_u64[0] = sub_1E37695AC;
  v123[2].n128_u64[1] = v125;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v126 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v126);
  OUTLINED_FUNCTION_2_4();
  v127 = swift_allocObject();
  *(v127 + 16) = sub_1E37695B4;
  *(v127 + 24) = v3;
  v123[3].n128_u64[0] = sub_1E37695AC;
  v123[3].n128_u64[1] = v127;
  OUTLINED_FUNCTION_10_9();
  v128 = swift_allocObject();
  OUTLINED_FUNCTION_4_22(v128);
  OUTLINED_FUNCTION_2_4();
  v129 = swift_allocObject();
  *(v129 + 16) = sub_1E37695A0;
  *(v129 + 24) = v1;
  *(v4 + 384) = sub_1E37695A8;
  *(v4 + 392) = v129;
  sub_1E3C6A554(8);
  OUTLINED_FUNCTION_11_24();
  v130 = sub_1E3C6C2D0(5);
  OUTLINED_FUNCTION_1_53(v130, v131);
  OUTLINED_FUNCTION_20_17();

  v132 = OUTLINED_FUNCTION_21_22();
  OUTLINED_FUNCTION_17_13(v132, xmmword_1E4299720);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v133 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v133);
  OUTLINED_FUNCTION_2_4();
  v134 = swift_allocObject();
  *(v134 + 16) = sub_1E37695B8;
  *(v134 + 24) = v3;
  v132[2].n128_u64[0] = sub_1E37695AC;
  v132[2].n128_u64[1] = v134;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_2_4();
  v135 = swift_allocObject();
  OUTLINED_FUNCTION_7_44(v135);
  OUTLINED_FUNCTION_2_4();
  v136 = swift_allocObject();
  *(v136 + 16) = sub_1E37695B4;
  *(v136 + 24) = v3;
  v132[3].n128_u64[0] = sub_1E37695AC;
  v132[3].n128_u64[1] = v136;
  OUTLINED_FUNCTION_10_9();
  v137 = swift_allocObject();
  OUTLINED_FUNCTION_4_22(v137);
  OUTLINED_FUNCTION_2_4();
  v138 = swift_allocObject();
  *(v138 + 16) = sub_1E37695A0;
  *(v138 + 24) = v1;
  *(v4 + 400) = sub_1E37695A8;
  *(v4 + 408) = v138;
  sub_1E3C6A554(8);
  OUTLINED_FUNCTION_11_24();
  v139 = sub_1E3C6C2D0(12);
  v141 = OUTLINED_FUNCTION_1_53(v139, v140);

  sub_1E3C6C2D0(4);
  OUTLINED_FUNCTION_11_24();
  v142 = sub_1E3C6C2D0(12);
  v144 = OUTLINED_FUNCTION_1_53(v142, v143);

  OUTLINED_FUNCTION_10_9();
  v145 = swift_allocObject();
  v145[2] = sub_1E37693E0;
  v145[3] = v141;
  v145[4] = sub_1E37693E0;
  v145[5] = v144;
  v146 = OUTLINED_FUNCTION_21_22();
  v147 = OUTLINED_FUNCTION_17_13(v146, xmmword_1E4299720);
  v149 = v148;
  OUTLINED_FUNCTION_2_4();
  v150 = swift_allocObject();
  *(v150 + 16) = v147;
  *(v150 + 24) = v149;
  OUTLINED_FUNCTION_2_4();
  v151 = swift_allocObject();
  *(v151 + 16) = sub_1E37695B8;
  *(v151 + 24) = v150;
  v146[2].n128_u64[0] = sub_1E37695AC;
  v146[2].n128_u64[1] = v151;
  v152 = sub_1E3C6C2D0(1);
  v154 = v153;
  OUTLINED_FUNCTION_2_4();
  v155 = swift_allocObject();
  *(v155 + 16) = v152;
  *(v155 + 24) = v154;
  OUTLINED_FUNCTION_2_4();
  v156 = swift_allocObject();
  *(v156 + 16) = sub_1E37695B4;
  *(v156 + 24) = v155;
  v146[3].n128_u64[0] = sub_1E37695AC;
  v146[3].n128_u64[1] = v156;
  OUTLINED_FUNCTION_10_9();
  v157 = swift_allocObject();
  v157[2] = v146;
  v157[3] = sub_1E3769060;
  v157[4] = v145;
  v157[5] = v5;
  OUTLINED_FUNCTION_2_4();
  v158 = swift_allocObject();
  *(v158 + 16) = sub_1E37695A0;
  *(v158 + 24) = v157;
  *(v4 + 416) = sub_1E37695A8;
  *(v4 + 424) = v158;
  sub_1E3C6C2D0(0);
  OUTLINED_FUNCTION_9_9();
  sub_1E3C6C2D0(6);
  OUTLINED_FUNCTION_11_24();
  v159 = OUTLINED_FUNCTION_22_9();
  v159[2] = v146;
  v159[3] = v157;
  v159[4] = v145;
  v159[5] = v154;
  v159[6] = v5;
  sub_1E3C6C2D0(1);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_2_4();
  v160 = swift_allocObject();
  *(v160 + 16) = v146;
  *(v160 + 24) = v157;
  v161 = OUTLINED_FUNCTION_22_9();
  v161[2] = sub_1E37695B8;
  v161[3] = v160;
  v161[4] = sub_1E376912C;
  v161[5] = v159;
  v161[6] = v5;
  OUTLINED_FUNCTION_2_4();
  result = swift_allocObject();
  *(result + 16) = sub_1E37695A4;
  *(result + 24) = v161;
  *(v4 + 432) = sub_1E37695A8;
  *(v4 + 440) = result;
  qword_1EE28B278 = v4;
  return result;
}

void sub_1E3768E10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setDateFormat_];
}

uint64_t sub_1E3768E80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = sub_1E327D33C(*(v2 + 16), *(v2 + 24));
    if (v5)
    {
      sub_1E328438C(*(a1 + 56) + 32 * v4, v18);
      sub_1E329504C(v18, v15);
      sub_1E328438C(v15, v18);
      if (OUTLINED_FUNCTION_6_26())
      {
        v7 = v16;
        v6 = v17;
        sub_1E328438C(v2 + 40, v18);
        if (OUTLINED_FUNCTION_6_26())
        {
          if (*&v7 == *&v16 && v6 == v17)
          {

            v9 = 1;
          }

          else
          {
            v9 = sub_1E42079A4();
          }

          goto LABEL_23;
        }
      }

      sub_1E328438C(v15, v18);
      if (OUTLINED_FUNCTION_6_26() & 1) != 0 && (v11 = v16, sub_1E328438C(v2 + 40, v18), (OUTLINED_FUNCTION_6_26()))
      {
        v12 = *&v11 == *&v16;
      }

      else
      {
        sub_1E328438C(v15, v18);
        if ((OUTLINED_FUNCTION_6_26() & 1) == 0 || (v13 = v16, sub_1E328438C(v2 + 40, v18), (OUTLINED_FUNCTION_6_26() & 1) == 0))
        {
          v9 = 0;
LABEL_23:
          __swift_destroy_boxed_opaque_existential_1(v15);
          v10 = v9 ^ 1;
          return v10 & 1;
        }

        v12 = v13 == v16;
      }

      v9 = v12;
      goto LABEL_23;
    }
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1E3769060()
{
  OUTLINED_FUNCTION_25_16();
  if (v2())
  {

    v3 = v1(v0);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1E37690B8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t objectdestroy_193Tm()
{

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E3769138()
{
  OUTLINED_FUNCTION_25_16();
  if (v2())
  {
    v3 = v1(v0);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_3_20();
  }

  return v3 & 1;
}

uint64_t objectdestroy_133Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_1E37691F0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_1E3277E60(v3, v4, a1, &v30);
  if (!v31)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_13(v7, v8, v9, MEMORY[0x1E69E63B0], v10, v11, v12, v13, v25, v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_12_23();
    sub_1E42074B4();

    *&v30 = v3;
    *(&v30 + 1) = v4;
    OUTLINED_FUNCTION_18_10();
    MEMORY[0x1E69109E0](v5, v6);
    v23 = 0xD000000000000021;
    v22 = 0x80000001E425B220;
    goto LABEL_9;
  }

  v14 = v28;
  sub_1E3277E60(v5, v6, a1, &v30);
  if (!v31)
  {
LABEL_7:
    sub_1E329505C(&v30);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_26_13(v15, v16, v17, MEMORY[0x1E69E63B0], v18, v19, v20, v21, v26, SLOBYTE(v28));
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v14 - v29 > 300000.0)
  {
    OUTLINED_FUNCTION_12_23();
    sub_1E42074B4();

    *&v30 = v3;
    *(&v30 + 1) = v4;
    MEMORY[0x1E69109E0](2108704, 0xE300000000000000);
    MEMORY[0x1E69109E0](v5, v6);
    OUTLINED_FUNCTION_23();
    v23 = 0xD000000000000015;
LABEL_9:
    MEMORY[0x1E69109E0](v23, v22);
    return 0;
  }

  return OUTLINED_FUNCTION_3_20();
}

uint64_t sub_1E37693A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

BOOL sub_1E37693E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  for (i = v3 + 40; v4; --v4)
  {
    v6 = *(i - 8);
    v9 = a1;

    v6(&v8, &v9);

    if (v8 != 1)
    {
      break;
    }

    i += 16;
  }

  return v4 == 0;
}

unint64_t sub_1E376948C()
{
  result = qword_1EE23ADD0;
  if (!qword_1EE23ADD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23ADD0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E37694E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_1E3769538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1E37695C0(unint64_t result)
{
  if (result >= 0xD)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1E37695D0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

void sub_1E3769610()
{
  OUTLINED_FUNCTION_6_27();
  switch(v0)
  {
    case 3:
      OUTLINED_FUNCTION_14_24();
      break;
    case 9:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

uint64_t sub_1E37697B0(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v6 = 1702326124;
      goto LABEL_4;
    case 2:
      v6 = 1701867637;
LABEL_4:
      v5 = v6 | 0x7361637200000000;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0x696C617469706163;
      v3 = 0xEA0000000000657ALL;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v8 = 1702326124;
      goto LABEL_9;
    case 2:
      v8 = 1701867637;
LABEL_9:
      v2 = v8 | 0x7361637200000000;
      v7 = 0xE900000000000065;
      break;
    case 3:
      v2 = 0x696C617469706163;
      v7 = 0xEA0000000000657ALL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E37698F0(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0x6669636570736E75;
  v6 = 0xEB00000000646569;
  switch(v4)
  {
    case 1:
      v5 = 0x65736E65646E6F63;
      v6 = 0xE900000000000064;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x647261646E617473;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x6465646E61707865;
      break;
    case 4:
      v5 = 0x73736572706D6F63;
      v6 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x65736E65646E6F63;
      v2 = 0xE900000000000064;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x647261646E617473;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x6465646E61707865;
      break;
    case 4:
      v3 = 0x73736572706D6F63;
      v2 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3769A84(unsigned __int8 a1, char a2)
{
  v2 = 1952867692;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1952867692;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x7265746E6563;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x7468676972;
      break;
    case 3:
      v5 = 0x656966697473756ALL;
      v3 = 0xE900000000000064;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v5 = 0x6C61727574616ELL;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x676E696461656CLL;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x676E696C69617274;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x7265746E6563;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x7468676972;
      break;
    case 3:
      v2 = 0x656966697473756ALL;
      v6 = 0xE900000000000064;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v2 = 0x6C61727574616ELL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x676E696461656CLL;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v2 = 0x676E696C69617274;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3769C54(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x746E6172626976;
    }

    else
    {
      v4 = 0x72685468636E7570;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEC0000006867756FLL;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x746E6172626976;
    }

    else
    {
      v2 = 0x72685468636E7570;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEC0000006867756FLL;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3769D5C(unsigned __int8 a1, char a2)
{
  v2 = 0xEE00676E69707061;
  v3 = 0x725764726F577962;
  v4 = a1;
  v5 = 0x725764726F577962;
  v6 = 0xEE00676E69707061;
  switch(v4)
  {
    case 1:
      v5 = 0x7257726168437962;
      v6 = 0xEE00676E69707061;
      break;
    case 2:
      v5 = 0x697070696C437962;
      v6 = 0xEA0000000000676ELL;
      break;
    case 3:
      v5 = 0xD000000000000010;
      v7 = "CharWrapping";
      goto LABEL_6;
    case 4:
      v5 = 0xD000000000000010;
      v7 = "byTruncatingHead";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      break;
    case 5:
      v6 = 0x80000001E425B630;
      v5 = 0xD000000000000012;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7257726168437962;
      break;
    case 2:
      v3 = 0x697070696C437962;
      v2 = 0xEA0000000000676ELL;
      break;
    case 3:
      v3 = 0xD000000000000010;
      v8 = "CharWrapping";
      goto LABEL_13;
    case 4:
      v3 = 0xD000000000000010;
      v8 = "byTruncatingHead";
LABEL_13:
      v2 = v8 | 0x8000000000000000;
      break;
    case 5:
      v2 = 0x80000001E425B630;
      v3 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3769F18(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0x6669636570736E75;
  v6 = 0xEB00000000646569;
  switch(v4)
  {
    case 1:
      v5 = 0x7061436C6C616D73;
      v6 = 0xE900000000000073;
      break;
    case 2:
      v5 = 0x6143657469746570;
      v6 = 0xEA00000000007370;
      break;
    case 3:
      v7 = 0x4C7468676974;
      goto LABEL_6;
    case 4:
      v7 = 0x4C65736F6F6CLL;
LABEL_6:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
      v6 = 0xEC000000676E6964;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7061436C6C616D73;
      v2 = 0xE900000000000073;
      break;
    case 2:
      v3 = 0x6143657469746570;
      v2 = 0xEA00000000007370;
      break;
    case 3:
      v8 = 0x4C7468676974;
      goto LABEL_12;
    case 4:
      v8 = 0x4C65736F6F6CLL;
LABEL_12:
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
      v2 = 0xEC000000676E6964;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E376A0AC(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E75;
  v4 = a1;
  v5 = 0x6669636570736E75;
  v6 = 0xEB00000000646569;
  switch(v4)
  {
    case 1:
      v5 = 0x67694C6172746C75;
      v7 = 29800;
      goto LABEL_11;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1852401780;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x746867696CLL;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x72616C75676572;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x6D756964656DLL;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v5 = 0x646C6F62696D6573;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v5 = 1684828002;
      break;
    case 8:
      v6 = 0xE500000000000000;
      v5 = 0x7976616568;
      break;
    case 9:
      v6 = 0xE500000000000000;
      v5 = 0x6B63616C62;
      break;
    case 10:
      v5 = 0x7A69736168706D65;
      v7 = 25701;
LABEL_11:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x67694C6172746C75;
      v8 = 29800;
      goto LABEL_23;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1852401780;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x746867696CLL;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x72616C75676572;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x6D756964656DLL;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3 = 0x646C6F62696D6573;
      break;
    case 7:
      v2 = 0xE400000000000000;
      v3 = 1684828002;
      break;
    case 8:
      v2 = 0xE500000000000000;
      v3 = 0x7976616568;
      break;
    case 9:
      v2 = 0xE500000000000000;
      v3 = 0x6B63616C62;
      break;
    case 10:
      v3 = 0x7A69736168706D65;
      v8 = 25701;
LABEL_23:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E376A318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E376A3D8()
{
  sub_1E4207B44();
  sub_1E376A4A4();
  return sub_1E4207BA4();
}

uint64_t sub_1E376A42C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1E4207B44();
  a2(a1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E376A4A4()
{
  sub_1E4206014();
}

uint64_t sub_1E376A550()
{
  sub_1E4206014();
}

uint64_t sub_1E376A630()
{
  sub_1E4206014();
}

uint64_t sub_1E376A724(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1E4206014();
}

uint64_t sub_1E376A77C()
{
  sub_1E4206014();
}

uint64_t sub_1E376A808()
{
  sub_1E4206014();
}

uint64_t sub_1E376A904()
{
  sub_1E4206014();
}

uint64_t sub_1E376A9E4()
{
  sub_1E4206014();
}

uint64_t sub_1E376AB64()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E376AC04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E376AC58()
{
  sub_1E4207B44();
  sub_1E376A4A4();
  return sub_1E4207BA4();
}

uint64_t sub_1E376AC9C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E37695D0();
  *v1 = result;
  return result;
}

void sub_1E376ACC4()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3769610();
  *v0 = v1;
  v0[1] = v2;
}

unint64_t sub_1E376AD08(unint64_t result)
{
  if (result <= 0x18)
  {
    return byte_1E429AB40[result];
  }

  __break(1u);
  return result;
}

uint64_t sub_1E376AD24()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

void sub_1E376AD6C(char a1)
{
  switch(a1)
  {
    case 8:
    case 12:
      OUTLINED_FUNCTION_17_14();
      break;
    default:
      return;
  }
}

uint64_t sub_1E376B0B4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376AD24();
  *v1 = result;
  return result;
}

void sub_1E376B0DC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E376AD6C(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E376B10C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E376B14C()
{
  result = OUTLINED_FUNCTION_6_27();
  switch(v1)
  {
    case 1:
      result = 0x65736E65646E6F63;
      break;
    case 2:
      result = 0x647261646E617473;
      break;
    case 3:
      result = 0x6465646E61707865;
      break;
    case 4:
      result = 0x73736572706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E376B25C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376B10C();
  *v1 = result;
  return result;
}

uint64_t sub_1E376B284()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E376B14C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E376B2C8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E376B308()
{
  result = OUTLINED_FUNCTION_6_27();
  switch(v1)
  {
    case 1:
      result = 0x67694C6172746C75;
      break;
    case 2:
      result = 1852401780;
      break;
    case 3:
      result = OUTLINED_FUNCTION_19_14(26988);
      break;
    case 4:
      result = 0x72616C75676572;
      break;
    case 5:
      result = OUTLINED_FUNCTION_14_24();
      break;
    case 6:
      result = 0x646C6F62696D6573;
      break;
    case 7:
      result = 1684828002;
      break;
    case 8:
      result = 0x7976616568;
      break;
    case 9:
      result = 0x6B63616C62;
      break;
    case 10:
      result = 0x7A69736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E376B470(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376B2C8();
  *v1 = result;
  return result;
}

uint64_t sub_1E376B498()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E376B308();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E376B4C8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E376B508()
{
  result = OUTLINED_FUNCTION_6_27();
  switch(v1)
  {
    case 1:
      result = 0x7061436C6C616D73;
      break;
    case 2:
      result = 0x6143657469746570;
      break;
    case 3:
      v2 = 0x4C7468676974;
      goto LABEL_6;
    case 4:
      v2 = 0x4C65736F6F6CLL;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6165000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E376B618(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376B4C8();
  *v1 = result;
  return result;
}

uint64_t sub_1E376B640()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E376B508();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E376B670()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void sub_1E376B6B0(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_17_14();
      break;
    default:
      return;
  }
}

uint64_t sub_1E376B748(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376B670();
  *v1 = result;
  return result;
}

void sub_1E376B770()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E376B6B0(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E376B7A0(uint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      v1 = [objc_opt_self() sharedApplication];
      v2 = [v1 userInterfaceLayoutDirection] != 0;
      goto LABEL_8;
    case 6:
      v1 = [objc_opt_self() sharedApplication];
      v2 = [v1 userInterfaceLayoutDirection] == 0;
LABEL_8:

      result = 2 * v2;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E376B880()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E376B8C0(char a1)
{
  result = 1952867692;
  switch(a1)
  {
    case 1:
      result = 0x7265746E6563;
      break;
    case 2:
      result = OUTLINED_FUNCTION_19_14(26994);
      break;
    case 3:
      result = 0x656966697473756ALL;
      break;
    case 4:
      result = 0x6C61727574616ELL;
      break;
    case 5:
      result = 0x676E696461656CLL;
      break;
    case 6:
      result = 0x676E696C69617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E376B9EC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376B880();
  *v1 = result;
  return result;
}

unint64_t sub_1E376BA14()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E376B8C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E376BA44()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_1E376BA84(char a1)
{
  switch(a1)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

uint64_t sub_1E376BBB8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376BA44();
  *v1 = result;
  return result;
}

void sub_1E376BBE0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E376BA84(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E376BC10()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E376BC50(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x746E6172626976;
  }

  return 0x72685468636E7570;
}

uint64_t sub_1E376BCCC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376BC10();
  *v1 = result;
  return result;
}

uint64_t sub_1E376BCF4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E376BC50(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E376BD2C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

void sub_1E376BD74(char a1)
{
  switch(a1)
  {
    case 8:
    case 9:
    case 19:
      OUTLINED_FUNCTION_17_14();
      break;
    default:
      return;
  }
}

uint64_t sub_1E376C0D4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E376BD2C();
  *v1 = result;
  return result;
}

void sub_1E376C0FC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E376BD74(v1);
  *v0 = v2;
  v0[1] = v3;
}

void *sub_1E376C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E4205ED4();

  if (a4)
  {
    v6 = v5;
    sub_1E4205ED4();
  }

  return v5;
}

unint64_t sub_1E376C1A8()
{
  result = qword_1EE287C28;
  if (!qword_1EE287C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287C28);
  }

  return result;
}

unint64_t sub_1E376C200()
{
  result = qword_1EE287C20;
  if (!qword_1EE287C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287C20);
  }

  return result;
}

unint64_t sub_1E376C258()
{
  result = qword_1ECF293C8;
  if (!qword_1ECF293C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF293C8);
  }

  return result;
}

unint64_t sub_1E376C2B0()
{
  result = qword_1EE287C38[0];
  if (!qword_1EE287C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE287C38);
  }

  return result;
}

unint64_t sub_1E376C308()
{
  result = qword_1ECF293D0;
  if (!qword_1ECF293D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF293D0);
  }

  return result;
}

unint64_t sub_1E376C360()
{
  result = qword_1EE287C10;
  if (!qword_1EE287C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287C10);
  }

  return result;
}

unint64_t sub_1E376C3B8()
{
  result = qword_1EE287C18;
  if (!qword_1EE287C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287C18);
  }

  return result;
}

unint64_t sub_1E376C410()
{
  result = qword_1ECF293D8;
  if (!qword_1ECF293D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF293D8);
  }

  return result;
}

unint64_t sub_1E376C468()
{
  result = qword_1EE287C30;
  if (!qword_1EE287C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287C30);
  }

  return result;
}

unint64_t sub_1E376C4C0()
{
  result = qword_1ECF293E0;
  if (!qword_1ECF293E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF293E0);
  }

  return result;
}

uint64_t sub_1E376C514(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 13);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376C598(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E376C660(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 27);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 27);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 27);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376C6E4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 26);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonLayout.ButtonType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 11);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 11);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 11);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376C83C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ButtonLayout.ButtonSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 5);
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

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376C990(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchTemplateController.SearchState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376CADC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E376CBA4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376CC28(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t _s8VideosUI16MetricsEventTypeOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376CD74(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsKitScoreboardManager.SportingEventUpdate.SportingEventUpdateType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376CEC0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E376CF88(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 28);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 28);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 28);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E376D00C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 27);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E376D0D4(uint64_t *a1, int a2)
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

uint64_t sub_1E376D114(uint64_t result, int a2, int a3)
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

uint64_t sub_1E376D170()
{
  v0 = sub_1E4205814();
  if (v1)
  {
    v6 = v0;
    v7 = v1;
    MEMORY[0x1E69109E0](32, 0xE100000000000000);
    MEMORY[0x1E69109E0](v6, v7);
  }

  v2 = sub_1E4205804();
  MEMORY[0x1E69109E0](v2);

  v3 = sub_1E4205824();
  if (v4)
  {
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](32, 0xE100000000000000);
  }

  return 0;
}

void sub_1E376D240()
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
  swift_allocObject();
  sub_1E376D2C8(v15, v13, v11, v9, v7, v5, v3, v1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E376D2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 56) = 0;
  *(v9 + 48) = 0;
  OUTLINED_FUNCTION_3_0();
  *(v9 + 24) = a8;
  swift_unknownObjectWeakAssign();
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  OUTLINED_FUNCTION_3_0();
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;

  *(v9 + 64) = a6;
  v22 = 0;
  v23 = 0xE000000000000000;
  v21[3] = a7;
  v21[0] = a1;
  __swift_project_boxed_opaque_existential_1(v21, a7);
  swift_getDynamicType();
  OUTLINED_FUNCTION_38();
  swift_unknownObjectRetain();
  v18 = sub_1E4207CE4();
  MEMORY[0x1E69109E0](v18);

  __swift_destroy_boxed_opaque_existential_1(v21);
  MEMORY[0x1E69109E0](46, 0xE100000000000000);
  v21[0] = a1;
  sub_1E4207614();
  swift_unknownObjectRelease();
  v19 = v23;
  *(v9 + 72) = v22;
  *(v9 + 80) = v19;
  return v9;
}

uint64_t sub_1E376D430()
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1E4205CB4();
  }

  v2 = Strong;
  v3 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v5 = v2;
  (*(v3 + 56))(ObjectType, v3);
  OUTLINED_FUNCTION_50();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1E376D4D8(char a1)
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_167_1();
    v2 = OUTLINED_FUNCTION_108_0();
    v3(v2);
    OUTLINED_FUNCTION_92_2();
    swift_unknownObjectRelease();
  }

  else
  {
    a1 = 0;
  }

  return a1 & 1;
}

uint64_t sub_1E376D554()
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = OUTLINED_FUNCTION_167_1();
    (*(v0 + 64))(v1, v0);
    return swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
    v3 = OUTLINED_FUNCTION_28_10();
    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_1E376D5D8(char a1)
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_167_1();
    v2 = OUTLINED_FUNCTION_108_0();
    v3(v2);
    OUTLINED_FUNCTION_92_2();
    swift_unknownObjectRelease();
  }

  else
  {
    a1 = 0;
  }

  return a1 & 1;
}

uint64_t sub_1E376D654(char a1)
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_167_1();
    v2 = OUTLINED_FUNCTION_108_0();
    v3(v2);
    OUTLINED_FUNCTION_92_2();
    swift_unknownObjectRelease();
  }

  else
  {
    a1 = 0;
  }

  return a1 & 1;
}

uint64_t sub_1E376D6D0()
{
  sub_1E4206014();

  return sub_1E4206014();
}

uint64_t sub_1E376D710()
{
  OUTLINED_FUNCTION_155();
  v3 = *(v2 + 32) == v0[4] && v1[5] == v0[5];
  if (v3 || (v4 = sub_1E42079A4(), result = 0, (v4 & 1) != 0))
  {
    if (v1[9] == v0[9] && v1[10] == v0[10])
    {
      return 1;
    }

    else
    {

      return sub_1E42079A4();
    }
  }

  return result;
}

uint64_t sub_1E376D794()
{
  sub_1E32AF6F8(v0 + 16);

  return v0;
}

uint64_t sub_1E376D7CC()
{
  sub_1E376D794();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1E376D800()
{
  sub_1E4207B44();
  sub_1E376D6D0();
  return sub_1E4207BA4();
}

uint64_t sub_1E376D8C8()
{
  sub_1E4207B44();
  sub_1E376D6D0();
  return sub_1E4207BA4();
}

void sub_1E376D92C()
{
  v0 = sub_1E4205ED4();
  v1 = MGGetBoolAnswer();

  if (v1)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_1E4205ED4();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  byte_1EE2AAB30 = v4;
}

char *sub_1E376DA04()
{
  if (qword_1EE295000 != -1)
  {
    OUTLINED_FUNCTION_4_23();
    swift_once();
  }

  return &byte_1EE2AAB30;
}

void sub_1E376DA50()
{
  type metadata accessor for SportsKitScoreboardManager(0);
  v0 = OUTLINED_FUNCTION_119();
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v1 = MEMORY[0x1E69E7CC8];
  v0[16] = MEMORY[0x1E69E7CC8];
  v0[17] = 0;
  v0[18] = v1;
  v0[19] = 0;
  sub_1E41FE624();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__demand;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF293F0);
  OUTLINED_FUNCTION_119();
  *(v0 + v6) = sub_1E4200574();
  v7 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__timer;
  *(v0 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__demandCanceller) = 0;
  v8 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_fetchTask;
  *(v0 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager____lazy_storage___timer) = 0;
  *(v0 + v7) = 0;
  *(v0 + v8) = 0;
  sub_1E3287754(8);
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  OUTLINED_FUNCTION_84_2(v10, v11, v12, v13, *MEMORY[0x1E69DF7D8]);

  v14 = [v9 defaultCenter];
  OUTLINED_FUNCTION_84_2(v14, v15, v16, v17, *MEMORY[0x1E69DF7F0]);

  v18 = [v9 defaultCenter];
  OUTLINED_FUNCTION_84_2(v18, v19, v20, v21, VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0]);

  qword_1EE2AAB28 = v0;
}

uint64_t *sub_1E376DBD0()
{
  if (_MergedGlobals_146 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  return &qword_1EE2AAB28;
}

id sub_1E376DC10()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v3 = v0;
    SportsRunningClockLocalization.init()();
    sub_1E376DC98();
    v4 = objc_allocWithZone(sub_1E4205944());
    v5 = sub_1E4205934();
    v6 = *(v0 + 112);
    *(v3 + 112) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

unint64_t sub_1E376DC98()
{
  result = qword_1EE244B50;
  if (!qword_1EE244B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE244B50);
  }

  return result;
}

void sub_1E376DCEC(uint64_t a1)
{
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_1E376DCF8(id *a1)
{
  a1[1] = v1;
  *a1 = sub_1E376DC10();
  return OUTLINED_FUNCTION_116();
}

void sub_1E376DD3C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
}

id sub_1E376DD4C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 120);
  }

  else
  {
    v3 = sub_1E376DDA4();
    v4 = *(v0 + 120);
    *(v0 + 120) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1E376DDA4()
{
  v0 = sub_1E4205914();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  SportsRunningClockLocalization.init()();
  sub_1E376DC98();
  v2 = objc_allocWithZone(sub_1E4205944());
  v3 = sub_1E4205934();
  sub_1E42058D4();
  sub_1E4205924();
  return v3;
}

void sub_1E376DE48(uint64_t a1)
{
  v2 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_1E376DE54(id *a1)
{
  a1[1] = v1;
  *a1 = sub_1E376DD4C();
  return OUTLINED_FUNCTION_116();
}

void sub_1E376DE98(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;
}

uint64_t sub_1E376DEA8()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E376DEF0(char a1)
{
  if (!a1)
  {
    return 0x676E6974726F7073;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_1E376DF64(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000746E657645;
  v3 = 0x676E6974726F7073;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001E425B780;
    }

    else
    {
      v6 = 0x80000001E425B7A0;
    }
  }

  else
  {
    v5 = 0x676E6974726F7073;
    v6 = 0xED0000746E657645;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001E425B780;
    }

    else
    {
      v2 = 0x80000001E425B7A0;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E376E074()
{
  sub_1E4206014();
}

uint64_t sub_1E376E118()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E376E1C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E376DEA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E376E1F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E376DEF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1E376E224()
{
  v1 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_sportingEvent;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E376E26C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_sportingEvent;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E376E308()
{
  v1 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_scoreboardViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E376E350(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_scoreboardViewModel;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E376E3EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_weakLoadStrong();
}

uint64_t sub_1E376E430()
{
  OUTLINED_FUNCTION_37();
  swift_weakAssign();
}

void (*sub_1E376E480(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_canonicalScoreboardViewModel;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3();
  v3[3] = swift_weakLoadStrong();
  return sub_1E376E4FC;
}

void sub_1E376E4FC(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_1E376E57C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF293F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v92[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29400);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v92[-v23];
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v92[-v26];
  MEMORY[0x1EEE9AC00](v25);
  v32 = &v92[-v31];
  if (!*(v1 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type))
  {
    v102 = v30;
    v100 = v29;
    v94 = v28;
    v95 = v8;
    OUTLINED_FUNCTION_99();
    v42 = *(v41 + 144);
    v98 = v41 + 144;
    v99 = v42;
    v43 = v42();
    v101 = v13;
    if (v43)
    {
      v44 = v43;
      sub_1E4205044();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    __swift_storeEnumTagSinglePayload(v32, v45, 1, v2);
    v50 = *MEMORY[0x1E69D3B78];
    v103 = v4;
    v96 = *(v4 + 104);
    v97 = v4 + 104;
    v96(v27, v50, v2);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v2);
    v54 = *(v9 + 48);
    OUTLINED_FUNCTION_149();
    sub_1E378249C();
    OUTLINED_FUNCTION_149();
    sub_1E378249C();
    OUTLINED_FUNCTION_34_4(v16);
    if (v58)
    {
      v55 = OUTLINED_FUNCTION_67_0();
      sub_1E325F7A8(v55, v56);
      sub_1E325F7A8(v32, &qword_1ECF29400);
      OUTLINED_FUNCTION_34_4(&v16[v54]);
      if (v58)
      {
        v57 = v16;
        goto LABEL_33;
      }
    }

    else
    {
      sub_1E378249C();
      OUTLINED_FUNCTION_34_4(&v16[v54]);
      if (!v58)
      {
        v66 = v95;
        (*(v103 + 32))(v95, &v16[v54], v2);
        OUTLINED_FUNCTION_15_24();
        sub_1E3780CD4(v67, 255, v68);
        v93 = sub_1E4205E84();
        v69 = *(v103 + 8);
        v69(v66, v2);
        sub_1E325F7A8(v27, &qword_1ECF29400);
        sub_1E325F7A8(v32, &qword_1ECF29400);
        v69(v24, v2);
        v70 = sub_1E325F7A8(v16, &qword_1ECF29400);
        if (v93)
        {
          goto LABEL_39;
        }

        goto LABEL_23;
      }

      v59 = OUTLINED_FUNCTION_67_0();
      sub_1E325F7A8(v59, v60);
      sub_1E325F7A8(v32, &qword_1ECF29400);
      (*(v103 + 8))(v24, v2);
    }

    v70 = sub_1E325F7A8(v16, &qword_1ECF293F8);
LABEL_23:
    v61 = (v99)(v70);
    if (v61)
    {
      v62 = v61;
      v63 = v100;
      sub_1E4205044();

      v64 = 0;
    }

    else
    {
      v64 = 1;
      v63 = v100;
    }

    v65 = v101;
    v71 = v103;
    __swift_storeEnumTagSinglePayload(v63, v64, 1, v2);
    v96(v102, *MEMORY[0x1E69D3B88], v2);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v2);
    v75 = *(v9 + 48);
    sub_1E378249C();
    sub_1E378249C();
    OUTLINED_FUNCTION_34_4(v65);
    if (!v58)
    {
      sub_1E378249C();
      OUTLINED_FUNCTION_34_4(v65 + v75);
      if (!v80)
      {
        (*(v71 + 32))(v95, v65 + v75, v2);
        OUTLINED_FUNCTION_15_24();
        sub_1E3780CD4(v87, 255, v88);
        sub_1E4205E84();
        v89 = *(v71 + 8);
        v90 = OUTLINED_FUNCTION_13_8();
        v89(v90);
        sub_1E325F7A8(v102, &qword_1ECF29400);
        sub_1E325F7A8(v63, &qword_1ECF29400);
        v91 = OUTLINED_FUNCTION_142();
        v89(v91);
        sub_1E325F7A8(v65, &qword_1ECF29400);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_82();
      sub_1E325F7A8(v81, v82);
      OUTLINED_FUNCTION_82();
      sub_1E325F7A8(v83, v84);
      v85 = OUTLINED_FUNCTION_142();
      v86(v85);
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_82();
    sub_1E325F7A8(v76, v77);
    OUTLINED_FUNCTION_82();
    sub_1E325F7A8(v78, v79);
    OUTLINED_FUNCTION_34_4(v65 + v75);
    if (!v58)
    {
LABEL_37:
      v48 = &qword_1ECF293F8;
      v49 = v65;
      goto LABEL_38;
    }

    v57 = v65;
LABEL_33:
    sub_1E325F7A8(v57, &qword_1ECF29400);
    goto LABEL_39;
  }

  if (*(v1 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type) == 1)
  {
    OUTLINED_FUNCTION_99();
    v34 = (*(v33 + 168))();
    if (v34 && (v35 = sub_1E3780C14(v34)) != 0)
    {
      v36 = v35;
      ViewModelKeys.Sports.rawValue.getter(34);
      v104 = v37;
      v105 = v38;
      sub_1E4207414();
      v39 = OUTLINED_FUNCTION_97_2();
      sub_1E375D7E8(v39, v36, v40);

      sub_1E375D84C(&v106);
      if (*(&v108 + 1))
      {
        OUTLINED_FUNCTION_163();
        goto LABEL_39;
      }
    }

    else
    {
      v107 = 0u;
      v108 = 0u;
    }

    v48 = &unk_1ECF296E0;
    v49 = &v107;
LABEL_38:
    sub_1E325F7A8(v49, v48);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_99();
  v47 = (*(v46 + 192))();
  if (v47)
  {
    (*(*v47 + 1216))(v47);
  }

LABEL_39:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E376EDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E327D33C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E376EDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1E376EE58(void *a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1E376EEB0(a1, a2, a3);
  return v6;
}

uint64_t sub_1E376EEB0(void *a1, char a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_sportingEvent) = 0;
  *(v3 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_scoreboardViewModel) = 0;
  swift_weakInit();
  v7 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_lastUpdatedAt;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2();
  (*(v8 + 32))(v3 + v7, a3);
  if (a2)
  {
    if (a2 != 1)
    {
      *(v3 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type) = 2;
      OUTLINED_FUNCTION_37();
      swift_weakAssign();
      sub_1E3780C8C(a1, 2u);
      return v3;
    }

    *(v3 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type) = 1;
    v9 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_scoreboardViewModel;
  }

  else
  {
    *(v3 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type) = 0;
    v9 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_sportingEvent;
  }

  OUTLINED_FUNCTION_37();
  v10 = *(v3 + v9);
  *(v3 + v9) = a1;

  return v3;
}

uint64_t sub_1E376EFD0()
{
  v1 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_lastUpdatedAt;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1E376F054()
{
  sub_1E376EFD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E376F0F0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
    *(v0 + 136) = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

uint64_t sub_1E376F130()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_139();
  v5 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager____lazy_storage___timer;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager____lazy_storage___timer))
  {
    v6 = *(v0 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager____lazy_storage___timer);
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23AE40);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = [objc_opt_self() mainRunLoop];
    sub_1E4207054();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    v6 = sub_1E4206F14();

    sub_1E325F7A8(v1, &unk_1ECF3DB30);
    *(v2 + v5) = v6;
  }

  return v6;
}

void sub_1E376F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_31_1();
  v23 = v21;
  v101 = v24;
  LODWORD(v100) = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v36);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  v102 = v98 - v38;
  sub_1E377114C();
  sub_1E3771470();
  type metadata accessor for ScoreboardObservable(0);
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v22 = v39;
    v99 = v35;
    swift_unknownObjectRetain();
    sub_1E4067698();

    v40 = sub_1E40676F8();

    if (v40)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();

      sub_1E40677D4();

      OUTLINED_FUNCTION_157();
      swift_unknownObjectRelease_n();
    }
  }

  swift_getObjectType();
  type metadata accessor for AnyScoreboardUpdateable();

  swift_unknownObjectRetain();

  v100 = v29;
  sub_1E376D240();
  v42 = v41;
  v43 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_logger;

  v44 = sub_1E41FFC94();
  v45 = sub_1E42067D4();

  if (os_log_type_enabled(v44, v45))
  {
    v98[1] = v43;
    v46 = OUTLINED_FUNCTION_100();
    v22 = OUTLINED_FUNCTION_164_1();
    v103[0] = v22;
    *v46 = 136315650;
    v47 = *(v42 + 72);
    v48 = v42;
    v49 = v33;
    v99 = v48;
    v50 = *(v48 + 80);

    v51 = sub_1E3270FC8(v47, v50, v103);
    v33 = v49;

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_1E3270FC8(v49, v31, v103);
    *(v46 + 22) = 2080;
    if (v27)
    {
      v52 = MEMORY[0x1E69E6158];
      v53 = v27;
      v54 = v100;
    }

    else
    {
      v54 = 0;
      v53 = 0;
      v52 = 0;
      v106 = 0;
    }

    v104 = v54;
    v105 = v53;
    v107 = v52;

    v55 = sub_1E3294FA4(&v104);
    v57 = sub_1E3270FC8(v55, v56, v103);

    *(v46 + 24) = v57;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v58, v59, v60, v61, v46, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();

    v42 = v99;
  }

  else
  {
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v62 = *(v23 + 128);

  OUTLINED_FUNCTION_91();
  sub_1E376EDF8(v63, v64, v65);
  OUTLINED_FUNCTION_137_0();

  if (v22)
  {

    OUTLINED_FUNCTION_1_54();
    sub_1E3782E00(v66, v44, v67);
    sub_1E376F0AC();
    OUTLINED_FUNCTION_152();
    sub_1E376FA4C(v103, v33, v31);
    OUTLINED_FUNCTION_95_1();
    if (v69)
    {
      v70 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4298880;
      *(inited + 32) = v42;

      *v70 = sub_1E376FBB4(inited, v22);
    }

    (v23)(v103, 0);
    v62(&v104, 0);
    v82 = v102;
    v74 = v101;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_1E4298880;
    *(v72 + 32) = v42;

    v73 = sub_1E376FC84(v72);
    OUTLINED_FUNCTION_11_3();
    v74 = v101;

    swift_isUniquelyReferenced_nonNull_native();
    v103[0] = *(v23 + 128);
    sub_1E377E054(v73, v74, v33, v31);
    *(v23 + 128) = v103[0];
    swift_endAccess();

    v75 = sub_1E41FFC94();
    v76 = sub_1E42067D4();
    if (OUTLINED_FUNCTION_104(v76))
    {
      v77 = OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_118_0(v77, 3.852e-34);
      OUTLINED_FUNCTION_136();
      _os_log_impl(v78, v79, v80, v81, v77, 0xCu);
      OUTLINED_FUNCTION_65_0();
    }

    else
    {
    }

    v104 = sub_1E3771A7C();
    v105 = v83;
    sub_1E4200564();

    v82 = v102;
  }

  sub_1E377073C(v74);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_1E4297BE0;
  *(v84 + 32) = v33;
  *(v84 + 40) = v31;

  sub_1E377DC48(v84);
  (*(*v23 + 608))();

  if (a21 & 1) != 0 && (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
    v89 = _MergedGlobals_146;

    if (v89 != -1)
    {
      OUTLINED_FUNCTION_2_23();
    }

    v90 = qword_1EE2AAB28;
    OUTLINED_FUNCTION_0_20();
    v93 = sub_1E3780CD4(v91, 255, v92);
    OUTLINED_FUNCTION_5_10();
    v94 = swift_allocObject();
    v94[2] = v90;
    v94[3] = v93;
    v94[4] = v23;

    v95 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v95, v96, v82, v97, v94);
  }

  OUTLINED_FUNCTION_25_2();
}

void (*sub_1E376FA4C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1E377D954(v6, a2, a3);
  return sub_1E376FAC0;
}

void sub_1E376FAC0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1E376FB0C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1E3277398(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E376FBB4(unint64_t a1, uint64_t a2)
{
  v8 = a2;
  result = sub_1E32AE9B0(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return v8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
      v6 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E377DA4C(&v7, v6);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1E376FC84(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  v3 = type metadata accessor for AnyScoreboardUpdateable();
  v5 = sub_1E3780CD4(&qword_1EE25E368, v4, type metadata accessor for AnyScoreboardUpdateable);
  v11 = MEMORY[0x1E6910FA0](v2, v3, v5);
  result = sub_1E32AE9B0(a1);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      return v11;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
      v9 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v9 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E377DA4C(&v10, v9);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1E376FDAC()
{
  OUTLINED_FUNCTION_24();
  if (_MergedGlobals_146 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);
  OUTLINED_FUNCTION_32_2();

  return sub_1E3771EA8();
}

uint64_t sub_1E376FE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E378249C();
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F7A8(v11, &unk_1ECF2C400);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1E325F7A8(a3, &unk_1ECF2C400);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325F7A8(a3, &unk_1ECF2C400);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1E377013C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for ScoreboardObservable(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    swift_unknownObjectRetain();
    sub_1E4067698();

    OUTLINED_FUNCTION_74();
    v10 = sub_1E40676F8();

    if (v10)
    {
      if (v9 == v10)
      {

        OUTLINED_FUNCTION_74();
        sub_1E40677D4();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = *(v4 + 128);

  v12 = OUTLINED_FUNCTION_74();
  v14 = sub_1E376EDF8(v12, v13, v11);
  v16 = v15;

  if (v14)
  {

    OUTLINED_FUNCTION_1_54();
    sub_1E3782E00(v17, v16, v18);
    swift_getObjectType();
    type metadata accessor for AnyScoreboardUpdateable();
    swift_unknownObjectRetain();

    OUTLINED_FUNCTION_91();
    sub_1E376D240();
    v20 = v19;

    v21 = sub_1E41FFC94();
    v22 = sub_1E42067D4();

    v61 = v20;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v23 = 136315394;
      v25 = *(v20 + 72);
      v24 = *(v20 + 80);

      v26 = sub_1E3270FC8(v25, v24, v63);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = OUTLINED_FUNCTION_74();
      *(v23 + 14) = sub_1E3270FC8(v27, v28, v29);
      _os_log_impl(&dword_1E323F000, v21, v22, "unregistering scoreboard: %s for updates canonical: %s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    inited = v5;
    sub_1E376F0AC();
    OUTLINED_FUNCTION_137_0();
    OUTLINED_FUNCTION_91();
    a1 = sub_1E376FA4C(v31, v32, v33);
    if (*v34)
    {
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4298880;
      *(inited + 32) = v61;
      if ((v14 & 0xC000000000000001) != 0)
      {
        if (v14 >= 0)
        {
          v36 = v14 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          v36 = v14;
        }

        v37 = sub_1E4207384();
        v14 = sub_1E377E2C0(v36, v37);
      }

      else
      {
      }

      v38 = sub_1E377F490(inited, v14);
      swift_setDeallocating();
      sub_1E377D458();
      *v35 = v38;

      (a1)(v62, 0);
      v22(v63, 0);
    }

    else
    {

      (a1)(v62, 0);
      v22(v63, 0);
    }

    v39 = *(v5 + 128);

    v40 = OUTLINED_FUNCTION_74();
    sub_1E376EDF8(v40, v41, v39);
    OUTLINED_FUNCTION_145();

    if (inited)
    {

      OUTLINED_FUNCTION_1_54();
      sub_1E3782E00(v42, a4, v43);
      v44 = sub_1E374CEE0(inited);

      if (v44)
      {

        v45 = sub_1E41FFC94();
        v46 = sub_1E42067D4();
        if (OUTLINED_FUNCTION_104(v46))
        {
          v47 = OUTLINED_FUNCTION_6_21();
          OUTLINED_FUNCTION_118_0(v47, 3.852e-34);
          OUTLINED_FUNCTION_136();
          _os_log_impl(v48, v49, v50, v51, v47, 0xCu);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v63[0] = sub_1E3771A7C();
        v63[1] = v52;
        sub_1E4200564();
      }
    }
  }

  v53 = *(v5 + 128);
  OUTLINED_FUNCTION_71_7();
  v55 = v54 >> 6;
  result = swift_bridgeObjectRetain_n();
  v57 = 0;
  while (a1)
  {
LABEL_33:
    v59 = *(*(v53 + 56) + ((v57 << 10) | (16 * __clz(__rbit64(a1)))));
    if ((v59 & 0xC000000000000001) != 0)
    {

      v60 = sub_1E4207384();
    }

    else
    {
      v60 = *(v59 + 16);
    }

    a1 &= a1 - 1;
    if (v60)
    {
    }
  }

  while (1)
  {
    v58 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v58 >= v55)
    {

      OUTLINED_FUNCTION_168_1(OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__timer);
      return OUTLINED_FUNCTION_168_1(OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__demandCanceller);
    }

    a1 = *(v53 + 64 + 8 * v58);
    ++v57;
    if (a1)
    {
      v57 = v58;
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1E377073C(uint64_t (*a1)(char *)))(char *)
{
  v3 = v1;
  if (!a1)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v39 = *(v1 + 128);
    if (*(v39 + 16))
    {

      v40 = OUTLINED_FUNCTION_53();
      v42 = sub_1E327D33C(v40, v41);
      if (v43)
      {
        v44 = (*(v39 + 56) + 16 * v42);
        v45 = *v44;
        v2 = v44[1];
        OUTLINED_FUNCTION_157();
        swift_retain_n();

        OUTLINED_FUNCTION_1_54();
        sub_1E3782E00(v45, v2, v46);
        return v2;
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(v1 + 128);

  v6 = OUTLINED_FUNCTION_53();
  sub_1E376EDF8(v6, v7, v5);
  OUTLINED_FUNCTION_145();

  if (v1)
  {

    OUTLINED_FUNCTION_1_54();
    v8 = OUTLINED_FUNCTION_57();
    v11 = sub_1E3782E00(v8, v9, v10);
    if (v2)
    {
      v12 = v2;
      if ((*(*v2 + 216))(v11))
      {

        v13 = sub_1E41FFC94();
        v14 = sub_1E42067D4();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = OUTLINED_FUNCTION_6_21();
          v184 = OUTLINED_FUNCTION_100();
          *v15 = 136315138;
          v16 = OUTLINED_FUNCTION_53();
          *(v15 + 4) = sub_1E3270FC8(v16, v17, v18);
          _os_log_impl(&dword_1E323F000, v13, v14, "Dropping update for %s since we already have a final scoreboard cached", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v184);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_55();
        }

        return v2;
      }

      v47 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type;
      v48 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type;
      if (*(a1 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type) == 2)
      {
        OUTLINED_FUNCTION_111();
        v12 = a1;
        v50 = (*(v49 + 192))();
        if (v50)
        {
          (*(*v50 + 1136))();
          OUTLINED_FUNCTION_53();
          OUTLINED_FUNCTION_149();
          v55 = sub_1E3770E50(v51, v52, v53, v54);

          if (v55)
          {
            v56 = OUTLINED_FUNCTION_129();
            v58 = v57;
            OUTLINED_FUNCTION_79_3(v56);
            OUTLINED_FUNCTION_95_1();
            if (v67)
            {
              OUTLINED_FUNCTION_128_2(v59, v60);
            }

            v68 = OUTLINED_FUNCTION_72_6(v59, v60, v61, v62, v63, v64, v65, v66, v168, v174);
            v69 = v58(v68);
            v77 = OUTLINED_FUNCTION_76_1(v69, v70, v71, v72, v73, v74, v75, v76, v170, v176, v180, v181, v182, v183);
            (v56)(v77);
          }

          goto LABEL_47;
        }

        v48 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_type;
      }

      if (!*(v2 + v48))
      {
        v12 = v2;
        v78 = (*(*v2 + 144))();
        if (v78)
        {
          v5 = v78;
          if (!*(a1 + v47))
          {
            OUTLINED_FUNCTION_111();
            v12 = a1;
            v113 = (*(v112 + 144))();
            if (v113)
            {
              v114 = v113;
              if (!sub_1E4205034() || !sub_1E4205034()) && (sub_1E41FE524())
              {
                v115 = OUTLINED_FUNCTION_129();
                v117 = v116;
                OUTLINED_FUNCTION_79_3(v115);
                OUTLINED_FUNCTION_95_1();
                if (v126)
                {
                  OUTLINED_FUNCTION_128_2(v118, v119);
                }

                v127 = OUTLINED_FUNCTION_63_4(v118, v119, v120, v121, v122, v123, v124, v125, v168, v174);
                v128 = v117(v127);
                v136 = OUTLINED_FUNCTION_76_1(v128, v129, v130, v131, v132, v133, v134, v135, v172, v178, v180, v181, v182, v183);
                (v115)(v136);
              }

              v145 = sub_1E4205034();
              if (sub_1E4205034() < v145)
              {
                v146 = OUTLINED_FUNCTION_129();
                v148 = v147;
                OUTLINED_FUNCTION_79_3(v146);
                OUTLINED_FUNCTION_95_1();
                if (v157)
                {
                  OUTLINED_FUNCTION_128_2(v149, v150);
                }

                v158 = OUTLINED_FUNCTION_63_4(v149, v150, v151, v152, v153, v154, v155, v156, v168, v174);
                v159 = v148(v158);
                v167 = OUTLINED_FUNCTION_76_1(v159, v160, v161, v162, v163, v164, v165, v166, v173, v179, v180, v181, v182, v183);
                (v146)(v167);
              }

              goto LABEL_47;
            }
          }
        }
      }

      if ((sub_1E41FE524() & 1) == 0)
      {
        goto LABEL_47;
      }

      v79 = *(a1 + v47);
      if (v79 == 1)
      {
        OUTLINED_FUNCTION_111();
        v12 = a1;
        v81 = (*(v80 + 168))();
        if (v81)
        {
          v5 = v81;
          *(a1 + v47) = 1;
          sub_1E377CB5C();
          OUTLINED_FUNCTION_111();
          (*(v82 + 176))();
          v12 = sub_1E3780DC4(v5);
          OUTLINED_FUNCTION_53();
          OUTLINED_FUNCTION_149();
          v87 = sub_1E3770E50(v83, v84, v85, v86);

          goto LABEL_34;
        }

        v79 = *(a1 + v47);
      }

      if (v79 != 2 || (OUTLINED_FUNCTION_111(), v12 = a1, (v89 = (*(v88 + 192))()) == 0))
      {
LABEL_35:
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_137_0();
        OUTLINED_FUNCTION_79_3(v92);
        OUTLINED_FUNCTION_95_1();
        if (v101)
        {
          OUTLINED_FUNCTION_128_2(v93, v94);
        }

        v102 = OUTLINED_FUNCTION_72_6(v93, v94, v95, v96, v97, v98, v99, v100, v168, v174);
        v103 = v12(v102);
        v111 = OUTLINED_FUNCTION_76_1(v103, v104, v105, v106, v107, v108, v109, v110, v171, v177, v180, v181, v182, v183);
        (v5)(v111);
LABEL_47:
        v137 = *(v3 + 128);

        v138 = OUTLINED_FUNCTION_53();
        v140 = sub_1E376EDF8(v138, v139, v137);
        v142 = v141;

        if (v140)
        {

          OUTLINED_FUNCTION_1_54();
          sub_1E3782E00(v140, v142, v143);
          return v142;
        }

        return 0;
      }

      v12 = v89;
      v5 = (*(*v89 + 1136))(v89);
      v90 = OUTLINED_FUNCTION_53();
      v87 = sub_1E3770E50(v90, v91, v5, v3);

LABEL_34:

      if ((v87 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_79_3(v19);
  OUTLINED_FUNCTION_95_1();
  if (v28)
  {
    OUTLINED_FUNCTION_128_2(v20, v21);
  }

  v29 = OUTLINED_FUNCTION_72_6(v20, v21, v22, v23, v24, v25, v26, v27, v168, v174);
  v30 = (v1)(v29);
  v38 = OUTLINED_FUNCTION_76_1(v30, v31, v32, v33, v34, v35, v36, v37, v169, v175, v180, v181, v182, v183);
  v2(v38);
  return a1;
}

uint64_t sub_1E3770E50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = result;
    v7 = 0;
    v8 = *(a3 + 16);
    v9 = a3 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (v8 != v7)
    {
      if (v7 >= v8)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_18;
      }

      v12 = *(v9 + 8 * v7);
      v13 = *(v12 + 16);
      ++v7;
      if (v13)
      {
        v41 = v6;
        v14 = v12 + 16 * v13;
        v16 = *(v14 + 16);
        v15 = *(v14 + 24);

        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = a2;
        if ((result & 1) == 0)
        {
          v21 = OUTLINED_FUNCTION_73_0();
          result = sub_1E3740F88(v21, v22, v23, v10);
          v10 = result;
        }

        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          v24 = OUTLINED_FUNCTION_35(v18);
          result = sub_1E3740F88(v24, v19 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v15;
        v7 = v11;
        a2 = v17;
        v6 = v41;
      }
    }

    v43[9] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    sub_1E32752B0(&qword_1EE23B510, &qword_1ECF2C420);
    v25 = sub_1E4205DF4();
    v27 = v26;

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v28 = *(a4 + 144);

    v29 = OUTLINED_FUNCTION_74();
    v31 = sub_1E376EDA8(v29, v30, v28);

    if (v31)
    {
      v44 = v31;

      v32 = sub_1E3277398(v43, v25, v27);

      v33 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      sub_1E376FB0C(inited, v33);
      OUTLINED_FUNCTION_11_3();
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *(a4 + 144);
      OUTLINED_FUNCTION_91();
      sub_1E377DDD8(v35, v36, v37);
      *(a4 + 144) = v42;
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1E4297BE0;
      *(v38 + 32) = v25;
      *(v38 + 40) = v27;
      sub_1E32772D8(v38);
      OUTLINED_FUNCTION_11_3();
      swift_isUniquelyReferenced_nonNull_native();
      v44 = *(a4 + 144);
      v39 = OUTLINED_FUNCTION_53();
      sub_1E377DDD8(v39, v40, a2);
      *(a4 + 144) = v44;
      swift_endAccess();
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v32;
}

void sub_1E377114C()
{
  v1 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__timer;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__timer))
  {
    v2 = v0;
    sub_1E376F130();
    sub_1E4206F04();
    sub_1E3780CD4(&qword_1EE23AE48, 255, MEMORY[0x1E6969F70]);
    sub_1E4200584();

    v3 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v3);
    OUTLINED_FUNCTION_82();
    sub_1E32752B0(v4, v5);
    v6 = sub_1E4200844();

    *(v2 + v1) = v6;
  }
}

uint64_t sub_1E3771294(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_103();
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = _MergedGlobals_146;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  v10 = qword_1EE2AAB28;
  OUTLINED_FUNCTION_0_20();
  v13 = sub_1E3780CD4(v11, 255, v12);
  OUTLINED_FUNCTION_5_10();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v13;
  v14[4] = a1;

  v15 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v15, v16, v1, v17, v14);
}

uint64_t sub_1E37713C0()
{
  OUTLINED_FUNCTION_24();
  if (_MergedGlobals_146 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3771EA8();
}

void sub_1E3771470()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294C8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v12 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__demandCanceller;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__demandCanceller))
  {
    v17 = *(v0 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager__demand);
    v18 = v9;
    v20 = v17;

    sub_1E4207064();
    v13 = [objc_opt_self() mainRunLoop];
    v19 = v13;
    v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF293F0);
    v16[0] = sub_1E3280A90(0, &qword_1EE23AD08);
    sub_1E32752B0(&qword_1EE28A120, &qword_1ECF293F0);
    sub_1E3782CC4();
    sub_1E4200804();

    (*(v3 + 8))(v7, v1);

    sub_1E32752B0(&unk_1EE28A2B0, &qword_1ECF294C8);
    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_116();
    sub_1E4200844();
    OUTLINED_FUNCTION_50();

    v14 = OUTLINED_FUNCTION_74();
    v15(v14);
    *(v0 + v12) = v11;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3771718(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = *a1;
  v8 = a1[1];
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);

  sub_1E3782D34(v7);
  if (_MergedGlobals_146 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  v13 = qword_1EE2AAB28;
  OUTLINED_FUNCTION_0_20();
  v16 = sub_1E3780CD4(v14, 255, v15);
  OUTLINED_FUNCTION_89();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v16;
  v17[4] = a2;
  v17[5] = v7;
  v17[6] = v8;

  v18 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v18, v19, v2, v20, v17);
}

uint64_t sub_1E3771864()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  if (_MergedGlobals_146 != -1)
  {
    OUTLINED_FUNCTION_2_23();
  }

  v4 = qword_1EE2AAB28;

  return MEMORY[0x1EEE6DFA0](sub_1E37718EC, v4, 0);
}

uint64_t sub_1E37718EC()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E3782D34(v0[3]);
  v1 = sub_1E41FFC94();
  v2 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_104(v2))
  {
    v3 = v0[3];
    v4 = OUTLINED_FUNCTION_6_21();
    *v4 = 134217984;
    v5 = v0[3];
    if (v3)
    {
      v6 = *(v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    v7 = v0[4];
    *(v4 + 4) = v6;
    OUTLINED_FUNCTION_62_4(v5, v7);
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    OUTLINED_FUNCTION_51_2();
  }

  else
  {
    OUTLINED_FUNCTION_62_4(v0[3], v0[4]);
  }

  v13 = v0[3];

  if (v13)
  {
    v14 = v0[2];

    return MEMORY[0x1EEE6DFA0](sub_1E3771A20, v14, 0);
  }

  else
  {
    OUTLINED_FUNCTION_54();

    return v15();
  }
}

uint64_t sub_1E3771A20()
{
  OUTLINED_FUNCTION_24();
  sub_1E377329C();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3771A7C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v0 + 128);

  sub_1E32772D8(MEMORY[0x1E69E7CC0]);
  v3 = OUTLINED_FUNCTION_112();
  v4 = sub_1E32772D8(v3);
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v48 = v2;

  v11 = 0;
  v46 = v9;
  v47 = v2 + 64;
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_9:
  while (2)
  {
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v8)));
    v14 = (*(v48 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v48 + 56) + v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = v15;
    *(inited + 40) = v16;

    swift_bridgeObjectRetain_n();

    v50 = sub_1E376FB0C(inited, v1);
    v51 = v4;
    if ((v17 & 0xC000000000000001) != 0)
    {

      sub_1E4207344();
      type metadata accessor for AnyScoreboardUpdateable();
      OUTLINED_FUNCTION_3_22();
      sub_1E3780CD4(&qword_1EE25E368, v19, v20);
      OUTLINED_FUNCTION_32_0();
      result = sub_1E4206664();
      v21 = v56;
      v53 = v55;
      v22 = v57;
      v23 = v58;
      v24 = v59;
    }

    else
    {
      v25 = v17;
      v21 = v17 + 56;
      v22 = ~(-1 << *(v17 + 32));
      OUTLINED_FUNCTION_61_3();
      v24 = v26 & v27;

      v23 = 0;
      v53 = v25;
    }

    v49 = (v8 - 1) & v8;
    v28 = (v22 + 64) >> 6;
    v52 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v29 = v23;
    while (v53 < 0)
    {
      if (!sub_1E42073C4())
      {
        goto LABEL_29;
      }

      type metadata accessor for AnyScoreboardUpdateable();
      OUTLINED_FUNCTION_165_0();
      v35 = v54;
      v23 = v29;
      v33 = v24;
      if (!v54)
      {
        goto LABEL_29;
      }

LABEL_23:
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v37 = *(v35 + 48);
      v36 = *(v35 + 56);

      v29 = v23;
      v24 = v33;
      if (v36)
      {
        v38 = v52;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v42 = OUTLINED_FUNCTION_73_0();
          result = sub_1E3740F88(v42, v43, v44, v52);
          v38 = result;
        }

        v40 = *(v38 + 16);
        v39 = *(v38 + 24);
        if (v40 >= v39 >> 1)
        {
          v45 = OUTLINED_FUNCTION_35(v39);
          result = sub_1E3740F88(v45, v40 + 1, 1, v38);
          v38 = result;
        }

        *(v38 + 16) = v40 + 1;
        v52 = v38;
        v41 = v38 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v36;
        v24 = v33;
        goto LABEL_13;
      }
    }

    v30 = v29;
    v23 = v29;
    if (!v24)
    {
      while (1)
      {
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v23 >= v28)
        {
          goto LABEL_29;
        }

        ++v30;
        if (*(v21 + 8 * v23))
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_19:
    OUTLINED_FUNCTION_40_7();
    v33 = v32 & v31;
    v35 = *(*(v53 + 48) + ((v23 << 9) | (8 * v34)));

    if (v35)
    {
      goto LABEL_23;
    }

LABEL_29:
    sub_1E34AF4DC();
    v4 = sub_1E376FB0C(v52, v51);

    v1 = v50;
    v9 = v46;
    v5 = v47;
    v8 = v49;
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_5:
  while (2)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_33:
      __break(1u);
    }

    else
    {
      if (v12 < v9)
      {
        v8 = *(v5 + 8 * v12);
        ++v11;
        if (!v8)
        {
          continue;
        }

        v11 = v12;
        goto LABEL_9;
      }

      return OUTLINED_FUNCTION_75();
    }

    return result;
  }
}

uint64_t sub_1E3771EA8()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 57) = v2;
  *(v1 + 56) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v5);
  *(v1 + 32) = OUTLINED_FUNCTION_86_0();
  v6 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3771F34()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_fetchTask;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_fetchTask);
  *(v0 + 40) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    v4[1] = sub_1E3772100;
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA40](v4, v3, v5);
  }

  else
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 57);
    v8 = *(v0 + 56);
    v9 = *(v0 + 16);
    sub_1E4206474();
    v10 = OUTLINED_FUNCTION_28_10();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_0_20();
    v16 = sub_1E3780CD4(v14, 255, v15);
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v16;
    *(v17 + 32) = v1;
    *(v17 + 40) = v9;
    *(v17 + 48) = v8 & 1;
    *(v17 + 49) = v7;
    swift_retain_n();
    v18 = OUTLINED_FUNCTION_23_7();
    *(v1 + v2) = sub_1E376FE58(v18, v19, v6, v20, v17);

    OUTLINED_FUNCTION_54();

    return v21();
  }
}

uint64_t sub_1E3772100()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E37721F8()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3772258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v7 + 57) = a7;
  *(v7 + 56) = a6;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a1;
  return OUTLINED_FUNCTION_13_1(sub_1E3772280, a4);
}

uint64_t sub_1E3772280()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 57);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29490);
  OUTLINED_FUNCTION_0_20();
  sub_1E3780CD4(v5, 255, v6);
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v2 & 1;
  *(v7 + 33) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 48) = v8;
  *v8 = v9;
  v8[1] = sub_1E37723CC;
  OUTLINED_FUNCTION_159_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1E37723CC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_116();

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1E37724E4()
{
  OUTLINED_FUNCTION_24();
  *(*(v0 + 24) + OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_fetchTask) = 0;

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E377254C()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 26) = v1;
  *(v0 + 25) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 32) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29498);
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_8_0(v6);
  *(v0 + 64) = v7;
  *(v0 + 72) = OUTLINED_FUNCTION_86_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v8);
  *(v0 + 80) = OUTLINED_FUNCTION_86_0();
  v9 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3772638()
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v1 = *(v0 + 80);
  v2 = *(v0 + 26);
  v3 = *(v0 + 25);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v4;
  *(v10 + 40) = v5;
  v3 &= 1u;
  *(v10 + 48) = v3;
  *(v10 + 49) = v2;

  sub_1E3772D7C(v1, &unk_1E429B0B0, v10);
  sub_1E325F7A8(v1, &unk_1ECF2C400);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v4;
  *(v14 + 40) = v5;
  *(v14 + 48) = v3;

  sub_1E3772D7C(v1, &unk_1E429B0C0, v14);
  sub_1E325F7A8(v1, &unk_1ECF2C400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29490);
  sub_1E42063E4();
  OUTLINED_FUNCTION_0_20();
  *(v0 + 88) = sub_1E3780CD4(v15, 255, v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 96) = v17;
  *v17 = v18;
  OUTLINED_FUNCTION_45_5(v17);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE6D8A8](v19);
}

uint64_t sub_1E3772824()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E377291C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 == 254)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    OUTLINED_FUNCTION_54();

    return v3();
  }

  else
  {
    if (v2 != 255)
    {
      sub_1E37828D4(*(v0 + 16), *(v0 + 24));
      if (v2)
      {
        sub_1E377881C();
      }

      else
      {
        sub_1E3779330();
      }

      sub_1E37828E8(v1, v2);
      sub_1E37828E8(v1, v2);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 96) = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_45_5();
    v7 = OUTLINED_FUNCTION_17_15();

    return MEMORY[0x1EEE6D8A8](v7);
  }
}

uint64_t sub_1E3772A5C()
{
  OUTLINED_FUNCTION_27_2();
  v0[6] = v1;
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E3772B10;

  return sub_1E3775274();
}

uint64_t sub_1E3772B10()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3772C20()
{
  v1 = *(v0 + 48);
  *v1 = *(v0 + 80);
  *(v1 + 8) = 0;
  return OUTLINED_FUNCTION_49_7();
}

void sub_1E3772C34()
{
  OUTLINED_FUNCTION_80();
  v18 = v0;
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v17 = v7;
    OUTLINED_FUNCTION_162_0(4.8149e-34);
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v17);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_160_0(&dword_1E323F000, v11, v12, "fetching scorecards failed with error %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v13 = *(v0 + 72);
  }

  v14 = *(v0 + 48);
  *v14 = 0;
  *(v14 + 8) = -1;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_159_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1E3772D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1E378249C();
  v10 = sub_1E4206474();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1E325F7A8(v9, &unk_1ECF2C400);
  }

  else
  {
    sub_1E4206464();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_1E42063B4();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29490);
  v16 = (v13 | v11);
  if (v13 | v11)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v11;
    v19[3] = v13;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v14;
  swift_task_create();
}

uint64_t sub_1E3772F80()
{
  OUTLINED_FUNCTION_27_2();
  v0[6] = v1;
  v0[7] = v2;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1E377302C;

  return sub_1E37767B4();
}

uint64_t sub_1E377302C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E377313C()
{
  v1 = *(v0 + 48);
  *v1 = *(v0 + 80);
  *(v1 + 8) = 1;
  return OUTLINED_FUNCTION_49_7();
}

void sub_1E3773154()
{
  OUTLINED_FUNCTION_80();
  v18 = v0;
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v17 = v7;
    OUTLINED_FUNCTION_162_0(4.8149e-34);
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v17);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_160_0(&dword_1E323F000, v11, v12, "fetching canonical failed with error %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v13 = *(v0 + 72);
  }

  v14 = *(v0 + 48);
  *v14 = 0;
  *(v14 + 8) = -1;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_159_0();

  __asm { BRAA            X1, X16 }
}

void sub_1E377329C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v1;
  OUTLINED_FUNCTION_156();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v61 - v6;
  OUTLINED_FUNCTION_138();
  v7 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  if (*(v0 + 16) && *(v2 + 16))
  {
    v62 = v0;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E378249C();
    if (__swift_getEnumTagSinglePayload(v20, 1, v7) == 1)
    {
      sub_1E325F7A8(v20, &qword_1ECF29408);
      v24 = sub_1E41FFC94();
      v25 = sub_1E42067D4();
      if (OUTLINED_FUNCTION_104(v25))
      {
        v26 = OUTLINED_FUNCTION_125_0();
        *v26 = 0;
        _os_log_impl(&dword_1E323F000, v24, v25, "creating sportskit stream", v26, 2u);
        OUTLINED_FUNCTION_55();
      }

      sub_1E4206474();
      v27 = v63;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      OUTLINED_FUNCTION_0_20();
      v34 = sub_1E3780CD4(v32, 255, v33);
      OUTLINED_FUNCTION_89();
      v35 = swift_allocObject();
      v35[2] = v3;
      v35[3] = v34;
      v36 = v62;
      v35[4] = v2;
      v35[5] = v36;
      v35[6] = v3;
      swift_retain_n();

      v37 = OUTLINED_FUNCTION_23_7();
      *(v3 + 152) = sub_1E37748D8(v37, v38, v27, v39, v35);
    }

    else
    {
      v61 = *(v9 + 32);
      v61(v15, v20, v7);
      v47 = sub_1E41FFC94();
      v48 = sub_1E42067D4();
      if (OUTLINED_FUNCTION_104(v48))
      {
        v49 = OUTLINED_FUNCTION_125_0();
        *v49 = 0;
        _os_log_impl(&dword_1E323F000, v47, v48, "updating sportskit stream with new demand", v49, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      sub_1E4206474();
      v50 = v63;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
      (*(v9 + 16))(&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v7);
      v55 = swift_allocObject();
      v55[2] = 0;
      v55[3] = 0;
      v56 = v62;
      v55[4] = v2;
      v55[5] = v56;
      OUTLINED_FUNCTION_143_0();
      v57();

      v58 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v58, v59, v50, v60, v55);

      (*(v9 + 8))(v15, v7);
    }
  }

  else
  {
    if (*(v3 + 152))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
      sub_1E42064D4();
    }

    *(v3 + 152) = 0;

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v7);
    v43 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_identifier;
    OUTLINED_FUNCTION_11_3();
    sub_1E37813BC(v23, v3 + v43);
    swift_endAccess();
    v44 = sub_1E41FFC94();
    v45 = sub_1E42067D4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_125_0();
      *v46 = 0;
      _os_log_impl(&dword_1E323F000, v44, v45, "demand no longer exists, cancelling sportskit stream", v46, 2u);
      OUTLINED_FUNCTION_51_2();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37737EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return OUTLINED_FUNCTION_13_1(sub_1E377380C, 0);
}

uint64_t sub_1E377380C()
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v2 = v0[2];
  v1 = v0[3];
  sub_1E4204DB4();
  v0[5] = sub_1E4204D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29478);
  v3 = sub_1E4204D84();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  v7 = *(v6 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[6] = v9;
  *(v9 + 16) = xmmword_1E4299720;
  v10 = (v9 + v8);
  *v10 = v2;
  v11 = *(v5 + 104);
  v11(v9 + v8, *MEMORY[0x1E69D39B0], v3);
  *(v10 + v7) = v1;
  v11(v10 + v7, *MEMORY[0x1E69D39B8], v3);
  sub_1E3780CD4(&qword_1EE23B690, 255, MEMORY[0x1E69D39C8]);

  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1E37739BC()
{
  OUTLINED_FUNCTION_24();
  sub_1E4204DA4();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3773A2C()
{
  OUTLINED_FUNCTION_24();
  v0[7] = v1;
  v0[8] = v2;
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29480);
  v0[9] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[10] = v5;
  v0[11] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v6);
  v0[12] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FE624();
  v0[13] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_127();
  v0[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29488);
  v0[17] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[18] = v10;
  v0[19] = OUTLINED_FUNCTION_127();
  v0[20] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3773BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v14 = v12[6];
  v13 = v12[7];
  sub_1E4204DB4();
  v12[21] = sub_1E4204D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29478);
  v15 = sub_1E4204D84();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  v19 = *(v18 + 72);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v12[22] = v21;
  *(v21 + 16) = xmmword_1E4299720;
  v22 = (v21 + v20);
  *v22 = v14;
  v23 = *(v17 + 104);
  v23(v22, *MEMORY[0x1E69D39B0], v15);
  *(v22 + v19) = v13;
  v23((v22 + v19), *MEMORY[0x1E69D39B8], v15);
  v35 = *MEMORY[0x1E69D39C0] + MEMORY[0x1E69D39C0];

  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v12[23] = v24;
  *v24 = v25;
  v24[1] = sub_1E3773D88;
  OUTLINED_FUNCTION_68_2();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_1E3773D88()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    v7 = *(v3 + 64);
    v8 = sub_1E377438C;
  }

  else
  {
    v9 = *(v3 + 64);

    v8 = sub_1E3773EA4;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E3773EA4()
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[8];
  (*(v0[18] + 32))(v0[20], v0[19], v0[17]);
  (*(v4 + 32))(v1, v2, v3);
  (*(v4 + 16))(v5, v1, v3);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  v10 = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_identifier;
  OUTLINED_FUNCTION_11_3();
  sub_1E37813BC(v5, v6 + v10);
  swift_endAccess();
  sub_1E42064A4();
  OUTLINED_FUNCTION_0_20();
  v13 = sub_1E3780CD4(v11, 255, v12);
  v14 = v0[24];
  v0[25] = v13;
  v0[26] = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[27] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_43_6(v15);
  OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE6D9C8](v17);
}

uint64_t sub_1E377400C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3774104()
{
  v1 = v0[5];
  if (!v1)
  {
    v9 = v0[20];
    v10 = v0[17];
    v11 = v0[18];
    v12 = v0[16];
    v13 = v0[13];
    v14 = v0[14];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v14 + 8))(v12, v13);
    (*(v11 + 8))(v9, v10);
    goto LABEL_5;
  }

  v2 = v0[26];
  sub_1E4206514();
  if (v2)
  {
    v3 = v0[18];
    v23 = v0[17];
    v24 = v0[20];
    v4 = v0[10];
    v5 = v0[11];
    v6 = v0[9];

    (*(v4 + 8))(v5, v6);
    v7 = OUTLINED_FUNCTION_146();
    v8(v7);
    (*(v3 + 8))(v24, v23);
    sub_1E4206504();

LABEL_5:

    OUTLINED_FUNCTION_54();

    return v15();
  }

  v17 = sub_1E32AE9B0(v1);
  v18 = v17;
  for (i = 0; v18 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v17 = *(v1 + 8 * i + 32);
    }

    v20 = v17;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return MEMORY[0x1EEE6D9C8](v17);
    }

    sub_1E3774B68();
  }

  v0[26] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[27] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_43_6();
  v17 = OUTLINED_FUNCTION_17_15();

  return MEMORY[0x1EEE6D9C8](v17);
}

uint64_t sub_1E377438C()
{
  OUTLINED_FUNCTION_134();

  v1 = *(v0 + 192);
  sub_1E4206504();

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3774448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v37 - v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    type metadata accessor for AnyScoreboardUpdateable();
    sub_1E3780CD4(&qword_1EE25E368, v8, type metadata accessor for AnyScoreboardUpdateable);
    result = sub_1E4206664();
    a1 = v51;
    v10 = v52;
    v11 = v53;
    v12 = v54;
    v13 = v55;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v10 = a1 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 56);

    v12 = 0;
  }

  v37[1] = v11;
  v17 = (v11 + 64) >> 6;
  v38 = v10;
  v39 = a1;
  v40 = v17;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    v22 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v22)
    {
LABEL_26:
      sub_1E34AF4DC();
    }

    while (1)
    {
      v44 = v21;
      v24 = sub_1E4206474();
      __swift_storeEnumTagSinglePayload(v45, 1, 1, v24);
      v25 = *v42;
      sub_1E4206434();

      v26 = v43;

      v27 = sub_1E4206424();
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = MEMORY[0x1E69E85E0];
      v28[4] = v26;
      v28[5] = v22;
      v28[6] = v25;
      v29 = v41;
      sub_1E378249C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v24);

      if (EnumTagSinglePayload == 1)
      {
        sub_1E325F7A8(v29, &unk_1ECF2C400);
      }

      else
      {
        sub_1E4206464();
        (*(*(v24 - 8) + 8))(v29, v24);
      }

      v31 = v28[2];
      swift_unknownObjectRetain();

      v17 = v40;
      if (v31)
      {
        swift_getObjectType();
        v32 = sub_1E42063B4();
        v34 = v33;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v35 = v44;
      v36 = swift_allocObject();
      *(v36 + 16) = &unk_1E429B120;
      *(v36 + 24) = v28;
      if (v34 | v32)
      {
        v47 = 0;
        v48 = 0;
        v49 = v32;
        v50 = v34;
      }

      v10 = v38;
      a1 = v39;
      swift_task_create();

      sub_1E325F7A8(v45, &unk_1ECF2C400);

      v12 = v20;
      v13 = v35;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v23 = sub_1E42073C4();
      if (v23)
      {
        v46 = v23;
        type metadata accessor for AnyScoreboardUpdateable();
        swift_dynamicCast();
        v22 = v56;
        v20 = v12;
        v21 = v13;
        if (v56)
        {
          continue;
        }
      }

      goto LABEL_26;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_26;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E37748D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1E378249C();
  v11 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F7A8(v10, &unk_1ECF2C400);
  }

  else
  {
    sub_1E4206464();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1E42063B4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1E4205FB4() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1E325F7A8(a3, &unk_1ECF2C400);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325F7A8(a3, &unk_1ECF2C400);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1E3774B68()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FE5D4();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v39 = v6;
  v9 = sub_1E4205014();
  v11 = v10;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v12 = *(v2 + 128);

  v13 = sub_1E376EDF8(v9, v11, v12);
  v15 = v14;

  if (v13)
  {
    v38 = v1;

    OUTLINED_FUNCTION_1_54();
    sub_1E3782E00(v16, v15, v17);
    v37 = v4;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1E4207344();
      type metadata accessor for AnyScoreboardUpdateable();
      OUTLINED_FUNCTION_3_22();
      sub_1E3780CD4(v18, v19, v20);
      sub_1E4206664();
      v22 = v41;
      v21 = v42;
      v23 = v43;
      v24 = v44;
      v25 = v45;
    }

    else
    {
      v21 = v13 + 56;
      v23 = ~(-1 << *(v13 + 32));
      OUTLINED_FUNCTION_8_20();
      v25 = v26 & v27;

      v24 = 0;
      v22 = v13;
    }

    v28 = (v23 + 64) >> 6;
    if (v22 < 0)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v29 = v24;
      v30 = v24;
      if (!v25)
      {
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_40_7();
      v33 = v32 & v31;
      v35 = *(*(v22 + 48) + ((v30 << 9) | (8 * v34)));

      if (!v35)
      {
LABEL_16:
        sub_1E34AF4DC();

        v1 = v38;
        v4 = v37;
        goto LABEL_17;
      }

      while (1)
      {
        v40 = v35;
        sub_1E3774E74();

        v24 = v30;
        v25 = v33;
        if ((v22 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_12:
        if (sub_1E42073C4())
        {
          type metadata accessor for AnyScoreboardUpdateable();
          OUTLINED_FUNCTION_165_0();
          v35 = v40;
          v30 = v24;
          v33 = v25;
          if (v40)
          {
            continue;
          }
        }

        goto LABEL_16;
      }
    }

    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v28)
      {
        goto LABEL_16;
      }

      ++v29;
      if (*(v21 + 8 * v30))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    if (v4)
    {
      sub_1E41FE594();
      type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
      v36 = OUTLINED_FUNCTION_119();
      v39;
      sub_1E376EEB0(v39, 0, v1);

      sub_1E4205014();
      sub_1E377073C(v36);
    }

    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3774E74()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v47 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v46 = v10 - v9;
  OUTLINED_FUNCTION_138();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v44 = v12;
  v45 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v5;

  v17 = v1;
  v18 = sub_1E41FFC94();
  v19 = sub_1E42067D4();

  if (os_log_type_enabled(v18, v19))
  {
    v43 = v6;
    v20 = OUTLINED_FUNCTION_100();
    v48[0] = OUTLINED_FUNCTION_164_1();
    *v20 = 136315650;
    v22 = v16[9];
    v21 = v16[10];

    v23 = sub_1E3270FC8(v22, v21, v48);

    *(v20 + 4) = v23;
    v42 = v3;
    *(v20 + 12) = 2080;
    v24 = v16[4];
    v25 = v16[5];

    v26 = sub_1E3270FC8(v24, v25, v48);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v27 = [v17 debugDescription];
    v28 = sub_1E4205F14();
    v30 = v29;

    v31 = sub_1E3270FC8(v28, v30, v48);
    v3 = v42;

    *(v20 + 24) = v31;
    _os_log_impl(&dword_1E323F000, v18, v19, "updating %s for event: %s with sportskit scores: %s", v20, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v6 = v43;
    OUTLINED_FUNCTION_6_0();
  }

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v32 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v33 = swift_allocObject();
  v33[2] = v16;
  v33[3] = v17;
  v33[4] = v3;
  v48[4] = sub_1E37829A0;
  v48[5] = v33;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v48[2] = v34;
  v48[3] = &block_descriptor_127;
  v35 = _Block_copy(v48);

  v36 = v17;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_52_5();
  sub_1E3780CD4(v37, 255, v38);
  v39 = OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v39);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v40, v41);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v15, v46, v35);
  _Block_release(v35);

  (*(v47 + 8))(v46, v6);
  (*(v44 + 8))(v15, v45);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3775274()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 425) = v2;
  *(v1 + 424) = v3;
  *(v1 + 280) = v4;
  *(v1 + 288) = v0;
  v5 = sub_1E41FE5D4();
  *(v1 + 296) = v5;
  OUTLINED_FUNCTION_8_0(v5);
  *(v1 + 304) = v6;
  *(v1 + 312) = OUTLINED_FUNCTION_86_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v7);
  *(v1 + 320) = OUTLINED_FUNCTION_86_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29458);
  *(v1 + 328) = v8;
  OUTLINED_FUNCTION_8_0(v8);
  *(v1 + 336) = v9;
  *(v1 + 344) = OUTLINED_FUNCTION_127();
  *(v1 + 352) = swift_task_alloc();
  *(v1 + 360) = swift_task_alloc();
  *(v1 + 368) = swift_task_alloc();
  *(v1 + 376) = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E37753D4()
{
  v1 = *(v0 + 288);
  OUTLINED_FUNCTION_25();
  v2 = swift_beginAccess();
  v10 = *(v1 + 128);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    goto LABEL_44;
  }

  v120 = *(v0 + 328);
  v13 = *(v0 + 304);
  v133 = MEMORY[0x1E69E7CC0];

  sub_1E377FD50();
  v12 = v133;
  v2 = sub_1E37817B4();
  v123 = v10 + 64;
  v119 = (v13 + 16);
  v14 = 0;
  v121 = v11;
  v122 = v10;
  do
  {
    if (v2 < 0 || v2 >= 1 << *(v10 + 32))
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      return MEMORY[0x1EEE6DE38](v2, v3, v4, v5, v6, v7, v8, v9);
    }

    if (((*(v123 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
    {
      goto LABEL_84;
    }

    if (*(v10 + 36) != v3)
    {
      goto LABEL_85;
    }

    v15 = *(*(v10 + 48) + 16 * v2 + 8);
    v16 = (*(v10 + 56) + 16 * v2);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v0 + 320);
    v20 = *(v0 + 296);
    if (v17)
    {
      (*v119)(*(v0 + 320), v17 + OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_lastUpdatedAt, *(v0 + 296));
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      v24 = OUTLINED_FUNCTION_39_3();
      v25(v24);

      v26 = v15;
    }

    else
    {
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v20);

      sub_1E41FE4D4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
      v26 = v15;
      if (EnumTagSinglePayload != 1)
      {
        sub_1E325F7A8(*(v0 + 320), &unk_1ECF28E20);
      }
    }

    v125 = v12;
    v130 = v26;
    if ((v18 & 0xC000000000000001) != 0)
    {

      sub_1E4207344();
      type metadata accessor for AnyScoreboardUpdateable();
      OUTLINED_FUNCTION_3_22();
      sub_1E3780CD4(&qword_1EE25E368, v31, v32);
      OUTLINED_FUNCTION_57();
      sub_1E4206664();
      v33 = *(v0 + 16);
      v34 = *(v0 + 24);
      v35 = *(v0 + 32);
      v36 = *(v0 + 40);
      v37 = *(v0 + 48);
    }

    else
    {
      v38 = -1 << *(v18 + 32);
      v33 = v18;
      v34 = v18 + 56;
      v39 = ~v38;
      OUTLINED_FUNCTION_61_3();
      v37 = v40 & v41;

      v35 = v39;
      v36 = 0;
    }

    v124 = v14 + 1;
    v42 = (v35 + 64) >> 6;
    v128 = v33;
    if (v33 < 0)
    {
LABEL_21:
      v50 = sub_1E42073C4();
      if (!v50)
      {
        goto LABEL_38;
      }

      *(v0 + 272) = v50;
      type metadata accessor for AnyScoreboardUpdateable();
      OUTLINED_FUNCTION_165_0();
      v49 = *(v0 + 264);
      v44 = v36;
      v47 = v37;
      if (!v49)
      {
        goto LABEL_38;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v43 = v36;
      v44 = v36;
      if (!v37)
      {
        do
        {
          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
LABEL_81:

LABEL_75:
            v109 = sub_1E41FFC94();
            v110 = sub_1E42067F4();
            if (OUTLINED_FUNCTION_104(v110))
            {
              *OUTLINED_FUNCTION_125_0() = 0;
              OUTLINED_FUNCTION_41_2();
              _os_log_impl(v111, v112, v113, v114, v115, 2u);
              OUTLINED_FUNCTION_51_2();
            }

            v116 = *(v0 + 8);
            v117 = MEMORY[0x1E69E7CC0];

            return v116(v117);
          }

          if (v44 >= v42)
          {
            goto LABEL_38;
          }

          ++v43;
        }

        while (!*(v34 + 8 * v44));
      }

      OUTLINED_FUNCTION_40_7();
      v47 = v46 & v45;
      v49 = *(*(v33 + 48) + ((v44 << 9) | (8 * v48)));

      if (!v49)
      {
        break;
      }

LABEL_23:
      v51 = sub_1E376D430();
      *(v0 + 224) = sub_1E4205F14();
      *(v0 + 232) = v52;
      sub_1E4207414();
      if (*(v51 + 16) && (v53 = sub_1E375D924(v0 + 56), (v54 & 1) != 0))
      {
        sub_1E328438C(*(v51 + 56) + 32 * v53, v0 + 136);
      }

      else
      {
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
      }

      sub_1E375D84C(v0 + 56);
      v55 = *(v0 + 160);
      sub_1E325F7A8(v0 + 136, &unk_1ECF296E0);
      if (v55)
      {
        *(v0 + 240) = sub_1E4205F14();
        *(v0 + 248) = v56;
        sub_1E4207414();
        if (*(v51 + 16) && (v57 = sub_1E375D924(v0 + 96), (v58 & 1) != 0))
        {
          sub_1E328438C(*(v51 + 56) + 32 * v57, v0 + 168);
        }

        else
        {
          *(v0 + 184) = 0u;
          *(v0 + 168) = 0u;
        }

        v26 = v130;

        sub_1E375D84C(v0 + 96);
        v59 = *(v0 + 192);
        sub_1E325F7A8(v0 + 168, &unk_1ECF296E0);
        if (v59 && (*(v49 + 64) & 1) == 0)
        {
          OUTLINED_FUNCTION_161_0();
          v70 = v49;
          sub_1E376D430();
          OUTLINED_FUNCTION_38();

          goto LABEL_39;
        }
      }

      else
      {

        v26 = v130;
      }

      v36 = v44;
      v37 = v47;
      v33 = v128;
      if (v128 < 0)
      {
        goto LABEL_21;
      }
    }

LABEL_38:
    OUTLINED_FUNCTION_161_0();

    v70 = 0;
LABEL_39:
    *(*(v0 + 376) + *(v120 + 48)) = v70;
    v12 = v125;
    v61 = *(v125 + 16);
    v60 = *(v125 + 24);
    v10 = v122;
    if (v61 >= v60 >> 1)
    {
      OUTLINED_FUNCTION_35(v60);
      sub_1E377FD50();
      v12 = v125;
    }

    *(v12 + 16) = v61 + 1;
    OUTLINED_FUNCTION_81();
    sub_1E3782004();
    v62 = OUTLINED_FUNCTION_154_1();
    sub_1E37817F4(v62, v63, v64, v122);
    OUTLINED_FUNCTION_145();
    v66 = v65;
    v67 = OUTLINED_FUNCTION_154_1();
    sub_1E3746E04(v67, v68, v69);
    v2 = OUTLINED_FUNCTION_57();
    v4 = v66;
    v14 = v124;
  }

  while (v124 != v121);

  v71 = OUTLINED_FUNCTION_57();
  v2 = sub_1E3746E04(v71, v72, v73);
LABEL_44:
  v74 = 0;
  v75 = *(v0 + 336);
  v76 = *(v0 + 280);
  v131 = *(v12 + 16);
  v77 = (*(v0 + 304) + 8);
  v127 = MEMORY[0x1E69E7CC0];
  v126 = v12;
  while (v131 != v74)
  {
    if (v74 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_83;
    }

    v78 = *(v0 + 425);
    sub_1E378249C();
    if (v78 == 1 && (TVAppFeature.isEnabled.getter(10) & 1) != 0 || (*(v0 + 424) & 1) == 0 && (v79 = *(v0 + 312), v80 = *(v0 + 296), sub_1E41FE594(), sub_1E41FE4F4(), v82 = v81, v83 = v79, v12 = v126, (*v77)(v83, v80), v82 < v76))
    {
      OUTLINED_FUNCTION_143_0();
      v2 = sub_1E325F7A8(v84, v85);
      ++v74;
    }

    else
    {
      sub_1E3782004();
      v86 = v127;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_98_1();
        OUTLINED_FUNCTION_73_0();
        sub_1E377FD50();
        v86 = v127;
      }

      OUTLINED_FUNCTION_107_3();
      if (v88)
      {
        OUTLINED_FUNCTION_35(v87);
        OUTLINED_FUNCTION_133_1();
        sub_1E377FD50();
        v86 = v127;
      }

      ++v74;
      *(v86 + 16) = v12;
      v127 = v86;
      v2 = sub_1E3782004();
      v12 = v126;
    }
  }

  v89 = *(v127 + 16);
  if (v89)
  {
    v132 = *(v0 + 328);
    OUTLINED_FUNCTION_81();
    v90 = MEMORY[0x1E69E7CC0];
    v93 = v91 + v92;
    v129 = *(v75 + 72);
    do
    {
      v94 = *(v0 + 360);
      v95 = *(v0 + 344);
      v96 = *(v0 + 296);
      sub_1E378249C();
      OUTLINED_FUNCTION_143_0();
      sub_1E3782004();
      v97 = *(v95 + *(v132 + 48));
      (*v77)(v95, v96);
      if (v97)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_21_23();
          sub_1E377D4A0();
          v90 = v99;
        }

        OUTLINED_FUNCTION_107_3();
        if (v88)
        {
          OUTLINED_FUNCTION_35(v98);
          OUTLINED_FUNCTION_133_1();
          sub_1E377D4A0();
          v90 = v100;
        }

        *(v90 + 16) = v94;
        *(v90 + 8 * v95 + 32) = v97;
      }

      v93 += v129;
      --v89;
    }

    while (v89);
  }

  else
  {

    v90 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 384) = v90;
  type metadata accessor for TVAppLauncher();
  v101 = [swift_getObjCClassFromMetadata() sharedInstance];
  v102 = [v101 appController];

  if (!v102 || (v26 = [v102 appContext], *(v0 + 392) = v26, v102, !v26))
  {

    goto LABEL_75;
  }

  if (!*(v90 + 16))
  {
    goto LABEL_81;
  }

  v103 = *(v0 + 288);
  OUTLINED_FUNCTION_0_20();
  v106 = sub_1E3780CD4(v104, 255, v105);
  v107 = swift_task_alloc();
  *(v0 + 400) = v107;
  v107[2] = v26;
  v107[3] = v90;
  v107[4] = v103;
  v108 = swift_task_alloc();
  *(v0 + 408) = v108;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29460);
  *v108 = v0;
  v108[1] = sub_1E3775F68;
  v7 = sub_1E378205C;
  v2 = v0 + 256;
  v6 = 0x80000001E425BA20;
  v3 = v103;
  v4 = v106;
  v5 = 0xD00000000000001FLL;
  v8 = v107;

  return MEMORY[0x1EEE6DE38](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E3775F68()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (v0)
  {
    v7 = *(v3 + 288);
    v8 = sub_1E3776144;
  }

  else
  {
    v9 = *(v3 + 288);

    v8 = sub_1E3776088;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_1E3776088()
{
  OUTLINED_FUNCTION_80();

  OUTLINED_FUNCTION_159_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1E3776144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

void sub_1E3776200()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29468);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_106_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  OUTLINED_FUNCTION_90();
  v14();
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v15, v13, v6);
  *(v17 + v16) = v3;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v19[4] = sub_1E3782068;
  v19[5] = v17;
  OUTLINED_FUNCTION_12_0();
  v19[1] = 1107296256;
  v19[2] = sub_1E377674C;
  v19[3] = &block_descriptor_85;
  v18 = _Block_copy(v19);

  [v5 evaluate_];
  _Block_release(v18);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37763B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29468);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v16 = [v7 objectForKeyedSubscript_];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  if (![v16 hasProperty_])
  {

LABEL_6:
    sub_1E3782114();
    v28 = swift_allocError();
    *v29 = 0;
    v33[1] = v28;
    sub_1E42063C4();
    goto LABEL_9;
  }

  (*(v10 + 16))(v15, v5, v8);
  v18 = *(v10 + 80);
  v33[0] = v1;
  v19 = (v18 + 16) & ~v18;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v19, v15, v8);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E4299720;
  *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F350);
  *(v21 + 32) = v3;
  v22 = sub_1E3280A90(0, &qword_1EE23AE50);
  v23 = v7;
  OUTLINED_FUNCTION_38();

  v24 = sub_1E3A242D8(v7, sub_1E3782168, v20);
  *(v21 + 88) = v22;
  *(v21 + 64) = v24;

  v25 = sub_1E41FFC94();
  v26 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_104(v26))
  {
    v27 = OUTLINED_FUNCTION_6_21();
    *v27 = 134217984;
    *(v27 + 4) = *(v3 + 16);

    _os_log_impl(&dword_1E323F000, v25, v26, "invoking clock-score poll API for %ld events", v27, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v30 = sub_1E4205F14();
  v32 = sub_1E3780E30(v30, v31, v21, v17);

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E37766C4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205C44();

  v2 = [v0 initWithDictionary_];

  return v2;
}

void sub_1E377674C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1E37767B4()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 200) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29410);
  OUTLINED_FUNCTION_17_2(v4);
  *(v1 + 64) = OUTLINED_FUNCTION_86_0();
  v5 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  *(v1 + 72) = v5;
  OUTLINED_FUNCTION_8_0(v5);
  *(v1 + 80) = v6;
  *(v1 + 88) = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FE5D4();
  *(v1 + 96) = v7;
  OUTLINED_FUNCTION_8_0(v7);
  *(v1 + 104) = v8;
  *(v1 + 112) = OUTLINED_FUNCTION_86_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29418);
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_8_0(v9);
  *(v1 + 128) = v10;
  *(v1 + 136) = OUTLINED_FUNCTION_127();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E377695C()
{
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_25();
  v2 = swift_beginAccess();
  v10 = *(v1 + 128);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v67 = MEMORY[0x1E69E7CC0];

    sub_1E377FD90();
    v12 = v67;
    v2 = sub_1E37817B4();
    v13 = v2;
    v14 = v3;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v10 + 32))
    {
      if (((*(v10 + 64 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_39;
      }

      if (*(v10 + 36) != v14)
      {
        goto LABEL_40;
      }

      sub_1E3777184();
      v15 = *(v67 + 16);
      if (v15 >= *(v67 + 24) >> 1)
      {
        sub_1E377FD90();
      }

      *(v67 + 16) = v15 + 1;
      OUTLINED_FUNCTION_81();
      sub_1E3782004();
      v16 = OUTLINED_FUNCTION_146();
      v2 = sub_1E37817F4(v16, v17, v18, v10);
      v13 = v2;
      v14 = v3;
      if (!--v11)
      {

        v19 = OUTLINED_FUNCTION_146();
        v2 = sub_1E3746E04(v19, v20, v21);
        goto LABEL_11;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
LABEL_11:
    v22 = 0;
    v23 = *(v0 + 128);
    v24 = *(v0 + 48);
    v65 = *(v12 + 16);
    v25 = (*(v0 + 104) + 8);
    v63 = MEMORY[0x1E69E7CC0];
    while (v65 != v22)
    {
      if (v22 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v26 = *(v0 + 200);
      sub_1E378249C();
      if ((v26 & 1) != 0 || (v27 = *(v0 + 112), v28 = *(v0 + 96), sub_1E41FE594(), sub_1E41FE4F4(), v30 = v29, (*v25)(v27, v28), v30 >= v24))
      {
        sub_1E3782004();
        v31 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_98_1();
          OUTLINED_FUNCTION_73_0();
          sub_1E377FD90();
          v31 = v63;
        }

        OUTLINED_FUNCTION_107_3();
        if (v33)
        {
          OUTLINED_FUNCTION_35(v32);
          OUTLINED_FUNCTION_133_1();
          sub_1E377FD90();
          v31 = v63;
        }

        ++v22;
        *(v31 + 16) = &qword_1ECF29418;
        v63 = v31;
        v2 = sub_1E3782004();
      }

      else
      {
        v2 = sub_1E325F7A8(*(v0 + 160), &qword_1ECF29418);
        ++v22;
      }
    }

    v34 = *(v63 + 16);
    if (v34)
    {
      OUTLINED_FUNCTION_81();
      v37 = v35 + v36;
      v38 = MEMORY[0x1E69E7CC0];
      v64 = *(v23 + 72);
      do
      {
        v39 = *(v0 + 136);
        v40 = *(v0 + 96);
        v42 = *(v0 + 64);
        v41 = *(v0 + 72);
        OUTLINED_FUNCTION_154_1();
        sub_1E378249C();
        sub_1E3782004();
        sub_1E3782004();
        (*v25)(v39, v40);
        if (__swift_getEnumTagSinglePayload(v42, 1, v41) == 1)
        {
          sub_1E325F7A8(*(v0 + 64), &qword_1ECF29410);
        }

        else
        {
          sub_1E3781918(*(v0 + 64), *(v0 + 88));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = OUTLINED_FUNCTION_21_23();
            v38 = sub_1E377D5C0(v48, v49, v50, v51);
          }

          v44 = *(v38 + 16);
          v43 = *(v38 + 24);
          if (v44 >= v43 >> 1)
          {
            v52 = OUTLINED_FUNCTION_35(v43);
            v38 = sub_1E377D5C0(v52, v44 + 1, 1, v38);
          }

          *(v38 + 16) = v44 + 1;
          OUTLINED_FUNCTION_81();
          sub_1E3781918(v47, v38 + v45 + *(v46 + 72) * v44);
        }

        v37 += v64;
        --v34;
      }

      while (v34);
    }

    else
    {

      v38 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 176) = v38;
    v53 = *(v0 + 56);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29420);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29428);
    OUTLINED_FUNCTION_0_20();
    v58 = sub_1E3780CD4(v56, 255, v57);
    v59 = swift_task_alloc();
    *(v0 + 184) = v59;
    *(v59 + 16) = v38;
    *(v59 + 24) = v53;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 192) = v60;
    *v60 = v61;
    v60[1] = sub_1E3776F78;
    v7 = &unk_1E429AFB8;
    v2 = v0 + 40;
    v3 = v54;
    v4 = v55;
    v5 = v53;
    v6 = v58;
    v8 = v59;
    v9 = v54;
  }

  return MEMORY[0x1EEE6DBF8](v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E3776F78()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E37770B8, v2, 0);
}

uint64_t sub_1E37770B8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1E3777184()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_103();
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (v5)
  {
    v7 = OBJC_IVAR____TtCC8VideosUI26SportsKitScoreboardManager10CacheValue_lastUpdatedAt;
    v8 = sub_1E41FE5D4();
    OUTLINED_FUNCTION_0_10();
    (*(v9 + 16))(v0, v5 + v7, v8);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
    v13 = OUTLINED_FUNCTION_135();
    v14(v13);
  }

  else
  {
    sub_1E41FE5D4();
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v2);
    sub_1E41FE4D4();
    if (__swift_getEnumTagSinglePayload(v0, 1, v2) != 1)
    {
      sub_1E325F7A8(v0, &unk_1ECF28E20);
    }
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    type metadata accessor for AnyScoreboardUpdateable();
    OUTLINED_FUNCTION_3_22();
    sub_1E3780CD4(v18, v19, v20);
    OUTLINED_FUNCTION_57();
    sub_1E4206664();
    v6 = v39;
    v21 = v40;
    v22 = v41;
    v23 = v42;
    v24 = v43;
  }

  else
  {
    v21 = v6 + 56;
    v22 = ~(-1 << *(v6 + 32));
    OUTLINED_FUNCTION_8_20();
    v24 = v25 & v26;

    v23 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v27 = v23;
  v28 = v23;
  if (v24)
  {
LABEL_13:
    OUTLINED_FUNCTION_40_7();
    v31 = v30 & v29;
    v33 = *(*(v6 + 48) + ((v28 << 9) | (8 * v32)));

    if (v33)
    {
      while ((*(v33 + 64) & 1) == 0)
      {

        v23 = v28;
        v24 = v31;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_15:
        if (sub_1E42073C4())
        {
          type metadata accessor for AnyScoreboardUpdateable();
          swift_dynamicCast();
          v33 = v38;
          v28 = v23;
          v31 = v24;
          if (v38)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_90();
      sub_1E34AF4DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29418);
      sub_1E376D554();
    }

    else
    {
LABEL_20:
      OUTLINED_FUNCTION_90();
      sub_1E34AF4DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29418);
      type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= ((v22 + 64) >> 6))
      {
        goto LABEL_20;
      }

      ++v27;
      if (*(v21 + 8 * v28))
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E37774DC()
{
  OUTLINED_FUNCTION_24();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29438);
  v0[15] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[16] = v6;
  v0[17] = OUTLINED_FUNCTION_86_0();
  v7 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext();
  OUTLINED_FUNCTION_8_0(v7);
  v0[18] = v8;
  v0[19] = *(v9 + 64);
  v0[20] = OUTLINED_FUNCTION_86_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v10);
  v0[21] = OUTLINED_FUNCTION_127();
  v0[22] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E377761C()
{
  v1 = *(v0 + 104);
  *(v0 + 72) = MEMORY[0x1E69E7CC0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v32 = **(v0 + 96);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v30 = *(v3 + 72);
    v31 = v4;
    v29 = (*(v0 + 152) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_1E4206474();
    do
    {
      v33 = v2;
      v7 = *(v0 + 168);
      v8 = *(v0 + 160);
      v9 = *(v0 + 112);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
      v13 = OUTLINED_FUNCTION_154_1();
      sub_1E3781B94(v13, v14);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      sub_1E3781918(v8, v15 + v31);
      *(v15 + v29) = v9;
      sub_1E378249C();
      LODWORD(v7) = __swift_getEnumTagSinglePayload(v7, 1, v6);

      if (v7 == 1)
      {
        sub_1E325F7A8(*(v0 + 168), &unk_1ECF2C400);
      }

      else
      {
        sub_1E4206464();
        v16 = OUTLINED_FUNCTION_57();
        v17(v16);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1E42063B4();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      v21 = swift_allocObject();
      *(v21 + 16) = &unk_1E429AFE0;
      *(v21 + 24) = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29420);
      v22 = v20 | v18;
      if (v20 | v18)
      {
        v22 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      v23 = *(v0 + 176);
      *(v0 + 48) = 1;
      *(v0 + 56) = v22;
      *(v0 + 64) = v32;
      swift_task_create();

      sub_1E325F7A8(v23, &unk_1ECF2C400);
      v5 += v30;
      --v2;
    }

    while (v33 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29420);
  sub_1E42063E4();
  OUTLINED_FUNCTION_0_20();
  *(v0 + 184) = sub_1E3780CD4(v24, 255, v25);
  *(v0 + 192) = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 200) = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_44_13(v26);
  OUTLINED_FUNCTION_102_2();

  return MEMORY[0x1EEE6D8A8]();
}

uint64_t sub_1E37779D4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3777ACC()
{
  OUTLINED_FUNCTION_58_5();
  v1 = v0[10];
  if (v1 == 1)
  {
    v2 = v0[24];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v5 = *(v2 + 16);
    while (1)
    {
      if (v5 == v3)
      {
        v13 = v0[11];

        *v13 = v4;

        OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_158_0();

        __asm { BRAA            X1, X16 }
      }

      v6 = *(v2 + 16);
      if (v3 >= v6)
      {
        break;
      }

      if (*(v2 + 32 + 8 * v3++))
      {

        MEMORY[0x1E6910BF0](v8);
        v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_13_8();
        sub_1E4206324();
        v4 = v17;
      }
    }

    __break(1u);
  }

  else
  {

    MEMORY[0x1E6910BF0](v9);
    v6 = *(v0[9] + 24);
    if (*(v0[9] + 16) < v6 >> 1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_35(v6);
  sub_1E42062F4();
LABEL_10:
  OUTLINED_FUNCTION_39_3();
  sub_1E4206324();
  sub_1E3781D80(v1);
  v0[24] = v0[9];
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[25] = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_44_13();
  OUTLINED_FUNCTION_17_15();
  OUTLINED_FUNCTION_158_0();

  return MEMORY[0x1EEE6D8A8]();
}

uint64_t sub_1E3777CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  return OUTLINED_FUNCTION_13_1(sub_1E3777CF4, 0);
}

uint64_t sub_1E3777CF4()
{
  OUTLINED_FUNCTION_80();
  v18 = v0;
  v0[14] = sub_1E4205F14();
  v1 = (v0 + 14);
  v0[15] = v2;
  sub_1E4207414();
  v3 = OUTLINED_FUNCTION_39_3();
  sub_1E375D7E8(v3, v4, v5);
  sub_1E375D84C((v0 + 2));
  if (v0[10])
  {
    if (swift_dynamicCast())
    {
      v1 = v0[16];
      v6 = v0[17];
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_148();
  }

  else
  {
    OUTLINED_FUNCTION_148();
    sub_1E325F7A8((v0 + 7), &unk_1ECF296E0);
  }

  v6 = 0xE700000000000000;
LABEL_7:
  v0[22] = OBJC_IVAR____TtC8VideosUI26SportsKitScoreboardManager_logger;

  v7 = sub_1E41FFC94();
  v8 = sub_1E42067D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_6_21();
    v10 = OUTLINED_FUNCTION_100();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_1E3270FC8(v1, v6, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1E323F000, v7, v8, "polling canonical scoreboard with id=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v12 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29440);
  v13 = sub_1E37B2D9C();
  v0[23] = v13;
  (*(*v13 + 200))(0xD000000000000025, 0x80000001E425B9B0);
  v14 = swift_task_alloc();
  v0[24] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  v15 = swift_task_alloc();
  v0[25] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29420);
  *v15 = v0;
  v15[1] = sub_1E3777FFC;
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1E3777FFC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3778100()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3778158()
{
  OUTLINED_FUNCTION_58_5();
  v15 = v0;
  v1 = *(v0 + 208);

  v2 = v1;
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E323F000, v3, v4, "failed to poll canonical error=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v11 = *(v0 + 208);
  }

  **(v0 + 152) = 0;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_158_0();

  __asm { BRAA            X1, X16 }
}

void sub_1E37782D0()
{
  OUTLINED_FUNCTION_31_1();
  v32[1] = v0;
  v33 = v1;
  v3 = v2;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v35 = v11;
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29448);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_106_1();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v32 - v19;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v34 = sub_1E4206A04();
  v21 = swift_allocObject();
  swift_weakInit();
  (*(v17 + 16))(v20, v3, v15);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v21;
  *(v23 + 24) = v24;
  (*(v17 + 32))(v23 + v22, v20, v15);
  v39[4] = sub_1E3781D98;
  v39[5] = v23;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v39[2] = v25;
  v39[3] = &block_descriptor;
  v26 = _Block_copy(v39);

  sub_1E4203FE4();
  v38 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_52_5();
  sub_1E3780CD4(v27, 255, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v29, v30);
  sub_1E42072E4();
  v31 = v34;
  MEMORY[0x1E6911380](0, v14, v9, v26);
  _Block_release(v26);

  (*(v37 + 8))(v9, v4);
  (*(v35 + 8))(v14, v36);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E377863C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29448);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_106_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    if ((*(*a2 + 352))())
    {
      v11 = OUTLINED_FUNCTION_53();
      v12(v11);
      v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v14 = swift_allocObject();
      (*(v5 + 32))(v14 + v13, v8, v3);
      sub_1E41EC148(sub_1E3781E00, v14);

      v15 = sub_1E376F0F0();
      sub_1E42004C4();

      *(v10 + 136) = v15;
    }

    else
    {
    }
  }

  return result;
}