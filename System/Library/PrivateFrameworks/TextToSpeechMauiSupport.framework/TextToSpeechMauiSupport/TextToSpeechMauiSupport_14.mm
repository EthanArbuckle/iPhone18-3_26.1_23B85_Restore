uint64_t DctIt_RW_FreeLastItem(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    OOCAllocator_Free(*a1, v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    result = edct_EntryFree_In_RWDCT(*a1, *(a1 + 8), v3, *(a1 + 24));
    if (result)
    {
      return result;
    }

    *(a1 + 16) = 0;
  }

  result = 0;
  *(a1 + 24) = 0;
  return result;
}

double edct_DctItOpen(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  if (a2[11] != 1)
  {
    if (a2[8])
    {
      if (DctIt_RO_Open(a1, a2, a3))
      {
        return result;
      }

      v8 = *a3;
      *(v8 + 40) = 0;
      if (DctIt_RO_HasEnded(v8))
      {
        return result;
      }
    }

    else
    {
      ++a2[10];
      if (DctIt_RW_Open(a1, a2, a3))
      {
        return result;
      }

      v9 = *a3;
      *(v9 + 40) = 0;
      if (DctIt_RW_HasEnded(v9))
      {
        return result;
      }
    }

    **a3 = a1;
    *(*a3 + 8) = a2;
    *(*a3 + 32) = 0;
    *(*a3 + 16) = 0;
    v10 = *a3;
    *(v10 + 24) = 0;
    *&result = 0x100000000;
    *(v10 + 44) = 0x100000000;
    return result;
  }

  err_GenerateErrorArg();
  return result;
}

uint64_t edct_DctItClose(uint64_t *a1)
{
  v2 = a1[1];
  if (*(v2 + 32))
  {
    result = DctIt_RO_FreeLastItem(a1);
    if (result)
    {
      return result;
    }

    goto LABEL_3;
  }

  --*(v2 + 40);
  result = DctIt_RW_FreeLastItem(a1);
  if (!result)
  {
    result = DctIt_RW_Close(a1);
    if (!result)
    {
LABEL_3:
      OOCAllocator_Free(*a1, a1);
      return 0;
    }
  }

  return result;
}

