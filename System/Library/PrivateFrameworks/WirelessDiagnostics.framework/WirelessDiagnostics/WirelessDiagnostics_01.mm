void platform::getCustomConfigsPaths(void *a1@<X8>)
{
  v14[1] = *MEMORY[0x277D85DE8];
  sub_2742F6A8C(v7, "/var/wireless/awdd");
  ctu::path_join_impl();
  v9 = 1;
  v10 = *v7;
  v11 = v8;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  sub_2742F6A8C(__p, "/AppleInternal/Library/awdd");
  ctu::path_join_impl();
  v12 = 0;
  v13 = *__p;
  v14[0] = v6;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  sub_2742F6DB8(a1, &v9, 2);
  for (i = 0; i != -8; i -= 4)
  {
    if (SHIBYTE(v14[i]) < 0)
    {
      operator delete(v14[i - 2]);
    }
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2742F69BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = v28 + 40;
  v31 = -64;
  while (1)
  {
    if (*(v30 + 23) < 0)
    {
      operator delete(*v30);
    }

    v30 -= 32;
    v31 += 32;
    if (!v31)
    {
      if (a15 < 0)
      {
        operator delete(__p);
      }

      if (a21 < 0)
      {
        operator delete(a16);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

_BYTE *sub_2742F6A8C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2742EB490();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t platform::getLogOutputPathInHomeDir@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_2742ECE78(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return ctu::path_join_impl();
}

void sub_2742F6B9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void platform::getExtraLogPaths(uint64_t a1@<X8>)
{
  v3 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  do
  {
    sub_2742F6A8C(v22, "/var");
    v4 = off_279ED6CC8[v3];
    ctu::path_join_impl();
    platform::getLogOutputPathInHomeDir(v22, __p);
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v6 >= v5)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
      v9 = v8 + 1;
      if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_2742EAB3C();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v9;
      }

      v24[4] = a1;
      if (v11)
      {
        sub_2742F7288(a1, v11);
      }

      v12 = 24 * v8;
      v13 = *__p;
      *(v12 + 16) = v21;
      *v12 = v13;
      __p[1] = 0;
      v21 = 0;
      __p[0] = 0;
      v14 = 24 * v8 + 24;
      v15 = *(a1 + 8) - *a1;
      v16 = 24 * v8 - v15;
      memcpy((v12 - v15), *a1, v15);
      v17 = *a1;
      *a1 = v16;
      *(a1 + 8) = v14;
      v18 = *(a1 + 16);
      *(a1 + 16) = 0;
      v24[2] = v17;
      v24[3] = v18;
      v24[0] = v17;
      v24[1] = v17;
      sub_2742F72E0(v24);
      v19 = SHIBYTE(v21);
      *(a1 + 8) = v14;
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v7 = *__p;
      *(v6 + 16) = v21;
      *v6 = v7;
      *(a1 + 8) = v6 + 24;
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }

    ++v3;
  }

  while (v3 != 3);
}

void sub_2742F6D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_2742F71E4(&a16);
  _Unwind_Resume(a1);
}

void *sub_2742F6DB8(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_2742F6E38(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_2742F6E38(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_2742F6EBC(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_2742F7064();
  }

  return result;
}

uint64_t *sub_2742F6EBC(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_2742F7100(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2742F711C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_2742F711C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_2742F7180(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_2742F7180(a1, *a2);
    sub_2742F7180(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_2742F71E4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2742F7238(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2742F7238(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_2742F7288(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2742ECF1C();
}

uint64_t sub_2742F72E0(uint64_t a1)
{
  sub_2742F7318(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2742F7318(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

double awd::SimpleMetricHelper::SimpleMetricHelper(awd::SimpleMetricHelper *this, int a2)
{
  *this = a2;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = a2;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t *awd::SimpleMetricHelper::setConfiguration(awd::SimpleMetricHelper *this, const awd::profile::ComponentConfiguration *a2)
{
  v3 = (this + 8);
  v4 = *(this + 1);
  *(this + 2) = 1;
  *(this + 2) = v4;
  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = *(a2 + 1);
    v24 = v6 + 8 * v5;
    do
    {
      v7 = *(*v6 + 48);
      if (v7)
      {
        v8 = *(*v6 + 40);
        v9 = 8 * v7;
        do
        {
          v10 = *(*v8 + 8);
          if (v10 == 0x20000)
          {
            *(this + 5) = 1;
          }

          else
          {
            v11 = *(this + 3);
            if (v4 >= v11)
            {
              v12 = *v3;
              v13 = v4 - *v3;
              v14 = (v13 >> 2) + 1;
              if (v14 >> 62)
              {
                sub_2742EAB3C();
              }

              v15 = v11 - v12;
              if (v15 >> 1 > v14)
              {
                v14 = v15 >> 1;
              }

              v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
              v17 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v16)
              {
                v17 = v14;
              }

              if (v17)
              {
                sub_2742ECF9C(v3, v17);
              }

              v18 = (4 * (v13 >> 2));
              *v18 = v10;
              v4 = (v18 + 1);
              memcpy(0, v12, v13);
              v19 = *(this + 1);
              *(this + 1) = 0;
              *(this + 2) = v4;
              *(this + 3) = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            else
            {
              *v4 = v10;
              v4 += 4;
            }

            *(this + 2) = v4;
          }

          v8 += 8;
          v9 -= 8;
        }

        while (v9);
      }

      v6 += 8;
    }

    while (v6 != v24);
    v20 = *v3;
  }

  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v21 = sub_2742F7BB8(*(this + 1), *(this + 2));
  if (v21 != *(this + 2))
  {
    v22 = *(this + 2);
    *(this + 2) = v21;
  }

  return awd::SimpleMetricHelper::filterBufferedMetrics(this);
}

uint64_t *awd::SimpleMetricHelper::filterBufferedMetrics(awd::SimpleMetricHelper *this)
{
  v4 = *(this + 4);
  v3 = *(this + 5);
  v2 = this + 32;
  if (v4 != v3)
  {
    do
    {
      v5 = *v4;
      if ((awd::SimpleMetricHelper::shouldCreateMetric(this, **v4) & 1) == 0)
      {
        *v4 = 0;
        sub_2742F0E58(v4, v5);
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = *(this + 4);
    v3 = *(this + 5);
  }

  while (1)
  {
    if (v4 == v3)
    {
      v4 = v3;
      goto LABEL_10;
    }

    if (!*v4)
    {
      break;
    }

    ++v4;
  }

  if (v4 != v3)
  {
    v7 = (v4 + 1);
    if (v4 + 1 != v3)
    {
      do
      {
        v8 = *v7;
        if (*v7)
        {
          *v7 = 0;
          v9 = *v4;
          *v4 = v8;
          if (v9)
          {
            sub_2742F0E58(v4, v9);
          }

          ++v4;
        }

        ++v7;
      }

      while (v7 != v3);
      v3 = *(this + 5);
    }
  }

LABEL_10:

  return sub_2742F766C(v2, v4, v3);
}

uint64_t *sub_2742F766C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    sub_2742F6574(&v7, a3, *(a1 + 8), a2);
    sub_2742F62E0(a1, v5);
  }

  return a2;
}

void sub_2742F7794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  awd::metrics::SimpleMetric::~SimpleMetric(va);
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    sub_2742F0E58(v2, v4);
  }

  _Unwind_Resume(a1);
}

void sub_2742F78B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  awd::metrics::SimpleMetric::~SimpleMetric(va);
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    sub_2742F0E58(v2, v4);
  }

  _Unwind_Resume(a1);
}

void sub_2742F79DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  awd::metrics::SimpleMetric::~SimpleMetric(va);
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    sub_2742F0E58(v2, v4);
  }

  _Unwind_Resume(a1);
}

uint64_t awd::SimpleMetricHelper::makeSimpleMetric@<X0>(awd::SimpleMetricHelper *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  Metric = awd::SimpleMetricHelper::shouldCreateMetric(a1, a2);
  if (Metric)
  {
    awd::getAWDTimestamp(Metric);
    operator new();
  }

  return awd::SimpleMetricHelper::maybeBufferMetric(a1, a3);
}

void sub_2742F7B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *v10;
  *v10 = 0;
  if (v12)
  {
    sub_2742F0E58(v10, v12);
  }

  _Unwind_Resume(exception_object);
}

__n128 awd::SimpleMetricHelper::takeBufferedMetrics@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[2];
  *a2 = result;
  a2[1].n128_u64[0] = this[3].n128_u64[0];
  this[2].n128_u64[1] = 0;
  this[3].n128_u64[0] = 0;
  this[2].n128_u64[0] = 0;
  return result;
}

int *sub_2742F7BB8(int *a1, int *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

uint64_t awd::AWDTriggerMessage::AWDTriggerMessage(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5)
{
  *result = &unk_288351D30;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  return result;
}

{
  *result = &unk_288351D30;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  return result;
}

uint64_t awd::AWDTriggerMessage::AWDTriggerMessage(uint64_t a1, xpc_object_t *a2)
{
  *a1 = &unk_288351D30;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468])
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "AWDMessageComponentId");
    *(a1 + 16) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggerTimestampId");
    *(a1 + 28) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggerId");
    *(a1 + 32) = xpc_dictionary_get_int64(*a2, "AWDMessageSubmisssionId");
    *(a1 + 24) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggeringComponentId");
  }

  return a1;
}

void awd::AWDTriggerMessage::createXpcMessage(awd::AWDTriggerMessage *this@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "AWDMessageType", 6);
    xpc_dictionary_set_int64(v5, "AWDMessageComponentId", *(this + 2));
    xpc_dictionary_set_int64(v5, "AWDMessageTriggerTimestampId", *(this + 2));
    xpc_dictionary_set_int64(v5, "AWDMessageSubmisssionId", *(this + 8));
    xpc_dictionary_set_int64(v5, "AWDMessageTriggerId", *(this + 7));
    xpc_dictionary_set_int64(v5, "AWDMessageTriggeringComponentId", *(this + 6));
    *a2 = v5;
    if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

void sub_2742F7EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F7F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F7FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F8020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void AWDPostSimpleMetricWithString(uint64_t a1, uint64_t a2)
{
  sub_2742E8B80(&v7);
  v4 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_2742ECE78(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  sub_2743083D8(v4, a1, __p);
}

void sub_2742F80CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_2742E8DB8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F82F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  v16 = a10;
  a10 = 0;
  if (v16)
  {
    sub_2742F0E58(&a10, v16);
  }

  if (a12)
  {
    sub_2742E8DB8(a12);
  }

  v17 = a14;
  a14 = 0;
  if (v17)
  {
    sub_2742F0E58(&a14, v17);
  }

  _Unwind_Resume(a1);
}

void sub_2742F8490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  v15 = a10;
  a10 = 0;
  if (v15)
  {
    sub_2742F0E58(&a10, v15);
  }

  if (a12)
  {
    sub_2742E8DB8(a12);
  }

  v16 = a14;
  a14 = 0;
  if (v16)
  {
    sub_2742F0E58(&a14, v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742F85F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  v15 = a10;
  a10 = 0;
  if (v15)
  {
    sub_2742F0E58(&a10, v15);
  }

  if (a12)
  {
    sub_2742E8DB8(a12);
  }

  v16 = a14;
  a14 = 0;
  if (v16)
  {
    sub_2742F0E58(&a14, v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t awd::AWDRegisterTriggerMessage::AWDRegisterTriggerMessage(uint64_t result, int a2, int a3, void *a4, uint64_t a5)
{
  *result = &unk_288351D70;
  *(result + 16) = *a4;
  v5 = a4 + 1;
  v6 = a4[1];
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 24) = v6;
  v7 = result + 24;
  v8 = a4[2];
  *(result + 32) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *a4 = v5;
    *v5 = 0;
    a4[2] = 0;
  }

  else
  {
    *(result + 16) = v7;
  }

  *(result + 40) = a5;
  return result;
}

{
  *result = &unk_288351D70;
  *(result + 16) = *a4;
  v5 = a4 + 1;
  v6 = a4[1];
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 24) = v6;
  v7 = result + 24;
  v8 = a4[2];
  *(result + 32) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *a4 = v5;
    *v5 = 0;
    a4[2] = 0;
  }

  else
  {
    *(result + 16) = v7;
  }

  *(result + 40) = a5;
  return result;
}

uint64_t awd::AWDRegisterTriggerMessage::_metricCountsApplier(awd::AWDRegisterTriggerMessage *this, unint64_t a2, void *a3)
{
  if (MEMORY[0x2743EA150](a3) == MEMORY[0x277D86468])
  {
    int64 = xpc_dictionary_get_int64(a3, "AWDMessageMetricCountsArrayMetricId");
    v5 = xpc_dictionary_get_int64(a3, "AWDMessageMetricCountsArrayCount");
    p_int64 = &int64;
    *(sub_2742F8CD4(this + 16, &int64) + 8) = v5;
  }

  return 1;
}

uint64_t awd::AWDRegisterTriggerMessage::AWDRegisterTriggerMessage(uint64_t a1, xpc_object_t *a2)
{
  *(a1 + 24) = 0;
  *a1 = &unk_288351D70;
  *(a1 + 16) = a1 + 24;
  *(a1 + 32) = 0;
  if (MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468])
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "AWDMessageComponentId");
    *(a1 + 12) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggerId");
    value = xpc_dictionary_get_value(*a2, "AWDMessageMetricCountsArray");
    applier[0] = MEMORY[0x277D85DD0];
    applier[1] = 0x40000000;
    applier[2] = sub_2742F8910;
    applier[3] = &unk_279ED6D18;
    applier[4] = a1;
    xpc_array_apply(value, applier);
    *(a1 + 40) = xpc_dictionary_get_int64(*a2, "AWDMessageLongesttime");
  }

  return a1;
}

void awd::AWDRegisterTriggerMessage::createXpcMessage(awd::AWDRegisterTriggerMessage *this@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "AWDMessageType", 5);
    xpc_dictionary_set_int64(v5, "AWDMessageComponentId", *(this + 2));
    xpc_dictionary_set_int64(v5, "AWDMessageTriggerId", *(this + 3));
    xpc_dictionary_set_int64(v5, "AWDMessageLongesttime", *(this + 5));
    v6 = xpc_array_create(0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x2743EA150](v6) == MEMORY[0x277D86440])
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    v8 = *(this + 2);
    if (v8 != (this + 24))
    {
      v9 = MEMORY[0x277D86468];
      do
      {
        v10 = xpc_dictionary_create(0, 0, 0);
        if (v10 || (v10 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x2743EA150](v10) == v9)
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

        xpc_release(v10);
        xpc_dictionary_set_int64(v11, "AWDMessageMetricCountsArrayMetricId", *(v8 + 7));
        xpc_dictionary_set_int64(v11, "AWDMessageMetricCountsArrayCount", *(v8 + 8));
        xpc_array_append_value(v7, v11);
        xpc_release(v11);
        v12 = *(v8 + 1);
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = *(v8 + 2);
            v14 = *v13 == v8;
            v8 = v13;
          }

          while (!v14);
        }

        v8 = v13;
      }

      while (v13 != (this + 24));
    }

    xpc_dictionary_set_value(v5, "AWDMessageMetricCountsArray", v7);
    *a2 = v5;
    if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
    xpc_release(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

uint64_t sub_2742F8C1C(uint64_t a1)
{
  *a1 = &unk_288351D70;
  sub_2742F0CA0(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_2742F8C68(uint64_t a1)
{
  *a1 = &unk_288351D70;
  sub_2742F0CA0(a1 + 16, *(a1 + 24));

  JUMPOUT(0x2743E9A90);
}

uint64_t *sub_2742F8CD4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
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

uint64_t awd::AWDTriggerFilter::AWDTriggerFilter(ctu::OsLogLogger *a1, uint64_t a2, int a3, void *a4)
{
  result = ctu::OsLogLogger::OsLogLogger(a1, "com.apple.awd.framework", "trigger");
  *(result + 8) = a3;
  v7 = a4[1];
  *(result + 16) = *a4;
  *(result + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 48) = 0;
  *(result + 40) = 0;
  *(result + 32) = result + 40;
  return result;
}

uint64_t awd::AWDTriggerFilter::isMetricSetAsTrigger(awd::AWDTriggerFilter *this, unsigned int a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(v2 + 8);
    if (v3 <= a2)
    {
      break;
    }

LABEL_5:
    v2 = *v2;
    if (!v2)
    {
      return 0;
    }
  }

  if (v3 < a2)
  {
    ++v2;
    goto LABEL_5;
  }

  return 1;
}

uint64_t awd::AWDTriggerFilter::shouldSubmitMetricAsTrigger(awd::AWDTriggerFilter *this, unsigned int a2)
{
  v4 = *(this + 5);
  v2 = this + 40;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 8);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 8) > a2)
  {
    return 0;
  }

  if (*(v5 + 22))
  {
    return 2;
  }

  return 1;
}

