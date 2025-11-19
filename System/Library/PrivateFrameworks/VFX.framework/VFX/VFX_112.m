uint64_t sub_1AF9B5320@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000070;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000058;
  *(v3 + 56) = v7 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 64) = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1AFE4C6B0;
  *(v8 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(32, 0, (v8 + 72));
  *(v8 + 144) = v9;
  *(v8 + 112) = xmmword_1AFE87170;
  *(v8 + 184) = v9;
  *(v8 + 152) = xmmword_1AFE87170;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v10 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24F0F10;
  a1[3] = &unk_1F24F0F40;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9B552C(uint64_t a1)
{
  sub_1AF0D4478(0, &qword_1EB641520);
  v2 = sub_1AFDFCEC8();
  v3 = NSSelectorFromString(v2);

  v4 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v4);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v5 = strcpy(v60, "_class(");
  v6 = sub_1AF3C4820(&unk_1F25056C0);
  sub_1AF9BE858(&unk_1F25056E0);
  v7 = sub_1AF931974(v5, 0xE700000000000000, v3, v6, 0xC0000000000000A0, a1);
  v9 = v8;

  v10 = sub_1AF9316FC(2036689700, 0xE400000000000000, 0xC0000000000000A0, v7, v9, a1);
  v12 = v11;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  strcpy(v60, "if (%3 > 0) {\n");
  HIBYTE(v60[1]) = -18;
  v14 = sub_1AF9B5C2C(a1, &unk_1F2505688, &unk_1F25056A8);
  sub_1AF441DD8();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = v14;
  v16 = v15 + 32;
  v17 = sub_1AFA56CA0(v15);
  swift_setDeallocating();
  sub_1AF974118(v16);
  sub_1AFA5413C(v17);

  v18 = sub_1AFAF888C();
  v20 = v19;

  MEMORY[0x1B2718AE0](v18, v20);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1AFE431C0;
  *(v21 + 32) = MEMORY[0x1E69E7CC0];
  v22 = v21 + 32;
  v23 = sub_1AFA56CA0(v21);
  swift_setDeallocating();
  sub_1AF974118(v22);
  sub_1AFA5413C(v23);

  sub_1AFAF888C();

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v24 = v60[0];
  v25 = v60[1];
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v24;
  *(v26 + 40) = v25;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  v27 = sub_1AFDFCEC8();
  v28 = NSSelectorFromString(v27);

  v29 = sub_1AF3C4820(&unk_1F25056F8);
  sub_1AF9BE858(&unk_1F2505718);
  v30 = sub_1AF931974(12581, 0xE200000000000000, v28, v29, 0xC000000000000000, a1);
  v32 = v31;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v33 = v32;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1AFE431C0;
  *(v34 + 32) = v30;
  *(v34 + 40) = v33;
  *(v34 + 48) = 0;
  *(v34 + 56) = 0;
  strcpy(v60, "if (%3 > 0) {\n");
  HIBYTE(v60[1]) = -18;
  sub_1AF0D4478(0, &qword_1EB641518);
  v35 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v35);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v36 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v37 = sub_1AF931974(0x287373616C635FLL, 0xE700000000000000, sel_commit, v36, 0xC000000000000000, a1);
  v39 = v38;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v40 = v37;
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1AFE431C0;
  *(v41 + 32) = v40;
  *(v41 + 40) = v39;
  *(v41 + 48) = 0;
  *(v41 + 56) = 0;
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1AFE431C0;
  *(v42 + 32) = v41;
  v43 = v42 + 32;
  v44 = sub_1AFA56CA0(v42);
  swift_setDeallocating();
  sub_1AF974118(v43);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_1AFE431C0;
  *(v45 + 32) = v44;
  v46 = v45 + 32;
  v47 = sub_1AFA56CA0(v45);
  swift_setDeallocating();
  sub_1AF974118(v46);
  sub_1AFA5413C(v47);

  v48 = sub_1AFAF888C();
  v50 = v49;

  MEMORY[0x1B2718AE0](v48, v50);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1AFE431C0;
  *(v51 + 32) = MEMORY[0x1E69E7CC0];
  v52 = v51 + 32;
  v53 = sub_1AFA56CA0(v51);
  swift_setDeallocating();
  sub_1AF974118(v52);
  sub_1AFA5413C(v53);

  sub_1AFAF888C();

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v54 = v60[0];
  v55 = v60[1];
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1AFE431C0;
  *(v56 + 32) = v54;
  *(v56 + 40) = v55;
  *(v56 + 48) = 0;
  *(v56 + 56) = 0;
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_1AFE4C6B0;
  *(v57 + 32) = inited;
  *(v57 + 40) = v26;
  *(v57 + 48) = v34;
  *(v57 + 56) = v56;
  v58 = sub_1AFA56CA0(v57);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v58;
}

uint64_t sub_1AF9B5C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF0D4478(0, &qword_1EB641518);
  v6 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v6);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v7 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v8 = sub_1AF931974(0x287373616C635FLL, 0xE700000000000000, sel_begin, v7, 0xC000000000000000, a1);
  v10 = v9;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v12 = sub_1AFDFCEC8();
  v13 = NSSelectorFromString(v12);

  v14 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v14);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v15 = sub_1AF3C4820(a2);
  sub_1AF9BE858(a3);
  v16 = sub_1AF931974(0x287373616C635FLL, 0xE700000000000000, v13, v15, 0xC000000000000000, a1);
  v18 = v17;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v19 = v16;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1AFE431C0;
  *(v20 + 32) = v19;
  *(v20 + 40) = v18;
  sub_1AF441DD8();
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1AFE4C620;
  *(v21 + 32) = inited;
  *(v21 + 40) = v20;
  v22 = sub_1AFA56CA0(v21);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v22;
}

uint64_t sub_1AF9B5F64@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6A0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000010;
  *(v3 + 56) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C430;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10;
  *(v3 + 64) = v9 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E6530];
  *(v12 + 64) = MEMORY[0x1E69E6530];
  *(v12 + 16) = xmmword_1AFE4C6A0;
  *(v12 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v12 + 72));
  *(v12 + 144) = v13;
  *(v12 + 112) = xmmword_1AFE87170;
  *(v12 + 184) = v13;
  *(v12 + 152) = xmmword_1AFE87170;
  *(v12 + 224) = v13;
  *(v12 + 192) = xmmword_1AFE87170;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v14 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v14;
  a1[2] = &unk_1F24EECF0;
  a1[3] = &unk_1F24EED20;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v12;
  return result;
}

uint64_t sub_1AF9B61E4(unsigned __int8 *a1)
{
  type metadata accessor for NilNode(0);
  v2 = swift_dynamicCastClass();
  v3 = *a1;
  if (v2)
  {
    v4 = sub_1AF9B6260(v3);
  }

  else
  {
    v4 = sub_1AF9B652C(v3);
  }

  v5 = sub_1AFA5413C(v4);

  return v5;
}

uint64_t sub_1AF9B6260(uint64_t a1)
{
  v2 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v3 = sub_1AF931974(12581, 0xE200000000000000, sel_physicsBody, v2, 0xC0000000000000A0, a1);
  v5 = v4;

  v6 = sub_1AF9316FC(6451236, 0xE300000000000000, 0xC0000000000000A0, v3, v5, a1);
  v8 = v7;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v10 = sub_1AFDFCEC8();
  v11 = NSSelectorFromString(v10);

  sub_1AF4442A8();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE4C620;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE4C430;
  *(v12 + 32) = v13 | 0x2000000000000000;
  *(v12 + 40) = 12837;
  *(v12 + 48) = 0xE200000000000000;
  *(v12 + 56) = xmmword_1AFE8B140;
  *(v12 + 72) = 0xE200000000000000;
  v14 = sub_1AF3C4820(v12);
  swift_setDeallocating();
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v15 = sub_1AF931974(6451236, 0xE300000000000000, v11, v14, 0xC000000000000000, a1);
  v17 = v16;

  v23 = v17;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v18 = v15;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = v18;
  *(v19 + 40) = v23;
  sub_1AF441DD8();
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1AFE4C620;
  *(v20 + 32) = inited;
  *(v20 + 40) = v19;
  v21 = sub_1AFA56CA0(v20);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v21;
}

uint64_t sub_1AF9B652C(uint64_t a1)
{
  v2 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v3 = sub_1AF931974(12581, 0xE200000000000000, sel_physicsBody, v2, 0xC0000000000000A0, a1);
  v5 = v4;

  v6 = sub_1AF9316FC(6451236, 0xE300000000000000, 0xC0000000000000A0, v3, v5, a1);
  v8 = v7;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v10 = sub_1AFDFCEC8();
  v11 = NSSelectorFromString(v10);

  sub_1AF4442A8();
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE4C620;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE4C430;
  *(v12 + 32) = v13 | 0x2000000000000000;
  *(v12 + 40) = 12837;
  *(v12 + 48) = 0xE200000000000000;
  *(v12 + 56) = xmmword_1AFE8B140;
  *(v12 + 72) = 0xE200000000000000;
  v14 = sub_1AF3C4820(v12);
  swift_setDeallocating();
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v15 = sub_1AF931974(6451236, 0xE300000000000000, v11, v14, 0xC000000000000000, a1);
  v17 = v16;

  v23 = v17;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v18 = v15;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = v18;
  *(v19 + 40) = v23;
  sub_1AF441DD8();
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1AFE4C620;
  *(v20 + 32) = inited;
  *(v20 + 40) = v19;
  v21 = sub_1AFA56CA0(v20);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v21;
}

uint64_t sub_1AF9B6840@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6A0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000058;
  *(v3 + 56) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000010;
  *(v3 + 64) = v9 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E6530];
  *(v10 + 64) = MEMORY[0x1E69E6530];
  *(v10 + 16) = xmmword_1AFE4C6A0;
  *(v10 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v10 + 72));
  *(v10 + 144) = v11;
  *(v10 + 112) = xmmword_1AFE87170;
  *(v10 + 184) = v11;
  *(v10 + 152) = xmmword_1AFE87170;
  *(v10 + 224) = v11;
  *(v10 + 192) = xmmword_1AFE87170;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v12 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v12;
  a1[2] = &unk_1F24EF2F0;
  a1[3] = &unk_1F24EF320;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v10;
  return result;
}

uint64_t sub_1AF9B6A98(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF931974(12581, 0xE200000000000000, sel_physicsBody, v3, 0xC0000000000000A0, a1);
  v6 = v5;

  v7 = sub_1AF9316FC(6451236, 0xE300000000000000, 0xC0000000000000A0, v4, v6, a1);
  v9 = v8;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C440;
  v47 = sub_1AF931868(v11 | 0x2000000000000000, 0, a1);
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C440;
  v46 = sub_1AF931868(v14 | 0x2000000000000000, 1, a1);
  v16 = v15;

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C440;
  v18 = sub_1AF931868(v17 | 0x2000000000000000, 2, a1);
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AFE4C440;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AFE4C440;
  if (v2)
  {
    v23 = sub_1AF94B594(a1, v22 | 0x2000000000000000);
    v25 = v24;
  }

  else
  {
    v26 = sub_1AF94B594(0, v22 | 0x2000000000000000);
    MEMORY[0x1B2718AE0](v26);

    v23 = 0x5F656B616DLL;
    v25 = 0xE500000000000000;
  }

  sub_1AFA557D0(v23, v25, 1, v47, v13, v46, v16, v18, v20);
  v28 = v27;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v29 = sub_1AF9316FC(0x657571726F7424, 0xE700000000000000, v21 | 0x2000000000000000, v23, v28, a1);
  v31 = v30;

  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1AFE431C0;
  *(v32 + 32) = v29;
  *(v32 + 40) = v31;
  *(v32 + 48) = 0;
  *(v32 + 56) = 0;
  v33 = sub_1AFDFCEC8();
  v34 = NSSelectorFromString(v33);

  sub_1AF4442A8();
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1AFE4C620;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1AFE4C440;
  *(v35 + 32) = v36 | 0x2000000000000000;
  *(v35 + 40) = 0x657571726F7424;
  *(v35 + 48) = 0xE700000000000000;
  *(v35 + 56) = xmmword_1AFE8B150;
  *(v35 + 72) = 0xE200000000000000;
  v37 = sub_1AF3C4820(v35);
  swift_setDeallocating();
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v38 = sub_1AF931974(6451236, 0xE300000000000000, v34, v37, 0xC000000000000000, a1);
  v40 = v39;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v41 = v38;
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1AFE431C0;
  *(v42 + 32) = v41;
  *(v42 + 40) = v40;
  sub_1AF441DD8();
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1AFE4C680;
  *(v43 + 32) = inited;
  *(v43 + 40) = v32;
  *(v43 + 48) = v42;
  v44 = sub_1AFA56CA0(v43);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v44;
}

uint64_t sub_1AF9B6F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x1B2718AE0]();
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 12837;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  MEMORY[0x1B2718AE0](a3, a4);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = 12837;
  *(v11 + 40) = 0xE200000000000000;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  MEMORY[0x1B2718AE0](a5, a6);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  *(v12 + 32) = 12837;
  *(v12 + 40) = 0xE200000000000000;
  sub_1AF441DD8();
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  v13 = swift_initStackObject();
  *(v13 + 32) = inited;
  *(v13 + 16) = xmmword_1AFE4C6B0;
  *(v13 + 40) = v11;
  *(v13 + 48) = v12;
  *(v13 + 56) = &unk_1F2504C00;
  v14 = sub_1AFA56CA0(v13);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_1AF9B71BC(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v5 = sub_1AF931974(12581, 0xE200000000000000, sel_clone, v4, 0xC000000000000018, a1);
  v7 = v6;

  v8 = sub_1AF9316FC(0x79706F6324, 0xE500000000000000, 0xC000000000000018, v5, v7, a1);
  v10 = v9;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v12 = sub_1AF3C4820(v3);
  v13 = sub_1AF931974(12581, 0xE200000000000000, sel_parentNode, v12, 0xC000000000000018, a1);
  v15 = v14;

  v16 = sub_1AF9316FC(0x746E6572617024, 0xE700000000000000, 0xC000000000000018, v13, v15, a1);
  v18 = v17;

  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  *(v19 + 48) = 0;
  *(v19 + 56) = 0;
  MEMORY[0x1B2718AE0](540884256, 0xE400000000000000);
  if (v2 == 3)
  {
    v20 = 1819047278;
  }

  else
  {
    v20 = 1280070990;
  }

  MEMORY[0x1B2718AE0](v20, 0xE400000000000000);
  MEMORY[0x1B2718AE0](0x746E6572617024, 0xE700000000000000);

  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v21 = sub_1AF9B82E4(a1, 0xC000000000000018);
  sub_1AF441DD8();
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AFE431C0;
  *(v22 + 32) = v21;
  v23 = v22 + 32;
  v24 = sub_1AFA56CA0(v22);
  swift_setDeallocating();
  sub_1AF974118(v23);
  sub_1AFA5413C(v24);

  v25 = sub_1AFAF888C();
  v27 = v26;

  MEMORY[0x1B2718AE0](v25, v27);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1AFE431C0;
  *(v28 + 32) = MEMORY[0x1E69E7CC0];
  v29 = v28 + 32;
  v30 = sub_1AFA56CA0(v28);
  swift_setDeallocating();
  sub_1AF974118(v29);
  sub_1AFA5413C(v30);

  sub_1AFAF888C();

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1AFE431C0;
  *(v31 + 32) = 673212009;
  *(v31 + 40) = 0xE400000000000000;
  *(v31 + 48) = 0;
  *(v31 + 56) = 0;
  v32 = sub_1AF3C4820(&unk_1F2505840);
  sub_1AF9BE858(&unk_1F2505860);
  v33 = sub_1AF931974(0x746E6572617024, 0xE700000000000000, sel_addChildNode_, v32, 0xC000000000000000, a1);
  v35 = v34;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v36 = v33;
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1AFE431C0;
  *(v37 + 32) = v36;
  *(v37 + 40) = v35;
  *(v37 + 48) = 0;
  *(v37 + 56) = 0;
  v38 = sub_1AF9316FC(3240485, 0xE300000000000000, 0xC000000000000018, 0x79706F6324, 0xE500000000000000, a1);
  v40 = v39;
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1AFE431C0;
  *(v41 + 32) = v38;
  *(v41 + 40) = v40;
  *(v41 + 48) = 0;
  *(v41 + 56) = 0;
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1AFE4C6A0;
  *(v42 + 32) = inited;
  *(v42 + 40) = v19;
  *(v42 + 48) = v31;
  *(v42 + 56) = v37;
  *(v42 + 64) = v41;
  v43 = sub_1AFA56CA0(v42);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v43;
}

uint64_t sub_1AF9B7708@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000010;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C680;
  *(v7 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(34, 0, (v7 + 72));
  *(v7 + 144) = v8;
  *(v7 + 112) = xmmword_1AFE87170;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C620;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000008;
  *(v9 + 32) = v10 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000A0;
  *(v9 + 40) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24F15F8;
  a1[3] = &unk_1F24F1628;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9B7904(uint64_t a1)
{
  v2 = sub_1AFDFCEC8();
  v3 = NSSelectorFromString(v2);

  v4 = sub_1AF3C4820(&unk_1F2505808);
  sub_1AF9BE858(&unk_1F2505828);
  v5 = sub_1AF931974(12581, 0xE200000000000000, v3, v4, 0xC0000000000000A0, a1);
  v7 = v6;

  v8 = sub_1AF9316FC(3240485, 0xE300000000000000, 0xC0000000000000A0, v5, v7, a1);
  v10 = v9;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  *(v12 + 32) = inited;
  v13 = v12 + 32;
  v14 = sub_1AFA56CA0(v12);
  swift_setDeallocating();
  sub_1AF974118(v13);
  return v14;
}

uint64_t sub_1AF9B7AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C620;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000008;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC0000000000000A0;
  *(v7 + 40) = v9 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v6);
  v10 = swift_allocObject();
  *(v10 + 64) = MEMORY[0x1E69E6530];
  *(v10 + 16) = xmmword_1AFE4C620;
  *(v10 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v10 + 72));
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C620;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000008;
  *(v11 + 32) = v12 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000A0;
  *(v11 + 40) = result | 0x8000000000000000;
  *a3 = v7;
  a3[1] = v11;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = MEMORY[0x1E69E7CC0];
  a3[5] = v10;
  return result;
}

uint64_t sub_1AF9B7C90(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1AFDFCEC8();
  v4 = NSSelectorFromString(v3);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v7 = sub_1AF931974(12581, 0xE200000000000000, v4, v6, 0xC0000000000000A0, a1);
  v9 = v8;

  v10 = sub_1AF9316FC(0x79706F6324, 0xE500000000000000, 0xC0000000000000A0, v7, v9, a1);
  v12 = v11;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v10;
  *(inited + 40) = v12;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v14 = sub_1AF3C4820(v5);
  v15 = sub_1AF931974(12581, 0xE200000000000000, sel_parentNode, v14, 0xC0000000000000A0, a1);
  v17 = v16;

  v18 = sub_1AF937FF8(a1, 0xC0000000000000A0);
  v19 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xC0000000000000A0;
  }

  if (v2 == 3)
  {
    strcpy(v57, "let $parent = ");
    HIBYTE(v57[1]) = -18;
    MEMORY[0x1B2718AE0](v15, v17);
    MEMORY[0x1B2718AE0](59, 0xE100000000000000);

    sub_1AF914F8C(v19);
    v21 = v57[0];
    v22 = v57[1];
    v23 = 1819047278;
  }

  else
  {
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    v24 = sub_1AF937FF8(a1, v20);
    if ((~v24 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v20);
      v24 = v20;
    }

    v25 = sub_1AF94B594(a1, v24);
    v27 = v26;
    sub_1AF445BE4(v24);
    MEMORY[0x1B2718AE0](v25, v27);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x746E6572617024, 0xE700000000000000);
    MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
    MEMORY[0x1B2718AE0](v15, v17);
    MEMORY[0x1B2718AE0](59, 0xE100000000000000);

    sub_1AF914F8C(v19);
    v21 = v57[0];
    v22 = v57[1];
    v23 = 1280070990;
  }

  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1AFE431C0;
  *(v28 + 32) = v21;
  *(v28 + 40) = v22;
  *(v28 + 48) = 0;
  *(v28 + 56) = 0;
  MEMORY[0x1B2718AE0](540884256, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v23, 0xE400000000000000);
  v29 = strcpy(v57, "$parent");
  v57[0] = 673212009;
  v57[1] = 0xE400000000000000;
  MEMORY[0x1B2718AE0](v29, 0xE700000000000000);

  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v30 = sub_1AF9B82E4(a1, 0xC0000000000000A0);
  sub_1AF441DD8();
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1AFE431C0;
  *(v31 + 32) = v30;
  v32 = v31 + 32;
  v33 = sub_1AFA56CA0(v31);
  swift_setDeallocating();
  sub_1AF974118(v32);
  sub_1AFA5413C(v33);

  v34 = sub_1AFAF888C();
  v36 = v35;

  MEMORY[0x1B2718AE0](v34, v36);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1AFE431C0;
  *(v37 + 32) = MEMORY[0x1E69E7CC0];
  v38 = v37 + 32;
  v39 = sub_1AFA56CA0(v37);
  swift_setDeallocating();
  sub_1AF974118(v38);
  sub_1AFA5413C(v39);

  sub_1AFAF888C();

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v40 = v57[0];
  v41 = v57[1];
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1AFE431C0;
  *(v42 + 32) = v40;
  *(v42 + 40) = v41;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;
  v43 = sub_1AF3C4820(&unk_1F2505558);
  sub_1AF9BE858(&unk_1F2505578);
  v44 = sub_1AF931974(0x746E6572617024, 0xE700000000000000, sel_addChildNode_, v43, 0xC000000000000000, a1);
  v46 = v45;

  v57[1] = v46;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v47 = v44;
  v48 = v57[1];
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1AFE431C0;
  *(v49 + 32) = v47;
  *(v49 + 40) = v48;
  *(v49 + 48) = 0;
  *(v49 + 56) = 0;
  v50 = sub_1AF9316FC(3240485, 0xE300000000000000, 0xC0000000000000A0, 0x79706F6324, 0xE500000000000000, a1);
  v52 = v51;
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1AFE431C0;
  *(v53 + 32) = v50;
  *(v53 + 40) = v52;
  *(v53 + 48) = 0;
  *(v53 + 56) = 0;
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1AFE4C6A0;
  *(v54 + 32) = inited;
  *(v54 + 40) = v28;
  *(v54 + 48) = v42;
  *(v54 + 56) = v49;
  *(v54 + 64) = v53;
  v55 = sub_1AFA56CA0(v54);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v55;
}

uint64_t sub_1AF9B82E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AFDFCEC8();
  v5 = NSSelectorFromString(v4);

  v6 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v7 = sub_1AF931974(12581, 0xE200000000000000, v5, v6, a2, a1);
  v9 = v8;

  MEMORY[0x1B2718AE0](v7, v9);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x20746E6572617024;
  *(inited + 40) = 0xEA0000000000203DLL;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = inited;
  v12 = v11 + 32;
  v13 = sub_1AFA56CA0(v11);
  swift_setDeallocating();
  sub_1AF974118(v12);
  return v13;
}

uint64_t sub_1AF9B84A8@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C620;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000A0;
  *(v4 + 40) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  v7 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24ED428;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9B85C8(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1AF0D4478(0, &qword_1ED72F7F0);
  v2 = sub_1AFDFCEC8();
  v3 = NSSelectorFromString(v2);

  v4 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v4);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v5 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v6 = sub_1AF931974(0x287373616C635FLL, 0xE700000000000000, v3, v5, 0xC0000000000000A0, v1);
  v8 = v7;

  v9 = sub_1AF9316FC(3240485, 0xE300000000000000, 0xC0000000000000A0, v6, v8, v1);

  return v9;
}

uint64_t sub_1AF9B874C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC0000000000000A0;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000040;
  *(v3 + 56) = v7 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 64) = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1AFE4C6B0;
  *(v8 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v8 + 72));
  sub_1AF9708B8(25, 0, (v8 + 112));
  *(v8 + 184) = v9;
  *(v8 + 152) = xmmword_1AFE87170;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v10 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24EE5D0;
  a1[3] = &unk_1F24EE600;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9B8958(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF931974(12581, 0xE200000000000000, sel_childNodes, v3, 0xC0000000000000A0, a1);
  v6 = v5;

  v7 = sub_1AF9316FC(0x6572646C69686324, 0xE90000000000006ELL, 0xC0000000000000A0, v4, v6, a1);
  v9 = v8;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v11 = sub_1AFDFCEC8();
  v12 = NSSelectorFromString(v11);

  v13 = sub_1AF3C4820(v2);
  v14 = sub_1AF931974(0x6572646C69686324, 0xE90000000000006ELL, v12, v13, 0xC000000000000040, a1);
  v16 = v15;

  v17 = sub_1AF9316FC(0x6F43646C69686324, 0xEB00000000746E75, 0xC000000000000040, v14, v16, a1);
  v19 = v18;

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1AFE431C0;
  *(v20 + 32) = v17;
  *(v20 + 40) = v19;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF421F0);
  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v21 = sub_1AF9B8DD4(a1);
  sub_1AF441DD8();
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AFE431C0;
  *(v22 + 32) = v21;
  v23 = v22 + 32;
  v24 = sub_1AFA56CA0(v22);
  swift_setDeallocating();
  sub_1AF974118(v23);
  sub_1AFA5413C(v24);

  v25 = sub_1AFAF888C();
  v27 = v26;

  MEMORY[0x1B2718AE0](v25, v27);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v28 = sub_1AF9B8F20(a1);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1AFE431C0;
  *(v29 + 32) = v28;

  v30 = sub_1AFA56CA0(v29);
  swift_setDeallocating();
  sub_1AF974118(v29 + 32);
  sub_1AFA5413C(v30);

  v31 = sub_1AFAF888C();
  v33 = v32;

  v34 = *(v28 + 16);

  if (v34)
  {
    MEMORY[0x1B2718AE0](0xA7B2065736C6520, 0xE800000000000000);
    MEMORY[0x1B2718AE0](v31, v33);

    v35 = 2685;
    v36 = 0xE200000000000000;
  }

  else
  {

    v35 = 10;
    v36 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v35, v36);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1AFE431C0;
  *(v37 + 32) = 673212009;
  *(v37 + 40) = 0xE400000000000000;
  *(v37 + 48) = 0;
  *(v37 + 56) = 0;
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1AFE4C680;
  *(v38 + 32) = inited;
  *(v38 + 40) = v20;
  *(v38 + 48) = v37;
  v39 = sub_1AFA56CA0(v38);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v39;
}

uint64_t sub_1AF9B8DD4(uint64_t a1)
{
  v2 = sub_1AF3C4820(&unk_1F2506B98);
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v3 = sub_1AF931974(12581, 0xE200000000000000, sel_insertChildNode_atIndex_, v2, 0xC0000000000000A0, a1);
  v5 = v4;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v6 = v3;
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = inited;
  v9 = v8 + 32;
  v10 = sub_1AFA56CA0(v8);
  swift_setDeallocating();
  sub_1AF974118(v9);
  return v10;
}

uint64_t sub_1AF9B8F20(uint64_t a1)
{
  v2 = sub_1AF3C4820(&unk_1F2506BE8);
  sub_1AF9BE858(&unk_1F2506C08);
  v3 = sub_1AF931974(12581, 0xE200000000000000, sel_addChildNode_, v2, 0xC0000000000000A0, a1);
  v5 = v4;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v6 = v3;
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = inited;
  v9 = v8 + 32;
  v10 = sub_1AFA56CA0(v8);
  swift_setDeallocating();
  sub_1AF974118(v9);
  return v10;
}

uint64_t sub_1AF9B90B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C620;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000008;
  *(v9 + 32) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC0000000000000A0;
  *(v9 + 40) = v11 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v8);
  v12 = swift_allocObject();
  *(v12 + 64) = MEMORY[0x1E69E6530];
  *(v12 + 16) = xmmword_1AFE4C620;
  *(v12 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(a1, 0, (v12 + 72));
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v13 + 32) = result | 0x8000000000000000;
  *a4 = v9;
  a4[1] = v13;
  a4[2] = a2;
  a4[3] = a3;
  a4[4] = MEMORY[0x1E69E7CC0];
  a4[5] = v12;
  return result;
}

uint64_t sub_1AF9B9260(unsigned __int8 *a1, const char **a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v5 = sub_1AF931974(12581, 0xE200000000000000, v2, v4, 0xC000000000000000, v3);

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  return v5;
}

uint64_t sub_1AF9B933C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000A0;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000070;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  sub_1AF9708B8(25, 0, (v6 + 32));
  *(v6 + 104) = MEMORY[0x1E69E6530];
  *(v6 + 72) = xmmword_1AFE87170;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000A0;
  *(v7 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v7;
  a1[2] = &unk_1F24ED3B8;
  a1[3] = &unk_1F24ED3E8;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF9B94D0(unsigned __int8 *a1)
{
  v1 = sub_1AF9BE964(*a1, *a1);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

uint64_t sub_1AF9B9580(unsigned __int8 *a1)
{
  type metadata accessor for NilNode(0);
  v2 = swift_dynamicCastClass();
  if (!swift_dynamicCastClass())
  {
    if (!v2)
    {
      v3 = *a1;
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1AFE4C430;
      v16 = sel_convertPosition_toNode_;
      sub_1AF4442A8();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE4C620;
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AFE4C430;
      *(inited + 32) = v28 | 0x2000000000000000;
      *(inited + 40) = 12325;
      *(inited + 48) = 0xE200000000000000;
      *(inited + 56) = xmmword_1AFE8B170;
      *(inited + 72) = 0xE200000000000000;
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1AFE4C430;
      v20 = sub_1AF3C4820(inited);
      swift_setDeallocating();
      sub_1AF9BE8B4();
      swift_arrayDestroy();
      v21 = v29 | 0x2000000000000000;
      v22 = 12581;
      goto LABEL_8;
    }

LABEL_7:
    v3 = *a1;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1AFE4C430;
    v16 = sel_convertPosition_fromNode_;
    sub_1AF4442A8();
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1AFE4C620;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE4C430;
    *(v17 + 32) = v18 | 0x2000000000000000;
    *(v17 + 40) = 12325;
    *(v17 + 48) = 0xE200000000000000;
    *(v17 + 56) = xmmword_1AFE8B160;
    *(v17 + 72) = 0xE200000000000000;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AFE4C430;
    v20 = sub_1AF3C4820(v17);
    swift_setDeallocating();
    sub_1AF9BE8B4();
    swift_arrayDestroy();
    v21 = v19 | 0x2000000000000000;
    v22 = 12837;
LABEL_8:
    v23 = sub_1AF931974(v22, 0xE200000000000000, v16, v20, v21, v3);
    v12 = v24;

    v13 = v15 | 0x2000000000000000;
    v14 = v23;
    goto LABEL_9;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  sub_1AF4442A8();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE4C620;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C430;
  *(v5 + 32) = v6 | 0x2000000000000000;
  *(v5 + 40) = 12325;
  *(v5 + 48) = 0xE200000000000000;
  v7 = 1280070990;
  if (v3 == 3)
  {
    v7 = 1819047278;
  }

  *(v5 + 56) = 0xC0000000000000A0;
  *(v5 + 64) = v7;
  *(v5 + 72) = 0xE400000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  v9 = sub_1AF3C4820(v5);
  swift_setDeallocating();
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v10 = sub_1AF931974(12581, 0xE200000000000000, sel_convertPosition_toNode_, v9, v8 | 0x2000000000000000, v3);
  v12 = v11;

  v13 = v4 | 0x2000000000000000;
  v14 = v10;
LABEL_9:
  v25 = sub_1AF9316FC(3174949, 0xE300000000000000, v13, v14, v12, v3);

  return v25;
}

__n128 sub_1AF9B99EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C680;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC0000000000000A0;
  *(v10 + 16) = v11;
  *(v7 + 40) = v10 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC0000000000000A0;
  *(v12 + 16) = v13;
  *(v7 + 48) = v12 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v6);
  v14 = swift_allocObject();
  *(v14 + 64) = MEMORY[0x1E69E6530];
  *(v14 + 16) = xmmword_1AFE4C680;
  *(v14 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v14 + 72));
  sub_1AF9708B8(25, 0, (v14 + 112));
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v17 + 16) = xmmword_1AFE4C430;
  *(v16 + 16) = v17 | 0x2000000000000000;
  *(v15 + 32) = v16 | 0x8000000000000000;
  *a3 = v7;
  a3[1] = v15;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = MEMORY[0x1E69E7CC0];
  a3[5] = v14;
  return result;
}

