uint64_t (*UInt64.SIMD2Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x5651uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return UInt64.SIMD2Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt64.SIMD2Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xB239uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return UInt64.SIMD2Storage.subscript.modify;
}

uint64_t (*UInt64.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x9179uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return UInt64.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt64.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x8FB6uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return UInt64.SIMD4Storage.subscript.modify;
}

uint64_t (*UInt64.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x2FC3uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return UInt64.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt64.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x51CAuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return UInt64.SIMD8Storage.subscript.modify;
}

uint64_t (*UInt64.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x3B3BuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return UInt64.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt64.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x8C3AuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return UInt64.SIMD16Storage.subscript.modify;
}

uint64_t (*UInt64.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x8406uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return UInt64.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt64.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0xF1D3uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return UInt64.SIMD32Storage.subscript.modify;
}

uint64_t (*UInt64.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0x9500uLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return UInt64.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt64.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0x666EuLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return UInt64.SIMD64Storage.subscript.modify;
}

uint64_t (*Int64.SIMD2Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x2B3EuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return UInt64.SIMD2Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int64.SIMD2Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x8A61uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return UInt64.SIMD2Storage.subscript.modify;
}

uint64_t (*Int64.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xCFF1uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return UInt64.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int64.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xE46DuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return UInt64.SIMD4Storage.subscript.modify;
}

uint64_t (*Int64.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xAE64uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return UInt64.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int64.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xB8D6uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return UInt64.SIMD8Storage.subscript.modify;
}

uint64_t (*Int64.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0xDE3DuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return UInt64.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int64.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x5C6CuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return UInt64.SIMD16Storage.subscript.modify;
}

uint64_t (*Int64.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x7F39uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return UInt64.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int64.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x1F5DuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return UInt64.SIMD32Storage.subscript.modify;
}

uint64_t (*Int64.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0xB1CAuLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return UInt64.SIMD64Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Double.SIMD64Storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[30] = 0u;
  a1[31] = 0u;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int64.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0xD6AFuLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return UInt64.SIMD64Storage.subscript.modify;
}

uint64_t (*UInt.SIMD2Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x48CAuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return UInt64.SIMD2Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt.SIMD2Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x4E76uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return UInt64.SIMD2Storage.subscript.modify;
}

uint64_t (*UInt.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x7EECuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return UInt64.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x6B70uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return UInt64.SIMD4Storage.subscript.modify;
}

uint64_t (*UInt.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x93C7uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return UInt64.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xE8DCuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return UInt64.SIMD8Storage.subscript.modify;
}

uint64_t (*UInt.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x9BA7uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return UInt64.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x9FF2uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return UInt64.SIMD16Storage.subscript.modify;
}

uint64_t (*UInt.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x206AuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return UInt64.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0xE6DCuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return UInt64.SIMD32Storage.subscript.modify;
}

uint64_t (*UInt.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0x81AEuLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return UInt64.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance UInt.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0xF275uLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return UInt64.SIMD64Storage.subscript.modify;
}

uint64_t (*Int.SIMD2Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x4301uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return UInt64.SIMD2Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD2Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xE682uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD2Storage;
}

void UInt64.SIMD2Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = (&v5 & 0xFFFFFFFFFFFFFFF7 | (8 * (v1[3] & 1)));
  v4 = v1[2];
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

uint64_t (*Int.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x84A0uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return UInt64.SIMD4Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x1C54uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD4Storage;
}

void UInt64.SIMD4Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 48);
  *(v4 + (*(v1 + 40) & 3)) = *(v1 + 32);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Int.SIMD8Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

uint64_t Int.SIMD8Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 7));
}

uint64_t (*Int.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x1B86uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return UInt64.SIMD8Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0xB91DuLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD8Storage;
}

__n128 UInt64.SIMD8Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 10);
  v6 = *(v1 + 18) & 7;
  v7 = *(v1 + 8);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

__n128 Int.SIMD16Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int.SIMD16Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v8;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int.SIMD16Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*Int.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x10AAuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return UInt64.SIMD16Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0xBF58uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD16Storage;
}

__n128 UInt64.SIMD16Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 18);
  v10 = *(v1 + 34) & 0xF;
  v11 = *(v1 + 16);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

__n128 Int.SIMD32Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  v15 = *(v1 + 208);
  v16 = *(v1 + 240);
  *(a1 + 224) = *(v1 + 224);
  *(a1 + 240) = v16;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int.SIMD32Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 240);
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = v16;
  *(v1 + 192) = v14;
  *(v1 + 208) = v15;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  *(v1 + 128) = v10;
  *(v1 + 144) = v11;
  *(v1 + 96) = v8;
  *(v1 + 112) = v9;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int.SIMD32Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*Int.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0xF39FuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return UInt64.SIMD32Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x2D3AuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD32Storage;
}

void UInt64.SIMD32Storage.subscript.modify(void **a1)
{
  v2 = *a1;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = v2[10];
  v14 = v2[11];
  v15 = v2[12];
  v16 = v2[13];
  v17 = v2[15];
  v18 = *(v2 + 34);
  v19 = *(v2 + 66) & 0x1F;
  v20 = *(v2 + 32);
  v50 = v2[14];
  v51 = v17;
  v48 = v15;
  v49 = v16;
  v46 = v13;
  v47 = v14;
  v44 = v11;
  v45 = v12;
  v42 = v9;
  v43 = v10;
  v40 = v7;
  v41 = v8;
  v38 = v5;
  v39 = v6;
  v36 = v3;
  v37 = v4;
  *(&v36 + v19) = v20;
  v22 = v36;
  v21 = v37;
  v24 = v38;
  v23 = v39;
  v26 = v40;
  v25 = v41;
  v28 = v42;
  v27 = v43;
  v30 = v44;
  v29 = v45;
  v32 = v46;
  v31 = v47;
  v34 = v48;
  v33 = v49;
  v35 = v51;
  v18[14] = v50;
  v18[15] = v35;
  v18[12] = v34;
  v18[13] = v33;
  v18[10] = v32;
  v18[11] = v31;
  v18[8] = v30;
  v18[9] = v29;
  v18[6] = v28;
  v18[7] = v27;
  v18[4] = v26;
  v18[5] = v25;
  v18[2] = v24;
  v18[3] = v23;
  *v18 = v22;
  v18[1] = v21;

  free(v2);
}

__n128 Int.SIMD64Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  v15 = *(v1 + 208);
  v16 = *(v1 + 224);
  v17 = *(v1 + 240);
  v18 = *(v1 + 256);
  v19 = *(v1 + 272);
  v20 = *(v1 + 288);
  v21 = *(v1 + 304);
  v22 = *(v1 + 320);
  v23 = *(v1 + 336);
  v24 = *(v1 + 352);
  v25 = *(v1 + 368);
  v26 = *(v1 + 384);
  v27 = *(v1 + 400);
  v28 = *(v1 + 416);
  v29 = *(v1 + 432);
  v30 = *(v1 + 448);
  v31 = *(v1 + 464);
  v32 = *(v1 + 496);
  *(a1 + 480) = *(v1 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Int.SIMD64Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 224);
  v17 = *(a1 + 240);
  v18 = *(a1 + 256);
  v19 = *(a1 + 272);
  v20 = *(a1 + 288);
  v21 = *(a1 + 304);
  v22 = *(a1 + 320);
  v23 = *(a1 + 336);
  v24 = *(a1 + 352);
  v25 = *(a1 + 368);
  v26 = *(a1 + 384);
  v27 = *(a1 + 400);
  v28 = *(a1 + 416);
  v29 = *(a1 + 432);
  v30 = *(a1 + 448);
  v31 = *(a1 + 464);
  v32 = *(a1 + 496);
  *(v1 + 480) = *(a1 + 480);
  *(v1 + 496) = v32;
  *(v1 + 448) = v30;
  *(v1 + 464) = v31;
  *(v1 + 416) = v28;
  *(v1 + 432) = v29;
  *(v1 + 384) = v26;
  *(v1 + 400) = v27;
  *(v1 + 352) = v24;
  *(v1 + 368) = v25;
  *(v1 + 320) = v22;
  *(v1 + 336) = v23;
  *(v1 + 288) = v20;
  *(v1 + 304) = v21;
  *(v1 + 256) = v18;
  *(v1 + 272) = v19;
  *(v1 + 224) = v16;
  *(v1 + 240) = v17;
  *(v1 + 192) = v14;
  *(v1 + 208) = v15;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  *(v1 + 128) = v10;
  *(v1 + 144) = v11;
  *(v1 + 96) = v8;
  *(v1 + 112) = v9;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Int.SIMD64Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[30] = 0u;
  a1[31] = 0u;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t (*Int.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0x9F19uLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return UInt64.SIMD64Storage.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0xA27AuLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Int.SIMD64Storage;
}

void UInt64.SIMD64Storage.subscript.modify(void **a1)
{
  v2 = *a1;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = v2[10];
  v14 = v2[11];
  v15 = v2[12];
  v16 = v2[13];
  v17 = v2[14];
  v18 = v2[15];
  v19 = v2[16];
  v20 = v2[17];
  v21 = v2[18];
  v22 = v2[19];
  v23 = v2[20];
  v24 = v2[21];
  v25 = v2[22];
  v26 = v2[23];
  v27 = v2[24];
  v28 = v2[25];
  v29 = v2[26];
  v30 = v2[27];
  v31 = v2[28];
  v32 = v2[29];
  v33 = v2[31];
  v34 = *(v2 + 66);
  v35 = *(v2 + 130) & 0x3F;
  v36 = *(v2 + 64);
  v98 = v2[30];
  v99 = v33;
  v96 = v31;
  v97 = v32;
  v94 = v29;
  v95 = v30;
  v92 = v27;
  v93 = v28;
  v90 = v25;
  v91 = v26;
  v88 = v23;
  v89 = v24;
  v86 = v21;
  v87 = v22;
  v84 = v19;
  v85 = v20;
  v82 = v17;
  v83 = v18;
  v80 = v15;
  v81 = v16;
  v78 = v13;
  v79 = v14;
  v76 = v11;
  v77 = v12;
  v74 = v9;
  v75 = v10;
  v72 = v7;
  v73 = v8;
  v70 = v5;
  v71 = v6;
  v68 = v3;
  v69 = v4;
  *(&v68 + v35) = v36;
  v37 = v68;
  v38 = v69;
  v39 = v70;
  v40 = v71;
  v41 = v72;
  v42 = v73;
  v43 = v74;
  v44 = v75;
  v45 = v76;
  v46 = v77;
  v47 = v78;
  v48 = v79;
  v49 = v80;
  v50 = v81;
  v51 = v82;
  v52 = v83;
  v53 = v84;
  v54 = v85;
  v55 = v86;
  v56 = v87;
  v57 = v88;
  v58 = v89;
  v59 = v90;
  v60 = v91;
  v61 = v92;
  v62 = v93;
  v63 = v94;
  v64 = v95;
  v65 = v96;
  v66 = v97;
  v67 = v99;
  v34[30] = v98;
  v34[31] = v67;
  v34[28] = v65;
  v34[29] = v66;
  v34[26] = v63;
  v34[27] = v64;
  v34[24] = v61;
  v34[25] = v62;
  v34[22] = v59;
  v34[23] = v60;
  v34[20] = v57;
  v34[21] = v58;
  v34[18] = v55;
  v34[19] = v56;
  v34[16] = v53;
  v34[17] = v54;
  v34[14] = v51;
  v34[15] = v52;
  v34[12] = v49;
  v34[13] = v50;
  v34[10] = v47;
  v34[11] = v48;
  v34[8] = v45;
  v34[9] = v46;
  v34[6] = v43;
  v34[7] = v44;
  v34[4] = v41;
  v34[5] = v42;
  v34[2] = v39;
  v34[3] = v40;
  *v34 = v37;
  v34[1] = v38;

  free(v2);
}

__n128 Float16.SIMD2Storage._value.setter(__n128 result, __n128 a2)
{
  result.n128_u16[1] = a2.n128_u16[0];
  *v2 = result.n128_u32[0];
  return result;
}

__int16 Float16.SIMD2Storage.subscript.getter@<H0>(char a1@<W0>, double a2@<D0>, __n128 a3@<Q1>)
{
  WORD1(a2) = a3.n128_u16[0];
  v4 = a2;
  return *(&v4 & 0xFFFFFFFFFFFFFFF9 | (2 * (a1 & 3)));
}

__int16 key path getter for Float16.SIMD2Storage.subscript(_:) : Float16.SIMD2Storage@<H0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  result = *(a1 + 2 * (*a2 & 1));
  *a3 = result;
  return result;
}

__int16 key path setter for Float16.SIMD2Storage.subscript(_:) : Float16.SIMD2Storage@<H0>(__int16 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>)
{
  result = *a1;
  *(a2 + 2 * (*a3 & 1)) = *a1;
  return result;
}

uint64_t (*Float16.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2, double a3))()
{
  *a1 = a2;
  *(a1 + 8) = v3;
  v4 = *v3;
  *(a1 + 16) = *v3;
  LODWORD(a3) = v4;
  v6 = a3;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return Float16.SIMD2Storage.subscript.modify;
}

__int16 protocol witness for SIMDStorage.subscript.getter in conformance Float16.SIMD2Storage@<H0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *(v2 + 2 * (a1 & 1));
  *a2 = result;
  return result;
}

__int16 protocol witness for SIMDStorage.subscript.setter in conformance Float16.SIMD2Storage@<H0>(__int16 *a1@<X0>, char a2@<W1>)
{
  result = *a1;
  *(v2 + 2 * (a2 & 1)) = *a1;
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD2Storage(uint64_t a1, uint64_t a2, double a3))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v3;
  v4 = *v3;
  *(a1 + 16) = *v3;
  LODWORD(a3) = v4;
  v6 = a3;
  *(a1 + 20) = *(&v6 & 0xFFFFFFFFFFFFFFF9 | (2 * (a2 & 3)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD2Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD2Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a1 & 3)));
  v3 = *(a1 + 20);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = LODWORD(v5);
  return result;
}

__int16 key path getter for Float16.SIMD4Storage.subscript(_:) : Float16.SIMD4Storage@<H0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  result = *(a1 + 2 * (*a2 & 3));
  *a3 = result;
  return result;
}

__int16 key path setter for Float16.SIMD4Storage.subscript(_:) : Float16.SIMD4Storage@<H0>(__int16 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>)
{
  result = *a1;
  *(a2 + 2 * (*a3 & 3)) = *a1;
  return result;
}

uint64_t (*Float16.SIMD4Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return Float16.SIMD4Storage.subscript.modify;
}

double protocol witness for SIMDStorage.init() in conformance Float16.SIMD4Storage@<D0>(void *a1@<X8>)
{
  result = 0.0;
  *a1 = 0;
  return result;
}

__int16 protocol witness for SIMDStorage.subscript.getter in conformance Float16.SIMD4Storage@<H0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *(v2 + 2 * (a1 & 3));
  *a2 = result;
  return result;
}

