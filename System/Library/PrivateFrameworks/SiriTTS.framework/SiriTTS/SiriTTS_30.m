uint64_t cache_datastream_GetSize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  critsec_Enter(*(*(a1 + 8) + 16));
  v2 = (*(*(*(a1 + 8) + 24) + 32))(*(a1 + 24));
  critsec_Leave(*(*(a1 + 8) + 16));
  return v2;
}

uint64_t cache_datastream_Write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  critsec_Enter(*(*(a4 + 8) + 16));
  v8 = (*(*(*(a4 + 8) + 24) + 48))(a1, a2, a3, *(a4 + 24));
  critsec_Leave(*(*(a4 + 8) + 16));
  return v8;
}

uint64_t cache_datastream_DataOpen(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = 2153783303;
  if (a1 && a4)
  {
    v9 = a1[3].i64[0];
    v10 = *(v9 + 24);
    v11 = heap_Calloc(*(v9 + 8), 1, 32);
    v12 = v11;
    if (v11)
    {
      v13 = a1[3];
      *v11 = vextq_s8(v13, v13, 8uLL);
      v11[1].i64[1] = *(v13.i64[0] + 8);
      v11[1].i64[0] = 0;
      v14 = v11 + 1;
      v4 = (*(v10 + 80))(a1[2].i64[1], a2, a3, v11 + 1);
      if (!v14->i64[0])
      {
        heap_Free(*(a1[3].i64[0] + 8), v12);
        v12 = 0;
      }
    }

    else
    {
      v4 = 2153783306;
    }

    *a4 = v12;
  }

  return v4;
}

uint64_t cache_datastream_DataClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*(a1 + 8) + 24) + 96))(*(a1 + 16));
  heap_Free(*(a1 + 24), a1);
  return v2;
}

uint64_t cache_datastream_DataMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a3 && a4)
  {
    return (*(*(*(a1 + 8) + 24) + 104))(*(a1 + 16));
  }

  else
  {
    return 2153783303;
  }
}

uint64_t cache_datastream_DataUnmap(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*(a1 + 8) + 24) + 112))(*(a1 + 16));
  }

  else
  {
    return 2153783303;
  }
}

uint64_t cache_datastream_DataFreeze(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*(a1 + 8) + 24) + 120))(*(a1 + 16));
  }

  else
  {
    return 2153783303;
  }
}

uint64_t cache_datastream_DynModOpen(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a5)
  {
    v11 = a1[3].i64[0];
    v12 = *(v11 + 24);
    v13 = heap_Calloc(*(v11 + 8), 1, 32);
    v14 = v13;
    if (v13)
    {
      v15 = a1[3];
      *v13 = vextq_s8(v15, v15, 8uLL);
      v13[1].i64[1] = *(v15.i64[0] + 8);
      v13[1].i64[0] = 0;
      v16 = v13 + 1;
      v5 = (*(v12 + 176))(a1[2].i64[1], a2, a3, a4, v13 + 1);
      if (!v16->i64[0])
      {
        heap_Free(*(a1[3].i64[0] + 8), v14);
        v14 = 0;
      }
    }

    else
    {
      v5 = 2153783306;
    }

    *a5 = v14;
  }

  return v5;
}

uint64_t cache_datastream_DynModClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*(a1 + 8) + 24) + 184))(*(a1 + 16));
  *(a1 + 16) = 0;
  heap_Free(*(a1 + 24), a1);
  return v2;
}

uint64_t cache_datastream_DynModObjLoad(uint64_t a1)
{
  if (a1)
  {
    return (*(*(*(a1 + 8) + 24) + 192))(*(a1 + 16));
  }

  else
  {
    return 2153783303;
  }
}

uint64_t AddCacheData(void *a1, unsigned int a2, void *a3)
{
  v4 = a1[1];
  v5 = *(v4 + 64);
  if (!v5)
  {
    return a2;
  }

  v8 = *(v4 + 24);
  v9 = *(a1[6] + 16);
  v10 = *(v5 + 8);
  v11 = *(v10 + 8);
  *(v5 + 8) = v11;
  *v11 = 0;
  *(v10 + 16) = v9;
  v13 = a1 + 3;
  v12 = a1[3];
  *(v10 + 32) = v13[1];
  if (((*(v8 + 24))(v12) & 0x80000000) != 0 || (*(v8 + 16))(*(v10 + 24), 1, *(v5 + 44), a1[3]) < a2)
  {
    return 0;
  }

  v14 = a2;
  memcpy(a3, *(v10 + 24), a2);
  a1[4] += a2;
  v15 = *(v5 + 16);
  *(v15 + 8) = v10;
  *v10 = v15;
  *(v10 + 8) = 0;
  *(v5 + 16) = v10;
  return v14;
}

uint64_t osspi_cb_cache_ClassOpen(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v21 = 0;
  v22 = 0;
  v6 = 2153783303;
  if (a4 && a6)
  {
    v13 = heap_Calloc(a1, 1, 96);
    *a6 = v13;
    if (!v13)
    {
      return 2153783306;
    }

    *v13 = a1;
    (*a6)[1] = a2;
    (*a6)[10] = 0;
    (*a6)[11] = 0;
    (*a6)[2] = heap_Calloc(a1, 1, 224);
    v14 = *a6;
    v15 = (*a6)[2];
    if (v15)
    {
      *v15 = cache_datastream_Open;
      *((*a6)[2] + 8) = cache_datastream_Close;
      *((*a6)[2] + 16) = cache_datastream_Read;
      *((*a6)[2] + 24) = cache_datastream_Seek;
      *((*a6)[2] + 32) = cache_datastream_GetSize;
      *((*a6)[2] + 48) = cache_datastream_Write;
      if (*(a4 + 80))
      {
        *((*a6)[2] + 80) = cache_datastream_DataOpen;
        *((*a6)[2] + 96) = cache_datastream_DataClose;
        *((*a6)[2] + 104) = cache_datastream_DataMap;
        *((*a6)[2] + 112) = cache_datastream_DataUnmap;
        *((*a6)[2] + 120) = cache_datastream_DataFreeze;
      }

      if (*(a4 + 176))
      {
        *((*a6)[2] + 176) = cache_datastream_DynModOpen;
        *((*a6)[2] + 184) = cache_datastream_DynModClose;
        *((*a6)[2] + 192) = cache_datastream_DynModObjLoad;
        *((*a6)[2] + 200) = cache_datastream_DynModObjUnload;
      }

      (*a6)[4] = a4;
      (*a6)[5] = a5;
      v16 = cache_ClassOpen(a1, a3, a4, a5, &v22);
      if ((v16 & 0x80000000) != 0)
      {
        v6 = v16;
      }

      else
      {
        v17 = v22;
        (*a6)[7] = v22;
        v6 = cache_ObjOpen(v17, 0x10u, 0x200u, 0x100u, &v21);
        if ((v6 & 0x80000000) == 0)
        {
          (*a6)[6] = v21;
          (*a6)[3] = *a6;
          return v6;
        }
      }

      v14 = *a6;
      if (!*a6)
      {
        return v6;
      }
    }

    else
    {
      v6 = 2153783306;
    }

    v18 = v14[6];
    if (v18)
    {
      cache_ObjClose(v18);
      v14 = *a6;
    }

    v19 = v14[7];
    if (v19)
    {
      cache_ClassClose(v19);
      v14 = *a6;
    }

    if (v14[2])
    {
      heap_Free(a1, v14[2]);
      v14 = *a6;
    }

    heap_Free(a1, v14);
    *a6 = 0;
  }

  return v6;
}

uint64_t osspi_cb_cache_SetLog(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return cache_ObjSetLog(*(a1 + 48), a2, a3);
  }

  else
  {
    return 2153783303;
  }
}

uint64_t osspi_cb_cache_ClassClose(void **a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  cache_ObjClose(a1[6]);
  a1[6] = 0;
  cache_ClassClose(a1[7]);
  a1[7] = 0;
  heap_Free(*a1, a1[2]);
  *(a1 + 1) = *(a1 + 2);
  heap_Free(*a1, a1);
  return 0;
}

