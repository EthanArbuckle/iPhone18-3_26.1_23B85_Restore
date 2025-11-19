void sub_1DAB14CA8(id *a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *a1;
  v11 = a2[7];
  v12 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v11);
  v13 = *(a3 + 112);
  v53 = *(a3 + 96);
  v54 = v13;
  v55 = *(a3 + 128);
  v14 = *(a3 + 48);
  *&v49[16] = *(a3 + 32);
  v50 = v14;
  v15 = *(a3 + 80);
  v51 = *(a3 + 64);
  v52 = v15;
  v16 = *(a3 + 16);
  v48 = *a3;
  *v49 = v16;
  (*(v12 + 16))(&v48, v11, v12);

  v17 = objc_allocWithZone(SCWWatchedStock);
  v18 = *(a3 + 32);
  v19 = *(a3 + 40);
  v20 = sub_1DACB92F4();
  v21 = *(a3 + 72);
  v22 = *(a3 + 80);
  v23 = sub_1DACB92F4();
  v24 = *(a3 + 88);
  v25 = *(a3 + 96);
  v26 = sub_1DACB92F4();
  v27 = *(a3 + 16);
  v28 = *(a3 + 24);
  v29 = sub_1DACB92F4();
  v30 = *(a3 + 48);
  v31 = *(a3 + 56);
  v32 = sub_1DACB92F4();
  v33 = [v17 initWithName:v20 shortName:v23 compactName:v26 symbol:v29 exchange:v32];

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v34 = a4[1];
  v48 = *a4;
  *v49 = v34;
  *&v49[10] = *(a4 + 26);
  sub_1DAA8DB84(a4, aBlock);
  v35 = sub_1DAB130EC(&v48);
  v36 = swift_allocObject();
  v37 = *(a3 + 112);
  *(v36 + 112) = *(a3 + 96);
  *(v36 + 128) = v37;
  v38 = *(a3 + 48);
  *(v36 + 48) = *(a3 + 32);
  *(v36 + 64) = v38;
  v39 = *(a3 + 80);
  *(v36 + 80) = *(a3 + 64);
  *(v36 + 96) = v39;
  v40 = *(a3 + 16);
  *(v36 + 16) = *a3;
  *(v36 + 32) = v40;
  v41 = a4[1];
  *(v36 + 152) = *a4;
  *(v36 + 144) = *(a3 + 128);
  *(v36 + 168) = v41;
  *(v36 + 178) = *(a4 + 26);
  *(v36 + 200) = a5;
  *(v36 + 208) = a6;
  *(v36 + 216) = a7;
  *(v36 + 224) = a8;
  aBlock[4] = sub_1DAB1A174;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_91;
  v42 = _Block_copy(aBlock);
  sub_1DAA8DB84(a4, &v48);
  sub_1DAA806E4(a3, &v48);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v46 addStock:v33 watchlist:v35 completion:v42];
  _Block_release(v42);
}

void sub_1DAB14F58(void *a1, uint64_t a2, __int128 *a3, void (*a4)(void *), uint64_t a5, void (*a6)(void))
{
  if (a1)
  {
    v10 = a1;
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DACC2610;
    v22 = *(a2 + 16);
    v12 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1DAA443C8();
    *(v11 + 64) = v13;
    *(v11 + 32) = *(a2 + 16);
    v21 = *a3;
    v14 = v21;
    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 72) = v14;
    v19 = 0;
    v20 = 0xE000000000000000;
    v18 = a1;
    sub_1DAAA1344(&v22, v17);
    sub_1DAAA1344(&v21, v17);
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    v15 = v19;
    v16 = v20;
    *(v11 + 136) = v12;
    *(v11 + 144) = v13;
    *(v11 + 112) = v15;
    *(v11 + 120) = v16;
    sub_1DACB8C64();

    a4(a1);
  }

  else
  {
    a6();
  }
}

uint64_t sub_1DAB15110(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a3[1];
  v17 = *a3;
  v18[0] = v6;
  *(v18 + 10) = *(a3 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D40;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1DAA443C8();
  *(v7 + 64) = v9;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v19 = *a3;
  v10 = v19;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  sub_1DACB71E4();
  sub_1DAAA1344(&v19, v16);
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v11);
  sub_1DAA61900(0, &qword_1EE11D3F0, v8, MEMORY[0x1E69D6B18]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB152BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = *(a5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = a8[1];
  *(v18 + 32) = *a8;
  *(v18 + 48) = v19;
  *(v18 + 58) = *(a8 + 26);
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = sub_1DAB1BE44;
  *(v18 + 104) = v16;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DAA8DB84(a8, &v21);
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB153CC(id *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *a1;
  v15 = sub_1DACB92F4();
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v16 = a4[1];
  aBlock = *a4;
  *v23 = v16;
  *&v23[10] = *(a4 + 26);
  sub_1DAA8DB84(a4, v24);
  v17 = sub_1DAB130EC(&aBlock);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = a4[1];
  *(v18 + 32) = *a4;
  *(v18 + 48) = v19;
  *(v18 + 58) = *(a4 + 26);
  *(v18 + 80) = a5;
  *(v18 + 88) = a6;
  *(v18 + 96) = a7;
  *(v18 + 104) = a8;
  *&v23[16] = sub_1DAB1A13C;
  *&v23[24] = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v23 = sub_1DAB10208;
  *&v23[8] = &block_descriptor_79;
  v20 = _Block_copy(&aBlock);
  sub_1DAA8DB84(a4, v24);
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v21 removeSymbol:v15 watchlist:v17 completion:v20];
  _Block_release(v20);
}

void sub_1DAB15578(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, void (*a5)(void *), uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  if (a1)
  {
    v11 = a1;
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DACC2610;
    v13 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1DAA443C8();
    *(v12 + 64) = v14;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    v23 = *a4;
    v15 = v23;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 72) = v15;
    v21 = 0;
    v22 = 0xE000000000000000;
    v20 = a1;
    sub_1DACB71E4();
    sub_1DAAA1344(&v23, v19);
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    v16 = v21;
    v17 = v22;
    *(v12 + 136) = v13;
    *(v12 + 144) = v14;
    *(v12 + 112) = v16;
    *(v12 + 120) = v17;
    sub_1DACB8C64();

    a5(a1);
  }

  else
  {
    a7(a2, a3);
  }
}

uint64_t sub_1DAB15730(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *(a1 + 112);
  v30[7] = *(a1 + 96);
  v30[8] = v5;
  v31 = *(a1 + 128);
  v6 = *(a1 + 48);
  v30[3] = *(a1 + 32);
  v30[4] = v6;
  v7 = *(a1 + 80);
  v30[5] = *(a1 + 64);
  v30[6] = v7;
  v8 = *(a1 + 16);
  v30[1] = *a1;
  v30[2] = v8;
  v9 = a2[7];
  v38 = a2[6];
  v39 = v9;
  v40 = *(a2 + 16);
  v10 = a2[3];
  v34 = a2[2];
  v35 = v10;
  v11 = a2[5];
  v36 = a2[4];
  v37 = v11;
  v12 = a2[1];
  v32 = *a2;
  v33 = v12;
  v13 = a3[1];
  v41 = *a3;
  v42[0] = v13;
  *(v42 + 10) = *(a3 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DACC2610;
  v53 = *(a1 + 16);
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1DAA443C8();
  *(v14 + 64) = v16;
  *(v14 + 32) = *(a1 + 16);
  v17 = a2[7];
  v49 = a2[6];
  v50 = v17;
  v51 = *(a2 + 16);
  v18 = a2[3];
  v45 = a2[2];
  v46 = v18;
  v19 = a2[5];
  v47 = a2[4];
  v48 = v19;
  v20 = a2[1];
  v43 = *a2;
  v44 = v20;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v43) == 1)
  {
    v21 = (v14 + 72);
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
LABEL_7:
    *v21 = 7104878;
    v23 = 0xE300000000000000;
    goto LABEL_8;
  }

  v22 = v44;
  v21 = (v14 + 72);
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  v23 = sub_1DACB71E4();
  if (!v23)
  {
    goto LABEL_7;
  }

  *v21 = v22;
LABEL_8:
  *(v14 + 80) = v23;
  v24 = v41;
  v52 = v41;
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  *(v14 + 112) = v24;
  sub_1DAAA1344(&v53, v30);
  sub_1DAAA1344(&v52, v30);
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v25);
  sub_1DAA61900(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB159CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v15 = *(a5 + 80);
  v16 = swift_allocObject();
  v17 = *(a6 + 112);
  *(v16 + 112) = *(a6 + 96);
  *(v16 + 128) = v17;
  v18 = *(a6 + 48);
  *(v16 + 48) = *(a6 + 32);
  *(v16 + 64) = v18;
  v19 = *(a6 + 80);
  *(v16 + 80) = *(a6 + 64);
  *(v16 + 96) = v19;
  v20 = *(a6 + 16);
  *(v16 + 16) = *a6;
  *(v16 + 32) = v20;
  v21 = *(a7 + 64);
  *(v16 + 232) = *(a7 + 80);
  v22 = *(a7 + 112);
  *(v16 + 248) = *(a7 + 96);
  *(v16 + 264) = v22;
  v23 = *a7;
  *(v16 + 168) = *(a7 + 16);
  v24 = *(a7 + 48);
  *(v16 + 184) = *(a7 + 32);
  *(v16 + 200) = v24;
  *(v16 + 144) = *(a6 + 128);
  *(v16 + 280) = *(a7 + 128);
  *(v16 + 216) = v21;
  *(v16 + 152) = v23;
  v25 = a8[1];
  *(v16 + 288) = *a8;
  *(v16 + 304) = v25;
  *(v16 + 314) = *(a8 + 26);
  *(v16 + 336) = a3;
  *(v16 + 344) = a4;
  *(v16 + 352) = a1;
  *(v16 + 360) = a2;
  sub_1DAA806E4(a6, v27);
  sub_1DAB1A034(a7, v27, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  sub_1DAA8DB84(a8, v27);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB15B44(id *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *a1;
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = sub_1DACB92F4();
  v17 = *(a3 + 112);
  v41[6] = *(a3 + 96);
  v41[7] = v17;
  v42 = *(a3 + 128);
  v18 = *(a3 + 48);
  v41[2] = *(a3 + 32);
  v41[3] = v18;
  v19 = *(a3 + 80);
  v41[4] = *(a3 + 64);
  v41[5] = v19;
  v20 = *(a3 + 16);
  v41[0] = *a3;
  v41[1] = v20;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v41) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_1DACB92F4();
  }

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v22 = a4[1];
  v38 = *a4;
  v39[0] = v22;
  *(v39 + 10) = *(a4 + 26);
  sub_1DAA8DB84(a4, aBlock);
  v23 = sub_1DAB130EC(&v38);
  v24 = swift_allocObject();
  v25 = *(a2 + 112);
  *(v24 + 112) = *(a2 + 96);
  *(v24 + 128) = v25;
  v26 = *(a2 + 48);
  *(v24 + 48) = *(a2 + 32);
  *(v24 + 64) = v26;
  v27 = *(a2 + 80);
  *(v24 + 80) = *(a2 + 64);
  *(v24 + 96) = v27;
  v28 = *(a2 + 16);
  *(v24 + 16) = *a2;
  *(v24 + 32) = v28;
  v29 = a4[1];
  *(v24 + 152) = *a4;
  *(v24 + 168) = v29;
  *(v24 + 178) = *(a4 + 26);
  v30 = *(a3 + 112);
  *(v24 + 296) = *(a3 + 96);
  *(v24 + 312) = v30;
  v31 = *a3;
  *(v24 + 216) = *(a3 + 16);
  v32 = *(a3 + 48);
  *(v24 + 232) = *(a3 + 32);
  *(v24 + 248) = v32;
  v33 = *(a3 + 80);
  *(v24 + 264) = *(a3 + 64);
  *(v24 + 280) = v33;
  *(v24 + 144) = *(a2 + 128);
  v34 = *(a3 + 128);
  *(v24 + 200) = v31;
  *(v24 + 328) = v34;
  *(v24 + 336) = a5;
  *(v24 + 344) = a6;
  *(v24 + 352) = a7;
  *(v24 + 360) = a8;
  aBlock[4] = sub_1DAB1A0A4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAB10208;
  aBlock[3] = &block_descriptor_66;
  v35 = _Block_copy(aBlock);
  sub_1DAA8DB84(a4, &v38);
  sub_1DAA806E4(a2, &v38);
  sub_1DAB1A034(a3, &v38, &qword_1EE1201A8, &type metadata for Stock, MEMORY[0x1E69E6720]);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v37 reorderSymbol:v16 afterSymbol:v21 watchlist:v23 completion:v35];
  _Block_release(v35);
}

void sub_1DAB15DD0(void *a1, __int128 *a2, __int128 *a3, __int128 *a4, void (*a5)(void *), uint64_t a6, void (*a7)(__int128 *))
{
  if (!a1)
  {
    v23 = a2[7];
    v41 = a2[6];
    v42 = v23;
    v43 = *(a2 + 16);
    v24 = a2[3];
    v37 = a2[2];
    v38 = v24;
    v25 = a2[5];
    v39 = a2[4];
    v40 = v25;
    v26 = a2[1];
    v35 = *a2;
    v36 = v26;
    a7(&v35);
    return;
  }

  v12 = a1;
  if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  sub_1DACB9904();
  sub_1DAA41D64();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DACC5AA0;
  v45[0] = a2[1];
  v14 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1DAA443C8();
  *(v13 + 64) = v15;
  v16 = a2[1];
  *(v13 + 32) = v16;
  v44 = *a3;
  v17 = v44;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 72) = v17;
  *(v13 + 136) = v14;
  *(v13 + 144) = v15;
  *(v13 + 112) = v16;
  v18 = a4[3];
  v37 = a4[2];
  v38 = v18;
  v43 = *(a4 + 16);
  v19 = a4[7];
  v41 = a4[6];
  v42 = v19;
  v20 = a4[5];
  v39 = a4[4];
  v40 = v20;
  v21 = a4[1];
  v35 = *a4;
  v36 = v21;
  if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v35) == 1)
  {
    v22 = (v13 + 152);
    *(v13 + 176) = v14;
    *(v13 + 184) = v15;
LABEL_9:
    *v22 = 7104878;
    v28 = 0xE300000000000000;
    goto LABEL_10;
  }

  v27 = v36;
  v22 = (v13 + 152);
  *(v13 + 176) = v14;
  *(v13 + 184) = v15;
  v28 = sub_1DACB71E4();
  if (!v28)
  {
    goto LABEL_9;
  }

  *v22 = v27;
LABEL_10:
  *(v13 + 160) = v28;
  v33 = 0;
  v34 = 0xE000000000000000;
  v32 = a1;
  sub_1DAAA1344(v45, v31);
  sub_1DAAA1344(v45, v31);
  sub_1DAAA1344(&v44, v31);
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  v29 = v33;
  v30 = v34;
  *(v13 + 216) = v14;
  *(v13 + 224) = v15;
  *(v13 + 192) = v29;
  *(v13 + 200) = v30;
  sub_1DACB8C64();

  a5(a1);
}