__int16 protocol witness for SIMDStorage.subscript.setter in conformance Float16.SIMD4Storage@<H0>(__int16 *a1@<X0>, char a2@<W1>)
{
  result = *a1;
  *(v2 + 2 * (a2 & 3)) = *a1;
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD4Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 2 * (a2 & 3));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD4Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD4Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 & 0xFFFFFFFFFFFFFFF9 | (2 * (*a1 & 3)));
  v3 = *(a1 + 24);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = v5;
  return result;
}

__int16 key path getter for Float16.SIMD8Storage.subscript(_:) : Float16.SIMD8Storage@<H0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  result = *(a1 + 2 * (*a2 & 7));
  *a3 = result;
  return result;
}

__int16 key path setter for Float16.SIMD8Storage.subscript(_:) : Float16.SIMD8Storage@<H0>(__int16 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>)
{
  result = *a1;
  *(a2 + 2 * (*a3 & 7)) = *a1;
  return result;
}

uint64_t (*Float16.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xFC2FuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return Float16.SIMD8Storage.subscript.modify;
}

__int16 protocol witness for SIMDStorage.subscript.getter in conformance Float16.SIMD8Storage@<H0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *(v2 + 2 * (a1 & 7));
  *a2 = result;
  return result;
}

__int16 protocol witness for SIMDStorage.subscript.setter in conformance Float16.SIMD8Storage@<H0>(__int16 *a1@<X0>, char a2@<W1>)
{
  result = *a1;
  *(v2 + 2 * (a2 & 7)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x8A03uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 16) = *(&v8 & 0xFFFFFFFFFFFFFFF1 | (2 * (a2 & 7)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD8Storage;
}

void Float16.SIMD8Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = (&v5 & 0xFFFFFFFFFFFFFFF1 | (2 * (v1[2] & 7)));
  v4 = *(v1 + 16);
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

__int16 key path getter for Float16.SIMD16Storage.subscript(_:) : Float16.SIMD16Storage@<H0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  result = *(a1 + 2 * (*a2 & 0xFLL));
  *a3 = result;
  return result;
}

__int16 key path setter for Float16.SIMD16Storage.subscript(_:) : Float16.SIMD16Storage@<H0>(__int16 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>)
{
  result = *a1;
  *(a2 + 2 * (*a3 & 0xFLL)) = *a1;
  return result;
}

uint64_t (*Float16.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0xEB18uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return Float16.SIMD16Storage.subscript.modify;
}

__int16 protocol witness for SIMDStorage.subscript.getter in conformance Float16.SIMD16Storage@<H0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *(v2 + 2 * (a1 & 0xF));
  *a2 = result;
  return result;
}

__int16 protocol witness for SIMDStorage.subscript.setter in conformance Float16.SIMD16Storage@<H0>(__int16 *a1@<X0>, char a2@<W1>)
{
  result = *a1;
  *(v2 + 2 * (a2 & 0xF)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x7188uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 24) = *(v9 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD16Storage;
}

void Float16.SIMD16Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  *(v4 + (*(v1 + 32) & 0xF)) = *(v1 + 48);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Float16.SIMD32Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

__int16 Float16.SIMD32Storage.subscript.getter@<H0>(char a1@<W0>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 0x1F));
}

__int16 key path getter for Float16.SIMD32Storage.subscript(_:) : Float16.SIMD32Storage@<H0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  result = *(a1 + 2 * (*a2 & 0x1FLL));
  *a3 = result;
  return result;
}

__int16 key path setter for Float16.SIMD32Storage.subscript(_:) : Float16.SIMD32Storage@<H0>(__int16 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>)
{
  result = *a1;
  *(a2 + 2 * (*a3 & 0x1FLL)) = *a1;
  return result;
}

uint64_t (*Float16.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x5B35uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return Float16.SIMD32Storage.subscript.modify;
}

__int16 protocol witness for SIMDStorage.subscript.getter in conformance Float16.SIMD32Storage@<H0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *(v2 + 2 * (a1 & 0x1F));
  *a2 = result;
  return result;
}

__int16 protocol witness for SIMDStorage.subscript.setter in conformance Float16.SIMD32Storage@<H0>(__int16 *a1@<X0>, char a2@<W1>)
{
  result = *a1;
  *(v2 + 2 * (a2 & 0x1F)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x74A9uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 40) = *(v11 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD32Storage;
}

__n128 Float16.SIMD32Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 9);
  v6 = v1[4] & 0x1F;
  v7 = *(v1 + 40);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

__n128 Float16.SIMD64Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Float16.SIMD64Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v8;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Float16.SIMD64Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__int16 key path getter for Float16.SIMD64Storage.subscript(_:) : Float16.SIMD64Storage@<H0>(uint64_t a1@<X0>, void *a2@<X1>, _WORD *a3@<X8>)
{
  result = *(a1 + 2 * (*a2 & 0x3FLL));
  *a3 = result;
  return result;
}

__int16 key path setter for Float16.SIMD64Storage.subscript(_:) : Float16.SIMD64Storage@<H0>(__int16 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>)
{
  result = *a1;
  *(a2 + 2 * (*a3 & 0x3FLL)) = *a1;
  return result;
}

uint64_t (*Float16.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x8B45uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return Float16.SIMD64Storage.subscript.modify;
}

__int16 protocol witness for SIMDStorage.subscript.getter in conformance Float16.SIMD64Storage@<H0>(char a1@<W0>, _WORD *a2@<X8>)
{
  result = *(v2 + 2 * (a1 & 0x3F));
  *a2 = result;
  return result;
}

__int16 protocol witness for SIMDStorage.subscript.setter in conformance Float16.SIMD64Storage@<H0>(__int16 *a1@<X0>, char a2@<W1>)
{
  result = *a1;
  *(v2 + 2 * (a2 & 0x3F)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0xBD27uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 72) = *(v15 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float16.SIMD64Storage;
}

__n128 Float16.SIMD64Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 17);
  v10 = v1[8] & 0x3F;
  v11 = *(v1 + 72);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

float key path getter for Float.SIMD2Storage.subscript(_:) : Float.SIMD2Storage@<S0>(uint64_t a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  result = *(a1 + 4 * (*a2 & 1));
  *a3 = result;
  return result;
}

float key path setter for Float.SIMD2Storage.subscript(_:) : Float.SIMD2Storage(float *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 4 * (*a3 & 1)) = *a1;
  return result;
}

uint64_t (*Float.SIMD2Storage.subscript.modify(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return Float.SIMD2Storage.subscript.modify;
}

float protocol witness for SIMDStorage.subscript.getter in conformance Float.SIMD2Storage@<S0>(char a1@<W0>, float *a2@<X8>)
{
  result = *(v2 + 4 * (a1 & 1));
  *a2 = result;
  return result;
}

float protocol witness for SIMDStorage.subscript.setter in conformance Float.SIMD2Storage(float *a1, char a2)
{
  result = *a1;
  *(v2 + 4 * (a2 & 1)) = *a1;
  return result;
}

double (*protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD2Storage(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = *v2;
  *(a1 + 24) = *(a1 + 16 + 4 * (a2 & 1));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD2Storage;
}

double protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD2Storage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = (&v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * (*a1 & 1)));
  v3 = *(a1 + 24);
  v5 = *(a1 + 16);
  *v2 = v3;
  result = v5;
  *v1 = v5;
  return result;
}

float key path getter for Float.SIMD4Storage.subscript(_:) : Float.SIMD4Storage@<S0>(uint64_t a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  result = *(a1 + 4 * (*a2 & 3));
  *a3 = result;
  return result;
}

float key path setter for Float.SIMD4Storage.subscript(_:) : Float.SIMD4Storage(float *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 4 * (*a3 & 3)) = *a1;
  return result;
}

uint64_t (*Float.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x847EuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return Float.SIMD4Storage.subscript.modify;
}

float protocol witness for SIMDStorage.subscript.getter in conformance Float.SIMD4Storage@<S0>(char a1@<W0>, float *a2@<X8>)
{
  result = *(v2 + 4 * (a1 & 3));
  *a2 = result;
  return result;
}

float protocol witness for SIMDStorage.subscript.setter in conformance Float.SIMD4Storage(float *a1, char a2)
{
  result = *a1;
  *(v2 + 4 * (a2 & 3)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7537uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[2] = a2;
  v5[3] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  *(v5 + 8) = *(&v8 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD4Storage;
}

void Float.SIMD4Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[3];
  v3 = (&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1[2] & 3)));
  v4 = *(v1 + 8);
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

float key path getter for Float.SIMD8Storage.subscript(_:) : Float.SIMD8Storage@<S0>(uint64_t a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  result = *(a1 + 4 * (*a2 & 7));
  *a3 = result;
  return result;
}

float key path setter for Float.SIMD8Storage.subscript(_:) : Float.SIMD8Storage(float *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 4 * (*a3 & 7)) = *a1;
  return result;
}

uint64_t (*Float.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x6C67uLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return Float.SIMD8Storage.subscript.modify;
}

float protocol witness for SIMDStorage.subscript.getter in conformance Float.SIMD8Storage@<S0>(char a1@<W0>, float *a2@<X8>)
{
  result = *(v2 + 4 * (a1 & 7));
  *a2 = result;
  return result;
}

float protocol witness for SIMDStorage.subscript.setter in conformance Float.SIMD8Storage(float *a1, char a2)
{
  result = *a1;
  *(v2 + 4 * (a2 & 7)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x9F6AuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  *(v5 + 12) = *(v9 + (a2 & 7));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD8Storage;
}

void Float.SIMD8Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 40);
  *(v4 + (*(v1 + 32) & 7)) = *(v1 + 48);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Float.SIMD16Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

float Float.SIMD16Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 0xF));
}

float key path getter for Float.SIMD16Storage.subscript(_:) : Float.SIMD16Storage@<S0>(uint64_t a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  result = *(a1 + 4 * (*a2 & 0xFLL));
  *a3 = result;
  return result;
}

float key path setter for Float.SIMD16Storage.subscript(_:) : Float.SIMD16Storage(float *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 4 * (*a3 & 0xFLL)) = *a1;
  return result;
}

uint64_t (*Float.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x8DA6uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return Float.SIMD16Storage.subscript.modify;
}

float protocol witness for SIMDStorage.subscript.getter in conformance Float.SIMD16Storage@<S0>(char a1@<W0>, float *a2@<X8>)
{
  result = *(v2 + 4 * (a1 & 0xF));
  *a2 = result;
  return result;
}

float protocol witness for SIMDStorage.subscript.setter in conformance Float.SIMD16Storage(float *a1, char a2)
{
  result = *a1;
  *(v2 + 4 * (a2 & 0xF)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x9837uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  *(v5 + 20) = *(v11 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD16Storage;
}

__n128 Float.SIMD16Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 9);
  v6 = v1[4] & 0xF;
  v7 = *(v1 + 20);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

__n128 Float.SIMD32Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Float.SIMD32Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v8;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Float.SIMD32Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

float key path getter for Float.SIMD32Storage.subscript(_:) : Float.SIMD32Storage@<S0>(uint64_t a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  result = *(a1 + 4 * (*a2 & 0x1FLL));
  *a3 = result;
  return result;
}

float key path setter for Float.SIMD32Storage.subscript(_:) : Float.SIMD32Storage(float *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 4 * (*a3 & 0x1FLL)) = *a1;
  return result;
}

uint64_t (*Float.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x9210uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return Float.SIMD32Storage.subscript.modify;
}

float protocol witness for SIMDStorage.subscript.getter in conformance Float.SIMD32Storage@<S0>(char a1@<W0>, float *a2@<X8>)
{
  result = *(v2 + 4 * (a1 & 0x1F));
  *a2 = result;
  return result;
}

float protocol witness for SIMDStorage.subscript.setter in conformance Float.SIMD32Storage(float *a1, char a2)
{
  result = *a1;
  *(v2 + 4 * (a2 & 0x1F)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x9F2EuLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[16] = a2;
  v5[17] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 36) = *(v15 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD32Storage;
}

__n128 Float.SIMD32Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 17);
  v10 = v1[8] & 0x1F;
  v11 = *(v1 + 36);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

__n128 Float.SIMD64Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  v15 = *(v1 + 208);
  v16 = *(v1 + 240);
  *(a1 + 224) = *(v1 + 224);
  *(a1 + 240) = v16;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Float.SIMD64Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 240);
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = v16;
  *(v1 + 192) = v14;
  *(v1 + 208) = v15;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  *(v1 + 128) = v10;
  *(v1 + 144) = v11;
  *(v1 + 96) = v8;
  *(v1 + 112) = v9;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Float.SIMD64Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

float key path getter for Float.SIMD64Storage.subscript(_:) : Float.SIMD64Storage@<S0>(uint64_t a1@<X0>, void *a2@<X1>, float *a3@<X8>)
{
  result = *(a1 + 4 * (*a2 & 0x3FLL));
  *a3 = result;
  return result;
}

float key path setter for Float.SIMD64Storage.subscript(_:) : Float.SIMD64Storage(float *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 4 * (*a3 & 0x3FLL)) = *a1;
  return result;
}

uint64_t (*Float.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x8B70uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return Float.SIMD64Storage.subscript.modify;
}

float protocol witness for SIMDStorage.subscript.getter in conformance Float.SIMD64Storage@<S0>(char a1@<W0>, float *a2@<X8>)
{
  result = *(v2 + 4 * (a1 & 0x3F));
  *a2 = result;
  return result;
}

float protocol witness for SIMDStorage.subscript.setter in conformance Float.SIMD64Storage(float *a1, char a2)
{
  result = *a1;
  *(v2 + 4 * (a2 & 0x3F)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0xC76CuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[32] = a2;
  v5[33] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  *(v5 + 68) = *(v23 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Float.SIMD64Storage;
}

void Float.SIMD64Storage.subscript.modify(void **a1)
{
  v2 = *a1;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = v2[10];
  v14 = v2[11];
  v15 = v2[12];
  v16 = v2[13];
  v17 = v2[15];
  v18 = *(v2 + 33);
  v19 = v2[16] & 0x3F;
  v20 = *(v2 + 68);
  v50 = v2[14];
  v51 = v17;
  v48 = v15;
  v49 = v16;
  v46 = v13;
  v47 = v14;
  v44 = v11;
  v45 = v12;
  v42 = v9;
  v43 = v10;
  v40 = v7;
  v41 = v8;
  v38 = v5;
  v39 = v6;
  v36 = v3;
  v37 = v4;
  *(&v36 + v19) = v20;
  v22 = v36;
  v21 = v37;
  v24 = v38;
  v23 = v39;
  v26 = v40;
  v25 = v41;
  v28 = v42;
  v27 = v43;
  v30 = v44;
  v29 = v45;
  v32 = v46;
  v31 = v47;
  v34 = v48;
  v33 = v49;
  v35 = v51;
  v18[14] = v50;
  v18[15] = v35;
  v18[12] = v34;
  v18[13] = v33;
  v18[10] = v32;
  v18[11] = v31;
  v18[8] = v30;
  v18[9] = v29;
  v18[6] = v28;
  v18[7] = v27;
  v18[4] = v26;
  v18[5] = v25;
  v18[2] = v24;
  v18[3] = v23;
  *v18 = v22;
  v18[1] = v21;

  free(v2);
}

double key path getter for Double.SIMD2Storage.subscript(_:) : Double.SIMD2Storage@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(a1 + 8 * (*a2 & 1));
  *a3 = result;
  return result;
}

double key path setter for Double.SIMD2Storage.subscript(_:) : Double.SIMD2Storage(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 8 * (*a3 & 1)) = *a1;
  return result;
}

