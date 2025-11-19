float *sub_2956EDF08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    sub_295701744();
  }

  if (a3 < 0)
  {
    sub_295701718();
  }

  if (a4 < 0)
  {
    sub_2957016EC();
  }

  if (a5 < 0)
  {
    sub_2957016C0();
  }

  if (a6 < 0)
  {
    sub_295701694();
  }

  if (a7 < 0)
  {
    sub_295701668();
  }

  v18 = a2 * a1;
  v19 = (a2 * a1 / 100);
  v20 = a3 * a1;
  v21 = a3 * a1 / 100;
  v110[0] = v19;
  v110[1] = v21;
  v22 = a4 * a1;
  v23 = a4 * a1 / 100;
  v24 = a5 * a1;
  v25 = a5 * a1 / 100;
  v110[2] = v23;
  v110[3] = v25;
  v26 = a6 * a1;
  v27 = a6 * a1 / 100;
  v28 = a7 * a1;
  v29 = a7 * a1 / 100;
  v110[4] = v27;
  v110[5] = v29;
  v30 = v21 + v19 + v23 + v25;
  v31 = v30 + v27 + v29;
  if (v31 <= 0)
  {
    sub_29570163C();
  }

  v32 = v17;
  v107 = v24;
  v108 = v22;
  v105 = v28;
  v106 = v26;
  *(v17 + 2) = v31;
  v33 = v30 + v27 + v29;
  *v17 = malloc_type_malloc(3 * v33, 0x100004033FC2DF1uLL);
  *(v32 + 3) = a8;
  if (v18 < 100)
  {
    v39 = 0;
    v37 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
    v37 = v33;
    do
    {
      if (v35 >= *(v32 + 2))
      {
        sub_295701610();
      }

      ++v35;
      v38 = (*v32 + v36);
      *(v38 - 1) = 0;
      *v38 = v34 / v19;
      v38[1] = -1;
      v36 += 3;
      v34 += 255;
    }

    while (v19 != v35);
    v39 = v18 / 100;
  }

  if (v20 >= 100)
  {
    v40 = 0;
    v41 = v39;
    v42 = v20 / 100;
    v43 = 3 * v39;
    do
    {
      if (v41 >= *(v32 + 2))
      {
        sub_295701610();
      }

      ++v41;
      v44 = *v32 + v43;
      *v44 = -256;
      *(v44 + 2) = ~(v40 / v21);
      v43 += 3;
      v40 += 255;
      --v42;
    }

    while (v42);
    v39 = v41;
  }

  if (v108 >= 100)
  {
    v45 = 0;
    v46 = v39;
    v47 = 3 * v39;
    v48 = v23;
    do
    {
      if (v46 >= *(v32 + 2))
      {
        sub_295701610();
      }

      ++v46;
      v49 = *v32 + v47;
      *v49 = v45 / v23;
      *(v49 + 1) = 255;
      v47 += 3;
      v45 += 255;
      --v48;
    }

    while (v48);
    v39 = v46;
  }

  if (v107 >= 100)
  {
    v50 = 0;
    v51 = v39;
    v52 = 3 * v39;
    v53 = v25;
    do
    {
      if (v51 >= *(v32 + 2))
      {
        sub_295701610();
      }

      ++v51;
      v54 = *v32 + v52;
      *v54 = -1;
      *(v54 + 1) = ~(v50 / v25);
      v52 += 3;
      v50 += 255;
      --v53;
    }

    while (v53);
    v39 = v51;
  }

  if (v106 >= 100)
  {
    v55 = 0;
    v56 = v39;
    v57 = 3 * v39;
    v58 = v27;
    do
    {
      if (v56 >= *(v32 + 2))
      {
        sub_295701610();
      }

      ++v56;
      v59 = *v32 + v57;
      *v59 = 255;
      *(v59 + 2) = v55 / v27;
      v57 += 3;
      v55 += 255;
      --v58;
    }

    while (v58);
    v39 = v56;
  }

  if (v105 >= 100)
  {
    v60 = 0;
    v61 = v39;
    v62 = 3 * v39;
    v63 = v29;
    do
    {
      if (v61 >= *(v32 + 2))
      {
        sub_295701610();
      }

      ++v61;
      v64 = *v32 + v62;
      *v64 = ~(v60 / v29);
      *(v64 + 1) = -256;
      v62 += 3;
      v60 += 255;
      --v63;
    }

    while (v63);
  }

  if (a8 < 0 && v37 != 1)
  {
    v65 = 0;
    LODWORD(v66) = v37 >> 1;
    if (v37 >> 1 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v66;
    }

    v67 = v66 + 2 * v66;
    v68 = 3 * v37 - 3;
    do
    {
      v69 = (*v32 + v65);
      v70 = *v32 + v68;
      v71 = *(v69 + 2);
      v72 = *v69;
      v73 = *(v70 + 2);
      *v69 = *v70;
      *(v69 + 2) = v73;
      *v70 = v72;
      *(v70 + 2) = v71;
      v65 += 3;
      v68 -= 3;
    }

    while (v67 != v65);
  }

  if (a8 >= 0)
  {
    v74 = a8;
  }

  else
  {
    v74 = -a8;
  }

  v75 = v74 - 1;
  LODWORD(v76) = 6 - v74;
  if (a8 < 0)
  {
    v76 = v76;
  }

  else
  {
    v76 = v75;
  }

  if (v76 >= 1)
  {
    v77 = 0;
    v78 = v110;
    do
    {
      v79 = v77;
      v81 = *v78++;
      v80 = v81;
      v77 += v81;
      --v76;
    }

    while (v76);
    if (v77 > 0)
    {
      v82 = *v32;
      v83 = v37 - 1;
      if (v77 != 1)
      {
        v84 = 0;
        v85 = (v82 + 3 * (v77 - 1));
        v86 = v79 + v80 - 2;
        v87 = *v32;
        do
        {
          v88 = *(v87 + 2);
          v89 = *v87;
          v90 = *(v85 + 2);
          *v87 = *v85;
          *(v87 + 2) = v90;
          *v85 = v89;
          *(v85 + 2) = v88;
          v87 = (v87 + 3);
          v85 = (v85 - 3);
          v91 = ++v84 < v86--;
        }

        while (v91);
      }

      if (v77 < v83)
      {
        v92 = (v82 + 3 * v83);
        v93 = (v82 + 3 * v77);
        v94 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v95 = *(v93 + 2);
          v96 = *v93;
          v97 = *(v92 + 2);
          *v93 = *v92;
          *(v93 + 2) = v97;
          *v92 = v96;
          *(v92 + 2) = v95;
          v93 = (v93 + 3);
          v92 = (v92 - 3);
          v91 = ++v77 < v94--;
        }

        while (v91);
      }

      if (v37 != 1)
      {
        v98 = 0;
        v99 = (v82 + 3 * (v37 - 1));
        v100 = v19 + v21 + v23 + v25 + v27 + v29 - 2;
        do
        {
          v101 = *(v82 + 2);
          v102 = *v82;
          v103 = *(v99 + 2);
          *v82 = *v99;
          *(v82 + 2) = v103;
          *v99 = v102;
          *(v99 + 2) = v101;
          v82 = (v82 + 3);
          v99 = (v99 - 3);
          v91 = ++v98 < v100--;
        }

        while (v91);
      }
    }
  }

  v32[4] = a9;
  return v32;
}

void sub_2956EE500(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t sub_2956EE540(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    sub_295701770();
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 != 0.0)
  {
    v9 = v8 / 6.28318531;
    a3 = v9 + a3;
    v10 = 1.0;
    if (a3 < 0.0)
    {
LABEL_9:
      a3 = a3 + v10;
      goto LABEL_10;
    }

    if (a3 > 1.0)
    {
      v10 = -1.0;
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = a3 * (v7 - 1);
  v12 = v11;
  v13 = (v11 + 1) % v7;
  *&v14 = v11;
  v15 = v11 - *&v14;
  LOBYTE(v14) = *(*a1 + 3 * v12 + a2);
  LOBYTE(a6) = *(*a1 + 3 * v13 + a2);
  return (((v15 * (LODWORD(a6) / 255.0)) + ((1.0 - v15) * (v14 / 255.0))) * 255.0);
}

uint64_t sub_2956EE624(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
{
  if (a3 >= 1)
  {
    v13 = a4;
    v14 = result;
    v15 = 0;
    v16 = a6;
    v17 = 1.1755e-38;
    v18 = 3.4028e38;
    v19 = a4;
    v20 = a2;
    do
    {
      v21 = a2;
      v22 = v19;
      if (a2 >= 1)
      {
        do
        {
          *&a10 = *v22;
          if (*v22 < v18)
          {
            v18 = *v22;
          }

          if (*&a10 > v17)
          {
            v17 = *v22;
          }

          v22 = (v22 + a6);
          --v21;
        }

        while (v21);
      }

      ++v15;
      v19 = (v19 + a5);
    }

    while (v15 != a3);
    v23 = 0;
    v24 = v17 - v18;
    v35 = a8;
    v25 = (a7 + 1);
    v36 = a3;
    v37 = a5;
    do
    {
      v26 = v13;
      v27 = v25;
      if (a2 >= 1)
      {
        do
        {
          v28 = fmaxf(fminf((*v26 - v18) / v24, 1.0), 0.0);
          *(v27 - 1) = sub_2956EE540(v14, 0, v28, a10, a11, a12);
          *v27 = sub_2956EE540(v14, 1, v28, v29, v30, v31);
          result = sub_2956EE540(v14, 2, v28, v32, v33, v34);
          v27[1] = result;
          v27[2] = -1;
          v27 += a13;
          v26 = (v26 + v16);
          --v20;
        }

        while (v20);
      }

      ++v23;
      v20 = a2;
      v25 += v35;
      v13 = (v13 + v37);
    }

    while (v23 != v36);
  }

  return result;
}

FILE *sub_2956EEA7C(const char *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"%s", a4, a5, a6, a1);
  v13 = objc_msgSend_stringByDeletingLastPathComponent(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v14, v15, v16, v17, v18);
  v30 = 0;
  DirectoryAtPath_withIntermediateDirectories_attributes_error = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v19, v20, v13, 1, 0, &v30);
  v22 = v30;
  if (DirectoryAtPath_withIntermediateDirectories_attributes_error)
  {
    v23 = fopen(a1, "wb");
  }

  else
  {
    if (qword_2A1388C80 != -1)
    {
      sub_29570179C();
    }

    v24 = qword_2A1388C78;
    if (os_log_type_enabled(qword_2A1388C78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_2956ED000, v24, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", buf, 0x16u);
    }

    v23 = 0;
  }

  return v23;
}

FILE *sub_2956EF080(unsigned int a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  result = sub_2956EEA7C(a5, a2, a3, a4, a5, a6);
  if (result)
  {
    v11 = result;
    v12 = malloc_type_malloc(3 * a1, 0x100004077774924uLL);
    if (v12)
    {
      v13 = v12;
      fprintf(v11, "P6 %u %u 255\n", a1, v8);
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v15 = a1;
          v16 = v13;
          for (j = v6; v15; --v15)
          {
            *v16 = *j;
            v16[1] = j[1];
            v16[2] = j[2];
            j += 4;
            v16 += 3;
          }

          fwrite(v13, 3uLL, a1, v11);
          v6 += v7;
        }
      }

      free(v13);
    }

    return fclose(v11);
  }

  return result;
}

uint64_t sub_2956F33D8()
{
  qword_2A1388C78 = os_log_create("com.apple.cameracapture", "legacyLog");

  return MEMORY[0x2A1C71028]();
}

uint64_t sub_2956F342C(uint64_t result, unsigned int a2, _DWORD *a3, _DWORD *a4, unsigned int a5, unsigned int a6)
{
  if ((a5 | result | a2))
  {
    v6 = 1;
  }

  else
  {
    v6 = 1;
    v7 = result;
    do
    {
      v8 = a5;
      a5 >>= 1;
      result = v7 >> 1;
      v9 = a2;
      a2 >>= 1;
      v6 *= 2;
      if ((v8 & 2) != 0)
      {
        break;
      }

      if ((v7 & 2) != 0)
      {
        break;
      }

      v7 >>= 1;
    }

    while ((v9 & 2) == 0);
  }

  if ((a6 | result))
  {
    v10 = 1;
  }

  else
  {
    v10 = 1;
    v11 = a6;
    v12 = result;
    do
    {
      a6 = v11 >> 1;
      result = v12 >> 1;
      v10 *= 2;
      v13 = v11 | v12;
      v11 >>= 1;
      v12 >>= 1;
    }

    while ((v13 & 2) == 0);
  }

  if (a2 >= result)
  {
    v14 = result;
  }

  else
  {
    v14 = a2;
  }

  if (v14)
  {
    if (v14 + 1 > 2)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = 1;
    v17 = 1;
    v18 = 1;
    do
    {
      if (!(a5 % v16))
      {
        v19 = 1;
        for (i = a6; ; i /= 7u)
        {
          while (1)
          {
            while (1)
            {
              while ((i & 1) == 0 && 2 * v16 * v19 <= result)
              {
                i >>= 1;
                v19 *= 2;
              }

              if (i != 3 * (i / 3) || 3 * v16 * v19 > result)
              {
                break;
              }

              v19 *= 3;
              i /= 3u;
            }

            if (i != 5 * (i / 5) || 5 * v16 * v19 > result)
            {
              break;
            }

            v19 *= 5;
            i /= 5u;
          }

          if (i % 7 || 7 * v16 * v19 > result)
          {
            break;
          }

          v19 *= 7;
        }

        v24 = v17 * v18;
        if (v19 * v16 >= v17 * v18)
        {
          v18 = v16;
        }

        if (v19 * v16 >= v24)
        {
          v17 = v19;
        }
      }

      ++v16;
    }

    while (v16 != v15);
  }

  else
  {
    v18 = 1;
    v17 = 1;
  }

  *a3 = v18 * v6;
  *a4 = v17 * v10;
  return result;
}

double *sub_2956F3618(uint64_t a1, uint64_t a2, int a3, double *a4, double *a5, uint64_t a6, double *a7, uint64_t a8)
{
  if (!a1)
  {
    return sub_295701D40();
  }

  if (!a2)
  {
    return sub_295701CE8();
  }

  if (a3 <= 0)
  {
    return sub_295701C90();
  }

  if (!a4)
  {
    return sub_295701C38();
  }

  if (!a5)
  {
    return sub_295701BE0();
  }

  if (!a6)
  {
    return sub_295701B88();
  }

  if (!a7)
  {
    return sub_295701B30();
  }

  if (!a8)
  {
    return sub_295701AD8();
  }

  v196 = 0.0;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v181 = 0u;
  v182 = 0u;
  v180 = 0u;
  v15 = *(a6 + 144);
  v178[8] = *(a6 + 128);
  v178[9] = v15;
  v178[10] = *(a6 + 160);
  v179 = *(a6 + 176);
  v16 = *(a6 + 80);
  v178[4] = *(a6 + 64);
  v178[5] = v16;
  v17 = *(a6 + 112);
  v178[6] = *(a6 + 96);
  v178[7] = v17;
  v18 = *(a6 + 16);
  v177 = 0u;
  v178[0] = *a6;
  v19 = *(a6 + 32);
  v20 = *(a6 + 48);
  v178[1] = v18;
  v178[2] = v19;
  v178[3] = v20;
  result = sub_2956FDA20(v178, 1, &v180);
  v22 = a4[1] * *a4;
  v171 = a4[12];
  v157 = a4[4] + v22 * v171;
  v170 = a4[13];
  v23 = a4[5] + v22 * v170;
  v169 = a4[14];
  v24 = a4[6] + v22 * v169;
  v168 = a4[15];
  v25 = a4[7] + v22 * v168;
  v167 = a4[16];
  v26 = a4[8] + v22 * v167;
  v166 = a4[17];
  v27 = a4[9] + v22 * v166;
  v165 = a4[18];
  v28 = a4[10] + v22 * v165;
  v164 = a4[19];
  v29 = a4[11] + v22 * v164;
  v30 = a5[1] * *a5;
  v163 = a5[12];
  v149 = a5[4] + v30 * v163;
  v162 = a5[13];
  v161 = a5[14];
  v160 = a5[15];
  v159 = a5[16];
  v158 = a5[17];
  v142 = a5[19];
  v143 = a5[18];
  v155 = v24;
  v147 = a5[6] + v30 * v161;
  v139 = v24 * 4.0;
  v154 = v25;
  v145 = a5[8] + v30 * v159;
  v146 = a5[7] + v30 * v160;
  v138 = v25 * 6.0;
  v153 = v26;
  v137 = v26 * 8.0;
  v152 = v27;
  v144 = a5[9] + v30 * v158;
  v136 = v27 * 10.0;
  v151 = v28;
  v140 = a5[11] + v30 * v142;
  v141 = a5[10] + v30 * v143;
  v135 = v28 * 12.0;
  v150 = v29;
  v134 = v29 * 14.0;
  v31 = a3;
  v32 = (a1 + 8);
  v33 = (a2 + 8);
  v173 = *a4;
  v129 = -(v173 * v173);
  v172 = *a5;
  v156 = v23;
  v127 = v23 + v23;
  v128 = -(v172 * v172);
  v148 = a5[5] + v30 * v162;
  v132 = a4[3];
  v133 = a4[2];
  v126 = -v133;
  v130 = a5[3];
  v131 = a5[2];
  v124 = -v131;
  v125 = -v132;
  v123 = -v130;
  v34 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  v42 = 0.0;
  do
  {
    v174 = v40;
    v175 = v41;
    v176 = v42;
    v43 = *(v32 - 1);
    v44 = *(v33 - 1);
    v45 = *v32 - v132;
    v46 = v173 * sqrt(v45 * v45 + (v43 - v133) * (v43 - v133));
    v47 = *v33 - v130;
    v48 = v172 * sqrt(v47 * v47 + (v44 - v131) * (v44 - v131));
    v49 = v46 * (v46 * v46);
    v50 = v46 * (v46 * v49);
    v51 = v46 * (v46 * v50);
    v52 = v46 * (v46 * v51);
    v53 = v46 * (v46 * v52);
    v54 = v46 * (v46 * v53);
    v55 = v48 * (v48 * v48);
    v56 = v157 + v156 * (v46 * v46) + v155 * (v46 * v49) + v154 * (v46 * v50) + v153 * (v46 * v51) + v152 * (v46 * v52) + v151 * (v46 * v53) + v150 * (v46 * v54);
    v57 = v129 * (v43 - v133) / v46;
    v58 = v171 + v170 * (v46 * v46) + v169 * (v46 * v49) + v168 * (v46 * v50) + v167 * (v46 * v51) + v166 * (v46 * v52) + v165 * (v46 * v53) + v164 * (v46 * v54);
    v59 = v129 * v45 / v46;
    v60 = v139 * v49 + v127 * v46;
    v61 = v48 * (v48 * v55);
    v62 = v48 * (v48 * v61);
    v63 = v60 + v138 * v50 + v137 * v51 + v136 * v52 + v135 * v53 + v134 * v54;
    v64 = v48 * (v48 * v62);
    v65 = v48 * (v48 * v64);
    v66 = v48 * (v48 * v65);
    v67 = v149 + v148 * (v48 * v48) + v147 * (v48 * v55) + v146 * (v48 * v61) + v145 * (v48 * v62) + v144 * (v48 * v64) + v141 * (v48 * v65) + v140 * (v48 * v66);
    v68 = v163 + v162 * (v48 * v48) + v161 * (v48 * v55) + v160 * (v48 * v61) + v159 * (v48 * v62) + v158 * (v48 * v64) + v143 * (v48 * v65) + v142 * (v48 * v66);
    v69 = v128 * (v44 - v131) / v48;
    v70 = v128 * v47 / v48;
    v71 = v147 * 4.0 * v55 + (v148 + v148) * v48 + v146 * 6.0 * v61;
    v72 = 1.0 / (v56 / 100.0 + 1.0);
    v73 = v71 + v145 * 8.0 * v62 + v144 * 10.0 * v64;
    v74 = 1.0 - v72;
    v75 = v73 + v141 * 12.0 * v65 + v140 * 14.0 * v66;
    v76 = v133 * (1.0 - v72) + v72 * v43;
    v77 = v132 * (1.0 - v72) + v72 * *v32;
    v78 = 1.0 / (v67 / 100.0 + 1.0);
    v79 = v57 * v63;
    v80 = v59 * v63;
    v81 = v69 * v75;
    v82 = 1.0 - v78;
    v83 = -100.0 / ((v56 + 100.0) * (v56 + 100.0));
    v84 = v173 * v58 * v83;
    v85 = v79 * v83;
    v86 = v80 * v83;
    v87 = v131 * (1.0 - v78) + v78 * v44;
    v88 = -100.0 / ((v67 + 100.0) * (v67 + 100.0));
    v89 = v130 * (1.0 - v78) + v78 * *v33;
    v90 = v172 * v68 * v88;
    v91 = v81 * v88;
    v92 = v70 * v75 * v88;
    v93 = v84 * v126 + v84 * v43;
    v94 = v74 + v126 * v85 + v85 * v43;
    v95 = v86 * v126 + v86 * v43;
    v96 = v74 + v125 * v86 + v86 * *v32;
    v97 = v90 * v124 + v90 * v44;
    v98 = v82 + v124 * v91 + v91 * v44;
    v99 = v92 * v124 + v92 * v44;
    v100 = v82 + v123 * v92 + v92 * *v33;
    v101 = *&v183 + *(&v181 + 1) * v89 + v87 * *&v180;
    v102 = *(&v183 + 1) + *&v182 * v89 + v87 * *(&v180 + 1);
    v103 = (v84 * v125 + v84 * *v32) * v102 + v101 * v93;
    v104 = (v85 * v125 + v85 * *v32) * v102 + v101 * v94;
    v105 = v96 * v102;
    v106 = *&v181 + *(&v180 + 1) * v77 + *&v180 * v76;
    v107 = *(&v182 + 1) + *&v182 * v77 + *(&v181 + 1) * v76;
    v108 = v105 + v101 * v95;
    v109 = *&v184 + *(&v183 + 1) * v77 + *&v183 * v76 + v89 * v107 + v87 * v106;
    v110 = *&v188 * v77 + *(&v187 + 1) * v76;
    v111 = (v90 * v123 + v90 * *v33) * v107 + v97 * v106;
    v112 = (v91 * v123 + v91 * *v33) * v107 + v98 * v106;
    v113 = *(&v189 + 1) * v77 + *&v189 * v76;
    v114 = *&v191 * v77 + *(&v190 + 1) * v76;
    v115 = v100 * v107 + v99 * v106;
    v116 = *(&v192 + 1) * v77 + *&v192 * v76;
    v117 = v77 * *&v194 + *(&v193 + 1) * v76;
    v118 = v77 * *(&v195 + 1) + *&v195 * v76;
    v119.f64[0] = *&v187 + v77 * *(&v186 + 1) + *&v186 * v76;
    v119.f64[1] = v103;
    v120 = sqrt(v109 * v109 + 0.00000337320636);
    v121 = v112 * (v109 / v120);
    v122 = v115 * (v109 / v120);
    v34 = v34 + v120;
    v35 = v35 + (*(&v191 + 1) + v114 + v89 * (*&v190 + v113) + v87 * (*(&v188 + 1) + v110)) * (v109 / v120);
    v36 = v36 + (*(&v185 + 1) + *&v185 * v89 + v87 * *(&v184 + 1)) * (v109 / v120);
    v37 = v37 + v109 / v120 * (v89 * (*(&v194 + 1) + v117) + v87 * (*&v193 + v116) + v196 + v118);
    v177 = vaddq_f64(v177, vmulq_n_f64(v119, v109 / v120));
    v38 = v38 + v104 * (v109 / v120);
    v39 = v39 + v108 * (v109 / v120);
    v40 = v174 + v111 * (v109 / v120);
    v41 = v175 + v121;
    v42 = v176 + v122;
    v32 += 2;
    v33 += 2;
    --v31;
  }

  while (v31);
  *a7 = v34 / a3;
  *a8 = v35 / a3;
  *(a8 + 8) = v36 / a3;
  *(a8 + 16) = v37 / a3;
  *(a8 + 24) = vdivq_f64(v177, vdupq_lane_s64(COERCE__INT64(a3), 0));
  *(a8 + 40) = v38 / a3;
  *(a8 + 48) = v39 / a3;
  *(a8 + 56) = v40 / a3;
  *(a8 + 64) = v41 / a3;
  *(a8 + 72) = v42 / a3;
  return result;
}