uint64_t sub_1DAB16048(uint64_t a1, __int128 *a2)
{
  v4 = a2[1];
  v14 = *a2;
  v15[0] = v4;
  *(v15 + 10) = *(a2 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D40;
  v6 = MEMORY[0x1E69E6158];
  sub_1DAA61900(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_1DAA61850(&qword_1EE123E80);
  *(v5 + 32) = a1;
  v16 = *a2;
  *(v5 + 96) = v6;
  *(v5 + 104) = sub_1DAA443C8();
  *(v5 + 72) = *a2;
  sub_1DACB71E4();
  sub_1DAAA1344(&v16, v13);
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v8);
  sub_1DAB19ECC(0, &qword_1EE11FE28, &qword_1EE123EA0, v6);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB16234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  v17 = a7[1];
  *(v16 + 24) = *a7;
  *(v16 + 40) = v17;
  *(v16 + 50) = *(a7 + 26);
  *(v16 + 72) = a3;
  *(v16 + 80) = a4;
  *(v16 + 88) = sub_1DAB1BD8C;
  *(v16 + 96) = v14;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DAA8DB84(a7, &v19);
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB16344(void **a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;
  sub_1DAB16534(a2);
  v14 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v15 = sub_1DACB9634();

  v16 = [v14 initWithArray_];

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v17 = a3[1];
  v22 = *a3;
  *v23 = v17;
  *&v23[10] = *(a3 + 26);
  sub_1DAA8DB84(a3, v24);
  v18 = sub_1DAB130EC(&v22);
  v19 = swift_allocObject();
  v20 = a3[1];
  *(v19 + 24) = *a3;
  *(v19 + 16) = a2;
  *(v19 + 40) = v20;
  *(v19 + 50) = *(a3 + 26);
  *(v19 + 72) = a4;
  *(v19 + 80) = a5;
  *(v19 + 88) = a6;
  *(v19 + 96) = a7;
  *&v23[16] = sub_1DAB1A8A8;
  *&v23[24] = v19;
  *&v22 = MEMORY[0x1E69E9820];
  *(&v22 + 1) = 1107296256;
  *v23 = sub_1DAB10208;
  *&v23[8] = &block_descriptor_225;
  v21 = _Block_copy(&v22);
  sub_1DAA8DB84(a3, v24);
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v13 reorderSymbols:v16 watchlist:v18 completion:v21];
  _Block_release(v21);
}

uint64_t sub_1DAB16534(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1DAB25CA8(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;
      sub_1DACB71E4();
      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DAB25CA8((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_1DAA5616C(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1DAB16634(void *a1, uint64_t a2, __int128 *a3, void (*a4)(void *), uint64_t a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    v10 = a1;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DACC1D40;
    v12 = MEMORY[0x1E69E6158];
    sub_1DAA61900(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    *(v11 + 56) = v13;
    *(v11 + 64) = sub_1DAA61850(&qword_1EE123E80);
    *(v11 + 32) = a2;
    v15 = *a3;
    *(v11 + 96) = v12;
    *(v11 + 104) = sub_1DAA443C8();
    *(v11 + 72) = *a3;
    sub_1DACB71E4();
    sub_1DAAA1344(&v15, &v14);
    sub_1DACB8C64();

    a4(a1);
  }

  else
  {
    a6(a2);
  }
}

uint64_t sub_1DAB167DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = a5[1];
  v21 = *a5;
  v22[0] = v10;
  *(v22 + 10) = *(a5 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DACC2610;
  v12 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1DAA443C8();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 64) = v13;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;
  v23 = *a5;
  v14 = v23;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = v14;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAAA1344(&v23, v20);
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v15);
  sub_1DAA61900(0, &qword_1EE11D3F0, v12, MEMORY[0x1E69D6B18]);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB169AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = *(a5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  *(v19 + 32) = a8;
  *(v19 + 40) = a9;
  v20 = a10[1];
  *(v19 + 48) = *a10;
  *(v19 + 64) = v20;
  *(v19 + 74) = *(a10 + 26);
  *(v19 + 96) = a3;
  *(v19 + 104) = a4;
  *(v19 + 112) = sub_1DAB19FD4;
  *(v19 + 120) = v17;
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA8DB84(a10, v23);
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB16AD4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = *a1;
  v20 = sub_1DACB92F4();
  v15 = sub_1DACB92F4();
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v16 = a6[1];
  aBlock = *a6;
  *v23 = v16;
  *&v23[10] = *(a6 + 26);
  sub_1DAA8DB84(a6, v24);
  v17 = sub_1DAB130EC(&aBlock);
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a10;
  v18[6] = a4;
  v18[7] = a5;
  *&v23[16] = sub_1DAB1BE3C;
  *&v23[24] = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v23 = sub_1DAB10208;
  *&v23[8] = &block_descriptor_57;
  v19 = _Block_copy(&aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();

  [v21 replaceSymbol:v20 withSymbol:v15 watchlist:v17 completion:v19];
  _Block_release(v19);
}

void sub_1DAB16C7C(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = a1;
    a2(a1);
  }

  else
  {
    a4(a6, a7);
  }
}

uint64_t sub_1DAB16CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 80);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a8;
  v16[5] = v14;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB16DBC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v12[4] = sub_1DAB19F44;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DAB17084;
  v12[3] = &block_descriptor_45;
  v11 = _Block_copy(v12);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 fetchWatchlistOrderWithCompletion_];
  _Block_release(v11);
}

void sub_1DAB16EBC(uint64_t a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1DACC1D20;
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1DAA443C8();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1DACB8C64();

    (a3)(a2);
  }

  else if (a1)
  {
    a5();
  }

  else
  {
    sub_1DAB19F50();
    v9 = swift_allocError();
    a3();
  }
}

uint64_t sub_1DAB17084(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1DACB9644();
  }

  else
  {
    v6 = 0;
  }

  sub_1DACB71F4();
  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_1DAB1711C(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14[0] = v2;
  *(v14 + 10) = *(a1 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACC1D40;
  v16 = *a1;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1DAA443C8();
  *(v3 + 64) = v5;
  *(v3 + 32) = *a1;
  v15 = *(a1 + 24);
  v6 = v15;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v6;
  sub_1DAAA1344(&v16, v12);
  sub_1DAAA1344(&v15, v12);
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v7);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB172C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v11 = *(a5 + 80);
  v12 = swift_allocObject();
  v13 = a6[1];
  *(v12 + 16) = *a6;
  *(v12 + 32) = v13;
  *(v12 + 42) = *(a6 + 26);
  *(v12 + 64) = a3;
  *(v12 + 72) = a4;
  *(v12 + 80) = a1;
  *(v12 + 88) = a2;
  sub_1DAA8DB84(a6, &v15);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB1737C(void **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v21 = *a1;
  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v16 = a2[1];
  aBlock = *a2;
  *v23 = v16;
  *&v23[10] = *(a2 + 26);
  sub_1DAA8DB84(a2, v24);
  v17 = sub_1DAB130EC(&aBlock);
  v18 = swift_allocObject();
  v19 = a2[1];
  *(v18 + 16) = *a2;
  *(v18 + 32) = v19;
  *(v18 + 42) = *(a2 + 26);
  *(v18 + 64) = a3;
  *(v18 + 72) = a4;
  *(v18 + 80) = a5;
  *(v18 + 88) = a6;
  *&v23[16] = a8;
  *&v23[24] = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v23 = sub_1DAB10208;
  *&v23[8] = a9;
  v20 = _Block_copy(&aBlock);
  sub_1DAA8DB84(a2, v24);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v21 *a10];
  _Block_release(v20);
}

void sub_1DAB174F0(void *a1, __int128 *a2, void (*a3)(void *), uint64_t a4, void (*a5)(__int128 *))
{
  if (a1)
  {
    v8 = a1;
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1DACC2610;
    v20 = *a2;
    v10 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1DAA443C8();
    *(v9 + 64) = v11;
    *(v9 + 32) = *a2;
    v22 = *(a2 + 24);
    v12 = v22;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = v12;
    v18 = 0;
    v19 = 0xE000000000000000;
    v17 = a1;
    sub_1DAAA1344(&v20, v16);
    sub_1DAAA1344(&v22, v16);
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    v13 = v18;
    v14 = v19;
    *(v9 + 136) = v10;
    *(v9 + 144) = v11;
    *(v9 + 112) = v13;
    *(v9 + 120) = v14;
    sub_1DACB8C64();

    a3(a1);
  }

  else
  {
    v15 = a2[1];
    v20 = *a2;
    v21[0] = v15;
    *(v21 + 10) = *(a2 + 26);
    a5(&v20);
  }
}

uint64_t sub_1DAB176C0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[1];
  v17[2] = *a1;
  v18[0] = v3;
  *(v18 + 10) = *(a1 + 26);
  v4 = a2[1];
  v16 = *a2;
  v17[0] = v4;
  *(v17 + 10) = *(a2 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D40;
  v19 = *a1;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1DAA443C8();
  *(v5 + 64) = v7;
  *(v5 + 32) = *a1;
  if (*(&v16 + 1))
  {
    v8 = v16;
    v9 = sub_1DACB71E4();
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v8;
  *(v5 + 80) = v9;
  sub_1DAAA1344(&v19, v15);
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v10);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB17894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, _OWORD *a7)
{
  v13 = *(a5 + 80);
  v14 = swift_allocObject();
  v15 = a6[1];
  *(v14 + 16) = *a6;
  *(v14 + 32) = v15;
  *(v14 + 42) = *(a6 + 26);
  v16 = a7[1];
  *(v14 + 64) = *a7;
  *(v14 + 80) = v16;
  *(v14 + 90) = *(a7 + 26);
  *(v14 + 112) = a3;
  *(v14 + 120) = a4;
  *(v14 + 128) = a1;
  *(v14 + 136) = a2;
  sub_1DAB1A034(a6, v18, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  sub_1DAA8DB84(a7, v18);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB1799C(void **a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13 = *(a2 + 8);
  v14 = *a1;
  if (v13)
  {
    v18 = *a2;
    v28 = *(a2 + 32);
    v19 = *a1;
    v20 = *(a2 + 16);
    *v31 = *(a2 + 16);
    *&v31[10] = *(a2 + 26);
    sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
    *&aBlock = v18;
    *(&aBlock + 1) = v13;
    v8 = a6;
    v7 = a7;
    v9 = a5;
    sub_1DACB71E4();
    v14 = v19;
    v10 = a4;
    sub_1DACB71E4();
    sub_1DACB71E4();
    v21 = sub_1DAB130EC(&aBlock);
  }

  else
  {
    v21 = 0;
  }

  sub_1DAA420F4(0, &unk_1EE11F928, off_1E85E20E8);
  v22 = a3[1];
  aBlock = *a3;
  *v31 = v22;
  *&v31[10] = *(a3 + 26);
  sub_1DAA8DB84(a3, v32);
  v23 = sub_1DAB130EC(&aBlock);
  v24 = swift_allocObject();
  v25 = a3[1];
  *(v24 + 16) = *a3;
  *(v24 + 32) = v25;
  *(v24 + 42) = *(a3 + 26);
  v26 = *(a2 + 16);
  *(v24 + 64) = *a2;
  *(v24 + 80) = v26;
  *(v24 + 90) = *(a2 + 26);
  *(v24 + 112) = v10;
  *(v24 + 120) = v9;
  *(v24 + 128) = v8;
  *(v24 + 136) = v7;
  *&v31[16] = sub_1DAB19D00;
  *&v31[24] = v24;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *v31 = sub_1DAB10208;
  *&v31[8] = &block_descriptor_2;
  v27 = _Block_copy(&aBlock);
  sub_1DAB1A034(a2, v32, &qword_1EE120130, &type metadata for Watchlist, MEMORY[0x1E69E6720]);
  sub_1DAA8DB84(a3, v32);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v14 reorderWatchlist:v23 afterWatchlist:v21 completion:v27];
  _Block_release(v27);
}

void sub_1DAB17C00(void *a1, __int128 *a2, uint64_t *a3, void (*a4)(void *), uint64_t a5, void (*a6)(__int128 *))
{
  if (a1)
  {
    v10 = a1;
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    sub_1DACB9904();
    sub_1DAA41D64();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DACC2610;
    v23 = *a2;
    v12 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1DAA443C8();
    *(v11 + 64) = v13;
    *(v11 + 32) = *a2;
    if (a3[1])
    {
      v14 = *a3;
      v15 = sub_1DACB71E4();
    }

    else
    {
      v15 = 0xE300000000000000;
      v14 = 7104878;
    }

    *(v11 + 96) = v12;
    *(v11 + 104) = v13;
    *(v11 + 72) = v14;
    *(v11 + 80) = v15;
    v21 = 0;
    v22 = 0xE000000000000000;
    v20 = a1;
    sub_1DAAA1344(&v23, v19);
    sub_1DAA4436C(0, &qword_1EE123B10);
    sub_1DACB9DD4();
    v17 = v21;
    v18 = v22;
    *(v11 + 136) = v12;
    *(v11 + 144) = v13;
    *(v11 + 112) = v17;
    *(v11 + 120) = v18;
    sub_1DACB8C64();

    a4(a1);
  }

  else
  {
    v16 = a2[1];
    v23 = *a2;
    v24[0] = v16;
    *(v24 + 10) = *(a2 + 26);
    a6(&v23);
  }
}

uint64_t sub_1DAB17DD8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a1 & 0xFFFFFFFFFFFFFF8;
  v6 = *a1 >> 62;
  if (v6)
  {
    goto LABEL_65;
  }

  v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      if (v6)
      {
        v8 = sub_1DACB9E14();
      }

      else
      {
        v8 = *(v5 + 16);
      }

      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v8, v4);
    }

    else
    {
      if (v8 >= *(v5 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v7 = sub_1DACB9E14();
        goto LABEL_3;
      }

      v9 = *(v4 + 8 * v8 + 32);
      sub_1DACB71F4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v12 = __OFADD__(v8++, 1);
    if (v12)
    {
      goto LABEL_59;
    }
  }

  v13 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_72;
  }

  if (v6)
  {
    if (v13 != sub_1DACB9E14())
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v4 >> 62)
    {
      v14 = sub_1DACB9E14();
      if (v14 >= v8)
      {
LABEL_23:
        sub_1DACA698C(v8, v14);
        type metadata accessor for WatchlistServiceObserverProxy();
        v15 = swift_allocObject();
        *(v15 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v15 + 24) = a3;
        v16 = swift_unknownObjectWeakAssign();
        MEMORY[0x1E12770F0](v16);
        if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          return sub_1DACB96F4();
        }

LABEL_68:
        sub_1DACB9694();
        return sub_1DACB96F4();
      }
    }

    else
    {
      v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 >= v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v13 == *(v5 + 16))
  {
    goto LABEL_21;
  }

LABEL_25:
  v5 = v8 + 5;
  while (2)
  {
    v17 = v5 - 4;
    v6 = v4 & 0xC000000000000001;
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12777A0](v5 - 4, v4);
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v18 = *(v4 + 8 * v5);
      sub_1DACB71F4();
    }

    v19 = swift_unknownObjectWeakLoadStrong();

    if (!v19)
    {
      goto LABEL_49;
    }

    result = swift_unknownObjectRelease();
    if (v17 == v8)
    {
      goto LABEL_48;
    }

    if (v6)
    {
      v20 = MEMORY[0x1E12777A0](v8, v4);
      v21 = MEMORY[0x1E12777A0](v5 - 4, v4);
      goto LABEL_38;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v22)
      {
        goto LABEL_70;
      }

      if (v17 >= v22)
      {
        goto LABEL_71;
      }

      v20 = *(v4 + 8 * v8 + 32);
      v21 = *(v4 + 8 * v5);
      sub_1DACB71F4();
      sub_1DACB71F4();
LABEL_38:
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
      {
        v4 = sub_1DACA83E4(v4);
        v23 = (v4 >> 62) & 1;
      }

      else
      {
        LODWORD(v23) = 0;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
      *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v21;

      if ((v4 & 0x8000000000000000) != 0 || v23)
      {
        v4 = sub_1DACA83E4(v4);
        v6 = v4 & 0xFFFFFFFFFFFFFF8;
        if ((v17 & 0x8000000000000000) != 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }

      else if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v17 >= *(v6 + 16))
      {
        goto LABEL_64;
      }

      v25 = *(v6 + 8 * v5);
      *(v6 + 8 * v5) = v20;

      *a1 = v4;
LABEL_48:
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_63;
      }

LABEL_49:
      v6 = v5 - 3;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_62;
      }

      if (v4 >> 62)
      {
        v26 = sub_1DACB9E14();
      }

      else
      {
        v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v5;
      if (v6 == v26)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1DAB18188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DAB1BDE4;
  *(v10 + 24) = v8;
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB18244(uint64_t *a1)
{
  v10 = *v1;
  v9 = *a1;
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v1 + 16));
  if (v2 >> 62)
  {
    v3 = sub_1DACB9E14();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1E12777A0](i, v2);
          }

          else
          {
            v8 = *(v2 + 8 * i + 32);
            sub_1DACB71F4();
          }

          v12[3] = v10;
          v12[4] = &off_1F56825D8;
          v12[0] = v1;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v5 = *(v8 + 24);
            ObjectType = swift_getObjectType();
            v11 = v9;
            v7 = *(v5 + 8);
            sub_1DACB71F4();
            v7(v12, &v11, ObjectType, v5);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          __swift_destroy_boxed_opaque_existential_1(v12);
        }
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