uint64_t (*Double.SIMD2Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x88FuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return Double.SIMD2Storage.subscript.modify;
}

double protocol witness for SIMDStorage.subscript.getter in conformance Double.SIMD2Storage@<D0>(char a1@<W0>, double *a2@<X8>)
{
  result = *(v2 + 8 * (a1 & 1));
  *a2 = result;
  return result;
}

double protocol witness for SIMDStorage.subscript.setter in conformance Double.SIMD2Storage(double *a1, char a2)
{
  result = *a1;
  *(v2 + 8 * (a2 & 1)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD2Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xCFC6uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  *a1 = v5;
  v5[3] = a2;
  v5[4] = v2;
  v6 = *v2;
  *v5 = *v2;
  v8 = v6;
  v5[2] = *(&v8 & 0xFFFFFFFFFFFFFFF7 | (8 * (a2 & 1)));
  return protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD2Storage;
}

void Double.SIMD2Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = (&v5 & 0xFFFFFFFFFFFFFFF7 | (8 * (v1[3] & 1)));
  v4 = v1[2];
  v5 = *v1;
  *v3 = v4;
  *v2 = v5;
  free(v1);
}

double key path getter for Double.SIMD4Storage.subscript(_:) : Double.SIMD4Storage@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(a1 + 8 * (*a2 & 3));
  *a3 = result;
  return result;
}

double key path setter for Double.SIMD4Storage.subscript(_:) : Double.SIMD4Storage(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 8 * (*a3 & 3)) = *a1;
  return result;
}

uint64_t (*Double.SIMD4Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x3A9BuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return Double.SIMD4Storage.subscript.modify;
}

double protocol witness for SIMDStorage.subscript.getter in conformance Double.SIMD4Storage@<D0>(char a1@<W0>, double *a2@<X8>)
{
  result = *(v2 + 8 * (a1 & 3));
  *a2 = result;
  return result;
}

double protocol witness for SIMDStorage.subscript.setter in conformance Double.SIMD4Storage(double *a1, char a2)
{
  result = *a1;
  *(v2 + 8 * (a2 & 3)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD4Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x40, 0x9B3BuLL);
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  *a1 = v5;
  v5[5] = a2;
  v5[6] = v2;
  v6 = *v2;
  v7 = v2[1];
  *v5 = *v2;
  *(v5 + 1) = v7;
  v9[0] = v6;
  v9[1] = v7;
  v5[4] = *(v9 + (a2 & 3));
  return protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD4Storage;
}

void Double.SIMD4Storage.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 48);
  *(v4 + (*(v1 + 40) & 3)) = *(v1 + 32);
  v3 = v4[1];
  *v2 = v4[0];
  v2[1] = v3;
  free(v1);
}

void Double.SIMD8Storage._value.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[2] = a3;
  v4[3] = a4;
  *v4 = a1;
  v4[1] = a2;
}

double Double.SIMD8Storage.subscript.getter(char a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[0] = a2;
  v6[1] = a3;
  return *(v6 + (a1 & 7));
}

double key path getter for Double.SIMD8Storage.subscript(_:) : Double.SIMD8Storage@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(a1 + 8 * (*a2 & 7));
  *a3 = result;
  return result;
}

double key path setter for Double.SIMD8Storage.subscript(_:) : Double.SIMD8Storage(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 8 * (*a3 & 7)) = *a1;
  return result;
}

uint64_t (*Double.SIMD8Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x904uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return Double.SIMD8Storage.subscript.modify;
}

double protocol witness for SIMDStorage.subscript.getter in conformance Double.SIMD8Storage@<D0>(char a1@<W0>, double *a2@<X8>)
{
  result = *(v2 + 8 * (a1 & 7));
  *a2 = result;
  return result;
}

double protocol witness for SIMDStorage.subscript.setter in conformance Double.SIMD8Storage(double *a1, char a2)
{
  result = *a1;
  *(v2 + 8 * (a2 & 7)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD8Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x80, 0x38F7uLL);
  }

  else
  {
    v5 = malloc(0x80uLL);
  }

  *a1 = v5;
  v5[9] = a2;
  v5[10] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v11[2] = v9;
  v11[3] = v8;
  v11[0] = v7;
  v11[1] = v6;
  v5[8] = *(v11 + (a2 & 7));
  return protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD8Storage;
}

__n128 Double.SIMD8Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v5 = *(v1 + 10);
  v6 = *(v1 + 18) & 7;
  v7 = *(v1 + 8);
  v14 = v1[2];
  v15 = v4;
  v12 = v2;
  v13 = v3;
  *(&v12 + v6) = v7;
  v9 = v12;
  v8 = v13;
  v10 = v15;
  v5[2] = v14;
  v5[3] = v10;
  *v5 = v9;
  v5[1] = v8;
  free(v1);
  return result;
}

__n128 Double.SIMD16Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Double.SIMD16Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v8;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Double.SIMD16Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double key path getter for Double.SIMD16Storage.subscript(_:) : Double.SIMD16Storage@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(a1 + 8 * (*a2 & 0xFLL));
  *a3 = result;
  return result;
}

double key path setter for Double.SIMD16Storage.subscript(_:) : Double.SIMD16Storage(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 8 * (*a3 & 0xFLL)) = *a1;
  return result;
}

uint64_t (*Double.SIMD16Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0xA16uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return Double.SIMD16Storage.subscript.modify;
}

double protocol witness for SIMDStorage.subscript.getter in conformance Double.SIMD16Storage@<D0>(char a1@<W0>, double *a2@<X8>)
{
  result = *(v2 + 8 * (a1 & 0xF));
  *a2 = result;
  return result;
}

double protocol witness for SIMDStorage.subscript.setter in conformance Double.SIMD16Storage(double *a1, char a2)
{
  result = *a1;
  *(v2 + 8 * (a2 & 0xF)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD16Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x100, 0x39D4uLL);
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  v5[17] = a2;
  v5[18] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  v5[16] = *(v15 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD16Storage;
}

__n128 Double.SIMD16Storage.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 18);
  v10 = *(v1 + 34) & 0xF;
  v11 = *(v1 + 16);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

__n128 Double.SIMD32Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  v15 = *(v1 + 208);
  v16 = *(v1 + 240);
  *(a1 + 224) = *(v1 + 224);
  *(a1 + 240) = v16;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Double.SIMD32Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 240);
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = v16;
  *(v1 + 192) = v14;
  *(v1 + 208) = v15;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  *(v1 + 128) = v10;
  *(v1 + 144) = v11;
  *(v1 + 96) = v8;
  *(v1 + 112) = v9;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Double.SIMD32Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double key path getter for Double.SIMD32Storage.subscript(_:) : Double.SIMD32Storage@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(a1 + 8 * (*a2 & 0x1FLL));
  *a3 = result;
  return result;
}

double key path setter for Double.SIMD32Storage.subscript(_:) : Double.SIMD32Storage(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 8 * (*a3 & 0x1FLL)) = *a1;
  return result;
}

uint64_t (*Double.SIMD32Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x3879uLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return Double.SIMD32Storage.subscript.modify;
}

double protocol witness for SIMDStorage.subscript.getter in conformance Double.SIMD32Storage@<D0>(char a1@<W0>, double *a2@<X8>)
{
  result = *(v2 + 8 * (a1 & 0x1F));
  *a2 = result;
  return result;
}

double protocol witness for SIMDStorage.subscript.setter in conformance Double.SIMD32Storage(double *a1, char a2)
{
  result = *a1;
  *(v2 + 8 * (a2 & 0x1F)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD32Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x200, 0x9AEEuLL);
  }

  else
  {
    v5 = malloc(0x200uLL);
  }

  *a1 = v5;
  v5[33] = a2;
  v5[34] = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  v15 = v2[8];
  v14 = v2[9];
  v17 = v2[10];
  v16 = v2[11];
  v19 = v2[12];
  v18 = v2[13];
  v21 = v2[14];
  v20 = v2[15];
  *(v5 + 14) = v21;
  *(v5 + 15) = v20;
  *(v5 + 12) = v19;
  *(v5 + 13) = v18;
  *(v5 + 10) = v17;
  *(v5 + 11) = v16;
  *(v5 + 8) = v15;
  *(v5 + 9) = v14;
  *(v5 + 6) = v13;
  *(v5 + 7) = v12;
  *(v5 + 4) = v11;
  *(v5 + 5) = v10;
  *(v5 + 2) = v9;
  *(v5 + 3) = v8;
  *v5 = v7;
  *(v5 + 1) = v6;
  v23[14] = v21;
  v23[15] = v20;
  v23[12] = v19;
  v23[13] = v18;
  v23[10] = v17;
  v23[11] = v16;
  v23[8] = v15;
  v23[9] = v14;
  v23[6] = v13;
  v23[7] = v12;
  v23[4] = v11;
  v23[5] = v10;
  v23[2] = v9;
  v23[3] = v8;
  v23[0] = v7;
  v23[1] = v6;
  v5[32] = *(v23 + (a2 & 0x1F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD32Storage;
}

void Double.SIMD32Storage.subscript.modify(void **a1)
{
  v2 = *a1;
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = v2[10];
  v14 = v2[11];
  v15 = v2[12];
  v16 = v2[13];
  v17 = v2[15];
  v18 = *(v2 + 34);
  v19 = *(v2 + 66) & 0x1F;
  v20 = *(v2 + 32);
  v50 = v2[14];
  v51 = v17;
  v48 = v15;
  v49 = v16;
  v46 = v13;
  v47 = v14;
  v44 = v11;
  v45 = v12;
  v42 = v9;
  v43 = v10;
  v40 = v7;
  v41 = v8;
  v38 = v5;
  v39 = v6;
  v36 = v3;
  v37 = v4;
  *(&v36 + v19) = v20;
  v22 = v36;
  v21 = v37;
  v24 = v38;
  v23 = v39;
  v26 = v40;
  v25 = v41;
  v28 = v42;
  v27 = v43;
  v30 = v44;
  v29 = v45;
  v32 = v46;
  v31 = v47;
  v34 = v48;
  v33 = v49;
  v35 = v51;
  v18[14] = v50;
  v18[15] = v35;
  v18[12] = v34;
  v18[13] = v33;
  v18[10] = v32;
  v18[11] = v31;
  v18[8] = v30;
  v18[9] = v29;
  v18[6] = v28;
  v18[7] = v27;
  v18[4] = v26;
  v18[5] = v25;
  v18[2] = v24;
  v18[3] = v23;
  *v18 = v22;
  v18[1] = v21;

  free(v2);
}

__n128 Double.SIMD64Storage._value.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = *(v1 + 112);
  v10 = *(v1 + 128);
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  v15 = *(v1 + 208);
  v16 = *(v1 + 224);
  v17 = *(v1 + 240);
  v18 = *(v1 + 256);
  v19 = *(v1 + 272);
  v20 = *(v1 + 288);
  v21 = *(v1 + 304);
  v22 = *(v1 + 320);
  v23 = *(v1 + 336);
  v24 = *(v1 + 352);
  v25 = *(v1 + 368);
  v26 = *(v1 + 384);
  v27 = *(v1 + 400);
  v28 = *(v1 + 416);
  v29 = *(v1 + 432);
  v30 = *(v1 + 448);
  v31 = *(v1 + 464);
  v32 = *(v1 + 496);
  *(a1 + 480) = *(v1 + 480);
  *(a1 + 496) = v32;
  *(a1 + 448) = v30;
  *(a1 + 464) = v31;
  *(a1 + 416) = v28;
  *(a1 + 432) = v29;
  *(a1 + 384) = v26;
  *(a1 + 400) = v27;
  *(a1 + 352) = v24;
  *(a1 + 368) = v25;
  *(a1 + 320) = v22;
  *(a1 + 336) = v23;
  *(a1 + 288) = v20;
  *(a1 + 304) = v21;
  *(a1 + 256) = v18;
  *(a1 + 272) = v19;
  *(a1 + 224) = v16;
  *(a1 + 240) = v17;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 160) = v12;
  *(a1 + 176) = v13;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Double.SIMD64Storage._value.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 224);
  v17 = *(a1 + 240);
  v18 = *(a1 + 256);
  v19 = *(a1 + 272);
  v20 = *(a1 + 288);
  v21 = *(a1 + 304);
  v22 = *(a1 + 320);
  v23 = *(a1 + 336);
  v24 = *(a1 + 352);
  v25 = *(a1 + 368);
  v26 = *(a1 + 384);
  v27 = *(a1 + 400);
  v28 = *(a1 + 416);
  v29 = *(a1 + 432);
  v30 = *(a1 + 448);
  v31 = *(a1 + 464);
  v32 = *(a1 + 496);
  *(v1 + 480) = *(a1 + 480);
  *(v1 + 496) = v32;
  *(v1 + 448) = v30;
  *(v1 + 464) = v31;
  *(v1 + 416) = v28;
  *(v1 + 432) = v29;
  *(v1 + 384) = v26;
  *(v1 + 400) = v27;
  *(v1 + 352) = v24;
  *(v1 + 368) = v25;
  *(v1 + 320) = v22;
  *(v1 + 336) = v23;
  *(v1 + 288) = v20;
  *(v1 + 304) = v21;
  *(v1 + 256) = v18;
  *(v1 + 272) = v19;
  *(v1 + 224) = v16;
  *(v1 + 240) = v17;
  *(v1 + 192) = v14;
  *(v1 + 208) = v15;
  *(v1 + 160) = v12;
  *(v1 + 176) = v13;
  *(v1 + 128) = v10;
  *(v1 + 144) = v11;
  *(v1 + 96) = v8;
  *(v1 + 112) = v9;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 32) = v4;
  *(v1 + 48) = v5;
  *v1 = result;
  *(v1 + 16) = v3;
  return result;
}

double Double.SIMD64Storage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[30] = 0u;
  a1[31] = 0u;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double key path getter for Double.SIMD64Storage.subscript(_:) : Double.SIMD64Storage@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(a1 + 8 * (*a2 & 0x3FLL));
  *a3 = result;
  return result;
}

double key path setter for Double.SIMD64Storage.subscript(_:) : Double.SIMD64Storage(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(a2 + 8 * (*a3 & 0x3FLL)) = *a1;
  return result;
}