uint64_t osspi_DynModOpen(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = 2153783303;
  if (a1 && a2 && a5)
  {
    if (*(a1[2] + 176))
    {
      v11 = heap_Calloc(a2, 1, 24);
      *a5 = v11;
      if (v11)
      {
        *v11 = a1;
        *(*a5 + 8) = a2;
        v5 = (*(a1[2] + 176))(a1[3], a1[1], a3, a4, *a5 + 16);
        if ((v5 & 0x80000000) != 0)
        {
          heap_Free(a2, *a5);
          *a5 = 0;
        }
      }

      else
      {
        return 2153783306;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return v5;
}

uint64_t osspi_DynModClose(uint64_t a1)
{
  v1 = 2153783297;
  if (!a1)
  {
    return 2153783303;
  }

  v3 = *(*(*a1 + 16) + 184);
  if (v3)
  {
    v1 = v3(*(a1 + 16));
    if ((v1 & 0x80000000) == 0)
    {
      heap_Free(*(a1 + 8), a1);
    }
  }

  return v1;
}

uint64_t osspi_DynModObjLoad(void *a1, uint64_t a2, uint64_t a3)
{
  result = 2153783303;
  if (a1 && a2 && a3)
  {
    v5 = *(*(*a1 + 16) + 192);
    if (v5)
    {
      return v5(a1[2]);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t osspi_DynModObjUnload(void *a1, uint64_t a2)
{
  v2 = 2153783303;
  if (a1 && a2)
  {
    v3 = *(*(*a1 + 16) + 200);
    if (v3)
    {
      return v3(a1[2]);
    }

    return 2153783297;
  }

  return v2;
}

uint64_t osspi_DataOpen(void *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  safeh_GetNullHandle();

  return osspi_DataOpenEx(a1, a2, v8, v9, v10, a3, a4);
}

uint64_t osspi_DataOpenEx(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = 2153783303;
  if (!a6 || !a1 || !a2 || !a7)
  {
    return v7;
  }

  v12 = heap_Calloc(a2, 1, 56);
  *a7 = v12;
  if (!v12)
  {
    return 2153783306;
  }

  *v12 = a1;
  *(*a7 + 8) = a2;
  v13 = a1[2];
  v14 = *(v13 + 80);
  if (v14)
  {
    v7 = v14(a1[3], a1[1], a6, *a7 + 24);
    if ((v7 & 0x1FFF) != 1)
    {
      goto LABEL_10;
    }

    v13 = a1[2];
  }

  v7 = (*v13)(a1[3], a1[1], a6, "rb", *a7 + 32);
LABEL_10:
  if ((v7 & 0x80000000) != 0)
  {
    heap_Free(a2, *a7);
    *a7 = 0;
  }

  return v7;
}

uint64_t osspi_DataClose(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      v2 = 96;
    }

    else
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        heap_Free(*(a1 + 8), v4);
      }

      if (!*(a1 + 32))
      {
        v3 = 0;
LABEL_12:
        heap_Free(*(a1 + 8), a1);
        return v3;
      }

      v2 = 8;
    }

    v3 = (*(*(*a1 + 16) + v2))();
    if ((v3 & 0x80000000) != 0)
    {
      return v3;
    }

    goto LABEL_12;
  }

  return 2153783303;
}

uint64_t osspi_DataReplace(void *a1, uint64_t a2, uint64_t a3)
{
  result = 2153783303;
  if (a1 && a2 && a3)
  {
    v5 = *(a1[2] + 128);
    if (v5)
    {
      return v5(a1[3], a1[1]);
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t osspi_DataMap(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4)
{
  v4 = 2153783303;
  if (a1 && a3 && a4)
  {
    if (*(a1 + 16))
    {
      return 2153783313;
    }

    *a4 = 0;
    v9 = *(a1 + 24);
    if (v9)
    {
      v17 = *a3;
      v10 = (*(*(*a1 + 16) + 104))(v9, a2, &v17, a4);
      *a3 = v17;
      v4 = v10;
      if ((v10 & 0x80000000) != 0)
      {
        return v4;
      }

      goto LABEL_8;
    }

    v4 = 2153783300;
    if (!*a3)
    {
      v12 = (*(*(*a1 + 16) + 32))(*(a1 + 32));
      *a3 = v12;
      if (v12 <= a2)
      {
        return v4;
      }

      *a3 = v12 - a2;
    }

    v10 = (*(*(*a1 + 16) + 24))(*(a1 + 32), a2, 0, 1);
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

    v13 = *a3;
    if (*(a1 + 48) >= v13)
    {
      v14 = *(a1 + 40);
    }

    else
    {
      v14 = heap_Realloc(*(a1 + 8), *(a1 + 40), v13);
      if (!v14)
      {
        return 2153783306;
      }

      *(a1 + 40) = v14;
      *(a1 + 48) = *a3;
    }

    v15 = *(a1 + 32);
    v16 = (*(*(*a1 + 16) + 16))(v14, 1);
    if (v16 + 1 >= 2)
    {
      *a3 = v16;
      *a4 = *(a1 + 40);
LABEL_8:
      *(a1 + 16) = 1;
      return v10;
    }
  }

  return v4;
}

uint64_t osspi_DataUnmap(uint64_t a1, uint64_t a2)
{
  result = 2153783303;
  if (a1 && a2)
  {
    if (!*(a1 + 16))
    {
      return 2153783313;
    }

    if (*(a1 + 24))
    {
      result = (*(*(*a1 + 16) + 112))();
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    else if (*(a1 + 48) < 0x401u)
    {
      result = 0;
    }

    else
    {
      heap_Free(*(a1 + 8), *(a1 + 40));
      result = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t osspi_DataFreeze(void *a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  if (a1[3])
  {
    v2 = *(*(*a1 + 16) + 120);
    if (v2)
    {

      return v2();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = a1[4];
    if (result)
    {
      result = (*(*(*a1 + 16) + 8))();
      a1[4] = 0;
    }
  }

  return result;
}

uint64_t osspi_FindOpen(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = 2153783303;
  if (a5 && a3 && a1 && a2 && a6)
  {
    if (*(a1[2] + 152))
    {
      v13 = heap_Calloc(a2, 1, 24);
      *a6 = v13;
      if (v13)
      {
        *v13 = a1;
        *(*a6 + 8) = a2;
        v6 = (*(a1[2] + 152))(a1[3], a1[1], a3, a4, a5, *a6 + 16);
        if ((v6 & 0x80000000) != 0)
        {
          heap_Free(a2, *a6);
          *a6 = 0;
        }
      }

      else
      {
        return 2153783306;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return v6;
}

uint64_t osspi_FindNext(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(*(*a1 + 16) + 160))(a1[2]);
  }

  else
  {
    return 2153783303;
  }
}

uint64_t osspi_FindClose(uint64_t a1)
{
  if (!a1)
  {
    return 2153783303;
  }

  v2 = (*(*(*a1 + 16) + 168))(*(a1 + 16));
  if ((v2 & 0x80000000) == 0)
  {
    heap_Free(*(a1 + 8), a1);
  }

  return v2;
}

uint64_t osspi_time(uint64_t result, uint64_t *a2)
{
  v7 = 0;
  if (!result)
  {
LABEL_7:
    if (!a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  v3 = *(*(result + 16) + 136);
  if (v3)
  {
    result = v3(*(result + 24), &v7);
    if (!a2)
    {
      return result;
    }

    goto LABEL_8;
  }

  v4 = *(result + 88);
  if (v4)
  {
    v6 = 0;
    v5 = 0;
    v4(*(result + 80), &v5);
    result = v5;
    goto LABEL_7;
  }

  result = 0;
  if (!a2)
  {
    return result;
  }

LABEL_8:
  *a2 = result;
  return result;
}

uint64_t osspi_ctime(void *a1, void *a2, int a3, char *a4)
{
  result = 2153783303;
  if (a3 && a1 && a2 && a4)
  {
    v7 = *(a1[2] + 144);
    if (v7)
    {
      v8 = a1[3];

      return v7(v8);
    }

    else if (*a2)
    {
      result = 2153783297;
      if (a1[11])
      {
        LH_itoa(*a2, a4, 0xAu);
        return 0;
      }
    }

    else
    {
      return 2153783297;
    }
  }

  return result;
}

uint64_t osspi_ClcDataOpen(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v4[0] = xmmword_1F42CF3B0;
  v4[1] = *off_1F42CF3C0;
  result = 2153783303;
  if (a1)
  {
    if (a2)
    {
      return clcarchive_Parse(a2, v4, a1, &v5, 0);
    }
  }

  return result;
}

size_t osspi_ClcDataRead(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  if (!v6)
  {
    return (*(*(*a4 + 16) + 16))(a1, a2, a3, *(a4 + 32));
  }

  v10 = 0;
  v11 = a3 * a2;
  if (((*(*(*a4 + 16) + 104))(v6, *(a4 + 52), &v11, &v10) & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = v10;
  v8 = v11;
  memcpy(a1, v10, v11);
  *(a4 + 52) += v8;
  if ((*(*(*a4 + 16) + 112))(*(a4 + 24), v7) >= 0)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t osspi_ClcDataSeek(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 24))
  {
    return (*(*(*a1 + 16) + 24))(*(a1 + 32), a2, a3, 1);
  }

  *(a1 + 52) = a2;
  return 0;
}

uint64_t osspi_ClcDataClose(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 2153783303;
  }

  else
  {
    return 0;
  }
}

uint64_t safeh_HandleCheck(uint64_t a1, int a2, int a3, int a4)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = -2123341816;
  }

  if (!a4)
  {
    v4 = 0;
  }

  if (a2 == a3)
  {
    return v4;
  }

  else
  {
    return 2171625480;
  }
}

_WORD *LH_wcscpy(_WORD *result, unsigned __int16 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2)
  {
    v3 = result + 1;
    v4 = a2 + 1;
    do
    {
      v5 = *v4++;
      *v3++ = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t LH_wcschr(uint64_t a1, int a2)
{
  v2 = a1 - 2;
  do
  {
    v4 = *(v2 + 2);
    v2 += 2;
    v3 = v4;
    if (v4)
    {
      v5 = v3 == a2;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v3 == a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t LH_wcscmp(_WORD *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    do
    {
      if (v2 != *a2)
      {
        break;
      }

      ++a2;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return v2 - *a2;
}

uint64_t LH_wcslen(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = *(a1 + v1);
    v1 += 2;
  }

  while (v2);
  return (v1 >> 1) - 1;
}

uint64_t LH_wcsncpy(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 2 * a3 - 2;
    for (i = (a1 + 2); ; ++i)
    {
      v7 = *a2;
      *(i - 1) = v7;
      if (!v7)
      {
        break;
      }

      ++a2;
      v5 -= 2;
      if (!--a3)
      {
        return a1;
      }
    }

    if (a3 != 1)
    {
      bzero(i, v5);
    }
  }

  return a1;
}

uint64_t ssftstring_ObjOpen(void *a1, void *a2)
{
  v2 = 2319458311;
  if (a2)
  {
    v5 = heap_Calloc(a1, 1, 24);
    *a2 = v5;
    if (v5)
    {
      v2 = 0;
      *v5 = a1;
    }

    else
    {
      return 2319458314;
    }
  }

  return v2;
}

uint64_t ssftstring_ObjClone(uint64_t a1, uint64_t *a2)
{
  v2 = 2319458311;
  if (a1 && a2)
  {
    v5 = heap_Calloc(*a1, 1, 24);
    *a2 = v5;
    if (v5)
    {
      *v5 = *a1;
      v6 = *(a1 + 8);
      v7 = v6 != 0;
      v8 = v6 - 1;
      if (v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = ssftstring_Reserve(*a2, v9);
      if ((v10 & 0x80000000) != 0)
      {
        v2 = v10;
        heap_Free(*a1, *a2);
        *a2 = 0;
      }

      else
      {
        strcpy(*(*a2 + 16), *(a1 + 16));
        v2 = 0;
        *(*a2 + 12) = *(a1 + 12);
      }
    }

    else
    {
      return 2319458314;
    }
  }

  return v2;
}

uint64_t ssftstring_Reserve(uint64_t a1, int a2)
{
  v2 = 2319458314;
  if (!a1)
  {
    return 2319458311;
  }

  v4 = (a2 + 1);
  if (*(a1 + 8) >= v4)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *a1;
  if (v5)
  {
    v7 = heap_Realloc(v6, v5, v4);
    if (!v7)
    {
      return v2;
    }

    goto LABEL_10;
  }

  v7 = heap_Alloc(v6, v4);
  if (v7)
  {
    *v7 = 0;
LABEL_10:
    v2 = 0;
    *(a1 + 16) = v7;
    *(a1 + 8) = v4;
  }

  return v2;
}

uint64_t ssftstring_AssignCStr(uint64_t a1, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
    if (a1)
    {
      goto LABEL_3;
    }

    return 2319458311;
  }

  v4 = 0;
  if (!a1)
  {
    return 2319458311;
  }

LABEL_3:
  result = ssftstring_Reserve(a1, v4);
  if ((result & 0x80000000) == 0)
  {
    v6 = *(a1 + 16);
    if (__s)
    {
      strcpy(v6, __s);
    }

    else
    {
      v4 = 0;
      *v6 = 0;
    }

    result = 0;
    *(a1 + 12) = v4;
  }

  return result;
}

uint64_t ssftstring_ObjClose(void **a1)
{
  if (!a1)
  {
    return 2319458311;
  }

  v2 = a1[2];
  if (v2)
  {
    heap_Free(*a1, v2);
  }

  heap_Free(*a1, a1);
  return 0;
}

uint64_t ssftstring_CStr(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ssftstring_CStrDetach(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 16);
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t ssftstring_Size(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t ssftstring_Assign(uint64_t a1, uint64_t a2)
{
  result = 2319458311;
  if (a1)
  {
    if (a2)
    {
      result = ssftstring_Reserve(a1, *(a2 + 12));
      if ((result & 0x80000000) == 0)
      {
        v5 = *(a2 + 16);
        v6 = *(a1 + 16);
        if (v5)
        {
          strcpy(v6, v5);
          v7 = *(a2 + 12);
        }

        else
        {
          v7 = 0;
          *v6 = 0;
        }

        result = 0;
        *(a1 + 12) = v7;
      }
    }
  }

  return result;
}

uint64_t ssftstring_AppendChar(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 2319458311;
  }

  result = ssftstring_Reserve(a1, *(a1 + 12) + 1);
  if ((result & 0x80000000) == 0)
  {
    result = 0;
    *(*(a1 + 16) + *(a1 + 12)) = a2;
    v5 = *(a1 + 12) + 1;
    *(a1 + 12) = v5;
    *(*(a1 + 16) + v5) = 0;
  }

  return result;
}

uint64_t ssftstring_AppendCStr(uint64_t a1, char *__s)
{
  if (!a1 || !__s)
  {
    return 2319458311;
  }

  v4 = strlen(__s);

  return ssftstring_AppendCStrN(a1, __s, v4);
}

uint64_t ssftstring_AppendCStrN(uint64_t a1, const char *a2, unsigned int a3)
{
  result = 2319458311;
  if (a1 && a2)
  {
    result = ssftstring_Reserve(a1, *(a1 + 12) + a3);
    if ((result & 0x80000000) == 0)
    {
      strncpy((*(a1 + 16) + *(a1 + 12)), a2, a3);
      result = 0;
      v7 = *(a1 + 12) + a3;
      *(a1 + 12) = v7;
      *(*(a1 + 16) + v7) = 0;
    }
  }

  return result;
}

uint64_t ssftstring_Clear(uint64_t a1)
{
  if (!a1)
  {
    return 2319458311;
  }

  v2 = *(a1 + 16);
  result = 0;
  if (v2)
  {
    *v2 = 0;
    *(a1 + 12) = 0;
  }

  return result;
}

uint64_t ssftstring_ReplaceAllCStrByCStr(uint64_t a1, char *__s2, char *a3)
{
  v3 = 2319458311;
  *v15 = 0;
  if (!a1 || !__s2 || !*__s2)
  {
    return v3;
  }

  v6 = *(a1 + 16);
  if (!v6 || (v8 = strstr(*(a1 + 16), __s2)) == 0)
  {
    v3 = 0;
LABEL_17:
    if (*v15)
    {
      ssftstring_ObjClose(*v15);
    }

    return v3;
  }

  v9 = v8;
  v10 = ssftstring_ObjClone(a1, v15);
  if ((v10 & 0x80000000) != 0)
  {
    return v10;
  }

  v11 = *v15;
  if (*v15)
  {
    v12 = *(*v15 + 16);
    if (v12)
    {
      *v12 = 0;
      *(v11 + 12) = 0;
    }

    while (1)
    {
      appended = ssftstring_AppendCStrN(*v15, v6, v9 - v6);
      if ((appended & 0x80000000) != 0)
      {
        break;
      }

      appended = ssftstring_AppendCStr(*v15, a3);
      if ((appended & 0x80000000) != 0)
      {
        break;
      }

      v6 = &v9[strlen(__s2)];
      v9 = strstr(v6, __s2);
      if (!v9)
      {
        appended = ssftstring_AppendCStr(*v15, v6);
        if ((appended & 0x80000000) == 0)
        {
          appended = ssftstring_Assign(a1, *v15);
        }

        break;
      }
    }

    v3 = appended;
    goto LABEL_17;
  }

  return v3;
}

uint64_t ssftstring_ReplaceAllBy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return ssftstring_ReplaceAllCStrByCStr(a1, *(a2 + 16), *(a3 + 16));
  }

  else
  {
    return 2319458311;
  }
}

uint64_t vector_ObjOpen(void *a1, __int128 *a2, __int16 a3, uint64_t *a4)
{
  v8 = *(a2 + 2);
  result = 0;
  if (*(a2 + 1))
  {
    if (!a4 || !v8)
    {
      return result;
    }

LABEL_7:
    result = heap_Calloc(a1, 1, 64);
    *a4 = result;
    if (result)
    {
      *result = 0;
      v10 = *a4;
      *(v10 + 32) = 0;
      v11 = *a2;
      *(v10 + 24) = *(a2 + 2);
      *(v10 + 8) = v11;
      v12 = *a4;
      *(v12 + 40) = a3;
      *(v12 + 48) = a1;
      *(*a4 + 56) = 0;
      return 1;
    }

    return result;
  }

  if (a4 && !v8)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t vector_ObjClone(__int128 *a1, uint64_t **a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = heap_Calloc(*(a1 + 6), 1, 64);
      *a2 = result;
      if (result)
      {
        v5 = *a1;
        v6 = a1[1];
        v7 = a1[3];
        *(result + 32) = a1[2];
        *(result + 48) = v7;
        *result = v5;
        *(result + 16) = v6;
        **a2 = heap_Alloc((*a2)[6], *(*a2 + 8) * *(*a2 + 4));
        v8 = *a2;
        v9 = **a2;
        if (!v9)
        {
LABEL_24:
          heap_Free(v8[6], v8);
          result = 0;
          *a2 = 0;
          return result;
        }

        memcpy(v9, *a1, *(v8 + 9) * *(v8 + 4));
        if (!(*a2)[2])
        {
          return 1;
        }

        v10 = 0;
        v11 = 0;
        result = 1;
        while (result == 1)
        {
          if (v10 >= *(*a2 + 9))
          {
            return 1;
          }

          result = ((*a2)[2])(*a1 + v10 * *(a1 + 4), (*a2)[6], **a2 + v10 * *(*a2 + 4));
          if (result == 1)
          {
            ++v11;
          }

          ++v10;
        }

        if (!result)
        {
          v8 = *a2;
          if (!*a2)
          {
            return 0;
          }

          v12 = *v8;
          if (*v8)
          {
            if (v8[3])
            {
              v13 = v11 == 0;
            }

            else
            {
              v13 = 1;
            }

            if (!v13)
            {
              v14 = 0;
              do
              {
                ((*a2)[3])(**a2 + v14 * *(*a2 + 4), (*a2)[6]);
                ++v14;
              }

              while (v11 != v14);
              v8 = *a2;
              v12 = **a2;
            }

            heap_Free(v8[6], v12);
            v8 = *a2;
          }

          goto LABEL_24;
        }
      }
    }
  }

  return result;
}

uint64_t vector_ObjClose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      if (*(result + 24) && *(result + 36))
      {
        v3 = 0;
        do
        {
          (*(v1 + 24))(*v1 + v3 * *(v1 + 8), *(v1 + 48));
          ++v3;
        }

        while (v3 < *(v1 + 36));
        v2 = *v1;
      }

      heap_Free(*(v1 + 48), v2);
    }

    heap_Free(*(v1 + 48), v1);
    return 1;
  }

  return result;
}

uint64_t vector_AddGet(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 36);
    v6 = v5 + 1;
    v7 = *a1;
    if (*(a1 + 32) < v5 + 1)
    {
      v8 = *(a1 + 40) + *(a1 + 40) * (v5 / *(a1 + 40));
      v9 = *(a1 + 48);
      v10 = v8 * *(a1 + 8);
      if (v7)
      {
        result = heap_Realloc(v9, v7, v10);
        if (!result)
        {
          return result;
        }

        v7 = result;
        *a1 = result;
      }

      else
      {
        result = heap_Calloc(v9, 1, v10);
        v7 = result;
        *a1 = result;
        if (!result)
        {
          return result;
        }
      }

      *(a1 + 32) = v8;
      v5 = *(a1 + 36);
      v6 = v5 + 1;
    }

    *a2 = v7 + v5 * *(a1 + 8);
    *(a1 + 36) = v6;
    return 1;
  }

  return result;
}

uint64_t vector_Add(uint64_t a1, const void *a2)
{
  __dst = 0;
  result = vector_AddGet(a1, &__dst);
  if (result)
  {
    memcpy(__dst, a2, *(a1 + 8));
    if (*(a1 + 56))
    {
      return 1;
    }

    v5 = *(a1 + 16);
    if (!v5)
    {
      return 1;
    }

    result = v5(a2, *(a1 + 48), __dst);
    if (result)
    {
      return 1;
    }

    else
    {
      --*(a1 + 36);
    }
  }

  return result;
}

uint64_t vector_AddElemAt(uint64_t a1, unsigned int a2, const void *a3)
{
  __dst = 0;
  result = vector_AddGet(a1, &__dst);
  if (result)
  {
    v7 = *(a1 + 36);
    v8 = v7 - 1;
    if (v7 - 1 > a2)
    {
      v9 = *a1;
      v10 = *(a1 + 8);
      __dst = (*a1 + v10 * a2);
      memmove((v9 + (a2 + 1) * v10), __dst, (v7 - (a2 + 1)) * v10);
      v8 = a2;
    }

    memcpy(__dst, a3, *(a1 + 8));
    if (*(a1 + 56))
    {
      return 1;
    }

    v11 = *(a1 + 16);
    if (!v11 || v11(a3, *(a1 + 48), __dst))
    {
      return 1;
    }

    else
    {
      v12 = *(a1 + 24);
      *(a1 + 24) = 0;
      vector_Remove(a1, v8);
      result = 0;
      *(a1 + 24) = v12;
    }
  }

  return result;
}

uint64_t vector_Remove(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 36);
    if (v4 <= a2)
    {
      return 0;
    }

    else
    {
      if (!*(result + 56))
      {
        v5 = *(result + 24);
        if (v5)
        {
          v5(*result + *(result + 8) * a2, *(result + 48));
          v4 = *(v3 + 36);
        }
      }

      if (v4 + ~a2)
      {
        memmove((*v3 + *(v3 + 8) * a2), (*v3 + *(v3 + 8) + *(v3 + 8) * a2), (v4 + ~a2) * *(v3 + 8));
        v4 = *(v3 + 36);
      }

      *(v3 + 36) = v4 - 1;
      return 1;
    }
  }

  return result;
}

uint64_t vector_RemoveAddress(uint64_t result, char *__dst)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (__dst)
    {
      v4 = *(v3 + 8);
      v5 = *v3 + (*(v3 + 36) * v4);
      if (*v3 <= __dst && v5 >= __dst)
      {
        if (!*(v3 + 56))
        {
          v7 = *(v3 + 24);
          if (v7)
          {
            v7(__dst, *(v3 + 48));
            v4 = *(v3 + 8);
          }
        }

        memmove(__dst, &__dst[v4], (v5 - (__dst + v4)));
        --*(v3 + 36);
        return 1;
      }
    }
  }

  return result;
}

uint64_t vector_Clear(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 56) && *(result + 24) && *(result + 36))
    {
      v2 = 0;
      do
      {
        (*(v1 + 24))(*v1 + v2 * *(v1 + 8), *(v1 + 48));
        ++v2;
      }

      while (v2 < *(v1 + 36));
    }

    *(v1 + 36) = 0;
    return 1;
  }

  return result;
}

uint64_t vector_GetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

uint64_t vector_GetElemAt(uint64_t a1, unsigned int a2, void *a3)
{
  result = 0;
  if (a1 && a3)
  {
    if (*(a1 + 36) <= a2)
    {
      return 0;
    }

    else
    {
      *a3 = *a1 + *(a1 + 8) * a2;
      return 1;
    }
  }

  return result;
}

uint64_t vector_StackPop(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 36)) != 0)
  {
    return vector_Remove(a1, v1 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t vector_StackTop(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 36);
    if (v4)
    {
      *a2 = *a1 + (v4 - 1) * *(a1 + 8);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double XmlPrologStateInit(uint64_t a1)
{
  *a1 = prolog0;
  *&result = 0x100000000;
  *(a1 + 16) = 0x100000000;
  *(a1 + 24) = 0;
  return result;
}

uint64_t prolog0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = prolog1;
  if (a2 <= 13)
  {
    switch(a2)
    {
      case 11:
        result = 55;
        break;
      case 12:
        result = 1;
        break;
      case 13:
        result = 56;
        break;
      default:
LABEL_13:
        if (a2 == 28 && !*(a1 + 20))
        {
          return 59;
        }

        goto LABEL_20;
    }

    v6 = prolog1;
  }

  else
  {
    if (a2 <= 15)
    {
      result = 0;
      if (a2 == 14)
      {
        return result;
      }

      goto LABEL_22;
    }

    if (a2 != 16)
    {
      if (a2 == 29)
      {
        result = 2;
LABEL_21:
        v6 = error;
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    v8 = (*(a5 + 48))(a5, a3 + 2 * *(a5 + 128), a4, "DOCTYPE");
    v6 = doctype0;
    if (!v8)
    {
LABEL_20:
      result = 0xFFFFFFFFLL;
      goto LABEL_21;
    }

    result = 3;
  }

LABEL_22:
  *a1 = v6;
  return result;
}

uint64_t prolog1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 <= 13)
  {
    if (a2 == 11)
    {
      return 55;
    }

    if (a2 == 13)
    {
      return 56;
    }

    goto LABEL_10;
  }

  if ((a2 - 14) < 2)
  {
    return 0;
  }

  if (a2 != 16)
  {
    if (a2 == 29)
    {
      *a1 = error;
      return 2;
    }

LABEL_10:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_16;
  }

  if ((*(a5 + 48))(a5, a3 + 2 * *(a5 + 128), a4, "DOCTYPE"))
  {
    *a1 = doctype0;
    return 3;
  }

LABEL_16:
  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t doctype0(uint64_t a1, int a2)
{
  v2 = doctype1;
  if (a2 == 15)
  {
    return 3;
  }

  result = 4;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t doctype1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = internalSubset;
  if (a2 > 17)
  {
    if (a2 == 18)
    {
      v11 = (*(a5 + 48))(a5, a3, a4, "SYSTEM");
      v6 = doctype3;
      if (v11 || (v12 = (*(a5 + 48))(a5, a3, a4, "PUBLIC"), v6 = doctype2, v12))
      {
        result = 3;
        goto LABEL_16;
      }

LABEL_15:
      result = 0xFFFFFFFFLL;
      v6 = error;
      goto LABEL_16;
    }

    if (a2 == 25)
    {
      result = 7;
      goto LABEL_16;
    }

LABEL_8:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_15;
  }

  if (a2 == 15)
  {
    return 3;
  }

  if (a2 != 17)
  {
    goto LABEL_8;
  }

  result = 8;
  v6 = prolog2;
LABEL_16:
  *a1 = v6;
  return result;
}

void internalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (name > 14)
  {
    if (name > 25)
    {
      if (name == 26)
      {
        *ctx = doctype5;
        return;
      }

      if (name == 28)
      {
        return;
      }
    }

    else
    {
      if (name == 15)
      {
        return;
      }

      if (name == 16)
      {
        v6 = v4;
        if ((*(v4 + 48))(v4, &ExternalID[2 * *(v4 + 128)], SystemID, "ENTITY"))
        {
          *ctx = entity0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "ATTLIST"))
        {
          *ctx = attlist0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "ELEMENT"))
        {
          *ctx = element0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "NOTATION"))
        {
          *ctx = notation0;
          return;
        }
      }
    }

    goto LABEL_22;
  }

  if (name != -4 && name != 11 && name != 13)
  {
LABEL_22:
    *ctx = error;
  }
}

uint64_t prolog2(uint64_t a1, int a2)
{
  HIDWORD(v3) = a2 - 11;
  LODWORD(v3) = a2 - 11;
  v2 = v3 >> 1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 0;
    }

    if (v2 == 9)
    {
      *a1 = error;
      return 2;
    }
  }

  else
  {
    if (!v2)
    {
      return 55;
    }

    if (v2 == 1)
    {
      return 56;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t doctype3(uint64_t a1, int a2)
{
  v2 = doctype4;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 27)
  {
    result = 5;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t doctype2(uint64_t a1, int a2)
{
  v2 = doctype3;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 27)
  {
    result = 6;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity0(uint64_t a1, int a2)
{
  v3 = entity1;
  result = 11;
  if (a2 != 15)
  {
    if (a2 == 22)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 18)
    {
      result = 9;
      v3 = entity2;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t attlist0(uint64_t a1, int a2)
{
  v2 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  result = 34;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t element0(uint64_t a1, int a2)
{
  v2 = element1;
  if (a2 == 15)
  {
    return 39;
  }

  result = 40;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t notation0(uint64_t a1, uint64_t a2)
{
  v2 = notation1;
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 18)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

uint64_t doctype5(uint64_t a1, int a2)
{
  v2 = prolog2;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 17)
  {
    result = 8;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity1(uint64_t a1, int a2)
{
  v2 = entity7;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 18)
  {
    result = 10;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 11;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 11;
      return 12;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "SYSTEM"))
      {
        v9 = entity4;
LABEL_13:
        *a1 = v9;
        return 11;
      }

      if ((*(a5 + 48))(a5, a3, a4, "PUBLIC"))
      {
        v9 = entity3;
        goto LABEL_13;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity7(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 11;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 11;
      return 12;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "SYSTEM"))
      {
        v9 = entity9;
LABEL_13:
        *a1 = v9;
        return 11;
      }

      if ((*(a5 + 48))(a5, a3, a4, "PUBLIC"))
      {
        v9 = entity8;
        goto LABEL_13;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity9(uint64_t a1, int a2)
{
  v2 = entity10;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 13;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity8(uint64_t a1, int a2)
{
  v2 = entity9;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 14;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t declClose(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
    v3 = internalSubset;
    if (!*(a1 + 20))
    {
      v3 = externalSubset1;
    }

    *a1 = v3;
    return *(a1 + 12);
  }

  if (a2 == 15)
  {
    return *(a1 + 12);
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity10(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 17)
  {
    v2 = externalSubset1;
    if (*(a1 + 20))
    {
      v2 = internalSubset;
    }

    v3 = 15;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

void externalSubset1(_DWORD *a1, const xmlChar *a2, const xmlChar *a3, const xmlChar *a4)
{
  if (a2 > 25)
  {
    if (a2 != 26)
    {
      if (a2 != 34)
      {
        if (a2 == 33)
        {
          *a1 = condSect0;
          return;
        }

        goto LABEL_14;
      }

      v4 = a1[4];
      if (v4)
      {
        a1[4] = v4 - 1;
        return;
      }
    }

LABEL_12:
    *a1 = error;
    return;
  }

  if (a2 == -4)
  {
    if (!a1[4])
    {
      return;
    }

    goto LABEL_12;
  }

  if (a2 != 15)
  {
LABEL_14:
    internalSubset(a1, a2, a3, a4);
  }
}

uint64_t condSect0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 != 18)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_10;
  }

  v9 = (*(a5 + 48))(a5, a3, a4, "INCLUDE");
  v10 = condSect1;
  if (!v9)
  {
    v11 = (*(a5 + 48))(a5, a3, a4, "IGNORE");
    v10 = condSect2;
    if (!v11)
    {
LABEL_10:
      result = 0xFFFFFFFFLL;
      v10 = error;
      goto LABEL_11;
    }
  }

  result = 0;
LABEL_11:
  *a1 = v10;
  return result;
}

uint64_t condSect1(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 == 25)
  {
    v2 = 0;
    *a1 = externalSubset1;
    ++*(a1 + 16);
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }

  return v2;
}

uint64_t condSect2(uint64_t a1, int a2)
{
  v2 = externalSubset1;
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 == 25)
  {
    v3 = 58;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

uint64_t entity4(uint64_t a1, int a2)
{
  v2 = entity5;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 13;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity3(uint64_t a1, int a2)
{
  v2 = entity4;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 14;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity5(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 != 18)
  {
    if (a2 == 17)
    {
      v6 = externalSubset1;
      if (*(a1 + 20))
      {
        v6 = internalSubset;
      }

      result = 15;
      goto LABEL_14;
    }

    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_13;
  }

  v8 = (*(a5 + 48))(a5, a3, a4, "NDATA");
  v6 = entity6;
  if (!v8)
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    v6 = error;
    goto LABEL_14;
  }

  result = 11;
LABEL_14:
  *a1 = v6;
  return result;
}

uint64_t entity6(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 18)
  {
    *a1 = declClose;
    *(a1 + 12) = 11;
    return 16;
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }
}

uint64_t attlist1(uint64_t a1, int a2)
{
  v2 = attlist2;
  if (a2 > 17)
  {
    v3 = 22;
    if (a2 == 18 || a2 == 41)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a2 == 15)
    {
      return 33;
    }

    if (a2 == 17)
    {
      v2 = externalSubset1;
      if (*(a1 + 20))
      {
        v2 = internalSubset;
      }

      v3 = 33;
      goto LABEL_12;
    }
  }

  v3 = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
LABEL_12:
    *a1 = v2;
    return v3;
  }

  return 59;
}

uint64_t attlist2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 33;
    case 23:
      v11 = attlist3;
LABEL_13:
      *a1 = v11;
      return 33;
    case 18:
      for (i = 0; i != 8; ++i)
      {
        if ((*(a5 + 48))(a5, a3, a4, attlist2_types[i]))
        {
          *a1 = attlist8;
          return (i + 23);
        }
      }

      if (!(*(a5 + 48))(a5, a3, a4, "NOTATION"))
      {
        break;
      }

      v11 = attlist5;
      goto LABEL_13;
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t attlist8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 27)
  {
    result = 37;
    goto LABEL_16;
  }

  if (a2 != 20)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_15;
  }

  v10 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "IMPLIED");
  v5 = attlist1;
  if (!v10)
  {
    v12 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "REQUIRED");
    v5 = attlist1;
    if (v12)
    {
      result = 36;
      goto LABEL_16;
    }

    v13 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "FIXED");
    v5 = attlist9;
    if (v13)
    {
      result = 33;
      goto LABEL_16;
    }

LABEL_15:
    result = 0xFFFFFFFFLL;
    v5 = error;
    goto LABEL_16;
  }

  result = 35;
LABEL_16:
  *a1 = v5;
  return result;
}

uint64_t attlist5(uint64_t a1, int a2)
{
  v3 = attlist6;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 23 || (result = 0xFFFFFFFFLL, v3 = error, a2 != 28) || *(a1 + 20))
    {
      *a1 = v3;
    }

    else
    {
      return 59;
    }
  }

  return result;
}