BOOL awd::AWDTriggerFilter::evaluateRandomSamplingForTrigger(awd::AWDTriggerFilter *this, unsigned int a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (!v2)
  {
    goto LABEL_16;
  }

  v5 = (this + 40);
  do
  {
    v6 = v2[8];
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v2;
    }

    v2 = *&v2[2 * v8];
  }

  while (v2);
  if (v5 != (this + 40) && v5[8] <= a2 && v5[22])
  {
    PRNGenerator::get(&v16);
    PRN10000 = PRNGenerator::generatePRN10000(v16);
    if (v17[0])
    {
      sub_2742E8DB8(v17[0]);
    }

    v10 = v5[22];
    v11 = PRN10000 <= v10;
    v12 = *this;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = "is skip";
      if (PRN10000 <= v10)
      {
        v13 = "is keep";
      }

      LODWORD(v16) = 67109378;
      HIDWORD(v16) = a2;
      LOWORD(v17[0]) = 2080;
      *(v17 + 2) = v13;
      _os_log_impl(&dword_2742E7000, v12, OS_LOG_TYPE_INFO, "client.trigger:#I Random sample for 0x%x %s", &v16, 0x12u);
    }
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2742F8FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  _Unwind_Resume(exception_object);
}

void awd::AWDTriggerFilter::setConfiguration(uint64_t a1, uint64_t *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 40);
  v32 = a1 + 32;
  sub_2742F9950(a1 + 32, *(a1 + 40));
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  v5 = *(v4 - 2);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_32;
  }

  v6 = std::__shared_weak_count::lock(v5);
  v7 = v6;
  if (!v6 || (v31 = *(a1 + 16)) == 0)
  {
LABEL_32:
    v28 = *a1;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2742E7000, v28, OS_LOG_TYPE_DEFAULT, "client.trigger:#E Unable to set configuration because AWDServerFacade is no longer valid.", buf, 2u);
    }

    goto LABEL_34;
  }

  v30 = v6;
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v8 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 8);
    v10 = *(*a2 + 16);
    *buf = 67109376;
    *&buf[4] = v9;
    v42 = 1024;
    v43 = v10;
    _os_log_impl(&dword_2742E7000, v8, OS_LOG_TYPE_DEFAULT, "client.trigger:#N CCFG for cid 0x%x has # of profiles: %d", buf, 0xEu);
  }

  v11 = *a2;
  v12 = *(*a2 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(v11 + 8);
    v33 = &v14[v12];
    do
    {
      v15 = *v14;
      v38 = 0;
      v16 = *(v15 + 132);
      if (v16)
      {
        v38 = *(v15 + 8);
        if ((v16 & 8) != 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v17 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2742E7000, v17, OS_LOG_TYPE_DEFAULT, "client.trigger:#E Got profile with no id!", buf, 2u);
          v16 = *(v15 + 132);
        }

        if ((v16 & 8) != 0)
        {
LABEL_14:
          v37 = *(v15 + 32);
          *buf = &v37;
          v18 = sub_2742F9A04(v32, &v37);
          sub_2742F9428(v18 + 5, &v38);
          if ((*(v15 + 133) & 2) != 0)
          {
            *(v18 + 22) = *(v15 + 80);
          }

          v19 = *(v15 + 48);
          if (v19)
          {
            v20 = *(v15 + 40);
            v21 = 8 * v19;
            do
            {
              v22 = *v20;
              v23 = *(*v20 + 128);
              if (v23)
              {
                v36 = *(v22 + 8);
                if ((v23 & 0x20) != 0)
                {
                  v24 = *(v22 + 28);
                  *buf = &v36;
                  v25 = sub_2742F8CD4(&v39, &v36);
                  *(v25 + 8) += v24;
                  v23 = *(v22 + 128);
                }

                if ((v23 & 0x80) != 0 && v13 <= *(v22 + 36))
                {
                  v13 = *(v22 + 36);
                }

                if ((v23 & 0x100) != 0 && *(v22 + 40) == 1)
                {
                  sub_2742F9428(v18 + 8, &v36);
                }
              }

              ++v20;
              v21 -= 8;
            }

            while (v21);
          }

          v26 = *(a1 + 8);
          v27 = v37;
          sub_2742F9B50(v35, &v39);
          awd::AWDRegisterTriggerMessage::AWDRegisterTriggerMessage(buf, v26, v27, v35, v13);
          sub_2742F0CA0(v35, v35[1]);
          awd::AWDRegisterTriggerMessage::createXpcMessage(buf, &object);
          awd::AWDServerFacade::sendMessage(v31, &object);
        }
      }

      ++v14;
    }

    while (v14 != v33);
  }

  sub_2742F0CA0(&v39, v40[0]);
  v7 = v30;
LABEL_34:
  if (v7)
  {
    sub_2742E8DB8(v7);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2742F938C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_2742F0CA0(&a14, a15);
  sub_2742F0CA0(&a19, a20);
  sub_2742E8DB8(a9);
  _Unwind_Resume(a1);
}