double *sub_2956F3FF0(uint64_t a1, uint64_t a2, int a3, double *a4, double *a5, uint64_t a6, double *a7)
{
  if (!a1)
  {
    return sub_295701D40();
  }

  if (!a2)
  {
    return sub_295701CE8();
  }

  if (a3 <= 0)
  {
    return sub_295701C90();
  }

  if (!a4)
  {
    return sub_295701C38();
  }

  if (!a5)
  {
    return sub_295701BE0();
  }

  if (!a6)
  {
    return sub_295701B88();
  }

  if (!a7)
  {
    return sub_295701B30();
  }

  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = *(a6 + 144);
  v44[8] = *(a6 + 128);
  v44[9] = v13;
  v44[10] = *(a6 + 160);
  v45 = *(a6 + 176);
  v14 = *(a6 + 80);
  v44[4] = *(a6 + 64);
  v44[5] = v14;
  v15 = *(a6 + 112);
  v44[6] = *(a6 + 96);
  v44[7] = v15;
  v16 = *(a6 + 16);
  v44[0] = *a6;
  v44[1] = v16;
  v17 = *(a6 + 48);
  v44[2] = *(a6 + 32);
  v44[3] = v17;
  result = sub_2956FDA20(v44, 0, &v46);
  v19 = a4[2];
  v20 = a4[3];
  v21 = a5[2];
  v22 = a5[3];
  v23 = a5[1];
  v25 = a3;
  v26 = (a1 + 8);
  v27 = (a2 + 8);
  v28 = 0.0;
  do
  {
    v29 = *(v26 - 1);
    v30 = *(v27 - 1);
    v31 = *a4 * sqrt((*v26 - v20) * (*v26 - v20) + (v29 - v19) * (v29 - v19));
    v32 = v31 * (v31 * (v31 * v31));
    v33 = v31 * (v31 * v32);
    v34 = *a5 * sqrt((*v27 - v22) * (*v27 - v22) + (v30 - v21) * (v30 - v21));
    v24 = a4[1] * *a4;
    v35 = a4[4] + v24 * a4[12] + (a4[5] + v24 * a4[13]) * (v31 * v31) + (a4[6] + v24 * a4[14]) * v32 + (a4[7] + v24 * a4[15]) * v33 + (a4[8] + v24 * a4[16]) * (v31 * (v31 * v33)) + (a4[9] + v24 * a4[17]) * (v31 * (v31 * (v31 * (v31 * v33)))) + (a4[10] + v24 * a4[18]) * (v31 * (v31 * (v31 * (v31 * (v31 * (v31 * v33)))))) + (a4[11] + v24 * a4[19]) * (v31 * (v31 * (v31 * (v31 * (v31 * (v31 * (v31 * (v31 * v33))))))));
    v36 = v34 * (v34 * (v34 * v34));
    v37 = a5[4] + v23 * *a5 * a5[12] + (a5[5] + v23 * *a5 * a5[13]) * (v34 * v34) + (a5[6] + v23 * *a5 * a5[14]) * v36;
    v38 = v34 * (v34 * v36);
    v39 = 1.0 / (v35 / 100.0 + 1.0);
    v40 = v19 * (1.0 - v39) + v39 * v29;
    v41 = 1.0 / ((v37 + (a5[7] + v23 * *a5 * a5[15]) * v38 + (a5[8] + v23 * *a5 * a5[16]) * (v34 * (v34 * v38)) + (a5[9] + v23 * *a5 * a5[17]) * (v34 * (v34 * (v34 * (v34 * v38)))) + (a5[10] + v23 * *a5 * a5[18]) * (v34 * (v34 * (v34 * (v34 * (v34 * (v34 * v38)))))) + (a5[11] + v23 * *a5 * a5[19]) * (v34 * (v34 * (v34 * (v34 * (v34 * (v34 * (v34 * (v34 * v38))))))))) / 100.0 + 1.0);
    v42 = v20 * (1.0 - v39) + v39 * *v26;
    v43 = (v22 * (1.0 - v41) + v41 * *v27) * (*(&v48 + 1) + *&v48 * v42 + *(&v47 + 1) * v40) + (v21 * (1.0 - v41) + v41 * v30) * (*&v47 + *(&v46 + 1) * v42 + *&v46 * v40);
    v28 = v28 + sqrt((*&v50 + *(&v49 + 1) * v42 + *&v49 * v40 + v43) * (*&v50 + *(&v49 + 1) * v42 + *&v49 * v40 + v43) + 0.00000337320636);
    v26 += 2;
    v27 += 2;
    --v25;
  }

  while (v25);
  *a7 = v28 / a3;
  return result;
}

uint64_t sub_2956F4940()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2956F4974(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2956F4CBC()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2956F4CF0(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2956F5110()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2956F5144(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2956F5524()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2956F5558(uint64_t a1, void *a2)
{
  v17 = a2;
  if (objc_msgSend_status(v17, v2, v3, v4, v5, v6) == 4)
  {
    objc_msgSend_GPUEndTime(v17, v7, v8, v9, v10, v11);
    objc_msgSend_GPUStartTime(v17, v12, v13, v14, v15, v16);
  }

  else
  {
    objc_msgSend_status(v17, v7, v8, v9, v10, v11);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

void sub_2956F6B2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, double a8)
{
  v16 = malloc_type_malloc(8 * a3, 0x100004000313F17uLL);
  if (v16 && (sub_2956FDC8C(a1, a2, a3, a4, v16), a3 >= 1))
  {
    v17 = 0;
    v18 = (a2 + 8);
    v19 = (a1 + 8);
    v20 = v16;
    v21 = a3;
    do
    {
      if (*v20 < a8)
      {
        v22 = 2 * v17;
        *(a5 + 8 * v22) = *(v19 - 1);
        v23 = (16 * v17) | 8;
        *(a5 + v23) = *v19;
        *(a6 + 8 * v22) = *(v18 - 1);
        *(a6 + v23) = *v18;
        ++v17;
      }

      ++v20;
      v18 += 2;
      v19 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {
    v17 = 0;
  }

  *a7 = v17;

  free(v16);
}

uint64_t sub_2956F6FCC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{

  return sub_2957038C4(v11, a2, &a11, a4, a5, a6);
}

float64_t sub_2956F6FE4(float64x2_t *a1, uint64_t a2, double a3)
{
  v3 = a1->f64[1];
  v4 = a1[1].f64[0];
  v5 = a1[1].f64[1];
  v6 = a1[2].f64[0];
  v7 = a1[2].f64[1];
  v8 = a1[8].f64[1];
  v9 = -(a1->f64[0] * v3);
  v10 = a1->f64[0] * (v5 * v8 - v3 * a1[4].f64[1]) / a3;
  v11 = a1->f64[0] * (v7 * v8 - v3 * a1[6].f64[1]) / a3;
  v12 = a1->f64[0] * v8 / a3;
  v13 = a1[7];
  v14 = vmuld_lane_f64(v6, v13, 1) + v13.f64[0] * v4 + a1->f64[0] * a1[8].f64[0];
  v15 = a1[3];
  v16 = vmlaq_n_f64(vmulq_n_f64(v13, -v5), v15, v3);
  v17 = v10 + v9 * a1[4].f64[0] - v3 * (vmuld_lane_f64(v6, v15, 1) + v15.f64[0] * v4) + v5 * v14;
  v18 = a1[5];
  v19 = v9 * a1[6].f64[0] - v3 * (vmuld_lane_f64(v6, v18, 1) + v18.f64[0] * v4);
  *a2 = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = vmlaq_n_f64(vmulq_n_f64(v13, -v7), v18, v3);
  *(a2 + 40) = v11 + v19 + v7 * v14;
  result = v12 + v14;
  *(a2 + 48) = vnegq_f64(v13);
  *(a2 + 64) = result;
  return result;
}

double sub_2956F833C(uint64_t *a1, double a2, double a3, double a4, double a5, int32x4_t a6)
{
  v6.i64[0] = *a1;
  v7 = a1[1];
  a6.i64[0] = a1[4];
  v8 = a1[5];
  v6.i64[1] = a1[2];
  v9 = a1[3];
  *&result = vuzp1q_s32(v6, a6).u64[0];
  return result;
}

uint64_t sub_2956FA0D4()
{

  return fig_log_get_emitter();
}

__n128 sub_2956FA0EC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a4 + 144);
  v9 = *(a4 + 160);
  v10 = *(a4 + 112);
  v80 = *(a4 + 128);
  v81 = v8;
  v82 = v9;
  v11 = *(a4 + 80);
  v12 = *(a4 + 96);
  v13 = *(a4 + 48);
  v76 = *(a4 + 64);
  v77 = v11;
  v83 = *(a4 + 176);
  v78 = v12;
  v79 = v10;
  v14 = *(a4 + 16);
  v73[0] = *a4;
  v73[1] = v14;
  v74 = *(a4 + 32);
  v75 = v13;
  v15 = *(a4 + 40);
  v16 = a5[7];
  if (v16 < 0)
  {
    v26 = *(a4 + 40);
  }

  else
  {
    v50 = a5[12];
    v51 = a5[11];
    v48 = a5[8];
    v49 = a5[9];
    v18 = -v16;
    v19 = a3;
    v20 = (a2 + 8);
    v21 = a5[13];
    v22 = (a1 + 8);
    v23 = 1.79769313e308;
    v24 = *(a4 + 40);
    v25 = 1.79769313e308;
    do
    {
      v26 = v15 + v18;
      *(&v74 + 1) = v26;
      sub_2956F6FE4(v73, v66, 1.79769313e308);
      sub_2956F6FE4(v73, v59, v49);
      sub_2956F6FE4(v73, v52, v48);
      if (a3 < 1)
      {
        v28 = 0;
        v27 = 0;
        v38 = 0.0;
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = v19;
        v31 = v22;
        v32 = v20;
        do
        {
          v33 = *(v31 - 1);
          v34 = *v32;
          v32 += 2;
          v35 = (v69 + *v31 * v68 + v67 * v33) / (v72 + *v31 * v71 + v70 * v33);
          v36 = (v62 + *v31 * v61 + v60 * v33) / (v65 + *v31 * v64 + v63 * v33);
          v37 = v35 < v36;
          v29 += (v34 >= v35) ^ v37;
          v28 += v37 ^ (v34 < v36);
          v27 += v37 ^ (v34 < (v55 + *v31 * v54 + v53 * v33) / (v58 + *v31 * v57 + v56 * v33));
          v31 += 2;
          --v30;
        }

        while (v30);
        v38 = v29;
      }

      v39 = v21 * (v27 - v28) + v38 * v51 + v28 * v50;
      if (v39 >= v23)
      {
        if (v39 == v23)
        {
          v40 = v15 - v26;
          if (v15 - v26 < 0.0)
          {
            v40 = -(v15 - v26);
          }

          if (v40 >= v25)
          {
            v26 = v24;
          }

          else
          {
            v25 = v40;
          }
        }

        else
        {
          v26 = v24;
        }

        v39 = v23;
      }

      else if (v15 - v26 >= 0.0)
      {
        v25 = v15 - v26;
      }

      else
      {
        v25 = -(v15 - v26);
      }

      v23 = v39;
      v24 = v26;
    }

    while (v18++ != v16);
  }

  v42 = *(a4 + 144);
  *(a6 + 128) = *(a4 + 128);
  *(a6 + 144) = v42;
  *(a6 + 160) = *(a4 + 160);
  *(a6 + 176) = *(a4 + 176);
  v43 = *(a4 + 80);
  *(a6 + 64) = *(a4 + 64);
  *(a6 + 80) = v43;
  v44 = *(a4 + 112);
  *(a6 + 96) = *(a4 + 96);
  *(a6 + 112) = v44;
  v45 = *(a4 + 16);
  *a6 = *a4;
  *(a6 + 16) = v45;
  result = *(a4 + 32);
  v47 = *(a4 + 48);
  *(a6 + 32) = result;
  *(a6 + 48) = v47;
  *(a6 + 40) = v26;
  return result;
}

double sub_2956FA3D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, double *a7, double *a8)
{
  v9 = *a4;
  v10 = *(a4 + 16);
  v11 = *(a4 + 48);
  *(a6 + 32) = *(a4 + 32);
  *(a6 + 48) = v11;
  *a6 = v9;
  *(a6 + 16) = v10;
  v12 = *(a4 + 64);
  v13 = *(a4 + 80);
  v14 = *(a4 + 112);
  *(a6 + 96) = *(a4 + 96);
  *(a6 + 112) = v14;
  *(a6 + 64) = v12;
  *(a6 + 80) = v13;
  v15 = *(a4 + 128);
  v16 = *(a4 + 144);
  v17 = *(a4 + 160);
  *(a6 + 176) = *(a4 + 176);
  *(a6 + 144) = v16;
  *(a6 + 160) = v17;
  *(a6 + 128) = v15;
  *a7 = 0.0;
  *a8 = 0.0;
  if (a3 >= 1)
  {
    *v15.i64 = fabs(*(a5 + 48)) + fabs(*(a5 + 56));
    if (*v15.i64 >= 0.1)
    {
      v75 = a7;
      v76 = a8;
      v77 = &v74;
      v23 = vcvtms_u32_f32((*(a5 + 128) * a3) * 0.01) + 1;
      MEMORY[0x2A1C7C4A8](0);
      v25 = &v74 - v24;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v82 = 0uLL;
      if (!sub_2956FC99C(a4, &v92, &v89, &v86, &v83, &v82))
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *v15.f32 = vabs_f32(*v82.f32);
        *v26.i8 = vdup_lane_s32(*v15.f32, 1);
        *v15.f32 = vmvn_s8(vcgt_f32(*v15.f32, *v26.i8));
        v31 = v15.i8[0] & 1;
        v32 = (v15.i8[0] & 1) == 0;
        v15.i32[0] = *(&v82 & 0xFFFFFFFFFFFFFFFBLL | (4 * v31));
        v26.i32[0] = 1.0;
        v33.i64[0] = 0x8000000080000000;
        v33.i64[1] = 0x8000000080000000;
        v15.i64[0] = vbslq_s8(v33, v26, v15).u64[0];
        v34 = v86;
        v35 = v87;
        v36 = v88;
        v37 = v83;
        v38 = v84;
        v39 = v85;
        v40 = *(a5 + 132);
        v41 = -3.4028e38;
        v42 = (&v81 & 0xFFFFFFFFFFFFFFFBLL | (4 * v32));
        v43 = (&v80 | (4 * v32));
        v44 = v76;
        do
        {
          v45 = *(a1 + 16 * v27);
          v46 = (16 * v27) | 8;
          v47 = *(a1 + v46);
          v48 = *(a2 + 16 * v27);
          v49 = *(a2 + v46);
          v50 = vaddq_f32(v36, vmlaq_n_f32(vmulq_n_f32(v34, v45), v35, v47));
          v51 = vdivq_f32(v50, vdupq_laneq_s32(v50, 2));
          v52 = vaddq_f32(v39, vmlaq_n_f32(vmulq_n_f32(v37, v48), v38, v49));
          v81 = vdivq_f32(v52, vdupq_laneq_s32(v52, 2));
          v53 = *(&v81 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v31 & 1)));
          v80 = v51;
          if (vabds_f32(*v42, *v43) <= v40)
          {
            v54 = v15.f32[0] * (v53 - *(&v80 | (4 * v31)));
            if (v54 < 0.0)
            {
              ++v30;
              if (v29 >= v23)
              {
                if (v54 < v41)
                {
                  *&v25[4 * v28] = v54;
                  if (v23)
                  {
                    for (i = 0; i != v23; ++i)
                    {
                      if (*&v25[4 * i] > v54)
                      {
                        v28 = i;
                        v54 = *&v25[4 * i];
                      }
                    }
                  }

                  v41 = v54;
                }
              }

              else
              {
                *&v25[4 * v29] = v54;
                if (v54 > v41)
                {
                  v28 = v29;
                  v41 = v54;
                }

                ++v29;
              }
            }
          }

          ++v27;
        }

        while (v27 != a3);
        *v44 = v30 / a3;
        if (v29 >= v23)
        {
          v56 = *a4 / *(a4 + 8);
          v57 = *(a5 + 48);
          v58 = *(a5 + 56);
          v59 = v56 * v58;
          v60 = -v41;
          if (v41 > -0.0)
          {
            v60 = 0.0;
          }

          v61 = v59 + v57;
          if (v60 >= (v59 + v57))
          {
            v62 = v59 + v57;
          }

          else
          {
            v62 = v60;
          }

          v63 = v57 / v61;
          v64 = *(a4 + 16);
          v65 = *(a4 + 32);
          v66 = *(a4 + 24);
          v67 = *(a4 + 40);
          v68 = vaddq_f32(v88, vmlaq_n_f32(vmulq_n_f32(v86, v64), v87, v65));
          v69 = vaddq_f32(v85, vmlaq_n_f32(vmulq_n_f32(v83, v66), v84, v67));
          v78 = 0u;
          *(&v78 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3))) = v15.f32[0] * (v63 * v62);
          v70 = vaddq_f32(v78, vdivq_f32(v68, vdupq_laneq_s32(v68, 2)));
          v79 = v78;
          *(&v79 & 0xFFFFFFFFFFFFFFF3 | (4 * (v31 & 3))) = v62 * (v15.f32[0] * (1.0 - v63));
          v15 = vsubq_f32(vdivq_f32(v69, vdupq_laneq_s32(v69, 2)), v79);
          v71 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v70.f32[0]), v93, *v70.f32, 1), v94, v70, 2);
          v71.i64[0] = vdivq_f32(v71, vdupq_laneq_s32(v71, 2)).u64[0];
          v72 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, v15.f32[0]), v90, *v15.f32, 1), v91, v15, 2);
          v15.i64[0] = vdivq_f32(v72, vdupq_laneq_s32(v72, 2)).u64[0];
          *(a6 + 16) = v71.f32[0];
          v72.i32[0] = v15.i32[1];
          v15.i32[1] = v71.i32[1];
          *(a6 + 24) = vcvtq_f64_f32(*v15.f32);
          *(a6 + 40) = v72.f32[0];
          *v15.i64 = v62;
          *v75 = v62;
        }
      }
    }
  }

  return *v15.i64;
}