uint64_t attlist3(uint64_t a1, int a2)
{
  result = 31;
  v4 = attlist4;
  if ((a2 - 18) < 2)
  {
    goto LABEL_4;
  }

  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 41 || (result = 0xFFFFFFFFLL, v4 = error, a2 != 28) || *(a1 + 20))
  {
LABEL_4:
    *a1 = v4;
    return result;
  }

  return 59;
}

uint64_t attlist9(uint64_t a1, int a2)
{
  v2 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 27)
  {
    result = 38;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t attlist6(uint64_t a1, int a2)
{
  v2 = attlist7;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 18)
  {
    result = 32;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t attlist7(uint64_t a1, int a2)
{
  v3 = attlist8;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 24)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 21)
    {
      v3 = attlist6;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t attlist4(uint64_t a1, int a2)
{
  v3 = attlist8;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 24)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 21)
    {
      v3 = attlist3;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t element1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 39;
    case 23:
      *a1 = element2;
      *(a1 + 8) = 1;
      return 44;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "EMPTY"))
      {
        *a1 = declClose;
        *(a1 + 12) = 39;
        return 42;
      }

      if ((*(a5 + 48))(a5, a3, a4, "ANY"))
      {
        *a1 = declClose;
        *(a1 + 12) = 39;
        return 41;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 51;
  v7 = element7;
  if (a2 > 29)
  {
    if (a2 > 31)
    {
      if (a2 != 32)
      {
        if (a2 == 41)
        {
          goto LABEL_24;
        }

        goto LABEL_14;
      }

      result = 54;
    }

    else if (a2 == 30)
    {
      result = 53;
    }

    else
    {
      result = 52;
    }

    v7 = element7;
    goto LABEL_24;
  }

  if (a2 > 19)
  {
    if (a2 == 20)
    {
      v8 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "PCDATA");
      v7 = element3;
      if (!v8)
      {
LABEL_23:
        result = 0xFFFFFFFFLL;
        v7 = error;
        goto LABEL_24;
      }

      result = 43;
      goto LABEL_24;
    }

    if (a2 == 23)
    {
      *(a1 + 8) = 2;
      result = 44;
      v7 = element6;
      goto LABEL_24;
    }

LABEL_14:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_23;
  }

  if (a2 == 15)
  {
    return 39;
  }

  if (a2 != 18)
  {
    goto LABEL_14;
  }

LABEL_24:
  *a1 = v7;
  return result;
}

uint64_t element3(uint64_t a1, int a2)
{
  if (a2 > 23)
  {
    if (a2 == 36)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 46;
    }

    if (a2 == 24)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 45;
    }
  }

  else
  {
    if (a2 == 15)
    {
      return 39;
    }

    if (a2 == 21)
    {
      *a1 = element4;
      return 39;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element6(uint64_t a1, int a2)
{
  if (a2 <= 29)
  {
    switch(a2)
    {
      case 15:
        return 39;
      case 18:
        goto LABEL_11;
      case 23:
        ++*(a1 + 8);
        return 44;
    }
  }

  else
  {
    if (a2 <= 31)
    {
      *a1 = element7;
      if (a2 == 30)
      {
        return 53;
      }

      else
      {
        return 52;
      }
    }

    if (a2 == 32)
    {
      *a1 = element7;
      return 54;
    }

    if (a2 == 41)
    {
LABEL_11:
      *a1 = element7;
      return 51;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element7(uint64_t a1, int a2)
{
  if (a2 <= 34)
  {
    if (a2 == 15)
    {
      return 39;
    }

    if (a2 == 21)
    {
      *a1 = element6;
      return 49;
    }

    if (a2 != 24)
    {
      goto LABEL_17;
    }

    v4 = *(a1 + 8) - 1;
    *(a1 + 8) = v4;
    if (!v4)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
    }

    return 45;
  }

  else
  {
    if (a2 <= 36)
    {
      if (a2 == 35)
      {
        v5 = *(a1 + 8) - 1;
        *(a1 + 8) = v5;
        if (!v5)
        {
          *a1 = declClose;
          *(a1 + 12) = 39;
        }

        return 47;
      }

      else
      {
        v2 = *(a1 + 8) - 1;
        *(a1 + 8) = v2;
        if (!v2)
        {
          *a1 = declClose;
          *(a1 + 12) = 39;
        }

        return 46;
      }
    }

    if (a2 != 37)
    {
      if (a2 == 38)
      {
        *a1 = element6;
        return 50;
      }

LABEL_17:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      *a1 = error;
      return 0xFFFFFFFFLL;
    }

    v6 = *(a1 + 8) - 1;
    *(a1 + 8) = v6;
    if (!v6)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
    }

    return 48;
  }
}

uint64_t element4(uint64_t a1, int a2)
{
  v2 = element5;
  if (a2 == 15)
  {
    return 39;
  }

  result = 51;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t element5(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 15:
      return 39;
    case 21:
      *a1 = element4;
      return 39;
    case 36:
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 46;
    default:
      if (a2 != 28 || *(a1 + 20))
      {
        *a1 = error;
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 59;
      }
  }
}

uint64_t notation1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 != 18)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_10;
  }

  v9 = (*(a5 + 48))(a5, a3, a4, "SYSTEM");
  v10 = notation3;
  if (!v9)
  {
    v11 = (*(a5 + 48))(a5, a3, a4, "PUBLIC");
    v10 = notation2;
    if (!v11)
    {
LABEL_10:
      result = 0xFFFFFFFFLL;
      v10 = error;
      goto LABEL_11;
    }
  }

  result = 17;
LABEL_11:
  *a1 = v10;
  return result;
}

uint64_t notation3(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 27)
  {
    *a1 = declClose;
    *(a1 + 12) = 17;
    return 19;
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }
}

uint64_t notation2(uint64_t a1, int a2)
{
  v2 = notation4;
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 27)
  {
    result = 21;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t notation4(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 15:
      return 17;
    case 17:
      v3 = internalSubset;
      if (!*(a1 + 20))
      {
        v3 = externalSubset1;
      }

      *a1 = v3;
      return 20;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 17;
      return 19;
    default:
      if (a2 != 28 || *(a1 + 20))
      {
        *a1 = error;
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 59;
      }
  }
}

uint64_t doctype4(uint64_t a1, int a2)
{
  v2 = internalSubset;
  switch(a2)
  {
    case 15:
      return 3;
    case 25:
      v3 = 7;
      break;
    case 17:
      v3 = 8;
      v2 = prolog2;
      break;
    default:
      v3 = 0xFFFFFFFFLL;
      v2 = error;
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = v2;
  return v3;
}

uint64_t parserCreate(unsigned __int8 *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = (*(a2 + 8))(*a2, 984);
  if (!v8)
  {
    return v8;
  }

  *(v8 + 24) = *a2;
  v9 = v8 + 24;
  v10 = *(a2 + 8);
  *(v8 + 32) = v10;
  *(v8 + 48) = *(a2 + 24);
  *(v8 + 16) = 0;
  *(v8 + 72) = 0;
  *(v8 + 728) = 16;
  v11 = (v10)();
  *(v8 + 744) = v11;
  v12 = *(v8 + 24);
  if (!v11)
  {
    (*(v8 + 48))(v12, v8);
    return 0;
  }

  v13 = (*(v8 + 32))(v12, 1024);
  *(v8 + 96) = v13;
  if (!v13)
  {
LABEL_18:
    (*(v8 + 48))(*(v8 + 24), *(v8 + 744));
    (*(v8 + 48))(*(v8 + 24), v8);
    return 0;
  }

  *(v8 + 104) = v13 + 1024;
  v14 = a4;
  if (!a4)
  {
    v14 = (*(v8 + 32))(*(v8 + 24), 360);
    if (v14)
    {
      *(v14 + 160) = 0u;
      *(v14 + 176) = 0u;
      *(v14 + 192) = 0;
      *(v14 + 200) = v9;
      *(v14 + 208) = 0u;
      *(v14 + 224) = 0u;
      *(v14 + 240) = 0;
      *(v14 + 248) = v9;
      *(v14 + 8) = 0;
      *v14 = 0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 48) = 0;
      *(v14 + 32) = v9;
      *(v14 + 40) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      *(v14 + 88) = 0;
      *(v14 + 72) = v9;
      *(v14 + 80) = 0;
      *(v14 + 96) = 0;
      *(v14 + 104) = 0;
      *(v14 + 128) = 0;
      *(v14 + 112) = v9;
      *(v14 + 120) = 0;
      *(v14 + 136) = 0;
      *(v14 + 144) = 0;
      *(v14 + 152) = v9;
      *(v14 + 272) = 0;
      *(v14 + 264) = 0;
      *(v14 + 280) = 0;
      *(v14 + 288) = 0;
      *(v14 + 296) = v9;
      *(v14 + 304) = 0;
      *(v14 + 312) = 0;
      *(v14 + 320) = 0;
      *(v14 + 328) = 0u;
      *(v14 + 344) = 0u;
      *(v14 + 256) = 1;
      goto LABEL_8;
    }

    *(v8 + 680) = 0;
    (*(v8 + 48))(*(v8 + 24), *(v8 + 96));
    goto LABEL_18;
  }

LABEL_8:
  *(v8 + 680) = v14;
  *(v8 + 720) = 0;
  *(v8 + 704) = 0;
  *(v8 + 584) = 0;
  *(v8 + 896) = 0;
  *(v8 + 888) = 0;
  *(v8 + 256) = 0;
  *(v8 + 488) = 0;
  *(v8 + 900) = 33;
  *(v8 + 464) = 0;
  *(v8 + 456) = 0;
  *(v8 + 824) = 0;
  *(v8 + 792) = 0u;
  *(v8 + 808) = 0u;
  *(v8 + 752) = 0u;
  *(v8 + 768) = 0;
  *(v8 + 832) = v9;
  *(v8 + 872) = 0;
  *(v8 + 840) = 0u;
  *(v8 + 856) = 0u;
  *(v8 + 880) = v9;
  parserInit(v8, a1);
  if (a1 && !*(v8 + 456))
  {
    if (a4)
    {
      *(v8 + 680) = 0;
    }

    XML_ParserFree(v8);
    return 0;
  }

  if (a3)
  {
    *(v8 + 464) = 1;
    *(v8 + 448) = XmlGetUtf8InternalEncodingNS();
    *(v8 + 900) = *a3;
  }

  else
  {
    *(v8 + 448) = XmlGetUtf8InternalEncoding();
  }

  return v8;
}

XML_Bool XML_ParserReset(XML_Parser parser, const XML_Char *encoding)
{
  if (parser)
  {
    v2 = parser;
    if (*(parser + 113))
    {
      LOBYTE(parser) = 0;
      return parser;
    }

    v4 = *(parser + 87);
    if (v4)
    {
      v5 = *(parser + 88);
      do
      {
        v6 = v4;
        v4 = *v4;
        *v6 = v5;
        v7 = v6[10];
        if (v7)
        {
          v8 = *(parser + 90);
          do
          {
            v9 = v7;
            v7 = *(v7 + 8);
            *(v9 + 8) = v8;
            v8 = v9;
          }

          while (v7);
          *(parser + 90) = v9;
        }

        v6[10] = 0;
        v5 = v6;
      }

      while (v4);
      *(parser + 88) = v6;
    }

    v10 = *(parser + 72);
    if (v10)
    {
      v11 = *(parser + 73);
      do
      {
        v12 = v10;
        v10 = *(v10 + 16);
        *(v12 + 16) = v11;
        v11 = v12;
      }

      while (v10);
      *(parser + 73) = v12;
    }

    v13 = *(parser + 89);
    if (v13)
    {
      v14 = *(parser + 90);
      do
      {
        v15 = v13;
        v13 = *(v13 + 8);
        *(v15 + 8) = v14;
        v14 = v15;
      }

      while (v13);
      *(parser + 90) = v15;
    }

    (*(parser + 6))(*(parser + 3), *(parser + 59));
    v16 = *(v2 + 62);
    if (v16)
    {
      v16(*(v2 + 60));
    }

    v17 = *(v2 + 100);
    v18 = *(v2 + 99);
    if (v17)
    {
      if (!v18)
      {
        goto LABEL_28;
      }

      do
      {
        v19 = v18;
        v18 = *v18;
        *v19 = v17;
        v17 = v19;
      }

      while (v18);
    }

    else
    {
      v19 = *(v2 + 99);
    }

    *(v2 + 100) = v19;
LABEL_28:
    *(v2 + 99) = 0;
    *(v2 + 101) = 0;
    *(v2 + 103) = 0;
    *(v2 + 102) = 0;
    v20 = *(v2 + 106);
    v21 = *(v2 + 105);
    if (v20)
    {
      if (!v21)
      {
        goto LABEL_34;
      }

      do
      {
        v22 = v21;
        v21 = *v21;
        *v22 = v20;
        v20 = v22;
      }

      while (v21);
    }

    else
    {
      v22 = *(v2 + 105);
    }

    *(v2 + 106) = v22;
LABEL_34:
    *(v2 + 105) = 0;
    *(v2 + 107) = 0;
    *(v2 + 109) = 0;
    *(v2 + 108) = 0;
    (*(v2 + 6))(*(v2 + 3), *(v2 + 57));
    *(v2 + 57) = 0;
    parserInit(v2, encoding);
    v23 = *(v2 + 85);
    v24 = *(v23 + 40);
    if (v24)
    {
      v25 = &v24[*(v23 + 56)];
    }

    else
    {
      v25 = 0;
    }

    while (v24 != v25)
    {
      v27 = *v24++;
      v26 = v27;
      if (v27 && *(v26 + 28))
      {
        (*(v2 + 6))(*(v2 + 3), *(v26 + 32));
      }
    }

    hashTableClear(v23);
    *(v23 + 259) = 0;
    hashTableClear(v23 + 264);
    hashTableClear(v23 + 40);
    hashTableClear(v23 + 80);
    hashTableClear(v23 + 120);
    v29 = *(v23 + 160);
    v28 = *(v23 + 168);
    if (v28)
    {
      if (!v29)
      {
        goto LABEL_47;
      }

      do
      {
        v30 = v29;
        v29 = *v29;
        *v30 = v28;
        v28 = v30;
      }

      while (v29);
    }

    else
    {
      v30 = *(v23 + 160);
    }

    *(v23 + 168) = v30;
LABEL_47:
    *(v23 + 160) = 0;
    *(v23 + 184) = 0;
    *(v23 + 192) = 0;
    *(v23 + 176) = 0;
    v32 = *(v23 + 208);
    v31 = *(v23 + 216);
    if (v31)
    {
      if (!v32)
      {
LABEL_53:
        *(v23 + 208) = 0;
        *(v23 + 232) = 0;
        *(v23 + 240) = 0;
        *(v23 + 224) = 0;
        *(v23 + 304) = 0;
        *(v23 + 312) = 0;
        *(v23 + 320) = 0;
        (*(v2 + 6))(*(v2 + 3), *(v23 + 352));
        *(v23 + 352) = 0;
        (*(v2 + 6))(*(v2 + 3), *(v23 + 328));
        *(v23 + 328) = 0;
        *(v23 + 336) = 0;
        *(v23 + 344) = 0;
        LOBYTE(parser) = 1;
        *(v23 + 256) = 1;
        *(v23 + 258) = 0;
        return parser;
      }

      do
      {
        v33 = v32;
        v32 = *v32;
        *v33 = v31;
        v31 = v33;
      }

      while (v32);
    }

    else
    {
      v33 = *(v23 + 208);
    }

    *(v23 + 216) = v33;
    goto LABEL_53;
  }

  return parser;
}

char *parserInit(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 536) = prologInitProcessor;
  v4.n128_f64[0] = XmlPrologStateInit(a1 + 504);
  if (a2)
  {
    v5 = 0;
      ;
    }

    v7 = (*(a1 + 32))(*(a1 + 24), v5, v4);
    v8 = v7;
    if (v7)
    {
      memcpy(v7, a2, v5);
    }

    *(a1 + 456) = v8;
  }

  *(a1 + 688) = 0;
  XmlInitEncoding(a1 + 304, (a1 + 296), 0);
  *a1 = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = a1;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  v9 = *(a1 + 16);
  *(a1 + 56) = v9;
  *(a1 + 64) = v9;
  *(a1 + 776) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 658) = 0u;
  *(a1 + 592) = 1;
  *(a1 + 596) = 0;
  *(a1 + 696) = 0;
  *(a1 + 712) = 0;
  *(a1 + 732) = 0;
  *(a1 + 496) = 0;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0;
  *(a1 + 920) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 924) = 0u;
  *(a1 + 940) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 952) = getDebugLevel("EXPAT_ACCOUNTING_DEBUG");
  *(a1 + 956) = 1120403456;
  *(a1 + 960) = 0x800000;
  *(a1 + 968) = 0u;
  result = getDebugLevel("EXPAT_ENTITY_DEBUG");
  *(a1 + 980) = result;
  return result;
}

XML_Status XML_SetEncoding(XML_Parser parser, const XML_Char *encoding)
{
  if (parser)
  {
    v2 = parser;
    if ((*(parser + 228) | 2) == 3)
    {
      LODWORD(parser) = 0;
      return parser;
    }

    (*(parser + 6))(*(parser + 3), *(parser + 57));
    if (encoding)
    {
      v4 = 0;
        ;
      }

      parser = (*(v2 + 4))(*(v2 + 3), v4);
      v6 = parser;
      if (!parser)
      {
        goto LABEL_11;
      }

      memcpy(parser, encoding, v4);
    }

    else
    {
      v6 = 0;
    }

    LODWORD(parser) = 1;
LABEL_11:
    *(v2 + 57) = v6;
  }

  return parser;
}

uint64_t setContext(uint64_t a1, _BYTE *a2)
{
  v2 = 1;
  if (*a2)
  {
    v3 = a2;
    v5 = *(a1 + 680);
    v6 = a2;
    while (1)
    {
      v7 = *v3;
      if (!*v3)
      {
        break;
      }

      if (v7 == 61)
      {
        v10 = *(a1 + 816);
        v11 = v5 + 38;
        if (v10 == *(a1 + 824))
        {
          goto LABEL_28;
        }

        if (v10 == *(a1 + 808))
        {
          if (!poolGrow((a1 + 792)))
          {
            return 0;
          }

          v10 = *(a1 + 816);
        }

        *(a1 + 816) = v10 + 1;
        *v10 = 0;
        v12 = lookup(a1, v5 + 15, *(a1 + 824), 0x10uLL);
        if (!v12)
        {
          return 0;
        }

        v11 = v12;
        v13 = *(a1 + 824);
        if (*v12 == v13)
        {
          v14 = poolCopyString(v5 + 20, *v12);
          *v11 = v14;
          if (!v14)
          {
            return 0;
          }

          v13 = *(a1 + 824);
        }

        *(a1 + 816) = v13;
LABEL_28:
        while (1)
        {
          v17 = *++v3;
          v16 = v17;
          if (!v17 || v16 == 12)
          {
            break;
          }

          v15 = *(a1 + 816);
          if (v15 == *(a1 + 808))
          {
            if (!poolGrow((a1 + 792)))
            {
              return 0;
            }

            LOBYTE(v16) = *v3;
            v15 = *(a1 + 816);
          }

          *(a1 + 816) = v15 + 1;
          *v15 = v16;
        }

        v19 = *(a1 + 816);
        if (v19 == *(a1 + 808))
        {
          if (!poolGrow((a1 + 792)))
          {
            return 0;
          }

          v19 = *(a1 + 816);
        }

        *(a1 + 816) = v19 + 1;
        *v19 = 0;
        if (addBinding(a1, v11, 0, *(a1 + 824), (a1 + 712)))
        {
          return 0;
        }

        *(a1 + 816) = *(a1 + 824);
        if (*v3)
        {
          v6 = v3 + 1;
        }

        else
        {
          v6 = v3;
        }

        goto LABEL_40;
      }

      if (v7 == 12)
      {
        break;
      }

      v20 = *(a1 + 816);
      if (v20 == *(a1 + 808))
      {
        if (!poolGrow((a1 + 792)))
        {
          return 0;
        }

        LOBYTE(v7) = *v3;
        v20 = *(a1 + 816);
      }

      *(a1 + 816) = v20 + 1;
      *v20 = v7;
      ++v3;
LABEL_45:
      if (!*v6)
      {
        return 1;
      }
    }

    v8 = *(a1 + 816);
    if (v8 == *(a1 + 808))
    {
      if (!poolGrow((a1 + 792)))
      {
        return 0;
      }

      v8 = *(a1 + 816);
    }

    *(a1 + 816) = v8 + 1;
    *v8 = 0;
    v9 = lookup(a1, v5, *(a1 + 824), 0);
    if (v9)
    {
      *(v9 + 56) = 1;
    }

    if (*v3)
    {
      v6 = v3 + 1;
    }

    else
    {
      v6 = v3;
    }

    *(a1 + 816) = *(a1 + 824);
LABEL_40:
    v3 = v6;
    goto LABEL_45;
  }

  return v2;
}

