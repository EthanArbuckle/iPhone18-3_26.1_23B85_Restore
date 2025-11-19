float *sub_295787494(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9)
{
  v17 = malloc_type_malloc(0x18uLL, 0x10200405AF6BDC9uLL);
  if (a2 < 0)
  {
    sub_2957997DC();
  }

  if (a3 < 0)
  {
    sub_2957997B0();
  }

  if (a4 < 0)
  {
    sub_295799784();
  }

  if (a5 < 0)
  {
    sub_295799758();
  }

  if (a6 < 0)
  {
    sub_29579972C();
  }

  if (a7 < 0)
  {
    sub_295799700();
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
    sub_2957996D4();
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
        sub_2957996A8();
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
        sub_2957996A8();
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
        sub_2957996A8();
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
        sub_2957996A8();
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
        sub_2957996A8();
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
        sub_2957996A8();
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

void sub_295787A8C(void ***a1)
{
  if (a1)
  {
    free(**a1);
    free(*a1);
    *a1 = 0;
  }
}

uint64_t sub_295787ACC(uint64_t a1, int a2, float a3, double a4, double a5, float a6)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    sub_295799808();
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

uint64_t sub_295787BB0(uint64_t result, int a2, int a3, float *a4, int a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, float a12, int a13)
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
          *(v27 - 1) = sub_295787ACC(v14, 0, v28, a10, a11, a12);
          *v27 = sub_295787ACC(v14, 1, v28, v29, v30, v31);
          result = sub_295787ACC(v14, 2, v28, v32, v33, v34);
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

uint64_t sub_295788170()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_2957881A4(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_msgSend_status(v8, v2, v3) == 4)
  {
    objc_msgSend_GPUEndTime(v8, v4, v5);
    objc_msgSend_GPUStartTime(v8, v6, v7);
  }

  else
  {
    objc_msgSend_status(v8, v4, v5);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295789514(uint64_t result)
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    v1 = *(result + 32);
    return kdebug_trace();
  }

  return result;
}

void sub_295789548(uint64_t a1, void *a2)
{
  v10 = a2;
  if (objc_msgSend_status(v10, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v10, v5, v6);
    objc_msgSend_GPUStartTime(v10, v7, v8);
  }

  else
  {
    objc_msgSend_status(v10, v5, v6);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v9 = *(a1 + 32);
    kdebug_trace();
  }
}

uint64_t sub_295789608(uint64_t result)
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    v1 = *(result + 32);
    return kdebug_trace();
  }

  return result;
}

void sub_29578963C(uint64_t a1, void *a2)
{
  v10 = a2;
  if (objc_msgSend_status(v10, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v10, v5, v6);
    objc_msgSend_GPUStartTime(v10, v7, v8);
  }

  else
  {
    objc_msgSend_status(v10, v5, v6);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v9 = *(a1 + 32);
    kdebug_trace();
  }
}

uint64_t sub_2957896FC(uint64_t result)
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    v1 = *(result + 32);
    return kdebug_trace();
  }

  return result;
}

void sub_295789730(uint64_t a1, void *a2)
{
  v10 = a2;
  if (objc_msgSend_status(v10, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v10, v5, v6);
    objc_msgSend_GPUStartTime(v10, v7, v8);
  }

  else
  {
    objc_msgSend_status(v10, v5, v6);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v9 = *(a1 + 32);
    kdebug_trace();
  }
}

uint64_t sub_29578A79C(uint64_t result)
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    v1 = *(result + 32);
    v2 = *(result + 36);
    return kdebug_trace();
  }

  return result;
}

void sub_29578A7CC(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_msgSend_status(v11, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v11, v5, v6);
    objc_msgSend_GPUStartTime(v11, v7, v8);
  }

  else
  {
    objc_msgSend_status(v11, v5, v6);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 36);
    kdebug_trace();
  }
}

uint64_t sub_29578A888(uint64_t result)
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    v1 = *(result + 32);
    return kdebug_trace();
  }

  return result;
}

