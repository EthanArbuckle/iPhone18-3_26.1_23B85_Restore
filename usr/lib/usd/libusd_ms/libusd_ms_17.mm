void sub_29A0C7D74(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v69[1] = *MEMORY[0x29EDCA608];
  v8 = *(*(*a1 + 72) + 8 * a2 - 8);
  v61 = *(*a1 + 4);
  v52 = v8;
  v53 = v8[1];
  v9 = *(v8[60] + 8 * a5);
  v10 = *(*(v53 + 456) + 8 * a5);
  v49 = v8[2];
  v11 = *(*(v49 + 456) + 8 * a5);
  v12 = *(v53 + 16);
  v13 = v67;
  v64 = v67;
  v65 = v12;
  v66 = 8;
  __p = 0;
  if (v12 < 9)
  {
    v14 = 0;
  }

  else
  {
    v14 = operator new(4 * v12);
    __p = v14;
    v64 = v14;
    v13 = v14;
    v66 = v12;
  }

  v60[0] = v69;
  v60[1] = 0;
  v60[2] = v13;
  memset(&v60[3], 0, 13);
  if ((*(v10 + 12) & 1) != 0 || !**a1)
  {
    LODWORD(v60[3]) = 2;
    LODWORD(v60[4]) = 0;
    v69[0] = 0x3F0000003F000000;
    v50 = 1;
  }

  else
  {
    v50 = 0;
  }

  v58 = v53;
  if (*(v53 + 4) >= 1)
  {
    v51 = v11;
    v15 = 0;
    do
    {
      v16 = *(v52[27] + 4 * v15);
      if (v16 != -1)
      {
        v17 = (v51[18] + 4 * *(v51[12] + 4 * v16));
        if (*(v51[21] + *v17))
        {
          v41 = v51[9];
          v42 = *(v41 + 2 * v16);
          if (*(v41 + 2 * v16))
          {
            v43 = 0;
            do
            {
              sub_29A0A27FC(v10, v15, *(*(v9 + 40) + 2 * (v43 + *(*(*(v9 + 32) + 96) + 4 * v16))), &v62);
              v44 = v17[v43];
              v45 = *(a4 + 2) + v44;
              v56 = *a4;
              v57 = v45;
              v46 = *(a3 + 2);
              v54 = *a3;
              v55 = v46 + v62;
              sub_29A0C93B4(&v56, &v54, 0.5);
              v47 = *(a4 + 2) + v44;
              v56 = *a4;
              v57 = v47;
              v48 = *(a3 + 2);
              v54 = *a3;
              v55 = v48 + v63;
              sub_29A0C93B4(&v56, &v54, 0.5);
              ++v43;
            }

            while (v42 != v43);
          }
        }

        else
        {
          if ((v50 & 1) == 0)
          {
            v59 = v15;
            if (*(*(v53 + 216) + 4 * v15) <= 0.0)
            {
              v18 = 1;
            }

            else
            {
              v18 = 4;
            }

            sub_29A0C62CC(&v61, &v58, v60, v18, (*(*(v49 + 432) + 2 * v16) >> 7) & 0xF);
          }

          sub_29A0A27FC(v10, v15, 0, &v62);
          v19 = *v17;
          v20 = *(a4 + 2) + v19;
          v56 = *a4;
          v57 = v20;
          v21 = *(a3 + 2);
          v54 = *a3;
          v55 = v21 + v62;
          sub_29A0C93B4(&v56, &v54, *v69);
          v22 = *(a4 + 2) + v19;
          v56 = *a4;
          v57 = v22;
          v23 = *(a3 + 2);
          v54 = *a3;
          v55 = v23 + v63;
          sub_29A0C93B4(&v56, &v54, *(v69 + 1));
          if (SLODWORD(v60[4]) >= 1)
          {
            v24 = (*(v53 + 144) + 8 * v15);
            v25 = *v24;
            if (v25 >= 1)
            {
              v26 = 0;
              v27 = *(v53 + 168) + 4 * v24[1];
              do
              {
                v28 = *(v27 + 4 * v26);
                if (BYTE4(v60[4]) == 1)
                {
                  v29 = *(v51[12] + 4 * *(v52[21] + 4 * v28));
                  v30 = *(a4 + 2);
                  v56 = *a4;
                  v57 = v30 + v19;
                  v54 = v56;
                  v55 = v30 + v29;
                  sub_29A0C93B4(&v56, &v54, *&v64[4 * v26]);
                }

                else
                {
                  v31 = (2 * v28) | 1;
                  v32 = *(v53 + 24);
                  v33 = (*(v53 + 72) + 4 * *(v32 + 4 * v31));
                  v34 = *(v32 + 8 * v28);
                  v35 = 1;
                  do
                  {
                    v36 = *v33++;
                    ++v35;
                  }

                  while (v15 != v36);
                  v37 = *(*(*v10 + 24) + 4 * v31);
                  if (v35 < v34)
                  {
                    v34 = 0;
                  }

                  v38 = *(*(v10 + 24) + 4 * v37 + 4 * (v35 - v34));
                  v39 = *(a4 + 2) + v19;
                  v56 = *a4;
                  v57 = v39;
                  v40 = *(a3 + 2);
                  v54 = *a3;
                  v55 = v40 + v38;
                  sub_29A0C93B4(&v56, &v54, *&v64[4 * v26]);
                }

                ++v26;
              }

              while (v26 != v25);
            }
          }
        }
      }

      ++v15;
    }

    while (v15 < *(v53 + 4));
    v14 = __p;
  }

  operator delete(v14);
}

void sub_29A0C8238(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, long double a6)
{
  v92 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = *(*(*a1 + 72) + 8 * a2 - 8);
  v79 = *(*a1 + 4);
  v63 = v9;
  v59 = v9[1];
  v57 = v9[2];
  v60 = *(*(v59 + 456) + 8 * a5);
  v10 = (*(v60 + 12) & 1) != 0 || *v8 == 0;
  v66 = v10;
  v65 = *(v9[60] + 8 * a5);
  v62 = *(*(v57 + 456) + 8 * a5);
  v11 = *(v59 + 20);
  v87 = &v90;
  v88 = 2 * v11;
  v89 = 32;
  v91 = 0;
  if (2 * v11 >= 0x21)
  {
    v91 = operator new(8 * v11);
    v87 = v91;
    v89 = 2 * v11;
    v11 = *(v59 + 20);
  }

  v12 = 0;
  v82 = &v85;
  v83 = v11;
  v84 = 16;
  __p = 0;
  if (v11 >= 0x11)
  {
    v12 = operator new(4 * v11);
    __p = v12;
    v82 = v12;
    v84 = v11;
  }

  v74[0] = v59;
  v74[1] = v57;
  if (*(v59 + 8) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *(v63[30] + 4 * v13);
      if (v14 != -1)
      {
        v15 = *(*(v60 + 96) + 4 * v13);
        v16 = (*(v60 + 144) + 4 * v15);
        v17 = *(v62[12] + 4 * v14);
        v18 = (v62[18] + 4 * v17);
        v19 = *v18;
        v20 = v62[21];
        v21 = v66;
        if (*(v20 + v19))
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = v19 + *(a4 + 8);
          v67 = *a4;
          LODWORD(v68) = v22;
          v23 = *(a3 + 8) + *v16;
          v72 = *a3;
          v73 = v23;
          sub_29A0C93B4(&v67, &v72, 1.0);
        }

        else if (*(v20 + v19))
        {
          v64 = *(v62[9] + 2 * v14);
          if (*(v62[9] + 2 * v14))
          {
            v40 = 0;
            v58 = *(v60 + 168) + v15;
            v61 = v20 + v17;
            do
            {
              v41 = *(v65[5] + 2 * (v40 + *(*(v65[4] + 96) + 4 * v14)));
              v42 = v16;
              v43 = v16[v41];
              v44 = v18[v40];
              v45 = *(a4 + 8);
              if (!v66 && (*(v61 + v40) & 8) != 0)
              {
                sub_29A0A2658(v60, v13, *(v65[5] + 2 * (v40 + *(*(v65[4] + 96) + 4 * v14))), &v80);
                if ((*(v58 + v41) & 0x10) != 0)
                {
                  if ((*(v58 + v41) & 0x20) != 0)
                  {
                    v49 = v41 == 0;
                  }

                  else
                  {
                    v49 = v41;
                  }

                  v50 = sub_29A0A445C(v65, v13, v49, v14);
                  v47 = v50 + ((1.0 - v50) * 0.75);
                  v48 = (1.0 - v50) * 0.125;
                }

                else
                {
                  v47 = 0.75;
                  v48 = 0.125;
                }

                v51 = *(a4 + 8) + v44;
                v67 = *a4;
                LODWORD(v68) = v51;
                v52 = *(a3 + 8);
                v72 = *a3;
                v73 = v52 + v80;
                sub_29A0C93B4(&v67, &v72, v48);
                v53 = *(a4 + 8) + v44;
                v67 = *a4;
                LODWORD(v68) = v53;
                v54 = *(a3 + 8);
                v72 = *a3;
                v73 = v54 + HIDWORD(v80);
                sub_29A0C93B4(&v67, &v72, v48);
                v55 = *(a4 + 8) + v44;
                v67 = *a4;
                LODWORD(v68) = v55;
                v56 = *(a3 + 8) + v43;
                v72 = *a3;
                v73 = v56;
                sub_29A0C93B4(&v67, &v72, v47);
              }

              else
              {
                v67 = *a4;
                LODWORD(v68) = v45 + v44;
                v46 = *(a3 + 8) + v43;
                v72 = *a3;
                v73 = v46;
                sub_29A0C93B4(&v67, &v72, 1.0);
              }

              v16 = v42;
              ++v40;
            }

            while (v64 != v40);
          }
        }

        else
        {
          v24 = *(*(v59 + 336) + 8 * v13);
          v71 = 0.0;
          v25 = v87;
          v26 = v87 + v24;
          v67 = &v71;
          v68 = v87;
          v69 = v26;
          memset(v70, 0, 13);
          v75 = v13;
          v76 = v14;
          v77 = *(*(v74[0] + 336) + 8 * v13);
          v78 = *(*(v74[0] + 264) + 8 * v13);
          sub_29A0C65A4(&v79, v74, &v67, (*(*(v59 + 432) + 2 * v13) >> 7) & 0xF, (*(*(v57 + 432) + 2 * v14) >> 7) & 0xF, a6);
          v27 = *v16;
          v28 = *v18;
          if (v70[2] >= 1)
          {
            v29 = *(v59 + 264);
            v30 = *(v29 + 8 * v13);
            if (v30 >= 1)
            {
              v31 = (*(v59 + 288) + 4 * *(v29 + 4 * ((2 * v13) | 1)));
              do
              {
                v32 = *v31++;
                v33 = *(v62[12] + 4 * *(v63[21] + 4 * v32));
                v34 = *(a4 + 8);
                v72 = *a4;
                v73 = v34 + v28;
                v80 = v72;
                v81 = v34 + v33;
                sub_29A0C93B4(&v72, &v80, *v26++);
                --v30;
              }

              while (v30);
            }
          }

          if (v70[1] >= 1)
          {
            sub_29A0A28F8(v60, v13, v82);
            if (v24 >= 1)
            {
              v35 = 0;
              do
              {
                v36 = *(a4 + 8) + v28;
                v72 = *a4;
                v73 = v36;
                v37 = *(a3 + 8) + *(v82 + v35);
                v80 = *a3;
                v81 = v37;
                sub_29A0C93B4(&v72, &v80, *(v25 + v35));
                v35 += 4;
              }

              while (4 * v24 != v35);
            }
          }

          v38 = *(a4 + 8) + v28;
          v72 = *a4;
          v73 = v38;
          v39 = *(a3 + 8) + v27;
          v80 = *a3;
          v81 = v39;
          sub_29A0C93B4(&v72, &v80, v71);
        }
      }

      ++v13;
    }

    while (v13 < *(v59 + 8));
    v12 = __p;
  }

  operator delete(v12);
  operator delete(v91);
}

void sub_29A0C88A0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v43 = *MEMORY[0x29EDCA608];
  v5 = *(*(*a1 + 72) + 8 * a2 - 8);
  if (*(v5 + 52))
  {
    v8 = 0;
    v9 = *(v5 + 8);
    v10 = *(*(v9 + 456) + 8 * a5);
    v11 = *(*(*(v5 + 16) + 456) + 8 * a5);
    v33 = v9;
    v12 = *(v9 + 20);
    v38 = &v41;
    v39 = v12;
    v40 = 16;
    __p = 0;
    if (v12 >= 0x11)
    {
      v8 = operator new(4 * v12);
      __p = v8;
      v38 = v8;
      v40 = v12;
    }

    v13 = *v33;
    if (*v33 >= 1)
    {
      v14 = 0;
      v15.i32[1] = 0;
      v16 = vdupq_n_s64(4uLL);
      v32 = v16;
      do
      {
        v17 = *(*(v5 + 168) + 4 * v14);
        if (v17 != -1)
        {
          v18 = (*(*v10 + 24) + 8 * v14);
          v19 = *v18;
          if (v19 >= 1)
          {
            v20 = *(*(v11 + 96) + 4 * v17);
            v21 = v10[3] + 4 * v18[1];
            *v15.i32 = 1.0 / v19;
            v22 = (v19 + 3) & 0xFFFFFFFC;
            v23 = vdupq_n_s64(v19 - 1);
            v24 = v38 + 1;
            v25 = xmmword_29B430070;
            v26 = xmmword_29B433E10;
            do
            {
              v27 = vmovn_s64(vcgeq_u64(v23, v25));
              if (vuzp1_s16(v27, v15).u8[0])
              {
                *(v24 - 2) = v15.i32[0];
              }

              if (vuzp1_s16(v27, v15).i8[2])
              {
                *(v24 - 1) = v15.i32[0];
              }

              if (vuzp1_s16(v15, vmovn_s64(vcgeq_u64(v23, *&v26))).i32[1])
              {
                *v24 = v15.i32[0];
                v24[1] = v15.i32[0];
              }

              v26 = vaddq_s64(v26, v16);
              v25 = vaddq_s64(v25, v16);
              v24 += 4;
              v22 -= 4;
            }

            while (v22);
            v28 = 0;
            v29 = 4 * v19;
            do
            {
              v30 = *(a4 + 2) + v20;
              v36 = *a4;
              v37 = v30;
              v31 = *(a3 + 2) + *(v21 + v28);
              v34 = *a3;
              v35 = v31;
              sub_29A0C93B4(&v36, &v34, *(v38 + v28));
              v28 += 4;
            }

            while (v29 != v28);
            v13 = *v33;
            v16 = v32;
          }
        }

        ++v14;
      }

      while (v14 < v13);
      v8 = __p;
    }

    operator delete(v8);
  }
}

void sub_29A0C8B24(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v8 = 0;
  v43 = *MEMORY[0x29EDCA608];
  v30 = *(*(*a1 + 72) + 8 * a2 - 8);
  v31 = v30[1];
  v9 = *(v30[60] + 8 * a5);
  v10 = *(*(v31 + 456) + 8 * a5);
  v11 = *(*(v30[2] + 456) + 8 * a5);
  v12 = *(v31 + 16);
  v38 = &v41;
  v39 = v12;
  v40 = 8;
  __p = 0;
  if (v12 >= 9)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v38 = v8;
    v40 = v12;
  }

  if (*(v31 + 4) >= 1)
  {
    v29 = v11;
    v13 = 0;
    do
    {
      v14 = *(v30[27] + 4 * v13);
      if (v14 != -1)
      {
        v15 = (v29[18] + 4 * *(v29[12] + 4 * v14));
        if (*(v29[21] + *v15))
        {
          v21 = v29[9];
          v22 = *(v21 + 2 * v14);
          if (*(v21 + 2 * v14))
          {
            v23 = 0;
            do
            {
              sub_29A0A27FC(v10, v13, *(*(v9 + 40) + 2 * (v23 + *(*(*(v9 + 32) + 96) + 4 * v14))), &v36);
              v24 = v15[v23];
              v25 = *(a4 + 2) + v24;
              v34 = *a4;
              v35 = v25;
              v26 = *(a3 + 2);
              v32 = *a3;
              v33 = v26 + v36;
              sub_29A0C93B4(&v34, &v32, 0.5);
              v27 = *(a4 + 2) + v24;
              v34 = *a4;
              v35 = v27;
              v28 = *(a3 + 2);
              v32 = *a3;
              v33 = v28 + v37;
              sub_29A0C93B4(&v34, &v32, 0.5);
              ++v23;
            }

            while (v22 != v23);
          }
        }

        else
        {
          sub_29A0A27FC(v10, v13, 0, &v36);
          v16 = *v15;
          v17 = *(a4 + 2) + *v15;
          v34 = *a4;
          v35 = v17;
          v18 = *(a3 + 2);
          v32 = *a3;
          v33 = v18 + v36;
          sub_29A0C93B4(&v34, &v32, 0.5);
          v19 = *(a4 + 2) + v16;
          v34 = *a4;
          v35 = v19;
          v20 = *(a3 + 2);
          v32 = *a3;
          v33 = v20 + v37;
          sub_29A0C93B4(&v34, &v32, 0.5);
        }
      }

      ++v13;
    }

    while (v13 < *(v31 + 4));
    v8 = __p;
  }

  operator delete(v8);
}

