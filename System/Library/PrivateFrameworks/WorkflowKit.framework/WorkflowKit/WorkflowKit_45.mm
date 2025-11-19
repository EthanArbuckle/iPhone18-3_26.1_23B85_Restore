uint64_t __ContactsLibraryCore_block_invoke_32363(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_32362 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA7F1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUIImageSymbolConfigurationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIImageSymbolConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageSymbolConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIImageSymbolConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFExternalDisplayTrigger.m" lineNumber:18 description:{@"Unable to find class %s", "UIImageSymbolConfiguration"}];

    __break(1u);
  }
}

void __getUIImageClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFExternalDisplayTrigger.m" lineNumber:19 description:{@"Unable to find class %s", "UIImage"}];

    __break(1u);
  }
}

void UIKitLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8378520;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFExternalDisplayTrigger.m" lineNumber:17 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WFREPBRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_37;
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

LABEL_37:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBAddAutomationActionEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_40;
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

LABEL_40:
          *(a1 + 16) = v24;
          goto LABEL_41;
        }

        if (v13 != 4)
        {
LABEL_24:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }

        v14 = PBReaderReadString();
        v15 = 8;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      v17 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBRunActionEventReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v91) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v91 & 0x7F) << v6;
      if ((v91 & 0x80) == 0)
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
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 80;
        goto LABEL_128;
      case 3u:
        v14 = PBReaderReadString();
        v15 = 136;
        goto LABEL_128;
      case 5u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 172) |= 0x200u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v91 & 0x7F) << v41;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_155;
          }
        }

        v47 = (v43 != 0) & ~[a2 hasError];
LABEL_155:
        v89 = 168;
        goto LABEL_172;
      case 6u:
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_128;
      case 7u:
        v14 = PBReaderReadString();
        v15 = 152;
        goto LABEL_128;
      case 8u:
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_128;
      case 9u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        *(a1 + 172) |= 0x400u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v71 = [a2 position] + 1;
          if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
          {
            v73 = [a2 data];
            [v73 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v70 |= (v91 & 0x7F) << v68;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v68 += 7;
          v12 = v69++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_169;
          }
        }

        v47 = (v70 != 0) & ~[a2 hasError];
LABEL_169:
        v89 = 169;
        goto LABEL_172;
      case 0xAu:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(a1 + 172) |= 0x800u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v77 = [a2 position] + 1;
          if (v77 >= [a2 position] && (v78 = objc_msgSend(a2, "position") + 1, v78 <= objc_msgSend(a2, "length")))
          {
            v79 = [a2 data];
            [v79 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v76 |= (v91 & 0x7F) << v74;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v12 = v75++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_171;
          }
        }

        v47 = (v76 != 0) & ~[a2 hasError];
LABEL_171:
        v89 = 170;
LABEL_172:
        *(a1 + v89) = v47;
        continue;
      case 0xBu:
        v14 = PBReaderReadString();
        v15 = 64;
        goto LABEL_128;
      case 0xCu:
        v14 = PBReaderReadString();
        v15 = 56;
        goto LABEL_128;
      case 0xDu:
        v14 = PBReaderReadString();
        v15 = 48;
        goto LABEL_128;
      case 0xEu:
        v14 = PBReaderReadString();
        v15 = 160;
        goto LABEL_128;
      case 0xFu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 172) |= 1u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v91 & 0x7F) << v54;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_163;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v56;
        }

LABEL_163:
        v88 = 40;
        goto LABEL_177;
      case 0x10u:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_128;
      case 0x11u:
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_128;
      case 0x12u:
        v14 = PBReaderReadString();
        v15 = 144;
        goto LABEL_128;
      case 0x13u:
        v14 = PBReaderReadString();
        v15 = 88;
        goto LABEL_128;
      case 0x14u:
        v14 = PBReaderReadString();
        v15 = 120;
LABEL_128:
        v81 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      case 0x15u:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 172) |= 0x80u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v91 & 0x7F) << v16;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_141;
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

LABEL_141:
        v88 = 116;
        goto LABEL_177;
      case 0x16u:
        *(a1 + 172) |= 0x100u;
        v91 = 0;
        v60 = [a2 position] + 4;
        if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 4, v61 <= objc_msgSend(a2, "length")))
        {
          v90 = [a2 data];
          [v90 getBytes:&v91 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 128) = v91;
        continue;
      case 0x17u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 172) |= 2u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v91 & 0x7F) << v82;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_176;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v84;
        }

LABEL_176:
        v88 = 72;
        goto LABEL_177;
      case 0x18u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 172) |= 8u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v91 & 0x7F) << v23;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_145;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_145:
        v88 = 100;
        goto LABEL_177;
      case 0x19u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 172) |= 0x20u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v91 & 0x7F) << v48;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_159;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v50;
        }

LABEL_159:
        v88 = 108;
        goto LABEL_177;
      case 0x1Au:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 172) |= 0x10u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v91 & 0x7F) << v35;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_153;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_153:
        v88 = 104;
        goto LABEL_177;
      case 0x1Bu:
        v62 = 0;
        v63 = 0;
        v64 = 0;
        *(a1 + 172) |= 0x40u;
        while (1)
        {
          LOBYTE(v91) = 0;
          v65 = [a2 position] + 1;
          if (v65 >= [a2 position] && (v66 = objc_msgSend(a2, "position") + 1, v66 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v64 |= (v91 & 0x7F) << v62;
          if ((v91 & 0x80) == 0)
          {
            break;
          }

          v62 += 7;
          v12 = v63++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_167;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v64;
        }

LABEL_167:
        v88 = 112;
        goto LABEL_177;
      case 0x1Cu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 172) |= 4u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v91) = 0;
      v32 = [a2 position] + 1;
      if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
      {
        v34 = [a2 data];
        [v34 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v31 |= (v91 & 0x7F) << v29;
      if ((v91 & 0x80) == 0)
      {
        break;
      }

      v29 += 7;
      v12 = v30++ >= 9;
      if (v12)
      {
        v22 = 0;
        goto LABEL_149;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v31;
    }

LABEL_149:
    v88 = 96;
LABEL_177:
    *(a1 + v88) = v22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MTLEqualObjects(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

__CFString *WFActionIdentifierForSelectingContentOfType(void *a1)
{
  if (!a1)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nullable WFActionIdentifierForSelectingContentOfType(Class  _Nonnull __unsafe_unretained)"];
    [v3 handleFailureInFunction:v4 file:@"WFActionRegistry+ContentSelection.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"contentItemClass"}];
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.file.select";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.ask";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.date";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.selectphoto";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.selectcontacts";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.selectemail";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.exportsong";
  }

  if ([a1 isEqual:objc_opt_class()])
  {
    return @"is.workflow.actions.selectphone";
  }

  return 0;
}

id WFDefinitionDirectoryURLForBundleIdentifier(void *a1, void *a2)
{
  v2 = WFDefinitionDirectoryURLsForBundleIdentifier(a1, a2, 0);
  v3 = [v2 anyObject];

  return v3;
}

id WFDefinitionDirectoryURLsForBundleIdentifier(void *a1, void *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v8 = [v5 URLByAppendingPathComponent:v6];
  [v7 addObject:v8];

  if (a3)
  {
    v9 = [MEMORY[0x1E696E748] sharedResolver];
    v10 = [v9 counterpartIdentifiersForLocalIdentifier:v6];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [v5 URLByAppendingPathComponent:*(*(&v18 + 1) + 8 * i)];
          [v7 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t WFIsSyncedIntentDefinitionURL(void *a1)
{
  v1 = a1;
  v2 = WFSyncedDefinitionDirectoryURL();
  IsTransitivelyContainedInDirectory = WFFileIsTransitivelyContainedInDirectory(v2, v1);

  v4 = WFBundledDefinitionDirectoryURL();
  v5 = WFFileIsTransitivelyContainedInDirectory(v4, v1);

  v6 = [v1 pathExtension];

  LODWORD(v1) = [v6 isEqualToString:@"intentdefinition"];
  return v1 & (IsTransitivelyContainedInDirectory || v5);
}

BOOL WFFileIsTransitivelyContainedInDirectory(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 2;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  [v5 getRelationship:&v12 ofDirectoryAtURL:v3 toItemAtURL:v4 error:&v11];
  v6 = v11;

  if (v6 && ([v6 vc_isFileNotFound] & 1) == 0)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v14 = "WFFileIsTransitivelyContainedInDirectory";
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Error getting relationship between directory (%@) and file (%@): %@", buf, 0x2Au);
    }
  }

  v8 = v12 == 0;

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1CA7FF954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWFUserSettingsClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!WebContentAnalysisLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __WebContentAnalysisLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8378980;
    v9 = 0;
    WebContentAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebContentAnalysisLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebContentAnalysisLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFScreenTimeHelper.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("WFUserSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWFUserSettingsClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFScreenTimeHelper.m" lineNumber:17 description:{@"Unable to find class %s", "WFUserSettings"}];

LABEL_10:
    __break(1u);
  }

  getWFUserSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __WebContentAnalysisLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WebContentAnalysisLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WFREPBAskWhenRunRequestResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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
      if ((v12 >> 3) == 4)
      {
        break;
      }

      if (v13 == 3)
      {
        v15 = objc_alloc_init(WFREPBKeyValuePair);
        [a1 addInputtedStates:v15];
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !WFREPBKeyValuePairReadFrom(v15, a2))
        {
          goto LABEL_31;
        }

LABEL_26:
        PBReaderRecallMark();
        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 24);
        *(a1 + 24) = v14;
LABEL_27:

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(WFREPBError);
    objc_storeStrong((a1 + 8), v15);
    v18 = 0;
    v19 = 0;
    if (!PBReaderPlaceMark() || !WFREPBErrorReadFrom(v15, a2))
    {
LABEL_31:

      return 0;
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA800EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNFHardwareManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!NearFieldLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __NearFieldLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8378998;
    v9 = 0;
    NearFieldLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NearFieldLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NearFieldLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFNFCTrigger.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("NFHardwareManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNFHardwareManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFNFCTrigger.m" lineNumber:19 description:{@"Unable to find class %s", "NFHardwareManager"}];

LABEL_10:
    __break(1u);
  }

  getNFHardwareManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NearFieldLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NearFieldLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA802AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA802D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35573(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFPBGallerySessionSearchEventReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___WFPBGallerySessionSearchEvent__sessionIdentifier;
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

    v13 = &OBJC_IVAR___WFPBGallerySessionSearchEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

Class initHFTriggerActionSetsBuilder_35832()
{
  if (HomeLibrary_sOnce_35833 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_35833, &__block_literal_global_310);
  }

  result = objc_getClass("HFTriggerActionSetsBuilder");
  classHFTriggerActionSetsBuilder_35835 = result;
  getHFTriggerActionSetsBuilderClass_35823 = HFTriggerActionSetsBuilderFunction_35837;
  return result;
}

void *__HomeLibrary_block_invoke_35839()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_35841 = result;
  return result;
}

uint64_t __Block_byref_object_copy__35843(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id initHMErrorDomain()
{
  if (HomeKitLibrary_sOnce_35860 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_35860, &__block_literal_global_35861);
  }

  v0 = dlsym(HomeKitLibrary_sLib_35862, "HMErrorDomain");
  if (!v0)
  {
    __assert_rtn("initHMErrorDomain", "WFHomeAccessoryAction.m", 40, "constant");
  }

  objc_storeStrong(&constantHMErrorDomain, *v0);
  getHMErrorDomain = HMErrorDomainFunction;
  v1 = constantHMErrorDomain;

  return v1;
}

void *__HomeKitLibrary_block_invoke_35868()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_35862 = result;
  return result;
}

void __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) == 1 && (v7 = [v5 numberOfItems], v7 != objc_msgSend(*(a1 + 32), "numberOfItems")))
  {
    v12 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v26 = "WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Number of items in output don't match number of items in input -- can't overwrite", buf, 0xCu);
    }

    v13 = objc_alloc(MEMORY[0x1E69E0DD8]);
    v14 = *(a1 + 32);
    v15 = WFBackgroundShortcutRunnerError(8, 0);
    v11 = [v13 initWithOutput:v14 files:0 runError:v15 reversalState:0];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = [*(a1 + 32) items];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_188;
    v21[3] = &unk_1E8378A88;
    v24 = *(a1 + 64);
    v9 = v5;
    v10 = *(a1 + 56);
    v22 = v9;
    v23 = v10;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_3;
    v17[3] = &unk_1E837E9D0;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    [v8 if_mapAsynchronously:v21 completionHandler:v17];

    v11 = v22;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_188(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (*(a1 + 48) == 1)
  {
    v9 = [*(a1 + 32) items];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_2;
    v13[3] = &unk_1E8378A60;
    v11 = v8;
    v12 = *(a1 + 40);
    v15 = v11;
    v16 = v12;
    v14 = v7;
    [v10 getFileRepresentation:v13 forType:0];
  }

  else
  {
    WFGenerateContextualActionFile(*(a1 + 40), v7, 0, v8);
  }
}

void __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_3(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = a2;
    v7 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315394;
      v15 = "WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_3";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Error mapping shortcut output into contextual action files: %@", &v14, 0x16u);
    }

    v8 = objc_alloc(MEMORY[0x1E69E0DD8]);
    v9 = a1[4];
    v10 = WFBackgroundShortcutRunnerError(8, v5);
    v11 = [v8 initWithOutput:v9 files:v6 runError:v10 reversalState:0];
  }

  else
  {
    v12 = MEMORY[0x1E69E0DD8];
    v10 = a2;
    v11 = [[v12 alloc] initWithOutput:a1[4] files:v10 runError:0 reversalState:a1[5]];
  }

  (*(a1[6] + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

void __WFBackgroundShortcutRunnerMakeContextualActionsResult_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    WFGenerateContextualActionFile(*(a1 + 48), *(a1 + 32), a2, *(a1 + 40));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void WFGenerateContextualActionFile(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a2;
  v10 = [v7 wfType];
  v11 = [v7 fileURL];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __WFGenerateContextualActionFile_block_invoke;
  v15[3] = &unk_1E8378AD8;
  v18 = v8;
  v19 = a1;
  v16 = v7;
  v17 = v11;
  v12 = v11;
  v13 = v7;
  v14 = v8;
  [v9 getFileRepresentation:v15 forType:v10];
}

void __WFGenerateContextualActionFile_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 wfType];
    v8 = [v7 utType];

    v9 = *(a1 + 56);
    if (v9)
    {
      if (v9 != 1)
      {
LABEL_27:

        goto LABEL_28;
      }

      v10 = MEMORY[0x1E6996F68];
      v11 = [v5 filename];
      v12 = [v10 proposedSharedTemporaryFileURLForFilename:v11];

      v38 = v6;
      LOBYTE(v11) = [v5 writeToFileURL:v12 overwriting:0 error:&v38];
      v13 = v38;

      if ((v11 & 1) == 0)
      {
        v19 = getWFGeneralLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v40 = "WFGenerateContextualActionFile_block_invoke";
          v41 = 2112;
          v42 = v13;
          _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Error writing contextual action output file: %@", buf, 0x16u);
        }

        (*(*(a1 + 48) + 16))();
        goto LABEL_26;
      }

      v14 = [objc_alloc(MEMORY[0x1E69E0A38]) initWithFileURL:v12 type:v8];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v15 = [*(a1 + 32) fileSize];
      v16 = [v5 fileSize];
      if (v15 >= 1 && v16 <= 0)
      {
        v17 = getWFContextualActionsLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v40 = "WFGenerateContextualActionFile_block_invoke";
          _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_FAULT, "%s [Circuit Breaker] Trying to overwrite the input file with empty data. Aborting.", buf, 0xCu);
        }

        v18 = *(a1 + 48);
        v12 = WFBackgroundShortcutRunnerError(9, 0);
        (*(v18 + 16))(v18, 0, v12);
        v13 = v6;
        goto LABEL_26;
      }

      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [*(a1 + 40) lastPathComponent];
      v20 = *(a1 + 40);
      v37 = v6;
      v21 = [v12 URLForDirectory:99 inDomain:1 appropriateForURL:v20 create:1 error:&v37];
      v13 = v37;

      if (v21)
      {
        v22 = [MEMORY[0x1E6996F68] proposedFileURLForFilename:v14 inDirectory:v21];
        v23 = *(a1 + 40);
        v35 = v13;
        v36 = v22;
        v24 = [v12 replaceItemAtURL:v22 withItemAtURL:v23 backupItemName:0 options:1 resultingItemURL:&v36 error:&v35];
        v25 = v36;

        v26 = v35;
        if (v24)
        {
          v27 = [v5 fileURL];
          v33 = v26;
          v34 = v25;
          v28 = [v12 replaceItemAtURL:v25 withItemAtURL:v27 backupItemName:0 options:0 resultingItemURL:&v34 error:&v33];
          v32 = v34;

          v29 = v33;
          if (v28)
          {
            v26 = v29;
            v30 = [objc_alloc(MEMORY[0x1E69E0A38]) initWithFileURL:v32 type:v8];
            (*(*(a1 + 48) + 16))();
          }

          else
          {
            (*(*(a1 + 48) + 16))();
            v26 = v29;
          }

          v25 = v32;
        }

        else
        {
          (*(*(a1 + 48) + 16))();
        }

        v13 = v26;
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

LABEL_26:
    v6 = v13;
    goto LABEL_27;
  }

  (*(*(a1 + 48) + 16))();
LABEL_28:

  v31 = *MEMORY[0x1E69E9840];
}

void WFBackgroundShortcutRunnerMakeAllActionsResult(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = MEMORY[0x1E69E0950];
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [[v6 alloc] initWithActionOutputs:v9 runError:v8];

  v7[2](v7, v10);
}

Class initHMService()
{
  if (HomeKitLibrary_sOnce_36695 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_36695, &__block_literal_global_36696);
  }

  result = objc_getClass("HMService");
  classHMService = result;
  getHMServiceClass = HMServiceFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke_36700()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_36702 = result;
  return result;
}

id WFEnforceClass_37066(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s A custom icon was specified (%@) but we could not find the icon in our image assets", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

__CFString *WFExecutionPlatformForDeviceIdiom(unint64_t a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E8378E58[a1];
  }
}

uint64_t WFDeviceIdiomForExecutionPlatform(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Phone"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Pad"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Desktop"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Watch"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"XR"])
  {
    v2 = 5;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

void sub_1CA80E87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPropertyPredicateClass_block_invoke_37193(uint64_t a1)
{
  MediaPlayerLibrary_37213();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass_37192 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFiTunesObjectContentItem.m" lineNumber:24 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void __getMPMediaQueryClass_block_invoke_37196(uint64_t a1)
{
  MediaPlayerLibrary_37213();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_37195 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFiTunesObjectContentItem.m" lineNumber:23 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void MediaPlayerLibrary_37213()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_37223)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_37224;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8379040;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_37223 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_37223)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFiTunesObjectContentItem.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __MediaPlayerLibraryCore_block_invoke_37224(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_37223 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA80EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__37235(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFPossibleArtworkURLsForArtworkURL(void *a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E69E0AF8];
  v3 = [v1 lastPathComponent];
  v4 = [v2 typeFromFilename:v3];
  v5 = [v4 conformsToUTType:*MEMORY[0x1E6982E58]];

  if (v5)
  {
    v6 = [v1 URLByDeletingPathExtension];
    v7 = [v6 URLByAppendingPathExtension:@"png"];

    v12[0] = v7;
    v12[1] = v1;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  }

  else
  {
    v11 = v1;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_1CA80F7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

void *WFGetFavoritedActionIDs()
{
  v0 = [MEMORY[0x1E695E000] workflowUserDefaults];
  v1 = [v0 stringArrayForKey:@"WFActionFavorites"];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;

  return v3;
}

uint64_t WFActionIsFavorite(void *a1)
{
  v1 = a1;
  v2 = WFGetFavoritedActionIDs();
  v3 = [v2 containsObject:v1];

  return v3;
}

void WFActionSetFavorite(void *a1, int a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [MEMORY[0x1E695E000] workflowUserDefaults];
  v5 = MEMORY[0x1E695DFA0];
  v6 = [v4 objectForKey:@"WFActionFavorites"];
  v7 = [v5 orderedSetWithArray:v6];

  v8 = [v7 containsObject:v3];
  if (a2)
  {
    [v7 addObject:v3];
  }

  else
  {
    [v7 removeObject:v3];
  }

  if (v8 != a2)
  {
    v9 = [v7 array];
    [v4 setObject:v9 forKey:@"WFActionFavorites"];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = @"ActionID";
    v14[0] = v3;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v10 postNotificationName:@"WFActionFavoritesChangedNotification" object:0 userInfo:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t WFPBAddAutomationEventReadFrom(uint64_t a1, void *a2)
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
        v40 = 0;
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_66;
          }

          if (v13 == 2)
          {
            v14 = PBReaderReadString();
            v15 = 72;
            goto LABEL_66;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v14 = PBReaderReadString();
              v15 = 40;
              goto LABEL_66;
            case 4:
              v14 = PBReaderReadString();
              v15 = 64;
              goto LABEL_66;
            case 5:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 84) |= 1u;
              while (1)
              {
                v41 = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v41 & 0x7F) << v16;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_76;
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

LABEL_76:
              *(a1 + 8) = v22;
              goto LABEL_67;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_66;
          case 0xA:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            *(a1 + 84) |= 4u;
            while (1)
            {
              v43 = 0;
              v33 = [a2 position] + 1;
              if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
              {
                v35 = [a2 data];
                [v35 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v32 |= (v43 & 0x7F) << v30;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v11 = v31++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_72;
              }
            }

            v29 = (v32 != 0) & ~[a2 hasError];
LABEL_72:
            v39 = 81;
            goto LABEL_79;
          case 0xB:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 84) |= 2u;
            while (1)
            {
              v42 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v42 & 0x7F) << v23;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v29) = 0;
                goto LABEL_78;
              }
            }

            v29 = (v25 != 0) & ~[a2 hasError];
LABEL_78:
            v39 = 80;
LABEL_79:
            *(a1 + v39) = v29;
            goto LABEL_67;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_66;
          case 7:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_66;
          case 8:
            v14 = PBReaderReadString();
            v15 = 16;
LABEL_66:
            v36 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_67;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_67:
      v37 = [a2 position];
    }

    while (v37 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBRemoteExecutionEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 2:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          default:
            goto LABEL_36;
        }

        goto LABEL_40;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_40;
      }

      if (v13 != 6)
      {
LABEL_36:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 52) |= 1u;
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
          LOBYTE(v22) = 0;
          goto LABEL_44;
        }
      }

      v22 = (v18 != 0) & ~[a2 hasError];
LABEL_44:
      *(a1 + 48) = v22;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 24;
LABEL_40:
    v24 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA8161D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__38109(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA816A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1CA817504(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id WFMaximumBundleVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = WFCompareBundleVersions(v3, v4);
  if (v5)
  {
    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id WFConvertToBundleString(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", objc_msgSend(v1, "unsignedLongLongValue")];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t WFREPBDialogRequestResponseReadFrom(uint64_t a1, void *a2)
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
        v14 = PBReaderReadData();
        v15 = 8;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
        goto LABEL_22;
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

    v16 = objc_alloc_init(WFREPBError);
    objc_storeStrong((a1 + 16), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !WFREPBErrorReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

Class initHFTriggerActionSetsBuilder_39045()
{
  if (HomeLibrary_sOnce_39046 != -1)
  {
    dispatch_once(&HomeLibrary_sOnce_39046, &__block_literal_global_281);
  }

  result = objc_getClass("HFTriggerActionSetsBuilder");
  classHFTriggerActionSetsBuilder_39048 = result;
  getHFTriggerActionSetsBuilderClass_39043 = HFTriggerActionSetsBuilderFunction_39050;
  return result;
}

void *__HomeLibrary_block_invoke_39052()
{
  result = dlopen("/System/Library/PrivateFrameworks/Home.framework/Home", 2);
  HomeLibrary_sLib_39054 = result;
  return result;
}

Class initHMActionSet()
{
  if (HomeKitLibrary_sOnce_39056 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_39056, &__block_literal_global_277);
  }

  result = objc_getClass("HMActionSet");
  classHMActionSet = result;
  getHMActionSetClass = HMActionSetFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke_39059()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_39061 = result;
  return result;
}

uint64_t WFPBGlyphSelectionEventReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_35;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_35:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_36;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFActionShouldBeIncludedInSummary(void *a1)
{
  v1 = WFActionShouldBeIncludedInSummary_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&WFActionShouldBeIncludedInSummary_onceToken, &__block_literal_global_466);
  }

  v3 = WFActionShouldBeIncludedInSummary_ignoredActionIdentifiers;
  v4 = [v2 identifier];

  v5 = [v3 containsObject:v4];
  return v5 ^ 1u;
}

void __WFActionShouldBeIncludedInSummary_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4A9B590];
  v1 = WFActionShouldBeIncludedInSummary_ignoredActionIdentifiers;
  WFActionShouldBeIncludedInSummary_ignoredActionIdentifiers = v0;
}

id WFVariableSubstitutableParameterStateUpcast(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"WFVariableSubstitutableParameterState * _Nonnull WFVariableSubstitutableParameterStateUpcast(id<WFParameterState>  _Nonnull __strong)"];
    [v3 handleFailureInFunction:v4 file:@"WFVariableSubstitutableParameterState.m" lineNumber:201 description:@"State passed to WFVariableSubstitutableParameterStateUpcast must be a subclass of WFVariableSubstitutableParameterState"];
  }

  return v1;
}

