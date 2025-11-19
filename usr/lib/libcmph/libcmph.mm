double bdz_config_new()
{
  v0 = malloc_type_malloc(0x40uLL, 0x1030040D3CFC0C8uLL);
  if (v0)
  {
    result = 0.0;
    v0[2] = 0u;
    v0[3] = 0u;
    *v0 = 0u;
    v0[1] = 0u;
    *(v0 + 36) = 7;
    *(v0 + 6) = 0;
  }

  return result;
}

uint64_t bdz_config_set_b(uint64_t result, int a2)
{
  if ((a2 - 11) >= 0xFFFFFFF8)
  {
    v2 = a2;
  }

  else
  {
    v2 = 7;
  }

  *(*(result + 32) + 36) = v2;
  return result;
}

uint64_t bdz_config_set_hashfuncs(uint64_t result, _DWORD *a2)
{
  if (*a2 != 1)
  {
    *(*(result + 32) + 56) = *a2;
  }

  return result;
}

void *bdz_new(uint64_t a1, double a2)
{
  v2 = a1;
  v97 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (a2 == 0.0)
  {
    a2 = 1.23;
  }

  v4 = *(*(a1 + 8) + 8);
  v5 = vcvtpd_u64_f64(a2 * v4 / 3.0) | 1;
  v6 = 3 * v5;
  *v3 = v4;
  v3[1] = v6;
  v3[2] = v5;
  v7 = 1 << *(v3 + 36);
  v3[8] = v7;
  v3[10] = vcvtpd_u64_f64(v6 / v7);
  v8 = malloc_type_malloc(24 * v4, 0x1000040504FFAC1uLL);
  v92[1] = v8;
  v9 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  v92[2] = v9;
  v10 = malloc_type_malloc(v6, 0x100004077774924uLL);
  v92[3] = v10;
  v86 = malloc_type_malloc(4 * *v3, 0x100004052888210uLL);
  if (*(v2 + 16))
  {
    fprintf(*MEMORY[0x29EDCA610], "Entering mapping step for mph creation of %u keys with graph sized %u\n", *v3, v3[1]);
  }

  v92[0] = 0;
  v11 = 1000;
  v90 = v2;
  v87 = v3;
  while (1)
  {
    v88 = v11;
    *(v3 + 3) = hash_state_new(v3[14], 0xFu);
    v12 = *(v2 + 32);
    v13 = v12[1];
    memset(v9, 255, 4 * v13);
    bzero(v10, v13);
    LODWORD(v92[0]) = 0;
    (*(*(v2 + 8) + 32))(**(v2 + 8));
    v14 = *(v2 + 8);
    if (*(v14 + 8))
    {
      v15 = 0;
      v16 = v8 + 3;
      v89 = v12;
      do
      {
        v91 = v15;
        v94 = 0;
        v93 = 0;
        (*(v14 + 16))(*v14, &v93, &v94);
        hash_vector(*(v12 + 3), v93, v94, &v95);
        v17 = v12[2];
        v18 = v95.i32[0] % v17;
        v19 = v95.i32[1] % v17 + v17;
        v20 = v96 % v17 + 2 * v17;
        (*(*(v90 + 8) + 24))(**(v90 + 8), v93, v94);
        *(v16 - 3) = v18;
        *(v16 - 2) = v19;
        *(v16 - 1) = v20;
        *v16 = *&v9[4 * v18];
        v16[1] = *&v9[4 * v19];
        v16[2] = *&v9[4 * v20];
        *&v9[4 * v20] = v91;
        *&v9[4 * v19] = v91;
        *&v9[4 * v18] = v91;
        ++*(v10 + v18);
        ++*(v10 + v19);
        ++*(v10 + v20);
        v12 = v89;
        v15 = v91 + 1;
        v14 = *(v90 + 8);
        v16 += 6;
      }

      while ((v91 + 1) < *(v14 + 8));
      v21 = v91 + 1;
      LODWORD(v92[0]) = v91 + 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = *v12;
    v23 = malloc_type_malloc((v22 >> 3) + 1, 0x100004077774924uLL);
    bzero(v23, (v22 >> 3) + 1);
    if (!v22)
    {
      goto LABEL_46;
    }

    v24 = 0;
    v25 = 0;
    v26 = v8 + 1;
    do
    {
      if (*(v10 + *(v26 - 1)) == 1 || *(v10 + *v26) == 1 || *(v10 + v26[1]) == 1)
      {
        v27 = v24 >> 3;
        v28 = bitmask[v24 & 7];
        if (!((v28 & *(v23 + v27)) >> (v24 & 7)))
        {
          v86[v25++] = v24;
          *(v23 + v27) |= v28;
        }
      }

      ++v24;
      v26 += 6;
    }

    while (v22 != v24);
    if (v25)
    {
      v29 = 0;
      do
      {
        v30 = 0;
        v31 = v86[v29++];
        v32 = &v8[6 * v31];
        do
        {
          v33 = v32[v30];
          v34 = &v9[4 * v33];
          for (i = *v34; i != v31 && i != -1; i = v40)
          {
            v37 = &v8[6 * i];
            if (*v37 == v33)
            {
              v38 = 0;
            }

            else if (v37[1] == v33)
            {
              v38 = 1;
            }

            else
            {
              v38 = 2;
            }

            v39 = &v8[6 * i + v38];
            v40 = *(v39 + 12);
            v34 = (v39 + 12);
          }

          if (i == -1)
          {
            printf("\nerror remove edge %d dump graph", v31);
            bdz_dump_graph(v92, v21);
            exit(-1);
          }

          *v34 = v8[6 * i + 3 + v30];
          --*(v10 + v33);
          ++v30;
        }

        while (v30 != 3);
        v42 = *v32;
        v41 = v32[1];
        v43 = v32[2];
        if (*(v10 + v42) == 1)
        {
          v44 = *&v9[4 * v42];
          v45 = bitmask[v44 & 7];
          if (!((v45 & *(v23 + (v44 >> 3))) >> (v44 & 7)))
          {
            v86[v25++] = v44;
            *(v23 + (v44 >> 3)) |= v45;
          }
        }

        if (*(v10 + v41) == 1)
        {
          v46 = *&v9[4 * v41];
          v47 = bitmask[v46 & 7];
          if (!((v47 & *(v23 + (v46 >> 3))) >> (v46 & 7)))
          {
            v86[v25++] = v46;
            *(v23 + (v46 >> 3)) |= v47;
          }
        }

        if (*(v10 + v43) == 1)
        {
          v48 = *&v9[4 * v43];
          v49 = bitmask[v48 & 7];
          if (!((v49 & *(v23 + (v48 >> 3))) >> (v48 & 7)))
          {
            v86[v25++] = v48;
            *(v23 + (v48 >> 3)) |= v49;
          }
        }
      }

      while (v29 != v25);
    }

    else
    {
LABEL_46:
      v29 = 0;
    }

    free(v23);
    if (v29 == v22)
    {
      break;
    }

    v3 = v87;
    v11 = v88 - 1;
    hash_state_destroy(*(v87 + 3));
    *(v87 + 3) = 0;
    v2 = v90;
    if (*(v90 + 16))
    {
      fprintf(*MEMORY[0x29EDCA610], "acyclic graph creation failure - %u iterations remaining\n", v11);
    }

    if (v88 == 1)
    {
      free(v86);
      free(v8);
      free(v9);
      free(v10);
      v50 = 0;
      goto LABEL_86;
    }
  }

  free(v9);
  free(v10);
  v51 = MEMORY[0x29EDCA610];
  if (*(v90 + 16))
  {
    fprintf(*MEMORY[0x29EDCA610], "Entering assigning step for mph creation of %u keys with graph sized %u\n", *v87, v87[1]);
  }

  v52 = malloc_type_malloc((v87[1] >> 3) + 1, 0x100004077774924uLL);
  LODWORD(v9) = vcvtpd_u64_f64(vcvtd_n_f64_u32(v87[1], 2uLL));
  *(v87 + 2) = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
  bzero(v52, (v87[1] >> 3) + 1);
  memset(*(v87 + 2), 255, v9);
  if (v21)
  {
    v53 = v21;
    do
    {
      v54 = &v8[6 * v86[v53 - 1]];
      v55 = *v54;
      v56 = v54[1];
      v57 = v54[2];
      v58 = bitmask[v55 & 7];
      v59 = &v52[v56 >> 3];
      v60 = bitmask[v56 & 7];
      v61 = (v60 & *v59) >> (v56 & 7);
      if ((v58 & v52[v55 >> 3]) >> (v55 & 7))
      {
        if (v61)
        {
          v62 = *(v87 + 2);
          v63 = 8 - (((*(v62 + (v56 >> 2)) >> (2 * (v56 & 3))) & 3) + ((*(v62 + (v55 >> 2)) >> (2 * (v55 & 3))) & 3));
          *(v62 + (v57 >> 2)) &= valuemask[v57 & 3] | ((v63 - 3 * ((86 * v63) >> 8)) << (2 * (v57 & 3)));
          v58 = bitmask[v57 & 7];
          v59 = &v52[v57 >> 3];
        }

        else
        {
          v65 = bitmask[v57 & 7];
          if (!((v65 & v52[v57 >> 3]) >> (v57 & 7)))
          {
            *(*(v87 + 2) + (v57 >> 2)) &= valuemask[v57 & 3] | (3 << (2 * (v57 & 3)));
            v52[v57 >> 3] |= v65;
          }

          v68 = *(v87 + 2);
          v69 = (((*(v68 + (v57 >> 2)) >> (2 * (v57 & 3))) & 3) + ((*(v68 + (v55 >> 2)) >> (2 * (v55 & 3))) & 3)) ^ 7;
          *(v68 + (v56 >> 2)) &= valuemask[v56 & 3] | ((v69 - 3 * ((86 * v69) >> 8)) << (2 * (v56 & 3)));
          v58 = v60;
        }
      }

      else
      {
        if (!v61)
        {
          *(*(v87 + 2) + (v56 >> 2)) &= valuemask[v56 & 3] | (3 << (2 * (v56 & 3)));
          *v59 |= v60;
        }

        v64 = bitmask[v57 & 7];
        if (!((v64 & v52[v57 >> 3]) >> (v57 & 7)))
        {
          *(*(v87 + 2) + (v57 >> 2)) &= valuemask[v57 & 3] | (3 << (2 * (v57 & 3)));
          v52[v57 >> 3] |= v64;
        }

        v66 = *(v87 + 2);
        v67 = 6 - (((*(v66 + (v57 >> 2)) >> (2 * (v57 & 3))) & 3) + ((*(v66 + (v56 >> 2)) >> (2 * (v56 & 3))) & 3));
        *(v66 + (v55 >> 2)) &= valuemask[v55 & 3] | ((v67 - 3 * ((86 * v67) >> 8)) << (2 * (v55 & 3)));
        v59 = &v52[v55 >> 3];
      }

      *v59 |= v58;
      --v53;
    }

    while (v53 * 4);
  }

  free(v52);
  free(v86);
  free(v8);
  if (*(v90 + 16))
  {
    fprintf(*v51, "Entering ranking step for mph creation of %u keys with graph sized %u\n", *v87, v87[1]);
  }

  v70 = v87[8];
  v71 = v87[1];
  v72 = malloc_type_calloc(v87[10], 4uLL, 0x100004052888210uLL);
  *(v87 + 6) = v72;
  *v72 = 0;
  if (v87[10] != 1)
  {
    v73 = 0;
    v74 = 0;
    v75 = v70 >> 2;
    v76 = vcvtpd_u64_f64(vcvtd_n_f64_u32(v71, 2uLL));
    v77 = 1;
    do
    {
      if (v70 >> 2 >= v76)
      {
        v78 = v76;
      }

      else
      {
        v78 = v70 >> 2;
      }

      if (v75 >= v76)
      {
        v79 = v76;
      }

      else
      {
        v79 = v70 >> 2;
      }

      if (v79)
      {
        v80 = (*(v87 + 2) + v74);
        do
        {
          v81 = *v80++;
          v73 += bdz_lookup_table[v81];
          --v78;
        }

        while (v78);
      }

      v72[v77] = v73;
      v74 += v79;
      v76 -= v75;
      ++v77;
    }

    while (v77 != v87[10]);
  }

  v50 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v50 = *v90;
  v82 = malloc_type_malloc(0x38uLL, 0x1030040C16D3081uLL);
  v83 = *(v87 + 1);
  *(v87 + 2) = 0;
  v82[1] = v83;
  *(v87 + 3) = 0;
  *(v82 + 6) = *(v87 + 6);
  *(v87 + 6) = 0;
  *(v82 + 10) = v87[10];
  *(v82 + 8) = v87[8];
  *(v82 + 36) = *(v87 + 36);
  *&v83 = *v87;
  *v82 = *v87;
  *(v82 + 2) = v87[2];
  v50[2] = v82;
  *(v50 + 1) = v83;
  if (*(v90 + 16))
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *v51);
  }

LABEL_86:
  v84 = *MEMORY[0x29EDCA608];
  return v50;
}

uint64_t bdz_dump(uint64_t a1, FILE *a2)
{
  v7 = 0;
  __ptr = 0;
  v3 = *(a1 + 16);
  __cmph_dump(a1, a2);
  hash_state_dump(*(v3 + 24), &v7, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v7, __ptr, 1uLL, a2);
  free(v7);
  fwrite((v3 + 4), 4uLL, 1uLL, a2);
  fwrite(v3, 4uLL, 1uLL, a2);
  fwrite((v3 + 8), 4uLL, 1uLL, a2);
  LODWORD(v4) = vcvtpd_u64_f64(vcvtd_n_f64_u32(*(v3 + 4), 2uLL));
  fwrite(*(v3 + 16), v4, 1uLL, a2);
  fwrite((v3 + 32), 4uLL, 1uLL, a2);
  fwrite((v3 + 36), 1uLL, 1uLL, a2);
  fwrite((v3 + 40), 4uLL, 1uLL, a2);
  fwrite(*(v3 + 48), 4 * *(v3 + 40), 1uLL, a2);
  return 1;
}

size_t bdz_load(FILE *a1, uint64_t a2)
{
  __ptr = 0;
  v4 = malloc_type_malloc(0x38uLL, 0x1030040C16D3081uLL);
  *(a2 + 16) = v4;
  fread(&__ptr, 4uLL, 1uLL, a1);
  v5 = __ptr;
  v6 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
  fread(v6, v5, 1uLL, a1);
  v4[3] = hash_state_load(v6);
  free(v6);
  fread(v4 + 4, 4uLL, 1uLL, a1);
  fread(v4, 4uLL, 1uLL, a1);
  fread(v4 + 1, 4uLL, 1uLL, a1);
  LODWORD(v5) = vcvtpd_u64_f64(vcvtd_n_f64_u32(*(v4 + 1), 2uLL));
  v7 = malloc_type_calloc(v5, 1uLL, 0x100004077774924uLL);
  v4[2] = v7;
  fread(v7, v5, 1uLL, a1);
  fread(v4 + 4, 4uLL, 1uLL, a1);
  fread(v4 + 36, 1uLL, 1uLL, a1);
  fread(v4 + 5, 4uLL, 1uLL, a1);
  v8 = malloc_type_calloc(*(v4 + 10), 4uLL, 0x100004052888210uLL);
  v4[6] = v8;
  v9 = 4 * *(v4 + 10);

  return fread(v8, v9, 1uLL, a1);
}

uint64_t bdz_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  hash_vector(*(v3 + 24), a2, a3, &v18);
  v4 = *(v3 + 8);
  v18.i32[0] %= v4;
  v18.i32[1] = v18.i32[1] % v4 + v4;
  v19 = v19 % v4 + 2 * v4;
  v5 = *(v3 + 16);
  v6 = ((*(v5 + (v18.u32[1] >> 2)) >> (2 * (v18.i8[4] & 3))) & 3) + ((*(v5 + (v18.u32[0] >> 2)) >> (2 * (v18.i8[0] & 3))) & 3) + ((*(v5 + (v19 >> 2)) >> (2 * (v19 & 3))) & 3);
  v7 = v18.u32[(v6 - 3 * ((86 * v6) >> 8))];
  v8 = *(v3 + 36);
  result = *(*(v3 + 48) + 4 * (v7 >> v8));
  v10 = v7 >> v8 << v8 >> 2;
  v11 = v7 >> 2;
  if (v10 >= (v7 >> 2))
  {
    LODWORD(v11) = v10;
  }

  else
  {
    v12 = (v5 + v10);
    v13 = v11 - v10;
    do
    {
      v14 = *v12++;
      result = result + bdz_lookup_table[v14];
      --v13;
    }

    while (v13);
  }

  v15 = 4 * v11;
  if (4 * v11 < v7)
  {
    v16 = 8 * v11;
    do
    {
      if ((~(*(v5 + (v15 >> 2)) >> (v16 & 6)) & 3) != 0)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      ++v15;
      v16 += 2;
    }

    while (v7 != v15);
  }

  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void bdz_destroy(void *a1)
{
  v2 = a1[2];
  free(*(v2 + 16));
  hash_state_destroy(*(v2 + 24));
  free(*(v2 + 48));
  free(v2);

  free(a1);
}

void *bdz_pack(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  type = hash_get_type(*(v3 + 24));
  *a2++ = type;
  hash_state_pack(*(v3 + 24), a2);
  v5 = (a2 + hash_state_packed_size(type));
  *v5 = *(v3 + 8);
  v6 = *(v3 + 40);
  v5[1] = v6;
  v7 = v5 + 2;
  memcpy(v5 + 2, *(v3 + 48), 4 * v6);
  v8 = &v7[*(v3 + 40)];
  *v8 = *(v3 + 36);
  v9 = v8 + 1;
  LODWORD(v10) = vcvtpd_u64_f64(vcvtd_n_f64_u32(*(v3 + 4), 2uLL));
  v11 = *(v3 + 16);

  return memcpy(v9, v11, v10);
}

uint64_t bdz_packed_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  type = hash_get_type(*(v1 + 24));
  return hash_state_packed_size(type) + 4 * *(v1 + 40) + vcvtpd_u64_f64(vcvtd_n_f64_u32(*(v1 + 4), 2uLL)) + 17;
}

uint64_t bdz_search_packed(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 1);
  v6 = *a1;
  v7 = hash_state_packed_size(*a1);
  v8 = (v5 + v7);
  v9 = v8 + 2;
  v10 = *v8;
  v11 = v8[1];
  v12 = &v8[v11 + 2];
  v15 = *v12;
  v13 = v12 + 1;
  v14 = v15;
  hash_vector_packed(v5, v6, a2, a3, &v28);
  v28.i32[0] %= v10;
  v28.i32[1] = v28.i32[1] % v10 + v10;
  v29 = v29 % v10 + 2 * v10;
  v16 = ((v13[v28.u32[1] >> 2] >> (2 * (v28.i8[4] & 3))) & 3) + ((v13[v28.u32[0] >> 2] >> (2 * (v28.i8[0] & 3))) & 3) + ((v13[v29 >> 2] >> (2 * (v29 & 3))) & 3);
  v17 = v28.u32[(v16 - 3 * ((86 * v16) >> 8))];
  result = v9[v17 >> v15];
  v19 = v17 >> v14 << v14 >> 2;
  v20 = v17 >> 2;
  if (v19 >= (v17 >> 2))
  {
    LODWORD(v20) = v17 >> v14 << v14 >> 2;
  }

  else
  {
    v21 = &a1[v11 + 3] + v7 + v19 + 1;
    v22 = v20 - v19;
    do
    {
      v23 = *v21++;
      result = result + bdz_lookup_table[v23];
      --v22;
    }

    while (v22);
  }

  v24 = 4 * v20;
  if (4 * v20 < v17)
  {
    v25 = 8 * v20;
    do
    {
      if ((~(v13[v24 >> 2] >> (v25 & 6)) & 3) != 0)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      ++v24;
      v25 += 2;
    }

    while (v17 != v24);
  }

  v26 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t bdz_dump_graph(uint64_t result, unsigned int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    v5 = 24 * a2;
    do
    {
      printf("\nedge %d %d %d %d ", v4, *(*(v2 + 8) + v3), *(*(v2 + 8) + v3 + 4), *(*(v2 + 8) + v3 + 8));
      result = printf(" nexts %d %d %d", *(*(v2 + 8) + v3 + 12), *(*(v2 + 8) + v3 + 16), *(*(v2 + 8) + v3 + 20));
      ++v4;
      v3 += 24;
    }

    while (v5 != v3);
  }

  return result;
}

double bdz_ph_config_new()
{
  v0 = malloc_type_malloc(0x20uLL, 0x1030040D1A1786CuLL);
  if (!v0)
  {
    bdz_ph_config_new_cold_1();
  }

  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t bdz_ph_config_set_hashfuncs(uint64_t result, _DWORD *a2)
{
  if (*a2 != 1)
  {
    **(result + 32) = *a2;
  }

  return result;
}

void *bdz_ph_new(uint64_t a1, double a2)
{
  v2 = a1;
  v95 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (a2 == 0.0)
  {
    a2 = 1.23;
  }

  v4 = *(*(a1 + 8) + 8);
  v5 = vcvtpd_u64_f64(a2 * v4 / 3.0) | 1;
  v6 = 3 * v5;
  *(v3 + 4) = v4;
  *(v3 + 8) = v6;
  *(v3 + 12) = v5;
  v7 = malloc_type_malloc(24 * v4, 0x1000040504FFAC1uLL);
  v90[1] = v7;
  v8 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  v90[2] = v8;
  v9 = malloc_type_malloc(v6, 0x100004077774924uLL);
  v90[3] = v9;
  v84 = malloc_type_malloc(4 * *(v3 + 4), 0x100004052888210uLL);
  if (*(v2 + 16))
  {
    fprintf(*MEMORY[0x29EDCA610], "Entering mapping step for mph creation of %u keys with graph sized %u\n", *(v3 + 4), *(v3 + 8));
  }

  v90[0] = 0;
  v10 = 100;
  v88 = v2;
  v85 = v3;
  while (1)
  {
    v86 = v10;
    *(v3 + 24) = hash_state_new(*v3, 0xFu);
    v11 = *(v2 + 32);
    v12 = *(v11 + 8);
    memset(v8, 255, 4 * v12);
    bzero(v9, v12);
    LODWORD(v90[0]) = 0;
    (*(*(v2 + 8) + 32))(**(v2 + 8));
    v13 = *(v2 + 8);
    if (*(v13 + 8))
    {
      v14 = 0;
      v15 = v7 + 3;
      v87 = v11;
      do
      {
        v89 = v14;
        v92 = 0;
        v91 = 0;
        (*(v13 + 16))(*v13, &v91, &v92);
        hash_vector(*(v11 + 24), v91, v92, &v93);
        v16 = *(v11 + 12);
        v17 = v93.i32[0] % v16;
        v18 = v93.i32[1] % v16 + v16;
        v19 = v94 % v16 + 2 * v16;
        (*(*(v88 + 8) + 24))(**(v88 + 8), v91, v92);
        *(v15 - 3) = v17;
        *(v15 - 2) = v18;
        *(v15 - 1) = v19;
        *v15 = *&v8[4 * v17];
        v15[1] = *&v8[4 * v18];
        v15[2] = *&v8[4 * v19];
        *&v8[4 * v19] = v89;
        *&v8[4 * v18] = v89;
        *&v8[4 * v17] = v89;
        ++*(v9 + v17);
        ++*(v9 + v18);
        ++*(v9 + v19);
        v11 = v87;
        v14 = v89 + 1;
        v13 = *(v88 + 8);
        v15 += 6;
      }

      while ((v89 + 1) < *(v13 + 8));
      v20 = v89 + 1;
      LODWORD(v90[0]) = v89 + 1;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v11 + 4);
    v22 = malloc_type_malloc((v21 >> 3) + 1, 0x100004077774924uLL);
    bzero(v22, (v21 >> 3) + 1);
    if (!v21)
    {
      goto LABEL_46;
    }

    v23 = 0;
    v24 = 0;
    v25 = v7 + 1;
    do
    {
      if (*(v9 + *(v25 - 1)) == 1 || *(v9 + *v25) == 1 || *(v9 + v25[1]) == 1)
      {
        v26 = v23 >> 3;
        v27 = bitmask_0[v23 & 7];
        if (!((v27 & *(v22 + v26)) >> (v23 & 7)))
        {
          v84[v24++] = v23;
          *(v22 + v26) |= v27;
        }
      }

      ++v23;
      v25 += 6;
    }

    while (v21 != v23);
    if (v24)
    {
      v28 = 0;
      do
      {
        v29 = 0;
        v30 = v84[v28++];
        v31 = &v7[6 * v30];
        do
        {
          v32 = v31[v29];
          v33 = &v8[4 * v32];
          for (i = *v33; i != v30 && i != -1; i = v39)
          {
            v36 = &v7[6 * i];
            if (*v36 == v32)
            {
              v37 = 0;
            }

            else if (v36[1] == v32)
            {
              v37 = 1;
            }

            else
            {
              v37 = 2;
            }

            v38 = &v7[6 * i + v37];
            v39 = *(v38 + 12);
            v33 = (v38 + 12);
          }

          if (i == -1)
          {
            printf("\nerror remove edge %d dump graph", v30);
            bdz_ph_dump_graph(v90, v20, v20 + (v20 >> 2));
            exit(-1);
          }

          *v33 = v7[6 * i + 3 + v29];
          --*(v9 + v32);
          ++v29;
        }

        while (v29 != 3);
        v41 = *v31;
        v40 = v31[1];
        v42 = v31[2];
        if (*(v9 + v41) == 1)
        {
          v43 = *&v8[4 * v41];
          v44 = bitmask_0[v43 & 7];
          if (!((v44 & *(v22 + (v43 >> 3))) >> (v43 & 7)))
          {
            v84[v24++] = v43;
            *(v22 + (v43 >> 3)) |= v44;
          }
        }

        if (*(v9 + v40) == 1)
        {
          v45 = *&v8[4 * v40];
          v46 = bitmask_0[v45 & 7];
          if (!((v46 & *(v22 + (v45 >> 3))) >> (v45 & 7)))
          {
            v84[v24++] = v45;
            *(v22 + (v45 >> 3)) |= v46;
          }
        }

        if (*(v9 + v42) == 1)
        {
          v47 = *&v8[4 * v42];
          v48 = bitmask_0[v47 & 7];
          if (!((v48 & *(v22 + (v47 >> 3))) >> (v47 & 7)))
          {
            v84[v24++] = v47;
            *(v22 + (v47 >> 3)) |= v48;
          }
        }
      }

      while (v28 != v24);
    }

    else
    {
LABEL_46:
      v28 = 0;
    }

    free(v22);
    if (v28 == v21)
    {
      break;
    }

    v3 = v85;
    v10 = v86 - 1;
    hash_state_destroy(*(v85 + 24));
    *(v85 + 24) = 0;
    v2 = v88;
    if (*(v88 + 16))
    {
      fprintf(*MEMORY[0x29EDCA610], "acyclic graph creation failure - %u iterations remaining\n", v10);
    }

    if (v86 == 1)
    {
      free(v84);
      free(v7);
      free(v8);
      free(v9);
      v49 = 0;
      goto LABEL_75;
    }
  }

  free(v8);
  free(v9);
  v50 = MEMORY[0x29EDCA610];
  if (*(v88 + 16))
  {
    fprintf(*MEMORY[0x29EDCA610], "Entering assigning step for mph creation of %u keys with graph sized %u\n", *(v85 + 4), *(v85 + 8));
  }

  v51 = malloc_type_malloc((*(v85 + 8) >> 3) + 1, 0x100004077774924uLL);
  v52 = v51;
  LODWORD(v51) = vcvtpd_u64_f64(vcvtd_n_f64_u32(*(v85 + 8), 2uLL));
  *(v85 + 16) = malloc_type_calloc(v51, 1uLL, 0x100004077774924uLL);
  bzero(v52, (*(v85 + 8) >> 3) + 1);
  if (v20)
  {
    v53 = v20;
    do
    {
      v54 = &v7[6 * v84[v53 - 1]];
      v56 = *v54;
      v55 = v54[1];
      v57 = v54[2];
      v58 = bitmask_0[v56 & 7];
      v59 = &v52[v55 >> 3];
      v60 = *v59;
      v61 = bitmask_0[v55 & 7];
      v62 = (v61 & v60) >> (v55 & 7);
      if ((v58 & v52[v56 >> 3]) >> (v56 & 7))
      {
        if (v62)
        {
          v63 = *(v85 + 16);
          v64 = 8 - (((*(v63 + (v55 >> 2)) >> (2 * (v55 & 3))) & 3) + ((*(v63 + (v56 >> 2)) >> (2 * (v56 & 3))) & 3));
          *(v63 + (v57 >> 2)) |= (v64 - 3 * ((86 * v64) >> 8)) << (2 * (v57 & 3));
          v58 = bitmask_0[v57 & 7];
          v59 = &v52[v57 >> 3];
        }

        else
        {
          v69 = v52[v57 >> 3];
          v70 = bitmask_0[v57 & 7];
          if (!((v70 & v69) >> (v57 & 7)))
          {
            v52[v57 >> 3] = v70 | v69;
          }

          v71 = *(v85 + 16);
          v72 = (((*(v71 + (v57 >> 2)) >> (2 * (v57 & 3))) & 3) + ((*(v71 + (v56 >> 2)) >> (2 * (v56 & 3))) & 3)) ^ 7;
          *(v71 + (v55 >> 2)) |= (v72 - 3 * ((86 * v72) >> 8)) << (2 * (v55 & 3));
          v58 = v61;
        }
      }

      else
      {
        if (!v62)
        {
          *v59 = v61 | v60;
        }

        v65 = v52[v57 >> 3];
        v66 = bitmask_0[v57 & 7];
        if (!((v66 & v65) >> (v57 & 7)))
        {
          v52[v57 >> 3] = v66 | v65;
        }

        v67 = *(v85 + 16);
        v68 = 6 - (((*(v67 + (v57 >> 2)) >> (2 * (v57 & 3))) & 3) + ((*(v67 + (v55 >> 2)) >> (2 * (v55 & 3))) & 3));
        *(v67 + (v56 >> 2)) |= (v68 - 3 * ((86 * v68) >> 8)) << (2 * (v56 & 3));
        v59 = &v52[v56 >> 3];
      }

      *v59 |= v58;
      --v53;
    }

    while (v53 * 4);
  }

  free(v52);
  free(v84);
  free(v7);
  if (*(v88 + 16))
  {
    v73 = fwrite("Starting optimization step\n", 0x1BuLL, 1uLL, *v50);
  }

  LODWORD(v74) = *(v85 + 8);
  LODWORD(v73) = vcvtpd_u64_f64(v74 / 5.0);
  v75 = malloc_type_calloc(v73, 1uLL, 0x100004077774924uLL);
  v76 = v75;
  if (*(v85 + 8))
  {
    v77 = 0;
    v78 = 0;
    v79 = &pow3_table;
    do
    {
      v75[v78 / 5uLL] += ((*(*(v85 + 16) + (v78 >> 2)) >> (v77 & 6)) & 3) * v79[-5 * (v78 / 5)];
      ++v78;
      ++v79;
      v77 += 2;
    }

    while (v78 < *(v85 + 8));
  }

  free(*(v85 + 16));
  *(v85 + 16) = v76;
  v49 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v49 = *v88;
  v80 = malloc_type_malloc(0x20uLL, 0x1030040ECD7FD48uLL);
  *(v80 + 1) = *(v85 + 16);
  *(v85 + 16) = 0;
  *(v85 + 24) = 0;
  *v80 = *(v85 + 4);
  v81 = *(v85 + 8);
  *(v80 + 4) = v81;
  v49[2] = v80;
  *(v49 + 1) = v81;
  if (*(v88 + 16))
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *v50);
  }