void sub_29A0C8DF8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v68 = *MEMORY[0x29EDCA608];
  v7 = *(*(*a1 + 72) + 8 * a2 - 8);
  v8 = v7[2];
  v46 = v7;
  v47 = v7[1];
  v9 = v7[60];
  v10 = *(v8 + 456);
  v48 = *(*(v47 + 456) + 8 * a5);
  v11 = (*(v48 + 12) & 1) != 0 || **a1 == 0;
  v52 = v11;
  v51 = *(v9 + 8 * a5);
  v44 = *(v10 + 8 * a5);
  v12 = *(v47 + 20);
  v63 = &v66;
  v64 = 2 * v12;
  v65 = 32;
  v67 = 0;
  if (2 * v12 >= 0x21)
  {
    v67 = operator new(8 * v12);
    v63 = v67;
    v65 = 2 * v12;
    v12 = *(v47 + 20);
  }

  v13 = 0;
  v58 = &v61;
  v59 = v12;
  v60 = 16;
  __p = 0;
  if (v12 >= 0x11)
  {
    v13 = operator new(4 * v12);
    __p = v13;
    v58 = v13;
    v60 = v12;
  }

  if (*(v47 + 8) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(v46[30] + 4 * v14);
      if (v15 != -1)
      {
        v16 = *(*(v48 + 96) + 4 * v14);
        v17 = (*(v48 + 144) + 4 * v16);
        v18 = *(v44[12] + 4 * v15);
        v19 = (v44[18] + 4 * v18);
        v20 = *v19;
        v21 = v44[21];
        v22 = v52;
        if (*(v21 + v20))
        {
          v22 = 0;
        }

        if (v22)
        {
          v23 = v20 + *(a4 + 2);
          v55 = *a4;
          v56 = v23;
          v24 = *(a3 + 2) + *v17;
          v53 = *a3;
          v54 = v24;
          sub_29A0C93B4(&v55, &v53, 1.0);
        }

        else if (*(v21 + v20))
        {
          v50 = *(v44[9] + 2 * v15);
          if (*(v44[9] + 2 * v15))
          {
            v28 = 0;
            v45 = *(v48 + 168) + v16;
            v49 = v21 + v18;
            do
            {
              v29 = *(v51[5] + 2 * (v28 + *(*(v51[4] + 96) + 4 * v15)));
              v30 = v17[v29];
              v31 = v19[v28];
              v32 = *(a4 + 2);
              if (!v52 && (*(v49 + v28) & 8) != 0)
              {
                sub_29A0A2658(v48, v14, *(v51[5] + 2 * (v28 + *(*(v51[4] + 96) + 4 * v15))), v57);
                if ((*(v45 + v29) & 0x10) != 0)
                {
                  if ((*(v45 + v29) & 0x20) != 0)
                  {
                    v36 = v29 == 0;
                  }

                  else
                  {
                    v36 = v29;
                  }

                  v37 = sub_29A0A445C(v51, v14, v36, v15);
                  v34 = v37 + ((1.0 - v37) * 0.75);
                  v35 = (1.0 - v37) * 0.125;
                }

                else
                {
                  v34 = 0.75;
                  v35 = 0.125;
                }

                v38 = *(a4 + 2) + v31;
                v55 = *a4;
                v56 = v38;
                v39 = *(a3 + 2);
                v53 = *a3;
                v54 = v39 + v57[0];
                sub_29A0C93B4(&v55, &v53, v35);
                v40 = *(a4 + 2) + v31;
                v55 = *a4;
                v56 = v40;
                v41 = *(a3 + 2);
                v53 = *a3;
                v54 = v41 + v57[1];
                sub_29A0C93B4(&v55, &v53, v35);
                v42 = *(a4 + 2) + v31;
                v55 = *a4;
                v56 = v42;
                v43 = *(a3 + 2) + v30;
                v53 = *a3;
                v54 = v43;
                sub_29A0C93B4(&v55, &v53, v34);
              }

              else
              {
                v55 = *a4;
                v56 = v32 + v31;
                v33 = *(a3 + 2) + v30;
                v53 = *a3;
                v54 = v33;
                sub_29A0C93B4(&v55, &v53, 1.0);
              }

              ++v28;
            }

            while (v50 != v28);
          }
        }

        else
        {
          v25 = *v17;
          v26 = *(a4 + 2) + v20;
          v55 = *a4;
          v56 = v26;
          v27 = *(a3 + 2) + v25;
          v53 = *a3;
          v54 = v27;
          sub_29A0C93B4(&v55, &v53, 1.0);
        }
      }

      ++v14;
    }

    while (v14 < *(v47 + 8));
    v13 = __p;
  }

  operator delete(v13);
  operator delete(v67);
}

void *sub_29A0C929C(void *a1, int a2, char a3, char a4)
{
  v8 = operator new(0x100uLL);
  sub_29A0C960C(v8, a2, a3, a4);
  *a1 = v8;
  return a1;
}

uint64_t *sub_29A0C9314(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = sub_29A0C9548(v2);
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_29A0C934C(uint64_t a1, unint64_t a2)
{
  v2 = *(*a1 + 216);
  if (((*(*a1 + 224) - v2) >> 2) - 1 >= a2)
  {
    return *(v2 + 4 * a2);
  }

  else
  {
    return 0;
  }
}

void sub_29A0C93B4(uint64_t a1, uint64_t a2, float a3)
{
  if (a3 != 0.0)
  {
    sub_29A0C93D8(**a1, *(a2 + 8), *(a1 + 8), **a1, a3);
  }
}

void sub_29A0C93D8(uint64_t a1, int a2, int a3, uint64_t a4, float a5)
{
  if (*(a1 + 248) <= a2)
  {
    v11 = *(*(a1 + 216) + 4 * a2);
    if (v11 >= 1)
    {
      v12 = *(*(a1 + 192) + 4 * a2);
      v13 = v12 + v11;
      do
      {
        sub_29A0C9810(a1, *(*(a1 + 24) + 4 * v12), a3, *(a1 + 244), *(a1 + 240), a4, *(*(a4 + 48) + 4 * v12), a5);
        ++v12;
      }

      while (v12 < v13);
    }
  }

  else
  {
    v10 = *(a1 + 240);
    v9 = *(a1 + 244);

    sub_29A0C9810(a1, a2, a3, v9, v10, a4, a5, 1.0);
  }
}

void sub_29A0C94B8(uint64_t a1, unsigned int **a2, float a3)
{
  if (a3 != 0.0)
  {
    v3 = **a2;
    if (v3 >= 1)
    {
      v6 = a2[1];
      v7 = a2[2];
      do
      {
        if (*v7 != 0.0)
        {
          sub_29A0C93D8(**a1, *v6, *(a1 + 8), **a1, *v7 * a3);
        }

        ++v6;
        ++v7;
        --v3;
      }

      while (v3);
    }
  }
}

uint64_t sub_29A0C9548(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    *(a1 + 176) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    *(a1 + 152) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    *(a1 + 128) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    *(a1 + 104) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    *(a1 + 56) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    *(a1 + 32) = v10;
    operator delete(v10);
  }

  v11 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v11;
    operator delete(v11);
  }

  return a1;
}

uint64_t sub_29A0C960C(uint64_t a1, int a2, char a3, char a4)
{
  *(a1 + 48) = 0u;
  v7 = (a1 + 48);
  v8 = 2 * a2;
  if (a2 >= 2621440)
  {
    v8 = 5242880;
  }

  *(a1 + 192) = 0uLL;
  v9 = (a1 + 192);
  *(a1 + 240) = 0;
  *(a1 + 208) = 0uLL;
  *(a1 + 224) = 0uLL;
  *(a1 + 160) = 0uLL;
  *(a1 + 176) = 0uLL;
  *(a1 + 128) = 0uLL;
  *(a1 + 144) = 0uLL;
  *(a1 + 96) = 0uLL;
  *(a1 + 112) = 0uLL;
  *(a1 + 64) = 0uLL;
  *(a1 + 80) = 0uLL;
  *(a1 + 16) = 0uLL;
  *(a1 + 32) = 0uLL;
  *a1 = 0uLL;
  *(a1 + 248) = a2;
  if (v8 <= a2)
  {
    v8 = a2;
  }

  v10 = v8;
  *(a1 + 252) = a4;
  sub_29A0A6994(a1, v8);
  sub_29A0A6994(a1 + 24, v10);
  sub_29A0A6994(v7, v10);
  if (a3)
  {
    sub_29A0A171C((a1 + 24), a2);
    sub_29A0A171C(v7, a2);
    sub_29A0A171C(a1, a2);
    sub_29A0A171C(v9, a2);
    sub_29A0A171C((a1 + 216), a2);
    v11 = *(a1 + 24);
    if (a2 >= 1)
    {
      v12 = 0;
      v13 = *(a1 + 192);
      v14 = *(a1 + 216);
      v15 = *a1;
      v16 = *(a1 + 48);
      do
      {
        *(v13 + 4 * v12) = v12;
        *(v14 + 4 * v12) = 1;
        *(v15 + 4 * v12) = v12;
        *(v11 + 4 * v12) = v12;
        *(v16 + 4 * v12++) = 1065353216;
      }

      while (a2 != v12);
    }

    v17 = (*(a1 + 32) - v11) >> 2;
    *(a1 + 240) = v17;
    *(a1 + 244) = v17 - 1;
  }

  return a1;
}

void sub_29A0C9764(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 216);
  if (v5)
  {
    *(v1 + 224) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 200) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 168);
  if (v7)
  {
    *(v1 + 176) = v7;
    operator delete(v7);
  }

  v8 = *(v1 + 144);
  if (v8)
  {
    *(v1 + 152) = v8;
    operator delete(v8);
  }

  v9 = *(v1 + 120);
  if (v9)
  {
    *(v1 + 128) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 96);
  if (v10)
  {
    *(v1 + 104) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 72);
  if (v11)
  {
    *(v1 + 80) = v11;
    operator delete(v11);
  }

  v12 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 24);
  if (v13)
  {
    *(v1 + 32) = v13;
    operator delete(v13);
  }

  v14 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

float sub_29A0C9810(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, float a7, float a8)
{
  if (*(a1 + 252) == 1 && *a1 != *(a1 + 8) && (*(*a1 + 4 * a4) == a3 ? (v8 = a4 < a5) : (v8 = 0), v8))
  {
    v9 = a4;
    while (*(*(a1 + 24) + 4 * v9) != a2)
    {
      if (a5 == ++v9)
      {
        goto LABEL_11;
      }
    }

    v11 = *(a6 + 48);
    result = (a7 * a8) + *(v11 + 4 * v9);
    *(v11 + 4 * v9) = result;
  }

  else
  {
LABEL_11:
    sub_29A0C9880(a1, a2, a3, a6, a7 * a8);
  }

  return result;
}

void sub_29A0C9880(uint64_t a1, int a2, int a3, uint64_t a4, float a5)
{
  v16 = a3;
  v17 = a2;
  v9 = *(a1 + 8);
  if (*a1 == v9 || *(v9 - 4) != a3)
  {
    v13 = *(a1 + 192);
    v12 = (a1 + 192);
    if (((*(a1 + 200) - v13) >> 2) <= a3)
    {
      v14 = a3 + 1;
      sub_29A0A171C(v12, v14);
      sub_29A0A171C((a1 + 216), v14);
      v13 = *(a1 + 192);
    }

    v15 = (*(a1 + 32) - *(a1 + 24)) >> 2;
    v11 = a3;
    *(v13 + 4 * a3) = v15;
    v10 = *(a1 + 216);
    *(v10 + 4 * a3) = 0;
    *(a1 + 244) = v15;
  }

  else
  {
    v10 = *(a1 + 216);
    v11 = a3;
  }

  ++*(a1 + 240);
  ++*(v10 + 4 * v11);
  sub_29A00D250(a1, &v16);
  sub_29A00D250((a1 + 24), &v17);
  v18 = a5;
  sub_29A0C2184((a4 + 48), &v18);
}

double OpenSubdiv::__aapl__::Far::TopologyDescriptor::TopologyDescriptor(OpenSubdiv::__aapl__::Far::TopologyDescriptor *this)
{
  *(this + 12) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 12) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<OpenSubdiv::__aapl__::Far::TopologyDescriptor>::resizeComponentTopology(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = **(a1 + 48);
  *(v5 + 8) = v4;
  sub_29A0A171C((v5 + 264), 2 * v4);
  sub_29A0A171C((v5 + 336), 2 * v4);
  sub_29A0A171C((v5 + 408), v4);
  sub_29A0A72CC(v5 + 432, v4);
  bzero(*(v5 + 432), 2 * *(v5 + 8));
  v6 = a2[1];
  v7 = **(a1 + 48);
  *v7 = v6;
  sub_29A0A171C(v7 + 3, 2 * v6);
  v8 = *(v7 + 12);
  v9 = *(v7 + 13) - v8;
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      *(v7 + 13) = &v8[v6];
    }
  }

  else
  {
    sub_29A0A485C((v7 + 24), v6 - v9);
    v8 = *(v7 + 12);
  }

  bzero(v8, *v7);
  if (a2[1] >= 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 48);
    do
    {
      v13 = *(*(a2 + 1) + 4 * v11);
      v14 = *v12;
      v15 = *(*v12 + 24);
      *(v15 + v10) = v13;
      if (v10)
      {
        v16 = *(v15 + v10 - 4) + *(v15 + v10 - 8);
      }

      else
      {
        v16 = 0;
      }

      *(v15 + v10 + 4) = v16;
      v17 = *(v14 + 20);
      if (v17 <= v13)
      {
        v17 = v13;
      }

      *(v14 + 20) = v17;
      v18 = *(a1 + 8);
      if ((v18 & 4) != 0)
      {
        v19 = 4;
      }

      else
      {
        v19 = 4 * (v13 != ((v18 >> 3) & 7));
      }

      *(a1 + 8) = v19 | v18 & 0xFFFB;
      ++v11;
      v10 += 8;
    }

    while (v11 < a2[1]);
  }

  return 1;
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<OpenSubdiv::__aapl__::Far::TopologyDescriptor>::assignComponentTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = **(a1 + 48);
    v5 = *(v4 + 24);
    v6 = *(v4 + 48);
    v7 = *(a2 + 88);
    v8 = *(a2 + 16);
    do
    {
      v9 = *(v5 + 8 * v2);
      v10 = *(v5 + 8 * v2 + 4);
      v11 = (v6 + 4 * v10);
      if (v7)
      {
        *v11 = *(v8 + 4 * v3++);
        if (v9 >= 2)
        {
          v12 = v9 + 1;
          v13 = (v6 - 4 + 4 * v10 + 4 * v9);
          v14 = (v8 + 4 * v3);
          do
          {
            v15 = *v14++;
            *v13-- = v15;
            --v12;
            ++v3;
          }

          while (v12 > 2);
        }
      }

      else if (v9 >= 1)
      {
        v16 = (v8 + 4 * v3);
        v3 += v9;
        do
        {
          v17 = *v16++;
          *v11++ = v17;
          --v9;
        }

        while (v9);
      }

      ++v2;
    }

    while (v2 < *(a2 + 4));
  }

  return 1;
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<OpenSubdiv::__aapl__::Far::TopologyDescriptor>::assignComponentTags(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) >= 1)
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      if (*(a2 + 40))
      {
        v5 = 0;
        v6 = (v4 + 4);
        do
        {
          v7 = sub_29A0A5E24(**(a1 + 48), *(v6 - 1), *v6);
          if (v7 == -1)
          {
            snprintf(__str, 0x400uLL, "Edge %d specified to be sharp does not exist (%d, %d)", v5, *(v6 - 1), *v6);
            sub_29A0B33CC(__str, v8, v9, v10, v11, v12, v13, v14, v29);
          }

          else
          {
            *(*(**(a1 + 48) + 216) + 4 * v7) = *(*(a2 + 40) + 4 * v5);
          }

          ++v5;
          v6 += 2;
        }

        while (v5 < *(a2 + 24));
      }
    }
  }

  if (*(a2 + 48) >= 1 && *(a2 + 56) && *(a2 + 64))
  {
    v15 = 0;
    do
    {
      v16 = *(*(a2 + 56) + 4 * v15);
      if ((v16 & 0x80000000) != 0 || (v17 = **(a1 + 48), v16 >= *(v17 + 8)))
      {
        snprintf(__str, 0x400uLL, "Vertex %d specified to be sharp does not exist", *(*(a2 + 56) + 4 * v15));
        sub_29A0B33CC(__str, v18, v19, v20, v21, v22, v23, v24, v30);
      }

      else
      {
        *(*(v17 + 408) + 4 * v16) = *(*(a2 + 64) + 4 * v15);
      }

      ++v15;
    }

    while (v15 < *(a2 + 48));
  }

  if (*(a2 + 72) >= 1)
  {
    v25 = 0;
    do
    {
      v26 = *(*(a2 + 80) + 4 * v25);
      v27 = *(**(a1 + 48) + 96);
      *(v27 + v26) |= 1u;
      *(a1 + 8) |= 2u;
      ++v25;
    }

    while (v25 < *(a2 + 72));
  }

  return 1;
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefinerFactory<OpenSubdiv::__aapl__::Far::TopologyDescriptor>::assignFaceVaryingTopology(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 92) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(a2 + 96) + 16 * v4;
      v6 = *(v5 + 8);
      sub_29A0A7128(**(a1 + 48), *v5, (a1 + 4));
      if (*(a2 + 4) >= 1)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = sub_29A0A5C5C(**(a1 + 48), v8, v4);
          if (*(a2 + 88))
          {
            *v9 = *(v6 + 4 * v7++);
            if (v10 >= 2)
            {
              v11 = (v10 & 0x7FFFFFFF) + 1;
              v12 = &v9[(v10 & 0x7FFFFFFF) - 1];
              v13 = (v6 + 4 * v7);
              do
              {
                v14 = *v13++;
                *v12-- = v14;
                --v11;
                ++v7;
              }

              while (v11 > 2);
            }
          }

          else if (v10 >= 1)
          {
            v15 = v10 & 0x7FFFFFFF;
            v16 = (v6 + 4 * v7);
            v7 += v10 & 0x7FFFFFFF;
            do
            {
              v17 = *v16++;
              *v9++ = v17;
              --v15;
            }

            while (v15);
          }

          ++v8;
        }

        while (v8 < *(a2 + 4));
      }

      ++v4;
    }

    while (v4 < *(a2 + 92));
  }

  return 1;
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefiner::TopologyRefiner(uint64_t a1, unsigned int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = *(a1 + 8) & 0xFFF8 | 1;
  *(a1 + 8) = (8 * (sub_29A0A14D0(a2) & 7)) | *(a1 + 8) & 0xFC07;
  *(a1 + 96) = 0u;
  *(a1 + 12) &= 0xC0u;
  *(a1 + 16) = *(a1 + 16) & 0xF000 | 0xF0;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0;
  sub_29A08AF9C(a1 + 48, 0xAuLL);
  v4 = operator new(0x1E0uLL);
  sub_29A0A4948(v4);
  v6 = v4;
  sub_29A0A71C8(a1 + 48, &v6);
  sub_29A0CA040((a1 + 96), 0xAuLL);
  sub_29A0CA110(a1);
  return a1;
}

{
  return OpenSubdiv::__aapl__::Far::TopologyRefiner::TopologyRefiner(a1, a2, a3);
}

