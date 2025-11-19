uint64_t AFCProcessSetBlockSize(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void), unint64_t a4)
{
  Context = AFCConnectionGetContext(a1);
  AFCLog(5, "Processing SetBlockSize packet\n");
  if (Context)
  {
    v9 = OUTLINED_FUNCTION_4_2();
    if (AFCDiscardBodyData(v9, v10))
    {
      goto LABEL_10;
    }

    v11 = *(a2 + 40);
    if (v11 > 0x400000)
    {
      v25 = *(a2 + 40);
      v20 = OUTLINED_FUNCTION_2_2();
      v24 = 2929;
    }

    else if (v11 <= a4)
    {
      v26 = *(a2 + 40);
      v20 = OUTLINED_FUNCTION_2_2();
      v24 = 2933;
    }

    else
    {
      v12 = *(Context + 56);
      v13 = *(a1 + 104);
      if (v13)
      {
        v14 = dispatch_time(0, 1000000000 * v13 * gAFCMaxIORequests);
      }

      else
      {
        v14 = -1;
      }

      if (!dispatch_group_wait(v12, v14))
      {
        a3(a1, Context, *(a2 + 40));
        goto LABEL_10;
      }

      v23 = "timeout waiting for all IO requests to complete";
      v22 = 3892330508;
      v20 = 0;
      v21 = 0xFFFFFFFFLL;
      v24 = 2937;
    }
  }

  else
  {
    v20 = OUTLINED_FUNCTION_3_2();
    v24 = 2922;
  }

  __AFCSetErrorResult_4(v20, v21, v22, v15, v24, v23);
LABEL_10:
  v16 = OUTLINED_FUNCTION_4_2();

  return AFCSendStatus(v16, v17, v18);
}

uint64_t AFCProcessServerPacket_cold_1(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 1418, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_2(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_5_2();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 2792, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_3(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 2726, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_4(_DWORD *a1)
{
  v2 = *__error();
  OUTLINED_FUNCTION_8_0();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 2760, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_5(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 2681, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_6(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 1521, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_7()
{
  OUTLINED_FUNCTION_6_1();
  v3 = OUTLINED_FUNCTION_1_2();
  v8 = __AFCSetErrorResult_4(v3, v4, v5, v6, 1465, v7);
  result = AFCSendStatus(v2, v1, v8);
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = result;
  }

  *v0 = v10;
  return result;
}

uint64_t AFCProcessServerPacket_cold_8(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 2055, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_9(_DWORD *a1)
{
  v2 = *__error();
  v3 = __error();
  strerror(*v3);
  v4 = OUTLINED_FUNCTION_7_0();
  result = __AFCSetErrorResult_4(v4, v5, v6, v7, 2073, v8);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_10(_DWORD *a1)
{
  v2 = *__error();
  v3 = __error();
  strerror(*v3);
  v4 = OUTLINED_FUNCTION_7_0();
  result = __AFCSetErrorResult_4(v4, v5, v6, v7, 2062, v8);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_11()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  return __AFCSetErrorResult_4(1, v0, 3892330519, v2, 206, "failed to retrieve file information (%s)");
}

uint64_t AFCProcessServerPacket_cold_14(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_5_2();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 988, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_15(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_5_2();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 1072, v7);
  *a1 = result;
  return result;
}

uint64_t AFCProcessFileRefWritePacket_cold_1()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_3_2();
  *(*v0 + 24) = __AFCSetErrorResult_4(v1, v2, 3892330508, v3, 2378, v4);
  v5 = OUTLINED_FUNCTION_4_2();
  return AFCDiscardData(v5, v6);
}

uint64_t AFCProcessFileRefWritePacket_cold_2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_2();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2344, v6);
  *(*a1 + 24) = result;
  return result;
}

uint64_t AFCProcessFileRefWritePacket_cold_3()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_1_2();
  *(*v0 + 24) = __AFCSetErrorResult_4(v1, v2, v3, v4, 2361, v5);
  v6 = OUTLINED_FUNCTION_4_2();
  return AFCDiscardData(v6, v7);
}

uint64_t AFCProcessFileRefWritePacket_cold_4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_2();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2330, v6);
  *(*a1 + 24) = result;
  return result;
}

uint64_t RemovePath_cold_1(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 1335, v7);
  *a1 = result;
  return result;
}

uint64_t __AFCGetFileHash_cold_1(_DWORD *a1)
{
  v2 = *__error();
  v3 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 1753, v7);
  *a1 = result;
  return result;
}

uint64_t __AFCGetFileHash_cold_2(_DWORD *a1)
{
  v2 = *__error();
  OUTLINED_FUNCTION_8_0();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 1832, v7);
  *a1 = result;
  return result;
}

uint64_t __AFCGetFileHash_cold_3(_DWORD *a1)
{
  v2 = *__error();
  OUTLINED_FUNCTION_8_0();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 1847, v7);
  *a1 = result;
  return result;
}

uint64_t __AFCGetFileHash_cold_4(_DWORD *a1)
{
  v2 = *__error();
  OUTLINED_FUNCTION_8_0();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 1825, v7);
  *a1 = result;
  return result;
}