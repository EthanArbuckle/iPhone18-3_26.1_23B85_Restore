uint64_t sub_2770260FC(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_singletonAlloc")];
  qword_280A63870 = result;
  if (!result)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFlushingManager sharedManager]_block_invoke"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 148, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    return +[TSUAssertionHandler logBacktraceThrottled];
  }

  return result;
}

uint64_t sub_2770274F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(a1 + 32);
  if (*(v5 + 80) != *MEMORY[0x277D767B0])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager _bgTaskStarted]_block_invoke"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 670, 0, "Should only be one bg task at a time");
    +[TSUAssertionHandler logBacktraceThrottled];
    v5 = *(a1 + 32);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_277027630;
  v8[3] = &unk_27A701878;
  v8[4] = v5;
  *(*(a1 + 32) + 80) = [a2 beginBackgroundTaskWithExpirationHandler:v8];
  return objc_sync_exit(v4);
}

uint64_t sub_2770276B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *MEMORY[0x277D767B0];
  if (*(*(a1 + 32) + 80) != *MEMORY[0x277D767B0])
  {
    [a2 endBackgroundTask:?];
    *(*(a1 + 32) + 80) = v5;
  }

  return objc_sync_exit(v4);
}

uint64_t sub_2770277B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *(a1 + 32);
  if (*(v5 + 88) != *MEMORY[0x277D767B0])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFlushingManager _bgThreadActive]_block_invoke"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFlushingManager.mm"], 700, 0, "Should only be one bg thread active at a time");
    +[TSUAssertionHandler logBacktraceThrottled];
    v5 = *(a1 + 32);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2770278F4;
  v8[3] = &unk_27A701878;
  v8[4] = v5;
  *(*(a1 + 32) + 88) = [a2 beginBackgroundTaskWithExpirationHandler:v8];
  return objc_sync_exit(v4);
}

uint64_t sub_277027974(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = *MEMORY[0x277D767B0];
  if (*(*(a1 + 32) + 88) != *MEMORY[0x277D767B0])
  {
    [a2 endBackgroundTask:?];
    *(*(a1 + 32) + 88) = v5;
  }

  return objc_sync_exit(v4);
}

uint64_t sub_277027A00(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 8) = [a2 reloadCost];
  }

  *(a1 + 12) = 1;
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 12) = [a2 flushCost];
  }

  *(a1 + 24) = 0;
  *(a1 + 16) = 1;
  return a1;
}

void sub_277027A90(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_277027A90(a1, *a2);
    sub_277027A90(a1, a2[1]);

    operator delete(a2);
  }
}