void sub_1DAB1841C(uint64_t *a1)
{
  v10 = *v1;
  v9 = *a1;
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v1 + 16));
  if (v2 >> 62)
  {
    v3 = sub_1DACB9E14();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1E12777A0](i, v2);
          }

          else
          {
            v8 = *(v2 + 8 * i + 32);
            sub_1DACB71F4();
          }

          v12[3] = v10;
          v12[4] = &off_1F56825D8;
          v12[0] = v1;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v5 = *(v8 + 24);
            ObjectType = swift_getObjectType();
            v11 = v9;
            v7 = *(v5 + 16);
            sub_1DACB71F4();
            v7(v12, &v11, ObjectType, v5);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_1DACB71F4();
          }

          __swift_destroy_boxed_opaque_existential_1(v12);
        }
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1DAB185F4(__int128 *a1)
{
  v2 = *v1;
  v15 = a1[6];
  v16 = a1[7];
  v17 = *(a1 + 16);
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v9 = *a1;
  v10 = a1[1];
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACC1D20;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1DAA443C8();
  *(v3 + 32) = v10;
  sub_1DACB71E4();
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v4);
  sub_1DAA61900(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18790(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1DAA443C8();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_1DACB71E4();
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v8);
  sub_1DAA61900(0, &qword_1EE11D3F0, v7, MEMORY[0x1E69D6B18]);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAB18998(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  os_unfair_lock_lock((v5 + 16));
  sub_1DAB17DD8((v5 + 24), a1, a2);

  os_unfair_lock_unlock((v5 + 16));
}

void sub_1DAB18A00(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock(*v1 + 4);
  swift_unknownObjectRetain();
  v4 = sub_1DAAFB9C8(&v3[6]._os_unfair_lock_opaque, a1);
  swift_unknownObjectRelease();
  v5 = *&v3[6]._os_unfair_lock_opaque;
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v7 = *&v3[6]._os_unfair_lock_opaque;
    }

    v6 = sub_1DACB9E14();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 < v4)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_1DACA698C(v4, v6);

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1DAB18B14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1DAA443C8();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_1DACB71E4();
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v7);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18C84(__int128 *a1)
{
  v2 = *v1;
  v9 = *a1;
  *v10 = a1[1];
  *&v10[10] = *(a1 + 26);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DACC1D20;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1DAA443C8();
  *(v3 + 32) = v9;
  sub_1DACB71E4();
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v4);
  sub_1DAA61900(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18EA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v6 = *v5;
  sub_1DAB19ECC(0, a3, a4, a5);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18EFC(__int128 *a1)
{
  v2 = *v1;
  v7 = *a1;
  *v8 = a1[1];
  *&v8[10] = *(a1 + 26);
  sub_1DAB19ECC(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAB18F88()
{
  v1 = *v0;
  sub_1DAA61900(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAB19290(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  (*(v6 + 40))(v5, v6);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  sub_1DACB71F4();
  sub_1DACB71F4();
  v8 = sub_1DACB89D4();
  sub_1DACB8A64();

  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = a1;
  v9[4] = a2;
  sub_1DACB71F4();
  sub_1DACB71F4();
  v10 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAB19404(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  if ((*a1 & 1) != 0 || !*(*(a1 + 80) + 16))
  {
    return sub_1DAB1B32C(a3);
  }

  else
  {
    return sub_1DAB1B230(a1, a3);
  }
}

void sub_1DAB194E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1DACB9634();
    if (a2)
    {
LABEL_3:
      v6 = sub_1DACB78B4();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1DAB19580(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1DAA7C694(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DAA5859C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t sub_1DAB19694(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = sub_1DACB8984();
  v5 = *(a1 + 16);
  if (v5)
  {
    v38 = MEMORY[0x1E69E7CC0];
    result = sub_1DAA57914(0, v5, 0);
    if (*(v4 + 16))
    {
      v7 = v38;
      v8 = (a1 + 40);
      while (1)
      {
        v9 = *(v8 - 1);
        v10 = *v8;
        sub_1DACB71E4();
        result = sub_1DAA4BF3C(v9, v10);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v12 = *(v4 + 56) + 136 * result;
        v29 = *v12;
        v13 = *(v12 + 48);
        v14 = *(v12 + 64);
        v15 = *(v12 + 32);
        v30 = *(v12 + 16);
        v31 = v15;
        v32 = v13;
        v33 = v14;
        v16 = *(v12 + 80);
        v17 = *(v12 + 96);
        v18 = *(v12 + 112);
        v37 = *(v12 + 128);
        v35 = v17;
        v36 = v18;
        v34 = v16;
        sub_1DAA806E4(&v29, v28);

        v38 = v7;
        v20 = *(v7 + 16);
        v19 = *(v7 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_1DAA57914((v19 > 1), v20 + 1, 1);
          v7 = v38;
        }

        *(v7 + 16) = v20 + 1;
        v21 = v7 + 136 * v20;
        *(v21 + 32) = v29;
        v22 = v30;
        v23 = v31;
        v24 = v33;
        *(v21 + 80) = v32;
        *(v21 + 96) = v24;
        *(v21 + 48) = v22;
        *(v21 + 64) = v23;
        v25 = v34;
        v26 = v35;
        v27 = v36;
        *(v21 + 160) = v37;
        *(v21 + 128) = v26;
        *(v21 + 144) = v27;
        *(v21 + 112) = v25;
        if (!--v5)
        {

          return v7;
        }

        v8 += 2;
        if (!*(v4 + 16))
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DAB19840()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB198A4(uint64_t *a1, uint64_t a2, void (*a3)(unint64_t, void))
{
  v5 = *a1;
  sub_1DAB1BBE0();
  v6 = *(a2 + 56);
  sub_1DACB8944();
  v7 = sub_1DAB0FA18(v5);
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DACC1D40;
  if (v7 >> 62)
  {
    v9 = sub_1DACB9E14();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E65A8];
  *(v8 + 56) = MEMORY[0x1E69E6530];
  *(v8 + 64) = v10;
  *(v8 + 32) = v9;
  v11 = sub_1DAA420F4(0, &qword_1EE11F8D0, off_1E85E20E0);
  v12 = MEMORY[0x1E1277130](v7, v11);
  v14 = v13;
  *(v8 + 96) = MEMORY[0x1E69E6158];
  *(v8 + 104) = sub_1DAA443C8();
  *(v8 + 72) = v12;
  *(v8 + 80) = v14;
  sub_1DACB9914();
  sub_1DACB8C64();

  a3(v7, 0);
}

uint64_t sub_1DAB19A50(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DACB9904();
  sub_1DAA41D64();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1DACB8C64();

  return a2(0, a1);
}

void sub_1DAB19C34(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1DAA420F4(0, &qword_1EE11F8D0, off_1E85E20E0);
    v5 = sub_1DACB9634();
  }

  if (a2)
  {
    v6 = sub_1DACB78B4();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_1DAB19ECC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA61900(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1DACB8B74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAB19F50()
{
  result = qword_1ECBE7050;
  if (!qword_1ECBE7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7050);
  }

  return result;
}

uint64_t sub_1DAB1A034(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1DAA61900(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t objectdestroy_72Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DAB1A190(id *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2([*a1 synchronize]);
}

unint64_t sub_1DAB1A1F8()
{
  result = qword_1ECBE7058;
  if (!qword_1ECBE7058)
  {
    sub_1DACB8214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7058);
  }

  return result;
}

uint64_t objectdestroy_127Tm()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroy_17Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t objectdestroy_130Tm(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[5];

  v5 = v1[7];

  v6 = v1[8];

  v7 = v1[10];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_191Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_166Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[3]);
  a1(v2[5]);
  a2(v2[7]);
  a2(v2[9]);

  return MEMORY[0x1EEE6BDD0](v2, 80, 7);
}

uint64_t objectdestroy_218Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1DAB1A8E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t objectdestroy_53Tm(void (*a1)(void), void (*a2)(void))
{
  a1(v2[3]);
  v4 = v2[5];

  a2(v2[7]);

  return MEMORY[0x1EEE6BDD0](v2, 64, 7);
}

uint64_t objectdestroy_230Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[16];

  v8 = v0[18];

  v9 = v0[20];

  v10 = v0[22];

  return MEMORY[0x1EEE6BDD0](v0, 184, 7);
}

uint64_t sub_1DAB1AA78(id a1)
{
  sub_1DAB1BC70();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  v72 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = (&v68 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v68 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v68 - v13);
  v15 = [a1 addedWatchlistIDs];
  v16 = sub_1DACB9644();

  v17 = v16;
  v18 = *(v16 + 16);
  v75 = v3;
  v69 = a1;
  if (v18)
  {
    v74 = *MEMORY[0x1E69D6590];
    v73 = *(v4 + 104);
    v70 = v17;
    v19 = (v17 + 40);
    v20 = MEMORY[0x1E69E7CC0];
    do
    {
      v21 = *v19;
      *v14 = *(v19 - 1);
      v14[1] = v21;
      (v73)(v14, v74, v3);
      sub_1DACB71E4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DAADBC84(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1DAADBC84(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      v24 = v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23;
      v3 = v75;
      (*(v4 + 32))(v24, v14, v75);
      v19 += 2;
      --v18;
    }

    while (v18);

    a1 = v69;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v25 = [a1 removedWatchlistIDs];
  v26 = sub_1DACB9644();

  v27 = *(v26 + 16);
  v73 = v26;
  if (v27)
  {
    v74 = *MEMORY[0x1E69D6598];
    v28 = *(v4 + 104);
    v29 = (v26 + 40);
    v30 = v75;
    do
    {
      v31 = *v29;
      *v12 = *(v29 - 1);
      v12[1] = v31;
      v28(v12, v74, v30);
      sub_1DACB71E4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DAADBC84(0, v20[2] + 1, 1, v20);
      }

      v33 = v20[2];
      v32 = v20[3];
      if (v33 >= v32 >> 1)
      {
        v20 = sub_1DAADBC84(v32 > 1, v33 + 1, 1, v20);
      }

      v20[2] = v33 + 1;
      v34 = v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33;
      v30 = v75;
      (*(v4 + 32))(v34, v12, v75);
      v29 += 2;
      --v27;
    }

    while (v27);
  }

  v35 = v69;
  v36 = [v69 addedWatchlistIDs];
  v37 = sub_1DACB9644();

  v38 = *(v37 + 16);
  v68 = v37;
  if (v38)
  {
    v74 = *MEMORY[0x1E69D6588];
    v73 = (v4 + 104);
    v70 = v4 + 32;
    v39 = (v37 + 40);
    v40 = v75;
    do
    {
      v42 = *(v39 - 1);
      v41 = *v39;
      sub_1DACB71E4();
      v43 = [v35 indexesOfAddedWatchlistIDs];
      sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
      v44 = sub_1DACB9124();

      if (*(v44 + 16) && (v45 = sub_1DAA4BF3C(v42, v41), (v46 & 1) != 0))
      {
        v47 = *(*(v44 + 56) + 8 * v45);

        v48 = [v47 integerValue];

        v49 = v71;
        *v71 = v42;
        v49[1] = v41;
        v49[2] = v48;
        (*v73)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1DAADBC84(0, v20[2] + 1, 1, v20);
        }

        v51 = v20[2];
        v50 = v20[3];
        if (v51 >= v50 >> 1)
        {
          v20 = sub_1DAADBC84(v50 > 1, v51 + 1, 1, v20);
        }

        v20[2] = v51 + 1;
        (*(v4 + 32))(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v51, v71, v40);
      }

      else
      {
      }

      v39 += 2;
      --v38;
    }

    while (v38);
  }

  v52 = [v35 reorderedWatchlistIDs];
  v53 = sub_1DACB9644();

  v54 = *(v53 + 16);
  v71 = v53;
  if (v54)
  {
    v74 = *MEMORY[0x1E69D6588];
    v73 = (v4 + 32);
    v55 = (v53 + 40);
    do
    {
      v56 = *(v55 - 1);
      v57 = *v55;
      sub_1DACB71E4();
      v58 = [v35 indexesOfReorderedWatchlistIDs];
      sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
      v59 = sub_1DACB9124();

      if (*(v59 + 16) && (v60 = sub_1DAA4BF3C(v56, v57), (v61 & 1) != 0))
      {
        v62 = *(*(v59 + 56) + 8 * v60);

        v63 = [v62 integerValue];

        v64 = v72;
        *v72 = v56;
        v64[1] = v57;
        v64[2] = v63;
        (*(v4 + 104))();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1DAADBC84(0, v20[2] + 1, 1, v20);
        }

        v66 = v20[2];
        v65 = v20[3];
        if (v66 >= v65 >> 1)
        {
          v20 = sub_1DAADBC84(v65 > 1, v66 + 1, 1, v20);
        }

        v20[2] = v66 + 1;
        (*(v4 + 32))(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v66, v72, v75);
      }

      else
      {
      }

      v55 += 2;
      --v54;
    }

    while (v54);
  }

  v76 = v20;
  sub_1DAB1841C(&v76);
}

uint64_t sub_1DAB1B230(uint64_t a1, void (*a2)(uint64_t, void))
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  sub_1DAB16534(*(a1 + 80));
  v5 = sub_1DACB9634();

  [v4 addObjectsFromArray_];

  v6 = [v4 array];
  v7 = sub_1DACB9644();

  v8 = sub_1DAB19580(v7);

  a2(v8, 0);
}

uint64_t sub_1DAB1B32C(void (*a1)(uint64_t, void))
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
  v3 = [objc_opt_self() defaultsForCurrentCountry];
  v4 = [v3 defaultSymbols];

  v5 = sub_1DACB9644();
  sub_1DAB16534(v5);

  v6 = sub_1DACB9634();

  [v2 addObjectsFromArray_];

  v7 = [v2 array];
  v8 = sub_1DACB9644();

  v9 = sub_1DAB19580(v8);

  a1(v9, 0);
}

void sub_1DAB1B488(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v66 = sub_1DACB8204();
  v60 = *(v66 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB8344();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB81B4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = swift_allocObject();
  *(v67 + 16) = a3;
  v20 = a2;
  v21 = a2[7];
  _Block_copy(a3);
  v22 = sub_1DACB8984();
  v23 = a1;
  v24 = *(a1 + 16);
  if (*(v22 + 16) == v24)
  {
    v25 = sub_1DAB0FA18(v22);

    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    sub_1DAA41D64();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1DACC1D40;
    if (v25 >> 62)
    {
      v27 = sub_1DACB9E14();
    }

    else
    {
      v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = MEMORY[0x1E69E65A8];
    *(v26 + 56) = MEMORY[0x1E69E6530];
    *(v26 + 64) = v28;
    *(v26 + 32) = v27;
    v29 = sub_1DAA420F4(0, &qword_1EE11F8D0, off_1E85E20E0);
    v30 = MEMORY[0x1E1277130](v25, v29);
    v32 = v31;
    *(v26 + 96) = MEMORY[0x1E69E6158];
    *(v26 + 104) = sub_1DAA443C8();
    *(v26 + 72) = v30;
    *(v26 + 80) = v32;
    sub_1DACB9914();
    sub_1DACB8C64();

    v66 = sub_1DACB9634();
    a3[2](a3, v66, 0);

    v33 = v66;
  }

  else
  {

    if (qword_1EE121838 != -1)
    {
      swift_once();
    }

    v56 = qword_1EE13E310;
    sub_1DAA41D64();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E6530];
    *(v34 + 16) = xmmword_1DACC1D40;
    v36 = MEMORY[0x1E69E65A8];
    *(v34 + 56) = v35;
    *(v34 + 64) = v36;
    *(v34 + 32) = v24;
    v37 = MEMORY[0x1E69E6158];
    v58 = v23;
    v38 = MEMORY[0x1E1277130](v23, MEMORY[0x1E69E6158]);
    v40 = v39;
    *(v34 + 96) = v37;
    *(v34 + 104) = sub_1DAA443C8();
    *(v34 + 72) = v38;
    *(v34 + 80) = v40;
    sub_1DACB9914();
    sub_1DACB8C64();

    v41 = v20[6];
    v56 = v20[5];
    __swift_project_boxed_opaque_existential_1(v20 + 2, v56);
    v42 = *MEMORY[0x1E69D63C8];
    v43 = *(v16 + 104);
    v44 = v19;
    v57 = v15;
    v43(v19, v42, v15);
    v45 = v14;
    sub_1DACB8334();
    v46 = v59;
    sub_1DACB7CB4();
    v48 = v60;
    v47 = v61;
    v49 = v66;
    (*(v60 + 104))(v61, *MEMORY[0x1E69D6490], v66);
    (*(v41 + 8))(v58, v44, v45, v46, v47, v56, v41);
    (*(v48 + 8))(v47, v49);
    (*(v64 + 8))(v46, v65);
    (*(v62 + 8))(v45, v63);
    (*(v16 + 8))(v44, v57);
    v50 = swift_allocObject();
    v50[2] = v20;
    v50[3] = sub_1DAB1BBB0;
    v51 = v67;
    v50[4] = v67;
    sub_1DACB71F4();
    sub_1DACB71F4();
    v52 = sub_1DACB89D4();
    sub_1DACB8A64();

    v53 = swift_allocObject();
    *(v53 + 16) = sub_1DAB1BBB0;
    *(v53 + 24) = v51;
    sub_1DACB71F4();
    v54 = sub_1DACB89D4();
    sub_1DACB8AA4();
  }
}

void sub_1DAB1BBE0()
{
  if (!qword_1EE11FEE8)
  {
    v0 = sub_1DACB8974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FEE8);
    }
  }
}

void sub_1DAB1BC70()
{
  if (!qword_1EE11FFE0)
  {
    v0 = sub_1DACB84A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FFE0);
    }
  }
}

uint64_t sub_1DAB1BCC8(uint64_t a1)
{
  sub_1DAB0FE38(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAB1BD38()
{
  result = qword_1ECBE7060;
  if (!qword_1ECBE7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7060);
  }

  return result;
}

uint64_t sub_1DAB1BE98(uint64_t a1, uint64_t a2)
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE1242C0 = a1;
  qword_1EE1242C8 = a2;
}

uint64_t (*sub_1DAB1BF24())()
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DAB1BFB0@<X0>(void *a1@<X8>)
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EE1242C8;
  *a1 = qword_1EE1242C0;
  a1[1] = v2;
  return sub_1DACB71E4();
}

uint64_t sub_1DAB1C030(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_1EE1242B8;
  sub_1DACB71E4();
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE1242C0 = v2;
  qword_1EE1242C8 = v1;
}

uint64_t sub_1DAB1C0C0()
{
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1EE1242C0;
  v1 = qword_1EE1242C8;
  if (qword_1EE1242C0 == 0x313434333431 && qword_1EE1242C8 == 0xE600000000000000)
  {
    v6 = 1;
  }

  else
  {
    v3 = sub_1DACBA174();
    v5 = v0 == 0x343434333431 && v1 == 0xE600000000000000;
    v6 = 1;
    if ((v3 & 1) == 0 && !v5)
    {
      v7 = sub_1DACBA174();
      v8 = v0 == 0x303634333431 && v1 == 0xE600000000000000;
      v9 = v8;
      v6 = 1;
      if ((v7 & 1) == 0 && !v9)
      {
        v10 = sub_1DACBA174();
        v12 = v0 == 0x353534333431 && v1 == 0xE600000000000000;
        v6 = 1;
        if ((v10 & 1) == 0 && !v12)
        {
          v6 = sub_1DACBA174();
        }
      }
    }
  }

  return v6 & 1;
}

id sub_1DAB1C244()
{
  v0 = [objc_opt_self() sharedAccount];
  v1 = [v0 isUserSignedInToiCloud];

  return v1;
}

uint64_t NewsUserProfile.init(subscribedTagIDs:mutedTagIDs:autoFavoritedTagIDs:purchasedTagIDs:bundleSubscription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1DAB1C2FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DAB1C344(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DAB1C3A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1DACB9BC4();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 56) + 136 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);
    result = sub_1DACB71E4();
    if (v13 >= v14 >> 1)
    {
      result = sub_1DAA5859C((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1DAAA2C74(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1DAAA2C74(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DAB1C5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v9 = v3[2];
  v8 = v3[3];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_1DAAFF1F4;

  return sub_1DAB1D96C(a2, a3, v7, v9, v8);
}

unint64_t sub_1DAB1C6A8()
{
  result = qword_1EE11DD48;
  if (!qword_1EE11DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD48);
  }

  return result;
}

unint64_t sub_1DAB1C700()
{
  result = qword_1EE11DD40;
  if (!qword_1EE11DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD40);
  }

  return result;
}

uint64_t sub_1DAB1C79C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAB1CC4C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1DAB1C7C8(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAB07898;

  return (sub_1DAB1CD9C)(a1, v4);
}

unint64_t sub_1DAB1C8C8()
{
  result = qword_1EE11DD50;
  if (!qword_1EE11DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD50);
  }

  return result;
}

unint64_t sub_1DAB1C968()
{
  result = qword_1ECBE7068;
  if (!qword_1ECBE7068)
  {
    sub_1DAB1CA10();
    sub_1DAB1D924(&qword_1EE123548, type metadata accessor for SymbolEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7068);
  }

  return result;
}

void sub_1DAB1CA10()
{
  if (!qword_1ECBE7070)
  {
    type metadata accessor for SymbolEntity();
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7070);
    }
  }
}

uint64_t sub_1DAB1CA68(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E6959F30] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1DAAF59D0();
  *v6 = v2;
  v6[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB2ED8](a1, a2, v7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAB1CB28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAB1CB70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DAB1CBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v2;
  v14 = *(a1 + 128);
  v3 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a2 + 112);
  v11[6] = *(a2 + 96);
  v11[7] = v6;
  v12 = *(a2 + 128);
  v7 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v7;
  v8 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v8;
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  return sub_1DAA9B398(v13, v11) & 1;
}

uint64_t sub_1DAB1CC4C()
{
  sub_1DAAF41C0(0, &qword_1EE123AB8, qword_1EE125F28);
  sub_1DACB6D94();
  sub_1DACB6D84();
  v0 = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AA8, &unk_1EE125A10);
  sub_1DACB6D84();
  sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40);
  sub_1DACB6D84();
  sub_1DACB6D54();
  sub_1DAB1F9D0();
  swift_getKeyPath();
  sub_1DACB7324();
  return v0;
}

uint64_t sub_1DAB1CD9C(uint64_t a1, uint64_t a2)
{
  v2[45] = a1;
  v2[46] = a2;
  v3 = *(type metadata accessor for SymbolEntity() - 8);
  v2[47] = v3;
  v4 = *(v3 + 64) + 15;
  v2[48] = swift_task_alloc();
  v5 = sub_1DACB8204();
  v2[49] = v5;
  v6 = *(v5 - 8);
  v2[50] = v6;
  v7 = *(v6 + 64) + 15;
  v2[51] = swift_task_alloc();
  v8 = sub_1DACB7CC4();
  v2[52] = v8;
  v9 = *(v8 - 8);
  v2[53] = v9;
  v10 = *(v9 + 64) + 15;
  v2[54] = swift_task_alloc();
  v11 = sub_1DACB8344();
  v2[55] = v11;
  v12 = *(v11 - 8);
  v2[56] = v12;
  v13 = *(v12 + 64) + 15;
  v2[57] = swift_task_alloc();
  v14 = sub_1DACB81B4();
  v2[58] = v14;
  v15 = *(v14 - 8);
  v2[59] = v15;
  v16 = *(v15 + 64) + 15;
  v2[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB1CFC8, 0, 0);
}

uint64_t sub_1DAB1CFC8()
{
  v31 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v2, qword_1EE11D390);
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB98E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315138;
    v0[44] = v5;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8);
    v8 = sub_1DACB9214();
    v10 = sub_1DAA7ABE4(v8, v9, &v30);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetching stocks for symbol query with identifiers=[%s]", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v11 = v0[59];
  v12 = v0[58];
  v23 = v0[57];
  v28 = v0[55];
  v29 = v0[60];
  v13 = v0[54];
  v25 = v0[53];
  v14 = v0[51];
  v26 = v0[52];
  v27 = v0[56];
  v16 = v0[49];
  v15 = v0[50];
  v17 = v0[46];
  v24 = v0[45];
  sub_1DACB6D24();
  v19 = v0[39];
  v18 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v19);
  (*(v11 + 104))(v29, *MEMORY[0x1E69D63C8], v12);
  sub_1DACB8334();
  sub_1DACB7CB4();
  (*(v15 + 104))(v14, *MEMORY[0x1E69D6490], v16);
  v0[62] = (*(v18 + 8))(v24, v29, v23, v13, v14, v19, v18);
  (*(v15 + 8))(v14, v16);
  (*(v25 + 8))(v13, v26);
  (*(v27 + 8))(v23, v28);
  (*(v11 + 8))(v29, v12);
  v20 = *(MEMORY[0x1E69D6B08] + 4);
  v21 = swift_task_alloc();
  v0[63] = v21;
  *v21 = v0;
  v21[1] = sub_1DAB1D348;

  return MEMORY[0x1EEE44EE0](v0 + 41);
}

