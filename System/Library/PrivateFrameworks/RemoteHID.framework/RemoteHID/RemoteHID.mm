void OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(*a3 + 16) - 4;
  *(v3 + 8) = *(*a3 + 8) + 4;
  *(v3 + 16) = v4;
}

void OUTLINED_FUNCTION_9()
{

  pb_encode_submessage(v0);
}

__n128 OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a3 + 8);
  result = *a1;
  v5 = *(a1 + 16);
  return result;
}

void sub_261D9D378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void HIDTimeSyncPropertyHandler(void *a1, unsigned int a2, int a3, void *a4)
{
  if (a3 == -536870608)
  {
    v5 = a1;
    v4 = [v5 endpoint];
    [v4 handlePropertyChange:v5];
  }
}

void sub_261D9D710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HIDAccesorySessionEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v8 = RemoteHIDLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      HIDAccesorySessionEventCallback();
    }
  }

  return [a4 btSessionEventHandler:a1 event:a2 result:a3];
}

void HIDAccessoryEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v8 = objc_autoreleasePoolPush();
  [v9 btAccessoryEventHandler:a3 event:a2 state:a4];
  objc_autoreleasePoolPop(v8);
}

void HIDAccesoryServiceEventCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a5 == 0;
  v13 = RemoteHIDLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 67109888;
      v18 = a3;
      v19 = 1024;
      v20 = a4;
      v21 = 1024;
      v22 = 0;
      v23 = 2048;
      v24 = a6;
      _os_log_impl(&dword_261D9C000, v14, OS_LOG_TYPE_INFO, "HIDAccesoryServiceEventCallback eventType:%d event:%d result:%d data:%p", &v17, 0x1Eu);
    }

    v14 = a6;
    v15 = objc_autoreleasePoolPush();
    [v14 btServiceEventHandler:a1 services:a2 eventType:a3 event:a4 result:0];
    objc_autoreleasePoolPop(v15);
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = 67109888;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    v21 = 1024;
    v22 = a5;
    v23 = 2048;
    v24 = a6;
    _os_log_error_impl(&dword_261D9C000, v14, OS_LOG_TYPE_ERROR, "HIDAccesoryServiceEventCallback eventType:%d event:%d result:%d data:%p", &v17, 0x1Eu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void HIDAccesoryCustomMessageCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v10 = objc_autoreleasePoolPush();
  [v11 btDeviceMessageHandler:a2 type:a3 data:a4 size:a5];
  objc_autoreleasePoolPop(v10);
}

void sub_261DA0288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_7_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_261DA1E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_261DA2040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261DA2410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 8) = 1024;
  *(a4 + 10) = v4;
  return result;
}

id RemoteHIDLog()
{
  if (RemoteHIDLog_onceToken != -1)
  {
    RemoteHIDLog_cold_1();
  }

  v1 = RemoteHIDLog_log;

  return v1;
}

uint64_t __RemoteHIDLog_block_invoke()
{
  RemoteHIDLog_log = os_log_create("com.apple.RemoteHID", "default");

  return MEMORY[0x2821F96F8]();
}

id RemoteHIDLogPackets()
{
  if (RemoteHIDLogPackets_onceToken != -1)
  {
    RemoteHIDLogPackets_cold_1();
  }

  v1 = RemoteHIDLogPackets_log;

  return v1;
}

uint64_t __RemoteHIDLogPackets_block_invoke()
{
  RemoteHIDLogPackets_log = os_log_create("com.apple.RemoteHID", "packets");

  return MEMORY[0x2821F96F8]();
}

BOOL pb_field_iter_begin(void *a1, uint64_t a2, uint64_t a3)
{
  memset(a1, 0, 0x40uLL);
  *a1 = a2;
  a1[1] = a3;

  return load_descriptor_values(a1);
}

BOOL load_descriptor_values(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (v1 < v3)
  {
    v4 = (*v2 + 4 * *(a1 + 18));
    v5 = *v4;
    v6 = BYTE1(*v4);
    *(a1 + 30) = v6;
    switch(v5 & 3)
    {
      case 1u:
        v11 = v4[1];
        *(a1 + 28) = HIWORD(v5) & 0xFFF;
        *(a1 + 24) = (v11 >> 22) & 0x3C0 | (v5 >> 2);
        v7 = v5 >> 28;
        v8 = v11;
        v9 = HIWORD(v11) & 0xFFF;
        break;
      case 2u:
        v7 = v4[1];
        v8 = v4[2];
        v9 = v4[3];
        v10 = HIWORD(v5);
        goto LABEL_6;
      case 3u:
        v7 = v4[1];
        v8 = v4[2];
        v9 = v4[3];
        v10 = v4[4];
LABEL_6:
        *(a1 + 28) = v10;
        *(a1 + 24) = (v7 >> 2) & 0xFFC0 | (v5 >> 2);
        break;
      default:
        *(a1 + 28) = 1;
        *(a1 + 24) = v5 >> 2;
        v7 = HIBYTE(v5) & 0xF;
        v8 = BYTE2(v5);
        v9 = v5 >> 28;
        break;
    }

    *(a1 + 26) = v9;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 + v8);
      *(a1 + 32) = v13;
      v14 = v5 & 0x3000;
      v15 = (a1 + 28);
      if ((v6 & 0x40 | 0x80) != 0x80)
      {
        v15 = 0;
      }

      if (v14 == 0x2000)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v7)
      {
        v16 = v13 - v7;
      }

      *(a1 + 48) = v16;
      if ((v6 & 0xC0) == 0x80)
      {
        v13 = *v13;
      }

      v17 = 40;
    }

    else
    {
      v13 = 0;
      *(a1 + 32) = 0;
      v17 = 48;
    }

    *(a1 + v17) = v13;
    if ((v6 & 0xE) == 8)
    {
      v18 = *(v2[1] + 8 * *(a1 + 22));
    }

    else
    {
      v18 = 0;
    }

    *(a1 + 56) = v18;
  }

  return v1 < v3;
}

BOOL pb_field_iter_begin_extension(void *a1, void *a2)
{
  v4 = a2 + 1;
  v5 = *(*a2 + 16);
  if ((**v5 & 0xC000) != 0x8000)
  {
    v4 = *v4;
  }

  result = pb_field_iter_begin(a1, v5, v4);
  a1[6] = a2 + 3;
  return result;
}

BOOL pb_field_iter_next(_WORD *a1)
{
  advance_iterator(a1);
  load_descriptor_values(a1);
  return a1[8] != 0;
}

double advance_iterator(_WORD *a1)
{
  v1 = a1[8] + 1;
  a1[8] = v1;
  if (*(*a1 + 32) <= v1)
  {
    result = 0.0;
    *(a1 + 2) = 0;
  }

  else
  {
    v2 = a1[9];
    v3 = *(**a1 + 4 * v2);
    a1[9] = v2 + (1 << (v3 & 3));
    v4 = a1[10];
    if ((v3 & 0x3000) == 0)
    {
      ++v4;
    }

    a1[10] = v4;
    if ((v3 & 0xE00) == 0x800)
    {
      v5 = a1[11] + 1;
    }

    else
    {
      v5 = a1[11];
    }

    a1[11] = v5;
  }

  return result;
}

uint64_t pb_field_iter_find(unsigned __int16 *a1, unsigned int a2)
{
  v2 = a1[12];
  if (v2 == a2)
  {
    return 1;
  }

  if (*(*a1 + 36) < a2)
  {
    return 0;
  }

  v6 = a1[8];
  if (v2 > a2)
  {
    a1[8] = *(*a1 + 32);
  }

  while (1)
  {
    advance_iterator(a1);
    OUTLINED_FUNCTION_0_2();
    if (((a2 ^ (v7 >> 2)) & 0x3F) == 0)
    {
      load_descriptor_values(a1);
      if (a1[12] == a2 && (a1[15] & 0xF) != 0xA)
      {
        break;
      }
    }

    if (a1[8] == v6)
    {
      load_descriptor_values(a1);
      return 0;
    }
  }

  return 1;
}

BOOL pb_field_iter_find_extension(uint64_t a1)
{
  if ((*(a1 + 30) & 0xF) == 0xA)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  while (1)
  {
    advance_iterator(a1);
    OUTLINED_FUNCTION_0_2();
    if ((v4 & 0xF00) == 0xA00)
    {
      break;
    }

    if (*(a1 + 16) == v3)
    {
      load_descriptor_values(a1);
      return 0;
    }
  }

  return load_descriptor_values(a1);
}

