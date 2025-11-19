id RPNSOperatingSystemVersionToString(uint64_t *a1)
{
  if (*a1 < 1)
  {
    v2 = 0;
  }

  else
  {
    v5 = a1[1];
    v6 = a1[2];
    v4 = *a1;
    NSAppendPrintF();
    v2 = 0;
  }

  return v2;
}

uint64_t formatSensitiveData(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x1E696AD60] stringWithCString:a1 encoding:4];
  v4 = v3;
  if (a2)
  {
    v5 = @"'%@'";
  }

  else
  {
    v5 = @"'%~@'";
  }

  [v3 appendString:v5];
  v6 = [v4 UTF8String];

  return v6;
}

BOOL shouldPrintSensitiveData()
{
  if (shouldPrintSensitiveData_onceToken != -1)
  {
    shouldPrintSensitiveData_cold_1();
  }

  return (shouldPrintSensitiveData_sensitive & 1) == 0;
}

void OUTLINED_FUNCTION_3_2(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_unfair_lock_s *a13, uint64_t a14)
{
  a11 = v15;
  a12 = v14;
  a13 = a1;
  a14 = a3;

  [(RPNWActivityMetrics *)a1 _withLock:?];
}

id RPErrorF()
{
  v0 = NSErrorV();

  return v0;
}

id RPConnectionLog()
{
  if (RPConnectionLog_onceToken != -1)
  {
    RPConnectionLog_cold_1();
  }

  v1 = RPConnectionLog___logger;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  [(RPNWActivityMetrics *)v9 _withLock:?];
}

void OUTLINED_FUNCTION_6_0(os_unfair_lock_s *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_unfair_lock_s *a13, int a14)
{
  a11 = v15;
  a12 = v14;
  a13 = a1;
  a14 = a3;

  [(RPNWActivityMetrics *)a1 _withLock:?];
}

void sub_1B6E886EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t result)
{
  v2 = *(result + 48);
  v1 = *(result + 40);
  return result;
}

unsigned int *OUTLINED_FUNCTION_1_2()
{
  result = *(v0 + 152);
  v2 = *result;
  return result;
}

id OUTLINED_FUNCTION_1_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(*a1 + 40);
  *a5 = v6;

  return v6;
}

void OUTLINED_FUNCTION_4_0()
{

  _Block_object_dispose(v0, 8);
}

void sub_1B6E88898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6E88C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6E88CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6E88DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id RPDecodeNSError(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  CFDictionaryGetInt64Ranged();
  v32 = 0;
  v33 = 0;
  v23 = v1;
  v31 = v1;
  if (!v31)
  {
    v32 = 0;
    goto LABEL_6;
  }

  CFDictionaryGetTypeID();
  v32 = CFDictionaryGetTypedValue();
  if (!v32)
  {
LABEL_6:
    TypedValue = 0;
    v33 = 0;
    goto LABEL_7;
  }

  CFDictionaryGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v33 = TypedValue;
  if (TypedValue)
  {
    CFDictionaryGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
  }

LABEL_7:
  v3 = 0;
  v34 = TypedValue;
  v4 = *MEMORY[0x1E696A768];
  v5 = 24;
  v24 = *MEMORY[0x1E696AA08];
  do
  {
    v6 = *(&v31 + v5);
    if (v6)
    {
      Int64Ranged = CFDictionaryGetInt64Ranged();
      CFStringGetTypeID();
      v8 = CFDictionaryGetTypedValue();
      CFStringGetTypeID();
      v9 = CFDictionaryGetTypedValue();
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      if (v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = v4;
      }

      v12 = [v9 length];
      if (v3)
      {
        if (v12)
        {
          v29[0] = v24;
          v29[1] = @"cuErrorMsg";
          v30[0] = v3;
          v30[1] = v9;
          v13 = MEMORY[0x1E695DF20];
          v14 = v30;
          v15 = v29;
          v16 = 2;
        }

        else
        {
          v27 = v24;
          v28 = v3;
          v13 = MEMORY[0x1E695DF20];
          v14 = &v28;
          v15 = &v27;
          v16 = 1;
        }

        v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
        v19 = [v10 initWithDomain:v11 code:Int64Ranged userInfo:v18];

        v3 = v19;
      }

      else if (v12)
      {
        v25 = @"cuErrorMsg";
        v26 = v9;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v3 = [v10 initWithDomain:v11 code:Int64Ranged userInfo:v17];
      }

      else
      {
        v3 = [v10 initWithDomain:v11 code:Int64Ranged userInfo:0];
      }
    }

    v5 -= 8;
  }

  while (v5 != -8);
  for (i = 24; i != -8; i -= 8)
  {
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

void *RPProcessIDToNameString(uint64_t a1)
{
  NSAppendPrintF();
  v1 = 0;
  v2 = [v1 rangeOfString:{@":", a1}];
  v3 = 0;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 substringWithRange:{0, v2}];
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  return v4;
}

uint64_t sub_1B6E89D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6F22848();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1B6E89DC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B6F22848();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B6E89E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B6E89FB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B6E8A0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6F22998();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B6E8A14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6F22998();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B6E8A24C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1B6E8A2F0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
  }

  else
  {
    v7 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B6E8A390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6F22848();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B6E8A480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B6F22848();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B6E8A57C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B6E8A58C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6E8A5C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6E8A600()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6E8A638()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B6E8A688()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

Class initSFService()
{
  if (SharingLibrary_sOnce != -1)
  {
    initSFService_cold_1();
  }

  result = objc_getClass("SFService");
  classSFService = result;
  getSFServiceClass[0] = SFServiceFunction;
  return result;
}

void *__SharingLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  SharingLibrary_sLib = result;
  return result;
}

void sub_1B6E8FFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

nw_protocol_definition_t nwrapport_copy_protocol_definition()
{
  definition = nw_framer_create_definition("rapport-client-peer", 0, &__block_literal_global_51);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B6E85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "registering rapport peer protocol", v2, 2u);
  }

  return definition;
}

uint64_t __nwrapport_copy_protocol_definition_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3010000000;
  v12[4] = 0;
  v12[5] = 0;
  v12[3] = "";
  v3 = nw_framer_message_create(v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __nwrapport_copy_protocol_definition_block_invoke_2;
  v7[3] = &unk_1E7C930F8;
  v10 = v13;
  v11 = v12;
  v4 = v2;
  v8 = v4;
  v5 = v3;
  v9 = v5;
  nw_framer_set_input_handler(v4, v7);
  nw_framer_set_output_handler(v4, &__block_literal_global_59);
  nw_framer_set_stop_handler(v4, &__block_literal_global_63);
  nw_framer_set_cleanup_handler(v4, &__block_literal_global_66);

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v13, 8);

  return 2;
}

void sub_1B6E90828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __nwrapport_copy_protocol_definition_block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(*(v4 + 8) + 24);
  v6 = 16;
  v7 = MEMORY[0x1E69E9C10];
  do
  {
    if (v5)
    {
      break;
    }

    parse[0] = MEMORY[0x1E69E9820];
    parse[1] = 3221225472;
    parse[2] = __nwrapport_copy_protocol_definition_block_invoke_3;
    parse[3] = &unk_1E7C930D0;
    parse[5] = v4;
    parse[6] = 16;
    parse[4] = *(a1 + 56);
    if (!nw_framer_parse_input(v3, 0x10uLL, 0x10uLL, 0, parse))
    {
      goto LABEL_31;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [RPNWFramer controlCodeToString:*(*(*(a1 + 56) + 8) + 32)];
      v9 = *(*(*(a1 + 56) + 8) + 33);
      v10 = strerror(v9);
      v11 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 136315906;
      v23 = v8;
      v24 = 1024;
      v25 = v9;
      v26 = 2080;
      v27 = v10;
      v28 = 2048;
      v29 = v11;
      _os_log_debug_impl(&dword_1B6E85000, v7, OS_LOG_TYPE_DEBUG, "Client RX framer msg header={%s error: %d (%s), length: %zu}", buf, 0x26u);
    }

    v5 = 0;
    v4 = *(a1 + 48);
  }

  while ((*(*(v4 + 8) + 24) & 1) == 0);
  v12 = nw_framer_connection_state_copy_object_value();
  v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v13)
    {
      __nwrapport_copy_protocol_definition_block_invoke_2_cold_1(a1 + 56);
    }

    v14 = *(*(a1 + 56) + 8);
    if (!*(v14 + 32) && *(v14 + 40))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __nwrapport_copy_protocol_definition_block_invoke_2_cold_2(a1 + 56);
      }

      nw_framer_deliver_input_no_copy(v3, *(*(*(a1 + 56) + 8) + 40), *(a1 + 40), 0);
      goto LABEL_30;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __nwrapport_copy_protocol_definition_block_invoke_2_cold_3(a1 + 56);
    }

    v15 = *(a1 + 32);
    v16 = *(*(*(a1 + 56) + 8) + 33);
  }

  else
  {
    if (v13)
    {
      __nwrapport_copy_protocol_definition_block_invoke_2_cold_4();
    }

    if (*(*(*(a1 + 56) + 8) + 36) == 320017171)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __nwrapport_copy_protocol_definition_block_invoke_2_cold_6(a1 + 56);
      }

      v17 = *(a1 + 32);
      nw_framer_connection_state_set_object_value();
      nw_framer_mark_ready(*(a1 + 32));
      goto LABEL_30;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __nwrapport_copy_protocol_definition_block_invoke_2_cold_5(a1 + 56);
    }

    v18 = *(*(a1 + 56) + 8);
    v16 = *(v18 + 33);
    if (!*(v18 + 33))
    {
      *(v18 + 33) = 53;
      v16 = *(*(*(a1 + 56) + 8) + 33);
    }

    v15 = *(a1 + 32);
  }

  nw_framer_mark_failed_with_error(v15, v16);
LABEL_30:
  *(*(*(a1 + 48) + 8) + 24) = 0;

  v6 = 0;
LABEL_31:

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __nwrapport_copy_protocol_definition_block_invoke_3(void *a1, _OWORD *a2, unint64_t a3)
{
  if (!a2 || a1[6] > a3)
  {
    return 0;
  }

  *(*(a1[4] + 8) + 32) = *a2;
  v4 = a1[5];
  result = a1[6];
  *(*(v4 + 8) + 24) = 1;
  return result;
}

void __nwrapport_copy_protocol_definition_block_invoke_57(uint64_t a1, void *a2, uint64_t a3, size_t a4)
{
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __nwrapport_copy_protocol_definition_block_invoke_57_cold_1();
  }

  v6[0] = 0;
  v6[1] = a4;
  nw_framer_write_output(v5, v6, 0x10uLL);
  nw_framer_write_output_no_copy(v5, a4);
}

uint64_t __nwrapport_copy_protocol_definition_block_invoke_60(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __nwrapport_copy_protocol_definition_block_invoke_60_cold_1(v2);
  }

  [RPNWFramer writeControlOnFramer:v2 type:3 error:0 token:0];

  return 1;
}

void __nwrapport_copy_protocol_definition_block_invoke_64(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&dword_1B6E85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cleanup handler called for framer=%@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t RPCompanionLinkFlagsToShortString(__int16 a1, uint64_t a2)
{
  v2 = vdupq_n_s32(a1);
  *a2 = vuzp1_s8(vbsl_s8(vmovn_s32(vceqzq_s32(vandq_s8(v2, xmmword_1B6F2D290))), 0x68007000730075, 0x48005000530055), *v2.i8).u32[0];
  if ((a1 & 0x10) != 0)
  {
    v3 = 65;
  }

  else
  {
    v3 = 97;
  }

  *(a2 + 4) = v3;
  *(a2 + 5) = a1 & 0x20 ^ 0x77;
  v4 = vbsl_s8(vmovn_s32(vceqzq_s32(vandq_s8(v2, xmmword_1B6F2D2A0))), 0x750063006D006CLL, 0x550043004D004CLL);
  *(a2 + 6) = vuzp1_s8(v4, v4).u32[0];
  if ((a1 & 0x400) != 0)
  {
    v5 = 72;
  }

  else
  {
    v5 = 104;
  }

  *(a2 + 10) = v5;
  if ((a1 & 0x800) != 0)
  {
    v6 = 83;
  }

  else
  {
    v6 = 115;
  }

  *(a2 + 11) = v6;
  if ((a1 & 0x1000) != 0)
  {
    v7 = 84;
  }

  else
  {
    v7 = 116;
  }

  *(a2 + 12) = v7;
  *(a2 + 13) = 0;
  return a2;
}

__CFString *RPDeviceClassToString(int a1)
{
  v1 = @"Unknown";
  v2 = @"AudioAccessory";
  v3 = @"RealityDevice";
  v4 = @"Mac";
  if (a1 != 100)
  {
    v4 = @"Unknown";
  }

  if (a1 != 11)
  {
    v3 = v4;
  }

  if (a1 != 7)
  {
    v2 = v3;
  }

  v5 = @"Watch";
  if (a1 != 6)
  {
    v5 = @"Unknown";
  }

  if (a1 == 5)
  {
    v5 = @"FPGA";
  }

  if (a1 <= 6)
  {
    v2 = v5;
  }

  v6 = @"iPad";
  v7 = @"AppleTV";
  if (a1 != 4)
  {
    v7 = @"Unknown";
  }

  if (a1 != 3)
  {
    v6 = v7;
  }

  if (a1 == 2)
  {
    v1 = @"iPod";
  }

  if (a1 == 1)
  {
    v1 = @"iPhone";
  }

  if (a1 > 2)
  {
    v1 = v6;
  }

  if (a1 <= 4)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void RPEncodeNSError(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = *MEMORY[0x1E696A768];
    v6 = 3;
    v7 = *MEMORY[0x1E696AA08];
    v18 = v4;
    while (1)
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = [v3 code];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = -6700;
      }

      v11 = [v8 numberWithInteger:v10];
      [v18 setObject:v11 forKeyedSubscript:@"_ec"];

      v12 = [v3 domain];
      v13 = v12;
      if (v12 && ([v12 isEqual:v5] & 1) == 0)
      {
        [v18 setObject:v13 forKeyedSubscript:@"_ed"];
      }

      v14 = [v3 userInfo];
      CFStringGetTypeID();
      v15 = CFDictionaryGetTypedValue();
      if ([v15 length])
      {
        [v18 setObject:v15 forKeyedSubscript:@"_em"];
      }

      if (!v6)
      {
        break;
      }

      CFErrorGetTypeID();
      v16 = CFDictionaryGetTypedValue();

      if (!v16)
      {
        v3 = 0;
        break;
      }

      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v18 setObject:v17 forKeyedSubscript:@"_eu"];

      --v6;
      v18 = v17;
      v3 = v16;
    }

    v4 = v18;
  }
}

id RPNestedErrorF()
{
  v0 = NSErrorNestedV();

  return v0;
}

id RPVersionToSourceVersionString()
{
  v2 = *MEMORY[0x1E69E9840];
  SourceVersionToCString();
  v0 = *MEMORY[0x1E69E9840];

  return 0;
}

id RPModelOSVersionToSourceVersionString(uint64_t a1, unsigned int *a2)
{
  GestaltProductTypeStringToDeviceClass();
  v3 = *a2;
  v4 = a2[2];
  v5 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v9 = *a2;
  v10 = a2[2];
  v11 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v12 = *a2;
  v13 = a2[2];
  v14 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v15 = *a2;
  v16 = a2[2];
  v17 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v18 = *a2;
  v19 = a2[2];
  v20 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v21 = *a2;
  v22 = a2[2];
  v23 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v24 = *a2;
  v25 = a2[2];
  v26 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v27 = *a2;
  v28 = a2[2];
  v29 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v30 = *a2;
  v31 = a2[2];
  v32 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v33 = *a2;
  v34 = a2[2];
  v35 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v36 = *a2;
  v37 = a2[2];
  v38 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v39 = *a2;
  v40 = a2[2];
  v41 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v42 = *a2;
  v43 = a2[2];
  v44 = a2[4];
  if (DeviceOSVersionAtOrLaterEx())
  {
    goto LABEL_35;
  }

  v45 = *a2;
  v46 = a2[2];
  v47 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v48 = *a2;
  v49 = a2[2];
  v50 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v51 = *a2;
  v52 = a2[2];
  v53 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v54 = *a2;
  v55 = a2[2];
  v56 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v57 = *a2;
  v58 = a2[2];
  v59 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v60 = *a2;
  v61 = a2[2];
  v62 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v63 = *a2;
  v64 = a2[2];
  v65 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v66 = *a2;
  v67 = a2[2];
  v68 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v69 = *a2;
  v70 = a2[2];
  v71 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v72 = *a2;
  v73 = a2[2];
  v74 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v75 = *a2;
  v76 = a2[2];
  v77 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v78 = *a2;
  v79 = a2[2];
  v80 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v81 = *a2;
  v82 = a2[2];
  v83 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v84 = *a2;
  v85 = a2[2];
  v86 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v87 = *a2;
  v88 = a2[2];
  v89 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v90 = *a2;
  v91 = a2[2];
  v92 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v93 = *a2;
  v94 = a2[2];
  v95 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v96 = *a2;
  v97 = a2[2];
  v98 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v99 = *a2;
  v100 = a2[2];
  v101 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v102 = *a2;
  v103 = a2[2];
  v104 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v107 = *a2;
  v108 = a2[2];
  v109 = a2[4];
  if (DeviceOSVersionAtOrLater())
  {
    goto LABEL_35;
  }

  v110 = *a2;
  v111 = a2[2];
  v112 = a2[4];
  if (NADyFF4UGjtVGBmEW6h() || (v113 = *a2, v114 = a2[2], v115 = a2[4], (TN6sBSnEP2() & 1) != 0) || (v116 = *a2, v117 = a2[2], v118 = a2[4], wInTP56r94EFs9NAAi()))
  {
LABEL_35:
    v105 = RPVersionToSourceVersionString();
  }

  else
  {
    v105 = 0;
  }

  return v105;
}

void RPStringToOperatingSystemVersion(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v8 = [a1 componentsSeparatedByString:@"."];
  v3 = [v8 count];
  if (v3)
  {
    v4 = v3;
    v5 = [v8 objectAtIndexedSubscript:0];
    *a2 = [v5 integerValue];

    if (v4 != 1)
    {
      v6 = [v8 objectAtIndexedSubscript:1];
      a2[1] = [v6 integerValue];

      if (v4 >= 3)
      {
        v7 = [v8 objectAtIndexedSubscript:2];
        a2[2] = [v7 integerValue];
      }
    }
  }
}

uint64_t __shouldPrintSensitiveData_block_invoke()
{
  if ((os_variant_has_internal_content() & 1) == 0)
  {
    shouldPrintSensitiveData_sensitive = 1;
  }

  result = CFPrefs_GetInt64();
  if (result)
  {
    shouldPrintSensitiveData_sensitive = 0;
  }

  return result;
}

void sub_1B6E932A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initLSApplicationWorkspace()
{
  if (MobileCoreServicesLibrary_sOnce != -1)
  {
    initLSApplicationWorkspace_cold_1();
  }

  result = objc_getClass("LSApplicationWorkspace");
  classLSApplicationWorkspace = result;
  getLSApplicationWorkspaceClass[0] = LSApplicationWorkspaceFunction;
  return result;
}

void *__MobileCoreServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
  MobileCoreServicesLibrary_sLib = result;
  return result;
}

Class initIMUserNotification()
{
  if (IMFoundationLibrary_sOnce != -1)
  {
    initIMUserNotification_cold_1();
  }

  result = objc_getClass("IMUserNotification");
  classIMUserNotification = result;
  getIMUserNotificationClass[0] = IMUserNotificationFunction;
  return result;
}

