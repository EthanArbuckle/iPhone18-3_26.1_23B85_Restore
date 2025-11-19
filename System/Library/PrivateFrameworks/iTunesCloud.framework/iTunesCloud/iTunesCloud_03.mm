uint64_t _ICLLRemoveQueueItemActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v33[0]) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v33[0] & 0x7F) << v24;
            if ((v33[0] & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_57;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v26;
          }

LABEL_57:
          v30 = 40;
          goto LABEL_58;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = *(a1 + 8);
          *(a1 + 8) = v15;

          goto LABEL_59;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v33[0]) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v33[0] & 0x7F) << v17;
              if ((v33[0] & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_53;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_53:
            v30 = 24;
LABEL_58:
            *(a1 + v30) = v23;
            goto LABEL_59;
          case 4:
            v14 = PBReaderReadString();
            if (v14)
            {
              [(_ICLLRemoveQueueItemAction *)a1 addRemovedItemIds:v14];
            }

LABEL_38:

            goto LABEL_59;
          case 5:
            v14 = objc_alloc_init(_ICLLQueueQuery);
            objc_storeStrong((a1 + 16), v14);
            v33[0] = 0;
            v33[1] = 0;
            if (!PBReaderPlaceMark() || !_ICLLQueueQueryReadFrom(v14, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B45CFB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6356(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B45D0FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ICPBDGSPlayerDelegateInfoTokenReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v21 = PBReaderReadData();
        v22 = 32;
LABEL_35:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_45;
      }

      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        v31 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v31 & 0x7F) << v14;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_42:
      *(a1 + 16) = v20;
LABEL_45:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      *(a1 + 40) |= 1u;
      v29 = 0;
      v25 = [a2 position] + 8;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v29;
      goto LABEL_45;
    }

    if (v13 != 4)
    {
LABEL_32:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_45;
    }

    v21 = PBReaderReadString();
    v22 = 24;
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _ICLLReplaceQueueItemsActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        switch(v13)
        {
          case 0:
            v15 = 0;
            while (1)
            {
              LOBYTE(v31) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                v18 = [a2 data];
                [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              if ((v31 & 0x80000000) == 0)
              {
                break;
              }

              if (v15++ > 8)
              {
                goto LABEL_64;
              }
            }

            [a2 hasError];
            goto LABEL_64;
          case 1:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v31) = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v31 & 0x7F) << v22;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v28 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_63:
            *(a1 + 48) = v28;
            goto LABEL_64;
          case 2:
            v14 = objc_alloc_init(_ICLLPlaybackItem);
            [(_ICLLReplaceQueueItemsAction *)a1 addItems:v14];
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !_ICLLPlaybackItemReadFrom(v14, a2))
            {
LABEL_66:

              return 0;
            }

            goto LABEL_49;
        }
      }

      else if (v13 > 4)
      {
        if (v13 == 5)
        {
          [(_ICLLReplaceQueueItemsAction *)a1 clearOneofValuesForTrackGenerationSource];
          *(a1 + 56) |= 2u;
          *(a1 + 52) = 1;
          v14 = objc_alloc_init(_ICLLAutoPlaySource);
          objc_storeStrong((a1 + 8), v14);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !ICPBDGSFinishDelegationResponseReadFrom(a2))
          {
            goto LABEL_66;
          }

          goto LABEL_49;
        }

        if (v13 == 6)
        {
          [(_ICLLReplaceQueueItemsAction *)a1 clearOneofValuesForTrackGenerationSource];
          *(a1 + 56) |= 2u;
          *(a1 + 52) = 2;
          v14 = objc_alloc_init(_ICLLRadioSource);
          objc_storeStrong((a1 + 40), v14);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_ICLLRadioSourceReadFrom(v14, a2))
          {
            goto LABEL_66;
          }

          goto LABEL_49;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v20 = PBReaderReadString();
          v21 = *(a1 + 24);
          *(a1 + 24) = v20;

          goto LABEL_64;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(_ICLLQueueQuery);
          objc_storeStrong((a1 + 32), v14);
          v31 = 0;
          v32 = 0;
          if (!PBReaderPlaceMark() || !_ICLLQueueQueryReadFrom(v14, a2))
          {
            goto LABEL_66;
          }

LABEL_49:
          PBReaderRecallMark();

          goto LABEL_64;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_64:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

ICSQLiteConnectionOptions *__SQLiteOptionsWithAccountStoreOptions(void *a1)
{
  v1 = a1;
  v2 = [ICSQLiteConnectionOptions alloc];
  v3 = [v1 databasePath];

  v4 = [(ICSQLiteConnectionOptions *)v2 initWithDatabasePath:v3];

  return v4;
}

uint64_t __SetupSingleWriterWithConnection(void *a1, void *a2)
{
  v3 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6793;
  v19 = __Block_byref_object_dispose__6794;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ____SetupSingleWriterWithConnection_block_invoke;
  v7[3] = &unk_1E7BF4708;
  v4 = v3;
  v8 = v4;
  v9 = &v15;
  v10 = &v11;
  [v4 performTransaction:v7];
  v5 = *(v12 + 24);
  if (a2 && (v12[3] & 1) == 0)
  {
    *a2 = v16[5];
    v5 = *(v12 + 24);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v5 & 1;
}

void sub_1B45D3C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6793(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B45D4084(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1B45D52AC()
{
  if (v0)
  {
    JUMPOUT(0x1B45D52B4);
  }

  JUMPOUT(0x1B45D52B8);
}

void sub_1B45D5E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6906(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B45D619C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B45D63C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ICLLClientInfoCommandReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR____ICLLClientInfoCommand__externalId;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR____ICLLClientInfoCommand__sharedSessionToken;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NRPairedDeviceRegistry");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICNanoPairedDeviceStatusMonitor.m" lineNumber:32 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

    __break(1u);
  }
}

void *NanoRegistryLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NanoRegistryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7BF48D0;
    v6 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ICNanoPairedDeviceStatusMonitor.m" lineNumber:31 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __NanoRegistryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__7401(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B45DA434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B45DAA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNRDevicePropertyIsAltAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyIsAltAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyIsAltAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyCompanionMusicGUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyCompanionMusicGUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyCompanionMusicGUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getNRDevicePropertyUDID()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getNRDevicePropertyUDIDSymbolLoc_ptr;
  v9 = getNRDevicePropertyUDIDSymbolLoc_ptr;
  if (!getNRDevicePropertyUDIDSymbolLoc_ptr)
  {
    v1 = NanoRegistryLibrary();
    v7[3] = dlsym(v1, "NRDevicePropertyUDID");
    getNRDevicePropertyUDIDSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyUDID(void)"];
    [v4 handleFailureInFunction:v5 file:@"ICNanoPairedDeviceStatusMonitor.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B45DAC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNRDevicePropertyUDIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyUDID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyUDIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B45DAF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B45DB21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRPairedDeviceRegistryDeviceDidBecomeActive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNRDevicePropertyPairingIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRDevicePropertyPairingID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRDevicePropertyPairingIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPSYInitialSyncStateObserverClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!PairedSyncLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PairedSyncLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7BF48E8;
    v8 = 0;
    PairedSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PairedSyncLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PairedSyncLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ICNanoPairedDeviceStatusMonitor.m" lineNumber:22 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PSYInitialSyncStateObserver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPSYInitialSyncStateObserverClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ICNanoPairedDeviceStatusMonitor.m" lineNumber:23 description:{@"Unable to find class %s", "PSYInitialSyncStateObserver"}];

LABEL_10:
    __break(1u);
  }

  getPSYInitialSyncStateObserverClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t HandleDeviceDidUnPairNotification(uint64_t a1, void *a2)
{
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Got device did unpair notification", v5, 2u);
  }

  return [a2 _handlePairedDeviceChangedNotification];
}

uint64_t HandleDeviceDidPairNotification(uint64_t a1, void *a2)
{
  v3 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Got device did pair notification", v5, 2u);
  }

  return [a2 _handlePairedDeviceChangedNotification];
}