id WFVariableSubstitutableParameterStateDowncast(void *a1)
{
  v1 = a1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t WFPBGallerySessionStartEventReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___WFPBGallerySessionStartEvent__sessionIdentifier;
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

    v13 = &OBJC_IVAR___WFPBGallerySessionStartEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA82EA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__41507(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA82F3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA82FD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1CA83040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1CA830AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

id WFTriggerNotificationUserInfo(void *a1, void *a2, void *a3)
{
  v26[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary * _Nonnull WFTriggerNotificationUserInfo(NSString * _Nonnull __strong, NSArray<WFIcon *> * _Nullable __strong, NSArray<NSString *> * _Nullable __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"WFTriggerManager.m" lineNumber:512 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];
  }

  v25[0] = @"source";
  v25[1] = @"triggerID";
  v26[0] = @"trigger";
  v26[1] = v5;
  v25[2] = @"pendingIDs";
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v26[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v10 = [v9 mutableCopy];

  if (v6)
  {
    v18 = 0;
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v18];
    v12 = v18;
    if (v11)
    {
      [v10 setObject:v11 forKeyedSubscript:@"actionIconsData"];
    }

    else
    {
      v13 = getWFTriggersLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v20 = "WFTriggerNotificationUserInfo";
        v21 = 2114;
        v22 = v6;
        v23 = 2114;
        v24 = v12;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to archive action icons: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

id WFTriggerNotificationUserInfoForDisabling(void *a1, void *a2)
{
  v34[5] = *MEMORY[0x1E69E9840];
  v34[0] = @"trigger";
  v33[0] = @"source";
  v33[1] = @"triggerID";
  v3 = a2;
  v4 = a1;
  v5 = [v4 identifier];
  v34[1] = v5;
  v33[2] = @"triggerTitle";
  v6 = [v4 trigger];
  v7 = [v6 localizedDisplayName];
  v34[2] = v7;
  v33[3] = @"triggerDescription";
  v8 = [v4 trigger];
  v9 = [v8 localizedDescriptionWithConfigurationSummary];
  v34[3] = v9;
  v33[4] = @"triggerClassName";
  v10 = [v4 trigger];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v34[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:5];
  v14 = [v13 mutableCopy];

  v15 = [v3 actions];
  v16 = [v3 actions];

  v17 = [v16 count];
  if (v17 >= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v15 subarrayWithRange:{0, v18}];

  v20 = [v19 if_compactMap:&__block_literal_global_354];
  if (v20)
  {
    v26 = 0;
    v21 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v26];
    v22 = v26;
    if (v21)
    {
      [v14 setObject:v21 forKeyedSubscript:@"actionIconsData"];
    }

    else
    {
      v23 = getWFTriggersLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v28 = "WFTriggerNotificationUserInfoForDisabling";
        v29 = 2114;
        v30 = v20;
        v31 = 2114;
        v32 = v22;
        _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s Failed to archive action icons: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

id WFAllTriggerNotificationUserInfoForDisablingTriggers(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSDictionary * _Nonnull WFAllTriggerNotificationUserInfoForDisablingTriggers(NSArray<NSDictionary *> * _Nonnull __strong)"];
    [v5 handleFailureInFunction:v6 file:@"WFTriggerManager.m" lineNumber:565 description:{@"Invalid parameter not satisfying: %@", @"triggerUserInfo"}];
  }

  v7[0] = @"triggerAndActionIcons";
  v7[1] = @"source";
  v8[0] = v1;
  v8[1] = @"trigger";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id WFTriggerDisplayInfoToDisableFromNotificationUserInfo(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = 136315138;
    v15 = "WFTriggerDisplayInfoToDisableFromNotificationUserInfo";
    v8 = "%s Can't get trigger display info from nil userInfo";
    v9 = v6;
    v10 = 12;
LABEL_9:
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    goto LABEL_13;
  }

  v3 = [v1 objectForKeyedSubscript:@"source"];
  v4 = [v3 isEqualToString:@"trigger"];

  if ((v4 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = 136315394;
    v15 = "WFTriggerDisplayInfoToDisableFromNotificationUserInfo";
    v16 = 2114;
    v17 = v2;
    v8 = "%s This userInfo wasn't from a trigger notification: %{public}@";
    v9 = v6;
    v10 = 22;
    goto LABEL_9;
  }

  v5 = [v2 objectForKey:@"triggerAndActionIcons"];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 if_compactMap:&__block_literal_global_360];
    goto LABEL_14;
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315138;
    v15 = "WFTriggerDisplayInfoToDisableFromNotificationUserInfo";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s No trigger info for disabling triggers found!", &v14, 0xCu);
  }

  v6 = 0;
LABEL_13:
  v7 = 0;
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

WFTriggerDisplayInfo *__WFTriggerDisplayInfoToDisableFromNotificationUserInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"triggerTitle"];
  v4 = [v2 objectForKey:@"triggerDescription"];
  v5 = WFActionIconsFromNotificationUserInfo(v2);
  v6 = [v2 objectForKey:@"triggerClassName"];

  v7 = NSClassFromString(v6);
  v8 = [[WFTriggerDisplayInfo alloc] initWithLocalizedTitle:v3 localizedDescription:v4 actionIcons:v5 triggerClass:v7];

  return v8;
}

id WFActionIconsFromNotificationUserInfo(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "WFActionIconsFromNotificationUserInfo";
      v13 = "%s Can't get actionIcons from nil userInfo";
      v14 = v5;
      v15 = 12;
LABEL_10:
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_20;
  }

  v3 = [v1 objectForKeyedSubscript:@"source"];
  v4 = [v3 isEqualToString:@"trigger"];

  if ((v4 & 1) == 0)
  {
    v5 = getWFTriggersLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "WFActionIconsFromNotificationUserInfo";
      v23 = 2114;
      v24 = v2;
      v13 = "%s This userInfo wasn't from a trigger notification: %{public}@";
      v14 = v5;
      v15 = 22;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = [v2 objectForKeyedSubscript:@"actionIconsData"];
  if (v5)
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v9 = [v7 setWithArray:v8];
    v19 = 0;
    v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v16 = getWFTriggersLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "WFActionIconsFromNotificationUserInfo";
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Failed to unarchive action icons: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = getWFTriggersLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "WFActionIconsFromNotificationUserInfo";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s No Data", buf, 0xCu);
    }

    v10 = 0;
  }

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

id WFTriggerIDFromNotificationUserInfo(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"source"];
    v4 = [v3 isEqualToString:@"trigger"];

    if (v4)
    {
      v5 = [v2 objectForKey:@"triggerID"];
      goto LABEL_10;
    }

    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "WFTriggerIDFromNotificationUserInfo";
      v14 = 2114;
      v15 = v2;
      v7 = "%s This userInfo wasn't from a trigger notification: %{public}@";
      v8 = v6;
      v9 = 22;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "WFTriggerIDFromNotificationUserInfo";
      v7 = "%s Can't get triggerID from nil userInfo";
      v8 = v6;
      v9 = 12;
LABEL_8:
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    }
  }

  v5 = 0;
LABEL_10:

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

id WFTriggerIDsToDisableFromNotificationUserInfo(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = 136315138;
    v15 = "WFTriggerIDsToDisableFromNotificationUserInfo";
    v8 = "%s Can't get triggerIDs to dissable from nil userInfo";
    v9 = v6;
    v10 = 12;
LABEL_9:
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    goto LABEL_13;
  }

  v3 = [v1 objectForKeyedSubscript:@"source"];
  v4 = [v3 isEqualToString:@"trigger"];

  if ((v4 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = 136315394;
    v15 = "WFTriggerIDsToDisableFromNotificationUserInfo";
    v16 = 2114;
    v17 = v2;
    v8 = "%s This userInfo wasn't from a trigger notification: %{public}@";
    v9 = v6;
    v10 = 22;
    goto LABEL_9;
  }

  v5 = [v2 objectForKey:@"triggerAndActionIcons"];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 if_compactMap:&__block_literal_global_363];
    goto LABEL_14;
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315138;
    v15 = "WFTriggerIDsToDisableFromNotificationUserInfo";
    _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s No trigger info for disabling triggers found!", &v14, 0xCu);
  }

  v6 = 0;
LABEL_13:
  v7 = 0;
LABEL_14:

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

id WFPendingTriggerEventIDsFromNotificationUserInfo(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:@"source"];
    v4 = [v3 isEqualToString:@"trigger"];

    if (v4)
    {
      v5 = [v2 objectForKey:@"pendingIDs"];
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v11 = v6;

      goto LABEL_15;
    }

    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "WFPendingTriggerEventIDsFromNotificationUserInfo";
      v16 = 2114;
      v17 = v2;
      v8 = "%s This userInfo wasn't from a trigger notification: %{public}@";
      v9 = v7;
      v10 = 22;
      goto LABEL_11;
    }
  }

  else
  {
    v7 = getWFTriggersLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "WFPendingTriggerEventIDsFromNotificationUserInfo";
      v8 = "%s Can't get triggerID from nil userInfo";
      v9 = v7;
      v10 = 12;
LABEL_11:
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    }
  }

  v11 = 0;
LABEL_15:

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

id WFTriggerIDsToDisableNotificationUserInfoFromTriggers(void *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __WFTriggerIDsToDisableNotificationUserInfoFromTriggers_block_invoke;
  v8[3] = &unk_1E8379C68;
  v9 = v3;
  v4 = v3;
  v5 = [a1 if_compactMap:v8];
  v6 = WFAllTriggerNotificationUserInfoForDisablingTriggers(v5);

  return v6;
}

id __WFTriggerIDsToDisableNotificationUserInfoFromTriggers_block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 workflowID];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 workflowID];
    v8 = [v6 referenceForWorkflowID:v7];

    v9 = *(a1 + 32);
    v16 = 0;
    v10 = [WFWorkflow workflowWithReference:v8 database:v9 error:&v16];
    v11 = v16;
    if (v10)
    {
      v12 = WFTriggerNotificationUserInfoForDisabling(v3, v10);
    }

    else
    {
      v13 = getWFTriggerNotificationsLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "WFTriggerIDsToDisableNotificationUserInfoFromTriggers_block_invoke";
        v19 = 2112;
        v20 = v3;
        v21 = 2114;
        v22 = v11;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to get workflow with configuredTrigger: %@ error: %{public}@", buf, 0x20u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v4);

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

void sub_1CA832850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLCircularRegionClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_41708)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke_41709;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8379C88;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary_41708 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_41708)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLocationTrigger.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLCircularRegion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLCircularRegionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFLocationTrigger.m" lineNumber:17 description:{@"Unable to find class %s", "CLCircularRegion"}];

LABEL_10:
    __break(1u);
  }

  getCLCircularRegionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_41709(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_41708 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA834110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIColorClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_41965)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __UIKitLibraryCore_block_invoke_41966;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E8379CA0;
    v9 = 0;
    UIKitLibraryCore_frameworkLibrary_41965 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_41965)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFUserFocusActivityTrigger.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("UIColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIColorClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFUserFocusActivityTrigger.m" lineNumber:22 description:{@"Unable to find class %s", "UIColor"}];

LABEL_10:
    __break(1u);
  }

  getUIColorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_41966(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_41965 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA836490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42343(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFGetSystemBuildNumber()
{
  v7 = *MEMORY[0x1E69E9840];
  size = 0;
  *v6 = 0x4100000001;
  sysctl(v6, 2u, 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0xA79F044uLL);
  sysctl(v6, 2u, v0, &size, 0, 0);
  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  v2 = [v1 initWithBytesNoCopy:v0 length:size - 1 encoding:4 freeWhenDone:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id WFGetSystemMachine()
{
  size = 0;
  sysctlbyname("hw.machine", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0xBB5C17C2uLL);
  sysctlbyname("hw.machine", v0, &size, 0, 0);
  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  v2 = [v1 initWithBytesNoCopy:v0 length:size - 1 encoding:4 freeWhenDone:1];

  return v2;
}

id WFGetBootSessionUUID()
{
  size = 0;
  sysctlbyname("kern.bootsessionuuid", 0, &size, 0, 0);
  v0 = malloc_type_malloc(size, 0xCCA302EFuLL);
  sysctlbyname("kern.bootsessionuuid", v0, &size, 0, 0);
  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  v2 = [v1 initWithBytesNoCopy:v0 length:size - 1 encoding:4 freeWhenDone:1];

  return v2;
}

void sub_1CA838700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__42658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id initUIPasteboardOptionLocalOnly()
{
  if (UIKitLibrary_sOnce_42664 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_42664, &__block_literal_global_42665);
  }

  v0 = dlsym(UIKitLibrary_sLib_42666, "UIPasteboardOptionLocalOnly");
  if (!v0)
  {
    __assert_rtn("initUIPasteboardOptionLocalOnly", "WFInterchangeActionDefinition.m", 22, "constant");
  }

  objc_storeStrong(&constantUIPasteboardOptionLocalOnly, *v0);
  getUIPasteboardOptionLocalOnly = UIPasteboardOptionLocalOnlyFunction;
  v1 = constantUIPasteboardOptionLocalOnly;

  return v1;
}

void *__UIKitLibrary_block_invoke_42672()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_42666 = result;
  return result;
}

Class initUIPasteboard_42675()
{
  if (UIKitLibrary_sOnce_42664 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_42664, &__block_literal_global_42665);
  }

  result = objc_getClass("UIPasteboard");
  classUIPasteboard_42677 = result;
  getUIPasteboardClass_42662 = UIPasteboardFunction_42679;
  return result;
}

uint64_t WFPBOpenShortcutEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 1u;
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
              goto LABEL_44;
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

LABEL_44:
          *(a1 + 8) = v22;
          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_36;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_36;
          case 6:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA83F704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__43875(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA83FCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8402F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8406B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8409D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8413D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFEnforceClass_44012(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Model version from persistent store metadata is '%@' and is greater than the current model version '%@'. This likely indicates a schema downgrade, which is not supported", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

__CFString *WFEntityPrimaryKeyForObjectType(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E837A328[a1];
  }
}

void sub_1CA842DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA84309C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA843350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA843834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8445F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA84524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

SEL MTLSelectorWithKeyPattern(void *a1, const char *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v11[0] = [v3 maximumLengthOfBytesUsingEncoding:4];
  v4 = strlen(a2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v7 = [v3 getBytes:v11 - v5 maxLength:v11[0] usedLength:v11 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v3, "length"), 0}];

  result = 0;
  if (v7)
  {
    v9 = &v6[v11[0]];
    memcpy(&v6[v11[0]], a2, v4);
    v9[v4] = 0;
    result = sel_registerName(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

SEL MTLSelectorWithCapitalizedKeyPattern(const char *a1, void *a2, const char *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = strlen(a1);
  v7 = strlen(a3);
  v8 = a2;
  v9 = [v8 substringToIndex:1];
  v10 = [v9 uppercaseString];

  v11 = [v10 maximumLengthOfBytesUsingEncoding:4];
  v23[0] = v11;
  v12 = [v8 substringFromIndex:1];

  v13 = [v12 maximumLengthOfBytesUsingEncoding:4];
  v22 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  memcpy(&v21 - v14, a1, v6);
  v16 = &v15[v6];
  if ([v10 getBytes:&v15[v6] maxLength:v11 usedLength:v23 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v10, "length"), 0}] && objc_msgSend(v12, "getBytes:maxLength:usedLength:encoding:options:range:remainingRange:", &v16[v23[0]], v13, &v22, 4, 0, 0, objc_msgSend(v12, "length"), 0))
  {
    v17 = &v16[v23[0] + v22];
    memcpy(v17, a3, v7);
    v17[v7] = 0;
    v18 = sel_registerName(v15);
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t MTLValidateAndSetValue(void *a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v14 = v11;
  if ([v9 validateValue:&v14 forKey:v10 error:a5])
  {
    if ((a4 & 1) != 0 || v14 != v11)
    {
      [v9 setValue:v14 forKey:v10];
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t WFPBSuggestAutomationEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_45:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_52;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_48;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_48:
          v31 = 33;
          goto LABEL_51;
        }

        if (v13 == 4)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v34 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v34 & 0x7F) << v23;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_50;
            }
          }

          v22 = (v25 != 0) & ~[a2 hasError];
LABEL_50:
          v31 = 32;
LABEL_51:
          *(a1 + v31) = v22;
          goto LABEL_52;
        }

        if (v13 != 5)
        {
          goto LABEL_45;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v29 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_52:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBGallerySessionAddShortcutEventReadFrom(uint64_t a1, void *a2)
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
        v14 = off_1E837A4B8[v13];
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

id failureReasonForRunnerErrorCode(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = WFLocalizedString(@"Couldn’t find shortcut");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFBackgroundShortcutRunnerError(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = MEMORY[0x1E696A588];
  if (v3)
  {
    v6 = objc_opt_new();
    v7 = [v3 localizedDescription];

    if (v7)
    {
      v8 = [v3 localizedDescription];
      [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    v9 = [v3 localizedFailureReason];

    if (v9)
    {
      v10 = [v3 localizedFailureReason];
      [v6 setObject:v10 forKeyedSubscript:*v5];
    }

    v11 = [v3 localizedRecoverySuggestion];

    if (v11)
    {
      v12 = [v3 localizedRecoverySuggestion];
      [v6 setObject:v12 forKeyedSubscript:*MEMORY[0x1E696A598]];
    }

    v13 = [v3 userInfo];
    v14 = [v13 objectForKey:@"WFActionIndex"];

    if (v14)
    {
      v15 = [v3 userInfo];
      v16 = [v15 objectForKey:@"WFActionIndex"];
      [v6 setObject:v16 forKeyedSubscript:@"WFActionIndex"];
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = [v3 domain];
    v19 = [v3 code];
    v20 = [v6 copy];
    v21 = [v17 errorWithDomain:v18 code:v19 userInfo:v20];
    [v4 setObject:v21 forKey:*MEMORY[0x1E696AA08]];
  }

  v22 = failureReasonForRunnerErrorCode(a1);
  if (v22)
  {
    [v4 setObject:v22 forKey:*v5];
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFBackgroundShortcutRunnerErrorDomain" code:a1 userInfo:v4];

  return v23;
}

void sub_1CA853B88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1CA8542EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFRemoteWidgetFramer()
{
  if (WFRemoteWidgetFramer_onceToken != -1)
  {
    dispatch_once(&WFRemoteWidgetFramer_onceToken, &__block_literal_global_308);
  }

  v1 = WFRemoteWidgetFramer_definition;

  return v1;
}

void __WFRemoteWidgetFramer_block_invoke()
{
  definition = nw_framer_create_definition("WFRemoteWidgetConnection", 0, &__block_literal_global_312);
  v1 = WFRemoteWidgetFramer_definition;
  WFRemoteWidgetFramer_definition = definition;
}

uint64_t __WFRemoteWidgetFramer_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  nw_framer_set_input_handler(v2, &__block_literal_global_315_45922);
  nw_framer_set_output_handler(v2, &__block_literal_global_319);

  return 1;
}

void __WFRemoteWidgetFramer_block_invoke_5(uint64_t a1, void *a2, uint64_t a3, size_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (HIDWORD(a4))
  {
    v7 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "WFRemoteWidgetFramer_block_invoke_5";
      v11 = 2050;
      v12 = a4;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Message length exceeds UINT32_MAX. Message length %{public}ld", &v9, 0x16u);
    }
  }

  else
  {
    v9 = bswap32(a4);
    nw_framer_write_output(v5, &v9, 4uLL);
    nw_framer_write_output_no_copy(v6, a4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __WFRemoteWidgetFramer_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x1E69E9820];
  while (1)
  {
    *temp_buffer = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = v3;
    v8[1] = 3221225472;
    v8[2] = __WFRemoteWidgetFramer_block_invoke_4;
    v8[3] = &unk_1E837A880;
    v8[4] = &v9;
    if (!nw_framer_parse_input(v2, 4uLL, 4uLL, temp_buffer, v8))
    {
      break;
    }

    v4 = nw_framer_message_create(v2);
    v5 = nw_framer_deliver_input_no_copy(v2, *(v10 + 6), v4, 1);

    _Block_object_dispose(&v9, 8);
    if (!v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  _Block_object_dispose(&v9, 8);
  v6 = 4;
LABEL_6:

  return v6;
}

void sub_1CA854748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __WFRemoteWidgetFramer_block_invoke_4(uint64_t a1, unsigned int *a2, unint64_t a3)
{
  result = 0;
  if (a2)
  {
    if (a3 >= 4)
    {
      *(*(*(a1 + 32) + 8) + 24) = bswap32(*a2);
      return 4;
    }
  }

  return result;
}

void sub_1CA854D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

NSObject *WFCreateAdvertiseParametersForConnectionType(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    v1 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "WFCreateAdvertiseParametersForConnectionType";
      _os_log_impl(&dword_1CA256000, v1, OS_LOG_TYPE_DEFAULT, "%s creating terminus advertise parameter with ASListener", &v10, 0xCu);
    }

    application_service_quic = nw_parameters_create_application_service_quic();
    empty = xpc_array_create_empty();
    xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, "com.apple.networkrelay");
    v4 = xpc_array_create_empty();
    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "ASListener");
    nw_parameters_set_required_netagent_classes();
    nw_parameters_set_local_only(application_service_quic, 0);
    nw_parameters_set_prohibit_expensive(application_service_quic, 1);
    nw_parameters_set_prohibit_constrained(application_service_quic, 1);
    nw_parameters_set_include_peer_to_peer(application_service_quic, 1);
    nw_parameters_set_attach_protocol_listener();
    nw_parameters_set_traffic_class();
    nw_parameters_set_multipath_service(application_service_quic, nw_multipath_service_disabled);
  }

  else
  {
    application_service_quic = MEMORY[0x1CCAA3D90]();
    empty = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(empty, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "WFCreateAdvertiseParametersForConnectionType";
      _os_log_impl(&dword_1CA256000, empty, OS_LOG_TYPE_DEFAULT, "%s creating standard advertise parameter", &v10, 0xCu);
    }
  }

  v5 = nw_parameters_copy_default_protocol_stack(application_service_quic);
  v6 = WFRemoteWidgetFramer();
  options = nw_framer_create_options(v6);
  nw_protocol_stack_prepend_application_protocol(v5, options);

  v8 = *MEMORY[0x1E69E9840];

  return application_service_quic;
}

NSObject *WFCreateBrowseParametersForConnectionType(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    application_service_quic = nw_parameters_create_application_service_quic();
    v6 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "WFCreateBrowseParametersForConnectionType";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_INFO, "%s creating terminus browse parameter with ASResolver", &v12, 0xCu);
    }

    empty = xpc_array_create_empty();
    xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, "com.apple.networkrelay");
    v4 = xpc_array_create_empty();
    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "ASResolver");
    nw_parameters_set_preferred_netagent_classes();
    nw_parameters_set_prohibit_expensive(application_service_quic, 1);
    nw_parameters_set_prohibit_constrained(application_service_quic, 1);
    nw_parameters_set_include_peer_to_peer(application_service_quic, 1);
    nw_parameters_set_traffic_class();
    nw_parameters_set_multipath_service(application_service_quic, nw_multipath_service_disabled);
  }

  else if (a1)
  {
    application_service_quic = 0;
    v4 = 0;
    empty = 0;
  }

  else
  {
    application_service_quic = MEMORY[0x1CCAA3D90]();
    v2 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "WFCreateBrowseParametersForConnectionType";
      _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s creating standard browse parameter with RapportBrowseAgent", &v12, 0xCu);
    }

    empty = xpc_array_create(0, 0);
    xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, "com.apple.rapport.browse");
    v4 = xpc_array_create(0, 0);
    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "RapportBrowseAgent");
    nw_parameters_set_required_netagent_classes();
    self = nw_application_id_create_self();
    nw_parameters_set_application_id();
  }

  v7 = nw_parameters_copy_default_protocol_stack(application_service_quic);
  v8 = WFRemoteWidgetFramer();
  options = nw_framer_create_options(v8);
  nw_protocol_stack_prepend_application_protocol(v7, options);

  v10 = *MEMORY[0x1E69E9840];

  return application_service_quic;
}

void sub_1CA855C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA8564A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1CA856D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CA8575BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFDisplayableTimeUnitsForContentProperty(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [&unk_1F4A9B620 mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 unsignedIntegerValue];
        if (([v1 timeUnits] & v9) == 0)
        {
          [v2 removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

id WFComparableTimeUnitsForContentProperty(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [&unk_1F4A9B620 mutableCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 unsignedIntegerValue];
        if (([v1 comparableUnits] & v9) == 0)
        {
          [v2 removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

id WFLabelForCalendarUnit(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  if (a3)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 decimalNumber];
    [v8 doubleValue];
    v10 = v9;

    v7 = fmin(v10, 150.0);
  }

  if (a1 == 0x2000)
  {
    v11 = 4096;
  }

  else
  {
    v11 = a1;
  }

  [v6 setValue:v7 forComponent:v11];
  v12 = objc_opt_new();
  [v12 setUnitsStyle:3];
  [v12 setZeroFormattingBehavior:0];
  v13 = [v12 stringFromDateComponents:v6];
  v14 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v15 = [v13 componentsSeparatedByCharactersInSet:v14];
  v16 = [v15 componentsJoinedByString:&stru_1F4A1C408];
  v17 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v18 = [v16 stringByTrimmingCharactersInSet:v17];

  return v18;
}

id WFLabelForByteCountUnit(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 setAllowedUnits:a1];
  [v2 setAllowsNonnumericFormatting:0];
  [v2 setIncludesCount:0];
  v3 = [v2 stringFromByteCount:0];

  return v3;
}

id WFContentPredicateForRowTemplateValue(void *a1)
{
  v156[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 comparisonOperator];
  v3 = [v1 contentItemClass];
  v4 = [v1 contentPropertyName];
  v5 = [v3 propertyForName:v4];

  v6 = [objc_msgSend(v5 "valueItemClass")];
  v7 = [MEMORY[0x1E695DF00] date];
  if (v6 == 4)
  {
    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [v5 comparableUnits];
    v137 = v9;
    if (v9)
    {
      v10 = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __WFContentPredicateForRowTemplateValue_block_invoke;
      aBlock[3] = &unk_1E837A8F8;
      v153[1] = v9;
      v127 = v153;
      v11 = v8;
      v153[0] = v11;
      v12 = _Block_copy(aBlock);
      v13 = [v11 components:v10 fromDate:v7];
      v14 = [v11 nextDateAfterDate:v7 matchingComponents:v13 options:1024];
      v15 = v14 != 0;
    }

    else
    {
      v15 = 0;
      v12 = &__block_literal_global_46348;
    }

    v23 = WFComparableTimeUnitsForContentProperty(v5);
    v24 = [v23 lastObject];

    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = &unk_1F4A9A7C8;
    }

    v26 = [v25 unsignedIntegerValue];
    if (v2 - 1000 < 2)
    {
      goto LABEL_22;
    }

    if (v2 == 1002)
    {
      if (v15)
      {
        v39 = MEMORY[0x1E6996D48];
        v141[0] = MEMORY[0x1E69E9820];
        v141[1] = 3221225472;
        v141[2] = __WFContentPredicateForRowTemplateValue_block_invoke_6;
        v141[3] = &unk_1E837A990;
        v142 = v8;
        v143 = v12;
        v40 = [v39 predicateWithValueBlock:v141 forProperty:v5];

        v41 = v142;
      }

      else
      {
        v98 = [v8 startOfDayForDate:v7];
        v134 = [v8 dateByAddingUnit:16 value:1 toDate:v98 options:0];
        v99 = [MEMORY[0x1E6996D48] predicateWithValue:v98 forProperty:v5 comparisonType:3];
        v155[0] = v99;
        v100 = [MEMORY[0x1E6996D48] predicateWithValue:v134 forProperty:v5 comparisonType:0];
        v155[1] = v100;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:2];
        v101 = v8;
        v102 = v7;
        v103 = v25;
        v105 = v104 = v12;

        v41 = v98;
        v40 = [MEMORY[0x1E6996D50] andPredicateWithSubpredicates:v105];

        v12 = v104;
        v25 = v103;
        v7 = v102;
        v8 = v101;
      }

      v48 = v137;
      goto LABEL_107;
    }

    if (v2 == 1003)
    {
LABEL_22:
      v128 = v8;
      v131 = v5;
      v126 = v25;
      if (v2 == 1003)
      {
        v27 = [v1 date];
        v132 = (*(v12 + 2))(v12, v27);

        v28 = [v1 anotherDate];
      }

      else
      {
        if (v2 == 1001 && (v137 & 0x1C) == 0x1C)
        {
          v36 = v12;
          v37 = v7;
        }

        else
        {
          v36 = v12;
          v37 = (*(v12 + 2))(v12, v7);
        }

        v132 = v37;
        v52 = [v1 number];
        v53 = [v52 integerValue];

        v54 = [v1 calendarUnit];
        v55 = [v54 unsignedIntegerValue];
        if (v2 == 1001)
        {
          v56 = -v53;
        }

        else
        {
          v56 = v53;
        }

        v28 = [v8 dateByAddingUnit:v55 value:v56 toDate:v7 options:0];

        v12 = v36;
        v25 = v126;
      }

      v57 = (*(v12 + 2))(v12, v28);

      if (v2 == 1001)
      {
        v58 = 1;
      }

      else
      {
        v58 = 3;
      }

      if (v2 == 1001)
      {
        v59 = 3;
      }

      else
      {
        v59 = 1;
      }

      if (v15)
      {
        v124 = v7;
        v125 = v12;
        v60 = MEMORY[0x1E696AB18];
        v61 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
        v62 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v132];
        v123 = [v60 predicateWithLeftExpression:v61 rightExpression:v62 modifier:0 type:v58 options:0];

        v63 = MEMORY[0x1E696AB18];
        v64 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
        v65 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v57];
        v66 = [v63 predicateWithLeftExpression:v64 rightExpression:v65 modifier:0 type:v59 options:0];

        v67 = MEMORY[0x1E696AB18];
        v68 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
        v69 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v57];
        v70 = [v67 predicateWithLeftExpression:v68 rightExpression:v69 modifier:0 type:3 options:0];

        if (v2 == 1003 && [v70 evaluateWithObject:v132])
        {
          v71 = MEMORY[0x1E6996D48];
          v148[0] = MEMORY[0x1E69E9820];
          v148[1] = 3221225472;
          v148[2] = __WFContentPredicateForRowTemplateValue_block_invoke_2;
          v148[3] = &unk_1E837A968;
          v72 = &v151;
          v150 = v66;
          v151 = v125;
          v73 = &v149;
          v74 = &v150;
          v75 = v123;
          v149 = v123;
          v76 = v66;
          v77 = v123;
          v78 = v148;
        }

        else
        {
          v71 = MEMORY[0x1E6996D48];
          v144[0] = MEMORY[0x1E69E9820];
          v144[1] = 3221225472;
          v144[2] = __WFContentPredicateForRowTemplateValue_block_invoke_4;
          v144[3] = &unk_1E837A968;
          v72 = &v147;
          v146 = v66;
          v147 = v125;
          v73 = &v145;
          v74 = &v146;
          v75 = v123;
          v145 = v123;
          v81 = v66;
          v82 = v123;
          v78 = v144;
        }

        v40 = [v71 predicateWithValueBlock:v78 forProperty:v131];

        v7 = v124;
        v12 = v125;
        v8 = v128;
        v41 = v132;
        v48 = v137;
        v25 = v126;
      }

      else
      {
        v79 = [MEMORY[0x1E6996D48] predicateWithValue:v132 forProperty:v131 comparisonType:v58];
        v156[0] = v79;
        v80 = [MEMORY[0x1E6996D48] predicateWithValue:v57 forProperty:v131 comparisonType:v59];
        v156[1] = v80;
        v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:2];

        v41 = v132;
        v40 = [MEMORY[0x1E6996D50] andPredicateWithSubpredicates:v70];
        v48 = v137;
      }

      v5 = v131;
