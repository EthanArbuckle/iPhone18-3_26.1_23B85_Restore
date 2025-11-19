uint64_t sub_29A0BB9C0(void *a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  if ((a6 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1[57] + 8 * a6);
  }

  v7 = *(a1[3] + 4 * ((2 * a2) | 1));
  v8 = *(a1[6] + 4 * v7 + 4 * a3);
  v9 = 2 * v8;
  v10 = a1[42];
  v11 = a1[45] + 4 * *(v10 + 8 * v8 + 4);
  v12 = *(v10 + 4 * v9);
  if (v12 < 1)
  {
LABEL_8:
    LODWORD(v13) = -1;
  }

  else
  {
    v13 = 0;
    v14 = *(a1[9] + 4 * v7 + 4 * a3);
    while (*(v11 + 4 * v13) != v14)
    {
      if (v12 == ++v13)
      {
        goto LABEL_8;
      }
    }
  }

  v15 = 0;
  if (v13 + 1 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  v17 = v13 + 1 - v16;
  v18 = 1;
  *a5 = 1;
  v19 = a1[30];
  v20 = v13;
  while (1)
  {
    v21 = *(v11 + 4 * v20);
    result = *(v19 + v21);
    if (v6)
    {
      if (*(*(v6 + 48) + v21))
      {
        result = result | 6;
      }

      else
      {
        result = *(v19 + v21);
      }
    }

    if ((result & a4) != 0)
    {
      break;
    }

    *a5 = ++v18;
    *(a5 + 4) = ++v15;
    result = (v20 + v12);
    if (v20 <= 0)
    {
      v23 = -1;
    }

    else
    {
      v23 = ~v12;
    }

    v20 = result + v23;
    if (v20 == v17)
    {
      LOWORD(v20) = v17;
      goto LABEL_32;
    }
  }

  if (v17 != v20)
  {
    do
    {
      v24 = *(v11 + 4 * v17);
      v25 = *(v19 + v24);
      if (v6)
      {
        result = v25 | 6u;
        if (*(*(v6 + 48) + v24))
        {
          v25 |= 6u;
        }
      }

      if ((v25 & a4) != 0)
      {
        break;
      }

      *a5 = ++v18;
      v26 = v17 + 1;
      v27 = v26 >= v12 ? v12 : 0;
      v17 = v26 - v27;
    }

    while (v17 != v13);
  }

LABEL_32:
  *(a5 + 2) = v20;
  return result;
}

uint64_t sub_29A0BBB18(uint64_t a1, int a2, int a3, _DWORD *a4, int a5)
{
  v6 = *(*(*(a1 + 8) + 48) + 8 * a2);
  if (a5 < 0)
  {
    v9 = *(v6 + 24);
    v7 = (*(v6 + 48) + 4 * *(v9 + 8 * a3 + 4));
    v8 = *(v9 + 8 * a3);
  }

  else
  {
    v7 = sub_29A0A5C5C(v6, a3, a5);
  }

  if (v8 >= 1)
  {
    v10 = v8;
    do
    {
      v11 = *v7++;
      *a4++ = v11;
      --v10;
    }

    while (v10);
  }

  return v8;
}

uint64_t sub_29A0BBB98(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6)
{
  v8 = a4;
  if (a4 < 0)
  {
    v8 = sub_29A0BB2D8(a1, a2, a3, 0xFFFFFFFF);
  }

  v12 = *(*(*(a1 + 8) + 48) + 8 * a2);
  v13 = v12[6] + 4 * *(v12[3] + 4 * ((2 * a3) | 1));
  v14 = v13;
  if ((a6 & 0x80000000) == 0)
  {
    v14 = sub_29A0A5C5C(v12, a3, a6);
  }

  if (v8 && *(a1 + 24) == 1)
  {
    v15 = *v14;
  }

  else
  {
    v15 = -1;
  }

  v64 = v15;
  for (i = 0; i != 4; ++i)
  {
    v17 = *(v13 + 4 * i);
    v18 = v12[33];
    v19 = *(v18 + 8 * v17 + 4);
    v20 = v12[36] + 4 * v19;
    v21 = *(v18 + 8 * v17);
    if (v21 < 1)
    {
LABEL_14:
      LODWORD(v22) = -1;
    }

    else
    {
      v22 = 0;
      while (*(v20 + 4 * v22) != a3)
      {
        if (v21 == ++v22)
        {
          goto LABEL_14;
        }
      }
    }

    v23 = (&unk_29B435440 + 16 * i);
    v24 = v12[39] + 2 * v19;
    if (!v8 || (v25 = 1 << ((i - 1) & 3), ((v25 | (1 << i)) & v8) == 0))
    {
      v28 = v22 & 3 ^ 2;
      v29 = *(v20 + 4 * v28);
      v30 = *(v24 + 2 * v28);
      if (a6 < 0)
      {
        v31 = v12[6] + 4 * *(v12[3] + 4 * ((2 * v29) | 1));
      }

      else
      {
        v31 = sub_29A0A5C5C(v12, v29, a6);
      }

      *(a5 + 4 * v23[1]) = *(v31 + 4 * ((v30 + 1) & 3));
      *(a5 + 4 * v23[2]) = *(v31 + 4 * (v30 & 3 ^ 2));
      v32 = *(v31 + 4 * ((v30 - 1) & 3));
      goto LABEL_56;
    }

    if (((1 << i) & v8) == 0)
    {
      if (*(v12[54] + 2 * v17))
      {
        v40 = *(v20 + 4 * v22);
        v41 = *(v24 + 2 * v22);
        v42 = v12[3];
        v43 = v12[9];
        v44 = *(v43 + 4 * *(v42 + 4 * ((2 * v40) | 1)) + 4 * v41);
        v45 = (v12[21] + 4 * *(v12[18] + 4 * ((2 * v44) | 1)));
        v34 = v45[*v45 == v40];
        v46 = *(v42 + 8 * v34);
        if (v46 < 1)
        {
LABEL_37:
          v48 = 0;
        }

        else
        {
          v47 = (v43 + 4 * *(v42 + 4 * ((2 * v34) | 1)));
          v48 = 1;
          while (1)
          {
            v49 = *v47++;
            if (v49 == v44)
            {
              break;
            }

            ++v48;
            if (!--v46)
            {
              goto LABEL_37;
            }
          }
        }

        v50 = *(v42 + 8 * v40);
        if (v48 < v50)
        {
          LOBYTE(v50) = 0;
        }

        LOBYTE(v35) = v48 - v50;
        if ((a6 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v22)
        {
          LODWORD(v21) = v22;
        }

        v33 = v21 - 1;
        LODWORD(v34) = *(v20 + 4 * v33);
        v35 = *(v24 + 2 * v33);
        if ((a6 & 0x80000000) == 0)
        {
LABEL_28:
          v36 = sub_29A0A5C5C(v12, v34, a6);
LABEL_42:
          *(a5 + 4 * v23[1]) = v64;
          *(a5 + 4 * v23[2]) = v64;
          v32 = *(v36 + 4 * ((v35 + 1) & 3));
          goto LABEL_56;
        }
      }

      v36 = v12[6] + 4 * *(v12[3] + 4 * ((2 * v34) | 1));
      goto LABEL_42;
    }

    if ((v25 & v8) != 0)
    {
      v26 = v64;
      *(a5 + 4 * v23[1]) = v64;
      v27 = v23[2];
    }

    else
    {
      if (*(v12[54] + 2 * v17))
      {
        v51 = *(v20 + 4 * v22);
        v52 = *(v24 + 2 * v22);
        v53 = v12[3];
        v54 = v12[9];
        v55 = *(v53 + 8 * v51);
        v56 = v55 + v52;
        if (v52)
        {
          v57 = ~v55;
        }

        else
        {
          v57 = -1;
        }

        v58 = *(v54 + 4 * *(v53 + 4 * ((2 * v51) | 1)) + 4 * (v56 + v57));
        v59 = (v12[21] + 4 * *(v12[18] + 4 * ((2 * v58) | 1)));
        v38 = v59[*v59 == v51];
        v60 = *(v53 + 8 * v38);
        if (v60 < 1)
        {
LABEL_50:
          LOBYTE(v39) = -1;
        }

        else
        {
          v39 = 0;
          v61 = v54 + 4 * *(v53 + 4 * ((2 * v38) | 1));
          while (*(v61 + 4 * v39) != v58)
          {
            if (v60 == ++v39)
            {
              goto LABEL_50;
            }
          }
        }
      }

      else
      {
        if (v22 + 1 < v21)
        {
          LODWORD(v21) = 0;
        }

        v37 = v22 + 1 - v21;
        LODWORD(v38) = *(v20 + 4 * v37);
        LOWORD(v39) = *(v24 + 2 * v37);
      }

      if (a6 < 0)
      {
        v62 = v12[6] + 4 * *(v12[3] + 4 * ((2 * v38) | 1));
      }

      else
      {
        v62 = sub_29A0A5C5C(v12, v38, a6);
      }

      *(a5 + 4 * v23[1]) = *(v62 + 4 * ((v39 - 1) & 3));
      v27 = v23[2];
      v26 = v64;
    }

    *(a5 + 4 * v27) = v26;
    v32 = v26;
LABEL_56:
    *(a5 + 4 * v23[3]) = v32;
    *(a5 + 4 * *v23) = v14[i];
  }

  return 16;
}

uint64_t sub_29A0BBFCC(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a4;
  v120 = a6;
  v117 = a5;
  if ((a4 & 0x80000000) != 0)
  {
    v10 = sub_29A0BB2D8(a1, a2, a3, 0xFFFFFFFF);
    a5 = v117;
    a6 = v120;
    v6 = v10;
  }

  v11 = 0;
  if (v6)
  {
    v12 = v6 & 7;
    v13 = (v6 >> 3) & 3;
    if (v13 <= 1)
    {
      if (!v13)
      {
        v11 = v6 & 7;
        v12 = dword_29B4354DC[v11];
      }

      goto LABEL_10;
    }

    v118 = 0;
    if (v13 == 2)
    {
      v11 = v6 & 7;
      v12 = 7;
LABEL_10:
      v118 = v12;
    }
  }

  else
  {
    v118 = 0;
  }

  v14 = *(*(*(a1 + 8) + 48) + 8 * a2);
  v15 = v14[6] + 4 * *(v14[3] + 4 * ((2 * a3) | 1));
  v16 = v15;
  v119 = v14;
  if ((a6 & 0x80000000) == 0)
  {
    v17 = sub_29A0A5C5C(v14, a3, a6);
    v14 = v119;
    a5 = v117;
    a6 = v120;
    v16 = v17;
  }

  if (v6 && *(a1 + 24) == 1)
  {
    v18 = *v16;
  }

  else
  {
    v18 = -1;
  }

  v116 = v18;
  v19 = 0;
  v115 = v16;
  do
  {
    v20 = *(v15 + 4 * v19);
    v21 = v14[33];
    v22 = *(v21 + 8 * v20 + 4);
    v23 = v14[36] + 4 * v22;
    v24 = *(v21 + 8 * v20);
    if (v24 < 1)
    {
LABEL_22:
      LODWORD(v25) = -1;
    }

    else
    {
      v25 = 0;
      while (*(v23 + 4 * v25) != a3)
      {
        if (v24 == ++v25)
        {
          goto LABEL_22;
        }
      }
    }

    v26 = (&unk_29B435480 + 16 * v19);
    v27 = v14[39] + 2 * v22;
    if (!v6 || ((1 << v19) & v118) == 0)
    {
      v31 = v15;
      v32 = v11;
      v33 = v6;
      v34 = vdup_n_s32(v25);
      v35 = vadd_s32(vadd_s32(v34, 0x300000002), (*&vmvn_s8(vcgt_s32(0x300000004, v34)) & 0xFFFFFFFAFFFFFFFALL));
      v36 = *(v23 + 4 * v35.i32[0]);
      v37 = *(v23 + 4 * v35.i32[1]);
      v38 = *(v27 + 2 * v35.i32[0]);
      v39 = *(v27 + 2 * v35.i32[1]);
      if (a6 < 0)
      {
        v42 = v14[3];
        v43 = v14[6];
        v40 = v43 + 4 * *(v42 + 4 * ((2 * v36) | 1));
        v41 = v43 + 4 * *(v42 + 4 * ((2 * v37) | 1));
      }

      else
      {
        v40 = sub_29A0A5C5C(v14, v36, a6);
        v41 = sub_29A0A5C5C(v119, v37, v120);
        v26 = (&unk_29B435480 + 16 * v19);
        v14 = v119;
        a5 = v117;
        a6 = v120;
      }

      *(a5 + 4 * v26[1]) = *(v40 + 4 * dword_29B4354FC[v38 + 1]);
      v44 = &dword_29B4354FC[v39];
      *(a5 + 4 * v26[2]) = *(v41 + 4 * *(v44 + 1));
      v45 = *(v41 + 4 * *(v44 + 2));
      v6 = v33;
      v11 = v32;
      v15 = v31;
      v16 = v115;
      goto LABEL_96;
    }

    v28 = (1 << dword_29B4354FC[v19 + 2]) & v11;
    if (((1 << v19) & v11) == 0)
    {
      if (!v28)
      {
        if (*(v14[54] + 2 * v20))
        {
          v102 = *(v23 + 4 * v25);
          v103 = *(v27 + 2 * v25);
          v104 = v14[3];
          v105 = v14[9];
          v106 = *(v104 + 8 * v102);
          v107 = v106 + v103;
          if (v103)
          {
            v108 = ~v106;
          }

          else
          {
            v108 = -1;
          }

          v109 = *(v105 + 4 * *(v104 + 4 * ((2 * v102) | 1)) + 4 * (v107 + v108));
          v110 = (v14[21] + 4 * *(v14[18] + 4 * ((2 * v109) | 1)));
          v57 = v110[*v110 == v102];
          v111 = *(v104 + 8 * v57);
          if (v111 < 1)
          {
LABEL_90:
            v58 = -1;
          }

          else
          {
            v58 = 0;
            v112 = v105 + 4 * *(v104 + 4 * ((2 * v57) | 1));
            while (*(v112 + 4 * v58) != v109)
            {
              if (v111 == ++v58)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else
        {
          v55 = v25 + 1;
          if (v55 < v24)
          {
            LODWORD(v24) = 0;
          }

          v56 = v55 - v24;
          LODWORD(v57) = *(v23 + 4 * v56);
          v58 = *(v27 + 2 * v56);
        }

        if (a6 < 0)
        {
          v113 = v14[6] + 4 * *(v14[3] + 4 * ((2 * v57) | 1));
        }

        else
        {
          v113 = sub_29A0A5C5C(v14, v57, a6);
          v26 = (&unk_29B435480 + 16 * v19);
          v14 = v119;
          a5 = v117;
          a6 = v120;
        }

        *(a5 + 4 * v26[1]) = *(v113 + 4 * *(dword_29B4354FC + (((v58 << 32) + 0x200000000) >> 30)));
        v30 = v26[2];
        v29 = v116;
        goto LABEL_95;
      }

      v46 = v24 + v25 - 2;
      if (v46 >= v24)
      {
        v47 = v24;
      }

      else
      {
        v47 = 0;
      }

      if (*(v14[54] + 2 * v20))
      {
        v59 = *(v23 + 4 * v25);
        v60 = *(v27 + 2 * v25);
        v61 = v14[3];
        v62 = v14[9];
        v63 = *(v62 + 4 * *(v61 + 4 * ((2 * v59) | 1)) + 4 * v60);
        v64 = v14[21];
        v65 = v14[18];
        v66 = (v64 + 4 * *(v65 + 8 * v63 + 4));
        v67 = *v66 == v59;
        if (v24 < 1)
        {
LABEL_52:
          v68 = -1;
        }

        else
        {
          v68 = 0;
          v69 = v66[v67];
          while (*(v23 + 4 * v68) != v69)
          {
            if (v24 == ++v68)
            {
              goto LABEL_52;
            }
          }
        }

        v70 = *(v23 + 4 * v68);
        v71 = *(v62 + 4 * *(v61 + 4 * ((2 * v70) | 1)) + 4 * *(v27 + 2 * v68));
        v72 = (v64 + 4 * *(v65 + 4 * ((2 * v71) | 1)));
        v48 = v72[*v72 == v70];
        v73 = *(v61 + 8 * v48);
        if (v73 < 1)
        {
LABEL_57:
          v75 = 0;
        }

        else
        {
          v74 = (v62 + 4 * *(v61 + 4 * ((2 * v48) | 1)));
          v75 = 1;
          while (1)
          {
            v76 = *v74++;
            if (v76 == v71)
            {
              break;
            }

            ++v75;
            if (!--v73)
            {
              goto LABEL_57;
            }
          }
        }

        v77 = *(v61 + 8 * v70);
        if (v75 < v77)
        {
          v77 = 0;
        }

        v49 = v75 - v77;
        if ((a6 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        LODWORD(v48) = *(v23 + 4 * (v46 - v47));
        v49 = *(v27 + 2 * (v46 - v47));
        if ((a6 & 0x80000000) == 0)
        {
LABEL_38:
          v50 = sub_29A0A5C5C(v14, v48, a6);
          v26 = (&unk_29B435480 + 16 * v19);
          v14 = v119;
          a5 = v117;
          a6 = v120;
LABEL_62:
          *(a5 + 4 * v26[1]) = v116;
          *(a5 + 4 * v26[2]) = v116;
          v45 = *(v50 + 4 * dword_29B4354FC[v49 + 1]);
          goto LABEL_96;
        }
      }

      v50 = v14[6] + 4 * *(v14[3] + 4 * ((2 * v48) | 1));
      goto LABEL_62;
    }

    if (v28)
    {
      v29 = v116;
      *(a5 + 4 * v26[1]) = v116;
      v30 = v26[2];
LABEL_95:
      *(a5 + 4 * v30) = v29;
      v45 = v29;
      goto LABEL_96;
    }

    v51 = v25 + 2;
    if (v25 + 2 >= v24)
    {
      v52 = v24;
    }

    else
    {
      v52 = 0;
    }

    if (*(v14[54] + 2 * v20))
    {
      v78 = *(v23 + 4 * v25);
      v79 = *(v27 + 2 * v25);
      v80 = v14[3];
      v81 = v14[9];
      v82 = *(v80 + 8 * v78);
      v83 = v82 + v79;
      if (v79)
      {
        v84 = ~v82;
      }

      else
      {
        v84 = -1;
      }

      v85 = *(v81 + 4 * *(v80 + 4 * ((2 * v78) | 1)) + 4 * (v83 + v84));
      v86 = v14[21];
      v87 = v14[18];
      v88 = (v86 + 4 * *(v87 + 8 * v85 + 4));
      v89 = *v88 == v78;
      if (v24 < 1)
      {
LABEL_70:
        v90 = -1;
      }

      else
      {
        v90 = 0;
        v91 = v88[v89];
        while (*(v23 + 4 * v90) != v91)
        {
          if (v24 == ++v90)
          {
            goto LABEL_70;
          }
        }
      }

      v92 = *(v23 + 4 * v90);
      v93 = *(v27 + 2 * v90);
      v94 = *(v80 + 8 * v92);
      v95 = v94 + v93;
      LODWORD(v54) = -1;
      if (v93)
      {
        v96 = ~v94;
      }

      else
      {
        v96 = -1;
      }

      v97 = *(v81 + 4 * *(v80 + 4 * ((2 * v92) | 1)) + 4 * (v95 + v96));
      v98 = (v86 + 4 * *(v87 + 4 * ((2 * v97) | 1)));
      v53 = v98[*v98 == v92];
      v99 = *(v80 + 8 * v53);
      if (v99 >= 1)
      {
        v54 = 0;
        while (*(v81 + 4 * *(v80 + 4 * ((2 * v53) | 1)) + 4 * v54) != v97)
        {
          if (v99 == ++v54)
          {
            LODWORD(v54) = -1;
            break;
          }
        }
      }
    }

    else
    {
      LODWORD(v53) = *(v23 + 4 * (v51 - v52));
      LODWORD(v54) = *(v27 + 2 * (v51 - v52));
    }

    if (a6 < 0)
    {
      v100 = v14[6] + 4 * *(v14[3] + 4 * ((2 * v53) | 1));
    }

    else
    {
      v100 = sub_29A0A5C5C(v14, v53, a6);
      v26 = (&unk_29B435480 + 16 * v19);
      v14 = v119;
      a5 = v117;
      a6 = v120;
    }

    v101 = &dword_29B4354FC[v54];
    *(a5 + 4 * v26[1]) = *(v100 + 4 * *(v101 + 1));
    *(a5 + 4 * v26[2]) = *(v100 + 4 * *(v101 + 2));
    v45 = v116;
LABEL_96:
    *(a5 + 4 * v26[3]) = v45;
    *(a5 + 4 * *v26) = v16[v19++];
  }

  while (v19 != 3);
  return 12;
}

uint64_t sub_29A0BC760(uint64_t a1, int a2, int a3, uint64_t a4, _DWORD *a5, int a6)
{
  if (*(a1 + 36) == 1)
  {

    return sub_29A0BBB18(a1, a2, a3, a5, a6);
  }

  else if (*(a1 + 32) == 4)
  {
    sub_29A0BBB98(a1, a2, a3, a4, a5, a6);
    return 16;
  }

  else
  {
    sub_29A0BBFCC(a1, a2, a3, a4, a5, a6);
    return 12;
  }
}

uint64_t sub_29A0BC7B8(uint64_t result, int a2)
{
  *(result + 32) = 0;
  *(result + 24) = a2;
  *(result + 28) = a2;
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = a2 == 4;
    if (a2 == 4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    if (a2 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (a2 == 4)
    {
      v8 = 24;
    }

    else
    {
      v8 = 16;
    }

    v9 = 72;
    do
    {
      v10 = 0;
      if (v6 >= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = 0;
      }

      v12 = v6 - v11;
      if (++v3 >= a2)
      {
        v13 = a2;
      }

      else
      {
        v13 = 0;
      }

      v14 = result + 6 * v12;
      if (*v14 == 2)
      {
        v10 = (*(v14 + 4) & 1) == 0;
      }

      v15 = *(result + v2);
      if (v15 == 2)
      {
        v16 = ~(32 * *(result + v2 + 4)) & 0x20;
      }

      else
      {
        v16 = 0;
      }

      v17 = result - 6 * v13;
      v18 = *(v17 + v2 + 6);
      v19 = v18 == 2 && (*(v17 + v2 + 10) & 1) == 0;
      v20 = result + v2;
      v21 = *(result + v2 + 4);
      if ((v10 | v19))
      {
        v22 = 64;
      }

      else
      {
        v22 = 0;
      }

      v23 = v21 & 0x9F | v16 | v22;
      *(v20 + 4) = v23;
      if ((v21 & 1u) + v15 < 3)
      {
        *(v20 + 4) = v23 & 0xE7;
        v26 = result + v9;
        if (v15 == 1)
        {
          v27 = 0;
          *(v26 - 32) = a2 - 1;
          *(v26 - 16) = 0;
          v28 = a2 - 1;
        }

        else
        {
          *(v26 - 32) = v7;
          *(v26 - 16) = v5;
          v27 = a2 == 4;
          v28 = v7;
        }
      }

      else
      {
        if (v21)
        {
          v24 = 8 * (v15 - 1 != *(result + v2 + 2));
          if (a2 != 4)
          {
            v24 = 0;
          }

          v25 = v24 | v23 & 0xE7 | (16 * (*(result + v2 + 2) != 0));
        }

        else if ((v21 & 4) != 0)
        {
          v29 = (*(v14 + 4) & 1) == 0 || *(v14 + 2) != 0;
          v30 = v17 + v2;
          if (*(v30 + 10))
          {
            v31 = 16 * (v18 - 1 != *(v30 + 8));
          }

          else
          {
            v31 = 16;
          }

          if (a2 == 4 && v29)
          {
            v32 = 8;
          }

          else
          {
            v32 = 0;
          }

          v25 = v32 | v31 | v23 & 0xE7;
        }

        else
        {
          v25 = v8 | v23 & 0xE7;
        }

        *(v20 + 4) = v25;
        v28 = (v15 << v5) + (v25 & 1);
        v33 = result + v9;
        *(v33 - 32) = v28;
        v27 = v28 - (((*(v20 + 4) >> 3) & 1) + a2 + ((*(v20 + 4) >> 4) & 1)) + 1;
        *(v33 - 16) = v27;
        if ((*(v20 + 4) & 0x40) != 0)
        {
          v34 = v10 << 31 >> 31;
          if (a2 != 4)
          {
            v19 = 0;
          }

          v27 += v34 - v19;
          *(v33 - 16) = v27;
        }
      }

      v35 = *(result + 28);
      *(result + v9) = v35;
      v36 = (*(v20 + 4) & 1) + v15;
      if (*(result + 32) > v36)
      {
        v36 = *(result + 32);
      }

      if (v4 <= v28)
      {
        v4 = v28;
      }

      *(result + 28) = v27 + v35;
      *(result + 32) = v36;
      v2 += 6;
      v9 += 4;
      ++v6;
    }

    while (a2 != v3);
    *(result + 36) = v4;
  }

  return result;
}

uint64_t sub_29A0BCA78(uint64_t a1, int a2, int a3, uint64_t a4, _DWORD *a5, uint64_t a6, unsigned int a7)
{
  v89 = *MEMORY[0x29EDCA608];
  v70 = a5[7];
  v13 = a5[9];
  v84 = &v87;
  v85 = v13;
  v86 = 64;
  v88 = 0;
  if (v13 <= 0x40)
  {
    v15 = 0;
    __src = v82;
    __p = 0;
  }

  else
  {
    v14 = operator new(4 * v13);
    v15 = 0;
    v88 = v14;
    __p = 0;
    v84 = v14;
    v86 = v13;
    v16 = a5[9];
    __src = v82;
    if (v16 >= 0x41)
    {
      v15 = operator new(4 * v16);
      __p = v15;
      __src = v15;
    }
  }

  LODWORD(v17) = a5[6];
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = *(*(*(a1 + 8) + 48) + 8 * a2);
    v72 = a5;
    v73 = v19[6] + 4 * *(v19[3] + 4 * ((2 * a3) | 1));
    v71 = a6;
    do
    {
      v20 = *(v73 + 4 * v18);
      *v75 = v18;
      v21 = (a4 + 8 * v18);
      v22 = *v21;
      if (*v21)
      {
        v23 = 0;
        v24 = 0;
        v25 = v84;
        v80 = *(v19[54] + 2 * v20);
        v26 = v19[33];
        v27 = *(v26 + 4 * ((2 * v20) | 1));
        v78 = *(v26 + 8 * v20);
        v77 = v19[39] + 2 * v27;
        LODWORD(v28) = *(v77 + 2 * v21[1]);
        v79 = v19[36] + 4 * v27;
        LODWORD(v29) = *(v79 + 4 * v21[1]);
        v76 = v21[1] + 1;
        do
        {
          if ((a7 & 0x80000000) != 0)
          {
            v32 = v19[3];
            v30 = v19[6] + 4 * *(v32 + 8 * v29 + 4);
            v31 = *(v32 + 8 * v29);
          }

          else
          {
            v30 = sub_29A0A5C5C(v19, v29, a7);
          }

          v33 = v28 + 1;
          if (v31 == 4)
          {
            v34 = (v25 + 4 * v23);
            *v34 = *(v30 + 4 * (v33 & 3));
            v23 += 2;
            v34[1] = *(v30 + 4 * (v28 & 3 ^ 2));
          }

          else
          {
            *(v25 + 4 * v23++) = *(v30 + 4 * dword_29B4354FC[v33]);
          }

          if (v24 == v22 - 1)
          {
            if ((v21[3] & 1) == 0)
            {
              if (v31 == 4)
              {
                v35 = *(v30 + 4 * ((v28 - 1) & 3));
              }

              else
              {
                v35 = *(v30 + 4 * dword_29B4354FC[v28 + 2]);
              }

              *(v25 + 4 * v23++) = v35;
            }
          }

          else if (v80)
          {
            v38 = v31 + v28;
            v39 = v28 <= 0;
            LODWORD(v28) = -1;
            if (v39)
            {
              v40 = -1;
            }

            else
            {
              v40 = ~v31;
            }

            v41 = v19[3];
            v42 = v19[9];
            v43 = *(v42 + 4 * *(v41 + 8 * v29 + 4) + 4 * (v38 + v40));
            v44 = (v19[21] + 4 * *(v19[18] + 4 * ((2 * v43) | 1)));
            v29 = v44[*v44 == v29];
            v45 = *(v41 + 8 * v29);
            if (v45 >= 1)
            {
              v28 = 0;
              v46 = v42 + 4 * *(v41 + 4 * ((2 * v29) | 1));
              while (*(v46 + 4 * v28) != v43)
              {
                if (v45 == ++v28)
                {
                  LODWORD(v28) = -1;
                  break;
                }
              }
            }
          }

          else
          {
            v36 = v78;
            if (v76 + v24 < v78)
            {
              v36 = 0;
            }

            v37 = v76 + v24 - v36;
            LODWORD(v29) = *(v79 + 4 * v37);
            LODWORD(v28) = *(v77 + 2 * v37);
          }

          ++v24;
        }

        while (v24 != v22);
      }

      else
      {
        v47 = v84;
        if (v17 == 4)
        {
          sub_29A0A5B60(v19, v20, v84, a7);
        }

        else
        {
          v48 = v19[33];
          v49 = *(v48 + 8 * v20);
          if (v49 >= 1)
          {
            v50 = 0;
            v51 = *(v19[42] + 8 * v20);
            v52 = *(v48 + 8 * v20 + 4);
            v53 = (v19[36] + 4 * v52);
            v54 = (v19[39] + 2 * v52);
            v55 = (v49 - 1);
            v56 = v49;
            do
            {
              v58 = *v53++;
              v57 = v58;
              if ((a7 & 0x80000000) != 0)
              {
                v59 = v19[6] + 4 * *(v19[3] + 4 * ((2 * v57) | 1));
              }

              else
              {
                v59 = sub_29A0A5C5C(v19, v57, a7);
              }

              v60 = &dword_29B4354FC[*v54];
              v61 = v50 + 1;
              *(v47 + 4 * v50) = *(v59 + 4 * v60[1]);
              if (v51 > v49 && !v55)
              {
                *(v47 + 4 * v61) = *(v59 + 4 * v60[2]);
                LODWORD(v61) = v50 + 2;
              }

              --v55;
              ++v54;
              v50 = v61;
              --v56;
            }

            while (v56);
          }
        }
      }

      v62 = sub_29A0BCF94(v72, v75[0], __src);
      if (v62 >= 1)
      {
        v63 = v84;
        v64 = __src;
        v65 = v62;
        do
        {
          v67 = *v63++;
          v66 = v67;
          v68 = *v64;
          v64 += 4;
          *(v71 + 4 * v68) = v66;
          --v65;
        }

        while (v65);
      }

      v18 = *v75 + 1;
      v17 = *(v72 + 24);
    }

    while (*v75 + 1 < v17);
    v15 = __p;
  }

  operator delete(v15);
  operator delete(v88);
  return v70;
}

uint64_t sub_29A0BCF94(uint64_t a1, int a2, char *__src)
{
  v3 = *(a1 + 24);
  v4 = a2;
  v5 = a2 + 1;
  if (v5 >= v3)
  {
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 - v6;
  if (v3 == 4)
  {
    LODWORD(v5) = a2 + 2;
    v8 = a2 + 1;
  }

  else
  {
    v8 = a2;
  }

  if (v5 >= v3)
  {
    v9 = *(a1 + 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = v5 - v9;
  v11 = v8 + 2;
  if (v8 + 2 >= v3)
  {
    v12 = *(a1 + 24);
  }

  else
  {
    v12 = 0;
  }

  v13 = v11 - v12;
  *__src = v7;
  if (v3 == 4)
  {
    *(__src + 1) = v10;
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 + 1;
  *&__src[4 * v14] = v13;
  if ((*(a1 + 6 * v13 + 4) & 0x20) != 0)
  {
    if (v3 == 4)
    {
      v16 = v10;
    }

    else
    {
      v16 = v7;
    }

    *&__src[4 * v15] = v16;
    v15 = v14 + 2;
  }

  v17 = a1 + 6 * a2;
  if ((*(v17 + 4) & 8) != 0)
  {
    *&__src[4 * v15] = *(a1 + 4 * v13 + 72) + *(a1 + 4 * v13 + 56) - 1;
    v15 = (v15 + 1);
  }

  v18 = a1 + 56;
  if (*(a1 + 56 + 4 * v4) >= 1)
  {
    v19 = 0;
    v15 = v15;
    do
    {
      *&__src[4 * v15++] = v19 + *(a1 + 72 + 4 * v4);
      ++v19;
    }

    while (v19 < *(v18 + 4 * v4));
  }

  if (v3 == 4)
  {
    if ((*(v17 + 4) & 0x10) != 0)
    {
      *&__src[4 * v15] = *(a1 + 4 * v7 + 72);
      v15 = (v15 + 1);
    }

    else
    {
      v7 = v7;
    }

    if ((*(a1 + 6 * v7 + 4) & 0x20) == 0)
    {
      goto LABEL_35;
    }

    v21 = (v15 + 1);
    goto LABEL_37;
  }

  if ((*(v17 + 4) & 0x10) == 0)
  {
LABEL_35:
    v21 = v15;
    goto LABEL_39;
  }

  if ((*(a1 + 6 * v7 + 4) & 0x20) == 0)
  {
    v20 = a1 + 72;
    v21 = (v15 + 1);
    if (*(v18 + 4 * v7))
    {
      v10 = *(v20 + 4 * v7);
    }

    else
    {
      v10 = *(v20 + 4 * v13);
    }

LABEL_37:
    *&__src[4 * v15] = v10;
    goto LABEL_39;
  }

  v21 = (v15 + 1);
  *&__src[4 * v15] = v13;
LABEL_39:
  if (*(v17 + 2))
  {
    sub_29A0BD4E8(__src, &__src[4 * (v21 - (*(v17 + 2) << (v3 == 4)))], &__src[4 * v21]);
  }

  return v21;
}

uint64_t sub_29A0BD160(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_29A0BAC54(a1, a2, a3, a4, v13);
  return sub_29A0BCA78(a1, a2, a3, a4, v13, a5, a6);
}

uint64_t sub_29A0BD1E8(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  if (*(a1 + 32) == 4)
  {
    return sub_29A0A5C8C(*(*(*(a1 + 8) + 48) + 8 * a2), a3, a4 + 1, a4);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29A0BD218(uint64_t a1, int a2, int a3, void *a4, int a5, char a6, char a7)
{
  v11 = *(a1 + 32);
  v12 = *(a1 + 8);
  v13 = *(*(*(v12[12] + 24 * a2) + 24) + 8 * a3) != v11;
  if (a2 < 1)
  {
    v36 = a6;
    v37 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    LODWORD(v21) = a3;
    goto LABEL_45;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v12[9];
  v19 = v12[6];
  v20 = 1;
  LODWORD(v21) = a3;
  v22 = a2;
  do
  {
    v23 = *(v18 + 8 * (v22 - 1));
    v24 = v21;
    v21 = *(v23[33] + 4 * v21);
    v25 = *(*(*(v19 + 8 * (v22 - 1)) + 24) + 8 * v21);
    v13 = v25 != v11;
    if (v11 == 3)
    {
      v14 = (*(v23[42] + v24) >> 3) & 3;
      if (v17)
      {
        if (((*(v23[42] + v24) >> 3) & 3u) > 1)
        {
          if (v14 == 2)
          {
            v16 -= v20;
            v17 = 1;
          }

          else
          {
            v17 = 0;
            v15 += v20;
            v16 += v20;
          }
        }

        else
        {
          v17 = 1;
          if (v14)
          {
            v15 -= v20;
          }
        }
      }

      else
      {
        v30 = v15 - v20;
        v31 = v16 - v20;
        if (v14 == 2)
        {
          v31 = v16 + v20;
          v30 = v15;
        }

        if (v14)
        {
          v32 = v15 + v20;
        }

        else
        {
          v32 = v15;
        }

        v17 = v14 > 1 && v14 != 2;
        if (v14 <= 1)
        {
          v15 = v32;
        }

        else
        {
          v16 = v31;
          v15 = v30;
        }
      }

LABEL_33:
      v20 = 2 * (v20 & 0x7FFF);
      continue;
    }

    if (v25 == v11)
    {
      v14 = (*(v23[42] + v24) >> 3) & 3;
      v33 = v15 + v20;
      if (v14 == 2)
      {
        v34 = v15 + v20;
      }

      else
      {
        v34 = v15;
      }

      if (!v14)
      {
        v33 = v15;
      }

      if (v14 <= 1)
      {
        v15 = v33;
      }

      else
      {
        v16 += v20;
        v15 = v34;
      }

      goto LABEL_33;
    }

    v26 = v23[11];
    v27 = *(v26 + 8 * v21);
    if (v27 >= 1)
    {
      v28 = 0;
      v29 = v23[15] + 4 * *(v26 + 4 * ((2 * v21) | 1));
      while (*(v29 + 4 * v28) != v24)
      {
        if (v27 == ++v28)
        {
          goto LABEL_34;
        }
      }

      v14 = v28;
    }

LABEL_34:
    ;
  }

  while (v22-- > 1);
  v36 = a6;
  if (v17)
  {
    v37 = v20;
  }

  else
  {
    v37 = 0;
  }

LABEL_45:
  v38 = sub_29A0C2FB4(a4, v21);
  if ((a7 & 1) != 0 && (v39 = *(a1 + 8), ((*(v39 + 8) >> 6) & 0xF) > a2))
  {
    v40 = (*(*(*(*(v39 + 72) + 8 * a2) + 408) + a3) << 27) & 0xF0000000;
  }

  else
  {
    v40 = 0;
  }

  if (a5)
  {
    v41 = 32;
  }

  else
  {
    v41 = 0;
  }

  if (v13)
  {
    v42 = v14;
  }

  else
  {
    v42 = 0;
  }

  v43 = v40 | (v38 + v42) & 0xFFFFFFF;
  v44 = v41 & 0xFFFFF070 | a2 & 0xF | ((v36 & 0x1F) << 7);
  if (v13)
  {
    v45 = 16;
  }

  else
  {
    v45 = 0;
  }

  return v43 | ((v44 | ((v15 + v37) << 22) | (((v16 + v37) & 0x3FF) << 12) | v45) << 32);
}

char *sub_29A0BD4E8(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    if (a2 == a3)
    {
      return __src;
    }

    else if (__src + 4 == a2)
    {
      v6 = *__src;
      v7 = a3 - a2;
      memmove(__src, __src + 4, a3 - a2);
      v4 = &__src[v7];
      *v4 = v6;
    }

    else if (a2 + 4 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 4;
      v9 = a3 - 4 - __src;
      if (a3 - 4 != __src)
      {
        memmove(__src + 4, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_29A0BD5B0(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_29A0BD5B0(char *a1, char *a2, char *a3)
{
  v3 = a2 - a1;
  v4 = (a2 - a1) >> 2;
  v5 = a3 - a2;
  if (v4 == (a3 - a2) >> 2)
  {
    if (a1 != a2 && a2 != a3)
    {
      v6 = a2 + 4;
      v7 = a1 + 4;
      do
      {
        v8 = *(v7 - 1);
        *(v7 - 1) = *(v6 - 1);
        *(v6 - 1) = v8;
        if (v7 == a2)
        {
          break;
        }

        v7 += 4;
        v9 = v6 == a3;
        v6 += 4;
      }

      while (!v9);
    }
  }

  else
  {
    v10 = v5 >> 2;
    v11 = (a2 - a1) >> 2;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = &a1[4 * v11];
    do
    {
      v15 = *(v13 - 1);
      v13 -= 4;
      v14 = v15;
      v16 = &v13[v3];
      v17 = v13;
      do
      {
        v18 = v17;
        v17 = v16;
        *v18 = *v16;
        v19 = __OFSUB__(v4, (a3 - v16) >> 2);
        v21 = v4 - ((a3 - v16) >> 2);
        v20 = (v21 < 0) ^ v19;
        v16 = &a1[4 * v21];
        if (v20)
        {
          v16 = v17 + v3;
        }
      }

      while (v16 != v13);
      *v17 = v14;
    }

    while (v13 != a1);
    return &a1[v5];
  }

  return a2;
}

uint64_t sub_29A0BD67C(_DWORD *a1)
{
  v1 = *a1 - 1;
  if (v1 > 9)
  {
    return -1;
  }

  else
  {
    return word_29B435514[v1];
  }
}

double sub_29A0BD6C0(uint64_t a1, int a2)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 3;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) &= 0xF0u;
  return result;
}

void sub_29A0BD724(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    sub_29A0BE500(a1, a2 - v2);
  }
}

uint64_t sub_29A0BD754(uint64_t a1)
{
  v2 = *(a1 + 272);
  v3 = *(a1 + 128);
  if ((v2 & 2) != 0)
  {
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  (*(*v3 + 8))(v3);
LABEL_6:
  v4 = *(a1 + 136);
  if ((*(a1 + 272) & 4) != 0)
  {
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else if (!v4)
  {
    goto LABEL_11;
  }

  (*(*v4 + 8))(v4);
LABEL_11:
  v5 = *(a1 + 200);
  if (((*(a1 + 208) - v5) >> 3) >= 1)
  {
    for (i = 0; i < ((*(a1 + 208) - v5) >> 3); ++i)
    {
      v7 = *(v5 + 8 * i);
      if ((*(a1 + 272) & 8) != 0)
      {
        if (v7)
        {
LABEL_17:
          (*(*v7 + 8))(v7);
        }
      }

      else if (v7)
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 200);
    }
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    *(a1 + 256) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 224);
  if (v9)
  {
    *(a1 + 232) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    *(a1 + 208) = v10;
    operator delete(v10);
  }

  v18 = (a1 + 176);
  sub_29A0BE1A4(&v18);
  v11 = *(a1 + 152);
  if (v11)
  {
    *(a1 + 160) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 104);
  if (v12)
  {
    *(a1 + 112) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    *(a1 + 88) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    *(a1 + 64) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    *(a1 + 40) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    *(a1 + 16) = v16;
    operator delete(v16);
  }

  return a1;
}

void sub_29A0BD980(uint64_t *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 >= 0xCCCCCCCCCCCCCCDLL)
    {
      sub_29A00C9A4();
    }

    v3 = a1[1] - *a1;
    v9 = a1;
    __p = sub_29A0BE284(a1, a2);
    v6 = __p + v3;
    v7 = __p + v3;
    v8 = __p + 20 * v4;
    sub_29A0BE614(a1, &__p);
    if (v7 != v6)
    {
      v7 = &v6[(v7 - v6 - 20) % 0x14uLL];
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_29A0BDA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0BDAA4(uint64_t a1, _DWORD *a2, int a3)
{
  *(a1 + 144) = *a2;
  v4 = (sub_29A0BD67C(a2) * a3);

  sub_29A0A171C((a1 + 152), v4);
}

void sub_29A0BDB00(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 6;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = (*a1 + (a2 << 6));
      while (v3 != v6)
      {
        v3 -= 8;
        sub_29A0BE22C(a1, v3);
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_29A0BE68C(a1, v5);
  }
}

void sub_29A0BDB90(uint64_t a1, _DWORD *a2, _DWORD *a3, int a4, int a5)
{
  v7 = *(a1 + 176) + (a5 << 6);
  *(v7 + 4) = *a2;
  *(v7 + 8) = *a3;
  v8 = sub_29A0BD67C(a2);
  v9 = sub_29A0BD67C(a3);
  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  *(v7 + 12) = v10;
  sub_29A0A171C((v7 + 16), v10 * a4);

  sub_29A0BD724((v7 + 40), a4);
}

uint64_t *sub_29A0BDC30(uint64_t *result, int *a2, int a3, unsigned int *a4, unsigned int *a5, _DWORD *a6)
{
  if (a3 >= 1)
  {
    v23 = v6;
    v24 = v7;
    v13 = result;
    v14 = *a2;
    v15 = *a4;
    v16 = *a5;
    v17 = a6 ? *a6 : 0;
    v21 = *a2;
    *&v22 = __PAIR64__(v15, a3);
    *(&v22 + 1) = __PAIR64__(v17, v16);
    v18 = result[2];
    if (v18 >= result[3])
    {
      v19 = sub_29A0BE990(result + 1, &v21);
    }

    else
    {
      *v18 = v14;
      *(v18 + 4) = v22;
      v19 = v18 + 20;
    }

    v13[2] = v19;
    v21 = *a2;
    result = sub_29A0BD67C(&v21);
    v20 = result * a3;
    *a4 += result * a3;
    *a5 += a3;
    if (a6)
    {
      if (*a2 != 7)
      {
        v20 = 0;
      }

      *a6 += v20;
    }
  }

  return result;
}

uint64_t sub_29A0BDDA0(uint64_t a1, int a2)
{
  v2 = *(*(a1 + 8) + 20 * a2 + 4);
  v4 = *(*(a1 + 8) + 20 * a2);
  return v2 * sub_29A0BD67C(&v4);
}

uint64_t sub_29A0BDDE4(uint64_t a1, int a2)
{
  v3 = (*(a1 + 8) + 20 * a2);
  v5 = *v3;
  sub_29A0BD67C(&v5);
  return *(a1 + 32) + 4 * v3[2];
}

void sub_29A0BDF28(void *a1)
{
  v1 = sub_29A0BDF50(a1);

  operator delete(v1);
}

void *sub_29A0BDF50(void *a1)
{
  *a1 = &unk_2A203ED18;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_29A0BDFD0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A203ED48;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  sub_29A0BE2C8((a1 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_29A0BE2C8((a1 + 40), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_29A0BE2C8((a1 + 64), *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 2);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_29A0BE484((a1 + 88), *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  return a1;
}

void sub_29A0BE0AC(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[9] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[6] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[3] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0BE0FC(void *a1)
{
  v1 = sub_29A0BE124(a1);

  operator delete(v1);
}

void *sub_29A0BE124(void *a1)
{
  *a1 = &unk_2A203ED48;
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[6] = v4;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_29A0BE1A4(void ***a1)
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
        v4 -= 8;
        sub_29A0BE22C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_29A0BE22C(uint64_t a1, void *a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    a2[3] = v4;

    operator delete(v4);
  }
}

void *sub_29A0BE284(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xCCCCCCCCCCCCCCDLL)
  {
    sub_29A00C8B8();
  }

  return operator new(20 * a2);
}

void *sub_29A0BE2C8(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0111A4(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A0BE328(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0BE344(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A0BE3A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A0BE3C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 58)
  {
    sub_29A00C8B8();
  }

  return operator new(a2 << 6);
}

uint64_t sub_29A0BE3F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A0BE430(a1);
  }

  return a1;
}

void sub_29A0BE430(uint64_t *a1)
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
      v3 -= 8;
      sub_29A0BE22C(v5, v3);
    }

    while (v3 != v4);
  }
}

void *sub_29A0BE484(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A0111A4(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29A0BE4E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0BE500(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      v11 = sub_29A00C9BC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[8 * v8];
    v13 = &v11[8 * v10];
    bzero(v12, 8 * a2);
    v14 = &v12[8 * a2];
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

uint64_t *sub_29A0BE614(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      *v5 = *v2;
      *(v5 + 4) = *(v2 + 4);
      v2 += 20;
      v5 += 20;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v6 = result[1];
  result[1] = a2[2];
  a2[2] = v6;
  v7 = result[2];
  result[2] = a2[3];
  a2[3] = v7;
  *a2 = a2[1];
  return result;
}

void sub_29A0BE68C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 6;
    v9 = v4 - *a1;
    if (v9 >> 5 > v7)
    {
      v7 = v9 >> 5;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v19 = a1;
    if (v10)
    {
      v11 = sub_29A0BE3C0(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v16 = v11;
    v17 = &v11[64 * v8];
    *(&v18 + 1) = &v11[64 * v10];
    bzero(v17, a2 << 6);
    *&v18 = &v17[64 * a2];
    v12 = *(a1 + 8);
    v13 = &v17[*a1 - v12];
    sub_29A0BE7B4(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    sub_29A0BE914(&v16);
  }
}

void sub_29A0BE7A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0BE914(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A0BE7B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_29A0BE880(a1, a4, v7);
      v7 += 64;
      a4 = v12 + 8;
      v12 += 8;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      sub_29A0BE22C(a1, v5);
      v5 += 8;
    }
  }

  return sub_29A0BE3F8(v9);
}

void *sub_29A0BE880(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  a2[1] = *(a3 + 8);
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  sub_29A0BE2C8(a2 + 2, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 2);
  a2[5] = 0;
  a2[6] = 0;
  a2[7] = 0;
  return sub_29A0BE344(a2 + 5, *(a3 + 40), *(a3 + 48), (*(a3 + 48) - *(a3 + 40)) >> 3);
}

void sub_29A0BE8F8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29A0BE914(void **a1)
{
  sub_29A0BE948(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A0BE948(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 64;
    sub_29A0BE22C(v4, (i - 64));
  }
}

uint64_t sub_29A0BE990(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    sub_29A00C9A4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 2);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 2) >= 0x666666666666666)
  {
    v6 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    v7 = sub_29A0BE284(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[20 * v2];
  __p = v7;
  v12 = v8;
  v14 = &v7[20 * v6];
  *v8 = *a2;
  *(v8 + 4) = *(a2 + 4);
  v13 = v8 + 20;
  sub_29A0BE614(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = &v12[(v13 - v12 - 20) % 0x14uLL];
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_29A0BEABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A0BEB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 48) = 0;
  v7 = (a1 + 48);
  *(a1 + 56) = 0;
  sub_29A0C2F70((a1 + 64), a2);
  *(a1 + 168) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  if (*(a1 + 10))
  {
    v8 = *(a1 + 12);
    if (v8 == -1)
    {
      sub_29A0A171C((a1 + 168), ((*(**(*a1 + 48) + 464) - *(**(*a1 + 48) + 456)) >> 3));
      v9 = *(a1 + 168);
      v10 = *(a1 + 176) - v9;
      if ((v10 >> 2) >= 1)
      {
        v11 = 0;
        v12 = vdupq_n_s64(((v10 >> 2) & 0x7FFFFFFF) - 1);
        v13 = xmmword_29B433E10;
        v14 = xmmword_29B430070;
        v15 = (v9 + 8);
        v16 = vdupq_n_s64(4uLL);
        do
        {
          v17 = vmovn_s64(vcgeq_u64(v12, v14));
          if (vuzp1_s16(v17, *v12.i8).u8[0])
          {
            *(v15 - 2) = v11;
          }

          if (vuzp1_s16(v17, *&v12).i8[2])
          {
            *(v15 - 1) = v11 + 1;
          }

          if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
          {
            *v15 = v11 + 2;
            v15[1] = v11 + 3;
          }

          v11 += 4;
          v13 = vaddq_s64(v13, v16);
          v14 = vaddq_s64(v14, v16);
          v15 += 4;
        }

        while ((((v10 >> 2) + 3) & 0xFFFFFFFC) != v11);
      }
    }

    else
    {
      sub_29A0C2698((a1 + 168), *(a1 + 16), (*(a1 + 16) + 4 * v8), v8);
    }
  }

  v30 = 1;
  v18 = *(a1 + 8);
  v19 = ((v18 >> 10) & 7) - 1;
  if (v19 < 3)
  {
    HIDWORD(v30) = dword_29B4356F0[v19];
  }

  v31 = 1;
  v32 = (v18 & 0x20) == 0;
  v33 = (v18 & 0x100000) != 0;
  *(a1 + 56) = sub_29A0BAE0C(*a1, &v30);
  v20 = *(a1 + 8);
  v21 = (v20 >> 9) & BYTE1(v20) & 0x40 | (v20 >> 9) & 0x20 | (16 * (*(a1 + 168) != *(a1 + 176))) | *(a1 + 40) & 0x80 | (2 * (v30 != 1)) | (4 * ((v20 & 0x1C00) != 4096)) | (v20 >> 1) & 8 | ((v20 & 0x1C00) != 4096 || v30 != 1);
  *(a1 + 40) = v21;
  v22 = *a1;
  *(a1 + 40) = v21 & 0x7F | (*(*a1 + 8) << 7);
  v23 = operator new(0x118uLL);
  sub_29A0BD6C0(v23, v22[9]);
  *v7 = v23;
  v24 = sub_29A0C2FA8(a1 + 64);
  v25 = *(a1 + 48);
  *(v25 + 4) = v24;
  *(v25 + 272) = *(a1 + 10) & 2 | *(v25 + 272) & 0xFD;
  *(*(a1 + 48) + 272) = *(*(a1 + 48) + 272) & 0xFB | (*(a1 + 8) >> 15) & 4;
  *(*(a1 + 48) + 272) = *(*(a1 + 48) + 272) & 0xF7 | (*(a1 + 8) >> 15) & 8;
  *(*(a1 + 48) + 144) = *(*(a1 + 56) + 52);
  v26 = *a1;
  if (*(*a1 + 8))
  {
    *(a1 + 192) = 0;
  }

  else
  {
    v27 = (*(a1 + 8) & 0x1C00) == 4096;
    *(a1 + 192) = v27;
    if (v27)
    {
      v28 = operator new(0x38uLL);
      *v28 = v26;
      *(v28 + 8) = 0u;
      *(v28 + 24) = 0u;
      *(v28 + 40) = 0u;
      *(a1 + 200) = v28;
    }
  }

  return a1;
}

void sub_29A0BEE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v13 = *v10;
  if (*v10)
  {
    v9[22] = v13;
    operator delete(v13);
  }

  a9 = v10 - 3;
  sub_29A0C25EC(&a9);
  v14 = v9[15];
  if (v14)
  {
    v9[16] = v14;
    operator delete(v14);
  }

  v15 = *v11;
  if (*v11)
  {
    v9[12] = v15;
    operator delete(v15);
  }

  sub_29A0C2F74((v9 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_29A0BEEB0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    v4 = sub_29A0C2140(v3);
    operator delete(v4);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    *(a1 + 176) = v5;
    operator delete(v5);
  }

  v9 = (a1 + 144);
  sub_29A0C25EC(&v9);
  v6 = *(a1 + 120);
  if (v6)
  {
    *(a1 + 128) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    *(a1 + 96) = v7;
    operator delete(v7);
  }

  sub_29A0C2F74(a1 + 64);
  return a1;
}

uint64_t sub_29A0BEF60(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int a4)
{
  v7 = *a2;
  v6 = a2[1];
  if ((a4 & 0x80000000) != 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = *(*(a1 + 168) + 4 * a4);
  }

  result = sub_29A0BB038(*(a1 + 56), a2[1], v7, a4);
  *a3 = result;
  if (v8 >= 0)
  {
    v10 = 0x40000;
  }

  else
  {
    v10 = 0x20000;
  }

  if (result)
  {
    result = sub_29A0BB2D8(*(a1 + 56), v6, v7, v8);
    *(a3 + 1) = 0;
    *(a3 + 4) = result;
    *(a3 + 44) = result;
    if ((*(a1 + 40) & 8) != 0 && v8 < 0 && !result && v6 < ((*(a1 + 8) >> 6) & 0xF))
    {
      result = sub_29A0BD1E8(*(a1 + 56), v6, v7, &v15);
      if (result)
      {
        v11 = (((*(a1 + 8) >> 6) & 0xF) - v6);
        if (v16 <= v11)
        {
          v11 = v16;
        }

        *(a3 + 1) = 1;
        *(a3 + 8) = v11;
        *(a3 + 44) = 1 << v15;
      }
    }
  }

  else if ((*(a1 + 40) & 4) != 0)
  {
    v12 = *(a1 + 8) & v10;
    sub_29A0BB478(*(a1 + 56), v6, v7, (a3 + 12), v8);
    v13 = *(a1 + 56);
    v14 = a3 + 12;
    if (v12)
    {
      result = sub_29A0BAD90(v13, v6, v7, v14, a3 + 136);
    }

    else
    {
      result = sub_29A0BABD8(v13, v6, v7, v14, a3 + 48);
    }

    *(a3 + 44) = 0;
  }

  return result;
}

uint64_t sub_29A0BF0C8(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4, uint64_t a5, unsigned int a6)
{
  v7 = a4;
  v33 = *MEMORY[0x29EDCA608];
  if ((a6 & 0x80000000) != 0)
  {
    v12 = (a1 + 120);
    v11 = -1;
    v13 = 17;
  }

  else
  {
    v11 = *(*(a1 + 168) + 4 * a6);
    v12 = (*(a1 + 144) + 24 * a6);
    v13 = 18;
  }

  v14 = a2[1];
  v15 = *(*v12 + 4 * v14);
  if (*a3 == 1)
  {
    if ((*(a1 + 40) & 2) == 0)
    {
      v16 = sub_29A0BC760(*(a1 + 56), v14, *a2, *(a3 + 4), a4, v11);
      v17 = v16;
      if (v16 >= 1)
      {
        v18 = v16;
        do
        {
          *v7++ += v15;
          --v18;
        }

        while (v18);
      }

      return v17;
    }

    return 0;
  }

  if ((*(a1 + 40) & 4) == 0)
  {
    return 0;
  }

  v19 = *(a1 + 8) & (1 << v13);
  v20 = (a3 + 140);
  if (!v19)
  {
    v20 = (a3 + 52);
  }

  v21 = *v20;
  v28 = (a3 + 48);
  v29 = (a3 + 136);
  if (v19)
  {
    v22 = (a3 + 136);
  }

  else
  {
    v22 = (a3 + 48);
  }

  v17 = *v22;
  v23 = v31;
  v30 = v31;
  __p = 0;
  if (v21 >= 0x41)
  {
    v23 = operator new(4 * v21);
    __p = v23;
    v30 = v23;
    LODWORD(v14) = a2[1];
  }

  sub_29A0BD160(*(a1 + 56), v14, *a2, a3 + 12, v23, v11);
  v25 = *a2;
  v24 = a2[1];
  v26 = *(*(a1 + 56) + 44);
  if (v19)
  {
    sub_29A0BF2D4(a5, v24, v25, v29, v26, v30, v15, v7);
  }

  else
  {
    sub_29A0BF774(a5, v24, v25, v28, v26, v30, v15, v7);
  }

  operator delete(__p);
  return v17;
}

uint64_t sub_29A0BF2D4(uint64_t a1, int a2, int a3, int *a4, int a5, uint64_t a6, int a7, _DWORD *a8)
{
  v14 = *a4;
  v15 = (*(a1 + 16) + *(a1 + 20));
  v16 = &unk_29B43557A;
  if (a5 != 9)
  {
    v16 = 0;
  }

  if (a5 == 3)
  {
    v16 = &unk_29B435570;
  }

  if (*(a1 + 8))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!*(a1 + 80))
  {
    goto LABEL_18;
  }

  if (a5 > 5)
  {
    switch(a5)
    {
      case 6:
        v56 = 0;
        v18 = &unk_29B4355B4;
        goto LABEL_22;
      case 9:
        v56 = 0;
        v18 = &unk_29B435624;
        goto LABEL_22;
      case 10:
        v56 = 0;
        v18 = &unk_29B435674;
        goto LABEL_22;
    }

LABEL_18:
    v54 = 0;
    v56 = 1;
    goto LABEL_23;
  }

  if (a5 == 3 || a5 == 4)
  {
    v56 = 0;
    v18 = &unk_29B4355A4;
    goto LABEL_22;
  }

  if (a5 != 5)
  {
    goto LABEL_18;
  }

  v56 = 0;
  v18 = &unk_29B4355F4;
LABEL_22:
  v54 = v18;
LABEL_23:
  v19 = *(a1 + 72);
  if (!v17)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      if (v14 >= 1)
      {
        v28 = 0;
        LODWORD(v26) = *(a1 + 16) + *(a1 + 20);
        do
        {
          if ((*(a1 + 8) & 2) != 0 && (v29 = *(*(a4 + 2) + 4 * v28), *(*(a4 + 2) + 4 * v28 + 4) - v29 == 1))
          {
            v30 = *(a6 + 4 * *(*(a4 + 5) + 4 * v29)) + a7;
          }

          else
          {
            if (v19)
            {
              sub_29A0C2964(a1, a4, v28, a6, a7);
              if ((v56 & 1) == 0)
              {
                sub_29A0C28F8(a1, v54, v28, a6, a7);
              }
            }

            v30 = v26;
            LODWORD(v26) = v26 + 1;
          }

          a8[v28++] = v30;
        }

        while (v14 != v28);
        goto LABEL_80;
      }
    }

    else
    {
      if (v19)
      {
        sub_29A0C27CC(a1, a4, a6, a7);
        v23 = v56;
        if (v14 < 1)
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          v24 = 0;
          do
          {
            sub_29A0C28F8(a1, v54, v24++, a6, a7);
          }

          while (v14 != v24);
        }
      }

      if (v14 >= 1)
      {
        v25 = v15;
        do
        {
          LODWORD(v26) = v25 + 1;
          *a8++ = v25++;
          --v14;
        }

        while (v14);
        goto LABEL_80;
      }
    }

    LODWORD(v26) = v15;
    goto LABEL_80;
  }

  v20 = v17[v14];
  v51 = *(a1 + 16) + *(a1 + 20);
  if (v20)
  {
    v21 = *(*(*a1 + 48) + 8 * a2);
    v50 = v21;
    if ((v20 & 0x10) != 0)
    {
      v27 = *(a1 + 12);
      v22 = a3;
      if (v27 < 0)
      {
        v53 = *(v21 + 48) + 4 * *(*(v21 + 24) + 8 * a3 + 4);
      }

      else
      {
        v53 = sub_29A0A5C5C(v21, a3, v27);
      }
    }

    else
    {
      v22 = a3;
      v53 = 0;
    }

    if ((v20 & 0x60) != 0)
    {
      v31 = v22;
      v32 = v50[3];
      v33 = *(v32 + 8 * v22 + 4);
      v52 = v50[9] + 4 * v33;
      v34 = *(v32 + 8 * v22);
      v35 = *(a1 + 12);
      v36 = v53;
      if ((v35 & 0x80000000) == 0)
      {
        v36 = (v50[6] + 4 * v33);
      }

      sub_29A0A573C(v50, v31, v57, v35);
      if (v34 >= 1)
      {
        v37 = v50[15];
        v38 = v58;
        v39 = v57;
        v40 = v59;
        v41 = v52;
        do
        {
          v42 = *v41++;
          v43 = *(v37 + 8 * v42);
          LODWORD(v42) = *v36++;
          *v40++ = v43 != v42;
          LOBYTE(v42) = *v39++;
          *v38++ = (v42 & 2) != 0;
          --v34;
        }

        while (v34);
      }
    }

    else
    {
      v52 = 0;
    }

    v15 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v26 = v15;
  if (v14 >= 1)
  {
    for (i = 0; v14 != i; ++i)
    {
      if ((*(a1 + 8) & 2) != 0 && (v45 = *(*(a4 + 2) + 4 * i), *(*(a4 + 2) + 4 * i + 4) - v45 == 1))
      {
        v46 = *(a6 + 4 * *(*(a4 + 5) + 4 * v45)) + a7;
      }

      else
      {
        v47 = v17[i];
        if (!v17[i])
        {
          goto LABEL_74;
        }

        v48 = v47 & 0xF;
        if ((v47 & 0x10) != 0)
        {
          v46 = sub_29A0C1E28(a1, a2, *(v53 + 4 * v48), v26);
        }

        else
        {
          if (v58[v48])
          {
            goto LABEL_74;
          }

          v46 = sub_29A0C1EF8(a1, a2, *(v52 + 4 * v48), ((v47 >> 6) & 1) != v59[v48], v26);
        }

        if (v46 == v26)
        {
LABEL_74:
          if (v19)
          {
            sub_29A0C2964(a1, a4, i, a6, a7);
            if ((v56 & 1) == 0)
            {
              sub_29A0C28F8(a1, v54, i, a6, a7);
            }
          }

          v46 = v26;
          v26 = (v26 + 1);
        }
      }

      a8[i] = v46;
    }
  }

  LODWORD(v15) = v51;
LABEL_80:
  result = (v26 - v15);
  *(a1 + 16) += result;
  return result;
}

uint64_t sub_29A0BF774(uint64_t a1, int a2, int a3, int *a4, int a5, uint64_t a6, int a7, _DWORD *a8)
{
  v14 = *a4;
  v15 = (*(a1 + 16) + *(a1 + 20));
  v16 = &unk_29B43557A;
  if (a5 != 9)
  {
    v16 = 0;
  }

  if (a5 == 3)
  {
    v16 = &unk_29B435570;
  }

  if (*(a1 + 8))
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (!*(a1 + 80))
  {
    goto LABEL_18;
  }

  if (a5 > 5)
  {
    switch(a5)
    {
      case 6:
        v56 = 0;
        v18 = &unk_29B4355B4;
        goto LABEL_22;
      case 9:
        v56 = 0;
        v18 = &unk_29B435624;
        goto LABEL_22;
      case 10:
        v56 = 0;
        v18 = &unk_29B435674;
        goto LABEL_22;
    }

LABEL_18:
    v54 = 0;
    v56 = 1;
    goto LABEL_23;
  }

  if (a5 == 3 || a5 == 4)
  {
    v56 = 0;
    v18 = &unk_29B4355A4;
    goto LABEL_22;
  }

  if (a5 != 5)
  {
    goto LABEL_18;
  }

  v56 = 0;
  v18 = &unk_29B4355F4;
LABEL_22:
  v54 = v18;
LABEL_23:
  v19 = *(a1 + 72);
  if (!v17)
  {
    if ((*(a1 + 8) & 2) != 0)
    {
      if (v14 >= 1)
      {
        v28 = 0;
        LODWORD(v26) = *(a1 + 16) + *(a1 + 20);
        do
        {
          if ((*(a1 + 8) & 2) != 0 && (v29 = *(*(a4 + 2) + 4 * v28), *(*(a4 + 2) + 4 * v28 + 4) - v29 == 1))
          {
            v30 = *(a6 + 4 * *(*(a4 + 5) + 4 * v29)) + a7;
          }

          else
          {
            if (v19)
            {
              sub_29A0C2BC4(a1, a4, v28, a6, a7);
              if ((v56 & 1) == 0)
              {
                sub_29A0C2B58(a1, v54, v28, a6, a7);
              }
            }

            v30 = v26;
            LODWORD(v26) = v26 + 1;
          }

          a8[v28++] = v30;
        }

        while (v14 != v28);
        goto LABEL_80;
      }
    }

    else
    {
      if (v19)
      {
        sub_29A0C2A2C(a1, a4, a6, a7);
        v23 = v56;
        if (v14 < 1)
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          v24 = 0;
          do
          {
            sub_29A0C2B58(a1, v54, v24++, a6, a7);
          }

          while (v14 != v24);
        }
      }

      if (v14 >= 1)
      {
        v25 = v15;
        do
        {
          LODWORD(v26) = v25 + 1;
          *a8++ = v25++;
          --v14;
        }

        while (v14);
        goto LABEL_80;
      }
    }

    LODWORD(v26) = v15;
    goto LABEL_80;
  }

  v20 = v17[v14];
  v51 = *(a1 + 16) + *(a1 + 20);
  if (v20)
  {
    v21 = *(*(*a1 + 48) + 8 * a2);
    v50 = v21;
    if ((v20 & 0x10) != 0)
    {
      v27 = *(a1 + 12);
      v22 = a3;
      if (v27 < 0)
      {
        v53 = *(v21 + 48) + 4 * *(*(v21 + 24) + 8 * a3 + 4);
      }

      else
      {
        v53 = sub_29A0A5C5C(v21, a3, v27);
      }
    }

    else
    {
      v22 = a3;
      v53 = 0;
    }

    if ((v20 & 0x60) != 0)
    {
      v31 = v22;
      v32 = v50[3];
      v33 = *(v32 + 8 * v22 + 4);
      v52 = v50[9] + 4 * v33;
      v34 = *(v32 + 8 * v22);
      v35 = *(a1 + 12);
      v36 = v53;
      if ((v35 & 0x80000000) == 0)
      {
        v36 = (v50[6] + 4 * v33);
      }

      sub_29A0A573C(v50, v31, v57, v35);
      if (v34 >= 1)
      {
        v37 = v50[15];
        v38 = v58;
        v39 = v57;
        v40 = v59;
        v41 = v52;
        do
        {
          v42 = *v41++;
          v43 = *(v37 + 8 * v42);
          LODWORD(v42) = *v36++;
          *v40++ = v43 != v42;
          LOBYTE(v42) = *v39++;
          *v38++ = (v42 & 2) != 0;
          --v34;
        }

        while (v34);
      }
    }

    else
    {
      v52 = 0;
    }

    v15 = v51;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v26 = v15;
  if (v14 >= 1)
  {
    for (i = 0; v14 != i; ++i)
    {
      if ((*(a1 + 8) & 2) != 0 && (v45 = *(*(a4 + 2) + 4 * i), *(*(a4 + 2) + 4 * i + 4) - v45 == 1))
      {
        v46 = *(a6 + 4 * *(*(a4 + 5) + 4 * v45)) + a7;
      }

      else
      {
        v47 = v17[i];
        if (!v17[i])
        {
          goto LABEL_74;
        }

        v48 = v47 & 0xF;
        if ((v47 & 0x10) != 0)
        {
          v46 = sub_29A0C1E28(a1, a2, *(v53 + 4 * v48), v26);
        }

        else
        {
          if (v58[v48])
          {
            goto LABEL_74;
          }

          v46 = sub_29A0C1EF8(a1, a2, *(v52 + 4 * v48), ((v47 >> 6) & 1) != v59[v48], v26);
        }

        if (v46 == v26)
        {
LABEL_74:
          if (v19)
          {
            sub_29A0C2BC4(a1, a4, i, a6, a7);
            if ((v56 & 1) == 0)
            {
              sub_29A0C2B58(a1, v54, i, a6, a7);
            }
          }

          v46 = v26;
          v26 = (v26 + 1);
        }
      }

      a8[i] = v46;
    }
  }

  LODWORD(v15) = v51;
LABEL_80:
  result = (v26 - v15);
  *(a1 + 16) += result;
  return result;
}

uint64_t sub_29A0BFC14(void *a1, int *a2, _DWORD *a3, unsigned int a4)
{
  v6 = a2[1];
  v7 = *(*(*a1 + 48) + 8 * v6);
  if ((a4 & 0x80000000) != 0)
  {
    v8 = *(a1[15] + 4 * v6);
  }

  else
  {
    v8 = *(*(a1[18] + 24 * a4) + 4 * v6);
    v9 = *(a1[21] + 4 * a4);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = sub_29A0A5C5C(v7, *a2, v9);
      goto LABEL_6;
    }
  }

  v12 = *a2;
  v13 = *(v7 + 24);
  v10 = (*(v7 + 48) + 4 * *(v13 + 8 * v12 + 4));
  v11 = *(v13 + 8 * v12);
LABEL_6:
  if (v11 >= 1)
  {
    v14 = v11;
    do
    {
      v15 = *v10++;
      *a3++ = v15 + v8;
      --v14;
    }

    while (v14);
  }

  return v11;
}

void sub_29A0BFCC4(uint64_t a1)
{
  if (sub_29A0BDD60(*(a1 + 48)) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v3 += sub_29A0BDD7C(*(a1 + 48), v2);
      v4 += sub_29A0BDDA0(*(a1 + 48), v2++);
    }

    while (v2 < sub_29A0BDD60(*(a1 + 48)));
    if (v4 && v3 != 0)
    {
      sub_29A0A171C((*(a1 + 48) + 32), v4);
      sub_29A0BD724((*(a1 + 48) + 56), v3);
      v6 = *(a1 + 40);
      if ((v6 & 0xA0) == 0x20)
      {
        v7 = *(a1 + 48);
        v8 = *(*(a1 + 56) + 52);
        sub_29A0BDAA4(v7, &v8, v3);
        v6 = *(a1 + 40);
      }

      if ((v6 & 8) != 0)
      {
        sub_29A0A766C((*(a1 + 48) + 224), v3, &dword_29B435568);
      }
    }
  }
}

void sub_29A0BFDC0(uint64_t a1)
{
  v2 = sub_29A0BDD90(*(a1 + 48));
  sub_29A0BDAF4(*(a1 + 48), (*(a1 + 176) - *(a1 + 168)) >> 2);
  v3 = *(a1 + 168);
  if (((*(a1 + 176) - v3) >> 2) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_29A0A72AC(**(*a1 + 48), *(v3 + 4 * v4));
      sub_29A0BDC20(*(a1 + 48), BYTE1(v5), v4);
      v6 = *(*(a1 + 56) + 52);
      if (*(a1 + 40) < 0)
      {
        if ((*(a1 + 8) & 8) != 0)
        {
          v6 = 4;
        }

        v8 = v6;
      }

      else
      {
        v7 = sub_29A0BFECC(a1, v4);
        v8 = v6;
        if (!v7)
        {
          v9 = *(a1 + 56);
          v6 = *(v9 + 40);
          v8 = *(v9 + 44);
        }
      }

      v10 = *(a1 + 48);
      v11 = v8;
      v12 = v6;
      sub_29A0BDB90(v10, &v12, &v11, v2, v4++);
      v3 = *(a1 + 168);
    }

    while (v4 < ((*(a1 + 176) - v3) >> 2));
  }
}

BOOL sub_29A0BFECC(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 10) & 8) != 0)
  {
    return 1;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = *(*(a1 + 168) + 4 * a2);
  }

  return (sub_29A0A72AC(**(*a1 + 48), v2) & 0xFF00) == 1280;
}

void sub_29A0BFF24(uint64_t a1)
{
  v68[1] = *MEMORY[0x29EDCA608];
  LODWORD(v66) = *(a1 + 8);
  v2 = (v66 & 8) != 0 && *(*(a1 + 56) + 32) == 4;
  v3 = (*(*a1 + 8) >> 6) & 0xF;
  if (v66)
  {
    v4 = 1;
  }

  else
  {
    v4 = (*(*a1 + 8) >> 6) & 0xF;
  }

  v5 = v3 + 1;
  v61 = v4;
  if (v2)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(*(a1 + 56) + 52);
  }

  *(*(a1 + 48) + 272) |= 1u;
  sub_29A0BD974(*(a1 + 48), v3 + 1 - v4);
  v68[0] = 0;
  if (v61 <= v3)
  {
    v7 = v61;
    do
    {
      v8 = *(*(*a1 + 96) + 24 * v7);
      v9 = *v8;
      if ((*(*a1 + 8) & 2) != 0 && v9 >= 1)
      {
        v10 = *(v8 + 12) - 1;
        v11 = v9;
        do
        {
          LODWORD(v9) = v9 - (*(v10 + v11) & 1);
        }

        while (v11-- > 1);
      }

      v13 = *(a1 + 48);
      v67 = v6;
      sub_29A0BDC30(v13, &v67, v9 << v2, v68, v68 + 1, 0);
      ++v7;
    }

    while (v7 != v5);
  }

  sub_29A0BFCC4(a1);
  if ((*(a1 + 40) & 0x10) != 0)
  {
    sub_29A0BFDC0(a1);
  }

  v17 = *(a1 + 48);
  v62 = v2;
  if ((v66 & 2) != 0)
  {
    v18 = *(**(*a1 + 96) + 8);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v17 + 32);
  v20 = *(v17 + 56);
  if ((*(a1 + 40) & 0x10) == 0)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_31;
  }

  v64 = v3;
  v65 = v20;
  v24 = *(a1 + 176) - *(a1 + 168);
  MEMORY[0x2A1C7C4A8](v14, v15, v16);
  v26 = &v60 - v25;
  bzero(&v60 - v25, v24);
  MEMORY[0x2A1C7C4A8](v27, v28, v29);
  v23 = &v60 - ((2 * v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v23, 2 * v24);
  MEMORY[0x2A1C7C4A8](v30, v31, v32);
  v22 = v23;
  bzero(v23, 2 * v24);
  if ((v24 >> 2) < 1)
  {
    v21 = v26;
    v20 = v65;
    if (!v64)
    {
      return;
    }

    goto LABEL_31;
  }

  v33 = 0;
  v21 = v26;
  v34 = v64;
  v20 = v65;
  do
  {
    *&v23[8 * v33] = sub_29A0BDED8(*(a1 + 48), v33);
    *&v23[8 * v33] = sub_29A0BDF08(*(a1 + 48), v33);
    if ((v66 & 4) != 0)
    {
      *&v21[4 * v33] = sub_29A0A729C(**(*a1 + 96), *(*(a1 + 168) + 4 * v33));
    }

    ++v33;
  }

  while (v33 < ((*(a1 + 176) - *(a1 + 168)) >> 2));
  if (v34)
  {
LABEL_31:
    v60 = v5;
    v35 = 1;
    v66 = v21;
    do
    {
      if (v35 >= v61)
      {
        v36 = (*(*a1 + 96) + 24 * v35);
        v64 = **v36;
        if (v64 >= 1)
        {
          v37 = 0;
          v63 = v35;
          do
          {
            v38 = *v36;
            if ((*(*a1 + 8) & 2) == 0 || (*(v38[12] + v37) & 1) == 0)
            {
              v39 = (v38[3] + 8 * v37);
              v40 = *v39;
              if (v40 >= 1)
              {
                v41 = (v38[6] + 4 * v39[1]);
                do
                {
                  v42 = *v41++;
                  *v19++ = v42 + v18;
                  --v40;
                }

                while (v40);
              }

              v43 = sub_29A0BD218(*(a1 + 56), v35, v37, (a1 + 64), 1, 0, 0);
              v65 = v20;
              *v20++ = v43;
              if ((*(a1 + 40) & 0x10) != 0)
              {
                v44 = *(a1 + 168);
                if (((*(a1 + 176) - v44) >> 2) >= 1)
                {
                  v45 = 0;
                  do
                  {
                    v46 = sub_29A0A5C5C(*v36, v37, *(v44 + 4 * v45));
                    if (v47 <= 0)
                    {
                      v50 = *&v23[8 * v45];
                    }

                    else
                    {
                      v48 = 0;
                      v49 = *&v66[4 * v45];
                      v50 = *&v23[8 * v45];
                      do
                      {
                        *(v50 + 4 * v48) = *(v46 + 4 * v48) + v49;
                        ++v48;
                      }

                      while ((v47 & 0x7FFFFFFF) != v48);
                    }

                    *&v23[8 * v45] = v50 + 4 * v47;
                    v51 = *&v22[8 * v45];
                    *v51 = v43;
                    *&v22[8 * v45++] = v51 + 1;
                    v44 = *(a1 + 168);
                  }

                  while (v45 < ((*(a1 + 176) - v44) >> 2));
                }
              }

              if (v62)
              {
                v52 = *(v19 - 2);
                *v19 = *(v19 - 4);
                v19[1] = v52;
                v19 += 2;
                v20 = v65 + 2;
                v65[1] = v43;
                if ((*(a1 + 40) & 0x10) != 0 && ((*(a1 + 176) - *(a1 + 168)) >> 2) >= 1)
                {
                  v53 = 0;
                  do
                  {
                    v54 = *&v23[8 * v53];
                    v55 = *(v54 - 2);
                    *v54 = *(v54 - 4);
                    v54[1] = v55;
                    *&v23[8 * v53] = v54 + 2;
                    v56 = *&v22[8 * v53];
                    *v56 = v43;
                    *&v22[8 * v53++] = v56 + 1;
                  }

                  while (v53 < ((*(a1 + 176) - *(a1 + 168)) >> 2));
                }
              }

              v35 = v63;
            }

            ++v37;
          }

          while (v37 != v64);
        }
      }

      if (*(a1 + 8))
      {
        v18 += *(*(*(*a1 + 96) + 24 * v35) + 8);
        v57 = v66;
        if ((*(a1 + 40) & 0x10) != 0)
        {
          v58 = *(a1 + 168);
          if (((*(a1 + 176) - v58) >> 2) >= 1)
          {
            v59 = 0;
            do
            {
              *&v57[4 * v59] += sub_29A0A729C(*(*(*a1 + 96) + 24 * v35), *(v58 + 4 * v59));
              ++v59;
              v58 = *(a1 + 168);
            }

            while (v59 < ((*(a1 + 176) - v58) >> 2));
          }
        }
      }

      ++v35;
    }

    while (v35 != v60);
  }
}

void sub_29A0C04AC(uint64_t a1)
{
  LODWORD(v22) = 0;
  sub_29A00D250((a1 + 120), &v22);
  sub_29A0C13F4((a1 + 144), (*(a1 + 176) - *(a1 + 168)) >> 2);
  if (((*(a1 + 176) - *(a1 + 168)) >> 2) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 144);
      LODWORD(v22) = 0;
      sub_29A00D250((v4 + v2), &v22);
      ++v3;
      v2 += 24;
    }

    while (v3 < ((*(a1 + 176) - *(a1 + 168)) >> 2));
  }

  v5 = *a1;
  if ((-1431655765 * ((*(*a1 + 104) - *(*a1 + 96)) >> 3)) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 48) + 8 * v6);
      LODWORD(v22) = *(v7 + 8) + *(*(a1 + 128) - 4);
      sub_29A00D250((a1 + 120), &v22);
      v8 = *(a1 + 168);
      if (((*(a1 + 176) - v8) >> 2) >= 1)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (*(a1 + 144) + v10);
          v12 = *(*v11 - 1);
          LODWORD(v22) = sub_29A0A729C(v7, *(v8 + 4 * v9)) + v12;
          sub_29A00D250(v11 - 1, &v22);
          ++v9;
          v8 = *(a1 + 168);
          v10 += 24;
        }

        while (v9 < ((*(a1 + 176) - v8) >> 2));
      }

      ++v6;
      v5 = *a1;
    }

    while (v6 < (-1431655765 * ((*(*a1 + 104) - *(*a1 + 96)) >> 3)));
  }

  if (*(v5 + 8))
  {
    v13 = (*(a1 + 8) >> 6) & 0xF;
  }

  else
  {
    v13 = -1;
  }

  sub_29A08AF9C(a1 + 88, *(v5 + 28));
  v14 = *(a1 + 32);
  if (v14)
  {
    if (v14 >= 1)
    {
      v15 = 0;
      do
      {
        sub_29A0C149C(a1, 0, *(*(a1 + 24) + 4 * v15++), v13);
      }

      while (v15 < *(a1 + 32));
    }
  }

  else
  {
    v16 = *a1;
    if ((v13 & 0x80000000) != 0)
    {
      if ((-1431655765 * ((v16[13] - v16[12]) >> 3)) >= 1)
      {
        v19 = 0;
        do
        {
          v20 = **(v16[6] + 8 * v19);
          if (v20 >= 1)
          {
            v21 = 0;
            do
            {
              if (sub_29A0BAF44(*(a1 + 56), v19, v21) && sub_29A0BB000(*(a1 + 56), v19, v21))
              {
                v22 = __PAIR64__(v19, v21);
                sub_29A0A71C8(a1 + 88, &v22);
                if (sub_29A0BB038(*(a1 + 56), v19, v21, 0xFFFFFFFF))
                {
                  ++*(a1 + 112);
                }

                else
                {
                  ++*(a1 + 116);
                  if (*(a1 + 192) == 1)
                  {
                    sub_29A0C1FC8(*(a1 + 200), v19, v21);
                  }
                }
              }

              v21 = (v21 + 1);
            }

            while (v20 != v21);
            v16 = *a1;
          }

          ++v19;
        }

        while (v19 < (-1431655765 * ((v16[13] - v16[12]) >> 3)));
      }
    }

    else
    {
      v17 = **(v16[6] + 8 * v13);
      if (v17 >= 1)
      {
        v18 = 0;
        do
        {
          if (sub_29A0BAF44(*(a1 + 56), v13, v18))
          {
            v22 = __PAIR64__(v13, v18);
            sub_29A0A71C8(a1 + 88, &v22);
            if (sub_29A0BB038(*(a1 + 56), v13, v18, 0xFFFFFFFF))
            {
              ++*(a1 + 112);
            }

            else
            {
              ++*(a1 + 116);
              if (*(a1 + 192) == 1)
              {
                sub_29A0C1FC8(*(a1 + 200), v13, v18);
              }
            }
          }

          v18 = (v18 + 1);
        }

        while (v17 != v18);
      }
    }
  }
}

void sub_29A0C082C(uint64_t a1)
{
  v2 = 0;
  v124 = *MEMORY[0x29EDCA608];
  do
  {
    v3 = &v123[v2 - 1];
    *v3 = 0uLL;
    *(v3 + 1) = 0uLL;
    *(v3 + 4) = 0;
    *(v3 + 5) = &v123[v2 + 13];
    *(v3 + 6) = 0x100000000;
    *(v3 + 8) = 0;
    *(v3 + 9) = &v123[v2 + 21];
    *(v3 + 10) = 0x100000000;
    v2 += 26;
    *(v3 + 12) = 0;
  }

  while (v2 != 78);
  v4 = *(a1 + 56);
  v5 = *(v4 + 40);
  v7 = *(a1 + 112);
  v6 = *(a1 + 116);
  v122 = v5;
  v123[0] = v7;
  v8 = v7 > 0;
  if (v6 < 1)
  {
    v12 = 2;
    v15 = v7 > 0;
    v8 = 1;
  }

  else if (*(a1 + 192))
  {
    v9 = &v123[26 * (v7 > 0) - 1];
    *v9 = 7;
    v10 = *(a1 + 200);
    v11 = (v10[2] - v10[1]) >> 2;
    v9[1] = v11;
    if (v11 <= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v8 + 1;
    }

    v13 = &v123[26 * v12 - 1];
    *v13 = 8;
    v14 = (v10[5] - v10[4]) >> 2;
    v13[1] = v14;
    if (v14 <= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v12 + 1;
    }
  }

  else
  {
    v16 = *(v4 + 44);
    if (v7 <= 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v5 == v16)
    {
      v15 = 1;
    }

    else
    {
      v15 = v17;
    }

    if (v5 == v16)
    {
      v8 = 0;
    }

    v18 = &v123[26 * v8 - 1];
    v19 = v18[1] + v6;
    *v18 = v16;
    v18[1] = v19;
    v12 = 2;
  }

  sub_29A0BD974(*(a1 + 48), v15);
  v116 = 0;
  v115 = 0;
  if (v15)
  {
    v20 = v15;
    v21 = v123;
    do
    {
      v22 = *(a1 + 48);
      v23 = *v21;
      v99 = *(v21 - 1);
      sub_29A0BDC30(v22, &v99, v23, &v116, &v115 + 1, &v115);
      v21 += 26;
      --v20;
    }

    while (v20);
  }

  v78 = v12;
  v81 = v8;
  sub_29A0BFCC4(a1);
  if ((*(a1 + 40) & 0x10) != 0)
  {
    sub_29A0BFDC0(a1);
  }

  if (v15)
  {
    v24 = 0;
    v25 = v15;
    do
    {
      v26 = &v123[26 * v24 - 1];
      *(v26 + 1) = sub_29A0BDDE4(*(a1 + 48), v24);
      *(v26 + 2) = sub_29A0BDE40(*(a1 + 48), v24);
      v27 = *(a1 + 40);
      if ((v27 & 8) != 0)
      {
        *(v26 + 3) = sub_29A0BDD44(*(a1 + 48), v24);
        v27 = *(a1 + 40);
      }

      if ((v27 & 0x20) != 0)
      {
        *(v26 + 4) = sub_29A0BDE60(*(a1 + 48), v24);
        v27 = *(a1 + 40);
      }

      if ((v27 & 0x10) != 0)
      {
        v28 = *(a1 + 176) - *(a1 + 168);
        v29 = v28 >> 2;
        if ((v28 >> 2))
        {
          if (v26[13] < v29)
          {
            operator delete(*(v26 + 8));
            *(v26 + 5) = v26 + 14;
            v26[13] = 1;
            v30 = operator new((2 * v28) & 0x7FFFFFFF8);
            *(v26 + 8) = v30;
            *(v26 + 5) = v30;
            v26[13] = v29;
          }
        }

        else
        {
          operator delete(*(v26 + 8));
          *(v26 + 5) = v26 + 14;
          v26[13] = 1;
        }

        v26[12] = v29;
        v31 = *(a1 + 176) - *(a1 + 168);
        v32 = v31 >> 2;
        if ((v31 >> 2))
        {
          if (v26[21] < v32)
          {
            operator delete(*(v26 + 12));
            *(v26 + 9) = v26 + 22;
            v26[21] = 1;
            v33 = operator new((2 * v31) & 0x7FFFFFFF8);
            *(v26 + 12) = v33;
            *(v26 + 9) = v33;
            v26[21] = v32;
          }
        }

        else
        {
          operator delete(*(v26 + 12));
          *(v26 + 9) = v26 + 22;
          v26[21] = 1;
        }

        v26[20] = v32;
        if (((*(a1 + 176) - *(a1 + 168)) >> 2) >= 1)
        {
          v34 = 0;
          do
          {
            v35 = sub_29A0BDD2C(*(a1 + 48), v24, 0);
            v36 = sub_29A0BDEF4(*(a1 + 48), v34);
            *(*(v26 + 5) + 8 * v34) = sub_29A0BDED8(*(a1 + 48), v34) + 4 * v36 * v35;
            *(*(v26 + 9) + 8 * v34) = sub_29A0BDF08(*(a1 + 48), v34) + 8 * v35;
            ++v34;
          }

          while (v34 < ((*(a1 + 176) - *(a1 + 168)) >> 2));
        }
      }

      ++v24;
    }

    while (v24 != v25);
  }

  v37 = 0;
  v38 = v120;
  v118 = v120;
  v119 = 0x400000000;
  __p = 0;
  if (*(a1 + 40))
  {
    v39 = (*(a1 + 40) >> 3) & 8 | (*(a1 + 8) >> 13) & 0x11 | (2 * (*(*(a1 + 56) + 44) == *(*(a1 + 56) + 48))) | 4;
    LOBYTE(v99) = v39;
    v37 = operator new(0x58uLL);
    v40 = *a1;
    v41 = sub_29A0C15D4(a1, &v99, 0xFFFFFFFF);
    sub_29A0C19F8(v37, v40, &v99, -1, v41);
    if ((*(a1 + 40) & 0x10) != 0)
    {
      LOBYTE(v99) = v39 & 7 | (16 * ((*(a1 + 8) & 0x40000) != 0));
      v42 = *(a1 + 176) - *(a1 + 168);
      if ((v42 >> 2))
      {
        if (HIDWORD(v119) >= (v42 >> 2))
        {
          goto LABEL_52;
        }

        operator delete(__p);
        v118 = v120;
        HIDWORD(v119) = 4;
        v38 = operator new((2 * v42) & 0x7FFFFFFF8);
        __p = v38;
        v43 = v42 >> 2;
      }

      else
      {
        operator delete(__p);
        v43 = 4;
      }

      v118 = v38;
      HIDWORD(v119) = v43;
LABEL_52:
      LODWORD(v119) = v42 >> 2;
      v44 = *(a1 + 168);
      if (((*(a1 + 176) - v44) >> 2) >= 1)
      {
        v45 = 0;
        do
        {
          v46 = operator new(0x58uLL);
          v47 = *a1;
          v48 = *(v44 + 4 * v45);
          v49 = sub_29A0C15D4(a1, &v99, v45);
          sub_29A0C19F8(v46, v47, &v99, v48, v49);
          *&v118[8 * v45++] = v46;
          v44 = *(a1 + 168);
        }

        while (v45 < ((*(a1 + 176) - v44) >> 2));
      }
    }
  }

  v80 = v37;
  LOWORD(v99) = 0;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  *v104 = 0u;
  *v105 = 0u;
  v106 = 0u;
  *v107 = 0u;
  v108 = 0u;
  v109 = 0;
  v83[0] = 0;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0;
  *v88 = 0u;
  *v89 = 0u;
  v90 = 0u;
  *v91 = 0u;
  v92 = 0u;
  v50 = *(a1 + 88);
  v51 = (*(a1 + 96) - v50) >> 3;
  v93 = 0;
  if (v51 >= 1)
  {
    v52 = 0;
    v53 = (*(a1 + 8) >> 17) ^ (*(a1 + 8) >> 18);
    v82 = &v123[26 * v81 - 1];
    v79 = &v123[26 * v78 - 1];
    do
    {
      v54 = v50 + 8 * v52;
      sub_29A0BEF60(a1, v54, &v99, 0xFFFFFFFF);
      if (*(a1 + 192) != 1 || (v99 & 1) != 0)
      {
        if (v99)
        {
          v55 = &v122;
        }

        else
        {
          v55 = v82;
        }

        v56 = v55 + 2;
        v57 = sub_29A0BF0C8(a1, v54, &v99, *(v55 + 1), v80, 0xFFFFFFFF);
      }

      else
      {
        if ((sub_29A0A57F0(*(*(*a1 + 48) + 8 * *(v54 + 4)), *v54, 0xFFFFFFFF) & 4) != 0)
        {
          v55 = v79;
        }

        else
        {
          v55 = v82;
        }

        v56 = v55 + 2;
        v57 = sub_29A0BFC14(a1, v54, *(v55 + 1), 0xFFFFFFFF);
      }

      *v56 += 4 * v57;
      if ((*(a1 + 40) & 8) != 0)
      {
        v58 = *(a1 + 48);
        v59 = *(v58 + 248);
        v117 = DWORD1(v100);
        v60 = *(v58 + 256) - v59;
        if ((v60 >> 2) < 1)
        {
LABEL_72:
          sub_29A0C2184((v58 + 248), &v117);
          LODWORD(v61) = ((*(v58 + 256) - *(v58 + 248)) >> 2) - 1;
        }

        else
        {
          v61 = 0;
          v62 = (v60 >> 2) & 0x7FFFFFFF;
          while (*(v59 + 4 * v61) != *(&v100 + 1))
          {
            if (v62 == ++v61)
            {
              goto LABEL_72;
            }
          }
        }

        v63 = *(v55 + 3);
        *v63 = v61;
        *(v55 + 3) = v63 + 1;
      }

      v64 = sub_29A0BD218(*(a1 + 56), *(v54 + 4), *v54, (a1 + 64), v99, SBYTE8(v102), 1);
      v65 = *(v55 + 2);
      *(v55 + 2) = v65 + 1;
      *v65 = v64;
      if (((*(a1 + 176) - *(a1 + 168)) >> 2) >= 1)
      {
        v66 = 0;
        do
        {
          if (sub_29A0BFECC(a1, v66))
          {
            sub_29A0BFC14(a1, v54, *(*(v55 + 5) + 8 * v66), v66);
            **(*(v55 + 9) + 8 * v66) = v64;
          }

          else
          {
            if ((v53 & 1) != 0 || !sub_29A0C1714(a1, v54, v66))
            {
              v68 = v83;
              sub_29A0BEF60(a1, v54, v83, v66);
              v67 = 0;
            }

            else
            {
              v67 = 1;
              v68 = &v99;
            }

            sub_29A0BF0C8(a1, v54, v68, *(*(v55 + 5) + 8 * v66), *&v118[8 * v66], v66);
            v69 = &v99;
            if (!v67)
            {
              v69 = v83;
            }

            v70 = (v69[11] & 0x1F) << 39;
            v71 = 0x2000000000;
            if (!*v68)
            {
              v71 = 0;
            }

            **(*(v55 + 9) + 8 * v66) = v64 & 0xFFFFF01FFFFFFFFFLL | v71 | v70;
          }

          *(*(v55 + 9) + 8 * v66) += 8;
          *(*(v55 + 5) + 8 * v66) += 4 * sub_29A0BDEF4(*(a1 + 48), v66);
          ++v66;
        }

        while (v66 < ((*(a1 + 176) - *(a1 + 168)) >> 2));
      }

      if ((*(a1 + 40) & 0x20) != 0)
      {
        *(v55 + 4) += 4 * sub_29A0BFC14(a1, v54, *(v55 + 4), 0xFFFFFFFF);
      }

      ++v52;
      v50 = *(a1 + 88);
    }

    while (v52 < ((*(a1 + 96) - v50) >> 3));
  }

  if (*(a1 + 40))
  {
    *(*(a1 + 48) + 128) = sub_29A0C1744(v80);
    if ((*(a1 + 40) & 0x40) != 0)
    {
      *(*(a1 + 48) + 136) = sub_29A0C175C(v80);
    }

    if (v80)
    {
      v72 = sub_29A0C1D24(v80);
      operator delete(v72);
    }

    if ((*(a1 + 40) & 0x10) != 0)
    {
      sub_29A0BD724((*(a1 + 48) + 200), (*(a1 + 176) - *(a1 + 168)) >> 2);
      if (((*(a1 + 176) - *(a1 + 168)) >> 2) >= 1)
      {
        v73 = 0;
        do
        {
          *(*(*(a1 + 48) + 200) + 8 * v73) = sub_29A0C1744(*&v118[8 * v73]);
          v74 = *&v118[8 * v73];
          if (v74)
          {
            v75 = sub_29A0C1D24(v74);
            operator delete(v75);
          }

          ++v73;
        }

        while (v73 < ((*(a1 + 176) - *(a1 + 168)) >> 2));
      }
    }
  }

  if (*(a1 + 192) == 1)
  {
    sub_29A0C1774(*(a1 + 200), (*(a1 + 48) + 80));
    sub_29A0C186C(*(a1 + 200), (*(a1 + 48) + 104), *(*(a1 + 120) + 4 * ((*(*a1 + 8) >> 6) & 0xF)));
  }

  if (v97)
  {
    *(&v97 + 1) = v97;
    operator delete(v97);
  }

  if (*(&v95 + 1))
  {
    *&v96 = *(&v95 + 1);
    operator delete(*(&v95 + 1));
  }

  if (v94)
  {
    *(&v94 + 1) = v94;
    operator delete(v94);
  }

  if (v91[0])
  {
    v91[1] = v91[0];
    operator delete(v91[0]);
  }

  if (v89[1])
  {
    *&v90 = v89[1];
    operator delete(v89[1]);
  }

  if (v88[0])
  {
    v88[1] = v88[0];
    operator delete(v88[0]);
  }

  if (v113)
  {
    *(&v113 + 1) = v113;
    operator delete(v113);
  }

  if (*(&v111 + 1))
  {
    *&v112 = *(&v111 + 1);
    operator delete(*(&v111 + 1));
  }

  if (v110)
  {
    *(&v110 + 1) = v110;
    operator delete(v110);
  }

  if (v107[0])
  {
    v107[1] = v107[0];
    operator delete(v107[0]);
  }

  if (v105[1])
  {
    *&v106 = v105[1];
    operator delete(v105[1]);
  }

  if (v104[0])
  {
    v104[1] = v104[0];
    operator delete(v104[0]);
  }

  operator delete(__p);
  v76 = 312;
  do
  {
    v77 = &v123[v76 / 4 - 1];
    operator delete(*(&__p + v76));
    *(v77 - 4) = v77 - 4;
    *(v77 - 5) = 1;
    operator delete(*&v120[v76]);
    *(v77 - 8) = v77 - 12;
    *(v77 - 13) = 1;
    v76 -= 104;
  }

  while (v76);
}

void sub_29A0C1314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  sub_29A0C1974(&a13);
  sub_29A0C1974(&a41);
  operator delete(STACK[0x220]);
  v42 = 312;
  do
  {
    v43 = &STACK[0x228] + v42;
    operator delete(*(&STACK[0x228] + v42 - 8));
    *(v43 - 4) = v43 - 16;
    *(v43 - 5) = 1;
    operator delete(*(&STACK[0x228] + v42 - 40));
    *(v43 - 8) = v43 - 48;
    *(v43 - 13) = 1;
    v42 -= 104;
  }

  while (v42);
  _Unwind_Resume(a1);
}

void sub_29A0C13F4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A0C2C8C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_29A0C149C(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2 == a4 || sub_29A0BB000(*(a1 + 56), a2, a3))
  {
    if (sub_29A0BAF44(*(a1 + 56), a2, a3))
    {
      v12 = __PAIR64__(a2, a3);
      sub_29A0A71C8(a1 + 88, &v12);
      if (sub_29A0BB038(*(a1 + 56), a2, a3, 0xFFFFFFFF))
      {
        ++*(a1 + 112);
      }

      else
      {
        ++*(a1 + 116);
        if (*(a1 + 192) == 1)
        {
          sub_29A0C1FC8(*(a1 + 200), a2, a3);
        }
      }
    }
  }

  else
  {
    v7 = *(*(*a1 + 96) + 24 * a2 + 16);
    v8 = *(v7 + 88);
    v9 = *(v8 + 8 * a3);
    if (v9 >= 1)
    {
      v10 = (*(v7 + 120) + 4 * *(v8 + 8 * a3 + 4));
      do
      {
        v11 = *v10++;
        if (v11 != -1)
        {
          sub_29A0C149C(a1, (a2 + 1));
        }

        --v9;
      }

      while (v9);
    }
  }
}

uint64_t sub_29A0C15D4(uint64_t a1, _BYTE *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) == 0 && sub_29A0BFECC(a1, a3))
  {
    return 0;
  }

  if ((*(a1 + 40) & 2) != 0 && (v15 = *(*(a1 + 56) + 40), v7 = sub_29A0BD67C(&v15), *(*(a1 + 56) + 40) != *(*(a1 + 56) + 48)))
  {
    v6 = (*(a1 + 112) * v7);
  }

  else
  {
    v6 = 0;
  }

  if ((*(a1 + 40) & 4) != 0)
  {
    v8 = *(a1 + 116);
    v14 = *(*(a1 + 56) + 44);
    v9 = sub_29A0BD67C(&v14);
    if ((*a2 & 2) != 0 && *(*(a1 + 56) + 44) == *(*(a1 + 56) + 48))
    {
      v9 = (v9 + ((v9 & 0x8000) >> 15)) << 16 >> 17;
    }

    v6 = (v6 + v8 * v9);
  }

  if ((a3 & 0x80000000) == 0)
  {
    v10 = *(*a1 + 96);
    if ((-1431655765 * ((*(*a1 + 104) - v10) >> 3)) >= 2)
    {
      v11 = sub_29A0A729C(*(v10 + 24), *(*(a1 + 168) + 4 * a3));
      v12 = vcvts_n_f32_s32(v6, 1uLL);
      if (v11 <= *(*(*(*a1 + 96) + 24) + 8))
      {
        return v6;
      }

      else
      {
        return v12;
      }
    }
  }

  return v6;
}

BOOL sub_29A0C1714(uint64_t a1, int *a2, unsigned int a3)
{
  v3 = *a2;
  v5 = a2[1];
  if ((a3 & 0x80000000) != 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = *(*(a1 + 168) + 4 * a3);
  }

  return sub_29A0A55D0(*(*(*(*(a1 + 56) + 8) + 48) + 8 * v5), v3, v6);
}

void *sub_29A0C1744(uint64_t a1)
{
  if ((*(a1 + 8) & 0x10) != 0)
  {
    return sub_29A0C2264(a1, (a1 + 72));
  }

  else
  {
    return sub_29A0C2328(a1, (a1 + 72));
  }
}

void *sub_29A0C175C(uint64_t a1)
{
  if ((*(a1 + 8) & 0x10) != 0)
  {
    return sub_29A0C2264(a1, (a1 + 80));
  }

  else
  {
    return sub_29A0C2328(a1, (a1 + 80));
  }
}

void sub_29A0C1774(void *a1, uint64_t *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = v2 - v3;
  v6 = a1[4];
  v5 = a1[5];
  v7 = (v5 - v6) >> 2;
  if (v7 + ((v2 - v3) >> 2))
  {
    sub_29A0A171C(a2, 4 * (v7 + ((v2 - v3) >> 2)));
    v10 = *(*(*a1 + 48) + 8 * ((*(*a1 + 8) >> 6) & 0xF));
    v11 = *a2;
    if (v2 != v3)
    {
      v12 = 0;
      if ((v4 >> 2) <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v4 >> 2;
      }

      do
      {
        sub_29A0C2028(v10, *(a1[1] + 4 * v12), v11);
        v11 += 16;
        ++v12;
      }

      while (v13 != v12);
    }

    if (v5 != v6)
    {
      v14 = 0;
      if (v7 <= 1)
      {
        v7 = 1;
      }

      do
      {
        sub_29A0C2028(v10, *(a1[4] + 4 * v14), v11);
        v11 += 16;
        ++v14;
      }

      while (v7 != v14);
    }
  }
}

void sub_29A0C186C(uint64_t a1, void *a2, int a3)
{
  v6 = *(*a1 + 36);
  v7 = (2 * v6) | 1;
  sub_29A0A171C(a2, v7 * *(*a1 + 20));
  v8 = *(*(*a1 + 48) + 8 * ((*(*a1 + 8) >> 6) & 0xF));
  if (*(v8 + 8) >= 1)
  {
    v9 = 0;
    v10 = (*a2 + 4 * v7 * a3);
    do
    {
      v11 = sub_29A0A5B60(v8, v9, (v10 + 1), 0xFFFFFFFF);
      if (v11 >= 1)
      {
        v12 = v11;
        v13 = 1;
        do
        {
          v10[v13++] += a3;
          --v12;
        }

        while (v12);
      }

      if (v11)
      {
        v10[v11 + 1] = v10[v11];
        v14 = ~(v11 >> 1);
      }

      else
      {
        v14 = v11 >> 1;
      }

      *v10 = v14;
      v10 = (v10 + (v6 << 33 >> 30) + 4);
      ++v9;
    }

    while (v9 < *(v8 + 8));
  }
}

void *sub_29A0C1974(void *a1)
{
  v2 = a1[25];
  if (v2)
  {
    a1[26] = v2;
    operator delete(v2);
  }

  v3 = a1[22];
  if (v3)
  {
    a1[23] = v3;
    operator delete(v3);
  }

  v4 = a1[19];
  if (v4)
  {
    a1[20] = v4;
    operator delete(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    a1[15] = v5;
    operator delete(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    a1[12] = v6;
    operator delete(v6);
  }

  v7 = a1[8];
  if (v7)
  {
    a1[9] = v7;
    operator delete(v7);
  }

  return a1;
}

uint64_t sub_29A0C19F8(uint64_t a1, uint64_t a2, int *a3, int a4, int a5)
{
  *a1 = a2;
  v7 = *a3;
  *(a1 + 24) = 0u;
  *(a1 + 8) = v7;
  *(a1 + 12) = a4;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  if (a4 < 0)
  {
    v8 = *(a2 + 20);
  }

  else
  {
    v8 = sub_29A0CA3BC(a2, a4);
    LOBYTE(v7) = *(a1 + 8);
  }

  *(a1 + 20) = v8;
  if ((v7 & 4) != 0)
  {
    if ((v7 & 0x10) != 0)
    {
      sub_29A0C1AC4(a1, a5);
    }

    else
    {
      sub_29A0C1BF4(a1, a5);
    }
  }

  return a1;
}

void sub_29A0C1A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  sub_29A0C25EC(&a10);
  sub_29A0C25EC(&a10);
  _Unwind_Resume(a1);
}

void sub_29A0C1AC4(uint64_t a1, int a2)
{
  v4 = operator new(0x70uLL);
  *v4 = &unk_2A203ED18;
  v4[2] = 0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  if ((*(a1 + 8) & 8) != 0)
  {
    v5 = operator new(0x70uLL);
    *v5 = &unk_2A203ED18;
    v5[2] = 0;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  if ((9 * a2) >= 0x6400000)
  {
    v6 = 104857600;
  }

  else
  {
    v6 = 9 * a2;
  }

  sub_29A0A6994((v4 + 4), a2);
  sub_29A0A6994((v4 + 16), v6);
  sub_29A08AF9C((v4 + 22), v6);
  if (v5)
  {
    sub_29A0A6994((v5 + 4), a2);
    sub_29A0A6994((v5 + 16), a2);
    sub_29A08AF9C((v5 + 22), a2);
  }

LABEL_10:
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
}

void sub_29A0C1BF4(uint64_t a1, int a2)
{
  v4 = operator new(0x70uLL);
  *v4 = &unk_2A203ED48;
  v4[2] = 0;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  if ((*(a1 + 8) & 8) != 0)
  {
    v5 = operator new(0x70uLL);
    *v5 = &unk_2A203ED48;
    v5[2] = 0;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  if ((9 * a2) >= 0x6400000)
  {
    v6 = 104857600;
  }

  else
  {
    v6 = 9 * a2;
  }

  sub_29A0A6994((v4 + 4), a2);
  sub_29A0A6994((v4 + 16), v6);
  sub_29A0A6994((v4 + 22), v6);
  if (v5)
  {
    sub_29A0A6994((v5 + 4), a2);
    sub_29A0A6994((v5 + 16), a2);
    sub_29A0A6994((v5 + 22), a2);
  }

LABEL_10:
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
}

uint64_t sub_29A0C1D24(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 72);
  if ((v2 & 0x10) != 0)
  {
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 80);
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 80);
    if (v4)
    {
LABEL_9:
      (*(*v4 + 8))(v4);
    }
  }

  v6 = (a1 + 48);
  sub_29A0C25EC(&v6);
  v6 = (a1 + 24);
  sub_29A0C25EC(&v6);
  return a1;
}

uint64_t sub_29A0C1E28(int *a1, int a2, int a3, uint64_t a4)
{
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v8 = a1 + 6;
  if (v9 == v10)
  {
    sub_29A0C13F4(v8, (-1431655765 * ((*(*a1 + 104) - *(*a1 + 96)) >> 3)));
    v9 = *(a1 + 3);
  }

  v11 = (v9 + 24 * a2);
  if (*v11 == v11[1])
  {
    v12 = *(*(*a1 + 48) + 8 * a2);
    v13 = a1[3];
    if (v13 < 0)
    {
      v14 = *(v12 + 8);
    }

    else
    {
      v14 = sub_29A0A729C(v12, v13);
    }

    sub_29A0A766C(v11, v14, &dword_29B43556C);
  }

  result = *(*v11 + 4 * a3);
  if (result == -1)
  {
    *(*v11 + 4 * a3) = a4;
    return a4;
  }

  return result;
}

uint64_t sub_29A0C1EF8(void *a1, int a2, int a3, int a4, uint64_t a5)
{
  v11 = a1[6];
  v12 = a1[7];
  v10 = a1 + 6;
  if (v11 == v12)
  {
    sub_29A0C13F4(v10, (-1431655765 * ((*(*a1 + 104) - *(*a1 + 96)) >> 3)));
    v11 = a1[6];
  }

  v13 = (v11 + 24 * a2);
  v14 = *v13;
  if (*v13 == v13[1])
  {
    sub_29A0A766C(v13, 2 * *(*(*(*a1 + 96) + 24 * a2) + 4), &dword_29B43556C);
    v14 = *v13;
  }

  v15 = a4 + 2 * a3;
  result = *(v14 + 4 * v15);
  if (result == -1)
  {
    *(v14 + 4 * v15) = a5;
    return a5;
  }

  return result;
}

void sub_29A0C1FC8(uint64_t a1, int a2, int a3)
{
  v6 = a3;
  v4 = sub_29A0A57F0(*(*(*a1 + 48) + 8 * a2), a3, 0xFFFFFFFF);
  v5 = 32;
  if ((v4 & 4) == 0)
  {
    v5 = 8;
  }

  sub_29A00D250((a1 + v5), &v6);
}

void *sub_29A0C2028(void *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = result[6] + 4 * *(result[3] + 4 * ((2 * a2) | 1));
  v5 = result[36];
  v6 = result[33];
  v7 = result[42];
  do
  {
    v8 = *(v4 + 4 * v3);
    v9 = 2 * v8;
    v10 = *(v6 + 8 * v8);
    if (v10 < 1)
    {
LABEL_6:
      LODWORD(v11) = -1;
    }

    else
    {
      v11 = 0;
      v12 = v5 + 4 * *(v6 + 8 * v8 + 4);
      while (*(v12 + 4 * v11) != a2)
      {
        if (v10 == ++v11)
        {
          goto LABEL_6;
        }
      }
    }

    *(a3 + 4 * v3++) = v11 | (((v11 + 1) % *(v7 + 4 * v9)) << 8);
  }

  while (v3 != 4);
  return result;
}

uint64_t sub_29A0C20B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_29A0BEB0C(v7, a1, a2, a3, a4, a5);
  if ((v7[40] & 0x80000000) != 0)
  {
    sub_29A0BFF24(v7);
  }

  else
  {
    sub_29A0C04AC(v7);
    sub_29A0C082C(v7);
  }

  v5 = v8;
  sub_29A0BEEB0(v7);
  return v5;
}