uint64_t pb_default_field_callback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 26) == 16)
  {
    v4 = *(a3 + 40);
    if (v4)
    {
      if (a1)
      {
        v5 = *v4;
        if (*v4)
        {
          v6 = v4 + 1;
          return v5(a1, a3, v6);
        }
      }

      if (a2)
      {
        v5 = *v4;
        if (*v4)
        {
          v6 = v4 + 1;
          a1 = a2;
          return v5(a1, a3, v6);
        }
      }
    }
  }

  return 1;
}

uint64_t (*pb_ostream_from_buffer@<X0>(uint64_t (*result)(uint64_t a1, char *a2, uint64_t a3)@<X0>, uint64_t (*a2)(uint64_t a1, char *a2, uint64_t a3)@<X1>, uint64_t (**a3)(uint64_t a1, char *a2, uint64_t a3)@<X8>))(uint64_t a1, char *a2, uint64_t a3)
{
  *a3 = buf_write;
  a3[1] = result;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = a2;
  return result;
}

uint64_t buf_write(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  for (*(a1 + 8) = &v3[a3]; a3; --a3)
  {
    v4 = *a2++;
    *v3++ = v4;
  }

  return 1;
}

void pb_write(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *a1 && ((v5 = a1[3], v6 = __CFADD__(v5, a3), v7 = v5 + a3, v6) || v7 > a1[2] || ((*a1)(a1, a2, a3) & 1) == 0))
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_4_2(v8);
  }

  else
  {
    a1[3] += a3;
  }
}

void pb_encode(void *a1)
{
  if (pb_field_iter_begin_const(v9))
  {
    do
    {
      if ((v10 & 0xF) == 0xA)
      {
        for (i = v11; ; i = v3 + 2)
        {
          v3 = *i;
          if (!*i)
          {
            break;
          }

          if (*(*v3 + 8))
          {
            v4 = OUTLINED_FUNCTION_2_1();
            if ((v5(v4) & 1) == 0)
            {
              return;
            }
          }

          else
          {
            if ((pb_field_iter_begin_extension_const(v12, v3) & 1) == 0)
            {
              OUTLINED_FUNCTION_1_2();
              OUTLINED_FUNCTION_4_2(v8);
              return;
            }

            encode_field(a1, v12);
            if (!v6)
            {
              return;
            }
          }
        }
      }

      else
      {
        encode_field(a1, v9);
        if (!v7)
        {
          return;
        }
      }
    }

    while (pb_field_iter_next(v9));
  }
}

void encode_field(void *a1, uint64_t a2)
{
  v4 = *(a2 + 30);
  if ((v4 & 0x30) == 0x10)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      if (!*v5)
      {
        return;
      }
    }

    else if (v4 <= 0x3F)
    {
      if (pb_check_proto3_default_value(a2))
      {
        return;
      }

      LOBYTE(v4) = *(a2 + 30);
    }
  }

  else if ((v4 & 0x30) == 0x30 && **(a2 + 48) != *(a2 + 24))
  {
    return;
  }

  v6 = *(a2 + 40);
  if (!v6)
  {
    if ((v4 & 0x30) != 0)
    {
      return;
    }

    OUTLINED_FUNCTION_6_2();
    v9 = "missing required field";
    goto LABEL_27;
  }

  if ((v4 & 0xC0) == 0x40)
  {
    v7 = *(*a2 + 24);
    if (!v7 || (v7(0, a1, a2) & 1) != 0)
    {
      return;
    }

    OUTLINED_FUNCTION_6_2();
    v9 = "callback error";
    goto LABEL_27;
  }

  if ((v4 & 0x30) == 0x20)
  {
    v10 = *(a2 + 48);
    v11 = *v10;
    if (!*v10)
    {
      return;
    }

    if ((v4 & 0xC0) != 0x80 && v11 > *(a2 + 28))
    {
      OUTLINED_FUNCTION_6_2();
      v9 = "array max size exceeded";
LABEL_27:
      if (!v8)
      {
        v8 = v9;
      }

      a1[4] = v8;
      return;
    }

    if ((v4 & 0xE) >= 6)
    {
      for (i = 0; i < v11; ++i)
      {
        if ((*(a2 + 30) & 0xCE) == 0x86)
        {
          *(a2 + 40) = *v6;
          v18 = OUTLINED_FUNCTION_2_1();
          if (v20)
          {
            encode_basic_field(v18, v19);
          }

          else
          {
            pb_encode_tag_for_field(v18, v19);
            if ((v25 & 1) == 0)
            {
              *(a2 + 40) = v6;
              return;
            }

            v26 = OUTLINED_FUNCTION_7_2();
            pb_encode_varint(v26, v27);
          }

          *(a2 + 40) = v6;
          if ((v21 & 1) == 0)
          {
            return;
          }
        }

        else
        {
          v22 = OUTLINED_FUNCTION_2_1();
          encode_basic_field(v22, v23);
          if (!v24)
          {
            return;
          }

          v6 = *(a2 + 40);
        }

        v6 = (v6 + *(a2 + 26));
        *(a2 + 40) = v6;
      }
    }

    else
    {
      pb_encode_tag(a1, 2u, *(a2 + 24));
      if (!v14)
      {
        return;
      }

      v15 = *(a2 + 30) & 0xF;
      if (v15 == 5)
      {
        v16 = 8 * v11;
      }

      else
      {
        if (v15 != 4)
        {
          v28 = 0;
          OUTLINED_FUNCTION_3_2();
          v29 = *(a2 + 40);
          while (1)
          {
            if (v28 >= v11)
            {
              *(a2 + 40) = v29;
              v16 = v41[3];
              goto LABEL_54;
            }

            pb_enc_varint(v41, a2);
            if ((v30 & 1) == 0)
            {
              break;
            }

            OUTLINED_FUNCTION_5_2();
            ++v28;
          }

          OUTLINED_FUNCTION_6_2();
          v9 = "(none)";
          if (v42)
          {
            v9 = v42;
          }

          goto LABEL_27;
        }

        v16 = 4 * v11;
      }

LABEL_54:
      pb_encode_varint(a1, v16);
      if (v31)
      {
        if (*a1)
        {
          for (j = 0; j < v11; ++j)
          {
            v33 = *(a2 + 30) & 0xE;
            v34 = OUTLINED_FUNCTION_2_1();
            if (v36 == 4)
            {
              pb_enc_fixed(v34, v35);
              if ((v37 & 1) == 0)
              {
                return;
              }
            }

            else
            {
              pb_enc_varint(v34, v35);
              if (!v38)
              {
                return;
              }
            }

            OUTLINED_FUNCTION_5_2();
          }
        }

        else
        {
          v39 = OUTLINED_FUNCTION_7_2();
          pb_write(v39, v40, v16);
        }
      }
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_1();

    encode_basic_field(v12, v13);
  }
}

void pb_encode_ex(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 2) != 0)
  {

    pb_encode_submessage(a1);
  }

  else if ((a4 & 4) != 0)
  {
    v6 = 0;
    pb_encode(a1);
    if (v5)
    {
      pb_write(a1, &v6, 1);
    }
  }

  else
  {

    pb_encode(a1);
  }
}

void pb_encode_submessage(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_3_2();
  if ((pb_encode(&v15, v2) & 1) == 0)
  {
    v8 = v19;
LABEL_7:
    a1[4] = v8;
    return;
  }

  v3 = v18;
  v4 = OUTLINED_FUNCTION_2_1();
  pb_encode_varint(v4, v5);
  if (!v7)
  {
    return;
  }

  if (!*a1)
  {
    v10 = OUTLINED_FUNCTION_7_2();
    pb_write(v10, v11, v3);
    return;
  }

  if (a1[3] + v3 > a1[2])
  {
    OUTLINED_FUNCTION_1_2();
    v9 = "stream full";
    goto LABEL_12;
  }

  v12 = a1[1];
  v15 = *a1;
  v16 = v12;
  v18 = 0;
  v19 = 0;
  v17 = v3;
  pb_encode(&v15, v6);
  v13 = v18;
  v14 = a1[3] + v18;
  a1[1] = v16;
  v8 = v19;
  a1[3] = v14;
  a1[4] = v8;
  if (v13 != v3)
  {
    v9 = "submsg size changed";
LABEL_12:
    if (!v8)
    {
      v8 = v9;
    }

    goto LABEL_7;
  }
}

