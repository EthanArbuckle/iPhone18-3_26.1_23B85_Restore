unint64_t sub_298BF0A98(uint64_t a1, uint64_t a2)
{
  v2 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    v2 = 0;
  }

  *(a1 + 24);
  return v2;
}

uint64_t sub_298BF0AE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v5 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  }

  else
  {
    v5 = 0;
  }

  a3(a4, v5);

  return (a3)(a4, v5 + 2);
}

uint64_t sub_298BF0B44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v108 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    *v103 = "HWTrace.cpp";
    v105 = ":";
    v107 = 771;
    v102 = 3;
    LODWORD(v100) = 3617845;
    v80 = v103;
    v82 = &v100;
    LOWORD(v84) = 1026;
    *&v86 = &v80;
    *&v87 = ": ";
    LOWORD(v88) = 770;
    v12 = "Empty trace";
LABEL_5:
    *&v93 = &v86;
    *&v94 = v12;
    LOWORD(v95) = 770;
    sub_298B996A4(&v93, &__p);
    operator new();
  }

  v8 = a3;
  v10 = *(a1 + 24);
  v11 = (v10 / 0x12) & 0xFFFFFFFFFFFFFFCLL;
  if (v11 < a3)
  {
    std::generic_category();
    *v103 = "HWTrace.cpp";
    v105 = ":";
    v107 = 771;
    v102 = 3;
    LODWORD(v100) = 3748917;
    v80 = v103;
    v82 = &v100;
    LOWORD(v84) = 1026;
    *&v86 = &v80;
    *&v87 = ": ";
    LOWORD(v88) = 770;
    v12 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v15 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    v16 = (a2 & 0xFFFFFFFFFFFFFFFCLL) - 2;
  }

  else
  {
    v16 = 0;
  }

  if ((v15 | 2) <= v11)
  {
    v17 = v15 | 2;
  }

  else
  {
    v17 = (a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v18 = 36 * ((v17 >> 1) - (v16 >> 1));
  if (v10 >= 4 * ((v16 >> 1) + 4 * v16))
  {
    v19 = 4 * ((v16 >> 1) + 4 * v16);
  }

  else
  {
    v19 = v10;
  }

  v20 = *(a1 + 16) + v19;
  v21 = v10 - v19;
  if (v21 >= v18)
  {
    v21 = v18;
  }

  __p = *(a1 + 8);
  v91 = v20;
  v22 = v21;
  v92 = v21;
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  v25 = &v24[v23];
  if (v23)
  {
    v26 = 8 * v23;
    while (v20 > *v24)
    {
      ++v24;
      v26 -= 8;
      if (!v26)
      {
        v24 = v25;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v69 = *(a5 + 16);
  v75 = *(a5 + 24);
  result = (*(*a5 + 24))(v98, a5, a1, v16);
  if (v99)
  {
    v28 = *&v98[0];
    *&v98[0] = 0;
    *a7 = v28;
    if (v28)
    {
      goto LABEL_131;
    }
  }

  else
  {
    *a7 = 0;
  }

  v70 = v16;
  v71 = v20;
  v72 = a1;
  v86 = v98[0];
  v87 = v98[1];
  v88 = v98[2];
  v89 = v98[3];
  WORD2(v82) = 0;
  v83 = 0;
  v84 = 0;
  if (v22 < 0x48)
  {
    goto LABEL_127;
  }

  v29 = v22;
  v30 = v25 - v24;
  v74 = v8;
  v31 = v70;
  while (1)
  {
LABEL_28:
    v68 = v29;
    if (v30)
    {
      if (*v24 == v71)
      {
        v67 = v30 - 1;
        ++v24;
        v32 = 1;
        v33 = 1;
        result = sub_298BEF978(&v93, &__p, a6);
        if ((BYTE8(v94) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v67 = v30;
        v32 = 0;
        v33 = 0;
        result = sub_298BEF978(&v93, &__p, a6);
        if ((BYTE8(v94) & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v67 = 0;
      result = sub_298BEF978(&v93, &__p, a6);
      if ((BYTE8(v94) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v34 = v93;
    *a7 = v93;
    if (v34)
    {
      break;
    }

LABEL_36:
    v35 = v94;
    *a7 = 0;
    v36 = *v35;
    if (*v35 == 0x155AA550055AA551 || v36 == 0x155AA551155AA551 || v36 == 0x155AA552255AA551)
    {
      v39 = 0;
      v93 = *v35;
      v94 = *(v35 + 1);
      v95 = *(v35 + 2);
      v96 = *(v35 + 3);
      v97 = v35[8];
      v40 = v93 == 0x155AA552255AA551;
      v41 = (&v86 + v40);
      while (1)
      {
        v42 = &v93 + 32 * (v39 >> 1) + 8;
        v43 = &v42[4 * (v39 & 1)];
        v44 = *(v43 + 6);
        v45 = *(v43 + 4);
        v46 = v45 | (v44 << 32);
        v77 = *&v42[8 * (v39 & 1)];
        v79 = v44;
        v78 = v45;
        LOBYTE(v80) = 1;
        BYTE1(v80) = v33 & 1;
        BYTE2(v80) = v40;
        BYTE3(v80) = BYTE2(v45) & 1;
        BYTE4(v80) = v46 >> 25;
        v47 = (v45 >> 22) & 7;
        BYTE5(v80) = (v45 >> 22) & 7;
        if ((((v46 >> 16) & 0x3E) << 21) & 0xFFFFFF | ((v46 >> 16) >> 3) & 7) < 6 && ((0x2Fu >> (((v46 >> 16) >> 3) & 7)))
        {
          v48 = dword_298D1B27C[(((v46 >> 16) & 0x3E) << 21) & 0xFFFFFF | ((v46 >> 16) >> 3) & 7];
        }

        else
        {
          v48 = (v45 >> 17) & 3;
          if (v48 - 1 < 3)
          {
            LODWORD(v82) = (v45 >> 17) & 3;
            WORD2(v82) = (v45 >> 19) & 7 | 0x100;
            goto LABEL_52;
          }

          v48 = 14;
        }

        LODWORD(v82) = v48;
LABEL_52:
        v83 = &v77;
        v84 = 5;
        v85 = v31;
        if (*(v41 | 8))
        {
          v49 = *v41;
          if ((v45 & 0x1C00000) == 0)
          {
            v52 = (v46 >> 25);
            v53 = 1;
            goto LABEL_73;
          }
        }

        else
        {
          v49 = *v41;
        }

        if (*(v41 | 8))
        {
          v50 = 510 << ((v45 >> 22) & 7);
        }

        else
        {
          v50 = 0;
        }

        result = (*(*a5 + 32))(&v100, a5, v72, v49, *(v41 + 8), v31, v40, v50 & 0xFE);
        if (v101)
        {
          v51 = v100;
          v100 = 0;
          *a7 = v51;
          if (v51)
          {
            goto LABEL_128;
          }
        }

        else
        {
          *a7 = 0;
          v54 = v100;
          if (v100)
          {
            *v41 = v100;
            *(v41 + 8) = 1;
            v49 = v54;
          }
        }

        result = sub_298BEF978(v103, &__p, a6);
        if ((v106 & 1) != 0 && (v55 = *v103, *a7 = *v103, v55))
        {
          v56 = 0;
          if (v101)
          {
            goto LABEL_69;
          }
        }

        else
        {
          *a7 = 0;
          v56 = 1;
          if (v101)
          {
LABEL_69:
            result = v100;
            v100 = 0;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }
        }

        if (!v56)
        {
          goto LABEL_128;
        }

        v47 = BYTE5(v80);
        v52 = BYTE4(v80);
        v48 = v82;
        v53 = v80;
LABEL_73:
        if (*(v41 + 8))
        {
          v57 = v49;
        }

        else
        {
          v57 = 0;
        }

        if (v47)
        {
          v58 = 1;
        }

        else
        {
          v58 = v57 == 0;
        }

        v59 = v57 & 0xFFFFFFFFFFFFFF00 | v52;
        if (v58)
        {
          v59 = v57;
        }

        if ((v53 & 1) != 0 && v48 == 7)
        {
          v104 = 0;
          v103[0] = v77 & 7;
          *&v103[1] = v77 >> 3;
          v59 = v77 >> 3;
        }

        if (v75)
        {
          v60 = v59 > v75;
        }

        else
        {
          v60 = 0;
        }

        v61 = !v60;
        if (v59 <= v57 || (v53 & 1) == 0 || !v61)
        {
          v81 = v57;
          if (!v57)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v81 = v59;
          v49 = v59;
        }

        v62 = &v86 + BYTE2(v80);
        *v62 = v49;
        *(v62 + 8) = 1;
LABEL_96:
        if (v31 >= a2 && v31 < v74)
        {
          if ((v53 & 1) == 0)
          {
            LODWORD(v82) = 0;
            v83 = 0;
            v84 = 0;
          }

          result = (*(*a4 + 16))(a4, &v80);
          if (*a7)
          {
            goto LABEL_128;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_127;
          }
        }

        v33 = 0;
        ++v31;
        if (++v39 == 4)
        {
          v30 = v67;
          v63 = 72;
          if (v68 < 0x48)
          {
            v63 = v68;
          }

          v29 = v68 - v63;
          v71 += v63;
          v91 = v71;
          v92 = v68 - v63;
          v8 = v74;
          if (v68 - v63 <= 0x47)
          {
LABEL_127:
            *a7 = 0;
            goto LABEL_128;
          }

          goto LABEL_28;
        }
      }
    }

    LOBYTE(v80) = 0;
    BYTE1(v80) = v32;
    *(&v80 + 2) = 0;
    v64 = v86;
    if ((BYTE8(v86) & 1) == 0)
    {
      v64 = v69;
    }

    v81 = v64;
    LODWORD(v82) = 2;
    if (BYTE5(v82) == 1)
    {
      BYTE5(v82) = 0;
    }

    v83 = 0;
    v84 = 0;
    if (v31 >= a2 && v31 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_127;
      }

      v85 = v31;
      (*(*a4 + 24))(a4, v31);
      result = (*(*a4 + 16))(a4, &v80);
      if (*a7)
      {
        break;
      }
    }

    if (v31 + 1 >= a2 && v31 + 1 < v8)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_127;
      }

      v85 = v31 + 1;
      (*(*a4 + 24))(a4, v31 + 1);
      result = (*(*a4 + 16))(a4, &v80);
      if (*a7)
      {
        break;
      }
    }

    v29 -= 36;
    v71 += 36;
    v91 = v71;
    v92 = v68 - 36;
    if (v31 == v70 && v29 >= 0x48)
    {
      result = (*(*a5 + 24))(&v93, a5, v72, v70 + 2);
      if (v97)
      {
        v65 = v93;
        *&v93 = 0;
        *a7 = v65;
        if (v65)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v86 = v93;
      v87 = v94;
      v88 = v95;
      v89 = v96;
    }

    v31 += 2;
    v30 = v67;
    if (v29 <= 0x47)
    {
      goto LABEL_127;
    }
  }

LABEL_128:
  if (v99)
  {
    result = *&v98[0];
    *&v98[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_131:
  v66 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_298BF16CC(uint64_t a1, unint64_t a2)
{
  v2 = 10 * (a2 / 0xA);
  v3 = v2 - 5;
  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 24);
  return v3;
}

uint64_t sub_298BF172C(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, unint64_t), uint64_t a4)
{
  v5 = 10 * (a2 / 0xA);
  if (v5)
  {
    v6 = v5 - 5;
  }

  else
  {
    v6 = 0;
  }

  a3(a4, v6);

  return (a3)(a4, v6 + 5);
}

uint64_t sub_298BF17A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v100 = *MEMORY[0x29EDCA608];
  if (a2 >= a3)
  {
    std::generic_category();
    v85 = "HWTrace.cpp";
    v87 = ":";
    v88 = 771;
    v97 = 3;
    strcpy(v96, "547");
    v75 = &v85;
    v77 = v96;
    LOWORD(v79) = 1026;
    *&v81 = &v75;
    *&v82 = ": ";
    LOWORD(v83) = 770;
    v11 = "Empty trace";
LABEL_5:
    *&v89 = &v81;
    *&v90 = v11;
    LOWORD(v91) = 770;
    sub_298B996A4(&v89, &v98);
    operator new();
  }

  v9 = *(a1 + 24);
  v10 = 10 * (v9 >> 7);
  if (v10 < a3)
  {
    std::generic_category();
    v85 = "HWTrace.cpp";
    v87 = ":";
    v88 = 771;
    v97 = 3;
    strcpy(v96, "549");
    v75 = &v85;
    v77 = v96;
    LOWORD(v79) = 1026;
    *&v81 = &v75;
    *&v82 = ": ";
    LOWORD(v83) = 770;
    v11 = "Range is too big";
    goto LABEL_5;
  }

  *(a5 + 8) = *(a1 + 32);
  v15 = 10 * (a2 / 0xA);
  v16 = 10 * (a3 / 0xA);
  v52 = a3 == v16;
  v17 = v16 + 10;
  if (v52)
  {
    v17 = a3;
  }

  v18 = v15 - 5;
  if (!v15)
  {
    v18 = 0;
  }

  if (v17 + 5 <= v10)
  {
    v19 = v17 + 5;
  }

  else
  {
    v19 = v17;
  }

  v20 = (v19 / 5 - v18 / 5) << 6;
  if (v9 >= (v18 / 5) << 6)
  {
    v21 = (v18 / 5) << 6;
  }

  else
  {
    v21 = v9;
  }

  v22 = *(a1 + 16) + v21;
  v23 = (v9 - v21);
  if (v23 >= v20)
  {
    v23 = v20;
  }

  v85 = *(a1 + 8);
  v86 = v22;
  v69 = v18;
  v70 = v23;
  v87 = v23;
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  v26 = &v25[v24];
  if (v24)
  {
    v27 = 8 * v24;
    while (v22 > *v25)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        v25 = v26;
        break;
      }
    }
  }

  (*(*a5 + 16))(a5);
  v66 = *(a5 + 16);
  v71 = *(a5 + 24);
  result = (*(*a5 + 24))(v94, a5, a1, v69);
  if (v95)
  {
    v30 = *&v94[0];
    *&v94[0] = 0;
    *a7 = v30;
    if (v30)
    {
      goto LABEL_139;
    }
  }

  else
  {
    *a7 = 0;
  }

  v64 = a5;
  v81 = v94[0];
  v82 = v94[1];
  v83 = v94[2];
  v84 = v94[3];
  WORD2(v77) = 0;
  v78 = 0;
  v79 = 0;
  if (v70 < 0x80)
  {
    goto LABEL_135;
  }

  v31 = v26 - v25;
  v32 = v69;
  v65 = a6;
  while (1)
  {
LABEL_32:
    if (v31)
    {
      if (*v25 == v22)
      {
        v67 = v31 - 1;
        ++v25;
        v33 = 1;
        v34 = 1;
        result = sub_298BE8D68(&v89, &v85, a6);
        if ((BYTE8(v90) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v67 = v31;
        v33 = 0;
        v34 = 0;
        result = sub_298BE8D68(&v89, &v85, a6);
        if ((BYTE8(v90) & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v67 = 0;
      result = sub_298BE8D68(&v89, &v85, a6);
      if ((BYTE8(v90) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v35 = v89;
    *a7 = v89;
    if (v35)
    {
      break;
    }

LABEL_40:
    v36 = v90;
    *a7 = 0;
    if (((*(v36 + 59) | (*(v36 + 63) << 32)) & 0x8000000000000000) == 0 && ((*(v36 + 123) | (*(v36 + 127) << 32)) & 0x8000000000000000) != 0)
    {
      v40 = 0;
      while (1)
      {
        memset(v96, 0, 14);
        if (v40 > 4)
        {
          v42 = v40 - 5;
          v41 = (v36 + 64);
        }

        else
        {
          v41 = v36;
          v42 = v40;
        }

        result = sub_298BEEAF8(v41, v42);
        v96[0] = result;
        WORD2(v96[1]) = WORD2(v43);
        LODWORD(v96[1]) = v43;
        v44 = v43 | (BYTE4(v43) << 32);
        *(&v45 + 1) = v43;
        *&v45 = result;
        v46 = (v43 >> 23) & 7;
        v72 = v45 >> 1;
        v73 = v44 >> 1;
        v74 = (BYTE4(v43) >> 1) & 7;
        LOBYTE(v75) = result & 1;
        *(&v75 + 1) = v34 & 1 | ((v43 & 0xFF0000000000) != 0);
        BYTE3(v75) = (v43 & 0x20000) != 0;
        BYTE4(v75) = v44 >> 26;
        BYTE5(v75) = (v43 >> 23) & 7;
        if ((((v44 >> 17) & 0x3E) << 21) & 0xFFFFFF | ((v44 >> 17) >> 3) & 7) < 6 && ((0x2Fu >> (((v44 >> 17) >> 3) & 7)))
        {
          break;
        }

        v47 = (v43 >> 18) & 3;
        if (v47 - 1 >= 3)
        {
          v47 = 14;
          goto LABEL_81;
        }

        LODWORD(v77) = (v43 >> 18) & 3;
        WORD2(v77) = ((v44 >> 17) >> 3) & 7 | 0x100;
LABEL_82:
        v48 = v32 + v40;
        v49 = (v44 >> 26);
        v78 = &v72;
        v79 = 5;
        v80 = v32 + v40;
        if (BYTE8(v81) == 1 && (result & 1) != 0)
        {
          if ((v43 & 0x3800000) == 0)
          {
            result = 1;
            goto LABEL_87;
          }
        }

        else if (BYTE8(v81))
        {
          goto LABEL_87;
        }

        result = (*(*v64 + 32))(&v98);
        if (v99)
        {
          v57 = v98;
          v98 = 0;
          *a7 = v57;
          if (v57)
          {
            goto LABEL_136;
          }
        }

        else
        {
          *a7 = 0;
          if (v98)
          {
            *&v81 = v98;
            BYTE8(v81) = 1;
          }
        }

        result = sub_298BE8D68(&v89, &v85, v65);
        if ((BYTE8(v90) & 1) != 0 && (v58 = v89, *a7 = v89, v58))
        {
          v59 = 0;
        }

        else
        {
          v36 = v90;
          *a7 = 0;
          v59 = 1;
        }

        if (v99)
        {
          result = v98;
          v98 = 0;
          if (result)
          {
            v63 = v59;
            result = (*(*result + 8))(result);
            v59 = v63;
          }
        }

        if (!v59)
        {
          goto LABEL_136;
        }

        v46 = BYTE5(v75);
        v49 = BYTE4(v75);
        v47 = v77;
        result = v75;
LABEL_87:
        v50 = v81;
        if (BYTE8(v81))
        {
          v51 = v81;
        }

        else
        {
          v51 = 0;
        }

        if (v46)
        {
          v52 = 1;
        }

        else
        {
          v52 = v51 == 0;
        }

        v53 = v51 & 0xFFFFFFFFFFFFFF00 | v49;
        if (v52)
        {
          v53 = v51;
        }

        if ((result & 1) != 0 && v47 == 7)
        {
          *(&v89 + 9) = 0;
          LOBYTE(v89) = v72 & 7;
          *(&v89 + 1) = v72 >> 3;
          v53 = v72 >> 3;
        }

        if (v71)
        {
          v54 = v53 > v71;
        }

        else
        {
          v54 = 0;
        }

        v55 = !v54;
        if (v53 <= v51 || (result & 1) == 0 || !v55)
        {
          v76 = v51;
          if (!v51)
          {
            goto LABEL_110;
          }
        }

        else
        {
          v76 = v53;
          v50 = v53;
        }

        v56 = &v81 + BYTE2(v75);
        *v56 = v50;
        *(v56 + 8) = 1;
LABEL_110:
        if (v48 >= a2 && v48 < a3)
        {
          if ((result & 1) == 0)
          {
            LODWORD(v77) = 0;
            v78 = 0;
            v79 = 0;
          }

          result = (*(*a4 + 16))(a4, &v75);
          if (*a7)
          {
            goto LABEL_136;
          }

          result = (*(*a4 + 32))(a4);
          if (result)
          {
            goto LABEL_135;
          }
        }

        v34 = 0;
        if (++v40 == 10)
        {
          v60 = v70;
          v61 = 128;
          if (v70 < 0x80)
          {
            v61 = v70;
          }

          v22 += v61;
          v86 = v22;
          v87 = (v70 - v61);
          v32 += 10;
          a6 = v65;
          v70 -= v61;
          v31 = v67;
          if (v60 - v61 <= 0x7F)
          {
LABEL_135:
            *a7 = 0;
            goto LABEL_136;
          }

          goto LABEL_32;
        }
      }

      v47 = dword_298D1B27C[(((v44 >> 17) & 0x3E) << 21) & 0xFFFFFF | ((v44 >> 17) >> 3) & 7];
LABEL_81:
      LODWORD(v77) = v47;
      goto LABEL_82;
    }

    LOBYTE(v75) = 0;
    BYTE1(v75) = v33;
    *(&v75 + 2) = 0;
    v37 = v81;
    if ((BYTE8(v81) & 1) == 0)
    {
      v37 = v66;
    }

    v76 = v37;
    LODWORD(v77) = 2;
    if (BYTE5(v77) == 1)
    {
      BYTE5(v77) = 0;
    }

    v78 = 0;
    v79 = 0;
    a6 = v65;
    if (v32 >= a2 && v32 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32;
      (*(*a4 + 24))(a4, v32);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 1 >= a2 && v32 + 1 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 1;
      (*(*a4 + 24))(a4, v32 + 1);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 2 >= a2 && v32 + 2 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 2;
      (*(*a4 + 24))(a4, v32 + 2);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 3 >= a2 && v32 + 3 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 3;
      (*(*a4 + 24))(a4, v32 + 3);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    if (v32 + 4 >= a2 && v32 + 4 < a3)
    {
      result = (*(*a4 + 32))(a4);
      if (result)
      {
        goto LABEL_135;
      }

      v80 = v32 + 4;
      (*(*a4 + 24))(a4, v32 + 4);
      result = (*(*a4 + 16))(a4, &v75);
      if (*a7)
      {
        break;
      }
    }

    v22 += 64;
    v38 = v70 - 64;
    v86 = v22;
    v87 = (v70 - 64);
    if (v32 == v69 && v38 >= 0x80)
    {
      result = (*(*v64 + 24))(&v89);
      if (v93)
      {
        v39 = v89;
        *&v89 = 0;
        *a7 = v39;
        if (v39)
        {
          break;
        }
      }

      else
      {
        *a7 = 0;
      }

      v81 = v89;
      v82 = v90;
      v83 = v91;
      v84 = v92;
    }

    v32 += 5;
    v70 -= 64;
    v31 = v67;
    if (v38 <= 0x7F)
    {
      goto LABEL_135;
    }
  }

LABEL_136:
  if (v95)
  {
    result = *&v94[0];
    *&v94[0] = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

LABEL_139:
  v62 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *sub_298BF24B0(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[4] = 0;
  if (atomic_load_explicit(&qword_2A13C3048, memory_order_acquire) != -1)
  {
    v9[0] = &v7;
    v8 = v9;
    std::__call_once(&qword_2A13C3048, &v8, sub_298BF3534);
  }

  if (!off_2A13C3058)
  {
LABEL_8:
    if (!*a1)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v4 = off_2A13C3058(a2);
  *a1 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v9[0] = &unk_2A1F1F018;
  v9[1] = a1;
  v10 = v9;
  sub_298BF3668(v9, (a1 + 1));
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    goto LABEL_8;
  }

  (*(*v10 + 32))(v10);
  if (!*a1)
  {
LABEL_9:
    operator new();
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_298BF26BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(a1 + 32);
    if (v3 == a1 + 8)
    {
      (*(*v3 + 32))(v3);
      return a1;
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      return a1;
    }
  }

  else
  {
    v5 = sub_298AE761C();
    return sub_298BF277C(v5);
  }
}

void sub_298BF277C(uint64_t a1)
{
  *a1 = &unk_2A1F1EFE0;
  *(a1 + 8) = 0u;
  v2 = a1 + 8;
  v3 = a1 + 56;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  sub_298B90EFC(a1 + 56);
  sub_298B6508C(a1 + 128);
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  sub_298CF4C74("arm64e-apple-darwin", 19, &__p);
  v16 = 260;
  v15[0] = &__p;
  sub_298CF26DC(v21, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = v21;
  if (atomic_load_explicit(&qword_2A13C3070, memory_order_acquire) != -1)
  {
    v15[0] = &v20;
    __p.__r_.__value_.__r.__words[0] = v15;
    std::__call_once(&qword_2A13C3070, &__p, sub_298BF2FCC);
  }

  MEMORY[0x29C294300](v2, "apple-latest");
  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = *(a1 + 8);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 31);
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = sub_298BF2B40(*(qword_2A13C3068 + 88), "arm64e-apple-darwin", 19, v5, v6);
  v8 = *(a1 + 368);
  *(a1 + 368) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = sub_298BF2C1C(*(qword_2A13C3068 + 80), "arm64e-apple-darwin", 19);
  sub_298BF2BD0((a1 + 376), v9);
  v10 = sub_298BF2C88(*(qword_2A13C3068 + 48), *(a1 + 376), "arm64e-apple-darwin", 19, a1 + 128);
  v11 = *(a1 + 384);
  *(a1 + 384) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v10 = *(a1 + 384);
  }

  (*(*v10 + 96))(v10, 0);
  v12 = *(a1 + 376);
  __p.__r_.__value_.__r.__words[0] = *(a1 + 384);
  v13 = *(a1 + 368);
  v20 = v12;
  v18 = v3;
  v19 = v13;
  v17 = a1 + 128;
  sub_298BF2D0C();
}

uint64_t sub_298BF2B40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = result;
    v10 = 261;
    v9[0] = a2;
    v9[1] = a3;
    sub_298CF26DC(__p, v9);
    result = v7(__p, a4, a5, "", 0);
    if (v12 < 0)
    {
      v8 = result;
      operator delete(__p[0]);
      return v8;
    }
  }

  return result;
}

uint64_t sub_298BF2BD0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298BF31CC(result);
  }

  return result;
}

void sub_298BF2BF4()
{

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BF2C1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v6 = 261;
    v5[0] = a2;
    v5[1] = a3;
    sub_298CF26DC(__p, v5);
    result = v3(__p);
    if (v8 < 0)
    {
      v4 = result;
      operator delete(__p[0]);
      return v4;
    }
  }

  return result;
}

uint64_t sub_298BF2C88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v7 = result;
    v10 = 261;
    v9[0] = a3;
    v9[1] = a4;
    sub_298CF26DC(__p, v9);
    result = v7(a2, __p, a5);
    if (v12 < 0)
    {
      v8 = result;
      operator delete(__p[0]);
      return v8;
    }
  }

  return result;
}

void sub_298BF2DA8(uint64_t a1)
{
  sub_298BF3264(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BF2DE0(uint64_t a1)
{
  v1 = *(a1 + 368);
  v4 = *(v1 + 8);
  v2 = v1 + 8;
  v3 = v4;
  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v3 = v2;
  }

  v6 = *(v2 + 8);
  if (v5 >= 0)
  {
    v6 = v5;
  }

  v8[0] = v3;
  v8[1] = v6;
  v10 = 45;
  sub_298CF6014(v8, &v10, 1uLL, &v9);
  return v9;
}

BOOL sub_298BF2E40(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v7 = (*(**(a1 + 408) + 16))(*(a1 + 408), a2, &v14, a3, a4, a5);
  if (v7 == 3)
  {
    v8 = *a2;
    v9 = **(a1 + 400) - 32 * v8;
    *(a2 + 24) = v9;
    if ((v8 - 2271) >= 3)
    {
      v12 = *(v9 + 16);
      if ((v12 & 0x4A0) != 0)
      {
        if ((v12 & 0x20) != 0)
        {
          v13 = 4;
        }

        else
        {
          v13 = 2;
        }

        if ((v12 & 0x80) != 0)
        {
          v10 = 3;
        }

        else
        {
          v10 = v13;
        }
      }

      else if ((v12 & 0x4000000000) != 0)
      {
        v10 = 7;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 6;
    }

    *(a2 + 200) = v10;
    *(a2 + 201) = 0;
  }

  return v7 == 3;
}

uint64_t sub_298BF2F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = 0;
  v10 = 0;
  v11 = 0;
  v13 = a4;
  v12 = 0;
  v5 = &unk_2A1F1E040;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  (*(**(a1 + 416) + 32))(*(a1 + 416), a2, a3, "", 0, *(a1 + 368), &v5);
  return sub_298B9AE14(&v5);
}

void sub_298BF2FD8(uint64_t *a1)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_298CEE9C4();
  sub_298CE9D20();
  sub_298B0A0B8();
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  qword_2A13C3068 = sub_298B6C7E4("aarch64", 7uLL, *a1, v21);
  if (!qword_2A13C3068)
  {
    v3 = std::generic_category();
    v15 = "ISA.cpp";
    v16 = 259;
    v13 = ":";
    v14 = 259;
    sub_298ADC860(&v15, &v13, v17);
    qmemcpy(v24, "121", sizeof(v24));
    sub_298AF4294(__p, v24, v25);
    v12 = 260;
    v11 = __p;
    sub_298ADC860(v17, &v11, v18);
    v8 = ": ";
    v9 = 259;
    sub_298ADC860(v18, &v8, v19);
    v6 = "aarch64 target unavailable, ";
    v7 = 259;
    sub_298ADC860(v19, &v6, v20);
    v5 = 260;
    v4 = v21;
    sub_298ADC860(v20, &v4, v23);
    sub_298ADDCA4(45, v3, v23);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  v2 = *MEMORY[0x29EDCA608];
}

void sub_298BF31CC(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 200);
  sub_298B8D928();
}

void sub_298BF31F4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 176);
  sub_298B8D928();
}

uint64_t sub_298BF3218(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298B2C184(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298BF3264(uint64_t a1)
{
  v2 = *(a1 + 416);
  *(a1 + 416) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 408);
  *(a1 + 408) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_298BF3218((a1 + 392), 0);
  v4 = *(a1 + 384);
  *(a1 + 384) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_298BF2BD0((a1 + 376), 0);
  v5 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_298BF33A0(a1 + 128);
  sub_298B90F98(a1 + 56);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_298BF33A0(uint64_t a1)
{
  if (*(a1 + 224) == 1)
  {
    sub_298BF343C(a1 + 192);
  }

  v2 = *(a1 + 184);
  if (v2)
  {
    sub_298BF34C8(v2);
  }

  v4 = (a1 + 144);
  sub_298B64B64(&v4);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_298BF343C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_298BF34C8(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)();

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *sub_298BF3534()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    result = qword_2A13C3050;
    if (qword_2A13C3050 || (result = dlopen("/usr/local/lib/libhwtrace_private.dylib", 261), (qword_2A13C3050 = result) != 0))
    {
      result = dlsym(result, "hwtrace_isa_init");
      off_2A13C3058 = result;
      if (result)
      {
        result = dlsym(qword_2A13C3050, "hwtrace_isa_deinit");
        off_2A13C3060 = result;
      }
    }
  }

  return result;
}

uint64_t sub_298BF3628(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1F018;
  a2[1] = v2;
  return result;
}

uint64_t sub_298BF3668(uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = *(result + 24);
    v4 = *(a2 + 24);
    if (v3 == result)
    {
      if (v4 == a2)
      {
        v6 = a2;
        v7 = result;
        (*(*v3 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(v6 + 24) + 24))(*(v6 + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, v6);
        result = (*(v8[0] + 32))(v8);
        goto LABEL_7;
      }

      v5 = result;
      v6 = a2;
      (*(*v3 + 24))(*(result + 24));
    }

    else
    {
      if (v4 != a2)
      {
        *(result + 24) = v4;
        *(a2 + 24) = v3;
        goto LABEL_2;
      }

      v6 = result;
      v5 = a2;
      (*(*v4 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v5 + 24) + 32))(*(v5 + 24));
    *(v5 + 24) = *(v6 + 24);
LABEL_7:
    *(v6 + 24) = v6;
  }

LABEL_2:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BF391C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1F060;
  a2[1] = v2;
  return result;
}

uint64_t sub_298BF3948(uint64_t a1)
{
  result = **(a1 + 8);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_298BF397C(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  memset(out, 0, 37);
  uuid_unparse_upper(a1, out);
  v4 = strlen(out);
  sub_298BBB6E0(&v27, out, v4);
  sub_298B89CC0(a2, "UUID", 4uLL);
  sub_298B891F0(a2, &v27);
  --*(a2 + 8);
  if (v27 == 8)
  {
    sub_298B8A314(&__p.__r_.__value_.__l.__data_);
    v10 = *(a1 + 16);
    v6 = v10 >> 1;
    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v27 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v27 == 6 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v5 = *(a1 + 16);
      v6 = v5 >> 1;
      if (v5)
      {
        goto LABEL_23;
      }

LABEL_9:
      sub_298ADC8F4(&v25, v6);
      v27 = 6;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v25;
      }

      else
      {
        v8 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      if (!sub_298B88E98(v8, size, 0))
      {
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v25;
        }

        else
        {
          v20 = v25.__r_.__value_.__r.__words[0];
        }

        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v25.__r_.__value_.__l.__size_;
        }

        sub_298B88F28(v20, v21, &v26);
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        v25 = v26;
      }

      __p = v25;
      memset(&v25, 0, sizeof(v25));
      sub_298B89CC0(a2, "LoadAddr", 8uLL);
      sub_298B891F0(a2, &v27);
      --*(a2 + 8);
      if (v27 != 8)
      {
        if (v27 == 7)
        {
          sub_298B8A370(&__p);
        }

        else if (v27 == 6 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_38;
        }

        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_38;
      }

      sub_298B8A314(&__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_38:
      v13 = v25.__r_.__value_.__r.__words[0];
LABEL_42:
      operator delete(v13);
      goto LABEL_46;
    }

    v7 = *(a1 + 16);
    v6 = v7 >> 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_23:
  sub_298ADC8F4(&v24, v6);
  v27 = 6;
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v24;
  }

  else
  {
    v11 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v24.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v11, v12, 0))
  {
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v24;
    }

    else
    {
      v22 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v24.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v22, v23, &v26);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    v24 = v26;
  }

  __p = v24;
  memset(&v24, 0, sizeof(v24));
  sub_298B89CC0(a2, "Slide", 5uLL);
  sub_298B891F0(a2, &v27);
  --*(a2 + 8);
  if (v27 != 8)
  {
    if (v27 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v27 == 6 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  sub_298B8A314(&__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_41:
    v13 = v24.__r_.__value_.__r.__words[0];
    goto LABEL_42;
  }

LABEL_46:
  v14 = *(a1 + 25);
  v27 = 4;
  __p.__r_.__value_.__r.__words[0] = v14;
  sub_298B89CC0(a2, "MapTime", 7uLL);
  sub_298B891F0(a2, &v27);
  --*(a2 + 8);
  if (v27 == 8)
  {
    sub_298B8A314(&__p.__r_.__value_.__l.__data_);
  }

  else if (v27 == 7)
  {
    sub_298B8A370(&__p);
  }

  else if (v27 == 6 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = *(a1 + 33);
  v27 = 4;
  __p.__r_.__value_.__r.__words[0] = v15;
  sub_298B89CC0(a2, "UnmapTime", 9uLL);
  sub_298B891F0(a2, &v27);
  --*(a2 + 8);
  if (v27 == 8)
  {
    sub_298B8A314(&__p.__r_.__value_.__l.__data_);
    v16 = *(a1 + 24) - 1;
    if (v16 <= 9)
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v27 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v27 == 6 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v16 = *(a1 + 24) - 1;
      if (v16 > 9)
      {
        goto LABEL_63;
      }

LABEL_61:
      v17 = qword_298D1B298[v16];
      v18 = off_29EEB6290[v16];
      goto LABEL_64;
    }

    v16 = *(a1 + 24) - 1;
    if (v16 <= 9)
    {
      goto LABEL_61;
    }
  }

LABEL_63:
  v18 = "OlderLibrary";
  v17 = 12;
LABEL_64:
  sub_298BBB6E0(&v27, v18, v17);
  sub_298B89CC0(a2, "Src", 3uLL);
  sub_298B891F0(a2, &v27);
  --*(a2 + 8);
  if (v27 == 8)
  {
    sub_298B8A314(&__p.__r_.__value_.__l.__data_);
  }

  else if (v27 == 7)
  {
    sub_298B8A370(&__p);
  }

  else if (v27 == 6 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v19 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BF3ED0(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 25) = xmmword_298D1B1F0;
  v74 = "UUID";
  v75 = 4;
  v76 = 0;
  if (sub_298B89FD8(a2, &v74, &v76))
  {
    v4 = v76;
    v5 = *a2;
    v6 = *(a2 + 16);
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    v4 = *a2 + 56 * v6;
  }

  if (v4 != v5 + 56 * v6)
  {
    v7 = *(v4 + 24);
    if (v7 == 5)
    {
      v8 = *(v4 + 32);
      goto LABEL_6;
    }

    if (v7 == 6)
    {
      v35 = *(v4 + 32);
      v33 = v4 + 32;
      v34 = v35;
      if (*(v33 + 23) >= 0)
      {
        v8 = v33;
      }

      else
      {
        v8 = v34;
      }

      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  uuid_parse(v8, a1);
  v74 = "LoadAddr";
  v75 = 8;
  v76 = 0;
  if (sub_298B89FD8(a2, &v74, &v76))
  {
    v9 = v76;
    v10 = *a2;
    v11 = *(a2 + 16);
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 16);
    v9 = *a2 + 56 * v11;
  }

  if (v9 == v10 + 56 * v11)
  {
    goto LABEL_54;
  }

  v12 = *(v9 + 24);
  if (v12 != 5)
  {
    if (v12 == 6)
    {
      v38 = *(v9 + 32);
      v36 = v9 + 32;
      v37 = v38;
      v39 = *(v36 + 23);
      if (v39 >= 0)
      {
        v13 = v36;
      }

      else
      {
        v13 = v37;
      }

      v40 = *(v36 + 8);
      if (v39 >= 0)
      {
        v14 = v39;
      }

      else
      {
        v14 = v40;
      }

      goto LABEL_11;
    }

LABEL_54:
    v74 = "Slide";
    v75 = 5;
    v76 = 0;
    if (sub_298B89FD8(a2, &v74, &v76))
    {
      v41 = v76;
      v42 = *a2;
      v43 = *(a2 + 16);
    }

    else
    {
      v42 = *a2;
      v43 = *(a2 + 16);
      v41 = *a2 + 56 * v43;
    }

    if (v41 != v42 + 56 * v43)
    {
      v44 = *(v41 + 24);
      if (v44 == 5)
      {
        v45 = *(v41 + 32);
        v41 = *(v41 + 40);
LABEL_59:
        if (v41 >= 2)
        {
          v46 = 2;
        }

        else
        {
          v46 = v41;
        }

        v47 = v41 - v46;
        if (v41 == v46)
        {
          goto LABEL_71;
        }

        v48 = 0;
        v49 = (v46 + v45);
        v15 = 1;
        v50 = v47;
        do
        {
          if (*v49 < 48)
          {
            break;
          }

          v51 = *v49;
          if (v51 >= 0x3A)
          {
            if (v51 < 0x61)
            {
              if (v51 - 65 > 0x19)
              {
                break;
              }

              v52 = -55;
            }

            else
            {
              if (v51 >= 0x7B)
              {
                break;
              }

              v52 = -87;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v52 + v51;
          if (v53 > 0xF)
          {
            break;
          }

          if (v48 >> 60)
          {
            goto LABEL_12;
          }

          v48 = v53 | (16 * v48);
          ++v49;
          --v50;
        }

        while (v50);
        if (v47 == v50)
        {
LABEL_71:
          v15 = 1;
        }

        else
        {
          v15 = (2 * v48) | 1;
        }

        goto LABEL_12;
      }

      if (v44 == 6)
      {
        v58 = *(v41 + 32);
        v56 = v41 + 32;
        v57 = v58;
        v59 = *(v56 + 23);
        if (v59 >= 0)
        {
          v45 = v56;
        }

        else
        {
          v45 = v57;
        }

        v41 = *(v56 + 8);
        if (v59 >= 0)
        {
          v41 = v59;
        }

        goto LABEL_59;
      }
    }

    v45 = 0;
    goto LABEL_59;
  }

  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
LABEL_11:
  v15 = 2 * sub_298BF44C0(v13, v14);
LABEL_12:
  *(a1 + 16) = v15;
  v16 = sub_298B878FC(a2, "MapTime", 7);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 25) = v18;
  v19 = sub_298B878FC(a2, "UnmapTime", 9);
  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = -1;
  }

  *(a1 + 33) = v21;
  v74 = "Src";
  v75 = 3;
  v76 = 0;
  if (sub_298B89FD8(a2, &v74, &v76))
  {
    v22 = v76;
    v23 = *a2;
    v24 = *(a2 + 16);
  }

  else
  {
    v23 = *a2;
    v24 = *(a2 + 16);
    v22 = *a2 + 56 * v24;
  }

  if (v22 == v23 + 56 * v24)
  {
    goto LABEL_77;
  }

  v25 = *(v22 + 24);
  if (v25 == 5)
  {
    v26 = *(v22 + 32);
    v27 = *(v22 + 40);
    goto LABEL_23;
  }

  if (v25 != 6)
  {
LABEL_77:
    v28 = 0;
    goto LABEL_27;
  }

  v55 = *(v22 + 32);
  v54 = (v22 + 32);
  v26 = v55;
  v27 = *(v54 + 23);
  if ((v27 & 0x80u) != 0)
  {
    v27 = *(v54 + 1);
  }

  else
  {
    v26 = v54;
  }

LABEL_23:
  v28 = 0;
  if (v27 <= 9)
  {
    if (v27 > 6)
    {
      if (v27 == 7)
      {
        if (*v26 ^ 0x646C7944 | *(v26 + 3) ^ 0x49505364)
        {
          v28 = 0;
        }

        else
        {
          v28 = 3;
        }
      }

      else if (v27 == 9)
      {
        if (*v26 == 0x75706E4974736554 && *(v26 + 8) == 116)
        {
          v28 = 9;
        }

        else
        {
          v31 = bswap64(*v26);
          if (v31 == 0x537461636B73686FLL)
          {
            v32 = *(v26 + 8) - 116;
          }

          else if (v31 < 0x537461636B73686FLL)
          {
            v32 = -1;
          }

          else
          {
            v32 = 1;
          }

          if (v32)
          {
            v28 = 0;
          }

          else
          {
            v28 = 10;
          }
        }
      }
    }

    else if (v27 == 6)
    {
      v61 = *v26;
      v62 = v26[2];
      v64 = v61 == 1668512083 && v62 == 27764;
      v28 = 2 * v64;
    }

    else if (v27 == 3)
    {
      if (*v26 ^ 0x4553 | *(v26 + 2) ^ 0x50)
      {
        v28 = 0;
      }

      else
      {
        v28 = 6;
      }
    }
  }

  else
  {
    switch(v27)
    {
      case 13:
        if (*v26 == 0x437972617262694CLL && *(v26 + 5) == 0x746E65696C437972)
        {
          v28 = 1;
        }

        else if (*v26 ^ 0x65524D566863614DLL | *(v26 + 5) ^ 0x657372756365524DLL)
        {
          v28 = 0;
        }

        else
        {
          v28 = 5;
        }

        break;
      case 10:
        if (*v26 == 0x6E497478654B534FLL && v26[4] == 28518)
        {
          v28 = 7;
        }

        else
        {
          v66 = *v26;
          v67 = v26[4];
          v69 = v66 == 0x7254656369766544 && v67 == 25957;
          v28 = 8 * v69;
        }

        break;
      case 11:
        v70 = *v26;
        v71 = *(v26 + 3);
        v73 = v70 == 0x764567756265644BLL && v71 == 0x746E657645677562;
        v28 = 4 * v73;
        break;
    }
  }

LABEL_27:
  *(a1 + 24) = v28;
  return a1;
}

unint64_t sub_298BF44C0(uint64_t a1, unint64_t a2)
{
  v2 = 2;
  if (a2 < 2)
  {
    v2 = a2;
  }

  v4[0] = (v2 + a1);
  v4[1] = (a2 - v2);
  v5 = 0;
  if (sub_298B971A4(v4, 0x10u, &v5))
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

void sub_298BF4518(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v54 = *MEMORY[0x29EDCA608];
  v45 = 0u;
  v46 = 0u;
  memset(v44, 0, sizeof(v44));
  sub_298B7D428(a1, v44);
  v5 = *(a1 + 136);
  if (v5)
  {
    v6 = *(a1 + 128);
    v40 = &v6[4 * v5];
    while (1)
    {
      if (v6[2] == 25)
      {
        v7 = *(a1 + 16);
        v8 = *v6 < v7 || *v6 + 72 > v7 + *(a1 + 24);
        if (v8)
        {
LABEL_46:
          sub_298B868A8("Malformed MachO file.", 1);
        }

        v9 = *(*v6 + 64);
        v10 = *(a1 + 8);
        v8 = v10 > 0x14;
        v11 = (1 << v10) & 0x155800;
        v12 = v8 || v11 == 0;
        v13 = bswap32(v9);
        if (!v12)
        {
          v9 = v13;
        }

        v41 = v9;
        if (v9)
        {
          break;
        }
      }

LABEL_3:
      v6 += 4;
      if (v6 == v40)
      {
        goto LABEL_45;
      }
    }

    v14 = 0;
    while (1)
    {
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      memset(v50, 0, sizeof(v50));
      v15 = *v6;
      v16 = (*(*a1 + 64))(a1);
      if (v16)
      {
        v17 = 80;
      }

      else
      {
        v17 = 68;
      }

      v18 = 56;
      if (v16)
      {
        v18 = 72;
      }

      sub_298B7E3B4(a1, (v18 + v15 + (v17 * v14)), v50);
      if (v53 == 8)
      {
        v19 = DWORD2(v53);
        if (DWORD2(v53))
        {
          v20 = (*(&v51 + 1) / DWORD2(v53));
          if ((*(&v51 + 1) / DWORD2(v53)))
          {
            break;
          }
        }
      }

LABEL_16:
      if (++v14 == v41)
      {
        goto LABEL_3;
      }
    }

    v21 = 0;
    v22 = 0;
    v23 = DWORD1(v53);
    v24 = 4 * DWORD1(v53);
    while (1)
    {
      if (v23 + v22 >= HIDWORD(v45))
      {
        goto LABEL_16;
      }

      v25 = *(a1 + 16);
      v26 = (v25 + (v24 & 0x3FFFFFFFCLL) + DWORD2(v45));
      if (v26 < v25 || (v26 + 1) > v25 + *(a1 + 24))
      {
        goto LABEL_46;
      }

      v28 = v51;
      v29 = *v26;
      v30 = *(a1 + 8);
      v31 = bswap32(v29);
      if (((1 << v30) & 0x155800) == 0)
      {
        v31 = v29;
      }

      if (v30 <= 0x14)
      {
        v32 = v31;
      }

      else
      {
        v32 = v29;
      }

      v33 = sub_298B7DB84(a1, v32);
      (*(*v34 + 80))(&v47, v34, v33);
      if (v49)
      {
        v35 = v47;
        v47 = 0;
        if (v35)
        {
          *a4 = v35;
          v37 = *MEMORY[0x29EDCA608];
          return;
        }

        a2(a3, v28 + v21, 0, v48);
        if (v49)
        {
LABEL_42:
          v36 = v47;
          v47 = 0;
          if (v36)
          {
            (*(*v36 + 8))(v36);
          }
        }
      }

      else
      {
        a2(a3, v28 + v21, v47, v48);
        if (v49)
        {
          goto LABEL_42;
        }
      }

      ++v22;
      v21 += v19;
      v24 += 4;
      if (v22 >= v20)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_45:
  *a4 = 0;
  v38 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BF4860(uint64_t a1, uint64_t a2)
{
  LOBYTE(v27) = 0;
  LOBYTE(v28) = 0;
  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22[0] = a2;
  v22[1] = &v23;
  v22[2] = &v27;
  v22[3] = &v25;
  v2 = *(a1 + 136);
  if (!v2)
  {
    return v27;
  }

  v4 = *(a1 + 128);
  v5 = &v4[2 * v2];
  do
  {
    if (*(v4 + 2) == 25)
    {
      v7 = *v4;
      v4 += 2;
      v6 = v7;
      v8 = v7 + 8;
      v9 = strnlen((v7 + 8), 0x10uLL);
      v10 = *(a1 + 24);
      v11 = *(v7 + 40);
      v12 = *(v7 + 48);
      if (v10 < v11)
      {
        v11 = *(a1 + 24);
      }

      v13 = v10 - v11;
      if (v13 >= v12)
      {
        v13 = *(v6 + 48);
      }

      v14 = v11 + *(a1 + 16);
      v15 = *(v6 + 24);
      v29[0] = v8;
      v29[1] = v9;
      v29[2] = v14;
      v29[3] = v13;
      v29[4] = v15;
      sub_298BF875C(v22, v29);
    }

    else
    {
      v4 += 2;
    }
  }

  while (v4 != v5);
  v16 = &v23;
  v17 = &v24;
  v18 = &v25;
  v19 = &v26;
  if ((v26 & 1) == 0)
  {
    v19 = &v28;
    v18 = &v27;
  }

  if ((v24 & 1) == 0)
  {
    v17 = v19;
  }

  v20 = *v17;
  if ((v24 & 1) == 0)
  {
    v16 = v18;
  }

  return *v16;
}

uint64_t sub_298BF4988(uint64_t result, unint64_t a2, int a3, uint64_t (*a4)(uint64_t, unsigned int *), uint64_t a5)
{
  v8 = result;
  v9 = *(result + 16);
  if (a3)
  {
    v10 = *(result + 20);
    v11 = sub_298B9CDFC();
    v12 = v11;
    v13 = v11[4];
    if (v11[3] - v13 > 0x17uLL)
    {
      qmemcpy(v13, "mach_header_64: NCmds = ", 24);
      v11[4] += 24;
    }

    else
    {
      sub_298B9BCEC(v11, "mach_header_64: NCmds = ", 0x18uLL);
    }

    sub_298B8FC48(v12, v9, 0, 0, 0);
    v17 = v12[4];
    if (v12[3] - v17 > 1uLL)
    {
      *v17 = 8236;
      v19 = v12[3];
      v18 = (v12[4] + 2);
      v12[4] = v18;
      if ((v19 - v18) > 0xC)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_298B9BCEC(v12, ", ", 2uLL);
      v18 = v12[4];
      if (v12[3] - v18 > 0xCuLL)
      {
LABEL_11:
        qmemcpy(v18, "SizeofCmds = ", 13);
        v12[4] += 13;
LABEL_14:
        result = sub_298B8FC48(v12, v10, 0, 0, 0);
        v20 = v12[4];
        if (v12[3] == v20)
        {
          result = sub_298B9BCEC(v12, "\n", 1uLL);
          if (!v9)
          {
            return result;
          }
        }

        else
        {
          *v20 = 10;
          ++v12[4];
          if (!v9)
          {
            return result;
          }
        }

        v21 = 32;
        if (a2 < 0x20)
        {
          v21 = a2;
        }

        v22 = a2 - v21;
        v23 = (v8 + v21);
        v24 = 0;
        while (1)
        {
          if (v22 >= v23[1])
          {
            v25 = v23[1];
          }

          else
          {
            v25 = v22;
          }

          v26 = sub_298B9CDFC();
          v27 = v26;
          v28 = v26[4];
          if (v26[3] - v28 >= 0xDuLL)
          {
            qmemcpy(v28, "load_command[", 13);
            v26[4] += 13;
          }

          else
          {
            sub_298B9BCEC(v26, "load_command[", 0xDuLL);
          }

          sub_298B8FC48(v27, v24, 0, 0, 0);
          v29 = v27[4];
          if ((v27[3] - v29) >= 9)
          {
            *(v29 + 8) = 32;
            *v29 = *"]: cmd = ";
            v27[4] += 9;
          }

          else
          {
            sub_298B9BCEC(v27, "]: cmd = ", 9uLL);
          }

          sub_298ADC8F4(&__p, *v23);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          sub_298B9BCEC(v27, p_p, size);
          v32 = v27[4];
          if (v27[3] == v32)
          {
            sub_298B9BCEC(v27, "\n", 1uLL);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_38:
              result = a4(a5, v23);
              if (result)
              {
                return result;
              }

              goto LABEL_39;
            }
          }

          else
          {
            *v32 = 10;
            ++v27[4];
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_38;
            }
          }

          operator delete(__p.__r_.__value_.__l.__data_);
          result = a4(a5, v23);
          if (result)
          {
            return result;
          }

LABEL_39:
          v23 = (v23 + v25);
          v22 -= v25;
          if (v9 - 1 == v24++)
          {
            return result;
          }
        }
      }
    }

    sub_298B9BCEC(v12, "SizeofCmds = ", 0xDuLL);
    goto LABEL_14;
  }

  if (v9)
  {
    v14 = 32;
    if (a2 < 0x20)
    {
      v14 = a2;
    }

    v15 = a2 - v14;
    v16 = result + v14;
    v34 = v9 - 1;
    do
    {
      v35 = v34;
      if (v15 >= *(v16 + 4))
      {
        v36 = *(v16 + 4);
      }

      else
      {
        v36 = v15;
      }

      result = a4(a5, v16);
      if (result)
      {
        break;
      }

      v16 += v36;
      v15 -= v36;
      v34 = v35 - 1;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_298BF4D2C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v15[0] = a3;
  v15[1] = a4;
  v13 = *a5;
  v14 = *(a5 + 2);
  v12 = v15;
  v19[0] = result;
  v19[1] = a2;
  v18[0] = sub_298BF8884;
  v18[1] = &v12;
  v17 = 0;
  v16[0] = &v13;
  v16[1] = v19;
  v16[2] = &v17;
  v16[3] = v18;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 32;
    if (a2 < 0x20)
    {
      v6 = a2;
    }

    v7 = a2 - v6;
    v8 = result + v6;
    v9 = v5 - 1;
    do
    {
      v10 = v9;
      if (v7 >= *(v8 + 4))
      {
        v11 = *(v8 + 4);
      }

      else
      {
        v11 = v7;
      }

      result = sub_298BF7F88(v16, v8);
      if (result)
      {
        break;
      }

      v8 += v11;
      v7 -= v11;
      v9 = v10 - 1;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_298BF4DF8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, _BYTE *a5@<X8>)
{
  v12[1] = a5;
  v13 = a3;
  *a5 = 0;
  a5[64] = 0;
  v12[0] = &v13;
  v15 = *a4;
  v16 = *(a4 + 2);
  v17[0] = sub_298BF89A0;
  v17[1] = v12;
  v14 = v17;
  v21[0] = result;
  v21[1] = a2;
  v20[0] = sub_298BF8884;
  v20[1] = &v14;
  v19 = 0;
  v18[0] = &v15;
  v18[1] = v21;
  v18[2] = &v19;
  v18[3] = v20;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 32;
    if (a2 < 0x20)
    {
      v6 = a2;
    }

    v7 = a2 - v6;
    v8 = result + v6;
    v9 = v5 - 1;
    do
    {
      v10 = v9;
      if (v7 >= *(v8 + 4))
      {
        v11 = *(v8 + 4);
      }

      else
      {
        v11 = v7;
      }

      result = sub_298BF7F88(v18, v8);
      if (result)
      {
        break;
      }

      v8 += v11;
      v7 -= v11;
      v9 = v10 - 1;
    }

    while (v10);
  }

  return result;
}

double sub_298BF4EE8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = 0;
  v9 = 0;
  v10 = 0;
  v8[0] = &v11;
  v8[1] = &v10;
  v8[2] = &v9;
  sub_298BF4988(a1, a2, a3, sub_298BF8A04, v8);
  *a4 = 0;
  *(a4 + 8) = 0;
  v5 = *(v11 + 8);
  *(a4 + 16) = v5;
  *(a4 + 32) = 0;
  *(a4 + 48) = 0;
  if (v10)
  {
    v6 = *(v9 + 24);
    *&v5 = *(v10 + 8);
    *(a4 + 32) = v5;
    *(a4 + 40) = v6;
    *(a4 + 48) = 1;
  }

  return *&v5;
}

uint64_t sub_298BF4F80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = &v16;
  sub_298BF4988(a1, a2, a3, sub_298BF8AD8, &v18);
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v18 = &v23;
  v19 = &v22;
  v20 = &v21;
  result = sub_298BF4988(a1, a2, a3, sub_298BF8A04, &v18);
  v9 = v23;
  v10 = *(v23 + 8);
  *(a4 + 20) = *(v23 + 12);
  v11 = *(v9 + 16);
  *(a4 + 28) = *(v9 + 20);
  *(a4 + 32) = 0;
  *(a4 + 48) = 0;
  v12 = v22;
  if (v22)
  {
    v13 = *(v21 + 24);
    *(a4 + 32) = *(v22 + 8);
    *(a4 + 40) = v13;
    *(a4 + 48) = 1;
  }

  v15 = v16;
  v14 = v17;
  *a4 = v17;
  *(a4 + 8) = v15;
  *(a4 + 16) = v10 - v14;
  *(a4 + 24) = v11 - v14;
  if (v12)
  {
    *(a4 + 32) -= v14;
  }

  return result;
}

uint64_t sub_298BF508C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  v7 = a5;
  v6[0] = &v7;
  v6[1] = v9;
  v6[2] = v8;
  return sub_298BF4988(a1, a2, a5, sub_298BF8B6C, v6);
}

void sub_298BF50E8(uint64_t a1@<X0>, std::string::size_type a2@<X1>, std::string::size_type a3@<X2>, std::string::size_type a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, void (*a9)(uint64_t, unint64_t, uint64_t, BOOL), uint64_t a10, unsigned __int8 a11)
{
  v95 = 0;
  v98 = 0;
  v90 = 0;
  v94 = 0;
  __p.__r_.__value_.__r.__words[0] = a3;
  __p.__r_.__value_.__l.__size_ = a4;
  __p.__r_.__value_.__s.__data_[16] = 1;
  v82[0] = &v95;
  v82[1] = &v90;
  v86.__r_.__value_.__r.__words[0] = a1;
  v86.__r_.__value_.__l.__size_ = a2;
  v84.__r_.__value_.__r.__words[0] = sub_298BF8EDC;
  v84.__r_.__value_.__l.__size_ = v82;
  LOBYTE(v99[0]) = a11;
  *&v100 = &__p;
  *(&v100 + 1) = &v86;
  *&v101 = v99;
  *(&v101 + 1) = &v84;
  sub_298BF4988(a1, a2, a11, sub_298BF7F88, &v100);
  if ((v94 & 1) == 0)
  {
    std::generic_category();
    v82[0] = "MachOUtilities.cpp";
    v82[2] = ":";
    v83 = 771;
    v81 = 3;
    LODWORD(v80) = 3485748;
    v84.__r_.__value_.__r.__words[0] = v82;
    v84.__r_.__value_.__r.__words[2] = &v80;
    v85 = 1026;
    v86.__r_.__value_.__r.__words[0] = &v84;
    v86.__r_.__value_.__r.__words[2] = ": ";
    v87 = 770;
    __p.__r_.__value_.__r.__words[0] = &v86;
    __p.__r_.__value_.__r.__words[2] = "static_if metadata not found";
    v89 = 770;
    sub_298B996A4(&__p, v99);
    operator new();
  }

  v78 = a8;
  v100 = 0u;
  v101 = 0u;
  v102 = 1065353216;
  if (a7)
  {
    v15 = &a6[a7];
    do
    {
      v16 = *a6;
      if (v97 < *a6)
      {
        v16 = v97;
      }

      v17 = *(v96 + v16 + 8);
      v18 = v17 & 0x7FFFFFFFFFCLL;
      if (!*(&v100 + 1))
      {
        goto LABEL_26;
      }

      v19 = vcnt_s8(*(&v100 + 8));
      v19.i16[0] = vaddlv_u8(v19);
      if (v19.u32[0] > 1uLL)
      {
        v20 = v17 & 0x7FFFFFFFFFCLL;
        if (*(&v100 + 1) <= v18)
        {
          v20 = v18 % *(&v100 + 1);
        }
      }

      else
      {
        v20 = (*(&v100 + 1) - 1) & v18;
      }

      v21 = *(v100 + 8 * v20);
      if (!v21 || (v22 = *v21) == 0)
      {
LABEL_26:
        operator new();
      }

      if (v19.u32[0] < 2uLL)
      {
        while (1)
        {
          v23 = v22[1];
          if (v23 == v18)
          {
            if (v22[2] == v18)
            {
              goto LABEL_27;
            }
          }

          else if ((v23 & (*(&v100 + 1) - 1)) != v20)
          {
            goto LABEL_26;
          }

          v22 = *v22;
          if (!v22)
          {
            goto LABEL_26;
          }
        }
      }

      while (1)
      {
        v24 = v22[1];
        if (v24 == v18)
        {
          break;
        }

        if (v24 >= *(&v100 + 1))
        {
          v24 %= *(&v100 + 1);
        }

        if (v24 != v20)
        {
          goto LABEL_26;
        }

LABEL_21:
        v22 = *v22;
        if (!v22)
        {
          goto LABEL_26;
        }
      }

      if (v22[2] != v18)
      {
        goto LABEL_21;
      }

LABEL_27:
      ++a6;
    }

    while (a6 != v15);
  }

  v25 = v92;
  if (v92)
  {
    v26 = 0;
    v79 = a5;
    do
    {
      if (v25 >= v26)
      {
        v25 = v26;
      }

      v27 = (v91 + v25);
      v28 = *(v91 + v25 + 8);
      if (!*(&v100 + 1))
      {
        goto LABEL_56;
      }

      v29 = v28 & 0x7FFFFFFFFFCLL;
      v30 = vcnt_s8(*(&v100 + 8));
      v30.i16[0] = vaddlv_u8(v30);
      if (v30.u32[0] > 1uLL)
      {
        v31 = v28 & 0x7FFFFFFFFFCLL;
        if (v29 >= *(&v100 + 1))
        {
          v31 = v29 % *(&v100 + 1);
        }
      }

      else
      {
        v31 = (*(&v100 + 1) - 1) & v29;
      }

      v32 = *(v100 + 8 * v31);
      if (!v32 || (v33 = *v32) == 0)
      {
LABEL_56:
        v35 = 1;
        if ((v28 & 1) == 0)
        {
          goto LABEL_57;
        }

LABEL_47:
        v36 = 3573751839;
        v37 = v26 + a5 + v93;
        v38 = *v27;
        if (!a11)
        {
          goto LABEL_145;
        }

LABEL_58:
        v40 = sub_298B9CDFC();
        sub_298ADC8F4(&v86, v37);
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v86;
        }

        else
        {
          v41 = v86.__r_.__value_.__r.__words[0];
        }

        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v86.__r_.__value_.__l.__size_;
        }

        sub_298B9BCEC(v40, v41, size);
        v43 = v40[4];
        if (v40[3] - v43 > 1uLL)
        {
          *v43 = 8250;
          v49 = v40[3];
          v44 = (v40[4] + 2);
          v40[4] = v44;
          v46 = *v27;
          v45 = *(v27 + 1);
          if ((v49 - v44) <= 3)
          {
            goto LABEL_69;
          }

LABEL_66:
          *v44 = 2068138323;
          v47 = v40[3];
          v48 = (v40[4] + 4);
          v40[4] = v48;
          if ((v47 - v48) > 0xC)
          {
            goto LABEL_67;
          }

LABEL_70:
          sub_298B9BCEC(v40, "sie.sie_base=", 0xDuLL);
        }

        else
        {
          sub_298B9BCEC(v40, ": ", 2uLL);
          v44 = v40[4];
          v46 = *v27;
          v45 = *(v27 + 1);
          if (v40[3] - v44 > 3uLL)
          {
            goto LABEL_66;
          }

LABEL_69:
          sub_298B9BCEC(v40, "SIE{", 4uLL);
          v48 = v40[4];
          if (v40[3] - v48 <= 0xCuLL)
          {
            goto LABEL_70;
          }

LABEL_67:
          qmemcpy(v48, "sie.sie_base=", 13);
          v40[4] += 13;
        }

        sub_298ADC8F4(&__p, v46);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = __p.__r_.__value_.__l.__size_;
        }

        sub_298B9BCEC(v40, p_p, v51);
        v52 = v40[4];
        if (v40[3] - v52 > 1uLL)
        {
          *v52 = 8236;
          v40[4] += 2;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_82;
          }

LABEL_79:
          v53 = v40[4];
          if (v40[3] - v53 <= 0xEuLL)
          {
            goto LABEL_80;
          }

LABEL_83:
          qmemcpy(v53, "sie.sie_target=", 15);
          v40[4] += 15;
        }

        else
        {
          sub_298B9BCEC(v40, ", ", 2uLL);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_79;
          }

LABEL_82:
          operator delete(__p.__r_.__value_.__l.__data_);
          v53 = v40[4];
          if (v40[3] - v53 > 0xEuLL)
          {
            goto LABEL_83;
          }

LABEL_80:
          sub_298B9BCEC(v40, "sie.sie_target=", 0xFuLL);
        }

        sub_298ADC8F4(&__p, v46 >> 32);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &__p;
        }

        else
        {
          v54 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v55 = __p.__r_.__value_.__l.__size_;
        }

        sub_298B9BCEC(v40, v54, v55);
        v56 = v40[4];
        if (v40[3] - v56 > 1uLL)
        {
          *v56 = 8236;
          v40[4] += 2;
          a5 = v79;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_95;
          }

LABEL_92:
          v57 = v40[4];
          if (v40[3] - v57 <= 0xCuLL)
          {
            goto LABEL_93;
          }

LABEL_96:
          qmemcpy(v57, "sie.sie_link=", 13);
          v40[4] += 13;
        }

        else
        {
          sub_298B9BCEC(v40, ", ", 2uLL);
          a5 = v79;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_92;
          }

LABEL_95:
          operator delete(__p.__r_.__value_.__l.__data_);
          v57 = v40[4];
          if (v40[3] - v57 > 0xCuLL)
          {
            goto LABEL_96;
          }

LABEL_93:
          sub_298B9BCEC(v40, "sie.sie_link=", 0xDuLL);
        }

        sub_298ADC8F4(&__p, v45);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &__p;
        }

        else
        {
          v58 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = __p.__r_.__value_.__l.__size_;
        }

        sub_298B9BCEC(v40, v58, v59);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v60 = v40[4];
          if (v40[3] == v60)
          {
            goto LABEL_108;
          }

LABEL_105:
          *v60 = 125;
          v61 = v40[3];
          v62 = (v40[4] + 1);
          v40[4] = v62;
          if ((v61 - v62) <= 7)
          {
            goto LABEL_106;
          }

LABEL_109:
          *v62 = 0x203D2079656B202CLL;
          v40[4] += 8;
        }

        else
        {
          v60 = v40[4];
          if (v40[3] != v60)
          {
            goto LABEL_105;
          }

LABEL_108:
          sub_298B9BCEC(v40, "}", 1uLL);
          v62 = v40[4];
          if (v40[3] - v62 > 7uLL)
          {
            goto LABEL_109;
          }

LABEL_106:
          sub_298B9BCEC(v40, ", key = ", 8uLL);
        }

        sub_298ADC8F4(&__p, *(v27 + 1) & 0x7FFFFFFFFFCLL);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v63 = &__p;
        }

        else
        {
          v63 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v64 = __p.__r_.__value_.__l.__size_;
        }

        sub_298B9BCEC(v40, v63, v64);
        v65 = v40[4];
        if (v40[3] - v65 > 6uLL)
        {
          *(v65 + 3) = 540876899;
          *v65 = 1668292652;
          v40[4] += 7;
        }

        else
        {
          sub_298B9BCEC(v40, ", pc = ", 7uLL);
        }

        sub_298ADC8F4(&v84, v37 + v38);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v84;
        }

        else
        {
          v66 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v67 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v67 = v84.__r_.__value_.__l.__size_;
        }

        sub_298B9BCEC(v40, v66, v67);
        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_132;
          }

LABEL_127:
          if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_128;
          }

LABEL_133:
          operator delete(v86.__r_.__value_.__l.__data_);
          if (v35)
          {
            goto LABEL_143;
          }

LABEL_129:
          v68 = sub_298B9CDFC();
          v69 = v68;
          v70 = v68[4];
          if ((v68[3] - v70) > 0x12)
          {
            *(v70 + 15) = 540876910;
            *v70 = *" -> patched insn = ";
            v68[4] += 19;
          }

          else
          {
            sub_298B9BCEC(v68, " -> patched insn = ", 0x13uLL);
          }

          sub_298ADC8F4(&__p, v36);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = &__p;
          }

          else
          {
            v71 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v72 = __p.__r_.__value_.__l.__size_;
          }

          sub_298B9BCEC(v69, v71, v72);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_143;
          }

          operator delete(__p.__r_.__value_.__l.__data_);
          v73 = sub_298B9CDFC();
          v74 = v73[4];
          if (v73[3] != v74)
          {
LABEL_144:
            *v74 = 10;
            ++v73[4];
            goto LABEL_145;
          }
        }

        else
        {
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_127;
          }