void sub_2742F9428(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2742EAB3C();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2742ECF9C(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *awd::AWDTriggerFilter::profileIdForTriggerId@<X0>(awd::AWDTriggerFilter *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(this + 5);
  result = (this + 40);
  v4 = v5;
  if (v5)
  {
    v7 = result;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != result && *(v7 + 8) <= a2 && v7 + 5 != a3)
    {
      return sub_2742F9E70(a3, v7[5], v7[6], (v7[6] - v7[5]) >> 2);
    }
  }

  return result;
}

void sub_2742F9584(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void awd::AWDTriggerFilter::getAllTriggers(awd::AWDTriggerFilter *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 4);
  v3 = this + 40;
  if (v2 != this + 40)
  {
    do
    {
      sub_2742F9428(a2, v2 + 8);
      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_2742F9624(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void awd::AWDTriggerFilter::getAllQueriableMetrics(awd::AWDTriggerFilter *this@<X0>, void *a2@<X8>)
{
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v3 = *(this + 4);
  v4 = this + 40;
  if (v3 == this + 40)
  {
    v10 = v12;
  }

  else
  {
    do
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 9);
      while (v5 != v6)
      {
        sub_2742F9FD8(&v11, v12, v5++);
      }

      v7 = *(v3 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
    v10 = v11;
  }

  sub_2742FA070(a2, v10, v12);
  sub_2742F0CA0(&v11, v12[0]);
}

void *awd::AWDTriggerFilter::getQueriableMetricsForTrigger@<X0>(awd::AWDTriggerFilter *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(this + 5);
  result = (this + 40);
  v4 = v5;
  if (v5)
  {
    v7 = result;
    do
    {
      v8 = *(v4 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v4;
      }

      v4 = *(v4 + 8 * v10);
    }

    while (v4);
    if (v7 != result && *(v7 + 8) <= a2)
    {
      return sub_2742FA1A0(a3, v7[8], v7[9], (v7[9] - v7[8]) >> 2);
    }
  }

  return result;
}

void sub_2742F97AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void awd::AWDTriggerFilter::debugLog(NSObject **this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_INFO))
  {
    v3 = *(this + 2);
    *buf = 67109120;
    v15 = v3;
    _os_log_impl(&dword_2742E7000, v2, OS_LOG_TYPE_INFO, "client.trigger:#I  The following are Trigger IDs that component 0x%x expects:", buf, 8u);
  }

  v4 = this[4];
  if (v4 != (this + 5))
  {
    do
    {
      v5 = *(v4 + 5);
      v6 = *(v4 + 6);
      while (v5 != v6)
      {
        v7 = *this;
        if (os_log_type_enabled(*this, OS_LOG_TYPE_INFO))
        {
          v8 = *v5;
          v9 = *(v4 + 8);
          *buf = 67109376;
          v15 = v8;
          v16 = 1024;
          v17 = v9;
          _os_log_impl(&dword_2742E7000, v7, OS_LOG_TYPE_INFO, "client.trigger:#I \t- PROFILE 0x%x TRIGGER 0x%x", buf, 0xEu);
        }

        ++v5;
      }

      v10 = *(v4 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != (this + 5));
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2742F9950(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2742F9950(a1, *a2);
    sub_2742F9950(a1, a2[1]);
    sub_2742F99AC(a2 + 4);

    operator delete(a2);
  }
}

void sub_2742F99AC(void *a1)
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
}

uint64_t *sub_2742F9A04(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

uint64_t sub_2742F9B04(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2742F99AC(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_2742F9B50(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_2742F9BA8(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_2742F9BA8(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_2742F9C30(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_2742F9C30(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *sub_2742F9CC8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_2742F9CC8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void *sub_2742F9E70(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2742F9F9C(v6, v10);
    }

    sub_2742EAB3C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_2742F9F9C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    sub_2742ECF9C(a1, a2);
  }

  sub_2742EAB3C();
}

uint64_t sub_2742F9FD8(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *sub_2742F9CC8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_2742FA070(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  sub_2742FA0F4(a1, a2, a3, v4);
  return a1;
}

uint64_t sub_2742FA0F4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2742F9F9C(result, a4);
  }

  return result;
}

void sub_2742FA184(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2742FA1A0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2742F9F9C(v6, v10);
    }

    sub_2742EAB3C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sGetTimestampFieldForMetricId(int a1)
{
  v2 = HIWORD(a1);
  if (HIWORD(a1) > 0x10u)
  {
    if (HIWORD(a1) > 0x16u)
    {
      switch(v2)
      {
        case 0x17u:
          result = 2;
          if (a1 > 1508098)
          {
            if ((a1 - 1508099) < 2 || (a1 - 1508355) < 2)
            {
              return result;
            }

            v11 = a1 - 1508611;
          }

          else
          {
            if ((a1 - 1507329) < 2 || (a1 - 1507587) < 2)
            {
              return result;
            }

            v11 = a1 - 1507843;
          }

          break;
        case 0x18u:
          result = 2;
          if (a1 <= 1573632)
          {
            if ((a1 - 1573121) < 2)
            {
              return result;
            }

            v11 = a1 - 1573377;
          }

          else
          {
            if ((a1 - 1573633) < 2 || (a1 - 1573889) < 2)
            {
              return result;
            }

            v11 = a1 - 1574145;
          }

          break;
        case 0x22u:
          if ((a1 - 2228992) > 5)
          {
            if (a1 == 2229249)
            {
              return 4;
            }

            return 1;
          }

          if (((1 << a1) & 0xC) != 0)
          {
            v5 = 14;
          }

          else
          {
            v5 = 22;
          }

          if (((1 << a1) & 3) != 0)
          {
            return 17;
          }

          else
          {
            return v5;
          }

        default:
          return 1;
      }

      if (v11 < 2)
      {
        return result;
      }

      return 1;
    }

    if (v2 == 17)
    {
      v3 = a1 - 1114113;
      if ((a1 - 1114113) < 0x30)
      {
        v4 = &unk_274321090;
        return v4[v3];
      }

      return 1;
    }

    if (v2 != 19)
    {
      return 1;
    }

    if (((a1 - 1245185) & 0xFFFFFFE8) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (HIWORD(a1) > 8u)
    {
      if (v2 != 9)
      {
        if (v2 != 13)
        {
          if (v2 == 16)
          {
            v3 = a1 - 1048579;
            if ((a1 - 1048579) < 0x28)
            {
              v4 = &unk_274320FF0;
              return v4[v3];
            }
          }

          return 1;
        }

        if (a1 == 851968)
        {
          v8 = 8;
        }

        else
        {
          v8 = 1;
        }

        v9 = a1 == 851969;
        v10 = 6;
        goto LABEL_45;
      }

      v3 = a1 - 589828;
      if ((a1 - 589828) < 4)
      {
        v4 = &unk_274320FE0;
        return v4[v3];
      }

      return 1;
    }

    if (v2 == 7)
    {
      if (a1 == 458758)
      {
        v8 = 4;
      }

      else
      {
        v8 = 1;
      }

      v9 = a1 == 458752;
      v10 = 3;
LABEL_45:
      if (v9)
      {
        return v10;
      }

      else
      {
        return v8;
      }
    }

    if (v2 != 8)
    {
      return 1;
    }

    v7 = a1 - 0x80000;
    result = 2;
    switch(v7)
    {
      case 0:
      case 2:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 19:
      case 25:
      case 64:
      case 65:
        return 4;
      case 1:
      case 5:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
        goto LABEL_22;
      case 3:
      case 7:
      case 26:
      case 27:
      case 30:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
        return 1;
      case 4:
      case 24:
        return 6;
      case 6:
      case 20:
      case 28:
      case 29:
      case 87:
        return result;
      case 8:
      case 10:
      case 21:
      case 23:
      case 42:
        return 8;
      case 9:
        return 7;
      case 17:
      case 18:
      case 22:
        return 5;
      default:
        if (a1 != 524484)
        {
          return 1;
        }

LABEL_22:
        result = 3;
        break;
    }
  }

  return result;
}

uint64_t awd::metrics::protobuf_ShutdownFile_SimpleMetric_2eproto(awd::metrics *this)
{
  result = awd::metrics::SimpleMetric::default_instance_;
  if (awd::metrics::SimpleMetric::default_instance_)
  {
    return (*(*awd::metrics::SimpleMetric::default_instance_ + 8))();
  }

  return result;
}

uint64_t awd::metrics::SimpleMetric::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 40) = MEMORY[0x277D82C30];
  *(this + 48) = 0;
  *(this + 36) = 0;
  return this;
}

awd::metrics::SimpleMetric *awd::metrics::SimpleMetric::SimpleMetric(awd::metrics::SimpleMetric *this, const awd::metrics::SimpleMetric *a2)
{
  *this = &unk_288351DB0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = MEMORY[0x277D82C30];
  *(this + 6) = 0;
  *(this + 36) = 0;
  awd::metrics::SimpleMetric::MergeFrom(this, a2);
  return this;
}

void awd::metrics::SimpleMetric::MergeFrom(awd::metrics::SimpleMetric *this, const awd::metrics::SimpleMetric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v6 = *(a2 + 1);
    *(this + 13) |= 1u;
    *(this + 1) = v6;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 8);
  *(this + 13) |= 2u;
  *(this + 8) = v7;
  v4 = *(a2 + 13);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v9 = *(a2 + 3);
    *(this + 13) |= 8u;
    *(this + 3) = v9;
    v4 = *(a2 + 13);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_14:
  v8 = *(a2 + 2);
  *(this + 13) |= 4u;
  *(this + 2) = v8;
  v4 = *(a2 + 13);
  if ((v4 & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_16:
  v10 = *(a2 + 5);
  *(this + 13) |= 0x10u;
  v11 = *(this + 5);
  if (v11 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v11, v10);
  if ((*(a2 + 13) & 0x20) != 0)
  {
LABEL_10:
    v5 = *(a2 + 36);
    *(this + 13) |= 0x20u;
    *(this + 36) = v5;
  }
}

void sub_2742FA80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::SimpleMetric::default_instance(awd::metrics::SimpleMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::SimpleMetric::default_instance_;
  if (!awd::metrics::SimpleMetric::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_SimpleMetric_2eproto(0, a2, a3, a4);
    return awd::metrics::SimpleMetric::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::SimpleMetric::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
    if ((v1 & 0x10) != 0)
    {
      v2 = *(this + 40);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    *(this + 36) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::SimpleMetric::MergePartialFromCodedStream(awd::metrics::SimpleMetric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 != 4)
          {
            if (v7 == 5)
            {
              if ((TagFallback & 7) == 0)
              {
                v18 = *(a2 + 1);
                v11 = *(a2 + 2);
                goto LABEL_58;
              }
            }

            else if (v7 == 16 && (TagFallback & 7) == 0)
            {
              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_67;
            }

            goto LABEL_27;
          }

          if (v8 != 2)
          {
            goto LABEL_27;
          }

          v16 = *(this + 13);
LABEL_52:
          *(this + 13) = v16 | 0x10;
          if (*(this + 5) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v23 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v23 < v11 && *v23 == 40)
          {
            v18 = v23 + 1;
            *(a2 + 1) = v18;
LABEL_58:
            v30 = 0;
            if (v18 >= v11 || (v24 = *v18, (v24 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30);
              if (!result)
              {
                return result;
              }

              v24 = v30;
              v25 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v25 = (v18 + 1);
              *(a2 + 1) = v25;
            }

            *(this + 36) = v24 != 0;
            *(this + 13) |= 0x20u;
            if (v11 - v25 >= 2 && *v25 == 128 && v25[1] == 1)
            {
              v12 = (v25 + 2);
              *(a2 + 1) = v12;
LABEL_67:
              if (v12 >= v11 || (v26 = *v12, v26 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v27 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v26;
                v27 = v12 + 1;
                *(a2 + 1) = v27;
              }

              *(this + 13) |= 2u;
              if (v27 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_27;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v13 >= v9 || (v14 = *v13, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v14;
          v15 = v13 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 13) |= 1u;
        if (v15 < v9 && *v15 == 16)
        {
          v17 = v15 + 1;
          *(a2 + 1) = v17;
          goto LABEL_36;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_27;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_36:
      v29 = 0;
      if (v17 >= v9 || (v19 = *v17, (v19 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v29);
        if (!result)
        {
          return result;
        }

        v19 = v29;
        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v20 = v17 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 2) = v19;
      *(this + 13) |= 4u;
      if (v20 < v9 && *v20 == 24)
      {
        v10 = v20 + 1;
        *(a2 + 1) = v10;
LABEL_44:
        if (v10 >= v9 || (v21 = *v10, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v21;
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        v16 = *(this + 13) | 8;
        *(this + 13) = v16;
        if (v22 < v9 && *v22 == 34)
        {
          *(a2 + 1) = v22 + 1;
          goto LABEL_52;
        }
      }
    }

    if (v7 == 3 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_44;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void awd::metrics::SimpleMetric::CopyFrom(awd::metrics::SimpleMetric *this, const awd::metrics::SimpleMetric *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::SimpleMetric::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::SimpleMetric::Swap(uint64_t this, awd::metrics::SimpleMetric *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v5;
    LOBYTE(v5) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return this;
}

uint64_t awd::AWDBundledSubmissionMessage::AWDBundledSubmissionMessage(uint64_t a1, xpc_object_t *a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_288351E40;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v5 = MEMORY[0x2743EA150](*a2);
  v6 = MEMORY[0x277D86468];
  if (v5 == MEMORY[0x277D86468] && xpc_dictionary_get_int64(*a2, "AWDMessageType") == 10)
  {
    *(a1 + 12) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggerId");
    *v4 = xpc_dictionary_get_int64(*a2, "AWDMessageTriggeringComponentId");
    *(a1 + 16) = xpc_dictionary_get_int64(*a2, "AWDMessageSubmissionId");
    *(a1 + 20) = xpc_dictionary_get_int64(*a2, "AWDMessageSourceComponentId");
    p_xdict = a2;
    v21 = "profiles";
    sub_2742EE134(&p_xdict, &object);
    v7 = MEMORY[0x2743EA150](object);
    v8 = MEMORY[0x277D86440];
    if (v7 == MEMORY[0x277D86440])
    {
      p_xdict = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      sub_2742EE7D4(&v17, &p_xdict, 0);
      xpc_release(p_xdict);
      p_xdict = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      if (MEMORY[0x2743EA150](object) == v8)
      {
        count = xpc_array_get_count(object);
      }

      else
      {
        count = 0;
      }

      sub_2742EE7D4(v16, &p_xdict, count);
      xpc_release(p_xdict);
      for (i = v18; i != v16[1] || v17 != v16[0]; i = ++v18)
      {
        p_xdict = &v17;
        v21 = i;
        sub_2742FB368(&p_xdict, &xdict);
        if (MEMORY[0x2743EA150](xdict) == v6)
        {
          length = 0;
          if (xpc_dictionary_get_data(xdict, "data", &length))
          {
            p_xdict = &xdict;
            v21 = "profile_id";
            sub_2742ED5E8(&p_xdict, v12);
            xpc::dyn_cast_or_default();
            xpc_release(v12[0]);
            sub_2742FB9C4();
          }
        }

        xpc_release(xdict);
      }

      xpc_release(v16[0]);
      xpc_release(v17);
    }

    xpc_release(object);
  }

  return a1;
}

void sub_2742FB2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, xpc_object_t a21, xpc_object_t object)
{
  xpc_release(object);
  object = 0;
  xpc_release(a19);
  xpc_release(a21);
  sub_2742FB924(&a19);
  _Unwind_Resume(a1);
}

void sub_2742FB368(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
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

  if (MEMORY[0x2743EA150](v4) != MEMORY[0x277D86468])
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

void awd::AWDBundledSubmissionMessage::createMessage(unsigned int a1@<W0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v7 = a2;
  v10 = HIDWORD(a2);
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v11, "AWDMessageType", 10);
  xpc_dictionary_set_int64(v11, "AWDMessageTriggerId", v10);
  xpc_dictionary_set_int64(v11, "AWDMessageTriggeringComponentId", v7);
  xpc_dictionary_set_int64(v11, "AWDMessageSubmissionId", a3);
  xpc_dictionary_set_int64(v11, "AWDMessageSourceComponentId", a1);
  v12 = xpc_array_create(0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2743EA150](v12) == MEMORY[0x277D86440])
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  v16 = *a4;
  v14 = a4 + 1;
  v15 = v16;
  if (v16 != v14)
  {
    v17 = MEMORY[0x277D86468];
    do
    {
      v18 = xpc_dictionary_create(0, 0, 0);
      v19 = v18;
      if (v18)
      {
        value = v18;
      }

      else
      {
        v19 = xpc_null_create();
        value = v19;
        if (!v19)
        {
          v20 = xpc_null_create();
          v19 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x2743EA150](v19) != v17)
      {
        v20 = xpc_null_create();
LABEL_16:
        value = v20;
        goto LABEL_17;
      }

      xpc_retain(v19);
LABEL_17:
      xpc_release(v19);
      v29 = xpc_int64_create(*(v15 + 8));
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      p_value = &value;
      v28 = "profile_id";
      sub_2742ED8B0(&p_value, &v29, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v29);
      v29 = 0;
      v25 = xpc_data_create(v15[5], v15[6] - v15[5]);
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      p_value = &value;
      v28 = "data";
      sub_2742ED8B0(&p_value, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      xpc_array_append_value(v13, value);
      xpc_release(value);
      v21 = v15[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v15[2];
          v23 = *v22 == v15;
          v15 = v22;
        }

        while (!v23);
      }

      v15 = v22;
    }

    while (v22 != v14);
  }

  xpc_dictionary_set_value(v11, "profiles", v13);
  if (v11)
  {
    *a5 = v11;
  }

  else
  {
    v11 = xpc_null_create();
    *a5 = v11;
    if (!v11)
    {
      v24 = xpc_null_create();
      v11 = 0;
      goto LABEL_34;
    }
  }

  if (MEMORY[0x2743EA150](v11) != MEMORY[0x277D86468])
  {
    v24 = xpc_null_create();
LABEL_34:
    *a5 = v24;
    goto LABEL_35;
  }

  xpc_retain(v11);
LABEL_35:
  xpc_release(v11);
  xpc_release(v13);
}

void awd::AWDBundledSubmissionMessage::createXpcMessage(void *a1@<X8>)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    *a1 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v4) != MEMORY[0x277D86468])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a1 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

uint64_t sub_2742FB860(uint64_t a1)
{
  *a1 = &unk_288351E40;
  v3 = (a1 + 24);
  sub_2742FB924(&v3);
  return a1;
}

uint64_t sub_2742FB8B8(uint64_t a1)
{
  *a1 = &unk_288351E40;
  v3 = (a1 + 24);
  sub_2742FB924(&v3);
  return MEMORY[0x2743E9A90](a1, 0x10A1C406C85F68BLL);
}

void sub_2742FB924(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2742FB978(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2742FB978(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_2742E8DB8(v4);
    }
  }

  a1[1] = v2;
}

uint64_t sub_2742FBA38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_288351E80;
  v4 = *a2;
  v5 = *a3;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  sub_2742FBB3C(a1 + 24, v4, v5, v5 - v4);
  return a1;
}

void sub_2742FBACC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288351E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

void sub_2742FBB20(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t sub_2742FBB3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_2742EF028(result, a4);
  }

  return result;
}

void sub_2742FBB94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742FBBB0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_2742ECF1C();
}

void **sub_2742FBC08(void **a1)
{
  sub_2742FBC3C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2742FBC3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 24;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_2742E8DB8(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 24;
    }
  }
}

uint64_t awd::maybeSetTimestamp(awd *this, awd::Metric *a2)
{
  result = sGetTimestampFieldForMetricId(*this);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(this + 2);
  v6 = *(this + 3) - v5;
  v34 = 0;
  v35 = v5;
  v36 = &v5[v6];
  v37 = v6;
  v38 = 0;
  v39 = 0;
  v40 = v6;
  v41 = xmmword_274321210;
  v42 = *MEMORY[0x277D82C28];
  v43 = 0;
  v44 = 0;
  while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(&v34) >= 1)
  {
    if (v35 >= v36 || (TagFallback = *v35, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(&v34);
      HIDWORD(v38) = TagFallback;
      if (TagFallback)
      {
        goto LABEL_9;
      }
    }

    else
    {
      HIDWORD(v38) = *v35++;
      if (TagFallback)
      {
LABEL_9:
        v8 = awd::reflect::decodeTag(TagFallback);
        v9 = HIDWORD(v8);
        if (v8 > 1u)
        {
          if (v8 == 2)
          {
            v31[0] = 0;
            if (v35 < v36 && (*v35 & 0x80000000) == 0)
            {
              v31[0] = *v35++;
              goto LABEL_27;
            }

            if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(&v34, v31))
            {
LABEL_27:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(&v34);
              ++HIDWORD(v41);
              wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(&v34);
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(&v34);
              if (SHIDWORD(v41) >= 1)
              {
                --HIDWORD(v41);
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(&v34);
            }
          }

          else if (v8 == 5)
          {
            v31[0] = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(&v34, v31);
            goto LABEL_23;
          }
        }

        else if (v8)
        {
          if (v8 == 1)
          {
            *v31 = 0;
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(&v34, v31);
LABEL_23:
            if (LittleEndian32Fallback)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          *v31 = 0;
          if (v35 >= v36 || *v35 < 0)
          {
            LittleEndian32Fallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(&v34, v31);
            goto LABEL_23;
          }

          ++v35;
LABEL_24:
          if (v4 == v9)
          {
            return MEMORY[0x2743E9510](&v34);
          }
        }
      }
    }
  }

  *v31 = 0;
  v32 = 0;
  v33 = 0;
  awd::GetProtobufTag(this + 2, v31);
  v11 = *(this + 1);
  v12 = (8 * v4);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
  }

  else
  {
    v13 = 1;
  }

  v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(v11);
  sub_2742FC0F8(&v29, v14 + v13);
  v16 = v29;
  if (v12 > 0x7F)
  {
    if (v12 >> 14)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v12, v29, v15);
    }

    else
    {
      *v29 = v12 | 0x80;
      v16[1] = v12 >> 7;
      v17 = (v16 + 2);
    }
  }

  else
  {
    *v29 = v12;
    v17 = (v16 + 1);
  }

  wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64ToArray(v11, v17, v15);
  v18 = v30 - v29 + v32;
  awd::createTagForProtobuf(v33, v30 - v29 + v32, &__p);
  v20 = *(this + 2);
  v19 = *(this + 3);
  v21 = &v28[v18] - __p + v20 - v19;
  if (v21 < 1)
  {
    if (v21 < 0)
    {
      v22 = &v19[-(&v28[v18] - __p)];
      v23 = &v28[v18] - __p;
      if (v19 != &v20[-v21])
      {
        memmove(*(this + 2), v22, v19 - &v20[-v21]);
      }

      *(this + 3) = &v20[v23];
    }
  }

  else
  {
    v26 = 0;
    sub_2742EA368(this + 16, v20, v21, &v26);
  }

  v24 = *(this + 2);
  v25 = v28 - __p;
  if (v28 != __p)
  {
    memmove(v24, __p, v28 - __p);
  }

  if (v30 != v29)
  {
    memmove(&v24[v25], v29, v30 - v29);
  }

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return MEMORY[0x2743E9510](&v34);
}

void sub_2742FBFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  MEMORY[0x2743E9510](&a19);
  _Unwind_Resume(a1);
}

uint64_t awd::Metric::Metric(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, char a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_2742F680C(a1 + 16, *a4, a4[1], a4[1] - *a4);
  *(a1 + 40) = a5;
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  sub_2742F680C(a1 + 16, *a4, a4[1], a4[1] - *a4);
  *(a1 + 40) = a5;
  return a1;
}

void *sub_2742FC0F8(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2742EF028(result, a2);
  }

  return result;
}

void sub_2742FC150(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void PRNGenerator::get(void *a1@<X8>)
{
  sub_2742FC2A0(&qword_280AC0FF0, a1);
  if (!*a1)
  {
    std::mutex::lock(&qword_280AC1000);
    sub_2742FC2A0(&qword_280AC0FF0, &v5);
    v3 = v5;
    v5 = 0uLL;
    v4 = a1[1];
    *a1 = v3;
    if (v4)
    {
      sub_2742E8DB8(v4);
      v4 = *(&v5 + 1);
      if (*(&v5 + 1))
      {
        sub_2742E8DB8(*(&v5 + 1));
      }

      if (!*a1)
      {
LABEL_8:
        PRNGenerator::create_default_global(v4);
      }
    }

    else if (!v3)
    {
      goto LABEL_8;
    }

    std::mutex::unlock(&qword_280AC1000);
  }
}

void sub_2742FC25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  std::mutex::unlock(&qword_280AC1000);
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_2742E8DB8(v12);
  }

  _Unwind_Resume(a1);
}

void sub_2742FC2A0(void *a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

void sub_2742FC460(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_2742FCBC8);
  __cxa_rethrow();
}

void sub_2742FC4B8(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

void PRNGenerator::set(uint64_t *a1)
{
  std::mutex::lock(&qword_280AC1000);
  v2 = a1[1];
  v3 = *a1;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2742FC4B8(&qword_280AC0FF0, &v3);
  if (v4)
  {
    sub_2742E8DB8(v4);
  }

  std::mutex::unlock(&qword_280AC1000);
}

void sub_2742FC598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2742E8DB8(a10);
  }

  std::mutex::unlock(&qword_280AC1000);
  _Unwind_Resume(a1);
}

void PRNGenerator::destroy(PRNGenerator *this)
{
  v1[0] = 0;
  v1[1] = 0;
  PRNGenerator::set(v1);
}

void PRNGenerator::PRNGenerator(PRNGenerator *this)
{
  v2 = dispatch_queue_create("PRNGenerator", 0);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 4) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 4) = 0;
  }

  *this = &unk_288351ED0;
}

uint64_t PRNGenerator::generatePRN10000(PRNGenerator *this)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = sub_2742FCA8C;
  v5[3] = &unk_279ED6D38;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = 0;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = sub_2742FCAF4;
    v10 = &unk_279ED6D78;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = sub_2742FCAB8;
    v10 = &unk_279ED6D58;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_2742FC7C0(uint64_t a1)
{
  sub_2742ECDA8((a1 + 8));

  JUMPOUT(0x2743E9A90);
}

unsigned int *sub_2742FC80C(unsigned int *result)
{
  v1 = 0;
  v2 = result[623] ^ result[396];
  if (v2 >= 0)
  {
    v3 = 2 * v2;
  }

  else
  {
    v3 = (2 * v2) ^ 0x321161BF;
  }

  *result = *result & 0x80000000 | v3 & 0x7FFFFFFF;
  while (!result[v1])
  {
    if (++v1 == 624)
    {
      *result = 0x80000000;
      return result;
    }
  }

  return result;
}

uint64_t sub_2742FC860(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 != a2)
  {
    if (v3 == -1)
    {
      v12 = *(a1 + 2496);
      if (v12 == 624)
      {
        sub_2742FC960(a1);
        v12 = *(a1 + 2496);
      }

      v13 = *(a1 + 4 * v12);
      *(a1 + 2496) = v12 + 1;
      v14 = ((v13 ^ (v13 >> 11)) << 7) & 0x9D2C5680 ^ v13 ^ (v13 >> 11);
      return ((v14 << 15) & 0xEFC60000 ^ v14 ^ (((v14 << 15) & 0xEFC60000 ^ v14) >> 18)) + a2;
    }

    else
    {
      v6 = 0xFFFFFFFF / (v3 + 1);
      if (~(v6 * (v3 + 1)) == v3)
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = 0xFFFFFFFF / (v3 + 1);
      }

      v8 = *(a1 + 2496);
      do
      {
        if (v8 == 624)
        {
          sub_2742FC960(a1);
          v8 = *(a1 + 2496);
        }

        v9 = *(a1 + 4 * v8++);
        *(a1 + 2496) = v8;
        v10 = ((v9 ^ (v9 >> 11)) << 7) & 0x9D2C5680 ^ v9 ^ (v9 >> 11);
        v11 = ((v10 << 15) & 0xEFC60000 ^ v10 ^ (((v10 << 15) & 0xEFC60000 ^ v10) >> 18)) / v7;
      }

      while (v11 > v3);
      return v11 + a2;
    }
  }

  return a3;
}

int *sub_2742FC960(int *result)
{
  v1 = 0;
  v2 = *result;
  do
  {
    v3 = v2 & 0x80000000;
    v2 = result[v1 + 1];
    v4 = v2 & 0x7FFFFFFE | v3;
    if (v2)
    {
      v5 = -1727483681;
    }

    else
    {
      v5 = 0;
    }

    result[v1] = v5 ^ result[v1 + 397] ^ (v4 >> 1);
    ++v1;
  }

  while (v1 != 222);
  v6 = 0;
  v7 = result[222];
  do
  {
    v8 = v7 & 0x80000000;
    v7 = result[v6 + 223];
    v9 = v7 & 0x7FFFFFFE | v8;
    if (v7)
    {
      v10 = -1727483681;
    }

    else
    {
      v10 = 0;
    }

    result[v6 + 222] = v10 ^ result[v6 + 619] ^ (v9 >> 1);
    ++v6;
  }

  while (v6 != 5);
  v11 = 0;
  v12 = (result + 227);
  v13 = vld1q_dup_f32(v12);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v15.i64[0] = 0x100000001;
  v15.i64[1] = 0x100000001;
  v16 = vnegq_f32(v15);
  v17 = vdupq_n_s32(0x9908B0DF);
  do
  {
    v18 = *&result[v11 + 228];
    *&result[v11 + 227] = veorq_s8(veorq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(v18, 0x1FuLL)), v17), *&result[v11]), vshrq_n_u32(vorrq_s8(vandq_s8(v18, v16), vandq_s8(vextq_s8(v13, v18, 0xCuLL), v14)), 1uLL));
    v11 += 4;
    v13 = v18;
  }

  while (v11 != 396);
  if (*result)
  {
    v19 = -1727483681;
  }

  else
  {
    v19 = 0;
  }

  result[623] = v19 ^ result[396] ^ ((*result & 0x7FFFFFFE | result[623] & 0x80000000) >> 1);
  *(result + 312) = 0;
  return result;
}