void *__IMFoundationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/IMFoundation.framework/IMFoundation", 2);
  IMFoundationLibrary_sLib = result;
  return result;
}

Class initIMUserNotificationCenter()
{
  if (IMFoundationLibrary_sOnce != -1)
  {
    initIMUserNotification_cold_1();
  }

  result = objc_getClass("IMUserNotificationCenter");
  classIMUserNotificationCenter = result;
  getIMUserNotificationCenterClass[0] = IMUserNotificationCenterFunction;
  return result;
}

void sub_1B6E96A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

void sub_1B6E98510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6E99880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

const char *_StateToString(unsigned int a1)
{
  if (a1 > 0x1D)
  {
    return "?";
  }

  else
  {
    return off_1E7C93F58[a1];
  }
}

const char *RPDataLinkTypeToString(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "?";
  }

  else
  {
    return off_1E7C94188[a1];
  }
}

const char *RPFrameTypeToString(int a1)
{
  if (a1 > 47)
  {
    if (a1 <= 63)
    {
      if (a1 == 48)
      {
        return "WatchIdentityRequest";
      }

      if (a1 == 49)
      {
        return "WatchIdentityResponse";
      }
    }

    else
    {
      switch(a1)
      {
        case '@':
          return "FriendIdentityRequest";
        case 'A':
          return "FriendIdentityResponse";
        case 'B':
          return "FriendIdentityUpdate";
      }
    }

    return "?";
  }

  else
  {
    result = "Invalid";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        result = "NoOp";
        break;
      case 3:
        result = "PS_Start";
        break;
      case 4:
        result = "PS_Next";
        break;
      case 5:
        result = "PV_Start";
        break;
      case 6:
        result = "PV_Next";
        break;
      case 7:
        result = "U_OPACK";
        break;
      case 8:
        result = "E_OPACK";
        break;
      case 9:
        result = "P_OPACK";
        break;
      case 10:
        result = "PA_Req";
        break;
      case 11:
        result = "PA_Rsp";
        break;
      case 16:
        result = "SessionStartRequest";
        break;
      case 17:
        result = "SessionStartResponse";
        break;
      case 18:
        result = "SessionData";
        break;
      case 32:
        result = "FamilyIdentityRequest";
        break;
      case 33:
        result = "FamilyIdentityResponse";
        break;
      case 34:
        result = "FamilyIdentityUpdate";
        break;
      default:
        return "?";
    }
  }

  return result;
}

Class initMCProfileConnection()
{
  if (ManagedConfigurationLibrary_sOnce != -1)
  {
    initMCProfileConnection_cold_1();
  }

  result = objc_getClass("MCProfileConnection");
  classMCProfileConnection = result;
  getMCProfileConnectionClass[0] = MCProfileConnectionFunction;
  return result;
}

void *__ManagedConfigurationLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  ManagedConfigurationLibrary_sLib = result;
  return result;
}

id initValMCFeatureRemoteAppPairingAllowed()
{
  if (softLinkOnceMCFeatureRemoteAppPairingAllowed != -1)
  {
    initValMCFeatureRemoteAppPairingAllowed_cold_1();
  }

  v1 = constantValMCFeatureRemoteAppPairingAllowed;

  return v1;
}

void __initValMCFeatureRemoteAppPairingAllowed_block_invoke()
{
  if (ManagedConfigurationLibrary_sOnce != -1)
  {
    initMCProfileConnection_cold_1();
  }

  v0 = dlsym(ManagedConfigurationLibrary_sLib, "MCFeatureRemoteAppPairingAllowed");
  if (v0)
  {
    objc_storeStrong(&constantValMCFeatureRemoteAppPairingAllowed, *v0);
  }

  getMCFeatureRemoteAppPairingAllowed = MCFeatureRemoteAppPairingAllowedFunction;
}

void __RPConnectionLog_block_invoke()
{
  v0 = LogCategoryCopyOSLogHandle();
  v1 = RPConnectionLog___logger;
  RPConnectionLog___logger = v0;
}

void sub_1B6EC1800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC4FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  (*(a11 + 16))();
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC629C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC7ADC(_Unwind_Exception *a1)
{
  (*(v1 + 16))();
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC9204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(v7 + 16))(v7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EC9474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6ECA0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(v7 + 16))(v7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *RPNearFieldTransactionStateDescription(uint64_t a1)
{
  v1 = @"Connected";
  if (a1 == 1)
  {
    v1 = @"Interrupted";
  }

  if (a1 == 2)
  {
    return @"Exchange Completed";
  }

  else
  {
    return v1;
  }
}

Class initSDRDiagnosticReporter()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  result = objc_getClass("SDRDiagnosticReporter");
  classSDRDiagnosticReporter = result;
  getSDRDiagnosticReporterClass[0] = SDRDiagnosticReporterFunction;
  return result;
}

void *__SymptomDiagnosticReporterLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SymptomDiagnosticReporter.framework/SymptomDiagnosticReporter", 2);
  SymptomDiagnosticReporterLibrary_sLib = result;
  return result;
}

id initValkSymptomDiagnosticReplySuccess()
{
  if (softLinkOncekSymptomDiagnosticReplySuccess != -1)
  {
    initValkSymptomDiagnosticReplySuccess_cold_1();
  }

  v1 = constantValkSymptomDiagnosticReplySuccess;

  return v1;
}

void __initValkSymptomDiagnosticReplySuccess_block_invoke()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  v0 = dlsym(SymptomDiagnosticReporterLibrary_sLib, "kSymptomDiagnosticReplySuccess");
  if (v0)
  {
    objc_storeStrong(&constantValkSymptomDiagnosticReplySuccess, *v0);
  }

  getkSymptomDiagnosticReplySuccess = kSymptomDiagnosticReplySuccessFunction;
}

id initValkSymptomDiagnosticReplyReason()
{
  if (softLinkOncekSymptomDiagnosticReplyReason != -1)
  {
    initValkSymptomDiagnosticReplyReason_cold_1();
  }

  v1 = constantValkSymptomDiagnosticReplyReason;

  return v1;
}

void __initValkSymptomDiagnosticReplyReason_block_invoke()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  v0 = dlsym(SymptomDiagnosticReporterLibrary_sLib, "kSymptomDiagnosticReplyReason");
  if (v0)
  {
    objc_storeStrong(&constantValkSymptomDiagnosticReplyReason, *v0);
  }

  getkSymptomDiagnosticReplyReason = kSymptomDiagnosticReplyReasonFunction;
}

id initValkSymptomDiagnosticReplyReasonString()
{
  if (softLinkOncekSymptomDiagnosticReplyReasonString != -1)
  {
    initValkSymptomDiagnosticReplyReasonString_cold_1();
  }

  v1 = constantValkSymptomDiagnosticReplyReasonString;

  return v1;
}

void __initValkSymptomDiagnosticReplyReasonString_block_invoke()
{
  if (SymptomDiagnosticReporterLibrary_sOnce != -1)
  {
    initSDRDiagnosticReporter_cold_1();
  }

  v0 = dlsym(SymptomDiagnosticReporterLibrary_sLib, "kSymptomDiagnosticReplyReasonString");
  if (v0)
  {
    objc_storeStrong(&constantValkSymptomDiagnosticReplyReasonString, *v0);
  }

  getkSymptomDiagnosticReplyReasonString = kSymptomDiagnosticReplyReasonStringFunction;
}

Class initSFDeviceDiscovery()
{
  if (SharingLibrary_sOnce_0 != -1)
  {
    initSFDeviceDiscovery_cold_1();
  }

  result = objc_getClass("SFDeviceDiscovery");
  classSFDeviceDiscovery = result;
  getSFDeviceDiscoveryClass[0] = SFDeviceDiscoveryFunction;
  return result;
}

void *__SharingLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/Sharing.framework/Sharing", 2);
  SharingLibrary_sLib_0 = result;
  return result;
}

void sub_1B6EDBC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDBD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDBF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDBFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDC0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EDC1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_TtC7Rapport27RPPairingReceiverController *RPCreatePairingReceiverController(void *a1)
{
  v1 = a1;
  v2 = [[_TtC7Rapport27RPPairingReceiverController alloc] initWithQueue:v1];

  return v2;
}

void sub_1B6EDFB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

const char *RPDataLinkTypeToString_0(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return "?";
  }

  else
  {
    return off_1E7C94DD8[a1];
  }
}

Class initAVVCStartRecordSettings()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVVCStartRecordSettings");
  classAVVCStartRecordSettings = result;
  getAVVCStartRecordSettingsClass[0] = AVVCStartRecordSettingsFunction;
  return result;
}

void *__AVFAudioLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AVFAudio.framework/AVFAudio", 2);
  AVFAudioLibrary_sLib = result;
  return result;
}

Class initAVAudioFormat()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVAudioFormat");
  classAVAudioFormat = result;
  getAVAudioFormatClass = AVAudioFormatFunction;
  return result;
}

Class initAVVoiceController()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVVoiceController");
  classAVVoiceController = result;
  getAVVoiceControllerClass[0] = AVVoiceControllerFunction;
  return result;
}

Class initAVVCContextSettings()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVVCContextSettings");
  classAVVCContextSettings = result;
  getAVVCContextSettingsClass[0] = AVVCContextSettingsFunction;
  return result;
}

Class initAVVCPrepareRecordSettings()
{
  if (AVFAudioLibrary_sOnce != -1)
  {
    initAVVCStartRecordSettings_cold_1();
  }

  result = objc_getClass("AVVCPrepareRecordSettings");
  classAVVCPrepareRecordSettings = result;
  getAVVCPrepareRecordSettingsClass[0] = AVVCPrepareRecordSettingsFunction;
  return result;
}

void sub_1B6EF75F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(a12 + 16))();
  _Block_object_dispose((v12 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EFA62C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__84(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B6EFB644(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EFBFF0(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B6EFC93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  (*(v31 + 16))(v31);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id RPStreamSessionLog()
{
  if (RPStreamSessionLog_onceToken != -1)
  {
    RPStreamSessionLog_cold_1();
  }

  v1 = RPStreamSessionLog___logger;

  return v1;
}

void sub_1B6EFE058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6EFEF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  (*(v39 + 16))(v39);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void __RPStreamSessionLog_block_invoke()
{
  v0 = LogCategoryCopyOSLogHandle();
  v1 = RPStreamSessionLog___logger;
  RPStreamSessionLog___logger = v0;
}

Class initRTIDataPayload()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIDataPayload_cold_1();
  }

  result = objc_getClass("RTIDataPayload");
  classRTIDataPayload = result;
  getRTIDataPayloadClass[0] = RTIDataPayloadFunction;
  return result;
}

void *__RemoteTextInputLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/RemoteTextInput.framework/RemoteTextInput", 2);
  RemoteTextInputLibrary_sLib = result;
  return result;
}

Class initRTIInputSystemDataPayload()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIDataPayload_cold_1();
  }

  result = objc_getClass("RTIInputSystemDataPayload");
  classRTIInputSystemDataPayload = result;
  _MergedGlobals[0] = RTIInputSystemDataPayloadFunction;
  return result;
}

Class initRTIInputSystemSourceSession()
{
  if (RemoteTextInputLibrary_sOnce != -1)
  {
    initRTIDataPayload_cold_1();
  }

  result = objc_getClass("RTIInputSystemSourceSession");
  classRTIInputSystemSourceSession = result;
  off_1EE8AC1F8 = RTIInputSystemSourceSessionFunction;
  return result;
}

uint64_t sub_1B6F01D48()
{
  v0 = sub_1B6F22908();
  __swift_allocate_value_buffer(v0, qword_1EB97E7A0);
  __swift_project_value_buffer(v0, qword_1EB97E7A0);
  return sub_1B6F228F8();
}

uint64_t sub_1B6F01DC4()
{
  if (qword_1EB97C020 != -1)
  {
    swift_once();
  }

  v0 = sub_1B6F22908();

  return __swift_project_value_buffer(v0, qword_1EB97E7A0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B6F01F4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B6F01FA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B6F0203C()
{
  v1 = 0x614E656369766564;
  v2 = 0x5249656369766564;
  if (*v0 != 2)
  {
    v2 = 0x7550656369766564;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B6F020D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6F047D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6F02114(uint64_t a1)
{
  v2 = sub_1B6F023EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F02150(uint64_t a1)
{
  v2 = sub_1B6F023EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F0218C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B980, &qword_1B6F2F3A0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F023EC();
  sub_1B6F22D38();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  sub_1B6F22C48();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    sub_1B6F22C48();
    v21 = *(v3 + 2);
    v19 = *(v3 + 2);
    v18 = 2;
    sub_1B6F02440(&v21, v17);
    sub_1B6F0249C();
    sub_1B6F22C58();
    sub_1B6F01FA0(v19, *(&v19 + 1));
    v19 = *(v3 + 3);
    v20 = v19;
    v18 = 3;
    sub_1B6F02440(&v20, v17);
    sub_1B6F22C58();
    sub_1B6F01FA0(v19, *(&v19 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B6F023EC()
{
  result = qword_1EB97C028;
  if (!qword_1EB97C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97C028);
  }

  return result;
}

unint64_t sub_1B6F0249C()
{
  result = qword_1EB97B988;
  if (!qword_1EB97B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97B988);
  }

  return result;
}

double sub_1B6F024F0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1B6F04954(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_1B6F0254C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6564644165746164;
    if (a1 != 2)
    {
      v5 = 0x614E656369766564;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x614E796C696D6166;
    v2 = 0x5249656369766564;
    if (a1 != 7)
    {
      v2 = 0x7550656369766564;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x696669746E656469;
    if (a1 != 4)
    {
      v3 = 0x6D614E6E65766967;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B6F02694()
{
  v1 = *v0;
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](v1);
  return sub_1B6F22D18();
}

uint64_t sub_1B6F026DC()
{
  v1 = *v0;
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](v1);
  return sub_1B6F22D18();
}

uint64_t sub_1B6F02728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6F05A5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6F0275C(uint64_t a1)
{
  v2 = sub_1B6F04CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F02798(uint64_t a1)
{
  v2 = sub_1B6F04CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F027D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B990, &qword_1B6F2F3A8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F04CEC();
  sub_1B6F22D38();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v33) = 0;
  sub_1B6F22C28();
  if (!v2)
  {
    v13 = v3[3];
    v33 = v3[2];
    v34 = v13;
    v35 = 1;
    sub_1B6F04CB8(v33, v13);
    sub_1B6F0249C();
    sub_1B6F22C38();
    sub_1B6F04D40(v33, v34);
    v14 = type metadata accessor for RPPairingTemporaryIdentity(0);
    v15 = v14[6];
    LOBYTE(v33) = 2;
    sub_1B6F22848();
    sub_1B6F04EBC(&qword_1EB97B998, MEMORY[0x1E6969530]);
    sub_1B6F22C58();
    v16 = (v3 + v14[7]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v33) = 3;
    sub_1B6F22C48();
    v19 = (v3 + v14[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v33) = 4;
    sub_1B6F22C48();
    v22 = (v3 + v14[9]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v33) = 5;
    sub_1B6F22C48();
    v25 = (v3 + v14[10]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v33) = 6;
    sub_1B6F22C48();
    v28 = (v3 + v14[11]);
    v29 = v28[1];
    v33 = *v28;
    v34 = v29;
    v35 = 7;
    sub_1B6F01F4C(v33, v29);
    sub_1B6F22C58();
    sub_1B6F01FA0(v33, v34);
    v30 = (v3 + v14[12]);
    v31 = v30[1];
    v33 = *v30;
    v34 = v31;
    v35 = 8;
    sub_1B6F01F4C(v33, v31);
    sub_1B6F22C58();
    sub_1B6F01FA0(v33, v34);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B6F02B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1B6F22848();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00]();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B9A0, &qword_1B6F2F3B0);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v35 - v10;
  v12 = type metadata accessor for RPPairingTemporaryIdentity(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  sub_1B6F04CEC();
  v41 = v11;
  sub_1B6F22D28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  v18 = v39;
  v36 = v4;
  LOBYTE(v43) = 0;
  *v15 = sub_1B6F22BC8();
  *(v15 + 1) = v19;
  v44 = 1;
  sub_1B6F04D54();
  sub_1B6F22BD8();
  *(v15 + 1) = v43;
  LOBYTE(v43) = 2;
  sub_1B6F04EBC(&qword_1EB97B9B0, MEMORY[0x1E6969530]);
  v20 = v36;
  v35 = 0;
  sub_1B6F22BF8();
  (*(v38 + 32))(&v15[v12[6]], v7, v20);
  LOBYTE(v43) = 3;
  v21 = v41;
  v22 = sub_1B6F22BE8();
  v23 = &v15[v12[7]];
  *v23 = v22;
  v23[1] = v24;
  LOBYTE(v43) = 4;
  v25 = sub_1B6F22BE8();
  v26 = &v15[v12[8]];
  *v26 = v25;
  v26[1] = v27;
  LOBYTE(v43) = 5;
  v28 = sub_1B6F22BE8();
  v29 = &v15[v12[9]];
  *v29 = v28;
  v29[1] = v30;
  LOBYTE(v43) = 6;
  v31 = sub_1B6F22BE8();
  v32 = &v15[v12[10]];
  *v32 = v31;
  v32[1] = v33;
  v44 = 7;
  sub_1B6F22BF8();
  *&v15[v12[11]] = v43;
  v44 = 8;
  sub_1B6F22BF8();
  (*(v18 + 8))(v21, v40);
  *&v15[v12[12]] = v43;
  sub_1B6F04DA8(v15, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return sub_1B6F04E0C(v15);
}

id sub_1B6F0339C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_bonjourServiceID;
  v10 = sub_1B6F22878();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v7[v9], a3, v10);
  v14.receiver = v7;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a3, v10);
  return v12;
}

unint64_t sub_1B6F03640()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7550726576726573;
  }

  *v0;
  return result;
}

uint64_t sub_1B6F0368C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7550726576726573 && a2 == 0xEF79654B63696C62;
  if (v6 || (sub_1B6F22C78() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B6F453A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6F22C78();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B6F03784(uint64_t a1)
{
  v2 = sub_1B6F04E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6F037C0(uint64_t a1)
{
  v2 = sub_1B6F04E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6F0387C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B9C0, &qword_1B6F2F3B8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F04E68();
  sub_1B6F22D38();
  v11 = *(v3 + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey + 8);
  v14 = *(v3 + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey);
  v15 = v11;
  v13[15] = 0;
  sub_1B6F01F4C(v14, v11);
  sub_1B6F0249C();
  sub_1B6F22C58();
  sub_1B6F01FA0(v14, v15);
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1B6F22878();
    sub_1B6F04EBC(&qword_1EB97B9C8, MEMORY[0x1E69695A8]);
    sub_1B6F22C58();
  }

  return (*(v6 + 8))(v9, v5);
}

char *sub_1B6F03AA4(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1B6F22878();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97B9D0, &unk_1B6F2F3C0);
  v7 = *(v20 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F04E68();
  sub_1B6F22D28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v15 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x30);
    v16 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v25 = 0;
    sub_1B6F04D54();
    v14 = v20;
    sub_1B6F22BF8();
    *(v22 + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey) = v24;
    LOBYTE(v24) = 1;
    sub_1B6F04EBC(&qword_1EB97B9D8, MEMORY[0x1E69695A8]);
    sub_1B6F22BF8();
    v18 = v22;
    (*(v19 + 32))(v22 + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_bonjourServiceID, v12, v3);
    v23.receiver = v18;
    v23.super_class = ObjectType;
    v6 = objc_msgSendSuper2(&v23, sel_init);
    (*(v13 + 8))(v10, v14);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v6;
}

char *sub_1B6F03E04@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_1B6F03AA4(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_1B6F03EA8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1B6F229F8();

  return v6;
}

id sub_1B6F03F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_deviceName];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_givenName];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_familyName];
  *v21 = a5;
  *(v21 + 1) = a6;
  v22 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pin];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = &v18[OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pake];
  v24 = a9[1];
  *v23 = *a9;
  *(v23 + 1) = v24;
  v25 = a9[6];
  *(v23 + 5) = a9[5];
  *(v23 + 6) = v25;
  v26 = a9[4];
  *(v23 + 3) = a9[3];
  *(v23 + 4) = v26;
  *(v23 + 2) = a9[2];
  v28.receiver = v18;
  v28.super_class = v9;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_1B6F0405C()
{
  v1 = v0;
  sub_1B6F22B28();
  v3 = *(v0 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_deviceName);
  v2 = *(v0 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_deviceName + 8);

  MEMORY[0x1B8C9DA10](8236, 0xE200000000000000);
  MEMORY[0x1B8C9DA10](*(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_givenName), *(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_givenName + 8));
  MEMORY[0x1B8C9DA10](8236, 0xE200000000000000);
  MEMORY[0x1B8C9DA10](*(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_familyName), *(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_familyName + 8));
  MEMORY[0x1B8C9DA10](8236, 0xE200000000000000);
  MEMORY[0x1B8C9DA10](*(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pin), *(v1 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pin + 8));
  MEMORY[0x1B8C9DA10](0x3A444963202CLL, 0xE600000000000000);
  v4 = (v0 + OBJC_IVAR____TtC7Rapport16RPPairingPINInfo_pake);
  MEMORY[0x1B8C9DA10](v4[2], v4[3]);
  MEMORY[0x1B8C9DA10](0x3A444973202CLL, 0xE600000000000000);
  MEMORY[0x1B8C9DA10](v4[4], v4[5]);
  return v3;
}

id sub_1B6F041C8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6F04324()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(RPClient) init];
  v0[20] = v2;
  [v2 setDispatchQueue_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B6F0447C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA08, qword_1B6F2F3D0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B6F046F4;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v2 getIdentitiesWithFlags:1 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B6F0447C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1B6F04684;
  }

  else
  {
    v3 = sub_1B6F0458C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B6F0458C()
{
  v1 = *(v0 + 144);
  [*(v0 + 160) invalidate];
  if (v1 >> 62)
  {
    result = sub_1B6F22B88();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v4 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1B8C9DAD0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

LABEL_9:
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1B6F04684()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_1B6F046F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA28, &qword_1B6F2F998);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1B6F05DA8();
    **(*(v4 + 64) + 40) = sub_1B6F22A98();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1B6F047D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1B6F22C78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B6F22C78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B6F22C78();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B6F04954@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA30, &unk_1B6F2F9A0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1B6F023EC();
  sub_1B6F22D28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32) = 0;
  v11 = sub_1B6F22BE8();
  v27 = v12;
  LOBYTE(v32) = 1;
  v13 = sub_1B6F22BE8();
  v26 = v14;
  v24 = v13;
  LOBYTE(v28) = 2;
  v25 = sub_1B6F04D54();
  sub_1B6F22BF8();
  v23 = v32;
  v39 = 3;
  sub_1B6F22BF8();
  (*(v6 + 8))(v9, v5);
  v22 = *(&v38 + 1);
  v25 = v38;
  v16 = v26;
  v15 = v27;
  *&v28 = v11;
  *(&v28 + 1) = v27;
  v17 = v24;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  v18 = v23;
  v30 = v23;
  v31 = v38;
  sub_1B6F05DF4(&v28, &v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *&v32 = v11;
  *(&v32 + 1) = v15;
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v36 = v25;
  v37 = v22;
  result = sub_1B6F05E2C(&v32);
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  return result;
}

uint64_t sub_1B6F04CB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B6F01F4C(a1, a2);
  }

  return a1;
}