void *sub_29A0C2140(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_29A0C2184(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_29A00C9A4();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_29A00E7A8(a1, v13);
      v13 = v15;
      v7 = *a1;
      v8 = a1[1] - *a1;
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[4 * v9];
    v17 = &v14[4 * v13];
    v18 = *a2;
    v19 = &v16[-4 * (v8 >> 2)];
    *v16 = v18;
    v6 = v16 + 4;
    memcpy(v19, v7, v8);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v6;
    a1[2] = v17;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *sub_29A0C2264(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (((v3[3] - v3[2]) >> 2) < 1)
    {
      (*(*v3 + 8))(*a2);
      v3 = 0;
    }

    else
    {
      sub_29A0C23EC(*a2);
      sub_29A0A171C(v3 + 5, ((v3[3] - v3[2]) >> 2));
      v4 = v3[2];
      v5 = v3[3] - v4;
      if ((v5 >> 2) >= 1)
      {
        v6 = 0;
        v7 = v3[5];
        v8 = (v5 >> 2) & 0x7FFFFFFF;
        do
        {
          *v7++ = v6;
          v9 = *v4++;
          v6 += v9;
          --v8;
        }

        while (v8);
      }
    }
  }

  *a2 = 0;
  return v3;
}

void *sub_29A0C2328(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (((v3[3] - v3[2]) >> 2) < 1)
    {
      (*(*v3 + 8))(*a2);
      v3 = 0;
    }

    else
    {
      sub_29A0C24EC(*a2);
      sub_29A0A171C(v3 + 5, ((v3[3] - v3[2]) >> 2));
      v4 = v3[2];
      v5 = v3[3] - v4;
      if ((v5 >> 2) >= 1)
      {
        v6 = 0;
        v7 = v3[5];
        v8 = (v5 >> 2) & 0x7FFFFFFF;
        do
        {
          *v7++ = v6;
          v9 = *v4++;
          v6 += v9;
          --v8;
        }

        while (v8);
      }
    }
  }

  *a2 = 0;
  return v3;
}