void pb_get_encoded_size(void *a1)
{
  OUTLINED_FUNCTION_3_2();
  pb_encode(v3);
  if (v2)
  {
    *a1 = v3[3];
  }
}

void pb_encode_varint(void *a1, unint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 > 0x7F)
  {
    i = 0;
    v4 = HIDWORD(a2);
    v5 = a2;
    while (i != 4)
    {
      if (!v4 && v5 < 0x80)
      {
        goto LABEL_10;
      }

      v6 = v5 | 0x80;
      v5 >>= 7;
      v9[i++] = v6;
    }

    v5 &= 0x7Fu;
    if (v4)
    {
      v5 |= (a2 >> 28) & 0x70;
      v8 = a2 >> 35;
      for (i = 4; v8; LODWORD(v8) = v8 >> 7)
      {
        v9[i++] = v5 | 0x80;
        LOBYTE(v5) = v8 & 0x7F;
      }
    }

    else
    {
      i = 4;
    }

LABEL_10:
    v9[i] = v5;
    v2 = i + 1;
  }

  else
  {
    v9[0] = a2;
    v2 = 1;
  }

  pb_write(a1, v9, v2);
  v7 = *MEMORY[0x277D85DE8];
}

void pb_encode_fixed64(void *a1, void *a2)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = *a2;
  pb_write(a1, v3, 8);
  v2 = *MEMORY[0x277D85DE8];
}

void pb_encode_tag_for_field(void *a1, uint64_t a2)
{
  v2 = *(a2 + 30) & 0xF;
  if (v2 < 0xC && ((0xBFFu >> v2) & 1) != 0)
  {
    pb_encode_tag(a1, dword_261DA9290[v2], *(a2 + 24));
  }

  else
  {
    OUTLINED_FUNCTION_0_3(a1, a1[4]);
  }
}

void pb_encode_string(void *a1, uint64_t a2, unint64_t a3)
{
  pb_encode_varint(a1, a3);
  if (v6)
  {

    pb_write(a1, a2, a3);
  }
}

uint64_t pb_check_proto3_default_value(void *a1)
{
  v1 = *(a1 + 30);
  v2 = 0;
  switch(v1 >> 6)
  {
    case 1u:
      if ((v1 & 0xF) == 0xA || (v5 = *(*a1 + 24), v5 == pb_default_field_callback))
      {
        v5 = *a1[5];
      }

      goto LABEL_9;
    case 2u:
      v5 = a1[5];
LABEL_9:
      v6 = v5 == 0;
LABEL_13:
      v2 = v6;
      break;
    case 3u:
      return v2;
    default:
      v2 = 0;
      switch((v1 >> 4) & 3)
      {
        case 1u:
          v7 = a1[6];
          if (v7)
          {
            v4 = *v7;
            goto LABEL_12;
          }

          if (*(*a1 + 16))
          {
            v2 = 0;
          }

          else
          {
            v9 = v1 & 0xF;
            if (v9 > 5)
            {
              v2 = 0;
              switch(v9)
              {
                case 6u:
                  v3 = a1[5];
                  goto LABEL_4;
                case 7u:
                  v4 = *a1[5];
                  goto LABEL_12;
                case 8u:
                case 9u:
                  if (pb_field_iter_begin(v13, a1[7], a1[5]))
                  {
                    do
                    {
                      v2 = pb_check_proto3_default_value(v13);
                    }

                    while (v2 && pb_field_iter_next(v13));
                  }

                  else
                  {
                    v2 = 1;
                  }

                  break;
                case 0xBu:
                  v4 = *(a1 + 13);
                  goto LABEL_12;
                default:
                  return v2;
              }
            }

            else
            {
              v10 = a1[5];
              v11 = *(a1 + 13);
              do
              {
                v2 = v11 == 0;
                if (!v11)
                {
                  break;
                }

                v12 = *v10++;
                --v11;
              }

              while (!v12);
            }
          }

          break;
        case 2u:
        case 3u:
          v3 = a1[6];
LABEL_4:
          v4 = *v3;
LABEL_12:
          v6 = v4 == 0;
          goto LABEL_13;
        default:
          return v2;
      }

      break;
  }

  return v2;
}

void encode_basic_field(void *a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    pb_encode_tag_for_field(a1, a2);
    if (v4)
    {
      v5 = *(a2 + 30);
      switch(v5 & 0xF)
      {
        case 0u:
          v18 = **(a2 + 40) != 0;

          pb_encode_varint(a1, v18);
          return;
        case 1u:
        case 2u:
        case 3u:
          v6 = OUTLINED_FUNCTION_2_1();

          pb_enc_varint(v6, v7);
          return;
        case 4u:
        case 5u:
          v8 = OUTLINED_FUNCTION_2_1();

          pb_enc_fixed(v8, v9);
          return;
        case 6u:
          v17 = *(a2 + 40);
          if (!v17)
          {
            v20 = OUTLINED_FUNCTION_7_2();
            v16 = 0;
            goto LABEL_45;
          }

          v16 = *v17;
          if (v5 > 0x3F || *(a2 + 26) - 2 >= v16)
          {
            v15 = (v17 + 1);
            goto LABEL_44;
          }

          goto LABEL_48;
        case 7u:
          v15 = *(a2 + 40);
          if ((v5 & 0xC0) == 0x80)
          {
            v16 = -1;
          }

          else
          {
            if (!*(a2 + 26))
            {
              goto LABEL_48;
            }

            v16 = *(a2 + 26) - 1;
          }

          if (v15)
          {
            for (i = 0; v16 != i; ++i)
            {
              if (!*(v15 + i))
              {
                v16 = i;
                goto LABEL_44;
              }
            }

            if (*(v15 + v16))
            {
LABEL_48:
              OUTLINED_FUNCTION_1_2();
              OUTLINED_FUNCTION_4_2(v21);
              return;
            }
          }

          else
          {
            v16 = 0;
          }

LABEL_44:
          v20 = a1;
LABEL_45:

          pb_encode_string(v20, v15, v16);
          break;
        case 8u:
        case 9u:
          if (!*(a2 + 56))
          {
            goto LABEL_48;
          }

          if ((v5 & 0xF) != 9)
          {
            goto LABEL_17;
          }

          v10 = *(a2 + 48);
          if (!v10 || !*(v10 - 16))
          {
            goto LABEL_17;
          }

          v11 = OUTLINED_FUNCTION_2_1();
          if (v12(v11))
          {
            v13 = *(a2 + 56);
LABEL_17:
            v14 = *(a2 + 40);

            pb_encode_submessage(a1);
          }

          return;
        case 0xBu:
          v15 = *(a2 + 40);
          v16 = *(a2 + 26);
          goto LABEL_44;
        default:
          goto LABEL_48;
      }
    }
  }
}

void pb_enc_varint(void *a1, uint64_t a2)
{
  v2 = *(a2 + 30) & 0xF;
  v3 = *(a2 + 26) - 1;
  if (v2 == 2)
  {
    switch(*(a2 + 26))
    {
      case 1:
        v4 = **(a2 + 40);
        goto LABEL_4;
      case 2:
        v4 = **(a2 + 40);
        goto LABEL_4;
      case 4:
        v4 = **(a2 + 40);
        goto LABEL_4;
      case 8:
        v4 = **(a2 + 40);
        goto LABEL_4;
      default:
        goto LABEL_7;
    }
  }

  switch(*(a2 + 26))
  {
    case 1:
      v4 = **(a2 + 40);
      goto LABEL_14;
    case 2:
      v4 = **(a2 + 40);
      goto LABEL_14;
    case 4:
      v4 = **(a2 + 40);
      goto LABEL_14;
    case 8:
      v4 = **(a2 + 40);
LABEL_14:
      if (v2 == 3)
      {
        pb_encode_svarint(a1, v4);
      }

      else
      {
LABEL_4:
        pb_encode_varint(a1, v4);
      }

      break;
    default:
LABEL_7:
      OUTLINED_FUNCTION_0_3(a1, a1[4]);
      break;
  }
}

void pb_enc_fixed(void *a1, uint64_t a2)
{
  v2 = *(a2 + 26);
  if (v2 == 8)
  {
    pb_encode_fixed64(a1, *(a2 + 40));
  }

  else if (v2 == 4)
  {
    pb_encode_fixed32(a1, *(a2 + 40));
  }

  else
  {
    OUTLINED_FUNCTION_0_3(a1, a1[4]);
  }
}