void *sub_277027AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *(*a2 + 20);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2[4] + 20);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_277027BB8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_277027C10(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_277027C10(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_277027DAC(uint64_t **a1, _DWORD **a2)
{
  v3 = sub_277027E00(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_277027F48(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_277027E00(uint64_t a1, _DWORD **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_277027E7C(*(v3 + 32), *a2);
    if (v6 != -1)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (v6 == -1));
  }

  while (v3);
  if (v5 == v2 || sub_277027E7C(*a2, *(v5 + 32)) == -1)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_277027E7C(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = a2[4];
  if (v2 > v3)
  {
    return -1;
  }

  if (v2 < v3)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = 1.0;
  if (v5 == 1)
  {
    v7 = 1.5;
  }

  else
  {
    v7 = 1.0;
  }

  if (!v5)
  {
    v7 = 2.0;
  }

  if (!a1[3])
  {
    v7 = v7 * 1.5;
  }

  v8 = a2[2];
  if (v8 == 1)
  {
    v6 = 1.5;
  }

  if (!v8)
  {
    v6 = 2.0;
  }

  if (!a2[3])
  {
    v6 = v6 * 1.5;
  }

  v9 = v7 * a1[6];
  v10 = v6 * a2[6];
  if (v9 < v10)
  {
    return -1;
  }

  if (v9 > v10)
  {
    return 1;
  }

  v11 = v7 * a1[5];
  v12 = v6 * a2[5];
  if (v11 < v12)
  {
    return -1;
  }

  return v11 > v12;
}

uint64_t *sub_277027F48(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_277027FBC(v6, a2);
  return v3;
}

uint64_t *sub_277027FBC(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_27702833C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_277028390(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_277027F48(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_277028390(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(*a2 + 20);
  v6 = v2;
  do
  {
    v7 = *(*(v3 + 32) + 20);
    v8 = v7 >= v5;
    v9 = v7 < v5;
    if (v8)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * v9);
  }

  while (v3);
  if (v6 == v2 || v5 < *(*(v6 + 32) + 20))
  {
    return v2;
  }

  return v6;
}

uint64_t sub_2770283E4(uint64_t a1, _DWORD **a2)
{
  v2 = *sub_277028478(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_277028478(uint64_t a1, void *a2, _DWORD **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (sub_277027E7C(*a3, v4[4]) != -1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (sub_277027E7C(v7[4], *a3) != -1)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

id sub_277028728(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_2770289D0();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_277028A78(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_277028920(a1, v13);
    v7 = a1[1];
    result = sub_277028AF4(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_277028808(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_277028AF4(va);
  _Unwind_Resume(a1);
}

void sub_277028920(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_2770289E8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_277028A44(exception, a1);
  __cxa_throw(exception, off_27A701868, MEMORY[0x277D825F0]);
}

std::logic_error *sub_277028A44(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_277028A78(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_277028AC0();
}

void sub_277028AC0()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_277028AF4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_277028B48(void ***a1)
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
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2770291D4(void *a1)
{
  v1 = atomic_load((*(a1[8] + 8) + 24));
  if ((v1 & 1) == 0)
  {
    v15 = 0;
    v3 = a1[9];
    v4 = a1[4];
    v5 = a1[5];
    v14 = 0;
    v6 = [TSUSandboxedURL sandboxedURLByResolvingBookmarkData:v4 options:v3 relativeToURL:v5 bookmarkDataIsStale:&v15 error:&v14];
    v7 = v14;
    if ((atomic_exchange((*(a1[8] + 8) + 24), 1u) & 1) == 0)
    {
      v8 = a1[7];
      if (v8)
      {
        v9 = a1[6];
        if (v9)
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = sub_27702931C;
          v10[3] = &unk_27A7018C8;
          v12 = v8;
          v10[4] = v6;
          v13 = v15;
          v11 = v7;
          dispatch_async(v9, v10);
        }

        else
        {
          (v8)[2](v8, v6, v15, v7);
        }
      }
    }
  }
}

void sub_277029338(uint64_t a1)
{
  if ((atomic_exchange((*(*(a1 + 40) + 8) + 24), 1u) & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    (*(v2 + 16))(v2, 0, 0, v3);
  }
}

uint64_t sub_27702A338()
{
  if (qword_280A63888 != -1)
  {
    sub_277112D08();
  }

  return qword_280A63880;
}

uint64_t sub_27702A370()
{
  result = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  qword_280A63880 = result;
  return result;
}

uint64_t TSUHash(char *a1, uint64_t a2)
{
  for (result = 0xCBF29CE484222325; a2; --a2)
  {
    v4 = *a1++;
    result = 0x100000001B3 * (result ^ v4);
  }

  return result;
}

uint64_t TSUHashWithSeed(char *a1, uint64_t a2, uint64_t a3)
{
  for (; a2; --a2)
  {
    v3 = *a1++;
    a3 = 0x100000001B3 * (a3 ^ v3);
  }

  return a3;
}

uint64_t sub_27702A414()
{
  if (qword_280A63890 != -1)
  {
    sub_277112D1C();
  }

  return qword_2815AEAC8;
}

void sub_27702A44C()
{
  size = 0;
  sysctlbyname("hw.machine", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0x266587DDuLL);
  sysctlbyname("hw.machine", v0, &size, 0, 0);
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v0];
  free(v0);
  qword_2815AEAC8 = v1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[UIDevice(TSUAdditions) platformString]_block_invoke"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/UIDevice_TSUAdditions.m"], 36, 0, "invalid nil value for '%{public}s'", "s_platformString");
    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

void sub_27702A7E0(uint64_t a1, void *a2, char a3)
{
  if (TSUAssertCat_init_token == -1)
  {
    if (a3)
    {
LABEL_3:
      v7 = *(a1 + 40);
      v6 = a1 + 40;
      os_unfair_lock_lock((*(v7 + 8) + 32));
      v8 = *(v6 - 8);
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Terminating application due to %@", a2];
      goto LABEL_7;
    }
  }

  else
  {
    sub_277112D30();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (*(a1 + 48))
  {
    return;
  }

  v10 = *(a1 + 40);
  v6 = a1 + 40;
  os_unfair_lock_lock((*(v10 + 8) + 32));
  v8 = *(v6 - 8);
  v9 = [a2 copy];
LABEL_7:
  [v8 addObject:v9];
  v11 = (*(*v6 + 8) + 32);

  os_unfair_lock_unlock(v11);
}

os_log_t sub_27702A8CC()
{
  result = TSULogCreateCategory("TSUAssertCat");
  TSUAssertCat_log_t = result;
  return result;
}

os_log_t sub_27702AA1C()
{
  result = TSULogCreateCategory("TSUAssertCat");
  TSUAssertCat_log_t = result;
  return result;
}

id sub_27702B074()
{
  qword_280A638B0 = [MEMORY[0x277CBEAC0] sharedKeySetForKeys:&unk_28864B5C0];
  result = objc_alloc_init(MEMORY[0x277CBEB38]);
  qword_280A638B8 = result;
  dword_280A638C0 = 0;
  return result;
}

void TSUSetCrashReporterInfov(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v8 = a2;
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) tsu_initRedactedWithFormat:v2 arguments:v7];
  v4 = [v3 UTF8String];
  v6 = 0;
  if (v4)
  {
    asprintf(&v6, "%s", v4);
  }

  v5 = v6;
  if (!v6)
  {
    v5 = "TSUSetCrashReporterInfo: unknown reason";
  }

  qword_280A65C90 = v5;
}

uint64_t sub_27702B264(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  v149[3] = *MEMORY[0x277D85DE8];
  if ((~a3 & 0x7800000000000000) == 0)
  {
    if ((~a3 & 0x7C00000000000000) != 0)
    {
      v5 = (result + 4);
      if (a3 < 0)
      {
        v12 = 1718503725;
      }

      else
      {
        v12 = 1718503723;
      }

      *result = v12;
    }

    else
    {
      if (a3 >= 0)
      {
        v4 = 43;
      }

      else
      {
        v4 = 45;
      }

      *result = v4;
      if ((~a3 & 0x7E00000000000000) != 0)
      {
        v5 = (result + 4);
        *(result + 1) = 24910;
        *(result + 3) = 78;
      }

      else
      {
        *(result + 1) = 1314999891;
        v5 = (result + 5);
      }
    }

    goto LABEL_174;
  }

  v6 = a3 & 0x1FFFFFFFFFFFFLL;
  if (a3 & 0x1FFFFFFFFFFFFLL | a2)
  {
    v7 = 4 * a3;
    if ((a3 & 0x6000000000000000) != 0x6000000000000000)
    {
      v7 = a3;
    }

    v8 = (v7 >> 49) & 0x3FFF;
    v9 = v8 - 6176;
    if (a3 < 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = 43;
    }

    *result = v10;
    if (v6 > 0x1ED09BEAD87C0 || (a2 > 0x378D8E63FFFFFFFFLL ? (v17 = v6 == 0x1ED09BEAD87C0) : (v17 = 0), !v17 ? (v18 = 0) : (v18 = 1), (a3 & 0x6000000000000000) == 0x6000000000000000 || v18))
    {
      *(result + 1) = 48;
      v11 = 2;
LABEL_163:
      *(v3 + v11) = 69;
      v130 = 6176 - v8;
      v131 = v8 >> 5 >= 0xC1;
      if (v8 >> 5 >= 0xC1)
      {
        v132 = 43;
      }

      else
      {
        v132 = 45;
      }

      if (v131)
      {
        v130 = v9;
      }

      *(v3 + v11 + 1) = v132;
      v133 = v11 + 2;
      v134 = (16778 * v130) >> 24;
      v135 = -1000 * v134 + v130;
      if (v130 >= 0x3E8)
      {
        *(v3 + v133) = v134 + 48;
        v138 = 3 * v135;
        *(v3 + v11 + 3) = a10111213141516[v138 + 180];
        v139 = &a10111213141516[v138 + 180];
        v133 = v11 + 5;
        *(v3 + v11 + 4) = v139[1];
        v136 = v139[2];
        v137 = 6;
      }

      else if (v135 > 9)
      {
        if (v135 > 0x63)
        {
          v141 = 3 * v135;
          *(v3 + v133) = a10111213141516[v141 + 180];
          v142 = &a10111213141516[v141 + 180];
          v133 = v11 + 4;
          *(v3 + v11 + 3) = v142[1];
          v136 = v142[2];
          v137 = 5;
        }

        else
        {
          v140 = 2 * v135;
          *(v3 + v133) = a10111213141516[v140 - 20];
          v133 = v11 + 3;
          v136 = a10111213141516[v140 - 19];
          v137 = 4;
        }
      }

      else
      {
        v136 = v135 | 0x30;
        v137 = 3;
      }

      *(v3 + v133) = v136;
      v5 = (v3 + v11 + v137);
      goto LABEL_174;
    }

    v19 = a2 & 0x7FFFFFFFFFFFFFFLL;
    *(&v21 + 1) = a3 & 0x1FFFFFFFFFFFFLL;
    *&v21 = a2;
    v20 = v21 >> 59;
    if (!v20)
    {
      goto LABEL_47;
    }

    v22 = 0;
    v23 = "";
    do
    {
      v24 = &v23[16 * (v20 & 0x3F)];
      v22 += *v24;
      v19 += *(v24 + 1);
      if (((v19 + qword_280A62C10) & qword_280A62C18) != 0)
      {
        ++v22;
        v19 = (v19 + qword_280A62C10) & 0xFFFFFFFFFFFFFFFLL;
      }

      v23 += 1024;
      v25 = v20 > 0x3F;
      v20 >>= 6;
    }

    while (v25);
    if (v22)
    {
      v26 = dword_280A62C2C;
      if (v22 >= dword_280A62C2C)
      {
        v39 = (qword_280A62C20 * (v22 >> 28)) >> 33;
        v40 = v22 - v39 * dword_280A62C2C;
        if (v40 < dword_280A62C2C)
        {
          LODWORD(v22) = ((qword_280A62C20 * (v22 >> 28)) >> 32) >> 1;
        }

        else
        {
          LODWORD(v22) = v39 + 1;
        }

        if (v40 < dword_280A62C2C)
        {
          v41 = 0;
        }

        else
        {
          v41 = dword_280A62C2C;
        }

        v42 = v40 - v41;
        if (dword_280A62C30 <= v22)
        {
          v73 = (34359 * (v22 >> 17)) >> 18;
          v74 = v22 - 1000000 * v73;
          v75 = v74 - 1000000;
          if (v74 > 0xF423F)
          {
            LODWORD(v22) = v73 + 1;
          }

          else
          {
            v75 = v74;
            LODWORD(v22) = v73;
          }

          v76 = (v75 & 0x3FF) + 32 * (v75 >> 10) - 8 * (v75 >> 10);
          v77 = (v76 >> 10) + (v75 >> 10);
          v78 = (v76 & 0x3FF) + 32 * (v76 >> 10) - 8 * (v76 >> 10);
          if (v78 > 0x3E7)
          {
            ++v77;
            v78 -= 1000;
          }

          v144 = v77;
          v145 = v78;
          v79 = (34359 * (v42 >> 17)) >> 18;
          v80 = v42 - 1000000 * v79;
          if (v80 > 0xF423F)
          {
            v80 -= 1000000;
            ++v79;
          }

          v81 = (v80 & 0x3FF) + 32 * (v80 >> 10) - 8 * (v80 >> 10);
          v82 = (v81 >> 10) + (v80 >> 10);
          v83 = (v81 & 0x3FF) + 32 * (v81 >> 10) - 8 * (v81 >> 10);
          if (v83 > 0x3E7)
          {
            ++v82;
            v83 -= 1000;
          }

          v146 = v79;
          v147 = v82;
          v27 = v149;
          v148 = v83;
        }

        else if (dword_280A62C34 <= v22)
        {
          v97 = (v22 & 0x3FF) + 32 * (v22 >> 10) - 8 * (v22 >> 10);
          LODWORD(v22) = (v97 >> 10) + (v22 >> 10);
          v98 = (v97 & 0x3FF) + 32 * (v97 >> 10) - 8 * (v97 >> 10);
          if (v98 > 0x3E7)
          {
            LODWORD(v22) = v22 + 1;
            v98 -= 1000;
          }

          v99 = (34359 * (v42 >> 17)) >> 18;
          v100 = v42 - 1000000 * v99;
          if (v100 > 0xF423F)
          {
            v100 -= 1000000;
            ++v99;
          }

          v101 = (v100 & 0x3FF) + 32 * (v100 >> 10) - 8 * (v100 >> 10);
          v102 = (v101 >> 10) + (v100 >> 10);
          v103 = (v101 & 0x3FF) + 32 * (v101 >> 10) - 8 * (v101 >> 10);
          if (v103 <= 0x3E7)
          {
            v104 = v102;
          }

          else
          {
            v103 -= 1000;
            v104 = v102 + 1;
          }

          v144 = v98;
          v145 = v99;
          v27 = &v148;
          v146 = v104;
          v147 = v103;
        }

        else
        {
          v43 = (34359 * (v42 >> 17)) >> 18;
          v44 = v42 - 1000000 * v43;
          if (v44 > 0xF423F)
          {
            v44 -= 1000000;
            ++v43;
          }

          v45 = (v44 & 0x3FF) + 32 * (v44 >> 10) - 8 * (v44 >> 10);
          v46 = (v45 >> 10) + (v44 >> 10);
          v47 = (v45 & 0x3FF) + 32 * (v45 >> 10) - 8 * (v45 >> 10);
          if (v47 > 0x3E7)
          {
            ++v46;
            v47 -= 1000;
          }

          v144 = v43;
          v145 = v46;
          v27 = &v147;
          v146 = v47;
        }
      }

      else if (dword_280A62C30 <= v22)
      {
        v66 = (34359 * (v22 >> 17)) >> 18;
        v67 = v22 - 1000000 * v66;
        v68 = v67 - 1000000;
        if (v67 > 0xF423F)
        {
          LODWORD(v22) = v66 + 1;
        }

        else
        {
          v68 = v67;
          LODWORD(v22) = v66;
        }

        v69 = (v68 & 0x3FF) + 32 * (v68 >> 10) - 8 * (v68 >> 10);
        v70 = (v69 >> 10) + (v68 >> 10);
        v71 = (v69 & 0x3FF) + 32 * (v69 >> 10) - 8 * (v69 >> 10);
        v72 = v71 - 1000;
        if (v71 <= 0x3E7)
        {
          v72 = v71;
        }

        else
        {
          ++v70;
        }

        v27 = &v146;
        v144 = v70;
        v145 = v72;
      }

      else if (dword_280A62C34 <= v22)
      {
        v94 = (v22 & 0x3FF) + 32 * (v22 >> 10) - 8 * (v22 >> 10);
        LODWORD(v22) = (v94 >> 10) + (v22 >> 10);
        v95 = (v94 & 0x3FF) + 32 * (v94 >> 10) - 8 * (v94 >> 10);
        v96 = v95 - 1000;
        if (v95 <= 0x3E7)
        {
          v96 = v95;
        }

        else
        {
          LODWORD(v22) = v22 + 1;
        }

        v27 = &v145;
        v144 = v96;
      }

      else
      {
        v27 = &v144;
      }

      v105 = (qword_280A62C20 * (v19 >> 28)) >> 33;
      v106 = v19 - v105 * dword_280A62C2C;
      if (v106 < dword_280A62C2C)
      {
        v26 = 0;
      }

      else
      {
        LODWORD(v105) = v105 + 1;
      }

      v107 = v106 - v26;
      v108 = (34359 * (v105 >> 17)) >> 18;
      v109 = v105 - 1000000 * v108;
      if (v109 > 0xF423F)
      {
        v109 -= 1000000;
        ++v108;
      }

      v110 = (v109 & 0x3FF) + 32 * (v109 >> 10) - 8 * (v109 >> 10);
      v111 = (v110 >> 10) + (v109 >> 10);
      v112 = (v110 & 0x3FF) + 32 * (v110 >> 10) - 8 * (v110 >> 10);
      if (v112 > 0x3E7)
      {
        ++v111;
        v112 -= 1000;
      }

      *v27 = v108;
      v27[1] = v111;
      v113 = (34359 * (v107 >> 17)) >> 18;
      v114 = v107 - 1000000 * v113;
      if (v114 <= 0xF423F)
      {
        v115 = v113;
      }

      else
      {
        v114 -= 1000000;
        v115 = v113 + 1;
      }

      v116 = (v114 & 0x3FF) + 32 * (v114 >> 10) - 8 * (v114 >> 10);
      v117 = (v116 >> 10) + (v114 >> 10);
      v118 = (v116 & 0x3FF) + 32 * (v116 >> 10) - 8 * (v116 >> 10);
      if (v118 > 0x3E7)
      {
        ++v117;
      }

      v27[2] = v112;
      v27[3] = v115;
      if (v118 > 0x3E7)
      {
        v118 -= 1000;
      }

      v29 = (v27 + 6);
      v27[4] = v117;
      v27[5] = v118;
      LODWORD(v19) = v22;
    }

    else
    {
LABEL_47:
      v28 = dword_280A62C2C;
      if (v19 >= dword_280A62C2C)
      {
        v30 = (qword_280A62C20 * (v19 >> 28)) >> 33;
        v31 = v19 - v30 * dword_280A62C2C;
        if (v31 < dword_280A62C2C)
        {
          LODWORD(v19) = ((qword_280A62C20 * (v19 >> 28)) >> 32) >> 1;
        }

        else
        {
          LODWORD(v19) = v30 + 1;
        }

        if (v31 < dword_280A62C2C)
        {
          v28 = 0;
        }

        v32 = v31 - v28;
        if (dword_280A62C30 <= v19)
        {
          v55 = (34359 * (v19 >> 17)) >> 18;
          v56 = v19 - 1000000 * v55;
          v57 = v56 - 1000000;
          if (v56 > 0xF423F)
          {
            LODWORD(v19) = v55 + 1;
          }

          else
          {
            v57 = v56;
            LODWORD(v19) = v55;
          }

          v58 = (v57 & 0x3FF) + 32 * (v57 >> 10) - 8 * (v57 >> 10);
          v59 = (v58 >> 10) + (v57 >> 10);
          v60 = (v58 & 0x3FF) + 32 * (v58 >> 10) - 8 * (v58 >> 10);
          if (v60 > 0x3E7)
          {
            ++v59;
            v60 -= 1000;
          }

          v144 = v59;
          v145 = v60;
          v61 = (34359 * (v32 >> 17)) >> 18;
          v62 = v32 - 1000000 * v61;
          if (v62 > 0xF423F)
          {
            v62 -= 1000000;
            ++v61;
          }

          v63 = (v62 & 0x3FF) + 32 * (v62 >> 10) - 8 * (v62 >> 10);
          v64 = (v63 >> 10) + (v62 >> 10);
          v65 = (v63 & 0x3FF) + 32 * (v63 >> 10) - 8 * (v63 >> 10);
          if (v65 > 0x3E7)
          {
            ++v64;
            v65 -= 1000;
          }

          v146 = v61;
          v147 = v64;
          v29 = v149;
          v148 = v65;
        }

        else if (dword_280A62C34 <= v19)
        {
          v86 = (v19 & 0x3FF) + 32 * (v19 >> 10) - 8 * (v19 >> 10);
          LODWORD(v19) = (v86 >> 10) + (v19 >> 10);
          v87 = (v86 & 0x3FF) + 32 * (v86 >> 10) - 8 * (v86 >> 10);
          if (v87 > 0x3E7)
          {
            v87 -= 1000;
            LODWORD(v19) = v19 + 1;
          }

          v88 = (34359 * (v32 >> 17)) >> 18;
          v89 = v32 - 1000000 * v88;
          if (v89 <= 0xF423F)
          {
            v90 = v88;
          }

          else
          {
            v89 -= 1000000;
            v90 = v88 + 1;
          }

          v91 = (v89 & 0x3FF) + 32 * (v89 >> 10) - 8 * (v89 >> 10);
          v92 = (v91 >> 10) + (v89 >> 10);
          v93 = (v91 & 0x3FF) + 32 * (v91 >> 10) - 8 * (v91 >> 10);
          if (v93 > 0x3E7)
          {
            ++v92;
            v93 -= 1000;
          }

          v144 = v87;
          v145 = v90;
          v29 = &v148;
          v146 = v92;
          v147 = v93;
        }

        else
        {
          v33 = (34359 * (v32 >> 17)) >> 18;
          v34 = v32 - 1000000 * v33;
          if (v34 <= 0xF423F)
          {
            v35 = v33;
          }

          else
          {
            v34 -= 1000000;
            v35 = v33 + 1;
          }

          v36 = (v34 & 0x3FF) + 32 * (v34 >> 10) - 8 * (v34 >> 10);
          v37 = (v36 >> 10) + (v34 >> 10);
          v38 = (v36 & 0x3FF) + 32 * (v36 >> 10) - 8 * (v36 >> 10);
          if (v38 > 0x3E7)
          {
            ++v37;
            v38 -= 1000;
          }

          v144 = v35;
          v145 = v37;
          v29 = &v147;
          v146 = v38;
        }
      }

      else if (dword_280A62C30 <= v19)
      {
        v48 = (34359 * (v19 >> 17)) >> 18;
        v49 = v19 - 1000000 * v48;
        v50 = v49 - 1000000;
        if (v49 > 0xF423F)
        {
          LODWORD(v19) = v48 + 1;
        }

        else
        {
          v50 = v49;
          LODWORD(v19) = v48;
        }

        v51 = (v50 & 0x3FF) + 32 * (v50 >> 10) - 8 * (v50 >> 10);
        v52 = (v51 >> 10) + (v50 >> 10);
        v53 = (v51 & 0x3FF) + 32 * (v51 >> 10) - 8 * (v51 >> 10);
        if (v53 <= 0x3E7)
        {
          v54 = v52;
        }

        else
        {
          v54 = v52 + 1;
        }

        if (v53 > 0x3E7)
        {
          v53 -= 1000;
        }

        v29 = &v146;
        v144 = v54;
        v145 = v53;
      }

      else if (dword_280A62C34 <= v19)
      {
        v84 = (v19 & 0x3FF) + 32 * (v19 >> 10) - 8 * (v19 >> 10);
        LODWORD(v19) = (v84 >> 10) + (v19 >> 10);
        v85 = (v84 & 0x3FF) + 32 * (v84 >> 10) - 8 * (v84 >> 10);
        if (v85 > 0x3E7)
        {
          LODWORD(v19) = v19 + 1;
          v85 -= 1000;
        }

        v29 = &v145;
        v144 = v85;
      }

      else
      {
        v29 = &v144;
      }
    }

    v119 = &a00000100200300[3 * v19];
    if (v19 < 0x64)
    {
      v122 = 2;
      if (v19 < 0xA)
      {
        result = v3 + 1;
        goto LABEL_157;
      }

      v121 = 3;
      v120 = (v3 + 1);
    }

    else
    {
      v120 = (v3 + 2);
      *(v3 + 1) = *v119;
      v121 = 4;
      v122 = 3;
    }

    result = v3 + v122;
    *v120 = v119[1];
    v122 = v121;
LABEL_157:
    v123 = v3 + v122;
    *result = v119[2];
    if (((v29 - v143) >> 2) < 2)
    {
      v129 = v3 + v122;
    }

    else
    {
      v124 = &v144;
      v125 = (((v29 - v143) >> 2) & 0x7FFFFFFF) - 1;
      do
      {
        v126 = *v124++;
        v127 = &a00000100200300[3 * v126];
        *v123 = *v127;
        v128 = v127[2];
        v129 = v123 + 3;
        *(v123 + 2) = v128;
        v123 += 3;
        --v125;
      }

      while (v125);
    }

    v11 = v129 - v3;
    goto LABEL_163;
  }

  if (a3 < 0)
  {
    v13 = 45;
  }

  else
  {
    v13 = 43;
  }

  *result = v13;
  *(result + 1) = 17712;
  v14 = (a3 >> 49) & 0x3FFF;
  if ((((a3 >> 49) >> 12) & 3) == 3)
  {
    LODWORD(v14) = (a3 >> 47) & 0x3FFF;
  }

  v15 = v14 - 6176;
  if (v14 >> 5 < 0xC1)
  {
    result = sprintf((result + 3), "%d", v15);
    v5 = (v3 + result + 3);
  }

  else
  {
    *(result + 3) = 43;
    v16 = result + 4;
    result = sprintf((result + 4), "%u", v15);
    v5 = (v16 + result);
  }

LABEL_174:
  *v5 = 0;
  return result;
}

uint64_t sub_27702BE0C(unsigned __int8 *a1, int a2, _DWORD *a3)
{
  v116 = *MEMORY[0x277D85DE8];
  v111 = a2;
  v112 = 0uLL;
  if (!a1)
  {
    return xmmword_277123880;
  }

  while (1)
  {
    v5 = *a1;
    v6 = v5;
    if (v5 > 0x2E)
    {
      goto LABEL_77;
    }

    if (((1 << v5) & 0x100000200) == 0)
    {
      break;
    }

    ++a1;
  }

  if (((1 << v5) & 0x680000000000) == 0)
  {
    if (*a1)
    {
LABEL_77:
      if ((v5 - 58) >= 0xFFFFFFF6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = 0;
    }

    *&v112 = 0;
    if (((v6 - 65) & 0xFEu) >= 0x1A)
    {
      v32 = v6;
    }

    else
    {
      v32 = v6 + 32;
    }

    if (v32 == 115)
    {
      v47 = a1[1];
      if (((a1[1] - 65) & 0xFEu) < 0x1A)
      {
        v47 += 32;
      }

      if (v47 == 110)
      {
        v48 = a1[2];
        if (((a1[2] - 65) & 0xFEu) < 0x1A)
        {
          v48 += 32;
        }

        if (v48 == 97)
        {
          v49 = a1[3];
          if (((a1[3] - 65) & 0xFEu) < 0x1A)
          {
            v49 += 32;
          }

          if (v49 == 110)
          {
            goto LABEL_129;
          }
        }
      }
    }

    else if (v32 == 105)
    {
      v33 = a1[1];
      if (((a1[1] - 65) & 0xFEu) < 0x1A)
      {
        v33 += 32;
      }

      if (v33 == 110)
      {
        v34 = a1[2];
        if (((a1[2] - 65) & 0xFEu) < 0x1A)
        {
          v34 += 32;
        }

        if (v34 == 102)
        {
          v35 = a1[3];
          if (!a1[3])
          {
            goto LABEL_106;
          }

          if (((v35 - 65) & 0xFEu) < 0x1A)
          {
            v35 += 32;
          }

          if (v35 == 105)
          {
            v36 = a1[4];
            if (((a1[4] - 65) & 0xFEu) < 0x1A)
            {
              v36 += 32;
            }

            if (v36 == 110)
            {
              v37 = a1[5];
              if (((a1[5] - 65) & 0xFEu) < 0x1A)
              {
                v37 += 32;
              }

              if (v37 == 105)
              {
                v38 = a1[6];
                if (((a1[6] - 65) & 0xFEu) < 0x1A)
                {
                  v38 += 32;
                }

                if (v38 == 116)
                {
                  v39 = a1[7];
                  if (((a1[7] - 65) & 0xFEu) < 0x1A)
                  {
                    v39 += 32;
                  }

                  if (v39 == 121 && !a1[8])
                  {
LABEL_106:
                    v18 = 0x7800000000000000;
                    goto LABEL_131;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_130:
    v18 = 0x7C00000000000000;
    goto LABEL_131;
  }

LABEL_6:
  v7 = a1[1];
  if (((a1[1] - 65) & 0xFEu) < 0x1A)
  {
    v7 += 32;
  }

  if (v7 == 115)
  {
    v15 = a1[2];
    if (((a1[2] - 65) & 0xFEu) < 0x1A)
    {
      v15 += 32;
    }

    if (v15 != 110)
    {
      goto LABEL_49;
    }

    v16 = a1[3];
    if (((a1[3] - 65) & 0xFEu) < 0x1A)
    {
      v16 += 32;
    }

    if (v16 != 97)
    {
      goto LABEL_49;
    }

    v17 = a1[4];
    if (((a1[4] - 65) & 0xFEu) < 0x1A)
    {
      v17 += 32;
    }

    if (v17 != 110)
    {
      goto LABEL_49;
    }

    *&v112 = 0;
    if (v5 == 45)
    {
      v18 = 0xFE00000000000000;
LABEL_131:
      *(&v112 + 1) = v18;
      return v112;
    }

LABEL_129:
    v18 = 0x7E00000000000000;
    goto LABEL_131;
  }

  if (v7 == 105)
  {
    v8 = a1[2];
    if (((a1[2] - 65) & 0xFEu) < 0x1A)
    {
      v8 += 32;
    }

    if (v8 == 110)
    {
      v9 = a1[3];
      if (((a1[3] - 65) & 0xFEu) < 0x1A)
      {
        v9 += 32;
      }

      if (v9 == 102)
      {
        v10 = a1[4];
        if (!a1[4])
        {
          goto LABEL_33;
        }

        if (((v10 - 65) & 0xFEu) < 0x1A)
        {
          v10 += 32;
        }

        if (v10 == 105)
        {
          v11 = a1[5];
          if (((a1[5] - 65) & 0xFEu) < 0x1A)
          {
            v11 += 32;
          }

          if (v11 == 110)
          {
            v12 = a1[6];
            if (((a1[6] - 65) & 0xFEu) < 0x1A)
            {
              v12 += 32;
            }

            if (v12 == 105)
            {
              v13 = a1[7];
              if (((a1[7] - 65) & 0xFEu) < 0x1A)
              {
                v13 += 32;
              }

              if (v13 == 116)
              {
                v14 = a1[8];
                if (((a1[8] - 65) & 0xFEu) < 0x1A)
                {
                  v14 += 32;
                }

                if (v14 == 121 && !a1[9])
                {
LABEL_33:
                  *&v112 = 0;
                  if (v5 == 45)
                  {
                    v18 = 0xF800000000000000;
                    goto LABEL_131;
                  }

                  if (v5 != 43)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_106;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_49:
  v19 = v5 == 45;
  v20 = v19 << 63;
  if (v5 == 43)
  {
    LODWORD(v19) = 1;
  }

  if (v19)
  {
    v21 = a1 + 1;
  }

  else
  {
    v21 = a1;
  }

  v22 = *v21;
  if (v22 != 46 && (v22 - 58) <= 0xFFFFFFF5)
  {
LABEL_75:
    v31 = v20 | 0x7C00000000000000;
    goto LABEL_76;
  }

  v24 = *v21 == 46;
  v25 = v24;
  if (v24)
  {
    v26 = v21 + 1;
  }

  else
  {
    v26 = v21;
  }

  v27 = *v26;
  if (v27 != 48)
  {
    LODWORD(v29) = 0;
LABEL_108:
    v40 = v27 - 48;
    if (v25)
    {
      if (v40 <= 9)
      {
        v41 = 0;
        v42 = 0;
        do
        {
          if (v41 > 0x21)
          {
            if (v41 <= 0x63)
            {
              v114[v41 - 1] = v27;
            }

            if (v27 > 48)
            {
              v42 = 1;
            }
          }

          else
          {
            v114[v41 - 1] = v27;
          }

          v43 = v26[v41 + 1];
          v27 = v26[++v41];
        }

        while ((v43 - 48) < 0xA);
        LODWORD(v44) = 0;
        v26 += v41;
        v45 = v41;
        if (!v27)
        {
          goto LABEL_119;
        }

        goto LABEL_143;
      }

      v42 = 0;
      LODWORD(v41) = 0;
      v45 = 0;
      LODWORD(v44) = 0;
      if (v27)
      {
        goto LABEL_143;
      }
    }

    else
    {
      if (v40 > 9)
      {
        v42 = 0;
        LODWORD(v44) = 0;
      }

      else
      {
        v44 = 0;
        v42 = 0;
        do
        {
          if (v44 > 0x21)
          {
            if (v44 <= 0x63)
            {
              v114[v44 - 1] = v27;
            }

            if (v27 > 48)
            {
              v42 = 1;
            }
          }

          else
          {
            v114[v44 - 1] = v27;
          }

          v50 = v26[v44 + 1];
          v27 = v26[++v44];
        }

        while ((v50 - 48) < 0xA);
        v26 += v44;
      }

      if (v27 == 46)
      {
        v54 = *++v26;
        v53 = v54;
        if (!v54)
        {
          v45 = 0;
          v46 = 0;
          v27 = 0;
          LODWORD(v41) = v44;
          goto LABEL_186;
        }

        v27 = v53;
        if ((v53 - 48) > 9)
        {
          LODWORD(v41) = v44;
        }

        else
        {
          v55 = v44;
          LODWORD(v41) = v44;
          do
          {
            if (v55 > 0x21)
            {
              if (v55 <= 0x63)
              {
                v114[v55 - 1] = v27;
              }

              if (v27 > 48)
              {
                v42 = 1;
              }
            }

            else
            {
              v114[v55 - 1] = v27;
            }

            v56 = *++v26;
            v27 = v56;
            ++v55;
            LODWORD(v41) = v41 + 1;
          }

          while ((v56 - 48) < 0xA);
        }

        v45 = v41 - v44;
        if (!v27)
        {
          goto LABEL_119;
        }

LABEL_143:
        if ((v27 & 0xFFFFFFDF) != 0x45)
        {
          return xmmword_277123880;
        }

        v51 = v26[1];
        if ((v26[1] - 58) <= 0xFFFFFFF5 && (v51 != 45 && v51 != 43 || (v26[2] - 58) <= 0xFFFFFFF5))
        {
          return xmmword_277123880;
        }

        if (v51 == 45)
        {
          v27 = -1;
        }

        else
        {
          if (v51 != 43)
          {
            v27 = 0;
            v58 = 1;
LABEL_176:
            v59 = &v26[v58];
            v46 = v51 - 48;
            if (v51 == 48)
            {
              do
              {
                v62 = *++v59;
                v60 = v62;
              }

              while (v62 == 48);
            }

            else
            {
              v61 = *++v59;
              v60 = v61;
            }

            v63 = v60 - 48;
            if (v63 <= 9)
            {
              v64 = 1;
              do
              {
                v46 = 10 * v46 + v63;
                v63 = v59[v64] - 48;
              }

              while (v63 <= 9 && v64++ < 6);
            }

LABEL_186:
            v66 = (v27 + v46) ^ v27;
            if (v41 <= 34)
            {
              v67 = v66 - (v45 + v29) + 6176;
              if (v67 < 0)
              {
                *&v112 = 0;
                *(&v112 + 1) = v20;
              }

              if (v41)
              {
                v68 = v113 - 48;
                if (v41 > 19)
                {
                  v86 = (v41 - 17);
                  v87 = v114;
                  v88 = v86 - 1;
                  do
                  {
                    v89 = *v87++;
                    v68 = v89 + 10 * v68 - 48;
                    --v88;
                  }

                  while (v88);
                  v90 = v114[v86 - 1] - 48;
                  v91 = v41 - 16;
                  v92 = &v114[(v41 - 16) - 1];
                  do
                  {
                    v93 = *v92++;
                    v90 = v93 + 10 * v90 - 48;
                    ++v91;
                  }

                  while (v41 > v91);
                  v94 = 1569325056 * v68;
                  v95 = 23283064 * v68 + 1569325056 * HIDWORD(v68) + HIDWORD(v94);
                  v72 = (__PAIR128__(23283064 * HIDWORD(v68), v94 | (v95 << 32)) + __PAIR128__(HIDWORD(v95), v90)) >> 64;
                  v68 = (v94 | (v95 << 32)) + v90;
                }

                else
                {
                  if (v41 >= 2)
                  {
                    v69 = v114;
                    v70 = v41 - 1;
                    do
                    {
                      v71 = *v69++;
                      v68 = v71 + 10 * v68 - 48;
                      --v70;
                    }

                    while (v70);
                  }

                  v72 = 0;
                }
              }

              else
              {
                v72 = 0;
                v68 = 0;
              }

LABEL_243:
              sub_27702C8E0(&v112, v20, v67, v68, v72, &v111, a3);
              return v112;
            }

            v67 = v44 - v29 + 6142 + v66;
            if (v67 < 0)
            {
              *&v112 = 0;
              *(&v112 + 1) = v20;
            }

            v73 = 0;
            v74 = v113 - 48;
            do
            {
              v74 = v114[v73++] + 10 * v74 - 48;
            }

            while (v73 != 16);
            v75 = 0;
            v76 = v114[16] - 48;
            do
            {
              v77 = v114[v75 + 17];
              v76 = v77 + 10 * v76 - 48;
              ++v75;
            }

            while (v75 != 16);
            v78 = 0;
            v79 = 100000000000000000;
            if (a2 > 1)
            {
              if (a2 == 2)
              {
                if (v6 != 45)
                {
                  v96 = v115;
                  v97 = v41 - 34;
                  v78 = 1;
                  do
                  {
                    v98 = *v96++;
                    if (v98 > 48)
                    {
                      goto LABEL_231;
                    }
                  }

                  while (--v97);
                }

LABEL_230:
                v78 = 0;
                goto LABEL_231;
              }

              if (a2 != 4)
              {
LABEL_231:
                v99 = 10 * v76;
                v100 = 1000000000000000000;
                if (v67 <= 0xFFFFFFDE)
                {
                  v100 = 100000000000000000;
                  v99 = v76;
                }

                v101 = v67 - (v67 > 0xFFFFFFDE);
                if (v101 == -34 && v74 > 0xB1A2BC2EC50000)
                {
                  v101 = -34;
                  v102 = 0;
                }

                else
                {
                  v102 = v78;
                }

                if (v67 < 0)
                {
                  v67 = v101;
                  v79 = v100;
                  v78 = v102;
                  v76 = v99;
                }

                goto LABEL_238;
              }

              v78 = v115[0] > 52;
              if (v67 < 0)
              {
                v83 = v115;
                v84 = v41 - 34;
                while (1)
                {
                  v85 = *v83++;
                  if (v85 >= 49)
                  {
                    break;
                  }

                  if (!--v84)
                  {
                    goto LABEL_231;
                  }
                }

LABEL_258:
                v78 = 1;
                goto LABEL_231;
              }
            }

            else
            {
              if (a2)
              {
                if (a2 == 1)
                {
                  if (v6 == 45)
                  {
                    v80 = v115;
                    v81 = v41 - 34;
                    v78 = 1;
                    while (1)
                    {
                      v82 = *v80++;
                      if (v82 > 48)
                      {
                        goto LABEL_231;
                      }

                      if (!--v81)
                      {
                        goto LABEL_230;
                      }
                    }
                  }

                  goto LABEL_230;
                }

                goto LABEL_231;
              }

              v78 = v115[0] > 52;
              if (v115[0] == 53)
              {
                if (v67 < 0 || (v77 & 1) == 0)
                {
LABEL_249:
                  if (v67 < 0)
                  {
                    v110 = 34;
                  }

                  else
                  {
                    v110 = 35;
                  }

                  if (v67 >= 0)
                  {
                    v78 = 0;
                  }

                  if (v110 >= v41)
                  {
                    goto LABEL_231;
                  }

                  while (v114[v110 - 1] <= 48)
                  {
                    if (v41 <= ++v110)
                    {
                      goto LABEL_231;
                    }
                  }

                  goto LABEL_258;
                }
              }

              else if (v67 < 0)
              {
                goto LABEL_249;
              }
            }

LABEL_238:
            v103 = HIDWORD(v74);
            v104 = v74;
            v105 = HIDWORD(v79);
            v106 = v79 & 0xFFEE0000;
            v107 = (v79 & 0xFFEE0000) * v104;
            v108 = v105 * v104 + v106 * v103 + HIDWORD(v107);
            v109 = HIDWORD(v108) + v105 * v103;
            v68 = v76 + v78 + v107 + (v108 << 32);
            if (v68 >= v76 + v78)
            {
              v72 = v109;
            }

            else
            {
              v72 = v109 + 1;
            }

            if (v42)
            {
              *a3 |= 0x20u;
            }

            goto LABEL_243;
          }

          v27 = 0;
        }

        LOBYTE(v51) = v26[2];
        v58 = 2;
        goto LABEL_176;
      }

      v45 = 0;
      LODWORD(v41) = v44;
      if (v27)
      {
        goto LABEL_143;
      }
    }

LABEL_119:
    v46 = 0;
    goto LABEL_186;
  }

  v28 = 0;
  while (1)
  {
    v27 = v26[1];
    v29 = v25 ? v28 + 1 : v28;
    if (v27 != 46)
    {
      break;
    }

    if (v25)
    {
      goto LABEL_75;
    }

    v30 = v26[2];
    v26 += 2;
    v27 = v30;
    if (!v30)
    {
      v31 = (0x3040000000000000 - (v28 << 49)) | v20;
      goto LABEL_76;
    }

    v25 = 1;
LABEL_73:
    v28 = v29;
    if (v27 != 48)
    {
      goto LABEL_108;
    }
  }

  if (v26[1])
  {
    ++v26;
    goto LABEL_73;
  }

  v57 = 6176;
  if (v29 < 0x1820)
  {
    v57 = v29;
  }

  v31 = v20 - (v57 << 49) + 0x3040000000000000;
LABEL_76:
  *&v112 = 0;
  *(&v112 + 1) = v31;
  return v112;
}

void *sub_27702C8E0(void *result, uint64_t a2, int a3, unint64_t a4, unint64_t a5, int *a6, _DWORD *a7)
{
  v7 = 0x378D8E63FFFFFFFFLL;
  v8 = 0x38C15B0A00000000;
  if (a4 != 0x378D8E6400000000 || a5 != 0x1ED09BEAD87C0)
  {
    v8 = a4;
  }

  v9 = (a4 == 0x378D8E6400000000 && a5 == 0x1ED09BEAD87C0) + a3;
  v10 = 0x314DC6448D93;
  if (a4 != 0x378D8E6400000000 || a5 != 0x1ED09BEAD87C0)
  {
    v10 = a5;
  }

  if (v9 < 0x3000)
  {
    goto LABEL_67;
  }

  if ((v9 & 0x80000000) != 0)
  {
    if (v9 <= 0xFFFFFFDD)
    {
      *a7 |= 0x30u;
      *result = 0;
      result[1] = a2;
      v14 = *a6;
      if (a2)
      {
        if (v14 != 1)
        {
          return result;
        }
      }

      else if (v14 != 2)
      {
        return result;
      }

      v42 = 1;
LABEL_84:
      *result = v42;
      return result;
    }

    v15 = -v9;
    v16 = (*a6 - 1) >= 2 || a2 == 0;
    if (v16)
    {
      v17 = *a6;
    }

    else
    {
      v17 = 3 - *a6;
    }

    v18 = xmmword_280A5A7C0[36 * v17 + v15] + __PAIR128__(v10, v8);
    v19 = (&unk_280A5B300 + 16 * v15);
    v20 = *v19;
    v21 = v19[1];
    v22 = v21 * DWORD1(v18);
    v23 = HIDWORD(v22);
    v24 = HIDWORD(v21) * v18 + v22 + ((v21 * v18) >> 32);
    v25 = (v21 * v18) | (v24 << 32);
    v26 = DWORD2(v18) * HIDWORD(*v19);
    v27 = HIDWORD(v18) * v20 + v26 + ((DWORD2(v18) * v20) >> 32);
    v28 = (DWORD2(v18) * *v19) | (v27 << 32);
    v29 = *v19 * DWORD1(v18);
    v30 = HIDWORD(v20) * v18 + v29 + ((v20 * v18) >> 32);
    v31 = HIDWORD(v29) + HIDWORD(*v19) * DWORD1(v18) + HIDWORD(v30);
    v32 = (*v19 * v18) | (v30 << 32);
    v33 = HIDWORD(v18) * v21;
    v34 = HIDWORD(v33) + HIDWORD(v18) * HIDWORD(v21);
    v35 = DWORD2(v18) * HIDWORD(v21) + v33 + ((DWORD2(v18) * v21) >> 32);
    v36 = HIDWORD(v35);
    v37 = (DWORD2(v18) * v21) | (v35 << 32);
    v38 = __CFADD__(v25, v28);
    v39 = v25 + v28 + v31;
    v40 = __PAIR128__(v34, v37) + __PAIR128__(v36, (__PAIR128__(v23 + HIDWORD(v21) * DWORD1(v18) + HIDWORD(v18) * HIDWORD(v20) + HIDWORD(v26) + HIDWORD(v24) + HIDWORD(v27), v25 + v28) + __PAIR128__(v38, v31)) >> 64);
    v41 = dword_280A5B540[v15];
    v42 = (*(&v40 + 1) << -v41) | (v40 >> v41);
    v43 = ((__PAIR128__(v34, v37) + __PAIR128__(v36, (__PAIR128__(v23 + HIDWORD(v21) * DWORD1(v18) + HIDWORD(v18) * HIDWORD(v20) + HIDWORD(v26) + HIDWORD(v24) + HIDWORD(v27), v25 + v28) + __PAIR128__(v38, v31)) >> 64)) >> 64) >> v41;
    if (v41 >= 64)
    {
      v42 = *(&v40 + 1) >> v41;
      v43 = 0;
    }

    if (!*a6 && (v42 & 1) != 0)
    {
      v44 = ((2 * *(&v40 + 1)) << ~(v41 - 64)) | (v40 >> (v41 - 64));
      if (v41 >= 65)
      {
        v45 = v40 << -v41 != 0;
      }

      else
      {
        v44 = v40 << -v41;
        v45 = 0;
      }

      if (!v44 && !v45 && (v39 < v21 || v39 == v21 && v32 < v20))
      {
        --v42;
      }
    }

    if ((*a7 & 0x20) != 0)
    {
      v54 = 16;
LABEL_82:
      *a7 |= v54;
LABEL_83:
      result[1] = v43 | a2;
      goto LABEL_84;
    }

    v46 = 0x80 - v41;
    if (v41 >= 65)
    {
      v47 = (*(&v40 + 1) << (0x80 - v41)) | (v40 >> v41);
    }

    else
    {
      v47 = v40 << -v41;
    }

    if (v41 >= 65)
    {
      v48 = v40 << (0x80 - v41);
    }

    else
    {
      v48 = 0;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        goto LABEL_80;
      }

      if (v17 != 4)
      {
        goto LABEL_90;
      }
    }

    else if (v17)
    {
      if (v17 != 1)
      {
LABEL_90:
        v12 = __CFADD__(__CFADD__(v32, v20), v39);
        v57 = __CFADD__(v32, v20) + v39;
        v58 = v12;
        v59 = __CFADD__(v57, v21);
        v60 = (v59 | v58) & 1;
        v61 = v47 >> -v41;
        v62 = v41 - 64;
        v63 = v47 >> v46;
        if (v41 < 65)
        {
          v63 = 0;
        }

        else
        {
          v62 = v41 - 64;
          v61 = (v48 >> v46) | (v47 << v41);
        }

        v64 = 1 << v62;
        if (v41 < 64)
        {
          v64 = 0;
        }

        v12 = __CFADD__(v61, v60);
        v65 = v61 + v60;
        if (v12)
        {
          v66 = v63 + 1;
        }

        else
        {
          v66 = v63;
        }

        if (v66 > v64)
        {
          goto LABEL_83;
        }

        v67 = v65 >> v41;
        v68 = v41 < 64 && v67 == 0;
        v69 = v68;
        if (v66 == v64 && !v69)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }

LABEL_80:
      if (v47 | v48)
      {
LABEL_81:
        v54 = 48;
        goto LABEL_82;
      }

LABEL_85:
      v56 = v39 == v21;
      if (v39 < v21)
      {
        goto LABEL_83;
      }

      v54 = 48;
      if (v56 && v32 < v20)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }

    if (v47 != 0x8000000000000000 || v48 != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_85;
  }

  if (v9 > 0x3021)
  {
    goto LABEL_57;
  }

  while (1)
  {
    if (qword_280A5B9F8 > v10)
    {
      if (v9 < 12288)
      {
        goto LABEL_67;
      }

      goto LABEL_14;
    }

    if (qword_280A5B9F8 != v10)
    {
      goto LABEL_56;
    }

    if (qword_280A5B9F0 <= v8 || v9 < 12288)
    {
      break;
    }

LABEL_14:
    v11 = 10 * v8;
    v12 = 10 * v8 >= 8 * v8;
    v13 = (v8 >> 63) + (v8 >> 61) + 10 * v10;
    if (v12)
    {
      v10 = v13;
    }

    else
    {
      v10 = v13 + 1;
    }

    v9 = (v9 - 1);
    v8 = v11;
  }

  v10 = qword_280A5B9F8;
LABEL_56:
  if (v9 < 12288)
  {
LABEL_67:
    *result = v8;
    result[1] = v10 | (v9 << 49) | a2;
    return result;
  }

LABEL_57:
  if (v8 | v10)
  {
    v49 = 0x5FFFED09BEAD87C0;
    *a7 |= 0x28u;
    v50 = *a6;
    if (a2)
    {
      v51 = 2;
    }

    else
    {
      v51 = 1;
    }

    v16 = v50 == v51;
    v52 = 0x7800000000000000;
    if (v16)
    {
      v52 = 0x5FFFED09BEAD87C0;
      v53 = 0x378D8E63FFFFFFFFLL;
    }

    else
    {
      v53 = 0;
    }

    if (v50 != 3)
    {
      v49 = v52;
      v7 = v53;
    }

    *result = v7;
    result[1] = v49 | a2;
  }

  else
  {
    *result = 0;
    result[1] = a2 | 0x5FFE000000000000;
  }

  return result;
}

id sub_27702CD90(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = &a9;
  if (a3)
  {
    do
    {
      v11 = NSStringFromSelector(a3);
      [v10 addObject:v11];

      v12 = v15++;
      a3 = *v12;
    }

    while (*v12);
  }

  v13 = [v10 copy];

  return v13;
}

uint64_t sub_27702CE2C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
    goto LABEL_6;
  }

  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB98] set];
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = [MEMORY[0x277CBEB98] set];
    goto LABEL_4;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = [v5 isEqualToSet:v7];
LABEL_6:

  return v8;
}

id sub_27702CEC8(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v11 + 1) + 8 * i);
      if (v6)
      {
        [v6 intersectSet:v9];
      }

      else
      {
        v6 = [MEMORY[0x277CBEB58] setWithSet:v9];
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v5);
  if (!v6)
  {
LABEL_12:
    v6 = [MEMORY[0x277CBEB58] set];
  }

  return v6;
}

uint64_t sub_27702D004(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * i) == v4)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

uint64_t sub_27702D10C(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = v4[2](v4, *(*(&v12 + 1) + 8 * v9), &v16);
      if (v10 & 1) != 0 || (v16)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        v10 = 0;
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_27702D240(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if (objc_opt_isKindOfClass())
        {
          v6 = 1;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

id sub_27702D344(void *a1)
{
  v1 = [a1 allObjects];
  v2 = [v1 sortedArrayUsingSelector:sel_compare_];

  return v2;
}

id sub_27702D398(void *a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSSet(TSUAdditions) tsu_setByMappingObjectsUsingBlock:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSSetAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:114 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "block != nil"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v17 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(a1, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a1;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = v4[2](v4, *(*(&v18 + 1) + 8 * i));
        if (v11)
        {
          [v17 addObject:v11];
        }

        else
        {
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSSet(TSUAdditions) tsu_setByMappingObjectsUsingBlock:]"];
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSSetAdditions.m"];
          [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:124 isFatal:0 description:"Block returned a nil object."];

          +[TSUAssertionHandler logBacktraceThrottled];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [v17 copy];

  return v14;
}

uint64_t sub_27702D604(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 1;
LABEL_11:

  return v6;
}

uint64_t sub_27702D708(void *a1)
{
  if ([a1 count] >= 2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSSet(TSUAdditions) tsu_onlyObject]"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSSetAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:145 isFatal:0 description:"As this method returns the only object in the set, it only makes sense if the set has at most one object."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return MEMORY[0x2821F9670](a1, sel_anyObject);
}

id sub_27702D7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 setWithSet:a1];
  [v6 intersectSet:v5];

  v7 = [MEMORY[0x277CBEB98] setWithSet:v6];

  return v7;
}

id sub_27702D84C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x277CBEB58] setWithSet:a1];
    [v5 minusSet:v4];
    v6 = [MEMORY[0x277CBEB98] setWithSet:v5];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

void sub_27702E1C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", a3];
  [a1 insertString:v6 atIndex:a4];
}

uint64_t sub_27702E23C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ([a1 length])
  {
    [a1 appendString:a3];
  }

  return [a1 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "tsu_stringWithFormat:arguments:", a4, &a9)}];
}

id sub_27702E33C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCAC48]) initWithParent:0 userInfo:0];
  [v6 setTotalUnitCount:a4];
  [v5 maxValue];
  v8 = v7;
  if (([v5 isIndeterminate] & 1) == 0 && v8 > 0.0)
  {
    [v5 value];
    [v6 setCompletedUnitCount:{(v9 / v8 * objc_msgSend(v6, "totalUnitCount"))}];
  }

  v10 = 10;
  if (a4 > 10)
  {
    v10 = a4;
  }

  if (v8 > 0.0)
  {
    v11 = v8 / v10;
  }

  else
  {
    v11 = v10;
  }

  objc_initWeak(&location, v5);
  objc_initWeak(&from, v6);
  v12 = MEMORY[0x277D85CD0];
  v13 = MEMORY[0x277D85CD0];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_27702E5E8;
  v22 = &unk_27A701988;
  objc_copyWeak(&v23, &location);
  objc_copyWeak(v24, &from);
  v24[1] = a4;
  v14 = [v5 addProgressObserverWithValueInterval:v12 queue:&v19 handler:v11];

  if (!v14)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSProgress(NSProgress_TSUAdditions) tsu_progressWithTSUProgress:totalUnitCount:]"];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSProgress_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:70 isFatal:0 description:"invalid nil value for '%{public}s'", "progressObserver", v19, v20, v21, v22];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v17 = objc_alloc_init(TSUProgressUserInfoObject);
  [(TSUProgressUserInfoObject *)v17 setProgress:v5];
  [(TSUProgressUserInfoObject *)v17 setProgressObserver:v14];
  [v6 setUserInfoObject:v17 forKey:@"TSUProgressUserInfoKey"];

  objc_destroyWeak(v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

void sub_27702E5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_27702E5E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    [WeakRetained maxValue];
    if (v3 > 0.0)
    {
      v4 = v3;
      [WeakRetained value];
      [v2 setCompletedUnitCount:(v5 / v4 * *(a1 + 48))];
    }
  }
}

id sub_27702E684(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  v5 = MEMORY[0x277CCA648];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v26;
    v9 = *MEMORY[0x277CCA648];
    v10 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v7 += [v12 totalUnitCount];
        v13 = [v12 kind];
        LODWORD(v12) = v13 == v9;

        v10 &= v12;
      }

      v6 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v10 = 1;
  }

  v14 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:v7];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v3;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 addChild:*(*(&v21 + 1) + 8 * j) withPendingUnitCount:{objc_msgSend(*(*(&v21 + 1) + 8 * j), "totalUnitCount", v21)}];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v17);
  }

  if (v10)
  {
    [v14 setKind:*v5];
  }

  return v14;
}

void sub_27702E898(void *a1)
{
  v2 = objc_opt_class();
  v3 = [a1 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"TSUProgressUserInfoKey"];
  v7 = TSUDynamicCast(v2, v4);

  v5 = [v7 progress];
  v6 = [v7 progressObserver];
  [v5 removeProgressObserver:v6];
}

unint64_t sub_27702E960(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 totalUnitCount];
  v6 = [a1 completedUnitCount];
  v7 = v5 - v6;
  if (v5 - v6 < 0)
  {
    v7 = v6 - v5;
  }

  v8 = v7 >> 1;
  if (v7 > a3)
  {
    v8 = a3;
  }

  if (v7 < 2 && v7 < a3)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

id sub_27702E9BC(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"yyyy" withString:@"yy" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

id sub_27702EA1C(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"yy" withString:@"yyyy" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

__CFDateFormatter *TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(const __CFAllocator *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CFDateFormatterRef  _Nonnull TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(CFAllocatorRef _Nullable, TSULocale *__strong _Nullable, CFDateFormatterStyle, CFDateFormatterStyle)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:221 isFatal:0 description:"<rdar://problem/29112058>: Shouldn't be passed a locale of NULL"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v7 = +[TSULocale currentLocale];
  }

  v10 = [v7 formattingSymbols];
  if (!v10)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CFDateFormatterRef  _Nonnull TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(CFAllocatorRef _Nullable, TSULocale *__strong _Nullable, CFDateFormatterStyle, CFDateFormatterStyle)"}];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:226 isFatal:0 description:"invalid nil value for '%{public}s'", "formattingSymbols"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v13 = [v7 localeIdentifierWithCalendarAndNumberingSystem];
  v14 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v13];
  v15 = CFDateFormatterCreate(a1, v14, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  v16 = *MEMORY[0x277CBED98];
  v17 = [v10 months];
  CFDateFormatterSetProperty(v15, v16, v17);

  v18 = *MEMORY[0x277CBEDE0];
  v19 = [v10 standaloneMonths];
  CFDateFormatterSetProperty(v15, v18, v19);

  v20 = *MEMORY[0x277CBEDB0];
  v21 = [v10 shortMonths];
  CFDateFormatterSetProperty(v15, v20, v21);

  v22 = *MEMORY[0x277CBEDC0];
  v23 = [v10 standaloneShortMonths];
  CFDateFormatterSetProperty(v15, v22, v23);

  v24 = *MEMORY[0x277CBEE00];
  v25 = [v10 tinyMonths];
  CFDateFormatterSetProperty(v15, v24, v25);

  v26 = *MEMORY[0x277CBEE08];
  v27 = [v10 standaloneTinyMonths];
  CFDateFormatterSetProperty(v15, v26, v27);

  v28 = *MEMORY[0x277CBEE20];
  v29 = [v10 weekdays];
  CFDateFormatterSetProperty(v15, v28, v29);

  v30 = *MEMORY[0x277CBEDF0];
  v31 = [v10 standaloneWeekdays];
  CFDateFormatterSetProperty(v15, v30, v31);

  v32 = *MEMORY[0x277CBEDD8];
  v33 = [v10 shortWeekdays];
  CFDateFormatterSetProperty(v15, v32, v33);

  v34 = *MEMORY[0x277CBEDD0];
  v35 = [v10 standaloneShortWeekdays];
  CFDateFormatterSetProperty(v15, v34, v35);

  v36 = *MEMORY[0x277CBEE18];
  v37 = [v10 tinyWeekdays];
  CFDateFormatterSetProperty(v15, v36, v37);

  v38 = *MEMORY[0x277CBEE10];
  v39 = [v10 standaloneTinyWeekdays];
  CFDateFormatterSetProperty(v15, v38, v39);

  v40 = *MEMORY[0x277CBEDA8];
  v41 = [v10 quarters];
  CFDateFormatterSetProperty(v15, v40, v41);

  v42 = *MEMORY[0x277CBEDE8];
  v43 = [v10 standaloneQuarters];
  CFDateFormatterSetProperty(v15, v42, v43);

  v44 = *MEMORY[0x277CBEDB8];
  v45 = [v10 shortQuarters];
  CFDateFormatterSetProperty(v15, v44, v45);

  v46 = *MEMORY[0x277CBEDC8];
  v47 = [v10 standaloneShortQuarters];
  CFDateFormatterSetProperty(v15, v46, v47);

  v48 = *MEMORY[0x277CBED80];
  v49 = [v10 eras];
  CFDateFormatterSetProperty(v15, v48, v49);

  v50 = *MEMORY[0x277CBED90];
  v51 = [v10 longEras];
  CFDateFormatterSetProperty(v15, v50, v51);

  v52 = *MEMORY[0x277CBED70];
  v53 = [v10 amSymbol];
  CFDateFormatterSetProperty(v15, v52, v53);

  v54 = *MEMORY[0x277CBEDA0];
  v55 = [v10 pmSymbol];
  CFDateFormatterSetProperty(v15, v54, v55);

  v56 = [v10 patternStringForDateStyle:a3 timeStyle:a4];
  CFDateFormatterSetFormat(v15, v56);

  return v15;
}

uint64_t sub_27702F324(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDictionary * _Nonnull TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(NSLocale *__strong _Nonnull)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:118 isFatal:0 description:"Unspecified locale no longer supported."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = SFUMainBundle();
  v5 = [v1 localeIdentifier];
  v6 = [TSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:v5];

  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v4 pathForResource:v8 ofType:@"plist" inDirectory:@"DateTimeFormats"];
    if (v9)
    {
      goto LABEL_29;
    }

    v10 = [TSULocale canonicalizeLocaleIdentifierWithLanguageOnly:v8];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 length])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v8)
  {
    v13 = [TSULocale deducedScriptForLocale:v8];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v1 localeIdentifier];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [v1 localeIdentifier];
    v17 = sub_27702F6A4(v16);

    v18 = off_27A7019A8[v17];
  }

  else
  {
    v18 = @"YMD";
  }

  v9 = 0;
  if (v13 && v12)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"generic-%@-%@-%@", v12, v13, v18];
    v9 = [v4 pathForResource:v19 ofType:@"plist" inDirectory:@"DateTimeFormats"];
  }

  if (!v9 && v12)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"generic-%@-%@", v12, v18];
    v9 = [v4 pathForResource:v20 ofType:@"plist" inDirectory:@"DateTimeFormats"];
  }

  if (!v9)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"fallback-%@", v18];
    v9 = [v4 pathForResource:v21 ofType:@"plist" inDirectory:@"DateTimeFormats"];
  }

  if (!v9)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDictionary * _Nonnull TSUDateFormatterCopyDateTimeFormatInfoDictionaryForLocale(NSLocale *__strong _Nonnull)"];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:179 isFatal:0 description:"Unable to find path for plist containing date time formats!"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v9 = 0;
  }