unint64_t sub_1B6F04CEC()
{
  result = qword_1EB97C030;
  if (!qword_1EB97C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97C030);
  }

  return result;
}

uint64_t sub_1B6F04D40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B6F01FA0(a1, a2);
  }

  return a1;
}

unint64_t sub_1B6F04D54()
{
  result = qword_1EB97B9A8;
  if (!qword_1EB97B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97B9A8);
  }

  return result;
}

uint64_t sub_1B6F04DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPPairingTemporaryIdentity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6F04E0C(uint64_t a1)
{
  v2 = type metadata accessor for RPPairingTemporaryIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6F04E68()
{
  result = qword_1EB97C038[0];
  if (!qword_1EB97C038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C038);
  }

  return result;
}

uint64_t sub_1B6F04EBC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6F04F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6F05008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6F05050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B6F050D8()
{
  sub_1B6F051B8(319, &qword_1EB97BA10);
  if (v0 <= 0x3F)
  {
    sub_1B6F051B8(319, &qword_1EB97BA18);
    if (v1 <= 0x3F)
    {
      sub_1B6F22848();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B6F051B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B6F22AF8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1B6F0522C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6F05264()
{
  result = sub_1B6F22878();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingBonjourResolveResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingBonjourResolveResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingTemporaryIdentity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingTemporaryIdentity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPPairingIdentity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPPairingIdentity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B6F05748()
{
  result = qword_1EB97C460[0];
  if (!qword_1EB97C460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C460);
  }

  return result;
}

unint64_t sub_1B6F057A0()
{
  result = qword_1EB97C670[0];
  if (!qword_1EB97C670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C670);
  }

  return result;
}

unint64_t sub_1B6F057F8()
{
  result = qword_1EB97C880[0];
  if (!qword_1EB97C880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C880);
  }

  return result;
}

unint64_t sub_1B6F05850()
{
  result = qword_1EB97C990;
  if (!qword_1EB97C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97C990);
  }

  return result;
}

unint64_t sub_1B6F058A8()
{
  result = qword_1EB97C998[0];
  if (!qword_1EB97C998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97C998);
  }

  return result;
}

unint64_t sub_1B6F05900()
{
  result = qword_1EB97CA20;
  if (!qword_1EB97CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97CA20);
  }

  return result;
}

unint64_t sub_1B6F05958()
{
  result = qword_1EB97CA28[0];
  if (!qword_1EB97CA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97CA28);
  }

  return result;
}

unint64_t sub_1B6F059B0()
{
  result = qword_1EB97CAB0;
  if (!qword_1EB97CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97CAB0);
  }

  return result;
}

unint64_t sub_1B6F05A08()
{
  result = qword_1EB97CAB8[0];
  if (!qword_1EB97CAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB97CAB8);
  }

  return result;
}

uint64_t sub_1B6F05A5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B6F45440 == a2;
  if (v3 || (sub_1B6F22C78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B6F45460 == a2 || (sub_1B6F22C78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1B6F22C78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B6F22C78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_1B6F22C78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5249656369766564 && a2 == 0xED0000617461444BLL || (sub_1B6F22C78() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7550656369766564 && a2 == 0xEF79654B63696C62)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B6F22C78();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B6F05DA8()
{
  result = qword_1EB97BA20;
  if (!qword_1EB97BA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB97BA20);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1B6F05EDC()
{
  v0 = sub_1B6F229C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F229A8();
  v5 = sub_1B6F229B8();
  result = (*(v1 + 8))(v4, v0);
  qword_1EB97CB48 = v5 / 8;
  return result;
}

uint64_t sub_1B6F05FBC()
{
  v0 = sub_1B6F22888();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6F228D8();
  __swift_allocate_value_buffer(v5, qword_1EB97CB58);
  __swift_project_value_buffer(v5, qword_1EB97CB58);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969830], v0);
  sub_1B6F22898();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1B6F060DC()
{
  v0 = sub_1B6F22908();
  __swift_allocate_value_buffer(v0, qword_1EB97CB78);
  v1 = __swift_project_value_buffer(v0, qword_1EB97CB78);
  if (qword_1EB97CB90 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB97E7C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B6F061A4()
{
  v0 = sub_1B6F22908();
  __swift_allocate_value_buffer(v0, qword_1EB97E7C0);
  __swift_project_value_buffer(v0, qword_1EB97E7C0);
  return sub_1B6F228F8();
}

uint64_t sub_1B6F062BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id RPIRKRatchet.__allocating_init(starting:locallyPermanentSeed:sameAccountDevicesRevision:managedAccountsRevision:contactsRevision:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v57 = a6;
  v55 = a5;
  v49 = a4;
  v62 = a1;
  v65[1] = *MEMORY[0x1E69E9840];
  v56 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v58 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  v15 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B6F22998();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00]();
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v7;
  v52 = objc_allocWithZone(v7);
  __src = a2;
  v65[0] = a3;
  v60 = a2;
  v61 = a3;
  sub_1B6F01F4C(a2, a3);
  sub_1B6F22988();
  v50 = v25;
  v51 = v22;
  v26 = *(v22 + 16);
  v27 = v25;
  v28 = v49;
  v54 = v21;
  v26(v20, v27, v21);
  __src = v28;
  __src = sub_1B6F106BC(&__src, v65);
  v65[0] = v29 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v65[0]);
  v30 = v48;
  sub_1B6F062BC(v20, &v17[*(v48 + 24)], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v30 + 20)] = v28;
  v31 = v55;
  __src = v55;
  __src = sub_1B6F106BC(&__src, v65);
  v65[0] = v32 & 0xFFFFFFFFFFFFFFLL;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v65[0]);
  v33 = v53;
  sub_1B6F062BC(v17, &v14[*(v53 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v33 + 20)] = v31;
  v34 = v20;
  v35 = v57;
  __src = v57;
  __src = sub_1B6F106BC(&__src, v65);
  v65[0] = v36 & 0xFFFFFFFFFFFFFFLL;
  v37 = v58;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v65[0]);
  v38 = v56;
  sub_1B6F062BC(v14, v37 + *(v56 + 24), type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *(v37 + *(v38 + 20)) = v35;
  (*(v51 + 8))(v50, v54);
  v39 = OBJC_IVAR____TtC7Rapport12RPIRKRatchet_startDate;
  v40 = sub_1B6F22848();
  v41 = *(v40 - 8);
  v42 = v52;
  v43 = v62;
  (*(v41 + 16))(&v52[v39], v62, v40);
  sub_1B6F10828(v34, v42 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_locallyPermanent, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  sub_1B6F10828(v17, v42 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_sameAccountDevices, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  sub_1B6F10828(v14, v42 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_managedAccounts, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  sub_1B6F10828(v37, v42 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_contacts, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  v63.receiver = v42;
  v63.super_class = v59;
  v44 = objc_msgSendSuper2(&v63, sel_init);
  sub_1B6F01FA0(v60, v61);
  (*(v41 + 8))(v43, v40);
  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

id RPIRKRatchet.init(starting:locallyPermanentSeed:sameAccountDevicesRevision:managedAccountsRevision:contactsRevision:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1B6F10890(a1, a2, a3, a4, a5, a6);
  sub_1B6F01FA0(a2, a3);
  return v8;
}

uint64_t RPIRKRatchet.DateRatchet.irk(for:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B6F22998();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B6F0AEA4(a1, v13);
  if (!v2)
  {
    RPIRKRatchet.DateRatchet.key.getter(v9);
    v15 = sub_1B6F16738();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    v18 = type metadata accessor for RPIRKRatchet.IRK(0);
    sub_1B6F062BC(a1, a2 + *(v18 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
    result = sub_1B6F10828(v13, a2 + *(v18 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
    *a2 = v15;
    a2[1] = v17;
  }

  return result;
}

uint64_t static RPIRKRatchet.dateRatchetIRKData(fromPermanentIRK:for:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v77 = a2;
  v80[1] = *MEMORY[0x1E69E9840];
  v73 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v5 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  v10 = *(*(v70 - 1) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  v12 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  v15 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B6F22998();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B6F22848();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = *(v30 + 16);
  v63 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a3;
  v69 = v32;
  v67 = v30;
  v68 = v30 + 16;
  v66 = v31;
  v31();
  v65 = type metadata accessor for RPIRKRatchet(0);
  v62 = objc_allocWithZone(v65);
  __src = a1;
  v80[0] = v77;
  sub_1B6F01F4C(a1, v77);
  sub_1B6F22988();
  v76 = v22;
  v77 = v23;
  (*(v23 + 16))(v21, v26, v22);
  __src = 0;
  __src = sub_1B6F106BC(&__src, v80);
  v80[0] = v33 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v80[0]);
  v60 = v21;
  v34 = v59;
  sub_1B6F062BC(v21, &v17[*(v59 + 24)], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v34 + 20)] = 0;
  __src = 0;
  __src = sub_1B6F106BC(&__src, v80);
  v80[0] = v35 & 0xFFFFFFFFFFFFFFLL;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v80[0]);
  v36 = v61;
  sub_1B6F062BC(v17, &v14[*(v61 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v36 + 20)] = 0;
  __src = 0;
  __src = sub_1B6F106BC(&__src, v80);
  v80[0] = v37 & 0xFFFFFFFFFFFFFFLL;
  v38 = v64;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v80[0]);
  v39 = v70;
  sub_1B6F062BC(v14, v38 + *(v70 + 6), type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *(v38 + *(v39 + 20)) = 0;
  v40 = *(v77 + 8);
  v70 = v26;
  v77 += 8;
  v61 = v40;
  v40(v26, v76);
  v42 = v62;
  v41 = v63;
  v43 = v69;
  v44 = v66;
  (v66)(&v62[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_startDate], v63, v69);
  sub_1B6F10828(v60, v42 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_locallyPermanent, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  sub_1B6F10828(v17, v42 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_sameAccountDevices, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  sub_1B6F10828(v14, v42 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_managedAccounts, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  sub_1B6F10828(v38, v42 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_contacts, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  v78.receiver = v42;
  v78.super_class = v65;
  v45 = objc_msgSendSuper2(&v78, sel_init);
  (*(v67 + 8))(v41, v43);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 64);
  v49 = v71;
  (v44)(v71, v72, v43);
  *(v49 + v47) = 4;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v50 = sub_1B6F228D8();
  v51 = __swift_project_value_buffer(v50, qword_1EB97CB58);
  (*(*(v50 - 8) + 16))(v49 + v48, v51, v50);
  swift_storeEnumTagMultiPayload();
  v53 = v74;
  v52 = v75;
  v54 = v45;
  (*((*MEMORY[0x1E69E7D40] & *v45) + 0x88))(v49);
  sub_1B6F12184(v49, type metadata accessor for RPIRKRatchet.IRKTarget);
  if (v52)
  {
  }

  else
  {
    v55 = v70;
    RPIRKRatchet.DateRatchet.key.getter(v70);
    sub_1B6F12184(v53, type metadata accessor for RPIRKRatchet.DateRatchet);
    v54 = sub_1B6F16738();

    (v61)(v55, v76);
  }

  v56 = *MEMORY[0x1E69E9840];
  return v54;
}

uint64_t RPIRKRatchet.DateRatchet.key.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for RPIRKRatchet.DateRatchet(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F062BC(v2, v6, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = sub_1B6F22998();
  v9 = *(*(v8 - 8) + 32);
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v10 = &unk_1EB97BA78;
        v11 = &unk_1B6F2FA00;
      }

      else
      {
        v10 = &unk_1EB97BA70;
        v11 = &unk_1B6F2F9F8;
      }
    }

    else
    {
      v10 = &unk_1EB97BA80;
      v11 = &unk_1B6F2FA08;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v10 = &unk_1EB97BA58;
      v11 = &unk_1B6F2F9E0;
    }

    else
    {
      v10 = &unk_1EB97BA50;
      v11 = &unk_1B6F2F9D8;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v10 = &unk_1EB97BA68;
    v11 = &unk_1B6F2F9F0;
  }

  else
  {
    v10 = &unk_1EB97BA60;
    v11 = &unk_1B6F2F9E8;
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v10, v11) + 48);
  v9(a1, v6, v8);
  return sub_1B6F12184(&v6[v12], type metadata accessor for RPIRKRatchet.DateRatchet.Source);
}

uint64_t sub_1B6F078A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = sub_1B6F22998();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v16 = sub_1B6F228D8();
  __swift_project_value_buffer(v16, qword_1EB97CB58);
  result = sub_1B6F0AA98(v15);
  if (!v2)
  {
    sub_1B6F0AEA4(a1, v13);
    RPIRKRatchet.DateRatchet.key.getter(v8);
    v18 = sub_1B6F16738();
    v24 = v19;
    (*(v5 + 8))(v8, v4);
    sub_1B6F12184(v15, type metadata accessor for RPIRKRatchet.DateRatchet);
    v20 = type metadata accessor for RPIRKRatchet.IRK(0);
    v21 = v25;
    sub_1B6F062BC(a1, v25 + *(v20 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
    result = sub_1B6F10828(v13, v21 + *(v20 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
    v22 = v24;
    *v21 = v18;
    v21[1] = v22;
  }

  return result;
}

uint64_t RPIRKRatchet.ContactsRatchet.irk(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B6F22998();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v17 = sub_1B6F228D8();
  __swift_project_value_buffer(v17, qword_1EB97CB58);
  result = sub_1B6F0AA98(v16);
  if (!v2)
  {
    sub_1B6F0AEA4(a1, v14);
    RPIRKRatchet.DateRatchet.key.getter(v9);
    v19 = sub_1B6F16738();
    v24 = v20;
    (*(v6 + 8))(v9, v5);
    sub_1B6F12184(v16, type metadata accessor for RPIRKRatchet.DateRatchet);
    v21 = type metadata accessor for RPIRKRatchet.IRK(0);
    sub_1B6F062BC(a1, a2 + *(v21 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
    result = sub_1B6F10828(v14, a2 + *(v21 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
    v22 = v24;
    *a2 = v19;
    a2[1] = v22;
  }

  return result;
}

uint64_t sub_1B6F07D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v9 = sub_1B6F228D8();
  __swift_project_value_buffer(v9, qword_1EB97CB58);
  result = sub_1B6F0AA98(v8);
  if (!v2)
  {
    sub_1B6F0AEA4(a1, a2);
    return sub_1B6F12184(v8, type metadata accessor for RPIRKRatchet.DateRatchet);
  }

  return result;
}

uint64_t RPIRKRatchet.IRK.keyData.getter()
{
  v1 = *v0;
  sub_1B6F01F4C(*v0, *(v0 + 8));
  return v1;
}

uint64_t RPIRKRatchet.IRK.description.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v10 = sub_1B6F227D8();
  MEMORY[0x1B8C9DA10](32, 0xE100000000000000);
  v4 = type metadata accessor for RPIRKRatchet.IRK(0);
  v5 = v0 + *(v4 + 20);
  v6 = RPIRKRatchet.IRKTarget.description.getter();
  MEMORY[0x1B8C9DA10](v6);

  MEMORY[0x1B8C9DA10](23328, 0xE200000000000000);
  v7 = v1 + *(v4 + 24);
  v8 = RPIRKRatchet.DateRatchet.description.getter();
  MEMORY[0x1B8C9DA10](v8);

  MEMORY[0x1B8C9DA10](93, 0xE100000000000000);
  return v10;
}

uint64_t sub_1B6F07F88(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  v5 = v1[1];
  v11 = sub_1B6F227D8();
  MEMORY[0x1B8C9DA10](32, 0xE100000000000000);
  v6 = v1 + *(a1 + 20);
  v7 = RPIRKRatchet.IRKTarget.description.getter();
  MEMORY[0x1B8C9DA10](v7);

  MEMORY[0x1B8C9DA10](23328, 0xE200000000000000);
  v8 = v3 + *(a1 + 24);
  v9 = RPIRKRatchet.DateRatchet.description.getter();
  MEMORY[0x1B8C9DA10](v9);

  MEMORY[0x1B8C9DA10](93, 0xE100000000000000);
  return v11;
}

uint64_t sub_1B6F08078@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1B6F0811C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = v1;
  v3 = sub_1B6F228D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v38 - v9;
  v10 = sub_1B6F22848();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - v22;
  sub_1B6F062BC(v2, &v38 - v22, type metadata accessor for RPIRKRatchet.IRKTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48);
    sub_1B6F22828();
    return (*(v4 + 8))(&v23[v26], v3);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0) + 64);
    (*(v40 + 32))(v42, v23, v41);
    return (*(v4 + 8))(&v23[v26], v3);
  }

  sub_1B6F22828();
  sub_1B6F062BC(v2, v21, type metadata accessor for RPIRKRatchet.IRKTarget);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
    v43 = v21[*(v28 + 48)];
    v29 = &v21[*(v28 + 64)];
    v38 = *(v4 + 8);
    v38(v29, v3);
    (*(v40 + 8))(v21, v41);
  }

  else
  {
    v43 = *v21;
    v25 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48)];
    v38 = *(v4 + 8);
    v38(v25, v3);
  }

  v44 = v43;
  sub_1B6F062BC(v2, v18, type metadata accessor for RPIRKRatchet.IRKTarget);
  v30 = swift_getEnumCaseMultiPayload();
  v31 = *(v4 + 32);
  if (v30)
  {
    v32 = v39;
    if (v30 == 1)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
      v31(v8, &v18[*(v33 + 48)], v3);
    }

    else
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
      v31(v8, &v18[*(v35 + 64)], v3);
      (*(v40 + 8))(v18, v41);
    }
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v31(v8, &v18[*(v34 + 48)], v3);
    v32 = v39;
  }

  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48);
  v31(v32, v8, v3);
  sub_1B6F08628(v13, v32, v42);
  v37 = v38;
  v38(v32, v3);
  (*(v40 + 8))(v13, v41);
  return v37(&v23[v36], v3);
}

uint64_t sub_1B6F08628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44[1] = a2;
  v44[2] = a1;
  v45 = a3;
  v4 = sub_1B6F228B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x1EEE9AC00])();
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA90, &qword_1B6F2FA18) - 8) + 64);
  v10 = (MEMORY[0x1EEE9AC00])();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v44 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v44 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v44 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v44 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v26 = v44 - v25;
  v27 = *v3;
  if (v27 > 2)
  {
    if (*v3 <= 4u)
    {
      v28 = v23;
      if (v27 == 3)
      {
        (*(v5 + 104))(v8, *MEMORY[0x1E6969A78], v4);
        sub_1B6F228A8();
        (*(v5 + 8))(v8, v4);
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_1B6F22B28();

        v46 = 0xD000000000000018;
        v47 = 0x80000001B6F45620;
        sub_1B6F22848();
        sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530]);
        v29 = sub_1B6F22C68();
        MEMORY[0x1B8C9DA10](v29);

        sub_1B6F16568(v46, v47, 0xD000000000000048, 0x80000001B6F45590, 219, v28, v45);
        v30 = v19;
      }

      else
      {
        (*(v5 + 104))(v8, *MEMORY[0x1E6969A78], v4);
        sub_1B6F228A8();
        (*(v5 + 8))(v8, v4);
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_1B6F22B28();

        v46 = 0xD000000000000017;
        v47 = 0x80000001B6F45600;
        sub_1B6F22848();
        sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530]);
        v42 = sub_1B6F22C68();
        MEMORY[0x1B8C9DA10](v42);

        sub_1B6F16568(v46, v47, 0xD000000000000048, 0x80000001B6F45590, 221, v28, v45);
        v30 = v16;
      }

      goto LABEL_15;
    }

    v33 = v23;
    if (v27 == 5)
    {
      (*(v5 + 104))(v8, *MEMORY[0x1E6969A10], v4);
      sub_1B6F228A8();
      (*(v5 + 8))(v8, v4);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1B6F22B28();

      v46 = 0xD000000000000016;
      v47 = 0x80000001B6F455E0;
      sub_1B6F22848();
      sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530]);
      v34 = sub_1B6F22C68();
      MEMORY[0x1B8C9DA10](v34);

      sub_1B6F16568(v46, v47, 0xD000000000000048, 0x80000001B6F45590, 223, v33, v45);
      v30 = v13;
