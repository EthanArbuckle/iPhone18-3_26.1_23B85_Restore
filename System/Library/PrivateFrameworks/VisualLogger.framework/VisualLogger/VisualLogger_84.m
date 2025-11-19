void sub_2717BDE18(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288113118;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717BDFF0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288113098;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BE1C4@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288113098;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BE368@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 4;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288113018;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BE4F4@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288113018;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BE698@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288113018;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BE83C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112F98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BEA14@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v28 = 4;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288112F98;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BEBB4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112F18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BED70@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112F18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BEF04(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v5 = v4;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v8 = (v6 * *&memptr[4]);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | (v8 << 32);
  v10 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 3) >> 32 == 0;
  if (__PAIR64__(v5, 3) >> 32)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 3) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112F18;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717BF0D4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112E98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BF2A8@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112E98;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BF444@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 3;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112E18;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BF5D0@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112E18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717BF76C@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *v26 = 3;
  *&v26[4] = v4;
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  *v26 = 3;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 | (v6 << 32);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288112E18;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BF908(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  if (((4 * v10) & (4 * v10 - 1)) != 0)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112D18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BFADC@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *a1;
  if (v5)
  {
    v6 = 0;
  }

  *v28 = 3;
  *&v28[4] = v6;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v8) = v7 * v6;
  *v28 = 3;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 | (v8 << 32);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288112D18;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BFC78(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112C98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717BFE34@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112C98;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717BFFC8(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v5 = v4;
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  v7 = HIDWORD(*&memptr[4]);
  if (HIDWORD(*&memptr[4]))
  {
    v8 = (v6 * *&memptr[4]);
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 | (v8 << 32);
  v10 = __PAIR64__(*&memptr[4], 3);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 3) >> 32 == 0;
  if (__PAIR64__(v5, 3) >> 32)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 3) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112C98;
  *(a2 + 8) = v10;
  *(a2 + 16) = v7;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717C0198(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112C18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C036C@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112C18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C0508@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 3;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112B98;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C0694@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  *v27 = 3;
  *&v27[4] = v5;
  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v7) = v6 * v5;
  *v27 = 3;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 | (v7 << 32);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112B98;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C0830@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *v26 = 3;
  *&v26[4] = v4;
  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  *v26 = 3;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 | (v6 << 32);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288112B98;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C09CC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 3;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  if (((4 * v10) & (4 * v10 - 1)) != 0)
  {
    v15 = 3;
  }

  else
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112B18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C0BA0@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *a1;
  if (v5)
  {
    v6 = 0;
  }

  *v28 = 3;
  *&v28[4] = v6;
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v8) = v7 * v6;
  *v28 = 3;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 | (v8 << 32);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288112B18;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C0D3C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112A98;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C0EF8@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112A98;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C1094(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112A98;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717C126C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112A18;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C1440@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112A18;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C15E4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 4;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112998;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C1770@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112998;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C1914@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288112998;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C1AB8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112918;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C1C90@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v28 = 4;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288112918;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C1E30(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112898;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C1FEC@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112898;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C2188(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112898;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717C2360(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112798;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C2534@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112798;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C26D8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 4;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112718;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C2864@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112718;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C2A08@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288112718;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C2BAC(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112698;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C2D84@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v28 = 4;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288112698;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C2F24(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112618;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C30E0@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112618;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C327C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112618;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717C3454(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112598;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C3628@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112598;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C37CC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 4;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112518;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C3958@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112518;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C3AFC@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288112518;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C3CA0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112498;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C3E78@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v28 = 4;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288112498;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C4018(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = v10 - 1;
  v15 = (v13 * HIDWORD(v5));
  if ((v10 & (v10 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * HIDWORD(v5)), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112418;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v9;
  *(a2 + 108) = HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C41D4@<D0>(_DWORD *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if ((v7 & (v7 - 1)) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v7;
  }

  sub_2717D4B20(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112418;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C4370(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v5 = v4;
  v6 = 4 * (v4 != 0);
  v7 = v6 * v4;
  if (HIDWORD(v5))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v6 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  v10 = __PAIR64__(*&memptr[4], 4);
  *memptr = 1;
  *&memptr[4] = v9;
  v11 = *memptr;
  v12 = __PAIR64__(v5, 4) >> 32 == 0;
  if (__PAIR64__(v5, 4) >> 32)
  {
    v13 = HIDWORD(v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - 1;
  v15 = (v13 * v8);
  if ((v8 & (v8 - 1)) != 0)
  {
    v14 = 0;
  }

  v16 = v14 | (v14 >> 1) | ((v14 | (v14 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v15)
  {
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, (v13 * v8), 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, (v13 * v8));
    }

    v21 = *memptr;
    v12 = __PAIR64__(v5, 4) >> 32 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (HIDWORD(v5))
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  *a2 = &unk_288112418;
  *(a2 + 8) = v10;
  *(a2 + 16) = HIDWORD(v5);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v10;
  }

  *(a2 + 20) = v11;
  *(a2 + 28) = v8;
  *(a2 + 32) = v5;
  *(a2 + 40) = v9;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v15;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = v11;
  *(a2 + 108) = v8;
  v24 = *MEMORY[0x277D85DE8];
}

void sub_2717C4548(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 2 * (v13 * HIDWORD(v5));
  if (((2 * v10) & (2 * v10 - 1)) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 2 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 2 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112398;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (2 * v9) & 0xFFFFFFFEFFFFFFFELL;
  *(a2 + 108) = 2 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C471C@<D0>(_DWORD *a1@<X1>, unsigned __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5090(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112398;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C48C0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 0;
  }

  *&v25[4] = v5;
  v6 = HIDWORD(v4);
  *v25 = 4;
  v7 = *v25;
  v8 = HIDWORD(v5);
  *v25 = 1;
  *&v25[4] = v4;
  v9 = *v25;
  *v25 = v7;
  *&v25[12] = v9;
  *&v25[20] = HIDWORD(v4);
  *&v25[24] = v5;
  *&v26 = v4;
  BYTE8(v26) = 0;
  BYTE4(v27) = 0;
  v23 = v9;
  v24 = HIDWORD(v4);
  if (HIDWORD(v7))
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v7;
  }

  v21 = v13;
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v22 = v14;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 2 * v6;
  }

  sub_2717D5BBC(v28, &v21, &v23, 1, 0, 0, v15);
  v16 = *&v25[16];
  *(a2 + 8) = *v25;
  *a2 = &unk_288112318;
  *(a2 + 24) = v16;
  *(a2 + 40) = v26;
  v17 = v28[0];
  *(a2 + 56) = v27;
  *(a2 + 64) = v17;
  v18 = v28[2];
  *(a2 + 72) = v28[1];
  *(a2 + 80) = v18;
  *(a2 + 104) = v30;
  result = *&v29;
  *(a2 + 88) = v29;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C4A4C@<D0>(_DWORD *a1@<X1>, __int16 *a2@<X2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v4 = *a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *a1;
  if (v4)
  {
    v5 = 0;
  }

  v6 = 4 * (v5 != 0);
  LODWORD(v7) = v6 * v5;
  *v27 = 4;
  *&v27[4] = v5;
  v8 = *v27;
  v9 = HIDWORD(v5);
  if (HIDWORD(*v27))
  {
    v10 = *v27 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v9)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12 = v6 & 0x3FFFFFFFFLL | ((v7 >> 2) << 34);
  *v27 = 1;
  *&v27[4] = v12;
  v13 = *v27;
  *v27 = v8;
  *&v27[8] = HIDWORD(v5);
  *&v27[12] = v13;
  *&v27[20] = v7;
  *&v27[24] = v5;
  *&v28 = v12;
  BYTE8(v28) = 0;
  BYTE4(v29) = 0;
  v25 = v13;
  v26 = v7;
  if (v9)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (((2 * v7) & (2 * v7 - 1)) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 2 * v7;
  }

  sub_2717D5BBC(v30, &v23, &v25, 1, a2, 1, v17);
  v18 = *&v27[16];
  *(a3 + 8) = *v27;
  *a3 = &unk_288112318;
  *(a3 + 24) = v18;
  *(a3 + 40) = v28;
  v19 = v30[0];
  *(a3 + 56) = v29;
  *(a3 + 64) = v19;
  v20 = v30[2];
  *(a3 + 72) = v30[1];
  *(a3 + 80) = v20;
  *(a3 + 104) = v32;
  result = *&v31;
  *(a3 + 88) = v31;
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2717C4BF0@<D0>(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v3 = *a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a1;
  if (v3)
  {
    v4 = 0;
  }

  v5 = 4 * (v4 != 0);
  LODWORD(v6) = v5 * v4;
  *v26 = 4;
  *&v26[4] = v4;
  v7 = *v26;
  v8 = HIDWORD(v4);
  if (HIDWORD(*v26))
  {
    v9 = *v26 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v11 = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
  *v26 = 1;
  *&v26[4] = v11;
  v12 = *v26;
  *v26 = v7;
  *&v26[8] = HIDWORD(v4);
  *&v26[12] = v12;
  *&v26[20] = v6;
  *&v26[24] = v4;
  *&v27 = v11;
  BYTE8(v27) = 0;
  BYTE4(v28) = 0;
  v24 = v12;
  v25 = v6;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v7;
  }

  v22 = v14;
  if (v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = v8;
  }

  v23 = v15;
  if (((2 * v6) & (2 * v6 - 1)) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 2 * v6;
  }

  sub_2717D5BBC(v29, &v22, &v24, 1, 0, 0, v16);
  v17 = *&v26[16];
  *(a2 + 8) = *v26;
  *a2 = &unk_288112318;
  *(a2 + 24) = v17;
  *(a2 + 40) = v27;
  v18 = v29[0];
  *(a2 + 56) = v28;
  *(a2 + 64) = v18;
  v19 = v29[2];
  *(a2 + 72) = v29[1];
  *(a2 + 80) = v19;
  *(a2 + 104) = v31;
  result = *&v30;
  *(a2 + 88) = v30;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2717C4D94(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  *memptr = 4;
  *&memptr[4] = v4;
  v6 = v4;
  v7 = *memptr;
  v8 = HIDWORD(v4);
  *memptr = 1;
  *&memptr[4] = v5;
  v9 = *memptr;
  v10 = HIDWORD(v5);
  if (HIDWORD(v7))
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = HIDWORD(v4);
  }

  v14 = 4 * (v13 * HIDWORD(v5));
  v15 = 3;
  if (((4 * v10) & (4 * v10 - 1)) == 0)
  {
    v15 = 4 * v10 - 1;
  }

  v16 = v15 | (v15 >> 1) | ((v15 | (v15 >> 1)) >> 2);
  v17 = v16 | (v16 >> 4) | ((v16 | (v16 >> 4)) >> 8);
  v18 = v17 | (v17 >> 16) | ((v17 | (v17 >> 16)) >> 32);
  if (v18 + 1 > 8)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 8;
  }

  if (v13 * HIDWORD(v5))
  {
    v25 = v12;
    *memptr = 0;
    v20 = malloc_type_posix_memalign(memptr, v19, v14, 0x63222AC6uLL);
    if (v20)
    {
      sub_2718084E8(v20, v19, 4 * (v13 * HIDWORD(v5)));
    }

    v21 = *memptr;
    v12 = v25;
    v14 = 4 * (v13 * HIDWORD(v5));
  }

  else
  {
    v21 = 0;
  }

  if (v8)
  {
    v22 = v12;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v7;
  }

  *a2 = &unk_288112218;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 20) = v9;
  *(a2 + 28) = HIDWORD(v5);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  *(a2 + 60) = 0;
  *(a2 + 64) = v14;
  *(a2 + 72) = v21;
  *(a2 + 80) = v19;
  *(a2 + 88) = v23;
  *(a2 + 96) = v13;
  *(a2 + 100) = (4 * v9) & 0xFFFFFFFCFFFFFFFCLL;
  *(a2 + 108) = 4 * HIDWORD(v5);
  v24 = *MEMORY[0x277D85DE8];
}

double sub_2717C4F6C@<D0>(_DWORD *a1@<X1>, __int32 *a2@<X2>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[1])
  {
    v5 = *a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *a1;
  }

  v7 = 4 * (v6 != 0);
  LODWORD(v8) = v7 * v6;
  *v28 = 4;
  *&v28[4] = v6;
  v9 = *v28;
  v10 = HIDWORD(v6);
  if (HIDWORD(*v28))
  {
    v11 = *v28 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v10)
  {
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  v13 = v7 & 0x3FFFFFFFFLL | ((v8 >> 2) << 34);
  *v28 = 1;
  *&v28[4] = v13;
  v14 = *v28;
  *v28 = v9;
  *&v28[8] = HIDWORD(v6);
  *&v28[12] = v14;
  *&v28[20] = v8;
  *&v28[24] = v6;
  *&v29 = v13;
  BYTE8(v29) = 0;
  BYTE4(v30) = 0;
  v26 = v14;
  v27 = v8;
  if (v10)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v9;
  }

  v24 = v16;
  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v10;
  }

  v25 = v17;
  if (((4 * v8) & (4 * v8 - 1)) != 0)
  {
    v18 = 4;
  }

  else
  {
    v18 = 4 * v8;
  }

  sub_2717D6318(v31, &v24, &v26, 1, a2, 1, v18, a4);
  v19 = *&v28[16];
  *(a3 + 8) = *v28;
  *a3 = &unk_288112218;
  *(a3 + 24) = v19;
  *(a3 + 40) = v29;
  v20 = v31[0];
  *(a3 + 56) = v30;
  *(a3 + 64) = v20;
  v21 = v31[2];
  *(a3 + 72) = v31[1];
  *(a3 + 80) = v21;
  *(a3 + 104) = v33;
  result = *&v32;
  *(a3 + 88) = v32;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2717C510C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 28);
  }

  if (v4 * (*(a1 + 32) >> 33) != -1)
  {
    goto LABEL_17;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_16;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_19;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_19:
    abort();
  }

LABEL_16:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_17:
    free(v2);
  }

LABEL_18:
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_2717C5270(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*(a1 + 28))
  {
    v3 = *(a1 + 24) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(a1 + 32);
  if (v3)
  {
    v4 = 0;
  }

  if (v4 * (*(a1 + 44) >> 1) != -1)
  {
    goto LABEL_16;
  }

  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1)
    {
      goto LABEL_15;
    }

    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = qword_28087C408;
    v6 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_18;
    }
  }

  do
  {
    (*v5)(*(v5 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    v5 += 16;
  }

  while (v5 != v6);
  if ((byte_28087C430 & 1) == 0)
  {
LABEL_18:
    abort();
  }

LABEL_15:
  qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
  v2 = *(a1 + 8);
  if (v2)
  {
LABEL_16:
    free(v2);
  }

LABEL_17:
  *(a1 + 8) = 0;
  return a1;
}

void sub_2717C53D8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a1)
  {
    case 1:
      v4 = *(a2 + 8);
      v584 = &unk_28810E1F8;
      sub_2715EF504(v4, &v585);
      v5 = v585;
      if (v585)
      {
        v6 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v5 = v585;
          v7 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v8 = v5;
              (v7->__on_zero_shared)(v7);
              std::__shared_weak_count::__release_weak(v7);
              v5 = v8;
            }
          }
        }

        (*(*v5 + 32))(&v606);
        v9 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        v545 = 1;
        sub_2717F1B04(&v608, &v587, 2, v588, 2, 1);
        goto LABEL_645;
      }

      v592 = &unk_28810F638;
      sub_271304970(&v584, &v593);
      v438 = v593;
      v437 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v438;
      v607 = v437;
      v608 = 0;
      v609 = 0;
      v439 = v596;
      v440 = v595;
      sub_2717F1B04(&v604, &v598, 2, &v599, 2, 1);
      v441 = v440 | 0x100000000;
      v442 = v600;
      if (!v439)
      {
        v441 = 0;
      }

      *a3 = v438;
      *(a3 + 8) = v437;
      v443 = v604;
      *(a3 + 16) = v441;
      *(a3 + 24) = v443;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      *(a3 + 48) = 1;
      *(a3 + 52) = v442;
      if (!v249)
      {
        goto LABEL_658;
      }

      goto LABEL_569;
    case 2:
      v177 = *(a2 + 8);
      v584 = &unk_28810DB78;
      sub_2715EFA94(v177, &v585);
      v178 = v585;
      if (v585)
      {
        v179 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v179->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v179->__on_zero_shared)(v179);
            std::__shared_weak_count::__release_weak(v179);
          }

          v178 = v585;
          v180 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v180->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v181 = v178;
              (v180->__on_zero_shared)(v180);
              std::__shared_weak_count::__release_weak(v180);
              v178 = v181;
            }
          }
        }

        (*(*v178 + 32))(&v606);
        v9 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        v545 = 2;
        sub_2717F1B04(&v608, &v587, 2, v588, 2, 2);
        goto LABEL_645;
      }

      v592 = &unk_28810F138;
      sub_271305898(&v584, &v593);
      v355 = v593;
      v354 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v355;
      v607 = v354;
      v608 = 0;
      v609 = 0;
      v356 = v596;
      v434 = v595;
      v358 = 2;
      sub_2717F1B04(&v604, &v598, 2, &v599, 2, 2);
      v359 = v600;
      v360 = 2 * v434;
      goto LABEL_523;
    case 3:
      v171 = *(a2 + 8);
      v584 = &unk_28810D4B8;
      sub_271683A48(v171, &v585);
      v172 = v585;
      if (v585)
      {
        v173 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v173->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v173->__on_zero_shared)(v173);
            std::__shared_weak_count::__release_weak(v173);
          }

          v172 = v585;
          v174 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v174->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v175 = v172;
              (v174->__on_zero_shared)(v174);
              std::__shared_weak_count::__release_weak(v174);
              v172 = v175;
            }
          }
        }

        (*(*v172 + 32))(&v606);
        v176 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 2, v588, 2, 2);
        v562 = v590;
        *a3 = 0;
        *(a3 + 8) = 0;
        v563 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v563;
        *(a3 + 32) = v609;
        *(a3 + 40) = v176;
        *(a3 + 48) = 3;
        *(a3 + 52) = v562;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810EBB8;
        sub_271306780(&v584, &v593);
        v428 = v593;
        v427 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v428;
        v607 = v427;
        v608 = 0;
        v609 = 0;
        v429 = v596;
        v430 = v595;
        sub_2717F1B04(&v604, &v598, 2, &v599, 2, 2);
        v431 = v600;
        v432 = (2 * v430) | 0x100000000;
        if (!v429)
        {
          v432 = 0;
        }

        *a3 = v428;
        *(a3 + 8) = v427;
        v433 = v604;
        *(a3 + 16) = v432;
        *(a3 + 24) = v433;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 3;
        *(a3 + 52) = v431;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 4:
      v106 = *(a2 + 8);
      v584 = &unk_28810D378;
      sub_271683F50(v106, &v585);
      v107 = v585;
      if (v585)
      {
        v108 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v108->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v108->__on_zero_shared)(v108);
            std::__shared_weak_count::__release_weak(v108);
          }

          v107 = v585;
          v109 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v110 = v107;
              (v109->__on_zero_shared)(v109);
              std::__shared_weak_count::__release_weak(v109);
              v107 = v110;
            }
          }
        }

        (*(*v107 + 32))(&v606);
        v9 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        v545 = 4;
        sub_2717F1B04(&v608, &v587, 2, v588, 2, 4);