LABEL_29:
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];

  return v24;
}

uint64_t sub_27702F6A4(void *a1)
{
  v1 = MEMORY[0x277CBEAF8];
  v2 = a1;
  v3 = [[v1 alloc] initWithLocaleIdentifier:v2];

  v4 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"yMd" options:0 locale:v3];
  v5 = [v4 rangeOfString:@"y"];
  v6 = [v4 rangeOfString:@"M"];
  v7 = [v4 rangeOfString:@"d"];
  v8 = v7;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUDateComponentOrdering TSUDateComponentOrderingForLocale(NSString *__strong _Nonnull)"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:613 isFatal:0 description:"Format Failed."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v13 = 1;
  v14 = 4;
  if (v8 > v6)
  {
    v14 = 5;
  }

  if (v8 >= v5)
  {
    v13 = v14;
  }

  v15 = 2;
  if (v8 > v5)
  {
    v15 = 3;
  }

  if (v8 < v6)
  {
    v15 = 0;
  }

  if (v6 < v5)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

id TSUDateFormatterStringFromDateWithFormat(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString * _Nullable TSUDateFormatterStringFromDateWithFormat(NSDate *__strong _Nonnull, NSString *__strong _Nonnull, TSULocale *__strong _Nonnull)"}];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:261 isFatal:0 description:"A locale is required here."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v10 = [TSUDateFormatter_FormatterCache dateFormatterStringFromDate:v5 withFormat:v6 locale:v7];

  return v10;
}

id TSUShortestCompleteDateTimeFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nullable TSUShortestCompleteDateTimeFormat(TSULocale *__strong _Nonnull)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:269 isFatal:0 description:"A locale is required here."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteDateTimeFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteDateTimeFormat"];
    if (!v4)
    {
      DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"yMd", 0, [v1 cfGregorianCalendarLocale]);
      v7 = CFDateFormatterCreateDateFormatFromTemplate(0, @"jms", 0, [v1 cfGregorianCalendarLocale]);
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", DateFormatFromTemplate, v7];
      [v1 setLocaleSpecificStorage:v4 forKey:@"TSUShortestCompleteDateTimeFormat"];
    }

    objc_sync_exit(v5);
  }

  return v4;
}

id TSUShortestCompleteTimeOnlyFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nullable TSUShortestCompleteTimeOnlyFormat(TSULocale *__strong _Nonnull)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:296 isFatal:0 description:"A locale is required here."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  DateFormatFromTemplate = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteTimeOnlyFormat"];
  if (!DateFormatFromTemplate)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    DateFormatFromTemplate = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteTimeOnlyFormat"];
    if (!DateFormatFromTemplate)
    {
      DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"jms", 0, [v1 cfGregorianCalendarLocale]);
      [v1 setLocaleSpecificStorage:DateFormatFromTemplate forKey:@"TSUShortestCompleteTimeOnlyFormat"];
    }

    objc_sync_exit(v5);
  }

  return DateFormatFromTemplate;
}

id TSUShortestCompleteDateOnlyFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nullable TSUShortestCompleteDateOnlyFormat(TSULocale *__strong _Nonnull)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:318 isFatal:0 description:"A locale is required here."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  DateFormatFromTemplate = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteDateOnlyFormat"];
  if (!DateFormatFromTemplate)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    DateFormatFromTemplate = [v1 localeSpecificStorageForKey:@"TSUShortestCompleteDateOnlyFormat"];
    if (!DateFormatFromTemplate)
    {
      DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(0, @"yMd", 0, [v1 cfGregorianCalendarLocale]);
      [v1 setLocaleSpecificStorage:DateFormatFromTemplate forKey:@"TSUShortestCompleteDateOnlyFormat"];
    }

    objc_sync_exit(v5);
  }

  return DateFormatFromTemplate;
}

id TSUDefaultDateTimeFormat(void *a1)
{
  v1 = [a1 formattingSymbols];
  v2 = [v1 patternStringForDateStyle:1 timeStyle:1];

  return v2;
}

id TSUDefaultDateOnlyShortFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull TSUDefaultDateOnlyShortFormat(TSULocale *__strong _Nonnull)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:403 isFatal:0 description:"A locale is required here."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultDateOnlyShortFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultDateOnlyShortFormat"];
    if (!v4)
    {
      v6 = [v1 formattingSymbols];
      v4 = [v6 patternStringForDateStyle:1 timeStyle:0];

      v7 = [TSUDateFormatter supportedDateFormatsForLocale:v1];
      v8 = [v7 containsObject:v4];

      if ((v8 & 1) == 0)
      {
        v9 = [TSUDateFormatter p_supportedDateFormatMatchingFormat:v4 locale:v1];

        v4 = v9;
      }

      [v1 setLocaleSpecificStorage:v4 forKey:@"TSUDefaultDateOnlyShortFormat"];
    }

    objc_sync_exit(v5);
  }

  return v4;
}

id TSUDefaultDateOnlyMediumFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull TSUDefaultDateOnlyMediumFormat(TSULocale *__strong _Nonnull)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:426 isFatal:0 description:"A locale is required here."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultDateOnlyMediumFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultDateOnlyMediumFormat"];
    if (!v4)
    {
      v6 = [v1 formattingSymbols];
      v4 = [v6 patternStringForDateStyle:2 timeStyle:0];

      v7 = [TSUDateFormatter supportedDateFormatsForLocale:v1];
      v8 = [v7 containsObject:v4];

      if ((v8 & 1) == 0)
      {
        v9 = [TSUDateFormatter p_supportedDateFormatMatchingFormat:v4 locale:v1];

        v4 = v9;
      }

      [v1 setLocaleSpecificStorage:v4 forKey:@"TSUDefaultDateOnlyMediumFormat"];
    }

    objc_sync_exit(v5);
  }

  return v4;
}

id TSUDefaultTimeOnlyShortFormat(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull TSUDefaultTimeOnlyShortFormat(TSULocale *__strong _Nonnull)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:449 isFatal:0 description:"A locale is required here."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultTimeOnlyShortFormat"];
  if (!v4)
  {
    v5 = objc_opt_class();
    objc_sync_enter(v5);
    v4 = [v1 localeSpecificStorageForKey:@"TSUDefaultTimeOnlyShortFormat"];
    if (!v4)
    {
      v6 = [v1 formattingSymbols];
      v4 = [v6 patternStringForDateStyle:0 timeStyle:1];

      v7 = [TSUDateFormatter supportedDateFormatsForLocale:v1];
      v8 = [v7 containsObject:v4];

      if ((v8 & 1) == 0)
      {
        v9 = [TSUDateFormatter p_supportedTimeFormatMatchingFormat:v4 locale:v1];

        v4 = v9;
      }

      [v1 setLocaleSpecificStorage:v4 forKey:@"TSUDefaultTimeOnlyShortFormat"];
    }

    objc_sync_exit(v5);
  }

  return v4;
}

id TSUGetGMTTimeZone()
{
  v0 = qword_280A638D8;
  if (!qword_280A638D8)
  {
    v1 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    v2 = qword_280A638D8;
    qword_280A638D8 = v1;

    v0 = qword_280A638D8;
    if (!qword_280A638D8)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSTimeZone * _Nonnull TSUGetGMTTimeZone()"];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
      [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:476 isFatal:0 description:"GMTTimeZone() couldn't create time zone"];

      +[TSUAssertionHandler logBacktraceThrottled];
      v0 = qword_280A638D8;
    }
  }

  return v0;
}

uint64_t sub_2770303F8(void *a1)
{
  v1 = a1;
  v2 = [v1 localeIdentifier];
  v3 = [TSULocale regionSubtagAwareComponentsFromLocaleIdentifier:v2];
  v4 = [v3 mutableCopy];

  [v4 setObject:*MEMORY[0x277CBE5C0] forKey:*MEMORY[0x277CBEE88]];
  if (![TSULocale localeIsAutoUpdating:v1])
  {
    v5 = *MEMORY[0x277CBE698];
    v6 = [v1 objectForKey:*MEMORY[0x277CBE698]];
    v7 = v6;
    v8 = &stru_28862C2A0;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    [v4 setObject:v9 forKey:v5];
  }

  v10 = [MEMORY[0x277CBEAF8] localeIdentifierFromComponents:v4];
  v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v10];

  return v11;
}