void sub_29A0C9FEC(_Unwind_Exception *a1)
{
  v5 = v4;
  operator delete(v5);
  v7 = *v3;
  if (*v3)
  {
    v1[13] = v7;
    operator delete(v7);
  }

  v8 = v1[9];
  if (v8)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[7] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_29A0CA040(char **a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v3 = a1[1] - *a1;
    v4 = sub_29A012C48(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[24 * v6];
    v8 = *a1;
    v9 = a1[1];
    v10 = &v5[*a1 - v9];
    if (*a1 != v9)
    {
      v11 = &v5[*a1 - v9];
      do
      {
        v12 = *v8;
        *(v11 + 2) = *(v8 + 2);
        *v11 = v12;
        v11 += 24;
        v8 += 24;
      }

      while (v8 != v9);
      v8 = *a1;
    }

    *a1 = v10;
    a1[1] = v5;
    a1[2] = v7;
    if (v8)
    {

      operator delete(v8);
    }
  }
}

void sub_29A0CA110(void *a1)
{
  sub_29A0CA380(a1 + 12, (a1[7] - a1[6]) >> 3);
  v2 = a1[12];
  v2[1] = 0;
  v3 = a1[6];
  *v2 = *v3;
  v2[2] = 0;
  v4 = a1[9];
  v5 = a1[10] - v4;
  v6 = v5 >> 3;
  if ((v5 >> 3))
  {
    v2[2] = *v4;
    if (v6 >= 2)
    {
      v7 = ((v5 >> 3) & 0x7FFFFFFF) - 1;
      v8 = v2 + 5;
      v9 = v4 + 1;
      v10 = v3 + 1;
      do
      {
        *(v8 - 1) = *(v9 - 1);
        v11 = *v10++;
        *(v8 - 2) = v11;
        v12 = *v9++;
        *v8 = v12;
        v8 += 3;
        --v7;
      }

      while (v7);
    }

    v13 = &v2[3 * v6];
    v13[1] = *(v4 + (((v5 << 29) - 0x100000000) >> 29));
    *v13 = *(v3 + ((v5 << 29) >> 29));
    v13[2] = 0;
  }
}

int32x2_t sub_29A0CA1E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 56) == v1)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = 0;
    v3 = 0;
  }

  else
  {
    v2 = *v1;
    v3 = *(*v1 + 1);
    v4 = **v1;
    v5 = (*(v2 + 7) - *(v2 + 6)) >> 2;
    v6 = v2[5];
  }

  result = vrev64_s32(v3);
  *(a1 + 20) = result;
  *(a1 + 28) = v4;
  *(a1 + 32) = v5;
  *(a1 + 36) = v6;
  return result;
}

void OpenSubdiv::__aapl__::Far::TopologyRefiner::~TopologyRefiner(OpenSubdiv::__aapl__::Far::TopologyRefiner *this)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (((v2 - v3) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      if (v4 || *(this + 40) == 1)
      {
        v5 = *(v3 + 8 * v4);
        if (v5)
        {
          v6 = sub_29A0A4B28(v5);
          operator delete(v6);
          v3 = *(this + 6);
          v2 = *(this + 7);
        }
      }

      ++v4;
    }

    while (v4 < ((v2 - v3) >> 3));
  }

  v7 = *(this + 9);
  v8 = *(this + 10);
  if (((v8 - v7) >> 3) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = v7[v9];
      if (v10)
      {
        (*(*v10 + 8))(v7[v9]);
        v7 = *(this + 9);
        v8 = *(this + 10);
      }

      ++v9;
    }

    while (v9 < ((v8 - v7) >> 3));
  }

  v11 = *(this + 12);
  if (v11)
  {
    *(this + 13) = v11;
    operator delete(v11);
    v7 = *(this + 9);
  }

  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v12 = *(this + 6);
  if (v12)
  {
    *(this + 7) = v12;
    operator delete(v12);
  }
}

uint64_t sub_29A0CA340(uint64_t result, uint64_t a2)
{
  *v2.i8 = vrev64_s32(*(a2 + 4));
  v2.i32[2] = *a2;
  v2.i32[3] = (*(a2 + 56) - *(a2 + 48)) >> 2;
  *(result + 20) = vaddq_s32(*(result + 20), v2);
  v3 = *(a2 + 20);
  if (*(result + 36) > v3)
  {
    v3 = *(result + 36);
  }

  *(result + 36) = v3;
  return result;
}

void sub_29A0CA380(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29A0CAF94(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

uint64_t sub_29A0CA3BC(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  if (((*(a1 + 56) - v2) >> 3) < 1)
  {
    return 0;
  }

  v5 = 0;
  LODWORD(v6) = 0;
  do
  {
    v6 = sub_29A0A729C(*(v2 + 8 * v5++), a2) + v6;
    v2 = *(a1 + 48);
  }

  while (v5 < ((*(a1 + 56) - v2) >> 3));
  return v6;
}

void OpenSubdiv::__aapl__::Far::TopologyRefiner::RefineUniform(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = (a1 + 48);
  if (!*(**(a1 + 48) + 8))
  {
    v12 = "Failure in TopologyRefiner::RefineUniform() -- base level is uninitialized.";
    goto LABEL_5;
  }

  v11 = a1 + 72;
  if (*(a1 + 80) != *(a1 + 72))
  {
    v12 = "Failure in TopologyRefiner::RefineUniform() -- previous refinements already applied.";
LABEL_5:

    sub_29A0B32FC(4, v12, a3, a4, a5, a6, a7, a8, a9);
    return;
  }

  *(a1 + 12) = a2;
  v24 = a2;
  v14 = a2 & 0xF;
  *(a1 + 8) = ((a2 & 0xF) << 6) | *(a1 + 8) & 0xFC3F | 1;
  v23 = sub_29A0A14A0(*a1);
  if (v14)
  {
    v15 = 0;
    v16 = (a2 >> 3) & 2;
    v17 = a2 & 0xF;
    do
    {
      if (v17 == 1 && (v24 & 0x20) == 0)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      v20 = *(*v9 + v15);
      v21 = operator new(0x1E0uLL);
      sub_29A0A4948(v21);
      if (v23)
      {
        v22 = operator new(0x210uLL);
        sub_29A0AB6D8(v22, v20, v21, (a1 + 4));
      }

      else
      {
        v22 = operator new(0x1F8uLL);
        sub_29A0A7518(v22, v20, v21, (a1 + 4));
      }

      sub_29A0A9010(v22, v19 | v16);
      v25 = v21;
      sub_29A0A71C8(v9, &v25);
      sub_29A0CA340(a1, v21);
      v25 = v22;
      sub_29A0A71C8(v11, &v25);
      v15 += 8;
      --v17;
    }

    while (v17);
  }

  sub_29A0CA110(a1);
}

_WORD *sub_29A0CA61C(_WORD *result, _WORD *a2, int a3)
{
  v3 = (*a2 & 0x100) != 0 && a3 == 4;
  v4 = !v3;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4;
  }

  v6 = *result & 0xFFF0 | 0xB | v5;
  *result = v6;
  if ((((*a2 & 0x200) == 0) & v4) != 0)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  v3 = v4 == 0;
  *result = v7 | v6 & 0xFFEF;
  v8 = (v7 & 0xFFFFFE1F | v6 & 0xFFFFFE0F | (*a2 >> 4) & 0x20) ^ 0x1E0;
  *result = v8;
  v9 = *a2 & 0x200 ^ 0x600;
  v10 = v8 & 0xF9FF;
  if (!v3)
  {
    v9 = 1024;
  }

  v11 = v9 | v10;
  *result = v11;
  *result = v11 & 0xF7FF | (2 * *a2) & 0x800;
  return result;
}

void sub_29A0CA6CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v39 = a4;
  v46 = a2;
  v11 = a1 + 48;
  if (!*(**(a1 + 48) + 8))
  {
    v14 = "Failure in TopologyRefiner::RefineAdaptive() -- base level is uninitialized.";
    goto LABEL_5;
  }

  v13 = a1 + 72;
  if (*(a1 + 80) == *(a1 + 72))
  {
    *(a1 + 8) &= ~1u;
    *(a1 + 16) = a2;
    v15 = sub_29A0A1530(*a1);
    if ((a2 & 0xF) >= a2 >> 4)
    {
      v16 = a2 >> 4;
    }

    else
    {
      v16 = a2 & 0xF;
    }

    v17 = *(a1 + 8);
    v37 = v15;
    if (v15)
    {
      v18 = a2 & 0xF;
    }

    else
    {
      v18 = (v17 >> 2) & 1;
    }

    v45 = 0;
    sub_29A0CA61C(&v45, &v46, (v17 >> 3) & 7);
    v44 = v45;
    v19 = v45;
    v40 = v16;
    v41 = v18;
    if (v16 < v18)
    {
      v19 = v45 & 0xFFFC;
      LOWORD(v44) = v45 & 0xFFFC;
      if ((a2 & 0x200) != 0)
      {
        v19 = v45 & 0xFF0C;
        LOWORD(v44) = v45 & 0xFF0C;
      }
    }

    if (v37)
    {
      if ((v45 & 0x800) != 0)
      {
        v20 = *(**v11 + 456);
        v21 = *(**v11 + 464) - v20;
        if ((v21 >> 3) < 1)
        {
          goto LABEL_23;
        }

        v22 = 0;
        v23 = (v21 >> 3) & 0x7FFFFFFF;
        do
        {
          v24 = *v20++;
          v22 |= *(v24 + 12) ^ 1;
          --v23;
        }

        while (v23);
        if ((v22 & 1) == 0)
        {
LABEL_23:
          LOWORD(v45) = v45 & 0xF7FF;
          LOWORD(v44) = v19 & 0xF7FF;
        }
      }
    }

    v25 = sub_29A0A14A0(*a1);
    if (!v18)
    {
LABEL_42:
      *(a1 + 8) = (8 * (*(a1 + 80) - *(a1 + 72))) & 0x3C0 | *(a1 + 8) & 0xFC3F;
      sub_29A0CA110(a1);
      return;
    }

    v26 = v25;
    v27 = 0;
    v28 = (a2 >> 10) & 2;
    while (1)
    {
      v29 = *(*v11 + 8 * v27);
      v30 = operator new(0x1E0uLL);
      sub_29A0A4948(v30);
      if (v26)
      {
        v31 = operator new(0x210uLL);
        sub_29A0AB6D8(v31, v29, v30, (a1 + 4));
      }

      else
      {
        v31 = operator new(0x1F8uLL);
        sub_29A0A7518(v31, v29, v30, (a1 + 4));
      }

      v42 = v31;
      v43 = 0;
      v32 = (v27 + 1 <= v40 ? &v45 : &v44);
      if ((v27 + 1) >= 2)
      {
        break;
      }

      if (v37)
      {
        v33 = a1;
        v34 = a3;
        v35 = v39;
        goto LABEL_36;
      }

      sub_29A0CAD48(a1, &v42, a3, v39);
LABEL_37:
      if ((v43 & 1) == 0)
      {
        (*(*v31 + 8))(v31);
        v36 = sub_29A0A4B28(v30);
        operator delete(v36);
        goto LABEL_42;
      }

      sub_29A0A9010(v31, v28 | 1);
      v47 = v30;
      sub_29A0A71C8(v11, &v47);
      sub_29A0CA340(a1, v30);
      v47 = v31;
      sub_29A0A71C8(v13, &v47);
      if (v41 == ++v27)
      {
        goto LABEL_42;
      }
    }

    v9 &= 0xFFFFFFFF00000000;
    v33 = a1;
    v34 = 0;
    v35 = v9;
LABEL_36:
    sub_29A0CAA28(v33, &v42, v32, v34, v35);
    goto LABEL_37;
  }

  v14 = "Failure in TopologyRefiner::RefineAdaptive() -- previous refinements already applied.";
LABEL_5:

  sub_29A0B32FC(4, v14, a3, a4, a5, a6, a7, a8, a9);
}

void sub_29A0CAA28(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, int a5)
{
  v34 = *MEMORY[0x29EDCA608];
  v5 = *(*a2 + 8);
  v6 = a5;
  if (!a5)
  {
    v6 = *v5;
  }

  if ((*a3 & 0x800) != 0)
  {
    v7 = (*(v5 + 464) - *(v5 + 456)) >> 3;
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v6 >= 1)
  {
    v8 = 0;
    v30 = v6;
    do
    {
      if (a5)
      {
        v9 = *(a4 + 4 * v8);
      }

      else
      {
        v9 = v8;
      }

      v10 = *(a1 + 8);
      if ((v10 & 2) == 0 || (*(*(v5 + 96) + v9) & 1) == 0)
      {
        v11 = (v10 >> 3) & 7;
        if (*(*(v5 + 24) + 8 * v9) != v11)
        {
          goto LABEL_57;
        }

        sub_29A0A55F8(v5, v9, &v33, 0xFFFFFFFF);
        v12 = sub_29A0A57C0(&v33, v11);
        if ((v12 & 0x1000) != 0)
        {
          goto LABEL_57;
        }

        if ((v12 & 0x800) == 0)
        {
          if ((v12 & 1) != 0 && (*a3 & 0x400) != 0)
          {
            goto LABEL_57;
          }

          if (v12 & 2) != 0 && (*a3)
          {
            if ((v12 & 0x780) == 0x80)
            {
              goto LABEL_57;
            }

            if (v11 && *(v5 + 12) <= 1)
            {
              v24 = &v33;
              v25 = v11;
              do
              {
                v26 = *v24++;
                if ((v26 & 0x782) == 0x82)
                {
                  goto LABEL_57;
                }

                --v25;
              }

              while (v25);
            }
          }

          if ((v12 & 0x780) != 0x80)
          {
            if ((v12 & 0x60) != 0)
            {
              if ((~*a3 & 0xC) == 0)
              {
                goto LABEL_57;
              }

              v22 = sub_29A0A5C8C(v5, v9, 0, 0);
              v23 = *a3;
              if (v22)
              {
                if ((v23 & 4) != 0)
                {
                  goto LABEL_57;
                }
              }

              else if ((v23 & 8) != 0)
              {
                goto LABEL_57;
              }
            }

            else if (v12 & 0x2010) != 0 && (sub_29A0CAE00(v12, &v33, v11, a3))
            {
              goto LABEL_57;
            }
          }
        }

        if ((*a3 & 0x800) != 0 && v7 >= 1)
        {
          v13 = 0;
          while (1)
          {
            while (sub_29A0A55D0(v5, v9, v13))
            {
              if (++v13 >= v7)
              {
                goto LABEL_58;
              }
            }

            v14 = *(v5 + 24);
            v15 = *(v14 + 8 * v9);
            if (v15 >= 1)
            {
              v16 = (*(v5 + 48) + 4 * *(v14 + 4 * ((2 * v9) | 1)));
              v17 = &v33;
              v18 = *(v14 + 8 * v9);
              do
              {
                v19 = *v16++;
                *v17++ = sub_29A0A5A48(v5, v19, v13);
                --v18;
              }

              while (v18);
            }

            v20 = sub_29A0A57C0(&v33, v15);
            if ((v20 & 0x800) != 0)
            {
              v21 = 0;
            }

            else
            {
              if (v20 & 1) != 0 && (*a3 & 0x400) != 0 || (v20 & 2) != 0 && (*a3)
              {
                goto LABEL_57;
              }

              v21 = sub_29A0CAE00(v20, &v33, v15, a3);
              if (v21)
              {
LABEL_39:
                if (!v21)
                {
                  break;
                }

LABEL_57:
                sub_29A0AB614(a2, v9);
                break;
              }
            }

            if (++v13 >= v7)
            {
              goto LABEL_39;
            }
          }
        }
      }

LABEL_58:
      ++v8;
    }

    while (v8 != v30);
  }
}

void sub_29A0CAD48(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(*a2 + 8);
  v9 = a4;
  if (!a4)
  {
    v9 = *v8;
  }

  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v9;
    do
    {
      if (a4)
      {
        v12 = *(a3 + 4 * v10);
      }

      else
      {
        v12 = v10;
      }

      v13 = *(a1 + 8);
      if (((v13 & 2) == 0 || (*(*(v8 + 96) + v12) & 1) == 0) && *(*(v8 + 24) + 8 * v12) != ((v13 >> 3) & 7))
      {
        sub_29A0AB614(a2, v12);
      }

      ++v10;
    }

    while (v11 != v10);
  }
}

uint64_t sub_29A0CAE00(unsigned __int16 a1, unsigned __int16 *a2, int a3, _WORD *a4)
{
  if (a3 != 4)
  {
    if ((a1 & 0x84) != 0x80)
    {
LABEL_13:
      if (a3 >= 1)
      {
        goto LABEL_14;
      }

      return 0;
    }

    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    v5 = (a1 >> 7) & 0xF;
    if (v5 < 8)
    {
      if (v5 >= 4)
      {
        return (*a4 >> 7) & 1;
      }

LABEL_46:
      if ((a1 & 0x100) != 0)
      {
        return (*a4 >> 6) & 1;
      }

      return 0;
    }

    return HIBYTE(*a4) & 1;
  }

  if ((a1 & 0x80) != 0)
  {
    if ((a1 & 0x8000) == 0)
    {
      if ((a1 & 4) == 0)
      {
LABEL_40:
        v13 = *a4;
        v14 = (v13 >> 4) & 1;
        v15 = (v13 >> 5) & 1;
        if ((a1 & 0x400) != 0)
        {
          return v15;
        }

        else
        {
          return v14;
        }
      }

      if ((a1 & 0x400) != 0)
      {
        if ((a1 & 8) != 0)
        {
          return 0;
        }

        else
        {
          return (*a4 >> 5) & 1;
        }
      }

      return 0;
    }

    v16 = (a1 >> 7) & 0xF;
    if (v16 < 8)
    {
      if (v16 >= 4)
      {
        if ((a1 & 4) != 0)
        {
          v17 = 2;
        }

        else
        {
          v17 = 128;
        }

        return (*a4 & v17) != 0;
      }

      goto LABEL_46;
    }

    return HIBYTE(*a4) & 1;
  }

  if ((*a4 & 0x200) == 0)
  {
LABEL_14:
    v7 = *a4;
    v8 = a3;
    while (1)
    {
      v10 = *a2++;
      v9 = v10;
      if ((v10 & 0x80) == 0)
      {
        if ((v9 & 0x8000) != 0)
        {
          v11 = (v9 >> 7) & 0xE;
          if (v11 >= 8)
          {
            if ((v7 & 0x100) != 0)
            {
              return 1;
            }
          }

          else if (v11 >= 4)
          {
            if ((v9 & 4) != 0)
            {
              v12 = 2;
            }

            else
            {
              v12 = 128;
            }

            if ((v7 & v12) != 0)
            {
              return 1;
            }
          }

          else if ((v9 & 0x100) != 0 && (v7 & 0x40) != 0)
          {
            return 1;
          }
        }

        else if ((v9 & 4) != 0)
        {
          if ((v9 & 0x400) != 0 && (v9 & 8) == 0)
          {
LABEL_28:
            if ((v7 & 0x20) != 0)
            {
              return 1;
            }
          }
        }

        else
        {
          if ((v9 & 0x400) != 0)
          {
            goto LABEL_28;
          }

          if ((v7 & 0x10) != 0)
          {
            return 1;
          }
        }
      }

      if (!--v8)
      {
        return 0;
      }
    }
  }

  v4 = 0;
  while ((a2[v4] & 0x2004) != 0x2000)
  {
    if (++v4 == 4)
    {
      goto LABEL_13;
    }
  }

  return 1;
}