LABEL_645:
        v564 = v590;
        *a3 = 0;
        *(a3 + 8) = 0;
        v565 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v565;
        *(a3 + 32) = v609;
        *(a3 + 40) = v9;
        *(a3 + 48) = v545;
        *(a3 + 52) = v564;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810EAB8;
        sub_271307678(&v584, &v593);
        v355 = v593;
        v354 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v355;
        v607 = v354;
        v608 = 0;
        v609 = 0;
        v356 = v596;
        v357 = v595;
        v358 = 4;
        sub_2717F1B04(&v604, &v598, 2, &v599, 2, 4);
        v359 = v600;
        v360 = 4 * v357;
LABEL_523:
        v435 = v360 | 0x100000000;
        if (!v356)
        {
          v435 = 0;
        }

        *a3 = v355;
        *(a3 + 8) = v354;
        v436 = v604;
        *(a3 + 16) = v435;
        *(a3 + 24) = v436;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = v358;
        *(a3 + 52) = v359;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 5:
      v153 = *(a2 + 8);
      v584 = &unk_28810D2B8;
      sub_271684458(v153, &v585);
      v154 = v585;
      if (v585)
      {
        v155 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v155->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v155->__on_zero_shared)(v155);
            std::__shared_weak_count::__release_weak(v155);
          }

          v154 = v585;
          v156 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v156->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v157 = v154;
              (v156->__on_zero_shared)(v156);
              std::__shared_weak_count::__release_weak(v156);
              v154 = v157;
            }
          }
        }

        (*(*v154 + 32))(&v606);
        v158 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v556 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v557 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v557;
        *(a3 + 32) = v609;
        *(a3 + 40) = v158;
        *(a3 + 48) = 5;
        *(a3 + 52) = v556;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810E9F8;
        sub_2713085EC(&v584, &v593);
        v407 = v593;
        v406 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v407;
        v607 = v406;
        v608 = 0;
        v609 = 0;
        v408 = v596;
        v409 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
        v410 = v409 | 0x100000000;
        v411 = v603;
        if (!v408)
        {
          v410 = 0;
        }

        *a3 = v407;
        *(a3 + 8) = v406;
        v412 = v604;
        *(a3 + 16) = v410;
        *(a3 + 24) = v412;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 5;
        *(a3 + 52) = v411;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 6:
      v100 = *(a2 + 8);
      v584 = &unk_28810D238;
      sub_2716849F0(v100, &v585);
      v101 = v585;
      if (v585)
      {
        v102 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v102->__on_zero_shared)(v102);
            std::__shared_weak_count::__release_weak(v102);
          }

          v101 = v585;
          v103 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v104 = v101;
              (v103->__on_zero_shared)(v103);
              std::__shared_weak_count::__release_weak(v103);
              v101 = v104;
            }
          }
        }

        (*(*v101 + 32))(&v606);
        v105 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v543 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v544 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v544;
        *(a3 + 32) = v609;
        *(a3 + 40) = v105;
        *(a3 + 48) = 6;
        *(a3 + 52) = v543;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810E9B8;
        sub_27130938C(&v584, &v593);
        v348 = v593;
        v347 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v348;
        v607 = v347;
        v608 = 0;
        v609 = 0;
        v349 = v596;
        v350 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v351 = v603;
        v352 = (2 * v350) | 0x100000000;
        if (!v349)
        {
          v352 = 0;
        }

        *a3 = v348;
        *(a3 + 8) = v347;
        v353 = v604;
        *(a3 + 16) = v352;
        *(a3 + 24) = v353;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 6;
        *(a3 + 52) = v351;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 7:
      v70 = *(a2 + 8);
      v584 = &unk_28810D178;
      sub_271684F8C(v70, &v585);
      v71 = v585;
      if (v585)
      {
        v72 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v72->__on_zero_shared)(v72);
            std::__shared_weak_count::__release_weak(v72);
          }

          v71 = v585;
          v73 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v74 = v71;
              (v73->__on_zero_shared)(v73);
              std::__shared_weak_count::__release_weak(v73);
              v71 = v74;
            }
          }
        }

        (*(*v71 + 32))(&v606);
        v75 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v535 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v536 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v536;
        *(a3 + 32) = v609;
        *(a3 + 40) = v75;
        *(a3 + 48) = 7;
        *(a3 + 52) = v535;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810E8F8;
        sub_27130A390(&v584, &v593);
        v315 = v593;
        v314 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v315;
        v607 = v314;
        v608 = 0;
        v609 = 0;
        v316 = v596;
        v317 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v318 = v603;
        v319 = (2 * v317) | 0x100000000;
        if (!v316)
        {
          v319 = 0;
        }

        *a3 = v315;
        *(a3 + 8) = v314;
        v320 = v604;
        *(a3 + 16) = v319;
        *(a3 + 24) = v320;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 7;
        *(a3 + 52) = v318;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 8:
      v165 = *(a2 + 8);
      v584 = &unk_28810D0B8;
      sub_271685528(v165, &v585);
      v166 = v585;
      if (v585)
      {
        v167 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v167->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v167->__on_zero_shared)(v167);
            std::__shared_weak_count::__release_weak(v167);
          }

          v166 = v585;
          v168 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v168->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v169 = v166;
              (v168->__on_zero_shared)(v168);
              std::__shared_weak_count::__release_weak(v168);
              v166 = v169;
            }
          }
        }

        (*(*v166 + 32))(&v606);
        v170 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v560 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v561 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v561;
        *(a3 + 32) = v609;
        *(a3 + 40) = v170;
        *(a3 + 48) = 8;
        *(a3 + 52) = v560;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810E838;
        sub_27130B360(&v584, &v593);
        v421 = v593;
        v420 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v421;
        v607 = v420;
        v608 = 0;
        v609 = 0;
        v422 = v596;
        v423 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
        v424 = v603;
        v425 = (4 * v423) | 0x100000000;
        if (!v422)
        {
          v425 = 0;
        }

        *a3 = v421;
        *(a3 + 8) = v420;
        v426 = v604;
        *(a3 + 16) = v425;
        *(a3 + 24) = v426;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 8;
        *(a3 + 52) = v424;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 9:
      v147 = *(a2 + 8);
      v584 = &unk_28810D038;
      sub_271685AC4(v147, &v585);
      v148 = v585;
      if (v585)
      {
        v149 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v149->__on_zero_shared)(v149);
            std::__shared_weak_count::__release_weak(v149);
          }

          v148 = v585;
          v150 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v150->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v151 = v148;
              (v150->__on_zero_shared)(v150);
              std::__shared_weak_count::__release_weak(v150);
              v148 = v151;
            }
          }
        }

        (*(*v148 + 32))(&v606);
        v152 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v554 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v555 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v555;
        *(a3 + 32) = v609;
        *(a3 + 40) = v152;
        *(a3 + 48) = 9;
        *(a3 + 52) = v554;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810E7F8;
        sub_27130C108(&v584, &v593);
        v400 = v593;
        v399 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v400;
        v607 = v399;
        v608 = 0;
        v609 = 0;
        v401 = v596;
        v402 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
        v403 = v402 | 0x100000000;
        v404 = v603;
        if (!v401)
        {
          v403 = 0;
        }

        *a3 = v400;
        *(a3 + 8) = v399;
        v405 = v604;
        *(a3 + 16) = v403;
        *(a3 + 24) = v405;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 9;
        *(a3 + 52) = v404;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 10:
      v194 = *(a2 + 8);
      v584 = &unk_28810E738;
      sub_27168605C(v194, &v585);
      v195 = v585;
      if (v585)
      {
        v196 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v196->__on_zero_shared)(v196);
            std::__shared_weak_count::__release_weak(v196);
          }

          v195 = v585;
          v197 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v197->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v198 = v195;
              (v197->__on_zero_shared)(v197);
              std::__shared_weak_count::__release_weak(v197);
              v195 = v198;
            }
          }
        }

        (*(*v195 + 32))(&v606);
        v199 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v569 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v570 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v570;
        *(a3 + 32) = v609;
        *(a3 + 40) = v199;
        *(a3 + 48) = 10;
        *(a3 + 52) = v569;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F978;
        sub_27130CE50(&v584, &v593);
        v460 = v593;
        v459 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v460;
        v607 = v459;
        v608 = 0;
        v609 = 0;
        v461 = v596;
        v462 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v463 = v603;
        v464 = (2 * v462) | 0x100000000;
        if (!v461)
        {
          v464 = 0;
        }

        *a3 = v460;
        *(a3 + 8) = v459;
        v465 = v604;
        *(a3 + 16) = v464;
        *(a3 + 24) = v465;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 10;
        *(a3 + 52) = v463;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 11:
      v188 = *(a2 + 8);
      v584 = &unk_28810E6B8;
      sub_2716865F8(v188, &v585);
      v189 = v585;
      if (v585)
      {
        v190 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v190->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v190->__on_zero_shared)(v190);
            std::__shared_weak_count::__release_weak(v190);
          }

          v189 = v585;
          v191 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v192 = v189;
              (v191->__on_zero_shared)(v191);
              std::__shared_weak_count::__release_weak(v191);
              v189 = v192;
            }
          }
        }

        (*(*v189 + 32))(&v606);
        v193 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v567 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v568 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v568;
        *(a3 + 32) = v609;
        *(a3 + 40) = v193;
        *(a3 + 48) = 11;
        *(a3 + 52) = v567;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F938;
        sub_27130DBF8(&v584, &v593);
        v453 = v593;
        v452 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v453;
        v607 = v452;
        v608 = 0;
        v609 = 0;
        v454 = v596;
        v455 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v456 = v603;
        v457 = (2 * v455) | 0x100000000;
        if (!v454)
        {
          v457 = 0;
        }

        *a3 = v453;
        *(a3 + 8) = v452;
        v458 = v604;
        *(a3 + 16) = v457;
        *(a3 + 24) = v458;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 11;
        *(a3 + 52) = v456;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 12:
      v28 = *(a2 + 8);
      v584 = &unk_28810E638;
      sub_271686B94(v28, &v585);
      v29 = v585;
      if (v585)
      {
        v30 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v30->__on_zero_shared)(v30);
            std::__shared_weak_count::__release_weak(v30);
          }

          v29 = v585;
          v31 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v32 = v29;
              (v31->__on_zero_shared)(v31);
              std::__shared_weak_count::__release_weak(v31);
              v29 = v32;
            }
          }
        }

        (*(*v29 + 32))(&v606);
        v33 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v520 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v521 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v521;
        *(a3 + 32) = v609;
        *(a3 + 40) = v33;
        *(a3 + 48) = 12;
        *(a3 + 52) = v520;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F8F8;
        sub_27130E96C(&v584, &v593);
        v265 = v593;
        v264 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v265;
        v607 = v264;
        v608 = 0;
        v609 = 0;
        v266 = v596;
        v267 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
        v268 = v603;
        v269 = (4 * v267) | 0x100000000;
        if (!v266)
        {
          v269 = 0;
        }

        *a3 = v265;
        *(a3 + 8) = v264;
        v270 = v604;
        *(a3 + 16) = v269;
        *(a3 + 24) = v270;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 12;
        *(a3 + 52) = v268;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 13:
      v52 = *(a2 + 8);
      v584 = &unk_28810E5B8;
      sub_271687130(v52, &v585);
      v53 = v585;
      if (v585)
      {
        v54 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v54->__on_zero_shared)(v54);
            std::__shared_weak_count::__release_weak(v54);
          }

          v53 = v585;
          v55 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v56 = v53;
              (v55->__on_zero_shared)(v55);
              std::__shared_weak_count::__release_weak(v55);
              v53 = v56;
            }
          }
        }

        (*(*v53 + 32))(&v606);
        v57 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v528 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v529 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v529;
        *(a3 + 32) = v609;
        *(a3 + 40) = v57;
        *(a3 + 48) = 13;
        *(a3 + 52) = v528;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F8B8;
        sub_27130F714(&v584, &v593);
        v293 = v593;
        v292 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v293;
        v607 = v292;
        v608 = 0;
        v609 = 0;
        v294 = v596;
        v295 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
        v296 = v295 | 0x100000000;
        v297 = v603;
        if (!v294)
        {
          v296 = 0;
        }

        *a3 = v293;
        *(a3 + 8) = v292;
        v298 = v604;
        *(a3 + 16) = v296;
        *(a3 + 24) = v298;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 13;
        *(a3 + 52) = v297;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 14:
      v46 = *(a2 + 8);
      v584 = &unk_28810E538;
      sub_2716876C8(v46, &v585);
      v47 = v585;
      if (v585)
      {
        v48 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v48->__on_zero_shared)(v48);
            std::__shared_weak_count::__release_weak(v48);
          }

          v47 = v585;
          v49 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v50 = v47;
              (v49->__on_zero_shared)(v49);
              std::__shared_weak_count::__release_weak(v49);
              v47 = v50;
            }
          }
        }

        (*(*v47 + 32))(&v606);
        v51 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v526 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v527 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v527;
        *(a3 + 32) = v609;
        *(a3 + 40) = v51;
        *(a3 + 48) = 14;
        *(a3 + 52) = v526;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F878;
        sub_27131045C(&v584, &v593);
        v286 = v593;
        v285 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v286;
        v607 = v285;
        v608 = 0;
        v609 = 0;
        v287 = v596;
        v288 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v289 = v603;
        v290 = (2 * v288) | 0x100000000;
        if (!v287)
        {
          v290 = 0;
        }

        *a3 = v286;
        *(a3 + 8) = v285;
        v291 = v604;
        *(a3 + 16) = v290;
        *(a3 + 24) = v291;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 14;
        *(a3 + 52) = v289;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 15:
      v218 = *(a2 + 8);
      v584 = &unk_28810E4B8;
      sub_271687C64(v218, &v585);
      v219 = v585;
      if (v585)
      {
        v220 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v220->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v220->__on_zero_shared)(v220);
            std::__shared_weak_count::__release_weak(v220);
          }

          v219 = v585;
          v221 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v221->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v222 = v219;
              (v221->__on_zero_shared)(v221);
              std::__shared_weak_count::__release_weak(v221);
              v219 = v222;
            }
          }
        }

        (*(*v219 + 32))(&v606);
        v223 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v576 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v577 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v577;
        *(a3 + 32) = v609;
        *(a3 + 40) = v223;
        *(a3 + 48) = 15;
        *(a3 + 52) = v576;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F838;
        sub_271311204(&v584, &v593);
        v486 = v593;
        v485 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v486;
        v607 = v485;
        v608 = 0;
        v609 = 0;
        v487 = v596;
        v488 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v489 = v603;
        v490 = (2 * v488) | 0x100000000;
        if (!v487)
        {
          v490 = 0;
        }

        *a3 = v486;
        *(a3 + 8) = v485;
        v491 = v604;
        *(a3 + 16) = v490;
        *(a3 + 24) = v491;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 15;
        *(a3 + 52) = v489;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 16:
      v159 = *(a2 + 8);
      v584 = &unk_28810E438;
      sub_271688200(v159, &v585);
      v160 = v585;
      if (v585)
      {
        v161 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v161->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v161->__on_zero_shared)(v161);
            std::__shared_weak_count::__release_weak(v161);
          }

          v160 = v585;
          v162 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v162->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v163 = v160;
              (v162->__on_zero_shared)(v162);
              std::__shared_weak_count::__release_weak(v162);
              v160 = v163;
            }
          }
        }

        (*(*v160 + 32))(&v606);
        v164 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v558 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v559 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v559;
        *(a3 + 32) = v609;
        *(a3 + 40) = v164;
        *(a3 + 48) = 16;
        *(a3 + 52) = v558;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F7F8;
        sub_271311F78(&v584, &v593);
        v414 = v593;
        v413 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v414;
        v607 = v413;
        v608 = 0;
        v609 = 0;
        v415 = v596;
        v416 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
        v417 = v603;
        v418 = (4 * v416) | 0x100000000;
        if (!v415)
        {
          v418 = 0;
        }

        *a3 = v414;
        *(a3 + 8) = v413;
        v419 = v604;
        *(a3 + 16) = v418;
        *(a3 + 24) = v419;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 16;
        *(a3 + 52) = v417;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 17:
      v224 = *(a2 + 8);
      v584 = &unk_28810E3B8;
      sub_27168879C(v224, &v585);
      v225 = v585;
      if (v585)
      {
        v226 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v226->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v226->__on_zero_shared)(v226);
            std::__shared_weak_count::__release_weak(v226);
          }

          v225 = v585;
          v227 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v227->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v228 = v225;
              (v227->__on_zero_shared)(v227);
              std::__shared_weak_count::__release_weak(v227);
              v225 = v228;
            }
          }
        }

        (*(*v225 + 32))(&v606);
        v229 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v578 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v579 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v579;
        *(a3 + 32) = v609;
        *(a3 + 40) = v229;
        *(a3 + 48) = 17;
        *(a3 + 52) = v578;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F778;
        sub_271312D20(&v584, &v593);
        v493 = v593;
        v492 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v493;
        v607 = v492;
        v608 = 0;
        v609 = 0;
        v494 = v596;
        v495 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
        v496 = v495 | 0x100000000;
        v497 = v603;
        if (!v494)
        {
          v496 = 0;
        }

        *a3 = v493;
        *(a3 + 8) = v492;
        v498 = v604;
        *(a3 + 16) = v496;
        *(a3 + 24) = v498;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 17;
        *(a3 + 52) = v497;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 18:
      v64 = *(a2 + 8);
      v584 = &unk_28810E338;
      sub_271688D34(v64, &v585);
      v65 = v585;
      if (v585)
      {
        v66 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v66->__on_zero_shared)(v66);
            std::__shared_weak_count::__release_weak(v66);
          }

          v65 = v585;
          v67 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v68 = v65;
              (v67->__on_zero_shared)(v67);
              std::__shared_weak_count::__release_weak(v67);
              v65 = v68;
            }
          }
        }

        (*(*v65 + 32))(&v606);
        v69 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v533 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v534 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v534;
        *(a3 + 32) = v609;
        *(a3 + 40) = v69;
        *(a3 + 48) = 18;
        *(a3 + 52) = v533;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F738;
        sub_271313A68(&v584, &v593);
        v308 = v593;
        v307 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v308;
        v607 = v307;
        v608 = 0;
        v609 = 0;
        v309 = v596;
        v310 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v311 = v603;
        v312 = (2 * v310) | 0x100000000;
        if (!v309)
        {
          v312 = 0;
        }

        *a3 = v308;
        *(a3 + 8) = v307;
        v313 = v604;
        *(a3 + 16) = v312;
        *(a3 + 24) = v313;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 18;
        *(a3 + 52) = v311;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 19:
      v16 = *(a2 + 8);
      v584 = &unk_28810E2B8;
      sub_2716892D0(v16, &v585);
      v17 = v585;
      if (v585)
      {
        v18 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v18->__on_zero_shared)(v18);
            std::__shared_weak_count::__release_weak(v18);
          }

          v17 = v585;
          v19 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v20 = v17;
              (v19->__on_zero_shared)(v19);
              std::__shared_weak_count::__release_weak(v19);
              v17 = v20;
            }
          }
        }

        (*(*v17 + 32))(&v606);
        v21 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v516 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v517 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v517;
        *(a3 + 32) = v609;
        *(a3 + 40) = v21;
        *(a3 + 48) = 19;
        *(a3 + 52) = v516;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F6F8;
        sub_271314810(&v584, &v593);
        v251 = v593;
        v250 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v251;
        v607 = v250;
        v608 = 0;
        v609 = 0;
        v252 = v596;
        v253 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v254 = v603;
        v255 = (2 * v253) | 0x100000000;
        if (!v252)
        {
          v255 = 0;
        }

        *a3 = v251;
        *(a3 + 8) = v250;
        v256 = v604;
        *(a3 + 16) = v255;
        *(a3 + 24) = v256;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 19;
        *(a3 + 52) = v254;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 20:
      v206 = *(a2 + 8);
      v584 = &unk_28810E178;
      sub_27168986C(v206, &v585);
      v207 = v585;
      if (v585)
      {
        v208 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v208->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v208->__on_zero_shared)(v208);
            std::__shared_weak_count::__release_weak(v208);
          }

          v207 = v585;
          v209 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v209->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v210 = v207;
              (v209->__on_zero_shared)(v209);
              std::__shared_weak_count::__release_weak(v209);
              v207 = v210;
            }
          }
        }

        (*(*v207 + 32))(&v606);
        v211 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v572 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v573 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v573;
        *(a3 + 32) = v609;
        *(a3 + 40) = v211;
        *(a3 + 48) = 20;
        *(a3 + 52) = v572;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F5F8;
        sub_271315584(&v584, &v593);
        v473 = v593;
        v472 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v473;
        v607 = v472;
        v608 = 0;
        v609 = 0;
        v474 = v596;
        v475 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
        v476 = v603;
        v477 = (4 * v475) | 0x100000000;
        if (!v474)
        {
          v477 = 0;
        }

        *a3 = v473;
        *(a3 + 8) = v472;
        v478 = v604;
        *(a3 + 16) = v477;
        *(a3 + 24) = v478;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 20;
        *(a3 + 52) = v476;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 21:
      v236 = *(a2 + 8);
      v584 = &unk_28810E0B8;
      sub_2715EFF9C(v236, &v585);
      v237 = v585;
      if (v585)
      {
        v238 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v238->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v238->__on_zero_shared)(v238);
            std::__shared_weak_count::__release_weak(v238);
          }

          v237 = v585;
          v239 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v239->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v240 = v237;
              (v239->__on_zero_shared)(v239);
              std::__shared_weak_count::__release_weak(v239);
              v237 = v240;
            }
          }
        }

        (*(*v237 + 32))(&v606);
        v241 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v582 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v583 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v583;
        *(a3 + 32) = v609;
        *(a3 + 40) = v241;
        *(a3 + 48) = 21;
        *(a3 + 52) = v582;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F538;
        sub_271316588(&v584, &v593);
        v507 = v593;
        v506 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v507;
        v607 = v506;
        v608 = 0;
        v609 = 0;
        v508 = v596;
        v509 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
        v510 = v509 | 0x100000000;
        v511 = v603;
        if (!v508)
        {
          v510 = 0;
        }

        *a3 = v507;
        *(a3 + 8) = v506;
        v512 = v604;
        *(a3 + 16) = v510;
        *(a3 + 24) = v512;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 21;
        *(a3 + 52) = v511;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 22:
      v82 = *(a2 + 8);
      v584 = &unk_28810DFF8;
      sub_271689E08(v82, &v585);
      v83 = v585;
      if (v585)
      {
        v84 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v84->__on_zero_shared)(v84);
            std::__shared_weak_count::__release_weak(v84);
          }

          v83 = v585;
          v85 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v86 = v83;
              (v85->__on_zero_shared)(v85);
              std::__shared_weak_count::__release_weak(v85);
              v83 = v86;
            }
          }
        }

        (*(*v83 + 32))(&v606);
        v87 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v538 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v539 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v539;
        *(a3 + 32) = v609;
        *(a3 + 40) = v87;
        *(a3 + 48) = 22;
        *(a3 + 52) = v538;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F478;
        sub_27131752C(&v584, &v593);
        v328 = v593;
        v327 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v328;
        v607 = v327;
        v608 = 0;
        v609 = 0;
        v329 = v596;
        v330 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v331 = v603;
        v332 = (2 * v330) | 0x100000000;
        if (!v329)
        {
          v332 = 0;
        }

        *a3 = v328;
        *(a3 + 8) = v327;
        v333 = v604;
        *(a3 + 16) = v332;
        *(a3 + 24) = v333;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 22;
        *(a3 + 52) = v331;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 23:
      v230 = *(a2 + 8);
      v584 = &unk_28810DF78;
      sub_27168A3A4(v230, &v585);
      v231 = v585;
      if (v585)
      {
        v232 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v232->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v232->__on_zero_shared)(v232);
            std::__shared_weak_count::__release_weak(v232);
          }

          v231 = v585;
          v233 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v233->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v234 = v231;
              (v233->__on_zero_shared)(v233);
              std::__shared_weak_count::__release_weak(v233);
              v231 = v234;
            }
          }
        }

        (*(*v231 + 32))(&v606);
        v235 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v580 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v581 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v581;
        *(a3 + 32) = v609;
        *(a3 + 40) = v235;
        *(a3 + 48) = 23;
        *(a3 + 52) = v580;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F438;
        sub_2713182D4(&v584, &v593);
        v500 = v593;
        v499 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v500;
        v607 = v499;
        v608 = 0;
        v609 = 0;
        v501 = v596;
        v502 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v503 = v603;
        v504 = (2 * v502) | 0x100000000;
        if (!v501)
        {
          v504 = 0;
        }

        *a3 = v500;
        *(a3 + 8) = v499;
        v505 = v604;
        *(a3 + 16) = v504;
        *(a3 + 24) = v505;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 23;
        *(a3 + 52) = v503;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 24:
      v40 = *(a2 + 8);
      v584 = &unk_28810DEF8;
      sub_27168A940(v40, &v585);
      v41 = v585;
      if (v585)
      {
        v42 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v42->__on_zero_shared)(v42);
            std::__shared_weak_count::__release_weak(v42);
          }

          v41 = v585;
          v43 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v44 = v41;
              (v43->__on_zero_shared)(v43);
              std::__shared_weak_count::__release_weak(v43);
              v41 = v44;
            }
          }
        }

        (*(*v41 + 32))(&v606);
        v45 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v524 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v525 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v525;
        *(a3 + 32) = v609;
        *(a3 + 40) = v45;
        *(a3 + 48) = 24;
        *(a3 + 52) = v524;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F3F8;
        sub_271319048(&v584, &v593);
        v279 = v593;
        v278 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v279;
        v607 = v278;
        v608 = 0;
        v609 = 0;
        v280 = v596;
        v281 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
        v282 = v603;
        v283 = (4 * v281) | 0x100000000;
        if (!v280)
        {
          v283 = 0;
        }

        *a3 = v279;
        *(a3 + 8) = v278;
        v284 = v604;
        *(a3 + 16) = v283;
        *(a3 + 24) = v284;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 24;
        *(a3 + 52) = v282;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 25:
      v22 = *(a2 + 8);
      v584 = &unk_28810DE38;
      sub_27168AEDC(v22, &v585);
      v23 = v585;
      if (v585)
      {
        v24 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          v23 = v585;
          v25 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v26 = v23;
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
              v23 = v26;
            }
          }
        }

        (*(*v23 + 32))(&v606);
        v27 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v518 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v519 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v519;
        *(a3 + 32) = v609;
        *(a3 + 40) = v27;
        *(a3 + 48) = 25;
        *(a3 + 52) = v518;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F338;
        sub_27131A04C(&v584, &v593);
        v258 = v593;
        v257 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v258;
        v607 = v257;
        v608 = 0;
        v609 = 0;
        v259 = v596;
        v260 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
        v261 = v260 | 0x100000000;
        v262 = v603;
        if (!v259)
        {
          v261 = 0;
        }

        *a3 = v258;
        *(a3 + 8) = v257;
        v263 = v604;
        *(a3 + 16) = v261;
        *(a3 + 24) = v263;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 25;
        *(a3 + 52) = v262;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 26:
      v88 = *(a2 + 8);
      v584 = &unk_28810DDB8;
      sub_27168B474(v88, &v585);
      v89 = v585;
      if (v585)
      {
        v90 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v90->__on_zero_shared)(v90);
            std::__shared_weak_count::__release_weak(v90);
          }

          v89 = v585;
          v91 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v92 = v89;
              (v91->__on_zero_shared)(v91);
              std::__shared_weak_count::__release_weak(v91);
              v89 = v92;
            }
          }
        }

        (*(*v89 + 32))(&v606);
        v93 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v540 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v541 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v541;
        *(a3 + 32) = v609;
        *(a3 + 40) = v93;
        *(a3 + 48) = 26;
        *(a3 + 52) = v540;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F2F8;
        sub_27131AD94(&v584, &v593);
        v335 = v593;
        v334 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v335;
        v607 = v334;
        v608 = 0;
        v609 = 0;
        v336 = v596;
        v337 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v338 = v603;
        v339 = (2 * v337) | 0x100000000;
        if (!v336)
        {
          v339 = 0;
        }

        *a3 = v335;
        *(a3 + 8) = v334;
        v340 = v604;
        *(a3 + 16) = v339;
        *(a3 + 24) = v340;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 26;
        *(a3 + 52) = v338;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 27:
      v10 = *(a2 + 8);
      v584 = &unk_28810DD38;
      sub_27168BA10(v10, &v585);
      v11 = v585;
      if (v585)
      {
        v12 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }

          v11 = v585;
          v13 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v14 = v11;
              (v13->__on_zero_shared)(v13);
              std::__shared_weak_count::__release_weak(v13);
              v11 = v14;
            }
          }
        }

        (*(*v11 + 32))(&v606);
        v15 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v513 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v514 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v514;
        *(a3 + 32) = v609;
        *(a3 + 40) = v15;
        *(a3 + 48) = 27;
        *(a3 + 52) = v513;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F2B8;
        sub_27131BB3C(&v584, &v593);
        v243 = v593;
        v242 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v243;
        v607 = v242;
        v608 = 0;
        v609 = 0;
        v244 = v596;
        v245 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v246 = v603;
        v247 = (2 * v245) | 0x100000000;
        if (!v244)
        {
          v247 = 0;
        }

        *a3 = v243;
        *(a3 + 8) = v242;
        v248 = v604;
        *(a3 + 16) = v247;
        *(a3 + 24) = v248;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 27;
        *(a3 + 52) = v246;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 28:
      v111 = *(a2 + 8);
      v584 = &unk_28810DCB8;
      sub_27168BFAC(v111, &v585);
      v112 = v585;
      if (v585)
      {
        v113 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v113->__on_zero_shared)(v113);
            std::__shared_weak_count::__release_weak(v113);
          }

          v112 = v585;
          v114 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v114->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v115 = v112;
              (v114->__on_zero_shared)(v114);
              std::__shared_weak_count::__release_weak(v114);
              v112 = v115;
            }
          }
        }

        (*(*v112 + 32))(&v606);
        v116 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v546 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v547 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v547;
        *(a3 + 32) = v609;
        *(a3 + 40) = v116;
        *(a3 + 48) = 28;
        *(a3 + 52) = v546;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F278;
        sub_27131C8B0(&v584, &v593);
        v362 = v593;
        v361 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v362;
        v607 = v361;
        v608 = 0;
        v609 = 0;
        v363 = v596;
        v364 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
        v365 = v603;
        v366 = (4 * v364) | 0x100000000;
        if (!v363)
        {
          v366 = 0;
        }

        *a3 = v362;
        *(a3 + 8) = v361;
        v367 = v604;
        *(a3 + 16) = v366;
        *(a3 + 24) = v367;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 28;
        *(a3 + 52) = v365;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 29:
      v34 = *(a2 + 8);
      v584 = &unk_28810DC38;
      sub_27168C548(v34, &v585);
      v35 = v585;
      if (v585)
      {
        v36 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v36->__on_zero_shared)(v36);
            std::__shared_weak_count::__release_weak(v36);
          }

          v35 = v585;
          v37 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v38 = v35;
              (v37->__on_zero_shared)(v37);
              std::__shared_weak_count::__release_weak(v37);
              v35 = v38;
            }
          }
        }

        (*(*v35 + 32))(&v606);
        v39 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v522 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v523 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v523;
        *(a3 + 32) = v609;
        *(a3 + 40) = v39;
        *(a3 + 48) = 29;
        *(a3 + 52) = v522;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F1F8;
        sub_27131D658(&v584, &v593);
        v272 = v593;
        v271 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v272;
        v607 = v271;
        v608 = 0;
        v609 = 0;
        v273 = v596;
        v274 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
        v275 = v274 | 0x100000000;
        v276 = v603;
        if (!v273)
        {
          v275 = 0;
        }

        *a3 = v272;
        *(a3 + 8) = v271;
        v277 = v604;
        *(a3 + 16) = v275;
        *(a3 + 24) = v277;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 29;
        *(a3 + 52) = v276;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 30:
      v129 = *(a2 + 8);
      v584 = &unk_28810DAF8;
      sub_27168CAE0(v129, &v585);
      v130 = v585;
      if (v585)
      {
        v131 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v131->__on_zero_shared)(v131);
            std::__shared_weak_count::__release_weak(v131);
          }

          v130 = v585;
          v132 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v132->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v133 = v130;
              (v132->__on_zero_shared)(v132);
              std::__shared_weak_count::__release_weak(v132);
              v130 = v133;
            }
          }
        }

        (*(*v130 + 32))(&v606);
        v134 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v550 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v551 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v551;
        *(a3 + 32) = v609;
        *(a3 + 40) = v134;
        *(a3 + 48) = 30;
        *(a3 + 52) = v550;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
          goto LABEL_657;
        }
      }

      else
      {
        v592 = &unk_28810F0F8;
        sub_27131E3A0(&v584, &v593);
        v381 = v593;
        v380 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v381;
        v607 = v380;
        v608 = 0;
        v609 = 0;
        v382 = v596;
        v383 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
        v384 = v603;
        v385 = (2 * v383) | 0x100000000;
        if (!v382)
        {
          v385 = 0;
        }

        *a3 = v381;
        *(a3 + 8) = v380;
        v386 = v604;
        *(a3 + 16) = v385;
        *(a3 + 24) = v386;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        *(a3 + 48) = 30;
        *(a3 + 52) = v384;
        if (v249)
        {
          goto LABEL_569;
        }
      }

      goto LABEL_658;
    case 31:
      v94 = *(a2 + 8);
      v584 = &unk_28810DA38;
      sub_27168D07C(v94, &v585);
      v95 = v585;
      if (v585)
      {
        v96 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v96->__on_zero_shared)(v96);
            std::__shared_weak_count::__release_weak(v96);
          }

          v95 = v585;
          v97 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v98 = v95;
              (v97->__on_zero_shared)(v97);
              std::__shared_weak_count::__release_weak(v97);
              v95 = v98;
            }
          }
        }

        (*(*v95 + 32))(&v606);
        v99 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v542 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v542;
        *(a3 + 32) = v609;
        *(a3 + 40) = v99;
        v532 = 31;
        goto LABEL_656;
      }

      v592 = &unk_28810F038;
      sub_27131F3A4(&v584, &v593);
      v342 = v593;
      v341 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v342;
      v607 = v341;
      v608 = 0;
      v609 = 0;
      v343 = v596;
      v344 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
      v303 = v603;
      v345 = (2 * v344) | 0x100000000;
      if (!v343)
      {
        v345 = 0;
      }

      *a3 = v342;
      *(a3 + 8) = v341;
      v346 = v604;
      *(a3 + 16) = v345;
      *(a3 + 24) = v346;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v306 = 31;
      goto LABEL_568;
    case 32:
      v141 = *(a2 + 8);
      v584 = &unk_28810D978;
      sub_27168D618(v141, &v585);
      v142 = v585;
      if (v585)
      {
        v143 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v143->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v143->__on_zero_shared)(v143);
            std::__shared_weak_count::__release_weak(v143);
          }

          v142 = v585;
          v144 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v144->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v145 = v142;
              (v144->__on_zero_shared)(v144);
              std::__shared_weak_count::__release_weak(v144);
              v142 = v145;
            }
          }
        }

        (*(*v142 + 32))(&v606);
        v146 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v553 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v553;
        *(a3 + 32) = v609;
        *(a3 + 40) = v146;
        v532 = 32;
        goto LABEL_656;
      }

      v592 = &unk_28810EF78;
      sub_271320374(&v584, &v593);
      v394 = v593;
      v393 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v394;
      v607 = v393;
      v608 = 0;
      v609 = 0;
      v395 = v596;
      v396 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
      v303 = v603;
      v397 = (4 * v396) | 0x100000000;
      if (!v395)
      {
        v397 = 0;
      }

      *a3 = v394;
      *(a3 + 8) = v393;
      v398 = v604;
      *(a3 + 16) = v397;
      *(a3 + 24) = v398;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v306 = 32;
      goto LABEL_568;
    case 33:
      v200 = *(a2 + 8);
      v584 = &unk_28810D8F8;
      sub_27168DBB4(v200, &v585);
      v201 = v585;
      if (v585)
      {
        v202 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v202->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v202->__on_zero_shared)(v202);
            std::__shared_weak_count::__release_weak(v202);
          }

          v201 = v585;
          v203 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v203->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v204 = v201;
              (v203->__on_zero_shared)(v203);
              std::__shared_weak_count::__release_weak(v203);
              v201 = v204;
            }
          }
        }

        (*(*v201 + 32))(&v606);
        v205 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v571 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v571;
        *(a3 + 32) = v609;
        *(a3 + 40) = v205;
        v532 = 33;
        goto LABEL_656;
      }

      v592 = &unk_28810EEF8;
      sub_27132111C(&v584, &v593);
      v467 = v593;
      v466 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v467;
      v607 = v466;
      v608 = 0;
      v609 = 0;
      v468 = v596;
      v469 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
      v470 = v469 | 0x100000000;
      v449 = v603;
      if (!v468)
      {
        v470 = 0;
      }

      *a3 = v467;
      *(a3 + 8) = v466;
      v471 = v604;
      *(a3 + 16) = v470;
      *(a3 + 24) = v471;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v451 = 33;
      goto LABEL_555;
    case 34:
      v135 = *(a2 + 8);
      v584 = &unk_28810D878;
      sub_27168E14C(v135, &v585);
      v136 = v585;
      if (v585)
      {
        v137 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v137->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v137->__on_zero_shared)(v137);
            std::__shared_weak_count::__release_weak(v137);
          }

          v136 = v585;
          v138 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v139 = v136;
              (v138->__on_zero_shared)(v138);
              std::__shared_weak_count::__release_weak(v138);
              v136 = v139;
            }
          }
        }

        (*(*v136 + 32))(&v606);
        v140 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v552 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v552;
        *(a3 + 32) = v609;
        *(a3 + 40) = v140;
        v532 = 34;
        goto LABEL_656;
      }

      v592 = &unk_28810EEB8;
      sub_271321E64(&v584, &v593);
      v388 = v593;
      v387 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v388;
      v607 = v387;
      v608 = 0;
      v609 = 0;
      v389 = v596;
      v390 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
      v303 = v603;
      v391 = (2 * v390) | 0x100000000;
      if (!v389)
      {
        v391 = 0;
      }

      *a3 = v388;
      *(a3 + 8) = v387;
      v392 = v604;
      *(a3 + 16) = v391;
      *(a3 + 24) = v392;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v306 = 34;
      goto LABEL_568;
    case 35:
      v123 = *(a2 + 8);
      v584 = &unk_28810D7F8;
      sub_27168E6E8(v123, &v585);
      v124 = v585;
      if (v585)
      {
        v125 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v125->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v125->__on_zero_shared)(v125);
            std::__shared_weak_count::__release_weak(v125);
          }

          v124 = v585;
          v126 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v127 = v124;
              (v126->__on_zero_shared)(v126);
              std::__shared_weak_count::__release_weak(v126);
              v124 = v127;
            }
          }
        }

        (*(*v124 + 32))(&v606);
        v128 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v549 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v549;
        *(a3 + 32) = v609;
        *(a3 + 40) = v128;
        v532 = 35;
        goto LABEL_656;
      }

      v592 = &unk_28810EE78;
      sub_271322C0C(&v584, &v593);
      v375 = v593;
      v374 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v375;
      v607 = v374;
      v608 = 0;
      v609 = 0;
      v376 = v596;
      v377 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
      v303 = v603;
      v378 = (2 * v377) | 0x100000000;
      if (!v376)
      {
        v378 = 0;
      }

      *a3 = v375;
      *(a3 + 8) = v374;
      v379 = v604;
      *(a3 + 16) = v378;
      *(a3 + 24) = v379;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v306 = 35;
      goto LABEL_568;
    case 36:
      v117 = *(a2 + 8);
      v584 = &unk_28810D778;
      sub_27168EC84(v117, &v585);
      v118 = v585;
      if (v585)
      {
        v119 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v119->__on_zero_shared)(v119);
            std::__shared_weak_count::__release_weak(v119);
          }

          v118 = v585;
          v120 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v121 = v118;
              (v120->__on_zero_shared)(v120);
              std::__shared_weak_count::__release_weak(v120);
              v118 = v121;
            }
          }
        }

        (*(*v118 + 32))(&v606);
        v122 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v548 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v548;
        *(a3 + 32) = v609;
        *(a3 + 40) = v122;
        v532 = 36;
        goto LABEL_656;
      }

      v592 = &unk_28810EE38;
      sub_271323980(&v584, &v593);
      v369 = v593;
      v368 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v369;
      v607 = v368;
      v608 = 0;
      v609 = 0;
      v370 = v596;
      v371 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
      v303 = v603;
      v372 = (4 * v371) | 0x100000000;
      if (!v370)
      {
        v372 = 0;
      }

      *a3 = v369;
      *(a3 + 8) = v368;
      v373 = v604;
      *(a3 + 16) = v372;
      *(a3 + 24) = v373;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v306 = 36;
      goto LABEL_568;
    case 37:
      v182 = *(a2 + 8);
      v584 = &unk_28810D6B8;
      sub_27168F220(v182, &v585);
      v183 = v585;
      if (v585)
      {
        v184 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v184->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v184->__on_zero_shared)(v184);
            std::__shared_weak_count::__release_weak(v184);
          }

          v183 = v585;
          v185 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v185->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v186 = v183;
              (v185->__on_zero_shared)(v185);
              std::__shared_weak_count::__release_weak(v185);
              v183 = v186;
            }
          }
        }

        (*(*v183 + 32))(&v606);
        v187 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 1);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v566 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v566;
        *(a3 + 32) = v609;
        *(a3 + 40) = v187;
        v532 = 37;
        goto LABEL_656;
      }

      v592 = &unk_28810ED78;
      sub_271324984(&v584, &v593);
      v445 = v593;
      v444 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v445;
      v607 = v444;
      v608 = 0;
      v609 = 0;
      v446 = v596;
      v447 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 1);
      v448 = v447 | 0x100000000;
      v449 = v603;
      if (!v446)
      {
        v448 = 0;
      }

      *a3 = v445;
      *(a3 + 8) = v444;
      v450 = v604;
      *(a3 + 16) = v448;
      *(a3 + 24) = v450;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v451 = 37;
