uint64_t ETLDLOADCoreDumpCaptureRecord(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t, int *, uint64_t, void, void), char a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v12 = *(a1 + 4);
  v11 = *(a1 + 8);
  v38[0] = *(a5 + 8);
  v38[1] = v12;
  v13 = v11 + v12;
  v38[2] = (v11 + v12);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v14 = malloc((4 << a4));
  if (v14)
  {
    v30 = v14;
    v31 = a3;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44 = v15;
    v45 = v15;
    v16 = 1 << a4;
    v43 = v15;
    v40 = v15;
    v41 = v15;
    v42 = v15;
    memset(v37, 170, sizeof(v37));
    v17 = TelephonyUtilRingBufferInitialize();
    v18 = 0;
    v19 = (((1 << a4) + *(a1 + 8) - 1) >> a4) * *(a5 + 16);
    if (v19 < 0x64)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19 / 0x64;
    }

    v29 = v20;
    v21 = 1;
    v22 = *(a5 + 24);
    if (v22)
    {
      goto LABEL_8;
    }

    while (1)
    {
      while (1)
      {
        if (v13 == v12)
        {
LABEL_36:
          free(v30);
          return v17 & 1;
        }

        v36 = -1431655766;
        v35 = -21846;
        v34 = 0xAAAAAAAAAAAAAAAALL;
        if (v13 - v12 >= v16)
        {
          v23 = v16;
        }

        else
        {
          v23 = v13 - v12;
        }

        if (!ETLDLOADCommandCreateMemoryDebugReadRequest())
        {
          goto LABEL_35;
        }

        v24 = ETLDLOADCommandSend();
        HDLCFrameFree();
        if (!v24)
        {
          goto LABEL_35;
        }

        if (ETLDLOADCommandReceiveWithBufferAndFlags())
        {
          break;
        }

        _ETLDebugPrint();
        if (v18 >= 7)
        {
          goto LABEL_35;
        }

LABEL_24:
        v17 = 0;
        ++v18;
        v22 = *(a5 + 24);
        if (v22)
        {
          goto LABEL_8;
        }
      }

      if (!ETLDLOADCommandParseMemoryDebugReadResponse())
      {
        _ETLDebugPrint();
        ETLDLOADCommandDumpCommand();
        HDLCFrameFree();
        if (v18 >= 7)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v33 = -1431655766;
      if (v36 == v12)
      {
        v25 = v23;
        v26 = v31;
        if (v23 != v35)
        {
          goto LABEL_27;
        }
      }

      else
      {
        _ETLDebugPrint();
        v25 = v23;
        v26 = v31;
        if (v23 != v35)
        {
LABEL_27:
          _ETLDebugPrint();
          v27 = *v26;
          if (!*v26)
          {
            goto LABEL_34;
          }

          goto LABEL_28;
        }
      }

      v27 = *v26;
      if (!*v26)
      {
        goto LABEL_34;
      }

LABEL_28:
      if (!v27(v26, v34, v25, &v33, 1, a7, 0) || v33 != v25)
      {
LABEL_34:
        _ETLDebugPrint();
        HDLCFrameFree();
        goto LABEL_35;
      }

      v12 = (v25 + v12);
      if (!--v21)
      {
        v39 = v12;
        (*a5)(v38);
        v21 = v29;
      }

      HDLCFrameFree();
      v18 = 0;
      v17 = 1;
      v22 = *(a5 + 24);
      if (v22)
      {
LABEL_8:
        if (*v22 == 1)
        {
          _ETLDebugPrint();
LABEL_35:
          v17 = 0;
          goto LABEL_36;
        }
      }
    }
  }

  _ETLDebugPrint();
  v17 = 0;
  return v17 & 1;
}