uint64_t sub_1AF9B9C2C(unsigned __int8 *a1)
{
  type metadata accessor for NilNode(0);
  v2 = swift_dynamicCastClass();
  if (!swift_dynamicCastClass())
  {
    if (!v2)
    {
      v3 = *a1;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AFE4C430;
      sub_1AF4442A8();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE4C620;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1AFE4C430;
      *(inited + 32) = v26 | 0x2000000000000000;
      *(inited + 40) = 12325;
      *(inited + 48) = 0xE200000000000000;
      *(inited + 56) = xmmword_1AFE8B170;
      *(inited + 72) = 0xE200000000000000;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1AFE4C430;
      v28 = sub_1AF3C4820(inited);
      swift_setDeallocating();
      sub_1AF9BE8B4();
      swift_arrayDestroy();
      v29 = sub_1AF931974(12581, 0xE200000000000000, sel_convertPosition_toNode_, v28, v27 | 0x2000000000000000, v3);
      v19 = v30;

      v20 = v24 | 0x2000000000000000;
      v21 = v29;
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (v2)
  {
LABEL_7:
    v3 = *a1;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AFE4C430;
    sub_1AF4442A8();
    v13 = swift_initStackObject();
    *(v13 + 16) = xmmword_1AFE4C620;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AFE4C430;
    *(v13 + 32) = v14 | 0x2000000000000000;
    *(v13 + 40) = 12325;
    *(v13 + 48) = 0xE200000000000000;
    v15 = 1280070990;
    if (v3 == 3)
    {
      v15 = 1819047278;
    }

    v8 = sel_convertPosition_fromNode_;
    *(v13 + 56) = 0xC0000000000000A0;
    *(v13 + 64) = v15;
    *(v13 + 72) = 0xE400000000000000;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AFE4C430;
    v10 = sub_1AF3C4820(v13);
    swift_setDeallocating();
    sub_1AF9BE8B4();
    swift_arrayDestroy();
    v11 = v16 | 0x2000000000000000;
    v12 = 12837;
    goto LABEL_10;
  }

  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  sub_1AF4442A8();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE4C620;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C430;
  *(v5 + 32) = v6 | 0x2000000000000000;
  *(v5 + 40) = 12325;
  *(v5 + 48) = 0xE200000000000000;
  v7 = 1280070990;
  if (v3 == 3)
  {
    v7 = 1819047278;
  }

  v8 = sel_convertPosition_toNode_;
  *(v5 + 56) = 0xC0000000000000A0;
  *(v5 + 64) = v7;
  *(v5 + 72) = 0xE400000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C430;
  v10 = sub_1AF3C4820(v5);
  swift_setDeallocating();
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v11 = v9 | 0x2000000000000000;
  v12 = 12581;
LABEL_10:
  v17 = sub_1AF931974(v12, 0xE200000000000000, v8, v10, v11, v3);
  v19 = v18;

  v20 = v4 | 0x2000000000000000;
  v21 = v17;
LABEL_11:
  v22 = sub_1AF9316FC(3174949, 0xE300000000000000, v20, v21, v19, v3);

  return v22;
}

__n128 sub_1AF9BA098@<Q0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 4;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C440;
  *(v5 + 24) = v6 | 0x2000000000000000;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC0000000000000A0;
  *(v7 + 16) = v8;
  *(v3 + 40) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC0000000000000A0;
  *(v9 + 16) = v10;
  *(v3 + 48) = v9 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v11 = swift_allocObject();
  *(v11 + 64) = MEMORY[0x1E69E6530];
  *(v11 + 16) = xmmword_1AFE4C680;
  *(v11 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v11 + 72));
  sub_1AF9708B8(25, 0, (v11 + 112));
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 4;
  v15 = swift_allocObject();
  result = xmmword_1AFE4C440;
  *(v15 + 16) = xmmword_1AFE4C440;
  *(v14 + 24) = v15 | 0x2000000000000000;
  *(v13 + 16) = v14 | 0x2000000000000000;
  *(v12 + 32) = v13 | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v12;
  a1[2] = &unk_1F24F10A0;
  a1[3] = &unk_1F24F10D0;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF9BA324(unsigned __int8 *a1)
{
  type metadata accessor for NilNode(0);
  v2 = swift_dynamicCastClass();
  if (!swift_dynamicCastClass())
  {
    if (!v2)
    {
      v16 = *a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 4;
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1AFE4C440;
      *(v17 + 24) = v29 | 0x2000000000000000;
      v19 = sel_convertTransform_toNode_;
      v30 = swift_allocObject();
      *(v30 + 16) = 4;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1AFE4C440;
      *(v30 + 24) = v31 | 0x2000000000000000;
      v22 = sub_1AF3C4820(&unk_1F25057B8);
      sub_1AF9BE8B4();
      swift_arrayDestroy();
      v23 = v30 | 0x2000000000000000;
      v24 = 12581;
      goto LABEL_8;
    }

LABEL_7:
    v16 = *a1;
    v17 = swift_allocObject();
    *(v17 + 16) = 4;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE4C440;
    *(v17 + 24) = v18 | 0x2000000000000000;
    v19 = sel_convertTransform_fromNode_;
    v20 = swift_allocObject();
    *(v20 + 16) = 4;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AFE4C440;
    *(v20 + 24) = v21 | 0x2000000000000000;
    v22 = sub_1AF3C4820(&unk_1F2505768);
    sub_1AF9BE8B4();
    swift_arrayDestroy();
    v23 = v20 | 0x2000000000000000;
    v24 = 12837;
LABEL_8:
    v25 = sub_1AF931974(v24, 0xE200000000000000, v19, v22, v23, v16);
    v27 = v26;

    v15 = sub_1AF9316FC(3174949, 0xE300000000000000, v17 | 0x2000000000000000, v25, v27, v16);

    goto LABEL_9;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  sub_1AF4442A8();
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = xmmword_1AFE8B180;
  *(inited + 48) = 0xE200000000000000;
  *(inited + 56) = 0xC0000000000000A0;
  v8 = 1280070990;
  if (v3 == 3)
  {
    v8 = 1819047278;
  }

  *(inited + 64) = v8;
  *(inited + 72) = 0xE400000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 4;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C440;
  *(v9 + 24) = v10 | 0x2000000000000000;
  v11 = sub_1AF3C4820(v7);
  swift_setDeallocating();
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v12 = sub_1AF931974(12581, 0xE200000000000000, sel_convertTransform_toNode_, v11, v9 | 0x2000000000000000, v3);
  v14 = v13;

  v15 = sub_1AF9316FC(3174949, 0xE300000000000000, v4 | 0x2000000000000000, v12, v14, v3);

LABEL_9:

  return v15;
}

uint64_t sub_1AF9BA764@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 64) = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1AFE4C680;
  *(v8 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v8 + 72));
  *(v8 + 144) = v9;
  *(v8 + 112) = xmmword_1AFE87170;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v10 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24F1208;
  a1[3] = &unk_1F24F1238;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9BA950(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1AF4442A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C430;
  *(inited + 32) = v3 | 0x2000000000000000;
  *(inited + 40) = 12837;
  *(inited + 48) = 0xE200000000000000;
  v4 = sub_1AF3C4820(inited);
  swift_setDeallocating();
  sub_1AF9BE858(inited + 32);
  v5 = sub_1AF931974(12581, 0xE200000000000000, sel_localTranslateBy_, v4, 0xC000000000000000, v1);

  return v5;
}

uint64_t sub_1AF9BAA84@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000028;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C680;
  *(v7 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v7 + 72));
  *(v7 + 144) = v8;
  *(v7 + 112) = xmmword_1AFE87170;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v9 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24F0440;
  a1[3] = &unk_1F24F0470;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9BAC4C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_1AF3C4820(&unk_1F2505650);
  sub_1AF9BE858(&unk_1F2505670);
  v3 = sub_1AF931974(12581, 0xE200000000000000, sel_localRotateBy_, v2, 0xC000000000000000, v1);

  return v3;
}

uint64_t sub_1AF9BAD10@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000028;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v3 + 56) = v7 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6530];
  *(v9 + 64) = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1AFE4C6B0;
  *(v9 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v9 + 72));
  *(v9 + 144) = v10;
  *(v9 + 112) = xmmword_1AFE87170;
  *(v9 + 184) = v10;
  *(v9 + 152) = xmmword_1AFE87170;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v11 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v11;
  a1[2] = &unk_1F24F1B68;
  a1[3] = &unk_1F24F1B98;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF9BAF24(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1AF4442A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = xmmword_1AFE8B190;
  *(inited + 48) = 0xE200000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C430;
  *(inited + 56) = v3 | 0x2000000000000000;
  *(inited + 64) = 13093;
  *(inited + 72) = 0xE200000000000000;
  v4 = sub_1AF3C4820(inited);
  swift_setDeallocating();
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v5 = sub_1AF931974(12581, 0xE200000000000000, sel_rotateBy_aroundTarget_, v4, 0xC000000000000000, v1);

  return v5;
}

double sub_1AF9BB078@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC0000000000000C0;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C600;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000040;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000040;
  *(v4 + 48) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v4 + 56) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C430;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v4 + 64) = v10 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE4C430;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v4 + 72) = v12 | 0x8000000000000000;
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE4C430;
  *(v14 + 16) = v15 | 0x2000000000000000;
  *(v4 + 80) = v14 | 0x8000000000000000;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = 4;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE4C440;
  *(v17 + 24) = v18 | 0x2000000000000000;
  *(v16 + 16) = v17 | 0x2000000000000000;
  *(v4 + 88) = v16 | 0x8000000000000000;
  v19 = swift_allocObject();
  *(v19 + 16) = 0xC0000000000000A0;
  *(v4 + 96) = v19 | 0x8000000000000000;
  v20 = swift_allocObject();
  v21 = swift_allocObject();
  *&result = 2;
  *(v21 + 16) = xmmword_1AFE4C420;
  *(v20 + 16) = v21 | 0x2000000000000000;
  *(v4 + 104) = v20 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F2CD8;
  a1[3] = &unk_1F24F2D08;
  v23 = MEMORY[0x1E69E7CC0];
  a1[4] = &unk_1F24F2D38;
  a1[5] = v23;
  return result;
}

uint64_t sub_1AF9BB398(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF931974(12325, 0xE200000000000000, sel_presentationNode, v3, 0xC0000000000000A0, a1);
  v6 = v5;

  v7 = sub_1AF9316FC(3174949, 0xE300000000000000, 0xC0000000000000A0, v4, v6, a1);
  v9 = v8;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v10 = sub_1AF3C4820(v2);
  v11 = sub_1AF931974(12325, 0xE200000000000000, sel_geometryIndex, v10, 0xC000000000000040, a1);
  v13 = v12;

  v14 = sub_1AF9316FC(3240485, 0xE300000000000000, 0xC000000000000040, v11, v13, a1);
  v16 = v15;

  v100 = swift_initStackObject();
  *(v100 + 16) = xmmword_1AFE431C0;
  *(v100 + 32) = v14;
  *(v100 + 40) = v16;
  *(v100 + 48) = 0;
  *(v100 + 56) = 0;
  v17 = sub_1AF3C4820(v2);
  v18 = sub_1AF931974(12325, 0xE200000000000000, sel_faceIndex, v17, 0xC000000000000040, a1);
  v20 = v19;

  v21 = sub_1AF9316FC(3306021, 0xE300000000000000, 0xC000000000000040, v18, v20, a1);
  v23 = v22;

  v99 = swift_initStackObject();
  *(v99 + 16) = xmmword_1AFE431C0;
  *(v99 + 32) = v21;
  *(v99 + 40) = v23;
  *(v99 + 48) = 0;
  *(v99 + 56) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AFE4C430;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AFE4C430;
  v26 = sub_1AF3C4820(v2);
  v27 = sub_1AF931974(12325, 0xE200000000000000, sel_localCoordinates, v26, v25 | 0x2000000000000000, a1);
  v29 = v28;

  v30 = sub_1AF9316FC(3371557, 0xE300000000000000, v24 | 0x2000000000000000, v27, v29, a1);
  v32 = v31;

  v98 = swift_initStackObject();
  *(v98 + 16) = xmmword_1AFE431C0;
  *(v98 + 32) = v30;
  *(v98 + 40) = v32;
  *(v98 + 48) = 0;
  *(v98 + 56) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AFE4C430;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1AFE4C430;
  v35 = v2;
  v36 = sub_1AF3C4820(v2);
  v37 = sub_1AF931974(12325, 0xE200000000000000, sel_worldCoordinates, v36, v34 | 0x2000000000000000, a1);
  v39 = v38;

  v40 = sub_1AF9316FC(3437093, 0xE300000000000000, v33 | 0x2000000000000000, v37, v39, a1);
  v42 = v41;

  v97 = swift_initStackObject();
  *(v97 + 16) = xmmword_1AFE431C0;
  *(v97 + 32) = v40;
  *(v97 + 40) = v42;
  *(v97 + 48) = 0;
  *(v97 + 56) = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1AFE4C430;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1AFE4C430;
  v45 = v35;
  v46 = sub_1AF3C4820(v35);
  v47 = sub_1AF931974(12325, 0xE200000000000000, sel_localNormal, v46, v44 | 0x2000000000000000, a1);
  v49 = v48;

  v50 = sub_1AF9316FC(3502629, 0xE300000000000000, v43 | 0x2000000000000000, v47, v49, a1);
  v52 = v51;

  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_1AFE431C0;
  *(v53 + 32) = v50;
  *(v53 + 40) = v52;
  *(v53 + 48) = 0;
  *(v53 + 56) = 0;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1AFE4C430;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1AFE4C430;
  v56 = sub_1AF3C4820(v45);
  v57 = sub_1AF931974(12325, 0xE200000000000000, sel_worldNormal, v56, v55 | 0x2000000000000000, a1);
  v59 = v58;

  v60 = sub_1AF9316FC(3568165, 0xE300000000000000, v54 | 0x2000000000000000, v57, v59, a1);
  v62 = v61;

  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_1AFE431C0;
  *(v63 + 32) = v60;
  *(v63 + 40) = v62;
  *(v63 + 48) = 0;
  *(v63 + 56) = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 4;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1AFE4C440;
  *(v64 + 24) = v65 | 0x2000000000000000;
  v66 = swift_allocObject();
  *(v66 + 16) = 4;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1AFE4C440;
  *(v66 + 24) = v67 | 0x2000000000000000;
  v68 = sub_1AF3C4820(v45);
  v69 = sub_1AF931974(12325, 0xE200000000000000, sel_modelTransform, v68, v66 | 0x2000000000000000, a1);
  v71 = v70;

  v72 = sub_1AF9316FC(3633701, 0xE300000000000000, v64 | 0x2000000000000000, v69, v71, a1);
  v74 = v73;

  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_1AFE431C0;
  *(v75 + 32) = v72;
  *(v75 + 40) = v74;
  *(v75 + 48) = 0;
  *(v75 + 56) = 0;
  v76 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v77 = sub_1AF931974(12325, 0xE200000000000000, sel_presentationBoneNode, v76, 0xC0000000000000A0, a1);
  v79 = v78;

  v80 = sub_1AF9316FC(3699237, 0xE300000000000000, 0xC0000000000000A0, v77, v79, a1);
  v82 = v81;

  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_1AFE431C0;
  *(v83 + 32) = v80;
  *(v83 + 40) = v82;
  *(v83 + 48) = 0;
  *(v83 + 56) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1AFE4C420;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1AFE4C420;
  v86 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v87 = sub_1AF931974(12325, 0xE200000000000000, "uv0", v86, v85 | 0x2000000000000000, a1);
  v89 = v88;

  v90 = sub_1AF9316FC(3764773, 0xE300000000000000, v84 | 0x2000000000000000, v87, v89, a1);
  v92 = v91;

  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_1AFE431C0;
  *(v93 + 32) = v90;
  *(v93 + 40) = v92;
  sub_1AF441DD8();
  *(v93 + 48) = 0;
  *(v93 + 56) = 0;
  v94 = swift_initStackObject();
  *(v94 + 16) = xmmword_1AFE4C600;
  *(v94 + 32) = inited;
  *(v94 + 40) = v100;
  *(v94 + 48) = v99;
  *(v94 + 56) = v98;
  *(v94 + 64) = v97;
  *(v94 + 72) = v53;
  *(v94 + 80) = v63;
  *(v94 + 88) = v75;
  *(v94 + 96) = v83;
  *(v94 + 104) = v93;
  v95 = sub_1AFA56CA0(v94);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v95;
}

uint64_t sub_1AF9BBCFC(unsigned __int8 *a1)
{
  v1 = sub_1AF9BB398(*a1);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

uint64_t sub_1AF9BBD60@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C630;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000A0;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C430;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v3 + 48) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000010;
  *(v3 + 56) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000010;
  *(v3 + 64) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC0000000000000A0;
  *(v11 + 16) = v12;
  *(v3 + 72) = v11 | 0x8000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC0000000000000E0;
  *(v3 + 80) = v13 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C630;
  sub_1AF9708B8(25, 0, (v14 + 32));
  v15 = MEMORY[0x1E69E6530];
  *(v14 + 104) = MEMORY[0x1E69E6530];
  *(v14 + 72) = xmmword_1AFE87170;
  *(v14 + 144) = v15;
  *(v14 + 112) = xmmword_1AFE87170;
  *(v14 + 184) = v15;
  *(v14 + 152) = xmmword_1AFE87170;
  *(v14 + 224) = v15;
  *(v14 + 192) = xmmword_1AFE87170;
  *(v14 + 264) = v15;
  *(v14 + 232) = xmmword_1AFE87170;
  *(v14 + 304) = MEMORY[0x1E69E76D8];
  *(v14 + 272) = xmmword_1AFE89BA0;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  v17 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000C0;
  *(v17 + 16) = result | 0x6000000000000000;
  *(v16 + 32) = v17 | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v16;
  a1[2] = &unk_1F24EE3B0;
  a1[3] = &unk_1F24EE3E0;
  a1[4] = &unk_1F24EE470;
  a1[5] = v14;
  return result;
}

uint64_t sub_1AF9BC054(_BYTE *a1)
{
  type metadata accessor for NilNode(0);
  v2 = swift_dynamicCastClass() != 0;
  if (*a1 == 3)
  {
    v3 = &unk_1F2505408;
    v4 = &unk_1F2505388;
    v5 = &unk_1F2505430;
  }

  else
  {
    v3 = &unk_1F25054F0;
    v4 = &unk_1F2505470;
    v5 = &unk_1F2505518;
  }

  v6 = sub_1AF9BEC40(v2, v3, v3 + 32, v4, v5);
  v7 = sub_1AFA5413C(v6);

  return v7;
}

uint64_t sub_1AF9BC150@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6A0;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C420;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000010;
  *(v3 + 40) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000010;
  *(v3 + 48) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC0000000000000A0;
  *(v8 + 16) = v9;
  *(v3 + 56) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC0000000000000E0;
  *(v3 + 64) = v10 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6530];
  *(v11 + 64) = MEMORY[0x1E69E6530];
  *(v11 + 16) = xmmword_1AFE4C6A0;
  *(v11 + 32) = xmmword_1AFE87170;
  *(v11 + 104) = v12;
  *(v11 + 72) = xmmword_1AFE87170;
  *(v11 + 144) = v12;
  *(v11 + 112) = xmmword_1AFE87170;
  sub_1AF9708B8(25, 0, (v11 + 152));
  *(v11 + 224) = MEMORY[0x1E69E76D8];
  *(v11 + 192) = xmmword_1AFE89BA0;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  v14 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000C0;
  *(v14 + 16) = result | 0x6000000000000000;
  *(v13 + 32) = v14 | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v13;
  a1[2] = &unk_1F24EE180;
  a1[3] = &unk_1F24EE1B0;
  a1[4] = &unk_1F24EE220;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF9BC3C8(_BYTE *a1)
{
  type metadata accessor for NilNode(0);
  v2 = swift_dynamicCastClass() != 0;
  if (*a1 == 3)
  {
    v3 = &unk_1F2505238;
    v4 = &unk_1F25051B8;
    v5 = &unk_1F2505260;
  }

  else
  {
    v3 = &unk_1F2505320;
    v4 = &unk_1F25052A0;
    v5 = &unk_1F2505348;
  }

  v6 = sub_1AF9BEC40(v2, v3, v3 + 32, v4, v5);
  v7 = sub_1AFA5413C(v6);

  return v7;
}

uint64_t sub_1AF9BC4C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  *(v6 + 64) = MEMORY[0x1E69E6530];
  *(v6 + 16) = xmmword_1AFE431C0;
  *(v6 + 32) = xmmword_1AFE87170;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C620;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C420;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v7 + 32) = v8 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v7 + 40) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v7;
  a1[2] = &unk_1F24EE2E0;
  a1[3] = &unk_1F24EE310;
  a1[4] = &unk_1F24EE340;
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF9BC6B0(uint64_t a1)
{
  v49 = a1;
  v2 = sub_1AF9316FC(0x657265646E657224, 0xE900000000000072, 0xC0000000000000A0, 0xD00000000000002ELL, 0x80000001AFF42080, a1);
  v4 = v3;
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v50 = inited;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C430;
  sub_1AF4442A8();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 32) = v8 | 0x2000000000000000;
  *(v7 + 40) = 12325;
  *(v7 + 48) = 0xE200000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C430;
  v10 = sub_1AF3C4820(v7);
  swift_setDeallocating();
  sub_1AF9BE858(v7 + 32);
  v11 = sub_1AF931974(0x657265646E657224, 0xE900000000000072, sel_projectPoint_, v10, v9 | 0x2000000000000000, a1);
  v13 = v12;

  v14 = sub_1AF9316FC(7762468, 0xE300000000000000, v6 | 0x2000000000000000, v11, v13, a1);
  v16 = v15;

  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1AFE431C0;
  *(v17 + 32) = v14;
  *(v17 + 40) = v16;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE4C430;
  v19 = sub_1AF931868(v18 | 0x2000000000000000, 0, a1);
  v21 = v20;

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AFE4C430;
  v48 = sub_1AF931868(v22 | 0x2000000000000000, 1, a1);
  v24 = v23;

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AFE4C430;
  v51 = sub_1AF931868(v25 | 0x2000000000000000, 2, a1);
  v27 = v26;

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1AFE4C420;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AFE4C420;
  if (v49)
  {
    v30 = sub_1AF94B594(a1, v29 | 0x2000000000000000);
    v32 = v31;
  }

  else
  {
    v33 = sub_1AF94B594(0, v29 | 0x2000000000000000);
    MEMORY[0x1B2718AE0](v33);

    v30 = 0x5F656B616DLL;
    v32 = 0xE500000000000000;
  }

  v34 = sub_1AFA55528(v30, v32, 1, v19, v21, v48, v24);
  v36 = v35;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v37 = sub_1AF9316FC(3174949, 0xE300000000000000, v28 | 0x2000000000000000, v34, v36, a1);
  v39 = v38;

  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1AFE431C0;
  *(v40 + 32) = v37;
  *(v40 + 40) = v39;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  MEMORY[0x1B2718AE0](v51, v27);

  v41 = sub_1AF9316FC(3240485, 0xE300000000000000, 0xC000000000000058, 7762468, 0xE300000000000000, a1);
  v43 = v42;

  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_1AFE431C0;
  *(v44 + 32) = v41;
  *(v44 + 40) = v43;
  sub_1AF441DD8();
  *(v44 + 48) = 0;
  *(v44 + 56) = 0;
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_1AFE4C6B0;
  *(v45 + 32) = v50;
  *(v45 + 40) = v17;
  *(v45 + 48) = v40;
  *(v45 + 56) = v44;
  v46 = sub_1AFA56CA0(v45);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v46;
}

uint64_t sub_1AF9BCC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B2718AE0]();
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 7762468;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  MEMORY[0x1B2718AE0](a3, a4);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = 7762468;
  *(v7 + 40) = 0xE300000000000000;
  sub_1AF441DD8();
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1AFE4C620;
  *(v8 + 32) = inited;
  *(v8 + 40) = v7;
  v9 = sub_1AFA56CA0(v8);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v9;
}

double sub_1AF9BCDB8@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C420;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000058;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *&result = 3;
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24EEC50;
  a1[3] = &unk_1F24EEC80;
  v10 = MEMORY[0x1E69E7CC0];
  a1[4] = &unk_1F24EECC0;
  a1[5] = v10;
  return result;
}

uint64_t sub_1AF9BCF4C(uint64_t a1)
{
  v42 = a1;
  v2 = sub_1AF9316FC(0x657265646E657224, 0xE900000000000072, 0xC0000000000000A0, 0xD00000000000002ELL, 0x80000001AFF42080, a1);
  v4 = v3;
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C430;
  v7 = sub_1AF931868(v6 | 0x2000000000000000, 0, a1);
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C430;
  v11 = sub_1AF931868(v10 | 0x2000000000000000, 1, a1);
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C430;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE4C430;
  if (v42)
  {
    v16 = sub_1AF94B594(a1, v15 | 0x2000000000000000);
    v18 = v17;
  }

  else
  {
    v19 = sub_1AF94B594(0, v15 | 0x2000000000000000);
    MEMORY[0x1B2718AE0](v19);

    v16 = 0x5F656B616DLL;
    v18 = 0xE500000000000000;
  }

  v20 = sub_1AFA55540(v16, v18, 1, v7, v9, v11, v13);
  v22 = v21;

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v23 = sub_1AF9316FC(7630884, 0xE300000000000000, v14 | 0x2000000000000000, v20, v22, a1);
  v25 = v24;

  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1AFE431C0;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *(v26 + 48) = 0;
  *(v26 + 56) = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1AFE4C430;
  sub_1AF4442A8();
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1AFE431C0;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AFE4C430;
  *(v28 + 32) = v29 | 0x2000000000000000;
  *(v28 + 40) = 7630884;
  *(v28 + 48) = 0xE300000000000000;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1AFE4C430;
  v31 = sub_1AF3C4820(v28);
  swift_setDeallocating();
  sub_1AF9BE858(v28 + 32);
  v32 = sub_1AF931974(0x657265646E657224, 0xE900000000000072, sel_unprojectPoint_, v31, v30 | 0x2000000000000000, a1);
  v34 = v33;

  v35 = sub_1AF9316FC(3174949, 0xE300000000000000, v27 | 0x2000000000000000, v32, v34, a1);
  v37 = v36;

  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1AFE431C0;
  *(v38 + 32) = v35;
  *(v38 + 40) = v37;
  sub_1AF441DD8();
  *(v38 + 48) = 0;
  *(v38 + 56) = 0;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1AFE4C680;
  *(v39 + 32) = inited;
  *(v39 + 40) = v26;
  *(v39 + 48) = v38;
  v40 = sub_1AFA56CA0(v39);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v40;
}

uint64_t sub_1AF9BD3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1B2718AE0]();
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 12325;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  MEMORY[0x1B2718AE0](a3, a4);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = 12325;
  *(v7 + 40) = 0xE200000000000000;
  sub_1AF441DD8();
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1AFE4C680;
  *(v8 + 32) = inited;
  *(v8 + 40) = v7;
  *(v8 + 48) = &unk_1F2504BC0;
  v9 = sub_1AFA56CA0(v8);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_1AF9BD598@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000058;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v5 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  a1[2] = &unk_1F24F1000;
  a1[3] = &unk_1F24F1030;
  v7 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9BD6C4(unsigned __int8 *a1)
{
  v1 = sub_1AF9B5C2C(*a1, &unk_1F2505730, &unk_1F2505750);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

uint64_t sub_1AF9BD780(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1AF0D4478(0, &qword_1EB641518);
  v2 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v3 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF931974(0x287373616C635FLL, 0xE700000000000000, sel_commit, v3, 0xC000000000000000, v1);

  return v4;
}

uint64_t sub_1AF9BD8B4@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v2 + 32) = v3 | 0x4000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v4 + 32) = result | 0x4000000000000000;
  *a1 = v2;
  a1[1] = v4;
  v6 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EFFD0;
  a1[3] = v6;
  a1[4] = v6;
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF9BD9AC(unsigned __int8 *a1)
{
  v2 = sub_1AF9BD9FC(*a1, v1);
  v3 = sub_1AFA5413C(v2);

  return v3;
}

uint64_t sub_1AF9BD9FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF9316FC(0x657265646E657224, 0xE900000000000072, 0xC0000000000000A0, 0xD00000000000002ELL, 0x80000001AFF42080, a1);
  v6 = v5;
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v8 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v9 = sub_1AF931974(0x657265646E657224, 0xE900000000000072, sel__contentsScaleFactor, v8, 0xC000000000000058, a1);
  v11 = v10;

  v12 = sub_1AF9316FC(29476, 0xE200000000000000, 0xC000000000000058, v9, v11, a1);
  v14 = v13;

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  v16 = *(a2 + 24);
  v17 = *(*(a2 + 32) + 32);
  sub_1AF448650(v16);
  sub_1AF442064(v17);

  v18 = sub_1AF931410(v17, a1);
  v20 = v19;
  sub_1AF442064(v17);
  v21 = sub_1AFA55A50(v18, v20, 1, v17, a1);
  v23 = v22;
  sub_1AF445BE4(v17);

  v24 = sub_1AF9316FC(3174949, 0xE300000000000000, v17, v21, v23, a1);
  v26 = v25;

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1AFE431C0;
  *(v27 + 32) = v24;
  *(v27 + 40) = v26;
  sub_1AF441DD8();
  *(v27 + 48) = 0;
  *(v27 + 56) = 0;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1AFE4C680;
  *(v28 + 32) = inited;
  *(v28 + 40) = v15;
  *(v28 + 48) = v27;
  v29 = sub_1AFA56CA0(v28);
  sub_1AF445BE4(v17);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v29;
}

uint64_t sub_1AF9BDCD4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 61 == 1)
  {
    v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1AF442064(v23);
    if (v4)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = sub_1AF931868(a1, v5, a2);
        MEMORY[0x1B2718AE0](v7);

        MEMORY[0x1B2718AE0](7545898, 0xE300000000000000);
        sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        *(inited + 32) = 12325;
        *(inited + 40) = 0xE200000000000000;
        sub_1AF441DD8();
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        v9 = swift_initStackObject();
        *(v9 + 16) = xmmword_1AFE431C0;
        *(v9 + 32) = inited;
        v10 = v9 + 32;
        v11 = sub_1AFA56CA0(v9);
        swift_setDeallocating();
        sub_1AF974118(v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AF426BC8(0, v6[2] + 1, 1, v6);
        }

        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          v6 = sub_1AF426BC8(v12 > 1, v13 + 1, 1, v6);
        }

        ++v5;
        v6[2] = v13 + 1;
        v6[v13 + 4] = v11;
      }

      while (v4 != v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v16 = sub_1AFA56CA0(v6);

    sub_1AF441DD8();
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1AFE431C0;
    *(v17 + 32) = v16;
    v18 = (v17 + 32);
    v14 = sub_1AFA56CA0(v17);
    sub_1AF445BE4(v23);
    swift_setDeallocating();
    v15 = v18;
  }

  else
  {
    v14 = sub_1AFA56CA0(&unk_1F2504D40);
    v15 = &unk_1F2504D60;
  }

  sub_1AF974118(v15);
  sub_1AF441DD8();
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = v14;
  v20 = v19 + 32;
  v21 = sub_1AFA56CA0(v19);
  swift_setDeallocating();
  sub_1AF974118(v20);
  return v21;
}

uint64_t sub_1AF9BDFA8@<X0>(void *a1@<X8>)
{
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v2 + 32) = result | 0x8000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24F1C58;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF9BE06C(uint64_t a1)
{
  v2 = sub_1AF9316FC(0x657265646E657224, 0xE900000000000072, 0xC0000000000000A0, 0xD00000000000002ELL, 0x80000001AFF42080, a1);
  v4 = v3;
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v6 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v7 = sub_1AF931974(0x657265646E657224, 0xE900000000000072, sel__contentsScaleFactor, v6, 0xC000000000000058, a1);
  v9 = v8;

  v10 = sub_1AF9316FC(3174949, 0xE300000000000000, 0xC000000000000058, v7, v9, a1);
  v12 = v11;

  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v12;
  sub_1AF441DD8();
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AFE4C620;
  *(v14 + 32) = inited;
  *(v14 + 40) = v13;
  v15 = sub_1AFA56CA0(v14);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v15;
}

double sub_1AF9BE2B0@<D0>(void *a1@<X8>)
{
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *&result = 2;
  *(v4 + 16) = xmmword_1AFE4C420;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24EF150;
  a1[3] = v6;
  a1[4] = v6;
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF9BE39C(unsigned __int8 *a1, uint64_t (*a2)(void))
{
  v2 = a2(*a1);
  v3 = sub_1AFA5413C(v2);

  return v3;
}

uint64_t sub_1AF9BE3EC(uint64_t a1)
{
  v2 = sub_1AF9316FC(0x657265646E657224, 0xE900000000000072, 0xC0000000000000A0, 0xD00000000000002ELL, 0x80000001AFF42080, a1);
  v4 = v3;
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C420;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C420;
  v8 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v9 = sub_1AF931974(0x657265646E657224, 0xE900000000000072, sel__screenSize, v8, v7 | 0x2000000000000000, a1);
  v11 = v10;

  v12 = sub_1AF9316FC(3174949, 0xE300000000000000, v6 | 0x2000000000000000, v9, v11, a1);
  v14 = v13;

  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = v12;
  *(v15 + 40) = v14;
  sub_1AF441DD8();
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1AFE4C620;
  *(v16 + 32) = inited;
  *(v16 + 40) = v15;
  v17 = sub_1AFA56CA0(v16);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_1AF9BE6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v10 + 32) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v12 + 32) = result | 0x8000000000000000;
  *a5 = v10;
  a5[1] = v12;
  a5[2] = a2;
  a5[3] = a3;
  v14 = MEMORY[0x1E69E7CC0];
  a5[4] = a4;
  a5[5] = v14;
  return result;
}

uint64_t sub_1AF9BE7B8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_1AF3C4820(MEMORY[0x1E69E7CC0]);
  v3 = sub_1AF931974(12325, 0xE200000000000000, sel_presentationObject, v2, 0xC0000000000000A0, v1);

  return v3;
}

uint64_t sub_1AF9BE858(uint64_t a1)
{
  sub_1AF9BE8B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF9BE8B4()
{
  if (!qword_1EB638398)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB638398);
    }
  }
}

void sub_1AF9BE914(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF9BE964(uint64_t a1, uint64_t a2)
{
  sub_1AF0D4478(0, &qword_1EB641520);
  v4 = sub_1AFDFCEC8();
  v5 = NSSelectorFromString(v4);

  v6 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v6);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v7 = sub_1AF3C4820(&unk_1F2505148);
  sub_1AF9BE858(&unk_1F2505168);
  v8 = sub_1AF931974(0x287373616C635FLL, 0xE700000000000000, v5, v7, 0xC0000000000000A0, a1);
  v10 = v9;

  v11 = sub_1AF9316FC(2036689700, 0xE400000000000000, 0xC0000000000000A0, v8, v10, a2);
  v13 = v12;

  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v15 = sub_1AF3C4820(&unk_1F2505180);
  sub_1AF9BE858(&unk_1F25051A0);
  v16 = sub_1AF931974(12325, 0xE200000000000000, sel_childNodeWithName_, v15, 0xC0000000000000A0, a1);
  v18 = v17;

  v19 = sub_1AF9316FC(3174949, 0xE300000000000000, 0xC0000000000000A0, v16, v18, a2);
  v21 = v20;

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AFE431C0;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  sub_1AF441DD8();
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1AFE4C620;
  *(v23 + 32) = inited;
  *(v23 + 40) = v22;
  v24 = sub_1AFA56CA0(v23);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v24;
}