void XML_ParserFree(XML_Parser parser)
{
  if (parser)
  {
    v2 = *(parser + 87);
    if (v2)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v2 = *(parser + 88);
      if (!v2)
      {
        break;
      }

      *(parser + 88) = 0;
      do
      {
LABEL_5:
        v3 = *v2;
        (*(parser + 6))(*(parser + 3), v2[8]);
        v4 = v2[10];
        if (v4)
        {
          do
          {
            v5 = *(v4 + 8);
            (*(parser + 6))(*(parser + 3), *(v4 + 32));
            (*(parser + 6))(*(parser + 3), v4);
            v4 = v5;
          }

          while (v5);
        }

        (*(parser + 6))(*(parser + 3), v2);
        v2 = v3;
      }

      while (v3);
    }

    v6 = *(parser + 72);
    if (v6)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v6 = *(parser + 73);
      if (!v6)
      {
        break;
      }

      *(parser + 73) = 0;
      do
      {
LABEL_12:
        v7 = *(v6 + 16);
        (*(parser + 6))(*(parser + 3));
        v6 = v7;
      }

      while (v7);
    }

    v8 = *(parser + 90);
    if (v8)
    {
      do
      {
        v9 = *(v8 + 8);
        (*(parser + 6))(*(parser + 3), *(v8 + 32));
        (*(parser + 6))(*(parser + 3), v8);
        v8 = v9;
      }

      while (v9);
    }

    v10 = *(parser + 89);
    if (v10)
    {
      do
      {
        v11 = *(v10 + 8);
        (*(parser + 6))(*(parser + 3), *(v10 + 32));
        (*(parser + 6))(*(parser + 3), v10);
        v10 = v11;
      }

      while (v11);
    }

    poolDestroy(parser + 99);
    poolDestroy(parser + 105);
    (*(parser + 6))(*(parser + 3), *(parser + 57));
    if (!*(parser + 920))
    {
      v12 = *(parser + 85);
      if (v12)
      {
        v13 = *(v12 + 40);
        if (v13)
        {
          v14 = &v13[*(v12 + 56)];
        }

        else
        {
          v14 = 0;
        }

        v15 = *(parser + 113);
        while (v13 != v14)
        {
          v17 = *v13++;
          v16 = v17;
          if (v17 && *(v16 + 28))
          {
            (*(parser + 6))(*(parser + 3), *(v16 + 32));
          }
        }

        hashTableDestroy(v12);
        hashTableDestroy((v12 + 264));
        hashTableDestroy((v12 + 40));
        hashTableDestroy((v12 + 80));
        hashTableDestroy((v12 + 120));
        poolDestroy((v12 + 160));
        poolDestroy((v12 + 208));
        if (!v15)
        {
          (*(parser + 6))(*(parser + 3), *(v12 + 352));
          (*(parser + 6))(*(parser + 3), *(v12 + 328));
        }

        (*(parser + 6))(*(parser + 3), v12);
      }
    }

    (*(parser + 6))(*(parser + 3), *(parser + 93));
    (*(parser + 6))(*(parser + 3), *(parser + 111));
    (*(parser + 6))(*(parser + 3), *(parser + 2));
    (*(parser + 6))(*(parser + 3), *(parser + 12));
    (*(parser + 6))(*(parser + 3), *(parser + 94));
    (*(parser + 6))(*(parser + 3), *(parser + 59));
    v18 = *(parser + 62);
    if (v18)
    {
      v18(*(parser + 60));
    }

    v19 = *(parser + 6);
    v20 = *(parser + 3);

    v19(v20, parser);
  }
}

void **poolDestroy(void **result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    do
    {
      v3 = *v2;
      result = (v1[5][3])(*v1[5]);
      v2 = v3;
    }

    while (v3);
  }

  v4 = v1[1];
  if (v4)
  {
    do
    {
      v5 = *v4;
      result = (v1[5][3])(*v1[5]);
      v4 = v5;
    }

    while (v5);
  }

  return result;
}

void XML_SetUserData(XML_Parser parser, void *userData)
{
  if (parser)
  {
    v3 = *parser;
    v2 = *(parser + 1);
    *parser = userData;
    if (v2 == v3)
    {
      *(parser + 1) = userData;
    }
  }
}

uint64_t poolCopyString(uint64_t *a1, char *a2)
{
  while (1)
  {
    v4 = a1[3];
    if (v4 == a1[2])
    {
      break;
    }

LABEL_4:
    v5 = *a2;
    a1[3] = (v4 + 1);
    *v4 = v5;
    if (!*a2++)
    {
      result = a1[4];
      a1[4] = a1[3];
      return result;
    }
  }

  if (poolGrow(a1))
  {
    v4 = a1[3];
    goto LABEL_4;
  }

  return 0;
}

void XML_SetElementHandler(XML_Parser parser, XML_StartElementHandler start, XML_EndElementHandler end)
{
  if (parser)
  {
    *(parser + 14) = start;
    *(parser + 15) = end;
  }
}

void XML_SetCharacterDataHandler(XML_Parser parser, XML_CharacterDataHandler handler)
{
  if (parser)
  {
    *(parser + 16) = handler;
  }
}

void XML_SetNamespaceDeclHandler(XML_Parser parser, XML_StartNamespaceDeclHandler start, XML_EndNamespaceDeclHandler end)
{
  if (parser)
  {
    *(parser + 26) = start;
    *(parser + 27) = end;
  }
}

void XML_SetUnknownEncodingHandler(XML_Parser parser, XML_UnknownEncodingHandler handler, void *encodingHandlerData)
{
  if (parser)
  {
    *(parser + 32) = handler;
    *(parser + 61) = encodingHandlerData;
  }
}

void XML_SetXmlDeclHandler(XML_Parser parser, XML_XmlDeclHandler xmldecl)
{
  if (parser)
  {
    *(parser + 36) = xmldecl;
  }
}

XML_Status XML_Parse(XML_Parser parser, const char *s, int len, int isFinal)
{
  if (!parser || len < 0)
  {
    if (!parser)
    {
      LODWORD(Buffer) = 0;
      return Buffer;
    }

    goto LABEL_10;
  }

  if (!s && len)
  {
LABEL_10:
    LODWORD(Buffer) = 0;
    v10 = 41;
    goto LABEL_11;
  }

  v8 = *(parser + 228);
  if (v8)
  {
    if (v8 == 2)
    {
      LODWORD(Buffer) = 0;
      v10 = 36;
      goto LABEL_11;
    }

    if (v8 == 3)
    {
      LODWORD(Buffer) = 0;
      v10 = 33;
LABEL_11:
      *(parser + 136) = v10;
      return Buffer;
    }
  }

  else if (!*(parser + 113))
  {
    LODWORD(Buffer) = startParsing(parser);
    if (!Buffer)
    {
      v10 = 1;
      goto LABEL_11;
    }
  }

  *(parser + 228) = 1;
  if (!len)
  {
    *(parser + 916) = isFinal;
    if (isFinal)
    {
      *(parser + 71) = *(parser + 7);
      *(parser + 11) = *(parser + 8);
      v11 = (*(parser + 67))(parser);
      *(parser + 136) = v11;
      if (v11)
      {
        LODWORD(Buffer) = 0;
        *(parser + 70) = *(parser + 69);
        *(parser + 67) = errorProcessor;
        return Buffer;
      }

      v12 = *(parser + 228);
      if (v12 >= 2)
      {
        if (v12 == 3)
        {
          v13 = *(parser + 71);
          v14 = *(parser + 7);
          (*(*(parser + 37) + 96))();
          *(parser + 71) = *(parser + 7);
          LODWORD(Buffer) = 2;
          return Buffer;
        }
      }

      else
      {
        *(parser + 228) = 2;
      }
    }

    LODWORD(Buffer) = 1;
    return Buffer;
  }

  Buffer = XML_GetBuffer(parser, len);
  if (Buffer)
  {
    memcpy(Buffer, s, len);

    LODWORD(Buffer) = XML_ParseBuffer(parser, len, isFinal);
  }

  return Buffer;
}

uint64_t startParsing(uint64_t a1)
{
  if (!*(a1 + 928))
  {
    __buf = 0;
    arc4random_buf(&__buf, 8uLL);
    *(a1 + 928) = __buf;
  }

  if (*(a1 + 464))
  {
    return setContext(a1, "xml=http://www.w3.org/XML/1998/namespace");
  }

  else
  {
    return 1;
  }
}