uint64_t sub_2742FCAB8(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_2742FCAF4(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_2742FCB34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_2742FCB88(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_288351FC8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2742FCBC8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

__n128 awd::AWDMetricSubmitter::AWDMetricSubmitter(void *a1, __n128 *a2)
{
  v3 = sub_2742FCD4C(a1, "AWDMetricSubmitter", QOS_CLASS_DEFAULT, "submitter");
  result = *a2;
  *(v3 + 5) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  v3[9] = 0;
  v3[8] = 0;
  v3[7] = v3 + 8;
  return result;
}

{
  v3 = sub_2742FCD4C(a1, "AWDMetricSubmitter", QOS_CLASS_DEFAULT, "submitter");
  result = *a2;
  *(v3 + 5) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  v3[9] = 0;
  v3[8] = 0;
  v3[7] = v3 + 8;
  return result;
}

void *sub_2742FCD4C(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.awd.framework", a4);
  return a1;
}

void awd::AWDMetricSubmitter::addMetric(void *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v17 = a2;
  v18 = a3;
  v15 = a5;
  v16 = a4;
  v13 = 0;
  v14 = 0;
  v7 = a1[6];
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    v14 = v9;
    if (v9)
    {
      v13 = a1[5];
      if (v13)
      {
        v12[0] = a6;
        v12[1] = a1;
        v12[2] = &v16;
        v12[3] = &v17;
        v12[4] = &v15;
        v12[5] = &v13;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = sub_2742FD3E4;
        block[3] = &unk_279ED6D98;
        block[4] = a1;
        block[5] = v12;
        v10 = a1[2];
        if (a1[3])
        {
          dispatch_async_and_wait(v10, block);
        }

        else
        {
          dispatch_sync(v10, block);
        }

        v9 = v14;
        if (!v14)
        {
          return;
        }

LABEL_10:
        sub_2742E8DB8(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = a1[4];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(block[0]) = 0;
    _os_log_impl(&dword_2742E7000, v11, OS_LOG_TYPE_DEFAULT, "client.submitter:#E Unable to send metric because AWDServerFacade is not valid.", block, 2u);
  }

  if (v9)
  {
    goto LABEL_10;
  }
}

void awd::AWDMetricSubmitter::doneWithMetrics(void *a1, int a2, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1[6];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[5];
      if (v10)
      {
        v11 = a1[4];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 67109632;
          v16 = a3;
          v17 = 1024;
          v18 = HIDWORD(a3);
          v19 = 1024;
          v20 = a4;
          _os_log_impl(&dword_2742E7000, v11, OS_LOG_TYPE_INFO, "client.submitter:#I Sending done with metrics message for Trigger(cid=0x%x, trid=0x%x, sid=%u)", buf, 0x14u);
        }

        awd::AWDFinishedSubmissionMessage::AWDFinishedSubmissionMessage(buf, a2, a3, a4);
        awd::AWDFinishedSubmissionMessage::createXpcMessage(buf, &object);
        awd::AWDServerFacade::sendMessage(v10, &object);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = a1[4];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742E7000, v12, OS_LOG_TYPE_DEFAULT, "client.submitter:#E Unable to send finished submission message because AWDServerFacade is not valid.", buf, 2u);
  }

  if (v9)
  {
    sub_2742E8DB8(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2742FD0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (a2)
  {
    sub_2742EAB54(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void awd::AWDMetricSubmitter::generateTrigger(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = a1[5];
      if (v10)
      {
        awd::AWDTriggerMessage::AWDTriggerMessage(buf, a2, a4, a2, a3);
        awd::AWDTriggerMessage::createXpcMessage(buf, &object);
        awd::AWDServerFacade::sendMessage(v10, &object);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = a1[4];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2742E7000, v11, OS_LOG_TYPE_DEFAULT, "client.submitter:#E Unable to send trigger message because AWDServerFacade is not valid.", buf, 2u);
  }

  if (v9)
  {
    sub_2742E8DB8(v9);
  }
}

void sub_2742FD1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_2742E8DB8(v10);
  _Unwind_Resume(a1);
}

void sub_2742FD27C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_2742FD350);
  __cxa_rethrow();
}

void sub_2742FD2BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_2742FD310(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_288352028))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2742FD350(uint64_t result)
{
  if (result)
  {
    sub_2742FD390(result);

    JUMPOUT(0x2743E9A90);
  }

  return result;
}

void *sub_2742FD390(uint64_t a1)
{
  sub_2742F0CA0(a1 + 56, *(a1 + 64));
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x2743E9730](a1 + 32);

  return sub_2742ECDA8(a1);
}

void sub_2742FD3E4(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = **v1;
  v4 = *(v1[1] + 4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v1[3];
    v6 = *v1[2];
    v7 = *v5;
    v8 = v5[1];
    LODWORD(v5) = v5[2];
    *buf = 67110144;
    *&buf[4] = v3;
    v19 = 1024;
    v20 = v6;
    v21 = 1024;
    v22 = v7;
    v23 = 1024;
    v24 = v8;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&dword_2742E7000, v4, OS_LOG_TYPE_INFO, "client.submitter:#I Sending metric submission message for metric 0x%x, profid 0x%x, Trigger(cid=0x%x, trid=0x%x, sid=%u)", buf, 0x20u);
    v2 = *v1;
  }

  v9 = v1[3];
  v10 = *v1[4];
  v11 = *v1[2];
  v12 = *v9;
  v13 = v9[2];
  v17 = 0;
  __p = 0uLL;
  sub_2742F680C(&__p, *(v2 + 16), *(v2 + 24), *(v2 + 24) - *(v2 + 16));
  awd::AWDSubmissionMessage::AWDSubmissionMessage(buf, v10, v3 | (v11 << 32), v12, v13, &__p);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v14 = *v1[5];
  awd::AWDSubmissionMessage::createXpcMessage(buf, &object);
  awd::AWDServerFacade::sendMessage(v14, &object);
}

void sub_2742FD590(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (a2)
  {
    sub_2742EAB54(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t awd::reflect::getUnpackedType(uint64_t result)
{
  if ((result - 15) >= 0xC)
  {
    return result;
  }

  else
  {
    return (result - 14);
  }
}

uint64_t awd::reflect::getPackedType(int a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 0;
  }

  else
  {
    return dword_274321500[a1 - 1];
  }
}

uint64_t awd::reflect::getWireTypeForType(int a1)
{
  if ((a1 - 1) > 0x1A)
  {
    return 0;
  }

  else
  {
    return byte_274321568[a1 - 1];
  }
}

uint64_t awd::reflect::getDecodingType(uint64_t a1, int a2)
{
  v3 = a1;
  if (awd::reflect::getWireTypeForType(a1) != a2)
  {
    UnpackedType = awd::reflect::getUnpackedType(v3);
    if (awd::reflect::getWireTypeForType(UnpackedType) == a2)
    {
      return UnpackedType;
    }

    else if (a2 == 2 && (PackedType = awd::reflect::getPackedType(v3), PackedType))
    {
      return PackedType;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t awd::protobuf::skipField(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, int a2)
{
  result = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6[0] = 0;
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || *v5 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v6);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v6[0] = *v5;
        *(this + 1) = v5 + 1;
      }

      return wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(this);
    }

    else if (a2 == 5)
    {
      v6[0] = 0;
      return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, v6);
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      *v6 = 0;
      return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, v6);
    }
  }

  else
  {
    *v6 = 0;
    v4 = *(this + 1);
    if (v4 >= *(this + 2) || *v4 < 0)
    {
      return wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v6);
    }

    else
    {
      *(this + 1) = v4 + 1;
      return 1;
    }
  }

  return result;
}

uint64_t awd::AWDFinishedSubmissionMessage::AWDFinishedSubmissionMessage(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = &unk_288352048;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 20) = a4;
  return result;
}

{
  *result = &unk_288352048;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 20) = a4;
  return result;
}

uint64_t awd::AWDFinishedSubmissionMessage::AWDFinishedSubmissionMessage(uint64_t a1, xpc_object_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_288352048;
  if (MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468])
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "AWDMessageComponentId");
    *(a1 + 16) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggerId");
    *(a1 + 20) = xpc_dictionary_get_int64(*a2, "AWDMessageSubmisssionId");
    *(a1 + 12) = xpc_dictionary_get_int64(*a2, "AWDMessageTriggeringComponentId");
  }

  return a1;
}

void awd::AWDFinishedSubmissionMessage::createXpcMessage(awd::AWDFinishedSubmissionMessage *this@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "AWDMessageType", 3);
    xpc_dictionary_set_int64(v5, "AWDMessageComponentId", *(this + 2));
    xpc_dictionary_set_int64(v5, "AWDMessageTriggerId", *(this + 4));
    xpc_dictionary_set_int64(v5, "AWDMessageSubmisssionId", *(this + 5));
    xpc_dictionary_set_int64(v5, "AWDMessageTriggeringComponentId", *(this + 3));
    *a2 = v5;
    if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

uint64_t awd::AWDControlMessage::AWDControlMessage(uint64_t result, int a2)
{
  *result = &unk_288352088;
  *(result + 8) = a2;
  return result;
}

{
  *result = &unk_288352088;
  *(result + 8) = a2;
  return result;
}

uint64_t awd::AWDControlMessage::AWDControlMessage(uint64_t a1, xpc_object_t *a2)
{
  *a1 = &unk_288352088;
  if (MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468])
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "AWDMessageControlMessageType");
  }

  return a1;
}

