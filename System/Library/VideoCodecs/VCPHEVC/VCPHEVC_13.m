int *sub_2774636C4(int *result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v11 = result;
  v12 = *(result + 1);
  v13 = *result + 4 * a6;
  v14 = a6;
  v15 = *(v13 + 4);
  v16 = *(v13 + 6);
  if (a8 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  *(v12 + 40) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = -1;
  v47 = v17;
  *(v12 + 44) = v17;
  v18 = &result[4 * a8 + 3260];
  v46 = a7;
  v19 = a7 >> 16;
  if (a8 == 1)
  {
    v20 = -9;
  }

  else
  {
    v20 = -8;
  }

  v21 = &unk_27750E850 + 18 * a8 + 2 * (a8 != 1) + 1;
  do
  {
    *(*(v11 + 1) + 4 * v14 + 4) = v15 + *(v21 - 1);
    *(*(v11 + 1) + 4 * v14 + 6) = v16 + *v21;
    v22 = *(v11 + 1);
    if ((v11[3172] & 1) != 0 || (v26 = *(v22 + 4 * v14 + 4), v27 = v11[3184], v26 << 16 >= v27 << 16) && v26 <= v27 >> 16 && ((v28 = v11[3185], v29 = v26 >> 16, v29 >= v28) ? (v30 = v29 <= v28 >> 16) : (v30 = 0), v30))
    {
      *(v22 + 40) = 0;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = -1;
      *(v22 + 44) = v47;
      v23 = *v18;
      v24 = *(v18 + 8);
      v25 = (v11 + (v24 >> 1));
      if (v24)
      {
        v23 = *(*v25 + v23);
      }

      v23(v25, *(v11 + 1), a2, a3, a4, a5, a9, a10, a6);
      result = (*(a11 + 5))(*a11, a11[1], *(a11 + 2), *(a11 + 3), a10, *(a11 + 4));
      v31 = *(v11 + 1);
      *(v31 + 16) = result;
      v32 = v31 + 4 * v14;
      v34 = *(v32 + 4);
      v33 = v32 + 4;
      v35 = v34 - v46;
      v36 = v34 - v46 + 64;
      if (v36 >= 0x80)
      {
        if (v35 >= 0)
        {
          v38 = v35;
        }

        else
        {
          v38 = -v35;
        }

        v37 = 63 - 2 * __clz((v35 < 1) | (2 * v38));
      }

      else
      {
        v37 = byte_277533E48[v36];
      }

      v39 = *(v33 + 2) - v19;
      if ((v39 + 64) >= 0x80)
      {
        if (v39 >= 0)
        {
          v41 = *(v33 + 2) - v19;
        }

        else
        {
          v41 = v19 - *(v33 + 2);
        }

        v40 = 63 - 2 * __clz((v39 < 1) | (2 * v41));
      }

      else
      {
        v40 = byte_277533E48[v39 + 64];
      }

      v42 = v40 + v37;
      *(v31 + 40) = v42;
      v43 = ((v42 * *(*(v11 + 1619) + 2 * *(v31 + 44) + 24)) >> (8 * (*(v31 + 44) == 0))) + result;
      *(v31 + 32) = v43;
      v44 = *v11;
      if (v43 < *(*v11 + 32))
      {
        *(v44 + v14) = *(v31 + v14);
        *(v44 + 4 * v14 + 4) = *v33;
        *(v44 + 16) = *(v31 + 16);
        *(v44 + 40) = *(v31 + 40);
        *(v44 + 32) = *(v31 + 32);
      }
    }

    v21 += 2;
  }

  while (!__CFADD__(v20++, 1));
  return result;
}

int *sub_2774639A0(int *result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, unsigned int *a11)
{
  v11 = result;
  v12 = 0;
  v95 = *MEMORY[0x277D85DE8];
  v13 = *result + 4 * a6;
  v14 = a6;
  v15 = *(v13 + 4);
  v16 = *(v13 + 6);
  v79 = *(result + a8 + 12848);
  LOWORD(v13) = *(*result + 44);
  *(*(result + 1) + a6) = *(*result + a6);
  v17 = a8 != 1;
  v18 = *(result + 1);
  *(v18 + 40) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = -1;
  v92 = v13;
  *(v18 + 44) = v13;
  v86 = &result[4 * a8 + 3260];
  v84 = a7 >> 16;
  v85 = a7;
  v19 = &unk_27750E96C + 10 * a8 + 2 * v17 + 1;
  do
  {
    *(*(v11 + 1) + 4 * v14 + 4) = v15 + *(v19 - 1);
    *(*(v11 + 1) + 4 * v14 + 6) = v16 + *v19;
    v20 = *(v11 + 1);
    if (!v17 || (v11[3172] & 1) != 0 || (v21 = *(v20 + 4 * v14 + 4), v22 = v11[3184], v21 << 16 >= v22 << 16) && v21 <= v22 >> 16 && ((v23 = v11[3185], v24 = v21 >> 16, v24 >= v23) ? (v25 = v24 <= v23 >> 16) : (v25 = 0), v25))
    {
      *(v20 + 40) = 0;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = -1;
      *(v20 + 44) = v92;
      v26 = *v86;
      v27 = *(v86 + 8);
      v28 = (v11 + (v27 >> 1));
      if (v27)
      {
        v26 = *(*v28 + v26);
      }

      v26(v28, *(v11 + 1), a2, a3, a4, a5, a9, a10, a6);
      result = (*(a11 + 5))(*a11, a11[1], *(a11 + 2), *(a11 + 3), a10, *(a11 + 4));
      v29 = *(v11 + 1);
      *(v29 + 16) = result;
      v30 = v29 + 4 * v14;
      v32 = *(v30 + 4);
      v31 = v30 + 4;
      v33 = v32 - v85;
      v34 = v32 - v85 + 64;
      if (v34 >= 0x80)
      {
        if (v33 >= 0)
        {
          v36 = v33;
        }

        else
        {
          v36 = -v33;
        }

        v35 = 63 - 2 * __clz((v33 < 1) | (2 * v36));
      }

      else
      {
        v35 = byte_277533E48[v34];
      }

      v37 = *(v31 + 2) - v84;
      if ((v37 + 64) >= 0x80)
      {
        if (v37 >= 0)
        {
          v39 = *(v31 + 2) - v84;
        }

        else
        {
          v39 = v84 - *(v31 + 2);
        }

        v38 = 63 - 2 * __clz((v37 < 1) | (2 * v39));
      }

      else
      {
        v38 = byte_277533E48[v37 + 64];
      }

      v40 = v38 + v35;
      *(v29 + 40) = v40;
      v41 = ((v40 * *(*(v11 + 1619) + 2 * *(v29 + 44) + 24)) >> (8 * (*(v29 + 44) == 0))) + result;
      *(v29 + 32) = v41;
      v42 = *v11;
      if (v41 < *(*v11 + 32))
      {
        *(v42 + v14) = *(v29 + v14);
        *(v42 + 4 * v14 + 4) = *v31;
        *(v42 + 16) = *(v29 + 16);
        *(v42 + 40) = *(v29 + 40);
        *(v42 + 32) = *(v29 + 32);
        v12 = v17;
      }
    }

    v19 += 2;
    ++v17;
  }

  while (v17 != 5);
  if (v12)
  {
    v43 = 0;
    v44 = *v11 + 4 * v14;
    v45 = *(v44 + 4);
    v46 = *(v44 + 6);
    do
    {
      *(&v93 + v43) = byte_27750E980[3 * v12 + v43];
      ++v43;
    }

    while (v43 != 3);
    v47 = *(v11 + 1);
    *(v47 + 40) = 0;
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    *(v47 + 32) = -1;
    *(v47 + 44) = v92;
    if (v79)
    {
      v48 = 0;
      v49 = 3;
      v50 = &unk_27750E96C + 10 * a8;
      do
      {
        v80 = v12;
        v81 = v48;
        v51 = 0;
        v52 = 4 * v49;
        v83 = -1;
        do
        {
          v53 = *(&v93 + v51);
          v54 = &v50[2 * v53];
          *(*(v11 + 1) + 4 * v14 + 4) = v45 + *v54;
          *(*(v11 + 1) + 4 * v14 + 6) = v46 + v54[1];
          v55 = *(v11 + 1);
          if ((v11[3172] & 1) != 0 || (v59 = *(v55 + 4 * v14 + 4), v60 = v11[3184], v59 << 16 >= v60 << 16) && v59 <= v60 >> 16 && ((v61 = v11[3185], v62 = v59 >> 16, v62 >= v61) ? (v63 = v62 <= v61 >> 16) : (v63 = 0), v63))
          {
            *(v55 + 40) = 0;
            *(v55 + 16) = 0;
            *(v55 + 24) = 0;
            *(v55 + 32) = -1;
            *(v55 + 44) = v92;
            v56 = *v86;
            v57 = *(v86 + 8);
            v58 = (v11 + (v57 >> 1));
            if (v57)
            {
              v56 = *(*v58 + v56);
            }

            v56(v58, *(v11 + 1), a2, a3, a4, a5, a9, a10, a6);
            result = (*(a11 + 5))(*a11, a11[1], *(a11 + 2), *(a11 + 3), a10, *(a11 + 4));
            v64 = *(v11 + 1);
            *(v64 + 16) = result;
            v65 = v64 + 4 * v14;
            v67 = *(v65 + 4);
            v66 = v65 + 4;
            v68 = v67 - v85;
            v69 = v67 - v85 + 64;
            if (v69 >= 0x80)
            {
              if (v68 >= 0)
              {
                v71 = v68;
              }

              else
              {
                v71 = -v68;
              }

              v70 = 63 - 2 * __clz((v68 < 1) | (2 * v71));
            }

            else
            {
              v70 = byte_277533E48[v69];
            }

            v72 = *(v66 + 2) - v84;
            if ((v72 + 64) >= 0x80)
            {
              if (v72 >= 0)
              {
                v74 = *(v66 + 2) - v84;
              }

              else
              {
                v74 = v84 - *(v66 + 2);
              }

              v73 = 63 - 2 * __clz((v72 < 1) | (2 * v74));
            }

            else
            {
              v73 = byte_277533E48[v72 + 64];
            }

            v75 = v73 + v70;
            *(v64 + 40) = v75;
            v76 = ((v75 * *(*(v11 + 1619) + 2 * *(v64 + 44) + 24)) >> (8 * (*(v64 + 44) == 0))) + result;
            *(v64 + 32) = v76;
            v77 = *v11;
            if (v76 < *(*v11 + 32))
            {
              *(v77 + v14) = *(v64 + v14);
              *(v77 + 4 * v14 + 4) = *v66;
              *(v77 + 16) = *(v64 + 16);
              *(v77 + 40) = *(v64 + 40);
              *(v77 + 32) = *(v64 + 32);
              v83 = v53;
            }
          }

          v51 += 4;
        }

        while (v52 != v51);
        v12 = v83;
        if (v83 == -1)
        {
          break;
        }

        v93 = v83;
        if (((v83 - 1) ^ (v80 - 1)) > 1)
        {
          v94.i32[0] = v80;
          v49 = 2;
        }

        else
        {
          v94 = vsub_s32(0x400000003, vdup_n_s32((v83 - 1) & 0xFFFFFFFE));
          v49 = 3;
        }

        v78 = *v11 + 4 * v14;
        v45 = *(v78 + 4);
        v46 = *(v78 + 6);
        v48 = v81 + 1;
      }

      while (v81 + 1 != v79);
    }
  }

  return result;
}

uint64_t sub_277463FF4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v10 = a5;
  v13 = a2 + 4 * a9;
  v14 = *(v13 + 4);
  v15 = *(v13 + 6);
  if ((v14 | v15))
  {
    v17 = v15 & 3;
    v18 = *(*(a1 + 12944) + (a9 << 8) + 16 * *(a2 + a9) + 1672);
    v19 = a4 + (v15 >> 2);
    v20 = -3 - a6;
    v21 = *(v18 + 524) + 2;
    if (v19 >= v21)
    {
      v22 = *(v18 + 524) + 2;
    }

    else
    {
      v22 = v19;
    }

    if (v19 <= v20)
    {
      v23 = -3 - a6;
    }

    else
    {
      v23 = v22;
    }

    if (v17 == 3)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = v19;
    }

    if (v24 >= v21)
    {
      v25 = *(v18 + 524) + 2;
    }

    else
    {
      v25 = v24;
    }

    if (v24 <= v20)
    {
      v26 = -3 - a6;
    }

    else
    {
      v26 = v25;
    }

    if (v23 <= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23;
    }

    sub_2773F8C98(v18, v27 + a6);
    v28 = __clz(__rbit32(v10));
    if (*(*(a1 + 12944) + 32 * a9 + 2 * *(a2 + a9) + 5120))
    {
      return (*(a1 + 8 * v28 + 12984))(a6);
    }

    else
    {
      v29 = *(a1 + 8 * v28 + 12944);

      return v29(a6);
    }
  }

  else
  {

    return sub_277464270(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_277464270(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v14 = *(*(a1 + 12944) + (a9 << 8) + 16 * *(a2 + a9) + 1672);
  v15 = *(v14 + 520) + 2;
  v16 = a2 + 4 * a9;
  v17 = a3 + (*(v16 + 4) >> 2);
  if (v17 < v15)
  {
    v15 = a3 + (*(v16 + 4) >> 2);
  }

  if (v17 <= -3 - a5)
  {
    v18 = -3 - a5;
  }

  else
  {
    v18 = v15;
  }

  v19 = *(v14 + 524) + 2;
  v20 = a4 + (*(v16 + 6) >> 2);
  if (v20 < v19)
  {
    v19 = a4 + (*(v16 + 6) >> 2);
  }

  if (v20 <= -3 - a6)
  {
    v21 = -3 - a6;
  }

  else
  {
    v21 = v19;
  }

  sub_2773F8C98(v14, v21 + a6);
  v22 = *(v16 + 4);
  v23 = v14 + 8 * (HIWORD(v22) & 2 | (v22 >> 1) & 1);
  v24 = *(v23 + 120);
  v25 = *(v23 + 88) + ((v24 * v21 + v18) << *(v14 + 156));
  v26 = 2 * (v22 & 3);
  v27 = (v22 >> 15) & 6;
  v28 = *(a1 + 12944);
  v29 = *(a2 + a9);
  if (*(v28 + 32 * a9 + 2 * v29 + 5120))
  {
    return sub_27746442C(a1, a5, a6, *(v28 + 664), *(v28 + (a9 << 8) + 16 * v29 + 672), *(v28 + (a9 << 8) + 16 * v29 + 676), v26 | (v27 << 16), v24, v25, a7, a8);
  }

  v31 = *(v28 + 8 * (v27 & 2 | (v26 >> 1) & 1) + 3224);

  return v31(a5, a6, v26 | (v27 << 16), v24, v25, a7, a8);
}

uint64_t sub_27746442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = MEMORY[0x28223BE20]();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v11;
  v30 = *MEMORY[0x277D85DE8];
  (*(*(v11 + 12944) + ((8 * ((v23 & 3) != 0)) | (16 * ((*&v23 & 0x30000) != 0))) + 3224))(v20, v18, v23, v24, a9, v20, v29);
  v28[0] = v15;
  v28[1] = v15;
  v27[0] = v13;
  v27[1] = v13;
  v25 = __clz(__rbit32(v21)) - 2;
  if (!v21)
  {
    v25 = -2;
  }

  return (*(v22 + 8 * v25 + 13088))(v19, v17, v28, v27, v29, a10, a11);
}

uint64_t sub_277464560(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v13 = *(*(a1 + 12944) + (a9 << 8) + 16 * *(a2 + a9) + 1672);
  v14 = *(v13 + 416);
  v15 = *(v13 + 520) + 2;
  v16 = a2 + 4 * a9;
  v18 = *(v16 + 4);
  v17 = (v16 + 4);
  v19 = a3 + (v18 >> 2);
  if (v19 < v15)
  {
    v15 = v19;
  }

  if (v19 <= -3 - a5)
  {
    v20 = -3 - a5;
  }

  else
  {
    v20 = v15;
  }

  v21 = *(v13 + 524) + 2;
  v22 = a4 + (*(v17 + 1) >> 2);
  if (v22 < v21)
  {
    v21 = a4 + (*(v17 + 1) >> 2);
  }

  if (v22 <= -3 - a6)
  {
    v23 = -3 - a6;
  }

  else
  {
    v23 = v21;
  }

  sub_2773F8C98(v13, v23 + a6);
  v24 = *(a1 + 12944);
  v25 = *(a2 + a9);
  if (*(v24 + 32 * a9 + 2 * v25 + 5120))
  {
    return sub_27746442C(a1, a5, a6, *(v24 + 664), *(v24 + (a9 << 8) + 16 * v25 + 672), *(v24 + (a9 << 8) + 16 * v25 + 676), *v17, v14, *(v13 + 400) + ((*(v13 + 416) * v23 + v20) << *(v13 + 531)), a7, a8);
  }

  v27 = *(v24 + ((8 * ((*v17 & 3) != 0)) | (16 * ((*v17 & 0x30000) != 0))) + 3224);

  return v27(a5, a6);
}

uint64_t sub_27746470C(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  result = (*(a3 + 5))(*a3, a3[1], *(a3 + 2), *(a3 + 3), a4, *(a3 + 4));
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_27746474C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = (a1 + 12320);
  if (*(a1 + 12664))
  {
    v7 = *(a1 + 12664);
  }

  else
  {
    v7 = a1 + 12320;
  }

  result = (*(a3 + 48))(*(a3 + 16), *(a3 + 24), a4, *(a3 + 32), v7);
  *(a2 + 2) = result;
  v9 = *(a1 + 12664);
  if (!v9)
  {
    v9 = v6;
  }

  if (*(a1 + 16) == 1)
  {
    v10 = *a2;
    if (v10 == 15)
    {
      v11 = 0;
      v12 = *(a2 + 10);
    }

    else
    {
      v13 = a2[1];
      v14 = *(a2 + 10);
      if (v13 != 15)
      {
        v14 += *(a1 + 12672);
      }

      v11 = v13 != 15;
      if (v10 == 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v10 + 1;
      }

      v12 = v15 + v14;
    }

    v16 = *(a1 + 68);
    if (v16 >= 1)
    {
      v17 = *a2;
      v18 = BYTE1(*a2);
      v19.i64[0] = -1;
      v19.i16[6] = 1;
      v19.i16[7] = HIWORD(*(a2 + 2));
      v20 = BYTE1(*a2);
      if (v18 != 1)
      {
        ++v20;
      }

      if (v18 == 15)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v19.i32[2] = v21 + v12;
      v22 = (a1 + 144 * *(a1 + 72) + 152);
      v23.i64[1] = 0;
      do
      {
        v24 = *v9++;
        v23.i64[0] = v24 >> v11;
        v25 = vextq_s8(v19, v19, 8uLL).u64[0];
        v19.i64[0] = ((v19.i32[2] * *(*(a1 + 12680) + 2 * v19.i16[6] + 24)) >> (8 * (v19.i16[6] == 0))) + v23.i64[0];
        v19.i64[1] = v25;
        if (v19.i64[0] < v22->i64[0])
        {
          v22[-2] = v17;
          v22[-1] = v23;
          *v22 = v19;
        }

        v22 += 9;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t sub_2774648C4(uint64_t result, int a2, int a3, int a4, int a5, unsigned int a6, __int16 *a7)
{
  v7 = result + 4 * a6;
  v8 = 4 * *(v7 + 12700) + 8;
  v9 = a7[1] + 4 * a3;
  if (v9 < v8)
  {
    LOWORD(v8) = a7[1] + 4 * a3;
  }

  if (*(*(*(result + 12944) + 4768) + 232))
  {
    v10 = 0;
  }

  else
  {
    v10 = -12 - 4 * a5;
  }

  if (*(*(*(result + 12944) + 4768) + 232))
  {
    v11 = 0;
  }

  else
  {
    v11 = -12 - 4 * a4;
  }

  if (v9 > v10)
  {
    LOWORD(v10) = v8;
  }

  a7[1] = v10 - 4 * a3;
  v12 = 4 * *(v7 + 12692) + 8;
  v13 = *a7 + 4 * a2;
  if (v13 < v12)
  {
    LOWORD(v12) = *a7 + 4 * a2;
  }

  if (v13 <= v11)
  {
    LOWORD(v12) = v11;
  }

  *a7 = v12 - 4 * a2;
  return result;
}

void *sub_277464948(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13)
{
  v86.i8[a6] = *(a11 + a6);
  v13 = 1 - a6;
  *(&v86 | v13) = *(a11 + v13);
  v86.i32[v13 + 1] = *(a11 + 4 + 4 * v13);
  v80 = result[1608];
  v81 = result[1607];
  v14 = result[1619] + 8 * __clz(__rbit32(a4));
  v73 = *(v14 + 520);
  v74 = *(v14 + 208);
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v89 = -1;
  v91 = 1;
  if (*(a7 + 48))
  {
    v16 = a4;
    v19 = result;
    v20 = 0;
    v21 = &v86.i16[2 * a6 + 2];
    v76 = result + 1630;
    v77 = v21;
    v23 = a4 > 4 && a4 == a5;
    v75 = v23;
    v72 = result + 1540;
    v71 = result + 19;
    v24.i64[0] = -1;
    v24.i64[1] = 0xFFFF0001FFFFFFFFLL;
    v70 = v24;
    v78 = a4;
    v84 = a5;
    v79 = a7;
    do
    {
      v83 = v20;
      v25 = *(a7 + 4 * v20);
      *v21 = v25;
      sub_2774648C4(v19, a2, a3, v16, a5, a6, v21);
      v26 = v25;
      v27 = v25 - *a8;
      if ((v27 + 64) >= 0x80)
      {
        if (v27 >= 0)
        {
          v29 = v25 - *a8;
        }

        else
        {
          v29 = *a8 - v25;
        }

        v28 = 63 - 2 * __clz((v27 < 1) | (2 * v29));
      }

      else
      {
        v28 = byte_277533E48[v27 + 64];
      }

      v30 = v25 >> 16;
      v31 = (v25 >> 16) - (*a8 >> 16);
      if ((v31 + 64) >= 0x80)
      {
        if (v31 >= 0)
        {
          v33 = (v25 >> 16) - (*a8 >> 16);
        }

        else
        {
          v33 = (*a8 >> 16) - (v25 >> 16);
        }

        v32 = 63 - 2 * __clz((v31 < 1) | (2 * v33));
      }

      else
      {
        v32 = byte_277533E48[v31 + 64];
      }

      v82 = v25;
      v34 = v32 + v28;
      v90 = v34;
      v35 = *(a8 + 48);
      if (v35 < 2)
      {
        v36 = 0;
      }

      else
      {
        v36 = 0;
        for (i = 1; i != v35; ++i)
        {
          v38 = *(a8 + 4 * i);
          v39 = v26 - v38;
          if ((v39 + 64) >= 0x80)
          {
            if (v39 >= 0)
            {
              v41 = v26 - v38;
            }

            else
            {
              v41 = v38 - v26;
            }

            v40 = 63 - 2 * __clz((v39 < 1) | (2 * v41));
          }

          else
          {
            v40 = byte_277533E48[v39 + 64];
          }

          v42 = v30 - (v38 >> 16);
          if ((v42 + 64) >= 0x80)
          {
            if (v42 >= 0)
            {
              v44 = v42;
            }

            else
            {
              v44 = -v42;
            }

            v43 = 63 - 2 * __clz((v42 < 1) | (2 * v44));
          }

          else
          {
            v43 = byte_277533E48[v42 + 64];
          }

          v45 = v43 + v40;
          if (v45 < v34)
          {
            v90 = v45;
            v34 = v45;
            v36 = i;
          }
        }
      }

      v46 = &v76[2 * (((v21[1] | *v21) & 1) == 0)];
      v47 = *v46;
      v48 = v46[1];
      v49 = (v19 + (v48 >> 1));
      if (v48)
      {
        v47 = *(*v49 + v47);
      }

      v47(v49, &v86, a2, a3, v16, v84, a9);
      if (v75)
      {
        if (*(v19 + 12664))
        {
          v50 = *(v19 + 12664);
        }

        else
        {
          v50 = v72;
        }

        result = v73(v81, v80, a10, a9, v50);
        v51 = result;
        v87 = result;
        v52 = *(v19 + 12664);
        if (!v52)
        {
          v52 = v72;
        }

        if (*(v19 + 16) == 1)
        {
          a7 = v79;
          v53 = v83;
          v21 = v77;
          if (v86.i8[0] == 15)
          {
            v54 = 0;
            v55 = v90;
          }

          else
          {
            v59 = v90;
            if (v86.u8[1] != 15)
            {
              v59 = *(v19 + 12672) + v90;
            }

            v54 = v86.u8[1] != 15;
            if (v86.i8[0] == 1)
            {
              v60 = 1;
            }

            else
            {
              v60 = v86.i8[0] + 1;
            }

            v55 = v60 + v59;
          }

          v61 = *(v19 + 68);
          if (v61 >= 1)
          {
            v62 = v86;
            v63 = v70;
            v63.i16[7] = v92;
            v64 = v86.i8[1];
            if (v86.u8[1] != 1)
            {
              v64 = v86.i8[1] + 1;
            }

            if (v86.u8[1] == 15)
            {
              v65 = 0;
            }

            else
            {
              v65 = v64;
            }

            v63.i32[2] = v65 + v55;
            v66 = &v71[18 * *(v19 + 72)];
            v67.i64[1] = 0;
            do
            {
              v68 = *v52++;
              v67.i64[0] = v68 >> v54;
              v69 = vextq_s8(v63, v63, 8uLL).u64[0];
              v63.i64[0] = ((v63.i32[2] * *(*(v19 + 12680) + 2 * v63.i16[6] + 24)) >> (8 * (v63.i16[6] == 0))) + v67.i64[0];
              v63.i64[1] = v69;
              if (v63.i64[0] < v66->i64[0])
              {
                v66[-2] = v62;
                v66[-1] = v67;
                *v66 = v63;
              }

              v66 += 9;
              --v61;
            }

            while (v61);
          }

          v56 = a13;
          if (!a13)
          {
            goto LABEL_55;
          }

LABEL_54:
          *(v56 + 8 * v53) = v51;
          goto LABEL_55;
        }

        a7 = v79;
        v56 = a13;
        v53 = v83;
      }

      else
      {
        result = v74(v16, v84, v81, v80, a10, a9);
        v51 = result;
        v87 = result;
        a7 = v79;
        v56 = a13;
        v53 = v83;
      }

      v21 = v77;
      if (v56)
      {
        goto LABEL_54;
      }

LABEL_55:
      v89 = v51 + ((v90 * *(*(v19 + 12952) + 2 * v91 + 24)) >> (8 * (v91 == 0)));
      a5 = v84;
      v16 = v78;
      if (v89 < *(a11 + 32))
      {
        v57 = v86.i8[a6];
        *v21 = v82;
        *(a11 + a6) = v57;
        *(a11 + 4 + 4 * a6) = v82;
        v58 = v89;
        *(a11 + 16) = v87;
        *(a11 + 40) = v90;
        *(a11 + 32) = v58;
        *a12 = v36;
      }

      v20 = v53 + 1;
    }

    while (v20 < *(a7 + 48));
  }

  return result;
}

uint64_t sub_277464EE8(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5)
{
  v5 = *(a3 + 4 * a5 + 4);
  v6 = *(a3 + 16);
  v7 = *(a3 + 44);
  v8 = *(a3 + 44) == 0;
  v9 = *a4;
  v10 = *(a3 + 40) + 1;
  *(a3 + 40) = v10;
  v11 = *(result + 2 * v7 + 24);
  v12 = 8 * v8;
  v13 = v6 + ((v10 * v11) >> v12);
  *(a3 + 32) = v13;
  v14 = *(a2 + 48);
  if (*(a2 + 48))
  {
    v15 = 0;
    v16 = v5;
    v17 = v5 >> 16;
    result = *a4;
    do
    {
      if (v15 != result)
      {
        v18 = *(a2 + 4 * v15);
        v19 = v16 - v18;
        if ((v19 + 64) >= 0x80)
        {
          if (v19 >= 0)
          {
            v21 = v16 - v18;
          }

          else
          {
            v21 = v18 - v16;
          }

          v20 = 63 - 2 * __clz((v19 < 1) | (2 * v21));
        }

        else
        {
          v20 = byte_277533E48[v19 + 64];
        }

        v22 = v17 - (v18 >> 16);
        if ((v22 + 64) >= 0x80)
        {
          if (v22 >= 0)
          {
            v24 = v22;
          }

          else
          {
            v24 = -v22;
          }

          v23 = 63 - 2 * __clz((v22 < 1) | (2 * v24));
        }

        else
        {
          v23 = byte_277533E48[v22 + 64];
        }

        v25 = v20 + v23 + 1;
        v26 = v6 + ((v25 * v11) >> v12);
        if (v26 < v13)
        {
          *(a3 + 40) = v25;
          *(a3 + 32) = v26;
          result = *a4;
          v13 = v6 + ((v25 * v11) >> v12);
          v9 = v15;
        }
      }

      ++v15;
    }

    while (v14 != v15);
  }

  *a4 = v9;
  return result;
}

uint64_t sub_277465008(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a2 + 4 * a3 + 4);
  v5 = v4;
  v6 = v4 >> 16;
  if ((a4 & 0x80000000) != 0)
  {
    v10 = 0;
    v11 = -1;
  }

  else
  {
    v7 = *(a1 + 4 * a4);
    v8 = v4 - v7;
    if ((v8 + 64) >= 0x80)
    {
      if (v8 >= 0)
      {
        v12 = v5 - v7;
      }

      else
      {
        v12 = v7 - v5;
      }

      v9 = 63 - 2 * __clz((v8 < 1) | (2 * v12));
    }

    else
    {
      v9 = byte_277533E48[v8 + 64];
    }

    v13 = v6 - (v7 >> 16);
    if ((v13 + 64) >= 0x80)
    {
      if (v13 >= 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = -v13;
      }

      v14 = 63 - 2 * __clz((v13 < 1) | (2 * v15));
    }

    else
    {
      v14 = byte_277533E48[v13 + 64];
    }

    v11 = v9 + v14 + 1;
    v10 = a4;
  }

  if (*(a1 + 48))
  {
    v16 = 0;
    v17 = a4;
    do
    {
      if (v17 != v16)
      {
        v18 = *(a1 + 4 * v16);
        v19 = v5 - v18;
        if ((v19 + 64) >= 0x80)
        {
          if (v19 >= 0)
          {
            v21 = v5 - v18;
          }

          else
          {
            v21 = v18 - v5;
          }

          v20 = 63 - 2 * __clz((v19 < 1) | (2 * v21));
        }

        else
        {
          v20 = byte_277533E48[v19 + 64];
        }

        v22 = v6 - (v18 >> 16);
        if ((v22 + 64) >= 0x80)
        {
          if (v22 >= 0)
          {
            v24 = v22;
          }

          else
          {
            v24 = -v22;
          }

          v23 = 63 - 2 * __clz((v22 < 1) | (2 * v24));
        }

        else
        {
          v23 = byte_277533E48[v22 + 64];
        }

        v25 = v20 + v23;
        if (v25 + 1 >= v11)
        {
          v10 = v10;
        }

        else
        {
          v10 = v16;
        }

        if (v25 + 1 < v11)
        {
          v11 = v25 + 1;
        }
      }

      ++v16;
    }

    while (*(a1 + 48) != v16);
  }

  *(a2 + 40) += v11;
  return v10;
}

uint64_t sub_27746517C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = a2[1];
  if (v16 == 15)
  {
    v17 = &a1[2 * (((*(a2 + 3) | *(a2 + 2)) & 1) == 0)];
    v18 = v17[1630];
    v19 = v17[1631];
    v20 = (a1 + (v19 >> 1));
LABEL_3:
    if (v19)
    {
      v18 = *(*v20 + v18);
    }

    return v18(v20, a2, a3, a4, a5, a6, a7, a8, 0);
  }

  v21 = *a2;
  if (v21 == 15)
  {
    v22 = &a1[2 * (((*(a2 + 5) | *(a2 + 4)) & 1) == 0)];
    v23 = v22[1630];
    v24 = v22[1631];
    v25 = (a1 + (v24 >> 1));
    if (v24)
    {
      v23 = *(*v25 + v23);
    }

    return v23(v25, a2, a3, a4, a5, a6, a7, a8, 1);
  }

  else
  {
    v27 = *(a2 + 1);
    v28 = a1[1618] + 1672;
    v29 = *(v28 + 16 * v16 + 256);
    LODWORD(v28) = *(*(v28 + 16 * v21) + 1024);
    v30 = *(v29 + 1024);
    v31 = &a1[2 * ((v27 & 0x10001) == 0) + 1630];
    v18 = *v31;
    v19 = *(v31 + 8);
    v20 = (a1 + (v19 >> 1));
    if (v28 == v30 && v27 == *(a2 + 2))
    {
      goto LABEL_3;
    }

    v41 = a1[1615];
    v33 = __clz(__rbit32(a5));
    if (v19)
    {
      v18 = *(*v20 + v18);
    }

    v40 = v33 - 2;
    v42 = a1[1612];
    (v18)(v20, a2, a3, a4, a5, a6, a5);
    v34 = &a1[2 * (((*(a2 + 5) | *(a2 + 4)) & 1) == 0) + 1630];
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = (a1 + (v36 >> 1));
    if (v36)
    {
      v35 = *(*v37 + v35);
    }

    v35(v37, a2, a3, a4, a5, a6, a5, v41, 1);
    if (a5)
    {
      v38 = v40;
    }

    else
    {
      v38 = -2;
    }

    v39 = a1[v38 + 1620];

    return v39(a6, a5, v42, a5, v41, a7, a8);
  }
}

uint64_t sub_277465410(uint64_t a1)
{
  v2 = *(a1 + 152);
  if ((v2 - 7) < 0xFFFFFFFA)
  {
    if (v2 == 8)
    {
      v3 = *(a1 + 159);
      if (v3 == 5 || dword_280B9A880 <= 2)
      {
        return 255;
      }

      goto LABEL_12;
    }

LABEL_10:
    if (dword_280B9A880 < 3)
    {
      return 255;
    }

    v3 = *(a1 + 159);
LABEL_12:
    fprintf(*MEMORY[0x277D85DF8], "Unknown level %d.%d requested, writing level 8.5 instead!\n", v2, v3);
    syslog(27, "Unknown level %d.%d requested, writing level 8.5 instead!\n", *(a1 + 152), *(a1 + 159));
    return 255;
  }

  v5 = *(a1 + 159);
  if (v5 > byte_27750EB38[v2 - 1])
  {
    goto LABEL_10;
  }

  return word_27750EA84[3 * *(a1 + 152) - 3 + v5];
}

uint64_t sub_2774654F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if ((v4 - 33) < 5 || v4 == 1)
  {
    v6 = *(a2 + 290);
    if (v6 <= *(a2 + 291))
    {
      LOBYTE(v6) = *(a2 + 291);
    }

    v7 = (v6 - 9);
    if (v7 >= 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    *(a1 + 8) = v8;
    v9 = 1 << *(a2 + 177);
    *(a1 + 168) = v8;
    v10 = ((v9 - 1 + *(a2 + 106)) & -v9) * ((v9 - 1 + *(a2 + 108)) & -v9);
    v11 = (*(a2 + 112) * v10);
    if (v7 >= 2 && v10 <= 0x220000 && v11 <= 0x3FC0000)
    {
      *(a1 + 152) = 4;
      *(a1 + 159) = 0;
LABEL_18:
      v12 = *(a1 + 7) & 0xFE;
LABEL_41:
      *(a1 + 7) = v12;
      goto LABEL_42;
    }

    if (v10 <= 0x220000 && v11 <= 0x7F80000)
    {
      *(a1 + 152) = 4;
      *(a1 + 159) = 1;
      goto LABEL_18;
    }

    if (v10 > 0x880000)
    {
      goto LABEL_20;
    }

    if (v11 <= 0xFF00000)
    {
      *(a1 + 152) = 5;
      *(a1 + 159) = 0;
      goto LABEL_40;
    }

    if (v11 > 0x1FE00000)
    {
LABEL_20:
      if (dword_280B9A880 >= 7)
      {
        fwrite("Set to L5.1 high tier, but it is not enough for this encode!\n", 0x3DuLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(31, "Set to L5.1 high tier, but it is not enough for this encode!\n");
      }
    }

    *(a1 + 152) = 5;
    *(a1 + 159) = 1;
LABEL_40:
    v12 = *(a1 + 7) | 1;
    goto LABEL_41;
  }

  if (*(a2 + 290) <= *(a2 + 291))
  {
    v13 = *(a2 + 291);
  }

  else
  {
    v13 = *(a2 + 290);
  }

  if (v13 >= 11)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "bit depth %d not supported\n", v13);
      syslog(27, "bit depth %d not supported\n");
    }

    return 4294954394;
  }

  v14 = *(a2 + 169) + *(a2 + 168);
  *(a1 + 168) = 0;
  v15 = *(a2 + 296);
  if (v15)
  {
    if (v15 != 1)
    {
      if (dword_280B9A880 >= 3)
      {
        v35 = *MEMORY[0x277D85DF8];
        v36 = "Unable to determine a profile\n";
        v37 = "Unable to determine a profile\n";
        v38 = 30;
        goto LABEL_89;
      }

      return 4294954394;
    }

    if (v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    if (v13 == 8)
    {
      v17 = v16;
    }

    else
    {
      v17 = 2;
    }
  }

  else if (v13 == 8)
  {
    v17 = 2020;
  }

  else
  {
    v17 = 1892;
  }

  *(a1 + 168) = v17;
  v28 = 1 << *(a2 + 177);
  v29 = v28 - 1;
  v30 = -v28;
  v31 = (v28 - 1 + *(a2 + 106)) & -v28;
  v32 = (v29 + *(a2 + 108)) & v30;
  if (v31 <= v32)
  {
    v33 = (v29 + *(a2 + 108)) & v30;
  }

  else
  {
    v33 = v31;
  }

  v34 = *(a2 + 112);
  if (v34 == 0.0)
  {
    if (dword_280B9A880 >= 3)
    {
      v35 = *MEMORY[0x277D85DF8];
      v36 = "fps cannot be 0\n";
      v37 = "fps cannot be 0\n";
      v38 = 16;
LABEL_89:
      fwrite(v37, v38, 1uLL, v35);
      syslog(27, v36);
      return 4294954394;
    }

    return 4294954394;
  }

  v39 = v31 * v32;
  v40 = v34 * (v31 * v32);
  v41 = *(a2 + 188);
  if (!v41 && (*(a2 + 69) & 1) == 0 && dword_280B9A880 >= 7)
  {
    fwrite("requested bitrate is 0, ignoring level bitrate limits\n", 0x36uLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(31, "requested bitrate is 0, ignoring level bitrate limits\n");
  }

  v42 = 0;
  v43 = dword_27750EA18;
  v44 = dword_27750EAA8;
  *(a1 + 152) = 0;
  v45 = &unk_27750E9D0;
  v46 = &unk_27750EA60;
  while (2)
  {
    v47 = 0;
    v48 = v44;
    do
    {
      v49 = v43[v47];
      if (v49)
      {
        v50 = v49 >= v39;
      }

      else
      {
        v50 = 0;
      }

      if (v50 && v46[v47] && v33 <= v46[v47])
      {
        v52 = v45[v47];
        if (v52 && v52 >= v40)
        {
          v54 = v48[18];
          if (*v48 > v54)
          {
            v54 = *v48;
          }

          if (1000 * v54 >= v41)
          {
            *(a1 + 7) |= *v48 < v41;
            *(a1 + 152) = v42 + 1;
            v55 = *(a1 + 168);
            goto LABEL_120;
          }
        }
      }

      ++v47;
      ++v48;
    }

    while (v47 != 3);
    ++v42;
    v43 += 3;
    v44 += 3;
    v45 += 3;
    v46 += 3;
    if (v42 != 6)
    {
      continue;
    }

    break;
  }

  if (v14)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "luma(picture_size/picture_dim/sample_rate)/bit_rate is too big to fit in any level: (%d/%d/%d)/%d\n", v39, v33, v40, v41);
      syslog(27, "luma(picture_size/picture_dim/sample_rate)/bit_rate is too big to fit in any level: (%d/%d/%d)/%d\n");
    }

    return 4294954394;
  }

  if (*(a2 + 296) == 1)
  {
    v67 = 3;
  }

  else
  {
    v67 = 6372;
  }

  if (v13 == 8)
  {
    v55 = v67;
  }

  else
  {
    v55 = 6148;
  }

  *(a1 + 168) = v55;
  *(a1 + 152) = 8;
  LOBYTE(v47) = 5;
LABEL_120:
  *(a1 + 159) = v47;
  *(a1 + 8) = v55 & 0x1F;
  v56 = *(a2 + 100);
  if (v56 && v56 != v55)
  {
    if (v56 > 3)
    {
      if (*(a2 + 69) != 1 || *(a2 + 296) || (v55 != 3044 || v56 != 2020) && (v56 != 1892 || ((v55 - 2916) & 0xFFFFFF7F) != 0))
      {
LABEL_153:
        if (dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "input profile %d is not applicable, suggesting %d\n", *(a2 + 100), v55);
          syslog(27, "input profile %d is not applicable, suggesting %d\n");
        }

        return 4294954394;
      }
    }

    else if (((dword_27750EB44[v56 - 1] >> v55) & 1) == 0)
    {
      goto LABEL_153;
    }
  }

  if (!*(a2 + 104))
  {
    goto LABEL_42;
  }

  v57 = *(a2 + 104);
  if (v57 < sub_277465410(a1))
  {
    if (dword_280B9A880 >= 3)
    {
      v58 = *MEMORY[0x277D85DF8];
      v59 = *(a2 + 104);
      v60 = sub_277465410(a1);
      fprintf(v58, "input level %d is not applicable, suggesting %d\n", v59, v60);
      sub_277465410(a1);
      syslog(27, "input level %d is not applicable, suggesting %d\n");
    }

    return 4294954394;
  }

  v61 = *(a2 + 104);
  if (v61 > sub_277465410(a1))
  {
    v62 = 0;
    v63 = *(a2 + 104);
    *(a1 + 159) = 0;
    v64 = word_27750EA84;
    *(a1 + 152) = 0;
    while (2)
    {
      for (i = 0; i != 3; ++i)
      {
        if (v64[i])
        {
          v66 = v64[i] == v63;
        }

        else
        {
          v66 = 0;
        }

        if (v66)
        {
          *(a1 + 152) = v62 + 1;
          *(a1 + 159) = i;
          goto LABEL_42;
        }
      }

      ++v62;
      v64 += 3;
      if (v62 != 6)
      {
        continue;
      }

      break;
    }
  }