uint64_t __PairedSyncLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PairedSyncLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B45DC76C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1B45DF0E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1B45E0B40(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((*(v2 + 32) + 56));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1B45E10A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((*(v2 + 32) + 56));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1B45E1B38(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((*(v2 + 32) + 56));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1B45E1F50(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock((*(v2 + 32) + 56));
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t ICIAMSerialCheckRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _ICDeveloperTokenProviderIsAllowedForClassName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (_ICDeveloperTokenProviderIsAllowedForClassName_sAllowableDeveloperTokenProviderClassNamesOnceToken != -1)
  {
    dispatch_once(&_ICDeveloperTokenProviderIsAllowedForClassName_sAllowableDeveloperTokenProviderClassNamesOnceToken, &__block_literal_global_8469);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [_ICDeveloperTokenProviderIsAllowedForClassName_sAllowableDeveloperTokenProviderClassNames containsObject:v2];
LABEL_6:

  return v3;
}

uint64_t _ICLLCommandMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
              *(a1 + 104) |= 1u;
              *(a1 + 24) = 9;
              v14 = objc_alloc_init(_ICLLReplaceQueueItemsCommand);
              objc_storeStrong((a1 + 96), v14);
              v22 = 0;
              v23 = 0;
              if (!PBReaderPlaceMark() || !_ICLLReplaceQueueItemsCommandReadFrom(v14, a2))
              {
LABEL_80:

                return 0;
              }

              goto LABEL_73;
            case 0xC:
              [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
              *(a1 + 104) |= 1u;
              *(a1 + 24) = 10;
              v14 = objc_alloc_init(_ICLLPlayNowQueueItemsCommand);
              objc_storeStrong((a1 + 56), v14);
              v22 = 0;
              v23 = 0;
              if (!PBReaderPlaceMark() || !_ICLLPlayNowQueueItemsCommandReadFrom(v14, a2))
              {
                goto LABEL_80;
              }

              goto LABEL_73;
            case 0xD:
              [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
              *(a1 + 104) |= 1u;
              *(a1 + 24) = 11;
              v14 = objc_alloc_init(_ICLLCurrentItemTransitionCommand);
              objc_storeStrong((a1 + 40), v14);
              v22 = 0;
              v23 = 0;
              if (!PBReaderPlaceMark() || !_ICLLCurrentItemTransitionCommandReadFrom(v14, a2))
              {
                goto LABEL_80;
              }

              goto LABEL_73;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
              *(a1 + 104) |= 1u;
              *(a1 + 24) = 6;
              v14 = objc_alloc_init(_ICLLPlaybackControlSettingsCommand);
              objc_storeStrong((a1 + 64), v14);
              v22 = 0;
              v23 = 0;
              if (!PBReaderPlaceMark() || !_ICLLPlaybackControlSettingsCommandReadFrom(v14, a2))
              {
                goto LABEL_80;
              }

              goto LABEL_73;
            case 8:
              [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
              *(a1 + 104) |= 1u;
              *(a1 + 24) = 7;
              v14 = objc_alloc_init(_ICLLReactionCommand);
              objc_storeStrong((a1 + 80), v14);
              v22 = 0;
              v23 = 0;
              if (!PBReaderPlaceMark() || !_ICLLReactionCommandReadFrom(v14, a2))
              {
                goto LABEL_80;
              }

              goto LABEL_73;
            case 9:
              [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
              *(a1 + 104) |= 1u;
              *(a1 + 24) = 8;
              v14 = objc_alloc_init(_ICLLClientInfoCommand);
              objc_storeStrong((a1 + 16), v14);
              v22 = 0;
              v23 = 0;
              if (!PBReaderPlaceMark() || !_ICLLClientInfoCommandReadFrom(v14, a2))
              {
                goto LABEL_80;
              }

              goto LABEL_73;
          }
        }
      }

      else if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
            *(a1 + 104) |= 1u;
            *(a1 + 24) = 3;
            v14 = objc_alloc_init(_ICLLRemoveQueueItemCommand);
            objc_storeStrong((a1 + 88), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !_ICLLRemoveQueueItemCommandReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            goto LABEL_73;
          case 4:
            [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
            *(a1 + 104) |= 1u;
            *(a1 + 24) = 4;
            v14 = objc_alloc_init(_ICLLMoveQueueItemCommand);
            objc_storeStrong((a1 + 48), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !_ICLLMoveQueueItemCommandReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            goto LABEL_73;
          case 6:
            [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
            *(a1 + 104) |= 1u;
            *(a1 + 24) = 5;
            v14 = objc_alloc_init(_ICLLCurrentItemChangeCommand);
            objc_storeStrong((a1 + 32), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !_ICLLCurrentItemChangeCommandReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            goto LABEL_73;
        }
      }

      else
      {
        switch(v13)
        {
          case 0:
            v15 = 0;
            while (1)
            {
              LOBYTE(v22) = 0;
              v16 = [a2 position] + 1;
              if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
              {
                v18 = [a2 data];
                [v18 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              if ((v22 & 0x80000000) == 0)
              {
                break;
              }

              if (v15++ > 8)
              {
                goto LABEL_74;
              }
            }

            [a2 hasError];
            goto LABEL_74;
          case 1:
            [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
            *(a1 + 104) |= 1u;
            *(a1 + 24) = 1;
            v14 = objc_alloc_init(_ICLLPlaybackSyncCommand);
            objc_storeStrong((a1 + 72), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !_ICLLPlaybackSyncCommandReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

            goto LABEL_73;
          case 2:
            [(_ICLLCommandMessage *)a1 clearOneofValuesForCommand];
            *(a1 + 104) |= 1u;
            *(a1 + 24) = 2;
            v14 = objc_alloc_init(_ICLLAddQueueItemsCommand);
            objc_storeStrong((a1 + 8), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !_ICLLAddQueueItemsCommandReadFrom(v14, a2))
            {
              goto LABEL_80;
            }

LABEL_73:
            PBReaderRecallMark();

            goto LABEL_74;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_74:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _ICLLCurrentItemTransitionCommandReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR____ICLLCurrentItemTransitionCommand__previousItemId;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR____ICLLCurrentItemTransitionCommand__transitionItemId;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

__CFString *ICUserVerificationInteractionLevelDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7BF49E8[a1];
  }
}

uint64_t _ICLLPlaybackControlSettingsQueryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_ICLLPlaybackControlSettings);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_ICLLPlaybackControlSettingsReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _ICLLReactionActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E7BF4A18[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _ICLLPlaybackSyncStateQueryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v27 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadString();
          if (v21)
          {
            [(_ICLLPlaybackSyncStateQuery *)a1 addParticipantStates:v21];
          }
        }

        else
        {
          if (v13 != 2)
          {
LABEL_40:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_44;
          }

          v21 = PBReaderReadString();
          if (v21)
          {
            [(_ICLLPlaybackSyncStateQuery *)a1 addTransportControlStates:v21];
          }
        }
      }

      else
      {
        if (v13 == 3)
        {
          v22 = PBReaderReadString();
          v23 = 8;
LABEL_36:
          v24 = *(a1 + v23);
          *(a1 + v23) = v22;

          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v22 = PBReaderReadString();
          v23 = 16;
          goto LABEL_36;
        }

        if (v13 != 5)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          v28 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v28 & 0x7F) << v14;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_43;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_43:
        *(a1 + 40) = v20;
      }

LABEL_44:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __ICSecureCodingGetPropertyListClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = ICSecureCodingGetPropertyListClasses_sPropertyListTypes;
  ICSecureCodingGetPropertyListClasses_sPropertyListTypes = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void sub_1B45EFDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55)
{
  objc_destroyWeak(&a55);
  _Block_object_dispose((v55 - 248), 8);
  objc_destroyWeak((v55 - 216));
  _Block_object_dispose((v55 - 208), 8);
  _Block_object_dispose((v55 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9670(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ICUserNotificationGetResponseButton(void *a1, char a2)
{
  v3 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9775;
  v13 = __Block_byref_object_dispose__9776;
  v14 = 0;
  v4 = qword_1B47555C8[a2 & 3];
  v5 = [v3 buttons];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __ICUserNotificationGetResponseButton_block_invoke;
  v8[3] = &unk_1E7BF4B48;
  v8[4] = &v9;
  v8[5] = v4;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1B45F0F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9775(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ICUserNotificationGetResponseButton_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __Block_byref_object_copy__10613(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B45FA1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B45FBCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B45FCA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10809(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10937(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ICIAMApplicationMessageSyncCommandReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_46:
        *(a1 + 8) = v28;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(ICIAMApplicationMessage);
        objc_storeStrong((a1 + 16), v21);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !ICIAMApplicationMessageReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B46001A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

uint64_t _ICLLPlaybackControlSettingsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v36) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 0:
            v22 = 0;
            while (1)
            {
              LOBYTE(v36) = 0;
              v23 = [a2 position] + 1;
              if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
              {
                v25 = [a2 data];
                [v25 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              if ((v36 & 0x80000000) == 0)
              {
                break;
              }

              if (v22++ > 8)
              {
                goto LABEL_77;
              }
            }

            [a2 hasError];
            goto LABEL_77;
          case 1:
            v27 = 0;
            v28 = 0;
            v29 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v36) = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v29 |= (v36 & 0x7F) << v27;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              v11 = v28++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_75;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v29;
            }

LABEL_75:
            v33 = 44;
            goto LABEL_76;
          case 2:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v36) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v36 & 0x7F) << v15;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_71;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_71:
            v33 = 40;
LABEL_76:
            *(a1 + v33) = v21;
            goto LABEL_77;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          [(_ICLLPlaybackControlSettings *)a1 clearOneofValuesForTrackGenerationSource];
          *(a1 + 52) |= 4u;
          *(a1 + 48) = 2;
          v14 = objc_alloc_init(_ICLLRadioSource);
          objc_storeStrong((a1 + 32), v14);
          v36 = 0;
          v37 = 0;
          if (!PBReaderPlaceMark() || !_ICLLRadioSourceReadFrom(v14, a2))
          {
LABEL_79:

            return 0;
          }

          goto LABEL_57;
        }

        if (v13 == 7)
        {
          [(_ICLLPlaybackControlSettings *)a1 clearOneofValuesForTrackGenerationSource];
          *(a1 + 52) |= 4u;
          *(a1 + 48) = 3;
          v14 = objc_alloc_init(_ICLLNoGenerationSource);
          objc_storeStrong((a1 + 24), v14);
          v36 = 0;
          v37 = 0;
          if (!PBReaderPlaceMark() || !ICPBDGSFinishDelegationResponseReadFrom(a2))
          {
            goto LABEL_79;
          }

          goto LABEL_57;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(_ICLLAvailability);
          objc_storeStrong((a1 + 16), v14);
          v36 = 0;
          v37 = 0;
          if (!PBReaderPlaceMark() || !_ICLLAvailabilityReadFrom(v14, a2))
          {
            goto LABEL_79;
          }

          goto LABEL_57;
        }

        if (v13 == 5)
        {
          [(_ICLLPlaybackControlSettings *)a1 clearOneofValuesForTrackGenerationSource];
          *(a1 + 52) |= 4u;
          *(a1 + 48) = 1;
          v14 = objc_alloc_init(_ICLLAutoPlaySource);
          objc_storeStrong((a1 + 8), v14);
          v36 = 0;
          v37 = 0;
          if (!PBReaderPlaceMark() || !ICPBDGSFinishDelegationResponseReadFrom(a2))
          {
            goto LABEL_79;
          }

LABEL_57:
          PBReaderRecallMark();

          goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICIAMSynchronizeMessagesResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(ICIAMApplicationMessageSyncResponse);
        [a1 addApplicationMessageSyncResponses:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ICIAMApplicationMessageSyncResponseReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL ICFileURLIsLocalReadable(void *a1)
{
  v1 = [a1 path];
  [v1 fileSystemRepresentation];

  getpid();
  return sandbox_check() == 0;
}

BOOL ICFileURLIsLocalWritable(void *a1)
{
  v1 = [a1 path];
  [v1 fileSystemRepresentation];

  getpid();
  return sandbox_check() == 0;
}

unint64_t _MSV_XXH_XXH64_digest(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  v2 = v1 + *a1;
  v3 = a1 + 5;
  v4 = *a1 & 0x1FLL;
  if (v4 >= 8)
  {
    do
    {
      v5 = *v3++;
      v2 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v5, 33)) ^ v2, 37);
      v4 -= 8;
    }

    while (v4 > 7);
  }

  if (v4 >= 4)
  {
    v6 = *v3;
    v3 = (v3 + 4);
    v2 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v6) ^ v2, 41);
    v4 -= 4;
  }

  for (; v4; --v4)
  {
    v7 = *v3;
    v3 = (v3 + 1);
    v2 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v7) ^ v2, 53);
  }

  v8 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v2 ^ (v2 >> 33))) >> 29));
  return v8 ^ HIDWORD(v8);
}

id ICStoreArtworkInfoBestArtworkMatchingSize(void *a1, double a2, double a3)
{
  v22 = *MEMORY[0x1E69E9840];
  [a1 sortedArrayUsingComparator:&__block_literal_global_276];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = ceil(a2);
    v10 = ceil(a3);
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      [v12 originalSize];
      if (v13 >= v9)
      {
        [v12 originalSize];
        if (v14 >= v10)
        {
          break;
        }
      }

      if (v7 == ++v11)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v15 = v12;

    if (v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
  }

  v15 = [v5 lastObject];
LABEL_13:

  return v15;
}

uint64_t __ICStoreArtworkInfoBestArtworkMatchingSize_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 originalSize];
  v6 = v5;
  v8 = v7;
  [v4 originalSize];
  v10 = v9;
  v12 = v11;

  if (v6 < v10)
  {
    return -1;
  }

  if (v6 > v10)
  {
    return 1;
  }

  if (v8 < v12)
  {
    return -1;
  }

  return v8 > v12;
}

uint64_t _ICLLPlaybackItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v35 = PBReaderReadString();
            v36 = 24;
LABEL_63:
            v38 = *(a1 + v36);
            *(a1 + v36) = v35;

            goto LABEL_74;
          case 2:
            v35 = PBReaderReadString();
            v36 = 32;
            goto LABEL_63;
          case 3:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v41) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v41 & 0x7F) << v21;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v23;
            }

LABEL_73:
            *(a1 + 8) = v27;
            goto LABEL_74;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v37 = objc_alloc_init(_ICLLMediaInfo);
          objc_storeStrong((a1 + 40), v37);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !_ICLLMediaInfoReadFrom(v37, a2))
          {
LABEL_76:

            return 0;
          }

          goto LABEL_61;
        }

        if (v13 == 7)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v41 & 0x7F) << v28;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v34 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_69:
          *(a1 + 48) = v34;
          goto LABEL_74;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v37 = objc_alloc_init(_ICLLPlaybackItemContainer);
          objc_storeStrong((a1 + 16), v37);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !_ICLLPlaybackItemContainerReadFrom(v37, a2))
          {
            goto LABEL_76;
          }

LABEL_61:
          PBReaderRecallMark();

          goto LABEL_74;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v14;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_65;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_65:
          *(a1 + 52) = v20;
          goto LABEL_74;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_74:
      v39 = [a2 position];
    }

    while (v39 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *_NSStringFromICSharedListeningContainerKind(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownKind-%ld", a1];
  }

  else
  {
    v2 = off_1E7BF54B0[a1];
  }

  return v2;
}

void sub_1B460E280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12417(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B460E780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B460EC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1B4616E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 160), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B46185F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B461EDA4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

uint64_t ICIAMLogEventRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v22 = PBReaderReadString();
        v23 = 24;
        goto LABEL_38;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(ICIAMParameter);
      [a1 addEventParameters:v21];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ICIAMParameterReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = PBReaderReadString();
      v23 = 16;
LABEL_38:
      v24 = *(a1 + v23);
      *(a1 + v23) = v22;

      goto LABEL_43;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27[0] & 0x7F) << v14;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_42:
      *(a1 + 8) = v20;
      goto LABEL_43;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