LABEL_75:
  v82 = *MEMORY[0x29EDCA608];
  return v49;
}

uint64_t bdz_ph_dump(uint64_t a1, FILE *a2)
{
  v8 = 0;
  __ptr = 0;
  v3 = *(a1 + 16);
  __cmph_dump(a1, a2);
  hash_state_dump(*(v3 + 24), &v8, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v8, __ptr, 1uLL, a2);
  free(v8);
  fwrite((v3 + 4), 4uLL, 1uLL, a2);
  fwrite(v3, 4uLL, 1uLL, a2);
  fwrite((v3 + 8), 4uLL, 1uLL, a2);
  LODWORD(v4) = *(v3 + 4);
  LODWORD(v5) = vcvtpd_u64_f64(v4 / 5.0);
  fwrite(*(v3 + 16), v5, 1uLL, a2);
  return 1;
}

size_t bdz_ph_load(FILE *a1, uint64_t a2)
{
  __ptr = 0;
  v4 = malloc_type_malloc(0x20uLL, 0x1030040ECD7FD48uLL);
  *(a2 + 16) = v4;
  fread(&__ptr, 4uLL, 1uLL, a1);
  v7 = __ptr;
  v5 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
  fread(v5, v7, 1uLL, a1);
  v4[3] = hash_state_load(v5);
  free(v5);
  fread(v4 + 4, 4uLL, 1uLL, a1);
  fread(v4, 4uLL, 1uLL, a1);
  fread(v4 + 1, 4uLL, 1uLL, a1);
  LODWORD(v6) = *(v4 + 1);
  LODWORD(v7) = vcvtpd_u64_f64(v6 / 5.0);
  v8 = malloc_type_calloc(v7, 1uLL, 0x100004077774924uLL);
  v4[2] = v8;

  return fread(v8, v7, 1uLL, a1);
}

uint64_t bdz_ph_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  hash_vector(*(v3 + 24), a2, a3, &v9);
  v4 = *(v3 + 8);
  v9.i32[0] %= v4;
  v9.i32[1] = v9.i32[1] % v4 + v4;
  v10 = v10 % v4 + 2 * v4;
  v5 = *(v3 + 16);
  v6 = lookup_table[256 * (v9.i32[1] % 5u) + *(v5 + v9.u32[1] / 5uLL)] + lookup_table[256 * (v9.i32[0] % 5u) + *(v5 + v9.u32[0] / 5uLL)] + lookup_table[256 * (v10 % 5) + *(v5 + v10 / 5uLL)];
  result = v9.u32[(v6 - 3 * ((21846 * v6) >> 16))];
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void bdz_ph_destroy(void *a1)
{
  v2 = a1[2];
  free(*(v2 + 16));
  hash_state_destroy(*(v2 + 24));
  free(v2);

  free(a1);
}

void *bdz_ph_pack(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  type = hash_get_type(*(v3 + 24));
  *a2++ = type;
  hash_state_pack(*(v3 + 24), a2);
  v5 = (a2 + hash_state_packed_size(type));
  *v5 = *(v3 + 8);
  v6 = v5 + 1;
  LODWORD(v7) = *(v3 + 4);
  LODWORD(v8) = vcvtpd_u64_f64(v7 / 5.0);
  v9 = *(v3 + 16);

  return memcpy(v6, v9, v8);
}

uint64_t bdz_ph_packed_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  type = hash_get_type(*(v1 + 24));
  LODWORD(v3) = *(v1 + 4);
  return hash_state_packed_size(type) + vcvtpd_u64_f64(v3 / 5.0) + 12;
}

uint64_t bdz_ph_search_packed(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 1);
  v6 = *a1;
  v7 = (a1 + hash_state_packed_size(*a1) + 4);
  v9 = *v7++;
  v8 = v9;
  hash_vector_packed(v5, v6, a2, a3, &v15);
  v15.i32[0] %= v9;
  v15.i32[1] = v15.i32[1] % v8 + v8;
  v10 = *(v7 + v15.u32[0] / 5uLL);
  v11 = *(v7 + v15.u32[1] / 5uLL);
  v16 = v16 % v8 + 2 * v8;
  v12 = lookup_table[256 * (v15.i32[1] % 5u) + v11] + lookup_table[256 * (v15.i32[0] % 5u) + v10] + lookup_table[256 * (v16 % 5) + *(v7 + v16 / 5uLL)];
  result = v15.u32[(v12 - 3 * ((21846 * v12) >> 16))];
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t bdz_ph_dump_graph(uint64_t result, unsigned int a2, int a3)
{
  v4 = result;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 24 * a2;
    do
    {
      printf("\nedge %d %d %d %d ", v6, *(*(v4 + 8) + v5), *(*(v4 + 8) + v5 + 4), *(*(v4 + 8) + v5 + 8));
      result = printf(" nexts %d %d %d", *(*(v4 + 8) + v5 + 12), *(*(v4 + 8) + v5 + 16), *(*(v4 + 8) + v5 + 20));
      ++v6;
      v5 += 24;
    }

    while (v7 != v5);
  }

  if (a3)
  {
    v8 = 0;
    do
    {
      result = printf("\nfirst for vertice %d %d ", v8, *(*(v4 + 16) + 4 * v8));
      ++v8;
    }

    while (a3 != v8);
  }

  return result;
}

double bmz_config_new()
{
  v0 = malloc_type_malloc(0x28uLL, 0x10B004021B77C51uLL);
  if (v0)
  {
    v0[4] = 0;
    result = 0.0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
  }

  return result;
}

uint64_t bmz_config_set_hashfuncs(uint64_t result, _DWORD *a2)
{
  if (*a2 != 1)
  {
    v2 = *(result + 32);
    *v2 = *a2;
    v3 = a2[1];
    if (v3 != 1)
    {
      v2[1] = v3;
    }
  }

  return result;
}

void *bmz_new(uint64_t a1, double a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 8) + 8);
  if (a2 == 0.0)
  {
    v5 = 1.15;
  }

  else
  {
    v5 = a2;
  }

  v6 = vcvtpd_u64_f64(v5 * v4);
  *(v3 + 8) = v4;
  *(v3 + 12) = v6;
  *(v3 + 16) = graph_new(v6, v4);
  v7 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
  v8 = 0;
  *(v3 + 32) = v7;
  do
  {
    *(*(v3 + 32) + v8) = 0;
    v8 += 8;
  }

  while (v8 != 24);
  v9 = 0;
  v10 = 20;
  v11 = MEMORY[0x29EDCA610];
  v80 = v2;
  do
  {
    if (*(v2 + 16))
    {
      fprintf(*v11, "Entering mapping step for mph creation of %u keys with graph sized %u\n", *(v3 + 8), *(v3 + 12));
    }

    v12 = 100;
    while (1)
    {
      **(v3 + 32) = hash_state_new(*v3, *(v3 + 12));
      *(*(v3 + 32) + 8) = hash_state_new(*(v3 + 4), *(v3 + 12));
      v13 = *(v2 + 32);
      graph_clear_edges(*(v13 + 16));
      (*(*(v2 + 8) + 32))(**(v2 + 8));
      v14 = *(v2 + 8);
      if (!*(v14 + 8))
      {
        break;
      }

      v15 = 0;
      while (1)
      {
        LODWORD(v89) = 0;
        v90 = 0;
        (*(v14 + 16))(*v14, &v90, &v89);
        v16 = hash(**(v13 + 32), v90, v89) % *(v13 + 12);
        v17 = hash(*(*(v13 + 32) + 8), v90, v89);
        v18 = *(v13 + 12);
        v19 = v17 % v18;
        v20 = v17 % v18 + 1 < v18 ? v19 + 1 : 0;
        v21 = v16 == v19 ? v20 : v19;
        if (v16 == v21)
        {
          break;
        }

        (*(*(v2 + 8) + 24))(**(v2 + 8), v90, v89);
        v22 = graph_contains_edge(*(v13 + 16), v16, v21);
        if (*(v2 + 16) && v22)
        {
          fwrite("A non simple graph was generated\n", 0x21uLL, 1uLL, *v11);
          goto LABEL_28;
        }

        if (v22)
        {
          goto LABEL_28;
        }

        graph_add_edge(*(v13 + 16), v16, v21);
        ++v15;
        v14 = *(v2 + 8);
        if (v15 >= *(v14 + 8))
        {
          goto LABEL_32;
        }
      }

      if (*(v2 + 16))
      {
        fprintf(*v11, "Self loop for key %u\n", v15);
      }

      (*(*(v2 + 8) + 24))(**(v2 + 8), v90, v89);
LABEL_28:
      --v12;
      hash_state_destroy(**(v3 + 32));
      **(v3 + 32) = 0;
      hash_state_destroy(*(*(v3 + 32) + 8));
      *(*(v3 + 32) + 8) = 0;
      if (*(v2 + 16))
      {
        fprintf(*v11, "simple graph creation failure - %u iterations remaining\n", v12);
      }

      if (!v12)
      {
        graph_destroy(*(v3 + 16));
        return 0;
      }
    }

LABEL_32:
    if (*(v2 + 16))
    {
      fwrite("Starting ordering step\n", 0x17uLL, 1uLL, *v11);
    }

    v83 = v10;
    graph_obtain_critical_nodes(*(v3 + 16));
    if (*(v2 + 16))
    {
      fwrite("Starting Searching step.\n", 0x19uLL, 1uLL, *v11);
      fwrite("\tTraversing critical vertices.\n", 0x1FuLL, 1uLL, *v11);
    }

    v23 = malloc_type_malloc((*(v3 + 12) >> 3) + 1, 0x100004077774924uLL);
    bzero(v23, (*(v3 + 12) >> 3) + 1);
    v24 = malloc_type_malloc((*(v3 + 8) >> 3) + 1, 0x100004077774924uLL);
    bzero(v24, (*(v3 + 8) >> 3) + 1);
    free(*(v3 + 24));
    v25 = malloc_type_calloc(*(v3 + 12), 4uLL, 0x100004052888210uLL);
    *(v3 + 24) = v25;
    if (!v25)
    {
      bmz_new_cold_1();
    }

    if (*(v3 + 12))
    {
      v26 = 0;
      v88 = 0;
      v27 = 1;
      do
      {
        if (graph_node_is_critical(*(v3 + 16), v26))
        {
          v28 = v26 >> 3;
          v29 = bitmask_1[v26 & 7];
          if (!((v29 & *(v23 + (v26 >> 3))) >> (v26 & 7)))
          {
            v30 = graph_ncritical_nodes(*(v3 + 16));
            if (v5 <= 1.14)
            {
              v33 = vqueue_new(vcvtd_n_f64_u32(v30, 1uLL) + 1);
              v89 = 0;
              v90 = 0;
              *(*(v3 + 24) + 4 * v26) = vcvtpd_u64_f64(vcvtd_n_f64_u32(v27, 1uLL)) - 1;
              *(v23 + v28) |= v29;
              vqueue_insert(v33, v26);
              if (vqueue_is_empty(v33))
              {
                v34 = 0;
                v35 = 0;
              }

              else
              {
                v87 = 0;
                v81 = 0;
                v82 = v33;
                v34 = 0;
                do
                {
                  v51 = vqueue_remove(v33);
                  v90 = graph_neighbors_it(*(v3 + 16), v51);
                  v52 = graph_next_neighbor(*(v3 + 16), &v90);
                  if (v52 != -1)
                  {
                    for (i = v52; i != -1; i = graph_next_neighbor(*(v3 + 16), &v90))
                    {
                      if (graph_node_is_critical(*(v3 + 16), i))
                      {
                        v54 = i & 7;
                        if (!((bitmask_1[v54] & *(v23 + (i >> 3))) >> v54))
                        {
                          v84 = bitmask_1[v54];
                          v55 = 0;
                          v56 = v87;
                          while (1)
                          {
                            ptr = v34;
                            v87 = v56;
                            if (v55 >= v56)
                            {
                              v57 = v88 + 1;
                              v55 = -1;
                            }

                            else
                            {
                              v57 = *(v34 + v55++);
                            }

                            v89 = graph_neighbors_it(*(v3 + 16), i);
                            v58 = graph_next_neighbor(*(v3 + 16), &v89);
                            if (v58 == -1)
                            {
                              break;
                            }

                            v59 = v58;
                            while (1)
                            {
                              if (graph_node_is_critical(*(v3 + 16), v59) && (bitmask_1[v59 & 7] & *(v23 + (v59 >> 3))) >> (v59 & 7))
                              {
                                v60 = *(*(v3 + 24) + 4 * v59) + v57;
                                if (v60 >= *(v3 + 8))
                                {
                                  v35 = 1;
                                  v33 = v82;
                                  v34 = ptr;
                                  goto LABEL_117;
                                }

                                if ((bitmask_1[v60 & 7] & *(v24 + (v60 >> 3))) >> (v60 & 7))
                                {
                                  break;
                                }
                              }

                              v59 = graph_next_neighbor(*(v3 + 16), &v89);
                              if (v59 == -1)
                              {
                                goto LABEL_101;
                              }
                            }

                            if (v57 <= v88)
                            {
                              v56 = v87;
                            }

                            else
                            {
                              if (v87 == v81)
                              {
                                v81 = v87 + 1024;
                                v61 = malloc_type_realloc(ptr, 4 * (v87 + 1024), 0x100004052888210uLL);
                              }

                              else
                              {
                                v61 = ptr;
                              }

                              ptr = v61;
                              *(v61 + v87) = v57;
                              v56 = v87 + 1;
                            }

                            v62 = v88;
                            if (v57 > v88)
                            {
                              v62 = v57;
                            }

                            v88 = v62;
                            v34 = ptr;
                          }

LABEL_101:
                          v63 = v88;
                          if (v57 > v88)
                          {
                            v63 = v57;
                          }

                          v88 = v63;
                          v64 = v87;
                          if (v55 - 1 < v87)
                          {
                            --v87;
                            *(ptr + v55 - 1) = *(ptr + v64 - 1);
                          }

                          v89 = graph_neighbors_it(*(v3 + 16), i);
                          v65 = graph_next_neighbor(*(v3 + 16), &v89);
                          if (v65 != -1)
                          {
                            for (j = v65; j != -1; j = graph_next_neighbor(*(v3 + 16), &v89))
                            {
                              if (graph_node_is_critical(*(v3 + 16), j))
                              {
                                if ((bitmask_1[j & 7] & *(v23 + (j >> 3))) >> (j & 7))
                                {
                                  v67 = *(*(v3 + 24) + 4 * j) + v57;
                                  *(v24 + (v67 >> 3)) |= bitmask_1[v67 & 7];
                                  if (*(*(v3 + 24) + 4 * j) + v57 > v27)
                                  {
                                    v27 = *(*(v3 + 24) + 4 * j) + v57;
                                  }
                                }
                              }
                            }
                          }

                          *(*(v3 + 24) + 4 * i) = v57;
                          *(v23 + (i >> 3)) |= v84;
                          v33 = v82;
                          vqueue_insert(v82, i);
                          v34 = ptr;
                        }
                      }
                    }
                  }

                  v35 = 0;
                }

                while (!vqueue_is_empty(v33));
              }

LABEL_117:
              vqueue_destroy(v33);
              free(v34);
              if (v35)
              {
LABEL_146:
                v9 = 1;
                goto LABEL_124;
              }
            }

            else
            {
              v31 = vqueue_new(v30 + 1);
              v89 = 0;
              v90 = 0;
              *(*(v3 + 24) + 4 * v26) = vcvtpd_u64_f64(vcvtd_n_f64_u32(v27, 1uLL)) - 1;
              *(v23 + v28) |= v29;
              vqueue_insert(v31, v26);
              if (vqueue_is_empty(v31))
              {
                v32 = 0;
                goto LABEL_120;
              }

              v86 = v31;
              do
              {
                v36 = vqueue_remove(v31);
                v90 = graph_neighbors_it(*(v3 + 16), v36);
                v37 = graph_next_neighbor(*(v3 + 16), &v90);
                if (v37 != -1)
                {
                  for (k = v37; k != -1; k = graph_next_neighbor(*(v3 + 16), &v90))
                  {
                    if (graph_node_is_critical(*(v3 + 16), k))
                    {
                      v39 = k >> 3;
                      v40 = k & 7;
                      v41 = bitmask_1[v40];
                      if (!((v41 & *(v23 + v39)) >> v40))
                      {
                        v42 = v88 + 1;
                        v89 = graph_neighbors_it(*(v3 + 16), k);
                        v43 = graph_next_neighbor(*(v3 + 16), &v89);
                        if (v43 != -1)
                        {
                          for (m = v43; m != -1; m = graph_next_neighbor(*(v3 + 16), &v89))
                          {
                            if (graph_node_is_critical(*(v3 + 16), m) && (bitmask_1[m & 7] & *(v23 + (m >> 3))) >> (m & 7))
                            {
                              v45 = *(*(v3 + 24) + 4 * m) + v42;
                              if (v45 >= *(v3 + 8))
                              {
                                v32 = 1;
                                v31 = v86;
                                goto LABEL_120;
                              }

                              if ((bitmask_1[v45 & 7] & *(v24 + (v45 >> 3))) >> (v45 & 7))
                              {
                                v46 = v88;
                                if (v42 > v88)
                                {
                                  v46 = v42;
                                }

                                v88 = v46;
                                v42 = v46 + 1;
                                v89 = graph_neighbors_it(*(v3 + 16), k);
                              }
                            }
                          }
                        }

                        v47 = v88;
                        if (v42 > v88)
                        {
                          v47 = v42;
                        }

                        v88 = v47;
                        v89 = graph_neighbors_it(*(v3 + 16), k);
                        v48 = graph_next_neighbor(*(v3 + 16), &v89);
                        if (v48 != -1)
                        {
                          for (n = v48; n != -1; n = graph_next_neighbor(*(v3 + 16), &v89))
                          {
                            if (graph_node_is_critical(*(v3 + 16), n))
                            {
                              if ((bitmask_1[n & 7] & *(v23 + (n >> 3))) >> (n & 7))
                              {
                                v50 = *(*(v3 + 24) + 4 * n) + v42;
                                *(v24 + (v50 >> 3)) |= bitmask_1[v50 & 7];
                                if (*(*(v3 + 24) + 4 * n) + v42 > v27)
                                {
                                  v27 = *(*(v3 + 24) + 4 * n) + v42;
                                }
                              }
                            }
                          }
                        }

                        *(*(v3 + 24) + 4 * k) = v42;
                        *(v23 + v39) |= v41;
                        v31 = v86;
                        vqueue_insert(v86, k);
                      }
                    }
                  }
                }

                v32 = 0;
              }

              while (!vqueue_is_empty(v31));
LABEL_120:
              vqueue_destroy(v31);
              if (v32)
              {
                goto LABEL_146;
              }
            }

            v9 = 0;
          }
        }

        ++v26;
      }

      while (v26 < *(v3 + 12));
    }

    if (v9)
    {
LABEL_124:
      v68 = v83 - 1;
      v2 = v80;
      v83 = (v83 - 1);
      if (*(v80 + 16))
      {
        fprintf(*MEMORY[0x29EDCA610], "Restarting mapping step. %u iterations remaining.\n", v68);
      }

      goto LABEL_143;
    }

    v2 = v80;
    if (*(v80 + 16))
    {
      fwrite("\tTraversing non critical vertices.\n", 0x23uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    LODWORD(v90) = 0;
    if (*(v3 + 8))
    {
      for (ii = 0; ii < *(v3 + 8); ++ii)
      {
        v70 = graph_vertex_id(*(v3 + 16), ii, 0);
        v71 = graph_vertex_id(*(v3 + 16), ii, 1);
        v72 = (bitmask_1[v71 & 7] & *(v23 + (v71 >> 3))) >> (v71 & 7);
        if ((bitmask_1[v70 & 7] & *(v23 + (v70 >> 3))) >> (v70 & 7))
        {
          if (!v72)
          {
            goto LABEL_135;
          }
        }

        else if (v72)
        {
          v70 = v71;
LABEL_135:
          bmz_traverse(v3, v24, v70, &v90, v23);
        }
      }
    }

    v73 = *(v3 + 12);
    if (v73)
    {
      for (jj = 0; jj < v73; ++jj)
      {
        v75 = bitmask_1[jj & 7];
        if (!((v75 & *(v23 + (jj >> 3))) >> (jj & 7)))
        {
          *(*(v3 + 24) + 4 * jj) = 0;
          *(v23 + (jj >> 3)) |= v75;
          bmz_traverse(v3, v24, jj, &v90, v23);
          v73 = *(v3 + 12);
        }
      }
    }

    v9 = 0;
LABEL_143:
    free(v24);
    free(v23);
    v11 = MEMORY[0x29EDCA610];
    v10 = v83;
  }

  while (v9 && v83);
  graph_destroy(*(v3 + 16));
  *(v3 + 16) = 0;
  if (!v83)
  {
    return 0;
  }

  v76 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v76 = *v2;
  v78 = malloc_type_malloc(0x18uLL, 0x1090040F2DB8820uLL);
  v79 = *(v3 + 24);
  *(v3 + 24) = 0;
  *(v78 + 8) = v79;
  *(v3 + 32) = 0;
  *&v79 = *(v3 + 8);
  *v78 = v79;
  v76[2] = v78;
  *(v76 + 1) = v79;
  if (*(v2 + 16))
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *v11);
  }

  return v76;
}

uint64_t bmz_dump(uint64_t a1, FILE *a2)
{
  v7 = 0;
  v5 = 2;
  __ptr = 0;
  v3 = *(a1 + 16);
  __cmph_dump(a1, a2);
  fwrite(&v5, 4uLL, 1uLL, a2);
  hash_state_dump(**(v3 + 16), &v7, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v7, __ptr, 1uLL, a2);
  free(v7);
  hash_state_dump(*(*(v3 + 16) + 8), &v7, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v7, __ptr, 1uLL, a2);
  free(v7);
  fwrite((v3 + 4), 4uLL, 1uLL, a2);
  fwrite(v3, 4uLL, 1uLL, a2);
  fwrite(*(v3 + 8), 4 * *(v3 + 4), 1uLL, a2);
  return 1;
}

size_t bmz_load(FILE *a1, uint64_t a2)
{
  size_4 = 0;
  v4 = malloc_type_malloc(0x18uLL, 0x1090040F2DB8820uLL);
  *(a2 + 16) = v4;
  fread(&size_4, 4uLL, 1uLL, a1);
  v5 = size_4;
  v6 = malloc_type_malloc(8 * (size_4 + 1), 0x2004093837F09uLL);
  v4[2] = v6;
  v6[v5] = 0;
  if (v5)
  {
    v7 = 0;
    size = 0;
    do
    {
      fread(&size, 4uLL, 1uLL, a1);
      v8 = size;
      v9 = malloc_type_malloc(size, 0x100004077774924uLL);
      fread(v9, v8, 1uLL, a1);
      *(v4[2] + v7) = hash_state_load(v9);
      free(v9);
      v7 += 8;
    }

    while (8 * v5 != v7);
  }

  fread(v4 + 4, 4uLL, 1uLL, a1);
  fread(v4, 4uLL, 1uLL, a1);
  v10 = malloc_type_malloc(4 * *(v4 + 1), 0x100004052888210uLL);
  v4[1] = v10;
  v11 = 4 * *(v4 + 1);

  return fread(v10, v11, 1uLL, a1);
}

uint64_t bmz_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = *(a1 + 16);
  v6 = hash(**(v5 + 16), a2, a3) % *(v5 + 4);
  v7 = hash(*(*(v5 + 16) + 8), a2, a3) % *(v5 + 4);
  if (v6 == v7)
  {
    ++v7;
  }

  return (*(*(v5 + 8) + 4 * v7) + *(*(v5 + 8) + 4 * v6));
}

void bmz_destroy(void *a1)
{
  v2 = a1[2];
  free(v2[1]);
  hash_state_destroy(*v2[2]);
  hash_state_destroy(*(v2[2] + 1));
  free(v2[2]);
  free(v2);

  free(a1);
}

void *bmz_pack(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  type = hash_get_type(**(v3 + 16));
  *a2++ = type;
  hash_state_pack(**(v3 + 16), a2);
  v5 = (a2 + hash_state_packed_size(type));
  v6 = hash_get_type(*(*(v3 + 16) + 8));
  *v5++ = v6;
  hash_state_pack(*(*(v3 + 16) + 8), v5);
  v7 = (v5 + hash_state_packed_size(v6));
  v8 = *(v3 + 4);
  *v7 = v8;
  v9 = v7 + 1;
  v10 = *(v3 + 8);

  return memcpy(v9, v10, 4 * v8);
}

uint64_t bmz_packed_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  type = hash_get_type(**(v1 + 16));
  v3 = hash_get_type(*(*(v1 + 16) + 8));
  v4 = hash_state_packed_size(type);
  return v4 + hash_state_packed_size(v3) + 4 * *(v1 + 4) + 16;
}

uint64_t bmz_search_packed(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = (a1 + 1);
  v6 = *a1;
  v7 = (a1 + hash_state_packed_size(*a1) + 4);
  v9 = *v7++;
  v8 = v9;
  v10 = (v7 + hash_state_packed_size(v9));
  v12 = *v10;
  v11 = v10 + 1;
  v13 = hash_packed(v5, v6, a2, a3) % v12;
  v14 = hash_packed(v7, v8, a2, a3) % v12;
  if (v13 == v14)
  {
    ++v14;
  }

  return (v11[v14] + v11[v13]);
}

uint64_t bmz_traverse(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, uint64_t a5)
{
  v17 = graph_neighbors_it(*(a1 + 16), a3);
  result = graph_next_neighbor(*(a1 + 16), &v17);
  if (result != -1)
  {
    v11 = result;
    do
    {
      v12 = v11 >> 3;
      v13 = v11 & 7;
      v14 = bitmask_1[v13];
      if (!((v14 & *(a5 + v12)) >> v13))
      {
        v15 = *a4;
        v16 = *(a1 + 8);
        if (v16 <= *a4)
        {
LABEL_11:
          bmz_traverse_cold_1();
        }

        while ((bitmask_1[v15 & 7] & *(a2 + (v15 >> 3))) >> (v15 & 7))
        {
          if (v16 == ++v15)
          {
            goto LABEL_11;
          }
        }

        *a4 = v15;
        *(*(a1 + 24) + 4 * v11) = v15 - *(*(a1 + 24) + 4 * a3);
        *(a5 + v12) |= v14;
        ++*a4;
        bmz_traverse(a1, a2);
      }

      result = graph_next_neighbor(*(a1 + 16), &v17);
      v11 = result;
    }

    while (result != -1);
  }

  return result;
}

double bmz8_config_new()
{
  v0 = malloc_type_malloc(0x28uLL, 0x10B0040F28A43C1uLL);
  if (v0)
  {
    v0[4] = 0;
    result = 0.0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
  }

  return result;
}

uint64_t bmz8_config_set_hashfuncs(uint64_t result, _DWORD *a2)
{
  if (*a2 != 1)
  {
    v2 = *(result + 32);
    *v2 = *a2;
    v3 = a2[1];
    if (v3 != 1)
    {
      v2[1] = v3;
    }
  }

  return result;
}