void sub_29A0CAF94(void *a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    a1[1] = &v5[24 * (24 * a2 / 0x18)];
  }

  else
  {
    v6 = *a1;
    v7 = &v5[-*a1];
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = sub_29A012C48(a1, v11);
      v6 = *a1;
      v5 = a1[1];
      v7 = &v5[-*a1];
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = &v13[24 * (24 * a2 / 0x18)];
    v16 = &v13[-v7];
    if (v6 != v5)
    {
      v17 = v16;
      do
      {
        v18 = *v6;
        *(v17 + 2) = *(v6 + 2);
        *v17 = v18;
        v17 += 24;
        v6 += 24;
      }

      while (v6 != v5);
      v6 = *a1;
    }

    *a1 = v16;
    a1[1] = v15;
    a1[2] = v14;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase::prepareComponentTopologySizing(OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::__aapl__::Far::TopologyRefiner *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = *MEMORY[0x29EDCA608];
  v8 = *(this + 6);
  v9 = *v8;
  v10 = *(*v8 + 8);
  if (!v10)
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no vertices.";
    goto LABEL_12;
  }

  v11 = *v9;
  if (!*v9)
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- meshes without faces not yet supported.";
    goto LABEL_12;
  }

  if (v9[5] >= 0x10000)
  {
    snprintf(__str, 0x400uLL, "Failure in TopologyRefinerFactory<>::Create() -- face with %d vertices > %d max.", v9[5], 0xFFFF);
    v12 = __str;
LABEL_12:
    sub_29A0B32FC(4, v12, a3, a4, a5, a6, a7, a8, v30);
    return 0;
  }

  v13 = (*(v9 + 3) + 4 * (2 * v11 - 2));
  v15 = *v13;
  v14 = v13[1];
  v16 = v14 + v15;
  if (!(v14 + v15))
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- mesh contains no face-vertices.";
    goto LABEL_12;
  }

  if (*this == 2 && v16 != 3 * v11)
  {
    v12 = "Failure in TopologyRefinerFactory<>::Create() -- non-triangular faces not supported by Loop scheme.";
    goto LABEL_12;
  }

  sub_29A0A171C(v9 + 6, v16);
  v18 = v9[1];
  if (v18 >= 1)
  {
    sub_29A0A171C(v9 + 9, ((*(v9 + 7) - *(v9 + 6)) >> 2));
    sub_29A0A171C(v9 + 15, 2 * v9[1]);
    v19 = (*(v9 + 18) + 4 * (2 * v18 - 2));
    v20 = *v19;
    v21 = v19[1];
    sub_29A0A171C(v9 + 21, v21 + v20);
    sub_29A0A174C(v9 + 24, v21 + v20);
    v22 = 2 * v10 - 2;
    v23 = *(v9 + 33);
    v24 = *(v23 + 4 * v22);
    v25 = (8 * (v22 >> 1)) | 4;
    v26 = *(v23 + v25);
    sub_29A0A171C(v9 + 36, v26 + v24);
    sub_29A0A174C(v9 + 39, v26 + v24);
    v27 = *(v9 + 42);
    v28 = *(v27 + 4 * v22);
    v29 = *(v27 + v25);
    sub_29A0A171C(v9 + 45, v29 + v28);
    sub_29A0A174C(v9 + 48, v29 + v28);
  }

  return 1;
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase::prepareComponentTopologyAssignment(uint64_t a1, int a2, void (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x29EDCA608];
  v12 = *(a1 + 48);
  v13 = *v12;
  v14 = (*v12)[1];
  if (v14)
  {
    if (!v13[5])
    {
      v15 = "Failure in TopologyRefinerFactory<>::Create() -- maximum valence not assigned.";
      goto LABEL_12;
    }
  }

  else if (!sub_29A0A5EB8(*v12))
  {
    snprintf(__str, 0x400uLL, "Failure in TopologyRefinerFactory<>::Create() -- vertex with valence %d > %d max.", v13[5], 0xFFFF);
    v15 = __str;
    goto LABEL_12;
  }

  if (!a2 || (sub_29A0A4B2C(v13, a3, a4) & 1) != 0)
  {
    sub_29A0CA1E4(a1);
    return 1;
  }

  if (v14)
  {
    v15 = "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected as fully specified.";
  }

  else
  {
    v15 = "Failure in TopologyRefinerFactory<>::Create() -- invalid topology detected from partial specification.";
  }

LABEL_12:
  sub_29A0B32FC(4, v15, a3, a4, a5, a6, a7, a8, v17);
  return 0;
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase::prepareComponentTagsAndSharpness(OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::__aapl__::Far::TopologyRefiner *a2)
{
  v3 = **(this + 6);
  v87 = *(this + 1);
  if (v87)
  {
    v82 = v87 == 2;
  }

  else
  {
    if (sub_29A0A1530(*this) >= 1)
    {
      v4 = *(v3 + 8);
      if (v4 >= 1)
      {
        for (i = 0; i < v4; ++i)
        {
          v6 = *(v3 + 336);
          v7 = (8 * i) | 4;
          v8 = *(v6 + v7);
          v9 = *(v6 + 8 * i);
          v10 = *(v3 + 264);
          v11 = *(v10 + v7);
          v12 = *(v10 + 8 * i);
          if (v9 != v12 || (*(*(v3 + 432) + 2 * i)) && v9 >= 1)
          {
            v13 = (*(v3 + 360) + 4 * v8);
            v14 = (*(v3 + 288) + 4 * v11);
            v15 = v9 & ~(v9 >> 31);
            while (1)
            {
              v17 = *v13++;
              v16 = v17;
              if (*(*(v3 + 144) + 8 * v17) == 1 && *(*(v3 + 216) + 4 * v16) < 10.0)
              {
                break;
              }

              if (!--v15)
              {
                goto LABEL_17;
              }
            }

            if (v12 >= 1)
            {
              do
              {
                v18 = *v14++;
                *(*(v3 + 96) + v18) |= 1u;
                --v12;
              }

              while (v12);
            }

            *(this + 4) |= 2u;
            v4 = *(v3 + 8);
          }

LABEL_17:
          ;
        }
      }
    }

    v82 = 0;
  }

  if (*(v3 + 4) >= 1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(v3 + 240);
      v22 = *(v3 + 216);
      v23 = *(*(v3 + 144) + v19) < 2;
      v24 = *(v21 + v20);
      v25 = v24 & 0xFD | (2 * v23);
      *(v21 + v20) = v25;
      if (v23 || (v24 & 1) != 0)
      {
        *(v22 + 4 * v20) = 1092616192;
        v25 = *(v21 + v20);
        v26 = 10.0;
      }

      else
      {
        v26 = *(v22 + 4 * v20);
      }

      v27 = v26 >= 10.0;
      v28 = v25 & 0xFB | (4 * (v26 >= 10.0));
      *(v21 + v20) = v28;
      v29 = *(v22 + 4 * v20);
      v30 = (8 * v27) ^ 8;
      if (v29 <= 0.0)
      {
        v30 = 0;
      }

      *(v21 + v20++) = v30 | v28 & 0xF7;
      v19 += 8;
    }

    while (v20 < *(v3 + 4));
  }

  v84 = sub_29A0A1500(*this);
  if (*(v3 + 8) >= 1)
  {
    v31 = 0;
    v83 = this;
    do
    {
      v32 = *(v3 + 336);
      v33 = (8 * v31) | 4;
      v34 = (*(v3 + 360) + 4 * *(v32 + v33));
      v35 = *(v32 + 8 * v31);
      if (v35 < 1)
      {
        v45 = 0;
        v38 = 0;
        v44 = 1;
      }

      else
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = v35;
        v40 = v34;
        do
        {
          v41 = *v40++;
          v42 = *(*(v3 + 240) + v41);
          v37 += (v42 >> 1) & 1;
          v38 = vadd_s32(v38, (*&vshl_u32(vdup_n_s32(v42), 0xFFFFFFFEFFFFFFFDLL) & 0xFFFFFFC1FFFFFFC1));
          v36 += v42 & 1;
          --v39;
        }

        while (v39);
        v43 = v36 == 2;
        v44 = v37 == 0;
        if (v37)
        {
          v45 = 0;
        }

        else
        {
          v45 = v43;
        }
      }

      v46 = *(v3 + 432);
      v47 = *(v3 + 408);
      v48 = *(v3 + 264);
      v49 = *(v48 + 8 * v31);
      v85 = *(v48 + v33);
      v86 = *(v3 + 288);
      if (v49 == 1)
      {
        v50 = v35 == 2;
        v51 = v82;
        if (v35 != 2)
        {
          v51 = 0;
        }

        if (v51)
        {
          v50 = 1;
LABEL_48:
          *(v47 + 4 * v31) = 1092616192;
          goto LABEL_49;
        }
      }

      else
      {
        v50 = 0;
      }

      v52 = v49 > v35 && v45;
      if ((*(v46 + 2 * v31) & 1) != 0 && !v52)
      {
        goto LABEL_48;
      }

LABEL_49:
      v53 = v38.i32[1];
      v54 = v38.i32[0];
      v55 = *(v46 + 2 * v31) & 0xFFEF | (16 * (*(v47 + 4 * v31) >= 10.0));
      *(v46 + 2 * v31) = v55;
      v56 = *(v47 + 4 * v31);
      if (v56 < 10.0 && v56 > 0.0)
      {
        v58 = 32;
      }

      else
      {
        v58 = 0;
      }

      *(v46 + 2 * v31) = v55 & 0xFF9F | ((v54 != 0) << 6) | v58;
      v59 = sub_29A0A10C4(*(v47 + 4 * v31), &v87, v54 + v38.i32[1]);
      v60 = *(v46 + 2 * v31);
      if (v44)
      {
        v61 = 0;
      }

      else
      {
        v61 = 4;
      }

      v62 = (v60 >> 1) & 8;
      if (!v50)
      {
        v62 = 0;
      }

      v63 = v60 & 0xF873 | v61 & 0xF87F | ((v59 & 0xF) << 7);
      v64 = v63 | v62;
      v63 &= 0xFFF4u;
      v65 = v63 | (2 * (v49 != v84));
      v66 = v63 | (2 * (v49 != v84 / 2));
      if (v44)
      {
        v66 = v65;
      }

      if (v62)
      {
        v66 = v64 & 0xFFFC;
      }

      if (v60)
      {
        v67 = v64 & 0xFFFD;
      }

      else
      {
        v67 = v66;
      }

      if (v53 | v67 & 0x10)
      {
        v68 = 0x8000;
      }

      else
      {
        v68 = 0;
      }

      *(v46 + 2 * v31) = v67 & 0x17FF | ((v53 != 0) << 13) | v68;
      if (!v53)
      {
        goto LABEL_90;
      }

      v69 = *(v47 + 4 * v31);
      if ((v67 & 0x10) == 0)
      {
        v69 = 0.0;
      }

      v70 = sub_29A0A10C4(v69, &v87, v53);
      if (v70 == 8)
      {
        if (v53 != v35)
        {
          goto LABEL_90;
        }

        v74 = *(v46 + 2 * v31);
        if (v35 <= 2 && (v74 & 0x10) == 0)
        {
          goto LABEL_90;
        }

        LOWORD(v73) = v74 & 0x7FFF;
      }

      else
      {
        if (v70 != 4)
        {
          goto LABEL_90;
        }

        v71 = *(v46 + 2 * v31);
        v72 = v71 | 0x4000;
        *(v46 + 2 * v31) = v71 | 0x4000;
        if ((v71 & 3) != 0)
        {
          goto LABEL_90;
        }

        if ((v71 & 4) != 0)
        {
          LOWORD(v73) = v71 & 0x3FFC | 0x4000;
        }

        else if (v84 == 6)
        {
          v75 = *(v3 + 240);
          if (((*(v75 + v34[3]) ^ *(v75 + *v34)) & 4) != 0)
          {
            v76 = 0x8000;
          }

          else
          {
            v76 = ((*(v75 + v34[4]) ^ *(v75 + v34[1])) & 4) << 13;
          }

          LOWORD(v73) = v76 | v72 & 0x7FF8;
        }

        else
        {
          if (v84 != 4)
          {
            goto LABEL_90;
          }

          v73 = v71 & 0x3FF8 | 0x4000 | ((((*(*(v3 + 240) + v34[2]) ^ *(*(v3 + 240) + *v34)) >> 2) & 1) << 15);
        }
      }

      *(v46 + 2 * v31) = v73;
LABEL_90:
      v77 = *(v83 + 4);
      if ((v77 & 4) != 0 && v49 >= 1)
      {
        v78 = (v77 >> 3) & 7;
        v79 = (v86 + 4 * v85);
        while (1)
        {
          v80 = *v79++;
          if (*(*(v3 + 24) + 8 * v80) != v78)
          {
            break;
          }

          if (!--v49)
          {
            goto LABEL_97;
          }
        }

        *(v46 + 2 * v31) |= 0x1000u;
      }

LABEL_97:
      ++v31;
    }

    while (v31 < *(v3 + 8));
  }

  return 1;
}