void awd::AWDControlMessage::createXpcMessage(awd::AWDControlMessage *this@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v11 = xpc_int64_create(7);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v9 = a2;
  v10 = "AWDMessageType";
  sub_2742ED8B0(&v9, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v7 = xpc_int64_create(*(this + 2));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v9 = a2;
  v10 = "AWDMessageControlMessageType";
  sub_2742ED8B0(&v9, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
}

uint64_t awd::AWDPIILocationMessage::AWDPIILocationMessage(uint64_t a1, void *a2)
{
  *a1 = &unk_2883520C8;
  if (MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468])
  {
    v5 = a2;
    v6 = "AWDMessageComponentId";
    sub_2742ED5E8(&v5, &object);
    *(a1 + 8) = xpc::dyn_cast_or_default();
    xpc_release(object);
    v5 = a2;
    v6 = "AWDMessagePII";
    sub_2742ED5E8(&v5, &object);
    *(a1 + 12) = xpc::dyn_cast_or_default() != 0;
    xpc_release(object);
    v5 = a2;
    v6 = "AWDMessageLocKey";
    sub_2742ED5E8(&v5, &object);
    *(a1 + 13) = xpc::dyn_cast_or_default() != 0;
    xpc_release(object);
    v5 = a2;
    v6 = "AWDMessageShimKey";
    sub_2742ED5E8(&v5, &object);
    *(a1 + 14) = xpc::dyn_cast_or_default();
    xpc_release(object);
  }

  return a1;
}

uint64_t awd::AWDPIILocationMessage::AWDPIILocationMessage(uint64_t result, char a2, char a3, char a4)
{
  *result = &unk_2883520C8;
  *(result + 8) = 0;
  *(result + 12) = a2;
  *(result + 13) = a3;
  *(result + 14) = a4;
  return result;
}

{
  *result = &unk_2883520C8;
  *(result + 8) = 0;
  *(result + 12) = a2;
  *(result + 13) = a3;
  *(result + 14) = a4;
  return result;
}

uint64_t awd::AWDPIILocationMessage::AWDPIILocationMessage(uint64_t result, int a2, char a3, char a4, char a5)
{
  *result = &unk_2883520C8;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 13) = a4;
  *(result + 14) = a5;
  return result;
}

{
  *result = &unk_2883520C8;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 13) = a4;
  *(result + 14) = a5;
  return result;
}

void awd::AWDPIILocationMessage::createXpcMessage(awd::AWDPIILocationMessage *this@<X0>, void *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v17 = xpc_int64_create(8);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessageType";
  sub_2742ED8B0(&v15, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v13 = xpc_int64_create(*(this + 2));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessageComponentId";
  sub_2742ED8B0(&v15, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_int64_create(*(this + 12));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessagePII";
  sub_2742ED8B0(&v15, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(*(this + 13));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessageLocKey";
  sub_2742ED8B0(&v15, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v7 = xpc_int64_create(*(this + 14));
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v15 = a2;
  v16 = "AWDMessageShimKey";
  sub_2742ED8B0(&v15, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
}

void *awd::AWDLocationUsedMessage::AWDLocationUsedMessage(void *this)
{
  *this = &unk_288352108;
  return this;
}

{
  *this = &unk_288352108;
  return this;
}

void *awd::AWDLocationUsedMessage::AWDLocationUsedMessage(void *result)
{
  *result = &unk_288352108;
  return result;
}

{
  *result = &unk_288352108;
  return result;
}

void awd::AWDLocationUsedMessage::createXpcMessage(xpc_object_t *a1@<X8>)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    v4 = v3;
    xpc_dictionary_set_int64(v3, "AWDMessageType", 9);
    *a1 = v4;
    if (MEMORY[0x2743EA150](v4) == MEMORY[0x277D86468])
    {
      xpc_retain(v4);
    }

    else
    {
      *a1 = xpc_null_create();
    }

    xpc_release(v4);
  }

  else
  {
    *a1 = xpc_null_create();
  }
}

uint64_t platform::getSubmissionPath@<X0>(platform *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  PlatformBaseDir = platform::getPlatformBaseDir(a1);
  sub_2742F6A8C(a2, PlatformBaseDir);
  if (v2 > 2)
  {
    if (v2 == 3 || v2 == 4)
    {
      goto LABEL_8;
    }

    return ctu::path_join_impl();
  }

  if (v2 != 2)
  {
    return ctu::path_join_impl();
  }

LABEL_8:
  ctu::path_join_impl();
  return ctu::path_join_impl();
}

void sub_2742FE400(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t platform::getStagingPath@<X0>(platform *this@<X0>, _BYTE *a2@<X8>)
{
  PlatformBaseDir = platform::getPlatformBaseDir(this);
  sub_2742F6A8C(a2, PlatformBaseDir);
  return ctu::path_join_impl();
}

void sub_2742FE468(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *platform::getPersistentPath@<X0>(platform *this@<X0>, _BYTE *a2@<X8>)
{
  PlatformBaseDir = platform::getPlatformBaseDir(this);

  return sub_2742F6A8C(a2, PlatformBaseDir);
}

uint64_t awd::AWDBasicConfigType::AWDBasicConfigType(uint64_t a1, int a2)
{
  ctu::OsLogLogger::OsLogLogger((a1 + 8), "com.apple.awd.framework", "config");
  *a1 = &unk_288352148;
  *(a1 + 16) = a2;
  return a1;
}

const char *awd::asString(int a1)
{
  if (a1)
  {
    return "?";
  }

  else
  {
    return "LoggingMetric";
  }
}

uint64_t awd::AWDTimerMessage::AWDTimerMessage(uint64_t this, int a2)
{
  *this = &unk_2883521C0;
  *(this + 8) = a2;
  return this;
}

{
  *this = &unk_2883521C0;
  *(this + 8) = a2;
  return this;
}

uint64_t awd::AWDTimerMessage::AWDTimerMessage(uint64_t a1, xpc_object_t *a2)
{
  *a1 = &unk_2883521C0;
  *(a1 + 8) = 0;
  if (MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468])
  {
    *(a1 + 8) = xpc_dictionary_get_int64(*a2, "AWDMessageTimerId");
  }

  return a1;
}

void awd::AWDTimerMessage::createXpcMessage(awd::AWDTimerMessage *this@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "AWDMessageType", 13);
    xpc_dictionary_set_int64(v5, "AWDMessageTimerId", *(this + 2));
    *a2 = v5;
    if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86468])
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

uint64_t sub_2742FE8D8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2742FE8F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void AWDSimpleServerFacade::AWDSimpleServerFacade(AWDSimpleServerFacade *this)
{
  AWDServerConnector::AWDServerConnector(this);
  *v1 = &unk_2883522E0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
}

{
  AWDServerConnector::AWDServerConnector(this);
  *v1 = &unk_2883522E0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
}

uint64_t sub_2742FEB24(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2742FEB40(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void AWDServerConnector::AWDServerConnector(AWDServerConnector *this)
{
  sub_2742F6A8C(&__p, "com.apple.awd.server_connector");
  ctu::XpcClient::XpcClient();
  if (v3 < 0)
  {
    operator delete(__p);
  }

  *this = &unk_288352260;
}

void sub_2742FEBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AWDServerConnector::~AWDServerConnector(AWDServerConnector *this)
{
  *this = &unk_288352260;
  object = xpc_null_create();
  ctu::XpcClient::setServer_sync();
  xpc_release(object);
  ctu::XpcClient::~XpcClient(this);
}

{
  AWDServerConnector::~AWDServerConnector(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t AWDServerConnector::init_sync(AWDServerConnector *this)
{
  if (CFNotificationCenterGetDarwinNotifyCenter())
  {
    operator new();
  }

  return (*(*this + 40))(this);
}

void sub_2742FEDAC(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      v5 = v4;
      if (v4)
      {
        v6 = *a2;
        if (*a2)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_2742E8D20(&v9, (v6 + 8));
          operator new();
        }
      }
    }

    else
    {
      v5 = 0;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a2, @"AWDD Started", @"AWDD");
    v8 = a2[1];
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    MEMORY[0x2743E9A90](a2, 0x20C40A4A59CD2);
    if (v5)
    {
      sub_2742E8DB8(v5);
    }
  }
}

void sub_2742FEF14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2742E8DB8(v1);
  }

  _Unwind_Resume(exception_object);
}

void AWDServerConnector::handleServerError_sync(uint64_t a1, void *a2)
{
  if (MEMORY[0x277D863F0] != MEMORY[0x277D863F8] && *a2 == MEMORY[0x277D863F8])
  {
    object = xpc_null_create();
    ctu::XpcClient::setServer_sync();
    xpc_release(object);
  }
}

void AWDServerConnector::initConnection_sync(dispatch_queue_t *this)
{
  mach_service = xpc_connection_create_mach_service("com.apple.awdd", this[3], 2uLL);
  if (!mach_service)
  {
    mach_service = xpc_null_create();
  }

  v2 = mach_service;
  if (MEMORY[0x2743EA150]() == MEMORY[0x277D86450])
  {
    object = v2;
    if (v2)
    {
      xpc_retain(v2);
    }

    else
    {
      object = xpc_null_create();
    }

    ctu::XpcClient::setServer_sync();
    xpc_release(object);
  }

  xpc_release(v2);
}

void sub_2742FF054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void AWDServerConnector::send(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2743EA150](*a2);
  v5 = MEMORY[0x277D86468];
  if (v4 != MEMORY[0x277D86468])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x2743EA150](v6) == v5)
      {
        xpc_retain(v6);
        v7 = v6;
      }

      else
      {
        v7 = xpc_null_create();
      }
    }

    else
    {
      v7 = xpc_null_create();
      v6 = 0;
    }

    xpc_release(v6);
    v8 = xpc_null_create();
    v9 = *a2;
    *a2 = v7;
    xpc_release(v9);
    xpc_release(v8);
  }

  v10 = *a2;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    xpc_null_create();
  }

  sub_2742E8D20(&v11, (a1 + 8));
  operator new();
}

void AWDServerConnector::send(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x2743EA150](*a2);
  v9 = MEMORY[0x277D86468];
  if (v8 != MEMORY[0x277D86468])
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x2743EA150](v10) == v9)
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

    xpc_release(v10);
    v12 = xpc_null_create();
    v13 = *a2;
    *a2 = v11;
    xpc_release(v13);
    xpc_release(v12);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1174405120;
  v16[2] = sub_2742FF470;
  v16[3] = &unk_2883522A0;
  v14 = *a2;
  v16[5] = a1;
  object = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    object = xpc_null_create();
  }

  v18 = a3;
  v16[4] = a4;
  sub_2742E8D20(&v21, (a1 + 8));
  v15 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = sub_274300E3C;
  block[3] = &unk_2883523E0;
  block[5] = v21;
  v20 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v16;
  dispatch_async(v15, block);
  if (v20)
  {
    sub_2742E8DB8(v20);
  }

  if (v22)
  {
    sub_2742E8DB8(v22);
  }

  xpc_release(object);
}

void sub_2742FF470(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (MEMORY[0x2743EA150](*(v2 + 40)) == MEMORY[0x277D86450])
  {
    v11 = xpc_int64_create(11);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v9 = a1 + 48;
    v10 = "AWDMessageType";
    sub_2742ED8B0(&v9, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
    v7 = xpc_string_create(*(a1 + 56));
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    v9 = a1 + 48;
    v10 = "ManageRequest";
    sub_2742ED8B0(&v9, &v7, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v7);
    v3 = *(v2 + 40);
    v4 = *(a1 + 48);
    v5 = *(v2 + 24);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = sub_2742FF5E8;
    handler[3] = &unk_279ED6DC0;
    handler[4] = *(a1 + 32);
    v7 = 0;
    xpc_connection_send_message_with_reply(v3, v4, v5, handler);
  }

  else
  {
    syslog(3, "Error! send: getServer_sync is NULL");
  }
}

void sub_2742FF5E8(uint64_t a1, xpc_object_t object)
{
  v2 = *(a1 + 32);
  objecta = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    objecta = xpc_null_create();
  }

  (*(v2 + 16))(v2, &objecta);
  xpc_release(objecta);
}

xpc_object_t sub_2742FF668(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void AWDSimpleServerFacade::~AWDSimpleServerFacade(AWDSimpleServerFacade *this)
{
  *this = &unk_2883522E0;
  v2 = *(this + 10);
  if (v2)
  {
    _Block_release(v2);
  }

  AWDServerConnector::~AWDServerConnector(this);
}

{
  AWDSimpleServerFacade::~AWDSimpleServerFacade(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t AWDSimpleServerFacade::handleServerError_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = *a2;
  v9 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v9 = v4;
  }

  AWDServerConnector::handleServerError_sync(a1, &v9);
  xpc_release(v4);
  sub_2742FF8A4(a2, __p);
  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  syslog(3, "GOT XPC ERROR: %s", v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return AWDSimpleServerFacade::setState_sync(a1, 2);
}

void sub_2742FF86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2742FF8A4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = MEMORY[0x2743EA070](*a1);
  sub_2742F6A8C(a2, v3);

  free(v3);
}

uint64_t AWDSimpleServerFacade::setState_sync(uint64_t result, int a2)
{
  if (*(result + 72) != a2)
  {
    v3 = result;
    syslog(3, "AWDD STATE CHANGED FROM %d to %d", *(result + 72), a2);
    *(v3 + 72) = a2;
    result = *(v3 + 80);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

_DWORD *AWDSimpleServerFacade::handleAwddStarted_sync(_DWORD *this)
{
  v1 = this[18];
  if (!v1)
  {
    return AWDSimpleServerFacade::setState_sync(this, 1);
  }

  if (v1 == 2)
  {
    return (*(*this + 40))();
  }

  return this;
}

void AWDSimpleServerFacade::getCurrentConfig(uint64_t a1, uint64_t a2)
{
  v5 = xpc_null_create();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_2742FFA70;
  v4[3] = &unk_279ED6DE8;
  v4[4] = a2;
  v4[5] = a1;
  AWDServerConnector::send(a1, &v5, "CopyConfig", v4);
  xpc_release(v5);
}

void sub_2742FFA70(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 40);
  sub_2742FF8A4(a2, __p);
  if (v11 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  syslog(3, "GOT XPC REPLY: %s", v5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *a2;
  v7 = MEMORY[0x277D86468];
  if (v6 && MEMORY[0x2743EA150](v6) == v7)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  if (MEMORY[0x2743EA150](v6) == v7)
  {
    AWDSimpleServerFacade::setState_sync(v4, 1);
  }

  v8 = *(a1 + 32);
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v8 + 16))(v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_2742FFB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void AWDSimpleServerFacade::getConfigsAvailable(uint64_t a1, uint64_t a2)
{
  v5 = xpc_null_create();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_2742FFC98;
  v4[3] = &unk_279ED6E10;
  v4[4] = a2;
  v4[5] = a1;
  AWDServerConnector::send(a1, &v5, "GetConfigsAvailable", v4);
  xpc_release(v5);
}

void sub_2742FFC98(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 40);
  sub_2742FF8A4(a2, __p);
  if (v11 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  syslog(3, "GOT XPC REPLY: %s", v5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *a2;
  v7 = MEMORY[0x277D86468];
  if (v6 && MEMORY[0x2743EA150](v6) == v7)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  if (MEMORY[0x2743EA150](v6) == v7)
  {
    AWDSimpleServerFacade::setState_sync(v4, 1);
  }

  v8 = *(a1 + 32);
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v8 + 16))(v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_2742FFDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void AWDSimpleServerFacade::setConfig(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v20 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v20 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v9) == MEMORY[0x277D86468])
  {
    xpc_retain(v9);
    goto LABEL_9;
  }

  v10 = xpc_null_create();
LABEL_8:
  v20 = v10;
LABEL_9:
  xpc_release(v9);
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v18 = xpc_string_create(v11);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v16 = &v20;
  v17 = "config";
  sub_2742ED8B0(&v16, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v14 = xpc_int64_create(a3);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v16 = &v20;
  v17 = "InvestigationId";
  sub_2742ED8B0(&v16, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v13 = v20;
  v14 = 0;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v13 = xpc_null_create();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = sub_274300054;
  v12[3] = &unk_279ED6E38;
  v12[4] = a4;
  v12[5] = a1;
  AWDServerConnector::send(a1, &v13, "SetConfig", v12);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v20);
}

void sub_274300004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v15 - 56));
  _Unwind_Resume(a1);
}

void sub_274300054(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 40);
  sub_2742FF8A4(a2, __p);
  if (v11 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  syslog(3, "GOT XPC REPLY: %s", v5);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *a2;
  v7 = MEMORY[0x277D86468];
  if (v6 && MEMORY[0x2743EA150](v6) == v7)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  if (MEMORY[0x2743EA150](v6) == v7)
  {
    AWDSimpleServerFacade::setState_sync(v4, 1);
  }

  v8 = *(a1 + 32);
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v8 + 16))(v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

void sub_274300170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  xpc_release(v17);
  _Unwind_Resume(a1);
}