uint64_t OUTLINED_FUNCTION_0_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a2)
  {
    a2 = v2;
  }

  *(a1 + 32) = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_2()
{
  result = 0;
  v2 = *(v0 + 32);
  return result;
}

void OUTLINED_FUNCTION_4_2(uint64_t a1@<X8>)
{
  if (!a1)
  {
    a1 = v1;
  }

  *(v2 + 32) = a1;
}

void pb_read(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a3;
    if (a2 || *a1 == buf_read)
    {
      if (*(a1 + 16) >= a3 && ((*a1)(a1) & 1) != 0)
      {
        *(a1 + 16) -= v3;
      }

      else
      {
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_1_3();
        *(a1 + 24) = v5;
      }
    }

    else
    {
      while (v3 >= 0x11)
      {
        if (!pb_read(a1, v7, 16))
        {
          goto LABEL_12;
        }

        v3 -= 16;
      }

      pb_read(a1, v7, v3);
    }
  }

LABEL_12:
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t buf_read(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = &v3[a3];
  if (a2 && a3)
  {
    do
    {
      v4 = *v3++;
      *a2++ = v4;
      --a3;
    }

    while (a3);
  }

  return 1;
}

uint64_t pb_istream_from_buffer@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = buf_read;
  a3[1] = result;
  a3[2] = a2;
  a3[3] = 0;
  return result;
}

void pb_decode_varint32_eof(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  OUTLINED_FUNCTION_5_3();
  pb_readbyte(v6, &v17);
  if (v7)
  {
    v8 = v17;
    if (v17 < 0)
    {
      v8 = v17 & 0x7F;
      v9 = 7;
      while (1)
      {
        pb_readbyte(v3, &v17);
        if (!v10)
        {
          break;
        }

        v11 = v9;
        if (v9 < 0x20u)
        {
          v8 |= (v17 & 0x7F) << v9;
        }

        else
        {
          if (v9 >= 0x3Fu)
          {
            v12 = 1;
          }

          else
          {
            v12 = 255;
          }

          v14 = v8 >= 0 || v12 != v17;
          if ((v17 & 0x7F) == 0)
          {
            v14 = 0;
          }

          if (v9 > 0x3Fu || v14)
          {
            goto LABEL_31;
          }
        }

        v9 += 7;
        if ((v17 & 0x80) == 0)
        {
          if (v11 == 28 && v17 >= 0x10u)
          {
LABEL_31:
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_3();
            *(v3 + 24) = v16;
            return;
          }

          goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_3:
      *v4 = v8;
    }
  }

  else if (a3 && !*(v3 + 16))
  {
    *a3 = 1;
  }
}

void pb_decode_varint()
{
  OUTLINED_FUNCTION_5_3();
  v2 = 0;
  v3 = 0;
  while (1)
  {
    v4 = v2;
    if (v2 >= 0x40u)
    {
      break;
    }

    pb_readbyte(v0, &v7);
    if (!v5)
    {
      return;
    }

    v3 |= (v7 & 0x7F) << v4;
    v2 = v4 + 7;
    if ((v7 & 0x80) == 0)
    {
      *v1 = v3;
      return;
    }
  }

  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  *(v0 + 24) = v6;
}

void pb_readbyte(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && ((*a1)(a1, a2, 1) & 1) != 0)
  {
    --*(a1 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_1_3();
    *(a1 + 24) = v3;
  }
}

void pb_decode_tag(uint64_t a1, int *a2, unsigned int *a3, _BYTE *a4)
{
  *a4 = 0;
  *a2 = 0;
  *a3 = 0;
  pb_decode_varint32_eof(a1, &v8, a4);
  if (v6)
  {
    v7 = v8;
    *a3 = v8 >> 3;
    *a2 = v7 & 7;
  }
}

void pb_skip_field(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      do
      {
        pb_read(a1, &v7, 1uLL);
      }

      while (v3 && v7 < 0);
      break;
    case 1:
      v5 = 8;
      goto LABEL_9;
    case 2:
      pb_decode_varint32(a1, &v8);
      if (v4)
      {
        pb_read(a1, 0, v8);
      }

      break;
    case 5:
      v5 = 4;
LABEL_9:

      pb_read(a1, 0, v5);
      break;
    default:
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_1_3();
      *(a1 + 24) = v6;
      break;
  }
}

void pb_make_string_substream()
{
  OUTLINED_FUNCTION_5_3();
  pb_decode_varint32(v2, &v7);
  if (v3)
  {
    v4 = *(v0 + 16);
    *v1 = *v0;
    v1[1] = v4;
    v5 = v7;
    if (*(v1 + 2) >= v7)
    {
      *(v1 + 2) = v7;
      *(v0 + 16) -= v5;
    }

    else
    {
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_1_3();
      *(v0 + 24) = v6;
    }
  }
}

void pb_close_string_substream()
{
  OUTLINED_FUNCTION_5_3();
  v3 = *(v2 + 16);
  if (!v3 || (pb_read(v1, 0, v3), v4))
  {
    *(v0 + 8) = *(v1 + 8);
    *(v0 + 24) = *(v1 + 24);
  }
}

uint64_t pb_decode_ex(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 2) != 0)
  {
    pb_make_string_substream();
    if ((v9 & 1) == 0)
    {
      return 0;
    }

    pb_decode_inner(&v13, a2, a3, a4);
    v8 = v10;
    pb_close_string_substream();
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    pb_decode_inner(a1, a2, a3, a4);
    return v7;
  }

  return v8;
}

void pb_decode_inner(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v54 = 0;
  v53 = 0;
  v6 = pb_field_iter_begin(v45, a2, a3);
  if ((a4 & 1) == 0 && v6)
  {
    pb_message_set_to_defaults(v45, v7, v8, v9, v10, v11, v12, v13);
    if ((v14 & 1) == 0)
    {
      OUTLINED_FUNCTION_0_4();
LABEL_75:
      OUTLINED_FUNCTION_1_3();
      *(a1 + 24) = v39;
      return;
    }
  }

  v41 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xFFFF;
  while (1)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_58;
    }

    pb_decode_tag(a1, &v43, &v44, &v42);
    if ((v18 & 1) == 0)
    {
      if ((v42 & 1) == 0)
      {
        return;
      }

      goto LABEL_58;
    }

    v19 = v44;
    if (!v44)
    {
      break;
    }

    if (pb_field_iter_find(v45, v44) && (v50 & 0xF) != 0xA)
    {
      if ((v50 & 0x30) == 0x20 && v52 == &v49)
      {
        if (v17 != v46)
        {
          if (v17 != 0xFFFF && v54 != v41)
          {
            v40 = *(a1 + 24);
LABEL_56:
            OUTLINED_FUNCTION_1_3();
            *(a1 + 24) = v33;
            return;
          }

          v54 = 0;
          v41 = v49;
          v17 = v46;
        }

        v52 = &v54;
      }

      if ((v50 & 0x30) == 0 && v47 <= 0x3Fu)
      {
        *(&v53 + ((v47 >> 3) & 0x1FFC)) |= 1 << v47;
      }

      decode_field(a1, v43, v45);
      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (!v16)
      {
        if (pb_field_iter_find_extension(v45))
        {
          v15 = *v51;
          v20 = v48;
        }

        else
        {
          v20 = 0;
        }

        if (v15)
        {
          v16 = v20;
        }

        else
        {
          v16 = -1;
        }
      }

      v24 = v43;
      if (v19 < v16)
      {
        goto LABEL_36;
      }

      v26 = *(a1 + 16);
      v27 = v26;
      v28 = v15;
      if (v15)
      {
        while (v26 == v27)
        {
          v29 = **v28;
          if (v29)
          {
            if ((v29(a1, v28, v19, v24) & 1) == 0)
            {
              return;
            }
          }

          else
          {
            if (!pb_field_iter_begin_extension(v55, v28))
            {
              v31 = *(a1 + 24);
              goto LABEL_56;
            }

            if (v19 == v56)
            {
              if (v55[1])
              {
                *(v28 + 24) = 1;
                decode_field(a1, v24, v55);
                if (!v30)
                {
                  return;
                }
              }
            }
          }

          v28 = v28[2];
          v27 = *(a1 + 16);
          if (!v28)
          {
            break;
          }
        }
      }

      if (v26 == v27)
      {
        LODWORD(v24) = v43;
LABEL_36:
        pb_skip_field(a1, v24);
        if ((v25 & 1) == 0)
        {
          return;
        }
      }
    }
  }

  if ((a4 & 4) == 0)
  {
    v32 = *(a1 + 24);
    goto LABEL_56;
  }