uint64_t OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase::prepareFaceVaryingChannels(OpenSubdiv::__aapl__::Far::TopologyRefinerFactoryBase *this, OpenSubdiv::__aapl__::Far::TopologyRefiner *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = **(this + 6);
  v4 = sub_29A0A1500(*this);
  if (((*(**(this + 6) + 464) - *(**(this + 6) + 456)) >> 3) < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = v4 / 2;
  while (sub_29A0A729C(v3, v5))
  {
    sub_29A0A72BC(v3, v5++, v6);
    if (v5 >= ((*(**(this + 6) + 464) - *(**(this + 6) + 456)) >> 3))
    {
      return 1;
    }
  }

  snprintf(__str, 0x400uLL, "Failure in TopologyRefinerFactory<>::Create() -- face-varying channel %d has no values.", v5);
  sub_29A0B32FC(4, __str, v8, v9, v10, v11, v12, v13, v14);
  return 0;
}

uint64_t sub_29A0CBAB4()
{
  if ((atomic_load_explicit(&qword_2A153ED30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153ED30))
  {
    v1 = operator new(0x18uLL);
    sub_29A008E78(v1, aLine0OsdMtlpat);
    qword_2A153ED28 = v1;
    __cxa_guard_release(&qword_2A153ED30);
  }

  return qword_2A153ED28;
}

void sub_29A0CBB24(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A153ED30);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0CBB4C()
{
  if ((atomic_load_explicit(&qword_2A153ED40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153ED40))
  {
    v1 = operator new(0x18uLL);
    sub_29A008E78(v1, aLine0OsdMtlpat_0);
    qword_2A153ED38 = v1;
    __cxa_guard_release(&qword_2A153ED40);
  }

  return qword_2A153ED38;
}

void sub_29A0CBBBC(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A153ED40);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0CBBE4()
{
  if ((atomic_load_explicit(&qword_2A153ED50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153ED50))
  {
    v1 = operator new(0x18uLL);
    sub_29A008E78(v1, aCopyright2018P);
    qword_2A153ED48 = v1;
    __cxa_guard_release(&qword_2A153ED50);
  }

  return qword_2A153ED48;
}

void sub_29A0CBC54(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A153ED50);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0CBC7C()
{
  if ((atomic_load_explicit(&qword_2A153ED60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153ED60))
  {
    v1 = operator new(0x18uLL);
    sub_29A008E78(v1, aCopyright20162);
    qword_2A153ED58 = v1;
    __cxa_guard_release(&qword_2A153ED60);
  }

  return qword_2A153ED58;
}

void sub_29A0CBCEC(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A153ED60);
  _Unwind_Resume(a1);
}

void sub_29A0CBD14(uint64_t a1@<X8>)
{
  sub_29A008E78(&v13, "#define OSD_METAL_IOS 1\n");
  v2 = sub_29A0CBAB4();
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::append(&v13, v4, v5);
  v7 = sub_29A0CBB4C();
  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    v10 = *(v7 + 23);
  }

  else
  {
    v10 = *(v7 + 8);
  }

  v11 = std::string::append(v6, v9, v10);
  if (SHIBYTE(v11->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(a1, v11->__r_.__value_.__l.__data_, v11->__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = *&v11->__r_.__value_.__l.__data_;
    *(a1 + 16) = *(&v11->__r_.__value_.__l + 2);
    *a1 = v12;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_29A0CBDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0CBDEC()
{
  sub_29A008864(v10);
  sub_29A00911C(&v11, "#define OSD_PATCH_BASIS_METAL 1\n", 32);
  v0 = sub_29A0CBBE4();
  v1 = *(v0 + 23);
  if (v1 >= 0)
  {
    v2 = v0;
  }

  else
  {
    v2 = *v0;
  }

  if (v1 >= 0)
  {
    v3 = *(v0 + 23);
  }

  else
  {
    v3 = *(v0 + 8);
  }

  sub_29A00911C(&v11, v2, v3);
  v4 = sub_29A0CBC7C();
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  sub_29A00911C(&v11, v6, v7);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v11 = v8;
  v12 = MEMORY[0x29EDC9570] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v15);
}

void sub_29A0CBFC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A008B0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0CBFDC()
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((*(MEMORY[0x29EDC94D0] + 8) & 0x7FFFFFFFFFFFFFFFLL), v6);
  if (v7 < 0)
  {
    if (v6[1] != 3)
    {
      operator delete(v6[0]);
LABEL_19:
      pxrInternal__aapl__pxrReserved__::Arch_Warning("C++ demangling appears badly broken.", "Arch_ValidateAssumptions", 0x6B, "arch/assumptions.cpp", v0);
      goto LABEL_20;
    }

    v3 = *v6[0] != 28265 || *(v6[0] + 2) != 116;
    operator delete(v6[0]);
    if (v3)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v7 != 3)
    {
      goto LABEL_19;
    }

    if (LOWORD(v6[0]) != 28265 || BYTE2(v6[0]) != 116)
    {
      goto LABEL_19;
    }
  }

LABEL_20:
  v6[0] = 0;
  v8 = 8;
  result = sysctlbyname("hw.cachelinesize", v6, &v8, 0, 0);
  if (v6[0] != 128)
  {
    return pxrInternal__aapl__pxrReserved__::Arch_Warning("ARCH_CACHE_LINE_SIZE != Arch_ObtainCacheLineSize()", "Arch_ValidateAssumptions", 0x8A, "arch/assumptions.cpp", v5);
  }

  return result;
}

void sub_29A0CC0F4()
{
  sub_29A0DAAF8();
  sub_29A0D82B4();
  pxrInternal__aapl__pxrReserved__::ArchGetExecutablePath(__p);
  if (v3 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::ArchSetProgramNameForErrors(v1, v0);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A0CBFDC();
  sub_29A0CC6E0();
}

void sub_29A0CC158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __DarwinGetTemporaryDirectory(void)
{
  if (qword_2A153ED68 != -1)
  {
    sub_29B285028();
  }

  return qword_2A153ED70;
}

char *sub_29A0CC1AC()
{
  v0 = [(NSString *)NSTemporaryDirectory() UTF8String];
  v1 = strlen(v0);
  v2 = operator new[](v1 + 1);
  qword_2A153ED70 = v2;

  return strcpy(v2, v0);
}

const char *__DarwinGetTemporaryDirectoryAppropriateForURLPath(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = [MEMORY[0x29EDB8E70] fileURLWithPath:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v3)}];
  v7 = 0;
  v5 = [objc_msgSend(MEMORY[0x29EDB9FB8] "defaultManager")];
  if (v7)
  {
    MEMORY[0x29C2C1A60](a2, [objc_msgSend(v7 "localizedDescription")]);
    return "";
  }

  if (!v5)
  {
    return "";
  }

  return [objc_msgSend(v5 "path")];
}

void *pxrInternal__aapl__pxrReserved__::ArchAlignedAlloc(pxrInternal__aapl__pxrReserved__ *this, size_t __size)
{
  if (this <= 8)
  {
    v3 = 8;
  }

  else
  {
    v3 = this;
  }

  __memptr = 0;
  if (posix_memalign(&__memptr, v3, __size))
  {
    return 0;
  }

  else
  {
    return __memptr;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchCloseAllFiles(pxrInternal__aapl__pxrReserved__ *this, int *a2, const int *a3)
{
  v4 = this;
  getrlimit(8, &v20);
  if (v20.rlim_cur == 0x7FFFFFFFFFFFFFFFLL)
  {
    rlim_cur = 256;
  }

  else
  {
    rlim_cur = v20.rlim_cur;
  }

  v6 = -1;
  if (v4 >= 1)
  {
    v7 = v4;
    v8 = a2;
    do
    {
      v10 = *v8++;
      v9 = v10;
      if (v6 <= v10)
      {
        v6 = v9;
      }

      --v7;
    }

    while (v7);
  }

  if (rlim_cur < 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (v11 <= v6 && (v14 = v4, v15 = a2, v4))
      {
        while (1)
        {
          v16 = *v15++;
          if (v16 == v11)
          {
            break;
          }

          if (!--v14)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        while (1)
        {
          *__error() = 0;
          v17 = close(v11);
          if (!v17)
          {
            break;
          }

          v18 = v17;
          if (*__error() != 4)
          {
            if (*__error() != 9)
            {
              v12 = *__error();
              v13 = v18;
            }

            break;
          }
        }
      }

      ++v11;
    }

    while (v11 != rlim_cur);
  }

  *__error() = v12;
  return v13;
}

BOOL pxrInternal__aapl__pxrReserved__::Arch_DebuggerRunUnrelatedProcessPosix(pxrInternal__aapl__pxrReserved__ *this, BOOL (*a2)(void *), void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (pipe(__fd) == -1)
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::Arch_nonLockingFork)
  {
    v5 = pxrInternal__aapl__pxrReserved__::Arch_nonLockingFork();
  }

  else
  {
    v5 = fork();
  }

  if (v5 == -1)
  {
    close(__fd[0]);
    close(__fd[1]);
    return 0;
  }

  if (v5 < 1)
  {
    close(__fd[0]);
    signal(22, 1);
    signal(21, 1);
    if (setsid() == -1)
    {
      __buf = *__error();
      write(__fd[1], &__buf, 4uLL);
      _exit(1);
    }

    v9 = signal(1, 1);
    if (pxrInternal__aapl__pxrReserved__::Arch_nonLockingFork)
    {
      v10 = (pxrInternal__aapl__pxrReserved__::Arch_nonLockingFork)(v9);
    }

    else
    {
      v10 = fork();
    }

    if (v10 == -1)
    {
      __buf = *__error();
      write(__fd[1], &__buf, 4uLL);
      _exit(2);
    }

    if (v10 < 1)
    {
      __buf = pxrInternal__aapl__pxrReserved__::ArchCloseAllFiles(1, &__fd[1], v11);
      if (__buf == -1)
      {
        write(__fd[1], &__buf, 4uLL);
        _exit(3);
      }

      __buf = chdir("/");
      if (__buf == -1)
      {
        write(__fd[1], &__buf, 4uLL);
        _exit(4);
      }

      umask(0);
      open("/dev/null", 0);
      open("/dev/null", 1);
      open("/dev/null", 1);
      if (fcntl(__fd[1], 2, 1) == -1)
      {
        v12 = *__error();
        write(__fd[1], &v12, 4uLL);
        _exit(5);
      }

      if (((this)(a2) & 1) == 0)
      {
        __buf = *__error();
        write(__fd[1], &__buf, 4uLL);
        _exit(6);
      }
    }

    _exit(0);
  }

  close(__fd[1]);
  __buf = 0;
  do
  {
    v6 = read(__fd[0], &__buf, 1uLL);
  }

  while (v6 == -1);
  v7 = v6;
  close(__fd[0]);
  return v7 == 0;
}

void sub_29A0CC6E0()
{
  v0 = getenv("ARCH_DEBUGGER");
  if (v0)
  {
    v1 = v0;
    v2 = *v0;
    if (*v0)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v6 = v0;
      v21 = 0;
      while (v2 == 37)
      {
        v8 = v6 + 1;
        v7 = v6[1];
        if (v7 != 101)
        {
          if (v7 == 112)
          {
            v5 += 20;
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        if ((v4 & 0x80u) == 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = v3;
        }

        if (!v9)
        {
          pxrInternal__aapl__pxrReserved__::ArchGetExecutablePath(&v18);
          if (v4 < 0)
          {
            operator delete(__p[0]);
          }

          v21 = v19;
          *__p = v18;
          v4 = HIBYTE(v19);
          v3 = *(&v18 + 1);
        }

        if ((v4 & 0x80u) == 0)
        {
          v10 = v4;
        }

        else
        {
          v10 = v3;
        }

        v5 += v10;
LABEL_11:
        v2 = v8[1];
        v6 = v8 + 1;
      }

      if (!v2)
      {
        v11 = malloc(v5 + 1);
        qword_2A153ED88 = v11;
        while (1)
        {
          v12 = *v1;
          if (v12 != 37)
          {
            break;
          }

          v13 = v1[1];
          if (v13 == 101)
          {
            if (v21 >= 0)
            {
              v16 = __p;
            }

            else
            {
              v16 = __p[0];
            }

            strcat(v11, v16);
            v17 = HIBYTE(v21);
            if (v21 < 0)
            {
              v17 = __p[1];
            }

            v11 = &v17[v11];
          }

          else
          {
            if (v13 != 112)
            {
              goto LABEL_31;
            }

            v14 = getpid();
            sprintf(v11--, "%d", v14);
              ;
            }
          }

          ++v1;
LABEL_39:
          ++v1;
        }

        if (!*v1)
        {
          *v11 = 0;
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

LABEL_31:
        *v11++ = v12;
        goto LABEL_39;
      }

LABEL_10:
      ++v5;
      v8 = v6;
      goto LABEL_11;
    }
  }
}

void sub_29A0CC8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchDebuggerIsAttached(pxrInternal__aapl__pxrReserved__ *this)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A0CC98C();
  v4 = 0;
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = getpid();
  v2 = 648;
  if (sysctl(v5, 4u, v3, &v2, 0, 0))
  {
    return 0;
  }

  else
  {
    return (v4 >> 11) & 1;
  }
}

void sub_29A0CC98C()
{
  if ((atomic_load_explicit(&qword_2A153ED80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153ED80))
  {
    sub_29A0CCA0C();

    __cxa_guard_release(&qword_2A153ED80);
  }
}

uint64_t sub_29A0CCA0C()
{
  *&v2.sa_mask = 0x1000000000;
  v2.__sigaction_u.__sa_handler = sub_29A0CCA78;
  result = sigaction(5, &v2, 0);
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::Arch_Warning("Failed to set SIGTRAP handler;  debug trap not enabled", "Arch_DebuggerInitPosix", 0x5B, "arch/debugger.cpp", v1);
  }

  return result;
}

uint64_t sub_29A0CCA78()
{
  v0 = 1;
  atomic_compare_exchange_strong(byte_2A153ED78, &v0, 0);
  if (v0 == 1)
  {
    return raise(17);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::ArchDemangle(uint64_t a1)
{
  v2 = sub_29A0CCDCC(a1);
  if (v2)
  {
    sub_29A0CCEF4(a1);
    v3 = *(a1 + 23);
    if (v3 < 0)
    {
      v4 = *a1;
      v3 = *(a1 + 8);
    }

    else
    {
      v4 = a1;
    }

    if (v3 >= 34)
    {
      v5 = &v4[v3];
      v6 = v4;
      do
      {
        v7 = memchr(v6, 112, v3 - 33);
        if (!v7)
        {
          break;
        }

        v8 = v7;
        if (!memcmp(v7, "pxrInternal__aapl__pxrReserved__::", 0x22uLL))
        {
          if (v8 != v5)
          {
            v9 = v8 - v4;
            if (v8 - v4 != -1)
            {
LABEL_13:
              std::string::erase(a1, v9, 0x22uLL);
              v10 = *(a1 + 23);
              if (v10 < 0)
              {
                v11 = *a1;
                v10 = *(a1 + 8);
              }

              else
              {
                v11 = a1;
              }

              if (v10 >= 34)
              {
                v12 = &v11[v10];
                v13 = v11;
                while (1)
                {
                  v14 = memchr(v13, 112, v10 - 33);
                  if (!v14)
                  {
                    break;
                  }

                  v15 = v14;
                  if (!memcmp(v14, "pxrInternal__aapl__pxrReserved__::", 0x22uLL))
                  {
                    if (v15 != v12)
                    {
                      v9 = v15 - v11;
                      if (v15 - v11 != -1)
                      {
                        goto LABEL_13;
                      }
                    }

                    return v2;
                  }

                  v13 = v15 + 1;
                  v10 = v12 - (v15 + 1);
                  if (v10 < 34)
                  {
                    return v2;
                  }
                }
              }
            }
          }

          return v2;
        }

        v6 = v8 + 1;
        v3 = v5 - (v8 + 1);
      }

      while (v3 >= 34);
    }
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::Arch_DemangleFunctionName(std::string *a1)
{
  v1 = a1;
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    if (a1->__r_.__value_.__l.__size_ <= 2)
    {
      return;
    }

    a1 = a1->__r_.__value_.__r.__words[0];
    if (*v1->__r_.__value_.__l.__data_ != 95 || a1->__r_.__value_.__s.__data_[1] != 90)
    {
      return;
    }
  }

  else if (HIBYTE(a1->__r_.__value_.__r.__words[2]) < 3u || a1->__r_.__value_.__s.__data_[0] != 95 || a1->__r_.__value_.__s.__data_[1] != 90)
  {
    return;
  }

  status = 0;
  v2 = __cxa_demangle(a1, 0, 0, &status);
  if (v2)
  {
    v3 = v2;
    sub_29A008E78(&v4, v2);
    if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v1->__r_.__value_.__l.__data_);
    }

    *&v1->__r_.__value_.__l.__data_ = v4;
    v1->__r_.__value_.__r.__words[2] = v5;
    free(v3);
    sub_29A0CCEF4(v1);
  }
}

void pxrInternal__aapl__pxrReserved__::ArchGetDemangled(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v4 = *(a1 + 16);
  }

  if (pxrInternal__aapl__pxrReserved__::ArchDemangle(__p))
  {
    *a2 = *__p;
    *(a2 + 16) = v4;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A0CCD44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::ArchGetDemangled(pxrInternal__aapl__pxrReserved__ *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    v4 = sub_29A008E78(a2, this);
    if (pxrInternal__aapl__pxrReserved__::ArchDemangle(v4))
    {
      return;
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

void sub_29A0CCDB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0CCDCC(uint64_t a1)
{
  sub_29A008E78(&v14, "P");
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  std::string::append(&v14, v3, v4);
  status = 0;
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v14;
  }

  else
  {
    v5 = v14.__r_.__value_.__r.__words[0];
  }

  v6 = __cxa_demangle(v5, 0, 0, &status);
  v7 = v6;
  if (v6)
  {
    v8 = strlen(v6);
    if (v8 >= 2 && v7[v8 - 1] == 42)
    {
      sub_29A02887C(&__dst, v7, v8 - 1);
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *a1 = __dst;
      *(a1 + 16) = v12;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    free(v7);
  }

  else
  {
    v9 = 0;
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_29A0CCED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0CCEF4(std::string *this)
{
  if ((atomic_load_explicit(&qword_2A153ED98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153ED98))
  {
    qword_2A153ED90 = sub_29A0CD1DC();
    __cxa_guard_release(&qword_2A153ED98);
  }

  if ((atomic_load_explicit(&qword_2A153EDA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EDA8))
  {
    v31 = operator new(0x18uLL);
    sub_29A008E78(v31, "string");
    qword_2A153EDA0 = v31;
    __cxa_guard_release(&qword_2A153EDA8);
  }

  for (i = 0; ; std::string::erase(this, i, v21))
  {
    v3 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    v4 = this;
    size = v3;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    v6 = *(qword_2A153ED90 + 23);
    v7 = v6 >= 0 ? qword_2A153ED90 : *qword_2A153ED90;
    v8 = v6 >= 0 ? *(qword_2A153ED90 + 23) : *(qword_2A153ED90 + 8);
    v9 = size - i;
    if (size < i)
    {
      break;
    }

    if (v8)
    {
      if (v9 >= v8)
      {
        v10 = v4 + size;
        v11 = v4 + i;
        v12 = *v7;
        while (v9 - v8 != -1)
        {
          v13 = memchr(v11, v12, v9 - v8 + 1);
          if (!v13)
          {
            break;
          }

          v14 = v13;
          if (!memcmp(v13, v7, v8))
          {
            if (v14 == v10)
            {
              goto LABEL_43;
            }

            i = v14 - v4;
            goto LABEL_23;
          }

          v11 = v14 + 1;
          v9 = v10 - (v14 + 1);
          if (v9 < v8)
          {
            goto LABEL_43;
          }
        }
      }

      break;
    }

LABEL_23:
    if (i == -1)
    {
      break;
    }

    v15 = *(qword_2A153EDA0 + 23);
    if (v15 >= 0)
    {
      v16 = qword_2A153EDA0;
    }

    else
    {
      v16 = *qword_2A153EDA0;
    }

    if (v15 >= 0)
    {
      v17 = *(qword_2A153EDA0 + 23);
    }

    else
    {
      v17 = *(qword_2A153EDA0 + 8);
    }

    std::string::replace(this, i, v8, v16, v17);
    v18 = *(qword_2A153EDA0 + 23);
    if (v18 < 0)
    {
      v18 = *(qword_2A153EDA0 + 8);
    }

    v19 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v19 < 0)
    {
      v20 = this->__r_.__value_.__l.__size_;
    }

    else
    {
      v20 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    i += v18;
    v21 = 0;
    if (v20 != i)
    {
      v22 = i;
      while (1)
      {
        v23 = this;
        if ((v19 & 0x80000000) != 0)
        {
          v23 = this->__r_.__value_.__r.__words[0];
        }

        if (v23->__r_.__value_.__s.__data_[v22] != 32)
        {
          break;
        }

        ++v22;
        ++v21;
        if (v20 == v22)
        {
          v21 = v20 - i;
          break;
        }
      }
    }
  }

LABEL_43:
  v24 = 0;
LABEL_44:
  v25 = this;
  if ((v3 & 0x80) != 0)
  {
    v25 = this->__r_.__value_.__r.__words[0];
    v3 = this->__r_.__value_.__l.__size_;
  }

  v26 = v3 - v24;
  if (v3 >= v24 && v26 >= 5)
  {
    v27 = v25 + v3;
    v28 = v25 + v24;
    do
    {
      v29 = memchr(v28, 115, v26 - 4);
      if (!v29)
      {
        break;
      }

      if (*v29 == 979661939 && v29[4] == 58)
      {
        if (v29 != v27)
        {
          v24 = v29 - v25;
          if (v29 - v25 != -1)
          {
            std::string::erase(this, v24, 5uLL);
            v3 = HIBYTE(this->__r_.__value_.__r.__words[2]);
            goto LABEL_44;
          }
        }

        return;
      }

      v28 = v29 + 1;
      v26 = v27 - v28;
    }

    while (v27 - v28 >= 5);
  }
}

void sub_29A0CD1A4(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A153EDA8);
  _Unwind_Resume(a1);
}

void *sub_29A0CD1DC()
{
  v0 = operator new(0x18uLL);
  sub_29A008E78(v0, (0x800000029B4C54E8 & 0x7FFFFFFFFFFFFFFFLL));
  sub_29A0CCDCC(v0);
  return v0;
}

BOOL pxrInternal__aapl__pxrReserved__::ArchHasEnv(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return getenv(a1) != 0;
}

char *pxrInternal__aapl__pxrReserved__::ArchGetEnv@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = getenv(a1);
  if (result)
  {

    return sub_29A008E78(a2, result);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::ArchSetEnv(const char *a1, const char *a2, int a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return setenv(a1, a2, a3) == 0;
}

BOOL pxrInternal__aapl__pxrReserved__::ArchRemoveEnv(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return unsetenv(a1) == 0;
}

void pxrInternal__aapl__pxrReserved__::ArchExpandEnvironmentVariables(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_2A153EDF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EDF0))
  {
    sub_29A0CD6B0(&unk_2A153EDB0, "\\$\\{([^}]+)\\}", 0);
    __cxa_atexit(sub_29A0CD654, &unk_2A153EDB0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A153EDF0);
  }

  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  *v21 = 0u;
  memset(v22, 0, 25);
  while (1)
  {
    __p[6] = 0;
    __p[7] = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    memset(__p, 0, 41);
    v4 = *(a2 + 23);
    if ((v4 & 0x80u) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 8);
    }

    v6 = sub_29A0D5434(&unk_2A153EDB0, v5, v5 + v4, __p, 0);
    v7 = *(a2 + 23);
    if ((v7 & 0x80u) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    sub_29A0D5600(v21, v8, v8 + v7, __p, 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (!v6)
    {
      break;
    }

    v9 = v21[0];
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v21[1] - v21[0]) >> 3);
    if (v21[1] == v21[0])
    {
      v12 = v22 + 1;
    }

    else
    {
      v12 = v21[0];
    }

    v13 = *v12;
    v14 = (v21[0] + 8);
    if (v21[1] == v21[0])
    {
      v14 = &v22[1];
    }

    v15 = *v14;
    if (v11 <= 1)
    {
      v16 = v21;
    }

    else
    {
      v16 = v21[0];
    }

    if (*(v16 + 40) == 1)
    {
      if (v11 <= 1)
      {
        v9 = v21;
      }

      sub_29A0D2BE0(__dst, v9[3], v9[4], v9[4] - v9[3]);
    }

    else
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v20 = 0;
    }

    pxrInternal__aapl__pxrReserved__::ArchGetEnv(__dst, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v18 = HIBYTE(__p[2]);
    }

    else
    {
      v18 = __p[1];
    }

    std::string::replace(a2, v13 - v10, v15 - v13, v17, v18);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }
}

void sub_29A0CD654(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_29A014BEC(locale);
  }

  std::locale::~locale(this);
}

const std::locale *sub_29A0CD6B0(const std::locale *a1, char *a2, int a3)
{
  v6 = sub_29A0CD748(a1);
  LODWORD(v6[3].__locale_) = a3;
  *(&v6[3].__locale_ + 4) = 0u;
  *(&v6[5].__locale_ + 4) = 0u;
  HIDWORD(v6[7].__locale_) = 0;
  v7 = strlen(a2);
  if (sub_29A0CD7A8(a1, a2, &a2[v7]) != &a2[v7])
  {
    sub_29A0CD97C();
  }

  return a1;
}

void sub_29A0CD728(_Unwind_Exception *a1)
{
  locale = v1[6].__locale_;
  if (locale)
  {
    sub_29A014BEC(locale);
  }

  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

const std::locale *sub_29A0CD748(const std::locale *a1)
{
  v2 = MEMORY[0x29C2C32B0]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x29EDC93D0]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  return a1;
}

unsigned __int8 *sub_29A0CD7A8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A203ED98;
  v7 = operator new(0x10uLL);
  *v7 = &unk_2A203EE68;
  v7[1] = v6;
  sub_29A0CD9D4((a1 + 40), v7);
  *(a1 + 56) = *(a1 + 40);
  v8 = *(a1 + 24) & 0x1F0;
  if (v8 > 0x3F)
  {
    switch(v8)
    {
      case 0x40u:
LABEL_12:

        return sub_29A0CDC1C(a1, a2, a3);
      case 0x80u:

        return sub_29A0CDCBC(a1, a2, a3);
      case 0x100u:

        return sub_29A0CDE04(a1, a2, a3);
      default:
        goto LABEL_24;
    }
  }

  else if (v8)
  {
    if (v8 != 16)
    {
      if (v8 != 32)
      {
LABEL_24:
        sub_29A0CDF4C();
      }

      goto LABEL_12;
    }

    return sub_29A0CDB68(a1, a2, a3);
  }

  else
  {

    return sub_29A0CDA1C(a1, a2, a3);
  }
}

void sub_29A0CD97C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 17);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void sub_29A0CD9D4(void *a1, uint64_t a2)
{
  sub_29A0CDFC0(&v5, a2);
  v3 = a1[1];
  v4 = v5;
  *&v5 = *a1;
  *(&v5 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_29A014BEC(v3);
  }
}

unsigned __int8 *sub_29A0CDA1C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_29A0CE388(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v9 = operator new(0x10uLL);
    v10 = *(a1 + 56);
    v11 = *(v10 + 8);
    *v9 = &unk_2A203EE68;
    v9[1] = v11;
    *(v10 + 8) = v9;
    *(a1 + 56) = *(*(a1 + 56) + 8);
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v12 = *(a1 + 56);
      v13 = ++v7;
      do
      {
        v14 = v7;
        v7 = sub_29A0CE388(a1, v7, a3);
      }

      while (v7 != v14);
      if (v14 == v13)
      {
        v15 = operator new(0x10uLL);
        v16 = *(a1 + 56);
        v17 = *(v16 + 8);
        *v15 = &unk_2A203EE68;
        v15[1] = v17;
        *(v16 + 8) = v15;
        *(a1 + 56) = *(*(a1 + 56) + 8);
      }

      sub_29A0CE2B0(a1, v6, v12);
    }

    while (v14 != a3);
  }

  return v7;
}

unsigned __int8 *sub_29A0CDB68(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_29A0CEB7C(a1);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_29A0D49B0(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_29A0CEBF0(a1);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      sub_29A0D4958();
    }
  }

  return v3;
}

unsigned __int8 *sub_29A0CDC1C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = sub_29A0D5048(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    sub_29A0D4958();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = *(a1 + 56);
    v10 = sub_29A0D5048(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    sub_29A0CE2B0(a1, v6, v9);
  }

  return v8;
}

unsigned __int8 *sub_29A0CDCBC(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    v9 = operator new(0x10uLL);
    v10 = *(v6 + 8);
    *v9 = &unk_2A203EE68;
    v9[1] = v10;
    *(v6 + 8) = v9;
    *(a1 + 56) = *(*(a1 + 56) + 8);
  }

  else
  {
    sub_29A0CDB68(a1, __s, v8);
  }

  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v11 = memchr(v8, 10, a3 - v8);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = a3;
    }

    v13 = *(a1 + 56);
    if (v12 == v8)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = &unk_2A203EE68;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = *(*(a1 + 56) + 8);
    }

    else
    {
      sub_29A0CDB68(a1, v8, v12);
    }

    sub_29A0CE2B0(a1, v6, v13);
    if (v12 == a3)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12 + 1;
    }
  }

  return v8;
}