id _ICStoreFileAssetFairPlayInfoValueForValue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_NSIsNSData())
    {
      if ([v1 length])
      {
        v2 = v1;
      }

      else
      {
        v2 = 0;
      }

      v3 = v2;
      goto LABEL_13;
    }

    if (_NSIsNSString())
    {
      v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v1 options:0];
      if ([v4 length])
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }

      v3 = v5;

      goto LABEL_13;
    }
  }

  v3 = 0;
LABEL_13:

  return v3;
}

uint64_t _ICLLCurrentItemChangeActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICPBDGSStartDelegationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(ICPBDGSPlayerInfoContextRequestToken);
        [(ICPBDGSStartDelegationRequest *)a1 addPlayerInfoContextRequestToken:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ICPBDGSPlayerInfoContextRequestTokenReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _ICLLMoveQueueItemCommandReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v34 & 0x7F) << v25;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v27;
          }

LABEL_52:
          v31 = 16;
          goto LABEL_53;
        }

        if (v13 != 4)
        {
LABEL_25:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_54;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v35 & 0x7F) << v18;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_48:
          v31 = 32;
LABEL_53:
          *(a1 + v31) = v24;
          goto LABEL_54;
        }

        if (v13 != 2)
        {
          goto LABEL_25;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      v16 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t FindEthernetInterfacesMatchingBSDName(io_iterator_t *a1, const char *a2)
{
  mainPort = 0;
  result = MEMORY[0x1B8C77580](0, &mainPort);
  if (!result)
  {
    v5 = IOBSDNameMatching(mainPort, 0, a2);
    return IOServiceGetMatchingServices(mainPort, v5, a1);
  }

  return result;
}

uint64_t GetFirstEthernetAddress(io_iterator_t iterator, int a2, UInt8 *a3)
{
  v6 = *MEMORY[0x1E695E480];
  while (1)
  {
    v7 = IOIteratorNext(iterator);
    if (!v7)
    {
      return 5;
    }

    v8 = v7;
    CFProperty = IORegistryEntryCreateCFProperty(v7, @"IOBuiltin", v6, 0);
    if (!CFProperty)
    {
      break;
    }

    v10 = CFProperty;
    v11 = CFGetTypeID(CFProperty);
    if (v11 != CFBooleanGetTypeID())
    {
      CFRelease(v10);
      break;
    }

    v12 = [v10 BOOLValue];
    CFRelease(v10);
    if (!a2 || v12)
    {
      break;
    }

    IOObjectRelease(v8);
  }

  parent = 0;
  if (IORegistryEntryGetParentEntry(v8, "IOService", &parent))
  {
    goto LABEL_17;
  }

  v14 = IORegistryEntryCreateCFProperty(parent, @"IOMACAddress", v6, 0);
  if (!v14)
  {
LABEL_16:
    IOObjectRelease(parent);
LABEL_17:
    v13 = 5;
    goto LABEL_18;
  }

  v15 = v14;
  v16 = CFGetTypeID(v14);
  if (v16 != CFDataGetTypeID() || CFDataGetLength(v15) <= 5)
  {
    CFRelease(v15);
    goto LABEL_16;
  }

  IOObjectRelease(parent);
  v19.location = 0;
  v19.length = 6;
  CFDataGetBytes(v15, v19, a3);
  CFRelease(v15);
  v13 = 0;
LABEL_18:
  IOObjectRelease(v8);
  return v13;
}

uint64_t __Block_byref_object_copy__13785(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *ICURLResponseStatusCodeGetDescription(uint64_t a1)
{
  if (a1 <= 400)
  {
    if (a1 > 299)
    {
      if (a1 > 398)
      {
        if (a1 == 399)
        {
          return @"Redirection Range End";
        }

        else
        {
          return @"Bad Request";
        }
      }

      if (a1 == 300)
      {
        return @"Multiple Choices";
      }

      if (a1 == 304)
      {
        return @"Not Modified";
      }
    }

    else if (a1 > 205)
    {
      if (a1 == 206)
      {
        return @"Partial Content";
      }

      if (a1 == 299)
      {
        return @"Success Range End";
      }
    }

    else
    {
      if (a1 == 200)
      {
        return @"OK";
      }

      if (a1 == 204)
      {
        return @"No Content";
      }
    }

    return @"Unknown";
  }

  if (a1 <= 499)
  {
    if (a1 > 403)
    {
      if (a1 == 404)
      {
        return @"Not Found";
      }

      if (a1 == 499)
      {
        return @"Client Error Range End";
      }
    }

    else
    {
      if (a1 == 401)
      {
        return @"Unauthorized";
      }

      if (a1 == 403)
      {
        return @"Forbidden";
      }
    }

    return @"Unknown";
  }

  if (a1 > 501)
  {
    switch(a1)
    {
      case 502:
        return @"Bad Gateway";
      case 503:
        return @"Service Unavailable";
      case 599:
        return @"Server Error Range End";
    }

    return @"Unknown";
  }

  if (a1 == 500)
  {
    return @"Internal Server Error";
  }

  else
  {
    return @"Not Implemented";
  }
}

id ICURLResponseStatusCodeGetExtendedDescription(uint64_t a1)
{
  v2 = ICURLResponseStatusCodeGetDescription(a1);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%ld)", v2, a1];

  return v3;
}

id ICURLResponseStatusCodeGetDebuggingDescription(uint64_t a1)
{
  v2 = ICURLResponseStatusCodeGetDescription(a1);
  v3 = [v2 stringByReplacingOccurrencesOfString:@" " withString:@"-"];
  v4 = [v3 lowercaseString];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%ld)", v4, a1];

  return v5;
}

id ICDAAPUtilitiesCreateDataForContainer(int a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSData * _Nonnull ICDAAPUtilitiesCreateDataForContainer(DKDAAPElementCode, void (^__strong _Nonnull)(DKDAAPWriter *__strong))"}];
    [v7 handleFailureInFunction:v8 file:@"ICDAAPUtilities.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"containerCode"}];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __ICDAAPUtilitiesCreateDataForContainer_block_invoke;
  v9[3] = &unk_1E7BF5780;
  v11 = a1;
  v10 = v3;
  v4 = v3;
  v5 = ICDAAPUtilitiesCreateData(v9);

  return v5;
}

void __ICDAAPUtilitiesCreateDataForContainer_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 startContainerWithCode:v3];
  (*(*(a1 + 32) + 16))();
  [v4 endContainerWithCode:*(a1 + 40)];
}

id ICDAAPUtilitiesCreateDataForItemKindContainer(int a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __ICDAAPUtilitiesCreateDataForItemKindContainer_block_invoke;
  v9[3] = &unk_1E7BF57A8;
  v11 = a2;
  v10 = v5;
  v6 = v5;
  v7 = ICDAAPUtilitiesCreateDataForContainer(a1, v9);

  return v7;
}

void __ICDAAPUtilitiesCreateDataForItemKindContainer_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v5 = a2;
  v4 = [v3 date];
  ICDAAPUtilitiesWriteProperty(v5, 1836282979, 10, v4);

  [v5 writeUInt8:*(a1 + 40) withCode:1835625316];
  (*(*(a1 + 32) + 16))();
}

void ICDAAPUtilitiesWriteProperty(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = a1;
  v7 = a4;
  if (a3 <= 5)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
          [v12 handleFailureInFunction:v13 file:@"ICDAAPUtilities.m" lineNumber:41 description:@"DKDAAPValueTypeUInt8 only supports NSNumber."];
        }

        [v34 writeUInt8:objc_msgSend(v7 withCode:{"unsignedCharValue"), a2}];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_47;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [MEMORY[0x1E696AAA8] currentHandler];
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
          [v14 handleFailureInFunction:v15 file:@"ICDAAPUtilities.m" lineNumber:48 description:@"DKDAAPValueTypeSInt8 only supports NSNumber."];
        }

        [v34 writeSInt8:objc_msgSend(v7 withCode:{"charValue"), a2}];
      }
    }

    else if (a3 == 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
        [v24 handleFailureInFunction:v25 file:@"ICDAAPUtilities.m" lineNumber:55 description:@"DKDAAPValueTypeUInt16 only supports NSNumber."];
      }

      [v34 writeUInt16:objc_msgSend(v7 withCode:{"unsignedShortValue"), a2}];
    }

    else
    {
      if (a3 != 4)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = [MEMORY[0x1E696AAA8] currentHandler];
          v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
          [v22 handleFailureInFunction:v23 file:@"ICDAAPUtilities.m" lineNumber:69 description:@"DKDAAPValueTypeUInt32 only supports NSNumber."];
        }

        v8 = [v7 unsignedIntValue];
        goto LABEL_37;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
        [v16 handleFailureInFunction:v17 file:@"ICDAAPUtilities.m" lineNumber:62 description:@"DKDAAPValueTypeSInt16 only supports NSNumber."];
      }

      [v34 writeSInt16:objc_msgSend(v7 withCode:{"shortValue"), a2}];
    }
  }

  else
  {
    if (a3 <= 8)
    {
      if (a3 == 6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = [MEMORY[0x1E696AAA8] currentHandler];
          v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
          [v30 handleFailureInFunction:v31 file:@"ICDAAPUtilities.m" lineNumber:76 description:@"DKDAAPValueTypeSInt32 only supports NSNumber."];
        }

        [v34 writeSInt32:objc_msgSend(v7 withCode:{"intValue"), a2}];
      }

      else if (a3 == 7)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
          [v18 handleFailureInFunction:v19 file:@"ICDAAPUtilities.m" lineNumber:83 description:@"DKDAAPValueTypeUInt64 only supports NSNumber."];
        }

        [v34 writeUInt64:objc_msgSend(v7 withCode:{"unsignedLongLongValue"), a2}];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = [MEMORY[0x1E696AAA8] currentHandler];
          v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
          [v26 handleFailureInFunction:v27 file:@"ICDAAPUtilities.m" lineNumber:90 description:@"DKDAAPValueTypeSInt64 only supports NSNumber."];
        }

        [v34 writeSInt64:objc_msgSend(v7 withCode:{"longLongValue"), a2}];
      }

      goto LABEL_48;
    }

    if (a3 != 9)
    {
      if (a3 != 10)
      {
        if (a3 == 13)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v28 = [MEMORY[0x1E696AAA8] currentHandler];
            v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
            [v28 handleFailureInFunction:v29 file:@"ICDAAPUtilities.m" lineNumber:111 description:@"DKDAAPValueTypeBinary only supports NSData."];
          }

          [v34 writeData:v7 withCode:a2];
          goto LABEL_48;
        }

LABEL_47:
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
        [v10 handleFailureInFunction:v11 file:@"ICDAAPUtilities.m" lineNumber:120 description:@"Cannot make element from unsupported DAAP value type."];

        goto LABEL_48;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
        [v20 handleFailureInFunction:v21 file:@"ICDAAPUtilities.m" lineNumber:104 description:@"DKDAAPValueTypeDate only supports NSDate."];
      }

      [v7 timeIntervalSince1970];
      v8 = v9;
LABEL_37:
      [v34 writeUInt32:v8 withCode:a2];
      goto LABEL_48;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = [MEMORY[0x1E696AAA8] currentHandler];
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteProperty(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, DKDAAPValueType, __strong id _Nonnull)"}];
      [v32 handleFailureInFunction:v33 file:@"ICDAAPUtilities.m" lineNumber:97 description:@"DKDAAPValueTypeString only supports NSString."];
    }

    [v34 writeString:v7 withCode:a2];
  }

LABEL_48:
}