void *__cdecl XML_GetBuffer(void *parser, int len)
{
  if (parser)
  {
    v2 = parser;
    if (len < 0)
    {
LABEL_28:
      parser = 0;
LABEL_29:
      v4 = 1;
      goto LABEL_30;
    }

    v3 = *(parser + 228);
    if (v3 == 2)
    {
      parser = 0;
      v4 = 36;
      goto LABEL_30;
    }

    if (v3 == 3)
    {
      parser = 0;
      v4 = 33;
LABEL_30:
      *(v2 + 136) = v4;
      return parser;
    }

    v5 = *(parser + 9);
    if (v5)
    {
      v6 = *(parser + 8);
      v7 = v6 ? v5 - v6 : 0;
    }

    else
    {
      v7 = 0;
    }

    parser = *(parser + 8);
    if (v7 < len)
    {
      if (parser)
      {
        v8 = *(v2 + 7);
        if (v8)
        {
          v9 = parser - v8;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 + len;
      if (v9 + len < 0)
      {
        goto LABEL_28;
      }

      v11 = *(v2 + 7);
      if (v11)
      {
        v12 = *(v2 + 2);
        v13 = v12 ? v11 - v12 : 0;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13 >= 1024 ? 1024 : v13;
      if (v14 > (v10 ^ 0x7FFFFFFF))
      {
        goto LABEL_28;
      }

      v15 = v14 + v10;
      if (v5)
      {
        v16 = *(v2 + 2);
        if (v16)
        {
          v17 = v5 - v16;
        }

        else
        {
          v17 = 0;
        }

        if (v17 < v15)
        {
          if (v11)
          {
            LODWORD(v18) = v5 - v11;
            if (v5 != v11)
            {
              do
              {
LABEL_42:
                v18 = (2 * v18);
              }

              while (v18 < v15 && v18 > 0);
              if (v18 <= 0)
              {
                goto LABEL_28;
              }

              parser = (*(v2 + 4))(*(v2 + 3), v18);
              if (!parser)
              {
                goto LABEL_29;
              }

              v20 = parser;
              *(v2 + 9) = parser + v18;
              v21 = *(v2 + 7);
              if (v21)
              {
                v22 = (v21 - v14);
                v23 = *(v2 + 8);
                v24 = v23 - v21;
                if (!v23)
                {
                  v24 = 0;
                }

                memcpy(parser, v22, v24 + v14);
                (*(v2 + 6))(*(v2 + 3), *(v2 + 2));
                *(v2 + 2) = v20;
                v25 = *(v2 + 8);
                if (v25)
                {
                  v26 = *(v2 + 7);
                  v25 -= v26;
                  if (!v26)
                  {
                    v25 = 0;
                  }
                }

                v20 += v14;
                parser = &v20[v25];
                *(v2 + 8) = &v20[v25];
              }

              else
              {
                *(v2 + 8) = parser;
                *(v2 + 2) = parser;
              }

              goto LABEL_68;
            }
          }

LABEL_41:
          LODWORD(v18) = 1024;
          goto LABEL_42;
        }
      }

      else if (v15 > 0)
      {
        goto LABEL_41;
      }

      if (v11)
      {
        v27 = *(v2 + 2);
        v28 = v11 - v27;
        if (v27)
        {
          v29 = v11 - v27;
        }

        else
        {
          v29 = 0;
        }

        if (v29 <= v14)
        {
          goto LABEL_69;
        }

        if (!v27)
        {
          v28 = 0;
        }
      }

      else
      {
        if ((v13 & 0x80000000) == 0)
        {
LABEL_69:
          *(v2 + 71) = 0;
          *(v2 + 552) = 0u;
          return parser;
        }

        v11 = 0;
        v28 = 0;
        v27 = *(v2 + 2);
      }

      v30 = v28 - v14;
      memmove(v27, &v27[v30], parser + v14 - v11);
      v31 = *(v2 + 7);
      parser = (*(v2 + 8) - v30);
      *(v2 + 8) = parser;
      v20 = (v31 - v30);
LABEL_68:
      *(v2 + 7) = v20;
      goto LABEL_69;
    }
  }

  return parser;
}

XML_Status XML_ParseBuffer(XML_Parser parser, int len, int isFinal)
{
  if (parser)
  {
    v6 = *(parser + 228);
    if (v6)
    {
      if (v6 == 2)
      {
        v7 = XML_STATUS_ERROR;
        v8 = 36;
        goto LABEL_17;
      }

      if (v6 == 3)
      {
        v7 = XML_STATUS_ERROR;
        v8 = 33;
LABEL_17:
        *(parser + 136) = v8;
        return v7;
      }
    }

    else
    {
      if (!*(parser + 7))
      {
        v7 = XML_STATUS_ERROR;
        v8 = 42;
        goto LABEL_17;
      }

      if (!*(parser + 113) && !startParsing(parser))
      {
        v7 = XML_STATUS_ERROR;
        v8 = 1;
        goto LABEL_17;
      }
    }

    *(parser + 228) = 1;
    *(parser + 71) = *(parser + 7);
    v9 = *(parser + 8) + len;
    *(parser + 8) = v9;
    *(parser + 10) += len;
    *(parser + 11) = v9;
    *(parser + 916) = isFinal;
    v10 = (*(parser + 67))(parser);
    *(parser + 136) = v10;
    if (v10)
    {
      v7 = XML_STATUS_ERROR;
      *(parser + 70) = *(parser + 69);
      *(parser + 67) = errorProcessor;
      return v7;
    }

    v11 = *(parser + 228);
    if (v11 >= 2)
    {
      if (v11 == 3)
      {
        v7 = XML_STATUS_SUSPENDED;
LABEL_22:
        v13 = *(parser + 71);
        v14 = *(parser + 7);
        (*(*(parser + 37) + 96))();
        *(parser + 71) = *(parser + 7);
        return v7;
      }
    }

    else if (isFinal)
    {
      *(parser + 228) = 2;
      return 1;
    }

    v7 = XML_STATUS_OK;
    goto LABEL_22;
  }

  return 0;
}

XML_Error XML_GetErrorCode(XML_Parser parser)
{
  if (parser)
  {
    return *(parser + 136);
  }

  else
  {
    return 41;
  }
}

XML_Index XML_GetCurrentByteIndex(XML_Parser parser)
{
  if (parser && (v1 = *(parser + 69)) != 0)
  {
    return *(parser + 10) + v1 - *(parser + 11);
  }

  else
  {
    return -1;
  }
}

XML_Size XML_GetCurrentLineNumber(XML_Size parser)
{
  if (parser)
  {
    v1 = parser;
    v2 = *(parser + 552);
    if (v2)
    {
      if (v2 >= *(parser + 568))
      {
        (*(*(parser + 296) + 96))();
        v1[71] = v1[69];
      }
    }

    return v1[97] + 1;
  }

  return parser;
}

uint64_t reportDefault(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  if (*(a2 + 132))
  {
    v6 = a1[21];
    v7 = a1[1];
    v9 = (a4 - a3);

    return v6(v7, a3, v9);
  }

  else
  {
    if (a1[37] == a2)
    {
      v12 = a1 + 69;
      v13 = a1 + 70;
    }

    else
    {
      v12 = a1[72];
      v13 = v12 + 1;
    }

    do
    {
      v14 = a1[13];
      v16 = a1[12];
      v15 = (*(a2 + 112))(a2, &v17, a4, &v16, v14);
      *v13 = v17;
      result = (a1[21])(a1[1], a1[12], v16 - a1[12]);
      *v12 = v17;
    }

    while (v15 > 1);
  }

  return result;
}

const XML_LChar *__cdecl XML_ErrorString(XML_Error code)
{
  if (code - 1 > 0x2A)
  {
    return 0;
  }

  else
  {
    return off_1E81A15C0[code - 1];
  }
}

uint64_t prologInitProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = initializeEncoding(a1);
  if (!result)
  {
    *(a1 + 536) = prologProcessor;

    return prologProcessor(a1, a2, a3, a4);
  }

  return result;
}

char *getDebugLevel(const char *a1)
{
  v1 = getenv(a1);
  if (v1)
  {
    *__error() = 0;
    __endptr = v1;
    v1 = strtoul(v1, &__endptr, 10);
    if (*__error() || *__endptr)
    {
      v1 = 0;
      *__error() = 0;
    }
  }

  return v1;
}

uint64_t initializeEncoding(uint64_t a1)
{
  v2 = XmlInitEncodingNS;
  if (!*(a1 + 464))
  {
    v2 = XmlInitEncoding;
  }

  if (v2(a1 + 304, (a1 + 296), *(a1 + 456)))
  {
    return 0;
  }

  v4 = *(a1 + 456);

  return handleUnknownEncoding(a1, v4);
}

uint64_t prologProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2;
  v8 = (**(a1 + 296))();
  return doProlog(a1, *(a1 + 296), a2, a3, v8, v10, a4, *(a1 + 916) == 0, 1, 0);
}

uint64_t handleUnknownEncoding(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 256);
  if (!v2)
  {
    return 18;
  }

  memset(__b, 255, sizeof(__b));
  v14 = 0;
  v16 = 0;
  v15 = 0;
  if (!v2(*(a1 + 488), a2, __b))
  {
LABEL_8:
    if (v16)
    {
      v16(v14);
    }

    return 18;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = XmlSizeOfUnknownEncoding();
  v8 = v6(v5, v7);
  *(a1 + 472) = v8;
  if (v8)
  {
    v9 = XmlInitUnknownEncodingNS;
    if (!*(a1 + 464))
    {
      v9 = XmlInitUnknownEncoding;
    }

    v10 = v9();
    if (v10)
    {
      v11 = v10;
      result = 0;
      *(a1 + 480) = v14;
      *(a1 + 496) = v16;
      *(a1 + 296) = v11;
      return result;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v16(v14);
  }

  return 1;
}

uint64_t doProlog(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, char a9, int a10)
{
  v13 = a2;
  v14 = a1;
  v171 = a6;
  v15 = a1[85];
  if (a1[37] == a2)
  {
    v16 = a1 + 69;
    v17 = a1 + 70;
  }

  else
  {
    v16 = a1[72];
    v17 = v16 + 1;
  }

  v170 = v17;
  v165 = a1 + 80;
  v167 = a1 + 101;
  v168 = a1 + 99;
  while (2)
  {
    *v16 = a3;
    v18 = v171;
    *v170 = v171;
    if (a5 <= 0)
    {
      if (a8 && a5)
      {
        goto LABEL_365;
      }

      if (a5 > -5)
      {
        if (a5 > -2)
        {
          if (a5 == -1)
          {
            return 5;
          }

          *v16 = v18;
          return 4;
        }

        if (a5 == -4)
        {
          if (v13 == *(v14 + 296))
          {
            if (!*(v14 + 920))
            {
              return 3;
            }
          }

          else if (!*(*(v14 + 576) + 36))
          {
LABEL_365:
            v156 = 0;
            *a7 = a3;
            return v156;
          }

          if ((*(v14 + 504))(v14 + 504, 4294967292, a4, a4, v13) == -1)
          {
            return 29;
          }

          goto LABEL_365;
        }

        if (a5 == -2)
        {
          return 6;
        }

LABEL_17:
        a5 = -a5;
        v171 = a4;
        goto LABEL_18;
      }

      if (a5 != -15)
      {
        goto LABEL_17;
      }

      a5 = 15;
    }

LABEL_18:
    v19 = (*(v14 + 504))(v14 + 504, a5, a3);
    v20 = v19 > 0x39 || ((1 << v19) & 0x200000000000006) == 0;
    if (v20 && !accountingDiffTolerated(v14, a5, a3, v171, a10))
    {
      return 43;
    }

    v21 = 0;
    v22 = 1;
    switch(v19)
    {
      case 0xFFFFFFFF:
        if (a5 == 12)
        {
          v163 = 17;
        }

        else
        {
          v163 = 2;
        }

        if (a5 == 28)
        {
          return 10;
        }

        else
        {
          return v163;
        }

      case 0u:
        if (a5 != 14)
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 1u:
        v66 = v171;
        v67 = v14;
        v68 = 0;
        goto LABEL_189;
      case 2u:
        if (!*(v14 + 921))
        {
          goto LABEL_395;
        }

        v158 = *(v15 + 257);
        *(v15 + 257) = 1;
        if (!*(v14 + 924) || !*(v14 + 232))
        {
          goto LABEL_395;
        }

        v159 = lookup(v14, (v15 + 264), "#", 0x40uLL);
        if (!v159)
        {
          return 1;
        }

        v159[4] = *(v14 + 688);
        *(v15 + 259) = 0;
        v160 = v159[3];
        v161 = v159[5];
        if (!(*(v14 + 232))(*(v14 + 240), 0))
        {
          return 21;
        }

        if (*(v15 + 259))
        {
          if (!*(v15 + 258))
          {
            v162 = *(v14 + 224);
            if (v162)
            {
              if (!v162(*(v14 + 8)))
              {
                return 22;
              }
            }
          }
        }

        else
        {
          *(v15 + 257) = v158;
        }

LABEL_395:
        *(v14 + 536) = contentProcessor;
        return contentProcessor(v14, a3, a4, a7);
      case 3u:
        if (!*(v14 + 176))
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 4u:
        if (!*(v14 + 176))
        {
          goto LABEL_204;
        }

        v110 = poolStoreString(v168, v13, a3, v171);
        *(v14 + 608) = v110;
        if (!v110)
        {
          return 1;
        }

        v22 = 0;
        *(v14 + 824) = *(v14 + 816);
        *(v14 + 624) = 0;
LABEL_204:
        *(v14 + 616) = 0;
        goto LABEL_247;
      case 5u:
        *(v14 + 921) = 0;
        *(v15 + 257) = 1;
        if (*(v14 + 176))
        {
          v106 = poolStoreString(v168, v13, a3 + *(v13 + 128), v171 - *(v13 + 128));
          *(v14 + 616) = v106;
          if (!v106)
          {
            return 1;
          }

          v22 = 0;
          *(v14 + 824) = *(v14 + 816);
        }

        else
        {
          *(v14 + 616) = "#";
        }

        if (!*(v15 + 258) && !*(v14 + 924))
        {
          v134 = *(v14 + 224);
          if (v134)
          {
            if (!v134(*(v14 + 8)))
            {
              return 22;
            }
          }
        }

        if (*(v14 + 600))
        {
          goto LABEL_284;
        }

        v135 = lookup(v14, (v15 + 264), "#", 0x40uLL);
        *(v14 + 600) = v135;
        if (!v135)
        {
          return 1;
        }

        *(v135 + 5) = 0;
LABEL_284:
        if (!*(v15 + 256) || !*(v14 + 600))
        {
          goto LABEL_247;
        }

        v136 = poolStoreString((v15 + 160), v13, a3 + *(v13 + 128), v171 - *(v13 + 128));
        v137 = *(v14 + 600);
        *(v137 + 24) = v136;
        if (!v136)
        {
          return 1;
        }

        *(v137 + 32) = *(v14 + 688);
        *(v15 + 192) = *(v15 + 184);
        if (v19 == 13)
        {
          goto LABEL_288;
        }

        goto LABEL_247;
      case 6u:
        *(v14 + 921) = 0;
        v111 = lookup(v14, (v15 + 264), "#", 0x40uLL);
        *(v14 + 600) = v111;
        v156 = 1;
        if (!v111)
        {
          return v156;
        }

        *(v15 + 257) = 1;
        if (*(v14 + 176))
        {
          if (!(*(v13 + 104))(v13, a3, v171, v16))
          {
            return 32;
          }

          v112 = poolStoreString(v168, v13, a3 + *(v13 + 128), v171 - *(v13 + 128));
          if (!v112)
          {
            return v156;
          }

          v113 = v112;
          normalizePublicId(v112);
          v22 = 0;
          *(v14 + 824) = *(v14 + 816);
          *(v14 + 624) = v113;
        }

        else
        {
LABEL_212:
          if (!(*(v13 + 104))(v13, a3, v171, v16))
          {
            return 32;
          }
        }

        if (!*(v15 + 256) || !*(v14 + 600))
        {
          goto LABEL_247;
        }

        v114 = poolStoreString((v15 + 160), v13, a3 + *(v13 + 128), v171 - *(v13 + 128));
        if (!v114)
        {
          return 1;
        }

        v115 = v114;
        normalizePublicId(v114);
        *(*(v14 + 600) + 40) = v115;
        *(v15 + 192) = *(v15 + 184);
        if (v19 != 14)
        {
          goto LABEL_247;
        }

LABEL_288:
        if (!*(v14 + 280))
        {
          goto LABEL_247;
        }

        goto LABEL_330;
      case 7u:
        v117 = *(v14 + 176);
        if (!v117)
        {
          goto LABEL_328;
        }

        v117(*(v14 + 8), *(v14 + 608), *(v14 + 616), *(v14 + 624), 1);
        *(v14 + 608) = 0;
        v118 = *(v14 + 800);
        v36 = *(v14 + 792);
        if (!v118)
        {
          goto LABEL_273;
        }

        if (!v36)
        {
          goto LABEL_275;
        }

        do
        {
          v37 = v36;
          v36 = *v36;
          *v37 = v118;
          v118 = v37;
        }

        while (v36);
        goto LABEL_274;
      case 8u:
        if (a9 != 1)
        {
          return 4;
        }

        v82 = *(v14 + 608);
        if (!v82)
        {
          goto LABEL_313;
        }

        (*(v14 + 176))(*(v14 + 8), v82, *(v14 + 616), *(v14 + 624), 0);
        v83 = *(v14 + 800);
        v84 = *(v14 + 792);
        if (v83)
        {
          if (!v84)
          {
            goto LABEL_312;
          }

          do
          {
            v85 = v84;
            v84 = *v84;
            *v85 = v83;
            v83 = v85;
          }

          while (v84);
        }

        else
        {
          v85 = *(v14 + 792);
        }

        *(v14 + 800) = v85;
LABEL_312:
        v22 = 0;
        *v168 = 0;
        v167[1] = 0;
        v167[2] = 0;
        *v167 = 0;
LABEL_313:
        if (!*(v14 + 616) && !*(v14 + 921))
        {
          goto LABEL_346;
        }

        v146 = *(v15 + 257);
        *(v15 + 257) = 1;
        if (!*(v14 + 924) || !*(v14 + 232))
        {
          goto LABEL_345;
        }

        v147 = lookup(v14, (v15 + 264), "#", 0x40uLL);
        if (!v147)
        {
          return 1;
        }

        if (*(v14 + 921))
        {
          v148 = *(v14 + 688);
          v147[4] = v148;
        }

        else
        {
          v148 = v147[4];
        }

        *(v15 + 259) = 0;
        if (!(*(v14 + 232))(*(v14 + 240), 0, v148, v147[3], v147[5]))
        {
          return 21;
        }

        if (*(v15 + 259))
        {
          if (!*(v15 + 258))
          {
            v154 = *(v14 + 224);
            if (v154)
            {
              if (!v154(*(v14 + 8)))
              {
                return 22;
              }
            }
          }
        }

        else if (!*(v14 + 616))
        {
          *(v15 + 257) = v146;
        }

LABEL_345:
        *(v14 + 921) = 0;
LABEL_346:
        v155 = *(v14 + 184);
        if (!v155)
        {
          goto LABEL_247;
        }

        v155(*(v14 + 8));
        goto LABEL_330;
      case 9u:
        if ((*(v13 + 88))(v13, a3, v171))
        {
          goto LABEL_254;
        }

        if (!*(v15 + 256))
        {
          goto LABEL_253;
        }

        v119 = poolStoreString((v15 + 160), v13, a3, v171);
        if (!v119)
        {
          return 1;
        }

        v120 = v119;
        v121 = lookup(v14, v15, v119, 0x40uLL);
        *(v14 + 600) = v121;
        if (!v121)
        {
          return 1;
        }

        if (*v121 != v120)
        {
LABEL_253:
          *(v15 + 184) = *(v15 + 192);
LABEL_254:
          *(v14 + 600) = 0;
          goto LABEL_328;
        }

        v122 = 0;
        *(v15 + 192) = *(v15 + 184);
        *(v121 + 5) = 0;
        *(v121 + 57) = 0;
        if (!*(v14 + 904))
        {
LABEL_348:
          v122 = *(v14 + 576) == 0;
        }

LABEL_349:
        *(v121 + 58) = v122;
LABEL_350:
        if (!*(v14 + 280))
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 0xAu:
        if (!*(v15 + 256))
        {
          goto LABEL_253;
        }

        v125 = poolStoreString((v15 + 160), v13, a3, v171);
        if (!v125)
        {
          return 1;
        }

        v126 = v125;
        v121 = lookup(v14, (v15 + 264), v125, 0x40uLL);
        *(v14 + 600) = v121;
        if (!v121)
        {
          return 1;
        }

        if (*v121 != v126)
        {
          goto LABEL_253;
        }

        *(v15 + 192) = *(v15 + 184);
        *(v121 + 5) = 0;
        *(v121 + 57) = 1;
        if (!*(v14 + 904))
        {
          goto LABEL_348;
        }

        v122 = 0;
        goto LABEL_349;
      case 0xBu:
        if (!*(v15 + 256))
        {
          goto LABEL_328;
        }

        goto LABEL_350;
      case 0xCu:
        if (!*(v15 + 256))
        {
          goto LABEL_328;
        }

        v156 = storeEntityValue(v14, v13, a3 + *(v13 + 128), v171 - *(v13 + 128), 2);
        v78 = *(v14 + 600);
        v79 = *(v15 + 240);
        if (v78)
        {
          *(v78 + 8) = v79;
          v80 = *(v15 + 232);
          *(v78 + 16) = v80 - v79;
          *(v15 + 240) = v80;
          if (*(v14 + 280))
          {
            *v170 = a3;
            (*(v14 + 280))(*(v14 + 8), **(v14 + 600), *(*(v14 + 600) + 57), *(*(v14 + 600) + 8), *(*(v14 + 600) + 16), *(v14 + 688), 0, 0, 0);
            v22 = 0;
          }
        }

        else
        {
          *(v15 + 232) = v79;
        }

        if (v156)
        {
          return v156;
        }

        goto LABEL_247;
      case 0xDu:
        goto LABEL_284;
      case 0xEu:
        goto LABEL_212;
      case 0xFu:
        if (!*(v15 + 256) || !*(v14 + 600) || !*(v14 + 280))
        {
          goto LABEL_328;
        }

        *v170 = a3;
        (*(v14 + 280))(*(v14 + 8), **(v14 + 600), *(*(v14 + 600) + 57), 0, 0, *(*(v14 + 600) + 32), *(*(v14 + 600) + 24), *(*(v14 + 600) + 40), 0);
        goto LABEL_330;
      case 0x10u:
        if (!*(v15 + 256) || !*(v14 + 600))
        {
          goto LABEL_328;
        }

        v105 = poolStoreString((v15 + 160), v13, a3, v171);
        *(*(v14 + 600) + 48) = v105;
        if (!v105)
        {
          return 1;
        }

        *(v15 + 192) = *(v15 + 184);
        if (*(v14 + 192))
        {
          *v170 = a3;
          (*(v14 + 192))(*(v14 + 8), **(v14 + 600), *(*(v14 + 600) + 32), *(*(v14 + 600) + 24), *(*(v14 + 600) + 40), *(*(v14 + 600) + 48));
          goto LABEL_330;
        }

        if (!*(v14 + 280))
        {
          goto LABEL_328;
        }

        *v170 = a3;
        (*(v14 + 280))(*(v14 + 8), **(v14 + 600), 0, 0, 0, *(*(v14 + 600) + 32), *(*(v14 + 600) + 24), *(*(v14 + 600) + 40), *(*(v14 + 600) + 48));
        goto LABEL_330;
      case 0x11u:
        if (!*(v14 + 200))
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 0x12u:
        *v165 = 0;
        v165[1] = 0;
        if (!*(v14 + 200))
        {
          goto LABEL_328;
        }

        v109 = poolStoreString(v168, v13, a3, v171);
        *v165 = v109;
        if (v109)
        {
          goto LABEL_200;
        }

        return 1;
      case 0x13u:
        if (!*v165 || !*(v14 + 200))
        {
          goto LABEL_240;
        }

        v123 = poolStoreString(v168, v13, a3 + *(v13 + 128), v171 - *(v13 + 128));
        if (!v123)
        {
          return 1;
        }

        *v170 = a3;
        (*(v14 + 200))(*(v14 + 8), *(v14 + 640), *(v14 + 688), v123, *(v14 + 648));
        v22 = 0;
LABEL_240:
        v124 = *(v14 + 800);
        v45 = *(v14 + 792);
        if (!v124)
        {
          goto LABEL_244;
        }

        if (!v45)
        {
          goto LABEL_246;
        }

        do
        {
          v46 = v45;
          v45 = *v45;
          *v46 = v124;
          v124 = v46;
        }

        while (v45);
        goto LABEL_245;
      case 0x14u:
        if (*(v14 + 648) && *(v14 + 200))
        {
          *v170 = a3;
          (*(v14 + 200))(*(v14 + 8), *(v14 + 640), *(v14 + 688), 0, *(v14 + 648));
          v22 = 0;
        }

        v81 = *(v14 + 800);
        v45 = *(v14 + 792);
        if (!v81)
        {
          goto LABEL_244;
        }

        if (!v45)
        {
          goto LABEL_246;
        }

        do
        {
          v46 = v45;
          v45 = *v45;
          *v46 = v81;
          v81 = v46;
        }

        while (v45);
        goto LABEL_245;
      case 0x15u:
        if (!(*(v13 + 104))(v13, a3, v171, v16))
        {
          return 32;
        }

        if (!*v165)
        {
          goto LABEL_328;
        }

        v107 = poolStoreString(v168, v13, a3 + *(v13 + 128), v171 - *(v13 + 128));
        if (!v107)
        {
          return 1;
        }

        v108 = v107;
        normalizePublicId(v107);
        *(v14 + 648) = v108;
LABEL_200:
        *(v14 + 824) = *(v14 + 816);
        goto LABEL_330;
      case 0x16u:
        AttributeId = getAttributeId(v14, v13, a3, v171);
        *(v14 + 664) = AttributeId;
        if (!AttributeId)
        {
          return 1;
        }

        *(v14 + 672) = 0;
        *(v14 + 632) = 0;
        goto LABEL_257;
      case 0x17u:
        *(v14 + 672) = 1;
        v61 = "CDATA";
        goto LABEL_256;
      case 0x18u:
        *(v14 + 673) = 1;
        v61 = "ID";
        goto LABEL_256;
      case 0x19u:
        v61 = "IDREF";
        goto LABEL_256;
      case 0x1Au:
        v61 = "IDREFS";
        goto LABEL_256;
      case 0x1Bu:
        v61 = "ENTITY";
        goto LABEL_256;
      case 0x1Cu:
        v61 = "ENTITIES";
        goto LABEL_256;
      case 0x1Du:
        v61 = "NMTOKEN";
        goto LABEL_256;
      case 0x1Eu:
        v61 = "NMTOKENS";
LABEL_256:
        *(v14 + 632) = v61;
        goto LABEL_257;
      case 0x1Fu:
      case 0x20u:
        if (!*(v15 + 256) || !*(v14 + 272))
        {
          goto LABEL_328;
        }

        v23 = "(";
        if (v19 == 32)
        {
          v23 = "NOTATION(";
        }

        if (*(v14 + 632))
        {
          v24 = "|";
        }

        else
        {
          v24 = v23;
        }

        v25 = *v24;
        if (!*v24)
        {
          goto LABEL_38;
        }

        v26 = (v24 + 1);
        do
        {
          v27 = *(v14 + 816);
          if (v27 == *(v14 + 808))
          {
            if (!poolGrow(v168))
            {
              return 1;
            }

            v27 = *(v14 + 816);
          }

          *(v14 + 816) = v27 + 1;
          *v27 = v25;
          v28 = *v26++;
          v25 = v28;
        }

        while (v28);
LABEL_38:
        if (!*(v14 + 824) || !poolAppend(v168, v13, a3, v171))
        {
          return 1;
        }

        *(v14 + 632) = *(v14 + 824);
        goto LABEL_330;
      case 0x21u:
        goto LABEL_257;
      case 0x22u:
        ElementType = getElementType(v14, v13, a3, v171);
        *(v14 + 656) = ElementType;
        if (!ElementType)
        {
          return 1;
        }

LABEL_257:
        if (!*(v15 + 256) || !*(v14 + 272))
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      case 0x23u:
      case 0x24u:
        if (!*(v15 + 256))
        {
          goto LABEL_83;
        }

        if (!defineAttribute(*(v14 + 656), *(v14 + 664), *(v14 + 672), *(v14 + 673), 0, v14))
        {
          return 1;
        }

        if (!*(v14 + 272))
        {
          goto LABEL_83;
        }

        v40 = *(v14 + 632);
        if (!v40)
        {
          goto LABEL_83;
        }

        v41 = *v40;
        if (v41 != 40 && (v41 != 78 || v40[1] != 79))
        {
          goto LABEL_82;
        }

        v42 = *(v14 + 816);
        if (v42 != *(v14 + 808))
        {
          goto LABEL_78;
        }

        if (!poolGrow(v168))
        {
          return 1;
        }

        v42 = *(v14 + 816);
LABEL_78:
        *(v14 + 816) = v42 + 1;
        *v42 = 41;
        v43 = *(v14 + 816);
        if (v43 != *(v14 + 808))
        {
          goto LABEL_81;
        }

        if (!poolGrow(v168))
        {
          return 1;
        }

        v43 = *(v14 + 816);
LABEL_81:
        *(v14 + 816) = v43 + 1;
        *v43 = 0;
        *(v14 + 632) = *(v14 + 824);
        *(v14 + 824) = *(v14 + 816);
LABEL_82:
        *v170 = a3;
        (*(v14 + 272))(*(v14 + 8), **(v14 + 656), **(v14 + 664), *(v14 + 632), 0, v19 == 36);
        v22 = 0;
LABEL_83:
        v44 = *(v14 + 800);
        v45 = *(v14 + 792);
        if (v44)
        {
          if (!v45)
          {
            goto LABEL_246;
          }

          do
          {
            v46 = v45;
            v45 = *v45;
            *v46 = v44;
            v44 = v46;
          }

          while (v45);
        }

        else
        {
LABEL_244:
          v46 = v45;
        }

LABEL_245:
        *(v14 + 800) = v46;
LABEL_246:
        *v168 = 0;
        v167[1] = 0;
        v167[2] = 0;
        *v167 = 0;
        goto LABEL_247;
      case 0x25u:
      case 0x26u:
        if (!*(v15 + 256))
        {
          goto LABEL_328;
        }

        v29 = storeAttributeValue(v14, v13, *(v14 + 672), a3 + *(v13 + 128), v171 - *(v13 + 128), (v15 + 160), 2);
        if (v29)
        {
          return v29;
        }

        v30 = *(v15 + 192);
        *(v15 + 192) = *(v15 + 184);
        if (!defineAttribute(*(v14 + 656), *(v14 + 664), *(v14 + 672), 0, v30, v14))
        {
          return 1;
        }

        if (!*(v14 + 272))
        {
          goto LABEL_328;
        }

        v31 = *(v14 + 632);
        if (!v31)
        {
          goto LABEL_328;
        }

        v32 = *v31;
        if (v32 != 40 && (v32 != 78 || v31[1] != 79))
        {
          goto LABEL_56;
        }

        v33 = *(v14 + 816);
        if (v33 != *(v14 + 808))
        {
          goto LABEL_52;
        }

        if (!poolGrow(v168))
        {
          return 1;
        }

        v33 = *(v14 + 816);
LABEL_52:
        *(v14 + 816) = v33 + 1;
        *v33 = 41;
        v34 = *(v14 + 816);
        if (v34 != *(v14 + 808))
        {
          goto LABEL_55;
        }

        if (!poolGrow(v168))
        {
          return 1;
        }

        v34 = *(v14 + 816);
LABEL_55:
        *(v14 + 816) = v34 + 1;
        *v34 = 0;
        *(v14 + 632) = *(v14 + 824);
        *(v14 + 824) = *(v14 + 816);
LABEL_56:
        *v170 = a3;
        (*(v14 + 272))(*(v14 + 8), **(v14 + 656), **(v14 + 664), *(v14 + 632), v30, v19 == 38);
        v35 = *(v14 + 800);
        v36 = *(v14 + 792);
        if (v35)
        {
          if (!v36)
          {
            goto LABEL_275;
          }

          do
          {
            v37 = v36;
            v36 = *v36;
            *v37 = v35;
            v35 = v37;
          }

          while (v36);
        }

        else
        {
LABEL_273:
          v37 = v36;
        }

LABEL_274:
        *(v14 + 800) = v37;
LABEL_275:
        *v168 = 0;
        v167[1] = 0;
        v167[2] = 0;
        *v167 = 0;
        goto LABEL_330;
      case 0x27u:
        goto LABEL_327;
      case 0x28u:
        if (!*(v14 + 264))
        {
          goto LABEL_328;
        }

        v52 = getElementType(v14, v13, a3, v171);
        *(v14 + 656) = v52;
        v156 = 1;
        if (!v52)
        {
          return v156;
        }

        *(v15 + 344) = 0;
        *(v15 + 320) = 1;
        goto LABEL_330;
      case 0x29u:
      case 0x2Au:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        if (!*(v14 + 264))
        {
          goto LABEL_67;
        }

        v38 = (*(v14 + 32))(*(v14 + 24), 32);
        v156 = 1;
        if (!v38)
        {
          return v156;
        }

        *(v38 + 24) = 0;
        if (v19 == 41)
        {
          v39 = 2;
        }

        else
        {
          v39 = 1;
        }

        *(v38 + 12) = 0;
        *(v38 + 4) = 0;
        *v38 = v39;
        *v170 = a3;
        (*(v14 + 264))(*(v14 + 8), **(v14 + 656), v38);
        v22 = 0;
LABEL_67:
        *(v15 + 320) = 0;
        goto LABEL_247;
      case 0x2Bu:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        v127 = *(v15 + 328);
        v128 = 32 * *(*(v15 + 352) + 4 * *(v15 + 348) - 4);
        v129 = 3;
        goto LABEL_326;
      case 0x2Cu:
        v53 = *(v14 + 896);
        if (*(v14 + 512) < v53)
        {
          goto LABEL_323;
        }

        if (v53)
        {
          if ((v53 & 0x80000000) != 0)
          {
            return 1;
          }

          v54 = *(v14 + 40);
          v55 = *(v14 + 24);
          v56 = *(v14 + 888);
          *(v14 + 896) = 2 * v53;
          v57 = v54(v55, v56);
          if (!v57)
          {
            *(v14 + 896) >>= 1;
            return 1;
          }

          *(v14 + 888) = v57;
          v58 = *(v15 + 352);
          if (v58)
          {
            v59 = (*(v14 + 40))(*(v14 + 24), v58, 4 * *(v14 + 896));
            if (!v59)
            {
              return 1;
            }

            *(v15 + 352) = v59;
          }

          goto LABEL_323;
        }

        v149 = *(v14 + 24);
        v150 = *(v14 + 32);
        *(v14 + 896) = 32;
        v151 = v150(v149, 32);
        *(v14 + 888) = v151;
        if (v151)
        {
LABEL_323:
          *(*(v14 + 888) + *(v14 + 512)) = 0;
          if (!*(v15 + 320))
          {
            goto LABEL_328;
          }

          ScaffoldPart = nextScaffoldPart(v14);
          if ((ScaffoldPart & 0x80000000) != 0)
          {
            return 1;
          }

          *(*(v15 + 352) + 4 * (*(v15 + 348))++) = ScaffoldPart;
          v127 = *(v15 + 328);
          v128 = 32 * ScaffoldPart;
          v129 = 6;
LABEL_326:
          *(v127 + v128) = v129;
LABEL_327:
          if (!*(v14 + 264))
          {
LABEL_328:
            if (*(v14 + 168))
            {
              reportDefault(v14, v13, a3, v171);
            }
          }

LABEL_330:
          v153 = *(v14 + 912);
          if (v153 == 2)
          {
            return 35;
          }

          if (v153 == 3)
          {
            v156 = 0;
            *a7 = v171;
            return v156;
          }

          a3 = v171;
          a5 = (*v13)(v13, v171, a4, &v171);
          continue;
        }

        *(v14 + 896) = 0;
        return 1;
      case 0x2Du:
        goto LABEL_165;
      case 0x2Eu:
        v21 = 2;
        goto LABEL_165;
      case 0x2Fu:
        v21 = 1;
        goto LABEL_165;
      case 0x30u:
        v21 = 3;
LABEL_165:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        v86 = *(v14 + 264);
        v22 = v86 == 0;
        v87 = *(v15 + 348) - 1;
        *(v15 + 348) = v87;
        *(*(v15 + 328) + 32 * *(*(v15 + 352) + 4 * v87) + 4) = v21;
        if (v87)
        {
          goto LABEL_247;
        }

        if (!v86)
        {
          goto LABEL_180;
        }

        v88 = *(v14 + 680);
        v89 = (*(v14 + 32))(*(v14 + 24), *(v88 + 336) + 32 * *(v88 + 344));
        if (!v89)
        {
          return 1;
        }

        v90 = *(v88 + 344);
        *(v89 + 16) = 0;
        if (v90)
        {
          v91 = (v89 + 32 * v90);
          v92 = v89 + 32;
          v93 = v89;
          v94 = v91;
          do
          {
            v95 = *(v93 + 16);
            v96 = *(v88 + 328);
            v97 = *(v96 + 32 * v95);
            *v93 = v97;
            v98 = v96 + 32 * v95;
            if (v97 == 4)
            {
              *(v93 + 8) = v94;
              v99 = *(v98 + 8);
              do
              {
                v100 = *v99++;
                *v94++ = v100;
              }

              while (v100);
              *(v93 + 16) = 0;
              *(v93 + 24) = 0;
            }

            else
            {
              *(v93 + 8) = 0;
              v101 = *(v98 + 24);
              *(v93 + 16) = v101;
              *(v93 + 24) = v92;
              if (v101)
              {
                v102 = 0;
                v103 = (v98 + 16);
                do
                {
                  v104 = *v103;
                  *(v92 + 16) = v104;
                  v92 += 32;
                  ++v102;
                  v103 = (v96 + 32 * v104 + 28);
                }

                while (v102 < *(v93 + 16));
              }
            }

            v93 += 32;
          }

          while (v93 < v91);
        }

        *v170 = a3;
        (*(v14 + 264))(*(v14 + 8), **(v14 + 656), v89);
LABEL_180:
        *(v15 + 320) = 0;
        *(v15 + 336) = 0;
        goto LABEL_247;
      case 0x31u:
        v62 = *(v14 + 888);
        v63 = *(v14 + 512);
        if (*(v62 + v63) == 44)
        {
          return 2;
        }

        if (*(v62 + v63))
        {
          v64 = 1;
        }

        else
        {
          v64 = *(v15 + 320) == 0;
        }

        if (!v64)
        {
          v65 = (*(v15 + 328) + 32 * *(*(v15 + 352) + 4 * *(v15 + 348) - 4));
          if (*v65 != 3)
          {
            *v65 = 5;
            v22 = *(v14 + 264) == 0;
          }
        }

        *(v62 + v63) = 124;
        goto LABEL_247;
      case 0x32u:
        v130 = *(v14 + 888);
        v131 = *(v14 + 512);
        if (*(v130 + v131) == 124)
        {
          return 2;
        }

        *(v130 + v131) = 44;
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0x33u:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        v22 = 0;
        v60 = v171;
        goto LABEL_130;
      case 0x34u:
        v22 = 2;
        goto LABEL_113;
      case 0x35u:
        goto LABEL_113;
      case 0x36u:
        v22 = 3;
LABEL_113:
        if (!*(v15 + 320))
        {
          goto LABEL_328;
        }

        v60 = v171 - *(v13 + 128);
LABEL_130:
        v69 = nextScaffoldPart(v14);
        if ((v69 & 0x80000000) != 0)
        {
          return 1;
        }

        v70 = v69;
        v71 = (*(v15 + 328) + 32 * v69);
        *v71 = 4;
        v71[1] = v22;
        v72 = getElementType(v14, v13, a3, v60);
        if (!v72)
        {
          return 1;
        }

        v73 = 0;
        v74 = *v72;
        *(*(v15 + 328) + 32 * v70 + 8) = *v72;
          ;
        }

        v76 = *(v15 + 336);
        if (v73 > ~v76)
        {
          return 1;
        }

        *(v15 + 336) = v76 + v73;
        goto LABEL_327;
      case 0x37u:
        if (!reportProcessingInstruction(v14, v13, a3, v171))
        {
          return 1;
        }

        goto LABEL_330;
      case 0x38u:
        if (!reportComment(v14, v13, a3, v171))
        {
          return 1;
        }

        goto LABEL_330;
      case 0x39u:
        v66 = v171;
        v67 = v14;
        v68 = 1;
LABEL_189:
        v29 = processXmlDecl(v67, v68, a3, v66);
        if (v29)
        {
          return v29;
        }

        v13 = *(v14 + 296);
        goto LABEL_330;
      case 0x3Au:
        if (*(v14 + 168))
        {
          reportDefault(v14, v13, a3, v171);
        }

        v29 = doIgnoreSection(v14, v13, &v171, a4, a7, a8);
        if (v29)
        {
          return v29;
        }

        if (v171)
        {
          goto LABEL_330;
        }

        v156 = 0;
        *(v14 + 536) = ignoreSectionProcessor;
        return v156;
      case 0x3Bu:
      case 0x3Cu:
        *(v15 + 257) = 1;
        if (!*(v14 + 924))
        {
          v132 = *(v15 + 258);
          *(v15 + 256) = v132;
          if (v132)
          {
            goto LABEL_247;
          }

LABEL_270:
          v133 = *(v14 + 224);
          if (v133 && !v133(*(v14 + 8)))
          {
            return 22;
          }

          goto LABEL_247;
        }

        v47 = poolStoreString((v15 + 160), v13, a3 + *(v13 + 128), v171 - *(v13 + 128));
        if (!v47)
        {
          return 1;
        }

        v48 = v47;
        v49 = lookup(v14, (v15 + 264), v47, 0);
        v50 = v49;
        *(v15 + 184) = *(v15 + 192);
        if (!*(v14 + 524))
        {
          goto LABEL_92;
        }

        if (*(v15 + 258))
        {
          if (!*(v14 + 576))
          {
            goto LABEL_291;
          }
        }

        else if (!*(v15 + 257))
        {
LABEL_291:
          if (!v49)
          {
            return 11;
          }

          if (!*(v49 + 58))
          {
            return 24;
          }

          goto LABEL_293;
        }

LABEL_92:
        if (!v49)
        {
          *(v15 + 256) = *(v15 + 258);
          if (v19 == 60)
          {
            v51 = *(v14 + 248);
            if (v51)
            {
              v51(*(v14 + 8), v48, 1);
              goto LABEL_330;
            }
          }

          goto LABEL_328;
        }

LABEL_293:
        if (*(v49 + 56))
        {
          return 12;
        }

        if (*(v49 + 1))
        {
          v29 = processInternalEntity(v14, v49, v19 == 60);
          if (v29)
          {
            return v29;
          }

          goto LABEL_330;
        }

        v138 = *(v14 + 232);
        if (!v138)
        {
          *(v15 + 256) = *(v15 + 258);
          goto LABEL_328;
        }

        *(v15 + 259) = 0;
        *(v49 + 56) = 1;
        v139 = v14;
        do
        {
          v140 = v139;
          v139 = v139[113];
        }

        while (v139);
        v141 = vadd_s32(v140[121], 0x100000001);
        v140[121] = v141;
        v142 = v140[122].u32[0];
        if (v141.i32[1] > v142)
        {
          v140[122].i32[0] = v142 + 1;
        }

        v143 = v138(*(v14 + 240), 0, *(v49 + 4), *(v49 + 3), *(v49 + 5));
        v144 = v14;
        if (!v143)
        {
          do
          {
            v157 = v14;
            v14 = *(v14 + 904);
          }

          while (v14);
          --*(v157 + 972);
          *(v50 + 56) = 0;
          return 21;
        }

        do
        {
          v145 = v144;
          v144 = *(v144 + 904);
        }

        while (v144);
        --*(v145 + 972);
        *(v50 + 56) = 0;
        if (!*(v15 + 259))
        {
          *(v15 + 256) = *(v15 + 258);
          goto LABEL_330;
        }

        v22 = 0;
        if (!*(v15 + 258))
        {
          goto LABEL_270;
        }

LABEL_247:
        if (v22)
        {
          goto LABEL_328;
        }

        goto LABEL_330;
      default:
        goto LABEL_328;
    }
  }
}

BOOL accountingDiffTolerated(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a2 + 4) >= 5)
  {
    if (a5 == 2)
    {
      return 1;
    }

    goto LABEL_6;
  }

  result = 1;
  if (a5 != 2 && ((0x1Du >> (a2 + 4)) & 1) == 0)
  {
LABEL_6:
    v7 = a1;
    do
    {
      v8 = v7;
      v7 = *(v7 + 904);
    }

    while (v7);
    v9 = v8 == a1;
    v10 = a4 - a3;
    v11 = (v8 + 936);
    v12 = a5 != 0 || !v9;
    v13 = 936;
    if (v12)
    {
      v13 = 944;
    }

    if (v12)
    {
      v14 = (v8 + 944);
    }

    else
    {
      v14 = (v8 + 936);
    }

    v15 = *(v8 + v13);
    if (__CFADD__(v10, v15))
    {
      return 0;
    }

    *v14 = v15 + v10;
    v16 = *v11;
    v17 = *(v8 + 944) + *v11;
    if (v16)
    {
      v18 = v17 / v16;
    }

    else
    {
      v18 = 1.0;
    }

    if (v17 >= *(v8 + 960))
    {
      return v18 <= *(v8 + 956);
    }

    return 1;
  }

  return result;
}