unsigned __int8 *sub_29A0CDE04(uint64_t a1, unsigned __int8 *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 == __s)
  {
    v9 = operator new(0x10uLL);
    v10 = *(v6 + 8);
    *v9 = &unk_2A203EE68;
    v9[1] = v10;
    *(v6 + 8) = v9;
    *(a1 + 56) = *(*(a1 + 56) + 8);
  }

  else
  {
    sub_29A0CDC1C(a1, __s, v8);
  }

  if (v8 != a3)
  {
    ++v8;
  }

  while (v8 != a3)
  {
    v11 = memchr(v8, 10, a3 - v8);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = a3;
    }

    v13 = *(a1 + 56);
    if (v12 == v8)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      *v14 = &unk_2A203EE68;
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = *(*(a1 + 56) + 8);
    }

    else
    {
      sub_29A0CDC1C(a1, v8, v12);
    }

    sub_29A0CE2B0(a1, v6, v13);
    if (v12 == a3)
    {
      v8 = v12;
    }

    else
    {
      v8 = v12 + 1;
    }
  }

  return v8;
}

void sub_29A0CDF4C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 14);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void *sub_29A0CDFC0(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A203EDF0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29A0CE018(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B28503C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0CE034(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A0CE05C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29A0CE08C(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A203EE40))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29A0CE0CC(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0CE138(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A0CE1B4(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_29A0CE1C8(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0CE234(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

void *sub_29A0CE2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = operator new(0x18uLL);
  v7 = *(a3 + 8);
  v6[1] = *(a2 + 8);
  v6[2] = v7;
  *v6 = &unk_2A203F3D8;
  *(a2 + 8) = v6;
  *(a3 + 8) = 0;
  v8 = operator new(0x10uLL);
  v9 = *(*(a1 + 56) + 8);
  *v8 = &unk_2A203EE68;
  v8[1] = v9;
  *(a3 + 8) = v8;
  *(*(a1 + 56) + 8) = 0;
  result = operator new(0x10uLL);
  v11 = *(a3 + 8);
  *result = &unk_2A203F420;
  result[1] = v11;
  *(*(a1 + 56) + 8) = result;
  *(a1 + 56) = *(a3 + 8);
  return result;
}

unsigned __int8 *sub_29A0CE388(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = sub_29A0CE430(a1, a2, a3);
  if (result == a2)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 28);
    v9 = sub_29A0CE640(a1, a2, a3);
    result = a2;
    if (v9 != a2)
    {
      v10 = *(a1 + 28) + 1;

      return sub_29A0CE878(a1, v9, a3, v7, v8 + 1, v10);
    }
  }

  return result;
}

unsigned __int8 *sub_29A0CE430(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x5B)
  {
    if (v6 != 36)
    {
      v8 = v6 == 40;
      v7 = a2 + 1;
      v8 = !v8 || v7 == a3;
      if (!v8)
      {
        v8 = *v7 == 63;
        v9 = a2 + 2;
        if (v8 && v9 != a3)
        {
          v11 = *v9;
          if (v11 == 33)
          {
            sub_29A0CD748(v18);
            v19 = 0u;
            v21 = 0;
            v20 = 0u;
            LODWORD(v19) = *(a1 + 24);
            v12 = sub_29A0CD7A8(v18, v3 + 3, a3);
            v17 = DWORD1(v19);
            sub_29A0CECE8(a1, v18, 1, *(a1 + 28));
            *(a1 + 28) += v17;
            if (v12 == a3 || *v12 != 41)
            {
              sub_29A0CED70();
            }

            goto LABEL_31;
          }

          if (v11 == 61)
          {
            sub_29A0CD748(v18);
            v19 = 0u;
            v21 = 0;
            v20 = 0u;
            LODWORD(v19) = *(a1 + 24);
            v12 = sub_29A0CD7A8(v18, v3 + 3, a3);
            v13 = DWORD1(v19);
            sub_29A0CECE8(a1, v18, 0, *(a1 + 28));
            *(a1 + 28) += v13;
            if (v12 == a3 || *v12 != 41)
            {
              sub_29A0CED70();
            }

LABEL_31:
            v3 = v12 + 1;
            sub_29A0CD654(v18);
            return v3;
          }
        }
      }

      return v3;
    }

    sub_29A0CEBF0(a1);
    return ++v3;
  }

  if (v6 != 92)
  {
    if (v6 != 94)
    {
      return v3;
    }

    sub_29A0CEB7C(a1);
    return ++v3;
  }

  if (a2 + 1 != a3)
  {
    v15 = a2[1];
    if (v15 == 66)
    {
      v16 = 1;
    }

    else
    {
      if (v15 != 98)
      {
        return v3;
      }

      v16 = 0;
    }

    sub_29A0CEC64(a1, v16);
    v3 += 2;
  }

  return v3;
}

unsigned __int8 *sub_29A0CE640(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v6 = *a2;
  if (v6 <= 0x3E)
  {
    if (v6 != 40)
    {
      if (v6 == 46)
      {
        v7 = operator new(0x10uLL);
        v8 = *(a1 + 56);
        v9 = *(v8 + 8);
        *v7 = &unk_2A203F030;
        v7[1] = v9;
        *(v8 + 8) = v7;
        *(a1 + 56) = *(*(a1 + 56) + 8);
        return ++v3;
      }

      if (v6 - 42 >= 2)
      {
        goto LABEL_29;
      }

LABEL_35:
      sub_29A0D0888();
    }

    if (a2 + 1 != a3)
    {
      if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
      {
        v11 = (a1 + 36);
        ++*(a1 + 36);
        v12 = sub_29A0CDA1C(a1, a2 + 3, a3);
        if (v12 == a3)
        {
          goto LABEL_36;
        }

        v3 = v12;
        if (*v12 != 41)
        {
          goto LABEL_36;
        }

LABEL_25:
        --*v11;
        return ++v3;
      }

      sub_29A0D07A0(a1);
      v13 = *(a1 + 28);
      v11 = (a1 + 36);
      ++*(a1 + 36);
      v14 = sub_29A0CDA1C(a1, v3 + 1, a3);
      if (v14 != a3)
      {
        v3 = v14;
        if (*v14 == 41)
        {
          sub_29A0D0818(a1, v13);
          goto LABEL_25;
        }
      }
    }

LABEL_36:
    sub_29A0CED70();
  }

  if (*a2 <= 0x5Bu)
  {
    if (v6 == 91)
    {

      return sub_29A0D0684(a1, a2, a3);
    }

    if (v6 == 63)
    {
      goto LABEL_35;
    }

LABEL_29:

    return sub_29A0D08E0(a1, a2, a3);
  }

  if (v6 != 92)
  {
    if (v6 == 123)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  return sub_29A0D05DC(a1, a2, a3);
}

unsigned __int8 *sub_29A0CE878(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = sub_29A0D453C(a1, a2 + 1, a3, &v28);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = v28;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = v28;
LABEL_33:
              v21 = a4;
              v22 = 0;
LABEL_46:
              sub_29A0D4400(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = v28;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = v28;
LABEL_45:
            v21 = a4;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = v28;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = v28;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = sub_29A0D453C(v10, v23, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = v28;
          if (v27 >= v28)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = a4;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      sub_29A0D4630();
    }

LABEL_58:
    sub_29A0D45D8();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      v14 = 0;
      goto LABEL_26;
    }

    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void *sub_29A0CEB7C(uint64_t a1)
{
  result = operator new(0x18uLL);
  v3 = (*(a1 + 24) & 0x5F0) == 1024;
  v4 = *(a1 + 56);
  v5 = *(v4 + 8);
  *result = &unk_2A203EF10;
  result[1] = v5;
  *(result + 16) = v3;
  *(v4 + 8) = result;
  *(a1 + 56) = *(*(a1 + 56) + 8);
  return result;
}

void *sub_29A0CEBF0(uint64_t a1)
{
  result = operator new(0x18uLL);
  v3 = (*(a1 + 24) & 0x5F0) == 1024;
  v4 = *(a1 + 56);
  v5 = *(v4 + 8);
  *result = &unk_2A203EF58;
  result[1] = v5;
  *(result + 16) = v3;
  *(v4 + 8) = result;
  *(a1 + 56) = *(*(a1 + 56) + 8);
  return result;
}

__n128 sub_29A0CEC64(uint64_t a1, char a2)
{
  v4 = operator new(0x30uLL);
  v5 = *(*(a1 + 56) + 8);
  *v4 = &unk_2A203EFA0;
  *(v4 + 1) = v5;
  std::locale::locale(v4 + 2, a1);
  result = *(a1 + 8);
  *(v4 + 24) = result;
  v4[40] = a2;
  *(*(a1 + 56) + 8) = v4;
  *(a1 + 56) = *(*(a1 + 56) + 8);
  return result;
}

uint64_t sub_29A0CECE8(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = operator new(0x58uLL);
  result = sub_29A0CF290(v8, a2, a3, *(*(a1 + 56) + 8), a4);
  *(*(a1 + 56) + 8) = v8;
  *(a1 + 56) = *(*(a1 + 56) + 8);
  return result;
}

void sub_29A0CED70()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 6);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void *sub_29A0CEDC8(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0CEE34(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A0CEEB0(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_29A0CEF18(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0CEF84(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A0CF000(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_29A0CF054(std::locale *a1)
{
  a1->__locale_ = &unk_2A203EFA0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_29A0CF0E0(std::locale *a1)
{
  a1->__locale_ = &unk_2A203EFA0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_29A0CF17C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

uint64_t sub_29A0CF290(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  *a1 = &unk_2A203EFE8;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 24);
  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 40);
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = *(a2 + 56);
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  return a1;
}

std::locale *sub_29A0CF320(std::locale *a1)
{
  a1->__locale_ = &unk_2A203EFE8;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_29A014BEC(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A0CF3BC(std::locale *a1)
{
  a1->__locale_ = &unk_2A203EFE8;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_29A014BEC(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void sub_29A0CF468(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_29A0CFA14(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_29A0CF664(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:
  v19 = v9;
  operator delete(v9);
}

void sub_29A0CF5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A0CF5F0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5)
{
  *(a1 + 24) = a4;
  v8 = (a1 + 24);
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  result = sub_29A0CFA14(a1, a2, (a1 + 24));
  *(a1 + 48) = a3;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = *v8;
  *(a1 + 88) = *(a1 + 40);
  if ((a5 & 1) == 0)
  {
    *(a1 + 104) = a3;
  }

  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_29A0CF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_29A0CFB78(&v42, v36);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    *&v37 = *&v36[32];
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  sub_29A0CFC54(v13 - 64, *(a1 + 28), &v40);
  sub_29A0CFC90((v43 - 40), *(a1 + 32));
  v14 = v43;
  *(v43 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_29A0CFCC0();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_29A0D0424(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_29A0D04A4(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_29A0CFB78(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_29A0CFD18();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v43 - 96;
    sub_29A0D0028(&v42, (v43 - 96));
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_29A0D0554(v36);
  return v24;
}

void sub_29A0CF9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_29A0CFC10(&a11);
  a11 = v16 - 112;
  sub_29A0D0554(&a11);
  _Unwind_Resume(a1);
}

char *sub_29A0CFA14(char **a1, unint64_t a2, __int128 *a3)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) >= a2)
  {
    v15 = a1[1];
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - result) >> 3);
    if (v16 >= a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - result) >> 3);
    }

    if (v17)
    {
      v18 = *a3;
      v19 = *(a3 + 16);
      v20 = result;
      do
      {
        *v20 = v18;
        v20[16] = v19;
        v20 += 24;
        --v17;
      }

      while (v17);
    }

    if (a2 <= v16)
    {
      a1[1] = &result[24 * a2];
    }

    else
    {
      v21 = &v15[24 * (a2 - v16)];
      v22 = 24 * a2 - 8 * ((v15 - result) >> 3);
      do
      {
        v23 = *a3;
        *(v15 + 2) = *(a3 + 2);
        *v15 = v23;
        v15 += 24;
        v22 -= 24;
      }

      while (v22);
      a1[1] = v21;
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= a2)
    {
      v9 = a2;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    result = sub_29A012BFC(a1, v10);
    v11 = a1[1];
    v12 = &v11[24 * a2];
    v13 = 24 * a2;
    do
    {
      v14 = *a3;
      *(v11 + 2) = *(a3 + 2);
      *v11 = v14;
      v11 += 24;
      v13 -= 24;
    }

    while (v13);
    a1[1] = v12;
  }

  return result;
}

uint64_t sub_29A0CFB78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A0CFD70(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_29A0CFC10(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_29A0CFC54(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    sub_29A0D0188(a1, v5, a3);
  }

  else if (!v4)
  {
    *(a1 + 8) = *a1 + 24 * a2;
  }
}

void sub_29A0CFC90(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_29A0D0310(a1, a2 - v2);
  }
}

void sub_29A0CFCC0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 12);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void sub_29A0CFD18()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 16);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

uint64_t sub_29A0CFD70(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    v7 = sub_29A0CFEE8(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[96 * v2];
  v17 = v7;
  v18 = v8;
  *(&v19 + 1) = &v7[96 * v6];
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 1) = v9;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = *(a2 + 32);
  *(v8 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 9) = 0;
  *(v8 + 56) = *(a2 + 56);
  *(v8 + 9) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v10 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 10) = v10;
  *&v19 = v8 + 96;
  v11 = *(a1 + 8);
  v12 = &v8[*a1 - v11];
  sub_29A0CFF30(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A0D010C(&v17);
  return v16;
}

void sub_29A0CFED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0D010C(va);
  _Unwind_Resume(a1);
}

void *sub_29A0CFEE8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x2AAAAAAAAAAAAABLL)
  {
    sub_29A00C8B8();
  }

  return operator new(96 * a2);
}

uint64_t sub_29A0CFF30(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 1);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 2);
      *(a4 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 7);
      *(a4 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v9 = v7[10];
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 12;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      sub_29A0D0028(a1, v5);
      v5 += 12;
    }
  }

  return sub_29A0D0080(v11);
}

void sub_29A0D0028(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t sub_29A0D0080(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A0D00B8(a1);
  }

  return a1;
}

void sub_29A0D00B8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 12;
      sub_29A0D0028(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_29A0D010C(void **a1)
{
  sub_29A0D0140(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A0D0140(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    sub_29A0D0028(v4, (i - 96));
  }
}

void sub_29A0D0188(char **a1, unint64_t a2, __int128 *a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3) >= a2)
  {
    if (a2)
    {
      v13 = &v6[24 * a2];
      v14 = 24 * a2;
      do
      {
        v15 = *a3;
        *(v6 + 2) = *(a3 + 2);
        *v6 = v15;
        v6 += 24;
        v14 -= 24;
      }

      while (v14);
      v6 = v13;
    }

    a1[1] = v6;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = sub_29A012C48(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v8];
    v17 = &v16[24 * a2];
    v18 = 24 * a2;
    v19 = v16;
    do
    {
      v20 = *a3;
      *(v19 + 2) = *(a3 + 2);
      *v19 = v20;
      v19 += 24;
      v18 -= 24;
    }

    while (v18);
    v21 = &v12[24 * v11];
    v22 = *a1;
    v23 = a1[1];
    v24 = &v16[*a1 - v23];
    if (v23 != *a1)
    {
      v25 = v24;
      do
      {
        v26 = *v22;
        *(v25 + 2) = *(v22 + 2);
        *v25 = v26;
        v25 += 24;
        v22 += 24;
      }

      while (v22 != v23);
      v22 = *a1;
    }

    *a1 = v24;
    a1[1] = v17;
    a1[2] = v21;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

void sub_29A0D0310(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = sub_29A017BD4(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[16 * v8];
    v13 = &v11[16 * v10];
    bzero(v12, 16 * a2);
    v14 = &v12[16 * a2];
    v15 = *(a1 + 8) - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    *(a1 + 16) = v13;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

char *sub_29A0D0424(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A012BFC(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2;
      *(v7 + 16) = *(a2 + 2);
      *v7 = v8;
      v7 += 24;
      a2 = (a2 + 24);
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A0D0488(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A0D04A4(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0D0518(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29A0D04FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29A0D0518(void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    sub_29A00C9A4();
  }

  result = sub_29A017BD4(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[16 * v4];
  return result;
}

void sub_29A0D0554(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        sub_29A0D0028(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unsigned __int8 *sub_29A0D05DC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3 && *a2 == 92)
  {
    v5 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_29A0D0A38();
    }

    v7 = sub_29A0D0A90(a1, a2 + 1, a3);
    if (v7 == v5 && (v7 = sub_29A0D0B48(a1, v3 + 1, a3), v7 == v5))
    {
      v9 = sub_29A0D0C18(a1, v3 + 1, a3, 0);
      if (v9 != v5)
      {
        return v9;
      }
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

unsigned __int8 *sub_29A0D0684(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_23;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    v6 = sub_29A0D1C24(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_23;
    }

    v7 = v6;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      sub_29A0D1CA0(v6, 93);
      ++v5;
    }

    if (v5 == a3)
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = sub_29A0D2DE8(a1, v5, a3, v7);
        v9 = v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    if (v8 == a3)
    {
      goto LABEL_23;
    }

    if (*v8 == 45)
    {
      sub_29A0D1CA0(v7, 45);
      ++v8;
    }

    if (v8 == a3 || *v8 != 93)
    {
LABEL_23:
      sub_29A0D2D90();
    }

    return v8 + 1;
  }

  return a2;
}

void *sub_29A0D07A0(void *result)
{
  if ((result[3] & 2) == 0)
  {
    v1 = result;
    result = operator new(0x18uLL);
    v2 = *(v1 + 7) + 1;
    *(v1 + 7) = v2;
    v3 = v1[7];
    v4 = *(v3 + 8);
    *result = &unk_2A203F270;
    result[1] = v4;
    *(result + 4) = v2;
    *(v3 + 8) = result;
    v1[7] = *(v1[7] + 8);
  }

  return result;
}

void *sub_29A0D0818(void *result, int a2)
{
  if ((result[3] & 2) == 0)
  {
    v3 = result;
    result = operator new(0x18uLL);
    v4 = v3[7];
    v5 = *(v4 + 8);
    *result = &unk_2A203F2B8;
    result[1] = v5;
    *(result + 4) = a2;
    *(v4 + 8) = result;
    v3[7] = *(v3[7] + 8);
  }

  return result;
}

void sub_29A0D0888()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 11);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *sub_29A0D08E0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x7800000080004F1) == 0;
    if (v5 && (v4 - 123) >= 3)
    {
      sub_29A0D0F08(a1, v4);
      ++v3;
    }
  }

  return v3;
}

void *sub_29A0D0950(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0D09BC(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

void sub_29A0D0A38()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 3);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *sub_29A0D0A90(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v4 = *a2;
    if (v4 == 48)
    {
      sub_29A0D0F08(a1, 0);
      ++v3;
    }

    else if ((v4 - 49) <= 8)
    {
      v5 = (v4 - 48);
      if (++v3 != a3)
      {
        while (1)
        {
          v6 = *v3;
          if ((v6 - 48) > 9)
          {
            break;
          }

          if (v5 >= 0x19999999)
          {
            goto LABEL_14;
          }

          v5 = v6 + 10 * v5 - 48;
          if (++v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_14;
        }
      }

      if (v5 > *(a1 + 28))
      {
LABEL_14:
        sub_29A0D1008();
      }

      sub_29A0D1060(a1, v5);
    }
  }

  return v3;
}

unsigned __int8 *sub_29A0D0B48(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x63)
  {
    if (v4 == 119)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 == 115)
    {
      v10 = 0;
      goto LABEL_17;
    }

    if (v4 != 100)
    {
      return v3;
    }

    v6 = 0;
LABEL_12:
    v7 = sub_29A0D1C24(a1, v6);
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 'D':
      v6 = 1;
      goto LABEL_12;
    case 'S':
      v10 = 1;
LABEL_17:
      v7 = sub_29A0D1C24(a1, v10);
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v5 = 1;
LABEL_14:
      v9 = sub_29A0D1C24(a1, v5);
      v9[40] |= 0x500u;
      sub_29A0D1CA0(v9, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
}

unsigned __int8 *sub_29A0D0C18(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (*a2 > 0x71u)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!this)
        {
          v9 = 13;
          goto LABEL_69;
        }

        v8 = this;
        LOBYTE(v9) = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_64;
        }

        if (!this)
        {
          v9 = 9;
          goto LABEL_69;
        }

        v8 = this;
        LOBYTE(v9) = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_72;
        }

        v10 = a2[1];
        if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
        {
          goto LABEL_72;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_72;
        }

        v11 = *v4;
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v12 = -87;
        }

        v6 = 16 * (v12 + v11);
LABEL_39:
        if (v4 + 1 == a3)
        {
          goto LABEL_72;
        }

        v13 = v4[1];
        v14 = -48;
        if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
        {
          v13 |= 0x20u;
          if ((v13 - 97) >= 6)
          {
            goto LABEL_72;
          }

          v14 = -87;
        }

        if (v4 + 2 != a3)
        {
          v15 = v4[2];
          v16 = -48;
          if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
          {
LABEL_49:
            if (this)
            {
              std::string::operator=(this, v16 + v15 + 16 * (v14 + v6 + v13));
            }

            else
            {
              sub_29A0D0F08(a1, (v16 + v15 + 16 * (v14 + v6 + v13)));
            }

            v4 += 3;
            return v4;
          }

          v15 |= 0x20u;
          if ((v15 - 97) < 6)
          {
            v16 = -87;
            goto LABEL_49;
          }
        }

LABEL_72:
        sub_29A0D0A38();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_39;
        }

LABEL_64:
        if ((v5 & 0x80) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_72;
        }

        v9 = v5;
        if (this)
        {
          v8 = this;
          goto LABEL_68;
        }

LABEL_69:
        sub_29A0D0F08(a1, v9);
        return ++v4;
      }

      if (!this)
      {
        v9 = 11;
        goto LABEL_69;
      }

      v8 = this;
      LOBYTE(v9) = 11;
    }

LABEL_68:
    std::string::operator=(v8, v9);
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!this)
      {
        v9 = 12;
        goto LABEL_69;
      }

      v8 = this;
      LOBYTE(v9) = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_64;
      }

      if (!this)
      {
        v9 = 10;
        goto LABEL_69;
      }

      v8 = this;
      LOBYTE(v9) = 10;
    }

    goto LABEL_68;
  }

  if (v5 == 48)
  {
    if (!this)
    {
      v9 = 0;
      goto LABEL_69;
    }

    v8 = this;
    LOBYTE(v9) = 0;
    goto LABEL_68;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if (a2 + 1 == a3 || ((a2[1] & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_72;
  }

  v7 = a2[1] & 0x1F;
  if (this)
  {
    std::string::operator=(this, v7);
  }

  else
  {
    sub_29A0D0F08(a1, v7);
  }

  v4 += 2;
  return v4;
}

uint64_t sub_29A0D0F08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v8 = operator new(0x30uLL);
    result = sub_29A0D1160(v8, a1, a2, *(*(a1 + 56) + 8));
LABEL_6:
    *(*(a1 + 56) + 8) = v8;
    goto LABEL_7;
  }

  if ((v4 & 8) != 0)
  {
    v8 = operator new(0x30uLL);
    v9 = *(*(a1 + 56) + 8);
    *v8 = &unk_2A203F0C0;
    *(v8 + 1) = v9;
    result = std::locale::locale(v8 + 2, a1);
    *(v8 + 24) = *(a1 + 8);
    v8[40] = a2;
    goto LABEL_6;
  }

  result = operator new(0x18uLL);
  v6 = *(a1 + 56);
  v7 = *(v6 + 8);
  *result = &unk_2A203F108;
  *(result + 8) = v7;
  *(result + 16) = a2;
  *(v6 + 8) = result;
LABEL_7:
  *(a1 + 56) = *(*(a1 + 56) + 8);
  return result;
}