LABEL_58:
  if (v17 != 0xFFFF && v54 != v41)
  {
    goto LABEL_74;
  }

  if (*(*v45 + 34))
  {
    v35 = 0;
    v36 = *(*v45 + 34) >= 0x40u ? 64 : *(*v45 + 34);
    v37 = v36 >> 5;
    while (v35 < v37)
    {
      v38 = *(&v53 + v35++);
      if (v38 != -1)
      {
        goto LABEL_74;
      }
    }

    if ((v36 & 0x1F) != 0 && *(&v53 + v37) != 0xFFFFFFFF >> -(v36 & 0x1F))
    {
LABEL_74:
      OUTLINED_FUNCTION_0_4();
      goto LABEL_75;
    }
  }
}

void pb_decode_BOOL(uint64_t a1, BOOL *a2)
{
  pb_decode_varint32(a1, &v4);
  if (v3)
  {
    *a2 = v4 != 0;
  }
}

void pb_decode_svarint(uint64_t a1, unint64_t *a2)
{
  pb_decode_varint();
  if (v3)
  {
    *a2 = -(v4 & 1) ^ (v4 >> 1);
  }
}

void pb_decode_fixed32(uint64_t a1, _DWORD *a2)
{
  pb_read(a1, &v4, 4uLL);
  if (v3)
  {
    *a2 = v4;
  }
}

void pb_decode_fixed64(uint64_t a1, void *a2)
{
  pb_read(a1, &v4, 8uLL);
  if (v3)
  {
    *a2 = v4;
  }
}

void pb_message_set_to_defaults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  if (*(*a1 + 16))
  {
    *(&v27 + 1) = *(*a1 + 16);
    v28 = 0xFFFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_7_3(a1, a2, a3, a4, a5, a6, a7, a8, v25, SWORD2(v25), SBYTE6(v25), SHIBYTE(v25), 0, 0, buf_read);
    if (!v9)
    {
      return;
    }
  }

  while (1)
  {
    v10 = *(a1 + 30);
    if ((v10 & 0xF) == 0xA)
    {
      break;
    }

    if ((v10 & 0xC0) == 0x80)
    {
      **(a1 + 32) = 0;
      if ((v10 & 0x20) != 0)
      {
        goto LABEL_23;
      }
    }

    else if ((v10 & 0xC0) == 0)
    {
      v12 = (v10 >> 4) & 3;
      if ((v12 - 2) < 2)
      {
        goto LABEL_23;
      }

      if (v12)
      {
        v13 = *(a1 + 48);
        if (v13)
        {
          *v13 = 0;
        }

        else if ((v10 & 0x20 | 0x10) == 0x30)
        {
LABEL_23:
          **(a1 + 48) = 0;
          goto LABEL_24;
        }
      }

      if ((v10 & 0xE) == 8 && ((v14 = *(a1 + 56), *(v14 + 16)) || *(v14 + 24) || **(v14 + 8)))
      {
        if (pb_field_iter_begin(v29, v14, *(a1 + 40)) && !pb_message_set_to_defaults(v29))
        {
          return;
        }
      }

      else
      {
        memset(*(a1 + 40), 0, *(a1 + 26));
      }
    }

LABEL_24:
    if (HIDWORD(v26) && HIDWORD(v26) == *(a1 + 24))
    {
      decode_field(&v27, v26, a1);
      if (!v15)
      {
        return;
      }

      OUTLINED_FUNCTION_7_3(v15, v16, v17, v18, v19, v20, v21, v22, v25, SWORD2(v25), SBYTE6(v25), SHIBYTE(v25), v26, HIDWORD(v26), v27);
      if (!v23)
      {
        return;
      }

      v24 = *(a1 + 48);
      if (v24)
      {
        *v24 = 0;
      }
    }

    if (!pb_field_iter_next(a1))
    {
      return;
    }
  }

  v11 = **(a1 + 40);
  if (!v11)
  {
    goto LABEL_24;
  }

  while (1)
  {
    if (pb_field_iter_begin_extension(v29, v11))
    {
      *(v11 + 24) = 0;
      if (!pb_message_set_to_defaults(v29))
      {
        break;
      }
    }

    v11 = *(v11 + 16);
    if (!v11)
    {
      goto LABEL_24;
    }
  }
}

void decode_field(uint64_t a1, int a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 30);
  switch(v3 >> 6)
  {
    case 1u:
      if (!*(*a3 + 24))
      {
        v14 = *MEMORY[0x277D85DE8];

        pb_skip_field(a1, a2);
        return;
      }

      if (a2 == 2)
      {
        OUTLINED_FUNCTION_3_3();
        pb_make_string_substream();
        if (v10)
        {
          v11 = v34;
          do
          {
            OUTLINED_FUNCTION_4_3();
            if ((v12() & 1) == 0)
            {
              goto LABEL_5;
            }

            if (v34)
            {
              v13 = v34 >= v11;
            }

            else
            {
              v13 = 1;
            }

            v11 = v34;
          }

          while (!v13);
          OUTLINED_FUNCTION_3_3();
          pb_close_string_substream();
        }
      }

      else
      {
        if (a2 == 5)
        {
          v19 = 4;
          v29 = 4;
        }

        else
        {
          if (a2 != 1)
          {
            if (a2)
            {
LABEL_5:
              OUTLINED_FUNCTION_0_4();
            }

            else
            {
              v15 = 0;
              v16 = v36;
              while (v15 != -10)
              {
                pb_read(a1, v16, 1uLL);
                if (!v17)
                {
                  goto LABEL_7;
                }

                v18 = *v16++;
                --v15;
                if ((v18 & 0x80000000) == 0)
                {
                  v19 = -v15;
                  goto LABEL_56;
                }
              }

              OUTLINED_FUNCTION_0_4();
            }

LABEL_6:
            OUTLINED_FUNCTION_1_3();
            *(a1 + 24) = v8;
            goto LABEL_7;
          }

          v19 = 8;
          v29 = 8;
        }

        pb_read(a1, v36, v29);
        if (v30)
        {
LABEL_56:
          v33[0] = buf_read;
          v33[1] = v36;
          v34 = v19;
          v35 = 0;
          OUTLINED_FUNCTION_4_3();
          v31();
        }
      }

      goto LABEL_7;
    case 2u:
    case 3u:
      goto LABEL_5;
    default:
      switch((v3 >> 4) & 3)
      {
        case 1u:
          v7 = *(a3 + 48);
          if (v7)
          {
            *v7 = 1;
          }

          goto LABEL_36;
        case 2u:
          v20 = v3 & 0xE;
          if (a2 != 2 || v20 > 5)
          {
            v22 = *(a3 + 48);
            v23 = *v22;
            *(a3 + 40) = *(a3 + 32) + *(a3 + 26) * *v22;
            *v22 = v23 + 1;
            if (v23 >= *(a3 + 28))
            {
              goto LABEL_61;
            }

LABEL_36:
            v24 = *MEMORY[0x277D85DE8];

            decode_basic_field(a1, a2, a3);
          }

          else
          {
            v26 = *(a3 + 48);
            *(a3 + 40) = *(a3 + 32) + *v26 * *(a3 + 26);
            OUTLINED_FUNCTION_3_3();
            pb_make_string_substream();
            if (v27)
            {
              while (1)
              {
                if (!v34)
                {
                  goto LABEL_62;
                }

                if (*v26 >= *(a3 + 28))
                {
                  goto LABEL_61;
                }

                decode_basic_field(v33, 255, a3);
                if (!v28)
                {
                  break;
                }

                ++*v26;
                *(a3 + 40) += *(a3 + 26);
              }

              if (v34)
              {
LABEL_61:
                OUTLINED_FUNCTION_0_4();
                goto LABEL_6;
              }

LABEL_62:
              OUTLINED_FUNCTION_3_3();
              pb_close_string_substream();
            }

LABEL_7:
            v9 = *MEMORY[0x277D85DE8];
          }

          return;
        case 3u:
          if ((v3 & 0xE) != 8 || **(a3 + 48) == *(a3 + 24) || (memset(*(a3 + 40), 0, *(a3 + 26)), v25 = *(a3 + 56), !*(v25 + 16)) && !*(v25 + 24) && !**(v25 + 8) || !pb_field_iter_begin(v33, v25, *(a3 + 40)) || pb_message_set_to_defaults(v33))
          {
            **(a3 + 48) = *(a3 + 24);
            decode_basic_field(a1, a2, a3);
            goto LABEL_7;
          }

          v32 = *(a1 + 24);
          goto LABEL_6;
        default:
          goto LABEL_36;
      }
  }
}