uint64_t edct_DctItReset(uint64_t a1)
{
  if (*(*(a1 + 8) + 32))
  {
    result = DctIt_RO_FreeLastItem(a1);
    if (!result)
    {
      result = DctIt_RO_Reset(a1);
      if (!result)
      {
        result = DctIt_RO_HasEnded(a1);
        if (!result)
        {
LABEL_9:
          result = 0;
          *(a1 + 40) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }
      }
    }
  }

  else
  {
    result = DctIt_RW_FreeLastItem(a1);
    if (!result)
    {
      result = DctIt_RW_Reset(a1);
      if (!result)
      {
        result = DctIt_RW_HasEnded(a1);
        if (!result)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t edct_DctItCurrent(uint64_t a1, void *a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  if (a2)
  {
    *(a1 + 52) = 1;
  }

  if (a3)
  {
    *(a1 + 56) = 1;
  }

  if (*(a1 + 40))
  {

    return err_GenerateErrorArg();
  }

  else
  {
    if (!*(a1 + 44))
    {
      if (*(*(a1 + 8) + 32))
      {
        result = DctIt_RO_Current(a1);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = DctIt_RW_Current(a1);
        if (result)
        {
          return result;
        }
      }
    }

    if (a2)
    {
      *a2 = *(a1 + 32);
    }

    if (a3)
    {
      *a3 = *(a1 + 16);
    }

    if (a4)
    {
      *a4 = *(a1 + 24);
    }

    if (a5)
    {
      *a5 = *(a1 + 48);
    }

    result = 0;
    *(a1 + 44) = 1;
  }

  return result;
}

uint64_t edct_DctItIncrement(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    if (*(*(a1 + 8) + 32))
    {
      result = DctIt_RO_FreeLastItem(a1);
      if (result)
      {
        return result;
      }

      result = DctIt_RO_Increment(a1);
      if (result)
      {
        return result;
      }

      result = DctIt_RO_HasEnded(a1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DctIt_RW_FreeLastItem(a1);
      if (result)
      {
        return result;
      }

      result = DctIt_RW_Increment(a1);
      if (result)
      {
        return result;
      }

      result = DctIt_RW_HasEnded(a1);
      if (result)
      {
        return result;
      }
    }

    result = 0;
    *(a1 + 44) = 0;
    return result;
  }

  return err_GenerateErrorArg();
}

uint64_t CDSObject_Con(void *a1, uint64_t a2, const void *a3, uint64_t a4, _DWORD *a5)
{
  result = CDSBase_Con(a1, a2, a3, a4, a5);
  if (!result)
  {
    *a1 = &__CDSObject;
    a1[19] = &unk_287EEAE58;
    a1[20] = &unk_287EEAE90;
    a1[21] = &unk_287EEAEB8;
    a1[22] = &unk_287EEAED0;
    a1[3] = &unk_287EEAE10;

    return __CDSObject_Init(a1, a2);
  }

  return result;
}

uint64_t __CDSObject_Init(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  *(a1 + 200) = 0;
  v4 = OOCAllocator_Calloc(a2, 1, 40, &v7);
  *(a1 + 184) = v4;
  v5 = v7;
  if (!v7)
  {
    *v4 = a1 + 144;
    return PNEW_TranscriptionTokenizer_Con(a2, a2, (a1 + 192));
  }

  return v5;
}

uint64_t CDSObject_Con2(void *a1, uint64_t a2, uint64_t a3)
{
  result = CDSBase_Con2(a1, a2, a3);
  if (!result)
  {
    *a1 = &__CDSObject;
    a1[19] = &unk_287EEAE58;
    a1[20] = &unk_287EEAE90;
    a1[21] = &unk_287EEAEB8;
    a1[22] = &unk_287EEAED0;
    a1[3] = &unk_287EEAE10;

    return __CDSObject_Init(a1, a2);
  }

  return result;
}

uint64_t CDSObject_Des(void *a1)
{
  v2 = a1[13];
  result = OOC_PlacementDeleteObject(v2, a1[24]);
  if (!result)
  {
    v4 = a1[23];
    if (v4)
    {
      OOCAllocator_Free(v2, v4);
    }

    return CDSBase_Des(a1);
  }

  return result;
}

uint64_t CDSObject_FetchInfo(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v4 = OOCAllocator_Calloc(*(a1 + 104), 1, 24, &v7);
  *a2 = v4;
  v5 = v7;
  if (!v7)
  {
    *v4 = a1 + 144;
    *(*a2 + 8) = CDSHash_GetNbrKeyEntries(a1);
    *(*a2 + 16) = CDSBase_GetNbrValueEntries(a1);
    return v7;
  }

  return v5;
}

uint64_t CDSObject_FetchKeys(uint64_t a1, uint64_t *a2, void *a3)
{
  v22 = 0;
  v20 = 0;
  v6 = *(a1 + 104);
  NbrKeyEntries = CDSHash_GetNbrKeyEntries(a1);
  v8 = NbrKeyEntries;
  *a3 = NbrKeyEntries;
  v9 = 8 * NbrKeyEntries;
  v10 = 0;
  if (NbrKeyEntries)
  {
    v11 = 0;
    while (1)
    {
      v12 = CDSHash_UnhashKey(a1) + 1;
      v13 = OOCAllocator_Calloc(v6, 2, v12, &v22);
      result = v22;
      if (v22)
      {
        break;
      }

      CDSHash_UnhashKey(a1);
      CDSHash_DecodeKey(a1, v12, v13);
      v20 = v13;
      v15 = utf16_utf8_byte_count(&v20);
      if (v15 == -1)
      {
        return err_GenerateErrorCharacter();
      }

      v9 += v15 + 1;
      if (v15 >= v10)
      {
        v10 = v15 + 1;
      }

      OOCAllocator_Free(v6, v13);
      if (v8 == ++v11)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v16 = OOCAllocator_Calloc(v6, 1, v9, &v22);
    *a2 = v16;
    result = v22;
    if (!v22)
    {
      v21 = v16 + 8 * v8;
      v17 = OOCAllocator_Calloc(v6, 2, v10, &v22);
      result = v22;
      if (!v22)
      {
        if (v8)
        {
          v18 = 0;
          while (1)
          {
            v19 = CDSHash_UnhashKey(a1);
            CDSHash_DecodeKey(a1, v19 + 1, v17);
            *(v16 + 8 * v18) = v21;
            v20 = v17;
            if (utf16_to_utf8(&v20, &v17[v19 + 1], &v21, v16 + v9))
            {
              return err_GenerateErrorCharacter();
            }

            if (v8 == ++v18)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          OOCAllocator_Free(v6, v17);
          return v22;
        }
      }
    }
  }

  return result;
}

uint64_t CDSObject_FetchTranscriptions(uint64_t a1, char *a2, uint64_t *a3, unint64_t *a4)
{
  v27 = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  FieldSeparator = CDSBase_GetFieldSeparator(a1);
  v9 = *(a1 + 104);
  result = utf8_str_to_utf16(v9, a2, &v30, &v29);
  if (!result)
  {
    v28 = 0;
    result = CDSBase_GetOutputString(a1, v30, 0, &v27, &v31, &v28, &v32);
    v33 = result;
    if (!result)
    {
      OOCAllocator_Free(v9, v30);
      v11 = v28;
      if (v28)
      {
        v12 = v27;
        v13 = OOCAllocator_Calloc(v9, v28, 24, &v33);
        result = v33;
        if (v33)
        {
          return result;
        }

        v25 = a4;
        v26 = v11;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = v31;
        do
        {
          if (v16 == v17 || FieldSeparator == *(v12 + v16))
          {
            v19 = v16 - v15;
            if (v16 > v15)
            {
              if (v14 >= v26)
              {
                result = err_GenerateErrorData();
                a4 = v25;
                v11 = v26;
                if (result)
                {
                  return result;
                }

                goto LABEL_25;
              }

              *(v13 + 24 * v14) = CDSBase_GetTranscriptionType(a1);
              v20 = (v12 + v15);
              if (*(a1 + 200))
              {
                v21 = *v20 == 35;
                if (*v20 == 35)
                {
                  v22 = v20 + 1;
                }

                else
                {
                  v22 = (v12 + v15);
                }

                *(v13 + 24 * v14 + 8) = v22;
                v19 = v19 - v21 - (v20[v19 - v21] == 35);
                v20 = v22;
              }

              else
              {
                *(v13 + 24 * v14 + 8) = v20;
              }

              v20[v19] = 0;
              *(v13 + 24 * v14++ + 16) = v19 + 1;
              v17 = v31;
            }

            v18 = v16 + 1;
            v15 = v16 + 1;
          }

          else
          {
            v18 = v16 + 1;
          }

          v23 = v16 >= v17;
          v16 = v18;
        }

        while (!v23);
        v11 = v26;
        if (v14 == v26)
        {
          result = v33;
        }

        else
        {
          result = err_GenerateErrorData();
        }

        a4 = v25;
        if (result)
        {
          return result;
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_25:
      result = TranscriptionTokenizer_FetchTranscriptions(*(a1 + 192), v13, v11, a3, a4);
      if (!result)
      {
        if (v13)
        {
          v24 = *(a1 + 104);
          OOCAllocator_Free(v24, v27);
          OOCAllocator_Free(v24, v13);
        }

        return lhi_LogPhoneticTranscriptions(*(a1 + 40), 0x3E62B2CD, a2, *a3, *a4);
      }
    }
  }

  return result;
}

uint64_t CDSObject_QueryInterface(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 > 1210932135)
  {
    if (a2 == 1210932136)
    {
      v3 = a1 + 168;
      goto LABEL_11;
    }

    if (a2 == 3420193956)
    {
      v3 = a1 + 176;
      goto LABEL_11;
    }

    return VoConObject_QueryInterface(a1, a2, a3);
  }

  if (a2 == 414531107)
  {
    v3 = a1 + 160;
    goto LABEL_11;
  }

  if (a2 != 414531721)
  {
    return VoConObject_QueryInterface(a1, a2, a3);
  }

  v3 = a1 + 152;
LABEL_11:
  *a3 = v3;
  return 0;
}

uint64_t CDSObject_ReturnInfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OOCAllocator_Free(*(a1 + 104), a2);
  }

  return 0;
}

uint64_t CDSObject_ReturnKeys(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OOCAllocator_Free(*(a1 + 104), a2);
  }

  return 0;
}

uint64_t PNEW_CDSObject_Con(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 208, &v14);
  result = v14;
  if (!v14)
  {
    result = CDSObject_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      v12[2] = a1;
      *a6 = v12;
    }
  }

  return result;
}

uint64_t PNEW_CDSObject_Con2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 208, &v10);
  result = v10;
  if (!v10)
  {
    result = CDSObject_Con2(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      v8[2] = a1;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t CDSStreamInfo_Con(void *a1, uint64_t a2, uint64_t a3)
{
  result = StreamInfo_Con(a1, a2, a3);
  if (!result)
  {
    *a1 = &__CDSStreamInfo;
    a1[3] = &unk_287EEAF10;
    a1[7] = &unk_287EEAF58;
    a1[13] = &unk_287EEB090;
    a1[14] = 0;
  }

  return result;
}

uint64_t CDSStreamInfo_Des(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2 || (result = (*(*v2 + 32))(v2), !result))
  {

    return StreamInfo_Des(a1);
  }

  return result;
}

uint64_t CDSStreamInfo_FetchValue(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = __CDSStreamInfo_BorrowCDSObject(a1, &v7);
  if (!result)
  {
    v4 = *(v7 + 168);
    v5 = *v4;
    v6 = v7 + 168 - *(v4 + 16);

    return v5(v6, a2);
  }

  return result;
}

uint64_t __CDSStreamInfo_BorrowCDSObject(uint64_t a1, void *a2)
{
  v4 = (a1 + 112);
  v3 = *(a1 + 112);
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = 0;
  result = _StreamInfo_BorrowBinBlockStreamReader(a1, &v7);
  if (!result)
  {
    result = PNEW_CDSObject_Con2(*(a1 + 80), *(a1 + 80), v7, v4);
    if (!result)
    {
      v3 = *v4;
LABEL_2:
      result = 0;
      *a2 = v3;
    }
  }

  return result;
}

uint64_t CDSStreamInfo_GetVersion(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  v5 = _StreamInfo_BorrowBinBlockStreamReader(a1, &v8);
  if (!v5)
  {
    v6 = (*(*v8 + 64))(v8 - *(*v8 + 224));
    *a2 = v6;
    *a3 = !BinBlockStreamReader_IsVersionAccepted(v6, 0x10000);
  }

  return v5;
}

uint64_t CDSStreamInfo_QueryInterface(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 != 1210932136)
  {
    return StreamInfo_QueryInterface(a1, a2, a3);
  }

  *a3 = a1 + 104;
  return 0;
}

uint64_t CDSStreamInfo_ReturnValue(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = __CDSStreamInfo_BorrowCDSObject(a1, &v7);
  if (!result)
  {
    v4 = *(v7 + 168);
    v5 = *(v4 + 8);
    v6 = v7 + 168 - *(v4 + 16);

    return v5(v6, a2);
  }

  return result;
}

uint64_t PNEW_CDSStreamInfo_Con(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 120, &v10);
  result = v10;
  if (!v10)
  {
    result = StreamInfo_Con(v8, a2, a3);
    if (result)
    {
      v10 = result;
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *v8 = &__CDSStreamInfo;
      v8[7] = &unk_287EEAF58;
      v8[13] = &unk_287EEB090;
      v8[14] = 0;
      v8[2] = a1;
      v8[3] = &unk_287EEAF10;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DictionaryStreamInfo_Con(void *a1, uint64_t a2, uint64_t a3)
{
  result = StreamInfo_Con(a1, a2, a3);
  if (!result)
  {
    *a1 = &__DictionaryStreamInfo;
    a1[3] = &unk_287EEB0D8;
    a1[7] = &unk_287EEB120;
    a1[13] = &unk_287EEB258;
    a1[14] = 0;
  }

  return result;
}

uint64_t DictionaryStreamInfo_Des(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (!v2 || (result = (*(*v2 + 32))(v2), !result))
  {

    return StreamInfo_Des(a1);
  }

  return result;
}

uint64_t DictionaryStreamInfo_FetchValue(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = __DictionaryStreamInfo_BorrowDictionary(a1, &v7);
  if (!result)
  {
    v4 = *(v7 + 104);
    v5 = *v4;
    v6 = v7 + 104 - *(v4 + 16);

    return v5(v6, a2);
  }

  return result;
}

uint64_t __DictionaryStreamInfo_BorrowDictionary(uint64_t a1, uint64_t *a2)
{
  v4 = (a1 + 112);
  v3 = *(a1 + 112);
  if (v3)
  {
    goto LABEL_2;
  }

  v7 = 0;
  result = _StreamInfo_BorrowBinBlockStreamReader(a1, &v7);
  if (!result)
  {
    result = PNEW_Dictionary_ConFromStreamReader(*(a1 + 80), *(a1 + 80), 0, v7, 1, v4);
    if (!result)
    {
      v3 = *v4;
LABEL_2:
      result = 0;
      *a2 = v3;
    }
  }

  return result;
}

uint64_t DictionaryStreamInfo_GetVersion(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  v5 = _StreamInfo_BorrowBinBlockStreamReader(a1, &v8);
  if (!v5)
  {
    v6 = (*(*v8 + 64))(v8 - *(*v8 + 224));
    *a2 = v6;
    *a3 = !BinBlockStreamReader_IsVersionAccepted(v6, 0x10000);
  }

  return v5;
}

uint64_t DictionaryStreamInfo_QueryInterface(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 != 1210932136)
  {
    return StreamInfo_QueryInterface(a1, a2, a3);
  }

  *a3 = a1 + 104;
  return 0;
}

uint64_t DictionaryStreamInfo_ReturnValue(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  result = __DictionaryStreamInfo_BorrowDictionary(a1, &v7);
  if (!result)
  {
    v4 = *(v7 + 104);
    v5 = *(v4 + 8);
    v6 = v7 + 104 - *(v4 + 16);

    return v5(v6, a2);
  }

  return result;
}

uint64_t PNEW_DictionaryStreamInfo_Con(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 120, &v10);
  result = v10;
  if (!v10)
  {
    result = StreamInfo_Con(v8, a2, a3);
    if (result)
    {
      v10 = result;
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *v8 = &__DictionaryStreamInfo;
      v8[7] = &unk_287EEB120;
      v8[13] = &unk_287EEB258;
      v8[14] = 0;
      v8[2] = a1;
      v8[3] = &unk_287EEB0D8;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DctArchive(uint64_t a1, char *__b, int *a3, int a4)
{
  v8 = *a3;
  if (__b)
  {
    cstdlib_memset(__b, 170, *a3);
  }

  v33[0] = 0;
  v33[1] = 0;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  __dst = 0;
  result = srvspi_MemblockInit(v33, v8, __b);
  if (result)
  {
    return result;
  }

  if (a4)
  {
    result = srvspi_MemblockAlign(v33, 4u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v33, 8, &__dst);
    if (result)
    {
      return result;
    }

    if (__dst)
    {
      cstdlib_memcpy(__dst, "_LHS", 4uLL);
    }
  }

  result = srvspi_MemblockAlign(v33, 4u);
  if (result)
  {
    return result;
  }

  result = srvspi_MemblockAlloc(v33, 24, &v32);
  if (result)
  {
    return result;
  }

  if (*a1)
  {
    v10 = cstdlib_strlen(*a1) + 1;
    HIDWORD(v30) = v10;
    result = srvspi_MemblockAlign(v33, 1u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v33, v10, &v31);
    if (result)
    {
      return result;
    }

    v11 = v31;
    if (v31)
    {
      v12 = *a1;
LABEL_21:
      cstdlib_strcpy(v11, v12);
    }
  }

  else
  {
    result = srvspi_MemblockAlign(v33, 1u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v33, 1, &v31);
    if (result)
    {
      return result;
    }

    v11 = v31;
    if (v31)
    {
      v12 = &g_pEmptyString;
      goto LABEL_21;
    }
  }

  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = cstdlib_strlen(v13);
    result = srvspi_MemblockAlign(v33, 1u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v33, v14 + 1, &v31);
    if (result)
    {
      return result;
    }

    v15 = v31;
    if (v31)
    {
      v16 = *(a1 + 8);
LABEL_31:
      cstdlib_strcpy(v15, v16);
    }
  }

  else
  {
    result = srvspi_MemblockAlign(v33, 1u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockAlloc(v33, 1, &v31);
    if (result)
    {
      return result;
    }

    v15 = v31;
    if (v31)
    {
      v16 = &g_pEmptyString;
      goto LABEL_31;
    }
  }

  NbrSubDct = GetNbrSubDct(a1);
  HIDWORD(v30) = 4 * NbrSubDct;
  result = srvspi_MemblockAlign(v33, 4u);
  if (result)
  {
    return result;
  }

  result = srvspi_MemblockAlloc(v33, 4 * NbrSubDct, &v29);
  if (result)
  {
    return result;
  }

  v27 = 0;
  result = DctGetBufferType(a1, &v27);
  if (result)
  {
    return result;
  }

  v18 = *(a1 + 56);
  result = srvspi_MemblockGetUsed(v33, &v30);
  if (result)
  {
    return result;
  }

  if (!v18)
  {
LABEL_44:
    result = srvspi_MemblockGetUsed(v33, &v30 + 1);
    if (result)
    {
      return result;
    }

    v21 = v32;
    if (v32)
    {
      *v32 = v27;
      v22 = HIDWORD(v30);
      *(v21 + 1) = HIDWORD(v30);
      *(v21 + 3) = *(a1 + 20);
      v21[5] = NbrSubDct;
      *a3 = v22;
      if (a4 != 1)
      {
        return 0;
      }

      v21[1] = v22 - 8;
    }

    else
    {
      v22 = HIDWORD(v30);
      *a3 = HIDWORD(v30);
      if (a4 != 1)
      {
        return 0;
      }
    }

    if (__b)
    {
      *(__b + 1) = v22;
      v23 = (v22 - 8);
      if (v23)
      {
        v24 = &__b[v23 + 8];
        v25 = __b + 8;
        v26 = 235;
        do
        {
          result = 0;
          *v25++ += v26;
          v26 += 111;
        }

        while (v25 < v24);
        return result;
      }
    }

    return 0;
  }

  v19 = v27;
  while (1)
  {
    result = srvspi_MemblockAlign(v33, 4u);
    if (result)
    {
      return result;
    }

    result = srvspi_MemblockGetUsed(v33, &v30 + 1);
    if (result)
    {
      return result;
    }

    v20 = v29;
    if (v29)
    {
      *v29 = HIDWORD(v30) - v30;
      v29 = v20 + 1;
    }

    result = SubDctArchive(v18, v19, v33);
    if (result)
    {
      return result;
    }

    v18 = *(v18 + 136);
    if (!v18)
    {
      goto LABEL_44;
    }
  }
}

uint64_t DctGetBufferType(uint64_t a1, int *a2)
{
  *a2 = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if (*(v2 + 32))
      {
        if (!v3)
        {
          v3 = 7;
LABEL_12:
          *a2 = v3;
          goto LABEL_13;
        }

        if (v3 != 7)
        {
          return err_GenerateErrorData();
        }
      }

      else
      {
        if (!v3)
        {
          v3 = 6;
          goto LABEL_12;
        }

        if (v3 != 6)
        {
          return err_GenerateErrorData();
        }
      }

LABEL_13:
      v2 = *(v2 + 136);
      if (!v2)
      {
        return 0;
      }
    }
  }

  *a2 = 6;
  return 0;
}

uint64_t SubDctArchive(uint64_t a1, int a2, int *a3)
{
  v57 = 0;
  v58[0] = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  result = srvspi_MemblockGetUsed(a3, v58);
  if (!result)
  {
    if (a2 == 7)
    {
      HIDWORD(v58[0]) = 52;
      result = srvspi_MemblockAlign(a3, 4u);
      if (result)
      {
        return result;
      }

      v7 = HIDWORD(v58[0]);
      v8 = &v56;
    }

    else
    {
      HIDWORD(v58[0]) = 48;
      result = srvspi_MemblockAlign(a3, 4u);
      if (result)
      {
        return result;
      }

      v7 = HIDWORD(v58[0]);
      v8 = &v55;
    }

    result = srvspi_MemblockAlloc(a3, v7, v8);
    if (!result)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        __dst[0] = 0;
        HIDWORD(v58[0]) = cstdlib_strlen(v9) + 1;
        result = srvspi_MemblockAlign(a3, 1u);
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockAlloc(a3, SHIDWORD(v58[0]), __dst);
        if (result)
        {
          return result;
        }

        if (__dst[0])
        {
          cstdlib_strcpy(__dst[0], *(a1 + 24));
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a1 + 32);
      if (v11)
      {
        __dst[0] = 0;
        HIDWORD(v58[0]) = cstdlib_strlen(v11) + 1;
        result = srvspi_MemblockAlign(a3, 1u);
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockAlloc(a3, SHIDWORD(v58[0]), __dst);
        if (result)
        {
          return result;
        }

        if (__dst[0])
        {
          cstdlib_strcpy(__dst[0], *(a1 + 32));
        }

        v12 = 1;
        v13 = 6;
      }

      else
      {
        v12 = 0;
        v13 = 7;
      }

      if (v13 == a2)
      {
        return err_GenerateErrorData();
      }

      if (*(a1 + 40))
      {
        __dst[0] = 0;
        HIDWORD(v58[0]) = 129;
        result = srvspi_MemblockAlign(a3, 1u);
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockAlloc(a3, SHIDWORD(v58[0]), __dst);
        if (result)
        {
          return result;
        }

        if (__dst[0])
        {
          cstdlib_memcpy(__dst[0], *(a1 + 40), 0x81uLL);
        }

        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      v15 = *(a1 + 48);
      if (v15)
      {
        __dst[0] = 0;
        HIDWORD(v58[0]) = cstdlib_strlen(v15) + 1;
        result = srvspi_MemblockAlign(a3, 1u);
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockAlloc(a3, SHIDWORD(v58[0]), __dst);
        if (result)
        {
          return result;
        }

        if (__dst[0])
        {
          cstdlib_strcpy(__dst[0], *(a1 + 48));
        }

        v16 = 1;
      }

      else
      {
        v16 = 0;
      }

      HIDWORD(v58[0]) = 4 * *a1 + 4;
      result = srvspi_MemblockAlign(a3, 4u);
      if (!result)
      {
        result = srvspi_MemblockAlloc(a3, SHIDWORD(v58[0]), &v52);
        if (!result)
        {
          result = srvspi_MemblockGetUsed(a3, &v57 + 1);
          if (!result)
          {
            result = DICTITT_Init(v53, (a1 + 56));
            if (!result)
            {
              v17 = 0;
              while (DWORD2(v53[0]) || v54 != -1)
              {
                do
                {
                  DICTITT_Current(v53, __dst);
                }

                while (v48 == 1);
                v19 = cstdlib_strlen(__dst[0]);
                if (v54 == -1)
                {
                  result = BINTREEITT_Inc(v53 + 2);
                }

                else
                {
                  result = 0;
                }

                v17 += v19 + 1;
                if (result)
                {
                  return result;
                }
              }

              result = ARRAY_Flush(&v53[1] + 8);
              if (!result)
              {
                HIDWORD(v58[0]) = 1;
                result = srvspi_MemblockAlign(a3, 1u);
                if (!result)
                {
                  result = srvspi_MemblockAlloc(a3, v17, &v49);
                  if (!result)
                  {
                    result = srvspi_MemblockGetUsed(a3, v58 + 1);
                    if (!result)
                    {
                      v20 = HIDWORD(v58[0]);
                      v21 = HIDWORD(v57);
                      HIDWORD(v58[0]) = 4 * *a1 + 4;
                      result = srvspi_MemblockAlign(a3, 4u);
                      if (!result)
                      {
                        result = srvspi_MemblockAlloc(a3, SHIDWORD(v58[0]), &v51);
                        if (!result)
                        {
                          result = srvspi_MemblockGetUsed(a3, &v57);
                          if (!result)
                          {
                            result = srvspi_MemblockAlign(a3, 1u);
                            if (!result)
                            {
                              result = srvspi_MemblockAlloc(a3, 1, &v50);
                              if (!result)
                              {
                                if (v50)
                                {
                                  *v50 = -86;
                                }

                                v41 = v49;
                                result = DICTITT_Init(v53, (a1 + 56));
                                if (!result)
                                {
                                  if (!DWORD2(v53[0]) && v54 == -1)
                                  {
LABEL_68:
                                    result = ARRAY_Flush(&v53[1] + 8);
                                    if (!result)
                                    {
                                      result = srvspi_MemblockGetUsed(a3, v58 + 1);
                                      if (!result)
                                      {
                                        if (v51)
                                        {
                                          *v51 = HIDWORD(v58[0]) - v57;
                                        }

                                        v22 = HIDWORD(v58[0]);
                                        v23 = v57;
                                        if (v52 && v41 && v49)
                                        {
                                          *v52 = v41 - v49;
                                        }

                                        v24 = v20 - v21;
                                        v25 = v22 - v23;
                                        v26 = v56;
                                        if (v56)
                                        {
                                          result = 0;
                                          *v56 = HIDWORD(v58[0]) - LODWORD(v58[0]);
                                          *(v26 + 1) = *(a1 + 8);
                                          v26[4] = *(a1 + 16);
                                          v26[5] = v10;
                                          v26[6] = v12;
                                          v26[7] = v14;
                                          v26[8] = v16;
                                          *(v26 + 9) = *a1;
                                          v26[11] = v24;
                                          v26[12] = v25;
                                        }

                                        else
                                        {
                                          v26 = v55;
                                          if (!v55)
                                          {
                                            return 0;
                                          }

                                          result = 0;
                                          *v55 = HIDWORD(v58[0]) - LODWORD(v58[0]);
                                          *(v26 + 1) = *(a1 + 8);
                                          v26[4] = *(a1 + 16);
                                          v26[5] = v10;
                                          v26[6] = v14;
                                          v26[7] = v16;
                                          *(v26 + 4) = *a1;
                                          v26[10] = v24;
                                          v26[11] = v25;
                                        }

                                        v26[1] = 0;
                                        return result;
                                      }
                                    }

                                    return result;
                                  }

                                  v42 = 0;
                                  while (1)
                                  {
                                    v45 = 0;
                                    DICTITT_Current(v53, __dst);
                                    v38 = __dst[1];
                                    v39 = v47;
                                    v44 = v48;
                                    if (!v42)
                                    {
                                      v28 = __dst[0];
                                      v29 = v52;
                                      v30 = v49;
                                      if (v52)
                                      {
                                        v31 = v41 == 0;
                                      }

                                      else
                                      {
                                        v31 = 1;
                                      }

                                      if (!v31 && v49 != 0)
                                      {
                                        *v52 = v41 - v49;
                                        v52 = v29 + 1;
                                      }

                                      if (v30 && v41)
                                      {
                                        __src = v28;
                                        v36 = cstdlib_strlen(v28) + 1;
                                        cstdlib_memcpy(v41, __src, v36);
                                        v41 += v36;
                                      }

                                      result = srvspi_MemblockGetUsed(a3, v58 + 1);
                                      if (result)
                                      {
                                        return result;
                                      }

                                      v33 = v51;
                                      if (v51)
                                      {
                                        if (v44 == 1)
                                        {
                                          *v51 = v57 - HIDWORD(v58[0]);
                                          v51 = v33 + 1;
                                          HIDWORD(v58[0]) = v39;
                                          v43 = 1;
LABEL_83:
                                          __dst[0] = 0;
                                          result = srvspi_MemblockAlign(a3, 2u);
                                          if (result)
                                          {
                                            return result;
                                          }

                                          result = srvspi_MemblockAlloc(a3, 2, __dst);
                                          if (result)
                                          {
                                            return result;
                                          }

                                          if (__dst[0])
                                          {
                                            *__dst[0] = WORD2(v58[0]);
                                          }

                                          v40 = 0;
                                          goto LABEL_104;
                                        }

                                        *v51 = HIDWORD(v58[0]) - v57;
                                        v51 = v33 + 1;
                                      }
                                    }

                                    v27 = v42;
                                    if (v44 == 1)
                                    {
                                      v27 = 1;
                                    }

                                    HIDWORD(v58[0]) = v39;
                                    v43 = v27;
                                    if (v27)
                                    {
                                      goto LABEL_83;
                                    }

                                    v43 = 0;
                                    v40 = 1;
LABEL_104:
                                    result = srvspi_MemblockAlign(a3, 1u);
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockAlloc(a3, SHIDWORD(v58[0]), &v45);
                                    if (result)
                                    {
                                      return result;
                                    }

                                    if (v45)
                                    {
                                      cstdlib_memcpy(v45, v38, HIDWORD(v58[0]));
                                    }

                                    if ((v40 & 1) == 0)
                                    {
                                      result = srvspi_MemblockAlign(a3, 2u);
                                      if (result)
                                      {
                                        return result;
                                      }
                                    }

                                    v34 = v43;
                                    if (!v44)
                                    {
                                      v34 = 0;
                                    }

                                    v42 = v34;
                                    if (v54 == -1)
                                    {
                                      result = BINTREEITT_Inc(v53 + 2);
                                      if (result)
                                      {
                                        return result;
                                      }

                                      v35 = v54 != -1;
                                    }

                                    else
                                    {
                                      v35 = 1;
                                    }

                                    if (!DWORD2(v53[0]) && !v35)
                                    {
                                      goto LABEL_68;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DctFromArchive(char **a1, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = 0;
  __src = 0;
  __s = 0;
  v11 = 0;
  v12 = 0;
  v16 = a2;
  result = srvspi_MemblockInit(v15, *(a2 + 4), a2);
  if (!result)
  {
    result = srvspi_MemblockAlign(v15, 4u);
    if (!result)
    {
      result = srvspi_MemblockRead(v15, 24, &v16);
      if (!result)
      {
        v4 = *v16;
        if ((*v16 & 0xFFFFFE) != 6 || *(v16 + 8))
        {
          return err_GenerateErrorData();
        }

        *(a1 + 20) = *(v16 + 12);
        result = srvspi_MemblockAlign(v15, 1u);
        if (!result)
        {
          result = srvspi_MemblockRead(v15, 0, &__s);
          if (!result)
          {
            v5 = cstdlib_strlen(__s);
            result = srvspi_MemblockRead(v15, v5 + 1, &__s);
            v17 = result;
            if (!result)
            {
              if (v5)
              {
                v6 = OOCAllocator_Malloc(a1[6], v5 + 1, &v17);
                *a1 = v6;
                result = v17;
                if (v17)
                {
                  return result;
                }

                cstdlib_strcpy(v6, __s);
              }

              else
              {
                *a1 = 0;
              }

              result = srvspi_MemblockAlign(v15, 1u);
              v17 = result;
              if (!result)
              {
                result = srvspi_MemblockRead(v15, 0, &__src);
                v17 = result;
                if (!result)
                {
                  v7 = cstdlib_strlen(__src);
                  result = srvspi_MemblockRead(v15, v7 + 1, &__src);
                  v17 = result;
                  if (!result)
                  {
                    if (v7)
                    {
                      v8 = OOCAllocator_Malloc(a1[6], v7 + 1, &v17);
                      a1[1] = v8;
                      result = v17;
                      if (v17)
                      {
                        return result;
                      }

                      cstdlib_strcpy(v8, __src);
                    }

                    else
                    {
                      a1[1] = 0;
                    }

                    result = srvspi_MemblockAlign(v15, 4u);
                    v17 = result;
                    if (!result)
                    {
                      result = srvspi_MemblockRead(v15, (4 * *(v16 + 20)), &v12);
                      v17 = result;
                      if (!result)
                      {
                        result = srvspi_MemblockAlign(v15, 4u);
                        v17 = result;
                        if (!result)
                        {
                          result = srvspi_MemblockRead(v15, 0, &v11);
                          v17 = result;
                          if (!result)
                          {
                            if (*(v16 + 20))
                            {
                              v9 = 0;
                              do
                              {
                                v10 = 0;
                                result = CreateSubDct(a1, &v10);
                                v17 = result;
                                if (result)
                                {
                                  break;
                                }

                                result = srvspi_MemblockAlign(v15, 4u);
                                v17 = result;
                                if (result)
                                {
                                  break;
                                }

                                result = SubDctFromArchive(v10, v4 & 0xFFFFFF, v15, a1[6]);
                                v17 = result;
                                if (result)
                                {
                                  break;
                                }

                                v12 += 4;
                                ++v9;
                              }

                              while (v9 < *(v16 + 20));
                            }

                            else
                            {
                              return 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t SubDctFromArchive(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v43 = 0;
  v44 = 0;
  v38 = 0;
  result = srvspi_MemblockAlign(a3, 4u);
  v45 = result;
  if (!result)
  {
    v42 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    if (a2 == 6)
    {
      result = srvspi_MemblockRead(a3, 48, &v44);
      v45 = result;
      if (result)
      {
        return result;
      }

      v9 = 0;
      v10 = v44;
    }

    else
    {
      result = srvspi_MemblockRead(a3, 52, &v43);
      v45 = result;
      if (result)
      {
        return result;
      }

      v10 = 0;
      v9 = v43;
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    v12 = v11[1];
    *(a1 + 8) = v11[2];
    *(a1 + 16) = v11[4];
    *(a1 + 12) = v11[3];
    v13 = v10 + 8;
    if (!v10)
    {
      v13 = v9 + 9;
    }

    *a1 = *v13;
    v14 = v10 + 9;
    if (!v10)
    {
      v14 = v9 + 10;
    }

    *(a1 + 4) = *v14;
    *(a1 + 24) = 0;
    result = srvspi_MemblockAlign(a3, 1u);
    v45 = result;
    if (!result)
    {
      if (v11[5] == 1)
      {
        __s = 0;
        result = srvspi_MemblockRead(a3, 0, &__s);
        v45 = result;
        if (result)
        {
          return result;
        }

        v15 = cstdlib_strlen(__s) + 1;
        result = srvspi_MemblockRead(a3, v15, &__s);
        v45 = result;
        if (result)
        {
          return result;
        }

        v16 = OOCAllocator_Malloc(a4, v15, &v45);
        *(a1 + 24) = v16;
        result = v45;
        if (v45)
        {
          return result;
        }

        cstdlib_strcpy(v16, __s);
      }

      *(a1 + 32) = 0;
      result = srvspi_MemblockAlign(a3, 1u);
      v45 = result;
      if (result)
      {
        return result;
      }

      if (!v10 && v9[6] == 1)
      {
        __s = 0;
        result = srvspi_MemblockRead(a3, 0, &__s);
        v45 = result;
        if (result)
        {
          return result;
        }

        v17 = cstdlib_strlen(__s) + 1;
        result = srvspi_MemblockRead(a3, v17, &__s);
        v45 = result;
        if (result)
        {
          return result;
        }

        v18 = OOCAllocator_Malloc(a4, v17, &v45);
        *(a1 + 32) = v18;
        result = v45;
        if (v45)
        {
          return result;
        }

        cstdlib_strcpy(v18, __s);
      }

      *(a1 + 40) = 0;
      result = srvspi_MemblockAlign(a3, 1u);
      v45 = result;
      if (result)
      {
        return result;
      }

      v19 = v10 + 6;
      if (!v10)
      {
        v19 = v9 + 7;
      }

      if (*v19 == 1)
      {
        __s = 0;
        result = srvspi_MemblockRead(a3, 0, &__s);
        v45 = result;
        if (result)
        {
          return result;
        }

        result = srvspi_MemblockRead(a3, 129, &__s);
        v45 = result;
        if (result)
        {
          return result;
        }

        v20 = OOCAllocator_Malloc(a4, 129, &v45);
        *(a1 + 40) = v20;
        result = v45;
        if (v45)
        {
          return result;
        }

        cstdlib_memcpy(v20, __s, 0x80uLL);
        *(*(a1 + 40) + 128) = 0;
      }

      *(a1 + 48) = 0;
      v45 = srvspi_MemblockAlign(a3, 1u);
      if (v10)
      {
        if (!v10[7])
        {
          goto LABEL_44;
        }
      }

      else if (!v9[8])
      {
LABEL_44:
        result = DICT_Init(a1 + 56, a4, 10000, 50000);
        v45 = result;
        if (!result)
        {
          result = srvspi_MemblockAlign(a3, 4u);
          v45 = result;
          if (!result)
          {
            result = srvspi_MemblockRead(a3, (4 * *a1 + 4), &v41);
            v45 = result;
            if (!result)
            {
              v23 = v12 ? 2 : 1;
              result = srvspi_MemblockAlign(a3, v23);
              v45 = result;
              if (!result)
              {
                v24 = v10 + 10;
                if (!v10)
                {
                  v24 = v9 + 11;
                }

                result = srvspi_MemblockRead(a3, *v24, &v39);
                v45 = result;
                if (!result)
                {
                  result = srvspi_MemblockAlign(a3, 4u);
                  v45 = result;
                  if (!result)
                  {
                    result = srvspi_MemblockRead(a3, (4 * *a1 + 4), &v40);
                    v45 = result;
                    if (!result)
                    {
                      result = srvspi_MemblockGetUsed(a3, &v42);
                      v45 = result;
                      if (!result)
                      {
                        result = srvspi_MemblockAlign(a3, 1u);
                        v45 = result;
                        if (!result)
                        {
                          result = srvspi_MemblockRead(a3, 1, 0);
                          v45 = result;
                          if (!result)
                          {
                            if (*a1)
                            {
                              for (i = 0; i < *a1; ++i)
                              {
                                __s = 0;
                                v36 = -1;
                                if (v12)
                                {
                                  v35 = 0;
                                  result = utf16_str_to_utf8(a4, (v39 + *v41), &v38, &v35);
                                  v45 = result;
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                else
                                {
                                  v26 = v38;
                                  v27 = cstdlib_strlen((v39 + *v41));
                                  v28 = OOCAllocator_Realloc(a4, v26, v27 + 1, &v45);
                                  v38 = v28;
                                  result = v45;
                                  if (v45)
                                  {
                                    return result;
                                  }

                                  cstdlib_strcpy(v28, (v39 + *v41));
                                }

                                v29 = *v40;
                                v30 = v40[1];
                                if (v30 >= 0)
                                {
                                  v31 = v40[1];
                                }

                                else
                                {
                                  v31 = -v30;
                                }

                                if (v29 < 0)
                                {
                                  v34 = -v29;
                                  result = srvspi_MemblockAlign(a3, 2u);
                                  v45 = result;
                                  if (result)
                                  {
                                    return result;
                                  }

                                  v33 = v34;
                                  while (v33 < v31)
                                  {
                                    v35 = 0;
                                    result = srvspi_MemblockRead(a3, 2, &v35);
                                    v45 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockAlign(a3, 1u);
                                    v45 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockRead(a3, *v35, &__s);
                                    v45 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = DICT_Add(a1 + 56, v38, __s, *v35, &v36);
                                    v45 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockAlign(a3, 2u);
                                    v45 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    result = srvspi_MemblockGetUsed(a3, &v34);
                                    v45 = result;
                                    if (result)
                                    {
                                      return result;
                                    }

                                    v33 = v34 - v42;
                                    v34 -= v42;
                                  }
                                }

                                else
                                {
                                  LODWORD(v35) = 0;
                                  result = srvspi_MemblockAlign(a3, 1u);
                                  v45 = result;
                                  if (result)
                                  {
                                    return result;
                                  }

                                  result = srvspi_MemblockGetUsed(a3, &v35);
                                  v45 = result;
                                  if (result)
                                  {
                                    return result;
                                  }

                                  LODWORD(v35) = v35 - v42;
                                  v32 = v31 - v35;
                                  result = srvspi_MemblockRead(a3, v32, &__s);
                                  v45 = result;
                                  if (result)
                                  {
                                    return result;
                                  }

                                  result = DICT_Add(a1 + 56, v38, __s, v32, &v36);
                                  v45 = result;
                                  if (result)
                                  {
                                    return result;
                                  }
                                }

                                ++v40;
                                ++v41;
                              }
                            }

                            OOCAllocator_Free(a4, v38);
                            return v45;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        return result;
      }

      __s = 0;
      result = srvspi_MemblockRead(a3, 0, &__s);
      v45 = result;
      if (result)
      {
        return result;
      }

      v21 = cstdlib_strlen(__s) + 1;
      result = srvspi_MemblockRead(a3, v21, &__s);
      v45 = result;
      if (result)
      {
        return result;
      }

      v22 = OOCAllocator_Malloc(a4, v21, &v45);
      *(a1 + 48) = v22;
      result = v45;
      if (v45)
      {
        return result;
      }

      cstdlib_strcpy(v22, __s);
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t DctDecryptArchive(const void **a1, int *a2)
{
  v4 = cstdlib_memcmp(*a1, "_LHS", 4uLL);
  v5 = *a1;
  if (!v4)
  {
    v7 = (v5 + 2);
    if (v5[1] != 8)
    {
      v8 = v7 + (v5[1] - 8);
      v9 = 235;
      v10 = v5 + 2;
      do
      {
        *v10++ -= v9;
        v9 += 111;
      }

      while (v10 < v8);
      v5 = *a1;
    }

    cstdlib_memcpy(v5, "-LHS", 4uLL);
    goto LABEL_10;
  }

  if (!cstdlib_memcmp(v5, "-LHS", 4uLL))
  {
    v7 = *a1 + 8;
LABEL_10:
    *a1 = v7;
    v6 = 1;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:
  *a2 = v6;
  return 0;
}

uint64_t _DTQuestion_Con(void *a1, uint64_t a2)
{
  *a1 = &__DTQuestion;
  a1[1] = a2;
  return 0;
}

uint64_t DTHypothesisList_Con(void *a1, uint64_t a2, uint64_t a3)
{
  result = PtrList_Con(a1, a2, 1u, 1);
  if (!result)
  {
    *a1 = &__DTHypothesisList;
    a1[5] = a3;
  }

  return result;
}

uint64_t PNEW_DTHypothesisList_Con(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 48, &v10);
  result = v10;
  if (!v10)
  {
    result = PtrList_Con(v8, a2, 1u, 1);
    if (result)
    {
      v10 = result;
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *v8 = &__DTHypothesisList;
      v8[5] = a3;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTGraphemeBuffer_Con(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__DTGraphemeBuffer;
    *(a1 + 8) = a2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = a3;
    *(a1 + 40) = 0;

    return _DTGraphemeBuffer_CreateGPTable(a1);
  }

  return result;
}

uint64_t _DTGraphemeBuffer_CreateGPTable(uint64_t a1)
{
  v23 = 0;
  v2 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 24), 8 * *(*(a1 + 16) + 4) + 8, &v23);
  *(a1 + 24) = v2;
  v3 = v23;
  if (!v23)
  {
    v4 = *(a1 + 16);
    v6 = *v4;
    v5 = v4 + 6;
    v7 = *(a1 + 16) + v6;
    *v2 = v5;
    v8 = 1;
    *(a1 + 40) = 1;
    if (*(*(a1 + 16) + 4) >= 2u)
    {
      v9 = 1;
      v8 = 1;
      v10 = 1;
      while (!*v5)
      {
LABEL_7:
        *(*(a1 + 24) + 8 * v8) = ++v5;
        if (**(*(a1 + 24) + 8 * v8) != **(*(a1 + 24) + 8 * v8 - 8))
        {
          *(a1 + 40) = ++v9;
        }

        v8 = ++v10;
        if (*(*(a1 + 16) + 4) <= v10)
        {
          v12 = 16 * v9;
          goto LABEL_12;
        }
      }

      while (v5 < v7)
      {
        if (!*++v5)
        {
          goto LABEL_7;
        }
      }

      return err_GenerateErrorData();
    }

    v12 = 16;
LABEL_12:
    if (*v5)
    {
      while (v5 < v7)
      {
        if (!*++v5)
        {
          goto LABEL_15;
        }
      }

      return err_GenerateErrorData();
    }

LABEL_15:
    *(*(a1 + 24) + 8 * v8) = v5 + 1;
    v14 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 32), v12, &v23);
    *(a1 + 32) = v14;
    v3 = v23;
    if (v23)
    {
      *(a1 + 40) = 0;
    }

    else
    {
      v17 = *(a1 + 16);
      v16 = *(a1 + 24);
      *v14 = *v16;
      *(v14 + 8) = 0;
      v18 = *(v17 + 4);
      if (v18 >= 2)
      {
        v19 = 0;
        for (i = 1; i < v18; ++i)
        {
          v21 = v16[i];
          if (*v21 != **(v14 + 16 * v19))
          {
            v22 = v14 + 16 * ++v19;
            *v22 = v21;
            *(v22 + 8) = i;
          }
        }
      }

      lhstdlib_qsort(v14, *(a1 + 40), 0x10u, __DTGraphemeBuffer_Compare);
      return v23;
    }
  }

  return v3;
}

uint64_t DTGraphemeBuffer_Des(uint64_t a1)
{
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    OOCAllocator_Free(*(a1 + 8), v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    OOCAllocator_Free(*(a1 + 8), v3);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  return Object_Des();
}

uint64_t DTGraphemeBuffer_FirstGraphemeID(uint64_t a1, uint64_t a2)
{
  v4 = -1;
  v5[0] = a2;
  v5[1] = 0;
  v2 = lhstdlib_bsearch(v5, *(a1 + 32), *(a1 + 40), 0x10uLL, __DTGraphemeBuffer_Compare, &v4);
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 255;
  }
}

uint64_t __DTGraphemeBuffer_Compare(char **a1, char **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t PNEW_DTGraphemeBuffer_Con(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 48, &v10);
  result = v10;
  if (!v10)
  {
    result = DTGraphemeBuffer_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTQuestionGPBin_Con(void *a1, uint64_t a2)
{
  result = _DTQuestion_Con(a1, a2);
  if (!result)
  {
    *a1 = &__DTQuestionGPBin;
  }

  return result;
}

uint64_t DTQuestionGPBin_IsTrue(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 1) + a2;
  if (v5 < 0)
  {
    return 0;
  }

  result = 0;
  if (a3 && v5 < a4)
  {
    v7 = *(v4 + 2);
    if (*(v4 + 2))
    {
      v8 = 0;
      v9 = *(a3 + v5);
      v10 = v4 + 3;
      v11 = v7 - 1;
      while (1)
      {
        v12 = (v11 + v8) >> 1;
        v13 = *(v10 + v12);
        if (v9 >= v13)
        {
          if (v9 <= v13)
          {
            return 1;
          }

          v8 = v12 + 1;
        }

        else
        {
          v11 = v12 - 1;
        }

        if (v8 > v11)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t PNEW_DTQuestionGPBin_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionGPBin;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DTQuestionPP_Con(void *a1, uint64_t a2)
{
  result = _DTQuestion_Con(a1, a2);
  if (!result)
  {
    *a1 = &__DTQuestionPP;
  }

  return result;
}

uint64_t DTQuestionPP_IsTrue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 1);
  v8 = v7 + a6;
  if (v7 + a6 < 0)
  {
    return 0;
  }

  result = 0;
  if (!a5 || (v7 & 0x80000000) == 0)
  {
    return result;
  }

  v10 = *(v6 + 2);
  if (!*(v6 + 2))
  {
    return 0;
  }

  v11 = *(a5 + 2 * v8);
  v12 = (v6 + 3);
  while (1)
  {
    v13 = *v12++;
    if (v13 == v11)
    {
      break;
    }

    if (!--v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PNEW_DTQuestionPP_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionPP;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DTQuestionSG_Con(void *a1, uint64_t a2)
{
  result = _DTQuestion_Con(a1, a2);
  if (!result)
  {
    *a1 = &__DTQuestionSG;
  }

  return result;
}

BOOL DTQuestionSG_IsTrue(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  result = 0;
  v6 = *(v4 + 1) + a2;
  if (v6 >= 0 && a3 && v6 < a4)
  {
    return *(a3 + v6) == *(v4 + 2);
  }

  return result;
}

uint64_t PNEW_DTQuestionSG_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionSG;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DTNodeBuffer_Con(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = a2 + 4;
  return 0;
}

uint64_t PNEW_DTNodeBuffer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 16, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    v5[1] = a2 + 4;
    *a3 = v5;
  }

  return result;
}

uint64_t DTQuestionGP_Con(void *a1, uint64_t a2)
{
  result = _DTQuestion_Con(a1, a2);
  if (!result)
  {
    *a1 = &__DTQuestionGP;
  }

  return result;
}

uint64_t DTQuestionGP_IsTrue(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 1) + a2;
  if (v5 < 0)
  {
    return 0;
  }

  result = 0;
  if (!a3 || v5 >= a4)
  {
    return result;
  }

  v7 = *(v4 + 2);
  if (!*(v4 + 2))
  {
    return 0;
  }

  v8 = *(a3 + v5);
  v9 = (v4 + 3);
  while (1)
  {
    v10 = *v9++;
    if (v10 == v8)
    {
      break;
    }

    if (!--v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PNEW_DTQuestionGP_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionGP;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t addExpScore(int a1, int a2)
{
  LOWORD(v2) = a1 - a2;
  v3 = (a1 - a2);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (v3 < 0)
  {
    LOWORD(v2) = a2 - a1;
  }

  v5 = v3 <= 254;
  if (v3 <= 254)
  {
    v6 = v4;
  }

  else
  {
    v6 = a2;
  }

  v2 = v2;
  if (!v5)
  {
    v2 = 254;
  }

  return (v6 + sc_logAddTable[v2]);
}

uint64_t DTPhonemeBuffer_Con(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = a2 + 2;
  return 0;
}

uint64_t PNEW_DTPhonemeBuffer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 16, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    v5[1] = a2 + 2;
    *a3 = v5;
  }

  return result;
}

uint64_t PNEW_DTNode_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 8, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    *a3 = v5;
  }

  return result;
}

uint64_t DTTree_Con(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__DTTree;
    a1[1] = a2;
    result = PNEW_DTBuffer_Con(a2, a3, a1 + 2);
    if (!result)
    {
      result = PNEW_DTNodeBuffer_Con(a2, *a1[2] + *(*a1[2] + 32), a1 + 3);
      if (!result)
      {
        result = PNEW_DTLeafBuffer_Con(a2, *a1[2] + *(*a1[2] + 36), a1 + 4);
        if (!result)
        {
          result = PNEW_DTPPBuffer_Con(a2, *a1[2] + *(*a1[2] + 44), a1 + 5);
          if (!result)
          {
            result = PNEW_DTPhonemeBuffer_Con(a2, *a1[2] + *(*a1[2] + 48), a1 + 6);
            if (!result)
            {
              result = PNEW_DTGraphemeBuffer_Con(a2, a2, *a1[2] + *(*a1[2] + 40), a1 + 7);
              if (!result)
              {
                result = PNEW_DTQuestionBuffer_Con(a2, a2, *a1[2] + *(*a1[2] + 52), a1 + 8);
                if (!result)
                {
                  v7 = *a1[2];
                  a1[9] = v7 + *(v7 + 28);
                  v8 = *(v7 + 56);
                  if (v8)
                  {
                    result = PNEW_DTGraphemeFallback_Con(a2, v7 + v8, a1 + 10);
                    if (result)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    a1[10] = 0;
                  }

                  result = PNEW_DTNode_Con(a2, 0, a1 + 11);
                  if (!result)
                  {
                    a1[12] = 0;

                    return _DTTree_CreateStartNodeIdTable(a1);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _DTTree_CreateStartNodeIdTable(uint64_t *a1)
{
  v16 = 0;
  v2 = *(*(a1[7] + 16) + 4);
  v3 = OOCAllocator_Realloc(a1[1], a1[12], 2 * v2, &v16);
  a1[12] = v3;
  v4 = v16;
  if (!v16)
  {
    v15 = 0;
    if (v2)
    {
      v5 = 0;
      v6 = a1[3];
      v7 = a1[11];
      do
      {
        *(v3 + 2 * v5) = 0;
        v8 = *(v6 + 8);
        *v7 = v8;
        v9 = *v8;
        if (v9 != 0xFFFF)
        {
          for (i = a1[8]; *(*(i + 32) + v9) == 4; i = a1[8])
          {
            v11 = DTQuestionBuffer_BorrowQuestion(i, v9);
            if ((*(*v11 + 24))(v11, 0, &v15, 1, 0, 0))
            {
              v7 = a1[11];
              v3 = a1[12];
              v12 = *(*v7 + 2);
              v5 = v15;
            }

            else
            {
              v5 = v15;
              v7 = a1[11];
              v3 = a1[12];
              v12 = *(v3 + 2 * v15) + 1;
            }

            *(v3 + 2 * v15) = v12;
            v6 = a1[3];
            v13 = *(v6 + 8);
            *v7 = v13 + 4 * v12;
            v9 = *(v13 + 4 * v12);
            if (v9 == 0xFFFF)
            {
              break;
            }
          }
        }

        v15 = ++v5;
      }

      while (v2 > v5);
      return v16;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t DTTree_Des(uint64_t *a1)
{
  result = OOC_PlacementDeleteObject(a1[1], a1[8]);
  if (!result)
  {
    result = OOC_PlacementDeleteObject(a1[1], a1[7]);
    if (!result)
    {
      result = PDELETE_DTPhonemeBuffer(a1[1], a1[6]);
      if (!result)
      {
        result = PDELETE_DTPPBuffer(a1[1], a1[5]);
        if (!result)
        {
          result = PDELETE_DTLeafBuffer(a1[1], a1[4]);
          if (!result)
          {
            result = PDELETE_DTNodeBuffer(a1[1], a1[3]);
            if (!result)
            {
              result = PDELETE_DTBuffer(a1[1], a1[2]);
              if (!result)
              {
                result = PDELETE_DTNode(a1[1], a1[11]);
                if (!result)
                {
                  v3 = a1[10];
                  if (!v3 || (result = PDELETE_DTGraphemeFallback(a1[1], v3), !result))
                  {
                    v4 = a1[12];
                    if (v4)
                    {
                      OOCAllocator_Free(a1[1], v4);
                    }

                    return Object_Des();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t DTTree_Traverse(uint64_t a1, uint64_t a2, _BYTE *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = *(*(a1 + 96) + 2 * a3[a2]);
  v15 = (*(*(a1 + 24) + 8) + 4 * v14);
  **(a1 + 88) = v15;
  v16 = *v15;
  if (v16 != 0xFFFF)
  {
    do
    {
      v17 = DTQuestionBuffer_BorrowQuestion(*(a1 + 64), v16);
      if ((*(*v17 + 24))(v17, a2, a3, a4, a5, a6))
      {
        v18 = *(a1 + 88);
        LOWORD(v14) = *(*v18 + 2);
      }

      else
      {
        LOWORD(v14) = v14 + 1;
        v18 = *(a1 + 88);
      }

      v19 = *(*(a1 + 24) + 8);
      v20 = 4 * v14;
      *v18 = v19 + v20;
      v16 = *(v19 + v20);
    }

    while (v16 != 0xFFFF);
    v15 = (v19 + v20);
  }

  PLeaf = DTLeafBuffer_GetPLeaf(*(a1 + 32), v15[1]);
  *a7 = PLeaf;
  if (((*(PLeaf + 1) & 2) == 0 || !*(a1 + 80)) && ((*(PLeaf + 1) & 1) == 0 || (*(PLeaf + 1) & 0xFC | (*(PLeaf + 2) << 8)) != 4 || !*(a1 + 80)))
  {
    return 0;
  }

  return _DTTree_GraphemeFallbackTraverse(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t _DTTree_GraphemeFallbackTraverse(uint64_t a1, uint64_t a2, _BYTE *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a3[a2];
  result = DTGraphemeFallback_GetFallback(*(a1 + 80), v16, &v16);
  v17 = result;
  if (!result)
  {
    v15 = OOCAllocator_Malloc(*(a1 + 8), a4, &v17);
    result = v17;
    if (!v17)
    {
      cstdlib_memcpy(v15, a3, a4);
      *(v15 + a2) = v16;
      result = DTTree_Traverse(a1, a2, v15, a4, a5, a6, a7);
      v17 = result;
      if (!result)
      {
        OOCAllocator_Free(*(a1 + 8), v15);
        return v17;
      }
    }
  }

  return result;
}

uint64_t PNEW_DTTree_Con(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t **a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 104, &v10);
  result = v10;
  if (!v10)
  {
    result = DTTree_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

unint64_t DTGraphemeFallback_GetFallback(void *a1, char a2, _BYTE *a3)
{
  v7 = 0;
  v5 = *a1 + 2;
  v4 = **a1;
  v8[0] = a2;
  v8[1] = 0;
  result = lhstdlib_bsearch(v8, v5, v4, 2uLL, compareFallback, &v7);
  if (result)
  {
    *a3 = *(result + 1);
    return 1;
  }

  return result;
}

uint64_t compareFallback(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t PNEW_DTGraphemeFallback_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 8, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    *a3 = v5;
  }

  return result;
}

uint64_t DTBuffer_Con(void *a1, _DWORD *a2)
{
  *a1 = a2;
  if (a2[2] == 4)
  {
    if (a2[3] != 21586)
    {
      *a1 = 0;
      return err_GenerateErrorData();
    }

    v2 = a2[1];
    if (a2[8] > v2)
    {
      *a1 = 0;
      return err_GenerateErrorData();
    }

    if (a2[9] > v2)
    {
      *a1 = 0;
      return err_GenerateErrorData();
    }

    if (a2[11] > v2 || a2[10] > v2)
    {
      *a1 = 0;
      return err_GenerateErrorData();
    }

    if (a2[13] > v2)
    {
      *a1 = 0;
      return err_GenerateErrorData();
    }

    return 0;
  }

  else
  {
    *a1 = 0;
    return err_GenerateErrorVersion();
  }
}

uint64_t PNEW_DTBuffer_Con(uint64_t a1, _DWORD *a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 8, &v8);
  result = v8;
  if (!v8)
  {
    result = DTBuffer_Con(v6, a2);
    v8 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *a3 = v6;
    }
  }

  return result;
}

int8x16_t DTPostProcessor_Con(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!Object_Con(a1))
  {
    *a1 = &__DTPostProcessor;
    *(a1 + 8) = a2;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    v7 = *(a3 + 72);
    *(a1 + 56) = *(v7 + 16);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 16) = *(a3 + 40);
    result = vextq_s8(*(v7 + 28), *(v7 + 28), 8uLL);
    *(a1 + 80) = result;
  }

  return result;
}

uint64_t DTPostProcessor_Des(uint64_t a1)
{
  _DTPostProcessor_Clear(a1);

  return Object_Des();
}

uint64_t _DTPostProcessor_Clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 40);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*(v1 + 32) + 8 * i);
        if (v5)
        {
          OOCAllocator_Free(*(v1 + 8), v5);
          v3 = *(v1 + 40);
        }
      }

      v2 = *(v1 + 32);
    }

    result = OOCAllocator_Free(*(v1 + 8), v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 48);
  if (v6)
  {
    result = OOCAllocator_Free(*(v1 + 8), v6);
    *(v1 + 48) = 0;
  }

  *(v1 + 40) = 0;
  *(v1 + 96) = 0;
  *(v1 + 100) = -1;
  *(v1 + 104) = 1;
  return result;
}

uint64_t DTPostProcessor_CreateNBest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  PhonemeSeq = 0;
  v20 = 0;
  v21 = 0;
  __s2 = 0;
  _DTPostProcessor_Clear(a1);
  *(a1 + 40) = 0;
  if (PtrList_NrItems(a2) < a3)
  {
    a3 = PtrList_NrItems(a2);
  }

  if (a3)
  {
    *(a1 + 32) = OOCAllocator_Calloc(*(a1 + 8), a3, 8, &PhonemeSeq);
    if (!PhonemeSeq)
    {
      *(a1 + 48) = OOCAllocator_Calloc(*(a1 + 8), a3, 4, &PhonemeSeq);
      if (!PhonemeSeq && *(a1 + 40) < a3)
      {
        v6 = 0;
        do
        {
          if (v6 >= PtrList_NrItems(a2))
          {
            break;
          }

          v7 = *(*(a2 + 40) + 16);
          if (*(v7 + PtrList_ItemN(a2, v6) * *(*(a2 + 40) + 24) + 4) == -1)
          {
            break;
          }

          v8 = PtrList_ItemN(a2, v6);
          v9 = (*(*(a2 + 40) + 16) + *(*(a2 + 40) + 24) * v8);
          PhonemeSeq = _DTPostProcessor_GetPhonemeSeq(a1, v9 + 6, *v9, &v21, &v20);
          if (PhonemeSeq)
          {
            return PhonemeSeq;
          }

          if (v20)
          {
            v10 = v21;
            PhonemeSeq = _DTPostProcessor_GetTransFromPhnId(a1, v21, v20, &__s2);
            if (PhonemeSeq)
            {
              return PhonemeSeq;
            }

            if (*(a1 + 60) || (v16 = __s2, !_DTPostProcessor_IsDoubleTranscription(a1, __s2)))
            {
              v11 = *(a1 + 80);
              v12 = *(a1 + 84);
              v13 = (v12 + v11 * *(*(*(a2 + 40) + 16) + *(*(a2 + 40) + 24) * v8 + 4)) / 0x3E8;
              if (*(a1 + 88))
              {
                v14 = _DTPostProcessor_KeepVariant(a1, (v12 + v11 * *(*(*(a2 + 40) + 16) + *(*(a2 + 40) + 24) * v8 + 4)) / 0x3E8);
                v15 = __s2;
                if (!v14)
                {
                  OOCAllocator_Free(*(a1 + 8), __s2);
                  if (!v10)
                  {
                    return PhonemeSeq;
                  }

LABEL_23:
                  OOCAllocator_Free(*(a1 + 8), v10);
                  return PhonemeSeq;
                }
              }

              else
              {
                v15 = __s2;
              }

              v17 = *(a1 + 40);
              *(*(a1 + 32) + 8 * v17) = v15;
              *(*(a1 + 48) + 4 * v17) = v13;
              *(a1 + 40) = v17 + 1;
            }

            else
            {
              OOCAllocator_Free(*(a1 + 8), v16);
              __s2 = 0;
            }
          }

          ++v6;
        }

        while (*(a1 + 40) < a3);
        v10 = v21;
        if (!v21)
        {
          return PhonemeSeq;
        }

        goto LABEL_23;
      }
    }
  }

  return PhonemeSeq;
}

uint64_t _DTPostProcessor_GetPhonemeSeq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v22 = 0;
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v10 += *(*(*(a1 + 16) + 8) + *(a2 + 2 * v11++));
    }

    while (a3 != v11);
    if (v10)
    {
      *a4 = OOCAllocator_Realloc(*(a1 + 8), *a4, v10, &v22);
      result = v22;
      if (v22)
      {
        return result;
      }

      v13 = 0;
      v14 = 0;
      *a5 = 0;
      v15 = *(a1 + 16);
      while (1)
      {
        v16 = *(a2 + 2 * v14);
        v17 = (*(v15 + 8) + v16);
        v19 = *v17;
        v18 = v17 + 1;
        if (v19)
        {
          break;
        }

LABEL_17:
        if (++v14 == a3)
        {
          return v22;
        }
      }

      v20 = 0;
      while (1)
      {
        if (*(a1 + 56))
        {
          v21 = *a4;
        }

        else
        {
          v21 = *a4;
          if (v13 && *(v21 + v13 - 1) == v18[v20])
          {
            goto LABEL_12;
          }
        }

        *(v21 + v13) = v18[v20];
        v13 = *a5 + 1;
        *a5 = v13;
        v15 = *(a1 + 16);
        v16 = *(a2 + 2 * v14);
LABEL_12:
        if (++v20 >= *(*(v15 + 8) + v16))
        {
          goto LABEL_17;
        }
      }
    }
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t _DTPostProcessor_GetTransFromPhnId(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v17 = 0;
  if (!a3)
  {
    goto LABEL_8;
  }

  v5 = a3;
  v6 = a2;
  v8 = 0;
  v9 = a2;
  v10 = a3;
  do
  {
    v11 = *v9++;
    v8 += cstdlib_strlen((*(*(a1 + 24) + 8) + v11));
    --v10;
  }

  while (v10);
  if (v8)
  {
    v12 = OOCAllocator_Malloc(*(a1 + 8), v8 + 1, &v17);
    *a4 = v12;
    result = v17;
    if (!v17)
    {
      do
      {
        v14 = *(*(a1 + 24) + 8);
        v15 = *v6++;
        v16 = cstdlib_strlen((v14 + v15));
        cstdlib_memcpy(v12, (v14 + v15), v16);
        v12 += v16;
        --v5;
      }

      while (v5);
      *v12 = 0;
      return v17;
    }
  }

  else
  {
LABEL_8:
    result = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t _DTPostProcessor_IsDoubleTranscription(uint64_t a1, char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  v4 = 0;
  while (cstdlib_strcmp(*(*(a1 + 32) + 8 * v4), __s2))
  {
    if (++v4 >= *(a1 + 40))
    {
      return 0;
    }
  }

  return 1;
}

BOOL _DTPostProcessor_KeepVariant(uint64_t a1, int a2)
{
  if (*(a1 + 104))
  {
    *(a1 + 96) = a2;
  }

  else
  {
    v4 = addExpScore(a2, *(a1 + 96));
    *(a1 + 96) = v4;
    if (v4 <= *(a1 + 88))
    {
      result = *(a1 + 92) + *(a1 + 100) > a2;
      goto LABEL_5;
    }
  }

  result = 1;
LABEL_5:
  *(a1 + 100) = a2;
  *(a1 + 104) = 0;
  return result;
}

uint64_t _DTPostProcessor_InitVariantPruning(uint64_t result)
{
  *(result + 96) = 0;
  *(result + 100) = -1;
  *(result + 104) = 1;
  return result;
}

void PNEW_DTPostProcessor_Con(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 112, &v10);
  if (!v10)
  {
    DTPostProcessor_Con(v8, a2, a3);
    v10 = v9;
    if (v9)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
    }

    else
    {
      *a4 = v8;
    }
  }
}

uint64_t DTHypothesisPool_Compare(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (v3 + v4 * *a2);
  v6 = *(v5 + 2);
  v7 = v3 + v4 * *a3;
  v8 = *(v7 + 4);
  if (v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 > v8)
  {
    return 1;
  }

  v10 = *v5;
  if (v10 < *v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v10 > *v7)
  {
    return 1;
  }

  if (v10)
  {
    v11 = v5 + 3;
    v12 = (v7 + 6);
    while (1)
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      v16 = v13 > v15;
      if (v13 < v15)
      {
        break;
      }

      if (v16)
      {
        return 1;
      }

      result = 0;
      if (!--v10)
      {
        return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t DTHypothesisPool_Con(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = ((2 - 2 * a3) & 2) + 2 * a3 + 6;
    *(a1 + 32) = 0;
    *a1 = &__DTHypothesisPool;
    *(a1 + 8) = a2;

    return PNEW_PtrStack_Con(a2, a2, 1, (a1 + 40));
  }

  return result;
}

uint64_t DTHypothesisPool_Des(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    OOCAllocator_Free(a1[1], v2);
  }

  result = OOC_PlacementDeleteObject(a1[1], a1[5]);
  if (!result)
  {

    return Object_Des();
  }

  return result;
}

uint64_t DTHypothesisPool_FetchHypoID(uint64_t a1, _DWORD *a2)
{
  v14 = 0;
  v4 = *(a1 + 40);
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(*(v4 + 32) + 8 * (v5 - 1));
    result = PtrStack_Remove(v4);
    if (result)
    {
      return result;
    }

    v8 = (v6 - 1);
    v9 = *(a1 + 16) + *(a1 + 24) * v8;
    *v9 = 0;
    *(v9 + 4) = 0;
    goto LABEL_10;
  }

  v8 = *(a1 + 32);
  v10 = (v8 + 1);
  v11 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 16), *(a1 + 24) * v10, &v14);
  result = v14;
  if (v14)
  {
    return result;
  }

  *(a1 + 16) = v11;
  v12 = (*(a1 + 32) + 1);
  *(a1 + 32) = v12;
  if (v12 <= v10)
  {
LABEL_9:
    v13 = v11 + *(a1 + 24) * v8;
    *v13 = 0;
    *(v13 + 4) = 0;
    result = v14;
LABEL_10:
    *a2 = v8;
    return result;
  }

  while (1)
  {
    result = PtrStack_Put(*(a1 + 40), v12);
    v14 = result;
    if (result)
    {
      return result;
    }

    if (v10 >= --v12)
    {
      v11 = *(a1 + 16);
      goto LABEL_9;
    }
  }
}

uint64_t DTHypothesisPool_Resize(uint64_t a1, unsigned int a2)
{
  *(a1 + 24) = ((2 - 2 * a2) & 2) + 2 * a2 + 6;
  v3 = *(a1 + 16);
  if (v3)
  {
    OOCAllocator_Free(*(a1 + 8), v3);
  }

  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  v4 = *(a1 + 40);
  if (!*(v4 + 24))
  {
    return 0;
  }

  do
  {
    v5 = PtrStack_Remove(v4);
    v4 = *(a1 + 40);
  }

  while (*(v4 + 24));
  return v5;
}

uint64_t PNEW_DTHypothesisPool_Con(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 48, &v10);
  result = v10;
  if (!v10)
  {
    result = DTHypothesisPool_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTQuestionBuffer_Con(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  result = Object_Con(a1);
  v15 = result;
  if (!result)
  {
    *a1 = &__DTQuestionBuffer;
    a1[1] = a2;
    a1[2] = a3;
    a1[4] = a3 + 4;
    a1[3] = OOCAllocator_Calloc(a2, 9, 8, &v15);
    result = v15;
    if (!v15)
    {
      result = PNEW_DTQuestionPP_Con(a2, 0, &v14);
      v15 = result;
      if (!result)
      {
        *(a1[3] + 8) = v14;
        result = PNEW_DTQuestionWB_Con(a2, 0, &v12);
        v15 = result;
        if (!result)
        {
          *(a1[3] + 16) = v12;
          result = PNEW_DTQuestionGP_Con(a2, 0, &v13);
          v15 = result;
          if (!result)
          {
            *(a1[3] + 24) = v13;
            result = PNEW_DTQuestionTG_Con(a2, 0, &v11);
            v15 = result;
            if (!result)
            {
              *(a1[3] + 32) = v11;
              result = PNEW_DTQuestionSG_Con(a2, 0, &v10);
              v15 = result;
              if (!result)
              {
                *(a1[3] + 40) = v10;
                result = PNEW_DTQuestionSP_Con(a2, 0, &v9);
                v15 = result;
                if (!result)
                {
                  *(a1[3] + 48) = v9;
                  result = PNEW_DTQuestionPPBin_Con(a2, 0, &v8);
                  v15 = result;
                  if (!result)
                  {
                    *(a1[3] + 56) = v8;
                    result = PNEW_DTQuestionGPBin_Con(a2, 0, &v7);
                    if (!result)
                    {
                      *(a1[3] + 64) = v7;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t DTQuestionBuffer_Des(uint64_t *a1)
{
  v2 = 0;
  a1[2] = 0;
  while (1)
  {
    v3 = *(a1[3] + v2);
    if (v3)
    {
      result = OOC_PlacementDeleteObject(a1[1], v3);
      if (result)
      {
        break;
      }
    }

    v2 += 8;
    if (v2 == 72)
    {
      OOCAllocator_Free(a1[1], a1[3]);

      return Object_Des();
    }
  }

  return result;
}

uint64_t DTQuestionBuffer_BorrowQuestion(uint64_t a1, unsigned int a2)
{
  v2 = (*(a1 + 32) + a2);
  result = *(*(a1 + 24) + 8 * *v2);
  *(result + 8) = v2;
  return result;
}

uint64_t PNEW_DTQuestionBuffer_Con(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 40, &v10);
  result = v10;
  if (!v10)
  {
    result = DTQuestionBuffer_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTSearch_Con(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__DTSearch;
    *(a1 + 8) = a2;
    *(a1 + 16) = a3;
    result = PNEW_DTHypothesisPool_Con(a2, a2, 0, (a1 + 24));
    if (!result)
    {
      result = PNEW_DTHypothesisList_Con(a2, a2, *(a1 + 24), (a1 + 32));
      if (!result)
      {
        result = PNEW_DTHypothesisList_Con(a2, a2, *(a1 + 24), (a1 + 40));
        v10 = result;
        if (!result)
        {
          *(a1 + 64) = 0;
          *(a1 + 72) = 0;
          v7 = *(*(a1 + 16) + 72);
          v8 = *v7;
          *(a1 + 48) = *v7;
          *(a1 + 50) = v8;
          v9 = *(v7 + 2);
          *(a1 + 52) = *(v7 + 1);
          *(a1 + 56) = v9;
          LOWORD(v7) = v7[6];
          *(a1 + 60) = v7;
          *(a1 + 62) = v7;
          *(a1 + 80) = 0;
          if (v9)
          {
            *(a1 + 80) = OOCAllocator_Realloc(a2, 0, 4 * v9, &v10);
            return v10;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DTSearch_Des(uint64_t *a1)
{
  result = _DTSearch_ClearHypothesis(a1, a1[5]);
  if (!result)
  {
    result = _DTSearch_ClearHypothesis(a1, a1[4]);
    if (!result)
    {
      result = OOC_PlacementDeleteObject(a1[1], a1[4]);
      if (!result)
      {
        result = OOC_PlacementDeleteObject(a1[1], a1[5]);
        if (!result)
        {
          result = OOC_PlacementDeleteObject(a1[1], a1[3]);
          if (!result)
          {
            result = __DTSearch_LeafPoolClear(a1);
            if (!result)
            {
              a1[2] = 0;
              a1[4] = 0;
              a1[5] = 0;
              v3 = a1[10];
              if (v3)
              {
                OOCAllocator_Free(a1[1], v3);
              }

              return Object_Des();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _DTSearch_ClearHypothesis(uint64_t a1, uint64_t a2)
{
  if (PtrList_NrItems(a2))
  {
    v4 = 0;
    while (1)
    {
      v5 = PtrList_ItemN(a2, v4);
      result = DTHypothesisPool_ReturnHypoID(*(a1 + 24), v5);
      if (result)
      {
        break;
      }

      if (++v4 >= PtrList_NrItems(a2))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    PtrList_RemoveAll(a2);
    return 0;
  }

  return result;
}

uint64_t __DTSearch_LeafPoolClear(uint64_t *a1)
{
  v2 = a1 + 8;
  v1 = a1[8];
  if (!v1)
  {
    return 0;
  }

  if (a1[9])
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      result = DTLeaf_Con((*v2 + v4), 0);
      if (result)
      {
        break;
      }

      ++v5;
      v4 += 8;
      if (v5 >= a1[9])
      {
        v1 = *v2;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    OOCAllocator_Free(a1[1], v1);
    result = 0;
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

unint64_t DTSearch_BeamSearch(uint64_t a1, _BYTE *a2, size_t a3, void *a4)
{
  v38 = 0;
  result = _DTSearch_LeafPoolResize(a1, 1uLL);
  if (result)
  {
    return result;
  }

  result = _DTSearch_ClearHypothesis(a1, *(a1 + 32));
  if (result)
  {
    return result;
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_19;
  }

  result = DTHypothesisPool_Resize(*(a1 + 24), a3);
  if (result)
  {
    return result;
  }

  v9 = *(a1 + 48);
  *(a1 + 50) = v9;
  if (!v9)
  {
    LOWORD(v9) = *(a1 + 60);
  }

  *(a1 + 62) = v9;
  result = DTTree_Traverse(*(a1 + 16), 0, a2, a3, 0, 0, *(a1 + 64));
  if (result)
  {
    return result;
  }

  if ((*(**(a1 + 64) + 1) & 2) != 0)
  {
LABEL_20:
    if (a3 != 1)
    {
      if (a3 <= 2)
      {
        v16 = 2;
      }

      else
      {
        v16 = a3;
      }

      v17 = 1;
      do
      {
        v19 = *(a1 + 32);
        v18 = *(a1 + 40);
        *(a1 + 32) = v18;
        *(a1 + 40) = v19;
        result = _DTSearch_ClearHypothesis(a1, v18);
        if (result)
        {
          return result;
        }

        v20 = PtrList_NrItems(*(a1 + 40));
        result = _DTSearch_LeafPoolResize(a1, v20);
        if (result)
        {
          return result;
        }

        if (PtrList_NrItems(*(a1 + 40)))
        {
          v24 = 0;
          v25 = 0;
          do
          {
            v26 = (*(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * PtrList_ItemN(*(a1 + 40), v25));
            result = DTTree_Traverse(*(a1 + 16), v17, a2, a3, v26 + 6, *v26, (*(a1 + 64) + v24));
            if (result)
            {
              return result;
            }

            ++v25;
            v24 += 8;
          }

          while (v25 < PtrList_NrItems(*(a1 + 40)));
        }

        v37 = v16;
        if (*(a1 + 52))
        {
          _DTSearch_GetHistogramPruningThreshold(a1, *(a1 + 40), v21, v22, v23, (a1 + 50));
        }

        if (PtrList_NrItems(*(a1 + 40)))
        {
          v27 = 0;
LABEL_37:
          v28 = 0;
          v29 = PtrList_ItemN(*(a1 + 40), v27);
          v30 = *(*(a1 + 64) + 8 * v27);
          while (1)
          {
            v31 = *(v30 + v28);
            if (!_DTSearch_HypoWillBePruned(a1, *(a1 + 32), *(v30 + v28)))
            {
              result = DTHypothesisPool_FetchHypoID(*(a1 + 24), &v38);
              if (result)
              {
                return result;
              }

              v32 = *(a1 + 24);
              cstdlib_memcpy((*(v32 + 16) + *(v32 + 24) * v38), (*(v32 + 16) + *(v32 + 24) * v29), *(v32 + 24));
              v33 = v38;
              v34 = (*(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * v38);
              *(v34 + 2) += v31;
              if (*(*(*(a1 + 64) + 8 * v27) + v28 + 1) >= 4u)
              {
                v35 = *v34;
                *(v34 + v35 + 3) = *(*(*(a1 + 64) + 8 * v27) + v28 + 1) >> 2;
                *v34 = v35 + 1;
                v33 = v38;
              }

              result = _DTSearch_AddHypothesis(a1, *(a1 + 32), v33);
              if (result)
              {
                return result;
              }
            }

            v30 = *(*(a1 + 64) + 8 * v27);
            v36 = *(v30 + v28 + 1);
            v28 += 3;
            if (v36)
            {
              if (++v27 < PtrList_NrItems(*(a1 + 40)))
              {
                goto LABEL_37;
              }

              break;
            }
          }
        }

        ++v17;
        v16 = v37;
      }

      while (v17 != v37);
    }

    result = _DTSearch_ClearHypothesis(a1, *(a1 + 40));
    if (result)
    {
      return result;
    }

    PtrList_UdSort(*(a1 + 32), __DTSearch_HypoCompare, *(a1 + 24));
    v15 = PtrList_NrItems(*(a1 + 32));
LABEL_19:
    result = 0;
    *a4 = v15;
    return result;
  }

  result = DTHypothesisPool_FetchHypoID(*(a1 + 24), &v38);
  if (!result)
  {
    v10 = 0;
    do
    {
      v11 = (**(a1 + 64) + v10);
      v12 = v38;
      v13 = *(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * v38;
      *(v13 + 4) = *v11;
      v14 = *(v11 + 1);
      if (v14 >= 4)
      {
        *(v13 + 6) = v14 >> 2;
        *v13 = 1;
        v12 = v38;
      }

      result = _DTSearch_AddHypothesis(a1, *(a1 + 32), v12);
      if (result)
      {
        break;
      }

      if (*(**(a1 + 64) + v10 + 1))
      {
        goto LABEL_20;
      }

      result = DTHypothesisPool_FetchHypoID(*(a1 + 24), &v38);
      v10 += 3;
    }

    while (!result);
  }

  return result;
}

uint64_t _DTSearch_LeafPoolResize(uint64_t *a1, unint64_t a2)
{
  result = 0;
  v8 = 0;
  if (a1[9] < a2)
  {
    a1[8] = OOCAllocator_Realloc(a1[1], a1[8], 8 * a2, &v8);
    result = v8;
    if (!v8)
    {
      v5 = a1[9];
      v6 = a2 - v5;
      if (a2 <= v5)
      {
LABEL_7:
        result = 0;
        a1[9] = a2;
      }

      else
      {
        v7 = 8 * v5;
        while (1)
        {
          result = DTLeaf_Con((a1[8] + v7), 0);
          v8 = result;
          if (result)
          {
            break;
          }

          v7 += 8;
          if (!--v6)
          {
            goto LABEL_7;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _DTSearch_AddHypothesis(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (PtrList_NrItems(a2))
  {
    v6 = *(a1 + 24);
    v7 = *(v6 + 16);
    v8 = *(v7 + *(v6 + 24) * a3 + 4);
    v9 = PtrList_ItemN(a2, 0);
    v10 = *(a1 + 24);
    if (v8 == 0xFFFF || (v11 = *(v7 + v9 * v10[3] + 4), *(a1 + 50)) && *(a1 + 50) + v11 < v8)
    {

      return DTHypothesisPool_ReturnHypoID(v10, a3);
    }

    v14 = a2;
    v13 = a3;
    if (v8 >= v11)
    {

      return PtrList_Append(a2, a3);
    }
  }

  else
  {
    v13 = a3;
    v14 = a2;
  }

  return PtrList_Prepend(v14, v13);
}

uint64_t _DTSearch_GetHistogramPruningThreshold(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6)
{
  v9 = *(a1 + 80);
  if (PtrList_NrItems(a2))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*(a1 + 64) + 8 * v10);
      v14 = *(v12 + 1);
      v13 = (v12 + 1);
      if ((v14 & 2) == 0)
      {
        do
        {
          ++v11;
          v15 = *v13;
          v13 += 3;
        }

        while ((v15 & 1) == 0);
      }

      ++v10;
    }

    while (v10 < PtrList_NrItems(a2));
  }

  else
  {
    v11 = 0;
  }

  v16 = *(a1 + 56);
  if (v11 < *(a1 + 52))
  {
    LOWORD(v17) = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v20) = *(a1 + 56);
LABEL_31:
    if (v20)
    {
      v17 = v16 * *(a1 + 62) / v20;
    }

    goto LABEL_33;
  }

  cstdlib_memset(v9, 0, 4 * v16);
  if (PtrList_NrItems(a2))
  {
    v21 = 0;
    v19 = 0;
    v18 = 0;
    LOWORD(v17) = 0;
    while (1)
    {
      v22 = *(*(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * PtrList_ItemN(a2, v21) + 4);
      v23 = *(a1 + 64);
      if (!v21)
      {
        v18 = v22 + **v23;
        v19 = v18;
      }

      v24 = v23[v21];
      if ((v24[1] & 2) == 0)
      {
        break;
      }

LABEL_23:
      if (++v21 >= PtrList_NrItems(a2))
      {
        goto LABEL_26;
      }
    }

    v25 = (v24 + 1);
    while (1)
    {
      LOWORD(v17) = v22 + *(v25 - 1);
      v26 = v9;
      if (v17 < v18)
      {
        goto LABEL_19;
      }

      v27 = *(a1 + 56);
      v28 = v27 * (v17 - v18) / *(a1 + 62);
      if (v28 < v27)
      {
        break;
      }

LABEL_20:
      if (v17 < v19)
      {
        v19 = v17;
      }

      v29 = *v25;
      v25 += 3;
      if (v29)
      {
        goto LABEL_23;
      }
    }

    v26 = &v9[4 * v28];
LABEL_19:
    ++*v26;
    goto LABEL_20;
  }

  LOWORD(v17) = 0;
  v18 = 0;
  v19 = 0;
LABEL_26:
  v20 = *(a1 + 56);
  if (v20)
  {
    v30 = 0;
    v16 = 0;
    while (v30 < *(a1 + 52))
    {
      v30 += *&v9[4 * v16++];
      if (v20 == v16)
      {
        v16 = *(a1 + 56);
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_33:
  *a6 = v17 - v19 + v18;
  if (*(a1 + 48))
  {
    v31 = (v17 - v19 + v18);
    if (v31 >= *(a1 + 48))
    {
      LOWORD(v31) = *(a1 + 48);
    }

    *a6 = v31;
  }

  return 0;
}

uint64_t _DTSearch_HypoWillBePruned(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = PtrList_NrItems(a2);
  if (result)
  {
    v7 = PtrList_ItemN(a2, 0);
    return *(a1 + 50) && *(*(*(a1 + 24) + 16) + *(*(a1 + 24) + 24) * v7 + 4) + *(a1 + 50) < a3;
  }

  return result;
}

uint64_t DTSearch_SetHistogramBins(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  *(a1 + 56) = a2;
  if (!a2)
  {
    return 0;
  }

  *(a1 + 80) = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 80), 4 * a2, &v3);
  return v3;
}

uint64_t PNEW_DTSearch_Con(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 88, &v10);
  result = v10;
  if (!v10)
  {
    result = DTSearch_Con(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTQuestionSP_Con(void *a1, uint64_t a2)
{
  result = _DTQuestion_Con(a1, a2);
  if (!result)
  {
    *a1 = &__DTQuestionSP;
  }

  return result;
}

BOOL DTQuestionSP_IsTrue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 1);
  result = 0;
  if (v7 + a6 >= 0 && a5 && v7 < 0)
  {
    return *(a5 + 2 * (v7 + a6)) == *(v6 + 2);
  }

  return result;
}

uint64_t PNEW_DTQuestionSP_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionSP;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DTQuestionTG_Con(void *a1, uint64_t a2)
{
  result = _DTQuestion_Con(a1, a2);
  if (!result)
  {
    *a1 = &__DTQuestionTG;
  }

  return result;
}

uint64_t PNEW_DTQuestionTG_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionTG;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DTGraphemeParser_Con(void *a1, uint64_t a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__DTGraphemeParser;
    a1[1] = a2;
    v7 = *(a3 + 56);
    a1[4] = 0;
    a1[5] = 0;
    a1[2] = v7;
    a1[3] = 0;
  }

  return result;
}

uint64_t DTGraphemeParser_Des(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    OOCAllocator_Free(*(a1 + 8), v2);
    *(a1 + 24) = 0;
  }

  return Object_Des();
}

uint64_t DTGraphemeParser_Parse(void *a1, char *__s)
{
  v15 = 0;
  if (cstdlib_strlen(__s))
  {
    v4 = cstdlib_strlen(__s);
    v5 = a1[4];
    if (v4 >= v5)
    {
      v6 = OOCAllocator_Realloc(a1[1], a1[3], v4, &v15);
      a1[3] = v6;
      if (v15)
      {
        return v15;
      }

      a1[4] = v4;
      v5 = v4;
    }

    else
    {
      v6 = a1[3];
    }

    a1[5] = 0;
    cstdlib_memset(v6, 0, v5);
    if (v4)
    {
      v8 = 0;
      v9 = *(*(a1[2] + 16) + 4);
      while (1)
      {
        GraphemeID = DTGraphemeBuffer_FirstGraphemeID(a1[2], &__s[v8]);
        if (v9 <= GraphemeID)
        {
          break;
        }

        v11 = GraphemeID;
        while (1)
        {
          v12 = *(a1[2] + 24) + 8 * v11;
          v13 = *(v12 + 8) + ~*v12;
          if (!cstdlib_strncmp(*v12, &__s[v8], v13))
          {
            break;
          }

          if (v9 <= ++v11)
          {
            goto LABEL_17;
          }
        }

        *(a1[3] + a1[5]++) = v11;
        v8 += v13;
        if (v8 >= v4)
        {
          return v15;
        }
      }

LABEL_17:
      a1[5] = 0;
      cstdlib_memset(a1[3], 0, a1[4]);
      return 4;
    }
  }

  else
  {
    a1[5] = 0;
    v7 = a1[3];
    if (v7)
    {
      cstdlib_memset(v7, 0, a1[4]);
    }
  }

  return v15;
}

uint64_t PNEW_DTGraphemeParser_Con(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = 0;
  v8 = OOCAllocator_Malloc(a1, 48, &v11);
  result = v11;
  if (!v11)
  {
    result = Object_Con(v8);
    if (result)
    {
      v11 = result;
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v11;
    }

    else
    {
      *v8 = &__DTGraphemeParser;
      v8[1] = a2;
      v10 = *(a3 + 56);
      v8[4] = 0;
      v8[5] = 0;
      v8[2] = v10;
      v8[3] = 0;
      *a4 = v8;
    }
  }

  return result;
}

uint64_t DTQuestionPPBin_Con(void *a1, uint64_t a2)
{
  result = _DTQuestion_Con(a1, a2);
  if (!result)
  {
    *a1 = &__DTQuestionPPBin;
  }

  return result;
}

uint64_t DTQuestionPPBin_IsTrue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 1);
  v8 = v7 + a6;
  if (v7 + a6 < 0)
  {
    return 0;
  }

  result = 0;
  if (a5 && v7 < 0)
  {
    v10 = *(v6 + 2);
    if (*(v6 + 2))
    {
      v11 = 0;
      v12 = *(a5 + 2 * v8);
      v13 = v6 + 3;
      v14 = v10 - 1;
      while (1)
      {
        v15 = (v14 + v11) >> 1;
        v16 = *(v13 + 2 * v15);
        if (v12 >= v16)
        {
          if (v12 <= v16)
          {
            return 1;
          }

          v11 = v15 + 1;
        }

        else
        {
          v14 = v15 - 1;
        }

        if (v11 > v14)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t PNEW_DTQuestionPPBin_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionPPBin;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DTPPBuffer_Con(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = a2 + 2;
  return 0;
}

uint64_t PNEW_DTPPBuffer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 16, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    v5[1] = a2 + 2;
    *a3 = v5;
  }

  return result;
}

uint64_t PNEW_DTLeaf_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 8, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    *a3 = v5;
  }

  return result;
}

double LexDT_Con(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (!_LexChain_Con(a1, a2, a3))
  {
    *a1 = &__LexDT;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    if (a4)
    {
      *(a1 + 72) = a4;
      *(a1 + 80) = a5;
      if (!PNEW_DTTree_Con(a2, a2, a4, (a1 + 56)) && !PNEW_DTGraphemeParser_Con(a2, a2, *(a1 + 56), (a1 + 32)) && !PNEW_DTSearch_Con(a2, a2, *(a1 + 56), (a1 + 40)))
      {
        PNEW_DTPostProcessor_Con(a2, a2, *(a1 + 56), (a1 + 48));
        if (!v10)
        {
          *(a1 + 64) = *(*(*(a1 + 56) + 72) + 24);
        }
      }
    }

    else
    {
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
    }
  }

  return result;
}

uint64_t LexDT_Des(uint64_t *a1)
{
  v2 = a1[2];
  v3 = a1[6];
  if (!v3 || (result = OOC_PlacementDeleteObject(a1[2], v3), !result))
  {
    v5 = a1[5];
    if (!v5 || (result = OOC_PlacementDeleteObject(v2, v5), !result))
    {
      v6 = a1[4];
      if (!v6 || (result = OOC_PlacementDeleteObject(v2, v6), !result))
      {
        v7 = a1[7];
        if (!v7 || (result = OOC_PlacementDeleteObject(v2, v7), !result))
        {
          v8 = a1[10];
          if (v8)
          {
            OOCAllocator_Free(v8, a1[9]);
          }

          return LexChain_Des(a1);
        }
      }
    }
  }

  return result;
}

uint64_t LexDT_GetParamList(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    result = 0;
    v5 = a3;
    for (i = (a2 + 4); ; i += 2)
    {
      v7 = *(i - 1);
      if (v7 <= 3)
      {
        if (v7 > 1)
        {
          if (v7 != 2)
          {
            v9 = *(a1 + 40);
LABEL_22:
            v8 = *(v9 + 56);
            goto LABEL_23;
          }

          v8 = *(*(a1 + 40) + 52);
        }

        else if (v7)
        {
          if (v7 != 1)
          {
LABEL_26:
            result = err_GenerateErrorData();
            goto LABEL_24;
          }

          v8 = *(*(a1 + 40) + 48);
        }

        else
        {
          v8 = *(a1 + 64);
        }
      }

      else
      {
        if (v7 <= 5)
        {
          if (v7 == 4)
          {
            v8 = *(*(a1 + 40) + 60);
          }

          else
          {
            v8 = *(*(a1 + 48) + 88);
          }

          goto LABEL_23;
        }

        switch(v7)
        {
          case 6:
            v8 = *(*(a1 + 48) + 92);
            break;
          case 7:
            v9 = *(a1 + 48);
            goto LABEL_22;
          case 8:
            v8 = *(*(a1 + 48) + 60);
            break;
          default:
            goto LABEL_26;
        }
      }

LABEL_23:
      *i = v8;
LABEL_24:
      if (!--v5)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t LexDT_GetParamListDefaults(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    result = 0;
    v5 = *(*(a1 + 56) + 72);
    v6 = a3;
    for (i = (a2 + 4); ; i += 2)
    {
      v8 = *(i - 1);
      if (v8 <= 3)
      {
        if (v8 > 1)
        {
          if (v8 == 2)
          {
            v9 = v5[1];
          }

          else
          {
            v9 = v5[2];
          }
        }

        else if (v8)
        {
          if (v8 != 1)
          {
LABEL_25:
            result = err_GenerateErrorData();
            goto LABEL_23;
          }

          v9 = *v5;
        }

        else
        {
          v9 = v5[6];
        }
      }

      else if (v8 <= 5)
      {
        if (v8 == 4)
        {
          v9 = v5[3];
        }

        else
        {
          v9 = v5[7];
        }
      }

      else
      {
        switch(v8)
        {
          case 6:
            v9 = v5[8];
            break;
          case 7:
            v9 = v5[4];
            break;
          case 8:
            v9 = v5[5];
            break;
          default:
            goto LABEL_25;
        }
      }

      *i = v9;
LABEL_23:
      if (!--v6)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t LexDT_GetVersionString(uint64_t a1, void *a2)
{
  v46 = 0;
  v3 = OOCAllocator_Malloc(*(a1 + 16), 800, &v46);
  result = v46;
  if (!v46)
  {
    v5 = spr_pcat_noerr(v3, (v3 + 800), "s", "LexDT Version ");
    v6 = &v3[v5 + spr_lcat_noerr(&v3[v5], (v3 + 800), "d", 4)];
    v7 = &v6[spr_pcat_noerr(v6, (v3 + 800), "s", "\n")];
    v8 = &v7[spr_pcat_noerr(v7, (v3 + 800), "s", "LexDT build ID: ")];
    v9 = &v8[spr_lcat_noerr(v8, (v3 + 800), "d", 21586)];
    v10 = &v9[spr_pcat_noerr(v9, (v3 + 800), "s", "\n")];
    v11 = &v10[spr_pcat_noerr(v10, (v3 + 800), "s", "  question ID size ")];
    v12 = &v11[spr_lcat_noerr(v11, (v3 + 800), "d", 2)];
    v13 = &v12[spr_pcat_noerr(v12, (v3 + 800), "s", "\n")];
    v14 = &v13[spr_pcat_noerr(v13, (v3 + 800), "s", "  node ID size ")];
    v15 = &v14[spr_lcat_noerr(v14, (v3 + 800), "d", 2)];
    v16 = &v15[spr_pcat_noerr(v15, (v3 + 800), "s", "\n")];
    v17 = &v16[spr_pcat_noerr(v16, (v3 + 800), "s", "  grapheme ID size ")];
    v18 = &v17[spr_lcat_noerr(v17, (v3 + 800), "d", 1)];
    v19 = &v18[spr_pcat_noerr(v18, (v3 + 800), "s", "\n")];
    v20 = &v19[spr_pcat_noerr(v19, (v3 + 800), "s", "  pseudo-phoneme ID size ")];
    v21 = &v20[spr_lcat_noerr(v20, (v3 + 800), "d", 2)];
    v22 = &v21[spr_pcat_noerr(v21, (v3 + 800), "s", "\n")];
    v23 = &v22[spr_pcat_noerr(v22, (v3 + 800), "s", "  next node is YES: ")];
    v24 = &v23[spr_lcat_noerr(v23, (v3 + 800), "d", 1)];
    v25 = &v24[spr_pcat_noerr(v24, (v3 + 800), "s", "\n")];
    v26 = &v25[spr_pcat_noerr(v25, (v3 + 800), "s", "  phoneme separator enabled: ")];
    v27 = &v26[spr_lcat_noerr(v26, (v3 + 800), "d", 0)];
    v28 = &v27[spr_pcat_noerr(v27, (v3 + 800), "s", "\n")];
    v29 = &v28[spr_pcat_noerr(v28, (v3 + 800), "s", "  grapheme initials table: ")];
    v30 = &v29[spr_lcat_noerr(v29, (v3 + 800), "d", 0)];
    v31 = &v30[spr_pcat_noerr(v30, (v3 + 800), "s", "\n")];
    v32 = &v31[spr_pcat_noerr(v31, (v3 + 800), "s", "  grapheme start node table: ")];
    v33 = &v32[spr_lcat_noerr(v32, (v3 + 800), "d", 1)];
    v34 = &v33[spr_pcat_noerr(v33, (v3 + 800), "s", "\n")];
    v35 = &v34[spr_pcat_noerr(v34, (v3 + 800), "s", "  grapheme fallback enabled: ")];
    v36 = &v35[spr_lcat_noerr(v35, (v3 + 800), "d", 1)];
    v37 = &v36[spr_pcat_noerr(v36, (v3 + 800), "s", "\n")];
    v38 = &v37[spr_pcat_noerr(v37, (v3 + 800), "s", "  compatible hypothesis sorting: ")];
    v39 = &v38[spr_lcat_noerr(v38, (v3 + 800), "d", 1)];
    v40 = &v39[spr_pcat_noerr(v39, (v3 + 800), "s", "\n")];
    v41 = &v40[spr_pcat_noerr(v40, (v3 + 800), "s", "  character size: ")];
    v42 = &v41[spr_lcat_noerr(v41, (v3 + 800), "d", 1)];
    v43 = &v42[spr_pcat_noerr(v42, (v3 + 800), "s", "\n")];
    v44 = &v43[spr_pcat_noerr(v43, (v3 + 800), "s", "  node links: ")];
    v45 = spr_lcat_noerr(v44, (v3 + 800), "d", 1);
    spr_pcat_noerr(&v44[v45], (v3 + 800), "s", "\n");
    result = v46;
  }

  *a2 = v3;
  return result;
}

uint64_t LexDT_HasParam(uint64_t a1, int a2)
{
  v2 = 0;
  while (dword_26ECDA6DC[v2] != a2)
  {
    if (++v2 == 9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t LexDT_SetParamList(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = a3;
    for (i = (a2 + 4); ; i += 2)
    {
      v7 = *(i - 1);
      if (v7 <= 3)
      {
        if (v7 > 1)
        {
          if (v7 != 2)
          {
            ErrorData = DTSearch_SetHistogramBins(*(a1 + 40), *i);
LABEL_23:
            v4 = ErrorData;
            goto LABEL_24;
          }

          DTSearch_SetHistogramPruning(*(a1 + 40), *i);
        }

        else if (v7)
        {
          if (v7 != 1)
          {
LABEL_22:
            ErrorData = err_GenerateErrorData();
            goto LABEL_23;
          }

          DTSearch_SetPruning(*(a1 + 40), *i);
        }

        else
        {
          *(a1 + 64) = *i;
        }
      }

      else
      {
        if (v7 <= 5)
        {
          if (v7 == 4)
          {
            DTSearch_SetHistogramDiff(*(a1 + 40), *i);
          }

          else
          {
            *(*(a1 + 48) + 88) = *i;
          }

          goto LABEL_24;
        }

        switch(v7)
        {
          case 6:
            *(*(a1 + 48) + 92) = *i;
            break;
          case 7:
            *(*(a1 + 48) + 56) = *i;
            break;
          case 8:
            *(*(a1 + 48) + 60) = *i;
            break;
          default:
            goto LABEL_22;
        }
      }

LABEL_24:
      if (!--v5)
      {
        return v4;
      }
    }
  }

  return 0;
}

unint64_t _LexDT_FindWord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  result = DTGraphemeParser_Parse(*(a1 + 32), *(a2 + 8));
  if (!result)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    if (!*(v7 + 40))
    {
      return 0;
    }

    v9 = *(v7 + 24);
    v17 = 0;
    result = DTSearch_BeamSearch(*(a1 + 40), v9, v8, &v17);
    if (result)
    {
      return result;
    }

    result = DTPostProcessor_CreateNBest(*(a1 + 48), *(*(a1 + 40) + 32), *(a1 + 64));
    if (result)
    {
      return result;
    }

    v10 = *(*(a1 + 48) + 40);
    if (!v10)
    {
      return 0;
    }

    for (i = 0; i != v10; ++i)
    {
      v16 = 0;
      v12 = *(a1 + 48);
      v13 = *(*(v12 + 32) + 8 * i);
      TranscriptionSize = DTPostProcessor_GetTranscriptionSize(v12, i);
      result = PNEW_Transcription_Con(v5, v5, v13, TranscriptionSize, 1, 1, &v16);
      if (result)
      {
        break;
      }

      v15 = v16;
      *(v16 + 28) = *(*(*(a1 + 48) + 48) + 4 * i);
      result = PtrQueue_Put(a3, v15);
      if (result)
      {
        break;
      }
    }
  }

  return result;
}

void PNEW_LexDT_Con(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 88, &v14);
  if (!v14)
  {
    LexDT_Con(v12, a2, a3, a4, a5);
    v14 = v13;
    if (v13)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
    }

    else
    {
      *a6 = v12;
    }
  }
}

uint64_t PNEW_DTLeafBuffer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Malloc(a1, 8, &v7);
  result = v7;
  if (!v7)
  {
    *v5 = a2;
    *a3 = v5;
  }

  return result;
}

uint64_t DTQuestionWB_Con(void *a1, uint64_t a2)
{
  result = _DTQuestion_Con(a1, a2);
  if (!result)
  {
    *a1 = &__DTQuestionWB;
  }

  return result;
}

BOOL DTQuestionWB_IsTrue(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 8) + 1);
  v5 = v4 + a2;
  if (v4 < 0)
  {
    if (v5 < a4)
    {
      if ((v5 & 0x80000000) != 0)
      {
        return 1;
      }

      v8 = (a3 + v5);
      if (!*v8)
      {
        if (v5 != a4 - 1)
        {
          v7 = v8 + 1;
          return *v7 != 0;
        }

        return 1;
      }
    }

    return 0;
  }

  if ((v5 & 0x80000000) != 0)
  {
    return 0;
  }

  if (v5 >= a4)
  {
    return 1;
  }

  v6 = (a3 + v5);
  if (*v6)
  {
    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v7 = v6 - 1;
  return *v7 != 0;
}

uint64_t PNEW_DTQuestionWB_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 16, &v8);
  result = v8;
  if (!v8)
  {
    result = _DTQuestion_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__DTQuestionWB;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t _LexChain_Con(void *a1, uint64_t a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LexChain;
    a1[1] = a3;
    a1[2] = a2;
    a1[3] = 0;
  }

  return result;
}

uint64_t LexChain_Des(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 16), v2);
    if (result)
    {
      return result;
    }

    *(a1 + 24) = 0;
  }

  return Object_Des();
}

uint64_t LexChain_AddPostProcessor(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (!v4)
  {
    result = PNEW_PtrList_Con(*(a1 + 16), *(a1 + 16), 8u, 8, v5);
    if (result)
    {
      return result;
    }

    v4 = *v5;
  }

  return PtrList_Append(v4, a2);
}

uint64_t LexChain_FetchTranscription(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a1 + 72))(a1, *(a2 + 20)))
  {
    memset(v17, 0, sizeof(v17));
    result = PtrQueue_Con(v17, a1[2], 5u, 5);
    if (!result)
    {
      result = (*(*a1 + 64))(a1, a2, v17);
      if (!result)
      {
        if (PtrQueue_IsEmpty(v17))
        {
          v9 = a1[1];
          if (v9)
          {
            result = (*(*v9 + 24))(v9, a2, a3, a4);
            if (result)
            {
              return result;
            }
          }
        }

        else
        {
          while (!PtrQueue_IsEmpty(v17))
          {
            v11 = PtrQueue_Item(v17);
            v12 = v11;
            if (a3 && (*(v11 + 20) & a3) == 0)
            {
              v13 = a1[1];
              if (v13)
              {
                result = (*(*v13 + 24))(v13, v12, a3, a4);
                if (result)
                {
                  return result;
                }
              }

              result = PDELETE_Transcription(a1[2], v12);
              if (result)
              {
                return result;
              }
            }

            else
            {
              result = PtrQueue_Put(a4, v11);
              if (result)
              {
                return result;
              }
            }

            result = PtrQueue_Remove(v17);
            if (result)
            {
              return result;
            }
          }
        }

        v14 = a1[3];
        if (v14 && PtrList_NrItems(v14))
        {
          v15 = 0;
          while (1)
          {
            v16 = PtrList_ItemN(a1[3], v15);
            result = (*(*v16 + 80))(v16, a2, a3, a4);
            if (result)
            {
              break;
            }

            if (++v15 >= PtrList_NrItems(a1[3]))
            {
              return (*(*&v17[0] + 16))(v17);
            }
          }
        }

        else
        {
          return (*(*&v17[0] + 16))(v17);
        }
      }
    }
  }

  else
  {
    result = a1[1];
    if (result)
    {
      v10 = *(*result + 24);

      return v10();
    }
  }

  return result;
}

uint64_t _LexChain_PostProcess(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v13, 0, sizeof(v13));
  v7 = PtrQueue_NrItems(a4);
  result = PtrQueue_Con(v13, a1[2], 5u, 5);
  if (!result)
  {
    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v10 = PtrQueue_Item(a4);
        result = PtrQueue_Remove(a4);
        if (result)
        {
          break;
        }

        if ((*(*a1 + 72))(a1, *(v10 + 20)))
        {
          result = (*(*a1 + 24))(a1, v10, a3, v13);
          if (result)
          {
            return result;
          }

          while (!PtrQueue_IsEmpty(v13))
          {
            v11 = PtrQueue_Item(v13);
            result = PtrQueue_Put(a4, v11);
            if (!result)
            {
              result = PtrQueue_Remove(v13);
              if (!result)
              {
                continue;
              }
            }

            return result;
          }

          result = PDELETE_Transcription(a1[2], v10);
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = PtrQueue_Put(a4, v10);
          if (result)
          {
            return result;
          }

          while (!PtrQueue_IsEmpty(v13))
          {
            v12 = PtrQueue_Item(v13);
            result = PDELETE_Transcription(a1[2], v12);
            if (!result)
            {
              result = PtrQueue_Remove(v13);
              if (!result)
              {
                continue;
              }
            }

            return result;
          }
        }

        if (++v9 == v7)
        {
          return (*(*&v13[0] + 16))(v13);
        }
      }
    }

    else
    {
      return (*(*&v13[0] + 16))(v13);
    }
  }

  return result;
}

uint64_t _LexTokenChain_Con(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _LexChain_Con(a1, a2, a3);
  if (!result)
  {
    *a1 = &__LexTokenChain;
    *(a1 + 32) = a2;
    *(a1 + 40) = 0;
    result = PNEW_PtrQueue_Con(a2, a2, 5u, 5, (a1 + 48));
    if (!result)
    {
      result = PNEW_PtrQueue_Con(a2, a2, 5u, 5, (a1 + 56));
      if (!result)
      {

        return PNEW_PtrQueue_Con(a2, a2, 5u, 5, (a1 + 64));
      }
    }
  }

  return result;
}

uint64_t LexTokenChain_Des(uint64_t *a1)
{
  v2 = a1[6];
  if (!v2 || (result = OOC_PlacementDeleteObject(a1[4], v2), !result))
  {
    v4 = a1[7];
    if (!v4 || (result = OOC_PlacementDeleteObject(a1[4], v4), !result))
    {
      v5 = a1[8];
      if (!v5 || (result = OOC_PlacementDeleteObject(a1[4], v5), !result))
      {

        return LexChain_Des(a1);
      }
    }
  }

  return result;
}

uint64_t LexTokenChain_FetchTranscription(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(*a1 + 72))(a1, *(a2 + 20)))
  {
    result = (*(*a1 + 88))(a1, a2, a1[6]);
    if (!result)
    {
      if (!PtrQueue_IsEmpty(a1[6]))
      {
        while (!PtrQueue_IsEmpty(a1[6]))
        {
          v12 = PtrQueue_Item(a1[6]);
          v13 = v12;
          if (a3 && (*(v12 + 20) & a3) == 0)
          {
            v14 = a1[1];
            if (v14)
            {
              result = (*(*v14 + 24))(v14, v13, a3, a1[8]);
              if (result)
              {
                return result;
              }
            }

            result = PDELETE_Transcription(a1[4], v13);
            if (result)
            {
              return result;
            }
          }

          else
          {
            result = PtrQueue_Put(a1[8], v12);
            if (result)
            {
              return result;
            }
          }

          (*(*a1 + 96))(a1, a1[7], a1[8], a3);
          while (!PtrQueue_IsEmpty(a1[8]))
          {
            v15 = PtrQueue_Item(a1[8]);
            result = PDELETE_Transcription(a1[4], v15);
            if (!result)
            {
              result = PtrQueue_Remove(a1[8]);
              if (!result)
              {
                continue;
              }
            }

            return result;
          }

          result = PtrQueue_Remove(a1[6]);
          if (result)
          {
            return result;
          }
        }

        while (!PtrQueue_IsEmpty(a1[7]))
        {
          v16 = PtrQueue_Item(a1[7]);
          result = PtrQueue_Put(a4, v16);
          if (!result)
          {
            result = PtrQueue_Remove(a1[7]);
            if (!result)
            {
              continue;
            }
          }

          return result;
        }
      }

      result = a1[3];
      if (result)
      {
        result = PtrList_NrItems(result);
        if (result)
        {
          v9 = 0;
          while (1)
          {
            v10 = PtrList_ItemN(a1[3], v9);
            result = (*(*v10 + 80))(v10, a2, a3, a4);
            if (result)
            {
              break;
            }

            if (++v9 >= PtrList_NrItems(a1[3]))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  else
  {
    result = a1[1];
    if (result)
    {
      v11 = *(*result + 24);

      return v11();
    }
  }

  return result;
}

uint64_t Transcription_Con(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4, int a5, int a6)
{
  v16 = 0;
  if (a5 == 1)
  {
    if (a3[a4 - 1])
    {
      v12 = a4 + 1;
    }

    else
    {
      v12 = a4;
    }
  }

  else
  {
    v12 = a4;
    if (a5 == 4)
    {
      if (!a4 || (v12 = a4, cstdlib_memcmp(&a3[a4 - 1], "", 1uLL)))
      {
        v12 = a4 + 1;
      }
    }
  }

  v13 = OOCAllocator_Calloc(a2, 1, v12, &v16);
  *(a1 + 8) = v13;
  v14 = v16;
  if (!v16)
  {
    cstdlib_memcpy(v13, a3, a4);
    *(a1 + 16) = v12;
    *(a1 + 20) = a5;
    *(a1 + 24) = a6;
    *(a1 + 28) = 0;
    *a1 = a2;
    return v16;
  }

  return v14;
}

uint64_t Transcription_ConFromLhTransNoCopy(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v4 = *(a3 + 1);
  v5 = *a3;
  *(a1 + 16) = -a3[4];
  *(a1 + 20) = v5;
  *(a1 + 24) = a4;
  *(a1 + 28) = 0;
  *a1 = a2;
  *(a1 + 8) = v4;
  return 0;
}

uint64_t Transcription_ConNoCopy(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a7)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  *(a1 + 16) = v7;
  *(a1 + 20) = a5;
  *(a1 + 24) = a6;
  *(a1 + 28) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  return 0;
}

uint64_t Transcription_Con_Append(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v7 = *(a3 + 8);
  v8 = *(a4 + 8);
  v9 = *(a3 + 20);
  *(a1 + 20) = v9;
  *(a1 + 16) = 0;
  *(a1 + 28) = 0;
  *a1 = a2;
  *(a1 + 8) = 0;
  __src = v7;
  if (v9 != 1)
  {
    if (v9 == 4)
    {
      v10 = " ";
      v11 = cstdlib_strlen(" ");
      v12 = cstdlib_strlen(v7);
      v13 = cstdlib_strlen(v8);
      v14 = 0;
      v15 = 1;
      v16 = 1;
    }

    else
    {
      v11 = 0;
      v15 = 0;
      v16 = 0;
      v12 = 0;
      v13 = 0;
      v10 = 0;
      v14 = 1;
    }

    goto LABEL_15;
  }

  v11 = cstdlib_strlen(" ");
  v17 = cstdlib_strlen(v7);
  v18 = cstdlib_strlen(v8);
  if (v17)
  {
    v12 = v17 - (v7[v17 - 1] == 35);
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_14:
    v13 = 0;
    v14 = 0;
    v16 = 2;
    v15 = 1;
    v10 = "_";
    goto LABEL_15;
  }

  v12 = 0;
  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_6:
  v19 = *v8;
  v15 = 1;
  v16 = 2;
  if (v19 == 35)
  {
    v13 = v18 - 1;
  }

  else
  {
    v13 = v18;
  }

  v14 = 0;
  v10 = "_";
  if (v19 == 35)
  {
    ++v8;
  }

LABEL_15:
  v20 = v16 + v11;
  v21 = v16 + v11 + v12 + v13;
  if (v16 + v11 + v12 + v13)
  {
    __n = v11;
    v22 = v14;
    v27 = v15;
    v23 = OOCAllocator_Malloc(a2, v20 + v12 + v13, &v30);
    *(a1 + 8) = v23;
    result = v30;
    if (v30)
    {
      return result;
    }

    cstdlib_memcpy(v23, __src, v12);
    v25 = (*(a1 + 8) + v12);
    if ((v22 & 1) == 0)
    {
      cstdlib_memcpy(v25, v10, __n);
      v25 = (*(a1 + 8) + v12 + __n);
    }

    cstdlib_memcpy(v25, v8, v13);
    if (v27)
    {
      cstdlib_memset((*(a1 + 8) + v21 - v16), 0, v16);
    }

    *(a1 + 16) = v21;
    result = v30;
  }

  else
  {
    result = 0;
  }

  *(a1 + 28) = *(a4 + 28) + *(a3 + 28);
  return result;
}

uint64_t Transcription_Des(uint64_t a1)
{
  if (*(a1 + 16) >= 1)
  {
    OOCAllocator_Free(*a1, *(a1 + 8));
  }

  return 0;
}

uint64_t Transcription_Append(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v2 = *(a1 + 20);
  v3 = v2 == 1 || v2 == 4;
  if (!v3 || v2 != *(a2 + 20))
  {

    return err_GenerateErrorData();
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v2 != 1)
  {
    if (v2 != 4)
    {
      goto LABEL_20;
    }

    v8 = " ";
    v9 = cstdlib_strlen(" ");
    v10 = cstdlib_strlen(v6);
    v11 = 1;
    v12 = cstdlib_strlen(v7);
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v9 = cstdlib_strlen(" ");
  v14 = cstdlib_strlen(v6);
  v15 = cstdlib_strlen(v7);
  v12 = v15;
  if (v14)
  {
    v10 = v14 - (v6[v14 - 1] == 35);
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    if (!v15)
    {
LABEL_20:
      result = 0;
LABEL_21:
      *(a1 + 28) += *(a2 + 28);
      return result;
    }
  }

  if (*v7 == 35)
  {
    v12 = v15 - 1;
    ++v7;
    v11 = 2;
    v8 = "_";
    if (v15 == 1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = 2;
    v8 = "_";
  }

LABEL_23:
  v16 = v10 + v11 + v9 + v12;
  v17 = OOCAllocator_Realloc(*a1, *(a1 + 8), v16, &v18);
  *(a1 + 8) = v17;
  result = v18;
  if (!v18)
  {
    cstdlib_memcpy((v17 + v10), v8, v9);
    cstdlib_memcpy((*(a1 + 8) + v10 + v9), v7, v12);
    cstdlib_memset((*(a1 + 8) + v16 - v11), 0, v11);
    *(a1 + 16) = v16;
    result = v18;
    goto LABEL_21;
  }

  return result;
}

uint64_t Transcription_CommitToLhTranscription(uint64_t result, uint64_t a2)
{
  LODWORD(v2) = *(result + 16);
  if (v2)
  {
    *a2 = *(result + 20);
    if (v2 >= 0)
    {
      v2 = v2;
    }

    else
    {
      v2 = -v2;
    }

    *(a2 + 8) = *(result + 8);
    *(a2 + 16) = v2;
    *(result + 16) = -v2;
  }

  return result;
}

uint64_t Transcription_Compare(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1[5];
  v4 = a2[5];
  result = (v3 - v4);
  if (v3 == v4)
  {
    v6 = a1[6];
    v7 = a2[6];
    result = (v6 - v7);
    if (v6 == v7)
    {
      v8 = a1[4];
      if (v8 < 0)
      {
        v8 = -v8;
      }

      v9 = a2[4];
      if (v9 < 0)
      {
        v9 = -v9;
      }

      return (v8 - v9);
    }
  }

  return result;
}

uint64_t PNEW_Transcription_Con(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4, int a5, int a6, uint64_t *a7)
{
  v16 = 0;
  v14 = OOCAllocator_Malloc(a1, 32, &v16);
  result = v16;
  if (!v16)
  {
    result = Transcription_Con(v14, a2, a3, a4, a5, a6);
    v16 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v14);
      *a7 = 0;
      return v16;
    }

    else
    {
      *a7 = v14;
    }
  }

  return result;
}

uint64_t PNEW_Transcription_ConNoCopy(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t *a8)
{
  v18 = 0;
  v15 = OOCAllocator_Malloc(a1, 32, &v18);
  result = v18;
  if (!v18)
  {
    if (a7)
    {
      v17 = a4;
    }

    else
    {
      v17 = -a4;
    }

    *(v15 + 16) = v17;
    *(v15 + 20) = a5;
    *(v15 + 24) = a6;
    *(v15 + 28) = 0;
    *v15 = a2;
    *(v15 + 8) = a3;
    *a8 = v15;
  }

  return result;
}

uint64_t PNEW_Transcription_ConFromLhTrans(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v12 = 0;
  v10 = OOCAllocator_Malloc(a1, 32, &v12);
  result = v12;
  if (!v12)
  {
    result = Transcription_Con(v10, a2, *(a3 + 8), *(a3 + 16), *a3, a4);
    v12 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v10);
      *a5 = 0;
      return v12;
    }

    else
    {
      *a5 = v10;
    }
  }

  return result;
}

uint64_t PNEW_Transcription_ConFromLhTransNoCopy(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t *a5)
{
  v13 = 0;
  v9 = OOCAllocator_Malloc(a1, 32, &v13);
  result = v13;
  if (!v13)
  {
    v11 = *(a3 + 1);
    v12 = *a3;
    *(v9 + 16) = -a3[4];
    *(v9 + 20) = v12;
    *(v9 + 24) = a4;
    *(v9 + 28) = 0;
    *v9 = a2;
    *(v9 + 8) = v11;
    *a5 = v9;
  }

  return result;
}

uint64_t PNEW_Transcription_Con_Append(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v12 = 0;
  v10 = OOCAllocator_Malloc(a1, 32, &v12);
  result = v12;
  if (!v12)
  {
    result = Transcription_Con_Append(v10, a2, a3, a4);
    v12 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v10);
      *a5 = 0;
      return v12;
    }

    else
    {
      *a5 = v10;
    }
  }

  return result;
}

uint64_t PDELETE_Transcription(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= 1)
  {
    OOCAllocator_Free(*a2, *(a2 + 8));
  }

  OOCAllocator_Free(a1, a2);
  return 0;
}

uint64_t TranscriptionQueue_SynthesizeTokens(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v10 = PtrQueue_NrItems(a2);
  v11 = PtrQueue_NrItems(a3);
  v12 = v11;
  if (v10 && v11)
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    result = PtrList_Con(v32, a1, v11 * v10, 1);
    if (!result)
    {
      v14 = 0;
      v15 = a5 - 1;
      v28 = a3;
      v30 = a4;
      v27 = v12;
      while (1)
      {
        v29 = v14;
        v16 = PtrQueue_ItemN(a3, v14);
        v17 = v16;
        if (!a4 || (*(v16 + 20) & v30) != 0)
        {
          break;
        }

LABEL_16:
        a4 = v30;
        v14 = v29 + 1;
        a3 = v28;
        if (v29 + 1 == v27)
        {
          while (1)
          {
            v22 = PtrQueue_Item(a2);
            result = PtrQueue_Remove(a2);
            if (result)
            {
              break;
            }

            result = PDELETE_Transcription(a1, v22);
            if (result)
            {
              break;
            }

            if (!--v10)
            {
              if (PtrList_NrItems(v32))
              {
                v25 = 0;
                do
                {
                  v26 = PtrList_ItemN(v32, v25);
                  if (v15 >= v25)
                  {
                    result = PtrQueue_Put(a2, v26);
                    if (result)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    result = PDELETE_Transcription(a1, v26);
                    if (result)
                    {
                      return result;
                    }
                  }

                  ++v25;
                }

                while (v25 < PtrList_NrItems(v32));
              }

              return (*(*&v32[0] + 16))(v32);
            }
          }

          return result;
        }
      }

      v18 = 0;
      while (1)
      {
        v19 = PtrQueue_ItemN(a2, v18);
        v20 = *(v17 + 28) + *(v19 + 28);
        if (!a5 || PtrList_NrItems(v32) < a5 || (Insert_Score = a5, v20 < *(PtrList_ItemN(v32, a5 - 1) + 28)))
        {
          Insert_Score = __TranscriptionQueue_FindInsert_Score(v32, v20);
        }

        if (v15 >= Insert_Score)
        {
          v31 = 0;
          result = PNEW_Transcription_Con_Append(a1, a1, v19, v17, &v31);
          if (result)
          {
            break;
          }

          result = PtrList_Insert(v32, Insert_Score, v31);
          if (result)
          {
            break;
          }
        }

        if (v10 == ++v18)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    result = 0;
    if (!v10 && v12)
    {
      if (PtrQueue_IsEmpty(a3))
      {
        return 0;
      }

      else
      {
        for (i = 0; ; ++i)
        {
          v24 = PtrQueue_Item(a3);
          result = PtrQueue_Remove(a3);
          if (result)
          {
            break;
          }

          if (a5 - 1 >= i)
          {
            result = PtrQueue_Put(a2, v24);
            if (result)
            {
              return result;
            }
          }

          else
          {
            result = PDELETE_Transcription(a1, v24);
            if (result)
            {
              return result;
            }
          }

          if (PtrQueue_IsEmpty(a3))
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t __TranscriptionQueue_FindInsert_Score(uint64_t a1, unsigned int a2)
{
  if (PtrList_NrItems(a1) < 1)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    if (*(PtrList_ItemN(a1, v4) + 28) > a2)
    {
      break;
    }

    v4 = (v4 + 1);
  }

  while (v4 < PtrList_NrItems(a1));
  return v4;
}

uint64_t StringTokenizer_Con(void *a1, uint64_t a2)
{
  result = Object_Con(a1);
  v5 = result;
  if (!result)
  {
    *a1 = &__StringTokenizer;
    a1[1] = a2;
    a1[3] = 50;
    a1[5] = 50;
    a1[2] = OOCAllocator_Malloc(a2, 50, &v5);
    result = v5;
    if (!v5)
    {
      a1[4] = OOCAllocator_Malloc(a1[1], a1[5], &v5);
      result = v5;
      if (!v5)
      {
        a1[6] = 0;
      }
    }
  }

  return result;
}

uint64_t StringTokenizer_Des(uint64_t *a1)
{
  OOCAllocator_Free(a1[1], a1[2]);
  OOCAllocator_Free(a1[1], a1[4]);

  return Object_Des();
}

uint64_t StringTokenizer_ExpandPhoneticMultiples(uint64_t a1, uint64_t a2, char *a3, char ***a4, void *a5)
{
  v15 = 0;
  v16 = 0;
  *a4 = 0;
  v8 = __StringTokenizer_ExpandMultiple(a2, a3, &v15, &v16);
  if (!v8)
  {
    v9 = v16;
    v10 = v15;
    if (v16 >= 0x11)
    {
      v11 = (v15 + 16);
      v12 = v16 - 16;
      do
      {
        v13 = *v11++;
        OOCAllocator_Free(a2, v13);
        --v12;
      }

      while (v12);
      v9 = 16;
    }

    *a4 = v10;
    *a5 = v9;
  }

  return v8;
}

uint64_t __StringTokenizer_ExpandMultiple(uint64_t a1, char *a2, char ***a3, unsigned int *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v96 = 0;
  *a4 = 0;
  *a3 = 0;
  v8 = cstdlib_strchr(a2, 40);
  if (!v8)
  {
    if (!cstdlib_strchr(v6, 124))
    {
      *v5 = OOCAllocator_Malloc(a1, 8, &v96);
      if (!v96)
      {
        v31 = cstdlib_strlen(v6);
        **v5 = OOCAllocator_Malloc(a1, v31 + 2, &v96);
        if (!v96)
        {
          cstdlib_strcpy(**v5, v6);
          v32 = **v5;
          v32[cstdlib_strlen(v6) + 1] = 0;
          *v4 = 1;
        }
      }

      return v96;
    }

LABEL_8:
    *v4 = 0;
    return v96;
  }

  v9 = v8;
  v10 = cstdlib_strchr(v8 + 2, 37);
  v11 = cstdlib_strchr(v9 + 1, 41);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  while (*(v12 - 1) == 37)
  {
    v12 = cstdlib_strchr(v12 + 1, 41);
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  if (v10 && v10 < v12)
  {
    do
    {
      v14 = v10 + 1;
      if (v10[1] == 34)
      {
        v15 = cstdlib_strchr(v10 + 2, 34);
        if (!v15)
        {
          goto LABEL_8;
        }

        v16 = v15;
        if (v15 > v12)
        {
          for (i = v15 + 1; ; i = v18 + 1)
          {
            v18 = cstdlib_strchr(i, 41);
            v12 = v18;
            if (!v18 || *(v18 - 1) != 37)
            {
              break;
            }
          }
        }

        v14 = v16 + 1;
      }

      v19 = cstdlib_strchr(v14, 37);
      if (!v19)
      {
        break;
      }

      v10 = v19;
    }

    while (v19 < v12);
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  for (j = v9 + 1; ; j = v22 + 1)
  {
    v21 = cstdlib_strchr(j, 40);
    if (!v21)
    {
      break;
    }

    v22 = v21;
    if (v21 >= v12)
    {
      break;
    }

    v23 = cstdlib_strchr(v21 + 1, 37);
    v24 = cstdlib_strchr(v12 + 1, 41);
    if (!v24)
    {
      goto LABEL_8;
    }

    v12 = v24;
    while (*(v12 - 1) == 37)
    {
      v12 = cstdlib_strchr(v12 + 1, 41);
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    if (v23 && v23 < v12)
    {
      do
      {
        v25 = v23 + 1;
        if (v23[1] == 34)
        {
          v26 = cstdlib_strchr(v23 + 2, 34);
          if (!v26)
          {
            goto LABEL_8;
          }

          v27 = v26;
          if (v26 > v12)
          {
            for (k = v26 + 1; ; k = v29 + 1)
            {
              v29 = cstdlib_strchr(k, 41);
              v12 = v29;
              if (!v29 || *(v29 - 1) != 37)
              {
                break;
              }
            }
          }

          v25 = v27 + 1;
        }

        v30 = cstdlib_strchr(v25, 37);
        if (!v30)
        {
          break;
        }

        v23 = v30;
      }

      while (v30 < v12);
      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  v33 = cstdlib_strlen(v12);
  v34 = OOCAllocator_Malloc(a1, v12 - v9, &v96);
  if (!v96)
  {
    v35 = v34;
    v90 = v33;
    cstdlib_strncpy(v34, v9 + 1, v12 - v9 - 1);
    v35[v12 - v9 - 1] = 0;
    LODWORD(v95) = 0;
    v36 = cstdlib_strchr(v35, 124);
    v86 = v35;
    if (v36)
    {
      v37 = v36;
      __s = v35;
      v92 = 0;
      v38 = 0;
      v88 = v5;
      v89 = v4;
      v87 = v6;
      while (1)
      {
        v39 = cstdlib_strchr(v35, 40);
        if (!v39 || v37 <= v39)
        {
          goto LABEL_57;
        }

        v40 = 1;
        do
        {
          v39 = cstdlib_strchr(v39 + 1, 40);
          --v40;
        }

        while (v39 && v37 > v39);
        if (v40 != 1)
        {
          v82 = v38;
          v47 = 0;
          v84 = -v40;
          do
          {
            v48 = cstdlib_strchr(v35 + 1, 37);
            v49 = cstdlib_strchr(v35 + 1, 41);
            if (!v49)
            {
              goto LABEL_85;
            }

            v35 = v49;
            while (*(v35 - 1) == 37)
            {
              v35 = cstdlib_strchr(v35 + 1, 41);
              if (!v35)
              {
                goto LABEL_85;
              }
            }

            if (v48 && v48 < v35)
            {
              do
              {
                v50 = v48 + 1;
                if (v48[1] == 34)
                {
                  v51 = cstdlib_strchr(v48 + 2, 34);
                  if (!v51)
                  {
                    goto LABEL_85;
                  }

                  v52 = v51;
                  if (v51 > v35)
                  {
                    for (m = v51 + 1; ; m = v54 + 1)
                    {
                      v54 = cstdlib_strchr(m, 41);
                      v35 = v54;
                      if (!v54 || *(v54 - 1) != 37)
                      {
                        break;
                      }
                    }
                  }

                  v50 = v52 + 1;
                }

                v55 = cstdlib_strchr(v50, 37);
                if (!v55)
                {
                  break;
                }

                v48 = v55;
              }

              while (v55 < v35);
              if (!v35)
              {
LABEL_85:
                v83 = 0;
                v57 = v92;
                goto LABEL_86;
              }
            }
          }

          while (v84 != v47++);
          v38 = v82;
          if (v37 > v35)
          {
            goto LABEL_57;
          }

          ++v35;
          v46 = __s;
        }

        else
        {
LABEL_57:
          v41 = OOCAllocator_Realloc(a1, v92, 8 * (v38 + 1), &v95);
          v42 = v95;
          if (v95)
          {
            return v42;
          }

          v43 = v41;
          v44 = v37 - __s;
          v45 = OOCAllocator_Malloc(a1, v37 - __s + 2, &v95);
          *(v43 + 8 * v38) = v45;
          v42 = v95;
          if (v95)
          {
            return v42;
          }

          cstdlib_strncpy(v45, __s, v44);
          *(*(v43 + 8 * v38) + v44) = 0;
          v92 = v43;
          *(*(v43 + 8 * v38) + v44 + 1) = 0;
          v35 = v37 + 1;
          ++v38;
          v46 = v37 + 1;
          v6 = v87;
          v5 = v88;
          v4 = v89;
        }

        __s = v46;
        v37 = cstdlib_strchr(v35, 124);
        if (!v37)
        {
          goto LABEL_126;
        }
      }
    }

    __s = v35;
    v92 = 0;
    v38 = 0;
LABEL_126:
    v77 = OOCAllocator_Realloc(a1, v92, 8 * (v38 + 1), &v95);
    v42 = v95;
    if (v95)
    {
      return v42;
    }

    v57 = v77;
    v78 = cstdlib_strlen(__s);
    v79 = OOCAllocator_Malloc(a1, (v78 + 2), &v95);
    *(v57 + 8 * v38) = v79;
    v42 = v95;
    if (v95)
    {
      return v42;
    }

    else
    {
      cstdlib_strcpy(v79, __s);
      *(*(v57 + 8 * v38) + (v78 + 1)) = 0;
      v83 = v38 + 1;
LABEL_86:
      v96 = v95;
      v58 = v86;
      if (!v95)
      {
        *v5 = OOCAllocator_Malloc(a1, 8 * v83, &v96);
        if (!v96)
        {
          *v4 = v83;
          if (v83)
          {
            v59 = 0;
            v60 = 0;
            v81 = v9 - v6;
            __n = (v9 - v6);
            v93 = v57;
            while (1)
            {
              v61 = v59;
              v62 = cstdlib_strlen(*(v57 + 8 * v59));
              v63 = OOCAllocator_Malloc(a1, v90 + 1 + v62 + v81, &v96);
              if (v96)
              {
                break;
              }

              v64 = v63;
              cstdlib_strncpy(v63, v6, __n);
              v85 = v61;
              cstdlib_strcpy(&v64[__n], *(v93 + 8 * v61));
              cstdlib_strcpy(&v64[__n + v62], v12 + 1);
              v64[v62 + v81 + v90] = 0;
              if (cstdlib_strchr(v64, 40))
              {
                v95 = 0;
                v94 = 0;
                v96 = __StringTokenizer_ExpandMultiple(a1, v64, &v95, &v94);
                if (v96)
                {
                  return v96;
                }

                v65 = v94;
                v66 = *v4 + v94 - 1;
                if (v66 > 0x10)
                {
                  if (*v4 < 0x10)
                  {
                    *v5 = OOCAllocator_Realloc(a1, *v5, 128, &v96);
                    if (v96)
                    {
                      return v96;
                    }

                    v67 = v95;
                    if (v65)
                    {
                      v72 = v95;
                      do
                      {
                        v73 = *v72;
                        if (v60 > 0xF)
                        {
                          if (v73)
                          {
                            OOCAllocator_Free(a1, v73);
                            *v72 = 0;
                          }
                        }

                        else
                        {
                          (*v5)[v60++] = v73;
                        }

                        ++v72;
                        --v65;
                      }

                      while (v65);
                    }

                    *v4 = 16;
                  }

                  else
                  {
                    v67 = v95;
                    if (v94)
                    {
                      v69 = 0;
                      v70 = 8 * v94;
                      do
                      {
                        v71 = *(v67 + v69);
                        if (v71)
                        {
                          OOCAllocator_Free(a1, v71);
                          *(v67 + v69) = 0;
                        }

                        v69 += 8;
                      }

                      while (v70 != v69);
                    }
                  }
                }

                else
                {
                  *v4 = v66;
                  *v5 = OOCAllocator_Realloc(a1, *v5, 8 * v66, &v96);
                  if (v96)
                  {
                    return v96;
                  }

                  v67 = v95;
                  if (v65)
                  {
                    v68 = 0;
                    do
                    {
                      (*v5)[v60++] = *(v67 + v68);
                      v68 += 8;
                    }

                    while (8 * v65 != v68);
                  }
                }

                v58 = v86;
                v57 = v93;
                OOCAllocator_Free(a1, v67);
                OOCAllocator_Free(a1, v64);
              }

              else
              {
                (*v5)[v60++] = v64;
                v58 = v86;
                v57 = v93;
              }

              v59 = v85 + 1;
              if (v85 + 1 == v83)
              {
                goto LABEL_118;
              }
            }
          }

          else
          {
LABEL_118:
            if (v58)
            {
              OOCAllocator_Free(a1, v58);
            }

            if (v57)
            {
              v74 = v83;
              if (v83)
              {
                v75 = v57;
                do
                {
                  v76 = *v75++;
                  OOCAllocator_Free(a1, v76);
                  --v74;
                }

                while (v74);
              }

              OOCAllocator_Free(a1, v57);
            }
          }
        }
      }
    }
  }

  return v96;
}

uint64_t StringTokenizer_TokenizeLHString(uint64_t *a1, char *__s, void *a3)
{
  *a3 = 0;
  v6 = __s;
  do
  {
    v8 = *v6++;
    v7 = v8;
  }

  while ((v8 - 32) < 0x5F);
  if (v7)
  {
    result = 0;
    a1[6] = 0;
    return result;
  }

  v10 = cstdlib_strlen(__s);
  a1[6] = v10;
  v11 = 2 * v10 + 2;
  LODWORD(v70[0]) = 0;
  v12 = a1[5];
  if (v12 >= v11)
  {
    v13 = a1[4];
  }

  else
  {
    a1[5] = v11;
    OOCAllocator_Free(a1[1], a1[4]);
    v13 = OOCAllocator_Malloc(a1[1], a1[5], v70);
    a1[4] = v13;
    result = LODWORD(v70[0]);
    if (LODWORD(v70[0]))
    {
      return result;
    }

    v12 = a1[5];
  }

  cstdlib_memset(v13, 0, v12);
  result = LODWORD(v70[0]);
  if (!LODWORD(v70[0]))
  {
    v14 = 2 * a1[6] + 2;
    LODWORD(v70[0]) = 0;
    v15 = a1[3];
    if (v15 >= v14)
    {
      v16 = a1[2];
    }

    else
    {
      a1[3] = v14;
      OOCAllocator_Free(a1[1], a1[2]);
      v16 = OOCAllocator_Malloc(a1[1], a1[3], v70);
      a1[2] = v16;
      result = LODWORD(v70[0]);
      if (LODWORD(v70[0]))
      {
        return result;
      }

      v15 = a1[3];
    }

    cstdlib_memset(v16, 0, v15);
    result = LODWORD(v70[0]);
    if (!LODWORD(v70[0]))
    {
      cstdlib_strcpy(a1[2], __s);
      v71 = 0;
      memset(v70, 0, sizeof(v70));
      v17 = a1[6];
      v18 = a1[4];
      if (v17 >= 1)
      {
        v19 = a1[2];
        v20 = &v19[v17];
        do
        {
          v21 = *v19;
          if (v21 != 32)
          {
            *v18++ = v21;
          }

          ++v19;
        }

        while (v19 < v20);
      }

      *v18 = 0;
      v22 = cstdlib_strlen(a1[4]);
      v23 = str2lhps(a1[4], v70);
      v24 = a1[2];
      if (v23)
      {
        v25 = v23;
        v26 = cstdlib_strlen(v23);
        cstdlib_strcpy(v24, v25);
        v24 += v26;
        v27 = str2lhps(0, v70);
        if (v27)
        {
          v28 = v27;
          do
          {
            *v24 = 32;
            v29 = v24 + 1;
            v30 = cstdlib_strlen(v28);
            cstdlib_strcpy(v29, v28);
            v24 = &v29[v30];
            v26 += v30;
            v28 = str2lhps(0, v70);
          }

          while (v28);
        }
      }

      else
      {
        v26 = 0;
      }

      *v24 = 32;
      v31 = v24 + 1;
      if (v26 == v22)
      {
        v32 = a1[2];
        a1[6] = v31 - v32;
        v33 = cstdlib_strpbrk(v32, "'");
        if (v33)
        {
          v34 = v33;
          cstdlib_memset(a1[4], 0, a1[5]);
          v35 = a1[4];
          do
          {
            v36 = cstdlib_strlen(v34);
            v37 = v36 + 1;
            v38 = cstdlib_strcspn(v34, "'");
            if (v38 >= v36 + 1)
            {
              goto LABEL_62;
            }

            v39 = v38;
            v40 = cstdlib_strcspn(v34, "iyuIYUeo$EO^@aA");
            if (v40 >= v36)
            {
              goto LABEL_62;
            }

            v41 = v40;
            cstdlib_strncpy(v35, v34, v39);
            v42 = v34[v39 + 1];
            if (v42 == 75 || v42 == 70)
            {
              v52 = v39 + 3;
              if (v41 != v39 + 3)
              {
                if (v52 < v41)
                {
                  v53 = v41 - v39 - 3;
                  v54 = &v35[v39];
                  v55 = &v34[v39 + 3];
                  do
                  {
                    v56 = *v55++;
                    *v54++ = v56;
                    --v53;
                  }

                  while (v53);
                  v52 = v41;
                }

                v57 = &v35[v52];
                *(v57 - 3) = 39;
                *(v57 - 2) = v34[v39 + 1];
                *(v57 - 1) = 32;
                if (v52 < v37)
                {
                  v58 = v36 - v52 + 1;
                  v59 = &v34[v52];
                  do
                  {
                    v60 = *v59++;
                    *v57++ = v60;
                    --v58;
                  }

                  while (v58);
                }

                goto LABEL_60;
              }
            }

            else if (v42 == 50)
            {
              v43 = v39 + 3;
              if (v41 != v39 + 3)
              {
                if (v43 < v41)
                {
                  v44 = v41 - v39 - 3;
                  v45 = &v35[v39];
                  v46 = &v34[v39 + 3];
                  do
                  {
                    v47 = *v46++;
                    *v45++ = v47;
                    --v44;
                  }

                  while (v44);
                  v43 = v41;
                }

                v48 = &v35[v43];
                *(v48 - 3) = 12839;
                *(v48 - 1) = 32;
                if (v43 < v37)
                {
                  v49 = v36 - v43 + 1;
                  v50 = &v34[v43];
                  do
                  {
                    v51 = *v50++;
                    *v48++ = v51;
                    --v49;
                  }

                  while (v49);
                }

LABEL_60:
                cstdlib_strcpy(v34, v35);
              }
            }

            else
            {
              v61 = v39 + 2;
              if (v41 != v39 + 2)
              {
                if (v61 < v41)
                {
                  v62 = v41 - v39 - 2;
                  v63 = &v35[v39];
                  v64 = &v34[v39 + 2];
                  do
                  {
                    v65 = *v64++;
                    *v63++ = v65;
                    --v62;
                  }

                  while (v62);
                  v61 = v41;
                }

                v66 = &v35[v61];
                *&v35[v61 - 2] = 8231;
                if (v61 < v37)
                {
                  v67 = v36 - v61 + 1;
                  v68 = &v34[v61];
                  do
                  {
                    v69 = *v68++;
                    *v66++ = v69;
                    --v67;
                  }

                  while (v67);
                }

                goto LABEL_60;
              }
            }

            cstdlib_strcpy(v35, &__StringTokenizer_MoveStressMarkerInScratchArray_szEmpty);
LABEL_62:
            v34 = cstdlib_strpbrk(v34 + 1, "'");
          }

          while (v34);
        }

        result = 0;
        *a3 = a1[2];
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t PNEW_StringTokenizer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 56, &v8);
  result = v8;
  if (!v8)
  {
    result = StringTokenizer_Con(v6, a2);
    v8 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *a3 = v6;
    }
  }

  return result;
}

uint64_t abbrtn_checkIfBisectedbyTokenType(uint64_t a1, unsigned int a2, unsigned int a3, int a4, _DWORD *a5)
{
  v20 = 0;
  *a5 = 0;
  LDO_GetLabels(*(a1 + 192), &v18);
  v9 = 0;
  v10 = v18.n128_u64[1];
  v11 = v19;
  if (v18.n128_u64[1] < v19)
  {
    do
    {
      v18.n128_u32[0] = 0;
      U32Attribute = LDOObject_GetU32Attribute(*v10, "_TTYPE", &v18, &v20);
      v9 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(*v10);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(*v10);
      if (v18.n128_u32[0] == 1 && v20 == a4)
      {
        v16 = AbsoluteFrom < a2 || AbsoluteFrom >= a3;
        if (!v16 || AbsoluteTo > a2 && AbsoluteTo <= a3)
        {
          *a5 = 1;
          return v9;
        }
      }

      ++v10;
    }

    while (v10 < v11);
  }

  return v9;
}

uint64_t abbrtn_checkIfSubsumedbyOtherToken(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, _DWORD *a6)
{
  v24 = 0;
  *a6 = 0;
  LDO_GetLabels(*(a1 + 192), &v22);
  v10 = 0;
  v12 = v22.n128_u64[1];
  v11 = v23;
  if (v22.n128_u64[1] < v23)
  {
    do
    {
      v13 = *v12;
      v22.n128_u32[0] = 0;
      U32Attribute = LDOObject_GetU32Attribute(v13, "_TTYPE", &v22, &v24);
      v10 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v10 & 0x80000000) != 0)
      {
        break;
      }

      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v13);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(v13);
      if (v22.n128_u32[0] == 1)
      {
        v17 = AbsoluteFrom == a2 && AbsoluteTo == a3;
        v18 = v17;
        v19 = v24 == a4 && v18;
        if (v24 == a5 && !v19 && AbsoluteFrom <= a2 && AbsoluteTo >= a3 && !v18)
        {
          *a6 = 1;
          return v10;
        }
      }

      ++v12;
    }

    while (v12 < v11);
  }

  return v10;
}

uint64_t abbrtn_TnLookup(void *a1, const char *a2, int a3, __int16 a4, const char *a5, uint64_t a6)
{
  v9 = a3;
  v109 = *MEMORY[0x277D85DE8];
  v87 = a3 - 1;
  v97 = a3 - 1;
  v95 = 0uLL;
  v96 = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  cstdlib_strcpy(__dst, "");
  cstdlib_strcpy(__src, "");
  cstdlib_strcpy(v106, "");
  cstdlib_strcpy(__s2, "");
  cstdlib_strcpy(__s, "");
  cstdlib_strcpy(v103, "");
  v12 = LDO_ComputeNodesCoveredByLabel(a1[24], a6, &v95);
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = (v96 - v95.n128_u64[1]) >> 3;
  if (!v14 || (v86 = a2, a4 < 1))
  {
LABEL_142:
    if (v14)
    {
      goto LABEL_143;
    }

    return v13;
  }

  v15 = 0;
  v84 = a4;
  v85 = 3;
  v83 = a5;
  while (1)
  {
    while (1)
    {
      v16 = *(v95.n128_u64[1] + 8 * v15);
      v17 = abbrtn_checkForTokens(a1, v16, v9, &v91 + 1, &v91, &v90 + 1, &v89 + 1);
      if (v17 < 0)
      {
LABEL_147:
        LODWORD(v13) = v17;
        goto LABEL_143;
      }

      v18 = v14;
      v100 = 0;
      LODWORD(v90) = 0;
      LDO_GetLabels(a1[24], &v98);
      LODWORD(v13) = 0;
      v19 = v98.n128_u64[1];
      v20 = v99;
      while (v19 < v20)
      {
        v21 = *v19;
        v101 = 0;
        U32Attribute = LDOObject_GetU32Attribute(v21, "_TTYPE", &v101, &v100);
        LODWORD(v13) = LH_ERROR_to_VERROR(U32Attribute);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_143;
        }

        if (v101 == 1 && v100 == 4)
        {
          v24 = LDOLabel_ContainsNode(v21, v16, &v90);
          LODWORD(v13) = LH_ERROR_to_VERROR(v24);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }

          if (v90 == 1)
          {
            break;
          }
        }

        ++v19;
      }

      v25 = v15;
      v14 = v18;
      if (HIDWORD(v90) != 1)
      {
        break;
      }

      if (HIDWORD(v89) == 1)
      {
        v82 = HIWORD(v91);
        v26 = 6;
        v27 = v91;
        goto LABEL_27;
      }

LABEL_21:
      ++v15;
      if (v25 + 1 >= v18)
      {
        goto LABEL_143;
      }
    }

    if (v90 == 1)
    {
      goto LABEL_21;
    }

    v28 = LDOTreeNode_ComputeAbsoluteFrom(v16, &v93);
    v17 = LH_ERROR_to_VERROR(v28);
    if (v17 < 0)
    {
      goto LABEL_147;
    }

    v82 = v93;
    v29 = LDOTreeNode_ComputeAbsoluteTo(v16, &v92);
    v17 = LH_ERROR_to_VERROR(v29);
    if (v17 < 0)
    {
      goto LABEL_147;
    }

    v27 = v92;
    v30 = LDOObject_GetU32Attribute(v16, "_TTYPE", &v94, &v94 + 1);
    v17 = LH_ERROR_to_VERROR(v30);
    if (v17 < 0)
    {
      goto LABEL_147;
    }

    v26 = HIDWORD(v94);
LABEL_27:
    v13 = abbrtn_checkForTokens(a1, v16, v27, &v91 + 1, &v91, &v89, &v89 + 1);
    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_143;
    }

    v31 = v25 + 1;
    if (v25 + 1 >= v18)
    {
      v32 = 9999;
      v80 = 3;
    }

    else if (v89 == 1)
    {
      v80 = 1;
      v32 = v25 + 1;
    }

    else
    {
      v32 = v25 + 1;
      v33 = *(v95.n128_u64[1] + 8 * v31);
      v34 = LDOObject_GetU32Attribute(v33, "_TTYPE", &v94, &v94 + 1);
      v17 = LH_ERROR_to_VERROR(v34);
      if (v17 < 0)
      {
        goto LABEL_147;
      }

      v80 = HIDWORD(v94);
      v35 = LDOTreeNode_ComputeAbsoluteTo(v33, &v93 + 1);
      v13 = LH_ERROR_to_VERROR(v35);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_143;
      }

      v31 = v25 + 1;
    }

    LOWORD(v36) = v87;
    v37 = v82;
    v81 = v26;
    if (v82 <= v87)
    {
      v43 = v84;
      goto LABEL_48;
    }

    if (v85 != 3)
    {
      v43 = v84;
      goto LABEL_127;
    }

    v79 = v27;
    v38 = v86;
    if (v26 != 3)
    {
      break;
    }

    v43 = v84;
LABEL_124:
    v27 = v79;
LABEL_127:
    if (v37 > v36 && !v81 && (v85 != 3 || v80 != 3))
    {
      v78 = v31;
      v69 = *(v95.n128_u64[1] + 8 * v25);
      v70 = LDOTreeNode_ComputeAbsoluteFrom(v69, &v93);
      v17 = LH_ERROR_to_VERROR(v70);
      if (v17 < 0)
      {
        goto LABEL_147;
      }

      v71 = v93;
      v72 = LDOTreeNode_ComputeAbsoluteTo(v69, &v93 + 1);
      v13 = LH_ERROR_to_VERROR(v72);
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_143;
      }

      v73 = WORD2(v93) - v71;
      if (v73 > 127)
      {
        v82 = v71;
        v43 = v84;
      }

      else
      {
        cstdlib_strncpy(v106, &v86[v71], WORD2(v93) - v71);
        v106[v73] = 0;
        cstdlib_strcpy(v103, v106);
        v13 = (*(a1[8] + 104))(a1[6], a1[7], v83, v103, 128);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_143;
        }

        v43 = v84;
        if (cstdlib_strcmp(__s2, v103))
        {
          v98 = v95;
          v99 = v96;
          v13 = abbrtn_Lookup(a1, v103, v106, v83, v86, v71, v25, &v97, &v98);
          if ((v13 & 0x80000000) != 0)
          {
            goto LABEL_143;
          }
        }

        v82 = v71;
      }

      v31 = v78;
    }

LABEL_48:
    v44 = v97;
    if (v97 < v82)
    {
      v44 = v27;
    }

    if (HIDWORD(v90) == 1)
    {
      v15 = v25;
    }

    else
    {
      v15 = v31;
    }

    v97 = v44 - 1;
    if (v15 < v14)
    {
      v87 = v44 - 1;
      v9 = v44;
      v85 = v81;
      if (v44 < v43)
      {
        continue;
      }
    }

    goto LABEL_142;
  }

  v39 = 0;
  v40 = v82;
  while (1)
  {
    v41 = v86[v40];
    v42 = v41 > 0x20 || ((1 << v41) & 0x100002601) == 0;
    if (!v42 || v41 == 95)
    {
      break;
    }

    ++v40;
    __dst[v39++] = v41;
    if (v39 == 128)
    {
      v43 = v84;
LABEL_126:
      v27 = v79;
      v37 = v82;
      goto LABEL_127;
    }
  }

  __dst[v39] = 0;
  cstdlib_strcpy(__src, __dst);
  v98.n128_u64[0] = 0;
  LOWORD(v101) = 0;
  cstdlib_memset(__b, 0, 0x40uLL);
  v13 = (*(a1[8] + 120))(a1[6], a1[7], __src, 255, "femwtn", v83, &v98, &v101);
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_143;
  }

  if (v101)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = LH_atou(*(v98.n128_u64[0] + 8 * v46));
      if (v47 <= 0x3F)
      {
        __b[v45++] = v47;
      }

      ++v46;
    }

    while (v46 < v101);
    ssft_qsort(__b, v45, 1, compare);
    v38 = v86;
    if (v45)
    {
      v77 = v31;
      v48 = 0;
      v36 = v87;
      do
      {
        v88 = v36;
        if (v32 == 9999)
        {
LABEL_65:
          v32 = 9999;
        }

        else if (__b[v48])
        {
          while (1)
          {
            v49 = LDOObject_GetU32Attribute(*(v95.n128_u64[1] + 8 * v32), "_TTYPE", &v94, &v94 + 1);
            v13 = LH_ERROR_to_VERROR(v49);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_143;
            }

            v50 = v32 + 1;
            if (v32 + 1 >= v18 || v32 == 9998)
            {
              v80 = 0;
              goto LABEL_65;
            }

            ++v32;
            if (!__b[v48])
            {
              v80 = 0;
              v32 = v50;
              break;
            }
          }
        }

        v51 = __b[v48];
        if (__b[v48])
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = v86[v82];
          v56 = v82;
          while (1)
          {
            if (!v55)
            {
              v54 = v52;
LABEL_95:
              v64 = v56;
              goto LABEL_96;
            }

            __src[v52] = v55;
            if (v52 == 255)
            {
              break;
            }

            v57 = &v86[++v56];
            v55 = *v57;
            v58 = v55 > 0x20 || ((1 << v55) & 0x100002600) == 0;
            if (!v58 || v55 == 95)
            {
              v59 = *(v57 - 1);
              v60 = v59 == 95 ? v53 : v53 + 1;
              v61 = v59 > 0x20;
              v62 = (1 << v59) & 0x100002600;
              if (v61 || v62 == 0)
              {
                v53 = v60;
              }
            }

            ++v52;
            ++v54;
            if (v51 <= v53)
            {
              goto LABEL_95;
            }
          }

          v36 = v88;
        }

        else
        {
          v54 = 0;
          LOBYTE(v53) = 0;
          v64 = v82;
LABEL_96:
          __src[v54] = 0;
          v36 = v88;
          if (!v86[v64])
          {
            v65 = v86[v64 - 1];
            v66 = v65 > 0x20 || ((1 << v65) & 0x100002600) == 0;
            if (v66 && v65 != 95)
            {
              LOBYTE(v53) = v53 + 1;
            }
          }

          if (v51 == v53)
          {
            cstdlib_strcpy(__s, __src);
            v17 = (*(a1[8] + 112))(a1[6], a1[7], v83, __s, 256);
            if (v17 < 0)
            {
              goto LABEL_147;
            }

            v98 = v95;
            v99 = v96;
            v13 = abbrtn_Lookup(a1, __s, __src, v83, v86, v82, v25, &v97, &v98);
            if ((v13 & 0x80000000) != 0)
            {
              goto LABEL_143;
            }

            v36 = v97;
          }
        }

        ++v48;
      }

      while (v48 < v45 && v82 > v36);
      v67 = v83;
      v43 = v84;
      v31 = v77;
      if (v82 > v36)
      {
        goto LABEL_117;
      }

      goto LABEL_119;
    }
  }

  else
  {
    ssft_qsort(__b, 0, 1, compare);
  }

  v67 = v83;
  v43 = v84;
LABEL_117:
  v98 = v95;
  v99 = v96;
  v13 = abbrtn_Lookup(a1, __dst, __dst, v67, v38, v82, v25, &v97, &v98);
  if ((v13 & 0x80000000) == 0)
  {
    LOWORD(v36) = v97;
LABEL_119:
    v37 = v82;
    if (v82 <= v36)
    {
      goto LABEL_124;
    }

    v68 = v36;
    cstdlib_strcpy(__s2, __dst);
    v13 = (*(a1[8] + 112))(a1[6], a1[7], v67, __s2, 128);
    if ((v13 & 0x80000000) == 0)
    {
      if (cstdlib_strcmp(__dst, __s2))
      {
        v98 = v95;
        v99 = v96;
        v13 = abbrtn_Lookup(a1, __s2, __dst, v67, v38, v82, v25, &v97, &v98);
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_143;
        }

        LOWORD(v36) = v97;
      }

      else
      {
        LOWORD(v36) = v68;
      }

      goto LABEL_126;
    }
  }

LABEL_143:
  v74 = LDO_FreeLDOTreeNodeVector(a1[24], &v95);
  v75 = LH_ERROR_to_VERROR(v74);
  if (v13 >= 0)
  {
    return v75;
  }

  else
  {
    return v13;
  }
}

uint64_t abbrtn_checkForTokens(uint64_t a1, uint64_t a2, int a3, _WORD *a4, _WORD *a5, _DWORD *a6, _DWORD *a7)
{
  v25 = 0;
  *a6 = 0;
  *a7 = 0;
  LDO_GetLabels(*(a1 + 192), &v23);
  v12 = 0;
  v14 = v23.n128_u64[1];
  v13 = v24;
  if (v23.n128_u64[1] < v24)
  {
    do
    {
      v15 = *v14;
      v23.n128_u32[0] = 0;
      U32Attribute = LDOObject_GetU32Attribute(v15, "_TTYPE", &v23, &v25);
      v12 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v12 & 0x80000000) != 0)
      {
        break;
      }

      if (v23.n128_u32[0] == 1 && v25 == 6)
      {
        v18 = LDOLabel_ContainsNode(v15, a2, a6);
        v12 = LH_ERROR_to_VERROR(v18);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        if (*a6 == 1)
        {
          AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v15);
          AbsoluteTo = LDOLabel_GetAbsoluteTo(v15);
          if (AbsoluteFrom == a3)
          {
            *a4 = a3;
            *a5 = AbsoluteTo;
            *a7 = 1;
          }

          return v12;
        }
      }

      ++v14;
    }

    while (v14 < v13);
  }

  return v12;
}

uint64_t abbrtn_Lookup(uint64_t a1, char *__s, char *a3, const char *a4, const char *a5, int a6, unsigned int a7, unsigned __int16 *a8, uint64_t a9)
{
  v15 = __s;
  v264 = *MEMORY[0x277D85DE8];
  v261 = 0;
  v258 = 0;
  v259 = 0;
  if (__s && !cstdlib_strlen(__s))
  {
    return 0;
  }

  v246 = a4;
  v17 = cstdlib_strlen(a3) + a6;
  *__dst = 0;
  v250 = a6;
  v249 = cstdlib_strlen(a3) + a6;
  if (v15 && cstdlib_strcmp(v15, a3))
  {
    v242 = a8;
    v18 = v15;
    for (i = &a5[a6]; (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), i); i = &a5[a6])
    {
      a6 += utf8_determineUTF8CharLength(*i);
    }

    PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a5, v249);
    v21 = &a5[PreviousUtf8Offset];
    v22 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), &a5[PreviousUtf8Offset]);
    if (PreviousUtf8Offset && v22)
    {
      do
      {
        PreviousUtf8Offset = utf8_GetPreviousUtf8Offset(a5, PreviousUtf8Offset);
        v21 = &a5[PreviousUtf8Offset];
        v23 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), &a5[PreviousUtf8Offset]);
      }

      while (PreviousUtf8Offset && v23);
    }

    utf8_determineUTF8CharLength(*v21);
    v15 = v18;
    a8 = v242;
  }

  v262 = 0;
  v260 = 0;
  v27 = abbrtn_checkIfSubsumedbyOtherToken(a1, a6, v17, 4, 6, __dst);
  if ((v27 & 0x80000000) == 0)
  {
    if (*__dst == 1)
    {
      v28 = *(*(a1 + 16) + 32);
      v29 = "BLOCK Creating TN DCT token record for %s %d,%d bSubsumed=%d";
      v227 = a3;
      goto LABEL_15;
    }

    v30 = *(*(a9 + 8) + 8 * a7);
    v31 = LDOTreeNode_ComputeAbsoluteFrom(v30, &v259);
    v32 = LH_ERROR_to_VERROR(v31);
    if ((v32 & 0x80000000) != 0)
    {
      return v32;
    }

    v33 = LDOTreeNode_ComputeAbsoluteTo(v30, &v258);
    v32 = LH_ERROR_to_VERROR(v33);
    if ((v32 & 0x80000000) != 0)
    {
      return v32;
    }

    log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "TN look up %s", v34, v35, v36, v15);
    LODWORD(v227) = 0;
    v37 = (*(*(a1 + 64) + 240))(*(a1 + 48), *(a1 + 56), "tn", v15, &v262, &v261, &v260, *(a1 + 112));
    v27 = v37;
    if ((v37 & 0x80000000) != 0 || !v261)
    {
      return v27;
    }

    NextTOKEN_INT_TNPos = v37;
    v38 = 0;
    k = 0;
    v236 = a3 - 1;
    v234 = v250;
    v235 = "";
    v239 = 1;
    v40 = v246;
    v241 = v15;
    v243 = a8;
LABEL_21:
    v247 = v38;
    __sa = *(v262 + 8 * k);
    v41 = cstdlib_strchr(__sa, v260);
    if (v41)
    {
      *v41 = 0;
      v244 = v41 + 1;
      v46 = cstdlib_strchr(v41 + 1, v260);
      v47 = v46;
      if (v46)
      {
        *v46 = 0;
        v47 = v46 + 1;
        v48 = cstdlib_strchr(v46 + 1, v260);
        v49 = v48;
        if (v48)
        {
          *v48 = 0;
          v49 = v48 + 1;
          v50 = cstdlib_strchr(v48 + 1, v260);
          v51 = v50;
          if (v50)
          {
            *v50 = 0;
            v51 = v50 + 1;
            v52 = cstdlib_strchr(v50 + 1, v260);
            if (v52)
            {
              *v52 = 0;
              __s1 = (v52 + 1);
              v53 = cstdlib_strchr(v52 + 1, v260);
              if (v53)
              {
                *v53 = 0;
              }

LABEL_32:
              v54 = *(*(a1 + 16) + 32);
              if (!__sa)
              {
                v27 = 2310021127;
                log_OutPublic(v54, "FE_ABBRTN", 32001, 0, v42, v43, v44, v45, v227);
                return v27;
              }

              log_OutText(v54, "FE_ABBRTN", 5, 0, "TN Validating %s", v43, v44, v45, __sa);
              if (v47 && cstdlib_strcmp(v47, ""))
              {
                if ((v55 = cstdlib_strstr(v47, v40)) == 0 || (v56 = v55, v57 = cstdlib_strlen(v40), v56 != v47) && *(v56 - 1) != 44 || v56[v57] && v56[v57] != 44)
                {
                  v62 = *(*(a1 + 16) + 32);
                  v63 = "TN Domain validation not OK";
                  goto LABEL_134;
                }
              }

              if (!v51)
              {
LABEL_140:
                v97 = v241;
                goto LABEL_141;
              }

              if (!cstdlib_strcmp(v51, "8"))
              {
                v62 = *(*(a1 + 16) + 32);
                v63 = "TN expansion only valid within regexps";
                goto LABEL_134;
              }

              v240 = k;
              if (!cstdlib_strcmp(v51, "1") || !cstdlib_strcmp(v51, "4") || !cstdlib_strcmp(v51, "5") || !cstdlib_strcmp(v51, "7"))
              {
                if (v49 && cstdlib_strcmp(v49, ""))
                {
                  v58 = cstdlib_strlen(a3);
                  if (v58 < 1)
                  {
                    v61 = &a3[v58];
                  }

                  else
                  {
                    v59 = &v236[v58];
                    while (v59 > a3)
                    {
                      v60 = *v59--;
                      if (v60 >= -64)
                      {
                        v61 = v59 + 1;
                        goto LABEL_70;
                      }
                    }

                    v61 = a3;
                  }

LABEL_70:
                  v69 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v61);
                  if (v61)
                  {
                    do
                    {
                      v70 = v61;
                      if (!v69)
                      {
                        break;
                      }

                      if (v61 <= a3)
                      {
                        goto LABEL_78;
                      }

                      v71 = v61 - 1;
                      while (v71 > a3)
                      {
                        v72 = *v71--;
                        if (v72 >= -64)
                        {
                          v61 = v71 + 1;
                          goto LABEL_78;
                        }
                      }

                      v61 = a3;
LABEL_78:
                      v69 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v61);
                    }

                    while (v61 != v70);
                  }

                    ;
                  }

                    ;
                  }

                  if (j <= v61)
                  {
                    do
                    {
                      v74 = abbrtn_compareUtf8Char(j, v49);
                      v75 = utf8_determineUTF8CharLength(*j);
                      v49 += utf8_determineUTF8CharLength(*v49);
                      if (v74)
                      {
                        break;
                      }

                      j += v75;
                    }

                    while (j <= v61);
                    v67 = v74 == 0;
                    k = v240;
                  }

                  else
                  {
                    v67 = 1;
                  }

                  v40 = v246;
                  if (v67 && *v49)
                  {
                    do
                    {
                      v76 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v49);
                      v49 += utf8_determineUTF8CharLength(*v49);
                      if (v76)
                      {
                        v77 = *v49 == 0;
                      }

                      else
                      {
                        v77 = 1;
                      }
                    }

                    while (!v77);
                    v67 = v76 != 0;
                  }

LABEL_96:
                  if (!v67)
                  {
                    v62 = *(*(a1 + 16) + 32);
                    v63 = "TN Case validation not OK";
                    goto LABEL_134;
                  }

                  goto LABEL_97;
                }

                v64 = *a3;
                if (*a3)
                {
                  v65 = a3;
                  do
                  {
                    v67 = 0;
                    if ((v64 - 97) >= 0x1Au)
                    {
                      if (v64 != 195 || (v65[1] - 133 <= 0x37 ? (v66 = ((1 << (v65[1] + 123)) & 0x82101780000001) == 0) : (v66 = 1), v66))
                      {
                        v67 = 1;
                      }
                    }

                    v68 = utf8_determineUTF8CharLength(v64);
                    if (!v67)
                    {
                      break;
                    }

                    v65 += v68;
                    v64 = *v65;
                  }

                  while (*v65);
                  k = v240;
                  goto LABEL_96;
                }
              }

LABEL_97:
              if (cstdlib_strcmp(v51, "3") && cstdlib_strcmp(v51, "5") && cstdlib_strcmp(v51, "6") && cstdlib_strcmp(v51, "7"))
              {
                goto LABEL_136;
              }

              v78 = cstdlib_strlen(a3);
              v79 = cstdlib_strlen(a3);
              if (v79 < 1)
              {
                v82 = &a3[v79];
              }

              else
              {
                v80 = &v236[v79];
                do
                {
                  if (v80 <= a3)
                  {
                    v82 = a3;
                    goto LABEL_109;
                  }

                  v81 = *v80--;
                }

                while (v81 < -64);
                v82 = v80 + 1;
              }

LABEL_109:
              v83 = v78 - cstdlib_strlen(v82);
              NextUtf8Offset = v83;
              v85 = v83;
              v86 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), &a3[v83]);
              if (NextUtf8Offset && v86)
              {
                do
                {
                  v87 = utf8_GetPreviousUtf8Offset(a3, NextUtf8Offset);
                  v85 = v87;
                  NextUtf8Offset = v87;
                  v88 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), &a3[v87]);
                }

                while (v85 && v88);
              }

              v89 = cstdlib_strlen(a3);
              v90 = cstdlib_strlen(a3);
              if (v90 < 1)
              {
                v93 = &a3[v90];
              }

              else
              {
                v91 = &v236[v90];
                while (v91 > a3)
                {
                  v92 = *v91--;
                  if (v92 >= -64)
                  {
                    v93 = v91 + 1;
                    goto LABEL_120;
                  }
                }

                v93 = a3;
              }

LABEL_120:
              if (v89 - cstdlib_strlen(v93) != v85)
              {
                NextUtf8Offset = utf8_GetNextUtf8Offset(a3, NextUtf8Offset);
              }

              v40 = v246;
              k = v240;
              if (v49 && cstdlib_strcmp(v49, ""))
              {
                v94 = cstdlib_strlen(v49);
                if (v94 < 1)
                {
                  v49 += v94;
                }

                else
                {
                  v95 = &v49[v94 - 1];
                  do
                  {
                    if (v95 <= v49)
                    {
                      goto LABEL_132;
                    }

                    v96 = *v95--;
                  }

                  while (v96 < -64);
                  v49 = v95 + 1;
                }

LABEL_132:
                if (abbrtn_compareUtf8Char(&a3[NextUtf8Offset], v49))
                {
                  v62 = *(*(a1 + 16) + 32);
                  v63 = "Punctuation validation not OK";
                  goto LABEL_134;
                }

LABEL_136:
                if (cstdlib_strcmp(v51, "2") && cstdlib_strcmp(v51, "4") && cstdlib_strcmp(v51, "6") && cstdlib_strcmp(v51, "7"))
                {
                  goto LABEL_140;
                }

                v257 = 0;
                LOWORD(v254) = 0;
                v101 = cstdlib_strlen(a5);
                v102 = cstdlib_strlen(a5);
                if (v102 < 1)
                {
                  v105 = &a5[v102];
                }

                else
                {
                  v103 = &a5[v102 - 1];
                  do
                  {
                    if (v103 <= a5)
                    {
                      v105 = a5;
                      goto LABEL_163;
                    }

                    v104 = *v103--;
                  }

                  while (v104 < -64);
                  v105 = v103 + 1;
                }

LABEL_163:
                v107 = cstdlib_strlen(v105);
                v256 = 0;
                BYTE4(v251) = 0;
                LOWORD(v253) = 0;
                LOWORD(v252) = 0;
                v255 = 0;
                cstdlib_strcpy(__dst, "disambiguate_abbreviations");
                v231 = cstdlib_strlen(__dst);
                if (!v234)
                {
                  goto LABEL_185;
                }

                v108 = 0;
                v109 = -v234;
                v110 = &a5[v234];
                v111 = v110;
                do
                {
                  v113 = *--v111;
                  v112 = v113;
                  v114 = (1 << v113) & 0x100002600;
                  v115 = v113 > 0x20 || v114 == 0;
                  if (!v115 || v112 == 95)
                  {
                    v116 = *v110;
                    v117 = v116 == 95 ? v108 : v108 + 1;
                    v153 = v116 > 0x20;
                    v118 = (1 << v116) & 0x100002600;
                    if (v153 || v118 == 0)
                    {
                      v108 = v117;
                    }
                  }

                  v120 = v109 + 1;
                  if (v108 > 3u)
                  {
                    break;
                  }

                  v110 = v111;
                  ++v109;
                }

                while (v109);
                if (v120)
                {
                  v238 = utf8_determineUTF8CharLength(a5[-v120]) - v120;
                }

                else
                {
LABEL_185:
                  v238 = 0;
                }

                v121 = (v101 - v107);
                if (v121 >= v234)
                {
                  v172 = 0;
                  LOBYTE(v173) = a5[v234];
                  v123 = v234;
                  do
                  {
                    v123 += utf8_determineUTF8CharLength(v173);
                    v174 = &a5[v123];
                    v173 = *v174;
                    v175 = v173 > 0x20 || ((1 << v173) & 0x100002600) == 0;
                    if (!v175 || v173 == 95)
                    {
                      v176 = *(v174 - 1);
                      v177 = v176 == 95 ? v172 : v172 + 1;
                      v153 = v176 > 0x20;
                      v178 = (1 << v176) & 0x100002600;
                      if (v153 || v178 == 0)
                      {
                        v172 = v177;
                      }
                    }

                    v122 = v123;
                  }

                  while (v172 <= 3u && v121 >= v123);
                }

                else
                {
                  v122 = v234;
                  LOWORD(v123) = v234;
                }

                v124 = *(*(a1 + 16) + 8);
                v125 = *(a1 + 96);
                v126 = v122 - v238;
                v127 = cstdlib_strlen(__sa);
                v128 = v126 + 25;
                v129 = heap_Realloc(v124, v125, (v128 + v127));
                if (v129 && (*(a1 + 96) = v129, cstdlib_strcpy(v129, ""), v134 = *(*(a1 + 16) + 8), v135 = *(a1 + 104), v136 = cstdlib_strlen(__sa), (v137 = heap_Realloc(v134, v135, (v128 + v136))) != 0))
                {
                  *(a1 + 104) = v137;
                  cstdlib_strcpy(v137, "");
                  v138 = cstdlib_strlen(a3);
                  v139 = &a5[v234];
                  LOWORD(v140) = v234;
                  if ((*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v139))
                  {
                    v140 = v234;
                    do
                    {
                      v140 += utf8_determineUTF8CharLength(*v139);
                      v139 = &a5[v140];
                    }

                    while ((*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v139));
                  }

                  v141 = utf8_GetPreviousUtf8Offset(a5, (v234 + v138));
                  v142 = v141;
                  v143 = &a5[v141];
                  v144 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v143);
                  k = v240;
                  if (v141 && v144)
                  {
                    do
                    {
                      v141 = utf8_GetPreviousUtf8Offset(a5, v142);
                      v142 = v141;
                      v143 = &a5[v141];
                      v145 = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v143);
                    }

                    while (v141 && v145);
                  }

                  v146 = utf8_determineUTF8CharLength(*v143);
                  NextTOKEN_INT_TNPos = getNextTOKEN_INT_TNPos(a1, &v253, &v252, &v256, v238, v123, &v255);
                  if ((NextTOKEN_INT_TNPos & 0x80000000) == 0)
                  {
                    if (v238 < v123)
                    {
                      v147 = v146 + v141;
                      v230 = v147;
                      v148 = v238;
                      v40 = v246;
                      v233 = v147;
                      while (1)
                      {
                        v149 = v253;
                        v150 = v252;
                        if (v255 == 1 && v253 == v238 && v252 == v123)
                        {
                          addToLayer(a1, a5, v238, v123, __sa, v244, &v251 + 4);
                          v255 = 0;
                          v234 = v238;
LABEL_289:
                          v97 = v241;
                          a8 = v243;
                          if (BYTE4(v251) <= 0x13u)
                          {
                            goto LABEL_274;
                          }

                          goto LABEL_292;
                        }

                        if (v255 != 1)
                        {
                          break;
                        }

                        if (v253 >= v140 && v148 <= v140 && v148 <= v253)
                        {
                          goto LABEL_227;
                        }

                        v151 = v148 > v253;
                        if (v230 > v148)
                        {
                          v151 = 1;
                        }

                        v153 = v148 <= v253 && v148 < v140 && v140 > v253;
                        if (!v153 && v151)
                        {
LABEL_291:
                          addToLayer(a1, a5, v148, v123, 0, 0, &v251 + 4);
                          v97 = v241;
                          a8 = v243;
                          if (BYTE4(v251) <= 0x13u)
                          {
                            goto LABEL_274;
                          }

LABEL_292:
                          v99 = *(*(a1 + 16) + 32);
                          v100 = "Context validation not OK";
LABEL_293:
                          log_OutText(v99, "FE_ABBRTN", 5, 0, v100, v24, v25, v26, v227);
LABEL_135:
                          v38 = v247;
LABEL_154:
                          if (++k >= v261 || v38 >= 2)
                          {
                            v27 = NextTOKEN_INT_TNPos;
                            if (!v38)
                            {
                              return v27;
                            }

                            if (v38 == 1)
                            {
                              *a8 = v249;
                              v199 = v249;
                              v255 = v249;
                              LODWORD(v256) = 0;
                              v254 = v249;
                              if (v97)
                              {
                                v200 = v250;
                                if (cstdlib_strcmp(v97, a3))
                                {
                                  v201 = &a5[v250];
                                  for (m = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v201); m; m = (*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), v201))
                                  {
                                    v200 += utf8_determineUTF8CharLength(*v201);
                                    v201 = &a5[v200];
                                  }

                                  do
                                  {
                                    v199 = utf8_GetPreviousUtf8Offset(a5, v199);
                                    if ((*(*(a1 + 64) + 128))(*(a1 + 48), *(a1 + 56), &a5[v199]))
                                    {
                                      v203 = v199 == 0;
                                    }

                                    else
                                    {
                                      v203 = 1;
                                    }
                                  }

                                  while (!v203);
                                  v255 = v199 + utf8_determineUTF8CharLength(a5[v199]);
                                }
                              }

                              else
                              {
                                LOWORD(v200) = v250;
                              }

                              v204 = LDO_CountLeafNodesOnRange(*(a1 + 192), &v255, &v254, &v256, &v255);
                              v32 = LH_ERROR_to_VERROR(v204);
                              if ((v32 & 0x80000000) != 0)
                              {
                                return v32;
                              }

                              v208 = v249;
                              if (v256)
                              {
                                v208 = v255;
                              }

                              v209 = v208;
                              log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "Creating TN DCT token record for %s %d,%d %s", v205, v206, v207, a3);
                              *__dst = 0;
                              v257 = 0;
                              v252 = v209;
                              v253 = v200;
                              v251 = 0;
                              LODWORD(v256) = 0;
                              v210 = LDO_CountLeafNodesOnRange(*(a1 + 192), &v253, &v252, &v256, 0);
                              v32 = LH_ERROR_to_VERROR(v210);
                              if ((v32 & 0x80000000) != 0)
                              {
                                return v32;
                              }

                              if (v252 <= v253 || v256)
                              {
                                v220 = *(a1 + 192);
                                v221 = &v253;
                                v222 = &v252;
LABEL_328:
                                v223 = LDO_AddLabelOnSubstring(v220, "TOKEN", "TOKEN", v221, v222, __dst);
                                v27 = LH_ERROR_to_VERROR(v223);
                                if ((v27 & 0x80000000) != 0)
                                {
                                  return v27;
                                }
                              }

                              else
                              {
                                log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "No node in the given range => attempting to find a containing node", v211, v212, v213, v228);
                                v214 = LDO_ComputeLeafNodeContainingRange(*(a1 + 192), &v253, &v252, &v257);
                                v27 = LH_ERROR_to_VERROR(v214);
                                if ((v27 & 0x80000000) != 0)
                                {
                                  return v27;
                                }

                                if (v257)
                                {
                                  v218 = LDOTreeNode_ComputeAbsoluteFrom(v257, &v251 + 1);
                                  v32 = LH_ERROR_to_VERROR(v218);
                                  if ((v32 & 0x80000000) == 0)
                                  {
                                    v219 = LDOTreeNode_ComputeAbsoluteTo(v257, &v251);
                                    v32 = LH_ERROR_to_VERROR(v219);
                                    if ((v32 & 0x80000000) == 0)
                                    {
                                      v220 = *(a1 + 192);
                                      v221 = &v251 + 1;
                                      v222 = &v251;
                                      goto LABEL_328;
                                    }
                                  }

                                  return v32;
                                }

                                log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "No containing node found => no label created", v215, v216, v217, v229);
                              }

                              if (*__dst)
                              {
                                LDOObject_SetU32Attribute(*__dst, "_TTYPE", 4);
                                v32 = LH_ERROR_to_VERROR(v224);
                                if ((v32 & 0x80000000) == 0)
                                {
                                  v225 = LDOObject_SetStringAttribute(*__dst, "NORM", v235);
                                  return LH_ERROR_to_VERROR(v225);
                                }

                                return v32;
                              }

                              return v27;
                            }

                            v28 = *(*(a1 + 16) + 32);
                            v29 = "Multiple valid lookups => no normalization";
LABEL_15:
                            log_OutText(v28, "FE_ABBRTN", 5, 0, v29, v24, v25, v26, v227);
                            return v27;
                          }

                          goto LABEL_21;
                        }

                        addToLayer(a1, a5, v148, v253, 0, 0, &v251 + 4);
                        v154 = BYTE4(v251);
                        if (BYTE4(v251) > 0x13u)
                        {
                          v97 = v241;
                          a8 = v243;
                          goto LABEL_292;
                        }

                        v155 = v150;
                        if (v150 > v123)
                        {
                          LOWORD(v252) = v123;
                          v155 = v123;
                        }

                        if (v155)
                        {
                          v156 = 0;
                          v157 = 0;
                          do
                          {
                            if (!a5[v157])
                            {
                              break;
                            }

                            v157 += utf8_determineUTF8CharLength(a5[v157]);
                            ++v156;
                          }

                          while (v157 < v155);
                        }

                        else
                        {
                          v156 = 0;
                        }

                        v232 = v155;
                        v159 = 0;
                        if (v149)
                        {
                          v160 = 0;
                          do
                          {
                            if (!a5[v160])
                            {
                              break;
                            }

                            v160 += utf8_determineUTF8CharLength(a5[v160]);
                            ++v159;
                          }

                          while (v149 > v160);
                        }

                        cstdlib_strncat(*(a1 + 96), &a5[v149], v232 - v149);
                        v161 = *(a1 + 104);
                        v162 = v256;
                        v163 = cstdlib_strlen(v256);
                        cstdlib_strncat(v161, v162 + 1, v163 - 2);
                        LODWORD(v161) = (cstdlib_strlen(v256) << 16) - 0x20000;
                        v164 = v156 - v159;
                        v165 = cstdlib_strlen(v256);
                        if (v161 <= v164 << 16)
                        {
                          if (v165 != v164 + 2)
                          {
                            v168 = 0;
                            v169 = v164 + 2;
                            do
                            {
                              cstdlib_strcat(*(a1 + 104), "~");
                              ++v168;
                            }

                            while (v169 - cstdlib_strlen(v256) > v168);
                          }
                        }

                        else
                        {
                          v166 = v159 - v156 - 2;
                          if (v166 + v165)
                          {
                            v170 = 1;
                            do
                            {
                              cstdlib_strcat(*(a1 + 96), "~");
                              v167 = v154 + 1;
                              v153 = v166 + cstdlib_strlen(v256) > v170++;
                            }

                            while (v153 && v154++ < 0x13);
                          }

                          else
                          {
                            v167 = v154;
                          }

                          BYTE4(v251) = v167;
                          if (v167 > 0x13)
                          {
                            v97 = v241;
                            a8 = v243;
                            v40 = v246;
                            k = v240;
                            goto LABEL_292;
                          }
                        }

                        v158 = v232;
                        v40 = v246;
                        k = v240;
                        NextTOKEN_INT_TNPos = getNextTOKEN_INT_TNPos(a1, &v253, &v252, &v256, v232, v123, &v255);
                        if ((NextTOKEN_INT_TNPos & 0x80000000) != 0)
                        {
                          return NextTOKEN_INT_TNPos;
                        }

LABEL_252:
                        v148 = v158;
                        if (v158 >= v123)
                        {
                          goto LABEL_289;
                        }
                      }

                      if (v148 > v140 || v255)
                      {
                        goto LABEL_291;
                      }

LABEL_227:
                      addToLayer(a1, a5, v148, v140, 0, 0, &v251 + 4);
                      if (BYTE4(v251) > 0x13u || (addToLayer(a1, a5, v140, v233, __sa, v244, &v251 + 4), BYTE4(v251) > 0x13u))
                      {
                        v97 = v241;
                        a8 = v243;
                        goto LABEL_292;
                      }

                      if (v149 == v140)
                      {
                        NextTOKEN_INT_TNPos = getNextTOKEN_INT_TNPos(a1, &v253, &v252, &v256, v233, v123, &v255);
                        if ((NextTOKEN_INT_TNPos & 0x80000000) != 0)
                        {
                          return NextTOKEN_INT_TNPos;
                        }
                      }

                      v158 = v233;
                      goto LABEL_252;
                    }

                    v97 = v241;
                    a8 = v243;
                    v40 = v246;
LABEL_274:
                    log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "%s L1: %s", v24, v25, v26, __dst);
                    v180 = *(a1 + 96);
                    v181 = *(*(a1 + 88) + 120);
                    v182 = cstdlib_strlen(v180);
                    v183 = v181(*(a1 + 72), *(a1 + 80), 0, v180, v182);
                    if ((v183 & 0x80000000) != 0)
                    {
                      return v183;
                    }

                    log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "%s L2: %s", v184, v185, v186, __dst);
                    v187 = *(*(a1 + 88) + 120);
                    v188 = *(a1 + 104);
                    v189 = cstdlib_strlen(v188);
                    v183 = v187(*(a1 + 72), *(a1 + 80), 1, v188, v189);
                    if ((v183 & 0x80000000) != 0)
                    {
                      return v183;
                    }

                    if (cstdlib_strcmp(v40, "normal") && cstdlib_strlen(v40) + v231 + 2 <= 0x7F)
                    {
                      cstdlib_strcat(__dst, "_");
                      cstdlib_strcat(__dst, v40);
                    }

                    k = v240;
                    if (((*(*(a1 + 88) + 80))(*(a1 + 72), *(a1 + 80), __dst) & 0x80000000) != 0 && (__dst[v231] = 0, v183 = (*(*(a1 + 88) + 80))(*(a1 + 72), *(a1 + 80), __dst), (v183 & 0x80000000) != 0))
                    {
                      return v183;
                    }

                    else
                    {
                      NextTOKEN_INT_TNPos = (*(*(a1 + 88) + 128))(*(a1 + 72), *(a1 + 80), 0, &v257, &v254);
                      if ((NextTOKEN_INT_TNPos & 0x80000000) == 0)
                      {
                        v257[v254] = 0;
                        log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "%s O1: %s", v190, v191, v192, __dst);
                        v193 = cstdlib_strstr(v257, "§");
                        if (v193)
                        {
                          v194 = v193;
                          while (1)
                          {
                            v195 = utf8_determineUTF8CharLength(*v194);
                            v196 = cstdlib_strstr(&v194[v195], "§");
                            if (!v196)
                            {
                              break;
                            }

                            v197 = v196;
                            v198 = v194[utf8_determineUTF8CharLength(*v194)];
                            v194 = v197;
                            if (v198 != 32)
                            {
                              goto LABEL_292;
                            }
                          }
                        }

LABEL_141:
                        if (__s1)
                        {
                          if (cstdlib_strcmp(__s1, ""))
                          {
                            v98 = cstdlib_atoi(__s1);
                            if (v98 < v239)
                            {
                              v99 = *(*(a1 + 16) + 32);
                              v100 = "Lower priority than previous valid normalizations";
                              goto LABEL_293;
                            }

                            v106 = v247;
                            if (v98 > v239)
                            {
                              if (v247)
                              {
                                log_OutText(*(*(a1 + 16) + 32), "FE_ABBRTN", 5, 0, "Higher priority than previous valid normalizations", v24, v25, v26, v227);
                                v106 = 0;
                              }
                            }

                            else
                            {
                              v98 = v239;
                            }

                            goto LABEL_153;
                          }

                          v98 = v239;
                        }

                        else
                        {
                          v98 = v239;
                        }

                        v106 = v247;
LABEL_153:
                        v38 = v106 + 1;
                        v235 = __sa;
                        v239 = v98;
                        goto LABEL_154;
                      }
                    }
                  }
                }

                else
                {
                  log_OutPublic(*(*(a1 + 16) + 32), "FE_ABBRTN", 32000, 0, v130, v131, v132, v133, v227);
                  return -1984946166;
                }

                return NextTOKEN_INT_TNPos;
              }

              if (a3[NextUtf8Offset] == 46)
              {
                goto LABEL_136;
              }

              v62 = *(*(a1 + 16) + 32);
              v63 = "TN Punctuation validation not OK";
LABEL_134:
              log_OutText(v62, "FE_ABBRTN", 5, 0, v63, v24, v25, v26, v227);
              v97 = v241;
              goto LABEL_135;
            }
          }

LABEL_31:
          __s1 = 0;
          goto LABEL_32;
        }

LABEL_30:
        v51 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v244 = 0;
      v47 = 0;
    }

    v49 = 0;
    goto LABEL_30;
  }

  return v27;
}