LABEL_107:

      if (v48)
      {
      }

      goto LABEL_110;
    }

    if (v15)
    {
      v133 = MEMORY[0x1E696AB18];
      v42 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
      v43 = MEMORY[0x1E696ABC8];
      v44 = [v1 date];
      (*(v12 + 2))(v12, v44);
      v45 = v129 = v8;
      v46 = [v43 expressionForConstantValue:v45];
      v47 = [v133 predicateWithLeftExpression:v42 rightExpression:v46 modifier:0 type:v2 options:0];

      v8 = v129;
      v48 = v137;

      v49 = MEMORY[0x1E6996D48];
      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = __WFContentPredicateForRowTemplateValue_block_invoke_7;
      v138[3] = &unk_1E837A990;
      v139 = v47;
      v140 = v12;
      v50 = v47;
      v51 = v49;
      v41 = v50;
      v40 = [v51 predicateWithValueBlock:v138 forProperty:v5];

      goto LABEL_107;
    }

    v48 = v137;
    if (v2 <= 4 && ((1 << v2) & 0x15) != 0)
    {
      v106 = v26;
      v107 = [v1 date];
      v135 = (*(v12 + 2))(v12, v107);

      v41 = v135;
      if (v135)
      {
        v108 = [v8 dateByAddingUnit:v106 value:1 toDate:v135 options:0];
      }

      else
      {
        v108 = 0;
      }

      switch(v2)
      {
        case 0uLL:
          v109 = MEMORY[0x1E6996D48];
          v110 = v135;
          v111 = v5;
          v112 = 0;
          goto LABEL_103;
        case 4uLL:
          v113 = [MEMORY[0x1E6996D48] predicateWithValue:v135 forProperty:v5 comparisonType:3];
          v154[0] = v113;
          v114 = [MEMORY[0x1E6996D48] predicateWithValue:v108 forProperty:v5 comparisonType:0];
          v154[1] = v114;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];
          v130 = v8;
          v115 = v7;
          v116 = v25;
          v118 = v117 = v12;

          v48 = v137;
          v41 = v135;
          v40 = [MEMORY[0x1E6996D50] andPredicateWithSubpredicates:v118];

          v12 = v117;
          v25 = v116;
          v7 = v115;
          v8 = v130;
LABEL_104:

          goto LABEL_107;
        case 2uLL:
          v109 = MEMORY[0x1E6996D48];
          v110 = v108;
          v111 = v5;
          v112 = 2;
LABEL_103:
          v40 = [v109 predicateWithValue:v110 forProperty:v111 comparisonType:v112];
          goto LABEL_104;
      }
    }

    v136 = MEMORY[0x1E6996D48];
    v119 = [v1 date];
    v120 = (*(v12 + 2))(v12, v119);
    v40 = [v136 predicateWithValue:v120 forProperty:v5 comparisonType:v2];

    v41 = v119;
    goto LABEL_107;
  }

  if ([v5 hasPossibleValues])
  {
    v16 = [v1 enumeration];
  }

  else
  {
    v16 = 0;
  }

  if (([v5 hasPossibleValues] & 1) == 0 && v6 == 2)
  {
    v17 = [v1 string];
    if ([v5 hasPropertyClassSubclassingClass:objc_opt_class()])
    {
      v18 = MEMORY[0x1E6996F00];
      v19 = [v1 phone];
      v20 = [v18 phoneNumberWithPhoneNumberString:v19];
      v21 = [v20 normalizedPhoneNumber];

      v17 = v19;
    }

    else
    {
      if (![v5 hasPropertyClassSubclassingClass:objc_opt_class()])
      {
LABEL_33:
        if ([v17 length])
        {
          v38 = v17;

          v16 = v38;
        }

        [v1 comparisonOperator];
        goto LABEL_78;
      }

      v21 = [v1 email];
    }

    v17 = v21;
    goto LABEL_33;
  }

  [v1 comparisonOperator];
  if ((v6 - 5) >= 3 && v6 != 3)
  {
    if (v6 == 1)
    {
      v22 = [v1 BOOLean];

LABEL_77:
      v16 = v22;
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  v29 = [v1 number];

  if (v6 == 6)
  {
    v83 = [v1 byteCountUnit];
    v84 = [v83 unsignedIntegerValue];

    v85 = 1000;
    if (v84 != 2)
    {
      v85 = 1;
    }

    if (v84 == 4)
    {
      v85 = 1000000;
    }

    if (v84 == 8)
    {
      v85 = 1000000000;
    }

    if (v84 == 16)
    {
      v85 = 1000000000000;
    }

    if (v84 == 32)
    {
      v85 = 1000000000000000;
    }

    if (v84 == 64)
    {
      v86 = 1000000000000000000;
    }

    else
    {
      v86 = v85;
    }

    v87 = objc_alloc(MEMORY[0x1E6996E28]);
    v30 = [v1 number];
    v16 = [v87 initWithByteCount:{v86 * objc_msgSend(v30, "longLongValue")}];

    goto LABEL_73;
  }

  if (v6 == 7)
  {
    v30 = [MEMORY[0x1E695DEE8] currentCalendar];
    v31 = [v1 calendarUnit];
    v32 = [v31 integerValue];
    v33 = [v1 number];
    v34 = [v30 dateByAddingUnit:v32 value:objc_msgSend(v33 toDate:"integerValue") options:{v7, 0}];

    v35 = objc_alloc(MEMORY[0x1E6996F70]);
    [v34 timeIntervalSinceDate:v7];
    v16 = [v35 initWithTimeInterval:?];

LABEL_73:
    goto LABEL_78;
  }

  v16 = v29;
LABEL_75:
  if (v6 == 5)
  {
    v88 = objc_alloc(MEMORY[0x1E696AD28]);
    v89 = [v1 number];
    [v89 doubleValue];
    v91 = v90;
    v92 = [v1 measurementUnit];
    v22 = [v88 initWithDoubleValue:v92 unit:v91];

    goto LABEL_77;
  }

LABEL_78:
  v93 = v2 == 999 || v2 == 5;
  v94 = 4;
  if (!v93)
  {
    v94 = 5;
  }

  if (v16)
  {
    v95 = v2;
  }

  else
  {
    v95 = v94;
  }

  if (v95 == 999)
  {
    v96 = MEMORY[0x1E6996D50];
    v97 = [MEMORY[0x1E6996D48] predicateWithValue:v16 forProperty:v5 comparisonType:99];
    v40 = [v96 notPredicateWithSubpredicate:v97];
  }

  else
  {
    v40 = [MEMORY[0x1E6996D48] predicateWithValue:v16 forProperty:v5 comparisonType:?];
  }

LABEL_110:
  v121 = *MEMORY[0x1E69E9840];

  return v40;
}

id __WFContentPredicateForRowTemplateValue_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v3)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        v5 = [*(a1 + 32) components:v4 fromDate:v3];
        if (v5)
        {
          v6 = v5;
          v7 = [*(a1 + 32) dateFromComponents:v5];

          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v8 = getWFActionsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v11 = 136315394;
      v12 = "WFContentPredicateForRowTemplateValue_block_invoke";
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Parameter to transform is not an NSDate object: %@", &v11, 0x16u);
    }
  }

  v7 = 0;
LABEL_10:

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __WFContentPredicateForRowTemplateValue_block_invoke_2(id *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __WFContentPredicateForRowTemplateValue_block_invoke_3;
  v17[3] = &unk_1E837A940;
  v18 = a1[6];
  [a2 if_map:v17];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([a1[4] evaluateWithObject:{v9, v13}] & 1) != 0 || (objc_msgSend(a1[5], "evaluateWithObject:", v9))
        {
          v10 = 1;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
      v10 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __WFContentPredicateForRowTemplateValue_block_invoke_4(id *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __WFContentPredicateForRowTemplateValue_block_invoke_5;
  v17[3] = &unk_1E837A940;
  v18 = a1[6];
  [a2 if_map:v17];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([a1[4] evaluateWithObject:{v9, v13}] && (objc_msgSend(a1[5], "evaluateWithObject:", v9) & 1) != 0)
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __WFContentPredicateForRowTemplateValue_block_invoke_6(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        v10 = (*(*(a1 + 40) + 16))(*(a1 + 40));
        v11 = *(a1 + 40);
        v12 = [MEMORY[0x1E695DF00] date];
        v13 = (*(v11 + 16))(v11, v12);
        LOBYTE(v9) = [v9 isDate:v10 inSameDayAsDate:v13];

        if (v9)
        {
          v14 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __WFContentPredicateForRowTemplateValue_block_invoke_7(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        v10 = (*(*(a1 + 40) + 16))(*(a1 + 40));
        LOBYTE(v9) = [v9 evaluateWithObject:{v10, v14}];

        if (v9)
        {
          v11 = 1;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t WFDateComparisonResultForComparisonOperator(unint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v123 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v11;
  v15 = v12;
  v16 = v13;
  v17 = MEMORY[0x1E695DF00];
  v18 = a2;
  v19 = [v17 date];
  v20 = [MEMORY[0x1E695DEE8] currentCalendar];
  v112 = v20;
  if (a5)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __WFPredicateForComparisonOperator_block_invoke;
    aBlock[3] = &unk_1E837A8F8;
    v115[1] = a5;
    v105 = v115;
    v21 = v20;
    v115[0] = v21;
    v113 = _Block_copy(aBlock);
    v22 = [v21 components:a5 fromDate:v19];
    v23 = [v21 nextDateAfterDate:v19 matchingComponents:v22 options:1024];

    v24 = v23 != 0;
    v25 = a5;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v113 = &__block_literal_global_203_46354;
  }

  v26 = __WFPredicateForComparisonOperator_block_invoke_3(v25);
  v27 = [v26 lastObject];

  if (!v27)
  {
    v27 = &unk_1F4A9A7C8;
  }

  v28 = [v27 unsignedIntegerValue];
  v110 = a5;
  v111 = v19;
  v109 = v18;
  if (a1 - 1000 < 2)
  {
    goto LABEL_9;
  }

  if (a1 == 1002)
  {
    if (v24)
    {
      v56 = MEMORY[0x1E696AE18];
      v116 = MEMORY[0x1E69E9820];
      v117 = 3221225472;
      v118 = __WFPredicateForComparisonOperator_block_invoke_5;
      v119 = &unk_1E837A9E0;
      v54 = v112;
      v120 = v112;
      v121 = v113;
      v50 = [v56 predicateWithBlock:&v116];

      v30 = v120;
    }

    else
    {
      v54 = v112;
      v30 = [v112 startOfDayForDate:v19];
      v100 = [v112 dateByAddingUnit:16 value:1 toDate:v30 options:0];
      v66 = MEMORY[0x1E696AB18];
      v104 = v27;
      v101 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
      v67 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v30];
      [v66 predicateWithLeftExpression:v101 rightExpression:v67 modifier:0 type:3 options:0];
      v68 = v107 = v16;
      v116 = v68;
      v69 = MEMORY[0x1E696AB18];
      v70 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
      v71 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v100];
      v72 = [v69 predicateWithLeftExpression:v70 rightExpression:v71 modifier:0 type:0 options:0];
      v117 = v72;
      v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:2];

      v16 = v107;
      v50 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v73];

      v27 = v104;
    }

    v53 = v109;
    goto LABEL_53;
  }

  if (a1 == 1003)
  {
LABEL_9:
    v103 = v27;
    v106 = v16;
    if (a1 == 1003)
    {
      v29 = v14;
    }

    else
    {
      v29 = v19;
    }

    v30 = (*(v113 + 2))(v113, v29);
    v31 = v15;
    if (a1 != 1003)
    {
      v32 = [v16 magnitude];
      v33 = [v32 integerValue];

      v34 = [v16 unitString];
      v35 = [WFDurationQuantityFieldParameter calendarUnitFromUnitString:v34];

      if (a1 == 1001)
      {
        v36 = -v33;
      }

      else
      {
        v36 = v33;
      }

      v31 = [v112 dateByAddingUnit:v35 value:v36 toDate:v111 options:0];
    }

    v37 = (*(v113 + 2))(v113, v31);
    if (a1 != 1003)
    {
    }

    if ([v30 compare:v37] == 1)
    {
      v38 = [v112 dateByAddingUnit:v28 value:1 toDate:v30 options:0];

      v30 = v38;
    }

    if (a1 == 1001)
    {
      v39 = 1;
    }

    else
    {
      v39 = 3;
    }

    if (a1 == 1001)
    {
      v40 = 3;
    }

    else
    {
      v40 = 1;
    }

    v41 = MEMORY[0x1E696AB18];
    v42 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    v43 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v30];
    v44 = [v41 predicateWithLeftExpression:v42 rightExpression:v43 modifier:0 type:v39 options:0];

    v45 = MEMORY[0x1E696AB18];
    v46 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    v47 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v37];
    v48 = [v45 predicateWithLeftExpression:v46 rightExpression:v47 modifier:0 type:v40 options:0];

    if (v24)
    {
      v49 = MEMORY[0x1E696AE18];
      v116 = MEMORY[0x1E69E9820];
      v117 = 3221225472;
      v118 = __WFPredicateForComparisonOperator_block_invoke_4;
      v119 = &unk_1E837A9B8;
      v122 = v113;
      v120 = v44;
      v121 = v48;
      v50 = [v49 predicateWithBlock:&v116];

      v51 = v122;
    }

    else
    {
      v52 = MEMORY[0x1E696AB28];
      v116 = v44;
      v117 = v48;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:2];
      v50 = [v52 andPredicateWithSubpredicates:v51];
    }

    v16 = v106;
    goto LABEL_31;
  }

  if (!v24)
  {
    if (a1 > 4 || ((1 << a1) & 0x15) == 0)
    {
      goto LABEL_51;
    }

    v74 = v16;
    v30 = (*(v113 + 2))(v113, v14);
    if (v30)
    {
      v75 = [v112 dateByAddingUnit:v28 value:1 toDate:v30 options:0];
      if (a1)
      {
LABEL_42:
        if (a1 == 4)
        {
          v103 = v27;
          v84 = MEMORY[0x1E696AB18];
          v108 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
          v102 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v30];
          v85 = [v84 predicateWithLeftExpression:v108 rightExpression:v102 modifier:0 type:3 options:0];
          v116 = v85;
          v86 = MEMORY[0x1E696AB18];
          v87 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
          v88 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v75];
          v89 = [v86 predicateWithLeftExpression:v87 rightExpression:v88 modifier:0 type:0 options:0];
          v117 = v89;
          v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:2];

          v50 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v77];
          goto LABEL_49;
        }

        if (a1 == 2)
        {
          v103 = v27;
          v76 = MEMORY[0x1E696AB18];
          v77 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
          v78 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v75];
          v79 = v76;
          v80 = v77;
          v81 = v78;
          v82 = 2;
LABEL_47:
          v50 = [v79 predicateWithLeftExpression:v80 rightExpression:v81 modifier:0 type:v82 options:0];

LABEL_49:
          v16 = v74;
LABEL_31:
          v53 = v109;
          v54 = v112;
          v27 = v103;
          v55 = v105;
          goto LABEL_54;
        }

        v16 = v74;
LABEL_51:
        v90 = v18;
        v91 = MEMORY[0x1E696AB18];
        v30 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
        v92 = MEMORY[0x1E696ABC8];
        (*(v113 + 2))(v113, v14);
        v94 = v93 = v27;
        v95 = [v92 expressionForConstantValue:v94];
        v96 = v91;
        v53 = v90;
        v50 = [v96 predicateWithLeftExpression:v30 rightExpression:v95 modifier:0 type:a1 options:0];

        v27 = v93;
        goto LABEL_52;
      }
    }

    else
    {
      v75 = 0;
      if (a1)
      {
        goto LABEL_42;
      }
    }

    v103 = v27;
    v83 = MEMORY[0x1E696AB18];
    v77 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    v78 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v30];
    v79 = v83;
    v80 = v77;
    v81 = v78;
    v82 = 0;
    goto LABEL_47;
  }

  v57 = MEMORY[0x1E696AB18];
  v58 = v27;
  v59 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  v60 = MEMORY[0x1E696ABC8];
  v61 = (*(v113 + 2))(v113, v14);
  v62 = [v60 expressionForConstantValue:v61];
  v63 = [v57 predicateWithLeftExpression:v59 rightExpression:v62 modifier:0 type:a1 options:0];

  v27 = v58;
  v64 = MEMORY[0x1E696AE18];
  v116 = MEMORY[0x1E69E9820];
  v117 = 3221225472;
  v118 = __WFPredicateForComparisonOperator_block_invoke_6;
  v119 = &unk_1E837A9E0;
  v120 = v63;
  v121 = v113;
  v65 = v63;
  v53 = v109;
  v30 = v65;
  v50 = [v64 predicateWithBlock:&v116];

LABEL_52:
  v54 = v112;
LABEL_53:
  v55 = v105;
LABEL_54:

  if (v110)
  {
  }

  v97 = [v50 evaluateWithObject:v53];
  v98 = *MEMORY[0x1E69E9840];
  return v97;
}

id __WFPredicateForComparisonOperator_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (v4 = *(a1 + 40)) != 0 && ([*(a1 + 32) components:v4 fromDate:v3], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [*(a1 + 32) dateFromComponents:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __WFPredicateForComparisonOperator_block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [&unk_1F4A9B620 mutableCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 unsignedIntegerValue] & a1) == 0)
        {
          [v2 removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __WFPredicateForComparisonOperator_block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  if ([*(a1 + 32) evaluateWithObject:v2])
  {
    v3 = [*(a1 + 40) evaluateWithObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __WFPredicateForComparisonOperator_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 isDateInToday:v2];

  return v3;
}

uint64_t __WFPredicateForComparisonOperator_block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 evaluateWithObject:v2];

  return v3;
}

uint64_t WFPBSetupAutomationEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              v34 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v34 & 0x7F) << v23;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_50;
              }
            }

            v20 = (v25 != 0) & ~[a2 hasError];
LABEL_50:
            v31 = 41;
LABEL_53:
            *(a1 + v31) = v20;
            goto LABEL_54;
          case 5:
            v21 = PBReaderReadString();
            v22 = 8;
            break;
          case 6:
            v21 = PBReaderReadString();
            v22 = 16;
            break;
          default:
LABEL_44:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v21 = PBReaderReadString();
            v22 = 24;
            break;
          case 2:
            v21 = PBReaderReadString();
            v22 = 32;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v35 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v35 & 0x7F) << v14;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_52;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_52:
            v31 = 40;
            goto LABEL_53;
          default:
            goto LABEL_44;
        }
      }

      v30 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA85E4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46885(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA86034C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA860674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFLNComparisonBetweenQueryWithDates(void *a1, uint64_t a2, void *a3, void *a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69ACA90];
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = [v7 alloc];
  v12 = [MEMORY[0x1E69AC938] dateValueType];
  v13 = [v11 initWithValue:v9 valueType:v12];

  v14 = objc_alloc(MEMORY[0x1E69ACA90]);
  v15 = [MEMORY[0x1E69AC938] dateValueType];
  v16 = [v14 initWithValue:v8 valueType:v15];

  v17 = objc_alloc(MEMORY[0x1E69ACA90]);
  v25[0] = v13;
  v25[1] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v19 = [MEMORY[0x1E69AC938] dateValueType];
  v20 = [v17 initWithValues:v18 memberValueType:v19];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v22 = [v10 wf_propertyQueryWithValue:v20 contentOperator:1003 parameterIndex:v21];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

id WFLNComparisonIsToday(void *a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E695DEE8];
  v6 = a3;
  v7 = a1;
  v8 = [v5 currentCalendar];
  v9 = [v8 startOfDayForDate:v6];

  v10 = [v8 dateByAddingUnit:16 value:1 toDate:v9 options:0];
  v11 = [v8 dateByAddingUnit:0x8000 value:-1 toDate:v10 options:0];
  v12 = WFLNComparisonBetweenQueryWithDates(v7, a2, v9, v11);

  return v12;
}

id WFLNComparisonInTheLast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = MEMORY[0x1E695DEE8];
  v10 = a5;
  v11 = a1;
  v12 = [v9 currentCalendar];
  v13 = [v12 dateByAddingUnit:a4 value:-a3 toDate:v10 options:0];
  v14 = WFLNComparisonBetweenQueryWithDates(v11, a2, v13, v10);

  return v14;
}

id WFLNComparisonInTheNext(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = MEMORY[0x1E695DEE8];
  v10 = a5;
  v11 = a1;
  v12 = [v9 currentCalendar];
  v13 = [v12 dateByAddingUnit:a4 value:a3 toDate:v10 options:0];
  v14 = WFLNComparisonBetweenQueryWithDates(v11, a2, v10, v13);

  return v14;
}

id WFLNPropertyQueryForRowTemplateValue(void *a1, void *a2, void *a3)
{
  v125 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v104 = a2;
  v103 = a3;
  v6 = [v5 comparisonOperator];
  v7 = [v5 contentItemClass];
  v8 = [v5 contentPropertyName];
  v9 = [v7 propertyForName:v8];

  v101 = [objc_msgSend(v9 "valueItemClass")];
  v10 = [v9 userInfo];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v102 = v12;
  v13 = [v12 objectForKey:@"WFLinkEntityContentPropertyUserInfoPropertyIdentifier"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = __Block_byref_object_copy__47063;
  v119 = __Block_byref_object_dispose__47064;
  v120 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v16 = [v104 parameters];
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __WFLNPropertyQueryForRowTemplateValue_block_invoke;
  v107[3] = &unk_1E837AD20;
  v17 = v15;
  v108 = v17;
  v109 = &v115;
  v110 = &v111;
  [v16 enumerateObjectsUsingBlock:v107];

  v18 = v116[5];
  if (!v18)
  {
    goto LABEL_90;
  }

  if (v6 > 1001)
  {
    if (v6 == 1002)
    {
      if ([v9 hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v37 = v116[5];
        v38 = v112[3];
        v20 = [MEMORY[0x1E695DF00] date];
        v25 = WFLNComparisonIsToday(v37, v38, v20);
      }

      else
      {
        v20 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          v43 = [v9 propertyClasses];
          v44 = NSStringFromClass([v43 objectAtIndexedSubscript:0]);
          *buf = 136315394;
          v122 = "WFLNPropertyQueryForRowTemplateValue";
          v123 = 2112;
          v124 = v44;
          _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s WFContentOperatorIsToday query has an invalid property class that is %@ instead of NSDate", buf, 0x16u);
        }

        v25 = 0;
      }

      goto LABEL_89;
    }

    if (v6 == 1003 && [v9 hasPropertyClassSubclassingClass:objc_opt_class()])
    {
      v26 = v116[5];
      v27 = v112[3];
      v20 = [v5 date];
      v28 = [v5 anotherDate];
      v25 = WFLNComparisonBetweenQueryWithDates(v26, v27, v20, v28);

      goto LABEL_89;
    }
  }

  else
  {
    if (v6 == 1000)
    {
      v32 = v112[3];
      v20 = [v5 number];
      v33 = [v20 integerValue];
      v34 = [v5 calendarUnit];
      v35 = [v34 unsignedIntegerValue];
      v36 = [MEMORY[0x1E695DF00] date];
      v25 = WFLNComparisonInTheNext(v18, v32, v33, v35, v36);

      goto LABEL_89;
    }

    if (v6 == 1001)
    {
      v19 = v112[3];
      v20 = [v5 number];
      v21 = [v20 integerValue];
      v22 = [v5 calendarUnit];
      v23 = [v22 unsignedIntegerValue];
      v24 = [MEMORY[0x1E695DF00] date];
      v25 = WFLNComparisonInTheLast(v18, v19, v21, v23, v24);

LABEL_89:
      goto LABEL_91;
    }
  }

  v29 = v103;
  v30 = @"is.workflow.actions.filter.notes";
  if (v29 == @"is.workflow.actions.filter.notes")
  {
    v31 = 1;
  }

  else
  {
    if (!v29)
    {

      goto LABEL_37;
    }

    v31 = [(__CFString *)v29 isEqualToString:@"is.workflow.actions.filter.notes"];
  }

  if (v6 == 4)
  {
    v39 = v31;
  }

  else
  {
    v39 = 0;
  }

  if (v39 == 1 && v101 == 4)
  {
    v20 = [v5 date];
    v40 = [MEMORY[0x1E695DEE8] currentCalendar];
    v41 = [v40 dateByAddingUnit:64 value:1 toDate:v20 options:0];
    v42 = [v40 dateByAddingUnit:128 value:-1 toDate:v41 options:0];
    v25 = WFLNComparisonBetweenQueryWithDates(v116[5], v112[3], v20, v42);

    goto LABEL_89;
  }

LABEL_37:
  if ([v9 hasPropertyClassSubclassingClass:objc_opt_class()])
  {
    v45 = objc_alloc(MEMORY[0x1E69ACA90]);
    v46 = [v5 date];
    v47 = [MEMORY[0x1E69AC938] dateValueType];
    v20 = [v45 initWithValue:v46 valueType:v47];
  }

  else
  {
    v20 = 0;
  }

  v48 = [v5 enumeration];

  if (v48)
  {
    v49 = [v5 enumeration];
    if (!v49 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v50 = [v5 enumeration];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v52 = [v9 possibleValues];
        v53 = WFContentPropertyGetPossibleValuesSynchronouslyWithSemaphore();

        v54 = [v5 enumeration];
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __WFLNPropertyQueryForRowTemplateValue_block_invoke_177;
        v105[3] = &unk_1E837AD48;
        v55 = v54;
        v106 = v55;
        v49 = [v53 if_firstObjectPassingTest:v105];
        if (!v49)
        {
          v56 = objc_alloc(MEMORY[0x1E69ACA90]);
          v57 = [v5 enumeration];
          v58 = [MEMORY[0x1E69AC938] stringValueType];
          v49 = [v56 initWithValue:v57 valueType:v58];
        }
      }

      else
      {
        v49 = 0;
      }
    }

    v59 = [v5 enumeration];
    if (v59)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = v59;
      }

      else
      {
        v60 = 0;
      }
    }

    else
    {
      v60 = 0;
    }

    v61 = v60;

    if (!v49 && v61)
    {
      v49 = WFNotesFolderLinkValueFromIntentsValue(v61);
    }

    if ([v9 hasPossibleValues])
    {
      v62 = v116[5];
      if (v62)
      {
        if (v49)
        {
          v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v112[3]];
          v25 = [v62 wf_propertyQueryWithValue:v49 contentOperator:v6 parameterIndex:v63];

          goto LABEL_89;
        }
      }
    }
  }

  v64 = [v9 hasPossibleValues];
  if (v101 == 2)
  {
    v65 = v64;
  }

  else
  {
    v65 = 1;
  }

  if (v65)
  {
    goto LABEL_74;
  }

  v66 = [v5 string];
  if ([v9 hasPropertyClassSubclassingClass:objc_opt_class()])
  {
    v67 = MEMORY[0x1E6996F00];
    v68 = [v5 phone];
    v69 = [v67 phoneNumberWithPhoneNumberString:v68];
    v70 = [v69 normalizedPhoneNumber];
  }

  else
  {
    if (![v9 hasPropertyClassSubclassingClass:objc_opt_class()])
    {
      v70 = v66;
      goto LABEL_71;
    }

    [v5 email];
    v70 = v68 = v66;
  }

LABEL_71:
  if ([v70 length])
  {
    v71 = objc_alloc(MEMORY[0x1E69ACA90]);
    v72 = [v5 string];
    v73 = [MEMORY[0x1E69AC938] stringValueType];
    v74 = [v71 initWithValue:v72 valueType:v73];

    v20 = v74;
  }

LABEL_74:
  v75 = [v5 comparisonOperator];
  if ((v101 - 5) < 3 || v101 == 3 || v101 == 4 && (v75 & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)
  {
    v76 = objc_alloc(MEMORY[0x1E69ACA90]);
    v77 = [v5 number];
    v78 = [MEMORY[0x1E69AC938] int64ValueType];
    v79 = [v76 initWithValue:v77 valueType:v78];

    v20 = v79;
  }

  v80 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v81 = [v9 hasPropertyClassSubclassingClass:objc_opt_class()];

  if (v81)
  {
    v82 = objc_alloc(MEMORY[0x1E69ACA90]);
    v83 = [v5 BOOLean];
    v84 = [MEMORY[0x1E69AC938] BOOLValueType];
    v85 = [v82 initWithValue:v83 valueType:v84];

    v20 = v85;
  }

  if ([v9 hasPropertyClassSubclassingClass:objc_opt_class()])
  {
    v86 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v122 = "WFLNPropertyQueryForRowTemplateValue";
      _os_log_impl(&dword_1CA256000, v86, OS_LOG_TYPE_ERROR, "%s Time intervals are not curently supported for link find/filter actions", buf, 0xCu);
    }
  }

  if ([v9 hasPropertyClassSubclassingClass:objc_opt_class()])
  {
    v87 = objc_alloc(MEMORY[0x1E696AD28]);
    v88 = [v5 number];
    [v88 doubleValue];
    v90 = v89;
    v91 = [v5 measurementUnit];
    v92 = [v87 initWithDoubleValue:v91 unit:v90];

    v93 = objc_alloc(MEMORY[0x1E69ACA90]);
    v94 = [v5 measurementUnit];
    v95 = WFLNMeasurementValueTypeOfUnit(v94);
    v96 = [v93 initWithValue:v92 valueType:v95];

    v20 = v96;
  }

  if (v20)
  {
    v97 = v116[5];
    v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v112[3]];
    v25 = [v97 wf_propertyQueryWithValue:v20 contentOperator:v6 parameterIndex:v98];

    goto LABEL_89;
  }

LABEL_90:
  v25 = 0;
LABEL_91:

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);

  v99 = *MEMORY[0x1E69E9840];

  return v25;
}

void sub_1CA863898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47063(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFLNPropertyQueryForRowTemplateValue_block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v8 = [v14 propertyIdentifier];
  v9 = a1[4];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {

    goto LABEL_7;
  }

  if (!v10 || !v11)
  {

    goto LABEL_9;
  }

  v13 = [v10 isEqualToString:v11];

  if (v13)
  {
LABEL_7:
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    *(*(a1[6] + 8) + 24) = a3;
    *a4 = 1;
  }

LABEL_9:
}

uint64_t __WFLNPropertyQueryForRowTemplateValue_block_invoke_177(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 displayRepresentation];
  v4 = [v3 title];
  v5 = [v4 wf_localizedString];
  v6 = [v2 isEqualToString:v5];

  return v6;
}

id WFQueryParameterMetadataByPropertyIdentifier(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v1 parameters];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __WFQueryParameterMetadataByPropertyIdentifier_block_invoke;
  v6[3] = &unk_1E837AD70;
  v4 = v2;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

void __WFQueryParameterMetadataByPropertyIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 propertyIdentifier];
  [v2 setObject:v3 forKey:v4];
}