void sub_29A0D1008()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 4);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void *sub_29A0D1060(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = *(*(a1 + 56) + 8);
    v10 = &unk_2A203F150;
LABEL_6:
    v8->__locale_ = v10;
    result = std::locale::locale(v8 + 2, a1);
    *&v9[3].__locale_ = *(a1 + 8);
    LODWORD(v9[5].__locale_) = a2;
    *(*(a1 + 56) + 8) = v9;
    goto LABEL_7;
  }

  if ((v4 & 8) != 0)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = *(*(a1 + 56) + 8);
    v10 = &unk_2A203F198;
    goto LABEL_6;
  }

  result = operator new(0x18uLL);
  v6 = *(a1 + 56);
  v7 = *(v6 + 8);
  *result = &unk_2A203F1E0;
  result[1] = v7;
  *(result + 4) = a2;
  *(v6 + 8) = result;
LABEL_7:
  *(a1 + 56) = *(*(a1 + 56) + 8);
  return result;
}

uint64_t sub_29A0D1160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2A203F078;
  *(a1 + 8) = a4;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = (*(**(a2 + 8) + 40))(*(a2 + 8), a3);
  return a1;
}

void sub_29A0D11EC(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = &unk_2A203EEE0;
  locale = v1[1].__locale_;
  if (locale)
  {
    sub_29B28503C(locale);
  }

  _Unwind_Resume(a1);
}