uint64_t sub_277030520(void *a1)
{
  v1 = a1;
  v2 = 4 * ([v1 rangeOfString:@"y"] != 0x7FFFFFFFFFFFFFFFLL);
  if ([v1 rangeOfString:@"M"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:", @"L") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 8uLL;
  }

  if ([v1 rangeOfString:@"d"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 0x10uLL;
  }

  if ([v1 rangeOfString:@"h" options:1] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v1, "rangeOfString:options:", @"k", 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 0x20uLL;
  }

  if ([v1 rangeOfString:@"m"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 0x40uLL;
  }

  if ([v1 rangeOfString:@"s"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 |= 0x80uLL;
  }

  return v2;
}

uint64_t sub_277030634(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_280A638F0 != -1)
  {
    sub_277112D6C();
  }

  v5 = [qword_280A638E0 components:252 fromDate:v3];
  v6 = qword_280A638E8;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 components:252 fromDate:v7];

  v9 = sub_277030520(v4);
  v10 = v9;
  if ((v9 & 0x1C) == 0)
  {
    if (v9 < 0x20)
    {
      goto LABEL_14;
    }

    [v5 setYear:{objc_msgSend(v8, "year")}];
    [v5 setMonth:{objc_msgSend(v8, "month")}];
    v11 = [v8 day];
    goto LABEL_13;
  }

  if ((v9 & 4) != 0)
  {
    if ((v9 & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    [v5 setMonth:1];
    if ((v10 & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  [v5 setYear:{objc_msgSend(v8, "year")}];
  if ((v10 & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v10 & 0x10) == 0)
  {
LABEL_12:
    v11 = 1;
LABEL_13:
    [v5 setDay:v11];
  }

LABEL_14:
  if ((v10 & 0x20) == 0)
  {
    [v5 setHour:0];
  }

  if ((v10 & 0x40) == 0)
  {
    [v5 setMinute:0];
  }

  if (v10 <= 0x7F)
  {
    [v5 setSecond:0];
  }

  v12 = [qword_280A638E0 dateFromComponents:v5];

  return v12;
}

void sub_2770307D4()
{
  v0 = objc_alloc(MEMORY[0x277CBEA80]);
  v1 = *MEMORY[0x277CBE5C0];
  v2 = [v0 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v3 = qword_280A638E0;
  qword_280A638E0 = v2;

  v4 = qword_280A638E0;
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEA80]) initWithCalendarIdentifier:v1];
  v7 = qword_280A638E8;
  qword_280A638E8 = v6;

  v8 = qword_280A638E8;
  v9 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [v8 setTimeZone:v9];
}

uint64_t sub_2770308B8(void *a1)
{
  v1 = sub_27702F324(a1);
  v2 = [v1 objectForKey:@"AcceptedDateFormats"];

  return v2;
}

uint64_t sub_2770308F8(void *a1)
{
  v1 = sub_27702F324(a1);
  v2 = [v1 objectForKey:@"AcceptedTimeFormats"];

  return v2;
}

uint64_t TSUCreateDateFromStringWithPreferredFormat(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  if (!v10)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSDate * _Nullable TSUCreateDateFromStringWithPreferredFormat(NSString *__strong _Nonnull, TSULocale *__strong _Nullable, NSString *__strong _Nullable, NSString *__autoreleasing * _Nullable, BOOL)"}];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDateFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:646 isFatal:0 description:"A locale is required here."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v14 = [v10 dateParserLibrary];
  v15 = [v14 checkoutDateParser];
  v16 = [v15 newDateFromString:v9 preferredFormatString:v11 successfulFormatString:a4 tryAggressiveFormats:a5];
  [v14 returnDateParser:v15];

  return v16;
}

void sub_2770316D0(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 replaceOccurrencesOfString:@" " withString:&stru_28862C2A0 options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@" " withString:&stru_28862C2A0 options:0 range:{0, objc_msgSend(v2, "length")}];
  [v2 replaceOccurrencesOfString:@" " withString:&stru_28862C2A0 options:0 range:{0, objc_msgSend(v2, "length")}];
}

uint64_t sub_277032454(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = [MEMORY[0x277CBEAA8] date];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_277032568;
  v7[3] = &unk_27A7019E0;
  v10 = &v11;
  v3 = v1;
  v8 = v3;
  v4 = v2;
  v9 = v4;
  [v3 performICUDateUsingBlock:v7];
  v5 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v5;
}

void sub_277032550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_277032568(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = TSUDateFormatterCFDateFormatterCreateUsingHarmonizedSymbols(0, *(a1 + 32), 0, 0);
  CFDateFormatterSetProperty(*(*(*(a1 + 48) + 8) + 24), *MEMORY[0x277CBED88], *MEMORY[0x277CBED10]);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = *MEMORY[0x277CBEDF8];
  v4 = TSUGetGMTTimeZone();
  CFDateFormatterSetProperty(v2, v3, v4);

  v5 = objc_alloc(MEMORY[0x277CBEA80]);
  v9 = [v5 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v6 = [v9 components:4 fromDate:*(a1 + 40)];
  v7 = TSUGetGMTTimeZone();
  [v6 setTimeZone:v7];

  v8 = [v9 dateFromComponents:v6];
  CFDateFormatterSetProperty(*(*(*(a1 + 48) + 8) + 24), *MEMORY[0x277CBED78], v8);
}

uint64_t sub_27703404C()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"GyYuUQqMLlwWdDFgEecahHKkjmsSAzZOvVXx"];
  v1 = qword_280A638F8;
  qword_280A638F8 = v0;

  qword_280A63900 = [qword_280A638F8 invertedSet];

  return MEMORY[0x2821F96F8]();
}

uint64_t TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(void *a1, double *a2, _BYTE *a3, _BYTE *a4, int a5, void *a6)
{
  v57 = 0;
  v10 = objc_autoreleasePoolPush();
  v11 = sub_277036810([a1 tsu_stringWithoutBidiControls], &v57, a6);
  v12 = v11;
  objc_autoreleasePoolPop(v10);
  if (!v11 || ![v11 count])
  {
    goto LABEL_55;
  }

  v56 = 0.0;
  v13 = [a6 decimalSeparator];
  if (a3)
  {
    *a3 = 0;
  }

  if (v57 == 1)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v54 = v13;
    v14 = [v11 count];
    v50 = v14;
    if (v14)
    {
      v52 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = v14 - 2;
      while (1)
      {
        v19 = [v11 objectAtIndex:v16];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          ++v15;
        }

        else
        {
          if ([v19 isEqual:@"."])
          {
            if (v18)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v20 = [v19 isEqual:v54];
            if (v18 || (v20 & 1) == 0)
            {
LABEL_18:
              if ([v19 isEqual:@"-"])
              {
                if (v52)
                {
                  goto LABEL_55;
                }

                v52 = 1;
              }

              else if (![v19 isEqual:@":"])
              {
                goto LABEL_55;
              }

              goto LABEL_22;
            }
          }

          v17 = 1;
        }

LABEL_22:
        ++v16;
        if (--v18 == -2)
        {
          goto LABEL_54;
        }
      }
    }

    v17 = 0;
    v15 = 0;
    v52 = 0;
LABEL_54:
    v35 = v15 - (v17 & 1);
    if (v35 > 5)
    {
LABEL_55:

      return 0;
    }

    v37 = 5;
    LOBYTE(v38) = a5;
    if (a5 <= 7)
    {
      v23 = v52;
      v39 = v50;
      if (a5 != 2)
      {
        v40 = a2;
        if (a5 == 4)
        {
          v37 = 3;
        }

        goto LABEL_68;
      }

      v37 = 4;
    }

    else
    {
      v23 = v52;
      v39 = v50;
      if (a5 == 8)
      {
        v37 = 2;
      }

      else
      {
        if (a5 != 16)
        {
          v40 = a2;
          if (a5 == 32)
          {
            v37 = 0;
          }

          goto LABEL_68;
        }

        v37 = 1;
      }
    }

    v40 = a2;
LABEL_68:
    if (!a5 || v15 > v37 + (v17 & 1))
    {
      v41 = v35 - 1;
      if (v41 >= 5)
      {
        v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(NSString *, NSTimeInterval *, TSUDurationUnits *, TSUDurationStyle *, TSUDurationUnits, TSULocale *)"}];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v42, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 691, 0, "Unexpected duration unit count!");
        +[TSUAssertionHandler logBacktraceThrottled];
        LOBYTE(v38) = 0;
      }

      else
      {
        v38 = 0x102040810uLL >> (8 * v41);
      }
    }

    if (!v39)
    {
      v24 = 0.0;
      v30 = 0.0;
      v29 = 0.0;
      v28 = 0.0;
      v27 = 0.0;
      if (v40)
      {
        goto LABEL_106;
      }

      goto LABEL_108;
    }

    v43 = 0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
    v24 = 0.0;
    while (1)
    {
      v44 = [v11 objectAtIndex:v43];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objc_msgSend(v44 "first")];
        v46 = v45;
        if (v43 && (([objc_msgSend(v11 objectAtIndex:{v43 - 1), "isEqual:", @"."}] & 1) != 0 || objc_msgSend(objc_msgSend(v11, "objectAtIndex:", v43 - 1), "isEqual:", v54)))
        {
          v47 = [v44 second];
          +[TSUNumberParser numberValueFromString:locale:outDoubleValue:](TSUNumberParser, "numberValueFromString:locale:outDoubleValue:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v54, v47], a6, &v56);
          if (a3)
          {
            *a3 |= 0x20u;
          }
        }

        else
        {
          if (v38 <= 3u)
          {
            if (v38 == 1)
            {
              if (a3)
              {
                *a3 |= 1u;
              }

              LOBYTE(v38) = 2;
              v27 = v46;
              goto LABEL_103;
            }

            if (v38 == 2)
            {
              if (a3)
              {
                *a3 |= 2u;
              }

              LOBYTE(v38) = 4;
              v28 = v46;
              goto LABEL_103;
            }
          }

          else
          {
            switch(v38)
            {
              case 4u:
                if (a3)
                {
                  *a3 |= 4u;
                }

                LOBYTE(v38) = 8;
                v29 = v46;
                goto LABEL_103;
              case 8u:
                if (a3)
                {
                  *a3 |= 8u;
                }

                LOBYTE(v38) = 16;
                v30 = v46;
                goto LABEL_103;
              case 0x10u:
                LOBYTE(v38) = 0;
                if (a3)
                {
                  *a3 |= 0x10u;
                }

                v24 = v46;
                goto LABEL_103;
            }
          }

          v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUDurationFormatterTimeIntervalFromStringWithCompactStyleStartUnit(NSString *, NSTimeInterval *, TSUDurationUnits *, TSUDurationStyle *, TSUDurationUnits, TSULocale *)"}];
          +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v48, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 735, 0, "Unexpected duration unit!");
          +[TSUAssertionHandler logBacktraceThrottled];
        }
      }

LABEL_103:
      if (v39 == ++v43)
      {
        v23 = v52;
        goto LABEL_105;
      }
    }
  }

  if (a4)
  {
    *a4 = 1;
  }

  v21 = [v11 count];
  v22 = [@"-" isEqual:{objc_msgSend(v11, "objectAtIndex:", 0)}];
  v23 = v22;
  v24 = 0.0;
  if (v21 <= v22)
  {
    v30 = 0.0;
    v29 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    goto LABEL_105;
  }

  v25 = 0;
  v26 = v22;
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  do
  {
    [objc_msgSend(objc_msgSend(v11 objectAtIndex:{v26), "first"), "doubleValue"}];
    v32 = v31;
    v33 = [v11 objectAtIndex:v26 + 1];
    v55 = 1;
    v34 = sub_277036194(v33, &v55);
    if (a4 && !v25)
    {
      *a4 = v55;
    }

    if (v34 > 7)
    {
      switch(v34)
      {
        case 8:
          v30 = v32;
          if (a3)
          {
            goto LABEL_36;
          }

          break;
        case 16:
          v24 = v32;
          if (a3)
          {
            goto LABEL_36;
          }

          break;
        case 32:
          v56 = v32 / 1000.0;
          if (a3)
          {
LABEL_36:
            *a3 |= v34;
          }

          break;
        default:
          goto LABEL_55;
      }
    }

    else
    {
      switch(v34)
      {
        case 1:
          v27 = v32;
          if (a3)
          {
            goto LABEL_36;
          }

          break;
        case 2:
          v28 = v32;
          if (a3)
          {
            goto LABEL_36;
          }

          break;
        case 4:
          v29 = v32;
          if (a3)
          {
            goto LABEL_36;
          }

          break;
        default:
          goto LABEL_55;
      }
    }

    v26 += 2;
    v25 -= 2;
  }

  while (v26 < v21);
LABEL_105:
  v40 = a2;
  if (a2)
  {
LABEL_106:
    v49 = v24 + v28 * 86400.0 + v27 * 604800.0 + v29 * 3600.0 + v30 * 60.0 + v56;
    *v40 = v49;
    if (v23)
    {
      *v40 = -v49;
    }
  }

LABEL_108:

  return 1;
}

uint64_t sub_2770360C4(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  if ([a1 isEqualToString:a2])
  {
    return 1;
  }

  if ([v3 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v3 stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];
  }

  if ([v2 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = [v2 stringByReplacingOccurrencesOfString:@" " withString:&stru_28862C2A0];
  }

  return [v3 isEqualToString:v2];
}

uint64_t sub_277036194(void *a1, char *a2)
{
  v4 = [TSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:?];
  if ((sub_2770360C4([v4 weekLongSingularString], a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "weekLongPluralString"), a1))
  {
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  if ((sub_2770360C4([v4 weekMediumSingularString], a1) & 1) != 0 || (sub_2770360C4(objc_msgSend(v4, "weekMediumPluralString"), a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "weekShortString"), a1))
  {
    v6 = 1;
    result = 1;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  if ((sub_2770360C4([v4 dayLongSingularString], a1) & 1) == 0 && !sub_2770360C4(objc_msgSend(v4, "dayLongPluralString"), a1))
  {
    if ((sub_2770360C4([v4 dayMediumSingularString], a1) & 1) != 0 || (sub_2770360C4(objc_msgSend(v4, "dayMediumPluralString"), a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "dayShortString"), a1))
    {
      result = 2;
      if (!a2)
      {
        return result;
      }

      goto LABEL_19;
    }

    if ((sub_2770360C4([v4 hourLongSingularString], a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "hourLongPluralString"), a1))
    {
      result = 4;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if ((sub_2770360C4([v4 hourMediumSingularString], a1) & 1) != 0 || (sub_2770360C4(objc_msgSend(v4, "hourMediumPluralString"), a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "hourShortString"), a1))
    {
      result = 4;
      if (!a2)
      {
        return result;
      }

      goto LABEL_19;
    }

    if ((sub_2770360C4([v4 minuteLongSingularString], a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "minuteLongPluralString"), a1))
    {
      result = 8;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if ((sub_2770360C4([v4 minuteMediumSingularString], a1) & 1) != 0 || (sub_2770360C4(objc_msgSend(v4, "minuteMediumPluralString"), a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "minuteShortString"), a1))
    {
      result = 8;
      if (!a2)
      {
        return result;
      }

      goto LABEL_19;
    }

    if ((sub_2770360C4([v4 secondLongSingularString], a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "secondLongPluralString"), a1))
    {
      result = 16;
      if (!a2)
      {
        return result;
      }

      goto LABEL_4;
    }

    if ((sub_2770360C4([v4 secondMediumSingularString], a1) & 1) != 0 || (sub_2770360C4(objc_msgSend(v4, "secondMediumPluralString"), a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "secondShortString"), a1))
    {
      result = 16;
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if ((sub_2770360C4([v4 millisecondLongSingularString], a1) & 1) != 0 || sub_2770360C4(objc_msgSend(v4, "millisecondLongPluralString"), a1))
      {
        result = 32;
        if (!a2)
        {
          return result;
        }

LABEL_4:
        v6 = 2;
LABEL_9:
        *a2 = v6;
        return result;
      }

      result = sub_2770360C4([v4 millisecondShortString], a1);
      if (!result)
      {
        return result;
      }

      result = 32;
      if (!a2)
      {
        return result;
      }
    }

LABEL_19:
    v6 = 1;
    goto LABEL_9;
  }

  v6 = 2;
  result = 2;
  if (a2)
  {
    goto LABEL_9;
  }

  return result;
}

__CFString *sub_27703649C(int a1, int a2, double a3)
{
  if (!a2)
  {
    return &stru_28862C2A0;
  }

  v6 = [TSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:?];
  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 minuteLongSingularString];
          }

          else
          {

            return [v6 minuteLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_28862C2A0;
          }

          return [v6 minuteShortString];
        }

      case 16:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 secondLongSingularString];
          }

          else
          {

            return [v6 secondLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_28862C2A0;
          }

          return [v6 secondShortString];
        }

      case 32:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 millisecondLongSingularString];
          }

          else
          {

            return [v6 millisecondLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_28862C2A0;
          }

          return [v6 millisecondShortString];
        }

      default:
        return &stru_28862C2A0;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 weekLongSingularString];
          }

          else
          {

            return [v6 weekLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_28862C2A0;
          }

          return [v6 weekShortString];
        }

      case 2:
        if (a2 == 2)
        {
          if (a3 == 1.0)
          {

            return [v6 dayLongSingularString];
          }

          else
          {

            return [v6 dayLongPluralString];
          }
        }

        else
        {
          if (a2 != 1)
          {
            return &stru_28862C2A0;
          }

          return [v6 dayShortString];
        }

      case 4:
        if (a2 != 2)
        {
          if (a2 == 1)
          {

            return [v6 hourShortString];
          }

          return &stru_28862C2A0;
        }

        if (a3 == 1.0)
        {

          return [v6 hourLongSingularString];
        }

        else
        {

          return [v6 hourLongPluralString];
        }

      default:
        return &stru_28862C2A0;
    }
  }
}

uint64_t sub_277036810(void *a1, _BYTE *a2, void *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = [TSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:?];
  v6 = [a1 stringByTrimmingCharactersInSet:{objc_msgSend(v5, "whitespaceAndNewlineCharacterSet")}];
  v7 = [MEMORY[0x277CCAC80] scannerWithString:v6];
  [v7 setCharactersToBeSkipped:{objc_msgSend(v5, "emptyCharacterSet")}];
  v58 = 0;
  v42 = a3;
  v41 = [a3 decimalSeparator];
  v8 = 0;
  if ([v7 isAtEnd])
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_3;
  }

  v44 = 0;
  v10 = 0;
  v40 = 0;
  v12 = 0;
  v14 = -1;
  v43 = v6;
  do
  {
    if (!v8)
    {
      v8 = [MEMORY[0x277CBEB18] array];
    }

    v15 = [v6 characterAtIndex:{objc_msgSend(v7, "scanLocation")}];
    if (![objc_msgSend(v5 "alphabeticCharacterSet")])
    {
      if (v10)
      {
        if ([objc_msgSend(v5 "decimalDigitCharacterSet")])
        {
          if (!v14)
          {
            return 0;
          }

          v29 = [v5 decimalDigitCharacterSet];
LABEL_42:
          [v7 scanCharactersFromSet:v29 intoString:&v58];
          v45 = 0.0;
          if (![TSUNumberParser numberValueFromString:v58 locale:v42 outDoubleValue:&v45])
          {
            return 0;
          }

          v44 |= trunc(v45) != v45;
          v30 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v8 addObject:{+[TSUPair pairWithFirst:second:](TSUPair, "pairWithFirst:second:", v30, v58)}];
          v14 = 0;
          goto LABEL_61;
        }
      }

      else if ([objc_msgSend(v5 "decimalDigitAndSeperatorsCharacterSet")])
      {
        if (!v14)
        {
          return 0;
        }

        v29 = [v5 decimalDigitAndSeperatorsCharacterSet];
        goto LABEL_42;
      }

      if (![objc_msgSend(v5 "minusSignCharacterSet")] || objc_msgSend(v8, "count"))
      {
        return 0;
      }

      [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"minusSignCharacterSet"), 0}];
      [v8 addObject:@"-"];
      v40 = 1;
      v14 = 3;
      goto LABEL_61;
    }

    if ((v10 | v12))
    {
      return 0;
    }

    v16 = [v8 count];
    result = 0;
    if (v14 == 3 || !v16)
    {
      return result;
    }

    [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"alphabeticCharacterSet"), &v58}];
    if (v14 == 1)
    {
      if ([objc_msgSend(v5 "multiWordDurationUnitStrings")] && (v17 = objc_msgSend(v8, "lastObject"), v18 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@ %@", v17, v58), v54 = 0u, v55 = 0u, v56 = 0u, v57 = 0u, v19 = objc_msgSend(v5, "multiWordDurationUnitStrings"), (v20 = objc_msgSend(v19, "countByEnumeratingWithState:objects:count:", &v54, v61, 16)) != 0))
      {
        v21 = v20;
        v22 = *v55;
LABEL_19:
        v23 = 0;
        while (1)
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v19);
          }

          if ([*(*(&v54 + 1) + 8 * v23) hasPrefix:v18])
          {
            break;
          }

          if (v21 == ++v23)
          {
            v21 = [v19 countByEnumeratingWithState:&v54 objects:v61 count:16];
            if (v21)
            {
              goto LABEL_19;
            }

            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        result = [objc_msgSend(v5 "fullStopDurationUnitStrings")];
        if (!result)
        {
          return result;
        }

        v24 = [v8 lastObject];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v24, v58];
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v25 = [v5 fullStopDurationUnitStrings];
        result = [v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (!result)
        {
          return result;
        }

        v26 = result;
        v27 = *v51;
LABEL_28:
        v28 = 0;
        while (1)
        {
          if (*v51 != v27)
          {
            objc_enumerationMutation(v25);
          }

          if ([*(*(&v50 + 1) + 8 * v28) hasPrefix:v18])
          {
            break;
          }

          if (v26 == ++v28)
          {
            result = [v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
            v26 = result;
            if (result)
            {
              goto LABEL_28;
            }

            return result;
          }
        }
      }

      [v8 removeLastObject];
      v58 = v18;
    }

    if ([objc_msgSend(v5 "fullStopDurationUnitStrings")])
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.", v58];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v32 = [v5 fullStopDurationUnitStrings];
      v33 = [v32 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v47;
        while (2)
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v47 != v35)
            {
              objc_enumerationMutation(v32);
            }

            if ([*(*(&v46 + 1) + 8 * i) hasPrefix:v31])
            {
              if ([v7 scanString:@"." intoString:0])
              {
                v58 = v31;
              }

              goto LABEL_60;
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v46 objects:v59 count:16];
          if (v34)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_60:
    [v8 addObject:v58];
    v14 = 1;
    v6 = v43;
LABEL_61:
    [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"whitespaceCharacterSet"), 0}];
    v37 = [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"separatorPunctuationCharacterSet"), &v58}];
    v38 = v37;
    if (v37)
    {
      if (([v8 count] == 0) | v12 & 1)
      {
        return 0;
      }

      [v8 addObject:v58];
      if ([v58 isEqualToString:@"."])
      {
        v12 = 1;
      }

      else
      {
        v12 = [v58 isEqualToString:v41];
        v10 |= v12 ^ 1;
      }

      v14 = 2;
    }

    [v7 scanCharactersFromSet:objc_msgSend(v5 intoString:{"whitespaceCharacterSet"), 0}];
  }

  while (![v7 isAtEnd]);
  v9 = v44;
  v11 = v40;
  if (v38)
  {
    return 0;
  }

LABEL_3:
  if (a2)
  {
    *a2 = (v12 | v10) & 1;
  }

  if (v10 & v9)
  {
    return 0;
  }

  if ((v10 | v12))
  {
    if (!(v10 & 1 | ((v12 & 1) == 0)))
    {
      return 0;
    }
  }

  else if ((v11 & 1) != ([v8 count] & 1))
  {
    return 0;
  }

  if ((v11 & 1) != 0 && [v8 count] < 2)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(void *a1, int a2, TSULocale *a3, double a4)
{
  v4 = a3;
  v76 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, TSULocale *)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 982, 0, "invalid nil value for '%{public}s'", "locale");
    +[TSUAssertionHandler logBacktraceThrottled];
    v4 = +[TSULocale currentLocale];
  }

  v8 = [a1 length];
  v9 = [MEMORY[0x277CCAB68] stringWithCapacity:v8];
  v10 = [TSUDurationLocaleSpecificStorage localeSpecificStorageForLocale:v4];
  if (a4 < 0.0)
  {
    [v9 appendString:{-[TSULocale minusSign](v4, "minusSign")}];
    a4 = fabs(a4);
  }

  v71 = v4;
  v73 = v9;
  if (!v8)
  {
    v13 = 0;
    v74 = 0;
    v11 = 0;
    v30 = 0;
    v33 = 2.22507386e-308;
    v31 = 2.22507386e-308;
    v32 = 2.22507386e-308;
    v34 = 2.22507386e-308;
    goto LABEL_64;
  }

  v11 = 0;
  v12 = 0;
  v74 = 0;
  v13 = 0;
  v69 = v10;
  do
  {
    v14 = [a1 characterAtIndex:v12];
    v15 = v14;
    v16 = v12 + 1;
    if (v12 + 1 >= v8)
    {
      if (v14 == 39)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v17 = [a1 characterAtIndex:v12 + 1];
      if (v15 == 39)
      {
        if (v17 == 39)
        {
          [v9 appendString:@"'"];
          v16 = v12 + 2;
          goto LABEL_53;
        }

        while (1)
        {
          v18 = [a1 characterAtIndex:v16];
          v19 = v18;
          if (v16 + 1 >= v8)
          {
            break;
          }

          v20 = [a1 characterAtIndex:v16 + 1];
          if (v19 != 39)
          {
            goto LABEL_16;
          }

          if (v20 != 39)
          {
            goto LABEL_33;
          }

          [v9 appendString:@"'"];
          v16 += 2;
LABEL_17:
          if (v16 >= v8)
          {
            goto LABEL_53;
          }
        }

        if (v18 == 39)
        {
LABEL_33:
          ++v16;
          goto LABEL_53;
        }

LABEL_16:
        [v9 appendFormat:@"%C", v19];
        ++v16;
        goto LABEL_17;
      }
    }

    if (![objc_msgSend(v10 "specialDurationFormatCharacters")])
    {
      [v9 appendFormat:@"%C", v15];
      goto LABEL_53;
    }

    v70 = v13++;
    if (v13 >= 7)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, TSULocale *)"}];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"];
      v23 = v21;
      v10 = v69;
      [TSUAssertionHandler handleFailureInFunction:v23 file:v22 lineNumber:1032 isFatal:0 description:"Too many placeholders in duration format string!"];
      v9 = v73;
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v24 = [v9 length];
    if (v16 >= v8)
    {
LABEL_37:
      v27 = 0;
      goto LABEL_40;
    }

    v25 = v8 - v12;
    v26 = 1;
    while ([a1 characterAtIndex:v16] == v15)
    {
      ++v26;
      if (v8 == ++v16)
      {
        v16 = v8;
        v26 = v25;
        break;
      }
    }

    v10 = v69;
    if (v26 <= 2)
    {
      if (v26 == 1)
      {
        goto LABEL_37;
      }

      if (v26 != 2)
      {
        goto LABEL_38;
      }

      v27 = 1;
    }

    else
    {
      if (v26 == 3)
      {
        v27 = 2;
        goto LABEL_40;
      }

      if (v26 != 5)
      {
LABEL_38:
        v27 = 3;
        goto LABEL_40;
      }

      v27 = 2;
      v74 = 1;
    }