LABEL_42:
  v18 = *(a1 + 8);
  if ((v18 - 1) >= 3)
  {
    v19 = 1 << v18;
  }

  else
  {
    v19 = dword_27750EB44[(v18 - 1)];
  }

  *(a1 + 16) = v19;
  v20 = sub_277465410(a1);
  *(a1 + 57) = v20;
  if (v20 == 255)
  {
    *(a1 + 68) = 0x8000000080000000;
LABEL_57:
    v25 = 16;
    goto LABEL_58;
  }

  v21 = *(a1 + 152);
  if ((v21 - 7) <= 0xFFFFFFF9)
  {
    LODWORD(v22) = *(a1 + 159);
LABEL_50:
    v23 = 0x7FFFFFFF;
    goto LABEL_52;
  }

  v22 = *(a1 + 159);
  if (v22 > byte_27750EB38[v21 - 1])
  {
    goto LABEL_50;
  }

  v23 = dword_27750EA18[3 * *(a1 + 152) - 3 + v22];
LABEL_52:
  *(a1 + 68) = v23;
  *(a1 + 72) = dword_27750EAA8[18 * (*(a1 + 7) & 1) - 3 + 3 * v21 + v22];
  v24 = (((1 << *(a2 + 177)) - 1 + *(a2 + 106)) & -(1 << *(a2 + 177))) * (((1 << *(a2 + 177)) - 1 + *(a2 + 108)) & -(1 << *(a2 + 177)));
  if (v24 <= v23 >> 2)
  {
    goto LABEL_57;
  }

  if (v24 <= v23 >> 1)
  {
    v25 = 12;
  }

  else if (v24 <= (3 * v23) >> 2)
  {
    v25 = 8;
  }

  else
  {
    v25 = 6;
  }

LABEL_58:
  *(a1 + 76) = v25;
  *a1 = 0;
  *(a1 + 44) |= 1u;
  *(a1 + 46) |= 1u;
  *(a1 + 47) |= 1u;
  *(a1 + 56) |= 1u;
  v26 = *(a1 + 168);
  if ((v26 & 0x20) != 0)
  {
    *(a1 + 48) |= 1u;
    if ((v26 & 0x40) == 0)
    {
LABEL_60:
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_72;
    }
  }

  else if ((v26 & 0x40) == 0)
  {
    goto LABEL_60;
  }

  *(a1 + 49) |= 1u;
  if ((v26 & 0x80) == 0)
  {
LABEL_61:
    if ((v26 & 0x100) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a1 + 50) |= 1u;
  if ((v26 & 0x100) == 0)
  {
LABEL_62:
    if ((v26 & 0x200) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a1 + 51) |= 1u;
  if ((v26 & 0x200) == 0)
  {
LABEL_63:
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a1 + 52) |= 1u;
  if ((v26 & 0x400) == 0)
  {
LABEL_64:
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_75:
  *(a1 + 53) |= 1u;
  if ((v26 & 0x800) != 0)
  {
LABEL_65:
    *(a1 + 54) |= 1u;
  }

LABEL_66:
  if (v26 == 6372 || v26 == 6148)
  {
    *(a1 + 55) |= 1u;
  }

  result = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_277465D84(_BYTE *a1, int a2, uint64_t a3)
{
  a1[a2] = sub_2773FB848(a3, 2);
  a1[7] |= (sub_2773FB848(a3, 1) != 0) << a2;
  v6 = 0;
  v7 = a1 + 8;
  a1[a2 + 8] = sub_2773FB848(a3, 5);
  v8 = a1 + 16;
  do
  {
    *&v8[4 * a2] |= (sub_2773FB848(a3, 1) != 0) << v6++;
  }

  while (v6 != 32);
  a1[44] |= (sub_2773FB848(a3, 1) != 0) << a2;
  a1[45] |= (sub_2773FB848(a3, 1) != 0) << a2;
  a1[46] |= (sub_2773FB848(a3, 1) != 0) << a2;
  a1[47] |= (sub_2773FB848(a3, 1) != 0) << a2;
  if (v7[a2] > 3u || (v8[4 * a2] & 0x10) != 0)
  {
    a1[48] |= (sub_2773FB848(a3, 1) != 0) << a2;
    a1[49] |= (sub_2773FB848(a3, 1) != 0) << a2;
    a1[50] |= (sub_2773FB848(a3, 1) != 0) << a2;
    a1[51] |= (sub_2773FB848(a3, 1) != 0) << a2;
    a1[52] |= (sub_2773FB848(a3, 1) != 0) << a2;
    a1[53] |= (sub_2773FB848(a3, 1) != 0) << a2;
    a1[54] |= (sub_2773FB848(a3, 1) != 0) << a2;
    a1[55] |= (sub_2773FB848(a3, 1) != 0) << a2;
    a1[56] |= (sub_2773FB848(a3, 1) != 0) << a2;
    v9 = 13;
  }

  else
  {
    a1[48] |= 1 << a2;
    a1[49] |= 1 << a2;
    a1[51] |= 1 << a2;
    a1[52] |= 1 << a2;
    if (v7[a2] == 3)
    {
      a1[54] |= 1 << a2;
    }

    v9 = 22;
  }

  sub_2773FB848(a3, v9);

  return sub_2773FB848(a3, 22);
}

uint64_t sub_2774660B0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 >= 7)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "maxNumSubLayersMinus1 (%d) out of range [0, %d]\n", a2, 6);
      syslog(27, "maxNumSubLayersMinus1 (%d) out of range [0, %d]\n");
    }

    return 4294954387;
  }

  sub_277465D84(a1, 0, a3);
  *(a1 + 57) = sub_2773FB848(a3, 8);
  v6 = (a1 + 57);
  if (a2 <= 0)
  {
    v12 = (a2 + 1);
  }

  else
  {
    v7 = 1;
    v8 = a2;
    do
    {
      *(a1 + 64) |= (sub_2773FB848(a3, 1) != 0) << v7;
      *(a1 + 65) |= (sub_2773FB848(a3, 1) != 0) << v7++;
      --v8;
    }

    while (v8);
    v9 = a2 - 8;
    do
    {
      sub_2773FB848(a3, 2);
    }

    while (!__CFADD__(v9++, 1));
    v11 = 0;
    v12 = (a2 + 1);
    do
    {
      v13 = v11 + 1;
      v14 = 1 << (v11 + 1);
      if ((v14 & *(a1 + 64)) != 0)
      {
        sub_277465D84(a1, v13, a3);
      }

      else
      {
        v15 = a1 + v11;
        *(v15 + 1) = *a1;
        *(a1 + 7) |= (*(a1 + 7) & 1) << v13;
        *(v15 + 9) = *(a1 + 8);
        *(a1 + 4 * v11 + 20) = *(a1 + 16);
        v16 = *(a1 + 44);
        v17 = vmovl_u8(vand_s8(v16, 0x101010101010101));
        v18 = vdupq_n_s32(v13);
        v19 = vorr_s8(v16, vmovn_s16(vuzp1q_s16(vshlq_u32(vmovl_u16(*v17.i8), v18), vshlq_u32(vmovl_high_u16(v17), v18))));
        *(a1 + 44) = v19;
        v19.i32[0] = *(a1 + 52);
        v20 = vmovl_u8(v19).u64[0];
        v21 = vorr_s8(v20, vmovn_s32(vshlq_u32(vmovl_u16((*&v20 & 0xFF01FF01FF01FF01)), v18)));
        *(a1 + 52) = vuzp1_s8(v21, v21).u32[0];
        *(a1 + 56) |= (*(a1 + 56) & 1) << v13;
      }

      if ((v14 & *(a1 + 65)) != 0)
      {
        v22 = sub_2773FB848(a3, 8);
      }

      else
      {
        v22 = *v6;
      }

      *(a1 + v11++ + 58) = v22;
    }

    while (v12 - 1 != v11);
  }

  v23 = 0;
  v24 = a1 + 152;
  v25 = a1 + 159;
  v26 = a1 + 8;
  v27 = a1 + 16;
  v28 = MEMORY[0x277D85DF8];
  v29 = &unk_27750EB38;
  while (2)
  {
    v30 = v6[v23] % 0x1Eu;
    *(v24 + v23) = v6[v23] / 0x1Eu;
    *(v25 + v23) = v30 / 3u;
    if (!*(v26 + v23))
    {
      *(v24 + v23) = 4;
      *(v25 + v23) = 0;
      v6[v23] = 120;
      *(v26 + v23) = 1;
      *(v27 + 4 * v23) = 6;
    }

    if (*(a1 + v23))
    {
      if (dword_280B9A880 >= 3)
      {
        fwrite("profile_space_[layer_idx] == 0 failed!\n", 0x27uLL, 1uLL, *v28);
        syslog(27, "profile_space_[layer_idx] == 0 failed!\n");
      }

      return 4294954387;
    }

    v31 = *(v24 + v23);
    if (((v31 - 7) < 0xFFFFFFFA || *(v25 + v23) > v29[v31 - 1]) && v6[v23] != 255 && dword_280B9A880 >= 6)
    {
      v36 = v12;
      v32 = v29;
      fprintf(*v28, "Unknown level %d.%d\n", v31, *(v25 + v23));
      syslog(30, "Unknown level %d.%d\n", *(v24 + v23), *(v25 + v23));
      v29 = v32;
      v12 = v36;
    }

    v33 = 0;
    while (1)
    {
      v34 = byte_27750EB3E[v33];
      if (*(v26 + v23) == v34 || ((*(v27 + 4 * v23) >> v34) & 1) != 0)
      {
        break;
      }

      if (++v33 == 4)
      {
        if (dword_280B9A880 >= 3)
        {
          fprintf(*v28, "Profile %d not supported\n", *(v26 + v23));
          syslog(27, "Profile %d not supported\n");
        }

        return 4294954387;
      }
    }

    if (++v23 != v12)
    {
      continue;
    }

    break;
  }

  return 0;
}

uint64_t sub_2774664DC(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v6 = a2;
  sub_2773FB780(a3, a1[a2], 2);
  sub_2773FB780(a3, (a1[7] >> a2) & 1, 1);
  sub_2773FB780(a3, a1[a2 + 8], 5);
  v7 = 0;
  v8 = a1 + 16;
  do
  {
    sub_2773FB780(a3, (*&v8[4 * v6] >> v7++) & 1, 1);
  }

  while (v7 != 32);
  sub_2773FB780(a3, (a1[44] >> a2) & 1, 1);
  sub_2773FB780(a3, (a1[45] >> a2) & 1, 1);
  sub_2773FB780(a3, (a1[46] >> a2) & 1, 1);
  sub_2773FB780(a3, (a1[47] >> a2) & 1, 1);
  if (a1[v6 + 8] > 3u || (v8[4 * v6] & 0x10) != 0)
  {
    sub_2773FB780(a3, (a1[48] >> a2) & 1, 1);
    sub_2773FB780(a3, (a1[49] >> a2) & 1, 1);
    sub_2773FB780(a3, (a1[50] >> a2) & 1, 1);
    sub_2773FB780(a3, (a1[51] >> a2) & 1, 1);
    sub_2773FB780(a3, (a1[52] >> a2) & 1, 1);
    sub_2773FB780(a3, (a1[53] >> a2) & 1, 1);
    sub_2773FB780(a3, (a1[54] >> a2) & 1, 1);
    sub_2773FB780(a3, (a1[55] >> a2) & 1, 1);
    sub_2773FB780(a3, (a1[56] >> a2) & 1, 1);
    v9 = 13;
  }

  else
  {
    v9 = 22;
  }

  sub_2773FB780(a3, 0, v9);

  return sub_2773FB780(a3, 0, 22);
}

uint64_t sub_27746670C(unsigned __int8 *a1, int a2, int a3, uint64_t a4)
{
  if (a2)
  {
    sub_2774664DC(a1, 0, a4);
  }

  result = sub_2773FB780(a4, a1[57], 8);
  if (a3 >= 1)
  {
    v8 = 0;
    do
    {
      sub_2773FB780(a4, (a1[64] >> ++v8) & 1, 1);
      result = sub_2773FB780(a4, (a1[65] >> v8) & 1, 1);
    }

    while (a3 != v8);
    if (a3 <= 7)
    {
      v9 = a3 - 8;
      do
      {
        result = sub_2773FB780(a4, 0, 2);
      }

      while (!__CFADD__(v9++, 1));
    }

    v11 = (a3 + 1) - 1;
    v12 = 58;
    do
    {
      v13 = 1 << (v12 - 57);
      if ((v13 & a1[64]) != 0)
      {
        result = sub_2774664DC(a1, v12 - 56, a4);
      }

      if ((v13 & a1[65]) != 0)
      {
        result = sub_2773FB780(a4, a1[v12], 8);
      }

      ++v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_277466830(uint64_t result, int a2, FILE *__stream)
{
  v5 = result;
  if (dword_280B9A880 >= 6)
  {
    result = fwrite("  ------ ProfileTierLevel ------\n", 0x21uLL, 1uLL, __stream);
    if (dword_280B9A880 >= 6)
    {
      result = fwrite("    ----- General -----\n", 0x18uLL, 1uLL, __stream);
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "profile_space", *v5);
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "tier_flag", v5[7] & 1);
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, "    %-42s : %lld\n", "profile_idc", v5[8]);
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, "    %-42s : %lld\n", "profile_compatibility_flag", *(v5 + 4));
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(__stream, "    %-42s : %lld\n", "progressive_source_flag", v5[44] & 1);
                if (dword_280B9A880 >= 6)
                {
                  result = fprintf(__stream, "    %-42s : %lld\n", "interlaced_source_flag", v5[45] & 1);
                  if (dword_280B9A880 >= 6)
                  {
                    result = fprintf(__stream, "    %-42s : %lld\n", "non_packed_constraint_flag", v5[46] & 1);
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(__stream, "    %-42s : %lld\n", "frame_only_constraint_flag", v5[47] & 1);
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

  v17 = v5 + 8;
  if (v5[8] > 3u || (v5[16] & 0x10) != 0)
  {
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_max_12bit_constraint_flag", v5[48] & 1);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_max_10bit_constraint_flag", v5[49] & 1);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_max_8bit_constraint_flag", v5[50] & 1);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_max_422chroma_constraint_flag", v5[51] & 1);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_max_420chroma_constraint_flag", v5[52] & 1);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_max_monochrome_constraint_flag", v5[53] & 1);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_intra_constraint_flag", v5[54] & 1);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_one_picture_only_constraint_flag", v5[55] & 1);
    if (dword_280B9A880 < 6)
    {
      goto LABEL_26;
    }

    result = fprintf(__stream, "    %-42s : %lld\n", "general_lower_bit_rate_constraint_flag", v5[56] & 1);
  }

  if (dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "    %-42s : %lld\n", "level_idc", v5[57]);
  }

LABEL_26:
  if (a2 >= 1)
  {
    v6 = (a2 + 1);
    v7 = dword_280B9A880;
    v8 = 1;
    do
    {
      if (v7 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "sub_layer_profile_present_flag", (v5[64] >> v8) & 1);
        v7 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "sub_layer_level_present_flag", (v5[65] >> v8) & 1);
          v7 = dword_280B9A880;
        }
      }

      ++v8;
    }

    while (v6 != v8);
    v9 = v5 + 16;
    v10 = "    %-42s : %lld\n";
    for (i = 1; i != v6; ++i)
    {
      if (v7 >= 6)
      {
        result = fprintf(__stream, "    --- Sublayer %d ---\n", i);
        v7 = dword_280B9A880;
      }

      v12 = 1 << i;
      if (((1 << i) & v5[64]) == 0)
      {
        goto LABEL_63;
      }

      v13 = v6;
      if (v7 >= 6)
      {
        result = fprintf(__stream, v10, "profile_space", v5[i]);
        v7 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, v10, "tier_flag", (v5[7] >> i) & 1);
          v7 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, v10, "profile_idc", v17[i]);
            v7 = dword_280B9A880;
          }
        }
      }

      v14 = v10;
      for (j = 0; j != 32; ++j)
      {
        if (v7 >= 6)
        {
          result = fprintf(__stream, "      %-40s : %lld\n", "profile_compatibility_flag", (*&v9[4 * i] >> j) & 1);
          v7 = dword_280B9A880;
        }
      }

      v10 = v14;
      if (v7 > 5)
      {
        result = fprintf(__stream, v14, "progressive_source_flag", (v5[44] >> i) & 1);
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, v14, "interlaced_source_flag", (v5[45] >> i) & 1);
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, v14, "non_packed_constraint_flag", (v5[46] >> i) & 1);
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, v14, "frame_only_constraint_flag", (v5[47] >> i) & 1);
            }
          }
        }
      }

      v6 = v13;
      if (v17[i] <= 3u)
      {
        v7 = dword_280B9A880;
        LOBYTE(v12) = 1 << i;
        if ((v9[4 * i] & 0x10) == 0 || dword_280B9A880 <= 5)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v7 = dword_280B9A880;
        LOBYTE(v12) = 1 << i;
        if (dword_280B9A880 < 6)
        {
          continue;
        }
      }

      result = fprintf(__stream, v10, "general_max_12bit_constraint_flag", (v5[48] >> i) & 1);
      v7 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, v10, "general_max_10bit_constraint_flag", (v5[49] >> i) & 1);
        v7 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, v10, "general_max_8bit_constraint_flag", (v5[50] >> i) & 1);
          v7 = dword_280B9A880;
          if (dword_280B9A880 >= 6)
          {
            result = fprintf(__stream, v10, "general_max_422chroma_constraint_flag", (v5[51] >> i) & 1);
            v7 = dword_280B9A880;
            if (dword_280B9A880 >= 6)
            {
              result = fprintf(__stream, v10, "general_max_420chroma_constraint_flag", (v5[52] >> i) & 1);
              v7 = dword_280B9A880;
              if (dword_280B9A880 >= 6)
              {
                result = fprintf(__stream, v10, "general_max_monochrome_constraint_flag", (v5[53] >> i) & 1);
                v7 = dword_280B9A880;
                if (dword_280B9A880 >= 6)
                {
                  result = fprintf(__stream, v10, "general_intra_constraint_flag", (v5[54] >> i) & 1);
                  v7 = dword_280B9A880;
                  if (dword_280B9A880 >= 6)
                  {
                    result = fprintf(__stream, v10, "general_one_picture_only_constraint_flag", (v5[55] >> i) & 1);
                    v7 = dword_280B9A880;
                    if (dword_280B9A880 >= 6)
                    {
                      result = fprintf(__stream, v10, "general_lower_bit_rate_constraint_flag", (v5[56] >> i) & 1);
                      v7 = dword_280B9A880;
LABEL_63:
                      if ((v12 & v5[65]) != 0 && v7 >= 6)
                      {
                        result = fprintf(__stream, v10, "level_idc", v5[i + 57]);
                        v7 = dword_280B9A880;
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

  return result;
}

uint64_t sub_2774670EC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    LODWORD(v4) = a4;
    *a1 = sub_2773FB848(a2, 1) != 0;
    v7 = sub_2773FB848(a2, 1);
    *(a1 + 1) = v7 != 0;
    if ((*a1 & 1) != 0 || v7)
    {
      v8 = sub_2773FB848(a2, 1);
      *(a1 + 2) = v8 != 0;
      if (v8)
      {
        *(a1 + 3) = sub_2773FB848(a2, 8);
        *(a1 + 4) = sub_2773FB848(a2, 5);
        *(a1 + 5) = sub_2773FB848(a2, 1) != 0;
        *(a1 + 6) = sub_2773FB848(a2, 5);
      }

      *(a1 + 7) = sub_2773FB848(a2, 4);
      *(a1 + 8) = sub_2773FB848(a2, 4);
      if (*(a1 + 2) == 1)
      {
        *(a1 + 9) = sub_2773FB848(a2, 4);
      }

      *(a1 + 10) = sub_2773FB848(a2, 5);
      *(a1 + 11) = sub_2773FB848(a2, 5);
      *(a1 + 12) = sub_2773FB848(a2, 5);
    }

    v4 = v4;
    sub_277467434((a1 + 16), v4);
    for (i = 24; ; i += 56)
    {
      v10 = *(a1 + 16);
      v11 = v10 + i;
      *(v11 - 23) = 1;
      *(v11 - 20) = 0;
      *(v11 - 18) = 0;
      v12 = sub_2773FB848(a2, 1);
      *(v11 - 24) = v12 != 0;
      if (v12)
      {
        if ((*(v11 - 23) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = sub_2773FB848(a2, 1);
        *(v11 - 23) = v15 != 0;
        if (!v15)
        {
LABEL_12:
          v13 = sub_2773FB848(a2, 1);
          *(v11 - 20) = v13 != 0;
          if (v13)
          {
            goto LABEL_13;
          }

          goto LABEL_16;
        }
      }

      *(v10 + i - 22) = sub_2773FB90C(a2);
      if (*(v11 - 20))
      {
LABEL_13:
        v14 = *(v11 - 18);
        goto LABEL_17;
      }

LABEL_16:
      v14 = sub_2773FB90C(a2);
      *(v11 - 18) = v14;
LABEL_17:
      if (v14 >= 0x20u)
      {
        if (dword_280B9A880 < 3)
        {
          return 4294954387;
        }

        v17 = "Invalid cpb_cnt_minus1\n";
        fwrite("Invalid cpb_cnt_minus1\n", 0x17uLL, 1uLL, *MEMORY[0x277D85DF8]);
        v16 = 4294954387;
LABEL_28:
        syslog(27, v17);
        return v16;
      }

      if (*a1 == 1)
      {
        sub_277467684(&v19, v14);
      }

      if (*(a1 + 1) == 1)
      {
        sub_277467684(&v19, *(v11 - 18));
      }

      if (!--v4)
      {
        return 0;
      }
    }
  }

  if (dword_280B9A880 >= 3)
  {
    v17 = "Need to implement inferrence of common HRD info\n";
    fwrite("Need to implement inferrence of common HRD info\n", 0x30uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v16 = 4294954386;
    goto LABEL_28;
  }

  return 4294954386;
}

void sub_277467434(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {
    v8 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v8 - v4) >> 3) < v7)
    {
      if (a2 <= 0x492492492492492)
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v3) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x249249249249249)
        {
          v11 = 0x492492492492492;
        }

        else
        {
          v11 = v10;
        }

        if (v11 <= 0x492492492492492)
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    v13 = v4 + 56 * v7;
    do
    {
      *(v4 + 4) = 0;
      *v4 = 0;
      *(v4 + 6) = 0uLL;
      *(v4 + 22) = 0uLL;
      *(v4 + 38) = 0uLL;
      *(v4 + 54) = 0;
      v4 += 56;
    }

    while (v4 != v13);
    a1[1] = v13;
  }

  else if (!v6)
  {
    v12 = v3 + 56 * a2;
    while (v4 != v12)
    {
      v4 -= 56;
      sub_2773EBD9C(v4);
    }

    a1[1] = v12;
  }
}

void sub_277467684(void *a1, unsigned __int16 a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_277467788(a2 + 1);
}

void sub_277467788(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_2773C5248();
}

uint64_t sub_2774677DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a4[1] - *a4) >> 2) != *(a1 + 6) + 1)
  {
    return 1;
  }

  v8 = 0;
  v9 = -1;
  do
  {
    sub_2773FBA38(a2, *(*a4 + v8));
    sub_2773FBA38(a2, *(*a4 + v8 + 4));
    if (*(a3 + 2) == 1)
    {
      sub_2773FBA38(a2, *(*a4 + v8 + 8));
      sub_2773FBA38(a2, *(*a4 + v8 + 12));
    }

    sub_2773FB780(a2, *(*a4 + v8 + 16), 1);
    ++v9;
    v8 += 20;
  }

  while (v9 < *(a1 + 6));
  return 0;
}

void sub_2774678DC(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void sub_277467A10(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      for (i = v4 + 40 * a2; v3 != i; v3 -= 40)
      {
        v16 = (v3 - 24);
        sub_2773EBD18(&v16);
      }

      a1[1] = i;
    }
  }

  else
  {
    v8 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0x666666666666666)
      {
        v9 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v4) >> 3);
        v10 = 0x999999999999999ALL * ((v8 - v4) >> 3);
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x333333333333333)
        {
          v11 = 0x666666666666666;
        }

        else
        {
          v11 = v10;
        }

        if (v11 <= 0x666666666666666)
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    v13 = v3 + 40 * v7;
    v14 = 40 * a2 - 8 * (v5 >> 3);
    v15 = (v3 + 16);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      *(v15 - 2) = 0;
      *(v15 - 11) = 0;
      v15 += 5;
      v14 -= 40;
    }

    while (v14);
    a1[1] = v13;
  }
}

uint64_t sub_277467C5C(uint64_t a1)
{
  v1 = *(a1 + 196);
  if (v1 >= 0x10)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "vps_video_parameter_set_id_ of %lld is out of range (%lld, %lld)\n", v1, 0, 15);
      syslog(27, "vps_video_parameter_set_id_ of %lld is out of range (%lld, %lld)\n");
    }

    return 0;
  }

  v2 = *(a1 + 200);
  if (v2 >= 7)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "vps_max_sub_layers_minus1_ of %lld is out of range (%lld, %lld)\n", v2, 0, 6);
      syslog(27, "vps_max_sub_layers_minus1_ of %lld is out of range (%lld, %lld)\n");
    }

    return 0;
  }

  v3 = a1 + 203;
  v4 = a1 + 210;
  v5 = a1 + 220;
  if (*(a1 + 202))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 200);
  }

  v7 = v2 + 1;
  do
  {
    v8 = *(a1 + v6 + 203);
    if (v8 >= 0x10)
    {
      if (dword_280B9A880 < 3)
      {
        return 0;
      }

      v14 = "vps_max_dec_pic_buffering_minus1_[idx] of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "vps_max_dec_pic_buffering_minus1_[idx] of %lld is out of range (%lld, %lld)\n", v8, 0, 15);
      v15 = *(v3 + v6);
      v16 = 15;
LABEL_27:
      syslog(27, v14, v15, 0, v16);
      return 0;
    }

    v9 = *(a1 + v6 + 210);
    if (v9 > v8)
    {
      if (dword_280B9A880 < 3)
      {
        return 0;
      }

      v14 = "vps_max_num_reorder_pics_[idx] of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "vps_max_num_reorder_pics_[idx] of %lld is out of range (%lld, %lld)\n", v9, 0, v8);
      v15 = *(v4 + v6);
      v16 = *(v3 + v6);
      goto LABEL_27;
    }

    v10 = *(v5 + 4 * v6);
    if (v10 >= 0xFFFFFFFE)
    {
      if (dword_280B9A880 < 3)
      {
        return 0;
      }

      v14 = "vps_max_latency_increase_plus1_[idx] of %lld is out of range (%lld, %lld)\n";
      fprintf(*MEMORY[0x277D85DF8], "vps_max_latency_increase_plus1_[idx] of %lld is out of range (%lld, %lld)\n", v10, 0, 4294967293);
      v15 = *(v5 + 4 * v6);
      v16 = 4294967293;
      goto LABEL_27;
    }

    ++v6;
  }

  while (v7 != v6);
  v11 = *(a1 + 250);
  if (v11 >= 0x400)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "vps_num_layer_sets_minus1_ of %lld is out of range (%lld, %lld)\n", v11, 0, 1023);
      syslog(27, "vps_num_layer_sets_minus1_ of %lld is out of range (%lld, %lld)\n");
    }
  }

  else
  {
    if (*(a1 + 280) != 1)
    {
      return 1;
    }

    v12 = *(a1 + 300);
    if (v12 < 0x401)
    {
      return 1;
    }

    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "vps_num_hrd_parameters_ of %lld is out of range (%lld, %lld)\n", v12, 0, 1024);
      syslog(27, "vps_num_hrd_parameters_ of %lld is out of range (%lld, %lld)\n");
    }
  }

  return 0;
}