void WFDestroyDB()
{
  v54[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = 0;
  WFTerminateDaemon(&v43, &v42);
  v1 = v0;
  v35 = v43;
  v2 = v42;
  v3 = v2;
  if ((v1 & 1) == 0 && v2)
  {
    v4 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v47 = "WFDestroyDB";
      v48 = 2114;
      v49 = v3;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s Failed to terminate siriactionsd before resetting the database: %{public}@", buf, 0x16u);
    }
  }

  v5 = WFShortcutsPersistentStoreURL();
  v6 = objc_alloc(MEMORY[0x1E695D6C0]);
  v7 = MEMORY[0x1E695D638];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v54[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
  v10 = [v7 mergedModelFromBundles:v9];
  v11 = [v6 initWithManagedObjectModel:v10];

  v12 = *MEMORY[0x1E695D4A8];
  v52 = *MEMORY[0x1E695D400];
  v53 = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v41 = v3;
  v33 = v11;
  LOBYTE(v11) = [v11 destroyPersistentStoreAtURL:v5 withType:v12 options:v13 error:&v41];
  v14 = v41;

  if ((v11 & 1) == 0)
  {
    v15 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v47 = "WFDestroyDB";
      v48 = 2114;
      v49 = v5;
      v50 = 2114;
      v51 = v14;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_FAULT, "%s Failed to destroy persistent store at URL: %{public}@. %{public}@", buf, 0x20u);
    }
  }

  v45[0] = v5;
  v16 = [v5 URLByDeletingPathExtension];
  v17 = [v16 URLByAppendingPathExtension:@"sqlite-shm"];
  v45[1] = v17;
  v34 = v5;
  v18 = [v5 URLByDeletingPathExtension];
  v19 = [v18 URLByAppendingPathExtension:@"sqlite-wal"];
  v45[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        v26 = v14;
        if (*v38 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v37 + 1) + 8 * i);
        v28 = [MEMORY[0x1E696AC08] defaultManager];
        v36 = v14;
        v29 = [v28 removeItemAtURL:v27 error:&v36];
        v14 = v36;

        if ((v29 & 1) == 0 && ([v14 vc_isFileNotFound] & 1) == 0)
        {
          v30 = getWFDatabaseLogObject();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315650;
            v47 = "WFDestroyDB";
            v48 = 2114;
            v49 = v27;
            v50 = 2114;
            v51 = v14;
            _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s Failed to delete database file at %{public}@: %{public}@", buf, 0x20u);
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v23);
  }

  [v35 invalidate];
  v31 = +[WFDatabase defaultDatabase];
  [v31 invalidateAllObjectsAndNotify];

  v32 = *MEMORY[0x1E69E9840];
}

void WFPresentInitializationErrorIfNecessary(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v4 = objc_opt_new();
    v5 = WFLocalizedString(@"Corrupt Database");
    [v4 setTitle:v5];

    v6 = WFLocalizedString(@"The Shortcuts database cannot be read because it is corrupt. You can fix this by resetting your shortcuts. Your shortcuts will be lost, but if you use iCloud Sync they will be restored.");
    [v4 setMessage:v6];

    v7 = MEMORY[0x1E6996C78];
    v8 = WFLocalizedString(@"Reset Shortcuts");
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __WFPresentInitializationErrorIfNecessary_block_invoke;
    v14[3] = &unk_1E837FA70;
    v9 = v3;
    v15 = v9;
    v10 = [v7 buttonWithTitle:v8 style:2 handler:v14];
    [v4 addButton:v10];

    v11 = MEMORY[0x1E6996C78];
    v12 = WFLocalizedString(@"Exit");
    v13 = [v11 buttonWithTitle:v12 style:0 handler:&__block_literal_global_47180];
    [v4 addButton:v13];

    [v9 presentAlert:v4];
  }
}

void __WFPresentInitializationErrorIfNecessary_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WFDestroyDB();
  v7 = objc_opt_new();
  v2 = WFLocalizedString(@"Shortcuts Reset");
  [v7 setTitle:v2];

  v3 = WFLocalizedString(@"Your shortcuts have been reset. Re-open the Shortcuts app to continue.");
  [v7 setMessage:v3];

  v4 = MEMORY[0x1E6996C78];
  v5 = WFLocalizedString(@"Exit");
  v6 = [v4 buttonWithTitle:v5 style:0 handler:&__block_literal_global_292];
  [v7 addButton:v6];

  [v1 presentAlert:v7];
}

void WFSetIntentOnClientBoundCommand(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69C7878];
  v4 = a2;
  v5 = a1;
  v10 = objc_alloc_init(v3);
  v6 = [v4 _intentInstanceDescription];
  v7 = [v6 type];
  [v10 setTypeName:v7];

  v8 = [v4 backingStore];

  v9 = [v8 data];

  [v10 setData:v9];
  [v5 setIntent:v10];
}

id WFEnforceClass_47426(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Querying CloudKit: %@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

id getWFCloudKitWSLogObject()
{
  if (getWFCloudKitWSLogObject_onceToken != -1)
  {
    dispatch_once(&getWFCloudKitWSLogObject_onceToken, &__block_literal_global_47479);
  }

  v1 = getWFCloudKitWSLogObject_log;

  return v1;
}

void __getWFCloudKitWSLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "CloudKitWS");
  v1 = getWFCloudKitWSLogObject_log;
  getWFCloudKitWSLogObject_log = v0;
}

id WFSupportedContentOperatorsForContentType(uint64_t a1, char a2, char a3, char a4)
{
  if (!a1)
  {
    v9 = &unk_1F4A9B6B0;
    goto LABEL_19;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&unk_1F4A9A930, 0}];
  v9 = v8;
  if (a1 == 1)
  {
    goto LABEL_19;
  }

  [v8 addObject:&unk_1F4A9A948];
  [v9 addObject:&unk_1F4A9A900];
  [v9 addObject:&unk_1F4A9A918];
  if (a2)
  {
    goto LABEL_19;
  }

  if (a1 > 4)
  {
    if ((a1 - 5) >= 3)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  switch(a1)
  {
    case 2:
      [v9 addObject:&unk_1F4A9A960];
      [v9 addObject:&unk_1F4A9A978];
      [v9 addObject:&unk_1F4A9A990];
      v10 = &unk_1F4A9A9A8;
      goto LABEL_18;
    case 3:
LABEL_14:
      [v9 addObject:&unk_1F4A9A9C0];
      if (a3)
      {
        [v9 addObject:&unk_1F4A9A9F0];
        [v9 removeObject:&unk_1F4A9A930];
        [v9 removeObject:&unk_1F4A9A948];
      }

      else
      {
        [v9 addObject:&unk_1F4A9A9D8];
        [v9 addObject:&unk_1F4A9A9F0];
        [v9 addObject:&unk_1F4A9AA08];
      }

      v10 = &unk_1F4A9AA20;
      goto LABEL_18;
    case 4:
      [v9 addObject:&unk_1F4A9A9C0];
      [v9 addObject:&unk_1F4A9A9F0];
      [v9 addObject:&unk_1F4A9AA38];
      [v9 addObject:&unk_1F4A9AA20];
      if ((a4 & 2) != 0)
      {
        [v9 addObject:&unk_1F4A9AA50];
      }

      if (a4)
      {
        v10 = &unk_1F4A9AA68;
LABEL_18:
        [v9 addObject:v10];
      }

      break;
  }

LABEL_19:

  return v9;
}

void sub_1CA869F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNPostalAddressFormatterClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_48119)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __ContactsLibraryCore_block_invoke_48120;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837AF58;
    v9 = 0;
    ContactsLibraryCore_frameworkLibrary_48119 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_48119)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLinkActionPlacemarkParameterDefinition.m" lineNumber:25 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CNPostalAddressFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNPostalAddressFormatterClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFLinkActionPlacemarkParameterDefinition.m" lineNumber:26 description:{@"Unable to find class %s", "CNPostalAddressFormatter"}];

LABEL_10:
    __break(1u);
  }

  getCNPostalAddressFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_48120(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_48119 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA86A744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLPlacemarkClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_48141)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke_48142;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837AF40;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary_48141 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_48141)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLinkActionPlacemarkParameterDefinition.m" lineNumber:28 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLPlacemark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFLinkActionPlacemarkParameterDefinition.m" lineNumber:29 description:{@"Unable to find class %s", "CLPlacemark"}];

LABEL_10:
    __break(1u);
  }

  getCLPlacemarkClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_48142(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_48141 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA86B390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__48216(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFContentOperatorToLNComparisonPropertyMapping()
{
  v4[10] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F4A9AA80;
  v3[1] = &unk_1F4A9AAB0;
  v4[0] = &unk_1F4A9AA98;
  v4[1] = &unk_1F4A9AAC8;
  v3[2] = &unk_1F4A9AAE0;
  v3[3] = &unk_1F4A9AB10;
  v4[2] = &unk_1F4A9AAF8;
  v4[3] = &unk_1F4A9AB28;
  v3[4] = &unk_1F4A9AB40;
  v3[5] = &unk_1F4A9AB70;
  v4[4] = &unk_1F4A9AB58;
  v4[5] = &unk_1F4A9AB88;
  v3[6] = &unk_1F4A9ABA0;
  v3[7] = &unk_1F4A9ABD0;
  v4[6] = &unk_1F4A9ABB8;
  v4[7] = &unk_1F4A9ABE8;
  v3[8] = &unk_1F4A9AC00;
  v3[9] = &unk_1F4A9AC30;
  v4[8] = &unk_1F4A9AC18;
  v4[9] = &unk_1F4A9AC48;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

id WFMakeHomeError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v9 = *MEMORY[0x1E696AA08];
    v10[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFHomeWorkflowControllerErrorDomain" code:a1 userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t WFDefaultComparatorBlock_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v6 = [v4 compare:v5];
  }

  else if (v4 > v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 < v5;
  }

  return v6;
}

id WFGetClosestCommonElementForObject(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<NSObject>  _Nullable WFGetClosestCommonElementForObject(id<NSObject>  _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, WFThreeWayMergingSearchDirection)"}];
    [v20 handleFailureInFunction:v21 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v10)
    {
LABEL_3:
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_25:
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<NSObject>  _Nullable WFGetClosestCommonElementForObject(id<NSObject>  _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, WFThreeWayMergingSearchDirection)"}];
      [v24 handleFailureInFunction:v25 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:135 description:{@"Invalid parameter not satisfying: %@", @"firstOrderedSet"}];

      if (v12)
      {
        goto LABEL_5;
      }

LABEL_26:
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<NSObject>  _Nullable WFGetClosestCommonElementForObject(id<NSObject>  _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, WFThreeWayMergingSearchDirection)"}];
      [v26 handleFailureInFunction:v27 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"secondOrderedSet"}];

      goto LABEL_5;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<NSObject>  _Nullable WFGetClosestCommonElementForObject(id<NSObject>  _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, WFThreeWayMergingSearchDirection)"}];
  [v22 handleFailureInFunction:v23 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"baseOrderedSet"}];

  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_5:
  v13 = [v11 indexOfObject:v9];
  v14 = [v12 indexOfObject:v9];
  v15 = 0;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  v16 = v14;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (!a5)
  {
    while (++v13 < [v11 count])
    {
      v18 = objc_autoreleasePoolPush();
      v15 = [v11 objectAtIndexedSubscript:v13];
      if ((WFIsDeleted(v15, v10, v11, v12) & 1) == 0 && [v12 indexOfObject:v15] > v16)
      {
        goto LABEL_22;
      }

      objc_autoreleasePoolPop(v18);
    }

    goto LABEL_18;
  }

  if (v13 < 1)
  {
LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v17 = v13 + 1;
  while (1)
  {
    v18 = objc_autoreleasePoolPush();
    v15 = [v11 objectAtIndexedSubscript:v17 - 2];
    if ((WFIsDeleted(v15, v10, v11, v12) & 1) == 0 && [v12 indexOfObject:v15] < v16)
    {
      break;
    }

    objc_autoreleasePoolPop(v18);
    if (--v17 < 2)
    {
      goto LABEL_18;
    }
  }

LABEL_22:
  objc_autoreleasePoolPop(v18);
LABEL_19:

  return v15;
}

uint64_t WFIsDeleted(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFIsDeleted(id<NSObject>  _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"object"}];

    if (v8)
    {
LABEL_3:
      if (v9)
      {
        goto LABEL_4;
      }

LABEL_13:
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFIsDeleted(id<NSObject>  _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
      [v17 handleFailureInFunction:v18 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"firstOrderedSet"}];

      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFIsDeleted(id<NSObject>  _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
  [v15 handleFailureInFunction:v16 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"baseOrderedSet"}];

  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_14:
  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFIsDeleted(id<NSObject>  _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong, NSOrderedSet * _Nonnull __strong)"}];
  [v19 handleFailureInFunction:v20 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"secondOrderedSet"}];

LABEL_5:
  if ([v8 containsObject:v7])
  {
    if ([v9 containsObject:v7])
    {
      v11 = [v10 containsObject:v7] ^ 1;
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

BOOL WFOrderedSetContainsPath(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFOrderedSetContainsPath(NSOrderedSet * _Nonnull __strong, id<NSObject>  _Nonnull __strong, id<NSObject>  _Nonnull __strong, BOOL (^ _Nonnull __strong)(id<NSObject>  _Nonnull __strong))"}];
    [v17 handleFailureInFunction:v18 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"orderedSet"}];

    if (v8)
    {
LABEL_3:
      if (v9)
      {
        goto LABEL_4;
      }

LABEL_18:
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFOrderedSetContainsPath(NSOrderedSet * _Nonnull __strong, id<NSObject>  _Nonnull __strong, id<NSObject>  _Nonnull __strong, BOOL (^ _Nonnull __strong)(id<NSObject>  _Nonnull __strong))"}];
      [v21 handleFailureInFunction:v22 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:177 description:{@"Invalid parameter not satisfying: %@", @"end"}];

      if (v10)
      {
        goto LABEL_5;
      }

LABEL_19:
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFOrderedSetContainsPath(NSOrderedSet * _Nonnull __strong, id<NSObject>  _Nonnull __strong, id<NSObject>  _Nonnull __strong, BOOL (^ _Nonnull __strong)(id<NSObject>  _Nonnull __strong))"}];
      [v23 handleFailureInFunction:v24 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"shouldConsiderObjectBlock"}];

      goto LABEL_5;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL WFOrderedSetContainsPath(NSOrderedSet * _Nonnull __strong, id<NSObject>  _Nonnull __strong, id<NSObject>  _Nonnull __strong, BOOL (^ _Nonnull __strong)(id<NSObject>  _Nonnull __strong))"}];
  [v19 handleFailureInFunction:v20 file:@"NSOrderedSet+WFThreeWayMerging.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"start"}];

  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (v10[2](v10, v8) && v10[2](v10, v9) && (v11 = [v7 indexOfObject:v8], v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v14 = v11;
    v15 = [v7 indexOfObject:v9];
    v12 = v15 != 0x7FFFFFFFFFFFFFFFLL && v15 > v14;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id WFVariableDictionaryWithAggrandizements(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v6 = @"Aggrandizements";
    v2 = [v1 if_map:&__block_literal_global_49487];
    v7[0] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __Block_byref_object_copy__49498(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFVariableClassesByType()
{
  v4[8] = *MEMORY[0x1E69E9840];
  v3[0] = @"Variable";
  v4[0] = objc_opt_class();
  v3[1] = @"Clipboard";
  v4[1] = objc_opt_class();
  v3[2] = @"CurrentApp";
  v4[2] = objc_opt_class();
  v3[3] = @"CurrentDate";
  v4[3] = objc_opt_class();
  v3[4] = @"DeviceDetails";
  v4[4] = objc_opt_class();
  v3[5] = @"ExtensionInput";
  v4[5] = objc_opt_class();
  v3[6] = @"ActionOutput";
  v4[6] = objc_opt_class();
  v3[7] = @"Ask";
  v4[7] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:8];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

Class initUIPasteboard_49611()
{
  if (UIKitLibrary_sOnce_49612 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_49612, &__block_literal_global_49613);
  }

  result = objc_getClass("UIPasteboard");
  classUIPasteboard_49615 = result;
  getUIPasteboardClass_49609 = UIPasteboardFunction_49617;
  return result;
}

void *__UIKitLibrary_block_invoke_49620()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_49622 = result;
  return result;
}

id initUIApplicationWillEnterForegroundNotification()
{
  if (UIKitLibrary_sOnce_49612 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_49612, &__block_literal_global_49613);
  }

  v0 = dlsym(UIKitLibrary_sLib_49622, "UIApplicationWillEnterForegroundNotification");
  if (!v0)
  {
    __assert_rtn("initUIApplicationWillEnterForegroundNotification", "ICPostToInstagramAction.m", 21, "constant");
  }

  objc_storeStrong(&constantUIApplicationWillEnterForegroundNotification, *v0);
  getUIApplicationWillEnterForegroundNotification = UIApplicationWillEnterForegroundNotificationFunction;
  v1 = constantUIApplicationWillEnterForegroundNotification;

  return v1;
}

void sub_1CA8759D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getDNDAppActionClass_block_invoke(uint64_t a1)
{
  DoNotDisturbLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DNDAppAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDNDAppActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDNDAppActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationLinkAction.m" lineNumber:28 description:{@"Unable to find class %s", "DNDAppAction"}];

    __break(1u);
  }
}

void *DoNotDisturbLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!DoNotDisturbLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __DoNotDisturbLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E837B470;
    v7 = 0;
    DoNotDisturbLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DoNotDisturbLibraryCore_frameworkLibrary;
  if (!DoNotDisturbLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DoNotDisturbLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFFocusConfigurationLinkAction.m" lineNumber:25 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __DoNotDisturbLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DoNotDisturbLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getDNDModeConfigurationServiceClass_block_invoke(uint64_t a1)
{
  DoNotDisturbLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DNDModeConfigurationService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDNDModeConfigurationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDNDModeConfigurationServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationLinkAction.m" lineNumber:26 description:{@"Unable to find class %s", "DNDModeConfigurationService"}];

    __break(1u);
  }
}

void __getDNDApplicationIdentifierClass_block_invoke(uint64_t a1)
{
  DoNotDisturbLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DNDApplicationIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDNDApplicationIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDNDApplicationIdentifierClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFFocusConfigurationLinkAction.m" lineNumber:27 description:{@"Unable to find class %s", "DNDApplicationIdentifier"}];

    __break(1u);
  }
}

void sub_1CA8764BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDNDDefaultModeIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DoNotDisturbLibrary();
  result = dlsym(v2, "DNDDefaultModeIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDNDDefaultModeIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1CA877CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49953(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA877ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t coderRequiresSecureCoding(void *a1)
{
  v1 = a1;
  if ((objc_opt_respondsToSelector() & 1) != 0 && (v2 = [v1 methodForSelector:sel_requiresSecureCoding]) != 0)
  {
    v3 = v2(v1, sel_requiresSecureCoding);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void verifyAllowedClassesByPropertyKey(void *a1)
{
  v7 = [a1 allowedSecureCodingClassesByPropertyKey];
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v3 = [v7 allKeys];
  v4 = [v2 initWithArray:v3];

  v5 = [a1 encodingBehaviorsByPropertyKey];
  v6 = [v5 keysOfEntriesPassingTest:&__block_literal_global_80];

  [v4 minusSet:v6];
  if ([v4 count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Cannot encode %@ securely, because keys are missing from +allowedSecureCodingClassesByPropertyKey: %@", a1, v4}];
  }
}

void sub_1CA87A72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    objc_opt_class();
    NSLog(&cfstr_CaughtExceptio_0.isa);
    objc_exception_throw(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WFPBAppSessionCompletedEventReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
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

LABEL_37:
        *(a1 + 8) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
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
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA87E1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t (*initSCPreferencesGetValue(uint64_t a1, uint64_t a2))()
{
  if (SystemConfigurationLibrary_sOnce != -1)
  {
    dispatch_once(&SystemConfigurationLibrary_sOnce, &__block_literal_global_51117);
  }

  result = dlsym(SystemConfigurationLibrary_sLib, "SCPreferencesGetValue");
  softLinkSCPreferencesGetValue = result;
  if (result)
  {

    return (result)(a1, a2);
  }

  return result;
}

void *__SystemConfigurationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/SystemConfiguration.framework/SystemConfiguration", 2);
  SystemConfigurationLibrary_sLib = result;
  return result;
}

uint64_t (*initSCPreferencesCreate(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  if (SystemConfigurationLibrary_sOnce != -1)
  {
    dispatch_once(&SystemConfigurationLibrary_sOnce, &__block_literal_global_51117);
  }

  result = dlsym(SystemConfigurationLibrary_sLib, "SCPreferencesCreate");
  softLinkSCPreferencesCreate = result;
  if (result)
  {

    return (result)(a1, a2, a3);
  }

  return result;
}

id WFNoInputBehaviorSerializedRepresentation(void *a1, void *a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id<WFPropertyListObject>> * _Nonnull WFNoInputBehaviorSerializedRepresentation(NSString * _Nonnull __strong, NSDictionary<NSString *, id<WFPropertyListObject>> * _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"WFWorkflowNoInputBehavior.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"behaviorName"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDictionary<NSString *, id<WFPropertyListObject>> * _Nonnull WFNoInputBehaviorSerializedRepresentation(NSString * _Nonnull __strong, NSDictionary<NSString *, id<WFPropertyListObject>> * _Nonnull __strong)"}];
  [v11 handleFailureInFunction:v12 file:@"WFWorkflowNoInputBehavior.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"parameters"}];

LABEL_3:
  v13[0] = @"Name";
  v13[1] = @"Parameters";
  v14[0] = v3;
  v14[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id WFNoInputBehaviorParametersIfBehavior(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"Name"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![v5 isEqualToString:v3])
      {
        v8 = 0;
        goto LABEL_14;
      }

      v6 = [v4 objectForKeyedSubscript:@"Parameters"];
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
      v6 = v5;
      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_14:

  return v8;
}

uint64_t WFSerializedNoInputBehaviorResolvesInput(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = [a1 objectForKeyedSubscript:@"Name"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = +[WFWorkflowNoInputBehaviorShowError behaviorName];
    v3 = [v1 isEqualToString:v2] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFPassTypeToLocalizedDescriptionWithTrigger(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 selectedPassUniqueIDs];
  v5 = [v4 count];

  if (v5 != 1)
  {
    v16 = MEMORY[0x1E696AEC0];
    if (a2)
    {
      v17 = @"Any of %1$lu Wallet passes or payment cards tapped";
    }

    else
    {
      v17 = @"When I tap any of %1$lu Wallet passes or payment cards";
    }

    v6 = WFLocalizedString(v17);
    v7 = [v3 selectedPassUniqueIDs];
    v18 = [v16 localizedStringWithFormat:v6, objc_msgSend(v7, "count")];
    goto LABEL_41;
  }

  v6 = [v3 selectedPassUniqueIDs];
  v7 = [v6 firstObject];
  v8 = [MEMORY[0x1E69B8A58] sharedInstance];
  v9 = [v8 passWithUniqueID:v7];

  if (!v9)
  {
    if (a2)
    {
      v19 = @"Wallet pass or payment card tapped";
    }

    else
    {
      v19 = @"When I tap a Wallet pass or payment card";
    }

    v18 = WFLocalizedString(v19);
    goto LABEL_40;
  }

  v10 = [v9 secureElementPass];
  v11 = v10;
  if (!v10)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = @"When I tap my %@ pass";
    v15 = @"%@ pass tapped";
    goto LABEL_36;
  }

  if ([v10 isAccessPass])
  {
    v12 = [v11 accessType];
    v13 = MEMORY[0x1E696AEC0];
    if (v12 <= 2)
    {
      if (v12 != 1)
      {
        if (v12 == 2)
        {
          v14 = @"When I tap my %@ badge";
          v15 = @"%@ badge tapped";
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      v14 = @"When I tap my %@ room key";
      v15 = @"%@ room key tapped";
    }

    else
    {
      if (v12 == 3)
      {
LABEL_33:
        v14 = @"When I tap my %@ key";
        v15 = @"%@ key tapped";
        goto LABEL_36;
      }

      if (v12 != 4)
      {
        if (v12 == 5)
        {
          v14 = @"When I tap my %@ resident key";
          v15 = @"%@ resident key tapped";
          goto LABEL_36;
        }

        goto LABEL_33;
      }

      v14 = @"When I use my %@ car key";
      v15 = @"%@ car key tapped";
    }
  }

  else
  {
    if ([v11 isIdentityPass])
    {
      v20 = [v11 identityType];
      v21 = @"When I tap my %@ State ID";
      v13 = MEMORY[0x1E696AEC0];
      v22 = @"When I tap my %@ card";
      if (a2)
      {
        v21 = @"%@ State ID tapped";
        v22 = @"%@ card tapped";
      }

      v23 = @"When I tap my %@ Driver’s License";
      if (a2)
      {
        v23 = @"%@ Driver’s License tapped";
      }

      if (v20 == 1)
      {
        v22 = v23;
      }

      if (v20 == 2)
      {
        v24 = v21;
      }

      else
      {
        v24 = v22;
      }

      goto LABEL_39;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = @"When I tap my %@ card";
    v15 = @"%@ card tapped";
  }

LABEL_36:
  if (a2)
  {
    v24 = v15;
  }

  else
  {
    v24 = v14;
  }

LABEL_39:
  v25 = WFLocalizedString(v24);
  v26 = [v9 localizedDescription];
  v18 = [v13 stringWithFormat:v25, v26];

LABEL_40:
LABEL_41:

  return v18;
}

id WFAppProtectionLocalizedAuthMechanismString()
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v0 = getAPFeatureSemioticsManagerClass_softClass;
  v11 = getAPFeatureSemioticsManagerClass_softClass;
  if (!getAPFeatureSemioticsManagerClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getAPFeatureSemioticsManagerClass_block_invoke;
    v7[3] = &unk_1E837FAC0;
    v7[4] = &v8;
    __getAPFeatureSemioticsManagerClass_block_invoke(v7);
    v0 = v9[3];
  }

  v1 = v0;
  _Block_object_dispose(&v8, 8);
  v2 = [v0 sharedManager];
  v3 = [v2 localizedDescriptionForCurrentBestAuthenticationMechanism];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = WFLocalizedString(@"authentication");
  }

  v5 = v4;

  return v5;
}

void sub_1CA8824AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAPFeatureSemioticsManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!AppProtectionUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __AppProtectionUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837B820;
    v9 = 0;
    AppProtectionUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppProtectionUILibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppProtectionUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFAppProtectionStringUtils.m" lineNumber:16 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("APFeatureSemioticsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPFeatureSemioticsManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFAppProtectionStringUtils.m" lineNumber:17 description:{@"Unable to find class %s", "APFeatureSemioticsManager"}];

LABEL_10:
    __break(1u);
  }

  getAPFeatureSemioticsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppProtectionUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppProtectionUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFWorkflowUserNotificationCenter()
{
  if (WFWorkflowUserNotificationCenter_onceToken != -1)
  {
    dispatch_once(&WFWorkflowUserNotificationCenter_onceToken, &__block_literal_global_51757);
  }

  v1 = WFWorkflowUserNotificationCenter_notificationCenter;

  return v1;
}

void __WFWorkflowUserNotificationCenter_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E6983308]);
  v1 = [v0 initWithBundleIdentifier:*MEMORY[0x1E69E0FB0]];
  v2 = WFWorkflowUserNotificationCenter_notificationCenter;
  WFWorkflowUserNotificationCenter_notificationCenter = v1;
}

void sub_1CA882E38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id WFNotesFolderLinkValueFromIntentsValue(void *a1)
{
  v1 = a1;
  v2 = [v1 spokenPhrase];
  v3 = [v1 vocabularyIdentifier];

  v4 = [objc_alloc(MEMORY[0x1E69AC7D8]) initWithValue:v3 scope:2 typeName:@"FolderEntity"];
  v5 = [objc_alloc(MEMORY[0x1E69AC7D0]) initWithIdentifier:v4];
  v6 = [objc_alloc(MEMORY[0x1E69AC818]) initWithTypeName:@"FolderEntity"];
  v7 = objc_alloc(MEMORY[0x1E69AC7A0]);
  v8 = [objc_alloc(MEMORY[0x1E69AC9E0]) initWithLocalizedKey:v2 bundleIdentifier:0 bundleURL:0 table:0];
  v9 = [v7 initWithTitle:v8 subtitle:0 image:0];

  v10 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:v5 valueType:v6 displayRepresentation:v9];

  return v10;
}

id WFNotesFolderIntentsValueFromLinkValue(void *a1)
{
  v1 = a1;
  v2 = [v1 displayRepresentation];
  v3 = [v2 title];
  v4 = [v3 wf_localizedString];

  v5 = [v1 value];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 identifier];

  v9 = [v8 value];

  v10 = 0;
  if (v4 && v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696EA50]) initWithVocabularyIdentifier:v9 spokenPhrase:v4 pronunciationHint:0];
  }

  return v10;
}

void sub_1CA88358C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFLocalizedRepeatActionVariableName(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 componentsSeparatedByString:@" "];
  if ([v8 count] == 2)
  {
    v9 = v6;
  }

  else
  {
    if ([v8 count] == 3)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = [v8 lastObject];
      v12 = [v10 localizedStringWithFormat:v7, objc_msgSend(v11, "integerValue")];

      goto LABEL_7;
    }

    v9 = v5;
  }

  v12 = v9;
LABEL_7:

  return v12;
}

void sub_1CA884D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WFPBGallerySessionBrowseCategoryEventReadFrom(uint64_t a1, void *a2)
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
        v14 = off_1E837B918[v13];
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

