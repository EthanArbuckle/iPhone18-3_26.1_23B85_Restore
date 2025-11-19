uint64_t sub_1000178F0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x20000)
  {
    v43 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 6)
  {
    v44 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x1984uLL, 0x100004099D89073uLL);
  v50 = v5;
  if (!v5)
  {
    v8 = "e: out of memory for EMMP table";
LABEL_10:
    puts(v8);
    return 0;
  }

  v6 = v3[469018];
  if (v6 >= 4)
  {
    v42 = v3[469018];
    printf("e: too many EM color channels %d\n");
    return 0;
  }

  v9 = v3[469023];
  if (v9 >= 0x11)
  {
    v45 = v3[469023];
    printf("e: too many EM gray levels %d\n");
    return 0;
  }

  v10 = *(v3 + 938052);
  if (v10 >= 0x11)
  {
    v46 = *(v3 + 938052);
    printf("e: too many EM scale intervals %d\n");
    return 0;
  }

  v11 = v3[469022];
  if (v11 >= 0x41)
  {
    v47 = v3[469018];
    printf("e: too many EM lines %d\n");
    return 0;
  }

  v12 = (4 * *(a2 + 8) - 12);
  v13 = 2 * v9;
  v14 = 4 * (v9 - 1);
  v15 = 2 * v10;
  if (v12 < v6 * (2 * v9 + 2 * v11 * v9 + v14 + 2 * v10 + 2) + 3)
  {
    printf("e: provided data size smaller than expected %d < %d\n");
    return 0;
  }

  v16 = v5;
  v48 = *(a1 + 3936);
  v49 = v48 + v12;
  *(v5 + 6526) = sub_100007AEC(a1, 1uLL);
  *(v16 + 3262) = sub_100007AEC(a1, 2uLL);
  if (v6)
  {
    v17 = 8;
    v18 = v6;
    do
    {
      memcpy(&v16[v17], *(a1 + 3936), v15);
      *(a1 + 3936) += v15;
      v19 = *(a1 + 3944);
      v20 = v19 >= v15;
      v21 = v19 - v15;
      *(a1 + 3944) = v21;
      if (!v20 || HIDWORD(v21))
      {
        puts("e: data_sz underflow in get_array");
      }

      v17 += 32;
      --v18;
    }

    while (v18);
    sub_10000E6C4(a1, v16, v6);
    v22 = v16 + 104;
    v23 = v6;
    do
    {
      memcpy(v22, *(a1 + 3936), v13);
      *(a1 + 3936) += v13;
      v24 = *(a1 + 3944);
      v20 = v24 >= v13;
      v25 = v24 - v13;
      *(a1 + 3944) = v25;
      if (!v20 || HIDWORD(v25))
      {
        puts("e: data_sz underflow in get_array");
      }

      v22 += 32;
      --v23;
    }

    while (v23);
    v26 = v16 + 200;
    v27 = v6;
    do
    {
      memcpy(v26, *(a1 + 3936), v14);
      *(a1 + 3936) += v14;
      v28 = *(a1 + 3944);
      v20 = v28 >= v14;
      v29 = v28 - v14;
      *(a1 + 3944) = v29;
      if (!v20 || HIDWORD(v29))
      {
        puts("e: data_sz underflow in get_array");
      }

      v26 += 60;
      --v27;
    }

    while (v27);
    v30 = 0;
    v31 = v16 + 380;
    do
    {
      v32 = v11;
      v33 = v31;
      if (v11)
      {
        do
        {
          memcpy(v33, *(a1 + 3936), v13);
          *(a1 + 3936) += v13;
          v34 = *(a1 + 3944);
          v20 = v34 >= v13;
          v35 = v34 - v13;
          *(a1 + 3944) = v35;
          if (!v20 || HIDWORD(v35))
          {
            puts("e: data_sz underflow in get_array");
          }

          v33 += 32;
          --v32;
        }

        while (v32);
      }

      ++v30;
      v31 += 2048;
    }

    while (v30 != v6);
  }

  else
  {
    sub_10000E6C4(a1, v16, v6);
  }

  if (v49 - *(a1 + 3936) < 6)
  {
    v8 = "e: underflow while reading EMMP spare";
    goto LABEL_10;
  }

  v36 = 3;
  do
  {
    *(a1 + 3936) += 2;
    v37 = *(a1 + 3944);
    *(a1 + 3944) = v37 - 2;
    if (v37 < 2)
    {
      puts("e: data_sz underflow in get_value");
    }

    --v36;
  }

  while (v36);
  sub_10001C5CC(*(a1 + 3912), &v50);
  v38 = *(a1 + 3936);
  if (v48 - v38 >= 0)
  {
    v39 = -((v48 - v38) & 3);
  }

  else
  {
    v39 = (v38 - v48) & 3;
  }

  if (v39)
  {
    v40 = v39 - 4;
    do
    {
      ++*(a1 + 3936);
      v41 = *(a1 + 3944);
      *(a1 + 3944) = v41 - 1;
      if (!v41)
      {
        puts("e: data_sz underflow in get_value");
      }

      v20 = __CFADD__(v40++, 1);
    }

    while (!v20);
    v38 = *(a1 + 3936);
  }

  if (v38 != v49)
  {
    v8 = "e: parsing did not consume the full EMMP size";
    goto LABEL_10;
  }

  return 1;
}

uint64_t sub_100017D34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) == 458752)
  {
    v3 = *(a1 + 2840);
    if (*v3 == 7)
    {
      printf("i: Processing CNST version 0x%x\n", 458752);
      if ((4 * *(a2 + 8) - 12) > 0xF)
      {
        v6 = *(a1 + 3936) + 1;
        *(a1 + 3936) = v6;
        v7 = *(a1 + 3944);
        v8 = v7 != 0;
        v9 = v7 - 1;
        *(a1 + 3944) = v9;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v6 = *(a1 + 3936);
          v9 = *(a1 + 3944);
        }

        v10 = (v6 + 1);
        *(a1 + 3936) = v10;
        v8 = v9 != 0;
        v11 = v9 - 1;
        *(a1 + 3944) = v11;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v10 = *(a1 + 3936);
          v11 = *(a1 + 3944);
        }

        v14 = *v10;
        v12 = v10 + 1;
        v13 = v14;
        *(a1 + 3936) = v12;
        v8 = v11 != 0;
        v15 = v11 - 1;
        *(a1 + 3944) = v15;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v12 = *(a1 + 3936);
          v15 = *(a1 + 3944);
        }

        v18 = *v12;
        v16 = v12 + 1;
        v17 = v18;
        *(a1 + 3936) = v16;
        v8 = v15 != 0;
        v19 = v15 - 1;
        *(a1 + 3944) = v19;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v16 = *(a1 + 3936);
          v19 = *(a1 + 3944);
        }

        v22 = *v16;
        v20 = v16 + 1;
        v21 = v22;
        *(a1 + 3936) = v20;
        v8 = v19 != 0;
        v23 = v19 - 1;
        *(a1 + 3944) = v23;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v20 = *(a1 + 3936);
          v23 = *(a1 + 3944);
        }

        v26 = *v20;
        v24 = v20 + 1;
        v25 = v26;
        *(a1 + 3936) = v24;
        v8 = v23 != 0;
        v27 = v23 - 1;
        *(a1 + 3944) = v27;
        if (!v8)
        {
          puts("e: data_sz underflow in get_value");
          v24 = *(a1 + 3936);
          v27 = *(a1 + 3944);
        }

        v28 = *v24;
        *(a1 + 3936) = v24 + 1;
        *(a1 + 3944) = v27 - 1;
        if (!v27)
        {
          puts("e: data_sz underflow in get_value");
        }

        if (v13 < 2)
        {
          if (v17 < 0x25)
          {
            if (v21 < 6)
            {
              if (v25 < 0x25)
              {
                if (v28 < 6)
                {
                  v29 = sub_100007AEC(a1, 1uLL);
                  if (v29 < 5)
                  {
                    v30 = sub_100007AEC(a1, 1uLL);
                    if (v30 < 7u)
                    {
                      v31 = v3 + 1545216;
                      v39 = v30;
                      v38 = sub_100007AEC(a1, 1uLL);
                      v40 = sub_100007AEC(a1, 1uLL);
                      v37 = sub_100007AEC(a1, 1uLL);
                      v32 = sub_100007AEC(a1, 1uLL);
                      v31[454] = v29;
                      v31[455] = v39;
                      v31[456] = v38;
                      v31[457] = v21;
                      v31[458] = v17;
                      *(v31 + 929) = v28;
                      *(v31 + 930) = v25;
                      v31[460] = v37;
                      v31[461] = v40;
                      *(v31 + 231) = 0;
                      *(v31 + 928) = v32;
                      if (v21 != 0 && v17 != 0)
                      {
                        v33 = 2;
                      }

                      else
                      {
                        v33 = 0;
                      }

                      if (v28 != 0 && v25 != 0)
                      {
                        v34 = 4;
                      }

                      else
                      {
                        v34 = 0;
                      }

                      v31[466] = v33 | v31[466] & 0xFFFFFFF8 | v13 | v34;
                      if (v21 != 0 && v17 != 0 || v28 != 0 && v25 != 0)
                      {
                        operator new();
                      }

                      printf("e: missing gray scales (sync T%d B%d async T%d B%d)\n");
                    }

                    else
                    {
                      printf("e: unsupported sensor channel count: %u > %u\n");
                    }
                  }

                  else
                  {
                    printf("e: unsupported region count: %u > %u\n");
                  }
                }

                else
                {
                  printf("e: unsupported async PCS temperature count: %u > %u\n");
                }
              }

              else
              {
                printf("e: unsupported async PCS brightness count: %u > %u\n");
              }
            }

            else
            {
              printf("e: unsupported sync PCS temperature count: %u > %u\n");
            }
          }

          else
          {
            printf("e: unsupported sync PCS brightness count: %u > %u\n");
          }
        }

        else
        {
          printf("e: unsupported EMMP ACSS brightness count: %u > %u\n");
        }
      }

      else
      {
        printf("e: unexpected size for CNST %u < %u\n");
      }
    }

    else
    {
      v36 = *v3;
      printf("e: mismatching versions: %u != %u\n");
    }
  }

  else
  {
    v35 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
  }

  return 0;
}

uint64_t sub_1000181D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 196608)
  {
    v57 = *(a2 + 4);
    printf("e: unsupported version: 0x%x != 0x%x\n");
    return 0;
  }

  v3 = *(a1 + 2840);
  if (*v3 != 7)
  {
    v58 = *v3;
    printf("e: mismatching versions: %u != %u\n");
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x5A0278uLL, 0x40BA0BA164uLL);
  v67 = v5;
  if (!v5)
  {
    v21 = "e: out of memory for EMMP table";
LABEL_14:
    puts(v21);
    return 0;
  }

  v6 = v5;
  v7 = v3 + 1545216;
  v8 = *(a2 + 8);
  v9 = *(a1 + 3936);
  v10 = v7[460];
  v11 = v7[461];
  v12 = *(v7 + 928);
  v13 = v7[456];
  v14 = v9 + 1;
  v15 = *v9;
  *(a1 + 3936) = v9 + 1;
  v16 = *(a1 + 3944);
  v17 = v16 != 0;
  v18 = v16 - 1;
  *(a1 + 3944) = v18;
  v66 = v13;
  if (!v17)
  {
    puts("e: data_sz underflow in get_value");
    LODWORD(v13) = v66;
    v14 = *(a1 + 3936);
    v18 = *(a1 + 3944);
  }

  v19 = *v14;
  *(a1 + 3936) = v14 + 1;
  *(a1 + 3944) = v18 - 1;
  if (!v18)
  {
    puts("e: data_sz underflow in get_value");
    LODWORD(v13) = v66;
  }

  v7[462] = v19;
  v7[463] = v15;
  if (v13 >= 4)
  {
    printf("e: too many EM color channels %d\n");
    return 0;
  }

  if (v11 >= 0x11)
  {
    printf("e: too many EM gray levels %d\n");
    return 0;
  }

  if (v12 >= 0x11)
  {
    printf("e: too many EM scale intervals %d\n");
    return 0;
  }

  if (v10 >= 0x79)
  {
    printf("e: too many EM lines %d\n");
    return 0;
  }

  if (v19 >= 9)
  {
    printf("e: too many Temp tap points %d\n");
    return 0;
  }

  if (v15 >= 0x79)
  {
    printf("e: too many Brightness tap points %d\n");
    return 0;
  }

  v22 = &v9[4 * v8 - 12];
  v23 = v10 * v11 * v15 * v19;
  v24 = 2 * v11;
  v25 = 4 * (v11 - 1);
  v26 = v15;
  v27 = 2 * v12;
  if (&v22[-*(a1 + 3936)] < (v19 + 2 * v26 + (v24 + v25 + 2 * v12 + 2 * v23 + 2) * v13 + 2))
  {
    v59 = &v22[-*(a1 + 3936)];
    printf("e: provided data size smaller than expected %d < %d\n");
    return 0;
  }

  v65 = v26;
  sub_10000E6C4(a1, v6 + 8, v26);
  memcpy(v6 + 248, *(a1 + 3936), v19);
  *(a1 + 3936) += v19;
  v28 = *(a1 + 3944);
  v17 = v28 >= v19;
  v29 = v28 - v19;
  *(a1 + 3944) = v29;
  if (!v17 || HIDWORD(v29))
  {
    puts("e: data_sz underflow in get_array");
  }

  v61 = v22;
  v30 = v66;
  if (v66)
  {
    v31 = 256;
    do
    {
      memcpy(&v6[v31], *(a1 + 3936), v27);
      *(a1 + 3936) += v27;
      v32 = *(a1 + 3944);
      v17 = v32 >= v27;
      v33 = v32 - v27;
      *(a1 + 3944) = v33;
      if (!v17 || HIDWORD(v33))
      {
        puts("e: data_sz underflow in get_array");
      }

      v31 += 32;
      --v30;
    }

    while (v30);
    v34 = v66;
    sub_10000E6C4(a1, v6, v66);
    v35 = v6 + 352;
    do
    {
      memcpy(v35, *(a1 + 3936), v24);
      *(a1 + 3936) += v24;
      v36 = *(a1 + 3944);
      v17 = v36 >= v24;
      v37 = v36 - v24;
      *(a1 + 3944) = v37;
      if (!v17 || HIDWORD(v37))
      {
        puts("e: data_sz underflow in get_array");
      }

      v35 += 32;
      --v34;
    }

    while (v34);
    v38 = v6 + 448;
    v39 = v66;
    do
    {
      memcpy(v38, *(a1 + 3936), v25);
      *(a1 + 3936) += v25;
      v40 = *(a1 + 3944);
      v17 = v40 >= v25;
      v41 = v40 - v25;
      *(a1 + 3944) = v41;
      if (!v17 || HIDWORD(v41))
      {
        puts("e: data_sz underflow in get_array");
      }

      v38 += 60;
      --v39;
    }

    while (v39);
  }

  else
  {
    sub_10000E6C4(a1, v6, v66);
  }

  v60 = v9;
  v43 = v65;
  v42 = v66;
  if (v19)
  {
    v44 = 0;
    __dst = v6 + 632;
    v62 = v19;
    do
    {
      v63 = v44;
      if (v43)
      {
        v45 = 0;
        v46 = __dst;
        do
        {
          if (v42)
          {
            v47 = 0;
            v48 = v46;
            do
            {
              v49 = v10;
              v50 = v48;
              if (v10)
              {
                do
                {
                  memcpy(v50, *(a1 + 3936), v24);
                  *(a1 + 3936) += v24;
                  v51 = *(a1 + 3944);
                  v17 = v51 >= v24;
                  v52 = v51 - v24;
                  *(a1 + 3944) = v52;
                  if (!v17 || HIDWORD(v52))
                  {
                    puts("e: data_sz underflow in get_array");
                  }

                  v50 += 32;
                  --v49;
                }

                while (v49);
              }

              ++v47;
              v48 += 2048;
              v42 = v66;
            }

            while (v47 != v66);
          }

          ++v45;
          v46 += 6144;
          v43 = v65;
        }

        while (v45 != v65);
      }

      v44 = v63 + 1;
      __dst += 737280;
    }

    while (v63 + 1 != v62);
  }

  if (&v61[-*(a1 + 3936)] < 6)
  {
    v21 = "e: underflow while reading EMMP spare";
    goto LABEL_14;
  }

  v53 = 3;
  do
  {
    sub_100007AEC(a1, 2uLL);
    --v53;
  }

  while (v53);
  sub_10001C5CC(*(a1 + 3920), &v67);
  v54 = *(a1 + 3936);
  if (v60 - v54 >= 0)
  {
    v55 = -((v60 - v54) & 3);
  }

  else
  {
    v55 = (v54 - v60) & 3;
  }

  if (v55)
  {
    v56 = v55 - 4;
    do
    {
      sub_100007AEC(a1, 1uLL);
      v17 = __CFADD__(v56++, 1);
    }

    while (!v17);
    v54 = *(a1 + 3936);
  }

  if (v54 != v61)
  {
    v21 = "e: parsing did not consume the full EMMP size";
    goto LABEL_14;
  }

  return 1;
}

void *sub_100018710(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_10001C584(result, a2);
    }

    sub_100006304();
  }

  return result;
}

void sub_1000187B0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100006304();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10001C584(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_100018884(uint64_t a1)
{
  v2 = *(a1 + 2848);
  if ((*(a1 + 8))(@"ALSSSupported", *(a1 + 16)))
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 1;
  }

  if (*v2 == 1)
  {
    v5 = *(a1 + 3904);
    if (v5)
    {
      LODWORD(v5) = 16 * (*(*(a1 + 3904) + 8) != *v5);
    }

    v6 = *(a1 + 24) & 0xFFEF | v5;
    *(a1 + 24) = v6;
  }

  else
  {
    v6 = *(a1 + 24);
  }

  return (v6 >> 4) & 1;
}

uint64_t sub_10001890C(uint64_t a1)
{
  if (!(*(a1 + 8))(@"ACSSSupported", *(a1 + 16)))
  {
    return 1;
  }

  v2 = *(a1 + 2832);
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {

        return sub_100018D58(a1);
      }

      else
      {
        if (v2 != 7)
        {
          goto LABEL_33;
        }

        return sub_100018E04(a1);
      }
    }

    else if (v2 == 4)
    {

      return sub_100018C40(a1);
    }

    else
    {

      return sub_100018CB4(a1);
    }
  }

  else
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 == 1)
        {

          return sub_100018AB8(a1);
        }

LABEL_33:
        printf("e: invalid acss_config version %u\n", *(a1 + 2832));
        return 0;
      }

      return 1;
    }

    if (v2 == 2)
    {

      return sub_100018B50(a1);
    }

    else
    {

      return sub_100018BB0(a1);
    }
  }
}

uint64_t sub_100018AB8(uint64_t a1)
{
  v1 = *(a1 + 2840);
  if (v1)
  {
    v2 = *(a1 + 3864);
    if (v2)
    {
      if (*(*(a1 + 3864) + 8) == *v2)
      {
        goto LABEL_13;
      }

      v2 = *(a1 + 3856);
      if (!v2)
      {
        goto LABEL_12;
      }

      if (*(*(a1 + 3856) + 8) == *v2)
      {
LABEL_13:
        v1 = 0;
        LOWORD(v2) = 0;
        goto LABEL_14;
      }

      v3 = (v1 + 2326528);
      LODWORD(v2) = v3[252];
      if (v2)
      {
        LODWORD(v2) = v3[253];
        if (v2)
        {
          LODWORD(v2) = v3[254];
          if (v2)
          {
            LODWORD(v2) = v3[257];
            if (v2)
            {
              LODWORD(v2) = v3[258];
              if (v2)
              {
                v1 = v3[259] != 0;
                LOWORD(v2) = 8 * v1;
LABEL_14:
                *(a1 + 24) = *(a1 + 24) & 0xFFF7 | v2;
                return v1;
              }
            }
          }
        }
      }
    }

LABEL_12:
    v1 = 0;
    goto LABEL_14;
  }

  return v1;
}

unint64_t sub_100018B50(uint64_t a1)
{
  v1 = *(a1 + 2840);
  if (!v1)
  {
    goto LABEL_7;
  }

  if (*v1 != 2)
  {
    v1 = 0;
LABEL_7:
    LOWORD(v2) = 0;
    goto LABEL_9;
  }

  v2 = *(v1 + 12416);
  if (v2 && (v2 = *(v1 + 12420)) != 0)
  {
    v1 = *(v1 + 12424) != 0;
    LOWORD(v2) = 8 * v1;
  }

  else
  {
    v1 = 0;
  }

LABEL_9:
  *(a1 + 24) = *(a1 + 24) & 0xFFF7 | v2;
  return v1;
}

uint64_t sub_100018BB0(uint64_t a1)
{
  v1 = *(a1 + 2840);
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = *(a1 + 3896);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (*(*(a1 + 3896) + 8) == *v2)
  {
LABEL_12:
    v1 = 0;
LABEL_13:
    LOWORD(v2) = 0;
    goto LABEL_14;
  }

  v2 = *(a1 + 3872);
  if (!v2)
  {
LABEL_11:
    v1 = 0;
    goto LABEL_14;
  }

  if (*(*(a1 + 3872) + 8) == *v2)
  {
    goto LABEL_12;
  }

  v3 = (v1 + 1916928);
  LODWORD(v2) = v3[412];
  if (!v2)
  {
    goto LABEL_11;
  }

  LODWORD(v2) = v3[413];
  if (!v2)
  {
    goto LABEL_11;
  }

  LODWORD(v2) = v3[414];
  if (!v2)
  {
    goto LABEL_11;
  }

  LODWORD(v2) = v3[418];
  if (!v2)
  {
    goto LABEL_11;
  }

  v1 = v3[419] != 0;
  LOWORD(v2) = 8 * v1;
LABEL_14:
  *(a1 + 24) = *(a1 + 24) & 0xFFF7 | v2;
  return v1;
}

unint64_t sub_100018C40(uint64_t a1)
{
  v1 = *(a1 + 2840);
  if (!v1)
  {
    goto LABEL_9;
  }

  if (*v1 != 4)
  {
    v1 = 0;
LABEL_9:
    LOWORD(v3) = 0;
    goto LABEL_11;
  }

  v2 = (v1 + 0x4000);
  v3 = v2[926];
  if (v3 && (v3 = v2[927]) != 0 && (v3 = v2[928]) != 0 && (LOWORD(v3) = *(v2 + 1866), v3))
  {
    v1 = *(v2 + 1867) != 0;
    LOWORD(v3) = 8 * v1;
  }

  else
  {
    v1 = 0;
  }

LABEL_11:
  *(a1 + 24) = *(a1 + 24) & 0xFFF7 | v3;
  return v1;
}

unint64_t sub_100018CB4(uint64_t a1)
{
  v1 = *(a1 + 2840);
  if (!v1)
  {
    goto LABEL_12;
  }

  if (*v1 != 5)
  {
    goto LABEL_11;
  }

  v2 = (v1 + 172032);
  v3 = *v2;
  if (!*v2 || (v3 = v2[1]) == 0 || (v3 = v2[2]) == 0 || (LOWORD(v3) = *(v2 + 14), !v3) || (LOWORD(v3) = *(v2 + 15), !v3))
  {
    v1 = 0;
    goto LABEL_14;
  }

  if (*(a1 + 3928) != *(v2 + 24) || *(a1 + 3929) != *(v2 + 25))
  {
LABEL_11:
    v1 = 0;
LABEL_12:
    LOWORD(v3) = 0;
    goto LABEL_14;
  }

  v1 = *(a1 + 3930) == *(v2 + 26);
  LOWORD(v3) = 8 * v1;
LABEL_14:
  *(a1 + 24) = *(a1 + 24) & 0xFFF7 | v3;
  return v1;
}