void *bmz8_new(uint64_t a1, double a2)
{
  v2 = a1;
  v3 = *(*(a1 + 8) + 8);
  if (v3 >= 0x100)
  {
    if (*(a1 + 16))
    {
      fwrite("The number of keys in BMZ8 must be lower than 256.\n", 0x33uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    return 0;
  }

  v4 = *(a1 + 32);
  if (a2 == 0.0)
  {
    v5 = 1.15;
  }

  else
  {
    v5 = a2;
  }

  *(v4 + 8) = v3;
  v6 = vcvtpd_s64_f64(v5 * v3);
  *(v4 + 9) = v6;
  *(v4 + 16) = graph_new(v6, v3);
  v7 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
  v8 = 0;
  *(v4 + 32) = v7;
  do
  {
    *(*(v4 + 32) + v8) = 0;
    v8 += 8;
  }

  while (v8 != 24);
  v9 = 0;
  v10 = 20;
  v11 = MEMORY[0x29EDCA610];
  v87 = v2;
  do
  {
    if (*(v2 + 16))
    {
      fprintf(*v11, "Entering mapping step for mph creation of %u keys with graph sized %u\n", *(v4 + 8), *(v4 + 9));
    }

    v12 = 100;
    v88 = v10;
    while (1)
    {
      **(v4 + 32) = hash_state_new(*v4, *(v4 + 9));
      *(*(v4 + 32) + 8) = hash_state_new(*(v4 + 4), *(v4 + 9));
      v13 = *(v2 + 32);
      graph_clear_edges(*(v13 + 16));
      (*(*(v2 + 8) + 32))(**(v2 + 8));
      v14 = *(v2 + 8);
      if (!*(v14 + 8))
      {
        break;
      }

      v15 = 0;
      v16 = 0;
      while (1)
      {
        LODWORD(v97) = 0;
        v98 = 0;
        (*(v14 + 16))(*v14, &v98, &v97);
        v17 = hash(**(v13 + 32), v98, v97) % *(v13 + 9);
        v18 = hash(*(*(v13 + 32) + 8), v98, v97);
        v19 = *(v13 + 9);
        v20 = v18 % v19;
        v21 = v19 > (v18 % v19 + 1) ? v20 + 1 : 0;
        v22 = v17 == v20 ? v21 : v20;
        if (v17 == v22)
        {
          break;
        }

        (*(*(v2 + 8) + 24))(**(v2 + 8), v98, v97);
        v23 = graph_contains_edge(*(v13 + 16), v17, v22);
        if (*(v2 + 16) && v23)
        {
          fwrite("A non simple graph was generated\n", 0x21uLL, 1uLL, *v11);
          goto LABEL_31;
        }

        if (v23)
        {
          goto LABEL_31;
        }

        graph_add_edge(*(v13 + 16), v17, v22);
        v15 = ++v16;
        v14 = *(v2 + 8);
        if (*(v14 + 8) <= v16)
        {
          goto LABEL_35;
        }
      }

      if (*(v2 + 16))
      {
        fprintf(*v11, "Self loop for key %u\n", v15);
      }

      (*(*(v2 + 8) + 24))(**(v2 + 8), v98, v97);
LABEL_31:
      --v12;
      hash_state_destroy(**(v4 + 32));
      **(v4 + 32) = 0;
      hash_state_destroy(*(*(v4 + 32) + 8));
      *(*(v4 + 32) + 8) = 0;
      if (*(v2 + 16))
      {
        fprintf(*v11, "simple graph creation failure - %u iterations remaining\n", v12);
      }

      if (!v12)
      {
        graph_destroy(*(v4 + 16));
        return 0;
      }
    }

LABEL_35:
    if (*(v2 + 16))
    {
      fwrite("Starting ordering step\n", 0x17uLL, 1uLL, *v11);
    }

    graph_obtain_critical_nodes(*(v4 + 16));
    if (*(v2 + 16))
    {
      fwrite("Starting Searching step.\n", 0x19uLL, 1uLL, *v11);
      fwrite("\tTraversing critical vertices.\n", 0x1FuLL, 1uLL, *v11);
    }

    v24 = malloc_type_malloc((*(v4 + 9) >> 3) + 1, 0x100004077774924uLL);
    bzero(v24, (*(v4 + 9) >> 3) + 1);
    v25 = malloc_type_malloc((*(v4 + 8) >> 3) + 1, 0x100004077774924uLL);
    bzero(v25, (*(v4 + 8) >> 3) + 1);
    free(*(v4 + 24));
    v26 = malloc_type_calloc(*(v4 + 9), 1uLL, 0x100004077774924uLL);
    *(v4 + 24) = v26;
    if (!v26)
    {
      bmz8_new_cold_1();
    }

    if (*(v4 + 9))
    {
      v27 = 0;
      v28 = 0;
      v96 = 0;
      v29 = 1;
      do
      {
        if (graph_node_is_critical(*(v4 + 16), v28))
        {
          v30 = v28 >> 3;
          v31 = v28 & 7;
          v32 = bitmask_2[v31];
          if (!((v32 & *(v24 + v30)) >> v31))
          {
            v33 = graph_ncritical_nodes(*(v4 + 16));
            v34 = vqueue_new(v33);
            v35 = v34;
            v36 = (ceil(vcvtd_n_f64_u32(v29, 1uLL)) + -1.0);
            if (v5 <= 1.14)
            {
              v97 = 0;
              v98 = 0;
              *(*(v4 + 24) + v27) = v36;
              *(v24 + v30) |= v32;
              vqueue_insert(v34, v28);
              if (vqueue_is_empty(v35))
              {
                v38 = 0;
                v39 = 0;
              }

              else
              {
                v56 = 0;
                v38 = 0;
                v93 = v35;
                do
                {
                  ptr = v38;
                  v57 = vqueue_remove(v35);
                  v98 = graph_neighbors_it(*(v4 + 16), v57);
                  v58 = graph_next_neighbor(*(v4 + 16), &v98);
                  if (v58 == -1)
                  {
                    v60 = v56;
                  }

                  else
                  {
                    v59 = v58;
                    v60 = v56;
                    do
                    {
                      if (graph_node_is_critical(*(v4 + 16), v59))
                      {
                        v61 = v59 >> 3;
                        v62 = v59 & 7;
                        if (!((bitmask_2[v62] & *(v24 + v61)) >> v62))
                        {
                          v89 = bitmask_2[v62];
                          v63 = 0;
                          while (1)
                          {
                            v91 = v60;
                            if (v63 >= v60)
                            {
                              v95 = v96 + 1;
                              v63 = -1;
                            }

                            else
                            {
                              v95 = ptr[v63++];
                            }

                            v97 = graph_neighbors_it(*(v4 + 16), v59);
                            v64 = graph_next_neighbor(*(v4 + 16), &v97);
                            if (v64 == -1)
                            {
                              break;
                            }

                            v65 = v64;
                            while (1)
                            {
                              if (graph_node_is_critical(*(v4 + 16), v65) && (bitmask_2[v65 & 7] & *(v24 + (v65 >> 3))) >> (v65 & 7))
                              {
                                v66 = *(*(v4 + 24) + v65) + v95;
                                if (v66 >= *(v4 + 8))
                                {
                                  v39 = 1;
                                  v35 = v93;
                                  v38 = ptr;
                                  goto LABEL_121;
                                }

                                if ((bitmask_2[v66 & 7] & *(v25 + (v66 >> 3))) >> (v66 & 7))
                                {
                                  break;
                                }
                              }

                              v65 = graph_next_neighbor(*(v4 + 16), &v97);
                              if (v65 == -1)
                              {
                                goto LABEL_103;
                              }
                            }

                            if (v95 > v96)
                            {
                              if (v60)
                              {
                                v67 = ptr;
                              }

                              else
                              {
                                v67 = malloc_type_realloc(ptr, 0x400uLL, 0x100004077774924uLL);
                              }

                              v67[v60] = v95;
                              ptr = v67;
                              v91 = (v60 + 1);
                            }

                            v68 = v96;
                            if (v95 > v96)
                            {
                              v68 = v95;
                            }

                            v96 = v68;
                            v60 = v91;
                          }

LABEL_103:
                          v69 = v96;
                          if (v95 > v96)
                          {
                            v69 = v95;
                          }

                          v96 = v69;
                          if ((v63 - 1) < v60)
                          {
                            ptr[(v63 - 1)] = ptr[(v60 - 1)];
                            v60 = (v60 - 1);
                          }

                          v97 = graph_neighbors_it(*(v4 + 16), v59);
                          v70 = graph_next_neighbor(*(v4 + 16), &v97);
                          if (v70 != -1)
                          {
                            for (i = v70; i != -1; i = graph_next_neighbor(*(v4 + 16), &v97))
                            {
                              if (graph_node_is_critical(*(v4 + 16), i))
                              {
                                if ((bitmask_2[i & 7] & *(v24 + (i >> 3))) >> (i & 7))
                                {
                                  v72 = *(*(v4 + 24) + i) + v95;
                                  *(v25 + (v72 >> 3)) |= bitmask_2[v72 & 7];
                                  if (*(*(v4 + 24) + i) + v95 > v29)
                                  {
                                    v29 = *(*(v4 + 24) + i) + v95;
                                  }
                                }
                              }
                            }
                          }

                          *(*(v4 + 24) + v59) = v95;
                          *(v24 + v61) |= v89;
                          v35 = v93;
                          vqueue_insert(v93, v59);
                        }
                      }

                      v59 = graph_next_neighbor(*(v4 + 16), &v98);
                    }

                    while (v59 != -1);
                  }

                  v56 = v60;
                  v39 = 0;
                  v38 = ptr;
                }

                while (!vqueue_is_empty(v35));
              }

LABEL_121:
              vqueue_destroy(v35);
              free(v38);
              if (v39)
              {
LABEL_150:
                v9 = 1;
                goto LABEL_128;
              }
            }

            else
            {
              v97 = 0;
              v98 = 0;
              *(*(v4 + 24) + v27) = v36;
              *(v24 + v30) |= v32;
              vqueue_insert(v34, v28);
              if (vqueue_is_empty(v35))
              {
                v37 = 0;
                goto LABEL_124;
              }

              v92 = v35;
              do
              {
                v40 = vqueue_remove(v35);
                v98 = graph_neighbors_it(*(v4 + 16), v40);
                v41 = graph_next_neighbor(*(v4 + 16), &v98);
                if (v41 != -1)
                {
                  for (j = v41; j != -1; j = graph_next_neighbor(*(v4 + 16), &v98))
                  {
                    if (graph_node_is_critical(*(v4 + 16), j))
                    {
                      v43 = j >> 3;
                      v44 = j & 7;
                      v45 = bitmask_2[v44];
                      if (!((v45 & *(v24 + v43)) >> v44))
                      {
                        v46 = v96 + 1;
                        v97 = graph_neighbors_it(*(v4 + 16), j);
                        v47 = graph_next_neighbor(*(v4 + 16), &v97);
                        if (v47 != -1)
                        {
                          v48 = v47;
                          while (1)
                          {
                            if (!graph_node_is_critical(*(v4 + 16), v48) || !((bitmask_2[v48 & 7] & *(v24 + (v48 >> 3))) >> (v48 & 7)))
                            {
                              goto LABEL_60;
                            }

                            v49 = *(*(v4 + 24) + v48) + v46;
                            if (v49 >= *(v4 + 8))
                            {
                              v37 = 1;
                              v35 = v92;
                              goto LABEL_124;
                            }

                            if ((bitmask_2[v49 & 7] & *(v25 + (v49 >> 3))) >> (v49 & 7))
                            {
                              v50 = v96;
                              if (v46 > v96)
                              {
                                v50 = v46;
                              }

                              v96 = v50;
                              v46 = v50 + 1;
                              v97 = graph_neighbors_it(*(v4 + 16), j);
                              v48 = graph_next_neighbor(*(v4 + 16), &v97);
                              if (v48 == -1)
                              {
                                break;
                              }
                            }

                            else
                            {
LABEL_60:
                              v48 = graph_next_neighbor(*(v4 + 16), &v97);
                              if (v48 == -1)
                              {
                                break;
                              }
                            }
                          }
                        }

                        v51 = v96;
                        v52 = v46;
                        if (v46 > v96)
                        {
                          v51 = v46;
                        }

                        v94 = v46;
                        v96 = v51;
                        v97 = graph_neighbors_it(*(v4 + 16), j);
                        v53 = graph_next_neighbor(*(v4 + 16), &v97);
                        if (v53 != -1)
                        {
                          for (k = v53; k != -1; k = graph_next_neighbor(*(v4 + 16), &v97))
                          {
                            if (graph_node_is_critical(*(v4 + 16), k))
                            {
                              if ((bitmask_2[k & 7] & *(v24 + (k >> 3))) >> (k & 7))
                              {
                                v55 = *(*(v4 + 24) + k) + v52;
                                *(v25 + (v55 >> 3)) |= bitmask_2[v55 & 7];
                                if (*(*(v4 + 24) + k) + v52 > v29)
                                {
                                  v29 = *(*(v4 + 24) + k) + v52;
                                }
                              }
                            }
                          }
                        }

                        *(*(v4 + 24) + j) = v94;
                        *(v24 + v43) |= v45;
                        v35 = v92;
                        vqueue_insert(v92, j);
                      }
                    }
                  }
                }

                v37 = 0;
              }

              while (!vqueue_is_empty(v35));
LABEL_124:
              vqueue_destroy(v35);
              if (v37)
              {
                goto LABEL_150;
              }
            }

            v9 = 0;
          }
        }

        v28 = ++v27;
      }

      while (v27 < *(v4 + 9));
    }

    if (v9)
    {
LABEL_128:
      v2 = v87;
      v10 = (v88 - 1);
      if (*(v87 + 16))
      {
        fprintf(*MEMORY[0x29EDCA610], "Restarting mapping step. %u iterations remaining.\n", (v88 - 1));
      }

      goto LABEL_147;
    }

    v2 = v87;
    if (*(v87 + 16))
    {
      fwrite("\tTraversing non critical vertices.\n", 0x23uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    LOBYTE(v98) = 0;
    if (*(v4 + 8))
    {
      for (m = 0; m < *(v4 + 8); ++m)
      {
        v74 = graph_vertex_id(*(v4 + 16), m, 0);
        v75 = graph_vertex_id(*(v4 + 16), m, 1);
        v76 = v74;
        v77 = (bitmask_2[v75 & 7] & *(v24 + (v75 >> 3))) >> (v75 & 7);
        if ((bitmask_2[v74 & 7] & *(v24 + (v74 >> 3))) >> (v74 & 7))
        {
          if (!v77)
          {
            goto LABEL_139;
          }
        }

        else if (v77)
        {
          v76 = v75;
LABEL_139:
          bmz8_traverse(v4, v25, v76, &v98, v24);
        }
      }
    }

    v78 = *(v4 + 9);
    v10 = v88;
    if (v78)
    {
      for (n = 0; n < v78; ++n)
      {
        v80 = n >> 3;
        v81 = bitmask_2[n & 7];
        if (!((v81 & *(v24 + v80)) >> (n & 7)))
        {
          *(*(v4 + 24) + n) = 0;
          *(v24 + v80) |= v81;
          bmz8_traverse(v4, v25, n, &v98, v24);
          v78 = *(v4 + 9);
        }
      }
    }

    v9 = 0;
LABEL_147:
    free(v25);
    free(v24);
    v11 = MEMORY[0x29EDCA610];
  }

  while (v9 && v10);
  graph_destroy(*(v4 + 16));
  *(v4 + 16) = 0;
  if (!v10)
  {
    return 0;
  }

  v82 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v82 = *v2;
  v84 = malloc_type_malloc(0x18uLL, 0x109004087376023uLL);
  v85 = *(v4 + 24);
  *(v4 + 24) = 0;
  *(v84 + 8) = v85;
  *(v4 + 32) = 0;
  v84[1] = *(v4 + 9);
  v86 = *(v4 + 8);
  *v84 = v86;
  v82[2] = v84;
  *(v82 + 1) = v86;
  if (*(v2 + 16))
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *v11);
  }

  return v82;
}

uint64_t bmz8_dump(uint64_t a1, FILE *a2)
{
  memset(__size, 0, sizeof(__size));
  __ptr = 2;
  v3 = *(a1 + 16);
  __cmph_dump(a1, a2);
  fwrite(&__ptr, 1uLL, 1uLL, a2);
  hash_state_dump(**(v3 + 16), &__size[1], __size);
  fwrite(__size, 4uLL, 1uLL, a2);
  fwrite(*&__size[1], __size[0], 1uLL, a2);
  free(*&__size[1]);
  hash_state_dump(*(*(v3 + 16) + 8), &__size[1], __size);
  fwrite(__size, 4uLL, 1uLL, a2);
  fwrite(*&__size[1], __size[0], 1uLL, a2);
  free(*&__size[1]);
  fwrite((v3 + 1), 1uLL, 1uLL, a2);
  fwrite(v3, 1uLL, 1uLL, a2);
  fwrite(*(v3 + 8), *(v3 + 1), 1uLL, a2);
  return 1;
}

size_t bmz8_load(FILE *a1, uint64_t a2)
{
  size_7 = 0;
  v4 = malloc_type_malloc(0x18uLL, 0x109004087376023uLL);
  *(a2 + 16) = v4;
  fread(&size_7, 1uLL, 1uLL, a1);
  v5 = size_7;
  v6 = 8 * size_7;
  v7 = malloc_type_malloc(v6 + 8, 0x2004093837F09uLL);
  v4[2] = v7;
  v7[v5] = 0;
  if (v5)
  {
    v8 = 0;
    size = 0;
    do
    {
      fread(&size, 4uLL, 1uLL, a1);
      v9 = size;
      v10 = malloc_type_malloc(size, 0x100004077774924uLL);
      fread(v10, v9, 1uLL, a1);
      *(v4[2] + v8) = hash_state_load(v10);
      free(v10);
      v8 += 8;
    }

    while (v6 != v8);
  }

  fread(v4 + 1, 1uLL, 1uLL, a1);
  fread(v4, 1uLL, 1uLL, a1);
  v11 = malloc_type_malloc(*(v4 + 1), 0x100004077774924uLL);
  v4[1] = v11;
  v12 = *(v4 + 1);

  return fread(v11, v12, 1uLL, a1);
}

uint64_t bmz8_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = *(a1 + 16);
  v6 = hash(**(v5 + 16), a2, a3) % *(v5 + 1);
  v7 = hash(*(*(v5 + 16) + 8), a2, a3);
  v8 = *(v5 + 1);
  v9 = v7 % v8;
  if (v8 > v7 % v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v6 != v9)
  {
    v10 = v9;
  }

  return (*(*(v5 + 8) + v10) + *(*(v5 + 8) + v6));
}

void bmz8_destroy(void *a1)
{
  v2 = a1[2];
  free(v2[1]);
  hash_state_destroy(*v2[2]);
  hash_state_destroy(*(v2[2] + 1));
  free(v2[2]);
  free(v2);

  free(a1);
}

void *bmz8_pack(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  type = hash_get_type(**(v3 + 16));
  *a2++ = type;
  hash_state_pack(**(v3 + 16), a2);
  v5 = (a2 + hash_state_packed_size(type));
  v6 = hash_get_type(*(*(v3 + 16) + 8));
  *v5++ = v6;
  hash_state_pack(*(*(v3 + 16) + 8), v5);
  v7 = v5 + hash_state_packed_size(v6);
  v8 = *(v3 + 1);
  *v7 = v8;
  v9 = v7 + 1;
  v10 = *(v3 + 8);

  return memcpy(v9, v10, v8);
}

uint64_t bmz8_packed_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  type = hash_get_type(**(v1 + 16));
  v3 = hash_get_type(*(*(v1 + 16) + 8));
  v4 = hash_state_packed_size(type);
  return v4 + hash_state_packed_size(v3) + *(v1 + 1) + 13;
}

uint64_t bmz8_search_packed(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = (a1 + 1);
  v6 = *a1;
  v7 = (a1 + hash_state_packed_size(*a1) + 4);
  v9 = *v7++;
  v8 = v9;
  v10 = v7 + hash_state_packed_size(v9);
  v12 = *v10;
  v11 = v10 + 1;
  v13 = hash_packed(v5, v6, a2, a3) % v12;
  v14 = hash_packed(v7, v8, a2, a3);
  v15 = v14 % v12;
  if (v12 > v14 % v12)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  if (v13 == v15)
  {
    LOBYTE(v15) = v16;
  }

  return (v11[v15] + v11[v13]);
}

uint64_t bmz8_traverse(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4, uint64_t a5)
{
  v17 = graph_neighbors_it(*(a1 + 16), a3);
  result = graph_next_neighbor(*(a1 + 16), &v17);
  if (result != -1)
  {
    v11 = result;
    do
    {
      v12 = v11 >> 3;
      v13 = v11 & 7;
      v14 = bitmask_2[v13];
      if (!((v14 & *(a5 + v12)) >> v13))
      {
        v15 = *a4;
        v16 = *(a1 + 8);
        if (v16 <= v15)
        {
LABEL_11:
          bmz8_traverse_cold_1();
        }

        while ((bitmask_2[v15 & 7] & *(a2 + (v15 >> 3))) >> (v15 & 7))
        {
          if (v16 == ++v15)
          {
            goto LABEL_11;
          }
        }

        *a4 = v15;
        *(*(a1 + 24) + v11) = v15 - *(*(a1 + 24) + a3);
        *(a5 + v12) |= v14;
        ++*a4;
        bmz8_traverse(a1, a2);
      }

      result = graph_next_neighbor(*(a1 + 16), &v17);
      v11 = result;
    }

    while (result != -1);
  }

  return result;
}

_BYTE *brz_config_new()
{
  v0 = malloc_type_malloc(0x70uLL, 0x10B004044A9B6D4uLL);
  v1 = v0;
  if (v0)
  {
    v0[56] = 0x80;
    *v0 = 0;
    *(v0 + 1) = 0x400000000;
    *(v0 + 5) = 0;
    *(v0 + 6) = 0;
    *(v0 + 4) = 0;
    *(v0 + 9) = 0;
    *(v0 + 10) = 0;
    *(v0 + 8) = 0;
    *(v0 + 22) = 0x100000;
    v2 = malloc_type_calloc(0xAuLL, 1uLL, 0x100004077774924uLL);
    *(v1 + 12) = v2;
    *(v1 + 13) = 0;
    strcpy(v2, "/var/tmp/");
  }

  return v1;
}

void brz_config_destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  free(v1[12]);

  free(v1);
}

uint64_t brz_config_set_hashfuncs(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 != 1)
  {
    v3 = 0;
    v4 = *(result + 32);
    do
    {
      *(v4 + 4 * v3) = v2;
      v2 = a2[v3 + 1];
    }

    while (v2 != 1 && v3++ < 2);
  }

  return result;
}

uint64_t brz_config_set_memory_availability(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(result + 32) + 88) = a2 << 20;
  }

  return result;
}

uint64_t brz_config_set_tmp_dir(uint64_t result, char *__s)
{
  if (__s)
  {
    v3 = *(result + 32);
    v4 = strlen(__s);
    free(*(v3 + 96));
    v5 = 1;
    if (__s[v4 - 1] == 47)
    {
      v6 = "%s";
    }

    else
    {
      v5 = 2;
      v6 = "%s/";
    }

    v7 = malloc_type_calloc(v4 + v5, 1uLL, 0x100004077774924uLL);
    *(v3 + 96) = v7;
    return sprintf(v7, v6, __s);
  }

  return result;
}

uint64_t brz_config_set_mphf_fd(uint64_t result, uint64_t a2)
{
  *(*(result + 32) + 104) = a2;
  if (!a2)
  {
    brz_config_set_mphf_fd_cold_1();
  }

  return result;
}

uint64_t brz_config_set_b(uint64_t result, int a2)
{
  if ((a2 - 175) >= 0xFFFFFF92)
  {
    v2 = a2;
  }

  else
  {
    v2 = 0x80;
  }

  *(*(result + 32) + 56) = v2;
  return result;
}

uint64_t brz_config_set_algo(uint64_t result, int a2)
{
  if (a2 == 4 || a2 == 1)
  {
    *(*(result + 32) + 12) = a2;
  }

  return result;
}