void ICDAAPUtilitiesWriteContainer(void *a1, uint64_t a2, void *a3)
{
  v8 = a1;
  v5 = a3;
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ICDAAPUtilitiesWriteContainer(DKDAAPWriter *__strong _Nonnull, DKDAAPElementCode, void (^__strong _Nonnull)(DKDAAPWriter *__strong))"}];
    [v6 handleFailureInFunction:v7 file:@"ICDAAPUtilities.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  [v8 startContainerWithCode:a2];
  v5[2](v5, v8);
  [v8 endContainerWithCode:a2];
}

uint64_t _ICLLRadioSourceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v16 = objc_alloc_init(_ICLLRadioSeed);
        objc_storeStrong((a1 + 16), v16);
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !_ICLLRadioSeedReadFrom(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 8;
LABEL_25:
    v16 = *(a1 + v15);
    *(a1 + v15) = v14;
LABEL_26:

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICIAMTriggerConditionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              v49 = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                v42 = [a2 data];
                [v42 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v49 & 0x7F) << v37;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v11 = v38++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v39;
            }

LABEL_83:
            v43 = 20;
          }

          else
          {
            if (v13 != 3)
            {
              goto LABEL_46;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              v48 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v48 & 0x7F) << v21;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_79:
            v43 = 16;
          }

          goto LABEL_84;
        }

        v27 = PBReaderReadString();
        v28 = 24;
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 48) |= 4u;
          while (1)
          {
            v46 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v46 & 0x7F) << v31;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_71;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v33;
          }

LABEL_71:
          v43 = 32;
LABEL_84:
          *(a1 + v43) = v20;
          goto LABEL_85;
        }

        if (v13 != 7)
        {
LABEL_46:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_85;
        }

        v27 = PBReaderReadString();
        v28 = 8;
      }

      else
      {
        if (v13 != 4)
        {
          if (v13 != 5)
          {
            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v47 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v47 & 0x7F) << v14;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_75:
          v43 = 36;
          goto LABEL_84;
        }

        v27 = PBReaderReadString();
        v28 = 40;
      }

      v30 = *(a1 + v28);
      *(a1 + v28) = v27;

LABEL_85:
      v44 = [a2 position];
    }

    while (v44 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICIAMImageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v28 = [a2 position] + 1;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
            {
              v30 = [a2 data];
              [v30 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v27 |= (v35 & 0x7F) << v25;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v11 = v26++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v27;
          }

LABEL_52:
          v31 = 32;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v34 & 0x7F) << v16;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          v31 = 8;
        }

        *(a1 + v31) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v24 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__14331(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4629CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14555(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B462B004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B462D10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15239(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B462D440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B462D5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B462D768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B462D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B462DB50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B462E01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B462E830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B462ED48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4630058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1B463039C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ICPBDGSFinishDelegationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(ICPBDGSPlayerDelegateInfoToken);
        [(ICPBDGSFinishDelegationRequest *)a1 addPlayerDelegateInfoToken:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !ICPBDGSPlayerDelegateInfoTokenReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICIAMMessagePresentationTriggerReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = 8;
      }

      else
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v27 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27 & 0x7F) << v16;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_37;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_37:
          *(a1 + 16) = v22;
          goto LABEL_38;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_38;
        }

        v14 = PBReaderReadString();
        v15 = 24;
      }

      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICIAMMetricEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v15 = PBReaderReadString();
              v16 = 80;
              goto LABEL_73;
            case 0xB:
              v15 = PBReaderReadString();
              v16 = 48;
              goto LABEL_73;
            case 0xC:
              v14 = objc_alloc_init(ICIAMImpressionNode);
              objc_storeStrong((a1 + 40), v14);
              v40 = 0;
              v41 = 0;
              if (!PBReaderPlaceMark() || !ICIAMImpressionNodeReadFrom(v14, a2))
              {
LABEL_91:

                return 0;
              }

              goto LABEL_62;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v15 = PBReaderReadString();
              v16 = 24;
              goto LABEL_73;
            case 8:
              v14 = objc_alloc_init(ICIAMParameter);
              [a1 addActionDetails:v14];
LABEL_60:
              v40 = 0;
              v41 = 0;
              if (!PBReaderPlaceMark() || !ICIAMParameterReadFrom(v14, a2))
              {
                goto LABEL_91;
              }

LABEL_62:
              PBReaderRecallMark();

              goto LABEL_89;
            case 9:
              v15 = PBReaderReadString();
              v16 = 32;
LABEL_73:
              v36 = *(a1 + v16);
              *(a1 + v16) = v15;

              goto LABEL_89;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v15 = PBReaderReadString();
            v16 = 88;
            goto LABEL_73;
          case 5:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 100) |= 4u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v40 & 0x7F) << v30;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v32;
            }

LABEL_87:
            v37 = 96;
            goto LABEL_88;
          case 6:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 100) |= 1u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v40 & 0x7F) << v17;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_79:
            v37 = 16;
            goto LABEL_88;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v15 = PBReaderReadString();
            v16 = 64;
            goto LABEL_73;
          case 2:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 100) |= 2u;
            while (1)
            {
              LOBYTE(v40) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v40 & 0x7F) << v24;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_83;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v26;
            }

LABEL_83:
            v37 = 72;
LABEL_88:
            *(a1 + v37) = v23;
            goto LABEL_89;
          case 3:
            v14 = objc_alloc_init(ICIAMParameter);
            [a1 addPageDetails:v14];
            goto LABEL_60;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_89:
      v38 = [a2 position];
    }

    while (v38 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B4635DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _ICLLMoveQueueItemActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          LOBYTE(v33[0]) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v33[0] & 0x7F) << v24;
          if ((v33[0] & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_53;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_53:
        v30 = 16;
        goto LABEL_54;
      }

      if (v13 != 4)
      {
        goto LABEL_26;
      }

      v16 = objc_alloc_init(_ICLLQueueQuery);
      objc_storeStrong((a1 + 24), v16);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !_ICLLQueueQueryReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v33[0] & 0x7F) << v17;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v11 = v18++ >= 9;
        if (v11)
        {
          v23 = 0;
          goto LABEL_49;
        }
      }

      if ([a2 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_49:
      v30 = 32;
LABEL_54:
      *(a1 + v30) = v23;
      goto LABEL_55;
    }

    if (v13 == 2)
    {
      v14 = PBReaderReadString();
      v15 = *(a1 + 8);
      *(a1 + 8) = v14;

      goto LABEL_55;
    }

LABEL_26:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

void sub_1B4637714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16388(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4637E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B4638768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1B463DFE4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16893(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B463EF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B463F0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B463F22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ICIAMLocalNotificationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        *(a1 + 36) |= 2u;
        v33 = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v29 = v33;
        v30 = 16;
LABEL_48:
        *(a1 + v30) = v29;
        goto LABEL_49;
      }

      if (v13 != 4)
      {
LABEL_26:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_49;
      }

      v16 = PBReaderReadString();
      v17 = *(a1 + 24);
      *(a1 + 24) = v16;

LABEL_49:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      *(a1 + 36) |= 4u;
      while (1)
      {
        LOBYTE(v33) = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v33 & 0x7F) << v19;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v11 = v20++ >= 9;
        if (v11)
        {
          v25 = 0;
          goto LABEL_43;
        }
      }

      if ([a2 hasError])
      {
        v25 = 0;
      }

      else
      {
        v25 = v21;
      }

LABEL_43:
      *(a1 + 32) = v25;
      goto LABEL_49;
    }

    if (v13 != 2)
    {
      goto LABEL_26;
    }

    *(a1 + 36) |= 1u;
    v33 = 0;
    v14 = [a2 position] + 8;
    if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
    {
      v28 = [a2 data];
      [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v29 = v33;
    v30 = 8;
    goto LABEL_48;
  }

  return [a2 hasError] ^ 1;
}

os_log_t _ICLogCategoryDefault()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default");

  return v0;
}

os_log_t _ICLogCategoryDefault_Oversize()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");

  return v0;
}

os_log_t _ICLogCategoryAgeVerification()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");

  return v0;
}

os_log_t _ICLogCategorySubscription()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "Subscription");

  return v0;
}

os_log_t _ICLogCategoryQuickRelay()
{
  v0 = os_log_create("com.apple.amp.iTunesCloud", "QuickRelay");

  return v0;
}

void ICSiriPostDynamiteClientStateChangedNotification()
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.siri.client.state.DynamiteClientState%s", ".siri_data_changed"];
  v0 = v1;
  notify_post([v1 UTF8String]);
}

void ICSiriGetSharedUserIDs(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEBUG, "[ICUserIdentityStore] - Returning zero SiriSharedUserIDs [unsupported platform]", v5, 2u);
  }

  (*(v3 + 2))(v3, MEMORY[0x1E695E0F0], 0);
}

uint64_t __Block_byref_object_copy__17470(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_DWORD *_MSV_XXH_XXH32_update_17739(_DWORD *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    v6 = result[1];
    v7 = *result + __n;
    v9 = __n > 0xF || v7 > 0xF;
    *result = v7;
    result[1] = v6 | v9;
    v10 = result[10];
    if (v10 + __n <= 0xF)
    {
      result = memcpy(result + v10 + 24, __src, __n);
      LODWORD(v11) = v5[10] + v3;
LABEL_18:
      v5[10] = v11;
      return result;
    }

    v12 = &__src[__n];
    if (v10)
    {
      result = memcpy(result + v10 + 24, __src, (16 - v10));
      HIDWORD(v13) = v5[2] - 2048144777 * v5[6];
      LODWORD(v13) = HIDWORD(v13);
      v14 = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[3] - 2048144777 * v5[7];
      LODWORD(v13) = HIDWORD(v13);
      v5[2] = v14;
      v5[3] = -1640531535 * (v13 >> 19);
      v15 = v5[9];
      HIDWORD(v13) = v5[4] - 2048144777 * v5[8];
      LODWORD(v13) = HIDWORD(v13);
      v5[4] = -1640531535 * (v13 >> 19);
      HIDWORD(v13) = v5[5] - 2048144777 * v15;
      LODWORD(v13) = HIDWORD(v13);
      v5[5] = -1640531535 * (v13 >> 19);
      v4 += (16 - v5[10]);
      v5[10] = 0;
    }

    if (v4 <= v12 - 16)
    {
      v16 = v5[2];
      v17 = v5[3];
      v18 = v5[4];
      v19 = v5[5];
      do
      {
        HIDWORD(v20) = v16 - 2048144777 * *v4;
        LODWORD(v20) = HIDWORD(v20);
        v16 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v17 - 2048144777 * *(v4 + 1);
        LODWORD(v20) = HIDWORD(v20);
        v17 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v18 - 2048144777 * *(v4 + 2);
        LODWORD(v20) = HIDWORD(v20);
        v18 = -1640531535 * (v20 >> 19);
        HIDWORD(v20) = v19 - 2048144777 * *(v4 + 3);
        LODWORD(v20) = HIDWORD(v20);
        v19 = -1640531535 * (v20 >> 19);
        v4 += 16;
      }

      while (v4 <= v12 - 16);
      v5[2] = v16;
      v5[3] = v17;
      v5[4] = v18;
      v5[5] = v19;
    }

    if (v4 < v12)
    {
      v11 = v12 - v4;
      result = memcpy(v5 + 6, v4, v11);
      goto LABEL_18;
    }
  }

  return result;
}

_DWORD *_MSV_XXH_XXH32_update_17856(_DWORD *result, char *__src)
{
  if (__src)
  {
    v3 = result;
    v4 = result[1];
    v5 = *result + 4;
    *result = v5;
    result[1] = v4 | (v5 > 0xF);
    v6 = result[10];
    v7 = (result + 6);
    if (v6 > 0xB)
    {
      result = memcpy(&v7[v6], __src, (16 - v6));
      HIDWORD(v9) = v3[2] - 2048144777 * v3[6];
      LODWORD(v9) = HIDWORD(v9);
      v10 = -1640531535 * (v9 >> 19);
      HIDWORD(v9) = v3[3] - 2048144777 * v3[7];
      LODWORD(v9) = HIDWORD(v9);
      v3[2] = v10;
      v3[3] = -1640531535 * (v9 >> 19);
      HIDWORD(v9) = v3[4] - 2048144777 * v3[8];
      LODWORD(v9) = HIDWORD(v9);
      v3[4] = -1640531535 * (v9 >> 19);
      HIDWORD(v9) = v3[5] - 2048144777 * v3[9];
      LODWORD(v9) = HIDWORD(v9);
      v3[5] = -1640531535 * (v9 >> 19);
      v11 = v3[10];
      v3[10] = 0;
      v12 = 16 - v11;
      if (v12 > 3)
      {
        return result;
      }

      v13 = &__src[v12];
      v8 = 4 - v12;
      result = memcpy(v7, v13, 4 - v12);
    }

    else
    {
      *&v7[v6] = *__src;
      v8 = result[10] + 4;
    }

    v3[10] = v8;
  }

  return result;
}