uint64_t sub_100018D58(uint64_t a1)
{
  v1 = *(a1 + 2840);
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = *(a1 + 3912);
  if (!v2)
  {
    goto LABEL_14;
  }

  if (*(*(a1 + 3912) + 8) == *v2)
  {
LABEL_15:
    v1 = 0;
LABEL_16:
    LOWORD(v2) = 0;
    goto LABEL_17;
  }

  v2 = *(a1 + 3880);
  if (!v2)
  {
LABEL_14:
    v1 = 0;
    goto LABEL_17;
  }

  if (*(*(a1 + 3880) + 8) == *v2)
  {
    goto LABEL_15;
  }

  v2 = *(a1 + 3888);
  if (!v2)
  {
    goto LABEL_14;
  }

  if (*(*(a1 + 3888) + 8) == *v2)
  {
    goto LABEL_15;
  }

  v3 = v1 + 1875968;
  LODWORD(v2) = *(v3 + 96);
  if (!v2)
  {
    goto LABEL_14;
  }

  LODWORD(v2) = *(v3 + 100);
  if (!v2)
  {
    goto LABEL_14;
  }

  LODWORD(v2) = *(v3 + 104);
  if (!v2)
  {
    goto LABEL_14;
  }

  LODWORD(v2) = *(v3 + 120);
  if (!v2)
  {
    goto LABEL_14;
  }

  LODWORD(v2) = *(v3 + 124);
  if (!v2)
  {
    goto LABEL_14;
  }

  v1 = *(v3 + 136) != 0;
  LOWORD(v2) = 8 * v1;
LABEL_17:
  *(a1 + 24) = *(a1 + 24) & 0xFFF7 | v2;
  return v1;
}

uint64_t sub_100018E04(uint64_t a1)
{
  v1 = *(a1 + 2840);
  v2 = v1 + 1545216;
  if (v1 && v1[1545670] && v1[1545671])
  {
    v3 = 8 * (v1[1545672] != 0);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 24) & 0xFFF7;
  v5 = v4 | v3;
  *(a1 + 24) = *(a1 + 24) & 0xFFF7 | v3;
  v6 = v2[466];
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  v7 = *(a1 + 3920);
  if (!v7)
  {
    goto LABEL_17;
  }

  if (*(*(a1 + 3920) + 8) == *v7)
  {
LABEL_16:
    LODWORD(v7) = 0;
  }

  else
  {
    LODWORD(v7) = v2[460];
    if (v7)
    {
      LODWORD(v7) = v2[461];
      if (v7)
      {
        LODWORD(v7) = 8 * (*(v2 + 928) != 0);
      }
    }
  }

LABEL_17:
  v5 = v7 | v4;
  *(a1 + 24) = v5;
  v6 = v2[466];
  if ((v6 & 2) == 0)
  {
LABEL_8:
    if ((v6 & 4) == 0)
    {
      return (v5 >> 3) & 1;
    }

    goto LABEL_23;
  }

LABEL_18:
  if ((v5 & 8) != 0)
  {
    v8 = *(a1 + 3880);
    if (v8)
    {
      LODWORD(v8) = 8 * (*(*(a1 + 3880) + 8) != *v8);
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v5 = v8 | v5 & 0xFFFFFFF7;
  *(a1 + 24) = v5;
  if ((v2[466] & 4) != 0)
  {
LABEL_23:
    if ((v5 & 8) != 0)
    {
      v9 = *(a1 + 3888);
      if (v9)
      {
        LODWORD(v9) = 8 * (*(*(a1 + 3888) + 8) != *v9);
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v5 = v9 | v5 & 0xFFFFFFF7;
    *(a1 + 24) = v5;
  }

  return (v5 >> 3) & 1;
}

uint64_t sub_100018F1C(uint64_t a1)
{
  v28 = 0;
  v27 = 0;
  v1 = *(a1 + 2848);
  v25 = 1;
  v30 = v1;
  v29 = 1556480;
  v26 = 0;
  v2 = *(a1 + 3904);
  if (!v2)
  {
    v20 = "e: EMMP table for ALSS is NULL";
    goto LABEL_34;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = 126 - 2 * __clz((v5 - *v2) >> 3);
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_10001C6A4(v4, v5, &v31, v7, 1);
  v8 = *(a1 + 3904);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    v19 = 0;
    v18 = 0;
LABEL_24:
    if (*(v1 + 1545620) != v18 || *(v1 + 1545624) != v19)
    {
      v23 = *(v1 + 1545620);
      printf("e: processed ALSS EMMP dimensions (temp %u, bright %u)mismatch specified values (temp %u, bright %u)\n");
      return 0;
    }

    if ((*a1)(94, &v25, 20, 0, 0, *(a1 + 16)))
    {
      puts("i: Set ALSS EM config success");
      return 1;
    }

    v20 = "e: ALSS: set_block_cb_failed";
LABEL_34:
    puts(v20);
    return 0;
  }

  v11 = 0;
  v12 = 0;
  v24 = v1;
  v13 = v1 + 8;
  v14 = -1;
  v15 = -1;
  while (1)
  {
    v16 = **(a1 + 3904);
    if (*(*(a1 + 3904) + 8) == v16)
    {
      sub_10001E1C0();
    }

    v17 = *v9;
    if (*v9 == *v16)
    {
      if (v14 > 0)
      {
        goto LABEL_31;
      }

      v15 = 0;
      v11 = *(v17 + 6434);
      v12 = *(v17 + 6432);
      ++v14;
      goto LABEL_20;
    }

    if (v11 == *(v17 + 6434))
    {
      break;
    }

    if (v14 >= 1)
    {
LABEL_31:
      printf("e: ALSS EMMP exceeding max temperature count: %u > %u\n");
      return 0;
    }

    if (v12 == *(v17 + 6432))
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    ++v14;
    v11 = *(v17 + 6434);
    v12 = *(v17 + 6432);
LABEL_20:
    memcpy((v13 + 772800 * v14 + 6440 * v15), v17, 0x1928uLL);
    if (++v9 == v10)
    {
      v18 = v14 + 1;
      v19 = v15 + 1;
      v1 = v24;
      goto LABEL_24;
    }
  }

  if (v12 == *(v17 + 6432))
  {
    goto LABEL_20;
  }

  if (v15 < 119)
  {
    v12 = *(v17 + 6432);
    ++v15;
    goto LABEL_20;
  }

  printf("e: ALSS EMMP exceeding max brightness count: %u > %u\n");
  return 0;
}

uint64_t sub_100019174(uint64_t a1)
{
  v2 = *(a1 + 2832);
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:

        return sub_100019260(a1);
      case 2:

        return sub_100019608(a1);
      case 3:

        return sub_100019698(a1);
      default:
        goto LABEL_21;
    }
  }

  else
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {

        return sub_100019A58(a1);
      }

      else
      {

        return sub_100019AE8(a1);
      }
    }

    if (v2 != 6)
    {
      if (v2 == 7)
      {

        return sub_100019CD0(a1);
      }

LABEL_21:
      printf("e: invalid acss_config version %u\n", v2);
      return 0;
    }

    return sub_100019B80(a1);
  }
}

uint64_t sub_100019260(uint64_t a1)
{
  v43 = 0;
  v42 = 0;
  v1 = *(a1 + 2840);
  v40 = 1;
  v45 = v1;
  v44 = 2342912;
  v41 = 0;
  v2 = *(a1 + 3856);
  if (!v2)
  {
    goto LABEL_44;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = 126 - 2 * __clz((v5 - *v2) >> 3);
  v7 = v5 == v4 ? 0 : v6;
  sub_10001E268(v4, v5, &v39, v7, 1);
  v8 = *(a1 + 3856);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    v12 = 0;
    v11 = 0;
    v18 = 0;
    v17 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v37 = v1;
    v13 = v1 + 319696;
    v14 = -1;
    v15 = -1;
    do
    {
      v16 = **(a1 + 3856);
      if (*(*(a1 + 3856) + 8) == v16)
      {
        sub_10001E1C0();
      }

      if (*v9 == *v16)
      {
        if (v14 > 3)
        {
          goto LABEL_45;
        }

        v15 = 0;
        v11 = *(*v9 + 10370);
        v12 = *(*v9 + 5184);
        ++v14;
      }

      else if (v11 == *(*v9 + 10370))
      {
        if (v12 != *(*v9 + 5184))
        {
          if (v15 >= 35)
          {
            printf("e: GSC exceeding max brightness count: %u > %u\n");
            return 0;
          }

          v12 = *(*v9 + 5184);
          ++v15;
        }
      }

      else
      {
        if (v14 >= 4)
        {
LABEL_45:
          printf("e: GSC exceeding max temperature count: %u > %u\n");
          return 0;
        }

        if (v12 == *(*v9 + 5184))
        {
          v15 = -1;
        }

        else
        {
          v15 = 0;
        }

        ++v14;
        v11 = *(*v9 + 10370);
        v12 = *(*v9 + 5184);
      }

      memcpy((v13 + 373536 * v14 + 10376 * v15), *v9++, 0x2888uLL);
    }

    while (v9 != v10);
    v17 = v14 + 1;
    v18 = v15 + 1;
    v1 = v37;
  }

  v19 = v1 + 2326528;
  *(v1 + 2327548) = v17;
  *(v1 + 2327552) = v18;
  v20 = *(a1 + 3864);
  if (!v20)
  {
LABEL_44:
    puts("e: GSC table is NULL");
    return 0;
  }

  v21 = *v20;
  v22 = v20[1];
  v23 = 126 - 2 * __clz((v22 - *v20) >> 3);
  if (v22 == v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  sub_10001FE7C(v21, v22, &v39, v24, 1);
  v25 = *(a1 + 3864);
  v26 = *v25;
  v27 = v25[1];
  if (*v25 == v27)
  {
    v34 = 0;
    v33 = 0;
LABEL_47:
    *(v19 + 1040) = v33;
    *(v19 + 1044) = v34;
    *(v19 + 1067) = *(a1 + 3949);
    v39 = *(a1 + 2832);
    v35 = (*a1)(65, &v40, 20, &v39, 1, *(a1 + 16));
    if ((v35 & 1) == 0)
    {
      puts("e: ACSS: set_block_cb failed");
    }

    return v35;
  }

  v38 = v1 + 2326528;
  v28 = v1 + 2187376;
  v29 = -1;
  v30 = -1;
  while (1)
  {
    v31 = **(a1 + 3864);
    if (*(*(a1 + 3864) + 8) == v31)
    {
      sub_10001E1C0();
    }

    v32 = *v26;
    if (*v26 == *v31)
    {
      if (v29 > 0)
      {
        goto LABEL_49;
      }

      v30 = 0;
      v11 = *(v32 + 578);
      v12 = *(v32 + 576);
      ++v29;
      goto LABEL_42;
    }

    if (v11 == *(v32 + 578))
    {
      break;
    }

    if (v29 >= 1)
    {
LABEL_49:
      printf("e: EMMK exceeding max temperature count: %u > %u\n");
      return 0;
    }

    if (v12 == *(v32 + 576))
    {
      v30 = -1;
    }

    else
    {
      v30 = 0;
    }

    ++v29;
    v11 = *(v32 + 578);
    v12 = *(v32 + 576);
LABEL_42:
    memcpy((v28 + 70080 * v29 + 584 * v30), v32, 0x248uLL);
    if (++v26 == v27)
    {
      v33 = v29 + 1;
      v34 = v30 + 1;
      v19 = v38;
      goto LABEL_47;
    }
  }

  if (v12 == *(v32 + 576))
  {
    goto LABEL_42;
  }

  if (v30 < 119)
  {
    v12 = *(v32 + 576);
    ++v30;
    goto LABEL_42;
  }

  printf("e: EMMK exceeding max brightness count: %u > %u\n");
  return 0;
}

uint64_t sub_100019608(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  v9 = *(a1 + 2840);
  v8 = 0x4000;
  v5 = 0;
  *(v9 + 14000) = *(a1 + 3949);
  v3 = *(a1 + 2832);
  v4 = 1;
  v1 = (*a1)(65, &v4, 20, &v3, 1, *(a1 + 16));
  if ((v1 & 1) == 0)
  {
    puts("e: ACSS: set_block_cb failed");
  }

  return v1;
}

uint64_t sub_100019698(uint64_t a1)
{
  v45 = 0;
  v44 = 0;
  v1 = *(a1 + 2840);
  v42 = 1;
  v47 = v1;
  v46 = 2342912;
  v43 = 0;
  v2 = *(a1 + 3872);
  if (!v2)
  {
    v20 = "e: PCS table is NULL";
LABEL_46:
    puts(v20);
    return 0;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = 126 - 2 * __clz((v5 - *v2) >> 3);
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_1000218BC(v4, v5, &v41, v7, 1);
  v8 = *(a1 + 3872);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    v12 = 0;
    v11 = 0;
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v39 = v1;
    v13 = v1 + 79924;
    v14 = -1;
    v15 = -1;
    do
    {
      v16 = **(a1 + 3872);
      if (*(*(a1 + 3872) + 8) == v16)
      {
        sub_10001E1C0();
      }

      v17 = *v9;
      if (*v9 == *v16)
      {
        if (v14 > 3)
        {
          goto LABEL_47;
        }

        v15 = 0;
        v11 = *(v17 + 290);
        v12 = *(v17 + 288);
        ++v14;
      }

      else if (v11 == *(v17 + 290))
      {
        if (v12 != *(v17 + 288))
        {
          if (v15 >= 35)
          {
            printf("e: PCS exceeding max brightness count: %u > %u\n");
            return 0;
          }

          v12 = *(v17 + 288);
          ++v15;
        }
      }

      else
      {
        if (v14 >= 4)
        {
LABEL_47:
          printf("e: PCS exceeding max temperature count: %u > %u\n");
          return 0;
        }

        if (v12 == *(v17 + 288))
        {
          v15 = -1;
        }

        else
        {
          v15 = 0;
        }

        ++v14;
        v11 = *(v17 + 290);
        v12 = *(v17 + 288);
      }

      memcpy(&v13[2664 * v14 + 74 * v15], v17, 0x128uLL);
      ++v9;
    }

    while (v9 != v10);
    v18 = v14 + 1;
    v19 = v15 + 1;
    v1 = v39;
  }

  v21 = v1 + 479232;
  v1[479647] = v18;
  v1[479648] = v19;
  v22 = *(a1 + 3896);
  if (!v22)
  {
    v20 = "e: EMMP table for ACSS is NULL";
    goto LABEL_46;
  }

  v23 = *v22;
  v24 = v22[1];
  v25 = 126 - 2 * __clz((v24 - *v22) >> 3);
  if (v24 == v23)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  sub_10001C6A4(v23, v24, &v41, v26, 1);
  v27 = *(a1 + 3896);
  v28 = *v27;
  v29 = v27[1];
  if (*v27 == v29)
  {
    v36 = 0;
    v35 = 0;
LABEL_49:
    v21[420] = v35;
    v21[421] = v36;
    v21[425] = v21[425] & 0xFFFFFFFE | *(a1 + 3949);
    v41 = *(a1 + 2832);
    v37 = (*a1)(65, &v42, 20, &v41, 1, *(a1 + 16));
    if ((v37 & 1) == 0)
    {
      puts("e: ACSS: set_block_cb failed");
    }

    return v37;
  }

  v40 = v1 + 479232;
  v30 = v1 + 93244;
  v31 = -1;
  v32 = -1;
  while (1)
  {
    v33 = **(a1 + 3896);
    if (*(*(a1 + 3896) + 8) == v33)
    {
      sub_10001E1C0();
    }

    v34 = *v28;
    if (*v28 == *v33)
    {
      if (v31 > 0)
      {
        goto LABEL_51;
      }

      v32 = 0;
      v11 = *(v34 + 6434);
      v12 = *(v34 + 6432);
      ++v31;
      goto LABEL_43;
    }

    if (v11 == *(v34 + 6434))
    {
      break;
    }

    if (v31 >= 1)
    {
LABEL_51:
      printf("e: ACSS EMMP exceeding max temperature count: %u > %u\n");
      return 0;
    }

    if (v12 == *(v34 + 6432))
    {
      v32 = -1;
    }

    else
    {
      v32 = 0;
    }

    ++v31;
    v11 = *(v34 + 6434);
    v12 = *(v34 + 6432);
LABEL_43:
    memcpy(&v30[193200 * v31 + 1610 * v32], v34, 0x1928uLL);
    if (++v28 == v29)
    {
      v35 = v31 + 1;
      v36 = v32 + 1;
      v21 = v40;
      goto LABEL_49;
    }
  }

  if (v12 == *(v34 + 6432))
  {
    goto LABEL_43;
  }

  if (v32 < 119)
  {
    v12 = *(v34 + 6432);
    ++v32;
    goto LABEL_43;
  }

  printf("e: ACSS EMMP exceeding max brightness count: %u > %u\n");
  return 0;
}

uint64_t sub_100019A58(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  v9 = *(a1 + 2840);
  v8 = 0x8000;
  v5 = 0;
  *(v9 + 20144) = *(a1 + 3949);
  v3 = *(a1 + 2832);
  v4 = 1;
  v1 = (*a1)(65, &v4, 20, &v3, 1, *(a1 + 16));
  if ((v1 & 1) == 0)
  {
    puts("e: ACSS: set_block_cb failed");
  }

  return v1;
}

uint64_t sub_100019AE8(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  v9 = *(a1 + 2840);
  v8 = 180224;
  v5 = 0;
  *(v9 + 172088) = *(a1 + 3949);
  v3 = *(a1 + 2832);
  v4 = 1;
  v1 = (*a1)(65, &v4, 20, &v3, 1, *(a1 + 16));
  if ((v1 & 1) == 0)
  {
    puts("e: ACSS: set_block_cb failed");
  }

  return v1;
}

uint64_t sub_100019B80(uint64_t a1)
{
  v12 = 0;
  v11 = 0;
  v2 = *(a1 + 2840);
  v9 = 1;
  v14 = v2;
  v13 = 1884160;
  v10 = 0;
  v3 = *(a1 + 3880);
  if (!v3 || !*(a1 + 3888))
  {
    v6 = "e: PCS tables are NULL";
LABEL_14:
    puts(v6);
    return 0;
  }

  if ((sub_100019E2C(v3, v2 + 184544, *(v2 + 1876076), *(v2 + 1876080)) & 1) == 0)
  {
    v6 = "e: Failed to sort sync PCS tables";
    goto LABEL_14;
  }

  if ((sub_100019E2C(*(a1 + 3888), v2 + 246464, *(v2 + 1876106), *(v2 + 1876108)) & 1) == 0)
  {
    v6 = "e: Failed to sort async PCS tables";
    goto LABEL_14;
  }

  v4 = *(a1 + 3912);
  if (!v4)
  {
    v6 = "e: EMMP table for ACSS is NULL";
    goto LABEL_14;
  }

  if ((sub_100019FDC(v4, v2 + 308384, *(v2 + 1876096), *(v2 + 1876100)) & 1) == 0)
  {
    v6 = "e: Failed to sort EMMP tables";
    goto LABEL_14;
  }

  *(v2 + 1876116) = *(v2 + 1876116) & 0xFFFFFFFE | *(a1 + 3949);
  v8 = *(a1 + 2832);
  v5 = (*a1)(65, &v9, 20, &v8, 1, *(a1 + 16));
  if ((v5 & 1) == 0)
  {
    puts("e: ACSS: set_block_cb failed");
  }

  return v5;
}

uint64_t sub_100019CD0(uint64_t a1)
{
  v12 = 0;
  v11 = 0;
  v2 = *(a1 + 2840);
  v9 = 1;
  v14 = v2;
  v13 = 6193152;
  v10 = 0;
  v3 = *(a1 + 3880);
  if (!v3 || !*(a1 + 3888))
  {
    v6 = "e: PCS tables are NULL";
LABEL_13:
    puts(v6);
    return 0;
  }

  if ((sub_100019E2C(v3, v2 + 159968, *(v2 + 6182692), *(v2 + 6182696)) & 1) == 0)
  {
    v6 = "e: Failed to sort sync PCS tables";
    goto LABEL_13;
  }

  if ((sub_100019E2C(*(a1 + 3888), v2 + 221888, *(v2 + 6182722), *(v2 + 6182724)) & 1) == 0)
  {
    v6 = "e: Failed to sort async PCS tables";
    goto LABEL_13;
  }

  if ((*(v2 + 6182728) & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = *(a1 + 3920);
  if (!v4)
  {
    v6 = "e: EMMP table for ACSS is NULL";
    goto LABEL_13;
  }

  if (!sub_10001A194(v4, (v2 + 283808), 1))
  {
    v6 = "e: Failed copy for EM LUTS";
    goto LABEL_13;
  }

LABEL_8:
  *(v2 + 6182732) = *(v2 + 6182732) & 0xFFFFFFFE | *(a1 + 3949);
  v8 = *(a1 + 2832);
  v5 = (*a1)(65, &v9, 20, &v8, 1, *(a1 + 16));
  if ((v5 & 1) == 0)
  {
    puts("e: ACSS: set_block_cb failed");
  }

  return v5;
}

uint64_t sub_100019E2C(uint64_t **a1, uint64_t a2, int a3, int a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = 126 - 2 * __clz(v9 - v8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  sub_1000240C4(v8, v9, &v23, v11, 1);
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v21 = a4;
    v22 = a3;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v17 = -1;
    while (1)
    {
      if (a1[1] == *a1)
      {
        sub_10001E1C0();
      }

      v18 = *v12;
      if (*v12 == **a1)
      {
        if (++v16 > 4)
        {
LABEL_23:
          printf("e: Vector exceeding max i count: %u > %u\n");
          return 0;
        }

        v17 = 0;
        v14 = *(v18 + 338);
        v15 = *(v18 + 336);
      }

      else
      {
        if (v14 != *(v18 + 338))
        {
          if (++v16 >= 5)
          {
            goto LABEL_23;
          }

          v17 = -1;
          v14 = *(v18 + 338);
        }

        if (v15 != *(v18 + 336))
        {
          if (++v17 >= 0x24)
          {
            printf("e: Vector exceeding max j count: %u > %u\n");
            return 0;
          }

          v15 = *(v18 + 336);
        }
      }

      memcpy((a2 + 12384 * v16 + 344 * v17), v18, 0x158uLL);
      if (++v12 == v13)
      {
        v19 = v16 + 1;
        a4 = v21;
        a3 = v22;
        goto LABEL_19;
      }
    }
  }

  v19 = 0;
  v17 = -1;
LABEL_19:
  if (v19 != a3 || v17 + 1 != a4)
  {
    printf("e: Counted vectors [%d][%d] mismatch expected [%d][%d]\n");
    return 0;
  }

  return 1;
}

uint64_t sub_100019FDC(uint64_t **a1, uint64_t a2, int a3, int a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = 126 - 2 * __clz(v9 - v8);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  sub_100025B04(v8, v9, &v22, v11, 1);
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v21 = a3;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v17 = -1;
    while (1)
    {
      if (a1[1] == *a1)
      {
        sub_10001E1C0();
      }

      v18 = *v12;
      if (*v12 == **a1)
      {
        if (++v16 > 1)
        {
LABEL_23:
          printf("e: Vector exceeding max i count: %u > %u\n");
          return 0;
        }

        v17 = 0;
        v14 = *(v18 + 6526);
        v15 = *(v18 + 6524);
      }

      else
      {
        if (v14 != *(v18 + 6526))
        {
          if (++v16 >= 2)
          {
            goto LABEL_23;
          }

          v17 = -1;
          v14 = *(v18 + 6526);
        }

        if (v15 != *(v18 + 6524))
        {
          if (++v17 >= 0x78)
          {
            printf("e: Vector exceeding max j count: %u > %u\n");
            return 0;
          }

          v15 = *(v18 + 6524);
        }
      }

      memcpy((a2 + 783840 * v16 + 6532 * v17), v18, 0x1984uLL);
      if (++v12 == v13)
      {
        v19 = v16 + 1;
        a3 = v21;
        goto LABEL_19;
      }
    }
  }

  v19 = 0;
  v17 = -1;
LABEL_19:
  if (v19 != a3 || v17 + 1 != a4)
  {
    printf("e: Counted vectors [%d][%d] mismatch expected [%d][%d]\n");
    return 0;
  }

  return 1;
}

BOOL sub_10001A194(const void ***a1, void *__dst, int a3)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      if (a1[1] == *a1)
      {
        sub_10001E1C0();
      }

      v9 = *v4++;
      memcpy(__dst, v9, 0x5A0278uLL);
      ++v8;
    }

    while (v4 != v5);
  }

  return v8 == a3;
}