void WFActionParameterSummaryValueCommonInit(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = a1;
  v3 = a2;
  v4 = +[WFActionParameterSummaryValue parenthesisRegularExpression];
  v29 = v3;
  v5 = [v3 componentsSeparatedByString:{@", "}];
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = [v4 firstMatchInString:v13 options:0 range:{0, objc_msgSend(v13, "length")}];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 rangeAtIndex:0];
          v18 = [v13 stringByReplacingCharactersInRange:v16 withString:{v17, &stru_1F4A1C408}];
          v19 = [v15 rangeAtIndex:1];
          v21 = [v13 substringWithRange:{v19, v20}];
          [v6 addObject:v18];
          [v7 setObject:v21 forKey:v18];
        }

        else if ([v13 length])
        {
          [v6 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v10);
  }

  v22 = [v6 copy];
  v23 = v30[1];
  v30[1] = v22;

  v24 = [v7 copy];
  v25 = v30[2];
  v30[2] = v24;

  v26 = [v29 copy];
  v27 = v30[3];
  v30[3] = v26;

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t WFGetVariableInputContentForPreviewing(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = [v5 variableString];
  if (![v8 representsSingleContentVariable] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v9 = [v5 variableString];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __WFGetVariableInputContentForPreviewing_block_invoke;
  v12[3] = &unk_1E837DC20;
  v13 = v7;
  [v9 processIntoContentItemsWithContext:v6 completionHandler:v12];

  v10 = 1;
LABEL_7:

  return v10;
}

void WFShowResult(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if ([MEMORY[0x1E695E000] universalPreviewsEnabled])
  {
    if (![v8 isRunningWithSiriUI])
    {
      WFShowPreview(0, v7, v8, v9);
      goto LABEL_9;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __WFShowResult_block_invoke;
    v27[3] = &unk_1E837F020;
    v29 = v9;
    v28 = v8;
    [v7 getStringRepresentations:v27];

    v10 = v29;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector() & 1) == 0 || ([v8 isRunningWithSiriUI])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __WFShowResult_block_invoke_2_192;
    v16[3] = &unk_1E837F020;
    v18 = v9;
    v17 = v8;
    [v7 getStringRepresentations:v16];

    v10 = v18;
LABEL_7:

    goto LABEL_9;
  }

  if (!a3)
  {
    v15 = [v7 items];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __WFShowResult_block_invoke_190;
    v19[3] = &unk_1E837F020;
    v20 = v8;
    v21 = v9;
    [v15 if_mapAsynchronously:&__block_literal_global_186_52613 completionHandler:v19];

    v10 = v20;
    goto LABEL_7;
  }

  v26 = 0;
  v11 = [v7 collectionByFilteringItemsWithBlock:&__block_literal_global_52612 excludedItems:&v26];
  v12 = v26;
  v13 = [v12 items];
  v14 = [v13 count];

  if (v14)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __WFShowResult_block_invoke_4;
    v22[3] = &unk_1E837E9D0;
    v25 = v9;
    v23 = v11;
    v24 = v8;
    [v7 getStringRepresentations:v22];
  }

  else
  {
    WFShowPreview(0, v11, v8, v9);
  }

LABEL_9:
}

void __WFShowResult_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
    v7 = [v5 componentsJoinedByString:@"\n"];
    [v6 setMessage:v7];

    v8 = MEMORY[0x1E6996C78];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __WFShowResult_block_invoke_2;
    v14 = &unk_1E837E1F8;
    v9 = *(a1 + 40);
    v15 = 0;
    v16 = v9;
    v10 = [v8 okButtonWithHandler:&v11];
    [v6 addButton:{v10, v11, v12, v13, v14}];

    [*(a1 + 32) presentAlert:v6];
  }
}

void WFShowPreview(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_new();
  v12 = v11;
  if (v7)
  {
    [v11 addObject:v7];
  }

  v13 = [v8 items];
  [v12 addItems:v13];

  v14 = [v12 items];
  v15 = [v14 count];

  if (v15)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __WFShowPreview_block_invoke;
    v16[3] = &unk_1E837BA78;
    v17 = v10;
    [v9 showPreviewForContentCollection:v12 completionHandler:v16];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

void __WFShowResult_block_invoke_4(void **a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[6];
    v5 = *(a1[6] + 2);

    v5();
  }

  else
  {
    v8 = [a2 componentsJoinedByString:@"\n"];
    v6 = [MEMORY[0x1E69E0D80] parseAnnotatedString:v8];
    v7 = [v6 displayString];

    WFShowPreview(v7, a1[4], a1[5], a1[6]);
  }
}

void __WFShowResult_block_invoke_190(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E6996D40] collectionWithItems:a2];
  WFShowPreview(0, v3, *(a1 + 32), *(a1 + 40));
}

void __WFShowResult_block_invoke_2_192(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x1E6996C70] alertWithPreferredStyle:0];
    v7 = [v5 componentsJoinedByString:@"\n"];
    [v6 setMessage:v7];

    v8 = MEMORY[0x1E6996C78];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __WFShowResult_block_invoke_3_193;
    v14 = &unk_1E837E1F8;
    v9 = *(a1 + 40);
    v15 = 0;
    v16 = v9;
    v10 = [v8 okButtonWithHandler:&v11];
    [v6 addButton:{v10, v11, v12, v13, v14}];

    [*(a1 + 32) presentAlert:v6];
  }
}

void __WFShowResult_block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  if (WFContentItemIsAttachment(v5))
  {
    v6[2](v6, v5, 0);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __WFShowResult_block_invoke_6;
    v7[3] = &unk_1E837BA50;
    v8 = v5;
    v9 = v6;
    [v8 getObjectRepresentation:v7 forClass:objc_opt_class()];
  }
}

uint64_t WFContentItemIsAttachment(void *a1)
{
  v1 = a1;
  v2 = [v1 preferredDisplayStyle];
  v3 = [v1 preferredFileType];

  v4 = [v3 conformsToUTType:*MEMORY[0x1E6983020]] ^ 1;
  if (v2 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

void __WFShowResult_block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = *(a1 + 40);
    v10 = MEMORY[0x1E6996D58];
    v11 = [MEMORY[0x1E69E0D80] parseAnnotatedString:a2];
    v12 = [v11 displayString];

    v13 = [*(a1 + 32) attributionSet];
    v14 = [v10 itemWithObject:v12 named:v7 attributionSet:v13];
    (*(v9 + 16))(v9, v14, 0);
  }

  else
  {
    v15 = getWFActionsLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v19 = 136315651;
      v20 = "WFShowResult_block_invoke_6";
      v21 = 2113;
      v22 = v16;
      v23 = 2113;
      v24 = v8;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Failed coercing %{private}@ to string: %{private}@. Falling back to treating item as an attachment", &v19, 0x20u);
    }

    v17 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __WFShowPreview_block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [MEMORY[0x1E696ABC0] userCancelledError];
    (*(v2 + 16))(v2, v5);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 0);
  }
}

uint64_t WFPBAutoShortcutToggleEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
          goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_36;
          case 4:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 44) |= 1u;
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
                LOBYTE(v22) = 0;
                goto LABEL_42;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_42:
            *(a1 + 40) = v22;
            goto LABEL_37;
          case 5:
            v14 = PBReaderReadString();
            v15 = 32;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t (*initNRVersionIsGreaterThanOrEqual(uint64_t a1, uint64_t a2))()
{
  if (NanoRegistryLibrary_sOnce != -1)
  {
    dispatch_once(&NanoRegistryLibrary_sOnce, &__block_literal_global_52949);
  }

  result = dlsym(NanoRegistryLibrary_sLib, "NRVersionIsGreaterThanOrEqual");
  softLinkNRVersionIsGreaterThanOrEqual = result;
  if (result)
  {

    return (result)(a1, a2);
  }

  return result;
}

void *__NanoRegistryLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
  NanoRegistryLibrary_sLib = result;
  return result;
}

uint64_t initNRWatchOSVersionForRemoteDevice(void *a1)
{
  v1 = a1;
  if (NanoRegistryLibrary_sOnce != -1)
  {
    dispatch_once(&NanoRegistryLibrary_sOnce, &__block_literal_global_52949);
  }

  v2 = dlsym(NanoRegistryLibrary_sLib, "NRWatchOSVersionForRemoteDevice");
  softLinkNRWatchOSVersionForRemoteDevice = v2;
  if (v2)
  {
    v3 = (v2)(v1);
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  return v3;
}

Class initNRPairedDeviceRegistry()
{
  if (NanoRegistryLibrary_sOnce != -1)
  {
    dispatch_once(&NanoRegistryLibrary_sOnce, &__block_literal_global_52949);
  }

  result = objc_getClass("NRPairedDeviceRegistry");
  classNRPairedDeviceRegistry = result;
  getNRPairedDeviceRegistryClass = NRPairedDeviceRegistryFunction;
  return result;
}

uint64_t WFPBGallerySessionEndEventReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_37;
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

LABEL_37:
        *(a1 + 8) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
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
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_38:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFREPBAskWhenRunRequestReadFrom(char *a1, void *a2)
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
        LOBYTE(v19) = 0;
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v15 = PBReaderReadString();
            v16 = 8;
            goto LABEL_37;
          case 5:
            v15 = PBReaderReadData();
            v16 = 16;
            goto LABEL_37;
          case 6:
            v14 = objc_alloc_init(WFREPBRepeatedKeyValuePair);
            [a1 addPossibleStates:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WFREPBRepeatedKeyValuePairReadFrom(v14, a2))
            {
LABEL_41:

              return 0;
            }

LABEL_29:
            PBReaderRecallMark();
LABEL_38:

            goto LABEL_39;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v15 = PBReaderReadString();
            v16 = 24;
LABEL_37:
            v14 = *&a1[v16];
            *&a1[v16] = v15;
            goto LABEL_38;
          case 2:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addParameterKeys:v14];
            }

            goto LABEL_38;
          case 3:
            v14 = objc_alloc_init(WFREPBKeyValuePair);
            [a1 addParameterKeysAndStates:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !WFREPBKeyValuePairReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA88FB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaPropertyPredicateClass_block_invoke_53773(uint64_t a1)
{
  MediaPlayerLibrary_53782();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass_53772 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemState.m" lineNumber:28 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

void __getMPMediaItemClass_block_invoke_53775(uint64_t a1)
{
  MediaPlayerLibrary_53782();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass_53774 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemState.m" lineNumber:29 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

uint64_t WFGroupingPropertyForMediaType_53776(void *a1)
{
  v9[7] = *MEMORY[0x1E69E9840];
  v8[0] = @"Album";
  v8[1] = @"Playlist";
  v9[0] = &unk_1F4A9AC78;
  v9[1] = &unk_1F4A9AC90;
  v8[2] = @"Song";
  v8[3] = @"Artist";
  v9[2] = &unk_1F4A9ACA8;
  v9[3] = &unk_1F4A9ACC0;
  v8[4] = @"Genre";
  v8[5] = @"Compilation";
  v9[4] = &unk_1F4A9ACD8;
  v9[5] = &unk_1F4A9AC78;
  v8[6] = @"Composer";
  v9[6] = &unk_1F4A9ACF0;
  v1 = MEMORY[0x1E695DF20];
  v2 = a1;
  v3 = [v1 dictionaryWithObjects:v9 forKeys:v8 count:7];
  v4 = [v3 objectForKeyedSubscript:v2];

  v5 = [v4 integerValue];
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __getMPMediaQueryClass_block_invoke_53778(uint64_t a1)
{
  MediaPlayerLibrary_53782();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_53777 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemState.m" lineNumber:30 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void MediaPlayerLibrary_53782()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_53788)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_53789;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E837BB40;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_53788 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_53788)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"WFMediaItemState.m" lineNumber:27 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __MediaPlayerLibraryCore_block_invoke_53789(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_53788 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA892044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id INIntentFromAppBundleIdAndName(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", *MEMORY[0x1E696EAF8], v3, v4];
  v6 = INIntentCreate();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = getWFActionDonationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "INIntentFromAppBundleIdAndName";
      v14 = 2112;
      v15 = v4;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Unable to initialize intent with name: '%@' and bundleId: '%@'", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

id getWFActionDonationsLogObject()
{
  if (getWFActionDonationsLogObject_onceToken != -1)
  {
    dispatch_once(&getWFActionDonationsLogObject_onceToken, &__block_literal_global_54058);
  }

  v1 = getWFActionDonationsLogObject_log;

  return v1;
}

id getCNContactStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNContactStoreClass_softClass;
  v7 = getCNContactStoreClass_softClass;
  if (!getCNContactStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCNContactStoreClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getCNContactStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA8922E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPostalAddressesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_54002();
  result = dlsym(v2, "CNContactPostalAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPostalAddressesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary_54002()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_54052)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __ContactsLibraryCore_block_invoke_54053;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E837BB88;
    v7 = 0;
    ContactsLibraryCore_frameworkLibrary_54052 = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary_54052;
  if (!ContactsLibraryCore_frameworkLibrary_54052)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFActionDonationDefaultsRecommender.m" lineNumber:25 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

Class __getGEOMapURLBuilderClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __GeoServicesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837BBA0;
    v9 = 0;
    GeoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GeoServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFActionDonationDefaultsRecommender.m" lineNumber:31 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("GEOMapURLBuilder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGEOMapURLBuilderClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFActionDonationDefaultsRecommender.m" lineNumber:32 description:{@"Unable to find class %s", "GEOMapURLBuilder"}];

LABEL_10:
    __break(1u);
  }

  getGEOMapURLBuilderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getCNFavoritesClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_54002();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNFavorites");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNFavoritesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNFavoritesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFActionDonationDefaultsRecommender.m" lineNumber:35 description:{@"Unable to find class %s", "CNFavorites"}];

    __break(1u);
  }
}

void *__getCNActionTypeAudioCallSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_54002();
  result = dlsym(v2, "CNActionTypeAudioCall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNActionTypeAudioCallSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNActionTypeVideoCallSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary_54002();
  result = dlsym(v2, "CNActionTypeVideoCall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNActionTypeVideoCallSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GeoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GeoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_54053(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_54052 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_54002();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFActionDonationDefaultsRecommender.m" lineNumber:26 description:{@"Unable to find class %s", "CNContactStore"}];

    __break(1u);
  }
}

void __getWFActionDonationsLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "ActionDonations");
  v1 = getWFActionDonationsLogObject_log;
  getWFActionDonationsLogObject_log = v0;
}

__CFString *WFNSProgressCreateUserInfoKeyPathForKey(void *a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = @"userInfo";
  if ([v1 length])
  {
    v6[0] = @"userInfo";
    v6[1] = v1;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    v2 = [v3 componentsJoinedByString:@"."];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

id WFNSProgressCreateUserInfoKeyPathForProgressKeyPathAndKey(void *a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v10[0] = v3;
    v5 = WFNSProgressCreateUserInfoKeyPathForKey(v4);

    v10[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    v7 = [v6 componentsJoinedByString:@"."];
  }

  else
  {
    v7 = WFNSProgressCreateUserInfoKeyPathForKey(v4);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_1CA895CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose((v14 - 96), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54469(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getAFClientLiteClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary_54476)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __AssistantServicesLibraryCore_block_invoke_54477;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837BCF0;
    v9 = 0;
    AssistantServicesLibraryCore_frameworkLibrary_54476 = _sl_dlopen();
  }

  if (!AssistantServicesLibraryCore_frameworkLibrary_54476)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFRemoteExtensionProxy.m" lineNumber:23 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AFClientLite");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFClientLiteClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFRemoteExtensionProxy.m" lineNumber:24 description:{@"Unable to find class %s", "AFClientLite"}];

LABEL_10:
    __break(1u);
  }

  getAFClientLiteClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_54477(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_54476 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t WFNumberIsBoolean(void *a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(a1, "objCType")}];
  v2 = [v1 isEqualToString:@"c"];

  return v2;
}

uint64_t WFPBAutoShortcutButtonEventReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___WFPBAutoShortcutButtonEvent__bundleIdentifier;
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

    v13 = &OBJC_IVAR___WFPBAutoShortcutButtonEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id WFUIPresenterXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4AAEA00];
  v54 = MEMORY[0x1E695DFD8];
  v56 = MEMORY[0x1E695DFA8];
  v52 = objc_opt_class();
  v50 = objc_opt_class();
  v48 = objc_opt_class();
  v46 = objc_opt_class();
  v44 = objc_opt_class();
  v42 = objc_opt_class();
  v40 = objc_opt_class();
  v38 = objc_opt_class();
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v54 setWithObjects:{v52, v50, v48, v46, v44, v42, v40, v38, v37, v36, v35, v34, v33, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v57 = [v56 setWithSet:v10];

  [v57 addObject:objc_opt_class()];
  v53 = MEMORY[0x1E695DFD8];
  v55 = MEMORY[0x1E695DFA8];
  v51 = objc_opt_class();
  v49 = objc_opt_class();
  v47 = objc_opt_class();
  v45 = objc_opt_class();
  v43 = objc_opt_class();
  v41 = objc_opt_class();
  v39 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v53 setWithObjects:{v51, v49, v47, v45, v43, v41, v39, v11, v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
  v21 = [v55 setWithSet:v20];

  [v57 addObject:objc_opt_class()];
  [v0 setClasses:v57 forSelector:sel_showDialogRequest_runningContext_completionHandler_ argumentIndex:0 ofReply:0];
  [v0 setClasses:v21 forSelector:sel_showDialogRequest_runningContext_completionHandler_ argumentIndex:0 ofReply:1];
  v22 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v22 forSelector:sel_showDialogRequest_runningContext_completionHandler_ argumentIndex:1 ofReply:0];

  v23 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v23 forSelector:sel_openURL_completionHandler_ argumentIndex:0 ofReply:0];

  v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v24 forSelector:sel_beginPersistentModeWithRunningContext_attribution_completionHandler_ argumentIndex:0 ofReply:0];

  v25 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v25 forSelector:sel_beginPersistentModeWithRunningContext_attribution_completionHandler_ argumentIndex:1 ofReply:0];

  v26 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v26 forSelector:sel_completePersistentModeWithSuccess_runningContext_completionHandler_ argumentIndex:0 ofReply:0];

  v27 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v27 forSelector:sel_completePersistentModeWithSuccess_runningContext_completionHandler_ argumentIndex:1 ofReply:0];

  v28 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v28 forSelector:sel_updateAttribution_runningContext_ argumentIndex:0 ofReply:0];

  v29 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v29 forSelector:sel_updateAttribution_runningContext_ argumentIndex:1 ofReply:0];

  v30 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v30 forSelector:sel_applicationWillLaunchInForegroundForRunningContext_isLastAction_ argumentIndex:0 ofReply:0];

  v31 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v0 setClasses:v31 forSelector:sel_applicationWillLaunchInForegroundForRunningContext_isLastAction_ argumentIndex:1 ofReply:0];

  return v0;
}

id WFUIPresenterServiceInterface()
{
  if (WFUIPresenterServiceInterface_onceToken != -1)
  {
    dispatch_once(&WFUIPresenterServiceInterface_onceToken, &__block_literal_global_55423);
  }

  v1 = WFUIPresenterServiceInterface_interface;

  return v1;
}

void __WFUIPresenterServiceInterface_block_invoke()
{
  v4 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.shortcuts.ui-presenter"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F4AAEA00 interpreter:&__block_literal_global_251_55425];
  [v4 setServer:v0];
  v1 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F4AAD268 interpreter:&__block_literal_global_260];
  [v4 setClient:v1];
  v2 = [v4 copy];
  v3 = WFUIPresenterServiceInterface_interface;
  WFUIPresenterServiceInterface_interface = v2;
}

id __WFUIPresenterServiceInterface_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 copyAsOnewayVoid];

  return v2;
}

id __WFUIPresenterServiceInterface_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 copyAsOnewayVoid];

  return v2;
}

uint64_t WFREPBAlertReadFrom(uint64_t a1, void *a2)
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

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v27[0]) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v27[0] & 0x7F) << v16;
            if ((v27[0] & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_42;
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

LABEL_42:
          *(a1 + 24) = v22;
          goto LABEL_43;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v24 = objc_alloc_init(WFREPBAlertButton);
      [a1 addButtons:v24];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !WFREPBAlertButtonReadFrom(v24, a2))
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
      v14 = PBReaderReadString();
      v15 = 32;
      goto LABEL_35;
    }

    if (v13 == 2)
    {
      v14 = PBReaderReadString();
      v15 = 16;
LABEL_35:
      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

      goto LABEL_43;
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

id getWFWFRecordPropertyLogObject()
{
  if (getWFWFRecordPropertyLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFRecordPropertyLogObject_onceToken, &__block_literal_global_56090);
  }

  v1 = getWFWFRecordPropertyLogObject_log;

  return v1;
}

void __getWFWFRecordPropertyLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "WFRecordProperty");
  v1 = getWFWFRecordPropertyLogObject_log;
  getWFWFRecordPropertyLogObject_log = v0;
}

void sub_1CA89EABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56169(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA89ED84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA89F054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_1CA89F3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1CA89F67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA89F96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA89FD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A0088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A0368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A0638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A0910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A0BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A0EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A1470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A1764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A1A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A1D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A20B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8A2244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WFDatabaseProxyConfigureXPCInterface(void *a1)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 setClass:objc_opt_class() forSelector:sel_getReferenceForWorkflowID_completion_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getUniqueVisibleReferenceForWorkflowName_completion_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getWorkflowRecordDataForDescriptor_completion_ argumentIndex:0 ofReply:0];
  v2 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v4 = [v2 setWithArray:v3];
  [v1 setClasses:v4 forSelector:sel_getSortedVisibleWorkflowsByNameWithCompletion_ argumentIndex:0 ofReply:1];

  v5 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v7 = [v5 setWithArray:v6];
  [v1 setClasses:v7 forSelector:sel_getSortedVisibleWorkflowsInCollection_completion_ argumentIndex:0 ofReply:1];

  [v1 setClass:objc_opt_class() forSelector:sel_getSortedVisibleWorkflowsInCollection_completion_ argumentIndex:0 ofReply:0];
  v8 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v10 = [v8 setWithArray:v9];
  [v1 setClasses:v10 forSelector:sel_getSortedWorkflowsWithQuery_completion_ argumentIndex:0 ofReply:1];

  [v1 setClass:objc_opt_class() forSelector:sel_getSortedWorkflowsWithQuery_completion_ argumentIndex:0 ofReply:0];
  v11 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v13 = [v11 setWithArray:v12];
  [v1 setClasses:v13 forSelector:sel_getSortedVisibleFoldersWithCompletion_ argumentIndex:0 ofReply:1];

  [v1 setClass:objc_opt_class() forSelector:sel_getCollectionWithIdentifier_completion_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getFolderForWorkflowReference_completion_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_getFolderForWorkflowReference_completion_ argumentIndex:0 ofReply:0];
  v14 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v16 = [v14 setWithArray:v15];
  [v1 setClasses:v16 forSelector:sel_getConfiguredTriggersForWorkflowID_completion_ argumentIndex:0 ofReply:1];

  v17 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v1 setClasses:v17 forSelector:sel_getConfiguredTriggersForWorkflowID_completion_ argumentIndex:1 ofReply:1];

  [v1 setClass:objc_opt_class() forSelector:sel_getConfiguredTriggerForTriggerID_completion_ argumentIndex:0 ofReply:1];
  v18 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v1 setClasses:v18 forSelector:sel_getConfiguredTriggerForTriggerID_completion_ argumentIndex:1 ofReply:1];

  [v1 setClass:objc_opt_class() forSelector:sel_getIsReference_allowedToRunOnDomain_completion_ argumentIndex:0 ofReply:0];
  [v1 setClass:objc_opt_class() forSelector:sel_setTrustedToRunScripts_forReference_onDomain_completion_ argumentIndex:1 ofReply:0];
  [v1 setClass:objc_opt_class() forSelector:sel_approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates_completion_ argumentIndex:0 ofReply:0];
  [v1 setClass:objc_opt_class() forSelector:sel_approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates_completion_ argumentIndex:1 ofReply:0];
  [v1 setClass:objc_opt_class() forSelector:sel_approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates_completion_ argumentIndex:5 ofReply:0];
  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v1 setClasses:v21 forSelector:sel_approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates_completion_ argumentIndex:6 ofReply:0];

  [v1 setClass:objc_opt_class() forSelector:sel_approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates_completion_ argumentIndex:0 ofReply:1];
  [v1 setClass:objc_opt_class() forSelector:sel_currentDeletionAuthorizationStatusWithContentItemClassName_actionUUID_actionIdentifier_actionIndex_count_reference_completion_ argumentIndex:5 ofReply:0];
  [v1 setClass:objc_opt_class() forSelector:sel_currentDeletionAuthorizationStatusWithContentItemClassName_actionUUID_actionIdentifier_actionIndex_count_reference_completion_ argumentIndex:0 ofReply:1];

  v22 = *MEMORY[0x1E69E9840];
}

Class initHMCharacteristic()
{
  if (HomeKitLibrary_sOnce_56545 != -1)
  {
    dispatch_once(&HomeKitLibrary_sOnce_56545, &__block_literal_global_56546);
  }

  result = objc_getClass("HMCharacteristic");
  classHMCharacteristic = result;
  getHMCharacteristicClass = HMCharacteristicFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke_56550()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_56552 = result;
  return result;
}

uint64_t __Block_byref_object_copy__56969(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFInjectDisabledPlatformsInActionDefinition(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v29 = "WFInjectDisabledPlatformsInActionDefinition";
      v30 = 2112;
      v31 = v3;
      v32 = 2112;
      v33 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Injecting disabled platforms: %@ into action definition: %@", buf, 0x20u);
    }

    v6 = [v4 objectForKey:@"DisabledOnPlatforms"];
    v7 = [v6 mutableCopy];

    if (v7)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v3;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            if (([v7 containsObject:{v13, v19}] & 1) == 0)
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v10);
      }

      v25 = @"DisabledOnPlatforms";
      v14 = [v7 copy];
      v26 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v16 = [v4 definitionByAddingEntriesInDictionary:v15];
    }

    else
    {
      v23 = @"DisabledOnPlatforms";
      v24 = v3;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v16 = [v4 definitionByAddingEntriesInDictionary:v14];
    }
  }

  else
  {
    v16 = v4;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t WFPBEditShortcutEventReadFrom(uint64_t a1, void *a2)
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
        v57 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57 & 0x7F) << v5;
        if ((v57 & 0x80) == 0)
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
        break;
      }

      if (v13 <= 3)
      {
        if (v13 != 1)
        {
          if (v13 != 3)
          {
            goto LABEL_89;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 68) |= 1u;
          while (1)
          {
            v63 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v63 & 0x7F) << v23;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_94;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v25;
          }

LABEL_94:
          v55 = 8;
LABEL_115:
          *(a1 + v55) = v22;
          goto LABEL_116;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          case 6:
            v14 = PBReaderReadString();
            v15 = 56;
            break;
          default:
            goto LABEL_89;
        }
      }

      v47 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_116:
      v56 = [a2 position];
      if (v56 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 8)
    {
      if (v13 == 7)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 68) |= 0x10u;
        while (1)
        {
          v62 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v62 & 0x7F) << v35;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_102;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_102:
        v55 = 52;
      }

      else
      {
        if (v13 != 8)
        {
LABEL_89:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_116;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 68) |= 2u;
        while (1)
        {
          v61 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v61 & 0x7F) << v29;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_98:
        v55 = 40;
      }
    }

    else
    {
      switch(v13)
      {
        case 9:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            v60 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v60 & 0x7F) << v41;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_106;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v43;
          }

