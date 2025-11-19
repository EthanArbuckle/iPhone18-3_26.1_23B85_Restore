void sub_2964BF2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_2964BF344(void *a1, unsigned int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v32 = *(a3 + 2);
  v9 = sub_2964AFA4C(a1, __p, a4);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C25B390](v10) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  v23 = v9;
  xpc_release(v10);
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = MEMORY[0x29EDCAA40];
    do
    {
      v15 = *v12;
      v16 = xpc_null_create();
      if (a5 != 11)
      {
        if (a5 == 12)
        {
          sub_2964C0668(v15 != 0, &v30);
          v17 = v30;
          v30 = v16;
          xpc_release(v16);
          v30 = 0;
          v16 = v17;
        }

        goto LABEL_19;
      }

      v28 = *a3;
      v29 = *(a3 + 2);
      sub_2964AFAD0(a1, &v28, a4, v15, __p);
      if (SHIBYTE(v32) < 0)
      {
        if (!__p[1])
        {
          goto LABEL_18;
        }

        v18 = __p[0];
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_19;
        }

        v18 = __p;
      }

      sub_2964C0824(v18, &v27);
      v19 = v27;
      v27 = v16;
      xpc_release(v16);
      v27 = 0;
      v16 = v19;
      if (SHIBYTE(v32) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }

LABEL_19:
      if (MEMORY[0x29C25B390](v16) == v14)
      {
        sub_2964C0768(v15, &v26);
        v20 = v26;
        v26 = v16;
        xpc_release(v16);
        v26 = 0;
        v16 = v20;
      }

      xpc_array_append_value(v11, v16);
      xpc_release(v16);
      ++v12;
    }

    while (v12 != v13);
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v21 = v23;
  }

  else
  {
    v21 = v23;
    object = xpc_null_create();
  }

  *__p = *a3;
  v32 = *(a3 + 2);
  v22 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C00EC(a1, v21, &object, v22);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2964BF5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_2964BF650(void *a1, uint64_t **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v32 = *(a3 + 2);
  v9 = sub_2964AFA4C(a1, __p, a4);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C25B390](v10) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  v23 = v9;
  xpc_release(v10);
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = MEMORY[0x29EDCAA40];
    do
    {
      v15 = *v12;
      v16 = xpc_null_create();
      if (a5 != 11)
      {
        if (a5 == 12)
        {
          sub_2964C0668(v15 != 0, &v30);
          v17 = v30;
          v30 = v16;
          xpc_release(v16);
          v30 = 0;
          v16 = v17;
        }

        goto LABEL_19;
      }

      v28 = *a3;
      v29 = *(a3 + 2);
      sub_2964AFAD0(a1, &v28, a4, v15, __p);
      if (SHIBYTE(v32) < 0)
      {
        if (!__p[1])
        {
          goto LABEL_18;
        }

        v18 = __p[0];
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_19;
        }

        v18 = __p;
      }

      sub_2964C0824(v18, &v27);
      v19 = v27;
      v27 = v16;
      xpc_release(v16);
      v27 = 0;
      v16 = v19;
      if (SHIBYTE(v32) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }

LABEL_19:
      if (MEMORY[0x29C25B390](v16) == v14)
      {
        sub_2964C06A8(v15, &v26);
        v20 = v26;
        v26 = v16;
        xpc_release(v16);
        v26 = 0;
        v16 = v20;
      }

      xpc_array_append_value(v11, v16);
      xpc_release(v16);
      ++v12;
    }

    while (v12 != v13);
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v21 = v23;
  }

  else
  {
    v21 = v23;
    object = xpc_null_create();
  }

  *__p = *a3;
  v32 = *(a3 + 2);
  v22 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C00EC(a1, v21, &object, v22);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2964BF8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void sub_2964BF95C(void *a1, int **a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v32 = *(a3 + 2);
  v9 = sub_2964AFA4C(a1, __p, a4);
  v10 = xpc_array_create(0, 0);
  if (v10 || (v10 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C25B390](v10) == MEMORY[0x29EDCA9E0])
    {
      xpc_retain(v10);
      v11 = v10;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v10 = 0;
  }

  v23 = v9;
  xpc_release(v10);
  v12 = *a2;
  v13 = a2[1];
  if (*a2 != v13)
  {
    v14 = MEMORY[0x29EDCAA40];
    do
    {
      v15 = *v12;
      v16 = xpc_null_create();
      if (a5 != 11)
      {
        if (a5 == 12)
        {
          sub_2964C0668(v15 != 0, &v30);
          v17 = v30;
          v30 = v16;
          xpc_release(v16);
          v30 = 0;
          v16 = v17;
        }

        goto LABEL_19;
      }

      v28 = *a3;
      v29 = *(a3 + 2);
      sub_2964AFAD0(a1, &v28, a4, v15, __p);
      if (SHIBYTE(v32) < 0)
      {
        if (!__p[1])
        {
          goto LABEL_18;
        }

        v18 = __p[0];
      }

      else
      {
        if (!HIBYTE(v32))
        {
          goto LABEL_19;
        }

        v18 = __p;
      }

      sub_2964C0824(v18, &v27);
      v19 = v27;
      v27 = v16;
      xpc_release(v16);
      v27 = 0;
      v16 = v19;
      if (SHIBYTE(v32) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }

LABEL_19:
      if (MEMORY[0x29C25B390](v16) == v14)
      {
        sub_2964C0728(v15, &v26);
        v20 = v26;
        v26 = v16;
        xpc_release(v16);
        v26 = 0;
        v16 = v20;
      }

      xpc_array_append_value(v11, v16);
      xpc_release(v16);
      ++v12;
    }

    while (v12 != v13);
  }

  object = v11;
  if (v11)
  {
    xpc_retain(v11);
    v21 = v23;
  }

  else
  {
    v21 = v23;
    object = xpc_null_create();
  }

  *__p = *a3;
  v32 = *(a3 + 2);
  v22 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C00EC(a1, v21, &object, v22);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
}

void sub_2964BFBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  xpc_release(object);
  xpc_release(v24);
  _Unwind_Resume(a1);
}

void *sub_2964BFCDC(void *a1, int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D54618;
  sub_2964BFE44(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_2964BFD70(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D54618;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964BFDC4(uint64_t a1)
{
  sub_2964AC558(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

uint64_t sub_2964BFE44(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a4 = 0;
  v9 = v6;
  v7 = AwdMetadataLoader::AwdMetadataLoader(a2, v5, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result, v7);
  }

  return result;
}

void sub_2964BFEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_2964DA750(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2964BFF44(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A1D54668;
  sub_2964C0054(&v5, (a1 + 3), a2, a3);
  return a1;
}

void sub_2964BFFD8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D54668;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964C0054(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t *a4)
{
  v5 = *a3;
  v6 = *a4;
  *a4 = 0;
  v8 = v6;
  sub_2964B92DC(a2, v5, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_2964C00C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    sub_2964DA750(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964C00EC(void *a1, uint64_t a2, xpc_object_t *a3, int a4)
{
  if (a4)
  {
    v22 = a1;
    v23 = a2;
    sub_2964C043C(&v22, &v24);
    v7 = MEMORY[0x29C25B390](v24);
    v8 = MEMORY[0x29EDCA9E0];
    if (v7 != MEMORY[0x29EDCA9E0])
    {
      v9 = xpc_array_create(0, 0);
      if (v9 || (v9 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C25B390](v9) == v8)
        {
          xpc_retain(v9);
          v10 = v9;
        }

        else
        {
          v10 = xpc_null_create();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v9 = 0;
      }

      xpc_release(v9);
      v12 = xpc_null_create();
      v13 = v24;
      v24 = v10;
      xpc_release(v13);
      xpc_release(v12);
      v20 = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        v20 = xpc_null_create();
      }

      v22 = a1;
      v23 = a2;
      sub_2964C04D8(&v22, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v20);
      v20 = 0;
    }

    v14 = *a3;
    if (*a3 && MEMORY[0x29C25B390](*a3) == v8)
    {
      xpc_retain(v14);
    }

    else
    {
      v14 = xpc_null_create();
    }

    if (MEMORY[0x29C25B390](v14) == v8)
    {
      v22 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v22 = xpc_null_create();
      }

      sub_2964C08B8(v19, &v22, 0);
      xpc_release(v22);
      v22 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v22 = xpc_null_create();
      }

      if (MEMORY[0x29C25B390](v14) == v8)
      {
        count = xpc_array_get_count(v14);
      }

      else
      {
        count = 0;
      }

      sub_2964C08B8(v18, &v22, count);
      xpc_release(v22);
      sub_2964C0524(v19, v18, &v24);
      xpc_release(v18[0]);
      v18[0] = 0;
      xpc_release(v19[0]);
      v19[0] = 0;
    }

    else
    {
      xpc_array_append_value(v24, *a3);
    }

    xpc_release(v14);
    xpc_release(v24);
  }

  else
  {
    v11 = *a3;
    v16 = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      v16 = xpc_null_create();
    }

    v22 = a1;
    v23 = a2;
    sub_2964C061C(&v22, &v16, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v16);
  }
}

void sub_2964C0384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, xpc_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  xpc_release(object);
  xpc_release(a14);
  xpc_release(v18);
  xpc_release(*(v19 - 56));
  _Unwind_Resume(a1);
}

void sub_2964C043C(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C25B390](v4) != MEMORY[0x29EDCA9E0])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

xpc_object_t sub_2964C04D8@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

xpc_object_t sub_2964C0524(void **a1, void **a2, xpc_object_t *a3)
{
  v6 = *a1;
  v11[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v11[0] = xpc_null_create();
  }

  v11[1] = a1[1];
  v7 = *a2;
  v10[0] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v10[0] = xpc_null_create();
  }

  v10[1] = a2[1];
  sub_2964C0904(v11, v10, a3, object);
  v8 = object[2];
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v10[0]);
  v10[0] = 0;
  xpc_release(v11[0]);
  return v8;
}

void sub_2964C05EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

xpc_object_t sub_2964C061C@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

xpc_object_t sub_2964C0668@<X0>(BOOL value@<W1>, void *a2@<X8>)
{
  result = xpc_BOOL_create(value);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

xpc_object_t sub_2964C06A8@<X0>(int64_t value@<X1>, void *a2@<X8>)
{
  result = xpc_int64_create(value);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

xpc_object_t sub_2964C06E8@<X0>(uint64_t value@<X1>, void *a2@<X8>)
{
  result = xpc_uint64_create(value);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

xpc_object_t sub_2964C0728@<X0>(int a1@<W1>, void *a2@<X8>)
{
  result = xpc_int64_create(a1);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

xpc_object_t sub_2964C0768@<X0>(int64_t value@<X1>, void *a2@<X8>)
{
  result = xpc_int64_create(value);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

xpc_object_t sub_2964C07A8@<X0>(void *a1@<X8>, double a2@<D0>)
{
  result = xpc_double_create(a2);
  *a1 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a1 = result;
  }

  return result;
}

xpc_object_t sub_2964C07E4@<X0>(void *a1@<X8>, float a2@<S0>)
{
  result = xpc_double_create(a2);
  *a1 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a1 = result;
  }

  return result;
}

xpc_object_t sub_2964C0824@<X0>(char *string@<X1>, void *a2@<X8>)
{
  if (!string || (result = xpc_string_create(string), (*a2 = result) == 0))
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

xpc_object_t sub_2964C0874@<X0>(void *bytes@<X1>, size_t length@<X2>, void *a3@<X8>)
{
  result = xpc_data_create(bytes, length);
  *a3 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a3 = result;
  }

  return result;
}

void **sub_2964C08B8(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

void sub_2964C0904(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v9[0] = *a1;
  *a1 = xpc_null_create();
  v9[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  sub_2964C09D0(v9, object, a3, a4);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v9[0]);
}

void sub_2964C09A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void sub_2964C09D0(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v18[0] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v18[0] = xpc_null_create();
  }

  v18[1] = a1[1];
  v17[0] = *a2;
  *a2 = xpc_null_create();
  v17[1] = a2[1];
  sub_2964C0C00(v18, v17, v19);
  xpc_release(v17[0]);
  v17[0] = 0;
  xpc_release(v18[0]);
  v18[0] = 0;
  v15[0] = v19[0];
  v19[0] = xpc_null_create();
  v15[1] = v19[1];
  object[0] = v20;
  v20 = xpc_null_create();
  object[1] = v21;
  sub_2964C0D14(v15, object, a3, v16);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v15[0]);
  v15[0] = 0;
  v12[0] = *a1;
  *a1 = xpc_null_create();
  v12[1] = a1[1];
  v11[0] = v16[0];
  v16[0] = xpc_null_create();
  v11[1] = v16[1];
  sub_2964C0DD4(v12, v11, v13);
  v9 = v16[2];
  *a4 = v13[0];
  v10 = xpc_null_create();
  v13[0] = v10;
  a4[1] = v13[1];
  a4[2] = v9;
  xpc_release(v10);
  v13[0] = 0;
  xpc_release(v11[0]);
  v11[0] = 0;
  xpc_release(v12[0]);
  v12[0] = 0;
  xpc_release(v16[0]);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19[0]);
}

void sub_2964C0B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, xpc_object_t a18)
{
  xpc_release(object);
  xpc_release(a18);
  sub_2964C0F88((v18 - 64));
  _Unwind_Resume(a1);
}

void sub_2964C0C00(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  *a1 = xpc_null_create();
  v7 = *(a1 + 8);
  if (v6)
  {
    xpc_retain(v6);
    v8 = v6;
  }

  else
  {
    v8 = xpc_null_create();
  }

  v9 = xpc_null_create();
  xpc_release(v9);
  v10 = *a2;
  *a2 = xpc_null_create();
  v11 = *(a2 + 8);
  if (v10)
  {
    xpc_retain(v10);
    v12 = v10;
  }

  else
  {
    v12 = xpc_null_create();
  }

  v13 = xpc_null_create();
  xpc_release(v13);
  *a3 = v8;
  v14 = xpc_null_create();
  a3[1] = v7;
  a3[2] = v12;
  v15 = xpc_null_create();
  a3[3] = v11;
  xpc_release(v15);
  xpc_release(v10);
  xpc_release(v14);
  xpc_release(v6);
}

xpc_object_t *sub_2964C0D14@<X0>(uint64_t a1@<X1>, void *a2@<X2>, xpc_object_t *a3@<X3>, xpc_object_t *a4@<X8>)
{
  v12 = a3;
  for (i = *(a1 + 8); i != a2[1] || *a1 != *a2; *(a1 + 8) = i)
  {
    v10[0] = a1;
    v10[1] = i;
    sub_2964C0E70(v10, &value);
    xpc_array_append_value(*a3, value);
    xpc_release(value);
    i = *(a1 + 8) + 1;
  }

  return sub_2964C0EB8(a4, a1, &v12);
}

void sub_2964C0DD4(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  v7[0] = *a1;
  *a1 = xpc_null_create();
  v7[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  sub_2964C0F10(v7, object, a3);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v7[0]);
}

xpc_object_t sub_2964C0E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