void *brz_new(size_t a1, double a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 12);
  if (v4 == 4)
  {
    v6 = 2.0;
    if (a2 <= 2.0)
    {
      a2 = 2.6;
    }
  }

  else
  {
    if (v4 != 1)
    {
      brz_new_cold_4();
    }

    v5 = a2 >= 2.0 || a2 == 0.0;
    v6 = 1.0;
    if (v5)
    {
      a2 = 1.0;
    }
  }

  *(v3 + 16) = a2;
  v7 = *(*(a1 + 8) + 8);
  *(v3 + 24) = v7;
  LOBYTE(v6) = *(v3 + 56);
  LODWORD(a1) = vcvtpd_u64_f64(v7 / *&v6);
  *(v3 + 60) = a1;
  *(v3 + 32) = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
  v8 = MEMORY[0x29EDCA610];
  if (*(v2 + 16))
  {
    fwrite("Partioning the set of keys.\n", 0x1CuLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  v9 = 20;
  v122 = v2;
  v110 = v3;
  while (1)
  {
    *(v3 + 80) = hash_state_new(*(v3 + 8), *(v3 + 60));
    v10 = *(v2 + 32);
    v11 = malloc_type_malloc(*(v10 + 88), 0x100004077774924uLL);
    v123 = (v10 + 60);
    v12 = malloc_type_calloc(*(v10 + 60), 4uLL, 0x100004052888210uLL);
    memset(__n, 0, sizeof(__n));
    (*(*(v2 + 8) + 32))(**(v2 + 8));
    __ptr = (v10 + 24);
    v111 = v9;
    if (*(v10 + 24))
    {
      v125 = 0;
      v13 = 0;
      LODWORD(v14) = 0;
      v15 = 0;
      do
      {
        (*(*(v2 + 8) + 16))(**(v2 + 8), &__n[1], __n);
        v16 = __n[0];
        if ((__n[0] + v15) + 4 <= *(v10 + 88))
        {
          v34 = v14;
        }

        else
        {
          if (*(v2 + 16))
          {
            fprintf(*MEMORY[0x29EDCA610], "Flushing  %u\n", v14);
          }

          v17 = *v12;
          *v12 = 0;
          v18 = *v123;
          if (v18 >= 2)
          {
            v19 = 0;
            for (i = 1; i < v18; ++i)
            {
              v21 = v12[i];
              if (v21)
              {
                v19 += v17;
                v12[i] = v19;
                v18 = *v123;
                v17 = v21;
              }
            }
          }

          v22 = v14;
          v23 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
          if (v14)
          {
            v24 = 0;
            v25 = v14;
            do
            {
              v26 = &v11[v24];
              v27 = *v26;
              v28 = hash(*(v10 + 80), v26 + 4, *v26) % *(v10 + 60);
              v23[v12[v28]++] = v24;
              v24 += v27 + 4;
              --v25;
            }

            while (v25);
          }

          v29 = strlen(*(v10 + 96));
          v30 = malloc_type_calloc(v29 + 11, 1uLL, 0x100004077774924uLL);
          sprintf(v30, "%s%u.cmph", *(v10 + 96), v125);
          v31 = fopen(v30, "wb");
          free(v30);
          if (v14)
          {
            v32 = v23;
            do
            {
              v33 = *v32++;
              fwrite(&v11[v33], 1uLL, *&v11[v33] + 4, v31);
              --v22;
            }

            while (v22);
          }

          bzero(v12, 4 * *v123);
          ++v125;
          free(v23);
          fclose(v31);
          v15 = 0;
          v34 = 0;
          v16 = __n[0];
          v2 = v122;
        }

        v35 = &v11[v15];
        *v35 = __n[0];
        v36 = *&__n[1];
        memcpy(v35 + 4, *&__n[1], v16);
        v37 = hash(*(v10 + 80), v36, v16) % *(v10 + 60);
        v38 = *(v10 + 32);
        v39 = *(v38 + v37);
        if (v39 == 255 || *(v10 + 12) == 1 && (v40 = *(v10 + 16), v40 >= 1.0) && v39 > (v40 * v39))
        {
          free(v11);
          free(v12);
          v3 = v110;
          goto LABEL_104;
        }

        *(v38 + v37) = v39 + 1;
        v15 += v16 + 4;
        ++v12[v37];
        v14 = (v34 + 1);
        (*(*(v2 + 8) + 24))(**(v2 + 8), *&__n[1], __n[0]);
        ++v13;
      }

      while (v13 < *__ptr);
      if (v15)
      {
        if (*(v2 + 16))
        {
          fprintf(*MEMORY[0x29EDCA610], "Flushing  %u\n", v34 + 1);
        }

        v41 = *v12;
        *v12 = 0;
        v42 = *v123;
        if (v42 >= 2)
        {
          v43 = 0;
          for (j = 1; j < v42; ++j)
          {
            v45 = v12[j];
            if (v45)
            {
              v43 += v41;
              v12[j] = v43;
              v42 = *v123;
              v41 = v45;
            }
          }
        }

        v46 = malloc_type_calloc((v34 + 1), 4uLL, 0x100004052888210uLL);
        if (v34 != -1)
        {
          v47 = 0;
          v48 = v34 + 1;
          do
          {
            v49 = &v11[v47];
            v50 = *v49;
            v51 = hash(*(v10 + 80), v49 + 4, *v49) % *(v10 + 60);
            v46[v12[v51]++] = v47;
            v47 += v50 + 4;
            --v48;
          }

          while (v48);
        }

        v52 = strlen(*(v10 + 96));
        v53 = malloc_type_calloc(v52 + 11, 1uLL, 0x100004077774924uLL);
        sprintf(v53, "%s%u.cmph", *(v10 + 96), v125);
        v54 = fopen(v53, "wb");
        free(v53);
        if (v14)
        {
          v55 = v46;
          do
          {
            v56 = *v55++;
            fwrite(&v11[v56], 1uLL, *&v11[v56] + 4, v54);
            --v14;
          }

          while (v14);
        }

        bzero(v12, 4 * *v123);
        v57 = v125 + 1;
        free(v46);
        fclose(v54);
        v3 = v110;
        v9 = v111;
        v8 = MEMORY[0x29EDCA610];
      }

      else
      {
        v3 = v110;
        v9 = v111;
        v8 = MEMORY[0x29EDCA610];
        v57 = v125;
      }
    }

    else
    {
      v57 = 0;
    }

    free(v11);
    free(v12);
    v126 = v57;
    if (v57 < 0x401)
    {
      break;
    }

LABEL_105:
    --v9;
    hash_state_destroy(*(v3 + 80));
    *(v3 + 80) = 0;
    if (*(v2 + 16))
    {
      fprintf(*v8, "Failure: A graph with more than 255 keys was created - %u iterations remaining\n", v9);
    }

    if (!v9)
    {
      free(*(v3 + 32));
      return 0;
    }
  }

  if (*(v2 + 16))
  {
    fwrite("\nMPHF generation \n", 0x12uLL, 1uLL, *v8);
  }

  v58 = strlen(off_2A13BB7D8[0]);
  fwrite(off_2A13BB7D8[0], v58 + 1, 1uLL, *(v10 + 104));
  fwrite(__ptr, 4uLL, 1uLL, *(v10 + 104));
  fwrite((v10 + 16), 8uLL, 1uLL, *(v10 + 104));
  fwrite((v10 + 12), 4uLL, 1uLL, *(v10 + 104));
  fwrite(v123, 4uLL, 1uLL, *(v10 + 104));
  fwrite(*(v10 + 32), *(v10 + 60), 1uLL, *(v10 + 104));
  v59 = buffer_manager_new(*(v10 + 88), v57);
  v60 = malloc_type_calloc(v57, 8uLL, 0x10040436913F5uLL);
  v61 = malloc_type_calloc(v126, 4uLL, 0x100004052888210uLL);
  if (v126)
  {
    for (k = 0; k != v126; ++k)
    {
      v63 = strlen(*(v10 + 96));
      v64 = malloc_type_calloc(v63 + 11, 1uLL, 0x100004077774924uLL);
      sprintf(v64, "%s%u.cmph", *(v10 + 96), k);
      buffer_manager_open(v59, k, v64);
      free(v64);
      *&__n[1] = buffer_manager_read_key(v59, k, __n);
      v61[k] = hash(*(v10 + 80), (*&__n[1] + 4), __n[0]) % *(v10 + 60);
      v60[k] = *&__n[1];
      *&__n[1] = 0;
    }
  }

  v121 = v60;
  v127 = malloc_type_calloc(0xFFuLL, 8uLL, 0x10040436913F5uLL);
  if (*__ptr)
  {
    v65 = 0;
    v66 = 0;
    while (1)
    {
      if (v126 < 2)
      {
        v67 = 0;
      }

      else
      {
        v67 = 0;
        for (m = 1; m != v126; ++m)
        {
          if (v61[m] < v61[v67])
          {
            v67 = m;
          }
        }
      }

      v69 = v61[v67];
      v70 = v67;
      v71 = v59;
      key = buffer_manager_read_key(v59, v67, __n);
      *&__n[1] = key;
      if (!key)
      {
        break;
      }

      while (1)
      {
        v73 = hash(*(v10 + 80), key + 4, __n[0]) % *(v10 + 60);
        if (v73 != v61[v70])
        {
          break;
        }

        v74 = v65 + 1;
        v127[v65] = *&__n[1];
        *&__n[1] = 0;
        ++v66;
        key = buffer_manager_read_key(v71, v70, __n);
        *&__n[1] = key;
        ++v65;
        if (!key)
        {
          goto LABEL_79;
        }
      }

      if (!*&__n[1])
      {
        break;
      }

      if (*(*(v10 + 32) + v69) <= v65)
      {
        brz_new_cold_1();
      }

      v74 = v65 + 1;
      v127[v65] = v121[v70];
      v121[v70] = 0;
      ++v66;
      v61[v70] = v73;
      v75 = *&__n[1];
      v121[v70] = *&__n[1];
      ++v65;
      if (!v75)
      {
        goto LABEL_79;
      }

LABEL_81:
      if (*(*(v10 + 32) + v69) == v65)
      {
        v120 = cmph_io_byte_vector_adapter(v127, v65);
        v76 = cmph_config_new(v120);
        cmph_config_set_algo(v76, *(v10 + 12));
        cmph_config_set_graphsize(v76, *(v10 + 16));
        v80 = cmph_new(v76, v77, v78, v79);
        v82 = *(v2 + 16);
        if (!v80)
        {
          if (v82)
          {
            fprintf(*MEMORY[0x29EDCA610], "ERROR: Can't generate MPHF for bucket %u out of %u\n", v69 + 1, *v123);
          }

          cmph_config_destroy(v76);
          v98 = 0;
          v3 = v110;
          do
          {
            free(v127[v98]);
            v127[v98++] = 0;
          }

          while (v65 != v98);
          cmph_io_byte_vector_adapter_destroy(v120);
          buffer_manager_destroy(v71);
          free(v127);
          free(v121);
          free(v61);
LABEL_104:
          v8 = MEMORY[0x29EDCA610];
          v9 = v111;
          goto LABEL_105;
        }

        if (v82 && !(v69 % 0x3E8))
        {
          v83 = v80;
          fprintf(*MEMORY[0x29EDCA610], "MPHF for bucket %u out of %u was generated.\n", v69 + 1, *v123);
          v80 = v83;
        }

        v84 = *(v10 + 12);
        v118 = v80;
        v119 = v76;
        if (v84 == 1)
        {
          v94 = v80[2];
          v130 = 0;
          *v131 = 0;
          v129 = 0;
          LOBYTE(v81) = *(*(v10 + 32) + v69);
          LODWORD(v69) = vcvtpd_u64_f64(*(v10 + 16) * v81);
          v113 = v69;
          v115 = v94;
          hash_state_dump(**(v94 + 16), &v130, &v131[1]);
          hash_state_dump(*(*(v94 + 16) + 8), &v129, v131);
          __sizea = (v69 + v131[1] + v131[0] + 8);
          v93 = malloc_type_malloc(__sizea, 0x100004077774924uLL);
          *v93 = v131[1];
          v95 = v131[1];
          memcpy(v93 + 1, v130, v131[1]);
          *(v93 + v95 + 4) = v131[0];
          v59 = v71;
          memcpy(v93 + v131[1] + 8, v129, v131[0]);
          v2 = v122;
          memcpy(v93 + v131[1] + v131[0] + 8, *(v115 + 8), v113);
          free(v130);
          free(v129);
          v92 = __sizea;
        }

        else
        {
          if (v84 != 4)
          {
            brz_new_cold_3();
          }

          v85 = v80[2];
          v130 = 0;
          *v131 = 0;
          v129 = 0;
          v86 = *(v85 + 16);
          v112 = v86;
          hash_state_dump(*(v85 + 48), &v130, &v131[1]);
          hash_state_dump(*(v85 + 56), &v129, v131);
          __size = v86 + v131[1] + v131[0] + 8;
          v87 = malloc_type_malloc(__size, 0x100004077774924uLL);
          *v87 = v131[1];
          v88 = v87 + 2;
          v114 = v87;
          v89 = v87 + 1;
          v90 = v131[1];
          memcpy(v87 + 1, v130, v131[1]);
          *(v89 + v90) = v131[0];
          memcpy(v88 + v131[1], v129, v131[0]);
          if (v112)
          {
            v91 = 0;
            do
            {
              *(v88 + v131[1] + v131[0]) = *(*(v85 + 40) + v91);
              v91 += 4;
              v88 = (v88 + 1);
            }

            while (4 * v112 != v91);
          }

          free(v130);
          free(v129);
          v2 = v122;
          v59 = v71;
          v93 = v114;
          v92 = __size;
        }

        fwrite(v93, v92, 1uLL, *(v10 + 104));
        free(v93);
        cmph_config_destroy(v119);
        v96 = v65;
        v97 = v127;
        do
        {
          free(*v97);
          *v97++ = 0;
          --v96;
        }

        while (v96);
        cmph_destroy(v118);
        cmph_io_byte_vector_adapter_destroy(v120);
        v65 = 0;
      }

      else
      {
        v59 = v71;
      }

      if (v66 >= *__ptr)
      {
        goto LABEL_109;
      }
    }

    v74 = v65;
LABEL_79:
    if (*(*(v10 + 32) + v69) <= v74)
    {
      brz_new_cold_2();
    }

    v127[v74] = v121[v70];
    v65 = v74 + 1;
    v121[v70] = 0;
    ++v66;
    v61[v70] = -1;
    goto LABEL_81;
  }

LABEL_109:
  buffer_manager_destroy(v59);
  free(v127);
  free(v121);
  free(v61);
  v100 = malloc_type_calloc(*(v110 + 60), 4uLL, 0x100004052888210uLL);
  *(v110 + 40) = v100;
  if (*(v110 + 60) >= 2u)
  {
    v101 = *(v110 + 32);
    v102 = *v100;
    v103 = 1;
    do
    {
      v104 = *v101++;
      v102 += v104;
      v100[v103++] = v102;
    }

    while (v103 < *(v110 + 60));
  }

  v99 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v99 = *v2;
  v105 = malloc_type_malloc(0x48uLL, 0x10B00409DD511FCuLL);
  v105[4] = *(v110 + 48);
  *(v110 + 48) = 0;
  v106 = *(v110 + 64);
  *(v110 + 64) = 0;
  *(v105 + 3) = v106;
  v105[8] = *(v110 + 80);
  *(v110 + 72) = 0;
  *(v110 + 80) = 0;
  v107 = *(v110 + 32);
  *(v110 + 32) = 0;
  *(v105 + 1) = v107;
  *(v110 + 40) = 0;
  *(v105 + 10) = *(v110 + 60);
  v105[1] = *(v110 + 16);
  v108 = *(v110 + 24);
  *(v105 + 1) = v108;
  *v105 = *(v110 + 12);
  v99[2] = v105;
  *(v99 + 1) = v108;
  if (*(v2 + 16))
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  return v99;
}

uint64_t brz_dump(uint64_t a1, FILE *a2)
{
  v3 = *(a1 + 16);
  v6 = 0;
  __ptr = 0;
  hash_state_dump(*(v3 + 64), &v6, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v6, __ptr, 1uLL, a2);
  free(v6);
  fwrite((v3 + 4), 4uLL, 1uLL, a2);
  fwrite(*(v3 + 24), 4 * *(v3 + 40), 1uLL, a2);
  return 1;
}

size_t brz_load(FILE *a1, uint64_t a2)
{
  __ptr = 0;
  v4 = malloc_type_malloc(0x48uLL, 0x10B00409DD511FCuLL);
  *(a2 + 16) = v4;
  fread(v4 + 1, 8uLL, 1uLL, a1);
  fread(v4, 4uLL, 1uLL, a1);
  fread(v4 + 5, 4uLL, 1uLL, a1);
  v5 = malloc_type_malloc(*(v4 + 10), 0x100004077774924uLL);
  v4[2] = v5;
  fread(v5, *(v4 + 10), 1uLL, a1);
  v4[6] = malloc_type_malloc(8 * *(v4 + 10), 0x2004093837F09uLL);
  v4[7] = malloc_type_malloc(8 * *(v4 + 10), 0x2004093837F09uLL);
  v4[4] = malloc_type_calloc(*(v4 + 10), 8uLL, 0x10040436913F5uLL);
  if (*(v4 + 10))
  {
    v6 = 0;
    do
    {
      fread(&__ptr, 4uLL, 1uLL, a1);
      v7 = __ptr;
      v8 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
      fread(v8, v7, 1uLL, a1);
      *(v4[6] + 8 * v6) = hash_state_load(v8);
      free(v8);
      fread(&__ptr, 4uLL, 1uLL, a1);
      v9 = __ptr;
      v10 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
      fread(v10, v9, 1uLL, a1);
      *(v4[7] + 8 * v6) = hash_state_load(v10);
      free(v10);
      if (*v4 == 1)
      {
        LOBYTE(v11) = *(v4[2] + v6);
        v12 = vcvtpd_u64_f64(*(v4 + 1) * v11);
      }

      else
      {
        if (*v4 != 4)
        {
          brz_load_cold_1();
        }

        v12 = fch_calc_b(*(v4[2] + v6), *(v4 + 1));
      }

      v13 = v12;
      *(v4[4] + 8 * v6) = malloc_type_calloc(v12, 1uLL, 0x100004077774924uLL);
      fread(*(v4[4] + 8 * v6++), v13, 1uLL, a1);
    }

    while (v6 < *(v4 + 10));
  }

  fread(&__ptr, 4uLL, 1uLL, a1);
  v14 = __ptr;
  v15 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
  fread(v15, v14, 1uLL, a1);
  v4[8] = hash_state_load(v15);
  free(v15);
  fread(v4 + 4, 4uLL, 1uLL, a1);
  v16 = malloc_type_malloc(4 * *(v4 + 10), 0x100004052888210uLL);
  v4[3] = v16;
  v17 = 4 * *(v4 + 10);

  return fread(v16, v17, 1uLL, a1);
}

uint64_t brz_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 16);
  if (*v5 == 1)
  {
    hash_vector(*(v5 + 64), a2, a3, &v23);
    v6 = v24 % *(v5 + 40);
    LOBYTE(v14) = *(*(v5 + 16) + v6);
    v15 = vcvtpd_u64_f64(*(v5 + 8) * v14);
    v16 = hash(*(*(v5 + 48) + 8 * v6), a2, a3) % v15;
    v17 = hash(*(*(v5 + 56) + 8 * v6), a2, a3);
    v18 = v17 % v15;
    if (v17 % v15 + 1 < v15)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 0;
    }

    if (v16 == v18)
    {
      v18 = v19;
    }

    v20 = *(*(v5 + 32) + 8 * v6);
    v13 = (*(v20 + v18) + *(v20 + v16));
  }

  else
  {
    if (*v5 != 4)
    {
      brz_search_cold_1();
    }

    hash_vector(*(v5 + 64), a2, a3, &v23);
    v6 = v24 % *(v5 + 40);
    v7 = *(*(v5 + 16) + v6);
    v8 = fch_calc_b(v7, *(v5 + 8));
    v9 = fch_calc_p1(v7);
    v10 = fch_calc_p2(v8);
    v11 = hash(*(*(v5 + 48) + 8 * v6), a2, a3) % v7;
    v12 = hash(*(*(v5 + 56) + 8 * v6), a2, a3) % v7;
    v13 = (v12 + *(*(*(v5 + 32) + 8 * v6) + mixh10h11h12(v8, v11, v9, v10))) % v7;
  }

  v21 = *MEMORY[0x29EDCA608];
  return *(*(v5 + 24) + 4 * v6) + v13;
}

void brz_destroy(void *a1)
{
  v2 = a1[2];
  v3 = *(v2 + 32);
  if (v3)
  {
    if (*(v2 + 40))
    {
      v4 = 0;
      do
      {
        free(*(*(v2 + 32) + 8 * v4));
        hash_state_destroy(*(*(v2 + 48) + 8 * v4));
        hash_state_destroy(*(*(v2 + 56) + 8 * v4++));
      }

      while (v4 < *(v2 + 40));
      v3 = *(v2 + 32);
    }

    free(v3);
    free(*(v2 + 48));
    free(*(v2 + 56));
  }

  hash_state_destroy(*(v2 + 64));
  free(*(v2 + 16));
  free(*(v2 + 24));
  free(v2);

  free(a1);
}

void *brz_pack(uint64_t a1, _DWORD *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  *a2 = *v3;
  type = hash_get_type(*(v3 + 64));
  v2[1] = type;
  v2 += 2;
  hash_state_pack(*(v3 + 64), v2);
  v5 = v2 + hash_state_packed_size(type);
  *v5 = *(v3 + 40);
  *(v5 + 4) = *(v3 + 8);
  v6 = hash_get_type(**(v3 + 48));
  *(v5 + 3) = v6;
  v7 = hash_get_type(**(v3 + 56));
  *(v5 + 4) = v7;
  v5 += 20;
  memcpy(v5, *(v3 + 16), *(v3 + 40));
  v8 = *(v3 + 40);
  v9 = &v5[v8];
  result = memcpy(v9, *(v3 + 24), 4 * v8);
  v11 = *(v3 + 40);
  if (v11)
  {
    v12 = 0;
    v13 = &v9[4 * v11];
    v14 = &v13[4 * v11];
    do
    {
      *&v13[4 * v12] = v14;
      hash_state_pack(*(*(v3 + 48) + 8 * v12), v14);
      v15 = &v14[hash_state_packed_size(v6)];
      hash_state_pack(*(*(v3 + 56) + 8 * v12), v15);
      v16 = hash_state_packed_size(v7);
      if (*v3 == 1)
      {
        LOBYTE(v17) = *(*(v3 + 16) + v12);
        v18 = vcvtpd_u64_f64(*(v3 + 8) * v17);
      }

      else
      {
        if (*v3 != 4)
        {
          brz_pack_cold_1();
        }

        v18 = fch_calc_b(*(*(v3 + 16) + v12), *(v3 + 8));
      }

      v19 = &v15[v16];
      result = memcpy(v19, *(*(v3 + 32) + 8 * v12), v18);
      v14 = &v19[v18];
      ++v12;
    }

    while (v12 < *(v3 + 40));
  }

  return result;
}

uint64_t brz_packed_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  type = hash_get_type(*(v1 + 64));
  v3 = hash_get_type(**(v1 + 48));
  v4 = hash_get_type(**(v1 + 56));
  v5 = hash_state_packed_size(type) + *(v1 + 40) + 8 * *(v1 + 40);
  v6 = v5 + *(v1 + 40) * hash_state_packed_size(v3);
  v7 = hash_state_packed_size(v4);
  v9 = *(v1 + 40);
  v10 = v6 + v9 * v7 + 32;
  if (v9)
  {
    for (i = 0; i < v9; ++i)
    {
      if (*v1 == 1)
      {
        LOBYTE(v8) = *(*(v1 + 16) + i);
        v8 = *&v8;
        v12 = vcvtpd_u64_f64(*(v1 + 8) * v8);
      }

      else
      {
        if (*v1 != 4)
        {
          brz_packed_size_cold_1();
        }

        v12 = fch_calc_b(*(*(v1 + 16) + i), *(v1 + 8));
        v9 = *(v1 + 40);
      }

      v10 = v12 + v10;
    }
  }

  return v10;
}

uint64_t brz_search_packed(_DWORD *a1, unsigned __int8 *a2, unsigned int a3)
{
  v46 = *MEMORY[0x29EDCA608];
  if (*a1 == 1)
  {
    v25 = a1 + 2;
    v26 = a1[1];
    v27 = (a1 + hash_state_packed_size(v26) + 8);
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = v27 + 5;
    v31 = v27[3];
    v32 = v27[4];
    v33 = v27 + v28 + 20;
    hash_vector_packed(v25, v26, a2, a3, &v44);
    LOBYTE(v34) = *(v30 + v45 % v28);
    LODWORD(v30) = vcvtpd_u64_f64(v29 * v34);
    v18 = &v33[4 * (v45 % v28)];
    v35 = *&v18[4 * v28];
    v36 = (v35 + hash_state_packed_size(v31));
    v37 = hash_state_packed_size(v32);
    v38 = hash_packed(v35, v31, a2, a3) % v30;
    v39 = hash_packed(v36, v32, a2, a3);
    v40 = v39 % v30;
    if (v39 % v30 + 1 < v30)
    {
      v41 = v40 + 1;
    }

    else
    {
      v41 = 0;
    }

    if (v38 == v40)
    {
      v40 = v41;
    }

    v24 = (*(v36 + v37 + v40) + *(v36 + v37 + v38));
  }

  else
  {
    if (*a1 != 4)
    {
      brz_search_packed_cold_1();
    }

    v5 = a1 + 2;
    v6 = a1[1];
    v7 = (a1 + hash_state_packed_size(v6) + 8);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v7 + 5;
    v12 = v7[3];
    v11 = v7[4];
    v13 = v7 + v8 + 20;
    hash_vector_packed(v5, v6, a2, a3, &v44);
    v14 = v45 % v8;
    LODWORD(v5) = *(v10 + v45 % v8);
    v15 = fch_calc_b(v5, v9);
    v16 = fch_calc_p1(v5);
    v17 = fch_calc_p2(v15);
    v18 = &v13[4 * v14];
    v19 = *&v18[4 * v8];
    v20 = (v19 + hash_state_packed_size(v12));
    v21 = v20 + hash_state_packed_size(v11);
    v22 = hash_packed(v19, v12, a2, a3) % v5;
    v23 = hash_packed(v20, v11, a2, a3) % v5;
    v24 = (v23 + v21[mixh10h11h12(v15, v22, v16, v17)]) % v5;
  }

  v42 = *MEMORY[0x29EDCA608];
  return *v18 + v24;
}

void *buffer_entry_new(int a1)
{
  result = malloc_type_malloc(0x20uLL, 0x1030040D278AA01uLL);
  if (result)
  {
    *result = 0;
    result[1] = 0;
    *(result + 4) = a1;
    *(result + 5) = a1;
    *(result + 6) = a1;
    *(result + 28) = 0;
  }

  return result;
}

FILE *buffer_entry_open(FILE **a1, char *__filename)
{
  result = fopen(__filename, "rb");
  *a1 = result;
  return result;
}

_DWORD *buffer_entry_read_key(uint64_t a1, char *__dst)
{
  v3 = *(a1 + 20);
  v2 = *(a1 + 24);
  if (*(a1 + 28))
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return 0;
  }

  v7 = v2 + 4 - v3;
  if (v2 + 4 <= v3)
  {
    v8 = 0;
    v7 = 4;
  }

  else
  {
    v8 = v3 - v2;
    if (v3 != v2)
    {
      memcpy(__dst, (*(a1 + 8) + v2), v8);
    }

    buffer_entry_load(a1);
    LODWORD(v2) = *(a1 + 24);
  }

  memcpy(&__dst[4 * v8], (*(a1 + 8) + v2), v7);
  *(a1 + 24) += v7;
  v10 = *__dst;
  v11 = malloc_type_malloc(v10 + 4, 0x100004052888210uLL);
  v9 = v11;
  *v11 = *__dst;
  v13 = *(a1 + 20);
  v12 = *(a1 + 24);
  v14 = v12 + v10 - v13;
  if (v12 + v10 <= v13)
  {
    v15 = 0;
    LODWORD(v14) = v10;
  }

  else
  {
    v15 = v13 - v12;
    if (v13 != v12)
    {
      memcpy(v11 + 1, (*(a1 + 8) + v12), v15);
    }

    buffer_entry_load(a1);
    LODWORD(v12) = *(a1 + 24);
    v10 = v14;
  }

  memcpy(v9 + v15 + 4, (*(a1 + 8) + v12), v10);
  *(a1 + 24) += v14;
  return v9;
}

size_t buffer_entry_load(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = malloc_type_calloc(*(a1 + 16), 1uLL, 0x100004077774924uLL);
  *(a1 + 8) = v2;
  result = fread(v2, 1uLL, *(a1 + 16), *a1);
  *(a1 + 20) = result;
  if (*(a1 + 16) != result)
  {
    *(a1 + 28) = 1;
  }

  *(a1 + 24) = 0;
  return result;
}

void buffer_entry_destroy(uint64_t a1)
{
  fclose(*a1);
  *a1 = 0;
  free(*(a1 + 8));

  free(a1);
}

void *buffer_manager_new(int a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x1090040C43F5BDEuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[1] = malloc_type_calloc(a2, 8uLL, 0x2004093837F09uLL);
    v6 = 0;
    v5[3] = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
    *(v5 + 8) = -1;
    *(v5 + 4) = a2;
    v7 = *v5 / a2;
    do
    {
      *(v5[1] + 8 * v6++) = buffer_entry_new(v7 + 1);
    }

    while (v6 < *(v5 + 4));
  }

  return v5;
}

_DWORD *buffer_manager_read_key(uint64_t a1, unsigned int a2, char *a3)
{
  v6 = a2;
  if ((*(a1 + 32) & 0x80000000) == 0)
  {
    capacity = buffer_entry_get_capacity(*(*(a1 + 8) + 8 * a2));
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    *(a1 + 32) = v9 - 1;
    buffer_entry_set_capacity(*(*(a1 + 8) + 8 * a2), *(v8 + 4 * v9) + capacity);
  }

  key = buffer_entry_read_key(*(*(a1 + 8) + 8 * v6), a3);
  if (!key)
  {
    v11 = buffer_entry_get_capacity(*(*(a1 + 8) + 8 * v6));
    v12 = *(a1 + 24);
    v13 = *(a1 + 32) + 1;
    *(a1 + 32) = v13;
    *(v12 + 4 * v13) = v11;
  }

  return key;
}

void buffer_manager_destroy(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = 0;
    do
    {
      buffer_entry_destroy(*(*(a1 + 8) + 8 * v2++));
    }

    while (v2 < *(a1 + 16));
  }

  free(*(a1 + 24));
  free(*(a1 + 8));

  free(a1);
}

void *chd_config_new(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    *v2 = cmph_config_new(v1);
    cmph_config_set_algo();
  }

  return v3;
}

void chd_config_destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*v1)
  {
    cmph_config_destroy(*v1);
  }

  free(v1);
}

void *chd_new(uint64_t a1, double a2)
{
  v4 = *(a1 + 32);
  v5 = *v4;
  v6 = *(*v4 + 32);
  memset(v24, 0, sizeof(v24));
  cmph_config_set_verbosity(v5, *(a1 + 16));
  cmph_config_set_graphsize(*v4, a2);
  v7 = MEMORY[0x29EDCA610];
  if (*(a1 + 16))
  {
    fprintf(*MEMORY[0x29EDCA610], "Generating a CHD_PH perfect hash function with a load factor equal to %.3f\n", a2);
  }

  v8 = cmph_new(*v4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = cmph_packed_size(v8);
  v11 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
  cmph_pack(v9, v11);
  cmph_destroy(v9);
  if (*(a1 + 16))
  {
    fwrite("Compressing the range of the resulting CHD_PH perfect hash function\n", 0x44uLL, 1uLL, *v7);
  }

  compressed_rank_init(v24);
  v12 = *(v6 + 20);
  v13 = *(v6 + 32);
  v14 = malloc_type_calloc((v12 - v13), 4uLL, 0x100004052888210uLL);
  v15 = v14;
  if (v12)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(v6 + 48);
    do
    {
      if ((bitmask32[v17 & 0x1F] & *(v18 + 4 * (v17 >> 5))) == 0)
      {
        *(v14 + v16++) = v17;
      }

      ++v17;
    }

    while (v12 != v17);
  }

  compressed_rank_generate(v24, v14, v12 - v13);
  free(v15);
  v19 = compressed_rank_packed_size(v24);
  v20 = malloc_type_calloc(v19, 1uLL, 0x100004077774924uLL);
  compressed_rank_pack(v24, v20);
  compressed_rank_destroy(v24);
  v21 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v21 = *a1;
  v22 = malloc_type_malloc(0x20uLL, 0x101004097AD5072uLL);
  v22[1] = v20;
  v22[3] = v11;
  *(v22 + 4) = v10;
  *v22 = v19;
  v21[2] = v22;
  *(v21 + 1) = v13;
  if (*(a1 + 16))
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *v7);
  }

  return v21;
}

size_t chd_load(FILE *a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x101004097AD5072uLL);
  *(a2 + 16) = v4;
  fread(v4 + 2, 4uLL, 1uLL, a1);
  v5 = malloc_type_calloc(*(v4 + 4), 1uLL, 0x100004077774924uLL);
  v4[3] = v5;
  fread(v5, *(v4 + 4), 1uLL, a1);
  fread(v4, 4uLL, 1uLL, a1);
  v6 = malloc_type_calloc(*v4, 1uLL, 0x100004077774924uLL);
  v4[1] = v6;
  v7 = *v4;

  return fread(v6, v7, 1uLL, a1);
}

uint64_t chd_dump(uint64_t a1, FILE *a2)
{
  v3 = *(a1 + 16);
  __cmph_dump(a1, a2);
  fwrite(v3 + 2, 4uLL, 1uLL, a2);
  fwrite(v3[3], *(v3 + 4), 1uLL, a2);
  fwrite(v3, 4uLL, 1uLL, a2);
  fwrite(v3[1], *v3, 1uLL, a2);
  return 1;
}

void chd_destroy(void *a1)
{
  v2 = a1[2];
  free(v2[3]);
  free(v2[1]);
  free(v2);

  free(a1);
}

uint64_t chd_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  v5 = cmph_search_packed(*(v3 + 24), a2, a3);
  return v5 - compressed_rank_query_packed(v4, v5);
}

void *chd_pack(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *v2;
  *a2 = v3;
  v4 = a2 + 1;
  memcpy(a2 + 1, v2[1], v3);
  v5 = *v2;
  v6 = *(v2 + 4);
  *(v4 + v5) = v6;
  v7 = v2[3];

  return memcpy(v4 + v5 + 4, v7, v6);
}

uint64_t chd_search_packed(unsigned int *a1)
{
  v1 = a1 + 1;
  v2 = cmph_search_packed(a1 + *a1 + 8);
  return v2 - compressed_rank_query_packed(v1, v2);
}

double chd_ph_config_new()
{
  v0 = malloc_type_malloc(0x38uLL, 0x10300403C8AB7B5uLL);
  if (v0)
  {
    v0[4] = 0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
    *(v0 + 36) = 1;
    *&result = 0x400000001;
    v0[5] = 0x400000001;
    v0[6] = 0;
  }

  return result;
}

void chd_ph_config_destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[6];
  if (v2)
  {
    free(v2);
  }

  free(v1);
}

uint64_t chd_ph_config_set_hashfuncs(uint64_t result, _DWORD *a2)
{
  if (*a2 != 1)
  {
    **(result + 32) = *a2;
  }

  return result;
}

uint64_t chd_ph_config_set_b(uint64_t result, int a2)
{
  if (!result)
  {
    chd_ph_config_set_b_cold_1();
  }

  if ((a2 - 15) >= 0xFFFFFFF2)
  {
    v2 = a2;
  }

  else
  {
    v2 = 4;
  }

  *(*(result + 32) + 44) = v2;
  return result;
}