LABEL_106:
          v55 = 48;
          break;
        case 0xA:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            v59 = 0;
            v51 = [a2 position] + 1;
            if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
            {
              v53 = [a2 data];
              [v53 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v50 |= (v59 & 0x7F) << v48;
            if ((v59 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v11 = v49++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_114;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v50;
          }

LABEL_114:
          v55 = 44;
          break;
        case 0xB:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 68) |= 0x20u;
          while (1)
          {
            v58 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v58 & 0x7F) << v16;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_110;
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

LABEL_110:
          v55 = 64;
          break;
        default:
          goto LABEL_89;
      }
    }

    goto LABEL_115;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__57306(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFConvertImage(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"WFFileRepresentation * _Nullable WFConvertImage(WFImageContentItem * _Nonnull __strong, WFFinderImageResizeDescriptor * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v21 handleFailureInFunction:v22 file:@"WFFinderImageResizer.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"WFFileRepresentation * _Nullable WFConvertImage(WFImageContentItem * _Nonnull __strong, WFFinderImageResizeDescriptor * _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
  [v23 handleFailureInFunction:v24 file:@"WFFinderImageResizer.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];

LABEL_3:
  v8 = [v7 format];
  if (v8 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E69E0AF8] typeWithUTType:**(&unk_1E837C368 + v8)];
  }

  v10 = [v7 size];
  v25 = 0;
  v11 = [v5 generateImageFileForType:v9 includingMetadata:objc_msgSend(v7 compressionQuality:"preserveMetadata") error:{&unk_1F4A9B8E8, &v25}];
  v12 = v25;
  v13 = v12;
  if (v11)
  {
    if (v10)
    {
      WFImageSizeFromFile();
      v14 = WFTransformedImageFromImage();
      v15 = [v14 filename];
      v16 = 0;
      if (v10 <= 3)
      {
        v16 = WFLocalizedString(off_1E83806F8[v10 - 1]);
      }

      v17 = [v15 wf_filenameTruncatedToMaximumLengthWithFormat:v16];

      v18 = [v14 copyWithName:v17 addingExtensionIfNecessary:1 zone:0];
    }

    else
    {
      v18 = v11;
    }
  }

  else if (a3)
  {
    v19 = v12;
    v18 = 0;
    *a3 = v13;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void sub_1CA8AD3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getINUIImageLoaderClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!IntentsUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __IntentsUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837C478;
    v9 = 0;
    IntentsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsUILibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"INImage+Workflow.m" lineNumber:20 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("INUIImageLoader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINUIImageLoaderClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"INImage+Workflow.m" lineNumber:21 description:{@"Unable to find class %s", "INUIImageLoader"}];

LABEL_10:
    __break(1u);
  }

  getINUIImageLoaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __VoiceShortcutClientLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  VoiceShortcutClientLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IntentsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntentsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA8ADDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__58148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFREPBRunRequestResponseReadFrom(char *a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          if (v14)
          {
            [a1 addOutputData:v14];
          }

          goto LABEL_31;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadData();
          v16 = 8;
          goto LABEL_28;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 24;
LABEL_28:
          v14 = *&a1[v16];
          *&a1[v16] = v15;
LABEL_31:

          goto LABEL_32;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          if (v14)
          {
            [a1 addVariablesData:v14];
          }

          goto LABEL_31;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id WFDurationQuantityPossibleUnits()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"sec";
  v3[1] = @"min";
  v3[2] = @"hr";
  v3[3] = @"days";
  v3[4] = @"weeks";
  v3[5] = @"months";
  v3[6] = @"years";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void *__UIKitLibrary_block_invoke_58914()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_58916 = result;
  return result;
}

uint64_t WFUpdateWebClipForShortcutIfNeeded(void *a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 referenceForWorkflowID:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 actionCount];
    v11 = [v5 shortcutIdentifier];

    v12 = [v5 pageURL];

    v13 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v58 = "WFUpdateWebClipForShortcutIfNeeded";
      v59 = 1024;
      *v60 = v10 == 1;
      *&v60[4] = 1024;
      *&v60[6] = v11 != 0;
      LOWORD(v61) = 1024;
      *(&v61 + 2) = v12 != 0;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Considering web clip -- isSingleStepShortcut: %d, webClipHasShortcutIdentifier: %d, webClipOpensShortcutsJr: %d", buf, 0x1Eu);
    }

    if (v11 && v10 != 1 && v12)
    {
      v14 = getWFHomescreenLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v58 = "WFUpdateWebClipForShortcutIfNeeded";
        v59 = 1024;
        *v60 = 0;
        *&v60[4] = 1024;
        *&v60[6] = 1;
        LOWORD(v61) = 1024;
        *(&v61 + 2) = 1;
        v15 = "%s Web clip does not meet initial criteria: isSingleStepShortcut: %d, webClipHasShortcutIdentifier: %d, webClipOpensShortcutsJr: %d";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEFAULT;
        v18 = 30;
LABEL_11:
        _os_log_impl(&dword_1CA256000, v16, v17, v15, buf, v18);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v56 = 0;
    v20 = [v7 recordWithDescriptor:v9 error:&v56];
    v21 = v56;
    if (!v20)
    {
      v22 = getWFHomescreenLogObject();
      if (os_log_type_enabled(&v22->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v58 = "WFUpdateWebClipForShortcutIfNeeded";
        v59 = 2112;
        *v60 = v9;
        *&v60[8] = 2112;
        v61 = v21;
        _os_log_impl(&dword_1CA256000, &v22->super, OS_LOG_TYPE_ERROR, "%s Error updating web clip for shortcut -- couldn't load record from reference %@: %@", buf, 0x20u);
      }

      v19 = 0;
      v14 = v21;
      goto LABEL_65;
    }

    v55 = v21;
    v22 = [[WFWorkflow alloc] initWithRecord:v20 reference:v9 storageProvider:0 error:&v55];
    v14 = v55;

    if (!v22)
    {
      v26 = getWFHomescreenLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v58 = "WFUpdateWebClipForShortcutIfNeeded";
        v59 = 2112;
        *v60 = v6;
        *&v60[8] = 2112;
        v61 = v14;
        _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_ERROR, "%s Error updating web clip for shortcut -- error fetching shortcut with identifier %@: %@", buf, 0x20u);
      }

      v19 = 0;
      goto LABEL_64;
    }

    v23 = WFFastPathBundleIdentifierIfApplicable(v22);
    v24 = [v5 shortcutIdentifier];
    v54 = [v5 pageURL];
    v25 = [v5 applicationBundleIdentifier];
    v51 = v22;
    if (v23)
    {
      v53 = 0;
    }

    else
    {
      v53 = [v9 externalURLForRunningWithSource:*MEMORY[0x1E69E1398]];
    }

    v27 = *MEMORY[0x1E69E0F60];
    v50 = v23;
    if (v23)
    {
      v27 = v23;
    }

    v28 = v27;
    v29 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316674;
      v58 = "WFUpdateWebClipForShortcutIfNeeded";
      v59 = 2112;
      *v60 = v6;
      *&v60[8] = 2112;
      v61 = v53;
      v62 = 2112;
      v63 = v28;
      v64 = 2112;
      v65 = v24;
      v66 = 2112;
      v67 = v54;
      v68 = 2112;
      v69 = v25;
      _os_log_impl(&dword_1CA256000, v29, OS_LOG_TYPE_DEFAULT, "%s Considering web clip -- intended shortcutIdentifier: %@, pageURL: %@, applicationBundleID: %@ — actual shortcutIdentifier: %@, pageURL: %@, applicationBundleID: %@", buf, 0x48u);
    }

    v30 = v24;
    v31 = v6;
    v32 = v31;
    v52 = v20;
    v49 = v30;
    if (v30 == v31)
    {
    }

    else
    {
      if (!v31 || !v30)
      {

LABEL_36:
        [v5 setShortcutIdentifier:v32];
        v35 = 1;
LABEL_37:
        v36 = v25;
        v37 = v28;
        v38 = v37;
        if (v36 == v37)
        {

          goto LABEL_45;
        }

        if (v36 && v37)
        {
          v39 = [v36 isEqualToString:v37];

          if (v39)
          {
LABEL_45:
            v40 = v54;
            v41 = v53;
            v42 = v41;
            v48 = v36;
            if (v40 == v41)
            {

              goto LABEL_53;
            }

            if (v40 && v41)
            {
              v43 = [v40 isEqual:v41];

              if (v43)
              {
LABEL_53:
                v44 = getWFHomescreenLogObject();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v58 = "WFUpdateWebClipForShortcutIfNeeded";
                  v59 = 1024;
                  *v60 = v35;
                  _os_log_impl(&dword_1CA256000, v44, OS_LOG_TYPE_DEFAULT, "%s Considering web clip -- did modify web clip: %d", buf, 0x12u);
                }

                if (v35)
                {
                  if (([v5 updateOnDisk] & 1) == 0)
                  {
                    v45 = getWFHomescreenLogObject();
                    v20 = v52;
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315138;
                      v58 = "WFUpdateWebClipForShortcutIfNeeded";
                      _os_log_impl(&dword_1CA256000, v45, OS_LOG_TYPE_ERROR, "%s Error updating web clip for shortcut -- can't save updated web clip", buf, 0xCu);
                    }

                    v19 = 0;
                    goto LABEL_63;
                  }

                  v19 = 1;
                }

                else
                {
                  v19 = 0;
                }

                v20 = v52;
LABEL_63:

                v26 = v50;
                v22 = v51;
LABEL_64:

LABEL_65:
                goto LABEL_66;
              }
            }

            else
            {
            }

            [v5 setPageURL:v42];
            v35 = 1;
            goto LABEL_53;
          }
        }

        else
        {
        }

        [v5 setApplicationBundleIdentifier:v38];
        v35 = 1;
        goto LABEL_45;
      }

      v33 = v30;
      v34 = [v30 isEqualToString:v31];

      if ((v34 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v35 = 0;
    goto LABEL_37;
  }

  v14 = getWFHomescreenLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v58 = "WFUpdateWebClipForShortcutIfNeeded";
    v59 = 2112;
    *v60 = v6;
    v15 = "%s Error updating web clip for shortcut -- couldn't find shortcut with identifier %@";
    v16 = v14;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 22;
    goto LABEL_11;
  }

LABEL_12:
  v19 = 0;
LABEL_66:

  v46 = *MEMORY[0x1E69E9840];
  return v19;
}

Class initSBSWebClipService()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_305_58918);
  }

  result = objc_getClass("SBSWebClipService");
  classSBSWebClipService = result;
  getSBSWebClipServiceClass = SBSWebClipServiceFunction;
  return result;
}

void *__SpringBoardServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2);
  SpringBoardServicesLibrary_sLib = result;
  return result;
}

NSObject *WFFastPathBundleIdentifierIfApplicable(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = getWFHomescreenLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 136315394;
    v31 = "WFFastPathBundleIdentifierIfApplicable";
    v32 = 2112;
    v33 = v1;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_DEFAULT, "%s Getting fast path bundle identifier for workflow: %@", &v30, 0x16u);
  }

  v3 = [v1 actions];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [v1 actions];
    v6 = [v5 firstObject];

    v7 = [v6 identifier];
    if (v7 != @"is.workflow.actions.openapp")
    {
      v8 = v7;
      if (!v7 || (v9 = [(__CFString *)v7 isEqualToString:@"is.workflow.actions.openapp"], v8, v8, (v9 & 1) == 0))
      {
        v10 = getWFHomescreenLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v6 identifier];
          v30 = 136315650;
          v31 = "WFFastPathBundleIdentifierIfApplicable";
          v32 = 2114;
          v33 = v22;
          v34 = 2114;
          v35 = @"is.workflow.actions.openapp";
          _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_DEFAULT, "%s Single action identifier (%{public}@) does not match Open App action identifier (%{public}@)", &v30, 0x20u);
        }

        v21 = 0;
        goto LABEL_33;
      }
    }

    v10 = [v6 parameterStateForKey:@"WFSelectedApp"];
    v11 = [v10 value];
    v12 = [v11 bundleIdentifier];

    v13 = getWFHomescreenLogObject();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!v12)
    {
      if (v14)
      {
        v30 = 136315394;
        v31 = "WFFastPathBundleIdentifierIfApplicable";
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Action state does not have serialized identifier: state == %@", &v30, 0x16u);
      }

      v21 = 0;
      goto LABEL_32;
    }

    if (v14)
    {
      v30 = 136315394;
      v31 = "WFFastPathBundleIdentifierIfApplicable";
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Found serialized application bundle identifier: %{public}@", &v30, 0x16u);
    }

    v15 = [WFInterchangeAppRegistry bundleIdentifierForLegacyAppIdentifier:v12];
    v16 = v12;
    v17 = v15;
    v13 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      if (v17)
      {
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

      v23 = getWFHomescreenLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v30 = 136315650;
        v31 = "WFFastPathBundleIdentifierIfApplicable";
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v13;
        _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_DEFAULT, "%s Application bundle identifier was mapped from %{public}@ to %{public}@ by the legacy app identifier mapping in WFInterchangeAppRegistry", &v30, 0x20u);
      }

      v16 = v23;
    }

LABEL_29:
    v24 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleIdentifier:v13];
    v25 = [MEMORY[0x1E696E748] sharedResolver];
    v26 = [v25 resolvedAppMatchingDescriptor:v24];

    v21 = [v26 bundleIdentifier];
    v27 = getWFHomescreenLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 136315394;
      v31 = "WFFastPathBundleIdentifierIfApplicable";
      v32 = 2114;
      v33 = v21;
      _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_DEFAULT, "%s Returning fast path bundle identifier: %{public}@", &v30, 0x16u);
    }

LABEL_32:
LABEL_33:

    goto LABEL_34;
  }

  v6 = getWFHomescreenLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v1 actions];
    v20 = [v19 count];
    v30 = 136315650;
    v31 = "WFFastPathBundleIdentifierIfApplicable";
    v32 = 2112;
    v33 = v1;
    v34 = 2048;
    v35 = v20;
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Workflow (%@) contains > 1 action (it has %lu actions), skipping", &v30, 0x20u);
  }

  v21 = 0;
LABEL_34:

  v28 = *MEMORY[0x1E69E9840];

  return v21;
}

uint64_t (*initSBAddWebClipToHomeScreen(uint64_t a1, uint64_t a2))()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_305_58918);
  }

  result = dlsym(SpringBoardServicesLibrary_sLib, "SBAddWebClipToHomeScreen");
  softLinkSBAddWebClipToHomeScreen = result;
  if (result)
  {

    return (result)(a1, a2);
  }

  return result;
}

uint64_t (*initSBSSpringBoardServerPort())()
{
  if (SpringBoardServicesLibrary_sOnce != -1)
  {
    dispatch_once(&SpringBoardServicesLibrary_sOnce, &__block_literal_global_305_58918);
  }

  result = dlsym(SpringBoardServicesLibrary_sLib, "SBSSpringBoardServerPort");
  softLinkSBSSpringBoardServerPort = result;
  if (result)
  {

    return result();
  }

  return result;
}

id initkISImageDescriptorHomeScreen()
{
  if (IconServicesLibrary_sOnce != -1)
  {
    dispatch_once(&IconServicesLibrary_sOnce, &__block_literal_global_311_59005);
  }

  v0 = dlsym(IconServicesLibrary_sLib, "kISImageDescriptorHomeScreen");
  if (!v0)
  {
    __assert_rtn("initkISImageDescriptorHomeScreen", "WFHomeScreenController.m", 51, "constant");
  }

  objc_storeStrong(&constantkISImageDescriptorHomeScreen, *v0);
  getkISImageDescriptorHomeScreen = kISImageDescriptorHomeScreenFunction;
  v1 = constantkISImageDescriptorHomeScreen;

  return v1;
}

void *__IconServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
  IconServicesLibrary_sLib = result;
  return result;
}

Class initISImageDescriptor()
{
  if (IconServicesLibrary_sOnce != -1)
  {
    dispatch_once(&IconServicesLibrary_sOnce, &__block_literal_global_311_59005);
  }

  result = objc_getClass("ISImageDescriptor");
  classISImageDescriptor = result;
  getISImageDescriptorClass = ISImageDescriptorFunction;
  return result;
}

void getkCLErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkCLErrorDomainSymbolLoc_ptr;
  v9 = getkCLErrorDomainSymbolLoc_ptr;
  if (!getkCLErrorDomainSymbolLoc_ptr)
  {
    v1 = CoreLocationLibrary();
    v7[3] = dlsym(v1, "kCLErrorDomain");
    getkCLErrorDomainSymbolLoc_ptr = v7[3];
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
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkCLErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFLocator.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA8B54C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getWFWFLocatorLogObject()
{
  if (getWFWFLocatorLogObject_onceToken != -1)
  {
    dispatch_once(&getWFWFLocatorLogObject_onceToken, &__block_literal_global_59193);
  }

  v1 = getWFWFLocatorLogObject_log;

  return v1;
}

void __getWFWFLocatorLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "WFLocator");
  v1 = getWFWFLocatorLogObject_log;
  getWFWFLocatorLogObject_log = v0;
}

void *__getkCLErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CoreLocationLibrary()
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_59203)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CoreLocationLibraryCore_block_invoke_59204;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E837C5D0;
    v7 = 0;
    CoreLocationLibraryCore_frameworkLibrary_59203 = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_59203;
  if (!CoreLocationLibraryCore_frameworkLibrary_59203)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v0 handleFailureInFunction:v4 file:@"WFLocator.m" lineNumber:21 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_59204(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_59203 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA8B6320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59251(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void getkCLLocationAccuracyNearestTenMeters()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkCLLocationAccuracyNearestTenMetersSymbolLoc_ptr;
  v8 = getkCLLocationAccuracyNearestTenMetersSymbolLoc_ptr;
  if (!getkCLLocationAccuracyNearestTenMetersSymbolLoc_ptr)
  {
    v1 = CoreLocationLibrary();
    v6[3] = dlsym(v1, "kCLLocationAccuracyNearestTenMeters");
    getkCLLocationAccuracyNearestTenMetersSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CLLocationAccuracy getkCLLocationAccuracyNearestTenMeters(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFLocator.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA8B6544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCLLocationAccuracyNearestTenMetersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLLocationAccuracyNearestTenMeters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLLocationAccuracyNearestTenMetersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void WFCLLocationAccuracyFromWFLocationAccuracy(void *a1)
{
  v1 = a1;
  if (![v1 isEqualToString:@"BestForNavigation"])
  {
    if (![v1 isEqualToString:@"Best"])
    {
      if (![v1 isEqualToString:@"NearestTenMeters"])
      {
        if ([v1 isEqualToString:@"HundredMeters"])
        {
          v14 = 0;
          v15 = &v14;
          v16 = 0x2020000000;
          v2 = getkCLLocationAccuracyHundredMetersSymbolLoc_ptr;
          v17 = getkCLLocationAccuracyHundredMetersSymbolLoc_ptr;
          if (!getkCLLocationAccuracyHundredMetersSymbolLoc_ptr)
          {
            v10 = MEMORY[0x1E69E9820];
            v11 = 3221225472;
            v12 = __getkCLLocationAccuracyHundredMetersSymbolLoc_block_invoke;
            v13 = &unk_1E837FAC0;
            v8 = CoreLocationLibrary();
            v15[3] = dlsym(v8, "kCLLocationAccuracyHundredMeters");
            getkCLLocationAccuracyHundredMetersSymbolLoc_ptr = v15[3];
            v2 = v15[3];
          }

          _Block_object_dispose(&v14, 8);
          if (!v2)
          {
            v4 = [MEMORY[0x1E696AAA8] currentHandler];
            v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CLLocationAccuracy getkCLLocationAccuracyHundredMeters(void)"];
            [v4 handleFailureInFunction:v5 file:@"WFLocator.m" lineNumber:27 description:{@"%s", dlerror(), v10, v11, v12, v13}];
            goto LABEL_27;
          }

          goto LABEL_10;
        }

        if ([v1 isEqualToString:@"Kilometer"])
        {
          v14 = 0;
          v15 = &v14;
          v16 = 0x2020000000;
          v2 = getkCLLocationAccuracyKilometerSymbolLoc_ptr;
          v17 = getkCLLocationAccuracyKilometerSymbolLoc_ptr;
          if (!getkCLLocationAccuracyKilometerSymbolLoc_ptr)
          {
            v10 = MEMORY[0x1E69E9820];
            v11 = 3221225472;
            v12 = __getkCLLocationAccuracyKilometerSymbolLoc_block_invoke;
            v13 = &unk_1E837FAC0;
            v9 = CoreLocationLibrary();
            v15[3] = dlsym(v9, "kCLLocationAccuracyKilometer");
            getkCLLocationAccuracyKilometerSymbolLoc_ptr = v15[3];
            v2 = v15[3];
          }

          _Block_object_dispose(&v14, 8);
          if (!v2)
          {
            v4 = [MEMORY[0x1E696AAA8] currentHandler];
            v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CLLocationAccuracy getkCLLocationAccuracyKilometer(void)"];
            [v4 handleFailureInFunction:v5 file:@"WFLocator.m" lineNumber:28 description:{@"%s", dlerror(), v10, v11, v12, v13}];
            goto LABEL_27;
          }

          goto LABEL_10;
        }

        if ([v1 isEqualToString:@"ThreeKilometers"])
        {
          getkCLLocationAccuracyThreeKilometers();
          goto LABEL_11;
        }
      }

      getkCLLocationAccuracyNearestTenMeters();
      goto LABEL_11;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v2 = getkCLLocationAccuracyBestSymbolLoc_ptr;
    v17 = getkCLLocationAccuracyBestSymbolLoc_ptr;
    if (!getkCLLocationAccuracyBestSymbolLoc_ptr)
    {
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __getkCLLocationAccuracyBestSymbolLoc_block_invoke;
      v13 = &unk_1E837FAC0;
      v6 = CoreLocationLibrary();
      v15[3] = dlsym(v6, "kCLLocationAccuracyBest");
      getkCLLocationAccuracyBestSymbolLoc_ptr = v15[3];
      v2 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
    if (!v2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CLLocationAccuracy getkCLLocationAccuracyBest(void)"];
      [v4 handleFailureInFunction:v5 file:@"WFLocator.m" lineNumber:25 description:{@"%s", dlerror(), v10, v11, v12, v13}];
      goto LABEL_27;
    }

LABEL_10:
    v7 = *v2;
LABEL_11:

    return;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v2 = getkCLLocationAccuracyBestForNavigationSymbolLoc_ptr;
  v17 = getkCLLocationAccuracyBestForNavigationSymbolLoc_ptr;
  if (!getkCLLocationAccuracyBestForNavigationSymbolLoc_ptr)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __getkCLLocationAccuracyBestForNavigationSymbolLoc_block_invoke;
    v13 = &unk_1E837FAC0;
    v3 = CoreLocationLibrary();
    v15[3] = dlsym(v3, "kCLLocationAccuracyBestForNavigation");
    getkCLLocationAccuracyBestForNavigationSymbolLoc_ptr = v15[3];
    v2 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CLLocationAccuracy getkCLLocationAccuracyBestForNavigation(void)"];
  [v4 handleFailureInFunction:v5 file:@"WFLocator.m" lineNumber:24 description:{@"%s", dlerror(), v10, v11, v12, v13}];
LABEL_27:

  __break(1u);
}

void sub_1CA8B6AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCLLocationAccuracyBestForNavigationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLLocationAccuracyBestForNavigation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLLocationAccuracyBestForNavigationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCLLocationAccuracyBestSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLLocationAccuracyBest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLLocationAccuracyBestSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCLLocationAccuracyHundredMetersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLLocationAccuracyHundredMeters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLLocationAccuracyHundredMetersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCLLocationAccuracyKilometerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLLocationAccuracyKilometer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLLocationAccuracyKilometerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getkCLLocationAccuracyThreeKilometers()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkCLLocationAccuracyThreeKilometersSymbolLoc_ptr;
  v8 = getkCLLocationAccuracyThreeKilometersSymbolLoc_ptr;
  if (!getkCLLocationAccuracyThreeKilometersSymbolLoc_ptr)
  {
    v1 = CoreLocationLibrary();
    v6[3] = dlsym(v1, "kCLLocationAccuracyThreeKilometers");
    getkCLLocationAccuracyThreeKilometersSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CLLocationAccuracy getkCLLocationAccuracyThreeKilometers(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFLocator.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1CA8B6D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCLLocationAccuracyThreeKilometersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLLocationAccuracyThreeKilometers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLLocationAccuracyThreeKilometersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFGetAzulBuiltInCollectionIdentifiers(int a1)
{
  v2 = [MEMORY[0x1E695DFA8] setWithObjects:{@"ShareSheet", @"Watch", @"Sleep", 0}];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Root"];
  }

  return v3;
}

id WFGetBuiltInCollectionIdentifiers(int a1)
{
  v2 = [MEMORY[0x1E695DFA8] setWithObjects:{@"ShareSheet", @"Watch", @"Sleep", @"MenuBar", @"QuickActions", 0}];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"Root"];
  }

  return v3;
}

void sub_1CA8B818C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Block_object_dispose((v28 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59670(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA8B8770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getCLPlacemarkClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLPlacemarkClass_softClass_59763;
  v7 = getCLPlacemarkClass_softClass_59763;
  if (!getCLPlacemarkClass_softClass_59763)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCLPlacemarkClass_block_invoke_59764;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getCLPlacemarkClass_block_invoke_59764(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA8B8AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLPlacemarkClass_block_invoke_59764(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_59765)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke_59766;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837C6D8;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary_59765 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_59765)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"INCodablePlacemarkAttributeMetadata+Workflow.m" lineNumber:15 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLPlacemark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"INCodablePlacemarkAttributeMetadata+Workflow.m" lineNumber:16 description:{@"Unable to find class %s", "CLPlacemark"}];

LABEL_10:
    __break(1u);
  }

  getCLPlacemarkClass_softClass_59763 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_59766(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_59765 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA8B9A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8BCF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFLinkActionParameterStateNeedingDisplayRepresentation(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 valueNeedsDisplayRepresentation];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFLinkActionInvalidMetadataError()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E696ABC0];
  v1 = *MEMORY[0x1E696A798];
  v8[0] = *MEMORY[0x1E696A588];
  v2 = WFLocalizedString(@"Invalid action metadata");
  v9[0] = v2;
  v8[1] = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"Unfortunately, there is nothing Shortcuts can do about this it is due to a bug in the host app. We’d recommend contacting the maker of that app and letting them know of this problem.");;
  v9[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v5 = [v0 errorWithDomain:v1 code:22 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t WFREPBRunRequestStopReadFrom(uint64_t a1, void *a2)
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

uint64_t WFREPBKeyValuePairReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___WFREPBKeyValuePair__key;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

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

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___WFREPBKeyValuePair__value;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA8C7D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60781(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA8CA2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initUIPasteboard_61296()
{
  if (UIKitLibrary_sOnce_61297 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_61297, &__block_literal_global_61298);
  }

  result = objc_getClass("UIPasteboard");
  classUIPasteboard_61300 = result;
  getUIPasteboardClass_61291 = UIPasteboardFunction_61302;
  return result;
}

void *__UIKitLibrary_block_invoke_61305()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_61307 = result;
  return result;
}

void sub_1CA8CCE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61453(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getCNInstantMessageServiceSkypeSymbolLoc_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_61599)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ContactsLibraryCore_block_invoke_61600;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E837D400;
    v8 = 0;
    ContactsLibraryCore_frameworkLibrary_61599 = _sl_dlopen();
  }

  v2 = ContactsLibraryCore_frameworkLibrary_61599;
  if (!ContactsLibraryCore_frameworkLibrary_61599)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"ICSkypeCallContentMapping.m" lineNumber:13 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CNInstantMessageServiceSkype");
  *(*(a1[4] + 8) + 24) = result;
  getCNInstantMessageServiceSkypeSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_61600(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_61599 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFEnforceClass_61822(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Error unarchiving intent from data: %{public}@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

id WFExtractDonatedIntentFromSerializedParameters(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKey:@"IntentData"];
  if ([v1 length])
  {
    v7 = 0;
    v2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v1 error:&v7];
    v3 = v7;
    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = getWFGeneralLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v9 = "WFExtractDonatedIntentFromSerializedParameters";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_ERROR, "%s Error unarchiving intent from data: %{public}@", buf, 0x16u);
  }

  v2 = 0;
LABEL_8:

  v5 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1CA8D2F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61954(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA8D3494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLPlacemarkClass_block_invoke_61957(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_61958)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke_61959;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837D4E8;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary_61958 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_61958)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"INIntentSlotDescription+Workflow.m" lineNumber:21 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLPlacemark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"INIntentSlotDescription+Workflow.m" lineNumber:22 description:{@"Unable to find class %s", "CLPlacemark"}];

LABEL_10:
    __break(1u);
  }

  getCLPlacemarkClass_softClass_61956 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_61959(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_61958 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA8D5B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CA8D5EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WFEntityQueryTypeForQueryMetadata(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 identifier];

  if (!v8)
  {
    v9 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = [v6 mangledTypeName];
      *buf = 136315650;
      v29 = "WFEntityQueryTypeForQueryMetadata";
      v30 = 2112;
      v31 = v7;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s No entity metadata identifier for bundle: %@, mangledTypeName: %@", buf, 0x20u);
    }
  }

  v11 = [v6 identifier];
  if (v11)
  {
    v12 = [v6 identifier];
    v13 = WFShortcutsActionIdentifierFromLinkIdentifiers(v7, v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = WFForcedLinkEntityFindActionIdentifiers();
  if ([v14 containsObject:v13])
  {
    v15 = 1;
  }

  else
  {
    v16 = [v5 capabilities];

    if (v16)
    {
      v15 = 1;
      goto LABEL_15;
    }

    v17 = [v5 parameters];
    v18 = [v17 count];

    if (v18)
    {
      v15 = 2;
      goto LABEL_15;
    }

    v21 = [v6 systemProtocolMetadata];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69AC278]];

    v23 = [v6 properties];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __WFEntityQueryTypeForQueryMetadata_block_invoke;
    v26[3] = &unk_1E837E080;
    v27 = v13;
    v24 = [v23 if_firstObjectPassingTest:v26];

    if (v24)
    {
      v25 = v22 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v15 = 0;
    }

    else
    {
      v15 = 3;
    }

    v14 = v27;
  }

LABEL_15:
  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL __WFEntityQueryTypeForQueryMetadata_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WFIndexingKeyForForcedLinkEntityFindAction();
  v5 = [v4 objectForKey:*(a1 + 32)];
  v6 = [v3 identifier];
  v7 = [v5 objectForKey:v6];

  v8 = [v3 spotlightAttributeKey];
  if ([v8 length])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v3 spotlightCustomAttributeKey];
    v9 = ([v10 length] | v7) != 0;
  }

  return v9;
}

uint64_t WFREPBVariableReadFrom(void *a1, void *a2)
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
        v14 = a1[2];
        a1[2] = v13;
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

    v14 = objc_alloc_init(WFREPBContentItem);
    [a1 addItems:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !WFREPBContentItemReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBDailyStatusEventReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v208 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v208 & 0x7F) << v6;
      if ((v208 & 0x80) == 0)
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
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_84;
      case 2u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 132) |= 0x8000000u;
        while (1)
        {
          v208 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v208 & 0x7F) << v91;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_344;
          }
        }

        v47 = (v93 != 0) & ~[a2 hasError];