LABEL_132:
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_133;
          }

LABEL_128:
          if ((v35 & 1) == 0)
          {
            goto LABEL_129;
          }

LABEL_143:
          v73 = sub_298B9CDFC();
          v74 = v73[4];
          if (v73[3] != v74)
          {
            goto LABEL_144;
          }
        }

        sub_298B9BCEC(v73, "\n", 1uLL);
        if ((v35 & 1) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_30;
      }

      if (v30.u32[0] < 2uLL)
      {
        while (1)
        {
          v34 = v33[1];
          if (v29 == v34)
          {
            if (v33[2] == v29)
            {
              goto LABEL_46;
            }
          }

          else if ((v34 & (*(&v100 + 1) - 1)) != v31)
          {
            goto LABEL_56;
          }

          v33 = *v33;
          if (!v33)
          {
            goto LABEL_56;
          }
        }
      }

      while (1)
      {
        v39 = v33[1];
        if (v29 == v39)
        {
          break;
        }

        if (v39 >= *(&v100 + 1))
        {
          v39 %= *(&v100 + 1);
        }

        if (v39 != v31)
        {
          goto LABEL_56;
        }

LABEL_50:
        v33 = *v33;
        if (!v33)
        {
          goto LABEL_56;
        }
      }

      if (v33[2] != v29)
      {
        goto LABEL_50;
      }