std::locale *sub_29A0D122C(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F078;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_29A0D12B8(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F078;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_29A0D1354(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_29A0D13E8(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F0C0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_29A0D1474(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F0C0;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_29A0D1510(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_29A0D1558(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0D15C4(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A0D1640(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_29A0D1688(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F150;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_29A0D1714(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F150;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_29A0D17B0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_29A0D18CC(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F198;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_29A0D1958(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F198;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t sub_29A0D19F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = *(a2 + 16);
      v8 = v4;
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v7++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_29A0D1A80(void *a1)
{
  *a1 = &unk_2A203EEE0;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A0D1AEC(void *__p)
{
  *__p = &unk_2A203EEE0;
  v2 = __p[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

unsigned int *sub_29A0D1B68(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_29A0D1008();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void *sub_29A0D1C24(uint64_t a1, char a2)
{
  v4 = operator new(0xB0uLL);
  sub_29A0D1D3C(v4, a1, *(*(a1 + 56) + 8), a2, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
  *(*(a1 + 56) + 8) = v4;
  *(a1 + 56) = v4;
  return v4;
}

void sub_29A0D1CA0(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_29A00D178(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_29A00D178(a1 + 40, &v7);
}

uint64_t sub_29A0D1D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_2A203F228;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_29A0D1E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_29A012C90(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_29A0D2770(&a10);
  v15 = v10[8].__locale_;
  if (v15)
  {
    v10[9].__locale_ = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v10[6].__locale_ = v16;
    operator delete(v16);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v11;
  v17 = v10[1].__locale_;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  _Unwind_Resume(a1);
}

void sub_29A0D1F18(std::locale *a1)
{
  v1 = sub_29A0D2894(a1);

  operator delete(v1);
}

void sub_29A0D1F40(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v35 = 0;
    v36 = *(a1 + 168);
    goto LABEL_80;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_57;
  }

  v111 = *v4;
  v6 = v4[1];
  v112 = v4[1];
  if (*(a1 + 169) == 1)
  {
    v111 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v112 = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_29A0D2A34(a1 + 16, &v111, &v113, &__p);
  if ((v110 & 0x80000000) == 0)
  {
    if (v110)
    {
      goto LABEL_8;
    }

LABEL_57:
    v36 = 0;
    v35 = 1;
    goto LABEL_58;
  }

  v37 = v109;
  operator delete(__p);
  if (!v37)
  {
    goto LABEL_57;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v111 != *(v10 - 1) || v112 != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_215;
  }

LABEL_17:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    p_p = &__p;
    sub_29A0D297C(a1 + 16, &v111, &v113);
    v13 = *(a1 + 88);
    v14 = v110;
    v15 = *(a1 + 96) - v13;
    if (v15)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v105 = v110;
      if (v110 >= 0)
      {
        v17 = v110;
      }

      else
      {
        v17 = v109;
      }

      if (v110 < 0)
      {
        p_p = __p;
      }

      v18 = v16 <= 1 ? 1 : 0xAAAAAAAAAAAAAAABLL * (v15 >> 4);
      v19 = (v13 + 47);
      v20 = 1;
      v21 = 1;
      while (1)
      {
        v22 = *(v19 - 24);
        if (v22 >= 0)
        {
          v23 = *(v19 - 24);
        }

        else
        {
          v23 = *(v19 - 39);
        }

        if (v22 >= 0)
        {
          v24 = (v19 - 47);
        }

        else
        {
          v24 = *(v19 - 47);
        }

        if (v23 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(p_p, v24, v25);
        v27 = v17 >= v23;
        if (v26)
        {
          v27 = v26 >= 0;
        }

        if (v27)
        {
          v28 = *v19;
          if (v28 >= 0)
          {
            v29 = *v19;
          }

          else
          {
            v29 = *(v19 - 15);
          }

          if (v28 >= 0)
          {
            v30 = (v19 - 23);
          }

          else
          {
            v30 = *(v19 - 23);
          }

          if (v17 >= v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = v17;
          }

          v32 = memcmp(v30, p_p, v31);
          v33 = v29 >= v17;
          if (v32)
          {
            v33 = v32 >= 0;
          }

          if (v33)
          {
            break;
          }
        }

        v21 = v20++ < v16;
        v19 += 48;
        if (!--v18)
        {
          v34 = 0;
          goto LABEL_164;
        }
      }

      v34 = 5;
LABEL_164:
      v14 = v105;
    }

    else
    {
      v21 = 0;
      v34 = 0;
    }

    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v21)
    {
      v85 = 1;
      goto LABEL_195;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v85 = 0;
    goto LABEL_197;
  }

  sub_29A0D2C80(a1 + 16, &v111, &v113, &__p);
  v86 = *(a1 + 136);
  v87 = v110;
  v88 = *(a1 + 144) - v86;
  if (v88)
  {
    v89 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    if (v110 >= 0)
    {
      v90 = v110;
    }

    else
    {
      v90 = v109;
    }

    if (v110 >= 0)
    {
      v91 = &__p;
    }

    else
    {
      v91 = __p;
    }

    if (v89 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = 0xAAAAAAAAAAAAAAABLL * (v88 >> 3);
    }

    v93 = 1;
    v94 = 1;
    while (1)
    {
      v95 = *(v86 + 23);
      v96 = v95;
      if ((v95 & 0x80u) != 0)
      {
        v95 = *(v86 + 8);
      }

      if (v90 == v95)
      {
        v97 = v96 >= 0 ? v86 : *v86;
        if (!memcmp(v91, v97, v90))
        {
          break;
        }
      }

      v94 = v93++ < v89;
      v86 += 24;
      if (!--v92)
      {
        goto LABEL_192;
      }
    }

    v85 = 1;
    v34 = 5;
    if (v87 < 0)
    {
LABEL_193:
      operator delete(__p);
    }
  }

  else
  {
    v94 = 0;
LABEL_192:
    v34 = 0;
    v85 = 0;
    if (v87 < 0)
    {
      goto LABEL_193;
    }
  }

  if (!v94)
  {
LABEL_197:
    if (v111 < 0)
    {
      v101 = *(a1 + 164);
    }

    else
    {
      v98 = *(a1 + 160);
      v99 = *(*(a1 + 24) + 16);
      v100 = *(v99 + 4 * v111);
      if (((v100 & v98) != 0 || v111 == 95 && (v98 & 0x80) != 0) && (v112 & 0x8000000000000000) == 0 && ((*(v99 + 4 * v112) & v98) != 0 || (v98 & 0x80) != 0 && v112 == 95))
      {
        goto LABEL_215;
      }

      v101 = *(a1 + 164);
      if ((v100 & v101) != 0 || v111 == 95 && (v101 & 0x80) != 0)
      {
LABEL_214:
        v36 = v85;
LABEL_216:
        v35 = 2;
        goto LABEL_80;
      }
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * v112) & v101) == 0)
      {
        v36 = 1;
        if (v112 != 95 || (v101 & 0x80) == 0)
        {
          goto LABEL_216;
        }
      }

      goto LABEL_214;
    }

LABEL_215:
    v36 = 1;
    goto LABEL_216;
  }

LABEL_195:
  v35 = 2;
  v36 = v85;
  if (v34)
  {
    goto LABEL_80;
  }

LABEL_58:
  v38 = **(a2 + 16);
  v111 = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v38) = (*(**(a1 + 24) + 40))(*(a1 + 24), v38);
    v111 = v38;
  }

  v39 = *(a1 + 40);
  v40 = *(a1 + 48) - v39;
  if (v40)
  {
    if (v40 <= 1)
    {
      v40 = 1;
    }

    do
    {
      v41 = *v39++;
      if (v41 == v38)
      {
        goto LABEL_79;
      }
    }

    while (--v40);
  }

  v42 = *(a1 + 164);
  if (v42 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v38 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v38) & v42) == 0)
    {
      v43 = (v38 == 95) & (v42 >> 7);
    }

    else
    {
      LOBYTE(v43) = 1;
    }

    v44 = *(a1 + 72);
    v45 = memchr(*(a1 + 64), v38, v44 - *(a1 + 64));
    v46 = !v45 || v45 == v44;
    v47 = !v46;
    if ((v43 & 1) == 0 && !v47)
    {
LABEL_79:
      v36 = 1;
      goto LABEL_80;
    }
  }

  v50 = *(a1 + 88);
  v51 = *(a1 + 96);
  if (v50 != v51)
  {
    if (*(a1 + 170) == 1)
    {
      sub_29A0D297C(a1 + 16, &v111, &v112);
      v50 = *(a1 + 88);
      v51 = *(a1 + 96);
    }

    else
    {
      v110 = 1;
      LOWORD(__p) = v38;
    }

    v52 = v51 - v50;
    if (v52)
    {
      v103 = v110;
      v106 = v35;
      v102 = v36;
      v53 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      if (v110 >= 0)
      {
        v54 = v110;
      }

      else
      {
        v54 = v109;
      }

      if (v110 >= 0)
      {
        v55 = &__p;
      }

      else
      {
        v55 = __p;
      }

      if (v53 <= 1)
      {
        v56 = 1;
      }

      else
      {
        v56 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 4);
      }

      v57 = (v50 + 47);
      v58 = 1;
      v59 = 1;
      while (1)
      {
        v60 = *(v57 - 24);
        if (v60 >= 0)
        {
          v61 = *(v57 - 24);
        }

        else
        {
          v61 = *(v57 - 39);
        }

        if (v60 >= 0)
        {
          v62 = (v57 - 47);
        }

        else
        {
          v62 = *(v57 - 47);
        }

        if (v61 >= v54)
        {
          v63 = v54;
        }

        else
        {
          v63 = v61;
        }

        v64 = memcmp(v55, v62, v63);
        v65 = v54 >= v61;
        if (v64)
        {
          v65 = v64 >= 0;
        }

        if (v65)
        {
          v66 = *v57;
          if (v66 >= 0)
          {
            v67 = *v57;
          }

          else
          {
            v67 = *(v57 - 15);
          }

          if (v66 >= 0)
          {
            v68 = (v57 - 23);
          }

          else
          {
            v68 = *(v57 - 23);
          }

          if (v54 >= v67)
          {
            v69 = v67;
          }

          else
          {
            v69 = v54;
          }

          v70 = memcmp(v68, v55, v69);
          v71 = v67 >= v54;
          if (v70)
          {
            v71 = v70 >= 0;
          }

          if (v71)
          {
            break;
          }
        }

        v59 = v58++ < v53;
        v57 += 48;
        if (!--v56)
        {
          v36 = v102;
          goto LABEL_128;
        }
      }

      v36 = 1;
LABEL_128:
      v35 = v106;
      if ((v103 & 0x80) == 0)
      {
LABEL_130:
        if (v59)
        {
          goto LABEL_80;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v59 = 0;
      if ((v110 & 0x80) == 0)
      {
        goto LABEL_130;
      }
    }

    operator delete(__p);
    goto LABEL_130;
  }

LABEL_131:
  if (*(a1 + 136) == *(a1 + 144))
  {
    goto LABEL_157;
  }

  v72 = &__p;
  sub_29A0D2C80(a1 + 16, &v111, &v112, &__p);
  v73 = *(a1 + 136);
  v74 = *(a1 + 144) - v73;
  if (!v74)
  {
    v79 = 0;
    if ((v110 & 0x80) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_155;
  }

  v104 = v110;
  v107 = v35;
  v75 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  if (v110 >= 0)
  {
    v76 = v110;
  }

  else
  {
    v76 = v109;
  }

  if (v110 < 0)
  {
    v72 = __p;
  }

  if (v75 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = 0xAAAAAAAAAAAAAAABLL * (v74 >> 3);
  }

  v78 = 1;
  v79 = 1;
  while (1)
  {
    v80 = *(v73 + 23);
    v81 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v80 = *(v73 + 8);
    }

    if (v76 == v80)
    {
      v82 = v81 >= 0 ? v73 : *v73;
      if (!memcmp(v72, v82, v76))
      {
        break;
      }
    }

    v79 = v78++ < v75;
    v73 += 24;
    if (!--v77)
    {
      goto LABEL_154;
    }
  }

  v36 = 1;
LABEL_154:
  v35 = v107;
  if (v104 < 0)
  {
LABEL_155:
    operator delete(__p);
  }

LABEL_156:
  if (v79)
  {
    goto LABEL_80;
  }

LABEL_157:
  v83 = *(a1 + 160);
  if ((v111 & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v111) & v83) != 0)
  {
    goto LABEL_79;
  }

  v84 = (v83 >> 7) & 1;
  if (v111 != 95)
  {
    LOBYTE(v84) = 0;
  }

  v36 |= v84;
LABEL_80:
  if (*(a1 + 168) == (v36 & 1))
  {
    v48 = 0;
    v49 = -993;
  }

  else
  {
    *(a2 + 16) += v35;
    v48 = *(a1 + 8);
    v49 = -995;
  }

  *a2 = v49;
  *(a2 + 80) = v48;
}

void sub_29A0D2770(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_29A0D27F8(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A0D27F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_29A0D2850(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::locale *sub_29A0D2894(std::locale *a1)
{
  a1->__locale_ = &unk_2A203F228;
  v7 = a1 + 17;
  sub_29A012C90(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_29A0D2770(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_2A203EEE0;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_29A0D297C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_29A0D2BE0(__p, a2, a3, a3 - a2);
  v4 = v7;
  if ((v7 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v7 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v5, v5 + v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0D2A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0D2A34(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29A0D2BE0(&__s, a2, a3, a3 - a2);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a4 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a1 + 16) + 32))(&v11);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v11;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    v9 = *(a4 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a4 = 0;
      *(a4 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a4 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a4, &__s);
    goto LABEL_9;
  }

  **a4 = 0;
  *(a4 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_29A0D2BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0D2BE0(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

void sub_29A0D2C80(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_29A0D2BE0(__p, a2, a3, a3 - a2);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v7, v7 + v6);
  v8 = *(a4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
    }

    else
    {
      *a4 = 0;
      *(a4 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A0D2D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0D2D90()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C2C18E0](exception, 5);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *sub_29A0D2DE8(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return v4;
  }

  v6 = a4;
  memset(&v25, 0, sizeof(v25));
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_9:
    v11 = *(a1 + 24) & 0x1F0;
    goto LABEL_10;
  }

  v9 = a2[1];
  if (v9 != 46)
  {
    if (v9 == 58)
    {
      v10 = sub_29A0D3358(a1, a2 + 2, a3, a4);
      goto LABEL_34;
    }

    if (v9 == 61)
    {
      v10 = sub_29A0D319C(a1, a2 + 2, a3, a4);
LABEL_34:
      v6 = v10;
      v18 = 0;
      goto LABEL_42;
    }

    goto LABEL_9;
  }

  v19 = sub_29A0D33EC(a1, a2 + 2, a3, &v25);
  v4 = v19;
  v11 = *(a1 + 24) & 0x1F0;
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  v13 = v19;
  if (!size)
  {
LABEL_10:
    if ((v11 | 0x40) == 0x40)
    {
      v12 = *v4;
      if (v12 == 92)
      {
        if (v11)
        {
          v13 = sub_29A0D35EC(a1, v4 + 1, a3, &v25);
        }

        else
        {
          v13 = sub_29A0D34B4(a1, v4 + 1, a3, &v25, v6);
          v11 = 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v12) = *v4;
    }

    std::string::operator=(&v25, v12);
    v13 = v4 + 1;
  }

LABEL_16:
  if (v13 == a3 || (v14 = *v13, v14 == 93) || (v16 = v13 + 1, v13 + 1 == a3) || v14 != 45 || *v16 == 93)
  {
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v25.__r_.__value_.__l.__size_)
      {
        if (v25.__r_.__value_.__l.__size_ != 1)
        {
          v15 = v25.__r_.__value_.__r.__words[0];
LABEL_40:
          sub_29A0D3BC8(v6, v15->__r_.__value_.__s.__data_[0], v15->__r_.__value_.__s.__data_[1]);
          goto LABEL_41;
        }

        v15 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_25;
      }
    }

    else if (*(&v25.__r_.__value_.__s + 23))
    {
      v15 = &v25;
      if (HIBYTE(v25.__r_.__value_.__r.__words[2]) != 1)
      {
        goto LABEL_40;
      }

LABEL_25:
      sub_29A0D1CA0(v6, v15->__r_.__value_.__s.__data_[0]);
    }

LABEL_41:
    v18 = 1;
    v4 = v13;
    goto LABEL_42;
  }

  memset(&v24, 0, sizeof(v24));
  v4 = v13 + 2;
  if (v13 + 2 != a3 && *v16 == 91 && *v4 == 46)
  {
    v17 = sub_29A0D33EC(a1, v13 + 3, a3, &v24);
LABEL_55:
    v4 = v17;
    goto LABEL_56;
  }

  if ((v11 | 0x40) == 0x40)
  {
    LODWORD(v16) = *v16;
    if (v16 == 92)
    {
      if (v11)
      {
        v17 = sub_29A0D35EC(a1, v13 + 2, a3, &v24);
      }

      else
      {
        v17 = sub_29A0D34B4(a1, v13 + 2, a3, &v24, v6);
      }

      goto LABEL_55;
    }
  }

  else
  {
    LOBYTE(v16) = *v16;
  }

  std::string::operator=(&v24, v16);
LABEL_56:
  v23 = v25;
  memset(&v25, 0, sizeof(v25));
  __p = v24;
  memset(&v24, 0, sizeof(v24));
  sub_29A0D37C8(v6, &v23, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v18 = 1;
LABEL_42:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v18)
  {
    return v4;
  }

  return v6;
}

void sub_29A0D313C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0D319C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_32;
  }

  v7 = a2;
  for (i = a2; ; v7 = i)
  {
    v9 = *i++;
    if (v9 == 61 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_32;
    }

    --v4;
  }

  if (v7 == a3)
  {
LABEL_32:
    sub_29A0D2D90();
  }

  sub_29A0D2A34(a1, a2, v7, &v19);
  v10 = v21;
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v21)
    {
      v11 = &v19;
      goto LABEL_13;
    }

LABEL_33:
    sub_29A0D3CA4();
  }

  v10 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v11 = v19;
LABEL_13:
  sub_29A0D2C80(a1, v11, v11 + v10, __p);
  v12 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v12 = __p[1];
  }

  if (v12)
  {
    sub_29A070BA0(a4 + 136);
  }

  v13 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v13 = v20;
  }

  if (v13 == 2)
  {
    v15 = &v19;
    if ((v21 & 0x80u) != 0)
    {
      v15 = v19;
    }

    sub_29A0D3BC8(a4, *v15, v15[1]);
  }

  else
  {
    if (v13 != 1)
    {
      sub_29A0D3CA4();
    }

    v14 = &v19;
    if ((v21 & 0x80u) != 0)
    {
      v14 = v19;
    }

    sub_29A0D1CA0(a4, *v14);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v19);
  }

  return v7 + 2;
}

void sub_29A0D3320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0D3358(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_10;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 58 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_10;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_10:
    sub_29A0D2D90();
  }

  v9 = sub_29A0D3D54(a1, a2, v6, *(a1 + 24) & 1);
  if (!v9)
  {
    sub_29A0D3CFC();
  }

  *(a4 + 160) |= v9;
  return v6 + 2;
}

uint64_t sub_29A0D33EC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - a2 - 2;
  if (a3 - a2 < 2)
  {
    goto LABEL_14;
  }

  v6 = a2;
  for (i = a2; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_29A0D2D90();
  }

  sub_29A0D2A34(a1, a2, v6, &v12);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_29A0D3CA4();
  }

  return v6 + 2;
}

unsigned __int8 *sub_29A0D34B4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_29A0D0A38();
  }

  v6 = *a2;
  if (v6 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v6 != 115)
      {
        if (v6 != 119)
        {
          goto LABEL_25;
        }

        *(a5 + 160) |= 0x500u;
        sub_29A0D1CA0(a5, 95);
        return a2 + 1;
      }

      v8 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v6 == 98)
      {
        v9 = this;
        v10 = 8;
LABEL_19:
        std::string::operator=(v9, v10);
        return a2 + 1;
      }

      if (v6 != 100)
      {
        goto LABEL_25;
      }

      v8 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v8;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (*a2)
    {
      if (v6 == 68)
      {
        v7 = *(a5 + 164) | 0x400;
LABEL_21:
        *(a5 + 164) = v7;
        return a2 + 1;
      }

      goto LABEL_25;
    }

    v9 = this;
    v10 = 0;
    goto LABEL_19;
  }

  if (v6 == 83)
  {
    v7 = *(a5 + 164) | 0x4000;
    goto LABEL_21;
  }

  if (v6 == 87)
  {
    *(a5 + 164) |= 0x500u;
    sub_29A0D3E28(a5, 95);
    return a2 + 1;
  }

LABEL_25:

  return sub_29A0D0C18(a1, a2, a3, this);
}

unsigned __int8 *sub_29A0D35EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::string *this)
{
  if (a2 == a3)
  {
LABEL_51:
    sub_29A0D0A38();
  }

  v5 = *a2;
  v6 = v5;
  if (v5 <= 101)
  {
    if (v5 <= 91)
    {
      if (v5 != 34 && v5 != 47)
      {
        goto LABEL_32;
      }
    }

    else if (v5 != 92)
    {
      if (v5 == 97)
      {
        if (this)
        {
          v7 = this;
          LOBYTE(v6) = 7;
          goto LABEL_31;
        }

        v6 = 7;
        goto LABEL_47;
      }

      if (v5 == 98)
      {
        if (this)
        {
          v7 = this;
          LOBYTE(v6) = 8;
LABEL_31:
          std::string::operator=(v7, v6);
          return a2 + 1;
        }

        v6 = 8;
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    if (this)
    {
      v7 = this;
      goto LABEL_31;
    }

    goto LABEL_47;
  }

  if (v5 <= 113)
  {
    if (v5 == 102)
    {
      if (this)
      {
        v7 = this;
        LOBYTE(v6) = 12;
        goto LABEL_31;
      }

      v6 = 12;
      goto LABEL_47;
    }

    if (v5 == 110)
    {
      if (this)
      {
        v7 = this;
        LOBYTE(v6) = 10;
        goto LABEL_31;
      }

      v6 = 10;
      goto LABEL_47;
    }
  }

  else
  {
    switch(v5)
    {
      case 'r':
        if (this)
        {
          v7 = this;
          LOBYTE(v6) = 13;
          goto LABEL_31;
        }

        v6 = 13;
        goto LABEL_47;
      case 't':
        if (this)
        {
          v7 = this;
          LOBYTE(v6) = 9;
          goto LABEL_31;
        }

        v6 = 9;
        goto LABEL_47;
      case 'v':
        if (this)
        {
          v7 = this;
          LOBYTE(v6) = 11;
          goto LABEL_31;
        }

        v6 = 11;
LABEL_47:
        sub_29A0D0F08(a1, v6);
        return a2 + 1;
    }
  }

LABEL_32:
  if ((v6 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_51;
  }

  v8 = v5 - 48;
  v9 = a2 + 1;
  if (a2 + 1 != a3 && (*v9 & 0xF8) == 0x30)
  {
    v8 = *v9 + 8 * v8 - 48;
    v9 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v10 = *v9 + 8 * v8 - 48;
      if ((*v9 & 0xF8) == 0x30)
      {
        v9 = a2 + 3;
        v8 = v10;
      }
    }
  }

  if (this)
  {
    std::string::operator=(this, v8);
  }

  else
  {
    sub_29A0D0F08(a1, v8);
  }

  return v9;
}