void sub_29578A8BC(uint64_t a1, void *a2)
{
  v10 = a2;
  if (objc_msgSend_status(v10, v3, v4) == 4)
  {
    objc_msgSend_GPUEndTime(v10, v5, v6);
    objc_msgSend_GPUStartTime(v10, v7, v8);
  }

  else
  {
    objc_msgSend_status(v10, v5, v6);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    v9 = *(a1 + 32);
    kdebug_trace();
  }
}

uint64_t sub_29578C920()
{

  return fig_log_get_emitter();
}

uint64_t sub_29578C968()
{

  return fig_log_get_emitter();
}

uint64_t sub_29578C980()
{

  return CreatePixelBuffer();
}

void sub_29578DE10(void *a1, const char *a2, _DWORD *a3)
{
  v4 = sub_29578DF3C(a1, a2, 0);
  v7 = v4;
  if (v4)
  {
    *a3 = objc_msgSend_integerValue(v4, v5, v6);
  }

  else
  {
    sub_29579CA4C();
  }
}

void sub_29578DE70(void *a1, const char *a2, unsigned int a3, _DWORD *a4)
{
  v5 = sub_29578DF3C(a1, a2, a3);
  v9 = v5;
  if (v5)
  {
    objc_msgSend_floatValue(v5, v6, v7);
    *a4 = v8;
  }

  else
  {
    sub_29579CAC0();
  }
}

void sub_29578DECC(void *a1, const char *a2, unsigned int a3, _DWORD *a4)
{
  v5 = sub_29578DF3C(a1, a2, a3);
  v8 = v5;
  if (v5)
  {
    *a4 = objc_msgSend_integerValue(v5, v6, v7);
  }

  else
  {
    sub_29579CB34();
  }
}

void *sub_29578DF3C(void *a1, const char *a2, unsigned int a3)
{
  v4 = objc_msgSend_valueForKey_(a1, a2, a2);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (objc_msgSend_count(v5, v6, v7) <= a3)
      {
        sub_29579CBA8(&v13);
        v9 = v13;
        v4 = v5;
      }

      else
      {
        v4 = objc_msgSend_objectAtIndexedSubscript_(v5, v8, a3);

        v9 = 0;
      }

      if (v9)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v10 = v4;
    goto LABEL_9;
  }

  sub_29579CC54(&v14);
  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = 0;
LABEL_9:
  v11 = v10;

  return v10;
}