void sub_29A0C23EC(uint64_t a1)
{
  v11 = 0uLL;
  v12 = 0;
  sub_29A0BE2C8(&v11, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
  v2 = *(a1 + 16);
  *(a1 + 16) = v11;
  v3 = v12;
  v4 = *(a1 + 32);
  *&v11 = v2;
  v12 = v4;
  *(a1 + 32) = v3;
  if (v2)
  {
    *(&v11 + 1) = v2;
    operator delete(v2);
  }

  v11 = 0uLL;
  v12 = 0;
  sub_29A0BE2C8(&v11, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 2);
  v5 = *(a1 + 64);
  *(a1 + 64) = v11;
  v6 = v12;
  v7 = *(a1 + 80);
  *&v11 = v5;
  v12 = v7;
  *(a1 + 80) = v6;
  if (v5)
  {
    *(&v11 + 1) = v5;
    operator delete(v5);
  }

  v11 = 0uLL;
  v12 = 0;
  sub_29A00C8EC(&v11, *(a1 + 88), *(a1 + 96), (*(a1 + 96) - *(a1 + 88)) >> 3);
  v8 = *(a1 + 88);
  *(a1 + 88) = v11;
  v9 = v12;
  v10 = *(a1 + 104);
  *&v11 = v8;
  v12 = v10;
  *(a1 + 104) = v9;
  if (v8)
  {
    *(&v11 + 1) = v8;
    operator delete(v8);
  }
}

void sub_29A0C24EC(uint64_t a1)
{
  v11 = 0uLL;
  v12 = 0;
  sub_29A0BE2C8(&v11, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
  v2 = *(a1 + 16);
  *(a1 + 16) = v11;
  v3 = v12;
  v4 = *(a1 + 32);
  *&v11 = v2;
  v12 = v4;
  *(a1 + 32) = v3;
  if (v2)
  {
    *(&v11 + 1) = v2;
    operator delete(v2);
  }

  v11 = 0uLL;
  v12 = 0;
  sub_29A0BE2C8(&v11, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 2);
  v5 = *(a1 + 64);
  *(a1 + 64) = v11;
  v6 = v12;
  v7 = *(a1 + 80);
  *&v11 = v5;
  v12 = v7;
  *(a1 + 80) = v6;
  if (v5)
  {
    *(&v11 + 1) = v5;
    operator delete(v5);
  }

  v11 = 0uLL;
  v12 = 0;
  sub_29A0BE484(&v11, *(a1 + 88), *(a1 + 96), (*(a1 + 96) - *(a1 + 88)) >> 2);
  v8 = *(a1 + 88);
  *(a1 + 88) = v11;
  v9 = v12;
  v10 = *(a1 + 104);
  *&v11 = v8;
  v12 = v10;
  *(a1 + 104) = v9;
  if (v8)
  {
    *(&v11 + 1) = v8;
    operator delete(v8);
  }
}

void sub_29A0C25EC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A0C2640(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_29A0C2640(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *sub_29A0C2698(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 2)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 2)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 4;
          *v18 = v19;
          v18 += 4;
          v17 += 4;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 62)
    {
      sub_29A00C9A4();
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_29A0111A4(v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 4;
      *v12 = v13;
      v12 += 4;
    }
  }

  v7[1] = v12;
  return result;
}

void *sub_29A0C27CC(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 72);
  v8 = *a2;
  v9 = a2[2];
  v10 = v7[3] - v7[2];
  v11 = v7 + 8;
  v22 = v7[9] - v7[8];
  v12 = v22 >> 2;
  sub_29A0A171C(v7 + 2, v8 + (v10 >> 2));
  if (v8 >= 1)
  {
    v13 = (v7[2] + v10);
    v14 = (*(a2 + 2) + 4);
    do
    {
      *v13++ = *v14 - *(v14 - 1);
      ++v14;
      --v8;
    }

    while (v8);
  }

  sub_29A0A171C(v11, v12 + v9);
  if (v9 >= 1)
  {
    v15 = *(a2 + 5);
    v16 = (*v11 + v22);
    v17 = v9;
    do
    {
      v18 = *v15++;
      *v16++ = *(a3 + 4 * v18) + a4;
      --v17;
    }

    while (v17);
  }

  sub_29A00BF50(v7 + 11, v12 + v9);
  v19 = *(a2 + 8);
  v20 = (v7[11] + 8 * v12);

  return memcpy(v20, v19, 8 * v9);
}