uint64_t sub_277467F14(uint64_t a1, FILE *__stream)
{
  if (dword_280B9A880 >= 6)
  {
    fprintf(__stream, "=========== Video Parameter Set ID: %d ===========\n", *(a1 + 196));
    if (dword_280B9A880 >= 6)
    {
      fprintf(__stream, "  %-44s : %lld\n", "vps_video_parameter_set_id", *(a1 + 196));
      if (dword_280B9A880 >= 6)
      {
        fprintf(__stream, "  %-44s : %lld\n", "vps_max_sub_layers_minus1", *(a1 + 200));
        if (dword_280B9A880 >= 6)
        {
          fprintf(__stream, "  %-44s : %lld\n", "vps_temporal_id_nesting_flag", *(a1 + 201));
        }
      }
    }
  }

  result = sub_277466830(a1, *(a1 + 200), __stream);
  v6 = dword_280B9A880;
  if (dword_280B9A880 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "vps_sub_layer_ordering_info_present_flag", *(a1 + 202));
    v6 = dword_280B9A880;
  }

  if (*(a1 + 202))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 200);
  }

  do
  {
    if (v6 >= 6)
    {
      result = fprintf(__stream, "    %-42s : %lld\n", "vps_max_dec_pic_buffering_minus1", *(a1 + v7 + 203));
      v6 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "    %-42s : %lld\n", "vps_max_num_reorder_pics", *(a1 + v7 + 210));
        v6 = dword_280B9A880;
        if (dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "vps_max_latency_increase_plus1", *(a1 + 4 * v7 + 220));
          v6 = dword_280B9A880;
        }
      }
    }

    v8 = v7++ >= *(a1 + 200);
  }

  while (!v8);
  if (v6 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "vps_max_layer_id", *(a1 + 248));
    v6 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "vps_num_layer_sets_minus1", *(a1 + 250));
      v6 = dword_280B9A880;
    }
  }

  if (*(a1 + 250))
  {
    v9 = 1;
    do
    {
      v10 = -1;
      do
      {
        ++v10;
        if (v6 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "layer_id_included_flag", (*(*(a1 + 256) + 8 * v9) >> v10) & 1);
          v6 = dword_280B9A880;
        }
      }

      while (v10 < *(a1 + 248));
      v8 = v9++ >= *(a1 + 250);
    }

    while (!v8);
  }

  if ((*(a1 + 280) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v6 >= 6)
  {
    result = fprintf(__stream, "  %-44s : %lld\n", "vps_num_units_in_tick", *(a1 + 284));
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "vps_time_scale", *(a1 + 288));
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "vps_poc_proportional_to_timing_flag", *(a1 + 292));
        v11 = dword_280B9A880;
        if (*(a1 + 292) == 1 && dword_280B9A880 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "vps_num_ticks_poc_diff_one_minus1", *(a1 + 296));
          v11 = dword_280B9A880;
        }

        if (v11 >= 6)
        {
          result = fprintf(__stream, "  %-44s : %lld\n", "vps_num_hrd_parameters", *(a1 + 300));
          v6 = dword_280B9A880;
LABEL_37:
          if (v6 >= 6)
          {
            result = fprintf(__stream, "  %-44s : %lld\n", "vps_extension_flag", *(a1 + 302));
          }
        }
      }
    }
  }

  if (*(a1 + 302) == 1)
  {
    v12 = dword_280B9A880;
    if (dword_280B9A880 >= 6)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "splitting_flag", *(a1 + 304));
      v12 = dword_280B9A880;
      if (dword_280B9A880 >= 6)
      {
        result = fprintf(__stream, "  %-44s : %lld\n", "scalability_mask_flag", *(a1 + 306));
        v12 = dword_280B9A880;
      }
    }

    v13 = *(a1 + 306);
    v5.i32[0] = v13;
    v14 = vcnt_s8(v5);
    v14.i16[0] = vaddlv_u8(v14);
    v15 = v14.i32[0];
    v16 = *(a1 + 304);
    if (v14.i32[0] != v16)
    {
      v17 = 0;
      v18 = a1 + 324;
      do
      {
        if (v12 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "dimension_id", v18);
          v12 = dword_280B9A880;
          v16 = *(a1 + 304);
        }

        ++v17;
        v18 += 16;
      }

      while (v17 < v15 - v16);
    }

    if (v12 > 5)
    {
      result = fprintf(__stream, "  %-44s : %lld\n", "vps_nuh_layer_id_present_flag", *(a1 + 356));
    }

    if (*(a1 + 199))
    {
      if (v15 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v15;
      }

      v27 = v19;
      v20 = dword_280B9A880;
      v21 = (a1 + 340);
      v22 = 1;
      do
      {
        if (*(a1 + 356) == 1 && v20 >= 6)
        {
          result = fprintf(__stream, "    %-42s : %lld\n", "layer_id_in_nuh", a1 + 357);
          v20 = dword_280B9A880;
        }

        if (*(a1 + 304))
        {
          v24 = 1;
        }

        else
        {
          v24 = v13 == 0;
        }

        if (!v24)
        {
          v25 = v27;
          v26 = v21;
          do
          {
            if (v20 >= 6)
            {
              result = fprintf(__stream, "      %-40s : %lld\n", "dimension_id", *v26);
              v20 = dword_280B9A880;
            }

            ++v26;
            --v25;
          }

          while (v25);
        }

        v21 += 16;
        v8 = v22++ >= *(a1 + 199);
      }

      while (!v8);
    }
  }

  return result;
}

uint64_t sub_277468490(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          sub_2773CC26C(v10);
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 64;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 128;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2774685F4(uint64_t a1)
{
  for (i = 296; i != 24; i -= 16)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      sub_2773CC26C(v3);
    }
  }

  return sub_2773FE520(a1);
}