LABEL_15:
      sub_1B6F1224C(v30);
    }

    v22 = v24;
    (*(v5 + 104))(v8, *MEMORY[0x1E6969A48], v4);
    sub_1B6F228A8();
    (*(v5 + 8))(v8, v4);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1B6F22B28();

    v46 = 0xD000000000000015;
    v47 = 0x80000001B6F45570;
    sub_1B6F22848();
    sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530]);
    v43 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v43);

    v37 = v46;
    v38 = v45;
    v39 = v47;
    v40 = 225;
    v41 = v33;
LABEL_14:
    sub_1B6F16568(v37, v39, 0xD000000000000048, 0x80000001B6F45590, v40, v41, v38);
    v30 = v22;
    goto LABEL_15;
  }

  if (!*v3)
  {
    return sub_1B6F227F8();
  }

  v31 = v23;
  if (v27 != 1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x1E6969A78], v4);
    sub_1B6F228A8();
    (*(v5 + 8))(v8, v4);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1B6F22B28();

    v46 = 0xD000000000000018;
    v47 = 0x80000001B6F45640;
    sub_1B6F22848();
    sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530]);
    v36 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v36);

    v37 = v46;
    v38 = v45;
    v39 = v47;
    v40 = 217;
    v41 = v31;
    goto LABEL_14;
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E6969A68], v4);
  sub_1B6F228A8();
  (*(v5 + 8))(v8, v4);
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1B6F22B28();

  v46 = 0xD000000000000016;
  v47 = 0x80000001B6F45660;
  sub_1B6F22848();
  sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530]);
  v32 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v32);

  sub_1B6F16568(v46, v47, 0xD000000000000048, 0x80000001B6F45590, 215, v31, v45);
  sub_1B6F1224C(v26);
}

uint64_t RPIRKRatchet.IRKTarget.description.getter()
{
  v1 = v0;
  v2 = sub_1B6F22848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6F062BC(v1, v10, type metadata accessor for RPIRKRatchet.IRKTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
      v17 = v10[*(v16 + 48)];
      v13 = &v10[*(v16 + 64)];
      (*(v3 + 32))(v6, v10, v2);
      v23 = 0;
      v24 = 0xE000000000000000;
      v20[15] = nullsub_1(1);
      sub_1B6F122B4();
      sub_1B6F22838();
      MEMORY[0x1B8C9DA10](v21, v22);

      MEMORY[0x1B8C9DA10](11808, 0xE200000000000000);
      LOBYTE(v21) = v17;
      sub_1B6F22B68();
      v15 = v23;
      (*(v3 + 8))(v6, v2);
      goto LABEL_7;
    }

    v12 = *v10;
    v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48)];
    v23 = 0;
    v24 = 0xE000000000000000;
    v14 = 1954047342;
  }

  else
  {
    v12 = *v10;
    v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10) + 48)];
    v23 = 0;
    v24 = 0xE000000000000000;
    v14 = 1936287860;
  }

  MEMORY[0x1B8C9DA10](v14 & 0xFFFF0000FFFFFFFFLL | 0x2E00000000, 0xE500000000000000);
  LOBYTE(v21) = v12;
  sub_1B6F22B68();
  v15 = v23;
LABEL_7:
  v18 = sub_1B6F228D8();
  (*(*(v18 - 8) + 8))(v13, v18);
  return v15;
}

uint64_t RPIRKRatchet.DateResolution.hashValue.getter()
{
  v1 = *v0;
  sub_1B6F22CF8();
  MEMORY[0x1B8C9DCA0](v1);
  return sub_1B6F22D18();
}

uint64_t RPIRKRatchet.LocallyPermanentRatchet.description.getter()
{
  v0 = sub_1B6F16738();
  sub_1B6F093BC(8, v0, v1, v6);
  v2 = v6[0];
  v3 = v6[1];
  v4 = sub_1B6F227D8();
  sub_1B6F01FA0(v2, v3);
  return v4;
}