uint64_t sub_2956FA880(unsigned int a1, const void *a2, void ***a3)
{
  if (a1 <= 0)
  {
    sub_295706DCC();
LABEL_17:
    v6 = 0;
    v14 = 4294954516;
    goto LABEL_13;
  }

  if (!a2)
  {
    sub_295706D74();
    goto LABEL_17;
  }

  if (!a3)
  {
    sub_295706D1C();
    goto LABEL_17;
  }

  v6 = malloc_type_calloc(1uLL, 0xB88uLL, 0x108004012BBBC92uLL);
  if (!v6)
  {
    sub_295706CC4();
LABEL_26:
    v14 = 4294954510;
    goto LABEL_13;
  }

  v7 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[362] = v7;
  if (!v7)
  {
    sub_295706C6C();
    goto LABEL_26;
  }

  v8 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[363] = v8;
  if (!v8)
  {
    sub_295706C14();
    goto LABEL_26;
  }

  v9 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[364] = v9;
  if (!v9)
  {
    sub_295706BBC();
    goto LABEL_26;
  }

  v10 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[365] = v10;
  if (!v10)
  {
    sub_295706B64();
    goto LABEL_26;
  }

  v11 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[366] = v11;
  if (!v11)
  {
    sub_295706B0C();
    goto LABEL_26;
  }

  v12 = malloc_type_malloc(16 * a1, 0x100004000313F17uLL);
  v6[367] = v12;
  if (!v12)
  {
    sub_295706AB4();
    goto LABEL_26;
  }

  v13 = malloc_type_malloc(8 * a1, 0x100004000313F17uLL);
  v6[368] = v13;
  if (!v13)
  {
    sub_295706A5C();
    goto LABEL_26;
  }

  *v6 = a1;
  memcpy(v6 + 1, a2, 0x200uLL);
  v14 = 0;
  *a3 = v6;
  v6 = 0;
LABEL_13:
  sub_2956FAA20(v6);
  return v14;
}

void sub_2956FAA20(void **a1)
{
  if (a1)
  {
    free(a1[362]);
    free(a1[363]);
    free(a1[364]);
    free(a1[365]);
    free(a1[366]);
    free(a1[367]);
    free(a1[368]);

    free(a1);
  }
}

uint64_t sub_2956FAA94(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    sub_295706E7C();
    return 4294954516;
  }

  if (!a2)
  {
    sub_295706E24();
    return 4294954516;
  }

  memcpy((a1 + 8), a2, 0x200uLL);
  return 0;
}

void sub_2956FAAD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  bzero(a2, 0x748uLL);
  if (a1)
  {

    memcpy(a2, (a1 + 520), 0x748uLL);
  }
}

uint64_t sub_2956FAB30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    sub_2957076D0();
    return 4294954516;
  }

  if (!a2)
  {
    sub_295707678();
    return 4294954516;
  }

  if (!a3)
  {
    sub_295707620();
    return 4294954516;
  }

  if (a4 <= 0)
  {
    sub_2957075C8();
    return 4294954516;
  }

  if (*a1 < a4)
  {
    sub_295707570();
    return 4294954516;
  }

  if (!a5)
  {
    sub_295707518();
    return 4294954516;
  }

  if (!a6)
  {
    sub_2957074C0();
    return 4294954516;
  }

  if (!a7)
  {
    sub_295707468();
    return 4294954516;
  }

  if (fabs(*(a7 + 168)) <= 0.00001)
  {
    sub_295707408();
    return 4294954516;
  }

  if (fabs(*(a7 + 176)) <= 0.00001)
  {
    sub_2957073A8();
    return 4294954516;
  }

  v149 = *a5;
  if (fabs(*a5) <= 0.00000001)
  {
    sub_295707348();
    return 4294954516;
  }

  v148 = *a6;
  if (fabs(*a6) <= 0.00000001)
  {
    sub_2957072E8();
    return 4294954516;
  }

  v147 = *(a5 + 8);
  v14 = *(a5 + 3);
  v15 = a5[5];
  v16 = a5[7];
  v239 = a5[6];
  v240 = v16;
  v17 = a5[7];
  v18 = a5[9];
  v241 = a5[8];
  v242 = v18;
  v19 = a5[3];
  v235 = a5[2];
  v236 = v19;
  v20 = a5[5];
  v21 = a5[2];
  v22 = a5[3];
  v237 = a5[4];
  v238 = v20;
  v145 = *(a6 + 8);
  v146 = *(a6 + 24);
  v23 = *(a6 + 112);
  v24 = *(a6 + 128);
  v25 = v24;
  v234 = *(a6 + 144);
  v233 = v24;
  v26 = *(a6 + 96);
  v27 = *(a6 + 80);
  v232 = *(a6 + 112);
  v231 = v26;
  v28 = *(a6 + 48);
  v29 = *(a6 + 64);
  v30 = v29;
  v230 = *(a6 + 80);
  v229 = v29;
  v31 = *(a6 + 32);
  v32 = v31;
  v228 = *(a6 + 48);
  v227 = v31;
  v33 = *a7;
  v34 = *(a7 + 16);
  v226 = *(a7 + 32);
  v35 = *a7;
  v225 = v34;
  v224 = v33;
  v36 = *(a7 + 48);
  v153 = *(a7 + 56);
  v38 = *(a7 + 128);
  v37 = *(a7 + 144);
  v39 = v37;
  v222 = *(a7 + 160);
  v221 = v37;
  v40 = *a5;
  *&v212[16] = a5[1];
  *v212 = v40;
  v41 = *(a7 + 64);
  v216 = v15;
  v215 = v237;
  v42 = *(a7 + 80);
  v43 = *(a7 + 88);
  v214 = v22;
  v213 = v21;
  v220 = a5[9];
  v219 = v241;
  v218 = v17;
  v217 = v239;
  v151 = *(a7 + 96);
  v152 = v41;
  v208 = v26;
  v209 = v23;
  v44 = *(a6 + 144);
  v210 = v25;
  v211 = v44;
  v45 = *(a7 + 112);
  v46 = *(a7 + 120);
  v204 = v32;
  v205 = v28;
  v206 = v30;
  v207 = v27;
  v47 = *(a6 + 16);
  *v203 = *a6;
  *&v203[16] = v47;
  v150 = *(a7 + 128);
  v223 = *(a7 + 176);
  v199 = v38;
  v200 = v39;
  v201 = *(a7 + 160);
  v202 = *(a7 + 176);
  v48 = *(a7 + 80);
  v195 = *(a7 + 64);
  v196 = v48;
  v49 = *(a7 + 112);
  v197 = *(a7 + 96);
  v198 = v49;
  v191 = v35;
  v192 = v34;
  v50 = *(a7 + 48);
  v51 = *(a1 + 152);
  v193 = *(a7 + 32);
  v194 = v50;
  if (v51 > 0.0 && *(a1 + 2384) == 1)
  {
    sub_2956FBA24(a1, v212, v203, &v191, v51);
  }

  v52 = sub_2956FBDC4(a1, a2, a3, a4, v212, v203, &v191);
  if (v52)
  {
    v117 = v52;
    sub_295706ED4();
    return v117;
  }

  if (fabs(*(&v201 + 1)) <= 0.00001)
  {
    sub_295707288();
    return 4294954516;
  }

  if (fabs(v202) <= 0.00001)
  {
    sub_295707228();
    return 4294954516;
  }

  if (fabs(*v212) <= 0.00000001)
  {
    sub_2957071C8();
    return 4294954516;
  }

  if (fabs(*v203) <= 0.00000001)
  {
    sub_295707168();
    return 4294954516;
  }

  if ((*(a1 + 1868) & 1) == 0)
  {
    sub_295706F2C(a1, &v312);
    v115 = v312;
    goto LABEL_38;
  }

  v141 = *v212;
  v143 = *v203;
  v53 = (a1 + 2584);
  v320 = v199;
  v321 = v200;
  v322 = v201;
  v323 = v202;
  v316 = v195;
  v317 = v196;
  v318 = v197;
  v319 = v198;
  v312 = v191;
  v313 = v192;
  v314 = v193;
  v315 = v194;
  sub_2956FC154(&v312, &v179);
  v312 = v224;
  v313 = v225;
  v314 = v226;
  *&v315 = v36;
  *(&v315 + 1) = v153;
  v316 = v152;
  *&v317 = v42;
  *(&v317 + 1) = v43;
  v318 = v151;
  *&v319 = v45;
  *(&v319 + 1) = v46;
  v323 = v223;
  v322 = v222;
  v320 = v150;
  v321 = v221;
  v54 = v243;
  sub_2956FC154(&v312, v243);
  v55 = 0;
  v56 = 1;
  do
  {
    v57 = v56;
    v58 = *&v244[8 * v55 + 8];
    *v54 = -*v54;
    *&v244[8 * v55 + 8] = -v58;
    *&v244[8 * v55 + 24] = -*&v244[8 * v55 + 24];
    v54 = v244;
    v55 = 1;
    v56 = 0;
  }

  while ((v57 & 1) != 0);
  v140 = v36;
  v59 = 0;
  v60 = &v179;
  v61 = v243;
  v62 = 1;
  v63 = v141;
  do
  {
    *(&v180 + v59) = *&v244[8 * v59 + 8] + *(&v180 + v59);
    v64 = v62;
    v65 = *v61;
    *(&v181 + v59) = *&v244[8 * v59 + 24] + *(&v181 + v59);
    *v60 = v65 + *v60;
    v61 = v244;
    v60 = &v179 + 1;
    v59 = 1;
    v62 = 0;
  }

  while ((v64 & 1) != 0);
  v142 = v14;
  v66 = vsubq_f64(vmulq_n_f64(*&v212[8], v63), vmulq_n_f64(v147, v149));
  v67 = v63 * *&v212[24] - v149 * v14;
  v68 = vsubq_f64(vmulq_n_f64(*&v203[8], v143), vmulq_n_f64(v145, v148));
  v69 = v143 * *&v203[24] - v148 * v146;
  v70 = (a1 + 2392);
  if (*(a1 + 2384))
  {
    v139 = v66;
    v144 = v68;
    v71 = *(a1 + 2536);
    v72 = *(a1 + 2504);
    v163 = *(a1 + 2520);
    v164 = v71;
    v73 = *(a1 + 2536);
    v165 = *(a1 + 2552);
    v74 = *(a1 + 2472);
    v75 = *(a1 + 2440);
    v159 = *(a1 + 2456);
    v160 = v74;
    v76 = *(a1 + 2472);
    v77 = *(a1 + 2504);
    v161 = *(a1 + 2488);
    v162 = v77;
    v78 = *(a1 + 2408);
    v156[0] = *v70;
    v156[1] = v78;
    v79 = *(a1 + 2440);
    v80 = *v70;
    v81 = *(a1 + 2408);
    v157 = *(a1 + 2424);
    v158 = v79;
    v154[8] = v187;
    v154[9] = v188;
    v154[10] = v189;
    v154[4] = v183;
    v154[5] = v184;
    v154[6] = v185;
    v154[7] = v186;
    v154[0] = v179;
    v154[1] = v180;
    v154[2] = v181;
    v154[3] = v182;
    v320 = v163;
    v321 = v73;
    v322 = *(a1 + 2552);
    v316 = v159;
    v317 = v76;
    v318 = v161;
    v319 = v72;
    v312 = v80;
    v313 = v81;
    v314 = v157;
    v315 = v75;
    v308 = v187;
    v309 = v188;
    v310 = v189;
    v304 = v183;
    v305 = v184;
    v306 = v185;
    v307 = v186;
    v82 = *(a1 + 148);
    v83 = *(a1 + 144);
    v166 = *(a1 + 2568);
    v155 = v190;
    v300 = v179;
    v301 = v180;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0;
    v323 = *(a1 + 2568);
    v311 = v190;
    v302 = v181;
    v303 = v182;
    sub_2956FD42C(&v312, &v300, &v167, v83);
    v323 = 0.0;
    v322 = 0u;
    v321 = 0u;
    v320 = 0u;
    v319 = 0u;
    v318 = 0u;
    v317 = 0u;
    v316 = 0u;
    v315 = 0u;
    v314 = 0u;
    v313 = 0u;
    v312 = 0u;
    v311 = 0.0;
    v310 = 0u;
    v309 = 0u;
    v308 = 0u;
    v307 = 0u;
    v306 = 0u;
    v305 = 0u;
    v304 = 0u;
    v303 = 0u;
    v302 = 0u;
    v301 = 0u;
    v300 = 0u;
    v299 = 0;
    v298 = 0u;
    v297 = 0u;
    v296 = 0u;
    v295 = 0u;
    v294 = 0u;
    v293 = 0u;
    v292 = 0u;
    v291 = 0u;
    v290 = 0u;
    v289 = 0u;
    v288 = 0u;
    *v84.i32 = v140;
    v287 = 0u;
    v286 = 0u;
    *v85.i32 = v153;
    v86.i64[1] = *&v152.f64[1];
    *v86.i8 = vcvt_f32_f64(v152);
    *&v87 = v42;
    v285 = 0u;
    v284 = 0u;
    *&v88 = v43;
    *&v89 = v45;
    v283.columns[1] = 0;
    v283.columns[0] = 0;
    *&v90 = v46;
    v91.i64[1] = *&v150.f64[1];
    *v91.i8 = vcvt_f32_f64(v150);
    v92 = vzip1q_s32(v86, v91);
    v282.columns[1] = 0;
    v282.columns[0] = 0;
    v93 = vzip2q_s32(vcvt_hight_f32_f64(*&v151.f64[0], v151), 0);
    v84.i32[1] = v87;
    v84.i32[2] = v89;
    v85.i32[1] = v88;
    v85.i32[2] = v90;
    v137 = v85;
    v138 = v84;
    v135 = vzip2q_s32(v92, v93);
    v136 = vzip1q_s32(v92, v93);
    if (sub_2956FC2A8(&v284, &v283, &v282))
    {
      sub_295706FA8();
    }

    else if (sub_2956FC5C0(v156, &v312, v284, v285, v286, v287, v283.columns[0], v283.columns[1], v282.columns[0], v282.columns[1]))
    {
      sub_295707000();
    }

    else if (sub_2956FC5C0(v154, &v300, v284, v285, v286, v287, v283.columns[0], v283.columns[1], v282.columns[0], v282.columns[1]))
    {
      sub_295707058();
    }

    else
    {
      v281 = 0;
      v280 = 0u;
      v279 = 0u;
      v278 = 0u;
      v277 = 0u;
      v276 = 0u;
      v275 = 0u;
      v274 = 0u;
      v273 = 0u;
      v272 = 0u;
      memset(v271, 0, sizeof(v271));
      v267 = v320;
      v268 = v321;
      v269 = v322;
      v270 = v323;
      v263 = v316;
      v264 = v317;
      v265 = v318;
      v266 = v319;
      v259 = v312;
      v260 = v313;
      v261 = v314;
      v262 = v315;
      v255 = v308;
      v256 = v309;
      v257 = v310;
      v258 = v311;
      v251 = v304;
      v252 = v305;
      v253 = v306;
      v254 = v307;
      v247 = v300;
      v248 = v301;
      v249 = v302;
      v250 = v303;
      sub_2956FD42C(&v259, &v247, v271, v83);
      v259 = 0u;
      v260 = 0u;
      v261 = 0u;
      v262 = 0u;
      v263 = 0u;
      v264 = 0u;
      v265 = 0u;
      v266 = 0u;
      v267 = 0u;
      v268 = 0u;
      v269 = 0u;
      v270 = 0.0;
      v255 = v320;
      v256 = v321;
      v257 = v322;
      v258 = v323;
      v251 = v316;
      v252 = v317;
      v253 = v318;
      v254 = v319;
      v247 = v312;
      v248 = v313;
      v249 = v314;
      v250 = v315;
      v245[8] = v308;
      v245[9] = v309;
      v245[10] = v310;
      v246 = v311;
      v245[4] = v304;
      v245[5] = v305;
      v245[6] = v306;
      v245[7] = v307;
      v245[0] = v300;
      v245[1] = v301;
      v245[2] = v302;
      v245[3] = v303;
      sub_2956FD42C(&v247, v245, &v259, v82);
      v272 = v261;
      v94 = __invert_f2(v283);
      v95 = __invert_f2(v282);
      if (sub_2956FC5C0(v271, &v288, v138, v137, v136, v135, v94.columns[0], v94.columns[1], v95.columns[0], v95.columns[1]))
      {
        sub_2957070B0();
      }

      else
      {
        v168 = v289;
        v169 = v290;
      }
    }

    v96 = v176;
    *(a1 + 2520) = v175;
    *(a1 + 2536) = v96;
    *(a1 + 2552) = v177;
    *(a1 + 2568) = v178;
    v97 = v172;
    *(a1 + 2456) = v171;
    *(a1 + 2472) = v97;
    v98 = v174;
    *(a1 + 2488) = v173;
    *(a1 + 2504) = v98;
    v99 = v168;
    *v70 = v167;
    *(a1 + 2408) = v99;
    v100 = v170;
    *(a1 + 2424) = v169;
    *(a1 + 2440) = v100;
    v101 = *(a1 + 144);
    *&v100 = v67 * (1.0 - v101) + *(a1 + 2600) * v101;
    *v53 = vaddq_f64(vmulq_n_f64(v139, 1.0 - v101), vmulq_n_f64(*v53, v101));
    *(a1 + 2600) = v100;
    *&v100 = v69 * (1.0 - v101) + *(a1 + 2760) * v101;
    *(a1 + 2744) = vaddq_f64(vmulq_n_f64(v144, 1.0 - v101), vmulq_n_f64(*(a1 + 2744), v101));
    *(a1 + 2760) = v100;
    if ((*(a1 + 2384) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v102 = v188;
    *(a1 + 2520) = v187;
    *(a1 + 2536) = v102;
    *(a1 + 2552) = v189;
    *(a1 + 2568) = v190;
    v103 = v184;
    *(a1 + 2456) = v183;
    *(a1 + 2472) = v103;
    v104 = v186;
    *(a1 + 2488) = v185;
    *(a1 + 2504) = v104;
    v105 = v180;
    *v70 = v179;
    *(a1 + 2408) = v105;
    v106 = v182;
    *(a1 + 2424) = v181;
    *(a1 + 2440) = v106;
    *(a1 + 2576) = 0x3FF0000000000000;
    *v53 = v66;
    *(a1 + 2600) = v67;
    v107 = v218;
    *(a1 + 2672) = v217;
    *(a1 + 2688) = v107;
    v108 = v220;
    *(a1 + 2704) = v219;
    *(a1 + 2720) = v108;
    v109 = v214;
    *(a1 + 2608) = v213;
    *(a1 + 2624) = v109;
    v110 = v216;
    *(a1 + 2640) = v215;
    *(a1 + 2656) = v110;
    *(a1 + 2736) = 0x3FF0000000000000;
    *(a1 + 2744) = v68;
    *(a1 + 2760) = v69;
    v111 = v209;
    *(a1 + 2832) = v208;
    *(a1 + 2848) = v111;
    v112 = v211;
    *(a1 + 2864) = v210;
    *(a1 + 2880) = v112;
    v113 = v205;
    *(a1 + 2768) = v204;
    *(a1 + 2784) = v113;
    v114 = v207;
    *(a1 + 2800) = v206;
    *(a1 + 2816) = v114;
    *(a1 + 2384) = 1;
  }

  if (*(a1 + 144) == 0.0 && *(a1 + 148) > 0.0)
  {
    v115 = 1;
    v36 = v140;
    v14 = v142;
LABEL_38:
    v191 = v224;
    v192 = v225;
    v193 = v226;
    *&v194 = v36;
    *(&v194 + 1) = v153;
    v195 = v152;
    *&v196 = v42;
    *(&v196 + 1) = v43;
    v197 = v151;
    *&v198 = v45;
    *(&v198 + 1) = v46;
    v202 = v223;
    v201 = v222;
    v199 = v150;
    v200 = v221;
    *&v212[8] = v147;
    *v212 = v149;
    *&v212[24] = v14;
    v220 = v242;
    v219 = v241;
    v218 = v240;
    v217 = v239;
    v216 = v238;
    v215 = v237;
    v214 = v236;
    v213 = v235;
    *&v203[8] = v145;
    *v203 = v148;
    *&v203[24] = v146;
    v207 = v230;
    v206 = v229;
    v205 = v228;
    v204 = v227;
    v211 = v234;
    v210 = v233;
    v209 = v232;
    v208 = v231;
    if (v115)
    {
      v116 = sub_2956FBA24(a1, v212, v203, &v191, 1.0);
      if (v116)
      {
        v117 = v116;
        sub_295707108();
        return v117;
      }
    }
  }

LABEL_40:
  v117 = 0;
  *(a7 + 176) = v202;
  v118 = v198;
  *(a7 + 96) = v197;
  *(a7 + 112) = v118;
  v119 = v196;
  *(a7 + 64) = v195;
  *(a7 + 80) = v119;
  v120 = v201;
  v121 = v199;
  *(a7 + 144) = v200;
  *(a7 + 160) = v120;
  *(a7 + 128) = v121;
  v122 = v192;
  *a7 = v191;
  *(a7 + 16) = v122;
  v123 = v194;
  *(a7 + 32) = v193;
  *(a7 + 48) = v123;
  v124 = *&v212[16];
  *a5 = *v212;
  a5[1] = v124;
  v125 = v216;
  a5[4] = v215;
  a5[5] = v125;
  v126 = v214;
  a5[2] = v213;
  a5[3] = v126;
  v127 = v220;
  a5[8] = v219;
  a5[9] = v127;
  v128 = v218;
  a5[6] = v217;
  a5[7] = v128;
  v129 = *&v203[16];
  *a6 = *v203;
  *(a6 + 16) = v129;
  v130 = v207;
  *(a6 + 64) = v206;
  *(a6 + 80) = v130;
  v131 = v205;
  *(a6 + 32) = v204;
  *(a6 + 48) = v131;
  v132 = v211;
  *(a6 + 128) = v210;
  *(a6 + 144) = v132;
  v133 = v209;
  *(a6 + 96) = v208;
  *(a6 + 112) = v133;
  return v117;
}

uint64_t sub_2956FBA24(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double a5)
{
  if (!a1)
  {
    sub_295707A08();
    return 4294954516;
  }

  if ((*(a1 + 2384) & 1) == 0)
  {
    sub_295707728();
    return 4294954516;
  }

  if (!a2)
  {
    sub_2957079B0();
    return 4294954516;
  }

  if (!a3)
  {
    sub_295707958();
    return 4294954516;
  }

  if (!a4)
  {
    sub_295707900();
    return 4294954516;
  }

  if (fabs(a4[21]) <= 0.00001)
  {
    sub_2957078A0();
    return 4294954516;
  }

  if (fabs(a4[22]) <= 0.00001)
  {
    sub_295707840();
    return 4294954516;
  }

  if (fabs(*a2) <= 0.00000001)
  {
    sub_2957077E0();
    return 4294954516;
  }

  if (fabs(*a3) <= 0.00000001)
  {
    sub_295707780();
    return 4294954516;
  }

  v5 = 0;
  v63 = *(a1 + 2568);
  v6 = *(a1 + 2536);
  v60 = *(a1 + 2520);
  v61 = v6;
  v62 = *(a1 + 2552);
  v7 = *(a1 + 2472);
  v56 = *(a1 + 2456);
  v57 = v7;
  v8 = *(a1 + 2504);
  v58 = *(a1 + 2488);
  v59 = v8;
  v9 = *(a1 + 2408);
  v52 = *(a1 + 2392);
  v53 = v9;
  v10 = *(a1 + 2440);
  v11 = &v64;
  v12 = 1;
  v54 = *(a1 + 2424);
  v55 = v10;
  do
  {
    v13 = a4[v5 + 21];
    v66 = v54;
    v67 = v55;
    v70 = v58;
    v71 = v59;
    v68 = v56;
    v69 = v57;
    v75 = v63;
    v73 = v61;
    v74 = v62;
    v72 = v60;
    v64 = v52;
    v65 = v53;
    v14 = *(&v74 + v5 + 1) / v13;
    v15 = *v11 * v14;
    *(&v65 + v5) = v14 * *(&v65 + v5);
    v16 = v12;
    *(&v66 + v5) = v14 * *(&v66 + v5);
    *v11 = v15;
    *(&v74 + v5 + 1) = v13;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = v75;
    v56 = v68;
    v57 = v69;
    v58 = v70;
    v59 = v71;
    v52 = v64;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v11 = &v64 + 1;
    v5 = 1;
    v12 = 0;
  }

  while ((v16 & 1) != 0);
  v17 = 0;
  v18 = &v52;
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = *(&v53 + v17);
    *v18 = *v18 * a5;
    *(&v53 + v17) = v21 * a5;
    *(&v54 + v17) = *(&v54 + v17) * a5;
    v18 = &v52 + 1;
    v17 = 1;
    v19 = 0;
  }

  while ((v20 & 1) != 0);
  v22 = 0;
  v23 = *(a4 + 9);
  v48 = *(a4 + 8);
  v49 = v23;
  v50 = *(a4 + 10);
  v51 = *(a4 + 22);
  v24 = *(a4 + 5);
  v44 = *(a4 + 4);
  v45 = v24;
  v25 = *(a4 + 7);
  v46 = *(a4 + 6);
  v47 = v25;
  v26 = *(a4 + 1);
  v40 = *a4;
  v41 = v26;
  v27 = *(a4 + 3);
  v28 = &v40;
  v29 = &v52;
  v30 = 1;
  v42 = *(a4 + 2);
  v43 = v27;
  do
  {
    *(&v41 + v22) = *(&v53 + v22) + *(&v41 + v22);
    v31 = v30;
    v32 = *v29;
    *(&v42 + v22) = *(&v54 + v22) + *(&v42 + v22);
    *v28 = v32 + *v28;
    v28 = &v40 + 1;
    v29 = &v52 + 1;
    v22 = 1;
    v30 = 0;
  }

  while ((v31 & 1) != 0);
  v33 = 0;
  *(a4 + 22) = v51;
  v34 = v47;
  *(a4 + 6) = v46;
  *(a4 + 7) = v34;
  v35 = v45;
  *(a4 + 4) = v44;
  *(a4 + 5) = v35;
  v36 = v50;
  *(a4 + 9) = v49;
  *(a4 + 10) = v36;
  *(a4 + 8) = v48;
  v37 = v41;
  *a4 = v40;
  *(a4 + 1) = v37;
  v38 = v43;
  *(a4 + 2) = v42;
  *(a4 + 3) = v38;
  *&v35 = *(a1 + 2576) / *a2;
  *&v38 = *(a1 + 2600) * *&v35 * a5 + *(a2 + 24);
  *(a2 + 8) = vaddq_f64(*(a2 + 8), vmulq_n_f64(vmulq_n_f64(*(a1 + 2584), *&v35), a5));
  *(a2 + 24) = v38;
  *&v35 = *(a1 + 2736) / *a3;
  *&v38 = *(a1 + 2760) * *&v35 * a5 + *(a3 + 24);
  *(a3 + 8) = vaddq_f64(*(a3 + 8), vmulq_n_f64(vmulq_n_f64(*(a1 + 2744), *&v35), a5));
  *(a3 + 24) = v38;
  return v33;
}

