_BYTE *MD4End(CC_MD4_CTX *c, _BYTE *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  if (a2 || (v2 = malloc_type_malloc(0x21uLL, 0x614AAE4EuLL)) != 0)
  {
    v4 = md;
    CC_MD4_Final(md, c);
    for (i = 0; i != 32; i += 2)
    {
      v6 = *v4++;
      v7 = &v2[i];
      *v7 = MD4End_hex[v6 >> 4];
      v7[1] = MD4End_hex[v6 & 0xF];
    }

    v2[32] = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

_BYTE *MD4FdChunk(int a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = &v37;
  v39 = 0x7800000000;
  memset(&v40, 0, sizeof(v40));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v23 = 0;
    *__error() = 22;
  }

  else
  {
    CC_MD4_Init(&v40);
    if (a3 && ((*__error() = 0, lseek(a1, a3, 0) != a3) || a3 == -1 && *__error()))
    {
      v23 = 0;
    }

    else
    {
      v8 = fcntl(a1, 3);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(a1, 48, 1);
      }

      if (snprintf(__str, 0x22uLL, "%s.%d", "com.apple.libmd.io.md4", atomic_fetch_add(&dispatch_queue_serial, 1uLL)) >= 0x22)
      {
        v9 = "com.apple.libmd.io.md4";
      }

      else
      {
        v9 = __str;
      }

      v10 = dispatch_queue_create(v9, 0);
      if (!v10)
      {
        MD4FdChunk_cold_1();
      }

      v11 = v10;
      v12 = dispatch_semaphore_create(0);
      if (!v12)
      {
        MD4FdChunk_cold_1();
      }

      v13 = v12;
      cleanup_handler[0] = MEMORY[0x29EDCA5F8];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __MD4FdChunk_block_invoke;
      cleanup_handler[3] = &unk_29EF07230;
      cleanup_handler[4] = &v33;
      cleanup_handler[5] = v12;
      v14 = dispatch_io_create(0, a1, v11, cleanup_handler);
      if (!v14)
      {
        MD4FdChunk_cold_1();
      }

      v15 = v14;
      v26 = a1;
      if ((v30[3] & 1) == 0)
      {
        v16 = 0;
        if (a4 >= 0xA00000)
        {
          v17 = 10485760;
        }

        else
        {
          v17 = a4;
        }

        if (a4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10485760;
        }

        do
        {
          if (a4)
          {
            v19 = v16 < a4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          if (*(v34 + 6))
          {
            v21 = 1;
          }

          else
          {
            v21 = v20 == 0;
          }

          if (v21)
          {
            break;
          }

          io_handler[0] = MEMORY[0x29EDCA5F8];
          io_handler[1] = 0x40000000;
          io_handler[2] = __MD4FdChunk_block_invoke_2;
          io_handler[3] = &unk_29EF07280;
          io_handler[4] = &v37;
          io_handler[5] = &v33;
          io_handler[6] = &v29;
          io_handler[7] = v13;
          dispatch_io_read(v15, v16, v18, v11, io_handler);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v16 += 10485760;
        }

        while (!*(v30 + 24));
      }

      dispatch_release(v15);
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v11);
      dispatch_release(v13);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(v26, 48, 0);
      }

      v22 = *(v34 + 6);
      if (v22)
      {
        v23 = 0;
        *__error() = v22;
      }

      else
      {
        v23 = MD4End((v38 + 3), a2);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

intptr_t __MD4FdChunk_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t __MD4FdChunk_block_invoke_2(intptr_t result, int a2, dispatch_data_t data, int a4)
{
  v7 = result;
  if (data)
  {
    applier[0] = MEMORY[0x29EDCA5F8];
    applier[1] = 0x40000000;
    applier[2] = __MD4FdChunk_block_invoke_3;
    applier[3] = &unk_29EF07258;
    applier[4] = *(result + 32);
    result = dispatch_data_apply(data, applier);
  }

  if (a4)
  {
    *(*(v7[5] + 8) + 24) = a4;
  }

  if (a2)
  {
    v8 = v7[7];
    *(*(v7[6] + 8) + 24) = data == MEMORY[0x29EDCA560];
    return dispatch_semaphore_signal(v8);
  }

  return result;
}

uint64_t __MD4FdChunk_block_invoke_3(uint64_t a1, int a2, int a3, void *data, unint64_t len)
{
  if (len >> 31)
  {
    MD4FdChunk_cold_1();
  }

  CC_MD4_Update((*(*(a1 + 32) + 8) + 24), data, len);
  return 1;
}

_BYTE *MD4FileChunk(const char *a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = MD4FdChunk(v7, a2, a3, a4);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  return v9;
}

_BYTE *MD4Data(const void *a1, CC_LONG a2, _BYTE *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_MD4_Init(&v7);
  CC_MD4_Update(&v7, a1, a2);
  return MD4End(&v7, a3);
}

_BYTE *SHA384_End(CC_SHA512_CTX *c, _BYTE *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  if (a2 || (v2 = malloc_type_malloc(0x61uLL, 0x3C75CE88uLL)) != 0)
  {
    v4 = md;
    CC_SHA384_Final(md, c);
    for (i = 0; i != 96; i += 2)
    {
      v6 = *v4++;
      v7 = &v2[i];
      *v7 = SHA384_End_hex[v6 >> 4];
      v7[1] = SHA384_End_hex[v6 & 0xF];
    }

    v2[96] = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

_BYTE *SHA384_FdChunk(int a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = &v37;
  v39 = 0xE800000000;
  memset(&v40, 0, sizeof(v40));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v23 = 0;
    *__error() = 22;
  }

  else
  {
    CC_SHA384_Init(&v40);
    if (a3 && ((*__error() = 0, lseek(a1, a3, 0) != a3) || a3 == -1 && *__error()))
    {
      v23 = 0;
    }

    else
    {
      v8 = fcntl(a1, 3);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(a1, 48, 1);
      }

      if (snprintf(__str, 0x25uLL, "%s.%d", "com.apple.libmd.io.sha384", atomic_fetch_add(&dispatch_queue_serial_0, 1uLL)) >= 0x25)
      {
        v9 = "com.apple.libmd.io.sha384";
      }

      else
      {
        v9 = __str;
      }

      v10 = dispatch_queue_create(v9, 0);
      if (!v10)
      {
        MD4FdChunk_cold_1();
      }

      v11 = v10;
      v12 = dispatch_semaphore_create(0);
      if (!v12)
      {
        MD4FdChunk_cold_1();
      }

      v13 = v12;
      cleanup_handler[0] = MEMORY[0x29EDCA5F8];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __SHA384_FdChunk_block_invoke;
      cleanup_handler[3] = &unk_29EF072A8;
      cleanup_handler[4] = &v33;
      cleanup_handler[5] = v12;
      v14 = dispatch_io_create(0, a1, v11, cleanup_handler);
      if (!v14)
      {
        MD4FdChunk_cold_1();
      }

      v15 = v14;
      v26 = a1;
      if ((v30[3] & 1) == 0)
      {
        v16 = 0;
        if (a4 >= 0xA00000)
        {
          v17 = 10485760;
        }

        else
        {
          v17 = a4;
        }

        if (a4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10485760;
        }

        do
        {
          if (a4)
          {
            v19 = v16 < a4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          if (*(v34 + 6))
          {
            v21 = 1;
          }

          else
          {
            v21 = v20 == 0;
          }

          if (v21)
          {
            break;
          }

          io_handler[0] = MEMORY[0x29EDCA5F8];
          io_handler[1] = 0x40000000;
          io_handler[2] = __SHA384_FdChunk_block_invoke_2;
          io_handler[3] = &unk_29EF072F8;
          io_handler[4] = &v37;
          io_handler[5] = &v33;
          io_handler[6] = &v29;
          io_handler[7] = v13;
          dispatch_io_read(v15, v16, v18, v11, io_handler);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v16 += 10485760;
        }

        while (!*(v30 + 24));
      }

      dispatch_release(v15);
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v11);
      dispatch_release(v13);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(v26, 48, 0);
      }

      v22 = *(v34 + 6);
      if (v22)
      {
        v23 = 0;
        *__error() = v22;
      }

      else
      {
        v23 = SHA384_End((v38 + 3), a2);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

_BYTE *SHA384_FileChunk(const char *a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = SHA384_FdChunk(v7, a2, a3, a4);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  return v9;
}

_BYTE *SHA384_Data(const void *a1, CC_LONG a2, _BYTE *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA384_Init(&v7);
  CC_SHA384_Update(&v7, a1, a2);
  return SHA384_End(&v7, a3);
}

_BYTE *SHA224_End(CC_SHA256_CTX *c, _BYTE *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  if (a2 || (v2 = malloc_type_malloc(0x39uLL, 0x26DA88CFuLL)) != 0)
  {
    v4 = md;
    CC_SHA224_Final(md, c);
    for (i = 0; i != 56; i += 2)
    {
      v6 = *v4++;
      v7 = &v2[i];
      *v7 = SHA224_End_hex[v6 >> 4];
      v7[1] = SHA224_End_hex[v6 & 0xF];
    }

    v2[56] = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

_BYTE *SHA224_FdChunk(int a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = &v37;
  v39 = 0x8000000000;
  memset(&v40, 0, sizeof(v40));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v23 = 0;
    *__error() = 22;
  }

  else
  {
    CC_SHA224_Init(&v40);
    if (a3 && ((*__error() = 0, lseek(a1, a3, 0) != a3) || a3 == -1 && *__error()))
    {
      v23 = 0;
    }

    else
    {
      v8 = fcntl(a1, 3);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(a1, 48, 1);
      }

      if (snprintf(__str, 0x25uLL, "%s.%d", "com.apple.libmd.io.sha224", atomic_fetch_add(&dispatch_queue_serial_1, 1uLL)) >= 0x25)
      {
        v9 = "com.apple.libmd.io.sha224";
      }

      else
      {
        v9 = __str;
      }

      v10 = dispatch_queue_create(v9, 0);
      if (!v10)
      {
        MD4FdChunk_cold_1();
      }

      v11 = v10;
      v12 = dispatch_semaphore_create(0);
      if (!v12)
      {
        MD4FdChunk_cold_1();
      }

      v13 = v12;
      cleanup_handler[0] = MEMORY[0x29EDCA5F8];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __SHA224_FdChunk_block_invoke;
      cleanup_handler[3] = &unk_29EF07320;
      cleanup_handler[4] = &v33;
      cleanup_handler[5] = v12;
      v14 = dispatch_io_create(0, a1, v11, cleanup_handler);
      if (!v14)
      {
        MD4FdChunk_cold_1();
      }

      v15 = v14;
      v26 = a1;
      if ((v30[3] & 1) == 0)
      {
        v16 = 0;
        if (a4 >= 0xA00000)
        {
          v17 = 10485760;
        }

        else
        {
          v17 = a4;
        }

        if (a4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10485760;
        }

        do
        {
          if (a4)
          {
            v19 = v16 < a4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          if (*(v34 + 6))
          {
            v21 = 1;
          }

          else
          {
            v21 = v20 == 0;
          }

          if (v21)
          {
            break;
          }

          io_handler[0] = MEMORY[0x29EDCA5F8];
          io_handler[1] = 0x40000000;
          io_handler[2] = __SHA224_FdChunk_block_invoke_2;
          io_handler[3] = &unk_29EF07370;
          io_handler[4] = &v37;
          io_handler[5] = &v33;
          io_handler[6] = &v29;
          io_handler[7] = v13;
          dispatch_io_read(v15, v16, v18, v11, io_handler);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v16 += 10485760;
        }

        while (!*(v30 + 24));
      }

      dispatch_release(v15);
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v11);
      dispatch_release(v13);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(v26, 48, 0);
      }

      v22 = *(v34 + 6);
      if (v22)
      {
        v23 = 0;
        *__error() = v22;
      }

      else
      {
        v23 = SHA224_End((v38 + 3), a2);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

_BYTE *SHA224_FileChunk(const char *a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = SHA224_FdChunk(v7, a2, a3, a4);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  return v9;
}

_BYTE *SHA224_Data(const void *a1, CC_LONG a2, _BYTE *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA224_Init(&v7);
  CC_SHA224_Update(&v7, a1, a2);
  return SHA224_End(&v7, a3);
}

_BYTE *SHA1_End(CC_SHA1_CTX *c, _BYTE *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  if (a2 || (v2 = malloc_type_malloc(0x29uLL, 0x261C85AEuLL)) != 0)
  {
    v4 = md;
    CC_SHA1_Final(md, c);
    for (i = 0; i != 40; i += 2)
    {
      v6 = *v4++;
      v7 = &v2[i];
      *v7 = SHA1_End_hex[v6 >> 4];
      v7[1] = SHA1_End_hex[v6 & 0xF];
    }

    v2[40] = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

_BYTE *SHA1_FdChunk(int a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = &v37;
  v39 = 0x7800000000;
  memset(&v40, 0, sizeof(v40));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v23 = 0;
    *__error() = 22;
  }

  else
  {
    CC_SHA1_Init(&v40);
    if (a3 && ((*__error() = 0, lseek(a1, a3, 0) != a3) || a3 == -1 && *__error()))
    {
      v23 = 0;
    }

    else
    {
      v8 = fcntl(a1, 3);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(a1, 48, 1);
      }

      if (snprintf(__str, 0x23uLL, "%s.%d", "com.apple.libmd.io.sha1", atomic_fetch_add(&dispatch_queue_serial_2, 1uLL)) >= 0x23)
      {
        v9 = "com.apple.libmd.io.sha1";
      }

      else
      {
        v9 = __str;
      }

      v10 = dispatch_queue_create(v9, 0);
      if (!v10)
      {
        MD4FdChunk_cold_1();
      }

      v11 = v10;
      v12 = dispatch_semaphore_create(0);
      if (!v12)
      {
        MD4FdChunk_cold_1();
      }

      v13 = v12;
      cleanup_handler[0] = MEMORY[0x29EDCA5F8];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __SHA1_FdChunk_block_invoke;
      cleanup_handler[3] = &unk_29EF07398;
      cleanup_handler[4] = &v33;
      cleanup_handler[5] = v12;
      v14 = dispatch_io_create(0, a1, v11, cleanup_handler);
      if (!v14)
      {
        MD4FdChunk_cold_1();
      }

      v15 = v14;
      v26 = a1;
      if ((v30[3] & 1) == 0)
      {
        v16 = 0;
        if (a4 >= 0xA00000)
        {
          v17 = 10485760;
        }

        else
        {
          v17 = a4;
        }

        if (a4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10485760;
        }

        do
        {
          if (a4)
          {
            v19 = v16 < a4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          if (*(v34 + 6))
          {
            v21 = 1;
          }

          else
          {
            v21 = v20 == 0;
          }

          if (v21)
          {
            break;
          }

          io_handler[0] = MEMORY[0x29EDCA5F8];
          io_handler[1] = 0x40000000;
          io_handler[2] = __SHA1_FdChunk_block_invoke_2;
          io_handler[3] = &unk_29EF073E8;
          io_handler[4] = &v37;
          io_handler[5] = &v33;
          io_handler[6] = &v29;
          io_handler[7] = v13;
          dispatch_io_read(v15, v16, v18, v11, io_handler);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v16 += 10485760;
        }

        while (!*(v30 + 24));
      }

      dispatch_release(v15);
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v11);
      dispatch_release(v13);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(v26, 48, 0);
      }

      v22 = *(v34 + 6);
      if (v22)
      {
        v23 = 0;
        *__error() = v22;
      }

      else
      {
        v23 = SHA1_End((v38 + 3), a2);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

_BYTE *SHA1_FileChunk(const char *a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = SHA1_FdChunk(v7, a2, a3, a4);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  return v9;
}

_BYTE *SHA1_Data(const void *a1, CC_LONG a2, _BYTE *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA1_Init(&v7);
  CC_SHA1_Update(&v7, a1, a2);
  return SHA1_End(&v7, a3);
}

_BYTE *SHA_End(SHA_CTX *c, _BYTE *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  if (a2 || (v2 = malloc_type_malloc(0x29uLL, 0xCDA390B0uLL)) != 0)
  {
    v4 = md;
    SHA_Final(md, c);
    for (i = 0; i != 40; i += 2)
    {
      v6 = *v4++;
      v7 = &v2[i];
      *v7 = SHA_End_hex[v6 >> 4];
      v7[1] = SHA_End_hex[v6 & 0xF];
    }

    v2[40] = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

_BYTE *SHA_FdChunk(int a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = &v37;
  v39 = 0x7800000000;
  memset(&v40, 0, sizeof(v40));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v23 = 0;
    *__error() = 22;
  }

  else
  {
    SHA_Init(&v40);
    if (a3 && ((*__error() = 0, lseek(a1, a3, 0) != a3) || a3 == -1 && *__error()))
    {
      v23 = 0;
    }

    else
    {
      v8 = fcntl(a1, 3);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(a1, 48, 1);
      }

      if (snprintf(__str, 0x22uLL, "%s.%d", "com.apple.libmd.io.sha", atomic_fetch_add(&dispatch_queue_serial_3, 1uLL)) >= 0x22)
      {
        v9 = "com.apple.libmd.io.sha";
      }

      else
      {
        v9 = __str;
      }

      v10 = dispatch_queue_create(v9, 0);
      if (!v10)
      {
        MD4FdChunk_cold_1();
      }

      v11 = v10;
      v12 = dispatch_semaphore_create(0);
      if (!v12)
      {
        MD4FdChunk_cold_1();
      }

      v13 = v12;
      cleanup_handler[0] = MEMORY[0x29EDCA5F8];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __SHA_FdChunk_block_invoke;
      cleanup_handler[3] = &unk_29EF07410;
      cleanup_handler[4] = &v33;
      cleanup_handler[5] = v12;
      v14 = dispatch_io_create(0, a1, v11, cleanup_handler);
      if (!v14)
      {
        MD4FdChunk_cold_1();
      }

      v15 = v14;
      v26 = a1;
      if ((v30[3] & 1) == 0)
      {
        v16 = 0;
        if (a4 >= 0xA00000)
        {
          v17 = 10485760;
        }

        else
        {
          v17 = a4;
        }

        if (a4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10485760;
        }

        do
        {
          if (a4)
          {
            v19 = v16 < a4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          if (*(v34 + 6))
          {
            v21 = 1;
          }

          else
          {
            v21 = v20 == 0;
          }

          if (v21)
          {
            break;
          }

          io_handler[0] = MEMORY[0x29EDCA5F8];
          io_handler[1] = 0x40000000;
          io_handler[2] = __SHA_FdChunk_block_invoke_2;
          io_handler[3] = &unk_29EF07460;
          io_handler[4] = &v37;
          io_handler[5] = &v33;
          io_handler[6] = &v29;
          io_handler[7] = v13;
          dispatch_io_read(v15, v16, v18, v11, io_handler);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v16 += 10485760;
        }

        while (!*(v30 + 24));
      }

      dispatch_release(v15);
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v11);
      dispatch_release(v13);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(v26, 48, 0);
      }

      v22 = *(v34 + 6);
      if (v22)
      {
        v23 = 0;
        *__error() = v22;
      }

      else
      {
        v23 = SHA_End((v38 + 3), a2);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

_BYTE *SHA_FileChunk(const char *a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = SHA_FdChunk(v7, a2, a3, a4);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  return v9;
}

_BYTE *SHA_Data(const void *a1, unsigned int a2, _BYTE *a3)
{
  memset(&v7, 0, sizeof(v7));
  SHA_Init(&v7);
  SHA_Update(&v7, a1, a2);
  return SHA_End(&v7, a3);
}

_BYTE *MD5End(CC_MD5_CTX *c, _BYTE *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  if (a2 || (v2 = malloc_type_malloc(0x21uLL, 0xC363230EuLL)) != 0)
  {
    v4 = md;
    CC_MD5_Final(md, c);
    for (i = 0; i != 32; i += 2)
    {
      v6 = *v4++;
      v7 = &v2[i];
      *v7 = MD5End_hex[v6 >> 4];
      v7[1] = MD5End_hex[v6 & 0xF];
    }

    v2[32] = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

_BYTE *MD5FdChunk(int a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = &v37;
  v39 = 0x7800000000;
  memset(&v40, 0, sizeof(v40));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v23 = 0;
    *__error() = 22;
  }

  else
  {
    CC_MD5_Init(&v40);
    if (a3 && ((*__error() = 0, lseek(a1, a3, 0) != a3) || a3 == -1 && *__error()))
    {
      v23 = 0;
    }

    else
    {
      v8 = fcntl(a1, 3);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(a1, 48, 1);
      }

      if (snprintf(__str, 0x22uLL, "%s.%d", "com.apple.libmd.io.md5", atomic_fetch_add(&dispatch_queue_serial_4, 1uLL)) >= 0x22)
      {
        v9 = "com.apple.libmd.io.md5";
      }

      else
      {
        v9 = __str;
      }

      v10 = dispatch_queue_create(v9, 0);
      if (!v10)
      {
        MD4FdChunk_cold_1();
      }

      v11 = v10;
      v12 = dispatch_semaphore_create(0);
      if (!v12)
      {
        MD4FdChunk_cold_1();
      }

      v13 = v12;
      cleanup_handler[0] = MEMORY[0x29EDCA5F8];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __MD5FdChunk_block_invoke;
      cleanup_handler[3] = &unk_29EF07488;
      cleanup_handler[4] = &v33;
      cleanup_handler[5] = v12;
      v14 = dispatch_io_create(0, a1, v11, cleanup_handler);
      if (!v14)
      {
        MD4FdChunk_cold_1();
      }

      v15 = v14;
      v26 = a1;
      if ((v30[3] & 1) == 0)
      {
        v16 = 0;
        if (a4 >= 0xA00000)
        {
          v17 = 10485760;
        }

        else
        {
          v17 = a4;
        }

        if (a4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10485760;
        }

        do
        {
          if (a4)
          {
            v19 = v16 < a4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          if (*(v34 + 6))
          {
            v21 = 1;
          }

          else
          {
            v21 = v20 == 0;
          }

          if (v21)
          {
            break;
          }

          io_handler[0] = MEMORY[0x29EDCA5F8];
          io_handler[1] = 0x40000000;
          io_handler[2] = __MD5FdChunk_block_invoke_2;
          io_handler[3] = &unk_29EF074D8;
          io_handler[4] = &v37;
          io_handler[5] = &v33;
          io_handler[6] = &v29;
          io_handler[7] = v13;
          dispatch_io_read(v15, v16, v18, v11, io_handler);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v16 += 10485760;
        }

        while (!*(v30 + 24));
      }

      dispatch_release(v15);
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v11);
      dispatch_release(v13);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(v26, 48, 0);
      }

      v22 = *(v34 + 6);
      if (v22)
      {
        v23 = 0;
        *__error() = v22;
      }

      else
      {
        v23 = MD5End((v38 + 3), a2);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

intptr_t __MD5FdChunk_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

intptr_t __MD5FdChunk_block_invoke_2(intptr_t result, int a2, dispatch_data_t data, int a4)
{
  v7 = result;
  if (data)
  {
    applier[0] = MEMORY[0x29EDCA5F8];
    applier[1] = 0x40000000;
    applier[2] = __MD5FdChunk_block_invoke_3;
    applier[3] = &unk_29EF074B0;
    applier[4] = *(result + 32);
    result = dispatch_data_apply(data, applier);
  }

  if (a4)
  {
    *(*(v7[5] + 8) + 24) = a4;
  }

  if (a2)
  {
    v8 = v7[7];
    *(*(v7[6] + 8) + 24) = data == MEMORY[0x29EDCA560];
    return dispatch_semaphore_signal(v8);
  }

  return result;
}

uint64_t __MD5FdChunk_block_invoke_3(uint64_t a1, int a2, int a3, void *data, unint64_t len)
{
  if (len >> 31)
  {
    MD4FdChunk_cold_1();
  }

  CC_MD5_Update((*(*(a1 + 32) + 8) + 24), data, len);
  return 1;
}

_BYTE *MD5FileChunk(const char *a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = MD5FdChunk(v7, a2, a3, a4);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  return v9;
}

_BYTE *MD5Data(const void *a1, CC_LONG a2, _BYTE *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_MD5_Init(&v7);
  CC_MD5_Update(&v7, a1, a2);
  return MD5End(&v7, a3);
}

int SHA_Init(SHA_CTX *c)
{
  *&c->h0 = xmmword_2990EC130;
  *&c->h4 = 3285377520;
  c->Nh = 0;
  c->num = 0;
  return 1;
}

int SHA_Update(SHA_CTX *c, const void *data, size_t len)
{
  if (!len)
  {
    return 1;
  }

  v3 = len;
  *&c->Nl += 8 * len;
  num = c->num;
  if (!num)
  {
    goto LABEL_19;
  }

  v7 = c->data;
  v8 = num >> 2;
  v9 = num & 3;
  if (num + len >= 0x40)
  {
    v10 = v8;
    v11 = v7[v8];
    if (v9 > 1)
    {
      if (v9 != 2)
      {
LABEL_16:
        v19 = *data;
        data = data + 1;
        v7[v8] = v11 | v19;
        if (v8 <= 14)
        {
          do
          {
            v20 = *data;
            data = data + 4;
            c->data[++v10] = bswap32(v20);
          }

          while (v10 != 15);
        }

        v3 = c->num + len - 64;
        sha_block(c, v7);
        c->num = 0;
LABEL_19:
        v21 = c->data;
        if (v3 >= 0x40)
        {
          do
          {
            if (data != v21)
            {
              v22 = *data;
              v23 = *(data + 1);
              v24 = *(data + 3);
              *&c->data[8] = *(data + 2);
              *&c->data[12] = v24;
              *v21 = v22;
              *&c->data[4] = v23;
            }

            v25 = vrev32q_s8(*&c->data[4]);
            v26 = vrev32q_s8(*c->data);
            v27 = vrev32q_s8(*&c->data[12]);
            *&c->data[8] = vrev32q_s8(*&c->data[8]);
            *&c->data[12] = v27;
            *c->data = v26;
            *&c->data[4] = v25;
            data = data + 64;
            sha_block(c, c->data);
            v3 -= 64;
          }

          while (v3 > 0x3F);
        }

        c->num = v3;
        v28 = v3 & 3;
        if (v3 >= 4)
        {
          LODWORD(v29) = v3 >> 2;
          if (v3 >> 2 <= 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v29;
          }

          v30 = v29;
          v31 = c->data;
          do
          {
            v32 = *data;
            data = data + 4;
            *v31++ = bswap32(v32);
            --v30;
          }

          while (v30);
        }

        else
        {
          v29 = 0;
        }

        v33 = 0;
        v34 = data + (v3 & 3);
        if ((v3 & 3) > 1)
        {
          if (v28 != 2)
          {
            v35 = *--v34;
            v33 = v35 << 8;
          }

          v36 = *--v34;
          v33 |= v36 << 16;
        }

        else if ((v3 & 3) == 0)
        {
          goto LABEL_37;
        }

        v28 = v33 | (*(v34 - 1) << 24);
LABEL_37:
        v21[v29] = v28;
        return 1;
      }
    }

    else
    {
      if (!v9)
      {
        v12 = *data;
        data = data + 1;
        v11 = v12 << 24;
      }

      v13 = *data;
      data = data + 1;
      v11 |= v13 << 16;
    }

    v18 = *data;
    data = data + 1;
    v11 |= v18 << 8;
    goto LABEL_16;
  }

  v14 = num + len;
  c->num += len;
  if (v9 + len <= 3)
  {
    v15 = v7[v8];
    if (v9 > 1)
    {
      if (v9 != 2)
      {
LABEL_45:
        v7[v8] = v15;
        return 1;
      }
    }

    else
    {
      if (!v9)
      {
        v16 = *data;
        data = data + 1;
        v15 = v16 << 24;
        v3 = len - 1;
        if (len == 1)
        {
          goto LABEL_45;
        }
      }

      v17 = *data;
      data = data + 1;
      v15 |= v17 << 16;
      if (v3 == 1)
      {
        goto LABEL_45;
      }
    }

    v15 |= *data << 8;
    goto LABEL_45;
  }

  v38 = v14 >> 2;
  v39 = v14 & 3;
  v40 = v8;
  v41 = v7[v8];
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (!v9)
    {
      v42 = *data;
      data = data + 1;
      v41 = v42 << 24;
    }

    v43 = *data;
    data = data + 1;
    v41 |= v43 << 16;
  }

  v44 = *data;
  data = data + 1;
  v41 |= v44 << 8;
LABEL_48:
  v46 = *data;
  v45 = (data + 1);
  v7[v8] = v41 | v46;
  v47 = v8 + 1;
  if (v47 >= v38)
  {
    v38 = v47;
  }

  else
  {
    v48 = &c->data[v40 + 1];
    v49 = ~v40 + v38;
    do
    {
      v50 = *v45++;
      *v48++ = bswap32(v50);
      --v49;
    }

    while (v49);
  }

  if (v39)
  {
    v51 = 0;
    v52 = v45 + v39;
    if (v39 != 1)
    {
      if (v39 != 2)
      {
        v53 = *--v52;
        v51 = v53 << 8;
      }

      v54 = *--v52;
      v51 |= v54 << 16;
    }

    v7[v38] = v51 | (*(v52 - 1) << 24);
  }

  return 1;
}

_DWORD *sha_block(_DWORD *result, int *a2)
{
  HIDWORD(v3) = *result;
  LODWORD(v3) = *result;
  v2 = v3 >> 27;
  v4 = result[2];
  v410 = result[1];
  v411 = result[3];
  HIDWORD(v3) = v410;
  LODWORD(v3) = v410;
  v5 = v3 >> 2;
  v412 = result[4];
  v6 = *a2;
  v7 = a2[1];
  v8 = v412 + *a2 + v2 + (v4 & v410 | v411 & ~v410) + 1518500249;
  HIDWORD(v3) = v8;
  LODWORD(v3) = v8;
  v9 = v3 >> 27;
  v409 = v4;
  v10 = __PAIR64__(*result, __ROR4__(v410, 2));
  v11 = v411 + v7 + (*result & v10 | v4 & ~*result) + 1518500249 + v9;
  LODWORD(v10) = *result;
  v12 = v10 >> 2;
  HIDWORD(v10) = v11;
  LODWORD(v10) = v11;
  v13 = v10 >> 27;
  v14 = __PAIR64__(v8, __ROR4__(*result, 2));
  v15 = a2[2];
  v16 = a2[3];
  v17 = v4 + v15 + (v8 & v14 | v5 & ~v8) + 1518500249 + v13;
  LODWORD(v14) = v8;
  v18 = v14 >> 2;
  HIDWORD(v14) = v17;
  LODWORD(v14) = v17;
  v19 = v14 >> 27;
  v20 = __PAIR64__(v11, __ROR4__(v8, 2));
  v21 = v5 + v16 + (v11 & v20 | v12 & ~v11) + 1518500249 + v19;
  LODWORD(v20) = v11;
  v22 = v20 >> 2;
  HIDWORD(v20) = v21;
  LODWORD(v20) = v21;
  v23 = v20 >> 27;
  v24 = __PAIR64__(v17, __ROR4__(v11, 2));
  v25 = a2[4];
  v26 = a2[5];
  v27 = v12 + v25 + (v17 & v24 | v18 & ~v17) + 1518500249 + v23;
  LODWORD(v24) = v17;
  v28 = v24 >> 2;
  HIDWORD(v24) = v27;
  LODWORD(v24) = v27;
  v29 = v24 >> 27;
  v30 = __PAIR64__(v21, __ROR4__(v17, 2));
  v31 = v18 + v26 + (v21 & v30 | v22 & ~v21) + 1518500249 + v29;
  LODWORD(v30) = v21;
  v32 = v30 >> 2;
  HIDWORD(v30) = v31;
  LODWORD(v30) = v31;
  v33 = v30 >> 27;
  v34 = __PAIR64__(v27, __ROR4__(v21, 2));
  v35 = a2[6];
  v36 = a2[7];
  v37 = v35 + v22 + (v27 & v34 | v28 & ~v27) + 1518500249 + v33;
  LODWORD(v34) = v27;
  v38 = v34 >> 2;
  HIDWORD(v34) = v37;
  LODWORD(v34) = v37;
  v39 = v34 >> 27;
  v40 = __PAIR64__(v31, __ROR4__(v27, 2));
  v41 = v36 + v28 + (v31 & v40 | v32 & ~v31) + 1518500249 + v39;
  LODWORD(v40) = v31;
  v42 = v40 >> 2;
  HIDWORD(v40) = v41;
  LODWORD(v40) = v41;
  v43 = v40 >> 27;
  v44 = __PAIR64__(v37, __ROR4__(v31, 2));
  v46 = a2[8];
  v45 = a2[9];
  v47 = v46 + v32 + (v37 & v44 | v38 & ~v37) + 1518500249 + v43;
  LODWORD(v44) = v37;
  v48 = v44 >> 2;
  HIDWORD(v44) = v47;
  LODWORD(v44) = v47;
  v49 = v44 >> 27;
  v50 = __PAIR64__(v41, __ROR4__(v37, 2));
  v51 = v45 + v38 + (v41 & v50 | v42 & ~v41) + 1518500249 + v49;
  LODWORD(v50) = v41;
  v52 = v50 >> 2;
  HIDWORD(v50) = v51;
  LODWORD(v50) = v51;
  v53 = v50 >> 27;
  v54 = __PAIR64__(v47, __ROR4__(v41, 2));
  v56 = a2[10];
  v55 = a2[11];
  v57 = v56 + v42 + (v47 & v54 | v48 & ~v47) + 1518500249 + v53;
  LODWORD(v54) = v47;
  v58 = v54 >> 2;
  HIDWORD(v54) = v57;
  LODWORD(v54) = v57;
  v59 = v54 >> 27;
  v60 = __PAIR64__(v51, __ROR4__(v47, 2));
  v61 = v55 + v48 + (v51 & v60 | v52 & ~v51) + 1518500249 + v59;
  LODWORD(v60) = v51;
  v62 = v60 >> 2;
  HIDWORD(v60) = v61;
  LODWORD(v60) = v61;
  v63 = v60 >> 27;
  v64 = __PAIR64__(v57, __ROR4__(v51, 2));
  v66 = a2[12];
  v65 = a2[13];
  v67 = v66 + v52 + (v57 & v64 | v58 & ~v57) + 1518500249 + v63;
  LODWORD(v64) = v57;
  v68 = v64 >> 2;
  HIDWORD(v64) = v67;
  LODWORD(v64) = v67;
  v69 = v64 >> 27;
  v70 = __PAIR64__(v61, __ROR4__(v57, 2));
  v71 = v65 + v58 + (v61 & v70 | v62 & ~v61) + 1518500249 + v69;
  LODWORD(v70) = v61;
  v72 = v70 >> 2;
  HIDWORD(v70) = v71;
  LODWORD(v70) = v71;
  v73 = v70 >> 27;
  v74 = __PAIR64__(v67, __ROR4__(v61, 2));
  v76 = a2[14];
  v75 = a2[15];
  v77 = v76 + v62 + (v67 & v74 | v68 & ~v67) + 1518500249 + v73;
  LODWORD(v74) = v67;
  v78 = v74 >> 2;
  HIDWORD(v74) = v77;
  LODWORD(v74) = v77;
  v79 = v74 >> 27;
  v80 = __PAIR64__(v71, __ROR4__(v67, 2));
  v81 = v75 + v68 + (v71 & v80 | v72 & ~v71) + 1518500249 + v79;
  LODWORD(v80) = v71;
  v82 = v80 >> 2;
  v83 = v15 ^ v6 ^ v46 ^ v65;
  HIDWORD(v80) = v81;
  LODWORD(v80) = v81;
  v84 = v80 >> 27;
  v85 = __PAIR64__(v77, __ROR4__(v71, 2));
  v86 = v83 + v72 + (v77 & v85 | v78 & ~v77) + 1518500249;
  LODWORD(v85) = v77;
  v87 = v85 >> 2;
  v88 = v86 + v84;
  v89 = v16 ^ v7 ^ v45 ^ v76;
  HIDWORD(v85) = v88;
  LODWORD(v85) = v88;
  v90 = v85 >> 27;
  v91 = __PAIR64__(v81, __ROR4__(v77, 2));
  v92 = v89 + v78 + (v81 & v91 | v82 & ~v81) + 1518500249 + v90;
  LODWORD(v91) = v81;
  v93 = v91 >> 2;
  v94 = v25 ^ v15 ^ v56 ^ v75;
  HIDWORD(v91) = v92;
  LODWORD(v91) = v92;
  v95 = v91 >> 27;
  v96 = __PAIR64__(v88, __ROR4__(v81, 2));
  v97 = v94 + v82 + (v88 & v96 | v87 & ~v88) + 1518500249 + v95;
  LODWORD(v96) = v88;
  v98 = v96 >> 2;
  v99 = __PAIR64__(v97, __ROR4__(v88, 2));
  v100 = v92 & v99 | v93 & ~v92;
  LODWORD(v99) = v97;
  v101 = v99 >> 27;
  v102 = v26 ^ v16 ^ v55 ^ v83;
  HIDWORD(v99) = v92;
  LODWORD(v99) = v92;
  v103 = v99 >> 2;
  v104 = v102 + v87 + v100 + 1518500249 + v101;
  v105 = v35 ^ v25 ^ v66 ^ v89;
  HIDWORD(v99) = v104;
  LODWORD(v99) = v104;
  v106 = v99 >> 27;
  v107 = __PAIR64__(v97, __ROR4__(v88, 2));
  v108 = v105 + v93 + (v103 ^ v107 ^ v97) + 1859775393 + v106;
  LODWORD(v107) = v97;
  v109 = v107 >> 2;
  v110 = v36 ^ v26 ^ v65 ^ v94;
  HIDWORD(v107) = v108;
  LODWORD(v107) = v108;
  v111 = v107 >> 27;
  v112 = __PAIR64__(v104, __ROR4__(v92, 2));
  v113 = v110 + v98 + (v109 ^ v112 ^ v104) + 1859775393 + v111;
  LODWORD(v112) = v104;
  v114 = v112 >> 2;
  v115 = v46 ^ v35 ^ v76 ^ v102;
  HIDWORD(v112) = v113;
  LODWORD(v112) = v113;
  v116 = v112 >> 27;
  v117 = __PAIR64__(v108, __ROR4__(v97, 2));
  v118 = v115 + v103 + (v114 ^ v117 ^ v108) + 1859775393 + v116;
  LODWORD(v117) = v108;
  v119 = v117 >> 2;
  v120 = v45 ^ v36 ^ v75 ^ v105;
  HIDWORD(v117) = v118;
  LODWORD(v117) = v118;
  v121 = v117 >> 27;
  v122 = __PAIR64__(v113, __ROR4__(v104, 2));
  v123 = v120 + v109 + (v119 ^ v122 ^ v113) + 1859775393 + v121;
  LODWORD(v122) = v113;
  v124 = v122 >> 2;
  v125 = v56 ^ v46 ^ v83 ^ v110;
  HIDWORD(v122) = v123;
  LODWORD(v122) = v123;
  v126 = v122 >> 27;
  v127 = __PAIR64__(v118, __ROR4__(v108, 2));
  v128 = v125 + v114 + (v124 ^ v127 ^ v118) + 1859775393;
  LODWORD(v127) = v118;
  v129 = v127 >> 2;
  v130 = v128 + v126;
  v131 = v55 ^ v45 ^ v89 ^ v115;
  HIDWORD(v127) = v130;
  LODWORD(v127) = v130;
  v132 = v127 >> 27;
  v133 = __PAIR64__(v123, __ROR4__(v113, 2));
  v134 = v131 + v119 + (v129 ^ v133 ^ v123) + 1859775393 + v132;
  LODWORD(v133) = v123;
  v135 = v133 >> 2;
  HIDWORD(v133) = v134;
  LODWORD(v133) = v134;
  v136 = v133 >> 27;
  v137 = v66 ^ v56 ^ v94 ^ v120;
  v138 = __PAIR64__(v130, __ROR4__(v118, 2));
  v139 = v137 + v124 + (v135 ^ v138 ^ v130) + 1859775393 + v136;
  LODWORD(v138) = v130;
  v140 = v138 >> 2;
  v141 = v65 ^ v55 ^ v102 ^ v125;
  HIDWORD(v138) = v139;
  LODWORD(v138) = v139;
  v142 = v138 >> 27;
  v143 = __PAIR64__(v134, __ROR4__(v123, 2));
  v144 = v141 + v129 + (v140 ^ v143 ^ v134) + 1859775393 + v142;
  LODWORD(v143) = v134;
  v145 = v143 >> 2;
  v146 = v76 ^ v66 ^ v105 ^ v131;
  HIDWORD(v143) = v144;
  LODWORD(v143) = v144;
  v147 = v143 >> 27;
  v148 = __PAIR64__(v139, __ROR4__(v130, 2));
  v149 = v146 + v135 + (v145 ^ v148 ^ v139) + 1859775393 + v147;
  LODWORD(v148) = v139;
  v150 = v148 >> 2;
  v151 = v75 ^ v65 ^ v110 ^ v137;
  HIDWORD(v148) = v149;
  LODWORD(v148) = v149;
  v152 = v148 >> 27;
  v153 = __PAIR64__(v144, __ROR4__(v134, 2));
  v154 = v151 + v140 + (v150 ^ v153 ^ v144) + 1859775393 + v152;
  LODWORD(v153) = v144;
  v155 = v153 >> 2;
  v156 = v76 ^ v83 ^ v115 ^ v141;
  HIDWORD(v153) = v154;
  LODWORD(v153) = v154;
  v157 = v153 >> 27;
  v158 = __PAIR64__(v149, __ROR4__(v139, 2));
  v159 = v156 + v145 + (v155 ^ v158 ^ v149) + 1859775393;
  LODWORD(v158) = v149;
  v160 = v158 >> 2;
  v161 = v159 + v157;
  v162 = v75 ^ v89 ^ v120 ^ v146;
  HIDWORD(v158) = v161;
  LODWORD(v158) = v161;
  v163 = v158 >> 27;
  v164 = __PAIR64__(v154, __ROR4__(v144, 2));
  v165 = v162 + v150 + (v160 ^ v164 ^ v154) + 1859775393 + v163;
  LODWORD(v164) = v154;
  v166 = v164 >> 2;
  HIDWORD(v164) = v165;
  LODWORD(v164) = v165;
  v167 = v164 >> 27;
  v168 = v94 ^ v83 ^ v125 ^ v151;
  v169 = __PAIR64__(v161, __ROR4__(v149, 2));
  v170 = v168 + v155 + (v166 ^ v169 ^ v161) + 1859775393 + v167;
  LODWORD(v169) = v161;
  v171 = v169 >> 2;
  v172 = v89 ^ v102 ^ v131 ^ v156;
  HIDWORD(v169) = v170;
  LODWORD(v169) = v170;
  v173 = v169 >> 27;
  v174 = __PAIR64__(v165, __ROR4__(v154, 2));
  v175 = v172 + v160 + (v171 ^ v174 ^ v165) + 1859775393 + v173;
  LODWORD(v174) = v165;
  v176 = v174 >> 2;
  v177 = v94 ^ v105 ^ v137 ^ v162;
  HIDWORD(v174) = v175;
  LODWORD(v174) = v175;
  v178 = v174 >> 27;
  v179 = __PAIR64__(v170, __ROR4__(v161, 2));
  v180 = v177 + v166 + (v176 ^ v179 ^ v170) + 1859775393 + v178;
  LODWORD(v179) = v170;
  v181 = v179 >> 2;
  v182 = v110 ^ v102 ^ v141 ^ v168;
  HIDWORD(v179) = v180;
  LODWORD(v179) = v180;
  v183 = v179 >> 27;
  v184 = __PAIR64__(v175, __ROR4__(v165, 2));
  v185 = v182 + v171 + (v181 ^ v184 ^ v175) + 1859775393 + v183;
  LODWORD(v184) = v175;
  v186 = v184 >> 2;
  v187 = v105 ^ v115 ^ v146 ^ v172;
  HIDWORD(v184) = v185;
  LODWORD(v184) = v185;
  v188 = v184 >> 27;
  v189 = __PAIR64__(v180, __ROR4__(v170, 2));
  v190 = v187 + v176 + (v186 ^ v189 ^ v180) + 1859775393;
  LODWORD(v189) = v180;
  v191 = v189 >> 2;
  v192 = v190 + v188;
  v193 = v110 ^ v120 ^ v151 ^ v177;
  HIDWORD(v189) = v192;
  LODWORD(v189) = v192;
  v194 = v189 >> 27;
  v195 = __PAIR64__(v185, __ROR4__(v175, 2));
  v196 = v193 + v181 + (v191 ^ v195 ^ v185) + 1859775393 + v194;
  LODWORD(v195) = v185;
  v197 = v195 >> 2;
  HIDWORD(v195) = v196;
  LODWORD(v195) = v196;
  v198 = v195 >> 27;
  v199 = v125 ^ v115 ^ v156 ^ v182;
  v200 = __PAIR64__(v192, __ROR4__(v180, 2));
  v201 = v199 + v186 + (v197 ^ v200 ^ v192) + 1859775393 + v198;
  LODWORD(v200) = v192;
  v202 = v200 >> 2;
  v203 = v120 ^ v131 ^ v162 ^ v187;
  HIDWORD(v200) = v201;
  LODWORD(v200) = v201;
  v204 = v200 >> 27;
  v205 = __PAIR64__(v196, __ROR4__(v185, 2));
  v206 = v203 + v191 + (v202 ^ v205 ^ v196) + 1859775393 + v204;
  LODWORD(v205) = v196;
  v207 = v205 >> 2;
  v208 = v125 ^ v137 ^ v168 ^ v193;
  HIDWORD(v205) = v206;
  LODWORD(v205) = v206;
  v209 = v205 >> 27;
  v210 = __PAIR64__(v201, __ROR4__(v196, 2));
  v211 = v208 + v197 + ((v201 | __ROR4__(v196, 2)) & __ROR4__(v192, 2) | v201 & v210) + v209 - 1894007588;
  LODWORD(v210) = v201;
  v212 = v210 >> 2;
  v213 = v141 ^ v131 ^ v172 ^ v199;
  v214 = __PAIR64__(v211, __ROR4__(v201, 2));
  v215 = (v206 | __ROR4__(v201, 2)) & __ROR4__(v196, 2) | v206 & v214;
  LODWORD(v214) = v211;
  v216 = v213 + v202 + v215 + (v214 >> 27) - 1894007588;
  HIDWORD(v214) = v206;
  LODWORD(v214) = v206;
  v217 = v214 >> 2;
  v218 = v137 ^ v146 ^ v177 ^ v203;
  v219 = __PAIR64__(v216, __ROR4__(v206, 2));
  v220 = (v211 | __ROR4__(v206, 2)) & __ROR4__(v201, 2) | v211 & v219;
  LODWORD(v219) = v216;
  v221 = v218 + v207 + v220 + (v219 >> 27) - 1894007588;
  HIDWORD(v219) = v211;
  LODWORD(v219) = v211;
  v222 = v219 >> 2;
  v223 = v141 ^ v151 ^ v182 ^ v208;
  v224 = __PAIR64__(v221, __ROR4__(v211, 2));
  v225 = (v216 | __ROR4__(v211, 2)) & __ROR4__(v206, 2) | v216 & v224;
  LODWORD(v224) = v221;
  v226 = v223 + v212 + v225 + (v224 >> 27) - 1894007588;
  HIDWORD(v224) = v216;
  LODWORD(v224) = v216;
  v227 = v224 >> 2;
  v228 = v156 ^ v146 ^ v187 ^ v213;
  v229 = __PAIR64__(v226, __ROR4__(v216, 2));
  v230 = (v221 | __ROR4__(v216, 2)) & __ROR4__(v211, 2) | v221 & v229;
  LODWORD(v229) = v226;
  v231 = v228 + v217 + v230 + (v229 >> 27) - 1894007588;
  HIDWORD(v229) = v221;
  LODWORD(v229) = v221;
  v232 = v229 >> 2;
  v233 = v151 ^ v162 ^ v193 ^ v218;
  v234 = __PAIR64__(v231, __ROR4__(v221, 2));
  v235 = (v226 | __ROR4__(v221, 2)) & __ROR4__(v216, 2) | v226 & v234;
  LODWORD(v234) = v231;
  v236 = v233 + v222 + v235 + (v234 >> 27) - 1894007588;
  HIDWORD(v234) = v226;
  LODWORD(v234) = v226;
  v237 = v234 >> 2;
  v238 = v156 ^ v168 ^ v199 ^ v223;
  v239 = __PAIR64__(v236, __ROR4__(v226, 2));
  v240 = (v231 | __ROR4__(v226, 2)) & __ROR4__(v221, 2) | v231 & v239;
  LODWORD(v239) = v236;
  v241 = v238 + v227 + v240 + (v239 >> 27) - 1894007588;
  HIDWORD(v239) = v231;
  LODWORD(v239) = v231;
  v242 = v239 >> 2;
  v243 = v172 ^ v162 ^ v203 ^ v228;
  v244 = __PAIR64__(v241, __ROR4__(v231, 2));
  v245 = (v236 | __ROR4__(v231, 2)) & __ROR4__(v226, 2) | v236 & v244;
  LODWORD(v244) = v241;
  v246 = v243 + v232 + v245 + (v244 >> 27) - 1894007588;
  HIDWORD(v244) = v236;
  LODWORD(v244) = v236;
  v247 = v244 >> 2;
  v248 = v168 ^ v177 ^ v208 ^ v233;
  v249 = __PAIR64__(v246, __ROR4__(v236, 2));
  v250 = (v241 | __ROR4__(v236, 2)) & __ROR4__(v231, 2) | v241 & v249;
  LODWORD(v249) = v246;
  v251 = v248 + v237 + v250 + (v249 >> 27) - 1894007588;
  HIDWORD(v249) = v241;
  LODWORD(v249) = v241;
  v252 = v249 >> 2;
  v253 = v172 ^ v182 ^ v213 ^ v238;
  v254 = __PAIR64__(v251, __ROR4__(v241, 2));
  v255 = (v246 | __ROR4__(v241, 2)) & __ROR4__(v236, 2) | v246 & v254;
  LODWORD(v254) = v251;
  v256 = v253 + v242 + v255 + (v254 >> 27) - 1894007588;
  HIDWORD(v254) = v246;
  LODWORD(v254) = v246;
  v257 = v254 >> 2;
  v258 = v187 ^ v177 ^ v218 ^ v243;
  v259 = __PAIR64__(v256, __ROR4__(v246, 2));
  v260 = (v251 | __ROR4__(v246, 2)) & __ROR4__(v241, 2) | v251 & v259;
  LODWORD(v259) = v256;
  v261 = v258 + v247 + v260 + (v259 >> 27) - 1894007588;
  HIDWORD(v259) = v251;
  LODWORD(v259) = v251;
  v262 = v259 >> 2;
  v263 = v182 ^ v193 ^ v223 ^ v248;
  v264 = __PAIR64__(v261, __ROR4__(v251, 2));
  v265 = (v256 | __ROR4__(v251, 2)) & __ROR4__(v246, 2) | v256 & v264;
  LODWORD(v264) = v261;
  v266 = v263 + v252 + v265 + (v264 >> 27) - 1894007588;
  HIDWORD(v264) = v256;
  LODWORD(v264) = v256;
  v267 = v264 >> 2;
  v268 = v187 ^ v199 ^ v228 ^ v253;
  v269 = __PAIR64__(v266, __ROR4__(v256, 2));
  v270 = (v261 | __ROR4__(v256, 2)) & __ROR4__(v251, 2) | v261 & v269;
  LODWORD(v269) = v266;
  v271 = v268 + v257 + v270 + (v269 >> 27) - 1894007588;
  HIDWORD(v269) = v261;
  LODWORD(v269) = v261;
  v272 = v269 >> 2;
  v273 = v203 ^ v193 ^ v233 ^ v258;
  v274 = __PAIR64__(v271, __ROR4__(v261, 2));
  v275 = (v266 | __ROR4__(v261, 2)) & __ROR4__(v256, 2) | v266 & v274;
  LODWORD(v274) = v271;
  v276 = v273 + v262 + v275 + (v274 >> 27) - 1894007588;
  HIDWORD(v274) = v266;
  LODWORD(v274) = v266;
  v277 = v274 >> 2;
  v278 = v199 ^ v208 ^ v238 ^ v263;
  v279 = __PAIR64__(v276, __ROR4__(v266, 2));
  v280 = (v271 | __ROR4__(v266, 2)) & __ROR4__(v261, 2) | v271 & v279;
  LODWORD(v279) = v276;
  v281 = v278 + v267 + v280 + (v279 >> 27) - 1894007588;
  HIDWORD(v279) = v271;
  LODWORD(v279) = v271;
  v282 = v279 >> 2;
  v283 = v203 ^ v213 ^ v243 ^ v268;
  v284 = __PAIR64__(v281, __ROR4__(v271, 2));
  v285 = (v276 | __ROR4__(v271, 2)) & __ROR4__(v266, 2) | v276 & v284;
  LODWORD(v284) = v281;
  v286 = v283 + v272 + v285 + (v284 >> 27) - 1894007588;
  HIDWORD(v284) = v276;
  LODWORD(v284) = v276;
  v287 = v284 >> 2;
  v288 = v218 ^ v208 ^ v248 ^ v273;
  v289 = __PAIR64__(v286, __ROR4__(v276, 2));
  v290 = (v281 | __ROR4__(v276, 2)) & __ROR4__(v271, 2) | v281 & v289;
  LODWORD(v289) = v286;
  v291 = v288 + v277 + v290 + (v289 >> 27) - 1894007588;
  HIDWORD(v289) = v281;
  LODWORD(v289) = v281;
  v292 = v289 >> 2;
  v293 = v213 ^ v223 ^ v253 ^ v278;
  v294 = __PAIR64__(v291, __ROR4__(v281, 2));
  v295 = (v286 | __ROR4__(v281, 2)) & __ROR4__(v276, 2) | v286 & v294;
  LODWORD(v294) = v291;
  v296 = v293 + v282 + v295 + (v294 >> 27) - 1894007588;
  HIDWORD(v294) = v286;
  LODWORD(v294) = v286;
  v297 = v294 >> 2;
  v298 = v218 ^ v228 ^ v258 ^ v283;
  v299 = __PAIR64__(v296, __ROR4__(v286, 2));
  v300 = (v291 | __ROR4__(v286, 2)) & __ROR4__(v281, 2) | v291 & v299;
  LODWORD(v299) = v296;
  v301 = v298 + v287 + v300 + (v299 >> 27) - 1894007588;
  HIDWORD(v299) = v291;
  LODWORD(v299) = v291;
  v302 = v299 >> 2;
  v303 = v233 ^ v223 ^ v263 ^ v288;
  v304 = __PAIR64__(v301, __ROR4__(v291, 2));
  v305 = (v296 | __ROR4__(v291, 2)) & __ROR4__(v286, 2) | v296 & v304;
  LODWORD(v304) = v301;
  v306 = v303 + v292 + v305 + (v304 >> 27) - 1894007588;
  HIDWORD(v304) = v296;
  LODWORD(v304) = v296;
  v307 = v304 >> 2;
  v308 = v228 ^ v238 ^ v268 ^ v293;
  HIDWORD(v304) = v306;
  LODWORD(v304) = v306;
  v309 = v304 >> 27;
  v310 = __PAIR64__(v301, __ROR4__(v291, 2));
  v311 = v308 + v297 + (v307 ^ v310 ^ v301) - 899497514;
  LODWORD(v310) = v301;
  v312 = v310 >> 2;
  v313 = v311 + v309;
  v314 = v233 ^ v243 ^ v273 ^ v298;
  HIDWORD(v310) = v313;
  LODWORD(v310) = v313;
  v315 = v310 >> 27;
  v316 = __PAIR64__(v306, __ROR4__(v296, 2));
  v317 = v314 + v302 + (v312 ^ v316 ^ v306) - 899497514 + v315;
  LODWORD(v316) = v306;
  v318 = v316 >> 2;
  v319 = v248 ^ v238 ^ v278;
  HIDWORD(v316) = v317;
  LODWORD(v316) = v317;
  v320 = v316 >> 27;
  v321 = v319 ^ v303;
  v322 = __PAIR64__(v313, __ROR4__(v301, 2));
  v323 = (v319 ^ v303) + v307 + (v318 ^ v322 ^ v313) - 899497514 + v320;
  LODWORD(v322) = v313;
  v324 = v322 >> 2;
  v325 = v243 ^ v253 ^ v283 ^ v308;
  HIDWORD(v322) = v323;
  LODWORD(v322) = v323;
  v326 = v322 >> 27;
  v327 = __PAIR64__(v317, __ROR4__(v306, 2));
  v328 = v325 + v312 + (v324 ^ v327 ^ v317) - 899497514 + v326;
  LODWORD(v327) = v317;
  v329 = v327 >> 2;
  v330 = v248 ^ v258 ^ v288 ^ v314;
  HIDWORD(v327) = v328;
  LODWORD(v327) = v328;
  v331 = v327 >> 27;
  v332 = __PAIR64__(v323, __ROR4__(v313, 2));
  v333 = v330 + v318 + (v329 ^ v332 ^ v323) - 899497514 + v331;
  LODWORD(v332) = v323;
  v334 = v332 >> 2;
  v335 = v263 ^ v253 ^ v293 ^ v321;
  HIDWORD(v332) = v333;
  LODWORD(v332) = v333;
  v336 = v332 >> 27;
  v337 = __PAIR64__(v328, __ROR4__(v317, 2));
  v338 = v335 + v324 + (v334 ^ v337 ^ v328) - 899497514 + v336;
  LODWORD(v337) = v328;
  v339 = v337 >> 2;
  v340 = v258 ^ v268 ^ v298 ^ v325;
  HIDWORD(v337) = v338;
  LODWORD(v337) = v338;
  v341 = v337 >> 27;
  v342 = __PAIR64__(v333, __ROR4__(v323, 2));
  v343 = v340 + v329 + (v339 ^ v342 ^ v333) - 899497514;
  LODWORD(v342) = v333;
  v344 = v342 >> 2;
  v345 = v343 + v341;
  v346 = v263 ^ v273 ^ v303 ^ v330;
  HIDWORD(v342) = v345;
  LODWORD(v342) = v345;
  v347 = v342 >> 27;
  v348 = __PAIR64__(v338, __ROR4__(v328, 2));
  v349 = v346 + v334 + (v344 ^ v348 ^ v338) - 899497514 + v347;
  LODWORD(v348) = v338;
  v350 = v348 >> 2;
  HIDWORD(v348) = v349;
  LODWORD(v348) = v349;
  v351 = v348 >> 27;
  v352 = v278 ^ v268 ^ v308 ^ v335;
  v353 = __PAIR64__(v345, __ROR4__(v333, 2));
  v354 = v352 + v339 + (v350 ^ v353 ^ v345) - 899497514 + v351;
  LODWORD(v353) = v345;
  v355 = v353 >> 2;
  v356 = v273 ^ v283 ^ v314 ^ v340;
  HIDWORD(v353) = v354;
  LODWORD(v353) = v354;
  v357 = v353 >> 27;
  v358 = __PAIR64__(v349, __ROR4__(v338, 2));
  v359 = v356 + v344 + (v355 ^ v358 ^ v349) - 899497514 + v357;
  LODWORD(v358) = v349;
  v360 = v358 >> 2;
  v361 = v278 ^ v288 ^ v321 ^ v346;
  HIDWORD(v358) = v359;
  LODWORD(v358) = v359;
  v362 = v358 >> 27;
  v363 = __PAIR64__(v354, __ROR4__(v345, 2));
  v364 = v361 + v350 + (v360 ^ v363 ^ v354) - 899497514 + v362;
  LODWORD(v363) = v354;
  v365 = v363 >> 2;
  v366 = v293 ^ v283 ^ v325 ^ v352;
  HIDWORD(v363) = v364;
  LODWORD(v363) = v364;
  v367 = v363 >> 27;
  v368 = __PAIR64__(v359, __ROR4__(v349, 2));
  v369 = v366 + v355 + (v365 ^ v368 ^ v359) - 899497514 + v367;
  LODWORD(v368) = v359;
  v370 = v368 >> 2;
  v371 = v288 ^ v298 ^ v330 ^ v356;
  HIDWORD(v368) = v369;
  LODWORD(v368) = v369;
  v372 = v368 >> 27;
  v373 = __PAIR64__(v364, __ROR4__(v354, 2));
  v374 = v371 + v360 + (v370 ^ v373 ^ v364) - 899497514;
  LODWORD(v373) = v364;
  v375 = v373 >> 2;
  v376 = v374 + v372;
  v377 = v293 ^ v303 ^ v335 ^ v361;
  v378 = __PAIR64__(v376, __ROR4__(v359, 2));
  v379 = v377 + v365 + (v375 ^ v378 ^ v369);
  LODWORD(v378) = v376;
  v380 = v379 - 899497514 + (v378 >> 27);
  HIDWORD(v378) = v369;
  LODWORD(v378) = v369;
  v381 = v378 >> 2;
  v382 = v308 ^ v298 ^ v340 ^ v366;
  v383 = __PAIR64__(v380, __ROR4__(v364, 2));
  v384 = v382 + v370 + (v381 ^ v383 ^ v376);
  LODWORD(v383) = v380;
  v385 = v384 - 899497514 + (v383 >> 27);
  v386 = v303 ^ v314 ^ v346 ^ v371;
  HIDWORD(v383) = v376;
  LODWORD(v383) = v376;
  v387 = v383 >> 2;
  v388 = __PAIR64__(v385, __ROR4__(v369, 2));
  v389 = v386 + v375 + (v387 ^ v388 ^ v380);
  LODWORD(v388) = v385;
  v390 = v389 - 899497514 + (v388 >> 27);
  v391 = v308 ^ v321 ^ v352;
  HIDWORD(v388) = v380;
  LODWORD(v388) = v380;
  v392 = v388 >> 2;
  v393 = v391 ^ v377;
  HIDWORD(v388) = v390;
  LODWORD(v388) = v390;
  v394 = v388 >> 27;
  v395 = __PAIR64__(v385, __ROR4__(v376, 2));
  v396 = v393 + v381 + (v392 ^ v395 ^ v385) - 899497514 + v394;
  v397 = (v325 ^ v314 ^ v356 ^ v382) + v387;
  LODWORD(v395) = v385;
  v398 = v395 >> 2;
  v399 = __PAIR64__(v396, __ROR4__(v380, 2));
  v400 = v397 + (v398 ^ v399 ^ v390);
  LODWORD(v399) = v396;
  v401 = v400 - 899497514 + (v399 >> 27);
  HIDWORD(v399) = v390;
  LODWORD(v399) = v390;
  v402 = v399 >> 2;
  v403 = __PAIR64__(v401, __ROR4__(v385, 2));
  v404 = (v321 ^ v330 ^ v361 ^ v386) + v392 + (v402 ^ v403 ^ v396);
  LODWORD(v403) = v401;
  v405 = v404 - 899497514 + (v403 >> 27);
  HIDWORD(v403) = v396;
  LODWORD(v403) = v396;
  v406 = v403 >> 2;
  v407 = __PAIR64__(v405, __ROR4__(v390, 2));
  v408 = *result + (v325 ^ v335 ^ v366 ^ v393) + v398 + (v406 ^ v407 ^ v401) - 899497514;
  LODWORD(v407) = v405;
  *result = v408 + (v407 >> 27);
  result[1] = v405 + v410;
  HIDWORD(v407) = v401;
  LODWORD(v407) = v401;
  result[2] = (v407 >> 2) + v409;
  result[3] = v406 + v411;
  result[4] = v402 + v412;
  return result;
}

int SHA_Final(unsigned __int8 *md, SHA_CTX *c)
{
  __s = c;
  data = c->data;
  num = c->num;
  v6 = num >> 2;
  v7 = c->data[num >> 2];
  v8 = num & 3;
  v9 = &SHA_Final_end;
  if ((c->num & 3) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (!v8)
    {
      v7 = 0x80000000;
      v9 = &byte_2990EC149;
    }

    v10 = *v9++;
    v7 |= v10 << 16;
  }

  v11 = *v9++;
  v7 |= v11 << 8;
LABEL_7:
  data[v6] = v7 | *v9;
  if (c->num >= 56)
  {
    if (v6 <= 14)
    {
      bzero(&c->data[v6 + 1], 4 * (14 - v6) + 4);
    }

    sha_block(c, data);
    v12 = 0;
    goto LABEL_13;
  }

  if (v6 <= 12)
  {
    v12 = v6 + 1;
LABEL_13:
    bzero(&c->data[v12], 4 * (13 - v12) + 4);
  }

  *&c->data[14] = vrev64_s32(*&c->Nl);
  sha_block(c, data);
  *md = bswap32(c->h0);
  *(md + 1) = bswap32(c->h1);
  *(md + 2) = bswap32(c->h2);
  *(md + 3) = bswap32(c->h3);
  *(md + 4) = bswap32(c->h4);
  memset_s(&__s, 8uLL, 0, 8uLL);
  return 1;
}

_BYTE *SHA256_End(CC_SHA256_CTX *c, _BYTE *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  if (a2 || (v2 = malloc_type_malloc(0x41uLL, 0x8E260086uLL)) != 0)
  {
    v4 = md;
    CC_SHA256_Final(md, c);
    for (i = 0; i != 64; i += 2)
    {
      v6 = *v4++;
      v7 = &v2[i];
      *v7 = SHA256_End_hex[v6 >> 4];
      v7[1] = SHA256_End_hex[v6 & 0xF];
    }

    v2[64] = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

_BYTE *SHA256_FdChunk(int a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = &v37;
  v39 = 0x8000000000;
  memset(&v40, 0, sizeof(v40));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v23 = 0;
    *__error() = 22;
  }

  else
  {
    CC_SHA256_Init(&v40);
    if (a3 && ((*__error() = 0, lseek(a1, a3, 0) != a3) || a3 == -1 && *__error()))
    {
      v23 = 0;
    }

    else
    {
      v8 = fcntl(a1, 3);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(a1, 48, 1);
      }

      if (snprintf(__str, 0x25uLL, "%s.%d", "com.apple.libmd.io.sha256", atomic_fetch_add(&dispatch_queue_serial_5, 1uLL)) >= 0x25)
      {
        v9 = "com.apple.libmd.io.sha256";
      }

      else
      {
        v9 = __str;
      }

      v10 = dispatch_queue_create(v9, 0);
      if (!v10)
      {
        MD4FdChunk_cold_1();
      }

      v11 = v10;
      v12 = dispatch_semaphore_create(0);
      if (!v12)
      {
        MD4FdChunk_cold_1();
      }

      v13 = v12;
      cleanup_handler[0] = MEMORY[0x29EDCA5F8];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __SHA256_FdChunk_block_invoke;
      cleanup_handler[3] = &unk_29EF07500;
      cleanup_handler[4] = &v33;
      cleanup_handler[5] = v12;
      v14 = dispatch_io_create(0, a1, v11, cleanup_handler);
      if (!v14)
      {
        MD4FdChunk_cold_1();
      }

      v15 = v14;
      v26 = a1;
      if ((v30[3] & 1) == 0)
      {
        v16 = 0;
        if (a4 >= 0xA00000)
        {
          v17 = 10485760;
        }

        else
        {
          v17 = a4;
        }

        if (a4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10485760;
        }

        do
        {
          if (a4)
          {
            v19 = v16 < a4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          if (*(v34 + 6))
          {
            v21 = 1;
          }

          else
          {
            v21 = v20 == 0;
          }

          if (v21)
          {
            break;
          }

          io_handler[0] = MEMORY[0x29EDCA5F8];
          io_handler[1] = 0x40000000;
          io_handler[2] = __SHA256_FdChunk_block_invoke_2;
          io_handler[3] = &unk_29EF07550;
          io_handler[4] = &v37;
          io_handler[5] = &v33;
          io_handler[6] = &v29;
          io_handler[7] = v13;
          dispatch_io_read(v15, v16, v18, v11, io_handler);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v16 += 10485760;
        }

        while (!*(v30 + 24));
      }

      dispatch_release(v15);
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v11);
      dispatch_release(v13);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(v26, 48, 0);
      }

      v22 = *(v34 + 6);
      if (v22)
      {
        v23 = 0;
        *__error() = v22;
      }

      else
      {
        v23 = SHA256_End((v38 + 3), a2);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

_BYTE *SHA256_FileChunk(const char *a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = SHA256_FdChunk(v7, a2, a3, a4);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  return v9;
}

_BYTE *SHA256_Data(const void *a1, CC_LONG a2, _BYTE *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a1, a2);
  return SHA256_End(&v7, a3);
}

_BYTE *SHA512_End(CC_SHA512_CTX *c, _BYTE *a2)
{
  v2 = a2;
  v11 = *MEMORY[0x29EDCA608];
  if (a2 || (v2 = malloc_type_malloc(0x81uLL, 0x76F14ACuLL)) != 0)
  {
    v4 = md;
    CC_SHA512_Final(md, c);
    for (i = 0; i != 128; i += 2)
    {
      v6 = *v4++;
      v7 = &v2[i];
      *v7 = SHA512_End_hex[v6 >> 4];
      v7[1] = SHA512_End_hex[v6 & 0xF];
    }

    v2[128] = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v2;
}

_BYTE *SHA512_FdChunk(int a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0;
  v38 = &v37;
  v39 = 0xE800000000;
  memset(&v40, 0, sizeof(v40));
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v23 = 0;
    *__error() = 22;
  }

  else
  {
    CC_SHA512_Init(&v40);
    if (a3 && ((*__error() = 0, lseek(a1, a3, 0) != a3) || a3 == -1 && *__error()))
    {
      v23 = 0;
    }

    else
    {
      v8 = fcntl(a1, 3);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(a1, 48, 1);
      }

      if (snprintf(__str, 0x25uLL, "%s.%d", "com.apple.libmd.io.sha512", atomic_fetch_add(&dispatch_queue_serial_6, 1uLL)) >= 0x25)
      {
        v9 = "com.apple.libmd.io.sha512";
      }

      else
      {
        v9 = __str;
      }

      v10 = dispatch_queue_create(v9, 0);
      if (!v10)
      {
        MD4FdChunk_cold_1();
      }

      v11 = v10;
      v12 = dispatch_semaphore_create(0);
      if (!v12)
      {
        MD4FdChunk_cold_1();
      }

      v13 = v12;
      cleanup_handler[0] = MEMORY[0x29EDCA5F8];
      cleanup_handler[1] = 0x40000000;
      cleanup_handler[2] = __SHA512_FdChunk_block_invoke;
      cleanup_handler[3] = &unk_29EF07578;
      cleanup_handler[4] = &v33;
      cleanup_handler[5] = v12;
      v14 = dispatch_io_create(0, a1, v11, cleanup_handler);
      if (!v14)
      {
        MD4FdChunk_cold_1();
      }

      v15 = v14;
      v26 = a1;
      if ((v30[3] & 1) == 0)
      {
        v16 = 0;
        if (a4 >= 0xA00000)
        {
          v17 = 10485760;
        }

        else
        {
          v17 = a4;
        }

        if (a4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 10485760;
        }

        do
        {
          if (a4)
          {
            v19 = v16 < a4;
          }

          else
          {
            v19 = 1;
          }

          v20 = v19;
          if (*(v34 + 6))
          {
            v21 = 1;
          }

          else
          {
            v21 = v20 == 0;
          }

          if (v21)
          {
            break;
          }

          io_handler[0] = MEMORY[0x29EDCA5F8];
          io_handler[1] = 0x40000000;
          io_handler[2] = __SHA512_FdChunk_block_invoke_2;
          io_handler[3] = &unk_29EF075C8;
          io_handler[4] = &v37;
          io_handler[5] = &v33;
          io_handler[6] = &v29;
          io_handler[7] = v13;
          dispatch_io_read(v15, v16, v18, v11, io_handler);
          dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
          v16 += 10485760;
        }

        while (!*(v30 + 24));
      }

      dispatch_release(v15);
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v11);
      dispatch_release(v13);
      if ((v8 & 0x40000) == 0)
      {
        fcntl(v26, 48, 0);
      }

      v22 = *(v34 + 6);
      if (v22)
      {
        v23 = 0;
        *__error() = v22;
      }

      else
      {
        v23 = SHA512_End((v38 + 3), a2);
      }
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

_BYTE *SHA512_FileChunk(const char *a1, _BYTE *a2, off_t a3, unint64_t a4)
{
  v7 = open(a1, 0);
  if (v7 < 0)
  {
    return 0;
  }

  v8 = v7;
  v9 = SHA512_FdChunk(v7, a2, a3, a4);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  return v9;
}

_BYTE *SHA512_Data(const void *a1, CC_LONG a2, _BYTE *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA512_Init(&v7);
  CC_SHA512_Update(&v7, a1, a2);
  return SHA512_End(&v7, a3);
}

void MD4FdChunk_cold_1()
{
  _os_assert_log();
  v0 = _os_crash();
  __break(1u);
  CC_MD4_Final(v0, v1);
}