uint64_t processXmlDecl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = -1;
  if (!accountingDiffTolerated(a1, 12, a3, a4, 0))
  {
    return 43;
  }

  v8 = XmlParseXmlDeclNS;
  if (!*(a1 + 464))
  {
    v8 = XmlParseXmlDecl;
  }

  v9 = (a1 + 552);
  if (!v8(a2, *(a1 + 296), a3, a4, (a1 + 552), &v31, &v30, &v33, &v32, &v29))
  {
    if (a2)
    {
      return 31;
    }

    else
    {
      return 30;
    }
  }

  if (!a2 && v29 == 1)
  {
    *(*(a1 + 680) + 258) = 1;
    if (*(a1 + 924) == 1)
    {
      *(a1 + 924) = 0;
    }
  }

  if (*(a1 + 288))
  {
    v10 = v33;
    if (v33)
    {
      v11 = *(a1 + 296);
      v12 = (*(v11 + 56))(v11, v33);
      v13 = poolStoreString((a1 + 840), v11, v10, v10 + v12);
      if (!v13)
      {
        return 1;
      }

      v10 = v13;
      *(a1 + 872) = *(a1 + 864);
    }

    if (v31)
    {
      v14 = poolStoreString((a1 + 840), *(a1 + 296), v31, v30 - *(*(a1 + 296) + 128));
      if (!v14)
      {
        return 1;
      }
    }

    else
    {
      v14 = 0;
    }

    (*(a1 + 288))(*(a1 + 8), v14, v10, v29);
    LOBYTE(v16) = v14 != 0;
  }

  else
  {
    v16 = *(a1 + 168);
    if (v16)
    {
      reportDefault(a1, *(a1 + 296), a3, a4);
      v10 = 0;
      LOBYTE(v16) = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  if (*(a1 + 456))
  {
    goto LABEL_26;
  }

  if (v32)
  {
    v21 = *(v32 + 128);
    v22 = *(a1 + 296);
    if (v21 != *(v22 + 128) || v21 == 2 && v32 != v22)
    {
      *v9 = v33;
      return 19;
    }

    *(a1 + 296) = v32;
LABEL_26:
    v17 = v16 ^ 1;
    if (v10)
    {
      v17 = 0;
    }

    if (v17)
    {
      return 0;
    }

    v18 = *(a1 + 848);
    v19 = *(a1 + 840);
    if (v18)
    {
      if (!v19)
      {
LABEL_48:
        result = 0;
        *(a1 + 840) = 0;
        *(a1 + 856) = 0;
        *(a1 + 872) = 0;
        *(a1 + 864) = 0;
        return result;
      }

      do
      {
        v20 = v19;
        v19 = *v19;
        *v20 = v18;
        v18 = v20;
      }

      while (v19);
    }

    else
    {
      v20 = *(a1 + 840);
    }

    *(a1 + 848) = v20;
    goto LABEL_48;
  }

  v23 = v33;
  if (!v33)
  {
    goto LABEL_26;
  }

  if (!v10)
  {
    v24 = *(a1 + 296);
    v25 = (*(v24 + 56))(v24, v33);
    v10 = poolStoreString((a1 + 840), v24, v23, v23 + v25);
    if (!v10)
    {
      return 1;
    }
  }

  result = handleUnknownEncoding(a1, v10);
  v26 = *(a1 + 848);
  v27 = *(a1 + 840);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_53;
    }

    do
    {
      v28 = v27;
      v27 = *v27;
      *v28 = v26;
      v26 = v28;
    }

    while (v27);
  }

  else
  {
    v28 = *(a1 + 840);
  }

  *(a1 + 848) = v28;
LABEL_53:
  *(a1 + 840) = 0;
  *(a1 + 856) = 0;
  *(a1 + 872) = 0;
  *(a1 + 864) = 0;
  if (result == 18)
  {
    *v9 = v33;
  }

  return result;
}

uint64_t poolStoreString(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = poolAppend(a1, a2, a3, a4);
  if (result)
  {
    v6 = a1[3];
    if (v6 == a1[2])
    {
      if (!poolGrow(a1))
      {
        return 0;
      }

      v6 = a1[3];
    }

    a1[3] = (v6 + 1);
    *v6 = 0;
    return a1[4];
  }

  return result;
}

_OWORD *lookup(uint64_t a1, uint64_t *a2, char *a3, size_t a4)
{
  if (!a2[2])
  {
    if (a4)
    {
      *(a2 + 8) = 6;
      a2[2] = 64;
      result = (*(a2[4] + 8))(*a2[4], 512);
      *a2 = result;
      if (!result)
      {
        a2[2] = 0;
        return result;
      }

      result[30] = 0u;
      result[31] = 0u;
      result[28] = 0u;
      result[29] = 0u;
      result[26] = 0u;
      result[27] = 0u;
      result[24] = 0u;
      result[25] = 0u;
      result[22] = 0u;
      result[23] = 0u;
      result[20] = 0u;
      result[21] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[14] = 0u;
      result[15] = 0u;
      result[12] = 0u;
      result[13] = 0u;
      result[10] = 0u;
      result[11] = 0u;
      result[8] = 0u;
      result[9] = 0u;
      result[6] = 0u;
      result[7] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      hash(a1, a3);
      v11 = (a2[2] - 1) & v39;
      goto LABEL_45;
    }

    return 0;
  }

  hash(a1, a3);
  v9 = v8;
  v10 = a2[2];
  v11 = (v10 - 1) & v8;
  result = *(*a2 + 8 * v11);
  if (!result)
  {
LABEL_14:
    if (a4)
    {
      v21 = *(a2 + 8);
      if (!(a2[3] >> (v21 - 1)))
      {
LABEL_45:
        *(*a2 + 8 * v11) = (*(a2[4] + 8))(*a2[4], a4);
        result = *(*a2 + 8 * v11);
        if (result)
        {
          bzero(result, a4);
          v40 = *a2;
          **(*a2 + 8 * v11) = a3;
          ++a2[3];
          return *(v40 + 8 * v11);
        }

        return result;
      }

      v22 = v21 + 1;
      v23 = (v21 + 1);
      if (v23 <= 0x3C)
      {
        result = (*(a2[4] + 8))(*a2[4], 8 << v22);
        if (!result)
        {
          return result;
        }

        v24 = result;
        v41 = v23;
        v25 = 1 << v22;
        v26 = (1 << v22) - 1;
        bzero(result, 8 << v22);
        v27 = a2[2];
        if (v27)
        {
          for (i = 0; i < v27; ++i)
          {
            v29 = *(*a2 + 8 * i);
            if (v29)
            {
              hash(a1, *v29);
              v31 = v30 & v26;
              if (*(v24 + (v30 & v26)))
              {
                LODWORD(v32) = 0;
                do
                {
                  if (v32)
                  {
                    v32 = v32;
                  }

                  else
                  {
                    v32 = ((v30 & -v25) >> (v41 - 1)) & (v26 >> 2) | 1;
                  }

                  v33 = v31 >= v32;
                  v34 = v31 - v32;
                  if (v33)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = 1 << v22;
                  }

                  v31 = v34 + v35;
                }

                while (*(v24 + v31));
              }

              *(v24 + v31) = *(*a2 + 8 * i);
              v27 = a2[2];
            }
          }
        }

        (*(a2[4] + 24))(*a2[4], *a2);
        *a2 = v24;
        *(a2 + 8) = v22;
        a2[2] = v25;
        v11 = v26 & v9;
        if (*(v24 + (v26 & v9)))
        {
          LODWORD(v36) = 0;
          do
          {
            if (v36)
            {
              v36 = v36;
            }

            else
            {
              v36 = ((v9 & -v25) >> (v41 - 1)) & (v26 >> 2) | 1;
            }

            v37 = v11 - v36;
            if (v11 >= v36)
            {
              v38 = 0;
            }

            else
            {
              v38 = 1 << v22;
            }

            v11 = v37 + v38;
          }

          while (*(v24 + v37 + v38));
        }

        goto LABEL_45;
      }
    }

    return 0;
  }

  v13 = 0;
  while (*a3 != **result)
  {
LABEL_8:
    if (!v13)
    {
      v13 = ((v9 & -v10) >> (*(a2 + 8) - 1)) & ((v10 - 1) >> 2) | 1;
    }

    v19 = v11 - v13;
    if (v11 >= v13)
    {
      v20 = 0;
    }

    else
    {
      v20 = a2[2];
    }

    v11 = v19 + v20;
    result = *(*a2 + 8 * (v19 + v20));
    if (!result)
    {
      goto LABEL_14;
    }
  }

  v14 = (*result + 1);
  v15 = (a3 + 1);
  v16 = *a3;
  while (v16)
  {
    v17 = *v15++;
    v16 = v17;
    v18 = *v14++;
    if (v16 != v18)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *normalizePublicId(_BYTE *result)
{
  v1 = result;
  for (i = result; ; ++i)
  {
    v3 = *i;
    if (v3 <= 0xC)
    {
      break;
    }

    if (v3 != 32 && v3 != 13)
    {
      goto LABEL_13;
    }

LABEL_9:
    v5 = result;
    if (v1 == result)
    {
      goto LABEL_15;
    }

    if (*(v1 - 1) != 32)
    {
      LOBYTE(v3) = 32;
LABEL_13:
      *v1++ = v3;
    }

    v5 = v1;
LABEL_15:
    v1 = v5;
  }

  if (v3 == 10)
  {
    goto LABEL_9;
  }

  if (*i)
  {
    goto LABEL_13;
  }

  if (v1 != result)
  {
    if (*(v1 - 1) == 32)
    {
      result = v1 - 1;
    }

    else
    {
      result = v1;
    }
  }

  *result = 0;
  return result;
}

uint64_t contentProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = doContent(a1, 0, *(a1 + 296), a2, a3, a4, *(a1 + 916) == 0, 0);
  if (!v5 && !storeRawNames(a1))
  {
    return 1;
  }

  return v5;
}