void sub_29A0C28F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 80);
  v7 = *(a4 + 4 * *(a2 + 4 * a3)) + a5;
  LODWORD(v6) = 1;
  sub_29A00D250(v5 + 2, &v6);
  sub_29A00D250(v5 + 8, &v7);
  v6 = 0x3FF0000000000000;
  sub_29A08B03C(v5 + 11, &v6);
}

void sub_29A0C2964(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  v7 = (a2[2] + 4 * a3);
  v8 = *v7;
  v16 = v7[1] - v8;
  v9 = a2[5];
  v10 = a2[8];
  v11 = *(a1 + 72);
  sub_29A00D250(v11 + 2, &v16);
  if (v16 >= 1)
  {
    v12 = 0;
    v13 = v9 + 4 * v8;
    v14 = (v10 + 8 * v8);
    do
    {
      sub_29A08B03C(v11 + 11, v14);
      v15 = *(a4 + 4 * *(v13 + 4 * v12)) + a5;
      sub_29A00D250(v11 + 8, &v15);
      ++v12;
      ++v14;
    }

    while (v12 < v16);
  }
}

void *sub_29A0C2A2C(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 72);
  v8 = *a2;
  v9 = a2[2];
  v10 = v7[3] - v7[2];
  v11 = v7 + 8;
  v12 = v7[9] - v7[8];
  v22 = v12 >> 2;
  sub_29A0A171C(v7 + 2, v8 + (v10 >> 2));
  if (v8 >= 1)
  {
    v13 = (v7[2] + v10);
    v14 = (*(a2 + 2) + 4);
    do
    {
      *v13++ = *v14 - *(v14 - 1);
      ++v14;
      --v8;
    }

    while (v8);
  }

  sub_29A0A171C(v11, v22 + v9);
  if (v9 >= 1)
  {
    v15 = *(a2 + 5);
    v16 = (*v11 + v12);
    v17 = v9;
    do
    {
      v18 = *v15++;
      *v16++ = *(a3 + 4 * v18) + a4;
      --v17;
    }

    while (v17);
  }

  sub_29A0A171C(v7 + 11, v22 + v9);
  v19 = *(a2 + 8);
  v20 = (v7[11] + v12);

  return memcpy(v20, v19, 4 * v9);
}