uint64_t sub_2956FBDC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    sub_295707ED8();
    return 4294954516;
  }

  if (!a2)
  {
    sub_295707E80();
    return 4294954516;
  }

  if (!a3)
  {
    sub_295707E28();
    return 4294954516;
  }

  if (a4 <= 0)
  {
    sub_295707DD0();
    return 4294954516;
  }

  if (*a1 < a4)
  {
    sub_295707D78();
    return 4294954516;
  }

  if (!a5)
  {
    sub_295707D20();
    return 4294954516;
  }

  if (!a6)
  {
    sub_295707CC8();
    return 4294954516;
  }

  if (!a7)
  {
    sub_295707C70();
    return 4294954516;
  }

  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v14 = *(a7 + 48);
  v15 = *(a7 + 64);
  *&v14.f64[0] = vcvt_f32_f64(v14);
  *&v15.f64[0] = vcvt_f32_f64(v15);
  v16 = *(a7 + 80);
  *&v16.f64[0] = vcvt_f32_f64(v16);
  v17 = *(a7 + 112);
  v18 = *(a7 + 128);
  *&v17.f64[0] = vcvt_f32_f64(v17);
  *&v18.f64[0] = vcvt_f32_f64(v18);
  v19 = vzip1q_s32(v14, v17);
  v20 = vzip1q_s32(v15, v18);
  v21 = vzip2q_s32(vcvt_hight_f32_f64(*(a7 + 96), *(a7 + 96)), 0);
  v65 = vzip1q_s32(v19, v16);
  v66 = vzip1q_s32(v20, v21);
  v63 = vzip2q_s32(v19, vdupq_lane_s32(*&v16.f64[0], 1));
  v64 = vzip2q_s32(v20, v21);
  v22 = sub_2956FC2A8(&v71, &v69, &v67);
  if (v22)
  {
    v43 = v22;
    sub_295707A60();
  }

  else
  {
    v23 = sub_2956FC5C0(a7, v95, v71, v72, v73, v74, v69, v70, v67, v68);
    if (v23)
    {
      v43 = v23;
      sub_295707AB8();
    }

    else
    {
      v24 = *(a5 + 96);
      v25 = *(a5 + 128);
      v26 = *(a5 + 144);
      v92 = *(a5 + 112);
      v93 = v25;
      v94 = v26;
      v27 = *(a5 + 32);
      v28 = *(a5 + 64);
      v29 = *(a5 + 80);
      v88 = *(a5 + 48);
      v89 = v28;
      v90 = v29;
      v91 = v24;
      v30 = *(a5 + 16);
      v85 = *a5;
      v86 = v30;
      *&v24 = *(a5 + 16);
      *v30.f64 = *(a5 + 24);
      v86 = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(v69, *&v24), v70, *v30.f64));
      v87 = v27;
      v31 = *(a6 + 96);
      v32 = *(a6 + 128);
      v33 = *(a6 + 144);
      v82 = *(a6 + 112);
      v83 = v32;
      v84 = v33;
      v34 = *(a6 + 32);
      v35 = *(a6 + 64);
      v36 = *(a6 + 80);
      v78 = *(a6 + 48);
      v79 = v35;
      v80 = v36;
      v81 = v31;
      v37 = *(a6 + 16);
      v75 = *a6;
      v76 = v37;
      *&v31 = *(a6 + 16);
      *&v32 = *(a6 + 24);
      v76 = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(v67, *&v31), v68, *&v32));
      v77 = v34;
      v38 = sub_2956FC6B8(a2, a4, *(a1 + 2896), v69, v70);
      if (v38)
      {
        v43 = v38;
        sub_295707B10();
      }

      else
      {
        v39 = sub_2956FC6B8(a3, a4, *(a1 + 2904), v67, v68);
        if (v39)
        {
          v43 = v39;
          sub_295707B68();
        }

        else
        {
          v40 = sub_295705E48(a1, *(a1 + 2896), *(a1 + 2904), a4, &v85, &v75, v95);
          if (v40)
          {
            v43 = v40;
            sub_295707BC0();
          }

          else
          {
            v97.columns[0] = v69;
            v97.columns[1] = v70;
            v41 = __invert_f2(v97);
            v98.columns[0] = v67;
            v98.columns[1] = v68;
            v42 = __invert_f2(v98);
            v43 = sub_2956FC5C0(v95, a7, v65, v63, v66, v64, v41.columns[0], v41.columns[1], v42.columns[0], v42.columns[1]);
            if (v43)
            {
              sub_295707C18();
            }

            else
            {
              v99.columns[0] = v69;
              v99.columns[1] = v70;
              v44 = __invert_f2(v99);
              v45 = v91;
              v46 = v93;
              v47 = v94;
              *(a5 + 112) = v92;
              *(a5 + 128) = v46;
              *(a5 + 144) = v47;
              v48 = v87;
              v49 = v89;
              v50 = v90;
              *(a5 + 48) = v88;
              *(a5 + 64) = v49;
              *(a5 + 80) = v50;
              *(a5 + 96) = v45;
              v51 = v86;
              *a5 = v85;
              *(a5 + 16) = v51;
              *&v45 = v86.f64[0];
              v52 = vmul_n_f32(v44.columns[0], *&v45);
              *&v45 = v86.f64[1];
              *(a5 + 16) = vcvtq_f64_f32(vmla_n_f32(v52, v44.columns[1], *&v45));
              *(a5 + 32) = v48;
              v100.columns[0] = v67;
              v100.columns[1] = v68;
              v53 = __invert_f2(v100);
              v54 = v81;
              v55 = v83;
              v56 = v84;
              *(a6 + 112) = v82;
              *(a6 + 128) = v55;
              *(a6 + 144) = v56;
              v57 = v77;
              v58 = v79;
              v59 = v80;
              *(a6 + 48) = v78;
              *(a6 + 64) = v58;
              *(a6 + 80) = v59;
              *(a6 + 96) = v54;
              v60 = v76;
              *a6 = v75;
              *(a6 + 16) = v60;
              *&v54 = v76.f64[0];
              v61 = vmul_n_f32(v53.columns[0], *&v54);
              *&v54 = v76.f64[1];
              *(a6 + 16) = vcvtq_f64_f32(vmla_n_f32(v61, v53.columns[1], *&v54));
              *(a6 + 32) = v57;
            }
          }
        }
      }
    }
  }

  return v43;
}

__n128 sub_2956FC154@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = &v22;
  v4 = 1;
  do
  {
    v5 = a1[3];
    v24 = a1[2];
    v25 = v5;
    v6 = a1[7];
    v28 = a1[6];
    v29 = v6;
    v7 = a1[5];
    v26 = a1[4];
    v27 = v7;
    v33 = *(a1 + 22);
    v8 = a1[10];
    v31 = a1[9];
    v32 = v8;
    v30 = a1[8];
    v9 = a1[1];
    v22 = *a1;
    v23 = v9;
    *&v9 = *(&v32 + v2 + 1);
    *&v8 = *&v9 * *v3;
    *(&v23 + v2) = *&v9 * *(&v23 + v2);
    v10 = v4;
    *(&v24 + v2) = *&v9 * *(&v24 + v2);
    *v3 = v8;
    *(&v32 + v2 + 1) = 0x3FF0000000000000;
    v42 = v30;
    v43 = v31;
    v44 = v32;
    v45 = v33;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v11 = v31;
    a1[8] = v30;
    a1[9] = v11;
    a1[10] = v44;
    *(a1 + 22) = v45;
    v12 = v39;
    a1[4] = v38;
    a1[5] = v12;
    v13 = v41;
    a1[6] = v40;
    a1[7] = v13;
    v14 = v35;
    *a1 = v34;
    a1[1] = v14;
    v15 = v37;
    v3 = &v22 + 1;
    v2 = 1;
    a1[2] = v36;
    a1[3] = v15;
    v4 = 0;
  }

  while ((v10 & 1) != 0);
  v16 = a1[9];
  *(a2 + 128) = a1[8];
  *(a2 + 144) = v16;
  *(a2 + 160) = a1[10];
  *(a2 + 176) = *(a1 + 22);
  v17 = a1[5];
  *(a2 + 64) = a1[4];
  *(a2 + 80) = v17;
  v18 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v18;
  v19 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v19;
  result = a1[2];
  v21 = a1[3];
  *(a2 + 32) = result;
  *(a2 + 48) = v21;
  return result;
}

uint64_t sub_2956FC5C0(__int128 *a1, uint64_t a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, float32x2_t a7, float32x2_t a8, float32x2_t a9, float32x2_t a10)
{
  if (!a1)
  {
    sub_295708140();
    return 4294954516;
  }

  if (!a2)
  {
    sub_2957080E8();
    return 4294954516;
  }

  result = 0;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v14;
  *a2 = v12;
  *(a2 + 16) = v13;
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[7];
  *(a2 + 96) = a1[6];
  *(a2 + 112) = v17;
  *(a2 + 64) = v15;
  *(a2 + 80) = v16;
  v18 = a1[8];
  v19 = a1[9];
  v20 = a1[10];
  *(a2 + 176) = *(a1 + 22);
  *(a2 + 144) = v19;
  *(a2 + 160) = v20;
  *(a2 + 128) = v18;
  *&v18 = *(a1 + 2);
  *&v20 = *(a1 + 4);
  v21 = vmla_n_f32(vmul_n_f32(a7, *&v18), a8, *&v20);
  v22 = *(a1 + 3);
  *&v18 = *(a1 + 5);
  v23 = vmla_n_f32(vmul_n_f32(a9, v22), a10, *&v18);
  *(a2 + 16) = vcvtq_f64_f32(vzip1_s32(v21, v23));
  *(a2 + 32) = vcvtq_f64_f32(vzip2_s32(v21, v23));
  *(a2 + 48) = vcvtq_f64_f32(vzip1_s32(*a3.i8, *a4.i8));
  *(a2 + 64) = vcvtq_f64_f32(vzip1_s32(*a5.i8, *a6.i8));
  *(a2 + 80) = vcvtq_f64_f32(vzip2_s32(*a3.i8, *a4.i8));
  *(a2 + 96) = vcvtq_f64_f32(vzip2_s32(*a5.i8, *a6.i8));
  *(a2 + 112) = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  *(a2 + 128) = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL)));
  return result;
}