uint64_t sub_1B6F093BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1B6F1043C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1B6F103D8(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1B6F227B8();
    v15 = v14;
    result = sub_1B6F01FA0(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t RPIRKRatchet.LocallyPermanentRatchet.irk(for:sameAccountDevicesRevision:managedAccountsRevision:contactsRevision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a4;
  v23 = a3;
  v24 = a1;
  v22 = a5;
  v27[1] = *MEMORY[0x1E69E9840];
  v21 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  v7 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  __src = a2;
  __src = sub_1B6F106BC(&__src, v27);
  v27[0] = v14 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v27[0]);
  sub_1B6F062BC(v5, &v13[*(v10 + 24)], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v13[*(v10 + 20)] = v20;
  v15 = v23;
  __src = v23;
  __src = sub_1B6F106BC(&__src, v27);
  v27[0] = v16 & 0xFFFFFFFFFFFFFFLL;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v27[0]);
  v17 = v21;
  sub_1B6F062BC(v13, &v9[*(v21 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v9[*(v17 + 20)] = v15;
  RPIRKRatchet.ManagedAccountRatchet.irk(for:contactsRevision:)(v24, v25, v22);
  sub_1B6F12184(v9, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  result = sub_1B6F12184(v13, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t RPIRKRatchet.SameAccountRatchet.irk(for:managedAccountsRevision:contactsRevision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src = a2;
  __src = sub_1B6F106BC(&__src, v18);
  v18[0] = v12 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v18[0]);
  sub_1B6F062BC(v4, &v11[*(v8 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v11[*(v8 + 20)] = a2;
  RPIRKRatchet.ManagedAccountRatchet.irk(for:contactsRevision:)(a1, v16, a4);
  result = sub_1B6F12184(v11, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6F09A68()
{
  v0 = sub_1B6F16738();
  sub_1B6F093BC(8, v0, v1, v6);
  v2 = v6[0];
  v3 = v6[1];
  v4 = sub_1B6F227D8();
  sub_1B6F01FA0(v2, v3);
  return v4;
}

uint64_t RPIRKRatchet.SameAccountRatchet.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  sub_1B6F062BC(v1 + *(v10 + 24), v9, type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B6F10828(v9, v5, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1B6F22B28();
    v11 = sub_1B6F16738();
    sub_1B6F093BC(8, v11, v12, &v44);
    v13 = v44;
    v14 = v45;
    v15 = sub_1B6F227D8();
    v17 = v16;
    sub_1B6F01FA0(v13, v14);

    v44 = v15;
    v45 = v17;
    MEMORY[0x1B8C9DA10](0x41656D61739286E2, 0xAF28746E756F6363);
    v43 = *(v1 + *(v10 + 20));
    v18 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v18);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    v19 = v44;
    sub_1B6F12184(v5, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  }

  else
  {
    v21 = *v9;
    v20 = v9[1];
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1B6F22B28();
    v22 = sub_1B6F16738();
    sub_1B6F093BC(8, v22, v23, &v44);
    v24 = v44;
    v25 = v45;
    v26 = sub_1B6F227D8();
    v28 = v27;
    sub_1B6F01FA0(v24, v25);

    v44 = v26;
    v45 = v28;
    MEMORY[0x1B8C9DA10](0x2853444920, 0xE500000000000000);
    v30 = sub_1B6F10EBC(8, v21, v20, v29);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37 = MEMORY[0x1B8C9D9E0](v30, v32, v34, v36);
    v39 = v38;

    MEMORY[0x1B8C9DA10](v37, v39);

    MEMORY[0x1B8C9DA10](0x1000000000000010, 0x80000001B6F45680);
    v43 = *(v1 + *(v10 + 20));
    v40 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v40);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    return v44;
  }

  return v19;
}

uint64_t RPIRKRatchet.ManagedAccountRatchet.irk(for:contactsRevision:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a1;
  v36 = a3;
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B6F22998();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v15 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src = a2;
  __src = sub_1B6F106BC(&__src, v40);
  v40[0] = v19 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v40[0]);
  sub_1B6F062BC(v3, &v18[*(v15 + 24)], type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v18[*(v15 + 20)] = a2;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v20 = sub_1B6F228D8();
  __swift_project_value_buffer(v20, qword_1EB97CB58);
  v21 = v37;
  sub_1B6F0AA98(v14);
  v22 = v38;
  if (v21)
  {
    result = sub_1B6F12184(v18, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  }

  else
  {
    sub_1B6F0AEA4(v38, v12);
    v24 = v33;
    RPIRKRatchet.DateRatchet.key.getter(v33);
    v25 = sub_1B6F16738();
    v26 = v12;
    v28 = v27;
    (*(v34 + 8))(v24, v35);
    sub_1B6F12184(v14, type metadata accessor for RPIRKRatchet.DateRatchet);
    sub_1B6F12184(v18, type metadata accessor for RPIRKRatchet.ContactsRatchet);
    v29 = type metadata accessor for RPIRKRatchet.IRK(0);
    v30 = v36;
    sub_1B6F062BC(v22, v36 + *(v29 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
    result = sub_1B6F10828(v26, v30 + *(v29 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
    *v30 = v25;
    v30[1] = v28;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t RPIRKRatchet.ManagedAccountRatchet.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  sub_1B6F062BC(v1 + *(v10 + 24), v9, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B6F10828(v9, v5, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1B6F22B28();
    v11 = RPIRKRatchet.SameAccountRatchet.description.getter();
    v13 = v12;

    v40 = v11;
    v41 = v13;
    MEMORY[0x1B8C9DA10](0x1000000000000012, 0x80000001B6F456A0);
    v39 = *(v1 + *(v10 + 20));
    v14 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v14);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    v15 = v40;
    sub_1B6F12184(v5, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  }

  else
  {
    v17 = *v9;
    v16 = v9[1];
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1B6F22B28();
    v18 = sub_1B6F16738();
    sub_1B6F093BC(8, v18, v19, &v40);
    v20 = v40;
    v21 = v41;
    v22 = sub_1B6F227D8();
    v24 = v23;
    sub_1B6F01FA0(v20, v21);

    v40 = v22;
    v41 = v24;
    MEMORY[0x1B8C9DA10](0x2853444920, 0xE500000000000000);
    v26 = sub_1B6F10EBC(8, v17, v16, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = MEMORY[0x1B8C9D9E0](v26, v28, v30, v32);
    v35 = v34;

    MEMORY[0x1B8C9DA10](v33, v35);

    MEMORY[0x1B8C9DA10](0x1000000000000013, 0x80000001B6F456C0);
    v39 = *(v1 + *(v10 + 20));
    v36 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v36);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    return v40;
  }

  return v15;
}

uint64_t sub_1B6F0A674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B6F22998();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = a4(0);
  *(a6 + *(v13 + 20)) = a2;
  return sub_1B6F10828(a3, a6 + *(v13 + 24), a5);
}

uint64_t RPIRKRatchet.ContactsRatchet.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  sub_1B6F062BC(v1 + *(v10 + 24), v9, type metadata accessor for RPIRKRatchet.ContactsRatchet.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B6F10828(v9, v5, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1B6F22B28();
    v11 = RPIRKRatchet.ManagedAccountRatchet.description.getter();
    v13 = v12;

    v40 = v11;
    v41 = v13;
    MEMORY[0x1B8C9DA10](0x61746E6F639286E2, 0xAC00000028737463);
    v39 = *(v1 + *(v10 + 20));
    v14 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v14);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    v15 = v40;
    sub_1B6F12184(v5, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  }

  else
  {
    v17 = *v9;
    v16 = v9[1];
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1B6F22B28();
    v18 = sub_1B6F16738();
    sub_1B6F093BC(8, v18, v19, &v40);
    v20 = v40;
    v21 = v41;
    v22 = sub_1B6F227D8();
    v24 = v23;
    sub_1B6F01FA0(v20, v21);

    v40 = v22;
    v41 = v24;
    MEMORY[0x1B8C9DA10](0x2853444920, 0xE500000000000000);
    v26 = sub_1B6F10EBC(8, v17, v16, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = MEMORY[0x1B8C9D9E0](v26, v28, v30, v32);
    v35 = v34;

    MEMORY[0x1B8C9DA10](v33, v35);

    MEMORY[0x1B8C9DA10](0x746E6F639286E229, 0xAD00002873746361);
    v39 = *(v1 + *(v10 + 20));
    v36 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v36);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    return v40;
  }

  return v15;
}

uint64_t sub_1B6F0AA98@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = sub_1B6F22998();
  v29 = *(v32 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6F22A38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0x72657665726F66;
  v37 = 0xE700000000000000;
  v9 = *(type metadata accessor for RPIRKRatchet.ContactsRatchet(0) + 20);
  v30 = v1;
  v34 = *(v1 + v9);
  v10 = v34;
  v11 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v11);

  sub_1B6F22A28();
  v12 = sub_1B6F22A18();
  v14 = v13;

  (*(v5 + 8))(v8, v4);
  v36 = v12;
  v37 = v14;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1B6F22B28();

  v34 = 0xD000000000000018;
  v35 = 0x80000001B6F45890;
  v38[3] = v10;
  v15 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v15);

  MEMORY[0x1B8C9DA10](34, 0xE100000000000000);
  v16 = v34;
  v17 = v35;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB10, &qword_1B6F2FE58);
  v19 = v33;
  sub_1B6F16568(v16, v17, 0xD000000000000048, 0x80000001B6F45590, 383, v18, v38);
  sub_1B6F04D40(v36, v37);

  if (!v19)
  {
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v38[0];
    v25 = v38[1];
    if (qword_1EB97CB40 != -1)
    {
      swift_once();
    }

    sub_1B6F229E8();
    sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
    sub_1B6F10774();
    sub_1B6F229D8();
    sub_1B6F01FA0(v24, v25);
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48);
    v27 = v31;
    (*(v22 + 32))(v31, v21, v32);
    sub_1B6F062BC(v23, v27 + v26, type metadata accessor for RPIRKRatchet.ContactsRatchet);
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RPIRKRatchet.DateRatchet(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1B6F0AEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v210 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v3 = *(*(v210 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v210);
  v200 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v203 = &v192 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v199 = &v192 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v204 = &v192 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v198 = &v192 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v207 = &v192 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v197 = &v192 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v208 = &v192 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v196 = &v192 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v202 = &v192 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v195 = &v192 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v205 = &v192 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v201 = &v192 - v28;
  v212 = sub_1B6F22848();
  v29 = *(v212 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v214 = &v192 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v192 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v192 - v37;
  v39 = sub_1B6F228D8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v192 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v215 = a1;
  v216 = &v192 - v45;
  sub_1B6F062BC(a1, v38, type metadata accessor for RPIRKRatchet.IRKTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v40;
  v48 = *(v40 + 32);
  v211 = v29;
  if (EnumCaseMultiPayload > 1)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
    v48(v44, &v38[*(v50 + 64)], v39);
    (*(v29 + 8))(v38, v212);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v48(v44, &v38[*(v49 + 48)], v39);
  }

  v51 = v216;
  v48(v216, v44, v39);
  v52 = v214;
  v53 = v215;
  v54 = v213;
  sub_1B6F0811C(v214);
  if (v54)
  {
    return (*(v47 + 8))(v51, v39);
  }

  sub_1B6F062BC(v53, v36, type metadata accessor for RPIRKRatchet.IRKTarget);
  v56 = swift_getEnumCaseMultiPayload();
  v57 = v47;
  if (v56)
  {
    v58 = v211;
    if (v56 == 1)
    {
      v59 = *v36;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
      v61 = *(v57 + 8);
      v61(&v36[*(v60 + 48)], v39);
    }

    else
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
      v59 = v36[*(v63 + 48)];
      v61 = *(v57 + 8);
      v61(&v36[*(v63 + 64)], v39);
      (*(v58 + 8))(v36, v212);
    }
  }

  else
  {
    v59 = *v36;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v61 = *(v57 + 8);
    v61(&v36[*(v62 + 48)], v39);
    v58 = v211;
  }

  v64 = v209;
  if (v59 > 2)
  {
    if (v59 <= 4)
    {
      v65 = v216;
      if (v59 == 3)
      {
        sub_1B6F062BC(v209, v208, type metadata accessor for RPIRKRatchet.DateRatchet);
        v66 = swift_getEnumCaseMultiPayload();
        if (v66 > 2)
        {
          if (v66 > 4)
          {
            if (v66 == 5)
            {
              v102 = &qword_1EB97BA58;
              v103 = &qword_1B6F2F9E0;
            }

            else
            {
              v102 = &qword_1EB97BA50;
              v103 = &qword_1B6F2F9D8;
            }
          }

          else
          {
            if (v66 == 3)
            {
              v215 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0) + 48);
              if (sub_1B6F0DEA4(v52))
              {
                (*(v58 + 8))(v52, v212);
                v61(v65, v39);
                sub_1B6F062BC(v64, v206, type metadata accessor for RPIRKRatchet.DateRatchet);
                v67 = v208;
LABEL_53:
                sub_1B6F12184(v67 + v215, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
                v96 = sub_1B6F22998();
                return (*(*(v96 - 8) + 8))(v67, v96);
              }

              v213 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
              sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds);
              v194 = swift_allocError();
              v180 = v179;
              v181 = v64;
              v182 = v212;
              (*(v58 + 16))(v179, v52, v212);
              sub_1B6F062BC(v181, v180 + *(v213 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
              swift_willThrow();
              (*(v58 + 8))(v52, v182);
              v61(v65, v39);
              v173 = v208;
LABEL_142:
              sub_1B6F12184(v173 + v215, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
              v188 = sub_1B6F22998();
              return (*(*(v188 - 8) + 8))(v173, v188);
            }

            v102 = &qword_1EB97BA60;
            v103 = &qword_1B6F2F9E8;
          }

          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(v102, v103);
          v151 = v208;
          sub_1B6F12184(v208 + *(v150 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
          v152 = sub_1B6F22998();
          (*(*(v152 - 8) + 8))(v151, v152);
          RPIRKRatchet.DateRatchet.resolution.getter(&v220);
          v153 = v220;
          goto LABEL_131;
        }

        v194 = 0;
        if (v66)
        {
          if (v66 == 1)
          {
            v99 = &qword_1EB97BA78;
            v100 = &qword_1B6F2FA00;
          }

          else
          {
            v99 = &qword_1EB97BA70;
            v100 = &qword_1B6F2F9F8;
          }
        }

        else
        {
          v99 = &qword_1EB97BA80;
          v100 = &qword_1B6F2FA08;
        }

        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(v99, v100);
        v122 = v208;
        sub_1B6F12184(v208 + *(v121 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
        v123 = sub_1B6F22998();
        (*(*(v123 - 8) + 8))(v122, v123);
        v124 = v197;
      }

      else
      {
        sub_1B6F062BC(v209, v207, type metadata accessor for RPIRKRatchet.DateRatchet);
        v89 = swift_getEnumCaseMultiPayload();
        if (v89 <= 2)
        {
          v194 = 0;
          if (v89)
          {
            if (v89 == 1)
            {
              v90 = &qword_1EB97BA78;
              v91 = &qword_1B6F2FA00;
            }

            else
            {
              v90 = &qword_1EB97BA70;
              v91 = &qword_1B6F2F9F8;
            }
          }

          else
          {
            v90 = &qword_1EB97BA80;
            v91 = &qword_1B6F2FA08;
          }
        }

        else
        {
          if (v89 > 4)
          {
            if (v89 == 5)
            {
              v105 = &qword_1EB97BA58;
              v106 = &qword_1B6F2F9E0;
            }

            else
            {
              v105 = &qword_1EB97BA50;
              v106 = &qword_1B6F2F9D8;
            }

            v158 = __swift_instantiateConcreteTypeFromMangledNameV2(v105, v106);
            v159 = v207;
            sub_1B6F12184(v207 + *(v158 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
            v160 = sub_1B6F22998();
            (*(*(v160 - 8) + 8))(v159, v160);
            RPIRKRatchet.DateRatchet.resolution.getter(&v221);
            v153 = v221;
LABEL_131:
            v161 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
            sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable);
            swift_allocError();
            *v162 = v153;
            sub_1B6F062BC(v64, &v162[*(v161 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
            swift_willThrow();
            (*(v58 + 8))(v52, v212);
            v134 = v65;
            return (v61)(v134, v39);
          }

          v194 = 0;
          if (v89 != 3)
          {
            v143 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8) + 48);
            if (sub_1B6F0DEA4(v52))
            {
              (*(v58 + 8))(v52, v212);
              v61(v65, v39);
              sub_1B6F062BC(v64, v206, type metadata accessor for RPIRKRatchet.DateRatchet);
              v144 = v207;
              sub_1B6F12184(v207 + v143, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
              v145 = sub_1B6F22998();
              return (*(*(v145 - 8) + 8))(v144, v145);
            }

            v213 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
            sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds);
            v194 = swift_allocError();
            v184 = v183;
            v185 = *(v58 + 16);
            v215 = v143;
            v186 = v64;
            v187 = v212;
            v185(v183, v52, v212);
            sub_1B6F062BC(v186, v184 + *(v213 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
            swift_willThrow();
            (*(v58 + 8))(v52, v187);
            v61(v65, v39);
            v173 = v207;
            goto LABEL_142;
          }

          v90 = &qword_1EB97BA68;
          v91 = &qword_1B6F2F9F0;
        }

        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(v90, v91);
        v126 = v207;
        sub_1B6F12184(v207 + *(v125 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
        v127 = sub_1B6F22998();
        (*(*(v127 - 8) + 8))(v126, v127);
        v124 = v198;
      }

      v128 = v215;
      v129 = v194;
      sub_1B6F0E720(v215, v124);
      if (!v129)
      {
        sub_1B6F0AEA4(v128);
        sub_1B6F12184(v124, type metadata accessor for RPIRKRatchet.DateRatchet);
      }

      (*(v58 + 8))(v52, v212);
      goto LABEL_117;
    }

    v213 = v57;
    v74 = v61;
    v75 = v216;
    if (v59 != 5)
    {
      v76 = v203;
      sub_1B6F062BC(v209, v203, type metadata accessor for RPIRKRatchet.DateRatchet);
      v92 = swift_getEnumCaseMultiPayload();
      if (v92 <= 2)
      {
        if (v92)
        {
          if (v92 == 1)
          {
            v93 = &qword_1EB97BA78;
            v94 = &qword_1B6F2FA00;
          }

          else
          {
            v93 = &qword_1EB97BA70;
            v94 = &qword_1B6F2F9F8;
          }
        }

        else
        {
          v93 = &qword_1EB97BA80;
          v94 = &qword_1B6F2FA08;
        }
      }

      else if (v92 > 4)
      {
        if (v92 != 5)
        {
          v215 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8) + 48);
          v104 = v52;
          goto LABEL_134;
        }

        v93 = &qword_1EB97BA58;
        v94 = &qword_1B6F2F9E0;
      }

      else if (v92 == 3)
      {
        v93 = &qword_1EB97BA68;
        v94 = &qword_1B6F2F9F0;
      }

      else
      {
        v93 = &qword_1EB97BA60;
        v94 = &qword_1B6F2F9E8;
      }

      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
      sub_1B6F12184(v76 + *(v146 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
      v147 = sub_1B6F22998();
      (*(*(v147 - 8) + 8))(v76, v147);
      v148 = v200;
      v149 = v215;
      sub_1B6F0E720(v215, v200);
      sub_1B6F0AEA4(v149);
      sub_1B6F12184(v148, type metadata accessor for RPIRKRatchet.DateRatchet);
      (*(v58 + 8))(v52, v212);
      return v74(v216, v39);
    }

    v76 = v204;
    sub_1B6F062BC(v209, v204, type metadata accessor for RPIRKRatchet.DateRatchet);
    v77 = swift_getEnumCaseMultiPayload();
    if (v77 <= 2)
    {
      v193 = v74;
      if (v77)
      {
        if (v77 == 1)
        {
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
        }

        else
        {
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
        }

        goto LABEL_121;
      }

      v78 = &qword_1EB97BA80;
      v79 = &qword_1B6F2FA08;
LABEL_120:
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
LABEL_121:
      sub_1B6F12184(v76 + *(v101 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
      v140 = sub_1B6F22998();
      (*(*(v140 - 8) + 8))(v76, v140);
      v141 = v199;
      v142 = v215;
      sub_1B6F0E720(v215, v199);
      sub_1B6F0AEA4(v142);
      sub_1B6F12184(v141, type metadata accessor for RPIRKRatchet.DateRatchet);
      (*(v58 + 8))(v52, v212);
      return v193(v216, v39);
    }

    if (v77 <= 4)
    {
      v193 = v74;
      if (v77 == 3)
      {
        v78 = &qword_1EB97BA68;
        v79 = &qword_1B6F2F9F0;
      }

      else
      {
        v78 = &qword_1EB97BA60;
        v79 = &qword_1B6F2F9E8;
      }

      goto LABEL_120;
    }

    if (v77 == 5)
    {
      v215 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0) + 48);
      v52 = v214;
      v104 = v214;
      v75 = v216;
LABEL_134:
      if (sub_1B6F0DEA4(v104))
      {
        (*(v58 + 8))(v52, v212);
        v74(v75, v39);
        sub_1B6F062BC(v64, v206, type metadata accessor for RPIRKRatchet.DateRatchet);
        sub_1B6F12184(v76 + v215, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
        v163 = sub_1B6F22998();
        return (*(*(v163 - 8) + 8))(v76, v163);
      }

      v210 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
      sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds);
      v194 = swift_allocError();
      v165 = v164;
      v166 = v64;
      v167 = v212;
      (*(v58 + 16))(v164, v52, v212);
      sub_1B6F062BC(v166, v165 + *(v210 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
      swift_willThrow();
      (*(v58 + 8))(v52, v167);
      v74(v75, v39);
      v108 = v76 + v215;
      goto LABEL_137;
    }

    v154 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8) + 48);
    RPIRKRatchet.DateRatchet.resolution.getter(&v222);
    v155 = v222;
    v156 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
    sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable);
    swift_allocError();
    *v157 = v155;
    sub_1B6F062BC(v64, &v157[*(v156 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v58 + 8))(v214, v212);
    v74(v216, v39);
    v108 = v76 + v154;
LABEL_137:
    sub_1B6F12184(v108, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v168 = sub_1B6F22998();
    return (*(*(v168 - 8) + 8))(v76, v168);
  }

  if (!v59)
  {
    v80 = v58;
    v76 = v201;
    sub_1B6F062BC(v209, v201, type metadata accessor for RPIRKRatchet.DateRatchet);
    v81 = swift_getEnumCaseMultiPayload();
    if (v81 <= 2)
    {
      v71 = v216;
      if (!v81)
      {
        (*(v80 + 8))(v214, v212);
        v61(v71, v39);
        v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48);
        sub_1B6F062BC(v64, v206, type metadata accessor for RPIRKRatchet.DateRatchet);
        v108 = v76 + v107;
        goto LABEL_137;
      }

      if (v81 == 1)
      {
        v82 = &qword_1EB97BA78;
        v83 = &qword_1B6F2FA00;
      }

      else
      {
        v82 = &qword_1EB97BA70;
        v83 = &qword_1B6F2F9F8;
      }
    }

    else
    {
      v71 = v216;
      if (v81 > 4)
      {
        if (v81 == 5)
        {
          v82 = &qword_1EB97BA58;
          v83 = &qword_1B6F2F9E0;
        }

        else
        {
          v82 = &qword_1EB97BA50;
          v83 = &qword_1B6F2F9D8;
        }
      }

      else if (v81 == 3)
      {
        v82 = &qword_1EB97BA68;
        v83 = &qword_1B6F2F9F0;
      }

      else
      {
        v82 = &qword_1EB97BA60;
        v83 = &qword_1B6F2F9E8;
      }
    }

    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(v82, v83);
    sub_1B6F12184(v76 + *(v114 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v115 = sub_1B6F22998();
    (*(*(v115 - 8) + 8))(v76, v115);
    RPIRKRatchet.DateRatchet.resolution.getter(&v217);
    v116 = v217;
    v117 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
    sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable);
    swift_allocError();
    *v118 = v116;
    sub_1B6F062BC(v64, &v118[*(v117 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v80 + 8))(v214, v212);
LABEL_113:
    v134 = v71;
    return (v61)(v134, v39);
  }

  if (v59 == 1)
  {
    v68 = v205;
    sub_1B6F062BC(v209, v205, type metadata accessor for RPIRKRatchet.DateRatchet);
    v69 = swift_getEnumCaseMultiPayload();
    if (v69 <= 2)
    {
      if (!v69)
      {
        v213 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48);
        v109 = v195;
        sub_1B6F0E720(v53, v195);
        v189 = v213;
        sub_1B6F0AEA4(v53);
        sub_1B6F12184(v109, type metadata accessor for RPIRKRatchet.DateRatchet);
        (*(v58 + 8))(v52, v212);
        v61(v216, v39);
        v190 = v205;
        sub_1B6F12184(v205 + v189, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
        v191 = sub_1B6F22998();
        return (*(*(v191 - 8) + 8))(v190, v191);
      }

      v70 = v58;
      if (v69 == 1)
      {
        v215 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00) + 48);
        v95 = v216;
        if (sub_1B6F0DEA4(v52))
        {
          (*(v70 + 8))(v52, v212);
          v61(v95, v39);
          sub_1B6F062BC(v64, v206, type metadata accessor for RPIRKRatchet.DateRatchet);
          v67 = v205;
          goto LABEL_53;
        }

        v213 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
        sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds);
        v194 = swift_allocError();
        v170 = v169;
        v171 = v64;
        v172 = v212;
        (*(v70 + 16))(v169, v52, v212);
        sub_1B6F062BC(v171, v170 + *(v213 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
        swift_willThrow();
        (*(v70 + 8))(v52, v172);
        v61(v95, v39);
        v173 = v205;
        goto LABEL_142;
      }

      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
      v71 = v216;
    }

    else
    {
      v70 = v58;
      if (v69 > 4)
      {
        v71 = v216;
        if (v69 == 5)
        {
          v72 = &qword_1EB97BA58;
          v73 = &qword_1B6F2F9E0;
        }

        else
        {
          v72 = &qword_1EB97BA50;
          v73 = &qword_1B6F2F9D8;
        }
      }

      else
      {
        v71 = v216;
        if (v69 == 3)
        {
          v72 = &qword_1EB97BA68;
          v73 = &qword_1B6F2F9F0;
        }

        else
        {
          v72 = &qword_1EB97BA60;
          v73 = &qword_1B6F2F9E8;
        }
      }

      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
    }

    sub_1B6F12184(v68 + *(v119 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v130 = sub_1B6F22998();
    (*(*(v130 - 8) + 8))(v68, v130);
    RPIRKRatchet.DateRatchet.resolution.getter(&v218);
    v131 = v218;
    v132 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
    sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable);
    swift_allocError();
    *v133 = v131;
    sub_1B6F062BC(v64, &v133[*(v132 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v70 + 8))(v52, v212);
    goto LABEL_113;
  }

  v84 = v202;
  sub_1B6F062BC(v209, v202, type metadata accessor for RPIRKRatchet.DateRatchet);
  v85 = swift_getEnumCaseMultiPayload();
  v86 = v216;
  if (v85 > 2)
  {
    if (v85 > 4)
    {
      if (v85 == 5)
      {
        v87 = &qword_1EB97BA58;
        v88 = &qword_1B6F2F9E0;
      }

      else
      {
        v87 = &qword_1EB97BA50;
        v88 = &qword_1B6F2F9D8;
      }
    }

    else if (v85 == 3)
    {
      v87 = &qword_1EB97BA68;
      v88 = &qword_1B6F2F9F0;
    }

    else
    {
      v87 = &qword_1EB97BA60;
      v88 = &qword_1B6F2F9E8;
    }

    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(v87, v88);
    sub_1B6F12184(v84 + *(v135 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v136 = sub_1B6F22998();
    (*(*(v136 - 8) + 8))(v84, v136);
    RPIRKRatchet.DateRatchet.resolution.getter(&v219);
    v137 = v219;
    v138 = type metadata accessor for RPIRKRatchet.ResolutionUnavailable(0);
    sub_1B6F12204(&qword_1EB97BAB0, type metadata accessor for RPIRKRatchet.ResolutionUnavailable);
    swift_allocError();
    *v139 = v137;
    sub_1B6F062BC(v64, &v139[*(v138 + 20)], type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    goto LABEL_116;
  }

  if (!v85)
  {
    v97 = &qword_1EB97BA80;
    v98 = &qword_1B6F2FA08;
    goto LABEL_87;
  }

  if (v85 == 1)
  {
    v97 = &qword_1EB97BA78;
    v98 = &qword_1B6F2FA00;
LABEL_87:
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(v97, v98);
    sub_1B6F12184(v84 + *(v110 + 48), type metadata accessor for RPIRKRatchet.DateRatchet.Source);
    v111 = sub_1B6F22998();
    (*(*(v111 - 8) + 8))(v84, v111);
    v112 = v196;
    v113 = v215;
    sub_1B6F0E720(v215, v196);
    sub_1B6F0AEA4(v113);
    sub_1B6F12184(v112, type metadata accessor for RPIRKRatchet.DateRatchet);
LABEL_116:
    (*(v211 + 8))(v52, v212);
LABEL_117:
    v134 = v216;
    return (v61)(v134, v39);
  }

  v215 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8) + 48);
  if (sub_1B6F0DEA4(v52))
  {
    (*(v211 + 8))(v52, v212);
    v61(v86, v39);
    sub_1B6F062BC(v64, v206, type metadata accessor for RPIRKRatchet.DateRatchet);
  }

  else
  {
    v213 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
    sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds);
    v194 = swift_allocError();
    v175 = v174;
    v176 = v211;
    v177 = v64;
    v178 = v212;
    (*(v211 + 16))(v174, v52, v212);
    sub_1B6F062BC(v177, v175 + *(v213 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v176 + 8))(v52, v178);
    v61(v216, v39);
  }

  sub_1B6F12184(v84 + v215, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v120 = sub_1B6F22998();
  return (*(*(v120 - 8) + 8))(v84, v120);
}

uint64_t sub_1B6F0D0B0()
{
  v1 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F062BC(v0, v4, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
        v7 = &v4[v13[12]];
        v8 = *&v4[v13[16]];
        v27 = sub_1B6F0D3C8(*&v4[v13[20]], v0);
        v28 = v14;
        v10 = 119;
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8);
        v7 = &v4[v20[12]];
        v8 = *&v4[v20[16]];
        v27 = sub_1B6F0D3C8(*&v4[v20[20]], v0);
        v28 = v21;
        v10 = 100;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
      v7 = &v4[v6[12]];
      v8 = *&v4[v6[16]];
      v27 = sub_1B6F0D3C8(*&v4[v6[20]], v0);
      v28 = v9;
      v10 = 113;
    }

    else
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
      v7 = &v4[v18[12]];
      v8 = *&v4[v18[16]];
      v27 = sub_1B6F0D3C8(*&v4[v18[20]], v0);
      v28 = v19;
      v10 = 109;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
      v12 = *&v4[*(v11 + 64)];
      v7 = &v4[*(v11 + 48)];
      v27 = 121;
      v28 = 0xE100000000000000;
      v26 = v12;
LABEL_15:
      v22 = sub_1B6F22C68();
      MEMORY[0x1B8C9DA10](v22);

      v15 = v27;
      goto LABEL_16;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
    v7 = &v4[v16[12]];
    v8 = *&v4[v16[16]];
    v27 = sub_1B6F0D3C8(*&v4[v16[20]], v0);
    v28 = v17;
    v10 = 115;
LABEL_14:
    MEMORY[0x1B8C9DA10](v10, 0xE100000000000000);
    v26 = v8;
    goto LABEL_15;
  }

  v7 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48)];
  v15 = 102;
LABEL_16:
  sub_1B6F12184(v7, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v23 = sub_1B6F22998();
  (*(*(v23 - 8) + 8))(v4, v23);
  return v15;
}

uint64_t sub_1B6F0D3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  sub_1B6F062BC(a2, v7, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v16 = &qword_1EB97BA78;
        v17 = &qword_1B6F2FA00;
      }

      else
      {
        v16 = &qword_1EB97BA70;
        v17 = &qword_1B6F2F9F8;
      }
    }

    else
    {
      v16 = &qword_1EB97BA80;
      v17 = &qword_1B6F2FA08;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v16 = &qword_1EB97BA58;
      v17 = &qword_1B6F2F9E0;
    }

    else
    {
      v16 = &qword_1EB97BA50;
      v17 = &qword_1B6F2F9D8;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v16 = &qword_1EB97BA68;
    v17 = &qword_1B6F2F9F0;
  }

  else
  {
    v16 = &qword_1EB97BA60;
    v17 = &qword_1B6F2F9E8;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  sub_1B6F10828(&v7[*(v18 + 48)], v12, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v19 = sub_1B6F22998();
  (*(*(v19 - 8) + 8))(v7, v19);
  sub_1B6F10828(v12, v14, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v20 = swift_getEnumCaseMultiPayload();
  sub_1B6F12184(v14, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  if (v20 == 3)
  {
    return 0;
  }

  v24 = 121;
  v25 = 0xE100000000000000;
  v23[1] = a1;
  v22 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v22);

  return v24;
}

uint64_t sub_1B6F0D698@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F062BC(v2, v7, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = &qword_1EB97BA78;
        v10 = &qword_1B6F2FA00;
      }

      else
      {
        v9 = &qword_1EB97BA70;
        v10 = &qword_1B6F2F9F8;
      }
    }

    else
    {
      v9 = &qword_1EB97BA80;
      v10 = &qword_1B6F2FA08;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v9 = &qword_1EB97BA58;
      v10 = &qword_1B6F2F9E0;
    }

    else
    {
      v9 = &qword_1EB97BA50;
      v10 = &qword_1B6F2F9D8;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v9 = &qword_1EB97BA68;
    v10 = &qword_1B6F2F9F0;
  }

  else
  {
    v9 = &qword_1EB97BA60;
    v10 = &qword_1B6F2F9E8;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  sub_1B6F10828(&v7[*(v11 + 48)], a1, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v12 = sub_1B6F22998();
  return (*(*(v12 - 8) + 8))(v7, v12);
}

uint64_t RPIRKRatchet.DateRatchet.description.getter()
{
  v0 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6F22998();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6F0D698(v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B6F10828(v16, v7, type metadata accessor for RPIRKRatchet.ContactsRatchet);
      v59 = RPIRKRatchet.ContactsRatchet.description.getter();
      v60 = v30;
      v31 = sub_1B6F0D0B0();
      MEMORY[0x1B8C9DA10](v31);

      v32 = v59;
      sub_1B6F12184(v7, type metadata accessor for RPIRKRatchet.ContactsRatchet);
    }

    else
    {
      v53 = *v16;
      v54 = swift_projectBox();
      v55 = sub_1B6F062BC(v54, v3, type metadata accessor for RPIRKRatchet.DateRatchet);
      v59 = RPIRKRatchet.DateRatchet.description.getter(v55);
      v60 = v56;
      v57 = sub_1B6F0D0B0();
      MEMORY[0x1B8C9DA10](v57);

      v32 = v59;
      sub_1B6F12184(v3, type metadata accessor for RPIRKRatchet.DateRatchet);
    }
  }

  else
  {
    v19 = *v16;
    v18 = v16[1];
    if (EnumCaseMultiPayload)
    {
      RPIRKRatchet.DateRatchet.key.getter(v12);
      v33 = sub_1B6F16738();
      v35 = v34;
      (*(v9 + 8))(v12, v8);
      sub_1B6F093BC(8, v33, v35, &v59);
      v36 = v59;
      v37 = v60;
      v38 = sub_1B6F227D8();
      v40 = v39;
      sub_1B6F01FA0(v36, v37);
      v59 = v38;
      v60 = v40;
      v28 = 0x286C61636F4C20;
      v29 = 0xE700000000000000;
    }

    else
    {
      RPIRKRatchet.DateRatchet.key.getter(v12);
      v20 = sub_1B6F16738();
      v22 = v21;
      (*(v9 + 8))(v12, v8);
      sub_1B6F093BC(8, v20, v22, &v59);
      v23 = v59;
      v24 = v60;
      v25 = sub_1B6F227D8();
      v27 = v26;
      sub_1B6F01FA0(v23, v24);
      v59 = v25;
      v60 = v27;
      v28 = 0x2853444920;
      v29 = 0xE500000000000000;
    }

    MEMORY[0x1B8C9DA10](v28, v29);
    v42 = sub_1B6F10EBC(8, v19, v18, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v49 = MEMORY[0x1B8C9D9E0](v42, v44, v46, v48);
    v51 = v50;

    MEMORY[0x1B8C9DA10](v49, v51);

    MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
    v52 = sub_1B6F0D0B0();
    MEMORY[0x1B8C9DA10](v52);

    return v59;
  }

  return v32;
}

uint64_t RPIRKRatchet.DateRatchet.resolution.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6F062BC(v2, v7, type metadata accessor for RPIRKRatchet.DateRatchet);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
        v10 = 1;
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
        v10 = 2;
      }
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08);
      v10 = 0;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
      v10 = 5;
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8);
      v10 = 6;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
    v10 = 3;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
    v10 = 4;
  }

  sub_1B6F12184(&v7[*(v9 + 48)], type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v11 = sub_1B6F22998();
  result = (*(*(v11 - 8) + 8))(v7, v11);
  *a1 = v10;
  return result;
}

BOOL sub_1B6F0DEA4(uint64_t a1)
{
  v3 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6F228B8();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v8[13];
  v12(v11, *MEMORY[0x1E6969A68], v7);
  *&v69 = a1;
  v70 = sub_1B6F228C8();
  v13 = v8[1];
  v13(v11, v7);
  v68 = v1;
  sub_1B6F062BC(v1, v6, type metadata accessor for RPIRKRatchet.DateRatchet);
  v14 = v6;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48)];
      v22 = 1;
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
      v21 = &v6[*(v20 + 48)];
      v22 = v70 == *&v6[*(v20 + 64)];
      goto LABEL_35;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
    v68 = *&v14[v16[16]];
    v17 = *&v14[v16[20]];
    v12(v11, *MEMORY[0x1E6969A78], v7);
    v43 = sub_1B6F228C8();
    v13(v11, v7);
    v19 = v43 / 2;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
      v68 = *&v14[v16[16]];
      v45 = *&v14[v16[20]];
      v12(v11, *MEMORY[0x1E6969A78], v7);
      v46 = sub_1B6F228C8();
      v13(v11, v7);
      v44 = v70 == v45 && v46 == v68;
LABEL_24:
      v22 = v44;
      v21 = &v14[v16[12]];
      goto LABEL_35;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
    v68 = *&v14[v16[16]];
    v17 = *&v14[v16[20]];
    v12(v11, *MEMORY[0x1E6969A78], v7);
    v18 = sub_1B6F228C8();
    v13(v11, v7);
    v19 = v18 / 4;
LABEL_18:
    v44 = v70 == v17 && v68 == v19;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
    v24 = *&v6[v23[20]];
    v66 = *&v6[v23[16]];
    v67 = v24;
    v12(v11, *MEMORY[0x1E6969A10], v7);
    v25 = sub_1B6F228C8();
    v13(v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BAB8, &qword_1B6F2FA20);
    v26 = swift_allocObject();
    v69 = xmmword_1B6F2F9B0;
    *(v26 + 16) = xmmword_1B6F2F9B0;
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1B6F22B28();
    v27 = RPIRKRatchet.DateRatchet.description.getter();
    v29 = v28;

    v72 = v27;
    v73 = v29;
    MEMORY[0x1B8C9DA10](0xD000000000000010, 0x80000001B6F456E0);
    v71 = v25;
    v30 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v30);

    v31 = v72;
    v32 = v73;
    v33 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 32) = v31;
    *(v26 + 40) = v32;
    sub_1B6F22CE8();

    v34 = swift_allocObject();
    *(v34 + 16) = v69;
    v72 = 0;
    v73 = 0xE000000000000000;
    v14 = v6;
    sub_1B6F22B28();
    v35 = RPIRKRatchet.DateRatchet.description.getter();
    v37 = v36;

    v72 = v35;
    v73 = v37;
    MEMORY[0x1B8C9DA10](0x59664F6B65657720, 0xEC00000020726165);
    v38 = v66;
    v71 = v66;
    v39 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v39);

    v40 = v72;
    v41 = v73;
    *(v34 + 56) = v33;
    *(v34 + 32) = v40;
    *(v34 + 40) = v41;
    sub_1B6F22CE8();

    v22 = v70 == v67 && v25 == v38;
    v21 = &v14[v23[12]];
  }

  else
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8);
    v48 = v6;
    v49 = *&v6[*(v47 + 64)];
    v66 = *&v14[*(v47 + 80)];
    v67 = v47;
    v12(v11, *MEMORY[0x1E6969A48], v7);
    v50 = sub_1B6F228C8();
    v13(v11, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BAB8, &qword_1B6F2FA20);
    v51 = swift_allocObject();
    v69 = xmmword_1B6F2F9B0;
    *(v51 + 16) = xmmword_1B6F2F9B0;
    v72 = RPIRKRatchet.DateRatchet.description.getter();
    v73 = v52;
    MEMORY[0x1B8C9DA10](0x7961446574616420, 0xE900000000000020);
    v71 = v50;
    v53 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v53);

    v54 = v72;
    v55 = v73;
    v56 = MEMORY[0x1E69E6158];
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 32) = v54;
    *(v51 + 40) = v55;
    sub_1B6F22CE8();

    v57 = swift_allocObject();
    *(v57 + 16) = v69;
    v72 = RPIRKRatchet.DateRatchet.description.getter();
    v73 = v58;
    MEMORY[0x1B8C9DA10](0x6559664F79616420, 0xEB00000000207261);
    v71 = v49;
    v59 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v59);

    v60 = v72;
    v61 = v73;
    *(v57 + 56) = v56;
    v14 = v48;
    *(v57 + 32) = v60;
    *(v57 + 40) = v61;
    sub_1B6F22CE8();

    v22 = v70 == v66 && v50 == v49;
    v21 = &v48[*(v67 + 48)];
  }

LABEL_35:
  sub_1B6F12184(v21, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  v63 = sub_1B6F22998();
  (*(*(v63 - 8) + 8))(v14, v63);
  return v22;
}

uint64_t sub_1B6F0E720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a2;
  v4 = sub_1B6F228B8();
  v170 = *(v4 - 8);
  v171 = v4;
  v5 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v169 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1B6F22998();
  v173 = *(v175 - 8);
  v7 = *(v173 + 64);
  v8 = MEMORY[0x1EEE9AC00](v175);
  v172 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v174 = &v162 - v10;
  v176 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v11 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6F22848();
  v14 = *(v13 - 8);
  v180 = v13;
  v181 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v162 - v22;
  v24 = sub_1B6F228D8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v184 = &v162 - v30;
  sub_1B6F062BC(a1, v23, type metadata accessor for RPIRKRatchet.IRKTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v182 = v25;
  v32 = *(v25 + 32);
  if (EnumCaseMultiPayload > 1)
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
    v32(v29, &v23[*(v34 + 64)], v24);
    (*(v181 + 8))(v23, v180);
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v32(v29, &v23[*(v33 + 48)], v24);
  }

  v32(v184, v29, v24);
  sub_1B6F0811C(v183);
  if (v2)
  {
    return (*(v182 + 8))(v184, v24);
  }

  sub_1B6F062BC(a1, v21, type metadata accessor for RPIRKRatchet.IRKTarget);
  v36 = swift_getEnumCaseMultiPayload();
  v37 = v182;
  if (v36)
  {
    v38 = v179;
    if (v36 == 1)
    {
      v39 = *v21;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
      v41 = *(v37 + 8);
      v41(&v21[*(v40 + 48)], v24);
    }

    else
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
      v39 = v21[*(v43 + 48)];
      v41 = *(v37 + 8);
      v41(&v21[*(v43 + 64)], v24);
      (*(v181 + 8))(v21, v180);
    }
  }

  else
  {
    v39 = *v21;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA88, &qword_1B6F2FA10);
    v41 = *(v37 + 8);
    v41(&v21[*(v42 + 48)], v24);
    v38 = v179;
  }

  v44 = v183;
  if (!sub_1B6F0DEA4(v183))
  {
    v45 = type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0);
    sub_1B6F12204(&qword_1EB97BAA8, type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds);
    swift_allocError();
    v47 = v46;
    v49 = v180;
    v48 = v181;
    (*(v181 + 16))(v46, v44, v180);
    sub_1B6F062BC(v38, v47 + *(v45 + 20), type metadata accessor for RPIRKRatchet.DateRatchet);
    swift_willThrow();
    (*(v48 + 8))(v44, v49);
    return (v41)(v184, v24);
  }

  RPIRKRatchet.DateRatchet.resolution.getter(&v185);
  if (v185 == v39)
  {
    (*(v181 + 8))(v183, v180);
    v41(v184, v24);
    return sub_1B6F062BC(v38, v178, type metadata accessor for RPIRKRatchet.DateRatchet);
  }

  v50 = v177;
  sub_1B6F062BC(v38, v177, type metadata accessor for RPIRKRatchet.DateRatchet);
  v51 = swift_getEnumCaseMultiPayload();
  if (v51 <= 2)
  {
    v168 = 0;
    if (v51)
    {
      if (v51 == 1)
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
        v73 = *(v72 + 48);
        v74 = v173;
        v75 = *(v173 + 32);
        v164 = *(v50 + *(v72 + 64));
        v165 = (v173 + 32);
        v166 = v75;
        v167 = v73;
        v75(v174, v50, v175);
        v77 = v169;
        v76 = v170;
        v78 = v171;
        (*(v170 + 104))(v169, *MEMORY[0x1E6969A78], v171);
        v79 = v184;
        v80 = sub_1B6F228C8();
        (*(v76 + 8))(v77, v78);
        v80 /= 2;
        v81 = v172;
        v82 = v174;
        v83 = v164;
        sub_1B6F0F99C(v174, v80, v164);
        v84 = v82;
        v85 = v175;
        (*(v74 + 8))(v84, v175);
        (*(v181 + 8))(v183, v180);
        v41(v79, v24);
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
        v87 = v86[12];
        v88 = v86[16];
        v89 = v86[20];
        v90 = v178;
        v166(v178, v81, v85);
        v91 = swift_allocBox();
        sub_1B6F062BC(v179, v92, type metadata accessor for RPIRKRatchet.DateRatchet);
        *(v90 + v87) = v91;
        type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
        swift_storeEnumTagMultiPayload();
        *(v90 + v88) = v80;
      }

      else
      {
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA70, &qword_1B6F2F9F8);
        v133 = *(v132 + 48);
        v134 = v173;
        v135 = *(v173 + 32);
        v164 = *(v50 + *(v132 + 80));
        v165 = (v173 + 32);
        v166 = v135;
        v167 = v133;
        v135(v174, v50, v175);
        v137 = v169;
        v136 = v170;
        v138 = v171;
        (*(v170 + 104))(v169, *MEMORY[0x1E6969A78], v171);
        v139 = v184;
        v140 = sub_1B6F228C8();
        (*(v136 + 8))(v137, v138);
        v141 = v172;
        v142 = v174;
        v83 = v164;
        sub_1B6F0F99C(v174, v143 >> 2, v164);
        v144 = v142;
        v145 = v175;
        (*(v134 + 8))(v144, v175);
        (*(v181 + 8))(v183, v180);
        v41(v139, v24);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
        v147 = v146[12];
        v148 = v146[16];
        v89 = v146[20];
        v90 = v178;
        v166(v178, v141, v145);
        v149 = swift_allocBox();
        sub_1B6F062BC(v179, v150, type metadata accessor for RPIRKRatchet.DateRatchet);
        *(v90 + v147) = v149;
        type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
        swift_storeEnumTagMultiPayload();
        *(v90 + v148) = v140 / 4;
      }

      *(v90 + v89) = v83;
    }

    else
    {
      v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA80, &qword_1B6F2FA08) + 48);
      v115 = v173;
      v114 = v174;
      v116 = *(v173 + 32);
      v165 = (v173 + 32);
      v166 = v116;
      v167 = v113;
      v116(v174, v50, v175);
      v118 = v169;
      v117 = v170;
      v119 = v171;
      (*(v170 + 104))(v169, *MEMORY[0x1E6969A68], v171);
      v120 = v184;
      v121 = sub_1B6F228C8();
      (*(v117 + 8))(v118, v119);
      v122 = v172;
      v123 = v121;
      sub_1B6F0F99C(v114, v121, v121);
      v124 = v114;
      v125 = v175;
      (*(v115 + 8))(v124, v175);
      (*(v181 + 8))(v183, v180);
      v41(v120, v24);
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA78, &qword_1B6F2FA00);
      v127 = *(v126 + 48);
      v128 = *(v126 + 64);
      v129 = v178;
      v166(v178, v122, v125);
      v130 = swift_allocBox();
      sub_1B6F062BC(v179, v131, type metadata accessor for RPIRKRatchet.DateRatchet);
      *(v129 + v127) = v130;
      type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v129 + v128) = v123;
    }

    goto LABEL_27;
  }

  if (v51 <= 4)
  {
    v168 = 0;
    if (v51 == 3)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA68, &qword_1B6F2F9F0);
      v167 = *(v52 + 48);
      v163 = *(v50 + *(v52 + 80));
      v54 = v173;
      v53 = v174;
      v55 = *(v173 + 32);
      v164 = v173 + 32;
      v165 = v55;
      v55(v174, v50, v175);
      v57 = v169;
      v56 = v170;
      v58 = v171;
      (*(v170 + 104))(v169, *MEMORY[0x1E6969A78], v171);
      v59 = v184;
      v60 = sub_1B6F228C8();
      v166 = v60;
      (*(v56 + 8))(v57, v58);
      v61 = v172;
      v62 = v60;
      v63 = v163;
      sub_1B6F0F99C(v53, v62, v163);
      v64 = v175;
      (*(v54 + 8))(v53, v175);
      (*(v181 + 8))(v183, v180);
      v41(v59, v24);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
    }

    else
    {
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
      v167 = *(v151 + 48);
      v163 = *(v50 + *(v151 + 80));
      v153 = v173;
      v152 = v174;
      v154 = *(v173 + 32);
      v164 = v173 + 32;
      v165 = v154;
      v154(v174, v50, v175);
      v156 = v169;
      v155 = v170;
      v157 = v171;
      (*(v170 + 104))(v169, *MEMORY[0x1E6969A10], v171);
      v158 = v184;
      v159 = sub_1B6F228C8();
      v166 = v159;
      (*(v155 + 8))(v156, v157);
      v61 = v172;
      v160 = v159;
      v63 = v163;
      sub_1B6F0F99C(v152, v160, v163);
      v64 = v175;
      (*(v153 + 8))(v152, v175);
      (*(v181 + 8))(v183, v180);
      v41(v158, v24);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
    }

    v66 = v65[12];
    v67 = v65[16];
    v68 = v65[20];
    v69 = v178;
    v165(v178, v61, v64);
    v70 = swift_allocBox();
    sub_1B6F062BC(v179, v71, type metadata accessor for RPIRKRatchet.DateRatchet);
    *(v69 + v66) = v70;
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
    swift_storeEnumTagMultiPayload();
    *(v69 + v67) = v166;
    *(v69 + v68) = v63;
    goto LABEL_27;
  }

  if (v51 == 5)
  {
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA58, &qword_1B6F2F9E0);
    v167 = *(v93 + 48);
    v163 = *(v50 + *(v93 + 80));
    v95 = v173;
    v94 = v174;
    v168 = 0;
    v96 = *(v173 + 32);
    v164 = v173 + 32;
    v165 = v96;
    v96(v174, v50, v175);
    v98 = v169;
    v97 = v170;
    v99 = v171;
    (*(v170 + 104))(v169, *MEMORY[0x1E6969A48], v171);
    v100 = v184;
    v101 = sub_1B6F228C8();
    v166 = v101;
    (*(v97 + 8))(v98, v99);
    v102 = v172;
    v103 = v101;
    v104 = v163;
    sub_1B6F0F99C(v94, v103, v163);
    v105 = v175;
    (*(v95 + 8))(v94, v175);
    (*(v181 + 8))(v183, v180);
    v41(v100, v24);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8);
    v107 = v106[12];
    v108 = v106[16];
    v109 = v106[20];
    v110 = v178;
    v165(v178, v102, v105);
    v111 = swift_allocBox();
    sub_1B6F062BC(v179, v112, type metadata accessor for RPIRKRatchet.DateRatchet);
    *(v110 + v107) = v111;
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
    swift_storeEnumTagMultiPayload();
    *(v110 + v108) = v166;
    *(v110 + v109) = v104;
LABEL_27:
    swift_storeEnumTagMultiPayload();
    return sub_1B6F12184(v177 + v167, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  }

  (*(v181 + 8))(v183, v180);
  v41(v184, v24);
  v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA50, &qword_1B6F2F9D8) + 48);
  sub_1B6F062BC(v38, v178, type metadata accessor for RPIRKRatchet.DateRatchet);
  sub_1B6F12184(v50 + v161, type metadata accessor for RPIRKRatchet.DateRatchet.Source);
  return (*(v173 + 8))(v50, v175);
}