void sub_29A0C2B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = *(a1 + 80);
  v8 = *(a4 + 4 * *(a2 + 4 * a3)) + a5;
  v7 = 1;
  sub_29A00D250(v5 + 2, &v7);
  sub_29A00D250(v5 + 8, &v8);
  v6 = 1065353216;
  sub_29A0C2184(v5 + 11, &v6);
}

void sub_29A0C2BC4(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  v7 = (a2[2] + 4 * a3);
  v8 = *v7;
  v16 = v7[1] - v8;
  v9 = a2[5];
  v10 = a2[8];
  v11 = *(a1 + 72);
  sub_29A00D250(v11 + 2, &v16);
  if (v16 >= 1)
  {
    v12 = 0;
    v13 = v9 + 4 * v8;
    v14 = (v10 + 4 * v8);
    do
    {
      sub_29A0C2184(v11 + 11, v14);
      v15 = *(a4 + 4 * *(v13 + 4 * v12)) + a5;
      sub_29A00D250(v11 + 8, &v15);
      ++v12;
      ++v14;
    }

    while (v12 < v16);
  }
}

void sub_29A0C2C8C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v20[4] = a1;
    if (v9)
    {
      v10 = sub_29A012C48(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[24 * v6];
    v13 = &v10[24 * v9];
    v14 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    v19 = *(a1 + 16);
    *(a1 + 16) = v13;
    v20[2] = v18;
    v20[3] = v19;
    v20[0] = v18;
    v20[1] = v18;
    sub_29A0C2DF8(v20);
  }
}