unsigned int *_MSV_XXH_XXH64_update_17857(unsigned int *result, char *__src)
{
  if (__src)
  {
    v3 = result;
    *result += 4;
    v4 = result[18];
    v5 = (result + 10);
    if (v4 > 0x1B)
    {
      result = memcpy(&v5[v4], __src, (32 - v4));
      v7 = v3[3] - 0x3D4D51C2D82B14B1 * v3[7];
      v8 = v3[4] - 0x3D4D51C2D82B14B1 * v3[8];
      v9 = 0x9E3779B185EBCA87 * __ROR8__(v3[2] - 0x3D4D51C2D82B14B1 * v3[6], 33);
      v3[1] = 0x9E3779B185EBCA87 * __ROR8__(v3[1] - 0x3D4D51C2D82B14B1 * v3[5], 33);
      v3[2] = v9;
      v3[3] = 0x9E3779B185EBCA87 * __ROR8__(v7, 33);
      v3[4] = 0x9E3779B185EBCA87 * __ROR8__(v8, 33);
      LODWORD(v8) = *(v3 + 18);
      *(v3 + 18) = 0;
      v10 = 32 - v8;
      if (v10 > 3)
      {
        return result;
      }

      v11 = &__src[v10];
      v6 = 4 - v10;
      result = memcpy(v5, v11, 4 - v10);
    }

    else
    {
      *&v5[v4] = *__src;
      v6 = result[18] + 4;
    }

    *(v3 + 18) = v6;
  }

  return result;
}

void sub_1B4647FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPRequestHandlerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!AskPermissionLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __AskPermissionLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7BF6018;
    v8 = 0;
    AskPermissionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AskPermissionLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AskPermissionLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ICStoreDialogResponseHandler.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("APRequestHandler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPRequestHandlerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ICStoreDialogResponseHandler.m" lineNumber:30 description:{@"Unable to find class %s", "APRequestHandler"}];

LABEL_10:
    __break(1u);
  }

  getAPRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AskPermissionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AskPermissionLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t ICFairPlayGetContextIdentifierForFolderPath(void *a1, _DWORD *a2, void *a3)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (![v5 length])
  {
    if (ICFairPlayGetContextIdentifierForFolderPath_sDefaultFolderPathOnceToken != -1)
    {
      dispatch_once(&ICFairPlayGetContextIdentifierForFolderPath_sDefaultFolderPathOnceToken, &__block_literal_global_3_17990);
    }

    v6 = ICFairPlayGetContextIdentifierForFolderPath_sDefaultFolderPath;
  }

  pthread_mutex_lock(&ICFairPlayGetContextIdentifierForFolderPath_sMutex);
  if (!ICFairPlayGetContextIdentifierForFolderPath_sFolderPathToContextID)
  {
LABEL_8:
    value[0] = 0;
    goto LABEL_9;
  }

  value[0] = NSMapGet(ICFairPlayGetContextIdentifierForFolderPath_sFolderPathToContextID, v6);
  if (value[0])
  {
    df35957c4e0();
    if (!v7)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

LABEL_9:
  memset(v21, 0, 24);
  if (!ICFairPlayGetHardwareInfo(v21))
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7500 userInfo:0];
    goto LABEL_13;
  }

  v8 = XtCqEf5X(0, v21, [v6 UTF8String], value);
  if (v8)
  {
    v9 = MEMORY[0x1E696ABC0];
    *&value[1] = *MEMORY[0x1E696AA08];
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v8 userInfo:0];
    v20 = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&value[1] count:1];
    v12 = [v9 errorWithDomain:@"ICError" code:-7501 userInfo:v11];

LABEL_13:
    v13 = 0;
    goto LABEL_18;
  }

  v14 = ICFairPlayGetContextIdentifierForFolderPath_sFolderPathToContextID;
  if (!ICFairPlayGetContextIdentifierForFolderPath_sFolderPathToContextID)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:1282 capacity:1];
    v16 = ICFairPlayGetContextIdentifierForFolderPath_sFolderPathToContextID;
    ICFairPlayGetContextIdentifierForFolderPath_sFolderPathToContextID = v15;

    v14 = ICFairPlayGetContextIdentifierForFolderPath_sFolderPathToContextID;
  }

  NSMapInsert(v14, v6, value[0]);
LABEL_17:
  v12 = 0;
  v13 = 1;
LABEL_18:
  pthread_mutex_unlock(&ICFairPlayGetContextIdentifierForFolderPath_sMutex);
  if (a2)
  {
    *a2 = value[0];
  }

  if (a3)
  {
    v17 = v12;
    *a3 = v12;
  }

  return v13;
}

BOOL ICFairPlayGetHardwareInfo(uint64_t a1)
{
  v2 = MGCopyAnswer();
  ICFairPlayGetHardwareInfoFromDeviceUDID(v2, a1);
  v4 = v3 == 0;

  return v4;
}

void ICFairPlayGetHardwareInfoFromDeviceUDID(char *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [a1 UTF8String];
    v4 = strlen(v3);
    a1 = v3;
  }

  else
  {
    v4 = 0;
  }

  zxcm2Qme0x(a1, v4, a2);
}

void __ICFairPlayGetContextIdentifierForFolderPath_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"iTunes_Control", @"iTunes", 0}];
  v0 = [MEMORY[0x1E696AEC0] pathWithComponents:v2];
  v1 = ICFairPlayGetContextIdentifierForFolderPath_sDefaultFolderPath;
  ICFairPlayGetContextIdentifierForFolderPath_sDefaultFolderPath = v0;
}

BOOL ICFairPlayCopyKeyBagSyncData(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = 0;
  v15 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v16, &v15);
  v9 = v15;
  if (ContextIdentifierForFolderPath)
  {
    v14 = v9;
    v10 = ICFairPlayCopyKeyBagSyncDataWithContextID(v16, a1, a2, a3, &v14);
    v11 = v14;

    v9 = v11;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (a4)
  {
LABEL_5:
    v12 = v9;
    *a4 = v9;
  }

LABEL_6:

  return v10;
}

BOOL ICFairPlayCopyKeyBagSyncDataWithContextID(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v15 = 0;
  v14 = 0;
  Mt76Vq80ux(a1, a2, 0, a3, &v15, &v14);
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v7 userInfo:0];
    v10 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E695DEF0] ic_dataWithFairPlayBytes:v15 length:v14];
  v9 = 0;
  if (a4)
  {
LABEL_3:
    v11 = v10;
    *a4 = v10;
  }

LABEL_4:
  if (a5)
  {
    v12 = v9;
    *a5 = v9;
  }

  return v8 == 0;
}

BOOL ICFairPlayImportKeybagData(void *a1, void *a2)
{
  v3 = a1;
  v12 = 0;
  v11 = 0;
  ContextIdentifierForFolderPath = ICFairPlayGetContextIdentifierForFolderPath(0, &v12, &v11);
  v5 = v11;
  if (ContextIdentifierForFolderPath)
  {
    v10 = v5;
    v6 = ICFairPlayImportKeybagDataWithContextID(v12, v3, &v10);
    v7 = v10;

    v5 = v7;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if (a2)
  {
LABEL_5:
    v8 = v5;
    *a2 = v5;
  }

LABEL_6:

  return v6;
}

BOOL ICFairPlayImportKeybagDataWithContextID(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    [v4 bytes];
    [v5 length];
    ha0dkchaters6();
    v7 = v6 == 0;
    if (v6)
    {
      v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v6 userInfo:0];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  if (a3)
  {
    v4 = v4;
    *a3 = v4;
  }

  return v7;
}

uint64_t _ICLLQueryMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 1)
      {
        if (!v13)
        {
          v15 = 0;
          while (1)
          {
            LOBYTE(v22) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            if ((v22 & 0x80000000) == 0)
            {
              break;
            }

            if (v15++ > 8)
            {
              goto LABEL_47;
            }
          }

          [a2 hasError];
          goto LABEL_47;
        }

        if (v13 == 1)
        {
          [(_ICLLQueryMessage *)a1 clearOneofValuesForQuery];
          *(a1 + 48) |= 1u;
          *(a1 + 32) = 1;
          v14 = objc_alloc_init(_ICLLQueueQuery);
          objc_storeStrong((a1 + 40), v14);
          v22 = 0;
          v23 = 0;
          if (!PBReaderPlaceMark() || !_ICLLQueueQueryReadFrom(v14, a2))
          {
LABEL_49:

            return 0;
          }

          goto LABEL_34;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            [(_ICLLQueryMessage *)a1 clearOneofValuesForQuery];
            *(a1 + 48) |= 1u;
            *(a1 + 32) = 2;
            v14 = objc_alloc_init(_ICLLPlaybackSyncStateQuery);
            objc_storeStrong((a1 + 24), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !_ICLLPlaybackSyncStateQueryReadFrom(v14, a2))
            {
              goto LABEL_49;
            }

            goto LABEL_34;
          case 3:
            [(_ICLLQueryMessage *)a1 clearOneofValuesForQuery];
            *(a1 + 48) |= 1u;
            *(a1 + 32) = 3;
            v14 = objc_alloc_init(_ICLLPlaybackControlSettingsQuery);
            objc_storeStrong((a1 + 16), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !_ICLLPlaybackControlSettingsQueryReadFrom(v14, a2))
            {
              goto LABEL_49;
            }

            goto LABEL_34;
          case 4:
            [(_ICLLQueryMessage *)a1 clearOneofValuesForQuery];
            *(a1 + 48) |= 1u;
            *(a1 + 32) = 4;
            v14 = objc_alloc_init(_ICLLParticipantQuery);
            objc_storeStrong((a1 + 8), v14);
            v22 = 0;
            v23 = 0;
            if (!PBReaderPlaceMark() || !_ICLLParticipantQueryReadFrom(v14, a2))
            {
              goto LABEL_49;
            }

LABEL_34:
            PBReaderRecallMark();

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v20 = [a2 position];
    }

    while (v20 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void *__getBYSetupAssistantLaunchedDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantLaunchedDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantLaunchedDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantFinishedDarwinNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibrary();
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t _ICLLParticipantChangeActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = objc_alloc_init(_ICLLParticipantQuery);
        objc_storeStrong((a1 + 16), v28);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !_ICLLParticipantQueryReadFrom(v28, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v31[0] & 0x7F) << v21;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_46:
        *(a1 + 8) = v27;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 24) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICIAMApplicationMessageSyncResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(ICIAMApplicationMessageSyncCommand);
    [a1 addSyncCommands:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !ICIAMApplicationMessageSyncCommandReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICPAPlayModeDictionaryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v36 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v36 & 0x7F) << v28;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___ICPAPlayModeDictionary__autoPlayMode;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___ICPAPlayModeDictionary__autoPlayMode;
        goto LABEL_52;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v38 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v38 & 0x7F) << v14;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___ICPAPlayModeDictionary__repeatPlayMode;
            goto LABEL_55;
          }
        }

        v22 = &OBJC_IVAR___ICPAPlayModeDictionary__repeatPlayMode;
        goto LABEL_52;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v16 = 0;
    *(a1 + 20) |= 4u;
    while (1)
    {
      v37 = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v37 & 0x7F) << v23;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v20 = v24++ > 8;
      if (v20)
      {
        v21 = 0;
        v22 = &OBJC_IVAR___ICPAPlayModeDictionary__shufflePlayMode;
        goto LABEL_55;
      }
    }

    v22 = &OBJC_IVAR___ICPAPlayModeDictionary__shufflePlayMode;
LABEL_52:
    if ([a2 hasError])
    {
      v21 = 0;
    }

    else
    {
      v21 = v16;
    }