void AWDSimpleServerFacade::setProperty(uint64_t a1, uint64_t *a2, BOOL a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v15 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v15 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v7) == MEMORY[0x277D86468])
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  v15 = v8;
LABEL_9:
  xpc_release(v7);
  v13 = xpc_BOOL_create(a3);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v12[0] = &v15;
  v12[1] = v9;
  sub_2742ED8B0(v12, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  object = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    object = xpc_null_create();
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 0x40000000;
  v10[2] = sub_2743003A4;
  v10[3] = &unk_279ED6E58;
  v10[4] = a1;
  AWDServerConnector::send(a1, &object, "SetProperty", v10);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
}

void sub_274300360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v15 - 40));
  _Unwind_Resume(a1);
}

void sub_2743003A4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 32);
  sub_2742FF8A4(a2, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  syslog(3, "GOT XPC REPLY: %s", v4);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *a2;
  v6 = MEMORY[0x277D86468];
  if (v5 && MEMORY[0x2743EA150](v5) == v6)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (MEMORY[0x2743EA150](v5) == v6)
  {
    AWDSimpleServerFacade::setState_sync(v3, 1);
  }

  xpc_release(v5);
}

void sub_274300478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AWDSimpleServerFacade::submitMetricsNow(AWDSimpleServerFacade *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  v9 = v4;
LABEL_9:
  xpc_release(v3);
  v7 = xpc_int64_create(7);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v10 = &v9;
  v11 = "AWDMessageType";
  sub_2742ED8B0(&v10, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
  v7 = 0;
  v5 = xpc_int64_create(3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v10 = &v9;
  v11 = "AWDMessageControlMessageType";
  sub_2742ED8B0(&v10, &v5, &v6);
  xpc_release(v6);
  v6 = 0;
  xpc_release(v5);
  v5 = 0;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    xpc_null_create();
  }

  sub_2742E8D20(&v10, this + 1);
  operator new();
}

void AWDSimpleServerFacade::dumpLogs(AWDSimpleServerFacade *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    v9 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2743EA150](v3) == MEMORY[0x277D86468])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  v9 = v4;
LABEL_9:
  xpc_release(v3);
  v7 = xpc_int64_create(7);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v10 = &v9;
  v11 = "AWDMessageType";
  sub_2742ED8B0(&v10, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
  v7 = 0;
  v5 = xpc_int64_create(7);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v10 = &v9;
  v11 = "AWDMessageControlMessageType";
  sub_2742ED8B0(&v10, &v5, &v6);
  xpc_release(v6);
  v6 = 0;
  xpc_release(v5);
  v5 = 0;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    xpc_null_create();
  }

  sub_2742E8D20(&v10, this + 1);
  operator new();
}

void AWDSimpleServerFacade::setStateChangedCallback(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1174405120;
  v6[2] = sub_274300ADC;
  v6[3] = &unk_288352318;
  v6[4] = a1;
  if (v3)
  {
    v4 = _Block_copy(v3);
  }

  else
  {
    v4 = 0;
  }

  aBlocka = v4;
  sub_2742E8D20(&v10, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = sub_274300E3C;
  block[3] = &unk_2883523E0;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v9)
  {
    sub_2742E8DB8(v9);
  }

  if (v11)
  {
    sub_2742E8DB8(v11);
  }

  if (aBlocka)
  {
    _Block_release(aBlocka);
  }

  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t sub_274300ADC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(v3 + 72);
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void *sub_274300B54(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_274300B88(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t AWDSimpleServerFacade::initConnection_sync(dispatch_queue_t *this)
{
  AWDServerConnector::initConnection_sync(this);

  return AWDSimpleServerFacade::setState_sync(this, 0);
}

uint64_t *sub_274300BE8(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a1;
  v5 = v2;
  (*(**v2 + 48))(*v2, a2);
  sub_274300C68(&v5);
  return sub_2742E8D64(&v4);
}

void sub_274300C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_274300C68(&a10);
  sub_2742E8D64(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_274300C68(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      sub_2742E8DB8(v3);
    }

    MEMORY[0x2743E9A90](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

void sub_274300D3C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_274300E10);
  __cxa_rethrow();
}

void sub_274300D7C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_274300DD0(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_2883523C8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274300E10(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_274300E4C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_274300E68(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void sub_274300EF8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_274300FCC);
  __cxa_rethrow();
}

void sub_274300F38(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_274300F8C(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_288352460))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274300FCC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t *sub_274300FF8(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  if (MEMORY[0x2743EA150](*(*v1 + 40)) == MEMORY[0x277D86450])
  {
    object = xpc_int64_create(11);
    if (!object)
    {
      object = xpc_null_create();
    }

    v8 = v1 + 8;
    v9 = "AWDMessageType";
    sub_2742ED8B0(&v8, &object, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(object);
    object = 0;
    v6 = xpc_string_create(*(v1 + 16));
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v8 = v1 + 8;
    v9 = "ManageRequest";
    sub_2742ED8B0(&v8, &v6, &v7);
    xpc_release(v7);
    v7 = 0;
    xpc_release(v6);
    v6 = 0;
    xpc_connection_send_message(*(v2 + 40), *(v1 + 8));
  }

  else
  {
    syslog(3, "Error! send: getServer_sync is NULL");
  }

  sub_274301150(&v5);
  return sub_2742E8D64(&v4);
}

void sub_274301134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_274301150(&a10);
  sub_2742E8D64(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_274301150(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x2743E9A90](v2, 0xF0C4088EBFEECLL);
  }

  return a1;
}

uint64_t *sub_2743011A8(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (MEMORY[0x2743EA150](*(*v1 + 40)) == MEMORY[0x277D86450])
  {
    v3 = *(v2 + 40);
    v4 = v1[1];
    v5 = *(v2 + 24);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = sub_2743012E4;
    handler[3] = &unk_279ED6E78;
    handler[4] = v2;
    xpc_connection_send_message_with_reply(v3, v4, v5, handler);
  }

  else
  {
    syslog(3, "Error! send: getServer_sync is NULL");
  }

  sub_27430128C(&v8);
  return sub_2742E8D64(&v7);
}

void sub_274301270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_27430128C(va1);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430128C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x2743E9A90](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void sub_2743012E4(uint64_t a1, xpc_object_t object)
{
  v2 = object;
  v3 = *(a1 + 32);
  if (object)
  {
    xpc_retain(object);
    v4 = v2;
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = MEMORY[0x2743EA070](v4);
  sub_2742F6A8C(__p, v5);
  free(v5);
  if (v10 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  syslog(3, "GOT XPC REPLY: %s", v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v4);
  v7 = MEMORY[0x277D86468];
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    if (!v2)
    {
      v8 = xpc_null_create();
      v2 = 0;
      goto LABEL_16;
    }
  }

  if (MEMORY[0x2743EA150](v2) == v7)
  {
    xpc_retain(v2);
    v8 = v2;
  }

  else
  {
    v8 = xpc_null_create();
  }

LABEL_16:
  xpc_release(v2);
  if (MEMORY[0x2743EA150](v8) == v7)
  {
    AWDSimpleServerFacade::setState_sync(v3, 1);
  }

  xpc_release(v8);
}

void sub_274301434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t *sub_274301480(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  if (MEMORY[0x2743EA150](*(*v1 + 40)) == MEMORY[0x277D86450])
  {
    v3 = *(v2 + 40);
    v4 = v1[1];
    v5 = *(v2 + 24);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = sub_2743015BC;
    handler[3] = &unk_279ED6E98;
    handler[4] = v2;
    xpc_connection_send_message_with_reply(v3, v4, v5, handler);
  }

  else
  {
    syslog(3, "Error! send: getServer_sync is NULL");
  }

  sub_274301564(&v8);
  return sub_2742E8D64(&v7);
}

void sub_274301548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_274301564(va1);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_274301564(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x2743E9A90](v2, 0xA0C40AFF93C70);
  }

  return a1;
}

void sub_2743015BC(uint64_t a1, xpc_object_t object)
{
  v2 = object;
  v3 = *(a1 + 32);
  if (object)
  {
    xpc_retain(object);
    v4 = v2;
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = MEMORY[0x2743EA070](v4);
  sub_2742F6A8C(__p, v5);
  free(v5);
  if (v10 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  syslog(3, "GOT XPC REPLY: %s", v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v4);
  v7 = MEMORY[0x277D86468];
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    if (!v2)
    {
      v8 = xpc_null_create();
      v2 = 0;
      goto LABEL_16;
    }
  }

  if (MEMORY[0x2743EA150](v2) == v7)
  {
    xpc_retain(v2);
    v8 = v2;
  }

  else
  {
    v8 = xpc_null_create();
  }

LABEL_16:
  xpc_release(v2);
  if (MEMORY[0x2743EA150](v8) == v7)
  {
    AWDSimpleServerFacade::setState_sync(v3, 1);
  }

  xpc_release(v8);
}

void sub_27430170C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

awd::AWDLoggingMetric *awd::AWDLoggingMetric::AWDLoggingMetric(awd::AWDLoggingMetric *this)
{
  *awd::AWDBasicConfigType::AWDBasicConfigType(this, 0) = &unk_288352480;
  *(this + 3) = dispatch_queue_create("com.apple.awd.AWDLoggingMetric", 0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_274301820;
  aBlock[3] = &unk_279ED6EB8;
  aBlock[4] = this;
  v2 = _Block_copy(aBlock);
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 4) = v2;
  *(this + 5) = this + 48;
  return this;
}

void sub_274301820(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2742E7000, v1, OS_LOG_TYPE_DEFAULT, "logging-metric:#E Did not find a QueriableMetricCallbackBlockWithParameters for Logging.", v2, 2u);
  }
}

void awd::AWDLoggingMetric::~AWDLoggingMetric(awd::AWDLoggingMetric *this)
{
  *this = &unk_288352480;
  v2 = this + 40;
  v3 = *(this + 5);
  v4 = this + 48;
  if (v3 != this + 48)
  {
    do
    {
      v5 = *(v3 + 5);
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v3 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  sub_2742F0CA0(v2, *(this + 6));
  v9 = *(this + 4);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    dispatch_release(v10);
  }

  awd::AWDBasicConfigType::~AWDBasicConfigType(this);
}

{
  awd::AWDLoggingMetric::~AWDLoggingMetric(this);

  JUMPOUT(0x2743E9A90);
}

void awd::AWDLoggingMetric::setConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = sub_274301A48;
  block[3] = &unk_2883524B0;
  v5 = *a2;
  v4 = a2[1];
  block[4] = a1;
  block[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v3, block);
  if (v7)
  {
    sub_2742E8DB8(v7);
  }
}

void sub_274301A48(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4[0] = a1[5];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::AWDLoggingMetric::setConfiguration_sync(v2, v4);
  if (v3)
  {

    sub_2742E8DB8(v3);
  }
}

void sub_274301ABC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2742E8DB8(v1);
  }

  _Unwind_Resume(exception_object);
}

void awd::AWDLoggingMetric::setConfiguration_sync(uint64_t a1, uint64_t *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v44 = *a2;
  v45 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::AWDBasicConfigType::setConfiguration(a1, &v44);
  if (v45)
  {
    sub_2742E8DB8(v45);
  }

  v6 = *a2;
  if (*a2)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = *(v6 + 8);
      v9 = &v8[v7];
      v10 = *MEMORY[0x277CBECE8];
      *&v5 = 67109120;
      v38 = v5;
      *&v5 = 67109634;
      v40 = v5;
      v37 = v9;
      do
      {
        v11 = *v8;
        v12 = *(*v8 + 132);
        if (v12)
        {
          if ((v12 & 8) != 0)
          {
            v43 = *(v11 + 32);
            if ((v12 & 0x80) != 0)
            {
              v19 = *(a1 + 8);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_2742E7000, v19, OS_LOG_TYPE_INFO, "logging-metric:#I Found Log in configuration", buf, 2u);
              }

              v20 = *(v11 + 72);
              if (!v20)
              {
                v20 = *(awd::profile::Profile::default_instance_ + 72);
              }

              v39 = &v36;
              v21 = *(v20 + 16);
              MEMORY[0x28223BE20]();
              v22 = (8 * v21 + 15) & 0xFFFFFFFF0;
              v23 = (&v36 - v22);
              if ((8 * v21) >= 0x200)
              {
                v24 = 512;
              }

              else
              {
                v24 = 8 * v21;
              }

              bzero(&v36 - v22, v24);
              MEMORY[0x28223BE20]();
              v25 = (&v36 - v22);
              bzero(v25, v24);
              if (v21 >= 1)
              {
                for (i = 0; i != v21; ++i)
                {
                  v27 = *(*(v20 + 8) + 8 * i);
                  sub_2742F6A8C(&v42, "No Key");
                  sub_2742F6A8C(&v41, &unk_2743220EF);
                  v28 = *(v27 + 28);
                  if (v28)
                  {
                    std::string::operator=(&v42, *(v27 + 8));
                    v28 = *(v27 + 28);
                  }

                  if ((v28 & 2) != 0)
                  {
                    std::string::operator=(&v41, *(v27 + 16));
                  }

                  v29 = *(a1 + 8);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    v30 = &v42;
                    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v30 = v42.__r_.__value_.__r.__words[0];
                    }

                    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v31 = &v41;
                    }

                    else
                    {
                      v31 = v41.__r_.__value_.__r.__words[0];
                    }

                    *buf = v40;
                    *&buf[4] = i;
                    v47 = 2080;
                    v48 = v30;
                    v49 = 2080;
                    v50 = v31;
                    _os_log_impl(&dword_2742E7000, v29, OS_LOG_TYPE_INFO, "logging-metric:#I Log's param #%d %s:%s", buf, 0x1Cu);
                  }

                  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v32 = &v42;
                  }

                  else
                  {
                    v32 = v42.__r_.__value_.__r.__words[0];
                  }

                  v23[i] = CFStringCreateWithCString(v10, v32, 0x8000100u);
                  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v33 = &v41;
                  }

                  else
                  {
                    v33 = v41.__r_.__value_.__r.__words[0];
                  }

                  v25[i] = CFStringCreateWithCString(v10, v33, 0x8000100u);
                  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v41.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v42.__r_.__value_.__l.__data_);
                  }
                }
              }

              v34 = CFDictionaryCreate(v10, v23, v25, v21, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              *buf = &v43;
              sub_274302394(a1 + 40, &v43)[5] = v34;
              if (v21 > 0)
              {
                do
                {
                  CFRelease(*v23);
                  CFRelease(*v25++);
                  ++v23;
                  --v21;
                }

                while (v21);
              }

              v9 = v37;
            }

            goto LABEL_50;
          }

          v17 = *(v11 + 8);
          v18 = *(a1 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v38;
            *&buf[4] = v17;
            v14 = v18;
            v15 = "logging-metric:#E AWDLoggingMetric: Got profile 0x%x with no trigger id.";
            v16 = 8;
            goto LABEL_14;
          }
        }

        else
        {
          v13 = *(a1 + 8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v14 = v13;
            v15 = "logging-metric:#E AWDLoggingMetric: Got profile with no profile id.";
            v16 = 2;
LABEL_14:
            _os_log_impl(&dword_2742E7000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
          }
        }

LABEL_50:
        ++v8;
      }

      while (v8 != v9);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void sub_274301F2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    sub_2742E8DB8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_274301F7C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_274301F98(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void awd::AWDLoggingMetric::registerQueriableMetricCallbackForLogging(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = sub_27430201C;
  v3[3] = &unk_279ED6EE0;
  v3[4] = a2;
  v3[5] = a1;
  dispatch_async(v2, v3);
}

void sub_27430201C(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v4 = *(v2 + 32);
  *(v2 + 32) = v1;
  if (v4)
  {
    _Block_release(v4);
  }
}

void awd::AWDLoggingMetric::trigger(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_2743020D8;
  block[3] = &unk_279ED6F00;
  block[4] = a1;
  block[5] = a2;
  v5 = a3;
  dispatch_async(v3, block);
}

void awd::AWDLoggingMetric::trigger_sync(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v7 = a1 + 48;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= HIDWORD(a2);
      v10 = v8 < HIDWORD(a2);
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != a1 + 48 && *(v7 + 32) <= HIDWORD(a2))
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = _Block_copy(v11);
      }

      else
      {
        v12 = 0;
      }

      Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *(v7 + 40));
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 1174405120;
      block[2] = sub_274302260;
      block[3] = &unk_2883524E0;
      block[4] = a1;
      v19 = a2;
      v20 = a3;
      if (v12)
      {
        v15 = _Block_copy(v12);
      }

      else
      {
        v15 = 0;
      }

      aBlock = v15;
      v18 = Copy;
      dispatch_async(global_queue, block);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v12)
      {
        _Block_release(v12);
      }
    }
  }
}