uint64_t sub_2956FC6B8(uint64_t a1, int a2, float64x2_t *a3, float32x2_t a4, float32x2_t a5)
{
  if (!a1)
  {
    sub_2957081F0();
    return 4294954516;
  }

  if (!a3)
  {
    sub_295708198();
    return 4294954516;
  }

  if (a2 >= 1)
  {
    v5 = a2;
    v6 = (a1 + 8);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      *a3++ = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(a4, v7), a5, v8));
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

double *sub_2956FC724@<X0>(double *result@<X0>, double *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 144);
  *(a5 + 128) = *(a4 + 128);
  *(a5 + 144) = v5;
  *(a5 + 160) = *(a4 + 160);
  *(a5 + 176) = *(a4 + 176);
  v6 = *(a4 + 80);
  *(a5 + 64) = *(a4 + 64);
  *(a5 + 80) = v6;
  v7 = *(a4 + 112);
  *(a5 + 96) = *(a4 + 96);
  *(a5 + 112) = v7;
  v8 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v8;
  v9 = *(a4 + 48);
  *(a5 + 32) = *(a4 + 32);
  *(a5 + 48) = v9;
  if (a3 < 1)
  {
    v14 = 0.0;
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  else
  {
    v10 = a3;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    do
    {
      v15 = *result;
      result += 2;
      v16 = v15;
      v17 = *a2;
      a2 += 2;
      v14 = v14 + v16 * v17;
      v11 = v11 + v16;
      v12 = v12 + v17;
      v13 = v13 + v17 * v17;
      --v10;
    }

    while (v10);
  }

  v18 = v13 * a3 - v12 * v12;
  if (v18 <= 0.0)
  {
    return sub_2957082F8();
  }

  v19 = (a3 * v14 - v11 * v12) / v18;
  if (v19 <= 0.0)
  {
    return sub_2957082A0();
  }

  v20 = *(a4 + 8);
  v22 = *(a4 + 16);
  v21 = *(a4 + 24);
  v23 = *(a4 + 64);
  v24 = *(a4 + 128);
  *(a5 + 8) = *a4 / v19;
  if (v24 <= 0.0)
  {
    return sub_295708248();
  }

  *(a5 + 24) = v21 - (v21 - v20 * (v23 / v24)) + (v22 - (v13 * v11 - v14 * v12) / v18) / v19;
  return result;
}

uint64_t sub_2956FC848(float64x2_t *a1, int a2, float64x2_t *a3, float64x2_t *a4)
{
  if (!a1)
  {
    sub_295708458();
    return 4294954516;
  }

  if (a2 <= 0)
  {
    sub_295708400();
    return 4294954516;
  }

  if (!a3)
  {
    sub_2957083A8();
    return 4294954516;
  }

  if (!a4)
  {
    sub_295708350();
    return 4294954516;
  }

  v4 = 0;
  memset(v11, 0, sizeof(v11));
  v5 = a3 + 6;
  v6 = a3->f64[0];
  v7 = vdupq_lane_s64(COERCE__INT64(a3->f64[1] * a3->f64[0]), 0);
  do
  {
    v8 = v5[-4];
    v9 = *v5++;
    v11[v4++] = vmlaq_f64(v8, v9, v7);
  }

  while (v4 != 4);
  v7.f64[0] = a3[1].f64[0];
  sub_2956FC8EC(a1, a2, v11, a4, v7, a3[1].f64[1], v6);
  return 0;
}

float64x2_t *sub_2956FC8EC(float64x2_t *result, int a2, double *a3, float64x2_t *a4, float64x2_t a5, float64_t a6, double a7)
{
  if (a2 >= 1)
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = a3[2];
    v10 = a3[3];
    v11 = a3[4];
    v12 = a3[5];
    v13 = a2;
    v14 = a3[6];
    v15 = a3[7];
    a5.f64[1] = a6;
    do
    {
      v16 = *result++;
      v17 = vsubq_f64(v16, a5);
      v18 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v17, v17).f64[1]) + v17.f64[0] * v17.f64[0]);
      v19 = v18 * a7 * (v18 * a7);
      v20 = v19 * (v19 * v19);
      v21 = (v7 + v8 * v19 + v9 * (v19 * v19) + v10 * v20 + v11 * (v19 * v19 * (v19 * v19)) + v12 * (v19 * v19 * v20) + v14 * (v20 * v20) + v15 * (v19 * v19 * (v19 * v19) * v20)) / 100.0 + 1.0;
      if (v21 <= 0.0)
      {
        v22 = 1.0;
      }

      else
      {
        v22 = 1.0 / v21;
      }

      *a4++ = vaddq_f64(vmulq_n_f64(v17, v22), a5);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_2956FC99C(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  if (!a1)
  {
    sub_295708790();
    return 4294954516;
  }

  if (!a2)
  {
    sub_295708738();
    return 4294954516;
  }

  if (!a3)
  {
    sub_2957086E0();
    return 4294954516;
  }

  if (!a4)
  {
    sub_295708688();
    return 4294954516;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113.i32[2] = 0;
  v113.i64[0] = 0;
  result = sub_2956FD118(a1, &v126, &v123, &v120, &v113, &v117, &v114);
  v12 = v120;
  v13 = v121;
  v14 = v122;
  v15 = vzip1q_s32(v120, v122);
  v16 = vzip1q_s32(v121, 0);
  v17 = vtrn2q_s32(v120, v121);
  v17.i32[2] = v122.i32[1];
  v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(v15, v16), v113.f32[0]), v17, *v113.f32, 1), vzip1q_s32(vzip2q_s32(v120, v122), vdupq_laneq_s32(v121, 2)), v113, 2);
  v19 = vmulq_f32(v18, v18);
  *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  v21 = vrsqrte_f32(v20);
  v22 = vmul_f32(v21, vrsqrts_f32(v20, vmul_f32(v21, v21)));
  v23 = vmulq_n_f32(vnegq_f32(v18), vmul_f32(v22, vrsqrts_f32(v20, vmul_f32(v22, v22))).f32[0]);
  v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
  v25 = vmlaq_f32(vmulq_f32(v24, xmmword_29570C940), xmmword_29570C950, v23);
  v26 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v27 = vmulq_f32(v25, v25);
  *&v28 = v27.f32[1] + (v27.f32[2] + v27.f32[0]);
  *v27.f32 = vrsqrte_f32(v28);
  *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
  v29 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  v30 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), vnegq_f32(v23)), v29, v24);
  v31 = vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL);
  v32 = vmulq_f32(v30, v30);
  v19.f32[0] = *&v32.i32[1] + (*&v32.i32[2] + *v32.i32);
  *v32.i8 = vrsqrte_f32(v19.u32[0]);
  *v32.i8 = vmul_f32(*v32.i8, vrsqrts_f32(v19.u32[0], vmul_f32(*v32.i8, *v32.i8)));
  v33 = vmulq_n_f32(v31, vmul_f32(*v32.i8, vrsqrts_f32(v19.u32[0], vmul_f32(*v32.i8, *v32.i8))).f32[0]);
  v31.i32[0] = 1.0;
  v32.i64[0] = 0x8000000080000000;
  v32.i64[1] = 0x8000000080000000;
  v34 = vbslq_s8(v32, v31, v23);
  v35 = vmulq_n_f32(v23, *v34.i32);
  v34.i32[0] = v29.i32[1];
  v36 = vmulq_n_f32(v29, *vbslq_s8(v32, v31, v34).i32);
  v29.i32[0] = v33.i32[2];
  v37 = vmulq_n_f32(v33, *vbslq_s8(v32, v31, v29).i32);
  v38 = vzip1q_s32(v35, v37);
  v39 = vzip1q_s32(v36, 0);
  v40 = vtrn2q_s32(v35, v36);
  v40.i32[2] = v37.i32[1];
  v41 = vaddq_f32(vzip1q_s32(vzip2q_s32(v35, v37), vdupq_laneq_s32(v36, 2)), vmlaq_f32(vmulq_f32(vzip1q_s32(v38, v39), 0), 0, v40));
  if (v41.f32[2] <= 0.0)
  {
    sub_295708630();
    return 4294954516;
  }

  v42 = 0;
  v43 = vzip1q_s32(v120, v121);
  v43.i32[2] = v122.i32[0];
  v44 = vzip2q_s32(v15, v16);
  v45 = vzip2q_s32(v120, v121);
  v45.i32[2] = v122.i32[2];
  v46 = vzip1q_s32(v35, v36);
  v46.i32[2] = v37.i32[0];
  v47 = vzip2q_s32(v38, v39);
  v48 = vzip2q_s32(v35, v36);
  v48.i32[2] = v37.i32[2];
  v49 = vzip1q_s32(v46, v48);
  v50 = vzip1q_s32(v47, 0);
  v51 = vdupq_lane_s32(*v37.i8, 1);
  v52 = vzip2q_s32(v49, v50);
  v53 = vdupq_laneq_s32(v41, 2);
  v54 = vdivq_f32(v41, v53);
  v53.f32[0] = -*v54.i32;
  v55 = vdupq_lane_s32(*v53.f32, 0);
  __asm { FMOV            V29.4S, #1.0 }

  v60.i64[1] = _Q29.i64[1];
  v60.i64[0] = v54.i64[0];
  v61 = v117;
  v62 = v118;
  v63 = v119;
  v129 = v117;
  v130 = v118;
  v131 = v119;
  v132 = 0uLL;
  v133 = 0uLL;
  v134 = 0uLL;
  do
  {
    *(&v132 + v42 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29570C950, COERCE_FLOAT(*(&v129 + v42 * 4))), xmmword_29570C960, *&v129.f32[v42], 1), v60, *(&v129 + v42 * 4), 2);
    v42 += 4;
  }

  while (v42 != 12);
  v64 = 0;
  v65 = vzip1q_s32(v49, v50);
  v66 = vzip2q_s32(v46, vuzp1q_s32(v46, v51));
  v66.i32[2] = v48.i32[2];
  v67 = vzip2q_s32(v55, _Q29);
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v64 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(&v129 + v64 * 4))), v52, *&v129.f32[v64], 1), v66, *(&v129 + v64 * 4), 2);
    v64 += 4;
  }

  while (v64 != 12);
  v68 = 0;
  v70 = v132;
  v69 = v133;
  v71 = v134;
  v72 = v126;
  v73 = v127;
  v74 = v128;
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v68 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v129 + v68 * 4))), v73, *&v129.f32[v68], 1), v74, *(&v129 + v68 * 4), 2);
    v68 += 4;
  }

  while (v68 != 12);
  v75 = 0;
  v77 = v132;
  v76 = v133;
  v78 = v134;
  v129 = v70;
  v130 = v69;
  v131 = v71;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v75 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v129 + v75 * 4))), v13, *&v129.f32[v75], 1), v14, *(&v129 + v75 * 4), 2);
    v75 += 4;
  }

  while (v75 != 12);
  v79 = 0;
  v80 = v76;
  v80.i32[3] = 0;
  *v54.i32 = -*&v54.i32[1];
  v81 = vzip1q_s32(v67, v54);
  v82 = v123;
  v83 = v124;
  v84 = v125;
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v79 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, COERCE_FLOAT(*(&v129 + v79 * 4))), v83, *&v129.f32[v79], 1), v84, *(&v129 + v79 * 4), 2);
    v79 += 4;
  }

  while (v79 != 12);
  v85 = 0;
  v86 = v77;
  v86.i32[3] = 0;
  v87 = v132;
  v88 = v133;
  v89 = v134;
  v129 = v61;
  v130 = v62;
  v131 = v63;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v85 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&v129 + v85 * 4))), v47, *&v129.f32[v85], 1), v48, *(&v129 + v85 * 4), 2);
    v85 += 4;
  }

  while (v85 != 12);
  v90 = 0;
  v91 = v78;
  v91.i32[3] = 0;
  v92 = v88;
  v92.i32[3] = 0;
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v90 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29570C950, COERCE_FLOAT(*(&v129 + v90 * 4))), xmmword_29570C960, *&v129.f32[v90], 1), v81, *(&v129 + v90 * 4), 2);
    v90 += 4;
  }

  while (v90 != 12);
  v93 = 0;
  v94 = v87;
  v94.i32[3] = 0;
  v129 = v132;
  v130 = v133;
  v131 = v134;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  do
  {
    *(&v132 + v93 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v129 + v93 * 4))), v73, *&v129.f32[v93], 1), v74, *(&v129 + v93 * 4), 2);
    v93 += 4;
  }

  while (v93 != 12);
  v95 = vaddq_f32(v78, vmlaq_f32(vmulq_f32(v77, 0), 0, v76));
  if (v95.f32[2] <= 0.01 || v95.f32[2] >= 100.0)
  {
    sub_2957085D0();
    return 4294954516;
  }

  v97 = vaddq_f32(v89, vmlaq_f32(vmulq_f32(v87, 0), 0, v88));
  if (v97.f32[2] <= 0.01 || v97.f32[2] >= 100.0)
  {
    sub_295708570();
    return 4294954516;
  }

  v99 = v132;
  v100 = v133;
  v101 = v134;
  v102 = vaddq_f32(v134, vmlaq_f32(vmulq_f32(v132, 0), 0, v133));
  if (v102.f32[2] <= 0.01 || v102.f32[2] >= 100.0)
  {
    sub_295708510();
    return 4294954516;
  }

  if (a5)
  {
    v104 = 0;
    v129 = v114;
    v130 = v115;
    v131 = v116;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    do
    {
      *(&v132 + v104 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v129 + v104 * 4))), v44, *&v129.f32[v104], 1), v45, *(&v129 + v104 * 4), 2);
      v104 += 4;
    }

    while (v104 != 12);
    v105 = 0;
    v129 = v132;
    v130 = v133;
    v131 = v134;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    do
    {
      *(&v132 + v105 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&v129 + v105 * 4))), v47, *&v129.f32[v105], 1), v48, *(&v129 + v105 * 4), 2);
      v105 += 4;
    }

    while (v105 != 12);
    v106 = 0;
    v129 = v132;
    v130 = v133;
    v131 = v134;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    do
    {
      *(&v132 + v106 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29570C950, COERCE_FLOAT(*(&v129 + v106 * 4))), xmmword_29570C960, *&v129.f32[v106], 1), v81, *(&v129 + v106 * 4), 2);
      v106 += 4;
    }

    while (v106 != 12);
    v107 = 0;
    v129 = v132;
    v130 = v133;
    v131 = v134;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    do
    {
      *(&v132 + v107 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, COERCE_FLOAT(*(&v129 + v107 * 4))), v73, *&v129.f32[v107], 1), v74, *(&v129 + v107 * 4), 2);
      v107 += 4;
    }

    while (v107 != 12);
    v109 = v132;
    v108 = v133;
    v110 = v134;
    v111 = vaddq_f32(v134, vmlaq_f32(vmulq_f32(v132, 0), 0, v133));
    if (v111.f32[2] <= 0.01 || v111.f32[2] >= 100.0)
    {
      sub_2957084B0();
      return 4294954516;
    }

    v110.i32[3] = 0;
    v108.i32[3] = 0;
    v109.i32[3] = 0;
    *a5 = v109;
    a5[1] = v108;
    a5[2] = v110;
  }

  v89.i32[3] = 0;
  v99.i32[3] = 0;
  v100.i32[3] = 0;
  v101.i32[3] = 0;
  *a2 = v86;
  a2[1] = v80;
  a2[2] = v91;
  *a3 = v94;
  a3[1] = v92;
  a3[2] = v89;
  *a4 = v99;
  a4[1] = v100;
  a4[2] = v101;
  if (a6)
  {
    *a6 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, v18.f32[0]), v47, *v18.f32, 1), v48, v18, 2);
  }

  return result;
}

uint64_t sub_2956FD118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    sub_295708940();
    return 4294954516;
  }

  if (a2)
  {
    *&v7 = *a1;
    *&v8 = *(a1 + 16);
    LODWORD(v9) = 0;
    HIDWORD(v9) = v7;
    v10 = *(a1 + 32);
    *(&v8 + 1) = v10;
    *(a2 + 8) = 0;
    *a2 = v7;
    *(a2 + 24) = 0;
    *(a2 + 16) = v9;
    *(a2 + 40) = 1065353216;
    *(a2 + 32) = v8;
  }

  if (a3)
  {
    *&v11 = *(a1 + 8);
    *&v12 = *(a1 + 24);
    LODWORD(v13) = 0;
    HIDWORD(v13) = v11;
    v14 = *(a1 + 40);
    *(&v12 + 1) = v14;
    *(a3 + 8) = 0;
    *a3 = v11;
    *(a3 + 24) = 0;
    *(a3 + 16) = v13;
    *(a3 + 40) = 1065353216;
    *(a3 + 32) = v12;
  }

  if (a4)
  {
    v15 = 0;
    v24 = *(a1 + 48);
    v16 = vcvt_f32_f64(v24);
    v24.f32[0] = *(a1 + 64);
    v17 = *(a1 + 80);
    v18 = *(a1 + 96);
    v19 = *(a1 + 112);
    *&v19.f64[0] = vcvt_f32_f64(v19);
    v20 = *(a1 + 128);
    *v21.i8 = vzip2_s32(v16, *&v19.f64[0]);
    v21.i64[1] = v21.i64[0];
    v22 = vuzp1q_s32(vcvt_hight_f32_f64(v16, v17), v19);
    v24.f32[1] = v18;
    v23 = vzip2q_s32(v21, vdupq_lane_s32(vcvt_f32_f64(v17), 1));
    v24.f32[2] = v20;
    v44 = xmmword_29570C970;
    v45 = xmmword_29570C980;
    v46 = xmmword_29570C8F0;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    do
    {
      *(&v47 + v15) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v44 + v15))), v23, *(&v44 + v15), 1), v24, *(&v44 + v15), 2);
      v15 += 16;
    }

    while (v15 != 48);
    v25 = 0;
    v44 = v47;
    v45 = v48;
    v46 = v49;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    do
    {
      *(&v47 + v25) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29570C970, COERCE_FLOAT(*(&v44 + v25))), xmmword_29570C980, *(&v44 + v25), 1), xmmword_29570C8F0, *(&v44 + v25), 2);
      v25 += 16;
    }

    while (v25 != 48);
    v26 = v47;
    v27 = v48;
    v28 = v49;
    *(a4 + 8) = DWORD2(v47);
    *(a4 + 24) = DWORD2(v27);
    *a4 = v26;
    *(a4 + 16) = v27;
    *(a4 + 40) = DWORD2(v28);
    *(a4 + 32) = v28;
  }

  if (a5)
  {
    v29 = *(a1 + 72);
    v30 = *(a1 + 104);
    v31 = *(a1 + 136);
    *a5 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_29570C970, v29), xmmword_29570C980, v30), xmmword_29570C8F0, v31);
  }

  if (a6)
  {
    v32 = *a1;
    if (v32 > 0.0)
    {
      v33 = *(a1 + 32);
      v34 = *(a1 + 16);
      *&v35 = -v34 / v32;
      LODWORD(v36) = 0;
      *(&v36 + 1) = 1.0 / v32;
      *(&v35 + 1) = -v33 / v32;
      *(a6 + 8) = 0;
      *a6 = COERCE_UNSIGNED_INT(1.0 / v32);
      *(a6 + 24) = 0;
      *(a6 + 16) = v36;
      *(a6 + 40) = 1065353216;
      *(a6 + 32) = v35;
      goto LABEL_17;
    }

    sub_2957087E8();
    return 4294954516;
  }