xpc_object_t *sub_2964C0EB8(xpc_object_t *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  *a1 = *a2;
  *a2 = xpc_null_create();
  a1[1] = a2[1];
  a1[2] = *a3;
  return a1;
}

void sub_2964C0F10(void **a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  *a1 = xpc_null_create();
  v6 = *a2;
  *a2 = xpc_null_create();
  v7 = a2[1];
  *a3 = v6;
  v8 = xpc_null_create();
  a3[1] = v7;
  xpc_release(v8);
  xpc_release(v5);
}

xpc_object_t *sub_2964C0F88(xpc_object_t *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

double AwdMetadataLoader::AwdMetadataLoader(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  *a3 = 0;
  *a1 = v3;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  return result;
}

{
  v3 = *a3;
  *a3 = 0;
  *a1 = v3;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  return result;
}

double AwdMetadataLoader::loadComponentMetadata@<D0>(AwdMetadataLoader *this@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  (*(**this + 32))(&v5, *this, *(this + 2), a2);
  result = *&v5;
  *a3 = v5;
  return result;
}

void AwdMetadataLoader::loadMetricFileMetadata(AwdMetadataLoader *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v5 = *this;
    (*(**this + 16))(&v9);
    v6 = v9;
    v9 = 0uLL;
    v7 = *(this + 3);
    *(this + 1) = v6;
    if (v7)
    {
      sub_2964A5FB4(v7);
      if (*(&v9 + 1))
      {
        sub_2964A5FB4(*(&v9 + 1));
      }
    }

    v4 = *(this + 2);
  }

  v8 = *(this + 3);
  *a2 = v4;
  a2[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

double AwdMetadataLoader::loadDeviceConfigMetadata@<D0>(AwdMetadataLoader *this@<X0>, _OWORD *a2@<X8>)
{
  (*(**this + 24))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

void sConvertMetricToJson(awd *this@<X1>, unsigned __int8 *a2@<X2>, uint64_t a3@<X8>)
{
  if (this)
  {
    v4 = a2;
    if (a2)
    {
      memset(v17, 0, sizeof(v17));
      awd::GetProtobufTag(this, a2, v17);
      v6 = 0;
      v7 = this + v17[0];
      v8 = this + v17[0] + v4 - LODWORD(v17[0]);
      v9 = v4 - LODWORD(v17[0]);
      v10 = 0;
      v11 = 0;
      v12 = v4 - LODWORD(v17[0]);
      v13 = xmmword_2964E0A40;
      v14 = *MEMORY[0x29EDC9750];
      v15 = 0;
      v16 = 0;
      sub_2964ADAF0(a3, 0, 0, 0, 1);
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
}

void sub_2964C1350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    sub_2964A5FB4(a26);
  }

  sub_2964A793C(v26 + 1, *v26);
  MEMORY[0x29C25A8E0](&a9);
  _Unwind_Resume(a1);
}

void sConvertTriggerToJson(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (a1 && a2)
  {
    v3 = *MEMORY[0x29EDC9750];
    sub_2964ADAF0(a3, 0, 0, 0, 1);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
}

void sub_2964C14B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_2964A5FB4(a24);
  }

  sub_2964A793C(v24 + 1, *v24);
  MEMORY[0x29C25A8E0](&a10);
  _Unwind_Resume(a1);
}

void sub_2964C1574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_2964DA688(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964C1590(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, __n128 *a2, uint64_t *a3)
{
  v6 = *(this + 1);
  if (v6 < *(this + 2))
  {
    TagFallback = *v6;
    if ((TagFallback & 0x80000000) == 0)
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (TagFallback)
      {
        goto LABEL_4;
      }

LABEL_14:
      if ((*(this + 36) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
        goto LABEL_54;
      }

      return;
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
  *(this + 8) = TagFallback;
  if (!TagFallback)
  {
    goto LABEL_14;
  }

LABEL_4:
  v8 = awd::reflect::decodeTag(TagFallback);
  v9 = v8;
  v10 = HIDWORD(v8);
  v58 = *a2;
  v59 = a2[1].n128_i64[0];
  MetricFileMetadataHelper::getSubfieldType((a3 + 1), &v58, HIDWORD(v8), &v51);
  v58 = *&v51.__r_.__value_.__l.__data_;
  v59 = v51.__r_.__value_.__r.__words[2];
  BuiltinType = MetadataHelper::getBuiltinType((a3 + 1), &v58);
  v12 = BuiltinType;
  DecodingType = awd::reflect::getDecodingType(BuiltinType, v9);
  v14 = DecodingType;
  if (DecodingType > 13)
  {
    if ((DecodingType - 15) >= 0xC)
    {
      if (DecodingType != 14)
      {
        if (DecodingType == 27)
        {
          LODWORD(__p) = 0;
          v25 = *(this + 1);
          if (v25 >= *(this + 2) || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &__p))
            {
              goto LABEL_51;
            }
          }

          else
          {
            LODWORD(__p) = *v25;
            *(this + 1) = v25 + 1;
          }

          v54.__r_.__value_.__r.__words[0] = this;
          LODWORD(v54.__r_.__value_.__r.__words[1]) = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
          ++*(this + 14);
          v52.n128_u64[0] = this;
          v58 = *a2;
          v59 = a2[1].n128_i64[0];
          v55 = v51;
          sub_2964C2CA0(a3, this, &v58, v10);
        }

LABEL_51:
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }

      LODWORD(v54.__r_.__value_.__l.__data_) = 0;
      v27 = *(this + 1);
      if (v27 >= *(this + 2) || (data = *v27, (data & 0x80000000) != 0))
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
        {
          goto LABEL_51;
        }

        data = v54.__r_.__value_.__l.__data_;
      }

      else
      {
        LODWORD(v54.__r_.__value_.__l.__data_) = *v27;
        *(this + 1) = v27 + 1;
      }

      sub_2964AC494(&v58, data);
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v58.n128_u64[0]);
      if (Raw)
      {
        v55 = *a2->n128_u8;
        sub_2964C2B68(a3, &v58, &v55, v10);
      }

      goto LABEL_137;
    }

    v50 = 0;
    v16 = *(this + 1);
    if (v16 >= *(this + 2) || *v16 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v50))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v50 = *v16;
      *(this + 1) = v16 + 1;
    }

    UnpackedType = awd::reflect::getUnpackedType(v14);
    WireTypeForType = awd::reflect::getWireTypeForType(UnpackedType);
    v48 = this;
    v49 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
    __p = 0;
    v46 = 0;
    v47 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
          {
            if (v14 > 20)
            {
              if (v14 <= 23)
              {
                if (v14 != 21)
                {
                  if (v14 != 22)
                  {
                    sub_2964AB62C(&__p, &v58);
                    v55 = *a2->n128_u8;
                    sub_2964C3958(a3, &v58, &v55, v10);
                  }

                  sub_2964ABF30(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964C3CF0(a3, &v58, &v55, v10);
                }

                sub_2964AB62C(&__p, &v58);
                v55 = *a2->n128_u8;
                sub_2964C3958(a3, &v58, &v55, v10);
              }

              switch(v14)
              {
                case 0x1A:
                  sub_2964AB8A0(&__p, &v54);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2964AFA4C(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x19:
                  sub_2964ABAF0(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964C3B24(a3, &v58, &v55, v10);
                case 0x18:
                  sub_2964AB2A4(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964C378C(a3, &v58, &v55, v10);
              }
            }

            else
            {
              if (v14 > 17)
              {
                if (v14 != 18)
                {
                  if (v14 != 19)
                  {
                    sub_2964AB62C(&__p, &v58);
                    v55 = *a2->n128_u8;
                    sub_2964C3CF0(a3, &v58, &v55, v10);
                  }

                  sub_2964ABC28(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964C3B24(a3, &v58, &v55, v10);
                }

                sub_2964AB2A4(&__p, &v58);
                v55 = *a2->n128_u8;
                sub_2964C378C(a3, &v58, &v55, v10);
              }

              switch(v14)
              {
                case 0xF:
                  sub_2964AB324(&__p, &v54.__r_.__value_.__l.__data_);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2964AFA4C(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x10:
                  sub_2964AB764(&__p, &v54.__r_.__value_.__l.__data_);
                  v52 = *a2;
                  v53 = a2[1].n128_u64[0];
                  v58 = *a2;
                  v59 = a2[1].n128_i64[0];
                  sub_2964AFA4C(a3, &v58, v10);
                  v57 = 0;
                  v58.n128_u64[0] = 0;
                  v56 = 2;
                  v55.__r_.__value_.__r.__words[0] = 0;
                  sub_2964ADD40();
                case 0x11:
                  sub_2964ABAF0(&__p, &v58);
                  v55 = *a2->n128_u8;
                  sub_2964C3B24(a3, &v58, &v55, v10);
              }
            }

            v44 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25AAF0](v44, "This should never happen, no matter what the input!");
            __cxa_throw(v44, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          v58.n128_u64[0] = 0;
          sub_2964A9798(&__p, &v58);
          if (WireTypeForType <= 1)
          {
            break;
          }

          if (WireTypeForType == 5)
          {
            v58.n128_u32[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58);
            *(v46 - 1) = v58.n128_u32[0];
            if ((LittleEndian32Fallback & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else if (WireTypeForType == 2)
          {
LABEL_48:
            if (__p)
            {
              v46 = __p;
              operator delete(__p);
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
            goto LABEL_51;
          }
        }

        if (!WireTypeForType)
        {
          break;
        }

        if (WireTypeForType == 1)
        {
          LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v46 - 1);
LABEL_31:
          if ((LittleEndian64Fallback & 1) == 0)
          {
            goto LABEL_48;
          }
        }
      }

      v21 = v46 - 1;
      v22 = *(this + 1);
      if (v22 >= *(this + 2) || (v23 = *v22, (v23 & 0x8000000000000000) != 0))
      {
        LittleEndian64Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v21);
        goto LABEL_31;
      }

      *v21 = v23;
      *(this + 1) = v22 + 1;
    }
  }

  if ((DecodingType - 1) >= 0xC)
  {
    if (DecodingType)
    {
      if (DecodingType != 13)
      {
        goto LABEL_51;
      }

      LODWORD(v54.__r_.__value_.__l.__data_) = 0;
      v24 = *(this + 1);
      if (v24 >= *(this + 2) || *v24 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v54))
        {
          goto LABEL_51;
        }
      }

      else
      {
        LODWORD(v54.__r_.__value_.__l.__data_) = *v24;
        *(this + 1) = v24 + 1;
      }

      v58 = 0uLL;
      v59 = 0;
      Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadString();
      if (Raw)
      {
        v55 = *a2->n128_u8;
        sub_2964C2A6C(a3, &v58, &v55, v10);
      }

      if ((SHIBYTE(v59) & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v40 = v58.n128_u64[0];
      goto LABEL_139;
    }

    if (v9 <= 1u)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_51;
        }

        v58.n128_u64[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v58.n128_u64))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v58.n128_u64[0] = 0;
        if (!sub_2964A9740(this, v58.n128_u64))
        {
          goto LABEL_51;
        }
      }

      v38 = v58.n128_u64[0];
LABEL_144:
      sub_2964C2E0C(a3, v38, v10);
      return;
    }

    if (v9 != 2)
    {
      if (v9 != 5)
      {
        goto LABEL_51;
      }

      v58.n128_u32[0] = 0;
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58))
      {
        goto LABEL_51;
      }

      v38 = v58.n128_u32[0];
      goto LABEL_144;
    }

    LODWORD(v55.__r_.__value_.__l.__data_) = 0;
    if (!sub_2964A976C(this, &v55))
    {
      goto LABEL_51;
    }

    sub_2964AC494(&v58, LODWORD(v55.__r_.__value_.__l.__data_));
    Raw = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadRaw(this, v58.n128_u64[0]);
    if (Raw)
    {
      sub_2964C2EC4(a3, v58.n128_u64[0], v58.n128_u64[1] - v58.n128_u64[0], v10);
    }

LABEL_137:
    v40 = v58.n128_u64[0];
    if (!v58.n128_u64[0])
    {
      goto LABEL_140;
    }

    v58.n128_u64[1] = v58.n128_u64[0];
LABEL_139:
    operator delete(v40);
LABEL_140:
    if ((Raw & 1) == 0)
    {
      goto LABEL_51;
    }

    return;
  }

  __p = 0;
  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    else
    {
      if (v9 != 5)
      {
        goto LABEL_94;
      }

      v58.n128_u32[0] = 0;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v58))
      {
        __p = v58.n128_u32[0];
        goto LABEL_94;
      }

      if (!v10 && (*(this + 36) & 1) != 0)
      {
        return;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
LABEL_54:
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (!v9)
  {
    v26 = *(this + 1);
    if (v26 >= *(this + 2) || (*v26 & 0x8000000000000000) != 0)
    {
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &__p) & 1) == 0)
      {
        if (v10 || (*(this + 36) & 1) == 0)
        {
          goto LABEL_53;
        }

        return;
      }
    }

    else
    {
      __p = *v26;
      *(this + 1) = v26 + 1;
    }