uint64_t chd_ph_config_set_keys_per_bin(uint64_t result, int a2)
{
  if (!result)
  {
    chd_ph_config_set_keys_per_bin_cold_1();
  }

  if ((a2 - 128) < 0xFFFFFF82)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  *(*(result + 32) + 40) = v2;
  return result;
}

void *chd_ph_new(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a1;
  v128 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 8) + 8);
  *(v5 + 32) = v6;
  v7 = v6 / *(v5 + 44);
  if (a2 < 0.5)
  {
    a2 = 0.5;
  }

  if (a2 >= 0.99)
  {
    a2 = 0.99;
  }

  LODWORD(a4) = *(v5 + 40);
  v8 = (v6 / (a2 * *&a4));
  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 + v8;
  *(v5 + 16) = v7 + 1;
  while (1)
  {
    *(v5 + 20) = v10;
    if (check_primality(v10) == 1)
    {
      break;
    }

    v10 = (*(v5 + 20) + 2);
  }

  v12 = 0.0;
  v115 = v5;
  if (*(v5 + 40) == 1)
  {
    LODWORD(v12) = *(v5 + 20);
    LODWORD(v11) = *(v5 + 32);
    v12 = ((1.0 / (v11 + v11) + *&v12 / v11 + -1.0) * log(1.0 - v11 / *&v12) + 1.0) / 0.693147181;
  }

  v13 = MEMORY[0x29EDCA610];
  if (v4[4])
  {
    fprintf(*MEMORY[0x29EDCA610], "space lower bound is %.3f bits per key\n", v12);
  }

  v14 = malloc_type_calloc(*(v5 + 16), 8uLL, 0x100004000313F17uLL);
  v15 = malloc_type_calloc(*(v5 + 32), 8uLL, 0x100004000313F17uLL);
  LODWORD(v16) = *(v5 + 32);
  v17 = log(v16) / 0.693147181 / 20.0;
  v18 = *(v5 + 20);
  if (*(v5 + 40) == 1)
  {
    v18 = (v18 + 31) >> 5;
    v19 = 4;
    v20 = 0x100004052888210;
  }

  else
  {
    v20 = 0x100004077774924;
    v19 = 1;
  }

  v120 = vcvtd_n_u64_f64(v17, 0x14uLL);
  *(v5 + 48) = malloc_type_calloc(v18, v19, v20);
  v123 = malloc_type_calloc(*(v5 + 16), 4uLL, 0x100004052888210uLL);
  v119 = 0;
  v21 = 100;
  v113 = v4;
  while (1)
  {
    v22 = v15;
    v23 = v14;
    if (v4[4])
    {
      fprintf(*v13, "Starting mapping step for mph creation of %u keys with %u bins\n", *(v115 + 32), *(v115 + 20));
    }

    v114 = v21 - 1;
    v24 = *(v4 + 4);
    v125 = 0;
    v124 = 0;
    v25 = malloc_type_malloc(12 * *(v24 + 32), 0x10000403E1C8BA9uLL);
    v26 = 0;
    v116 = (v25 + 8);
    v117 = v14 + 5;
    v27 = v14 + 1;
    v28 = 1000;
    v121 = v25;
    while (1)
    {
      v29 = *(v24 + 24);
      if (v29)
      {
        hash_state_destroy(v29);
      }

      *(v24 + 24) = hash_state_new(*v24, *(v24 + 32));
      if (!v23)
      {
        chd_ph_new_cold_1();
      }

      v30 = *(v24 + 16);
      if (v30)
      {
        v31 = (v30 + 3) & 0x1FFFFFFFCLL;
        v32 = vdupq_n_s64(v30 - 1);
        v33 = v117;
        v34 = xmmword_2985D19D0;
        v35 = xmmword_2985D19C0;
        do
        {
          v36 = vmovn_s64(vcgeq_u64(v32, v34));
          if (vuzp1_s16(v36, *v32.i8).u8[0])
          {
            *(v33 - 4) = 0;
          }

          if (vuzp1_s16(v36, *&v32).i8[2])
          {
            *(v33 - 2) = 0;
          }

          if (vuzp1_s16(*&v32, vmovn_s64(vcgeq_u64(v32, *&v35))).i32[1])
          {
            *v33 = 0;
            v33[2] = 0;
          }

          v37 = vdupq_n_s64(4uLL);
          v35 = vaddq_s64(v35, v37);
          v34 = vaddq_s64(v34, v37);
          v33 += 8;
          v31 -= 4;
        }

        while (v31);
      }

      (*(*(v4 + 1) + 32))(**(v4 + 1));
      if (*(v24 + 32))
      {
        v38 = 0;
        v39 = v116;
        do
        {
          (*(*(v4 + 1) + 16))(**(v4 + 1), &v125, &v124);
          hash_vector(*(v24 + 24), v125, v124, &v126);
          v40 = *(v24 + 20);
          v41 = v126.i32[0] % *(v24 + 16);
          *(v39 - 2) = v126.i32[1] % v40;
          *(v39 - 1) = v127 % (v40 - 1) + 1;
          *v39 = v41;
          (*(*(v4 + 1) + 24))(**(v4 + 1), v125, v124);
          v42 = &v23[2 * v41];
          v43 = v42[1];
          v42[1] = v43 + 1;
          if (v43 + 1 > v26)
          {
            v26 = v43 + 1;
          }

          ++v38;
          v39 += 3;
        }

        while (v38 < *(v24 + 32));
      }

      *v23 = 0;
      if (*(v24 + 16) < 2u)
      {
        v48 = 0;
        v47 = v121;
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v46 = v23 + 1;
        v47 = v121;
        do
        {
          v45 += *v46;
          *v46 = 0;
          v46[1] = v45;
          v46 += 2;
          v48 = v44 + 1;
          v49 = v44 + 2;
          ++v44;
        }

        while (v49 < *(v24 + 16));
      }

      v23[2 * v48 + 1] = 0;
      LODWORD(v50) = *(v24 + 32);
      if (!v50)
      {
        break;
      }

      v51 = 0;
      --v28;
      while (1)
      {
        v52 = &v47[12 * v51];
        v53 = &v23[2 * *(v52 + 2)];
        v54 = v53[1];
        v55 = &v22[8 * *v53];
        v56 = *v52;
        if (v54)
        {
          break;
        }

LABEL_50:
        v57 = *(v52 + 1);
        *v55 = v56;
        *(v55 + 1) = v57;
        ++v53[1];
        ++v51;
        v50 = *(v24 + 32);
        if (v51 >= v50)
        {
          goto LABEL_51;
        }
      }

      while (*v55 != v56 || *(v55 + 1) != *(v52 + 1))
      {
        v55 += 8;
        if (!--v54)
        {
          goto LABEL_50;
        }
      }

LABEL_51:
      if (v50 == v51)
      {
        break;
      }

      if (!v28)
      {
        free(v47);
        hash_state_destroy(*(v24 + 24));
        *(v24 + 24) = 0;
        if (v4[4])
        {
          fwrite("Failure in mapping step\n", 0x18uLL, 1uLL, *MEMORY[0x29EDCA610]);
        }

LABEL_131:
        free(v23);
        free(v22);
        free(v119);
        free(v123);
        v109 = v115;
        v110 = *(v115 + 24);
        if (v110)
        {
          hash_state_destroy(v110);
          v109 = v115;
        }

        v106 = 0;
        *(v109 + 24) = 0;
        goto LABEL_134;
      }
    }

    free(v47);
    if (v4[4])
    {
      fwrite("Starting ordering step\n", 0x17uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    if (v119)
    {
      free(v119);
    }

    v58 = *(v115 + 16);
    v59 = *(v115 + 32);
    v60 = malloc_type_calloc(v26 + 1, 8uLL, 0x100004000313F17uLL);
    if (v58)
    {
      v61 = v23 + 1;
      v62 = v58;
      do
      {
        v64 = *v61;
        v61 += 2;
        v63 = v64;
        if (v64)
        {
          ++*&v60[8 * v63 + 4];
        }

        --v62;
      }

      while (v62);
    }

    *(v60 + 2) = 0;
    if (v26 >= 2)
    {
      v66 = 0;
      v67 = 2;
      do
      {
        v68 = v67;
        v69 = &v60[8 * (v67 - 1)];
        v66 += *(v69 + 1);
        *&v60[8 * v68] = v66;
        *(v69 + 1) = 0;
        v67 = v68 + 1;
      }

      while (v68 + 1 <= v26);
      v65 = v68;
    }

    else
    {
      v65 = 1;
    }

    v119 = v60;
    *&v60[8 * v65 + 4] = 0;
    v70 = malloc_type_calloc(v58, 8uLL, 0x100004000313F17uLL);
    v14 = v70;
    if (v58)
    {
      for (i = 0; i != v58; ++i)
      {
        v72 = *v27;
        if (v72)
        {
          v73 = &v119[8 * v72];
          v74 = &v70[8 * (*(v73 + 1) + *v73)];
          *(v74 + 1) = i;
          *v74 = *(v27 - 1);
          ++*(v73 + 1);
        }

        v27 += 2;
      }
    }

    free(v23);
    v75 = malloc_type_calloc(v59, 8uLL, 0x100004000313F17uLL);
    v15 = v75;
    if (v26)
    {
      v76 = 0;
      for (j = 1; j <= v26; ++j)
      {
        v78 = &v119[8 * j];
        v79 = *v78;
        v80 = (*(v78 + 1) + v79);
        if (v79 < v80)
        {
          do
          {
            v81 = v14[2 * v79];
            v14[2 * v79] = v76;
            if (j)
            {
              v82 = j;
              do
              {
                *&v75[8 * v76++] = *&v22[8 * v81++];
                --v82;
              }

              while (v82);
            }

            ++v79;
          }

          while (v79 != v80);
        }
      }
    }

    free(v22);
    if (v4[4])
    {
      fwrite("Starting searching step\n", 0x18uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    v83 = v115;
    if (!*(v115 + 36))
    {
      break;
    }

    if (!v26)
    {
      goto LABEL_123;
    }

    v84 = v26;
    while (1)
    {
      v85 = &v119[8 * v84];
      v118 = v85[1];
      if (v118)
      {
        break;
      }

LABEL_100:
      v85[1] = v118;
      if (!--v84)
      {
        goto LABEL_123;
      }
    }

    v86 = 0;
    v87 = 0;
    v88 = 0;
    while (1)
    {
      v122 = v88;
      v89 = 0;
      v90 = 0;
      v91 = *v85;
      do
      {
        if (place_bucket_probe(v115, v14, v15, v87, v86, v91, v84))
        {
          *(v123 + v14[2 * v91 + 1]) = v87 + *(v115 + 20) * v86;
        }

        else
        {
          *&v14[2 * *v85 + 2 * v89++] = *&v14[2 * v91];
        }

        ++v91;
        ++v90;
      }

      while (v90 < v85[1]);
      v85[1] = v89;
      v92 = v87 + 1;
      v93 = *(v115 + 20);
      if (v87 + 1 >= v93)
      {
        ++v86;
      }

      v88 = v122 + 1;
      if (v122 + 1 >= v120 || v86 >= v93)
      {
        break;
      }

      if (v92 < v93)
      {
        v93 = 0;
      }

      v87 = v92 - v93;
      if (!v89)
      {
        goto LABEL_100;
      }
    }

    v85[1] = v118;
    v4 = v113;
LABEL_103:
    if (*(v115 + 40) <= 1u)
    {
      v94 = ((v93 + 31) >> 3) & 0x1FFFFFFC;
    }

    else
    {
      v94 = v93;
    }

    bzero(*(v115 + 48), v94);
    v13 = MEMORY[0x29EDCA610];
    v21 = v114;
    if (!v114)
    {
      if (v4[4])
      {
        fwrite("Failure because the max trials was exceeded\n", 0x2CuLL, 1uLL, *MEMORY[0x29EDCA610]);
      }

      v23 = v14;
      v22 = v15;
      goto LABEL_131;
    }
  }

  if (v26)
  {
    v95 = v26;
    do
    {
      v96 = &v119[8 * v95];
      v97 = *v96;
      if (v97 < *(v96 + 1) + v97)
      {
        do
        {
          v98 = 0;
          v99 = 0;
          v100 = 1;
          v4 = v113;
          while (!place_bucket_probe(v115, v14, v15, v98, v99, v97, v95))
          {
            v101 = v98 + 1;
            v93 = *(v115 + 20);
            if (v98 + 1 < v93)
            {
              v102 = 0;
            }

            else
            {
              v102 = *(v115 + 20);
            }

            if (v101 >= v93)
            {
              ++v99;
            }

            if (v100 < v120)
            {
              v98 = v101 - v102;
              ++v100;
              if (v99 < v93)
              {
                continue;
              }
            }

            goto LABEL_103;
          }

          *(v123 + v14[2 * v97++ + 1]) = v98 + *(v115 + 20) * v99;
        }

        while (v97 < (*v96 + *(v96 + 1)));
      }

      --v95;
    }

    while (v95);
  }

LABEL_123:
  v103 = MEMORY[0x29EDCA610];
  if (v113[4])
  {
    fwrite("Starting compressing step\n", 0x1AuLL, 1uLL, *MEMORY[0x29EDCA610]);
    v83 = v115;
  }

  v104 = *(v83 + 8);
  if (v104)
  {
    free(v104);
  }

  v105 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100406BA554FBuLL);
  *(v115 + 8) = v105;
  compressed_seq_init(v105);
  compressed_seq_generate(*(v115 + 8), v123, *(v115 + 16));
  free(v14);
  free(v15);
  free(v119);
  free(v123);
  v106 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v106 = *v113;
  v107 = malloc_type_malloc(0x18uLL, 0x102004014030ADEuLL);
  *v107 = *(v115 + 8);
  *(v115 + 8) = 0;
  v107[2] = *(v115 + 24);
  *(v115 + 24) = 0;
  v108 = *(v115 + 20);
  *(v107 + 2) = *(v115 + 16);
  *(v107 + 3) = v108;
  v106[2] = v107;
  *(v106 + 1) = v108;
  if (v113[4])
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *v103);
  }

LABEL_134:
  v111 = *MEMORY[0x29EDCA608];
  return v106;
}

size_t chd_ph_load(FILE *a1, uint64_t a2)
{
  __ptr = 0;
  v4 = malloc_type_malloc(0x18uLL, 0x102004014030ADEuLL);
  *(a2 + 16) = v4;
  fread(&__ptr, 4uLL, 1uLL, a1);
  v5 = __ptr;
  v6 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
  fread(v6, v5, 1uLL, a1);
  v4[2] = hash_state_load(v6);
  free(v6);
  fread(&__ptr, 4uLL, 1uLL, a1);
  v7 = __ptr;
  v8 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
  fread(v8, v7, 1uLL, a1);
  v9 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100406BA554FBuLL);
  *v4 = v9;
  compressed_seq_load(v9, v8);
  free(v8);
  fread(v4 + 12, 4uLL, 1uLL, a1);

  return fread(v4 + 1, 4uLL, 1uLL, a1);
}

uint64_t chd_ph_dump(uint64_t a1, FILE *a2)
{
  v6 = 0;
  __ptr = 0;
  v3 = *(a1 + 16);
  __cmph_dump(a1, a2);
  hash_state_dump(*(v3 + 16), &v6, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v6, __ptr, 1uLL, a2);
  free(v6);
  compressed_seq_dump(*v3, &v6, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v6, __ptr, 1uLL, a2);
  free(v6);
  fwrite((v3 + 12), 4uLL, 1uLL, a2);
  fwrite((v3 + 8), 4uLL, 1uLL, a2);
  return 1;
}

void chd_ph_destroy(void *a1)
{
  v2 = a1[2];
  compressed_seq_destroy(*v2);
  free(*v2);
  hash_state_destroy(*(v2 + 16));
  free(v2);

  free(a1);
}

unint64_t chd_ph_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 16);
  hash_vector(*(v3 + 16), a2, a3, &v10);
  v4 = v10.u32[1];
  v5 = *(v3 + 12);
  v6 = v11;
  v7 = compressed_seq_query(*v3, v10.i32[0] % *(v3 + 8));
  v8 = *MEMORY[0x29EDCA608];
  return (v4 % v5 + v7 % *(v3 + 12) * (v6 % (v5 - 1) + 1) + v7 / *(v3 + 12)) % *(v3 + 12);
}

void chd_ph_pack(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  type = hash_get_type(*(v3 + 16));
  *a2++ = type;
  hash_state_pack(*(v3 + 16), a2);
  v5 = (a2 + hash_state_packed_size(type));
  *v5 = *(v3 + 12);
  v5[1] = *(v3 + 8);
  v6 = *v3;

  compressed_seq_pack(v6, v5 + 2);
}

uint64_t chd_ph_packed_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  type = hash_get_type(v1[2]);
  v3 = hash_state_packed_size(type);
  return v3 + compressed_seq_packed_size(*v1) + 16;
}

uint64_t chd_ph_search_packed(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 1);
  v6 = *a1;
  v7 = (a1 + hash_state_packed_size(*a1) + 4);
  v8 = *v7;
  v9 = v7[1];
  hash_vector_packed(v5, v6, a2, a3, &v14);
  v10 = v14.u32[1];
  LODWORD(a2) = v15;
  packed = compressed_seq_query_packed(v7 + 2, v14.i32[0] % v9);
  v12 = *MEMORY[0x29EDCA608];
  return ((v10 % v8 + packed % v8 * (a2 % (v8 - 1) + 1) + packed / v8) % v8);
}

uint64_t place_bucket_probe(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a2 + 8 * a6);
  v8 = (a3 + 8 * *v7);
  if (*(a1 + 40) <= 1u)
  {
    if (a7)
    {
      v9 = 0;
      v13 = *(a1 + 48);
      while (1)
      {
        v14 = ((*v8 + a5 + v8[1] * a4) % *(a1 + 20)) >> 5;
        v15 = *(v13 + 4 * v14);
        v16 = bitmask32_0[((*v8 + a5 + v8[1] * a4) % *(a1 + 20)) & 0x1F];
        if ((v16 & v15) != 0)
        {
          break;
        }

        *(v13 + 4 * v14) = v16 | v15;
        v8 += 2;
        if (a7 == ++v9)
        {
          return 1;
        }
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!a7)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v9 = 0;
  while (1)
  {
    v10 = (*v8 + a5 + v8[1] * a4) % *(a1 + 20);
    v11 = *(a1 + 48);
    v12 = *(v11 + v10);
    if (*(a1 + 40) <= v12)
    {
      break;
    }

    *(v11 + v10) = v12 + 1;
    v8 += 2;
    if (a7 == ++v9)
    {
      return 1;
    }
  }

LABEL_13:
  if (v9 == a7)
  {
    return 1;
  }

  v18 = (a3 + 8 * *v7);
  if (*(a1 + 40) <= 1u)
  {
    if (v9)
    {
      v22 = *(a1 + 48);
      do
      {
        v23 = *v18;
        v24 = v18[1];
        v18 += 2;
        v25 = (v23 + a5 + v24 * a4) % *(a1 + 20);
        *(v22 + ((v25 >> 3) & 0x1FFFFFFC)) ^= bitmask32_0[v25 & 0x1F];
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    for (; v9; --v9)
    {
      v19 = *v18;
      v20 = v18[1];
      v18 += 2;
      v21 = (v19 + a5 + v20 * a4) % *(a1 + 20);
      --*(*(a1 + 48) + v21);
    }
  }

  return 0;
}

double chm_config_new()
{
  v0 = malloc_type_malloc(0x28uLL, 0x10B004021B77C51uLL);
  if (v0)
  {
    v0[4] = 0;
    result = 0.0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
  }

  return result;
}

uint64_t chm_config_set_hashfuncs(uint64_t result, _DWORD *a2)
{
  if (*a2 != 1)
  {
    v2 = *(result + 32);
    *v2 = *a2;
    v3 = a2[1];
    if (v3 != 1)
    {
      v2[1] = v3;
    }
  }

  return result;
}

void *chm_new(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 8) + 8);
  if (a2 == 0.0)
  {
    a2 = 2.09;
  }

  v5 = vcvtpd_u64_f64(a2 * v4);
  *(v3 + 8) = v4;
  *(v3 + 12) = v5;
  *(v3 + 16) = graph_new(v5, v4);
  v6 = malloc_type_malloc(0x18uLL, 0x2004093837F09uLL);
  v7 = 0;
  *(v3 + 32) = v6;
  do
  {
    *(*(v3 + 32) + v7) = 0;
    v7 += 8;
  }

  while (v7 != 24);
  v8 = MEMORY[0x29EDCA610];
  if (*(a1 + 16))
  {
    fprintf(*MEMORY[0x29EDCA610], "Entering mapping step for mph creation of %u keys with graph sized %u\n", *(v3 + 8), *(v3 + 12));
  }

  v9 = 20;
  while (1)
  {
    **(v3 + 32) = hash_state_new(*v3, *(v3 + 12));
    *(*(v3 + 32) + 8) = hash_state_new(*(v3 + 4), *(v3 + 12));
    v10 = *(a1 + 32);
    graph_clear_edges(*(v10 + 16));
    (*(*(a1 + 8) + 32))(**(a1 + 8));
    v11 = *(a1 + 8);
    if (*(v11 + 8))
    {
      v12 = 0;
      while (1)
      {
        v30 = 0;
        v29 = 0;
        (*(v11 + 16))(*v11, &v29, &v30);
        v13 = hash(**(v10 + 32), v29, v30) % *(v10 + 12);
        v14 = hash(*(*(v10 + 32) + 8), v29, v30);
        v15 = *(v10 + 12);
        v16 = v14 % v15;
        v17 = v14 % v15 + 1 < v15 ? v16 + 1 : 0;
        v18 = v13 == v16 ? v17 : v16;
        if (v13 == v18)
        {
          break;
        }

        (*(*(a1 + 8) + 24))(**(a1 + 8), v29, v30);
        graph_add_edge(*(v10 + 16), v13, v18);
        ++v12;
        v11 = *(a1 + 8);
        if (v12 >= *(v11 + 8))
        {
          goto LABEL_18;
        }
      }

      if (*(a1 + 16))
      {
        fprintf(*v8, "Self loop for key %u\n", v12);
      }

      (*(*(a1 + 8) + 24))(**(a1 + 8), v29, v30);
      goto LABEL_26;
    }

LABEL_18:
    is_cyclic = graph_is_cyclic(*(v10 + 16));
    v20 = *(a1 + 16);
    if (!v20 || !is_cyclic)
    {
      break;
    }

    fwrite("Cyclic graph generated\n", 0x17uLL, 1uLL, *v8);
LABEL_26:
    --v9;
    hash_state_destroy(**(v3 + 32));
    **(v3 + 32) = 0;
    hash_state_destroy(*(*(v3 + 32) + 8));
    *(*(v3 + 32) + 8) = 0;
    if (*(a1 + 16))
    {
      fprintf(*v8, "Acyclic graph creation failure - %u iterations remaining\n", v9);
    }

    if (!v9)
    {
      graph_destroy(*(v3 + 16));
      return 0;
    }
  }

  if (is_cyclic)
  {
    goto LABEL_26;
  }

  if (v20)
  {
    fwrite("Starting assignment step\n", 0x19uLL, 1uLL, *v8);
  }

  v23 = malloc_type_malloc((*(v3 + 12) >> 3) + 1, 0x100004077774924uLL);
  bzero(v23, (*(v3 + 12) >> 3) + 1);
  free(*(v3 + 24));
  v24 = malloc_type_malloc(4 * *(v3 + 12), 0x100004052888210uLL);
  *(v3 + 24) = v24;
  if (!v24)
  {
    chm_new_cold_1();
  }

  v25 = *(v3 + 12);
  if (v25)
  {
    for (i = 0; i < v25; ++i)
    {
      if (!((bitmask_3[i & 7] & *(v23 + (i >> 3))) >> (i & 7)))
      {
        *(*(v3 + 24) + 4 * i) = 0;
        chm_traverse(v3, v23, i);
        v25 = *(v3 + 12);
      }
    }
  }

  graph_destroy(*(v3 + 16));
  free(v23);
  *(v3 + 16) = 0;
  v21 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v21 = *a1;
  v27 = malloc_type_malloc(0x18uLL, 0x1090040F2DB8820uLL);
  *(v27 + 8) = *(v3 + 24);
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  v28 = *(v3 + 8);
  *v27 = v28;
  v21[2] = v27;
  *(v21 + 1) = v28;
  if (*(a1 + 16))
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *v8);
  }

  return v21;
}

uint64_t chm_traverse(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = graph_neighbors_it(*(a1 + 16), a3);
  *(a2 + (a3 >> 3)) |= bitmask_3[a3 & 7];
  result = graph_next_neighbor(*(a1 + 16), &v8);
  if (result != -1)
  {
    v7 = result;
    do
    {
      if (!((bitmask_3[v7 & 7] & *(a2 + (v7 >> 3))) >> (v7 & 7)))
      {
        *(*(a1 + 24) + 4 * v7) = graph_edge_id(*(a1 + 16), a3, v7) - *(*(a1 + 24) + 4 * a3);
        chm_traverse(a1, a2, v7);
      }

      result = graph_next_neighbor(*(a1 + 16), &v8);
      v7 = result;
    }

    while (result != -1);
  }

  return result;
}

uint64_t chm_dump(uint64_t a1, FILE *a2)
{
  v7 = 0;
  v5 = 2;
  __ptr = 0;
  v3 = *(a1 + 16);
  __cmph_dump(a1, a2);
  fwrite(&v5, 4uLL, 1uLL, a2);
  hash_state_dump(**(v3 + 16), &v7, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v7, __ptr, 1uLL, a2);
  free(v7);
  hash_state_dump(*(*(v3 + 16) + 8), &v7, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v7, __ptr, 1uLL, a2);
  free(v7);
  fwrite((v3 + 4), 4uLL, 1uLL, a2);
  fwrite(v3, 4uLL, 1uLL, a2);
  fwrite(*(v3 + 8), 4 * *(v3 + 4), 1uLL, a2);
  return 1;
}

size_t chm_load(FILE *a1, uint64_t a2)
{
  size_4 = 0;
  v4 = malloc_type_malloc(0x18uLL, 0x1090040F2DB8820uLL);
  *(a2 + 16) = v4;
  fread(&size_4, 4uLL, 1uLL, a1);
  v5 = size_4;
  v6 = malloc_type_malloc(8 * (size_4 + 1), 0x2004093837F09uLL);
  v4[2] = v6;
  v6[v5] = 0;
  if (v5)
  {
    v7 = 0;
    size = 0;
    do
    {
      fread(&size, 4uLL, 1uLL, a1);
      v8 = size;
      v9 = malloc_type_malloc(size, 0x100004077774924uLL);
      fread(v9, v8, 1uLL, a1);
      *(v4[2] + v7) = hash_state_load(v9);
      free(v9);
      v7 += 8;
    }

    while (8 * v5 != v7);
  }

  fread(v4 + 4, 4uLL, 1uLL, a1);
  fread(v4, 4uLL, 1uLL, a1);
  v10 = malloc_type_malloc(4 * *(v4 + 1), 0x100004052888210uLL);
  v4[1] = v10;
  v11 = 4 * *(v4 + 1);

  return fread(v10, v11, 1uLL, a1);
}

uint64_t chm_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = *(a1 + 16);
  v6 = hash(**(v5 + 16), a2, a3) % *(v5 + 4);
  v7 = hash(*(*(v5 + 16) + 8), a2, a3);
  v8 = *(v5 + 4);
  v9 = v7 % v8;
  if (v7 % v8 + 1 < v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v6 != v9)
  {
    v10 = v9;
  }

  return (*(*(v5 + 8) + 4 * v10) + *(*(v5 + 8) + 4 * v6)) % *v5;
}

void chm_destroy(void *a1)
{
  v2 = a1[2];
  free(v2[1]);
  hash_state_destroy(*v2[2]);
  hash_state_destroy(*(v2[2] + 1));
  free(v2[2]);
  free(v2);

  free(a1);
}

void *chm_pack(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  type = hash_get_type(**(v3 + 16));
  *a2++ = type;
  hash_state_pack(**(v3 + 16), a2);
  v5 = (a2 + hash_state_packed_size(type));
  v6 = hash_get_type(*(*(v3 + 16) + 8));
  *v5++ = v6;
  hash_state_pack(*(*(v3 + 16) + 8), v5);
  v7 = (v5 + hash_state_packed_size(v6));
  *v7 = *(v3 + 4);
  v7[1] = *v3;
  v8 = *(v3 + 8);
  v9 = 4 * *(v3 + 4);

  return memcpy(v7 + 2, v8, v9);
}

uint64_t chm_packed_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  type = hash_get_type(**(v1 + 16));
  v3 = hash_get_type(*(*(v1 + 16) + 8));
  v4 = hash_state_packed_size(type);
  return v4 + hash_state_packed_size(v3) + 4 * *(v1 + 4) + 20;
}

uint64_t chm_search_packed(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = (a1 + 1);
  v6 = *a1;
  v7 = (a1 + hash_state_packed_size(*a1) + 4);
  v8 = *v7++;
  v9 = (v7 + hash_state_packed_size(v8));
  v10 = *v9;
  v11 = v9[1];
  v12 = hash_packed(v5, v6, a2, a3) % v10;
  v13 = hash_packed(v7, v8, a2, a3);
  v14 = v13 % v10;
  if (v13 % v10 + 1 < v10)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 0;
  }

  if (v12 == v14)
  {
    v14 = v15;
  }

  return (v9[v14 + 2] + v9[v12 + 2]) % v11;
}