void sub_277468644(void ***a1)
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
        sub_27746898C(--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_2774686CC(void *a1)
{
  *a1 = &unk_288662B50;
  v2 = a1[972];
  a1[972] = 0;
  if (v2)
  {
    sub_277468854(v2);
  }

  return sub_27743FD90(a1);
}

void sub_27746872C(void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        sub_2774687C8(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2774687C8(void ***a1)
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
        if (*(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
        }

        v4 -= 9;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_277468854(uint64_t a1)
{
  v2 = *(a1 + 1560);
  *(a1 + 1560) = 0;
  if (v2)
  {
    MEMORY[0x277CAD330](v2, 0x1000C8052888210);
  }

  JUMPOUT(0x277CAD370);
}

void sub_2774688B8(void *a1)
{
  *a1 = &unk_288662B50;
  v2 = a1[972];
  a1[972] = 0;
  if (v2)
  {
    sub_277468854(v2);
  }

  sub_27743FD90(a1);

  JUMPOUT(0x277CAD370);
}

void *sub_27746892C(void *a1)
{
  *a1 = &unk_288662B50;
  v2 = a1[972];
  a1[972] = 0;
  if (v2)
  {
    sub_277468854(v2);
  }

  return sub_27743FD90(a1);
}

void *sub_27746898C(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[854];
    if (v3)
    {
      sub_2773CC26C(v3);
    }

    v4 = v2[850];
    if (v4)
    {
      v2[851] = v4;
      operator delete(v4);
    }

    v5 = v2[809];
    if (v5)
    {
      v6 = v2[810];
      v7 = v2[809];
      if (v6 != v5)
      {
        do
        {
          v9 = *--v6;
          v8 = v9;
          *v6 = 0;
          if (v9)
          {
            (*(*v8 + 16))(v8);
          }
        }

        while (v6 != v5);
        v7 = v2[809];
      }

      v2[810] = v5;
      operator delete(v7);
    }

    v10 = v2[794];
    if (v10)
    {
      v2[795] = v10;
      operator delete(v10);
    }

    v11 = v2[784];
    if (v11)
    {
      v2[785] = v11;
      operator delete(v11);
    }

    v12 = v2[779];
    if (v12)
    {
      v2[780] = v12;
      operator delete(v12);
    }

    v13 = v2[776];
    if (v13)
    {
      v2[777] = v13;
      operator delete(v13);
    }

    v14 = v2[769];
    if (v14)
    {
      v2[770] = v14;
      operator delete(v14);
    }

    v15 = v2[766];
    if (v15)
    {
      v2[767] = v15;
      operator delete(v15);
    }

    v16 = v2[763];
    if (v16)
    {
      v2[764] = v16;
      operator delete(v16);
    }

    v17 = v2[760];
    if (v17)
    {
      v2[761] = v17;
      operator delete(v17);
    }

    v18 = 0;
    while (1)
    {
      v19 = v2[v18 + 757];
      if (v19)
      {
        v2[v18 + 758] = v19;
        operator delete(v19);
      }

      v18 -= 3;
      if (v18 == -6)
      {
        v20 = 0;
        while (1)
        {
          v21 = v2[v20 + 751];
          if (v21)
          {
            v2[v20 + 752] = v21;
            operator delete(v21);
          }

          v20 -= 3;
          if (v20 == -9)
          {
            v22 = v2[742];
            if (v22)
            {
              v2[743] = v22;
              operator delete(v22);
            }

            v23 = v2[739];
            if (v23)
            {
              v2[740] = v23;
              operator delete(v23);
            }

            v24 = v2[736];
            if (v24)
            {
              v2[737] = v24;
              operator delete(v24);
            }

            v25 = v2[733];
            if (v25)
            {
              v2[734] = v25;
              operator delete(v25);
            }

            v26 = v2[730];
            if (v26)
            {
              v2[731] = v26;
              operator delete(v26);
            }

            v27 = v2[727];
            if (v27)
            {
              v2[728] = v27;
              operator delete(v27);
            }

            v28 = v2[724];
            if (v28)
            {
              v2[725] = v28;
              operator delete(v28);
            }

            v29 = v2[721];
            if (v29)
            {
              v2[722] = v29;
              operator delete(v29);
            }

            v30 = v2[717];
            if (v30)
            {
              v2[718] = v30;
              operator delete(v30);
            }

            v31 = v2[714];
            if (v31)
            {
              v2[715] = v31;
              operator delete(v31);
            }

            v32 = v2[711];
            if (v32)
            {
              v2[712] = v32;
              operator delete(v32);
            }

            v33 = v2[708];
            if (v33)
            {
              v2[709] = v33;
              operator delete(v33);
            }

            v34 = v2[699];
            if (v34)
            {
              v2[700] = v34;
              operator delete(v34);
            }

            v35 = v2[696];
            if (v35)
            {
              v2[697] = v35;
              operator delete(v35);
            }

            v36 = v2[690];
            if (v36)
            {
              v2[691] = v36;
              operator delete(v36);
            }

            v37 = v2[687];
            if (v37)
            {
              v2[688] = v37;
              operator delete(v37);
            }

            v38 = v2[684];
            if (v38)
            {
              v2[685] = v38;
              operator delete(v38);
            }

            v39 = v2[681];
            if (v39)
            {
              v2[682] = v39;
              operator delete(v39);
            }

            v40 = v2[678];
            if (v40)
            {
              v2[679] = v40;
              operator delete(v40);
            }

            v66 = v2 + 674;
            sub_277468E34(&v66);
            v41 = v2[618];
            if (v41)
            {
              v2[619] = v41;
              operator delete(v41);
            }

            v42 = v2[615];
            if (v42)
            {
              v2[616] = v42;
              operator delete(v42);
            }

            v43 = v2[612];
            if (v43)
            {
              v2[613] = v43;
              operator delete(v43);
            }

            v44 = 0;
            while (1)
            {
              v45 = v2[v44 + 545];
              if (v45)
              {
                sub_2773CC26C(v45);
              }

              v44 -= 2;
              if (v44 == -32)
              {
                v46 = 513;
                while (1)
                {
                  v47 = v2[v46];
                  if (v47)
                  {
                    sub_2773CC26C(v47);
                  }

                  v46 -= 2;
                  if (v46 == 481)
                  {
                    while (1)
                    {
                      v48 = v2[v46];
                      if (v48)
                      {
                        sub_2773CC26C(v48);
                      }

                      v46 -= 2;
                      if (v46 == 449)
                      {
                        while (1)
                        {
                          v49 = v2[v46];
                          if (v49)
                          {
                            sub_2773CC26C(v49);
                          }

                          v46 -= 2;
                          if (v46 == 417)
                          {
                            while (1)
                            {
                              v50 = v2[v46];
                              if (v50)
                              {
                                sub_2773CC26C(v50);
                              }

                              v46 -= 2;
                              if (v46 == 385)
                              {
                                v51 = v2[382];
                                v2[382] = 0;
                                if (v51)
                                {
                                  (*(*v51 + 16))(v51);
                                }

                                v52 = v2[379];
                                if (v52)
                                {
                                  sub_2773CC26C(v52);
                                }

                                v53 = v2[375];
                                if (v53)
                                {
                                  sub_2773CC26C(v53);
                                }

                                v54 = v2[318];
                                if (v54)
                                {
                                  v2[319] = v54;
                                  operator delete(v54);
                                }

                                v55 = v2[315];
                                if (v55)
                                {
                                  v2[316] = v55;
                                  operator delete(v55);
                                }

                                v56 = v2[312];
                                if (v56)
                                {
                                  v2[313] = v56;
                                  operator delete(v56);
                                }

                                v57 = 0;
                                while (1)
                                {
                                  v58 = v2[v57 + 198];
                                  if (v58)
                                  {
                                    v2[v57 + 199] = v58;
                                    operator delete(v58);
                                  }

                                  v57 -= 3;
                                  if (v57 == -48)
                                  {
                                    v59 = v2[128];
                                    if (v59)
                                    {
                                      v2[129] = v59;
                                      operator delete(v59);
                                    }

                                    v60 = v2[103];
                                    if (v60)
                                    {
                                      v2[104] = v60;
                                      operator delete(v60);
                                    }

                                    v61 = v2[80];
                                    if (v61)
                                    {
                                      sub_2773CC26C(v61);
                                    }

                                    v62 = v2[78];
                                    if (v62)
                                    {
                                      sub_2773CC26C(v62);
                                    }

                                    sub_27743F6E4((v2 + 64));
                                    v63 = v2[8];
                                    if (v63)
                                    {
                                      sub_2773CC26C(v63);
                                    }

                                    v64 = v2[6];
                                    if (v64)
                                    {
                                      sub_2773CC26C(v64);
                                    }

                                    v65 = v2[4];
                                    if (v65)
                                    {
                                      sub_2773CC26C(v65);
                                    }

                                    JUMPOUT(0x277CAD370);
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t **sub_277468E34(uint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    while (v3 != v2)
    {
      v4 = v3;
      v3 -= 13312;
      v5 = 48;
      do
      {
        v6 = *(v4 + v5 - 440);
        if (v6)
        {
          *(v4 + v5 - 432) = v6;
          operator delete(v6);
        }

        v5 -= 24;
      }

      while (v5);
      v7 = *(v4 - 440);
      if (v7)
      {
        *(v4 - 432) = v7;
        operator delete(v7);
      }
    }

    v1[1] = v2;

    JUMPOUT(0x277CAD360);
  }

  return result;
}

void sub_277468F14(uint64_t a1)
{
  v2 = a1 + 0x2000;
  std::mutex::lock((a1 + 10808));
  while (*(a1 + 10912))
  {
    if (sub_277469014(a1))
    {
      goto LABEL_16;
    }
  }

  v3 = *(v2 + 1769);
  if (*(v2 + 1769))
  {
    while (v3 >= 1)
    {
      sub_277469D80(a1);
      v3 = *(v2 + 1769);
    }

    *(v2 + 1769) = 0;
    *(v2 + 1771) = 0;
  }

  if (*(a1 + 9824))
  {
    if (*(a1 + 9816) >= 1)
    {
      v4 = 0;
      do
      {
        dispatch_semaphore_wait(*(a1 + 9824), 0xFFFFFFFFFFFFFFFFLL);
        ++v4;
        v5 = *(a1 + 9816);
      }

      while (v4 < v5);
      if (v5 >= 1)
      {
        v6 = 0;
        do
        {
          dispatch_semaphore_signal(*(a1 + 9824));
          ++v6;
        }

        while (v6 < *(a1 + 9816));
      }
    }
  }

LABEL_16:

  std::mutex::unlock((a1 + 10808));
}

uint64_t sub_277469014(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 10904);
  v3 = *(*(a1 + 10880) + ((v2 >> 4) & 0xFFFFFFFFFFFFFF8));
  v4 = v2 & 0x7F;
  v5 = (v3 + 32 * v4);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v5[2];
    v9 = v5[3];
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v2 = *(a1 + 10904);
    v4 = v2 & 0x7F;
    v3 = *(*(a1 + 10880) + ((v2 >> 4) & 0xFFFFFFFFFFFFFF8));
    v10 = v6;
  }

  else
  {
    v10 = 0;
    v8 = v5[2];
    v9 = v5[3];
  }

  v11 = *(v3 + 32 * v4 + 8);
  if (v11)
  {
    sub_2773CC26C(v11);
    v2 = *(a1 + 10904);
  }

  --*(a1 + 10912);
  v12 = v2 + 1;
  *(a1 + 10904) = v12;
  if (v12 >= 0x100)
  {
    operator delete(**(a1 + 10880));
    *(a1 + 10880) += 8;
    *(a1 + 10904) -= 128;
  }

  if (!v7)
  {
    goto LABEL_142;
  }

  if (*(v9 + 60) == 1)
  {
    *(a1 + 9948) = 0;
    *(v7 + 8) = *(v9 + 64);
    v13 = 1;
    *(a1 + 9944) = 1;
  }

  else
  {
    *(a1 + 9944) = 0;
    *(a1 + 9952) = 0;
    v13 = *(a1 + 608) << *(a1 + 536);
  }

  *(a1 + 9956) = v13;
  if (v13 <= *(a1 + 9961))
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Frame %d: Gop-structure errors\n", *(v7 + 8));
      syslog(27, "Frame %d: Gop-structure errors\n", *(v7 + 8));
    }

    goto LABEL_18;
  }

  v14 = *(v9 + 96) != 1 || *(v9 + 97) == 1;
  *(v7 + 40) = v14;
  *(v7 + 536) = v8;
  if ((*(v9 + 708) & 1) == 0)
  {
    if (!*sub_2773FF2CC(a1 + 9968, 2))
    {
      v16 = *(v9 + 340);
      if (v16 >= 0x10000)
      {
        v17 = HIWORD(v16);
        if (v17 <= *(a1 + 10424))
        {
          v17 = *(a1 + 10424);
        }

        *(a1 + 10424) = v17;
      }
    }

    if (*(a1 + 585) != 1)
    {
      goto LABEL_58;
    }

    v18 = *(v9 + 272);
    if (v18 < 0x11)
    {
      if (!v18)
      {
LABEL_45:
        if ((atomic_load_explicit(&qword_280A71260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A71260))
        {
          __cxa_atexit(sub_2773FE28C, &unk_280A71250, &dword_2773BE000);
          __cxa_guard_release(&qword_280A71260);
        }

        v32 = 0;
        v33 = 0x7FFFFFFF;
        v34 = (a1 + 10000);
        v35 = 0x7FFFFFFF;
        do
        {
          v36 = *v34;
          if (*v34 && *(v36 + 1024) < v35 && *(v36 + 36) == 1)
          {
            v35 = *(v36 + 1024);
            v33 = v32;
          }

          ++v32;
          v34 += 2;
        }

        while (v32 != 17);
        if (v33 == 0x7FFFFFFF)
        {
          v37 = &unk_280A71250;
        }

        else
        {
          v37 = (a1 + 10000 + 16 * v33);
        }

        v38 = *v37;
        if (v38 && (((*(v7 + 16) * 1000.0) / *(v7 + 32)) - ((*(v38 + 16) * 1000.0) / *(v38 + 32))) > 2 * *(a1 + 10424))
        {
          *(v38 + 36) = 0;
        }

LABEL_58:
        *(v9 + 266) |= *(a1 + 10432);
        *(v9 + 40) |= *(a1 + 10433);
        *(v9 + 356) = vadd_s32(*(v9 + 356), *(a1 + 10436));
        goto LABEL_59;
      }
    }

    else
    {
      *(v9 + 272) = 16;
    }

    v19 = 0;
    v20 = v9 + 276;
    v21 = &unk_280A71230;
    v22 = a1 + 10000;
    do
    {
      v23 = *(v20 + 4 * v19);
      if ((atomic_load_explicit(v21, memory_order_acquire) & 1) == 0)
      {
        v29 = v21;
        v99 = v22;
        v100 = v19;
        v30 = v20;
        v101 = v23;
        v31 = __cxa_guard_acquire(v21);
        v23 = v101;
        v22 = v99;
        v19 = v100;
        v20 = v30;
        v21 = v29;
        if (v31)
        {
          __cxa_atexit(sub_2773FE28C, &qword_280A71220, &dword_2773BE000);
          __cxa_guard_release(v29);
          v23 = v101;
          v22 = v99;
          v19 = v100;
          v20 = v30;
          v21 = v29;
        }
      }

      v24 = 0;
      v25 = v22;
      while (!*v25 || *(*v25 + 8) != v23)
      {
        ++v24;
        v25 += 16;
        if (v24 == 17)
        {
          v26 = &qword_280A71220;
          goto LABEL_39;
        }
      }

      v26 = (v22 + 16 * v24);
LABEL_39:
      v27 = *v26;
      if (v27)
      {
        *(v27 + 36) = 2;
        v28 = 1717986919 * (9 * *(a1 + 10424) + (((*(v7 + 16) * 1000.0) / *(v7 + 32)) - ((*(v27 + 16) * 1000.0) / *(v27 + 32))));
        *(a1 + 10424) = (v28 >> 63) + (SHIDWORD(v28) >> 2);
      }

      ++v19;
    }

    while (v19 < *(v9 + 272));
    goto LABEL_45;
  }

LABEL_59:
  if (*(a1 + 720))
  {
    v39 = *(a1 + 184);
    if (v39 || (v39 = fopen(*(a1 + 720), "r"), (*(a1 + 184) = v39) != 0))
    {
      v102 = 0;
      v103[0] = 0;
      fscanf(v39, "ISP: framenum= %d capture_timestamp= %lf T= %lf AGC= %d sensorDGain= %d ispDGain= %d ", &v102, v103, v9 + 632, v9 + 640, v9 + 644, v9 + 648);
      fscanf(*(a1 + 184), "AEAverage= %d AWBRGain= %d AWBGGain= %d AWBBGain= %d normalSNR= %lf\n", v9 + 652, v9 + 656, v9 + 660, v9 + 664, v9 + 672);
    }
  }

  if (*(a1 + 728))
  {
    v40 = *(a1 + 184);
    if (v40 || (v40 = fopen(*(a1 + 728), "r"), (*(a1 + 184) = v40) != 0))
    {
      v102 = 0;
      v103[0] = 0;
      fscanf(v40, "Face: framenum= %d capture_timestamp= %lf x= %f y= %f w= %f h= %f, ", &v102, v103, v9 + 416, v9 + 420, v9 + 424, v9 + 428);
      fscanf(*(a1 + 184), "face_roll= %d, face_yaw= %d\n", v9 + 432, v9 + 436);
      v41 = *(v9 + 424) != 0.0 && *(v9 + 428) != 0.0;
      *(v9 + 552) = v41;
    }
  }

  v42 = *(v7 + 8);
  if (!v42)
  {
    *(v7 + 1172) = 1;
  }

  v43 = *(a1 + 876);
  if (v43 >= 1)
  {
    --*(a1 + 232);
  }

  v44 = *(a1 + 880);
  if (v44 <= 0.0)
  {
    v46 = 0.0;
    v47 = -0.0;
    if (!v42)
    {
      goto LABEL_88;
    }

    goto LABEL_80;
  }

  v45 = *(v7 + 32);
  if (!v45)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Invalid timescale\n", 0x12uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Invalid timescale\n");
    }

LABEL_18:
    v15 = 4294954394;
LABEL_19:
    sub_27746CDE4(a1, v15, 0, v8);
    goto LABEL_151;
  }

  v46 = *(v7 + 24) / v45;
  *(a1 + 236) = *(a1 + 236) - v46;
  v47 = v46 * -0.0001;
  if (!v42)
  {
    goto LABEL_88;
  }

LABEL_80:
  if ((v43 < 1 || (*(a1 + 232) & 0x80000000) == 0) && (v44 <= 0.0 || *(a1 + 236) >= v47))
  {
    if (*(a1 + 884) != 1 || *(v7 + 1172) != 1)
    {
      goto LABEL_89;
    }

    if (dword_280B9A880 >= 7)
    {
      fprintf(*MEMORY[0x277D85DF8], "\nscene change IDR inserted, frame %3d\n", v42);
      syslog(31, "\nscene change IDR inserted, frame %3d\n", *(v7 + 8));
    }
  }

LABEL_88:
  *(v9 + 40) = 1;
LABEL_89:
  if (*(v9 + 40))
  {
    v48 = *(a1 + 876);
    v49 = __OFSUB__(v48, 1);
    v50 = v48 - 1;
    if (v50 < 0 == v49)
    {
      *(a1 + 232) = v50;
    }

    v51 = *(a1 + 880);
    if (v51 > 0.0)
    {
      *(a1 + 236) = v51 - v46;
    }

    if (*(a1 + 9961))
    {
      if ((*(a1 + 536) & 1) == 0)
      {
        v52 = sub_277469D80(a1);
        v15 = 0;
        *(a1 + 9961) = 0;
        if (v52)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v53 = *(*(a1 + 9920) + 8 * *(a1 + 9964));
  v54 = *(v53 + 576);
  atomic_store(1u, (v53 + 588));
  *(v53 + 652) = *(v7 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v53 + 616) = v7;
  v55 = *(v53 + 624);
  *(v53 + 624) = v10;
  if (v55)
  {
    sub_2773CC26C(v55);
  }

  *v53 = 0;
  *(v53 + 128) = 0;
  *(v53 + 136) = *(v9 + 364);
  *(v53 + 144) = *(v9 + 56);
  *(v53 + 6497) = 0;
  if (*(v9 + 98))
  {
    v56 = 1;
  }

  else
  {
    v56 = *(v54 + 451);
  }

  *(v53 + 216) = v56 & 1;
  *(v53 + 660) = *(v9 + 196);
  *(v53 + 464) = *(v9 + 99);
  *(v53 + 668) = *(v9 + 200);
  if (*(v9 + 708))
  {
    v57 = 0;
    v58 = 0;
  }

  else
  {
    v57 = *(v9 + 266);
    v58 = *(v9 + 40) != 0;
  }

  *(v53 + 6792) = v57;
  *(v53 + 6793) = v58;
  if (!*(*(v53 + 40) + *(*(v53 + 40) + 1) + 226))
  {
    *(v53 + 6793) = 1;
  }

  *(v53 + 6512) = *(v9 + 48);
  *(v53 + 6516) = *(v9 + 52);
  *(v53 + 496) = *(v9 + 168);
  *(v53 + 504) = *(v9 + 176);
  *(v53 + 508) = *(v9 + 192);
  v59 = *(v9 + 152);
  if (!v59)
  {
    goto LABEL_112;
  }

  if (v59 != v9 + 128)
  {
    v59 = (*(*v59 + 16))(v59);
LABEL_112:
    v104 = v59;
    goto LABEL_116;
  }

  v104 = v103;
  (*(*v59 + 24))(v59, v103);
LABEL_116:
  sub_27743F7C4(v103, (v53 + 512));
  sub_27743F6E4(v103);
  v60 = *(v53 + 576);
  if (*(v60 + 753) == 1)
  {
    v61 = *(v9 + 100);
  }

  else
  {
    v61 = 0;
  }

  v62 = 0;
  v63 = 0;
  *(v53 + 465) = v61 & 1;
  *(v53 + 468) = *(v9 + 104);
  *(v53 + 480) = *(v9 + 112);
  *(v53 + 6496) = 0;
  *(v53 + 6532) = 0x2000000000000000;
  if ((*(v9 + 708) & 1) == 0)
  {
    v62 = *(v9 + 356);
    v63 = *(v9 + 360);
    *(v53 + 6520) = *(v9 + 4);
    v64 = *(v9 + 32);
    *(v53 + 6528) = v64;
  }

  *(v53 + 6540) = v62;
  *(v53 + 6544) = v63;
  *(v53 + 6548) = *(v9 + 552);
  v65 = *(v9 + 536);
  v67 = *(v9 + 508);
  v66 = *(v9 + 524);
  *(v53 + 6632) = *(v9 + 492);
  *(v53 + 6648) = v67;
  *(v53 + 6664) = v66;
  *(v53 + 6676) = v65;
  v69 = *(v9 + 460);
  v68 = *(v9 + 476);
  v70 = *(v9 + 444);
  *(v53 + 6568) = *(v9 + 428);
  *(v53 + 6584) = v70;
  *(v53 + 6600) = v69;
  *(v53 + 6616) = v68;
  *(v53 + 6552) = *(v9 + 412);
  *(v53 + 6692) = *(v9 + 608);
  if (!*(v7 + 32))
  {
    v71 = *(v53 + 6504);
    if (v71 && (*(v71 + 1776) & 1) == 0)
    {
      v72 = (v71 + 520);
    }

    else
    {
      v72 = (v60 + 472);
    }

    v73 = 3000.0 / *v72;
    v70.i64[0] = 0.5;
    v74 = (*v72 * (v73 + 0.5) + 0.5);
    v75 = *(v7 + 8);
    v76 = (v73 * v75);
    *(v7 + 16) = v76;
    *(v7 + 24) = (v73 * (v75 + 1)) - v76;
    *(v7 + 32) = v74;
  }

  v77 = *(v53 + 616);
  v78 = *(v9 + 632);
  *(v77 + 192) = v78;
  *(v77 + 224) = *(v9 + 664);
  *(v77 + 216) = *(v9 + 656);
  v79 = *(v9 + 672);
  *(v77 + 196) = v79;
  v81 = *(v9 + 640);
  *(v77 + 200) = v81;
  *v70.i32 = v81.u32[2];
  v80 = (v78 * v81.u32[0]) * v81.u32[2];
  *v81.i32 = v81.u32[1];
  *(v77 + 228) = v80 * v81.u32[1];
  v82 = *(v9 + 368);
  *(*(v53 + 16) + 20) = v82;
  if (*(v9 + 68) == 1)
  {
    *(v53 + 656) = *(v9 + 72);
  }

  v83 = *(v9 + 76);
  *(v53 + 246) = v83;
  if (v83 == 1)
  {
    v84 = *(v9 + 80);
    if (v84)
    {
      v82 = *v84;
      *(v53 + 238) = *(v84 + 14);
      *(v53 + 224) = v82;
    }
  }

  *(v53 + 456) = 0;
  if (!*(a1 + 456) && dword_280B9A880 >= 7)
  {
    fprintf(*MEMORY[0x277D85DF8], "=== hooked up frame %d at index %d ===\n", *(v7 + 8), *(a1 + 9961));
    syslog(31, "=== hooked up frame %d at index %d ===\n", *(v7 + 8), *(a1 + 9961));
  }

  v85 = *(*(a1 + 9920) + 8 * *(a1 + 9964));
  v86 = *(*(v85 + 576) + 256);
  if (v86)
  {
    sub_2773ED190(*(v85 + 616), v86, 0, 0);
  }

  v87 = *(a1 + 9964);
  v88 = *(a1 + 9961) + 1;
  *(a1 + 9961) = v88;
  v89 = *(a1 + 9956);
  *(a1 + 9964) = (v87 + 1) % v89;
  v90 = *(v7 + 8);
  v91 = *(v9 + 40);
  if (!v90)
  {
    if (!v91)
    {
      goto LABEL_145;
    }

LABEL_144:
    *(a1 + 9948) = v90;
    goto LABEL_145;
  }

  if (v91)
  {
    goto LABEL_144;
  }

  if (v89 != v88 && (*(v9 + 708) != 1 || v90 != *(a1 + 512) - 1))
  {
LABEL_142:
    v15 = 0;
    goto LABEL_151;
  }

LABEL_145:
  v92 = v88;
  v93 = *(a1 + 4 * *(a1 + 9952) + 608);
  v94 = v92 - v93;
  if (v94 < 1 || (v95 = v94 & ~(v94 >> 31), v95 >= v93))
  {
LABEL_150:
    v15 = sub_277469D80(a1);
  }

  else
  {
    LOBYTE(v96) = *(a1 + 9963);
    v97 = v95 + 1;
    while (1)
    {
      *(a1 + 9962) = v96;
      v15 = sub_277469ED8(a1, 0, 0, 1, *&v82, v81, v70);
      v96 = (*(a1 + 9963) + 1) % *(a1 + 9956);
      *(a1 + 9963) = v96;
      --*(a1 + 9961);
      if (v15)
      {
        break;
      }

      if (--v97 < 2)
      {
        goto LABEL_150;
      }
    }
  }

LABEL_151:
  if (v10)
  {
    sub_2773CC26C(v10);
  }

  if (v6)
  {
    sub_2773CC26C(v6);
  }

  return v15;
}

void sub_277469D48(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2773CC26C(v2);
  }

  if (v1)
  {
    sub_2773CC26C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_277469D80(uint64_t a1)
{
  v2 = *(a1 + 9952);
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = (a1 + 608);
    v5 = *(a1 + 9952);
    do
    {
      v6 = *v4++;
      v3 = v6 + v3;
      --v5;
    }

    while (v5);
  }

  LODWORD(v7) = *(a1 + 608 + 4 * v2);
  v8 = log2(v7);
  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  if (v7 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 108 * v3 + 959;
    while (1)
    {
      v15 = *(a1 + v14);
      if (v15 <= *(a1 + 9961))
      {
        if (*(a1 + 9961) == 1)
        {
          LOBYTE(v16) = *(a1 + 9963);
        }

        else
        {
          v16 = ((v15 - 1) % v7 + *(a1 + 9963)) % *(a1 + 9956);
        }

        *(a1 + 9962) = v16;
        ++v13;
        result = sub_277469ED8(a1, v3 + v12, v2, v11, v8, v9, v10);
        if (result)
        {
          goto LABEL_21;
        }

        v2 = *(a1 + 9952);
      }

      ++v12;
      v7 = *(a1 + 608 + 4 * v2);
      v14 += 108;
      if (v12 >= v7)
      {
        goto LABEL_20;
      }
    }
  }

  v13 = 0;
LABEL_20:
  result = 0;
LABEL_21:
  *(a1 + 9961) -= v13;
  *(a1 + 9963) = (v13 + *(a1 + 9963)) % *(a1 + 9956);
  return result;
}

uint64_t sub_277469ED8(uint64_t a1, int a2, int a3, int a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v10 = a1;
  v457 = *MEMORY[0x277D85DE8];
  v11 = a1 + 0x2000;
  v12 = *(a1 + 9962);
  v13 = *(a1 + 9962);
  v14 = *(a1 + 9920);
  v15 = *(a1 + 10400);
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = *(v14 + 8 * v12);
  if (!v16)
  {
    goto LABEL_27;
  }

  if (*(v15 + 1752) != 1)
  {
    goto LABEL_20;
  }

  v18 = *(v16 + 6692);
  if (*(v16 + 6548) <= 0)
  {
    v19 = *(v15 + 1680) + 1;
  }

  else
  {
    v19 = 0;
  }

  *(v15 + 1680) = v19;
  if (v18 != *(v15 + 40))
  {
    v22 = *(v15 + 1660);
    v23 = v22 & 0xFFFFFFFE;
    if (v18)
    {
      if (v23 != 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v23 != 4)
      {
LABEL_19:
        *(v15 + 40) = v18;
        goto LABEL_20;
      }

      v23 = -2;
    }

    sub_2774BCAB4(v15, v22 + v23);
    goto LABEL_19;
  }

  if (!v18)
  {
    if (v19)
    {
      if (v19 < 16)
      {
        goto LABEL_20;
      }

      v20 = *(v15 + 1660);
      if ((v20 & 0xFFFFFFFE) != 2)
      {
        goto LABEL_20;
      }

      v21 = v20 + 2;
      goto LABEL_226;
    }

    v165 = *(v15 + 1660);
    if ((v165 & 0xFFFFFFFE) == 4)
    {
      v21 = v165 - 2;
LABEL_226:
      sub_2774BCAB4(v15, v21);
    }
  }

LABEL_20:
  v24 = *(v15 + 1608);
  v25 = *(v15 + 1648);
  if (v24 < 1)
  {
    v10 = a1;
  }

  else
  {
    v10 = a1;
    if ((*(v15 + 1749) & 1) != 0 && v25 % *(&unk_2775335C8 + 2 * v24 + 1) < *(&unk_2775335C8 + 2 * v24 + 1) - *(&unk_2775335C8 + 2 * v24))
    {
      **(v14 + 8 * v12) = 1;
      if (dword_280B9A880 >= 7)
      {
        fwrite("Dropped before encoding.\n", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
        syslog(31, "Dropped before encoding.\n");
        v25 = *(v15 + 1648);
      }
    }
  }

  *(v15 + 1648) = v25 + 1;
  v12 = *(v11 + 1770);
  v13 = *(v11 + 1770);
  v14 = *(v10 + 9920);
LABEL_27:
  v439 = v11;
  v26 = *(v14 + 8 * v12);
  v27 = (v26 + 6512);
  if (*(v11 + 1752) != 1)
  {
    v34 = *(v10 + 9948);
    *(v26 + 676) = 0;
    *(v26 + 672) = a2;
    v35 = *(v26 + 576);
    v36 = *(v35 + 7872);
    if (a3 >= 1)
    {
      v37 = (v35 + 7876);
      v38 = a3;
      do
      {
        v39 = *v37++;
        v36 += v39;
        --v38;
      }

      while (v38);
    }

    v40 = *(v35 + 4 * a3 + 7876);
    if (v40 >= 1)
    {
      v41 = v40 + v36;
      v42 = *(v26 + 652) - v34;
      v43 = v36;
      v44 = (v35 + 108 * v36 + 959);
      while (1)
      {
        v45 = *v44;
        v44 += 108;
        if (v42 == v45)
        {
          break;
        }

        if (++v43 >= v41)
        {
          goto LABEL_50;
        }
      }

      *(v26 + 672) = v43;
      a2 = v43;
    }

LABEL_50:
    v46 = *(v35 + 874);
    if (v46 <= 0)
    {
      *(v35 + 228) = -9999;
    }

    if (*(v35 + 429) == 1)
    {
      *(v26 + 648) = 0;
      if ((*v27 & 1) == 0)
      {
        *(v26 + 6516) = *(v35 + 488);
      }

      v47 = 0;
      a4 = 0;
      *(v35 + 228) = 0;
LABEL_89:
      v60 = *(v35 + 456);
      if (v60 == 40 || v60 == 0)
      {
        v62 = v47 >= 3 ? *(v35 + 108 * a2 + 958) : 0;
        *(v26 + 656) = v62;
        if (v62 == a4)
        {
          *(*(v26 + 616) + 40) = 0;
        }
      }

      v55 = 756;
      goto LABEL_100;
    }

    v48 = *(v26 + 652);
    if (!v48 || *(v26 + 6793) == 1)
    {
      v47 = (v48 > 0) & *(v35 + 536);
      *(v26 + 648) = v47;
      _VF = __OFSUB__(v46, 1);
      v50 = v46 - 1;
      if (v50 < 0 == _VF)
      {
        *(v35 + 228) = v50;
      }

      if ((*v27 & 1) == 0)
      {
        *(v26 + 6516) = *(v35 + 488);
      }

      if ((v47 & 1) == 0 && *(v35 + 584) == 1)
      {
        v51 = 0;
        v52 = (v35 + 10000);
        v53 = 1;
        do
        {
          v54 = *v52;
          if (*v52 && *(v54 + 1024) >= 1 && *(v54 + 12) < 1)
          {
            break;
          }

          v53 = v51 < 0x10;
          v52 += 2;
          ++v51;
        }

        while (v51 != 17);
        if (v53)
        {
          *(v26 + 684) = *(v35 + 962);
        }
      }

      goto LABEL_89;
    }

    v56 = v35 + 956;
    v57 = *(v35 + 956 + 108 * a2 + 1);
    if (v57 == 82)
    {
      v47 = 5;
      *(v26 + 648) = 5;
      v58 = (v35 + 228);
      v46 = *(v35 + 228);
    }

    else
    {
      if (v57 == 80)
      {
        v47 = 3;
      }

      else
      {
        if (v57 != 76)
        {
          goto LABEL_101;
        }

        v47 = 4;
      }

      *(v26 + 648) = v47;
      v58 = (v35 + 228);
      if (!*(v35 + 228))
      {
        v47 = 2;
        *(v26 + 648) = 2;
        *v58 = v46;
        if ((*v27 & 1) == 0)
        {
          *(v26 + 6516) = *(v35 + 488);
        }

        goto LABEL_87;
      }

      v46 = *(v35 + 228);
    }

    if (*v27 == 1)
    {
      v59 = *(v56 + 108 * a2 + 4);
    }

    else
    {
      v59 = *(v56 + 108 * a2 + 4);
      *(v26 + 6516) = (v59 + *(v35 + 488));
    }

    *(v26 + 680) = v59;
    *(v26 + 684) = *(v56 + 108 * a2 + 6);
LABEL_87:
    if (v46 >= 1)
    {
      *v58 = v46 - 1;
    }

    goto LABEL_89;
  }

  v28 = *(v26 + 576);
  if (!*(v26 + 652) || *(v26 + 6793) == 1)
  {
    *(v26 + 648) = 0;
    *(v26 + 684) = 0;
    if (*(v28 + 584) == 1)
    {
      v29 = 0;
      v30 = (v28 + 10000);
      v31 = 1;
      do
      {
        v32 = *v30;
        if (*v30 && *(v32 + 1024) >= 1 && *(v32 + 12) < 1)
        {
          break;
        }

        v31 = v29 < 0x10;
        v30 += 2;
        ++v29;
      }

      while (v29 != 17);
      if (v31 && (*(v26 + 464) & 1) == 0)
      {
        *(v26 + 684) = 0x400000004;
      }
    }

    if (*v27)
    {
      goto LABEL_74;
    }

    v33 = 488;
    goto LABEL_73;
  }

  *(v26 + 648) = 5;
  *(v26 + 684) = 0x400000004;
  if ((*v27 & 1) == 0)
  {
    v33 = 489;
LABEL_73:
    *(v26 + 6516) = *(v28 + v33);
  }

LABEL_74:
  *(v26 + 692) = -1;
  *(v26 + 756) = 1;
  v55 = 676;
LABEL_100:
  *(v26 + v55) = 0;
  sub_27747898C(v26);
LABEL_101:
  if (!*(v14 + 8 * v12))
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("No frame to encode.\n", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "No frame to encode.\n");
    }

    return 4294954385;
  }

  v63 = *(*(v10 + 9920) + 8 * v12);
  v440 = *(v10 + 544);
  v64 = *(v10 + 11016);
  *(v10 + 11016) = v64 + 1;
  *(v63 + 146) = v64;
  v453 = *(v10 + 10384);
  *&_Q0 = 0;
  *(v10 + 10384) = 0u;
  v66 = *(v63 + 77);
  v67 = *(v63 + 78);
  if (v67)
  {
    atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
    v68 = *(v10 + 10392);
    *(v10 + 10384) = v66;
    *(v10 + 10392) = v67;
    if (v68)
    {
      sub_2773CC26C(v68);
    }
  }

  else
  {
    *(v10 + 10384) = v66;
    *(v10 + 10392) = 0;
  }

  v437 = v13;
  v438 = v63 + 4096;
  if ((v440 & 2) != 0)
  {
    dispatch_semaphore_wait(*(v10 + 9824), 0xFFFFFFFFFFFFFFFFLL);
  }

  v441 = v10;
  context = v63;
  if (*v63)
  {
    goto LABEL_112;
  }

  v73 = v63;
  if (*(*(v63 + 1) + 33) == 1)
  {
    v74 = *(v63 + 2);
    *(v74 + 4) = -1;
    *v74 = -1;
    *(v74 + 52) = 0;
    v75 = *(v63 + 2);
    *(v75 + 104) = 0u;
    *(v75 + 88) = 0u;
    *(v75 + 72) = 0u;
    *(v75 + 56) = 0u;
    v77 = *(v63 + 1);
    v76 = *(v63 + 2);
    v78 = v77[34];
    *v76 = v78;
    v79 = v77[39];
    *(v76 + 4) = v79;
    *(v76 + 2) = v77[36];
    if (v78 != 255)
    {
      v80 = *(v63 + 813);
      v81 = *(v80 + 504);
      v82 = v80 + 8 * *(v80 + 44);
      v83 = (v82 + 54);
      v84 = (v82 + 52);
      v85 = v81 == 0;
      if (v81)
      {
        v86 = v83;
      }

      else
      {
        v86 = v84;
      }

      *(v76 + 8) = *v86;
      if (v85)
      {
        v84 = v83;
      }

      *(v76 + 12) = *v84;
    }

    v87 = v77[38];
    *(v76 + 3) = v87;
    v88 = *(v63 + 77);
    v89 = *(v88 + 520);
    v90 = *(v88 + 524);
    *(v76 + 36) = 0;
    *(v76 + 44) = 0;
    if (v78 == 255)
    {
      *(v76 + 40) = v89 - 1;
      v94 = v90 - 1;
    }

    else
    {
      v92 = *(v76 + 8);
      v91 = *(v76 + 12);
      v93 = v92 - 1;
      *(v76 + 40) = v92 - 1;
      v94 = v91 - 1;
      *(v76 + 48) = v91 - 1;
      if (v87 == 255)
      {
        goto LABEL_152;
      }

      v95 = *(v76 + 20);
      if (v95 < 1)
      {
        goto LABEL_152;
      }

      v96 = *(v76 + 24);
      if (v96 < 1 || *(v76 + 28) || *(v76 + 32))
      {
        goto LABEL_152;
      }

      v97 = (v89 + v92 * v95 - 1) / v89;
      v98 = (v90 + v91 * v96 - 1) / v90;
      v99 = (v92 - v97) / 2;
      v100 = (v93 + v97) / 2;
      v101 = (v91 - v98) / 2;
      v102 = (v94 + v98) / 2;
      if (v99 <= 4)
      {
        v99 = 4;
      }

      v103 = v99 - 4;
      v104 = v100 + 4;
      if (v104 < v93)
      {
        v93 = v104;
      }

      *(v76 + 36) = v103;
      *(v76 + 40) = v93;
      if (v101 <= 4)
      {
        v105 = 4;
      }

      else
      {
        v105 = v101;
      }

      v106 = v105 - 4;
      v107 = v102 + 4;
      if (v107 < v94)
      {
        v94 = v107;
      }

      *(v76 + 44) = v106;
    }

    *(v76 + 48) = v94;
LABEL_152:
    if (v79 != 255)
    {
      *(v76 + 52) = 1;
    }

    sub_2774BCF5C(v76);
  }

  v112 = *(v63 + 72);
  if (*(v112 + 448) == 1 && *(*(v63 + 1) + 34) != 255)
  {
    v113 = *(v63 + 813);
    if (v113)
    {
      v114 = *(v63 + 77);
      v115 = *(v114 + 520);
      *(v114 + 504) = v115;
      v116 = *(v113 + 504);
      v117 = v113 + 8 * *(v113 + 44);
      v118 = (v117 + 54);
      v119 = (v117 + 52);
      v120 = v116 == 0;
      if (v116)
      {
        v121 = (v117 + 54);
      }

      else
      {
        v121 = (v117 + 52);
      }

      v122 = *v121;
      *(v114 + 512) = v122;
      if (!v120)
      {
        v118 = v119;
      }

      v123 = *v118;
      *(v114 + 516) = v123;
      if (*(v114 + 432) != 1 || (v122 ? (v124 = v123 == 0) : (v124 = 1), v124 || (v115 == v122 ? (v125 = HIDWORD(v115) == v123) : (v125 = 0), v125)))
      {
        *(v114 + 512) = 0;
      }

      else
      {
        v126 = *(v112 + 10408);
        if (HIDWORD(v115))
        {
          v127 = *(v114 + 488);
          v128 = v115;
          v129 = SHIDWORD(v115);
          v130 = *(v114 + 472);
          do
          {
            --v129;
            memset(v130, 128, v128);
            v130 += v127;
          }

          while (v129);
          v114 = *(context + 77);
          v131 = *(v114 + 524);
          if (v131 >= 2)
          {
            v132 = *(v114 + 520);
            v133 = *(v114 + 496);
            v134 = v131 >> 1;
            v135 = *(v114 + 480);
            do
            {
              --v134;
              memset(v135, 128, v132);
              v135 += v133;
            }

            while (v134);
            v114 = *(context + 77);
          }
        }

        v136 = *(v126 + 24);
        v137 = *(v114 + 504);
        v138 = *(v114 + 508);
        v139 = *(v114 + 512);
        v140 = *(v114 + 516);
        v141 = (*(*v114 + 24))(v114);
        v142 = (*(**(context + 77) + 32))(*(context + 77));
        (*(*v136 + 32))(v136, v137, v138, v139, v140, v141, v142);
        v143 = 0;
        v73 = context;
        v144 = *(context + 77);
        v145 = 1;
        do
        {
          v146 = v145;
          *(v144 + 8 * v143 + 400) = *(v144 + 8 * v143 + 472);
          v144 = *(context + 77);
          *(v144 + 8 * v143 + 416) = *(v144 + 8 * v143 + 488);
          v143 = 1;
          v145 = 0;
        }

        while ((v146 & 1) != 0);
      }
    }
  }

  v69 = sub_2774789FC(v73);
  if (v69)
  {
    v70 = context;
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Frame %d: Precompress failed\n", *(context + 163));
      v70 = context;
      syslog(27, "Frame %d: Precompress failed\n", *(context + 163));
    }

    goto LABEL_669;
  }

  v70 = context;
  v147 = context[648];
  if (v147 == 1)
  {
    v148 = *(context + 163);
    v149 = v441;
    *(v441 + 324) = v148;
  }

  else
  {
    v149 = v441;
    v148 = *(v441 + 324);
  }

  *(context + 152) = v148;
  v150 = v438;
  if (*(v149 + 584) == 1)
  {
    v151 = 0;
    v152 = *(context + 72);
    v153 = (v152 + 10000);
    v154 = 1;
    do
    {
      v155 = *v153;
      if (*v153 && *(v155 + 1024) >= 1 && *(v155 + 12) < 1)
      {
        break;
      }

      v154 = v151 < 0x10;
      v153 += 2;
      ++v151;
    }

    while (v151 != 17);
    if (v154)
    {
      v156 = *(v152 + 456);
      if (v156 == 34)
      {
        v157 = context[464];
        goto LABEL_228;
      }

      if (!v156)
      {
        v157 = *(*(context + 77) + 1172);
LABEL_228:
        v158 = v157 ^ 1;
        goto LABEL_229;
      }
    }

    v158 = 0;
LABEL_229:
    context[757] = v158 & 1;
  }

  v166 = *(v149 + 10400);
  if (v166 && *(v166 + 1776) == 1 && !*(context + 163))
  {
    v450 = 0;
    v436 = context + 596;
    context[596] = 0;
    v168 = (context + 652);
    v170 = (context + 632);
    v446 = *(*(context + 79) + 1024);
    v169 = (v166 + 1776);
  }

  else
  {
    if (v147)
    {
      v167 = 1;
    }

    else
    {
      v167 = context[757] ^ 1;
    }

    v436 = context + 596;
    context[596] = v167 & 1;
    if (!v166)
    {
      goto LABEL_553;
    }

    v168 = (context + 652);
    v450 = *(context + 163);
    v169 = (v166 + 1776);
    v170 = (context + 632);
    v446 = *(*(context + 79) + 1024);
    if ((*(v166 + 1776) & 1) == 0)
    {
      goto LABEL_252;
    }
  }

  v171 = *(v166 + 1784);
  if (v147 >= 5)
  {
    *(context + 150) = v171;
    v177 = *(v166 + 1788) + 1;
    *(v166 + 1788) = v177;
  }

  else
  {
    v443 = v169;
    v172 = v171 + 1;
    *(v166 + 1784) = v171 + 1;
    if (v171 < -1 || (v173 = *(*(v166 + 1800) + 8 * (v172 % *(v166 + 1780)))) == 0)
    {
      if (dword_280B9A880 < 3)
      {
        goto LABEL_539;
      }

      v448 = v168;
      fprintf(*MEMORY[0x277D85DF8], "mpt_rc: Failed to find gop stats buffer for gop_id %d\n", v172);
      syslog(27, "mpt_rc: Failed to find gop stats buffer for gop_id %d\n", *(v166 + 1784));
      goto LABEL_283;
    }

    v448 = v168;
    *__lk = v173 + 10;
    __lk[8] = 1;
    std::mutex::lock((v173 + 10));
    v70 = context;
    if (!v173[8])
    {
      goto LABEL_246;
    }

    do
    {
      std::condition_variable::wait((v173 + 26), __lk);
    }

    while (v173[8]);
    if (__lk[8])
    {
LABEL_246:
      std::mutex::unlock(*__lk);
    }

    v174 = *(v166 + 1784);
    v175 = *(v166 + 1780);
    _VF = __OFSUB__(v174, v175);
    v176 = v174 - v175;
    if (v176 < 0 == _VF)
    {
      v240 = *v173;
      if (v240 >= 1 && v240 <= *(v166 + 496))
      {
        v261 = 0;
        v262 = (v166 + 336);
        v263 = 56 * v240;
        v442 = vdupq_n_s64(0x3FEE666666666666uLL);
        __asm { FMOV            V0.2D, #1.0 }

        v435 = *&_Q0;
        while (1)
        {
          v266 = *(v173 + 1);
          v267 = (v266 + v261);
          v268 = *(v266 + v261);
          if (v268 != 2)
          {
            break;
          }

          v269 = *(v267 + 32);
          v270 = *(v267 + 32);
          if (v269 <= 4)
          {
            *(v166 + 400) = 0;
            *(v166 + 368) = 0u;
            *(v166 + 384) = 0u;
            *v262 = 0u;
            *(v166 + 352) = 0u;
            v270 = *(v267 + 32);
          }

          v271 = *(v266 + v261 + 40);
          *(v262 + v270) += (v271 >> 3);
          ++*(v166 + 384 + 4 * v270);
          v272 = *(v266 + v261 + 48);
          *(v166 + 640) += v271 - *(v266 + v261 + 16);
          ++*(v166 + 656);
          if (*(v166 + 654) == 1)
          {
            v273.f64[0] = v435;
            v273.f64[1] = (v271 - v272);
            v274 = vaddq_f64(vmulq_f64(*(v166 + 544), v442), v273);
            *(v166 + 544) = v274;
            *(v166 + 560) = *&vdivq_f64(vdupq_laneq_s64(v274, 1), v274);
            v271 = v272;
          }

          v275 = exp2((*(v266 + v261 + 4) + -12.0) / 6.0) * 0.850000024;
          if (v269 >= 5)
          {
            v275 = v275 / *(*(v166 + 608) + 4 * *(v266 + v261 + 24));
          }

          sub_2774BAAEC(v166 + 720, v271, v275, *(v266 + v261 + 8));
          v261 += 56;
          if (v263 == v261)
          {
            v174 = *(v166 + 1784);
            v70 = context;
            goto LABEL_249;
          }
        }

        if (dword_280B9A880 < 3)
        {
          goto LABEL_414;
        }

        v241 = "mpt_rc: frame %d Invalid state %d\n";
        fprintf(*MEMORY[0x277D85DF8], "mpt_rc: frame %d Invalid state %d\n", v267[7], v268);
        v242 = v267[7];
        v240 = *v267;
      }

      else
      {
        if (dword_280B9A880 < 3)
        {
          goto LABEL_539;
        }

        v241 = "mpt_rc: gop %d Invalid size %d\n";
        fprintf(*MEMORY[0x277D85DF8], "mpt_rc: gop %d Invalid size %d\n", v176, v240);
        v242 = (*(v166 + 1784) - *(v166 + 1780));
      }

      syslog(27, v241, v242, v240);
LABEL_283:
      if (dword_280B9A880 >= 3)
      {
        v203 = v450;
        v204 = "Frame %d: Failed in MptRcAquireGopStatsUpdateModel\n";
        fprintf(*MEMORY[0x277D85DF8], "Frame %d: Failed in MptRcAquireGopStatsUpdateModel\n", v450);
LABEL_529:
        syslog(27, v204, v203);
        v69 = 4294954385;
        goto LABEL_530;
      }

LABEL_414:
      v69 = 4294954385;
      goto LABEL_668;
    }

LABEL_249:
    v177 = 0;
    *v173 = 0;
    *(v70 + 600) = v174;
    *(v166 + 1788) = 0;
    v150 = v438;
    v168 = v448;
    v169 = v443;
  }

  *(v70 + 604) = v177;
LABEL_252:
  v178 = *(v166 + 1696);
  if (*(v166 + 1696) || *v169 == 1 && *(v166 + 1784) < *(v166 + 1780) || *(v70 + 648) > 4u || *v168 < 1)
  {
    goto LABEL_253;
  }

  v194 = 0;
  v195 = 0;
  v196 = 0;
  v197 = 0;
  v198 = (v166 + 336);
  do
  {
    v200 = *v198++;
    v199 = v200;
    v201 = *(v166 + 384 + v194);
    if (v194 != 20)
    {
      if (v199)
      {
        if (v195 || (v195 = v199, v201 != 1))
        {
          if (dword_280B9A880 < 3)
          {
            goto LABEL_539;
          }

          v250 = *MEMORY[0x277D85DF8];
          v251 = "more than 1 RC frame in prev GOP\n";
          v252 = "more than 1 RC frame in prev GOP\n";
          v253 = 33;
LABEL_391:
          fwrite(v252, v253, 1uLL, v250);
          syslog(27, v251);
          v69 = 4294954385;
          v70 = context;
          goto LABEL_531;
        }
      }
    }

    v197 += v199;
    v196 += v201;
    v194 += 4;
  }

  while (v194 != 24);
  if (!v195)
  {
    if (dword_280B9A880 < 3)
    {
      goto LABEL_539;
    }

    v250 = *MEMORY[0x277D85DF8];
    v251 = "no RC frame found in prev GOP\n";
    v252 = "no RC frame found in prev GOP\n";
    v253 = 30;
    goto LABEL_391;
  }

  v202 = *(v166 + 328);
  if (v196 > v202)
  {
    v69 = 4294954385;
    goto LABEL_531;
  }

  if (v196 >= v202)
  {
    v276 = 0;
    v277 = (*(v166 + 432) + 1) % 3;
    *(v166 + 408 + 8 * v277) = v195 / v197;
    *(v166 + 432) = v277;
    v278 = v277 + 3;
    v279 = 0.0;
    while (1)
    {
      v280 = *(v166 + 408 + 8 * (v278 % 3));
      if (v280 == -1.0)
      {
        break;
      }

      v279 = v279 + v280 * *&qword_277533550[v276++];
      --v278;
      if (v276 == 3)
      {
        *(v166 + 440) = v279;
        break;
      }
    }
  }

LABEL_253:
  v179 = *(v70 + 6520);
  v180 = *(v70 + 6524);
  v181 = *(v70 + 6528);
  v182 = *(v70 + 6532);
  v183 = *(v70 + 6536);
  v184 = *(v150 + 2444);
  v185 = v179;
  *(v166 + 512) = v179;
  if ((*(*(v166 + 1688) + 447) & 1) == 0)
  {
    *(v166 + 520) = v181;
    *(v166 + 760) = v185 / v181;
  }

  if (v178 == 1)
  {
    v186 = *(v166 + 520);
    v187 = 250;
    if (*(v166 + 1749) == 1)
    {
      if ((3000.0 / v186) <= 250)
      {
        v187 = 250;
      }

      else
      {
        v187 = (3000.0 / v186);
      }
    }

    v188 = *(v166 + 1760);
    v189 = *(*v170 + 16);
    if (*(v188 + 48) == 2)
    {
      if (v189 < 1 || (v190 = *(*v170 + 32), v190 < 1) || (v191 = *(v188 + 40), v191 < 1) || (v192 = v189 - v191, v192 >= 20 * v190))
      {
        v193 = *(v188 + 12) - (v185 / v186);
      }

      else
      {
        v193 = *(v188 + 12) - v192 * v179 / v190;
      }

      v205 = v193 & ~(v193 >> 31);
      *(v188 + 12) = v205;
    }

    else
    {
      v205 = *(v188 + 12);
    }

    *(v188 + 40) = v189;
    v206 = (v185 * v187 / 1000.0) - v205;
    v183 = v206 & ~(v206 >> 31);
    *(v188 + 16) = v183;
    *(v188 + 20) = v187;
LABEL_289:
    v182 = *(v188 + 12);
  }

  else
  {
    v188 = *(v166 + 1760);
    if (v188)
    {
      v183 = *(v188 + 16);
      goto LABEL_289;
    }
  }

  *__lk = v179;
  *&__lk[4] = v180;
  *&__lk[8] = v181;
  *&__lk[12] = v182;
  *&__lk[16] = v183;
  *&__lk[20] = v184;
  sub_2774BBA58(v166, __lk);
  v208 = context[648];
  v209 = context[648];
  v210 = *(v166 + 1776);
  if (v210)
  {
    if (!*v168)
    {
      *(v166 + 652) = v209;
      *(v166 + 650) = 1;
      sub_2774BC0DC(v166, *(context + 792));
      v150[2400] = 1;
      *&_Q0 = *(v166 + 576);
      goto LABEL_472;
    }

LABEL_297:
    *(v166 + 652) = v209;
    v212 = v150[2236];
    *(v166 + 653) = v212;
    v448 = v168;
    v444 = v169;
    if (v209 <= 2)
    {
      v213 = (v166 + 650);
      v212 = 1;
      *(v166 + 650) = 1;
      goto LABEL_307;
    }

    v213 = (v166 + 650);
    if (v209 - 3 >= 3)
    {
      *(v166 + 650) = 0;
LABEL_307:
      v214 = *(context + 792);
    }

    else
    {
      *(v166 + 650) = v212;
      v214 = *(context + 792);
      if (v212)
      {
        v212 = 1;
      }
    }

    v215 = *(v166 + 712);
    *v213 = v212;
    if (v210 && *(v166 + 1784) < *(v166 + 1780))
    {
      if (v209 <= 4)
      {
        v216 = *(v166 + 1792);
        v169 = v444;
        if (v209 > 2)
        {
          v217 = *(context + 170);
          if (v217 <= 3)
          {
            v217 = 3;
          }

          v216 = v216 + v217;
        }

        v218 = v216;
        v168 = v448;
        goto LABEL_465;
      }

      v69 = sub_2774BC17C(v166, context);
      if (!v69)
      {
        v218 = *(v166 + 576);
        v150 = v438;
        v168 = v448;
        v169 = v444;
        goto LABEL_465;
      }

LABEL_530:
      v70 = context;
      v168 = v448;
LABEL_531:
      if (dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Frame %d: RateControlBeforeEncoding failed\n", *v168);
        v70 = context;
        syslog(27, "Frame %d: RateControlBeforeEncoding failed\n", *v168);
      }

      goto LABEL_669;
    }

    if (v215 == 1)
    {
      v212 = 0;
      *v213 = 0;
    }

    v219 = *(v166 + 656);
    v220 = *(v166 + 536);
    v221 = v220 * (v219 + 1);
    v222 = *(v166 + 640);
    if (v209 > 4)
    {
      *(context + 71) = v222 / v221;
    }

    else
    {
      v223 = *(v166 + 1768);
      if (v223 > v220)
      {
        v222 = v220 - v223 + v222;
        *(v166 + 1768) = v223 + v220 * -0.5;
      }

      v224 = v222 / v221;
      *(context + 71) = v222 / v221;
      v225 = *(v166 + 496);
      if (v225 <= *(*(v166 + 1688) + 9961) || v150[2697] == 1)
      {
        if (v215 != 1)
        {
          v220 = v221 / v219;
        }

        if (v225)
        {
          v226 = *(v166 + 328);
          v227 = -1.0;
          if (v226 >= 2)
          {
            v228 = *(v166 + 440);
            if (v228 != -1.0)
            {
              v227 = v228 / ((1.0 - v228) / (v226 - 1));
            }
          }

          if (v227 == -1.0)
          {
            v227 = 3.0;
          }

          v229 = 0.9;
          if (context[757])
          {
            v229 = 1.0;
          }

          v220 = sub_2774BC458(v166, v212, 0, v220, v229, v227);
        }

        if (*(v166 + 654) == 1)
        {
          v230 = *(v166 + 560);
          v231 = 10.0;
          if (v220 > v230)
          {
            v231 = v220 - v230;
          }
        }

        else
        {
          v231 = v220;
        }

        if (!*(v166 + 712))
        {
          if (*v213 == 1)
          {
            if (dword_280B9A880 >= 7)
            {
              fwrite("mode: intra\n", 0xCuLL, 1uLL, *MEMORY[0x277D85DF8]);
              syslog(31, "mode: intra\n");
            }

            v243 = sub_2774BA7BC(v166 + 720, 0, 0, v214, v224, v231);
            if (*(v166 + 616) >= 2u)
            {
              v244 = 1.39999998;
              if (context[757])
              {
                v244 = 1.0;
              }

              v243 = v243 / v244;
            }

            v150 = v438;
            if (v438[2697])
            {
              v245 = 0;
              goto LABEL_429;
            }

            v245 = 0;
            *(v166 + 744) = 0;
            *(v166 + 728) = 0;
            v259 = *(v166 + 780);
            if (v259 <= 0)
            {
              goto LABEL_385;
            }
          }

          else
          {
            if ((v208 - 3) > 2)
            {
              v245 = 0;
              v243 = 0.0;
              goto LABEL_429;
            }

            if (v150[2236])
            {
              v260 = 1;
            }

            else if (v150[2237])
            {
              v260 = *(*(v166 + 1688) + 456) != 0;
            }

            else
            {
              v260 = 0;
            }

            v245 = (v209 == 1) | ((v208 & 5) == 0) | *(v166 + 649) ^ 1;
            if (v245)
            {
              if (dword_280B9A880 >= 7)
              {
                fprintf(*MEMORY[0x277D85DF8], "mode: inter, other, force_long_term_stats=%d\n", v260);
                syslog(31, "mode: inter, other, force_long_term_stats=%d\n", v260);
              }

              v243 = sub_2774BA7BC(v166 + 720, v260, v215 == 1, v214, v224, v231);
            }

            else
            {
              if (dword_280B9A880 >= 7)
              {
                fwrite("mode: inter, prev_frame_as_intra_rc_\n", 0x25uLL, 1uLL, *MEMORY[0x277D85DF8]);
                syslog(31, "mode: inter, prev_frame_as_intra_rc_\n");
              }

              v243 = exp2((*(v166 + 584) + 2.0 + -12.0) / 6.0) * 0.850000024;
            }

            if (!v260)
            {
              v150 = v438;
              goto LABEL_429;
            }

            *(v166 + 744) = 0;
            *(v166 + 728) = 0;
            v259 = *(v166 + 780);
            v150 = v438;
            if (v259 <= 0)
            {
              goto LABEL_385;
            }
          }

LABEL_384:
          *(v166 + 792) = *(v166 + 788) / v259;
          goto LABEL_385;
        }

        if (v150[2236])
        {
          v239 = 1;
        }

        else
        {
          v239 = v150[2237];
        }

        v254 = *(v166 + 676);
        if (v254 >= 1)
        {
          v255 = v254 / 10.0;
          if (v231 * 0.25 < v255)
          {
            v255 = v231 * 0.25;
          }

          v256 = v231 - v255;
          v257 = *(v166 + 680);
          if (v256 <= v257)
          {
            v231 = v256;
          }

          else
          {
            v231 = v257;
          }
        }

        v258 = (v209 > 2) & *(v166 + 649);
        if (v258 == 1)
        {
          v243 = exp2((*(v166 + 584) + 3.0 + -12.0) / 6.0) * 0.850000024;
        }

        else
        {
          v243 = sub_2774BA7BC(v166 + 720, v239, v215 == 1, v214, v224, v231);
        }

        v245 = v258 ^ 1;
        if (v239 && (*(v166 + 1600) & 1) == 0)
        {
          *(v166 + 744) = 0;
          *(v166 + 728) = 0;
          v259 = *(v166 + 780);
          if (v259 >= 1)
          {
            goto LABEL_384;
          }

LABEL_385:
          *(v166 + 780) = -1;
          *(v166 + 784) = 0;
        }

LABEL_429:
        if (v243 >= 0.850000024)
        {
          v233 = v243;
        }

        else
        {
          v233 = 0.850000024;
        }

        v232 = *(v166 + 712);
        v281 = 1.0;
        if (!v232)
        {
          v282 = *(v166 + 656);
          if (v282 >= 5)
          {
            v283 = sqrt((v282 / 0x19u));
            if (v283 <= 1.0)
            {
              v284 = *(v166 + 512) + *(v166 + 512);
            }

            else
            {
              v284 = v283 * (*(v166 + 512) + *(v166 + 512));
            }

            v285 = *(v166 + 640) / v284 + 1.0;
            v286 = 2.0;
            if (v285 < 2.0)
            {
              v286 = v285;
            }

            if (v285 <= 0.5)
            {
              v281 = 0.5;
            }

            else
            {
              v281 = v286;
            }

            v233 = v233 * v281;
          }
        }

        if (v245)
        {
          v287 = *(v166 + 584);
          if (*(v166 + 649))
          {
            v287 = v287 + 2.91256094;
          }

          v288 = exp2((v287 + -12.0) / 6.0) * 0.850000024;
          v289 = v288 * 1.51452804;
          v290 = v288 / 1.51452804;
          if (v281 <= 1.05)
          {
            if (v281 < 0.95)
            {
              v290 = v290 / 1.51452804;
            }
          }

          else
          {
            v289 = v289 * 1.51452804;
          }

          if (v289 > v233)
          {
            v289 = v233;
          }

          if (v290 >= v233)
          {
            v233 = v290;
          }

          else
          {
            v233 = v289;
          }
        }

        v218 = log(v233 / 0.850000024) * 6.0 / 0.693147181 + 12.0;
        *(v166 + 576) = v218;
LABEL_456:
        if (v232 == 1)
        {
          v291 = *(v166 + 624);
          v168 = v448;
          v169 = v444;
          if (v218 < v291)
          {
            v292 = v291 + -6.0;
            if (v218 < v292)
            {
              v218 = v292;
            }

            if (v218 < 22.0)
            {
              v218 = 22.0;
            }
          }
        }

        else
        {
          v168 = v448;
          v169 = v444;
        }

        *(v166 + 632) = v233;
LABEL_465:
        a6.i64[0] = 0x4049800000000000;
        if (v218 < 51.0)
        {
          *a6.i64 = v218;
        }

        a7.i64[0] = 12.0;
        if (v218 <= 12.0)
        {
          *&_Q0 = 12.0;
        }

        else
        {
          *&_Q0 = *a6.i64;
        }

LABEL_470:
        *(v166 + 576) = _Q0;
        goto LABEL_471;
      }
    }

    v69 = sub_2774BC17C(v166, context);
    if (v69)
    {
      goto LABEL_530;
    }

    v232 = *(v166 + 712);
    v218 = *(v166 + 576);
    v233 = 0.0;
    v150 = v438;
    goto LABEL_456;
  }

  v211 = *(v166 + 656);
  if (v150[2400])
  {
    if (!v211)
    {
      goto LABEL_302;
    }
  }

  else
  {
    if (v211)
    {
      goto LABEL_297;
    }

LABEL_302:
    *(v166 + 652) = v209;
    *(v166 + 650) = 1;
  }

  if (*(v166 + 1696))
  {
    *&_Q0 = exp2((*(v166 + 576) + -12.0) / 6.0);
    a6.i64[0] = 0x3FEB333340000000;
    *&_Q0 = *&_Q0 * 0.850000024;
    *(v166 + 632) = _Q0;
    LOWORD(_Q0) = word_277533624[v208];
    *&_Q0 = _Q0;
    goto LABEL_470;
  }

  sub_2774BC0DC(v166, *(context + 792));
  *&_Q0 = *(v166 + 576);
LABEL_471:
  v150[2400] = 1;
LABEL_472:
  v293 = *&_Q0;
  if (*(*(v166 + 1688) + 447) == 1)
  {
    v294 = v181;
    if (vabdd_f64(*(v166 + 1616), v181) > 0.5)
    {
      *(v166 + 1616) = v294;
    }

    v295 = *(v166 + 1668);
    v296 = v295;
    v297 = *(v166 + 44);
    v298 = roundf(v293) > v295;
    v299 = v293 > v295 && v297 < 31;
    if (v299)
    {
      v300 = v295;
    }

    else
    {
      v300 = *&_Q0;
    }

    if (v297 >= *(v166 + 1624))
    {
      v301 = 2;
    }

    else
    {
      v301 = 4;
    }

    *(v166 + 1656) = 0;
    if (v450 >= 1)
    {
      v302 = *(v166 + 1644);
      if (v302 >= 5)
      {
        v303 = 5;
      }

      else
      {
        v303 = *(v166 + 1644);
      }

      v304 = 0.0;
      if (v302 >= 2)
      {
        v305 = v303 - 1;
        v306 = v446 - 1;
        do
        {
          LOBYTE(v207) = *(v166 + 1601 + v306 % 5);
          v207 = LODWORD(v207);
          v304 = v304 + v207;
          --v306;
          --v305;
        }

        while (v305);
      }

      if (*(v166 + 1640) < 2)
      {
        v308 = (v304 + v293) / v303;
        if (v302 >= v301 && *(v166 + 1628) == 1 && *(v166 + 1652) == 1 && v308 >= (v295 - 1))
        {
          if (v297 >= 31)
          {
            v300 = v295;
            goto LABEL_502;
          }

          v307 = 1;
          v300 = v296;
        }

        else
        {
          if (v302 < 2)
          {
            goto LABEL_502;
          }

          if (v308 > (*(v166 + 1664) + 0.4999) || v297 < 1)
          {
            goto LABEL_502;
          }

          v307 = -1;
        }

LABEL_501:
        *(v166 + 1644) = 0;
        *(v166 + 1624) = v297;
        v297 += v307;
        *(v166 + 44) = v297;
        *(v166 + 1656) = v307;
        goto LABEL_502;
      }

      if (v297 < 31)
      {
        v307 = 1;
        goto LABEL_501;
      }
    }

LABEL_502:
    if (*(v166 + 1748) == 1)
    {
      v310 = *(v166 + 8 * v297 + 48);
      if (v310 <= 10.1)
      {
        if (v310 <= 5.1)
        {
          *(v166 + 1664) = 34;
          v311 = 36;
        }

        else
        {
          *(v166 + 1664) = 33;
          v311 = 35;
        }
      }

      else
      {
        *(v166 + 1664) = 32;
        v311 = 34;
      }

      *(v166 + 1668) = v311;
    }

    v312 = v169;
    v313 = v299 && v298;
    v314 = *(v166 + 1672);
    if (v314 != -1)
    {
      *(v166 + 44) = v314;
      v297 = v314;
    }

    v315 = *(v166 + 1676);
    if (v315 == -1)
    {
      v316 = v300;
    }

    else
    {
      v316 = v315;
    }

    v317 = sub_2774BC074(v166, v297);
    *(v166 + 1608) = v317;
    *(v166 + 1628) = v313;
    *(v166 + 1652) = 0;
    v318 = (&unk_2775335C8 + 4 * v317);
    *a6.i64 = v318[1];
    *&_Q0 = v294 * *v318 / *a6.i64;
    *(v166 + 520) = _Q0;
    v169 = v312;
    if (v316 != v293)
    {
      *__lk = v179;
      *&__lk[4] = v180;
      *&__lk[8] = v181;
      *&__lk[12] = v182;
      *&__lk[16] = v183;
      *&__lk[20] = v184;
      *&_Q0 = sub_2774BBA58(v166, __lk);
      v293 = v316;
    }
  }

  v70 = context;
  *(context + 1629) = v293;
  if (*(v166 + 1696) == 1)
  {
    v319 = *(v166 + 1760);
    *&_Q0 = *(v166 + 536);
    v320 = 3 * *&_Q0;
    v321 = v319[4];
    if (v321 >= v320)
    {
      v321 = 3 * *&_Q0;
    }

    v322 = v319[8] + v321;
    v319[6] = v320;
    v319[7] = v322;
  }

  if (*v169 != 1)
  {
    goto LABEL_553;
  }

  v323 = *(*(v166 + 1800) + 8 * (*(context + 150) % *(v166 + 1780)));
  v324 = *(context + 151);
  v325 = *(v323 + 8);
  if (v324 >= (-1227133513 * ((*(v323 + 16) - v325) >> 3)))
  {
    if (dword_280B9A880 < 3)
    {
      goto LABEL_539;
    }

    v204 = "mpt_rc: frame_stats_array size exceeding gop_size for frame %d\n";
    fprintf(*MEMORY[0x277D85DF8], "mpt_rc: frame_stats_array size exceeding gop_size for frame %d\n");
LABEL_528:
    v448 = v168;
    v203 = *v168;
    goto LABEL_529;
  }

  v326 = context[648];
  if (v326 > 4)
  {
    if (v324)
    {
      goto LABEL_534;
    }

    if (dword_280B9A880 <= 2)
    {
      goto LABEL_539;
    }

    v204 = "mpt_rc: Empty frame_stats_array for non-RC frame %d\n";
    fprintf(*MEMORY[0x277D85DF8], "mpt_rc: Empty frame_stats_array for non-RC frame %d\n");
    goto LABEL_528;
  }

  if (v324)
  {
    if (dword_280B9A880 > 2)
    {
      v204 = "mpt_rc: Non-empty frame_stats_array for RC frame %d\n";
      fprintf(*MEMORY[0x277D85DF8], "mpt_rc: Non-empty frame_stats_array for RC frame %d\n");
      goto LABEL_528;
    }

LABEL_539:
    v69 = 4294954385;
    goto LABEL_669;
  }

LABEL_534:
  *&__lk[15] = 0;
  *&__lk[7] = 0;
  v327 = *(context + 163);
  v328 = *(context + 164);
  v329 = *(context + 792);
  v330 = *(v166 + 536);
  v331 = v325 + 56 * v324;
  *v331 = 1;
  *(v331 + 4) = v293;
  *(v331 + 8) = v329;
  *(v331 + 16) = v330;
  *(v331 + 24) = v328;
  *(v331 + 28) = v327;
  *(v331 + 32) = v326;
  *(v331 + 33) = *__lk;
  *(v331 + 48) = 0;
  ++*v323;
  std::mutex::lock((v323 + 40));
  ++*(v323 + 32);
  std::mutex::unlock((v323 + 40));
  if (v326 <= 4)
  {
    if (v326 >= 3)
    {
      v332 = *(v166 + 653);
    }

    else
    {
      v332 = 1;
    }

    *(v166 + 649) = v332 & 1;
    v333 = *(*(context + 7) + 9);
    v334 = *(*(context + 5) + 2097);
    v335 = v333 + ((*(context + 1629) + 0.5) - v333 - 26) + 26;
    if (v335 >= 51)
    {
      v336 = 51;
    }

    else
    {
      v336 = v333 + ((*(context + 1629) + 0.5) - v333 - 26) + 26;
    }

    if ((v335 + v334 < 0) ^ __OFADD__(v335, v334) | (v335 + v334 == 0))
    {
      v337 = -v334;
    }

    else
    {
      v337 = v336;
    }

    *(v166 + 584) = v337;
    if (!v327)
    {
      *(v166 + 1792) = v337;
    }

    *&v454 = v337;
    HIDWORD(v454) = v327;
    v455 = v326;
    if (*(v166 + 488) == 2)
    {
      ++*(v166 + 480);
      *(v166 + 488) = 1;
      sub_2774BBAF4(v166 + 448);
    }

    sub_2774BBB48((v166 + 448), &v454);
  }

  v70 = context;
LABEL_553:
  if (*(v70 + 817) != 1)
  {
    goto LABEL_624;
  }

  v338 = *(context + 380);
  v339 = *(context + 381);
  v340 = *(v339 + 504);
  v341 = v339 + 8 * *(v339 + 44);
  v342 = (v341 + 54);
  v343 = (v341 + 52);
  v344 = v340 == 0;
  if (v340)
  {
    v345 = v342;
  }

  else
  {
    v345 = v343;
  }

  v346 = *v345;
  if (v344)
  {
    v343 = v342;
  }

  v347 = *v343;
  v348 = *(v338 + 6548);
  v349 = *(context + 1596) >= 0x14u ? 40 : 38;
  v350 = *(context + 1594);
  if (v350 && (v351 = *(context + 1595)) != 0)
  {
    v352 = 0.5;
    v353 = (*(v338 + 6516) + 0.5);
    v354 = v349 - v353;
    if (v354 >= 5)
    {
      v354 = 5;
    }

    v355 = v354 & ~(v354 >> 31);
    *(context + 1587) = v355;
    v356 = v351;
    v357 = v350;
    v358 = -v355 / 6.0;
    v359 = v351 / v350 * (1.0 - exp2f(v358));
    if (v359 > 0.0)
    {
      v352 = -0.5;
    }

    v360 = v359 + 1.0;
    v361 = log2f(v360);
    v362 = (v352 + (v361 * -6.0)) & ((v352 + (v361 * -6.0)) >> 31);
    if (v362 <= -5)
    {
      v362 = -5;
    }

    *(context + 1586) = v362;
    if (v362 + v353 <= 21)
    {
      if (v353 < 23)
      {
        *(context + 793) = 0;
      }

      else
      {
        v363 = 22 - v353;
        if (v353 == 27 || (22 - v353) < 0xFFFFFFFB)
        {
          v363 = -5;
        }

        *(context + 1586) = v363;
        v364 = -v363 / 6.0;
        v365 = v357 / v356 * (1.0 - exp2f(v364));
        if (v365 <= 0.0)
        {
          v366 = 0.5;
        }

        else
        {
          v366 = -0.5;
        }

        v367 = v365 + 1.0;
        v368 = (v366 + (log2f(v367) * -6.0));
        if (v368 >= 5)
        {
          v368 = 5;
        }

        *(context + 1587) = v368 & ~(v368 >> 31);
      }
    }
  }

  else
  {
    *(context + 793) = 0;
  }

  if (v348 < 1 || v347 < 1)
  {
    goto LABEL_624;
  }

  v369 = 0;
  v370 = 0;
  v371 = (*(v338 + 6568) * v347);
  v372 = (*(v338 + 6564) * v346);
  *a6.i32 = v371;
  a7.i64[0] = 0;
  v373.i64[0] = 0x8000000080000000;
  v373.i64[1] = 0x8000000080000000;
  v374 = (*(v338 + 6556) * v346) - ((v372 * 0.4) * 0.5);
  v375 = v374 & ~(v374 >> 31);
  v376 = (*(v338 + 6560) * v347) - (*vbslq_s8(v373, a7, a6).i32 * 0.5);
  v377 = v376 & ~(v376 >> 31);
  v378 = v375 + (v372 * 1.4);
  v379 = v377 + v371;
  v380 = -v375;
  while (2)
  {
    if (v346 < 1)
    {
      goto LABEL_623;
    }

    v381 = v369 | 4;
    v382 = v376 < (v369 | 4);
    if ((v369 | 4) - v377 >= 0)
    {
      v383 = (v369 | 4) - v377;
    }

    else
    {
      v383 = v377 - (v369 | 4);
    }

    v384 = (v369 | 4) - v377 - v371;
    if (v384 < 0)
    {
      v384 = v371 - ((v369 | 4) - v377);
    }

    if (v384 >= v383)
    {
      v384 = v383;
    }

    if (v381 > v379)
    {
      ++v382;
    }

    v385 = 3 * v382;
    v386 = *(context + 794);
    v387 = v370;
    v388 = 4;
    while (2)
    {
      if (v374 < v388 && v388 < v378 && v376 < v381 && v381 < v379)
      {
        goto LABEL_600;
      }

      v390 = v380 + v388;
      if (v380 + v388 < 0)
      {
        v390 = -v390;
      }

      v391 = v388 - v378;
      if (v388 - v378 < 0)
      {
        v391 = v378 - v388;
      }

      if (v391 < v390)
      {
        v390 = v391;
      }

      if (v374 >= v388)
      {
        v392 = v385;
      }

      else
      {
        v392 = v385 + 1;
      }

      if (v388 > v378)
      {
        ++v392;
      }

      if (v392 > 8)
      {
LABEL_600:
        v389 = *(context + 1586);
      }

      else
      {
        v393 = 1 << v392;
        if ((v393 & 0x145) != 0)
        {
          v390 = sqrt((v384 * v384 + v390 * v390));
        }

        else if ((v393 & 0x28) == 0)
        {
          v390 = v384;
          if ((v393 & 0x82) == 0)
          {
            goto LABEL_600;
          }
        }

        v394 = 0.0;
        if (v390 <= 16)
        {
          v394 = vcvtd_n_f64_u32(16 - v390, 4uLL);
          if (v394 >= 1.0)
          {
            goto LABEL_600;
          }
        }

        v389 = (v394 * *(context + 1586)) + ((1.0 - v394) * *(context + 1587));
      }

      *(v386 + 4 * v387) = v389;
      v395 = v387 + 1;
      v396 = v388 + 4;
      v388 += 8;
      ++v387;
      if (v396 < v346)
      {
        continue;
      }

      break;
    }

    v370 = v395;
LABEL_623:
    v369 += 8;
    if (v369 < v347)
    {
      continue;
    }

    break;
  }

LABEL_624:
  v397 = v441;
  v398 = context;
  if (*(v441 + 492) >= 1)
  {
    v451 = *(context + 1414);
    if (v451)
    {
      v399 = *(context + 1387);
      if (v399 < 1)
      {
        goto LABEL_646;
      }

      v400 = 0;
      v401 = 0;
      v402 = *(context + 380);
      v403 = *(v402 + 576);
      v447 = (*(v402 + 6516) + 0.5);
      v449 = v403[493];
      v404 = -6 * v403[650] + 48;
      v445 = v403[484];
      v405 = *(context + 201);
      v406 = v403[538] - v405;
      v407 = 1 << v405;
      v408 = *(context + 742);
      v409 = *(context + 1386);
      do
      {
        if (v409 >= 1)
        {
          v410 = 0;
          do
          {
            v411 = sub_2774A5864((v398 + 800), v410, v401, *(v398 + 804), v409, *(v398 + 5548), v449);
            if (*(v398 + 817) == 1)
            {
              v400 = sub_2774A5EF0(v398 + 800, v410, v401, *(v398 + 804));
            }

            v412 = sub_2774A5FC0(v410, v401, v406, (v400 + v447), v411, v451, (v403 + 360), v398 + 800);
            v413 = v412;
            if (v445)
            {
              v398 = context;
              v414 = *(context + 201);
              v415 = v412 + *(*(*(*(context + 380) + 576) + 10784) + *(*&context[8 * v414 + 6152] + 4 * ((*(context + 1386) + (1 << v414) - 1) >> v414) * (v401 >> v414) + 4 * (v410 >> v414)));
              if (v415 >= 51)
              {
                v416 = 51;
              }

              else
              {
                v416 = v412 + *(*(*(*(context + 380) + 576) + 10784) + *(*&context[8 * v414 + 6152] + 4 * ((*(context + 1386) + (1 << v414) - 1) >> v414) * (v401 >> v414) + 4 * (v410 >> v414)));
              }

              if (v415 <= v404)
              {
                v413 = v404;
              }

              else
              {
                v413 = v416;
              }
            }

            else
            {
              v398 = context;
              LODWORD(v414) = *(context + 201);
              if (v403[487] == 1 && v414 == 4)
              {
                v413 = sub_2774A5C50((context + 800), v410, v401, v412, *(context + 1386), *(*(*(context + 380) + 40) + 2096), *(*(*(context + 380) + 40) + 2097), v404);
                LOBYTE(v414) = 4;
              }
            }

            *(v408 + (v410 >> v414)) = v413;
            v410 += v407;
            v409 = *(v398 + 5544);
          }

          while (v410 < v409);
          v399 = *(v398 + 5548);
        }

        v408 += *(v398 + 808);
        v401 += v407;
      }

      while (v401 < v399);
      v397 = v441;
      if (*(v398 + 5656))
      {
LABEL_646:
        v417 = 0;
        v418 = *(v398 + 804);
        v419 = ~(-1 << v418);
        v420 = ((*(v398 + 5544) + v419) >> v418);
        v421 = (*(v398 + 5548) + v419) >> v418;
        v422 = *(v398 + 808);
        v423 = *(v398 + 5936);
        v424 = 1;
        do
        {
          v425 = v424;
          if (v417 < v421)
          {
            v426 = v417 ^ 1;
            v427 = *(v398 + 6032 + 24 * v417) + 2 * v422 * v417;
            v428 = v423 + v422 * v417;
            if (v425)
            {
              v429 = -1;
            }

            else
            {
              v429 = -v422;
            }

            v430 = v429 + v426;
            do
            {
              v431 = v430;
              v432 = v426;
              if (v426 < v420)
              {
                do
                {
                  *(v427 + 2 * v432) = *(v428 + v432) - *(v428 + v431);
                  ++v432;
                  ++v431;
                }

                while (v420 != v432);
              }

              v428 += v422;
              LODWORD(v417) = v417 + 1;
              v427 += 2 * v422;
            }

            while (v417 != v421);
          }

          v424 = 0;
          v417 = 1;
        }

        while ((v425 & 1) != 0);
      }
    }
  }

  if ((v440 & 2) == 0 || *v436 != 1)
  {
    v69 = sub_27747D084(v398);
    if (v69)
    {
      if (dword_280B9A880 < 3)
      {
        goto LABEL_668;
      }

      fprintf(*MEMORY[0x277D85DF8], "Frame %d: Compress failed\n", *(context + 163));
      v70 = context;
      syslog(27, "Frame %d: Compress failed\n", *(context + 163));
      goto LABEL_669;
    }

    v433 = *(v441 + 10400);
    if (v433)
    {
      sub_2774BC558(v433, context);
    }

LABEL_112:
    if ((v440 & 2) == 0)
    {
      v70 = context;
      v71 = v441;
      if (*context)
      {
        ++*(v441 + 10380);
        *(v439 + 2240) = *(v438 + 1348);
        *(v441 + 10436) = *(context + 1635);
        v72 = *(context + 1636);
        goto LABEL_221;
      }

      v108 = *(context + 79);
      v109 = *(context + 77);
      v110 = *(v109 + 192);
      v111 = *(v109 + 208);
      *(v108 + 224) = *(v109 + 224);
      *(v108 + 192) = v110;
      *(v108 + 208) = v111;
      if (*(v441 + 529) >= 1 && !context[648])
      {
        *(*(context + 79) + 40) = 2;
      }

      v69 = sub_27746CB9C(v441, context);
      if (!v69)
      {
        v71 = v441;
        if (*(v441 + 585) == 1)
        {
          v159 = sub_2773FF2CC(v441 + 9968, 1);
          v160 = *v159;
          v161 = v159[1];
          if (v161)
          {
            atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(v441 + 447) & 1) != 0 || (*(v441 + 871) & 1) != 0 || (v162 = *(v441 + 10400)) == 0 || (*(v162 + 1776) & 1) == 0)
          {
            v163 = (v441 + 472);
          }

          else
          {
            v163 = (v162 + 520);
          }

          if (v160 && (*&_Q0 = *v163, *&_Q0 = *v163, v164 = *(v441 + 10424), *a6.i32 = v164, a7.i32[0] = 1169915904, *&_Q0 = 6000.0 / *&_Q0, *&_Q0 <= v164))
          {
            v234 = *(v441 + 528);
            if (v234 < 5)
            {
              v246 = *(context + 79);
              v247 = 1000 * *(v246 + 16) / *(v246 + 32) - 1000 * *(v160 + 16) / *(v160 + 32);
              v248 = *(v441 + 10428);
              v249 = v164 / (5 - v234);
              v71 = v441;
              if (v247 + v248 <= v249)
              {
                *(v246 + 36) = 0;
              }

              else
              {
                *(v246 + 36) = 1;
                *(v441 + 10428) = v248 - v249 + v247;
              }
            }

            else
            {
              if (dword_280B9A880 >= 4)
              {
                v235 = MEMORY[0x277D85DF8];
                fwrite("Warning, frame acknowledgement not working properly!!!\n", 0x37uLL, 1uLL, *MEMORY[0x277D85DF8]);
                syslog(28, "Warning, frame acknowledgement not working properly!!!\n");
                if (dword_280B9A880 >= 4)
                {
                  fprintf(*v235, "Max # of references: %d, # of most recent STRs for prediction: %d.\n", 6, *(v441 + 528));
                  syslog(28, "Max # of references: %d, # of most recent STRs for prediction: %d.\n", 6, *(v441 + 528));
                  if (dword_280B9A880 >= 4)
                  {
                    v236 = 6 - v234;
                    fprintf(*v235, "Only %d extra refs left for acknowledgement, too few (minimal 2 are needed)\n", v236);
                    syslog(28, "Only %d extra refs left for acknowledgement, too few (minimal 2 are needed)\n", v236);
                  }
                }
              }

              v71 = v441;
              v237 = sub_2773FF2CC(v441 + 9968, 1);
              v238 = *(context + 79);
              if (*v237)
              {
                *(v238 + 36) = 0;
              }

              else
              {
                *(v238 + 36) = 1;
              }
            }
          }

          else
          {
            *(*(context + 79) + 36) = 1;
            v71 = v441;
          }

          if (v161)
          {
            sub_2773CC26C(v161);
          }
        }

        else
        {
          *(*(context + 79) + 36) = 0;
        }

        v72 = 0;
        *(v439 + 2240) = 0;
        *(v71 + 10436) = 0;
        v70 = context;
LABEL_221:
        *(v71 + 10440) = v72;
        if (*(v70 + 648) <= 2u)
        {
          v69 = 0;
          *(v70 + 848) = *(v70 + 652);
          goto LABEL_669;
        }

        goto LABEL_223;
      }

      v70 = context;
      if (dword_280B9A880 < 3)
      {
        goto LABEL_669;
      }

LABEL_660:
      fprintf(*MEMORY[0x277D85DF8], "Frame %d: ManageDPB failed\n", *(context + 163));
      v70 = context;
      syslog(27, "Frame %d: ManageDPB failed\n", *(context + 163));
      goto LABEL_669;
    }

    v70 = context;
    if (context[596])
    {
LABEL_223:
      v69 = 0;
      goto LABEL_669;
    }

    v69 = sub_27746CB9C(v441, context);
    if (v69)
    {
      if (dword_280B9A880 < 3)
      {
        goto LABEL_668;
      }

      goto LABEL_660;
    }

    v69 = sub_27746CCA8(v441, v437);
    if (!v69 || dword_280B9A880 < 3)
    {
      goto LABEL_668;
    }

LABEL_202:
    fwrite("Unable to find free FrameEnc for MPT encode!!\n", 0x2EuLL, 1uLL, *MEMORY[0x277D85DF8]);
    syslog(27, "Unable to find free FrameEnc for MPT encode!!\n");
    v70 = context;
    goto LABEL_669;
  }

  v69 = sub_27746CB9C(v397, v398);
  if (!v69)
  {
    v69 = sub_27746CCA8(v441, v437);
    if (!v69)
    {
      dispatch_group_async_f(*(v441 + 9912), *(v441 + 9840), context, sub_27746CD48);
      goto LABEL_670;
    }

    if (dword_280B9A880 < 3)
    {
      goto LABEL_668;
    }

    goto LABEL_202;
  }

  if (dword_280B9A880 >= 3)
  {
    goto LABEL_660;
  }

LABEL_668:
  v70 = context;
LABEL_669:
  sub_27747F894(v70, v69, *&_Q0, *a6.i64, *a7.i8);
LABEL_670:
  if (*(&v453 + 1))
  {
    sub_2773CC26C(*(&v453 + 1));
  }

  if (!v69)
  {
    *(v441 + 224) = 0;
  }

  return v69;
}

void sub_27746CB44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_2773CC26C(a28);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_27746CB9C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 648))
  {
    sub_2773FF4D4(a1 + 9968, (a2 + 3064));
    sub_2773FF468(a1 + 9968);
  }

  else
  {
    v4 = (a1 + 10008);
    v5 = 17;
    do
    {
      v6 = *v4;
      *(v4 - 1) = 0;
      *v4 = 0;
      if (v6)
      {
        sub_2773CC26C(v6);
      }

      v4 += 2;
      --v5;
    }

    while (v5);
    *(a1 + 10376) = *(a2 + 652);
    *(a1 + 10428) = 0;
  }

  v7 = *(a2 + 632);
  *(v7 + 43) = 1;
  if (!*(v7 + 40))
  {
    return 0;
  }

  result = sub_2773FF3B8(a1 + 9968, *(a2 + 632), *(a2 + 640));
  if (!result)
  {
    v9 = 0;
    v10 = *(a2 + 632);
    v11 = *(v10 + 1024);
    v12 = *(v10 + 40);
    for (i = a1 + 10000; !*i || *(*i + 1024) != v11; i += 16)
    {
      if (++v9 == 17)
      {
        return 0;
      }
    }

    result = 0;
    *(a1 + v9 + 10272) = v12;
  }

  return result;
}

uint64_t sub_27746CCA8(uint64_t a1, int a2)
{
  v4 = *(a1 + 9920);
  dispatch_semaphore_wait(*(a1 + 9832), 0xFFFFFFFFFFFFFFFFLL);
  std::mutex::lock((a1 + 9848));
  for (i = *(a1 + 9792); ; i += 8)
  {
    if (i == *(a1 + 9800))
    {
      v7 = 4294954385;
      goto LABEL_7;
    }

    if (!atomic_load((*i + 588)))
    {
      break;
    }
  }

  v7 = 0;
  v8 = *(v4 + 8 * a2);
  *(v4 + 8 * a2) = *i;
  *i = v8;
LABEL_7:
  std::mutex::unlock((a1 + 9848));
  return v7;
}

void sub_27746CD48(uint64_t a1)
{
  v2 = sub_27747D084(a1);
  if (v2 && dword_280B9A880 >= 3)
  {
    fprintf(*MEMORY[0x277D85DF8], "Frame %d: Compress failed\n", *(a1 + 652));
    syslog(27, "Frame %d: Compress failed\n", *(a1 + 652));
  }

  sub_27747F894(a1, v2, v3, v4, v5);
}

void sub_27746CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 9848));
  if (a3)
  {
    atomic_store(3u, (a3 + 588));
    *(a3 + 592) = a2;
    if (*(a1 + 9824))
    {
      v8 = *(a1 + 9792);
      v9 = *(a1 + 9800);
      v10 = 0x7FFFFFFF;
      if (v8 == v9)
      {
        goto LABEL_16;
      }

      do
      {
        v11 = atomic_load(*v8 + 147);
        if (v11 >= 2 && *(*v8 + 146) < v10)
        {
          v10 = *(*v8 + 146);
        }

        ++v8;
      }

      while (v8 != v9);
LABEL_12:
      v8 = *(a1 + 9792);
      v9 = *(a1 + 9800);
LABEL_16:
      while (v8 != v9)
      {
        v14 = atomic_load(*v8 + 147);
        if (v14 == 3 && *(*v8 + 146) == v10)
        {
          sub_277480098(*v8, *(a1 + 10448), *(a1 + 10456));
          dispatch_semaphore_signal(*(a1 + 9832));
          ++v10;
          goto LABEL_12;
        }

        ++v8;
      }

      dispatch_semaphore_signal(*(a1 + 9824));
    }

    else
    {
      sub_277480098(a3, *(a1 + 10448), *(a1 + 10456));
    }
  }

  else
  {
    v12 = *(a1 + 10448);
    v13 = *(a1 + 10456);
    v15 = 0;
    v16 = 0;
    v12(v13, a4, a2, 0, 0, 0, &v15);
    if (v16)
    {
      sub_2773CC26C(v16);
    }
  }

  std::mutex::unlock((a1 + 9848));
}

uint64_t sub_27746CF78(uint64_t a1, unint64_t a2, const char *a3, int a4)
{
  v10 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x10uLL, "%d", a4);
  v8 = 0;
  return sub_27744140C(a1 + 360, a2, a3, __str, 0xFFFFFFFFLL, &v8);
}

uint64_t sub_27746D014(uint64_t a1, unint64_t a2, const char *a3, double a4)
{
  v10 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x10uLL, "%f", a4);
  v8 = 0;
  return sub_27744140C(a1 + 360, a2, a3, __str, 0xFFFFFFFFLL, &v8);
}

uint64_t sub_27746D0B0(uint64_t a1, uint64_t a2, char a3)
{
  *a2 = 0;
  *(a2 + 2) = 1;
  result = sub_2774654F4(a2 + 4, a1 + 360);
  if (result)
  {
    return result;
  }

  *(a2 + 200) = a3;
  v7 = *(a1 + 656);
  *(a2 + 201) = v7;
  *(a2 + 222) = *(a1 + 650) - 8;
  *(a2 + 223) = *(a1 + 651) - 8;
  if (*(a1 + 529) <= 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 12;
  }

  *(a2 + 224) = v8;
  *(a2 + 225) = 0;
  v9 = *(a2 + 1);
  v10 = a2 + v9;
  *(v10 + 226) = *(*(a1 + 9736) + v9 + 203);
  *(v10 + 233) = *(*(a1 + 9736) + v9 + 210);
  *(a2 + 4 * v9 + 240) = 0;
  v11 = *(a1 + 537);
  v12 = v11 - 3;
  *(a2 + 268) = v11 - 3;
  *(a2 + 269) = *(a1 + 538) - v11;
  v13 = *(a1 + 539);
  *(a2 + 270) = v13 - 2;
  *(a2 + 271) = *(a1 + 540) - v13;
  *(a2 + 272) = *(a1 + 542);
  *(a2 + 273) = *(a1 + 541);
  *(a2 + 274) = *(a1 + 8136) != 0;
  *(a2 + 276) = 0;
  *(a2 + 277) = *(a1 + 572) != 0;
  *(a2 + 278) = 0;
  if (*(a1 + 952) == 1)
  {
    v14 = *(a1 + 7868) + *(a1 + 7872);
  }

  else
  {
    v14 = *(a1 + 528);
  }

  *(a2 + 288) = v14;
  *(a2 + 320) = *(a1 + 529) > 0;
  *(a2 + 396) = *(a1 + 583);
  *(a2 + 397) = 0;
  v15 = *(a1 + 772);
  *(a2 + 1984) = v15;
  v16 = *(a1 + 776);
  *(a2 + 1986) = v16;
  v17 = *(a1 + 760);
  *(a2 + 1991) = v17;
  v18 = *(a1 + 764);
  *(a2 + 1992) = v18;
  v19 = *(a1 + 766);
  *(a2 + 1993) = v19;
  v20 = *(a1 + 768);
  *(a2 + 1994) = v20;
  v21 = *(a1 + 762);
  *(a2 + 1995) = v21;
  *(a2 + 1996) = v21;
  if (v15 | v16 || (*(a2 + 1988) & 1) != 0 || (*(a2 + 1989) & 1) != 0)
  {
    goto LABEL_11;
  }

  v22 = 1;
  if (*(a2 + 1990) != 5 || (v17 & 1) != 0 || v18 != 2 || v19 != 2 || v20 != 2 || v21)
  {
    goto LABEL_12;
  }

  if ((*(a2 + 1997) & 1) != 0 || (*(a2 + 1998) & 1) != 0 || (*(a2 + 1999) & 1) != 0 || *(a2 + 2000) || *(a2 + 2002) || *(a2 + 2004) || *(a2 + 2006) || (*(a2 + 2008) & 1) != 0 || *(a2 + 2012) || *(a2 + 2016) || (*(a2 + 2020) & 1) != 0 || *(a2 + 2024) || (*(a2 + 2028) & 1) != 0 || (*(a2 + 2072) & 1) != 0 || (*(a2 + 2073) & 1) != 0 || (*(a2 + 2074) & 1) != 0 || (*(a2 + 2075) & 1) != 0 || *(a2 + 2076) || *(a2 + 2080) || *(a2 + 2084) || *(a2 + 2088))
  {
LABEL_11:
    v22 = 1;
  }

  else
  {
    v22 = *(a2 + 2092) != 0;
  }

LABEL_12:
  *(a2 + 398) = v22;
  *(a2 + 399) = 0;
  if (*(a1 + 481) > 1u)
  {
    goto LABEL_27;
  }

  v23 = *(a1 + 928);
  v24 = *(a1 + 472) * v23 + 0.5;
  v25 = *(a1 + 548);
  *(a2 + 2008) = 1;
  *(a2 + 2028) = 1;
  *(a2 + 2012) = v23;
  *(a2 + 2016) = v24;
  *(a2 + 2032) = 1;
  *(a2 + 2039) = 0;
  *(a2 + 2042) = 5911;
  *(a2 + 2044) = 23;
  if (v9)
  {
    if (dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "DoVi supports only 1 sublayer. But it requres %d.\n", v9 + 1);
      syslog(27, "DoVi supports only 1 sublayer. But it requres %d.\n", *(a2 + 1) + 1);
    }

    return 4294954387;
  }

  v26 = 40 * v25;
  v27 = 4 * v25;
  sub_277467434((a2 + 2048), 1uLL);
  v28 = 0;
  v29 = *(a2 + 2048);
  v30 = __PAIR64__(v26, v27);
  v31 = -1;
  do
  {
    v32 = v29 + v28;
    *v32 = 257;
    *(v32 + 6) = 0;
    v34 = *(v29 + v28 + 8);
    v33 = *(v29 + v28 + 16);
    if (v33 == v34)
    {
      if (*(v32 + 24) == v33)
      {
        sub_277467788(1uLL);
      }

      *v33 = 0;
      *(v33 + 8) = 0;
      *(v33 + 16) = 0;
      v35 = v33 + 20;
    }

    else
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v33 - v34) >> 2) < 2)
      {
        goto LABEL_24;
      }

      v35 = v34 + 20;
    }

    *(v32 + 16) = v35;
LABEL_24:
    v29 = *(a2 + 2048);
    v36 = *(v29 + v28 + 8);
    v30 = vmin_s32(vdup_n_s32(1100 * dword_27750EAA8[3 * *(a2 + 156) - 3 + *(a2 + 163)]), v30);
    *v36 = vadd_s32(vshl_s32(v30, 0xFFFFFFFCFFFFFFFALL), -1);
    v36[1] = 0;
    v36[2].i8[0] = 0;
    ++v31;
    v28 += 56;
  }

  while (v31 < *(a2 + 1));
  v12 = *(a2 + 268);
  v7 = *(a2 + 201);
LABEL_27:
  *(a2 + 212) = 0;
  *(a2 + 214) = 0;
  v37 = 1 << *(a1 + 537);
  v38 = *(a1 + 466);
  v39 = v37 - 1;
  v40 = -v37;
  v41 = (v37 - 1 + v38) & -v37;
  v42 = *(a1 + 468);
  v43 = (v39 + v42) & v40;
  *(a2 + 204) = v41;
  *(a2 + 208) = v43;
  v44 = ((8 << v12) & 0xFFF8) - 1;
  if ((v44 & v38) != 0)
  {
    if ((v7 - 1) >= 2)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    *(a2 + 216) = (v41 - v38) / v45;
    *(a2 + 212) = 1;
  }

  if ((v44 & v42) != 0)
  {
    if (v7 == 1)
    {
      v46 = 2;
    }

    else
    {
      v46 = 1;
    }

    *(a2 + 220) = (v43 - v42) / v46;
    *(a2 + 212) = 1;
  }

  v47 = *(a2 + 222);
  *(a2 + 2096) = v47 + 8;
  *(a2 + 2097) = 6 * v47;
  v48 = *(a2 + 223);
  *(a2 + 2098) = v48 + 8;
  *(a2 + 2099) = 6 * v48;
  *(a2 + 2108) = 16 << *(a2 + 224);
  v49 = v12 + 3;
  *(a2 + 2112) = v49;
  v50 = *(a2 + 269) + v49;
  *(a2 + 2113) = v50;
  v51 = 1 << v50;
  *(a2 + 2117) = 1 << v50;
  v52 = *(a2 + 270) + 2;
  v53 = v52;
  *(a2 + 2114) = v52;
  *(a2 + 2115) = *(a2 + 271) + v52;
  v54 = v7 - 1;
  if ((v52 & 0xFC) == 0)
  {
    v53 = 3;
  }

  v55 = v53 - 1;
  if (v54 >= 2)
  {
    v56 = v52;
  }

  else
  {
    v56 = v55;
  }

  *(a2 + 2116) = v56;
  *(a2 + 2120) = (v41 + v51 - 1) >> v50;
  *(a2 + 2124) = (v43 + v51 - 1) >> v50;
  if (*(a2 + 278) == 1)
  {
    *(a2 + 284) = *(a2 + 279) + 1;
    *(a2 + 285) = *(a2 + 280) + 1;
    v57 = *(a2 + 281) + 3;
    *(a2 + 286) = v57;
    *(a2 + 287) = *(a2 + 282) + v57;
  }

  v58 = *(a2 + 288);
  if (v58)
  {
    sub_277470598((a2 + 296), v58);
    if (*(a2 + 288))
    {
      v59 = 0;
      v60 = a1 + 956;
      v61 = a1 + 964;
      v62 = a1 + 1047;
      v63 = -1;
      do
      {
        v64 = *(a2 + 296) + 248 * v59;
        memset(v105, 0, 41);
        memset(v104, 0, sizeof(v104));
        *(&v105[2] + 10) = 0u;
        *(&v105[3] + 10) = 0u;
        *(&v105[4] + 10) = 0u;
        memset(&v105[5] + 10, 0, 28);
        v65 = (v60 + 108 * v59);
        v66 = v65[88];
        *(v64 + 163) = v66;
        if (v66 == 1)
        {
          *(v64 + 172) = 0;
          *(v64 + 164) = 0;
          v67 = v65[89];
          *(v64 + 168) = v67 < 1;
          if (v67 < 0)
          {
            v67 = -v67;
          }

          *(v64 + 170) = v67 - 1;
          BYTE2(v105[2]) = v65[90];
          v68 = BYTE2(v105[2]);
          if (BYTE2(v105[2]))
          {
            v69 = 0;
            v70 = 0;
            v71 = 0;
            v72 = BYTE2(v105[2]) - 1;
            v73 = v62 + 108 * v59;
            do
            {
              v74 = *(v73 + v70);
              v71 |= (v74 & 1) << v70;
              *(v64 + 172) = v71;
              if ((v74 & 1) == 0)
              {
                v69 |= ((*(v73 + v70) >> 1) & 1) << v70;
                *(v64 + 174) = v69;
              }

              if (v72 == v70)
              {
                *(v105 + v72) = 0;
              }

              else
              {
                *(v105 + v70) = *(v61 + 108 * v63 + 4 * v70);
              }

              ++v70;
            }

            while (v68 != v70);
          }
        }

        else
        {
          *(v64 + 176) = 0;
          *(v64 + 242) = 0;
          v75 = v65[5];
          if (v65[5])
          {
            v76 = 0;
            v77 = 0;
            v78 = (v61 + 108 * v59);
            v79 = v65 + 8;
            v80 = v78;
            v81 = v65[5];
            do
            {
              v82 = *v80++;
              if (v82 < 0)
              {
                *(v64 + 176) = ++v76;
              }

              else
              {
                *(v64 + 177) = ++v77;
              }

              --v81;
            }

            while (v81);
            if (v76)
            {
              v83 = 0;
              v84 = 0;
              v85 = 0;
              do
              {
                v86 = 0;
                v87 = -1;
                v88 = 0x7FFFFFFF;
                do
                {
                  v89 = v78[v86];
                  if (v89 < 0 && v84 < -v89 && v88 > -v89)
                  {
                    v87 = v86;
                    v88 = -v89;
                  }

                  ++v86;
                }

                while (v75 != v86);
                v90 = *&v79[4 * v87];
                *(v64 + 178 + 2 * v83) = v85 + ~v90;
                *(v64 + 242) |= v65[v87 + 72] << v83;
                v84 = -v90;
                ++v83;
                v85 = v90;
              }

              while (v83 != v76);
            }

            if (v77)
            {
              v91 = 0;
              v92 = 0;
              v93 = v65 + 72;
              do
              {
                v94 = 0;
                v95 = -1;
                v96 = 0x7FFFFFFF;
                do
                {
                  v97 = v78[v94];
                  v98 = v97 > v92;
                  v99 = v97 < v96;
                  v100 = !v98 || !v99;
                  if (v98 && v99)
                  {
                    v101 = v94;
                  }

                  else
                  {
                    v101 = v95;
                  }

                  if (v100)
                  {
                    v102 = v96;
                  }

                  else
                  {
                    v102 = v78[v94];
                  }

                  if (v97 >= 1)
                  {
                    v95 = v101;
                    v96 = v102;
                  }

                  ++v94;
                }

                while (v75 != v94);
                v103 = *&v79[4 * v95];
                *(v64 + 210 + 2 * v91) = v103 + ~v92;
                *(v64 + 244) |= v93[v95] << v91++;
                v92 = v103;
              }

              while (v91 != v77);
            }
          }
        }

        sub_27750838C(v64, v104);
        ++v59;
        ++v63;
      }

      while (v59 < *(a2 + 288));
    }
  }

  return 0;
}

uint64_t sub_27746DA28(uint64_t result, uint64_t a2, char a3)
{
  *a2 = a3;
  v4 = *(result + 9752);
  *(a2 + 1) = *(v4 + 200);
  *(a2 + 2) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = *(result + 508);
  *(a2 + 6) = 0;
  v5 = *(result + 530);
  if (v5 <= 1)
  {
    LOBYTE(v5) = 1;
  }

  v6 = v5 - 1;
  *(a2 + 7) = v6;
  *(a2 + 8) = v6;
  *(a2 + 9) = *(result + 488) - 26;
  *(a2 + 10) = 0;
  v7 = *(result + 492);
  *(a2 + 12) = v7 > 0;
  if (v7 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(result + 496);
  }

  *(a2 + 13) = v8;
  *(a2 + 14) = *(result + 490);
  *(a2 + 16) = *(result + 481) < 4u;
  v9 = *(result + 713);
  if (*(result + 712) == 1)
  {
    *(a2 + 17) = 1;
    if ((v9 & 1) == 0)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    *(a2 + 17) = v9;
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = *(result + 594);
LABEL_11:
  *(a2 + 18) = v10 & 1;
  *(a2 + 19) = *(result + 430);
  v11 = (*(result + 544) & 4) != 0;
  *(a2 + 20) = 0;
  *(a2 + 21) = v11;
  *(a2 + 28) = 256;
  if (*(result + 696))
  {
    v12 = 1;
  }

  else
  {
    v12 = *(result + 482);
  }

  *(a2 + 30) = v12 & 1;
  v13 = *(result + 561);
  *(a2 + 31) = *(result + 561) == 0;
  if (v13)
  {
    *(a2 + 32) = 0;
  }

  if (*(result + 648))
  {
    v14 = 1;
  }

  else
  {
    v14 = *(result + 649);
  }

  *(a2 + 1608) = v14 & 1;
  v15 = *(result + 8136);
  *(a2 + 34) = v15 != 0;
  if (v15)
  {
    memcpy((a2 + 40), v15, 0x618uLL);
    operator new[]();
  }

  *(a2 + 1610) = 0;
  *(a2 + 1636) = *(v4 + 2113) - v8;
  return result;
}

void *sub_27746DDAC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[1];
  *a1 = a2;
  a1[1] = a3;
  if (v4)
  {
    sub_2773CC26C(v4);
  }

  return a1;
}

void sub_27746DDF0(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 8 * a2);
      while (v4 != v11)
      {
        sub_27746898C(--v4, 0);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    bzero(a1[1], 8 * v6);
    a1[1] = &v4[v6];
  }
}

void sub_27746E234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v10 = *(v2 + v6);
  if (v10)
  {
    v2[785] = v10;
    operator delete(v10);
  }

  v11 = v2[779];
  if (v11)
  {
    v2[780] = v11;
    operator delete(v11);
  }

  v12 = *(v2 + v8);
  if (v12)
  {
    v2[777] = v12;
    operator delete(v12);
  }

  v13 = v2[769];
  if (v13)
  {
    v2[770] = v13;
    operator delete(v13);
  }

  v14 = v2[766];
  if (v14)
  {
    v2[767] = v14;
    operator delete(v14);
  }

  v15 = v2[763];
  if (v15)
  {
    v2[764] = v15;
    operator delete(v15);
  }

  v16 = v2[760];
  if (v16)
  {
    v2[761] = v16;
    operator delete(v16);
  }

  v17 = 0;
  while (1)
  {
    v18 = v2[v17 + 757];
    if (v18)
    {
      v2[v17 + 758] = v18;
      operator delete(v18);
    }

    v17 -= 3;
    if (v17 == -6)
    {
      v19 = 0;
      while (1)
      {
        v20 = v2[v19 + 751];
        if (v20)
        {
          v2[v19 + 752] = v20;
          operator delete(v20);
        }

        v19 -= 3;
        if (v19 == -9)
        {
          v21 = v2[742];
          if (v21)
          {
            v2[743] = v21;
            operator delete(v21);
          }

          v22 = v2[739];
          if (v22)
          {
            v2[740] = v22;
            operator delete(v22);
          }

          v23 = v2[736];
          if (v23)
          {
            v2[737] = v23;
            operator delete(v23);
          }

          v24 = v2[733];
          if (v24)
          {
            v2[734] = v24;
            operator delete(v24);
          }

          v25 = v2[730];
          if (v25)
          {
            v2[731] = v25;
            operator delete(v25);
          }

          v26 = v2[727];
          if (v26)
          {
            v2[728] = v26;
            operator delete(v26);
          }

          v27 = v2[724];
          if (v27)
          {
            v2[725] = v27;
            operator delete(v27);
          }

          v28 = *v7;
          if (*v7)
          {
            v2[722] = v28;
            operator delete(v28);
          }

          v29 = v2[717];
          if (v29)
          {
            v2[718] = v29;
            operator delete(v29);
          }

          v30 = v2[714];
          if (v30)
          {
            v2[715] = v30;
            operator delete(v30);
          }

          v31 = v2[711];
          if (v31)
          {
            v2[712] = v31;
            operator delete(v31);
          }

          v32 = v2[708];
          if (v32)
          {
            v2[709] = v32;
            operator delete(v32);
          }

          v33 = v2[699];
          if (v33)
          {
            v2[700] = v33;
            operator delete(v33);
          }

          v34 = v2[696];
          if (v34)
          {
            v2[697] = v34;
            operator delete(v34);
          }

          v35 = v2[690];
          if (v35)
          {
            v2[691] = v35;
            operator delete(v35);
          }

          v36 = v2[687];
          if (v36)
          {
            v2[688] = v36;
            operator delete(v36);
          }

          v37 = v2[684];
          if (v37)
          {
            v2[685] = v37;
            operator delete(v37);
          }

          v38 = v2[681];
          if (v38)
          {
            v2[682] = v38;
            operator delete(v38);
          }

          v39 = v2[678];
          if (v39)
          {
            v2[679] = v39;
            operator delete(v39);
          }

          sub_277468E34(va);
          sub_277487CE8(v2 + 601);
          sub_2774A1550((v2 + 383));
          v40 = *v5;
          *v5 = 0;
          if (v40)
          {
            (*(*v40 + 16))(v40);
          }

          v41 = v2[379];
          if (v41)
          {
            sub_2773CC26C(v41);
          }

          sub_2774A15F0(v2 + 126);
          v42 = *v4;
          if (*v4)
          {
            v2[104] = v42;
            operator delete(v42);
          }

          v43 = v2[80];
          if (v43)
          {
            sub_2773CC26C(v43);
          }

          v44 = v2[78];
          if (v44)
          {
            sub_2773CC26C(v44);
          }

          sub_27743F6E4((v2 + 64));
          v45 = v2[8];
          if (v45)
          {
            sub_2773CC26C(v45);
          }

          v46 = v2[6];
          if (v46)
          {
            sub_2773CC26C(v46);
          }

          v47 = v2[4];
          if (v47)
          {
            sub_2773CC26C(v47);
          }

          MEMORY[0x277CAD370](v2, v3);
          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void sub_27746E4F8(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 9752);
  v4 = *(v3 + 269) + 1;
  v5 = &byte_27752F7A0;
  do
  {
    v6 = *v5++;
    v2 += v6;
    --v4;
  }

  while (v4);
  v7 = (*(v3 + 2120) * v2 * *(v3 + 2124));
  *(a1 + 216) = v2;
  *(a1 + 220) = v7;
  v8 = *(a1 + 192);
  v9 = *(a1 + 200);
  v10 = (v9 - v8) >> 5;
  if (v7 <= v10)
  {
    if (v7 >= v10)
    {
      return;
    }

    v15 = v8 + 32 * v7;
  }

  else
  {
    v11 = v7 - v10;
    v12 = *(a1 + 208);
    if (v11 > (v12 - v9) >> 5)
    {
      v13 = v12 - v8;
      if (v13 >> 4 > v7)
      {
        v7 = v13 >> 4;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFE0)
      {
        v14 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v7;
      }

      if (!(v14 >> 59))
      {
        operator new();
      }

      sub_2773C5248();
    }

    bzero(*(a1 + 200), 32 * v11);
    v15 = v9 + 32 * v11;
  }

  *(a1 + 200) = v15;
}

void sub_27746E65C(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 756))
  {
    v11[0] = 0;
    setlocale(0, &unk_277543CEE);
    time(v11);
    localtime_r(v11, v12);
    strftime(v13, 0x14uLL, "%m%d%g_%H%M%S", v12);
    strcpy(v11, "/private/var/logs/mediaserverd/VideoProcessing");
    if (stat(v11, v12))
    {
      mkdir(v11, 0x1FFu);
    }

    snprintf(v12, 0x200uLL, "%s/LrpEnc_%s_FrameStats.txt", v11, v13);
    v10 = 0;
    sub_27744140C(a1 + 360, 0xFE98FF5FC68FF9F7, "logfile", v12, 0xFFFFFFFFLL, &v10);
    snprintf(v12, 0x200uLL, "%s/LrpEnc_%s_Bitstream.hevc", v11, v13);
    v10 = 0;
    sub_27744140C(a1 + 360, 0xAF63E24C8601F6BELL, "o", v12, 0xFFFFFFFFLL, &v10);
    if (*(a1 + 756) >= 2)
    {
      snprintf(v12, 0x200uLL, "%s/LrpEnc_%s_SrcYuv.yuv", v11, v13);
      v2 = fopen(v12, "wb");
      if (!v2 && dword_280B9A880 >= 3)
      {
        fprintf(*MEMORY[0x277D85DF8], "Unable to open file '%s'\n", v12);
        syslog(27, "Unable to open file '%s'\n", v12);
      }

      *(a1 + 256) = v2;
      if (*(a1 + 756) >= 3)
      {
        snprintf(v12, 0x200uLL, "%s/LrpEnc_%s_ReconYuv.yuv", v11, v13);
        v10 = 0;
        sub_27744140C(a1 + 360, 0xAF63EF4C86020CD5, "r", v12, 0xFFFFFFFFLL, &v10);
      }
    }
  }

  v3 = *(a1 + 408);
  if (v3)
  {
    v4 = strrchr(*(a1 + 408), 46);
    if (strcmp(v4, ".heic"))
    {
      if (strcmp(v4, ".heif"))
      {
        v5 = fopen(v3, "wb");
        if (!v5 && dword_280B9A880 >= 3)
        {
          fprintf(*MEMORY[0x277D85DF8], "Unable to open file '%s'\n", v3);
          syslog(27, "Unable to open file '%s'\n", v3);
        }

        *(a1 + 240) = v5;
      }
    }
  }

  v6 = *(a1 + 744);
  if (v6)
  {
    v7 = fopen(*(a1 + 744), "wt");
    if (!v7 && dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unable to open file '%s'\n", v6);
      syslog(27, "Unable to open file '%s'\n", v6);
    }

    *(a1 + 248) = v7;
  }

  v8 = *(a1 + 416);
  if (v8)
  {
    v9 = fopen(*(a1 + 416), "wb");
    if (!v9 && dword_280B9A880 >= 3)
    {
      fprintf(*MEMORY[0x277D85DF8], "Unable to open file '%s'\n", v8);
      syslog(27, "Unable to open file '%s'\n", v8);
    }

    *(a1 + 264) = v9;
  }
}

void sub_27746EA1C(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = &v3[-*a1];
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + a2;
    }
  }

  else
  {
    v6 = a1[2];
    if (v6 - v3 < v5)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2773C0914();
    }

    v7 = &v3[v5];
    bzero(v3, a2 - v4);
    a1[1] = v7;
  }
}