uint64_t sub_1AF9BEC40(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = sub_1AFA56CA0(a2);
    sub_1AF974118(a3);
  }

  sub_1AF441DD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C680;
  *(inited + 32) = a4;
  *(inited + 40) = v7;
  *(inited + 48) = a5;
  v10 = sub_1AFA56CA0(inited);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_1AF9BED20(uint64_t a1, char a2)
{
  sub_1AFDFDFD8();
  v4 = sub_1AF75D128();
  MEMORY[0x1B2718AE0](v4);

  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  v12[0] = 34;
  v12[1] = 0xE100000000000000;
  MEMORY[0x1B2718AE0](*a1, *(a1 + 8));
  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  v5 = *(a1 + 42);
  if ((v5 & 0x400) != 0)
  {
    v8 = sub_1AF75D128();
    MEMORY[0x1B2718AE0](v8);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v6 = 34;
    v7 = 0xE100000000000000;
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 1819047278;
    }

    else
    {
      v6 = 1280070990;
    }

    v7 = 0xE400000000000000;
  }

  if (a2 == 3)
  {
    strcpy(v12, "root_type: ");
    HIDWORD(v12[1]) = -352321536;
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    MEMORY[0x1B2718AE0](v12[0], v12[1]);

    strcpy(v12, ", identifier: ");
    HIBYTE(v12[1]) = -18;
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    MEMORY[0x1B2718AE0](v12[0], v12[1]);

    if ((v5 & 0x400) != 0)
    {
      MEMORY[0x1B2718AE0](v6, v7);

      v9 = 0xD000000000000019;
      v10 = 0x80000001AFF428C0;
    }

    else
    {

      v9 = 0;
      v10 = 0xE000000000000000;
    }

    v12[0] = 8315;
    v12[1] = 0xE200000000000000;

    MEMORY[0x1B2718AE0](v9, v10);

    MEMORY[0x1B2718AE0](32032, 0xE200000000000000);
  }

  else
  {
    v12[0] = 8315;
    v12[1] = 0xE200000000000000;
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](34, 0xE100000000000000);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v6, v7);

    MEMORY[0x1B2718AE0](32032, 0xE200000000000000);
  }

  return v12[0];
}

uint64_t sub_1AF9BF064(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, uint64_t a7)
{
  v11 = &qword_1AFE43000;
  if (a3 == 3)
  {
    sub_1AFDFE218();

    v104 = 0xD000000000000011;
    v105 = 0x80000001AFF42800;
    v12 = sub_1AF9BED20(a4, 3);
    MEMORY[0x1B2718AE0](v12);

    MEMORY[0x1B2718AE0](59, 0xE100000000000000);
    sub_1AF9C435C(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    v14 = v13;
    *(v13 + 16) = xmmword_1AFE431C0;
    *(v13 + 32) = 0xD000000000000011;
    *(v13 + 40) = 0x80000001AFF42800;
    if (a5)
    {
      v15 = 0xD00000000000001BLL;
    }

    else
    {
      v15 = 0xD00000000000001DLL;
    }

    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    if (a2)
    {
      v16 = "vfx_script_js_get_world_value";
      if (a5)
      {
        v16 = "vfx_script_js_get_ecs_value";
      }

      v17 = v16 - 32;
      sub_1AF90EDE8(a6, &v104, 0.0);
      v18 = sub_1AF930984(a6, &v104, 3174949, 0xE300000000000000, 3);
      v20 = v19;
      v101 = v21;
      v23 = v22;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v104);
      v24 = sub_1AF937FF8(3, a6);
      if ((~v24 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(a6);
        v24 = a6;
      }

      v104 = 0x203072252074656CLL;
      v105 = 0xEA0000000000203DLL;
      MEMORY[0x1B2718AE0](v18, v20);
      MEMORY[0x1B2718AE0](59, 0xE100000000000000);

      sub_1AF445BE4(v24);
      v25 = v104;
      v26 = v105;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1AFE431C0;
      *(v27 + 32) = v25;
      *(v27 + 40) = v26;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      v104 = 0;
      v105 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x76242074736E6F63, 0xEF203D2065756C61);
      MEMORY[0x1B2718AE0](v15, v17 | 0x8000000000000000);

      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF42840);
      v107 = a7;
      v28 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v28);

      MEMORY[0x1B2718AE0](0x3B29307225202CLL, 0xE700000000000000);
      v29 = v104;
      v30 = v105;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1AFE431C0;
      *(v31 + 32) = v29;
      *(v31 + 40) = v30;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1AFE431C0;
      *(v32 + 32) = v101;
      *(v32 + 40) = v23;
      sub_1AF441DD8();
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1AFE4C6A0;
      *(v33 + 32) = v27;
      *(v33 + 40) = v31;
      *(v33 + 48) = &unk_1F2505E18;
      *(v33 + 56) = &unk_1F2505E58;
      *(v33 + 64) = v32;
      v34 = sub_1AFA56CA0(v33);
      swift_setDeallocating();
      sub_1AF9C435C(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v11 = &qword_1AFE43000;
    }

    else
    {
      v67 = "vfx_script_js_set_world_value";
      if (a5)
      {
        v67 = "vfx_script_js_set_ecs_value";
      }

      v68 = (v67 - 32) | 0x8000000000000000;
      sub_1AFDFE218();

      v104 = v15;
      v105 = v68;
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF42840);
      v69 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v69);

      MEMORY[0x1B2718AE0](2433068, 0xE300000000000000);
      v107 = a1;
      v70 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v70);

      MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1AFE431C0;
      *(v71 + 32) = v15;
      *(v71 + 40) = v68;
      sub_1AF441DD8();
      *(v71 + 48) = 0;
      *(v71 + 56) = 0;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = v71;
      v73 = inited + 32;
      v34 = sub_1AFA56CA0(inited);
      swift_setDeallocating();
      sub_1AF9C4264(v73, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    }

    sub_1AF441DD8();
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1AFE4C620;
    *(v74 + 32) = v14;
    *(v74 + 40) = v34;
    v75 = sub_1AFA56CA0(v74);
    swift_setDeallocating();
    sub_1AF9C435C(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    sub_1AFDFE218();

    v104 = 0xD00000000000002BLL;
    v105 = 0x80000001AFF42730;
    v36 = sub_1AF9BED20(a4, a3);
    MEMORY[0x1B2718AE0](v36);

    MEMORY[0x1B2718AE0](59, 0xE100000000000000);
    sub_1AF9C435C(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v37 = swift_initStackObject();
    v38 = v37;
    *(v37 + 16) = xmmword_1AFE431C0;
    *(v37 + 32) = 0xD00000000000002BLL;
    *(v37 + 40) = 0x80000001AFF42730;
    v39 = -3;
    if (a5)
    {
      v39 = -5;
    }

    v40 = v39 - 0x2FFFFFFFFFFFFFE3;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    if (a2)
    {
      v98 = v39 - 0x2FFFFFFFFFFFFFE3;
      if (a5)
      {
        v41 = "vfx_script_get_ecs_value";
      }

      else
      {
        v41 = "vfx_script_get_world_value";
      }

      sub_1AF90EDE8(a6, &v104, 0.0);
      v42 = sub_1AF930984(a6, &v104, 0x65756C617624, 0xE600000000000000, a3);
      v44 = v43;
      v102 = v45;
      v99 = v46;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v104);
      v47 = sub_1AF937FF8(a3, a6);
      if ((~v47 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(a6);
        v47 = a6;
      }

      v48 = v41 - 32;
      v104 = 0;
      v105 = 0xE000000000000000;
      v49 = sub_1AF937FF8(a3, v47);
      if ((~v49 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v47);
        v49 = v47;
      }

      v97 = v48 | 0x8000000000000000;
      v50 = sub_1AF94B594(a3, v49);
      v52 = v51;
      sub_1AF445BE4(v49);
      MEMORY[0x1B2718AE0](v50, v52);

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](0x65756C617624, 0xE600000000000000);
      MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
      MEMORY[0x1B2718AE0](v42, v44);
      MEMORY[0x1B2718AE0](59, 0xE100000000000000);

      sub_1AF445BE4(v47);
      v53 = v104;
      v54 = v105;
      v55 = swift_initStackObject();
      *(v55 + 16) = xmmword_1AFE431C0;
      *(v55 + 32) = v53;
      *(v55 + 40) = v54;
      *(v55 + 48) = 0;
      *(v55 + 56) = 0;
      v56 = sub_1AF937FF8(a3, a6);
      if ((~v56 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(a6);
        v56 = a6;
      }

      v104 = 0;
      v105 = 0xE000000000000000;
      v57 = sub_1AF937FF8(a3, v56);
      if ((~v57 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v56);
        v57 = v56;
      }

      v58 = 3174949;
      v59 = sub_1AF94B594(a3, v57);
      v61 = v60;
      sub_1AF445BE4(v57);
      MEMORY[0x1B2718AE0](v59, v61);

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](3174949, 0xE300000000000000);
      MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
      MEMORY[0x1B2718AE0](0x65756C617624, 0xE600000000000000);
      MEMORY[0x1B2718AE0](59, 0xE100000000000000);
      sub_1AF445BE4(v56);
      v62 = v104;
      v63 = v105;
      v64 = swift_initStackObject();
      *(v64 + 16) = xmmword_1AFE431C0;
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 48) = 0;
      *(v64 + 56) = 0;
      v104 = 0;
      v105 = 0xE000000000000000;
      sub_1AFDFE218();

      v104 = v98;
      v105 = v97;
      MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF42780);
      v107 = a7;
      v65 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v65);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      if (a6 >> 61 == 6 && a6 + 0x3FFFFFFFFFFFFF90 <= 0x18 && ((1 << (a6 - 112)) & 0x1000101) != 0)
      {
        v66 = 0xE300000000000000;
      }

      else
      {
        v107 = 38;
        v108 = 0xE100000000000000;
        MEMORY[0x1B2718AE0](3174949, 0xE300000000000000);
        v58 = v107;
        v66 = v108;
      }

      v11 = &qword_1AFE43000;
      MEMORY[0x1B2718AE0](v58, v66);

      MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
      v87 = v104;
      v88 = v105;
      v89 = swift_initStackObject();
      *(v89 + 16) = xmmword_1AFE431C0;
      *(v89 + 32) = v87;
      *(v89 + 40) = v88;
      *(v89 + 48) = 0;
      *(v89 + 56) = 0;
      v90 = swift_initStackObject();
      *(v90 + 16) = xmmword_1AFE431C0;
      *(v90 + 32) = v102;
      *(v90 + 40) = v99;
      sub_1AF441DD8();
      *(v90 + 48) = 0;
      *(v90 + 56) = 0;
      v91 = swift_initStackObject();
      *(v91 + 16) = xmmword_1AFE4C6A0;
      *(v91 + 32) = v55;
      *(v91 + 40) = v64;
      *(v91 + 48) = v89;
      *(v91 + 56) = &unk_1F2505E98;
      *(v91 + 64) = v90;
      v86 = sub_1AFA56CA0(v91);
      swift_setDeallocating();
      sub_1AF9C435C(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
    }

    else
    {
      v76 = "vfx_script_set_world_value";
      if (a5)
      {
        v76 = "vfx_script_set_ecs_value";
      }

      v77 = (v76 - 32) | 0x8000000000000000;
      sub_1AFDFE218();

      v104 = v40;
      v105 = v77;
      MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF42780);
      v78 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v78);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      v107 = 37;
      v108 = 0xE100000000000000;
      v106 = a1;
      v79 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v79);

      v80 = 37;
      if (a6 >> 61 != 6 || a6 + 0x3FFFFFFFFFFFFF90 > 0x18 || ((1 << (a6 - 112)) & 0x1000101) == 0)
      {
        v107 = 38;
        v108 = 0xE100000000000000;
        MEMORY[0x1B2718AE0](37, 0xE100000000000000);

        v80 = 38;
      }

      v11 = &qword_1AFE43000;
      MEMORY[0x1B2718AE0](v80, 0xE100000000000000);

      MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
      v81 = v104;
      v82 = v105;
      v83 = swift_initStackObject();
      *(v83 + 16) = xmmword_1AFE431C0;
      *(v83 + 32) = v81;
      *(v83 + 40) = v82;
      sub_1AF441DD8();
      *(v83 + 48) = 0;
      *(v83 + 56) = 0;
      v84 = swift_initStackObject();
      *(v84 + 16) = xmmword_1AFE431C0;
      *(v84 + 32) = v83;
      v85 = v84 + 32;
      v86 = sub_1AFA56CA0(v84);
      swift_setDeallocating();
      sub_1AF9C4264(v85, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    }

    sub_1AF441DD8();
    v92 = swift_initStackObject();
    *(v92 + 16) = xmmword_1AFE4C620;
    *(v92 + 32) = v38;
    *(v92 + 40) = v86;
    v75 = sub_1AFA56CA0(v92);
    swift_setDeallocating();
    sub_1AF9C435C(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
  }

  sub_1AF441DD8();
  v93 = swift_initStackObject();
  *(v93 + 16) = *(v11 + 28);
  *(v93 + 32) = v75;
  v94 = v93 + 32;
  v95 = sub_1AFA56CA0(v93);
  swift_setDeallocating();
  sub_1AF9C4264(v94, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  return v95;
}

uint64_t sub_1AF9C00D0()
{
  v1 = *v0;

  sub_1AFAF7C88();

  if (v1 == _TtC3VFX20GetAnyWorldValueNode)
  {
    v2 = 0x20BA80E220746547;
  }

  else
  {
    v2 = 0x20BA80E220746553;
  }

  MEMORY[0x1B2718AE0](v2, 0xA800000000000000);

  sub_1AF4486E4();
  v3 = sub_1AFDFDEB8();
  v5 = v4;

  MEMORY[0x1B2718AE0](v3, v5);

  return 0;
}

uint64_t sub_1AF9C023C()
{
  sub_1AFDFE218();

  strcpy(v7, "world:dynamic:");
  HIBYTE(v7[1]) = -18;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
  v1 = *(v0 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 8);

  sub_1AFDFDFD8();
  v5 = sub_1AFDFF4B8();
  v6 = v3;
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v2, v1);
  MEMORY[0x1B2718AE0](v5, v6);

  return v7[0];
}

uint64_t sub_1AF9C0354(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF6489C0();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF9C042C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v11, v11[3]);
    sub_1AF64896C();
    sub_1AFDFEE88();
    v4 = v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 24) = v7;
    *(v4 + 32) = v8;
    *(v4 + 40) = v9;
    *(v4 + 42) = v10;

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  }

  return result;
}

uint64_t sub_1AF9C0558()
{
}

uint64_t sub_1AF9C060C@<X0>(uint64_t *a1@<X8>)
{
  v3 = 0xC000000000000020;
  v4 = MEMORY[0x1E69E6F90];
  sub_1AF9C435C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC0000000000000A0;
  *(v5 + 32) = v6 | 0x8000000000000000;
  sub_1AF9C435C(0, &unk_1EB630980, &type metadata for AnyValue, v4);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  sub_1AF9708B8(24, 0, (v7 + 32));
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = *(v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 24);
  if (swift_conformsToProtocol2())
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = sub_1AF90DEFC(v9);
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v3 = v11;
    }

    else
    {
      v3 = 0xC000000000000000;
    }
  }

  result = swift_allocObject();
  *(result + 16) = v3;
  *(v8 + 32) = result | 0x8000000000000000;
  *a1 = v5;
  a1[1] = v8;
  v13 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F1120;
  a1[3] = v13;
  a1[4] = v13;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9C07E8@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9C435C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = *(v1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 24);
  if (swift_conformsToProtocol2())
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = sub_1AF90DEFC(v6);
    if ((~v8 & 0xF000000000000007) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xC000000000000000;
    }
  }

  else
  {
    v9 = 0xC000000000000020;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v3 + 48) = v10 | 0x8000000000000000;
  sub_1AF9C435C(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E6530];
  *(v11 + 64) = MEMORY[0x1E69E6530];
  *(v11 + 16) = xmmword_1AFE4C680;
  *(v11 + 32) = xmmword_1AFE87F70;
  sub_1AF9708B8(24, 0, (v11 + 72));
  *(v11 + 144) = v12;
  *(v11 + 112) = xmmword_1AFE87170;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v13 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v13;
  v15 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F13B8;
  a1[3] = v15;
  a1[4] = v15;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF9C0A18(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = *(v4 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 28);
  v9 = *(v4 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 16);
  v18 = *(v4 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
  v19[0] = v9;
  *(v19 + 12) = v8;
  v10 = *a1;
  v20 = v18;
  v11 = *(&v19[0] + 1);
  if (swift_conformsToProtocol2() && *(&v19[0] + 1))
  {
    sub_1AF450FE0(&v20, v17);

    v12 = 0xC000000000000020;
  }

  else
  {
    sub_1AF450FE0(&v20, v17);

    v13 = sub_1AF90DEFC(v11);
    if ((~v13 & 0xF000000000000007) != 0)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0xC000000000000000;
    }
  }

  v14 = sub_1AF9BF064(a2, a3, v10, &v18, 0, v12, a4);
  v15 = sub_1AFA5413C(v14);

  sub_1AF445BE4(v12);
  sub_1AF585778(&v20);

  return v15;
}

char *sub_1AF9C0B48(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 8);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 32);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 40);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath + 42);
  v8 = v2 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath;
  *v8 = *(a1 + OBJC_IVAR____TtC3VFX18_AnyWorldValueNode_scriptKeyPath);
  *(v8 + 8) = v4;
  *(v8 + 16) = *(v3 + 1);
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 42) = v7;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9C0BD8()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9C0D04()
{
  sub_1AFDFE218();

  strcpy(v8, "world:static:");
  HIWORD(v8[1]) = -4864;
  v1 = sub_1AF9C0E48();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v3 = *(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 8);

  sub_1AFDFDFD8();
  v6 = sub_1AFDFF4B8();
  v7 = v4;
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v3, v2);
  MEMORY[0x1B2718AE0](v6, v7);

  return v8[0];
}

uint64_t sub_1AF9C0E48()
{
  v1 = v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target;
  sub_1AF44596C(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v11[1];
  sub_1AF4459C8(v11);
  if (Strong)
  {
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(ObjectType, v3);
    v7 = v6;
    swift_unknownObjectRelease();
    if (v7)
    {
      return v5;
    }

    else
    {
      return 0x3E656D616E6F6E3CLL;
    }
  }

  else
  {
    strcpy(v11, "<unresolved:");
    BYTE5(v11[1]) = 0;
    HIWORD(v11[1]) = -5120;
    v10 = *(v1 + 16);
    v9 = *(v1 + 24);

    MEMORY[0x1B2718AE0](v10, v9);

    MEMORY[0x1B2718AE0](62, 0xE100000000000000);
    return v11[0];
  }
}

void *sub_1AF9C0F60()
{
  v1 = v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target;
  sub_1AF44596C(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target, &v34);
  if (qword_1EB633DD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB6C2AB8;
  swift_unknownObjectWeakInit();
  v31 = &off_1F256B790;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier);
  v4 = *(v2 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8);
  v32 = v3;
  v33 = v4;
  if (v36 == v3 && v37 == v4)
  {

    sub_1AF4459C8(v30);
    sub_1AF4459C8(&v34);
    goto LABEL_17;
  }

  v6 = sub_1AFDFEE28();

  sub_1AF4459C8(v30);
  sub_1AF4459C8(&v34);
  if (v6)
  {
LABEL_17:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v19 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v27 = v19;
      swift_once();
      v19 = v27;
    }

    v34 = 0;
    sub_1AF0D4F18(v19, &v34, 0xD000000000000055, 0x80000001AFF426D0);
    return &unk_1F24F55C0;
  }

  sub_1AF44596C(v1, &v34);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(&v34);
  if (Strong)
  {
    swift_unknownObjectRelease();
    sub_1AF9C435C(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE431C0;
    sub_1AF44596C(v1, &v34);
    v10 = *(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath);
    v9 = *(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 8);
    v29 = *(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 16);
    v11 = *(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 32);
    v12 = *(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 40);
    v13 = *(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 42);
    type metadata accessor for GetWorldValueNode(0);
    v14 = 1;
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for PartialComposeNode(0);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = *(v15 + 16);
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = v16 + 32;
          type metadata accessor for NilNode(0);
          while (swift_dynamicCastClass())
          {
            v18 += 16;
            if (!--v17)
            {
              v14 = 0;
              goto LABEL_35;
            }
          }

          type metadata accessor for InspectorSetWorldValueNode(0);
          if (swift_dynamicCastClass())
          {
            v14 = 7;
          }

          else
          {
            v14 = 3;
          }

          goto LABEL_35;
        }
      }

      else
      {
        type metadata accessor for NilNode(0);
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for InspectorSetWorldValueNode(0);
          if (swift_dynamicCastClass())
          {
            v14 = 6;
          }

          else
          {
            v14 = 3;
          }

          goto LABEL_35;
        }
      }

      v14 = 0;
    }

LABEL_35:
    v26 = swift_allocObject();
    sub_1AF640200(&v34, v26 + 16);
    *(v26 + 48) = v10;
    *(v26 + 56) = v9;
    *(v26 + 64) = v29;
    *(v26 + 80) = v11;
    *(v26 + 88) = v12;
    *(v26 + 90) = v13;
    *(v8 + 32) = v26 | 4;
    *(v8 + 40) = v14;
    *(v8 + 48) = xmmword_1AFE4C460;
    *(v8 + 64) = 1;

    return v8;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1AFDFE218();

  v34 = 0xD000000000000028;
  v35 = 0x80000001AFF426A0;
  v22 = *(v1 + 16);
  v21 = *(v1 + 24);

  MEMORY[0x1B2718AE0](v22, v21);

  v24 = v34;
  v23 = v35;
  v25 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v28 = v25;
    swift_once();
    v25 = v28;
  }

  v34 = 0;
  sub_1AF0D4F18(v25, &v34, v24, v23);

  return &unk_1F24F5578;
}

uint64_t sub_1AF9C142C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF44596C(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target, &v8);
  sub_1AF448018(v14, v15);
  sub_1AF9B3AD0();
  sub_1AFDFEC38();
  sub_1AF4459C8(&v8);
  if (!v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 24);
    v4 = *(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 32);
    v5 = *(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 40);
    v6 = *(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 42);
    v8 = *(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath);
    v9 = *(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 8);
    v10 = v3;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    sub_1AF448018(v14, v15);
    sub_1AF6489C0();
    sub_1AFDFEC38();
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
}

uint64_t sub_1AF9C1560(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (sub_1AF69504C(3016, v6, v7))
    {
      sub_1AF9C435C(0, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
      sub_1AF448018(v22, v23);
      sub_1AF9C42C0();
      sub_1AFDFEAD8();
      if (v15[0] || v15[1] != 1)
      {
        sub_1AF640200(v15, &v16);
      }

      else
      {
        if (qword_1EB633DD8 != -1)
        {
          swift_once();
        }

        v8 = qword_1EB6C2AB8;
        swift_unknownObjectWeakInit();
        *&v17 = &off_1F256B790;
        swift_unknownObjectWeakAssign();
        v9 = *(v8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8);
        *(&v17 + 1) = *(v8 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier);
        v18 = v9;
      }
    }

    else
    {
      sub_1AF448018(v22, v23);
      sub_1AF9B3A20();
      sub_1AFDFEAD8();
    }

    sub_1AF9B3A74(&v16, v3 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target);
    sub_1AF448018(v22, v23);
    sub_1AF64896C();
    sub_1AFDFEAD8();
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = v3 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath;
    *v14 = v16;
    *(v14 + 8) = v17;
    *(v14 + 24) = v10;
    *(v14 + 32) = v11;
    *(v14 + 40) = v12;
    *(v14 + 42) = v13;

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
  }

  return result;
}

uint64_t sub_1AF9C1888()
{
  sub_1AF4459C8(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target);
}

uint64_t sub_1AF9C18DC()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target;

  sub_1AF4459C8(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9C1AA4@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9C435C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = *(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 24);
  if (swift_conformsToProtocol2())
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = sub_1AF90DEFC(v5);
    if ((~v7 & 0xF000000000000007) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0xC000000000000000;
    }
  }

  else
  {
    v8 = 0xC000000000000020;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v3 + 40) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v10 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  v12 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F06E0;
  a1[3] = v12;
  a1[4] = v12;
  a1[5] = v12;
  return result;
}

double sub_1AF9C1C68@<D0>(uint64_t a1@<X8>)
{
  sub_1AF9C1AA4(v7);
  sub_1AF9C435C(0, &unk_1EB630980, &type metadata for AnyValue, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E6530];
  *(v2 + 64) = MEMORY[0x1E69E6530];
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = xmmword_1AFE87F70;
  *(v2 + 104) = v3;
  *(v2 + 72) = xmmword_1AFE87F70;
  v4 = v8;
  v10 = v9;
  sub_1AF9C4264(&v10, &qword_1EB638978, &type metadata for AnyValue, MEMORY[0x1E69E62F8]);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v2;
  return result;
}

uint64_t sub_1AF9C1D6C(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for SetWorldValueNode(0);
  if (swift_dynamicCastClass() || (type metadata accessor for SetECSValueNode(0), swift_dynamicCastClass()) || (type metadata accessor for SetParticleValueNode(0), swift_dynamicCastClass()))
  {
    v2 = *(*(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 48);
    if (v2)
    {
    }

    v3 = sub_1AF9C471C(v2);

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1AF9C1E20@<X0>(void *a1@<X8>)
{
  sub_1AF9C435C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 24);
  if (swift_conformsToProtocol2())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = sub_1AF90DEFC(v4);
    if ((~v6 & 0xF000000000000007) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xC000000000000000;
    }
  }

  else
  {
    v7 = 0xC000000000000020;
  }

  result = swift_allocObject();
  *(result + 16) = v7;
  *(v3 + 32) = result | 0x8000000000000000;
  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  a1[2] = &unk_1F24F0380;
  a1[3] = v9;
  a1[4] = v9;
  a1[5] = v9;
  return result;
}

char *sub_1AF9C1F2C(void *a1)
{
  v2 = swift_allocObject();
  sub_1AF44596C(a1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target, v2 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target);
  v3 = a1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 8);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 32);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 40);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath + 42);
  v8 = v2 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath;
  *v8 = *(a1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath);
  *(v8 + 8) = v4;
  *(v8 + 16) = *(v3 + 1);
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 42) = v7;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9C1FD4()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF4459C8(v0 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9C2124()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic);
  if (v1 <= 26)
  {
    if (v1 <= 23)
    {
      if (v1 == 11)
      {
        return 0x72657474696D45;
      }
    }

    else if ((v1 - 24) >= 2 && v1 == 26)
    {
      return 0x56664F746E696F50;
    }

    return 0x7463656A624FLL;
  }

  if (v1 > 31)
  {
    if (v1 == 32)
    {
      v3 = 0x74616D696E41;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    }

    if (v1 == 34)
    {
      return 0x626166657250;
    }

    return 0x7463656A624FLL;
  }

  if (v1 == 27)
  {
    return 0x6174736554746948;
  }

  if (v1 != 28)
  {
    return 0x7463656A624FLL;
  }

  v3 = 0x64696C6C6F43;
  return v3 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
}

uint64_t sub_1AF9C223C()
{
  v1 = v0;
  v11 = 0;
  v12 = 0xE000000000000000;
  v2 = v0 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference;
  sub_1AF44596C(v0 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(&v10[0] + 1);
  sub_1AF4459C8(v10);
  if (!Strong || (ObjectType = swift_getObjectType(), v6 = (*(v4 + 8))(ObjectType, v4), v8 = v7, swift_unknownObjectRelease(), !v8))
  {
    v6 = *(v2 + 16);
    v8 = *(v2 + 24);
  }

  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v10[0] = *(v1 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic);
  sub_1AFDFE458();
  return v11;
}

uint64_t sub_1AF9C2378(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (sub_1AF69504C(3009, v6, v7))
    {
      sub_1AF448018(v12, v13);
      v8 = sub_1AFDFEAF8();
      if (v8 > 5u)
      {
        v9 = 1;
      }

      else
      {
        v9 = qword_1AFE8B7F8[v8];
      }

      v10 = (v3 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic);
      *v10 = v9;
      v10[1] = 0;
    }

    else
    {
      sub_1AF448018(v12, v13);
      sub_1AF487170();
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = v11;
    }

    sub_1AF448018(v12, v13);
    sub_1AF9B3A20();
    sub_1AFDFEAD8();
    sub_1AF9B3A74(&v11, v3 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  }

  return result;
}

uint64_t sub_1AF9C2604(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC3VFX15WorldObjectNode_reference;
  sub_1AF44596C(v3 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v8);
  sub_1AF62C830(v8, ObjectType, a2, v9);
  sub_1AF4459C8(v8);
  return sub_1AF9B3A74(v9, v3 + v6);
}

uint64_t sub_1AF9C26CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic);
  if (v1 > 26)
  {
    if (v1 > 31)
    {
      if (v1 != 32)
      {
        if (v1 == 34)
        {
          v2 = 0xE600000000000000;
          v3 = 0x626166657250;
          goto LABEL_19;
        }

LABEL_15:
        v2 = 0xE600000000000000;
        v3 = 0x7463656A624FLL;
        goto LABEL_19;
      }

      v4 = 0x74616D696E41;
    }

    else
    {
      if (v1 == 27)
      {
        v2 = 0xEB00000000656C62;
        v3 = 0x6174736554746948;
        goto LABEL_19;
      }

      if (v1 != 28)
      {
        goto LABEL_15;
      }

      v4 = 0x64696C6C6F43;
    }

    v3 = v4 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v2 = 0xEA0000000000656CLL;
    goto LABEL_19;
  }

  if (v1 <= 23)
  {
    if (v1 == 11)
    {
      v2 = 0xE700000000000000;
      v3 = 0x72657474696D45;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((v1 - 24) < 2 || v1 != 26)
  {
    goto LABEL_15;
  }

  v2 = 0xEB00000000776569;
  v3 = 0x56664F746E696F50;
LABEL_19:
  MEMORY[0x1B2718AE0](v3, v2);

  return 0x746963696C706D49;
}

char *sub_1AF9C2830(void *a1)
{
  v2 = swift_allocObject();
  sub_1AF44596C(a1 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v2 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  *(v2 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = *(a1 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic);
  return sub_1AF96FD00(a1);
}

id sub_1AF9C28B8()
{
  result = [objc_allocWithZone(VFXAssetNode) init];
  qword_1EB6C3430 = result;
  return result;
}

uint64_t sub_1AF9C28EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX14WorldAssetNode_semantic);
  if (v1 <= 22)
  {
    if (v1 > 13)
    {
      if (v1 == 14)
      {
        return 0xD000000000000013;
      }

      if (v1 == 17)
      {
        return 0x6C6169726574614DLL;
      }
    }

    else
    {
      if (v1 == 8)
      {
        return 0x4165727574786554;
      }

      if (v1 == 13)
      {
        return 0xD000000000000012;
      }
    }

    goto LABEL_20;
  }

  if (v1 > 29)
  {
    if (v1 == 30)
    {
      return 0x6D6152726F6C6F43;
    }

    if (v1 == 31)
    {
      return 0x6F6974616D696E41;
    }

    goto LABEL_20;
  }

  if (v1 == 23)
  {
    return 0xD000000000000011;
  }

  if (v1 != 29)
  {
LABEL_20:
    v3 = 0x41646C726F57;
    return v3 & 0xFFFFFFFFFFFFLL | 0x7373000000000000;
  }

  v3 = 0x416576727543;
  return v3 & 0xFFFFFFFFFFFFLL | 0x7373000000000000;
}

uint64_t sub_1AF9C2A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1AF9C435C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(v6 + 32) = result | 0x8000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  a3[1] = v6;
  a3[2] = a2;
  a3[3] = v8;
  a3[4] = v8;
  a3[5] = v8;
  return result;
}

uint64_t sub_1AF9C2B54(void *a1, void *a2, void *a3)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v8[0] = *(v3 + *a2);
  sub_1AF448018(v9, v10);
  sub_1AF487468();
  sub_1AFDFEC38();
  if (!v4)
  {
    sub_1AF44596C(v3 + *a3, v8);
    sub_1AF448018(v9, v10);
    sub_1AF9B3AD0();
    sub_1AFDFEC38();
    sub_1AF4459C8(v8);
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
}

uint64_t sub_1AF9C2C6C(void *a1)
{
  v3 = v1;
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF388();
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    sub_1AF441150(a1, v6);
    if (sub_1AF69504C(3011, v6, v7))
    {
      sub_1AF448018(v19, v20);
      v8 = sub_1AFDFEAF8();
      if (v8 > 7u)
      {
        v9 = 1;
      }

      else
      {
        v9 = qword_1AFE8B828[v8];
      }

      v10 = (v3 + OBJC_IVAR____TtC3VFX14WorldAssetNode_semantic);
      *v10 = v9;
      v10[1] = 0;
    }

    else
    {
      sub_1AF448018(v19, v20);
      sub_1AF487170();
      sub_1AFDFEAD8();
      *(v3 + OBJC_IVAR____TtC3VFX14WorldAssetNode_semantic) = v18[0];
    }

    sub_1AF448018(v19, v20);
    sub_1AF9B3A20();
    sub_1AFDFEAD8();
    v11 = OBJC_IVAR____TtC3VFX14WorldAssetNode_reference;
    sub_1AF44596C(v3 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v15);
    sub_1AF9B3FD4(v18, v3 + v11);
    sub_1AF44596C(v3 + v11, v14);
    if (v16 == v14[2] && v17 == v14[3])
    {
      sub_1AF4459C8(v18);
      sub_1AF4459C8(v14);
    }

    else
    {
      v12 = sub_1AFDFEE28();
      sub_1AF4459C8(v18);
      sub_1AF4459C8(v14);
      if ((v12 & 1) == 0)
      {
        v13 = v3 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity;
        *v13 = 0;
        *(v13 + 8) = 1;
      }
    }

    sub_1AF4459C8(v15);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
  }

  return result;
}

uint64_t sub_1AF9C2EB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC3VFX14WorldAssetNode_reference;
  sub_1AF44596C(v2 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v20);
  (*(a2 + 16))(v20, ObjectType, a2);
  sub_1AF44596C(v2 + v6, v17);
  sub_1AF9B3FD4(v20, v2 + v6);
  sub_1AF44596C(v2 + v6, v16);
  if (v18 == v16[2] && v19 == v16[3])
  {
    sub_1AF4459C8(v20);
    sub_1AF4459C8(v16);
  }

  else
  {
    v8 = sub_1AFDFEE28();
    sub_1AF4459C8(v20);
    sub_1AF4459C8(v16);
    if ((v8 & 1) == 0)
    {
      v9 = v3 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity;
      *v9 = 0;
      *(v9 + 8) = 1;
    }
  }

  sub_1AF4459C8(v17);
  v10 = v3 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity;
  if ((*(v3 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity + 8) & 1) == 0)
  {
    result = *v10;
    if (*v10 != 0xFFFFFFFFLL)
    {
      goto LABEL_15;
    }
  }

  sub_1AF44596C(v3 + v6, v20);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1AF4459C8(v20);
  if (!Strong)
  {
    return result;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = [v13 asset];
    result = swift_unknownObjectRelease();
    if (!v14)
    {
      return result;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = sub_1AF9A30B4();
      swift_unknownObjectRelease();
      result = v15;
LABEL_15:
      sub_1AF62BFF0(result, 0, ObjectType, a2);
      *v10 = result;
      *(v10 + 8) = 0;
      return result;
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF9C30C0(void *a1)
{
  v2 = v1 + *a1;
  sub_1AF44596C(v2, &v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(&v16);
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1AFDFE218();
    v4 = sub_1AF9703D8();
    v6 = v5;

    v16 = v4;
    v17 = v6;
    MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF42630);
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);

    MEMORY[0x1B2718AE0](v7, v8);

    v10 = v16;
    v9 = v17;
    v11 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v15 = v11;
      swift_once();
      v11 = v15;
    }

    v16 = 0;
    sub_1AF0D4F18(v11, &v16, v10, v9);
  }

  sub_1AF9C435C(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  v13 = swift_allocObject();
  sub_1AF44596C(v2, v13 + 16);
  *(v12 + 32) = v13 | 0x1000000000000000;
  *(v12 + 40) = 1;
  *(v12 + 48) = xmmword_1AFE4C460;
  *(v12 + 64) = 1;
  return v12;
}