LABEL_46:
      v35 = 0;
      if (v28)
      {
        goto LABEL_47;
      }

LABEL_57:
      v38 = *v27;
      v36 = (v27[1] >> 2) & 0x3FFFFFF | 0x14000000;
      v37 = v26 + a5 + v93;
      if (a11)
      {
        goto LABEL_58;
      }

LABEL_145:
      if ((v35 & 1) == 0)
      {
LABEL_146:
        a9(a10, v37 + v38, v36, (v28 & 1) == 0);
      }

LABEL_30:
      v26 += 16;
      v25 = v92;
    }

    while (v26 < v92);
  }

  *v78 = 0;
  v75 = v101;
  if (v101)
  {
    do
    {
      v76 = *v75;
      operator delete(v75);
      v75 = v76;
    }

    while (v76);
  }

  v77 = v100;
  *&v100 = 0;
  if (v77)
  {
    operator delete(v77);
  }
}

unsigned __int8 *sub_298BF5FA0(void *a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v4 = v3[2];
  if (v4 == v3[1])
  {
    v7 = 0;
    v5 = 0;
  }

  else
  {
    v5 = *(*v3 + 8 * v4);
    if (v5)
    {
      v6 = v3[2];
      if (v6 == v3[1])
      {
        v7 = 0;
      }

      else
      {
        v7 = *(*v3 + 8 * v6);
      }

      v5 = *a1;
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = v3 + 3;
  if (v3 + 3 != v2)
  {
    v17 = a1[1];
    do
    {
      v18 = v5;
      v15 = a1;
      v16 = a2;
      v10 = v8[2];
      if (v10 != v8[1])
      {
        v11 = *(*v8 + 8 * v10);
        if (v11)
        {
          if (!v5)
          {
            goto LABEL_26;
          }

          v12 = (*(*v7 + 16))(v7);
          if (v12 == (*(*v11 + 16))(v11))
          {
            if (v7[8] >= v11[8])
            {
              goto LABEL_26;
            }
          }

          else
          {
            v13 = (*(*v7 + 16))(v7);
            if (v13 >= (*(*v11 + 16))(v11))
            {
LABEL_26:
              v14 = v8[2];
              if (v14 == v8[1])
              {
                v7 = 0;
              }

              else
              {
                v7 = *(*v8 + 8 * v14);
              }

              v18 = v8;
            }
          }
        }
      }

      v8 += 3;
      v5 = v18;
      a1 = v15;
      a2 = v16;
    }

    while (v8 != v17);
  }

  if (v5 && (a2 & 1) != 0)
  {
    ++v5[2];
    sub_298BF62AC(a1);
  }

  return v7;
}

uint64_t sub_298BF6194(uint64_t a1)
{
  if (*(a1 + 344))
  {
    v1 = (a1 + 152);
    v2 = a1;
    sub_298ADDE08(a1 + 152, sub_298ADE160, 0);
    a1 = v2;
    *(v2 + 344) = 0;
    v1[10] = 0u;
    v1[11] = 0u;
    v1[8] = 0u;
    v1[9] = 0u;
    v1[7] = 0u;
    *(v2 + 248) = 0u;
    *(v2 + 232) = 0u;
    *(v2 + 216) = 0u;
    *(v2 + 200) = 0u;
    *(v2 + 184) = 0u;
    *(v2 + 168) = 0u;
    *(v2 + 152) = 0u;
  }

  *(a1 + 348) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 40) = 0;
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v6 = 0;
    v7 = v3 - v4 - 24;
    v8 = vdupq_n_s64(v7 / 0x18);
    v9 = (v4 + 40);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_298D1A120)));
      if (v10.i8[0])
      {
        *(v9 - 3) = 0;
      }

      if (v10.i8[4])
      {
        *v9 = 0;
      }

      v6 += 2;
      v9 += 6;
    }

    while (((v7 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v6);
  }

  return sub_298BF62AC(a1);
}