uint64_t (*Double.SIMD64Storage.subscript.modify(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0x4723uLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return Double.SIMD64Storage.subscript.modify;
}

double protocol witness for SIMDStorage.subscript.getter in conformance Double.SIMD64Storage@<D0>(char a1@<W0>, double *a2@<X8>)
{
  result = *(v2 + 8 * (a1 & 0x3F));
  *a2 = result;
  return result;
}

double protocol witness for SIMDStorage.subscript.setter in conformance Double.SIMD64Storage(double *a1, char a2)
{
  result = *a1;
  *(v2 + 8 * (a2 & 0x3F)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD64Storage(void *a1, uint64_t a2))()
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x400, 0xD731uLL);
  }

  else
  {
    v5 = malloc(0x400uLL);
  }

  *a1 = v5;
  v5[66] = v2;
  v5[65] = a2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = v2[7];
  v14 = v2[8];
  v15 = v2[9];
  v16 = v2[10];
  v17 = v2[11];
  v18 = v2[12];
  v19 = v2[13];
  v20 = v2[14];
  v21 = v2[15];
  v22 = v2[16];
  v23 = v2[17];
  v24 = v2[18];
  v25 = v2[19];
  v26 = v2[20];
  v27 = v2[21];
  v28 = v2[22];
  v29 = v2[23];
  v30 = v2[24];
  v31 = v2[25];
  v32 = v2[26];
  v33 = v2[27];
  v34 = v2[28];
  v35 = v2[29];
  v36 = v2[30];
  v37 = v2[31];
  *(v5 + 30) = v36;
  *(v5 + 31) = v37;
  *(v5 + 28) = v34;
  *(v5 + 29) = v35;
  *(v5 + 26) = v32;
  *(v5 + 27) = v33;
  *(v5 + 24) = v30;
  *(v5 + 25) = v31;
  *(v5 + 22) = v28;
  *(v5 + 23) = v29;
  *(v5 + 20) = v26;
  *(v5 + 21) = v27;
  *(v5 + 18) = v24;
  *(v5 + 19) = v25;
  *(v5 + 16) = v22;
  *(v5 + 17) = v23;
  *(v5 + 14) = v20;
  *(v5 + 15) = v21;
  *(v5 + 12) = v18;
  *(v5 + 13) = v19;
  *(v5 + 10) = v16;
  *(v5 + 11) = v17;
  *(v5 + 8) = v14;
  *(v5 + 9) = v15;
  *(v5 + 6) = v12;
  *(v5 + 7) = v13;
  *(v5 + 4) = v10;
  *(v5 + 5) = v11;
  *(v5 + 2) = v8;
  *(v5 + 3) = v9;
  *v5 = v6;
  *(v5 + 1) = v7;
  v39[30] = v36;
  v39[31] = v37;
  v39[28] = v34;
  v39[29] = v35;
  v39[26] = v32;
  v39[27] = v33;
  v39[24] = v30;
  v39[25] = v31;
  v39[22] = v28;
  v39[23] = v29;
  v39[20] = v26;
  v39[21] = v27;
  v39[18] = v24;
  v39[19] = v25;
  v39[16] = v22;
  v39[17] = v23;
  v39[14] = v20;
  v39[15] = v21;
  v39[12] = v18;
  v39[13] = v19;
  v39[10] = v16;
  v39[11] = v17;
  v39[8] = v14;
  v39[9] = v15;
  v39[6] = v12;
  v39[7] = v13;
  v39[4] = v10;
  v39[5] = v11;
  v39[2] = v8;
  v39[3] = v9;
  v39[0] = v6;
  v39[1] = v7;
  v5[64] = *(v39 + (a2 & 0x3F));
  return protocol witness for SIMDStorage.subscript.modify in conformance Double.SIMD64Storage;
}

void Double.SIMD64Storage.subscript.modify(void **a1)
{
  v2 = *a1;
  v3 = v2[1];
  v67 = *v2;
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[9];
  v12 = v2[10];
  v13 = v2[11];
  v14 = v2[12];
  v15 = v2[13];
  v16 = v2[14];
  v17 = v2[15];
  v18 = v2[16];
  v19 = v2[17];
  v20 = v2[18];
  v21 = v2[19];
  v22 = v2[20];
  v23 = v2[21];
  v24 = v2[22];
  v25 = v2[23];
  v26 = v2[24];
  v27 = v2[25];
  v28 = v2[26];
  v29 = v2[27];
  v30 = v2[28];
  v31 = v2[29];
  v32 = v2[31];
  v33 = *(v2 + 66);
  v34 = *(v2 + 130);
  v35 = *(v2 + 64);
  v98 = v2[30];
  v99 = v32;
  v96 = v30;
  v97 = v31;
  v94 = v28;
  v95 = v29;
  v92 = v26;
  v93 = v27;
  v90 = v24;
  v91 = v25;
  v88 = v22;
  v89 = v23;
  v86 = v20;
  v87 = v21;
  v84 = v18;
  v85 = v19;
  v82 = v16;
  v83 = v17;
  v80 = v14;
  v81 = v15;
  v78 = v12;
  v79 = v13;
  v76 = v10;
  v77 = v11;
  v74 = v8;
  v75 = v9;
  v72 = v6;
  v73 = v7;
  v70 = v4;
  v71 = v5;
  v69 = v3;
  v68 = v67;
  *(&v68 + (v34 & 0x3F)) = v35;
  v36 = v68;
  v37 = v69;
  v38 = v70;
  v39 = v71;
  v40 = v72;
  v41 = v73;
  v42 = v74;
  v43 = v75;
  v44 = v76;
  v45 = v77;
  v46 = v78;
  v47 = v79;
  v48 = v80;
  v49 = v81;
  v50 = v82;
  v51 = v83;
  v52 = v84;
  v53 = v85;
  v54 = v86;
  v55 = v87;
  v56 = v88;
  v57 = v89;
  v58 = v90;
  v59 = v91;
  v60 = v92;
  v61 = v93;
  v62 = v94;
  v63 = v95;
  v64 = v96;
  v65 = v97;
  v66 = v99;
  v33[30] = v98;
  v33[31] = v66;
  v33[28] = v64;
  v33[29] = v65;
  v33[26] = v62;
  v33[27] = v63;
  v33[24] = v60;
  v33[25] = v61;
  v33[22] = v58;
  v33[23] = v59;
  v33[20] = v56;
  v33[21] = v57;
  v33[18] = v54;
  v33[19] = v55;
  v33[16] = v52;
  v33[17] = v53;
  v33[14] = v50;
  v33[15] = v51;
  v33[12] = v48;
  v33[13] = v49;
  v33[10] = v46;
  v33[11] = v47;
  v33[8] = v44;
  v33[9] = v45;
  v33[6] = v42;
  v33[7] = v43;
  v33[4] = v40;
  v33[5] = v41;
  v33[2] = v38;
  v33[3] = v39;
  *v33 = v36;
  v33[1] = v37;

  free(v2);
}

void _ss6MirrorV_17unlabeledChildren12displayStyle22ancestorRepresentationABx_q_AB07DisplayE0OSgAB08AncestorG0OtcSlR_r0_lufcSSSg5label_yp5valuet7ElementQy_cfU_s7UnicodeO6ScalarV_s15EmptyCollectionVyytGTG5_0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[5] = &unk_1EEEAC658;
}

__int16 *specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)@<X0>(__int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 40) = &type metadata for UInt16;
  *(a2 + 16) = v2;
  return result;
}

char *specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 40) = &type metadata for UInt8;
  *(a2 + 16) = v2;
  return result;
}

int *specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 40) = &type metadata for Unicode.Scalar;
  *(a2 + 16) = v2;
  return result;
}

char *specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || (v5 = (a4 + 8 * a1 + 32), v6 = 8 * v4, v7 = &__dst[v6], v5 < &__dst[v6]) && &v5[v6] > __dst)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(__dst, v5, v6);
  return v7;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((v4 & 0x8000000000000000) != 0 || (v5 = (a4 + a1 + 32), v6 = &__dst[v4], v5 < &__dst[v4]) && &v5[v4] > __dst)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(__dst, v5, v4);
  return v6;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || (v5 = (a4 + 32 * a1 + 32), v6 = &__dst[32 * v4], v5 < v6) && &v5[32 * v4] > __dst)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_arrayInitWithCopy(__dst, v5, v4, byte_1EEEAC6F8);
  return v6;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || (v5 = (a4 + 16 * a1 + 32), v6 = 16 * v4, v7 = &__dst[v6], v5 < &__dst[v6]) && &v5[v6] > __dst)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(__dst, v5, v6);
  return v7;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0 || ((v5 = (a4 + 24 * a1 + 32), v6 = 24 * v4, v7 = &__dst[v6], v5 < &__dst[v6]) ? (v8 = &v5[v6] > __dst) : (v8 = 0), v8))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(__dst, v5, v6);
  return v7;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || (v5 = (a4 + 8 * a1 + 32), v6 = &__dst[8 * v4], v5 < v6) && &v5[8 * v4] > __dst)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_arrayInitWithCopy(__dst, v5, v4, qword_1EEEBEBF0);
  return v6;
}

unint64_t specialized Unicode._NFCNormalizer.composeHangul(_:and:)(int a1, int a2)
{
  if ((a1 - 4352) > 0x12 || (a2 - 4449) > 0x14)
  {
    v4 = 0;
    v3 = 1;
    if ((a1 - 44032) >> 2 <= 0xAE8 && (a2 - 4520) <= 0x1A && (a1 + 21504) == 28 * ((153391690 * (a1 + 21504)) >> 32))
    {
      v3 = 0;
      v4 = a1 + a2 - 4519;
    }
  }

  else
  {
    v3 = 0;
    v4 = 28 * a2 + 588 * a1 - 2639516;
  }

  return v4 | (v3 << 32);
}

unint64_t specialized Unicode._NFCNormalizer._resume(consumingNFD:)(uint64_t a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    goto LABEL_7;
  }

  if (!*(*(a1 + 40) + 16))
  {
    *(a1 + 48) = 0;
    *a1 = 1;
LABEL_7:
    v7 = Unicode._NFDNormalizer._resume(consuming:)(a2);
    if ((v7 & 0x1000000000000) != 0)
    {
LABEL_34:
      LODWORD(v6) = 0;
      LOBYTE(v5) = 1;
      return v6 | (v5 << 32);
    }

    v6 = v7;
    while (1)
    {
      if (*(a1 + 56))
      {
        if ((v6 & 0x7F800000000) != 0)
        {
          LOBYTE(v5) = 0;
          return v6 | (v5 << 32);
        }

        *(a1 + 52) = v6;
      }

      else
      {
        v8 = *(a1 + 52);
        v9 = *(a1 + 40);
        v10 = v9[2];
        if (v10)
        {
          v5 = (v6 >> 35);
          if (v5 <= (WORD2(v9[v10 + 3]) >> 3))
          {
            if (!(v6 >> 35))
            {
              *(a1 + 52) = v6;
              *(a1 + 56) = 0;
              LODWORD(v6) = v8;
              *a1 = 0;
              return v6 | (v5 << 32);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*(a1 + 40));
            *(a1 + 40) = v9;
            if (!isUniquelyReferenced_nonNull_native)
            {
              v13 = &v10->isa + 1;
LABEL_33:
              v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 1, v9);
              *(a1 + 40) = v9;
            }

            goto LABEL_29;
          }

          if ((v6 & 0x600000000) == 0)
          {
            goto LABEL_25;
          }

          v11 = specialized Unicode._NFCNormalizer.composeHangul(_:and:)(*(a1 + 52), v6);
          if ((v11 & 0x100000000) != 0)
          {
            LODWORD(v11) = _swift_stdlib_getComposition(v8, v6);
            if (v11 == -1)
            {
              goto LABEL_25;
            }
          }
        }

        else if ((v6 & 0x600000000) == 0 || (v11 = specialized Unicode._NFCNormalizer.composeHangul(_:and:)(*(a1 + 52), v6), (v11 & 0x100000000) != 0) && (LODWORD(v11) = _swift_stdlib_getComposition(v8, v6), v11 == -1))
        {
          if ((v6 & 0x7F800000000) == 0)
          {
            LOBYTE(v5) = 0;
            *(a1 + 52) = v6;
            *(a1 + 56) = 0;
            LODWORD(v6) = v8;
            return v6 | (v5 << 32);
          }

LABEL_25:
          v12 = swift_isUniquelyReferenced_nonNull_native(v9);
          *(a1 + 40) = v9;
          if (!v12)
          {
            v13 = &v9[2]->isa + 1;
            goto LABEL_33;
          }

LABEL_29:
          v16 = v9[2];
          v15 = v9[3];
          if (v16 >= v15 >> 1)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v9);
          }

          v9[2] = (v16 + 1);
          v17 = &v9[v16];
          *(v17 + 8) = v6;
          *(v17 + 18) = WORD2(v6);
          *(a1 + 40) = v9;
          goto LABEL_11;
        }

        *(a1 + 52) = v11;
      }

      *(a1 + 56) = 0;
LABEL_11:
      v6 = Unicode._NFDNormalizer._resume(consuming:)(a2);
      if ((v6 & 0x1000000000000) != 0)
      {
        goto LABEL_34;
      }
    }
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    specialized MutableCollection<>.reverse()();
    *(a1 + 48) = 1;
  }

  v4 = specialized RangeReplaceableCollection<>.removeLast()();
  LOBYTE(v5) = 0;
  LODWORD(v6) = v4;
  return v6 | (v5 << 32);
}

BOOL specialized static __CocoaSet.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v7, v8))
  {
    goto LABEL_11;
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!swift_dynamicCastClass(a3, v8))
  {
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v7 + 16) != *(a3 + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2 < a4;
}

double specialized Hasher.init(_seed:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x7465646279746573;
  v3 = _swift_stdlib_Hashing_parameters ^ a1 ^ 0x6C7967656E657261;
  v4 = *(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL;
  v5 = _swift_stdlib_Hashing_parameters ^ a1 ^ 0x736F6D6570736575;
  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v2;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  return result;
}

uint64_t specialized _ArrayBuffer._nonNative.getter(uint64_t result)
{
  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}

int64_t specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(char *a1, size_t a2, int64_t a3, char a4)
{
  v6 = a2 | 0xC000000000000000;
  if ((a4 & 1) == 0)
  {
    v6 = a2;
  }

  v7 = v6 | 0x3000000000000000;
  v8 = _allocateStringStorage(codeUnitCapacity:)(a3);
  *(v8 + 16) = v9;
  *(v8 + 24) = v7;
  if (v9 < 0)
  {
    *__StringStorage._breadcrumbsAddress.getter() = 0;
    v7 = *(v8 + 24);
  }

  *(v8 + 32 + (v7 & 0xFFFFFFFFFFFFLL)) = 0;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v8 + 32));
  return v8;
}