void *cmph_io_nlfile_adapter(FILE *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = malloc_type_malloc(0x28uLL, 0x1080040F159ABB6uLL);
  if (!v2)
  {
    cmph_io_nlfile_adapter_cold_1();
  }

  v3 = v2;
  *v2 = a1;
  rewind(a1);
  v4 = fgets(__s, 1024, a1);
  v5 = 0;
  if (feof(a1))
  {
LABEL_8:
    rewind(a1);
  }

  else
  {
    while (1)
    {
      v6 = ferror(a1);
      if (!v4 || v6)
      {
        break;
      }

      if (__s[strlen(__s) - 1] == 10)
      {
        ++v5;
      }

      v4 = fgets(__s, 1024, a1);
      if (feof(a1))
      {
        goto LABEL_8;
      }
    }

    perror("Error reading input file");
    v5 = 0;
  }

  *(v3 + 2) = v5;
  v3[2] = key_nlfile_read;
  v3[3] = key_nlfile_dispose;
  v3[4] = key_nlfile_rewind;
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t key_nlfile_read(FILE *a1, void **a2, _DWORD *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  *a3 = 0;
  if (fgets(__s, 1024, a1))
  {
    while (!feof(a1))
    {
      v6 = strlen(__s);
      v7 = malloc_type_realloc(*a2, *a3 + v6 + 1, 0x100004077774924uLL);
      *a2 = v7;
      v8 = strlen(__s);
      memcpy(&v7[*a3], __s, v8);
      v9 = strlen(__s);
      result = (*a3 + v9);
      *a3 = result;
      if (__s[v9 - 1] == 10)
      {
        if (result && *(*a2 + (result - 1)) == 10)
        {
          *(*a2 + (result - 1)) = 0;
          result = (*a3 - 1);
          *a3 = result;
        }

        goto LABEL_6;
      }

      if (!fgets(__s, 1024, a1))
      {
        break;
      }
    }
  }

  result = 0xFFFFFFFFLL;
LABEL_6:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *cmph_io_nlnkfile_adapter(uint64_t a1, int a2)
{
  result = malloc_type_malloc(0x28uLL, 0x1080040F159ABB6uLL);
  if (!result)
  {
    cmph_io_nlnkfile_adapter_cold_1();
  }

  *result = a1;
  result[2] = a2;
  *(result + 2) = key_nlfile_read;
  *(result + 3) = key_nlfile_dispose;
  *(result + 4) = key_nlfile_rewind;
  return result;
}

void *cmph_io_byte_vector_adapter(uint64_t a1, int a2)
{
  result = cmph_io_vector_new(a1, a2);
  result[2] = key_byte_vector_read;
  result[3] = key_vector_dispose;
  result[4] = key_vector_rewind;
  return result;
}

_DWORD *cmph_io_vector_new(uint64_t a1, int a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x1080040F159ABB6uLL);
  v5 = malloc_type_malloc(0x10uLL, 0x10800409227ACB4uLL);
  if (!v4)
  {
    cmph_io_vector_new_cold_2();
  }

  if (!v5)
  {
    cmph_io_vector_new_cold_1();
  }

  *v5 = a1;
  v5[2] = 0;
  *v4 = v5;
  v4[2] = a2;
  return v4;
}

uint64_t key_byte_vector_read(uint64_t *a1, void *a2, unsigned int *a3)
{
  v6 = *a1;
  v7 = **(*a1 + 8 * *(a1 + 2));
  *a3 = v7;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  *a2 = v8;
  memcpy(v8, (*(v6 + 8 * *(a1 + 2)) + 4), v7);
  ++*(a1 + 2);
  return *a3;
}

void cmph_io_byte_vector_adapter_destroy(void **a1)
{
  free(*a1);

  free(a1);
}

_DWORD *cmph_io_struct_vector_adapter(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v10 = malloc_type_malloc(0x28uLL, 0x1080040F159ABB6uLL);
  v11 = malloc_type_malloc(0x18uLL, 0x1080040468F112EuLL);
  if (!v10)
  {
    cmph_io_struct_vector_adapter_cold_2();
  }

  if (!v11)
  {
    cmph_io_struct_vector_adapter_cold_1();
  }

  *v11 = a1;
  v11[2] = 0;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  *v10 = v11;
  v10[2] = a5;
  *(v10 + 2) = key_struct_vector_read;
  *(v10 + 3) = key_vector_dispose;
  *(v10 + 4) = key_struct_vector_rewind;
  return v10;
}

uint64_t key_struct_vector_read(uint64_t *a1, void *a2, unsigned int *a3)
{
  v6 = *a1;
  v7 = *(a1 + 5);
  *a3 = v7;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  *a2 = v8;
  memcpy(v8, (v6 + *(a1 + 4) + (*(a1 + 3) * *(a1 + 2))), v7);
  ++*(a1 + 2);
  return *a3;
}

void cmph_io_struct_vector_adapter_destroy(void **a1)
{
  free(*a1);

  free(a1);
}

void *cmph_io_vector_adapter(uint64_t a1, int a2)
{
  result = cmph_io_vector_new(a1, a2);
  result[2] = key_vector_read;
  result[3] = key_vector_dispose;
  result[4] = key_vector_rewind;
  return result;
}

uint64_t key_vector_read(uint64_t *a1, char **a2, unsigned int *a3)
{
  v6 = *a1;
  v7 = strlen(*(*a1 + 8 * *(a1 + 2)));
  *a3 = v7;
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  *a2 = v8;
  strcpy(v8, *(v6 + 8 * *(a1 + 2)));
  ++*(a1 + 2);
  return *a3;
}

void cmph_io_vector_adapter_destroy(void **a1)
{
  free(*a1);

  free(a1);
}

void *cmph_config_new(uint64_t a1)
{
  v1 = __config_new(a1);
  if (!v1)
  {
    cmph_config_new_cold_1();
  }

  v2 = v1;
  *v1 = 2;
  chm_config_new();
  v2[4] = v3;
  return v2;
}

void cmph_config_set_algo(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*a1 != a2)
  {
    if (v4 <= 3)
    {
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          chm_config_destroy(a1);
        }

        else
        {
          brz_config_destroy(a1);
        }
      }

      else if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_42;
        }

        bmz8_config_destroy(a1);
      }

      else
      {
        bmz_config_destroy(a1);
      }
    }

    else if (v4 <= 5)
    {
      if (v4 == 4)
      {
        fch_config_destroy(a1);
      }

      else
      {
        bdz_config_destroy(a1);
      }
    }

    else
    {
      switch(v4)
      {
        case 6:
          bdz_ph_config_destroy(a1);
          break;
        case 7:
          chd_ph_config_destroy(a1);
          break;
        case 8:
          chd_config_destroy(a1);
          break;
        default:
LABEL_42:
          cmph_config_set_algo_cold_2();
      }
    }

    if (a2 <= 3)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          chm_config_new();
        }

        else
        {
          v5 = brz_config_new();
        }

        goto LABEL_40;
      }

      if (!a2)
      {
        bmz_config_new();
        goto LABEL_40;
      }

      if (a2 == 1)
      {
        bmz8_config_new();
        goto LABEL_40;
      }
    }

    else
    {
      if (a2 <= 5)
      {
        if (a2 == 4)
        {
          fch_config_new();
        }

        else
        {
          bdz_config_new();
        }

        goto LABEL_40;
      }

      switch(a2)
      {
        case 6:
          bdz_ph_config_new();
          goto LABEL_40;
        case 7:
          chd_ph_config_new();
          goto LABEL_40;
        case 8:
          v5 = chd_config_new(a1);
LABEL_40:
          *(a1 + 32) = v5;
          goto LABEL_41;
      }
    }

    cmph_config_set_algo_cold_1();
  }

LABEL_41:
  *a1 = a2;
}

uint64_t cmph_config_set_tmp_dir(uint64_t result, char *__s)
{
  if (*result == 3)
  {
    return brz_config_set_tmp_dir(result, __s);
  }

  return result;
}

uint64_t cmph_config_set_mphf_fd(uint64_t result, uint64_t a2)
{
  if (*result == 3)
  {
    return brz_config_set_mphf_fd(result, a2);
  }

  return result;
}

uint64_t cmph_config_set_b(uint64_t result, int a2)
{
  v2 = *result;
  if (*result > 6)
  {
    if (v2 == 7)
    {
      return chd_ph_config_set_b(result, a2);
    }

    else if (v2 == 8)
    {
      return chd_config_set_b();
    }
  }

  else if (v2 == 3)
  {
    return brz_config_set_b(result, a2);
  }

  else if (v2 == 5)
  {
    return bdz_config_set_b(result, a2);
  }

  return result;
}

uint64_t cmph_config_set_keys_per_bin(uint64_t result, int a2)
{
  if (*result == 8)
  {
    return chd_config_set_keys_per_bin();
  }

  if (*result == 7)
  {
    return chd_ph_config_set_keys_per_bin(result, a2);
  }

  return result;
}

uint64_t cmph_config_set_memory_availability(uint64_t result, int a2)
{
  if (*result == 3)
  {
    return brz_config_set_memory_availability(result, a2);
  }

  return result;
}

void cmph_config_destroy(int *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (*a1 <= 3)
  {
    if (v2 <= 1)
    {
      if (!v2)
      {
        bmz_config_destroy(a1);
        goto LABEL_22;
      }

      if (v2 == 1)
      {
        bmz8_config_destroy(a1);
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    if (v2 == 2)
    {
      chm_config_destroy(a1);
    }

    else
    {
      brz_config_destroy(a1);
    }
  }

  else
  {
    if (v2 > 5)
    {
      switch(v2)
      {
        case 6:
          bdz_ph_config_destroy(a1);
          goto LABEL_22;
        case 7:
          chd_ph_config_destroy(a1);
          goto LABEL_22;
        case 8:
          chd_config_destroy(a1);
          goto LABEL_22;
      }

LABEL_25:
      cmph_config_destroy_cold_1();
    }

    if (v2 == 4)
    {
      fch_config_destroy(a1);
    }

    else
    {
      bdz_config_destroy(a1);
    }
  }

LABEL_22:

  __config_destroy(a1);
}

int *cmph_config_set_hashfuncs(int *result, int *a2)
{
  v2 = *result;
  if (*result <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        return chm_config_set_hashfuncs(result, a2);
      }

      else
      {
        return brz_config_set_hashfuncs(result, a2);
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        return bmz8_config_set_hashfuncs(result, a2);
      }
    }

    else
    {
      return bmz_config_set_hashfuncs(result, a2);
    }
  }

  else if (v2 <= 5)
  {
    if (v2 == 4)
    {
      return fch_config_set_hashfuncs(result, a2);
    }

    else
    {
      return bdz_config_set_hashfuncs(result, a2);
    }
  }

  else
  {
    switch(v2)
    {
      case 6:
        return bdz_ph_config_set_hashfuncs(result, a2);
      case 7:
        return chd_ph_config_set_hashfuncs(result, a2);
      case 8:
        return chd_config_set_hashfuncs();
    }
  }

  return result;
}

void *cmph_new(uint64_t a1, double a2, double a3, double a4)
{
  v5 = *(a1 + 24);
  v6 = *a1;
  if (*a1 <= 3)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v14 = *(a1 + 24);

        return chm_new(a1, v14);
      }

      else
      {
        if (v6 != 3)
        {
          goto LABEL_43;
        }

        if (v5 < 2.0)
        {
          v10 = 1;
        }

        else
        {
          v10 = 4;
        }

        brz_config_set_algo(a1, v10);
        v11.n128_f64[0] = v5;

        return brz_new(a1, v11);
      }
    }

    else if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_43;
      }

      v9 = *(a1 + 24);

      return bmz8_new(a1, v9);
    }

    else
    {
      v13 = *(a1 + 24);

      return bmz_new(a1, v13);
    }
  }

  else if (v6 <= 5)
  {
    if (v6 == 4)
    {
      v15 = *(a1 + 24);

      return fch_new(a1, v15);
    }

    else
    {
      if (v6 != 5)
      {
        goto LABEL_43;
      }

      v12 = *(a1 + 24);

      return bdz_new(a1, v12);
    }
  }

  else
  {
    switch(v6)
    {
      case 6:
        v16 = *(a1 + 24);

        return bdz_ph_new(a1, v16);
      case 7:
        v17 = *(a1 + 24);

        return chd_ph_new(a1, v17, a3, a4);
      case 8:
        v7 = *(a1 + 24);

        return chd_new(a1, v7);
      default:
LABEL_43:
        cmph_new_cold_1();
    }
  }
}

uint64_t cmph_dump(int *a1, FILE *a2)
{
  v3 = *a1;
  if (*a1 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {

        return chm_dump(a1, a2);
      }

      else
      {
        if (v3 != 3)
        {
          goto LABEL_40;
        }

        return brz_dump(a1, a2);
      }
    }

    else if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_40;
      }

      return bmz8_dump(a1, a2);
    }

    else
    {

      return bmz_dump(a1, a2);
    }
  }

  else if (v3 <= 5)
  {
    if (v3 == 4)
    {

      return fch_dump(a1, a2);
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_40;
      }

      return bdz_dump(a1, a2);
    }
  }

  else
  {
    switch(v3)
    {
      case 6:

        return bdz_ph_dump(a1, a2);
      case 7:

        return chd_ph_dump(a1, a2);
      case 8:

        return chd_dump(a1, a2);
      default:
LABEL_40:
        cmph_dump_cold_1();
    }
  }
}

void *cmph_load(FILE *a1)
{
  v2 = __cmph_load(a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    if (*v2 <= 3)
    {
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          chm_load(a1, v2);
          return v3;
        }

        if (v4 == 3)
        {
          brz_load(a1, v2);
          return v3;
        }
      }

      else
      {
        if (!v4)
        {
          bmz_load(a1, v2);
          return v3;
        }

        if (v4 == 1)
        {
          bmz8_load(a1, v2);
          return v3;
        }
      }
    }

    else if (v4 <= 5)
    {
      if (v4 == 4)
      {
        fch_load(a1, v2);
        return v3;
      }

      if (v4 == 5)
      {
        bdz_load(a1, v2);
        return v3;
      }
    }

    else
    {
      switch(v4)
      {
        case 6:
          bdz_ph_load(a1, v2);
          return v3;
        case 7:
          chd_ph_load(a1, v2);
          return v3;
        case 8:
          chd_load(a1, v2);
          return v3;
      }
    }

    cmph_load_cold_1();
  }

  return v3;
}

unint64_t cmph_search(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (*a1 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {

        return chm_search(a1, a2, a3);
      }

      else
      {
        if (v3 != 3)
        {
          goto LABEL_38;
        }

        return brz_search(a1, a2, a3);
      }
    }

    else
    {
      if (v3)
      {
        if (v3 == 1)
        {
          return bmz8_search(a1, a2, a3);
        }

        goto LABEL_38;
      }

      return bmz_search(a1, a2, a3);
    }
  }

  else if (v3 <= 5)
  {
    if (v3 == 4)
    {

      return fch_search(a1, a2, a3);
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_38;
      }

      return bdz_search(a1, a2, a3);
    }
  }

  else
  {
    switch(v3)
    {
      case 6:

        return bdz_ph_search(a1, a2, a3);
      case 7:

        return chd_ph_search(a1, a2, a3);
      case 8:

        return chd_search(a1, a2, a3);
      default:
LABEL_38:
        cmph_search_cold_1();
    }
  }
}

void cmph_destroy(void *a1)
{
  v2 = *a1;
  if (*a1 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {

        chm_destroy(a1);
      }

      else
      {
        if (v2 != 3)
        {
          goto LABEL_40;
        }

        brz_destroy(a1);
      }
    }

    else if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_40;
      }

      bmz8_destroy(a1);
    }

    else
    {

      bmz_destroy(a1);
    }
  }

  else if (v2 <= 5)
  {
    if (v2 == 4)
    {

      fch_destroy(a1);
    }

    else
    {
      if (v2 != 5)
      {
        goto LABEL_40;
      }

      bdz_destroy(a1);
    }
  }

  else
  {
    switch(v2)
    {
      case 6:

        bdz_ph_destroy(a1);
        break;
      case 7:

        chd_ph_destroy(a1);
        break;
      case 8:

        chd_destroy(a1);
        return;
      default:
LABEL_40:
        cmph_destroy_cold_1();
    }
  }
}

void cmph_pack(int *a1, int *a2)
{
  v3 = *a1;
  *a2 = *a1;
  v4 = a2 + 1;
  if (v3 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {

        chm_pack(a1, v4);
      }

      else
      {

        brz_pack(a1, v4);
      }
    }

    else if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_38;
      }

      bmz8_pack(a1, v4);
    }

    else
    {

      bmz_pack(a1, v4);
    }
  }

  else if (v3 <= 5)
  {
    if (v3 == 4)
    {

      fch_pack(a1, v4);
    }

    else
    {

      bdz_pack(a1, v4);
    }
  }

  else
  {
    switch(v3)
    {
      case 6:

        bdz_ph_pack(a1, v4);
        break;
      case 7:

        chd_ph_pack(a1, v4);
        break;
      case 8:

        chd_pack(a1, v4);
        return;
      default:
LABEL_38:
        cmph_pack_cold_1();
    }
  }
}

uint64_t cmph_packed_size(int *a1)
{
  v2 = *a1;
  if (*a1 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {

        return chm_packed_size(a1);
      }

      else
      {
        if (v2 != 3)
        {
          goto LABEL_40;
        }

        return brz_packed_size(a1);
      }
    }

    else if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_40;
      }

      return bmz8_packed_size(a1);
    }

    else
    {

      return bmz_packed_size(a1);
    }
  }

  else if (v2 <= 5)
  {
    if (v2 == 4)
    {

      return fch_packed_size(a1);
    }

    else
    {
      if (v2 != 5)
      {
        goto LABEL_40;
      }

      return bdz_packed_size(a1);
    }
  }

  else
  {
    switch(v2)
    {
      case 6:

        return bdz_ph_packed_size(a1);
      case 7:

        return chd_ph_packed_size(a1);
      case 8:

        return chd_packed_size(a1);
      default:
LABEL_40:
        cmph_packed_size_cold_1();
    }
  }
}

uint64_t cmph_search_packed(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v3 = *a1;
  if (*a1 <= 3)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v9 = a1 + 1;

        return chm_search_packed(v9, a2, a3);
      }

      else
      {
        if (v3 != 3)
        {
          goto LABEL_38;
        }

        v6 = a1 + 1;

        return brz_search_packed(v6, a2, a3);
      }
    }

    else
    {
      if (v3)
      {
        if (v3 == 1)
        {
          return bmz8_search_packed(a1 + 1, a2, a3);
        }

        goto LABEL_38;
      }

      v8 = a1 + 1;

      return bmz_search_packed(v8, a2, a3);
    }
  }

  else if (v3 <= 5)
  {
    if (v3 == 4)
    {
      v10 = a1 + 1;

      return fch_search_packed(v10, a2, a3);
    }

    else
    {
      if (v3 != 5)
      {
        goto LABEL_38;
      }

      v7 = a1 + 1;

      return bdz_search_packed(v7, a2, a3);
    }
  }

  else
  {
    switch(v3)
    {
      case 6:
        v11 = a1 + 1;

        return bdz_ph_search_packed(v11, a2, a3);
      case 7:
        v12 = a1 + 1;

        return chd_ph_search_packed(v12, a2, a3);
      case 8:
        v4 = (a1 + 1);

        return chd_search_packed(v4);
      default:
LABEL_38:
        cmph_search_packed_cold_1();
    }
  }
}

void *__config_new(uint64_t a1)
{
  result = malloc_type_malloc(0x28uLL, 0x10A0040FEEBFC31uLL);
  if (result)
  {
    result[2] = 0;
    result[3] = 0;
    *result = 0;
    result[1] = a1;
    result[4] = 0;
  }

  return result;
}

size_t __cmph_dump(unsigned int *a1, FILE *a2)
{
  v3 = a1 + 1;
  v4 = cmph_names[*a1];
  v5 = strlen(v4);
  fwrite(v4, v5 + 1, 1uLL, a2);

  return fwrite(v3, 4uLL, 1uLL, a2);
}

void *__cmph_load(FILE *__stream)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = __ptr;
  do
  {
    if (fread(v2, 1uLL, 1uLL, __stream) != 1)
    {
      goto LABEL_9;
    }
  }

  while (*v2++);
  v4 = 0;
  v5 = 9;
  do
  {
    if (!strcmp(__ptr, cmph_names[v4]))
    {
      v5 = v4;
    }

    ++v4;
  }

  while (v4 != 9);
  if (v5 == 9)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_11;
  }

  v6 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v6 = v5;
  fread(v6 + 4, 4uLL, 1uLL, __stream);
  v6[2] = 0;
LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

void *compressed_rank_init(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = select_init((a1 + 16));
  *(a1 + 40) = 0;
  return result;
}

void compressed_rank_destroy(uint64_t a1)
{
  free(*(a1 + 40));
  *(a1 + 40) = 0;

  select_destroy(a1 + 16);
}

void compressed_rank_generate(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 4) = a3;
  v5 = *(a2 + 4 * (a3 - 1));
  *a1 = v5;
  v6 = v5 / a3;
  if (v5 / a3 < 2)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    do
    {
      ++v7;
      v8 = v6 > 3;
      v6 >>= 1;
    }

    while (v8);
  }

  *(a1 + 8) = v7;
  v9 = malloc_type_calloc(v5 >> v7, 4uLL, 0x100004052888210uLL);
  v10 = malloc_type_calloc((*(a1 + 8) * *(a1 + 4) + 31) >> 5, 4uLL, 0x100004052888210uLL);
  *(a1 + 40) = v10;
  v11 = *(a1 + 8);
  if (*(a1 + 4))
  {
    v12 = 0;
    v13 = -1 << v11;
    v14 = ~v13;
    do
    {
      v15 = *(a2 + 4 * v12) & v14;
      v16 = *(a1 + 8);
      v17 = 32 - ((v16 * v12) & 0x1F);
      v18 = &v10[4 * ((v16 * v12) >> 5)];
      *v18 = *v18 & ~(v14 << (v16 * v12)) | (v15 << (v16 * v12));
      if (v17 < v16)
      {
        v18[1] = v18[1] & (v13 >> v17) | (v15 >> v17);
      }

      ++v12;
      v19 = *(a1 + 4);
    }

    while (v12 < v19);
    v11 = *(a1 + 8);
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (*a1 >> v11)
  {
    v20 = 0;
    v21 = 1;
    do
    {
      do
      {
        v22 = *(a2 + 4 * v20++) >> v11;
      }

      while (v21 > v22);
      v9[v21++ - 1] = --v20;
      v11 = *(a1 + 8);
      v23 = *a1 >> v11;
    }

    while (v21 <= v23);
    LODWORD(v19) = *(a1 + 4);
  }

  else
  {
    v23 = 0;
  }

  select_generate(a1 + 16, v9, v23, v19);

  free(v9);
}

uint64_t compressed_rank_query(uint64_t a1, unsigned int a2)
{
  if (*a1 < a2)
  {
    return *(a1 + 4);
  }

  v5 = *(a1 + 8);
  v6 = a2 >> v5;
  if (a2 >> v5)
  {
    v7 = select_query(a1 + 16, v6 - 1) + 1;
    result = v7 - v6;
  }

  else
  {
    v7 = 0;
    result = 0;
  }

  v8 = *(a1 + 24);
  if ((bitmask32_1[v7 & 0x1F] & *(v8 + 4 * (v7 >> 5))) == 0)
  {
    v9 = *(a1 + 8);
    v10 = result * v9;
    v11 = v7 + 1;
    do
    {
      v12 = 32 - (v10 & 0x1F);
      v13 = (*(a1 + 40) + 4 * (v10 >> 5));
      v14 = *v13 >> v10;
      if (v12 < v9)
      {
        v14 |= v13[1] << v12;
      }

      if ((v14 & ~(-1 << v5)) >= (a2 & ~(-1 << v5)))
      {
        break;
      }

      result = (result + 1);
      v15 = *(v8 + 4 * (v11 >> 5));
      v16 = bitmask32_1[v11 & 0x1F];
      v10 += v9;
      ++v11;
    }

    while ((v16 & v15) == 0);
  }

  return result;
}

_DWORD *compressed_rank_dump(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = select_packed_size((a1 + 16));
  v7 = ((*(a1 + 8) * *(a1 + 4) + 31) >> 3) & 0x1FFFFFFC;
  memset(__n, 0, sizeof(__n));
  v8 = (v6 + v7 + 16);
  *a3 = v8;
  result = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
  *a2 = result;
  if (result)
  {
    *result = *a1;
    *(*a2 + 4) = *(a1 + 4);
    *(*a2 + 8) = *(a1 + 8);
    select_dump((a1 + 16), &__n[1], __n);
    v10 = __n[0];
    *(*a2 + 12) = __n[0];
    v11 = *&__n[1];
    memcpy((*a2 + 16), *&__n[1], v10);
    free(v11);
    return memcpy((*a2 + (v10 + 16)), *(a1 + 40), v7);
  }

  else
  {
    *a3 = -1;
  }

  return result;
}

void *compressed_rank_load(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  *(a1 + 4) = a2[1];
  *(a1 + 8) = a2[2];
  v4 = a2[3];
  select_load(a1 + 16, a2 + 4);
  v5 = *(a1 + 40);
  if (v5)
  {
    free(v5);
  }

  v6 = (v4 + 16);
  v7 = (*(a1 + 8) * *(a1 + 4) + 31) >> 5;
  v8 = malloc_type_calloc(v7, 4uLL, 0x100004052888210uLL);
  *(a1 + 40) = v8;

  return memcpy(v8, a2 + v6, 4 * v7);
}

void compressed_rank_pack(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      memset(__n, 0, sizeof(__n));
      compressed_rank_dump(a1, &__n[1], __n);
      v3 = *&__n[1];
      memcpy(a2, *&__n[1], __n[0]);
      free(v3);
    }
  }
}

uint64_t compressed_rank_query_packed(unsigned int *a1, unsigned int a2)
{
  if (*a1 < a2)
  {
    return a1[1];
  }

  v4 = a1 + 4;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1 + 6;
  v8 = a2 >> v5;
  if (a2 >> v5)
  {
    v9 = select_query_packed(a1 + 4, v8 - 1) + 1;
    result = v9 - v8;
  }

  else
  {
    v9 = 0;
    result = 0;
  }

  if ((bitmask32_1[v9 & 0x1F] & v7[v9 >> 5]) == 0)
  {
    v10 = result * v5;
    v11 = v9 + 1;
    do
    {
      v12 = 32 - (v10 & 0x1F);
      v13 = (&v4[v10 >> 5] + (v6 & 0xFFFFFFFC));
      v14 = *v13 >> v10;
      if (v12 < v5)
      {
        v14 |= v13[1] << v12;
      }

      if ((v14 & ~(-1 << v5)) >= (a2 & ~(-1 << v5)))
      {
        break;
      }

      result = (result + 1);
      v15 = v7[v11 >> 5];
      v16 = bitmask32_1[v11 & 0x1F];
      v10 += v5;
      ++v11;
    }

    while ((v16 & v15) == 0);
  }

  return result;
}

void *compressed_seq_init(uint64_t a1)
{
  result = select_init((a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

void compressed_seq_destroy(uint64_t a1)
{
  free(*(a1 + 48));
  *(a1 + 48) = 0;
  free(*(a1 + 40));
  *(a1 + 40) = 0;

  select_destroy(a1 + 16);
}

void compressed_seq_generate(unsigned int *a1, uint64_t a2, size_t count)
{
  v3 = count;
  v6 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  v7 = v6;
  *a1 = v3;
  a1[2] = 0;
  if (v3)
  {
    v8 = 0;
    do
    {
      v9 = *(a2 + 4 * v8);
      if (v9)
      {
        v10 = v9 + 1;
        if ((v9 + 1) < 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          do
          {
            ++v11;
            v12 = v10 > 3;
            v10 >>= 1;
          }

          while (v12);
        }

        v6[v8] = v11;
        a1[2] += v11;
      }

      else
      {
        v6[v8] = 0;
      }

      ++v8;
    }

    while (v8 < *a1);
  }

  v13 = *(a1 + 6);
  if (v13)
  {
    free(v13);
  }

  v14 = malloc_type_calloc((a1[2] + 31) >> 5, 4uLL, 0x100004052888210uLL);
  *(a1 + 6) = v14;
  a1[2] = 0;
  v15 = *a1;
  if (*a1)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *(a2 + 4 * v17);
      if (v18)
      {
        v19 = v7[v17];
        v20 = v18 + (-1 << v19) + 1;
        v21 = 32 - (v16 & 0x1F);
        v22 = &v14[4 * (v16 >> 5)];
        *v22 = *v22 & ~(~(-1 << v19) << v16) | (v20 << v16);
        if (v21 < v19)
        {
          v22[1] = v22[1] & (-1 << v19 >> v21) | (v20 >> v21);
        }

        v16 = a1[2] + v7[v17];
        a1[2] = v16;
        v15 = *a1;
      }

      ++v17;
    }

    while (v17 < v15);
  }

  else
  {
    v16 = 0;
  }

  v23 = v16 / v15;
  if (v16 / v15 < 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = 0;
    do
    {
      ++v24;
      v12 = v23 > 3;
      v23 >>= 1;
    }

    while (v12);
  }

  a1[1] = v24;
  v25 = *(a1 + 5);
  if (v25)
  {
    free(v25);
    v15 = *a1;
    v24 = a1[1];
  }

  v26 = malloc_type_calloc((v24 * v15 + 31) >> 5, 4uLL, 0x100004052888210uLL);
  *(a1 + 5) = v26;
  a1[2] = 0;
  if (*a1)
  {
    v27 = 0;
    v28 = -1 << a1[1];
    v29 = ~v28;
    do
    {
      v30 = a1[1];
      v31 = a1[2] + v7[v27];
      a1[2] = v31;
      v32 = v31 & v29;
      v33 = 32 - ((v30 * v27) & 0x1F);
      v34 = &v26[4 * ((v30 * v27) >> 5)];
      *v34 = *v34 & ~(v29 << (v30 * v27)) | (v32 << (v30 * v27));
      if (v33 < v30)
      {
        v34[1] = v34[1] & (v28 >> v33) | (v32 >> v33);
      }

      v7[v27++] = a1[2] >> a1[1];
    }

    while (v27 < *a1);
  }

  select_init(a1 + 2);
  select_generate((a1 + 4), v7, *a1, a1[2] >> a1[1]);

  free(v7);
}

uint64_t compressed_seq_query(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    compressed_seq_query_cold_1();
  }

  v4 = ~(-1 << *(a1 + 4));
  if (a2)
  {
    v5 = a2 - 1;
    v6 = select_query(a1 + 16, a2 - 1);
    v7 = *(a1 + 4);
    v8 = 32 - ((v7 * v5) & 0x1F);
    v9 = (*(a1 + 40) + 4 * ((v7 * v5) >> 5));
    v10 = *v9 >> (v7 * v5);
    if (v8 < v7)
    {
      v10 |= v9[1] << v8;
    }

    v11 = (v10 & v4) + ((v6 - v5) << v7);
    query = select_next_query(a1 + 16, v6);
  }

  else
  {
    query = select_query(a1 + 16, 0);
    v11 = 0;
  }

  v13 = *(a1 + 4);
  v14 = 32 - ((v13 * a2) & 0x1F);
  v15 = (*(a1 + 40) + 4 * ((v13 * a2) >> 5));
  v16 = *v15 >> (v13 * a2);
  if (v14 < v13)
  {
    v16 |= v15[1] << v14;
  }

  v17 = (v16 & v4) + ((query - a2) << v13) - v11;
  if (!v17)
  {
    return 0;
  }

  v19 = 32 - (v11 & 0x1F);
  v20 = (*(a1 + 48) + 4 * (v11 >> 5));
  v21 = *v20 >> v11;
  if (v19 < v17)
  {
    v21 |= v20[1] << v19;
  }

  return (v21 & ~(-1 << v17)) + ~(-1 << v17);
}