uint64_t sub_1AF9C33C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX14WorldAssetNode_semantic);
  v2 = v1 > 0x17;
  v3 = (1 << v1) & 0x806000;
  if (v2 || v3 == 0)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF9C3404()
{
  v0 = sub_1AF9C28EC();
  MEMORY[0x1B2718AE0](v0);

  return 0x746963696C706D49;
}

char *sub_1AF9C345C(void *a1)
{
  v2 = swift_allocObject();
  v3 = v2 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC3VFX14WorldAssetNode_semantic) = *(a1 + OBJC_IVAR____TtC3VFX14WorldAssetNode_semantic);
  sub_1AF44596C(a1 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v2 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity + 8);
  *v3 = *(a1 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity);
  *(v3 + 8) = v4;
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9C34F4(void *a1)
{

  sub_1AF919DAC(*(v1 + 24));
  v3 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  sub_1AF4459C8(v1 + *a1);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9C37B0()
{
  sub_1AF9C435C(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX17GetGPUEmitterNode_entity);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v1 + 32) = v3 | 0x4000000000000004;
  *(v1 + 40) = 1;
  *(v1 + 48) = xmmword_1AFE4C460;
  *(v1 + 64) = 1;
  return v1;
}

uint64_t sub_1AF9C38A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AF9C435C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v10 + 32) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = a2;
  *(v12 + 32) = result | 0x8000000000000000;
  *a5 = v10;
  a5[1] = v12;
  a5[2] = a3;
  a5[3] = a4;
  v14 = MEMORY[0x1E69E7CC0];
  a5[4] = MEMORY[0x1E69E7CC0];
  a5[5] = v14;
  return result;
}

uint64_t sub_1AF9C39CC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 3)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000027;
  }

  if (v1 == 3)
  {
    v3 = "n_mode(%script_context)";
  }

  else
  {
    v3 = "_TtC3VFX14GuardIsRunMode";
  }

  MEMORY[0x1B2718AE0](v2, v3 | 0x8000000000000000);

  MEMORY[0x1B2718AE0](175841321, 0xE400000000000000);
  v4 = sub_1AFA56CA0(&unk_1F2505BB8);
  v5 = MEMORY[0x1E69E62F8];
  sub_1AF9C4264(&unk_1F2505BD8, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  sub_1AF441DD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v4;
  v7 = inited + 32;
  v8 = sub_1AFA56CA0(inited);
  swift_setDeallocating();
  sub_1AF9C4264(v7, &unk_1ED723290, &type metadata for CodeEmitter.Code, v5);
  sub_1AFA5413C(v8);

  v9 = sub_1AFAF888C();
  v11 = v10;

  MEMORY[0x1B2718AE0](v9, v11);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  *(v12 + 32) = MEMORY[0x1E69E7CC0];
  v13 = v12 + 32;
  v14 = sub_1AFA56CA0(v12);
  swift_setDeallocating();
  sub_1AF9C4264(v13, &unk_1ED723290, &type metadata for CodeEmitter.Code, v5);
  sub_1AFA5413C(v14);

  sub_1AFAF888C();

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  return 673212009;
}

void *sub_1AF9C3C50(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  v16[1] = a5;
  swift_unknownObjectWeakAssign();
  v9 = (*(a5 + 16))(a4, a5);
  v11 = v10;
  swift_unknownObjectRelease();
  v16[2] = v9;
  v16[3] = v11;
  sub_1AF640200(v16, a3 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target);
  v12 = (a3 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_scriptKeyPath);
  *(v12 + 28) = *(a2 + 28);
  v13 = a2[1];
  *v12 = *a2;
  v12[1] = v13;
  v14 = MEMORY[0x1E69E7CC0];
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = v14;
  sub_1AFDFC308();
  return a3;
}

void *sub_1AF9C3D70(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  a6(0);
  v10 = swift_allocObject();

  return sub_1AF9C3C50(a1, a2, v10, a4, a5);
}

uint64_t sub_1AF9C3DE0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
LABEL_4:
        sub_1AF9C4870();
        return sub_1AFDFDC48() & 1;
      }
    }

    else if (a4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!a4)
  {
    goto LABEL_4;
  }

  return 0;
}

void *sub_1AF9C3E60(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = v5 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity;
  *v11 = 0;
  v11[8] = 1;
  swift_unknownObjectWeakInit();
  v19[1] = &off_1F256A430;
  swift_unknownObjectWeakAssign();
  v12 = [a1 identifier];
  v13 = sub_1AFDFCEF8();
  v15 = v14;

  v19[2] = v13;
  v19[3] = v15;
  sub_1AF640200(v19, v5 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference);
  v16 = (v5 + OBJC_IVAR____TtC3VFX14WorldAssetNode_semantic);
  *v16 = a4;
  v16[1] = a5;
  *v11 = a2;
  v11[8] = a3 & 1;
  v17 = MEMORY[0x1E69E7CC0];
  v5[3] = 0;
  v5[4] = 0;
  v5[2] = v17;
  sub_1AFDFC308();
  return v5;
}

uint64_t sub_1AF9C3F80(char a1)
{
  type metadata accessor for InspectorSetWorldValueNode(0);
  v3 = swift_dynamicCastClass();
  type metadata accessor for GetWorldValueNode(0);
  v20 = swift_dynamicCastClass();
  sub_1AF44596C(v1 + OBJC_IVAR____TtC3VFX21_StaticWorldValueNode_target, v25);
  if (qword_1EB633DD8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB6C2AB8;
  swift_unknownObjectWeakInit();
  v22 = &off_1F256B790;
  swift_unknownObjectWeakAssign();
  v5 = *(v4 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier + 8);
  v23 = *(v4 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier);
  v24 = v5;
  if (v25[2] == v23 && v25[3] == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1AFDFEE28();
  }

  sub_1AF4459C8(&v21);
  sub_1AF4459C8(v25);
  v8 = sub_1AF9C0E48();
  v10 = v9;

  v11 = sub_1AFAF7C88();
  v13 = v12;

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  if (a1)
  {
  }

  else
  {
    if (v3)
    {
      MEMORY[0x1B2718AE0](0x6F74636570736E49, 0xE900000000000072);
    }

    if (v20)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x20BA80E220746553;
    }

    if (v20)
    {
      v15 = 0xE000000000000000;
    }

    else
    {
      v15 = 0xA800000000000000;
    }

    MEMORY[0x1B2718AE0](v14, v15);

    if (v7)
    {

      v10 = 0xE400000000000000;
      v8 = 1718379859;
    }

    MEMORY[0x1B2718AE0](v8, v10);

    MEMORY[0x1B2718AE0](0x20BA80E220, 0xA500000000000000);
  }

  v21 = v11;
  v22 = v13;
  sub_1AF4486E4();
  v16 = sub_1AFDFDEB8();
  v18 = v17;

  MEMORY[0x1B2718AE0](v16, v18);

  return v25[0];
}

uint64_t sub_1AF9C4264(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF9C435C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1AF9C42C0()
{
  result = qword_1EB6415C8;
  if (!qword_1EB6415C8)
  {
    sub_1AF9C435C(255, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
    sub_1AF9B3A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6415C8);
  }

  return result;
}

void sub_1AF9C435C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF9C43AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NilNode(0);
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for PartialComposeNode(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 16);
    v10 = *(v9 + 16);

    if (v10)
    {
      v26 = v8;
      v11 = 0;
      v12 = v9 + 32;
      v25 = a3;
      do
      {
        if (!swift_dynamicCastClass())
        {
          v13 = *(v26 + OBJC_IVAR____TtC3VFX12_ComposeNode_type);

          sub_1AF442064(v13);
          v14 = sub_1AF931868(v13, v11, a3);
          v16 = v15;
          sub_1AF445BE4(v13);
          sub_1AFDFE218();

          v17 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v17);

          v18 = v14;
          a3 = v25;
          MEMORY[0x1B2718AE0](v18, v16);

          MEMORY[0x1B2718AE0](622869792, 0xE400000000000000);
          v19 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v19);

          MEMORY[0x1B2718AE0](2619, 0xE200000000000000);
          MEMORY[0x1B2718AE0](0x6D6172617025, 0xE600000000000000);
        }

        ++v11;
        v12 += 16;
      }

      while (v10 != v11);
    }

    return 0;
  }

  else
  {
    v20 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v20);

    v21 = *(v3 + 24);
    v22 = *(v21 + 8 * a2 + 32);
    sub_1AF448650(v21);
    sub_1AF442064(v22);

    v23 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v23);

    v24 = sub_1AF92EF80(0x6D6172617025uLL, 0xE600000000000000, v22, 37, 0xE100000000000000, a3);

    sub_1AF445BE4(v22);
    return v24;
  }
}

uint64_t sub_1AF9C471C(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  type metadata accessor for NilNode(0);
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for PartialComposeNode(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
    v4 = *(v3 + 16);
    if (!v4)
    {
      return 1;
    }

    v5 = (v3 + 32);
    while (1)
    {
      v6 = *v5;
      v5 += 2;
      if (v6)
      {
        result = swift_dynamicCastClass();
        if (!result)
        {
          break;
        }
      }

      if (!--v4)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t assignWithCopy for WorldObjectReference(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for WorldObjectReference(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

unint64_t sub_1AF9C4870()
{
  result = qword_1EB633BB0;
  if (!qword_1EB633BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB633BB0);
  }

  return result;
}

unint64_t *assignWithCopy for TypeConstraint(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1AF4410A8(*a2);
  v4 = *a1;
  *a1 = v3;
  sub_1AF441114(v4);
  return a1;
}

unint64_t *assignWithTake for TypeConstraint(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1AF441114(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for TypeConstraint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TypeConstraint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AF9C4A10(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

void *sub_1AF9C4A2C(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

unint64_t sub_1AF9C4A68(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (sub_1AF9C5694(a2, a1))
  {
    return 0xF000000000000007;
  }

  if (a1 >> 61 == 4)
  {
    v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (v2 >> 61 == 4)
    {
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1AF442064(v5);
      sub_1AF442064(v6);
      v7 = v6;
      if (sub_1AF90DC34(v5, v6))
      {
        sub_1AF445BE4(v6);
LABEL_12:
        sub_1AF445BE4(v5);
        return 0xF000000000000007;
      }

      type metadata accessor for CastNode(0);
      v11 = sub_1AF98750C(v5, v6);
      sub_1AF445BE4(v5);
      result = v7;
      if (v11 != 1)
      {
        sub_1AF445BE4(v7);
        return 0xD000000000000007;
      }
    }

    else
    {
      sub_1AF442064(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
      if (sub_1AF9C4C80(v5, v2))
      {
        goto LABEL_12;
      }

      type metadata accessor for CastNode(0);
      v13 = sub_1AF987824(v5, v2);
      sub_1AF445BE4(v5);
      if ((~v13 & 0xF000000000000007) != 0)
      {
        return v13;
      }

      else
      {
        return 0xD000000000000007;
      }
    }
  }

  else
  {
    if (v2 >> 61 != 4)
    {
      if ((sub_1AF9C5478(a1, v2) & 1) != 0 || (sub_1AF9C5478(v2, a1) & 1) != 0 || sub_1AF9C5694(v2, 0xA000000000000020) && sub_1AF9C5694(a1, 0xA000000000000018) || sub_1AF9C5694(a1, 0xA000000000000020) && sub_1AF9C5694(v2, 0xA000000000000018))
      {
        return 0xF000000000000007;
      }

      return 0xD000000000000007;
    }

    v8 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    if (v8 >> 61)
    {
    }

    else
    {
      v9 = *(v8 + 16);
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      v2 = v10 | 0x8000000000000000;
      sub_1AF442064(v9);
    }

    v12 = sub_1AF9C4A68(v2, a1);
    sub_1AF441114(v2);
    return v12;
  }

  return result;
}

uint64_t sub_1AF9C4C80(unint64_t a1, unint64_t a2)
{
  v3 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        if (a1 >> 61 == 2)
        {
          v5 = 24;
          goto LABEL_33;
        }

        if (a1 >> 61 == 3)
        {
          v5 = 16;
LABEL_33:
          v14 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + v5);
          sub_1AF4410A8(*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
          sub_1AF442064(v14);
          v15 = sub_1AF9C4C80(v14, v4);
          sub_1AF445BE4(v14);
          sub_1AF441114(v4);
          return v15 & 1;
        }

        return 0;
      }

      return 1;
    }

    if (a1 >> 61 == 2 && *(a2 + 16) == *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      v9 = *(a2 + 24);
      v6 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1AF442064(v6);
      v7 = sub_1AF9C4C80(v6, v9);
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 == 3)
  {
    v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF4410A8(v10);
    if (sub_1AF90F890(a1, 0xC000000000000000))
    {
      sub_1AF441114(v10);
      return 1;
    }

    v8 = sub_1AF9C4C80(a1, v10);
    sub_1AF441114(v10);
    return v8 & 1;
  }

  if (v3 == 4)
  {
    v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF442064(v6);
    v7 = sub_1AF90DC34(a1, v6);
LABEL_10:
    v8 = v7;
    sub_1AF445BE4(v6);
    return v8 & 1;
  }

  v12 = __ROR8__(a2 + 0x6000000000000000, 3);
  if (v12 > 4)
  {
    if (v12 > 6)
    {
      if (v12 == 7)
      {
        if (sub_1AF90F890(a1, 0xC000000000000088))
        {
          return 1;
        }

        v13 = 0xC000000000000090;
      }

      else if (v12 == 8)
      {
        if (sub_1AF90F890(a1, 0xC000000000000078))
        {
          return 1;
        }

        v13 = 0xC000000000000080;
      }

      else
      {
        if (sub_1AF90F890(a1, 0xC0000000000000A0))
        {
          return 1;
        }

        v13 = 0xC0000000000000B0;
      }

      goto LABEL_52;
    }

    if (v12 != 5)
    {
      if (a1 >> 61 != 1)
      {
        return 0;
      }

      v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (v16 >> 61 != 1)
      {
        return 0;
      }

      v17 = v16 & 0x1FFFFFFFFFFFFFFFLL;
      goto LABEL_49;
    }

LABEL_47:
    if (a1 >> 61 != 1)
    {
      return 0;
    }

    v17 = a1 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_49:
    v19 = *(v17 + 24);
    sub_1AF442064(v19);
    v20 = sub_1AF90F890(v19, 0xC000000000000058);
    sub_1AF445BE4(v19);
    return v20 & 1;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      return a1 >> 61 == 6 && ((a1 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0;
    }

    if (v12 == 3)
    {
      if (a1 >> 61 == 6 && ((a1 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) == 0 || (sub_1AF90F890(a1, 0xC000000000000058) & 1) != 0)
      {
        return 1;
      }

      v13 = 0xC000000000000060;
LABEL_52:

      return sub_1AF90F890(a1, v13);
    }

    if (sub_1AF90F890(a1, 0xC000000000000058))
    {
      return 1;
    }

    goto LABEL_47;
  }

  if (!v12)
  {
    return (sub_1AF90F890(a1, 0xC000000000000008) ^ 1) & 1;
  }

  if (a1 >> 61 == 1)
  {
    v23 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v24 = v23 >> 61;
    if (v23 >> 61 == 1)
    {
      return 0;
    }

    v25 = ((v23 + 0x3FFFFFFFFFFFFFD0) & 0xFFFFFFFFFFFFFFE7) != 0;
    v26 = v24 != 6 || v25;
    return v26 & 1;
  }

  else
  {
    if (a1 >> 61 != 6)
    {
      return 0;
    }

    v21 = __ROR8__(a1 + 0x3FFFFFFFFFFFFFD0, 3);
    v22 = 0x6Fu >> v21;
    if (v21 >= 7)
    {
      LOBYTE(v22) = 0;
    }

    return v22 & 1;
  }
}

uint64_t sub_1AF9C503C(unint64_t a1)
{
  v1 = a1 >> 61;
  if (a1 >> 61 == 2)
  {
    return *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  if (v1 == 1)
  {
    v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF4410A8(v3);
    v4 = sub_1AF9C503C(v3);
    sub_1AF441114(v3);
    return v4;
  }

  else if (v1)
  {
    return 0;
  }

  else
  {
    return sub_1AF9C503C(*(a1 + 24));
  }
}

uint64_t sub_1AF9C50D4(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) > 2)
  {
    if (v1 == 3)
    {
      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1AF4410A8(v5);
      v10 = sub_1AF9C50D4(v5);
      MEMORY[0x1B2718AE0](63, 0xE100000000000000);
      sub_1AF441114(v5);
      return v10;
    }

    if (v1 == 4)
    {
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1AF442064(v3);
      v4 = sub_1AF90D394(v3);
      sub_1AF445BE4(v3);
      return v4;
    }

    v6 = __ROR8__(a1 + 0x6000000000000000, 3);
    if (v6 > 4)
    {
      if (v6 <= 6)
      {
        v7 = v6 == 5;
        v8 = 0x6E97C374616F6C66;
        v9 = 0x78697274616DLL;
      }

      else
      {
        if (v6 == 7)
        {
          return 0x6576727563;
        }

        v7 = v6 == 8;
        v8 = 0x6D6152726F6C6F63;
        v9 = 0x72657474696D65;
      }

      if (v7)
      {
        return v8;
      }

      else
      {
        return v9;
      }
    }

    else if (v6 <= 1)
    {
      if (v6)
      {
        return 0x636972656D756ELL;
      }

      else
      {
        return 42;
      }
    }

    else if (v6 == 2)
    {
      return 0x72656765746E69;
    }

    else if (v6 == 3)
    {
      return 0x72616C616373;
    }

    else
    {
      return 0x6E97C374616F6C66;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
      return 0x697463656C6C6F63;
    }

    else
    {
      return sub_1AF9C5BB8(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
    }
  }

  else
  {
    return 0x7961727261;
  }
}

uint64_t sub_1AF9C52FC(unint64_t a1, unint64_t a2)
{
  v2 = a2 >> 61;
  if (!(a2 >> 61))
  {
    v3 = 24;
LABEL_5:
    v4 = *(a2 + v3);
    if (a1 >> 61 == 3)
    {
      v5 = 16;
    }

    else
    {
      if (a1 >> 61 != 2)
      {
        v7 = 0xF000000000000007;
        goto LABEL_13;
      }

      v5 = 24;
    }

    v7 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + v5);
    sub_1AF442064(v7);
LABEL_13:
    sub_1AF4410A8(v4);
    v6 = sub_1AF9C52FC(v7, v4);
    sub_1AF441114(v4);
    sub_1AF914F8C(v7);
    return v6;
  }

  if (v2 == 1)
  {
    a2 &= 0x1FFFFFFFFFFFFFFFuLL;
    v3 = 16;
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF442064(a1);
    return v6;
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF42960);
  sub_1AFDFE458();
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9C5478(unint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = a2 >> 61;
  if ((a2 >> 61) <= 2)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      if (!(a1 >> 61))
      {
        v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v7 = *(a1 + 24);
        sub_1AF4410A8(v6);
        sub_1AF4410A8(v7);
        v8 = sub_1AF9C5694(v6, v7);
        sub_1AF441114(v7);
        sub_1AF441114(v6);
        return v8;
      }

      return 0;
    }

    return v2;
  }

  if (v3 == 3)
  {
    v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = a1;
    sub_1AF4410A8(v10);
    if (!sub_1AF9C5694(v10, v11))
    {
      v12 = sub_1AF9C5478(v11, v10);
      sub_1AF441114(v10);
      return v12 & 1;
    }

    sub_1AF441114(v10);
    return 1;
  }

  if (v3 == 4)
  {
    return v2;
  }

  v4 = __ROR8__(a2 + 0x6000000000000000, 3);
  if (v4 > 4)
  {
    return 0;
  }

  if (v4 <= 1)
  {
    if (v4)
    {
      v13 = a1;
      if (!sub_1AF9C5694(a1, 0xA000000000000010) && !sub_1AF9C5694(v13, 0xA000000000000018) && !sub_1AF9C5694(v13, 0xA000000000000020))
      {
        v5 = 0xA000000000000028;
        a1 = v13;
        goto LABEL_26;
      }
    }

    return 1;
  }

  if (v4 == 2)
  {
    return 0;
  }

  if (v4 == 3)
  {
    v5 = 0xA000000000000010;
  }

  else
  {
    v5 = 0xA000000000000028;
  }

LABEL_26:

  return sub_1AF9C5694(a1, v5);
}

BOOL sub_1AF9C5694(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 61;
  if (!(a1 >> 61))
  {
    while (!(a2 >> 61) && *(a1 + 16) == *(a2 + 16))
    {
      a1 = *(a1 + 24);
      a2 = *(a2 + 24);
      v2 = a1 >> 61;
      if (a1 >> 61)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  if (v2 <= 2)
  {
    if (v2 != 1)
    {
      if (a2 >> 61 == 2)
      {
        return *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      }

      return 0;
    }

    if (a2 >> 61 != 1)
    {
      return 0;
    }

LABEL_14:
    v6 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF4410A8(v7);
    LOBYTE(v6) = sub_1AF9C5694(v6, v7);
    sub_1AF441114(v7);
    return v6 & 1;
  }

  if (v2 == 3)
  {
    if (a2 >> 61 != 3)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (v2 == 4)
  {
    if (a2 >> 61 == 4)
    {
      v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1AF442064(v4);
      LOBYTE(v3) = sub_1AF90F890(v3, v4);
      sub_1AF445BE4(v4);
      return v3 & 1;
    }

    return 0;
  }

  v8 = __ROR8__(a1 + 0x6000000000000000, 3);
  if (v8 > 4)
  {
    if (v8 <= 6)
    {
      if (v8 == 5)
      {
        if (a2 != 0xA000000000000028)
        {
          return 0;
        }
      }

      else if (a2 != 0xA000000000000030)
      {
        return 0;
      }

      return 1;
    }

    if (v8 != 7)
    {
      if (v8 == 8)
      {
        if (a2 != 0xA000000000000040)
        {
          return 0;
        }
      }

      else if (a2 != 0xA000000000000048)
      {
        return 0;
      }

      return 1;
    }

    if (a2 == 0xA000000000000038)
    {
      return 1;
    }
  }

  else if (v8 <= 1)
  {
    if (v8)
    {
      return a2 == 0xA000000000000008;
    }

    if (a2 == 0xA000000000000000)
    {
      return 1;
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        if (a2 != 0xA000000000000018)
        {
          return 0;
        }
      }

      else if (a2 != 0xA000000000000020)
      {
        return 0;
      }

      return 1;
    }

    if (a2 == 0xA000000000000010)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1AF9C58F8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  for (i = a2 >> 61; !(v2 >> 61); i = v2 >> 61)
  {
    v5 = *(v2 + 16);
    v2 = *(v2 + 24);
    MEMORY[0x1B271ACB0](7);
    MEMORY[0x1B271ACB0](v5);
  }

  if (i <= 2)
  {
    if (i != 1)
    {
      v12 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1B271ACB0](12);
      v11 = v12;
      return MEMORY[0x1B271ACB0](v11);
    }

    v8 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = 8;
  }

  else
  {
    if (i != 3)
    {
      if (i == 4)
      {
        v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x1B271ACB0](14);
        sub_1AF442064(v6);
        sub_1AF90FC0C(a1, v6);

        return sub_1AF445BE4(v6);
      }

      v10 = __ROR8__(v2 + 0x6000000000000000, 3);
      if (v10 > 4)
      {
        if (v10 <= 6)
        {
          if (v10 == 5)
          {
            v11 = 5;
          }

          else
          {
            v11 = 6;
          }
        }

        else if (v10 == 7)
        {
          v11 = 9;
        }

        else if (v10 == 8)
        {
          v11 = 10;
        }

        else
        {
          v11 = 11;
        }
      }

      else if (v10 <= 1)
      {
        v11 = v10 != 0;
      }

      else if (v10 == 2)
      {
        v11 = 2;
      }

      else if (v10 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 4;
      }

      return MEMORY[0x1B271ACB0](v11);
    }

    v8 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = 13;
  }

  MEMORY[0x1B271ACB0](v9);
  sub_1AF4410A8(v8);
  sub_1AF9C58F8(a1, v8);

  return sub_1AF441114(v8);
}

uint64_t sub_1AF9C5AC0()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF9C58F8(v3, v1);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9C5B10()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF9C58F8(v3, v1);
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF9C5B64()
{
  result = qword_1EB6415D0;
  if (!qword_1EB6415D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6415D0);
  }

  return result;
}

uint64_t sub_1AF9C5BB8(uint64_t a1)
{
  v2 = sub_1AF42C2A4(&unk_1F24F3898);
  sub_1AF881148();
  swift_arrayDestroy();
  if (v2[2] && (v3 = sub_1AF449CB8(a1), (v4 & 1) != 0))
  {
    v5 = *(v2[7] + 16 * v3);
  }

  else
  {
    v5 = 63;
  }

  return v5;
}

uint64_t sub_1AF9C5C54()
{
  if (*(v0 + 4) == 1)
  {
    return *v0 & 1;
  }

  else
  {
    return 1;
  }
}

double sub_1AF9C5C78(uint64_t a1, unsigned int a2, char a3)
{
  result = 0.0;
  if (!a3)
  {
    v4.i64[0] = a1;
    v4.i64[1] = a2;
    *&result = vmaxq_u32(v4, xmmword_1AFE552F0).u64[0];
  }

  return result;
}

uint64_t sub_1AF9C5CA4(unsigned int a1, uint64_t a2, char a3)
{
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  if (a3 == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF9C5D58()
{
  v1 = sub_1AF64B110(&type metadata for Scale2, &off_1F252F838, *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 16));
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF9C5DC8()
{
  v1 = sub_1AF64B110(&type metadata for WorldAABB, &off_1F2510410, *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 16));
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF9C5E88(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF64B110(a1, a2, *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 16));
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1AF9C5F10(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF64B110(a1, a2, *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 16));
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

float32x2_t sub_1AF9C5F70(__n128 _Q0, float a2, float a3)
{
  _S4 = -2.0;
  __asm { FMLA            S5, S4, V0.S[1] }

  v13 = LODWORD(_S5);
  v14 = _Q0.n128_f32[2];
  v9 = sqrtf(1.0 - (_S5 * _S5));
  v10 = __sincosf_stret(a2 + ((a3 - a2) * _Q0.n128_f32[0]));
  v11.f32[0] = v9 * v10.__cosval;
  v11.i32[1] = v13;
  v11.f32[2] = v9 * v10.__sinval;
  return vmul_f32(*&vmulq_n_f32(v11, cbrtf(v14)), 0x3F0000003F000000);
}

float32x2_t sub_1AF9C6060(float32x4_t a1, float a2, float a3)
{
  v3 = a2 + (a1.f32[0] * (a3 - a2));
  v4 = __sincosf_stret((1.0 - a1.f32[1]) * 3.1416);
  v5 = fmaxf(v4.__sinval, 0.0000001);
  v6 = __sincosf_stret(v3);
  v7.f32[0] = v5 * v6.__cosval;
  v7.i32[1] = LODWORD(v4.__cosval);
  v7.f32[2] = v5 * v6.__sinval;
  return vmul_f32(*&vmulq_laneq_f32(v7, a1, 2), 0x3F0000003F000000);
}

uint64_t sub_1AF9C6220(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v7, v8);
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1AFDFEC28();
      if (!v4)
      {
        sub_1AF448018(v7, v8);
        sub_1AFDFEC68();
      }
    }

    else
    {
      sub_1AFDFEC28();
    }
  }

  else
  {
    sub_1AFDFEC28();
    if (!v4)
    {
      sub_1AF448018(v7, v8);
      sub_1AF9D0E1C(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
      sub_1AF9D036C(&qword_1EB63F038);
      sub_1AFDFEC38();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
}

double sub_1AF9C6438@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF9D0DCC(0, &qword_1EB6330B0, &type metadata for ShapeDistribution, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 2;
  *(v2 + 64) = xmmword_1AFE552B0;
  *(v2 + 80) = 0;
  *&result = 100;
  *(v2 + 96) = xmmword_1AFE552A0;
  *(v2 + 112) = 1;
  *a1 = v2;
  return result;
}

uint64_t sub_1AF9C6590(uint64_t a1)
{
  if (qword_1EB6371F8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB6C3480;
  if (*(qword_1EB6C3480 + 16))
  {
    v3 = sub_1AF449CB8(a1);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);

      return v5;
    }
  }

  if (a1 < 1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1AF9D0E1C(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v5 = sub_1AFDFD488();
    *(v5 + 16) = a1;
  }

  bzero((v5 + 32), 8 * a1);
LABEL_10:
  v6 = 0;
  do
  {
    v7 = *(sub_1AF9CE1C0(v6 + 1, 2) + 32);

    *(v5 + 8 * v6++ + 32) = v7;
  }

  while (a1 != v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = qword_1EB6C3480;
  qword_1EB6C3480 = 0x8000000000000000;
  sub_1AF858964(v5, a1, isUniquelyReferenced_nonNull_native);
  qword_1EB6C3480 = v10;
  return v5;
}

uint64_t sub_1AF9C6718(uint64_t a1)
{
  if (qword_1EB637200 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB6C3488;
  if (*(qword_1EB6C3488 + 16))
  {
    v3 = sub_1AF449CB8(a1);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);

      return v5;
    }
  }

  if (a1 < 1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1AF9D0E1C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v5 = sub_1AFDFD488();
    *(v5 + 16) = a1;
  }

  bzero((v5 + 32), 16 * a1);
LABEL_10:
  v6 = 0;
  do
  {
    v7 = sub_1AF9CE1C0(v6 + 1, 3);
    *&v8 = *(v7 + 32);
    DWORD2(v8) = *(v7 + 40);
    v12 = v8;

    v9 = v12;
    HIDWORD(v9) = 0;
    *(v5 + 16 * v6++ + 32) = v9;
  }

  while (a1 != v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = qword_1EB6C3488;
  qword_1EB6C3488 = 0x8000000000000000;
  sub_1AF858AC8(v5, a1, isUniquelyReferenced_nonNull_native);
  qword_1EB6C3488 = v13;
  return v5;
}

uint64_t sub_1AF9C68AC(uint64_t result)
{
  if (v1[1].u8[1] > 1u)
  {
    if (v1[1].i8[1] == 2)
    {
      v1[4].i64[0] += (v1[4].i64[0] >> 63) | 1;
    }

    else
    {
      if (v1[1].i8[0])
      {
        v3 = v1;
        if (v1[1].i8[0] == 1)
        {
          v4 = v1->i64[0];
        }

        else
        {
          v4 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v3 = v1;
        v5 = *v1;
        v5.i32[3] = 0;
        v6 = vmaxq_u32(v5, xmmword_1AFE552F0);
        v4 = (v6.i32[0] * v6.i32[1] * v6.i32[2]);
      }

      result = sub_1AF9CEE0C(v4);
      v3[4].i64[0] = result;
    }
  }

  else
  {
    if (v1[1].i8[1])
    {
      v2 = v1[4].i64[0] - 1;
    }

    else
    {
      v2 = v1[4].i64[0] + 1;
    }

    v1[4].i64[0] = v2;
  }

  return result;
}

uint64_t sub_1AF9C6980(uint64_t result)
{
  if (!*(v1 + 16))
  {
    return sub_1AF9C68AC(result);
  }

  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + 8);
    if (*(v1 + 17) > 1u)
    {
      if (*(v1 + 17) == 2)
      {
        *(v1 + 8) = ((v2 >> 63) | 1) + v2;
      }

      else
      {
        result = sub_1AF9CEE0C(*v1);
        *(v1 + 8) = result;
      }
    }

    else
    {
      if (*(v1 + 17))
      {
        v3 = v2 - 1;
      }

      else
      {
        v3 = v2 + 1;
      }

      *(v1 + 8) = v3;
    }
  }

  else
  {
    vcvts_n_f32_u64(sub_1AF6C0D50() & 0xFFFFFF, 0x18uLL);
    vcvts_n_f32_u64(sub_1AF6C0D50() & 0xFFFFFF, 0x18uLL);
    return sub_1AF6C0D50();
  }

  return result;
}

uint64_t *sub_1AF9C6B04(uint64_t *result, uint64_t a2, uint64_t a3, __n128 *a4, double a5, double a6, double a7, double a8, __n128 a9, double a10, int32x4_t a11)
{
  if (a2 != a3)
  {
    v11 = a4[1].n128_u8[0];
    v12 = a4[5].n128_u64[0];
    v13 = a4[6].n128_u64[0];
    v14 = a4[7].n128_u64[0];
    v15 = a4->n128_u64[0];
    v16 = -v15;
    v17 = *a4;
    v17.i32[3] = 0;
    v18 = vmaxq_u32(v17, xmmword_1AFE552F0);
    do
    {
      if (v11)
      {
        if (v11 == 1)
        {
          v28 = a4[4].n128_i64[0];
          v26 = *(a4[8].n128_u64[0] + 8 * (v28 % a4[4].n128_u64[1]) + 8 * (a4[4].n128_u64[1] & ((v28 % a4[4].n128_u64[1]) >> 63)) + 32);
          if (a4[1].n128_u8[1] > 1u)
          {
            if (a4[1].n128_u8[1] == 2)
            {
              a4[4].n128_u64[0] = ((v28 >> 63) | 1) + v28;
            }

            else
            {
              v32 = result[1];
              v33 = 9 * __ROR8__(5 * v32, 57);
              v34 = result[2] ^ *result;
              v35 = result[3] ^ v32;
              v36 = v34 ^ v32;
              v37 = v35 ^ *result;
              *result = v37;
              result[1] = v34 ^ v32;
              v38 = __ROR8__(v35, 19);
              v39 = v34 ^ (v32 << 17);
              result[2] = v39;
              result[3] = v38;
              v40 = (v33 * v15) >> 64;
              if (v15 > v33 * v15 && v16 % v15 > v33 * v15)
              {
                do
                {
                  v41 = 9 * __ROR8__(5 * v36, 57);
                  v42 = v37 ^ v39;
                  v43 = v36 ^ v38;
                  v39 ^= v37 ^ (v36 << 17);
                  v36 ^= v42;
                  v37 ^= v43;
                  v38 = __ROR8__(v43, 19);
                }

                while (v16 % v15 > v41 * v15);
                *result = v37;
                result[1] = v36;
                v40 = (v41 * v15) >> 64;
                result[2] = v39;
                result[3] = v38;
              }

              a4[4].n128_u64[0] = v40;
            }
          }

          else
          {
            if (a4[1].n128_u8[1])
            {
              v29 = v28 - 1;
            }

            else
            {
              v29 = v28 + 1;
            }

            a4[4].n128_u64[0] = v29;
          }
        }

        else
        {
          v19 = result[1];
          v20 = result[2] ^ *result;
          v21 = result[3] ^ v19;
          v22 = v20 ^ v19;
          v23 = v21 ^ *result;
          v26.f32[0] = vcvts_n_f32_u64((9 * ((((5 * v19) >> 32) >> 25) | (640 * v19))) & 0xFFFFFF, 0x18uLL);
          v24 = v23 ^ v20 ^ (v19 << 17);
          v25 = v22 ^ __ROR8__(v21, 19);
          *result = v25 ^ v23;
          result[1] = v24 ^ v22;
          result[2] = v24 ^ (v22 << 17);
          result[3] = __ROR8__(v25, 19);
          v26.i32[1] = vcvts_n_f32_u64((9 * ((((5 * v22) >> 32) >> 25) | (640 * v22))) & 0xFFFFFFLL, 0x18uLL);
        }
      }

      else
      {
        v30 = a4[4].n128_i64[0];
        if (a4[1].n128_u8[1] > 1u)
        {
          if (a4[1].n128_u8[1] == 2)
          {
            v31 = ((v30 >> 63) | 1) + v30;
          }

          else
          {
            v44 = result[1];
            v45 = (v18.i32[0] * v18.i32[1] * v18.i32[2]);
            v46 = 9 * __ROR8__(5 * v44, 57);
            v47 = result[2] ^ *result;
            v48 = result[3] ^ v44;
            v49 = v47 ^ v44;
            v50 = v48 ^ *result;
            *result = v50;
            result[1] = v47 ^ v44;
            v51 = __ROR8__(v48, 19);
            v52 = v47 ^ (v44 << 17);
            result[2] = v52;
            result[3] = v51;
            v31 = (v46 * (v18.i32[0] * v18.i32[1] * v18.i32[2])) >> 64;
            v53 = v46 * v45;
            if (v46 * v45 < v45)
            {
              v54 = -v45 % v45;
              if (v54 > v53)
              {
                do
                {
                  v55 = 9 * __ROR8__(5 * v49, 57);
                  v56 = v50 ^ v52;
                  v57 = v49 ^ v51;
                  v52 ^= v50 ^ (v49 << 17);
                  v49 ^= v56;
                  v50 ^= v57;
                  v51 = __ROR8__(v57, 19);
                }

                while (v54 > v55 * v45);
                *result = v50;
                result[1] = v49;
                v31 = (v55 * (v18.i32[0] * v18.i32[1] * v18.i32[2])) >> 64;
                result[2] = v52;
                result[3] = v51;
              }
            }
          }
        }

        else if (a4[1].n128_u8[1])
        {
          v31 = v30 - 1;
        }

        else
        {
          v31 = v30 + 1;
        }

        a4[4].n128_u64[0] = v31;
        a11 = a4[2];
        v58 = v30 * *a11.i32;
        v59.f32[0] = fminf(v58 - floorf(v58), 1.0);
        v60 = vmuls_lane_f32(v58 - v59.f32[0], *a11.i8, 1);
        v59.i32[1] = fminf(v60 - floorf(v60), 1.0);
        v26 = vadd_f32(vmul_f32(*a11.i8, 0x3F0000003F000000), v59);
      }

      *a11.i8 = vadd_f32(v26, 0xBF000000BF000000);
      a11 = vzip1q_s32(a11, v18);
      a11.i32[1] = 0;
      a11.i32[3] = a9.n128_i32[3];
      v27 = 16 * a2;
      *(v12 + v27) = a11;
      *(v13 + v27) = xmmword_1AFE20160;
      *(v14 + 8 * a2++) = v26;
    }

    while (a2 != a3);
  }

  return result;
}

void sub_1AF9C6E50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, __n128 a7)
{
  if (a2 != a3)
  {
    v10 = a2;
    v12 = *(a4 + 16);
    v13 = *(a4 + 80);
    v14 = *(a4 + 96);
    v15 = *(a4 + 112);
    v16 = *a4;
    v65 = -v16;
    v17 = *a4;
    v17.i32[3] = 0;
    v18 = a6 - a5;
    v66 = vmaxq_u32(v17, xmmword_1AFE552F0);
    do
    {
      v69 = a7.n128_u32[3];
      if (v12)
      {
        if (v12 == 1)
        {
          v31 = *(a4 + 64);
          v26 = *(*(a4 + 128) + 8 * (v31 % *(a4 + 72)) + 8 * (*(a4 + 72) & ((v31 % *(a4 + 72)) >> 63)) + 32);
          if (*(a4 + 17) > 1u)
          {
            if (*(a4 + 17) == 2)
            {
              *(a4 + 64) = ((v31 >> 63) | 1) + v31;
            }

            else
            {
              v35 = a1[1];
              v36 = 9 * __ROR8__(5 * v35, 57);
              v37 = a1[2] ^ *a1;
              v38 = a1[3] ^ v35;
              v39 = v37 ^ v35;
              v40 = v38 ^ *a1;
              *a1 = v40;
              a1[1] = v37 ^ v35;
              v41 = __ROR8__(v38, 19);
              v42 = v37 ^ (v35 << 17);
              a1[2] = v42;
              a1[3] = v41;
              v43 = (v36 * v16) >> 64;
              if (v16 > v36 * v16 && v65 % v16 > v36 * v16)
              {
                do
                {
                  v44 = 9 * __ROR8__(5 * v39, 57);
                  v45 = v40 ^ v42;
                  v46 = v39 ^ v41;
                  v42 ^= v40 ^ (v39 << 17);
                  v39 ^= v45;
                  v40 ^= v46;
                  v41 = __ROR8__(v46, 19);
                }

                while (v65 % v16 > v44 * v16);
                *a1 = v40;
                a1[1] = v39;
                v43 = (v44 * v16) >> 64;
                a1[2] = v42;
                a1[3] = v41;
              }

              *(a4 + 64) = v43;
            }
          }

          else
          {
            if (*(a4 + 17))
            {
              v32 = v31 - 1;
            }

            else
            {
              v32 = v31 + 1;
            }

            *(a4 + 64) = v32;
          }
        }

        else
        {
          v19 = a1[1];
          v20 = a1[2] ^ *a1;
          v21 = a1[3] ^ v19;
          v22 = v20 ^ v19;
          v23 = v21 ^ *a1;
          v26.f32[0] = vcvts_n_f32_u64((9 * ((((5 * v19) >> 32) >> 25) | (640 * v19))) & 0xFFFFFF, 0x18uLL);
          v24 = v23 ^ v20 ^ (v19 << 17);
          v25 = v22 ^ __ROR8__(v21, 19);
          *a1 = v25 ^ v23;
          a1[1] = v24 ^ v22;
          a1[2] = v24 ^ (v22 << 17);
          a1[3] = __ROR8__(v25, 19);
          v26.i32[1] = vcvts_n_f32_u64((9 * ((((5 * v22) >> 32) >> 25) | (640 * v22))) & 0xFFFFFFLL, 0x18uLL);
        }
      }

      else
      {
        v33 = *(a4 + 64);
        if (*(a4 + 17) > 1u)
        {
          if (*(a4 + 17) == 2)
          {
            v34 = ((v33 >> 63) | 1) + v33;
          }

          else
          {
            v47 = a1[1];
            v48 = (v66.i32[0] * v66.i32[1] * v66.i32[2]);
            v49 = 9 * __ROR8__(5 * v47, 57);
            v50 = a1[2] ^ *a1;
            v51 = a1[3] ^ v47;
            v52 = v50 ^ v47;
            v53 = v51 ^ *a1;
            *a1 = v53;
            a1[1] = v50 ^ v47;
            v54 = __ROR8__(v51, 19);
            v55 = v50 ^ (v47 << 17);
            a1[2] = v55;
            a1[3] = v54;
            v34 = (v49 * (v66.i32[0] * v66.i32[1] * v66.i32[2])) >> 64;
            v56 = v49 * v48;
            if (v49 * v48 < v48)
            {
              v57 = -v48 % v48;
              if (v57 > v56)
              {
                do
                {
                  v58 = 9 * __ROR8__(5 * v52, 57);
                  v59 = v53 ^ v55;
                  v60 = v52 ^ v54;
                  v55 ^= v53 ^ (v52 << 17);
                  v52 ^= v59;
                  v53 ^= v60;
                  v54 = __ROR8__(v60, 19);
                }

                while (v57 > v58 * v48);
                *a1 = v53;
                a1[1] = v52;
                v34 = (v58 * (v66.i32[0] * v66.i32[1] * v66.i32[2])) >> 64;
                a1[2] = v55;
                a1[3] = v54;
              }
            }
          }
        }

        else if (*(a4 + 17))
        {
          v34 = v33 - 1;
        }

        else
        {
          v34 = v33 + 1;
        }

        *(a4 + 64) = v34;
        v61 = *(a4 + 32);
        v62 = v33 * *&v61;
        v63.f32[0] = fminf(v62 - floorf(v62), 1.0);
        v64 = vmuls_lane_f32(v62 - v63.f32[0], *&v61, 1);
        v63.i32[1] = fminf(v64 - floorf(v64), 1.0);
        v26 = vadd_f32(vmul_f32(*&v61, 0x3F0000003F000000), v63);
      }

      v68 = v26;
      *&v67 = v26.f32[1] + -0.5;
      v27 = __sincosf_stret(a5 + (v18 * v26.f32[0]));
      v28.f32[0] = v27.__cosval * 0.5;
      a7.n128_u64[0] = __PAIR64__(v67, v27.__cosval * 0.5);
      a7.n128_f32[2] = v27.__sinval * 0.5;
      a7.n128_u32[3] = v69;
      v28.i32[1] = v67;
      *&v29 = vmul_f32(v28, 0x40000000);
      *(&v29 + 2) = a7.n128_f32[2] + a7.n128_f32[2];
      HIDWORD(v29) = 0;
      v30 = 16 * v10;
      *(v13 + v30) = a7;
      *(v14 + v30) = v29;
      *(v15 + 8 * v10++) = v68;
    }

    while (v10 != a3);
  }
}

void sub_1AF9C7254(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7)
{
  if (a2 != a3)
  {
    v11 = a2;
    v13 = *(a4 + 16);
    v14 = *(a4 + 80);
    v15 = *(a4 + 96);
    v16 = *(a4 + 112);
    v17 = *a4;
    v74 = -v17;
    v18 = *a4;
    v18.i32[3] = 0;
    v19 = a7 - a6;
    v20.i32[3] = 0;
    v75 = vmaxq_u32(v18, xmmword_1AFE552F0);
    do
    {
      v76 = v20.i32[3];
      if (v13)
      {
        if (v13 == 1)
        {
          v40 = *(a4 + 64);
          v28 = *(*(a4 + 128) + 8 * (v40 % *(a4 + 72)) + 8 * (*(a4 + 72) & ((v40 % *(a4 + 72)) >> 63)) + 32);
          if (*(a4 + 17) > 1u)
          {
            if (*(a4 + 17) == 2)
            {
              *(a4 + 64) = ((v40 >> 63) | 1) + v40;
            }

            else
            {
              v44 = a1[1];
              v45 = 9 * __ROR8__(5 * v44, 57);
              v46 = a1[2] ^ *a1;
              v47 = a1[3] ^ v44;
              v48 = v46 ^ v44;
              v49 = v47 ^ *a1;
              *a1 = v49;
              a1[1] = v46 ^ v44;
              v50 = __ROR8__(v47, 19);
              v51 = v46 ^ (v44 << 17);
              a1[2] = v51;
              a1[3] = v50;
              v52 = (v45 * v17) >> 64;
              if (v17 > v45 * v17 && v74 % v17 > v45 * v17)
              {
                do
                {
                  v53 = 9 * __ROR8__(5 * v48, 57);
                  v54 = v49 ^ v51;
                  v55 = v48 ^ v50;
                  v51 ^= v49 ^ (v48 << 17);
                  v48 ^= v54;
                  v49 ^= v55;
                  v50 = __ROR8__(v55, 19);
                }

                while (v74 % v17 > v53 * v17);
                *a1 = v49;
                a1[1] = v48;
                v52 = (v53 * v17) >> 64;
                a1[2] = v51;
                a1[3] = v50;
              }

              *(a4 + 64) = v52;
            }
          }

          else
          {
            if (*(a4 + 17))
            {
              v41 = v40 - 1;
            }

            else
            {
              v41 = v40 + 1;
            }

            *(a4 + 64) = v41;
          }
        }

        else
        {
          v21 = a1[1];
          v22 = a1[2] ^ *a1;
          v23 = a1[3] ^ v21;
          v24 = v22 ^ v21;
          v25 = v23 ^ *a1;
          v28.f32[0] = vcvts_n_f32_u64((9 * ((((5 * v21) >> 32) >> 25) | (640 * v21))) & 0xFFFFFF, 0x18uLL);
          v26 = v25 ^ v22 ^ (v21 << 17);
          v27 = v24 ^ __ROR8__(v23, 19);
          *a1 = v27 ^ v25;
          a1[1] = v26 ^ v24;
          a1[2] = v26 ^ (v24 << 17);
          a1[3] = __ROR8__(v27, 19);
          v28.i32[1] = vcvts_n_f32_u64((9 * ((((5 * v24) >> 32) >> 25) | (640 * v24))) & 0xFFFFFFLL, 0x18uLL);
        }
      }

      else
      {
        v42 = *(a4 + 64);
        if (*(a4 + 17) > 1u)
        {
          if (*(a4 + 17) == 2)
          {
            v43 = ((v42 >> 63) | 1) + v42;
          }

          else
          {
            v56 = a1[1];
            v57 = (v75.i32[0] * v75.i32[1] * v75.i32[2]);
            v58 = 9 * __ROR8__(5 * v56, 57);
            v59 = a1[2] ^ *a1;
            v60 = a1[3] ^ v56;
            v61 = v59 ^ v56;
            v62 = v60 ^ *a1;
            *a1 = v62;
            a1[1] = v59 ^ v56;
            v63 = __ROR8__(v60, 19);
            v64 = v59 ^ (v56 << 17);
            a1[2] = v64;
            a1[3] = v63;
            v43 = (v58 * (v75.i32[0] * v75.i32[1] * v75.i32[2])) >> 64;
            v65 = v58 * v57;
            if (v58 * v57 < v57)
            {
              v66 = -v57 % v57;
              if (v66 > v65)
              {
                do
                {
                  v67 = 9 * __ROR8__(5 * v61, 57);
                  v68 = v62 ^ v64;
                  v69 = v61 ^ v63;
                  v64 ^= v62 ^ (v61 << 17);
                  v61 ^= v68;
                  v62 ^= v69;
                  v63 = __ROR8__(v69, 19);
                }

                while (v66 > v67 * v57);
                *a1 = v62;
                a1[1] = v61;
                v43 = (v67 * (v75.i32[0] * v75.i32[1] * v75.i32[2])) >> 64;
                a1[2] = v64;
                a1[3] = v63;
              }
            }
          }
        }

        else if (*(a4 + 17))
        {
          v43 = v42 - 1;
        }

        else
        {
          v43 = v42 + 1;
        }

        *(a4 + 64) = v43;
        v70 = *(a4 + 32);
        v71 = v42 * *&v70;
        v72.f32[0] = fminf(v71 - floorf(v71), 1.0);
        v73 = vmuls_lane_f32(v71 - v72.f32[0], *&v70, 1);
        v72.i32[1] = fminf(v73 - floorf(v73), 1.0);
        v28 = vadd_f32(vmul_f32(*&v70, 0x3F0000003F000000), v72);
      }

      v77 = v28;
      v29 = __sincosf_stret(a6 + (v19 * v28.f32[0]));
      v30 = __sincosf_stret(vmuls_lane_f32(6.2832, v77, 1));
      v31 = vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v29.__sinval), LODWORD(v29.__cosval))), (v30.__cosval * a5) + 0.5);
      *v20.f32 = vcvt_f32_f64(v31);
      v20.f32[2] = v30.__sinval * a5;
      v32.i64[0] = 0xBF000000BF000000;
      v32.i64[1] = 0xBF000000BF000000;
      v33 = vaddq_f32(v20, vmulq_f32(__PAIR64__(LODWORD(v29.__sinval), LODWORD(v29.__cosval)), v32));
      v34 = vmulq_f32(v33, v33);
      v34.f32[0] = v34.f32[2] + vaddv_f32(*v34.f32);
      v35 = vdupq_lane_s32(*v34.f32, 0);
      v35.i32[3] = 0;
      v36 = vrsqrteq_f32(v35);
      v37 = vmulq_f32(v36, vrsqrtsq_f32(v35, vmulq_f32(v36, v36)));
      v38 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v34.f32[0] != 0.0)), 0x1FuLL));
      v38.i32[3] = 0;
      v20.i32[3] = v76;
      v39 = 16 * v11;
      *(v14 + v39) = v20;
      *(v15 + v39) = vbslq_s8(vcltzq_s32(v38), vmulq_f32(vmulq_f32(v37, vrsqrtsq_f32(v35, vmulq_f32(v37, v37))), v33), v33);
      *(v16 + 8 * v11++) = v77;
    }

    while (v11 != a3);
  }
}