uint64_t sub_1DAB1D348()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v7 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = sub_1DAB1D86C;
  }

  else
  {
    v5 = *(v2 + 496);

    __swift_destroy_boxed_opaque_existential_1((v2 + 288));
    v4 = sub_1DAB1D46C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB1D46C()
{
  v52 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 360);
  v3 = *(v0 + 328);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v4 = sub_1DACB8C74();
  v5 = sub_1DACB98E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 512);
    v7 = *(v0 + 360);
    v8 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v50[0] = v49;
    *v8 = 136315394;
    *(v0 + 336) = v7;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8);
    v9 = sub_1DACB9214();
    v11 = sub_1DAA7ABE4(v9, v10, v50);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = sub_1DACB71E4();
    v13 = sub_1DAB1C3A0(v12);

    *(v0 + 344) = v13;
    v14 = sub_1DACB9214();
    v16 = v15;

    v17 = sub_1DAA7ABE4(v14, v16, v50);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1DAA3F000, v4, v5, "Fetched stocks for symbol query with identifiers=[%s], stocks=[%s]", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v49, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  v18 = *(v0 + 360);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v0 + 376);
    v21 = (v18 + 40);
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v3 + 16))
      {
        v23 = *(v21 - 1);
        v24 = *v21;
        sub_1DACB71E4();
        v25 = sub_1DAA4BF3C(v23, v24);
        if (v26)
        {
          v27 = *(v0 + 384);
          v28 = *(v3 + 56) + 136 * v25;
          *(v0 + 16) = *v28;
          v29 = *(v28 + 64);
          v31 = *(v28 + 16);
          v30 = *(v28 + 32);
          *(v0 + 64) = *(v28 + 48);
          *(v0 + 80) = v29;
          *(v0 + 32) = v31;
          *(v0 + 48) = v30;
          v33 = *(v28 + 96);
          v32 = *(v28 + 112);
          v34 = *(v28 + 80);
          *(v0 + 144) = *(v28 + 128);
          *(v0 + 112) = v33;
          *(v0 + 128) = v32;
          *(v0 + 96) = v34;
          v35 = *(v28 + 112);
          v50[6] = *(v28 + 96);
          v50[7] = v35;
          v51 = *(v28 + 128);
          v36 = *(v28 + 48);
          v50[2] = *(v28 + 32);
          v50[3] = v36;
          v37 = *(v28 + 80);
          v50[4] = *(v28 + 64);
          v50[5] = v37;
          v38 = *(v28 + 16);
          v50[0] = *v28;
          v50[1] = v38;
          sub_1DAA806E4(v0 + 16, v0 + 152);
          SymbolEntity.init(from:)(v50, v27);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1DAADBEA8(0, v22[2] + 1, 1, v22);
          }

          v40 = v22[2];
          v39 = v22[3];
          if (v40 >= v39 >> 1)
          {
            v22 = sub_1DAADBEA8(v39 > 1, v40 + 1, 1, v22);
          }

          v41 = *(v0 + 384);
          v22[2] = v40 + 1;
          sub_1DAAF5AA4(v41, v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v40);
        }

        else
        {
        }
      }

      v21 += 2;
      --v19;
    }

    while (v19);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v42 = *(v0 + 480);
  v43 = *(v0 + 456);
  v44 = *(v0 + 432);
  v45 = *(v0 + 408);
  v46 = *(v0 + 384);

  v47 = *(v0 + 8);

  return v47(v22);
}

uint64_t sub_1DAB1D86C()
{
  v1 = v0[62];
  v2 = v0[60];
  v3 = v0[57];
  v4 = v0[54];
  v5 = v0[51];
  v6 = v0[48];

  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  v7 = v0[1];
  v8 = v0[64];

  return v7();
}

uint64_t sub_1DAB1D924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAB1D96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[163] = a5;
  v5[162] = a4;
  v5[161] = a3;
  v5[160] = a2;
  v5[159] = a1;
  v6 = *(type metadata accessor for SymbolEntity() - 8);
  v5[164] = v6;
  v7 = *(v6 + 64) + 15;
  v5[165] = swift_task_alloc();
  v5[166] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB1DA44, 0, 0);
}

uint64_t sub_1DAB1DA44()
{
  v25 = v0;
  v1 = v0[163];
  if (sub_1DACB7304())
  {
    swift_getKeyPath();
    sub_1DAA8E020();
    sub_1DACB7054();

    v2 = v0[142];
    v3 = v0[143];
    v4 = v0[144];
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  v0[169] = v4;
  v0[168] = v3;
  v0[167] = v2;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v5 = v0[160];
  v6 = sub_1DACB8C94();
  v0[170] = __swift_project_value_buffer(v6, qword_1EE11D390);
  sub_1DACB71E4();
  sub_1DAB1F8B8(v2, v3);
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  sub_1DAB1F8FC(v2, v3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[160];
    v10 = v0[159];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1DAA7ABE4(v10, v9, &v24);
    *(v11 + 12) = 2080;
    if (v3)
    {
      sub_1DACB6ED4();
      v13 = v0[151];
      v14 = v0[152];
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    v15 = sub_1DAA7ABE4(v13, v14, &v24);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Fetching stocks for symbol entities matching string='%s', watchlist='%s'", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  sub_1DACB6D24();
  v19 = v0[130];
  v20 = v0[131];
  __swift_project_boxed_opaque_existential_1(v0 + 127, v19);
  v0[171] = sub_1DAAEA918(v18, v17, v19, v20);
  v21 = *(MEMORY[0x1E69D6B08] + 4);
  v22 = swift_task_alloc();
  v0[172] = v22;
  *v22 = v0;
  v22[1] = sub_1DAB1DD4C;

  return MEMORY[0x1EEE44EE0](v0 + 153);
}

uint64_t sub_1DAB1DD4C()
{
  v2 = *v1;
  v3 = *(*v1 + 1376);
  v7 = *v1;
  *(*v1 + 1384) = v0;

  if (v0)
  {
    v4 = sub_1DAB1F3F8;
  }

  else
  {
    v5 = *(v2 + 1368);

    __swift_destroy_boxed_opaque_existential_1((v2 + 1016));
    v4 = sub_1DAB1DE70;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB1DE70()
{
  v80 = v0;
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);
  v3 = *(v0 + 1344);
  v4 = *(v0 + 1336);
  v5 = *(v0 + 1280);
  v6 = *(v0 + 1224);
  *(v0 + 1392) = v6;
  sub_1DACB71E4();
  sub_1DAB1F8B8(v4, v3);
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  sub_1DAB1F8FC(v4, v3);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1280);
    v10 = *(v0 + 1272);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v79[0] = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1DAA7ABE4(v10, v9, v79);
    *(v11 + 12) = 2080;
    v13 = *(v6 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    v76 = v6;
    if (v13)
    {
      v72 = v12;
      v73 = v11;
      v74 = v8;
      v75 = v7;
      *&v77[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v13, 0);
      v14 = *&v77[0];
      v15 = *(*&v77[0] + 16);
      v16 = 16 * v15;
      v17 = (v6 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        *&v77[0] = v14;
        v20 = v15 + 1;
        v21 = *(v14 + 24);
        sub_1DACB71E4();
        if (v15 >= v21 >> 1)
        {
          sub_1DAA5859C((v21 > 1), v20, 1);
          v14 = *&v77[0];
        }

        *(v14 + 16) = v20;
        v22 = v14 + v16;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v16 += 16;
        v17 += 17;
        ++v15;
        --v13;
      }

      while (v13);
      v7 = v75;
      v8 = v74;
      v12 = v72;
      v11 = v73;
    }

    v23 = *(v0 + 1344);
    *(v0 + 1264) = v14;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8);
    v24 = sub_1DACB9214();
    v26 = v25;

    v27 = sub_1DAA7ABE4(v24, v26, v79);

    *(v11 + 14) = v27;
    *(v11 + 22) = 2080;
    if (v23)
    {
      v28 = *(v0 + 1352);
      sub_1DACB6ED4();
      v29 = *(v0 + 1192);
      v30 = *(v0 + 1200);
    }

    else
    {
      v30 = 0xE300000000000000;
      v29 = 7104878;
    }

    v6 = v76;
    v31 = sub_1DAA7ABE4(v29, v30, v79);

    *(v11 + 24) = v31;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Fetched stocks for symbol entities matching string='%s', stocks=[%s], watchlist='%s'", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v12, -1, -1);
    MEMORY[0x1E1278C00](v11, -1, -1);
  }

  v32 = *(v6 + 16);
  *(v0 + 1400) = v32;
  if (v32)
  {
    v33 = *(v0 + 1344);
    if (v33)
    {
      v34 = *(v0 + 1352);
      v35 = *(v0 + 1336);
      v36 = *(v0 + 1296);
      v37 = *(v0 + 1344);
      sub_1DACB71E4();
      sub_1DACB71F4();
      sub_1DACB6D24();
      v38 = *(v0 + 1080);
      v39 = *(v0 + 1088);
      __swift_project_boxed_opaque_existential_1((v0 + 1056), v38);
      *(v0 + 1408) = (*(v39 + 144))(v35, v33, v38, v39);
      v40 = *(MEMORY[0x1E69D6B08] + 4);
      v41 = swift_task_alloc();
      *(v0 + 1416) = v41;
      *v41 = v0;
      v41[1] = sub_1DAB1E42C;

      return MEMORY[0x1EEE44EE0](v0 + 968);
    }

    v46 = *(v0 + 1392);
    v47 = *(v0 + 1312);
    v79[0] = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v32, 0);
    v45 = v79[0];
    v48 = v46 + 32;
    for (i = v32 - 1; ; --i)
    {
      v50 = *(v0 + 1320);
      *(v0 + 16) = *v48;
      v51 = *(v48 + 64);
      v53 = *(v48 + 16);
      v52 = *(v48 + 32);
      *(v0 + 64) = *(v48 + 48);
      *(v0 + 80) = v51;
      *(v0 + 32) = v53;
      *(v0 + 48) = v52;
      v55 = *(v48 + 96);
      v54 = *(v48 + 112);
      v56 = *(v48 + 80);
      *(v0 + 144) = *(v48 + 128);
      *(v0 + 112) = v55;
      *(v0 + 128) = v54;
      *(v0 + 96) = v56;
      v57 = *(v48 + 112);
      v77[6] = *(v48 + 96);
      v77[7] = v57;
      v78 = *(v48 + 128);
      v58 = *(v48 + 48);
      v77[2] = *(v48 + 32);
      v77[3] = v58;
      v59 = *(v48 + 80);
      v77[4] = *(v48 + 64);
      v77[5] = v59;
      v60 = *(v48 + 16);
      v77[0] = *v48;
      v77[1] = v60;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      SymbolEntity.init(from:)(v77, v50);
      v79[0] = v45;
      v62 = *(v45 + 16);
      v61 = *(v45 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1DAB25CC8(v61 > 1, v62 + 1, 1);
        v45 = v79[0];
      }

      v63 = *(v0 + 1320);
      *(v45 + 16) = v62 + 1;
      sub_1DAAF5AA4(v63, v45 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v62);
      if (!i)
      {
        break;
      }

      v48 += 136;
    }

    v64 = *(v0 + 1392);
    v65 = *(v0 + 1352);
    v66 = *(v0 + 1344);
    v67 = *(v0 + 1336);

    sub_1DAB1F8FC(v67, v66);
  }

  else
  {
    v42 = *(v0 + 1352);
    v43 = *(v0 + 1344);
    v44 = *(v0 + 1336);

    sub_1DAB1F8FC(v44, v43);
    v45 = MEMORY[0x1E69E7CC0];
  }

  v68 = *(v0 + 1328);
  v69 = *(v0 + 1320);

  v70 = *(v0 + 8);

  return v70(v45);
}

uint64_t sub_1DAB1E42C()
{
  v2 = *v1;
  v3 = *(*v1 + 1416);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 1408);

    v5 = sub_1DAB1F498;
  }

  else
  {
    v6 = *(v2 + 1408);

    __swift_destroy_boxed_opaque_existential_1((v2 + 1056));
    v5 = sub_1DAB1E560;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DAB1E560()
{
  v55 = v0;
  v1 = *(v0 + 976);
  if (v1)
  {
    v2 = *(v0 + 968);
    v3 = *(v0 + 984);
    v4 = *(v0 + 992);
    v5 = *(v0 + 1000);
    v6 = *(v0 + 1008);
    v7 = *(v0 + 1296);
    sub_1DACB6D24();
    v8 = *(v0 + 1120);
    v9 = *(v0 + 1128);
    __swift_project_boxed_opaque_existential_1((v0 + 1096), v8);
    *&v46 = v2;
    *(&v46 + 1) = v1;
    *&v47 = v3;
    *(&v47 + 1) = v4;
    *&v48 = v5;
    WORD4(v48) = v6;
    *(v0 + 1424) = (*(v9 + 112))(&v46, v8, v9);
    sub_1DAA75E60(v2, v1);
    v10 = *(MEMORY[0x1E69D6B08] + 4);
    v11 = swift_task_alloc();
    *(v0 + 1432) = v11;
    *v11 = v0;
    v11[1] = sub_1DAB1E894;

    return MEMORY[0x1EEE44EE0](v0 + 1232);
  }

  else
  {
    v12 = *(v0 + 1352);
    sub_1DAB1F8FC(*(v0 + 1336), *(v0 + 1344));
    v13 = *(v0 + 1392);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = *(v0 + 1312);
      v45 = MEMORY[0x1E69E7CC0];
      sub_1DAB25CC8(0, v14, 0);
      v16 = v45;
      v17 = v13 + 32;
      for (i = v14 - 1; ; --i)
      {
        v19 = *(v0 + 1320);
        *(v0 + 16) = *v17;
        v20 = *(v17 + 64);
        v22 = *(v17 + 16);
        v21 = *(v17 + 32);
        *(v0 + 64) = *(v17 + 48);
        *(v0 + 80) = v20;
        *(v0 + 32) = v22;
        *(v0 + 48) = v21;
        v24 = *(v17 + 96);
        v23 = *(v17 + 112);
        v25 = *(v17 + 80);
        *(v0 + 144) = *(v17 + 128);
        *(v0 + 112) = v24;
        *(v0 + 128) = v23;
        *(v0 + 96) = v25;
        v26 = *(v17 + 112);
        v52 = *(v17 + 96);
        v53 = v26;
        v54 = *(v17 + 128);
        v27 = *(v17 + 48);
        v48 = *(v17 + 32);
        v49 = v27;
        v28 = *(v17 + 80);
        v50 = *(v17 + 64);
        v51 = v28;
        v29 = *(v17 + 16);
        v46 = *v17;
        v47 = v29;
        sub_1DAA806E4(v0 + 16, v0 + 152);
        SymbolEntity.init(from:)(&v46, v19);
        v31 = *(v45 + 16);
        v30 = *(v45 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1DAB25CC8(v30 > 1, v31 + 1, 1);
        }

        v32 = *(v0 + 1320);
        *(v45 + 16) = v31 + 1;
        sub_1DAAF5AA4(v32, v45 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v31);
        if (!i)
        {
          break;
        }

        v17 += 136;
      }

      v33 = *(v0 + 1392);
      v34 = *(v0 + 1352);
      v35 = *(v0 + 1344);
      v36 = *(v0 + 1336);

      sub_1DAB1F8FC(v36, v35);
    }

    else
    {
      v37 = *(v0 + 1352);
      v38 = *(v0 + 1344);
      v39 = *(v0 + 1336);
      v40 = *(v0 + 1392);

      sub_1DAB1F8FC(v39, v38);
      v16 = MEMORY[0x1E69E7CC0];
    }

    v41 = *(v0 + 1328);
    v42 = *(v0 + 1320);

    v43 = *(v0 + 8);

    return v43(v16);
  }
}