LABEL_40:
    v28 = 0;
    if (v15 > 108)
    {
      if (v15 == 109)
      {
        v28 = 8;
      }

      else if (v15 == 115)
      {
        v28 = 16;
      }

      else
      {
        v28 = v15 == 119;
      }
    }

    else
    {
      switch(v15)
      {
        case 'd':
          v28 = 2;
          break;
        case 'f':
          v28 = 32;
          break;
        case 'h':
          v28 = 4;
          break;
      }
    }

    v29 = &v75[v70];
    *v29 = v24;
    *(v29 + 8) = v28;
    v11 |= v28;
    *(v29 + 9) = 0;
    *(v29 + 11) = 0;
    *(v29 + 3) = v27;
LABEL_53:
    v12 = v16;
  }

  while (v16 < v8);
  v30 = v11;
  if (v11)
  {
    v31 = floor(a4 / 604800.0);
    a4 = a4 + v31 * -604800.0;
    if ((v11 & 2) == 0)
    {
      goto LABEL_61;
    }

LABEL_56:
    v32 = floor(a4 / 86400.0);
    a4 = a4 + v32 * -86400.0;
    if ((v11 & 4) != 0)
    {
      goto LABEL_57;
    }

LABEL_62:
    v33 = 2.22507386e-308;
    if ((v11 & 8) == 0)
    {
      goto LABEL_63;
    }

LABEL_58:
    v34 = floor(a4 / 60.0);
    a4 = a4 + v34 * -60.0;
  }

  else
  {
    v31 = 2.22507386e-308;
    if ((v11 & 2) != 0)
    {
      goto LABEL_56;
    }

LABEL_61:
    v32 = 2.22507386e-308;
    if ((v11 & 4) == 0)
    {
      goto LABEL_62;
    }

LABEL_57:
    v33 = floor(a4 / 3600.0);
    a4 = a4 + v33 * -3600.0;
    if ((v11 & 8) != 0)
    {
      goto LABEL_58;
    }

LABEL_63:
    v34 = 2.22507386e-308;
  }

LABEL_64:
  v35 = trunc(a4);
  if ((v30 & 0x10) != 0)
  {
    v36 = a4 - v35;
  }

  else
  {
    v36 = a4;
  }

  if ((v30 & 0x10) != 0)
  {
    v37 = v35;
  }

  else
  {
    v37 = 2.22507386e-308;
  }

  if ((v30 & 0x20) != 0)
  {
    v38 = v36 * 1000.0;
  }

  else
  {
    v38 = 2.22507386e-308;
  }

  v39 = TSUDurationFormatterMinDurationUnitInUnits(v11);
  v40 = v39;
  if (!a2)
  {
    if (v39 > 7)
    {
      switch(v39)
      {
        case 8:
          v34 = v34 + v36 / 60.0;
          goto LABEL_112;
        case 16:
          v37 = v37 + v36;
          goto LABEL_112;
        case 32:
          goto LABEL_93;
      }
    }

    else
    {
      switch(v39)
      {
        case 1:
          v31 = v31 + v36 / 604800.0;
          goto LABEL_112;
        case 2:
          v32 = v32 + v36 / 86400.0;
          goto LABEL_112;
        case 4:
          v33 = v33 + v36 / 3600.0;
          goto LABEL_112;
      }
    }

    v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, TSULocale *)"}];
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"];
    v43 = v45;
    v44 = 1202;
    goto LABEL_103;
  }

  if (v39 > 7)
  {
    if (v39 == 8)
    {
      if (round(v36 / 60.0) >= 1.0)
      {
        v34 = v34 + 1.0;
      }

      goto LABEL_112;
    }

    if (v39 == 16)
    {
      if (round(v36) >= 1.0)
      {
        v37 = v37 + 1.0;
      }

      goto LABEL_112;
    }

    if (v39 != 32)
    {
      goto LABEL_89;
    }

LABEL_93:
    v38 = round(v38);
    goto LABEL_112;
  }

  switch(v39)
  {
    case 1:
      if (round(v36 / 604800.0) >= 1.0)
      {
        v31 = v31 + 1.0;
      }

      break;
    case 2:
      if (round(v36 / 86400.0) >= 1.0)
      {
        v32 = v32 + 1.0;
      }

      break;
    case 4:
      if (round(v36 / 3600.0) >= 1.0)
      {
        v33 = v33 + 1.0;
      }

      break;
    default:
LABEL_89:
      v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, TSULocale *)"}];
      v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"];
      v43 = v41;
      v44 = 1178;
LABEL_103:
      [TSUAssertionHandler handleFailureInFunction:v43 file:v42 lineNumber:v44 isFatal:0 description:"Unknown minimum unit!"];
      +[TSUAssertionHandler logBacktraceThrottled];
      break;
  }

LABEL_112:
  v46 = TSUDurationFormatterMaxDurationUnitInUnits(v11);
  if (v46 != v40)
  {
    v47 = v46;
    do
    {
      if (v40 <= 7u)
      {
        switch(v40)
        {
          case 2u:
            if (v32 < 7.0)
            {
              goto LABEL_133;
            }

            v31 = v31 + 1.0;
            LOBYTE(v40) = 1;
            v32 = 0.0;
            continue;
          case 4u:
            if (v33 < 24.0)
            {
              goto LABEL_133;
            }

            v32 = v32 + 1.0;
            LOBYTE(v40) = 2;
            v33 = 0.0;
            continue;
          case 1u:
            goto LABEL_133;
        }
      }

      else
      {
        switch(v40)
        {
          case 8u:
            if (v34 < 60.0)
            {
              goto LABEL_133;
            }

            v33 = v33 + 1.0;
            LOBYTE(v40) = 4;
            v34 = 0.0;
            continue;
          case 0x10u:
            if (v37 < 60.0)
            {
              goto LABEL_133;
            }

            v34 = v34 + 1.0;
            LOBYTE(v40) = 8;
            v37 = 0.0;
            continue;
          case 0x20u:
            if (v38 < 1000.0)
            {
              goto LABEL_133;
            }

            v37 = v37 + 1.0;
            LOBYTE(v40) = 16;
            v38 = 0.0;
            continue;
        }
      }

      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, TSULocale *)"}];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v48, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 1266, 0, "Unknown unit!");
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    while (v47 != v40);
  }

LABEL_133:
  if (v13)
  {
    v49 = 0;
    v50 = v13;
    v51 = 0;
    v52 = 0;
    if (a2)
    {
      v53 = 0;
    }

    else
    {
      v53 = -2;
    }

    v54 = v50;
    do
    {
      v55 = &v75[v49];
      v56 = *v55;
      v57 = *(v55 + 8);
      v58 = *(v55 + 3);
      if (v57 > 7)
      {
        switch(v57)
        {
          case 8u:
            v59 = 0;
            v60 = v34;
            break;
          case 0x10u:
            v59 = 0;
            v60 = v37;
            break;
          case 0x20u:
            v59 = 1;
            v60 = v38;
            break;
          default:
            goto LABEL_149;
        }
      }

      else
      {
        switch(v57)
        {
          case 1u:
            v59 = 0;
            v60 = v31;
            break;
          case 2u:
            v59 = 0;
            v60 = v32;
            break;
          case 4u:
            v59 = 0;
            v60 = v33;
            break;
          default:
LABEL_149:
            v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterStringFromTimeIntervalWithFormatAndRounding(NSTimeInterval, NSString *, BOOL, TSULocale *)"}];
            +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v61, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 1303, 0, "Unknown duration unit!");
            +[TSUAssertionHandler logBacktraceThrottled];
            v59 = 0;
            v60 = 0.0;
            break;
        }
      }

      if ((v74 & (v60 == 0.0)) != 1 || !(v51 & 1 | (v49 + 1 != v54)))
      {
        v63 = 0;
        if (v58 > 1)
        {
          if (v58 == 2)
          {
            LOBYTE(v68) = 0;
            v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[TSULocale numberFormatterStringFromDouble:withFormat:useDecimalPlaces:minDecimalPlaces:decimalPlaces:showThousandsSeparator:currencyCode:suppressMinusSign:](v71, "numberFormatterStringFromDouble:withFormat:useDecimalPlaces:minDecimalPlaces:decimalPlaces:showThousandsSeparator:currencyCode:suppressMinusSign:", @"0", a2 ^ 1u, 0, v53, 0, 0, v60, v68), sub_27703649C(v57, 1, v60)];
          }

          else
          {
            if (v58 != 3)
            {
              goto LABEL_170;
            }

            LOBYTE(v68) = 0;
            v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", -[TSULocale numberFormatterStringFromDouble:withFormat:useDecimalPlaces:minDecimalPlaces:decimalPlaces:showThousandsSeparator:currencyCode:suppressMinusSign:](v71, "numberFormatterStringFromDouble:withFormat:useDecimalPlaces:minDecimalPlaces:decimalPlaces:showThousandsSeparator:currencyCode:suppressMinusSign:", @"0", a2 ^ 1u, 0, v53, 0, 0, v60, v68), sub_27703649C(v57, 2, v60)];
          }
        }

        else
        {
          if (v58)
          {
            if (v58 == 1)
            {
              if (v59)
              {
                v64 = @"000";
              }

              else
              {
                v64 = @"00";
              }

              goto LABEL_167;
            }

LABEL_170:
            [v73 insertString:v63 atIndex:v56 + v52];
            v62 = [v63 length];
            ++v49;
            v51 = 1;
            goto LABEL_171;
          }

          if (v59)
          {
            v64 = @"000";
          }

          else
          {
            v64 = @"0";
          }

LABEL_167:
          LOBYTE(v68) = 0;
          v65 = [(TSULocale *)v71 numberFormatterStringFromDouble:v64 withFormat:a2 ^ 1u useDecimalPlaces:0 minDecimalPlaces:v53 decimalPlaces:0 showThousandsSeparator:0 currencyCode:v60 suppressMinusSign:v68];
        }

        v63 = v65;
        goto LABEL_170;
      }

      v62 = -1;
      ++v49;
LABEL_171:
      v52 += v62;
    }

    while (v49 != v54);
  }

  if ((v74 & 1) == 0)
  {
    return v73;
  }

  v66 = [MEMORY[0x277CCA900] whitespaceCharacterSet];

  return [v73 stringByTrimmingCharactersInSet:v66];
}

uint64_t TSUDurationFormatterMinDurationUnitInUnits(char a1)
{
  v1 = a1 & 1;
  if ((a1 & 2) != 0)
  {
    v1 = 2;
  }

  if ((a1 & 4) != 0)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 8) != 0)
  {
    v3 = 8;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 0x10) != 0)
  {
    v4 = 16;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 0x20) != 0)
  {
    return 32;
  }

  else
  {
    return v4;
  }
}

uint64_t TSUDurationFormatterMaxDurationUnitInUnits(char a1)
{
  v1 = a1 & 0x20;
  if ((a1 & 0x10) != 0)
  {
    v1 = 16;
  }

  if ((a1 & 8) != 0)
  {
    v2 = 8;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 4) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 2) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (a1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void *TSUDurationFormatterFormatFromDurationUnits(unsigned int a1, int a2, int a3)
{
  v6 = [MEMORY[0x277CCAB68] string];
  v7 = vaddv_s16((*&vshl_u16(vdup_n_s16(a1), 0xFFFBFFFCFFFDFFFELL) & 0xFF01FF01FF01FF01));
  v8 = (v7 + ((a1 & 2) != 0) + (a1 & 1));
  if (v7 + ((a1 & 2) != 0) + (a1 & 1))
  {
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 2) == 0)
      {
        if ((a1 & 4) == 0)
        {
          if ((a1 & 8) == 0)
          {
            if ((a1 & 0x10) == 0)
            {
              v9 = 0;
              v10 = v8;
              goto LABEL_80;
            }

            v24 = 1;
            LOWORD(v22) = v8;
            if (a2)
            {
              goto LABEL_72;
            }

LABEL_69:
            if (v8 > 1)
            {
              v31 = @"ss.";
LABEL_78:
              [v6 appendString:v31];
              v10 = v22 - v24;
              goto LABEL_79;
            }

LABEL_72:
            if (a2 || v8 != 1)
            {
              if (a2 == 1)
              {
                v31 = @"sss ";
              }

              else
              {
                v31 = @"ssss ";
              }
            }

            else
            {
              v31 = @"s:";
            }

            goto LABEL_78;
          }

          v21 = 1;
          v19 = v8;
          if (a2)
          {
            goto LABEL_60;
          }

LABEL_57:
          if (v8 > 1)
          {
            v30 = @"mm:";
            goto LABEL_66;
          }

LABEL_60:
          if (a2 || v8 != 1)
          {
            if (a2 == 1)
            {
              v30 = @"mmm ";
            }

            else
            {
              v30 = @"mmmm ";
            }
          }

          else
          {
            v30 = @"m:";
          }

LABEL_66:
          [v6 appendString:v30];
          v22 = v19 - v21;
          if ((a1 & 0x10) != 0)
          {
            goto LABEL_67;
          }

          goto LABEL_33;
        }

        v18 = 1;
        v16 = v8;
LABEL_49:
        v28 = @"hhhh ";
        if (a2 == 1)
        {
          v28 = @"hhh ";
        }

        if (a2)
        {
          v29 = v28;
        }

        else
        {
          v29 = @"h:";
        }

        [v6 appendString:v29];
        v19 = v16 - v18;
        if ((a1 & 8) != 0)
        {
          goto LABEL_55;
        }

        goto LABEL_27;
      }

      v15 = 1;
      v14 = v8;
      goto LABEL_41;
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDurationFormatterFormatFromDurationUnits(TSUDurationUnits, TSUDurationStyle, BOOL)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 1536, 0, "No units passed to TSUDurationFormatterFormatFromDurationUnits()!");
    +[TSUAssertionHandler logBacktraceThrottled];
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v12 = @"wwww ";
  if (a2 == 1)
  {
    v12 = @"www ";
  }

  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"w:";
  }

  [v6 appendString:v13];
  v14 = v8 - 1;
  if ((a1 & 2) != 0)
  {
    v15 = 1;
    goto LABEL_41;
  }

  v15 = 0;
  v16 = 0;
  if (v8 != 1 || a3 != 0)
  {
LABEL_41:
    v26 = @"dddd ";
    if (a2 == 1)
    {
      v26 = @"ddd ";
    }

    if (a2)
    {
      v27 = v26;
    }

    else
    {
      v27 = @"d:";
    }

    [v6 appendString:v27];
    v16 = v14 - v15;
    if ((a1 & 4) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_21;
  }

  if ((a1 & 4) != 0)
  {
LABEL_47:
    v18 = 1;
    goto LABEL_49;
  }

LABEL_21:
  v18 = 0;
  v19 = 0;
  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = a3 == 0;
  }

  if (!v20)
  {
    goto LABEL_49;
  }

  if ((a1 & 8) != 0)
  {
LABEL_55:
    v21 = 1;
    goto LABEL_56;
  }

LABEL_27:
  v21 = 0;
  v22 = 0;
  if (v19)
  {
    v23 = 0;
  }

  else
  {
    v23 = a3 == 0;
  }

  if (!v23)
  {
LABEL_56:
    if (a2)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  if ((a1 & 0x10) != 0)
  {
LABEL_67:
    v24 = 1;
    goto LABEL_68;
  }

LABEL_33:
  v24 = 0;
  if (v22)
  {
    v25 = 0;
  }

  else
  {
    v25 = a3 == 0;
  }

  if (!v25)
  {
LABEL_68:
    if (a2)
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  v10 = 0;
LABEL_79:
  v9 = 1;
LABEL_80:
  if (!v10)
  {
    v9 = 0;
  }

  if ((a1 & 0x20) != 0 || v9)
  {
    v32 = @"ffff ";
    if (a2 == 1)
    {
      v32 = @"fff ";
    }

    if (v8)
    {
      v33 = a2 == 0;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      v34 = @"f.";
    }

    else
    {
      v34 = v32;
    }

    [v6 appendString:v34];
  }

  if ([v6 length])
  {
    [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
  }

  return v6;
}

uint64_t TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration(uint64_t result, int a2, double a3)
{
  if (a3 == 0.0)
  {
    return result;
  }

  v3 = fabs(a3);
  v4 = result;
  while (1)
  {
    v5 = v4 | result;
    if (v4 > 7u)
    {
      break;
    }

    switch(v4)
    {
      case 1u:
        v6 = 2;
        v7 = 604800.0;
        break;
      case 2u:
        v6 = 4;
        v7 = 86400.0;
        break;
      case 4u:
        v6 = 8;
        v7 = 3600.0;
        break;
      default:
        goto LABEL_23;
    }

LABEL_14:
    v8 = floor(v3 / v7);
    v3 = v3 - v8 * v7;
    if (v8 == 0.0)
    {
      v9 = a2;
    }

    else
    {
      v9 = 1;
    }

    v10 = result & ~v4;
    if (v9)
    {
      LODWORD(result) = v5;
    }

    else
    {
      LODWORD(result) = v10;
    }

    v4 = v6;
    if (v3 <= 0.0)
    {
      return result;
    }
  }

  switch(v4)
  {
    case 8u:
      v6 = 16;
      v7 = 60.0;
      goto LABEL_14;
    case 0x10u:
      v7 = 1.0;
      v6 = 32;
      goto LABEL_14;
    case 0x20u:
      goto LABEL_24;
  }

LABEL_23:
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"TSUDurationUnits TSUDurationFormatterDurationUnitsNecessaryToFullyDisplayDuration(NSTimeInterval, TSUDurationUnits, BOOL)", v3, 604800.0, 86400.0, 3600.0}];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 1647, 0, "Unknown duration unit!");
  +[TSUAssertionHandler logBacktraceThrottled];
LABEL_24:
  LOBYTE(result) = v5;
  return result;
}

double TSUDurationFormatterSecondsInDurationUnit(char a1)
{
  if (a1)
  {
    return 604800.0;
  }

  if ((a1 & 2) != 0)
  {
    return 86400.0;
  }

  if ((a1 & 4) != 0)
  {
    return 3600.0;
  }

  if ((a1 & 8) != 0)
  {
    return 60.0;
  }

  result = 1.0;
  if ((a1 & 0x10) == 0)
  {
    if ((a1 & 0x20) != 0)
    {
      return 0.001;
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"double TSUDurationFormatterSecondsInDurationUnit(TSUDurationUnits)", 1.0}];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDurationFormatter.m"], 1709, 0, "Unknown duration unit in TSUDurationFormatterSecondsInDurationUnit!");
      +[TSUAssertionHandler logBacktraceThrottled];
      return -1.0;
    }
  }

  return result;
}

__CFString *sub_277038140()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 preferredLocalizations];

  if ([v1 count])
  {
    v2 = [v1 objectAtIndexedSubscript:0];
  }

  else
  {
    v2 = @"en_US";
  }

  return v2;
}