LABEL_94:
    v29 = __p;
    switch(v12)
    {
      case 1:
      case 15:
        v32 = awd::protobuf::NumberConverter<(awd::reflect::Type)1>::decode(__p);
        v54 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v31 = sub_2964AFA4C(a3, &v58, v10);
        v52.n128_u8[0] = 7;
        v52.n128_f64[1] = v32;
        if (v12 == 11)
        {
          v55 = v54;
          sub_2964AFAD0(a3, &v55, v10, v32, &v58);
          v42 = HIBYTE(v59);
          if (v59 < 0)
          {
            v42 = v58.n128_u64[1];
          }

          if (v42)
          {
            v55.__r_.__value_.__l.__size_ = 0;
            v55.__r_.__value_.__s.__data_[0] = 3;
            operator new();
          }

          if (v59 < 0)
          {
            operator delete(v58.n128_u64[0]);
          }
        }

        else if (v12 == 12)
        {
          v52.n128_u8[0] = 4;
          v55.__r_.__value_.__s.__data_[0] = 7;
          v52.n128_u64[1] = v32 != 0.0;
          *&v55.__r_.__value_.__l.__size_ = v32;
          sub_2964A793C(&v55.__r_.__value_.__l.__size_, 7);
        }

        goto LABEL_161;
      case 2:
      case 16:
        v30 = awd::protobuf::NumberConverter<(awd::reflect::Type)2>::decode(__p);
        v54 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v31 = sub_2964AFA4C(a3, &v58, v10);
        v52.n128_u8[0] = 7;
        v52.n128_f64[1] = v30;
        if (v12 == 11)
        {
          v55 = v54;
          sub_2964AFAD0(a3, &v55, v10, v30, &v58);
          v41 = HIBYTE(v59);
          if (v59 < 0)
          {
            v41 = v58.n128_u64[1];
          }

          if (v41)
          {
            v55.__r_.__value_.__l.__size_ = 0;
            v55.__r_.__value_.__s.__data_[0] = 3;
            operator new();
          }

          if (v59 < 0)
          {
            operator delete(v58.n128_u64[0]);
          }
        }

        else if (v12 == 12)
        {
          v52.n128_u8[0] = 4;
          v55.__r_.__value_.__s.__data_[0] = 7;
          v52.n128_u64[1] = v30 != 0.0;
          *&v55.__r_.__value_.__l.__size_ = v30;
          sub_2964A793C(&v55.__r_.__value_.__l.__size_, 7);
        }

LABEL_161:
        v58 = *&v54.__r_.__value_.__l.__data_;
        v59 = v54.__r_.__value_.__r.__words[2];
        v43 = sub_2964AFBC0(a3, &v58, v10);
        sub_2964C5080(a3, v31, &v52, v43);
        v36 = v52.n128_u8[0];
        p_size = &v52.n128_i64[1];
        goto LABEL_162;
      case 3:
      case 11:
      case 17:
      case 25:
        goto LABEL_105;
      case 4:
      case 10:
      case 18:
      case 24:
        v55.__r_.__value_.__r.__words[0] = __p;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2964C2FFC(a3, &v55, &v58, v10, v12);
        return;
      case 5:
      case 19:
        v29 = awd::protobuf::NumberConverter<(awd::reflect::Type)5>::decode(__p);
LABEL_105:
        v55.__r_.__value_.__r.__words[0] = v29;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2964C33C4(a3, &v55, &v58, v10, v12);
        return;
      case 6:
      case 20:
        LODWORD(v55.__r_.__value_.__l.__data_) = __p;
        goto LABEL_107;
      case 7:
      case 9:
      case 21:
      case 23:
        LODWORD(v55.__r_.__value_.__l.__data_) = __p;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2964C31E0(a3, &v55, &v58, v10, v12);
        return;
      case 8:
      case 22:
        LODWORD(v55.__r_.__value_.__l.__data_) = awd::protobuf::NumberConverter<(awd::reflect::Type)8>::decode(__p);
LABEL_107:
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        sub_2964C35A8(a3, &v55, &v58, v10, v12);
        return;
      case 12:
      case 26:
        v33 = __p != 0;
        v55 = *a2->n128_u8;
        v58 = *a2;
        v59 = a2[1].n128_i64[0];
        v34 = sub_2964AFA4C(a3, &v58, v10);
        v54.__r_.__value_.__s.__data_[0] = 4;
        v54.__r_.__value_.__l.__size_ = v33;
        if (v12 == 12)
        {
          v54.__r_.__value_.__s.__data_[0] = 4;
          v52.n128_u8[0] = 4;
          v52.n128_u64[1] = v33;
          sub_2964A793C(&v52.n128_i64[1], 4);
        }

        v58 = *&v55.__r_.__value_.__l.__data_;
        v59 = v55.__r_.__value_.__r.__words[2];
        v35 = sub_2964AFBC0(a3, &v58, v10);
        sub_2964C5080(a3, v34, &v54, v35);
        v36 = v54.__r_.__value_.__s.__data_[0];
        p_size = &v54.__r_.__value_.__l.__size_;
LABEL_162:
        sub_2964A793C(p_size, v36);
        return;
      default:
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25AAF0](exception, "This should never happen, no matter what the input!");
        goto LABEL_54;
    }
  }

  if (v9 != 1 || (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &__p) & 1) != 0)
  {
    goto LABEL_94;
  }

  if (v10 || (*(this + 36) & 1) == 0)
  {
LABEL_53:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, "Parsing failed in metric");
    goto LABEL_54;
  }
}

void sub_2964C2874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  sub_2964A793C((v26 + 8), a21);
  _Unwind_Resume(a1);
}

void sub_2964C2A6C(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v5 = *a3;
  v6 = *(a3 + 2);
  sub_2964AFA4C(a1, &v5, a4);
  v4 = 3;
  operator new();
}

void sub_2964C2B68(uint64_t a1, uint64_t a2, std::string *a3, unsigned int a4)
{
  __p = *a3;
  sub_2964AFA4C(a1, &__p, a4);
  sub_2964BC084(*(a2 + 8) - *a2, *a2, &__p);
  v6 = 0;
  v5 = 3;
  operator new();
}

void sub_2964C2C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964C2CA0(uint64_t *a1, uint64_t a2, __int128 *a3, unsigned int a4)
{
  v7 = *a3;
  v8 = *(a3 + 2);
  sub_2964AFA4C(a1, &v7, a4);
  v5 = *a1;
  sub_2964ADAF0(v6, 0, 0, 0, 1);
}