uint64_t sub_1B6F0F99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  __src[0] = a2;
  v4 = sub_1B6F106BC(__src, &__src[1]);
  v6 = v5 & 0xFFFFFFFFFFFFFFLL;
  __src[0] = a3;
  v7 = sub_1B6F106BC(__src, &__src[1]);
  *&v15 = v4;
  *(&v15 + 1) = v6;
  v13 = MEMORY[0x1E6969080];
  v14 = MEMORY[0x1E6969078];
  __src[0] = v7;
  __src[1] = v8 & 0xFFFFFFFFFFFFFFLL;
  v9 = __swift_project_boxed_opaque_existential_1Tm(__src, MEMORY[0x1E6969080]);
  sub_1B6F104F0(*v9, v9[1]);
  __swift_destroy_boxed_opaque_existential_1Tm(__src);
  *__src = v15;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
  sub_1B6F10774();
  sub_1B6F229D8();
  result = sub_1B6F01FA0(__src[0], __src[1]);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

id RPIRKRatchet.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RPIRKRatchet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPIRKRatchet(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6F0FD00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

unint64_t RPIRKRatchet.DateOutOfRatchetBounds.description.getter()
{
  v1 = v0;
  v2 = sub_1B6F228B8();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6F228D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1EB97CB58);
  (*(v8 + 16))(v11, v12, v7);
  v13 = *MEMORY[0x1E6969A68];
  v37 = v7;
  v14 = v3[13];
  v14(v6, v13, v2);
  v36 = v8;
  v31 = sub_1B6F228C8();
  v15 = v3[1];
  v15(v6, v2);
  v16 = *MEMORY[0x1E6969A78];
  v14(v6, v16, v2);
  v17 = sub_1B6F228C8();
  v15(v6, v2);
  v32 = v17 / 2;
  v14(v6, v16, v2);
  v18 = sub_1B6F228C8();
  v15(v6, v2);
  v33 = v18 / 4;
  v14(v6, v16, v2);
  v34 = sub_1B6F228C8();
  v15(v6, v2);
  v14(v6, *MEMORY[0x1E6969A10], v2);
  v35 = sub_1B6F228C8();
  v15(v6, v2);
  v14(v6, *MEMORY[0x1E6969A48], v2);
  v19 = sub_1B6F228C8();
  v15(v6, v2);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1B6F22B28();

  v39 = 0xD000000000000017;
  v40 = 0x80000001B6F45720;
  sub_1B6F22848();
  sub_1B6F12204(&qword_1EB97BA98, MEMORY[0x1E6969530]);
  v20 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v20);

  MEMORY[0x1B8C9DA10](31008, 0xE200000000000000);
  v38 = v31;
  v21 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v21);

  MEMORY[0x1B8C9DA10](115, 0xE100000000000000);
  v38 = v32;
  v22 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v22);

  MEMORY[0x1B8C9DA10](113, 0xE100000000000000);
  v38 = v33;
  v23 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v23);

  MEMORY[0x1B8C9DA10](109, 0xE100000000000000);
  v38 = v34;
  v24 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v24);

  MEMORY[0x1B8C9DA10](119, 0xE100000000000000);
  v38 = v35;
  v25 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v25);

  MEMORY[0x1B8C9DA10](100, 0xE100000000000000);
  v38 = v19;
  v26 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v26);

  MEMORY[0x1B8C9DA10](32, 0xE100000000000000);
  v27 = v1 + *(type metadata accessor for RPIRKRatchet.DateOutOfRatchetBounds(0) + 20);
  v28 = RPIRKRatchet.DateRatchet.description.getter();
  MEMORY[0x1B8C9DA10](v28);

  MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
  v29 = v39;
  (*(v36 + 8))(v11, v37);
  return v29;
}