_DWORD *compressed_seq_dump(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = select_packed_size((a1 + 16));
  v7 = ((*(a1 + 4) * *a1 + 31) >> 3) & 0x1FFFFFFC;
  v8 = ((*(a1 + 8) + 31) >> 3) & 0x1FFFFFFC;
  memset(__n, 0, sizeof(__n));
  v9 = (v6 + v8 + v7 + 16);
  *a3 = v9;
  result = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
  *a2 = result;
  if (result)
  {
    *result = *a1;
    *(*a2 + 4) = *(a1 + 4);
    *(*a2 + 8) = *(a1 + 8);
    select_dump((a1 + 16), &__n[1], __n);
    v11 = __n[0];
    *(*a2 + 12) = __n[0];
    v12 = *&__n[1];
    memcpy((*a2 + 16), *&__n[1], v11);
    v13 = (v11 + 16);
    free(v12);
    memcpy((*a2 + v13), *(a1 + 40), v7);
    return memcpy((*a2 + (v13 + v7)), *(a1 + 48), v8);
  }

  else
  {
    *a3 = -1;
  }

  return result;
}

void *compressed_seq_load(uint64_t a1, _DWORD *a2)
{
  *a1 = *a2;
  *(a1 + 4) = a2[1];
  *(a1 + 8) = a2[2];
  v4 = a2[3];
  select_load(a1 + 16, a2 + 4);
  v5 = v4 + 16;
  v6 = *(a1 + 40);
  if (v6)
  {
    free(v6);
  }

  v7 = (*(a1 + 4) * *a1 + 31) >> 5;
  v8 = malloc_type_calloc(v7, 4uLL, 0x100004052888210uLL);
  *(a1 + 40) = v8;
  v9 = 4 * v7;
  memcpy(v8, a2 + v5, v9);
  v10 = *(a1 + 8);
  v11 = *(a1 + 48);
  if (v11)
  {
    free(v11);
  }

  v12 = (v10 + 31) >> 5;
  v13 = malloc_type_calloc(v12, 4uLL, 0x100004052888210uLL);
  *(a1 + 48) = v13;

  return memcpy(v13, a2 + v9 + v5, (4 * v12));
}

void compressed_seq_pack(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      memset(__n, 0, sizeof(__n));
      compressed_seq_dump(a1, &__n[1], __n);
      v3 = *&__n[1];
      memcpy(a2, *&__n[1], __n[0]);
      free(v3);
    }
  }
}

uint64_t compressed_seq_query_packed(int *a1, int a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (a1 + 4);
  v6 = a1 + (a1[3] & 0xFFFFFFFC) + 16;
  v7 = ~(-1 << v4);
  if (a2)
  {
    v8 = a2 - 1;
    packed = select_query_packed(a1 + 4, a2 - 1);
    v10 = 32 - ((v4 * v8) & 0x1F);
    v11 = (v6 + 4 * ((v4 * v8) >> 5));
    v12 = *v11 >> (v4 * v8);
    if (v10 < v4)
    {
      v12 |= v11[1] << v10;
    }

    v13 = (v12 & v7) + ((packed - v8) << v4);
    query_packed = select_next_query_packed(v5, packed);
  }

  else
  {
    query_packed = select_query_packed(a1 + 4, 0);
    v13 = 0;
  }

  v15 = 32 - ((v4 * a2) & 0x1F);
  v16 = (v6 + 4 * ((v4 * a2) >> 5));
  v17 = *v16 >> (v4 * a2);
  if (v15 < v4)
  {
    v17 |= v16[1] << v15;
  }

  v18 = (v17 & v7) + ((query_packed - a2) << v4) - v13;
  if (!v18)
  {
    return 0;
  }

  v20 = 32 - (v13 & 0x1F);
  v21 = (v6 + 4 * ((v4 * v3 + 31) >> 5) + 4 * (v13 >> 5));
  v22 = *v21 >> v13;
  if (v20 < v18)
  {
    v22 |= v21[1] << v20;
  }

  return (v22 & ~(-1 << v18)) + ~(-1 << v18);
}

double fch_config_new()
{
  v0 = malloc_type_malloc(0x48uLL, 0x1030040D598EF6FuLL);
  if (v0)
  {
    v0[8] = 0;
    result = 0.0;
    *(v0 + 2) = 0u;
    *(v0 + 3) = 0u;
    *v0 = 0u;
    *(v0 + 1) = 0u;
  }

  return result;
}

uint64_t fch_config_set_hashfuncs(uint64_t result, _DWORD *a2)
{
  if (*a2 != 1)
  {
    v2 = *(result + 32);
    *v2 = *a2;
    v3 = a2[1];
    if (v3 != 1)
    {
      v2[1] = v3;
    }
  }

  return result;
}

uint64_t mixh10h11h12(unsigned int a1, unsigned int a2, double a3, double a4)
{
  v4 = a4;
  if (a2 < a3)
  {
    return a2 % v4;
  }

  result = a2 % a1;
  if (result < a4)
  {
    return result + v4;
  }

  return result;
}

void *fch_new(uint64_t a1, double a2)
{
  v2 = a1;
  v3 = 0;
  indexes_sorted_by_size = 0;
  v5 = *(a1 + 32);
  *(v5 + 8) = *(*(a1 + 8) + 8);
  if (a2 <= 2.0)
  {
    a2 = 2.6;
  }

  *(v5 + 16) = a2;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  v6 = 100;
  do
  {
    if (*(v2 + 16))
    {
      fprintf(*MEMORY[0x29EDCA610], "Entering mapping step for mph creation of %u keys\n", *(v5 + 8));
    }

    if (v3)
    {
      fch_buckets_destroy(v3);
    }

    v7 = *(v2 + 32);
    v8 = *(v7 + 56);
    if (v8)
    {
      hash_state_destroy(v8);
    }

    *(v7 + 56) = hash_state_new(*v7, *(v7 + 8));
    LODWORD(v9) = *(v7 + 8);
    v75 = v9;
    v10 = vcvtpd_u64_f64(*(v7 + 16) * v9 / (log(v9) / 0.693147181 + 1.0));
    *(v7 + 24) = v10;
    v11.f64[0] = v75;
    v11.f64[1] = v10;
    *(v7 + 32) = vrndpq_f64(vmulq_f64(v11, xmmword_2985D1B00));
    v3 = fch_buckets_new(v10);
    (*(*(v2 + 8) + 32))(**(v2 + 8));
    if (*(v7 + 8))
    {
      v12 = 0;
      do
      {
        v78[0] = 0;
        v77 = 0;
        (*(*(v2 + 8) + 16))(**(v2 + 8), &v77, v78);
        v13 = hash(*(v7 + 56), v77, v78[0]) % *(v7 + 8);
        v14 = *(v7 + 40);
        v15 = v14;
        if (*(v7 + 32) <= v13)
        {
          v16 = v13 % *(v7 + 24);
          if (v14 > v16)
          {
            v16 += v15;
          }
        }

        else
        {
          v16 = v13 % v15;
        }

        fch_buckets_insert(v3, v16, v77, v78[0]);
        ++v12;
      }

      while (v12 < *(v7 + 8));
    }

    if (*(v2 + 16))
    {
      fwrite("Starting ordering step\n", 0x17uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    if (indexes_sorted_by_size)
    {
      free(indexes_sorted_by_size);
    }

    v66 = v6;
    indexes_sorted_by_size = fch_buckets_get_indexes_sorted_by_size(v3);
    if (*(v2 + 16))
    {
      fwrite("Starting searching step.\n", 0x19uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }

    v17 = malloc_type_calloc(*(v5 + 8), 4uLL, 0x100004052888210uLL);
    v69 = malloc_type_calloc(*(v5 + 8), 4uLL, 0x100004052888210uLL);
    nbuckets = fch_buckets_get_nbuckets(v3);
    v18 = *(v5 + 48);
    if (v18)
    {
      free(v18);
    }

    *(v5 + 48) = malloc_type_calloc(*(v5 + 24), 4uLL, 0x100004052888210uLL);
    if (*(v5 + 8))
    {
      v19 = 0;
      do
      {
        v17[v19] = v19;
        ++v19;
        v20 = *(v5 + 8);
      }

      while (v19 < v20);
      if (v20)
      {
        v21 = v17;
        v22 = *(v5 + 8);
        do
        {
          v23 = rand();
          v24 = *v21;
          *v21++ = v17[v23 % v20];
          v17[v23 % v20] = v24;
          --v22;
        }

        while (v22);
        if (*(v5 + 8))
        {
          v25 = 0;
          do
          {
            v69[v17[v25]] = v25;
            ++v25;
          }

          while (v25 < *(v5 + 8));
        }
      }
    }

    v68 = 0;
    v26 = 0;
    v76 = v3;
    while (1)
    {
      v71 = v26;
      v27 = *(v5 + 64);
      if (v27)
      {
        hash_state_destroy(v27);
      }

      *(v5 + 64) = hash_state_new(*(v5 + 4), *(v5 + 8));
      v28 = malloc_type_calloc(*(v5 + 8), 1uLL, 0x100004077774924uLL);
      v29 = fch_buckets_get_nbuckets(v3);
      if (v29)
      {
        v30 = 0;
        v73 = v29;
        while (1)
        {
          size = fch_buckets_get_size(v76, indexes_sorted_by_size[v30]);
          bzero(v28, *(v5 + 8));
          if (size)
          {
            break;
          }

LABEL_43:
          if (++v30 == v73)
          {
            goto LABEL_44;
          }
        }

        v32 = 0;
        while (1)
        {
          key = fch_buckets_get_key(v76, indexes_sorted_by_size[v30], v32);
          keylength = fch_buckets_get_keylength(v76, indexes_sorted_by_size[v30], v32);
          v35 = hash(*(v5 + 64), key, keylength) % *(v5 + 8);
          if (*(v28 + v35))
          {
            break;
          }

          *(v28 + v35) = 1;
          if (size == ++v32)
          {
            goto LABEL_43;
          }
        }

        free(v28);
        v26 = v71 + 1;
        v3 = v76;
        goto LABEL_61;
      }

LABEL_44:
      free(v28);
      if (!nbuckets)
      {
        break;
      }

      v36 = 0;
      v37 = 0;
      ++v68;
      v3 = v76;
      while (2)
      {
        v38 = fch_buckets_get_size(v3, indexes_sorted_by_size[v36]);
        if (!v38)
        {
          goto LABEL_65;
        }

        if (*(v5 + 8) != v37)
        {
          v39 = v38;
          v40 = 0;
          LODWORD(v41) = indexes_sorted_by_size[v36];
          v72 = v38 - 1;
LABEL_49:
          v74 = v37;
          v42 = fch_buckets_get_key(v3, v41, 0);
          v43 = fch_buckets_get_keylength(v3, indexes_sorted_by_size[v36], 0);
          v44 = v42;
          v45 = v74;
          v46 = hash(*(v5 + 64), v44, v43);
          v47 = 0;
          v70 = v40;
          v48 = v5;
          *(*(v5 + 48) + 4 * indexes_sorted_by_size[v36]) = (*(v5 + 8) + v17[v40 + v74] + v46 / *(v5 + 8) * *(v5 + 8) - v46) % *(v5 + 8);
          do
          {
            v49 = v45 + v47;
            v50 = fch_buckets_get_key(v3, indexes_sorted_by_size[v36], v47);
            v51 = fch_buckets_get_keylength(v3, indexes_sorted_by_size[v36], v47);
            v52 = hash(*(v48 + 64), v50, v51);
            v53 = *(v48 + 8);
            v41 = indexes_sorted_by_size[v36];
            v54 = v69[(*(*(v48 + 48) + 4 * v41) + v52 % v53) % v53];
            if (v54 < v49)
            {
              ++v40;
              v37 = v74;
              v5 = v48;
              v3 = v76;
              if (v70 + 1 < v53 - v74)
              {
                goto LABEL_49;
              }

              v26 = 0;
              goto LABEL_61;
            }

            v55 = v17[v54];
            v17[v54] = v17[v49];
            v17[v49] = v55;
            v69[v17[v54]] = v54;
            v69[v17[v49]] = v49;
            v56 = v47 + 1;
            v45 = v74;
            if (v72 == v47)
            {
              v57 = 0;
            }

            else
            {
              v57 = v47 + 1;
            }

            ++v47;
            v3 = v76;
          }

          while (v57 % v39);
          ++v36;
          v37 = v74 + v56;
          v5 = v48;
          if (v36 != nbuckets)
          {
            continue;
          }

LABEL_65:
          v58 = 0;
          goto LABEL_66;
        }

        break;
      }

      v26 = 0;
LABEL_61:
      v58 = 1;
      if (v68 > 9 || v26 >= 0x3E8)
      {
        goto LABEL_66;
      }
    }

    v58 = 0;
    v3 = v76;
LABEL_66:
    free(v69);
    free(v17);
    v6 = v66 - 1;
    v2 = a1;
  }

  while (v58 && v66 != 1);
  if (v3)
  {
    fch_buckets_destroy(v3);
  }

  if (indexes_sorted_by_size)
  {
    free(indexes_sorted_by_size);
  }

  if (v66 == 1)
  {
    return 0;
  }

  v59 = malloc_type_malloc(0x18uLL, 0x10A0040B7BF8CC9uLL);
  *v59 = *a1;
  v60 = malloc_type_malloc(0x40uLL, 0x1030040C682B652uLL);
  v62 = *(v5 + 32);
  v61 = *(v5 + 48);
  *(v5 + 48) = 0;
  *(v60 + 40) = v61;
  *(v60 + 7) = *(v5 + 64);
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v60 + 24) = v62;
  *(v60 + 4) = *(v5 + 24);
  *(v60 + 1) = *(v5 + 16);
  v63 = *(v5 + 8);
  *v60 = v63;
  v59[2] = v60;
  *(v59 + 1) = v63;
  if (*(a1 + 16))
  {
    fwrite("Successfully generated minimal perfect hash function\n", 0x35uLL, 1uLL, *MEMORY[0x29EDCA610]);
  }

  return v59;
}

uint64_t fch_dump(uint64_t a1, FILE *a2)
{
  v6 = 0;
  __ptr = 0;
  v3 = *(a1 + 16);
  __cmph_dump(a1, a2);
  hash_state_dump(*(v3 + 48), &v6, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v6, __ptr, 1uLL, a2);
  free(v6);
  hash_state_dump(*(v3 + 56), &v6, &__ptr);
  fwrite(&__ptr, 4uLL, 1uLL, a2);
  fwrite(v6, __ptr, 1uLL, a2);
  free(v6);
  fwrite(v3, 4uLL, 1uLL, a2);
  fwrite((v3 + 8), 8uLL, 1uLL, a2);
  fwrite((v3 + 16), 4uLL, 1uLL, a2);
  fwrite((v3 + 24), 8uLL, 1uLL, a2);
  fwrite((v3 + 32), 8uLL, 1uLL, a2);
  fwrite(*(v3 + 40), 4 * *(v3 + 16), 1uLL, a2);
  return 1;
}

size_t fch_load(FILE *a1, uint64_t a2)
{
  __ptr = 0;
  v4 = malloc_type_malloc(0x40uLL, 0x1030040C682B652uLL);
  *(a2 + 16) = v4;
  v4[6] = 0;
  fread(&__ptr, 4uLL, 1uLL, a1);
  v5 = __ptr;
  v6 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
  fread(v6, v5, 1uLL, a1);
  v4[6] = hash_state_load(v6);
  free(v6);
  *(a2 + 16) = v4;
  v4[7] = 0;
  fread(&__ptr, 4uLL, 1uLL, a1);
  v7 = __ptr;
  v8 = malloc_type_malloc(__ptr, 0x100004077774924uLL);
  fread(v8, v7, 1uLL, a1);
  v4[7] = hash_state_load(v8);
  free(v8);
  fread(v4, 4uLL, 1uLL, a1);
  fread(v4 + 1, 8uLL, 1uLL, a1);
  fread(v4 + 2, 4uLL, 1uLL, a1);
  fread(v4 + 3, 8uLL, 1uLL, a1);
  fread(v4 + 4, 8uLL, 1uLL, a1);
  v9 = malloc_type_malloc(4 * *(v4 + 4), 0x100004052888210uLL);
  v4[5] = v9;
  v10 = 4 * *(v4 + 4);

  return fread(v9, v10, 1uLL, a1);
}

uint64_t fch_search(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = *(a1 + 16);
  v6 = hash(*(v5 + 48), a2, a3) % *v5;
  v7 = hash(*(v5 + 56), a2, a3);
  v8 = *(v5 + 32);
  v9 = v8;
  if (*(v5 + 24) <= v6)
  {
    v10 = v6 % *(v5 + 16);
    if (v8 > v10)
    {
      v10 += v9;
    }
  }

  else
  {
    v10 = v6 % v9;
  }

  return (*(*(v5 + 40) + 4 * v10) + v7 % *v5) % *v5;
}

void fch_destroy(void *a1)
{
  v2 = a1[2];
  free(*(v2 + 40));
  hash_state_destroy(*(v2 + 48));
  hash_state_destroy(*(v2 + 56));
  free(v2);

  free(a1);
}

void *fch_pack(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  type = hash_get_type(*(v3 + 48));
  *a2++ = type;
  hash_state_pack(*(v3 + 48), a2);
  v5 = (a2 + hash_state_packed_size(type));
  v6 = hash_get_type(*(v3 + 56));
  *v5++ = v6;
  hash_state_pack(*(v3 + 56), v5);
  v7 = v5 + hash_state_packed_size(v6);
  *v7 = *v3;
  v8 = *(v3 + 16);
  *(v7 + 1) = v8;
  *(v7 + 8) = vcvtq_u64_f64(*(v3 + 24));
  v9 = *(v3 + 40);

  return memcpy(v7 + 24, v9, 4 * v8);
}

uint64_t fch_packed_size(uint64_t a1)
{
  v1 = *(a1 + 16);
  type = hash_get_type(*(v1 + 48));
  v3 = hash_get_type(*(v1 + 56));
  v4 = hash_state_packed_size(type);
  return v4 + hash_state_packed_size(v3) + 4 * *(v1 + 16) + 36;
}

uint64_t fch_search_packed(int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v5 = (a1 + 1);
  v6 = *a1;
  v7 = (a1 + hash_state_packed_size(*a1) + 4);
  v8 = *v7++;
  v9 = v7 + hash_state_packed_size(v8);
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 1);
  v13 = *(v9 + 2);
  v14 = hash_packed(v5, v6, a2, a3) % v10;
  v15 = hash_packed(v7, v8, a2, a3);
  if (v14 >= v12)
  {
    v16 = v14 % v11;
    if ((v14 % v11) < v13)
    {
      v16 += v13;
    }
  }

  else
  {
    v16 = v14 % v13;
  }

  return (*&v9[4 * v16 + 24] + v15 % v10) % v10;
}

_DWORD *fch_buckets_new(unsigned int a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  if (v2)
  {
    v3 = malloc_type_calloc(a1, 0x10uLL, 0x1020040EDED9539uLL);
    *v2 = v3;
    if (a1)
    {
      v4 = 0;
      do
      {
        if (!v3)
        {
          fch_buckets_new_cold_1();
        }

        v5 = &v3[v4];
        *v5 = 0;
        *(v5 + 1) = 0;
        v3 = *v2;
        v4 += 16;
      }

      while (16 * a1 != v4);
    }

    if (!v3)
    {
      fch_buckets_new_cold_2();
    }

    v2[2] = a1;
    v2[3] = 0;
  }

  return v2;
}

BOOL fch_buckets_is_empty(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) <= a2)
  {
    fch_buckets_is_empty_cold_1();
  }

  if (!*a1)
  {
    fch_buckets_is_empty_cold_2();
  }

  return *(*a1 + 16 * a2 + 12) == 0;
}

_DWORD *fch_buckets_insert(_DWORD *result, unsigned int a2, uint64_t a3, int a4)
{
  if (result[2] <= a2)
  {
    fch_buckets_insert_cold_1();
  }

  v4 = result;
  v5 = *result;
  if (!*result)
  {
    fch_buckets_insert_cold_4();
  }

  v9 = v5 + 16 * a2;
  v11 = *(v9 + 8);
  v10 = *(v9 + 12);
  v12 = v10 + 1;
  if (v11 >= v10 + 1)
  {
    v18 = *v9 + 16 * v10;
    *v18 = a3;
    *(v18 + 8) = a4;
    *(v9 + 12) = v12;
  }

  else
  {
    v13 = v11 + 1;
    do
    {
      v14 = v13;
      v13 *= 2;
    }

    while (v14 < v12);
    result = malloc_type_realloc(*v9, 16 * v14, 0x1010040A1D9428BuLL);
    *v9 = result;
    if (!result)
    {
      fch_buckets_insert_cold_3();
    }

    v15 = *(v9 + 12);
    v16 = v15 + 1;
    v5 = *v4;
    v17 = &result[4 * v15];
    *v17 = a3;
    *(v17 + 2) = a4;
    *(v9 + 8) = v14;
    *(v9 + 12) = v16;
    if (!v5)
    {
      fch_buckets_insert_cold_2();
    }
  }

  v19 = *(v5 + 16 * a2 + 12);
  if (v19 > v4[3])
  {
    v4[3] = v19;
  }

  return result;
}

uint64_t fch_buckets_get_size(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) <= a2)
  {
    fch_buckets_get_size_cold_1();
  }

  if (!*a1)
  {
    fch_buckets_insert_cold_2();
  }

  return *(*a1 + 16 * a2 + 12);
}

uint64_t fch_buckets_get_key(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 8) <= a2)
  {
    fch_buckets_get_key_cold_1();
  }

  if (!*a1)
  {
    fch_buckets_get_key_cold_3();
  }

  v3 = *a1 + 16 * a2;
  if (*(v3 + 12) <= a3)
  {
    fch_buckets_get_key_cold_2();
  }

  return *(*v3 + 16 * a3);
}

uint64_t fch_buckets_get_keylength(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 8) <= a2)
  {
    fch_buckets_get_keylength_cold_1();
  }

  if (!*a1)
  {
    fch_buckets_get_keylength_cold_3();
  }

  v3 = *a1 + 16 * a2;
  if (*(v3 + 12) <= a3)
  {
    fch_buckets_get_keylength_cold_2();
  }

  return *(*v3 + 16 * a3 + 8);
}

_DWORD *fch_buckets_get_indexes_sorted_by_size(unsigned int *a1)
{
  v2 = malloc_type_calloc(a1[3] + 1, 4uLL, 0x100004052888210uLL);
  v3 = malloc_type_calloc(a1[2], 4uLL, 0x100004052888210uLL);
  v4 = v3;
  if (a1[2] >= 1)
  {
    if (!*a1)
    {
      fch_buckets_insert_cold_2();
    }

    v5 = 0;
    v6 = (*a1 + 12);
    do
    {
      v7 = *v6;
      v6 += 4;
      ++v2[v7];
      ++v5;
    }

    while (v5 < a1[2]);
  }

  v8 = a1[3];
  v9 = v2[v8];
  v2[v8] = 0;
  v10 = a1[3];
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v10 + 1;
    v13 = &v2[v10 - 1];
    do
    {
      v11 += v9;
      v9 = *v13;
      *v13-- = v11;
      --v12;
    }

    while (v12 > 1);
  }

  if (a1[2] >= 1)
  {
    if (!*a1)
    {
      fch_buckets_insert_cold_2();
    }

    v14 = 0;
    v15 = (*a1 + 12);
    do
    {
      v3[v2[*v15]] = v14++;
      v16 = *v15;
      v15 += 4;
      ++v2[v16];
    }

    while (v14 < a1[2]);
  }

  free(v2);
  return v4;
}

uint64_t fch_buckets_print(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    v2 = 0;
    v3 = MEMORY[0x29EDCA610];
    do
    {
      if (!*v1)
      {
        fch_buckets_print_cold_1();
      }

      v4 = *v1 + 16 * v2;
      result = fprintf(*v3, "Printing bucket %u ...\n", v2);
      if (*(v4 + 12))
      {
        v5 = 0;
        v6 = 0;
        do
        {
          result = fprintf(*v3, "  key: %s\n", *(*v4 + v5));
          ++v6;
          v5 += 16;
        }

        while (v6 < *(v4 + 12));
      }

      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  return result;
}

void fch_buckets_destroy(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    do
    {
      if (!*a1)
      {
        fch_buckets_destroy_cold_1();
      }

      v3 = *a1 + 16 * v2;
      if (*(v3 + 12))
      {
        v4 = 0;
        v5 = 0;
        do
        {
          free(*(*v3 + v4));
          ++v5;
          v4 += 16;
        }

        while (v5 < *(v3 + 12));
      }

      free(*v3);
      ++v2;
    }

    while (v2 < *(a1 + 8));
  }

  free(*a1);

  free(a1);
}

void *graph_new(unsigned int a1, unsigned int a2)
{
  v4 = malloc_type_malloc(0x38uLL, 0x101004041DD7EF0uLL);
  if (v4)
  {
    v4[1] = malloc_type_malloc(8 * a2, 0x100004052888210uLL);
    v4[3] = malloc_type_malloc(8 * a2, 0x100004052888210uLL);
    v4[2] = malloc_type_malloc(4 * a1, 0x100004052888210uLL);
    v4[4] = 0;
    *(v4 + 10) = 0;
    *v4 = a1;
    *(v4 + 1) = a2;
    graph_clear_edges(v4);
  }

  return v4;
}

unsigned int *graph_clear_edges(unsigned int *result)
{
  if (*result)
  {
    v1 = 0;
    v2 = *(result + 2);
    do
    {
      *(v2 + 4 * v1++) = -1;
    }

    while (v1 < *result);
  }

  if ((result[1] & 0x7FFFFFFF) != 0)
  {
    v3 = 0;
    v4 = *(result + 1);
    v5 = *(result + 3);
    do
    {
      *(v4 + 4 * v3) = -1;
      *(v5 + 4 * v3++) = -1;
    }

    while (v3 < 2 * result[1]);
  }

  result[11] = 0;
  result[12] = 0;
  return result;
}

void graph_destroy(void **a1)
{
  free(a1[1]);
  free(a1[2]);
  free(a1[3]);
  free(a1[4]);

  free(a1);
}

unsigned int *graph_print(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 2) + 4 * v2);
      if (v3 != -1)
      {
        result = printf("%u -> %u\n", *(*(v1 + 1) + 4 * (v3 % v1[1])), *(*(v1 + 1) + 4 * (v3 % v1[1] + v1[1])));
        for (i = *(*(v1 + 3) + 4 * v3); i != -1; i = *(*(v1 + 3) + 4 * i))
        {
          result = printf("%u -> %u\n", *(*(v1 + 1) + 4 * (i % v1[1])), *(*(v1 + 1) + 4 * (i % v1[1] + v1[1])));
        }
      }

      ++v2;
    }

    while (v2 < *v1);
  }

  return result;
}

uint64_t graph_add_edge(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = *(result + 44);
  if (*result <= a2)
  {
    graph_add_edge_cold_1();
  }

  if (*result <= a3)
  {
    graph_add_edge_cold_2();
  }

  if (v3 >= *(result + 4))
  {
    graph_add_edge_cold_3();
  }

  if (*(result + 48))
  {
    graph_add_edge_cold_4();
  }

  v5 = *(result + 8);
  v4 = *(result + 16);
  v6 = *(result + 24);
  *(v6 + 4 * v3) = *(v4 + 4 * a2);
  *(v4 + 4 * a2) = v3;
  *(v5 + 4 * v3) = a3;
  *(v6 + 4 * (*(result + 4) + v3)) = *(v4 + 4 * a3);
  *(v4 + 4 * a3) = *(result + 4) + v3;
  *(v5 + 4 * (*(result + 4) + v3)) = a2;
  ++*(result + 44);
  return result;
}