id sub_2770382CC(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [v2 tsu_addObserverForName:*MEMORY[0x277CBEEB0] object:0 queue:0 usingBlock:v1];
  v4 = [v2 tsu_addObserverForName:*MEMORY[0x277CBE620] object:0 queue:0 usingBlock:v1];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{v3, v4, 0}];

  return v5;
}

void sub_2770383A8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2770383E0()
{
  os_unfair_lock_lock(&dword_280A63948);
  ++qword_280A63950;
  v0 = qword_280A63910;
  qword_280A63910 = 0;

  os_unfair_lock_unlock(&dword_280A63948);
}

void sub_27703859C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_277038694(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_277038790(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2770388E4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2770390E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_277039988(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_277039FF4()
{
  v23 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = SFUMainBundle();
  v2 = [v1 pathForResource:@"LocaleIDData" ofType:@"plist"];
  v3 = [v0 initWithContentsOfFile:v2];

  v17 = v3;
  v4 = [v3 objectForKeyedSubscript:@"Tiers0and1"];
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizations];

  v7 = [v4 mutableCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if (([v6 containsObject:v12] & 1) == 0)
        {
          v13 = [v12 substringToIndex:2];
          v14 = [v6 containsObject:v13];

          if ((v14 & 1) == 0)
          {
            [v7 removeObject:v12];
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
  v16 = qword_280A63960;
  qword_280A63960 = v15;
}

void sub_27703A2CC()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEAC0]);
  v1 = SFUMainBundle();
  v2 = [v1 pathForResource:@"LocaleIDData" ofType:@"plist"];
  v3 = [v0 initWithContentsOfFile:v2];

  v18 = v3;
  v19 = [v3 objectForKeyedSubscript:@"Tiers0thru3"];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizations];

  v20 = [v19 mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v19;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = MEMORY[0x277CCA8D8];
        v26 = *(*(&v22 + 1) + 8 * v8);
        v9 = v26;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        v12 = [v10 preferredLocalizationsFromArray:v5 forPreferences:v11];
        v13 = [v12 objectAtIndexedSubscript:0];

        v14 = [v13 substringToIndex:2];
        if ([v9 hasPrefix:v14])
        {

          goto LABEL_13;
        }

        if (![v9 isEqualToString:@"nb"])
        {

LABEL_12:
          [v20 removeObject:v9];
          goto LABEL_13;
        }

        v15 = [v13 isEqualToString:@"no"];

        if ((v15 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_13:

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  v17 = qword_280A63970;
  qword_280A63970 = v16;
}

void sub_27703A664()
{
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v0 = +[TSULocale allSupportedTier3Languages];
  [v8 addObjectsFromArray:v0];

  v1 = objc_alloc(MEMORY[0x277CBEAC0]);
  v2 = SFUMainBundle();
  v3 = [v2 pathForResource:@"LocaleIDData" ofType:@"plist"];
  v4 = [v1 initWithContentsOfFile:v3];

  v5 = [v4 objectForKeyedSubscript:@"AdditionalTemplatePickerLanguages"];
  [v8 addObjectsFromArray:v5];
  v6 = [v8 allObjects];
  v7 = qword_280A63980;
  qword_280A63980 = v6;
}

void sub_27703AA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

uint64_t sub_27703B3D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  v10 = a2[3];
  a2[3] = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;

  v12 = a2[4];
  a2[4] = 0;
  v13 = *(a1 + 32);
  *(a1 + 32) = v12;

  v14 = *(a2 + 5);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v14;
  TSUIndexSet::operator=(a1 + 64, (a2 + 8));
  *(a1 + 96) = *(a2 + 48);
  TSUIndexSet::operator=(a1 + 104, (a2 + 13));
  TSUIndexSet::operator=(a1 + 136, (a2 + 17));
  sub_27703EEB8(a1 + 168, a2 + 21);
  sub_27703EFFC(a1 + 208, a2 + 26);
  *(a1 + 248) = a2[31];
  sub_27703F150(a1 + 256, a2 + 32);
  *(a1 + 296) = *(a2 + 296);
  v15 = a2[38];
  a2[38] = 0;
  v16 = *(a1 + 304);
  *(a1 + 304) = v15;

  return a1;
}

void sub_27703BA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSULocale;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_27703BCAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_27703C014(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_27703CC2C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_27703DB04(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_27703E4BC(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_singletonAlloc")];
  v3 = qword_280A639A0;
  qword_280A639A0 = v2;

  if (!qword_280A639A0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUSharedLocale sharedLocale]_block_invoke"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSULocale.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:1446 isFatal:0 description:"Couldn't create singleton instance of %@", *(a1 + 32)];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

void sub_27703E760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_27703E790(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained datePreferencesChanged:v3];
}

void sub_27703E858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSUSharedLocale;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_27703E94C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_27703E968(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained datePreferencesChanged:v3];
}

void sub_27703EA60(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [v2 removeObserver:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_27703EBB4(void *a1)
{
  v1 = [a1 localizedStringForKey:? value:? table:?];

  return v1;
}

id sub_27703EBE0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v24 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277CCA8D8];
  v14 = [a1 localizations];
  v15 = [v12 localeIdentifier];
  v16 = [TSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:v15];
  v25[0] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v18 = [v13 preferredLocalizationsFromArray:v14 forPreferences:v17];
  v19 = [v18 objectAtIndexedSubscript:0];

  v20 = [a1 bundleURL];
  v21 = CFBundleCreate(0, v20);

  v22 = CFBundleCopyLocalizedStringForLocalization();
  CFRelease(v21);

  return v22;
}

uint64_t TSUIsLocaleISO(CFLocaleRef locale)
{
  if (qword_280A639B8 != -1)
  {
    sub_277112DD0();
  }

  v2 = CFLocaleGetValue(locale, *MEMORY[0x277CBEE98]);
  v3 = [qword_280A639B0 containsObject:v2];

  return v3 ^ 1u;
}

void sub_27703EEA0()
{
  v0 = qword_280A639B0;
  qword_280A639B0 = &unk_28864B638;
}

void sub_27703EEB8(uint64_t a1, uint64_t *a2)
{
  sub_27703EF5C(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_27703EF5C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_27703EFB8(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_27703EFB8(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_27703EFFC(uint64_t a1, uint64_t *a2)
{
  sub_27703F0A0(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_27703F0A0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_27703F0FC(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_27703F0FC(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      sub_277028B48(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_27703F150(uint64_t a1, uint64_t *a2)
{
  sub_27703F1F4(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *sub_27703F1F4(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_27703F260(uint64_t a1)
{
  sub_27703F2E4(a1 + 256);
  sub_27703F330(a1 + 208);
  sub_27703F36C(a1 + 168);
  TSUIndexSet::~TSUIndexSet((a1 + 136));
  TSUIndexSet::~TSUIndexSet((a1 + 104));
  TSUIndexSet::~TSUIndexSet((a1 + 64));

  return a1;
}

uint64_t sub_27703F2E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_27703F330(uint64_t a1)
{
  sub_27703F0FC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_27703F36C(uint64_t a1)
{
  sub_27703EFB8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

id sub_2770402CC(int a1, unsigned __int16 a2, unsigned __int16 a3, char a4, __CFString *a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, void *a11, uint64_t a12, unsigned __int8 a13, char a14, unsigned __int16 a15, unsigned __int16 a16, unsigned __int8 a17, char a18, __int16 a19, unsigned __int8 a20, unsigned __int16 a21, unsigned __int8 a22, char a23, void *a24)
{
  v28 = a9;
  if (__fpclassifyd(a9) == 3)
  {
    v28 = 0.0;
  }

  if ((a7 & 1) == 0)
  {
    a3 = sub_27704387C(v28);
    a2 = a3;
  }

  v29 = v28 * a10;
  if (a14)
  {
    v30 = @"#,##0";
    v31 = a24;
    v32 = v29;
    v33 = 1;
    v34 = 2;
    v35 = 2;
    v36 = 1;
LABEL_7:
    v37 = 0;
LABEL_8:

    return [v31 numberFormatterStringFromDouble:v30 withFormat:v33 useDecimalPlaces:v34 minDecimalPlaces:v35 decimalPlaces:v36 showThousandsSeparator:v37 currencyCode:v32 suppressMinusSign:?];
  }

  v33 = a15 ^ 1u;
  if (((a15 ^ 1) & 1) == 0 && (a15 & 0x100) == 0)
  {

    return sub_277044174(a5);
  }

  v39 = a4 | a13;
  if (BYTE1(a12) | a12 || (a16 & HIBYTE(a16) & 1) != 0 || a8)
  {
    if (a6)
    {
      v43 = a5;
      v44 = -[__CFString rangeOfString:](a5, "rangeOfString:", [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 164]);
      v46 = BYTE3(a12);
      v45 = HIWORD(a12);
      v47 = a17;
      if (v44 && (v48 = v44, v44 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v49 = -[__CFString rangeOfCharacterFromSet:options:](a5, "rangeOfCharacterFromSet:options:", [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0#"], 4);
        v33 = a15 ^ 1u;
        v39 = a4 | a13;
        if (v48 > v49)
        {
          v50 = [+[TSULocale currencySymbolForCurrencyCode:](TSULocale currencySymbolForCurrencyCode:{a6, a15 ^ 1u), "length"}];
          v39 = a4 | a13;
          v33 = a15 ^ 1u;
          v45 = HIWORD(a12) + v50 - 1;
        }
      }

      else
      {
        v33 = a15 ^ 1u;
        v39 = a4 | a13;
      }
    }

    else
    {
      v46 = BYTE3(a12);
      v45 = HIWORD(a12);
      v47 = a17;
      v43 = a5;
    }

    v51 = trunc(v29);
    if ((a16 & HIBYTE(a16)) != 0)
    {
      v52 = v51;
    }

    else
    {
      v52 = v29;
    }

    LOBYTE(v99) = v39;
    v53 = [a24 numberFormatterStringFromDouble:v43 withFormat:v33 useDecimalPlaces:a3 minDecimalPlaces:a2 decimalPlaces:v47 showThousandsSeparator:a6 currencyCode:v52 suppressMinusSign:v99];
    if (BYTE1(a12) | a12)
    {
      v54 = fabs(v52);
      if (v54 >= 1.0)
      {
        v55 = log10(v54) + 1;
      }

      else
      {
        v55 = 0;
      }

      if (v55 <= BYTE2(a12))
      {
        v56 = BYTE2(a12);
      }

      else
      {
        v56 = v55;
      }

      if ((a12 - v56) >= 1)
      {
        v57 = [v53 mutableCopy];
        v58 = sub_27704387C(v29);
        v59 = [v53 length];
        if (BYTE5(a12) == BYTE4(a12) && v58 == 0)
        {
          v61 = v59 + ~(v56 + v45) + 1;
        }

        else
        {
          v61 = v59 + ~(v56 + v45);
        }

        v62 = v58 - (BYTE5(a12) - BYTE4(a12));
        if (v62 <= 0)
        {
          v63 = BYTE4(a12);
        }

        else
        {
          v63 = BYTE4(a12) - v62;
        }

        v64 = v61 + v63;
        if (v58 < BYTE5(a12))
        {
          v65 = v64;
        }

        else
        {
          v65 = v59 + ~(v56 + v45);
        }

        if (v47 && (v66 = [a24 groupingSize]) != 0)
        {
          v67 = vcvtpd_s64_f64(v56 / v66);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 - 1;
        }

        else
        {
          v68 = 0;
        }

        v69 = v65 - v68;
        if (v69 >= 0)
        {
          v70 = 0;
          do
          {
            if (v69 >= [v57 length])
            {
              break;
            }

            v71 = [v57 characterAtIndex:v69];
            if (v71 == 48)
            {
              ++v70;
            }

            if ((v71 - 58) <= 0xFFFFFFF6)
            {
              [v57 replaceCharactersInRange:v69 withString:{1, @" "}];
            }

            if (a12 - v56 <= v70)
            {
              break;
            }

            v72 = v69-- <= 0;
          }

          while (!v72);
        }

        v73 = BYTE1(a12) - v46;
        if (BYTE1(a12) <= v46)
        {
          goto LABEL_88;
        }

        v74 = v45;
        if (v57)
        {
LABEL_83:
          v75 = [v53 length];
          v76 = v46 - v74 + v75 + 1;
          if (v76 + v73 <= [v53 length])
          {
            v77 = v75 + v73 + v46 - v74;
            do
            {
              if ([v57 characterAtIndex:v77] != 48)
              {
                break;
              }

              [v57 replaceCharactersInRange:v77 withString:{1, @" "}];
              v72 = v77-- <= v76;
            }

            while (!v72);
          }

LABEL_88:
          v40 = v53;
          if (v57)
          {
            v40 = v57;
          }

          goto LABEL_90;
        }

LABEL_82:
        v57 = [v53 mutableCopy];
        goto LABEL_83;
      }

      v73 = BYTE1(a12) - v46;
      v40 = v53;
      if (v73 >= 1)
      {
        v74 = v45;
        goto LABEL_82;
      }
    }

    else
    {
      v40 = 0;
    }

LABEL_90:
    if (a8)
    {
      v107 = v53;
      if (v40)
      {
        v78 = v40;
      }

      else
      {
        v78 = v53;
      }

      v40 = [MEMORY[0x277CCAB68] string];
      v105 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v79 = [v78 length];
      v80 = [a11 firstIndex];
      if (v79 - 1 < 0)
      {
        v84 = 0;
      }

      else
      {
        v81 = v80;
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v85 = v45;
        do
        {
          if (v81 == v83)
          {
            [v40 insertString:objc_msgSend(a8 atIndex:{"objectAtIndex:", v84), 0}];
            v81 = [a11 indexGreaterThanIndex:v81];
            ++v84;
          }

          v86 = [v78 characterAtIndex:--v79];
          v87 = [v107 characterAtIndex:v79];
          [v40 insertString:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"stringWithFormat:", @"%C", v86), 0}];
          if (v82 >= v85)
          {
            v83 += [v105 characterIsMember:v87];
          }

          ++v82;
        }

        while (v79 > 0);
      }

      if (v84 < [a8 count] && objc_msgSend(a8, "count") > v84)
      {
        v88 = v84;
        do
        {
          [v40 insertString:objc_msgSend(a8 atIndex:{"objectAtIndex:", v88++), 0}];
        }

        while (v88 < [a8 count]);
      }

      v53 = v107;
    }

    if ((a16 & HIBYTE(a16)) == 0)
    {
      return v40;
    }

    if (v40)
    {
      v89 = v40;
    }

    else
    {
      v89 = v53;
    }

    v40 = [v89 mutableCopy];
    v90 = fabs(v29);
    v41 = TSUNumberFormatFractionStringFromDouble(a23, a24, v90 - floor(v90));
    v42 = MEMORY[0x277CCACA8];
    goto LABEL_113;
  }

  if (HIBYTE(a16) && (a16 & 1) == 0)
  {
    v40 = [sub_277044174(a5) mutableCopy];
    if (a6)
    {
      [v40 replaceOccurrencesOfString:objc_msgSend(MEMORY[0x277CCACA8] withString:"stringWithFormat:" options:@"%C" range:{164), +[TSULocale currencySymbolForCurrencyCode:](TSULocale, "currencySymbolForCurrencyCode:", a6), 0, 0, objc_msgSend(v40, "length")}];
    }

    v41 = TSUNumberFormatFractionStringFromDouble(a23, a24, v29);
    v42 = MEMORY[0x277CCACA8];
LABEL_113:
    [v40 replaceOccurrencesOfString:objc_msgSend(v42 withString:"stringWithFormat:" options:@"%C" range:{58400), v41, 0, 0, objc_msgSend(v40, "length")}];
    return v40;
  }

  if (a1 == 1)
  {
    if (a18)
    {
      v92 = [TSUNumberFormatter defaultFormatStringForValueType:0 negativeStyle:2];
      BYTE2(v101) = a20;
      LOWORD(v101) = a19;
      HIBYTE(v100) = 1;
      BYTE6(v100) = a17;
      *(&v100 + 2) = __PAIR32__(a16, a15);
      LOWORD(v100) = a13;
      v93 = sub_2770402CC(0, a2, a3, 0, v92, a6, a7, 0, v29, a10, a11, a12, v100, v101, a24);

      v94 = [TSULocale currencySymbolForCurrencyCode:a6];
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@\t%@", v94, v93];
    }

    goto LABEL_128;
  }

  if (a1 != 5)
  {
    if (a1 == 4)
    {

      return TSUNumberFormatFractionStringFromDouble(a23, a24, v29);
    }

    if (!a1)
    {
      if (a19)
      {
        if ((a15 & 1) == 0)
        {
          v95 = fabs(v29);
          if (v95 > 1.0e12 || v95 < 0.0000001 && (v96 = __fpclassifyd(v29), v33 = a15 ^ 1u, v96 != 3))
          {
            v30 = @"0E0";
            v31 = a24;
            v32 = v29;
            v33 = 1;
            v34 = 0;
            v35 = 5;
            v36 = 0;
            goto LABEL_7;
          }
        }
      }
    }

LABEL_128:
    if (HIBYTE(a19) && (a15 & 1) == 0 && (v97 = v33, v98 = __fpclassifyd(v29), v33 = v97, v98 == 3))
    {
      v31 = a24;
      v32 = v29;
      v30 = a5;
      v33 = 1;
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v31 = a24;
      v34 = a3;
      v35 = a2;
      v32 = v29;
      v30 = a5;
    }

    v36 = a17;
    v37 = a6;
    goto LABEL_8;
  }

  v40 = TSUNumberFormatBaseStringFromDouble(a20, a21, a22, v29);
  if (v40)
  {
    return v40;
  }

  LOWORD(v99) = -767;
  v91 = +[TSUNumberFormat numberFormatWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:](TSUNumberFormat, "numberFormatWithValueType:formatString:decimalPlaces:currencyCode:useAccountingStyle:negativeStyle:showThousandsSeparator:fractionAccuracy:", 0, 0, 0, +[TSULocale currentLocaleCurrencyCode], 0, 0, v99);
  [(TSUNumberFormat *)v91 setUseScientificFormattingAutomatically:1];

  return MEMORY[0x2821F9670](v91, sel_stringFromDouble_locale_);
}

uint64_t TSUNumberFormatFractionStringFromDouble(unsigned int a1, void *a2, double a3)
{
  if (!qword_280A639C0)
  {
    v6 = objc_opt_class();
    objc_sync_enter(v6);
    if (!qword_280A639C0)
    {
      qword_280A639C0 = objc_opt_new();
      [qword_280A639C0 setMaximumFractionDigits:0];
      [qword_280A639C0 setMaximumIntegerDigits:315];
      v7 = [a2 locale];
      [qword_280A639C0 setLocale:v7];
    }

    objc_sync_exit(v6);
  }

  v8 = fabs(a3);
  if (a3 >= 0.0)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 0xFFFFFFFC)
  {
    v10 = a1;
    v11 = a1;
  }

  else
  {
    v10 = *(&unk_2771238F8 + a1 + 3);
    v11 = 2;
  }

  v12 = 0;
  v13 = 0;
  v14 = floor(v9);
  v15 = v9 - v14;
  v16 = v10 + 1;
  v17 = 1.79769313e308;
  do
  {
    v18 = v15 * v11;
    v19 = vabdd_f64(v15, round(v18) / v11);
    v20 = llround(v18);
    if (v19 < v17)
    {
      v13 = v20;
      v12 = v11;
      v17 = v19;
    }

    ++v11;
  }

  while (v16 != v11);
  if (a1 >= 0xFFFFFFFD)
  {
    v21 = v12;
    if (v13)
    {
      v22 = v13;
      v23 = v12;
      do
      {
        v21 = v22;
        v22 = v23 % v22;
        v23 = v21;
      }

      while (v22);
    }

    if (v21 >= 2)
    {
      v13 /= v21;
      v12 /= v21;
    }
  }

  if (v13 == v12)
  {
    v24 = 0;
  }

  else
  {
    v24 = v13;
  }

  if (v13 == v12)
  {
    v25 = v14 + 1.0;
  }

  else
  {
    v25 = v14;
  }

  v26 = qword_280A639C0;
  objc_sync_enter(qword_280A639C0);
  v27 = [a2 locale];
  [qword_280A639C0 setLocale:v27];
  if (v25 == 0.0)
  {
    v29 = 0;
    if (a3 < 0.0)
    {
      v24 = -v24;
    }

    if (v24)
    {
      goto LABEL_31;
    }

LABEL_35:
    v30 = 0;
    goto LABEL_36;
  }

  v28 = -v25;
  if (a3 >= 0.0)
  {
    v28 = v25;
  }

  v29 = [qword_280A639C0 stringFromNumber:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v28)}];
  if (!v24)
  {
    goto LABEL_35;
  }

LABEL_31:
  v24 = [qword_280A639C0 stringFromNumber:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v24)}];
  v30 = [qword_280A639C0 stringFromNumber:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v12)}];
LABEL_36:
  objc_sync_exit(v26);
  if (v29 && v24)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@/%@", v29, v24, v30];
  }

  if (v29)
  {
    return v29;
  }

  if (v24)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v24, v30, v33];
  }

  v32 = qword_280A639C0;

  return [v32 stringFromNumber:&unk_28864BBA8];
}

void *TSUNumberFormatBaseStringFromDouble(uint64_t a1, unsigned int a2, int a3, double a4)
{
  if ((a1 - 37) <= 0xDBu)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUNumberFormatBaseStringFromDouble(double, UInt8, UInt16, BOOL)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 1352, 0, "Trying to format a baseFormat cell with an illegal base number");
    +[TSUAssertionHandler logBacktraceThrottled];
    return 0;
  }

  if (fabs(a4) > 9.22337204e18)
  {
    return 0;
  }

  v7 = a3;
  v10 = llround(a4);
  if (v10 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -v10;
  }

  if (v10 < 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  if (v10 < 0 && (a3 & 1) == 0)
  {
    if (a1 > 0x10 || ((1 << a1) & 0x10104) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUNumberFormatBaseStringFromDouble(double, UInt8, UInt16, BOOL)"}];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v13, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormat.m"], 1374, 0, "Trying to display two's-complement for unsupported base %d", a1);
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if (v11 >= 0x80000001)
    {
      v14 = -32;
      v15 = 0x80000000;
      while (v14 != -50)
      {
        v16 = 2 * v15;
        --v14;
        v20 = v11 > (2 * v15);
        v15 *= 2;
        if (!v20)
        {
          v17 = -v14;
          goto LABEL_23;
        }
      }

      return 0;
    }

    v16 = 0x80000000;
    v17 = 32;
LABEL_23:
    v11 = 2 * v16 - v11;
    LODWORD(v18) = (log2(a1) * a2);
    if (v18 <= 32)
    {
      v18 = 32;
    }

    else
    {
      v18 = v18;
    }

    v19 = v17 >= v18;
    v20 = v17 < v18 && v16 <= 500000000000000;
    if (v20)
    {
      v21 = v17 + 1;
      do
      {
        v11 += 2 * v16;
        v19 = v21 >= v18;
        if (v21 >= v18)
        {
          break;
        }

        ++v21;
        v20 = v16 < 0xE35FA931A001;
        v16 *= 2;
      }

      while (v20);
    }

    if (!v19)
    {
      return 0;
    }
  }

  v28 = v10;
  v5 = [MEMORY[0x277CCAB68] string];
  v22 = 1;
  do
  {
    if (a1 == 26)
    {
      v23 = v11 / v22 % 26 + 65;
    }

    else if (a1 == 1)
    {
      v23 = 49;
    }

    else
    {
      v24 = v11 / v22 % a1;
      if (v24 <= 9)
      {
        v25 = 48;
      }

      else
      {
        v25 = 55;
      }

      v23 = v25 + v24;
    }

    [v5 tsu_insertCharacter:v23 atIndex:0];
    v22 = (a1 == 1) + v22 * a1;
  }

  while (v22 && v11 / v22 > 0);
  if (a2)
  {
    v26 = (a2 - [v5 length]);
    if (v26 >= 1)
    {
      if (a1 == 26)
      {
        v27 = 65;
      }

      else
      {
        v27 = 48;
      }

      do
      {
        [v5 tsu_insertCharacter:v27 atIndex:0];
        --v26;
      }

      while (v26);
    }
  }

  if ((v28 & 0x8000000000000000) == 0 && (v7 & 1) == 0 && v11 >= 0x80000000 && [v5 characterAtIndex:0] != 48)
  {
    [v5 tsu_insertCharacter:48 atIndex:0];
  }

  if (v12)
  {
    [v5 tsu_insertCharacter:45 atIndex:0];
  }

  return v5;
}

__CFString *sub_277042268(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = @"TSUNumberFormatterThreadDictionaryKey";
    if (([v1 isAutoUpdating] & 1) == 0)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [v2 cacheKey];
      v3 = [v4 stringWithFormat:@"%@-%@", @"TSUNumberFormatterThreadDictionaryKey", v5];
    }
  }

  else
  {
    v3 = @"TSUNumberFormatterThreadDictionaryKey";
  }

  return v3;
}

id sub_277042310()
{
  if (qword_280A639D0 != -1)
  {
    sub_277112DE4();
  }

  v1 = qword_280A639C8;

  return v1;
}

uint64_t sub_277042354()
{
  qword_280A639C8 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789#@"];

  return MEMORY[0x2821F96F8]();
}

BOOL sub_27704239C(void *a1)
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789@#"];
  v3 = [a1 tsu_stringByRemovingEscapedCharactersFromNumberFormatPattern];
  v4 = [v3 rangeOfCharacterFromSet:v2];

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

void *sub_277042414(void *a1)
{
  v2 = [a1 length];
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [a1 rangeOfString:@"'" options:0 range:{v3, v2 - v3}];
    v6 = v5;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL || v5 == v2 - 1)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return v4;
      }
    }

    else
    {
      v8 = [a1 rangeOfString:@"'" options:0 range:{v5 + 1, v2 - (v5 + 1)}];
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v2 - v6;
    }

    else
    {
      v9 = v8 - v6 + 1;
    }

    v10 = [MEMORY[0x277CCAE60] valueWithRange:{v6, v9}];
    if (v4)
    {
      [v4 addObject:v10];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    }

    v3 = v8 + 1;
  }

  while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  return v4;
}

id sub_27704253C(void *a1)
{
  v2 = [a1 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB68] stringWithString:a1];
    v4 = [a1 length];
    if ([v2 count])
    {
      v5 = 0;
      do
      {
        v6 = [v2 objectAtIndex:v5];
        v7 = [v6 rangeValue];
        v9 = v8;

        [v3 replaceCharactersInRange:v7 - v4 + objc_msgSend(v3 withString:{"length"), v9, &stru_28862C2A0}];
        ++v5;
      }

      while (v5 < [v2 count]);
    }
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

unint64_t sub_277042638(void *a1)
{
  v2 = [a1 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v3 = [a1 rangeOfString:@";" options:0 range:{0, objc_msgSend(a1, "length")}];
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    while (sub_2770426F4(v4, v2))
    {
      v4 = [a1 rangeOfString:@";" options:0 range:{v4 + 1, objc_msgSend(a1, "length") - (v4 + 1)}];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }
  }

  return v4;
}

BOOL sub_2770426F4(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && (v5 = [v3 count]) != 0)
  {
    v6 = v5;
    v7 = [v4 objectAtIndex:0];
    v8 = [v7 rangeValue];
    v10 = v9;

    if (a1 < v8 || a1 - v8 >= v10)
    {
      v12 = 1;
      do
      {
        v13 = v12;
        if (v6 == v12)
        {
          break;
        }

        v14 = [v4 objectAtIndex:v12];
        v15 = [v14 rangeValue];
        v17 = v16;

        v12 = v13 + 1;
      }

      while (a1 < v15 || a1 - v15 >= v17);
      v11 = v13 < v6;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_2770427E4(void *a1)
{
  v2 = [a1 tsu_indexOfNumberFormatSubpatternSeparator];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = a1;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

__CFString *sub_27704283C(void *a1)
{
  v2 = [a1 tsu_indexOfNumberFormatSubpatternSeparator];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = &stru_28862C2A0;
  }

  else
  {
    v3 = [a1 substringFromIndex:v2 + 1];
  }

  return v3;
}

uint64_t sub_277042898(void *a1)
{
  v2 = [a1 tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];
  v3 = [a1 tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern] - v2 + 1;

  return [a1 substringWithRange:{v2, v3}];
}

uint64_t sub_2770428E8(void *a1)
{
  v2 = [a1 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v3 = [objc_opt_class() tsu_numberSymbols];
  v4 = [a1 length];
  while (1)
  {
    v5 = [a1 rangeOfCharacterFromSet:v3 options:4 range:{0, v4}];
    v4 = v5;
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (!sub_2770426F4(v5, v2))
    {
      goto LABEL_6;
    }
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUNumberFormatStringUtilities) tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern]"];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
  [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:194 isFatal:0 description:"invalid number format subpattern"];

  +[TSUAssertionHandler logBacktraceThrottled];
LABEL_6:

  return v4;
}

uint64_t sub_2770429FC(void *a1)
{
  v2 = [a1 tsu_indexOfLastNonSuffixCharacterInNumberFormatSubpattern] + 1;

  return [a1 substringFromIndex:v2];
}

unint64_t sub_277042A38(void *a1)
{
  v2 = [a1 tsu_newRangesOfEscapedCharactersInNumberFormatPattern];
  v3 = [objc_opt_class() tsu_numberSymbols];
  v4 = [a1 rangeOfCharacterFromSet:v3 options:0 range:{0, objc_msgSend(a1, "length")}];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUNumberFormatStringUtilities) tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:223 isFatal:0 description:"invalid number format subpattern"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v4;
    while (sub_2770426F4(v5, v2))
    {
      v5 = [a1 rangeOfCharacterFromSet:v3 options:0 range:{v5 + 1, objc_msgSend(a1, "length") - (v5 + 1)}];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

uint64_t sub_277042B70(void *a1)
{
  v2 = [a1 tsu_indexOfFirstNonPrefixCharacterInNumberFormatSubpattern];

  return [a1 substringToIndex:v2];
}

id sub_277042BAC(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", ，٫"}];
  v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@".．"];
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"   "];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'’‘‛"];
  if ([v3 characterIsMember:a1])
  {
    v6 = v3;
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([v2 characterIsMember:a1])
  {
    v6 = v2;
    goto LABEL_9;
  }

  if ([v4 characterIsMember:a1])
  {
    v6 = v4;
    goto LABEL_9;
  }

  if ([v5 characterIsMember:a1])
  {
    v6 = v5;
    goto LABEL_9;
  }

  v9 = MEMORY[0x277CCA900];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", a1];
  v7 = [v9 characterSetWithCharactersInString:v10];

LABEL_10:

  return v7;
}

uint64_t TSUNumberOfDigitsInStringAllowsPreciseDoubleParsing(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] < 0x10)
  {
    v14 = 1;
  }

  else
  {
    v5 = v3;
    if ([v4 length])
    {
      v6 = [v5 componentsSeparatedByString:v4];
      if ([v6 count] == 2)
      {
        v7 = [v6 firstObject];

        v5 = v7;
      }
    }

    v8 = [MEMORY[0x277CCAC80] scannerWithString:{v5, v4, v3}];
    [v8 setCharactersToBeSkipped:0];
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = [v8 scanLocation];
      v13 = v12 >= [v5 length];
      v14 = v13;
      if (v13)
      {
        break;
      }

      v15 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v24 = v11;
      [v8 scanCharactersFromSet:v15 intoString:&v24];
      v16 = v24;

      v17 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      v18 = [v17 invertedSet];
      v23 = v10;
      [v8 scanCharactersFromSet:v18 intoString:&v23];
      v19 = v23;

      v9 += [v16 length];
      v10 = v19;
      v11 = v16;
      if (v9 >= 0x10)
      {
        goto LABEL_12;
      }
    }

    v16 = v11;
    v19 = v10;