uint64_t RPIRKRatchet.IRKUnavailable.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B6F22B28();

  MEMORY[0x1B8C9DA10](v1, v2);
  MEMORY[0x1B8C9DA10](41, 0xE100000000000000);
  return 0x6176616E554B5249;
}

uint64_t sub_1B6F103D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1B6F1043C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6F104F0(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_1B6F227A8();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1B6F10628(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B6F10628(uint64_t a1, uint64_t a2)
{
  result = sub_1B6F226E8();
  if (!result || (result = sub_1B6F22708(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B6F226F8();
      return sub_1B6F227A8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6F106BC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B6F10774()
{
  result = qword_1EB97BA40;
  if (!qword_1EB97BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BA40);
  }

  return result;
}

uint64_t sub_1B6F10828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1B6F10890(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a6;
  v48 = a5;
  v54 = a1;
  v57[1] = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  v9 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  v11 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B6F22998();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00]();
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src = a2;
  v57[0] = a3;
  sub_1B6F01F4C(a2, a3);
  sub_1B6F22988();
  v47 = v22;
  v26 = *(v22 + 16);
  v49 = v21;
  v26(v20, v25, v21);
  v45 = a4;
  __src = a4;
  __src = sub_1B6F106BC(&__src, v57);
  v57[0] = v27 & 0xFFFFFFFFFFFFFFLL;
  if (qword_1EB97CB40 != -1)
  {
    swift_once();
  }

  sub_1B6F229E8();
  sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
  sub_1B6F10774();
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v57[0]);
  v44 = v20;
  sub_1B6F062BC(v20, &v17[*(v14 + 24)], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v14 + 20)] = v45;
  v28 = v48;
  __src = v48;
  __src = sub_1B6F106BC(&__src, v57);
  v57[0] = v29 & 0xFFFFFFFFFFFFFFLL;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v57[0]);
  v30 = v46;
  sub_1B6F062BC(v17, &v13[*(v46 + 24)], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *&v13[*(v30 + 20)] = v28;
  v31 = v52;
  __src = v52;
  __src = sub_1B6F106BC(&__src, v57);
  v57[0] = v32 & 0xFFFFFFFFFFFFFFLL;
  v33 = v50;
  sub_1B6F229D8();
  sub_1B6F01FA0(__src, v57[0]);
  v34 = v51;
  sub_1B6F062BC(v13, v33 + *(v51 + 24), type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
  swift_storeEnumTagMultiPayload();
  *(v33 + *(v34 + 20)) = v31;
  (*(v47 + 8))(v25, v49);
  v35 = OBJC_IVAR____TtC7Rapport12RPIRKRatchet_startDate;
  v36 = sub_1B6F22848();
  v37 = *(v36 - 8);
  v39 = v53;
  v38 = v54;
  (*(v37 + 16))(v53 + v35, v54, v36);
  sub_1B6F10828(v44, v39 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_locallyPermanent, type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
  sub_1B6F10828(v17, v39 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_sameAccountDevices, type metadata accessor for RPIRKRatchet.SameAccountRatchet);
  sub_1B6F10828(v13, v39 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_managedAccounts, type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
  sub_1B6F10828(v33, v39 + OBJC_IVAR____TtC7Rapport12RPIRKRatchet_contacts, type metadata accessor for RPIRKRatchet.ContactsRatchet);
  v40 = type metadata accessor for RPIRKRatchet(0);
  v55.receiver = v39;
  v55.super_class = v40;
  v41 = objc_msgSendSuper2(&v55, sel_init);
  (*(v37 + 8))(v38, v36);
  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t sub_1B6F10EBC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_1B6F22A68();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x1EEE69100](a1, a2, a3, a4);
}

id sub_1B6F10F58(void *a1)
{
  v167[1] = *MEMORY[0x1E69E9840];
  v149 = type metadata accessor for RPIRKRatchet.DateRatchet(0);
  v2 = *(*(v149 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v149);
  v151 = (&v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v150 = &v133 - v5;
  v148 = sub_1B6F228B8();
  v147 = *(v148 - 8);
  v6 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v146 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for RPIRKRatchet.IRK(0);
  v8 = *(*(v143 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v143);
  v144 = (&v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v133 - v11);
  v157 = type metadata accessor for RPIRKRatchet.ContactsRatchet(0);
  v13 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v15 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(0);
  v16 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for RPIRKRatchet.SameAccountRatchet(0);
  v18 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v160 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B6F22998();
  v161 = *(v23 - 8);
  v162 = v23;
  v24 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for RPIRKRatchet.IRKTarget(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1B6F22848();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v163 = (&v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1EEE9AC00](v34);
  v164 = &v133 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v133 - v38;
  v40 = [a1 deviceIRKData];
  if (!v40)
  {
    goto LABEL_13;
  }

  v137 = v15;
  v145 = v26;
  v138 = v12;
  v41 = v40;
  v42 = sub_1B6F227E8();
  v44 = v43;

  v45 = [a1 identifier];
  if (!v45)
  {
    sub_1B6F01FA0(v42, v44);
LABEL_13:
    v79 = [a1 description];
    v84 = sub_1B6F22A08();
    v86 = v85;

    sub_1B6F13790();
    swift_allocError();
    *v87 = v84;
    v87[1] = v86;
    swift_willThrow();
    goto LABEL_14;
  }

  v152 = v42;
  v153 = v44;
  v46 = v45;
  v134 = sub_1B6F22A08();
  v136 = v47;

  v135 = a1;
  v48 = v31;
  v49 = [a1 type];
  sub_1B6F22828();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA48, &qword_1B6F2F9D0);
  v51 = *(v50 + 48);
  v52 = *(v50 + 64);
  v139 = v32;
  v54 = *(v32 + 16);
  v53 = (v32 + 16);
  v141 = v39;
  v55 = v39;
  v142 = v48;
  v56 = v54;
  v54(v30, v55, v48);
  v30[v51] = 5;
  if (qword_1EB97CB50 != -1)
  {
    swift_once();
  }

  v57 = sub_1B6F228D8();
  v58 = __swift_project_value_buffer(v57, qword_1EB97CB58);
  (*(*(v57 - 8) + 16))(&v30[v52], v58, v57);
  v140 = v30;
  swift_storeEnumTagMultiPayload();
  v59 = v152;
  v60 = v153;
  v61 = v164;
  switch(v49)
  {
    case 1u:
      goto LABEL_8;
    case 0xFu:
      v90 = v135;
      v91 = [v135 dateAdded];
      if (!v91)
      {

        v79 = [v90 description];
        v112 = sub_1B6F22A08();
        v114 = v113;

        sub_1B6F13790();
        swift_allocError();
        *v115 = v112;
        v115[1] = v114;
        swift_willThrow();
        sub_1B6F01FA0(v59, v153);
        sub_1B6F12184(v140, type metadata accessor for RPIRKRatchet.IRKTarget);
        (*(v139 + 8))(v141, v142);
        goto LABEL_14;
      }

      v92 = v91;
      sub_1B6F22818();

      v93 = v147;
      v94 = *(v147 + 104);
      v95 = v146;
      v96 = v148;
      v94(v146, *MEMORY[0x1E6969A78], v148);
      v164 = sub_1B6F228C8();
      v97 = *(v93 + 8);
      v97(v95, v96);
      v94(v95, *MEMORY[0x1E6969A68], v96);
      v98 = sub_1B6F228C8();
      v97(v95, v96);
      v59 = v152;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA60, &qword_1B6F2F9E8);
      v100 = v150;
      v101 = &v150[v99[12]];
      v102 = v99[16];
      v103 = v99[20];
      v104 = v153;
      __src = v59;
      v167[0] = v153;
      sub_1B6F01F4C(v59, v153);
      sub_1B6F22988();
      v105 = v136;
      *v101 = v134;
      v101[1] = v105;
      type metadata accessor for RPIRKRatchet.DateRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v100 + v102) = v164;
      *(v100 + v103) = v98;
      swift_storeEnumTagMultiPayload();
      v106 = v151;
      v107 = v140;
      v108 = v159;
      sub_1B6F0AEA4(v140, v151);
      v77 = v142;
      if (v108)
      {
        sub_1B6F01FA0(v59, v104);
        sub_1B6F12184(v100, type metadata accessor for RPIRKRatchet.DateRatchet);
        v79 = *(v139 + 8);
        (v79)(v163, v77);
        sub_1B6F12184(v107, type metadata accessor for RPIRKRatchet.IRKTarget);
        (v79)(v141, v77);
        goto LABEL_14;
      }

      v116 = v145;
      RPIRKRatchet.DateRatchet.key.getter(v145);
      v117 = sub_1B6F16738();
      v119 = v118;
      (*(v161 + 8))(v116, v162);
      sub_1B6F12184(v100, type metadata accessor for RPIRKRatchet.DateRatchet);
      v120 = v143;
      v121 = v144;
      sub_1B6F062BC(v107, v144 + *(v143 + 20), type metadata accessor for RPIRKRatchet.IRKTarget);
      sub_1B6F10828(v106, v121 + *(v120 + 24), type metadata accessor for RPIRKRatchet.DateRatchet);
      *v121 = v117;
      v121[1] = v119;
      sub_1B6F01F4C(v117, v119);
      sub_1B6F12184(v121, type metadata accessor for RPIRKRatchet.IRK);
      v109 = sub_1B6F227C8();
      sub_1B6F01FA0(v117, v119);
      (*(v139 + 8))(v163, v77);
      break;
    case 6u:
LABEL_8:

      v56(v61, v141, v142);
      v163 = type metadata accessor for RPIRKRatchet(0);
      v62 = objc_allocWithZone(v163);
      __src = v59;
      v167[0] = v60;
      sub_1B6F01F4C(v59, v60);
      v63 = v145;
      sub_1B6F22988();
      v64 = v160;
      v65 = *(v161 + 16);
      v151 = v56;
      v65(v160, v63, v162);
      __src = 0;
      __src = sub_1B6F106BC(&__src, v167);
      v167[0] = v66 & 0xFFFFFFFFFFFFFFLL;
      v150 = v53;
      if (qword_1EB97CB40 != -1)
      {
        swift_once();
      }

      sub_1B6F229E8();
      sub_1B6F12204(&qword_1EB97BA38, MEMORY[0x1E6966620]);
      sub_1B6F10774();
      v67 = v156;
      sub_1B6F229D8();
      sub_1B6F01FA0(__src, v167[0]);
      v68 = v64;
      v69 = v154;
      sub_1B6F062BC(v68, v67 + *(v154 + 24), type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
      type metadata accessor for RPIRKRatchet.SameAccountRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v67 + *(v69 + 20)) = 0;
      __src = 0;
      __src = sub_1B6F106BC(&__src, v167);
      v167[0] = v70 & 0xFFFFFFFFFFFFFFLL;
      v71 = v158;
      sub_1B6F229D8();
      sub_1B6F01FA0(__src, v167[0]);
      v72 = v155;
      sub_1B6F062BC(v67, v71 + *(v155 + 24), type metadata accessor for RPIRKRatchet.SameAccountRatchet);
      type metadata accessor for RPIRKRatchet.ManagedAccountRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v71 + *(v72 + 20)) = 0;
      __src = 0;
      __src = sub_1B6F106BC(&__src, v167);
      v167[0] = v73 & 0xFFFFFFFFFFFFFFLL;
      v74 = v137;
      sub_1B6F229D8();
      sub_1B6F01FA0(__src, v167[0]);
      v75 = v157;
      sub_1B6F062BC(v71, v74 + *(v157 + 24), type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
      type metadata accessor for RPIRKRatchet.ContactsRatchet.Source(0);
      swift_storeEnumTagMultiPayload();
      *(v74 + *(v75 + 20)) = 0;
      (*(v161 + 8))(v145, v162);
      v76 = v164;
      v77 = v142;
      v151(&v62[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_startDate], v164, v142);
      sub_1B6F10828(v160, &v62[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_locallyPermanent], type metadata accessor for RPIRKRatchet.LocallyPermanentRatchet);
      sub_1B6F10828(v67, &v62[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_sameAccountDevices], type metadata accessor for RPIRKRatchet.SameAccountRatchet);
      sub_1B6F10828(v71, &v62[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_managedAccounts], type metadata accessor for RPIRKRatchet.ManagedAccountRatchet);
      sub_1B6F10828(v74, &v62[OBJC_IVAR____TtC7Rapport12RPIRKRatchet_contacts], type metadata accessor for RPIRKRatchet.ContactsRatchet);
      v165.receiver = v62;
      v165.super_class = v163;
      v78 = objc_msgSendSuper2(&v165, sel_init);
      v79 = (v139 + 8);
      v80 = *(v139 + 8);
      v80(v76, v77);
      v81 = v138;
      v82 = v140;
      v83 = v159;
      (*((*MEMORY[0x1E69E7D40] & *v78) + 0x80))(v140);
      if (v83)
      {

        sub_1B6F01FA0(v152, v153);
        sub_1B6F12184(v82, type metadata accessor for RPIRKRatchet.IRKTarget);
        v80(v141, v77);
        goto LABEL_14;
      }

      v110 = *v81;
      v111 = v81[1];
      sub_1B6F01F4C(*v81, v111);
      sub_1B6F12184(v81, type metadata accessor for RPIRKRatchet.IRK);
      v109 = sub_1B6F227C8();
      sub_1B6F01FA0(v110, v111);

      v59 = v152;
      break;
    default:

      v109 = sub_1B6F227C8();
      v77 = v142;
      break;
  }

  v122 = qword_1EB97CB70;
  v123 = v109;
  if (v122 != -1)
  {
    swift_once();
  }

  v124 = sub_1B6F22908();
  __swift_project_value_buffer(v124, qword_1EB97CB78);
  v79 = v123;
  v125 = v135;
  v126 = sub_1B6F228E8();
  v127 = sub_1B6F22AA8();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v128 = 138412547;
    *(v128 + 4) = v125;
    *(v128 + 12) = 2113;
    *(v128 + 14) = v79;
    *v129 = v125;
    v129[1] = v79;
    v130 = v79;
    v131 = v125;
    _os_log_impl(&dword_1B6E85000, v126, v127, "%@: using ratcheted irk: %{private}@", v128, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB97BB70, &qword_1B6F2FE60);
    swift_arrayDestroy();
    v132 = v129;
    v59 = v152;
    MEMORY[0x1B8C9F270](v132, -1, -1);
    MEMORY[0x1B8C9F270](v128, -1, -1);
  }

  sub_1B6F01FA0(v59, v153);
  sub_1B6F12184(v140, type metadata accessor for RPIRKRatchet.IRKTarget);
  (*(v139 + 8))(v141, v77);
LABEL_14:
  v88 = *MEMORY[0x1E69E9840];
  return v79;
}

uint64_t sub_1B6F12184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6F12204(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6F1224C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BA90, &qword_1B6F2FA18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6F122B4()
{
  result = qword_1EB97BAA0;
  if (!qword_1EB97BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BAA0);
  }

  return result;
}

unint64_t sub_1B6F1234C()
{
  result = qword_1EB97BAC0;
  if (!qword_1EB97BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BAC0);
  }

  return result;
}

uint64_t sub_1B6F123A8()
{
  result = sub_1B6F22848();
  if (v1 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = sub_1B6F22998();
    if (v2 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = type metadata accessor for RPIRKRatchet.SameAccountRatchet(319);
      if (v3 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        result = type metadata accessor for RPIRKRatchet.ManagedAccountRatchet(319);
        if (v4 <= 0x3F)
        {
          v9 = *(result - 8) + 64;
          result = type metadata accessor for RPIRKRatchet.ContactsRatchet(319);
          if (v5 <= 0x3F)
          {
            v10 = *(result - 8) + 64;
            return swift_updateClassMetadata2();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B6F12608()
{
  result = type metadata accessor for RPIRKRatchet.IRKTarget(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RPIRKRatchet.DateRatchet(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B6F1269C()
{
  sub_1B6F12710();
  if (v0 <= 0x3F)
  {
    sub_1B6F1277C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B6F12710()
{
  if (!qword_1EB97BAC8)
  {
    sub_1B6F228D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB97BAC8);
    }
  }
}

void sub_1B6F1277C()
{
  if (!qword_1EB97BAD0)
  {
    sub_1B6F22848();
    sub_1B6F228D8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB97BAD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for RPIRKRatchet.DateResolution(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPIRKRatchet.DateResolution(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B6F12970()
{
  result = sub_1B6F22998();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_1B6F22998();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = a4(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_31Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_1B6F22998();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = a5(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1B6F12C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1B6F22998();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6F12D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B6F12DF0()
{
  sub_1B6F12EC8();
  if (v0 <= 0x3F)
  {
    sub_1B6F12F3C();
    if (v1 <= 0x3F)
    {
      sub_1B6F12FB8(319);
      if (v2 <= 0x3F)
      {
        sub_1B6F130C4();
        if (v3 <= 0x3F)
        {
          sub_1B6F131C4();
          if (v4 <= 0x3F)
          {
            sub_1B6F132C0();
            if (v5 <= 0x3F)
            {
              sub_1B6F133C0(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B6F12EC8()
{
  if (!qword_1EB97BAD8)
  {
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB97BAD8);
    }
  }
}

void sub_1B6F12F3C()
{
  if (!qword_1EB97BAE0)
  {
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB97BAE0);
    }
  }
}

void sub_1B6F12FB8(uint64_t a1)
{
  if (!qword_1EB97BAE8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BAE8);
    }
  }
}

void sub_1B6F130C4()
{
  if (!qword_1EB97BAF0)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BAF0);
    }
  }
}

void sub_1B6F131C4()
{
  if (!qword_1EB97BAF8)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BAF8);
    }
  }
}

void sub_1B6F132C0()
{
  if (!qword_1EB97BB00)
  {
    MEMORY[0x1EEE9AC00](0);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BB00);
    }
  }
}

void sub_1B6F133C0(uint64_t a1)
{
  if (!qword_1EB97BB08)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1B6F22998();
    type metadata accessor for RPIRKRatchet.DateRatchet.Source(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB97BB08);
    }
  }
}

uint64_t sub_1B6F13528()
{
  result = type metadata accessor for RPIRKRatchet.ContactsRatchet(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B6F135C8()
{
  result = type metadata accessor for RPIRKRatchet.DateRatchet(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B6F1366C()
{
  result = sub_1B6F22848();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RPIRKRatchet.DateRatchet(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B6F136FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6F13744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B6F13790()
{
  result = qword_1EB97BB18;
  if (!qword_1EB97BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BB18);
  }

  return result;
}

uint64_t sub_1B6F13808()
{
  v0 = sub_1B6F22908();
  __swift_allocate_value_buffer(v0, qword_1EB97D288);
  v1 = __swift_project_value_buffer(v0, qword_1EB97D288);
  v2 = sub_1B6F01DC4();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id RPPairingReceiverController.queue.getter()
{
  v1 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void RPPairingReceiverController.queue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RPPairingReceiverController.pairingValueUpdatedHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1B6E8A57C(v3);
  return v3;
}

uint64_t sub_1B6F13B94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1B6F22A08();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

void sub_1B6F13CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_1B6F229F8();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

uint64_t RPPairingReceiverController.pairingValueUpdatedHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B6F13D8C(v6);
}

uint64_t sub_1B6F13D8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B6F13D9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B6F15B30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B6E8A57C(v4);
}

uint64_t sub_1B6F13E3C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B6F15AF8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B6E8A57C(v3);
  return sub_1B6F13D8C(v8);
}

uint64_t RPPairingReceiverController.pairingValueUIVisible.getter()
{
  v1 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RPPairingReceiverController.pairingValueUIVisible.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1B6F1415C();
}

uint64_t sub_1B6F140AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1B6F14104(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  *(v3 + v4) = v2;
  return sub_1B6F1415C();
}

uint64_t sub_1B6F1415C()
{
  v1 = sub_1B6F22928();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6F22948();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible;
  swift_beginAccess();
  LOBYTE(v11) = v0[v11];
  v12 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v13 = *&v0[v12];
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  *(v14 + 24) = v11;
  aBlock[4] = sub_1B6F15DA8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6F15F10;
  aBlock[3] = &block_descriptor_42;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v0;
  sub_1B6F22938();
  v19[1] = MEMORY[0x1E69E7CC0];
  sub_1B6F15100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB50, &qword_1B6F2FE68);
  sub_1B6F15158();
  sub_1B6F22B18();
  MEMORY[0x1B8C9DA80](0, v10, v5, v15);
  _Block_release(v15);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

void sub_1B6F14410()
{
  v1 = sub_1B6F22958();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v7 = *&v0[v6];
  *v5 = v7;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v8 = v7;
  LOBYTE(v7) = sub_1B6F22968();
  (*(v2 + 8))(v5, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_12;
  }

  v9 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx;
  if (*&v0[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx])
  {
    return;
  }

  v10 = sub_1B6F01F24();
  v11 = *v10;
  v12 = v10[1];
  v13 = objc_allocWithZone(MEMORY[0x1E696B0B8]);

  v14 = sub_1B6F229F8();

  v15 = [v13 initWithMachServiceName:v14 options:0];

  v16 = *&v0[v9];
  *&v0[v9] = v15;

  v17 = *&v0[v9];
  if (v17)
  {
    [v17 rp:*&v0[v6] setQueue:?];
    v18 = *&v0[v9];
    if (v18)
    {
      v19 = objc_opt_self();
      v20 = v18;
      v21 = [v19 interfaceWithProtocol_];
      [v20 setExportedInterface_];

      v22 = *&v0[v9];
      if (v22)
      {
        [v22 setExportedObject_];
        v23 = *&v0[v9];
        if (v23)
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v0;
          v47 = sub_1B6F15BC8;
          v48 = v24;
          aBlock = MEMORY[0x1E69E9820];
          v44 = 1107296256;
          v45 = sub_1B6F15F10;
          v46 = &block_descriptor_30;
          v25 = _Block_copy(&aBlock);
          v26 = v23;
          v27 = v0;

          [v26 setInterruptionHandler_];
          _Block_release(v25);

          v28 = *&v0[v9];
          if (v28)
          {
            v29 = swift_allocObject();
            *(v29 + 16) = v27;
            v47 = sub_1B6F15CAC;
            v48 = v29;
            aBlock = MEMORY[0x1E69E9820];
            v44 = 1107296256;
            v45 = sub_1B6F15F10;
            v46 = &block_descriptor_36;
            v30 = _Block_copy(&aBlock);
            v31 = v27;
            v32 = v28;

            [v32 setInvalidationHandler_];
            _Block_release(v30);

            v33 = *&v0[v9];
            if (v33)
            {
              v34 = objc_opt_self();
              v35 = v33;
              v36 = [v34 interfaceWithProtocol_];
              [v35 setRemoteObjectInterface_];

              v37 = *&v0[v9];
              if (v37)
              {
                [v37 resume];
              }
            }
          }
        }
      }
    }
  }

  if (qword_1EB97D280 != -1)
  {
    goto LABEL_17;
  }

LABEL_12:
  v38 = sub_1B6F22908();
  __swift_project_value_buffer(v38, qword_1EB97D288);
  v39 = sub_1B6F228E8();
  v40 = sub_1B6F22AA8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1B6E85000, v39, v40, "XPC started", v41, 2u);
    MEMORY[0x1B8C9F270](v41, -1, -1);
  }
}

void sub_1B6F148F4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t (*RPPairingReceiverController.pairingValueUIVisible.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B6F149C0;
}

uint64_t sub_1B6F149C0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1B6F1415C();
  }

  return result;
}

id RPPairingReceiverController.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible] = 0;
  *&v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx] = 0;
  sub_1B6F14B44();
  *&v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue] = sub_1B6F22AD8();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id RPPairingReceiverController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible] = 0;
  *&v1[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx] = 0;
  sub_1B6F14B44();
  *&v1[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue] = sub_1B6F22AD8();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

unint64_t sub_1B6F14B44()
{
  result = qword_1EB97BB40;
  if (!qword_1EB97BB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB97BB40);
  }

  return result;
}

id RPPairingReceiverController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void RPPairingReceiverController.init()()
{
  v1 = (v0 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible) = 0;
  *(v0 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx) = 0;
  sub_1B6F22B78();
  __break(1u);
}

id RPPairingReceiverController.__allocating_init(queue:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler];
  *v4 = 0;
  v4[1] = 0;
  v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible] = 0;
  *&v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx] = 0;
  *&v3[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id RPPairingReceiverController.init(queue:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUIVisible] = 0;
  *&v1[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx] = 0;
  *&v1[OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1B6F14EEC()
{
  v1 = *(v0 + 16);
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v2 = sub_1B6F22908();
  __swift_project_value_buffer(v2, qword_1EB97D288);
  v3 = sub_1B6F228E8();
  v4 = sub_1B6F22AC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B6E85000, v3, v4, "Starting pairing receiver controller", v5, 2u);
    MEMORY[0x1B8C9F270](v5, -1, -1);
  }

  result = sub_1B6F14410();
  v7 = *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx);
  if (v7)
  {
    v11[4] = sub_1B6F15204;
    v11[5] = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1B6F148F4;
    v11[3] = &block_descriptor_24;
    v8 = _Block_copy(v11);
    v9 = v7;
    v10 = [v9 remoteObjectProxyWithErrorHandler_];
    _Block_release(v8);

    sub_1B6F22B08();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB68, &qword_1B6F2FEB8);
    result = swift_dynamicCast();
    if (result)
    {
      [v11[0] startPairingReceiverController_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B6F15100()
{
  result = qword_1EB97BB48;
  if (!qword_1EB97BB48)
  {
    sub_1B6F22928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BB48);
  }

  return result;
}

unint64_t sub_1B6F15158()
{
  result = qword_1EB97BB58;
  if (!qword_1EB97BB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB97BB50, &qword_1B6F2FE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BB58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_1B6F15210(void *a1, const char *a2)
{
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6F22908();
  __swift_project_value_buffer(v4, qword_1EB97D288);
  v5 = a1;
  oslog = sub_1B6F228E8();
  v6 = sub_1B6F22AB8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B6E85000, oslog, v6, a2, v7, 0xCu);
    sub_1B6F15B60(v8);
    MEMORY[0x1B8C9F270](v8, -1, -1);
    MEMORY[0x1B8C9F270](v7, -1, -1);
  }
}

uint64_t sub_1B6F153D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = sub_1B6F22928();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6F22948();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v16 = *&v3[v15];
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6F15F10;
  aBlock[3] = v23;
  v18 = _Block_copy(aBlock);
  v19 = v16;
  v20 = v3;
  sub_1B6F22938();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1B6F15100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB50, &qword_1B6F2FE68);
  sub_1B6F15158();
  sub_1B6F22B18();
  MEMORY[0x1B8C9DA80](0, v14, v9, v18);
  _Block_release(v18);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

id sub_1B6F15658()
{
  v1 = *(v0 + 16);
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v2 = sub_1B6F22908();
  __swift_project_value_buffer(v2, qword_1EB97D288);
  v3 = sub_1B6F228E8();
  v4 = sub_1B6F22AC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B6E85000, v3, v4, "Stopping pairing receiver controller", v5, 2u);
    MEMORY[0x1B8C9F270](v5, -1, -1);
  }

  result = *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

uint64_t sub_1B6F157B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B6F157F8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6F22958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_queue;
  swift_beginAccess();
  v11 = *(v2 + v10);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_1B6F22968();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v14 = v2 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_pairingValueUpdatedHandler;
    result = swift_beginAccess();
    v15 = *v14;
    if (*v14)
    {
      v16 = *(v14 + 8);

      v15(a1, a2);
      return sub_1B6F13D8C(v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RPPairingReceiverController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6F15AF8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_1B6F15B30(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1B6F15B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB97BB70, &qword_1B6F2FE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6F15BC8()
{
  v1 = *(v0 + 16);
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v2 = sub_1B6F22908();
  __swift_project_value_buffer(v2, qword_1EB97D288);
  v3 = sub_1B6F228E8();
  v4 = sub_1B6F22AC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B6E85000, v3, v4, "XPC connection interrupted, restarting receiver controller", v5, 2u);
    MEMORY[0x1B8C9F270](v5, -1, -1);
  }

  RPPairingReceiverController.start()();
}

void sub_1B6F15CAC()
{
  v1 = *(v0 + 16);
  if (qword_1EB97D280 != -1)
  {
    swift_once();
  }

  v2 = sub_1B6F22908();
  __swift_project_value_buffer(v2, qword_1EB97D288);
  v3 = sub_1B6F228E8();
  v4 = sub_1B6F22AC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B6E85000, v3, v4, "XPC connection invalidated", v5, 2u);
    MEMORY[0x1B8C9F270](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx);
  *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx) = 0;
}