uint64_t ETLDLOADCoreDumpCaptureRecordFast(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, void, void, void, void, void, void), char a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v11 = *(a1 + 4);
  v10 = *(a1 + 8);
  v54[0] = *(a5 + 8);
  v54[1] = v11;
  v12 = v10 + v11;
  v54[2] = (v10 + v11);
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v52 = malloc((4 << a4));
  if (v52)
  {
    Response = 0;
    v14 = 1 << a4;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v57 = v15;
    v58 = v15;
    v16 = *(a5 + 16) * (((1 << a4) + v10 - 1) >> a4);
    v56 = v15;
    if (v16 < 0x64)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16 / 0x64;
    }

    v48 = v17;
    v51 = 1;
    v49 = a3;
    while (1)
    {
      v18 = *(a5 + 24);
      if (v18)
      {
        if (*v18 == 1)
        {
          break;
        }
      }

      v19 = v12 - v11;
      if (v12 == v11)
      {
        goto LABEL_83;
      }

      if (v12 - v11 >= v14)
      {
        v20 = v14;
      }

      else
      {
        v20 = v12 - v11;
      }

      if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
      {
        goto LABEL_82;
      }

      v21 = ETLDLOADCommandSend();
      HDLCFrameFree();
      if (!v21)
      {
        goto LABEL_82;
      }

      v22 = v20;
      Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
      if (Response)
      {
        goto LABEL_64;
      }

      _ETLDebugPrint();
      v23 = *(a5 + 24);
      if (v23 && (*v23 & 1) != 0)
      {
        break;
      }

      v24 = v12 - v11;
      if (v12 == v11)
      {
        goto LABEL_83;
      }

      if (v19 >= v14)
      {
        LOWORD(v19) = v14;
      }

      if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
      {
        goto LABEL_82;
      }

      v25 = ETLDLOADCommandSend();
      HDLCFrameFree();
      if (!v25)
      {
        goto LABEL_82;
      }

      v22 = v19;
      Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
      if (Response)
      {
        goto LABEL_64;
      }

      _ETLDebugPrint();
      v26 = *(a5 + 24);
      if (v26 && (*v26 & 1) != 0)
      {
        break;
      }

      v27 = v12 - v11;
      if (v12 == v11)
      {
        goto LABEL_83;
      }

      if (v24 >= v14)
      {
        LOWORD(v24) = v14;
      }

      if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
      {
        goto LABEL_82;
      }

      v28 = ETLDLOADCommandSend();
      HDLCFrameFree();
      if (!v28)
      {
        goto LABEL_82;
      }

      v22 = v24;
      Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
      if (Response)
      {
        goto LABEL_64;
      }

      _ETLDebugPrint();
      v29 = *(a5 + 24);
      if (v29 && (*v29 & 1) != 0)
      {
        break;
      }

      v30 = v12 - v11;
      if (v12 == v11)
      {
        goto LABEL_83;
      }

      if (v27 >= v14)
      {
        LOWORD(v27) = v14;
      }

      if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
      {
        goto LABEL_82;
      }

      v31 = ETLDLOADCommandSend();
      HDLCFrameFree();
      if (!v31)
      {
        goto LABEL_82;
      }

      v22 = v27;
      Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
      if (Response)
      {
        goto LABEL_64;
      }

      _ETLDebugPrint();
      v32 = *(a5 + 24);
      if (v32 && (*v32 & 1) != 0)
      {
        break;
      }

      v33 = v12 - v11;
      if (v12 == v11)
      {
        goto LABEL_83;
      }

      if (v30 >= v14)
      {
        LOWORD(v30) = v14;
      }

      if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
      {
        goto LABEL_82;
      }

      v34 = ETLDLOADCommandSend();
      HDLCFrameFree();
      if (!v34)
      {
        goto LABEL_82;
      }

      v22 = v30;
      Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
      if (Response)
      {
        goto LABEL_64;
      }

      _ETLDebugPrint();
      v35 = *(a5 + 24);
      if (v35 && (*v35 & 1) != 0)
      {
        break;
      }

      v36 = v12 - v11;
      if (v12 == v11)
      {
        goto LABEL_83;
      }

      if (v33 >= v14)
      {
        LOWORD(v33) = v14;
      }

      if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
      {
        goto LABEL_82;
      }

      v37 = ETLDLOADCommandSend();
      HDLCFrameFree();
      if (!v37)
      {
        goto LABEL_82;
      }

      v22 = v33;
      Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
      if (Response)
      {
        goto LABEL_64;
      }

      _ETLDebugPrint();
      v38 = *(a5 + 24);
      if (v38 && (*v38 & 1) != 0)
      {
        break;
      }

      if (v12 == v11)
      {
        goto LABEL_83;
      }

      if (v36 >= v14)
      {
        LOWORD(v36) = v14;
      }

      if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
      {
        goto LABEL_82;
      }

      v39 = ETLDLOADCommandSend();
      HDLCFrameFree();
      if (!v39)
      {
        goto LABEL_82;
      }

      v22 = v36;
      Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
      if (Response)
      {
LABEL_64:
        v53 = -1431655766;
        v40 = v49;
        v41 = *v49;
        if (!*v49)
        {
          break;
        }
      }

      else
      {
        _ETLDebugPrint();
        v43 = *(a5 + 24);
        if (v43 && (*v43 & 1) != 0)
        {
          break;
        }

        if (v12 == v11)
        {
          goto LABEL_83;
        }

        if (v12 - v11 >= v14)
        {
          v44 = v14;
        }

        else
        {
          v44 = v12 - v11;
        }

        if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
        {
          goto LABEL_82;
        }

        v45 = ETLDLOADCommandSend();
        HDLCFrameFree();
        if (!v45)
        {
          goto LABEL_82;
        }

        v22 = v44;
        v46 = ETLDLOADCommandReadMemoryDebugFastReadResponse();
        if ((v46 & 1) == 0)
        {
          break;
        }

        Response = v46;
        v53 = -1431655766;
        v40 = v49;
        v41 = *v49;
        if (!*v49)
        {
          break;
        }
      }

      if (!v41(v40, v52, v22, &v53, 1, a7, 0) || v53 != v22)
      {
        break;
      }

      v11 = (v22 + v11);
      v42 = v51 - 1;
      if (v51 == 1)
      {
        v55 = v11;
        (*a5)(v54);
        v42 = v48;
      }

      v51 = v42;
    }

    _ETLDebugPrint();
LABEL_82:
    Response = 0;
LABEL_83:
    free(v52);
  }

  else
  {
    _ETLDebugPrint();
    Response = 0;
  }

  return Response & 1;
}