_OWORD *getElementType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 680);
  v6 = poolStoreString(v5 + 20, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = lookup(a1, v5 + 5, v6, 0x28uLL);
  v9 = v8;
  if (v8)
  {
    if (*v8 != v7)
    {
      v5[23] = v5[24];
      return v9;
    }

    v5[24] = v5[23];
    if (setElementTypePrefix(a1, v8))
    {
      return v9;
    }

    return 0;
  }

  return v9;
}

_OWORD *getAttributeId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 680);
  v9 = *(v8 + 184);
  if (v9 == *(v8 + 176))
  {
    if (!poolGrow((v8 + 160)))
    {
      return 0;
    }

    v9 = *(v8 + 184);
  }

  *(v8 + 184) = v9 + 1;
  *v9 = 0;
  v10 = poolStoreString((v8 + 160), a2, a3, a4);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = (v10 + 1);
  v13 = lookup(a1, (v8 + 80), (v10 + 1), 0x18uLL);
  v14 = v13;
  if (v13)
  {
    if (*v13 != v12)
    {
      v15 = *(v8 + 192);
LABEL_8:
      *(v8 + 184) = v15;
      return v14;
    }

    v16 = *(v8 + 184);
    *(v8 + 192) = v16;
    if (!*(a1 + 464))
    {
      return v14;
    }

    v17 = *v12;
    if (v17 == 120 && v11[2] == 109 && v11[3] == 108 && v11[4] == 110 && v11[5] == 115)
    {
      if (v11[6] == 58)
      {
        v18 = lookup(a1, (v8 + 120), v11 + 7, 0x10uLL);
        goto LABEL_38;
      }

      if (!v11[6])
      {
        v18 = (v8 + 304);
LABEL_38:
        *(v14 + 1) = v18;
        *(v14 + 17) = 1;
        return v14;
      }
    }

    v19 = 0;
    if (!*v12)
    {
      return v14;
    }

    while (v17 != 58)
    {
      v17 = v11[v19++ + 2];
      if (!v17)
      {
        return v14;
      }
    }

    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = *(v8 + 184);
        if (v21 == *(v8 + 176))
        {
          if (!poolGrow((v8 + 160)))
          {
            return 0;
          }

          v21 = *(v8 + 184);
        }

        v22 = v12[i];
        *(v8 + 184) = v21 + 1;
        *v21 = v22;
      }

      v16 = *(v8 + 184);
    }

    if (v16 == *(v8 + 176))
    {
      if (!poolGrow((v8 + 160)))
      {
        return 0;
      }

      v16 = *(v8 + 184);
    }

    *(v8 + 184) = v16 + 1;
    *v16 = 0;
    v23 = lookup(a1, (v8 + 120), *(v8 + 192), 0x10uLL);
    *(v14 + 1) = v23;
    if (v23)
    {
      v15 = *(v8 + 192);
      if (*v23 == v15)
      {
        *(v8 + 192) = *(v8 + 184);
        return v14;
      }

      goto LABEL_8;
    }

    return 0;
  }

  return v14;
}

uint64_t poolAppend(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a3;
  v7 = a1 + 3;
  if (a1[3])
  {
    goto LABEL_3;
  }

  while (poolGrow(a1))
  {
LABEL_3:
    if ((*(a2 + 112))(a2, &v9, a4, v7, a1[2]) < 2)
    {
      return a1[4];
    }
  }

  return 0;
}

uint64_t defineAttribute(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  if (a4 || a5)
  {
    if (v10 >= 1)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      while (*v11 != a2)
      {
        v11 += 3;
        if (!--v12)
        {
          goto LABEL_7;
        }
      }

      return 1;
    }

LABEL_7:
    if (a4 && !*(a1 + 16) && !*(a2 + 17))
    {
      *(a1 + 16) = a2;
    }
  }

  if (v10 != *(a1 + 28))
  {
    result = *(a1 + 32);
LABEL_16:
    v15 = *(a1 + 24);
    v16 = result + 24 * v15;
    *v16 = a2;
    *(v16 + 16) = a5;
    *(v16 + 8) = a3;
    if (!a3)
    {
      *(a2 + 16) = 1;
    }

    *(a1 + 24) = v15 + 1;
    return 1;
  }

  v13 = v10;
  if (!v10)
  {
    *(a1 + 28) = 8;
    result = (*(a6 + 32))(*(a6 + 24), 192);
    *(a1 + 32) = result;
    if (!result)
    {
      *(a1 + 28) = 0;
      return result;
    }

    goto LABEL_16;
  }

  if (v10 > 0x3FFFFFFF)
  {
    return 0;
  }

  result = (*(a6 + 40))(*(a6 + 24), *(a1 + 32), 48 * v10);
  if (result)
  {
    *(a1 + 28) = 2 * v13;
    *(a1 + 32) = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t poolGrow(uint64_t *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = a1[4];
  if (!v3)
  {
    v19 = *v2;
    *a1 = v2;
    a1[1] = v19;
    *v2 = 0;
    a1[4] = v2 + 12;
    a1[2] = v2 + 12 + *(v2 + 8);
    a1[3] = v2 + 12;
    return 1;
  }

  v4 = a1[2] - v3;
  if (v4 >= *(v2 + 8))
  {
LABEL_5:
    v9 = a1[4];
    v10 = *(a1 + 4) - v9;
    if (*a1)
    {
      v11 = v9 == *a1 + 12;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      v13 = 2 * v10;
      if (((2 * v10) & 0x80000000) == 0 && v13 && ((v13 + 12) & ~((v13 + 12) >> 31)) != 0)
      {
        v15 = a1[3];
        result = (*(a1[5] + 16))(*a1[5]);
        if (!result)
        {
          return result;
        }

        *a1 = result;
        *(result + 8) = v13;
        v17 = result + 12 + v15 - v9;
        a1[4] = result + 12;
        v18 = result + 12 + v13;
LABEL_28:
        a1[2] = v18;
        a1[3] = v17;
        return 1;
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      if (v10 >= 0x400)
      {
        v12 = 2 * v10;
        if (((2 * v10) & 0x80000000) != 0)
        {
          return 0;
        }
      }

      else
      {
        v12 = 1024;
      }

      v20 = v12 + 12;
      if ((v20 & ~(v20 >> 31)) != 0)
      {
        result = (*(a1[5] + 8))(*a1[5], v20 & ~(v20 >> 31));
        if (!result)
        {
          return result;
        }

        v21 = result;
        *(result + 8) = v12;
        *result = *a1;
        *a1 = result;
        v23 = a1[3];
        v22 = a1[4];
        if (v23 == v22)
        {
          v24 = a1[3];
        }

        else
        {
          memcpy((result + 12), v22, v23 - v22);
          v24 = a1[3];
          v23 = a1[4];
        }

        v17 = v21 + 12 + v24 - v23;
        a1[4] = v21 + 12;
        v18 = v21 + 12 + v12;
        goto LABEL_28;
      }
    }

    return 0;
  }

  v5 = *v2;
  *v2 = *a1;
  *a1 = v2;
  a1[1] = v5;
  memcpy((v2 + 12), v3, v4);
  v6 = *a1;
  v7 = *a1 + 12;
  v8 = v7 + a1[3] - a1[4];
  a1[4] = v7;
  a1[2] = v7 + *(v6 + 8);
  a1[3] = v8;
  return 1;
}

uint64_t storeAttributeValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7)
{
  v8 = a3;
  result = appendAttributeValue(a1, a2, a3, a4, a5, a6, a7);
  if (!result)
  {
    v10 = a6[3];
    if (!v8 && v10 != a6[4] && *(v10 - 1) == 32)
    {
      a6[3] = --v10;
    }

    if (v10 == a6[2])
    {
      if (!poolGrow(a6))
      {
        return 1;
      }

      v10 = a6[3];
    }

    result = 0;
    a6[3] = (v10 + 1);
    *v10 = 0;
  }

  return result;
}

uint64_t storeEntityValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(a1 + 680);
  v12 = *(v10 + 208);
  v11 = (v10 + 208);
  v13 = *(a1 + 528);
  *(a1 + 528) = 1;
  if (!v12 && !poolGrow(v11))
  {
    return 1;
  }

  v43 = a3;
  v14 = (*(a2 + 40))(a2, a3, a4, &v43);
  if (!accountingDiffTolerated(a1, v14, a3, v43, a5))
  {
LABEL_53:
    result = 43;
    goto LABEL_55;
  }

  while (v14 <= 8)
  {
    if (v14 < 0)
    {
      if (v14 != -3)
      {
        if (v14 == -4)
        {
          result = 0;
          goto LABEL_55;
        }

        if (v14 == -1)
        {
          if (*(a1 + 296) == a2)
          {
            *(a1 + 552) = a3;
          }

          goto LABEL_64;
        }

LABEL_66:
        if (*(a1 + 296) == a2)
        {
          *(a1 + 552) = a3;
        }

        result = 23;
        goto LABEL_55;
      }

      v43 = a3 + *(a2 + 128);
    }

    else
    {
      if (v14 == 6)
      {
        goto LABEL_27;
      }

      if (v14 != 7)
      {
        if (!v14)
        {
          if (*(a1 + 296) == a2)
          {
            *(a1 + 552) = v43;
          }

LABEL_64:
          result = 4;
          goto LABEL_55;
        }

        goto LABEL_66;
      }
    }

    v27 = *(v10 + 232);
    if (*(v10 + 224) == v27)
    {
      if (!poolGrow(v11))
      {
LABEL_54:
        result = 1;
        goto LABEL_55;
      }

      v27 = *(v10 + 232);
    }

    *(v10 + 232) = v27 + 1;
    *v27 = 10;
LABEL_35:
    a3 = v43;
    v14 = (*(a2 + 40))(a2, v43, a4, &v43);
    if (!accountingDiffTolerated(a1, v14, a3, v43, a5))
    {
      goto LABEL_53;
    }
  }

  if (v14 == 9)
  {
LABEL_27:
    if (!poolAppend(v11, a2, a3, v43))
    {
      goto LABEL_54;
    }

    goto LABEL_35;
  }

  if (v14 != 10)
  {
    if (v14 != 28)
    {
      goto LABEL_66;
    }

    if (!*(a1 + 920) && *(a1 + 296) == a2)
    {
      *(a1 + 552) = a3;
      result = 10;
      goto LABEL_55;
    }

    v15 = poolStoreString((a1 + 792), a2, a3 + *(a2 + 128), v43 - *(a2 + 128));
    if (!v15)
    {
      goto LABEL_54;
    }

    result = lookup(a1, (v10 + 264), v15, 0);
    *(a1 + 816) = *(a1 + 824);
    if (!result)
    {
      *(v10 + 256) = *(v10 + 258);
      goto LABEL_55;
    }

    v17 = result;
    if (*(result + 56))
    {
      if (*(a1 + 296) == a2)
      {
        *(a1 + 552) = a3;
      }

      result = 12;
      goto LABEL_55;
    }

    if (*(result + 24))
    {
      v18 = *(a1 + 232);
      if (!v18)
      {
        goto LABEL_26;
      }

      *(v10 + 259) = 0;
      *(result + 56) = 1;
      v19 = a1;
      do
      {
        v20 = v19;
        v19 = v19[113];
      }

      while (v19);
      v21 = vadd_s32(v20[121], 0x100000001);
      v20[121] = v21;
      v22 = v20[122].u32[0];
      if (v21.i32[1] > v22)
      {
        v20[122].i32[0] = v22 + 1;
      }

      v23 = *(result + 40);
      v24 = v18(*(a1 + 240), 0, *(result + 32));
      v25 = a1;
      if (!v24)
      {
        v40 = a1;
        do
        {
          v41 = v40;
          v40 = *(v40 + 904);
        }

        while (v40);
        --*(v41 + 972);
        *(v17 + 56) = 0;
        result = 21;
        goto LABEL_55;
      }

      do
      {
        v26 = v25;
        v25 = *(v25 + 904);
      }

      while (v25);
      --*(v26 + 972);
      *(v17 + 56) = 0;
      if (!*(v10 + 259))
      {
LABEL_26:
        *(v10 + 256) = *(v10 + 258);
      }
    }

    else
    {
      *(result + 56) = 1;
      v34 = a1;
      do
      {
        v35 = v34;
        v34 = v34[113];
      }

      while (v34);
      v36 = vadd_s32(v35[121], 0x100000001);
      v35[121] = v36;
      v37 = v35[122].u32[0];
      if (v36.i32[1] > v37)
      {
        v35[122].i32[0] = v37 + 1;
      }

      result = storeEntityValue(a1, *(a1 + 448), *(result + 8), *(result + 8) + *(result + 16), 1);
      v38 = a1;
      do
      {
        v39 = v38;
        v38 = *(v38 + 904);
      }

      while (v38);
      --*(v39 + 972);
      *(v17 + 56) = 0;
      if (result)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_35;
  }

  v28 = (*(a2 + 80))(a2, a3);
  if ((v28 & 0x80000000) == 0)
  {
    v29 = XmlUtf8Encode(v28, v42);
    if (v29 >= 1)
    {
      v30 = v29;
      v31 = v42;
      do
      {
        v32 = *(v10 + 232);
        if (*(v10 + 224) == v32)
        {
          if (!poolGrow(v11))
          {
            goto LABEL_54;
          }

          v32 = *(v10 + 232);
        }

        v33 = *v31++;
        *(v10 + 232) = v32 + 1;
        *v32 = v33;
        --v30;
      }

      while (v30);
    }

    goto LABEL_35;
  }

  if (*(a1 + 296) == a2)
  {
    *(a1 + 552) = a3;
  }

  result = 14;
LABEL_55:
  *(a1 + 528) = v13;
  return result;
}

uint64_t doIgnoreSection(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, int a6)
{
  v11 = *a3;
  v17 = *a3;
  if (*(a1 + 296) == a2)
  {
    v12 = (a1 + 552);
    *(a1 + 552) = v11;
    v13 = (a1 + 560);
  }

  else
  {
    v12 = *(a1 + 576);
    v13 = v12 + 1;
  }

  *v12 = v11;
  *a3 = 0;
  v14 = (*(a2 + 24))(a2, v11, a4, &v17);
  if (!accountingDiffTolerated(a1, v14, v11, v17, 0))
  {
    return 43;
  }

  v15 = v17;
  *v13 = v17;
  if (v14 <= -2)
  {
    if (v14 != -4)
    {
      if (v14 != -2)
      {
LABEL_22:
        *v12 = v15;
        return 23;
      }

      if (!a6)
      {
        return 6;
      }

LABEL_20:
      result = 0;
      *a5 = v11;
      return result;
    }

LABEL_19:
    if (!a6)
    {
      return 2;
    }

    goto LABEL_20;
  }

  if (v14 == -1)
  {
    goto LABEL_19;
  }

  if (!v14)
  {
    *v12 = v15;
    return 4;
  }

  if (v14 != 42)
  {
    goto LABEL_22;
  }

  if (*(a1 + 168))
  {
    reportDefault(a1, a2, v11, v15);
    v15 = v17;
  }

  *a3 = v15;
  *a5 = v15;
  if (*(a1 + 912) == 2)
  {
    return 35;
  }

  else
  {
    return 0;
  }
}

uint64_t ignoreSectionProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  result = doIgnoreSection(a1, *(a1 + 296), &v6, a3, a4, *(a1 + 916) == 0);
  if (!result)
  {
    if (v6)
    {
      *(a1 + 536) = prologProcessor;

      return prologProcessor(a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nextScaffoldPart(uint64_t a1)
{
  v2 = *(a1 + 680);
  if (!*(v2 + 352))
  {
    v3 = (*(a1 + 32))(*(a1 + 24), 4 * *(a1 + 896));
    *(v2 + 352) = v3;
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }

    *v3 = 0;
  }

  result = *(v2 + 344);
  v5 = *(v2 + 340);
  v6 = *(v2 + 328);
  if (result >= v5)
  {
    if (v6)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v7 = (*(a1 + 40))(*(a1 + 24));
        if (v7)
        {
          v6 = v7;
          v8 = 2 * *(v2 + 340);
LABEL_11:
          *(v2 + 340) = v8;
          *(v2 + 328) = v6;
          result = *(v2 + 344);
          goto LABEL_12;
        }
      }
    }

    else
    {
      v9 = (*(a1 + 32))(*(a1 + 24), 1024);
      if (v9)
      {
        v6 = v9;
        v8 = 32;
        goto LABEL_11;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:
  *(v2 + 344) = result + 1;
  v10 = *(v2 + 348);
  if (v10)
  {
    v11 = (v6 + 32 * *(*(v2 + 352) + 4 * v10 - 4));
    v12 = v11[5];
    if (v12)
    {
      *(v6 + 32 * v12 + 28) = result;
    }

    v13 = v11[6];
    if (!v13)
    {
      v11[4] = result;
    }

    v11[5] = result;
    v11[6] = v13 + 1;
  }

  v14 = v6 + 32 * result;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  return result;
}

uint64_t processInternalEntity(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a1 + 584);
  if (v6)
  {
    *(a1 + 584) = *(v6 + 16);
  }

  else
  {
    v6 = (*(a1 + 32))(*(a1 + 24), 40);
    if (!v6)
    {
      return 1;
    }
  }

  *(a2 + 56) = 1;
  v7 = a1;
  do
  {
    v8 = v7;
    v7 = v7[113];
  }

  while (v7);
  v9 = vadd_s32(v8[121], 0x100000001);
  v8[121] = v9;
  v10 = v8[122].u32[0];
  if (v9.i32[1] > v10)
  {
    v8[122].i32[0] = v10 + 1;
  }

  *(a2 + 20) = 0;
  v11 = *(a1 + 576);
  *(a1 + 576) = v6;
  *(v6 + 16) = v11;
  *(v6 + 24) = a2;
  v12 = *(a1 + 596);
  *(v6 + 32) = v12;
  *(v6 + 36) = a3;
  *v6 = 0;
  *(v6 + 8) = 0;
  v13 = *(a2 + 8);
  v14 = v13 + *(a2 + 16);
  v20 = v13;
  v15 = *(a1 + 448);
  if (*(a2 + 57))
  {
    v16 = (*v15)(*(a1 + 448), v13, v14, &v20);
    result = doProlog(a1, *(a1 + 448), v13, v14, v16, v20, &v20, 0, 0);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = doContent(a1, v12, v15, v13, v14, &v20, 0, 1);
    if (result)
    {
      return result;
    }
  }

  v18 = a1;
  if (v14 == v20 || (v18 = a1, *(a1 + 912) != 3))
  {
    do
    {
      v19 = v18;
      v18 = *(v18 + 904);
    }

    while (v18);
    result = 0;
    --*(v19 + 972);
    *(a2 + 56) = 0;
    *(a1 + 576) = *(v6 + 16);
    *(v6 + 16) = *(a1 + 584);
    *(a1 + 584) = v6;
  }

  else
  {
    result = 0;
    *(a2 + 20) = v20 - v13;
    *(a1 + 536) = internalEntityProcessor;
  }

  return result;
}

uint64_t reportProcessingInstruction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 136))
  {
    v7 = a3 + 2 * *(a2 + 128);
    v8 = v7 + (*(a2 + 56))(a2, v7);
    result = poolStoreString((a1 + 792), a2, v7, v8);
    if (result)
    {
      v10 = result;
      *(a1 + 824) = *(a1 + 816);
      v11 = (*(a2 + 64))(a2, v8);
      result = poolStoreString((a1 + 792), a2, v11, a4 - 2 * *(a2 + 128));
      if (result)
      {
        v12 = result;
        normalizeLines(result);
        (*(a1 + 136))(*(a1 + 8), v10, v12);
        v13 = *(a1 + 800);
        v14 = *(a1 + 792);
        if (v13)
        {
          if (!v14)
          {
LABEL_13:
            *(a1 + 792) = 0;
            *(a1 + 808) = 0;
            *(a1 + 824) = 0;
            result = 1;
            *(a1 + 816) = 0;
            return result;
          }

          do
          {
            v15 = v14;
            v14 = *v14;
            *v15 = v13;
            v13 = v15;
          }

          while (v14);
        }

        else
        {
          v15 = *(a1 + 792);
        }

        *(a1 + 800) = v15;
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (*(a1 + 168))
    {
      reportDefault(a1, a2, a3, a4);
    }

    return 1;
  }

  return result;
}

uint64_t reportComment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 144))
  {
    result = poolStoreString((a1 + 792), a2, a3 + 4 * *(a2 + 128), a4 - 3 * *(a2 + 128));
    if (!result)
    {
      return result;
    }

    v6 = result;
    normalizeLines(result);
    (*(a1 + 144))(*(a1 + 8), v6);
    v7 = *(a1 + 800);
    v8 = *(a1 + 792);
    if (v7)
    {
      if (!v8)
      {
LABEL_12:
        *(a1 + 792) = 0;
        *(a1 + 808) = 0;
        *(a1 + 824) = 0;
        result = 1;
        *(a1 + 816) = 0;
        return result;
      }

      do
      {
        v9 = v8;
        v8 = *v8;
        *v9 = v7;
        v7 = v9;
      }

      while (v8);
    }

    else
    {
      v9 = *(a1 + 792);
    }

    *(a1 + 800) = v9;
    goto LABEL_12;
  }

  if (*(a1 + 168))
  {
    reportDefault(a1, a2, a3, a4);
  }

  return 1;
}