void sub_2964C2DB0(_Unwind_Exception *a1, unsigned __int8 a2, ...)
{
  va_start(va, a2);
  sub_2964A793C(va, a2);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::CodedInputStream **sub_2964C2DD0(wireless_diagnostics::google::protobuf::io::CodedInputStream **a1)
{
  wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(*a1);
  wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(*a1);
  return a1;
}

void sub_2964C2E0C(uint64_t *a1, uint64_t a2, unsigned int __val)
{
  std::to_string(&v8, __val);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  v6[0] = 6;
  v7 = a2;
  sub_2964C5080(a1, v5, v6, 1);
  sub_2964A793C(&v7, v6[0]);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_2964C2E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_2964A793C((v17 + 8), a10);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2964C2EC4(int a1, _BYTE *a2, unint64_t a3, unsigned int __val)
{
  std::to_string(&v9, __val);
  sub_2964BC084(a3, a2, &__p);
  v8 = 0;
  v7 = 3;
  operator new();
}

void sub_2964C2FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, unsigned __int8 a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_2964A793C((v22 + 8), a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_2964C2FFC(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AFAD0(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 6;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964C31AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964C31E0(uint64_t *a1, unsigned int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 6;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AFAD0(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 6;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 6);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964C3390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964C33C4(uint64_t *a1, uint64_t *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AFAD0(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 5;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964C3574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964C35A8(uint64_t *a1, int *a2, __int128 *a3, unsigned int a4, int a5)
{
  *__p = *a3;
  v21 = *(a3 + 2);
  v10 = sub_2964AFA4C(a1, __p, a4);
  v11 = *a2;
  v18[0] = 5;
  v19 = v11;
  if (a5 == 11)
  {
    v14 = *a3;
    v15 = *(a3 + 2);
    sub_2964AFAD0(a1, &v14, a4, v11, __p);
    v12 = HIBYTE(v21);
    if (v21 < 0)
    {
      v12 = __p[1];
    }

    if (v12)
    {
      operator new();
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (a5 == 12)
  {
    v18[0] = 4;
    v16 = 5;
    v19 = v11 != 0;
    v17 = v11;
    sub_2964A793C(&v17, 5);
  }

  *__p = *a3;
  v21 = *(a3 + 2);
  v13 = sub_2964AFBC0(a1, __p, a4);
  sub_2964C5080(a1, v10, v18, v13);
  sub_2964A793C(&v19, v18[0]);
}

void sub_2964C3758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_2964A793C((v24 + 8), a17);
  _Unwind_Resume(a1);
}

void sub_2964C378C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964AFA4C(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964C3958(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964AFA4C(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964C3B24(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964AFA4C(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

void sub_2964C3CF0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *__p = *a3;
  v6 = *(a3 + 16);
  sub_2964AFA4C(a1, __p, a4);
  sub_2964ADAF0(v4, 0, 0, 0, 2);
}

uint64_t MetadataHandle::getField(MetadataHandle *this)
{
  v1 = *(this + 2);
  if (v1 != 0xFFFFFFFF && (v2 = *this) != 0 && (v3 = *(this + 1), v5 = v2 + 32, v4 = *(v2 + 32), v3 < (*(v5 + 8) - v4) >> 3) && (v6 = *(v4 + 8 * v3)) != 0 && (v8 = v6 + 8, v7 = *(v6 + 8), v1 < (*(v8 + 8) - v7) >> 3))
  {
    return *(v7 + 8 * v1);
  }

  else
  {
    return 0;
  }
}

uint64_t MetadataHandle::getMessage(MetadataHandle *this)
{
  v1 = *this;
  if (*this && (v2 = *(this + 1), v4 = v1 + 32, v3 = *(v1 + 32), v2 < (*(v4 + 8) - v3) >> 3))
  {
    return *(v3 + 8 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t MetadataHandle::getEnum(MetadataHandle *this)
{
  result = MetadataHandle::getField(this);
  if (result)
  {
    if ((*(result + 52) & 1) != 0 && (v3 = *(result + 16), v4 = *(*this + 8), v3 < (*(*this + 16) - v4) >> 3))
    {
      return *(v4 + 8 * v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *MetadataHelper::MetadataHelper(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 0;
  result[3] = 0;
  result[4] = 0xFFFFFFFFLL;
  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = 0;
  result[3] = 0;
  result[4] = 0xFFFFFFFFLL;
  return result;
}

__n128 MetadataHelper::descendIntoMessage@<Q0>(uint64_t a1@<X0>, MetadataHandle *a2@<X1>, uint64_t a3@<X8>)
{
  if (!*a2)
  {
    v5 = *(a1 + 16);
    *(a2 + 2) = *(a1 + 32);
    *a2 = v5;
  }

  if (*(a2 + 2) != 0xFFFFFFFFLL)
  {
    Field = MetadataHandle::getField(a2);
    if (Field)
    {
      *(a2 + 1) = *(Field + 20);
    }

    *(a2 + 2) = 0xFFFFFFFFLL;
  }

  result = *a2;
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 2);
  return result;
}

uint64_t MetadataHelper::getBuiltinType(uint64_t a1, MetadataHandle *a2)
{
  result = MetadataHandle::getField(a2);
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

__n128 MetadataHelper::resolveSubfieldInHandle@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  v25 = *a2;
  v26 = a2[1].n128_u64[0];
  MetadataHelper::descendIntoMessage(a1, &v25, &v27);
  *a2 = v27;
  a2[1].n128_u64[0] = 0xFFFFFFFFLL;
  v7 = a2->n128_u64[0];
  if (!a2->n128_u64[0])
  {
    goto LABEL_18;
  }

  v8 = a2->n128_u64[1];
  v10 = v7 + 32;
  v9 = *(v7 + 32);
  if (v8 >= (*(v10 + 8) - v9) >> 3)
  {
    goto LABEL_18;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  if (v13 != v12)
  {
    v14 = v13 - v12;
    v13 = v12;
    do
    {
      v15 = v14 >> 1;
      v16 = &v13[v14 >> 1];
      v18 = *v16;
      v17 = v16 + 1;
      v14 += ~(v14 >> 1);
      if (*(v18 + 40) <= a3)
      {
        v13 = v17;
      }

      else
      {
        v14 = v15;
      }
    }

    while (v14);
  }

  if (v13 != v12 && ((v21 = *(v13 - 1), v19 = v13 - 1, v20 = v21, v22 = *(v21 + 40), v22 == a3) || (v22 < a3 ? (v23 = (*(v20 + 52) & 8) == 0) : (v23 = 1), !v23 && *(v20 + 28) > a3)))
  {
    a2[1].n128_u64[0] = v19 - v12;
  }

  else
  {
LABEL_18:
    v20 = 0;
  }

  result = *a2;
  *a4 = *a2;
  a4[1].n128_u64[0] = a2[1].n128_u64[0];
  a4[1].n128_u64[1] = v20;
  return result;
}

void MetricFileMetadataHelper::MetricFileMetadataHelper(MetricFileMetadataHelper *this, void *a2)
{
  v3 = a2[1];
  *this = *a2;
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0xFFFFFFFFLL;
  *(this + 2) = MetricFileMetadataHelper::getMetadataForComponent(this, 0);
  MetricFileMetadataHelper::setupMetricFileSentinel(this);
}

void sub_2964C4230(_Unwind_Exception *a1)
{
  sub_2964AC558(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    sub_2964A5FB4(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t MetricFileMetadataHelper::getMetadataForComponent(MetricFileMetadataHelper *this, unsigned int a2)
{
  v10 = a2;
  v3 = sub_2964C4A28(this + 5, &v10);
  if (v3)
  {
    return v3[3];
  }

  MetricFileMetadataHelper::createMetadataForComponent(this, v10, &v9);
  if (!v9)
  {
    operator new();
  }

  v11 = &v10;
  v5 = sub_2964C4B78(this + 5, &v10);
  v6 = *(&v9 + 1);
  v4 = v9;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v5[4];
  v5[3] = v4;
  v5[4] = v6;
  if (v7)
  {
    sub_2964A5FB4(v7);
    v4 = v9;
  }

  if (*(&v9 + 1))
  {
    sub_2964A5FB4(*(&v9 + 1));
  }

  return v4;
}

void sub_2964C436C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2964A5FB4(a10);
  }

  _Unwind_Resume(exception_object);
}

double MetricFileMetadataHelper::setupMetricFileSentinel(__n128 *this)
{
  v4 = this[5];
  v5 = this[6].n128_u64[0];
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(this, &v4, 0xFu, &v6);
  v2 = v7;
  v5 = v7;
  v4 = v6;
  this[5] = v6;
  this[6].n128_u64[0] = v2;
  v4 = this[5];
  v5 = v2;
  MetadataHelper::descendIntoMessage(this, &v4, &v6);
  result = v6.n128_f64[0];
  this[5] = v6;
  this[6].n128_u64[0] = v7;
  return result;
}

__n128 MetricFileMetadataHelper::MetricFileMetadataHelper(MetricFileMetadataHelper *a1, void *a2)
{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  result = v2[5];
  v2[1] = result;
  v2[2].n128_u64[0] = v2[6].n128_u64[0];
  return result;
}

{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  result = v2[5];
  v2[1] = result;
  v2[2].n128_u64[0] = v2[6].n128_u64[0];
  return result;
}

uint64_t MetricFileMetadataHelper::MetricFileMetadataHelper(uint64_t a1, void *a2, unsigned int a3)
{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  *(v5 + 16) = *(v5 + 80);
  *(v5 + 32) = *(v5 + 96);
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(v5, &v8, a3, &v10);
  v6 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v6;
  return a1;
}

{
  MetricFileMetadataHelper::MetricFileMetadataHelper(a1, a2);
  *(v5 + 16) = *(v5 + 80);
  *(v5 + 32) = *(v5 + 96);
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(v5, &v8, a3, &v10);
  v6 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v6;
  return a1;
}

double MetricFileMetadataHelper::getHandleForMetric@<D0>(__n128 *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = this[5];
  v6 = this[6].n128_u64[0];
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(this, &v5, a2, &v7);
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t sub_2964C4550(uint64_t a1)
{
  sub_2964AC558(a1 + 40);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_2964A5FB4(v2);
  }

  return a1;
}

double MetricFileMetadataHelper::getSubfieldType@<D0>(MetricFileMetadataHelper *a1@<X0>, __n128 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1].n128_u64[0];
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(a1, &v6, a3, &v8);
  result = *&v8;
  *a4 = v8;
  *(a4 + 16) = v9;
  return result;
}

void MetricFileMetadataHelper::createMetadataForComponent(AwdMetadataLoader **this@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *this;
  if (a2)
  {
    AwdMetadataLoader::loadComponentMetadata(v3, a2, a3);
  }

  else
  {
    AwdMetadataLoader::loadMetricFileMetadata(v3, a3);
  }
}

double MetricFileMetadataHelper::resolveSubfieldInMetricHandle@<D0>(MetricFileMetadataHelper *a1@<X0>, __n128 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *a2;
  v10 = a2[1].n128_i64[0];
  MetadataHelper::resolveSubfieldInHandle(a1, &v9, a3, v11);
  if (*&v11[24] || *v11 != *(a1 + 5))
  {
    result = *v11;
    v8 = *&v11[16];
    *a4 = *v11;
    *(a4 + 16) = v8;
  }

  else
  {
    *v11 = MetricFileMetadataHelper::getMetadataForComponent(a1, HIWORD(a3));
    *&v11[8] = xmmword_2964E1650;
    v9 = *v11;
    v10 = 0xFFFFFFFFLL;
    *&result = MetadataHelper::resolveSubfieldInHandle(a1, &v9, a3, a4).n128_u64[0];
  }

  return result;
}

uint64_t MetricFileMetadataHelper::getSubfield(MetricFileMetadataHelper *a1, __n128 *a2, unsigned int a3)
{
  v4 = *a2;
  v5 = a2[1].n128_u64[0];
  MetricFileMetadataHelper::resolveSubfieldInMetricHandle(a1, &v4, a3, v6);
  return v7;
}

BOOL MetricFileMetadataHelper::isTopLevelField(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v6 = *a2;
    v7 = a2[2];
    MetadataHelper::descendIntoMessage(a1, &v6, &v8);
    *a2 = v8;
    a2[2] = v9;
    v3 = *a2;
  }

  return v3 == *(a1 + 80);
}

void MetricFileMetadataHelper::getMetricsInComponent(MetricFileMetadataHelper *this@<X0>, unsigned int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  MetadataForComponent = MetricFileMetadataHelper::getMetadataForComponent(this, a2);
  if (MetadataForComponent)
  {
    v5 = *(MetadataForComponent + 32);
    if (v5 != *(MetadataForComponent + 40))
    {
      v6 = *v5;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      if (v7 != v8)
      {
        v9 = 0;
        do
        {
          if ((*(*v7 + 52) & 0x40) != 0)
          {
            v10 = *(*v7 + 40);
            v11 = a3[2];
            if (v9 >= v11)
            {
              v12 = *a3;
              v13 = v9 - *a3;
              v14 = v13 >> 2;
              v15 = (v13 >> 2) + 1;
              if (v15 >> 62)
              {
                sub_2964A3CDC();
              }

              v16 = v11 - v12;
              if (v16 >> 1 > v15)
              {
                v15 = v16 >> 1;
              }

              if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v17 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v17 = v15;
              }

              if (v17)
              {
                sub_2964AC06C(a3, v17);
              }

              *(4 * v14) = v10;
              v9 = (4 * v14 + 4);
              memcpy(0, v12, v13);
              v18 = *a3;
              *a3 = 0;
              a3[1] = v9;
              a3[2] = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            else
            {
              *v9 = v10;
              v9 += 4;
            }

            a3[1] = v9;
          }

          v7 += 8;
        }

        while (v7 != v8);
      }
    }
  }
}

void sub_2964C4938(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DeviceConfigMetadataHelper::DeviceConfigMetadataHelper(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xFFFFFFFFLL;
  AwdMetadataLoader::loadDeviceConfigMetadata(*a2, (a1 + 40));
  *(a1 + 16) = *(a1 + 40);
  return a1;
}

void sub_2964C49B8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2964A5FB4(v3);
  }

  _Unwind_Resume(exception_object);
}

double DeviceConfigMetadataHelper::getSubfieldType@<D0>(uint64_t a1@<X0>, __n128 *a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1].n128_u64[0];
  MetadataHelper::resolveSubfieldInHandle(a1, &v6, a3, &v8);
  result = v8.n128_f64[0];
  *a4 = v8;
  a4[1].n128_u64[0] = v9;
  return result;
}

uint64_t *sub_2964C4A28(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2964C4AFC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D54728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t *sub_2964C4B78(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2964C4DCC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2964C4EBC(a1, prime);
    }
  }
}

void sub_2964C4EBC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2964A3CA8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2964C5020(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_2964A5FB4(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_2964C5080(uint64_t *a1, char *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = sub_2964C51C8(*a1, a2);
    if (!*v5)
    {
      sub_2964ADAF0(v14, 0, 0, 0, 2);
    }

    if (*a3 == 2)
    {
      v6 = *(a3 + 8);
      v8 = *v6;
      v7 = v6[1];
      v16[2] = v8;
      v16[3] = 0;
      v16[4] = 0x8000000000000000;
      v15[2] = v7;
      v15[3] = 0;
      v15[4] = 0x8000000000000000;
      v16[0] = a3;
      v16[1] = 0;
      v15[0] = a3;
      v15[1] = 0;
      sub_2964C55EC(v16, v15, v5, v17);
    }

    else
    {
      sub_2964C5390(v5, a3);
    }
  }

  else
  {
    v9 = *a3;
    v13 = *(a3 + 8);
    *a3 = 0;
    *(a3 + 8) = 0;
    v10 = sub_2964C51C8(*a1, a2);
    v11 = *v10;
    *v10 = v9;
    v12 = *(v10 + 1);
    *(v10 + 1) = v13;
    v13 = v12;
    sub_2964A793C(&v13, v11);
  }
}

uint64_t sub_2964C51C8(uint64_t a1, char *__s)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v10, v7);
    v8 = std::string::insert(&v10, 0, "cannot use operator[] with a string argument with ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v12 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(305, __p, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  sub_2964A6FA0(__p, __s);
  v10.__r_.__value_.__r.__words[0] = __p;
  v4 = sub_2964C553C(v3, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v4 + 56;
}

void sub_2964C5318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964C5390(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v8 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v11, v8);
    v9 = std::string::insert(&v11, 0, "cannot use emplace_back() with ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v13 = v9->__r_.__value_.__r.__words[2];
    v12 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(311, &v12, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 16))
  {
    v5 = sub_2964A8000(v3, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = v4 + 16;
  }

  *(v3 + 8) = v5;
  return *(*(a1 + 8) + 8) - 16;
}

void sub_2964C54DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_2964C553C(uint64_t a1, const void **a2)
{
  v2 = *sub_2964AE49C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

__n128 sub_2964C55EC@<Q0>(uint64_t a1@<X1>, unsigned __int8 **a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  while (!sub_2964C56E8(a1, a2))
  {
    v8 = sub_2964C59F0(a1);
    sub_2964C5B3C(a3, v8);
    sub_2964C5678(a1);
  }

  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  *(a4 + 40) = a3;
  return result;
}

unsigned __int8 **sub_2964C5678(unsigned __int8 **result)
{
  v1 = **result;
  if (v1 == 2)
  {
    result[2] += 16;
  }

  else if (v1 == 1)
  {
    v2 = result[1];
    v3 = *(v2 + 1);
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = *(v2 + 2);
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    result[1] = v4;
  }

  else
  {
    ++result[4];
  }

  return result;
}

BOOL sub_2964C56E8(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2964A6FA0(v7, "cannot compare iterators of different containers");
    sub_2964C57F0(212, v7, exception);
    __cxa_throw(exception, &unk_2A1D54768, sub_2964C5934);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[4];
    v4 = a2[4];
  }

  return v3 == v4;
}

void sub_2964C57B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_2964C57F0(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2964A6FA0(&__p, "invalid_iterator");
  sub_2964A6E1C(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_2964A7058(a3, a1, v11);
  *a3 = &unk_2A1D54790;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2964C58EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964C5934(std::runtime_error *a1)
{
  a1->__vftable = &unk_2A1D53648;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_2964C5988(std::runtime_error *a1)
{
  a1->__vftable = &unk_2A1D53648;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x29C25AE40);
}

_BYTE *sub_2964C59F0(uint64_t a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 1)
  {
    return (*(a1 + 8) + 56);
  }

  if (v3 == 2)
  {
    return *(a1 + 16);
  }

  if (!*result)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2964A6FA0(v6, "cannot get value");
    sub_2964C57F0(214, v6, exception);
    __cxa_throw(exception, &unk_2A1D54768, sub_2964C5934);
  }

  if (*(a1 + 32))
  {
    v4 = __cxa_allocate_exception(0x20uLL);
    sub_2964A6FA0(v6, "cannot get value");
    sub_2964C57F0(214, v6, v4);
    __cxa_throw(v4, &unk_2A1D54768, sub_2964C5934);
  }

  return result;
}

void sub_2964C5B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964C5B3C(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_2964ADEEC(a1);
    sub_2964A6FA0(&v9, v6);
    v7 = std::string::insert(&v9, 0, "cannot use push_back() with ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_2964A6C84(308, &v10, exception);
    __cxa_throw(exception, &unk_2A1D535F8, sub_2964A6DC8);
  }

  v3 = *(a1 + 8);

  return sub_2964A7D40(v3, a2);
}

void sub_2964C5C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_2964C5D08(uint64_t *a1)
{
  *a1 = &unk_2A1D547B8;
  sub_2964B9C18(a1 + 1, 0);

  AwdMetadataLoaderDelegate::~AwdMetadataLoaderDelegate(a1);
}

void sub_2964C5D60(uint64_t *a1)
{
  *a1 = &unk_2A1D547B8;
  sub_2964B9C18(a1 + 1, 0);

  AwdMetadataLoaderDelegate::~AwdMetadataLoaderDelegate(a1);
}

void sub_2964C5DB8(uint64_t *a1)
{
  *a1 = &unk_2A1D547B8;
  sub_2964B9C18(a1 + 1, 0);
  AwdMetadataLoaderDelegate::~AwdMetadataLoaderDelegate(a1);

  JUMPOUT(0x29C25AE40);
}

const unsigned __int8 *sub_2964C5E24@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v7 = (*(*a1 + 80))(a1);
  v9 = sub_2964C5F70(v7, v8, a2, a3);

  return sub_2964C5E98(v9, v10, a4);
}

const unsigned __int8 *sub_2964C5E98@<X0>(const unsigned __int8 *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && a2)
  {
    PB::Reader::Reader(&v3, result);
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

char *sub_2964C5F70(_DWORD *a1, uint64_t a2, int a3, int a4)
{
  if (!a1 || a2 < 4)
  {
    return 0;
  }

  v4 = 0;
  if (a2 != 4 && *a1 == 1296324417)
  {
    v6 = a1 + a2;
    v7 = (a1 + 1);
    while (1)
    {
      v8 = v7[1];
      v9 = v7 + 2;
      v10 = *v7 | (v8 << 32);
      if (&v7[2 * v8 + 2] > v6)
      {
        v10 = 0;
      }

      if (!v10)
      {
        break;
      }

      if (a3)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 2;
      }

      v12 = !v11;
      if ((v10 & 0xFFFE) == 2 && (v12 & 1) == 0)
      {
        v13 = a3 != 1 || v10 == 3;
        v14 = !v13;
        if (HIDWORD(v10) >= 3 && !v14)
        {
          v15 = *(v7 + 3);
          v4 = a1 + *(v7 + 2);
          if (&v4[v15] <= v6 && *v9 == a4)
          {
            return v4;
          }
        }
      }

      v7 = (v9 + (v10 >> 30));
      if (v7 >= v6)
      {
        return 0;
      }
    }

    return 0;
  }

  return v4;
}

const unsigned __int8 *sub_2964C6054@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = (*(*a1 + 80))(a1);
  v7 = sub_2964C5F70(v5, v6, a2, 0);

  return sub_2964C5E98(v7, v8, a3);
}

const unsigned __int8 *sub_2964C60BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 80))(a1);
  v5 = sub_2964C6118(v3, v4);

  return sub_2964C5E98(v5, v6, a2);
}

char *sub_2964C6118(_DWORD *a1, uint64_t a2)
{
  if (!a1 || a2 < 4)
  {
    return 0;
  }

  v2 = 0;
  if (a2 != 4 && *a1 == 1296324417)
  {
    v4 = a1 + a2;
    v5 = (a1 + 1);
    while (1)
    {
      v6 = v5[1];
      v7 = v5 + 2;
      v8 = *v5 | (v6 << 32);
      if (&v5[2 * v6 + 2] > v4)
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      if (v8 >> 33)
      {
        v9 = v8 == 5;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = *(v5 + 2);
        v2 = a1 + *(v5 + 1);
        if (&v2[v10] <= v4)
        {
          return v2;
        }
      }

      v5 = (v7 + (v8 >> 30));
      if (v5 >= v4)
      {
        return 0;
      }
    }

    return 0;
  }

  return v2;
}

const unsigned __int8 *sub_2964C61C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + 80))(a1);
  v5 = sub_2964C62F8(v3, v4);

  return sub_2964C6220(v5, v6, a2);
}

const unsigned __int8 *sub_2964C6220@<X0>(const unsigned __int8 *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result && a2)
  {
    PB::Reader::Reader(&v3, result);
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

char *sub_2964C62F8(_DWORD *a1, uint64_t a2)
{
  if (!a1 || a2 < 4)
  {
    return 0;
  }

  v2 = 0;
  if (a2 != 4 && *a1 == 1296324417)
  {
    v4 = a1 + a2;
    v5 = (a1 + 1);
    while (1)
    {
      v6 = v5[1];
      v7 = v5 + 2;
      v8 = *v5 | (v6 << 32);
      if (&v5[2 * v6 + 2] > v4)
      {
        v8 = 0;
      }

      if (!v8)
      {
        break;
      }

      if (v8 >> 33)
      {
        v9 = v8 == 6;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = *(v5 + 2);
        v2 = a1 + *(v5 + 1);
        if (&v2[v10] <= v4)
        {
          return v2;
        }
      }

      v5 = (v7 + (v8 >> 30));
      if (v5 >= v4)
      {
        return 0;
      }
    }

    return 0;
  }

  return v2;
}

void sub_2964C63A4(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = (*(*a1 + 80))(a1);
  v7 = v5;
  if (v5)
  {
    v8 = v6 < 4;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && v6 != 4 && *v5 == 1296324417)
  {
    v10 = 0;
    v11 = v5 + v6;
    v12 = (v5 + 1);
    do
    {
      v13 = v12[1];
      v14 = (v12 + 2);
      if (&v12[2 * v13 + 2] <= v11)
      {
        v15 = *v12 | (v13 << 32);
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        break;
      }

      if (a2)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15 == 2;
      }

      v17 = !v16;
      if ((v15 & 0xFFFE) == 2 && (v17 & 1) == 0)
      {
        v18 = a2 != 1 || v15 == 3;
        v19 = !v18;
        if (HIDWORD(v15) >= 3 && !v19)
        {
          if (v7 + *(v12 + 2) + *(v12 + 3) <= v11)
          {
            v20 = *v14;
          }

          else
          {
            v20 = 0;
          }

          v21 = a3[2];
          if (v10 >= v21)
          {
            v22 = *a3;
            v23 = v10 - *a3;
            v24 = v23 >> 2;
            v25 = (v23 >> 2) + 1;
            if (v25 >> 62)
            {
              sub_2964A3CDC();
            }

            v26 = v21 - v22;
            if (v26 >> 1 > v25)
            {
              v25 = v26 >> 1;
            }

            v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
            v28 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v27)
            {
              v28 = v25;
            }

            if (v28)
            {
              sub_2964AC06C(a3, v28);
            }

            *(4 * v24) = v20;
            v10 = (4 * v24 + 4);
            memcpy(0, v22, v23);
            v29 = *a3;
            *a3 = 0;
            a3[1] = v10;
            a3[2] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v10 = v20;
            v10 += 4;
          }

          a3[1] = v10;
        }
      }

      v12 = (v14 + (v15 >> 30));
    }

    while (v12 < v11);
  }
}

void sub_2964C6594(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2964C65B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    operator new();
  }

  if (!*v1)
  {
    return 0;
  }

  result = v1[1];
  if (result == -1)
  {
    return 0;
  }

  v3 = v1[2];
  return result;
}

uint64_t *sub_2964C6660@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 1065353216;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 1065353216;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  if (result)
  {
    if (a2 >= 4)
    {
      v5 = result;
      if (a2 != 4 && *result == 1296324417)
      {
        v6 = result + a2;
        v7 = result + 2;
        do
        {
          v8 = v7[1];
          v9 = (v7 + 2);
          v10 = &v7[2 * v8 + 2] <= v6 ? *v7 | (v8 << 32) : 0;
          if (!v10)
          {
            break;
          }

          if (v10 - 2 < 2)
          {
            if (HIDWORD(v10) >= 3)
            {
              v12 = *(v7 + 3);
              v13 = v5 + *(v7 + 2);
              if (v13 + v12 <= v6)
              {
                v14 = *v9;
                v19 = v13;
                v20 = v12;
                v18 = v14;
                v21 = &v18;
                if (v10 == 2)
                {
                  result = sub_2964C696C(v4, &v18);
                }

                else
                {
                  result = sub_2964C696C((a3 + 48), &v18);
                }

                result[3] = v13;
                result[4] = v12;
              }
            }
          }

          else if (v10 == 6)
          {
            if (v10 >> 33)
            {
              v16 = *(v7 + 1);
              v15 = *(v7 + 2);
              v17 = v5 + v16;
              if (&v17[v15] <= v6)
              {
                *(a3 + 88) = v17;
                *(a3 + 96) = v15;
                return result;
              }
            }
          }

          else if (v10 == 1 && HIDWORD(v10) != 0)
          {
            *a3 = *v9;
          }

          v7 = (v9 + (v10 >> 30));
        }

        while (v7 < v6);
      }
    }
  }

  return result;
}

void sub_2964C6824(_Unwind_Exception *a1)
{
  sub_2964B9B00(v2);
  sub_2964B9B00(v1);
  _Unwind_Resume(a1);
}

FILE **sub_2964C6840(FILE **a1, char *__filename)
{
  *a1 = 0;
  a1[1] = -1;
  a1[2] = 0;
  v3 = fopen(__filename, "rb");
  *a1 = v3;
  if (v3)
  {
    v4 = fileno(v3);
    if ((v4 & 0x80000000) == 0)
    {
      v5 = v4;
      if (!fstat(v4, &v8))
      {
        st_size = v8.st_size;
        a1[2] = v8.st_size;
        a1[1] = mmap(0, st_size, 1, 1025, v5, 0);
      }
    }
  }

  return a1;
}

void sub_2964C68F0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1D54838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t *sub_2964C696C(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void awd::asString(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  ctu::hex(*a1);
  v4 = std::string::insert(&v22, 0, "Trigger(cid=0x");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v23, ", trid=0x");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  ctu::hex(a1[1]);
  if ((v21 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v9 = v21;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = std::string::append(&v24, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v25, ", sid=");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, a1[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v26, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v27, ")");
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_2964C6D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

const char *awd::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_29EE31EE8[a1];
  }
}

void awd::createTagForProtobuf(awd *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_2964C6F6C(a3, (8 * this) | 2);
  sub_2964C6F6C(a3, a2);
}

void sub_2964C6F50(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964C6F6C(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x80)
  {
    LOBYTE(v4) = a2;
  }

  else
  {
    do
    {
      v7 = v2 | 0x80;
      sub_2964C798C(a1, &v7);
      v4 = v2 >> 7;
      v5 = v2 >> 14;
      v2 >>= 7;
    }

    while (v5);
  }

  v6 = v4;
  sub_2964C798C(a1, &v6);
}

void *awd::tagSerializedProtobuf(int a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a2;
  v5 = v3 - v4;
  v6 = (8 * a1) | 2;
  if ((8 * a1) < 0x80)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      __src[v7++] = v6 | 0x80;
      v8 = v6 >> 14;
      v6 >>= 7;
    }

    while (v8);
  }

  v9 = (v7 + 1);
  __src[v7] = v6;
  if (v5 < 0x80)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v15[v10++] = v5 | 0x80;
      v11 = v5 >> 14;
      v5 >>= 7;
    }

    while (v11);
  }

  v12 = (v10 + 1);
  v15[v10] = v5;
  v14 = 0;
  result = sub_2964C70DC(a2, v4, (v12 + v9), &v14);
  if (v9)
  {
    result = memcpy(*a2, __src, v9);
  }

  if (v12)
  {
    return memcpy((*a2 + v9), v15, v12);
  }

  return result;
}

char *sub_2964C70DC(uint64_t a1, char *a2, size_t a3, char *a4)
{
  v4 = a2;
  if (a3)
  {
    v5 = a4;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8 - v9 >= a3)
    {
      v15 = v9 - a2;
      if (a3 <= v9 - a2)
      {
        v16 = *(a1 + 8);
        v17 = a3;
      }

      else
      {
        memset(*(a1 + 8), *a4, a3 - (v9 - a2));
        v16 = &v4[a3];
        *(a1 + 8) = &v4[a3];
        if (!v15)
        {
          return v4;
        }

        v17 = v9 - v4;
      }

      v18 = &v4[a3];
      v19 = v16;
      if (&v16[-a3] < v9)
      {
        if (a3 <= v15)
        {
          v20 = v9 - v4;
        }

        else
        {
          v20 = a3;
        }

        v21 = &v4[-a3];
        v22 = v4;
        do
        {
          v22[v20] = v21[v20];
          ++v21;
          ++v22;
        }

        while (&v21[v20] != v9);
        if (a3 <= v15)
        {
          v23 = v9 - v4;
        }

        else
        {
          v23 = a3;
        }

        v19 = &v22[v23];
      }

      *(a1 + 8) = v19;
      if (v16 != v18)
      {
        memmove(&v4[a3], v4, v16 - v18);
      }

      if (v4 <= v5)
      {
        if (*(a1 + 8) <= v5)
        {
          v24 = 0;
        }

        else
        {
          v24 = a3;
        }

        v5 += v24;
      }

      memset(v4, *v5, v17);
    }

    else
    {
      v10 = *a1;
      v11 = &v9[a3 - *a1];
      if (v11 < 0)
      {
        sub_2964A3CDC();
      }

      v12 = (a2 - v10);
      v13 = v8 - v10;
      if (2 * v13 > v11)
      {
        v11 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      if (v14)
      {
        operator new();
      }

      v25 = a2 - v10;
      memset(v12, *a4, a3);
      v26 = &v12[a3];
      v27 = v9 - v4;
      memcpy(v26, v4, v9 - v4);
      *(a1 + 8) = v4;
      v28 = &v12[v10 - v4];
      memcpy(v28, v10, v25);
      *a1 = v28;
      *(a1 + 8) = &v26[v27];
      *(a1 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }

      return v12;
    }
  }

  return v4;
}

uint64_t awd::serializeMetric@<X0>(awd *this@<X0>, const wireless_diagnostics::google::protobuf::MessageLite *a2@<X1>, char **a3@<X8>)
{
  v6 = (*(*this + 72))(this);
  awd::createTagForProtobuf(a2, v6, a3);
  v7 = *a3;
  v8 = a3[1] - *a3;
  v9 = v8 + v6;
  if (v8 >= v9)
  {
    if (v8 > v9)
    {
      a3[1] = &v7[v9];
    }
  }

  else
  {
    sub_2964C7B98(a3, v6);
    v7 = *a3;
  }

  return MEMORY[0x29C25AA70](this, &v7[v8], v6);
}

void sub_2964C7394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void awd::serializeMetric(awd *this@<X0>, const PB::Base *a2@<X1>, uint64_t a3@<X8>)
{
  PB::Writer::Writer(&v6);
  (*(*this + 24))(this, &v6);
  awd::createTagForProtobuf(a2, v6 - v7, a3);
  sub_2964C7CD0(a3, *(a3 + 8), v7, v6, v6 - v7);
  PB::Writer::~Writer(&v6);
}

void sub_2964C744C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  PB::Writer::~Writer(va);
  _Unwind_Resume(a1);
}

uint64_t awd::GetProtobufTag@<X0>(uint64_t this@<X0>, const unsigned __int8 *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (this)
  {
    v4 = this;
    v8 = this;
    v6 = sub_2964C7590(&v8, &a2[this]);
    if ((v6 & 7) != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25AAF0](exception, &unk_2964E00BE);
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    *(a3 + 4) = v6 >> 3;
    this = sub_2964C7590(&v8, &a2[v4]);
    *a3 = (v8 - v4);
    a3[1] = this;
  }

  return this;
}

void sub_2964C7548(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_free_exception(v17);
  __cxa_begin_catch(a1);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;

  __cxa_end_catch();
}

uint64_t sub_2964C7590(void *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (*a1 != a2)
  {
    while (*v3 < 0)
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }
  }

  if (v3 == a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25AAF0](exception, &unk_2964E00BE);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *a1 = v3 + 1;
  v4 = *v3 & 0x7F;
  if (v3 == v2)
  {
    return *v3 & 0x7F;
  }

  do
  {
    v5 = *--v3;
    result = v5 & 0x7F | (v4 << 7);
    v4 = v5 & 0x7F | (v4 << 7);
  }

  while (v3 != v2);
  return result;
}

uint64_t awd::getCoreAnalyticsEventName(awd *this)
{
  sub_2964C7820(&v3);
  v1 = sub_2964C80BC(&v3, "com.apple.awd.0x", 16);
  *(v1 + *(*v1 - 24) + 8) = *(v1 + *(*v1 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x29C25AC70]();
  std::stringbuf::str();
  v3 = *MEMORY[0x29EDC9538];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x29C25AD70](&v7);
}

void sub_2964C77FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2964C7A7C(va, MEMORY[0x29EDC9538]);
  MEMORY[0x29C25AD70](v2 + 112);
  _Unwind_Resume(a1);
}