LABEL_12:

    v4 = v21;
    v3 = v22;
  }

  return v14;
}

void sub_277042EF0(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = [v9 componentsSeparatedByString:v10];
  v19 = 0.0;
  v18 = -999;
  if ([v12 count] >= 2)
  {
    v13 = [v12 lastObject];
    if ([TSUNumberParser numberValueFromString:v13 locale:v11 outDoubleValue:&v19 outValueType:&v18])
    {
      v14 = v18;

      if (!v14)
      {
        v15 = [v9 rangeOfString:v10 options:4];
        if (a4)
        {
          *a4 = [v9 substringToIndex:v15];
        }

        if (a5)
        {
          v16 = vcvtmd_s64_f64(v19);
LABEL_13:
          *a5 = v16;
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if (a4)
  {
    v17 = v9;
    *a4 = v9;
  }

  if (a5)
  {
    v16 = 0;
    goto LABEL_13;
  }

LABEL_14:
}

void sub_27704302C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v10 = 0;
    sub_277042EF0(v5, @" ", v6, &v10, 0);
    v7 = v10;
    if ([v5 isEqualToString:v7])
    {
      v8 = v5;
    }

    else
    {
      do
      {
        v8 = v7;

        v10 = v8;
        sub_277042EF0(v8, @" ", v6, &v10, 0);
        v7 = v10;

        v5 = v8;
      }

      while (([v8 isEqualToString:v7] & 1) == 0);
    }

    v9 = v7;
    *a3 = v7;

    v5 = v8;
  }
}

uint64_t sub_277043130(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v13 = [v5 length];
      if (v13 == [v12 length])
      {
        v14 = 1;
        if (![v5 compare:v12 options:1 range:0 locale:{objc_msgSend(v5, "length"), v6}])
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v14 = 0;
  }

  return v14;
}

id TSUNumberFormatterIncreaseTagFromStringWithSeparator(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v23 = 0;
  v11 = v7;
  v12 = [v9 createHarmonizedDecimalFormatterOfStyle:1];
  v22 = v11;
  sub_277042EF0(v11, v8, v9, &v22, &v23);
  v13 = v22;
  v14 = v11;
  while (1)
  {

    v15 = v23++;
    if (v15 >= 0x63)
    {
      v23 = 1;
      v16 = [v13 length];
      if (v16 >= [v11 length])
      {
        v18 = [v12 createStringWithNumber:&unk_28864BBC0];
        v17 = [v13 stringByAppendingFormat:@"%@%@", v8, v18];

        v13 = v18;
      }

      else
      {
        v17 = v11;
      }

      v13 = v17;
    }

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
    v14 = [v12 createStringWithNumber:v19];

    v20 = [v13 stringByAppendingFormat:@"%@%@", v8, v14];
    if (!sub_277043130(v20, v9, v10))
    {
      break;
    }
  }

  return v20;
}

id TSUNumberFormatterNextUntitledNameForTemplateAndCounter(void *a1, uint64_t *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v8 createHarmonizedDecimalFormatterOfStyle:1];
  while (1)
  {
    v11 = __CFADD__(*a2, 1);
    v12 = *a2 + 1;
    *a2 = v12;
    if (v11)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUNumberFormatterNextUntitledNameForTemplateAndCounter(NSString *__strong, NSUInteger *, TSULocale *__strong, NSArray *__strong)"}];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
      [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:443 isFatal:0 description:"Counter should be positive and should NOT reach integer max."];

      +[TSUAssertionHandler logBacktraceThrottled];
      v12 = *a2;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    v16 = [v10 createStringWithNumber:v15];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:v7, v16];
    if (!sub_277043130(v17, v8, v9))
    {
      break;
    }
  }

  return v17;
}

id TSUNumberFormatterAppendTagToString(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [a4 createHarmonizedDecimalFormatterOfStyle:1];
  v11 = [v10 createStringWithNumber:v7];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v9, v8, v11];

  return v12;
}

uint64_t TSUIsGroupingSeparatorUsedInNumericString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUIsGroupingSeparatorUsedInNumericString(NSString *__strong, TSULocale *__strong)"}];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUNumberFormatter.m"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:514 isFatal:0 description:"No longer supports not specifying a locale."];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v7 = [v4 groupingSeparator];
  if ([v7 length])
  {
    v8 = sub_277042BAC([v7 characterAtIndex:0]);
    v9 = [v3 rangeOfCharacterFromSet:v8];
    v11 = v10;

    v12 = 0;
    if (v11 && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
      if (v9 && v9 <= [v3 length] && objc_msgSend(v13, "characterIsMember:", objc_msgSend(v3, "characterAtIndex:", v9 - 1)) && (v14 = v9 + 1, v14 < objc_msgSend(v3, "length")))
      {
        v12 = [v13 characterIsMember:{objc_msgSend(v3, "characterAtIndex:", v14)}];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_27704387C(double a1)
{
  if (floor(a1) == a1)
  {
    return 0;
  }

  v3 = qword_280A639D8;
  if (!qword_280A639D8)
  {
    +[TSUNumberFormatter lock];
    if (!qword_280A639D8)
    {
      v4 = +[TSULocale usEnglishLocale];
      v5 = [v4 createHarmonizedDecimalFormatterOfStyle:0];

      [v5 setFormat:@"0"];
      [v5 setMinFractionDigits:0 maxFractionDigits:0x7FFFFFFFLL];
      __dmb(0xBu);
      v6 = qword_280A639D8;
      qword_280A639D8 = v5;
    }

    +[TSUNumberFormatter unlock];
    v3 = qword_280A639D8;
  }

  v7 = [v3 createStringWithValue:a1];
  v8 = [v7 rangeOfString:@"."];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 == 1)
  {
    v2 = [v7 length] + ~v8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id TSUNumberFormatterStringFromStringWithCustomFormat(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && a2)
  {
    v5 = [MEMORY[0x277CCAB68] stringWithString:a2];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", TSUCustomNumberFormatTextReplacementCharacter];
    [v5 replaceOccurrencesOfString:v6 withString:v4 options:0 range:{0, objc_msgSend(v5, "length")}];
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

id sub_277043AA0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CBEB18];
  v6 = +[TSULocale userVisibleCurrencyCodes];
  v7 = [v5 arrayWithArray:v6];

  if (v3)
  {
    v8 = [v3 currencyCode];
    if (v8 && ([v7 containsObject:v8] & 1) == 0)
    {
      [v7 insertObject:v8 atIndex:0];
    }
  }

  if (v4 && ([v7 containsObject:v4] & 1) == 0)
  {
    [v7 insertObject:v4 atIndex:0];
  }

  return v7;
}

id sub_277043B88(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [v1 createHarmonizedDecimalFormatterOfStyle:1];
  [v3 setExponentSymbol:@"xyzzyqghbv&q"];
  [v2 addObject:v3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"#, ##0;- #, ##0", @"#, ##0;(#, ##0)", @"#, ##0;( #, ##0)", 0}];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * v8);
        v3 = [v1 createHarmonizedDecimalFormatterOfStyle:0];

        [v3 setFormat:v10];
        [v3 setExponentSymbol:@"xyzzyqghbv&q"];
        [v2 addObject:v3];
        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v2;
}

id sub_277043D5C(void *a1)
{
  v1 = MEMORY[0x277CBEB18];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 createHarmonizedDecimalFormatterOfStyle:3];
  [v4 setExponentSymbol:@"xyzzyqghbv&q"];
  [v3 addObject:v4];
  v5 = [v2 createHarmonizedDecimalFormatterOfStyle:0];

  [v5 setFormat:@"#, ##0%"];
  [v5 setExponentSymbol:@"xyzzyqghbv&q"];
  [v3 addObject:v5];
  v6 = +[TSULocale usEnglishLocale];
  v7 = [v6 createHarmonizedDecimalFormatterOfStyle:3];

  [v7 setExponentSymbol:@"xyzzyqghbv&q"];
  [v3 addObject:v7];

  return v3;
}

id sub_277043E74(void *a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 createHarmonizedDecimalFormatterOfStyle:4];
  v3 = [v1 locale];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE6C8]];
  if ([v4 isEqualToString:@"hi"])
  {
    v5 = [v2 format];
    v6 = [v5 isEqualToString:@"#E0"];

    if ((v6 & 1) == 0)
    {
      v7 = [v1 createHarmonizedDecimalFormatterOfStyle:4];
      [v7 setFormat:@"#E0"];
      v11[0] = v2;
      v11[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = v2;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
LABEL_6:

  return v8;
}