void hash(uint64_t a1, char *a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  do
  {
    v2 = a1;
    a1 = *(a1 + 904);
  }

  while (a1);
  v3 = *(v2 + 928);
  v8.i64[0] = 0x736F6D6570736575;
  v8.i64[1] = v3 ^ 0x646F72616E646F6DLL;
  v9 = 0x6C7967656E657261;
  v10 = v3 ^ 0x7465646279746573;
  v11[1] = v11;
  v11[2] = 0;
  if (*a2)
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
    }

    while (a2[++v4]);
  }

  else
  {
    v5 = 0;
  }

  v11[0] = 0;
  sip24_update(v8.i64, a2, v5);
  sip24_final(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t *sip24_update(uint64_t *a1, char *a2, uint64_t a3)
{
  v3 = a2;
  v5 = &a2[a3];
  v6 = (a1 + 5);
  v7 = a1 + 4;
  v8 = &a2[a3 - 1];
  do
  {
    if (v3 >= v5)
    {
      v13 = 0;
    }

    else
    {
      v9 = *v6;
      if (*v6 >= v6)
      {
        v13 = 1;
      }

      else
      {
        v10 = v8 - v3;
        while (1)
        {
          v11 = v3;
          v12 = *v3++;
          *v6 = v9 + 1;
          *v9 = v12;
          if (!v10)
          {
            break;
          }

          v9 = *v6;
          --v10;
          if (*v6 >= v6)
          {
            goto LABEL_11;
          }
        }

        v3 = v5;
LABEL_11:
        v13 = (v11 + 1) < v5;
      }
    }

    if (*v6 < v6)
    {
      break;
    }

    v14 = a1[4];
    a1[3] ^= v14;
    sip_round(a1, 2);
    *a1 ^= v14;
    v15 = a1[6] + 8;
    a1[5] = v7;
    a1[6] = v15;
  }

  while (v13);
  return a1;
}

int8x8_t sip24_final(int8x16_t *a1)
{
  v2 = a1[2].i32[2] - (a1 + 32);
  v3 = (v2 + a1[3].i32[0]) << 56;
  if (v2 <= 3)
  {
    if (v2 == 1)
    {
LABEL_18:
      v3 |= a1[2].u8[0];
      goto LABEL_19;
    }

    if (v2 == 2)
    {
LABEL_17:
      v3 |= a1[2].u8[1] << 8;
      goto LABEL_18;
    }

    if (v2 != 3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v3 |= a1[2].u8[2] << 16;
    goto LABEL_17;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
LABEL_15:
      v3 |= a1[2].u8[3] << 24;
      goto LABEL_16;
    }

    if (v2 != 5)
    {
      goto LABEL_19;
    }

LABEL_14:
    v3 |= a1[2].u8[4] << 32;
    goto LABEL_15;
  }

  if (v2 == 6)
  {
LABEL_13:
    v3 |= a1[2].u8[5] << 40;
    goto LABEL_14;
  }

  if (v2 == 7)
  {
    v3 |= a1[2].u8[6] << 48;
    goto LABEL_13;
  }

LABEL_19:
  a1[1].i64[1] ^= v3;
  sip_round(a1->i64, 2);
  a1->i64[0] ^= v3;
  a1[1].i64[0] ^= 0xFFuLL;
  sip_round(a1->i64, 4);
  v4 = veorq_s8(*a1, a1[1]);
  return veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

uint64_t *sip_round(uint64_t *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = *result;
    v3 = result[1];
    v5 = result[2];
    v4 = result[3];
    do
    {
      v6 = v2 + v3;
      v7 = v6 ^ __ROR8__(v3, 51);
      v8 = v5 + v4;
      v9 = __ROR8__(v4, 48);
      v2 = (v8 ^ v9) + __ROR8__(v6, 32);
      v4 = v2 ^ __ROR8__(v8 ^ v9, 43);
      v10 = v8 + v7;
      v3 = v10 ^ __ROR8__(v7, 47);
      v5 = __ROR8__(v10, 32);
      --a2;
    }

    while (a2);
    *result = v2;
    result[1] = v3;
    result[2] = v5;
    result[3] = v4;
  }

  return result;
}

uint64_t doContent(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, int a8)
{
  v8 = a7;
  v114 = a4;
  if (*(a1 + 296) == a3)
  {
    v14 = (a1 + 552);
    v15 = (a1 + 560);
  }

  else
  {
    v14 = *(a1 + 576);
    v15 = v14 + 1;
  }

  v103 = *(a1 + 680);
  *v14 = a4;
  v105 = (a1 + 808);
  v106 = (a1 + 792);
  while (2)
  {
    v113 = v114;
    v16 = (*(a3 + 8))(a3);
    v17 = v16;
    if (v16 == -3 || v16 == -5)
    {
      v20 = v114;
      if (v8)
      {
        v19 = v114;
      }

      else
      {
        v19 = a5;
      }
    }

    else
    {
      v19 = v113;
      v20 = v114;
    }

    if (!accountingDiffTolerated(a1, v16, v20, v19, a8))
    {
      return 43;
    }

    v21 = v113;
    *v15 = v113;
    v22 = 17;
    switch(v17)
    {
      case -5:
        if (v8)
        {
          goto LABEL_167;
        }

        v96 = *(a1 + 128);
        if (v96)
        {
          if (*(a3 + 132))
          {
            v97 = *(a1 + 8);
            v98 = v114;
            v99 = (a5 - v114);
          }

          else
          {
            v101 = *(a1 + 104);
            v109 = *(a1 + 96);
            (*(a3 + 112))(a3, &v114, a5, &v109, v101);
            v96 = *(a1 + 128);
            v97 = *(a1 + 8);
            v98 = *(a1 + 96);
            v99 = (v109 - v98);
          }

          v96(v97, v98, v99);
        }

        else if (*(a1 + 168))
        {
          reportDefault(a1, a3, v114, a5);
        }

        if (!a2)
        {
          *v14 = a5;
          return 3;
        }

        if (*(a1 + 596) == a2)
        {
          goto LABEL_193;
        }

        *v14 = a5;
        return 13;
      case -4:
        if (v8)
        {
          goto LABEL_167;
        }

        if (a2 < 1)
        {
          return 3;
        }

        if (*(a1 + 596) != a2)
        {
          return 13;
        }

LABEL_167:
        v22 = 0;
        v93 = v114;
        goto LABEL_168;
      case -3:
        if (v8)
        {
          goto LABEL_167;
        }

        *v15 = a5;
        v95 = *(a1 + 128);
        if (v95)
        {
          LOBYTE(v109) = 10;
          v95(*(a1 + 8), &v109, 1);
        }

        else if (*(a1 + 168))
        {
          reportDefault(a1, a3, v114, a5);
        }

        if (!a2)
        {
          return 3;
        }

        if (*(a1 + 596) != a2)
        {
          return 13;
        }

LABEL_193:
        v22 = 0;
        *a6 = a5;
        return v22;
      case -2:
        if (v8)
        {
          goto LABEL_167;
        }

        return 6;
      case -1:
        if (v8)
        {
          goto LABEL_167;
        }

        return 5;
      case 0:
        *v14 = v21;
        return 4;
      case 1:
      case 2:
        v109 = 0;
        v23 = *(a1 + 704);
        v104 = a2;
        if (v23)
        {
          *(a1 + 704) = *v23;
LABEL_69:
          *(v23 + 80) = 0;
          *v23 = *(a1 + 696);
          *(a1 + 696) = v23;
          *(v23 + 32) = 0;
          *(v23 + 40) = 0;
          *(v23 + 8) = v114 + *(a3 + 128);
          v59 = (*(a3 + 56))(a3);
          *(v23 + 16) = v59;
          ++*(a1 + 596);
          v60 = *(v23 + 8) + v59;
          v112 = *(v23 + 8);
          v61 = *(v23 + 72);
          v109 = *(v23 + 64);
          v62 = (*(a3 + 112))(a3, &v112, v60, &v109, v61 - 1);
          v63 = v109;
          v64 = *(v23 + 64);
          v65 = v109 - v64;
          if (v112 < v60 && v62 != 1)
          {
            v102 = a6;
            do
            {
              v66 = 2 * (*(v23 + 72) - v64);
              v67 = (*(a1 + 40))(*(a1 + 24));
              if (!v67)
              {
                return 1;
              }

              *(v23 + 64) = v67;
              *(v23 + 72) = v67 + v66;
              v109 = (v67 + v65);
              v68 = (*(a3 + 112))(a3, &v112, v60, &v109, v67 + v66 - 1);
              v63 = v109;
              v64 = *(v23 + 64);
              v65 = v109 - v64;
            }

            while (v112 < v60 && v68 != 1);
            a6 = v102;
          }

          *(v23 + 48) = v65;
          *(v23 + 24) = v64;
          *v63 = 0;
          v70 = storeAtts(a1, a3, v114, (v23 + 24), (v23 + 80), a8);
          if (v70)
          {
            return v70;
          }

          v71 = *(a1 + 112);
          if (v71)
          {
            v71(*(a1 + 8), *(v23 + 24), *(a1 + 744));
            a2 = v104;
            v8 = a7;
          }

          else
          {
            a2 = v104;
            v8 = a7;
            if (*(a1 + 168))
            {
              reportDefault(a1, a3, v114, v113);
            }
          }

          v75 = *(a1 + 800);
          v76 = *(a1 + 792);
          if (v75)
          {
            if (!v76)
            {
LABEL_100:
              *v106 = 0;
              v105[1] = 0;
              v105[2] = 0;
              *v105 = 0;
              goto LABEL_143;
            }

            do
            {
              v77 = v76;
              v76 = *v76;
              *v77 = v75;
              v75 = v77;
            }

            while (v76);
          }

          else
          {
            v77 = *(a1 + 792);
          }

          *(a1 + 800) = v77;
          goto LABEL_100;
        }

        v57 = (*(a1 + 32))(*(a1 + 24), 88);
        if (!v57)
        {
          return 1;
        }

        v23 = v57;
        v58 = (*(a1 + 32))(*(a1 + 24), 32);
        *(v23 + 64) = v58;
        if (v58)
        {
          *(v23 + 72) = v58 + 32;
          goto LABEL_69;
        }

        (*(a1 + 48))(*(a1 + 24), v23);
        return 1;
      case 3:
      case 4:
        v24 = v114 + *(a3 + 128);
        v112 = 0;
        v111 = 0u;
        v110 = 0u;
        v25 = (*(a3 + 56))(a3, v24);
        v109 = poolStoreString(v106, a3, v24, v24 + v25);
        if (!v109)
        {
          return 1;
        }

        *(a1 + 824) = *(a1 + 816);
        v26 = storeAtts(a1, a3, v114, &v109, &v112, 2);
        if (v26)
        {
          v22 = v26;
          freeBindings(a1, v112);
          return v22;
        }

        *(a1 + 824) = *(a1 + 816);
        v27 = *(a1 + 112);
        if (v27)
        {
          v27(*(a1 + 8), v109, *(a1 + 744));
          v28 = *(a1 + 120);
          if (!v28)
          {
            goto LABEL_84;
          }

          if (*(a1 + 112))
          {
            *v14 = *v15;
            (*(a1 + 120))(*(a1 + 8), v109);
            goto LABEL_84;
          }

LABEL_83:
          v28(*(a1 + 8), v109);
          goto LABEL_84;
        }

        v28 = *(a1 + 120);
        if (v28)
        {
          goto LABEL_83;
        }

        if (*(a1 + 168))
        {
          reportDefault(a1, a3, v114, v113);
        }

LABEL_84:
        v72 = *(a1 + 800);
        v73 = *(a1 + 792);
        if (v72)
        {
          if (!v73)
          {
            goto LABEL_90;
          }

          do
          {
            v74 = v73;
            v73 = *v73;
            *v74 = v72;
            v72 = v74;
          }

          while (v73);
        }

        else
        {
          v74 = *(a1 + 792);
        }

        *(a1 + 800) = v74;
LABEL_90:
        *(a1 + 792) = 0;
        v105[1] = 0;
        v105[2] = 0;
        *v105 = 0;
        freeBindings(a1, v112);
        if (!*(a1 + 596))
        {
          goto LABEL_147;
        }

        goto LABEL_143;
      case 5:
        if (*(a1 + 596) == a2)
        {
          return 13;
        }

        v29 = *(a1 + 696);
        v30 = v114 + 2 * *(a3 + 128);
        v31 = (*(a3 + 56))(a3, v30);
        if (v31 != *(v29 + 16) || memcmp(*(v29 + 8), v30, v31))
        {
          *v14 = v30;
          return 7;
        }

        *(a1 + 696) = *v29;
        *v29 = *(a1 + 704);
        *(a1 + 704) = v29;
        --*(a1 + 596);
        v32 = *(a1 + 120);
        if (v32)
        {
          if (*(a1 + 464))
          {
            v33 = *(v29 + 32);
            if (v33)
            {
              v34 = (*(v29 + 24) + *(v29 + 52));
              v35 = *v33;
              if (*v33)
              {
                v36 = v33 + 1;
                do
                {
                  *v34++ = v35;
                  v37 = *v36++;
                  v35 = v37;
                }

                while (v37);
              }

              v38 = *(v29 + 40);
              if (*(a1 + 465))
              {
                v39 = v38 == 0;
              }

              else
              {
                v39 = 1;
              }

              if (!v39)
              {
                *v34++ = *(a1 + 900);
                v40 = *v38;
                if (*v38)
                {
                  v41 = v38 + 1;
                  do
                  {
                    *v34++ = v40;
                    v42 = *v41++;
                    v40 = v42;
                  }

                  while (v42);
                }
              }

              *v34 = 0;
              v32 = *(a1 + 120);
            }
          }

          v32(*(a1 + 8), *(v29 + 24));
        }

        else if (*(a1 + 168))
        {
          reportDefault(a1, a3, v114, v113);
        }

        v86 = *(v29 + 80);
        if (v86)
        {
          do
          {
            v87 = *(a1 + 216);
            v88 = v86;
            if (v87)
            {
              v87(*(a1 + 8), **v86);
              v88 = *(v29 + 80);
            }

            v89 = *(v88 + 8);
            *(v29 + 80) = v89;
            *(v86 + 8) = *(a1 + 720);
            *(a1 + 720) = v86;
            *(*v86 + 8) = *(v86 + 16);
            v86 = v89;
          }

          while (v89);
        }

        v8 = a7;
        if (*(a1 + 596))
        {
          goto LABEL_143;
        }

LABEL_147:
        v94 = *(a1 + 912);
        if (v94 == 2)
        {
          *v14 = v113;
          return 35;
        }

        else if (v94 == 3)
        {
          *(a1 + 536) = epilogProcessor;
          v93 = v113;
          *v14 = v113;
LABEL_145:
          v22 = 0;
LABEL_168:
          *a6 = v93;
        }

        else
        {
          return epilogProcessor(a1, v113, a5, a6);
        }

        return v22;
      case 6:
        v43 = *(a1 + 128);
        if (v43)
        {
          if (*(a3 + 132))
          {
            v44 = *(a1 + 8);
            v45 = v114;
            v46 = (v21 - v114);
            goto LABEL_58;
          }

          while (1)
          {
            v47 = *(a1 + 104);
            v109 = *(a1 + 96);
            v48 = (*(a3 + 112))(a3, &v114, v21, &v109, v47);
            *v15 = v114;
            v43(*(a1 + 8), *(a1 + 96), v109 - *(a1 + 96));
            if (v48 <= 1)
            {
              break;
            }

            *v14 = v114;
            v21 = v113;
          }

          goto LABEL_59;
        }

        v8 = a7;
        if (!*(a1 + 168))
        {
          goto LABEL_143;
        }

LABEL_102:
        v78 = v114;
        v79 = a1;
        v80 = a3;
        v81 = v21;
        goto LABEL_142;
      case 7:
        v49 = *(a1 + 128);
        if (!v49)
        {
          goto LABEL_53;
        }

        LOBYTE(v109) = 10;
        v49(*(a1 + 8), &v109, 1);
        goto LABEL_143;
      case 8:
        v52 = *(a1 + 152);
        if (v52)
        {
          v52(*(a1 + 8));
        }

        else if (*(a1 + 168))
        {
          reportDefault(a1, a3, v114, v21);
        }

        v70 = doCdataSection(a1, a3, &v113, a5, a6, v8, a8);
        if (v70)
        {
          return v70;
        }

        if (v113)
        {
          goto LABEL_143;
        }

        v22 = 0;
        *(a1 + 536) = cdataSectionProcessor;
        return v22;
      case 9:
        LOBYTE(v109) = (*(a3 + 88))(a3, v114 + *(a3 + 128), v21 - *(a3 + 128));
        if (v109)
        {
          accountingDiffTolerated(a1, 9, &v109, &v109 + 1, 1);
          v53 = *(a1 + 128);
          if (v53)
          {
            v54 = *(a1 + 8);
            v55 = &v109;
            v56 = 1;
LABEL_65:
            v53(v54, v55, v56);
            goto LABEL_143;
          }

LABEL_140:
          if (!*(a1 + 168))
          {
            goto LABEL_143;
          }

LABEL_141:
          v78 = v114;
          v81 = v113;
          v79 = a1;
          v80 = a3;
LABEL_142:
          reportDefault(v79, v80, v78, v81);
          goto LABEL_143;
        }

        v82 = poolStoreString((v103 + 160), a3, v114 + *(a3 + 128), v113 - *(a3 + 128));
        if (!v82)
        {
          return 1;
        }

        v83 = v82;
        v84 = lookup(a1, v103, v82, 0);
        v85 = v84;
        *(v103 + 184) = *(v103 + 192);
        if (!*(v103 + 257) || *(v103 + 258))
        {
          if (!v84)
          {
            return 11;
          }

          if (!*(v84 + 58))
          {
            return 24;
          }

LABEL_113:
          if (*(v84 + 56))
          {
            return 12;
          }

          if (*(v84 + 6))
          {
            return 15;
          }

          if (*(v84 + 1))
          {
            v8 = a7;
            if (*(a1 + 592))
            {
              v70 = processInternalEntity(a1, v84, 0);
              if (v70)
              {
                return v70;
              }

              goto LABEL_143;
            }

            v53 = *(a1 + 248);
            if (v53)
            {
              v54 = *(a1 + 8);
              v55 = *v85;
              v56 = 0;
              goto LABEL_65;
            }

            goto LABEL_140;
          }

          v8 = a7;
          if (!*(a1 + 232))
          {
            goto LABEL_140;
          }

          v22 = 1;
          *(v84 + 56) = 1;
          Context = getContext(a1);
          *(v85 + 56) = 0;
          if (!Context)
          {
            return v22;
          }

          if (!(*(a1 + 232))(*(a1 + 240), Context, *(v85 + 4), *(v85 + 3), *(v85 + 5)))
          {
            return 21;
          }

          *(a1 + 816) = *(a1 + 824);
          goto LABEL_143;
        }

        if (v84)
        {
          goto LABEL_113;
        }

        v91 = *(a1 + 248);
        if (!v91)
        {
LABEL_136:
          v8 = a7;
          if (!*(a1 + 168))
          {
            goto LABEL_143;
          }

          goto LABEL_141;
        }

        v91(*(a1 + 8), v83, 0);
LABEL_59:
        v8 = a7;
LABEL_143:
        v92 = *(a1 + 912);
        v93 = v113;
        v114 = v113;
        *v14 = v113;
        if (v92 == 2)
        {
          return 35;
        }

        if (v92 == 3)
        {
          goto LABEL_145;
        }

        continue;
      case 10:
        v50 = (*(a3 + 80))(a3, v114);
        if ((v50 & 0x80000000) != 0)
        {
          return 14;
        }

        v43 = *(a1 + 128);
        if (!v43)
        {
          goto LABEL_136;
        }

        v51 = *(a1 + 8);
        v46 = XmlUtf8Encode(v50, &v109);
        v45 = &v109;
        v44 = v51;
LABEL_58:
        v43(v44, v45, v46);
        goto LABEL_59;
      case 11:
        if (!reportProcessingInstruction(a1, a3, v114, v21))
        {
          return 1;
        }

        goto LABEL_143;
      case 12:
        return v22;
      case 13:
        if (!reportComment(a1, a3, v114, v21))
        {
          return 1;
        }

        goto LABEL_143;
      default:
LABEL_53:
        if (!*(a1 + 168))
        {
          goto LABEL_143;
        }

        goto LABEL_102;
    }
  }
}

uint64_t storeRawNames(uint64_t a1)
{
  for (i = *(a1 + 696); i; i = *i)
  {
    v3 = *(i + 12) + 1;
    v4 = i[8];
    v5 = v4 + v3;
    v6 = i[1];
    if (v6 == (v4 + v3))
    {
      break;
    }

    v7 = *(i + 4);
    if (2147483646 - *(i + 12) < v7)
    {
      return 0;
    }

    v8 = v7 + v3;
    if (i[9] - v4 < v7 + v3)
    {
      v9 = v8;
      result = (*(a1 + 40))(*(a1 + 24), i[8], v8);
      if (!result)
      {
        return result;
      }

      v11 = i[8];
      if (i[3] == v11)
      {
        i[3] = result;
      }

      v12 = i[4];
      if (v12)
      {
        i[4] = (result + v12 - v11);
      }

      i[8] = result;
      i[9] = (result + v9);
      v5 = (result + v3);
      v6 = i[1];
      v7 = *(i + 4);
    }

    memcpy(v5, v6, v7);
    i[1] = v5;
  }

  return 1;
}