void decode_basic_field(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a3 + 30) & 0xF;
  switch(*(a3 + 30) & 0xF)
  {
    case 0:
      if (a2 && a2 != 255)
      {
        goto LABEL_44;
      }

      v20 = *(a3 + 40);

      pb_decode_BOOL(a1, v20);
      return;
    case 1:
    case 2:
    case 3:
      if (a2 && a2 != 255)
      {
        goto LABEL_44;
      }

      if (v4 == 2)
      {
        OUTLINED_FUNCTION_2_2();
        pb_decode_varint();
        if (v6)
        {
          switch(*(a3 + 26))
          {
            case 1:
              OUTLINED_FUNCTION_6_3();
              *v8 = v7;
              v9 = v7;
              goto LABEL_80;
            case 2:
              OUTLINED_FUNCTION_6_3();
              *v44 = v7;
              v9 = v7;
              goto LABEL_80;
            case 4:
              OUTLINED_FUNCTION_6_3();
              *v43 = v7;
              v9 = v7;
              goto LABEL_80;
            case 8:
              OUTLINED_FUNCTION_6_3();
              *v46 = v45;
              break;
            default:
              goto LABEL_44;
          }
        }
      }

      else
      {
        if (v4 == 3)
        {
          v31 = OUTLINED_FUNCTION_3_3();
          pb_decode_svarint(v31, v32);
          if (!v33)
          {
            return;
          }

          v34 = *(a3 + 26);
        }

        else
        {
          OUTLINED_FUNCTION_2_2();
          pb_decode_varint();
          if (!v35)
          {
            return;
          }

          v34 = *(a3 + 26);
          v36 = v48[0];
          if (v34 == 8)
          {
LABEL_83:
            **(a3 + 40) = v36;
            return;
          }

          v47 = SLODWORD(v48[0]);
        }

        switch(v34)
        {
          case 1:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 2:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 4:
            v7 = v47;
            **(a3 + 40) = v47;
            v9 = v47;
            break;
          case 8:
            v36 = v47;
            goto LABEL_83;
          default:
            goto LABEL_44;
        }

LABEL_80:
        if (v9 != v7)
        {
          goto LABEL_44;
        }
      }

      return;
    case 4:
      if (a2 != 5 && a2 != 255)
      {
        goto LABEL_44;
      }

      v24 = *(a3 + 40);

      pb_decode_fixed32(a1, v24);
      return;
    case 5:
      if (a2 != 1 && a2 != 255)
      {
        goto LABEL_44;
      }

      v25 = *(a3 + 40);

      pb_decode_fixed64(a1, v25);
      return;
    case 6:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v14 = OUTLINED_FUNCTION_2_2();
      pb_decode_varint32(v14, v15);
      if (v16)
      {
        v17 = LODWORD(v48[0]);
        if (LODWORD(v48[0]) < 0x10000 && (*(a3 + 30) & 0xC0) != 0x80 && LODWORD(v48[0]) + 2 <= *(a3 + 26))
        {
          v18 = *(a3 + 40);
          *v18 = v48[0];
          v19 = (v18 + 1);
          goto LABEL_70;
        }

        goto LABEL_44;
      }

      return;
    case 7:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v26 = *(a3 + 40);
      v27 = OUTLINED_FUNCTION_2_2();
      pb_decode_varint32(v27, v28);
      if (v29)
      {
        v17 = LODWORD(v48[0]);
        if (LODWORD(v48[0]) != -1 && (*(a3 + 30) & 0xC0) != 0x80 && LODWORD(v48[0]) < *(a3 + 26))
        {
          *(v26 + LODWORD(v48[0])) = 0;
          v42 = a1;
          v19 = v26;
          goto LABEL_77;
        }

        goto LABEL_44;
      }

      return;
    case 8:
    case 9:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_2_2();
      pb_make_string_substream();
      if (!v10)
      {
        return;
      }

      if (!*(a3 + 56))
      {
        goto LABEL_44;
      }

      if ((*(a3 + 30) & 0xF) == 9 && (v11 = *(a3 + 48)) != 0)
      {
        v12 = *(v11 - 16);
        if (v12)
        {
          v13 = v12(v48, a3, v11 - 8);
          LOBYTE(v12) = v48[2] == 0;
          goto LABEL_56;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      v13 = 1;
LABEL_56:
      if ((v12 & 1) == 0 && v13)
      {
        v37 = *(a3 + 30);
        v38 = v37 >= 0x40;
        v39 = v37 & 0x30;
        v41 = !v38 && v39 != 32;
        pb_decode_inner(v48, *(a3 + 56), *(a3 + 40), v41);
      }

      OUTLINED_FUNCTION_2_2();
      pb_close_string_substream();
      return;
    case 0xB:
      if (a2 != 2)
      {
        goto LABEL_44;
      }

      v21 = OUTLINED_FUNCTION_2_2();
      pb_decode_varint32(v21, v22);
      if (v23)
      {
        if (LODWORD(v48[0]) >= 0x10000)
        {
          goto LABEL_44;
        }

        if (LODWORD(v48[0]))
        {
          v17 = *(a3 + 26);
          if (LODWORD(v48[0]) != v17)
          {
            goto LABEL_44;
          }

          v19 = *(a3 + 40);
LABEL_70:
          v42 = a1;
LABEL_77:
          pb_read(v42, v19, v17);
        }

        else
        {
          memset(*(a3 + 40), 0, *(a3 + 26));
        }
      }

      return;
    default:
LABEL_44:
      OUTLINED_FUNCTION_0_4();
      OUTLINED_FUNCTION_1_3();
      *(a1 + 24) = v30;
      return;
  }
}

uint64_t OUTLINED_FUNCTION_0_4()
{
  result = 0;
  v2 = *(v0 + 24);
  return result;
}

void OUTLINED_FUNCTION_7_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, int a13, unsigned int a14, char a15)
{

  pb_decode_tag(&a15, &a13, &a14, &a12);
}