uint64_t specialized static String._copying(_:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    v4 = a1 >> 16;
    v5 = a2 >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v23[0] = a3;
      v23[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(a4) & 0xF) >= v5)
      {
        v10 = v5 - v4;
        if (v5 - v4 >= 0)
        {
          v14 = _allASCII(_:)((v23 + v4), v5 - v4);
          v13 = v23 + v4;
          v11 = v14;
          return specialized static String._uncheckedFromUTF8(_:isASCII:)(v13, v10, v11, v12);
        }
      }
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v6 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = a3 & 0xFFFFFFFFFFFFLL;
      if ((a3 & 0xFFFFFFFFFFFFLL) >= v5)
      {
LABEL_5:
        v8 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v4, v5, v6, v7);
        v10 = v9;
        v11 = _allASCII(_:)(v8, v9);
        v13 = v8;
        return specialized static String._uncheckedFromUTF8(_:isASCII:)(v13, v10, v11, v12);
      }
    }

    else
    {
      v21 = v5;
      v6 = _StringObject.sharedUTF8.getter(a3, a4);
      v7 = v22;
      v5 = v21;
      if (v7 >= v21)
      {
        goto LABEL_5;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
  v17 = v16[2];
  v18 = _allASCII(_:)(v16 + 4, v17);
  v20 = specialized static String._uncheckedFromUTF8(_:isASCII:)((v16 + 4), v17, v18, v19);
  v16;
  return v20;
}

uint64_t specialized static String._copying(_:)(unint64_t a1, unint64_t a2)
{
  rawBits = specialized Collection.subscript.getter(a1, a2)._rawBits;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v7;
  v9 = specialized static String._copying(_:)(rawBits, v4, v6, v8);
  v8;
  return v9;
}

int64_t specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(int64_t a1, unint64_t *a2)
{
  v4 = _allocateStringStorage(codeUnitCapacity:)(a1);
  *(v4 + 16) = v5;
  *(v4 + 24) = 0x3000000000000000;
  if (v5 < 0)
  {
    *__StringStorage._breadcrumbsAddress.getter() = 0;
    v6 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 32 + v6) = 0;
  if (a1 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = _StringGuts._foreignCopyUTF8(into:)(v4 + 32, a1, *a2, a2[1]);
  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, 0x8000000180671E50, "Swift/StringGutsRangeReplaceable.swift", 0x26uLL, 2, 0x91uLL);
  }

  *(v4 + 24) = v7 | 0x3000000000000000;
  *(v4 + 32 + (v7 & 0xFFFFFFFFFFFFLL)) = 0;
  return v4;
}

uint64_t specialized static String._uncheckedFromUTF8(_:isASCII:)(uint64_t a1, uint64_t a2, char a3, uint8x8_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 15)
  {
    return *(specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(a1, a2, a2, a3 & 1) + 24);
  }

  v5 = a2 - 8;
  if (a2 >= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = a2;
  }

  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 > 3)
  {
    v8 = v6 & 0xC;
    a4.i32[0] = *a1;
    v9 = vmovl_u16(*&vmovl_u8(a4));
    v10.i64[0] = v9.u32[0];
    v10.i64[1] = v9.u32[1];
    v11.i64[0] = 255;
    v11.i64[1] = 255;
    v12 = vandq_s8(v10, v11);
    v10.i64[0] = v9.u32[2];
    v10.i64[1] = v9.u32[3];
    v13 = vshlq_u64(vandq_s8(v10, v11), xmmword_18071DBA0);
    v14.i32[1] = 0;
    v15 = vshlq_u64(v12, xmmword_18071DBB0);
    if (v8 != 4)
    {
      v14.i32[0] = *(a1 + 4);
      v16 = vmovl_u16(*&vmovl_u8(v14));
      v17.i64[0] = v16.u32[2];
      v17.i64[1] = v16.u32[3];
      v18 = vandq_s8(v17, v11);
      v17.i64[0] = v16.u32[0];
      v17.i64[1] = v16.u32[1];
      v13 = vorrq_s8(vshlq_u64(v18, xmmword_18071DBD0), v13);
      v15 = vorrq_s8(vshlq_u64(vandq_s8(v17, v11), xmmword_18071DBC0), v15);
    }

    v19 = vorrq_s8(v15, v13);
    v4 = vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
    if (v6 == v8)
    {
      goto LABEL_17;
    }

    v7 = 8 * v8;
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v8 = 0;
  }

  v20 = v6 - v8;
  v21 = (a1 + v8);
  do
  {
    v22 = *v21++;
    *&v4 |= v22 << (v7 & 0x38);
    v7 += 8;
    --v20;
  }

  while (v20);
LABEL_17:
  if (a2 >= 9)
  {
    v23 = 0;
    v24 = 0;
    v25 = (a1 + 8);
    do
    {
      v26 = *v25++;
      v23 |= v26 << v24;
      v24 += 8;
      --v5;
    }

    while (v5);
  }

  return v4;
}

uint64_t specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(int64_t a1, unint64_t *a2)
{
  v4 = specialized static __StringStorage.create(uninitializedCodeUnitCapacity:initializingUncheckedUTF8With:)(a1, a2);
  if (v3)
  {
    return v2;
  }

  v5 = v4;
  v101 = 0;
  v6 = (v4 + 32);
  v7 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
  if (_allASCII(_:)((v4 + 32), v7) || !v7)
  {
    v10 = 1;
LABEL_47:
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v7, v10 & 1);
    return *(v5 + 24);
  }

  v8 = 0;
  v9 = v5 + v7 + 32;
  v10 = 1;
  v11 = v6;
  v12 = v6;
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    if ((v14 & 0x80000000) == 0)
    {
      v15 = 1;
      goto LABEL_7;
    }

    if ((v13 + 11) < 0xCDu)
    {
      LOBYTE(v99) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v13);
      goto LABEL_49;
    }

    if (v13 >= 0xE0u)
    {
      break;
    }

    if (v12 == v9 || (*v12 & 0xC0) != 0x80)
    {
LABEL_168:
      LOBYTE(v99) = 4;
      goto LABEL_49;
    }

    v10 = 0;
    v12 = v11 + 2;
    v15 = 2;
LABEL_7:
    v8 += v15;
    v11 = v12;
    if (v12 == v9)
    {
      goto LABEL_47;
    }
  }

  if (v13 == 224)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    if (v11[1] - 192 <= 0xFFFFFFDF)
    {
      goto LABEL_169;
    }

    goto LABEL_31;
  }

  if (v13 <= 0xECu)
  {
    goto LABEL_29;
  }

  if (v13 == 237)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    v16 = v11[1];
    if (v16 > 0x9F || (v16 & 0xC0) != 0x80)
    {
      LOBYTE(v99) = 1;
      goto LABEL_49;
    }

    goto LABEL_31;
  }

  if (v13 <= 0xEFu)
  {
LABEL_29:
    if (v12 == v9 || (v11[1] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

LABEL_31:
    if (v11 + 2 == v9 || (v11[2] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    v10 = 0;
    v12 = v11 + 3;
    v15 = 3;
    goto LABEL_7;
  }

  if (v13 == 240)
  {
    if (v12 == v9)
    {
      goto LABEL_168;
    }

    if (v11[1] - 192 <= 0xFFFFFFCF)
    {
LABEL_169:
      LOBYTE(v99) = 3;
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (v13 <= 0xF3u)
  {
    if (v12 == v9 || (v11[1] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    goto LABEL_41;
  }

  if (v12 == v9)
  {
    goto LABEL_168;
  }

  v17 = v11[1];
  if (v17 <= 0x8F && (v17 & 0xC0) == 0x80)
  {
LABEL_41:
    if (v11 + 2 == v9 || (v11[2] & 0xC0) != 0x80 || v11 + 3 == v9 || (v11[3] & 0xC0) != 0x80)
    {
      goto LABEL_168;
    }

    v10 = 0;
    v12 = v11 + 4;
    v15 = 4;
    goto LABEL_7;
  }

  LOBYTE(v99) = 2;
LABEL_49:
  swift_willThrowTypedImpl(&v99, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v18 = specialized Collection.subscript.getter(v8, v6, v7);
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v18;
  if (v18 != v19)
  {
    specialized Slice.subscript.getter(v18, v18, v19, v20, v21);
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_173;
    }
  }

  v27 = v22;
  if (v26 != v23)
  {
    v28 = specialized Slice.subscript.getter(v26, v22, v23, v24, v25);
    v29 = __OFADD__(v26, 1);
    v30 = v26 + 1;
    if (v29)
    {
      goto LABEL_173;
    }

    v27 = v22;
    if ((v28 & 0xC0) == 0x80)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_180;
      }

      if (v22 + 1 <= v22)
      {
        goto LABEL_173;
      }

      if (v30 != v23)
      {
        v31 = specialized Slice.subscript.getter(v30, v22, v23, v24, v25);
        v29 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v29)
        {
          goto LABEL_173;
        }

        if ((v31 & 0xC0) == 0x80)
        {
          v29 = __OFADD__(v27, 1);
          v27 = v22 + 2;
          if (v29)
          {
            goto LABEL_180;
          }

          if (v22 + 2 <= v22)
          {
            goto LABEL_173;
          }

          if (v32 != v23)
          {
            v33 = specialized Slice.subscript.getter(v32, v22, v23, v24, v25);
            if (v32 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_173;
            }

            if ((v33 & 0xC0) == 0x80)
            {
              v29 = __OFADD__(v27, 1);
              v27 = v22 + 3;
              if (!v29)
              {
                if (v22 + 3 > v22)
                {
                  goto LABEL_66;
                }

LABEL_173:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_180:
              __break(1u);
              goto LABEL_173;
            }
          }
        }
      }
    }

LABEL_66:
    if (v27 < v22)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v34 = v27 + 1;
  if (__OFADD__(v27, 1))
  {
    __break(1u);
    goto LABEL_173;
  }

  if (v23 < v34)
  {
    goto LABEL_173;
  }

  v35 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v22, v34, v24, v25);
  v37 = v36;
  v94 = v5;
  v38 = *(v5 + 24);
  v99 = 0;
  v100 = 0xE000000000000000;
  v39 = v38 & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v40 = v39 + 15;
    v41 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v42 & 1) != 0 || v41 < v40)
    {
      v44 = 2 * _StringGuts.uniqueNativeCapacity.getter();
      if (v44 <= v40)
      {
        v44 = v39 + 15;
      }

      if (v43)
      {
        v45 = v39 + 15;
      }

      else
      {
        v45 = v44;
      }

      v97 = 0;
      v98 = 0;
      v46 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v97, 0, v45, 1);
      v47 = *(v46 + 24);
      0xE000000000000000;
      v99 = v47;
      v100 = v46;
    }
  }

  v48 = v37;
  v49 = v35;
LABEL_79:
  if (v49 < 0)
  {
LABEL_170:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v50 = v39;
  if (v39 < v49)
  {
    goto LABEL_173;
  }

  __n = v49;
  v52 = v99;
  v51 = v100;
  v53 = v99 & 0xFFFFFFFFFFFFLL;
  v54 = HIBYTE(v100) & 0xF;
  if ((v100 & 0x2000000000000000) != 0)
  {
    v55 = HIBYTE(v100) & 0xF;
  }

  else
  {
    v55 = v99 & 0xFFFFFFFFFFFFLL;
  }

  v56 = v55 + v50 + 3;
  if (__OFADD__(v55 + v50, 3))
  {
    __break(1u);
    goto LABEL_173;
  }

  v57 = v48;
  if (v56 < 16)
  {
LABEL_89:
    v60 = v57;
    v61 = v6;
  }

  else
  {
    v96 = v100;
    v58 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v59 & 1) == 0 && v58 >= v56)
    {
      v51 = v96;
      goto LABEL_89;
    }

    v62 = _StringGuts.uniqueNativeCapacity.getter();
    if (v63)
    {
      v64 = v96;
      if ((v96 & 0x1000000000000000) != 0)
      {
        v55 = String.UTF8View._foreignCount()();
      }

      v65 = v96 & 0x1000000000000000;
      if (v55 <= v56)
      {
        v55 = v56;
      }
    }

    else
    {
      if (2 * v62 <= v56)
      {
        v55 += v50 + 3;
      }

      else
      {
        v55 = 2 * v62;
      }

      v64 = v96;
      v65 = v96 & 0x1000000000000000;
    }

    v60 = v57;
    if (v65)
    {
      _StringGuts._foreignGrow(_:)(v55);
      v51 = v100;
      v61 = v6;
    }

    else
    {
      v61 = v6;
      if ((v64 & 0x2000000000000000) != 0)
      {
        v67 = (v64 >> 62) & 1;
        v97 = v52;
        v98 = v64 & 0xFFFFFFFFFFFFFFLL;
        v66 = &v97;
        v68 = v54;
      }

      else
      {
        if ((v52 & 0x1000000000000000) != 0)
        {
          v66 = ((v64 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v66 = _StringObject.sharedUTF8.getter(v52, v64);
          v53 = v92;
        }

        v67 = v52 >> 63;
        v68 = v53;
      }

      v69 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v66, v68, v55, v67);
      v64;
      v100 = v69;
      v51 = v69;
    }
  }

  v70 = v51 & 0xFFFFFFFFFFFFFFFLL;
  v71 = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v72 = ((v51 & 0xFFFFFFFFFFFFFFFLL) + 24);
  specialized UnsafeMutablePointer.initialize(from:count:)(v61, __n, (v71 + (*((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
  v73 = (*v72 & 0xFFFFFFFFFFFFLL) + __n;
  v74 = v73 | 0x3000000000000000;
  *v72 = v73 | 0x3000000000000000;
  *(v71 + (v73 & 0xFFFFFFFFFFFFLL)) = 0;
  v75 = *(v70 + 16);
  if (v75 < 0)
  {
    v76 = ((v71 + (v75 & 0xFFFFFFFFFFFFLL) + 7) & 0x7FFFFFFFFFFFFFF8);
    v77 = *v76;
    *v76 = 0;
    v77;
    v74 = *v72;
  }

  v99 = v74;
  v78 = v101;
  specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v99);
  if (v50 < v60)
  {
    goto LABEL_170;
  }

  if (v60 < 0)
  {
    goto LABEL_173;
  }

  v39 = v50 - v60;
  if (v50 - v60 < 0)
  {
    goto LABEL_173;
  }

  v101 = v78;
  v6 = &v61[v60];
  if (!_allASCII(_:)(&v61[v60], v50 - v60) && v50 != v60)
  {
    v79 = 0;
    v80 = &v61[v50];
    v81 = v6;
    v82 = v6;
    do
    {
      v84 = *v82++;
      v83 = v84;
      if ((v84 & 0x80000000) == 0)
      {
        v85 = 1;
        goto LABEL_117;
      }

      if ((v83 + 11) <= 0xCCu)
      {
        LOBYTE(v97) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v83);
        goto LABEL_157;
      }

      if (v83 < 0xE0u)
      {
        if (v82 == v80 || (*v82 & 0xC0) != 0x80)
        {
LABEL_159:
          LOBYTE(v97) = 4;
          goto LABEL_157;
        }

        v82 = v81 + 2;
        v85 = 2;
      }

      else
      {
        if (v83 == 224)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          if (v81[1] - 192 <= 0xFFFFFFDF)
          {
            goto LABEL_160;
          }

          goto LABEL_141;
        }

        if (v83 <= 0xECu)
        {
          goto LABEL_139;
        }

        if (v83 == 237)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          v86 = v81[1];
          if (v86 > 0x9F || (v86 & 0xC0) != 0x80)
          {
            LOBYTE(v97) = 1;
            goto LABEL_157;
          }

          goto LABEL_141;
        }

        if (v83 <= 0xEFu)
        {
LABEL_139:
          if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }

LABEL_141:
          if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }

          v82 = v81 + 3;
          v85 = 3;
          goto LABEL_117;
        }

        if (v83 == 240)
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          if (v81[1] - 192 <= 0xFFFFFFCF)
          {
LABEL_160:
            LOBYTE(v97) = 3;
            goto LABEL_157;
          }
        }

        else if (v83 <= 0xF3u)
        {
          if (v82 == v80 || (v81[1] & 0xC0) != 0x80)
          {
            goto LABEL_159;
          }
        }

        else
        {
          if (v82 == v80)
          {
            goto LABEL_159;
          }

          v87 = v81[1];
          if (v87 > 0x8F || (v87 & 0xC0) != 0x80)
          {
            LOBYTE(v97) = 2;
LABEL_157:
            swift_willThrowTypedImpl(&v97, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
            v88 = specialized Collection.subscript.getter(v79, v6, v39);
            v49 = findInvalidRange #1 (_:) in validateUTF8(_:)(v88, v89, v90, v91);
            if (!v39)
            {
              v72 = &v99;
              goto LABEL_166;
            }

            goto LABEL_79;
          }
        }

        if (v81 + 2 == v80 || (v81[2] & 0xC0) != 0x80 || v81 + 3 == v80 || (v81[3] & 0xC0) != 0x80)
        {
          goto LABEL_159;
        }

        v82 = v81 + 4;
        v85 = 4;
      }

LABEL_117:
      v79 += v85;
      v81 = v82;
    }

    while (v82 != v80);
  }

  __StringStorage.appendInPlace(_:isASCII:)(v6, v39, 0);
LABEL_166:
  v2 = *v72;
  v94;
  return v2;
}