uint64_t sub_1DAB1E894()
{
  v2 = *v1;
  v3 = (*v1)[179];
  v9 = *v1;
  (*v1)[180] = v0;

  if (v0)
  {
    v4 = v2[178];

    v5 = sub_1DAB1F6A8;
  }

  else
  {
    v6 = v2[178];
    v7 = v2[169];
    sub_1DAB1F8FC(v2[167], v2[168]);

    __swift_destroy_boxed_opaque_existential_1(v2 + 137);
    v5 = sub_1DAB1E9E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1DAB1E9E0()
{
  v140 = v0;
  v1 = (v0 + 424);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1336);
  v6 = *(v0 + 1232);
  sub_1DAB1F8B8(v5, v4);
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();
  sub_1DAB1F8FC(v5, v4);

  v132 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 1352);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v139[0] = v11;
    *v10 = 136315394;
    sub_1DACB6ED4();
    v12 = sub_1DAA7ABE4(*(v0 + 1176), *(v0 + 1184), v139);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = *(v6 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      log = v11;
      v127 = v10;
      v129 = v8;
      v131 = v7;
      *&v137[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v13, 0);
      v14 = *&v137[0];
      v15 = *(*&v137[0] + 16);
      v16 = 16 * v15;
      v17 = (v6 + 40);
      do
      {
        v18 = *v17;
        v133 = *(v17 - 1);
        *&v137[0] = v14;
        v19 = v15 + 1;
        v20 = *(v14 + 24);
        v21 = v14;
        sub_1DACB71E4();
        v14 = v21;
        if (v15 >= v20 >> 1)
        {
          sub_1DAA5859C((v20 > 1), v19, 1);
          v14 = *&v137[0];
        }

        *(v14 + 16) = v19;
        v22 = v14 + v16;
        *(v22 + 32) = v133;
        *(v22 + 40) = v18;
        v16 += 16;
        v17 += 17;
        ++v15;
        --v13;
      }

      while (v13);
      v6 = v132;
      v7 = v131;
      v8 = v129;
      v11 = log;
      v10 = v127;
    }

    *(v0 + 1256) = v14;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8);
    v23 = sub_1DACB9214();
    v25 = v24;

    v26 = sub_1DAA7ABE4(v23, v25, v139);

    *(v10 + 14) = v26;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Filtering stocks against membership of watchlist='%s', watchlistStocks=[%s]", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v11, -1, -1);
    MEMORY[0x1E1278C00](v10, -1, -1);
  }

  v27 = 0;
  v28 = (v0 + 696);
  v29 = *(v0 + 1440);
  v30 = *(v0 + 1392) + 32;
  v31 = MEMORY[0x1E69E7CC0];
  v134 = v30;
  do
  {
    v32 = v30 + 136 * v27++;
    while (1)
    {
      if ((v27 - 1) >= *(*(v0 + 1392) + 16))
      {
        __break(1u);
        return;
      }

      *(v0 + 288) = *v32;
      v33 = *(v32 + 16);
      v34 = *(v32 + 32);
      v35 = *(v32 + 64);
      *(v0 + 336) = *(v32 + 48);
      *(v0 + 352) = v35;
      *(v0 + 304) = v33;
      *(v0 + 320) = v34;
      v36 = *(v32 + 80);
      v37 = *(v32 + 96);
      v38 = *(v32 + 112);
      v39 = *(v32 + 128);
      *(v0 + 416) = v39;
      *(v0 + 384) = v37;
      *(v0 + 400) = v38;
      *(v0 + 368) = v36;
      v40 = *(v0 + 336);
      *(v0 + 456) = *(v0 + 320);
      *(v0 + 472) = v40;
      v41 = *(v0 + 304);
      *v1 = *(v0 + 288);
      *(v0 + 440) = v41;
      *(v0 + 552) = v39;
      v42 = *(v0 + 400);
      *(v0 + 520) = *(v0 + 384);
      *(v0 + 536) = v42;
      v43 = *(v0 + 368);
      *(v0 + 488) = *(v0 + 352);
      *(v0 + 504) = v43;
      v44 = swift_task_alloc();
      *(v44 + 16) = v1;
      sub_1DAA806E4(v0 + 288, v0 + 560);
      v45 = sub_1DAC784F4(sub_1DAB1F940, v44, v6);

      if ((v45 & 1) == 0)
      {
        break;
      }

      v46 = *(v0 + 1400);
      sub_1DAA9B1C8(v0 + 288);
      v32 += 136;
      v47 = v27++ == v46;
      if (v47)
      {
        goto LABEL_22;
      }
    }

    *&v137[0] = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DAA57914(0, v31[2] + 1, 1);
      v31 = *&v137[0];
    }

    v49 = v31[2];
    v48 = v31[3];
    if (v49 >= v48 >> 1)
    {
      sub_1DAA57914((v48 > 1), v49 + 1, 1);
      v31 = *&v137[0];
    }

    v50 = *(v0 + 1400);
    v31[2] = v49 + 1;
    v51 = &v31[17 * v49];
    *(v51 + 2) = *(v0 + 288);
    v52 = *(v0 + 304);
    v53 = *(v0 + 320);
    v54 = *(v0 + 352);
    *(v51 + 5) = *(v0 + 336);
    *(v51 + 6) = v54;
    *(v51 + 3) = v52;
    *(v51 + 4) = v53;
    v55 = *(v0 + 368);
    v56 = *(v0 + 384);
    v57 = *(v0 + 400);
    v51[20] = *(v0 + 416);
    *(v51 + 8) = v56;
    *(v51 + 9) = v57;
    *(v51 + 7) = v55;
    v47 = v50 == v27;
    v6 = v132;
    v30 = v134;
  }

  while (!v47);
LABEL_22:
  v58 = *(v0 + 1392);
  v59 = *(v0 + 1360);
  v60 = *(v0 + 1352);
  v61 = *(v0 + 1344);
  v62 = *(v0 + 1336);

  sub_1DAB1F8B8(v62, v61);
  sub_1DACB71E4();
  sub_1DACB71F4();
  v63 = sub_1DACB8C74();
  v64 = sub_1DACB9914();
  sub_1DAB1F8FC(v62, v61);

  if (os_log_type_enabled(v63, v64))
  {
    v124 = v64;
    loga = v63;
    v65 = *(v0 + 1352);
    v66 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v139[0] = v123;
    *v66 = 136315650;
    sub_1DACB6ED4();
    v67 = sub_1DAA7ABE4(*(v0 + 1160), *(v0 + 1168), v139);

    *(v66 + 4) = v67;
    *(v66 + 12) = 2080;
    v68 = *(v6 + 16);
    v128 = v66;
    v130 = v31;
    if (v68)
    {
      *&v137[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v68, 0);
      v69 = 0;
      v70 = *&v137[0];
      v71 = *(*&v137[0] + 16);
      v72 = 16 * v71;
      do
      {
        v73 = *(v6 + v69 + 40);
        v135 = *(v6 + v69 + 32);
        *&v137[0] = v70;
        v74 = *(v70 + 24);
        v75 = v71 + 1;
        sub_1DACB71E4();
        if (v71 >= v74 >> 1)
        {
          sub_1DAA5859C((v74 > 1), v75, 1);
          v70 = *&v137[0];
        }

        *(v70 + 16) = v75;
        v76 = v70 + v72;
        v6 = v132;
        *(v76 + 32) = v135;
        *(v76 + 40) = v73;
        v72 += 16;
        v69 += 136;
        ++v71;
        --v68;
      }

      while (v68);

      v66 = v128;
      v31 = v130;
    }

    else
    {

      v70 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1240) = v70;
    sub_1DAA613E8();
    sub_1DAB1D924(&qword_1EE123E90, sub_1DAA613E8);
    v100 = sub_1DACB9214();
    v102 = v101;

    v103 = sub_1DAA7ABE4(v100, v102, v139);

    *(v66 + 14) = v103;
    *(v66 + 22) = 2080;
    v104 = v31[2];
    v105 = MEMORY[0x1E69E7CC0];
    if (v104)
    {
      *&v137[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v104, 0);
      v105 = *&v137[0];
      v106 = *(*&v137[0] + 16);
      v107 = 16 * v106;
      v108 = v31 + 5;
      do
      {
        v109 = *v108;
        v136 = *(v108 - 1);
        *&v137[0] = v105;
        v110 = v106 + 1;
        v111 = *(v105 + 24);
        sub_1DACB71E4();
        if (v106 >= v111 >> 1)
        {
          sub_1DAA5859C((v111 > 1), v110, 1);
          v105 = *&v137[0];
        }

        *(v105 + 16) = v110;
        v112 = v105 + v107;
        *(v112 + 32) = v136;
        *(v112 + 40) = v109;
        v107 += 16;
        v108 += 17;
        ++v106;
        --v104;
      }

      while (v104);
      v66 = v128;
      v31 = v130;
    }

    *(v0 + 1248) = v105;
    v113 = sub_1DACB9214();
    v115 = v114;

    v116 = sub_1DAA7ABE4(v113, v115, v139);

    *(v66 + 24) = v116;
    _os_log_impl(&dword_1DAA3F000, loga, v124, "Filtered stocks against membership of watchlist='%s', watchlistStocks=[%s], filteredStocks=[%s]", v66, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v123, -1, -1);
    MEMORY[0x1E1278C00](v66, -1, -1);

    v77 = v31[2];
    if (!v77)
    {
      goto LABEL_44;
    }

LABEL_30:
    v78 = *(v0 + 1312);
    v139[0] = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v77, 0);
    v79 = v139[0];
    v80 = v77 - 1;
    for (i = 4; ; i += 17)
    {
      v82 = *(v0 + 1328);
      *v28 = *&v31[i];
      v83 = *&v31[i + 8];
      v85 = *&v31[i + 2];
      v84 = *&v31[i + 4];
      *(v0 + 744) = *&v31[i + 6];
      *(v0 + 760) = v83;
      *(v0 + 712) = v85;
      *(v0 + 728) = v84;
      v87 = *&v31[i + 12];
      v86 = *&v31[i + 14];
      v88 = v31[i + 16];
      v89 = *&v31[i + 10];
      *(v0 + 824) = v88;
      *(v0 + 792) = v87;
      *(v0 + 808) = v86;
      *(v0 + 776) = v89;
      v90 = *(v0 + 808);
      v137[6] = *(v0 + 792);
      v137[7] = v90;
      v138 = v88;
      v91 = *(v0 + 744);
      v137[2] = *(v0 + 728);
      v137[3] = v91;
      v92 = *(v0 + 776);
      v137[4] = *(v0 + 760);
      v137[5] = v92;
      v93 = *(v0 + 712);
      v137[0] = *v28;
      v137[1] = v93;
      sub_1DAA806E4(v0 + 696, v0 + 832);
      SymbolEntity.init(from:)(v137, v82);
      v139[0] = v79;
      v95 = *(v79 + 16);
      v94 = *(v79 + 24);
      if (v95 >= v94 >> 1)
      {
        sub_1DAB25CC8(v94 > 1, v95 + 1, 1);
        v79 = v139[0];
      }

      v96 = *(v0 + 1328);
      *(v79 + 16) = v95 + 1;
      sub_1DAAF5AA4(v96, v79 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v95);
      if (!v80)
      {
        break;
      }

      --v80;
    }

    v97 = *(v0 + 1352);
    v98 = *(v0 + 1344);
    v99 = *(v0 + 1336);

    sub_1DAB1F8FC(v99, v98);
    goto LABEL_45;
  }

  v77 = v31[2];
  if (v77)
  {
    goto LABEL_30;
  }

LABEL_44:
  v117 = *(v0 + 1352);
  v118 = *(v0 + 1344);
  v119 = *(v0 + 1336);

  sub_1DAB1F8FC(v119, v118);
  v79 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v120 = *(v0 + 1328);
  v121 = *(v0 + 1320);

  v122 = *(v0 + 8);

  v122(v79);
}

uint64_t sub_1DAB1F3F8()
{
  v1 = v0[171];
  v2 = v0[169];
  v3 = v0[166];
  v4 = v0[165];
  sub_1DAB1F8FC(v0[167], v0[168]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 127);

  v5 = v0[1];
  v6 = v0[173];

  return v5();
}

uint64_t sub_1DAB1F498()
{
  v37 = v0;
  v1 = *(v0 + 1352);
  sub_1DAB1F8FC(*(v0 + 1336), *(v0 + 1344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1056));
  v2 = *(v0 + 1392);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 1312);
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v3, 0);
    v5 = v34;
    v6 = v2 + 32;
    for (i = v3 - 1; ; --i)
    {
      v8 = *(v0 + 1320);
      *(v0 + 16) = *v6;
      v9 = *(v6 + 64);
      v11 = *(v6 + 16);
      v10 = *(v6 + 32);
      *(v0 + 64) = *(v6 + 48);
      *(v0 + 80) = v9;
      *(v0 + 32) = v11;
      *(v0 + 48) = v10;
      v13 = *(v6 + 96);
      v12 = *(v6 + 112);
      v14 = *(v6 + 80);
      *(v0 + 144) = *(v6 + 128);
      *(v0 + 112) = v13;
      *(v0 + 128) = v12;
      *(v0 + 96) = v14;
      v15 = *(v6 + 112);
      v35[6] = *(v6 + 96);
      v35[7] = v15;
      v36 = *(v6 + 128);
      v16 = *(v6 + 48);
      v35[2] = *(v6 + 32);
      v35[3] = v16;
      v17 = *(v6 + 80);
      v35[4] = *(v6 + 64);
      v35[5] = v17;
      v18 = *(v6 + 16);
      v35[0] = *v6;
      v35[1] = v18;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      SymbolEntity.init(from:)(v35, v8);
      v20 = *(v34 + 16);
      v19 = *(v34 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DAB25CC8(v19 > 1, v20 + 1, 1);
      }

      v21 = *(v0 + 1320);
      *(v34 + 16) = v20 + 1;
      sub_1DAAF5AA4(v21, v34 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20);
      if (!i)
      {
        break;
      }

      v6 += 136;
    }

    v22 = *(v0 + 1392);
    v23 = *(v0 + 1352);
    v24 = *(v0 + 1344);
    v25 = *(v0 + 1336);

    sub_1DAB1F8FC(v25, v24);
  }

  else
  {
    v26 = *(v0 + 1352);
    v27 = *(v0 + 1344);
    v28 = *(v0 + 1336);
    v29 = *(v0 + 1392);

    sub_1DAB1F8FC(v28, v27);
    v5 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v0 + 1328);
  v31 = *(v0 + 1320);

  v32 = *(v0 + 8);

  return v32(v5);
}

uint64_t sub_1DAB1F6A8()
{
  v37 = v0;
  v1 = *(v0 + 1352);
  sub_1DAB1F8FC(*(v0 + 1336), *(v0 + 1344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1096));
  v2 = *(v0 + 1392);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 1312);
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DAB25CC8(0, v3, 0);
    v5 = v34;
    v6 = v2 + 32;
    for (i = v3 - 1; ; --i)
    {
      v8 = *(v0 + 1320);
      *(v0 + 16) = *v6;
      v9 = *(v6 + 64);
      v11 = *(v6 + 16);
      v10 = *(v6 + 32);
      *(v0 + 64) = *(v6 + 48);
      *(v0 + 80) = v9;
      *(v0 + 32) = v11;
      *(v0 + 48) = v10;
      v13 = *(v6 + 96);
      v12 = *(v6 + 112);
      v14 = *(v6 + 80);
      *(v0 + 144) = *(v6 + 128);
      *(v0 + 112) = v13;
      *(v0 + 128) = v12;
      *(v0 + 96) = v14;
      v15 = *(v6 + 112);
      v35[6] = *(v6 + 96);
      v35[7] = v15;
      v36 = *(v6 + 128);
      v16 = *(v6 + 48);
      v35[2] = *(v6 + 32);
      v35[3] = v16;
      v17 = *(v6 + 80);
      v35[4] = *(v6 + 64);
      v35[5] = v17;
      v18 = *(v6 + 16);
      v35[0] = *v6;
      v35[1] = v18;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      SymbolEntity.init(from:)(v35, v8);
      v20 = *(v34 + 16);
      v19 = *(v34 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DAB25CC8(v19 > 1, v20 + 1, 1);
      }

      v21 = *(v0 + 1320);
      *(v34 + 16) = v20 + 1;
      sub_1DAAF5AA4(v21, v34 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20);
      if (!i)
      {
        break;
      }

      v6 += 136;
    }

    v22 = *(v0 + 1392);
    v23 = *(v0 + 1352);
    v24 = *(v0 + 1344);
    v25 = *(v0 + 1336);

    sub_1DAB1F8FC(v25, v24);
  }

  else
  {
    v26 = *(v0 + 1352);
    v27 = *(v0 + 1344);
    v28 = *(v0 + 1336);
    v29 = *(v0 + 1392);

    sub_1DAB1F8FC(v28, v27);
    v5 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v0 + 1328);
  v31 = *(v0 + 1320);

  v32 = *(v0 + 8);

  return v32(v5);
}

uint64_t sub_1DAB1F8B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1DACB71E4();

    return sub_1DACB71F4();
  }

  return result;
}

uint64_t sub_1DAB1F8FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DAB1F940(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v3;
  v15 = *(a1 + 128);
  v4 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v4;
  v5 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v5;
  v6 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v6;
  v7 = *(v2 + 112);
  v12[6] = *(v2 + 96);
  v12[7] = v7;
  v13 = *(v2 + 128);
  v8 = *(v2 + 48);
  v12[2] = *(v2 + 32);
  v12[3] = v8;
  v9 = *(v2 + 80);
  v12[4] = *(v2 + 64);
  v12[5] = v9;
  v10 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v10;
  return sub_1DAA9B398(v14, v12) & 1;
}

void sub_1DAB1F9D0()
{
  if (!qword_1ECBE7078)
  {
    sub_1DAB1FA2C();
    v0 = sub_1DACB7314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7078);
    }
  }
}