LABEL_17:
  if (!a7)
  {
    return 0;
  }

  v37 = *(a1 + 8);
  if (v37 <= 0.0)
  {
    sub_295708894();
    return 4294954516;
  }

  v38 = 0;
  v39 = *(a1 + 40);
  v40 = *(a1 + 24);
  *&v41 = -v40 / v37;
  LODWORD(v42) = 0;
  *(&v42 + 1) = 1.0 / v37;
  *(&v41 + 1) = -v39 / v37;
  *(a7 + 40) = 1065353216;
  *(a7 + 8) = 0;
  *a7 = COERCE_UNSIGNED_INT(1.0 / v37);
  *(a7 + 24) = 0;
  *(a7 + 16) = v42;
  *(a7 + 32) = v41;
  return v38;
}

double sub_2956FD42C@<D0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = 0;
  v5 = a1[9];
  v85 = a1[8];
  v86 = v5;
  v87 = a1[10];
  v88 = *(a1 + 22);
  v6 = a1[5];
  v81 = a1[4];
  v82 = v6;
  v7 = a1[7];
  v83 = a1[6];
  v84 = v7;
  v8 = a1[1];
  v77 = *a1;
  v78 = v8;
  v9 = &v77;
  v10 = a1[3];
  v11 = 1;
  v79 = a1[2];
  v80 = v10;
  do
  {
    v12 = v11;
    v13 = *(&v78 + v4);
    *v9 = *v9 * a4;
    *(&v78 + v4) = v13 * a4;
    *(&v79 + v4) = *(&v79 + v4) * a4;
    v9 = &v77 + 1;
    v4 = 1;
    v11 = 0;
  }

  while ((v12 & 1) != 0);
  v14 = 0;
  v15 = &v65;
  v16 = v84;
  a1[6] = v83;
  a1[7] = v16;
  v17 = v82;
  a1[4] = v81;
  a1[5] = v17;
  *(a1 + 22) = v88;
  v18 = v87;
  a1[9] = v86;
  a1[10] = v18;
  a1[8] = v85;
  v19 = v78;
  *a1 = v77;
  a1[1] = v19;
  v20 = v80;
  a1[2] = v79;
  a1[3] = v20;
  v21 = 1.0 - a4;
  v22 = a2[9];
  v73 = a2[8];
  v74 = v22;
  v75 = a2[10];
  v76 = *(a2 + 22);
  v23 = a2[5];
  v69 = a2[4];
  v70 = v23;
  v24 = a2[7];
  v71 = a2[6];
  v72 = v24;
  v25 = a2[1];
  v65 = *a2;
  v66 = v25;
  v26 = a2[3];
  v27 = 1;
  v67 = a2[2];
  v68 = v26;
  do
  {
    v28 = v27;
    v29 = *(&v66 + v14);
    *v15 = v21 * *v15;
    *(&v66 + v14) = v21 * v29;
    *(&v67 + v14) = v21 * *(&v67 + v14);
    v15 = &v65 + 1;
    v14 = 1;
    v27 = 0;
  }

  while ((v28 & 1) != 0);
  v30 = 0;
  v31 = v74;
  a2[8] = v73;
  a2[9] = v31;
  a2[10] = v75;
  *(a2 + 22) = v76;
  v32 = v70;
  a2[4] = v69;
  a2[5] = v32;
  v33 = v72;
  a2[6] = v71;
  a2[7] = v33;
  v34 = v66;
  *a2 = v65;
  a2[1] = v34;
  v35 = v68;
  a2[2] = v67;
  a2[3] = v35;
  v36 = a1[9];
  v61 = a1[8];
  v62 = v36;
  v63 = a1[10];
  v64 = *(a1 + 22);
  v37 = a1[5];
  v57 = a1[4];
  v58 = v37;
  v38 = a1[7];
  v59 = a1[6];
  v60 = v38;
  v39 = a1[1];
  v53 = *a1;
  v54 = v39;
  v40 = a1[2];
  v41 = a1[3];
  v42 = &v53;
  v43 = &v65;
  v44 = 1;
  v55 = v40;
  v56 = v41;
  do
  {
    *(&v54 + v30) = *(&v66 + v30) + *(&v54 + v30);
    v45 = v44;
    v46 = *v43;
    *(&v55 + v30) = *(&v67 + v30) + *(&v55 + v30);
    *v42 = v46 + *v42;
    v43 = &v65 + 1;
    v42 = &v53 + 1;
    v30 = 1;
    v44 = 0;
  }

  while ((v45 & 1) != 0);
  v47 = v62;
  *(a3 + 128) = v61;
  *(a3 + 144) = v47;
  *(a3 + 160) = v63;
  *(a3 + 176) = v64;
  v48 = v58;
  *(a3 + 64) = v57;
  *(a3 + 80) = v48;
  v49 = v60;
  *(a3 + 96) = v59;
  *(a3 + 112) = v49;
  v50 = v54;
  *a3 = v53;
  *(a3 + 16) = v50;
  result = *&v55;
  v52 = v56;
  *(a3 + 32) = v55;
  *(a3 + 48) = v52;
  return result;
}

void *sub_2956FD6B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char __src)
{

  return memcpy(v40, &__src, 0xB8uLL);
}

void *sub_2956FD710(void *a1)
{

  return memcpy(a1, v1, 0xB8uLL);
}

void *sub_2956FD728()
{

  return malloc_type_malloc(v0, v1);
}

double sub_2956FD874(void *a1, uint64_t a2, double *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = a1;
    objc_msgSend_stringWithUTF8String_(v5, v7, a2, v8, v9, v10);
    Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();

    if (Float32IfPresent)
    {
      result = 0.0;
      *a3 = 0.0;
    }
  }

  return result;
}

float sub_2956FD910(void *a1, uint64_t a2, _DWORD *a3)
{
  if (a1 && a2 && a3)
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = a1;
    objc_msgSend_stringWithUTF8String_(v5, v7, a2, v8, v9, v10);
    Float32IfPresent = FigCFDictionaryGetFloat32IfPresent();

    if (Float32IfPresent)
    {
      result = 0.0;
      *a3 = 0;
    }
  }

  return result;
}

double *sub_2956FDA20@<X0>(double *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 248) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  v4 = *result;
  v3 = result[1];
  v6 = result[2];
  v5 = result[3];
  v8 = result[4];
  v7 = result[5];
  v9 = -1.0 / *result;
  v10 = v6 / *result;
  v11 = v8 / *result;
  v12 = -1.0 / v3;
  v13 = v5 / v3;
  v14 = v7 / v3;
  v15 = result[6];
  v16 = result[7];
  v17 = result[10];
  v18 = result[11];
  v19 = result[14];
  v20 = result[15];
  v22 = result[8];
  v21 = result[9];
  v23 = result[12];
  v24 = result[13];
  v25 = result[16];
  v26 = result[17];
  v27 = v24 * v19 - v26 * v17;
  v28 = v24 * v20 - v26 * v18;
  v29 = v24 * v25 - v26 * v23;
  v30 = v26 * v15 - v21 * v19;
  v31 = v26 * v16 - v21 * v20;
  v32 = v26 * v22 - v21 * v25;
  v33 = v21 * v17 - v24 * v15;
  v34 = v21 * v18 - v24 * v16;
  v35 = v21 * v23 - v24 * v22;
  v36 = v9 * v27;
  v37 = v9 * v30;
  v38 = v9 * v33;
  v39 = v9 * v28;
  v40 = v9 * v31;
  v41 = v9 * v34;
  v42 = v29 + v11 * v28 + v10 * v27;
  v43 = v32 + v11 * v31 + v10 * v30;
  *a3 = -1.0 / v3 * v36;
  *(a3 + 8) = -1.0 / v3 * v39;
  *(a3 + 16) = -1.0 / v3 * v42;
  *(a3 + 24) = -1.0 / v3 * v37;
  *(a3 + 32) = -1.0 / v3 * v40;
  *(a3 + 40) = -1.0 / v3 * v43;
  *(a3 + 48) = v38 + v7 / v3 * v37 + v36 * (v5 / v3);
  *(a3 + 56) = v41 + v7 / v3 * v40 + v39 * (v5 / v3);
  *(a3 + 64) = v35 + v11 * v34 + v10 * v33 + v7 / v3 * v43 + v42 * (v5 / v3);
  if (a2)
  {
    v44 = v12 * v27;
    v45 = v12 * v28;
    v46 = v12 * v30;
    v47 = v12 * v31;
    v48 = v33 + v14 * v30 + v13 * v27;
    v49 = v34 + v14 * v31 + v13 * v28;
    v50 = 1.0 / v4;
    v51 = v4 * v4;
    v52 = 1.0 / v51;
    v53 = -v6 / v51;
    v54 = -v8 / v51;
    v55 = 1.0 / v3;
    v56 = v3 * v3;
    *(a3 + 72) = v50 * v44;
    *(a3 + 80) = v50 * v46;
    *(a3 + 120) = v52 * v44;
    *(a3 + 128) = v52 * v45;
    *(a3 + 136) = v54 * v45 + v44 * v53;
    *(a3 + 144) = v52 * v46;
    *(a3 + 152) = v52 * v47;
    *(a3 + 160) = v54 * v47 + v46 * v53;
    v57 = -v7 / v56;
    *(a3 + 168) = v52 * v48;
    *(a3 + 176) = v52 * v49;
    *(a3 + 88) = v50 * v48;
    *(a3 + 96) = v55 * v36;
    *(a3 + 104) = v55 * v39;
    *(a3 + 112) = v55 * v42;
    *(a3 + 184) = v54 * v49 + v48 * v53;
    *(a3 + 192) = 1.0 / v56 * v36;
    *(a3 + 200) = 1.0 / v56 * v39;
    *(a3 + 208) = 1.0 / v56 * v42;
    *(a3 + 216) = 1.0 / v56 * v37;
    *(a3 + 224) = 1.0 / v56 * v40;
    v58 = 1.0 / v56 * v43;
    v59 = -v5 / v56;
    *(a3 + 232) = v58;
    *(a3 + 240) = v57 * v37 + v36 * v59;
    *(a3 + 248) = v57 * v40 + v39 * v59;
    *(a3 + 256) = v57 * v43 + v42 * v59;
  }

  return result;
}

double *sub_2956FDC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double *a5)
{
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = *(a4 + 144);
  v27[8] = *(a4 + 128);
  v27[9] = v9;
  v27[10] = *(a4 + 160);
  v28 = *(a4 + 176);
  v10 = *(a4 + 80);
  v27[4] = *(a4 + 64);
  v27[5] = v10;
  v11 = *(a4 + 112);
  v27[6] = *(a4 + 96);
  v27[7] = v11;
  v12 = *(a4 + 16);
  v27[0] = *a4;
  v27[1] = v12;
  v13 = *(a4 + 48);
  v27[2] = *(a4 + 32);
  v27[3] = v13;
  result = sub_2956FDA20(v27, 0, &v29);
  if (a3 >= 1)
  {
    v15 = v29;
    v16 = v30;
    v17 = v31;
    v18 = v32;
    v19 = a3;
    v20 = *&v33;
    v21 = (a2 + 8);
    v22 = (a1 + 8);
    do
    {
      v23 = *(v22 - 1);
      v24 = *&v16 + *(&v15 + 1) * *v22 + *&v15 * v23;
      v25 = *(&v17 + 1) + *&v17 * *v22 + *(&v16 + 1) * v23;
      v26 = v20 + *(&v18 + 1) * *v22 + *&v18 * v23 + *v21 * v25 + v24 * *(v21 - 1);
      *a5++ = sqrt(v26 * v26 / (v25 * v25 + v24 * v24) + 0.00155346992);
      v21 += 2;
      v22 += 2;
      --v19;
    }

    while (v19);
  }

  return result;
}

double sub_2956FDDD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double *a5)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = *(a4 + 144);
  v23[8] = *(a4 + 128);
  v23[9] = v9;
  v23[10] = *(a4 + 160);
  v24 = *(a4 + 176);
  v10 = *(a4 + 80);
  v23[4] = *(a4 + 64);
  v23[5] = v10;
  v11 = *(a4 + 112);
  v23[6] = *(a4 + 96);
  v23[7] = v11;
  v12 = *(a4 + 16);
  v23[0] = *a4;
  v23[1] = v12;
  v13 = *(a4 + 48);
  v23[2] = *(a4 + 32);
  v23[3] = v13;
  sub_2956FDA20(v23, 0, &v25);
  if (a3 < 1)
  {
    v17 = 0.0;
  }

  else
  {
    v14 = a3;
    v15 = (a2 + 8);
    v16 = (a1 + 8);
    v17 = 0.0;
    do
    {
      v18 = *(v16 - 1);
      v19 = *&v26 + *(&v25 + 1) * *v16 + *&v25 * v18;
      v20 = *(&v27 + 1) + *&v27 * *v16 + *(&v26 + 1) * v18;
      v21 = *&v29 + *(&v28 + 1) * *v16 + *&v28 * v18 + *v15 * v20 + v19 * *(v15 - 1);
      v17 = v17 + sqrt(v21 * v21 / (v20 * v20 + v19 * v19) + 0.00155346992);
      v15 += 2;
      v16 += 2;
      --v14;
    }

    while (v14);
  }

  result = v17 / a3;
  *a5 = result;
  return result;
}

double sub_2956FDF34(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double *a5, float64x2_t *a6)
{
  v65 = 0.0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = *(a4 + 144);
  v47[8] = *(a4 + 128);
  v47[9] = v11;
  v47[10] = *(a4 + 160);
  v48 = *(a4 + 176);
  v12 = *(a4 + 80);
  v47[4] = *(a4 + 64);
  v47[5] = v12;
  v13 = *(a4 + 112);
  v47[6] = *(a4 + 96);
  v47[7] = v13;
  v14 = *(a4 + 16);
  v47[0] = *a4;
  v47[1] = v14;
  v15 = *(a4 + 48);
  v47[2] = *(a4 + 32);
  v47[3] = v15;
  sub_2956FDA20(v47, 1, &v49);
  if (a3 < 1)
  {
    v22 = 0.0;
    v21 = 0.0;
    v20 = 0.0;
    v19 = 0uLL;
  }

  else
  {
    v16 = a3;
    v17 = (a2 + 8);
    v18 = (a1 + 8);
    v19 = 0uLL;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    do
    {
      v23 = *(v18 - 1);
      v24 = *(v17 - 1);
      v25 = *&v50 + *v18 * *(&v49 + 1) + *&v49 * v23;
      v26 = *(&v51 + 1) + *v18 * *&v51 + *(&v50 + 1) * v23;
      v27 = *v18 * *(&v55 + 1) + *&v55 * v23;
      v28 = *(&v57 + 1) + *v18 * *&v57 + *(&v56 + 1) * v23;
      v29 = *&v59 + *v18 * *(&v58 + 1) + *&v58 * v23;
      v30 = *v17 * v26 + v25 * v24 + *&v53 + *v18 * *(&v52 + 1) + *&v52 * v23;
      v31 = *&v62 + *v18 * *(&v61 + 1) + *&v61 * v23;
      v32 = *v17 * v29 + v24 * v28 + *(&v60 + 1) + *v18 * *&v60 + *(&v59 + 1) * v23;
      v33 = *(&v63 + 1) + *v18 * *&v63 + *(&v62 + 1) * v23;
      v34 = *v17 * *&v54 + v24 * *(&v53 + 1);
      v35 = *v17 * v33 + v24 * v31 + v65 + *v18 * *(&v64 + 1) + *&v64 * v23;
      v36 = v26 * v26 + v25 * v25;
      v37 = v26 * v29 + v25 * v28;
      v38 = v30 * v30 / v36;
      v39 = v30 / v36;
      v40 = v26 * v33 + v25 * v31;
      v41.f64[0] = *(&v54 + 1) + v34 - v39 * (v26 * *&v54 + v25 * *(&v53 + 1));
      v41.f64[1] = *&v56 + v27;
      v42 = v32 - v39 * v37;
      v43 = v35 - v39 * v40;
      v44 = sqrt(v38 + 0.00155346992);
      v45 = v39 / v44;
      v20 = v20 + v44;
      v19 = vaddq_f64(v19, vmulq_n_f64(v41, v45));
      v21 = v21 + v45 * v42;
      v22 = v22 + v45 * v43;
      v17 += 2;
      v18 += 2;
      --v16;
    }

    while (v16);
  }

  *a5 = v20 / a3;
  *a6 = vdivq_f64(v19, vdupq_lane_s64(COERCE__INT64(a3), 0));
  result = v21 / a3;
  a6[1].f64[0] = result;
  a6[1].f64[1] = v22 / a3;
  return result;
}