void sub_1AF9C7700(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, float a6, float a7)
{
  if (a2 != a3)
  {
    v11 = a2;
    v13 = *(a4 + 16);
    v75 = *(a4 + 80);
    v14 = *(a4 + 96);
    v15 = *(a4 + 112);
    v16 = *a4;
    v17 = *a4;
    v17.i32[3] = 0;
    v73 = -v16;
    v18 = a7 - a6;
    HIDWORD(v19) = 0;
    v74 = vmaxq_u32(v17, xmmword_1AFE552F0);
    do
    {
      v77 = HIDWORD(v19);
      if (v13)
      {
        if (v13 == 1)
        {
          v39 = *(a4 + 64);
          v27 = *(*(a4 + 128) + 8 * (v39 % *(a4 + 72)) + 8 * (*(a4 + 72) & ((v39 % *(a4 + 72)) >> 63)) + 32);
          if (*(a4 + 17) > 1u)
          {
            if (*(a4 + 17) == 2)
            {
              *(a4 + 64) = ((v39 >> 63) | 1) + v39;
            }

            else
            {
              v43 = a1[1];
              v44 = 9 * __ROR8__(5 * v43, 57);
              v45 = a1[2] ^ *a1;
              v46 = a1[3] ^ v43;
              v47 = v45 ^ v43;
              v48 = v46 ^ *a1;
              *a1 = v48;
              a1[1] = v45 ^ v43;
              v49 = __ROR8__(v46, 19);
              v50 = v45 ^ (v43 << 17);
              a1[2] = v50;
              a1[3] = v49;
              v51 = (v44 * v16) >> 64;
              if (v16 > v44 * v16 && v73 % v16 > v44 * v16)
              {
                do
                {
                  v52 = 9 * __ROR8__(5 * v47, 57);
                  v53 = v48 ^ v50;
                  v54 = v47 ^ v49;
                  v50 ^= v48 ^ (v47 << 17);
                  v47 ^= v53;
                  v48 ^= v54;
                  v49 = __ROR8__(v54, 19);
                }

                while (v73 % v16 > v52 * v16);
                *a1 = v48;
                a1[1] = v47;
                v51 = (v52 * v16) >> 64;
                a1[2] = v50;
                a1[3] = v49;
              }

              *(a4 + 64) = v51;
            }
          }

          else
          {
            if (*(a4 + 17))
            {
              v40 = v39 - 1;
            }

            else
            {
              v40 = v39 + 1;
            }

            *(a4 + 64) = v40;
          }
        }

        else
        {
          v20 = a1[1];
          v21 = a1[2] ^ *a1;
          v22 = a1[3] ^ v20;
          v23 = v21 ^ v20;
          v24 = v22 ^ *a1;
          v27.f32[0] = vcvts_n_f32_u64((9 * ((((5 * v20) >> 32) >> 25) | (640 * v20))) & 0xFFFFFF, 0x18uLL);
          v25 = v24 ^ v21 ^ (v20 << 17);
          v26 = v23 ^ __ROR8__(v22, 19);
          *a1 = v26 ^ v24;
          a1[1] = v25 ^ v23;
          a1[2] = v25 ^ (v23 << 17);
          a1[3] = __ROR8__(v26, 19);
          v27.i32[1] = vcvts_n_f32_u64((9 * ((((5 * v23) >> 32) >> 25) | (640 * v23))) & 0xFFFFFFLL, 0x18uLL);
        }
      }

      else
      {
        v41 = *(a4 + 64);
        if (*(a4 + 17) > 1u)
        {
          if (*(a4 + 17) == 2)
          {
            v42 = ((v41 >> 63) | 1) + v41;
          }

          else
          {
            v55 = a1[1];
            v56 = (v74.i32[0] * v74.i32[1] * v74.i32[2]);
            v57 = 9 * __ROR8__(5 * v55, 57);
            v58 = a1[2] ^ *a1;
            v59 = a1[3] ^ v55;
            v60 = v58 ^ v55;
            v61 = v59 ^ *a1;
            *a1 = v61;
            a1[1] = v58 ^ v55;
            v62 = __ROR8__(v59, 19);
            v63 = v58 ^ (v55 << 17);
            a1[2] = v63;
            a1[3] = v62;
            v42 = (v57 * (v74.i32[0] * v74.i32[1] * v74.i32[2])) >> 64;
            v64 = v57 * v56;
            if (v57 * v56 < v56)
            {
              v65 = -v56 % v56;
              if (v65 > v64)
              {
                do
                {
                  v66 = 9 * __ROR8__(5 * v60, 57);
                  v67 = v61 ^ v63;
                  v68 = v60 ^ v62;
                  v63 ^= v61 ^ (v60 << 17);
                  v60 ^= v67;
                  v61 ^= v68;
                  v62 = __ROR8__(v68, 19);
                }

                while (v65 > v66 * v56);
                *a1 = v61;
                a1[1] = v60;
                v42 = (v66 * (v74.i32[0] * v74.i32[1] * v74.i32[2])) >> 64;
                a1[2] = v63;
                a1[3] = v62;
              }
            }
          }
        }

        else if (*(a4 + 17))
        {
          v42 = v41 - 1;
        }

        else
        {
          v42 = v41 + 1;
        }

        *(a4 + 64) = v42;
        v69 = *(a4 + 32);
        v70 = v41 * *&v69;
        v71.f32[0] = fminf(v70 - floorf(v70), 1.0);
        v72 = vmuls_lane_f32(v70 - v71.f32[0], *&v69, 1);
        v71.i32[1] = fminf(v72 - floorf(v72), 1.0);
        v27 = vadd_f32(vmul_f32(*&v69, 0x3F0000003F000000), v71);
      }

      v76 = v27;
      v28 = v11 + 1;
      v29 = sqrtf(v27.f32[1]);
      if (a5)
      {
        v30 = v27.f32[1];
      }

      else
      {
        v30 = v29;
      }

      v31 = __sincosf_stret(a6 + (v18 * v27.f32[0]));
      v32.i64[0] = LODWORD(v31.__cosval) | 0x3F00000000000000;
      v32.i64[1] = LODWORD(v31.__sinval) | 0x3F00000000000000;
      v33 = vmulq_f32(v32, v32);
      v33.f32[0] = v33.f32[2] + vaddv_f32(*v33.f32);
      v34 = vdupq_lane_s32(*v33.f32, 0);
      v34.i32[3] = 0;
      v35 = vrsqrteq_f32(v34);
      v36 = vmulq_f32(v35, vrsqrtsq_f32(v34, vmulq_f32(v35, v35)));
      v37 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v33.f32[0] != 0.0)), 0x1FuLL));
      v37.i32[3] = 0;
      *&v19 = v31.__cosval * (v30 * 0.5);
      *(&v19 + 1) = 0.5 - v30;
      *(&v19 + 2) = v31.__sinval * (v30 * 0.5);
      HIDWORD(v19) = v77;
      v38 = 16 * v11;
      *(v75 + v38) = v19;
      *(v14 + v38) = vbslq_s8(vcltzq_s32(v37), vmulq_f32(v32, vmulq_f32(v36, vrsqrtsq_f32(v34, vmulq_f32(v36, v36)))), v32);
      *(v15 + 8 * v11++) = v76;
    }

    while (v28 != a3);
  }
}

void sub_1AF9C7B8C(uint64_t *a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  if (a2 != a3)
  {
    v7 = a2;
    v9 = *(v4 + 16);
    v61 = *(v4 + 96);
    v62 = *(v4 + 80);
    v10 = *(v4 + 112);
    v11 = *v4;
    v12 = *v4;
    v57 = -v11;
    v12.i32[3] = 0;
    v13 = vmaxq_u32(v12, xmmword_1AFE552F0);
    v60 = v13;
    v58 = v13.i32[2];
    v59 = v13.i32[1];
    do
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v23 = *(v4 + 64);
          v13.i64[0] = *(*(v4 + 128) + 8 * (v23 % *(v4 + 72)) + 8 * (*(v4 + 72) & ((v23 % *(v4 + 72)) >> 63)) + 32);
          if (*(v4 + 17) > 1u)
          {
            if (*(v4 + 17) == 2)
            {
              *(v4 + 64) = ((v23 >> 63) | 1) + v23;
            }

            else
            {
              v27 = a1[1];
              v28 = 9 * __ROR8__(5 * v27, 57);
              v29 = a1[2] ^ *a1;
              v30 = a1[3] ^ v27;
              v31 = v29 ^ v27;
              v32 = v30 ^ *a1;
              *a1 = v32;
              a1[1] = v29 ^ v27;
              v33 = __ROR8__(v30, 19);
              v34 = v29 ^ (v27 << 17);
              a1[2] = v34;
              a1[3] = v33;
              v35 = (v28 * v11) >> 64;
              if (v11 > v28 * v11 && v57 % v11 > v28 * v11)
              {
                do
                {
                  v36 = 9 * __ROR8__(5 * v31, 57);
                  v37 = v32 ^ v34;
                  v38 = v31 ^ v33;
                  v34 ^= v32 ^ (v31 << 17);
                  v31 ^= v37;
                  v32 ^= v38;
                  v33 = __ROR8__(v38, 19);
                }

                while (v57 % v11 > v36 * v11);
                *a1 = v32;
                a1[1] = v31;
                v35 = (v36 * v11) >> 64;
                a1[2] = v34;
                a1[3] = v33;
              }

              *(v4 + 64) = v35;
            }
          }

          else
          {
            if (*(v4 + 17))
            {
              v24 = v23 - 1;
            }

            else
            {
              v24 = v23 + 1;
            }

            *(v4 + 64) = v24;
          }
        }

        else
        {
          v14 = a1[1];
          v15 = a1[2] ^ *a1;
          v16 = a1[3] ^ v14;
          v17 = v15 ^ v14;
          v18 = v16 ^ *a1;
          *v13.i32 = vcvts_n_f32_u64((9 * ((((5 * v14) >> 32) >> 25) | (640 * v14))) & 0xFFFFFF, 0x18uLL);
          v19 = v18 ^ v15 ^ (v14 << 17);
          v20 = v17 ^ __ROR8__(v16, 19);
          *a1 = v20 ^ v18;
          a1[1] = v19 ^ v17;
          a1[2] = v19 ^ (v17 << 17);
          a1[3] = __ROR8__(v20, 19);
          v13.i32[1] = vcvts_n_f32_u64((9 * ((((5 * v17) >> 32) >> 25) | (640 * v17))) & 0xFFFFFFLL, 0x18uLL);
        }
      }

      else
      {
        v25 = *(v4 + 64);
        if (*(v4 + 17) > 1u)
        {
          if (*(v4 + 17) == 2)
          {
            v26 = ((v25 >> 63) | 1) + v25;
          }

          else
          {
            v13.i64[1] = v60.i64[1];
            v39 = a1[1];
            v40 = (v60.i32[0] * v59 * v58);
            v41 = 9 * __ROR8__(5 * v39, 57);
            v42 = a1[2] ^ *a1;
            v43 = a1[3] ^ v39;
            v44 = v42 ^ v39;
            v45 = v43 ^ *a1;
            *a1 = v45;
            a1[1] = v42 ^ v39;
            v46 = __ROR8__(v43, 19);
            v47 = v42 ^ (v39 << 17);
            a1[2] = v47;
            a1[3] = v46;
            v26 = (v41 * (v60.i32[0] * v59 * v58)) >> 64;
            v48 = v41 * v40;
            if (v41 * v40 < v40)
            {
              v49 = -v40 % v40;
              if (v49 > v48)
              {
                do
                {
                  v50 = 9 * __ROR8__(5 * v44, 57);
                  v51 = v45 ^ v47;
                  v52 = v44 ^ v46;
                  v47 ^= v45 ^ (v44 << 17);
                  v44 ^= v51;
                  v45 ^= v52;
                  v46 = __ROR8__(v52, 19);
                }

                while (v49 > v50 * v40);
                *a1 = v45;
                a1[1] = v44;
                v26 = (v50 * (v60.i32[0] * v59 * v58)) >> 64;
                a1[2] = v47;
                a1[3] = v46;
              }
            }
          }
        }

        else if (*(v4 + 17))
        {
          v26 = v25 - 1;
        }

        else
        {
          v26 = v25 + 1;
        }

        *(v4 + 64) = v26;
        v53 = *(v4 + 32);
        v54 = v25 * *&v53;
        v55.f32[0] = fminf(v54 - floorf(v54), 1.0);
        v56 = vmuls_lane_f32(v54 - v55.f32[0], *&v53, 1);
        v55.i32[1] = fminf(v56 - floorf(v56), 1.0);
        *v13.i8 = vadd_f32(vmul_f32(*&v53, 0x3F0000003F000000), v55);
      }

      v63 = v13;
      *v13.i64 = a4();
      v21 = 16 * v7;
      *(v62 + v21) = v13;
      *(v61 + v21) = v22;
      v13.i64[1] = v63.i64[1];
      *(v10 + 8 * v7++) = v63.i64[0];
    }

    while (v7 != a3);
  }
}