uint64_t _StringGuts.init(_initialCapacity:)(Swift::Int a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  _StringGuts.grow(_:)(a1);
  return 0;
}

unint64_t specialized _SmallString.init(_:appending:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = HIBYTE(a4) & 0xF;
  if (v5 + v4 > 0xF)
  {
    return 0;
  }

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 8 * v4;
    v9 = 8 * v5;
    do
    {
      v10 = a4 >> (v6 & 0x38);
      if (v7 < 8)
      {
        v10 = a3 >> v6;
      }

      v11 = (v10 << (v8 & 0x38)) | ((-255 << (v8 & 0x38)) - 1) & a2;
      v12 = (v10 << v8) | ((-255 << v8) - 1) & result;
      if (v4 <= 7)
      {
        result = v12;
      }

      else
      {
        a2 = v11;
      }

      ++v4;
      v8 += 8;
      v6 += 8;
      ++v7;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t specialized static Hasher._hash(seed:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(&_swift_stdlib_Hashing_parameters + 1) ^ a2 ^ 0x7465646279746573;
  v3 = ((_swift_stdlib_Hashing_parameters ^ a1 ^ 0x736F6D6570736575) + (*(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL)) ^ __ROR8__(*(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL, 51);
  v4 = (_swift_stdlib_Hashing_parameters ^ a1 ^ 0x6C7967656E657261) + v2;
  v5 = v4 ^ __ROR8__(v2, 48);
  v6 = __ROR8__((_swift_stdlib_Hashing_parameters ^ a1 ^ 0x736F6D6570736575) + (*(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL), 32) + v5;
  v7 = v3 + v4;
  v8 = v7 ^ __ROR8__(v3, 47);
  v9 = v6 ^ __ROR8__(v5, 43) ^ 0x800000000000000;
  v10 = (v6 ^ a2) + v8;
  v11 = v10 ^ __ROR8__(v8, 51);
  v12 = v9 + __ROR8__(v7, 32);
  v13 = __ROR8__(v9, 48);
  v14 = (v12 ^ v13) + __ROR8__(v10, 32);
  v15 = v14 ^ __ROR8__(v12 ^ v13, 43);
  v16 = v12 + v11;
  v17 = v16 ^ __ROR8__(v11, 47);
  v18 = (v14 ^ 0x800000000000000) + v17;
  v19 = v18 ^ __ROR8__(v17, 51);
  v20 = (__ROR8__(v16, 32) ^ 0xFFLL) + v15;
  v21 = __ROR8__(v15, 48);
  v22 = __ROR8__(v18, 32) + (v20 ^ v21);
  v23 = v22 ^ __ROR8__(v20 ^ v21, 43);
  v24 = v19 + v20;
  v25 = v24 ^ __ROR8__(v19, 47);
  v26 = v25 + v22;
  v27 = v26 ^ __ROR8__(v25, 51);
  v28 = __ROR8__(v24, 32) + v23;
  v29 = __ROR8__(v23, 48);
  v30 = __ROR8__(v26, 32) + (v28 ^ v29);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v27 + v28;
  v33 = v32 ^ __ROR8__(v27, 47);
  v34 = (v33 + v30) ^ __ROR8__(v33, 51);
  v35 = __ROR8__(v32, 32) + v31;
  return __ROR8__(v35 ^ __ROR8__(v31, 48), 43) ^ __ROR8__(v34, 47) ^ __ROR8__(v34 + v35, 32) ^ (v34 + v35);
}

uint64_t specialized static Hasher._hash(seed:bytes:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 | (a3 << 56);
  v4 = v3 ^ 0x7465646279746573 ^ *(&_swift_stdlib_Hashing_parameters + 1);
  v5 = ((_swift_stdlib_Hashing_parameters ^ a1 ^ 0x736F6D6570736575) + (*(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL)) ^ __ROR8__(*(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL, 51);
  v6 = (_swift_stdlib_Hashing_parameters ^ a1 ^ 0x6C7967656E657261) + v4;
  v7 = __ROR8__(v4, 48);
  v8 = __ROR8__((_swift_stdlib_Hashing_parameters ^ a1 ^ 0x736F6D6570736575) + (*(&_swift_stdlib_Hashing_parameters + 1) ^ 0x646F72616E646F6DLL), 32) + (v6 ^ v7);
  v9 = v8 ^ __ROR8__(v6 ^ v7, 43);
  v10 = v5 + v6;
  v11 = v10 ^ __ROR8__(v5, 47);
  v12 = (v8 ^ v3) + v11;
  v13 = v12 ^ __ROR8__(v11, 51);
  v14 = (__ROR8__(v10, 32) ^ 0xFFLL) + v9;
  v15 = __ROR8__(v9, 48);
  v16 = (v14 ^ v15) + __ROR8__(v12, 32);
  v17 = v16 ^ __ROR8__(v14 ^ v15, 43);
  v18 = v14 + v13;
  v19 = v18 ^ __ROR8__(v13, 47);
  v20 = v16 + v19;
  v21 = v20 ^ __ROR8__(v19, 51);
  v22 = v17 + __ROR8__(v18, 32);
  v23 = __ROR8__(v17, 48);
  v24 = (v22 ^ v23) + __ROR8__(v20, 32);
  v25 = v24 ^ __ROR8__(v22 ^ v23, 43);
  v26 = v22 + v21;
  v27 = v26 ^ __ROR8__(v21, 47);
  v28 = (v24 + v27) ^ __ROR8__(v27, 51);
  v29 = v25 + __ROR8__(v26, 32);
  return __ROR8__(v28, 47) ^ __ROR8__(v29 + v28, 32) ^ __ROR8__(v29 ^ __ROR8__(v25, 48), 43) ^ (v29 + v28);
}

uint64_t specialized KeyPathBuffer.init(base:)(uint64_t a1)
{
  if ((a1 & 3) != 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 + 8;
}

uint64_t specialized ArraySlice._checkSubscript(_:wasNativeTypeChecked:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < a4 || (a5 >> 1) <= result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized static _HashTable.capacity(forScale:)(char a1)
{
  v1 = (1 << a1) * 0.75;
  if (COERCE__INT64(fabs(v1)) >= 0x7FF0000000000000 || v1 <= -9.22337204e18 || v1 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return v1;
}

BOOL specialized static __CocoaDictionary.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v7, v8))
  {
    goto LABEL_11;
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!swift_dynamicCastClass(a3, v8))
  {
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v7 + 16) != *(a3 + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2 < a4;
}

unint64_t _sSlsE20_failEarlyRangeCheck_6boundsySny5IndexQzG_AEtFSs_Tt1gq5Tm(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (result >> 14 < a3 >> 14 || a4 >> 14 < a2 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized static AnyKeyPath.== infix(_:_:)(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = specialized KeyPathBuffer.init(base:)((a1 + 3));
  v5 = v4;
  v7 = v6;
  v8 = specialized KeyPathBuffer.init(base:)((a2 + 3));
  if (((v7 ^ v10) & 0x100) != 0)
  {
    return 0;
  }

  v12 = v8;
  v13 = v9;
  if (v3 && v5 != v3)
  {
    while (1)
    {
      if ((v3 & 3) == 0)
      {
        v16 = v3;
        goto LABEL_25;
      }

      v15 = -v3 & 3;
      v16 = (v3 + v15);
      if (__OFADD__(v3, v15))
      {
        goto LABEL_155;
      }

      v17 = __OFSUB__(&v5[-v3], v15);
      v18 = &v5[-v3 - v15];
      if (v17)
      {
        goto LABEL_156;
      }

      if (v18 < 0)
      {
        goto LABEL_152;
      }

      if (v18)
      {
        break;
      }

      if (v16)
      {
        goto LABEL_24;
      }

      v5 = 0;
LABEL_25:
      v19 = v5 - v16 - 4;
      if (__OFSUB__(v5 - v16, 4))
      {
        __break(1u);
LABEL_154:
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
LABEL_160:
        __break(1u);
LABEL_161:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v19 < 0)
      {
        goto LABEL_152;
      }

      v20 = *v16;
      v21 = RawKeyPathComponent.Header.kind.getter(*v16);
      if ((v21 - 4) >= 3)
      {
        if ((v21 - 1) >= 2)
        {
          v22 = 28;
          if ((v20 & 0x400000) == 0)
          {
            v22 = 20;
          }

          if ((v20 & 0x80000) != 0)
          {
            v33 = 6;
            if ((v20 & 0x400000) == 0)
            {
              v33 = 4;
            }

            v34 = &v16[v33 + 2];
            if ((v34 & 7) != 0)
            {
              goto LABEL_161;
            }

            v22 += ((v20 >> 1) & 8) + *v34 + 16;
            if (v22 < 0)
            {
              goto LABEL_152;
            }
          }
        }

        else
        {
          v22 = 4 * ((~v20 & 0x7FFFFF) == 0);
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = v19 - v22;
      if (v19 - v22 < 0)
      {
        goto LABEL_152;
      }

      v24 = (v16 + 1);
      v25 = v16 + v22 + 4;
      v5 = (v24 + v19);
      if (v19 == v22)
      {
        v26 = 0;
        v3 = v25;
        if (!v12)
        {
          goto LABEL_62;
        }

        goto LABEL_34;
      }

      if ((v25 & 7) != 0)
      {
        v30 = -v25 & 7;
        v31 = (v25 + v30);
        if (__OFADD__(v25, v30))
        {
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_152:
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v32 = v23 - v30;
        if (v32 < 0)
        {
          goto LABEL_152;
        }

        if (v32)
        {
          if (!v31)
          {
            goto LABEL_152;
          }
        }

        else if (!v31)
        {
          v5 = 0;
          goto LABEL_59;
        }

        v5 = &v31[v32];
      }

      else
      {
        v31 = v25;
      }

LABEL_59:
      if (__OFSUB__(v5 - v31, 8))
      {
        goto LABEL_157;
      }

      if (v5 - v31 - 8 < 0)
      {
        goto LABEL_152;
      }

      v3 = (v31 + 8);
      v26 = *v31;
      if (!v12)
      {
LABEL_62:
        v28 = 0;
        goto LABEL_65;
      }

LABEL_34:
      if ((v12 & 3) == 0)
      {
        v28 = v12;
        goto LABEL_65;
      }

      v27 = -v12 & 3;
      v28 = (v12 + v27);
      if (__OFADD__(v12, v27))
      {
        goto LABEL_159;
      }

      v17 = __OFSUB__(&v13[-v12], v27);
      v29 = &v13[-v12 - v27];
      if (v17)
      {
        goto LABEL_160;
      }

      if (v29 < 0)
      {
        goto LABEL_152;
      }

      if (v29)
      {
        if (!v28)
        {
          goto LABEL_152;
        }

LABEL_64:
        v13 = v28 + v29;
        goto LABEL_65;
      }

      if (v28)
      {
        goto LABEL_64;
      }

      v13 = 0;
LABEL_65:
      v35 = v13 - v28 - 4;
      if (__OFSUB__(v13 - v28, 4))
      {
        goto LABEL_154;
      }

      if (v35 < 0)
      {
        goto LABEL_152;
      }

      v56 = v26;
      v36 = *v28;
      v37 = RawKeyPathComponent.Header.kind.getter(*v28);
      if ((v37 - 4) < 3)
      {
        goto LABEL_71;
      }

      if ((v37 - 1) < 2)
      {
        if ((~v36 & 0x7FFFFF) == 0)
        {
          v38 = 4;
          goto LABEL_72;
        }

LABEL_71:
        v38 = 0;
        goto LABEL_72;
      }

      v38 = 28;
      if ((v36 & 0x400000) == 0)
      {
        v38 = 20;
      }

      if ((v36 & 0x80000) != 0)
      {
        v46 = 6;
        if ((v36 & 0x400000) == 0)
        {
          v46 = 4;
        }

        v47 = &v28[v46 + 2];
        if ((v47 & 7) != 0)
        {
          goto LABEL_161;
        }

        v38 += ((v36 >> 1) & 8) + *v47 + 16;
        if (v38 < 0)
        {
          goto LABEL_152;
        }
      }

LABEL_72:
      v39 = v35 - v38;
      if (v35 - v38 < 0)
      {
        goto LABEL_152;
      }

      v40 = (v28 + 1);
      v41 = v28 + v38 + 4;
      v13 = (v40 + v35);
      if (v35 == v38)
      {
        v42 = 0;
        v12 = v41;
        goto LABEL_95;
      }

      if ((v41 & 7) != 0)
      {
        v43 = -v41 & 7;
        v44 = (v41 + v43);
        if (__OFADD__(v41, v43))
        {
          goto LABEL_163;
        }

        v45 = v39 - v43;
        if (v45 < 0)
        {
          goto LABEL_152;
        }

        if (v45)
        {
          if (!v44)
          {
            goto LABEL_152;
          }

LABEL_91:
          v13 = &v44[v45];
          goto LABEL_92;
        }

        if (v44)
        {
          goto LABEL_91;
        }

        v13 = 0;
      }

      else
      {
        v44 = v41;
      }

LABEL_92:
      if (__OFSUB__(v13 - v44, 8))
      {
        goto LABEL_158;
      }

      if (v13 - v44 - 8 < 0)
      {
        goto LABEL_152;
      }

      v12 = (v44 + 8);
      v42 = *v44;
LABEL_95:
      if (((v36 ^ v20) & 0x80000000) != 0)
      {
        return 0;
      }

      v55 = v42;
      RawKeyPathComponent.value.getter(v20, v24, v25, &v57);
      RawKeyPathComponent.value.getter(v36, v40, v41, &v64);
      v48 = v58 >> 61;
      if ((v58 >> 61) <= 2)
      {
        if (!v48)
        {
          if (v65 >> 61)
          {
            return 0;
          }

LABEL_106:
          if (v57 != v64)
          {
            return 0;
          }

          goto LABEL_147;
        }

        if (v48 == 1)
        {
          if (v65 >> 61 != 1)
          {
            return 0;
          }

          goto LABEL_106;
        }

        v49 = v65;
        if (v65 >> 61 != 2)
        {
          return 0;
        }

        goto LABEL_111;
      }

      if (v48 == 3)
      {
        v49 = v65;
        if (v65 >> 61 != 3)
        {
          return 0;
        }

LABEL_111:
        if (v57 != v64)
        {
          return 0;
        }

        if (v49)
        {
          if (v49 == 1)
          {
            if (v58 != 1)
            {
              return 0;
            }
          }

          else if (v58 != 2)
          {
            return 0;
          }
        }

        else if (v58)
        {
          return 0;
        }

        if (v62 && v68.i64[0])
        {
          v53 = (v62 + 16);
          if (((v62 + 16) & 7) != 0)
          {
            goto LABEL_161;
          }

          if (!*v53 || !v60 || !v67.i64[0])
          {
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          if (__OFSUB__(v61 - v60, v63))
          {
            goto LABEL_164;
          }

          if (((*v53)() & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_147;
      }

      if (v48 == 4)
      {
        v49 = v65;
        if (v65 >> 61 != 4)
        {
          return 0;
        }

        goto LABEL_111;
      }

      v50 = v61 | v60;
      v51 = v63 | v59;
      if (v58 != 0xA000000000000000 || v50 | v57 | v62 | v51)
      {
        if (v58 == 0xA000000000000000 && v57 == 1 && !(v50 | v62 | v51))
        {
          if (v65 >> 61 != 5)
          {
            return 0;
          }

          result = 0;
          if (v65 != 0xA000000000000000 || v64 != 1)
          {
            return result;
          }
        }

        else
        {
          if (v65 >> 61 != 5)
          {
            return 0;
          }

          result = 0;
          if (v65 != 0xA000000000000000 || v64 != 2)
          {
            return result;
          }
        }

        v54 = vorrq_s8(v67, v68);
        if (*&vorr_s8(*v54.i8, *&vextq_s8(v54, v54, 8uLL)) | v66)
        {
          return result;
        }
      }

      else
      {
        if (v65 >> 61 != 5)
        {
          return 0;
        }

        result = 0;
        if (v65 != 0xA000000000000000)
        {
          return result;
        }

        v52 = vorrq_s8(v67, v68);
        if (*&vorr_s8(*v52.i8, *&vextq_s8(v52, v52, 8uLL)) | v66 | v64)
        {
          return result;
        }
      }

LABEL_147:
      if (!v56)
      {
        return v55 == 0;
      }

      result = 0;
      if (!v55 || v56 != v55)
      {
        return result;
      }
    }

    if (!v16)
    {
      goto LABEL_152;
    }

LABEL_24:
    v5 = v16 + v18;
    goto LABEL_25;
  }

  return !v8 || v9 == v8;
}

BOOL specialized static __CocoaSet.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v7, v8))
  {
    goto LABEL_11;
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!swift_dynamicCastClass(a3, v8))
  {
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v7 + 16) != *(a3 + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2 == a4;
}

BOOL specialized _checkIfInEmojiSequence(at:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(a1, a2, a3);
  if ((v6 & 1) == 0)
  {
    v8 = v5;
    while (1)
    {
      v9 = closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(v8, a2, a3);
      if (v11)
      {
        break;
      }

      v12 = v9;
      result = 0;
      v13 = vdupq_n_s64(v12);
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(vaddq_s64(v13, xmmword_18071E010), xmmword_18071E050), vcgtq_u64(vaddq_s64(v13, xmmword_18071E020), xmmword_18071E060)), vuzp1q_s32(vcgtq_u64(vaddq_s64(v13, xmmword_18071E030), xmmword_18071E070), vcgtq_u64(vaddq_s64(v13, xmmword_18071E040), xmmword_18071E080))))) & 1) != 0 || v12 == 8205 || v12 <= 0x7E)
      {
        return result;
      }

      if (v12 - 131070 > 0xFFFFFFFFFFFFFC01)
      {
        return 1;
      }

      if (v12 - 921600 > 0xFFFFFFFFFFFFF1EFLL)
      {
        return 0;
      }

      v8 = v10;
      GraphemeBreakProperty = _swift_stdlib_getGraphemeBreakProperty(v12);
      if (GraphemeBreakProperty != 1)
      {
        return (GraphemeBreakProperty - 4) <= 1;
      }
    }
  }

  return 0;
}

uint64_t specialized _countRIs(at:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(a1, a2, a3);
  if (v6)
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(v5, a2, a3);
    if (v10)
    {
      break;
    }

    v11 = vdupq_n_s64(v9);
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(vaddq_s64(v11, xmmword_18071E010), xmmword_18071E050), vcgtq_u64(vaddq_s64(v11, xmmword_18071E020), xmmword_18071E060)))) & 1) != 0 || v9 - 4608 > 0xFFFFFFFFFFFFFFA7 || v9 - 55292 > 0xFFFFFFFFFFFFFFCELL || v9 - 55204 > 0xFFFFFFFFFFFFD45BLL || v9 == 8205 || v9 <= 0x7E)
    {
      break;
    }

    if (v9 - 127488 <= 0xFFFFFFFFFFFFFFE5)
    {
      goto LABEL_15;
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_15:
      if (v9 - 131070 <= 0xFFFFFFFFFFFFFC01 && v9 - 921600 <= 0xFFFFFFFFFFFFF1EFLL)
      {
        _swift_stdlib_getGraphemeBreakProperty(v9);
      }

      return v8 & 1;
    }
  }

  return v8 & 1;
}

uint64_t specialized static KeyPathComponent.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = v4 >> 61;
  if ((v4 >> 61) > 2)
  {
    if (v9 == 3)
    {
      v10 = *(a2 + 8);
      if (v10 >> 61 != 3)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v9 == 4)
    {
      v10 = *(a2 + 8);
      if (v10 >> 61 != 4)
      {
        return 0;
      }

      goto LABEL_15;
    }

    v17 = a1[2];
    v18 = v6 | v5;
    v19 = v8 | v17;
    if (v4 != 0xA000000000000000 || v18 | v3 | v7 | v19)
    {
      if (v4 == 0xA000000000000000 && v3 == 1 && !(v18 | v7 | v19))
      {
        v22 = *(a2 + 8);
        if (v22 >> 61 != 5 || v22 != 0xA000000000000000 || *a2 != 1)
        {
          return 0;
        }
      }

      else
      {
        v23 = *(a2 + 8);
        if (v23 >> 61 != 5 || v23 != 0xA000000000000000 || *a2 != 2)
        {
          return 0;
        }
      }

      v24 = vorrq_s8(*(a2 + 24), *(a2 + 40));
      if (*&vorr_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL)) | *(a2 + 16))
      {
        return 0;
      }
    }

    else
    {
      v20 = *(a2 + 8);
      if (v20 >> 61 != 5)
      {
        return 0;
      }

      if (v20 != 0xA000000000000000)
      {
        return 0;
      }

      v21 = vorrq_s8(*(a2 + 24), *(a2 + 40));
      if (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *(a2 + 16) | *a2)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!v9)
  {
    if (!(*(a2 + 8) >> 61))
    {
      return v3 == *a2;
    }

    return 0;
  }

  if (v9 == 1)
  {
    if (*(a2 + 8) >> 61 != 1)
    {
      return 0;
    }

    return v3 == *a2;
  }

  v10 = *(a2 + 8);
  if (v10 >> 61 != 2)
  {
    return 0;
  }

LABEL_15:
  v12 = (v10 ^ v4);
  if (v3 != *a2 || v12 != 0)
  {
    return 0;
  }

  v11 = 1;
  if (!v7 || !*(a2 + 40))
  {
    return v11;
  }

  v14 = *(a2 + 24);
  v15 = ComputedArgumentWitnessesPtr.equals.getter(v7);
  if (!v5 || !v14)
  {
LABEL_49:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__OFSUB__(v6 - v5, v8))
  {
    __break(1u);
    goto LABEL_49;
  }

  return v15(v5, v14, v6 - v5 - v8);
}

BOOL specialized static __CocoaDictionary.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v7, v8))
  {
    goto LABEL_11;
  }

  if (a3 >= 0)
  {
    a3 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  if (!swift_dynamicCastClass(a3, v8))
  {
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v7 + 16) != *(a3 + 16))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2 == a4;
}