void *sub_2956FE248(void (*a1)(_OWORD *, uint64_t, double *, _BYTE *), void (*a2)(_BYTE *, uint64_t, double *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, double *a8, void *a9, uint64_t a10)
{
  v112 = 0;
  v111 = 0;
  memset(v110, 0, sizeof(v110));
  v10 = &unk_29570C9C0;
  memset(&__src[2], 0, 48);
  if (a8)
  {
    v10 = a8;
  }

  memset(__src, 0, 32);
  if (a5 >= 11)
  {
    sub_295708EC0();
LABEL_117:
    v79 = 0;
    v80 = 0;
    v22 = 0.0;
    v88 = 0.0;
    goto LABEL_110;
  }

  if (a5 <= 0)
  {
    sub_295708E68();
    goto LABEL_117;
  }

  v11 = *(v10 + 2);
  if (v11 >= 11)
  {
    sub_295708E10();
    goto LABEL_117;
  }

  if (v11 <= 0)
  {
    sub_295708DB8();
    goto LABEL_117;
  }

  v14 = 0;
  v86 = *(v10 + 14);
  v93 = *(v10 + 18);
  v15 = *v10;
  v16 = v10[2];
  v17 = v10[3];
  v18 = a5;
  v19 = v10[4];
  v83 = v19;
  v84 = v10[6];
  v87 = v10[5];
  do
  {
    v20 = *(a4 + v14);
    if (v20 >= *(a7 + v14))
    {
      v20 = *(a7 + v14);
    }

    if (v20 <= *(a6 + v14))
    {
      v20 = *(a6 + v14);
    }

    *(v110 + v14) = v20;
    v14 += 8;
  }

  while (8 * a5 != v14);
  v113 = 0.0;
  v21 = v10[8];
  a1(v110, a3, &v113, v108);
  v22 = v113;
  v23 = 8 * v18;
  __memcpy_chk();
  v24 = (v11 + 1) & 0xFFFFFFFE;
  v25 = vdupq_n_s64(v11 - 1);
  v26 = xmmword_29570C9B0;
  v27 = v107;
  v28 = vdupq_n_s64(2uLL);
  do
  {
    v29 = vmovn_s64(vcgeq_u64(v25, v26));
    if (v29.i8[0])
    {
      *(v27 - 1) = v22;
    }

    if (v29.i8[4])
    {
      *v27 = v22;
    }

    v26 = vaddq_s64(v26, v28);
    v27 += 2;
    v24 -= 2;
  }

  while (v24);
  if (v86 < 1)
  {
    v79 = 0;
    v88 = v22;
  }

  else
  {
    v91 = 0;
    v89 = v18 - 1;
    v82 = v22;
    v88 = v22;
    v30 = a5;
    while (1)
    {
      v31 = 0;
      v105 = 0.0;
      do
      {
        *&v114[v31 / 8] = *(v110 + v31) - *&v108[v31];
        v31 += 8;
      }

      while (v23 != v31);
      v32 = 0;
      do
      {
        v33 = *&v114[v32 / 8];
        if (v33 >= *(a7 + v32))
        {
          v33 = *(a7 + v32);
        }

        if (v33 <= *(a6 + v32))
        {
          v33 = *(a6 + v32);
        }

        *&v114[v32 / 8] = v33;
        v32 += 8;
      }

      while (v23 != v32);
      v34 = 0;
      do
      {
        *&v114[v34 / 8] = *&v114[v34 / 8] - *(v110 + v34);
        v34 += 8;
      }

      while (v23 != v34);
      v35 = 0;
      do
      {
        v36 = *&v114[v35 / 8];
        if (v36 < 0.0)
        {
          v36 = -v36;
        }

        *&v114[v35 / 8] = v36;
        v35 += 8;
      }

      while (v23 != v35);
      v37 = *v114;
      if (v30 != 1)
      {
        v38 = &v115;
        v39 = v89;
        do
        {
          v40 = *v38++;
          v41 = v40;
          if (v40 > v37)
          {
            v37 = v41;
          }

          --v39;
        }

        while (v39);
      }

      if (v37 <= v84)
      {
        break;
      }

      v42 = 0;
      do
      {
        *&v102[v42 + 72] = v21 * *&v108[v42];
        v42 += 8;
      }

      while (v23 != v42);
      v43 = 0;
      do
      {
        *&v102[v43 + 72] = *(v110 + v43) - *&v102[v43 + 72];
        v43 += 8;
      }

      while (v23 != v43);
      v44 = 0;
      do
      {
        v45 = *&v102[v44 + 72];
        if (v45 >= *(a7 + v44))
        {
          v45 = *(a7 + v44);
        }

        if (v45 <= *(a6 + v44))
        {
          v45 = *(a6 + v44);
        }

        *&v102[v44 + 72] = v45;
        v44 += 8;
      }

      while (v23 != v44);
      v46 = 0;
      do
      {
        *&v102[v46 + 72] = *&v102[v46 + 72] - *(v110 + v46);
        v46 += 8;
      }

      while (v23 != v46);
      v47 = v106;
      if (v11 != 1)
      {
        v48 = v107;
        v49 = v11 - 1;
        do
        {
          v50 = *v48++;
          v51 = v50;
          if (v50 > v47)
          {
            v47 = v51;
          }

          --v49;
        }

        while (v49);
      }

      v52 = 0;
      do
      {
        *&v102[v52 - 8] = *&v108[v52] * *&v102[v52 + 72];
        v52 += 8;
      }

      while (v23 != v52);
      v53 = v101;
      if (v30 != 1)
      {
        v54 = v102;
        v55 = v89;
        do
        {
          v56 = *v54++;
          v53 = v53 + v56;
          --v55;
        }

        while (v55);
      }

      if (v93 < 1)
      {
        v58 = 1.0;
      }

      else
      {
        v57 = 0;
        v58 = 1.0;
        do
        {
          v59 = 0;
          v96 = 0.0;
          do
          {
            *&v114[v59 / 8] = v58 * *&v102[v59 + 72];
            v59 += 8;
          }

          while (v23 != v59);
          v60 = 0;
          do
          {
            *&v95[v60] = *(v110 + v60) + *&v114[v60 / 8];
            v60 += 8;
          }

          while (v23 != v60);
          a2(v95, a3, &v96);
          if (v96 <= v47 + v15 * v58 * v53)
          {
            break;
          }

          v61 = v53 * (v58 * v58 * -0.5) / (v96 - v113 - v58 * v53);
          v62 = v61 > v17 * v58 || v16 > v61;
          v58 = v62 ? v58 * 0.5 : v53 * (v58 * v58 * -0.5) / (v96 - v113 - v58 * v53);
          ++v57;
        }

        while (v57 != v93);
      }

      v63 = 0;
      do
      {
        *(v104 + v63) = v58 * *&v102[v63 + 72];
        v63 += 8;
      }

      while (v23 != v63);
      v64 = 0;
      do
      {
        *(v104 + v64) = *(v104 + v64) + *(v110 + v64);
        v64 += 8;
      }

      while (v23 != v64);
      a1(v104, a3, &v105, v103);
      v65 = 0;
      do
      {
        *&v100[v65 + 152] = *(v104 + v65) - *(v110 + v65);
        v65 += 8;
      }

      while (v23 != v65);
      v66 = 0;
      do
      {
        *&v100[v66 + 72] = *&v103[v66] - *&v108[v66];
        v66 += 8;
      }

      while (v23 != v66);
      v67 = 0;
      do
      {
        *&v97[v67 / 8] = *&v100[v67 + 152] * *&v100[v67 + 72];
        v67 += 8;
      }

      while (v23 != v67);
      v68 = *v97;
      if (a5 != 1)
      {
        v69 = &v98;
        v70 = v89;
        do
        {
          v71 = *v69++;
          v68 = v68 + v71;
          --v70;
        }

        while (v70);
      }

      v21 = v87;
      if (v68 > 0.0)
      {
        v72 = 0;
        do
        {
          *&v100[v72 - 8] = *&v100[v72 + 152] * *&v100[v72 + 152];
          v72 += 8;
        }

        while (v23 != v72);
        v73 = v99;
        if (a5 != 1)
        {
          v74 = v100;
          v75 = v89;
          do
          {
            v76 = *v74++;
            v73 = v73 + v76;
            --v75;
          }

          while (v75);
        }

        v77 = v73 / v68;
        if (v77 >= v87)
        {
          v77 = v87;
        }

        if (v83 <= v77)
        {
          v21 = v77;
        }

        else
        {
          v21 = v83;
        }
      }

      __memcpy_chk();
      v78 = v105;
      v113 = v105;
      __memcpy_chk();
      *&v107[8 * (++v91 % v11) - 8] = v78;
      if (v78 < v88)
      {
        __memcpy_chk();
        v88 = v78;
      }

      v30 = a5;
      if (v91 == v86)
      {
        v79 = v86;
        v22 = v82;
        goto LABEL_109;
      }
    }

    v22 = v82;
    v79 = v91;
  }

LABEL_109:
  v80 = v79 < v86;
LABEL_110:
  result = memcpy(a9, __src, 8 * a5);
  if (a10)
  {
    *a10 = v79;
    *(a10 + 4) = v80;
    *(a10 + 5) = v111;
    *(a10 + 7) = v112;
    *(a10 + 8) = v22;
    *(a10 + 16) = v88;
  }

  return result;
}

__n128 sub_2956FE9BC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a4 + 144);
  *(a7 + 128) = *(a4 + 128);
  *(a7 + 144) = v9;
  *(a7 + 160) = *(a4 + 160);
  *(a7 + 176) = *(a4 + 176);
  v10 = *(a4 + 80);
  *(a7 + 64) = *(a4 + 64);
  *(a7 + 80) = v10;
  v11 = *(a4 + 112);
  *(a7 + 96) = *(a4 + 96);
  *(a7 + 112) = v11;
  v12 = *(a4 + 16);
  *a7 = *a4;
  *(a7 + 16) = v12;
  v13 = *(a4 + 48);
  *(a7 + 32) = *(a4 + 32);
  *(a7 + 48) = v13;
  *&v13 = *(a4 + 24);
  v29[0] = *(a4 + 16);
  *&v29[1] = v13;
  v14 = *(a4 + 8);
  v30 = *a4;
  v31 = v14;
  v15 = *(a5 + 32);
  v16 = *(a5 + 40);
  v28[0] = v29[0] - v15;
  v28[1] = *&v13 - v16;
  v17 = *(a5 + 16);
  v18 = *(a5 + 24);
  v28[2] = v30 - v17;
  v28[3] = v14 - v18;
  v27[0] = v29[0] + v15;
  v27[1] = *&v13 + v16;
  v27[2] = v30 + v17;
  v27[3] = v14 + v18;
  v25 = 0u;
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  v22 = xmmword_29570CA40;
  v23 = unk_29570CA50;
  v21[1] = xmmword_29570CA20;
  v21[2] = unk_29570CA30;
  v21[0] = xmmword_29570CA10;
  *&v22 = *(a5 + 104);
  v19 = *(a5 + 116);
  DWORD2(v22) = *(a5 + 112);
  DWORD2(v23) = v19;
  sub_2956FE248(sub_2956FEB0C, sub_2956FEB88, v24, v29, 4, v28, v27, v21, v26, a6);
  *(a6 + 4) = 1;
  result = v26[0];
  *a7 = v26[1];
  *(a7 + 16) = result;
  return result;
}

double sub_2956FEB0C(__int128 *a1, uint64_t a2, double *a3, float64x2_t *a4)
{
  v4 = *(a2 + 24);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[1];
  v16 = *v4;
  v17 = v7;
  v18 = v5;
  v19 = v6;
  v8 = v4[4];
  v9 = v4[5];
  v10 = v4[7];
  v22 = v4[6];
  v23 = v10;
  v20 = v8;
  v21 = v9;
  v11 = v4[8];
  v12 = v4[9];
  v13 = v4[10];
  v27 = *(v4 + 22);
  v25 = v12;
  v26 = v13;
  v24 = v11;
  v14 = *a1;
  v16 = a1[1];
  v17 = v14;
  return sub_2956FDF34(*a2, *(a2 + 8), *(a2 + 16), &v16, a3, a4);
}

double sub_2956FEB88(__int128 *a1, uint64_t a2, double *a3)
{
  v3 = *(a2 + 24);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[1];
  v15 = *v3;
  v16 = v6;
  v17 = v4;
  v18 = v5;
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[7];
  v21 = v3[6];
  v22 = v9;
  v19 = v7;
  v20 = v8;
  v10 = v3[8];
  v11 = v3[9];
  v12 = v3[10];
  v26 = *(v3 + 22);
  v24 = v11;
  v25 = v12;
  v23 = v10;
  v13 = *a1;
  v15 = a1[1];
  v16 = v13;
  return sub_2956FDDD4(*a2, *(a2 + 8), *(a2 + 16), &v15, a3);
}

uint64_t sub_2956FEC00(uint64_t a1, uint64_t a2, unsigned int a3, double *a4, double *a5, double *a6, uint64_t a7, uint64_t a8)
{
  v12 = a6[1];
  v14 = a6[2];
  v13 = a6[3];
  v44[0] = *a6;
  v44[1] = v14;
  v44[2] = v12;
  v44[3] = v13;
  v15 = a4[2];
  v45 = a4[1];
  v46 = v15;
  v17 = a5[1];
  v16 = a5[2];
  v47 = a4[3];
  v48 = v17;
  v18 = a5[3];
  v49 = v16;
  v50 = v18;
  v19 = *(a7 + 16);
  v20 = *(a7 + 24);
  v21 = *(a7 + 32);
  v22 = *(a7 + 40);
  v43[0] = v44[0] - v19;
  v43[1] = v14 - v21;
  v43[2] = v12 - v20;
  v43[3] = v13 - v22;
  v23 = *(a7 + 64);
  v24 = *(a7 + 72);
  v25 = *(a7 + 80);
  v26 = *(a7 + 88);
  v43[4] = v45 - v23;
  v43[5] = v15 - v25;
  v43[6] = v47 - v25;
  v43[7] = v17 - v24;
  v43[8] = v16 - v26;
  v43[9] = v18 - v26;
  v42[0] = v44[0] + v19;
  v42[1] = v14 + v21;
  v42[2] = v12 + v20;
  v42[3] = v13 + v22;
  v42[4] = v45 + v23;
  v42[5] = v15 + v25;
  v42[6] = v47 + v25;
  v42[7] = v17 + v24;
  v42[8] = v16 + v26;
  v42[9] = v18 + v26;
  v34[0] = a1;
  v34[1] = a2;
  v34[3] = a6;
  v34[2] = a3;
  v34[4] = a4;
  v34[5] = a5;
  v32 = xmmword_29570CA40;
  v33 = unk_29570CA50;
  v31[1] = xmmword_29570CA20;
  v31[2] = unk_29570CA30;
  v31[0] = xmmword_29570CA10;
  *&v32 = *(a7 + 104);
  v27 = *(a7 + 116);
  DWORD2(v32) = *(a7 + 112);
  DWORD2(v33) = v27;
  sub_2956FE248(sub_2956FEDC8, sub_2956FEEE0, v34, v44, 10, v43, v42, v31, &v35, a8);
  v28 = v37;
  *a6 = v35;
  *(a6 + 1) = vextq_s8(v36, v36, 8uLL);
  *(a6 + 3) = v28;
  *(a4 + 1) = v38;
  v29 = v41;
  *(a4 + 3) = v39;
  *(a5 + 1) = v40;
  *(a8 + 4) = 1;
  *(a5 + 3) = v29;
  return 0;
}

double *sub_2956FEDC8(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(v4 + 32);
  v8 = *(v4 + 48);
  v9 = *(v4 + 16);
  *v49 = *v4;
  *&v49[16] = v9;
  v50 = v7;
  v51 = v8;
  v10 = *(v4 + 64);
  v11 = *(v4 + 80);
  v12 = *(v4 + 112);
  v54 = *(v4 + 96);
  v55 = v12;
  v52 = v10;
  v53 = v11;
  v13 = *(v4 + 128);
  v14 = *(v4 + 144);
  v15 = *(v4 + 160);
  v59 = *(v4 + 176);
  v57 = v14;
  v58 = v15;
  v56 = v13;
  *&v13 = *a1;
  *&v49[8] = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  *&v14 = *(a1 + 24);
  *v49 = v13;
  *&v49[24] = v14;
  v16 = v5[1];
  *v40 = *v5;
  *&v40[16] = v16;
  v18 = v5[8];
  v17 = v5[9];
  v19 = v5[7];
  v45 = v5[6];
  v46 = v19;
  v47 = v18;
  v48 = v17;
  v21 = v5[4];
  v20 = v5[5];
  v22 = v5[3];
  v41 = v5[2];
  v42 = v22;
  v43 = v21;
  v44 = v20;
  *&v40[8] = *(a1 + 32);
  *&v40[24] = *(a1 + 48);
  v23 = v6[1];
  *v31 = *v6;
  *&v31[16] = v23;
  v25 = v6[8];
  v24 = v6[9];
  v26 = v6[7];
  v36 = v6[6];
  v37 = v26;
  v38 = v25;
  v39 = v24;
  v28 = v6[4];
  v27 = v6[5];
  v29 = v6[3];
  v32 = v6[2];
  v33 = v29;
  v34 = v28;
  v35 = v27;
  *&v31[8] = *(a1 + 56);
  *&v31[24] = *(a1 + 72);
  return sub_2956F3618(*a2, *(a2 + 8), *(a2 + 16), v40, v31, v49, a3, a4);
}

double *sub_2956FEEE0(uint64_t a1, uint64_t a2, double *a3)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  v8 = *(v3 + 16);
  *v48 = *v3;
  *&v48[16] = v8;
  v49 = v6;
  v50 = v7;
  v9 = *(v3 + 64);
  v10 = *(v3 + 80);
  v11 = *(v3 + 112);
  v53 = *(v3 + 96);
  v54 = v11;
  v51 = v9;
  v52 = v10;
  v12 = *(v3 + 128);
  v13 = *(v3 + 144);
  v14 = *(v3 + 160);
  v58 = *(v3 + 176);
  v56 = v13;
  v57 = v14;
  v55 = v12;
  *&v12 = *a1;
  *&v48[8] = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  *&v13 = *(a1 + 24);
  *v48 = v12;
  *&v48[24] = v13;
  v15 = v4[1];
  *v39 = *v4;
  *&v39[16] = v15;
  v17 = v4[8];
  v16 = v4[9];
  v18 = v4[7];
  v44 = v4[6];
  v45 = v18;
  v46 = v17;
  v47 = v16;
  v20 = v4[4];
  v19 = v4[5];
  v21 = v4[3];
  v40 = v4[2];
  v41 = v21;
  v42 = v20;
  v43 = v19;
  *&v39[8] = *(a1 + 32);
  *&v39[24] = *(a1 + 48);
  v22 = v5[1];
  *v30 = *v5;
  *&v30[16] = v22;
  v24 = v5[8];
  v23 = v5[9];
  v25 = v5[7];
  v35 = v5[6];
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v27 = v5[4];
  v26 = v5[5];
  v28 = v5[3];
  v31 = v5[2];
  v32 = v28;
  v33 = v27;
  v34 = v26;
  *&v30[8] = *(a1 + 56);
  *&v30[24] = *(a1 + 72);
  return sub_2956F3FF0(*a2, *(a2 + 8), *(a2 + 16), v39, v30, v48, a3);
}

uint64_t sub_2956FF790(CVPixelBufferRef *a1, int a2, int a3, int a4)
{
  if (a1)
  {
    v7 = *a1;
    if (v7)
    {
      if (CVPixelBufferGetWidth(v7) == a2 && CVPixelBufferGetHeight(*a1) == a3 && CVPixelBufferGetPixelFormatType(*a1) == a4)
      {
        return 1;
      }

      if (*a1)
      {
        CFRelease(*a1);
        *a1 = 0;
      }
    }

    PixelBuffer = CreatePixelBuffer();
    *a1 = PixelBuffer;
    if (PixelBuffer)
    {
      return 1;
    }

    sub_29570978C();
  }

  else
  {
    sub_295709804();
  }

  return 0;
}

uint64_t sub_2957000E0(float64x2_t *a1, double *a2, uint64_t a3, float a4, float a5)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  if (!a1)
  {
    sub_29570A57C();
    return 4294954516;
  }

  if (!a2)
  {
    sub_29570A508();
    return 4294954516;
  }

  if (!a3)
  {
    sub_29570A494();
    return 4294954516;
  }

  *&v29 = vcvt_f32_f64(a1[1]);
  BYTE12(v34) = 1;
  *(&v29 + 1) = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v5 = a1->f64[0];
  v6 = a1->f64[1];
  v7 = a1->f64[0];
  *&v30 = v7;
  v8 = (a2 + 12);
  v9 = a1 + 6;
  *&v10 = v5 * v6;
  v11 = vdupq_lane_s64(COERCE__INT64(a2[1] * *a2), 0);
  v12 = vdupq_lane_s64(v10, 0);
  for (i = 32; i != 64; i += 8)
  {
    v14 = v8[-4];
    v15 = *v8++;
    v16 = (&v25 + i);
    v16[-4] = vcvt_f32_f64(vmlaq_f64(v14, v15, v11));
    v17 = v9[-4];
    v18 = *v9++;
    *v16 = vcvt_f32_f64(vmlaq_f64(v17, v18, v12));
  }

  result = 0;
  *(a3 + 160) = v35;
  v20 = v34;
  *(a3 + 128) = v33;
  *(a3 + 144) = v20;
  v21 = v30;
  *(a3 + 64) = v29;
  *(a3 + 80) = v21;
  v22 = v32;
  *(a3 + 96) = v31;
  *(a3 + 112) = v22;
  v23 = v26;
  *a3 = v25;
  *(a3 + 16) = v23;
  v24 = v28;
  *(a3 + 32) = v27;
  *(a3 + 48) = v24;
  return result;
}

uint64_t sub_295701AD8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295701B30()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295701B88()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295701BE0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295701C38()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295701C90()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295701CE8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295701D40()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295701D98()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295701E10()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295701E88()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295701F00()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295701F78()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295701FF0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702068()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957020E0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702158()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957021D0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702248()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957022C0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702338()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957023B0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702428()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957024A0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702518()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702590()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702608()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702680()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957026F8()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702770()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957027E8()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