uint64_t sub_298BF62AC(uint64_t a1)
{
  result = sub_298BF5FA0(a1, 0);
  if (result)
  {
    result = (*(*result + 16))(result);
    *(a1 + 24) = result;
    *(a1 + 32) = 1;
  }

  else if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t *sub_298BF631C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_298BF6194(a1);
  v4 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v10 = v5[1];
      for (i = v5[2]; i != v10; v5[2] = i)
      {
        v11 = *(*v5 + 8 * i);
        if (!v11)
        {
          break;
        }

        v12 = (*(*v11 + 16))(v11, v4);
        v18 = v12;
        if ((v11[8] & 1) == 0)
        {
          v15 = v12;
          v16 = *(a2 + 8);
          if (v16 >= *(a2 + 16))
          {
            v17 = sub_298BCE848(a2, &v18);
          }

          else
          {
            *v16 = v15;
            v17 = v16 + 1;
          }

          *(a2 + 8) = v17;
        }

        v10 = v5[1];
        i = v5[2] + 1;
      }

      v5 += 3;
    }

    while (v5 != v6);
    v13 = *a2;
    v14 = *(a2 + 8);
  }

  std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
  result = sub_298BC6370(*a2, *(a2 + 8));
  if (result != *(a2 + 8))
  {
    v8 = *(a2 + 8);
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_298BF6454(uint64_t a1, uint64_t a2, const char *a3, __int128 *a4)
{
  v10 = *(a4 + 2);
  v9 = *a4;
  result = (*(*a1 + 16))(a1, &v9);
  if (result)
  {
    if (a3)
    {
      v8 = strlen(a3);
    }

    else
    {
      v8 = 0;
    }

    return (*(*a1 + 8))(a1, a2, a3, v8);
  }

  return result;
}

void sub_298BF6510(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v70 = *MEMORY[0x29EDCA608];
  v8 = *(a4 + 56);
  if (v8 == 1)
  {
    v9 = *(a4 + 48);
    v50 = *a4 - v9;
    v48 = *(a4 + 8) - v9;
  }

  else
  {
    v50 = 0;
  }

  v10 = *(a2 + 34);
  if (v10)
  {
    v11 = a2[2];
    v12 = v11 + a2[3];
    v13 = *(a2 + 2);
    v21 = v13 > 0x14;
    v14 = (1 << v13) & 0x155800;
    v15 = v21 || v14 == 0;
    v16 = 16 * v10;
    v17 = 0;
    v18 = 0;
    v19 = (a2[16] + 8);
    if (!v15)
    {
      while (1)
      {
        if (*v19 == 13)
        {
          v20 = *(v19 - 1);
          v21 = v20 < v11 || v20 + 24 > v12;
          if (v21)
          {
            goto LABEL_84;
          }

          v22 = bswap32(*(v20 + 8));
          if (v22 < bswap32(*(v20 + 4)))
          {
            if ((v18 & 1) == 0)
            {
              v18 = 1;
            }

            v17 = (v20 + v22);
            v5 = strlen(v17);
          }
        }

        v19 += 4;
        v16 -= 16;
        if (!v16)
        {
          goto LABEL_30;
        }
      }
    }

    do
    {
      if (*v19 == 13)
      {
        v23 = *(v19 - 1);
        if (v23 < v11 || v23 + 24 > v12)
        {
LABEL_84:
          sub_298B868A8("Malformed MachO file.", 1);
        }

        v25 = *(v23 + 8);
        if (v25 < *(v23 + 4))
        {
          if ((v18 & 1) == 0)
          {
            v18 = 1;
          }

          v17 = (v23 + v25);
          v5 = strlen((v23 + v25));
        }
      }

      v19 += 4;
      v16 -= 16;
    }

    while (v16);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

LABEL_30:
  v63 = v17;
  v64 = v5;
  v65 = v18;
  if ((*(*a1 + 16))(a1, &v63))
  {
    v26 = (*(*a2 + 48))(a2);
    v28 = v27;
    v29 = (*(*a2 + 56))(a2);
    v58 = v26;
    v59 = v28;
    if (v26 != v29)
    {
      v30 = v29;
      while (1)
      {
        (*(*a2 + 88))(&v68, a2, v26);
        if (v69)
        {
          v31 = v68;
          v68 = 0;
          if (v31)
          {
            *a5 = v31;
            goto LABEL_77;
          }

          v32 = 0;
          v33 = 0;
        }

        else
        {
          v32 = v68;
          v33 = v68;
        }

        if (v8)
        {
          if (v50 > v33 || v48 <= v33)
          {
            break;
          }
        }

        (*(*a2 + 120))(&v66, a2, v26);
        if (v67)
        {
          v35 = v66;
          if (v66)
          {
            v36 = 1;
          }

          else
          {
            v36 = 5;
          }
        }

        else if (v66 == 5)
        {
          (*(*a2 + 80))(&v63, a2, v26);
          v35 = v63;
          if ((v65 & 1) != 0 && (v63 = 0, v35))
          {
            v36 = 1;
          }

          else
          {
            v60 = v17;
            v61 = v5;
            v62 = v18;
            (*(*a1 + 40))(a1, v33 + a3, v35, &v60);
            if (v65)
            {
              v46 = v63;
              v63 = 0;
              if (v46)
              {
                (*(*v46 + 8))(v46);
              }
            }

            v36 = 0;
            v35 = 0;
          }

          if (v67)
          {
            v37 = v66;
            v66 = 0;
            if (v37)
            {
              (*(*v37 + 8))(v37);
            }
          }
        }

        else
        {
          v35 = 0;
          v36 = 5;
        }

        if (v69)
        {
          v32 = v68;
LABEL_43:
          v68 = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }
        }

        if (v36 != 5 && v36)
        {
          *a5 = v35;
          goto LABEL_77;
        }

LABEL_53:
        (*(*v59 + 24))(v59, &v58);
        v26 = v58;
        if (v58 == v30)
        {
          goto LABEL_65;
        }
      }

      if ((v69 & 1) == 0)
      {
        goto LABEL_53;
      }

      v35 = 0;
      v36 = 5;
      goto LABEL_43;
    }

LABEL_65:
    if ((v8 & 1) == 0)
    {
      v55 = 0;
      v56 = 0;
      v52 = xmmword_298CF7980;
      __p = 0x545845545F5FLL;
      v54 = 6;
      v57 = 1;
      v39 = sub_298BF4860(a2, &v52);
      if (v57 == 1 && v54 < 0)
      {
        v47 = v38;
        operator delete(__p);
        v38 = v47;
      }

      if (v38)
      {
        sub_298B7E52C(a2, &v63);
        v40 = v63;
        v41 = v64;
        v60 = v17;
        v61 = v5;
        v62 = v18;
        if ((*(*a1 + 16))(a1, &v60) && v41)
        {
          v42 = v39 + a3;
          v43 = 8 * v41;
          do
          {
            v44 = *v40++;
            v60 = v17;
            v61 = v5;
            v62 = v18;
            (*(*a1 + 40))(a1, v42 + v44, "<stripped>", &v60);
            v43 -= 8;
          }

          while (v43);
        }

        if (v63 != &v65)
        {
          free(v63);
        }
      }
    }
  }

  *a5 = 0;
LABEL_77:
  v45 = *MEMORY[0x29EDCA608];
}

void sub_298BF6B3C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33[7] = *MEMORY[0x29EDCA608];
  v33[0] = *(a2 + 2);
  *v32 = *a2;
  if ((*(*a1 + 16))(a1, v32))
  {
    v26 = a5;
    v27 = a6;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v32[0] = v33;
    v32[1] = 0x600000000;
LABEL_3:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (a4 - v13 != v15)
    {
      v18 = *(a3 + v13 + v15);
      v19 = v18 & 0x7F;
      if (v17 >= 0x3F)
      {
        v20 = v19 > 1;
        if (v17 != 63)
        {
          v20 = v19 != 0;
        }

        if (v20)
        {
          break;
        }
      }

      v16 += v19 << v17;
      v17 += 7;
      ++v15;
      if ((v18 & 0x80) == 0)
      {
        if (!v16)
        {
          break;
        }

        if (v12 >= HIDWORD(v32[1]))
        {
          sub_298B90A44(v32, v33, v12 + 1, 8);
          v12 = v32[1];
        }

        v13 += v15;
        v14 += v16;
        *(v32[0] + v12) = v14;
        v12 = ++LODWORD(v32[1]);
        goto LABEL_3;
      }
    }

    v28 = *a2;
    v29 = *(a2 + 2);
    v21 = v32[0];
    v31 = v29;
    v30 = *a2;
    if ((*(*a1 + 16))(a1, &v30))
    {
      v22 = v12 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = 8 * v12;
      do
      {
        v24 = *v21++;
        v30 = v28;
        v31 = v29;
        (*(*a1 + 40))(a1, v27 + v26 + v24, "<stripped>", &v30);
        v23 -= 8;
      }

      while (v23);
    }

    if (v32[0] != v33)
    {
      free(v32[0]);
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

size_t sub_298BF6DB0(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, char a7)
{
  v43 = *(a2 + 2);
  v42 = *a2;
  result = (*(*a1 + 16))(a1, &v42);
  if (result)
  {
    v15 = a5 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (a3)
    {
      v25 = &a4[4 * a5];
      v26 = a3 + 1;
      if (a7)
      {
        do
        {
          if ((a4[1] & 0xEE) == 0xE)
          {
            v31 = *(a4 + 1);
            v32 = *a4;
            v33 = a3 + v32;
            result = strlen((a3 + v32));
            if (result < 0xA || (*v33 == 0x657463616465723CLL ? (v34 = *(v33 + 8) == 15972) : (v34 = 0), !v34))
            {
              v27 = (v26 + result + v32);
              while (result)
              {
                --result;
                v35 = *(v27-- - 2);
                if (v35 == 47)
                {
                  goto LABEL_22;
                }
              }

              v27 = (a3 + v32);
LABEL_22:
              v28 = v27;
              v29 = strlen(v27);
              v30 = (**a1)(a1, v28, v29);
              v42 = *a2;
              v43 = *(a2 + 2);
              result = (*(*a1 + 40))(a1, v31 + a6, v30, &v42);
            }
          }

          a4 += 4;
        }

        while (a4 != v25);
      }

      else
      {
        do
        {
          if ((a4[1] & 0xEE) == 0xE)
          {
            v37 = *(a4 + 1);
            v38 = *a4;
            v39 = a3 + v38;
            result = strlen((a3 + v38));
            if (result < 0xA || (*v39 == 0x657463616465723CLL ? (v40 = *(v39 + 8) == 15972) : (v40 = 0), !v40))
            {
              v36 = v26 + result + v38;
              while (result)
              {
                --result;
                v41 = *(v36 - 2);
                --v36;
                if (v41 == 47)
                {
                  goto LABEL_35;
                }
              }

              v36 = a3 + v38;
LABEL_35:
              v42 = *a2;
              v43 = *(a2 + 2);
              result = (*(*a1 + 40))(a1, v37 + a6, v36, &v42);
            }
          }

          a4 += 4;
        }

        while (a4 != v25);
      }
    }

    else
    {
      v16 = 16 * a5;
      v17 = a4 + 2;
      if (a7)
      {
        do
        {
          if ((*(v17 - 4) & 0xEE) == 0xE)
          {
            v24 = *v17;
            v21 = *(v17 - 2);
            if (v21)
            {
              v20 = strlen(*(v17 - 2));
              v21 = *(v17 - 2);
              v22 = v20;
            }

            else
            {
              v22 = 0;
            }

            v23 = (**a1)(a1, v21, v22);
            v42 = *a2;
            v43 = *(a2 + 2);
            result = (*(*a1 + 40))(a1, v24 + a6, v23, &v42);
          }

          v17 += 2;
          v16 -= 16;
        }

        while (v16);
      }

      else
      {
        do
        {
          if ((*(v17 - 4) & 0xEE) == 0xE)
          {
            v18 = *v17;
            v19 = *(v17 - 2);
            v42 = *a2;
            v43 = *(a2 + 2);
            result = (*(*a1 + 40))(a1, v18 + a6, v19, &v42);
          }

          v17 += 2;
          v16 -= 16;
        }

        while (v16);
      }
    }
  }

  return result;
}

void sub_298BF7160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 16);
  v11 = *a2;
  if ((*(*a1 + 16))(a1, &v11))
  {
    v11 = *a2;
    v12 = *(a2 + 16);
    sub_298BF6DB0(a1, &v11, a4 + *(a3 + 24), (a4 + *(a3 + 16)), *(a3 + 20), a6, 0);
    if (*(a3 + 48) == 1)
    {
      v11 = *a2;
      v12 = *(a2 + 16);
      sub_298BF6B3C(a1, &v11, a4 + *(a3 + 32), *(a3 + 36), *(a3 + 40), a6);
    }
  }
}

uint64_t sub_298BF7250(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v4 = *(result + 24);
  if (v4 >= *(result + 32))
  {
    v20 = result;
    v21 = a3;
    v22 = a4;
    v23 = sub_298BCE848(result + 16, &v33);
    a4 = v22;
    a3 = v21;
    v5 = v23;
    result = v20;
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 1;
  }

  v7 = (result + 40);
  v6 = *(result + 40);
  *(result + 24) = v5;
  v8 = *(result + 56);
  if (v8)
  {
    v9 = (37 * v33) & (v8 - 1);
    v10 = (v6 + 16 * v9);
    v11 = *v10;
    if (v33 == *v10)
    {
      goto LABEL_5;
    }

    v17 = 0;
    v18 = 1;
    while (v11 != -1)
    {
      if (v17)
      {
        v24 = 0;
      }

      else
      {
        v24 = v11 == -2;
      }

      if (v24)
      {
        v17 = v10;
      }

      v25 = v9 + v18++;
      v9 = v25 & (v8 - 1);
      v10 = (v6 + 16 * v9);
      v11 = *v10;
      if (v33 == *v10)
      {
        goto LABEL_5;
      }
    }

    if (v17)
    {
      v10 = v17;
    }
  }

  else
  {
    v10 = 0;
  }

  v19 = *(result + 48);
  if (4 * v19 + 4 >= 3 * v8)
  {
    v8 *= 2;
    goto LABEL_41;
  }

  if (v8 + ~v19 - *(result + 52) <= v8 >> 3)
  {
LABEL_41:
    v31 = result;
    v26 = a3;
    v27 = a4;
    sub_298BE6B90(result + 40, v8);
    v32[0] = 0;
    sub_298BF86C4(v7, &v33, v32);
    a4 = v27;
    a3 = v26;
    result = v31;
    v10 = v32[0];
  }

  ++*(result + 48);
  if (*v10 != -1)
  {
    --*(result + 52);
  }

  *v10 = v33;
  v10[1] = 0;
LABEL_5:
  v12 = v10[1];
  if (!v12)
  {
    goto LABEL_6;
  }

  if (a4 != 10 || (*a3 == 0x657070697274733CLL ? (v13 = *(a3 + 8) == 15972) : (v13 = 0), !v13))
  {
    v32[0] = v10[1];
    v14 = a3;
    v15 = a4;
    result = strlen(v12);
    a3 = v14;
    v32[1] = result;
    if (v15 != 9)
    {
      goto LABEL_6;
    }

    if (*v14 != 0x676E697373696D3CLL || *(v14 + 8) != 62)
    {
      goto LABEL_6;
    }

    if (result != 26 || (*v12 == *"shared cache branch island" ? (v28 = *(v12 + 8) == *"ache branch island") : (v28 = 0), v28 ? (v29 = *(v12 + 16) == *"nch island") : (v29 = 0), v29 ? (v30 = *(v12 + 24) == *"nd") : (v30 = 0), !v30))
    {
      result = sub_298B96A54(v32, "::", 2uLL, 0);
      a3 = v14;
      if (result == -1)
      {
LABEL_6:
        v10[1] = a3;
      }
    }
  }

  return result;
}

void sub_298BF74CC(uint64_t a1, uint64_t a2)
{
  v65[8] = *MEMORY[0x29EDCA608];
  v4 = a2 + 104;
  v62 = a2 + 104;
  v63 = v65;
  v64 = 0x400000000;
  sub_298BF92FC(&v62);
  sub_298BF79FC(&v58, v4);
  while (v64)
  {
    v6 = v63;
    if (*(v63 + 3) >= *(v63 + 2))
    {
      break;
    }

    v7 = v63 + 16 * v64;
    v8 = *(v7 - 1);
    v9 = v59;
    v10 = v59 + 16 * v60;
    if (v8 != *(v10 - 1))
    {
      goto LABEL_8;
    }

    if (*(v7 - 2) == *(v10 - 2))
    {
      goto LABEL_22;
    }

LABEL_7:
    v8 = HIDWORD(v6[2 * v64 - 1]);
LABEL_8:
    sub_298BF7250(a1, *(v6[2 * v64 - 2] + 16 * v8 + 8), "<missing>", 9);
    v11 = v63;
    v12 = v63 + 16 * v64;
    v13 = *(v12 - 1) + 1;
    *(v12 - 1) = v13;
    if (v13 == v11[4 * v64 - 2])
    {
      v14 = *(v62 + 192);
      if (v14)
      {
        v15 = 16 * v14;
        v16 = -1;
        while (1)
        {
          v17 = v15;
          v15 -= 16;
          if (!v15)
          {
            break;
          }

          v19 = *(v11 + v17 - 8);
          v18 = *(v11 + v17 - 4);
          ++v16;
          if (v18 != v19 - 1)
          {
            v20 = v14 - v16;
            goto LABEL_14;
          }
        }

        v19 = v11[2];
        v18 = v11[3];
        v20 = 1;
LABEL_14:
        v21 = v11 + v17;
        v22 = v18 + 1;
        *(v21 - 1) = v22;
        if (v22 != v19)
        {
          v23 = *(*(v21 - 2) + 8 * v22);
          if (v20 != v14)
          {
            do
            {
              v24 = v63 + 16 * v20;
              *v24 = v23 & 0xFFFFFFFFFFFFFFC0;
              *(v24 + 2) = (v23 & 0x3F) + 1;
              *(v24 + 3) = 0;
              ++v20;
              v23 = *(v23 & 0xFFFFFFFFFFFFFFC0);
            }

            while (v14 != v20);
            v11 = v63;
          }

          v5 = &v11[4 * v14];
          *v5 = v23 & 0xFFFFFFFFFFFFFFC0;
          v5[1] = (v23 & 0x3F) + 1;
        }
      }
    }
  }

  v9 = v59;
  if (v60 && *(v59 + 3) < *(v59 + 2))
  {
    v6 = v63;
    goto LABEL_7;
  }

LABEL_22:
  if (v9 != v61)
  {
    free(v9);
  }

  if (v63 != v65)
  {
    free(v63);
  }

  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  std::__sort<std::__less<unsigned long long,unsigned long long> &,unsigned long long *>();
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  if (v28 != v27)
  {
    v29 = v28 + 8;
    while (v29 != v27)
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      v29 += 8;
      if (v30 == v31)
      {
        v28 = v29 - 16;
        goto LABEL_32;
      }
    }

    v28 = *(a1 + 24);
  }

LABEL_32:
  if (v27 != v28)
  {
    v51 = v28 + 16;
    if (v28 + 16 != v27)
    {
      v52 = *v28;
      do
      {
        v53 = v52;
        v52 = *v51;
        if (v53 != *v51)
        {
          *(v28 + 1) = v52;
          v28 += 8;
        }

        v51 += 8;
      }

      while (v51 != v27);
    }

    v54 = v28 + 8;
    v55 = v27 - (v28 + 8);
    if (v55)
    {
      v56 = v27 - &v54[v55];
      if (v27 != &v54[v55])
      {
        memmove(v54, &v54[v55], v27 - &v54[v55]);
      }

      *(a1 + 24) = &v54[v56];
    }
  }

  v62 = v4;
  v63 = v65;
  v64 = 0x400000000;
  sub_298BF92FC(&v62);
  v58 = v4;
  v59 = v61;
  v60 = 0x400000000;
  sub_298ADE660(&v59, v4 + 8 * (*(a2 + 296) != 0), *(a2 + 300), *(a2 + 300));
  v32 = 0;
  while (2)
  {
    v33 = v63;
    if (v64 && *(v63 + 3) < *(v63 + 2))
    {
      v34 = v63 + 16 * v64;
      v35 = v59 + 16 * v60;
      if (*(v34 - 1) == *(v35 - 1) && *(v34 - 2) == *(v35 - 2))
      {
        break;
      }

      goto LABEL_38;
    }

    if (v60 && *(v59 + 3) < *(v59 + 2))
    {
LABEL_38:
      v37 = *(a1 + 16);
      v36 = *(a1 + 24);
      if (v32 < (v36 - v37) >> 3)
      {
        v38 = 8 * v32;
        do
        {
          v39 = v63 + 16 * v64;
          v40 = *(v39 - 2);
          v41 = *(v39 - 1);
          v42 = *(v37 + v38);
          if (*(v40 + 16 * v41) > v42)
          {
            sub_298BF866C(a1 + 40, (v37 + v38));
            *(v37 + v38) = -1;
            v37 = *(a1 + 16);
            v36 = *(a1 + 24);
          }

          else if (v42 > *(v40 + 16 * v41 + 8))
          {
            break;
          }

          ++v32;
          v38 += 8;
        }

        while (v32 < (v36 - v37) >> 3);
      }

      sub_298BF7A2C(&v62);
      continue;
    }

    break;
  }

  if (v59 != v61)
  {
    free(v59);
    v33 = v63;
  }

  if (v33 != v65)
  {
    free(v33);
  }

  v44 = *(a1 + 16);
  v43 = *(a1 + 24);
  v45 = v43 - v44;
  v46 = v45 - v32;
  if (v45 > v32)
  {
    v49 = 8 * v32;
    do
    {
      v50 = *(a1 + 16);
      sub_298BF866C(a1 + 40, (v50 + v49));
      *(v50 + v49) = -1;
      v49 += 8;
      --v46;
    }

    while (v46);
    v44 = *(a1 + 16);
    v43 = *(a1 + 24);
  }

  v47 = v44;
  if (v44 != v43)
  {
    v47 = v44;
    while (*v47 != -1)
    {
      if (++v47 == v43)
      {
        goto LABEL_58;
      }
    }
  }

  if (v47 != v43)
  {
    for (i = v47 + 1; i != v43; ++i)
    {
      if (*i != -1)
      {
        *v47++ = *i;
      }
    }
  }

  if (v47 != v43)
  {
    *(a1 + 24) = v47;
  }

LABEL_58:
  *(a1 + 8) = 1;
  v48 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BF79FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[2] = 0x400000000;
  a1[1] = a1 + 3;
  return sub_298ADE660((a1 + 1), a2 + 8 * (*(a2 + 192) != 0), *(a2 + 196), *(a2 + 196));
}