unint64_t sub_1DAB1FA2C()
{
  result = qword_1EE11DD30;
  if (!qword_1EE11DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DD30);
  }

  return result;
}

uint64_t sub_1DAB1FAB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAA52F58(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAB1FB0C()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB1FB78()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[8])
  {
    v5 = v0[8];
  }

  else
  {
    v6 = v0[6];
    v7 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v6);
    v8 = v0;
    (*(v7 + 8))(v6, v7);
    v9 = *(v4 + 34);
    v10 = sub_1DAA640AC(v4);
    MEMORY[0x1EEE9AC00](v10);
    *(&v16 - 2) = v0;
    *(&v16 - 1) = v9;
    sub_1DAA65E94();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v5 = sub_1DACB8B44();
    v14 = v0[8];
    v8[8] = v5;
    sub_1DACB71F4();
  }

  sub_1DACB71F4();
  return v5;
}

uint64_t sub_1DAB1FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = a5;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = sub_1DAA98788;
  *(v14 + 56) = v12;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

void sub_1DAB1FDC4(void **a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v12 = [objc_allocWithZone(SCWDatabasePollingCondition) initWithMinIntervalSinceLastSync_];
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v16[4] = sub_1DAB20020;
  v16[5] = v14;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DAB10208;
  v16[3] = &block_descriptor_3;
  v15 = _Block_copy(v16);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v11 pollForChangesWithCondition:v12 completion:v15];
  _Block_release(v15);
}

void sub_1DAB1FF2C(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 64);
    *(Strong + 64) = 0;
  }

  if (a1)
  {
    v10 = a1;
    a3(a1);
  }

  else
  {
    a5(Strong);
  }
}

uint64_t sub_1DAB20030@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  if (a2)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  if (a4)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  *a7 = v7;
  a7[1] = v9;
  if (a6)
  {
    v12 = a5;
  }

  else
  {
    v12 = 0;
  }

  a7[2] = v10;
  a7[3] = v11;
  if (a6)
  {
    v8 = a6;
  }

  a7[4] = v12;
  a7[5] = v8;
  return result;
}

uint64_t sub_1DAB20068(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 << 40 == *a2 << 40)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DACBA174();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DAB200E0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB20144()
{
  v1 = *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB2018C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB201EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAB20E88();
  *a2 = result;
  return result;
}

uint64_t sub_1DAB20260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAB20E88();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB20288(uint64_t a1)
{
  v2 = sub_1DAB208D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB202C4(uint64_t a1)
{
  v2 = sub_1DAB208D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB20300@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAB20CFC(0, &qword_1EE123CB0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v41 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB208D8();
  sub_1DACBA2F4();
  if (!v2)
  {
    v54 = MEMORY[0x1E69E7CC0];
    v53 = 0;
    sub_1DACB9F84();
    v12 = v52;
    v48 = v51;
    if (v52)
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v47 = 0;
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[16 * v15];
      *(v16 + 4) = 0x78316567616D69;
      *(v16 + 5) = 0xE700000000000000;
      v54 = v13;
      swift_endAccess();
      v12 = v47;
    }

    v53 = 1;
    sub_1DACB9F84();
    v45 = v51;
    v46 = v52;
    if (!v52)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      if (v19 >= v18 >> 1)
      {
        v13 = sub_1DAA9A3B0((v18 > 1), v19 + 1, 1, v13);
      }

      *(v13 + 2) = v19 + 1;
      v20 = &v13[16 * v19];
      *(v20 + 4) = 0x78326567616D69;
      *(v20 + 5) = 0xE700000000000000;
      v54 = v13;
      swift_endAccess();
      v12 = v47;
    }

    LOBYTE(v51) = 2;
    sub_1DACB9F84();
    if (v50)
    {
      v43 = v50;
      v22 = v48;
      v44 = v49;
      v23 = *(v13 + 2);
      if (!v12)
      {
        v22 = 0;
      }

      v48 = v22;
      v24 = 0xE000000000000000;
      if (!v12)
      {
        v12 = 0xE000000000000000;
      }

      v25 = v45;
      if (v46)
      {
        v24 = v46;
      }

      else
      {
        v25 = 0;
      }

      v46 = v24;
      v47 = v25;
      if (!v23)
      {
        sub_1DAA41DCC();
        v36 = sub_1DACB9AD4();
        sub_1DACB9914();
        sub_1DACB8C64();
        goto LABEL_42;
      }

      v42 = v12;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v27 = *(v13 + 2);
      v26 = *(v13 + 3);
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v44 = v27 + 1;
        v40 = sub_1DAA9A3B0((v26 > 1), v27 + 1, 1, v13);
        v28 = v44;
        v13 = v40;
      }

      v44 = 0;
      *(v13 + 2) = v28;
      v29 = &v13[16 * v27];
      *(v29 + 4) = 0x78336567616D69;
      *(v29 + 5) = 0xE700000000000000;
      if (v12)
      {
        v30 = v48;
      }

      else
      {
        v30 = 0;
      }

      if (v12)
      {
        v31 = v12;
      }

      else
      {
        v31 = 0xE000000000000000;
      }

      v42 = v31;
      v33 = v45;
      v32 = v46;
      if (!v46)
      {
        v33 = 0;
      }

      v47 = v33;
      v48 = v30;
      v43 = 0xE000000000000000;
      if (!v46)
      {
        v32 = 0xE000000000000000;
      }

      v46 = v32;
    }

    sub_1DAA41D64();
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v34 + 56) = v35;
    *(v34 + 64) = sub_1DAAF691C();
    *(v34 + 32) = v13;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v36 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v12 = v42;
LABEL_42:

    (*(v7 + 8))(v10, v6);

    v37 = v47;
    *a2 = v48;
    a2[1] = v12;
    v38 = v46;
    a2[2] = v37;
    a2[3] = v38;
    v39 = v43;
    a2[4] = v44;
    a2[5] = v39;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAB208D8()
{
  result = qword_1EE124B00;
  if (!qword_1EE124B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124B00);
  }

  return result;
}

uint64_t sub_1DAB2092C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1DACBA174();
}

uint64_t sub_1DAB20A24(void *a1)
{
  sub_1DAB20CFC(0, &qword_1EE123BF8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB208D8();
  sub_1DACBA304();
  v19 = 0;
  v14 = v16[5];
  sub_1DACBA094();
  if (!v14)
  {
    v18 = 1;
    sub_1DACBA094();
    v17 = 2;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAB20C04(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1DACBA174();
}

void sub_1DAB20CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB208D8();
    v7 = a3(a1, &type metadata for MultiResolutionImage.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1DAB20D84()
{
  result = qword_1ECBE7080;
  if (!qword_1ECBE7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7080);
  }

  return result;
}

unint64_t sub_1DAB20DDC()
{
  result = qword_1EE124AF0;
  if (!qword_1EE124AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AF0);
  }

  return result;
}

unint64_t sub_1DAB20E34()
{
  result = qword_1EE124AF8;
  if (!qword_1EE124AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124AF8);
  }

  return result;
}

uint64_t sub_1DAB20E88()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAB20EF8()
{
  v0 = sub_1DACB7E44();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1DACB92E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = sub_1DACB9324();
  v12 = v11;
  sub_1DACB9284();
  (*(v3 + 16))(v7, v9, v2);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v13 = qword_1EE13E470;
  sub_1DACB7DF4();
  v14 = sub_1DACB9384();
  v16 = v15;
  (*(v3 + 8))(v9, v2);
  return WatchlistEntity.init(id:name:)(v10, v12, v14, v16, &qword_1ECBE7088);
}

uint64_t WatchlistEntity.init(id:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v8 = sub_1DACB78E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB7E44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1DACB92E4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = sub_1DACB7904();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1DAA8D89C(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v9 + 104))(v12, *MEMORY[0x1E6968DF0], v8);
  sub_1DACB7914();
  v19 = sub_1DACB6F34();
  a5[1] = a2;
  a5[2] = v19;
  *a5 = a1;
  v24 = v22;
  v25 = v23;
  return sub_1DACB6EE4();
}

uint64_t static WatchlistEntity.defaultWatchlistEntity.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECBE5A08 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1ECBE7090;
  v2 = qword_1ECBE7098;
  *a1 = qword_1ECBE7088;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71E4();

  return sub_1DACB71F4();
}

uint64_t WatchlistEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21430@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EC10 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECBE70A0;

  return sub_1DACB71F4();
}

uint64_t static WatchlistEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EC10 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECBE70A0;

  return sub_1DACB71F4();
}