uint64_t sub_27746EB58(uint64_t result, char a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = word_27752F714[v2] >> (10 - a2);
    if (v3 <= v4)
    {
      v5 = word_27752F74C[v2];
      v6 = byte_27752F784[v2];
      v7 = v3;
      v3 = v4 + 1;
      do
      {
        *(*(result + 10760) + 2 * v7) = v5;
        *(*(result + 10784) + v7++) = v6;
      }

      while (v3 != v7);
    }

    else
    {
      v3 = v4 + 1;
    }

    ++v2;
  }

  while (v2 != 28);
  return result;
}

void sub_27746EBD8()
{
  v20 = *MEMORY[0x277D85DE8];
  sub_277470290(&v2, "FrameType");
  LODWORD(v3) = 0;
  sub_277470290(&v4, "CuDepth");
  v5 = 1;
  sub_277470290(v6, "FullQp");
  LODWORD(v7) = 2;
  sub_277470290(v8, "MeanSpatial");
  v9 = 3;
  sub_277470290(v10, "VarSpatial");
  v11 = 4;
  sub_277470290(v12, "MeanTemporal");
  v13 = 5;
  sub_277470290(v14, "VarTemporal");
  v15 = 6;
  sub_277470290(v16, "MeanMv");
  v17 = 7;
  sub_277470290(v18, "VarMv");
  v19 = 8;
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_277470058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char *a41)
{
  sub_277482E14(&STACK[0x3A0]);
  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(STACK[0x4B8]);
  }

  sub_277482E14(&STACK[0x4D0]);
  STACK[0x4D0] = a14;
  sub_2774687C8(&STACK[0x4D0]);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_277470348(a41);
  _Unwind_Resume(a1);
}