void sub_274302244(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_274302260(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 60);
    v5 = *(a1 + 64);
    v8[0] = 67109632;
    v8[1] = v3;
    v9 = 1024;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_2742E7000, v2, OS_LOG_TYPE_INFO, "logging-metric:#I Calling callback on Logging metric for Trigger(cid=0x%x, trid=0x%x, sid=%u)", v8, 0x14u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 48));
  }

  CFRelease(*(a1 + 48));
  v7 = *MEMORY[0x277D85DE8];
}

void *sub_27430233C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_274302370(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *sub_274302394(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

void AWDObserverConnection::createConfigurationDict(AWDObserverConnection *this@<X0>, xpc_object_t *a2@<X8>)
{
  v5 = this;
  if (v5 && [(AWDObserverConnection *)v5 count])
  {
    sub_274302538(v5, &v6);
    v4 = v6;
    *a2 = v6;
    if (v4 && MEMORY[0x2743EA150](v4) == MEMORY[0x277D86468])
    {
      xpc_retain(v4);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v4);
  }

  else
  {
    *a2 = xpc_null_create();
  }
}

void sub_274302538(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = xpc_array_create(0, 0);
      if (v5 || (v5 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x2743EA150](v5) == MEMORY[0x277D86440])
        {
          xpc_retain(v5);
          v6 = v5;
        }

        else
        {
          v6 = xpc_null_create();
        }
      }

      else
      {
        v6 = xpc_null_create();
        v5 = 0;
      }

      xpc_release(v5);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v11)
      {
        v12 = *v34;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v34 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v33 + 1) + 8 * i);
            sub_274302538(value);
            xpc_array_append_value(v6, value[0]);
            xpc_release(value[0]);
          }

          v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
        }

        while (v11);
      }

      *a2 = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        *a2 = xpc_null_create();
      }

      xpc_release(v6);
      goto LABEL_44;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_4;
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    v8 = v7;
    if (v7)
    {
      v32 = v7;
    }

    else
    {
      v8 = xpc_null_create();
      v32 = v8;
      if (!v8)
      {
        v9 = xpc_null_create();
        v8 = 0;
        goto LABEL_32;
      }
    }

    if (MEMORY[0x2743EA150](v8) == MEMORY[0x277D86468])
    {
      xpc_retain(v8);
LABEL_33:
      xpc_release(v8);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v3;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v16)
      {
        v17 = *v29;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v28 + 1) + 8 * j);
            v20 = [v15 objectForKey:v19];
            sub_274302538(&v26);
            v21 = v19;
            v22 = [v19 UTF8String];
            value[0] = &v32;
            value[1] = v22;
            sub_2742ED8B0(value, &v26, &object);
            xpc_release(object);
            object = 0;
            xpc_release(v26);
            v26 = 0;
          }

          v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v16);
      }

      v23 = v32;
      *a2 = v32;
      if (v23)
      {
        xpc_retain(v23);
      }

      else
      {
        *a2 = xpc_null_create();
      }

      xpc_release(v32);
      goto LABEL_44;
    }

    v9 = xpc_null_create();
LABEL_32:
    v32 = v9;
    goto LABEL_33;
  }

  v4 = xpc_string_create([v3 UTF8String]);
  *a2 = v4;
  if (!v4)
  {
LABEL_4:
    *a2 = xpc_null_create();
  }

LABEL_44:

  v24 = *MEMORY[0x277D85DE8];
}

void sub_2743028EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object)
{
  if (a2)
  {
    sub_2742EAB54(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AWDObserverConnection::AWDObserverConnection(AWDObserverConnection *this)
{
  AWDServerConnector::AWDServerConnector(this);
  *v2 = &unk_288352538;
  v2[9] = 0;
  *(this + 10) = xpc_null_create();
  ctu::OsLogLogger::OsLogLogger((this + 88), "com.apple.awd.framework", "observer");
}

void sub_274302B7C(_Unwind_Exception *a1)
{
  sub_274302BB0(v1 + 10);
  v3 = v1[9];
  v1[9] = 0;

  AWDServerConnector::~AWDServerConnector(v1);
  _Unwind_Resume(a1);
}

xpc_object_t *sub_274302BB0(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void AWDObserverConnection::~AWDObserverConnection(xpc_object_t *this)
{
  *this = &unk_288352538;
  MEMORY[0x2743E9730](this + 11);
  xpc_release(this[10]);
  v2 = this[9];
  this[9] = 0;
  this[10] = 0;

  AWDServerConnector::~AWDServerConnector(this);
}

{
  AWDObserverConnection::~AWDObserverConnection(this);

  JUMPOUT(0x2743E9A90);
}

void AWDObserverConnection::handleAwddStarted_sync(AWDObserverConnection *this)
{
  AWDServerConnector::handleAwddStarted_sync(this);

  AWDObserverConnection::sendConfiguration_sync(this);
}

void AWDObserverConnection::sendConfiguration_sync(AWDObserverConnection *this)
{
  sub_2742E8D20(&v8, this + 1);
  v3 = v8;
  v2 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_2742E8DB8(v2);
  }

  v4 = *(this + 10);
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3321888768;
  v5[2] = sub_274303638;
  v5[3] = &unk_2883525A8;
  v5[4] = this;
  v5[5] = v3;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AWDServerConnector::send(this, &object, "Observe", v5);
  xpc_release(object);
  object = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_274302DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, xpc_object_t object)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  xpc_release(object);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

void AWDObserverConnection::handleMessage_sync(uint64_t a1, void **a2)
{
  if (*(a1 + 72) && MEMORY[0x2743EA150](*a2) == MEMORY[0x277D86468])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = sub_274302EC4(*a2);
    (*(*(a1 + 72) + 16))();

    objc_autoreleasePoolPop(v4);
  }
}

__CFString *sub_274302EC4(void *a1)
{
  if (!a1)
  {
    v5 = [MEMORY[0x277CBEB68] null];
LABEL_12:
    v4 = v5;
    goto LABEL_41;
  }

  v2 = MEMORY[0x2743EA150]();
  if (v2 == MEMORY[0x277D864C0])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(a1)];
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = @"<bad string>";
    }
  }

  else
  {
    v3 = MEMORY[0x277D86440];
    if (v2 == MEMORY[0x277D86440])
    {
      xpc_retain(a1);
      if (MEMORY[0x2743EA150](a1) == v3)
      {
        xpc_retain(a1);
        v7 = a1;
      }

      else
      {
        v7 = xpc_null_create();
      }

      xpc_release(a1);
      v9 = MEMORY[0x277CBEB18];
      if (MEMORY[0x2743EA150](v7) == v3)
      {
        count = xpc_array_get_count(v7);
      }

      else
      {
        count = 0;
      }

      v4 = [v9 arrayWithCapacity:count];
      object = v7;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        object = xpc_null_create();
      }

      sub_2742EE7D4(&v25, &object, 0);
      xpc_release(object);
      v27 = v7;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        v27 = xpc_null_create();
      }

      if (MEMORY[0x2743EA150](v7) == v3)
      {
        v11 = xpc_array_get_count(v7);
      }

      else
      {
        v11 = 0;
      }

      sub_2742EE7D4(&object, &v27, v11);
      xpc_release(v27);
      v12 = v25;
      v13 = index;
      if (index != v24 || (v14 = object, v25 != object))
      {
        do
        {
          value = xpc_array_get_value(v12, v13);
          v16 = sub_274302EC4(value);
          [(__CFString *)v4 addObject:v16];

          v12 = v25;
          v13 = index + 1;
          index = v13;
          v14 = object;
        }

        while (v13 != v24 || v25 != object);
      }

      xpc_release(v14);
      xpc_release(v25);
      xpc_release(v7);
    }

    else
    {
      if (v2 != MEMORY[0x277D86468])
      {
        if (v2 == MEMORY[0x277D86448])
        {
          v5 = [MEMORY[0x277CCABB0] numberWithBool:xpc_BOOL_get_value(a1)];
        }

        else if (v2 == MEMORY[0x277D86498])
        {
          v5 = [MEMORY[0x277CCABB0] numberWithLongLong:xpc_int64_get_value(a1)];
        }

        else if (v2 == MEMORY[0x277D864C8])
        {
          v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:xpc_uint64_get_value(a1)];
        }

        else if (v2 == MEMORY[0x277D86458])
        {
          v19 = MEMORY[0x277CBEA90];
          bytes_ptr = xpc_data_get_bytes_ptr(a1);
          v5 = [v19 dataWithBytes:bytes_ptr length:xpc_data_get_length(a1)];
        }

        else
        {
          if (v2 != MEMORY[0x277D86470])
          {
            v4 = @"<unknown type>";
            goto LABEL_41;
          }

          v5 = [MEMORY[0x277CCABB0] numberWithDouble:xpc_double_get_value(a1)];
        }

        goto LABEL_12;
      }

      v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:xpc_dictionary_get_count(a1)];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_274303920;
      v21[3] = &unk_279ED6F28;
      v4 = v8;
      v22 = v4;
      xpc_dictionary_apply(a1, v21);
    }
  }

LABEL_41:

  return v4;
}

void AWDObserverConnection::setStateChangedCallback(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2743033DC;
  v5[3] = &unk_279ED6B98;
  v6 = v3;
  v7 = a1;
  v4 = v3;
  sub_274303BAC((a1 + 8), v5);
}

uint64_t sub_2743033DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = _Block_copy(*(a1 + 32));
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;

  return MEMORY[0x2821F96F8]();
}

void AWDObserverConnection::setObserverConfiguration(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  AWDObserverConnection::createConfigurationDict(v5, &object);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_274303544;
  v10[3] = &unk_288352578;
  v8 = object;
  v12 = a1;
  v13 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v13 = xpc_null_create();
  }

  v9 = v6;
  v11 = v9;
  sub_274303BAC((a1 + 8), v10);

  xpc_release(v13);
  v13 = 0;
  xpc_release(v8);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_274303544(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v3)
  {
    xpc_retain(*(a1 + 48));
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = *(v2 + 10);
  *(v2 + 10) = v3;
  xpc_release(v4);
  AWDObserverConnection::sendConfiguration_sync(v2);
  v5 = *(*(a1 + 32) + 16);

  return v5();
}

xpc_object_t sub_2743035C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void sub_274303638(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_14:
        sub_2742E8DB8(v7);
        goto LABEL_15;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = *a2;
      object = v9;
      v10 = MEMORY[0x277D86468];
      if (v9 && MEMORY[0x2743EA150](v9) == v10)
      {
        xpc_retain(v9);
      }

      else
      {
        object = xpc_null_create();
      }

      if (MEMORY[0x2743EA150](*a2) != MEMORY[0x277D864B0] && MEMORY[0x2743EA150](object) == v10)
      {
        value = xpc_dictionary_get_value(object, "error");
        v17 = *(v5 + 88);
        if (value)
        {
          if (os_log_type_enabled(*(v5 + 88), OS_LOG_TYPE_DEFAULT))
          {
            v19[0] = &object;
            v19[1] = "error";
            sub_2742ED5E8(v19, &v20);
            *buf = 0;
            v25 = 0;
            v26 = 0;
            xpc::dyn_cast_or_default();
            if (SHIBYTE(v26) < 0)
            {
              operator delete(*buf);
            }

            p_p = &__p;
            if (v22 < 0)
            {
              p_p = __p;
            }

            *v27 = 136315138;
            v28 = p_p;
            _os_log_impl(&dword_2742E7000, v17, OS_LOG_TYPE_DEFAULT, "#E SetObserverConfiguration failed: %s", v27, 0xCu);
            if (v22 < 0)
            {
              operator delete(__p);
            }

            xpc_release(v20);
          }

          goto LABEL_13;
        }

        if (os_log_type_enabled(*(v5 + 88), OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "#I SetObserverConfiguration configured successfully";
          v13 = v17;
          v14 = OS_LOG_TYPE_INFO;
          goto LABEL_12;
        }
      }

      else
      {
        v11 = *(v5 + 88);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v12 = "#E XPC connection failure";
          v13 = v11;
          v14 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
          _os_log_impl(&dword_2742E7000, v13, v14, v12, buf, 2u);
        }
      }

LABEL_13:
      xpc_release(object);
      objc_autoreleasePoolPop(v8);
      goto LABEL_14;
    }
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_274303884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_2742EAB54(exception_object);
}

uint64_t sub_2743038F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_274303910(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_274303920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_274302EC4(a3);
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v4 setObject:v5 forKey:v6];

  return 1;
}

void sub_274303A2C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_274303B00);
  __cxa_rethrow();
}

void sub_274303A6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_274303AC0(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_288352640))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274303B00(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t *sub_274303B2C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a1;
  v5 = v2;
  (*(**v2 + 32))(*v2, a2);
  sub_274300C68(&v5);
  return sub_2742E8D64(&v4);
}

void sub_274303B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_274300C68(&a10);
  sub_2742E8D64(&a9);
  _Unwind_Resume(a1);
}

void sub_274303BAC(void *a1, void *a2)
{
  v3 = a2;
  sub_2742E8D20(&v10, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_274303C88;
  block[3] = &unk_288352658;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    sub_2742E8DB8(v9);
  }

  if (v11)
  {
    sub_2742E8DB8(v11);
  }
}