uint64_t sub_10001A224(uint64_t a1, int a2, _DWORD *a3, unsigned int *a4)
{
  v4 = *a4;
  if (*a4 <= 0xA)
  {
    if (v4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          v4 = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 10)
          {
            goto LABEL_2;
          }

          if (v10 > a3[v4 - 1])
          {
            *a4 = v4 + 1;
            a3[v4] = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_10001A2D4(uint64_t a1, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a4;
  if (*a4 <= 0xA)
  {
    if (v4)
    {
      v6 = 0;
      v7 = a2;
      while (1)
      {
        v8 = a3[v6];
        if (v8 == a2)
        {
          return 1;
        }

        v9 = v8 <= a2 && v7 == a2;
        v10 = a2;
        if (!v9)
        {
          a3[v6] = v7;
          v4 = *a4;
          v10 = v8;
        }

        ++v6;
        v7 = v10;
        if (v6 >= v4)
        {
          if (v4 == 10)
          {
            goto LABEL_2;
          }

          if (v10 > a3[v4 - 1])
          {
            *a4 = v4 + 1;
            a3[v4] = v10;
          }

          return 1;
        }
      }
    }

    else
    {
      result = 1;
      *a4 = 1;
      *a3 = a2;
    }
  }

  else
  {
LABEL_2:
    puts("e: Too many index values for LUT tables");
    return 0;
  }

  return result;
}

uint64_t sub_10001A384(uint64_t a1)
{
  *(a1 + 32) = *(a1 + 28);
  v2 = a1 + 32;
  if (*(a1 + 3950) == 1)
  {
    sub_10001C038(a1, a1 + 32);
  }

  v3 = (*a1)(27, v2, 2096, 0, 0, *(a1 + 16));
  if (v3)
  {
    v4 = "i: set PDC table config succeeded";
  }

  else
  {
    v4 = "e: failed to set PDC table config";
  }

  puts(v4);
  return v3;
}

uint64_t sub_10001A408(uint64_t a1)
{
  v2 = *(a1 + 28);
  v3 = *(a1 + 2200);
  memcpy(__dst, &unk_10002A5A0, sizeof(__dst));
  LOWORD(v4) = *(a1 + 2128);
  printf("i: PDC bin interpolation, bin = %g\n", (*(a1 + 2132) + v4));
  if (!v3)
  {
LABEL_54:
    puts("i: set PDC LUTs succeeded");
    v67 = 1;
    goto LABEL_55;
  }

  v5 = &__dst[1];
  v6 = &__dst[217] + 6;
  v7 = 1;
  do
  {
    v72 = 0xAAAAAAAAAAAAAAAALL;
    v73 = 0xAAAAAAAAAAAAAAAALL;
    v9 = *(v3 + 3);
    v8 = *(v3 + 4);
    LODWORD(v72) = *(v3 + 2);
    HIDWORD(v72) = v8;
    v10 = *(v3 + 6);
    v73 = __PAIR64__(v10, v9);
    if (*(a1 + 2132) == 0.0)
    {
      v11 = (v3 + 4);
      goto LABEL_20;
    }

    v12 = sub_10000804C(a1, v2, (*(a1 + 2128) + 1), *(v3 + 2), v8, 0, *(v3 + 6), v10);
    if (!v12)
    {
      v70 = "e: bin tables do not correlate.";
      goto LABEL_61;
    }

    LODWORD(__dst[0]) = v2;
    switch(v2)
    {
      case 3:
        v51 = 0;
        v52 = v3 + 5;
        v53 = *(v3 + 1754);
        v54 = v12 + 10;
        if (v53 <= *(v12 + 1754))
        {
          LOWORD(v53) = *(v12 + 1754);
        }

        WORD2(__dst[434]) = v53;
        v55 = *(a1 + 2132);
        v56 = v5;
        while (1)
        {
          v57 = 0;
          v58 = 1;
          do
          {
            v59 = (*(v52 + v57) + (v55 * (*(v54 + v57) - *(v52 + v57)))) + 0.5;
            *(v56 + v57) = v59;
            v58 &= v59 == 0;
            v57 += 2;
          }

          while (v57 != 578);
          if (v58)
          {
            goto LABEL_50;
          }

          ++v51;
          v52 = (v52 + 578);
          v54 = (v54 + 578);
          v56 = (v56 + 578);
          if (v51 == 3)
          {
            v60 = 0;
            v61 = v3 + 1774;
            v62 = v12 + 1774;
            v63 = v6;
            while (1)
            {
              v64 = 0;
              v65 = 1;
              do
              {
                v66 = (*(v61 + v64) + (v55 * (*&v62[v64] - *(v61 + v64)))) + 0.5;
                *&v63[v64] = v66;
                v65 &= v66 == 0;
                v64 += 2;
              }

              while (v64 != 578);
              if (v65)
              {
                break;
              }

              ++v60;
              v61 += 578;
              v62 += 578;
              v63 += 578;
              v11 = __dst;
              if (v60 == 3)
              {
                goto LABEL_20;
              }
            }

LABEL_51:
            printf("e: lerped PMLUT[%d, %d, %d, %d, %d] is all zeros");
            return 0;
          }
        }

      case 4:
        v35 = 0;
        v36 = v3 + 5;
        v37 = *(v3 + 989);
        v38 = v12 + 10;
        if (v37 <= *(v12 + 989))
        {
          LOWORD(v37) = *(v12 + 989);
        }

        WORD1(__dst[243]) = v37;
        v39 = *(a1 + 2132);
        v40 = v5;
        while (1)
        {
          v41 = 0;
          v42 = 1;
          do
          {
            v43 = (*(v36 + v41) + (v39 * (*(v38 + v41) - *(v36 + v41)))) + 0.5;
            *(v40 + v41) = v43;
            v42 &= v43 == 0;
            v41 += 2;
          }

          while (v41 != 578);
          if (v42)
          {
            break;
          }

          ++v35;
          v36 = (v36 + 578);
          v38 = (v38 + 578);
          v40 = (v40 + 578);
          if (v35 == 3)
          {
            v44 = 0;
            v45 = v3 + 1774;
            v46 = v12 + 1774;
            v47 = v6;
            while (1)
            {
              v48 = 0;
              v49 = 1;
              do
              {
                v50 = (*(v45 + v48) + (v39 * (*&v46[v48] - *(v45 + v48)))) + 0.5;
                *&v47[v48] = v50;
                v49 &= v50 == 0;
                v48 += 2;
              }

              while (v48 != 68);
              if (v49)
              {
                goto LABEL_51;
              }

              ++v44;
              v45 += 68;
              v46 += 68;
              v47 += 68;
              v11 = __dst;
              if (v44 == 3)
              {
                goto LABEL_20;
              }
            }
          }
        }

LABEL_50:
        printf("e: lerped DCLUT[%d, %d, %d, %d, %d] is all zeros");
        return 0;
      case 5:
        v71 = v5;
        v13 = v6;
        LOWORD(__dst[3]) = *(a1 + 2116);
        v14 = *(a1 + 418);
        v15 = *(a1 + 420);
        v16 = v3[6];
        v17 = *(v12 + 6);
        v18 = __dst[2];
        if (__dst[2] || (LODWORD(__dst[1]) = *(v3 + 10), v18 = malloc_type_aligned_alloc(0x4000uLL, LODWORD(__dst[1]), 0x1000040BDFB0063uLL), (__dst[2] = v18) != 0))
        {
          v19 = (3 * v14 * v14);
          if (!v19)
          {
            goto LABEL_62;
          }

          v20 = (3 * v15 * v15);
          v21 = &v16[v19];
          v22 = &v17[v19];
          v23 = &v18[v19];
          v24 = *(a1 + 2132);
          v25 = 1;
          do
          {
            v27 = *v16++;
            v26 = v27;
            v28 = *v17++;
            v29 = (v26 + (v24 * (v28 - v26))) + 0.5;
            *v18++ = v29;
            v25 &= v29 == 0;
            --v19;
          }

          while (v19);
          if (v25)
          {
LABEL_62:
            printf("e: lerped DCLUT[%d, %d, %d, %d] is all zeros");
          }

          else
          {
            v6 = v13;
            v5 = v71;
            if (v20)
            {
              v30 = 1;
              do
              {
                v32 = *v21++;
                v31 = v32;
                v33 = *v22++;
                v34 = (v31 + (v24 * (v33 - v31))) + 0.5;
                *v23++ = v34;
                v30 &= v34 == 0;
                --v20;
              }

              while (v20);
              if ((v30 & 1) == 0)
              {
                break;
              }
            }

            printf("e: lerped PMLUT[%d, %d, %d, %d] is all zeros");
          }

          return 0;
        }

        v70 = "e: no memory to prepare PDC LUTs";
LABEL_61:
        puts(v70);
        return 0;
    }

    v11 = __dst;
LABEL_20:
    v7 &= (*a1)(26, v11, 3480, &v72, 4, *(a1 + 16));
    if ((v7 & 1) == 0)
    {
      printf("e: failed to set PDC LUT [%d %d %d %d] \n", v72, HIDWORD(v72), v73, HIDWORD(v73));
    }

    v3 = *v3;
  }

  while (v3);
  if (v7)
  {
    goto LABEL_54;
  }

  v67 = 0;
LABEL_55:
  if (LODWORD(__dst[0]) == 5)
  {
    v68 = __dst[2];
    if (__dst[2])
    {
      __dst[2] = 0;
      free(v68);
    }
  }

  return v67;
}

uint64_t sub_10001A99C(uint64_t a1)
{
  *(a1 + 2516) = 1;
  v1 = (*a1)(5, a1 + 2516, 308, 0, 0, *(a1 + 16));
  if (v1)
  {
    v2 = "i: set PRC table config succeeded";
  }

  else
  {
    v2 = "e: failed to set PRC table config";
  }

  puts(v2);
  return v1;
}

uint64_t sub_10001AA04(uint64_t a1)
{
  v1 = *(a1 + 2824);
  if (v1)
  {
    v3 = 1;
    do
    {
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      v5 = 0;
      v6 = *(v1 + 1);
      if (((*a1)(3, v1 + 3, 1548, &v5, 5, *(a1 + 16)) & 1) == 0)
      {
        printf("e: failed to set PRC LUT [t%d s%d b%d p%d]\n", v6, DWORD1(v6), DWORD2(v6), HIDWORD(v6));
        v3 = 0;
      }

      v1 = *v1;
    }

    while (v1);
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  puts("i: set PRC LUTs succeeded");
  return 1;
}

uint64_t sub_10001AAFC(uint64_t a1)
{
  v1 = (*a1)(82, a1 + 2864, 544, 0, 0, *(a1 + 16));
  if (v1)
  {
    v2 = "i: set prox table config succeeded";
  }

  else
  {
    v2 = "e: failed to set prox table config";
  }

  puts(v2);
  return v1;
}

uint64_t sub_10001AB5C()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 2864);
  v2 = *(v0 + 3600);
  v3 = *(v0 + 3584);
  bzero(v72, 0xC84uLL);
  bzero(v70, 0xA54uLL);
  printf("i: Prox PP LUT bin interpolation, bin = %g\n", (*(v0 + 3568) + *(v0 + 3564)));
  if (v2)
  {
    v4 = 1;
    while (1)
    {
      v5 = *(v2 + 664);
      v6 = *(v2 + 665);
      v75 = v5;
      v76 = v6;
      v7 = *(v2 + 666);
      v77 = v7;
      v8 = *(v0 + 3568);
      if (v8 == 0.0)
      {
        v9 = v2 + 1;
      }

      else
      {
        v11 = *(v0 + 3608);
        if (!v11)
        {
LABEL_29:
          v37 = "e: Prox PP bin tables do no correlate";
LABEL_54:
          puts(v37);
          return 0;
        }

        while (*(v11 + 664) != v5 || *(v11 + 665) != v6 || *(v11 + 666) != v7)
        {
          v11 = *v11;
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        v12 = 0;
        v13 = v2 + 6;
        v14 = *(v0 + 3164);
        v15 = v11 + 6;
        v16 = v11 + 2412;
        v17 = v71;
        do
        {
          if (v14)
          {
            v18 = 0;
            v19 = *(v0 + 3162);
            v20 = v17;
            v21 = v15;
            v22 = v13;
            do
            {
              v23 = *(&v2[10 * v12 + 301] + v18 + 1);
              v24 = v23 + (v8 * (*(v16 + 80 * v12 + 4 * v18) - v23));
              v25 = v24 + 0.5;
              if (v24 >= 0.0)
              {
                v26 = 0.0;
              }

              else
              {
                v26 = 1.0;
              }

              *&v71[80 * v12 + 2400 + 4 * v18] = (v25 - v26);
              v27 = v19;
              v28 = v20;
              v29 = v21;
              v30 = v22;
              if (v19)
              {
                do
                {
                  v32 = *v30++;
                  v31 = v32;
                  v33 = *v29++;
                  v34 = v31 + (v8 * (v33 - v31));
                  v35 = v34 + 0.5;
                  if (v34 >= 0.0)
                  {
                    v36 = 0.0;
                  }

                  else
                  {
                    v36 = 1.0;
                  }

                  *v28++ = (v35 - v36);
                  --v27;
                }

                while (v27);
              }

              ++v18;
              v22 += 20;
              v21 += 20;
              v20 += 20;
            }

            while (v18 != v14);
          }

          ++v12;
          v13 += 400;
          v15 += 400;
          v17 += 800;
        }

        while (v12 != 3);
        v9 = v70;
      }

      *v9 = v1;
      v10 = *(v0 + 16);
      v4 &= (*v0)(84);
      if ((v4 & 1) == 0)
      {
        printf("e: failed to set Prox PP LUT [t %d b %d p %d]\n", v75, v76, v77);
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_31;
      }
    }
  }

  v4 = 1;
LABEL_31:
  printf("i: Prox PD LUT bin interpolation, bin = %g\n", (*(v0 + 3552) + *(v0 + 3548)));
  for (; v3; v3 = *v3)
  {
    v38 = *(v3 + 803);
    v75 = v38;
    v39 = *(v0 + 3552);
    v40 = v0 + 3592;
    if (v39 == 0.0)
    {
      v41 = v3 + 1;
    }

    else
    {
      do
      {
        v40 = *v40;
        if (!v40)
        {
          v37 = "e: Prox PD bin tables do no correlate";
          goto LABEL_54;
        }
      }

      while (*(v40 + 3212) != v38);
      v42 = *(v0 + 2912);
      if (*(v0 + 2912))
      {
        v43 = 0;
        v44 = *(v0 + 2916);
        v45 = v3 + 3;
        v46 = (v40 + 12);
        v47 = &v73;
        do
        {
          v48 = v44;
          v49 = v47;
          v50 = v46;
          v51 = v45;
          if (v44)
          {
            do
            {
              v52 = *v51++;
              v53 = v52;
              v54 = *v50++;
              *v49++ = v53 + (v39 * (v54 - v53));
              --v48;
            }

            while (v48);
          }

          ++v43;
          v45 += 20;
          v46 += 20;
          v47 += 20;
        }

        while (v43 != v42);
      }

      v55 = *(v0 + 2914);
      if (*(v0 + 2914))
      {
        v56 = 0;
        v57 = *(v0 + 2918);
        v58 = v3 + 403;
        v59 = (v40 + 1612);
        v60 = &v74;
        do
        {
          v61 = v57;
          v62 = v60;
          v63 = v59;
          v64 = v58;
          if (v57)
          {
            do
            {
              v65 = *v64++;
              v66 = v65;
              v67 = *v63++;
              *v62++ = v66 + (v39 * (v67 - v66));
              --v61;
            }

            while (v61);
          }

          ++v56;
          v58 += 20;
          v59 += 20;
          v60 += 20;
        }

        while (v56 != v55);
      }

      v41 = v72;
    }

    *v41 = v1;
    v68 = *(v0 + 16);
    v4 &= (*v0)(83);
    if ((v4 & 1) == 0)
    {
      printf("e: failed to set Prox PD LUT [t %d]\n", v75);
    }
  }

  if (v4)
  {
    puts("i: set Prox LUTs succeeded");
  }

  return 1;
}

uint64_t sub_10001AFCC(uint64_t a1)
{
  v1 = (*a1)(85, a1 + 3616, 72, 0, 0, *(a1 + 16));
  if (v1)
  {
    v2 = "i: set LLMT table config succeeded";
  }

  else
  {
    v2 = "e: failed to set LLMT table config";
  }

  puts(v2);
  return v1;
}

uint64_t sub_10001B02C(uint64_t a1)
{
  v1 = (*a1)(111, a1 + 3692, 113, 0, 0, *(a1 + 16));
  if (v1)
  {
    v2 = "i: set PTUC table config succeeded";
  }

  else
  {
    v2 = "e: failed to set PTUC table config";
  }

  puts(v2);
  return v1;
}

uint64_t sub_10001B08C(uint64_t a1)
{
  v1 = *(a1 + 3808);
  memset(v5, 0, 20);
  if (v1)
  {
    v3 = 1;
    do
    {
      LODWORD(v5[0]) = 1;
      *(&v5[1] + 4) = v1 + 10;
      LODWORD(v5[1]) = 0x4000;
      BYTE4(v5[0]) = 0;
      if (((*a1)(112, v5, 20, 0, 0, *(a1 + 16)) & 1) == 0)
      {
        printf("e: failed to set PTUC TLS LUT brightness %d\n", *(v1 + 4));
        v3 = 0;
      }

      v1 = *v1;
    }

    while (v1);
    if ((v3 & 1) == 0)
    {
      return 0;
    }
  }

  puts("i: set PTUC TLS LUTs succeeded");
  return 1;
}

uint64_t sub_10001B158(uint64_t a1)
{
  if (!*(a1 + 2200))
  {
    return 1;
  }

  *(a1 + 24) &= ~1u;
  if ((*(a1 + 28) - 6) <= 0xFFFFFFFC)
  {
    printf("e: unexpected PDC table version %d\n", *(a1 + 28));
    return 0;
  }

  if (*(a1 + 2132) > 0.0 && !*(a1 + 2208))
  {
    v46 = "e: PDC missing bin";
    goto LABEL_116;
  }

  v2 = a1 + 36;
  v3 = a1 + 116;
  v4 = a1 + 276;
  v5 = a1 + 196;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = v6 & 1;
    if (v6)
    {
      v9 = (a1 + 2200);
    }

    else
    {
      v9 = (a1 + 2208);
    }

    v10 = *v9;
    if (!v8 && !v10)
    {
LABEL_109:
      v43 = *(a1 + 2200);
      v44 = v43 == 0;
      v1 = v43 != 0;
      v45 = *(a1 + 24) & 0xFFFE;
      if (!v44)
      {
        ++v45;
      }

      *(a1 + 24) = v45;
      return v1;
    }

    v11 = *(a1 + 28);
    if (v11 == 3)
    {
      for (i = 0; v10; v10 = *v10)
      {
        v35 = *(a1 + 246);
        if (*(a1 + 246))
        {
          v36 = 0;
          while (*(v2 + 4 * v36) != *(v10 + 2))
          {
            if (v35 == ++v36)
            {
              goto LABEL_85;
            }
          }

          LODWORD(v35) = v36;
        }

LABEL_85:
        *(v10 + 2) = v35;
        v37 = *(a1 + 248);
        if (*(a1 + 248))
        {
          v38 = 0;
          while (*(a1 + 76 + 4 * v38) != *(v10 + 4))
          {
            if (v37 == ++v38)
            {
              goto LABEL_91;
            }
          }

          LODWORD(v37) = v38;
        }

LABEL_91:
        *(v10 + 4) = v37;
        v39 = *(a1 + 254);
        if (*(a1 + 254))
        {
          v40 = 0;
          while (*(v10 + 3) != *(v3 + 2 * v40))
          {
            if (v39 == ++v40)
            {
              goto LABEL_97;
            }
          }

          LODWORD(v39) = v40;
        }

LABEL_97:
        *(v10 + 3) = v39;
        v41 = *(a1 + 256);
        if (*(a1 + 256))
        {
          v42 = 0;
          while (*(a1 + 136 + 4 * v42) != *(v10 + 6))
          {
            if (v41 == ++v42)
            {
              goto LABEL_103;
            }
          }

          LODWORD(v41) = v42;
        }

LABEL_103:
        *(v10 + 6) = v41;
        if (*(v10 + 5) != 7)
        {
          goto LABEL_112;
        }

        ++i;
      }

      v20 = *(a1 + 248) * *(a1 + 246) * *(a1 + 254);
      v21 = *(a1 + 256);
LABEL_106:
      v34 = v20 * v21;
      goto LABEL_107;
    }

    if (v11 == 5)
    {
      break;
    }

    if (v11 == 4)
    {
      i = 0;
      if (v10)
      {
        while (1)
        {
          v13 = *(a1 + 350);
          if (*(a1 + 350))
          {
            v14 = 0;
            while (*(v2 + 4 * v14) != *(v10 + 2))
            {
              if (v13 == ++v14)
              {
                goto LABEL_23;
              }
            }

            LODWORD(v13) = v14;
          }

LABEL_23:
          *(v10 + 2) = v13;
          v15 = *(a1 + 352);
          if (*(a1 + 352))
          {
            v16 = 0;
            while (*(v3 + 4 * v16) != *(v10 + 4))
            {
              if (v15 == ++v16)
              {
                goto LABEL_29;
              }
            }

            LODWORD(v15) = v16;
          }

LABEL_29:
          *(v10 + 4) = v15;
          if (*(a1 + 358) < 2u)
          {
            LODWORD(j) = 0;
          }

          else
          {
            for (j = 0; j != 20; ++j)
            {
              if (!*(v5 + 2 * j))
              {
                break;
              }

              if (*(v10 + 3) == *(v5 + 2 * j))
              {
                break;
              }
            }
          }

          *(v10 + 3) = j;
          v18 = *(a1 + 360);
          if (*(a1 + 360))
          {
            v19 = 0;
            while (*(v10 + 6) != *(v4 + 2 * v19))
            {
              if (v18 == ++v19)
              {
                goto LABEL_42;
              }
            }

            LODWORD(v18) = v19;
          }

LABEL_42:
          *(v10 + 6) = v18;
          if (*(v10 + 5) != 7)
          {
            break;
          }

          ++i;
          v10 = *v10;
          if (!v10)
          {
            goto LABEL_44;
          }
        }

LABEL_112:
        v46 = "e: PDC missing at least 1 channel";
        goto LABEL_116;
      }

LABEL_44:
      v20 = *(a1 + 352) * *(a1 + 350) * *(a1 + 358);
      v21 = *(a1 + 360);
      goto LABEL_106;
    }

LABEL_108:
    v6 = 0;
    if ((v7 & 1) == 0)
    {
      goto LABEL_109;
    }
  }

  v22 = *(a1 + 414);
  if (v22 != *(a1 + 2188) || (v23 = *(a1 + 422), v23 != *(a1 + 2190)) || (v24 = *(a1 + 416), v24 != *(a1 + 2192)) || (v25 = *(a1 + 426), v25 != *(a1 + 2196)))
  {
    v46 = "e: reported PDC tap points (temp/DBV/RR/HGOD status) mismatch actual counts";
    goto LABEL_116;
  }

  i = 0;
  if (v10)
  {
    while (1)
    {
      v26 = *(a1 + 414);
      if (*(a1 + 414))
      {
        v27 = 0;
        while (*(v2 + 4 * v27) != *(v10 + 2))
        {
          if (v26 == ++v27)
          {
            goto LABEL_56;
          }
        }

        LODWORD(v26) = v27;
      }

LABEL_56:
      *(v10 + 2) = v26;
      v28 = *(a1 + 416);
      if (*(a1 + 416))
      {
        v29 = 0;
        while (*(v3 + 4 * v29) != *(v10 + 4))
        {
          if (v28 == ++v29)
          {
            goto LABEL_62;
          }
        }

        LODWORD(v28) = v29;
      }

LABEL_62:
      *(v10 + 4) = v28;
      v30 = *(a1 + 424);
      if (*(a1 + 424))
      {
        v31 = 0;
        while (*(a1 + 436 + 4 * v31) != *(v10 + 3))
        {
          if (v30 == ++v31)
          {
            goto LABEL_68;
          }
        }

        LODWORD(v30) = v31;
      }

LABEL_68:
      *(v10 + 3) = v30;
      v32 = *(a1 + 426);
      if (*(a1 + 426))
      {
        v33 = 0;
        while (*(v10 + 6) != *(v4 + 2 * v33))
        {
          if (v32 == ++v33)
          {
            goto LABEL_74;
          }
        }

        LODWORD(v32) = v33;
      }

LABEL_74:
      *(v10 + 6) = v32;
      if (*(v10 + 5) != 7)
      {
        goto LABEL_112;
      }

      ++i;
      v10 = *v10;
      if (!v10)
      {
        v22 = *(a1 + 414);
        v24 = *(a1 + 416);
        v23 = *(a1 + 422);
        v25 = *(a1 + 426);
        break;
      }
    }
  }

  v34 = v24 * v22 * v23 * v25;
LABEL_107:
  if (i == v34)
  {
    goto LABEL_108;
  }

  v46 = "e: missing PDC LUTs";
LABEL_116:
  puts(v46);
  return 0;
}

uint64_t sub_10001B600(uint64_t a1)
{
  v1 = *(a1 + 2824);
  if (!v1)
  {
    return 1;
  }

  if (*(a1 + 2716) < 2u || *(a1 + 4 * (*(a1 + 2816) - 1) + 2720) <= (*(a1 + 2816) + 1) || (sub_10001BD44(a1), (v1 = *(a1 + 2824)) != 0))
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 2616);
      if (v4)
      {
        v5 = 0;
        while (*(a1 + 2520 + 4 * v5) != *(v1 + 2))
        {
          if (v4 == ++v5)
          {
            LODWORD(v5) = *(a1 + 2616);
            break;
          }
        }
      }

      else
      {
        LODWORD(v5) = 0;
      }

      *(v1 + 2) = v5;
      v6 = *(a1 + 2716);
      if (v6)
      {
        v7 = 0;
        while (*(a1 + 2620 + 4 * v7) != *(v1 + 4))
        {
          if (v6 == ++v7)
          {
            LODWORD(v7) = *(a1 + 2716);
            break;
          }
        }
      }

      else
      {
        LODWORD(v7) = 0;
      }

      *(v1 + 4) = v7;
      v8 = *(a1 + 2816);
      if (v8)
      {
        v9 = 0;
        while (*(a1 + 2720 + 4 * v9) != *(v1 + 3))
        {
          if (v8 == ++v9)
          {
            LODWORD(v9) = *(a1 + 2816);
            break;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      *(v1 + 3) = v9;
      ++v3;
      v1 = *v1;
    }

    while (v1);
    if (v3 != *(a1 + 2716) * *(a1 + 2616) * *(a1 + 2816) * *(a1 + 2820))
    {
      puts("e: missing PRC LUTs");
      return 0;
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  if (result)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFB | v11;
  return result;
}

uint64_t sub_10001B790(uint64_t a1)
{
  if (!*(a1 + 3584) || !*(a1 + 3600))
  {
    return 1;
  }

  if (*(a1 + 3552) == 0.0 || *(a1 + 3592))
  {
    if (*(a1 + 3568) == 0.0 || *(a1 + 3608))
    {
      v1 = *(a1 + 3424);
      v2 = *(a1 + 2870);
      if (v1 == v2 && *(a1 + 3412) == v1 && (v3 = *(a1 + 3416), v4 = *(a1 + 3160), v3 == v4) && (v5 = *(a1 + 3420), v6 = *(a1 + 3166), v5 == v6))
      {
        *(a1 + 24) &= ~0x20u;
        v7 = a1 + 2872;
        v8 = 1;
        while (1)
        {
          v9 = v8;
          v10 = v8 & 1;
          if (v8)
          {
            v11 = (a1 + 3584);
          }

          else
          {
            v11 = (a1 + 3592);
          }

          v12 = *v11;
          if (!v10 && !v12)
          {
LABEL_27:
            v14 = 1;
            while (1)
            {
              v15 = v14;
              v16 = v14 & 1;
              if (v14)
              {
                v17 = (a1 + 3600);
              }

              else
              {
                v17 = (a1 + 3608);
              }

              v18 = *v17;
              if (!v16 && !v18)
              {
LABEL_58:
                *(a1 + 24) |= 0x20u;
                return 1;
              }

              if (v18)
              {
                break;
              }

LABEL_57:
              v14 = 0;
              if ((v15 & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            while (1)
            {
              if (v2)
              {
                v19 = 0;
                while (*(v18 + 664) != *(v7 + 4 * v19))
                {
                  if (v1 == ++v19)
                  {
                    goto LABEL_66;
                  }
                }
              }

              else
              {
                LODWORD(v19) = 0;
              }

              if (v19 == v1)
              {
LABEL_66:
                *(v18 + 664);
                printf("e: unspecified PP LUT temperature %d C\n");
                return 0;
              }

              *(v18 + 664) = v19;
              if (v4)
              {
                v20 = 0;
                while (*(v18 + 665) != *(a1 + 3208 + 4 * v20))
                {
                  if (v3 == ++v20)
                  {
                    goto LABEL_67;
                  }
                }
              }

              else
              {
                LODWORD(v20) = 0;
              }

              if (v20 == v3)
              {
LABEL_67:
                *(v18 + 665);
                printf("e: unspecified PP LUT brightness %d\n");
                return 0;
              }

              *(v18 + 665) = v20;
              if (v6)
              {
                v21 = 0;
                while (*(v18 + 666) != *(a1 + 3168 + 4 * v21))
                {
                  if (v5 == ++v21)
                  {
                    goto LABEL_68;
                  }
                }
              }

              else
              {
                LODWORD(v21) = 0;
              }

              if (v21 == v5)
              {
LABEL_68:
                v26 = *(v18 + 666);
                printf("e: unspecified PP LUT scan plan 0x%x\n");
                return 0;
              }

              *(v18 + 666) = v21;
              if (*(v18 + 663) != 7)
              {
                break;
              }

              v18 = *v18;
              if (!v18)
              {
                goto LABEL_57;
              }
            }

            v23 = "e: PP LUT missing color channel";
            goto LABEL_61;
          }

          if (v12)
          {
            break;
          }

LABEL_26:
          v8 = 0;
          if ((v9 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        while (1)
        {
          if (v2)
          {
            v13 = 0;
            while (*(v12 + 803) != *(v7 + 4 * v13))
            {
              if (v1 == ++v13)
              {
                goto LABEL_65;
              }
            }
          }

          else
          {
            LODWORD(v13) = 0;
          }

          if (v13 == v1)
          {
            break;
          }

          *(v12 + 803) = v13;
          v12 = *v12;
          if (!v12)
          {
            goto LABEL_26;
          }
        }

LABEL_65:
        *(v12 + 803);
        printf("e: unspecified PD LUT temperature value %d C\n");
      }

      else
      {
        v23 = "e: actual number of Prox LUTs differ from specified";
LABEL_61:
        puts(v23);
      }
    }

    else
    {
      v25 = (*(a1 + 3564) + 1);
      printf("e: missing prox PP table bin %d\n");
    }
  }

  else
  {
    v24 = (*(a1 + 3548) + 1);
    printf("e: missing prox PD table bin %d\n");
  }

  return 0;
}

uint64_t sub_10001BA90(uint64_t a1)
{
  v1 = *(a1 + 3616);
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (a1 + 3652);
  do
  {
    if (v2)
    {
      v6 = *v5;
      if (v6 > *(v5 - 1))
      {
        v10 = "e: LLMT APL Thresholds not in descending order";
LABEL_20:
        puts(v10);
        return 0;
      }
    }

    else
    {
      v6 = *(a1 + 3652);
    }

    if (!(v6 | v3))
    {
      v4 = v2;
      v3 = 1;
    }

    ++v2;
    ++v5;
  }

  while (v2 != 16);
  v7 = 0;
  v8 = (a1 + 3620);
  do
  {
    if (v7 && *v8 < *(v8 - 1))
    {
      v10 = "e: LLMT DBV Thresholds not in ascending order";
      goto LABEL_20;
    }

    ++v7;
    ++v8;
  }

  while (v7 != 16);
  if (v3 && *(a1 + 3620 + 2 * v4) == *(a1 + 3684))
  {
    v9 = v1 == 1;
    *(a1 + 24) = *(a1 + 24) & 0xFFBF | (v9 << 6);
    return v9;
  }

  printf("e: LLMT Max DBV Threshold doesn't correspond to 0%% APL\n");
  return 0;
}

uint64_t sub_10001BB98(uint64_t a1)
{
  v1 = *(a1 + 3808);
  if (!v1)
  {
    return 1;
  }

  v2 = 0;
  *(a1 + 24) &= ~0x80u;
  v3 = (a1 + 3737);
  v4 = (a1 + 3771);
  v5 = (a1 + 3747);
  do
  {
    v6 = *(a1 + 3692);
    if (v6 == 1)
    {
      if (!*(a1 + 3745))
      {
        goto LABEL_27;
      }

      v9 = *(v1 + 4);
      if (v9 == *v5)
      {
        v10 = 0;
LABEL_25:
        v14 = 35;
        goto LABEL_26;
      }

      v15 = 0;
      while (*(a1 + 3745) > ++v15)
      {
        v10 = v15;
        if (v9 == v5[v15])
        {
          goto LABEL_25;
        }
      }
    }

    else if (v6 == 2)
    {
      if (*(a1 + 3769))
      {
        v7 = *(v1 + 4);
        if (v7 == *v3)
        {
          v8 = 0;
LABEL_14:
          *(v1 + 39) = v8;
        }

        else
        {
          v11 = 0;
          while (*(a1 + 3769) > ++v11)
          {
            v8 = v11;
            if (v7 == v3[v11])
            {
              goto LABEL_14;
            }
          }
        }
      }

      if (*(a1 + 3803))
      {
        v12 = *(v1 + 37);
        if (v12 == *v4)
        {
          v10 = 0;
LABEL_21:
          v14 = 41;
LABEL_26:
          *(v1 + v14) = v10;
          goto LABEL_27;
        }

        v13 = 0;
        while (*(a1 + 3803) > ++v13)
        {
          v10 = v13;
          if (v12 == v4[v13])
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_27:
    ++v2;
    v1 = *v1;
  }

  while (v1);
  v16 = *(a1 + 3692);
  if (v16 == 2)
  {
    v18 = *(a1 + 3769);
    v19 = *(a1 + 3803);
    if (v2 == v19 * v18 || v18 == *(a1 + 3733) || v19 == *(a1 + 3735))
    {
      goto LABEL_36;
    }

LABEL_31:
    puts("e: missing PTUC LUTs");
    return 0;
  }

  else
  {
    if (v16 == 1 && v2 != *(a1 + 3745))
    {
      goto LABEL_31;
    }

LABEL_36:
    *(a1 + 24) |= 0x80u;
    return 1;
  }
}

uint64_t sub_10001BD44(uint64_t a1)
{
  if (!*(a1 + 2824))
  {
    goto LABEL_3;
  }

  v2 = *(a1 + 2816);
  v3 = *(a1 + 2768);
  v35[2] = *(a1 + 2752);
  v35[3] = v3;
  v4 = *(a1 + 2800);
  v35[4] = *(a1 + 2784);
  v35[5] = v4;
  v5 = *(a1 + 2736);
  v35[0] = *(a1 + 2720);
  v35[1] = v5;
  if (v2 >= 2)
  {
    v7 = 0;
    v33 = a1 + 2824;
    v8 = a1 + 2520;
    v9 = a1 + 2620;
    v10 = v35[0];
    v11 = 1;
    while (1)
    {
      v12 = *(v35 + v11);
      v34 = v10 + 1;
      if (v10 + 1 < v12)
      {
        break;
      }

LABEL_33:
      ++v11;
      v6 = 1;
      v10 = v12;
      v7 = v11 >= v2;
      if (v11 == v2)
      {
        return v6 & 1;
      }
    }

    v13 = *(a1 + 2716);
    v14 = v13;
    v30 = v11;
    v31 = v2;
    v32 = v7;
    while (!v14)
    {
LABEL_32:
      if (++v34 == v12)
      {
        goto LABEL_33;
      }
    }

    v15 = 0;
    LODWORD(v16) = *(a1 + 2616);
    while (!v16)
    {
LABEL_31:
      ++v15;
      v14 = v13;
      if (v15 >= v13)
      {
        goto LABEL_32;
      }
    }

    v17 = 0;
    while (1)
    {
      v18 = 0;
      v19 = 0;
      v20 = v33;
      do
      {
        v20 = *v20;
        if (!v20)
        {
          break;
        }

        if (*(v20 + 8) == *(v8 + 4 * v17))
        {
          v21 = *(v20 + 12);
          if (v21 == v10 && *(v20 + 16) == *(v9 + 4 * v15))
          {
            v19 = v20;
          }

          if (v21 == v12 && *(v20 + 16) == *(v9 + 4 * v15))
          {
            v18 = v20;
          }
        }
      }

      while (!v19 || !v18);
      if (!v19 || !v18)
      {
        printf("e: Could not find PRC tables [%d:%d:%d] [%d:%d:%d]\n", *(v8 + 4 * v17), v10, *(v9 + 4 * v15), *(v8 + 4 * v17), v12, *(v9 + 4 * v15));
        goto LABEL_37;
      }

      v22 = malloc_type_calloc(1uLL, 0x628uLL, 0x10200404B1403A4uLL);
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v24 = 0;
      *(v22 + 6) = 2;
      *(v22 + 2) = *(v19 + 8);
      *(v22 + 3) = v34;
      *(v22 + 2) = *(v19 + 16);
      v25 = v18 + 28;
      v26 = v19 + 28;
      v27 = v22 + 28;
      do
      {
        for (i = 0; i != 514; i += 2)
        {
          *&v27[i] = ((*(v25 + i) + (((v12 - v34) / (v12 - v10)) * (*(v26 + i) - *(v25 + i)))) + 0.5);
        }

        ++v24;
        v25 += 514;
        v26 += 514;
        v27 += 514;
      }

      while (v24 != 3);
      sub_100010644(a1, *(v22 + 3), (a1 + 2720), (a1 + 2816));
      *v23 = *(a1 + 2824);
      *(a1 + 2824) = v23;
      ++v17;
      v16 = *(a1 + 2616);
      if (v17 >= v16)
      {
        v13 = *(a1 + 2716);
        v11 = v30;
        v2 = v31;
        goto LABEL_31;
      }
    }

    puts("e: out of memory for PRC table");
LABEL_37:
    v6 = v32;
  }

  else
  {
LABEL_3:
    v6 = 1;
  }

  return v6 & 1;
}

void sub_10001C038(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 <= 2)
  {
    if (v3 == 1)
    {
      sub_10001C27C(a2 + 4, *(a2 + 52), "PDC temperatures", "0x%x");
      v7 = *(a2 + 104);

      sub_10001C27C(a2 + 56, v7, "PDC subframes", "%d");
    }

    else if (v3 == 2)
    {
      sub_10001C324(a2 + 4, *(a2 + 302), "PDC temperatures");
      v4 = *(a2 + 304);

      sub_10001C324(a2 + 84, v4, "PDC brightnesses");
    }
  }

  else
  {
    if (v3 == 3)
    {
      sub_10001C324(a2 + 4, *(a2 + 214), "PDC temperatures");
      sub_10001C324(a2 + 44, *(a2 + 216), "PDC brightnesses");
      v5 = *(a2 + 222);
      v6 = a2 + 84;
    }

    else
    {
      if (v3 != 4)
      {
        if (v3 == 5)
        {
          sub_10001C324(a2 + 4, *(a2 + 382), "PDC temperatures");
          sub_10001C324(a2 + 84, *(a2 + 384), "PDC brightnesses");
          sub_10001C3D0(a2 + 164, *(a2 + 390));
          printf("i: PDC nframes: %d\n", *(a2 + 2084));
        }

        return;
      }

      sub_10001C324(a2 + 4, *(a2 + 318), "PDC temperatures");
      sub_10001C324(a2 + 84, *(a2 + 320), "PDC brightnesses");
      v5 = *(a2 + 326);
      v6 = a2 + 164;
    }

    sub_10001C3D0(v6, v5);
  }
}

void *sub_10001C1FC(void *a1)
{
  v2 = a1[448];
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[449];
  if (v4)
  {
    do
    {
      v5 = *v4;
      free(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = a1[450];
  if (v6)
  {
    do
    {
      v7 = *v6;
      free(v6);
      v6 = v7;
    }

    while (v7);
  }

  result = a1[451];
  if (result)
  {
    do
    {
      v9 = *result;
      free(result);
      result = v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_10001C27C(uint64_t a1, int a2, const char *a3, const char *a4)
{
  printf("i: %s: ", a3);
  if (a2)
  {
    v7 = 0;
    do
    {
      printf(a4, *(a1 + 4 * v7));
      if (v7 < (a2 - 1))
      {
        printf(", ");
      }

      ++v7;
    }

    while (a2 != v7);
  }

  return putchar(10);
}

uint64_t sub_10001C324(uint64_t a1, int a2, const char *a3)
{
  printf("i: %s: ", a3);
  if (a2)
  {
    v5 = 0;
    do
    {
      printf("0x%x", *(a1 + 4 * v5));
      if (v5 < (a2 - 1))
      {
        printf(", ");
      }

      ++v5;
    }

    while (a2 != v5);
  }

  return putchar(10);
}

uint64_t sub_10001C3D0(uint64_t a1, int a2)
{
  printf("i: %s: ", "PDC subframes");
  if (a2)
  {
    v4 = 0;
    do
    {
      printf("%d", *(a1 + 2 * v4));
      if (v4 < (a2 - 1))
      {
        printf(", ");
      }

      ++v4;
    }

    while (a2 != v4);
  }

  return putchar(10);
}

uint64_t sub_10001C484(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10001C500(result, a4);
  }

  return result;
}

void sub_10001C4E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001C500(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_10001C53C(a1, a2);
  }

  sub_100006304();
}

void sub_10001C53C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1000062BC();
}

void sub_10001C584(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1000062BC();
}

uint64_t sub_10001C5CC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100006304();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_10001C584(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return v6 - 8;
}

uint64_t sub_10001C6A4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v78 = *(a2 - 1);
        v79 = *v9;
        v80 = *(v78 + 6434);
        v81 = *(*v9 + 6434);
        if (v80 < v81 || v80 == v81 && *(v78 + 6432) < *(v79 + 6432))
        {
          *v9 = v78;
          *(a2 - 1) = v79;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return sub_10001D138(v9, v9 + 1, v9 + 2, a2 - 1);
    }

    if (v12 == 5)
    {
      result = sub_10001D138(v9, v9 + 1, v9 + 2, v9 + 3);
      v87 = *(a2 - 1);
      v88 = v9[3];
      v89 = *(v87 + 6434);
      v90 = *(v88 + 6434);
      if (v89 < v90 || v89 == v90 && *(v87 + 6432) < *(v88 + 6432))
      {
        v9[3] = v87;
        *(a2 - 1) = v88;
        v92 = v9[2];
        v91 = v9[3];
        v93 = *(v91 + 6434);
        v94 = *(v92 + 6434);
        if (*(v91 + 6434) < v94 || v93 == v94 && *(v91 + 6432) < *(v92 + 6432))
        {
          v9[2] = v91;
          v9[3] = v92;
          v95 = v9[1];
          if (*(v95 + 6434) > v93 || v93 == *(v95 + 6434) && *(v91 + 6432) < *(v95 + 6432))
          {
            v9[1] = v91;
            v9[2] = v95;
            v96 = *v9;
            if (*(*v9 + 6434) > v93 || v93 == *(*v9 + 6434) && *(v91 + 6432) < *(v96 + 6432))
            {
              *v9 = v91;
              v9[1] = v96;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_10001D328(v9, a2);
      }

      else
      {

        return sub_10001D408(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_10001DDB8(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    if (v12 >= 0x81)
    {
      v16 = *v14;
      v17 = *v9;
      v18 = *(*v14 + 6434);
      v19 = *(*v9 + 6434);
      if (*(*v14 + 6434) < *(*v9 + 6434) || v18 == v19 && *(v16 + 6432) < *(v17 + 6432))
      {
        v20 = *(a2 - 1);
        if (*(v20 + 6434) < v18 || *(v20 + 6434) == v18 && *(v20 + 6432) < *(v16 + 6432))
        {
          *v9 = v20;
        }

        else
        {
          *v9 = v16;
          *v14 = v17;
          v36 = *(a2 - 1);
          if (*(v36 + 6434) >= v19 && (*(v36 + 6434) != v19 || *(v36 + 6432) >= *(v17 + 6432)))
          {
            goto LABEL_35;
          }

          *v14 = v36;
        }

        *(a2 - 1) = v17;
        goto LABEL_35;
      }

      v26 = *(a2 - 1);
      if (*(v26 + 6434) < v18 || *(v26 + 6434) == v18 && *(v26 + 6432) < *(v16 + 6432))
      {
        *v14 = v26;
        *(a2 - 1) = v16;
        v27 = *v14;
        v28 = *v9;
        v29 = *(*v14 + 6434);
        v30 = *(*v9 + 6434);
        if (v29 < v30 || v29 == v30 && *(v27 + 6432) < *(v28 + 6432))
        {
          *v9 = v27;
          *v14 = v28;
        }
      }

LABEL_35:
      v37 = v13 - 1;
      v38 = v9[v37];
      v39 = v9[1];
      v40 = *(v38 + 6434);
      v41 = *(v39 + 6434);
      if (*(v38 + 6434) < *(v39 + 6434) || v40 == v41 && *(v38 + 6432) < *(v39 + 6432))
      {
        v42 = *(a2 - 2);
        if (*(v42 + 6434) < v40 || *(v42 + 6434) == v40 && *(v42 + 6432) < *(v38 + 6432))
        {
          v9[1] = v42;
        }

        else
        {
          v9[1] = v38;
          v9[v37] = v39;
          v49 = *(a2 - 2);
          if (*(v49 + 6434) >= v41 && (*(v49 + 6434) != v41 || *(v49 + 6432) >= *(v39 + 6432)))
          {
            goto LABEL_53;
          }

          v9[v37] = v49;
        }

        *(a2 - 2) = v39;
        goto LABEL_53;
      }

      v43 = *(a2 - 2);
      if (*(v43 + 6434) < v40 || *(v43 + 6434) == v40 && *(v43 + 6432) < *(v38 + 6432))
      {
        v9[v37] = v43;
        *(a2 - 2) = v38;
        v44 = v9[v37];
        v45 = v9[1];
        v46 = *(v44 + 6434);
        v47 = *(v45 + 6434);
        if (v46 < v47 || v46 == v47 && *(v44 + 6432) < *(v45 + 6432))
        {
          v9[1] = v44;
          v9[v37] = v45;
        }
      }

LABEL_53:
      v52 = v14[1];
      v50 = v14 + 1;
      v51 = v52;
      v53 = v9[2];
      v54 = *(v52 + 6434);
      v55 = *(v53 + 6434);
      if (*(v52 + 6434) < *(v53 + 6434) || v54 == v55 && *(v51 + 6432) < *(v53 + 6432))
      {
        v56 = *(a2 - 3);
        if (*(v56 + 6434) < v54 || *(v56 + 6434) == v54 && *(v56 + 6432) < *(v51 + 6432))
        {
          v9[2] = v56;
        }

        else
        {
          v9[2] = v51;
          *v50 = v53;
          v62 = *(a2 - 3);
          if (*(v62 + 6434) >= v55 && (*(v62 + 6434) != v55 || *(v62 + 6432) >= *(v53 + 6432)))
          {
            goto LABEL_66;
          }

          *v50 = v62;
        }

        *(a2 - 3) = v53;
        goto LABEL_66;
      }

      v57 = *(a2 - 3);
      if (*(v57 + 6434) < v54 || *(v57 + 6434) == v54 && *(v57 + 6432) < *(v51 + 6432))
      {
        *v50 = v57;
        *(a2 - 3) = v51;
        v58 = *v50;
        v59 = v9[2];
        v60 = *(*v50 + 6434);
        v61 = *(v59 + 6434);
        if (v60 < v61 || v60 == v61 && *(v58 + 6432) < *(v59 + 6432))
        {
          v9[2] = v58;
          *v50 = v59;
        }
      }

LABEL_66:
      v63 = *v15;
      v64 = v9[v37];
      v65 = *(*v15 + 6434);
      v66 = *(v64 + 6434);
      if (*(*v15 + 6434) < *(v64 + 6434) || v65 == v66 && *(v63 + 6432) < *(v64 + 6432))
      {
        v67 = *v50;
        if (*(*v50 + 6434) < v65 || (v70 = *(*v50 + 6434), v70 == v65) && *(v67 + 6432) < *(v63 + 6432))
        {
          v9[v37] = v67;
        }

        else
        {
          v9[v37] = v63;
          *v15 = v64;
          if (v70 >= v66 && (v70 != v66 || *(v67 + 6432) >= *(v64 + 6432)))
          {
            v63 = v64;
            goto LABEL_79;
          }

          *v15 = v67;
          v63 = v67;
        }
      }

      else
      {
        v68 = *v50;
        v69 = *(*v50 + 6434);
        if (*(*v50 + 6434) >= v65 && (v69 != v65 || *(v68 + 6432) >= *(v63 + 6432)))
        {
          goto LABEL_79;
        }

        *v15 = v68;
        *v50 = v63;
        if (v69 >= v66 && (v69 != v66 || *(v68 + 6432) >= *(v64 + 6432)))
        {
          v63 = v68;
          goto LABEL_79;
        }

        v9[v37] = v68;
        v50 = v15;
        v63 = v64;
      }

      *v50 = v64;
LABEL_79:
      v71 = *v9;
      *v9 = v63;
      *v15 = v71;
      goto LABEL_80;
    }

    v21 = *v9;
    v22 = *v15;
    v23 = *(*v9 + 6434);
    v24 = *(*v15 + 6434);
    if (*(*v9 + 6434) < *(*v15 + 6434) || v23 == v24 && *(v21 + 6432) < *(v22 + 6432))
    {
      v25 = *(a2 - 1);
      if (*(v25 + 6434) < v23 || *(v25 + 6434) == v23 && *(v25 + 6432) < *(v21 + 6432))
      {
        *v15 = v25;
LABEL_47:
        *(a2 - 1) = v22;
        goto LABEL_80;
      }

      *v15 = v21;
      *v9 = v22;
      v48 = *(a2 - 1);
      if (*(v48 + 6434) < v24 || *(v48 + 6434) == v24 && *(v48 + 6432) < *(v22 + 6432))
      {
        *v9 = v48;
        goto LABEL_47;
      }
    }

    else
    {
      v31 = *(a2 - 1);
      if (*(v31 + 6434) < v23 || *(v31 + 6434) == v23 && *(v31 + 6432) < *(v21 + 6432))
      {
        *v9 = v31;
        *(a2 - 1) = v21;
        v32 = *v9;
        v33 = *v15;
        v34 = *(*v9 + 6434);
        v35 = *(*v15 + 6434);
        if (v34 < v35 || v34 == v35 && *(v32 + 6432) < *(v33 + 6432))
        {
          *v15 = v32;
          *v9 = v33;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v72 = *(v9 - 1);
      v73 = *(v72 + 6434);
      v74 = *(*v9 + 6434);
      if (v73 >= v74 && (v73 != v74 || *(v72 + 6432) >= *(*v9 + 6432)))
      {
        result = sub_10001D4DC(v9, a2);
        v9 = result;
        goto LABEL_135;
      }
    }

    v75 = sub_10001D6D4(v9, a2);
    if ((v76 & 1) == 0)
    {
      goto LABEL_133;
    }

    v77 = sub_10001D8D4(v9, v75);
    v9 = v75 + 1;
    result = sub_10001D8D4(v75 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v77)
    {
LABEL_133:
      result = sub_10001C6A4(v8, v75, a3, -v11, a5 & 1);
      v9 = v75 + 1;
LABEL_135:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v82 = *v9;
  v83 = v9[1];
  v84 = *(v83 + 6434);
  v85 = *(*v9 + 6434);
  if (*(v83 + 6434) < *(*v9 + 6434) || v84 == v85 && *(v83 + 6432) < *(v82 + 6432))
  {
    v86 = *(a2 - 1);
    if (*(v86 + 6434) < v84 || *(v86 + 6434) == v84 && *(v86 + 6432) < *(v83 + 6432))
    {
      *v9 = v86;
    }

    else
    {
      *v9 = v83;
      v9[1] = v82;
      v102 = *(a2 - 1);
      if (*(v102 + 6434) >= v85 && (*(v102 + 6434) != v85 || *(v102 + 6432) >= *(v82 + 6432)))
      {
        return result;
      }

      v9[1] = v102;
    }

    *(a2 - 1) = v82;
    return result;
  }

  v97 = *(a2 - 1);
  if (*(v97 + 6434) < v84 || *(v97 + 6434) == v84 && *(v97 + 6432) < *(v83 + 6432))
  {
    v9[1] = v97;
    *(a2 - 1) = v83;
    v99 = *v9;
    v98 = v9[1];
    v100 = *(v98 + 6434);
    v101 = *(*v9 + 6434);
    if (v100 < v101 || v100 == v101 && *(v98 + 6432) < *(v99 + 6432))
    {
      *v9 = v98;
      v9[1] = v99;
    }
  }

  return result;
}

uint64_t *sub_10001D138(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 6434);
  v7 = *(*result + 6434);
  if (*(*a2 + 6434) < *(*result + 6434) || v6 == v7 && *(v4 + 6432) < *(v5 + 6432))
  {
    v8 = *a3;
    if (*(*a3 + 6434) < v6 || *(*a3 + 6434) == v6 && *(v8 + 6432) < *(v4 + 6432))
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      if (*(*a3 + 6434) >= v7 && (*(*a3 + 6434) != v7 || *(v4 + 6432) >= *(v5 + 6432)))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  if (*(*a3 + 6434) >= v6 && (*(*a3 + 6434) != v6 || *(v5 + 6432) >= *(v4 + 6432)))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v9 = *a2;
  v10 = *result;
  v11 = *(*a2 + 6434);
  v12 = *(*result + 6434);
  if (v11 < v12 || v11 == v12 && *(v9 + 6432) < *(v10 + 6432))
  {
    *result = v9;
    *a2 = v10;
    v4 = *a3;
  }

LABEL_15:
  v13 = *a4;
  v14 = *(*a4 + 6434);
  v15 = *(v4 + 6434);
  if (v14 < v15 || v14 == v15 && *(v13 + 6432) < *(v4 + 6432))
  {
    *a3 = v13;
    *a4 = v4;
    v16 = *a3;
    v17 = *a2;
    v18 = *(*a3 + 6434);
    v19 = *(*a2 + 6434);
    if (v18 < v19 || v18 == v19 && *(v16 + 6432) < *(v17 + 6432))
    {
      *a2 = v16;
      *a3 = v17;
      v20 = *a2;
      v21 = *result;
      v22 = *(*a2 + 6434);
      v23 = *(*result + 6434);
      if (v22 < v23 || v22 == v23 && *(v20 + 6432) < *(v21 + 6432))
      {
        *result = v20;
        *a2 = v21;
      }
    }
  }

  return result;
}

void *sub_10001D328(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v7 = *v5;
        v6 = v5[1];
        v8 = *(v6 + 6434);
        if (*(v6 + 6434) < *(*v5 + 6434) || v8 == *(*v5 + 6434) && *(v6 + 6432) < *(v7 + 6432))
        {
          v5[1] = v7;
          v9 = result;
          if (v5 != result)
          {
            v10 = v3;
            while (1)
            {
              v11 = *(result + v10 - 8);
              if (*(v11 + 6434) <= v8)
              {
                if (v8 != *(v11 + 6434))
                {
                  v9 = v5;
                  goto LABEL_17;
                }

                if (*(v6 + 6432) >= *(v11 + 6432))
                {
                  break;
                }
              }

              --v5;
              *(result + v10) = v11;
              v10 -= 8;
              if (!v10)
              {
                v9 = result;
                goto LABEL_17;
              }
            }

            v9 = (result + v10);
          }

LABEL_17:
          *v9 = v6;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_10001D408(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = -8;
      v5 = 8;
      v6 = result;
      do
      {
        v7 = *(result + v3);
        v3 = v5;
        v8 = *v2;
        v9 = *(*v2 + 6434);
        if (*(*v2 + 6434) < *(v7 + 6434) || v9 == *(v7 + 6434) && *(v8 + 6432) < *(v7 + 6432))
        {
          *v2 = v7;
          v10 = v4;
          for (i = v6; ; --i)
          {
            v12 = *(i - 1);
            if (*(v12 + 6434) <= v9 && (v9 != *(v12 + 6434) || *(v8 + 6432) >= *(v12 + 6432)))
            {
              break;
            }

            *i = v12;
            v10 += 8;
            if (!v10)
            {
              __break(1u);
              return result;
            }
          }

          *i = v8;
        }

        v5 = v3 + 8;
        v2 = (result + v3 + 8);
        ++v6;
        v4 -= 8;
      }

      while (v2 != a2);
    }
  }

  return result;
}

unint64_t sub_10001D4DC(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 - 8);
  v4 = *(*a1 + 6434);
  v5 = *(v3 + 6434);
  if (*(*a1 + 6434) < v5 || v4 == *(v3 + 6434) && (v5 = *(v2 + 6432), v5 < *(v3 + 6432)))
  {
    i = (a1 + 1);
    if (a1 + 1 == a2)
    {
      goto LABEL_24;
    }

    v5 = 6434;
    while (*(*i + 6434) <= v4 && (v4 != *(*i + 6434) || *(v2 + 6432) >= *(*i + 6432)))
    {
      i += 8;
      if (i == a2)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    for (i = (a1 + 1); i < a2; i += 8)
    {
      if (*(*i + 6434) > v4 || v4 == *(*i + 6434) && *(v2 + 6432) < *(*i + 6432))
      {
        break;
      }
    }
  }

  v5 = a2;
  if (i >= a2)
  {
    goto LABEL_25;
  }

  if (a2 != a1)
  {
    v5 = a2 - 8;
    do
    {
      if (*(*v5 + 6434) <= v4 && (v4 != *(*v5 + 6434) || *(v2 + 6432) >= *(*v5 + 6432)))
      {
        goto LABEL_25;
      }

      v7 = v5 == a1;
      v5 -= 8;
    }

    while (!v7);
  }

LABEL_24:
  while (1)
  {
    __break(1u);
LABEL_25:
    if (i >= v5)
    {
      break;
    }

    v8 = *i;
    v9 = *v5;
LABEL_27:
    *i = v9;
    i += 8;
    *v5 = v8;
    while (i != a2)
    {
      v8 = *i;
      if (*(*i + 6434) > v4 || v4 == *(*i + 6434) && *(v2 + 6432) < *(v8 + 6432))
      {
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        v5 -= 8;
        while (1)
        {
          v9 = *v5;
          if (*(*v5 + 6434) <= v4 && (v4 != *(*v5 + 6434) || *(v2 + 6432) >= *(v9 + 6432)))
          {
            break;
          }

          v7 = v5 == a1;
          v5 -= 8;
          if (v7)
          {
            goto LABEL_24;
          }
        }

        if (i < v5)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }

      i += 8;
    }
  }

LABEL_42:
  if ((i - 8) != a1)
  {
    *a1 = *(i - 8);
  }

  *(i - 8) = v2;
  return i;
}

unint64_t sub_10001D6D4(uint64_t *a1, uint64_t *a2)
{
  v4 = a1 + 8;
  v5 = *a1;
  if (a1 + 1 != a2)
  {
    v2 = 6434;
    v4 = *(v5 + 6434);
    v6 = 1;
    while (1)
    {
      v3 = a1[v6];
      if (*(v3 + 6434) >= v4 && (*(v3 + 6434) != v4 || *(v3 + 3216) >= *(v5 + 6432)))
      {
        break;
      }

      v3 = &a1[++v6];
      if (&a1[v6] == a2)
      {
        goto LABEL_16;
      }
    }

    v2 = &a1[v6];
    if (v6 == 1)
    {
      goto LABEL_17;
    }

    if (a2 != a1)
    {
      v7 = a2 - 1;
      do
      {
        if (*(*v7 + 6434) < v4 || *(*v7 + 6434) == v4 && *(*v7 + 6432) < *(v5 + 6432))
        {
          goto LABEL_29;
        }

        v8 = v7-- == a1;
      }

      while (!v8);
    }
  }

LABEL_16:
  while (1)
  {
    __break(1u);
LABEL_17:
    v7 = a2;
    if (v2 < a2)
    {
      v7 = a2 - 1;
      v9 = *(a2 - 1);
      if (*(v9 + 6434) >= v4)
      {
        v10 = *(v9 + 6434);
        do
        {
          if (v10 == v4)
          {
            if (*(v9 + 6432) < *(v5 + 6432) || v2 >= v7)
            {
              break;
            }
          }

          else if (v2 >= v7)
          {
            break;
          }

          v12 = *--v7;
          v9 = v12;
          v10 = *(v12 + 6434);
        }

        while (*(v12 + 6434) >= v4);
      }
    }

LABEL_29:
    if (v2 >= v7)
    {
      break;
    }

    v13 = *v7;
    v14 = v2;
    v15 = v7;
LABEL_31:
    *v14 = v13;
    v14 += 8;
    *v15 = v3;
    while (v14 != a2)
    {
      v3 = *v14;
      if (*(*v14 + 6434) >= v4 && (*(*v14 + 6434) != v4 || *(v3 + 3216) >= *(v5 + 6432)))
      {
        if (v15 == a1)
        {
          goto LABEL_16;
        }

        --v15;
        while (1)
        {
          v13 = *v15;
          if (*(*v15 + 6434) < v4 || *(*v15 + 6434) == v4 && *(v13 + 6432) < *(v5 + 6432))
          {
            break;
          }

          v8 = v15-- == a1;
          if (v8)
          {
            goto LABEL_16;
          }
        }

        if (v14 < v15)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      v14 += 8;
    }
  }

  v14 = v2;
LABEL_48:
  v16 = (v14 - 8);
  if ((v14 - 8) != a1)
  {
    *a1 = *v16;
  }

  *v16 = v5;
  return v14 - 8;
}

BOOL sub_10001D8D4(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v19 = *a1;
        v20 = a1[1];
        v21 = *(v20 + 6434);
        v22 = *(*a1 + 6434);
        if (*(v20 + 6434) >= *(*a1 + 6434) && (v21 != v22 || *(v20 + 6432) >= *(v19 + 6432)))
        {
          v31 = *(a2 - 1);
          if (*(v31 + 6434) < v21 || *(v31 + 6434) == v21 && *(v31 + 6432) < *(v20 + 6432))
          {
            a1[1] = v31;
            *(a2 - 1) = v20;
            v33 = *a1;
            v32 = a1[1];
            v34 = *(v32 + 6434);
            v35 = *(*a1 + 6434);
            if (v34 < v35 || v34 == v35 && *(v32 + 6432) < *(v33 + 6432))
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v23 = *(a2 - 1);
        if (*(v23 + 6434) < v21 || *(v23 + 6434) == v21 && *(v23 + 6432) < *(v20 + 6432))
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v20;
          a1[1] = v19;
          v38 = *(a2 - 1);
          if (*(v38 + 6434) >= v22 && (*(v38 + 6434) != v22 || *(v38 + 6432) >= *(v19 + 6432)))
          {
            return 1;
          }

          a1[1] = v38;
        }

        *(a2 - 1) = v19;
        break;
      case 4:
        sub_10001D138(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        sub_10001D138(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(v9 + 6434);
        v12 = *(v10 + 6434);
        if (v11 < v12 || v11 == v12 && *(v9 + 6432) < *(v10 + 6432))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v13 + 6434);
          v16 = *(v14 + 6434);
          if (*(v13 + 6434) < v16 || v15 == v16 && *(v13 + 6432) < *(v14 + 6432))
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            if (*(v17 + 6434) > v15 || v15 == *(v17 + 6434) && *(v13 + 6432) < *(v17 + 6432))
            {
              a1[1] = v13;
              a1[2] = v17;
              v18 = *a1;
              if (*(*a1 + 6434) > v15 || v15 == *(*a1 + 6434) && *(v13 + 6432) < *(v18 + 6432))
              {
                *a1 = v13;
                a1[1] = v18;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 6434);
    v8 = *(*a1 + 6434);
    if (v7 < v8 || v7 == v8 && *(v5 + 6432) < *(v6 + 6432))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v24 = a1 + 2;
  v25 = *a1;
  v26 = a1 + 1;
  v27 = a1[1];
  v28 = *(v27 + 6434);
  v29 = *(*a1 + 6434);
  if (*(v27 + 6434) < *(*a1 + 6434) || v28 == v29 && *(v27 + 6432) < *(v25 + 6432))
  {
    v30 = *v24;
    if (*(*v24 + 6434) < v28 || (v39 = *(*v24 + 6434), v39 == v28) && *(v30 + 6432) < *(v27 + 6432))
    {
      *a1 = v30;
    }

    else
    {
      *a1 = v27;
      a1[1] = v25;
      if (v39 >= v29 && (v39 != v29 || *(v30 + 6432) >= *(v25 + 6432)))
      {
        goto LABEL_48;
      }

      *v26 = v30;
    }

    v26 = a1 + 2;
LABEL_47:
    *v26 = v25;
    goto LABEL_48;
  }

  v36 = *v24;
  v37 = *(*v24 + 6434);
  if (*(*v24 + 6434) < v28 || v37 == v28 && *(v36 + 6432) < *(v27 + 6432))
  {
    *v26 = v36;
    *v24 = v27;
    if (v37 < v29 || v37 == v29 && *(v36 + 6432) < *(v25 + 6432))
    {
      *a1 = v36;
      goto LABEL_47;
    }
  }

LABEL_48:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *v40;
    v44 = *v24;
    v45 = *(*v40 + 6434);
    if (*(*v40 + 6434) < *(v44 + 6434) || v45 == *(v44 + 6434) && *(v43 + 6432) < *(v44 + 6432))
    {
      *v40 = v44;
      v46 = v41;
      while (1)
      {
        v47 = *(a1 + v46 + 8);
        if (*(v47 + 6434) <= v45 && (v45 != *(v47 + 6434) || *(v43 + 6432) >= *(v47 + 6432)))
        {
          break;
        }

        *(a1 + v46 + 16) = v47;
        v46 -= 8;
        if (v46 == -16)
        {
          v48 = a1;
          goto LABEL_61;
        }
      }

      v48 = (a1 + v46 + 16);
LABEL_61:
      *v48 = v43;
      if (++v42 == 8)
      {
        return v40 + 1 == a2;
      }
    }

    v24 = v40;
    v41 += 8;
    if (++v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_10001DDB8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_10001DF1C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        v15 = *(*v12 + 6434);
        v16 = *(*a1 + 6434);
        if (v15 < v16 || v15 == v16 && *(v13 + 6432) < *(v14 + 6432))
        {
          *v12 = v14;
          *a1 = v13;
          sub_10001DF1C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = sub_10001E080(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          sub_10001E108(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_10001DF1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = *(*v8 + 6434);
        v12 = *(v10 + 6434);
        if (v11 < v12 || v11 == v12 && *(*v8 + 6432) < *(v10 + 6432))
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *v8;
      v14 = *a4;
      if (*(*v8 + 6434) >= *(*a4 + 6434))
      {
        v15 = *(*a4 + 6434);
        if (*(*v8 + 6434) != v15 || *(v13 + 6432) >= *(v14 + 6432))
        {
          *a4 = v13;
          if (v5 >= v7)
          {
            while (1)
            {
              v17 = 2 * v7;
              v7 = (2 * v7) | 1;
              v16 = (result + 8 * v7);
              v18 = v17 + 2;
              if (v18 < a3)
              {
                v19 = v16[1];
                v20 = *(*v16 + 6434);
                v21 = *(v19 + 6434);
                if (v20 < v21 || v20 == v21 && *(*v16 + 6432) < *(v19 + 6432))
                {
                  ++v16;
                  v7 = v18;
                }
              }

              v22 = *v16;
              if (*(*v16 + 6434) < v15 || *(*v16 + 6434) == v15 && *(v22 + 6432) < *(v14 + 6432))
              {
                break;
              }

              *v8 = v22;
              v8 = v16;
              if (v5 < v7)
              {
                goto LABEL_13;
              }
            }
          }

          v16 = v8;
LABEL_13:
          *v16 = v14;
        }
      }
    }
  }

  return result;
}

void *sub_10001E080(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v10 = v5[2];
      v8 = v5 + 2;
      v9 = v10;
      v11 = *(v8 - 1);
      v12 = *(v11 + 6434);
      v13 = *(v10 + 6434);
      if (v12 < v13 || v12 == v13 && *(v11 + 6432) < *(v9 + 6432))
      {
        result = v8;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_10001E108(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    v9 = *(v8 + 6434);
    if (*(*v6 + 6434) < *(v8 + 6434) || *(*v6 + 6434) == v9 && *(v7 + 6432) < *(v8 + 6432))
    {
      *(a2 - 8) = v7;
      if (v4 >= 2)
      {
        while (1)
        {
          v11 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v10 = (result + 8 * v5);
          v12 = *v10;
          if (*(*v10 + 6434) >= v9 && (*(*v10 + 6434) != v9 || *(v12 + 6432) >= *(v8 + 6432)))
          {
            break;
          }

          *v6 = v12;
          v6 = (result + 8 * v5);
          if (v11 <= 1)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = v6;
LABEL_12:
      *v10 = v8;
    }
  }

  return result;
}

void sub_10001E1D8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10001E234(exception, a1);
}

std::logic_error *sub_10001E234(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_10001E268(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v79 = *(a2 - 1);
        v80 = *v9;
        v81 = *(v79 + 10370);
        v82 = *(*v9 + 10370);
        if (v81 >= v82 && (v81 != v82 || *(v79 + 10368) >= *(*v9 + 10368)))
        {
          return result;
        }

        *v9 = v79;
LABEL_177:
        *(a2 - 1) = v80;
        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return sub_10001ED90(v9, v9 + 1, v9 + 2, a2 - 1);
    }

    if (v12 == 5)
    {
      result = sub_10001ED90(v9, v9 + 1, v9 + 2, v9 + 3);
      v88 = *(a2 - 1);
      v89 = v9[3];
      v90 = *(v88 + 10370);
      v91 = *(v89 + 10370);
      if (v90 < v91 || v90 == v91 && *(v88 + 10368) < *(v89 + 10368))
      {
        v9[3] = v88;
        *(a2 - 1) = v89;
        v93 = v9[2];
        v92 = v9[3];
        v94 = *(v92 + 10370);
        v95 = *(v93 + 10370);
        if (*(v92 + 10370) < v95 || v94 == v95 && *(v92 + 10368) < *(v93 + 10368))
        {
          v9[2] = v92;
          v9[3] = v93;
          v96 = v9[1];
          if (*(v96 + 10370) > v94 || v94 == *(v96 + 10370) && *(v92 + 10368) < *(v96 + 10368))
          {
            v9[1] = v92;
            v9[2] = v96;
            v97 = *v9;
            if (*(*v9 + 10370) > v94 || v94 == *(*v9 + 10370) && *(v92 + 10368) < *(*v9 + 10368))
            {
              *v9 = v92;
              v9[1] = v97;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_10001EF94(v9, a2);
      }

      else
      {

        return sub_10001F07C(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_10001FA58(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    if (v12 >= 0x81)
    {
      v16 = *v14;
      v17 = *v9;
      v18 = *v9 + 0x2000;
      v19 = *(*v14 + 10370);
      v20 = *(*v9 + 10370);
      if (*(*v14 + 10370) < *(*v9 + 10370) || v19 == v20 && *(*v14 + 10368) < *(*v9 + 10368))
      {
        v21 = *(a2 - 1);
        if (*(v21 + 10370) < v19 || *(v21 + 10370) == v19 && *(v21 + 10368) < *(*v14 + 10368))
        {
          *v9 = v21;
        }

        else
        {
          *v9 = v16;
          *v14 = v17;
          v36 = *(a2 - 1);
          if (*(v36 + 10370) >= v20 && (*(v36 + 10370) != v20 || *(v36 + 10368) >= *(v18 + 2176)))
          {
            goto LABEL_35;
          }

          *v14 = v36;
        }

        *(a2 - 1) = v17;
        goto LABEL_35;
      }

      v28 = *(a2 - 1);
      if (*(v28 + 10370) < v19 || *(v28 + 10370) == v19 && *(v28 + 10368) < *(*v14 + 10368))
      {
        *v14 = v28;
        *(a2 - 1) = v16;
        v29 = *v9;
        v30 = *(*v14 + 10370);
        v31 = *(*v9 + 10370);
        if (v30 < v31 || v30 == v31 && *(*v14 + 10368) < *(*v9 + 10368))
        {
          *v9 = *v14;
          *v14 = v29;
        }
      }

LABEL_35:
      v37 = v13 - 1;
      v38 = v9[v37];
      v39 = v9[1];
      v40 = *(v38 + 10370);
      v41 = *(v39 + 10370);
      if (*(v38 + 10370) < *(v39 + 10370) || v40 == v41 && *(v38 + 10368) < *(v39 + 10368))
      {
        v42 = *(a2 - 2);
        if (*(v42 + 10370) < v40 || *(v42 + 10370) == v40 && *(v42 + 10368) < *(v38 + 10368))
        {
          v9[1] = v42;
        }

        else
        {
          v9[1] = v38;
          v9[v37] = v39;
          v49 = *(a2 - 2);
          if (*(v49 + 10370) >= v41 && (*(v49 + 10370) != v41 || *(v49 + 10368) >= *(v39 + 10368)))
          {
            goto LABEL_53;
          }

          v9[v37] = v49;
        }

        *(a2 - 2) = v39;
        goto LABEL_53;
      }

      v43 = *(a2 - 2);
      if (*(v43 + 10370) < v40 || *(v43 + 10370) == v40 && *(v43 + 10368) < *(v38 + 10368))
      {
        v9[v37] = v43;
        *(a2 - 2) = v38;
        v44 = v9[v37];
        v45 = v9[1];
        v46 = *(v44 + 10370);
        v47 = *(v45 + 10370);
        if (v46 < v47 || v46 == v47 && *(v44 + 10368) < *(v45 + 10368))
        {
          v9[1] = v44;
          v9[v37] = v45;
        }
      }

LABEL_53:
      v52 = v14[1];
      v50 = v14 + 1;
      v51 = v52;
      v53 = v52 + 0x2000;
      v54 = v9[2];
      v55 = *(v52 + 10370);
      v56 = *(v54 + 10370);
      if (*(v52 + 10370) < *(v54 + 10370) || v55 == v56 && *(v53 + 2176) < *(v54 + 10368))
      {
        v57 = *(a2 - 3);
        if (*(v57 + 10370) < v55 || *(v57 + 10370) == v55 && *(v57 + 10368) < *(v53 + 2176))
        {
          v9[2] = v57;
        }

        else
        {
          v9[2] = v51;
          *v50 = v54;
          v62 = *(a2 - 3);
          if (*(v62 + 10370) >= v56 && (*(v62 + 10370) != v56 || *(v62 + 10368) >= *(v54 + 10368)))
          {
            goto LABEL_66;
          }

          *v50 = v62;
        }

        *(a2 - 3) = v54;
        goto LABEL_66;
      }

      v58 = *(a2 - 3);
      if (*(v58 + 10370) < v55 || *(v58 + 10370) == v55 && *(v58 + 10368) < *(v53 + 2176))
      {
        *v50 = v58;
        *(a2 - 3) = v51;
        v59 = v9[2];
        v60 = *(*v50 + 10370);
        v61 = *(v59 + 10370);
        if (v60 < v61 || v60 == v61 && *(*v50 + 10368) < *(v59 + 10368))
        {
          v9[2] = *v50;
          *v50 = v59;
        }
      }

LABEL_66:
      v63 = *v15;
      v64 = v9[v37];
      v65 = *(*v15 + 10370);
      v66 = *(v64 + 10370);
      if (*(*v15 + 10370) < *(v64 + 10370) || v65 == v66 && *(*v15 + 10368) < *(v64 + 10368))
      {
        v67 = *v50;
        v68 = *v50 + 0x2000;
        if (*(*v50 + 10370) < v65 || (v72 = *(*v50 + 10370), v72 == v65) && *(*v50 + 10368) < *(*v15 + 10368))
        {
          v9[v37] = v67;
        }

        else
        {
          v9[v37] = v63;
          *v15 = v64;
          if (v72 >= v66 && (v72 != v66 || *(v68 + 2176) >= *(v64 + 10368)))
          {
            v63 = v64;
            goto LABEL_79;
          }

          *v15 = v67;
          v63 = v67;
        }
      }

      else
      {
        v69 = *v50;
        v70 = *v50 + 0x2000;
        v71 = *(*v50 + 10370);
        if (*(*v50 + 10370) >= v65 && (v71 != v65 || *(*v50 + 10368) >= *(*v15 + 10368)))
        {
          goto LABEL_79;
        }

        *v15 = v69;
        *v50 = v63;
        if (v71 >= v66 && (v71 != v66 || *(v70 + 2176) >= *(v64 + 10368)))
        {
          v63 = v69;
          goto LABEL_79;
        }

        v9[v37] = v69;
        v50 = v15;
        v63 = v64;
      }

      *v50 = v64;
LABEL_79:
      v73 = *v9;
      *v9 = v63;
      *v15 = v73;
      goto LABEL_80;
    }

    v22 = *v9;
    v23 = *v15;
    v24 = *v15 + 0x2000;
    v25 = *(*v9 + 10370);
    v26 = *(*v15 + 10370);
    if (*(*v9 + 10370) < *(*v15 + 10370) || v25 == v26 && *(*v9 + 10368) < *(*v15 + 10368))
    {
      v27 = *(a2 - 1);
      if (*(v27 + 10370) < v25 || *(v27 + 10370) == v25 && *(v27 + 10368) < *(*v9 + 10368))
      {
        *v15 = v27;
LABEL_47:
        *(a2 - 1) = v23;
        goto LABEL_80;
      }

      *v15 = v22;
      *v9 = v23;
      v48 = *(a2 - 1);
      if (*(v48 + 10370) < v26 || *(v48 + 10370) == v26 && *(v48 + 10368) < *(v24 + 2176))
      {
        *v9 = v48;
        goto LABEL_47;
      }
    }

    else
    {
      v32 = *(a2 - 1);
      if (*(v32 + 10370) < v25 || *(v32 + 10370) == v25 && *(v32 + 10368) < *(*v9 + 10368))
      {
        *v9 = v32;
        *(a2 - 1) = v22;
        v33 = *v15;
        v34 = *(*v9 + 10370);
        v35 = *(*v15 + 10370);
        if (v34 < v35 || v34 == v35 && *(*v9 + 10368) < *(*v15 + 10368))
        {
          *v15 = *v9;
          *v9 = v33;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v74 = *(*(v9 - 1) + 10370);
      v75 = *(*v9 + 10370);
      if (v74 >= v75 && (v74 != v75 || *(*(v9 - 1) + 10368) >= *(*v9 + 10368)))
      {
        result = sub_10001F158(v9, a2);
        v9 = result;
        goto LABEL_135;
      }
    }

    v76 = sub_10001F34C(v9, a2);
    if ((v77 & 1) == 0)
    {
      goto LABEL_133;
    }

    v78 = sub_10001F558(v9, v76);
    v9 = v76 + 1;
    result = sub_10001F558(v76 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v76;
      if (v78)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v78)
    {
LABEL_133:
      result = sub_10001E268(v8, v76, a3, -v11, a5 & 1);
      v9 = v76 + 1;
LABEL_135:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v80 = *v9;
  v83 = v9[1];
  v84 = *v9 + 0x2000;
  v85 = *(v83 + 10370);
  v86 = *(*v9 + 10370);
  if (*(v83 + 10370) < *(*v9 + 10370) || v85 == v86 && *(v83 + 10368) < *(*v9 + 10368))
  {
    v87 = *(a2 - 1);
    if (*(v87 + 10370) < v85 || *(v87 + 10370) == v85 && *(v87 + 10368) < *(v83 + 10368))
    {
      *v9 = v87;
      goto LABEL_177;
    }

    *v9 = v83;
    v9[1] = v80;
    v103 = *(a2 - 1);
    if (*(v103 + 10370) < v86 || *(v103 + 10370) == v86 && *(v103 + 10368) < *(v84 + 2176))
    {
      v9[1] = v103;
      goto LABEL_177;
    }
  }

  else
  {
    v98 = *(a2 - 1);
    if (*(v98 + 10370) < v85 || *(v98 + 10370) == v85 && *(v98 + 10368) < *(v83 + 10368))
    {
      v9[1] = v98;
      *(a2 - 1) = v83;
      v100 = *v9;
      v99 = v9[1];
      v101 = *(v99 + 10370);
      v102 = *(*v9 + 10370);
      if (v101 < v102 || v101 == v102 && *(v99 + 10368) < *(*v9 + 10368))
      {
        *v9 = v99;
        v9[1] = v100;
      }
    }
  }

  return result;
}

uint64_t *sub_10001ED90(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *result + 0x2000;
  v7 = *(*a2 + 10370);
  v8 = *(*result + 10370);
  if (*(*a2 + 10370) < *(*result + 10370) || v7 == v8 && *(*a2 + 10368) < *(*result + 10368))
  {
    if (*(*a3 + 10370) < v7 || *(*a3 + 10370) == v7 && *(*a3 + 10368) < *(*a2 + 10368))
    {
      *result = *a3;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      if (*(*a3 + 10370) >= v8 && (*(*a3 + 10370) != v8 || *(*a3 + 10368) >= *(v6 + 2176)))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  if (*(*a3 + 10370) >= v7 && (*(*a3 + 10370) != v7 || *(*a3 + 10368) >= *(*a2 + 10368)))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v9 = *result;
  v10 = *(*a2 + 10370);
  v11 = *(*result + 10370);
  if (v10 < v11 || v10 == v11 && *(*a2 + 10368) < *(*result + 10368))
  {
    *result = *a2;
    *a2 = v9;
    v4 = *a3;
  }

LABEL_15:
  v12 = *(*a4 + 10370);
  v13 = *(v4 + 10370);
  if (v12 < v13 || v12 == v13 && *(*a4 + 10368) < *(v4 + 10368))
  {
    *a3 = *a4;
    *a4 = v4;
    v14 = *a2;
    v15 = *(*a3 + 10370);
    v16 = *(*a2 + 10370);
    if (v15 < v16 || v15 == v16 && *(*a3 + 10368) < *(*a2 + 10368))
    {
      *a2 = *a3;
      *a3 = v14;
      v17 = *result;
      v18 = *(*a2 + 10370);
      v19 = *(*result + 10370);
      if (v18 < v19 || v18 == v19 && *(*a2 + 10368) < *(*result + 10368))
      {
        *result = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

void *sub_10001EF94(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[1];
        v7 = *(v6 + 10370);
        if (*(v6 + 10370) < *(*v5 + 10370) || v7 == *(*v5 + 10370) && *(v6 + 10368) < *(*v5 + 10368))
        {
          v5[1] = *v5;
          v8 = result;
          if (v5 != result)
          {
            v9 = v3;
            while (1)
            {
              v10 = *(result + v9 - 8);
              if (*(v10 + 10370) <= v7)
              {
                if (v7 != *(v10 + 10370))
                {
                  v8 = v5;
                  goto LABEL_17;
                }

                if (*(v6 + 10368) >= *(v10 + 10368))
                {
                  break;
                }
              }

              --v5;
              *(result + v9) = v10;
              v9 -= 8;
              if (!v9)
              {
                v8 = result;
                goto LABEL_17;
              }
            }

            v8 = (result + v9);
          }

LABEL_17:
          *v8 = v6;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_10001F07C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = -8;
      v5 = 8;
      v6 = result;
      do
      {
        v7 = *(result + v3);
        v3 = v5;
        v8 = *v2;
        v9 = *v2 + 0x2000;
        v10 = *(*v2 + 10370);
        if (*(*v2 + 10370) < *(v7 + 10370) || v10 == *(v7 + 10370) && *(*v2 + 10368) < *(v7 + 10368))
        {
          *v2 = v7;
          v11 = v4;
          for (i = v6; ; --i)
          {
            v13 = *(i - 1);
            if (*(v13 + 10370) <= v10 && (v10 != *(v13 + 10370) || *(v9 + 2176) >= *(v13 + 10368)))
            {
              break;
            }

            *i = v13;
            v11 += 8;
            if (!v11)
            {
              __break(1u);
              return result;
            }
          }

          *i = v8;
        }

        v5 = v3 + 8;
        v2 = (result + v3 + 8);
        ++v6;
        v4 -= 8;
      }

      while (v2 != a2);
    }
  }

  return result;
}

unint64_t sub_10001F158(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *a1 + 0x2000;
  v4 = *(*a1 + 10370);
  v5 = *(*(a2 - 8) + 10370);
  if (*(*a1 + 10370) < v5 || v4 == *(*(a2 - 8) + 10370) && (v5 = *(*a1 + 10368), v5 < *(*(a2 - 8) + 10368)))
  {
    for (i = (a1 + 1); i != a2; i += 8)
    {
      v5 = *i + 0x2000;
      if (*(*i + 10370) > v4)
      {
        goto LABEL_16;
      }

      if (v4 == *(*i + 10370))
      {
        v5 = *(*i + 10368);
        if (*(*a1 + 10368) < v5)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
      ;
    }

LABEL_16:
    v5 = a2;
    if (i >= a2)
    {
      goto LABEL_25;
    }

    if (a2 != a1)
    {
      v5 = a2 - 8;
      do
      {
        if (*(*v5 + 10370) <= v4 && (v4 != *(*v5 + 10370) || *(*a1 + 10368) >= *(*v5 + 10368)))
        {
          goto LABEL_25;
        }

        v7 = v5 == a1;
        v5 -= 8;
      }

      while (!v7);
    }
  }

LABEL_24:
  while (1)
  {
    __break(1u);
LABEL_25:
    if (i >= v5)
    {
      break;
    }

    v8 = *i;
    v9 = *v5;
LABEL_27:
    *i = v9;
    i += 8;
    *v5 = v8;
    while (i != a2)
    {
      v8 = *i;
      if (*(*i + 10370) > v4 || v4 == *(*i + 10370) && *(v3 + 2176) < *(*i + 10368))
      {
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        v5 -= 8;
        while (1)
        {
          v9 = *v5;
          if (*(*v5 + 10370) <= v4 && (v4 != *(*v5 + 10370) || *(v3 + 2176) >= *(*v5 + 10368)))
          {
            break;
          }

          v7 = v5 == a1;
          v5 -= 8;
          if (v7)
          {
            goto LABEL_24;
          }
        }

        if (i < v5)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }

      i += 8;
    }
  }

LABEL_42:
  if ((i - 8) != a1)
  {
    *a1 = *(i - 8);
  }

  *(i - 8) = v2;
  return i;
}

uint64_t *sub_10001F34C(uint64_t *a1, uint64_t *a2)
{
  v5 = a1 + 1;
  v6 = *a1;
  if (a1 + 1 != a2)
  {
    v5 = (v6 + 0x2000);
    v2 = *(v6 + 10370);
    v7 = 1;
    while (1)
    {
      v4 = a1[v7];
      if (*(v4 + 10370) >= v2 && (*(v4 + 10370) != v2 || *(v4 + 10368) >= *(v6 + 10368)))
      {
        break;
      }

      v3 = &a1[++v7];
      if (&a1[v7] == a2)
      {
        goto LABEL_16;
      }
    }

    v3 = &a1[v7];
    if (v7 == 1)
    {
      goto LABEL_17;
    }

    if (a2 != a1)
    {
      v8 = a2 - 1;
      do
      {
        if (*(*v8 + 10370) < v2 || *(*v8 + 10370) == v2 && *(*v8 + 10368) < *(v6 + 10368))
        {
          goto LABEL_29;
        }

        v9 = v8-- == a1;
      }

      while (!v9);
    }
  }

LABEL_16:
  while (1)
  {
    __break(1u);
LABEL_17:
    v8 = a2;
    if (v3 < a2)
    {
      v8 = a2 - 1;
      v10 = *(a2 - 1);
      if (*(v10 + 10370) >= v2)
      {
        v11 = *(v10 + 10370);
        do
        {
          if (v11 == v2)
          {
            if (*(v10 + 10368) < *(v5 + 1088) || v3 >= v8)
            {
              break;
            }
          }

          else if (v3 >= v8)
          {
            break;
          }

          v13 = *--v8;
          v10 = v13;
          v11 = *(v13 + 10370);
        }

        while (*(v13 + 10370) >= v2);
      }
    }

LABEL_29:
    if (v3 >= v8)
    {
      break;
    }

    v14 = *v8;
    v15 = v3;
    v16 = v8;
LABEL_31:
    *v15++ = v14;
    *v16 = v4;
    while (v15 != a2)
    {
      v4 = *v15;
      if (*(*v15 + 10370) >= v2 && (*(*v15 + 10370) != v2 || *(*v15 + 10368) >= *(v5 + 1088)))
      {
        if (v16 == a1)
        {
          goto LABEL_16;
        }

        --v16;
        while (1)
        {
          v14 = *v16;
          if (*(*v16 + 10370) < v2 || *(*v16 + 10370) == v2 && *(*v16 + 10368) < *(v5 + 1088))
          {
            break;
          }

          v9 = v16-- == a1;
          if (v9)
          {
            goto LABEL_16;
          }
        }

        if (v15 < v16)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      ++v15;
    }
  }

  v15 = v3;
LABEL_48:
  v17 = v15 - 1;
  if (v15 - 1 != a1)
  {
    *a1 = *v17;
  }

  *v17 = v6;
  return v15 - 1;
}

BOOL sub_10001F558(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v6 = *a1;
      v19 = a1[1];
      v20 = *a1 + 0x2000;
      v21 = *(v19 + 10370);
      v22 = *(*a1 + 10370);
      if (*(v19 + 10370) >= *(*a1 + 10370) && (v21 != v22 || *(v19 + 10368) >= *(*a1 + 10368)))
      {
        v33 = *(a2 - 1);
        if (*(v33 + 10370) < v21 || *(v33 + 10370) == v21 && *(v33 + 10368) < *(v19 + 10368))
        {
          a1[1] = v33;
          *(a2 - 1) = v19;
          v35 = *a1;
          v34 = a1[1];
          v36 = *(v34 + 10370);
          v37 = *(*a1 + 10370);
          if (v36 < v37 || v36 == v37 && *(v34 + 10368) < *(*a1 + 10368))
          {
            *a1 = v34;
            a1[1] = v35;
          }
        }

        return 1;
      }

      v23 = *(a2 - 1);
      if (*(v23 + 10370) < v21 || *(v23 + 10370) == v21 && *(v23 + 10368) < *(v19 + 10368))
      {
        *a1 = v23;
      }

      else
      {
        *a1 = v19;
        a1[1] = v6;
        v41 = *(a2 - 1);
        if (*(v41 + 10370) >= v22 && (*(v41 + 10370) != v22 || *(v41 + 10368) >= *(v20 + 2176)))
        {
          return 1;
        }

        a1[1] = v41;
      }

LABEL_41:
      *(a2 - 1) = v6;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_10001ED90(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(v9 + 10370);
        v12 = *(v10 + 10370);
        if (v11 < v12 || v11 == v12 && *(v9 + 10368) < *(v10 + 10368))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v13 + 10370);
          v16 = *(v14 + 10370);
          if (*(v13 + 10370) < v16 || v15 == v16 && *(v13 + 10368) < *(v14 + 10368))
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            if (*(v17 + 10370) > v15 || v15 == *(v17 + 10370) && *(v13 + 10368) < *(v17 + 10368))
            {
              a1[1] = v13;
              a1[2] = v17;
              v18 = *a1;
              if (*(*a1 + 10370) > v15 || v15 == *(*a1 + 10370) && *(v13 + 10368) < *(*a1 + 10368))
              {
                *a1 = v13;
                a1[1] = v18;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_10001ED90(a1, a1 + 1, a1 + 2, a2 - 1);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 10370);
    v8 = *(*a1 + 10370);
    if (v7 >= v8 && (v7 != v8 || *(v5 + 10368) >= *(*a1 + 10368)))
    {
      return 1;
    }

    *a1 = v5;
    goto LABEL_41;
  }

LABEL_17:
  v24 = a1 + 2;
  v25 = *a1;
  v26 = a1 + 1;
  v27 = a1[1];
  v28 = *a1 + 0x2000;
  v29 = *(v27 + 10370);
  v30 = *(*a1 + 10370);
  if (*(v27 + 10370) < *(*a1 + 10370) || v29 == v30 && *(v27 + 10368) < *(*a1 + 10368))
  {
    v31 = *v24;
    v32 = *v24 + 0x2000;
    if (*(*v24 + 10370) < v29 || (v42 = *(*v24 + 10370), v42 == v29) && *(*v24 + 10368) < *(v27 + 10368))
    {
      *a1 = v31;
    }

    else
    {
      *a1 = v27;
      a1[1] = v25;
      if (v42 >= v30 && (v42 != v30 || *(v32 + 2176) >= *(v28 + 2176)))
      {
        goto LABEL_48;
      }

      *v26 = v31;
    }

    v26 = a1 + 2;
LABEL_47:
    *v26 = v25;
    goto LABEL_48;
  }

  v38 = *v24;
  v39 = *v24 + 0x2000;
  v40 = *(*v24 + 10370);
  if (*(*v24 + 10370) < v29 || v40 == v29 && *(*v24 + 10368) < *(v27 + 10368))
  {
    *v26 = v38;
    *v24 = v27;
    if (v40 < v30 || v40 == v30 && *(v39 + 2176) < *(v28 + 2176))
    {
      *a1 = v38;
      goto LABEL_47;
    }
  }

LABEL_48:
  v43 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = *v43;
    v47 = *v43 + 0x2000;
    v48 = *v24;
    v49 = *v24 + 0x2000;
    v50 = *(*v43 + 10370);
    if (*(*v43 + 10370) < *(v49 + 2178) || v50 == *(v49 + 2178) && *(*v43 + 10368) < *(v49 + 2176))
    {
      *v43 = v48;
      v51 = v44;
      while (1)
      {
        v52 = *(a1 + v51 + 8);
        if (*(v52 + 10370) <= v50 && (v50 != *(v52 + 10370) || *(v47 + 2176) >= *(v52 + 10368)))
        {
          break;
        }

        *(a1 + v51 + 16) = v52;
        v51 -= 8;
        if (v51 == -16)
        {
          v53 = a1;
          goto LABEL_61;
        }
      }

      v53 = (a1 + v51 + 16);
LABEL_61:
      *v53 = v46;
      if (++v45 == 8)
      {
        return v43 + 1 == a2;
      }
    }

    v24 = v43;
    v44 += 8;
    if (++v43 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_10001FA58(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_10001FBC0(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *(*v12 + 10370);
        v15 = *(*a1 + 10370);
        if (v14 < v15 || v14 == v15 && *(*v12 + 10368) < *(*a1 + 10368))
        {
          *v12 = *a1;
          *a1 = v13;
          sub_10001FBC0(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 1;
      do
      {
        v17 = *a1;
        v18 = sub_10001FD34(a1, a4, v8);
        if (v16 == v18)
        {
          *v18 = v17;
        }

        else
        {
          *v18 = *v16;
          *v16 = v17;
          sub_10001FDC0(a1, (v18 + 1), a4, v18 + 1 - a1);
        }

        --v16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_10001FBC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(*v8 + 10370);
        v11 = *(v8[1] + 10370);
        if (v10 < v11 || v10 == v11 && *(*v8 + 10368) < *(v8[1] + 10368))
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      v13 = *a4 + 0x2000;
      v14 = *(*a4 + 10370);
      if (*(*v8 + 10370) >= v14)
      {
        v15 = *(*a4 + 10370);
        if (*(*v8 + 10370) != v15 || *(*v8 + 10368) >= *(*a4 + 10368))
        {
          *a4 = *v8;
          if (v5 >= v7)
          {
            while (1)
            {
              v17 = 2 * v7;
              v7 = (2 * v7) | 1;
              v16 = (result + 8 * v7);
              v18 = v17 + 2;
              if (v18 < a3)
              {
                v19 = *(*v16 + 10370);
                v20 = *(v16[1] + 10370);
                if (v19 < v20 || v19 == v20 && *(*v16 + 10368) < *(v16[1] + 10368))
                {
                  ++v16;
                  v7 = v18;
                }
              }

              if (*(*v16 + 10370) < v14 || *(*v16 + 10370) == v15 && *(*v16 + 10368) < *(v13 + 2176))
              {
                break;
              }

              *v8 = *v16;
              v8 = v16;
              if (v5 < v7)
              {
                goto LABEL_13;
              }
            }
          }

          v16 = v8;
LABEL_13:
          *v16 = v12;
        }
      }
    }
  }

  return result;
}

void *sub_10001FD34(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v9 = v5[2];
      v8 = v5 + 2;
      v10 = v9 + 0x2000;
      v11 = *(*(v8 - 1) + 10370);
      v12 = *(v9 + 10370);
      if (v11 < v12 || v11 == v12 && *(*(v8 - 1) + 10368) < *(v10 + 2176))
      {
        result = v8;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_10001FDC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 8 * (v4 >> 1);
    v7 = *(a2 - 8);
    v8 = *(v7 + 10370);
    if (*(*v6 + 10370) < *(v7 + 10370) || *(*v6 + 10370) == v8 && *(*v6 + 10368) < *(v7 + 10368))
    {
      *(a2 - 8) = *v6;
      if (v4 >= 2)
      {
        while (1)
        {
          v10 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v9 = result + 8 * v5;
          if (*(*v9 + 10370) >= v8 && (*(*v9 + 10370) != v8 || *(*v9 + 10368) >= *(v7 + 10368)))
          {
            break;
          }

          *v6 = *v9;
          v6 = result + 8 * v5;
          if (v10 <= 1)
          {
            goto LABEL_9;
          }
        }
      }

      v9 = v6;
LABEL_9:
      *v9 = v7;
    }
  }

  return result;
}

uint64_t sub_10001FE7C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v78 = *(a2 - 1);
        v79 = *v9;
        v80 = *(v78 + 578);
        v81 = *(*v9 + 578);
        if (v80 < v81 || v80 == v81 && *(v78 + 576) < *(v79 + 576))
        {
          *v9 = v78;
          *(a2 - 1) = v79;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return sub_1000208E4(v9, v9 + 1, v9 + 2, a2 - 1);
    }

    if (v12 == 5)
    {
      result = sub_1000208E4(v9, v9 + 1, v9 + 2, v9 + 3);
      v87 = *(a2 - 1);
      v88 = v9[3];
      v89 = *(v87 + 578);
      v90 = *(v88 + 578);
      if (v89 < v90 || v89 == v90 && *(v87 + 576) < *(v88 + 576))
      {
        v9[3] = v87;
        *(a2 - 1) = v88;
        v92 = v9[2];
        v91 = v9[3];
        v93 = *(v91 + 578);
        v94 = *(v92 + 578);
        if (*(v91 + 578) < v94 || v93 == v94 && *(v91 + 576) < *(v92 + 576))
        {
          v9[2] = v91;
          v9[3] = v92;
          v95 = v9[1];
          if (*(v95 + 578) > v93 || v93 == *(v95 + 578) && *(v91 + 576) < *(v95 + 576))
          {
            v9[1] = v91;
            v9[2] = v95;
            v96 = *v9;
            if (*(*v9 + 578) > v93 || v93 == *(*v9 + 578) && *(v91 + 576) < *(v96 + 576))
            {
              *v9 = v91;
              v9[1] = v96;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_100020AB4(v9, a2);
      }

      else
      {

        return sub_100020B90(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_1000214D0(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    if (v12 >= 0x81)
    {
      v16 = *v14;
      v17 = *v9;
      v18 = *(*v14 + 578);
      v19 = *(*v9 + 578);
      if (*(*v14 + 578) < *(*v9 + 578) || v18 == v19 && *(v16 + 576) < *(v17 + 576))
      {
        v20 = *(a2 - 1);
        if (*(v20 + 578) < v18 || *(v20 + 578) == v18 && *(v20 + 576) < *(v16 + 576))
        {
          *v9 = v20;
        }

        else
        {
          *v9 = v16;
          *v14 = v17;
          v36 = *(a2 - 1);
          if (*(v36 + 578) >= v19 && (*(v36 + 578) != v19 || *(v36 + 576) >= *(v17 + 576)))
          {
            goto LABEL_35;
          }

          *v14 = v36;
        }

        *(a2 - 1) = v17;
        goto LABEL_35;
      }

      v26 = *(a2 - 1);
      if (*(v26 + 578) < v18 || *(v26 + 578) == v18 && *(v26 + 576) < *(v16 + 576))
      {
        *v14 = v26;
        *(a2 - 1) = v16;
        v27 = *v14;
        v28 = *v9;
        v29 = *(*v14 + 578);
        v30 = *(*v9 + 578);
        if (v29 < v30 || v29 == v30 && *(v27 + 576) < *(v28 + 576))
        {
          *v9 = v27;
          *v14 = v28;
        }
      }

LABEL_35:
      v37 = v13 - 1;
      v38 = v9[v37];
      v39 = v9[1];
      v40 = *(v38 + 578);
      v41 = *(v39 + 578);
      if (*(v38 + 578) < *(v39 + 578) || v40 == v41 && *(v38 + 576) < *(v39 + 576))
      {
        v42 = *(a2 - 2);
        if (*(v42 + 578) < v40 || *(v42 + 578) == v40 && *(v42 + 576) < *(v38 + 576))
        {
          v9[1] = v42;
        }

        else
        {
          v9[1] = v38;
          v9[v37] = v39;
          v49 = *(a2 - 2);
          if (*(v49 + 578) >= v41 && (*(v49 + 578) != v41 || *(v49 + 576) >= *(v39 + 576)))
          {
            goto LABEL_53;
          }

          v9[v37] = v49;
        }

        *(a2 - 2) = v39;
        goto LABEL_53;
      }

      v43 = *(a2 - 2);
      if (*(v43 + 578) < v40 || *(v43 + 578) == v40 && *(v43 + 576) < *(v38 + 576))
      {
        v9[v37] = v43;
        *(a2 - 2) = v38;
        v44 = v9[v37];
        v45 = v9[1];
        v46 = *(v44 + 578);
        v47 = *(v45 + 578);
        if (v46 < v47 || v46 == v47 && *(v44 + 576) < *(v45 + 576))
        {
          v9[1] = v44;
          v9[v37] = v45;
        }
      }

LABEL_53:
      v52 = v14[1];
      v50 = v14 + 1;
      v51 = v52;
      v53 = v9[2];
      v54 = *(v52 + 578);
      v55 = *(v53 + 578);
      if (*(v52 + 578) < *(v53 + 578) || v54 == v55 && *(v51 + 576) < *(v53 + 576))
      {
        v56 = *(a2 - 3);
        if (*(v56 + 578) < v54 || *(v56 + 578) == v54 && *(v56 + 576) < *(v51 + 576))
        {
          v9[2] = v56;
        }

        else
        {
          v9[2] = v51;
          *v50 = v53;
          v62 = *(a2 - 3);
          if (*(v62 + 578) >= v55 && (*(v62 + 578) != v55 || *(v62 + 576) >= *(v53 + 576)))
          {
            goto LABEL_66;
          }

          *v50 = v62;
        }

        *(a2 - 3) = v53;
        goto LABEL_66;
      }

      v57 = *(a2 - 3);
      if (*(v57 + 578) < v54 || *(v57 + 578) == v54 && *(v57 + 576) < *(v51 + 576))
      {
        *v50 = v57;
        *(a2 - 3) = v51;
        v58 = *v50;
        v59 = v9[2];
        v60 = *(*v50 + 578);
        v61 = *(v59 + 578);
        if (v60 < v61 || v60 == v61 && *(v58 + 576) < *(v59 + 576))
        {
          v9[2] = v58;
          *v50 = v59;
        }
      }

LABEL_66:
      v63 = v9[v37];
      v64 = *v15;
      v65 = *(*v15 + 578);
      v66 = *(v63 + 578);
      if (*(*v15 + 578) < *(v63 + 578) || v65 == v66 && *(v64 + 576) < *(v63 + 576))
      {
        v67 = *v50;
        if (*(*v50 + 578) < v65 || (v70 = *(*v50 + 578), v70 == v65) && *(v67 + 576) < *(v64 + 576))
        {
          v9[v37] = v67;
        }

        else
        {
          v9[v37] = v64;
          *v15 = v63;
          if (v70 >= v66 && (v70 != v66 || *(v67 + 576) >= *(v63 + 576)))
          {
            v64 = v63;
            goto LABEL_79;
          }

          *v15 = v67;
          v64 = v67;
        }
      }

      else
      {
        v68 = *v50;
        v69 = *(*v50 + 578);
        if (*(*v50 + 578) >= v65 && (v69 != v65 || *(v68 + 576) >= *(v64 + 576)))
        {
          goto LABEL_79;
        }

        *v15 = v68;
        *v50 = v64;
        if (v69 >= v66 && (v69 != v66 || *(v68 + 576) >= *(v63 + 576)))
        {
          v64 = v68;
          goto LABEL_79;
        }

        v9[v37] = v68;
        v50 = v15;
        v64 = v63;
      }

      *v50 = v63;
LABEL_79:
      v71 = *v9;
      *v9 = v64;
      *v15 = v71;
      goto LABEL_80;
    }

    v21 = *v9;
    v22 = *v14;
    v23 = *(*v9 + 578);
    v24 = *(*v15 + 578);
    if (*(*v9 + 578) < *(*v15 + 578) || v23 == v24 && *(v21 + 576) < *(v22 + 576))
    {
      v25 = *(a2 - 1);
      if (*(v25 + 578) < v23 || *(v25 + 578) == v23 && *(v25 + 576) < *(v21 + 576))
      {
        *v15 = v25;
LABEL_47:
        *(a2 - 1) = v22;
        goto LABEL_80;
      }

      *v15 = v21;
      *v9 = v22;
      v48 = *(a2 - 1);
      if (*(v48 + 578) < v24 || *(v48 + 578) == v24 && *(v48 + 576) < *(v22 + 576))
      {
        *v9 = v48;
        goto LABEL_47;
      }
    }

    else
    {
      v31 = *(a2 - 1);
      if (*(v31 + 578) < v23 || *(v31 + 578) == v23 && *(v31 + 576) < *(v21 + 576))
      {
        *v9 = v31;
        *(a2 - 1) = v21;
        v32 = *v9;
        v33 = *v15;
        v34 = *(*v9 + 578);
        v35 = *(*v15 + 578);
        if (v34 < v35 || v34 == v35 && *(v32 + 576) < *(v33 + 576))
        {
          *v15 = v32;
          *v9 = v33;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v72 = *(v9 - 1);
      v73 = *(v72 + 578);
      v74 = *(*v9 + 578);
      if (v73 >= v74 && (v73 != v74 || *(v72 + 576) >= *(*v9 + 576)))
      {
        result = sub_100020C60(v9, a2);
        v9 = result;
        goto LABEL_135;
      }
    }

    v75 = sub_100020E38(v9, a2);
    if ((v76 & 1) == 0)
    {
      goto LABEL_133;
    }

    v77 = sub_100021024(v9, v75);
    v9 = v75 + 1;
    result = sub_100021024(v75 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v77)
    {
LABEL_133:
      result = sub_10001FE7C(v8, v75, a3, -v11, a5 & 1);
      v9 = v75 + 1;
LABEL_135:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v82 = *v9;
  v83 = v9[1];
  v84 = *(v83 + 578);
  v85 = *(*v9 + 578);
  if (*(v83 + 578) < *(*v9 + 578) || v84 == v85 && *(v83 + 576) < *(v82 + 576))
  {
    v86 = *(a2 - 1);
    if (*(v86 + 578) < v84 || *(v86 + 578) == v84 && *(v86 + 576) < *(v83 + 576))
    {
      *v9 = v86;
    }

    else
    {
      *v9 = v83;
      v9[1] = v82;
      v102 = *(a2 - 1);
      if (*(v102 + 578) >= v85 && (*(v102 + 578) != v85 || *(v102 + 576) >= *(v82 + 576)))
      {
        return result;
      }

      v9[1] = v102;
    }

    *(a2 - 1) = v82;
    return result;
  }

  v97 = *(a2 - 1);
  if (*(v97 + 578) < v84 || *(v97 + 578) == v84 && *(v97 + 576) < *(v83 + 576))
  {
    v9[1] = v97;
    *(a2 - 1) = v83;
    v99 = *v9;
    v98 = v9[1];
    v100 = *(v98 + 578);
    v101 = *(*v9 + 578);
    if (v100 < v101 || v100 == v101 && *(v98 + 576) < *(v99 + 576))
    {
      *v9 = v98;
      v9[1] = v99;
    }
  }

  return result;
}

uint64_t *sub_1000208E4(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 578);
  v7 = *(*result + 578);
  if (*(*a2 + 578) < *(*result + 578) || v6 == v7 && *(v4 + 576) < *(v5 + 576))
  {
    v8 = *a3;
    if (*(*a3 + 578) < v6 || *(*a3 + 578) == v6 && *(v8 + 576) < *(v4 + 576))
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      if (*(*a3 + 578) >= v7 && (*(*a3 + 578) != v7 || *(v4 + 576) >= *(v5 + 576)))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  if (*(*a3 + 578) >= v6 && (*(*a3 + 578) != v6 || *(v5 + 576) >= *(v4 + 576)))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v9 = *a2;
  v10 = *result;
  v11 = *(*a2 + 578);
  v12 = *(*result + 578);
  if (v11 < v12 || v11 == v12 && *(v9 + 576) < *(v10 + 576))
  {
    *result = v9;
    *a2 = v10;
    v4 = *a3;
  }

LABEL_15:
  v13 = *a4;
  v14 = *(*a4 + 578);
  v15 = *(v4 + 578);
  if (v14 < v15 || v14 == v15 && *(v13 + 576) < *(v4 + 576))
  {
    *a3 = v13;
    *a4 = v4;
    v16 = *a3;
    v17 = *a2;
    v18 = *(*a3 + 578);
    v19 = *(*a2 + 578);
    if (v18 < v19 || v18 == v19 && *(v16 + 576) < *(v17 + 576))
    {
      *a2 = v16;
      *a3 = v17;
      v20 = *a2;
      v21 = *result;
      v22 = *(*a2 + 578);
      v23 = *(*result + 578);
      if (v22 < v23 || v22 == v23 && *(v20 + 576) < *(v21 + 576))
      {
        *result = v20;
        *a2 = v21;
      }
    }
  }

  return result;
}

void *sub_100020AB4(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v7 = *v5;
        v6 = v5[1];
        v8 = *(v6 + 578);
        if (*(v6 + 578) < *(*v5 + 578) || v8 == *(*v5 + 578) && *(v6 + 576) < *(v7 + 576))
        {
          v5[1] = v7;
          v9 = result;
          if (v5 != result)
          {
            v10 = v3;
            while (1)
            {
              v11 = *(result + v10 - 8);
              if (*(v11 + 578) <= v8)
              {
                if (v8 != *(v11 + 578))
                {
                  v9 = v5;
                  goto LABEL_17;
                }

                if (*(v6 + 576) >= *(v11 + 576))
                {
                  break;
                }
              }

              --v5;
              *(result + v10) = v11;
              v10 -= 8;
              if (!v10)
              {
                v9 = result;
                goto LABEL_17;
              }
            }

            v9 = (result + v10);
          }

LABEL_17:
          *v9 = v6;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_100020B90(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = -8;
      v5 = 8;
      v6 = result;
      do
      {
        v7 = *(result + v3);
        v3 = v5;
        v8 = *v2;
        v9 = *(*v2 + 578);
        if (*(*v2 + 578) < *(v7 + 578) || v9 == *(v7 + 578) && *(v8 + 576) < *(v7 + 576))
        {
          *v2 = v7;
          v10 = v4;
          for (i = v6; ; --i)
          {
            v12 = *(i - 1);
            if (*(v12 + 578) <= v9 && (v9 != *(v12 + 578) || *(v8 + 576) >= *(v12 + 576)))
            {
              break;
            }

            *i = v12;
            v10 += 8;
            if (!v10)
            {
              __break(1u);
              return result;
            }
          }

          *i = v8;
        }

        v5 = v3 + 8;
        v2 = (result + v3 + 8);
        ++v6;
        v4 -= 8;
      }

      while (v2 != a2);
    }
  }

  return result;
}

unint64_t sub_100020C60(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *(a2 - 1);
  v4 = *(*a1 + 578);
  v5 = *(v3 + 578);
  if (*(*a1 + 578) < v5 || v4 == *(v3 + 578) && (v5 = *(v2 + 576), v5 < *(v3 + 576)))
  {
    for (i = (a1 + 4); i != a2; i += 8)
    {
      v5 = *i;
      if (*(*i + 578) > v4)
      {
        goto LABEL_16;
      }

      if (v4 == *(*i + 578))
      {
        v5 = *(v5 + 576);
        if (*(v2 + 576) < v5)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
      ;
    }

LABEL_16:
    v5 = a2;
    if (i >= a2)
    {
      goto LABEL_25;
    }

    if (a2 != a1)
    {
      v5 = (a2 - 4);
      do
      {
        if (*(*v5 + 578) <= v4 && (v4 != *(*v5 + 578) || *(v2 + 576) >= *(*v5 + 576)))
        {
          goto LABEL_25;
        }

        v7 = v5 == a1;
        v5 -= 8;
      }

      while (!v7);
    }
  }

LABEL_24:
  while (1)
  {
    __break(1u);
LABEL_25:
    if (i >= v5)
    {
      break;
    }

    v8 = *i;
    v9 = *v5;
LABEL_27:
    *i = v9;
    i += 8;
    *v5 = v8;
    while (i != a2)
    {
      v8 = *i;
      if (*(*i + 578) > v4 || v4 == *(*i + 578) && *(v2 + 576) < *(v8 + 576))
      {
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        v5 -= 8;
        while (1)
        {
          v9 = *v5;
          if (*(*v5 + 578) <= v4 && (v4 != *(*v5 + 578) || *(v2 + 576) >= *(v9 + 576)))
          {
            break;
          }

          v7 = v5 == a1;
          v5 -= 8;
          if (v7)
          {
            goto LABEL_24;
          }
        }

        if (i < v5)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }

      i += 8;
    }
  }

LABEL_42:
  if ((i - 8) != a1)
  {
    *a1 = *(i - 8);
  }

  *(i - 8) = v2;
  return i;
}

uint64_t *sub_100020E38(uint64_t *a1, uint64_t *a2)
{
  v4 = a1 + 8;
  v5 = *a1;
  if (a1 + 1 != a2)
  {
    v4 = *(v5 + 578);
    v6 = 1;
    while (1)
    {
      v3 = a1[v6];
      if (*(v3 + 578) >= v4 && (*(v3 + 578) != v4 || *(v3 + 576) >= *(v5 + 576)))
      {
        break;
      }

      v2 = &a1[++v6];
      if (&a1[v6] == a2)
      {
        goto LABEL_16;
      }
    }

    v2 = &a1[v6];
    if (v6 == 1)
    {
      goto LABEL_17;
    }

    if (a2 != a1)
    {
      v7 = a2 - 1;
      do
      {
        if (*(*v7 + 578) < v4 || *(*v7 + 578) == v4 && *(*v7 + 576) < *(v5 + 576))
        {
          goto LABEL_29;
        }

        v8 = v7-- == a1;
      }

      while (!v8);
    }
  }

LABEL_16:
  while (1)
  {
    __break(1u);
LABEL_17:
    v7 = a2;
    if (v2 < a2)
    {
      v7 = a2 - 1;
      v9 = *(a2 - 1);
      if (*(v9 + 578) >= v4)
      {
        v10 = *(v9 + 578);
        do
        {
          if (v10 == v4)
          {
            if (*(v9 + 576) < *(v5 + 576) || v2 >= v7)
            {
              break;
            }
          }

          else if (v2 >= v7)
          {
            break;
          }

          v12 = *--v7;
          v9 = v12;
          v10 = *(v12 + 578);
        }

        while (*(v12 + 578) >= v4);
      }
    }

LABEL_29:
    if (v2 >= v7)
    {
      break;
    }

    v13 = *v7;
    v14 = v2;
    v15 = v7;
LABEL_31:
    *v14++ = v13;
    *v15 = v3;
    while (v14 != a2)
    {
      v3 = *v14;
      if (*(*v14 + 578) >= v4 && (*(*v14 + 578) != v4 || *(v3 + 576) >= *(v5 + 576)))
      {
        if (v15 == a1)
        {
          goto LABEL_16;
        }

        --v15;
        while (1)
        {
          v13 = *v15;
          if (*(*v15 + 578) < v4 || *(*v15 + 578) == v4 && *(v13 + 576) < *(v5 + 576))
          {
            break;
          }

          v8 = v15-- == a1;
          if (v8)
          {
            goto LABEL_16;
          }
        }

        if (v14 < v15)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      ++v14;
    }
  }

  v14 = v2;
LABEL_48:
  v16 = v14 - 1;
  if (v14 - 1 != a1)
  {
    *a1 = *v16;
  }

  *v16 = v5;
  return v14 - 1;
}

BOOL sub_100021024(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v19 = *a1;
        v20 = a1[1];
        v21 = *(v20 + 578);
        v22 = *(*a1 + 578);
        if (*(v20 + 578) >= *(*a1 + 578) && (v21 != v22 || *(v20 + 576) >= *(v19 + 576)))
        {
          v31 = *(a2 - 1);
          if (*(v31 + 578) < v21 || *(v31 + 578) == v21 && *(v31 + 576) < *(v20 + 576))
          {
            a1[1] = v31;
            *(a2 - 1) = v20;
            v33 = *a1;
            v32 = a1[1];
            v34 = *(v32 + 578);
            v35 = *(*a1 + 578);
            if (v34 < v35 || v34 == v35 && *(v32 + 576) < *(v33 + 576))
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v23 = *(a2 - 1);
        if (*(v23 + 578) < v21 || *(v23 + 578) == v21 && *(v23 + 576) < *(v20 + 576))
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v20;
          a1[1] = v19;
          v38 = *(a2 - 1);
          if (*(v38 + 578) >= v22 && (*(v38 + 578) != v22 || *(v38 + 576) >= *(v19 + 576)))
          {
            return 1;
          }

          a1[1] = v38;
        }

        *(a2 - 1) = v19;
        break;
      case 4:
        sub_1000208E4(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        sub_1000208E4(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(v9 + 578);
        v12 = *(v10 + 578);
        if (v11 < v12 || v11 == v12 && *(v9 + 576) < *(v10 + 576))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v13 + 578);
          v16 = *(v14 + 578);
          if (*(v13 + 578) < v16 || v15 == v16 && *(v13 + 576) < *(v14 + 576))
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            if (*(v17 + 578) > v15 || v15 == *(v17 + 578) && *(v13 + 576) < *(v17 + 576))
            {
              a1[1] = v13;
              a1[2] = v17;
              v18 = *a1;
              if (*(*a1 + 578) > v15 || v15 == *(*a1 + 578) && *(v13 + 576) < *(v18 + 576))
              {
                *a1 = v13;
                a1[1] = v18;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 578);
    v8 = *(*a1 + 578);
    if (v7 < v8 || v7 == v8 && *(v5 + 576) < *(v6 + 576))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v24 = a1 + 2;
  v25 = *a1;
  v26 = a1 + 1;
  v27 = a1[1];
  v28 = *(v27 + 578);
  v29 = *(*a1 + 578);
  if (*(v27 + 578) < *(*a1 + 578) || v28 == v29 && *(v27 + 576) < *(v25 + 576))
  {
    v30 = *v24;
    if (*(*v24 + 578) < v28 || (v39 = *(*v24 + 578), v39 == v28) && *(v30 + 576) < *(v27 + 576))
    {
      *a1 = v30;
    }

    else
    {
      *a1 = v27;
      a1[1] = v25;
      if (v39 >= v29 && (v39 != v29 || *(v30 + 576) >= *(v25 + 576)))
      {
        goto LABEL_48;
      }

      *v26 = v30;
    }

    v26 = a1 + 2;
LABEL_47:
    *v26 = v25;
    goto LABEL_48;
  }

  v36 = *v24;
  v37 = *(*v24 + 578);
  if (*(*v24 + 578) < v28 || v37 == v28 && *(v36 + 576) < *(v27 + 576))
  {
    *v26 = v36;
    *v24 = v27;
    if (v37 < v29 || v37 == v29 && *(v36 + 576) < *(v25 + 576))
    {
      *a1 = v36;
      goto LABEL_47;
    }
  }

LABEL_48:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *v40;
    v44 = *v24;
    v45 = *(*v40 + 578);
    if (*(*v40 + 578) < *(v44 + 578) || v45 == *(v44 + 578) && *(v43 + 576) < *(v44 + 576))
    {
      *v40 = v44;
      v46 = v41;
      while (1)
      {
        v47 = *(a1 + v46 + 8);
        if (*(v47 + 578) <= v45 && (v45 != *(v47 + 578) || *(v43 + 576) >= *(v47 + 576)))
        {
          break;
        }

        *(a1 + v46 + 16) = v47;
        v46 -= 8;
        if (v46 == -16)
        {
          v48 = a1;
          goto LABEL_61;
        }
      }

      v48 = (a1 + v46 + 16);
LABEL_61:
      *v48 = v43;
      if (++v42 == 8)
      {
        return v40 + 1 == a2;
      }
    }

    v24 = v40;
    v41 += 8;
    if (++v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_1000214D0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_100021630(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        v15 = *(*v12 + 578);
        v16 = *(*a1 + 578);
        if (v15 < v16 || v15 == v16 && *(v13 + 576) < *(v14 + 576))
        {
          *v12 = v14;
          *a1 = v13;
          sub_100021630(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = sub_100021788(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          sub_10002180C(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_100021630(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = *(*v8 + 578);
        v12 = *(v10 + 578);
        if (v11 < v12 || v11 == v12 && *(*v8 + 576) < *(v10 + 576))
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *v8;
      v14 = *a4;
      if (*(*v8 + 578) >= *(*a4 + 578))
      {
        v15 = *(*a4 + 578);
        if (*(*v8 + 578) != v15 || *(v13 + 576) >= *(v14 + 576))
        {
          *a4 = v13;
          if (v5 >= v7)
          {
            while (1)
            {
              v17 = 2 * v7;
              v7 = (2 * v7) | 1;
              v16 = (result + 8 * v7);
              v18 = v17 + 2;
              if (v18 < a3)
              {
                v19 = v16[1];
                v20 = *(*v16 + 578);
                v21 = *(v19 + 578);
                if (v20 < v21 || v20 == v21 && *(*v16 + 576) < *(v19 + 576))
                {
                  ++v16;
                  v7 = v18;
                }
              }

              v22 = *v16;
              if (*(*v16 + 578) < v15 || *(*v16 + 578) == v15 && *(v22 + 576) < *(v14 + 576))
              {
                break;
              }

              *v8 = v22;
              v8 = v16;
              if (v5 < v7)
              {
                goto LABEL_13;
              }
            }
          }

          v16 = v8;
LABEL_13:
          *v16 = v14;
        }
      }
    }
  }

  return result;
}

void *sub_100021788(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v10 = v5[2];
      v8 = v5 + 2;
      v9 = v10;
      v11 = *(v8 - 1);
      v12 = *(v11 + 578);
      v13 = *(v10 + 578);
      if (v12 < v13 || v12 == v13 && *(v11 + 576) < *(v9 + 576))
      {
        result = v8;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_10002180C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    v9 = *(v8 + 578);
    if (*(*v6 + 578) < *(v8 + 578) || *(*v6 + 578) == v9 && *(v7 + 576) < *(v8 + 576))
    {
      *(a2 - 8) = v7;
      if (v4 >= 2)
      {
        while (1)
        {
          v11 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v10 = (result + 8 * v5);
          v12 = *v10;
          if (*(*v10 + 578) >= v9 && (*(*v10 + 578) != v9 || *(v12 + 576) >= *(v8 + 576)))
          {
            break;
          }

          *v6 = v12;
          v6 = (result + 8 * v5);
          if (v11 <= 1)
          {
            goto LABEL_9;
          }
        }
      }

      v10 = v6;
LABEL_9:
      *v10 = v8;
    }
  }

  return result;
}

uint64_t sub_1000218BC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v78 = *(a2 - 1);
        v79 = *v9;
        v80 = *(v78 + 290);
        v81 = *(*v9 + 290);
        if (v80 < v81 || v80 == v81 && *(v78 + 288) < *(v79 + 288))
        {
          *v9 = v78;
          *(a2 - 1) = v79;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return sub_100022324(v9, v9 + 1, v9 + 2, a2 - 1);
    }

    if (v12 == 5)
    {
      result = sub_100022324(v9, v9 + 1, v9 + 2, v9 + 3);
      v87 = *(a2 - 1);
      v88 = v9[3];
      v89 = *(v87 + 290);
      v90 = *(v88 + 290);
      if (v89 < v90 || v89 == v90 && *(v87 + 288) < *(v88 + 288))
      {
        v9[3] = v87;
        *(a2 - 1) = v88;
        v92 = v9[2];
        v91 = v9[3];
        v93 = *(v91 + 290);
        v94 = *(v92 + 290);
        if (*(v91 + 290) < v94 || v93 == v94 && *(v91 + 288) < *(v92 + 288))
        {
          v9[2] = v91;
          v9[3] = v92;
          v95 = v9[1];
          if (*(v95 + 290) > v93 || v93 == *(v95 + 290) && *(v91 + 288) < *(v95 + 288))
          {
            v9[1] = v91;
            v9[2] = v95;
            v96 = *v9;
            if (*(*v9 + 290) > v93 || v93 == *(*v9 + 290) && *(v91 + 288) < *(v96 + 288))
            {
              *v9 = v91;
              v9[1] = v96;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_1000224F4(v9, a2);
      }

      else
      {

        return sub_1000225D0(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_100022F10(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    if (v12 >= 0x81)
    {
      v16 = *v14;
      v17 = *v9;
      v18 = *(*v14 + 290);
      v19 = *(*v9 + 290);
      if (*(*v14 + 290) < *(*v9 + 290) || v18 == v19 && *(v16 + 288) < *(v17 + 288))
      {
        v20 = *(a2 - 1);
        if (*(v20 + 290) < v18 || *(v20 + 290) == v18 && *(v20 + 288) < *(v16 + 288))
        {
          *v9 = v20;
        }

        else
        {
          *v9 = v16;
          *v14 = v17;
          v36 = *(a2 - 1);
          if (*(v36 + 290) >= v19 && (*(v36 + 290) != v19 || *(v36 + 288) >= *(v17 + 288)))
          {
            goto LABEL_35;
          }

          *v14 = v36;
        }

        *(a2 - 1) = v17;
        goto LABEL_35;
      }

      v26 = *(a2 - 1);
      if (*(v26 + 290) < v18 || *(v26 + 290) == v18 && *(v26 + 288) < *(v16 + 288))
      {
        *v14 = v26;
        *(a2 - 1) = v16;
        v27 = *v14;
        v28 = *v9;
        v29 = *(*v14 + 290);
        v30 = *(*v9 + 290);
        if (v29 < v30 || v29 == v30 && *(v27 + 288) < *(v28 + 288))
        {
          *v9 = v27;
          *v14 = v28;
        }
      }

LABEL_35:
      v37 = v13 - 1;
      v38 = v9[v37];
      v39 = v9[1];
      v40 = *(v38 + 290);
      v41 = *(v39 + 290);
      if (*(v38 + 290) < *(v39 + 290) || v40 == v41 && *(v38 + 288) < *(v39 + 288))
      {
        v42 = *(a2 - 2);
        if (*(v42 + 290) < v40 || *(v42 + 290) == v40 && *(v42 + 288) < *(v38 + 288))
        {
          v9[1] = v42;
        }

        else
        {
          v9[1] = v38;
          v9[v37] = v39;
          v49 = *(a2 - 2);
          if (*(v49 + 290) >= v41 && (*(v49 + 290) != v41 || *(v49 + 288) >= *(v39 + 288)))
          {
            goto LABEL_53;
          }

          v9[v37] = v49;
        }

        *(a2 - 2) = v39;
        goto LABEL_53;
      }

      v43 = *(a2 - 2);
      if (*(v43 + 290) < v40 || *(v43 + 290) == v40 && *(v43 + 288) < *(v38 + 288))
      {
        v9[v37] = v43;
        *(a2 - 2) = v38;
        v44 = v9[v37];
        v45 = v9[1];
        v46 = *(v44 + 290);
        v47 = *(v45 + 290);
        if (v46 < v47 || v46 == v47 && *(v44 + 288) < *(v45 + 288))
        {
          v9[1] = v44;
          v9[v37] = v45;
        }
      }

LABEL_53:
      v52 = v14[1];
      v50 = v14 + 1;
      v51 = v52;
      v53 = v9[2];
      v54 = *(v52 + 290);
      v55 = *(v53 + 290);
      if (*(v52 + 290) < *(v53 + 290) || v54 == v55 && *(v51 + 288) < *(v53 + 288))
      {
        v56 = *(a2 - 3);
        if (*(v56 + 290) < v54 || *(v56 + 290) == v54 && *(v56 + 288) < *(v51 + 288))
        {
          v9[2] = v56;
        }

        else
        {
          v9[2] = v51;
          *v50 = v53;
          v62 = *(a2 - 3);
          if (*(v62 + 290) >= v55 && (*(v62 + 290) != v55 || *(v62 + 288) >= *(v53 + 288)))
          {
            goto LABEL_66;
          }

          *v50 = v62;
        }

        *(a2 - 3) = v53;
        goto LABEL_66;
      }

      v57 = *(a2 - 3);
      if (*(v57 + 290) < v54 || *(v57 + 290) == v54 && *(v57 + 288) < *(v51 + 288))
      {
        *v50 = v57;
        *(a2 - 3) = v51;
        v58 = *v50;
        v59 = v9[2];
        v60 = *(*v50 + 290);
        v61 = *(v59 + 290);
        if (v60 < v61 || v60 == v61 && *(v58 + 288) < *(v59 + 288))
        {
          v9[2] = v58;
          *v50 = v59;
        }
      }

LABEL_66:
      v63 = v9[v37];
      v64 = *v15;
      v65 = *(*v15 + 290);
      v66 = *(v63 + 290);
      if (*(*v15 + 290) < *(v63 + 290) || v65 == v66 && *(v64 + 288) < *(v63 + 288))
      {
        v67 = *v50;
        if (*(*v50 + 290) < v65 || (v70 = *(*v50 + 290), v70 == v65) && *(v67 + 288) < *(v64 + 288))
        {
          v9[v37] = v67;
        }

        else
        {
          v9[v37] = v64;
          *v15 = v63;
          if (v70 >= v66 && (v70 != v66 || *(v67 + 288) >= *(v63 + 288)))
          {
            v64 = v63;
            goto LABEL_79;
          }

          *v15 = v67;
          v64 = v67;
        }
      }

      else
      {
        v68 = *v50;
        v69 = *(*v50 + 290);
        if (*(*v50 + 290) >= v65 && (v69 != v65 || *(v68 + 288) >= *(v64 + 288)))
        {
          goto LABEL_79;
        }

        *v15 = v68;
        *v50 = v64;
        if (v69 >= v66 && (v69 != v66 || *(v68 + 288) >= *(v63 + 288)))
        {
          v64 = v68;
          goto LABEL_79;
        }

        v9[v37] = v68;
        v50 = v15;
        v64 = v63;
      }

      *v50 = v63;
LABEL_79:
      v71 = *v9;
      *v9 = v64;
      *v15 = v71;
      goto LABEL_80;
    }

    v21 = *v9;
    v22 = *v14;
    v23 = *(*v9 + 290);
    v24 = *(*v15 + 290);
    if (*(*v9 + 290) < *(*v15 + 290) || v23 == v24 && *(v21 + 288) < *(v22 + 288))
    {
      v25 = *(a2 - 1);
      if (*(v25 + 290) < v23 || *(v25 + 290) == v23 && *(v25 + 288) < *(v21 + 288))
      {
        *v15 = v25;
LABEL_47:
        *(a2 - 1) = v22;
        goto LABEL_80;
      }

      *v15 = v21;
      *v9 = v22;
      v48 = *(a2 - 1);
      if (*(v48 + 290) < v24 || *(v48 + 290) == v24 && *(v48 + 288) < *(v22 + 288))
      {
        *v9 = v48;
        goto LABEL_47;
      }
    }

    else
    {
      v31 = *(a2 - 1);
      if (*(v31 + 290) < v23 || *(v31 + 290) == v23 && *(v31 + 288) < *(v21 + 288))
      {
        *v9 = v31;
        *(a2 - 1) = v21;
        v32 = *v9;
        v33 = *v15;
        v34 = *(*v9 + 290);
        v35 = *(*v15 + 290);
        if (v34 < v35 || v34 == v35 && *(v32 + 288) < *(v33 + 288))
        {
          *v15 = v32;
          *v9 = v33;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v72 = *(v9 - 1);
      v73 = *(v72 + 290);
      v74 = *(*v9 + 290);
      if (v73 >= v74 && (v73 != v74 || *(v72 + 288) >= *(*v9 + 288)))
      {
        result = sub_1000226A0(v9, a2);
        v9 = result;
        goto LABEL_135;
      }
    }

    v75 = sub_100022878(v9, a2);
    if ((v76 & 1) == 0)
    {
      goto LABEL_133;
    }

    v77 = sub_100022A64(v9, v75);
    v9 = v75 + 1;
    result = sub_100022A64(v75 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v77)
    {
LABEL_133:
      result = sub_1000218BC(v8, v75, a3, -v11, a5 & 1);
      v9 = v75 + 1;
LABEL_135:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v82 = *v9;
  v83 = v9[1];
  v84 = *(v83 + 290);
  v85 = *(*v9 + 290);
  if (*(v83 + 290) < *(*v9 + 290) || v84 == v85 && *(v83 + 288) < *(v82 + 288))
  {
    v86 = *(a2 - 1);
    if (*(v86 + 290) < v84 || *(v86 + 290) == v84 && *(v86 + 288) < *(v83 + 288))
    {
      *v9 = v86;
    }

    else
    {
      *v9 = v83;
      v9[1] = v82;
      v102 = *(a2 - 1);
      if (*(v102 + 290) >= v85 && (*(v102 + 290) != v85 || *(v102 + 288) >= *(v82 + 288)))
      {
        return result;
      }

      v9[1] = v102;
    }

    *(a2 - 1) = v82;
    return result;
  }

  v97 = *(a2 - 1);
  if (*(v97 + 290) < v84 || *(v97 + 290) == v84 && *(v97 + 288) < *(v83 + 288))
  {
    v9[1] = v97;
    *(a2 - 1) = v83;
    v99 = *v9;
    v98 = v9[1];
    v100 = *(v98 + 290);
    v101 = *(*v9 + 290);
    if (v100 < v101 || v100 == v101 && *(v98 + 288) < *(v99 + 288))
    {
      *v9 = v98;
      v9[1] = v99;
    }
  }

  return result;
}

uint64_t *sub_100022324(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 290);
  v7 = *(*result + 290);
  if (*(*a2 + 290) < *(*result + 290) || v6 == v7 && *(v4 + 288) < *(v5 + 288))
  {
    v8 = *a3;
    if (*(*a3 + 290) < v6 || *(*a3 + 290) == v6 && *(v8 + 288) < *(v4 + 288))
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      if (*(*a3 + 290) >= v7 && (*(*a3 + 290) != v7 || *(v4 + 288) >= *(v5 + 288)))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  if (*(*a3 + 290) >= v6 && (*(*a3 + 290) != v6 || *(v5 + 288) >= *(v4 + 288)))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v9 = *a2;
  v10 = *result;
  v11 = *(*a2 + 290);
  v12 = *(*result + 290);
  if (v11 < v12 || v11 == v12 && *(v9 + 288) < *(v10 + 288))
  {
    *result = v9;
    *a2 = v10;
    v4 = *a3;
  }

LABEL_15:
  v13 = *a4;
  v14 = *(*a4 + 290);
  v15 = *(v4 + 290);
  if (v14 < v15 || v14 == v15 && *(v13 + 288) < *(v4 + 288))
  {
    *a3 = v13;
    *a4 = v4;
    v16 = *a3;
    v17 = *a2;
    v18 = *(*a3 + 290);
    v19 = *(*a2 + 290);
    if (v18 < v19 || v18 == v19 && *(v16 + 288) < *(v17 + 288))
    {
      *a2 = v16;
      *a3 = v17;
      v20 = *a2;
      v21 = *result;
      v22 = *(*a2 + 290);
      v23 = *(*result + 290);
      if (v22 < v23 || v22 == v23 && *(v20 + 288) < *(v21 + 288))
      {
        *result = v20;
        *a2 = v21;
      }
    }
  }

  return result;
}

void *sub_1000224F4(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v7 = *v5;
        v6 = v5[1];
        v8 = *(v6 + 290);
        if (*(v6 + 290) < *(*v5 + 290) || v8 == *(*v5 + 290) && *(v6 + 288) < *(v7 + 288))
        {
          v5[1] = v7;
          v9 = result;
          if (v5 != result)
          {
            v10 = v3;
            while (1)
            {
              v11 = *(result + v10 - 8);
              if (*(v11 + 290) <= v8)
              {
                if (v8 != *(v11 + 290))
                {
                  v9 = v5;
                  goto LABEL_17;
                }

                if (*(v6 + 288) >= *(v11 + 288))
                {
                  break;
                }
              }

              --v5;
              *(result + v10) = v11;
              v10 -= 8;
              if (!v10)
              {
                v9 = result;
                goto LABEL_17;
              }
            }

            v9 = (result + v10);
          }

LABEL_17:
          *v9 = v6;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_1000225D0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = -8;
      v5 = 8;
      v6 = result;
      do
      {
        v7 = *(result + v3);
        v3 = v5;
        v8 = *v2;
        v9 = *(*v2 + 290);
        if (*(*v2 + 290) < *(v7 + 290) || v9 == *(v7 + 290) && *(v8 + 288) < *(v7 + 288))
        {
          *v2 = v7;
          v10 = v4;
          for (i = v6; ; --i)
          {
            v12 = *(i - 1);
            if (*(v12 + 290) <= v9 && (v9 != *(v12 + 290) || *(v8 + 288) >= *(v12 + 288)))
            {
              break;
            }

            *i = v12;
            v10 += 8;
            if (!v10)
            {
              __break(1u);
              return result;
            }
          }

          *i = v8;
        }

        v5 = v3 + 8;
        v2 = (result + v3 + 8);
        ++v6;
        v4 -= 8;
      }

      while (v2 != a2);
    }
  }

  return result;
}

unint64_t sub_1000226A0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *(a2 - 1);
  v4 = *(*a1 + 290);
  v5 = *(v3 + 290);
  if (*(*a1 + 290) < v5 || v4 == *(v3 + 290) && (v5 = *(v2 + 288), v5 < *(v3 + 288)))
  {
    for (i = (a1 + 4); i != a2; i += 8)
    {
      v5 = *i;
      if (*(*i + 290) > v4)
      {
        goto LABEL_16;
      }

      if (v4 == *(*i + 290))
      {
        v5 = *(v5 + 288);
        if (*(v2 + 288) < v5)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
      ;
    }

LABEL_16:
    v5 = a2;
    if (i >= a2)
    {
      goto LABEL_25;
    }

    if (a2 != a1)
    {
      v5 = (a2 - 4);
      do
      {
        if (*(*v5 + 290) <= v4 && (v4 != *(*v5 + 290) || *(v2 + 288) >= *(*v5 + 288)))
        {
          goto LABEL_25;
        }

        v7 = v5 == a1;
        v5 -= 8;
      }

      while (!v7);
    }
  }

LABEL_24:
  while (1)
  {
    __break(1u);
LABEL_25:
    if (i >= v5)
    {
      break;
    }

    v8 = *i;
    v9 = *v5;
LABEL_27:
    *i = v9;
    i += 8;
    *v5 = v8;
    while (i != a2)
    {
      v8 = *i;
      if (*(*i + 290) > v4 || v4 == *(*i + 290) && *(v2 + 288) < *(v8 + 288))
      {
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        v5 -= 8;
        while (1)
        {
          v9 = *v5;
          if (*(*v5 + 290) <= v4 && (v4 != *(*v5 + 290) || *(v2 + 288) >= *(v9 + 288)))
          {
            break;
          }

          v7 = v5 == a1;
          v5 -= 8;
          if (v7)
          {
            goto LABEL_24;
          }
        }

        if (i < v5)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }

      i += 8;
    }
  }

LABEL_42:
  if ((i - 8) != a1)
  {
    *a1 = *(i - 8);
  }

  *(i - 8) = v2;
  return i;
}

uint64_t *sub_100022878(uint64_t *a1, uint64_t *a2)
{
  v4 = a1 + 8;
  v5 = *a1;
  if (a1 + 1 != a2)
  {
    v4 = *(v5 + 290);
    v6 = 1;
    while (1)
    {
      v3 = a1[v6];
      if (*(v3 + 290) >= v4 && (*(v3 + 290) != v4 || *(v3 + 288) >= *(v5 + 288)))
      {
        break;
      }

      v2 = &a1[++v6];
      if (&a1[v6] == a2)
      {
        goto LABEL_16;
      }
    }

    v2 = &a1[v6];
    if (v6 == 1)
    {
      goto LABEL_17;
    }

    if (a2 != a1)
    {
      v7 = a2 - 1;
      do
      {
        if (*(*v7 + 290) < v4 || *(*v7 + 290) == v4 && *(*v7 + 288) < *(v5 + 288))
        {
          goto LABEL_29;
        }

        v8 = v7-- == a1;
      }

      while (!v8);
    }
  }

LABEL_16:
  while (1)
  {
    __break(1u);
LABEL_17:
    v7 = a2;
    if (v2 < a2)
    {
      v7 = a2 - 1;
      v9 = *(a2 - 1);
      if (*(v9 + 290) >= v4)
      {
        v10 = *(v9 + 290);
        do
        {
          if (v10 == v4)
          {
            if (*(v9 + 288) < *(v5 + 288) || v2 >= v7)
            {
              break;
            }
          }

          else if (v2 >= v7)
          {
            break;
          }

          v12 = *--v7;
          v9 = v12;
          v10 = *(v12 + 290);
        }

        while (*(v12 + 290) >= v4);
      }
    }

LABEL_29:
    if (v2 >= v7)
    {
      break;
    }

    v13 = *v7;
    v14 = v2;
    v15 = v7;
LABEL_31:
    *v14++ = v13;
    *v15 = v3;
    while (v14 != a2)
    {
      v3 = *v14;
      if (*(*v14 + 290) >= v4 && (*(*v14 + 290) != v4 || *(v3 + 288) >= *(v5 + 288)))
      {
        if (v15 == a1)
        {
          goto LABEL_16;
        }

        --v15;
        while (1)
        {
          v13 = *v15;
          if (*(*v15 + 290) < v4 || *(*v15 + 290) == v4 && *(v13 + 288) < *(v5 + 288))
          {
            break;
          }

          v8 = v15-- == a1;
          if (v8)
          {
            goto LABEL_16;
          }
        }

        if (v14 < v15)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      ++v14;
    }
  }

  v14 = v2;
LABEL_48:
  v16 = v14 - 1;
  if (v14 - 1 != a1)
  {
    *a1 = *v16;
  }

  *v16 = v5;
  return v14 - 1;
}