uint64_t sub_1DAB21510@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A18 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE70A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static WatchlistEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A18 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE70A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB21660(uint64_t a1)
{
  v2 = sub_1DAADA468();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAB216AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x1E695A5F8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DAA94754;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1DAB21770(uint64_t a1)
{
  v2 = sub_1DAA8E0D0();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAB217BC()
{
  sub_1DAA8E498(0, &qword_1EE123AB0, sub_1DAADA3B0, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  qword_1ECBE70A0 = result;
  return result;
}

uint64_t sub_1DAB21850()
{
  v22 = MEMORY[0x1E6968E10];
  sub_1DAA8E498(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v21 = &v20 - v2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7354();
  __swift_allocate_value_buffer(v15, qword_1ECBE70A8);
  __swift_project_value_buffer(v15, qword_1ECBE70A8);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v3);
  sub_1DACB7914();
  v16 = *(v13 + 56);
  v13 += 56;
  v16(v21, 1, 1, v12);
  sub_1DAA8E498(0, &qword_1ECBE6D78, v22, MEMORY[0x1E69E6F90]);
  v17 = *(v13 + 16);
  v18 = (*(v13 + 24) + 32) & ~*(v13 + 24);
  *(swift_allocObject() + 16) = xmmword_1DACC4A00;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

unint64_t sub_1DAB21CB8()
{
  result = qword_1EE11F168;
  if (!qword_1EE11F168)
  {
    sub_1DAA8D89C(255, &qword_1EE11F160, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F168);
  }

  return result;
}

uint64_t sub_1DAB21D48()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21D78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21DA8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21DD8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21E08()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21E38()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21E68()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21E98()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21EC8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21EF8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21F28()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21F58()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21F88()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21FB8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB21FE8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB22018()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB22048()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  sub_1DACB71E4();
  return v1;
}

unint64_t sub_1DAB22078(char a1)
{
  result = 0x6D6E6F7269766E65;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 9:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 10:
    case 13:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAB22254(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAB22078(*a1);
  v5 = v4;
  if (v3 == sub_1DAB22078(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB222DC()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB22078(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB22340()
{
  sub_1DAB22078(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAB22394()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAB22078(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB223F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAB244A0();
  *a2 = result;
  return result;
}

unint64_t sub_1DAB22424@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAB22078(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAB2246C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAB244A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB224A0(uint64_t a1)
{
  v2 = sub_1DAB23770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB224DC(uint64_t a1)
{
  v2 = sub_1DAB23770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB22518@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAB24110(0, &qword_1EE123CA8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v87 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB23770();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v117 = MEMORY[0x1E69E7CC0];
  v116 = 0;
  sub_1DACB9F84();
  v12 = v115;
  v111 = v114;
  if (v115)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v110 = v7;
    v14 = a2;
    swift_beginAccess();
    v15 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v13 = v15;
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1DAA9A3B0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v13 + 2) = v17 + 1;
    v18 = &v13[16 * v17];
    *(v18 + 4) = 0x6D6E6F7269766E65;
    *(v18 + 5) = 0xEB00000000746E65;
    v117 = v13;
    swift_endAccess();
    a2 = v14;
    v12 = 0;
    v7 = v110;
  }

  v116 = 1;
  sub_1DACB9F84();
  v19 = v115;
  v108 = v114;
  if (!v115)
  {
    v109 = a2;
    v110 = v12;
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v21 = *(v13 + 2);
    v20 = *(v13 + 3);
    if (v21 >= v20 >> 1)
    {
      v13 = sub_1DAA9A3B0((v20 > 1), v21 + 1, 1, v13);
    }

    *(v13 + 2) = v21 + 1;
    v22 = &v13[16 * v21];
    *(v22 + 4) = 0xD000000000000017;
    *(v22 + 5) = 0x80000001DACE0F00;
    v117 = v13;
    swift_endAccess();
    v19 = 0;
    a2 = v109;
    v12 = v110;
  }

  v116 = 2;
  sub_1DACB9F84();
  v110 = v12;
  v24 = v115;
  v106 = v114;
  if (!v115)
  {
    v109 = a2;
    v107 = 0;
    swift_beginAccess();
    v25 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v27 = *(v13 + 2);
    v26 = *(v13 + 3);
    if (v27 >= v26 >> 1)
    {
      v13 = sub_1DAA9A3B0((v26 > 1), v27 + 1, 1, v13);
    }

    *(v13 + 2) = v27 + 1;
    v28 = &v13[16 * v27];
    *(v28 + 4) = 0xD000000000000015;
    *(v28 + 5) = 0x80000001DACE0F20;
    v117 = v13;
    swift_endAccess();
    v2 = v107;
    v19 = v25;
    a2 = v109;
  }

  v116 = 3;
  sub_1DACB9F84();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
LABEL_56:

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v104 = v114;
  v105 = v115;
  if (!v115)
  {
    v109 = a2;
    v107 = 0;
    swift_beginAccess();
    v29 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v31 = *(v13 + 2);
    v30 = *(v13 + 3);
    if (v31 >= v30 >> 1)
    {
      v13 = sub_1DAA9A3B0((v30 > 1), v31 + 1, 1, v13);
    }

    *(v13 + 2) = v31 + 1;
    v32 = &v13[16 * v31];
    *(v32 + 4) = 0xD000000000000010;
    *(v32 + 5) = 0x80000001DACE0F40;
    v117 = v13;
    swift_endAccess();
    v2 = v107;
    v19 = v29;
    a2 = v109;
  }

  v116 = 4;
  sub_1DACB9F84();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
LABEL_55:

    goto LABEL_56;
  }

  v102 = v114;
  v103 = v115;
  if (!v115)
  {
    v109 = a2;
    v107 = 0;
    swift_beginAccess();
    v33 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v35 = *(v13 + 2);
    v34 = *(v13 + 3);
    if (v35 >= v34 >> 1)
    {
      v13 = sub_1DAA9A3B0((v34 > 1), v35 + 1, 1, v13);
    }

    *(v13 + 2) = v35 + 1;
    v36 = &v13[16 * v35];
    *(v36 + 4) = 0xD000000000000018;
    *(v36 + 5) = 0x80000001DACE0F60;
    v117 = v13;
    swift_endAccess();
    v2 = v107;
    v19 = v33;
    a2 = v109;
  }

  v116 = 5;
  sub_1DACB9F84();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
LABEL_54:

    goto LABEL_55;
  }

  v100 = v114;
  v101 = v115;
  if (!v115)
  {
    v109 = a2;
    v107 = 0;
    swift_beginAccess();
    v37 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v39 = *(v13 + 2);
    v38 = *(v13 + 3);
    if (v39 >= v38 >> 1)
    {
      v13 = sub_1DAA9A3B0((v38 > 1), v39 + 1, 1, v13);
    }

    *(v13 + 2) = v39 + 1;
    v40 = &v13[16 * v39];
    *(v40 + 4) = 0xD000000000000012;
    *(v40 + 5) = 0x80000001DACE0F80;
    v117 = v13;
    swift_endAccess();
    v2 = v107;
    v19 = v37;
    a2 = v109;
  }

  v116 = 6;
  sub_1DACB9F84();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);

    goto LABEL_54;
  }

  v107 = v115;
  v98 = v114;
  if (!v115)
  {
    v99 = v24;
    v109 = a2;
    swift_beginAccess();
    v41 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v43 = *(v13 + 2);
    v42 = *(v13 + 3);
    if (v43 >= v42 >> 1)
    {
      v13 = sub_1DAA9A3B0((v42 > 1), v43 + 1, 1, v13);
    }

    *(v13 + 2) = v43 + 1;
    v44 = &v13[16 * v43];
    *(v44 + 4) = 0xD000000000000017;
    *(v44 + 5) = 0x80000001DACE0FA0;
    v117 = v13;
    swift_endAccess();
    v19 = v41;
    a2 = v109;
    v24 = v99;
  }

  v116 = 7;
  sub_1DACB9F84();
  v99 = v24;
  v109 = a2;
  v95 = v114;
  v96 = v115;
  v97 = v19;
  if (!v115)
  {
    swift_beginAccess();
    v45 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1DAA9A3B0((v46 > 1), v47 + 1, 1, v45);
    }

    v13 = v45;
    *(v45 + 2) = v47 + 1;
    v48 = &v45[16 * v47];
    *(v48 + 4) = 0xD000000000000019;
    *(v48 + 5) = 0x80000001DACE0FC0;
    v117 = v45;
    swift_endAccess();
  }

  v116 = 8;
  sub_1DACB9F84();
  v93 = v114;
  v94 = v115;
  if (!v115)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v50 = *(v13 + 2);
    v49 = *(v13 + 3);
    if (v50 >= v49 >> 1)
    {
      v13 = sub_1DAA9A3B0((v49 > 1), v50 + 1, 1, v13);
    }

    *(v13 + 2) = v50 + 1;
    v51 = &v13[16 * v50];
    *(v51 + 4) = 0xD000000000000024;
    *(v51 + 5) = 0x80000001DACE0FE0;
    v117 = v13;
    swift_endAccess();
  }

  v116 = 9;
  sub_1DACB9F84();
  v91 = v114;
  v92 = v115;
  if (!v115)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v53 = *(v13 + 2);
    v52 = *(v13 + 3);
    if (v53 >= v52 >> 1)
    {
      v13 = sub_1DAA9A3B0((v52 > 1), v53 + 1, 1, v13);
    }

    *(v13 + 2) = v53 + 1;
    v54 = &v13[16 * v53];
    *(v54 + 4) = 0xD000000000000018;
    *(v54 + 5) = 0x80000001DACE1010;
    v117 = v13;
    swift_endAccess();
  }

  LOBYTE(v114) = 10;
  sub_1DACB9F84();
  v89 = v112;
  v90 = v113;
  if (v113)
  {
    if (v110)
    {
      goto LABEL_77;
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
    }

    v64 = *(v13 + 2);
    v63 = *(v13 + 3);
    if (v64 >= v63 >> 1)
    {
      v13 = sub_1DAA9A3B0((v63 > 1), v64 + 1, 1, v13);
    }

    *(v13 + 2) = v64 + 1;
    v65 = &v13[16 * v64];
    *(v65 + 4) = 0xD000000000000014;
    *(v65 + 5) = 0x80000001DACE1030;
    if (v110)
    {
LABEL_77:
      if (v97)
      {
        goto LABEL_78;
      }

      goto LABEL_99;
    }
  }

  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v66 = sub_1DAA619A0();
  v110 = v67;
  v111 = v66;
  if (v97)
  {
LABEL_78:
    if (v99)
    {
      goto LABEL_79;
    }

    goto LABEL_100;
  }

LABEL_99:
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v108 = sub_1DAA61EDC();
  v97 = v68;
  if (v99)
  {
LABEL_79:
    if (v105)
    {
      goto LABEL_80;
    }

    goto LABEL_101;
  }

LABEL_100:
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v106 = sub_1DAA625DC();
  v99 = v69;
  if (v105)
  {
LABEL_80:
    if (v103)
    {
      goto LABEL_81;
    }

    goto LABEL_102;
  }

LABEL_101:
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v104 = sub_1DAA62758();
  v105 = v70;
  if (v103)
  {
LABEL_81:
    if (v101)
    {
      goto LABEL_82;
    }

LABEL_103:
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v100 = sub_1DAA62914();
    v101 = v72;
    if (v107)
    {
      goto LABEL_83;
    }

LABEL_104:
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v98 = sub_1DAA62A88();
    v107 = v73;
    goto LABEL_83;
  }

LABEL_102:
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v102 = sub_1DAA62758();
  v103 = v71;
  if (!v101)
  {
    goto LABEL_103;
  }

LABEL_82:
  if (!v107)
  {
    goto LABEL_104;
  }

LABEL_83:
  if (!v96)
  {
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v95 = sub_1DAA62C98();
    v96 = v55;
  }

  if (!v94)
  {
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v93 = sub_1DAA62E08();
    v94 = v56;
  }

  if (!v92)
  {
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v91 = sub_1DAA63458();
    v92 = v57;
  }

  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v87 = sub_1DAA635C8();
  v88 = v58;
  if (!v90)
  {
    v89 = sub_1DAA61EDC();
    v90 = v59;
  }

  if (*(v13 + 2))
  {
    sub_1DAA41D64();
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1DACC1D20;
    sub_1DAA613E8();
    *(v60 + 56) = v61;
    *(v60 + 64) = sub_1DAA618B8(&qword_1EE123E80, sub_1DAA613E8);
    *(v60 + 32) = v13;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v62 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();
  }

  else
  {
    sub_1DAA41DCC();
    v62 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();
  }

  (*(v7 + 8))(v10, v6);

  v74 = v109;
  v75 = v110;
  *v109 = v111;
  v74[1] = v75;
  v76 = v97;
  v74[2] = v108;
  v74[3] = v76;
  v77 = v99;
  v74[4] = v106;
  v74[5] = v77;
  v78 = v105;
  v74[6] = v104;
  v74[7] = v78;
  v79 = v103;
  v74[8] = v102;
  v74[9] = v79;
  v80 = v101;
  v74[10] = v100;
  v74[11] = v80;
  v81 = v107;
  v74[12] = v98;
  v74[13] = v81;
  v82 = v96;
  v74[14] = v95;
  v74[15] = v82;
  v83 = v94;
  v74[16] = v93;
  v74[17] = v83;
  v84 = v92;
  v74[18] = v91;
  v74[19] = v84;
  v85 = v88;
  v74[20] = v87;
  v74[21] = v85;
  v86 = v90;
  v74[22] = v89;
  v74[23] = v86;
  *(v74 + 15) = 0u;
  *(v74 + 16) = 0u;
  *(v74 + 13) = 0u;
  *(v74 + 14) = 0u;
  *(v74 + 12) = 0u;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAB23770()
{
  result = qword_1EE1249D0;
  if (!qword_1EE1249D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1249D0);
  }

  return result;
}

uint64_t sub_1DAB237C8(void *a1)
{
  sub_1DAB24110(0, &qword_1EE123BF0, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v32 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v32[28] = v1[3];
  v32[29] = v10;
  v11 = v1[4];
  v32[26] = v1[5];
  v32[27] = v11;
  v12 = v1[6];
  v32[24] = v1[7];
  v32[25] = v12;
  v13 = v1[8];
  v32[22] = v1[9];
  v32[23] = v13;
  v14 = v1[11];
  v32[20] = v1[10];
  v32[21] = v14;
  v15 = v1[13];
  v32[18] = v1[12];
  v32[19] = v15;
  v16 = v1[15];
  v32[16] = v1[14];
  v32[17] = v16;
  v17 = v1[17];
  v32[14] = v1[16];
  v32[15] = v17;
  v18 = v1[19];
  v32[12] = v1[18];
  v32[13] = v18;
  v19 = v1[23];
  v32[10] = v1[22];
  v32[11] = v19;
  v20 = v1[25];
  v32[8] = v1[24];
  v32[9] = v20;
  v21 = v1[27];
  v32[6] = v1[26];
  v32[7] = v21;
  v22 = v1[29];
  v32[4] = v1[28];
  v32[5] = v22;
  v23 = v1[31];
  v32[2] = v1[30];
  v32[3] = v23;
  v24 = v1[33];
  v32[1] = v1[32];
  v26 = a1[3];
  v25 = a1[4];
  v27 = a1;
  v29 = v28;
  __swift_project_boxed_opaque_existential_1(v27, v26);
  sub_1DAB23770();
  sub_1DACBA304();
  v34 = 0;
  v30 = v33;
  sub_1DACBA094();
  if (!v30)
  {
    v33 = v24;
    v34 = 1;
    sub_1DACBA094();
    v34 = 2;
    sub_1DACBA094();
    v34 = 3;
    sub_1DACBA094();
    v34 = 4;
    sub_1DACBA094();
    v34 = 5;
    sub_1DACBA094();
    v34 = 6;
    sub_1DACBA094();
    v34 = 7;
    sub_1DACBA094();
    v34 = 8;
    sub_1DACBA094();
    v34 = 9;
    sub_1DACBA094();
    v34 = 10;
    sub_1DACBA094();
    v34 = 11;
    sub_1DACBA024();
    v34 = 12;
    sub_1DACBA024();
    v34 = 13;
    sub_1DACBA024();
    v34 = 14;
    sub_1DACBA024();
    v34 = 15;
    sub_1DACBA024();
  }

  return (*(v4 + 8))(v7, v29);
}

uint64_t sub_1DAB23C84(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v65 = a1[7];
  v66 = a1[6];
  v63 = a1[9];
  v64 = a1[8];
  v59 = a1[11];
  v60 = a1[10];
  v55 = a1[13];
  v56 = a1[12];
  v51 = a1[15];
  v52 = a1[14];
  v47 = a1[17];
  v48 = a1[16];
  v43 = a1[19];
  v44 = a1[18];
  v39 = a1[21];
  v40 = a1[20];
  v35 = a1[23];
  v36 = a1[22];
  v28 = a1[24];
  v32 = a1[25];
  v30 = a1[27];
  v19 = a1[28];
  v25 = a1[29];
  v15 = a1[30];
  v22 = a1[31];
  v23 = a1[26];
  v13 = a1[32];
  v18 = a1[33];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v61 = a2[9];
  v62 = a2[8];
  v57 = a2[11];
  v58 = a2[10];
  v53 = a2[13];
  v54 = a2[12];
  v49 = a2[15];
  v50 = a2[14];
  v46 = a2[16];
  v45 = a2[17];
  v41 = a2[19];
  v42 = a2[18];
  v37 = a2[21];
  v38 = a2[20];
  v33 = a2[23];
  v34 = a2[22];
  v31 = a2[25];
  v24 = a2[26];
  v29 = a2[27];
  v26 = a2[29];
  v27 = a2[24];
  v20 = a2[28];
  v21 = a2[31];
  v14 = a2[32];
  v16 = a2[30];
  v17 = a2[33];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1DACBA174() & 1) == 0 || (v4 != v8 || v5 != v9) && (sub_1DACBA174() & 1) == 0 || (v66 != v10 || v65 != v11) && (sub_1DACBA174() & 1) == 0 || (v64 != v62 || v63 != v61) && (sub_1DACBA174() & 1) == 0 || (v60 != v58 || v59 != v57) && (sub_1DACBA174() & 1) == 0 || (v56 != v54 || v55 != v53) && (sub_1DACBA174() & 1) == 0 || (v52 != v50 || v51 != v49) && (sub_1DACBA174() & 1) == 0 || (v48 != v46 || v47 != v45) && (sub_1DACBA174() & 1) == 0 || (v44 != v42 || v43 != v41) && (sub_1DACBA174() & 1) == 0 || (v40 != v38 || v39 != v37) && (sub_1DACBA174() & 1) == 0 || (v36 != v34 || v35 != v33) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  if (v32)
  {
    if (!v31 || (v28 != v27 || v32 != v31) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  if (v30)
  {
    if (!v29 || (v23 != v24 || v30 != v29) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  if (v25)
  {
    if (!v26 || (v19 != v20 || v25 != v26) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v22)
  {
    if (!v21 || (v15 != v16 || v22 != v21) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v13 == v14 && v18 == v17 || (sub_1DACBA174() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

void sub_1DAB24110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB23770();
    v7 = a3(a1, &type metadata for EndpointConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB2417C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1DAB241C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EndpointConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EndpointConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAB2439C()
{
  result = qword_1ECBE70C0;
  if (!qword_1ECBE70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE70C0);
  }

  return result;
}

unint64_t sub_1DAB243F4()
{
  result = qword_1EE1249C0;
  if (!qword_1EE1249C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1249C0);
  }

  return result;
}

unint64_t sub_1DAB2444C()
{
  result = qword_1EE1249C8;
  if (!qword_1EE1249C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1249C8);
  }

  return result;
}

uint64_t sub_1DAB244A0()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAB24524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v51 = type metadata accessor for Chart.Entry(0);
  v14 = *(v51 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v51);
  v50 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  *a7 = a1;
  v20 = type metadata accessor for Chart(0);
  v21 = &a7[v20[5]];
  v48 = a2;
  sub_1DAA94848(a2, v21, sub_1DAA49610);
  v22 = &a7[v20[6]];
  *v22 = a3;
  v22[8] = a4 & 1;
  v23 = v20[7];
  v24 = sub_1DACB7F54();
  v43 = *(v24 - 8);
  v44 = v24;
  v25 = *(v43 + 16);
  v47 = a5;
  v25(&a7[v23], a5);
  v45 = v20;
  v26 = v20[8];
  v27 = sub_1DACB7CC4();
  v41 = *(v27 - 8);
  v42 = v27;
  v28 = *(v41 + 16);
  v49 = a7;
  v46 = a6;
  v28(&a7[v26], a6);
  v29 = *(a1 + 16);
  result = sub_1DACB71E4();
  v31 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v32 = 0;
    while (v32 < *(a1 + 16))
    {
      v33 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v34 = *(v14 + 72);
      sub_1DAA94848(a1 + v33 + v34 * v32, v19, type metadata accessor for Chart.Entry);
      v35 = &v19[*(v51 + 36)];
      if ((v35[8] & 1) != 0 || *v35 <= 0.0)
      {
        result = sub_1DAA853A4(v19, type metadata accessor for Chart.Entry);
      }

      else
      {
        sub_1DAB2729C(v19, v50, type metadata accessor for Chart.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAA83020(0, *(v31 + 16) + 1, 1);
          v31 = v52;
        }

        v38 = *(v31 + 16);
        v37 = *(v31 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1DAA83020(v37 > 1, v38 + 1, 1);
          v31 = v52;
        }

        *(v31 + 16) = v38 + 1;
        result = sub_1DAB2729C(v50, v31 + v33 + v38 * v34, type metadata accessor for Chart.Entry);
      }

      if (v29 == ++v32)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v39 = *(v31 + 16);

    (*(v41 + 8))(v46, v42);
    (*(v43 + 8))(v47, v44);
    result = sub_1DAA853A4(v48, sub_1DAA49610);
    v40 = &unk_1F567C260;
    if (!v39)
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    *(v49 + v45[9]) = v40;
  }

  return result;
}

int *sub_1DAB24900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12)
{
  v20 = sub_1DACB7CC4();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  result = type metadata accessor for Chart.Entry(0);
  v22 = a9 + result[5];
  *v22 = a2;
  *(v22 + 8) = a3 & 1;
  v23 = a9 + result[6];
  *v23 = a4;
  *(v23 + 8) = a5 & 1;
  v24 = a9 + result[7];
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  v25 = a9 + result[8];
  *v25 = a8;
  *(v25 + 8) = a10 & 1;
  v26 = a9 + result[9];
  *v26 = a11;
  *(v26 + 8) = a12 & 1;
  return result;
}

uint64_t sub_1DAB24A28()
{
  v1 = (v0 + *(type metadata accessor for Chart.Entry(0) + 20));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DAB24A54()
{
  v1 = (v0 + *(type metadata accessor for Chart.Entry(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DAB24A80()
{
  v1 = (v0 + *(type metadata accessor for Chart.Entry(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DAB24AAC()
{
  v1 = (v0 + *(type metadata accessor for Chart.Entry(0) + 36));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DAB24ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB274B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB24B04(uint64_t a1)
{
  v2 = sub_1DAA895A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB24B40(uint64_t a1)
{
  v2 = sub_1DAA895A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB24B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1DACB7CC4();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA86CA8(0, &qword_1EE11F5A8, sub_1DAA895A0, &type metadata for Chart.Entry.CodingKeys, MEMORY[0x1E69E6F48]);
  v39 = v6;
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Chart.Entry(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA895A0();
  v41 = v9;
  v15 = v42;
  sub_1DACBA2F4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v37;
  v17 = v38;
  v48 = 0;
  sub_1DAA804AC(&qword_1EE123A38, MEMORY[0x1E6969530]);
  sub_1DACB9FE4();
  (*(v17 + 32))(v13, v40, v3);
  v47 = 1;
  v18 = sub_1DACB9F54();
  v19 = &v13[v10[5]];
  *v19 = v18;
  v19[8] = v20 & 1;
  v46 = 2;
  v21 = sub_1DACB9F54();
  v22 = &v13[v10[6]];
  *v22 = v21;
  v22[8] = v23 & 1;
  v45 = 3;
  v24 = sub_1DACB9F54();
  v25 = &v13[v10[7]];
  *v25 = v24;
  v25[8] = v26 & 1;
  v44 = 4;
  v27 = sub_1DACB9F54();
  v28 = &v13[v10[8]];
  *v28 = v27;
  v28[8] = v29 & 1;
  v43 = 5;
  v30 = sub_1DACB9F54();
  v32 = v31;
  (*(v16 + 8))(v41, v39);
  v33 = &v13[v10[9]];
  *v33 = v30;
  v33[8] = v32 & 1;
  sub_1DAA94848(v13, v36, type metadata accessor for Chart.Entry);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DAA853A4(v13, type metadata accessor for Chart.Entry);
}

uint64_t sub_1DAB2501C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAB25088()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB250EC()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB25138@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DAB251F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Chart(0) + 28);
  v4 = sub_1DACB7F54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAB25270@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Chart(0) + 32);
  v4 = sub_1DACB7CC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAB252EC()
{
  v1 = *(v0 + *(type metadata accessor for Chart(0) + 36));

  return sub_1DACB71E4();
}

uint64_t sub_1DAB25324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB276B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB2534C(uint64_t a1)
{
  v2 = sub_1DAA86DB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB25388(uint64_t a1)
{
  v2 = sub_1DAA86DB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB253C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v39 = sub_1DACB7CC4();
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1DACB7F54();
  v38 = *(v42 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA49610();
  v41 = v7;
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA86CA8(0, &qword_1EE11F5B0, sub_1DAA86DB8, &type metadata for Chart.CodingKeys, MEMORY[0x1E69E6F48]);
  v44 = v11;
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for Chart(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA86DB8();
  v43 = v14;
  v20 = v45;
  sub_1DACBA2F4();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v22 = v40;
  v45 = v15;
  v23 = v42;
  sub_1DAA4932C(0, &qword_1EE11FAF0, type metadata accessor for Chart.Entry, MEMORY[0x1E69E62F8]);
  v46 = 0;
  sub_1DAA8713C(&qword_1EE11FAE0, &qword_1EE120488);
  sub_1DACB9FE4();
  *v18 = v47;
  LOBYTE(v47) = 1;
  sub_1DAA89828(&qword_1EE11FC38, &qword_1EE123A38);
  sub_1DACB9FE4();
  v24 = v21;
  v25 = v45;
  sub_1DAB2729C(v24, &v18[v45[5]], sub_1DAA49610);
  LOBYTE(v47) = 2;
  v26 = sub_1DACB9F54();
  v41 = a1;
  v27 = &v18[v25[6]];
  *v27 = v26;
  v27[8] = v28 & 1;
  LOBYTE(v47) = 3;
  sub_1DAA804AC(&qword_1EE1239F8, MEMORY[0x1E6969BC0]);
  v29 = v36;
  sub_1DACB9FE4();
  (*(v38 + 32))(&v18[v25[7]], v29, v23);
  LOBYTE(v47) = 4;
  sub_1DAA804AC(&qword_1EE123A38, MEMORY[0x1E6969530]);
  v30 = v35;
  v31 = v39;
  sub_1DACB9FE4();
  (*(v37 + 32))(&v18[v25[8]], v30, v31);
  sub_1DAA495C0(0, &qword_1EE11FAD8, &type metadata for Chart.Feature, MEMORY[0x1E69E62F8]);
  v46 = 5;
  sub_1DAA898B8(&qword_1EE11FAC8, sub_1DAB27304);
  sub_1DACB9FE4();
  (*(v22 + 8))(v43, v44);
  *&v18[v25[9]] = v47;
  sub_1DAA94848(v18, v34, type metadata accessor for Chart);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1DAA853A4(v18, type metadata accessor for Chart);
}

size_t sub_1DAB25BB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE11F530, type metadata accessor for NetworkEvent, type metadata accessor for NetworkEvent);
  *v3 = result;
  return result;
}

char *sub_1DAB25C08(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB25F78(a1, a2, a3, *v3, &qword_1ECBE70E8, &type metadata for FundHolding);
  *v3 = result;
  return result;
}

char *sub_1DAB25C38(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB25F78(a1, a2, a3, *v3, &qword_1ECBE70E0, &type metadata for FundSector);
  *v3 = result;
  return result;
}

char *sub_1DAB25C68(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB260B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25C88(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB261E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25CA8(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB2631C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DAB25CC8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1ECBE6A40, type metadata accessor for SymbolEntity, type metadata accessor for SymbolEntity);
  *v3 = result;
  return result;
}

void *sub_1DAB25D18(void *a1, int64_t a2, char a3)
{
  result = sub_1DAB26448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25D38(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB26594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DAB25D58(size_t a1, int64_t a2, char a3)
{
  result = sub_1DAB266B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25D78(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB268F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25D98(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB26A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25DB8(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB26B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25DD8(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB26C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DAB25DF8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE123B80, MEMORY[0x1E6968178], MEMORY[0x1E6968178]);
  *v3 = result;
  return result;
}

size_t sub_1DAB25E48(size_t a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE1252D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

char *sub_1DAB25E98(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB26D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DAB25EB8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1ECBE70F0, sub_1DAB278D0, sub_1DAB278D0);
  *v3 = result;
  return result;
}

size_t sub_1DAB25F08(size_t a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE123B78, MEMORY[0x1E6969680], MEMORY[0x1E6969680]);
  *v3 = result;
  return result;
}

char *sub_1DAB25F58(char *a1, int64_t a2, char a3)
{
  result = sub_1DAB26EC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAB25F78(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1DAA495C0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1DAB260B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11CF00, &type metadata for WatchlistEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB261E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB2631C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F480, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DAB26448(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1DAA4932C(0, &qword_1EE11F4B0, sub_1DAB279F4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1DAB279F4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB26594(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F500, &type metadata for NewsFeedFilterOptions.Option, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DAB266B8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1DAB27964();
  sub_1DAA86CA8(0, &qword_1ECBE7108, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E6959EE0]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1DAA86CA8(0, &qword_1ECBE7108, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E6959EE0]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_1DAB268F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11CEF8, &type metadata for CurrencyConversion, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB26A2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11CEE0, &type metadata for WatchlistWidgetEntity, MEMORY[0x1E69E6F90]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB26B50(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE123B30, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1DAB26C6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE123B28, MEMORY[0x1E69E7360], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1DAB26D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, qword_1EE1264F0, &type metadata for YahooMultiQuoteResponse, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DAB26EC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE1264E8, &type metadata for YahooQuoteDetailResponse, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_1DAB26FE4(uint64_t a1, uint64_t a2)
{
  if ((sub_1DACB7C64() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Chart.Entry(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if ((v27 & 1) == 0)
  {
    if (*v26 != *v28)
    {
      v29 = 1;
    }

    return (v29 & 1) == 0;
  }

  return (v29 & 1) != 0;
}

BOOL sub_1DAB27124(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1DAA931B0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Chart(0);
  v5 = v4[5];
  sub_1DACB7CC4();
  sub_1DAA804AC(&qword_1EE123A40, MEMORY[0x1E6969530]);
  if ((sub_1DACB9264() & 1) == 0)
  {
    return 0;
  }

  sub_1DAA49610();
  v7 = *(v6 + 36);
  if ((sub_1DACB9264() & 1) == 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if ((MEMORY[0x1E1275A20](a1 + v4[7], a2 + v4[7]) & 1) == 0)
  {
    return 0;
  }

  v13 = v4[8];
  if ((sub_1DACB7C64() & 1) == 0)
  {
    return 0;
  }

  v14 = v4[9];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);

  return sub_1DAC3701C(v15, v16);
}

uint64_t sub_1DAB2729C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAB27304()
{
  result = qword_1EE1203C0;
  if (!qword_1EE1203C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1203C0);
  }

  return result;
}

unint64_t sub_1DAB2735C()
{
  result = qword_1ECBE70C8;
  if (!qword_1ECBE70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE70C8);
  }

  return result;
}

unint64_t sub_1DAB2740C()
{
  result = qword_1ECBE70D0;
  if (!qword_1ECBE70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE70D0);
  }

  return result;
}

unint64_t sub_1DAB27464()
{
  result = qword_1ECBE70D8;
  if (!qword_1ECBE70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE70D8);
  }

  return result;
}

uint64_t sub_1DAB274B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657265666572 && a2 == 0xED00006574614465;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852141679 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736F6C63 && a2 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1751607656 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1DAB276B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656972746E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xED000065736F6C43 || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x695474656B72616DLL && a2 == 0xEE00656E6F5A656DLL || (sub_1DACBA174() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DACE3AF0 == a2 || (sub_1DACBA174() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1DAB278D0()
{
  if (!qword_1ECBE70F8)
  {
    type metadata accessor for SymbolEntity();
    sub_1DAA804AC(&qword_1EE123548, type metadata accessor for SymbolEntity);
    v0 = sub_1DACB6E34();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE70F8);
    }
  }
}

void sub_1DAB27964()
{
  if (!qword_1ECBE7100)
  {
    sub_1DAA86CA8(255, &qword_1ECBE7108, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E6959EE0]);
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7100);
    }
  }
}

void sub_1DAB279F4()
{
  if (!qword_1EE11FC50)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC50);
    }
  }
}

uint64_t sub_1DAB27A5C(__int128 *a1, uint64_t a2)
{
  v5 = sub_1DACB8FB4();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB9004();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[7];
  v42 = a1[6];
  v43 = v13;
  v44 = *(a1 + 16);
  v14 = a1[3];
  v38 = a1[2];
  v39 = v14;
  v15 = a1[5];
  v40 = a1[4];
  v41 = v15;
  v16 = a1[1];
  v36 = *a1;
  v37 = v16;
  v29[1] = *(v2 + 32);
  v17 = swift_allocObject();
  v18 = a1[4];
  *(v17 + 104) = a1[5];
  v19 = a1[7];
  *(v17 + 120) = a1[6];
  *(v17 + 136) = v19;
  v20 = *a1;
  *(v17 + 40) = a1[1];
  v21 = a1[3];
  *(v17 + 56) = a1[2];
  *(v17 + 72) = v21;
  *(v17 + 88) = v18;
  *(v17 + 16) = v2;
  v22 = *(a1 + 16);
  *(v17 + 24) = v20;
  *(v17 + 152) = v22;
  *(v17 + 160) = a2;
  v33[4] = sub_1DAB29DD8;
  v33[5] = v17;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 1107296256;
  v33[2] = sub_1DAA5796C;
  v33[3] = &block_descriptor_25;
  v23 = _Block_copy(v33);
  sub_1DACB71F4();
  sub_1DAA806E4(&v36, v34);
  sub_1DACB8FD4();
  *&v34[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v24 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v24);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v12, v8, v23);
  _Block_release(v23);
  (*(v32 + 8))(v8, v5);
  (*(v30 + 8))(v12, v31);

  v34[6] = v42;
  v34[7] = v43;
  v35 = v44;
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v34[5] = v41;
  v34[0] = v36;
  v34[1] = v37;
  sub_1DAA59E24(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  sub_1DAA806E4(&v36, v33);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB27E18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a2 + 112);
  v87 = *(a2 + 96);
  v88 = v6;
  v89 = *(a2 + 128);
  v7 = *(a2 + 48);
  v83 = *(a2 + 32);
  v84 = v7;
  v8 = *(a2 + 80);
  v85 = *(a2 + 64);
  v86 = v8;
  v9 = *(a2 + 16);
  v81 = *a2;
  v82 = v9;
  os_unfair_lock_lock((a1 + 16));
  v10 = *(a1 + 24);
  sub_1DACB71E4();
  v57 = a1;
  os_unfair_lock_unlock((a1 + 16));
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v58 = a3;
    v72.Kind = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v11, 0);
    Kind = v72.Kind;
    v14 = (v10 + 56);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v72.Kind = Kind;
      v18 = *(Kind + 16);
      v17 = *(Kind + 24);
      sub_1DACB71E4();
      if (v18 >= v17 >> 1)
      {
        sub_1DAA5859C((v17 > 1), v18 + 1, 1);
        Kind = v72.Kind;
      }

      *(Kind + 16) = v18 + 1;
      v19 = Kind + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v14 += 17;
      --v11;
    }

    while (v11);

    a3 = v58;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  os_unfair_lock_lock((v57 + 16));
  v20 = *(v57 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v57 + 16));
  ObjectType = sub_1DAAF0804(a2, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
    os_unfair_lock_lock((v57 + 16));
    v24 = *(v57 + 24);
    sub_1DACB71E4();
    os_unfair_lock_unlock((v57 + 16));
    v70 = v24;
    sub_1DAC96360(ObjectType, &v60);
    v78 = v66;
    v79 = v67;
    v80 = v68;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v77 = v65;
    v72 = v60;
    v73 = v61;
    sub_1DAA9B1C8(&v72);
    ObjectType = v70;
    os_unfair_lock_lock((v57 + 16));
    v25 = *(v57 + 24);

    *(v57 + 24) = ObjectType;
    os_unfair_lock_unlock((v57 + 16));
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  os_unfair_lock_lock((v57 + 16));
  ObjectType = *(v57 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v57 + 16));
  v26 = *(ObjectType + 16);
  if (v26 < a3)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_1DAA806E4(a2, &v72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = ObjectType;
  if (!isUniquelyReferenced_nonNull_native || v26 >= *(ObjectType + 24) >> 1)
  {
    ObjectType = sub_1DAA5A0A8(isUniquelyReferenced_nonNull_native, v26 + 1, 1, ObjectType);
    v71 = ObjectType;
  }

  v78 = v87;
  v79 = v88;
  v80 = v89;
  v74 = v83;
  v75 = v84;
  v76 = v85;
  v77 = v86;
  v72 = v81;
  v73 = v82;
  sub_1DACA6CC0(a3, a3, 1, &v72);
  sub_1DAA9B1C8(a2);
  os_unfair_lock_lock((v57 + 16));
  v28 = *(v57 + 24);

  *(v57 + 24) = ObjectType;
  os_unfair_lock_unlock((v57 + 16));
  os_unfair_lock_lock((v57 + 16));
  v29 = *(v57 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v57 + 16));
  v30 = *(v29 + 16);
  if (v30)
  {
    v60.Kind = v12;
    sub_1DAA5859C(0, v30, 0);
    v31 = v60.Kind;
    v32 = (v29 + 56);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      v60.Kind = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      sub_1DACB71E4();
      if (v36 >= v35 >> 1)
      {
        sub_1DAA5859C((v35 > 1), v36 + 1, 1);
        v31 = v60.Kind;
      }

      *(v31 + 16) = v36 + 1;
      v37 = v31 + 16 * v36;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v32 += 17;
      --v30;
    }

    while (v30);
  }

  result = swift_beginAccess();
  ObjectType = *(v57 + 40);
  if (ObjectType >> 62)
  {
LABEL_38:
    result = sub_1DACB9E14();
    v39 = result;
    if (result)
    {
      goto LABEL_22;
    }

LABEL_39:
  }

  v39 = *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_39;
  }

LABEL_22:
  if (v39 >= 1)
  {
    v59 = ObjectType & 0xC000000000000001;
    sub_1DACB71E4();
    v40 = 0;
    v55 = v39;
    v56 = ObjectType;
    while (1)
    {
      if (v59)
      {
        v41 = MEMORY[0x1E12777A0](v40, ObjectType);
      }

      else
      {
        v41 = *(ObjectType + 8 * v40 + 32);
        sub_1DACB71F4();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v42 = *(v41 + 24);
        ObjectType = swift_getObjectType();
        *(&v61 + 1) = type metadata accessor for StubWatchlistService();
        *&v62 = &off_1F5683C48;
        v60.Kind = v57;
        v43 = objc_allocWithZone(SCWWatchlistDiff);
        sub_1DACB71F4();
        v44 = sub_1DACB9634();
        v45 = sub_1DACB9634();
        v46 = [v43 initWithOldSymbols:v44 newSymbols:v45 updatedName:0 updatedSortState:0 updatedSortOrderState:0 updatedDisplayState:0];

        sub_1DAB29DE8();
        v47 = sub_1DACB9EA4();
        v48 = v46;
        sub_1DACB71F4();
        v49 = sub_1DAA4BF3C(1953719636, 0xE400000000000000);
        LOBYTE(v46) = v50;

        if (v46)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v47[(v49 >> 6) + 8] |= 1 << v49;
        v51 = (v47[6] + 16 * v49);
        *v51 = 1953719636;
        v51[1] = 0xE400000000000000;
        *(v47[7] + 8 * v49) = v48;

        v52 = v47[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_35;
        }

        v47[2] = v54;
        v69 = v47;
        (*(v42 + 8))(&v60, &v69, ObjectType, v42);

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(&v60.Kind);
        v39 = v55;
        ObjectType = v56;
      }

      else
      {
      }

      if (v39 == ++v40)
      {

        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB28448(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v5 = sub_1DACB8FB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DACB9004();
  v10 = *(v25 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v2 + 32);
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v22 = a2;
  v14[4] = a2;
  v31 = sub_1DAB29E60;
  v32 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1DAA5796C;
  v30 = &block_descriptor_31;
  v15 = _Block_copy(&aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v16);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v25);

  aBlock = v24;
  v28 = v22;
  sub_1DAA59E24(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB28784(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  os_unfair_lock_lock(a1 + 4);
  v6 = *(v5 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v5 + 16));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v57 = v5;
  if (v7)
  {
    v60[0] = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v7, 0);
    v9 = v60[0];
    v10 = (v6 + 56);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v60[0] = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      v15 = v9;
      sub_1DACB71E4();
      v9 = v15;
      if (v14 >= v13 >> 1)
      {
        sub_1DAA5859C((v13 > 1), v14 + 1, 1);
        v9 = v60[0];
      }

      *(v9 + 16) = v14 + 1;
      v16 = v9 + 16 * v14;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
      v10 += 17;
      --v7;
    }

    while (v7);

    v5 = v57;
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  os_unfair_lock_lock((v5 + 16));
  v17 = *(v5 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v5 + 16));
  v18 = (v17 + 56);
  v19 = *(v17 + 16) + 1;
  do
  {
    if (!--v19)
    {
    }

    if (*(v18 - 1) == a2 && *v18 == a3)
    {
      break;
    }

    v18 += 17;
  }

  while ((sub_1DACBA174() & 1) == 0);

  os_unfair_lock_lock((v5 + 16));
  v21 = *(v5 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v5 + 16));
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = (v21 + 56);
    while (1)
    {
      v25 = *(v24 - 1) == a2 && *v24 == a3;
      if (v25 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      ++v23;
      v24 += 17;
      if (v22 == v23)
      {
        goto LABEL_23;
      }
    }

    os_unfair_lock_lock((v5 + 16));
    v27 = *(v5 + 24);
    sub_1DACB71E4();
    os_unfair_lock_unlock((v5 + 16));
    v59[1] = v27;
    sub_1DAC96360(v23, v60);
    sub_1DAA9B1C8(v60);
    os_unfair_lock_lock((v5 + 16));
    v28 = *(v5 + 24);

    *(v5 + 24) = v27;
    os_unfair_lock_unlock((v5 + 16));
  }

  else
  {
LABEL_23:
  }

  os_unfair_lock_lock((v5 + 16));
  v29 = *(v5 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v5 + 16));
  v30 = *(v29 + 16);
  if (v30)
  {
    v60[0] = v8;
    sub_1DAA5859C(0, v30, 0);
    v31 = v60[0];
    v32 = (v29 + 56);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      v60[0] = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      sub_1DACB71E4();
      if (v36 >= v35 >> 1)
      {
        sub_1DAA5859C((v35 > 1), v36 + 1, 1);
        v31 = v60[0];
      }

      *(v31 + 16) = v36 + 1;
      v37 = v31 + 16 * v36;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v32 += 17;
      --v30;
    }

    while (v30);

    v5 = v57;
  }

  else
  {
  }

  result = swift_beginAccess();
  ObjectType = *(v5 + 40);
  if (ObjectType >> 62)
  {
    goto LABEL_51;
  }

  v39 = *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
LABEL_37:
    if (v39 < 1)
    {
      __break(1u);
      return result;
    }

    v58 = ObjectType & 0xC000000000000001;
    sub_1DACB71E4();
    v40 = 0;
    v55 = v39;
    v56 = ObjectType;
    while (1)
    {
      if (v58)
      {
        v41 = MEMORY[0x1E12777A0](v40, ObjectType);
      }

      else
      {
        v41 = *(ObjectType + 8 * v40 + 32);
        sub_1DACB71F4();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v42 = *(v41 + 24);
        ObjectType = swift_getObjectType();
        v60[3] = type metadata accessor for StubWatchlistService();
        v60[4] = &off_1F5683C48;
        v60[0] = v5;
        v43 = objc_allocWithZone(SCWWatchlistDiff);
        sub_1DACB71F4();
        v44 = sub_1DACB9634();
        v45 = sub_1DACB9634();
        v46 = [v43 initWithOldSymbols:v44 newSymbols:v45 updatedName:0 updatedSortState:0 updatedSortOrderState:0 updatedDisplayState:0];

        sub_1DAB29DE8();
        v47 = sub_1DACB9EA4();
        v48 = v46;
        sub_1DACB71F4();
        v49 = sub_1DAA4BF3C(1953719636, 0xE400000000000000);
        v5 = v50;

        if (v5)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          result = sub_1DACB9E14();
          v39 = result;
          if (!result)
          {
            break;
          }

          goto LABEL_37;
        }

        v47[(v49 >> 6) + 8] |= 1 << v49;
        v51 = (v47[6] + 16 * v49);
        *v51 = 1953719636;
        v51[1] = 0xE400000000000000;
        *(v47[7] + 8 * v49) = v48;

        v52 = v47[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_50;
        }

        v47[2] = v54;
        v59[0] = v47;
        (*(v42 + 8))(v60, v59, ObjectType, v42);

        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_1(v60);
        v5 = v57;
        v39 = v55;
        ObjectType = v56;
      }

      else
      {
      }

      if (v39 == ++v40)
      {
      }
    }
  }
}