void sub_295702860(void *a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

void sub_295702908(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

void sub_2957029B0(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

void sub_295702A48(void *a1)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

uint64_t sub_295702AD8()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702B50()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702BC8()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702C40()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

void sub_295702CB8(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

void sub_295702D50(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

void sub_295702DE0(void *a1)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

uint64_t sub_295702E70()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702EE8()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702F60()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295702FD8()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295703050()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957030A8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295703100()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295703158()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957031B0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295703208()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295703260()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957032B8()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295703310()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295703428()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295703480(_DWORD *a1)
{
  sub_2956F6B0C();
  sub_2956F43C4();
  FigDebugAssert3();
  sub_2956F6B1C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295703508(_DWORD *a1)
{
  sub_2956F6B0C();
  sub_2956F43C4();
  FigDebugAssert3();
  sub_2956F6B1C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295703590(_DWORD *a1)
{
  sub_2956F6B0C();
  sub_2956F43C4();
  FigDebugAssert3();
  sub_2956F6B1C();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295703618()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295703670()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

void sub_2957036C8(uint64_t a1, void *a2)
{
  sub_2956F6AFC();
  sub_2956F43C4();
  FigDebugAssert3();
}

uint64_t sub_295703738()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957038C4(void *a1, const char *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_295703E18(a1, a2, a3, a4, a5, a6);
  v13 = v7;
  if (v7)
  {
    objc_msgSend_floatValue(v7, v8, v9, v10, v11, v12);
    v14 = 0;
    *a3 = v15;
  }

  else
  {
    v14 = 4294954516;
  }

  return v14;
}

uint64_t sub_295703D68(void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_295703E18(a1, a2, a3, a4, a5, a6);
  v13 = v7;
  if (v7)
  {
    objc_msgSend_doubleValue(v7, v8, v9, v10, v11, v12);
    v14 = 0;
    *a3 = v15;
  }

  else
  {
    v14 = 4294954516;
  }

  return v14;
}

uint64_t sub_295703DC0(void *a1, const char *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_295703E18(a1, a2, a3, a4, a5, a6);
  v13 = v7;
  if (v7)
  {
    v14 = 0;
    *a3 = objc_msgSend_integerValue(v7, v8, v9, v10, v11, v12);
  }

  else
  {
    v14 = 4294954516;
  }

  return v14;
}

void *sub_295703E18(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_valueForKey_(a1, a2, a2, a4, a5, a6);
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      if (objc_msgSend_count(v7, v8, v9, v10, v11, v12) < 1)
      {
        v17 = 0;
        v6 = v7;
      }

      else
      {
        v6 = objc_msgSend_objectAtIndexedSubscript_(v7, v13, 0, v14, v15, v16);

        v17 = v6;
      }
    }

    else
    {
      v17 = v6;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  return v17;
}

uint64_t sub_295703ECC()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295703F44()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295703FBC()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295704034()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_2957040AC()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295704128()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_2957041A4(uint64_t a1, _DWORD *a2)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_295704250(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957042FC(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957043A8(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295704454(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295704500(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957045AC(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295704658(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295704704(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957047B0(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29570485C(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295704908(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957049B4(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295704A60(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  *a4 = FigSignalErrorAtGM();
}

uint64_t sub_295704B38(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295704BE4(_DWORD *a1)
{
  sub_2956FA0D4();
  sub_2956FA0C0();
  FigDebugAssert3();
  sub_2956FA0D4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295704C90()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295704D04()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295704D7C()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295704DF8()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295704E6C()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295704EE4()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295704F60()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

void sub_295704FD4(void *a1)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

void sub_295705064(void *a1)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

uint64_t sub_2957050F4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

void sub_29570516C(void *a1)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

void sub_2957051FC(void *a1)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

uint64_t sub_29570528C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295705304()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570537C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957053F4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570546C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957054E4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570555C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957055D4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295705648()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957056BC()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295705738()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_2957057B4()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295705830()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_2957058AC()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295705928()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957059A0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295705A18()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295705A90()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295705B08()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295705B80()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295705BF8()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295705C70()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295705CE4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295705D58()
{
  fig_log_get_emitter();
  sub_2956F6FA8();
  return FigDebugAssert3();
}

uint64_t sub_295705DD0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295705E48(uint64_t a1, float64x2_t *a2, float64x2_t *a3, int a4, float64x2_t *a5, float64x2_t *a6, void *a7)
{
  if (!a1 || !a2 || !a3 || a4 <= 0 || *a1 < a4 || !a5 || !a6 || !a7)
  {
    sub_2956F341C();
    sub_2956F43C4();
    FigDebugAssert3();
    return 4294954516;
  }

  bzero((a1 + 520), 0x748uLL);
  v14 = sub_2956FC848(a2, a4, a5, *(a1 + 2912));
  if (v14 || (v14 = sub_2956FC848(a3, a4, a6, *(a1 + 2920)), v14))
  {
    v32 = v14;
    sub_2956F6AFC();
    sub_2956F43C4();
    goto LABEL_29;
  }

  sub_2957063F0(*(a1 + 2912), *(a1 + 2920), a4, a7, a1 + 8, a1 + 520, __src);
  memcpy(a7, __src, 0xB8uLL);
  if ((*(a1 + 400) & 1) == 0)
  {
    memset(__dst, 0, 104);
    v16 = *(a1 + 24);
    *&__dst[8] = *(a1 + 16);
    *&__dst[16] = v16;
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    *&__dst[24] = *(a1 + 32);
    *&__dst[32] = *(&v17 + 1);
    *&v19 = *(a1 + 64);
    *(&v19 + 1) = v16;
    *&__dst[40] = v18;
    *&__dst[72] = v17;
    *&__dst[56] = v19;
    *&__dst[88] = v18;
    *&__dst[96] = *(a1 + 88);
    *&__dst[104] = *(a1 + 128);
    *&__dst[112] = 0x3E800000064;
    *__dst = 257;
    memcpy((a1 + 1528), a5, 0xA0uLL);
    memcpy((a1 + 1688), a6, 0xA0uLL);
LABEL_15:
    sub_2956FDC8C(*(a1 + 2912), *(a1 + 2920), a4, a7, *(a1 + 2944));
    v20 = 0;
    v21 = *(a1 + 2944);
    v22 = *&__dst[8];
    v23 = &a3->f64[1];
    v24 = &a2->f64[1];
    v25 = a4;
    do
    {
      if (*v21 < v22)
      {
        v26 = *(a1 + 2928);
        v27 = 2 * v20;
        *(v26 + 8 * v27) = *(v24 - 1);
        v28 = (16 * v20) | 8;
        *(v26 + v28) = *v24;
        v29 = *(a1 + 2936);
        *(v29 + 8 * v27) = *(v23 - 1);
        *(v29 + v28) = *v23;
        ++v20;
      }

      ++v21;
      v23 += 2;
      v24 += 2;
      --v25;
    }

    while (v25);
    *(a1 + 1848) = v20;
    if (v20 < *&__dst[96])
    {
      return 0;
    }

    *(a1 + 1852) = 1;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v30 = sub_2956FEC00(*(a1 + 2928), *(a1 + 2936), v20, a5->f64, a6->f64, a7, __dst, &v34);
    if (!v30)
    {
      v31 = v36;
      *(a1 + 1856) = v35;
      *(a1 + 1864) = v34;
      *(a1 + 1868) = BYTE4(v34);
      *(a1 + 1872) = v31;
      goto LABEL_22;
    }

    v32 = v30;
    sub_2956F6AFC();
    sub_2956F43C4();
LABEL_29:
    FigDebugAssert3();
    return v32;
  }

  memcpy(__dst, (a1 + 400), sizeof(__dst));
  v15 = __dst[1];
  memcpy((a1 + 1528), a5, 0xA0uLL);
  memcpy((a1 + 1688), a6, 0xA0uLL);
  if (v15)
  {
    goto LABEL_15;
  }

  *(a1 + 1868) = 1;
  *(a1 + 1852) = 1;
LABEL_22:
  memcpy((a1 + 1880), a7, 0xB8uLL);
  memcpy((a1 + 2064), a5, 0xA0uLL);
  memcpy((a1 + 2224), a6, 0xA0uLL);
  return 0;
}

void sub_2957063F0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v104 = a2;
  __src[0] = 0;
  LOBYTE(__src[1]) = 0;
  bzero(v127, 0xBAuLL);
  v126 = 0;
  v125 = 0;
  bzero(v124, 0xB8uLL);
  bzero(v123, 0xBBuLL);
  v122 = 0;
  v121 = 0;
  bzero(v120, 0xB8uLL);
  bzero(v119, 0x358uLL);
  if (*(a5 + 152) == 1)
  {
    memcpy(__dst, (a5 + 152), 0x78uLL);
    v19 = __dst[12];
  }

  else
  {
    *&v20 = *a5;
    memset(__dst, 0, 104);
    v21 = *(a5 + 16);
    *(&v20 + 1) = v21;
    *&__dst[3] = *(a5 + 24);
    *&__dst[1] = v20;
    *&__dst[5] = *(a5 + 40);
    *&v22 = *(a5 + 56);
    *(&v22 + 1) = v21;
    *&__dst[9] = *&__dst[3];
    *&__dst[7] = v22;
    __dst[11] = __dst[5];
    v19 = *(a5 + 80);
    LODWORD(__dst[12]) = v19;
    __dst[13] = *(a5 + 120);
    __dst[14] = 0x3E800000032;
    LOWORD(__dst[0]) = 257;
  }

  v118 = 0;
  memcpy(a7, a4, 0xB8uLL);
  memcpy(&__src[1] + 1, a4, 0xB8uLL);
  v23 = 0.0;
  if (v19 > a3)
  {
    v50 = 0;
    v49 = 0;
    v90 = 0;
    v99 = 0;
    v100 = 0;
    v91 = 0;
    v51 = 0;
    sub_2956FD6D0();
    v25 = 0;
    v24 = 0;
    sub_2956FD6E0();
    goto LABEL_24;
  }

  v96 = v7;
  v24 = sub_2956FD728();
  v25 = sub_2956FD728();
  HIDWORD(v118) = 0;
  sub_2956F6B2C(a1, v104, a3, a7, v24, v25, &v118 + 1, *&__dst[1]);
  HIDWORD(v100) = HIDWORD(v118);
  if (SHIDWORD(v118) < SLODWORD(__dst[12]))
  {
    v50 = 0;
    v49 = 0;
    v91 = 0;
    LOBYTE(v100) = 0;
    v99 = 0;
    v51 = 0;
    sub_2956FD6D0();
    sub_2956FD6E0();
    v90 = 1;
    goto LABEL_24;
  }

  if (*(a5 + 112) == 1)
  {
    v26 = sub_2956FC724(v24, v25, SHIDWORD(v118), a7, v116);
    sub_2956FD6B4(v26, v27, v28, v29, v30, v31, v32, v33, v92, v94, v7, v98, v100, v101, v104, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
    sub_2956FD710(&v127[2]);
    LODWORD(v100) = 1;
  }

  else
  {
    LODWORD(v100) = 0;
  }

  v102 = v25;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v34 = a3;
  if (BYTE1(__dst[0]) == 1)
  {
    sub_2956FE9BC(v24, v102, HIDWORD(v118), a7, __dst, &v113, v116);
    sub_2956FD6B4(v35, v36, v37, v38, v39, v40, v41, v42, v92, v94, v96, v98, v100, v102, v104, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
    LODWORD(v99) = BYTE4(v113);
    HIDWORD(v99) = v113;
    v10 = v114;
    v9 = v115;
  }

  else
  {
    v99 = 1;
    BYTE4(v113) = 1;
    v9 = 0;
    v10 = 0;
  }

  v43 = v24;
  sub_2956FD710(v124);
  if (*(a5 + 272) == 1)
  {
    memcpy(v111, (a5 + 272), sizeof(v111));
    v44 = v111[1];
    v45 = v111[12];
  }

  else
  {
    memset(v111, 0, 104);
    v44 = *(a5 + 8);
    v46 = *(a5 + 16);
    v111[1] = v44;
    v111[2] = v46;
    v47 = *(a5 + 24);
    v111[3] = *(a5 + 24);
    v111[4] = *(&v47 + 1);
    *&v111[5] = *(a5 + 40);
    *&v48 = *(a5 + 56);
    *(&v48 + 1) = v46;
    *&v111[9] = v47;
    *&v111[7] = v48;
    v111[11] = v111[5];
    v45 = *(a5 + 80);
    LODWORD(v111[12]) = v45;
    v111[13] = *(a5 + 120);
    v111[14] = 0x3E800000032;
    LOWORD(v111[0]) = 257;
  }

  v49 = sub_2956FD728();
  v50 = sub_2956FD728();
  LODWORD(v118) = 0;
  sub_2956F6B2C(a1, v104, v34, a7, v49, v50, &v118, *&v44);
  v51 = v118;
  if (v118 < v45)
  {
    sub_2956FD6D0();
    v90 = 1;
    v8 = 0;
    v11 = 0;
    v91 = 1;
    v12 = 0;
    v24 = v43;
    a3 = v34;
LABEL_31:
    v25 = v102;
    goto LABEL_24;
  }

  v109 = 0xBFF0000000000000;
  v110 = -1.0;
  v24 = v43;
  if (*(a5 + 128) <= 0.0)
  {
    v68 = sub_2956FD6F8();
    sub_2956FA0EC(v68, v69, v70, v71, v72, v73);
    sub_2956FD6B4(v74, v75, v76, v77, v78, v79, v80, v81, v92, v94, v96, v99, v100, v102, v104, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
    v8 = -1.0;
    v23 = -1.0;
    a3 = v34;
    goto LABEL_20;
  }

  bzero(v116, 0xB8uLL);
  v52 = sub_2956FD6F8();
  sub_2956FA3D4(v52, v53, v54, v55, v56, v57, v58, v59);
  a3 = v34;
  if (v67)
  {
    sub_2956F6AFC();
    FigDebugAssert3();
    LODWORD(v104) = 0;
    LOBYTE(v96) = 0;
    v90 = 1;
    v91 = 1;
    v8 = 0;
    v11 = 0;
    LOBYTE(a7) = 1;
    v12 = 0;
    goto LABEL_31;
  }

  sub_2956FD6B4(0, v60, v61, v62, v63, v64, v65, v66, v92, v94, v96, v99, v100, v102, v104, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
  v8 = v109;
  v23 = v110;
LABEL_20:
  v25 = v103;
  sub_2956FD710(&v123[3]);
  v107 = 0;
  v108 = 0;
  v106 = 0;
  if (BYTE1(v111[0]) == 1)
  {
    sub_2956FE9BC(v49, v50, v118, a7, v111, &v106, v116);
    sub_2956FD6B4(v82, v83, v84, v85, v86, v87, v88, v89, v93, v95, v97, v99, v100, v103, v105, v106, v107, v108, v109, *&v110, v111[0], v111[1], v111[2], v111[3], v111[4], v111[5], v111[6], v111[7], v111[8], v111[9], v111[10], v111[11], v111[12], v111[13], v111[14], v112, v113, v114, v115, v116[0]);
    LODWORD(v104) = v106;
    LOBYTE(v96) = BYTE4(v106);
    v11 = v107;
    v12 = v108;
  }

  else
  {
    LODWORD(v104) = 0;
    LOBYTE(v96) = 1;
    v12 = 0;
    v11 = 0;
  }

  sub_2956FD710(v120);
  v90 = 1;
  v91 = 1;
  LOBYTE(a7) = 1;
LABEL_24:
  free(v24);
  free(v25);
  free(v49);
  free(v50);
  if (a6)
  {
    *a6 = a3;
    *(a6 + 4) = v90;
    memcpy((a6 + 5), __src, 0xBBuLL);
    *(a6 + 192) = HIDWORD(v100);
    *(a6 + 196) = v91;
    *(a6 + 197) = v100;
    memcpy((a6 + 198), v127, 0xBAuLL);
    *(a6 + 384) = v10;
    *(a6 + 392) = HIDWORD(v99);
    *(a6 + 396) = v99;
    *(a6 + 397) = v125;
    *(a6 + 399) = v126;
    *(a6 + 400) = v9;
    memcpy((a6 + 408), v124, 0xB8uLL);
    *(a6 + 592) = v51;
    *(a6 + 596) = a7;
    memcpy((a6 + 597), v123, 0xBBuLL);
    *(a6 + 784) = v23;
    *(a6 + 792) = v8;
    *(a6 + 800) = v11;
    *(a6 + 808) = v104;
    *(a6 + 812) = v96;
    *(a6 + 813) = v121;
    *(a6 + 815) = v122;
    *(a6 + 816) = v12;
    memcpy((a6 + 824), v120, 0xB8uLL);
    memcpy((a6 + 1008), v119, 0x358uLL);
  }
}

uint64_t sub_295706A5C()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706AB4()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706B0C()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706B64()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706BBC()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706C14()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706C6C()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706CC4()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706D1C()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706D74()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706DCC()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706E24()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706E7C()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706ED4()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295706F2C(uint64_t a1, _BYTE *a2)
{
  sub_2956F341C();
  result = FigDebugAssert3();
  *a2 = *(a1 + 2384) & 1;
  return result;
}

uint64_t sub_295706FA8()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707000()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707058()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957070B0()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707468()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957074C0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707518()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707570()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957075C8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707620()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707678()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957076D0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707728()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707900()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707958()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957079B0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707A08()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707A60()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707AB8()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707B10()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707B68()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707BC0()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707C18()
{
  sub_2956F6AFC();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707C70()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707CC8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707D20()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707D78()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707DD0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707E28()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707E80()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707ED8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707F30()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707F88()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295707FE0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708038()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708090()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957080E8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708140()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708198()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957081F0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708248()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957082A0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957082F8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708350()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957083A8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708400()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708458()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708630()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708688()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957086E0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708738()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708790()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_2957087E8()
{
  sub_2956FD6A0();
  FigDebugAssert3();
  sub_2956FD6A0();
  return FigDebugAssert3();
}

uint64_t sub_295708894()
{
  sub_2956FD6A0();
  FigDebugAssert3();
  sub_2956FD6A0();
  return FigDebugAssert3();
}

uint64_t sub_295708DB8()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708E10()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708E68()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708EC0()
{
  sub_2956F341C();
  sub_2956F43C4();
  return FigDebugAssert3();
}

uint64_t sub_295708F18()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295708F90()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709008()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709080(_DWORD *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_295709148(uint64_t a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2957015FC();
  FigDebugAssert3();
}

uint64_t sub_2957091E0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709258()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957092D0()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

uint64_t sub_29570934C()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

uint64_t sub_2957093CC()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709444()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957094BC()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709534()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957095AC()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709624()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570969C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709714()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570978C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709804()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570987C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957098F4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570996C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_2957099E4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709A5C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709AD4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709B4C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709BC4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709C3C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709CB4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709D2C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709DA4()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709E1C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709E94()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709F0C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_295709F84()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

void sub_295709FFC(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_2957015FC();
  FigDebugAssert3();
}

void sub_29570A08C(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_2957015FC();
  FigDebugAssert3();
}

void sub_29570A11C(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  sub_2957015FC();
  FigDebugAssert3();
}

void sub_29570A1A8(void *a1)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

uint64_t sub_29570A228()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

uint64_t sub_29570A2A4()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

uint64_t sub_29570A320()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

void sub_29570A39C(void *a1)
{
  fig_log_get_emitter();
  sub_2956F5674();
  FigDebugAssert3();
}

uint64_t sub_29570A41C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570A494()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570A508()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570A57C()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570A5F0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570A668()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570A6E0()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570A758()
{
  fig_log_get_emitter();
  sub_2956F5674();
  return FigDebugAssert3();
}

uint64_t sub_29570A7D0()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

uint64_t sub_29570A84C()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

uint64_t sub_29570A8C8()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

uint64_t sub_29570A944()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

uint64_t sub_29570A9C0()
{
  fig_log_get_emitter();
  sub_2957015FC();
  return FigDebugAssert3();
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2A1C76640](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}