uint64_t specialized __CocoaDictionary.Index.key.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v3, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(v3 + 24);
  if (*(v5 + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(v5 + 8 * a2 + 24);
}

uint64_t specialized __CocoaDictionary.key(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = type metadata accessor for __CocoaDictionary.Index.Storage();
  if (!swift_dynamicCastClass(v5, v6))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (*(v5 + 16) != a3 || (v7 = *(v5 + 24), *(v7 + 16) <= a2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(v7 + 8 * a2 + 24);
}

uint64_t specialized __CocoaSet.Index.element.getter(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = type metadata accessor for __CocoaSet.Index.Storage();
  if (!swift_dynamicCastClass(v3, v4))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(v3 + 24);
  if (*(v5 + 16) <= a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *(v5 + 8 * a2 + 24);
}

Swift::UInt64 specialized String.UnicodeScalarView.subscript.getter(Swift::UInt64 result, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = result & 0xC;
  v6 = 4 << v4;
  v7 = a2._rawBits & 0xC;
  if ((result & 1) == 0 || v5 == v6 || (a2._rawBits & 1) == 0 || v7 == v6)
  {
    if (v7 == v6)
    {
      v10 = result;
      v11 = a3;
      v12 = a4;
      v13._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
      a3 = v11;
      a4 = v12;
      a2._rawBits = v13._rawBits;
      result = v10;
      if (v5 != v6)
      {
        goto LABEL_13;
      }
    }

    else if (v5 != v6)
    {
      goto LABEL_13;
    }

    rawBits = a2._rawBits;
    v15 = a3;
    v16 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a2._rawBits = rawBits;
    a3 = v15;
    a4 = v16;
LABEL_13:
    v9 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a4) & 0xF;
    }

    if (a2._rawBits >> 14 > 4 * v9 || a2._rawBits >> 14 < result >> 14)
    {
LABEL_20:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (result)
    {
      if (a2._rawBits)
      {
        return result;
      }
    }

    else
    {
      v17 = result;
      v18 = a2._rawBits;
      v19._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
      a2._rawBits = v18;
      result = v17 & 0xC | v19._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if (v18)
      {
        return result;
      }
    }

    v20 = result;
    _StringGuts.scalarAlignSlow(_:)(a2);
    return v20;
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 < a2._rawBits >> 16)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::UInt64 specialized String.UTF8View.subscript.getter(Swift::UInt64 result, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  if ((a2._rawBits & 0xC) == 4 << v4)
  {
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v8;
    a4 = v9;
    a2._rawBits = v10._rawBits;
    result = v7;
  }

  if ((result & 0xC) == v5)
  {
    rawBits = a2._rawBits;
    v12 = a3;
    v13 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a2._rawBits = rawBits;
    a3 = v12;
    a4 = v13;
  }

  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  if (a2._rawBits >> 14 > 4 * v6 || a2._rawBits >> 14 < result >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

Swift::UInt64 specialized Substring.UTF8View.subscript.getter(Swift::UInt64 result, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  if ((a2._rawBits & 0xC) == 4 << v6)
  {
    v8 = result;
    v9 = a3;
    v10 = a4;
    v11._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v9;
    a4 = v10;
    a2._rawBits = v11._rawBits;
    result = v8;
  }

  if ((result & 0xC) == v7)
  {
    rawBits = a2._rawBits;
    v13 = a3;
    v14 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a3 = v13;
    a2._rawBits = rawBits;
    a4 = v14;
  }

  if (result >> 14 < a3 >> 14 || a2._rawBits >> 14 < result >> 14 || a4 >> 14 < a2._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t specialized Substring.subscript.getter(unint64_t result, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = result & 0xC;
  v8 = 4 << v6;
  v9 = a2._rawBits & 0xC;
  if ((result & 1) == 0 || v7 == v8 || (a2._rawBits & 1) == 0 || v9 == v8)
  {
    if (v9 == v8)
    {
      v10 = result;
      v11 = a3;
      v12 = a4;
      v13._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
      a3 = v11;
      a4 = v12;
      a2._rawBits = v13._rawBits;
      result = v10;
      if (v7 != v8)
      {
        goto LABEL_12;
      }
    }

    else if (v7 != v8)
    {
LABEL_12:
      if (result >> 14 < a3 >> 14 || a2._rawBits >> 14 < result >> 14 || a4 >> 14 < a2._rawBits >> 14)
      {
LABEL_18:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (a2._rawBits)
      {
        if (result)
        {
          return result;
        }
      }

      else
      {
        v17 = result;
        _StringGuts.scalarAlignSlow(_:)(a2);
        result = v17;
        if (v17)
        {
          return result;
        }
      }

      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    }

    rawBits = a2._rawBits;
    v15 = a3;
    v16 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
    a3 = v15;
    a4 = v16;
    a2._rawBits = rawBits;
    goto LABEL_12;
  }

  if (result >> 14 < a3 >> 14 || a4 >> 14 < a2._rawBits >> 14)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t specialized _SliceBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a3;
}

uint64_t specialized ArraySlice.subscript.getter(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  ArraySlice._checkIndex(_:)(a1);
  ArraySlice._checkIndex(_:)(a2);

  return specialized _SliceBuffer.subscript.getter(a1, a2, a3);
}

uint64_t specialized ContiguousArray.subscript.getter(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  ContiguousArray._checkIndex(_:)(a1);
  ContiguousArray._checkIndex(_:)(a2);
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a3;
}

uint64_t specialized _ContiguousArrayBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a3;
}

uint64_t specialized static _Int128.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __CFADD__(a1, a3);
  result = a1 + a3;
  v6 = v4;
  if (__OFADD__(a2, a4) || v6 && a2 + a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized static _UInt128.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __CFADD__(a1, a3);
  result = a1 + a3;
  v6 = v4;
  if (__CFADD__(a2, a4) || v6 && a2 + a4 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

unint64_t specialized static _Int128.- infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = __OFSUB__(a2, a4);
  v5 = a2 - a4;
  v6 = v4;
  v7 = a1 >= a3;
  result = a1 - a3;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 == 0x8000000000000000)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

unint64_t specialized static _UInt128.- infix(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a2 >= a4;
  v5 = a2 - a4;
  v6 = !v4;
  v4 = a1 >= a3;
  result = a1 - a3;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v5)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
LABEL_8:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return result;
}

uint64_t specialized CollectionDifference.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized RandomAccessCollection<>.distance(from:to:)(unint64_t a1, unint64_t a2)
{
  if (a1 >= 2 || a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2 - a1;
}

{
  if (a1 >= 3 || a2 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2 - a1;
}

uint64_t specialized _CocoaArrayWrapper._copyContents(subRange:initializing:)(uint64_t result, uint64_t a2, uint64_t a3, id a4)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = result;
    [a4 getObjects:a3 range:{result, a2 - result}];
    if (v6 != a2)
    {
      if (v6 >= a2)
      {
LABEL_8:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v4 += 8;
      while (1)
      {
        v7 = *(v4 - 8);
        if (a2 - 1 == v6)
        {
          break;
        }

        ++v6;
        swift_unknownObjectRetain(v7);
        v4 += 8;
        if (v6 >= a2)
        {
          goto LABEL_8;
        }
      }

      swift_unknownObjectRetain(v7);
    }

    return v4;
  }

  return result;
}

uint64_t specialized static _Int128.&<< infix(_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x7F) != 0)
  {
    v3 = a1 << a3;
  }

  else
  {
    v3 = a1;
  }

  if ((a3 & 0x7Fu) <= 0x3FuLL)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized UnsafeBufferPointer.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a1;
  if (__OFSUB__(a3, a1))
  {
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v5 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v5)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t specialized Array.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 >= 2 || a3 >= 2)
  {
LABEL_3:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = a3 - a1;
  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_11:
  v5 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v5)
  {
    __break(1u);
  }

  else if (result >= 2)
  {
    goto LABEL_3;
  }

  return result;
}

{
  if (a1 >= 3 || a3 >= 3)
  {
LABEL_3:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = a3 - a1;
  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_11:
  v5 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v5)
  {
    __break(1u);
  }

  else if (result >= 3)
  {
    goto LABEL_3;
  }

  return result;
}

unint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  else if (result >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  else if (result >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t Substring.description.getter(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 || a2 >> 16 != v5)
  {
    return specialized static String._copying(_:)(a1, a2, a3, a4);
  }

  a4;
  return v4;
}

char *specialized _BidirectionalCollectionBox.init(_base:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*(*v2 + 376) + 8);
  v6 = *(*v2 + 368);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  (*(*(v6 - 1) + 16))(&v2[*(v4 + 384)], a1, v6);
  (*(v5 + 64))(v6, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v13);
  v15 = swift_allocObject(v14, *(v14 + 48), *(v14 + 52));
  v16 = *(v9 + 32);
  v16(&v15[*(*v15 + 96)], v11, v8);
  (*(v5 + 72))(v6, v5);
  v17 = swift_allocObject(v14, *(v14 + 48), *(v14 + 52));
  v16(&v17[*(*v17 + 96)], v11, v8);
  *(v2 + 2) = v15;
  *(v2 + 3) = &protocol witness table for _IndexBox<A>;
  *(v2 + 4) = v17;
  *(v2 + 5) = &protocol witness table for _IndexBox<A>;
  return v2;
}

char *specialized _RandomAccessCollectionBox.init(_base:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*(*(*v2 + 384) + 8) + 8);
  v6 = *(*v2 + 376);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  (*(*(v6 - 1) + 16))(&v2[*(v4 + 392)], a1, v6);
  (*(v5 + 64))(v6, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v13);
  v15 = swift_allocObject(v14, *(v14 + 48), *(v14 + 52));
  v16 = *(v9 + 32);
  v16(&v15[*(*v15 + 96)], v11, v8);
  (*(v5 + 72))(v6, v5);
  v17 = swift_allocObject(v14, *(v14 + 48), *(v14 + 52));
  v16(&v17[*(*v17 + 96)], v11, v8);
  *(v2 + 2) = v15;
  *(v2 + 3) = &protocol witness table for _IndexBox<A>;
  *(v2 + 4) = v17;
  *(v2 + 5) = &protocol witness table for _IndexBox<A>;
  return v2;
}

char *specialized _CollectionBox.init(_base:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 352);
  v6 = *(*v2 + 344);
  swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  (*(*(v6 - 1) + 16))(&v2[*(v4 + 360)], a1, v6);
  (*(v5 + 64))(v6, v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v6, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v14 = type metadata accessor for _IndexBox(0, v8, AssociatedConformanceWitness, v13);
  v15 = swift_allocObject(v14, *(v14 + 48), *(v14 + 52));
  v16 = *(v9 + 32);
  v16(&v15[*(*v15 + 96)], v11, v8);
  (*(v5 + 72))(v6, v5);
  v17 = swift_allocObject(v14, *(v14 + 48), *(v14 + 52));
  v16(&v17[*(*v17 + 96)], v11, v8);
  *(v2 + 2) = v15;
  *(v2 + 3) = &protocol witness table for _IndexBox<A>;
  *(v2 + 4) = v17;
  *(v2 + 5) = &protocol witness table for _IndexBox<A>;
  return v2;
}

uint64_t specialized _UInt128.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), unint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  result = a4(v10, a2, a3);
  if (v13)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, a5);
  }

  return result;
}

uint64_t specialized UInt128.init<A>(_:)(uint64_t a1, const char *a2, void *a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  result = UInt128.init<A>(exactly:)(v6, a2, a3);
  if (v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000052, 0x8000000180671820, "Swift/UInt128.swift", 0x13uLL, 2, 0x9FuLL);
  }

  return result;
}