uint64_t sub_298BF7A2C(uint64_t result)
{
  v1 = *(result + 8);
  v2 = v1 + 16 * *(result + 16);
  v3 = *(v2 - 4) + 1;
  *(v2 - 4) = v3;
  if (v3 == *(v1 + 16 * *(result + 16) - 8))
  {
    v4 = *(*result + 192);
    if (v4)
    {
      v5 = result;
      sub_298B87590((result + 8), v4);
      return v5;
    }
  }

  return result;
}

void sub_298BF7A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a2 + 8;
  *(a1 + 24) = 850045863;
  *(a1 + 112) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 92) = 0u;
  sub_298BD620C();
}

char *sub_298BF7B4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) <= a2 && *(a3 + 16) > a2)
  {
    return *(a3 + 24);
  }

  v6 = *a3;
  if (*a3)
  {
    while (1)
    {
      std::mutex::lock((a1 + 24));
      v43 = v6;
      v10 = *(a1 + 104);
      if (!v10)
      {
        v11 = 0;
        goto LABEL_16;
      }

      v29 = *(a1 + 88);
      v30 = v10 - 1;
      v31 = (v10 - 1) & ((v6 >> 4) ^ (v6 >> 9));
      v11 = (v29 + 16 * v31);
      v32 = *v11;
      if (v6 != *v11)
      {
        break;
      }

LABEL_21:
      v13 = v11[1];
      if (!v13)
      {
        sub_298BD5914();
      }

      std::mutex::unlock((a1 + 24));
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v15 == v14)
      {
        goto LABEL_12;
      }

      v16 = v15 - v14;
      v17 = v16 >> 1;
      v18 = &v14[v16 >> 1];
      v20 = *v18;
      v19 = v18 + 1;
      v21 = v16 + ~(v16 >> 1);
      v22 = v20 > a2;
      if (v20 <= a2)
      {
        v23 = v19;
      }

      else
      {
        v23 = *(v13 + 16);
      }

      if (v22)
      {
        v24 = v17;
      }

      else
      {
        v24 = v21;
      }

      while (v24)
      {
        v39 = v24 >> 1;
        v40 = &v23[v24 >> 1];
        v42 = *v40;
        v41 = v40 + 1;
        v24 += ~(v24 >> 1);
        if (v42 > a2)
        {
          v24 = v39;
        }

        else
        {
          v23 = v41;
        }
      }

      if (v23 == v14)
      {
LABEL_12:
        v6 = *v6;
        goto LABEL_13;
      }

      v25 = *(v23 - 1);
      *(a3 + 8) = v25;
      if (v23 == v15)
      {
        *(a3 + 16) = -1;
        v26 = *(v13 + 40);
        v27 = *(v13 + 56);
        if (!v27)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *(a3 + 16) = *v23;
        v26 = *(v13 + 40);
        v27 = *(v13 + 56);
        if (!v27)
        {
          goto LABEL_10;
        }
      }

      v9 = (v27 - 1) & (37 * v25);
      v28 = *(v26 + 16 * v9);
      if (v25 != v28)
      {
        v33 = 1;
        while (v28 != -1)
        {
          v34 = v9 + v33++;
          v9 = v34 & (v27 - 1);
          v28 = *(v26 + 16 * v9);
          if (v25 == v28)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        v9 = v27;
      }

LABEL_11:
      result = *(v26 + 16 * v9 + 8);
      *(a3 + 24) = result;
      if (!result)
      {
        goto LABEL_12;
      }

      if (result != "<missing>")
      {
        return result;
      }

      v6 = *v6;
      if (!v6)
      {
        return "<missing>";
      }

      *(a3 + 16) = 0;
LABEL_13:
      if (!v6)
      {
        return 0;
      }
    }

    v35 = 0;
    v36 = 1;
    while (v32 != -4096)
    {
      if (v35)
      {
        v37 = 0;
      }

      else
      {
        v37 = v32 == -8192;
      }

      if (v37)
      {
        v35 = v11;
      }

      v38 = v31 + v36++;
      v31 = v38 & v30;
      v11 = (v29 + 16 * (v38 & v30));
      v32 = *v11;
      if (v6 == *v11)
      {
        goto LABEL_21;
      }
    }

    if (v35)
    {
      v11 = v35;
    }

LABEL_16:
    v12 = *(a1 + 96);
    if (4 * v12 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v12 - *(a1 + 100) > v10 >> 3)
    {
      ++*(a1 + 96);
      if (*v11 == -4096)
      {
LABEL_20:
        *v11 = v43;
        v11[1] = 0;
        goto LABEL_21;
      }

LABEL_19:
      --*(a1 + 100);
      goto LABEL_20;
    }

    sub_298BF9578(a1 + 88, v10);
    v44 = 0;
    sub_298BF942C((a1 + 88), &v43, &v44);
    v11 = v44;
    ++*(a1 + 96);
    if (*v11 == -4096)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return 0;
}

void *sub_298BF7E68(uint64_t a1, const void *a2, size_t a3)
{
  v5 = sub_298AE0D6C(a1 + 64, a3 + 1, 0);
  memcpy(v5, a2, a3);
  *(v5 + a3) = 0;
  return v5;
}

void *sub_298BF7EC8(void *a1)
{
  sub_298AE95D0((a1 + 8));
  sub_298AE9670((a1 + 8));
  MEMORY[0x29C2945E0](a1[5], 8);
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_298BF7F18(void *a1)
{
  sub_298AE95D0((a1 + 8));
  sub_298AE9670((a1 + 8));
  MEMORY[0x29C2945E0](a1[5], 8);
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BF7F88(uint64_t a1, uint64_t a2)
{
  if (*a2 != 25)
  {
    return 0;
  }

  v59 = v2;
  v60 = v3;
  v6 = (a2 + 8);
  v7 = strnlen((a2 + 8), 0x10uLL);
  if (*(*a1 + 16) != 1)
  {
    v13 = *(a1 + 8);
    v10 = v13[1];
    v48 = *v13;
    v11 = *(a2 + 24);
    if (**(a1 + 16) != 1)
    {
      goto LABEL_49;
    }

LABEL_12:
    v14 = sub_298B9CDFC();
    v15 = v14;
    v16 = v14[4];
    if ((v14[3] - v16) > 0x13)
    {
      *(v16 + 16) = 540685366;
      *v16 = *"segment_command_64: ";
      v18 = v14[3];
      v17 = (v14[4] + 20);
      *(v15 + 32) = v17;
      if (v7 <= v18 - v17)
      {
LABEL_14:
        if (v7)
        {
          memcpy(v17, v6, v7);
          v17 = (*(v15 + 32) + v7);
          *(v15 + 32) = v17;
        }

        if (*(v15 + 24) - v17 <= 0xAuLL)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_298B9BCEC(v14, "segment_command_64: ", 0x14uLL);
      v17 = *(v15 + 32);
      if (v7 <= *(v15 + 24) - v17)
      {
        goto LABEL_14;
      }
    }

    sub_298B9BCEC(v15, v6, v7);
    v17 = *(v15 + 32);
    if (*(v15 + 24) - v17 <= 0xAuLL)
    {
LABEL_17:
      sub_298B9BCEC(v15, ", vmaddr = ", 0xBuLL);
      goto LABEL_21;
    }

LABEL_20:
    *(v17 + 7) = 540876914;
    *v17 = *", vmaddr = ";
    *(v15 + 32) += 11;
LABEL_21:
    sub_298ADC8F4(&__p, *(a2 + 24));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v15, p_p, size);
    v21 = *(v15 + 32);
    if ((*(v15 + 24) - v21) > 0xB)
    {
      *(v21 + 8) = 540876902;
      *v21 = *", fileoff = ";
      *(v15 + 32) += 12;
    }

    else
    {
      sub_298B9BCEC(v15, ", fileoff = ", 0xCuLL);
    }

    sub_298ADC8F4(&v56, *(a2 + 40));
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v56;
    }

    else
    {
      v22 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v56.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v15, v22, v23);
    v24 = *(v15 + 32);
    if (*(v15 + 24) - v24 > 0xCuLL)
    {
      qmemcpy(v24, ", filesize = ", 13);
      *(v15 + 32) += 13;
    }

    else
    {
      sub_298B9BCEC(v15, ", filesize = ", 0xDuLL);
    }

    sub_298ADC8F4(&v49, *(a2 + 48));
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v49;
    }

    else
    {
      v25 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v49.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v15, v25, v26);
    v27 = *(v15 + 32);
    if (*(v15 + 24) == v27)
    {
      sub_298B9BCEC(v15, "\n", 1uLL);
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_47:
        if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_86;
      }
    }

    else
    {
      *v27 = 10;
      ++*(v15 + 32);
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_47;
      }
    }

    operator delete(v49.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_87;
    }

LABEL_86:
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_87:
    operator delete(__p.__r_.__value_.__l.__data_);
    v28 = *(a2 + 64);
    if (v28)
    {
      goto LABEL_50;
    }

    return 0;
  }

  v8 = *(a2 + 40);
  v9 = *(*a1 + 8);
  if (v9 < v8)
  {
    v8 = *(*a1 + 8);
  }

  v48 = **a1 + v8;
  if (v9 - v8 >= *(a2 + 48))
  {
    v10 = *(a2 + 48);
  }

  else
  {
    v10 = v9 - v8;
  }

  v11 = *(a2 + 24);
  if (**(a1 + 16) == 1)
  {
    goto LABEL_12;
  }

LABEL_49:
  v28 = *(a2 + 64);
  if (v28)
  {
LABEL_50:
    v29 = a2 + 72;
    do
    {
      v30 = strnlen(v29, 0x10uLL);
      v31 = *(v29 + 32);
      if (**(a1 + 16) != 1)
      {
LABEL_74:
        v43 = *(v29 + 40);
        if (!v43)
        {
          goto LABEL_51;
        }

        goto LABEL_75;
      }

      v32 = sub_298B9CDFC();
      v33 = v32;
      v34 = v32[4];
      if ((v32[3] - v34) > 0xB)
      {
        *(v34 + 8) = 540685366;
        *v34 = *"section_64: ";
        v39 = v32[3];
        v35 = (v32[4] + 12);
        *(v33 + 32) = v35;
        if (v30 > v39 - v35)
        {
LABEL_62:
          sub_298B9BCEC(v33, v29, v30);
          v35 = *(v33 + 32);
          if (*(v33 + 24) - v35 <= 8uLL)
          {
            goto LABEL_58;
          }

          goto LABEL_63;
        }
      }

      else
      {
        sub_298B9BCEC(v32, "section_64: ", 0xCuLL);
        v35 = *(v33 + 32);
        if (v30 > *(v33 + 24) - v35)
        {
          goto LABEL_62;
        }
      }

      if (v30)
      {
        memcpy(v35, v29, v30);
        v35 = (*(v33 + 32) + v30);
        *(v33 + 32) = v35;
      }

      if (*(v33 + 24) - v35 <= 8uLL)
      {
LABEL_58:
        v36 = sub_298B9BCEC(v33, ", size = ", 9uLL);
        v37 = *(v29 + 40);
        if (HIDWORD(v37))
        {
          goto LABEL_59;
        }

        goto LABEL_64;
      }

LABEL_63:
      v35[8] = 32;
      *v35 = *", size = ";
      *(v33 + 32) += 9;
      v37 = *(v29 + 40);
      v36 = v33;
      if (HIDWORD(v37))
      {
LABEL_59:
        sub_298B8FEA0(v36, v37, 0, 0, 0);
        v38 = *(v33 + 32);
        if ((*(v33 + 24) - v38) > 8)
        {
          goto LABEL_60;
        }

        goto LABEL_65;
      }

LABEL_64:
      sub_298B8FC48(v36, v37, 0, 0, 0);
      v38 = *(v33 + 32);
      if ((*(v33 + 24) - v38) > 8)
      {
LABEL_60:
        *(v38 + 8) = 32;
        *v38 = *", addr = ";
        *(v33 + 32) += 9;
        goto LABEL_66;
      }

LABEL_65:
      sub_298B9BCEC(v33, ", addr = ", 9uLL);
LABEL_66:
      sub_298ADC8F4(&__p, v31);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = __p.__r_.__value_.__l.__size_;
      }

      sub_298B9BCEC(v33, v40, v41);
      v42 = *(v33 + 32);
      if (*(v33 + 24) == v42)
      {
        sub_298B9BCEC(v33, "\n", 1uLL);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        *v42 = 10;
        ++*(v33 + 32);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_74;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v43 = *(v29 + 40);
      if (!v43)
      {
        goto LABEL_51;
      }

LABEL_75:
      v44 = v31 - v11;
      v45 = *(a1 + 24);
      if (v10 < v31 - v11)
      {
        v44 = v10;
      }

      if (v10 - v44 < v43)
      {
        v43 = v10 - v44;
      }

      v47 = *v45;
      v46 = *(v45 + 8);
      v56.__r_.__value_.__r.__words[0] = v6;
      v56.__r_.__value_.__l.__size_ = v7;
      v56.__r_.__value_.__r.__words[2] = v48;
      v57 = v10;
      v58 = v11;
      __p.__r_.__value_.__r.__words[0] = v29;
      __p.__r_.__value_.__l.__size_ = v30;
      __p.__r_.__value_.__r.__words[2] = v48 + v44;
      v51 = v43;
      v52 = v31;
      v53 = v6;
      v54 = v7;
      v55 = v11;
      if (v47(v46, &v56, &__p, v29))
      {
        return 1;
      }

LABEL_51:
      v29 += 80;
      --v28;
    }

    while (v28);
  }

  return 0;
}