uint64_t sub_29A0C2DF8(uint64_t a1)
{
  sub_29A0C2E30(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A0C2E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *sub_29A0C2E90(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29A0C2EDC(a1, a2);
  return a1;
}

void sub_29A0C2EC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0C2EDC(void *a1, uint64_t a2)
{
  v4 = sub_29A0A14D0(*a2);
  v5 = *(a2 + 48);
  v6 = *v5;
  v7 = **v5;
  sub_29A0A171C(a1, v7 + 1);
  v8 = *a1;
  if (v7 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *(v6 + 24);
    v11 = v7;
    v12 = *a1;
    do
    {
      *v12++ = v9;
      v14 = *v10;
      v10 += 2;
      v13 = v14;
      if (v14 == v4)
      {
        v13 = 1;
      }

      v9 += v13;
      --v11;
    }

    while (v11);
  }

  v8[v7] = v9;
}

uint64_t sub_29A0C2F74(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29A0C2FC0(uint64_t a1, int a2, uint64_t *a3, void *a4, void *a5, void *a6, int a7, unint64_t a8)
{
  *a1 = &unk_2A203ED48;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  sub_29A0C30B0(a2, a7, a8, a3, (a1 + 40), a4, (a1 + 16), a5, (a1 + 64), a6, (a1 + 88), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  return a1;
}

void sub_29A0C307C(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  sub_29B284FB8(v2);
  _Unwind_Resume(a1);
}

void sub_29A0C30B0(int a1, int a2, unint64_t a3, uint64_t *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21)
{
  v33 = a2;
  if (a2)
  {
    v24 = 0;
  }

  else
  {
    v24 = a3;
  }

  sub_29A0A171C(a5, (a4[1] - *a4) >> 2);
  v35 = a6;
  v38 = a7;
  sub_29A0A171C(a7, (a6[1] - *a6) >> 2);
  sub_29A0A171C(a9, (a8[1] - *a8) >> 2);
  sub_29A0A171C(a11, (a10[1] - *a10) >> 2);
  if (a13)
  {
    sub_29A0A171C(a13, (a12[1] - *a12) >> 2);
  }

  if (a15)
  {
    sub_29A0A171C(a15, (a14[1] - *a14) >> 2);
  }

  if (a17)
  {
    sub_29A0A171C(a17, (a16[1] - *a16) >> 2);
  }

  if (a19)
  {
    sub_29A0A171C(a19, (a18[1] - *a18) >> 2);
  }

  if (a21)
  {
    sub_29A0A171C(a21, (a20[1] - *a20) >> 2);
  }

  v25 = *a4;
  if (v24 >= (a4[1] - *a4) >> 2)
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      if (((v24 == a1) & v33) != 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = v24;
      }

      v30 = *(*v35 + 4 * v29);
      v31 = *(v25 + 4 * v29);
      *(*a5 + 4 * v27) = v26;
      *(*v38 + 4 * v27) = v30;
      memcpy((*a9 + 4 * v26), (*a8 + 4 * v31), 4 * v30);
      memcpy((*a11 + 4 * v26), (*a10 + 4 * v31), 4 * v30);
      if (a13 && *a13 != a13[1])
      {
        memcpy((*a13 + 4 * v26), (*a12 + 4 * v31), 4 * v30);
      }

      if (a15 && *a15 != a15[1])
      {
        memcpy((*a15 + 4 * v26), (*a14 + 4 * v31), 4 * v30);
      }

      if (a17 && *a17 != a17[1])
      {
        memcpy((*a17 + 4 * v26), (*a16 + 4 * v31), 4 * v30);
      }

      if (a19 && *a19 != a19[1])
      {
        memcpy((*a19 + 4 * v26), (*a18 + 4 * v31), 4 * v30);
      }

      if (a21 && *a21 != a21[1])
      {
        memcpy((*a21 + 4 * v26), (*a20 + 4 * v31), 4 * v30);
      }

      v26 += v30;
      ++v27;
      v28 += v30;
      v24 = v29 + 1;
      v25 = *a4;
    }

    while (v29 + 1 < (a4[1] - *a4) >> 2);
  }

  sub_29A0A171C(a5, v27);
  sub_29A0A171C(v38, v27);
  sub_29A0A171C(a9, v28);
  if (a13 && *a13 != a13[1])
  {
    sub_29A0A171C(a13, v28);
  }

  if (a15 && *a15 != a15[1])
  {
    sub_29A0A171C(a15, v28);
  }

  if (a17 && *a17 != a17[1])
  {
    sub_29A0A171C(a17, v28);
  }

  if (a19 && *a19 != a19[1])
  {
    sub_29A0A171C(a19, v28);
  }

  if (a21 && *a21 != a21[1])
  {

    sub_29A0A171C(a21, v28);
  }
}

_OWORD *sub_29A0C34E8(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = a2 & 3;
  v6 = **(a1 + 96);
  if (v5 == 2)
  {
    v7 = sub_29A0A729C(v6, SHIDWORD(a2));
  }

  else
  {
    v7 = *(v6 + 8);
  }

  v8 = *(a1 + 8);
  if (((v8 >> 6) & 0xF) >= ((a2 >> 6) & 0xF))
  {
    v9 = (a2 >> 6) & 0xF;
  }

  else
  {
    v9 = (v8 >> 6) & 0xF;
  }

  v10 = a2 & 8;
  if (v9 | v10)
  {
    sub_29A0C9310(&v30, v7, 1, 1);
    v29 = a1;
    v27 = &v30;
    v28 = 0;
    v25 = &v30;
    v26 = v7;
    if (v9)
    {
      if (((v8 >> 6) & 0xF) >= ((a2 >> 6) & 0xF))
      {
        v11 = (a2 >> 6) & 0xF;
      }

      else
      {
        v11 = (v8 >> 6) & 0xF;
      }

      v12 = 1;
      v13 = 24;
      do
      {
        if (v5 == 1)
        {
          sub_29A0C38C0(&v29, v12, &v27, &v25);
        }

        else if (v5)
        {
          sub_29A0C3AEC(&v29, v12, &v27, &v25, v4);
        }

        else
        {
          sub_29A0C3768(&v29, v12, &v27, &v25);
        }

        if ((a2 & 0x20) != 0)
        {
          v27 = v25;
          v28 = v26;
        }

        v14 = *(*(a1 + 96) + v13);
        if (v5 == 2)
        {
          v15 = sub_29A0A729C(v14, v4);
        }

        else
        {
          v15 = *(v14 + 8);
        }

        v16 = v26 + v15;
        v26 += v15;
        if ((a2 & 0x20) == 0)
        {
          sub_29A0C9378(&v30, v16);
        }

        ++v12;
        v13 += 24;
        --v11;
      }

      while (v11);
      v17 = v28;
    }

    else
    {
      v17 = 0;
    }

    if ((a2 & 0x10) != 0)
    {
      v19 = v7;
    }

    else
    {
      v19 = v17;
    }

    v18 = operator new(0x70uLL);
    v20 = sub_29A0C9384(&v30);
    v21 = sub_29A0C9390(&v30);
    v22 = sub_29A0C939C(&v30);
    v23 = sub_29A0C93A8(&v30);
    sub_29A0C34D0(v18, v7, v20, v21, v22, v23, v10 != 0, v19);
    sub_29A0C9348(&v30);
  }

  else
  {
    v18 = operator new(0x70uLL);
    *v18 = &unk_2A203ED48;
    v18[1] = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    v18[4] = 0u;
    v18[5] = 0u;
    v18[6] = 0u;
    *(v18 + 2) = v7;
  }

  return v18;
}

void sub_29A0C373C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A0C9348(va);
  _Unwind_Resume(a1);
}

void sub_29A0C3768(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v8 = **a1;
  if (v8)
  {
    if (v8 == 2)
    {
      sub_29A0C4960(a1, a2, a3, a4);
      sub_29A0C4BB8(a1, a2, a3, a4);

      sub_29A0C4EE0(a1, a2, a3, a4, v9);
    }

    else if (v8 == 1)
    {
      sub_29A0C40D8(a1, a2, a3, a4);
      sub_29A0C4330(a1, a2, a3, a4);

      sub_29A0C4658(a1, a2, a3, a4);
    }
  }

  else
  {
    sub_29A0C51E8(a1, a2, a3, a4);
    sub_29A0C5440(a1, a2, a3, a4);

    sub_29A0C55E4(a1, a2, a3, a4);
  }
}

void sub_29A0C38C0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *(*(*a1 + 72) + 8 * a2 - 8);
  v7 = *(v6 + 8);
  if (*(v6 + 52) >= 1)
  {
    v8 = *v7;
    if (*v7 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(*(v6 + 168) + 4 * v9);
        if (v10 != -1)
        {
          v11 = (*(v7 + 24) + 8 * v9);
          v12 = *v11;
          if (v12 >= 1)
          {
            v13 = (*(v7 + 48) + 4 * v11[1]);
            v14 = 1.0 / v12;
            do
            {
              v15 = *(a4 + 2) + v10;
              v34 = *a4;
              v35 = v15;
              v16 = *v13++;
              v17 = *(a3 + 2);
              v32 = *a3;
              v33 = v17 + v16;
              sub_29A0C93B4(&v34, &v32, v14);
              --v12;
            }

            while (v12);
            v8 = *v7;
          }
        }

        ++v9;
      }

      while (v9 < v8);
    }
  }

  v18 = *(v7 + 4);
  if (v18 >= 1)
  {
    v19 = 0;
    for (i = 0; i < v18; ++i)
    {
      v21 = *(*(v6 + 216) + 4 * i);
      if (v21 != -1)
      {
        v22 = (*(v7 + 120) + v19);
        v23 = *(a4 + 2) + v21;
        v34 = *a4;
        v35 = v23;
        v24 = *(a3 + 2) + *v22;
        v32 = *a3;
        v33 = v24;
        sub_29A0C93B4(&v34, &v32, 0.5);
        v25 = *(a4 + 2) + v21;
        v34 = *a4;
        v35 = v25;
        v26 = *(a3 + 2) + v22[1];
        v32 = *a3;
        v33 = v26;
        sub_29A0C93B4(&v34, &v32, 0.5);
        v18 = *(v7 + 4);
      }

      v19 += 8;
    }
  }

  v27 = *(v7 + 8);
  if (v27 >= 1)
  {
    for (j = 0; j < v27; ++j)
    {
      v29 = *(*(v6 + 240) + 4 * j);
      if (v29 != -1)
      {
        v30 = *(a4 + 2);
        v34 = *a4;
        v35 = v30 + v29;
        v31 = j + *(a3 + 2);
        v32 = *a3;
        v33 = v31;
        sub_29A0C93B4(&v34, &v32, 1.0);
        v27 = *(v7 + 8);
      }
    }
  }
}