LABEL_344:
        v207 = 126;
        goto LABEL_417;
      case 3u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 132) |= 0x20000000u;
        while (1)
        {
          v208 = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v208 & 0x7F) << v67;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_334;
          }
        }

        v47 = (v69 != 0) & ~[a2 hasError];
LABEL_334:
        v207 = 128;
        goto LABEL_417;
      case 4u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 132) |= 0x10000000u;
        while (1)
        {
          v208 = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v208 & 0x7F) << v79;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_340;
          }
        }

        v47 = (v81 != 0) & ~[a2 hasError];
LABEL_340:
        v207 = 127;
        goto LABEL_417;
      case 5u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 132) |= 0x4000000u;
        while (1)
        {
          v208 = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v208 & 0x7F) << v41;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v12 = v42++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_320;
          }
        }

        v47 = (v43 != 0) & ~[a2 hasError];
LABEL_320:
        v207 = 125;
        goto LABEL_417;
      case 6u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 132) |= 0x80000u;
        while (1)
        {
          v208 = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v208 & 0x7F) << v115;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_360;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v117;
        }

LABEL_360:
        v206 = 100;
        goto LABEL_413;
      case 7u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 132) |= 1u;
        while (1)
        {
          v208 = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v208 & 0x7F) << v133;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_372;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v135;
        }

LABEL_372:
        v206 = 8;
        goto LABEL_413;
      case 8u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 132) |= 0x40000000u;
        while (1)
        {
          v208 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v208 & 0x7F) << v85;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_342;
          }
        }

        v47 = (v87 != 0) & ~[a2 hasError];
LABEL_342:
        v207 = 129;
        goto LABEL_417;
      case 9u:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 132) |= 0x200000u;
        while (1)
        {
          v208 = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            v156 = [a2 data];
            [v156 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v208 & 0x7F) << v151;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v12 = v152++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_384;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v153;
        }

LABEL_384:
        v206 = 108;
        goto LABEL_413;
      case 0xAu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 132) |= 0x20u;
        while (1)
        {
          v208 = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v208 & 0x7F) << v54;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v12 = v55++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_328;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v56;
        }

LABEL_328:
        v206 = 36;
        goto LABEL_413;
      case 0xBu:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 132) |= 4u;
        while (1)
        {
          v208 = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            v150 = [a2 data];
            [v150 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v208 & 0x7F) << v145;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v12 = v146++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_380;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v147;
        }

LABEL_380:
        v206 = 24;
        goto LABEL_413;
      case 0xCu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 132) |= 0x800000u;
        while (1)
        {
          v208 = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v208 & 0x7F) << v35;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v12 = v36++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_318;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v37;
        }

LABEL_318:
        v206 = 116;
        goto LABEL_413;
      case 0xDu:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 132) |= 0x100000u;
        while (1)
        {
          v208 = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v208 & 0x7F) << v48;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v12 = v49++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_324;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v50;
        }

LABEL_324:
        v206 = 104;
        goto LABEL_413;
      case 0xEu:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 132) |= 2u;
        while (1)
        {
          v208 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v208 & 0x7F) << v127;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_368;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v129;
        }

LABEL_368:
        v206 = 12;
        goto LABEL_413;
      case 0xFu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 132) |= 0x1000000u;
        while (1)
        {
          v208 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v208 & 0x7F) << v29;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_314;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v31;
        }

LABEL_314:
        v206 = 120;
        goto LABEL_413;
      case 0x10u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 132) |= 0x400000u;
        while (1)
        {
          v208 = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v208 & 0x7F) << v73;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_338;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v75;
        }

LABEL_338:
        v206 = 112;
        goto LABEL_413;
      case 0x11u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 132) |= 0x4000u;
        while (1)
        {
          v208 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v208 & 0x7F) << v23;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v12 = v24++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_310;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_310:
        v206 = 80;
        goto LABEL_413;
      case 0x12u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 132) |= 0x200u;
        while (1)
        {
          v208 = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v208 & 0x7F) << v103;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_352;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v105;
        }

LABEL_352:
        v206 = 60;
        goto LABEL_413;
      case 0x13u:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 132) |= 0x80u;
        while (1)
        {
          v208 = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v208 & 0x7F) << v139;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_376;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v141;
        }

LABEL_376:
        v206 = 52;
        goto LABEL_413;
      case 0x14u:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 132) |= 0x20000u;
        while (1)
        {
          v208 = 0;
          v178 = [a2 position] + 1;
          if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
          {
            v180 = [a2 data];
            [v180 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v177 |= (v208 & 0x7F) << v175;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v12 = v176++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_400;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v177;
        }

LABEL_400:
        v206 = 92;
        goto LABEL_413;
      case 0x15u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 132) |= 0x40000u;
        while (1)
        {
          v208 = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v208 & 0x7F) << v109;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_356;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v111;
        }

LABEL_356:
        v206 = 96;
        goto LABEL_413;
      case 0x16u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 132) |= 0x400u;
        while (1)
        {
          v208 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v208 & 0x7F) << v121;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_364;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v123;
        }

LABEL_364:
        v206 = 64;
        goto LABEL_413;
      case 0x17u:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        *(a1 + 132) |= 0x800u;
        while (1)
        {
          v208 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v208 & 0x7F) << v169;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_396;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v171;
        }

LABEL_396:
        v206 = 68;
        goto LABEL_413;
      case 0x18u:
        v181 = 0;
        v182 = 0;
        v183 = 0;
        *(a1 + 132) |= 0x8000u;
        while (1)
        {
          v208 = 0;
          v184 = [a2 position] + 1;
          if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
          {
            v186 = [a2 data];
            [v186 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (v208 & 0x7F) << v181;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v181 += 7;
          v12 = v182++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_404;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v183;
        }

LABEL_404:
        v206 = 84;
        goto LABEL_413;
      case 0x19u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 132) |= 0x10000u;
        while (1)
        {
          v208 = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v208 & 0x7F) << v61;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_332;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v63;
        }

LABEL_332:
        v206 = 88;
        goto LABEL_413;
      case 0x1Au:
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_84:
        v60 = *(a1 + v15);
        *(a1 + v15) = v14;

        continue;
      case 0x1Bu:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        *(a1 + 132) |= 0x2000000u;
        while (1)
        {
          v208 = 0;
          v202 = [a2 position] + 1;
          if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
          {
            v204 = [a2 data];
            [v204 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v201 |= (v208 & 0x7F) << v199;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v199 += 7;
          v12 = v200++ >= 9;
          if (v12)
          {
            LOBYTE(v47) = 0;
            goto LABEL_416;
          }
        }

        v47 = (v201 != 0) & ~[a2 hasError];
LABEL_416:
        v207 = 124;
LABEL_417:
        *(a1 + v207) = v47;
        continue;
      case 0x1Cu:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 132) |= 0x1000u;
        while (1)
        {
          v208 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v208 & 0x7F) << v16;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_306;
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

LABEL_306:
        v206 = 72;
        goto LABEL_413;
      case 0x1Du:
        v187 = 0;
        v188 = 0;
        v189 = 0;
        *(a1 + 132) |= 0x100u;
        while (1)
        {
          v208 = 0;
          v190 = [a2 position] + 1;
          if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
          {
            v192 = [a2 data];
            [v192 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v189 |= (v208 & 0x7F) << v187;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v187 += 7;
          v12 = v188++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_408;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v189;
        }

LABEL_408:
        v206 = 56;
        goto LABEL_413;
      case 0x1Eu:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 132) |= 0x40u;
        while (1)
        {
          v208 = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            v198 = [a2 data];
            [v198 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v195 |= (v208 & 0x7F) << v193;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v12 = v194++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_412;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v195;
        }

LABEL_412:
        v206 = 48;
        goto LABEL_413;
      case 0x1Fu:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(a1 + 132) |= 0x2000u;
        while (1)
        {
          v208 = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v208 & 0x7F) << v157;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_388;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v159;
        }

LABEL_388:
        v206 = 76;
        goto LABEL_413;
      case 0x20u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 132) |= 0x10u;
        while (1)
        {
          v208 = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v208 & 0x7F) << v97;
          if ((v208 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_348;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v99;
        }

LABEL_348:
        v206 = 32;
        goto LABEL_413;
      case 0x21u:
        v163 = 0;
        v164 = 0;
        v165 = 0;
        *(a1 + 132) |= 8u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v208 = 0;
      v166 = [a2 position] + 1;
      if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
      {
        v168 = [a2 data];
        [v168 getBytes:&v208 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v165 |= (v208 & 0x7F) << v163;
      if ((v208 & 0x80) == 0)
      {
        break;
      }

      v163 += 7;
      v12 = v164++ >= 9;
      if (v12)
      {
        v22 = 0;
        goto LABEL_392;
      }
    }

    if ([a2 hasError])
    {
      v22 = 0;
    }

    else
    {
      v22 = v165;
    }

LABEL_392:
    v206 = 28;
LABEL_413:
    *(a1 + v206) = v22;
  }

  return [a2 hasError] ^ 1;
}

id WFCLInUseAssertionWithOptions(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getCLInUseAssertionClass_softClass;
  v17 = getCLInUseAssertionClass_softClass;
  if (!getCLInUseAssertionClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getCLInUseAssertionClass_block_invoke;
    v13[3] = &unk_1E837FAC0;
    v13[4] = &v14;
    __getCLInUseAssertionClass_block_invoke(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v6 = v5;
  switch(a1)
  {
    case 3:
      v7 = MEMORY[0x1E696AAE8];
      v8 = @"/System/Library/PrivateFrameworks/AssistantServices.framework";
      goto LABEL_9;
    case 2:
      v9 = MEMORY[0x1E69E0E90];
      break;
    case 1:
      v7 = MEMORY[0x1E696AAE8];
      v8 = @"/System/Library/PrivateFrameworks/HomeKitDaemon.framework";
LABEL_9:
      v10 = [v7 bundleWithPath:v8];
      v11 = [v5 newAssertionForBundle:v10 withReason:v3 level:1];

      goto LABEL_12;
    default:
      v9 = MEMORY[0x1E69E0FB0];
      break;
  }

  v11 = [v5 newAssertionForBundleIdentifier:*v9 withReason:v3 level:1];
LABEL_12:

  return v11;
}

void sub_1CA8E33E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLInUseAssertionClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_63755)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke_63756;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837D970;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary_63755 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_63755)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"CLInUseAssertion+Workflow.m" lineNumber:15 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLInUseAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLInUseAssertionClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"CLInUseAssertion+Workflow.m" lineNumber:16 description:{@"Unable to find class %s", "CLInUseAssertion"}];

LABEL_10:
    __break(1u);
  }

  getCLInUseAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_63756(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_63755 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void WFMigratePropertyListObject(void *a1, void *a2, void *a3, uint64_t a4)
{
  v17 = a1;
  v7 = a2;
  v8 = a3;
  v9 = [v17 valueForKey:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = v13;
    if (v13)
    {
      v15 = [v13 array];

      v11 = v15;
    }

    v16 = [MEMORY[0x1E696AE40] dataWithPropertyList:v11 format:200 options:0 error:a4];

    [v17 setValue:v16 forKey:v8];
    [v17 setValue:0 forKey:v7];
  }

  else
  {
    [v17 setValue:0 forKey:v8];
  }
}

void sub_1CA8E56DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64125(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFProcessStringValueVariableContent_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  v6 = [a2 items];
  [v5 addObjectsFromArray:v6];

  (*(*(a1 + 40) + 16))();
}

Class initUIPasteboard_64411()
{
  if (UIKitLibrary_sOnce_64412 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_64412, &__block_literal_global_64413);
  }

  result = objc_getClass("UIPasteboard");
  classUIPasteboard_64415 = result;
  getUIPasteboardClass_64408 = UIPasteboardFunction_64417;
  return result;
}

void *__UIKitLibrary_block_invoke_64420()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_64422 = result;
  return result;
}

uint64_t WFREPBAlertRequestResponseReadFrom(uint64_t a1, void *a2)
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
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_22:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_22;
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

    v16 = objc_alloc_init(WFREPBError);
    objc_storeStrong((a1 + 8), v16);
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !WFREPBErrorReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_1CA8EA4D8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64724(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA8EBA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65008(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA8EBF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFActionSkipList()
{
  if (WFActionSkipList_onceToken != -1)
  {
    dispatch_once(&WFActionSkipList_onceToken, &__block_literal_global_65331);
  }

  v1 = WFActionSkipList_skipList;

  return v1;
}

void __WFActionSkipList_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"is.workflow.actions.timer.start", @"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent", @"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent", @"com.apple.mobiletimer-framework.MobileTimerIntents.MTGetAlarmsIntent", @"com.apple.musicrecognition.RecognizeMusicIntent", 0}];
  v1 = WFActionSkipList_skipList;
  WFActionSkipList_skipList = v0;
}

uint64_t WFPBShareShortcutEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      switch(v13)
      {
        case 1:
          v14 = PBReaderReadString();
          v15 = 32;
LABEL_42:
          v24 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_61;
        case 2:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *(a1 + 60) |= 2u;
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
              v22 = 0;
              goto LABEL_59;
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

LABEL_59:
          v31 = 56;
          break;
        case 3:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_55;
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

LABEL_55:
          v31 = 8;
          break;
        default:
          goto LABEL_38;
      }

      *(a1 + v31) = v22;
LABEL_61:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v14 = PBReaderReadString();
        v15 = 40;
      }

      else
      {
        if (v13 != 7)
        {
LABEL_38:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_61;
        }

        v14 = PBReaderReadString();
        v15 = 48;
      }
    }

    else if (v13 == 4)
    {
      v14 = PBReaderReadString();
      v15 = 16;
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_38;
      }

      v14 = PBReaderReadString();
      v15 = 24;
    }

    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

WFVariableString *WFTitleForParameterValue(void *a1)
{
  v1 = [a1 state];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 variableString];
  }

  else
  {
    v3 = [WFVariableString alloc];
    v4 = WFLocalizedString(@"Unknown");
    v2 = [(WFVariableString *)v3 initWithString:v4];
  }

  return v2;
}

id WFSerializedIdentifierFromLinkValue(void *a1)
{
  v1 = a1;
  v2 = [v1 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [v1 value];
    if ([v4 isTransient])
    {
      v5 = 0;
    }

    else
    {
      v12 = [v1 value];
      v13 = [v12 identifier];
      v5 = [v13 instanceIdentifier];
    }

LABEL_14:

    goto LABEL_15;
  }

  v6 = [v1 valueType];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  v8 = v1;
  if (v7)
  {
LABEL_7:
    v4 = [v8 value];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v4;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v5 = v11;
    goto LABEL_14;
  }

  v9 = [v1 valueType];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v8 = v1;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_15:

  return v5;
}

id WFSerializedRepresentationFromLinkValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 if_map:&__block_literal_global_308_65864];
LABEL_5:
    v3 = v2;
    goto LABEL_6;
  }

  if ([v1 conformsToProtocol:&unk_1F4B24968])
  {
    v2 = v1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v1;
    if (![(WFLocationValue *)v5 isTransient])
    {
      v3 = 0;
      goto LABEL_16;
    }

    v6 = [(WFLocationValue *)v5 wfSerializedRepresentation];
LABEL_12:
    v3 = v6;
LABEL_16:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 absoluteString];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 string];
    goto LABEL_5;
  }

  getCLPlacemarkClass_65865();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[WFLocationValue alloc] initWithPlacemark:v1];
    v6 = [(WFLocationValue *)v5 serializedRepresentation];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFNSDateComponentsSerialization(v1);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFINFileSerialization(v1);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFINPersonSerialization(v1);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFINCurrencyAmountSerialization(v1);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFINPaymentMethodSerialization(v1);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFSerializeNSMeasurement();
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = WFLNStringSearchCriteriaSerialization(v1);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_22:
    v2 = [v1 serializedRepresentation];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 wfSerializedRepresentation];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_6:

  return v3;
}

id getCLPlacemarkClass_65865()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLPlacemarkClass_softClass_65929;
  v7 = getCLPlacemarkClass_softClass_65929;
  if (!getCLPlacemarkClass_softClass_65929)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCLPlacemarkClass_block_invoke_65930;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getCLPlacemarkClass_block_invoke_65930(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA8F1E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFNSDateComponentsSerialization(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v1 year] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"year"];
  }

  else
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "year")}];
    [v2 if_setObjectIfNonNil:v3 forKey:@"year"];
  }

  if ([v1 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"month"];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "month")}];
    [v2 if_setObjectIfNonNil:v4 forKey:@"month"];
  }

  if ([v1 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"day"];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "day")}];
    [v2 if_setObjectIfNonNil:v5 forKey:@"day"];
  }

  if ([v1 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"hour"];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "hour")}];
    [v2 if_setObjectIfNonNil:v6 forKey:@"hour"];
  }

  if ([v1 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"minute"];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "minute")}];
    [v2 if_setObjectIfNonNil:v7 forKey:@"minute"];
  }

  if ([v1 second] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"second"];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "second")}];
    [v2 if_setObjectIfNonNil:v8 forKey:@"second"];
  }

  if ([v1 nanosecond] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"nanosecond"];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "nanosecond")}];
    [v2 if_setObjectIfNonNil:v9 forKey:@"nanosecond"];
  }

  if ([v1 weekday] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"weekday"];
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "weekday")}];
    [v2 if_setObjectIfNonNil:v10 forKey:@"weekday"];
  }

  if ([v1 weekdayOrdinal] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"weekdayOrdinal"];
  }

  else
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "weekdayOrdinal")}];
    [v2 if_setObjectIfNonNil:v11 forKey:@"weekdayOrdinal"];
  }

  if ([v1 quarter] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"quarter"];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "quarter")}];
    [v2 if_setObjectIfNonNil:v12 forKey:@"quarter"];
  }

  if ([v1 weekOfMonth] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"weekOfMonth"];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "weekOfMonth")}];
    [v2 if_setObjectIfNonNil:v13 forKey:@"weekOfMonth"];
  }

  if ([v1 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"weekOfYear"];
  }

  else
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "weekOfYear")}];
    [v2 if_setObjectIfNonNil:v14 forKey:@"weekOfYear"];
  }

  if ([v1 yearForWeekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 if_setObjectIfNonNil:0 forKey:@"yearForWeekOfYear"];
  }

  else
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v1, "yearForWeekOfYear")}];
    [v2 if_setObjectIfNonNil:v15 forKey:@"yearForWeekOfYear"];
  }

  v16 = [v1 calendar];
  v17 = [v16 calendarIdentifier];
  [v2 if_setObjectIfNonNil:v17 forKey:@"calendar"];

  v18 = [v1 timeZone];
  v19 = [v18 name];
  [v2 if_setObjectIfNonNil:v19 forKey:@"timeZone"];

  v20 = [v2 copy];

  return v20;
}

id WFINFileSerialization(void *a1)
{
  v1 = a1;
  v2 = [v1 _bookmarkData];

  if (v2)
  {
    v3 = [WFFileValue alloc];
    v4 = [v1 _bookmarkData];
    v5 = [v1 filename];
    v6 = [v1 filename];
    v7 = [(WFFileValue *)v3 initWithBookmarkData:v4 filename:v5 displayName:v6];

LABEL_5:
    goto LABEL_6;
  }

  v8 = [v1 fileURL];

  if (v8)
  {
    v9 = [WFFileValue alloc];
    v4 = [v1 fileURL];
    v7 = [(WFFileValue *)v9 initWithURL:v4];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  v10 = [(WFFileValue *)v7 serializedRepresentation];

  return v10;
}

id WFINPersonSerialization(uint64_t a1)
{
  v1 = [MEMORY[0x1E6996D00] cnContactWithINPerson:a1];
  v2 = [objc_alloc(MEMORY[0x1E6996D10]) initWithContact:v1];
  v3 = [v2 serializedRepresentation];

  return v3;
}

id WFINCurrencyAmountSerialization(void *a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"amount";
  v1 = a1;
  v2 = [v1 amount];
  v7[1] = @"currencyCode";
  v8[0] = v2;
  v3 = [v1 currencyCode];

  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id WFINPaymentMethodSerialization(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = [v1 dictionaryWithCapacity:4];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "type")}];
  [v3 if_setObjectIfNonNil:v4 forKey:@"type"];

  v5 = [v2 name];
  [v3 if_setObjectIfNonNil:v5 forKey:@"name"];

  v6 = [v2 identificationHint];

  [v3 if_setObjectIfNonNil:v6 forKey:@"identificationHint"];

  return v3;
}

id WFLNStringSearchCriteriaSerialization(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = [v1 dictionaryWithCapacity:1];
  v4 = [v2 term];

  [v3 if_setObjectIfNonNil:v4 forKey:@"term"];

  return v3;
}

Class __getCLPlacemarkClass_block_invoke_65930(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_65931)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __CoreLocationLibraryCore_block_invoke_65932;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837E0C0;
    v9 = 0;
    CoreLocationLibraryCore_frameworkLibrary_65931 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_65931)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNValue+Serialization.m" lineNumber:28 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CLPlacemark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNValue+Serialization.m" lineNumber:29 description:{@"Unable to find class %s", "CLPlacemark"}];

LABEL_10:
    __break(1u);
  }

  getCLPlacemarkClass_softClass_65929 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke_65932(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_65931 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id __WFSerializedRepresentationFromLinkValue_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 wfSerializedRepresentation];
  }

  else
  {
    WFSerializedRepresentationFromLinkValue(v2);
  }
  v3 = ;

  return v3;
}

id WFCLPlacemarkFromSerializedIntentPlacemark(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = WFCLPlacemarkFromSerializedPlacemark();
    if (v2)
    {
      v3 = [v1 objectForKeyedSubscript:@"postalAddress"];
      if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v4 = [v1 objectForKeyedSubscript:@"name"];
        if (v4)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = v4;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 0;
        }

        v7 = v5;

        v8 = &stru_1F4A1C408;
        if (v7)
        {
          v8 = v7;
        }

        v9 = v8;

        CLPlacemarkClass_65865 = getCLPlacemarkClass_65865();
        v11 = [v2 location];
        v17 = 0;
        v18 = &v17;
        v19 = 0x2050000000;
        v12 = getCNPostalAddressClass_softClass;
        v20 = getCNPostalAddressClass_softClass;
        if (!getCNPostalAddressClass_softClass)
        {
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __getCNPostalAddressClass_block_invoke;
          v16[3] = &unk_1E837FAC0;
          v16[4] = &v17;
          __getCNPostalAddressClass_block_invoke(v16);
          v12 = v18[3];
        }

        v13 = v12;
        _Block_object_dispose(&v17, 8);
        v14 = [v12 postalAddressWithDictionaryRepresentation:v3];
        v6 = [CLPlacemarkClass_65865 placemarkWithLocation:v11 name:v9 postalAddress:v14];
      }

      else
      {

        v6 = v2;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

void sub_1CA8F4900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFINCurrencyAmountFromSerialization(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 objectForKeyedSubscript:@"amount"];

    if (v9)
    {
      v10 = MEMORY[0x1E696AB90];
      v11 = [v8 objectForKeyedSubscript:@"amount"];
      v12 = v11;
      if (v11)
      {
        [v11 decimalValue];
      }

      else
      {
        v21[0] = 0;
        v21[1] = 0;
        v22 = 0;
      }

      v9 = [v10 decimalNumberWithDecimal:v21];
    }

    v14 = [v8 objectForKeyedSubscript:@"currencyCode"];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v13 = 0;
    if (v9 && v16)
    {
      v17 = objc_alloc(MEMORY[0x1E696E7E8]);
      v18 = MEMORY[0x1E696AB90];
      [v9 decimalValue];
      v19 = [v18 decimalNumberWithDecimal:v21];
      v13 = [v17 initWithAmount:v19 currencyCode:v16];
    }
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

id WFLNStringSearchCriteriaFromSerialization(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 objectForKeyedSubscript:@"term"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    v11 = [objc_alloc(MEMORY[0x1E69AC9F8]) initWithTerm:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

Class __getCNPostalAddressClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_65972)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __ContactsLibraryCore_block_invoke_65973;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837E0D8;
    v9 = 0;
    ContactsLibraryCore_frameworkLibrary_65972 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_65972)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"LNValue+Serialization.m" lineNumber:31 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CNPostalAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNPostalAddressClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"LNValue+Serialization.m" lineNumber:32 description:{@"Unable to find class %s", "CNPostalAddress"}];

LABEL_10:
    __break(1u);
  }

  getCNPostalAddressClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_65973(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_65972 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA8F6638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66073(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WFUnitTypeFromAttributeName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Length"])
  {
    v2 = MEMORY[0x1E69E11C0];
LABEL_15:
    v3 = *v2;
    goto LABEL_16;
  }

  if ([v1 isEqualToString:@"Temperature"])
  {
    v2 = MEMORY[0x1E69E11E8];
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"Mass"])
  {
    v2 = MEMORY[0x1E69E11C8];
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"Volume"])
  {
    v2 = MEMORY[0x1E69E11F0];
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"Speed"])
  {
    v2 = MEMORY[0x1E69E11E0];
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"Energy"])
  {
    v2 = MEMORY[0x1E69E1198];
    goto LABEL_15;
  }

  if ([v1 isEqualToString:@"Duration"])
  {
    v2 = MEMORY[0x1E69E1170];
    goto LABEL_15;
  }

  v3 = 0;
LABEL_16:

  return v3;
}

void sub_1CA8FB7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFINItemProviderRequestMetadataWithFileRepresentation(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 metadata];

  if (v2)
  {
    v3 = MEMORY[0x1E696ACC8];
    v4 = [v1 metadata];
    v13 = 0;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];
    v6 = v13;

    if (v5)
    {
      v7 = objc_alloc(MEMORY[0x1E696E8C0]);
      v8 = [v1 metadata];
      v9 = [v8 registeredTypeIdentifiers];
      v10 = [v7 initWithMetadata:v5 supportedContentTypes:v9];
    }

    else
    {
      v8 = getWFGeneralLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "WFINItemProviderRequestMetadataWithFileRepresentation";
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Could not get archive metadata with error: %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_1CA8FE804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNContactStoreClass_block_invoke_67073(uint64_t a1)
{
  ContactsLibrary_67075();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNContactStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactStoreClass_softClass_67072 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"INCodablePersonAttributeMetadata+Workflow.m" lineNumber:22 description:{@"Unable to find class %s", "CNContactStore"}];

    __break(1u);
  }
}

void sub_1CA8FED00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCNPhoneNumberClass_block_invoke(uint64_t a1)
{
  ContactsLibrary_67075();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPhoneNumber");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPhoneNumberClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNPhoneNumberClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"INCodablePersonAttributeMetadata+Workflow.m" lineNumber:23 description:{@"Unable to find class %s", "CNPhoneNumber"}];

    __break(1u);
  }
}

void ContactsLibrary_67075()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_67083)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_67084;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E837E500;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_67083 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_67083)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"INCodablePersonAttributeMetadata+Workflow.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __ContactsLibraryCore_block_invoke_67084(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_67083 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA907788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68273(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA90BC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFResourceClassIsInArray(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t WFPBAutomatorWorkflowMigrationEventReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_46;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_46:
        *(a1 + 24) = v29;
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v33 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33 & 0x7F) << v16;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_44:
        *(a1 + 8) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

WFINObjectSubstitutableState *WFAllShortcutsParameterState()
{
  v0 = objc_alloc(MEMORY[0x1E696E910]);
  v1 = WFLocalizedAllShortcutsString();
  v2 = [v0 initWithIdentifier:@"AllShortcuts" displayString:v1];

  v3 = [(WFVariableSubstitutableParameterState *)[WFINObjectSubstitutableState alloc] initWithValue:v2];

  return v3;
}

id getFCActivityManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFCActivityManagerClass_softClass;
  v7 = getFCActivityManagerClass_softClass;
  if (!getFCActivityManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFCActivityManagerClass_block_invoke;
    v3[3] = &unk_1E837FAC0;
    v3[4] = &v4;
    __getFCActivityManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1CA914E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFCActivityManagerClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!FocusLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __FocusLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837EF88;
    v9 = 0;
    FocusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FocusLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FocusLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFFocusModesManager.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("FCActivityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFCActivityManagerClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFFocusModesManager.m" lineNumber:19 description:{@"Unable to find class %s", "FCActivityManager"}];

LABEL_10:
    __break(1u);
  }

  getFCActivityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __FocusLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FocusLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id WFACEClassFromString(void *a1)
{
  v1 = SAObjectsLibrary_sOnce;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&SAObjectsLibrary_sOnce, &__block_literal_global_70247);
  }

  v3 = NSClassFromString(v2);

  return v3;
}

void *__SAObjectsLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SAObjects.framework/SAObjects", 2);
  SAObjectsLibrary_sLib = result;
  return result;
}