uint64_t sub_298BF85D8(uint64_t a1)
{
  if (*(a1 + 296))
  {
    sub_298AE1EE0(a1 + 104, sub_298AE21F8, 0);
    *(a1 + 296) = 0;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
  }

  *(a1 + 300) = 0;
  *a1 = 0;
  sub_298AE9670(a1 + 8);
  return a1;
}

int32x2_t sub_298BF866C(uint64_t a1, void *a2)
{
  v4 = 0;
  if (sub_298BF86C4(a1, a2, &v4))
  {
    *v4 = -2;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_298BF86C4(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_4;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_4:
  *a3 = v7;
  return result;
}

uint64_t sub_298BF875C(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 32);
  v5 = *a1;
  if ((*(*a1 + 56) & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(v5 + 16);
  v6 = v5 + 16;
  v7 = v8;
  v9 = *(v6 + 23);
  if (v9 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v6 + 8);
  if (v9 >= 0)
  {
    v11 = v9;
  }

  if (v3 != v11)
  {
    goto LABEL_8;
  }

  v16 = a1;
  if (!v3)
  {
    v14 = 1;
    goto LABEL_26;
  }

  v17 = memcmp(v2, v10, v3);
  a1 = v16;
  if (!v17)
  {
    v14 = 1;
  }

  else
  {
LABEL_8:
    if (v3 == 6)
    {
      if (*v2 != 1163157343 || *(v2 + 2) != 21592)
      {
        return 0;
      }

      v14 = 2;
    }

    else
    {
      if (v3 != 11)
      {
        return 0;
      }

      if (*v2 != 0x455F545845545F5FLL || *(v2 + 3) != 0x434558455F545845)
      {
        return 0;
      }

      v14 = 3;
    }
  }

LABEL_26:
  v18 = a1[v14];
  *v18 = v4;
  *(v18 + 8) = 1;
  return 0;
}

BOOL sub_298BF8884(uint64_t (***a1)(void, void *), uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  if ((*(a4 + 64) & 0x80000400) == 0)
  {
    if (v7 < 0xA)
    {
      return 0;
    }

    if (*v6 != 0x6F63746F6F625F5FLL || *(v6 + 8) != 25956)
    {
      if (v7 < 0xF)
      {
        if (v7 == 10)
        {
          return 0;
        }

        goto LABEL_17;
      }

      if (*v6 != 0x6F5F7878636C5F5FLL || *(v6 + 7) != 0x656469727265766FLL)
      {
LABEL_17:
        if (*v6 != 0x707265746E695F5FLL || *(v6 + 3) != 0x65736F707265746ELL)
        {
          return 0;
        }
      }
    }
  }

  v19 = v4;
  v20 = v5;
  v9 = **a1;
  v8 = (*a1)[1];
  v15[0] = v6;
  v15[1] = v7;
  v10 = *(a3 + 2);
  v16 = *(a3 + 1);
  v17 = v10;
  v18 = *(a3 + 3);
  return (v9(v8, v15) & 1) != 0;
}

uint64_t sub_298BF89A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 40);
  v9 = *(a2 + 56);
  if (v2 == **a1)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 64);
    v6 = *(a2 + 16);
    *v4 = *a2;
    *(v4 + 16) = v6;
    *(v4 + 32) = v2;
    *(v4 + 40) = v8;
    *(v4 + 56) = v9;
    if ((v5 & 1) == 0)
    {
      *(v4 + 64) = 1;
    }
  }

  return *(*(a1 + 8) + 64);
}

BOOL sub_298BF8A04(const char ***a1, const char *a2)
{
  v2 = *a2;
  if (*a2 == 2)
  {
    v3 = a1;
    goto LABEL_13;
  }

  if (v2 == 25)
  {
    v4 = a1;
    v5 = a2;
    v6 = strnlen(a2 + 8, 0x10uLL);
    a1 = v4;
    if (v6 != 6)
    {
      return **a1 && *a1[1] && *a1[2] != 0;
    }

    a2 = v5;
    if (*(v5 + 2) != 1163157343 || *(v5 + 6) != 21592)
    {
      return **a1 && *a1[1] && *a1[2] != 0;
    }

    v3 = v4 + 2;
    goto LABEL_13;
  }

  if (v2 == 38)
  {
    v3 = a1 + 1;
LABEL_13:
    **v3 = a2;
  }

  return **a1 && *a1[1] && *a1[2] != 0;
}

BOOL sub_298BF8AD8(uint64_t a1, uint64_t a2)
{
  if (*a2 == 25 && strnlen((a2 + 8), 0x10uLL) == 10 && *(a2 + 8) == 0x44454B4E494C5F5FLL && *(a2 + 16) == 21577)
  {
    v6 = *(a1 + 8);
    **a1 = *(a2 + 40);
    *v6 = *(a2 + 24);
  }

  return **a1 != 0;
}

uint64_t sub_298BF8B6C(uint64_t a1, uint64_t a2)
{
  if (*a2 != -2147483595)
  {
    return 0;
  }

  v26 = v2;
  v27 = v3;
  v6 = *(a2 + 24);
  v7 = strlen((a2 + v6));
  if (**a1 == 1)
  {
    v8 = sub_298B9CDFC();
    v9 = v8;
    v10 = v8[4];
    if (v8[3] - v10 > 0x20uLL)
    {
      qmemcpy(v10, "fileset_entry_command: cmdsize = ", 33);
      v8[4] += 33;
    }

    else
    {
      sub_298B9BCEC(v8, "fileset_entry_command: cmdsize = ", 0x21uLL);
    }

    sub_298B8FC48(v9, *(a2 + 4), 0, 0, 0);
    v11 = v9[4];
    if ((v9[3] - v11) > 0xA)
    {
      *(v11 + 7) = 540876914;
      *v11 = *", vmaddr = ";
      v9[4] += 11;
    }

    else
    {
      sub_298B9BCEC(v9, ", vmaddr = ", 0xBuLL);
    }

    sub_298ADC8F4(&v25, *(a2 + 8));
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v25;
    }

    else
    {
      v12 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v9, v12, size);
    v14 = v9[4];
    if ((v9[3] - v14) > 0xB)
    {
      *(v14 + 8) = 540876902;
      *v14 = *", fileoff = ";
      v9[4] += 12;
    }

    else
    {
      sub_298B9BCEC(v9, ", fileoff = ", 0xCuLL);
    }

    sub_298ADC8F4(&__p, *(a2 + 16));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = __p.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(v9, p_p, v16);
    v17 = v9[4];
    if (v9[3] - v17 > 0xCuLL)
    {
      qmemcpy(v17, ", entry_id = ", 13);
      v9[4] += 13;
    }

    else
    {
      sub_298B9BCEC(v9, ", entry_id = ", 0xDuLL);
    }

    sub_298B8FC48(v9, *(a2 + 24), 0, 0, 0);
    v18 = v9[4];
    if (v9[3] - v18 > 1uLL)
    {
      *v18 = 10272;
      v23 = v9[3];
      v19 = (v9[4] + 2);
      v9[4] = v19;
      if (v7 <= v23 - v19)
      {
LABEL_29:
        if (v7)
        {
          memcpy(v19, (a2 + v6), v7);
          v19 = (v9[4] + v7);
          v9[4] = v19;
        }

        if (v9[3] - v19 <= 1uLL)
        {
LABEL_32:
          sub_298B9BCEC(v9, ")\n", 2uLL);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_41;
        }

LABEL_40:
        *v19 = 2601;
        v9[4] += 2;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_33:
          if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

LABEL_42:
          operator delete(v25.__r_.__value_.__l.__data_);
          goto LABEL_34;
        }

LABEL_41:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_42;
      }
    }

    else
    {
      sub_298B9BCEC(v9, " (", 2uLL);
      v19 = v9[4];
      if (v7 <= v9[3] - v19)
      {
        goto LABEL_29;
      }
    }

    sub_298B9BCEC(v9, (a2 + v6), v7);
    v19 = v9[4];
    if (v9[3] - v19 <= 1uLL)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

LABEL_34:
  v20 = *(a2 + 16);
  v21 = *(*(a1 + 8) + 8);
  if (v21 < v20)
  {
    v20 = *(*(a1 + 8) + 8);
  }

  (**(a1 + 16))(*(*(a1 + 16) + 8), a2 + v6, v7, **(a1 + 8) + v20, v21 - v20);
  return 0;
}

uint64_t sub_298BF8EDC(void *a1, uint64_t *a2, uint64_t a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v15 = *(a2 + 1);
  v16 = a2[4];
  v4 = *a3;
  v17 = *(a3 + 16);
  v18 = *(a3 + 32);
  v19 = *(a3 + 48);
  if (a2[1] == 10)
  {
    v7 = *v3 == 0x4144544F4F425F5FLL && *(v3 + 8) == 16724;
    v8 = !v7;
    if (!v8 && *(a3 + 8) == 11 && *v4 == 0x6369746174735F5FLL && *(v4 + 3) == 0x66695F6369746174)
    {
      v11 = *a1;
      v12 = *(*a1 + 40);
      *v11 = v3;
      *(v11 + 8) = 10;
      *(v11 + 16) = v15;
      *(v11 + 32) = v16;
      if ((v12 & 1) == 0)
      {
        *(v11 + 40) = 1;
      }

      v13 = a1[1];
      v14 = *(v13 + 64);
      *v13 = v4;
      *(v13 + 8) = 11;
      *(v13 + 16) = v17;
      *(v13 + 32) = v18;
      *(v13 + 48) = v19;
      if ((v14 & 1) == 0)
      {
        *(v13 + 64) = 1;
      }
    }
  }

  result = *(a1[1] + 64);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BF9020(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_298ADC128(a1 + 48);
  v5 = *a2;
  v4 = *(a2 + 8);
  while (v5 != v4)
  {
    v6 = *v5++;
    sub_298BF908C(a1, v6);
  }

  sub_298BF6194(a1);
  return a1;
}

void *sub_298BF908C(void *result, void *a2)
{
  v2 = result[1];
  if (v2 >= result[2])
  {
    v5 = result;
    v4 = sub_298BF90E8(result, a2);
    result = v5;
  }

  else
  {
    v3 = (a2[1] - *a2) >> 3;
    *v2 = *a2;
    v2[1] = v3;
    v2[2] = 0;
    v4 = (v2 + 3);
  }

  result[1] = v4;
  return result;
}

uint64_t sub_298BF90E8(void *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  __p[4] = a1;
  if (v5)
  {
    sub_298AEA980(v5);
  }

  v6 = 24 * v2;
  __p[0] = 0;
  __p[1] = v6;
  v7 = (a2[1] - *a2) >> 3;
  *v6 = *a2;
  *(v6 + 8) = v7;
  *(v6 + 16) = 0;
  __p[2] = (24 * v2 + 24);
  __p[3] = 0;
  sub_298BF91E8(a1, __p);
  result = a1[1];
  if (__p[0])
  {
    v9 = a1[1];
    operator delete(__p[0]);
    return v9;
  }

  return result;
}

uint64_t *sub_298BF91E8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 16) = *(v2 + 2);
      *v5 = v6;
      v5 += 24;
      v2 = (v2 + 24);
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v7 = result[1];
  result[1] = a2[2];
  a2[2] = v7;
  v8 = result[2];
  result[2] = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t sub_298BF925C(uint64_t a1)
{
  if (*(a1 + 344))
  {
    sub_298ADDE08(a1 + 152, sub_298ADE160, 0);
    *(a1 + 344) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
  }

  *(a1 + 348) = 0;
  *(a1 + 48) = 0;
  sub_298AE9670(a1 + 56);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_298BF92FC(uint64_t a1)
{
  result = sub_298ADE660(a1 + 8, *a1 + 8 * (*(*a1 + 192) != 0), *(*a1 + 196), 0);
  v3 = *(*a1 + 192);
  if (v3)
  {

    return sub_298BF9364(a1 + 8, v3);
  }

  return result;
}

uint64_t sub_298BF9364(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8) - 1;
  if (v2 < a2)
  {
    v4 = result;
    do
    {
      result = sub_298ADE5DC(v4, *(*(*v4 + 16 * v2) + 8 * *(*v4 + 16 * v2 + 12)), 0);
      v2 = *(v4 + 8) - 1;
    }

    while (v2 < a2);
  }

  return result;
}