LABEL_55:
    *(a1 + *v22) = v21;
    goto LABEL_56;
  }

  return [a2 hasError] ^ 1;
}

void sub_1B4651798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18954(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _ICLLCurrentItemChangeCommandReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B465622C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19308(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19525(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B4659CD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 104));
  _Unwind_Resume(a1);
}

uint64_t _ICLLParticipantQueryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_ICLLParticipant);
        [(_ICLLParticipantQuery *)a1 addParticipant:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_ICLLParticipantReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _ICLLQueueQueryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v26) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v26 & 0x7F) << v17;
            if ((v26 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_43;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_43:
          *(a1 + 32) = v23;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(_ICLLPlaybackControlSettings);
          objc_storeStrong((a1 + 8), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !_ICLLPlaybackControlSettingsReadFrom(v16, a2))
          {
LABEL_46:

            return 0;
          }

          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v16 = objc_alloc_init(_ICLLQueue);
          objc_storeStrong((a1 + 16), v16);
          v26 = 0;
          v27 = 0;
          if (!PBReaderPlaceMark() || !_ICLLQueueReadFrom(v16, a2))
          {
            goto LABEL_46;
          }

LABEL_30:
          PBReaderRecallMark();

          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = *(a1 + 24);
          *(a1 + 24) = v14;

          goto LABEL_44;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_44:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICIAMMessageActionReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v15 = PBReaderReadString();
            v16 = 32;
            goto LABEL_55;
          case 2:
            v15 = PBReaderReadString();
            v16 = 24;
            goto LABEL_55;
          case 3:
            v15 = PBReaderReadString();
            v16 = 48;
LABEL_55:
            v31 = *(a1 + v16);
            *(a1 + v16) = v15;

            goto LABEL_62;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(ICIAMMetricEvent);
          objc_storeStrong((a1 + 16), v14);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !ICIAMMetricEventReadFrom(v14, a2))
          {
LABEL_64:

            return 0;
          }

          goto LABEL_53;
        }

        if (v13 == 7)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v34) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v34 & 0x7F) << v17;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_61;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_61:
          *(a1 + 40) = v23;
          goto LABEL_62;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 60) |= 2u;
          while (1)
          {
            LOBYTE(v34) = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v34 & 0x7F) << v24;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v30) = 0;
              goto LABEL_57;
            }
          }

          v30 = (v26 != 0) & ~[a2 hasError];
LABEL_57:
          *(a1 + 56) = v30;
          goto LABEL_62;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(ICIAMParameter);
          [a1 addActionParameters:v14];
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !ICIAMParameterReadFrom(v14, a2))
          {
            goto LABEL_64;
          }

LABEL_53:
          PBReaderRecallMark();

          goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B4661EA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20514(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1B8C781E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B466CB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a15, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21425(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ICIAMMessageContentReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v20) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 13)
        {
          if (v13 == 6)
          {
            v14 = objc_alloc_init(ICIAMParameter);
            [a1 addContentParameters:v14];
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !ICIAMParameterReadFrom(v14, a2))
            {
LABEL_56:

              return 0;
            }

LABEL_49:
            PBReaderRecallMark();
LABEL_50:

            goto LABEL_51;
          }

          if (v13 == 7)
          {
            v16 = PBReaderReadString();
            v17 = 40;
            goto LABEL_41;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xE:
              v14 = objc_alloc_init(ICIAMMetricEvent);
              v15 = 64;
              goto LABEL_47;
            case 0xF:
              v14 = objc_alloc_init(ICIAMMetricEvent);
              v15 = 24;
              goto LABEL_47;
            case 0x10:
              v14 = objc_alloc_init(ICIAMMetricEvent);
              v15 = 16;
LABEL_47:
              objc_storeStrong(&a1[v15], v14);
              v20 = 0;
              v21 = 0;
              if (!PBReaderPlaceMark() || !ICIAMMetricEventReadFrom(v14, a2))
              {
                goto LABEL_56;
              }

              goto LABEL_49;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 80;
LABEL_41:
          v14 = *&a1[v17];
          *&a1[v17] = v16;
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = 8;
            goto LABEL_41;
          case 4:
            v14 = objc_alloc_init(ICIAMImage);
            [a1 addImages:v14];
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !ICIAMImageReadFrom(v14, a2))
            {
              goto LABEL_56;
            }

            goto LABEL_49;
          case 5:
            v14 = objc_alloc_init(ICIAMMessageAction);
            [a1 addMessageActions:v14];
            v20 = 0;
            v21 = 0;
            if (!PBReaderPlaceMark() || !ICIAMMessageActionReadFrom(v14, a2))
            {
              goto LABEL_56;
            }

            goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *NSStringFromICFavoriteMediaEntityType(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownCode/%lld", a1];
  }

  else
  {
    v2 = off_1E7BF6538[a1];
  }

  return v2;
}

void sub_1B4670220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _ICRemoteRequestOperationIsAllowedForClassName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (_ICRemoteRequestOperationIsAllowedForClassName_sAllowableRemoteRequestOperationClassNamesOnceToken != -1)
  {
    dispatch_once(&_ICRemoteRequestOperationIsAllowedForClassName_sAllowableRemoteRequestOperationClassNamesOnceToken, &__block_literal_global_22060);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = [_ICRemoteRequestOperationIsAllowedForClassName_sAllowableRemoteRequestOperationClassNames containsObject:v2];
LABEL_6:

  return v3;
}

uint64_t __Block_byref_object_copy__22223(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getML3MusicLibraryClass_22257()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getML3MusicLibraryClass_softClass_22258;
  v7 = getML3MusicLibraryClass_softClass_22258;
  if (!getML3MusicLibraryClass_softClass_22258)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getML3MusicLibraryClass_block_invoke_22259;
    v3[3] = &unk_1E7BFA0A0;
    v3[4] = &v4;
    __getML3MusicLibraryClass_block_invoke_22259(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B4673134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getML3MusicLibraryClass_block_invoke_22259(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MusicLibraryLibraryCore_frameworkLibrary_22260)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MusicLibraryLibraryCore_block_invoke_22261;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7BF6610;
    v8 = 0;
    MusicLibraryLibraryCore_frameworkLibrary_22260 = _sl_dlopen();
  }

  if (!MusicLibraryLibraryCore_frameworkLibrary_22260)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MusicLibraryLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ICPlaybackPositionClient.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ML3MusicLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getML3MusicLibraryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ICPlaybackPositionClient.m" lineNumber:19 description:{@"Unable to find class %s", "ML3MusicLibrary"}];

LABEL_10:
    __break(1u);
  }

  getML3MusicLibraryClass_softClass_22258 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MusicLibraryLibraryCore_block_invoke_22261()
{
  result = _sl_dlopen();
  MusicLibraryLibraryCore_frameworkLibrary_22260 = result;
  return result;
}

void sub_1B4673A28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

uint64_t ICIAMMessageRuleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v22 = PBReaderReadString();
            v23 = 8;
            goto LABEL_46;
          case 2:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v34 & 0x7F) << v25;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_63;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v27;
            }

LABEL_63:
            v31 = 56;
            goto LABEL_64;
          case 3:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              LOBYTE(v34) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v34 & 0x7F) << v15;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_59;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_59:
            v31 = 24;
LABEL_64:
            *(a1 + v31) = v21;
            goto LABEL_65;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v22 = PBReaderReadString();
          v23 = 48;
          goto LABEL_46;
        }

        if (v13 == 7)
        {
          v22 = PBReaderReadString();
          v23 = 16;
LABEL_46:
          v24 = *(a1 + v23);
          *(a1 + v23) = v22;

          goto LABEL_65;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(ICIAMMessageRule);
          [a1 addSubrules:v14];
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !ICIAMMessageRuleReadFrom(v14, a2))
          {
LABEL_67:

            return 0;
          }

          goto LABEL_44;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(ICIAMTriggerCondition);
          objc_storeStrong((a1 + 40), v14);
          v34 = 0;
          v35 = 0;
          if (!PBReaderPlaceMark() || !ICIAMTriggerConditionReadFrom(v14, a2))
          {
            goto LABEL_67;
          }

LABEL_44:
          PBReaderRecallMark();

          goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1B46770F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22829(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B46777A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ICPAPlayActivityEnqueuerPropertiesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v21 = PBReaderReadString();
            v22 = 32;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_71;
            }

            v21 = PBReaderReadString();
            v22 = 56;
          }
        }

        else if (v13 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 16;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_71;
          }

          v21 = PBReaderReadString();
          v22 = 24;
        }
      }

      else
      {
        if (v13 <= 6)
        {
          if (v13 == 5)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              v48 = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v48 & 0x7F) << v36;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v42 = 0;
                goto LABEL_82;
              }
            }

            if ([a2 hasError])
            {
              v42 = 0;
            }

            else
            {
              v42 = v38;
            }

LABEL_82:
            *(a1 + 48) = v42;
            goto LABEL_86;
          }

          if (v13 != 6)
          {
LABEL_71:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_86;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v50 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v50 & 0x7F) << v23;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_74;
            }
          }

          v20 = (v25 != 0) & ~[a2 hasError];