uint64_t sub_29578FEC8()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29578FEFC(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_msgSend_status(v8, v2, v3) == 4)
  {
    objc_msgSend_GPUEndTime(v8, v4, v5);
    objc_msgSend_GPUStartTime(v8, v6, v7);
  }

  else
  {
    objc_msgSend_status(v8, v4, v5);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_2957900D0()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_295790104(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_msgSend_status(v8, v2, v3) == 4)
  {
    objc_msgSend_GPUEndTime(v8, v4, v5);
    objc_msgSend_GPUStartTime(v8, v6, v7);
  }

  else
  {
    objc_msgSend_status(v8, v4, v5);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

uint64_t sub_295790648()
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void sub_29579067C(uint64_t a1, void *a2)
{
  v8 = a2;
  if (objc_msgSend_status(v8, v2, v3) == 4)
  {
    objc_msgSend_GPUEndTime(v8, v4, v5);
    objc_msgSend_GPUStartTime(v8, v6, v7);
  }

  else
  {
    objc_msgSend_status(v8, v4, v5);
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }
}

void sub_2957909C0()
{
  v0 = qword_2A1389900;
  qword_2A1389900 = &unk_2A1CA3840;
}

FILE *sub_2957945B0(const char *a1, const char *a2)
{
  v3 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], a2, @"%s", a1);
  v6 = objc_msgSend_stringByDeletingLastPathComponent(v3, v4, v5);
  v9 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], v7, v8);
  v20 = 0;
  v11 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v9, v10, v6, 1, 0, &v20);
  v12 = v20;
  if (v11)
  {
    v13 = fopen(a1, "wb");
  }

  else
  {
    if (qword_2A1389918 != -1)
    {
      sub_2957A17E4();
    }

    v14 = qword_2A1389910;
    if (os_log_type_enabled(qword_2A1389910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_295785000, v14, OS_LOG_TYPE_DEFAULT, "Failed to create directory %@. Error: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

FILE *sub_295794BB4(unsigned int a1, const char *a2, unsigned int a3, _BYTE *a4, const char *a5)
{
  v7 = a2;
  result = sub_2957945B0(a5, a2);
  if (result)
  {
    v10 = result;
    v11 = malloc_type_malloc(3 * a1, 0x100004077774924uLL);
    if (v11)
    {
      v12 = v11;
      fprintf(v10, "P6 %u %u 255\n", a1, v7);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v14 = a1;
          v15 = v12;
          for (j = a4; v14; --v14)
          {
            *v15 = *j;
            v15[1] = j[1];
            v15[2] = j[2];
            j += 4;
            v15 += 3;
          }

          fwrite(v12, 3uLL, a1, v10);
          a4 += a3;
        }
      }

      free(v12);
    }

    return fclose(v10);
  }

  return result;
}

uint64_t sub_295798F0C()
{
  qword_2A1389910 = os_log_create("com.apple.cameracapture", "legacyLog");

  return MEMORY[0x2A1C71028]();
}

uint64_t sub_295798F50()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295798FA8()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799000()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799058()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957990B0()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799108()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799160()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957991B8()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799210()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799328()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799380(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295799408(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295799490(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_295799518()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799570()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

void sub_2957995C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_295787458();
  sub_295787468();
  FigDebugAssert3();
}

uint64_t sub_295799650()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_295799834()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_2957998AC()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799924()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799998()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799A0C()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799A80()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799C28()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

void sub_295799CA0(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_295799D1C(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

uint64_t sub_295799D98()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799E10()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799E88()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799F00()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_295799F78(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A024(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A0D0(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579A17C()
{
  sub_29578C95C();
  fig_log_get_emitter();
  sub_29578C8F8();
  FigDebugAssert3();
}

uint64_t sub_29579A204()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579A280()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579A2FC()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579A378()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579A3F4(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A4A0(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A54C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A5F8()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579A66C()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579A6E8(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A794(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A840(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A8EC(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579A998(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579AA44(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579AAF0(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579AB9C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579AC48(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579ACF4()
{
  sub_29578C95C();
  fig_log_get_emitter();
  sub_29578C8F8();
  FigDebugAssert3();
}

void sub_29579AD7C()
{
  sub_29578C95C();
  fig_log_get_emitter();
  sub_29578C8F8();
  FigDebugAssert3();
}

void sub_29579AE04()
{
  sub_29578C95C();
  fig_log_get_emitter();
  sub_29578C8F8();
  FigDebugAssert3();
}

void sub_29579AE8C()
{
  sub_29578C95C();
  fig_log_get_emitter();
  sub_29578C8F8();
  FigDebugAssert3();
}

uint64_t sub_29579AF14(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579AFC0(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579B06C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579B118(void *a1, _DWORD *a2)
{
  sub_29578C968();
  sub_29578C90C();
  FigDebugAssert3();
  sub_29578C968();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_29579B1D4(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579B280(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579B32C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579B3D8(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579B484(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579B530(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579B5DC(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579B688(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579B718(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579B7B0(void *a1, void *a2, _DWORD *a3)
{
  sub_29578C968();
  sub_29578C90C();
  FigDebugAssert3();
  sub_29578C968();
  *a3 = FigSignalErrorAtGM();
}

void sub_29579B884(void *a1, void *a2, _DWORD *a3)
{
  sub_29578C968();
  sub_29578C90C();
  FigDebugAssert3();
  sub_29578C968();
  *a3 = FigSignalErrorAtGM();
}

void sub_29579B958(void *a1, _DWORD *a2)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_29579BA1C()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579BA94()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

void sub_29579BBE4(void *a1, _DWORD *a2)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_29579BCA8(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579BD54(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579BE00(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579BEAC(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579BF58(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C004(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C0B0(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C15C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C208(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C2B4(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C360(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C40C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C4B8(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C564(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579C610(void *a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579C6BC(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579C760(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579C7F4(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

uint64_t sub_29579C880()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579C8F4(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579C9A0(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579CA4C()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579CAC0()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579CB34()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579CBA8(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579CC54(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579CD00()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579CD78()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579CDF8()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579CE78()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579CEF8()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579CF70()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579CFE8(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579D094(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579D140(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579D1EC(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579D298(void *a1, _DWORD *a2)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_29579D35C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579D408(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579D4B4(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579D560(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579D60C()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579D688()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579D704()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579D77C()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579D7F4()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579D86C()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579D8E4()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579D95C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579DA08(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579DAB4(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579DB60(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579DC0C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579DCB8()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579DD34()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579DDB0(uint64_t a1, _DWORD *a2)
{
  sub_29578C968();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C968();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_29579DE68()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579DEE4()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579DF60()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579DFDC()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579E058(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E104(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E1B0(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E25C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E308(uint64_t a1, _DWORD *a2)
{
  sub_29578C968();
  FigDebugAssert3();
  sub_29578C968();
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t sub_29579E3CC(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E478(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E524(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E5D0(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E67C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579E728()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579E7A0()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579E818()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579E890()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579E904()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

void sub_29579E97C(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579E9FC(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579EA7C(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579EAFC(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579EB7C(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579EBFC(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579EC7C(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579ECFC(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579ED7C(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

uint64_t sub_29579EDFC()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579EE74()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579EEEC()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579EF64()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579EFDC()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579F054()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579F0CC(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579F178(void *a1, _DWORD *a2)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_29579F23C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579F2E8()
{
  fig_log_get_emitter();
  sub_29578C8F8();
  return FigDebugAssert3();
}

uint64_t sub_29579F364(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579F410(uint64_t a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  sub_29578C8F8();
  FigDebugAssert3();
}

void sub_29579F4C0()
{
  sub_295791F38();
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579F564()
{
  sub_295791F38();
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579F608()
{
  sub_295791F38();
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579F6AC(void *a1, void *a2)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579F744(void *a1)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

uint64_t sub_29579F7D4()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579F84C(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579F8F8(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579F9A4(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579FA50(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579FAFC(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579FBA8(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579FC54(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_29579FD14()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_29579FD88(_DWORD *a1)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_29579FE34()
{
  sub_295791F38();
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579FED8()
{
  sub_295791F38();
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_29579FF7C()
{
  sub_295791F38();
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_2957A0020(void *a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2957882A8();
  FigDebugAssert3();
}

void sub_2957A00C8(void *a1, _DWORD *a2)
{
  sub_29578C920();
  sub_29578C8E4();
  FigDebugAssert3();
  sub_29578C920();
  sub_29578C938();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_2957A018C()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_2957A0204()
{
  fig_log_get_emitter();
  sub_2957882A8();
  return FigDebugAssert3();
}

uint64_t sub_2957A05C8()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A0620(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A06AC(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A0738(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_2957A0D64(void *a1)
{
  sub_295787448();
  sub_295787468();
  FigDebugAssert3();
}

uint64_t sub_2957A0DD4()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A0E2C(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A0EB4()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A0F0C()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A0F64()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A0FBC(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A1044()
{
  sub_295787448();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A109C()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A10F4()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A114C(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A11D4(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A125C(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A12E4()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A133C()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A1394()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

void sub_2957A13EC(uint64_t a1, void *a2, void *a3)
{
  sub_295787458();
  sub_295787468();
  FigDebugAssert3();
}

uint64_t sub_2957A146C()
{
  sub_295787458();
  sub_295787468();
  return FigDebugAssert3();
}

uint64_t sub_2957A14C4(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A154C(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void sub_2957A15D4(void *a1, _DWORD *a2)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  *a2 = FigSignalErrorAtGM();
}

uint64_t sub_2957A16D4(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t sub_2957A175C(_DWORD *a1)
{
  sub_295787474();
  sub_295787468();
  FigDebugAssert3();
  sub_295787484();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}