LABEL_555:
      *(a3 + 48) = v451;
      *(a3 + 52) = v449;
      if (!v249)
      {
        goto LABEL_658;
      }

      goto LABEL_569;
    case 38:
      v212 = *(a2 + 8);
      v584 = &unk_28810D5F8;
      sub_27168F7B8(v212, &v585);
      v213 = v585;
      if (v585)
      {
        v214 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v214->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v214->__on_zero_shared)(v214);
            std::__shared_weak_count::__release_weak(v214);
          }

          v213 = v585;
          v215 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v215->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v216 = v213;
              (v215->__on_zero_shared)(v215);
              std::__shared_weak_count::__release_weak(v215);
              v213 = v216;
            }
          }
        }

        (*(*v213 + 32))(&v606);
        v217 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v574 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v574;
        *(a3 + 32) = v609;
        *(a3 + 40) = v217;
        v532 = 38;
        goto LABEL_656;
      }

      v592 = &unk_28810ECB8;
      sub_271325928(&v584, &v593);
      v480 = v593;
      v479 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v480;
      v607 = v479;
      v608 = 0;
      v609 = 0;
      v481 = v596;
      v482 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
      v303 = v603;
      v483 = (2 * v482) | 0x100000000;
      if (!v481)
      {
        v483 = 0;
      }

      *a3 = v480;
      *(a3 + 8) = v479;
      v484 = v604;
      *(a3 + 16) = v483;
      *(a3 + 24) = v484;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v306 = 38;
      goto LABEL_568;
    case 39:
      v76 = *(a2 + 8);
      v584 = &unk_28810D578;
      sub_27168FD54(v76, &v585);
      v77 = v585;
      if (v585)
      {
        v78 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v78->__on_zero_shared)(v78);
            std::__shared_weak_count::__release_weak(v78);
          }

          v77 = v585;
          v79 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v80 = v77;
              (v79->__on_zero_shared)(v79);
              std::__shared_weak_count::__release_weak(v79);
              v77 = v80;
            }
          }
        }

        (*(*v77 + 32))(&v606);
        v81 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 2);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v537 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v537;
        *(a3 + 32) = v609;
        *(a3 + 40) = v81;
        v532 = 39;
        goto LABEL_656;
      }

      v592 = &unk_28810EC78;
      sub_2713266D0(&v584, &v593);
      v322 = v593;
      v321 = v594;
      if (v594)
      {
        atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v606 = v322;
      v607 = v321;
      v608 = 0;
      v609 = 0;
      v323 = v596;
      v324 = v595;
      sub_2717F1B04(&v604, v601, 3, v602, 3, 2);
      v303 = v603;
      v325 = (2 * v324) | 0x100000000;
      if (!v323)
      {
        v325 = 0;
      }

      *a3 = v322;
      *(a3 + 8) = v321;
      v326 = v604;
      *(a3 + 16) = v325;
      *(a3 + 24) = v326;
      *(a3 + 32) = v605;
      v249 = v594;
      *(a3 + 40) = v597;
      v306 = 39;
      goto LABEL_568;
    case 40:
      v58 = *(a2 + 8);
      v584 = &unk_28810D438;
      sub_2716902F0(v58, &v585);
      v59 = v585;
      if (v585)
      {
        v60 = v586;
        if (v586)
        {
          atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v60->__on_zero_shared)(v60);
            std::__shared_weak_count::__release_weak(v60);
          }

          v59 = v585;
          v61 = v586;
          if (v586)
          {
            atomic_fetch_add_explicit(&v586->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v62 = v59;
              (v61->__on_zero_shared)(v61);
              std::__shared_weak_count::__release_weak(v61);
              v59 = v62;
            }
          }
        }

        (*(*v59 + 32))(&v606);
        v63 = (*(*v606 + 48))(v606);
        v592 = v606;
        if (v606)
        {
          operator new();
        }

        v593 = 0;
        v606 = 0;
        sub_2717F1B04(&v608, &v587, 3, v589, 3, 4);
        v530 = v591;
        *a3 = 0;
        *(a3 + 8) = 0;
        v531 = v608;
        *(a3 + 16) = 0;
        *(a3 + 24) = v531;
        *(a3 + 32) = v609;
        *(a3 + 40) = v63;
        v532 = 40;