void encodeHeader(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t a1, char *a2, uint64_t a3), uint64_t (*a4)(uint64_t a1, char *a2, uint64_t a3), uint64_t *a5, int a6)
{
  bzero(&v20, 0xA8uLL);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17 = v12;
  v18 = v12;
  pb_ostream_from_buffer(a3, a4, &v17);
  v13 = 0;
  if (a3)
  {
    v14 = 1;
  }

  else
  {
    v14 = a6;
  }

  if (a2 >= 4 && a1 && v14)
  {
    v20 = *(a1 + 1);
    v21 = *(a1 + 3);
    if (a6)
    {
      pb_get_encoded_size(a5);
      if (v15)
      {
        v13 = *a5;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      pb_encode(&v17);
      v13 = *(&v18 + 1);
      if (!v16)
      {
        v13 = 0;
      }
    }
  }

  *a5 = v13;
}

void encode(int *a1, unint64_t a2, uint64_t (*a3)(uint64_t a1, char *a2, uint64_t a3), uint64_t (*a4)(uint64_t a1, char *a2, uint64_t a3), uint64_t *a5, char a6, int a7)
{
  bzero(v30, 0xA8uLL);
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v14;
  v28 = v14;
  pb_ostream_from_buffer(a3, a4, &v27);
  v15 = 0;
  if (a7)
  {
    v16 = 0xFFFFLL;
  }

  else
  {
    v16 = a2;
  }

  v26[0] = a1;
  v26[1] = v16;
  if (a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = a7;
  }

  if (v16 >= 4 && a1 && v17)
  {
    if (a6)
    {
      v18 = encodeSizeOptimizedInputReport;
      v19 = 16;
      v20 = 8;
    }

    else
    {
      v21 = *a1;
      v18 = encodeDeviceConfirmConnect;
      v19 = 160;
      v20 = 152;
      switch((*a1 >> 17) & 7)
      {
        case 0u:
          v22 = (v21 & 0x1FF80) == 512;
          if ((v21 & 0x1FF80) == 0x200)
          {
            v20 = 24;
          }

          else
          {
            v20 = 40;
          }

          v18 = encodeDeviceConnect;
          if ((v21 & 0x1FF80) == 0x200)
          {
            v18 = encodeHostConnect;
          }

          v23 = 48;
          v19 = 32;
          break;
        case 1u:
          v18 = encodeDeviceDisconnect;
          v19 = 64;
          v20 = 56;
          goto LABEL_35;
        case 2u:
          v18 = encodeInputReport;
          v19 = 80;
          v20 = 72;
          goto LABEL_35;
        case 3u:
          v22 = (v21 & 0x200000) == 0;
          if ((v21 & 0x200000) != 0)
          {
            v20 = 104;
          }

          else
          {
            v20 = 88;
          }

          v18 = encodeSetReportResponse;
          if ((v21 & 0x200000) == 0)
          {
            v18 = encodeSetReportRequest;
          }

          v23 = 112;
          v19 = 96;
          break;
        case 4u:
          v22 = (v21 & 0x200000) == 0;
          if ((v21 & 0x200000) != 0)
          {
            v20 = 136;
          }

          else
          {
            v20 = 120;
          }

          v18 = encodeGetReportResponse;
          if ((v21 & 0x200000) == 0)
          {
            v18 = encodeGetReportRequest;
          }

          v23 = 144;
          v19 = 128;
          break;
        case 5u:
          goto LABEL_35;
        default:
          goto LABEL_41;
      }

      if (!v22)
      {
        v19 = v23;
      }
    }

LABEL_35:
    *&v30[v20] = v18;
    *&v30[v19] = v26;
    if (a7)
    {
      pb_get_encoded_size(a5);
      if (v24)
      {
        v15 = *a5;
      }

      else
      {
LABEL_41:
        v15 = 0;
      }
    }

    else
    {
      pb_encode(&v27);
      v15 = *(&v28 + 1);
      if (!v25)
      {
        v15 = 0;
      }
    }
  }

  *a5 = v15;
}

void encodeSizeOptimizedInputReport(void *a1, uint64_t a2, unsigned int ***a3)
{
  v3 = *a3;
  v4 = **a3;
  v5 = (*v4 >> 7) & 0x3FF;
  if ((*a3)[1] >= v5)
  {
    v3[1] = (v5 - 5);
    v7 = *(v4 + 3);
    v8 = *(v4 + 4);
    *(v4 + 3) = 0;
    *(v4 + 3) = HIBYTE(*v4) & 0x80 | *v4 & 0x7F;
    pb_encode_tag_for_field(a1, a2);
    if (v9)
    {
      pb_encode_string(a1, v4 + 3, v3[1] + 2);
      if (v10)
      {
        *(v4 + 3) = v7;
        *(v4 + 4) = v8;
      }
    }
  }
}

void encodeHostConnect(void *a1, uint64_t a2, _DWORD ***a3)
{
  if ((***a3 & 0x7F) != 0)
  {
    v4 = ***a3 & 0x7F;
  }

  pb_encode_tag_for_field(a1, a2);
  if (v3)
  {
    OUTLINED_FUNCTION_9();
  }
}

void encodeDeviceConnect(uint64_t a1, uint64_t a2, unsigned int ***a3)
{
  OUTLINED_FUNCTION_2(a1, a2, a3);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    *v5 = v4 + 1;
    v5[1] = ((*v4 >> 7) & 0x3FF) - 4;
    pb_encode_tag_for_field(v6, v7);
    if (v8)
    {
      OUTLINED_FUNCTION_9();
    }
  }
}

void encodeDeviceConfirmConnect(uint64_t *a1, uint64_t a2, _DWORD ***a3)
{
  v5 = ***a3 & 0x7F;
  pb_encode_tag_for_field(a1, a2);
  if (v4)
  {
    pb_encode_submessage(a1);
  }
}

void encodeDeviceDisconnect(uint64_t *a1, uint64_t a2, unsigned int ***a3)
{
  if ((*a3)[1] >= ((***a3 >> 7) & 0x3FF))
  {
    pb_encode_tag_for_field(a1, a2);
    if (v4)
    {
      pb_encode_submessage(a1);
    }
  }
}

void encodeInputReport(uint64_t a1, uint64_t a2, unsigned int ***a3)
{
  OUTLINED_FUNCTION_2(a1, a2, a3);
  if (v8)
  {
    v9 = v3;
    if ((v7 & 0x100000) != 0)
    {
      v11 = *(v6 + 5);
      v10 = 13;
    }

    else
    {
      v10 = 5;
    }

    *v5 = v6 + v10;
    v12 = *v6;
    v13 = (v12 >> 7) & 0x3FF;
    v14 = (v12 & 0x100000) == 0;
    v15 = -13;
    if (v14)
    {
      v15 = -5;
    }

    v5[1] = v15 + v13;
    pb_encode_tag_for_field(v3, v4);
    if (v16)
    {
      pb_encode_submessage(v9);
    }
  }
}

void encodeSetReportResponse(uint64_t a1, uint64_t a2, unsigned int ***a3)
{
  OUTLINED_FUNCTION_10(a1, a2, a3);
  if (v7 >= v8)
  {
    if ((v6 & 0x400000) != 0)
    {
      if ((v6 & 0x1FF80u) < 0x401)
      {
        return;
      }

      v10 = *(v5 + 5);
    }

    pb_encode_tag_for_field(v3, v4);
    if (v9)
    {
      OUTLINED_FUNCTION_9();
    }
  }
}

void encodeSetReportRequest(uint64_t a1, uint64_t a2, unsigned int ***a3)
{
  OUTLINED_FUNCTION_2(a1, a2, a3);
  if (v4)
  {
    v10 = *(v3 + 4);
    OUTLINED_FUNCTION_4();
    *v6 = v5 + 5;
    v6[1] = ((*v5 >> 7) & 0x3FF) - 5;
    pb_encode_tag_for_field(v7, v8);
    if (v9)
    {
      OUTLINED_FUNCTION_9();
    }
  }
}

void encodeGetReportResponse(void *a1, uint64_t a2, unsigned int ***a3)
{
  v3 = *a3;
  v4 = **a3;
  v5 = *v4;
  if ((*a3)[1] >= ((v5 >> 7) & 0x3FF))
  {
    if ((v5 & 0x400000) != 0)
    {
      if ((v5 & 0x1FF80) >= 0x401)
      {
        v7 = *(v4 + 5);
      }
    }

    else
    {
      v8 = *a3;
      *v3 = (v4 + 5);
      v3[1] = (((*v4 >> 7) & 0x3FF) - 5);
    }

    pb_encode_tag_for_field(a1, a2);
    if (v6)
    {
      OUTLINED_FUNCTION_9();
    }
  }
}

void encodeGetReportRequest(uint64_t a1, uint64_t a2, unsigned int ***a3)
{
  OUTLINED_FUNCTION_10(a1, a2, a3);
  if (v7)
  {
    v8 = v6 >= v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v3;
    v11 = *(v5 + 4);
    v12 = *(v5 + 5);
    pb_encode_tag_for_field(v3, v4);
    if (v10)
    {
      pb_encode_submessage(v9);
    }
  }
}

void decodeHeader(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  bzero(&v11, 0xA8uLL);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[0] = v8;
  v10[1] = v8;
  pb_istream_from_buffer(a1, a2, v10);
  if (a1 && a3 && a4 >= 5)
  {
    pb_decode(v10, &HIDRTBufferMessage_msg, &v11);
    if (v9)
    {
      *a3 = 1;
      *(a3 + 1) = v11;
      *(a3 + 3) = v12;
    }
  }
}

uint64_t decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v19[0] = 0;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v11;
  v18[1] = v11;
  pb_istream_from_buffer(a1, a2, v18);
  v12 = 0;
  v13 = 0;
  v16[0] = 0;
  v16[1] = a3;
  v16[2] = a4;
  v17 = xmmword_261DA91C0;
  BYTE8(v17) = a6;
  if (a3)
  {
    v14 = 1;
  }

  else
  {
    v14 = a6;
  }

  if (a1)
  {
    if (v14)
    {
      v19[1] = decodeSizeOptimizedReport;
      v19[3] = decodeHostConnect;
      v19[5] = decodeDeviceConnect;
      v19[7] = decodeDeviceDisconnect;
      v19[9] = decodeInputReport;
      v19[11] = decodeSetReportRequest;
      v19[13] = decodeSetReportResponse;
      v19[15] = decodeGetReportRequest;
      v19[17] = decodeGetReportResponse;
      v19[2] = v16;
      v19[4] = v16;
      v19[6] = v16;
      v19[8] = v16;
      v19[10] = v16;
      v19[12] = v16;
      v19[14] = v16;
      v19[16] = v16;
      v19[18] = v16;
      v19[19] = decodeDeviceConfirmConnect;
      v19[20] = v16;
      pb_decode(v18, &HIDRTBufferMessage_msg, v19);
      v12 = v17;
      if ((v13 & 1) == 0)
      {
        v12 = 0;
      }
    }
  }

  *a5 = v12;
  return v13 & 1;
}