void sub_29A0C3AEC(int **a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v10 = **a1;
  if (v10)
  {
    if (v10 == 2)
    {
      sub_29A0C7AF0(a1, a2, a3, a4, a5);
      sub_29A0C7D74(a1, a2, a3, a4, a5);

      sub_29A0C8238(a1, a2, a3, a4, a5, v11);
    }

    else if (v10 == 1)
    {
      sub_29A0C6D40(a1, a2, a3, a4, a5);
      sub_29A0C6FC4(a1, a2, a3, a4, a5);

      sub_29A0C7488(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_29A0C88A0(a1, a2, a3, a4, a5);
    sub_29A0C8B24(a1, a2, a3, a4, a5);

    sub_29A0C8DF8(a1, a2, a3, a4, a5);
  }
}

_DWORD *sub_29A0C3C8C(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  if (!a3 || ((a3[3] - a3[2]) & 0x3FFFFFFFCLL) == 0)
  {
    return 0;
  }

  v10 = **(a1 + 96);
  if (a4 < 0)
  {
    v11 = *(v10 + 8);
    if (!a2)
    {
LABEL_10:
      v16 = operator new(0x70uLL);
      sub_29A0BDFD0(v16, a3);
      v16[2] = v11;
      return v16;
    }
  }

  else
  {
    v11 = sub_29A0A729C(v10, a4);
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  v12 = *(a2 + 24) - *(a2 + 16);
  v13 = v12 >> 2;
  if (!(v12 >> 2))
  {
    goto LABEL_10;
  }

  v14 = *(a2 + 72);
  v61 = *(a2 + 64);
  if (a4 < 0)
  {
    v15 = *(a1 + 20);
  }

  else
  {
    v15 = sub_29A0CA3BC(a1, a4);
    v13 = v12 >> 2;
  }

  if (v15 != v13)
  {
    v17 = v11;
    if (v15 - v11 == v13)
    {
      goto LABEL_15;
    }

    return 0;
  }

  v17 = 0;
LABEL_15:
  v57 = v14;
  v58 = v13;
  v56 = v12;
  v18 = (a3[3] - a3[2]) >> 2;
  v59 = v11;
  sub_29A0C9310(&v68, v11, 0, a5);
  v66 = &v68;
  v67 = 0;
  v64 = &v68;
  v19 = v18 & 0x7FFFFFFF;
  v65 = 0;
  v60 = v18;
  if (v18 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v62 = v19;
    do
    {
      v22 = *(a3[5] + 4 * v20);
      v23 = a3[2];
      v24 = a3[8];
      v25 = a3[11];
      v66 = &v68;
      v67 = v20;
      if (*(v23 + 4 * v20) >= 1)
      {
        v26 = 0;
        v27 = v24 + 4 * v22;
        v28 = v25 + 4 * v22;
        do
        {
          v29 = *(v28 + 4 * v26);
          if (v29 != 0.0)
          {
            v30 = *(v27 + 4 * v26);
            if (a5)
            {
              v31 = v30 - v17;
              v32 = *(*(a2 + 40) + 4 * v31);
              v33 = (*(a2 + 64) + 4 * v32);
              v34 = (*(a2 + 88) + 4 * v32);
              v63[0] = (*(a2 + 16) + 4 * v31);
              v63[1] = v33;
              v63[2] = v34;
              sub_29A0C94B8(&v66, v63, v29);
            }

            else
            {
              v64 = &v68;
              v65 = v30 + v17;
              sub_29A0C93B4(&v66, &v64, v29);
            }
          }

          ++v26;
        }

        while (v26 < *(v23 + 4 * v20));
      }

      v21 += sub_29A0C934C(&v68, v20++);
      v19 = v62;
    }

    while (v20 != v62);
  }

  v16 = operator new(0x70uLL);
  *v16 = &unk_2A203ED48;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *(v16 + 4) = 0u;
  *(v16 + 5) = 0u;
  *(v16 + 6) = 0u;
  v16[2] = v59;
  sub_29A0A171C(v16 + 2, v60 + v58);
  v36 = v57 - v61;
  v37 = (v21 + ((v57 - v61) >> 2));
  sub_29A0A171C(v16 + 8, v37);
  sub_29A0A171C(v16 + 11, v37);
  v38 = *(v16 + 2);
  v39 = *(v16 + 8);
  v40 = *(v16 + 11);
  v41 = (v56 >> 2);
  memcpy(v38, *(a2 + 16), 4 * v41);
  memcpy(v39, *(a2 + 64), (v57 - v61) << 30 >> 30);
  memcpy(v40, *(a2 + 88), (v57 - v61) << 30 >> 30);
  if (v60 >= 1)
  {
    v42 = 0;
    v43 = &v40[v36 << 30 >> 30];
    v44 = &v39[v36 << 30 >> 30];
    v45 = &v38[4 * v41];
    do
    {
      v46 = sub_29A0C934C(&v68, v42);
      v47 = sub_29A0C9384(&v68);
      if (v46 >= 1)
      {
        v48 = v46;
        v49 = 4 * *(*v47 + 4 * v42);
        do
        {
          *v44 = *(*sub_29A0C939C(&v68) + v49);
          v44 += 4;
          *v43 = *(*sub_29A0C93A8(&v68) + v49);
          v43 += 4;
          v49 += 4;
          --v48;
        }

        while (v48);
      }

      *v45++ = v46;
      ++v42;
    }

    while (v42 != v19);
  }

  sub_29A0A171C(v16 + 5, ((*(v16 + 3) - *(v16 + 2)) >> 2));
  v50 = *(v16 + 2);
  v51 = *(v16 + 3) - v50;
  if ((v51 >> 2) >= 1)
  {
    v52 = 0;
    v53 = *(v16 + 5);
    v54 = (v51 >> 2) & 0x7FFFFFFF;
    do
    {
      *v53++ = v52;
      v55 = *v50++;
      v52 += v55;
      --v54;
    }

    while (v54);
  }

  sub_29A0C9348(&v68);
  return v16;
}

void sub_29A0C40D8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = *(*(*a1 + 72) + 8 * a2 - 8);
  if (*(v4 + 52))
  {
    v7 = 0;
    v8 = *(v4 + 8);
    v9 = *(v8 + 20);
    v33 = &v36;
    v34 = v9;
    v35 = 16;
    __p = 0;
    if (v9 >= 0x11)
    {
      v7 = operator new(4 * v9);
      __p = v7;
      v33 = v7;
      v35 = v9;
    }

    v10 = *v8;
    if (*v8 >= 1)
    {
      v11 = 0;
      v12.i32[1] = 0;
      v13 = vdupq_n_s64(4uLL);
      v28 = v13;
      do
      {
        v14 = *(*(v4 + 168) + 4 * v11);
        if (v14 != -1)
        {
          v15 = (*(v8 + 24) + 8 * v11);
          v16 = *v15;
          if (v16 >= 1)
          {
            v17 = *(v8 + 48) + 4 * v15[1];
            *v12.i32 = 1.0 / v16;
            v18 = (v16 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v16 - 1);
            v20 = v33 + 1;
            v21 = xmmword_29B430070;
            v22 = xmmword_29B433E10;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, v12).u8[0])
              {
                *(v20 - 2) = v12.i32[0];
              }

              if (vuzp1_s16(v23, v12).i8[2])
              {
                *(v20 - 1) = v12.i32[0];
              }

              if (vuzp1_s16(v12, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v12.i32[0];
                v20[1] = v12.i32[0];
              }

              v22 = vaddq_s64(v22, v13);
              v21 = vaddq_s64(v21, v13);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            v24 = 0;
            v25 = 4 * v16;
            do
            {
              v26 = *(a4 + 2) + v14;
              v31 = *a4;
              v32 = v26;
              v27 = *(a3 + 2) + *(v17 + v24);
              v29 = *a3;
              v30 = v27;
              sub_29A0C93B4(&v31, &v29, *(v33 + v24));
              v24 += 4;
            }

            while (v25 != v24);
            v10 = *v8;
            v13 = v28;
          }
        }

        ++v11;
      }

      while (v11 < v10);
      v7 = __p;
    }

    operator delete(v7);
  }
}

void sub_29A0C4330(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v56 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = *(*(v8 + 72) + 8 * a2 - 8);
  v10 = v9[1];
  v41 = v9[2];
  v49 = *(v8 + 4);
  v11 = *(v10 + 16);
  v50 = &v53;
  v51 = v11;
  v52 = 8;
  v47 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v50 = v7;
    v52 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = *(v10 + 120);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v46[0] = v55;
        v46[1] = 0;
        v46[2] = v50;
        memset(&v46[3], 0, 13);
        v48 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_29A0C5730(&v49, &v47, v46, v20, (*(*(v41 + 432) + 2 * v14) >> 7) & 0xF);
        v21 = (v15 + 8 * i);
        v22 = *(a4 + 2) + v14;
        v44 = *a4;
        v45 = v22;
        v23 = *(a3 + 2) + *v21;
        v42 = *a3;
        v43 = v23;
        sub_29A0C93B4(&v44, &v42, v55[0]);
        v24 = *(a4 + 2) + v14;
        v44 = *a4;
        v45 = v24;
        v25 = *(a3 + 2) + v21[1];
        v42 = *a3;
        v43 = v25;
        sub_29A0C93B4(&v44, &v42, v55[1]);
        if (SLODWORD(v46[4]) >= 1 && v18 >= 1)
        {
          v26 = 0;
          v27 = v16 + 4 * v19;
          do
          {
            v28 = *(v27 + 4 * v26);
            if (BYTE4(v46[4]) == 1)
            {
              v29 = *(v9[21] + 4 * v28);
              v30 = *(a4 + 2);
              v44 = *a4;
              v45 = v30 + v14;
              v42 = v44;
              v43 = v30 + v29;
              sub_29A0C93B4(&v44, &v42, v50[v26]);
            }

            else
            {
              v31 = *(v10 + 24);
              v32 = *(v31 + 8 * v28 + 4);
              v33 = (*(v10 + 72) + 4 * v32);
              v34 = *(v31 + 8 * v28);
              v35 = 1;
              do
              {
                v36 = *v33++;
                ++v35;
              }

              while (i != v36);
              v37 = *(v10 + 48) + 4 * v32;
              if (v35 < v34)
              {
                v34 = 0;
              }

              v38 = *(v37 + 4 * (v35 - v34));
              v39 = *(a4 + 2) + v14;
              v44 = *a4;
              v45 = v39;
              v40 = *(a3 + 2);
              v42 = *a3;
              v43 = v40 + v38;
              sub_29A0C93B4(&v44, &v42, v50[v26]);
            }

            ++v26;
          }

          while (v26 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_29A0C4658(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v56 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v38 = *(*(v8 + 72) + 8 * a2 - 8);
  v10 = v38[1];
  v9 = v38[2];
  v50 = *(v8 + 4);
  v11 = 2 * *(v10 + 20);
  v51 = &v54;
  v52 = v11;
  v53 = 32;
  v45[0] = v10;
  v45[1] = v9;
  v34 = v9;
  __p = 0;
  if (v11 >= 0x21)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v51 = v7;
    v53 = v11;
  }

  v12 = *(v10 + 8);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v38[30] + 4 * i);
      if (v14 != -1)
      {
        v15 = *(v10 + 336);
        v16 = (8 * i) | 4;
        v35 = *(v15 + v16);
        v36 = *(v10 + 360);
        v17 = *(v15 + 8 * i);
        v18 = *(v10 + 264);
        v37 = *(v18 + v16);
        v19 = *(v18 + 8 * i);
        v44 = 0.0;
        v20 = v51;
        v21 = &v51[v17];
        v43[0] = &v44;
        v43[1] = v51;
        v43[2] = v21;
        memset(&v43[3], 0, 13);
        v46 = i;
        v47 = v14;
        v48 = *(*(v45[0] + 336) + 8 * i);
        v49 = *(*(v45[0] + 264) + 8 * i);
        v22 = *(v10 + 288);
        sub_29A0C5BD0(&v50, v45, v43, (*(*(v10 + 432) + 2 * i) >> 7) & 0xF, (*(*(v34 + 432) + 2 * v14) >> 7) & 0xF);
        if (SLODWORD(v43[4]) >= 1 && v19 >= 1)
        {
          v23 = (v22 + 4 * v37);
          do
          {
            v24 = *v23++;
            v25 = *(v38[21] + 4 * v24);
            v26 = *(a4 + 2);
            v41 = *a4;
            v42 = v26 + v14;
            v39 = v41;
            v40 = v26 + v25;
            sub_29A0C93B4(&v41, &v39, *v21++);
            --v19;
          }

          while (v19);
        }

        if (SHIDWORD(v43[3]) >= 1 && v17 >= 1)
        {
          v27 = (v36 + 4 * v35);
          do
          {
            v28 = *v27++;
            v29 = *(*(v10 + 120) + 8 * v28 + 4 * (i == *(*(v10 + 120) + 8 * v28)));
            v30 = *(a4 + 2) + v14;
            v41 = *a4;
            v42 = v30;
            v31 = *(a3 + 2) + v29;
            v39 = *a3;
            v40 = v31;
            sub_29A0C93B4(&v41, &v39, *v20++);
            --v17;
          }

          while (v17);
        }

        v32 = *(a4 + 2) + v14;
        v41 = *a4;
        v42 = v32;
        v33 = *(a3 + 2) + i;
        v39 = *a3;
        v40 = v33;
        sub_29A0C93B4(&v41, &v39, v44);
        v12 = *(v10 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_29A0C4960(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = *(*(*a1 + 72) + 8 * a2 - 8);
  if (*(v4 + 52))
  {
    v7 = 0;
    v8 = *(v4 + 8);
    v9 = *(v8 + 20);
    v33 = &v36;
    v34 = v9;
    v35 = 16;
    __p = 0;
    if (v9 >= 0x11)
    {
      v7 = operator new(4 * v9);
      __p = v7;
      v33 = v7;
      v35 = v9;
    }

    v10 = *v8;
    if (*v8 >= 1)
    {
      v11 = 0;
      v12.i32[1] = 0;
      v13 = vdupq_n_s64(4uLL);
      v28 = v13;
      do
      {
        v14 = *(*(v4 + 168) + 4 * v11);
        if (v14 != -1)
        {
          v15 = (*(v8 + 24) + 8 * v11);
          v16 = *v15;
          if (v16 >= 1)
          {
            v17 = *(v8 + 48) + 4 * v15[1];
            *v12.i32 = 1.0 / v16;
            v18 = (v16 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v16 - 1);
            v20 = v33 + 1;
            v21 = xmmword_29B430070;
            v22 = xmmword_29B433E10;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, v12).u8[0])
              {
                *(v20 - 2) = v12.i32[0];
              }

              if (vuzp1_s16(v23, v12).i8[2])
              {
                *(v20 - 1) = v12.i32[0];
              }

              if (vuzp1_s16(v12, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v12.i32[0];
                v20[1] = v12.i32[0];
              }

              v22 = vaddq_s64(v22, v13);
              v21 = vaddq_s64(v21, v13);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            v24 = 0;
            v25 = 4 * v16;
            do
            {
              v26 = *(a4 + 2) + v14;
              v31 = *a4;
              v32 = v26;
              v27 = *(a3 + 2) + *(v17 + v24);
              v29 = *a3;
              v30 = v27;
              sub_29A0C93B4(&v31, &v29, *(v33 + v24));
              v24 += 4;
            }

            while (v25 != v24);
            v10 = *v8;
            v13 = v28;
          }
        }

        ++v11;
      }

      while (v11 < v10);
      v7 = __p;
    }

    operator delete(v7);
  }
}

void sub_29A0C4BB8(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v56 = *MEMORY[0x29EDCA608];
  v8 = *a1;
  v9 = *(*(v8 + 72) + 8 * a2 - 8);
  v10 = v9[1];
  v41 = v9[2];
  v49 = *(v8 + 4);
  v11 = *(v10 + 16);
  v50 = &v53;
  v51 = v11;
  v52 = 8;
  v47 = v10;
  __p = 0;
  if (v11 >= 9)
  {
    v7 = operator new(4 * v11);
    __p = v7;
    v50 = v7;
    v52 = v11;
  }

  v12 = *(v10 + 4);
  if (v12 >= 1)
  {
    for (i = 0; i < v12; ++i)
    {
      v14 = *(v9[27] + 4 * i);
      if (v14 != -1)
      {
        v15 = *(v10 + 120);
        v16 = *(v10 + 168);
        v17 = (*(v10 + 144) + 8 * i);
        v18 = *v17;
        v19 = v17[1];
        v46[0] = v55;
        v46[1] = 0;
        v46[2] = v50;
        memset(&v46[3], 0, 13);
        v48 = i;
        if (*(*(v10 + 216) + 4 * i) <= 0.0)
        {
          v20 = 1;
        }

        else
        {
          v20 = 4;
        }

        sub_29A0C62CC(&v49, &v47, v46, v20, (*(*(v41 + 432) + 2 * v14) >> 7) & 0xF);
        v21 = (v15 + 8 * i);
        v22 = *(a4 + 2) + v14;
        v44 = *a4;
        v45 = v22;
        v23 = *(a3 + 2) + *v21;
        v42 = *a3;
        v43 = v23;
        sub_29A0C93B4(&v44, &v42, v55[0]);
        v24 = *(a4 + 2) + v14;
        v44 = *a4;
        v45 = v24;
        v25 = *(a3 + 2) + v21[1];
        v42 = *a3;
        v43 = v25;
        sub_29A0C93B4(&v44, &v42, v55[1]);
        if (SLODWORD(v46[4]) >= 1 && v18 >= 1)
        {
          v26 = 0;
          v27 = v16 + 4 * v19;
          do
          {
            v28 = *(v27 + 4 * v26);
            if (BYTE4(v46[4]) == 1)
            {
              v29 = *(v9[21] + 4 * v28);
              v30 = *(a4 + 2);
              v44 = *a4;
              v45 = v30 + v14;
              v42 = v44;
              v43 = v30 + v29;
              sub_29A0C93B4(&v44, &v42, v50[v26]);
            }

            else
            {
              v31 = *(v10 + 24);
              v32 = *(v31 + 8 * v28 + 4);
              v33 = (*(v10 + 72) + 4 * v32);
              v34 = *(v31 + 8 * v28);
              v35 = 1;
              do
              {
                v36 = *v33++;
                ++v35;
              }

              while (i != v36);
              v37 = *(v10 + 48) + 4 * v32;
              if (v35 < v34)
              {
                v34 = 0;
              }

              v38 = *(v37 + 4 * (v35 - v34));
              v39 = *(a4 + 2) + v14;
              v44 = *a4;
              v45 = v39;
              v40 = *(a3 + 2);
              v42 = *a3;
              v43 = v40 + v38;
              sub_29A0C93B4(&v44, &v42, v50[v26]);
            }

            ++v26;
          }

          while (v26 != v18);
        }

        v12 = *(v10 + 4);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_29A0C4EE0(uint64_t *a1, int a2, uint64_t *a3, uint64_t *a4, long double a5)
{
  v8 = 0;
  v57 = *MEMORY[0x29EDCA608];
  v9 = *a1;
  v39 = *(*(v9 + 72) + 8 * a2 - 8);
  v11 = v39[1];
  v10 = v39[2];
  v51 = *(v9 + 4);
  v12 = 2 * *(v11 + 20);
  v52 = &v55;
  v53 = v12;
  v54 = 32;
  v46[0] = v11;
  v46[1] = v10;
  v35 = v10;
  __p = 0;
  if (v12 >= 0x21)
  {
    v8 = operator new(4 * v12);
    __p = v8;
    v52 = v8;
    v54 = v12;
  }

  v13 = *(v11 + 8);
  if (v13 >= 1)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(v39[30] + 4 * i);
      if (v15 != -1)
      {
        v16 = *(v11 + 336);
        v17 = (8 * i) | 4;
        v36 = *(v16 + v17);
        v37 = *(v11 + 360);
        v18 = *(v16 + 8 * i);
        v19 = *(v11 + 264);
        v38 = *(v19 + v17);
        v20 = *(v19 + 8 * i);
        v45 = 0.0;
        v21 = v52;
        v22 = &v52[v18];
        v44[0] = &v45;
        v44[1] = v52;
        v44[2] = v22;
        memset(&v44[3], 0, 13);
        v47 = i;
        v48 = v15;
        v49 = *(*(v46[0] + 336) + 8 * i);
        v50 = *(*(v46[0] + 264) + 8 * i);
        v23 = *(v11 + 288);
        sub_29A0C65A4(&v51, v46, v44, (*(*(v11 + 432) + 2 * i) >> 7) & 0xF, (*(*(v35 + 432) + 2 * v15) >> 7) & 0xF, a5);
        if (SLODWORD(v44[4]) >= 1 && v20 >= 1)
        {
          v24 = (v23 + 4 * v38);
          do
          {
            v25 = *v24++;
            v26 = *(v39[21] + 4 * v25);
            v27 = *(a4 + 2);
            v42 = *a4;
            v43 = v27 + v15;
            v40 = v42;
            v41 = v27 + v26;
            sub_29A0C93B4(&v42, &v40, *v22++);
            --v20;
          }

          while (v20);
        }

        if (SHIDWORD(v44[3]) >= 1 && v18 >= 1)
        {
          v28 = (v37 + 4 * v36);
          do
          {
            v29 = *v28++;
            v30 = *(*(v11 + 120) + 8 * v29 + 4 * (i == *(*(v11 + 120) + 8 * v29)));
            v31 = *(a4 + 2) + v15;
            v42 = *a4;
            v43 = v31;
            v32 = *(a3 + 2) + v30;
            v40 = *a3;
            v41 = v32;
            sub_29A0C93B4(&v42, &v40, *v21++);
            --v18;
          }

          while (v18);
        }

        v33 = *(a4 + 2) + v15;
        v42 = *a4;
        v43 = v33;
        v34 = *(a3 + 2) + i;
        v40 = *a3;
        v41 = v34;
        sub_29A0C93B4(&v42, &v40, v45);
        v13 = *(v11 + 8);
      }
    }

    v8 = __p;
  }

  operator delete(v8);
}

void sub_29A0C51E8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = *(*(*a1 + 72) + 8 * a2 - 8);
  if (*(v4 + 52))
  {
    v7 = 0;
    v8 = *(v4 + 8);
    v9 = *(v8 + 20);
    v33 = &v36;
    v34 = v9;
    v35 = 16;
    __p = 0;
    if (v9 >= 0x11)
    {
      v7 = operator new(4 * v9);
      __p = v7;
      v33 = v7;
      v35 = v9;
    }

    v10 = *v8;
    if (*v8 >= 1)
    {
      v11 = 0;
      v12.i32[1] = 0;
      v13 = vdupq_n_s64(4uLL);
      v28 = v13;
      do
      {
        v14 = *(*(v4 + 168) + 4 * v11);
        if (v14 != -1)
        {
          v15 = (*(v8 + 24) + 8 * v11);
          v16 = *v15;
          if (v16 >= 1)
          {
            v17 = *(v8 + 48) + 4 * v15[1];
            *v12.i32 = 1.0 / v16;
            v18 = (v16 + 3) & 0xFFFFFFFC;
            v19 = vdupq_n_s64(v16 - 1);
            v20 = v33 + 1;
            v21 = xmmword_29B430070;
            v22 = xmmword_29B433E10;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v19, v21));
              if (vuzp1_s16(v23, v12).u8[0])
              {
                *(v20 - 2) = v12.i32[0];
              }

              if (vuzp1_s16(v23, v12).i8[2])
              {
                *(v20 - 1) = v12.i32[0];
              }

              if (vuzp1_s16(v12, vmovn_s64(vcgeq_u64(v19, *&v22))).i32[1])
              {
                *v20 = v12.i32[0];
                v20[1] = v12.i32[0];
              }

              v22 = vaddq_s64(v22, v13);
              v21 = vaddq_s64(v21, v13);
              v20 += 4;
              v18 -= 4;
            }

            while (v18);
            v24 = 0;
            v25 = 4 * v16;
            do
            {
              v26 = *(a4 + 2) + v14;
              v31 = *a4;
              v32 = v26;
              v27 = *(a3 + 2) + *(v17 + v24);
              v29 = *a3;
              v30 = v27;
              sub_29A0C93B4(&v31, &v29, *(v33 + v24));
              v24 += 4;
            }

            while (v25 != v24);
            v10 = *v8;
            v13 = v28;
          }
        }

        ++v11;
      }

      while (v11 < v10);
      v7 = __p;
    }

    operator delete(v7);
  }
}

void sub_29A0C5440(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v29 = *MEMORY[0x29EDCA608];
  v8 = *(*(*a1 + 72) + 8 * a2 - 8);
  v9 = *(v8 + 8);
  v10 = *(v9 + 16);
  v24 = &v27;
  v25 = v10;
  v26 = 8;
  __p = 0;
  if (v10 >= 9)
  {
    v7 = operator new(4 * v10);
    __p = v7;
    v24 = v7;
    v26 = v10;
  }

  v11 = *(v9 + 4);
  if (v11 >= 1)
  {
    v12 = 0;
    for (i = 0; i < v11; ++i)
    {
      v14 = *(*(v8 + 216) + 4 * i);
      if (v14 != -1)
      {
        v15 = *(v9 + 120);
        v16 = *(a4 + 2) + v14;
        v22 = *a4;
        v23 = v16;
        v17 = *(a3 + 2) + *(v15 + v12);
        v20 = *a3;
        v21 = v17;
        sub_29A0C93B4(&v22, &v20, 0.5);
        v18 = *(a4 + 2) + v14;
        v22 = *a4;
        v23 = v18;
        v19 = *(a3 + 2) + *(v15 + v12 + 4);
        v20 = *a3;
        v21 = v19;
        sub_29A0C93B4(&v22, &v20, 0.5);
        v11 = *(v9 + 4);
      }

      v12 += 8;
    }

    v7 = __p;
  }

  operator delete(v7);
}

void sub_29A0C55E4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v8 = *(*(*a1 + 72) + 8 * a2 - 8);
  v9 = *(v8 + 8);
  v10 = 2 * *(v9 + 20);
  v20 = &v23;
  v21 = v10;
  v22 = 32;
  __p = 0;
  if (v10 >= 0x21)
  {
    v7 = operator new(4 * v10);
    __p = v7;
    v20 = v7;
    v22 = v10;
  }

  v11 = *(v9 + 8);
  if (v11 >= 1)
  {
    for (i = 0; i < v11; ++i)
    {
      v13 = *(*(v8 + 240) + 4 * i);
      if (v13 != -1)
      {
        v14 = *(a4 + 2);
        v18 = *a4;
        v19 = v14 + v13;
        v15 = i + *(a3 + 2);
        v16 = *a3;
        v17 = v15;
        sub_29A0C93B4(&v18, &v16, 1.0);
        v11 = *(v9 + 8);
      }
    }

    v7 = __p;
  }

  operator delete(v7);
}

int *sub_29A0C5730(int *result, int *a2, uint64_t a3, int a4, int a5)
{
  v5 = a3;
  v50 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v7 = *a2;
    v8 = a2[2];
    if (*(*(*a2 + 216) + 4 * v8) <= 0.0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v9 = *a2;
        LODWORD(v10) = a2[2];
        v11 = *(result + 3);
        goto LABEL_8;
      }
    }

    else if (a4 != 4)
    {
      v9 = *a2;
      v10 = a2[2];
      v28 = *(*(*a2 + 216) + 4 * v10);
      if (v28 < 1.0)
      {
        v11 = HIBYTE(*result);
        if ((*result & 0xFF0000) == 0 || (v28 + -1.0) <= 0.0)
        {
LABEL_8:
          v12 = *(*(v9 + 144) + 8 * v10);
          *(a3 + 24) = 2;
          *(a3 + 32) = v12;
          *(a3 + 36) = 1;
          if (v11 == 1)
          {
            if (v12 == 2)
            {
              result = sub_29A0C5B84(a2, &v48);
              if (v48 == 3 || (v13 = 0.25, v14 = 0.25, v49 == 3))
              {
                v15 = 0.47;
                if (v49 == 3)
                {
                  v16 = 0.47;
                }

                else
                {
                  v16 = 0.25;
                }

                if (v48 != 3)
                {
                  v15 = 0.25;
                }

                v14 = (v15 + v16) * 0.5;
                v13 = ((v14 * -2.0) + 1.0) * 0.5;
              }

              v17 = *v5;
              v17->f32[0] = v13;
              v17->f32[1] = v13;
              v9 = *a2;
              LODWORD(v12) = *(v5 + 32);
              goto LABEL_51;
            }

            v17 = *a3;
            __asm { FMOV            V0.2S, #0.25 }

            **a3 = _D0;
          }

          else
          {
            v17 = *a3;
            __asm { FMOV            V0.2S, #0.25 }

            **a3 = _D0;
            if (v12 == 2)
            {
              v14 = 0.25;
              LODWORD(v12) = 2;
LABEL_51:
              v38 = *(v5 + 16);
              *v38 = v14;
              v38[1] = v14;
LABEL_62:
              v46 = *(*(v9 + 216) + 4 * a2[2]);
              *v17 = vmla_n_f32(vmul_n_f32(*v17, 1.0 - v46), 0x3F0000003F000000, v46);
              if (v12 >= 1)
              {
                v47 = *(v5 + 16);
                v12 = v12;
                do
                {
                  *v47 = (1.0 - v46) * *v47;
                  ++v47;
                  --v12;
                }

                while (v12);
              }

              return result;
            }
          }

          if (v12 >= 1)
          {
            *_D0.i32 = 0.5 / v12;
            v39 = (v12 + 3) & 0xFFFFFFFC;
            v40 = vdupq_n_s64(v12 - 1);
            v41 = xmmword_29B433E10;
            v42 = xmmword_29B430070;
            v43 = (*(a3 + 16) + 8);
            v44 = vdupq_n_s64(4uLL);
            do
            {
              v45 = vmovn_s64(vcgeq_u64(v40, v42));
              if (vuzp1_s16(v45, _D0).u8[0])
              {
                *(v43 - 2) = _D0.i32[0];
              }

              if (vuzp1_s16(v45, _D0).i8[2])
              {
                *(v43 - 1) = _D0.i32[0];
              }

              if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v40, *&v41))).i32[1])
              {
                *v43 = _D0.i32[0];
                v43[1] = _D0.i32[0];
              }

              v41 = vaddq_s64(v41, v44);
              v42 = vaddq_s64(v42, v44);
              v43 += 4;
              v39 -= 4;
            }

            while (v39);
          }

          goto LABEL_62;
        }
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    _D0.i32[0] = 0.5;
    goto LABEL_37;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v7 = *a2;
  LODWORD(v8) = a2[2];
LABEL_19:
  v18 = *(*(v7 + 144) + 8 * v8);
  *(a3 + 24) = 2;
  *(a3 + 32) = v18;
  *(a3 + 36) = 1;
  if (*(result + 3) == 1)
  {
    if (v18 == 2)
    {
      result = sub_29A0C5B84(a2, &v48);
      if (v48 == 3 || (v19 = 0.25, _D0.i32[0] = 0.25, v49 == 3))
      {
        v21 = 0.47;
        if (v49 == 3)
        {
          v22 = 0.47;
        }

        else
        {
          v22 = 0.25;
        }

        if (v48 != 3)
        {
          v21 = 0.25;
        }

        *_D0.i32 = (v21 + v22) * 0.5;
        v19 = ((*_D0.i32 * -2.0) + 1.0) * 0.5;
      }

      v23 = *v5;
      *v23 = v19;
      v23[1] = v19;
      goto LABEL_31;
    }

    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
  }

  else
  {
    __asm { FMOV            V0.2S, #0.25 }

    **a3 = _D0;
    _D0.i32[0] = 0.25;
    if (v18 == 2)
    {
LABEL_31:
      v5 += 16;
LABEL_37:
      v29 = *v5;
      v29->i32[0] = _D0.i32[0];
      v29->i32[1] = _D0.i32[0];
      return result;
    }
  }

  if (v18 >= 1)
  {
    *_D0.i32 = 0.5 / v18;
    v30 = (v18 + 3) & 0xFFFFFFFC;
    v31 = vdupq_n_s64(v18 - 1);
    v32 = xmmword_29B433E10;
    v33 = xmmword_29B430070;
    v34 = (*(a3 + 16) + 8);
    v35 = vdupq_n_s64(4uLL);
    do
    {
      v36 = vmovn_s64(vcgeq_u64(v31, v33));
      if (vuzp1_s16(v36, _D0).u8[0])
      {
        *(v34 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v36, _D0).i8[2])
      {
        *(v34 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v31, *&v32))).i32[1])
      {
        *v34 = _D0.i32[0];
        v34[1] = _D0.i32[0];
      }

      v32 = vaddq_s64(v32, v35);
      v33 = vaddq_s64(v33, v35);
      v34 += 4;
      v30 -= 4;
    }

    while (v30);
  }

  return result;
}