void sub_1B6F15DA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B6F14410();
  v3 = *(v1 + OBJC_IVAR____TtC7Rapport27RPPairingReceiverController_xpcCnx);
  if (v3)
  {
    v7[4] = sub_1B6F148E8;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B6F148F4;
    v7[3] = &block_descriptor_45;
    v4 = _Block_copy(v7);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_1B6F22B08();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB97BB68, &qword_1B6F2FEB8);
    if (swift_dynamicCast())
    {
      [v7[0] pairingValueUIVisibleUpdated_];
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1B6F15F34()
{
  result = qword_1EB97BBE0;
  if (!qword_1EB97BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB97BBE0);
  }

  return result;
}

unint64_t sub_1B6F15F88()
{
  v1 = sub_1B6F22788();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v11 = (v10 + 8);
  if (*(v0 + 40) > 1u)
  {
    if (*(v0 + 40) == 2)
    {
      sub_1B6F22768();
      v20 = sub_1B6F22778();
      v22 = v21;
      (*v11)(v4, v1);
      v37 = v20;
      v38 = v22;
      MEMORY[0x1B8C9DA10](58, 0xE100000000000000);
      v36 = v9;
      v23 = sub_1B6F22C68();
      MEMORY[0x1B8C9DA10](v23);

      v16 = v37;
      v17 = v38;
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1B6F22B28();

      v24 = 0x20676E697373694DLL;
      v25 = 0xEF203A65756C6176;
    }

    else
    {
      sub_1B6F22768();
      v30 = sub_1B6F22778();
      v32 = v31;
      (*v11)(v4, v1);
      v37 = v30;
      v38 = v32;
      MEMORY[0x1B8C9DA10](58, 0xE100000000000000);
      v36 = v9;
      v33 = sub_1B6F22C68();
      MEMORY[0x1B8C9DA10](v33);

      v16 = v37;
      v17 = v38;
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_1B6F22B28();

      v24 = 0x3A74756F656D6954;
      v25 = 0xE900000000000020;
    }

    v37 = v24;
    v38 = v25;
    goto LABEL_9;
  }

  if (*(v0 + 40))
  {
    sub_1B6F22768();
    v26 = sub_1B6F22778();
    v28 = v27;
    (*v11)(v4, v1);
    v37 = v26;
    v38 = v28;
    MEMORY[0x1B8C9DA10](58, 0xE100000000000000);
    v36 = v9;
    v29 = sub_1B6F22C68();
    MEMORY[0x1B8C9DA10](v29);

    v16 = v37;
    v17 = v38;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1B6F22B28();

    v37 = 0xD000000000000010;
    v38 = 0x80000001B6F45AE0;
LABEL_9:
    MEMORY[0x1B8C9DA10](v6, v5);
    v18 = 23328;
    v19 = 0xE200000000000000;
    goto LABEL_10;
  }

  sub_1B6F22768();
  v12 = sub_1B6F22778();
  v14 = v13;
  (*v11)(v4, v1);
  v37 = v12;
  v38 = v14;
  MEMORY[0x1B8C9DA10](58, 0xE100000000000000);
  v36 = v9;
  v15 = sub_1B6F22C68();
  MEMORY[0x1B8C9DA10](v15);

  v16 = v37;
  v17 = v38;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1B6F22B28();

  v37 = 0xD00000000000001BLL;
  v38 = 0x80000001B6F45B00;
  MEMORY[0x1B8C9DA10](v6, v5);
  v18 = 5972002;
  v19 = 0xE300000000000000;
LABEL_10:
  MEMORY[0x1B8C9DA10](v18, v19);
  MEMORY[0x1B8C9DA10](v16, v17);

  MEMORY[0x1B8C9DA10](93, 0xE100000000000000);
  return v37;
}