void decodeSizeOptimizedReport(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(*a3 + 8);
  v5 = *(a1 + 16);
  *v3 = v5 + 3;
  *(v3 + 24) += v5 + 3;
  if ((*(v3 + 32) & 1) == 0 && *(v3 + 16) >= v5 + 3)
  {
    pb_read(a1, v4 + 3, v5);
    if (v6)
    {
      v7 = *(v3 + 16) - *v3;
      *(v3 + 8) += *v3;
      *(v3 + 16) = v7;
      OUTLINED_FUNCTION_6(*(v4 + 3));
      *v4 = v9 & 0xFF80007F | ((v8 & 0x3FF) << 7) | 0x40000;
      *(v4 + 4) = 0;
    }
  }
}

void decodeHostConnect(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  OUTLINED_FUNCTION_1(a1, a2, a3);
  pb_decode(v4, &HIDRTBufferHostConnect_msg, &v8);
  if (v5)
  {
    OUTLINED_FUNCTION_0();
    if ((v6 & 1) == 0)
    {
      if (v8)
      {
        v7 = BYTE4(v8) & 0x7F | 0x200;
      }

      else
      {
        v7 = 512;
      }

      *v3 = v7 | *v3 & 0xFF800000;
    }
  }
}

void decodeDeviceConnect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3(a1, a2, a3);
  v5 = *(v4 + 16) - 4;
  *(v4 + 8) = v3 + 1;
  *(v4 + 16) = v5;
  pb_decode(v6, &HIDRTBufferDeviceConnect_msg, v11);
  if (v7)
  {
    OUTLINED_FUNCTION_0();
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_6(v11[0]);
      *v3 = ((v9 << 7) + 512) & 0x1FF80 | v10 & 0xFF80007F;
    }
  }
}

void decodeDeviceDisconnect(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  OUTLINED_FUNCTION_1(a1, a2, a3);
  pb_decode(v4, &HIDRTBufferDeviceDisconnect_msg, &v8);
  if (v5)
  {
    OUTLINED_FUNCTION_0();
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8(v8);
      *v3 = v7 | 0x20200;
    }
  }
}

void decodeInputReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v13, 0, sizeof(v13));
  OUTLINED_FUNCTION_11(a1, a2, a3);
  pb_decode(&v12, &HIDRTBufferDeviceInputReport_msg, v13);
  if (v6)
  {
    OUTLINED_FUNCTION_5();
    if (*(&v13[0] + 1))
    {
      v7 = 13;
    }

    else
    {
      v7 = 5;
    }

    v8 = *(v4 + 16) - v7;
    *(v4 + 8) += v7;
    *(v4 + 16) = v8;
    pb_decode(a1, &HIDRTBufferDeviceInputReport_msg, v13);
    if (v9)
    {
      *(v4 + 24) += v7;
      if ((*(v4 + 32) & 1) == 0)
      {
        v10 = *v3 & 0xFFFFFF80 | v13[0] & 0x7F;
        *v3 = v10;
        v11 = *(&v13[0] + 1);
        *v3 = v10 & 0xFF80007F | (((*v4 + v7) & 0x3FF) << 7) | ((*(&v13[0] + 1) != 0) << 20) | 0x40000;
        *(v3 + 4) = 0;
        if (v11)
        {
          *(v3 + 5) = v11;
        }
      }
    }
  }
}

void decodeSetReportRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3(a1, a2, a3);
  v5 = *(v4 + 16) - 5;
  *(v4 + 8) = v3 + 5;
  *(v4 + 16) = v5;
  pb_decode(v6, &HIDRTBufferDeviceSetReportRequest_msg, &v10);
  if (v7)
  {
    *(v4 + 24) += 5;
    if ((*(v4 + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_6(v10);
      *v3 = v9 & 0xFF80007F | ((v8 << 7) + 640) & 0x1FF80 | 0x60000;
      *(v3 + 4) = v11;
    }
  }
}

uint64_t decodeSetReportResponse(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = 0;
  v3 = *a3;
  v4 = *(*a3 + 8);
  pb_decode(a1, &HIDRTBufferDeviceSetReportResponse_msg, &v16);
  v6 = v5;
  if (v5)
  {
    v7 = *(v3 + 16);
    v8 = *(v3 + 8) + 4 * (HIDWORD(v16) != 0);
    v9 = 4 * (HIDWORD(v16) != 0);
    *v3 = v9;
    *(v3 + 8) = v8 + 5;
    v9 += 5;
    v10 = v7 - v9;
    v11 = *(v3 + 24);
    *(v3 + 16) = v10;
    *(v3 + 24) = v11 + v9;
    if ((*(v3 + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_7();
      *v4 = v13 | v12 | (v14 << 22) | 0x260000;
      *(v4 + 4) = 2;
      memcpy((v4 + 5), &v16 + 4, *v3);
    }
  }

  return v6;
}

void decodeGetReportRequest(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  v8 = 0;
  v3 = *a3;
  v4 = *(*a3 + 8);
  v5 = *(*a3 + 16) - 6;
  *(v3 + 8) = v4 + 6;
  *(v3 + 16) = v5;
  pb_decode(a1, &HIDRTBufferDeviceGetReportRequest_msg, &v8);
  if (v6)
  {
    *(v3 + 24) += 6;
    if ((*(v3 + 32) & 1) == 0)
    {
      OUTLINED_FUNCTION_8(v8);
      *v4 = v7 | 0x80300;
      LOBYTE(v7) = v9;
      *(v4 + 4) = BYTE4(v8);
      *(v4 + 5) = v7;
    }
  }
}

void decodeGetReportResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v18, 0, sizeof(v18));
  OUTLINED_FUNCTION_11(a1, a2, a3);
  pb_decode(&v17, &HIDRTBufferDeviceGetReportResponse_msg, v18);
  if (v6)
  {
    v7 = HIDWORD(v18[0]);
    v8 = HIDWORD(v18[0]) != 0;
    v9 = 4 * (HIDWORD(v18[0]) != 0);
    v10 = *(v4 + 8);
    v11 = *(v4 + 16);
    *v4 = v9;
    *(v4 + 8) = v10 + 4 * v8 + 5;
    v12 = v9 + 5;
    *(v4 + 16) = v11 - (v9 + 5);
    if (!v7)
    {
      OUTLINED_FUNCTION_5();
      pb_decode(a1, &HIDRTBufferDeviceGetReportResponse_msg, v18);
      if (!v13)
      {
        return;
      }

      v12 = 5;
    }

    *(v4 + 24) += v12;
    if ((*(v4 + 32) & 1) == 0)
    {
      if (HIDWORD(v18[0]))
      {
        memcpy((v3 + 5), v18 + 4, *v4);
      }

      OUTLINED_FUNCTION_7();
      *v3 = v16 | v15 | v14 | 0x280000;
      *(v3 + 4) = 2;
    }
  }
}

void decodeDeviceConfirmConnect(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  OUTLINED_FUNCTION_1(a1, a2, a3);
  pb_decode(v4, &HIDRTBufferDeviceConfirmConnect_msg, &v8);
  if (v5)
  {
    OUTLINED_FUNCTION_0();
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8(v8);
      *v3 = v7 | 0xA0200;
    }
  }
}

void encodeData(void *a1, uint64_t a2, uint64_t **a3)
{
  v4 = *a3;
  pb_encode_tag_for_field(a1, a2);
  if (v5)
  {
    v6 = *v4;
    v7 = v4[1];

    pb_encode_string(a1, v6, v7);
  }
}

void decodeData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 16);
  *v3 = v4;
  *(v3 + 24) += v4;
  if ((*(v3 + 32) & 1) == 0 && *(v3 + 16) >= v4)
  {
    pb_read(a1, *(v3 + 8), v4);
    if (v5)
    {
      v6 = *(v3 + 16) - *v3;
      *(v3 + 8) += *v3;
      *(v3 + 16) = v6;
    }
  }
}

void HIDAccesorySessionEventCallback()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_261D9C000, v1, OS_LOG_TYPE_ERROR, "HIDAccesorySessionEventCallback event:%d result:%d", v3, 0xEu);
  v2 = *MEMORY[0x277D85DE8];
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}