_BYTE *sub_277470290(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2773CCBBC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_277470348(char *a1)
{
  if (a1)
  {
    sub_277470348(*a1);
    sub_277470348(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *sub_2774703A4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2773CCBBC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_277470448(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL sub_2774704A4(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

void sub_277470514(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_2773CC26C(v1);
  }
}

void sub_277470524(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288662790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277CAD370);
}

uint64_t *sub_277470598(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = 0xEF7BDEF7BDEF7BDFLL * ((v2 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    v7 = result[2];
    if (0xEF7BDEF7BDEF7BDFLL * ((v7 - v2) >> 3) < v6)
    {
      if (a2 <= 0x108421084210842)
      {
        v8 = 0xEF7BDEF7BDEF7BDFLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x84210842108421)
        {
          v10 = 0x108421084210842;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x108421084210842)
        {
          operator new();
        }

        sub_2773C5248();
      }

      sub_2773C0914();
    }

    v11 = (v2 + 248 * v6);
    do
    {
      *(v2 + 153) = 0uLL;
      v2[8] = 0uLL;
      v2[9] = 0uLL;
      v2[6] = 0uLL;
      v2[7] = 0uLL;
      v2[4] = 0uLL;
      v2[5] = 0uLL;
      v2[2] = 0uLL;
      v2[3] = 0uLL;
      *v2 = 0uLL;
      v2[1] = 0uLL;
      *(v2 + 170) = 0uLL;
      *(v2 + 186) = 0uLL;
      *(v2 + 202) = 0uLL;
      *(v2 + 218) = 0uLL;
      *(v2 + 230) = 0uLL;
      v2 = (v2 + 248);
    }

    while (v2 != v11);
    result[1] = v11;
  }

  else if (!v5)
  {
    result[1] = v3 + 248 * a2;
  }

  return result;
}

uint64_t sub_27747077C(uint64_t a1)
{
  if (*(a1 + 570) == 1)
  {
    *(a1 + 288) = 0;
    *(a1 + 272) = 0;
    if (qword_280A71268 || !mach_timebase_info(&qword_280A71268))
    {
      *(a1 + 288) = 1;
      *(a1 + 280) = mach_absolute_time();
    }
  }

  v2 = *(a1 + 9784);
  if (!v2)
  {
    return 4294954385;
  }

  v3 = *(*v2 + 16);

  return v3();
}

void sub_27747086C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 10808));
  v17 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v8 = *(a1 + 10888);
  v9 = *(a1 + 10880);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 16 * (v8 - v9) - 1;
  }

  v11 = *(a1 + 10904);
  v12 = *(a1 + 10912) + v11;
  if (v10 == v12)
  {
    if (v11 < 0x80)
    {
      v13 = *(a1 + 10896);
      v14 = *(a1 + 10872);
      if (v8 - v9 < (v13 - v14))
      {
        if (v13 != v8)
        {
          operator new();
        }

        operator new();
      }

      if (v13 == v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = (v13 - v14) >> 2;
      }

      sub_27743C088(v15);
    }

    *(a1 + 10904) = v11 - 128;
    v18 = *v9;
    *(a1 + 10880) = v9 + 8;
    sub_27743BF84((a1 + 10872), &v18);
    v9 = *(a1 + 10880);
    v12 = *(a1 + 10912) + *(a1 + 10904);
  }

  v16 = *&v9[(v12 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v12 & 0x7F);
  *v16 = v17;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  ++*(a1 + 10912);
  sub_277469014(a1);

  std::mutex::unlock((a1 + 10808));
}

void sub_277470E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12)
{
  operator delete(v13);
  if (a12)
  {
    operator delete(a12);
  }

  if (*(&a11 + 1))
  {
    sub_2773CC26C(*(&a11 + 1));
  }

  std::mutex::unlock((v12 + 10808));
  _Unwind_Resume(a1);
}