void *sub_298BF93CC(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = sub_298BF942C(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = sub_298BF94C8(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

uint64_t sub_298BF942C(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_4;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_4:
  *a3 = v7;
  return result;
}

void *sub_298BF94C8(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v5 *= 2;
  }

  else if (v5 + ~v4 - *(a1 + 3) > v5 >> 3)
  {
    goto LABEL_3;
  }

  v7 = a1;
  sub_298BF9578(a1, v5);
  v9 = 0;
  sub_298BF942C(v7, a3, &v9);
  a1 = v7;
  a4 = v9;
LABEL_3:
  ++*(a1 + 2);
  if (*a4 != -4096)
  {
    --*(a1 + 3);
  }

  return a4;
}

void *sub_298BF9578(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    sub_298BF9688(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (v10 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v14 = result;
LABEL_13:
      v17 = &result[2 * v10];
      do
      {
        *v14 = -4096;
        v14 += 2;
      }

      while (v14 != v17);
      return result;
    }

    v12 = v11 + 1;
    v13 = (v11 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v14 = &result[2 * v13];
    v15 = result + 2;
    v16 = v13;
    do
    {
      *(v15 - 2) = -4096;
      *v15 = -4096;
      v15 += 4;
      v16 -= 2;
    }

    while (v16);
    if (v12 != v13)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t *sub_298BF9688(uint64_t *result, void **a2, void **a3)
{
  v4 = result;
  result[1] = 0;
  v5 = *(result + 4);
  if (v5)
  {
    v6 = *result;
    v7 = (v5 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v7)
    {
      v10 = *result;
LABEL_6:
      v13 = &v6[2 * v5];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v13);
      goto LABEL_8;
    }

    v8 = v7 + 1;
    v9 = (v7 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v10 = &v6[2 * v9];
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      *(v11 - 2) = -4096;
      *v11 = -4096;
      v11 += 4;
      v12 -= 2;
    }

    while (v12);
    if (v8 != v9)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  if (a2 != a3)
  {
    v14 = a2 + 1;
    do
    {
      if ((*(v14 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v18 = 0;
        sub_298BF942C(v4, v14 - 1, &v18);
        v16 = v18;
        *v18 = *(v14 - 1);
        v17 = *v14;
        *v14 = 0;
        v16[1] = v17;
        ++*(v4 + 2);
        result = sub_298BF979C(v14, 0);
      }

      v15 = v14 + 1;
      v14 += 2;
    }

    while (v15 != a3);
  }

  return result;
}

void *sub_298BF979C(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298BF7EC8(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void *sub_298BF97E8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = **(a2 + 24);
  if ((v4 & 7) == 1)
  {
    v9 = ((v4 >> 33) & 0xF) - 2;
    if (v9 < 0xD && ((0x105Fu >> v9) & 1) != 0)
    {
      v10 = dword_298D1B2F0[v9];
      v11 = *(result + 48);
      result[4] = (v4 >> 3) & 0x3FFFFFFF;
      *(result + 10) = v10;
      if ((v11 & 1) == 0)
      {
        *(result + 48) = 1;
      }

      if ((v4 & 0x18) == 0)
      {
        return result;
      }

      if (*(result + 24) == 1)
      {
        *(result + 24) = 0;
      }
    }

    else
    {
      if (*(result + 24) == 1)
      {
        *(result + 24) = 0;
      }

      if (*(result + 48) != 1)
      {
        goto LABEL_24;
      }
    }

    *(result + 48) = 0;
LABEL_24:
    v7 = *(*a3 + 16);
    v8 = a3;

    return v7(v8);
  }

  if ((v4 & 7) != 0)
  {
    result = (*(*a3 + 32))(a3);
    if (*(v3 + 24) == 1)
    {
      *(v3 + 24) = 0;
    }

    if (*(v3 + 48) == 1)
    {
      *(v3 + 48) = 0;
    }
  }

  else
  {
    v5 = *(result + 24);
    result[1] = (v4 >> 25) & 0x1FFFFFFFFFLL;
    *(result + 16) = (v4 & 0x4000) != 0;
    if (v5 == 1)
    {
      v6 = result + 6;
      if ((result[6] & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = *(result + 48);
      v6 = result + 6;
      *(result + 24) = 1;
      if ((v12 & 1) == 0)
      {
LABEL_5:
        *(result + 24) = 0;
        v7 = *(*a3 + 24);
        v8 = a3;

        return v7(v8);
      }
    }

    result = sub_298C10030(result[7], result[4] << 12, (v4 >> 25 << 27) >> 15, 1 << *(result + 10));
    if (*(v3 + 24) == 1)
    {
      *(v3 + 24) = 0;
    }

    if (*v6 == 1)
    {
      *v6 = 0;
    }
  }

  return result;
}

char *sub_298BF99F0(char *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a4;
  v6 = result;
  v7 = 0;
  v125[8] = *MEMORY[0x29EDCA608];
  v111 = result + 10;
  v112 = result + 24;
  v114 = result + 152;
  v115 = result;
  while (1)
  {
    v8 = *(v6 + 5);
    if (!v8)
    {
      v9 = 0;
      v20 = 79 - v7;
      if (79 - v7 <= 0x30)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v9 = 79 - v8;
    v10 = v6;
    v11 = v8 & 7;
    v12 = (86 - v8) >> 3;
    __dst = 0;
    v124 = 0;
    memcpy(&__dst, &v111[v8 >> 3], (86 - v8 + (v8 & 7)) >> 3);
    v13 = ((2 * v124) << ~v11) | (__dst >> v11);
    v14 = v124 >> v11;
    v15 = (v9 & 0x40) != 0 ? -1 << v9 : (-1 << v9) | (0x7FFFFFFFFFFFFFFFuLL >> ~v9);
    v16 = (v9 & 0x40) != 0 ? 0 : -1 << v9;
    v17 = v13 & ~v16;
    v18 = v14 & ~v15;
    v121 = 0;
    v122 = 0;
    memcpy(&v121, &__src, v12);
    v19 = v122 & v15;
    v6 = v10;
    v119 = v121 & v16 | v17;
    v120 = v19 | v18;
    result = memcpy(&__src, &v119, v12);
    *(v10 + 5) = 0;
    v20 = v9 - v7 + 79;
    if (v20 <= 0x30)
    {
      break;
    }

    if (v9 < 3)
    {
      LOBYTE(v4) = __src;
LABEL_15:
      v21 = v9 ^ 3;
      v22 = *(a2 + 24);
      __dst = 0;
      v124 = 0;
      memcpy(&__dst, (v22 + (v7 >> 3)), ((v7 & 7) - v9 + 10) >> 3);
      v23 = -1 << (v9 ^ 3);
      if (((v9 ^ 3) & 0x40) != 0)
      {
        v23 = 0;
      }

      LOBYTE(__src) = v4 & ~(~v23 << v9) | (((((2 * v124) << ~(v7 & 7)) | (__dst >> (v7 & 7))) & ~v23) << v9);
      goto LABEL_28;
    }

    v22 = *(a2 + 24);
LABEL_29:
    if ((__src & 4) != 0)
    {
      v37 = 21;
    }

    else
    {
      v37 = 49;
    }

    v38 = v37 - v9;
    v39 = v9 >> 3;
    v40 = v9 & 7;
    v41 = v7 >> 3;
    v42 = v7;
    v43 = v7 & 7;
    __dst = 0;
    v124 = 0;
    memcpy(&__dst, (v22 + v41), (v38 + 7 + v43) >> 3);
    v44 = ((2 * v124) << ~v43) | (__dst >> v43);
    v45 = v124 >> v43;
    v46 = -1 << v38;
    if ((v38 & 0x40) != 0)
    {
      v47 = 0;
    }

    else
    {
      v47 = -1 << v38;
    }

    if ((v38 & 0x40) == 0)
    {
      v46 |= 0x7FFFFFFFFFFFFFFFuLL >> ~v38;
    }

    v48 = ~v46;
    v49 = ~v47;
    v50 = v44 & ~v47;
    v51 = v45 & ~v46;
    v121 = 0;
    v122 = 0;
    memcpy(&v121, &__src + v39, (v38 + 7 + v40) >> 3);
    v119 = v121 & ~(v49 << v40) | (v50 << v40);
    v120 = v122 & ~((v48 << v40) | (v49 >> 1 >> ~v40)) | (v51 << v40) | (v50 >> 1 >> ~v40);
    memcpy(&__src + v39, &v119, (v38 + 7 + v40) >> 3);
    v4 = __src;
    if ((__src & 1) == 0)
    {
      goto LABEL_81;
    }

    v52 = 0x3FFFLL;
    if ((__src & 4) == 0)
    {
      v52 = 0x3FFFFFFFFFFLL;
    }

    v53 = v52 & (__src >> 3);
    v54 = 17;
    if ((__src & 4) == 0)
    {
      v54 = 45;
    }

    v55 = (__src >> 13) & 0xF;
    v5 = a4;
    if ((__src & 4) == 0)
    {
      *&v112[8 * v55] = v53;
      v114[v55] = 1;
      v6 = v115;
      v56 = v42;
      goto LABEL_46;
    }

    v6 = v115;
    v56 = v42;
    if (v114[v55] == 1)
    {
      v53 |= *&v112[8 * v55] & 0xFFFFFFFFFFFFC000;
LABEL_46:
      v57 = *a3;
      v58 = *(a3 + 4);
      __dst = v125;
      v124 = 0x800000000;
      v59 = (v57 + 16 * v58);
      if (!v58)
      {
        goto LABEL_52;
      }

      v60 = v58 - 1;
      LODWORD(v61) = v60 & (37 * (v53 >> 25));
      v62 = (v57 + 16 * v61);
      v63 = *v62;
      if (v53 >> 25 != *v62)
      {
        v64 = 1;
        while (v63 != -1)
        {
          v65 = v61 + v64++;
          v61 = v65 & v60;
          v63 = *(v57 + 16 * v61);
          if (v53 >> 25 == v63)
          {
            v62 = (v57 + 16 * v61);
            goto LABEL_53;
          }
        }

LABEL_52:
        v62 = v59;
      }

      if (v62 == v59)
      {
        goto LABEL_68;
      }

      v66 = *(v62[1] + 8 * ((v53 >> 14) & 0x7FF));
      if (!v66)
      {
        goto LABEL_68;
      }

      v67 = *(v66 + 8);
      if (!v67)
      {
        goto LABEL_68;
      }

LABEL_53:
      v68 = v6;
      v69 = 0;
      v70 = (v4 >> v54) & 0xF;
      v71 = *v66;
      v72 = 8 * v67;
      do
      {
        v73 = *v71;
        if (v69 >= HIDWORD(v124))
        {
          sub_298B90A44(&__dst, v125, v69 + 1, 8);
          v69 = v124;
        }

        *(__dst + 8 * v69) = v73 + (v53 & 0x3FFF);
        v69 = v124 + 1;
        LODWORD(v124) = v124 + 1;
        ++v71;
        v72 -= 8;
      }

      while (v72);
      v5 = a4;
      v6 = v68;
      if (v69)
      {
        v74 = 0;
        v75 = 13;
        if ((*(v68 + 1) - 1) < 2)
        {
          v75 = 14;
        }

        v76 = vdup_n_s32(v75);
        v77 = vdupq_n_s64(v75);
        v78 = __dst;
        v79 = vsub_s32(0x4000000040, vmin_u32(vsub_s32(0x2C00000030, v76), 0x400000004));
        v80.i64[0] = v79.u32[0];
        v80.i64[1] = v79.u32[1];
        v81.i64[0] = -1;
        v81.i64[1] = -1;
        v82 = vshlq_u64(v81, vnegq_s64(v80));
        v83 = vaddq_s64(v77, xmmword_298D1B350);
        v84 = vsub_s32(0x4000000040, vmin_u32(vsub_s32(0x2400000028, v76), 0x400000004));
        v80.i64[0] = v84.u32[0];
        v80.i64[1] = v84.u32[1];
        v85 = vshlq_u64(v81, vnegq_s64(v80));
        v86 = vaddq_s64(v77, xmmword_298D1B360);
        v87 = vsub_s32(0x4000000040, vmin_u32(vsub_s32(0x1C00000020, v76), 0x400000004));
        v80.i64[0] = v87.u32[0];
        v80.i64[1] = v87.u32[1];
        v88 = vshlq_u64(v81, vnegq_s64(v80));
        v89 = vaddq_s64(v77, xmmword_298D1B370);
        v90 = vsub_s32(0x4000000040, vmin_u32(vsub_s32(0x1400000018, v76), 0x400000004));
        v80.i64[0] = v90.u32[0];
        v80.i64[1] = v90.u32[1];
        v91 = vshlq_u64(v81, vnegq_s64(v80));
        v92 = vaddq_s64(v77, xmmword_298D1B380);
        v93 = vsub_s32(0x4000000040, vmin_u32(vsub_s32(0xC00000010, v76), 0x400000004));
        v80.i64[0] = v93.u32[0];
        v80.i64[1] = v93.u32[1];
        v94 = vshlq_u64(v81, vnegq_s64(v80)).u64[0];
        v95 = 8 * v69;
        v96 = vnegq_s64(vaddq_s64(v77, xmmword_298D1A150));
        v97 = vnegq_s64(v83);
        v98 = vnegq_s64(v86);
        v99 = vnegq_s64(v89);
        v100 = vnegq_s64(v92);
        while (1)
        {
          v101 = *(__dst + v74);
          v92.i64[0] = v101;
          v102 = vdupq_n_s64(v101);
          v103 = veorq_s8(veorq_s8(vandq_s8(v91, vshlq_u64(v102, v99)), vandq_s8(v88, vshlq_u64(v102, v98))), veorq_s8(vandq_s8(v85, vshlq_u64(v102, v97)), vandq_s8(v82, vshlq_u64(v102, v96))));
          v92 = vshlq_u64(v92, v100);
          if (veor_s8(veor_s8(vand_s8(v94, *v92.i8), *v103.i8), *&vextq_s8(v103, v103, 8uLL)) == v70)
          {
            break;
          }

          v74 += 8;
          if (v95 == v74)
          {
            (*(*a4 + 48))(a4);
            v78 = __dst;
            v101 = *(__dst + 8 * v124 - 8);
            v104 = 1;
            if (__dst != v125)
            {
              goto LABEL_69;
            }

            goto LABEL_70;
          }
        }

        v104 = 1;
        if (__dst != v125)
        {
          goto LABEL_69;
        }
      }

      else
      {
LABEL_68:
        (*(*v5 + 56))(v5);
        v104 = 0;
        v101 = 0;
        v78 = __dst;
        if (__dst != v125)
        {
LABEL_69:
          free(v78);
        }
      }

LABEL_70:
      v105 = (v101 >> 11) & 0x3FFFFFFFFELL;
      if (!v104)
      {
        v105 = 0;
      }

      LOWORD(v124) = (v53 >> 38) & 0xF | (16 * v53);
      __dst = v105 & 0x3FFFFFFFFELL | (v4 >> 1) & 1 | ((v53 >> 12) << 38);
      result = (*(*v5 + 16))(v5, a2, &__dst);
      v7 = v38 + v56;
      if (v6[8] == 1)
      {
        goto LABEL_3;
      }
    }

    else
    {
      result = (*(*a4 + 40))(a4);
      v7 = v38 + v42;
      if (v115[8] == 1)
      {
LABEL_3:
        if (v7)
        {
          goto LABEL_90;
        }
      }
    }
  }

  LODWORD(v8) = v9;
  v5 = a4;
LABEL_19:
  if (v20 < 0x15)
  {
    if (v20)
    {
      *(&__src + (v8 >> 3)) = (((*(*(a2 + 24) + (v7 >> 3)) >> (v7 & 7)) & 1) << (v8 & 7)) | *(&__src + (v8 >> 3)) & ~(1 << (v8 & 7));
      if ((__src & 1) == 0)
      {
        v4 = 0;
        goto LABEL_82;
      }
    }

    goto LABEL_90;
  }

  v24 = 3 - v8;
  v22 = *(a2 + 24);
  v25 = v8 >> 3;
  v26 = v8 & 7;
  v27 = v7;
  v28 = 10 - v8;
  v29 = (v26 + v28) >> 3;
  __dst = 0;
  v124 = 0;
  memcpy(&__dst, (v22 + (v7 >> 3)), (v28 + (v7 & 7)) >> 3);
  v30 = v124 >> (v7 & 7);
  v31 = -1 << v24;
  if ((v24 & 0x40) != 0)
  {
    v32 = 0;
  }

  else
  {
    v32 = -1 << v24;
  }

  if ((v24 & 0x40) == 0)
  {
    v31 |= 0x7FFFFFFFFFFFFFFFuLL >> ~v24;
  }

  v33 = ~v31;
  v34 = ~v32;
  v35 = (((2 * v124) << ~(v7 & 7)) | (__dst >> (v7 & 7))) & ~v32;
  v36 = v30 & ~v31;
  v121 = 0;
  v122 = 0;
  memcpy(&v121, &__src + v25, v29);
  v119 = v121 & ~(v34 << v26) | (v35 << v26);
  v120 = v122 & ~((v33 << v26) | (v34 >> 1 >> ~v26)) | (v36 << v26) | (v35 >> 1 >> ~v26);
  result = memcpy(&__src + v25, &v119, v29);
  if (__src)
  {
    v6 = v115;
    if ((__src & 4) != 0)
    {
      v21 = v24;
      v7 = v27;
LABEL_28:
      v7 += v21;
      v9 = 3;
      goto LABEL_29;
    }

    v7 = v27;
LABEL_90:
    if ((v6[8] & 1) == 0)
    {
      if (v7 > 0x4E)
      {
        *(v6 + 5) = 0;
      }

      else
      {
        *(v6 + 5) = v7;
        v108 = *(a2 + 24);
        v109 = *v108;
        *(v111 + 4) = *(v108 + 4);
        *v111 = v109;
      }
    }

    goto LABEL_94;
  }

  v4 = 0;
LABEL_81:
  v6 = v115;
  v5 = a4;
LABEL_82:
  result = (*(*v5 + 24))(v5);
  *(v6 + 5) = 0;
  v106 = 0x3FFFLL;
  if ((v4 & 4) == 0)
  {
    v106 = 0x3FFFFFFFFFFLL;
  }

  if ((v106 & (v4 >> 3)) != 0)
  {
    goto LABEL_88;
  }

  v107 = 1966080;
  if ((v4 & 4) == 0)
  {
    v107 = 0x1E00000000000;
  }

  if ((v107 & v4) != 0)
  {
LABEL_88:
    result = (*(*v5 + 32))(v5);
  }

LABEL_94:
  v110 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BFA458(uint64_t a1, int a2, signed int a3, char a4, char a5, char a6)
{
  *a1 = a3;
  *(a1 + 1) = a4;
  *(a1 + 2) = a5;
  *(a1 + 3) = a6;
  v8 = sub_298C36B04(a2, a3);
  if ((v8 & 0x100000000) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 4) = v9;
  *(a1 + 8) = (v8 & 0x100000000) == 0;
  v10 = v9 == 11;
  *(a1 + 9) = v9 == 11;
  *(a1 + 10) = v9 == 6;
  *(a1 + 11) = (v9 < 0x14) & (0xBBF80u >> v9);
  *(a1 + 12) = v9 - 5 < 2;
  if (v9 == 6)
  {
    v10 = 1;
  }

  *(a1 + 13) = v10 | a6;
  return a1;
}

uint64_t sub_298BFA500(_BYTE *a1)
{
  if (a1[13] == 1 && (a1[10] & 1) == 0)
  {
    if (a1[1] == 1)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    if (a1[1])
    {
      return v2;
    }

    else
    {
      return 3;
    }
  }

  else if (a1[1] >= 2u)
  {
    return 2;
  }

  else
  {
    return a1[1];
  }
}

uint64_t sub_298BFA54C(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  if (a3 < 0xA)
  {
    return 0;
  }

  v6 = *a2 == 0x203A6370203E2023 && *(a2 + 8) == 30768;
  if (v6)
  {
    v12 = a3 - 10;
    if (a3 == 10)
    {
      v39 = 0;
      v34 = 0;
      *a4 = 0;
      v40 = 1;
LABEL_165:
      v23 = 0;
      v38 = v12;
    }

    else
    {
      v13 = 0;
      v14 = (a2 + 10);
      v15 = (a2 + a3);
      v16 = (a2 + 10);
      v17 = a3 - 10;
      while (*v16 >= 48)
      {
        v18 = *v16;
        if (v18 >= 0x3A)
        {
          if (v18 < 0x61)
          {
            if (v18 - 65 > 0x19)
            {
              break;
            }

            v19 = -55;
          }

          else
          {
            if (v18 >= 0x7B)
            {
              break;
            }

            v19 = -87;
          }
        }

        else
        {
          v19 = -48;
        }

        v20 = v19 + v18;
        if (v20 > 0xF)
        {
          break;
        }

        v21 = v20 | (16 * v13);
        if (v13 >> 60)
        {
          v22 = 1;
          v23 = v21 >> 1;
          v24 = a3 - 12;
          if (v12 < 2)
          {
            goto LABEL_46;
          }

LABEL_44:
          if (*v14 == 23328)
          {
            v14 += 2;
            v12 = v24;
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        ++v16;
        v13 = v21;
        if (!--v17)
        {
          goto LABEL_40;
        }
      }

      v21 = v13;
      v15 = v16;
LABEL_40:
      if (v12 == v17)
      {
        v22 = 1;
      }

      else
      {
        v12 = v17;
        v14 = v15;
        v22 = 0;
      }

      v23 = v21 >> 1;
      v24 = v12 - 2;
      if (v12 >= 2)
      {
        goto LABEL_44;
      }

LABEL_46:
      if (v12)
      {
LABEL_47:
        v25 = 0;
        v26 = &v14[v12];
        v27 = v14;
        v28 = v12;
        while (*v27 >= 48)
        {
          v29 = *v27;
          if (v29 >= 0x3A)
          {
            if (v29 < 0x61)
            {
              if (v29 - 65 > 0x19)
              {
                break;
              }

              v30 = -55;
            }

            else
            {
              if (v29 >= 0x7B)
              {
                break;
              }

              v30 = -87;
            }
          }

          else
          {
            v30 = -48;
          }

          v31 = v30 + v29;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v25 + v31;
          if (v25 > v32 / 0xA)
          {
            v34 = 0;
            v35 = v12 - 3;
            if (v12 < 3)
            {
              goto LABEL_71;
            }

            goto LABEL_67;
          }

          ++v27;
          v25 = v32;
          if (!--v28)
          {
            goto LABEL_61;
          }
        }

        v32 = v25;
        v26 = v27;
LABEL_61:
        v33 = 0;
        if (v32 < 0x100000000)
        {
          v33 = v32;
        }

        if (v12 == v28)
        {
          v34 = 0;
        }

        else
        {
          v14 = v26;
          v12 = v28;
          v34 = v33;
        }

        v35 = v12 - 3;
        if (v12 < 3)
        {
          goto LABEL_71;
        }

LABEL_67:
        v36 = *v14 ^ 0x332F | v14[2] ^ 0x5D;
        v6 = v36 == 0;
        v37 = v36 != 0;
        if (v6)
        {
          v12 = v35;
        }

        if (v12 < 9)
        {
          goto LABEL_71;
        }

        v64 = 3;
        if (v37)
        {
          v64 = 0;
        }

        v65 = &v14[v64];
        v66 = *v65;
        v67 = v65[8];
        LOBYTE(v12) = v66 == 0x72626F72657A5B20 && v67 == 93;
        *a4 = 0;
        v39 = 16 * v34;
        v40 = 16 * v34 == 0;
        v38 = v12;
        if (v22)
        {
          goto LABEL_165;
        }

        goto LABEL_166;
      }

      v34 = 0;
LABEL_71:
      LOBYTE(v12) = 0;
      v38 = 0;
      *a4 = 0;
      v39 = 16 * v34;
      v40 = 16 * v34 == 0;
      if (v22)
      {
        goto LABEL_165;
      }
    }

LABEL_166:
    v77 = (0xFFFFFFFFFFFFFFFFLL >> -v39) & v23;
    if (v40)
    {
      v77 = 0;
    }

    *a5 = v77;
    *(a4 + 8) = v38;
    v76 = v34;
    goto LABEL_186;
  }

  if (*a2 == 0x203A7262203E2023 && *(a2 + 8) == 25136)
  {
    v41 = a3 - 10;
    if (a3 == 10)
    {
      *a4 = 1;
      *(a4 + 8) = 0;
LABEL_188:
      LOWORD(v50) = 0;
    }

    else
    {
      v42 = 0;
      v43 = (a2 + 10);
      v44 = (a2 + a3);
      v45 = (a2 + 10);
      v46 = a3 - 10;
      while (*v45 >= 48)
      {
        v47 = *v45;
        if (v47 >= 0x3A)
        {
          if (v47 < 0x61)
          {
            if (v47 - 65 > 0x19)
            {
              break;
            }

            v48 = -55;
          }

          else
          {
            if (v47 >= 0x7B)
            {
              break;
            }

            v48 = -87;
          }
        }

        else
        {
          v48 = -48;
        }

        v49 = v48 + v47;
        if (v49 > 1)
        {
          break;
        }

        v50 = v49 | (2 * v42);
        if (v42 < 0)
        {
          v55 = 1;
          v56 = a3 - 14;
          if (v41 < 4)
          {
            goto LABEL_114;
          }

LABEL_112:
          if (*v43 == 791685152)
          {
            ++v43;
            v41 = v56;
            goto LABEL_114;
          }

          goto LABEL_115;
        }

        ++v45;
        v42 = v50;
        if (!--v46)
        {
          goto LABEL_108;
        }
      }

      LOWORD(v50) = v42;
      v44 = v45;
LABEL_108:
      if (v41 == v46)
      {
        v55 = 1;
      }

      else
      {
        v41 = v46;
        v43 = v44;
        v55 = 0;
      }

      v56 = v41 - 4;
      if (v41 >= 4)
      {
        goto LABEL_112;
      }

LABEL_114:
      if (!v41)
      {
LABEL_130:
        *a4 = 1;
        *(a4 + 8) = 0;
        if (v55)
        {
          goto LABEL_188;
        }

        goto LABEL_189;
      }

LABEL_115:
      v57 = 0;
      v58 = v41;
      while (*v43 >= 48)
      {
        v59 = *v43;
        if (v59 >= 0x3A)
        {
          if (v59 < 0x61)
          {
            if (v59 - 65 > 0x19)
            {
              break;
            }

            v60 = -55;
          }

          else
          {
            if (v59 >= 0x7B)
            {
              break;
            }

            v60 = -87;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v60 + v59;
        if (v61 > 9)
        {
          break;
        }

        v62 = 10 * v57 + v61;
        if (v57 > v62 / 0xA)
        {
          goto LABEL_130;
        }

        v43 = (v43 + 1);
        v57 = v62;
        if (!--v58)
        {
          goto LABEL_129;
        }
      }

      v62 = v57;
LABEL_129:
      if (v41 == v58)
      {
        goto LABEL_130;
      }

      v63 = 0;
      if (v62 < 0x100000000)
      {
        v63 = v62;
      }

      *a4 = 1;
      *(a4 + 8) = v63;
      if (v55)
      {
        goto LABEL_188;
      }
    }

LABEL_189:
    *(a4 + 10) = v50;
    return 1;
  }

  v8 = a3 - 10;
  if (a3 == 10)
  {
    if (*a2 != 0x72737073203E2023 || *(a2 + 8) != 8250)
    {
      if (*a2 != 0x68637261203E2023 || *(a2 + 8) != 8250)
      {
        if (*a2 != 0x756D7063203E2023 || *(a2 + 8) != 8250)
        {
          return 0;
        }

        goto LABEL_351;
      }

      goto LABEL_212;
    }

    goto LABEL_185;
  }

  if (*a2 == 0x3A726C65203E2023 && *(a2 + 3) == 0x7830203A726C6520)
  {
    if (a3 != 11)
    {
      v69 = 0;
      v70 = (a2 + 11);
      v71 = a3 - 11;
      do
      {
        if (*v70 < 48)
        {
          break;
        }

        v72 = *v70;
        if (v72 >= 0x3A)
        {
          if (v72 < 0x61)
          {
            if (v72 - 65 > 0x19)
            {
              break;
            }

            v73 = -55;
          }

          else
          {
            if (v72 >= 0x7B)
            {
              break;
            }

            v73 = -87;
          }
        }

        else
        {
          v73 = -48;
        }

        v74 = v73 + v72;
        if (v74 > 0xF)
        {
          break;
        }

        if (v69 >> 60)
        {
          goto LABEL_162;
        }

        v69 = v74 | (16 * v69);
        ++v70;
        --v71;
      }

      while (v71);
      if (a3 - 11 != v71)
      {
        *a5 = v69;
      }
    }

LABEL_162:
    v75 = 7;
    goto LABEL_163;
  }

  if (*a2 == 0x72737073203E2023 && *(a2 + 8) == 8250)
  {
    v78 = 0;
    v79 = (a2 + 10);
    v80 = a3 - 10;
    while (*v79 >= 48)
    {
      v81 = *v79;
      if (v81 >= 0x3A)
      {
        if (v81 < 0x61)
        {
          if (v81 - 65 > 0x19)
          {
            break;
          }

          v82 = -55;
        }

        else
        {
          if (v81 >= 0x7B)
          {
            break;
          }

          v82 = -87;
        }
      }

      else
      {
        v82 = -48;
      }

      v83 = v82 + v81;
      if (v83 > 9)
      {
        break;
      }

      v84 = 10 * v78 + v83;
      if (v78 > v84 / 0xA)
      {
        goto LABEL_185;
      }

      ++v79;
      v78 = v84;
      if (!--v80)
      {
        goto LABEL_183;
      }
    }

    v84 = v78;
LABEL_183:
    if (v8 != v80)
    {
      *a5 = v84;
    }

LABEL_185:
    *a4 = 6;
    v76 = 2;
    goto LABEL_186;
  }

  if (a3 >= 0xE && *a2 == 0x69646572203E2023 && *(a2 + 6) == 0x203A746365726964)
  {
    v125 = a3 - 14;
    if (a3 == 14)
    {
      v182 = 0;
      v135 = 0;
LABEL_532:
      v192 = 0;
      v199 = 0;
    }

    else
    {
      v126 = 0;
      v127 = (a2 + 14);
      v128 = (a2 + a3);
      v129 = (a2 + 14);
      v130 = a3 - 14;
      while (*v129 >= 48)
      {
        v131 = *v129;
        if (v131 >= 0x3A)
        {
          if (v131 < 0x61)
          {
            if (v131 - 65 > 0x19)
            {
              break;
            }

            v132 = -55;
          }

          else
          {
            if (v131 >= 0x7B)
            {
              break;
            }

            v132 = -87;
          }
        }

        else
        {
          v132 = -48;
        }

        v133 = v132 + v131;
        if (v133 > 9)
        {
          break;
        }

        v134 = 10 * v126 + v133;
        if (v126 > v134 / 0xA)
        {
          goto LABEL_323;
        }

        ++v129;
        v126 = v134;
        if (!--v130)
        {
          goto LABEL_322;
        }
      }

      v134 = v126;
      v128 = v129;
LABEL_322:
      if (v125 == v130)
      {
LABEL_323:
        v135 = 0;
        v136 = a3 - 20;
        if (v125 < 6)
        {
          goto LABEL_437;
        }

        goto LABEL_431;
      }

      if (v134 >= 0x100)
      {
        v135 = 0;
      }

      else
      {
        v135 = v134;
      }

      v127 = v128;
      v125 = v130;
      v172 = v130 >= 6;
      v136 = v130 - 6;
      if (!v172)
      {
        goto LABEL_437;
      }

LABEL_431:
      if (*v127 != 1818581792 || *(v127 + 2) != 8250)
      {
        goto LABEL_438;
      }

      v127 += 6;
      v125 = v136;
LABEL_437:
      if (!v125)
      {
        v182 = 0;
        goto LABEL_532;
      }

LABEL_438:
      v174 = 0;
      v175 = &v127[v125];
      v176 = v127;
      v177 = v125;
      while (*v176 >= 48)
      {
        v178 = *v176;
        if (v178 >= 0x3A)
        {
          if (v178 < 0x61)
          {
            if (v178 - 65 > 0x19)
            {
              break;
            }

            v179 = -55;
          }

          else
          {
            if (v178 >= 0x7B)
            {
              break;
            }

            v179 = -87;
          }
        }

        else
        {
          v179 = -48;
        }

        v180 = v179 + v178;
        if (v180 > 9)
        {
          break;
        }

        v181 = 10 * v174 + v180;
        if (v174 > v181 / 0xA)
        {
          goto LABEL_453;
        }

        ++v176;
        v174 = v181;
        if (!--v177)
        {
          goto LABEL_452;
        }
      }

      v181 = v174;
      v175 = v176;
LABEL_452:
      if (v125 == v177)
      {
LABEL_453:
        v182 = 0;
        v183 = v125 - 4;
        if (v125 < 4)
        {
          goto LABEL_462;
        }

        goto LABEL_460;
      }

      if (v181 >= 0x100)
      {
        v182 = 0;
      }

      else
      {
        v182 = v181;
      }

      v127 = v175;
      v125 = v177;
      v172 = v177 >= 4;
      v183 = v177 - 4;
      if (!v172)
      {
        goto LABEL_462;
      }

LABEL_460:
      if (*v127 != 540945696)
      {
        goto LABEL_463;
      }

      v127 += 4;
      v125 = v183;
LABEL_462:
      if (!v125)
      {
        goto LABEL_532;
      }

LABEL_463:
      v184 = 0;
      v185 = &v127[v125];
      v186 = v127;
      v187 = v125;
      while (*v186 >= 48)
      {
        v188 = *v186;
        if (v188 >= 0x3A)
        {
          if (v188 < 0x61)
          {
            if (v188 - 65 > 0x19)
            {
              break;
            }

            v189 = -55;
          }

          else
          {
            if (v188 >= 0x7B)
            {
              break;
            }

            v189 = -87;
          }
        }

        else
        {
          v189 = -48;
        }

        v190 = v189 + v188;
        if (v190 > 9)
        {
          break;
        }

        v191 = 10 * v184 + v190;
        if (v184 > v191 / 0xA)
        {
          goto LABEL_478;
        }

        ++v186;
        v184 = v191;
        if (!--v187)
        {
          goto LABEL_477;
        }
      }

      v191 = v184;
      v185 = v186;
LABEL_477:
      if (v125 == v187)
      {
LABEL_478:
        v192 = 0;
        v193 = v125 - 8;
        if (v125 < 8)
        {
          goto LABEL_487;
        }

        goto LABEL_485;
      }

      if (v191 >= 0x100)
      {
        v192 = 0;
      }

      else
      {
        v192 = v191;
      }

      v127 = v185;
      v125 = v187;
      v172 = v187 >= 8;
      v193 = v187 - 8;
      if (!v172)
      {
        goto LABEL_487;
      }

LABEL_485:
      if (*v127 != 0x203A667867202C5DLL)
      {
        goto LABEL_488;
      }

      v127 += 8;
      v125 = v193;
LABEL_487:
      if (!v125)
      {
        v199 = 0;
        goto LABEL_503;
      }

LABEL_488:
      v194 = 0;
      v195 = v125;
      while (1)
      {
        if (*v127 < 48)
        {
LABEL_501:
          v199 = v194;
LABEL_502:
          LOBYTE(v125) = v125 != v195;
          goto LABEL_503;
        }

        v196 = *v127;
        if (v196 >= 0x3A)
        {
          if (v196 < 0x61)
          {
            if (v196 - 65 > 0x19)
            {
              goto LABEL_501;
            }

            v197 = -55;
          }

          else
          {
            if (v196 >= 0x7B)
            {
              goto LABEL_501;
            }

            v197 = -87;
          }
        }

        else
        {
          v197 = -48;
        }

        v198 = v197 + v196;
        if (v198 > 9)
        {
          goto LABEL_501;
        }

        v199 = 10 * v194 + v198;
        if (v194 > v199 / 0xA)
        {
          break;
        }

        ++v127;
        v194 = v199;
        if (!--v195)
        {
          goto LABEL_502;
        }
      }

      LOBYTE(v125) = 0;
    }

LABEL_503:
    v200 = 0;
    if (v199 < 0x100)
    {
      v200 = v199;
    }

    *a4 = 5;
    if (v200)
    {
      v201 = v125;
    }

    else
    {
      v201 = 0;
    }

    v203 = sub_298C36B04(a1, v135);
    if ((v203 & 0x100000000) != 0)
    {
      v204 = v203;
    }

    else
    {
      v204 = 0;
    }

    v205 = v204 == 11;
    *(a4 + 8) = v135;
    *(a4 + 9) = v192;
    *(a4 + 10) = v182;
    v206 = v204 - 5 < 2;
    v6 = v204 == 6;
    v207 = v204 == 6;
    *(a4 + 11) = v201;
    *(a4 + 12) = v204;
    v208 = (v204 < 0x14) & (0xBBF80u >> v204);
    *(a4 + 16) = (v203 & 0x100000000) == 0;
    *(a4 + 17) = v205;
    v209 = v6 || v205;
    *(a4 + 18) = v207;
    *(a4 + 19) = v208;
    *(a4 + 20) = v206;
    *(a4 + 21) = v201 | v209;
    return 1;
  }

  if (*a2 != 0x68637261203E2023 || *(a2 + 8) != 8250)
  {
    if (a3 < 0x10)
    {
      if (a3 != 15)
      {
LABEL_283:
        if (*a2 == 0x756D7063203E2023 && *(a2 + 8) == 8250)
        {
          v137 = (a2 + 10);
          if (v8 >= 3 && *v137 == 25705 && *(a2 + 12) == 61)
          {
            v8 = a3 - 13;
            if (a3 == 13)
            {
LABEL_351:
              v147 = 0;
LABEL_352:
              v148 = 0;
LABEL_353:
              *a4 = 11;
              *(a4 + 8) = v147;
              *(a4 + 16) = v148;
              return 1;
            }

            v137 = (a2 + 13);
          }

          v139 = 0;
          v140 = &v137[v8];
          v141 = v137;
          v142 = v8;
          while (*v141 >= 48)
          {
            v143 = *v141;
            if (v143 >= 0x3A)
            {
              if (v143 < 0x61)
              {
                if (v143 - 65 > 0x19)
                {
                  break;
                }

                v144 = -55;
              }

              else
              {
                if (v143 >= 0x7B)
                {
                  break;
                }

                v144 = -87;
              }
            }

            else
            {
              v144 = -48;
            }

            v145 = v144 + v143;
            if (v145 > 9)
            {
              break;
            }

            v146 = 10 * v139 + v145;
            if (v139 > v146 / 0xA)
            {
              v147 = 0;
              v150 = v8 - 9;
              if (v8 < 9)
              {
                goto LABEL_367;
              }

              goto LABEL_361;
            }

            ++v141;
            v139 = v146;
            if (!--v142)
            {
              goto LABEL_355;
            }
          }

          v146 = v139;
          v140 = v141;
LABEL_355:
          v149 = 0;
          if (v146 < 0x100)
          {
            v149 = v146;
          }

          if (v8 == v142)
          {
            v147 = 0;
          }

          else
          {
            v137 = v140;
            v8 = v142;
            v147 = v149;
          }

          v150 = v8 - 9;
          if (v8 < 9)
          {
            goto LABEL_367;
          }

LABEL_361:
          if (*v137 != 0x303D61746164202CLL || v137[8] != 120)
          {
            goto LABEL_368;
          }

          v137 += 9;
          v8 = v150;
LABEL_367:
          if (!v8)
          {
            goto LABEL_352;
          }

LABEL_368:
          v148 = 0;
          v152 = v8;
          do
          {
            if (*v137 < 48)
            {
              break;
            }

            v153 = *v137;
            if (v153 >= 0x3A)
            {
              if (v153 < 0x61)
              {
                if (v153 - 65 > 0x19)
                {
                  break;
                }

                v154 = -55;
              }

              else
              {
                if (v153 >= 0x7B)
                {
                  break;
                }

                v154 = -87;
              }
            }

            else
            {
              v154 = -48;
            }

            v155 = v154 + v153;
            if (v155 > 0xF)
            {
              break;
            }

            if (v148 >> 60)
            {
              goto LABEL_352;
            }

            v148 = v155 | (16 * v148);
            ++v137;
            --v152;
          }

          while (v152);
          if (v8 != v152)
          {
            goto LABEL_353;
          }

          goto LABEL_352;
        }

        if (a3 < 0xE)
        {
          return 0;
        }

        if (*a2 != 0x6D2D7773203E2023 || *(a2 + 6) != 0x7830203A67736D2DLL)
        {
          return 0;
        }

        if (a3 == 14)
        {
          goto LABEL_534;
        }

        v119 = 0;
        v120 = (a2 + 14);
        v121 = a3 - 14;
        do
        {
          if (*v120 < 48)
          {
            break;
          }

          v122 = *v120;
          if (v122 >= 0x3A)
          {
            if (v122 < 0x61)
            {
              if (v122 - 65 > 0x19)
              {
                break;
              }

              v123 = -55;
            }

            else
            {
              if (v122 >= 0x7B)
              {
                break;
              }

              v123 = -87;
            }
          }

          else
          {
            v123 = -48;
          }

          v124 = v123 + v122;
          if (v124 > 0xF)
          {
            break;
          }

          if (v119 >> 60)
          {
            goto LABEL_534;
          }

          v119 = v124 | (16 * v119);
          ++v120;
          --v121;
        }

        while (v121);
        if (a3 - 14 == v121)
        {
LABEL_534:
          v119 = *a5;
        }

        else
        {
          *a5 = v119;
        }

        *a4 = 12;
LABEL_542:
        *(a4 + 8) = v119;
        return 1;
      }

LABEL_279:
      if (*a2 == 0x6C637963203E2023 && *(a2 + 7) == 0x203A746E632D656CLL)
      {
        v156 = a3 - 15;
        if (a3 != 15)
        {
          v157 = 0;
          v158 = (a2 + 15);
          v159 = a3 - 15;
          while (*v158 >= 48)
          {
            v160 = *v158;
            if (v160 >= 0x3A)
            {
              if (v160 < 0x61)
              {
                if (v160 - 65 > 0x19)
                {
                  break;
                }

                v161 = -55;
              }

              else
              {
                if (v160 >= 0x7B)
                {
                  break;
                }

                v161 = -87;
              }
            }

            else
            {
              v161 = -48;
            }

            v162 = v161 + v160;
            if (v162 > 9)
            {
              break;
            }

            v163 = 10 * v157 + v162;
            if (v157 > v163 / 0xA)
            {
              LODWORD(v156) = 0;
              goto LABEL_421;
            }

            ++v158;
            v157 = v163;
            if (!--v159)
            {
              goto LABEL_416;
            }
          }

          v163 = v157;
LABEL_416:
          v171 = 0;
          if (v163 < 0x100000000)
          {
            v171 = v163;
          }

          if (v156 == v159)
          {
            LODWORD(v156) = 0;
          }

          else
          {
            LODWORD(v156) = v171;
          }
        }

LABEL_421:
        *a4 = 10;
        *(a4 + 8) = v156;
        return 1;
      }

      goto LABEL_283;
    }

    if (*a2 != 0x746E6F63203E2023 || *(a2 + 8) != 0x203A64692D747865)
    {
      if (a3 >= 0x15)
      {
        v114 = *a2 == 0x65726F63203E2023 && *(a2 + 8) == 0x742D6C61636F6C2DLL;
        if (v114 && *(a2 + 13) == 0x203A656D69742D6CLL)
        {
          if (a3 == 21)
          {
            goto LABEL_537;
          }

          v210 = 0;
          v211 = (a2 + 21);
          v212 = a3 - 21;
          while (*v211 >= 48)
          {
            v213 = *v211;
            if (v213 >= 0x3A)
            {
              if (v213 < 0x61)
              {
                if (v213 - 65 > 0x19)
                {
                  break;
                }

                v214 = -55;
              }

              else
              {
                if (v213 >= 0x7B)
                {
                  break;
                }

                v214 = -87;
              }
            }

            else
            {
              v214 = -48;
            }

            v215 = v214 + v213;
            if (v215 > 9)
            {
              break;
            }

            v216 = 10 * v210 + v215;
            if (v210 > v216 / 0xA)
            {
              goto LABEL_537;
            }

            ++v211;
            v210 = v216;
            if (!--v212)
            {
              goto LABEL_536;
            }
          }

          v216 = v210;
LABEL_536:
          if (a3 - 21 == v212)
          {
LABEL_537:
            v216 = *a5;
          }

          else
          {
            *a5 = v216;
          }

          *a4 = 16;
          v119 = vcvtad_u64_f64(v216 * 41.6666667);
          goto LABEL_542;
        }
      }

      goto LABEL_279;
    }

    if (a3 != 16)
    {
      v164 = 0;
      v165 = (a2 + 16);
      v166 = a3 - 16;
      while (*v165 >= 48)
      {
        v167 = *v165;
        if (v167 >= 0x3A)
        {
          if (v167 < 0x61)
          {
            if (v167 - 65 > 0x19)
            {
              break;
            }

            v168 = -55;
          }

          else
          {
            if (v167 >= 0x7B)
            {
              break;
            }

            v168 = -87;
          }
        }

        else
        {
          v168 = -48;
        }

        v169 = v168 + v167;
        if (v169 > 9)
        {
          break;
        }

        v170 = 10 * v164 + v169;
        if (v164 > v170 / 0xA)
        {
          goto LABEL_425;
        }

        ++v165;
        v164 = v170;
        if (!--v166)
        {
          goto LABEL_423;
        }
      }

      v170 = v164;
LABEL_423:
      if (a3 - 16 != v166)
      {
        *a5 = v170;
      }
    }

LABEL_425:
    v75 = 8;
LABEL_163:
    *a4 = v75;
    v76 = 3;
LABEL_186:
    *(a4 + 16) = a5;
    *(a4 + 24) = v76;
    return 1;
  }

  v85 = (a2 + 10);
  if (v8 < 3 || (*v85 == 25705 ? (v86 = *(a2 + 12) == 61) : (v86 = 0), !v86))
  {
LABEL_199:
    v87 = 0;
    v88 = &v85[v8];
    v89 = v85;
    v90 = v8;
    while (1)
    {
      if (*v89 < 48)
      {
LABEL_216:
        v94 = v87;
        v88 = v89;
LABEL_217:
        if (v8 == v90)
        {
          v97 = 1;
        }

        else
        {
          v8 = v90;
          v85 = v88;
          v97 = 0;
        }

        LOBYTE(v95) = 0;
        if (v94 < 0x100)
        {
          LOBYTE(v95) = v94;
        }

        v95 = v95;
        v98 = v8 - 9;
        if (v8 < 9)
        {
          goto LABEL_229;
        }

        goto LABEL_223;
      }

      v91 = *v89;
      if (v91 >= 0x3A)
      {
        if (v91 < 0x61)
        {
          if (v91 - 65 > 0x19)
          {
            goto LABEL_216;
          }

          v92 = -55;
        }

        else
        {
          if (v91 >= 0x7B)
          {
            goto LABEL_216;
          }

          v92 = -87;
        }
      }

      else
      {
        v92 = -48;
      }

      v93 = v92 + v91;
      if (v93 > 9)
      {
        goto LABEL_216;
      }

      v94 = 10 * v87 + v93;
      if (v87 > v94 / 0xA)
      {
        break;
      }

      ++v89;
      v87 = v94;
      if (!--v90)
      {
        goto LABEL_217;
      }
    }

    v97 = 1;
    LOBYTE(v95) = 0;
    if (v94 < 0x100)
    {
      LOBYTE(v95) = v94;
    }

    v95 = v95;
    v98 = v8 - 9;
    if (v8 < 9)
    {
      goto LABEL_229;
    }

LABEL_223:
    if (*v85 != 0x303D61746164202CLL || v85[8] != 120)
    {
      goto LABEL_230;
    }

    v85 += 9;
    v8 = v98;
LABEL_229:
    if (!v8)
    {
      goto LABEL_265;
    }

LABEL_230:
    v100 = 0;
    v101 = &v85[v8];
    v102 = v85;
    v103 = v8;
    while (*v102 >= 48)
    {
      v104 = *v102;
      if (v104 >= 0x3A)
      {
        if (v104 < 0x61)
        {
          if (v104 - 65 > 0x19)
          {
            break;
          }

          v105 = -55;
        }

        else
        {
          if (v104 >= 0x7B)
          {
            break;
          }

          v105 = -87;
        }
      }

      else
      {
        v105 = -48;
      }

      v106 = v105 + v104;
      if (v106 > 0xF)
      {
        break;
      }

      if (v100 >> 60)
      {
        goto LABEL_246;
      }

      v100 = v106 | (16 * v100);
      ++v102;
      if (!--v103)
      {
        goto LABEL_244;
      }
    }

    v101 = v102;
LABEL_244:
    if (v8 != v103)
    {
      *a5 = v100;
      v85 = v101;
      v8 = v103;
    }

LABEL_246:
    if (v8 >= 2)
    {
      if (*v85 != 23328)
      {
        goto LABEL_250;
      }

      v85 += 2;
      v8 -= 2;
    }

    if (!v8)
    {
LABEL_265:
      *a4 = 2;
      if (v97)
      {
        goto LABEL_213;
      }

      goto LABEL_214;
    }

LABEL_250:
    v107 = 0;
    v108 = v8;
    while (*v85 >= 48)
    {
      v109 = *v85;
      if (v109 >= 0x3A)
      {
        if (v109 < 0x61)
        {
          if (v109 - 65 > 0x19)
          {
            break;
          }

          v110 = -55;
        }

        else
        {
          if (v109 >= 0x7B)
          {
            break;
          }

          v110 = -87;
        }
      }

      else
      {
        v110 = -48;
      }

      v111 = v110 + v109;
      if (v111 > 9)
      {
        break;
      }

      v112 = 10 * v107 + v111;
      if (v107 > v112 / 0xA)
      {
        goto LABEL_265;
      }

      ++v85;
      v107 = v112;
      if (!--v108)
      {
        goto LABEL_264;
      }
    }

    v112 = v107;
LABEL_264:
    if (v8 != v108)
    {
      LODWORD(v96) = 0;
      if (v112 < 0x100000000)
      {
        LODWORD(v96) = v112;
      }

      v96 = v96;
      *a4 = 2;
      if (v97)
      {
        v95 = 0;
      }

      goto LABEL_215;
    }

    goto LABEL_265;
  }

  v8 = a3 - 13;
  if (a3 != 13)
  {
    v85 = (a2 + 13);
    goto LABEL_199;
  }

LABEL_212:
  *a4 = 2;
LABEL_213:
  v95 = 0;
LABEL_214:
  v96 = 0;
LABEL_215:
  *(a4 + 8) = v95;
  result = 1;
  *(a4 + 16) = a5;
  *(a4 + 24) = v96;
  return result;
}