LABEL_74:
          v45 = 65;
          goto LABEL_85;
        }

        if (v13 == 7)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v51 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v51 & 0x7F) << v29;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v35 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_78:
          *(a1 + 8) = v35;
          goto LABEL_86;
        }

        if (v13 != 8)
        {
          if (v13 != 9)
          {
            goto LABEL_71;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v49 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v14;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_84;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_84:
          v45 = 64;
LABEL_85:
          *(a1 + v45) = v20;
          goto LABEL_86;
        }

        v21 = PBReaderReadString();
        v22 = 40;
      }

      v43 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_86:
      v46 = [a2 position];
    }

    while (v46 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ICPAPlayActivityEventReadFrom(uint64_t a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v301) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v301 & 0x7F) << v6;
      if ((v301 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 232;
        goto LABEL_438;
      case 2u:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        *(a1 + 528) |= 0x2000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v137 = [a2 position] + 1;
          if (v137 >= [a2 position] && (v138 = objc_msgSend(a2, "position") + 1, v138 <= objc_msgSend(a2, "length")))
          {
            v139 = [a2 data];
            [v139 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v136 |= (v301 & 0x7F) << v134;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v12 = v135++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_525;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v136;
        }

LABEL_525:
        v289 = 240;
        goto LABEL_601;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 248;
        goto LABEL_438;
      case 4u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 528) |= 0x8000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v167 = [a2 position] + 1;
          if (v167 >= [a2 position] && (v168 = objc_msgSend(a2, "position") + 1, v168 <= objc_msgSend(a2, "length")))
          {
            v169 = [a2 data];
            [v169 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v166 |= (v301 & 0x7F) << v164;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v12 = v165++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_543;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v166;
        }

LABEL_543:
        v289 = 260;
        goto LABEL_601;
      case 5u:
        *(a1 + 528) |= 0x20uLL;
        v301 = 0;
        v170 = [a2 position] + 8;
        if (v170 >= [a2 position] && (v171 = objc_msgSend(a2, "position") + 8, v171 <= objc_msgSend(a2, "length")))
        {
          v297 = [a2 data];
          [v297 getBytes:&v301 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v293 = v301;
        v294 = 48;
        goto LABEL_623;
      case 6u:
        *(a1 + 528) |= 0x40uLL;
        v301 = 0;
        v114 = [a2 position] + 8;
        if (v114 >= [a2 position] && (v115 = objc_msgSend(a2, "position") + 8, v115 <= objc_msgSend(a2, "length")))
        {
          v296 = [a2 data];
          [v296 getBytes:&v301 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v293 = v301;
        v294 = 56;
        goto LABEL_623;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 288;
        goto LABEL_438;
      case 8u:
        v14 = PBReaderReadString();
        v15 = 296;
        goto LABEL_438;
      case 9u:
        *(a1 + 528) |= 0x100uLL;
        v301 = 0;
        v186 = [a2 position] + 8;
        if (v186 >= [a2 position] && (v187 = objc_msgSend(a2, "position") + 8, v187 <= objc_msgSend(a2, "length")))
        {
          v299 = [a2 data];
          [v299 getBytes:&v301 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v293 = v301;
        v294 = 72;
        goto LABEL_623;
      case 0xAu:
        *(a1 + 528) |= 0x200uLL;
        v301 = 0;
        v178 = [a2 position] + 8;
        if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 8, v179 <= objc_msgSend(a2, "length")))
        {
          v298 = [a2 data];
          [v298 getBytes:&v301 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v293 = v301;
        v294 = 80;
        goto LABEL_623;
      case 0xBu:
        *(a1 + 528) |= 0x400uLL;
        v301 = 0;
        v100 = [a2 position] + 8;
        if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 8, v101 <= objc_msgSend(a2, "length")))
        {
          v295 = [a2 data];
          [v295 getBytes:&v301 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v293 = v301;
        v294 = 88;
        goto LABEL_623;
      case 0xCu:
        v116 = 0;
        v117 = 0;
        v118 = 0;
        *(a1 + 528) |= 0x20000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v119 = [a2 position] + 1;
          if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 1, v120 <= objc_msgSend(a2, "length")))
          {
            v121 = [a2 data];
            [v121 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v118 |= (v301 & 0x7F) << v116;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v116 += 7;
          v12 = v117++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_513;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v118;
        }

LABEL_513:
        v289 = 320;
        goto LABEL_601;
      case 0xDu:
        v108 = 0;
        v109 = 0;
        v110 = 0;
        *(a1 + 528) |= 0x40000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v111 = [a2 position] + 1;
          if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 1, v112 <= objc_msgSend(a2, "length")))
          {
            v113 = [a2 data];
            [v113 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v110 |= (v301 & 0x7F) << v108;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v108 += 7;
          v12 = v109++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_509;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v110;
        }

LABEL_509:
        v289 = 344;
        goto LABEL_601;
      case 0xEu:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 528) |= 0x200000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v301 & 0x7F) << v82;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_493;
          }
        }

        v31 = (v84 != 0) & ~[a2 hasError];
LABEL_493:
        v290 = 522;
        goto LABEL_608;
      case 0xFu:
        v146 = 0;
        v147 = 0;
        v148 = 0;
        *(a1 + 528) |= 0x800uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v149 = [a2 position] + 1;
          if (v149 >= [a2 position] && (v150 = objc_msgSend(a2, "position") + 1, v150 <= objc_msgSend(a2, "length")))
          {
            v151 = [a2 data];
            [v151 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v148 |= (v301 & 0x7F) << v146;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v146 += 7;
          v12 = v147++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_533;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v148;
        }

LABEL_533:
        v291 = 96;
        goto LABEL_592;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 352;
        goto LABEL_438;
      case 0x11u:
        v200 = 0;
        v201 = 0;
        v202 = 0;
        *(a1 + 528) |= 0x800000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v203 = [a2 position] + 1;
          if (v203 >= [a2 position] && (v204 = objc_msgSend(a2, "position") + 1, v204 <= objc_msgSend(a2, "length")))
          {
            v205 = [a2 data];
            [v205 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v202 |= (v301 & 0x7F) << v200;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v200 += 7;
          v12 = v201++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_559;
          }
        }

        v31 = (v202 != 0) & ~[a2 hasError];
LABEL_559:
        v290 = 524;
        goto LABEL_608;
      case 0x12u:
        v188 = 0;
        v189 = 0;
        v190 = 0;
        *(a1 + 528) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v191 = [a2 position] + 1;
          if (v191 >= [a2 position] && (v192 = objc_msgSend(a2, "position") + 1, v192 <= objc_msgSend(a2, "length")))
          {
            v193 = [a2 data];
            [v193 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v190 |= (v301 & 0x7F) << v188;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v188 += 7;
          v12 = v189++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_553;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v190;
        }

LABEL_553:
        v289 = 436;
        goto LABEL_601;
      case 0x13u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        *(a1 + 528) |= 0x40000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v79 = [a2 position] + 1;
          if (v79 >= [a2 position] && (v80 = objc_msgSend(a2, "position") + 1, v80 <= objc_msgSend(a2, "length")))
          {
            v81 = [a2 data];
            [v81 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v78 |= (v301 & 0x7F) << v76;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_491;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v78;
        }

LABEL_491:
        v291 = 152;
        goto LABEL_592;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 464;
        goto LABEL_438;
      case 0x15u:
        v14 = PBReaderReadData();
        v15 = 488;
        goto LABEL_438;
      case 0x16u:
        v14 = PBReaderReadData();
        v15 = 496;
        goto LABEL_438;
      case 0x17u:
        v14 = PBReaderReadData();
        v15 = 408;
        goto LABEL_438;
      case 0x18u:
        v14 = PBReaderReadString();
        v15 = 456;
        goto LABEL_438;
      case 0x19u:
        v128 = 0;
        v129 = 0;
        v130 = 0;
        *(a1 + 528) |= 0x10000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v131 = [a2 position] + 1;
          if (v131 >= [a2 position] && (v132 = objc_msgSend(a2, "position") + 1, v132 <= objc_msgSend(a2, "length")))
          {
            v133 = [a2 data];
            [v133 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v130 |= (v301 & 0x7F) << v128;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v128 += 7;
          v12 = v129++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_521;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v130;
        }

LABEL_521:
        v289 = 280;
        goto LABEL_601;
      case 0x1Au:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 528) |= 0x80000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v301 & 0x7F) << v88;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_497;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v90;
        }

LABEL_497:
        v291 = 160;
        goto LABEL_592;
      case 0x1Bu:
        v248 = 0;
        v249 = 0;
        v250 = 0;
        *(a1 + 528) |= 0x1000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v251 = [a2 position] + 1;
          if (v251 >= [a2 position] && (v252 = objc_msgSend(a2, "position") + 1, v252 <= objc_msgSend(a2, "length")))
          {
            v253 = [a2 data];
            [v253 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v250 |= (v301 & 0x7F) << v248;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v248 += 7;
          v12 = v249++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_591;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v250;
        }

LABEL_591:
        v291 = 104;
        goto LABEL_592;
      case 0x1Cu:
        v242 = 0;
        v243 = 0;
        v244 = 0;
        *(a1 + 528) |= 0x2000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v245 = [a2 position] + 1;
          if (v245 >= [a2 position] && (v246 = objc_msgSend(a2, "position") + 1, v246 <= objc_msgSend(a2, "length")))
          {
            v247 = [a2 data];
            [v247 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v244 |= (v301 & 0x7F) << v242;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v242 += 7;
          v12 = v243++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_587;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v244;
        }

LABEL_587:
        v291 = 112;
        goto LABEL_592;
      case 0x1Du:
        v102 = 0;
        v103 = 0;
        v104 = 0;
        *(a1 + 528) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v105 = [a2 position] + 1;
          if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 1, v106 <= objc_msgSend(a2, "length")))
          {
            v107 = [a2 data];
            [v107 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v104 |= (v301 & 0x7F) << v102;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v102 += 7;
          v12 = v103++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_505;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v104;
        }

LABEL_505:
        v291 = 64;
        goto LABEL_592;
      case 0x1Eu:
        v14 = PBReaderReadString();
        v15 = 336;
        goto LABEL_438;
      case 0x1Fu:
        v158 = 0;
        v159 = 0;
        v160 = 0;
        *(a1 + 528) |= 8uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v161 = [a2 position] + 1;
          if (v161 >= [a2 position] && (v162 = objc_msgSend(a2, "position") + 1, v162 <= objc_msgSend(a2, "length")))
          {
            v163 = [a2 data];
            [v163 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v160 |= (v301 & 0x7F) << v158;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v158 += 7;
          v12 = v159++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_539;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v160;
        }

LABEL_539:
        v291 = 32;
        goto LABEL_592;
      case 0x20u:
        v14 = PBReaderReadString();
        v15 = 304;
        goto LABEL_438;
      case 0x21u:
        v14 = PBReaderReadString();
        v15 = 440;
        goto LABEL_438;
      case 0x22u:
        v14 = PBReaderReadString();
        v15 = 448;
        goto LABEL_438;
      case 0x23u:
        v194 = 0;
        v195 = 0;
        v196 = 0;
        *(a1 + 528) |= 0x20000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v197 = [a2 position] + 1;
          if (v197 >= [a2 position] && (v198 = objc_msgSend(a2, "position") + 1, v198 <= objc_msgSend(a2, "length")))
          {
            v199 = [a2 data];
            [v199 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v196 |= (v301 & 0x7F) << v194;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v194 += 7;
          v12 = v195++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_557;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v196;
        }

LABEL_557:
        v291 = 144;
        goto LABEL_592;
      case 0x24u:
        v14 = PBReaderReadString();
        v15 = 224;
        goto LABEL_438;
      case 0x25u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        *(a1 + 528) |= 4uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v61 = [a2 position] + 1;
          if (v61 >= [a2 position] && (v62 = objc_msgSend(a2, "position") + 1, v62 <= objc_msgSend(a2, "length")))
          {
            v63 = [a2 data];
            [v63 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v60 |= (v301 & 0x7F) << v58;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v12 = v59++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_479;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v60;
        }

LABEL_479:
        v291 = 24;
        goto LABEL_592;
      case 0x26u:
        v172 = 0;
        v173 = 0;
        v174 = 0;
        *(a1 + 528) |= 0x100000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v175 = [a2 position] + 1;
          if (v175 >= [a2 position] && (v176 = objc_msgSend(a2, "position") + 1, v176 <= objc_msgSend(a2, "length")))
          {
            v177 = [a2 data];
            [v177 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v174 |= (v301 & 0x7F) << v172;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v172 += 7;
          v12 = v173++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_547;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v174;
        }

LABEL_547:
        v289 = 400;
        goto LABEL_601;
      case 0x27u:
        v14 = PBReaderReadString();
        v15 = 216;
        goto LABEL_438;
      case 0x28u:
        v14 = PBReaderReadString();
        v15 = 376;
        goto LABEL_438;
      case 0x29u:
        v14 = PBReaderReadString();
        v15 = 416;
        goto LABEL_438;
      case 0x2Au:
        v14 = PBReaderReadString();
        v15 = 424;
        goto LABEL_438;
      case 0x2Bu:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        *(a1 + 528) |= 0x10uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v209 = [a2 position] + 1;
          if (v209 >= [a2 position] && (v210 = objc_msgSend(a2, "position") + 1, v210 <= objc_msgSend(a2, "length")))
          {
            v211 = [a2 data];
            [v211 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v208 |= (v301 & 0x7F) << v206;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v206 += 7;
          v12 = v207++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_563;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v208;
        }

LABEL_563:
        v291 = 40;
        goto LABEL_592;
      case 0x2Cu:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 528) |= 0x80000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v301 & 0x7F) << v32;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v12 = v33++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_465;
          }
        }

        v31 = (v34 != 0) & ~[a2 hasError];
LABEL_465:
        v290 = 520;
        goto LABEL_608;
      case 0x2Du:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 528) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v301 & 0x7F) << v64;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_483;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v66;
        }

LABEL_483:
        v291 = 168;
        goto LABEL_592;
      case 0x2Eu:
        v140 = 0;
        v141 = 0;
        v142 = 0;
        *(a1 + 528) |= 0x200000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v143 = [a2 position] + 1;
          if (v143 >= [a2 position] && (v144 = objc_msgSend(a2, "position") + 1, v144 <= objc_msgSend(a2, "length")))
          {
            v145 = [a2 data];
            [v145 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v142 |= (v301 & 0x7F) << v140;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v140 += 7;
          v12 = v141++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_529;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v142;
        }

LABEL_529:
        v291 = 176;
        goto LABEL_592;
      case 0x2Fu:
        v44 = objc_alloc_init(ICPAPlayActivityEnqueuerProperties);
        objc_storeStrong((a1 + 264), v44);
        v301 = 0;
        v302 = 0;
        if (!PBReaderPlaceMark() || (ICPAPlayActivityEnqueuerPropertiesReadFrom(v44, a2) & 1) == 0)
        {
          goto LABEL_626;
        }

        goto LABEL_445;
      case 0x30u:
        v14 = PBReaderReadString();
        v15 = 312;
        goto LABEL_438;
      case 0x31u:
        v152 = 0;
        v153 = 0;
        v154 = 0;
        *(a1 + 528) |= 0x400000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v155 = [a2 position] + 1;
          if (v155 >= [a2 position] && (v156 = objc_msgSend(a2, "position") + 1, v156 <= objc_msgSend(a2, "length")))
          {
            v157 = [a2 data];
            [v157 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v154 |= (v301 & 0x7F) << v152;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v152 += 7;
          v12 = v153++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_535;
          }
        }

        v31 = (v154 != 0) & ~[a2 hasError];
LABEL_535:
        v290 = 523;
        goto LABEL_608;
      case 0x32u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 528) |= 0x1000000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v55 = [a2 position] + 1;
          if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v54 |= (v301 & 0x7F) << v52;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v12 = v53++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_475;
          }
        }

        v31 = (v54 != 0) & ~[a2 hasError];
LABEL_475:
        v290 = 525;
        goto LABEL_608;
      case 0x33u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 528) |= 0x800000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v301 & 0x7F) << v38;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v12 = v39++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_469;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v40;
        }