uint64_t sub_1AF9C7F30(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v9 = result;
  if (v7[1].i8[0])
  {
    if (v7[1].i8[0] == 1)
    {
      v10 = a3 - a2;
      if (a3 == a2)
      {
        return result;
      }

      v11 = (v7[7].i64[0] + 8 * a2);
      v12 = (v7[6].i64[0] + 16 * a2);
      v13 = (v7[5].i64[0] + 16 * a2);
      while (1)
      {
        result = sub_1AF9C6980(v9);
        v18 = vadd_f32(*v17.f32, 0xBF000000BF000000);
        v19 = vmuls_lane_f32(6.0, v17, 2);
        if (v19 <= 1)
        {
          if (v19)
          {
            v16 = v79;
            if (v19 != 1)
            {
LABEL_17:
              DWORD2(v14) = -1090519040;
              *&v14 = v18;
              v15 = xmmword_1AFE206C0;
              goto LABEL_6;
            }

            LODWORD(v14) = -1090519040;
            *(&v14 + 4) = v18;
            v15 = xmmword_1AFE20650;
          }

          else
          {
            LODWORD(v14) = 1056964608;
            *(&v14 + 4) = v18;
            v15 = xmmword_1AFE20150;
            v16 = v79;
          }
        }

        else if (v19 == 2)
        {
          *&v14 = v18.u32[0] | 0x3F00000000000000;
          DWORD2(v14) = v18.i32[1];
          v15 = xmmword_1AFE20160;
          v16 = v79;
        }

        else
        {
          v16 = v79;
          if (v19 == 3)
          {
            *&v14 = v18.u32[0] | 0xBF00000000000000;
            DWORD2(v14) = v18.i32[1];
            v15 = xmmword_1AFE20B60;
          }

          else
          {
            if (v19 != 4)
            {
              goto LABEL_17;
            }

            DWORD2(v14) = 1056964608;
            *&v14 = v18;
            v15 = xmmword_1AFE20180;
          }
        }

LABEL_6:
        HIDWORD(v14) = v16;
        *v13++ = v14;
        *v12++ = v15;
        *v11++ = v17.i64[0];
        v79 = v16;
        if (!--v10)
        {
          return result;
        }
      }
    }

    v7[2].i32[2] = 1042983595;
    v7[3].i32[2] = 1067030938;
    v69 = a3 - a2;
    if (a3 == a2)
    {
      return result;
    }

    v70 = (v7[7].i64[0] + 8 * a2);
    v71 = (v7[6].i64[0] + 16 * a2);
    v72 = (v7[5].i64[0] + 16 * a2);
    while (1)
    {
      result = sub_1AF9C6980(v9);
      v77 = vadd_f32(*v76.f32, 0xBF000000BF000000);
      v78 = vmuls_lane_f32(6.0, v76, 2);
      if (v78 <= 1)
      {
        if (v78)
        {
          v75 = v79;
          if (v78 != 1)
          {
LABEL_73:
            DWORD2(v73) = -1090519040;
            *&v73 = v77;
            v74 = xmmword_1AFE206C0;
            goto LABEL_62;
          }

          LODWORD(v73) = -1090519040;
          *(&v73 + 4) = v77;
          v74 = xmmword_1AFE20650;
        }

        else
        {
          LODWORD(v73) = 1056964608;
          *(&v73 + 4) = v77;
          v74 = xmmword_1AFE20150;
          v75 = v79;
        }
      }

      else if (v78 == 2)
      {
        *&v73 = v77.u32[0] | 0x3F00000000000000;
        DWORD2(v73) = v77.i32[1];
        v74 = xmmword_1AFE20160;
        v75 = v79;
      }

      else
      {
        v75 = v79;
        if (v78 == 3)
        {
          *&v73 = v77.u32[0] | 0xBF00000000000000;
          DWORD2(v73) = v77.i32[1];
          v74 = xmmword_1AFE20B60;
        }

        else
        {
          if (v78 != 4)
          {
            goto LABEL_73;
          }

          DWORD2(v73) = 1056964608;
          *&v73 = v77;
          v74 = xmmword_1AFE20180;
        }
      }

LABEL_62:
      HIDWORD(v73) = v75;
      *v72++ = v73;
      *v71++ = v74;
      *v70++ = v76.i64[0];
      v79 = v75;
      if (!--v69)
      {
        return result;
      }
    }
  }

  if (a3 == a2)
  {
    return result;
  }

  v20 = *v7;
  v20.i32[3] = 0;
  v21 = vmaxq_u32(v20, xmmword_1AFE8B8E0);
  v22 = v21.i32[2] * v21.i32[1];
  *&a7 = v21.u32[0];
  v23 = v21.i32[0] * v21.i32[1];
  v24 = v21.i32[0] * v21.i32[2];
  v25 = vcvt_f32_u32(*&vextq_s8(v21, v21, 4uLL));
  v26 = (2 * (v21.i32[2] * v21.i32[1] + v21.i32[0] * v21.i32[2] + v21.i32[0] * v21.i32[1]));
  v27 = v7[4].i64[0];
  v28 = 2 * v21.i32[2] * v21.i32[1];
  v29 = v7[5].i64[0];
  v30 = v7[6].i64[0];
  v31 = v7[7].i64[0];
  v32 = v7[1].u8[1];
  v33 = 2 * (v21.i32[2] * v21.i32[1] + v21.i32[0] * v21.i32[2]);
  v34 = vdup_n_s32(0x3F800008u);
  v35 = vdiv_f32(v34, vzip1_s32(*&a7, v25));
  v36 = v33 + v23;
  v37 = vdiv_f32(v34, v25);
  v25.i32[0] = LODWORD(a7);
  v38 = vdiv_f32(v34, v25);
  v39 = v28 + v24;
  result = 1065353215;
  v40 = vmaxq_u32(v20, xmmword_1AFE552F0);
  do
  {
    v41 = (((v27 % v26) >> 63) & v26) + v27 % v26;
    v42 = v41;
    if (v41 >= v28)
    {
      v47.f32[0] = fminf((v35.f32[0] * v42) - floorf(v35.f32[0] * v42), 1.0);
      v47.i32[1] = fminf((v35.f32[1] * ((v35.f32[0] * v42) - v47.f32[0])) - floorf(v35.f32[1] * ((v35.f32[0] * v42) - v47.f32[0])), 1.0);
      v48 = COERCE_DOUBLE(vmla_f32(v47, 0x3F0000003F000000, v35));
      if (v41 >= v36)
      {
        v49 = 5.0;
      }

      else
      {
        v49 = 4.0;
      }

      v50 = v38.f32[0] * v42;
      v51.f32[0] = fminf(v50 - floorf(v50), 1.0);
      v51.i32[1] = fminf((v38.f32[1] * (v50 - v51.f32[0])) - floorf(v38.f32[1] * (v50 - v51.f32[0])), 1.0);
      v52 = COERCE_DOUBLE(vmla_f32(v51, 0x3F0000003F000000, v38));
      if (v41 >= v39)
      {
        v46 = 3.0;
      }

      else
      {
        v46 = 2.0;
      }

      if (v41 < v33)
      {
        v45 = v52;
      }

      else
      {
        v46 = v49;
        v45 = v48;
      }
    }

    else
    {
      v43 = v37.f32[0] * v42;
      v44.f32[0] = fminf(v43 - floorf(v43), 1.0);
      v44.i32[1] = fminf((v37.f32[1] * (v43 - v44.f32[0])) - floorf(v37.f32[1] * (v43 - v44.f32[0])), 1.0);
      v45 = COERCE_DOUBLE(vmla_f32(v44, 0x3F0000003F000000, v37));
      if (v41 >= v22)
      {
        v46 = 1.0;
      }

      else
      {
        v46 = 0.0;
      }
    }

    v53 = vadd_f32(*&v45, 0xBF000000BF000000);
    v54 = v46;
    if (v46 <= 1)
    {
      if (v54)
      {
        if (v54 != 1)
        {
LABEL_48:
          *(v30 + 16 * a2) = xmmword_1AFE206C0;
          DWORD2(v8) = -1090519040;
          goto LABEL_49;
        }

        *(v30 + 16 * a2) = xmmword_1AFE20650;
        LODWORD(v8) = -1090519040;
      }

      else
      {
        *(v30 + 16 * a2) = xmmword_1AFE20150;
        LODWORD(v8) = 1056964608;
      }

      *(&v8 + 4) = v53;
      goto LABEL_50;
    }

    if (v54 == 2)
    {
      *(v30 + 16 * a2) = xmmword_1AFE20160;
      DWORD1(v8) = 1056964608;
LABEL_45:
      DWORD2(v8) = v53.i32[1];
      LODWORD(v8) = v53.i32[0];
      goto LABEL_50;
    }

    if (v54 == 3)
    {
      *(v30 + 16 * a2) = xmmword_1AFE20B60;
      DWORD1(v8) = -1090519040;
      goto LABEL_45;
    }

    if (v54 != 4)
    {
      goto LABEL_48;
    }

    *(v30 + 16 * a2) = xmmword_1AFE20180;
    DWORD2(v8) = 1056964608;
LABEL_49:
    *&v8 = v53;
LABEL_50:
    *(v29 + 16 * a2) = v8;
    *(v31 + 8 * a2) = v45;
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v27 += (v27 >> 63) | 1;
      }

      else
      {
        v55 = v9[1];
        v56 = (v40.i32[0] * v40.i32[1] * v40.i32[2]);
        v57 = 9 * __ROR8__(5 * v55, 57);
        v58 = v9[2] ^ *v9;
        v59 = v9[3] ^ v55;
        v60 = v58 ^ v55;
        v61 = v59 ^ *v9;
        *v9 = v61;
        v9[1] = v58 ^ v55;
        v62 = __ROR8__(v59, 19);
        v63 = v58 ^ (v55 << 17);
        v9[2] = v63;
        v9[3] = v62;
        v27 = (v57 * (v40.i32[0] * v40.i32[1] * v40.i32[2])) >> 64;
        v64 = v57 * v56;
        if (v57 * v56 < v56)
        {
          v65 = -v56 % v56;
          if (v65 > v64)
          {
            do
            {
              v66 = 9 * __ROR8__(5 * v60, 57);
              v67 = v61 ^ v63;
              v68 = v60 ^ v62;
              v63 ^= v61 ^ (v60 << 17);
              v60 ^= v67;
              v61 ^= v68;
              v62 = __ROR8__(v68, 19);
            }

            while (v65 > v66 * v56);
            *v9 = v61;
            v9[1] = v60;
            v27 = (v66 * (v40.i32[0] * v40.i32[1] * v40.i32[2])) >> 64;
            v9[2] = v63;
            v9[3] = v62;
          }
        }
      }
    }

    else if (v32)
    {
      --v27;
    }

    else
    {
      ++v27;
    }

    ++a2;
  }

  while (a2 != a3);
  v7[4].i64[0] = v27;
  return result;
}

uint64_t sub_1AF9C85E8(void *a1, uint64_t a2)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v5, v6);
  if ((a2 & 0x100000000) != 0)
  {
    sub_1AFDFEC28();
  }

  else
  {
    sub_1AFDFEC28();
    if (!v2)
    {
      sub_1AF448018(v5, v6);
      sub_1AFDFEC18();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
}

unint64_t sub_1AF9C8754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF9CF39C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_1AF9C87CC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  if (a4 > 1u)
  {
    sub_1AF448018(v7, v8);
    sub_1AFDFEC28();
  }

  else
  {
    sub_1AF448018(v7, v8);
    sub_1AFDFEC28();
    if (!v4)
    {
      sub_1AF448018(v7, v8);
      sub_1AF9D0E1C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      sub_1AF9D03E8(&qword_1ED72F758);
      sub_1AFDFEC38();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v7);
}

uint64_t sub_1AF9C8A1C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF9C8A70@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF9D0DCC(0, &qword_1EB6330C0, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C6A0;
  *(v2 + 32) = xmmword_1AFE20160;
  *(v2 + 48) = 0;
  *(v2 + 64) = xmmword_1AFE20160;
  *(v2 + 80) = 1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 2;
  *(v2 + 128) = xmmword_1AFE22A20;
  *(v2 + 144) = 2;
  *&result = 2;
  *(v2 + 160) = xmmword_1AFE505D0;
  *(v2 + 176) = 2;
  *a1 = v2;
  return result;
}

unint64_t sub_1AF9C8B1C(char a1)
{
  result = 0x4C72616C75676E61;
  switch(a1)
  {
    case 1:
      result = 0x6F69746365726964;
      break;
    case 2:
      result = 0x7562697274736964;
      break;
    case 3:
      result = 0x75536E4F74696D65;
      break;
    case 4:
      result = 0x7461746E6569726FLL;
      break;
    case 5:
      result = 0x6570616873;
      break;
    case 6:
      result = 0x6E69646165727073;
      break;
    case 7:
      result = 0x41746E65676E6174;
      break;
    case 8:
      result = 0x46746E65676E6174;
      break;
    case 9:
      result = 0x726F66736E617274;
      break;
    case 10:
      result = 0x797469636F6C6576;
      break;
    case 11:
      result = 0x65727574786574;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x5365727574786574;
      break;
    case 14:
      result = 0x4265727574786574;
      break;
    case 15:
      result = 0xD000000000000017;
      break;
    case 16:
      result = 0x6E6F697373696D65;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF9C8D98(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF9C8B1C(*a1);
  v5 = v4;
  if (v3 == sub_1AF9C8B1C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF9C8E20()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF9C8B1C(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9C8E84()
{
  sub_1AF9C8B1C(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF9C8ED8()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF9C8B1C(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9C8F38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9CF348();
  *a1 = result;
  return result;
}

unint64_t sub_1AF9C8F68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF9C8B1C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF9C8FB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9CF348();
  *a1 = result;
  return result;
}

uint64_t sub_1AF9C8FE4(uint64_t a1)
{
  v2 = sub_1AF9D0D78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9C9020(uint64_t a1)
{
  v2 = sub_1AF9D0D78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9C905C(void *a1)
{
  v3 = v1;
  sub_1AF9D0E1C(0, &qword_1EB641638, sub_1AF9D0D78, &type metadata for EmitterShape.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9D0D78();
  sub_1AFDFF3F8();
  *&v16 = *(v3 + 8);
  v18 = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v2)
  {
    v16 = *(v3 + 48);
    v17 = *(v3 + 64);
    v18 = 1;
    sub_1AF51E164();
    sub_1AFDFE918();
    LOBYTE(v16) = 3;
    sub_1AFDFE8C8();
    v16 = *(v3 + 80);
    v17 = *(v3 + 96);
    v18 = 4;
    sub_1AF9D0DCC(0, &unk_1EB6338F8, &type metadata for EmitterShape.Direction, MEMORY[0x1E69E6720]);
    sub_1AF9D0E84(&qword_1EB641640, sub_1AF51E164);
    sub_1AFDFE918();
    LODWORD(v16) = *v3;
    BYTE4(v16) = *(v3 + 4);
    v18 = 5;
    sub_1AF51DEBC();
    sub_1AFDFE918();
    *&v16 = *(v3 + 112);
    v18 = 6;
    sub_1AFDFE918();
    v16 = *(v3 + 128);
    v18 = 7;
    sub_1AF9D0E1C(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v12 = v11;
    v13 = sub_1AF9D03E8(&qword_1ED72F758);
    v15[1] = v12;
    sub_1AFDFE918();
    v15[0] = v13;
    *&v16 = *(v3 + 144);
    v18 = 8;
    sub_1AFDFE918();
    LOBYTE(v16) = 9;
    sub_1AFDFE8E8();
    v16 = *(v3 + 16);
    v17 = *(v3 + 32);
    v18 = 2;
    sub_1AF51E238();
    sub_1AFDFE918();
    *&v16 = *(v3 + 104);
    v18 = 10;
    sub_1AFDFE918();
    *&v16 = *(v3 + 152);
    v18 = 11;
    sub_1AF480018();
    sub_1AFDFE918();
    LOBYTE(v16) = *(v3 + 160);
    v18 = 12;
    sub_1AF51DC40();
    sub_1AFDFE918();
    v16 = *(v3 + 176);
    v18 = 13;
    sub_1AFDFE918();
    v16 = *(v3 + 192);
    v18 = 14;
    sub_1AFDFE918();
    LOBYTE(v16) = 15;
    sub_1AFDFE8C8();
    LOBYTE(v16) = *(v3 + 33);
    v18 = 16;
    sub_1AF51D71C();
    sub_1AFDFE918();
    LOBYTE(v16) = *(v3 + 97);
    v18 = 17;
    sub_1AF51D648();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

double sub_1AF9C96C0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9CF828(a1, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

double sub_1AF9C9834@<D0>(uint64_t a1@<X8>)
{
  sub_1AF9CF1B8(v9);
  v2 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v10;
  v3 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v3;
  v4 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v4;
  v5 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v5;
  v6 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v6;
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  return result;
}

double sub_1AF9C98A4(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  sub_1AF6A68B8(&v18, a1, a2, a3);
  v4 = v3[3];
  result = 0.0;
  if (v3[4].i8[0] == 1)
  {
    v11 = vabsq_f32(v4);
    if (v11.f32[0] > 0.00000011921 || v11.f32[1] > 0.00000011921 || v11.f32[2] > 0.00000011921)
    {
      v14 = vmulq_f32(v4, v4);
      *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
      *v14.f32 = vrsqrte_f32(v15);
      *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
      *&result = vmulq_n_f32(v4, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]).u64[0];
    }
  }

  else if (!v3[4].i8[0])
  {
    v6 = vabsq_f32(v4);
    if (v6.f32[0] > 0.00000011921 || v6.f32[1] > 0.00000011921 || v6.f32[2] > 0.00000011921)
    {
      v9 = vmulq_f32(v4, v4);
      *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
      *v9.f32 = vrsqrte_f32(v10);
      *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
      v16 = vmulq_n_f32(v4, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    }

    else
    {
      v16 = xmmword_1AFE20180;
    }

    v17 = vtrn2q_s32(v18, v19);
    v17.i32[2] = v20.i32[1];
    *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v18, v20), v19), v16.f32[0]), v17, *v16.f32, 1), vzip1q_s32(vzip2q_s32(v18, v20), vdupq_laneq_s32(v19, 2)), v16, 2).u64[0];
  }

  return result;
}

double sub_1AF9C99D8(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v5 = v3[5];
  if (v3[6].i8[0] == 1)
  {
    v49 = v3[5];
    sub_1AF6A68B8(v50, a1, a2, a3);
    v11 = vabsq_f32(v49);
    if (v11.f32[0] > 0.00000011921 || v11.f32[1] > 0.00000011921 || v11.f32[2] > 0.00000011921)
    {
      v14 = vmulq_f32(v49, v49);
      *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
      *v14.f32 = vrsqrte_f32(v15);
      *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
      v25 = vmulq_n_f32(v49, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
    }

    else
    {
      v25 = xmmword_1AFE20180;
    }

    v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50[0], v25.f32[0]), v50[1], *v25.f32, 1), v50[2], v25, 2);
    v27 = vmulq_f32(v26, v26);
    v27.f32[0] = v27.f32[2] + vaddv_f32(*v27.f32);
    v28 = vdupq_lane_s32(*v27.f32, 0);
    v28.i32[3] = 0;
    v29 = vrsqrteq_f32(v28);
    v30 = vmulq_f32(v29, vrsqrtsq_f32(v28, vmulq_f32(v29, v29)));
    v22 = vmulq_f32(v30, v30);
    v31 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v27.f32[0] != 0.0)), 0x1FuLL));
    v31.i32[3] = 0;
    v24 = vbslq_s8(vcltzq_s32(v31), vmulq_f32(v26, vmulq_f32(v30, vrsqrtsq_f32(v28, v22))), v26);
  }

  else
  {
    if (v3[6].i8[0])
    {
      return 0.0;
    }

    v6 = vabsq_f32(v5);
    if (v6.f32[0] > 0.00000011921 || v6.f32[1] > 0.00000011921 || v6.f32[2] > 0.00000011921)
    {
      v9 = vmulq_f32(v5, v5);
      *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
      *v9.f32 = vrsqrte_f32(v10);
      *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
      v17 = vmulq_n_f32(v5, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
    }

    else
    {
      v17 = xmmword_1AFE20180;
    }

    v18 = vmulq_f32(v17, v17);
    v18.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
    v19 = vdupq_lane_s32(*v18.f32, 0);
    v19.i32[3] = 0;
    v20 = vrsqrteq_f32(v19);
    v21 = vmulq_f32(v20, vrsqrtsq_f32(v19, vmulq_f32(v20, v20)));
    v22 = vmulq_f32(v21, v21);
    v23 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v18.f32[0] != 0.0)), 0x1FuLL));
    v23.i32[3] = 0;
    v24 = vbslq_s8(vcltzq_s32(v23), vmulq_f32(v17, vmulq_f32(v21, vrsqrtsq_f32(v19, v22))), v17);
  }

  v22.i32[0] = v24.i32[2];
  v4.i32[0] = 1.0;
  v32.i64[0] = 0x8000000080000000;
  v32.i64[1] = 0x8000000080000000;
  v33 = *vbslq_s8(v32, v4, v22).i32;
  *v32.i32 = v24.f32[1] / (fabsf(v24.f32[2]) + 1.0);
  v34 = vmuls_lane_f32(*v32.i32, *v24.f32, 1);
  v35 = -(v24.f32[0] * *v32.i32);
  v36 = v24.f32[2] + (v33 * v34);
  v37 = v33 * v35;
  v38 = 1.0 - v34;
  v39 = vmuls_lane_f32(-v33, *v24.f32, 1);
  v40 = v24.f32[2] + (v36 + v38);
  if (v40 <= 0.0)
  {
    if (v36 < v38 || v36 < v24.f32[2])
    {
      if (v38 <= v24.f32[2])
      {
        v48 = sqrtf(((v24.f32[2] + 1.0) - v36) - v38);
        v24.i32[0] = vsubq_f32(v24, v24).u32[0];
        v24.f32[1] = v24.f32[1] + v39;
        v24.f32[2] = v48 * v48;
        v24.f32[3] = v37 - v35;
        *&result = vmulq_n_f32(v24, 0.5 / v48).u64[0];
      }

      else
      {
        v44 = sqrtf(((v38 + 1.0) - v36) - v24.f32[2]);
        v45.f32[0] = v35 + v37;
        v45.f32[1] = v44 * v44;
        *&v45.u32[2] = vrev64_s32(vadd_f32(*v24.f32, __PAIR64__(LODWORD(v39), v24.u32[0])));
        *&result = vmulq_n_f32(v45, 0.5 / v44).u64[0];
      }
    }

    else
    {
      v46 = sqrtf(((v36 + 1.0) - v38) - v24.f32[2]);
      v47.f32[0] = v46 * v46;
      v47.f32[1] = v35 + v37;
      *&v47.u32[2] = vsub_f32(__PAIR64__(LODWORD(v39), v24.u32[0]), *v24.f32);
      *&result = vmulq_n_f32(v47, 0.5 / v46).u64[0];
    }
  }

  else
  {
    v41 = sqrtf(v40 + 1.0);
    v42.f32[0] = v39 - v24.f32[1];
    v42.i32[1] = vaddq_f32(v24, v24).u32[0];
    v42.f32[2] = v37 - v35;
    v42.f32[3] = v41 * v41;
    *&result = vmulq_n_f32(v42, 0.5 / v41).u64[0];
  }

  return result;
}

uint64_t sub_1AF9C9D18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v763 = *MEMORY[0x1E69E9840];
  v687 = a1[2];
  v8 = *(v687 + 32);

  ecs_stack_allocator_push_snapshot(v8);
  v10 = a1[6];
  v9 = a1[7];
  v675 = a1;
  v11 = ecs_stack_allocator_allocate(v8, 16 * v9, 16);
  v674 = ecs_stack_allocator_allocate(v8, 16 * v9, 16);
  v690 = v9;
  v692 = ecs_stack_allocator_allocate(v8, 8 * v9, 8);
  v657 = *(v4 + 4);
  v666 = v4;
  v659 = a2;
  v656 = *v4;
  if (v657 == 1 && !*v4)
  {
    v12 = v9 - v10;
    if (v9 != v10)
    {
      v13 = &v674[2 * v10];
      v14 = &v11[2 * v10];
      do
      {
        *v14 = 0;
        v14[1] = 0;
        v14 += 2;
        *v13++ = xmmword_1AFE20160;
        --v12;
      }

      while (v12);
    }

    goto LABEL_123;
  }

  v661 = v8;
  v16 = *(v4 + 16);
  v15 = *(v4 + 24);
  v17 = v4;
  v18 = *(v4 + 32);
  v19 = *(v17 + 33);
  v20 = *(a3 + 104) + v675[3] - v675[5];
  if (v16.i32[0] <= 1u)
  {
    v21 = 1;
  }

  else
  {
    v21 = v16.u32[0];
  }

  if (v18 == 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v654 = v11;
  v644 = v10;
  if (v19 <= 1)
  {
    if (v19)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          v23 = v16.u32[0];
        }

        else
        {
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v20 = v675[5] - (*(a3 + 104) + v675[3]);
      }

      else
      {
        *v31.i8 = v16;
        v31.i64[1] = v15.u32[0];
        v32 = vmaxq_u32(v31, xmmword_1AFE552F0);
        v23 = (v32.i32[0] * v32.i32[1] * v32.i32[2]);
        v20 = v675[5] - (*(a3 + 104) + v675[3]);
      }

      goto LABEL_42;
    }

    if (v18)
    {
      if (v18 == 1)
      {
LABEL_17:
        v23 = v16.u32[0];
LABEL_42:
        v35 = v20 % v23;
        goto LABEL_48;
      }

LABEL_24:
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  if (v19 == 2)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        if (((v20 / v16.u32[0]) & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }

      if ((v20 / 0x7FFFFFFFFFFFFFFFLL))
      {
LABEL_34:
        if (v18)
        {
          if (v18 == 1)
          {
            v30 = v16.u32[0];
          }

          else
          {
            v30 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        else
        {
          *v36.i8 = v16;
          v36.i64[1] = v15.u32[0];
          v37 = vmaxq_u32(v36, xmmword_1AFE552F0);
          v30 = (v37.i32[0] * v37.i32[1] * v37.i32[2]);
        }

        v35 = ~(v20 % v30);
        goto LABEL_48;
      }
    }

    else
    {
      *v28.i8 = v16;
      v28.i64[1] = v15.u32[0];
      v29 = vmaxq_u32(v28, xmmword_1AFE552F0);
      if ((v20 / (v29.i32[0] * v29.i32[1] * v29.i32[2])))
      {
        goto LABEL_34;
      }
    }

LABEL_22:
    if (v18)
    {
      if (v18 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

LABEL_32:
    *v26.i8 = v16;
    v26.i64[1] = v15.u32[0];
    v27 = vmaxq_u32(v26, xmmword_1AFE552F0);
    v23 = (v27.i32[0] * v27.i32[1] * v27.i32[2]);
    goto LABEL_42;
  }

  v24 = v22;
  if (v18)
  {
    if (v18 == 1)
    {
      v25 = v16.u32[0];
    }

    else
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    *v33.i8 = v16;
    v33.i64[1] = v15.u32[0];
    v34 = vmaxq_u32(v33, xmmword_1AFE552F0);
    v25 = (v34.i32[0] * v34.i32[1] * v34.i32[2]);
  }

  v35 = sub_1AF9CEE0C(v25);
  v22 = v24;
LABEL_48:
  if (v18)
  {
    v38 = 0uLL;
    if (v18 == 1)
    {
      v39 = v15;
      v40 = v22;
      v41 = sub_1AF9C6590(v21);
      v42 = sub_1AF9C6718(v21);
      v38 = 0uLL;
      v22 = v40;
      v15 = v39;
      v43 = 0uLL;
      goto LABEL_54;
    }

    v41 = MEMORY[0x1E69E7CC0];
    v43 = 0uLL;
  }

  else
  {
    v44 = vcvt_f32_u32(vext_s8(v16, v15, 4uLL));
    v45.f32[0] = v16.u32[0];
    v45.i32[1] = v44.i32[0];
    v45.i64[1] = v44.u32[1];
    v46 = vmaxnmq_f32(v45, xmmword_1AFE208C0);
    __asm { FMOV            V2.4S, #1.0 }

    v38.i64[0] = vdivq_f32(_Q2, v46).u64[0];
    v38.f32[2] = 1.0 / v46.f32[2];
    v38.i32[3] = 0;
    __asm { FMOV            V3.4S, #-1.0 }

    _Q3.i64[0] = vaddq_f32(v46, _Q3).u64[0];
    _Q3.f32[2] = v46.f32[2] + -1.0;
    _Q3.i32[3] = 0;
    v43 = vdivq_f32(v46, vmaxnmq_f32(_Q3, xmmword_1AFE208C0));
    v43.i32[3] = 0;
    v41 = MEMORY[0x1E69E7CC0];
  }

  v42 = v41;
LABEL_54:
  *v732.columns[0].f32 = v16;
  *&v732.columns[0].u32[2] = v15;
  v732.columns[1].i8[0] = v18;
  v732.columns[1].i8[1] = v19;
  v732.columns[2] = v38;
  v732.columns[3] = v43;
  *&v733 = v35;
  *(&v733 + 1) = v22;
  *&v734 = v11;
  *(&v734 + 1) = (16 * v690) >> 4;
  *&v735 = v674;
  *(&v735 + 1) = *(&v734 + 1);
  *&v736 = v692;
  *(&v736 + 1) = (8 * v690) >> 3;
  *&v737 = v41;
  *(&v737 + 1) = v42;
  *v738.columns[0].f32 = v16;
  *&v738.columns[0].u32[2] = v15;
  v738.columns[1].i8[0] = v18;
  v738.columns[1].i8[1] = v19;
  v738.columns[2] = v38;
  v738.columns[3] = v43;
  v739 = v35;
  v740 = v22;
  v741 = __PAIR128__(*(&v734 + 1), v11);
  v742 = v674;
  v743 = *(&v734 + 1);
  v744 = __PAIR128__(*(&v736 + 1), v692);
  v745 = v41;
  v746 = v42;
  sub_1AF9D0528(&v732, &v723);
  sub_1AF9D0560(&v738);
  v750 = v735;
  v751 = v736;
  v752 = v737;
  v747 = v732;
  v748 = v733;
  v749 = v734;
  v58 = v18 != 2 || (*&v15 | *&v16) != 0;
  if ((*(v666 + 34) & 1) == 0)
  {
    v60 = v736;
    v61 = v735;
    v62 = v734;
    v8 = v661;
    v10 = v644;
    if (v657)
    {
      if (SLODWORD(v656) <= 2)
      {
        if (v656 == 0.0)
        {
          v728 = v734;
          v729 = v735;
          v730 = v736;
          v731 = v737;
          v724 = v732.columns[1];
          v725 = v732.columns[2];
          v726 = v732.columns[3];
          v727 = v733;
          v723 = v732.columns[0];
          sub_1AF9D0560(&v723);
          v11 = v654;
          v4 = v666;
LABEL_122:
          a2 = v659;
          goto LABEL_123;
        }

        if (LODWORD(v656) == 1)
        {
          if (v18)
          {
            v63 = sub_1AF9D0604;
          }

          else
          {
            v63 = sub_1AF9D060C;
          }

          *(swift_allocObject() + 16) = *(v666 + 8);
          v64 = v644;
          v65 = v690 - v644;
          if (v690 != v644)
          {
            v66 = (v60 + 8 * v644);
            v67 = (v61 + 16 * v644);
            v68 = (v62 + 16 * v644);
            do
            {
              v69 = sub_1AF9C6980(a3 + 8);
              v707 = v70;
              *&v71 = v63(v69);
              *v68++ = v71;
              *v67++ = v72;
              *v66++ = v707;
              --v65;
            }

            while (v65);
          }

          v728 = v749;
          v729 = v750;
          v730 = v751;
          v731 = v752;
          v724 = v747.columns[1];
          v725 = v747.columns[2];
          v726 = v747.columns[3];
          v727 = v748;
          v723 = v747.columns[0];
          sub_1AF9D0560(&v723);

LABEL_103:
          v11 = v654;
          v10 = v64;
          v4 = v666;
          goto LABEL_117;
        }

        v107 = v690 - v644;
        if (v690 == v644)
        {
LABEL_106:
          v728 = v749;
          v729 = v750;
          v730 = v751;
          v731 = v752;
          v724 = v747.columns[1];
          v725 = v747.columns[2];
          v726 = v747.columns[3];
          v727 = v748;
          v723 = v747.columns[0];
          sub_1AF9D0560(&v723);
          v11 = v654;
          v10 = v644;
          goto LABEL_116;
        }

        v606 = (v736 + 8 * v644);
        v607 = (v735 + 16 * v644);
        v608 = (v734 + 16 * v644);
        while (1)
        {
          sub_1AF9C6980(a3 + 8);
          v616.i64[0] = 0xBF000000BF000000;
          v616.i64[1] = 0xBF000000BF000000;
          v617 = vaddq_f32(v614, v616);
          v613 = vabsq_f32(v617);
          if (*v613.i32 >= *&v613.i32[1])
          {
            break;
          }

          if (*&v613.i32[1] < *&v613.i32[2])
          {
            goto LABEL_357;
          }

          v613.i32[0] = v617.i32[1];
          v615.i32[0] = 1.0;
          v618.i64[0] = 0x8000000080000000;
          v618.i64[1] = 0x8000000080000000;
          v615.i32[0] = vbslq_s8(v618, v615, v613).u32[0];
          if (v617.f32[1] == 0.0)
          {
            v619 = 0.0;
          }

          else
          {
            v619 = *v615.i32;
          }

          v620 = v619;
          v613.i32[0] = 0;
          v613.i64[1] = 0;
          *&v613.i32[1] = v620;
LABEL_361:
          v617.i32[3] = v715;
          *v608++ = v617;
          *v607++ = v613;
          *v606++ = v614.i64[0];
          if (!--v107)
          {
            goto LABEL_106;
          }
        }

        if (*v613.i32 >= *&v613.i32[2])
        {
          v613.i32[0] = 1.0;
          v621.i64[0] = 0x8000000080000000;
          v621.i64[1] = 0x8000000080000000;
          v613.i32[0] = vbslq_s8(v621, v613, v617).u32[0];
          if (v617.f32[0] == 0.0)
          {
            *v613.i32 = 0.0;
          }

          v613.i32[1] = 0;
          v613.i64[1] = 0;
          goto LABEL_361;
        }

LABEL_357:
        v613.i32[0] = v617.i32[2];
        v615.i32[0] = 1.0;
        v609.i64[0] = 0x8000000080000000;
        v609.i64[1] = 0x8000000080000000;
        v610 = vbslq_s8(v609, v615, v613).u32[0];
        if (v617.f32[2] == 0.0)
        {
          v611 = 0.0;
        }

        else
        {
          v611 = *&v610;
        }

        *&v612 = v611;
        v613.i64[0] = 0;
        v613.i64[1] = v612;
        goto LABEL_361;
      }

      if (LODWORD(v656) == 3)
      {
        v64 = v644;
        v93 = v690 - v644;
        if (v690 != v644)
        {
          v94 = *(v666 + 8);
          v95 = *(v666 + 12) - v94;
          v96 = (v736 + 8 * v644);
          v97 = (v735 + 16 * v644);
          v98 = (v734 + 16 * v644);
          do
          {
            sub_1AF9C6980(a3 + 8);
            v698 = v99;
            v101 = sqrtf(v100);
            if (v58)
            {
              v101 = v100;
            }

            *&v683 = *(&v99 + 1) + -0.5;
            v102 = v101 * 0.5;
            v103 = __sincosf_stret(v94 + (v95 * *&v99));
            v104.f32[0] = v103.__cosval * v102;
            *&v105 = __PAIR64__(v683, v103.__cosval * v102);
            *(&v105 + 2) = v103.__sinval * v102;
            HIDWORD(v105) = v715;
            v104.i32[1] = v683;
            *&v106 = vmul_f32(v104, 0x40000000);
            *(&v106 + 2) = *(&v105 + 2) + *(&v105 + 2);
            HIDWORD(v106) = 0;
            *v98++ = v105;
            *v97++ = v106;
            *v96++ = v698;
            --v93;
          }

          while (v93);
        }

        v728 = v749;
        v729 = v750;
        v730 = v751;
        v731 = v752;
        v724 = v747.columns[1];
        v725 = v747.columns[2];
        v726 = v747.columns[3];
        v727 = v748;
        v723 = v747.columns[0];
        sub_1AF9D0560(&v723);
        goto LABEL_103;
      }

      if (LODWORD(v656) == 4)
      {
        sub_1AF9C6B04((a3 + 8), v644, v690, &v747, *v732.columns[1].i64, *v732.columns[0].i64, v52.n128_f64[0], v53, v54, v55, v56);
      }

      else
      {
        v108 = v690 - v644;
        if (v690 != v644)
        {
          v109 = *(v666 + 8);
          v110 = *(v666 + 12) - v109;
          v111 = (v736 + 8 * v644);
          v112 = (v735 + 16 * v644);
          v113 = (v734 + 16 * v644);
          do
          {
            sub_1AF9C6980(a3 + 8);
            v115 = vext_s8(*v114.i8, *&vextq_s8(v114, v114, 8uLL), 4uLL);
            v699 = v114.i64[0];
            v116 = vsqrt_f32(v115);
            if (v58)
            {
              v117 = -1;
            }

            else
            {
              v117 = 0;
            }

            v679 = vbsl_s8(vdup_n_s32(v117), v115, v116);
            v118 = __sincosf_stret(v109 + (v110 * *v114.i32));
            v119.i64[0] = LODWORD(v118.__cosval) | 0x3F00000000000000;
            v119.i64[1] = LODWORD(v118.__sinval) | 0x3F00000000000000;
            v120 = vmulq_f32(v119, v119);
            v120.f32[0] = v120.f32[2] + vaddv_f32(*v120.f32);
            v121 = vdupq_lane_s32(*v120.f32, 0);
            v121.i32[3] = 0;
            v122 = vmuls_lane_f32(0.5 * v679.f32[0], v679, 1);
            v123 = vrsqrteq_f32(v121);
            v124 = vmulq_f32(v123, vrsqrtsq_f32(v121, vmulq_f32(v123, v123)));
            v125 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v120.f32[0] != 0.0)), 0x1FuLL));
            v125.i32[3] = 0;
            *&v126 = v118.__cosval * v122;
            *(&v126 + 1) = 0.5 - v679.f32[0];
            *(&v126 + 1) = __PAIR64__(v715, v118.__sinval * v122);
            *v113++ = v126;
            *v112++ = vbslq_s8(vcltzq_s32(v125), vmulq_f32(v119, vmulq_f32(v124, vrsqrtsq_f32(v121, vmulq_f32(v124, v124)))), v119);
            *v111++ = v699;
            --v108;
          }

          while (v108);
        }
      }
    }

    else
    {
      v73 = v690 - v644;
      if (v690 != v644)
      {
        v74 = *(v666 + 8);
        v75 = *(v666 + 12) - v74;
        v76 = (v736 + 8 * v644);
        v77 = (v735 + 16 * v644);
        v78 = (v734 + 16 * v644);
        do
        {
          sub_1AF9C6980(a3 + 8);
          v708 = v79;
          v81 = sqrtf(v80);
          if (v58)
          {
            v82 = v80;
          }

          else
          {
            v82 = v81;
          }

          v83 = __sincosf_stret(vmuls_lane_f32(6.2832, v79, 1));
          v84 = __sincosf_stret(v74 + (v75 * v708.f32[0]));
          v85 = vmulq_n_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v84.__sinval), LODWORD(v84.__cosval))), (v83.__cosval * (v82 * v656)) + 0.5);
          *v85.f32 = vcvt_f32_f64(v85);
          v85.f32[2] = v83.__sinval * (v82 * v656);
          v86.i64[0] = 0xBF000000BF000000;
          v86.i64[1] = 0xBF000000BF000000;
          v87 = vaddq_f32(v85, vmulq_f32(__PAIR64__(LODWORD(v84.__sinval), LODWORD(v84.__cosval)), v86));
          v88 = vmulq_f32(v87, v87);
          v88.f32[0] = v88.f32[2] + vaddv_f32(*v88.f32);
          v89 = vdupq_lane_s32(*v88.f32, 0);
          v89.i32[3] = 0;
          v90 = vrsqrteq_f32(v89);
          v91 = vmulq_f32(v90, vrsqrtsq_f32(v89, vmulq_f32(v90, v90)));
          v92 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v88.f32[0] != 0.0)), 0x1FuLL));
          v92.i32[3] = 0;
          v85.i32[3] = v706;
          *v78++ = v85;
          *v77++ = vbslq_s8(vcltzq_s32(v92), vmulq_f32(vmulq_f32(v91, vrsqrtsq_f32(v89, vmulq_f32(v91, v91))), v87), v87);
          *v76++ = v708;
          --v73;
        }

        while (v73);
      }
    }

    v728 = v749;
    v729 = v750;
    v730 = v751;
    v731 = v752;
    v724 = v747.columns[1];
    v725 = v747.columns[2];
    v726 = v747.columns[3];
    v727 = v748;
    v723 = v747.columns[0];
    sub_1AF9D0560(&v723);
    v11 = v654;
    goto LABEL_116;
  }

  v8 = v661;
  v10 = v644;
  if (!v657)
  {
    v4 = v666;
    sub_1AF9C7254((a3 + 8), v644, v690, &v747, v656, *(v666 + 8), *(v666 + 12));
    v728 = v749;
    v729 = v750;
    v730 = v751;
    v731 = v752;
    v724 = v747.columns[1];
    v725 = v747.columns[2];
    v726 = v747.columns[3];
    v727 = v748;
    v723 = v747.columns[0];
    sub_1AF9D0560(&v723);
    goto LABEL_117;
  }

  a2 = v659;
  if (SLODWORD(v656) <= 2)
  {
    if (v656 == 0.0)
    {
      v728 = v734;
      v729 = v735;
      v730 = v736;
      v731 = v737;
      v724 = v732.columns[1];
      v725 = v732.columns[2];
      v726 = v732.columns[3];
      v727 = v733;
      v723 = v732.columns[0];
      sub_1AF9D0560(&v723);
      v4 = v666;
      goto LABEL_123;
    }

    if (LODWORD(v656) == 1)
    {
      if (v18)
      {
        v59 = sub_1AF9D0614;
      }

      else
      {
        v59 = sub_1AF9D0698;
      }

      v4 = v666;
      *(swift_allocObject() + 16) = *(v666 + 8);
      sub_1AF9C7B8C((a3 + 8), v644, v690, v59);
      v728 = v749;
      v729 = v750;
      v730 = v751;
      v731 = v752;
      v724 = v747.columns[1];
      v725 = v747.columns[2];
      v726 = v747.columns[3];
      v727 = v748;
      v723 = v747.columns[0];
      sub_1AF9D0560(&v723);

      goto LABEL_117;
    }

    sub_1AF9C7F30(a3 + 8, v644, v690, *v732.columns[1].i64, *v732.columns[0].i64, v52.n128_f64[0], v53);
    v728 = v749;
    v729 = v750;
    v730 = v751;
    v731 = v752;
    v724 = v747.columns[1];
    v725 = v747.columns[2];
    v726 = v747.columns[3];
    v727 = v748;
    v723 = v747.columns[0];
    sub_1AF9D0560(&v723);
LABEL_116:
    v4 = v666;
    goto LABEL_117;
  }

  if (LODWORD(v656) == 3)
  {
    v4 = v666;
    sub_1AF9C6E50((a3 + 8), v644, v690, &v747, *(v666 + 8), *(v666 + 12), v52);
  }

  else
  {
    v4 = v666;
    if (LODWORD(v656) == 4)
    {
      sub_1AF9C6B04((a3 + 8), v644, v690, &v747, *v732.columns[1].i64, *v732.columns[0].i64, v52.n128_f64[0], v53, v54, v55, v56);
    }

    else
    {
      sub_1AF9C7700((a3 + 8), v644, v690, &v747, v58, *(v666 + 8), *(v666 + 12));
    }
  }

  v728 = v749;
  v729 = v750;
  v730 = v751;
  v731 = v752;
  v724 = v747.columns[1];
  v725 = v747.columns[2];
  v726 = v747.columns[3];
  v727 = v748;
  v723 = v747.columns[0];
  sub_1AF9D0560(&v723);