uint64_t specialized Int128.init<A>(_:)(uint64_t a1, const char *a2, void *a3)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  result = Int128.init<A>(exactly:)(v6, a2, a3);
  if (v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000051, 0x80000001806718B0, "Swift/Int128.swift", 0x12uLL, 2, 0x9FuLL);
  }

  return result;
}

void *specialized AnyBidirectionalCollection._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(*a3 + 152))();
  v8 = type metadata accessor for AnyIterator(255, a4, v6, v7);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AnyIterator<A>, v8, v9);
  v12 = type metadata accessor for _IteratorBox(0, v8, WitnessTable, v11);
  result = swift_allocObject(v12, 0x18, 7uLL);
  result[2] = v5;
  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, const char *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v11 = *(AssociatedConformanceWitness + 24);
  if ((v11(a2, a1, v9, AssociatedConformanceWitness) & 1) == 0 || (v13 = type metadata accessor for ClosedRange(0, v9, AssociatedConformanceWitness, v12), result = v11(a1, a2 + *(v13 + 36), v9, AssociatedConformanceWitness), (result & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  if (((*(AssociatedConformanceWitness + 24))(a2, a1, v9, AssociatedConformanceWitness) & 1) == 0 || (v12 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v11), result = (*(AssociatedConformanceWitness + 16))(a1, a2 + *(v12 + 36), v9, AssociatedConformanceWitness), (result & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for Collection, associated conformance descriptor for Collection.Collection.Index: Comparable);
  v11 = *(AssociatedConformanceWitness + 24);
  if ((v11(a2, a1, v9, AssociatedConformanceWitness) & 1) == 0 || (v13 = type metadata accessor for Range(0, v9, AssociatedConformanceWitness, v12), result = v11(a1 + *(v13 + 36), a2 + *(v13 + 36), v9, AssociatedConformanceWitness), (result & 1) == 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized Range<>.distance(from:to:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Strideable, associated type descriptor for Strideable.Stride);
  v10 = v9;
  v11 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(a4 + 40))(a2, a3, a4);
  v14 = _ss11numericCastyq_xSzRzSzR_r0_lFxSiSzRzSiRs_r0_lIetnd_Tpq5_0(v13, v10, *(a5 + 8));
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t specialized static AnyIndex.== infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType(a1);
  v9 = (*(a2 + 8))(ObjectType, a2);
  v10 = swift_getObjectType(a3);
  if (v9 != (*(a4 + 8))(v10, a4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = swift_getObjectType(a1);
  return (*(a2 + 24))(a3, a4, v11, a2) & 1;
}

uint64_t specialized static AnyHashable.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v3);
  (*(v4 + 8))(v11, v3, v4);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_0Tm(v11, v12);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_0Tm(a2, v7);
  (*(v8 + 8))(v10, v7, v8);
  LOBYTE(a2) = (*(v6 + 16))(v10, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return a2 & 1;
}

uint64_t specialized static AnyIndex.< infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType(a1);
  v9 = (*(a2 + 8))(ObjectType, a2);
  v10 = swift_getObjectType(a3);
  if (v9 != (*(a4 + 8))(v10, a4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = swift_getObjectType(a1);
  return (*(a2 + 32))(a3, a4, v11, a2) & 1;
}

uint64_t specialized UInt128.init<A>(truncatingIfNeeded:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 64;
  v11 = *(v10 + 240);
  v13 = lazy protocol witness table accessor for type Int and conformance Int(v7, v12, v10);
  v11(a1, &v17, &type metadata for Int, v13, a2, a3);
  v14 = *(a3 + 120);
  v14(a2, a3);
  (*(v6 + 8))(v9, a2);
  return (v14)(a2, a3);
}

void *specialized static _Int128.+= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = __CFADD__(*result, a2);
  v5 = __OFADD__(v3, a3);
  v6 = v3 + a3;
  if (v5 || (v4 ? (v7 = v6 == 0x7FFFFFFFFFFFFFFFLL) : (v7 = 0), v7))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result += a2;
  result[1] = v6 + v4;
  return result;
}

void *specialized static _UInt128.+= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = __CFADD__(*result, a2);
  v5 = __CFADD__(v3, a3);
  v6 = v3 + a3;
  if (v5 || (v4 ? (v7 = v6 == -1) : (v7 = 0), v7))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result += a2;
  result[1] = v6 + v4;
  return result;
}

char *partial apply for closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *a1, uint64_t a2)
{
  return partial apply for closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2);
}

{
  return closure #1 in _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, *(v2 + 48), *(v2 + 56), *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

char *specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4, unint64_t *a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(*(a5 - 1) + 72);
  if (v5 < 0 || ((v6 = *(*(a5 - 1) + 80), v8 = (a4 + ((v6 + 32) & ~v6) + v7 * a1), v9 = v7 * v5, v10 = &__dst[v9], v11 = &v8[v9], v8 < v10) ? (v12 = v11 > __dst) : (v12 = 0), v12))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_arrayInitWithCopy(__dst, v8, v5, a5);
  return v10;
}

char *specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5, unsigned __int8 *a6)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 0 || ((v8 = (a4 + 40 * a1 + 32), v9 = &a3[40 * v6], v8 < v9) ? (v10 = &v8[40 * v6] > a3) : (v10 = 0), v10))
  {
LABEL_9:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  swift_arrayInitWithCopy(a3, v8, v6, v11);
  return v9;
}

uint64_t specialized _ArrayBuffer.owner.getter(uint64_t a1, uint64_t *a2)
{
  if (_swift_isClassOrObjCExistentialType(a2, a2) && (a1 < 0 || (a1 & 0x4000000000000000) != 0))
  {
    if (a1 < 0)
    {
      return a1;
    }

    else
    {
      return a1 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else if (_swift_isClassOrObjCExistentialType(a2, a2))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    return a1;
  }
}

uint64_t specialized static _HashTable.scale(forCapacity:)(uint64_t result)
{
  if (result <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = result;
  }

  v2 = ceil(v1 / 0.75);
  if (v2 >= INFINITY && v2 <= INFINITY || v2 <= -9.22337204e18 || v2 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = __OFADD__(v1, 1);
  v4 = v1 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v4 <= v2)
    {
      v4 = v2;
    }

    v5 = 64 - __clz(v4 - 1);
    if (v4 <= 2)
    {
      return 1;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t static _DictionaryStorage.allocate(capacity:)(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t))
{
  if (result <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  v3 = ceil(v2 / 0.75);
  if (v3 >= INFINITY && v3 <= INFINITY || v3 <= -9.22337204e18 || v3 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = __OFADD__(v2, 1);
  v5 = v2 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v5 <= v3)
    {
      v5 = v3;
    }

    v6 = 64 - __clz(v5 - 1);
    if (v5 <= 2)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    return a2(v7, 0x100000000, 0, 1);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  return partial apply for thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<A>) -> (@out A1, @error @owned Error)(a1, a2, a3);
}

{
  result = (*(v3 + 32))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t partial apply for closure #1 in Array.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 32))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || (v5 = (a4 + 16 * a1 + 32), v6 = &__dst[16 * v4], v5 < v6) && &v5[16 * v4] > __dst)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_arrayInitWithCopy(__dst, v5, v4, &type metadata for String);
  return v6;
}

{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 0 || (v5 = (a4 + 4 * a1 + 32), v6 = 4 * v4, v7 = &__dst[v6], v5 < &__dst[v6]) && &v5[v6] > __dst)
  {
LABEL_7:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  memcpy(__dst, v5, v6);
  return v7;
}

Swift::String::Index specialized Collection.count.getter(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a1)._rawBits;
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(a2)._rawBits;
  result._rawBits = rawBits;
  v10 = rawBits >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(after:)(result)._rawBits;
      }

      else
      {
        v14 = result._rawBits >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter(a3, a4);
          }

          v16 = v15[v14];
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result._rawBits = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result._rawBits >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result._rawBits = String.UnicodeScalarView._foreignIndex(before:)(result)._rawBits;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result._rawBits >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result._rawBits >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result._rawBits;
            v20 = _StringObject.sharedUTF8.getter(a3, a4);
            result._rawBits = v27;
          }

          v21 = 0;
          v22 = v20 + (result._rawBits >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result._rawBits = (result._rawBits - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result._rawBits >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

Swift::UInt64 specialized LazyMapSequence<>.index(after:)(Swift::String::Index a1, uint64_t a2, unint64_t a3)
{
  v5._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
  if ((a3 & 0x1000000000000000) != 0)
  {

    return String.UnicodeScalarView._foreignIndex(after:)(v5)._rawBits;
  }

  else
  {
    v6 = v5._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v12[0] = a2;
      v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v8 = *(v12 + v6);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(a2, a3);
      }

      v8 = v7[v6];
    }

    v9 = v8;
    v10 = __clz(v8 ^ 0xFF) - 24;
    if (v9 >= 0)
    {
      LOBYTE(v10) = 1;
    }

    return ((v6 + v10) << 16) | 5;
  }
}

Swift::UInt64 specialized LazyMapSequence<>.formIndex(after:)(Swift::String::Index *a1, uint64_t a2, unint64_t a3)
{
  v6._rawBits = _StringGuts.validateScalarIndex(_:)(a1->_rawBits)._rawBits;
  if ((a3 & 0x1000000000000000) != 0)
  {
    result = String.UnicodeScalarView._foreignIndex(after:)(v6)._rawBits;
  }

  else
  {
    v7 = v6._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v13[0] = a2;
      v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v9 = *(v13 + v7);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v8 = _StringObject.sharedUTF8.getter(a2, a3);
      }

      v9 = v8[v7];
    }

    v10 = v9;
    v11 = __clz(v9 ^ 0xFF) - 24;
    if (v10 >= 0)
    {
      LOBYTE(v11) = 1;
    }

    result = ((v7 + v11) << 16) | 5;
  }

  a1->_rawBits = result;
  return result;
}