uint64_t sub_274303C98(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_274303CB4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void sub_2743043C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *a1 = a4;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  awd::AWDTriggerFilter::AWDTriggerFilter(a1 + 24, a3, a4, a6);
  awd::AWDMetricBuffer::AWDMetricBuffer(a1 + 80, a4, a7);
  awd::SimpleMetricHelper::SimpleMetricHelper((a1 + 208), a4);
  *(a1 + 264) = *a6;
  v14 = a6[1];
  *(a1 + 272) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 280) = *a5;
  v15 = a5[1];
  *(a1 + 288) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = *a8;
  v16 = a8[1];
  *(a1 + 416) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2743045A8();
}

void sub_2743044E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 416);
  if (v4)
  {
    sub_2742E8DB8(v4);
  }

  sub_27430852C((v2 + 400));
  sub_2743087DC(va);
  sub_274306854((v2 + 368), 0);
  sub_274308788((v2 + 360), 0);
  v5 = *(v2 + 352);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_2742E9494(v2 + 320, *(v2 + 328));
  sub_274308698(va);
  v6 = *(v2 + 288);
  if (v6)
  {
    sub_2742E8DB8(v6);
  }

  v7 = *(v2 + 272);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  sub_274308560(v2 + 208);
  awd::AWDMetricBuffer::~AWDMetricBuffer((v2 + 80));
  sub_2743085AC(v2 + 24);
  v8 = *(v2 + 8);
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = *(v2 + 8);
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  _Unwind_Resume(a1);
}

void sub_274304790(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

uint64_t sub_2743047A8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2743047C4(uint64_t a1, uint64_t a2)
{
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v3 = *(*a2 + 72);
  v4 = *MEMORY[0x277CBECE8];
  if (v3)
  {
    v5 = *(*a2 + 64);
    v47 = *MEMORY[0x277CBED28];
    v46 = *MEMORY[0x277CBED10];
    v6 = 8 * v3;
    while (1)
    {
      v7 = *v5;
      if ((~*(*v5 + 28) & 3) == 0)
      {
        v8 = *(v7 + 16);
        if (!v8)
        {
          v8 = *(awd::profile::ConfigurationParameter::default_instance_ + 16);
        }

        v9 = *(v8 + 72);
        if ((v9 & 4) != 0)
        {
          v12 = *(v8 + 20);
          __p[0] = 0;
          *&valuePtr = v12;
          v13 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
          v14 = v13;
          if (v13)
          {
            goto LABEL_27;
          }

LABEL_21:
          cf = 0;
          goto LABEL_105;
        }

        if ((v9 & 8) != 0)
        {
          v15 = *(v8 + 24);
          __p[0] = 0;
          *&valuePtr = v15;
          v13 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
          v14 = v13;
          if (v13)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        if (v9)
        {
          v16 = *(v8 + 16);
          *&valuePtr = 0;
          LODWORD(__p[0]) = v16;
          v13 = CFNumberCreate(v4, kCFNumberIntType, __p);
          v14 = v13;
          if (v13)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        if ((v9 & 2) != 0)
        {
          v17 = *(v8 + 8);
          __p[0] = 0;
          *&valuePtr = v17;
          v13 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
          v14 = v13;
          if (v13)
          {
            goto LABEL_27;
          }
        }

        else if ((v9 & 0x10) != 0)
        {
          v18 = *(v8 + 40);
          *&valuePtr = 0;
          LODWORD(__p[0]) = v18;
          v13 = CFNumberCreate(v4, kCFNumberFloatType, __p);
          v14 = v13;
          if (v13)
          {
            goto LABEL_27;
          }
        }

        else if ((v9 & 0x20) != 0)
        {
          v19 = *(v8 + 32);
          __p[0] = 0;
          *&valuePtr = v19;
          v13 = CFNumberCreate(v4, kCFNumberDoubleType, &valuePtr);
          v14 = v13;
          if (v13)
          {
LABEL_27:
            cf = v13;
            CFRetain(v13);
            CFRelease(v14);
            goto LABEL_51;
          }
        }

        else if ((v9 & 0x80) != 0)
        {
          if (*(v8 + 44))
          {
            v20 = v47;
          }

          else
          {
            v20 = v46;
          }

          cf = v20;
          if (v20)
          {
            CFRetain(v20);
            CFRelease(v20);
LABEL_51:
            if (cf)
            {
              v22 = *(v7 + 8);
              if (*(v22 + 23) < 0)
              {
                sub_2742ECE78(v48, *v22, *(v22 + 1));
              }

              else
              {
                v23 = *v22;
                v49 = *(v22 + 2);
                *v48 = v23;
              }

              if (SHIBYTE(v49) < 0)
              {
                sub_2742ECE78(__p, v48[0], v48[1]);
              }

              else
              {
                *__p = *v48;
                v64 = v49;
              }

              v68 = 0;
              if (SHIBYTE(v64) < 0)
              {
                sub_2742ECE78(&valuePtr, __p[0], __p[1]);
              }

              else
              {
                valuePtr = *__p;
                v66 = v64;
              }

              __dst[0] = 0;
              if (ctu::cf::convert_copy())
              {
                v24 = __dst[0];
                v68 = __dst[0];
              }

              else
              {
                v24 = 0;
              }

              if (SHIBYTE(v66) < 0)
              {
                operator delete(valuePtr);
              }

              v67 = v24;
              if (SHIBYTE(v64) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v49) < 0)
              {
                operator delete(v48[0]);
              }

              if (v67)
              {
                v25 = v55;
                if (v55 >= v56)
                {
                  v27 = (v55 - v54) >> 3;
                  if ((v27 + 1) >> 61)
                  {
                    sub_2742EAB3C();
                  }

                  v28 = (v56 - v54) >> 2;
                  if (v28 <= v27 + 1)
                  {
                    v28 = v27 + 1;
                  }

                  if (v56 - v54 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v29 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v29 = v28;
                  }

                  if (v29)
                  {
                    sub_2742F652C(&v54, v29);
                  }

                  v30 = (8 * v27);
                  *v30 = v67;
                  v26 = 8 * v27 + 8;
                  v31 = v30 - (v55 - v54);
                  memcpy(v31, v54, v55 - v54);
                  v32 = v54;
                  v54 = v31;
                  v55 = v26;
                  v56 = 0;
                  if (v32)
                  {
                    operator delete(v32);
                  }
                }

                else
                {
                  *v55 = v67;
                  v26 = (v25 + 8);
                }

                v55 = v26;
                v33 = v52;
                if (v52 >= v53)
                {
                  v35 = (v52 - v51) >> 3;
                  if ((v35 + 1) >> 61)
                  {
                    sub_2742EAB3C();
                  }

                  v36 = (v53 - v51) >> 2;
                  if (v36 <= v35 + 1)
                  {
                    v36 = v35 + 1;
                  }

                  if (v53 - v51 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v37 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v37 = v36;
                  }

                  if (v37)
                  {
                    sub_274308A00(&v51, v37);
                  }

                  v38 = (8 * v35);
                  *v38 = cf;
                  v34 = 8 * v35 + 8;
                  v39 = v38 - (v52 - v51);
                  memcpy(v39, v51, v52 - v51);
                  v40 = v51;
                  v51 = v39;
                  v52 = v34;
                  v53 = 0;
                  if (v40)
                  {
                    operator delete(v40);
                  }
                }

                else
                {
                  *v52 = cf;
                  v34 = (v33 + 8);
                }

                v52 = v34;
                if (v58 >= v59)
                {
                  v41 = sub_274308A48(&v57, &v67);
                }

                else
                {
                  v41 = sub_27430862C(v58, v67) + 1;
                }

                v58 = v41;
                if (v41 >= v59)
                {
                  v42 = sub_274308D04(&v57, &cf);
                }

                else
                {
                  *v41 = 0;
                  *v41 = cf;
                  v42 = v41 + 1;
                  cf = 0;
                }

                v58 = v42;
                if (v67)
                {
                  CFRelease(v67);
                }
              }

              if (cf)
              {
                CFRelease(cf);
              }
            }
          }
        }

        else if ((v9 & 0x40) != 0)
        {
          v10 = *(v8 + 48);
          if (*(v10 + 23) < 0)
          {
            sub_2742ECE78(__dst, *v10, *(v10 + 1));
          }

          else
          {
            v11 = *v10;
            v61 = *(v10 + 2);
            *__dst = v11;
          }

          if (SHIBYTE(v61) < 0)
          {
            sub_2742ECE78(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v64 = v61;
          }

          v62 = 0;
          if (SHIBYTE(v64) < 0)
          {
            sub_2742ECE78(&valuePtr, __p[0], __p[1]);
          }

          else
          {
            valuePtr = *__p;
            v66 = v64;
          }

          v67 = 0;
          if (ctu::cf::convert_copy())
          {
            v21 = v67;
            v62 = v67;
            v68 = 0;
            sub_27430500C(&v68);
          }

          else
          {
            v21 = 0;
          }

          if (SHIBYTE(v66) < 0)
          {
            operator delete(valuePtr);
          }

          if (SHIBYTE(v64) < 0)
          {
            operator delete(__p[0]);
          }

          cf = v21;
          if (v21)
          {
            CFRetain(v21);
            CFRelease(v21);
          }

          if (SHIBYTE(v61) < 0)
          {
            operator delete(__dst[0]);
          }

          goto LABEL_51;
        }
      }

LABEL_105:
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        v43 = v51;
        v44 = v54;
        v45 = v55;
        goto LABEL_108;
      }
    }
  }

  v45 = 0;
  v43 = 0;
  v44 = 0;
LABEL_108:
  *&valuePtr = CFDictionaryCreate(v4, v44, v43, (v45 - v44) >> 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  sub_274305040((a1 + 400), &valuePtr);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  *&valuePtr = &v57;
  sub_274308954(&valuePtr);
}

void sub_274304E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, char *a22, char *a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, const void *a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_27430500C(&a34);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  a22 = &a25;
  sub_274308954(&a22);
  _Unwind_Resume(a1);
}

const void **sub_27430500C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_274305040(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_27430507C(uint64_t a1, uint64_t a2, char a3)
{
  if (((a3 & 1) != 0 || (*(a1 + 4) & 1) == 0) && *a2 && *(*a2 + 192))
  {
    awd::AWDTriggerFilter::getAllQueriableMetrics((a1 + 24), &v19);
    awd::AWDTriggerFilter::getAllTriggers((a1 + 24), &v17);
    v5 = *(*a2 + 192);
    if (v5)
    {
      v6 = _Block_copy(v5);
    }

    else
    {
      v6 = 0;
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = sub_27430591C;
    block[3] = &unk_2883526E8;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_274308E14(&v11, v19, v20, (v20 - v19) >> 2);
    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_274308E14(&__p, v17, v18, (v18 - v17) >> 2);
    dispatch_async(global_queue, block);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }

    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }
  }
}

void sub_274305218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  v19 = *(v17 - 80);
  if (v19)
  {
    *(v17 - 72) = v19;
    operator delete(v19);
  }

  v20 = *(v17 - 56);
  if (v20)
  {
    *(v17 - 48) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_274305284(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 4) & 1) == 0 && *a2 && *(*a2 + 200))
  {
    sub_274305B04(&v10, (a1 + 400));
    v3 = *(*a2 + 200);
    if (v3)
    {
      v4 = _Block_copy(v3);
    }

    else
    {
      v4 = 0;
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = sub_274305B3C;
    block[3] = &unk_288352718;
    if (v4)
    {
      v6 = _Block_copy(v4);
    }

    else
    {
      v6 = 0;
    }

    aBlock = v6;
    cf = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    dispatch_async(global_queue, block);
    if (cf)
    {
      CFRelease(cf);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v4)
    {
      _Block_release(v4);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

void sub_2743053C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 296);
  for (i = *(a1 + 304); v3 != i; v3 += 2)
  {
    v7 = v3[1];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        if (*v3)
        {
          v10 = *(*v3 + 184);
          if (v10)
          {
            (*(v10 + 16))(v10, a2, a3);
          }
        }

        sub_2742E8DB8(v9);
      }
    }
  }
}

void sub_274305464(uint64_t a1, uint64_t *a2)
{
  *(a1 + 4) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  v5 = a2[1];
  v8 = *a2;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::AWDTriggerFilter::setConfiguration(a1 + 24, &v8);
  if (v9)
  {
    sub_2742E8DB8(v9);
  }

  v6 = a2[1];
  *&v7 = *a2;
  *(&v7 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  awd::AWDMetricBuffer::setConfiguration((a1 + 80), &v7);
}

void sub_274305680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    sub_2742E8DB8(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2743056E0(unsigned int *a1, unsigned int **a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = **a2;
  shouldSubmitMetricAsTrigger = awd::AWDTriggerFilter::shouldSubmitMetricAsTrigger((a1 + 6), **a2);
  shouldBufferMetric = awd::AWDMetricBuffer::shouldBufferMetric(a1 + 10, v4);
  if (shouldBufferMetric || shouldSubmitMetricAsTrigger)
  {
    v7 = **(a1 + 2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(*a2 + 3) - *(*a2 + 2);
      ctu::hex();
      v9 = v20 >= 0 ? &__p : __p;
      *buf = 67109634;
      v22 = v4;
      v23 = 2048;
      v24 = v8;
      v25 = 2080;
      v26 = v9;
      _os_log_impl(&dword_2742E7000, v7, OS_LOG_TYPE_INFO, "core:#I Got trigger metric 0x%x; Metric: %zd bytes [%s]", buf, 0x1Cu);
      if (v20 < 0)
      {
        operator delete(__p);
      }
    }

    v10 = sub_274306070(a1, *a2);
    v11 = v10;
    if (shouldBufferMetric)
    {
      awd::AWDMetricBuffer::buffer(a1 + 10, a2);
    }

    if (v11)
    {
      if (shouldSubmitMetricAsTrigger == 1 || shouldSubmitMetricAsTrigger == 2 && (v10 = awd::AWDTriggerFilter::evaluateRandomSamplingForTrigger((a1 + 6), v4), v10))
      {
        AWDTimestamp = awd::getAWDTimestamp(v10);
        v13 = **(a1 + 2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v22 = v4;
          _os_log_impl(&dword_2742E7000, v13, OS_LOG_TYPE_INFO, "core:#I Sending a trigger for metric 0x%x", buf, 8u);
        }

        v14 = *(a1 + 35);
        v15 = *v14;
        v16 = *v14 + 1;
        *v14 = v16;
        v17 = *a1 | (v4 << 32);
        awd::AWDMetricBuffer::pushTriggerToDaemon(a1 + 10, v17, v15 + 1, AWDTimestamp);
        sub_2743061AC(a1, v17, v16);
      }

      else if (os_log_type_enabled(**(a1 + 2), OS_LOG_TYPE_DEBUG))
      {
        sub_27431C7D4();
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_274305930(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a1;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_274308E14(&v8, *a2, a2[1], (a2[1] - *a2) >> 2);
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_274308E14(&__p, *a3, a3[1], (a3[1] - *a3) >> 2);
  (*(v4 + 16))(v4, &v8, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }
}

void sub_2743059D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_274305A04(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[5] = 0;
  a1[4] = v4;
  a1[6] = 0;
  a1[7] = 0;
  sub_274308E14((a1 + 5), a2[5], a2[6], (a2[6] - a2[5]) >> 2);
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  return sub_274308E14((a1 + 8), a2[8], a2[9], (a2[9] - a2[8]) >> 2);
}

void sub_274305A80(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 32);
  if (v5)
  {
    _Block_release(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_274305AB4(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

const void **sub_274305B04(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **sub_274305B4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;

  return sub_274305B04((a1 + 40), (a2 + 40));
}