LABEL_117:
  v127 = *(v4 + 152);
  sub_1AF8E60EC(v127, 1, v753);
  if (!v756)
  {
    goto LABEL_122;
  }

  v760[0] = v753[0];
  v760[1] = v753[1];
  v760[2] = v754;
  v761 = v755;
  v762 = v756;
  v723 = v754;
  v724.i64[0] = v755;
  if (sub_1AF8FE1C4(&v723) != 2)
  {
    sub_1AF9D0594(v753, &unk_1ED725420, &type metadata for TextureCPURuntime);
    goto LABEL_122;
  }

  v128 = *(v4 + 160);
  sub_1AF44222C(v760, &v723);
  sub_1AF478700(v760, v128, 1, v757);
  if (v758.i64[1] == 1)
  {
    sub_1AF9D0594(v753, &unk_1ED725420, &type metadata for TextureCPURuntime);
    ecs_stack_allocator_pop_snapshot(v8);
  }

  v719 = v757[0];
  v720 = v757[1];
  v721 = v758;
  v722 = v759;
  v237 = v4;
  v238 = v690 - v10;

  v239 = sub_1AF757580(8 * (v690 - v10), 8);
  v240 = sub_1AF3CBD30(v127);
  if ((*(v237 + 208) & 1) != 0 && (v241 = sub_1AF9C5E88(&type metadata for Color, &off_1F252CA88), (v242 & 1) == 0))
  {
    v598 = v241;
    if (v240 == 5)
    {
      v599 = v690 - v10;
      if (v690 != v10)
      {
        v600 = *(v666 + 192);
        v601 = *(v666 + 176);
        v602 = (v241 + 16 * v10);
        v246 = v10;
        v603 = &v692[v10];
        do
        {
          v604 = *v603++;
          *&v605 = (v721.i64[1])(&v719, COERCE_DOUBLE(vadd_f32(v600, vmul_f32(v601, v604))));
          *v602++ = v605;
          --v599;
        }

        while (v599);
        goto LABEL_375;
      }
    }

    else if (v690 != v10)
    {
      v243 = 0;
      v636 = *(v666 + 192);
      v637 = *(v666 + 176);
      v246 = v10;
      do
      {
        (v721.i64[1])(&v719, COERCE_DOUBLE(vadd_f32(v636, vmul_f32(v637, v692[v10]))));
        if (v240 <= 1u)
        {
          v639 = *&v638.i32[1];
          if (!v240)
          {
            v639 = *v638.i32;
          }
        }

        else if (v240 == 2)
        {
          v639 = *&v638.i32[2];
        }

        else if (v240 == 3)
        {
          v639 = *&v638.i32[3];
        }

        else
        {
          v640 = vmul_f32(*&vextq_s8(v638, v638, 4uLL), 0x3D93DD983F371759);
          v639 = v640.f32[1] + ((0.2126 * *v638.i32) + v640.f32[0]);
        }

        if (v639 <= *(&v240 + 1))
        {
          *(v239 + 8 * v243++) = v10;
        }

        else
        {
          *(v598 + 16 * v10) = v638;
        }

        ++v10;
      }

      while (v690 != v10);
      goto LABEL_376;
    }
  }

  else
  {
    if (v240 == 5)
    {
      if (v690 != v10)
      {
        v243 = 0;
        v244 = *(v666 + 192);
        v245 = *(v666 + 176);
        v246 = v10;
        do
        {
          if ((v721.i64[1])(&v719, COERCE_DOUBLE(vadd_f32(v244, vmul_f32(v245, v692[v10])))) <= 0.0)
          {
            *(v239 + 8 * v243++) = v10;
          }

          ++v10;
        }

        while (v690 != v10);
        goto LABEL_376;
      }

      goto LABEL_374;
    }

    if (v690 != v10)
    {
      v243 = 0;
      v249 = *(v666 + 192);
      v250 = *(v666 + 176);
      v246 = v10;
      while (1)
      {
        (v721.i64[1])(&v719, COERCE_DOUBLE(vadd_f32(v249, vmul_f32(v250, v692[v10]))));
        if (v240 <= 1u)
        {
          if (v240)
          {
            v251.i32[0] = v251.i32[1];
          }

          if (*v251.i32 > *(&v240 + 1))
          {
            goto LABEL_194;
          }
        }

        else if (v240 == 2)
        {
          if (*&v251.i32[2] > *(&v240 + 1))
          {
            goto LABEL_194;
          }
        }

        else if (v240 == 3)
        {
          if (*&v251.i32[3] > *(&v240 + 1))
          {
            goto LABEL_194;
          }
        }

        else
        {
          v252 = 0.2126 * *v251.i32;
          v253 = vmul_f32(*&vextq_s8(v251, v251, 4uLL), 0x3D93DD983F371759);
          if ((v253.f32[1] + (v252 + v253.f32[0])) > *(&v240 + 1))
          {
            goto LABEL_194;
          }
        }

        *(v239 + 8 * v243++) = v10;
LABEL_194:
        if (v690 == ++v10)
        {
          goto LABEL_376;
        }
      }
    }
  }

LABEL_374:
  v246 = v10;
LABEL_375:
  v243 = 0;
LABEL_376:
  v626 = v675[1];
  v717 = 0;
  memset(v716, 0, sizeof(v716));
  v718 = 5;
  if (v243 < 1)
  {

    sub_1AF9D0594(v753, &unk_1ED725420, &type metadata for TextureCPURuntime);
    v11 = v654;
    v10 = v246;
    v4 = v666;
  }

  else
  {
    v10 = v246;
    if (v243 == *(v626 + 240) - *(v626 + 232))
    {
      sub_1AF63515C(v716, &v723);
      *&v727 = 0;
      v726 = 0uLL;
    }

    else
    {
      sub_1AF63515C(v716, &v723);
      v726.i64[0] = v239;
      v726.i64[1] = v238;
      *&v727 = v243;
    }

    v627 = *(v687 + 104);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v687 + 104) = v627;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v627 = sub_1AF420EA0(0, v627[2] + 1, 1, v627);
      *(v687 + 104) = v627;
    }

    v11 = v654;
    v4 = v666;
    v630 = v627[2];
    v629 = v627[3];
    if (v630 >= v629 >> 1)
    {
      *(v687 + 104) = sub_1AF420EA0(v629 > 1, v630 + 1, 1, v627);
    }

    sub_1AF9D0594(v753, &unk_1ED725420, &type metadata for TextureCPURuntime);
    v631 = *(v687 + 104);
    *(v631 + 16) = v630 + 1;
    v632 = v631 + 72 * v630;
    *(v632 + 32) = v723;
    v634 = v725;
    v633 = v726;
    v635 = v724;
    *(v632 + 96) = v727;
    *(v632 + 64) = v634;
    *(v632 + 80) = v633;
    *(v632 + 48) = v635;
    *(v687 + 104) = v631;
  }

  a2 = v659;
  sub_1AF635250(v716);
LABEL_123:
  v129 = *(a2 + 8);
  sub_1AF3C9244(v129, &v723);
  v652 = v129;
  sub_1AF3CBE00(v129, &v732);
  v700 = v724;
  v709 = v723;
  x = v725;
  v662 = v726;
  v130 = v727;
  if (v727)
  {
    v131 = -1;
  }

  else
  {
    v131 = 0;
  }

  v132 = vdupq_n_s32(v131);
  *v133.i64 = sub_1AF9C98A4(vbslq_s8(v132, xmmword_1AFE20150, v723), vbslq_s8(v132, xmmword_1AFE20160, v724), vbslq_s8(v132, xmmword_1AFE20180, v725));
  v653 = v133;
  v135 = v700;
  v134 = v709;
  v136 = x;
  if (v130)
  {
    v135 = xmmword_1AFE20160;
    v134 = xmmword_1AFE20150;
    v136 = xmmword_1AFE20180;
  }

  *v137.i64 = sub_1AF9C99D8(v134, v135, v136);
  v693 = v137;
  v642 = *(a3 + 50);
  if (v642 == 1)
  {

    v138.f32[0] = sub_1AF5AF890(v652);
    v676 = v138;
    v680 = v139;
    v684 = v140;
    v673 = v141;

    v143 = v676;
    v142 = v680;
    v144 = v684;
  }

  else
  {
    v145 = *(a2 + 32);

    sub_1AFB95040(v145, &v738);
    v685 = v738.columns[1];
    v688 = v738.columns[0];
    v677 = v738.columns[3];
    v681 = v738.columns[2];

    if (v739)
    {
      v146 = -1;
    }

    else
    {
      v146 = 0;
    }

    v147 = vdupq_n_s32(v146);
    v143 = vbslq_s8(v147, xmmword_1AFE20150, v688);
    v144 = vbslq_s8(v147, xmmword_1AFE20160, v685);
    v142 = vbslq_s8(v147, xmmword_1AFE20180, v681);
    v148 = vbslq_s8(v147, xmmword_1AFE201A0, v677);
    if (v130)
    {
      v673 = v148;
    }

    else
    {
      v149 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v700.f32[0]), v144, *v700.f32, 1), v142, v700, 2), v148, v700, 3);
      v150 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, x.f32[0]), v144, *x.f32, 1), v142, x, 2), v148, x, 3);
      v151 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v662.f32[0]), v144, *v662.f32, 1), v142, v662, 2), v148, v662, 3);
      v143 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v709.f32[0]), v144, *v709.f32, 1), v142, v709, 2), v148, v709, 3);
      v144 = v149;
      v142 = v150;
      v673 = v151;
    }
  }

  v152 = vmulq_f32(v143, v143);
  v153 = vmulq_f32(v144, v144);
  v154 = vmulq_f32(v142, v142);
  v155 = vzip2q_s32(v152, v154);
  v156 = vzip1q_s32(vzip1q_s32(v152, v154), v153);
  v157 = vtrn2q_s32(v152, v153);
  v157.i32[2] = v154.i32[1];
  v158 = vaddq_f32(vzip1q_s32(v155, vdupq_laneq_s32(v153, 2)), vaddq_f32(v156, v157));
  v153.i64[0] = 0x80000000800000;
  v153.i64[1] = 0x80000000800000;
  v159 = vcgeq_f32(v153, v158);
  v158.i32[3] = 0;
  v160 = vrsqrteq_f32(v158);
  v161 = vmulq_f32(v160, vrsqrtsq_f32(v158, vmulq_f32(v160, v160)));
  v162 = v159;
  v162.i32[3] = 0;
  v163 = vbslq_s8(vcltzq_s32(v162), v158, vmulq_f32(v161, vrsqrtsq_f32(v158, vmulq_f32(v161, v161))));
  v164 = vmulq_n_f32(v143, v163.f32[0]);
  v165 = vmulq_lane_f32(v144, *v163.f32, 1);
  v166 = vmulq_laneq_f32(v142, v163, 2);
  v167 = vuzp1q_s32(v166, v166);
  v168 = vuzp1q_s32(v165, v165);
  v169 = v164;
  if (v159.i32[0])
  {
    v170 = vmlaq_f32(vmulq_f32(vextq_s8(v167, v166, 0xCuLL), vnegq_f32(v165)), v166, vextq_s8(v168, v165, 0xCuLL));
    v169 = vextq_s8(vuzp1q_s32(v170, v170), v170, 0xCuLL);
  }

  v171 = vuzp1q_s32(v164, v164);
  v172 = v165;
  if (v159.i32[1])
  {
    v173 = vmlaq_f32(vmulq_f32(vextq_s8(v171, v164, 0xCuLL), vnegq_f32(v166)), v164, vextq_s8(v167, v166, 0xCuLL));
    v172 = vextq_s8(vuzp1q_s32(v173, v173), v173, 0xCuLL);
  }

  if (v159.i32[2])
  {
    v174 = vmlaq_f32(vmulq_f32(vextq_s8(v168, v165, 0xCuLL), vnegq_f32(v164)), v165, vextq_s8(v171, v164, 0xCuLL));
    v166 = vextq_s8(vuzp1q_s32(v174, v174), v174, 0xCuLL);
  }

  v175 = (*v169.i32 + v172.f32[1]) + v166.f32[2];
  if (v175 > 0.0)
  {
    v176 = sqrtf(v175 + 1.0);
    *v177.f32 = vsub_f32(*&vzip2q_s32(v172, vuzp1q_s32(v172, v166)), *&vtrn2q_s32(v166, vzip2q_s32(v166, v169)));
    v177.f32[2] = *&v169.i32[1] - v172.f32[0];
    v177.f32[3] = v176 * v176;
    v178 = 0.5 / v176;
LABEL_144:
    v179 = vmulq_n_f32(v177, v178);
    goto LABEL_153;
  }

  if (*v169.i32 < v172.f32[1] || *v169.i32 < v166.f32[2])
  {
    if (v172.f32[1] <= v166.f32[2])
    {
      v233 = vzip2q_s32(v169, v172).u64[0];
      v234 = __PAIR64__(v169.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v166.f32[2] + 1.0) - *v169.i32) - v172.f32[1])));
      v235 = vdup_lane_s32(*v172.f32, 0);
      v236 = vsub_f32(*v169.i8, v235);
      v235.i32[0] = v234.i32[0];
      v235.i32[0] = vmul_f32(v234, v235).u32[0];
      v235.i32[1] = v236.i32[1];
      *v177.f32 = vadd_f32(v233, *v166.f32);
      *&v177.u32[2] = v235;
      v178 = 0.5 / v234.f32[0];
      goto LABEL_144;
    }

    v181 = sqrtf(((v172.f32[1] + 1.0) - *v169.i32) - v166.f32[2]);
    v184.f32[0] = *&v169.i32[1] + v172.f32[0];
    v169 = vzip2q_s32(v169, v172);
    v184.f32[1] = v181 * v181;
    *&v184.u32[2] = vext_s8(vadd_f32(*v166.f32, *v169.i8), vsub_f32(*v166.f32, *v169.i8), 4uLL);
  }

  else
  {
    v181 = sqrtf(((*v169.i32 + 1.0) - v172.f32[1]) - v166.f32[2]);
    v184.f32[0] = v181 * v181;
    v182 = *&v169.i32[1] + v172.f32[0];
    v169 = vzip2q_s32(v169, v172);
    LODWORD(v183) = vadd_f32(*v169.i8, *v166.f32).u32[0];
    HIDWORD(v183) = vsub_f32(*&v169, *&v166).i32[1];
    v184.f32[1] = v182;
    v184.i64[1] = v183;
  }

  v179 = vmulq_n_f32(v184, 0.5 / v181);
LABEL_153:
  v686 = v144;
  v689 = v179;
  v678 = v143;
  v682 = v142;
  if (*(v4 + 64) < 2u)
  {
    v185 = v690 - v10;
    if (v690 != v10)
    {
      v186 = &v674[2 * v10];
      do
      {
        *v186++ = v653;
        --v185;
      }

      while (v185);
    }

    goto LABEL_212;
  }

  if (*(v4 + 48) != 0)
  {
    if (*(v4 + 48) ^ 1 | *(v4 + 56))
    {
      v215 = v690 - v10;
      if (v690 != v10)
      {
        v216 = *(a3 + 24);
        v217 = *(a3 + 32);
        v218 = &v674[2 * v10];
        v220 = *(a3 + 8);
        v219 = *(a3 + 16);
        do
        {
          v221 = v220 ^ v216;
          v222 = v219 ^ v217;
          v223 = v221 ^ v219;
          v224 = v220 ^ v222;
          v225 = v221 ^ (v219 << 17) ^ v224;
          v226 = v225 ^ v223;
          v227 = __ROR8__(v222, 19);
          v228 = v223 ^ v227 ^ v224;
          v172.f32[0] = vcvts_n_f32_u64((9 * ((((5 * v219) >> 32) >> 25) | (640 * v219))) & 0xFFFFFF, 0x18uLL) + -0.5;
          v172.f32[1] = vcvts_n_f32_u64((9 * ((((5 * v223) >> 32) >> 25) | (640 * v223))) & 0xFFFFFF, 0x18uLL) + -0.5;
          v229 = __ROR8__(v223 ^ v227, 19);
          v172.f32[2] = vcvts_n_f32_u64((9 * ((((5 * (v225 ^ v223)) >> 32) >> 25) | (640 * (v225 ^ v223)))) & 0xFFFFFF, 0x18uLL) + -0.5;
          v230 = vmulq_f32(v172, v172);
          v231 = v225 ^ (v223 << 17) ^ v228;
          *&v232 = v230.f32[2] + vaddv_f32(*v230.f32);
          v219 = v231 ^ v226;
          v220 = v226 ^ v229 ^ v228;
          *v230.f32 = vrsqrte_f32(v232);
          *v230.f32 = vmul_f32(*v230.f32, vrsqrts_f32(v232, vmul_f32(*v230.f32, *v230.f32)));
          v216 = v231 ^ (v226 << 17);
          v172 = vmulq_n_f32(v172, vmul_f32(*v230.f32, vrsqrts_f32(v232, vmul_f32(*v230.f32, *v230.f32))).f32[0]);
          v217 = __ROR8__(v226 ^ v229, 19);
          v172.i32[3] = v169.i32[3];
          *v218++ = v172;
          --v215;
        }

        while (v215);
        *(a3 + 8) = v220;
        *(a3 + 16) = v219;
        *(a3 + 24) = v216;
        *(a3 + 32) = v217;
      }

      goto LABEL_212;
    }

    if ((v733 & 1) == 0 && (v130 & 1) == 0)
    {
      v187 = vmulq_f32(v709, v709);
      v188 = vmulq_f32(v700, v700);
      v189 = vmulq_f32(x, x);
      v190 = vzip2q_s32(v187, v189);
      v191 = vzip1q_s32(vzip1q_s32(v187, v189), v188);
      v192 = vtrn2q_s32(v187, v188);
      v192.i32[2] = v189.i32[1];
      v193 = vaddq_f32(vzip1q_s32(v190, vdupq_laneq_s32(v188, 2)), vaddq_f32(v191, v192));
      v188.i64[0] = 0x80000000800000;
      v188.i64[1] = 0x80000000800000;
      v194 = vcgeq_f32(v188, v193);
      v193.i32[3] = 0;
      v195 = vrsqrteq_f32(v193);
      v196 = vmulq_f32(v195, vrsqrtsq_f32(v193, vmulq_f32(v195, v195)));
      v197 = v194;
      v197.i32[3] = 0;
      v198 = vbslq_s8(vcltzq_s32(v197), v193, vmulq_f32(v196, vrsqrtsq_f32(v193, vmulq_f32(v196, v196))));
      v199 = vmulq_n_f32(v709, v198.f32[0]);
      v200 = vmulq_lane_f32(v700, *v198.f32, 1);
      v201 = vmulq_laneq_f32(x, v198, 2);
      v202 = vuzp1q_s32(v201, v201);
      v203 = vuzp1q_s32(v200, v200);
      v204 = v199;
      if (v194.i32[0])
      {
        v205 = vmlaq_f32(vmulq_f32(vextq_s8(v202, v201, 0xCuLL), vnegq_f32(v200)), v201, vextq_s8(v203, v200, 0xCuLL));
        v204 = vextq_s8(vuzp1q_s32(v205, v205), v205, 0xCuLL);
      }

      v206 = vuzp1q_s32(v199, v199);
      v207 = v200;
      if (v194.i32[1])
      {
        v208 = vmlaq_f32(vmulq_f32(vextq_s8(v206, v199, 0xCuLL), vnegq_f32(v201)), v199, vextq_s8(v202, v201, 0xCuLL));
        v207 = vextq_s8(vuzp1q_s32(v208, v208), v208, 0xCuLL);
      }

      if (v194.i32[2])
      {
        v209 = vmlaq_f32(vmulq_f32(vextq_s8(v203, v200, 0xCuLL), vnegq_f32(v199)), v200, vextq_s8(v206, v199, 0xCuLL));
        v201 = vextq_s8(vuzp1q_s32(v209, v209), v209, 0xCuLL);
      }

      v210 = (*v204.i32 + *&v207.i32[1]) + v201.f32[2];
      if (v210 > 0.0)
      {
        v211 = sqrtf(v210 + 1.0);
        *v212.f32 = vsub_f32(*&vzip2q_s32(v207, vuzp1q_s32(v207, v201)), *&vtrn2q_s32(v201, vzip2q_s32(v201, v204)));
        v212.f32[2] = *&v204.i32[1] - *v207.i32;
        v212.f32[3] = v211 * v211;
        v213 = 0.5 / v211;
LABEL_170:
        v214 = vmulq_n_f32(v212, v213);
        goto LABEL_209;
      }

      if (*v204.i32 < *&v207.i32[1] || *v204.i32 < v201.f32[2])
      {
        if (*&v207.i32[1] <= v201.f32[2])
        {
          v622 = vzip2q_s32(v204, v207).u64[0];
          v623 = __PAIR64__(v204.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v201.f32[2] + 1.0) - *v204.i32) - *&v207.i32[1])));
          v624 = vdup_lane_s32(*v207.i8, 0);
          v625 = vsub_f32(*v204.i8, v624);
          v624.i32[0] = v623.i32[0];
          v624.i32[0] = vmul_f32(v623, v624).u32[0];
          v624.i32[1] = v625.i32[1];
          *v212.f32 = vadd_f32(v622, *v201.f32);
          *&v212.u32[2] = v624;
          v213 = 0.5 / v623.f32[0];
          goto LABEL_170;
        }

        v254 = sqrtf(((*&v207.i32[1] + 1.0) - *v204.i32) - v201.f32[2]);
        v258.f32[0] = *&v204.i32[1] + *v207.i32;
        v248 = vzip2q_s32(v204, v207).u64[0];
        v258.f32[1] = v254 * v254;
        *&v258.u32[2] = vext_s8(vadd_f32(*v201.f32, v248), vsub_f32(*v201.f32, v248), 4uLL);
      }

      else
      {
        v254 = sqrtf(((*v204.i32 + 1.0) - *&v207.i32[1]) - v201.f32[2]);
        v258.f32[0] = v254 * v254;
        v255 = *&v204.i32[1] + *v207.i32;
        v256 = vzip2q_s32(v204, v207).u64[0];
        LODWORD(v257) = vadd_f32(v256, *v201.f32).u32[0];
        HIDWORD(v257) = vsub_f32(v256, *&v201).i32[1];
        v258.f32[1] = v255;
        v258.i64[1] = v257;
      }

      v214 = vmulq_n_f32(v258, 0.5 / v254);
LABEL_209:
      v259 = v690 - v10;
      if (v690 != v10)
      {
        v653 = v732.columns[0];
        v648 = v732.columns[2];
        v650 = v732.columns[1];
        v646 = v732.columns[3];
        v260 = vmulq_f32(v214, xmmword_1AFE21390);
        v261 = vmulq_f32(v214, v214);
        *v261.i8 = vadd_f32(*v261.i8, *&vextq_s8(v261, v261, 8uLL));
        v261.i32[0] = vadd_f32(*v261.i8, vdup_lane_s32(*v261.i8, 1)).u32[0];
        v262 = vrecpe_f32(v261.u32[0]);
        v263 = vmul_f32(v262, vrecps_f32(v261.u32[0], v262));
        v643 = vmulq_n_f32(v260, vmul_f32(v263, vrecps_f32(v261.u32[0], v263)).f32[0]);
        v264 = &v674[2 * v10];
        v265 = &v11[2 * v10];
        do
        {
          v266 = *v265++;
          v267 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v662, x, v266, 2), v700, *v266.f32, 1), v709, v266.f32[0]), vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v646, v648, v266, 2), v650, *v266.f32, 1), v653, v266.f32[0]));
          v267.i32[3] = 0;
          *&v268 = sub_1AF6AF448(v267, v643);
          *v264++ = v268;
          --v259;
        }

        while (v259);
      }
    }
  }