uint64_t graph_edge_id(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(*(a1 + 16) + 4 * a2);
  if (v3 == -1)
  {
    graph_edge_id_cold_2();
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 4);
  result = v3 % v6;
  v8 = *(v5 + 4 * result);
  if ((v8 != a2 || *(v5 + 4 * (result + v6)) != a3) && (v8 != a3 || *(v5 + 4 * (result + v6)) != a2))
  {
    v9 = *(a1 + 24);
    for (i = *(v9 + 4 * v3); ; i = *(v9 + 4 * i))
    {
      if (i == -1)
      {
        graph_edge_id_cold_1();
      }

      result = i % v6;
      v11 = *(v5 + 4 * result);
      if (v11 == a2 && *(v5 + 4 * (result + v6)) == a3)
      {
        break;
      }

      if (v11 == a3 && *(v5 + 4 * (result + v6)) == a2)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t graph_del_edge(uint64_t a1, unsigned int a2, unsigned int a3)
{
  *(a1 + 48) = 1;
  del_edge_point(a1, a2, a3);

  return del_edge_point(a1, a3, a2);
}

uint64_t del_edge_point(uint64_t result, unsigned int a2, int a3)
{
  v3 = *(result + 8);
  v4 = (*(result + 16) + 4 * a2);
  v5 = *v4;
  v6 = *(result + 4);
  v7 = v5 % v6;
  v8 = *(v3 + 4 * (v5 % v6));
  if (v8 == a2 && *(v3 + 4 * (v7 + v6)) == a3 || v8 == a3 && *(v3 + 4 * (v7 + v6)) == a2)
  {
    v9 = *(result + 24);
    i = *v4;
  }

  else
  {
    v9 = *(result + 24);
    for (i = *(v9 + 4 * v5); ; i = *(v9 + 4 * i))
    {
      if (i == -1)
      {
        del_edge_point_cold_1();
      }

      v11 = i % v6;
      v12 = *(v3 + 4 * (i % v6));
      if (v12 == a2 && *(v3 + 4 * (v11 + v6)) == a3)
      {
        break;
      }

      if (v12 == a3 && *(v3 + 4 * (v11 + v6)) == a2)
      {
        break;
      }

      v5 = i;
    }

    v4 = (v9 + 4 * v5);
  }

  *v4 = *(v9 + 4 * i);
  return result;
}

uint64_t graph_is_cyclic(unsigned int *a1)
{
  v2 = malloc_type_malloc((a1[1] >> 3) + 1, 0x100004077774924uLL);
  bzero(v2, (a1[1] >> 3) + 1);
  if (*a1)
  {
    v3 = 0;
    do
    {
      cyclic_del_edge(a1, v3++, v2);
    }

    while (v3 < *a1);
  }

  v4 = a1[1];
  if (v4)
  {
    v5 = 0;
    while ((bitmask_4[v5 & 7] & *(v2 + (v5 >> 3))) >> (v5 & 7))
    {
      if (v4 == ++v5)
      {
        goto LABEL_8;
      }
    }

    free(v2);
    return 1;
  }

  else
  {
LABEL_8:
    free(v2);
    return 0;
  }
}

uint64_t cyclic_del_edge(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v12 = 0;
  result = find_degree1_edge(a1, a2, a3, &v12);
  if (result)
  {
    v7 = *(a1 + 4);
    do
    {
      v8 = v12;
      *(a3 + ((v12 % v7) >> 3)) |= bitmask_4[(v12 % v7) & 7];
      v9 = *(a1 + 8);
      v7 = *(a1 + 4);
      v10 = v8 % v7;
      v11 = *(v9 + 4 * v10);
      if (v11 == v4)
      {
        v11 = *(v9 + 4 * (v10 + v7));
      }

      result = find_degree1_edge(a1, v11, a3, &v12);
      v4 = v11;
    }

    while (result);
  }

  return result;
}

void graph_obtain_critical_nodes(void **a1)
{
  v2 = malloc_type_malloc((*(a1 + 1) >> 3) + 1, 0x100004077774924uLL);
  bzero(v2, (*(a1 + 1) >> 3) + 1);
  free(a1[4]);
  v3 = malloc_type_malloc((*a1 >> 3) + 1, 0x100004077774924uLL);
  a1[4] = v3;
  *(a1 + 10) = 0;
  bzero(v3, (*a1 >> 3) + 1);
  if (*a1)
  {
    v4 = 0;
    do
    {
      cyclic_del_edge(a1, v4++, v2);
    }

    while (v4 < *a1);
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      if (!((bitmask_4[i & 7] & *(v2 + (i >> 3))) >> (i & 7)))
      {
        v7 = a1[4];
        v8 = a1[1];
        if (!((bitmask_4[v8[i] & 7] & v7[v8[i] >> 3]) >> (v8[i] & 7)))
        {
          ++*(a1 + 10);
          v7[v8[i] >> 3] |= bitmask_4[v8[i] & 7];
          v7 = a1[4];
          v8 = a1[1];
          v5 = *(a1 + 1);
        }

        v9 = v8[(i + v5)];
        if (!((bitmask_4[v9 & 7] & v7[v9 >> 3]) >> (v9 & 7)))
        {
          ++*(a1 + 10);
          v10 = v8[(i + v5)];
          v7[v10 >> 3] |= bitmask_4[v10 & 7];
          v5 = *(a1 + 1);
        }
      }
    }
  }

  free(v2);
}

uint64_t graph_contains_edge(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(*(a1 + 16) + 4 * a2);
  if (v3 != -1)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 4);
    v6 = v3 % v5;
    v7 = *(v4 + 4 * (v3 % v5));
    if (v7 == a2 && *(v4 + 4 * (v6 + v5)) == a3 || v7 == a3 && *(v4 + 4 * (v6 + v5)) == a2)
    {
      return 1;
    }

    v9 = *(a1 + 24);
    for (i = *(v9 + 4 * v3); i != -1; i = *(v9 + 4 * i))
    {
      v11 = i % v5;
      v12 = *(v4 + 4 * (i % v5));
      if (v12 == a2 && *(v4 + 4 * (v11 + v5)) == a3 || v12 == a3 && *(v4 + 4 * (v11 + v5)) == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t graph_next_neighbor(uint64_t a1, _DWORD *a2)
{
  v2 = a2[1];
  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 4 * v2);
  if (v4 == *a2)
  {
    v4 = *(v3 + 4 * (*(a1 + 4) + v2));
  }

  a2[1] = *(*(a1 + 24) + 4 * v2);
  return v4;
}

uint64_t find_degree1_edge(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(*(a1 + 16) + 4 * a2);
  if (v4 == -1)
  {
LABEL_2:
    LOBYTE(v5) = 0;
  }

  else
  {
    v7 = v4 - (v4 / *(a1 + 4)) * *(a1 + 4);
    if ((bitmask_4[v7 & 7] & *(a3 + (v7 >> 3))) >> (v7 & 7))
    {
      v5 = 0;
    }

    else
    {
      *a4 = v4;
      v5 = 1;
    }

    v8 = *(a1 + 24);
    while (1)
    {
      v4 = *(v8 + 4 * v4);
      if (v4 == -1)
      {
        break;
      }

      v9 = v4 - (v4 / *(a1 + 4)) * *(a1 + 4);
      if (!((bitmask_4[v9 & 7] & *(a3 + (v9 >> 3))) >> (v9 & 7)))
      {
        if (v5)
        {
          goto LABEL_2;
        }

        *a4 = v4;
        v5 = 1;
      }
    }
  }

  return v5;
}

_DWORD *hash_state_new(int a1, unsigned int a2)
{
  if (a1)
  {
    hash_state_new_cold_1();
  }

  result = jenkins_state_new(a2);
  *result = 0;
  return result;
}

uint64_t hash(_DWORD *a1, unsigned __int8 *a2, unsigned int a3)
{
  if (*a1)
  {
    hash_cold_1();
  }

  return jenkins_hash(a1, a2, a3);
}

uint64_t hash_vector(_DWORD *a1, unsigned __int8 *a2, unsigned int a3, int32x2_t *a4)
{
  if (*a1)
  {
    hash_vector_cold_1();
  }

  return jenkins_hash_vector_(a1, a2, a3, a4);
}

void hash_state_dump(_DWORD *a1, void *a2, _DWORD *a3)
{
  if (*a1)
  {
    hash_state_dump_cold_1();
  }

  __src = 0;
  jenkins_state_dump(a1, &__src, a3);
  v6 = *a3;
  if (v6 != -1)
  {
    v7 = strlen(cmph_hash_names[*a1]);
    v8 = malloc_type_malloc(v6 + v7 + 1, 0x100004077774924uLL);
    *a2 = v8;
    v9 = strlen(cmph_hash_names[*a1]);
    memcpy(v8, cmph_hash_names[*a1], v9 + 1);
    v10 = strlen(cmph_hash_names[*a1]);
    memcpy((*a2 + v10 + 1), __src, *a3);
    *a3 += strlen(cmph_hash_names[*a1]) + 1;
  }

  free(__src);
}

void hash_state_copy(double *a1)
{
  if (*a1)
  {
    hash_state_copy_cold_1();
  }

  jenkins_state_copy(a1);
  *v2 = *a1;
}

_DWORD *hash_state_load(const char *a1)
{
  v2 = cmph_hash_names[0];
  if (strcmp(a1, cmph_hash_names[0]))
  {
    return 0;
  }

  v4 = &a1[strlen(v2) + 1];

  return jenkins_state_load(v4);
}

void hash_state_destroy(_DWORD *a1)
{
  if (*a1)
  {
    hash_state_destroy_cold_1();
  }

  jenkins_state_destroy(a1);
}

uint64_t hash_state_pack(_DWORD *a1, _DWORD *a2)
{
  if (*a1)
  {
    hash_state_pack_cold_1();
  }

  return jenkins_state_pack(a1, a2);
}

uint64_t hash_state_packed_size(int a1)
{
  if (a1)
  {
    hash_state_packed_size_cold_1();
  }

  return jenkins_state_packed_size();
}

uint64_t hash_packed(unsigned int *a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  if (a2)
  {
    hash_packed_cold_1();
  }

  return jenkins_hash_packed(a1, a3, a4);
}

uint64_t hash_vector_packed(unsigned int *a1, int a2, unsigned __int8 *a3, unsigned int a4, int32x2_t *a5)
{
  if (a2)
  {
    hash_vector_packed_cold_1();
  }

  return jenkins_hash_vector_packed(a1, a3, a4, a5);
}

_DWORD *jenkins_state_new(unsigned int a1)
{
  v2 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (v2)
  {
    v2[1] = rand() % a1;
  }

  return v2;
}

uint64_t jenkins_hash(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v7 = *MEMORY[0x29EDCA608];
  __jenkins_hash_vector(*(a1 + 4), a2, a3, &v5);
  result = v6;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __jenkins_hash_vector(uint64_t result, unsigned __int8 *a2, unsigned int a3, int32x2_t *a4)
{
  v4 = -1640531527;
  *a4 = vdup_n_s32(0x9E3779B9);
  a4[1].i32[0] = result;
  v5 = -1640531527;
  v6 = a3;
  if (a3 >= 0xC)
  {
    do
    {
      v7 = *a2 + (a2[1] << 8) + (a2[2] << 16) + v5 + (a2[3] << 24);
      a4->i32[0] = v7;
      v8 = a2[4] + (a2[5] << 8) + (a2[6] << 16) + v4 + (a2[7] << 24);
      a4->i32[1] = v8;
      v9 = a2[8] + (a2[9] << 8) + (a2[10] << 16) + result + (a2[11] << 24);
      v10 = (v7 - (v8 + v9)) ^ (v9 >> 13);
      v11 = (v8 - v9 - v10) ^ (v10 << 8);
      v12 = (v9 - v10 - v11) ^ (v11 >> 13);
      v13 = (v10 - v11 - v12) ^ (v12 >> 12);
      v14 = (v11 - v12 - v13) ^ (v13 << 16);
      v15 = (v12 - v13 - v14) ^ (v14 >> 5);
      v5 = (v13 - v14 - v15) ^ (v15 >> 3);
      v4 = (v14 - v15 - v5) ^ (v5 << 10);
      a4->i32[0] = v5;
      a4->i32[1] = v4;
      result = (v15 - v5 - v4) ^ (v4 >> 15);
      a4[1].i32[0] = result;
      a2 += 12;
      v6 -= 12;
    }

    while (v6 > 0xB);
  }

  v16 = result + a3;
  a4[1].i32[0] = result + a3;
  if (v6 <= 5)
  {
    if (v6 <= 2)
    {
      if (v6 == 1)
      {
        goto LABEL_25;
      }

      if (v6 != 2)
      {
        goto LABEL_26;
      }

LABEL_24:
      v5 += a2[1] << 8;
      a4->i32[0] = v5;
LABEL_25:
      v5 += *a2;
      goto LABEL_26;
    }

    if (v6 == 3)
    {
LABEL_23:
      v5 += a2[2] << 16;
      a4->i32[0] = v5;
      goto LABEL_24;
    }

    if (v6 == 4)
    {
LABEL_22:
      v5 += a2[3] << 24;
      a4->i32[0] = v5;
      goto LABEL_23;
    }

LABEL_21:
    v4 += a2[4];
    a4->i32[1] = v4;
    goto LABEL_22;
  }

  if (v6 <= 8)
  {
    if (v6 == 6)
    {
LABEL_20:
      v4 += a2[5] << 8;
      a4->i32[1] = v4;
      goto LABEL_21;
    }

    if (v6 == 7)
    {
LABEL_19:
      v4 += a2[6] << 16;
      a4->i32[1] = v4;
      goto LABEL_20;
    }

LABEL_18:
    v4 += a2[7] << 24;
    a4->i32[1] = v4;
    goto LABEL_19;
  }

  switch(v6)
  {
    case 9:
LABEL_17:
      v16 += a2[8] << 8;
      a4[1].i32[0] = v16;
      goto LABEL_18;
    case 10:
LABEL_16:
      v16 += a2[9] << 16;
      a4[1].i32[0] = v16;
      goto LABEL_17;
    case 11:
      v16 += a2[10] << 24;
      a4[1].i32[0] = v16;
      goto LABEL_16;
  }

LABEL_26:
  v17 = (v5 - (v4 + v16)) ^ (v16 >> 13);
  v18 = (v4 - v16 - v17) ^ (v17 << 8);
  v19 = (v16 - v17 - v18) ^ (v18 >> 13);
  v20 = (v17 - v18 - v19) ^ (v19 >> 12);
  v21 = (v18 - v19 - v20) ^ (v20 << 16);
  v22 = (v19 - v20 - v21) ^ (v21 >> 5);
  v23 = (v20 - v21 - v22) ^ (v22 >> 3);
  v24 = (v21 - v22 - v23) ^ (v23 << 10);
  a4->i32[0] = v23;
  a4->i32[1] = v24;
  a4[1].i32[0] = (v22 - v23 - v24) ^ (v24 >> 15);
  return result;
}

_DWORD *jenkins_state_dump(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 4;
  result = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *a2 = result;
  if (result)
  {
    *result = *(a1 + 4);
  }

  else
  {
    *a3 = -1;
  }

  return result;
}

double jenkins_state_copy(double *a1)
{
  v2 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  result = *a1;
  *v2 = *a1;
  return result;
}

_DWORD *jenkins_state_load(int *a1)
{
  result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v3 = *a1;
  *result = 0;
  result[1] = v3;
  return result;
}

uint64_t jenkins_state_pack(uint64_t result, _DWORD *a2)
{
  if (result)
  {
    if (a2)
    {
      *a2 = *(result + 4);
    }
  }

  return result;
}

uint64_t jenkins_hash_packed(unsigned int *a1, unsigned __int8 *a2, unsigned int a3)
{
  v7 = *MEMORY[0x29EDCA608];
  __jenkins_hash_vector(*a1, a2, a3, &v5);
  result = v6;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void *lsmap_new()
{
  result = malloc_type_malloc(0x18uLL, 0xF00409C84318DuLL);
  if (result)
  {
    *result = "dummy node";
    result[2] = 0;
  }

  return result;
}

uint64_t lsmap_size(uint64_t a1)
{
    ;
  }

  return 0;
}

void *lsmap_append(void *a1, uint64_t a2, uint64_t a3)
{
  do
  {
    v5 = a1;
    a1 = a1[2];
  }

  while (a1);
  result = malloc_type_malloc(0x18uLL, 0xF00409C84318DuLL);
  v5[1] = a3;
  v5[2] = result;
  *v5 = a2;
  *result = "dummy node";
  result[2] = 0;
  return result;
}

uint64_t lsmap_search(uint64_t a1, char *__s2)
{
  while (1)
  {
    v4 = a1;
    a1 = *(a1 + 16);
    if (!a1)
    {
      break;
    }

    if (!strcmp(*v4, __s2))
    {
      return *(v4 + 8);
    }
  }

  return 0;
}

uint64_t lsmap_foreach_key(uint64_t result, uint64_t (*a2)(void))
{
  if (*(result + 16))
  {
    v3 = result;
    do
    {
      result = a2(*v3);
      v3 = v3[2];
    }

    while (v3[2]);
  }

  return result;
}

uint64_t lsmap_foreach_value(uint64_t result, uint64_t (*a2)(void))
{
  if (*(result + 16))
  {
    v3 = result;
    do
    {
      result = a2(*(v3 + 8));
      v3 = *(v3 + 16);
    }

    while (*(v3 + 16));
  }

  return result;
}

void lsmap_destroy(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    do
    {
      v2 = v1;
      free(a1);
      v1 = v2[2];
      a1 = v2;
    }

    while (v1);
  }

  else
  {
    v2 = a1;
  }

  free(v2);
}

uint64_t check_primality(unint64_t a1)
{
  v1 = 0;
  v2.i64[0] = 0x6DB6DB6DB6DB6DB7 * a1;
  v2.i64[1] = 0xCCCCCCCCCCCCCCCDLL * a1;
  v3 = vmovn_s64(vcgeq_u64(xmmword_2985D1B20, v2));
  if ((v3.i8[0] & 1) != 0 || (v3.i8[4] & 1) != 0 || (a1 & 1) == 0 || !(a1 % 3))
  {
    return v1;
  }

  v4 = a1 - 1;
  v5 = -1;
  v6 = a1 - 1;
  do
  {
    v7 = v6;
    v6 >>= 1;
    ++v5;
  }

  while ((v7 & 2) == 0);
  v8 = v5 + 1;
  v9 = 2;
  v10 = 1;
  v11 = v6;
  do
  {
    if (v11)
    {
      v10 = v9 * v10 % a1;
    }

    v9 = v9 * v9 % a1;
    v12 = v11 > 1;
    v11 >>= 1;
  }

  while (v12);
  if (v10 != 1 && v4 != v10)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v13 = v5;
    while (1)
    {
      v10 = v10 * v10 % a1;
      if (v10 == v4)
      {
        break;
      }

      if (!--v13)
      {
        return 0;
      }
    }
  }

  v14 = 7;
  v15 = 1;
  v16 = v6;
  do
  {
    if (v16)
    {
      v15 = v14 * v15 % a1;
    }

    v14 = v14 * v14 % a1;
    v12 = v16 > 1;
    v16 >>= 1;
  }

  while (v12);
  if (v15 != 1 && v4 != v15)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v17 = v5;
    while (1)
    {
      v15 = v15 * v15 % a1;
      if (v15 == v4)
      {
        break;
      }

      if (!--v17)
      {
        return 0;
      }
    }
  }

  v18 = 61;
  v19 = 1;
  do
  {
    if (v6)
    {
      v19 = v18 * v19 % a1;
    }

    v18 = v18 * v18 % a1;
    v12 = v6 > 1;
    v6 >>= 1;
  }

  while (v12);
  v1 = 1;
  if (v19 == 1 || v4 == v19)
  {
    return v1;
  }

  if (v8 < 2)
  {
    return 0;
  }

  while (1)
  {
    v19 = v19 * v19 % a1;
    if (v19 == v4)
    {
      break;
    }

    v1 = 0;
    if (!--v5)
    {
      return v1;
    }
  }

  return 1;
}

void *select_init(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void select_destroy(uint64_t a1)
{
  free(*(a1 + 8));
  free(*(a1 + 16));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

_DWORD *select_generate(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  *a1 = a3;
  *(a1 + 4) = a4;
  v6 = (a3 + a4 + 31) >> 5;
  v7 = a3 >> 7;
  v8 = *(a1 + 8);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 8) = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
  v9 = *(a1 + 16);
  if (v9)
  {
    free(v9);
  }

  result = malloc_type_calloc(v7 + 1, 4uLL, 0x100004052888210uLL);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  *(a1 + 16) = result;
  while (1)
  {
    while (1)
    {
      v15 = *(a2 + 4 * v12);
      if (v15 != v14)
      {
        break;
      }

      v16 = (v11 >> 1) | 0x80000000;
      v17 = ++v13 & 0x1F;
      if ((v13 & 0x1F) == 0)
      {
        *(*(a1 + 8) + 4 * ((v13 >> 5) - 1)) = v16;
      }

      ++v12;
      v11 = (v11 >> 1) | 0x80000000;
      if (v12 == *a1)
      {
        v18 = v13 - 1;
        v11 = v16;
        goto LABEL_16;
      }
    }

    if (v14 == *(a1 + 4))
    {
      break;
    }

    while (v15 > v14)
    {
      v11 >>= 1;
      if ((++v13 & 0x1F) == 0)
      {
        *(*(a1 + 8) + 4 * ((v13 >> 5) - 1)) = v11;
        v15 = *(a2 + 4 * v12);
      }

      ++v14;
    }
  }

  v17 = v13 & 0x1F;
  v18 = v13 - 1;
LABEL_16:
  v19 = *(a1 + 8);
  if (v17)
  {
    *(v19 + 4 * (v18 >> 5)) = v11 >> -v17;
  }

  if (*a1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = 8 * v22 - 8;
      do
      {
        v25 = v23;
        v26 = *(v19 + v22);
        v23 += rank_lookup_table[v26];
        ++v22;
        v24 += 8;
      }

      while (v23 <= v21);
      result[v20] = select_lookup_table[8 * v26 + v21 - v25] + v24;
      v21 += 128;
      ++v20;
    }

    while (v21 < *a1);
  }

  return result;
}

uint64_t select_query(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = *(*(a1 + 16) + 4 * (a2 >> 7));
  v5 = v4 >> 3;
  v6 = (a2 & 0x7F) + rank_lookup_table[*(v3 + (v4 >> 3)) & ~(-1 << (v4 & 7))];
  v7 = 8 * (*(*(a1 + 16) + 4 * (a2 >> 7)) >> 3) - 8;
  do
  {
    v8 = v2;
    v9 = *(v3 + v5);
    v2 += rank_lookup_table[v9];
    LODWORD(v5) = v5 + 1;
    v7 += 8;
  }

  while (v2 <= v6);
  return select_lookup_table[8 * v9 + v6 - v8] + v7;
}

uint64_t select_next_query(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = a2 >> 3;
  v5 = rank_lookup_table[*(v3 + v4) & ~(-1 << (a2 & 7))] + 1;
  v6 = 8 * v4 - 8;
  do
  {
    v7 = v2;
    v8 = *(v3 + v4);
    v2 += rank_lookup_table[v8];
    LODWORD(v4) = v4 + 1;
    v6 += 8;
  }

  while (v2 <= v5);
  return select_lookup_table[8 * v8 + v5 - v7] + v6;
}

_DWORD *select_dump(const void **a1, uint64_t a2, _DWORD *a3)
{
  v6 = *a1;
  v7 = ((v6 + *(a1 + 1) + 31) >> 3) & 0x1FFFFFFC;
  v8 = (v6 >> 5) & 0x7FFFFFC;
  v9 = v8 + 4;
  v10 = (v7 + 8 + v8 + 4);
  *a3 = v10;
  result = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
  *a2 = result;
  if (result)
  {
    *result = *a1;
    *(*a2 + 4) = *(a1 + 1);
    memcpy((*a2 + 8), a1[1], v7);
    v12 = (*a2 + (v7 + 8));
    v13 = a1[2];

    return memcpy(v12, v13, v9);
  }

  else
  {
    *a3 = -1;
  }

  return result;
}

void *select_load(uint64_t a1, unsigned int *a2)
{
  v4 = *a2;
  *a1 = v4;
  v5 = a2[1];
  *(a1 + 4) = v5;
  v6 = ((v4 + v5 + 31) >> 3) & 0x1FFFFFFC;
  v7 = *(a1 + 8);
  if (v7)
  {
    free(v7);
  }

  *(a1 + 8) = malloc_type_calloc(v6 >> 2, 4uLL, 0x100004052888210uLL);
  v8 = *(a1 + 16);
  if (v8)
  {
    free(v8);
  }

  v9 = ((v4 >> 5) & 0x7FFFFFC) + 4;
  *(a1 + 16) = malloc_type_calloc(v9 >> 2, 4uLL, 0x100004052888210uLL);
  v10 = (a2 + 2);
  memcpy(*(a1 + 8), v10, v6);
  v11 = *(a1 + 16);

  return memcpy(v11, &v10[v6], v9);
}

void select_pack(const void **a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      memset(__n, 0, sizeof(__n));
      select_dump(a1, &__n[1], __n);
      v3 = *&__n[1];
      memcpy(a2, *&__n[1], __n[0]);
      free(v3);
    }
  }
}

uint64_t select_query_packed(_DWORD *a1, unsigned int a2)
{
  v2 = 0;
  v3 = a1[((*a1 + a1[1] + 31) >> 5) + 2 + (a2 >> 7)];
  v4 = v3 >> 3;
  v5 = (a2 & 0x7F) + rank_lookup_table[*(a1 + (v3 >> 3) + 8) & ~(-1 << (v3 & 7))];
  v6 = 8 * (a1[((*a1 + a1[1] + 31) >> 5) + 2 + (a2 >> 7)] >> 3) - 8;
  do
  {
    v7 = v2;
    v8 = *(a1 + v4 + 8);
    v2 += rank_lookup_table[v8];
    LODWORD(v4) = v4 + 1;
    v6 += 8;
  }

  while (v2 <= v5);
  return select_lookup_table[8 * v8 + v5 - v7] + v6;
}

uint64_t select_next_query_packed(uint64_t a1, unsigned int a2)
{
  v2 = 0;
  v3 = a2 >> 3;
  v4 = rank_lookup_table[*(a1 + 8 + v3) & ~(-1 << (a2 & 7))] + 1;
  v5 = 8 * v3 - 8;
  do
  {
    v6 = v2;
    v7 = *(a1 + 8 + v3);
    v2 += rank_lookup_table[v7];
    LODWORD(v3) = v3 + 1;
    v5 += 8;
  }

  while (v2 <= v4);
  return select_lookup_table[8 * v7 + v4 - v6] + v5;
}

void *vqueue_new(int a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x1010040E2407E0AuLL);
  if (v2)
  {
    v3 = (a1 + 1);
    *v2 = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
    v2[1] = 0;
    *(v2 + 4) = v3;
  }

  return v2;
}

uint64_t vqueue_insert(uint64_t result, int a2)
{
  v2 = (*(result + 12) + 1) % *(result + 16);
  if (v2 == *(result + 8))
  {
    vqueue_insert_cold_1();
  }

  *(result + 12) = v2;
  *(*result + 4 * v2) = a2;
  return result;
}

uint64_t vqueue_remove(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == *(a1 + 12))
  {
    vqueue_remove_cold_1();
  }

  v2 = (v1 + 1) % *(a1 + 16);
  *(a1 + 8) = v2;
  return *(*a1 + 4 * v2);
}

_DWORD *vqueue_print(_DWORD *result)
{
  v1 = result[2];
  if (v1 != result[3])
  {
    v2 = result;
    v3 = result[4];
    v4 = MEMORY[0x29EDCA610];
    do
    {
      v5 = v1 + 1;
      result = fprintf(*v4, "%u\n", *(*v2 + 4 * ((v1 + 1) % v3)));
      v3 = v2[4];
      v1 = v5 % v3;
    }

    while (v5 % v3 != v2[3]);
  }

  return result;
}

void vqueue_destroy(void **a1)
{
  free(*a1);

  free(a1);
}

void *vstack_new()
{
  result = malloc_type_malloc(0x18uLL, 0x10100400FFEF802uLL);
  if (!result)
  {
    vstack_new_cold_1();
  }

  *result = 0;
  result[1] = 0;
  *(result + 4) = 0;
  return result;
}

void vstack_destroy(void **a1)
{
  if (!a1)
  {
    vstack_destroy_cold_1();
  }

  free(a1[1]);

  free(a1);
}

void **vstack_push(uint64_t a1, int a2)
{
  if (!a1)
  {
    vstack_push_cold_1();
  }

  result = vstack_reserve(a1, *a1 + 1);
  *(*(a1 + 8) + 4 * (*a1)++) = a2;
  return result;
}

void **vstack_reserve(void **result, unsigned int a2)
{
  if (!result)
  {
    vstack_reserve_cold_2();
  }

  v2 = result;
  v3 = *(result + 4);
  if (v3 < a2)
  {
    v4 = v3 + 1;
    do
    {
      v5 = v4;
      v4 *= 2;
    }

    while (v5 < a2);
    result = malloc_type_realloc(result[1], 4 * v5, 0x100004052888210uLL);
    v2[1] = result;
    if (!result)
    {
      vstack_reserve_cold_1();
    }

    *(v2 + 4) = v5;
  }

  return result;
}

_DWORD *vstack_pop(_DWORD *result)
{
  if (!result)
  {
    vstack_pop_cold_2();
  }

  if (!*result)
  {
    vstack_pop_cold_1();
  }

  --*result;
  return result;
}

uint64_t vstack_top(uint64_t a1)
{
  if (!a1)
  {
    vstack_top_cold_2();
  }

  if (!*a1)
  {
    vstack_top_cold_1();
  }

  return *(*(a1 + 8) + 4 * (*a1 - 1));
}

BOOL vstack_empty(_DWORD *a1)
{
  if (!a1)
  {
    vstack_empty_cold_1();
  }

  return *a1 == 0;
}