LABEL_469:
        v289 = 472;
        goto LABEL_601;
      case 0x34u:
        v14 = PBReaderReadString();
        v15 = 272;
        goto LABEL_438;
      case 0x3Du:
        v260 = 0;
        v261 = 0;
        v262 = 0;
        *(a1 + 528) |= 0x4000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v263 = [a2 position] + 1;
          if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 1, v264 <= objc_msgSend(a2, "length")))
          {
            v265 = [a2 data];
            [v265 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v262 |= (v301 & 0x7F) << v260;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v260 += 7;
          v12 = v261++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_600;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v262;
        }

LABEL_600:
        v289 = 256;
        goto LABEL_601;
      case 0x56u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 528) |= 1uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v301 & 0x7F) << v45;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_473;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v47;
        }

LABEL_473:
        v291 = 8;
        goto LABEL_592;
      case 0x57u:
        v14 = PBReaderReadString();
        v15 = 328;
        goto LABEL_438;
      case 0x58u:
        v44 = PBReaderReadString();
        if (v44)
        {
          [(ICPAPlayActivityEvent *)a1 addBuildFeatures:v44];
        }

        goto LABEL_446;
      case 0x59u:
        v44 = objc_alloc_init(ICPAPlayModeDictionary);
        objc_storeStrong((a1 + 360), v44);
        v301 = 0;
        v302 = 0;
        if (!PBReaderPlaceMark() || (ICPAPlayModeDictionaryReadFrom(v44, a2) & 1) == 0)
        {
          goto LABEL_626;
        }

        goto LABEL_445;
      case 0x5Au:
        v236 = 0;
        v237 = 0;
        v238 = 0;
        *(a1 + 528) |= 0x1000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v239 = [a2 position] + 1;
          if (v239 >= [a2 position] && (v240 = objc_msgSend(a2, "position") + 1, v240 <= objc_msgSend(a2, "length")))
          {
            v241 = [a2 data];
            [v241 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v238 |= (v301 & 0x7F) << v236;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v236 += 7;
          v12 = v237++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_583;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v238;
        }

LABEL_583:
        v289 = 200;
        goto LABEL_601;
      case 0x5Bu:
        v212 = 0;
        v213 = 0;
        v214 = 0;
        *(a1 + 528) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v215 = [a2 position] + 1;
          if (v215 >= [a2 position] && (v216 = objc_msgSend(a2, "position") + 1, v216 <= objc_msgSend(a2, "length")))
          {
            v217 = [a2 data];
            [v217 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v214 |= (v301 & 0x7F) << v212;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v212 += 7;
          v12 = v213++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_567;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v214;
        }

LABEL_567:
        v289 = 368;
        goto LABEL_601;
      case 0x5Cu:
        v44 = objc_alloc_init(ICPAAudioQualityDictionary);
        v272 = 480;
        goto LABEL_443;
      case 0x5Du:
        v44 = objc_alloc_init(ICPAAudioQualityDictionary);
        v272 = 384;
LABEL_443:
        objc_storeStrong((a1 + v272), v44);
        v301 = 0;
        v302 = 0;
        if (PBReaderPlaceMark() && (ICPAAudioQualityDictionaryReadFrom(v44, a2) & 1) != 0)
        {
LABEL_445:
          PBReaderRecallMark();
LABEL_446:

LABEL_624:
          v4 = a2;
          continue;
        }

LABEL_626:

        return 0;
      case 0x5Eu:
        v14 = PBReaderReadString();
        v15 = 392;
LABEL_438:
        v279 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_624;
      case 0x5Fu:
        v218 = 0;
        v219 = 0;
        v220 = 0;
        *(a1 + 528) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v221 = [a2 position] + 1;
          if (v221 >= [a2 position] && (v222 = objc_msgSend(a2, "position") + 1, v222 <= objc_msgSend(a2, "length")))
          {
            v223 = [a2 data];
            [v223 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v220 |= (v301 & 0x7F) << v218;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v218 += 7;
          v12 = v219++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_571;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v220;
        }

LABEL_571:
        v291 = 120;
        goto LABEL_592;
      case 0x60u:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        *(a1 + 528) |= 0x8000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v227 = [a2 position] + 1;
          if (v227 >= [a2 position] && (v228 = objc_msgSend(a2, "position") + 1, v228 <= objc_msgSend(a2, "length")))
          {
            v229 = [a2 data];
            [v229 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v226 |= (v301 & 0x7F) << v224;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v12 = v225++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_575;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v226;
        }

LABEL_575:
        v291 = 128;
        goto LABEL_592;
      case 0x61u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 528) |= 0x10000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v301 & 0x7F) << v94;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_501;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v96;
        }

LABEL_501:
        v291 = 136;
        goto LABEL_592;
      case 0x62u:
        v254 = 0;
        v255 = 0;
        v256 = 0;
        *(a1 + 528) |= 0x4000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v257 = [a2 position] + 1;
          if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 1, v258 <= objc_msgSend(a2, "length")))
          {
            v259 = [a2 data];
            [v259 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v256 |= (v301 & 0x7F) << v254;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v254 += 7;
          v12 = v255++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_596;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v256;
        }

LABEL_596:
        v289 = 512;
        goto LABEL_601;
      case 0x63u:
        *(a1 + 528) |= 0x400000uLL;
        v301 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v292 = [a2 data];
          [v292 getBytes:&v301 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v293 = v301;
        v294 = 184;
        goto LABEL_623;
      case 0x64u:
        v266 = 0;
        v267 = 0;
        v268 = 0;
        *(a1 + 528) |= 0x8000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v269 = [a2 position] + 1;
          if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 1, v270 <= objc_msgSend(a2, "length")))
          {
            v271 = [a2 data];
            [v271 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v268 |= (v301 & 0x7F) << v266;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v266 += 7;
          v12 = v267++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_603;
          }
        }

        v31 = (v268 != 0) & ~[a2 hasError];
LABEL_603:
        v290 = 516;
        goto LABEL_608;
      case 0x65u:
        v273 = 0;
        v274 = 0;
        v275 = 0;
        *(a1 + 528) |= 0x100000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v276 = [a2 position] + 1;
          if (v276 >= [a2 position] && (v277 = objc_msgSend(a2, "position") + 1, v277 <= objc_msgSend(a2, "length")))
          {
            v278 = [a2 data];
            [v278 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v275 |= (v301 & 0x7F) << v273;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v273 += 7;
          v12 = v274++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_605;
          }
        }

        v31 = (v275 != 0) & ~[a2 hasError];
LABEL_605:
        v290 = 521;
        goto LABEL_608;
      case 0x66u:
        v122 = 0;
        v123 = 0;
        v124 = 0;
        *(a1 + 528) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v125 = [a2 position] + 1;
          if (v125 >= [a2 position] && (v126 = objc_msgSend(a2, "position") + 1, v126 <= objc_msgSend(a2, "length")))
          {
            v127 = [a2 data];
            [v127 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v124 |= (v301 & 0x7F) << v122;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v122 += 7;
          v12 = v123++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_517;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v124;
        }

LABEL_517:
        v289 = 432;
        goto LABEL_601;
      case 0x67u:
        *(a1 + 528) |= 0x800000uLL;
        v301 = 0;
        v280 = [a2 position] + 8;
        if (v280 >= [a2 position] && (v281 = objc_msgSend(a2, "position") + 8, v281 <= objc_msgSend(a2, "length")))
        {
          v300 = [a2 data];
          [v300 getBytes:&v301 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v293 = v301;
        v294 = 192;
LABEL_623:
        *(a1 + v294) = v293;
        goto LABEL_624;
      case 0x68u:
        v230 = 0;
        v231 = 0;
        v232 = 0;
        *(a1 + 528) |= 0x2000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v233 = [a2 position] + 1;
          if (v233 >= [a2 position] && (v234 = objc_msgSend(a2, "position") + 1, v234 <= objc_msgSend(a2, "length")))
          {
            v235 = [a2 data];
            [v235 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v232 |= (v301 & 0x7F) << v230;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v230 += 7;
          v12 = v231++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_579;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v232;
        }

LABEL_579:
        v289 = 508;
        goto LABEL_601;
      case 0x69u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 528) |= 0x1000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v301 & 0x7F) << v18;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v12 = v19++ >= 9;
          if (v12)
          {
            v24 = 0;
            goto LABEL_461;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_461:
        v289 = 504;
LABEL_601:
        *(a1 + v289) = v24;
        goto LABEL_624;
      case 0x6Au:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *(a1 + 528) |= 2uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v73 = [a2 position] + 1;
          if (v73 >= [a2 position] && (v74 = objc_msgSend(a2, "position") + 1, v74 <= objc_msgSend(a2, "length")))
          {
            v75 = [a2 data];
            [v75 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v72 |= (v301 & 0x7F) << v70;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v51 = 0;
            goto LABEL_487;
          }
        }

        if ([a2 hasError])
        {
          v51 = 0;
        }

        else
        {
          v51 = v72;
        }

LABEL_487:
        v291 = 16;
LABEL_592:
        *(a1 + v291) = v51;
        goto LABEL_624;
      case 0x6Bu:
        v180 = 0;
        v181 = 0;
        v182 = 0;
        *(a1 + 528) |= 0x10000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v183 = [a2 position] + 1;
          if (v183 >= [a2 position] && (v184 = objc_msgSend(a2, "position") + 1, v184 <= objc_msgSend(a2, "length")))
          {
            v185 = [a2 data];
            [v185 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v182 |= (v301 & 0x7F) << v180;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v180 += 7;
          v12 = v181++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_549;
          }
        }

        v31 = (v182 != 0) & ~[a2 hasError];
LABEL_549:
        v290 = 517;
        goto LABEL_608;
      case 0x6Cu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 528) |= 0x20000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v301 & 0x7F) << v25;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v12 = v26++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_463;
          }
        }

        v31 = (v27 != 0) & ~[a2 hasError];
LABEL_463:
        v290 = 518;
        goto LABEL_608;
      case 0x6Du:
        v282 = 0;
        v283 = 0;
        v284 = 0;
        *(a1 + 528) |= 0x40000000000uLL;
        while (1)
        {
          LOBYTE(v301) = 0;
          v285 = [a2 position] + 1;
          if (v285 >= [a2 position] && (v286 = objc_msgSend(a2, "position") + 1, v286 <= objc_msgSend(a2, "length")))
          {
            v287 = [a2 data];
            [v287 getBytes:&v301 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v284 |= (v301 & 0x7F) << v282;
          if ((v301 & 0x80) == 0)
          {
            break;
          }

          v282 += 7;
          v12 = v283++ >= 9;
          if (v12)
          {
            LOBYTE(v31) = 0;
            goto LABEL_607;
          }
        }

        v31 = (v284 != 0) & ~[a2 hasError];
LABEL_607:
        v290 = 519;
LABEL_608:
        *(a1 + v290) = v31;
        goto LABEL_624;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_624;
    }
  }
}