LABEL_656:
        *(a3 + 48) = v532;
        *(a3 + 52) = v530;
        v515 = v606;
        v606 = 0;
        if (v515)
        {
LABEL_657:
          (*(*v515 + 8))(v515);
        }
      }

      else
      {
        v592 = &unk_28810EB78;
        sub_271327444(&v584, &v593);
        v300 = v593;
        v299 = v594;
        if (v594)
        {
          atomic_fetch_add_explicit(&v594->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v606 = v300;
        v607 = v299;
        v608 = 0;
        v609 = 0;
        v301 = v596;
        v302 = v595;
        sub_2717F1B04(&v604, v601, 3, v602, 3, 4);
        v303 = v603;
        v304 = (4 * v302) | 0x100000000;
        if (!v301)
        {
          v304 = 0;
        }

        *a3 = v300;
        *(a3 + 8) = v299;
        v305 = v604;
        *(a3 + 16) = v304;
        *(a3 + 24) = v305;
        *(a3 + 32) = v605;
        v249 = v594;
        *(a3 + 40) = v597;
        v306 = 40;
LABEL_568:
        *(a3 + 48) = v306;
        *(a3 + 52) = v303;
        if (v249)
        {
LABEL_569:
          if (!atomic_fetch_add(&v249->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v249->__on_zero_shared)(v249);
            std::__shared_weak_count::__release_weak(v249);
          }
        }
      }

LABEL_658:
      v575 = v586;
      if (v586)
      {
        if (!atomic_fetch_add(&v586->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v575->__on_zero_shared)(v575);
          std::__shared_weak_count::__release_weak(v575);
        }
      }

      return;
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}