int *sub_29A0C5B84(int *result, _DWORD *a2)
{
  v2 = *result;
  v3 = result[2];
  v4 = *(*result + 144);
  v5 = *(v4 + 8 * v3);
  if (v5 >= 1)
  {
    v6 = (*(v2 + 168) + 4 * *(v4 + 8 * v3 + 4));
    v7 = *(v2 + 24);
    do
    {
      v8 = *v6++;
      *a2++ = *(v7 + 8 * v8);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_29A0C5BD0(int *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v84 = *MEMORY[0x29EDCA608];
  v7 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v8 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v8;
    *(a3 + 32) = v8;
    *(a3 + 36) = 1;
    **a3 = (v8 - 2) / v8;
    if (v8 >= 1)
    {
      v9 = 1.0 / (v8 * v8);
      v10 = *(a3 + 8);
      v11 = *(a3 + 16);
      do
      {
        *v10++ = v9;
        *v11++ = v9;
        --v8;
      }

      while (v8);
    }

    return;
  }

  v12 = a4;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = a4 == 0;
  }

  if (v14)
  {
    v15 = a5;
  }

  else
  {
    v15 = a4;
  }

  v16 = *(a2 + 24);
  v17 = 4 * v16;
  MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v18 = &v82 - ((4 * v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v18, 4 * v16);
  if ((v12 | 4) != 4 && v15 == v12)
  {
    v18 = 0;
    v24 = 0.0;
LABEL_25:
    if (v12 == 4)
    {
      v82 = v15;
      v34 = 0xFFFFFFFF00000000;
      v35 = v18;
      do
      {
        v36 = *v35++;
        v34 += 0x100000000;
      }

      while (v36 <= 0.0);
      v37 = v16 << 32;
      v38 = &v18[4 * v16 - 4];
      do
      {
        v39 = *v38--;
        v37 -= 0x100000000;
      }

      while (v39 <= 0.0);
      v40 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v40;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v41 = *(a3 + 8);
      if (v40 >= 1)
      {
        bzero(*(a3 + 8), 4 * v40);
      }

      *(v41 + (v34 >> 30)) = 1040187392;
      *(v41 + (v37 >> 30)) = 1040187392;
      v15 = v82;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v15 != v12)
    {
      v83 = *a1;
      MEMORY[0x2A1C7C4A8](v19, v20, v21);
      bzero(&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v16);
      v42 = sub_29A0C61AC(a2, &v83, (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
      v44 = v42;
      v45 = *(a2 + 20);
      v46 = *(*(a2 + 8) + 408);
      v47 = *(v46 + 4 * v45);
      if (v15 || (v42 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v83, *(v46 + 4 * v45), v16, v42), v15 = v42, v42 != v12))
      {
        MEMORY[0x2A1C7C4A8](v42, 4 * ((2 * v16) | 1), v43);
        v49 = (&v82 - v48);
        bzero(&v82 - v48, v50);
        v51 = v49 + 1;
        if ((v15 - 1) > 1)
        {
          if (v15 == 4)
          {
            v58 = 0xFFFFFFFF00000000;
            v59 = v44;
            do
            {
              v60 = *v59++;
              v58 += 0x100000000;
            }

            while (v60 <= 0.0);
            v61 = v16 << 32;
            v62 = &v44[v16 - 1];
            do
            {
              v63 = *v62--;
              v61 -= 0x100000000;
            }

            while (v63 <= 0.0);
            v57 = *(a2 + 24);
            *v49 = 0.75;
            if (v57 >= 1)
            {
              bzero(v49 + 1, 4 * v57);
            }

            LODWORD(v52) = 0;
            *(v51 + (v58 >> 30)) = 1040187392;
            v64 = v61 >> 30;
            v56 = 0;
            *(v51 + v64) = 1040187392;
          }

          else
          {
            v56 = 0;
            LODWORD(v52) = 0;
            LODWORD(v57) = 0;
            *v49 = 1.0;
          }
        }

        else
        {
          v52 = *(a2 + 28);
          *v49 = (v52 - 2) / v52;
          if (v52 >= 1)
          {
            v53 = 1.0 / (v52 * v52);
            v54 = v49 + 1;
            v55 = v52;
            do
            {
              *v54 = v53;
              v54[v16] = v53;
              ++v54;
              --v55;
            }

            while (v55);
          }

          v56 = 1;
          LODWORD(v57) = v52;
        }

        v65 = OpenSubdiv::__aapl__::Sdc::Crease::ComputeFractionalWeightAtVertex(&v83, v24, v47, v16, v18, v44);
        v66 = 1.0 - *&v65;
        **a3 = ((1.0 - *&v65) * *v49) + (*&v65 * **a3);
        if (v57)
        {
          if (*(a3 + 28))
          {
            if (v57 >= 1)
            {
              v67 = *(a3 + 8);
              v68 = v57;
              v69 = v49 + 1;
              do
              {
                v70 = *v69++;
                *v67 = (v66 * v70) + (*&v65 * *v67);
                ++v67;
                --v68;
              }

              while (v68);
            }
          }

          else
          {
            *(a3 + 28) = v57;
            if (v57 >= 1)
            {
              v71 = *(a3 + 8);
              v72 = v57;
              v73 = v49 + 1;
              do
              {
                v74 = *v73++;
                *v71++ = v66 * v74;
                --v72;
              }

              while (v72);
            }
          }
        }

        if (v52)
        {
          v75 = &v51[v16];
          if (*(a3 + 32))
          {
            if (v52 >= 1)
            {
              v76 = *(a3 + 16);
              v77 = v52;
              do
              {
                v78 = *v75++;
                *v76 = (v66 * v78) + (*&v65 * *v76);
                ++v76;
                --v77;
              }

              while (v77);
            }
          }

          else
          {
            *(a3 + 32) = v52;
            *(a3 + 36) = v56;
            if (v52 >= 1)
            {
              v79 = *(a3 + 16);
              v80 = v52;
              do
              {
                v81 = *v75++;
                *v79++ = v66 * v81;
                --v80;
              }

              while (v80);
            }
          }
        }
      }
    }

    return;
  }

  v22 = *a2;
  v23 = *(a2 + 16);
  v24 = *(*(*a2 + 408) + 4 * v23);
  if (v16 >= 1)
  {
    v25 = (v22[45] + 4 * *(v22[42] + 8 * v23 + 4));
    v26 = v22[27];
    v27 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = v16;
    do
    {
      v29 = *v25++;
      *v27++ = *(v26 + 4 * v29);
      --v28;
    }

    while (v28);
  }

  if (!v12)
  {
    v83 = *a1;
    v19 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v83, v24, v16, (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v12 = v19;
    v7 = v19 - 1;
  }

  if (v7 > 1)
  {
    goto LABEL_25;
  }

  v30 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v30;
  *(a3 + 32) = v30;
  *(a3 + 36) = 1;
  **a3 = (v30 - 2) / v30;
  if (v30 >= 1)
  {
    v31 = 1.0 / (v30 * v30);
    v32 = *(a3 + 8);
    v33 = *(a3 + 16);
    do
    {
      *v32++ = v31;
      *v33++ = v31;
      --v30;
    }

    while (v30);
  }
}

float *sub_29A0C61AC(int *a1, OpenSubdiv::__aapl__::Sdc::Crease *this, float *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v6 = a1[6];
  v7 = &v14;
  __p = 0;
  if (v6 >= 0x11)
  {
    v7 = operator new(4 * v6);
    __p = v7;
    LODWORD(v6) = a1[6];
  }

  if (v6 >= 1)
  {
    v8 = (*(*a1 + 360) + 4 * *(*(*a1 + 336) + 8 * a1[4] + 4));
    v9 = *(*a1 + 216);
    v10 = v6;
    v11 = v7;
    do
    {
      v12 = *v8++;
      *v11 = *(v9 + 4 * v12);
      v11 = (v11 + 4);
      --v10;
    }

    while (v10);
  }

  OpenSubdiv::__aapl__::Sdc::Crease::SubdivideEdgeSharpnessesAroundVertex(this, v6, v7, a3);
  operator delete(__p);
  return a3;
}

_DWORD *sub_29A0C62CC(_DWORD *result, int *a2, uint64_t a3, int a4, int a5)
{
  if (!a4)
  {
    v5 = *a2;
    v6 = a2[2];
    if (*(*(*a2 + 216) + 4 * v6) <= 0.0)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (a5)
    {
      if (a5 != 4)
      {
        v7 = *a2;
        LODWORD(v8) = a2[2];
LABEL_8:
        v9 = v8;
        v10 = *(*(v7 + 144) + 8 * v8);
        *(a3 + 24) = 2;
        *(a3 + 32) = v10;
        *(a3 + 36) = 0;
        v11 = *a3;
        __asm { FMOV            V0.2S, #0.375 }

        **a3 = _D0;
        if (v10 == 2)
        {
          **(a3 + 16) = 0x3E0000003E000000;
        }

        else if (v10 >= 1)
        {
          *_D0.i32 = (2.0 / v10) * 0.125;
          v29 = (v10 + 3) & 0xFFFFFFFC;
          v30 = vdupq_n_s64(v10 - 1);
          v31 = xmmword_29B433E10;
          v32 = xmmword_29B430070;
          v33 = (*(a3 + 16) + 8);
          v34 = vdupq_n_s64(4uLL);
          do
          {
            v35 = vmovn_s64(vcgeq_u64(v30, v32));
            if (vuzp1_s16(v35, _D0).u8[0])
            {
              *(v33 - 2) = _D0.i32[0];
            }

            if (vuzp1_s16(v35, _D0).i8[2])
            {
              *(v33 - 1) = _D0.i32[0];
            }

            if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
            {
              *v33 = _D0.i32[0];
              v33[1] = _D0.i32[0];
            }

            v31 = vaddq_s64(v31, v34);
            v32 = vaddq_s64(v32, v34);
            v33 += 4;
            v29 -= 4;
          }

          while (v29);
        }

        v36 = *(*(v7 + 216) + 4 * v9);
        *v11 = vmla_n_f32(vmul_n_f32(*v11, 1.0 - v36), 0x3F0000003F000000, v36);
        if (v10 >= 1)
        {
          v37 = *(a3 + 16);
          do
          {
            *v37 = (1.0 - v36) * *v37;
            ++v37;
            --v10;
          }

          while (v10);
        }

        return result;
      }
    }

    else if (a4 != 4)
    {
      v7 = *a2;
      v8 = a2[2];
      v27 = *(*(*a2 + 216) + 4 * v8);
      if (v27 < 1.0 && ((*result & 0xFF0000) == 0 || (v27 + -1.0) <= 0.0))
      {
        goto LABEL_8;
      }
    }

    *(a3 + 24) = 2;
    *(a3 + 28) = 0;
    *(a3 + 36) = 0;
    v19 = 0.5;
    goto LABEL_27;
  }

  if (a4 != 1)
  {
    goto LABEL_5;
  }

  v5 = *a2;
  LODWORD(v6) = a2[2];
LABEL_10:
  v17 = *(*(v5 + 144) + 8 * v6);
  *(a3 + 24) = 2;
  *(a3 + 32) = v17;
  *(a3 + 36) = 0;
  __asm { FMOV            V0.2S, #0.375 }

  **a3 = _D0;
  if (v17 == 2)
  {
    a3 += 16;
    v19 = 0.125;
LABEL_27:
    v28 = *a3;
    v28->f32[0] = v19;
    v28->f32[1] = v19;
    return result;
  }

  if (v17 >= 1)
  {
    *_D0.i32 = (2.0 / v17) * 0.125;
    v20 = (v17 + 3) & 0xFFFFFFFC;
    v21 = vdupq_n_s64(v17 - 1);
    v22 = xmmword_29B433E10;
    v23 = xmmword_29B430070;
    v24 = (*(a3 + 16) + 8);
    v25 = vdupq_n_s64(4uLL);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v21, v23));
      if (vuzp1_s16(v26, _D0).u8[0])
      {
        *(v24 - 2) = _D0.i32[0];
      }

      if (vuzp1_s16(v26, _D0).i8[2])
      {
        *(v24 - 1) = _D0.i32[0];
      }

      if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v21, *&v22))).i32[1])
      {
        *v24 = _D0.i32[0];
        v24[1] = _D0.i32[0];
      }

      v22 = vaddq_s64(v22, v25);
      v23 = vaddq_s64(v23, v25);
      v24 += 4;
      v20 -= 4;
    }

    while (v20);
  }

  return result;
}

void sub_29A0C65A4(int *a1, uint64_t a2, uint64_t a3, int a4, int a5, long double a6)
{
  v96 = *MEMORY[0x29EDCA608];
  v8 = a4 - 1;
  if ((a4 - 1) <= 1)
  {
    v9 = *(a2 + 28);
    *(a3 + 24) = 1;
    *(a3 + 28) = v9;
    *(a3 + 36) = 0;
    if (v9 == 6)
    {
      **a3 = 1059061760;
      LODWORD(a6) = 1031798784;
    }

    else
    {
      v30 = 1.0 / v9;
      v31 = cos(v30 * 6.28318531);
      a6 = v30 * (0.625 - (v31 * 0.25 + 0.375) * (v31 * 0.25 + 0.375));
      *&a6 = a6;
      v32 = 1.0 - *&a6 * v9;
      **a3 = v32;
      if (v9 < 1)
      {
        return;
      }
    }

    v33 = (v9 + 3) & 0xFFFFFFFC;
    v34 = vdupq_n_s64(v9 - 1);
    v35 = xmmword_29B433E10;
    v36 = xmmword_29B430070;
    v37 = (*(a3 + 8) + 8);
    v38 = vdupq_n_s64(4uLL);
    do
    {
      v39 = vmovn_s64(vcgeq_u64(v34, v36));
      if (vuzp1_s16(v39, *&a6).u8[0])
      {
        *(v37 - 2) = LODWORD(a6);
      }

      if (vuzp1_s16(v39, *&a6).i8[2])
      {
        *(v37 - 1) = LODWORD(a6);
      }

      if (vuzp1_s16(*&a6, vmovn_s64(vcgeq_u64(v34, *&v35))).i32[1])
      {
        *v37 = LODWORD(a6);
        v37[1] = LODWORD(a6);
      }

      v35 = vaddq_s64(v35, v38);
      v36 = vaddq_s64(v36, v38);
      v37 += 4;
      v33 -= 4;
    }

    while (v33);
    return;
  }

  v10 = a4;
  if (a5)
  {
    v12 = 1;
  }

  else
  {
    v12 = a4 == 0;
  }

  if (v12)
  {
    v13 = a5;
  }

  else
  {
    v13 = a4;
  }

  v14 = *(a2 + 24);
  v15 = 4 * v14;
  MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v16 = &v94 - ((4 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v16, 4 * v14);
  if ((v10 | 4) != 4 && v13 == v10)
  {
    v16 = 0;
    v23 = 0.0;
    goto LABEL_31;
  }

  v21 = *a2;
  v22 = *(a2 + 16);
  v23 = *(*(*a2 + 408) + 4 * v22);
  if (v14 >= 1)
  {
    v24 = (v21[45] + 4 * *(v21[42] + 8 * v22 + 4));
    v25 = v21[27];
    v26 = (&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = v14;
    do
    {
      v28 = *v24++;
      *v26++ = *(v25 + 4 * v28);
      --v27;
    }

    while (v27);
  }

  if (!v10)
  {
    v95 = *a1;
    v17 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v95, v23, v14, (&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v10 = v17;
    v8 = v17 - 1;
  }

  if (v8 > 1)
  {
LABEL_31:
    if (v10 == 4)
    {
      v94 = v13;
      v40 = 0xFFFFFFFF00000000;
      v41 = v16;
      do
      {
        v42 = *v41++;
        v40 += 0x100000000;
      }

      while (v42 <= 0.0);
      v43 = v14 << 32;
      v44 = &v16[4 * v14 - 4];
      do
      {
        v45 = *v44--;
        v43 -= 0x100000000;
      }

      while (v45 <= 0.0);
      v46 = *(a2 + 24);
      *(a3 + 24) = 1;
      *(a3 + 28) = v46;
      *(a3 + 36) = 0;
      **a3 = 1061158912;
      v47 = *(a3 + 8);
      if (v46 >= 1)
      {
        bzero(*(a3 + 8), 4 * v46);
      }

      *(v47 + (v40 >> 30)) = 1040187392;
      *(v47 + (v43 >> 30)) = 1040187392;
      v13 = v94;
    }

    else
    {
      *(a3 + 24) = 1;
      *(a3 + 28) = 0;
      *(a3 + 36) = 0;
      **a3 = 1065353216;
    }

    if (v13 == v10)
    {
      return;
    }

    v95 = *a1;
    MEMORY[0x2A1C7C4A8](v17, v18, v19);
    bzero(&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 4 * v14);
    v48 = sub_29A0C61AC(a2, &v95, (&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v50 = v48;
    v51 = *(a2 + 20);
    v52 = *(*(a2 + 8) + 408);
    v53 = *(v52 + 4 * v51);
    if (!v13)
    {
      v48 = OpenSubdiv::__aapl__::Sdc::Crease::DetermineVertexVertexRule(&v95, *(v52 + 4 * v51), v14, v48);
      v13 = v48;
      if (v48 == v10)
      {
        return;
      }
    }

    MEMORY[0x2A1C7C4A8](v48, 4 * ((2 * v14) | 1), v49);
    v55 = (&v94 - v54);
    bzero(&v94 - v54, v56);
    v58 = (v55 + 1);
    if ((v13 - 1) > 1)
    {
      if (v13 == 4)
      {
        v70 = 0xFFFFFFFF00000000;
        v71 = v50;
        do
        {
          v72 = *v71++;
          v70 += 0x100000000;
        }

        while (v72 <= 0.0);
        v73 = v14 << 32;
        v74 = &v50[v14 - 1];
        do
        {
          v75 = *v74--;
          v73 -= 0x100000000;
        }

        while (v75 <= 0.0);
        v59 = *(a2 + 24);
        *v55 = 1061158912;
        if (v59 >= 1)
        {
          bzero(v55 + 1, 4 * v59);
        }

        *(v58 + (v70 >> 30)) = 0.125;
        *(v58 + (v73 >> 30)) = 0.125;
      }

      else
      {
        LODWORD(v59) = 0;
        *v55 = 1065353216;
      }

      goto LABEL_75;
    }

    v59 = *(a2 + 28);
    if (v59 == 6)
    {
      *v55 = 1059061760;
      LODWORD(v57) = 1031798784;
    }

    else
    {
      v76 = 1.0 / v59;
      v77 = cos(v76 * 6.28318531);
      v57 = v76 * (0.625 - (v77 * 0.25 + 0.375) * (v77 * 0.25 + 0.375));
      *&v57 = v57;
      v78 = 1.0 - *&v57 * v59;
      *v55 = v78;
      if (v59 < 1)
      {
LABEL_75:
        v86 = OpenSubdiv::__aapl__::Sdc::Crease::ComputeFractionalWeightAtVertex(&v95, v23, v53, v14, v16, v50);
        v87 = 1.0 - *&v86;
        **a3 = ((1.0 - *&v86) * *v55) + (*&v86 * **a3);
        if (v59)
        {
          if (*(a3 + 28))
          {
            if (v59 >= 1)
            {
              v88 = *(a3 + 8);
              v89 = v59;
              do
              {
                v90 = *v58++;
                *v88 = (v87 * v90) + (*&v86 * *v88);
                ++v88;
                --v89;
              }

              while (v89);
            }
          }

          else
          {
            *(a3 + 28) = v59;
            if (v59 >= 1)
            {
              v91 = *(a3 + 8);
              v92 = v59;
              do
              {
                v93 = *v58++;
                *v91++ = v87 * v93;
                --v92;
              }

              while (v92);
            }
          }
        }

        return;
      }
    }

    v79 = (v59 + 3) & 0xFFFFFFFC;
    v80 = vdupq_n_s64(v59 - 1);
    v81 = xmmword_29B433E10;
    v82 = xmmword_29B430070;
    v83 = v55 + 4;
    v84 = vdupq_n_s64(4uLL);
    do
    {
      v85 = vmovn_s64(vcgeq_u64(v80, v82));
      if (vuzp1_s16(v85, *&v57).u8[0])
      {
        *(v83 - 3) = LODWORD(v57);
      }

      if (vuzp1_s16(v85, *&v57).i8[2])
      {
        *(v83 - 2) = LODWORD(v57);
      }

      if (vuzp1_s16(*&v57, vmovn_s64(vcgeq_u64(v80, *&v81))).i32[1])
      {
        *(v83 - 1) = LODWORD(v57);
        *v83 = LODWORD(v57);
      }

      v81 = vaddq_s64(v81, v84);
      v82 = vaddq_s64(v82, v84);
      v83 += 4;
      v79 -= 4;
    }

    while (v79);
    goto LABEL_75;
  }

  v29 = *(a2 + 28);
  *(a3 + 24) = 1;
  *(a3 + 28) = v29;
  *(a3 + 36) = 0;
  if (v29 == 6)
  {
    **a3 = 1059061760;
    LODWORD(v20) = 1031798784;
  }

  else
  {
    v60 = 1.0 / v29;
    v61 = cos(v60 * 6.28318531);
    v20 = v60 * (0.625 - (v61 * 0.25 + 0.375) * (v61 * 0.25 + 0.375));
    *&v20 = v20;
    v62 = 1.0 - *&v20 * v29;
    **a3 = v62;
    if (v29 < 1)
    {
      return;
    }
  }

  v63 = (v29 + 3) & 0xFFFFFFFC;
  v64 = vdupq_n_s64(v29 - 1);
  v65 = xmmword_29B433E10;
  v66 = xmmword_29B430070;
  v67 = (*(a3 + 8) + 8);
  v68 = vdupq_n_s64(4uLL);
  do
  {
    v69 = vmovn_s64(vcgeq_u64(v64, v66));
    if (vuzp1_s16(v69, *&v20).u8[0])
    {
      *(v67 - 2) = LODWORD(v20);
    }

    if (vuzp1_s16(v69, *&v20).i8[2])
    {
      *(v67 - 1) = LODWORD(v20);
    }

    if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v64, *&v65))).i32[1])
    {
      *v67 = LODWORD(v20);
      v67[1] = LODWORD(v20);
    }

    v65 = vaddq_s64(v65, v68);
    v66 = vaddq_s64(v66, v68);
    v67 += 4;
    v63 -= 4;
  }

  while (v63);
}

void sub_29A0C6D40(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
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

void sub_29A0C6FC4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
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

            sub_29A0C5730(&v61, &v58, v60, v18, (*(*(v49 + 432) + 2 * v16) >> 7) & 0xF);
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

void sub_29A0C7488(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v91 = *MEMORY[0x29EDCA608];
  v7 = *a1;
  v8 = *(*(*a1 + 72) + 8 * a2 - 8);
  v78 = *(*a1 + 4);
  v62 = v8;
  v58 = v8[1];
  v56 = v8[2];
  v59 = *(*(v58 + 456) + 8 * a5);
  v9 = (*(v59 + 12) & 1) != 0 || *v7 == 0;
  v65 = v9;
  v64 = *(v8[60] + 8 * a5);
  v61 = *(*(v56 + 456) + 8 * a5);
  v10 = *(v58 + 20);
  v86 = &v89;
  v87 = 2 * v10;
  v88 = 32;
  v90 = 0;
  if (2 * v10 >= 0x21)
  {
    v90 = operator new(8 * v10);
    v86 = v90;
    v88 = 2 * v10;
    v10 = *(v58 + 20);
  }

  v11 = 0;
  v81 = &v84;
  v82 = v10;
  v83 = 16;
  __p = 0;
  if (v10 >= 0x11)
  {
    v11 = operator new(4 * v10);
    __p = v11;
    v81 = v11;
    v83 = v10;
  }

  v73[0] = v58;
  v73[1] = v56;
  if (*(v58 + 8) >= 1)
  {
    v12 = 0;
    do
    {
      v13 = *(v62[30] + 4 * v12);
      if (v13 != -1)
      {
        v14 = *(*(v59 + 96) + 4 * v12);
        v15 = (*(v59 + 144) + 4 * v14);
        v16 = *(v61[12] + 4 * v13);
        v17 = (v61[18] + 4 * v16);
        v18 = *v17;
        v19 = v61[21];
        v20 = v65;
        if (*(v19 + v18))
        {
          v20 = 0;
        }

        if (v20)
        {
          v21 = v18 + *(a4 + 8);
          v66 = *a4;
          LODWORD(v67) = v21;
          v22 = *(a3 + 8) + *v15;
          v71 = *a3;
          v72 = v22;
          sub_29A0C93B4(&v66, &v71, 1.0);
        }

        else if (*(v19 + v18))
        {
          v63 = *(v61[9] + 2 * v13);
          if (*(v61[9] + 2 * v13))
          {
            v39 = 0;
            v57 = *(v59 + 168) + v14;
            v60 = v19 + v16;
            do
            {
              v40 = *(v64[5] + 2 * (v39 + *(*(v64[4] + 96) + 4 * v13)));
              v41 = v15;
              v42 = v15[v40];
              v43 = v17[v39];
              v44 = *(a4 + 8);
              if (!v65 && (*(v60 + v39) & 8) != 0)
              {
                sub_29A0A2658(v59, v12, *(v64[5] + 2 * (v39 + *(*(v64[4] + 96) + 4 * v13))), &v79);
                if ((*(v57 + v40) & 0x10) != 0)
                {
                  if ((*(v57 + v40) & 0x20) != 0)
                  {
                    v48 = v40 == 0;
                  }

                  else
                  {
                    v48 = v40;
                  }

                  v49 = sub_29A0A445C(v64, v12, v48, v13);
                  v46 = v49 + ((1.0 - v49) * 0.75);
                  v47 = (1.0 - v49) * 0.125;
                }

                else
                {
                  v46 = 0.75;
                  v47 = 0.125;
                }

                v50 = *(a4 + 8) + v43;
                v66 = *a4;
                LODWORD(v67) = v50;
                v51 = *(a3 + 8);
                v71 = *a3;
                v72 = v51 + v79;
                sub_29A0C93B4(&v66, &v71, v47);
                v52 = *(a4 + 8) + v43;
                v66 = *a4;
                LODWORD(v67) = v52;
                v53 = *(a3 + 8);
                v71 = *a3;
                v72 = v53 + HIDWORD(v79);
                sub_29A0C93B4(&v66, &v71, v47);
                v54 = *(a4 + 8) + v43;
                v66 = *a4;
                LODWORD(v67) = v54;
                v55 = *(a3 + 8) + v42;
                v71 = *a3;
                v72 = v55;
                sub_29A0C93B4(&v66, &v71, v46);
              }

              else
              {
                v66 = *a4;
                LODWORD(v67) = v44 + v43;
                v45 = *(a3 + 8) + v42;
                v71 = *a3;
                v72 = v45;
                sub_29A0C93B4(&v66, &v71, 1.0);
              }

              v15 = v41;
              ++v39;
            }

            while (v63 != v39);
          }
        }

        else
        {
          v23 = *(*(v58 + 336) + 8 * v12);
          v70 = 0.0;
          v24 = v86;
          v25 = v86 + v23;
          v66 = &v70;
          v67 = v86;
          v68 = v25;
          memset(v69, 0, 13);
          v74 = v12;
          v75 = v13;
          v76 = *(*(v73[0] + 336) + 8 * v12);
          v77 = *(*(v73[0] + 264) + 8 * v12);
          sub_29A0C5BD0(&v78, v73, &v66, (*(*(v58 + 432) + 2 * v12) >> 7) & 0xF, (*(*(v56 + 432) + 2 * v13) >> 7) & 0xF);
          v26 = *v15;
          v27 = *v17;
          if (v69[2] >= 1)
          {
            v28 = *(v58 + 264);
            v29 = *(v28 + 8 * v12);
            if (v29 >= 1)
            {
              v30 = (*(v58 + 288) + 4 * *(v28 + 4 * ((2 * v12) | 1)));
              do
              {
                v31 = *v30++;
                v32 = *(v61[12] + 4 * *(v62[21] + 4 * v31));
                v33 = *(a4 + 8);
                v71 = *a4;
                v72 = v33 + v27;
                v79 = v71;
                v80 = v33 + v32;
                sub_29A0C93B4(&v71, &v79, *v25++);
                --v29;
              }

              while (v29);
            }
          }

          if (v69[1] >= 1)
          {
            sub_29A0A28F8(v59, v12, v81);
            if (v23 >= 1)
            {
              v34 = 0;
              do
              {
                v35 = *(a4 + 8) + v27;
                v71 = *a4;
                v72 = v35;
                v36 = *(a3 + 8) + *(v81 + v34);
                v79 = *a3;
                v80 = v36;
                sub_29A0C93B4(&v71, &v79, *(v24 + v34));
                v34 += 4;
              }

              while (4 * v23 != v34);
            }
          }

          v37 = *(a4 + 8) + v27;
          v71 = *a4;
          v72 = v37;
          v38 = *(a3 + 8) + v26;
          v79 = *a3;
          v80 = v38;
          sub_29A0C93B4(&v71, &v79, v70);
        }
      }

      ++v12;
    }

    while (v12 < *(v58 + 8));
    v11 = __p;
  }

  operator delete(v11);
  operator delete(v90);
}

void sub_29A0C7AF0(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, int a5)
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