uint64_t *sub_2964C7820(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_2964C7EF8((a1 + 1), 16);
  return a1;
}

void sub_2964C7964(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C25AD70](v1);
  _Unwind_Resume(a1);
}

void sub_2964C798C(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_2964A3CDC();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t sub_2964C7A7C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void sub_2964C7B98(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_2964A3CDC();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

char *sub_2964C7CD0(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    sub_2964A3CDC();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t sub_2964C7EF8(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C25AD00](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_2964C7FB4(a1);
  return a1;
}

void sub_2964C7F8C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2964C7FB4(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_2964C80BC(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C25AC40](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_2964C8264(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C25AC50](v13);
  return a1;
}

void sub_2964C81FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C25AC50](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2964C81DCLL);
}

uint64_t sub_2964C8264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2964A3C00();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2964C8430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *createDescriptionForMetriclogFile(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
    memset(&v10, 0, sizeof(v10));
    std::string::resize(&v10, MaximumSizeForEncoding + 1, 0);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v10;
    }

    else
    {
      v4 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    if (CFStringGetCString(v1, v4, size, 0x8000100u))
    {
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v10;
      }

      else
      {
        v6 = v10.__r_.__value_.__r.__words[0];
      }

      sub_2964C6840(v11, v6);
      if (v11[0] && v11[1] != -1)
      {
        sCreateBestChoiceMetadataLoaderDelegate();
      }

      v9 = 0;
      LOBYTE(__p) = 0;
      sub_2964B9C64(v11);
      v1 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], &__p, 0x600u);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v1 = 0;
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  return v1;
}