uint64_t sub_277470E90(uint64_t a1, CFDataRef *a2)
{
  v749 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 680);
  if (v4)
  {
    v5 = strnlen(v4, 0x3E9uLL);
  }

  else
  {
    v5 = 0;
  }

  v694 = 0;
  v695 = 0;
  v693 = 0;
  v718 = v726;
  v719 = &v724;
  v712 = &v695;
  v713 = &v694;
  v714 = &v693;
  v715 = v729;
  v6 = __dst;
  v720 = __dst;
  v721 = 0;
  v716 = 0;
  v717 = &v728;
  if (*(a1 + 780) == 1)
  {
    v744 = 0u;
    v743 = 0u;
    v696 = 32;
    sub_2774EE210(a1 + 784, &v743, &v696);
    v7 = off_280B9A8B0(&v730) - 3;
    v729[0] = v7;
    memcpy(__dst, &v730 + 3, v7);
    v6 = &__dst[v7];
    v8 = 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (*(a1 + 812) == 1)
  {
    DWORD2(v743) = 0;
    *&v743 = 0;
    v696 = 12;
    sub_2774EE0A8(a1 + 816, &v743, &v696);
    v9 = off_280B9A8B0(&v730) - 3;
    v729[v8] = v9;
    memcpy(v6, &v730 + 3, v9);
    v6 += v9;
    v7 += v9;
    ++v8;
  }

  if (*(a1 + 824) == 1)
  {
    v743 = 0uLL;
    v731 = 0;
    v730 = 0;
    v732 = 0;
    v734 = 0;
    v736 = 0;
    v735 = 0;
    if (*(a1 + 832))
    {
      if (*(a1 + 836) <= 0xC350u && *(a1 + 838) <= 0xC350u)
      {
        LOWORD(v743) = 334;
        BYTE2(v743) = -108;
        if (!sub_2773FB67C(&v730, &v743 + 1, 12))
        {
          v558 = SHIDWORD(v736);
          v559 = (*(a1 + 832) << -BYTE4(v736)) | v736;
          v560 = v734;
          *v734 = bswap32(v559);
          v561 = v559 << ((v558 + 32) & 0xF8);
          v562 = (v560 + ((v558 + 32) >> 3));
          v563 = v558 & 7;
          v564 = v735;
          if (v562 >= v735)
          {
            v737 = 1;
            v562 = v735;
          }

          v565 = (*(a1 + 836) << (16 - v563)) | v561;
          *v562 = bswap32(v565);
          v566 = (v562 + 2);
          v567 = v565 << 16;
          if (v566 >= v564)
          {
            v737 = 1;
            v566 = v564;
          }

          v568 = *(a1 + 838) << (16 - v563);
          *v566 = bswap32(v568 | v567);
          LODWORD(v736) = v568 << 16;
          v734 = (v566 + 2);
          HIDWORD(v736) = v563;
          if (v566 + 2 >= v564)
          {
            v737 = 1;
            v734 = v564;
          }

          sub_2773FBB94(&v730);
          BYTE3(v743) = v734 - v733 - 1;
        }
      }
    }

    if (v730)
    {
      operator delete(v730);
    }

    v10 = off_280B9A8B0(&v730);
    v729[v8] = v10 - 3;
    memcpy(v6, &v730 + 3, v10 - 3);
    v7 += v729[v8];
    LOBYTE(v8) = v8 + 1;
  }

  v689 = 257;
  v690 = 1;
  v691 = v8;
  v692 = 0;
  v11 = *(a1 + 240);
  if (v11)
  {
    v12 = *(a1 + 680);
    if (v12)
    {
      if (strncmp(*(a1 + 680), "FLS;", 4uLL))
      {
        fwrite("FLS;", 1uLL, 4uLL, v11);
        v12 = *(a1 + 680);
      }

      v13 = strnlen(v12, 0x63uLL);
      fwrite(v12, 1uLL, v13 + 1, v11);
    }
  }

  v731 = 0;
  v730 = 0;
  v732 = 0;
  v734 = 0;
  v736 = 0;
  v735 = 0;
  v14 = sub_2773FB718(&v730, 0x400u);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v16 = *(a1 + 9736);
    *v734 = bswap32(v736);
    v17 = SHIDWORD(v736) + 1;
    v18 = v736 << (v17 & 0xF8);
    v19 = (v734 + (v17 >> 3));
    v734 = v19;
    v20 = v17 & 7;
    HIDWORD(v736) = v20;
    if (v19 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v19 = v735;
    }

    LODWORD(v736) = (32 << (26 - v20)) | v18;
    *v19 = bswap32(v736);
    v21 = SHIDWORD(v736) + 6;
    v22 = v736 << (v21 & 0xF8);
    LODWORD(v736) = v22;
    v23 = (v734 + (v21 >> 3));
    v734 = v23;
    HIDWORD(v736) = v21 & 7;
    if (v23 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v23 = v735;
    }

    *v23 = bswap32(v22);
    v24 = SHIDWORD(v736) + 6;
    v25 = v736 << (v24 & 0xF8);
    v26 = (v734 + (v24 >> 3));
    v734 = v26;
    v27 = v24 & 7;
    HIDWORD(v736) = v27;
    if (v26 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v26 = v735;
    }

    LODWORD(v736) = (1 << (29 - v27)) | v25;
    *v26 = bswap32(v736);
    v28 = SHIDWORD(v736) + 3;
    v29 = v736 << (v28 & 0xF8);
    v30 = (v734 + (v28 >> 3));
    v734 = v30;
    v31 = v28 & 7;
    HIDWORD(v736) = v31;
    if (v30 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v30 = v735;
    }

    LODWORD(v736) = (*(v16 + 196) << (28 - v31)) | v29;
    *v30 = bswap32(v736);
    v32 = SHIDWORD(v736) + 4;
    v33 = v736 << (v32 & 0xF8);
    v34 = (v734 + (v32 >> 3));
    v734 = v34;
    v35 = v32 & 7;
    HIDWORD(v736) = v35;
    if (v34 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v34 = v735;
    }

    LODWORD(v736) = (*(v16 + 197) << (v35 ^ 0x1F)) | v33;
    *v34 = bswap32(v736);
    v36 = SHIDWORD(v736) + 1;
    v37 = v736 << (v36 & 0xF8);
    v38 = (v734 + (v36 >> 3));
    v734 = v38;
    v39 = v36 & 7;
    HIDWORD(v736) = v39;
    if (v38 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v38 = v735;
    }

    LODWORD(v736) = (*(v16 + 198) << (v39 ^ 0x1F)) | v37;
    *v38 = bswap32(v736);
    v40 = SHIDWORD(v736) + 1;
    v41 = v736 << (v40 & 0xF8);
    v42 = (v734 + (v40 >> 3));
    v734 = v42;
    v43 = v40 & 7;
    HIDWORD(v736) = v43;
    if (v42 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v42 = v735;
    }

    LODWORD(v736) = (*(v16 + 199) << (26 - v43)) | v41;
    *v42 = bswap32(v736);
    v44 = SHIDWORD(v736) + 6;
    v45 = v736 << (v44 & 0xF8);
    v46 = (v734 + (v44 >> 3));
    v734 = v46;
    v47 = v44 & 7;
    HIDWORD(v736) = v47;
    if (v46 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v46 = v735;
    }

    LODWORD(v736) = (*(v16 + 200) << (29 - v47)) | v45;
    *v46 = bswap32(v736);
    v48 = SHIDWORD(v736) + 3;
    v49 = v736 << (v48 & 0xF8);
    v50 = (v734 + (v48 >> 3));
    v734 = v50;
    v51 = v48 & 7;
    HIDWORD(v736) = v51;
    if (v50 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v50 = v735;
    }

    LODWORD(v736) = (*(v16 + 201) << (v51 ^ 0x1F)) | v49;
    *v50 = bswap32(v736);
    v52 = SHIDWORD(v736) + 1;
    v53 = v736 << (v52 & 0xF8);
    v54 = (v734 + (v52 >> 3));
    v734 = v54;
    v55 = v52 & 7;
    HIDWORD(v736) = v55;
    if (v54 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v54 = v735;
    }

    LODWORD(v736) = (0xFFFF << (16 - v55)) | v53;
    *v54 = bswap32(v736);
    LODWORD(v736) = v736 << ((BYTE4(v736) + 16) & 0xF8);
    v734 = (v734 + ((SHIDWORD(v736) + 16) >> 3));
    HIDWORD(v736) = BYTE4(v736) & 7;
    if (v734 >= v735)
    {
      v737 = 1;
      v734 = v735;
    }

    sub_27746670C(v16, 1, *(v16 + 200), &v730);
    LODWORD(v736) = (*(v16 + 202) << ~BYTE4(v736)) | v736;
    *v734 = bswap32(v736);
    v56 = SHIDWORD(v736) + 1;
    v57 = v736 << (v56 & 0xF8);
    LODWORD(v736) = v57;
    v58 = (v734 + (v56 >> 3));
    v734 = v58;
    LOBYTE(v59) = v56 & 7;
    HIDWORD(v736) = v56 & 7;
    if (v58 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v58 = v735;
    }

    if (*(v16 + 202))
    {
      v60 = 0;
    }

    else
    {
      v60 = *(v16 + 200);
    }

    do
    {
      v61 = *(v16 + v60 + 203) + 1;
      v62 = __clz(v61);
      v63 = 0x80000000 >> v62;
      v64 = (2 * v62) ^ 0x3F;
      LODWORD(v736) = (((v61 - v63) | v63) << (-v59 - v64)) | v57;
      *v58 = bswap32(v736);
      v65 = SHIDWORD(v736) + v64;
      v66 = v736 << (v65 & 0xF8);
      LODWORD(v736) = v66;
      v67 = (v734 + (v65 >> 3));
      v734 = v67;
      v68 = v65 & 7;
      HIDWORD(v736) = v68;
      if (v67 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v67 = v735;
      }

      v69 = *(v16 + v60 + 210) + 1;
      v70 = __clz(v69);
      v71 = (v69 - (0x80000000 >> v70)) | (0x80000000 >> v70);
      v72 = (2 * v70) ^ 0x3F;
      LODWORD(v736) = (v71 << (-v72 - v68)) | v66;
      *v67 = bswap32(v736);
      v73 = SHIDWORD(v736) + v72;
      v74 = v736 << (v73 & 0xF8);
      LODWORD(v736) = v74;
      v75 = (v734 + (v73 >> 3));
      v734 = v75;
      v76 = v73 & 7;
      HIDWORD(v736) = v76;
      if (v75 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v75 = v735;
      }

      v77 = *(v16 + 220 + 4 * v60) + 1;
      v78 = __clz(v77);
      v79 = (v77 - (0x80000000 >> v78)) | (0x80000000 >> v78);
      v80 = 63 - 2 * v78;
      LODWORD(v736) = (v79 << (-v80 - v76)) | v74;
      *v75 = bswap32(v736);
      v81 = SHIDWORD(v736) + v80;
      v57 = v736 << (v81 & 0xF8);
      LODWORD(v736) = v57;
      v58 = (v734 + (v81 >> 3));
      v734 = v58;
      v59 = v81 & 7;
      HIDWORD(v736) = v59;
      if (v58 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v58 = v735;
      }

      v82 = v60++ >= *(v16 + 200);
    }

    while (!v82);
    LODWORD(v736) = (*(v16 + 248) << (26 - v59)) | v57;
    *v58 = bswap32(v736);
    v83 = SHIDWORD(v736) + 6;
    v84 = v736 << (v83 & 0xF8);
    v85 = (v734 + (v83 >> 3));
    v734 = v85;
    v86 = v83 & 7;
    HIDWORD(v736) = v86;
    if (v85 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v85 = v735;
    }

    v87 = *(v16 + 250) + 1;
    v88 = __clz(v87);
    v89 = 0x80000000 >> v88;
    v90 = (2 * v88) ^ 0x3F;
    LODWORD(v736) = (((v87 - v89) | v89) << (-v86 - v90)) | v84;
    *v85 = bswap32(v736);
    v91 = SHIDWORD(v736) + v90;
    v92 = v736 << (v91 & 0xF8);
    v93 = (v734 + (v91 >> 3));
    v734 = v93;
    v94 = v91 & 7;
    HIDWORD(v736) = v94;
    if (v93 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v93 = v735;
    }

    if (*(v16 + 250))
    {
      v95 = 1;
      do
      {
        v96 = -1;
        do
        {
          LODWORD(v736) = (((*(*(v16 + 256) + 8 * v95) >> ++v96) & 1) << ~v94) | v92;
          *v93 = bswap32(v736);
          v97 = SHIDWORD(v736) + 1;
          v92 = v736 << (v97 & 0xF8);
          LODWORD(v736) = v92;
          v93 = (v734 + (v97 >> 3));
          v734 = v93;
          v94 = v97 & 7;
          HIDWORD(v736) = v94;
          if (v93 >= v735)
          {
            v737 = 1;
            v734 = v735;
            v93 = v735;
          }
        }

        while (v96 < *(v16 + 248));
        v82 = v95++ >= *(v16 + 250);
      }

      while (!v82);
    }

    LODWORD(v736) = (*(v16 + 280) << (v94 ^ 0x1F)) | v92;
    *v93 = bswap32(v736);
    v98 = SHIDWORD(v736) + 1;
    v99 = v98 & 0xF8;
    v100 = (v734 + (v98 >> 3));
    v734 = v100;
    v101 = v98 & 7;
    HIDWORD(v736) = v101;
    if (v100 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v100 = v735;
    }

    v102 = v736 << v99;
    if (*(v16 + 280))
    {
      v103 = *(v16 + 284);
      LODWORD(v736) = (HIWORD(v103) << (16 - v101)) | v102;
      *v100 = bswap32(v736);
      v104 = v736 << ((BYTE4(v736) + 16) & 0xF8);
      v105 = (v734 + ((SHIDWORD(v736) + 16) >> 3));
      v734 = v105;
      v106 = BYTE4(v736) & 7;
      HIDWORD(v736) = BYTE4(v736) & 7;
      if (v105 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v105 = v735;
      }

      LODWORD(v736) = (v103 << (16 - v106)) | v104;
      *v105 = bswap32(v736);
      v107 = v736 << ((BYTE4(v736) + 16) & 0xF8);
      v108 = (v734 + ((SHIDWORD(v736) + 16) >> 3));
      v734 = v108;
      v109 = BYTE4(v736) & 7;
      HIDWORD(v736) = BYTE4(v736) & 7;
      if (v108 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v108 = v735;
      }

      v110 = *(v16 + 288);
      LODWORD(v736) = (HIWORD(v110) << (16 - v109)) | v107;
      *v108 = bswap32(v736);
      v111 = v736 << ((BYTE4(v736) + 16) & 0xF8);
      v112 = (v734 + ((SHIDWORD(v736) + 16) >> 3));
      v734 = v112;
      v113 = BYTE4(v736) & 7;
      HIDWORD(v736) = BYTE4(v736) & 7;
      if (v112 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v112 = v735;
      }

      LODWORD(v736) = (v110 << (16 - v113)) | v111;
      *v112 = bswap32(v736);
      v114 = v736 << ((BYTE4(v736) + 16) & 0xF8);
      v115 = (v734 + ((SHIDWORD(v736) + 16) >> 3));
      v734 = v115;
      v116 = BYTE4(v736) & 7;
      HIDWORD(v736) = BYTE4(v736) & 7;
      if (v115 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v115 = v735;
      }

      LODWORD(v736) = (*(v16 + 292) << (v116 ^ 0x1F)) | v114;
      *v115 = bswap32(v736);
      v117 = SHIDWORD(v736) + 1;
      v118 = v117 & 0xF8;
      v119 = (v734 + (v117 >> 3));
      v734 = v119;
      v120 = v117 & 7;
      HIDWORD(v736) = v120;
      if (v119 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v119 = v735;
      }

      v121 = v736 << v118;
      if (*(v16 + 292) == 1)
      {
        v122 = *(v16 + 296) + 1;
        v123 = __clz(v122);
        v124 = (v122 - (0x80000000 >> v123)) | (0x80000000 >> v123);
        v125 = 63 - 2 * v123;
        LODWORD(v736) = (v124 << (-v120 - v125)) | v121;
        *v119 = bswap32(v736);
        v126 = SHIDWORD(v736) + v125;
        v121 = v736 << (v126 & 0xF8);
        v119 = (v734 + (v126 >> 3));
        v734 = v119;
        v120 = v126 & 7;
        HIDWORD(v736) = v120;
        if (v119 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v119 = v735;
        }
      }

      v127 = *(v16 + 300) + 1;
      v128 = __clz(v127);
      v129 = 0x80000000 >> v128;
      v130 = (2 * v128) ^ 0x3F;
      LODWORD(v736) = (((v127 - v129) | v129) << (-v120 - v130)) | v121;
      *v119 = bswap32(v736);
      v131 = SHIDWORD(v736) + v130;
      v102 = v736 << (v131 & 0xF8);
      v100 = (v734 + (v131 >> 3));
      v734 = v100;
      v101 = v131 & 7;
      HIDWORD(v736) = v101;
      if (v100 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v100 = v735;
      }
    }

    LODWORD(v736) = (*(v16 + 302) << (v101 ^ 0x1F)) | v102;
    *v100 = bswap32(v736);
    v132 = SHIDWORD(v736) + 1;
    v133 = v736 << (v132 & 0xF8);
    LODWORD(v736) = v133;
    v134 = (v734 + (v132 >> 3));
    v734 = v134;
    v135 = v132 & 7;
    HIDWORD(v736) = v135;
    if (v134 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v134 = v735;
    }

    if (*(v16 + 302) == 1)
    {
      while (v135)
      {
        LODWORD(v736) = (0x80000000 >> v135) | v133;
        *v134 = bswap32(v736);
        v136 = SHIDWORD(v736) + 1;
        v133 = v736 << (v136 & 0xF8);
        LODWORD(v736) = v133;
        v134 = (v734 + (v136 >> 3));
        v734 = v134;
        v135 = v136 & 7;
        HIDWORD(v736) = v135;
        if (v134 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v134 = v735;
        }
      }

      if (*(v16 + 199))
      {
        v137 = 31;
        if (*(v16 + 197) == 1)
        {
          sub_27746670C(v16, 0, *(v16 + 200), &v730);
          v133 = v736;
          v134 = v734;
          v137 = 31 - BYTE4(v736);
        }
      }

      else
      {
        v137 = 31;
      }

      LODWORD(v736) = (*(v16 + 304) << v137) | v133;
      *v134 = bswap32(v736);
      v138 = SHIDWORD(v736) + 1;
      v139 = v736 << (v138 & 0xF8);
      v140 = (v734 + (v138 >> 3));
      v734 = v140;
      LOBYTE(v141) = v138 & 7;
      HIDWORD(v736) = v138 & 7;
      if (v140 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v140 = v735;
      }

      LODWORD(v142) = 0;
      for (i = 0; i != 16; ++i)
      {
        v144 = (*(v16 + 306) >> i) & 1;
        LODWORD(v736) = (v144 << (v141 ^ 0x1F)) | v139;
        *v140 = bswap32(v736);
        v145 = SHIDWORD(v736) + 1;
        v139 = v736 << (v145 & 0xF8);
        LODWORD(v736) = v139;
        v140 = (v734 + (v145 >> 3));
        v734 = v140;
        v141 = v145 & 7;
        HIDWORD(v736) = v141;
        if (v140 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v140 = v735;
        }

        v142 = (v144 + v142);
      }

      if (v142 > *(v16 + 304))
      {
        v146 = 0;
        do
        {
          LODWORD(v736) = (*(v16 + 308 + v146) << (29 - v141)) | v139;
          *v140 = bswap32(v736);
          v147 = SHIDWORD(v736) + 3;
          v139 = v736 << (v147 & 0xF8);
          LODWORD(v736) = v139;
          v140 = (v734 + (v147 >> 3));
          v734 = v140;
          v141 = v147 & 7;
          HIDWORD(v736) = v141;
          if (v140 >= v735)
          {
            v737 = 1;
            v734 = v735;
            v140 = v735;
          }

          ++v146;
        }

        while (v146 < (v142 - *(v16 + 304)));
      }

      LODWORD(v736) = (*(v16 + 356) << (v141 ^ 0x1F)) | v139;
      *v140 = bswap32(v736);
      v148 = SHIDWORD(v736) + 1;
      v149 = v736 << (v148 & 0xF8);
      LODWORD(v736) = v149;
      v150 = (v734 + (v148 >> 3));
      v734 = v150;
      LOBYTE(v151) = v148 & 7;
      HIDWORD(v736) = v148 & 7;
      if (v150 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v150 = v735;
      }

      if (*(v16 + 199))
      {
        v152 = 0;
        v153 = 1;
        do
        {
          if (*(v16 + 356) == 1)
          {
            LODWORD(v736) = (*(v16 + 357 + v153) << (26 - v151)) | v149;
            *v150 = bswap32(v736);
            v154 = SHIDWORD(v736) + 6;
            v149 = v736 << (v154 & 0xF8);
            LODWORD(v736) = v149;
            v150 = (v734 + (v154 >> 3));
            v734 = v150;
            v151 = v154 & 7;
            HIDWORD(v736) = v151;
            if (v150 >= v735)
            {
              v737 = 1;
              v734 = v735;
              v150 = v735;
            }
          }

          if (*(v16 + 304))
          {
            v155 = 1;
          }

          else
          {
            v155 = v142 == 0;
          }

          if (!v155)
          {
            v156 = v16 + 340;
            v157 = v142;
            do
            {
              v158 = *(v156 - 32) + 1;
              LODWORD(v736) = (*(v156 + v152) << (-v151 - v158)) | v149;
              *v150 = bswap32(v736);
              v159 = SHIDWORD(v736) + v158;
              v149 = v736 << (v159 & 0xF8);
              LODWORD(v736) = v149;
              v150 = (v734 + (v159 >> 3));
              v734 = v150;
              v151 = v159 & 7;
              HIDWORD(v736) = v151;
              if (v150 >= v735)
              {
                v737 = 1;
                v734 = v735;
                v150 = v735;
              }

              ++v156;
              --v157;
            }

            while (v157);
          }

          v152 += 16;
          v82 = v153++ >= *(v16 + 199);
        }

        while (!v82);
      }

      LODWORD(v736) = (*(v16 + 359) << (28 - v151)) | v149;
      *v150 = bswap32(v736);
      v160 = SHIDWORD(v736) + 4;
      v161 = v736 << (v160 & 0xF8);
      LODWORD(v736) = v161;
      v162 = (v734 + (v160 >> 3));
      v734 = v162;
      v163 = v160 & 7;
      HIDWORD(v736) = v163;
      if (v162 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v162 = v735;
      }

      if (*(v16 + 199))
      {
        v164 = v16 + 362;
        v165 = 1;
        do
        {
          v166 = 0;
          do
          {
            LODWORD(v736) = (*(v164 + v166) << ~v163) | v161;
            *v162 = bswap32(v736);
            v167 = SHIDWORD(v736) + 1;
            v161 = v736 << (v167 & 0xF8);
            LODWORD(v736) = v161;
            v162 = (v734 + (v167 >> 3));
            v734 = v162;
            v163 = v167 & 7;
            HIDWORD(v736) = v163;
            if (v162 >= v735)
            {
              v737 = 1;
              v734 = v735;
              v162 = v735;
            }

            ++v166;
          }

          while (v165 != v166);
          v168 = *(v16 + 199);
          v164 += 2;
          v82 = v165++ >= v168;
        }

        while (!v82);
        v169 = v168 + 1;
      }

      else
      {
        v169 = 1;
      }

      v170 = 0;
      v706[0] = 0;
      v743 = 0uLL;
      v171 = v16 + 360;
      v172 = v16 + 360;
      do
      {
        v173 = 0;
        v174 = &v743;
        v175 = &v743 + 8 * v170;
        do
        {
          *&v175[4 * v173] = *(v171 + 2 * v170 + v173);
          if (v170)
          {
            v176 = 0;
            v177 = v174;
            do
            {
              if (*(v172 + v176) && *v177)
              {
                *&v175[4 * v173] = 1;
              }

              ++v176;
              v177 = (v177 + 8);
            }

            while (v170 != v176);
          }

          ++v173;
          v174 = (v174 + 4);
        }

        while (v173 != v169);
        ++v170;
        v172 += 2;
      }

      while (v170 != v169);
      v178 = 0;
      v179 = 0;
      v180 = 0;
      LODWORD(v696) = 0;
      v181 = v16 + 357;
      v710[0] = 0;
      v182 = &v743;
      do
      {
        v183 = 0;
        v184 = *(v181 + v178);
        v185 = v182;
        do
        {
          if (*(v171 + v183))
          {
            ++v179;
          }

          v186 = *v185;
          v185 += 2;
          if (v186)
          {
            *(&v696 + 2 * v184 + v180++) = 0;
          }

          ++v183;
        }

        while (v169 != v183);
        *(v706 + v184) = v179;
        *(v710 + v184) = v180;
        ++v178;
        v182 = (v182 + 4);
        v171 += 2;
      }

      while (v178 != v169);
      v187 = 0;
      v188 = 0;
      v189 = 0;
      v708[0] = 0;
      v190 = 1;
      do
      {
        v191 = *(v181 + v187);
        if (!*(v706 + v191))
        {
          v192 = *(v710 + v191);
          if (*(v710 + v191))
          {
            v193 = &v696 + 2 * v191;
            do
            {
              v194 = *v193++;
              v195 = 1 << v194;
              v196 = (v189 & v195) == 0;
              if ((v189 & v195) != 0)
              {
                v195 = 0;
              }

              v189 |= v195;
              if (v196)
              {
                ++v190;
              }

              --v192;
            }

            while (v192);
          }

          *(v708 + v188++) = v190;
        }

        ++v187;
      }

      while (v187 != v169);
      if (v188 > 1)
      {
        v197 = *(v16 + 364) + 1;
        v198 = __clz(v197);
        v199 = (v197 - (0x80000000 >> v198)) | (0x80000000 >> v198);
        v200 = (2 * v198) ^ 0x3F;
        LODWORD(v736) = (v199 << (-v163 - v200)) | v161;
        *v162 = bswap32(v736);
        v201 = SHIDWORD(v736) + v200;
        LODWORD(v736) = v736 << (v201 & 0xF8);
        v734 = (v734 + (v201 >> 3));
        HIDWORD(v736) = v201 & 7;
        if (v734 >= v735)
        {
          v737 = 1;
          v734 = v735;
        }
      }

      v202 = *(v16 + 364);
      if (*(v16 + 364))
      {
        v203 = 0;
        v204 = (v16 + 366);
        do
        {
          if (v188 >= 2)
          {
            LOBYTE(v205) = BYTE4(v736);
            v206 = v736;
            v207 = v708 + 1;
            v208 = v204;
            v209 = v188 - 1;
            v210 = v734;
            do
            {
              v211 = *v207++;
              v212 = 32 - __clz(v211);
              v213 = *v208++;
              LODWORD(v736) = (v213 << (-v205 - v212)) | v206;
              *v210 = bswap32(v736);
              v214 = SHIDWORD(v736) + v212;
              v206 = v736 << (v214 & 0xF8);
              LODWORD(v736) = v206;
              v210 = (v734 + (v214 >> 3));
              v734 = v210;
              v205 = v214 & 7;
              HIDWORD(v736) = v205;
              if (v210 >= v735)
              {
                v737 = 1;
                v734 = v735;
                v210 = v735;
              }

              --v209;
            }

            while (v209);
            v202 = *(v16 + 364);
          }

          ++v203;
          v204 += 2;
        }

        while (v203 < v202);
      }

      LODWORD(v736) = (*(v16 + 369) << ~BYTE4(v736)) | v736;
      *v734 = bswap32(v736);
      v215 = SHIDWORD(v736) + 1;
      v216 = v736 << (v215 & 0xF8);
      v217 = (v734 + (v215 >> 3));
      v734 = v217;
      v218 = v215 & 7;
      HIDWORD(v736) = v218;
      if (v217 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v217 = v735;
      }

      LODWORD(v736) = (*(v16 + 370) << (v218 ^ 0x1F)) | v216;
      *v217 = bswap32(v736);
      v219 = SHIDWORD(v736) + 1;
      v220 = v736 << (v219 & 0xF8);
      v221 = (v734 + (v219 >> 3));
      v734 = v221;
      v222 = v219 & 7;
      HIDWORD(v736) = v222;
      if (v221 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v221 = v735;
      }

      LODWORD(v736) = (*(v16 + 371) << (v222 ^ 0x1F)) | v220;
      *v221 = bswap32(v736);
      v223 = SHIDWORD(v736) + 1;
      v224 = v736 << (v223 & 0xF8);
      v225 = (v734 + (v223 >> 3));
      v734 = v225;
      v226 = v223 & 7;
      HIDWORD(v736) = v226;
      if (v225 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v225 = v735;
      }

      v687 = a2;
      v227 = *(v16 + 372) + 1;
      v228 = __clz(v227);
      v229 = 0x80000000 >> v228;
      v230 = (2 * v228) ^ 0x3F;
      LODWORD(v736) = (((v227 - v229) | v229) << (-v226 - v230)) | v224;
      *v225 = bswap32(v736);
      v231 = SHIDWORD(v736) + v230;
      v232 = v231 & 0xF8;
      v233 = (v734 + (v231 >> 3));
      v734 = v233;
      v234 = v231 & 7;
      HIDWORD(v736) = v234;
      if (v233 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v233 = v735;
      }

      v235 = v736 << v232;
      v680 = *(v16 + 364);
      v682 = *(v16 + 250);
      v236 = v682 + v680 + 1;
      if (v236 > 1)
      {
        v237 = *(v16 + 373) + 1;
        v238 = __clz(v237);
        v239 = (v237 - (0x80000000 >> v238)) | (0x80000000 >> v238);
        v240 = (2 * v238) ^ 0x3F;
        LODWORD(v736) = (v239 << (-v240 - v234)) | v235;
        *v233 = bswap32(v736);
        v241 = SHIDWORD(v736) + v240;
        v242 = v736 << (v241 & 0xF8);
        v243 = (v734 + (v241 >> 3));
        v734 = v243;
        v244 = v241 & 7;
        HIDWORD(v736) = v244;
        if (v243 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v243 = v735;
        }

        LODWORD(v736) = (*(v16 + 374) << (30 - v244)) | v242;
        *v243 = bswap32(v736);
        v245 = SHIDWORD(v736) + 2;
        v235 = v736 << (v245 & 0xF8);
        v233 = (v734 + (v245 >> 3));
        v734 = v233;
        v234 = v245 & 7;
        HIDWORD(v736) = v234;
        if (v233 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v233 = v735;
        }
      }

      v684 = *(v16 + 373);
      v246 = *(v16 + 375) + 1;
      v247 = __clz(v246);
      v248 = (v246 - (0x80000000 >> v247)) | (0x80000000 >> v247);
      v249 = (2 * v247) ^ 0x3F;
      LODWORD(v736) = (v248 << (-v249 - v234)) | v235;
      *v233 = bswap32(v736);
      v250 = SHIDWORD(v736) + v249;
      LODWORD(v736) = v736 << (v250 & 0xF8);
      v734 = (v734 + (v250 >> 3));
      HIDWORD(v736) = v250 & 7;
      if (v734 >= v735)
      {
        v737 = 1;
        v734 = v735;
      }

      v251 = -1;
      do
      {
        LODWORD(v736) = (*(v16 + 386) << (16 - BYTE4(v736))) | v736;
        *v734 = bswap32(v736);
        v252 = BYTE4(v736) + 16;
        v253 = (v734 + ((SHIDWORD(v736) + 16) >> 3));
        v734 = v253;
        v254 = BYTE4(v736) & 7;
        HIDWORD(v736) = BYTE4(v736) & 7;
        if (v253 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v253 = v735;
        }

        LODWORD(v736) = (*(v16 + 388) << (16 - v254)) | (v736 << (v252 & 0xF8));
        *v253 = bswap32(v736);
        v255 = BYTE4(v736) + 16;
        v256 = (v734 + ((SHIDWORD(v736) + 16) >> 3));
        v734 = v256;
        v257 = BYTE4(v736) & 7;
        HIDWORD(v736) = BYTE4(v736) & 7;
        if (v256 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v256 = v735;
        }

        LODWORD(v736) = (*(v16 + 390) << (v257 ^ 0x1F)) | (v736 << (v255 & 0xF8));
        *v256 = bswap32(v736);
        v258 = SHIDWORD(v736) + 1;
        v259 = (v734 + (v258 >> 3));
        v734 = v259;
        LOBYTE(v260) = v258 & 7;
        HIDWORD(v736) = v258 & 7;
        if (v259 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v259 = v735;
        }

        v261 = v736 << (v258 & 0xF8);
        if (*(v16 + 390) == 1)
        {
          LODWORD(v736) = (*(v16 + 391) << (30 - v260)) | v261;
          *v259 = bswap32(v736);
          v262 = SHIDWORD(v736) + 2;
          v263 = (v734 + (v262 >> 3));
          v734 = v263;
          LOBYTE(v260) = v262 & 7;
          HIDWORD(v736) = v262 & 7;
          if (v263 >= v735)
          {
            v737 = 1;
            v734 = v735;
            v263 = v735;
          }

          v264 = v736 << (v262 & 0xF8);
          if (*(v16 + 391) == 3)
          {
            LODWORD(v736) = (*(v16 + 392) << (v260 ^ 0x1F)) | v264;
            *v263 = bswap32(v736);
            v265 = SHIDWORD(v736) + 1;
            v264 = v736 << (v265 & 0xF8);
            v263 = (v734 + (v265 >> 3));
            v734 = v263;
            v260 = v265 & 7;
            HIDWORD(v736) = v260;
            if (v263 >= v735)
            {
              v737 = 1;
              v734 = v735;
              v263 = v735;
            }
          }

          LODWORD(v736) = (*(v16 + 393) << (28 - v260)) | v264;
          *v263 = bswap32(v736);
          v266 = SHIDWORD(v736) + 4;
          v267 = (v734 + (v266 >> 3));
          v734 = v267;
          HIDWORD(v736) = v266 & 7;
          if (v267 >= v735)
          {
            v737 = 1;
            v734 = v735;
            v267 = v735;
          }

          LODWORD(v736) = (*(v16 + 394) << (28 - (v266 & 7))) | (v736 << (v266 & 0xF8));
          *v267 = bswap32(v736);
          v268 = SHIDWORD(v736) + 4;
          v261 = v736 << (v268 & 0xF8);
          v259 = (v734 + (v268 >> 3));
          v734 = v259;
          v260 = v268 & 7;
          HIDWORD(v736) = v260;
          if (v259 >= v735)
          {
            v737 = 1;
            v734 = v735;
            v259 = v735;
          }
        }

        LODWORD(v736) = (*(v16 + 395) << (v260 ^ 0x1F)) | v261;
        *v259 = bswap32(v736);
        v269 = SHIDWORD(v736) + 1;
        LODWORD(v736) = v736 << (v269 & 0xF8);
        v734 = (v734 + (v269 >> 3));
        HIDWORD(v736) = v269 & 7;
        if (v734 >= v735)
        {
          v737 = 1;
          v734 = v735;
        }

        if (*(v16 + 395) == 1)
        {
          sub_2773FBA38(&v730, *(v16 + 396));
          sub_2773FBA38(&v730, *(v16 + 398));
          sub_2773FBA38(&v730, *(v16 + 400));
          sub_2773FBA38(&v730, *(v16 + 402));
        }

        ++v251;
      }

      while (v251 < *(v16 + 375));
      LODWORD(v736) = (*(v16 + 376) << ~BYTE4(v736)) | v736;
      *v734 = bswap32(v736);
      v270 = SHIDWORD(v736) + 1;
      v271 = v736 << (v270 & 0xF8);
      v272 = (v734 + (v270 >> 3));
      v734 = v272;
      v273 = v270 & 7;
      HIDWORD(v736) = v273;
      if (v272 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v272 = v735;
      }

      LODWORD(v736) = (*(v16 + 377) << (v273 ^ 0x1F)) | v271;
      *v272 = bswap32(v736);
      v274 = SHIDWORD(v736) + 1;
      v275 = v736 << (v274 & 0xF8);
      LODWORD(v736) = v275;
      v276 = (v734 + (v274 >> 3));
      v734 = v276;
      v277 = v274 & 7;
      HIDWORD(v736) = v277;
      if (v276 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v276 = v735;
      }

      v278 = *(v16 + 199);
      if (*(v16 + 199))
      {
        v279 = 0;
        v280 = (v16 + 379);
        do
        {
          if (!*(v706 + *(v280 - 21)))
          {
            LODWORD(v736) = (*v280 << ~v277) | v275;
            *v276 = bswap32(v736);
            v281 = SHIDWORD(v736) + 1;
            v275 = v736 << (v281 & 0xF8);
            LODWORD(v736) = v275;
            v276 = (v734 + (v281 >> 3));
            v734 = v276;
            v277 = v281 & 7;
            HIDWORD(v736) = v277;
            if (v276 >= v735)
            {
              v737 = 1;
              v734 = v735;
              v276 = v735;
            }

            v278 = *(v16 + 199);
          }

          ++v280;
          ++v279;
        }

        while (v279 < v278);
      }

      if (v236 + v684 < 2)
      {
        a2 = v687;
      }

      else
      {
        v282 = v682 + v680 + v684;
        v283 = 1;
        a2 = v687;
        do
        {
          LODWORD(v736) = (((*(v16 + 380) >> v283) & 1) << ~v277) | v275;
          *v276 = bswap32(v736);
          v284 = SHIDWORD(v736) + 1;
          v275 = v736 << (v284 & 0xF8);
          LODWORD(v736) = v275;
          v276 = (v734 + (v284 >> 3));
          v734 = v276;
          v277 = v284 & 7;
          HIDWORD(v736) = v277;
          if (v276 >= v735)
          {
            v737 = 1;
            v734 = v735;
            v276 = v735;
          }

          ++v283;
          --v282;
        }

        while (v282);
      }

      v285 = *(v16 + 382) + 1;
      v286 = __clz(v285);
      v287 = 0x80000000 >> v286;
      v288 = (2 * v286) ^ 0x3F;
      LODWORD(v736) = (((v285 - v287) | v287) << (-v277 - v288)) | v275;
      *v276 = bswap32(v736);
      v289 = SHIDWORD(v736) + v288;
      v290 = v736 << (v289 & 0xF8);
      v291 = (v734 + (v289 >> 3));
      v734 = v291;
      v292 = v289 & 7;
      HIDWORD(v736) = v292;
      if (v291 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v291 = v735;
      }

      LODWORD(v736) = (*(v16 + 383) << (v292 ^ 0x1F)) | v290;
      *v291 = bswap32(v736);
      v293 = SHIDWORD(v736) + 1;
      v294 = v736 << (v293 & 0xF8);
      v295 = (v734 + (v293 >> 3));
      v734 = v295;
      v296 = v293 & 7;
      HIDWORD(v736) = v296;
      if (v295 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v295 = v735;
      }

      v297 = *(v16 + 384) + 1;
      v298 = __clz(v297);
      v299 = 0x80000000 >> v298;
      v300 = (2 * v298) ^ 0x3F;
      LODWORD(v736) = (((v297 - v299) | v299) << (-v296 - v300)) | v294;
      *v295 = bswap32(v736);
      v301 = SHIDWORD(v736) + v300;
      v302 = v736 << (v301 & 0xF8);
      v303 = (v734 + (v301 >> 3));
      v734 = v303;
      v304 = v301 & 7;
      HIDWORD(v736) = v304;
      if (v303 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v303 = v735;
      }

      LODWORD(v736) = (*(v16 + 385) << (v304 ^ 0x1F)) | v302;
      *v303 = bswap32(v736);
      v305 = SHIDWORD(v736) + 1;
      v306 = v736 << (v305 & 0xF8);
      v307 = (v734 + (v305 >> 3));
      v734 = v307;
      v308 = v305 & 7;
      HIDWORD(v736) = v308;
      if (v307 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v307 = v735;
      }

      LODWORD(v736) = (*(v16 + 404) << (v308 ^ 0x1F)) | v306;
      *v307 = bswap32(v736);
      v309 = SHIDWORD(v736) + 1;
      LODWORD(v736) = v736 << (v309 & 0xF8);
      v734 = (v734 + (v309 >> 3));
      HIDWORD(v736) = v309 & 7;
      if (v734 >= v735)
      {
        v737 = 1;
        v734 = v735;
      }
    }

    sub_2773FBB94(&v730);
    v15 = off_280B9A8B0(__ptr);
    *(a1 + 10664) += v15;
    v310 = *(a1 + 240);
    if (v310)
    {
      fwrite(__ptr, 1uLL, v15, v310);
    }

    if (*(a1 + 428) == 1)
    {
      sub_277467F14(*(a1 + 9736), *MEMORY[0x277D85DF8]);
    }
  }

  if (v730)
  {
    v731 = v730;
    operator delete(v730);
  }

  v695 = v15;
  v694 = sub_27747586C(a1, v725);
  v731 = 0;
  v730 = 0;
  v732 = 0;
  v734 = 0;
  v736 = 0;
  v735 = 0;
  v311 = sub_2773FB718(&v730, 0x400u);
  if (v311)
  {
    v312 = v311;
  }

  else
  {
    v335 = *(a1 + 9768);
    *v734 = bswap32(v736);
    v336 = SHIDWORD(v736) + 1;
    v337 = v736 << (v336 & 0xF8);
    v338 = (v734 + (v336 >> 3));
    v734 = v338;
    v339 = v336 & 7;
    HIDWORD(v736) = v339;
    if (v338 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v338 = v735;
    }

    LODWORD(v736) = (34 << (26 - v339)) | v337;
    *v338 = bswap32(v736);
    v340 = SHIDWORD(v736) + 6;
    v341 = v736 << (v340 & 0xF8);
    LODWORD(v736) = v341;
    v342 = (v734 + (v340 >> 3));
    v734 = v342;
    HIDWORD(v736) = v340 & 7;
    if (v342 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v342 = v735;
    }

    *v342 = bswap32(v341);
    v343 = SHIDWORD(v736) + 6;
    v344 = v736 << (v343 & 0xF8);
    v345 = (v734 + (v343 >> 3));
    v734 = v345;
    v346 = v343 & 7;
    HIDWORD(v736) = v346;
    if (v345 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v345 = v735;
    }

    LODWORD(v736) = (1 << (29 - v346)) | v344;
    *v345 = bswap32(v736);
    v347 = SHIDWORD(v736) + 3;
    v348 = (v734 + (v347 >> 3));
    v734 = v348;
    HIDWORD(v736) = v347 & 7;
    if (v348 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v348 = v735;
    }

    v349 = *v335 + 1;
    v350 = __clz(v349);
    v351 = 0x80000000 >> v350;
    v352 = (2 * v350) ^ 0x3F;
    LODWORD(v736) = (((v349 - v351) | v351) << (-(v347 & 7) - v352)) | (v736 << (v347 & 0xF8));
    *v348 = bswap32(v736);
    v353 = SHIDWORD(v736) + v352;
    v354 = v736 << (v353 & 0xF8);
    v355 = (v734 + (v353 >> 3));
    v734 = v355;
    v356 = v353 & 7;
    HIDWORD(v736) = v356;
    if (v355 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v355 = v735;
    }

    v357 = v335[1] + 1;
    v358 = __clz(v357);
    LODWORD(v736) = (((v357 - (0x80000000 >> v358)) | (0x80000000 >> v358)) << (-((2 * v358) ^ 0x3F) - v356)) | v354;
    *v355 = bswap32(v736);
    v359 = v736 << ((BYTE4(v736) + ((2 * v358) ^ 0x3F)) & 0xF8);
    LODWORD(v736) = v359;
    v360 = (v734 + ((SHIDWORD(v736) + ((2 * v358) ^ 0x3FuLL)) >> 3));
    v734 = v360;
    v361 = (BYTE4(v736) + ((2 * v358) ^ 0x3F)) & 7;
    HIDWORD(v736) = (HIDWORD(v736) + ((2 * v358) ^ 0x3F)) & 7;
    if (v360 >= v735)
    {
      v737 = 1;
      v734 = v735;
      v360 = v735;
    }

    v362 = *(v335 + 221);
    v363 = v335[1];
    v364 = (v362 + 1552);
    v365 = (v362 + 16 * v363 + 256);
    if (v363 > 0xF)
    {
      v365 = v364;
    }

    if (*v365)
    {
      LODWORD(v736) = (v335[2] << (v361 ^ 0x1F)) | v359;
      *v360 = bswap32(v736);
      v366 = SHIDWORD(v736) + 1;
      v367 = v736 << (v366 & 0xF8);
      v368 = (v734 + (v366 >> 3));
      v734 = v368;
      v369 = v366 & 7;
      HIDWORD(v736) = v369;
      if (v368 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v368 = v735;
      }

      LODWORD(v736) = (v335[3] << (v369 ^ 0x1F)) | v367;
      *v368 = bswap32(v736);
      v370 = SHIDWORD(v736) + 1;
      v371 = v736 << (v370 & 0xF8);
      v372 = (v734 + (v370 >> 3));
      v734 = v372;
      v373 = v370 & 7;
      HIDWORD(v736) = v373;
      if (v372 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v372 = v735;
      }

      LODWORD(v736) = (v335[4] << (29 - v373)) | v371;
      *v372 = bswap32(v736);
      v374 = SHIDWORD(v736) + 3;
      v375 = v736 << (v374 & 0xF8);
      v376 = (v734 + (v374 >> 3));
      v734 = v376;
      v377 = v374 & 7;
      HIDWORD(v736) = v377;
      if (v376 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v376 = v735;
      }

      LODWORD(v736) = (v335[5] << (v377 ^ 0x1F)) | v375;
      *v376 = bswap32(v736);
      v378 = SHIDWORD(v736) + 1;
      v379 = v736 << (v378 & 0xF8);
      v380 = (v734 + (v378 >> 3));
      v734 = v380;
      v381 = v378 & 7;
      HIDWORD(v736) = v381;
      if (v380 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v380 = v735;
      }

      LODWORD(v736) = (v335[6] << (v381 ^ 0x1F)) | v379;
      *v380 = bswap32(v736);
      v382 = SHIDWORD(v736) + 1;
      v383 = (v734 + (v382 >> 3));
      v734 = v383;
      HIDWORD(v736) = v382 & 7;
      if (v383 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v383 = v735;
      }

      v384 = v335[7] + 1;
      v385 = __clz(v384);
      v386 = 0x80000000 >> v385;
      v387 = (2 * v385) ^ 0x3F;
      LODWORD(v736) = (((v384 - v386) | v386) << (-(v382 & 7) - v387)) | (v736 << (v382 & 0xF8));
      *v383 = bswap32(v736);
      v388 = SHIDWORD(v736) + v387;
      v389 = v736 << (v388 & 0xF8);
      v390 = (v734 + (v388 >> 3));
      v734 = v390;
      v391 = v388 & 7;
      HIDWORD(v736) = v391;
      if (v390 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v390 = v735;
      }

      v392 = v335[8] + 1;
      v393 = __clz(v392);
      LODWORD(v736) = (((v392 - (0x80000000 >> v393)) | (0x80000000 >> v393)) << (-((2 * v393) ^ 0x3F) - v391)) | v389;
      *v390 = bswap32(v736);
      v394 = v736 << ((BYTE4(v736) + ((2 * v393) ^ 0x3F)) & 0xF8);
      v395 = (v734 + ((SHIDWORD(v736) + ((2 * v393) ^ 0x3FuLL)) >> 3));
      v734 = v395;
      v396 = (BYTE4(v736) + ((2 * v393) ^ 0x3F)) & 7;
      HIDWORD(v736) = (HIDWORD(v736) + ((2 * v393) ^ 0x3F)) & 7;
      if (v395 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v395 = v735;
      }

      v397 = v335[9];
      if (v397 <= 0)
      {
        v398 = -2 * v397;
      }

      else
      {
        v398 = 2 * v397 - 1;
      }

      v399 = v398 + 1;
      v400 = __clz(v399);
      v401 = (v399 - (0x80000000 >> v400)) | (0x80000000 >> v400);
      v402 = 63 - 2 * v400;
      LODWORD(v736) = (v401 << (-v396 - v402)) | v394;
      *v395 = bswap32(v736);
      v403 = SHIDWORD(v736) + v402;
      v404 = v736 << (v403 & 0xF8);
      v405 = (v734 + (v403 >> 3));
      v734 = v405;
      v406 = v403 & 7;
      HIDWORD(v736) = v406;
      if (v405 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v405 = v735;
      }

      LODWORD(v736) = (v335[10] << (v406 ^ 0x1F)) | v404;
      *v405 = bswap32(v736);
      v407 = SHIDWORD(v736) + 1;
      v408 = v736 << (v407 & 0xF8);
      v409 = (v734 + (v407 >> 3));
      v734 = v409;
      v410 = v407 & 7;
      HIDWORD(v736) = v410;
      if (v409 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v409 = v735;
      }

      LODWORD(v736) = (v335[11] << (v410 ^ 0x1F)) | v408;
      *v409 = bswap32(v736);
      v411 = SHIDWORD(v736) + 1;
      v412 = v736 << (v411 & 0xF8);
      v413 = (v734 + (v411 >> 3));
      v734 = v413;
      v414 = v411 & 7;
      HIDWORD(v736) = v414;
      if (v413 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v413 = v735;
      }

      LODWORD(v736) = (v335[12] << (v414 ^ 0x1F)) | v412;
      *v413 = bswap32(v736);
      v415 = SHIDWORD(v736) + 1;
      v416 = v415 & 0xF8;
      v417 = (v734 + (v415 >> 3));
      v734 = v417;
      v418 = v415 & 7;
      HIDWORD(v736) = v418;
      if (v417 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v417 = v735;
      }

      v419 = v736 << v416;
      if (v335[12] == 1)
      {
        v420 = v335[13] + 1;
        v421 = __clz(v420);
        v422 = 0x80000000 >> v421;
        v423 = (2 * v421) ^ 0x3F;
        LODWORD(v736) = (((v420 - v422) | v422) << (-v418 - v423)) | v419;
        *v417 = bswap32(v736);
        v424 = SHIDWORD(v736) + v423;
        v419 = v736 << (v424 & 0xF8);
        v417 = (v734 + (v424 >> 3));
        v734 = v417;
        v418 = v424 & 7;
        HIDWORD(v736) = v418;
        if (v417 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v417 = v735;
        }
      }

      v425 = v335[14];
      if (v425 <= 0)
      {
        v426 = -2 * v425;
      }

      else
      {
        v426 = 2 * v425 - 1;
      }

      v427 = __clz(v426 + 1);
      v428 = (v426 + 1 - (0x80000000 >> v427)) | (0x80000000 >> v427);
      v429 = 63 - 2 * v427;
      LODWORD(v736) = (v428 << (-v418 - v429)) | v419;
      *v417 = bswap32(v736);
      v430 = SHIDWORD(v736) + v429;
      v431 = v736 << (v430 & 0xF8);
      v432 = (v734 + (v430 >> 3));
      v734 = v432;
      v433 = v430 & 7;
      HIDWORD(v736) = v433;
      if (v432 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v432 = v735;
      }

      v434 = v335[15];
      if (v434 <= 0)
      {
        v435 = -2 * v434;
      }

      else
      {
        v435 = 2 * v434 - 1;
      }

      v436 = v435 + 1;
      v437 = __clz(v436);
      LODWORD(v736) = (((v436 - (0x80000000 >> v437)) | (0x80000000 >> v437)) << (2 * v437 - 63 - v433)) | v431;
      *v432 = bswap32(v736);
      v438 = SHIDWORD(v736) + 63 - 2 * v437;
      v439 = v736 << (v438 & 0xF8);
      v440 = (v734 + (v438 >> 3));
      v734 = v440;
      v441 = v438 & 7;
      HIDWORD(v736) = v441;
      if (v440 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v440 = v735;
      }

      LODWORD(v736) = (v335[16] << (v441 ^ 0x1F)) | v439;
      *v440 = bswap32(v736);
      v442 = SHIDWORD(v736) + 1;
      v443 = v736 << (v442 & 0xF8);
      v444 = (v734 + (v442 >> 3));
      v734 = v444;
      v445 = v442 & 7;
      HIDWORD(v736) = v445;
      if (v444 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v444 = v735;
      }

      LODWORD(v736) = (v335[17] << (v445 ^ 0x1F)) | v443;
      *v444 = bswap32(v736);
      v446 = SHIDWORD(v736) + 1;
      v447 = v736 << (v446 & 0xF8);
      v448 = (v734 + (v446 >> 3));
      v734 = v448;
      v449 = v446 & 7;
      HIDWORD(v736) = v449;
      if (v448 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v448 = v735;
      }

      LODWORD(v736) = (v335[18] << (v449 ^ 0x1F)) | v447;
      *v448 = bswap32(v736);
      v450 = SHIDWORD(v736) + 1;
      v451 = v736 << (v450 & 0xF8);
      v452 = (v734 + (v450 >> 3));
      v734 = v452;
      v453 = v450 & 7;
      HIDWORD(v736) = v453;
      if (v452 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v452 = v735;
      }

      LODWORD(v736) = (v335[19] << (v453 ^ 0x1F)) | v451;
      *v452 = bswap32(v736);
      v454 = SHIDWORD(v736) + 1;
      v455 = v736 << (v454 & 0xF8);
      v456 = (v734 + (v454 >> 3));
      v734 = v456;
      v457 = v454 & 7;
      HIDWORD(v736) = v457;
      if (v456 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v456 = v735;
      }

      LODWORD(v736) = (v335[20] << (v457 ^ 0x1F)) | v455;
      *v456 = bswap32(v736);
      v458 = SHIDWORD(v736) + 1;
      v459 = v736 << (v458 & 0xF8);
      v460 = (v734 + (v458 >> 3));
      v734 = v460;
      v461 = v458 & 7;
      HIDWORD(v736) = v461;
      if (v460 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v460 = v735;
      }

      LODWORD(v736) = (v335[21] << (v461 ^ 0x1F)) | v459;
      *v460 = bswap32(v736);
      v462 = SHIDWORD(v736) + 1;
      v463 = v462 & 0xF8;
      v464 = (v734 + (v462 >> 3));
      v734 = v464;
      v465 = v462 & 7;
      HIDWORD(v736) = v465;
      if (v464 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v464 = v735;
      }

      v466 = v736 << v463;
      if (v335[20] == 1)
      {
        v467 = *(v335 + 11) + 1;
        v468 = __clz(v467);
        v469 = 0x80000000 >> v468;
        v470 = (2 * v468) ^ 0x3F;
        LODWORD(v736) = (((v467 - v469) | v469) << (-v465 - v470)) | v466;
        *v464 = bswap32(v736);
        v471 = SHIDWORD(v736) + v470;
        v472 = v736 << (v471 & 0xF8);
        v473 = (v734 + (v471 >> 3));
        v734 = v473;
        v474 = v471 & 7;
        HIDWORD(v736) = v474;
        if (v473 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v473 = v735;
        }

        v475 = *(v335 + 12) + 1;
        v476 = __clz(v475);
        LODWORD(v736) = (((v475 - (0x80000000 >> v476)) | (0x80000000 >> v476)) << (-((2 * v476) ^ 0x3F) - v474)) | v472;
        *v473 = bswap32(v736);
        v477 = v736 << ((BYTE4(v736) + ((2 * v476) ^ 0x3F)) & 0xF8);
        v478 = (v734 + ((SHIDWORD(v736) + ((2 * v476) ^ 0x3FuLL)) >> 3));
        v734 = v478;
        v479 = (BYTE4(v736) + ((2 * v476) ^ 0x3F)) & 7;
        HIDWORD(v736) = (HIDWORD(v736) + ((2 * v476) ^ 0x3F)) & 7;
        if (v478 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v478 = v735;
        }

        LODWORD(v736) = (v335[26] << (v479 ^ 0x1F)) | v477;
        *v478 = bswap32(v736);
        v480 = SHIDWORD(v736) + 1;
        v481 = v736 << (v480 & 0xF8);
        v482 = (v734 + (v480 >> 3));
        v734 = v482;
        v483 = v480 & 7;
        HIDWORD(v736) = v483;
        if (v482 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v482 = v735;
        }

        if ((v335[26] & 1) == 0)
        {
          if (*(v335 + 11))
          {
            v484 = 0;
            do
            {
              v485 = *(*(v335 + 206) + 2 * v484) + 1;
              v486 = __clz(v485);
              v487 = 0x80000000 >> v486;
              v488 = (2 * v486) ^ 0x3F;
              LODWORD(v736) = (((v485 - v487) | v487) << (-v483 - v488)) | v481;
              *v482 = bswap32(v736);
              v489 = SHIDWORD(v736) + v488;
              v481 = v736 << (v489 & 0xF8);
              LODWORD(v736) = v481;
              v482 = (v734 + (v489 >> 3));
              v734 = v482;
              v483 = v489 & 7;
              HIDWORD(v736) = v483;
              if (v482 >= v735)
              {
                v737 = 1;
                v734 = v735;
                v482 = v735;
              }

              ++v484;
            }

            while (v484 < *(v335 + 11));
          }

          if (*(v335 + 12))
          {
            v490 = 0;
            do
            {
              v491 = *(*(v335 + 209) + 2 * v490) + 1;
              v492 = __clz(v491);
              v493 = 0x80000000 >> v492;
              v494 = (2 * v492) ^ 0x3F;
              LODWORD(v736) = (((v491 - v493) | v493) << (-v483 - v494)) | v481;
              *v482 = bswap32(v736);
              v495 = SHIDWORD(v736) + v494;
              v481 = v736 << (v495 & 0xF8);
              LODWORD(v736) = v481;
              v482 = (v734 + (v495 >> 3));
              v734 = v482;
              v483 = v495 & 7;
              HIDWORD(v736) = v483;
              if (v482 >= v735)
              {
                v737 = 1;
                v734 = v735;
                v482 = v735;
              }

              ++v490;
            }

            while (v490 < *(v335 + 12));
          }
        }

        LODWORD(v736) = (v335[27] << (v483 ^ 0x1F)) | v481;
        *v482 = bswap32(v736);
        v496 = SHIDWORD(v736) + 1;
        v466 = v736 << (v496 & 0xF8);
        v464 = (v734 + (v496 >> 3));
        v734 = v464;
        v465 = v496 & 7;
        HIDWORD(v736) = v465;
        if (v464 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v464 = v735;
        }
      }

      LODWORD(v736) = (v335[28] << (v465 ^ 0x1F)) | v466;
      *v464 = bswap32(v736);
      v497 = SHIDWORD(v736) + 1;
      v498 = v736 << (v497 & 0xF8);
      v499 = (v734 + (v497 >> 3));
      v734 = v499;
      v500 = v497 & 7;
      HIDWORD(v736) = v500;
      if (v499 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v499 = v735;
      }

      LODWORD(v736) = (v335[29] << (v500 ^ 0x1F)) | v498;
      *v499 = bswap32(v736);
      v501 = SHIDWORD(v736) + 1;
      v502 = v501 & 0xF8;
      v503 = (v734 + (v501 >> 3));
      v734 = v503;
      v504 = v501 & 7;
      HIDWORD(v736) = v504;
      if (v503 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v503 = v735;
      }

      v505 = v736 << v502;
      if (v335[29] == 1)
      {
        LODWORD(v736) = (v335[30] << (v504 ^ 0x1F)) | v505;
        *v503 = bswap32(v736);
        v506 = SHIDWORD(v736) + 1;
        v507 = v736 << (v506 & 0xF8);
        v508 = (v734 + (v506 >> 3));
        v734 = v508;
        v509 = v506 & 7;
        HIDWORD(v736) = v509;
        if (v508 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v508 = v735;
        }

        LODWORD(v736) = (v335[31] << (v509 ^ 0x1F)) | v507;
        *v508 = bswap32(v736);
        v510 = SHIDWORD(v736) + 1;
        v511 = v510 & 0xF8;
        v503 = (v734 + (v510 >> 3));
        v734 = v503;
        v504 = v510 & 7;
        HIDWORD(v736) = v504;
        if (v503 >= v735)
        {
          v737 = 1;
          v734 = v735;
          v503 = v735;
        }

        v505 = v736 << v511;
        if ((v335[31] & 1) == 0)
        {
          v512 = v335[32];
          if (v512 <= 0)
          {
            v513 = -2 * v512;
          }

          else
          {
            v513 = 2 * v512 - 1;
          }

          v514 = __clz(v513 + 1);
          v515 = (v513 + 1 - (0x80000000 >> v514)) | (0x80000000 >> v514);
          v516 = 63 - 2 * v514;
          LODWORD(v736) = (v515 << (-v504 - v516)) | v505;
          *v503 = bswap32(v736);
          v517 = SHIDWORD(v736) + v516;
          v518 = v736 << (v517 & 0xF8);
          v519 = (v734 + (v517 >> 3));
          v734 = v519;
          v520 = v517 & 7;
          HIDWORD(v736) = v520;
          if (v519 >= v735)
          {
            v737 = 1;
            v734 = v735;
            v519 = v735;
          }

          v521 = v335[33];
          if (v521 <= 0)
          {
            v522 = -2 * v521;
          }

          else
          {
            v522 = 2 * v521 - 1;
          }

          v523 = v522 + 1;
          v524 = __clz(v523);
          LODWORD(v736) = (((v523 - (0x80000000 >> v524)) | (0x80000000 >> v524)) << (2 * v524 - 63 - v520)) | v518;
          *v519 = bswap32(v736);
          v525 = SHIDWORD(v736) + 63 - 2 * v524;
          v505 = v736 << (v525 & 0xF8);
          v503 = (v734 + (v525 >> 3));
          v734 = v503;
          v504 = v525 & 7;
          HIDWORD(v736) = v504;
          if (v503 >= v735)
          {
            v737 = 1;
            v734 = v735;
            v503 = v735;
          }
        }
      }

      LODWORD(v736) = (v335[34] << (v504 ^ 0x1F)) | v505;
      *v503 = bswap32(v736);
      v526 = SHIDWORD(v736) + 1;
      v527 = v736 << (v526 & 0xF8);
      LODWORD(v736) = v527;
      v528 = (v734 + (v526 >> 3));
      v734 = v528;
      v529 = v526 & 7;
      HIDWORD(v736) = v529;
      if (v528 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v528 = v735;
      }

      if (v335[34] == 1)
      {
        sub_2773FC2D8((v335 + 40), &v730);
        LOBYTE(v529) = BYTE4(v736);
        v527 = v736;
        v528 = v734;
      }

      LODWORD(v736) = (v335[1608] << ~v529) | v527;
      *v528 = bswap32(v736);
      v530 = SHIDWORD(v736) + 1;
      v531 = v736 << (v530 & 0xF8);
      v532 = (v734 + (v530 >> 3));
      v734 = v532;
      v533 = v530 & 7;
      HIDWORD(v736) = v533;
      if (v532 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v532 = v735;
      }

      if (*(v335 + 805))
      {
        v534 = 2 * *(v335 + 805);
      }

      else
      {
        v534 = 1;
      }

      v535 = __clz(v534);
      v536 = (v534 - (0x80000000 >> v535)) | (0x80000000 >> v535);
      v537 = 63 - 2 * v535;
      LODWORD(v736) = (v536 << (-v533 - v537)) | v531;
      *v532 = bswap32(v736);
      v538 = SHIDWORD(v736) + v537;
      v539 = v736 << (v538 & 0xF8);
      v540 = (v734 + (v538 >> 3));
      v734 = v540;
      v541 = v538 & 7;
      HIDWORD(v736) = v541;
      if (v540 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v540 = v735;
      }

      LODWORD(v736) = (v335[1612] << (v541 ^ 0x1F)) | v539;
      *v540 = bswap32(v736);
      v542 = SHIDWORD(v736) + 1;
      v543 = v736 << (v542 & 0xF8);
      v544 = (v734 + (v542 >> 3));
      v734 = v544;
      v545 = v542 & 7;
      HIDWORD(v736) = v545;
      if (v544 >= v735)
      {
        v737 = 1;
        v734 = v735;
        v544 = v735;
      }

      LODWORD(v736) = (v335[1613] << (v545 ^ 0x1F)) | v543;
      *v544 = bswap32(v736);
      v546 = SHIDWORD(v736) + 1;
      LODWORD(v736) = v736 << (v546 & 0xF8);
      v734 = (v734 + (v546 >> 3));
      HIDWORD(v736) = v546 & 7;
      if (v734 >= v735)
      {
        v737 = 1;
        v734 = v735;
      }

      if (v335[1613] == 1)
      {
        if (dword_280B9A880 >= 3)
        {
          fwrite("Implement PPS extension parsing\n", 0x20uLL, 1uLL, *MEMORY[0x277D85DF8]);
          syslog(27, "Implement PPS extension parsing\n");
        }

        v312 = -12910;
      }

      else
      {
        sub_2773FBB94(&v730);
        v312 = off_280B9A8B0(v723);
        *(a1 + 10664) += v312;
        v552 = *(a1 + 240);
        if (v552)
        {
          fwrite(v723, 1uLL, v312, v552);
        }

        if (*(a1 + 428) == 1)
        {
          sub_27742BC1C(*(a1 + 9768), *MEMORY[0x277D85DF8]);
        }
      }
    }

    else
    {
      v312 = -12909;
    }
  }

  if (v730)
  {
    v731 = v730;
    operator delete(v730);
  }

  v693 = v312;
  v313 = v695;
  if (!v695 || (v314 = v694) == 0 || !v312)
  {
    if (dword_280B9A880 < 3)
    {
      v316 = 0;
      v331 = 4294954394;
    }

    else
    {
      fwrite("Parameter sets generation failed\n", 0x21uLL, 1uLL, *MEMORY[0x277D85DF8]);
      v316 = 0;
      v331 = 4294954394;
      syslog(27, "Parameter sets generation failed\n");
    }

    goto LABEL_455;
  }

  v694 -= 3;
  v695 -= 3;
  v693 = v312 - 3;
  v315 = v5 + v313 - 3 + v314 - 3 + v312 - 3 + v7 + 148;
  v316 = malloc_type_calloc(v315, 1uLL, 0x100004077774924uLL);
  if (!v316)
  {
    if (dword_280B9A880 >= 3)
    {
      v551 = "config record buffer allocation failed";
      fwrite("config record buffer allocation failed", 0x26uLL, 1uLL, *MEMORY[0x277D85DF8]);
      v316 = 0;
LABEL_441:
      v331 = 4294954392;
LABEL_454:
      syslog(27, v551, v678);
      goto LABEL_455;
    }

    v316 = 0;
LABEL_465:
    v331 = 4294954392;
    goto LABEL_455;
  }

  *v699 = 0x1000000;
  v696 = 0;
  v697 = 0;
  v698 = 0;
  *&v699[7] = 0;
  v700 = 3;
  *__p = 0u;
  *__n = 0u;
  sub_2773EC398(v710);
  sub_2773EC398(v708);
  sub_2773EC398(v706);
  sub_2773EC398(v705);
  sub_2773EC398(v704);
  v743 = 0uLL;
  *&v744 = 0;
  v745 = 0;
  v747 = 0;
  v746 = 0;
  bzero(&v730, 0x630uLL);
  __n[1] = 0;
  v686 = v5;
  v688 = a2;
  if (!(HIBYTE(v689) * v689 * v690) || (v318 = v712, v317 = v713, v319 = *v712, v320 = v714, !(*v713 * *v712 * *v714)) || (v321 = v717) == 0 || (v322 = v718) == 0 || (v323 = v719) == 0)
  {
    v331 = 4294954394;
    goto LABEL_417;
  }

  LOBYTE(v324) = 0;
  v325 = 0;
  v326 = 0;
  v327 = 23;
  do
  {
    v328 = *(&v689 + v326);
    if (*(&v689 + v326))
    {
      v324 = v325 + 1;
      v327 += 3;
      v329 = (&v712)[v326];
      do
      {
        v330 = *v329++;
        v327 += v330 + 2;
        --v328;
      }

      while (v328);
      v325 = v324;
    }

    ++v326;
  }

  while (v326 != 5);
  HIBYTE(v700) = v324;
  if (v327)
  {
    sub_2773C07DC(__p, v327);
    v319 = *v318;
  }

  v331 = sub_2773EBFA4(v710, v321, v319);
  if (!v331)
  {
    v331 = sub_2773EBFA4(v708, v322, *v317);
    if (!v331)
    {
      v331 = sub_2773EBFA4(v706, v323, *v320);
      if (!v331)
      {
        if (!v691 || !v720 || !*v715 || (v331 = sub_2773EBFA4(v705, v720, *v715), !v331))
        {
          if (!v692 || !v721 || !*v716 || (v331 = sub_2773EBFA4(v704, v721, *v716), !v331))
          {
            v703[0] = v711;
            v703[1] = v709;
            v703[2] = v707;
            v703[3] = v705[16];
            v703[4] = v704[16];
            v331 = sub_2773E8AB8(&v730, v710);
            if (!v331)
            {
              v331 = sub_2773E8AB8(&v730, v708);
              if (!v331)
              {
                v332 = 0;
                v333 = 32;
                while (!(&v730)[v333])
                {
                  ++v332;
                  v333 += 2;
                  if (v332 == 16)
                  {
                    v334 = &v740;
                    goto LABEL_478;
                  }
                }

                v334 = &v738[v332];
LABEL_478:
                v569 = 8 * *(v730 + 44);
                v570 = 4 * (*(v730 + 45) & 1);
                v571 = 2 * (*(v730 + 46) & 1);
                v572 = *(v730 + 47) & 1;
                LOBYTE(v696) = 1;
                v573 = *v730;
                BYTE1(v696) = *v730;
                v574 = *(v730 + 7) & 1;
                BYTE2(v696) = *(v730 + 7) & 1;
                v575 = *(v730 + 8);
                BYTE3(v696) = *(v730 + 8);
                v576 = v730 + 4;
                v577 = vld1q_dup_f32(v576);
                v578 = xmmword_27750D390;
                v579 = 0uLL;
                v580 = 32;
                v581.i64[0] = 0x100000001;
                v581.i64[1] = 0x100000001;
                v582.i64[0] = 0x1F0000001FLL;
                v582.i64[1] = 0x1F0000001FLL;
                v583.i64[0] = 0x400000004;
                v583.i64[1] = 0x400000004;
                do
                {
                  v579 = vorrq_s8(vshlq_u32(vandq_s8(vshlq_u32(v577, vnegq_s32(v578)), v581), vsubq_s32(v582, v578)), v579);
                  v578 = vaddq_s32(v578, v583);
                  v580 -= 4;
                }

                while (v580);
                v584 = vorr_s8(*v579.i8, *&vextq_s8(v579, v579, 8uLL));
                v585 = v584.i32[0] | v584.i32[1];
                HIDWORD(v696) = v584.i32[0] | v584.i32[1];
                v586 = v570 | v571 | v569 & 8 | v572;
                v697 = v586 << 44;
                LODWORD(v678) = *(v730 + 57);
                v698 = *(v730 + 57);
                *v699 = 0;
                v699[2] = 0;
                v587 = *v334;
                HIDWORD(v678) = v587[201];
                v699[3] = v587[201];
                v699[4] = v587[222];
                v679 = v699[4];
                v681 = v587[223];
                v699[5] = v587[223];
                *&v699[6] = 0;
                v699[8] = 0;
                v683 = *(v730 + 200) + 1;
                v699[9] = v683;
                LODWORD(v587) = *(v730 + 201);
                LOBYTE(v700) = 3;
                v685 = v587;
                v699[10] = v587;
                v331 = sub_2773FB67C(&v743, __p[0], __p[1] - __p[0]);
                if (v331)
                {
                  goto LABEL_417;
                }

                v588 = v745;
                if (HIDWORD(v747) && v745 < v746)
                {
                  v588 = (v745 + 1);
                  v745 = (v745 + 1);
                }

                v747 = 0x1000000;
                *v588 = 1;
                v589 = v747 << ((BYTE4(v747) + 8) & 0xF8);
                v590 = (v745 + ((SHIDWORD(v747) + 8) >> 3));
                v745 = v590;
                v591 = BYTE4(v747) & 7;
                HIDWORD(v747) = BYTE4(v747) & 7;
                if (v590 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v590 = v746;
                }

                LODWORD(v747) = (v573 << (30 - v591)) | v589;
                *v590 = bswap32(v747);
                v592 = SHIDWORD(v747) + 2;
                v593 = v747 << (v592 & 0xF8);
                v594 = (v745 + (v592 >> 3));
                v745 = v594;
                v595 = v592 & 7;
                HIDWORD(v747) = v595;
                if (v594 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v594 = v746;
                }

                LODWORD(v747) = (v574 << (v595 ^ 0x1F)) | v593;
                *v594 = bswap32(v747);
                v596 = SHIDWORD(v747) + 1;
                v597 = v747 << (v596 & 0xF8);
                v598 = (v745 + (v596 >> 3));
                v745 = v598;
                v599 = v596 & 7;
                HIDWORD(v747) = v599;
                if (v598 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v598 = v746;
                }

                LODWORD(v747) = (v575 << (27 - v599)) | v597;
                *v598 = bswap32(v747);
                v600 = SHIDWORD(v747) + 5;
                LODWORD(v747) = v747 << (v600 & 0xF8);
                v745 = (v745 + (v600 >> 3));
                HIDWORD(v747) = v600 & 7;
                if (v745 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                }

                sub_2773FB7E4(&v743, v585, 32);
                LODWORD(v747) = (v586 << 12 << (16 - BYTE4(v747))) | v747;
                *v745 = bswap32(v747);
                LODWORD(v747) = v747 << ((BYTE4(v747) + 16) & 0xF8);
                v745 = (v745 + ((SHIDWORD(v747) + 16) >> 3));
                HIDWORD(v747) = BYTE4(v747) & 7;
                if (v745 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                }

                sub_2773FB7E4(&v743, 0, 32);
                LODWORD(v747) = (v678 << (24 - BYTE4(v747))) | v747;
                *v745 = bswap32(v747);
                v601 = v747 << ((BYTE4(v747) + 8) & 0xF8);
                v602 = (v745 + ((SHIDWORD(v747) + 8) >> 3));
                v745 = v602;
                v603 = BYTE4(v747) & 7;
                HIDWORD(v747) = BYTE4(v747) & 7;
                if (v602 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v602 = v746;
                }

                LODWORD(v747) = (15 << (28 - v603)) | v601;
                *v602 = bswap32(v747);
                v604 = SHIDWORD(v747) + 4;
                v605 = v747 << (v604 & 0xF8);
                v606 = (v745 + (v604 >> 3));
                v745 = v606;
                HIDWORD(v747) = v604 & 7;
                if (v606 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v606 = v746;
                }

                LODWORD(v747) = v747 << (v604 & 0xF8);
                *v606 = bswap32(v605);
                v607 = SHIDWORD(v747) + 12;
                v608 = v747 << (v607 & 0xF8);
                v609 = (v745 + (v607 >> 3));
                v745 = v609;
                v610 = v607 & 7;
                HIDWORD(v747) = v610;
                if (v609 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v609 = v746;
                }

                LODWORD(v747) = (63 << (26 - v610)) | v608;
                *v609 = bswap32(v747);
                v611 = SHIDWORD(v747) + 6;
                v612 = v747 << (v611 & 0xF8);
                v613 = (v745 + (v611 >> 3));
                v745 = v613;
                HIDWORD(v747) = v611 & 7;
                if (v613 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v613 = v746;
                }

                LODWORD(v747) = v747 << (v611 & 0xF8);
                *v613 = bswap32(v612);
                v614 = SHIDWORD(v747) + 2;
                v615 = v747 << (v614 & 0xF8);
                v616 = (v745 + (v614 >> 3));
                v745 = v616;
                v617 = v614 & 7;
                HIDWORD(v747) = v617;
                if (v616 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v616 = v746;
                }

                LODWORD(v747) = (63 << (26 - v617)) | v615;
                *v616 = bswap32(v747);
                v618 = SHIDWORD(v747) + 6;
                v619 = v747 << (v618 & 0xF8);
                v620 = (v745 + (v618 >> 3));
                v745 = v620;
                v621 = v618 & 7;
                HIDWORD(v747) = v621;
                if (v620 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v620 = v746;
                }

                LODWORD(v747) = (HIDWORD(v678) << (30 - v621)) | v619;
                *v620 = bswap32(v747);
                v622 = SHIDWORD(v747) + 2;
                v623 = v747 << (v622 & 0xF8);
                v624 = (v745 + (v622 >> 3));
                v745 = v624;
                v625 = v622 & 7;
                HIDWORD(v747) = v625;
                if (v624 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v624 = v746;
                }

                LODWORD(v747) = (31 << (27 - v625)) | v623;
                *v624 = bswap32(v747);
                v626 = SHIDWORD(v747) + 5;
                v627 = v747 << (v626 & 0xF8);
                v628 = (v745 + (v626 >> 3));
                v745 = v628;
                v629 = v626 & 7;
                HIDWORD(v747) = v629;
                if (v628 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v628 = v746;
                }

                LODWORD(v747) = (v679 << (29 - v629)) | v627;
                *v628 = bswap32(v747);
                v630 = SHIDWORD(v747) + 3;
                v631 = v747 << (v630 & 0xF8);
                v632 = (v745 + (v630 >> 3));
                v745 = v632;
                v633 = v630 & 7;
                HIDWORD(v747) = v633;
                if (v632 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v632 = v746;
                }

                LODWORD(v747) = (31 << (27 - v633)) | v631;
                *v632 = bswap32(v747);
                v634 = SHIDWORD(v747) + 5;
                v635 = v747 << (v634 & 0xF8);
                v636 = (v745 + (v634 >> 3));
                v745 = v636;
                v637 = v634 & 7;
                HIDWORD(v747) = v637;
                if (v636 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v636 = v746;
                }

                LODWORD(v747) = (v681 << (29 - v637)) | v635;
                *v636 = bswap32(v747);
                v638 = SHIDWORD(v747) + 3;
                v639 = v747 << (v638 & 0xF8);
                v640 = (v745 + (v638 >> 3));
                v745 = v640;
                HIDWORD(v747) = v638 & 7;
                if (v640 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v640 = v746;
                }

                LODWORD(v747) = v747 << (v638 & 0xF8);
                *v640 = bswap32(v639);
                v641 = v747 << ((BYTE4(v747) + 16) & 0xF8);
                v642 = (v745 + ((SHIDWORD(v747) + 16) >> 3));
                v745 = v642;
                HIDWORD(v747) = BYTE4(v747) & 7;
                if (v642 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v642 = v746;
                }

                LODWORD(v747) = v641;
                *v642 = bswap32(v641);
                v643 = SHIDWORD(v747) + 2;
                v644 = v747 << (v643 & 0xF8);
                v645 = (v745 + (v643 >> 3));
                v745 = v645;
                v646 = v643 & 7;
                HIDWORD(v747) = v646;
                if (v645 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v645 = v746;
                }

                LODWORD(v747) = (v683 << (29 - v646)) | v644;
                *v645 = bswap32(v747);
                v647 = SHIDWORD(v747) + 3;
                v648 = v747 << (v647 & 0xF8);
                v649 = (v745 + (v647 >> 3));
                v745 = v649;
                v650 = v647 & 7;
                HIDWORD(v747) = v650;
                if (v649 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v649 = v746;
                }

                LODWORD(v747) = (v685 << (v650 ^ 0x1F)) | v648;
                *v649 = bswap32(v747);
                v651 = SHIDWORD(v747) + 1;
                v652 = v747 << (v651 & 0xF8);
                v653 = (v745 + (v651 >> 3));
                v745 = v653;
                v654 = v651 & 7;
                HIDWORD(v747) = v654;
                if (v653 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v653 = v746;
                }

                LODWORD(v747) = (3 << (30 - v654)) | v652;
                *v653 = bswap32(v747);
                v655 = SHIDWORD(v747) + 2;
                v656 = v747 << (v655 & 0xF8);
                v657 = (v745 + (v655 >> 3));
                v745 = v657;
                v658 = v655 & 7;
                HIDWORD(v747) = v658;
                if (v657 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v657 = v746;
                }

                LODWORD(v747) = (HIBYTE(v700) << (24 - v658)) | v656;
                *v657 = bswap32(v747);
                v659 = v747 << ((BYTE4(v747) + 8) & 0xF8);
                LODWORD(v747) = v659;
                v660 = (v745 + ((SHIDWORD(v747) + 8) >> 3));
                v745 = v660;
                v661 = BYTE4(v747) & 7;
                HIDWORD(v747) = BYTE4(v747) & 7;
                if (v660 >= v746)
                {
                  v748 = 1;
                  v745 = v746;
                  v660 = v746;
                }

                v662 = 0;
                while (1)
                {
                  if (*(&v689 + v662))
                  {
                    LODWORD(v747) = (0x80000000 >> v661) | v659;
                    *v660 = bswap32(v747);
                    v663 = SHIDWORD(v747) + 1;
                    v664 = v747 << (v663 & 0xF8);
                    LODWORD(v747) = v664;
                    v665 = (v745 + (v663 >> 3));
                    v745 = v665;
                    HIDWORD(v747) = v663 & 7;
                    if (v665 >= v746)
                    {
                      v748 = 1;
                      v745 = v746;
                      v665 = v746;
                    }

                    *v665 = bswap32(v664);
                    v666 = SHIDWORD(v747) + 1;
                    v667 = (v745 + (v666 >> 3));
                    v745 = v667;
                    HIDWORD(v747) = v666 & 7;
                    if (v667 >= v746)
                    {
                      v748 = 1;
                      v745 = v746;
                      v667 = v746;
                    }

                    LODWORD(v747) = (v703[v662] << (26 - (v666 & 7))) | (v747 << (v666 & 0xF8));
                    *v667 = bswap32(v747);
                    v668 = SHIDWORD(v747) + 6;
                    v669 = (v745 + (v668 >> 3));
                    v745 = v669;
                    HIDWORD(v747) = v668 & 7;
                    if (v669 >= v746)
                    {
                      v748 = 1;
                      v745 = v746;
                      v669 = v746;
                    }

                    v670 = *(&v689 + v662);
                    LODWORD(v747) = (v670 << (16 - (v668 & 7))) | (v747 << (v668 & 0xF8));
                    *v669 = bswap32(v747);
                    v671 = v747 << ((BYTE4(v747) + 16) & 0xF8);
                    LODWORD(v747) = v671;
                    v660 = (v745 + ((SHIDWORD(v747) + 16) >> 3));
                    v745 = v660;
                    v661 = BYTE4(v747) & 7;
                    HIDWORD(v747) = BYTE4(v747) & 7;
                    if (v660 >= v746)
                    {
                      v748 = 1;
                      v745 = v746;
                      v660 = v746;
                    }

                    if (v670)
                    {
                      v672 = (&v717)[v662];
                      v673 = (&v712)[v662];
                      while (1)
                      {
                        v675 = *v673++;
                        v674 = v675;
                        LODWORD(v747) = (v675 << (16 - v661)) | v671;
                        *v660 = bswap32(v747);
                        LODWORD(v747) = v747 << ((BYTE4(v747) + 16) & 0xF8);
                        v676 = (v745 + ((SHIDWORD(v747) + 16) >> 3));
                        v745 = v676;
                        HIDWORD(v747) = BYTE4(v747) & 7;
                        if (v676 >= v746)
                        {
                          v748 = 1;
                          v745 = v746;
                          v676 = v746;
                        }

                        if (v746 - v676 < v674)
                        {
                          break;
                        }

                        v677 = v674;
                        memcpy(v676, v672, v674);
                        v661 = BYTE4(v747);
                        v660 = (v745 + (SHIDWORD(v747) >> 3) + v677);
                        v745 = v660;
                        if (v660 >= v746)
                        {
                          v748 = 1;
                          v745 = v746;
                          v660 = v746;
                        }

                        v671 = 0;
                        v659 = 0;
                        LODWORD(v747) = 0;
                        v672 += v677;
                        if (!--v670)
                        {
                          goto LABEL_548;
                        }
                      }

                      v331 = 4294940770;
                      break;
                    }

                    v659 = v671;
                  }

LABEL_548:
                  if (++v662 == 5)
                  {
                    v331 = 0;
                    __n[1] = v660 - *(&v744 + 1);
                    break;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_417:
  if (v742)
  {
    sub_2773CC26C(v742);
  }

  if (v741)
  {
    sub_2773CC26C(v741);
  }

  if (v739)
  {
    sub_2773CC26C(v739);
  }

  v547 = 191;
  a2 = v688;
  do
  {
    v548 = (&v730)[v547];
    if (v548)
    {
      sub_2773CC26C(v548);
    }

    v547 -= 2;
  }

  while (v547 != 63);
  do
  {
    v549 = (&v730)[v547];
    if (v549)
    {
      sub_2773CC26C(v549);
    }

    v547 -= 2;
  }

  while (v547 != 31);
  do
  {
    v550 = (&v730)[v547];
    if (v550)
    {
      sub_2773CC26C(v550);
    }

    v547 -= 2;
  }

  while (v547 != -1);
  if (v743)
  {
    *(&v743 + 1) = v743;
    operator delete(v743);
  }

  if (v331)
  {
    if (dword_280B9A880 >= 3)
    {
      fwrite("Configuration record creation from parameter sets failed\n", 0x39uLL, 1uLL, *MEMORY[0x277D85DF8]);
      syslog(27, "Configuration record creation from parameter sets failed\n");
    }

LABEL_449:
    v554 = __p[0];
    if (!__p[0])
    {
      goto LABEL_451;
    }

    goto LABEL_450;
  }

  v553 = __n[1];
  if (v315 < __n[1])
  {
    v331 = 4294954394;
    a2 = v688;
    goto LABEL_449;
  }

  v554 = __p[0];
  memcpy(v316, __p[0], __n[1]);
  v331 = 0;
  v315 = v553;
  a2 = v688;
  if (v554)
  {
LABEL_450:
    operator delete(v554);
  }

LABEL_451:
  if (!v331)
  {
    if (*(a1 + 424) == 1)
    {
      *(a1 + 11012) &= CC_MD5_Update((a1 + 10920), v316, v315);
    }

    if (*(a1 + 456) == 1)
    {
      v557 = *(a1 + 680);
      if (v557)
      {
        memcpy(&v316[v315], v557, v686 + 1);
        v315 += v686 + 1;
      }
    }

    v555 = CFDataCreate(*MEMORY[0x277CBECE8], v316, v315);
    if (v555)
    {
      free(v316);
      v331 = 0;
      goto LABEL_456;
    }

    if (dword_280B9A880 >= 3)
    {
      v551 = "Creating hvcCData failed\n";
      fwrite("Creating hvcCData failed\n", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
      goto LABEL_441;
    }

    goto LABEL_465;
  }

  if (dword_280B9A880 >= 3)
  {
    v551 = "LRPParameterSetsToConfigurationRecord failed";
    fwrite("LRPParameterSetsToConfigurationRecord failed", 0x2CuLL, 1uLL, *MEMORY[0x277D85DF8]);
    goto LABEL_454;
  }

LABEL_455:
  free(v316);
  v555 = 0;
LABEL_456:
  *a2 = v555;
  return v331;
}