LABEL_212:
  v269 = sub_1AF9C5E88(&type metadata for Orientation, &off_1F252C8A8);
  if ((v274 & 1) == 0)
  {
    v275 = v690 - v10;
    if (v690 != v10)
    {
      v276 = &v674[2 * v10];
      v277 = &v11[2 * v10];
      v278 = v269 + 16 * v10;
      do
      {
        v278 += 16;
        sub_1AFDFDA38();
        v279 = v719;
        v280 = v720;
        v281 = v721;
        _Q4 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v719, COERCE_FLOAT(*v277->f32)), v720, *v277, 1), v721, *v277->f32, 2);
        _Q4.i32[3] = v700.i32[3];
        *v277->f32 = _Q4;
        v277 += 2;
        _Q3 = *v276->f32;
        _Q0 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v279, COERCE_FLOAT(*v276->f32)), v280, *v276, 1), v281, *v276->f32, 2);
        _Q0.i32[3] = v709.i32[3];
        *v276->f32 = _Q0;
        v276 += 2;
        --v275;
      }

      while (v275);
    }
  }

  v282 = *(v4 + 80);
  v283 = *(v4 + 88);
  v284 = *(v4 + 96);
  if (v284 != 255)
  {
    v295 = sub_1AF9C5E88(&type metadata for Orientation, &off_1F252C8A8);
    v299 = v689;
    if ((v300 & 1) == 0)
    {
      v301 = v690 - v10;
      if (v690 != v10)
      {
        _S8 = v689.i32[3];
        v303 = vdupq_laneq_s32(v689, 3);
        _Q0 = vuzp1q_s32(v689, v689);
        v304 = vextq_s8(_Q0, v689, 0xCuLL);
        v305 = vnegq_f32(v689);
        v306 = (v295 + 16 * v10);
        v307 = &v674[2 * v10];
        v297.i32[0] = 1.0;
        v649 = v304;
        v651 = v303;
        v647 = v305;
        do
        {
          if (v284 < 2)
          {
            v308 = v693;
          }

          else
          {
            if (!(v282 | v283))
            {
              if (v657 && ((1 << SLOBYTE(v656)) & 0x15) != 0)
              {
                v328 = *v307;
                v329 = vmulq_f32(v328, v328);
                v329.f32[0] = v329.f32[2] + vaddv_f32(*v329.f32);
                v330 = vdupq_lane_s32(*v329.f32, 0);
                v330.i32[3] = 0;
                v331 = vrsqrteq_f32(v330);
                v332 = vmulq_f32(v331, vrsqrtsq_f32(v330, vmulq_f32(v331, v331)));
                _Q4 = vmulq_f32(v332, v332);
                v333 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v329.f32[0] != 0.0)), 0x1FuLL));
                v333.i32[3] = 0;
                v334 = vbslq_s8(vcltzq_s32(v333), vmulq_f32(vmulq_f32(v332, vrsqrtsq_f32(v330, _Q4)), v328), v328);
                _Q4.i32[0] = v334.i32[2];
                v333.i64[0] = 0x8000000080000000;
                v333.i64[1] = 0x8000000080000000;
                v333.i32[0] = vbslq_s8(v333, v297, _Q4).i32[0];
                v330.f32[0] = v334.f32[1] / (fabsf(v334.f32[2]) + *v297.i32);
                v335 = vmuls_lane_f32(v330.f32[0], *v334.f32, 1);
                v336 = -(v334.f32[0] * v330.f32[0]);
                v337 = v334.f32[2] + (*v333.i32 * v335);
                v338 = *v333.i32 * v336;
                v339 = *v297.i32 - v335;
                v340 = vmuls_lane_f32(-*v333.i32, *v334.f32, 1);
                v341 = v334.f32[2] + (v337 + v339);
                if (v341 <= 0.0)
                {
                  if (v337 < v339 || v337 < v334.f32[2])
                  {
                    if (v339 <= v334.f32[2])
                    {
                      v398 = sqrtf(((v334.f32[2] + *v297.i32) - v337) - v339);
                      v334.i32[0] = vsubq_f32(v334, v334).u32[0];
                      v334.f32[1] = v334.f32[1] + v340;
                      v334.f32[2] = v398 * v398;
                      v334.f32[3] = v338 - v336;
                      _Q0 = vmulq_n_f32(v334, 0.5 / v398);
                    }

                    else
                    {
                      v391 = sqrtf(((v339 + *v297.i32) - v337) - v334.f32[2]);
                      v392.f32[0] = v336 + v338;
                      v273 = v334;
                      v273.f32[1] = v340;
                      v392.f32[1] = v391 * v391;
                      *&v392.u32[2] = vrev64_s32(vadd_f32(*v334.f32, *v273.f32));
                      _Q0 = vmulq_n_f32(v392, 0.5 / v391);
                    }
                  }

                  else
                  {
                    v397 = sqrtf(((v337 + *v297.i32) - v339) - v334.f32[2]);
                    v273.f32[0] = v397 * v397;
                    v273.f32[1] = v336 + v338;
                    *&v273.u32[2] = vsub_f32(__PAIR64__(LODWORD(v340), v334.u32[0]), *v334.f32);
                    _Q0 = vmulq_n_f32(v273, 0.5 / v397);
                  }
                }

                else
                {
                  v342 = sqrtf(v341 + *v297.i32);
                  v343.f32[0] = v340 - v334.f32[1];
                  v343.i32[1] = vaddq_f32(v334, v334).u32[0];
                  v343.f32[2] = v338 - v336;
                  v343.f32[3] = v342 * v342;
                  _Q0 = vmulq_n_f32(v343, 0.5 / v342);
                }

                v399 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), v305), _Q0, v304);
                _Q3 = vuzp1q_s32(v399, v399);
                v308 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v299, _Q0, 3), v303, _Q0), vextq_s8(_Q3, v399, 0xCuLL));
                _Q1 = vmulq_f32(v299, _Q0);
                __asm { FMLA            S1, S8, V0.S[3] }

                v308.i32[3] = _Q1.i32[0];
                goto LABEL_228;
              }

              _Q1.i32[0] = 0;
              v344 = *v307;
              v345 = vextq_s8(vuzp1q_s32(v344, v344), *v307, 0xCuLL);
              v346 = vmlaq_f32(vmulq_f32(v345, xmmword_1AFE8B8F0), xmmword_1AFE206C0, *v307);
              _Q0 = vextq_s8(vuzp1q_s32(v346, v346), v346, 0xCuLL);
              v347 = vabsq_f32(_Q0);
              _Q0.i32[3] = v653.i32[3];
              v348.i64[0] = 0x3400000034000000;
              v348.i64[1] = 0x3400000034000000;
              v349 = vcgeq_f32(v348, v347);
              v349.i32[3] = v349.i32[2];
              v349.i32[0] = vminvq_u32(v349);
              v350 = vdupq_lane_s32(*&vcgtq_s32(_Q1, v349), 0);
              v351 = xmmword_1AFE20150;
              v351.i32[3] = v298.i32[3];
              v352 = vbslq_s8(v350, v351, _Q0);
              v353 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v352, v352), v352, 0xCuLL), vnegq_f32(*v307)), v352, v345);
              v354 = vextq_s8(vuzp1q_s32(v353, v353), v353, 0xCuLL);
              _Q1 = v354;
              _Q1.i32[3] = v662.i32[3];
              v355 = vmulq_f32(v352, v352);
              v356 = vmulq_f32(_Q1, _Q1);
              v357 = vmulq_f32(v344, v344);
              v358 = vzip2q_s32(v355, v357);
              v359 = vzip1q_s32(vzip1q_s32(v355, v357), v356);
              v360 = vtrn2q_s32(v355, v356);
              v360.i32[2] = v357.i32[1];
              v361 = vaddq_f32(vzip1q_s32(v358, vdupq_laneq_s32(v356, 2)), vaddq_f32(v359, v360));
              v360.i64[0] = 0x80000000800000;
              v360.i64[1] = 0x80000000800000;
              v362 = vcgeq_f32(v360, v361);
              v361.i32[3] = 0;
              v363 = vrsqrteq_f32(v361);
              v364 = vmulq_f32(v363, vrsqrtsq_f32(v361, vmulq_f32(v363, v363)));
              v365 = v362;
              v365.i32[3] = 0;
              v366 = vbslq_s8(vcltzq_s32(v365), v361, vmulq_f32(v364, vrsqrtsq_f32(v361, vmulq_f32(v364, v364))));
              v367 = vmulq_n_f32(v352, v366.f32[0]);
              v368 = vmulq_lane_f32(v354, *v366.f32, 1);
              v369 = vmulq_laneq_f32(*v307, v366, 2);
              v370 = vuzp1q_s32(v369, v369);
              v371 = vuzp1q_s32(v368, v368);
              v372 = v367;
              if (v362.i32[0])
              {
                v373 = vmlaq_f32(vmulq_f32(vextq_s8(v370, v369, 0xCuLL), vnegq_f32(v368)), v369, vextq_s8(v371, v368, 0xCuLL));
                v372 = vextq_s8(vuzp1q_s32(v373, v373), v373, 0xCuLL);
              }

              v374 = vuzp1q_s32(v367, v367);
              v375 = v368;
              if (v362.i32[1])
              {
                v376 = vmlaq_f32(vmulq_f32(vextq_s8(v374, v367, 0xCuLL), vnegq_f32(v369)), v367, vextq_s8(v370, v369, 0xCuLL));
                v375 = vextq_s8(vuzp1q_s32(v376, v376), v376, 0xCuLL);
              }

              if (v362.i32[2])
              {
                v377 = vmlaq_f32(vmulq_f32(vextq_s8(v371, v368, 0xCuLL), vnegq_f32(v367)), v368, vextq_s8(v374, v367, 0xCuLL));
                v369 = vextq_s8(vuzp1q_s32(v377, v377), v377, 0xCuLL);
              }

              v378 = (*v372.i32 + *&v375.i32[1]) + v369.f32[2];
              if (v378 > 0.0)
              {
                v379 = sqrtf(v378 + *v297.i32);
                *v380.f32 = vsub_f32(*&vzip2q_s32(v375, vuzp1q_s32(v375, v369)), *&vtrn2q_s32(v369, vzip2q_s32(v369, v372)));
                v380.f32[2] = *&v372.i32[1] - *v375.i32;
                v380.f32[3] = v379 * v379;
                v381 = 0.5 / v379;
                goto LABEL_246;
              }

              if (*v372.i32 >= *&v375.i32[1] && *v372.i32 >= v369.f32[2])
              {
                v384 = sqrtf(((*v372.i32 + *v297.i32) - *&v375.i32[1]) - v369.f32[2]);
                v388.f32[0] = v384 * v384;
                v385 = *&v372.i32[1] + *v375.i32;
                v386 = vzip2q_s32(v372, v375).u64[0];
                LODWORD(v387) = vadd_f32(v386, *v369.f32).u32[0];
                HIDWORD(v387) = vsub_f32(v386, *&v369).i32[1];
                v388.f32[1] = v385;
                v388.i64[1] = v387;
                goto LABEL_254;
              }

              if (*&v375.i32[1] <= v369.f32[2])
              {
                v393 = vzip2q_s32(v372, v375).u64[0];
                v394 = __PAIR64__(v372.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v369.f32[2] + *v297.i32) - *v372.i32) - *&v375.i32[1])));
                v395 = vdup_lane_s32(*v375.i8, 0);
                *v380.f32 = vadd_f32(v393, *v369.f32);
                v396 = vsub_f32(*v372.i8, v395);
                v395.i32[0] = v394.i32[0];
                v395.i32[0] = vmul_f32(v394, v395).u32[0];
                v395.i32[1] = v396.i32[1];
                *&v380.u32[2] = v395;
                v381 = 0.5 / v394.f32[0];
LABEL_246:
                _Q4 = vmulq_n_f32(v380, v381);
              }

              else
              {
                v384 = sqrtf(((*&v375.i32[1] + *v297.i32) - *v372.i32) - v369.f32[2]);
                v388.f32[0] = *&v372.i32[1] + *v375.i32;
                v383 = vzip2q_s32(v372, v375).u64[0];
                v388.f32[1] = v384 * v384;
                *&v388.u32[2] = vext_s8(vadd_f32(*v369.f32, v383), vsub_f32(*v369.f32, v383), 4uLL);
LABEL_254:
                _Q4 = vmulq_n_f32(v388, 0.5 / v384);
              }

              v298 = vbslq_s8(v350, v351, v298);
              v389 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v305), _Q4, v304);
              v273 = vuzp1q_s32(v389, v389);
              v308 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v299, _Q4, 3), v303, _Q4), vextq_s8(v273, v389, 0xCuLL));
              _Q3 = vmulq_f32(v299, _Q4);
              __asm { FMLA            S3, S8, V4.S[3] }

              v308.i32[3] = _Q3.i32[0];
              goto LABEL_228;
            }

            if (!(v282 ^ 1 | v283))
            {
              goto LABEL_229;
            }

            v310 = *(a3 + 8);
            v309 = *(a3 + 16);
            v311 = *(a3 + 24) ^ v310;
            v312 = *(a3 + 32) ^ v309;
            v313 = v311 ^ v309;
            v314 = v312 ^ v310;
            _Q0.f32[0] = vcvts_n_f32_u64((9 * ((((5 * v309) >> 32) >> 25) | (640 * v309))) & 0xFFFFFF, 0x18uLL);
            v315 = v314 ^ v311 ^ (v309 << 17);
            v316 = __ROR8__(v312, 19);
            v317 = v315 ^ v313;
            v318 = v313 ^ v316 ^ v314;
            v319 = v315 ^ (v313 << 17) ^ v318;
            v320 = __ROR8__(v313 ^ v316, 19);
            *(a3 + 8) = v317 ^ v320 ^ v318;
            *(a3 + 16) = v319 ^ v317;
            *(a3 + 24) = v319 ^ (v317 << 17);
            *(a3 + 32) = __ROR8__(v317 ^ v320, 19);
            _Q0.f32[0] = _Q0.f32[0] * 6.2832;
            _Q0.f32[1] = vcvts_n_f32_u64((9 * ((((5 * v313) >> 32) >> 25) | (640 * v313))) & 0xFFFFFF, 0x18uLL) * 6.2832;
            _Q0.f32[2] = vcvts_n_f32_u64((9 * ((((5 * v317) >> 32) >> 25) | (640 * v317))) & 0xFFFFFF, 0x18uLL) * 6.2832;
            v321.i64[0] = 0x3F0000003F000000;
            v321.i64[1] = 0x3F0000003F000000;
            v322 = vmulq_f32(_Q0, v321);
            v322.i32[3] = 0;
            xc = v322;
            v710 = v298;
            v701 = _simd_cos_f4(v322);
            _Q0 = _simd_sin_f4(xc);
            _Q4 = v701;
            v298 = v710;
            v297.i32[0] = 1.0;
            v305 = v647;
            v304 = v649;
            v303 = v651;
            v299 = v689;
            _D2 = vextq_s8(_Q4, _Q4, 8uLL).u64[0];
            v324 = vmul_f32(*v701.f32, vext_s8(*_Q0.f32, _D2, 4uLL));
            *v273.f32 = vdup_laneq_s32(_Q0, 2);
            v273.f32[0] = -v701.f32[0];
            v325.i32[0] = vextq_s8(_Q0, _Q0, 8uLL).u32[0];
            v325.i32[1] = _Q0.i32[0];
            v326 = vmul_f32(vzip2_s32(*_Q0.f32, *v701.f32), v325);
            *v273.f32 = vmla_f32(vmul_f32(v326, *v273.f32), vrev64_s32(v324), vzip1_s32(*_Q0.f32, _D2));
            *_D2.i32 = vmuls_lane_f32(v701.f32[0], *v701.f32, 1);
            __asm { FMLA            S4, S2, V0.S[2] }

            _Q0.f32[0] = vmuls_n_f32(_Q0.f32[0], v326.f32[0]) + (v701.f32[0] * *&v324.i32[1]);
            v273.i32[2] = _Q4.i32[0];
            v327 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v273, v273), v273, 0xCuLL), v647), v273, v649);
            _Q3 = vuzp1q_s32(v327, v327);
            v308 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v689, _Q0.f32[0]), v651, v273), vextq_s8(_Q3, v327, 0xCuLL));
            _Q1 = vmulq_f32(v689, v273);
            v308.f32[3] = -((_Q1.f32[2] + vaddv_f32(*_Q1.f32)) - (v689.f32[3] * _Q0.f32[0]));
          }

LABEL_228:
          *v306 = v308;
LABEL_229:
          ++v306;
          ++v307;
          --v301;
        }

        while (v301);
      }
    }
  }

  v285 = v666;
  _Q0.i32[0] = *(v666 + 144);
  v286 = *(v666 + 148);
  if (_Q0.f32[0] != 0.0 || v286 != 0.0)
  {
    if (_Q0.f32[0] == v286)
    {
      v287 = v690 - v10;
      if (v690 != v10)
      {
        v288 = *(v666 + 128);
        v289 = vextq_s8(vuzp1q_s32(v288, v288), v288, 0xCuLL);
        v290 = vdupq_lane_s32(*_Q0.f32, 0);
        v291 = &v674[2 * v10];
        do
        {
          v292 = vmlaq_f32(vmulq_f32(v289, vnegq_f32(*v291)), v288, vextq_s8(vuzp1q_s32(*v291, *v291), *v291, 0xCuLL));
          v293 = vextq_s8(vuzp1q_s32(v292, v292), v292, 0xCuLL);
          v293.i32[3] = _Q4.i32[3];
          v294 = vmlaq_f32(*v291, v290, vsubq_f32(v293, *v291));
          v294.i32[3] = _Q3.i32[3];
          *v291++ = v294;
          --v287;
        }

        while (v287);
      }
    }

    else
    {
      v400 = v690 - v10;
      if (v690 != v10)
      {
        v401 = *(a3 + 24);
        v402 = *(a3 + 32);
        v403 = *(a3 + 8);
        v404 = *(a3 + 16);
        v405 = *(v666 + 128);
        v406 = v286 - _Q0.f32[0];
        v407 = vextq_s8(vuzp1q_s32(v405, v405), v405, 0xCuLL);
        v408 = &v674[2 * v10];
        do
        {
          v409 = vmlaq_f32(vmulq_f32(v407, vnegq_f32(*v408)), v405, vextq_s8(vuzp1q_s32(*v408, *v408), *v408, 0xCuLL));
          v410 = vextq_s8(vuzp1q_s32(v409, v409), v409, 0xCuLL);
          v410.i32[3] = v273.i32[3];
          v411 = 9 * ((((5 * v404) >> 32) >> 25) | (640 * v404));
          v412 = v403 ^ v401;
          v413 = v404 ^ v402;
          v401 ^= v403 ^ (v404 << 17);
          v404 ^= v412;
          v402 = __ROR8__(v413, 19);
          v414 = vmlaq_n_f32(*v408, vsubq_f32(v410, *v408), _Q0.f32[0] + (v406 * vcvts_n_f32_u64(*&v411 & 0xFFFFFFLL, 0x18uLL)));
          v414.i32[3] = _Q4.i32[3];
          v403 ^= v413;
          *v408++ = v414;
          --v400;
        }

        while (v400);
        *(a3 + 8) = v403;
        *(a3 + 16) = v404;
        *(a3 + 24) = v401;
        *(a3 + 32) = v402;
      }
    }
  }

  v416 = *(v666 + 112);
  v415 = *(v666 + 116);
  if (v416 == 0.0 && v415 == 0.0)
  {
    v417 = *(v666 + 104);
    v418 = *(v666 + 108);
    if (v417 == v418)
    {
      v419 = v690 - v10;
      if (v690 != v10)
      {
        v420 = &v674[2 * v10];
        do
        {
          v421.i64[0] = vmulq_n_f32(*v420, v417).u64[0];
          v421.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v417, *v420, 2));
          *v420++ = v421;
          --v419;
        }

        while (v419);
      }
    }

    else
    {
      v456 = v690 - v10;
      if (v690 != v10)
      {
        v457 = *(a3 + 24);
        v458 = *(a3 + 32);
        v459 = v418 - v417;
        v460 = &v674[2 * v10];
        v461 = *(a3 + 8);
        v462 = *(a3 + 16);
        do
        {
          v463 = 9 * ((((5 * v462) >> 32) >> 25) | (640 * v462));
          v464 = v461 ^ v457;
          v465 = v462 ^ v458;
          v457 ^= v461 ^ (v462 << 17);
          v462 ^= v464;
          v458 = __ROR8__(v465, 19);
          v466 = v417 + (v459 * vcvts_n_f32_u64(*&v463 & 0xFFFFFFLL, 0x18uLL));
          v467.i64[0] = vmulq_n_f32(*v460, v466).u64[0];
          v467.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v466, *v460, 2));
          v461 ^= v465;
          *v460++ = v467;
          --v456;
        }

        while (v456);
        *(a3 + 8) = v461;
        *(a3 + 16) = v462;
        *(a3 + 24) = v457;
        *(a3 + 32) = v458;
      }
    }
  }

  else
  {
    v422 = cosf(fminf(fmaxf(v415, 0.0), 3.1416));
    v423 = v690 - v10;
    if (v690 != v10)
    {
      v655 = v11;
      v663 = v8;
      v424 = 1.0 - v422;
      v425 = cosf(fminf(fmaxf(v416, 0.0), 3.1416));
      v430 = *(a3 + 24);
      v431 = *(a3 + 32);
      v433 = *(a3 + 8);
      v432 = *(a3 + 16);
      v434 = *(v666 + 104);
      v435 = *(v666 + 108);
      v436 = (1.0 - v425) - v424;
      v645 = v10;
      v437 = &v674[2 * v10];
      do
      {
        v438 = v433 ^ v430;
        v439 = v432 ^ v431;
        v440 = v438 ^ v432;
        v441 = v433 ^ v439;
        v442 = v438 ^ (v432 << 17) ^ v441;
        v443 = __ROR8__(v439, 19);
        v444 = v442 ^ v440;
        v445 = v440 ^ v443 ^ v441;
        v446 = v442 ^ (v440 << 17);
        v447 = __ROR8__(v440 ^ v443, 19);
        v428.i32[0] = 1.0;
        v448 = 1.0 - (v424 + (v436 * vcvts_n_f32_u64((9 * ((((5 * v432) >> 32) >> 25) | (640 * v432))) & 0xFFFFFF, 0x18uLL)));
        v449 = sqrtf(1.0 - (v448 * v448));
        v426.f32[0] = COERCE_FLOAT(*&v437[1]);
        v450.i64[0] = 0x8000000080000000;
        v450.i64[1] = 0x8000000080000000;
        v450.i32[0] = vbslq_s8(v450, v428, v426).i32[0];
        v427.f32[0] = COERCE_FLOAT(HIDWORD(*v437)) / (fabsf(v426.f32[0]) + 1.0);
        v451 = vmuls_lane_f32(v427.f32[0], *v437, 1);
        v427.f32[0] = -(COERCE_FLOAT(*v437->f32) * v427.f32[0]);
        v429.f32[0] = v426.f32[0] + (*v450.i32 * v451);
        v429.f32[1] = *v450.i32 * v427.f32[0];
        v429.f32[2] = -COERCE_FLOAT(*v437->f32);
        v427.f32[1] = 1.0 - v451;
        v427.i32[2] = vmuls_lane_f32(-*v450.i32, *v437, 1);
        v702 = v427;
        v711 = v429;
        v694 = vmulq_n_f32(*v437->f32, v448);
        v452 = __sincosf_stret(vcvts_n_f32_u64((9 * ((((5 * v440) >> 32) >> 25) | (640 * v440))) & 0xFFFFFFLL, 0x18uLL) * 6.2832);
        v453 = __ROR8__(v447 ^ v444, 19);
        v426 = vmlaq_n_f32(vmlaq_n_f32(v694, v711, v449 * v452.__cosval), v702, v449 * v452.__sinval);
        v454 = v434 + ((v435 - v434) * vcvts_n_f32_u64((9 * ((((5 * v444) >> 32) >> 25) | (640 * v444))) & 0xFFFFFF, 0x18uLL));
        if (v434 == v435)
        {
          v454 = v434;
          v430 = v446;
        }

        else
        {
          v430 = v446 ^ v445 ^ (v444 << 17);
        }

        if (v434 == v435)
        {
          v431 = v447;
        }

        else
        {
          v431 = v453;
        }

        *&v455 = vmul_n_f32(*v426.f32, v454);
        DWORD2(v455) = vmuls_lane_f32(v454, v426, 2);
        if (v434 == v435)
        {
          v432 = v444;
        }

        else
        {
          v432 = v446 ^ v445 ^ v444;
        }

        if (v434 == v435)
        {
          v433 = v445;
        }

        else
        {
          v433 = v447 ^ v444 ^ v445;
        }

        HIDWORD(v455) = 0;
        *v437->f32 = v455;
        v437 += 2;
        --v423;
      }

      while (v423);
      *(a3 + 8) = v433;
      *(a3 + 16) = v432;
      *(a3 + 24) = v430;
      *(a3 + 32) = v431;
      v8 = v663;
      v11 = v655;
      v10 = v645;
      v285 = v666;
    }
  }

  if (v284 >= 2 && v284 != 255 && !(v282 ^ 1 | v283))
  {
    v468 = sub_1AF9C5E88(&type metadata for Orientation, &off_1F252C8A8);
    if ((v470 & 1) == 0)
    {
      v471 = v690 - v10;
      if (v690 != v10)
      {
        _S0 = v689.i32[3];
        v473 = vdupq_laneq_s32(v689, 3);
        v474 = vextq_s8(vuzp1q_s32(v689, v689), v689, 0xCuLL);
        v475 = vnegq_f32(v689);
        v476 = (v468 + 16 * v10);
        v477 = &v674[2 * v10];
        v469.i32[0] = 1.0;
        v478.i64[0] = 0x8000000080000000;
        v478.i64[1] = 0x8000000080000000;
        do
        {
          v484 = *v477;
          v485 = vmulq_f32(v484, v484);
          v485.f32[0] = v485.f32[2] + vaddv_f32(*v485.f32);
          v486 = vdupq_lane_s32(*v485.f32, 0);
          v486.i32[3] = 0;
          v487 = vrsqrteq_f32(v486);
          v488 = vmulq_f32(v487, vrsqrtsq_f32(v486, vmulq_f32(v487, v487)));
          v489 = vmulq_f32(v488, v488);
          v490 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v485.f32[0] != 0.0)), 0x1FuLL));
          v490.i32[3] = 0;
          v491 = vbslq_s8(vcltzq_s32(v490), vmulq_f32(vmulq_f32(v488, vrsqrtsq_f32(v486, v489)), v484), v484);
          v489.i32[0] = v491.i32[2];
          v490.i32[0] = vbslq_s8(v478, v469, v489).i32[0];
          v486.f32[0] = v491.f32[1] / (fabsf(v491.f32[2]) + 1.0);
          v492 = vmuls_lane_f32(v486.f32[0], *v491.f32, 1);
          v493 = -(v491.f32[0] * v486.f32[0]);
          v494 = v491.f32[2] + (*v490.i32 * v492);
          v495 = *v490.i32 * v493;
          v496 = 1.0 - v492;
          v497 = vmuls_lane_f32(-*v490.i32, *v491.f32, 1);
          v498 = v491.f32[2] + (v494 + v496);
          if (v498 > 0.0)
          {
            v479 = sqrtf(v498 + 1.0);
            v480.f32[0] = v497 - v491.f32[1];
            v480.i32[1] = vaddq_f32(v491, v491).u32[0];
            v480.f32[2] = v495 - v493;
            v480.f32[3] = v479 * v479;
            _Q7 = vmulq_n_f32(v480, 0.5 / v479);
          }

          else if (v494 < v496 || v494 < v491.f32[2])
          {
            if (v496 <= v491.f32[2])
            {
              v504 = sqrtf(((v491.f32[2] + 1.0) - v494) - v496);
              v491.i32[0] = vsubq_f32(v491, v491).u32[0];
              v491.f32[1] = v491.f32[1] + v497;
              v491.f32[2] = v504 * v504;
              v491.f32[3] = v495 - v493;
              _Q7 = vmulq_n_f32(v491, 0.5 / v504);
            }

            else
            {
              v500 = sqrtf(((v496 + 1.0) - v494) - v491.f32[2]);
              v501.f32[0] = v493 + v495;
              v501.f32[1] = v500 * v500;
              *&v501.u32[2] = vrev64_s32(vadd_f32(*v491.f32, __PAIR64__(LODWORD(v497), v491.u32[0])));
              _Q7 = vmulq_n_f32(v501, 0.5 / v500);
            }
          }

          else
          {
            v502 = sqrtf(((v494 + 1.0) - v496) - v491.f32[2]);
            v503.f32[0] = v502 * v502;
            v503.f32[1] = v493 + v495;
            *&v503.u32[2] = vsub_f32(__PAIR64__(LODWORD(v497), v491.u32[0]), *v491.f32);
            _Q7 = vmulq_n_f32(v503, 0.5 / v502);
          }

          _Q17 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q7, _Q7), _Q7, 0xCuLL), v475), _Q7, v474);
          v483 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v689, _Q7, 3), v473, _Q7), vextq_s8(vuzp1q_s32(_Q17, _Q17), _Q17, 0xCuLL));
          __asm { FMLA            S17, S0, V7.S[3] }

          v483.i32[3] = _Q17.i32[0];
          *v476++ = v483;
          ++v477;
          --v471;
        }

        while (v471);
      }
    }
  }

  v505 = *(a3 + 96);
  sub_1AFB93E58();
  v507 = v506;
  v508 = sub_1AF705C38(v675[1], v675);
  v509 = sub_1AF9C5E88(&type metadata for Velocity, &off_1F2530AF8);
  v511 = v510;
  if ((v733 & 1) != 0 || v505 <= v507 || (xa = v732.columns[0], v695 = v732.columns[1], v703 = v732.columns[2], v712 = v732.columns[3], sub_1AFB9402C() == 2))
  {
    v512 = v690 - v10;
    if (v690 != v10)
    {
      v514 = vmulq_f32(v689, xmmword_1AFE21390);
      v515 = vnegq_f32(v514);
      v516 = vtrn2q_s32(v514, vtrn1q_s32(v514, v515));
      v517 = vextq_s8(v516, v516, 8uLL);
      v518 = vextq_s8(v514, v515, 8uLL);
      v519 = vrev64q_s32(v514);
      v519.i32[0] = v515.i32[1];
      v519.i32[3] = v515.i32[2];
      v520 = vdupq_lane_s32(*v689.f32, 0);
      v521 = vdupq_laneq_s32(v689, 2);
      v522 = (v509 + 16 * v10);
      v523 = &v674[2 * v10];
      v524 = (v508 + 16 * v10);
      v525 = &v11[2 * v10];
      do
      {
        v526 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v673, v682, *v525, 2), v686, *v525->f32, 1), v678, COERCE_FLOAT(*v525));
        *&v527 = vadd_f32(*v524, *v526.f32);
        *(&v527 + 2) = COERCE_FLOAT(*&v524[1]) + v526.f32[2];
        HIDWORD(v527) = 1.0;
        *v524->f32 = v527;
        if ((v511 & 1) == 0)
        {
          v528 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v518, *v523, 1), v517, COERCE_FLOAT(*v523->f32)), v519, *v523->f32, 2);
          v529 = vnegq_f32(v528);
          v530 = vtrn2q_s32(v528, vtrn1q_s32(v528, v529));
          v531 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v528, v529, 8uLL), *v689.f32, 1), vextq_s8(v530, v530, 8uLL), v520);
          v532 = vrev64q_s32(v528);
          v532.i32[0] = v529.i32[1];
          v532.i32[3] = v529.i32[2];
          v533 = vaddq_f32(*v522, vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v528, v689, 3), v532, v521), v531));
          v533.i32[3] = 0;
          *v522 = v533;
        }

        ++v522;
        v523 += 2;
        v524 += 2;
        ++v525;
        --v512;
      }

      while (v512);
    }
  }

  else
  {
    if (v642)
    {

      v534.f32[0] = sub_1AF5AF890(v652);
      v704 = v535;
      v713 = v534;
      v696 = v536;
      xd = v537;

      v539 = xd;
      v541 = v696;
      v540 = v704;
      v542 = v713;
    }

    else
    {
      v543 = *(v659 + 32);

      sub_1AFB95040(v543, &v747);
      v664 = v747.columns[1];
      v667 = v747.columns[0];
      v658 = v747.columns[3];
      v660 = v747.columns[2];

      if (v748)
      {
        v544 = -1;
      }

      else
      {
        v544 = 0;
      }

      v545 = vdupq_n_s32(v544);
      v546 = vbslq_s8(v545, xmmword_1AFE20150, v667);
      v547 = vbslq_s8(v545, xmmword_1AFE20160, v664);
      v548 = vbslq_s8(v545, xmmword_1AFE20180, v660);
      v549 = vbslq_s8(v545, xmmword_1AFE201A0, v658);
      v542 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v546, xa.f32[0]), v547, *xa.f32, 1), v548, xa, 2), v549, xa, 3);
      v540 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v546, v695.f32[0]), v547, *v695.f32, 1), v548, v695, 2), v549, v695, 3);
      v541 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v546, v703.f32[0]), v547, *v703.f32, 1), v548, v703, 2), v549, v703, 3);
      v538 = v712;
      v539 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v546, v712.f32[0]), v547, *v712.f32, 1), v548, v712, 2), v549, v712, 3);
    }

    v551 = v682;
    v550 = v686;
    v552 = v673;
    v553 = v678;
    v554 = v689;
    if (*(v285 + 97))
    {
      v705 = v540;
      v714 = v542;
      v697 = v541;
      xb = v539;
      if (*(v285 + 97) == 1)
      {
        v555 = v690 - v10;
        if (v690 != v10)
        {
          v665 = v8;
          v556 = v11;
          v557 = *(a3 + 24);
          v558 = *(a3 + 32);
          v560 = *(a3 + 8);
          v559 = *(a3 + 16);
          v641 = a3;
          v561 = (v509 + 16 * v10);
          v562 = &v674[2 * v10];
          v563 = (v508 + 16 * v10);
          v564 = &v556[2 * v10];
          v565 = 1.0;
          do
          {
            v569 = vcvts_n_f32_u64((9 * ((((5 * v559) >> 32) >> 25) | (640 * v559))) & 0xFFFFFF, 0x18uLL);
            v570 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v539, v541, *v564, 2), v540, *v564->f32, 1), v542, COERCE_FLOAT(*v564));
            v571 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v552, v551, *v564, 2), v550, *v564->f32, 1), v553, COERCE_FLOAT(*v564)), v570);
            v572 = v570.f32[2] + vmuls_lane_f32(v569, v571, 2);
            *&v573 = vadd_f32(*v563, vadd_f32(*v570.f32, vmul_n_f32(*v571.f32, v569)));
            *(&v573 + 1) = __PAIR64__(LODWORD(v565), COERCE_FLOAT(*&v563[1]) + v572);
            *v563->f32 = v573;
            if ((v511 & 1) == 0)
            {
              *&v574 = sub_1AF6AF448(*v562, v554);
              v565 = 1.0;
              v539 = xb;
              v552 = v673;
              v541 = v697;
              v540 = v705;
              v542 = v714;
              v550 = v686;
              v554 = v689;
              v553 = v678;
              v551 = v682;
              HIDWORD(v574) = 0;
              *v561 = v574;
            }

            v566 = v559 << 17;
            v567 = v560 ^ v557;
            v568 = v559 ^ v558;
            v559 ^= v560 ^ v557;
            v560 ^= v568;
            v558 = __ROR8__(v568, 19);
            v557 = v567 ^ v566;
            ++v561;
            ++v562;
            v563 += 2;
            ++v564;
            --v555;
          }

          while (v555);
          v641[1] = v560;
          v641[2] = v559;
          v641[3] = v557;
          v641[4] = v558;
          v8 = v665;
        }
      }

      else
      {
        v586 = v675[5];
        if (v586)
        {
          v587 = 1.0 / v586;
        }

        else
        {
          v587 = 1.0;
        }

        v588 = v690 - v10;
        if (v690 != v10)
        {
          v538.f32[0] = v587 * v675[3];
          v589 = 2 * v10;
          v590 = (v509 + 16 * v10);
          v591 = &v674[2 * v10];
          v592 = (v508 + 16 * v10);
          v593 = &v11[v589];
          v594 = 1.0;
          do
          {
            v595 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v539, v541, *v593, 2), v540, *v593->f32, 1), v542, COERCE_FLOAT(*v593));
            v596 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v552, v551, *v593, 2), v550, *v593->f32, 1), v553, COERCE_FLOAT(*v593)), v595);
            *v595.f32 = vadd_f32(*v592, vadd_f32(*v595.f32, vmul_n_f32(*v596.f32, v538.f32[0])));
            v595.i64[1] = __PAIR64__(LODWORD(v594), COERCE_FLOAT(*&v592[1]) + (v595.f32[2] + vmuls_lane_f32(v538.f32[0], v596, 2)));
            *v592->f32 = v595;
            if ((v511 & 1) == 0)
            {
              v691 = v538;
              *&v597 = sub_1AF6AF448(*v591, v554);
              v594 = 1.0;
              v538 = v691;
              v541 = v697;
              v539 = xb;
              v552 = v673;
              v540 = v705;
              v542 = v714;
              v550 = v686;
              v554 = v689;
              v553 = v678;
              v551 = v682;
              HIDWORD(v597) = 0;
              *v590 = v597;
            }

            ++v590;
            v538.f32[0] = v587 + v538.f32[0];
            ++v591;
            v592 += 2;
            ++v593;
            --v588;
          }

          while (v588);
        }
      }
    }

    else
    {
      v575 = v690 - v10;
      if (v690 != v10)
      {
        v576 = 2 * v10;
        v577 = (v509 + 16 * v10);
        v578 = &v674[2 * v10];
        v579 = (v508 + 16 * v10);
        v580 = &v11[v576];
        v581 = 1.0;
        do
        {
          v582 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v552, v551, *v580, 2), v550, *v580->f32, 1), v553, COERCE_FLOAT(*v580));
          *&v583 = vadd_f32(*v579, *v582.f32);
          *(&v583 + 2) = COERCE_FLOAT(*&v579[1]) + v582.f32[2];
          *(&v583 + 3) = v581;
          *v579->f32 = v583;
          if ((v511 & 1) == 0)
          {
            *v584.f32 = sub_1AF6AF448(*v578, v554);
            v581 = 1.0;
            v550 = v686;
            v554 = v689;
            v553 = v678;
            v551 = v682;
            v552 = v673;
            v585 = vaddq_f32(v584, *v577);
            v585.i32[3] = 0;
            *v577 = v585;
          }

          ++v577;
          ++v578;
          v579 += 2;
          ++v580;
          --v575;
        }

        while (v575);
      }
    }
  }

  ecs_stack_allocator_pop_snapshot(v8);
}