void sub_2964C85EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  if (a19)
  {
    sub_2964A5FB4(a19);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2964C8584);
  }

  sub_2964B9C64(&a20);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2964C8694(uint64_t result)
{
  *result = &unk_2A1D54888;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_2964C86B8(PB::Base *this)
{
  *this = &unk_2A1D54888;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2964A3B00(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_2964C871C(PB::Base *a1)
{
  sub_2964C86B8(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964C8754(uint64_t result, uint64_t a2)
{
  *result = &unk_2A1D54888;
  *(result + 8) = 0;
  *(result + 20) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(result + 20) |= 1u;
    *(result + 16) = v2;
  }

  return result;
}

uint64_t sub_2964C8834(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964C8754(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    sub_2964C86B8(v6);
  }

  return a1;
}

uint64_t sub_2964C8898(uint64_t result, uint64_t a2)
{
  v2 = *(result + 20);
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = v2;
  v3 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  LODWORD(v3) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2964C88CC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1D54888;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    sub_2964A3B00(v4, v6);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_2964C8944(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964C88CC(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    sub_2964C86B8(v6);
  }

  return a1;
}

uint64_t sub_2964C89A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 20))
  {
    v5 = *(a1 + 16);
    PB::TextFormatter::format(this, "metric_id");
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2964C8A20(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_50;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v23 = *(this + 1);
        v22 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v33 = v22 - v23;
          if (!v17)
          {
            v33 = 0;
          }

          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v36 = *v34;
            *(this + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            *(this + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_2964C8CF0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 20))
  {
    v4 = *(v3 + 16);

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

BOOL sub_2964C8D58(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = *(v5 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v5 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? *(a1 + 8) : *v4;
  v11 = v9 >= 0 ? *(a2 + 8) : *v5;
  if (memcmp(v10, v11, v7))
  {
    return 0;
  }

LABEL_20:
  result = (*(a2 + 20) & 1) == 0;
  if (*(a1 + 20))
  {
    return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

unint64_t sub_2964C8E18(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = sub_2964A3DE8(&v6, v2);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 20))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

double sub_2964C8E70(uint64_t a1)
{
  *a1 = &unk_2A1D548D8;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *&result = 0x100000001;
  *(a1 + 32) = 0x100000001;
  *(a1 + 44) = 0;
  *(a1 + 52) = 0;
  return result;
}

void sub_2964C8EA4(PB::Base *this)
{
  *this = &unk_2A1D548D8;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2964A3B00(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_2964C8F08(PB::Base *a1)
{
  sub_2964C8EA4(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964C8F40(uint64_t result, uint64_t a2)
{
  *result = &unk_2A1D548D8;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0x100000001;
  *(result + 44) = 0;
  *(result + 52) = 0;
  v2 = *(a2 + 52);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 64;
    *(result + 52) = 64;
    *(result + 40) = v4;
    v2 = *(a2 + 52);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    v5 = *(a2 + 44);
    v3 |= 0x80u;
    *(result + 52) = v3;
    *(result + 44) = v5;
    v2 = *(a2 + 52);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 50);
    *(result + 52) = v3 | 0x400;
    *(result + 50) = v6;
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  v7 = *(a2 + 52);
  if ((v7 & 0x200) != 0)
  {
    v9 = *(a2 + 49);
    *(result + 52) |= 0x200u;
    *(result + 49) = v9;
    v7 = *(a2 + 52);
    if ((v7 & 0x100) == 0)
    {
LABEL_12:
      if ((v7 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }
  }

  else if ((*(a2 + 52) & 0x100) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(a2 + 48);
  *(result + 52) |= 0x100u;
  *(result + 48) = v10;
  v7 = *(a2 + 52);
  if ((v7 & 2) == 0)
  {
LABEL_13:
    if ((v7 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 20);
  *(result + 52) |= 2u;
  *(result + 20) = v11;
  v7 = *(a2 + 52);
  if ((v7 & 1) == 0)
  {
LABEL_14:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *(a2 + 16);
  *(result + 52) |= 1u;
  *(result + 16) = v12;
  v7 = *(a2 + 52);
  if ((v7 & 0x20) == 0)
  {
LABEL_15:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = *(a2 + 36);
  *(result + 52) |= 0x20u;
  *(result + 36) = v13;
  v7 = *(a2 + 52);
  if ((v7 & 0x10) == 0)
  {
LABEL_16:
    if ((v7 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = *(a2 + 32);
  *(result + 52) |= 0x10u;
  *(result + 32) = v14;
  v7 = *(a2 + 52);
  if ((v7 & 8) == 0)
  {
LABEL_17:
    if ((v7 & 4) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_26:
  v15 = *(a2 + 28);
  *(result + 52) |= 8u;
  *(result + 28) = v15;
  if ((*(a2 + 52) & 4) == 0)
  {
    return result;
  }

LABEL_18:
  v8 = *(a2 + 24);
  *(result + 52) |= 4u;
  *(result + 24) = v8;
  return result;
}

uint64_t sub_2964C9168(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964C8F40(v4, a2);
    sub_2964C91B8(a1, v4);
    sub_2964C8EA4(v4);
  }

  return a1;
}

__n128 sub_2964C91B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 52);
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = v2;
  v3 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v3;
  LOBYTE(v2) = *(a1 + 50);
  *(a1 + 50) = *(a2 + 50);
  *(a2 + 50) = v2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LOBYTE(v4) = *(a1 + 49);
  *(a1 + 49) = *(a2 + 49);
  *(a2 + 49) = v4;
  LOBYTE(v4) = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v4;
  LODWORD(v4) = *(a1 + 20);
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  LODWORD(v4) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  result = *(a2 + 24);
  v6 = *(a1 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2964C924C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1D548D8;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x100000001;
  *(a1 + 44) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 50) = *(a2 + 50);
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    sub_2964A3B00(v4, v6);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t sub_2964C9304(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964C924C(v4, a2);
    sub_2964C91B8(a1, v4);
    sub_2964C8EA4(v4);
  }

  return a1;
}

uint64_t sub_2964C9354(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    v9 = *(a1 + 16);
    PB::TextFormatter::format(this, "enum_type_index");
    v5 = *(a1 + 52);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 52) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(a1 + 48);
  PB::TextFormatter::format(this, "has_loc");
  v5 = *(a1 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_4:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a1 + 49);
  PB::TextFormatter::format(this, "has_pii");
  v5 = *(a1 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a1 + 50);
  PB::TextFormatter::format(this, "is_repeated");
  v5 = *(a1 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = *(a1 + 20);
  PB::TextFormatter::format(this, "message_type_index");
  v5 = *(a1 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = *(a1 + 24);
  PB::TextFormatter::format(this, "metric_query_type");
  v5 = *(a1 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_25:
  v15 = *(a1 + 28);
  PB::TextFormatter::format(this, "metric_range_to");
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32);
    PB::TextFormatter::format(this, "metric_type");
  }

LABEL_10:
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v7 = *(a1 + 52);
  if ((v7 & 0x20) != 0)
  {
    v16 = *(a1 + 36);
    PB::TextFormatter::format(this, "number_pretty_format");
    v7 = *(a1 + 52);
    if ((v7 & 0x40) == 0)
    {
LABEL_14:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(a1 + 40);
  PB::TextFormatter::format(this, "tag");
  if ((*(a1 + 52) & 0x80) != 0)
  {
LABEL_15:
    v8 = *(a1 + 44);
    PB::TextFormatter::format(this, "type");
  }

LABEL_16:

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2964C9510(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_208;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 52) |= 0x10u;
              v68 = *(this + 1);
              v67 = *(this + 2);
              v69 = *this;
              if (v68 > 0xFFFFFFFFFFFFFFF5 || v68 + 10 > v67)
              {
                v131 = 0;
                v132 = 0;
                v72 = 0;
                v17 = v67 >= v68;
                v133 = v67 - v68;
                if (!v17)
                {
                  v133 = 0;
                }

                v134 = (v69 + v68);
                v135 = v68 + 1;
                while (1)
                {
                  if (!v133)
                  {
                    LODWORD(v72) = 0;
                    *(this + 24) = 1;
                    goto LABEL_194;
                  }

                  v136 = *v134;
                  *(this + 1) = v135;
                  v72 |= (v136 & 0x7F) << v131;
                  if ((v136 & 0x80) == 0)
                  {
                    break;
                  }

                  v131 += 7;
                  --v133;
                  ++v134;
                  ++v135;
                  v14 = v132++ > 8;
                  if (v14)
                  {
LABEL_145:
                    LODWORD(v72) = 0;
                    goto LABEL_194;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v72) = 0;
                }
              }

              else
              {
                v70 = 0;
                v71 = 0;
                v72 = 0;
                v73 = (v69 + v68);
                v74 = v68 + 1;
                while (1)
                {
                  *(this + 1) = v74;
                  v75 = *v73++;
                  v72 |= (v75 & 0x7F) << v70;
                  if ((v75 & 0x80) == 0)
                  {
                    break;
                  }

                  v70 += 7;
                  ++v74;
                  v14 = v71++ > 8;
                  if (v14)
                  {
                    goto LABEL_145;
                  }
                }
              }

LABEL_194:
              *(a1 + 32) = v72;
              goto LABEL_204;
            case 0xB:
              *(a1 + 52) |= 8u;
              v99 = *(this + 1);
              v98 = *(this + 2);
              v100 = *this;
              if (v99 > 0xFFFFFFFFFFFFFFF5 || v99 + 10 > v98)
              {
                v149 = 0;
                v150 = 0;
                v103 = 0;
                v17 = v98 >= v99;
                v151 = v98 - v99;
                if (!v17)
                {
                  v151 = 0;
                }

                v152 = (v100 + v99);
                v153 = v99 + 1;
                while (1)
                {
                  if (!v151)
                  {
                    LODWORD(v103) = 0;
                    *(this + 24) = 1;
                    goto LABEL_203;
                  }

                  v154 = *v152;
                  *(this + 1) = v153;
                  v103 |= (v154 & 0x7F) << v149;
                  if ((v154 & 0x80) == 0)
                  {
                    break;
                  }

                  v149 += 7;
                  --v151;
                  ++v152;
                  ++v153;
                  v14 = v150++ > 8;
                  if (v14)
                  {
LABEL_169:
                    LODWORD(v103) = 0;
                    goto LABEL_203;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v103) = 0;
                }
              }

              else
              {
                v101 = 0;
                v102 = 0;
                v103 = 0;
                v104 = (v100 + v99);
                v105 = v99 + 1;
                while (1)
                {
                  *(this + 1) = v105;
                  v106 = *v104++;
                  v103 |= (v106 & 0x7F) << v101;
                  if ((v106 & 0x80) == 0)
                  {
                    break;
                  }

                  v101 += 7;
                  ++v105;
                  v14 = v102++ > 8;
                  if (v14)
                  {
                    goto LABEL_169;
                  }
                }
              }

LABEL_203:
              *(a1 + 28) = v103;
              goto LABEL_204;
            case 0xC:
              *(a1 + 52) |= 4u;
              v41 = *(this + 1);
              v40 = *(this + 2);
              v42 = *this;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
              {
                v113 = 0;
                v114 = 0;
                v45 = 0;
                v17 = v40 >= v41;
                v115 = v40 - v41;
                if (!v17)
                {
                  v115 = 0;
                }

                v116 = (v42 + v41);
                v117 = v41 + 1;
                while (1)
                {
                  if (!v115)
                  {
                    LODWORD(v45) = 0;
                    *(this + 24) = 1;
                    goto LABEL_185;
                  }

                  v118 = *v116;
                  *(this + 1) = v117;
                  v45 |= (v118 & 0x7F) << v113;
                  if ((v118 & 0x80) == 0)
                  {
                    break;
                  }

                  v113 += 7;
                  --v115;
                  ++v116;
                  ++v117;
                  v14 = v114++ > 8;
                  if (v14)
                  {
LABEL_117:
                    LODWORD(v45) = 0;
                    goto LABEL_185;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v45) = 0;
                }
              }

              else
              {
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = (v42 + v41);
                v47 = v41 + 1;
                while (1)
                {
                  *(this + 1) = v47;
                  v48 = *v46++;
                  v45 |= (v48 & 0x7F) << v43;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  ++v47;
                  v14 = v44++ > 8;
                  if (v14)
                  {
                    goto LABEL_117;
                  }
                }
              }

LABEL_185:
              *(a1 + 24) = v45;
              goto LABEL_204;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 52) |= 2u;
              v59 = *(this + 1);
              v58 = *(this + 2);
              v60 = *this;
              if (v59 > 0xFFFFFFFFFFFFFFF5 || v59 + 10 > v58)
              {
                v125 = 0;
                v126 = 0;
                v63 = 0;
                v17 = v58 >= v59;
                v127 = v58 - v59;
                if (!v17)
                {
                  v127 = 0;
                }

                v128 = (v60 + v59);
                v129 = v59 + 1;
                while (1)
                {
                  if (!v127)
                  {
                    LODWORD(v63) = 0;
                    *(this + 24) = 1;
                    goto LABEL_191;
                  }

                  v130 = *v128;
                  *(this + 1) = v129;
                  v63 |= (v130 & 0x7F) << v125;
                  if ((v130 & 0x80) == 0)
                  {
                    break;
                  }

                  v125 += 7;
                  --v127;
                  ++v128;
                  ++v129;
                  v14 = v126++ > 8;
                  if (v14)
                  {
LABEL_137:
                    LODWORD(v63) = 0;
                    goto LABEL_191;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v63) = 0;
                }
              }

              else
              {
                v61 = 0;
                v62 = 0;
                v63 = 0;
                v64 = (v60 + v59);
                v65 = v59 + 1;
                while (1)
                {
                  *(this + 1) = v65;
                  v66 = *v64++;
                  v63 |= (v66 & 0x7F) << v61;
                  if ((v66 & 0x80) == 0)
                  {
                    break;
                  }

                  v61 += 7;
                  ++v65;
                  v14 = v62++ > 8;
                  if (v14)
                  {
                    goto LABEL_137;
                  }
                }
              }

LABEL_191:
              *(a1 + 20) = v63;
              goto LABEL_204;
            case 8:
              *(a1 + 52) |= 1u;
              v86 = *(this + 1);
              v85 = *(this + 2);
              v87 = *this;
              if (v86 > 0xFFFFFFFFFFFFFFF5 || v86 + 10 > v85)
              {
                v143 = 0;
                v144 = 0;
                v90 = 0;
                v17 = v85 >= v86;
                v145 = v85 - v86;
                if (!v17)
                {
                  v145 = 0;
                }

                v146 = (v87 + v86);
                v147 = v86 + 1;
                while (1)
                {
                  if (!v145)
                  {
                    LODWORD(v90) = 0;
                    *(this + 24) = 1;
                    goto LABEL_200;
                  }

                  v148 = *v146;
                  *(this + 1) = v147;
                  v90 |= (v148 & 0x7F) << v143;
                  if ((v148 & 0x80) == 0)
                  {
                    break;
                  }

                  v143 += 7;
                  --v145;
                  ++v146;
                  ++v147;
                  v14 = v144++ > 8;
                  if (v14)
                  {
LABEL_161:
                    LODWORD(v90) = 0;
                    goto LABEL_200;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v90) = 0;
                }
              }

              else
              {
                v88 = 0;
                v89 = 0;
                v90 = 0;
                v91 = (v87 + v86);
                v92 = v86 + 1;
                while (1)
                {
                  *(this + 1) = v92;
                  v93 = *v91++;
                  v90 |= (v93 & 0x7F) << v88;
                  if ((v93 & 0x80) == 0)
                  {
                    break;
                  }

                  v88 += 7;
                  ++v92;
                  v14 = v89++ > 8;
                  if (v14)
                  {
                    goto LABEL_161;
                  }
                }
              }

LABEL_200:
              *(a1 + 16) = v90;
              goto LABEL_204;
            case 9:
              *(a1 + 52) |= 0x20u;
              v28 = *(this + 1);
              v27 = *(this + 2);
              v29 = *this;
              if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
              {
                v107 = 0;
                v108 = 0;
                v32 = 0;
                v17 = v27 >= v28;
                v109 = v27 - v28;
                if (!v17)
                {
                  v109 = 0;
                }

                v110 = (v29 + v28);
                v111 = v28 + 1;
                while (1)
                {
                  if (!v109)
                  {
                    LODWORD(v32) = 0;
                    *(this + 24) = 1;
                    goto LABEL_182;
                  }

                  v112 = *v110;
                  *(this + 1) = v111;
                  v32 |= (v112 & 0x7F) << v107;
                  if ((v112 & 0x80) == 0)
                  {
                    break;
                  }

                  v107 += 7;
                  --v109;
                  ++v110;
                  ++v111;
                  v14 = v108++ > 8;
                  if (v14)
                  {
LABEL_109:
                    LODWORD(v32) = 0;
                    goto LABEL_182;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v32) = 0;
                }
              }

              else
              {
                v30 = 0;
                v31 = 0;
                v32 = 0;
                v33 = (v29 + v28);
                v34 = v28 + 1;
                while (1)
                {
                  *(this + 1) = v34;
                  v35 = *v33++;
                  v32 |= (v35 & 0x7F) << v30;
                  if ((v35 & 0x80) == 0)
                  {
                    break;
                  }

                  v30 += 7;
                  ++v34;
                  v14 = v31++ > 8;
                  if (v14)
                  {
                    goto LABEL_109;
                  }
                }
              }

LABEL_182:
              *(a1 + 36) = v32;
              goto LABEL_204;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            operator new();
          case 5:
            *(a1 + 52) |= 0x200u;
            v94 = *(this + 1);
            if (v94 >= *(this + 2))
            {
              v97 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v95 = v94 + 1;
              v96 = *(*this + v94);
              *(this + 1) = v95;
              v97 = v96 != 0;
            }

            *(a1 + 49) = v97;
            goto LABEL_204;
          case 6:
            *(a1 + 52) |= 0x100u;
            v36 = *(this + 1);
            if (v36 >= *(this + 2))
            {
              v39 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v37 = v36 + 1;
              v38 = *(*this + v36);
              *(this + 1) = v37;
              v39 = v38 != 0;
            }

            *(a1 + 48) = v39;
            goto LABEL_204;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 52) |= 0x40u;
            v50 = *(this + 1);
            v49 = *(this + 2);
            v51 = *this;
            if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v49)
            {
              v119 = 0;
              v120 = 0;
              v54 = 0;
              v17 = v49 >= v50;
              v121 = v49 - v50;
              if (!v17)
              {
                v121 = 0;
              }

              v122 = (v51 + v50);
              v123 = v50 + 1;
              while (1)
              {
                if (!v121)
                {
                  LODWORD(v54) = 0;
                  *(this + 24) = 1;
                  goto LABEL_188;
                }

                v124 = *v122;
                *(this + 1) = v123;
                v54 |= (v124 & 0x7F) << v119;
                if ((v124 & 0x80) == 0)
                {
                  break;
                }

                v119 += 7;
                --v121;
                ++v122;
                ++v123;
                v14 = v120++ > 8;
                if (v14)
                {
LABEL_129:
                  LODWORD(v54) = 0;
                  goto LABEL_188;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v54) = 0;
              }
            }

            else
            {
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = (v51 + v50);
              v56 = v50 + 1;
              while (1)
              {
                *(this + 1) = v56;
                v57 = *v55++;
                v54 |= (v57 & 0x7F) << v52;
                if ((v57 & 0x80) == 0)
                {
                  break;
                }

                v52 += 7;
                ++v56;
                v14 = v53++ > 8;
                if (v14)
                {
                  goto LABEL_129;
                }
              }
            }

LABEL_188:
            *(a1 + 40) = v54;
            goto LABEL_204;
          case 2:
            *(a1 + 52) |= 0x80u;
            v77 = *(this + 1);
            v76 = *(this + 2);
            v78 = *this;
            if (v77 > 0xFFFFFFFFFFFFFFF5 || v77 + 10 > v76)
            {
              v137 = 0;
              v138 = 0;
              v81 = 0;
              v17 = v76 >= v77;
              v139 = v76 - v77;
              if (!v17)
              {
                v139 = 0;
              }

              v140 = (v78 + v77);
              v141 = v77 + 1;
              while (1)
              {
                if (!v139)
                {
                  LODWORD(v81) = 0;
                  *(this + 24) = 1;
                  goto LABEL_197;
                }

                v142 = *v140;
                *(this + 1) = v141;
                v81 |= (v142 & 0x7F) << v137;
                if ((v142 & 0x80) == 0)
                {
                  break;
                }

                v137 += 7;
                --v139;
                ++v140;
                ++v141;
                v14 = v138++ > 8;
                if (v14)
                {
LABEL_153:
                  LODWORD(v81) = 0;
                  goto LABEL_197;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              v79 = 0;
              v80 = 0;
              v81 = 0;
              v82 = (v78 + v77);
              v83 = v77 + 1;
              while (1)
              {
                *(this + 1) = v83;
                v84 = *v82++;
                v81 |= (v84 & 0x7F) << v79;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v79 += 7;
                ++v83;
                v14 = v80++ > 8;
                if (v14)
                {
                  goto LABEL_153;
                }
              }
            }

LABEL_197:
            *(a1 + 44) = v81;
            goto LABEL_204;
          case 3:
            *(a1 + 52) |= 0x400u;
            v23 = *(this + 1);
            if (v23 >= *(this + 2))
            {
              v26 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v24 = v23 + 1;
              v25 = *(*this + v23);
              *(this + 1) = v24;
              v26 = v25 != 0;
            }

            *(a1 + 50) = v26;
            goto LABEL_204;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v156 = 0;
        return v156 & 1;
      }

LABEL_204:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_208:
  v156 = v4 ^ 1;
  return v156 & 1;
}

uint64_t sub_2964C9FA4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if ((v4 & 0x40) != 0)
  {
    v7 = *(result + 40);
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 52);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v3 + 44);
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 52) & 0x400) != 0)
  {
LABEL_4:
    v5 = *(v3 + 50);
    result = PB::Writer::write(this);
  }

LABEL_5:
  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v6 = *(v3 + 52);
  if ((v6 & 0x200) != 0)
  {
    v9 = *(v3 + 49);
    result = PB::Writer::write(this);
    v6 = *(v3 + 52);
    if ((v6 & 0x100) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v3 + 52) & 0x100) == 0)
  {
    goto LABEL_9;
  }

  v10 = *(v3 + 48);
  result = PB::Writer::write(this);
  v6 = *(v3 + 52);
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(v3 + 20);
  result = PB::Writer::writeVarInt(this);
  v6 = *(v3 + 52);
  if ((v6 & 1) == 0)
  {
LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(v3 + 16);
  result = PB::Writer::writeVarInt(this);
  v6 = *(v3 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = *(v3 + 36);
  result = PB::Writer::writeVarInt(this);
  v6 = *(v3 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    v15 = *(v3 + 28);
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 52) & 4) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_24:
  v14 = *(v3 + 32);
  result = PB::Writer::writeVarInt(this);
  v6 = *(v3 + 52);
  if ((v6 & 8) != 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_26:
  v16 = *(v3 + 24);

  return PB::Writer::writeVarInt(this);
}

BOOL sub_2964CA124(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 52);
  v5 = *(a2 + 52);
  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if ((v5 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x400) != 0)
  {
    if ((*(a2 + 52) & 0x400) == 0 || *(a1 + 50) != *(a2 + 50))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x400) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7 || !sub_2964CA2F4(v6, v7) && *(a1 + 8) | *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 52);
  v9 = *(a2 + 52);
  if ((v8 & 0x200) != 0)
  {
    if ((*(a2 + 52) & 0x200) == 0 || *(a1 + 49) != *(a2 + 49))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x200) != 0)
  {
    return 0;
  }

  if ((*(a1 + 52) & 0x100) != 0)
  {
    if ((*(a2 + 52) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 52) & 0x100) != 0)
  {
    return 0;
  }

  if ((v8 & 2) != 0)
  {
    if ((v9 & 2) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v9 & 2) != 0)
  {
    return 0;
  }

  if (v8)
  {
    if ((v9 & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v8 & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    return 0;
  }

  if ((v8 & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    return 0;
  }

  if ((v8 & 8) != 0)
  {
    if ((v9 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v9 & 8) != 0)
  {
    return 0;
  }

  result = (v9 & 4) == 0;
  if ((v8 & 4) == 0)
  {
    return result;
  }

  return (v9 & 4) != 0 && *(a1 + 24) == *(a2 + 24);
}

BOOL sub_2964CA2F4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

unint64_t sub_2964CA368(uint64_t a1)
{
  v2 = *(a1 + 52);
  if ((v2 & 0x40) == 0)
  {
    v3 = 0;
    if ((v2 & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*(a1 + 52) & 0x400) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 40);
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(a1 + 44);
  if ((*(a1 + 52) & 0x400) != 0)
  {
LABEL_4:
    v5 = *(a1 + 50);
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = sub_2964A3DE8(&v17, v6);
    v2 = *(a1 + 52);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
    if ((v2 & 0x200) == 0)
    {
LABEL_10:
      v8 = 0;
      if ((v2 & 0x100) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  v8 = *(a1 + 49);
  if ((v2 & 0x100) != 0)
  {
LABEL_11:
    v9 = *(a1 + 48);
    if ((v2 & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v10 = *(a1 + 20);
    if (v2)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
  if (v2)
  {
LABEL_13:
    v11 = *(a1 + 16);
    if ((v2 & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_14:
    v12 = *(a1 + 36);
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_15:
    v13 = *(a1 + 32);
    if ((v2 & 8) != 0)
    {
      goto LABEL_16;
    }

LABEL_25:
    v14 = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_24:
  v13 = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v14 = *(a1 + 28);
  if ((v2 & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  v15 = *(a1 + 24);
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

double sub_2964CA494(uint64_t a1)
{
  *a1 = &unk_2A1D54928;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_2964CA4C4(void **a1)
{
  *a1 = &unk_2A1D54928;
  v2 = a1 + 1;
  v3 = a1 + 4;
  sub_2964A3A00(&v3);
  v3 = v2;
  sub_2964A3A00(&v3);
  PB::Base::~Base(a1);
}

void sub_2964CA534(void **a1)
{
  sub_2964CA4C4(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964CA56C(uint64_t result, void *a2)
{
  *(result + 8) = 0u;
  *result = &unk_2A1D54928;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  v2 = a2[4];
  if (v2 != a2[5])
  {
    v3 = *v2;
    sub_2964CA61C();
  }

  v4 = a2[1];
  if (v4 != a2[2])
  {
    v5 = *v4;
    sub_2964CA770();
  }

  return result;
}

uint64_t sub_2964CA8C8(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sub_2964CA56C(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v11;
    v4 = v10;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v6;
    v11 = v3;
    sub_2964CA4C4(&v8);
  }

  return a1;
}

void *sub_2964CA934(void *result, void *a2)
{
  v2 = result[4];
  result[4] = a2[4];
  a2[4] = v2;
  v3 = result[5];
  result[5] = a2[5];
  a2[5] = v3;
  v4 = result[6];
  result[6] = a2[6];
  a2[6] = v4;
  v5 = result[1];
  result[1] = a2[1];
  a2[1] = v5;
  v6 = result[2];
  result[2] = a2[2];
  a2[2] = v6;
  v7 = result[3];
  result[3] = a2[3];
  a2[3] = v7;
  return result;
}

uint64_t sub_2964CA998(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1D54928;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  sub_2964A3AC0((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_2964A3AC0(v4);
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sub_2964CAA3C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964CA998(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v11;
    v4 = v10;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v6;
    v11 = v3;
    sub_2964CA4C4(&v8);
  }

  return a1;
}

uint64_t sub_2964CAAA8(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "enums");
  }

  v8 = a1[4];
  v9 = a1[5];
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, this, "messages");
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2964CAB94(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 2)
      {
        sub_2964CAECC();
      }

      if ((v9 >> 3) == 1)
      {
        sub_2964CAD80();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_2964CB018(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(result + 40);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v8 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::writeSubmessage(this, v9);
  }

  return result;
}

BOOL sub_2964CB084(uint64_t a1, uint64_t a2)
{
  result = sub_2964CB0DC((a1 + 32), a2 + 32);
  if (result)
  {

    return sub_2964CB15C((a1 + 8), a2 + 8);
  }

  return result;
}

BOOL sub_2964CB0DC(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_2964CCCD4(*v3, *v4);
    if (!result)
    {
      break;
    }

    ++v3;
    ++v4;
  }

  while (v3 != a1[1]);
  return result;
}

BOOL sub_2964CB15C(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_2964A3854(*v3, *v4);
    if (!result)
    {
      break;
    }

    ++v3;
    ++v4;
  }

  while (v3 != a1[1]);
  return result;
}

uint64_t sub_2964CB1DC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 ^= sub_2964CCE04(v5);
    }

    while (v2 != v3);
  }

  v7 = a1[1];
  v6 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v7++;
      v8 ^= sub_2964A3984(v9);
    }

    while (v7 != v6);
  }

  return v8 ^ v4;
}

void BestChoiceMetadataLoaderDelegate::BestChoiceMetadataLoaderDelegate(BestChoiceMetadataLoaderDelegate *this)
{
  *this = &unk_2A1D54978;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 30) = 0;
}

{
  *this = &unk_2A1D54978;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  *(this + 30) = 0;
}

void BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(BestChoiceMetadataLoaderDelegate *this)
{
  *this = &unk_2A1D54978;
  v2 = (this + 16);
  sub_2964B9B00(this + 80);
  sub_2964B9B00(this + 40);
  v3 = v2;
  sub_2964CBDA4(&v3);
  sub_2964C5D08(this);
}

{
  BestChoiceMetadataLoaderDelegate::~BestChoiceMetadataLoaderDelegate(this);

  JUMPOUT(0x29C25AE40);
}

void *BestChoiceMetadataLoaderDelegate::ensureCacheReady(void *this)
{
  if (!this[8])
  {
    v2 = this;
    v3 = (*(*this + 96))(this);
    v4 = *(*v2 + 104);

    return v4(v2, v3);
  }

  return this;
}

uint64_t BestChoiceMetadataLoaderDelegate::loadBaseMetadata(BestChoiceMetadataLoaderDelegate *this)
{
  v2 = (*(*this + 80))(this);
  sub_2964C6660(v2, v3, &v6);
  sub_2964CBE28(this + 40, v7);
  sub_2964CBE28(this + 80, v8);
  v4 = v6;
  *(this + 30) = v6;
  sub_2964B9B00(v8);
  sub_2964B9B00(v7);
  return v4;
}

void sub_2964CB67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, atomic_uint *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2964CB664);
  }

  sub_2964CBD04(&a16);
  _Unwind_Resume(a1);
}

uint64_t BestChoiceMetadataLoaderDelegate::readOverrideFile(uint64_t *a1, uint64_t a2, char *a3)
{
  if (a3[23] >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  sub_2964C6840(&v14, v5);
  if (v14)
  {
    v6 = *(&v14 + 1) == -1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_2964C6660(*(&v14 + 1), v15, &v11);
    if (v11 <= a2)
    {
      v9 = (*a1 + 128);
    }

    else
    {
      v7 = a1[3];
      if (v7 >= a1[4])
      {
        v8 = sub_2964CBF38(a1 + 2, &v14);
      }

      else
      {
        *v7 = v14;
        *(v7 + 16) = v15;
        *&v14 = 0;
        *(&v14 + 1) = -1;
        v15 = 0;
        v8 = v7 + 24;
      }

      a1[3] = v8;
      v9 = (*a1 + 120);
    }

    (*v9)(a1, a2, &v11);
    sub_2964B9B00(&v13);
    sub_2964B9B00(&v12);
  }

  return sub_2964B9C64(&v14);
}

uint64_t *BestChoiceMetadataLoaderDelegate::markOverrideFileUsed(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  for (i = *(a3 + 24); i; i = *i)
  {
    result = sub_2964CC198(v4 + 5, i + 4);
    if ((v6 & 1) == 0)
    {
      v7 = *(i + 4);
      result[3] = *(i + 3);
      result[4] = v7;
    }
  }

  for (j = *(a3 + 64); j; j = *j)
  {
    result = sub_2964CC198(v4 + 10, j + 4);
    if ((v9 & 1) == 0)
    {
      v10 = *(j + 4);
      result[3] = *(j + 3);
      result[4] = v10;
    }
  }

  return result;
}

uint64_t BestChoiceMetadataLoaderDelegate::pickMap(uint64_t a1, int a2)
{
  (*(*a1 + 88))(a1);
  v4 = a1 + 80;
  if (a2 != 1)
  {
    v4 = a1 + 40;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return a1 + 40;
  }
}

uint64_t *BestChoiceMetadataLoaderDelegate::readComponentData@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v9 = a3;
  (*(*a1 + 88))(a1);
  v7 = 40;
  if (a2 == 1)
  {
    v7 = 80;
  }

  result = sub_2964C4A28((a1 + v7), &v9);
  if (result)
  {
    return sub_2964C5E98(result[3], result[4], a4);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void BestChoiceMetadataLoaderDelegate::getComponentsAvailable(uint64_t a1@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  (*(*a1 + 88))(a1);
  v6 = 40;
  if (a2 == 1)
  {
    v6 = 80;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *(a1 + v6 + 16);
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = a3[2];
      if (v8 >= v9)
      {
        v10 = *a3;
        v11 = v8 - *a3;
        v12 = v11 >> 2;
        v13 = (v11 >> 2) + 1;
        if (v13 >> 62)
        {
          sub_2964A3CDC();
        }

        v14 = v9 - v10;
        if (v14 >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          sub_2964AC06C(a3, v15);
        }

        *(4 * v12) = *(v7 + 4);
        v8 = (4 * v12 + 4);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v8;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = *(v7 + 4);
        v8 += 4;
      }

      a3[1] = v8;
      v7 = *v7;
    }

    while (v7);
  }
}

void sub_2964CBB48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void BestChoiceMetadataLoaderDelegate::getMetricIndex(BestChoiceMetadataLoaderDelegate *this@<X0>, void *a2@<X8>)
{
  sub_2964C61C4(this, &v14);
  if (!v14)
  {
    operator new();
  }

  v4 = *(this + 2);
  v5 = *(this + 3);
  while (v4 != v5)
  {
    v6 = sub_2964C62F8(*(v4 + 8), *(v4 + 16));
    sub_2964C6220(v6, v7, &v12);
    if (v12)
    {
      sub_2964B9DF8(v14, v12);
    }

    if (v13)
    {
      sub_2964A5FB4(v13);
    }

    v4 += 24;
  }

  sub_2964B9FC8(v14);
  v8 = (*(*this + 80))(this);
  v10 = sub_2964C62F8(v8, v9);
  sub_2964C6220(v10, v11, a2);
  if (v15)
  {
    sub_2964A5FB4(v15);
  }
}

void sub_2964CBC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2964A5FB4(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2964CBCC0(uint64_t *a1, uint64_t a2, char a3)
{
  *a1 = 0;
  sub_2964D0A64(a1, a2, a3, 0);
  return a1;
}

atomic_uint **sub_2964CBD04(atomic_uint **a1)
{
  v2 = *a1;
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = sub_2964CBD58(v2);
    MEMORY[0x29C25AE40](v3, 0x1092C40C7A815C9);
  }

  return a1;
}

uint64_t sub_2964CBD58(uint64_t a1)
{
  sub_2964D0930((a1 + 48), (a1 + 56), v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_2964CBDA4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_2964B9C64(v4 - 24);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2964CBE28(uint64_t a1, uint64_t *a2)
{
  sub_2964CBECC(a1);
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

void *sub_2964CBECC(void *result)
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

uint64_t sub_2964CBF38(uint64_t *a1, uint64_t a2)
{
  v3 = 0xAAAAAAAAAAAAAAALL;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1;
  if (v7 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_2964A3CDC();
  }

  if (0x5555555555555556 * ((a1[2] - v4) >> 3) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - v4) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v4) >> 3) < 0x555555555555555)
  {
    v3 = v7;
  }

  v18 = a1;
  if (v3)
  {
    sub_2964CC07C(a1, v3);
  }

  v9 = 8 * (v6 >> 3);
  v15 = 0;
  v16 = v9;
  *(&v17 + 1) = 0;
  *v9 = *a2;
  *(v9 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = -1;
  *(a2 + 16) = 0;
  *&v17 = v9 + 24;
  v10 = v9 - v6;
  sub_2964CC0D4(a1, v4, v5, v9 - v6);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_2964CC148(&v15);
  return v14;
}

void sub_2964CC068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2964CC148(va);
  _Unwind_Resume(a1);
}

void sub_2964CC07C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2964A3CA8();
}

void sub_2964CC0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = -1;
      *(v6 + 16) = 0;
      v6 += 24;
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_2964B9C64(v5) + 24;
    }
  }
}

uint64_t sub_2964CC148(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_2964B9C64(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_2964CC198(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

double sub_2964CC3D0(uint64_t a1)
{
  *a1 = &unk_2A1D54A28;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_2964CC3FC(uint64_t a1)
{
  *a1 = &unk_2A1D54A28;
  v4 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_2964A3B00(v2, v3);
  }

  v5 = (a1 + 8);
  sub_2964A3A00(&v5);
  PB::Base::~Base(a1);
}

void sub_2964CC46C(uint64_t a1)
{
  sub_2964CC3FC(a1);

  JUMPOUT(0x29C25AE40);
}

uint64_t sub_2964CC4A4(uint64_t result, void *a2)
{
  *result = &unk_2A1D54A28;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  if (a2[4])
  {
    operator new();
  }

  v2 = a2[1];
  if (v2 != a2[2])
  {
    v3 = *v2;
    sub_2964CC58C();
  }

  return result;
}

uint64_t sub_2964CC6E4(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sub_2964CC4A4(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sub_2964CC3FC(v7);
  }

  return a1;
}

uint64_t sub_2964CC740(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1D54A28;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v8 = *(a1 + 32);
  v6 = (a1 + 32);
  v7 = v8;
  *v6 = v5;
  if (v8)
  {
    sub_2964A3B00(v6, v7);
  }

  sub_2964A3AC0(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sub_2964CC7D8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2964CC740(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sub_2964CC3FC(v7);
  }

  return a1;
}

uint64_t sub_2964CC834(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "fields");
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x2A1C68DE0](this);
}

uint64_t sub_2964CC8EC(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 2)
      {
        sub_2964CCB28();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_2964CCC74(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 32))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  return result;
}

BOOL sub_2964CCCD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (v5)
    {
      v6 = *(v4 + 23);
      if (v6 >= 0)
      {
        v7 = *(v4 + 23);
      }

      else
      {
        v7 = *(v4 + 8);
      }

      v8 = *(v5 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v5 + 8);
      }

      if (v7 == v8)
      {
        v10 = v6 >= 0 ? *(a1 + 32) : *v4;
        v11 = v9 >= 0 ? *(a2 + 32) : *v5;
        if (!memcmp(v10, v11, v7))
        {
          goto LABEL_16;
        }
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_16:

  return sub_2964CCD84((a1 + 8), a2 + 8);
}

BOOL sub_2964CCD84(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  do
  {
    result = sub_2964CA124(*v3, *v4);
    if (!result)
    {
      break;
    }

    ++v3;
    ++v4;
  }

  while (v3 != a1[1]);
  return result;
}

unint64_t sub_2964CCE04(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = sub_2964A3DE8(&v9, v2);
  }

  else
  {
    v3 = 0;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5++;
      v6 ^= sub_2964CA368(v7);
    }

    while (v5 != v4);
  }

  return v6 ^ v3;
}

void sub_2964CCE80(unint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = a2;
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = a1;
  do
  {
    std::string::push_back(v2, a0123456789abcd_0[v3 & 0xF]);
    v4 = v3 >= 0x10;
    v3 >>= 4;
  }

  while (v4);
  size = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v2->__r_.__value_.__l.__size_;
    if (!size)
    {
LABEL_14:
      std::string::push_back(v2, 48);
      return;
    }

    v2 = v2->__r_.__value_.__r.__words[0];
  }

  else if (!*(&v2->__r_.__value_.__s + 23))
  {
    goto LABEL_14;
  }

  v6 = (v2 + size - 1);
  if (v6 > v2)
  {
    v7 = v2->__r_.__value_.__r.__words + 1;
    do
    {
      v8 = *(v7 - 1);
      *(v7 - 1) = v6->__r_.__value_.__s.__data_[0];
      v6->__r_.__value_.__s.__data_[0] = v8;
      v6 = (v6 - 1);
      v4 = v7++ >= v6;
    }

    while (!v4);
  }
}

void sub_2964CCF40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CCF60(unint64_t a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a3, a2, 0);
  v5 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v6 = v5;
  v7 = (a3 + v5);
  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v7 = (a3->__r_.__value_.__r.__words[0] + a3->__r_.__value_.__l.__size_);
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  for (; v7 != v8; a1 >>= 4)
  {
    *(v7 - 1) = a0123456789abcd_0[a1 & 0xF];
    v7 = (v7 - 1);
  }
}

void sub_2964CCFE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CCFFC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v8 = *MEMORY[0x29EDCA608];
  v6 = a1 / 0x3E8;
  v4 = localtime(&v6);
  if (!strftime(v7, 0x50uLL, "%a %F %T", v4))
  {
    v7[0] = 0;
  }

  sub_2964CD0C8("%llu (%s.%03d)", a2, v2);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2964CD0C8(const char *a1@<X0>, uint64_t a2@<X8>, char a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::string::resize(a2, 0x17uLL, 0);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = vsnprintf(v6, v7, a1, &a3);
  v9 = v8;
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10 <= v8)
  {
    std::string::resize(a2, v8 + 1, 0);
    v11 = *(a2 + 23);
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    v9 = vsnprintf(v12, v13, a1, &a3);
  }

  std::string::resize(a2, v9, 0);
}

void sub_2964CD19C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CD1BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v8 = *MEMORY[0x29EDCA608];
  v6 = a1 + 978307200;
  v4 = localtime(&v6);
  if (!strftime(v7, 0x50uLL, "%a %F %T", v4))
  {
    v7[0] = 0;
  }

  sub_2964CD0C8("%llu (%s)", a2, v2);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2964CD26C(time_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v8 = *MEMORY[0x29EDCA608];
  v6 = a1;
  v4 = localtime(&v6);
  if (!strftime(v7, 0x50uLL, "%a %F %T", v4))
  {
    v7[0] = 0;
  }

  sub_2964CD0C8("%llu (%s)", a2, v2);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2964CD310(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v8 = *MEMORY[0x29EDCA608];
  v6 = a1 / 0x3B9ACA00;
  v4 = localtime(&v6);
  if (!strftime(v7, 0x50uLL, "%a %F %T", v4))
  {
    v7[0] = 0;
  }

  sub_2964CD0C8("%llu (%s.%09llu)", a2, v2);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2964CD3E0(__n128 *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  sub_2964CD434(a1, a2);
  sub_2964CD0C8("0x%x (%s)", a3, v3);
}

uint64_t sub_2964CD434(__n128 *a1, unsigned int a2)
{
  MetricFileMetadataHelper::getHandleForMetric(a1, a2, v3);
  if (v4 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  result = MetadataHandle::getField(v3);
  if (result)
  {
    result = *(result + 8);
    if (result)
    {
      if (*(result + 23) < 0)
      {
        return *result;
      }
    }
  }

  return result;
}

void sub_2964CD490(__n128 *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (sub_2964CD434(a1, a2))
  {
    sub_2964CD0C8("0x%x (%s metric)", a3, a2);
  }

  else
  {
    if (a2 - 520195 < 0xD)
    {
      v5 = off_29EE31F00[a2 - 520195];
    }

    sub_2964CD0C8("0x%x (%s)", a3, a2);
  }
}

void sub_2964CD524(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (a1 < 1000)
  {
    sub_2964CD0C8("%lldns", a2, a1);
  }

  else
  {
    sub_2964CD644(((a1 / 0x3B9ACA00) - 60 * (a1 / 0xDF8475800)) | ((a1 % 0x3B9ACA00) << 32), (a1 / 0x34630B8A000) | ((a1 / 0xDF8475800 - 60 * (a1 / 0x34630B8A000)) << 32), &__p);
    sub_2964CD0C8("%lldns (%s)", a2, v2);
    if (v5 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2964CD628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2964CD644(unint64_t __val@<X1>, unint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v3 = __val;
  v30 = *MEMORY[0x29EDCA608];
  v5 = HIDWORD(a2);
  v6 = HIDWORD(__val);
  if (HIDWORD(a2))
  {
    v7 = 0;
  }

  else
  {
    v7 = a2 == 0;
  }

  v8 = !v7;
  if (v7 && !__val)
  {
    v9 = v6 - 1000000 * (HIDWORD(__val) / 0xF4240);
    v10 = v9 / 1000;
    v11 = v9 % 1000;
    v12 = v9 + 999;
    if (__val >= 0xF424000000000)
    {
      if (v12 <= 0x7CE && v11 == 0)
      {
        sub_2964CD0C8("%lldms", a3, HIDWORD(__val) / 0xF4240);
      }

      else
      {
        sub_2964CD0C8("%lld.%03lldms", a3, HIDWORD(__val) / 0xF4240);
      }
    }

    else if (v12 >= 0x7CF)
    {
      if (v11)
      {
        sub_2964CD0C8("%lld.%03lldus", a3, v10);
      }

      else
      {
        sub_2964CD0C8("%lldus", a3, v10);
      }
    }

    else
    {
      sub_2964CD0C8("%lldns", a3, v11);
    }

    goto LABEL_65;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (!a2)
  {
    if (!v5)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  std::to_string(&v28, a2);
  v13 = std::string::append(&v28, "h");
  v14 = v13->__r_.__value_.__r.__words[0];
  v29.__r_.__value_.__r.__words[0] = v13->__r_.__value_.__l.__size_;
  *(v29.__r_.__value_.__r.__words + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  v16 = v29.__r_.__value_.__r.__words[0];
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 15) = *(v29.__r_.__value_.__r.__words + 7);
  *(a3 + 23) = v15;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v5 || v6 || v3)
  {
LABEL_28:
    std::to_string(&v29, v5);
    v18 = std::string::append(&v29, "m");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v28;
    }

    else
    {
      v20 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    std::string::append(a3, v20, size);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
      if (v3)
      {
LABEL_38:
        if (!v6)
        {
          std::to_string(&v28, v3);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v28;
          }

          else
          {
            v22 = v28.__r_.__value_.__r.__words[0];
          }

          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = v28.__r_.__value_.__l.__size_;
          }

          std::string::append(a3, v22, v23);
          if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v28.__r_.__value_.__l.__data_);
          }

          std::string::append(a3, "s");
          goto LABEL_65;
        }

        goto LABEL_56;
      }

LABEL_52:
      if (v6)
      {
        v24 = v8;
      }

      else
      {
        v24 = 0;
      }

      if ((v24 & 1) == 0)
      {
        goto LABEL_65;
      }

LABEL_56:
      sub_2964CD0C8("%u.%01us", &v28, v3);
      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v28;
      }

      else
      {
        v25 = v28.__r_.__value_.__r.__words[0];
      }

      if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v28.__r_.__value_.__l.__size_;
      }

      std::string::append(a3, v25, v26);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      goto LABEL_65;
    }

LABEL_37:
    if (v3)
    {
      goto LABEL_38;
    }

    goto LABEL_52;
  }

LABEL_65:
  v27 = *MEMORY[0x29EDCA608];
}