void WFPerformACECommand(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  getAFClientLiteClass();
  v7 = objc_opt_new();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__70250;
  v18[4] = __Block_byref_object_dispose__70251;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__70250;
  v16[4] = __Block_byref_object_dispose__70251;
  v17 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __WFPerformACECommand_block_invoke;
  v14[3] = &unk_1E837F078;
  v15 = a2;
  v14[4] = v16;
  v14[5] = v18;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __WFPerformACECommand_block_invoke_2;
  v9[3] = &unk_1E837F0A0;
  v13 = a2;
  v8 = v6;
  v10 = v8;
  v11 = v18;
  v12 = v16;
  [v7 handleCommand:v5 commandHandler:v14 completion:v9];
  if (a2)
  {
    (*(v8 + 2))(v8, 0, 1, 0);
  }

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

void sub_1CA9160FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__70250(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WFPerformACECommand_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 48) & 1) == 0)
  {
    v16 = v3;
    getSAGenericCommandClass();
    if (objc_opt_isKindOfClass())
    {
      AceObjectClass = getAceObjectClass();
      v5 = [v16 dictionary];
      v6 = [(objc_class *)AceObjectClass aceObjectWithDictionary:v5];

      getSABaseCommandClass();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;

        v16 = v7;
      }

      else
      {
        NSLog(&cfstr_Wfperformaceco.isa);
      }
    }

    getSACommandFailedClass();
    if (objc_opt_isKindOfClass())
    {
      v8 = v16;
      v9 = [v8 reason];
      v10 = [v8 errorCode];
      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFACEErrorDomain" code:v10 userInfo:MEMORY[0x1E695E0F8]];
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      NSLog(&cfstr_Wfperformaceco_0.isa, v9, v10);
    }

    else
    {
      v14 = *(*(a1 + 40) + 8);
      v15 = v16;
      v9 = *(v14 + 40);
      *(v14 + 40) = v15;
    }

    v3 = v16;
  }
}

void __WFPerformACECommand_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((*(a1 + 56) & 1) == 0)
  {
    if (!v5)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v20 = v5;
    v6 = [v5 domain];
    v7 = getkAFAssistantErrorDomain();
    if ([v6 isEqualToString:v7])
    {
      v8 = [v20 userInfo];
      v9 = *MEMORY[0x1E696A578];
      v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

      if (v10)
      {
LABEL_12:
        v18 = v20;
LABEL_14:
        v21 = v18;
        if (*(*(*(a1 + 48) + 8) + 40))
        {
          v19 = *(*(*(a1 + 48) + 8) + 40);
        }

        else
        {
          v19 = v18;
        }

        (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), a2, v19);
        v5 = v21;
        goto LABEL_18;
      }

      v11 = [v20 userInfo];
      v6 = [v11 mutableCopy];

      v12 = [v20 code];
      v13 = @"An unknown error occurred while performing the request.";
      if (v12 == 18)
      {
        v13 = @"Unable to complete request because Siri is disabled.";
      }

      if (v12 == 13)
      {
        v14 = @"Unable to complete request because it is not supported on this platform.";
      }

      else
      {
        v14 = v13;
      }

      v15 = WFLocalizedString(v14);
      [v6 setObject:v15 forKeyedSubscript:v9];

      v16 = MEMORY[0x1E696ABC0];
      v7 = [v20 domain];
      v17 = [v16 errorWithDomain:v7 code:objc_msgSend(v20 userInfo:{"code"), v6}];

      v20 = v17;
    }

    goto LABEL_12;
  }

LABEL_18:
}

id initkAFAssistantErrorDomain()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    dispatch_once(&AssistantServicesLibrary_sOnce, &__block_literal_global_17);
  }

  v0 = dlsym(AssistantServicesLibrary_sLib, "kAFAssistantErrorDomain");
  if (!v0)
  {
    __assert_rtn("initkAFAssistantErrorDomain", "WFACEUtilities.m", 22, "constant");
  }

  objc_storeStrong(&constantkAFAssistantErrorDomain, *v0);
  getkAFAssistantErrorDomain = kAFAssistantErrorDomainFunction;
  v1 = constantkAFAssistantErrorDomain;

  return v1;
}

void *__AssistantServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 2);
  AssistantServicesLibrary_sLib = result;
  return result;
}

Class initSACommandFailed()
{
  if (SAObjectsLibrary_sOnce != -1)
  {
    dispatch_once(&SAObjectsLibrary_sOnce, &__block_literal_global_70247);
  }

  result = objc_getClass("SACommandFailed");
  classSACommandFailed = result;
  getSACommandFailedClass = SACommandFailedFunction;
  return result;
}

Class initSABaseCommand()
{
  if (SAObjectsLibrary_sOnce != -1)
  {
    dispatch_once(&SAObjectsLibrary_sOnce, &__block_literal_global_70247);
  }

  result = objc_getClass("SABaseCommand");
  classSABaseCommand = result;
  getSABaseCommandClass = SABaseCommandFunction;
  return result;
}

Class initAceObject()
{
  if (SAObjectsLibrary_sOnce != -1)
  {
    dispatch_once(&SAObjectsLibrary_sOnce, &__block_literal_global_70247);
  }

  result = objc_getClass("AceObject");
  classAceObject = result;
  getAceObjectClass = AceObjectFunction;
  return result;
}

Class initSAGenericCommand()
{
  if (SAObjectsLibrary_sOnce != -1)
  {
    dispatch_once(&SAObjectsLibrary_sOnce, &__block_literal_global_70247);
  }

  result = objc_getClass("SAGenericCommand");
  classSAGenericCommand = result;
  getSAGenericCommandClass = SAGenericCommandFunction;
  return result;
}

Class initAFClientLite()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    dispatch_once(&AssistantServicesLibrary_sOnce, &__block_literal_global_17);
  }

  result = objc_getClass("AFClientLite");
  classAFClientLite = result;
  getAFClientLiteClass = AFClientLiteFunction;
  return result;
}

uint64_t WFKernelBootTime(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[1] = 0;
  *v9 = 0x1500000001;
  v7 = 16;
  v8[0] = 0;
  if (sysctl(v9, 2u, v8, &v7, 0, 0) < 0)
  {
    if (a1)
    {
      v3 = objc_alloc(MEMORY[0x1E696ABC0]);
      v4 = [v3 initWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      v5 = v4;
      result = 0;
      *a1 = v4;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = v8[0];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

id WFKernalBootDate()
{
  v3 = 0;
  v0 = WFKernelBootTime(&v3);
  v1 = 0;
  if (!v3)
  {
    v1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v0];
  }

  return v1;
}

uint64_t initSAAlarmDayOfWeekForString(void *a1)
{
  v1 = a1;
  if (SAObjectsLibrary_sOnce_70564 != -1)
  {
    dispatch_once(&SAObjectsLibrary_sOnce_70564, &__block_literal_global_70565);
  }

  v2 = dlsym(SAObjectsLibrary_sLib_70566, "SAAlarmDayOfWeekForString");
  softLinkSAAlarmDayOfWeekForString = v2;
  if (v2)
  {
    v3 = (v2)(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__SAObjectsLibrary_block_invoke_70570()
{
  result = dlopen("/System/Library/PrivateFrameworks/SAObjects.framework/SAObjects", 2);
  SAObjectsLibrary_sLib_70566 = result;
  return result;
}

BOOL WFImageRenderingModeFromINImageRenderingMode(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

id WFLoadAllSystemIntentActions(void *a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v37 = WFSingletonINExecutionFrameworkMapper();
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = WFInstalledAppsEnumerator();
  v36 = WFSupportedSystemIntentClasses();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v3;
  v39 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v39)
  {
    v38 = *v65;
    v43 = *MEMORY[0x1E696E560];
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v65 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v64 + 1) + 8 * i);
        v6 = [v5 in2_supportedIntents];
        v7 = [v5 bundleIdentifier];
        v8 = [v7 length];

        if (v8)
        {
          v41 = i;
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __WFLoadAllSystemIntentActions_block_invoke;
          v62[3] = &unk_1E837F170;
          v45 = v36;
          v63 = v45;
          v9 = [v6 objectsPassingTest:v62];

          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v59;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v59 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = _WFCreateSystemIntentActionWithIntentClassName(*(*(&v58 + 1) + 8 * j), v5, 0, v1);
                if (v15)
                {
                  [v2 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v58 objects:v70 count:16];
            }

            while (v12);
          }

          v40 = v10;

          v16 = [v5 bundleIdentifier];
          v17 = [v37 performSelector:sel_extensionBundleIdentifiersForSystemAppIdentifier_ withObject:v16];

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v42 = v17;
          v46 = [v42 countByEnumeratingWithState:&v54 objects:v69 count:16];
          if (v46)
          {
            v44 = *v55;
            do
            {
              for (k = 0; k != v46; ++k)
              {
                if (*v55 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                v19 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:*(*(&v54 + 1) + 8 * k) error:0];
                v20 = [v19 if_extensionAttributesDictionary];
                v21 = MEMORY[0x1E695DFD8];
                v47 = v20;
                v22 = [v20 objectForKeyedSubscript:v43];
                if (v22)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v23 = v22;
                  }

                  else
                  {
                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                }

                v24 = v23;

                v25 = [v21 setWithArray:v24];

                v52[0] = MEMORY[0x1E69E9820];
                v52[1] = 3221225472;
                v52[2] = __WFLoadAllSystemIntentActions_block_invoke_2;
                v52[3] = &unk_1E837F170;
                v53 = v45;
                v26 = [v25 objectsPassingTest:v52];

                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v27 = v26;
                v28 = [v27 countByEnumeratingWithState:&v48 objects:v68 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v49;
                  do
                  {
                    for (m = 0; m != v29; ++m)
                    {
                      if (*v49 != v30)
                      {
                        objc_enumerationMutation(v27);
                      }

                      v32 = _WFCreateSystemIntentActionWithIntentClassName(*(*(&v48 + 1) + 8 * m), v19, v5, v1);
                      if (v32)
                      {
                        [v2 addObject:v32];
                      }
                    }

                    v29 = [v27 countByEnumeratingWithState:&v48 objects:v68 count:16];
                  }

                  while (v29);
                }
              }

              v46 = [v42 countByEnumeratingWithState:&v54 objects:v69 count:16];
            }

            while (v46);
          }

          v6 = v40;
          i = v41;
        }
      }

      v39 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v39);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v2;
}

id WFSingletonINExecutionFrameworkMapper()
{
  if (WFSingletonINExecutionFrameworkMapper_onceToken != -1)
  {
    dispatch_once(&WFSingletonINExecutionFrameworkMapper_onceToken, &__block_literal_global_70732);
  }

  v1 = WFSingletonINExecutionFrameworkMapper_frameworkMapper;

  return v1;
}

WFHandleSystemIntentAction *_WFCreateSystemIntentActionWithIntentClassName(void *a1, void *a2, void *a3, void *a4)
{
  v45[2] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = 0;
  if (v7 && v8)
  {
    v12 = NSClassFromString(v7);
    v13 = MEMORY[0x1E696AEC0];
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v8;
    }

    v15 = [v14 bundleIdentifier];
    v40 = [v13 stringWithFormat:@"%@.%@", v15, v7];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v17 = objc_alloc(MEMORY[0x1E696E890]);
    v18 = [v8 bundleIdentifier];
    if (isKindOfClass)
    {
      v19 = [v17 initWithIntentClassName:v7 extensionBundleId:v18];
    }

    else
    {
      v19 = [v17 initWithIntentClassName:v7 launchableAppBundleId:v18];
    }

    v20 = v19;

    v39 = v20;
    v21 = [WFIntentDescriptorParameterState serializedRepresentationFromValue:v20];
    v44[0] = @"Discoverable";
    v44[1] = @"Discontinued";
    v45[0] = MEMORY[0x1E695E110];
    v45[1] = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v38 = v9;
    if (v9)
    {
      v23 = v10;
      v24 = [objc_alloc(MEMORY[0x1E696E720]) initWithBundleRecord:v9];
      v25 = v12;
      v26 = [v22 mutableCopy];
      v27 = [v24 serializedRepresentation];
      [v26 setObject:v27 forKey:@"DisplayableAppDefinition"];

      v28 = [v26 copy];
      v12 = v25;

      v10 = v23;
      v22 = v28;
    }

    v41 = v10;
    v29 = [v10 defaultActionDefinition];
    v30 = [v29 definitionByAddingEntriesInDictionary:v22];

    v31 = [WFHandleSystemIntentAction alloc];
    v42 = @"IntentAppDefinition";
    v43 = v21;
    v32 = v21;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v34 = [(objc_class *)v12 intentDescription];
    v35 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    v11 = [(WFHandleSystemIntentAction *)v31 initWithIdentifier:v40 definition:v30 serializedParameters:v33 intentDescription:v34 stringLocalizer:v35];

    v10 = v41;
    v9 = v38;
  }

  v36 = *MEMORY[0x1E69E9840];

  return v11;
}

void __WFSingletonINExecutionFrameworkMapper_block_invoke()
{
  v0 = objc_alloc_init(NSClassFromString(&cfstr_Inexecutionfra.isa));
  v1 = WFSingletonINExecutionFrameworkMapper_frameworkMapper;
  WFSingletonINExecutionFrameworkMapper_frameworkMapper = v0;
}

id WFGetSystemIntentActionForBundleIdentifierAndIntentClassName(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  if (v8)
  {
    v30 = v7;
    v31 = v6;
    v32 = v5;
    v9 = WFSingletonINExecutionFrameworkMapper();
    v10 = [v8 in2_supportedIntents];
    v29 = v8;
    v11 = [v8 bundleIdentifier];
    v28 = v9;
    v12 = [v9 performSelector:sel_extensionBundleIdentifiersForSystemAppIdentifier_ withObject:v11];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      v16 = *MEMORY[0x1E696E560];
      do
      {
        v17 = 0;
        v18 = v10;
        do
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:*(*(&v34 + 1) + 8 * v17) error:0];
          v20 = [v19 if_extensionAttributesDictionary];
          v21 = [v20 objectForKeyedSubscript:v16];
          if (v21)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          v24 = [v18 mutableCopy];
          [v24 addObjectsFromArray:v23];

          v10 = [v24 copy];
          ++v17;
          v18 = v10;
        }

        while (v14 != v17);
        v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v14);
    }

    v6 = v31;
    if ([v10 containsObject:v31])
    {
      v8 = v29;
      v7 = v30;
      v25 = _WFCreateSystemIntentActionWithIntentClassName(v31, v29, 0, v30);
      v5 = v32;
    }

    else
    {
      v25 = 0;
      v5 = v32;
      v8 = v29;
      v7 = v30;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t WFREPBErrorReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v21 = PBReaderReadString();
        v22 = 16;
LABEL_36:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_41;
      }

      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_40;
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

LABEL_40:
      *(a1 + 8) = v20;
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v21 = PBReaderReadString();
      v22 = 24;
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

        goto LABEL_41;
      }

      v21 = PBReaderReadString();
      v22 = 32;
    }

    goto LABEL_36;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__71147(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFPBAutomatorWorkflowActionMigrationEventReadFrom(uint64_t a1, void *a2)
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
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_35;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_35:
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 8;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_36;
          }

          v14 = PBReaderReadString();
          v15 = 16;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBMoveShortcutEventReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___WFPBMoveShortcutEvent__source;
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

    v13 = &OBJC_IVAR___WFPBMoveShortcutEvent__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id WFSerializedVariableObject(void *a1)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = WFSerializationNameMigrations();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __WFSerializedVariableObject_block_invoke;
  v13[3] = &__block_descriptor_40_e25_B32__0__NSString_8_16_B24lu32l8;
  v13[4] = v2;
  v4 = [v3 keysOfEntriesPassingTest:v13];
  v5 = [v4 anyObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = NSStringFromClass(v2);
  }

  v8 = v7;

  v14[0] = @"WFSerializationType";
  v14[1] = @"Value";
  v15[0] = v8;
  v9 = [v1 serializedRepresentation];

  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id WFSerializationNameMigrations()
{
  if (WFSerializationNameMigrations_onceToken != -1)
  {
    dispatch_once(&WFSerializationNameMigrations_onceToken, &__block_literal_global_71486);
  }

  v1 = WFSerializationNameMigrations__serializationNameMigrations;

  return v1;
}

void __WFSerializationNameMigrations_block_invoke()
{
  v4[5] = *MEMORY[0x1E69E9840];
  v3[0] = @"WFDictionaryFieldValue";
  v4[0] = objc_opt_class();
  v3[1] = @"WFTokenAttachmentParameterState";
  v4[1] = objc_opt_class();
  v3[2] = @"WFTokenStringParameterState";
  v4[2] = objc_opt_class();
  v3[3] = @"WFTextTokenAttachment";
  v4[3] = objc_opt_class();
  v3[4] = @"WFTextTokenString";
  v4[4] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = WFSerializationNameMigrations__serializationNameMigrations;
  WFSerializationNameMigrations__serializationNameMigrations = v0;

  v2 = *MEMORY[0x1E69E9840];
}

id WFDeserializedVariableObject(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 objectForKey:@"WFSerializationType"];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = WFSerializationNameMigrations();
  v10 = [v9 objectForKey:v8];
  if (!v10)
  {
    v10 = NSClassFromString(v8);
  }

  if ([(objc_class *)v10 instancesRespondToSelector:sel_initWithSerializedRepresentation_variableProvider_parameter_])
  {
    v11 = [v10 alloc];
    v12 = [v5 objectForKey:@"Value"];
    v13 = [v11 initWithSerializedRepresentation:v12 variableProvider:v6 parameter:v7];
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  return v13;
}

id WFEnforceClass_72101(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s could not map %@ to a content item class.", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1CA92396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72201(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA9240A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

id getWFBiomeReversalArbiterLogObject()
{
  if (getWFBiomeReversalArbiterLogObject_onceToken != -1)
  {
    dispatch_once(&getWFBiomeReversalArbiterLogObject_onceToken, &__block_literal_global_72232);
  }

  v1 = getWFBiomeReversalArbiterLogObject_log;

  return v1;
}

void __getWFBiomeReversalArbiterLogObject_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69E1140], "BiomeReversalArbiter");
  v1 = getWFBiomeReversalArbiterLogObject_log;
  getWFBiomeReversalArbiterLogObject_log = v0;
}

void sub_1CA924778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFREPBDialogRequestReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___WFREPBDialogRequest__runRequestIdentifier;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

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

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___WFREPBDialogRequest__dialogRequestData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBDeleteShortcutEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_36;
        }

        if (v13 == 3)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 1u;
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
              goto LABEL_44;
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

LABEL_44:
          *(a1 + 8) = v22;
          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_36;
          case 5:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_36;
          case 6:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_36:
            v23 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WFPBShowDialogEventReadFrom(uint64_t a1, void *a2)
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
      if (v13 >= 5)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E837F780[v13];
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

void sub_1CA9284B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1CA928E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73010(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WFPBSetupSuggestedAutomationEventReadFrom(uint64_t a1, void *a2)
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
              v31 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_50:
          *(a1 + 8) = v31;
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

            goto LABEL_51;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v35 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v35 & 0x7F) << v16;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              LOBYTE(v22) = 0;
              goto LABEL_46;
            }
          }

          v22 = (v18 != 0) & ~[a2 hasError];
LABEL_46:
          *(a1 + 32) = v22;
        }
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

LABEL_51:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *WFReadableTriggerNotificationLevel(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Day";
  }

  else
  {
    return off_1E837F8E0[a1 - 1];
  }
}

uint64_t WFPBActionButtonConfigurationEventReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = PBReaderReadString();
          v22 = 24;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v21 = PBReaderReadString();
          v22 = 32;
LABEL_36:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v21 = PBReaderReadString();
            v22 = 8;
            goto LABEL_36;
          case 4:
            v21 = PBReaderReadString();
            v22 = 16;
            goto LABEL_36;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_42;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_42:
            *(a1 + 40) = v20;
            goto LABEL_37;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_37:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id WFEnforceClass_74017(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s Import Question unable to find parameter %{public}@ on action %{public}@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1CA933674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAVSpeechSynthesisVoiceClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __AVFoundationLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E837FAE0;
    v9 = 0;
    AVFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AVFoundationLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFSpeakTextLanguagePickerParameterMigration.m" lineNumber:18 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("AVSpeechSynthesisVoice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAVSpeechSynthesisVoiceClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"WFSpeakTextLanguagePickerParameterMigration.m" lineNumber:19 description:{@"Unable to find class %s", "AVSpeechSynthesisVoice"}];

LABEL_10:
    __break(1u);
  }

  getAVSpeechSynthesisVoiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AVFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CA934654(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

id WFErrorFromSecurityOSStatus(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = SecCopyErrorMessageString(a1, 0);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown error %d", a1];
  }

  v5 = v4;

  v6 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696A768];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v6 errorWithDomain:v7 code:a1 userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id WFShortcutSigningContextSigningCertificateChainFailureError(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"Failed to verify this shortcut");
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v5 = [v2 dictionaryWithDictionary:v4];

  if (v1)
  {
    [v5 setObject:v1 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v6 = MEMORY[0x1E696ABC0];
  v7 = [v5 copy];
  v8 = [v6 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id WFCombinedHashStringFromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = v2 - 1;
    do
    {
      if (!v4)
      {
        v4 = objc_opt_new();
      }

      v7 = [v1 objectAtIndexedSubscript:v5];
      v16 = 0;
      v15 = 0;
      v8 = [v7 UTF8String];
      v9 = [v7 length];
      v10 = [MEMORY[0x1E695DF88] dataWithCapacity:v9 >> 1];
      if (v9)
      {
        for (i = 0; i < v9; i += 2)
        {
          *__str = *(v8 + i);
          v16 = strtoul(__str, 0, 16);
          [v10 appendBytes:&v16 length:1];
        }
      }

      if (v10)
      {
        v12 = [v10 base64EncodedStringWithOptions:0];
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        [v4 appendString:v12];
      }

      if (v5 != v6)
      {
        [v4 appendString:{@", "}];
      }

      ++v5;
    }

    while (v5 != v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1CA935914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74659(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1CA936C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  (*(v30 + 16))(v30);
  _Unwind_Resume(a1);
}

void WFAppleIDParseValidationRecordData(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  cf = 0;
  v21 = 0;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = dispatch_get_global_queue(0, 0);
  }

  v9 = v8;
  AppleIDValidationShortcutSigningPolicy = SecPolicyCreateAppleIDValidationShortcutSigningPolicy();
  if (AppleIDValidationShortcutSigningPolicy)
  {
    v11 = SecCMSVerifyCopyDataAndAttributes();
    if (v11)
    {
      v15 = v11;
      v16 = getWFSecurityLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "WFAppleIDParseValidationRecordData";
        v24 = 1024;
        v25 = v15;
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Signed Shortcut File Apple Account Parsing Validation Record: SecCMSVerifyCopyDataAndAttributes failed with error %d", buf, 0x12u);
      }

      v12 = 201211;
    }

    else
    {
      v12 = 201211;
      v16 = getWFSecurityLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "WFAppleIDParseValidationRecordData";
        _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Signed Shortcut File Apple Account Parsing Validation Record: SecCMSVerifyCopyDataAndAttributes returned NULL attachedRecordContents", buf, 0xCu);
      }
    }
  }

  else
  {
    v14 = getWFSecurityLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "WFAppleIDParseValidationRecordData";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Signed Shortcut File Apple Account Parsing Validation Record: SecPolicyCreateAppleIDValidationShortcutSigningPolicy failed", buf, 0xCu);
    }

    v12 = -6762;
  }

  if (AppleIDValidationShortcutSigningPolicy)
  {
    CFRelease(AppleIDValidationShortcutSigningPolicy);
  }

  if (v7)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __WFAppleIDParseValidationRecordData_block_invoke_2;
    block[3] = &unk_1E837FC28;
    v18 = v7;
    v19 = v12;
    dispatch_async(v9, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __WFAppleIDParseValidationRecordData_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = v4;
  if (a3 == 1 || a3 == 4)
  {
    Int64 = CFDictionaryGetInt64();
    if ((Int64 - 101) > 0xFFFFFFFFFFFFFF9BLL)
    {
      if (v6)
      {
        v6[2](v6, v5, 0);
      }

      goto LABEL_12;
    }

    v11 = Int64;
    v9 = 201212;
    v8 = getWFSecurityLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "handleValidationRecordTrustResult";
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Signed Shortcut File Apple Account Parsing Validation Record: Unsupported version %ld (must be between 1 and 100)", &v12, 0x16u);
    }
  }

  else
  {
    v8 = getWFSecurityLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "handleValidationRecordTrustResult";
      v14 = 1024;
      LODWORD(v15) = a3;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Signed Shortcut File Apple Account Parsing Validation Record: Unexpected trust result %d", &v12, 0x12u);
    }

    v9 = 201214;
  }

  if (v6)
  {
    v6[2](v6, 0, v9);
  }

LABEL_12:

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t WFREPBAceCommandRequestReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadData();
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

id WFEnforceClass_74974(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315906;
      v10 = "WFEnforceClass";
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = a2;
      v6 = v14;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_FAULT, "%s [WFContactSubstitutableState] Could not cast parameter state to WFContactFieldEntry: %@", &v9, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t WFREPBContentItemReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
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

uint64_t WFLocalizedNumberFormatStyle()
{
  v0 = WFLocalizedStringWithKey(@"MONTHLY_REPEAT_NUMBER_FORMAT_STYLE", @"ORDINAL");
  if ([v0 isEqualToString:@"ORDINAL"])
  {
    v1 = 6;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id WFShortcutsPersistentStoreURL()
{
  v0 = [MEMORY[0x1E695DFF8] wf_shortcutsDirectoryURL];
  if (([v0 isFileURL] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSURL * _Nonnull WFShortcutsPersistentStoreURL(void)"];
    [v3 handleFailureInFunction:v4 file:@"NSPersistentStoreDescription+Workflow.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"directoryURL.fileURL"}];
  }

  v1 = [v0 URLByAppendingPathComponent:@"Shortcuts.sqlite" isDirectory:0];

  return v1;
}

void sub_1CA93D3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFPBAutomatorWorkflowMigrationErrorEventReadFrom(uint64_t a1, void *a2)
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
        v14 = off_1E837FEF8[v13];
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

uint64_t WFISEligibleForSettingsUpdaterAction(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 properties];
  v6 = [v5 count];

  v7 = [v4 systemProtocolMetadata];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69AC2D8]];

  v9 = [v4 attributionBundleIdentifier];

  v10 = [v9 isEqualToString:*MEMORY[0x1E69E0F00]];
  v11 = WFBundleWithAppSettingsIdentifiers();
  v12 = [v11 containsObject:v3];

  if (v8)
  {
    v13 = v6 == 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  return v14 & (v10 | v12);
}

void __WFLinkActionBundleIdentifierOverrides_block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E0E50];
  v5[0] = @"com.apple.springboard.OpenCamera";
  v5[1] = @"com.apple.AccessibilityUIServer.WFGetAppSettingAction";
  v1 = *MEMORY[0x1E69E0F00];
  v6[0] = v0;
  v6[1] = v1;
  v5[2] = @"com.apple.AccessibilityUIServer.WFAppSettingEntityUpdaterAction";
  v6[2] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = WFLinkActionBundleIdentifierOverrides_linkActionBundleIdentifierOverrides;
  WFLinkActionBundleIdentifierOverrides_linkActionBundleIdentifierOverrides = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id WFBundleWithAppSettingsIdentifiers()
{
  v11[13] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = *MEMORY[0x1E69E0EA8];
  v11[0] = *MEMORY[0x1E69E0F80];
  v11[1] = v1;
  v2 = *MEMORY[0x1E69E0F78];
  v11[2] = *MEMORY[0x1E69E0EE0];
  v11[3] = v2;
  v3 = *MEMORY[0x1E69E0F00];
  v11[4] = *MEMORY[0x1E69E0FA8];
  v11[5] = v3;
  v4 = *MEMORY[0x1E69E0E40];
  v11[6] = *MEMORY[0x1E69E0E80];
  v11[7] = v4;
  v5 = *MEMORY[0x1E69E0F08];
  v11[8] = *MEMORY[0x1E69E0E48];
  v11[9] = v5;
  v6 = *MEMORY[0x1E69E0F98];
  v11[10] = *MEMORY[0x1E69E0F10];
  v11[11] = v6;
  v11[12] = @"com.apple.AccessibilityUIServer";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:13];
  v8 = [v0 initWithArray:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id WFUpdatableEntityValueTypeFromEntityUpdaterAction(void *a1)
{
  v1 = a1;
  v2 = [v1 systemProtocols];
  v3 = [MEMORY[0x1E69ACA50] propertyUpdaterProtocol];
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    v5 = [v1 parameters];
    v6 = [v5 if_firstObjectPassingTest:&__block_literal_global_76582];
    v7 = [v6 valueType];

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __WFUpdatableEntityValueTypeFromEntityUpdaterAction_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = +[_TtC11WorkflowKit22WFEntityUpdatingAction entityParameterName];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

id WFEffectiveActionIdentifiersForActionMetadata(void *a1, void *a2, void *a3)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 systemProtocols];
  v9 = [MEMORY[0x1E69ACA50] propertyUpdaterProtocol];
  v10 = [v8 containsObject:v9];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = WFUpdatableEntityValueTypeFromEntityUpdaterAction(v5);
  v12 = [v11 identifier];
  if (![v12 length])
  {

LABEL_7:
    v11 = [v5 identifier];
    v21 = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    goto LABEL_8;
  }

  v24[0] = v12;
  v24[1] = @"UpdatableEntity";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v14 = [v13 componentsJoinedByString:@"-"];

  v23 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v16 = [v7 entityWithIdentifier:v12 fromBundleIdentifier:v6];
  if (WFISEligibleForSettingsUpdaterAction(v16, v6))
  {
    v22[0] = @"WFAppSettingEntityUpdaterAction";
    v22[1] = @"WFGetAppSettingAction";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v18 = [v15 arrayByAddingObjectsFromArray:v17];

    v15 = v18;
  }

LABEL_8:
  v19 = *MEMORY[0x1E69E9840];

  return v15;
}