id __atxlog_handle_blending()
{
  if (__atxlog_handle_blending_onceToken != -1)
  {
    __atxlog_handle_blending_cold_1();
  }

  v1 = __atxlog_handle_blending_log;

  return v1;
}

uint64_t ATXPBSuggestionLayoutReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v61) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 116) |= 4u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              v18 = [a2 data];
              [v18 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v61 & 0x7F) << v13;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v11 = v14++ >= 9;
            if (v11)
            {
              v19 = 0;
LABEL_99:
              *(a1 + 40) = v19;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          goto LABEL_99;
        case 2u:
          *(a1 + 116) |= 1u;
          v61 = 0;
          v54 = [a2 position] + 8;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 8, v55 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v61 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v61;
          goto LABEL_90;
        case 3u:
          v27 = PBReaderReadString();
          v28 = 96;
          goto LABEL_78;
        case 4u:
          if ((ATXPBSuggestionLayoutReadFrom_cold_7() & 1) == 0)
          {
            return v61;
          }

          goto LABEL_90;
        case 5u:
          if ((ATXPBSuggestionLayoutReadFrom_cold_6() & 1) == 0)
          {
            return v61;
          }

          goto LABEL_90;
        case 6u:
          if ((ATXPBSuggestionLayoutReadFrom_cold_5() & 1) == 0)
          {
            return v61;
          }

          goto LABEL_90;
        case 7u:
          if ((ATXPBSuggestionLayoutReadFrom_cold_4() & 1) == 0)
          {
            return v61;
          }

          goto LABEL_90;
        case 8u:
          if ((ATXPBSuggestionLayoutReadFrom_cold_3() & 1) == 0)
          {
            return v61;
          }

          goto LABEL_90;
        case 9u:
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 116) |= 0x40u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v61 & 0x7F) << v41;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_88;
            }
          }

          v26 = (v43 != 0) & ~[a2 hasError];
LABEL_88:
          v58 = 115;
          goto LABEL_89;
        case 0xAu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 116) |= 8u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v61 & 0x7F) << v35;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_86;
            }
          }

          v26 = (v37 != 0) & ~[a2 hasError];
LABEL_86:
          v58 = 112;
          goto LABEL_89;
        case 0xBu:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 116) |= 0x20u;
          while (1)
          {
            LOBYTE(v61) = 0;
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
              LOBYTE(v26) = 0;
              goto LABEL_84;
            }
          }

          v26 = (v31 != 0) & ~[a2 hasError];
LABEL_84:
          v58 = 114;
          goto LABEL_89;
        case 0xCu:
          v27 = PBReaderReadString();
          v28 = 104;
          goto LABEL_78;
        case 0xDu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 116) |= 0x10u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v61 & 0x7F) << v20;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              LOBYTE(v26) = 0;
              goto LABEL_82;
            }
          }

          v26 = (v22 != 0) & ~[a2 hasError];
LABEL_82:
          v58 = 113;
LABEL_89:
          *(a1 + v58) = v26;
          goto LABEL_90;
        case 0xEu:
          v27 = PBReaderReadString();
          v28 = 88;
LABEL_78:
          v56 = *(a1 + v28);
          *(a1 + v28) = v27;

          goto LABEL_90;
        case 0xFu:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          *(a1 + 116) |= 2u;
          break;
        case 0x10u:
          if ((ATXPBSuggestionLayoutReadFrom_cold_2() & 1) == 0)
          {
            return v61;
          }

          goto LABEL_90;
        case 0x11u:
          if (ATXPBSuggestionLayoutReadFrom_cold_1())
          {
            goto LABEL_90;
          }

          return v61;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_90;
      }

      while (1)
      {
        LOBYTE(v61) = 0;
        v50 = [a2 position] + 1;
        if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
        {
          v52 = [a2 data];
          [v52 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v49 |= (v61 & 0x7F) << v47;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v47 += 7;
        v11 = v48++ >= 9;
        if (v11)
        {
          v53 = 0;
          goto LABEL_95;
        }
      }

      v53 = [a2 hasError] ? 0 : v49;
LABEL_95:
      *(a1 + 16) = v53;
LABEL_90:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBProactiveSuggestionScoreSpecificationReadFrom(uint64_t a1, void *a2)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v27 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v27 & 0x7F) << v15;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_36;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_36:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v25 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v25 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v25;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBProactiveSuggestionUISpecificationReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(ATXPBProactiveSuggestionLayoutConfig);
  [(ATXPBProactiveSuggestionUISpecification *)a1 addPreferredLayoutConfigs:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && ATXPBProactiveSuggestionLayoutConfigReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

id ATXCreateProactiveSuggestionClientModelXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A45B38];
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_class();
  v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v4 forSelector:sel_clientModelUpdatedSuggestions_feedbackMetadata_clientModelId_completion_ argumentIndex:0 ofReply:0];

  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  [v0 setClasses:v8 forSelector:sel_retrieveSuggestionsForClientModelId_reply_ argumentIndex:0 ofReply:1];

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v9);
  [v0 setClasses:v10 forSelector:sel_generateLayoutForRequest_reply_ argumentIndex:0 ofReply:0];

  v11 = objc_autoreleasePoolPush();
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v11);
  [v0 setClasses:v12 forSelector:sel_generateLayoutForRequest_reply_ argumentIndex:0 ofReply:1];

  v13 = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v13);
  [v0 setClasses:v14 forSelector:sel_generateRankedSuggestionsForRequest_limit_reply_ argumentIndex:0 ofReply:0];

  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E695DFD8]);
  v17 = objc_opt_class();
  v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v15);
  [v0 setClasses:v18 forSelector:sel_generateRankedSuggestionsForRequest_limit_reply_ argumentIndex:0 ofReply:1];

  return v0;
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

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ATXPBProactiveSuggestionClientModelSpecificationReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 24) = v23;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
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
          v15 = 8;
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

uint64_t OUTLINED_FUNCTION_21()
{

  return ATXPBProactiveSuggestionReadFrom(v0, v1);
}

uint64_t ATXPBProactiveSuggestionUISpecificationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v61) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v61 & 0x7F) << v5;
        if ((v61 & 0x80) == 0)
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
        if (v13 <= 8)
        {
          if (v13 == 7)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              LOBYTE(v61) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v61 & 0x7F) << v32;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v11 = v33++ >= 9;
              if (v11)
              {
                LOBYTE(v24) = 0;
                goto LABEL_86;
              }
            }

            v24 = (v34 != 0) & ~[a2 hasError];
LABEL_86:
            v53 = 66;
          }

          else
          {
            if (v13 != 8)
            {
              goto LABEL_99;
            }

            v25 = 0;
            v26 = 0;
            v27 = 0;
            *(a1 + 68) |= 0x40u;
            while (1)
            {
              LOBYTE(v61) = 0;
              v28 = [a2 position] + 1;
              if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
              {
                v30 = [a2 data];
                [v30 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v27 |= (v61 & 0x7F) << v25;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v11 = v26++ >= 9;
              if (v11)
              {
                LOBYTE(v24) = 0;
                goto LABEL_90;
              }
            }

            v24 = (v27 != 0) & ~[a2 hasError];
LABEL_90:
            v53 = 67;
          }

          goto LABEL_93;
        }

        if (v13 == 9)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v61 & 0x7F) << v46;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              v52 = 0;
              goto LABEL_97;
            }
          }

          if ([a2 hasError])
          {
            v52 = 0;
          }

          else
          {
            v52 = v48;
          }

LABEL_97:
          *(a1 + 24) = v52;
        }

        else
        {
          if (v13 == 10)
          {
            *(a1 + 68) |= 2u;
            v61 = 0;
            v44 = [a2 position] + 8;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
            {
              v55 = [a2 data];
              [v55 getBytes:&v61 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v56 = v61;
            v57 = 16;
          }

          else
          {
            if (v13 != 11)
            {
              goto LABEL_99;
            }

            *(a1 + 68) |= 1u;
            v61 = 0;
            v16 = [a2 position] + 8;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v61 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v56 = v61;
            v57 = 8;
          }

          *(a1 + v57) = v56;
        }
      }

      else if (v13 > 3)
      {
        if (v13 == 5)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 68) |= 0x10u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v61 & 0x7F) << v38;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              LOBYTE(v24) = 0;
              goto LABEL_88;
            }
          }

          v24 = (v40 != 0) & ~[a2 hasError];
LABEL_88:
          v53 = 65;
          goto LABEL_93;
        }

        if (v13 == 6)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            LOBYTE(v61) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v61 & 0x7F) << v18;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              LOBYTE(v24) = 0;
              goto LABEL_92;
            }
          }

          v24 = (v20 != 0) & ~[a2 hasError];
LABEL_92:
          v53 = 64;
LABEL_93:
          *(a1 + v53) = v24;
          goto LABEL_106;
        }

        if (v13 != 4)
        {
LABEL_99:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_106;
        }

        if ((ATXPBProactiveSuggestionUISpecificationReadFrom_cold_1(a1, &v60, a2, &v61) & 1) == 0)
        {
          return v61;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 56;
            break;
          case 2:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          default:
            goto LABEL_99;
        }

        v31 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_106:
      v59 = [a2 position];
    }

    while (v59 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_6_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + a2) = *(v2 + a2);
  v4 = *(result + *(v3 + 1108));
  return result;
}

uint64_t ATXPBProactiveSuggestionLayoutConfigReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBSuggestionLayoutReadFrom_cold_7()
{
  OUTLINED_FUNCTION_3_1();
  v2 = objc_alloc_init(ATXPBProactiveSuggestion);
  v3 = OUTLINED_FUNCTION_5_0();
  [(ATXPBSuggestionLayout *)v3 addOneByOneSuggestions:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_15();
  }
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void OUTLINED_FUNCTION_23(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t ATXPBProactiveSuggestionExecutableSpecificationReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadData();
            v15 = 16;
            break;
          case 2:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              v34 = 0;
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
                v30 = 0;
                goto LABEL_58;
              }
            }

            if ([a2 hasError])
            {
              v30 = 0;
            }

            else
            {
              v30 = v26;
            }

LABEL_58:
            *(a1 + 8) = v30;
            goto LABEL_49;
          case 3:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          default:
            goto LABEL_36;
        }

        goto LABEL_48;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_48;
      }

      if (v13 != 6)
      {
LABEL_36:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_49;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 52) |= 2u;
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
          goto LABEL_54;
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

LABEL_54:
      *(a1 + 48) = v22;
LABEL_49:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 32;
LABEL_48:
    v31 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_49;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBProactiveSuggestionReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v14 = *(a1 + 40);
          *(a1 + 40) = v15;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ATXPBProactiveSuggestionClientModelSpecification);
          objc_storeStrong((a1 + 8), v14);
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionClientModelSpecificationReadFrom(v14, a2))
          {
LABEL_42:

            return 0;
          }

LABEL_34:
          PBReaderRecallMark();
LABEL_36:

          goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v14 = objc_alloc_init(ATXPBProactiveSuggestionExecutableSpecification);
            objc_storeStrong((a1 + 16), v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionExecutableSpecificationReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          case 4:
            v14 = objc_alloc_init(ATXPBProactiveSuggestionUISpecification);
            objc_storeStrong((a1 + 32), v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionUISpecificationReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_34;
          case 5:
            v14 = objc_alloc_init(ATXPBProactiveSuggestionScoreSpecification);
            objc_storeStrong((a1 + 24), v14);
            v18 = 0;
            v19 = 0;
            if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionScoreSpecificationReadFrom(v14, a2))
            {
              goto LABEL_42;
            }

            goto LABEL_34;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBRequestForInteractionSuggestionsReadFrom(uint64_t a1, void *a2)
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
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_30;
        }

        if (v13 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 24;
LABEL_30:
          v18 = *(a1 + v17);
          *(a1 + v17) = v16;

          goto LABEL_31;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = 16;
            goto LABEL_30;
          case 4:
            v16 = PBReaderReadData();
            v17 = 32;
            goto LABEL_30;
          case 5:
            *(a1 + 48) |= 1u;
            v22 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v22;
            goto LABEL_31;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_31:
      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __atxlog_handle_xpc()
{
  if (__atxlog_handle_xpc_onceToken != -1)
  {
    __atxlog_handle_xpc_cold_1();
  }

  v1 = __atxlog_handle_xpc_log;

  return v1;
}

id ATXProactiveSuggestionRealTimeProviderXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A51AE8];
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v2 forSelector:sel_suggestionsForInteractionSuggestionRequest_clientModelId_reply_ argumentIndex:0 ofReply:0];

  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v3);
  [v0 setClasses:v4 forSelector:sel_suggestionsForInteractionSuggestionRequest_clientModelId_reply_ argumentIndex:0 ofReply:1];

  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v5);
  [v0 setClasses:v6 forSelector:sel_suggestionsForContextualActionSuggestionRequest_clientModelId_reply_ argumentIndex:0 ofReply:0];

  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v7);
  [v0 setClasses:v8 forSelector:sel_suggestionsForContextualActionSuggestionRequest_clientModelId_reply_ argumentIndex:0 ofReply:1];

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v9);
  [v0 setClasses:v10 forSelector:sel_suggestionsForIntentSuggestionRequest_clientModelId_reply_ argumentIndex:0 ofReply:0];

  v11 = objc_autoreleasePoolPush();
  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0, 0}];
  objc_autoreleasePoolPop(v11);
  [v0 setClasses:v12 forSelector:sel_suggestionsForIntentSuggestionRequest_clientModelId_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

uint64_t ATXPBResponseForRequestForSuggestionsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 10)
        {
          if (v13 == 11)
          {
            v14 = objc_alloc_init(ATXPBRequestForContextualActionSuggestions);
            objc_storeStrong((a1 + 8), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ATXPBRequestForContextualActionSuggestionsReadFrom(v14, a2))
            {
LABEL_61:

              return 0;
            }

            goto LABEL_52;
          }

          if (v13 == 12)
          {
            v14 = objc_alloc_init(ATXPBRequestForIntentSuggestions);
            objc_storeStrong((a1 + 32), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ATXPBRequestForIntentSuggestionsReadFrom(v14, a2))
            {
              goto LABEL_61;
            }

            goto LABEL_52;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v22 = PBReaderReadData();
            v23 = 16;
            goto LABEL_49;
          }

          if (v13 == 10)
          {
            v14 = objc_alloc_init(ATXPBRequestForInteractionSuggestions);
            objc_storeStrong((a1 + 40), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !ATXPBRequestForInteractionSuggestionsReadFrom(v14, a2))
            {
              goto LABEL_61;
            }

            goto LABEL_52;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v22 = PBReaderReadData();
          v23 = 24;
          goto LABEL_49;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v27 & 0x7F) << v15;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_58;
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

LABEL_58:
          *(a1 + 48) = v21;
          goto LABEL_59;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = PBReaderReadString();
          v23 = 64;
LABEL_49:
          v24 = *(a1 + v23);
          *(a1 + v23) = v22;

          goto LABEL_59;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(ATXPBProactiveSuggestion);
          [a1 addSuggestions:v14];
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionReadFrom(v14, a2))
          {
            goto LABEL_61;
          }

LABEL_52:
          PBReaderRecallMark();

          goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBInfoSuggestionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v43) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
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

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 48;
          goto LABEL_57;
        case 2u:
          v13 = PBReaderReadString();
          v14 = 112;
          goto LABEL_57;
        case 3u:
          v13 = PBReaderReadString();
          v14 = 120;
          goto LABEL_57;
        case 4u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 128) |= 4u;
          while (1)
          {
            LOBYTE(v43) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v43 & 0x7F) << v27;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_65;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v29;
          }

LABEL_65:
          v36 = 24;
          goto LABEL_66;
        case 5u:
          v13 = PBReaderReadString();
          v14 = 104;
          goto LABEL_57;
        case 6u:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_57;
        case 7u:
          v13 = PBReaderReadData();
          v14 = 56;
          goto LABEL_57;
        case 8u:
          v13 = PBReaderReadData();
          v14 = 72;
          goto LABEL_57;
        case 9u:
          v13 = PBReaderReadString();
          v14 = 96;
          goto LABEL_57;
        case 0xAu:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 128) |= 1u;
          break;
        case 0xBu:
          *(a1 + 128) |= 8u;
          v43 = 0;
          v33 = [a2 position] + 8;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v38 = v43;
          v39 = 32;
          goto LABEL_73;
        case 0xCu:
          *(a1 + 128) |= 0x10u;
          v43 = 0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v38 = v43;
          v39 = 40;
          goto LABEL_73;
        case 0xDu:
          *(a1 + 128) |= 2u;
          v43 = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v38 = v43;
          v39 = 16;
LABEL_73:
          *(a1 + v39) = v38;
          goto LABEL_74;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_57;
        case 0xFu:
          v13 = PBReaderReadData();
          v14 = 64;
LABEL_57:
          v35 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_74;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_74;
      }

      while (1)
      {
        LOBYTE(v43) = 0;
        v22 = [a2 position] + 1;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
        {
          v24 = [a2 data];
          [v24 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v21 |= (v43 & 0x7F) << v19;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v19 += 7;
        v11 = v20++ >= 9;
        if (v11)
        {
          v25 = 0;
          goto LABEL_61;
        }
      }

      v25 = [a2 hasError] ? 0 : v21;
LABEL_61:
      v36 = 8;
LABEL_66:
      *(a1 + v36) = v25;
LABEL_74:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void OUTLINED_FUNCTION_0_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t ____atxlog_handle_blending_block_invoke()
{
  __atxlog_handle_blending_log = os_log_create("com.apple.duetexpertd.atx", "blending");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ATXPBSpotlightSuggestionLayoutReadFrom(void *a1, void *a2)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        if ((v12 & 7) == 2)
        {
          v26 = 0;
          v27 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v18 = [a2 position];
            if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v28 = 0;
            v19 = [a2 position] + 8;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v28 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedDoubleAdd();
          }

          PBReaderRecallMark();
        }

        else
        {
          v26 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v26 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedDoubleAdd();
        }
      }

      else if (v13 == 2)
      {
        v16 = objc_alloc_init(ATXPBSuggestionCollection);
        [a1 addCollections:v16];
        v26 = 0;
        v27 = 0;
        if (!PBReaderPlaceMark() || !ATXPBSuggestionCollectionReadFrom(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = a1[5];
        a1[5] = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBSuggestionCollectionReadFrom(char *a1, void *a2)
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
        v16 = objc_alloc_init(ATXPBProactiveSuggestion);
        [a1 addSuggestions:v16];
        v19[0] = 0;
        v19[1] = 0;
        if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionReadFrom(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_26;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 8;
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
    v15 = 16;
LABEL_25:
    v16 = *&a1[v15];
    *&a1[v15] = v14;
LABEL_26:

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

void sub_1DEFCC0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1DEFCC2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __atxlog_handle_blending_internal_cache()
{
  if (__atxlog_handle_blending_internal_cache_onceToken != -1)
  {
    __atxlog_handle_blending_internal_cache_cold_1();
  }

  v1 = __atxlog_handle_blending_internal_cache_log;

  return v1;
}

uint64_t ATXPBClientModelCacheUpdateReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_30;
          case 5:
            *(a1 + 56) |= 1u;
            v23 = 0;
            v18 = [a2 position] + 8;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v23;
            goto LABEL_41;
          case 6:
            v16 = objc_alloc_init(ATXPBResponseForRequestForSuggestions);
            objc_storeStrong((a1 + 32), v16);
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !ATXPBResponseForRequestForSuggestionsReadFrom(v16, a2))
            {
LABEL_43:

              return 0;
            }

            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_30;
          case 2:
            v16 = objc_alloc_init(ATXPBProactiveSuggestion);
            [a1 addSuggestions:v16];
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionReadFrom(v16, a2))
            {
              goto LABEL_43;
            }

LABEL_35:
            PBReaderRecallMark();

            goto LABEL_41;
          case 3:
            v14 = PBReaderReadData();
            v15 = 24;
LABEL_30:
            v17 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_41;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id __atxlog_handle_gi()
{
  if (__atxlog_handle_gi_onceToken != -1)
  {
    __atxlog_handle_gi_cold_1();
  }

  v1 = __atxlog_handle_gi_log;

  return v1;
}

uint64_t ATXPBSuggestionLayoutReadFrom_cold_5()
{
  OUTLINED_FUNCTION_3_1();
  v2 = objc_alloc_init(ATXPBProactiveSuggestion);
  v3 = OUTLINED_FUNCTION_5_0();
  [(ATXPBSuggestionLayout *)v3 addTwoByTwoSuggestions:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_15();
  }
}

uint64_t ATXPBSuggestionLayoutReadFrom_cold_4()
{
  OUTLINED_FUNCTION_3_1();
  v2 = objc_alloc_init(ATXPBProactiveSuggestion);
  v3 = OUTLINED_FUNCTION_5_0();
  [(ATXPBSuggestionLayout *)v3 addOneByFourSuggestions:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_15();
  }
}

uint64_t ATXPBShortcutsEditorEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v29[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29[0] & 0x7F) << v5;
        if ((v29[0] & 0x80) == 0)
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
          *(a1 + 48) |= 1u;
          v29[0] = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29[0];
          goto LABEL_50;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 48) |= 2u;
          while (1)
          {
            LOBYTE(v29[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v29 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v29[0] & 0x7F) << v15;
            if ((v29[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_47;
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

LABEL_47:
          *(a1 + 16) = v21;
          goto LABEL_50;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v22 = PBReaderReadString();
            v23 = *(a1 + 24);
            *(a1 + 24) = v22;

            goto LABEL_50;
          case 4:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addSuggestionUUIDs:v14];
            }

LABEL_38:

            goto LABEL_50;
          case 5:
            v14 = objc_alloc_init(ATXPBShortcutsEditorEventMetadata);
            objc_storeStrong((a1 + 32), v14);
            v29[0] = 0;
            v29[1] = 0;
            if (!PBReaderPlaceMark() || !ATXPBShortcutsEditorEventMetadataReadFrom(v14, a2))
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

LABEL_50:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBRequestForContextualActionSuggestionsReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      switch(v13)
      {
        case 4:
          v14 = PBReaderReadData();
          v15 = 16;
LABEL_33:
          v19 = *(a1 + v15);
          *(a1 + v15) = v14;

          break;
        case 5:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            v31 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v31 & 0x7F) << v21;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_48;
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

LABEL_48:
          *(a1 + 32) = v27;
          break;
        case 6:
          *(a1 + 56) |= 1u;
          v29 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29;
          break;
        default:
LABEL_30:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          break;
      }

      v20 = [a2 position];
      if (v20 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v14 = PBReaderReadString();
        v15 = 48;
        break;
      case 2:
        v14 = PBReaderReadString();
        v15 = 40;
        break;
      case 3:
        v14 = PBReaderReadString();
        v15 = 24;
        break;
      default:
        goto LABEL_30;
    }

    goto LABEL_33;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBLightweightProactiveSuggestionReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 8) = v22;
          goto LABEL_43;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      v24 = objc_alloc_init(ATXPBProactiveSuggestionScoreSpecification);
      objc_storeStrong((a1 + 32), v24);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionScoreSpecificationReadFrom(v24, a2))
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
      v15 = 16;
      goto LABEL_35;
    }

    if (v13 == 2)
    {
      v14 = PBReaderReadString();
      v15 = 24;
LABEL_35:
      v23 = *(a1 + v15);
      *(a1 + v15) = v14;

      goto LABEL_43;
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

void sub_1DEFD3F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_1_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + v2) = v3;
  v5 = *(v4 + *(a2 + 536));
  return result;
}

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + v2) = v3;
  v4 = *(a2 + 536);
  return result;
}

void sub_1DEFD94E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEFD96A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEFDA5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEFDE2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DEFDE46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DEFDF6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1DEFDF83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1DEFE044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEFE05B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEFE32F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DEFE3694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

uint64_t ATXPBContextualActionsGroupedUIFeedbackResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
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

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            LOBYTE(v37[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v37[0] & 0x7F) << v14;
            if ((v37[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_57;
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

LABEL_57:
          v34 = 24;
LABEL_66:
          *(a1 + v34) = v20;
          goto LABEL_67;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_67;
      }

      v27 = objc_alloc_init(ATXPBProactiveSuggestionGroupedUIFeedbackResult);
      objc_storeStrong((a1 + 32), v27);
      v37[0] = 0;
      v37[1] = 0;
      if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionGroupedUIFeedbackResultReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v37[0] & 0x7F) << v28;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v30;
      }

LABEL_65:
      v34 = 16;
      goto LABEL_66;
    }

    if (v13 == 6)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v37[0] & 0x7F) << v21;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_61;
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

LABEL_61:
      v34 = 8;
      goto LABEL_66;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

id __atxlog_handle_default()
{
  if (__atxlog_handle_default_onceToken != -1)
  {
    __atxlog_handle_default_cold_1();
  }

  v1 = __atxlog_handle_default_log;

  return v1;
}

uint64_t ____atxlog_handle_default_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "general");
  v1 = __atxlog_handle_default_log;
  __atxlog_handle_default_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____atxlog_handle_xpc_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "xpc");
  v1 = __atxlog_handle_xpc_log;
  __atxlog_handle_xpc_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_heuristic()
{
  if (__atxlog_handle_heuristic_onceToken != -1)
  {
    __atxlog_handle_heuristic_cold_1();
  }

  v1 = __atxlog_handle_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_heuristic_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "heuristic");
  v1 = __atxlog_handle_heuristic_log;
  __atxlog_handle_heuristic_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_notifications()
{
  if (__atxlog_handle_notifications_onceToken != -1)
  {
    __atxlog_handle_notifications_cold_1();
  }

  v1 = __atxlog_handle_notifications_log;

  return v1;
}

uint64_t ____atxlog_handle_notifications_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "notifications");
  v1 = __atxlog_handle_notifications_log;
  __atxlog_handle_notifications_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_pmm()
{
  if (__atxlog_handle_pmm_onceToken != -1)
  {
    __atxlog_handle_pmm_cold_1();
  }

  v1 = __atxlog_handle_pmm_log;

  return v1;
}

uint64_t ____atxlog_handle_pmm_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.mm", "GENERAL");
  v1 = __atxlog_handle_pmm_log;
  __atxlog_handle_pmm_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_dailyroutines()
{
  if (__atxlog_handle_dailyroutines_onceToken != -1)
  {
    __atxlog_handle_dailyroutines_cold_1();
  }

  v1 = __atxlog_handle_dailyroutines_log;

  return v1;
}

uint64_t ____atxlog_handle_dailyroutines_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "dailyroutines");
  v1 = __atxlog_handle_dailyroutines_log;
  __atxlog_handle_dailyroutines_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_feedback()
{
  if (__atxlog_handle_feedback_onceToken != -1)
  {
    __atxlog_handle_feedback_cold_1();
  }

  v1 = __atxlog_handle_feedback_log;

  return v1;
}

uint64_t ____atxlog_handle_feedback_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "feedback");
  v1 = __atxlog_handle_feedback_log;
  __atxlog_handle_feedback_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_modes()
{
  if (__atxlog_handle_modes_onceToken != -1)
  {
    __atxlog_handle_modes_cold_1();
  }

  v1 = __atxlog_handle_modes_log;

  return v1;
}

uint64_t ____atxlog_handle_modes_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "modes");
  v1 = __atxlog_handle_modes_log;
  __atxlog_handle_modes_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_hero()
{
  if (__atxlog_handle_hero_onceToken != -1)
  {
    __atxlog_handle_hero_cold_1();
  }

  v1 = __atxlog_handle_hero_log;

  return v1;
}

uint64_t ____atxlog_handle_hero_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "hero");
  v1 = __atxlog_handle_hero_log;
  __atxlog_handle_hero_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_deletions()
{
  if (__atxlog_handle_deletions_onceToken != -1)
  {
    __atxlog_handle_deletions_cold_1();
  }

  v1 = __atxlog_handle_deletions_log;

  return v1;
}

uint64_t ____atxlog_handle_deletions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "deletions");
  v1 = __atxlog_handle_deletions_log;
  __atxlog_handle_deletions_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____atxlog_handle_gi_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "information");
  v1 = __atxlog_handle_gi_log;
  __atxlog_handle_gi_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_timeline()
{
  if (__atxlog_handle_timeline_onceToken != -1)
  {
    __atxlog_handle_timeline_cold_1();
  }

  v1 = __atxlog_handle_timeline_log;

  return v1;
}

uint64_t ____atxlog_handle_timeline_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "timeline");
  v1 = __atxlog_handle_timeline_log;
  __atxlog_handle_timeline_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_relevant_shortcut()
{
  if (__atxlog_handle_relevant_shortcut_onceToken != -1)
  {
    __atxlog_handle_relevant_shortcut_cold_1();
  }

  v1 = __atxlog_handle_relevant_shortcut_log;

  return v1;
}

uint64_t ____atxlog_handle_relevant_shortcut_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "relevant_shortcut");
  v1 = __atxlog_handle_relevant_shortcut_log;
  __atxlog_handle_relevant_shortcut_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_relevance_model()
{
  if (__atxlog_handle_relevance_model_onceToken != -1)
  {
    __atxlog_handle_relevance_model_cold_1();
  }

  v1 = __atxlog_handle_relevance_model_log;

  return v1;
}

uint64_t ____atxlog_handle_relevance_model_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "relevance_model");
  v1 = __atxlog_handle_relevance_model_log;
  __atxlog_handle_relevance_model_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_watch()
{
  if (__atxlog_handle_watch_onceToken != -1)
  {
    __atxlog_handle_watch_cold_1();
  }

  v1 = __atxlog_handle_watch_log;

  return v1;
}

uint64_t ____atxlog_handle_watch_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "watch");
  v1 = __atxlog_handle_watch_log;
  __atxlog_handle_watch_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_ui()
{
  if (__atxlog_handle_ui_onceToken != -1)
  {
    __atxlog_handle_ui_cold_1();
  }

  v1 = __atxlog_handle_ui_log;

  return v1;
}

uint64_t ____atxlog_handle_ui_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "UI");
  v1 = __atxlog_handle_ui_log;
  __atxlog_handle_ui_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ____atxlog_handle_blending_internal_cache_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "blending_internal_cache");
  v1 = __atxlog_handle_blending_internal_cache_log;
  __atxlog_handle_blending_internal_cache_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_blending_ecosystem()
{
  if (__atxlog_handle_blending_ecosystem_onceToken != -1)
  {
    __atxlog_handle_blending_ecosystem_cold_1();
  }

  v1 = __atxlog_handle_blending_ecosystem_log;

  return v1;
}

uint64_t ____atxlog_handle_blending_ecosystem_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "blending_ecosystem");
  v1 = __atxlog_handle_blending_ecosystem_log;
  __atxlog_handle_blending_ecosystem_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_home_screen()
{
  if (__atxlog_handle_home_screen_onceToken != -1)
  {
    __atxlog_handle_home_screen_cold_1();
  }

  v1 = __atxlog_handle_home_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_home_screen_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "homescreen");
  v1 = __atxlog_handle_home_screen_log;
  __atxlog_handle_home_screen_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_sleep_schedule()
{
  if (__atxlog_handle_sleep_schedule_onceToken != -1)
  {
    __atxlog_handle_sleep_schedule_cold_1();
  }

  v1 = __atxlog_handle_sleep_schedule_log;

  return v1;
}

uint64_t ____atxlog_handle_sleep_schedule_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "sleepschedule");
  v1 = __atxlog_handle_sleep_schedule_log;
  __atxlog_handle_sleep_schedule_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_lock_screen()
{
  if (__atxlog_handle_lock_screen_onceToken != -1)
  {
    __atxlog_handle_lock_screen_cold_1();
  }

  v1 = __atxlog_handle_lock_screen_log;

  return v1;
}

uint64_t ____atxlog_handle_lock_screen_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "lockscreen");
  v1 = __atxlog_handle_lock_screen_log;
  __atxlog_handle_lock_screen_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_anchor()
{
  if (__atxlog_handle_anchor_onceToken != -1)
  {
    __atxlog_handle_anchor_cold_1();
  }

  v1 = __atxlog_handle_anchor_log;

  return v1;
}

uint64_t ____atxlog_handle_anchor_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "anchor");
  v1 = __atxlog_handle_anchor_log;
  __atxlog_handle_anchor_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_app_prediction()
{
  if (__atxlog_handle_app_prediction_onceToken != -1)
  {
    __atxlog_handle_app_prediction_cold_1();
  }

  v1 = __atxlog_handle_app_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_app_prediction_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_prediction");
  v1 = __atxlog_handle_app_prediction_log;
  __atxlog_handle_app_prediction_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_action_prediction()
{
  if (__atxlog_handle_action_prediction_onceToken != -1)
  {
    __atxlog_handle_action_prediction_cold_1();
  }

  v1 = __atxlog_handle_action_prediction_log;

  return v1;
}

uint64_t ____atxlog_handle_action_prediction_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "action_prediction");
  v1 = __atxlog_handle_action_prediction_log;
  __atxlog_handle_action_prediction_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_app_library()
{
  if (__atxlog_handle_app_library_onceToken != -1)
  {
    __atxlog_handle_app_library_cold_1();
  }

  v1 = __atxlog_handle_app_library_log;

  return v1;
}

uint64_t ____atxlog_handle_app_library_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_library");
  v1 = __atxlog_handle_app_library_log;
  __atxlog_handle_app_library_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_app_install()
{
  if (__atxlog_handle_app_install_onceToken != -1)
  {
    __atxlog_handle_app_install_cold_1();
  }

  v1 = __atxlog_handle_app_install_log;

  return v1;
}

uint64_t ____atxlog_handle_app_install_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "app_install");
  v1 = __atxlog_handle_app_install_log;
  __atxlog_handle_app_install_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_backup()
{
  if (__atxlog_handle_backup_onceToken != -1)
  {
    __atxlog_handle_backup_cold_1();
  }

  v1 = __atxlog_handle_backup_log;

  return v1;
}

uint64_t ____atxlog_handle_backup_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "backup");
  v1 = __atxlog_handle_backup_log;
  __atxlog_handle_backup_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_metrics()
{
  if (__atxlog_handle_metrics_onceToken != -1)
  {
    __atxlog_handle_metrics_cold_1();
  }

  v1 = __atxlog_handle_metrics_log;

  return v1;
}

uint64_t ____atxlog_handle_metrics_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "metrics");
  v1 = __atxlog_handle_metrics_log;
  __atxlog_handle_metrics_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_trial_assets()
{
  if (__atxlog_handle_trial_assets_onceToken != -1)
  {
    __atxlog_handle_trial_assets_cold_1();
  }

  v1 = __atxlog_handle_trial_assets_log;

  return v1;
}

uint64_t ____atxlog_handle_trial_assets_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "trial_assets");
  v1 = __atxlog_handle_trial_assets_log;
  __atxlog_handle_trial_assets_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_notification_management()
{
  if (__atxlog_handle_notification_management_onceToken != -1)
  {
    __atxlog_handle_notification_management_cold_1();
  }

  v1 = __atxlog_handle_notification_management_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_management_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "notification_management");
  v1 = __atxlog_handle_notification_management_log;
  __atxlog_handle_notification_management_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_contextual_actions()
{
  if (__atxlog_handle_contextual_actions_onceToken != -1)
  {
    __atxlog_handle_contextual_actions_cold_1();
  }

  v1 = __atxlog_handle_contextual_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_actions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "contextual_actions");
  v1 = __atxlog_handle_contextual_actions_log;
  __atxlog_handle_contextual_actions_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_intents_helper()
{
  if (__atxlog_handle_intents_helper_onceToken != -1)
  {
    __atxlog_handle_intents_helper_cold_1();
  }

  v1 = __atxlog_handle_intents_helper_log;

  return v1;
}

uint64_t ____atxlog_handle_intents_helper_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "intents_helper");
  v1 = __atxlog_handle_intents_helper_log;
  __atxlog_handle_intents_helper_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_context_heuristic()
{
  if (__atxlog_handle_context_heuristic_onceToken != -1)
  {
    __atxlog_handle_context_heuristic_cold_1();
  }

  v1 = __atxlog_handle_context_heuristic_log;

  return v1;
}

uint64_t ____atxlog_handle_context_heuristic_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "context_heuristic");
  v1 = __atxlog_handle_context_heuristic_log;
  __atxlog_handle_context_heuristic_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_zkw_hide()
{
  if (__atxlog_handle_zkw_hide_onceToken != -1)
  {
    __atxlog_handle_zkw_hide_cold_1();
  }

  v1 = __atxlog_handle_zkw_hide_log;

  return v1;
}

uint64_t ____atxlog_handle_zkw_hide_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "zkw_hide");
  v1 = __atxlog_handle_zkw_hide_log;
  __atxlog_handle_zkw_hide_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_context_user_education_suggestions()
{
  if (__atxlog_handle_context_user_education_suggestions_onceToken != -1)
  {
    __atxlog_handle_context_user_education_suggestions_cold_1();
  }

  v1 = __atxlog_handle_context_user_education_suggestions_log;

  return v1;
}

uint64_t ____atxlog_handle_context_user_education_suggestions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "user_education_suggestions");
  v1 = __atxlog_handle_context_user_education_suggestions_log;
  __atxlog_handle_context_user_education_suggestions_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_time_intelligence()
{
  if (__atxlog_handle_time_intelligence_onceToken != -1)
  {
    __atxlog_handle_time_intelligence_cold_1();
  }

  v1 = __atxlog_handle_time_intelligence_log;

  return v1;
}

uint64_t ____atxlog_handle_time_intelligence_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "time");
  v1 = __atxlog_handle_time_intelligence_log;
  __atxlog_handle_time_intelligence_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_contextual_engine()
{
  if (__atxlog_handle_contextual_engine_onceToken != -1)
  {
    __atxlog_handle_contextual_engine_cold_1();
  }

  v1 = __atxlog_handle_contextual_engine_log;

  return v1;
}

uint64_t ____atxlog_handle_contextual_engine_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "contextualengine");
  v1 = __atxlog_handle_contextual_engine_log;
  __atxlog_handle_contextual_engine_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_usage_insights()
{
  if (__atxlog_handle_usage_insights_onceToken != -1)
  {
    __atxlog_handle_usage_insights_cold_1();
  }

  v1 = __atxlog_handle_usage_insights_log;

  return v1;
}

uint64_t ____atxlog_handle_usage_insights_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "usage_insights");
  v1 = __atxlog_handle_usage_insights_log;
  __atxlog_handle_usage_insights_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_notification_categorization()
{
  if (__atxlog_handle_notification_categorization_onceToken != -1)
  {
    __atxlog_handle_notification_categorization_cold_1();
  }

  v1 = __atxlog_handle_notification_categorization_log;

  return v1;
}

uint64_t ____atxlog_handle_notification_categorization_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "notification_categorization");
  v1 = __atxlog_handle_notification_categorization_log;
  __atxlog_handle_notification_categorization_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_settings_actions()
{
  if (__atxlog_handle_settings_actions_onceToken != -1)
  {
    __atxlog_handle_settings_actions_cold_1();
  }

  v1 = __atxlog_handle_settings_actions_log;

  return v1;
}

uint64_t ____atxlog_handle_settings_actions_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "settings_actions");
  v1 = __atxlog_handle_settings_actions_log;
  __atxlog_handle_settings_actions_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_client_donations()
{
  if (__atxlog_handle_client_donations_onceToken != -1)
  {
    __atxlog_handle_client_donations_cold_1();
  }

  v1 = __atxlog_handle_client_donations_log;

  return v1;
}

uint64_t ____atxlog_handle_client_donations_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "client_donations");
  v1 = __atxlog_handle_client_donations_log;
  __atxlog_handle_client_donations_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_carPlay_widgets()
{
  if (__atxlog_handle_carPlay_widgets_onceToken != -1)
  {
    __atxlog_handle_carPlay_widgets_cold_1();
  }

  v1 = __atxlog_handle_carPlay_widgets_log;

  return v1;
}

uint64_t ____atxlog_handle_carPlay_widgets_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "carPlay");
  v1 = __atxlog_handle_carPlay_widgets_log;
  __atxlog_handle_carPlay_widgets_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_screen_entities()
{
  if (__atxlog_handle_screen_entities_onceToken != -1)
  {
    __atxlog_handle_screen_entities_cold_1();
  }

  v1 = __atxlog_handle_screen_entities_log;

  return v1;
}

uint64_t ____atxlog_handle_screen_entities_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "screenEntities");
  v1 = __atxlog_handle_screen_entities_log;
  __atxlog_handle_screen_entities_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_document_predictor()
{
  if (__atxlog_handle_document_predictor_onceToken != -1)
  {
    __atxlog_handle_document_predictor_cold_1();
  }

  v1 = __atxlog_handle_document_predictor_log;

  return v1;
}

uint64_t ____atxlog_handle_document_predictor_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "documentPredictor");
  v1 = __atxlog_handle_document_predictor_log;
  __atxlog_handle_document_predictor_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_ml_inference()
{
  if (__atxlog_handle_ml_inference_onceToken != -1)
  {
    __atxlog_handle_ml_inference_cold_1();
  }

  v1 = __atxlog_handle_ml_inference_log;

  return v1;
}

uint64_t ____atxlog_handle_ml_inference_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "inference");
  v1 = __atxlog_handle_ml_inference_log;
  __atxlog_handle_ml_inference_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __atxlog_handle_menu_items()
{
  if (__atxlog_handle_menu_items_onceToken != -1)
  {
    __atxlog_handle_menu_items_cold_1();
  }

  v1 = __atxlog_handle_menu_items_log;

  return v1;
}

uint64_t ____atxlog_handle_menu_items_block_invoke()
{
  v0 = os_log_create("com.apple.duetexpertd.atx", "menuItems");
  v1 = __atxlog_handle_menu_items_log;
  __atxlog_handle_menu_items_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t ATXPBProactiveSuggestionGroupedUIFeedbackResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v69) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v69 & 0x7F) << v5;
        if ((v69 & 0x80) == 0)
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
        break;
      }

      if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v54 = 0;
          v55 = 0;
          v56 = 0;
          *(a1 + 76) |= 8u;
          while (1)
          {
            LOBYTE(v69) = 0;
            v57 = [a2 position] + 1;
            if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
            {
              v59 = [a2 data];
              [v59 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v56 |= (v69 & 0x7F) << v54;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v11 = v55++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_125;
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

LABEL_125:
          v63 = 32;
        }

        else
        {
          if (v13 != 6)
          {
LABEL_98:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_132;
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v69) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v69 & 0x7F) << v29;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_111;
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

LABEL_111:
          v63 = 16;
        }

        goto LABEL_126;
      }

      if (v13 == 7)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 76) |= 0x100u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v69 & 0x7F) << v47;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            LOBYTE(v53) = 0;
            goto LABEL_121;
          }
        }

        v53 = (v49 != 0) & ~[a2 hasError];
LABEL_121:
        *(a1 + 72) = v53;
      }

      else
      {
        if (v13 == 8)
        {
          *(a1 + 76) |= 0x80u;
          v69 = 0;
          v60 = [a2 position] + 8;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 8, v61 <= objc_msgSend(a2, "length")))
          {
            v67 = [a2 data];
            [v67 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v65 = v69;
          v66 = 64;
        }

        else
        {
          if (v13 != 9)
          {
            goto LABEL_98;
          }

          *(a1 + 76) |= 1u;
          v69 = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v64 = [a2 data];
            [v64 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v65 = v69;
          v66 = 8;
        }

        *(a1 + v66) = v65;
      }

LABEL_132:
      v68 = [a2 position];
      if (v68 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 76) |= 0x10u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v69 & 0x7F) << v41;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_119;
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

LABEL_119:
        v63 = 40;
      }

      else
      {
        if (v13 != 4)
        {
          goto LABEL_98;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 76) |= 4u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v69 & 0x7F) << v23;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_107;
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

LABEL_107:
        v63 = 24;
      }
    }

    else if (v13 == 1)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 76) |= 0x20u;
      while (1)
      {
        LOBYTE(v69) = 0;
        v38 = [a2 position] + 1;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v37 |= (v69 & 0x7F) << v35;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v11 = v36++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_115;
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

LABEL_115:
      v63 = 48;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_98;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 76) |= 0x40u;
      while (1)
      {
        LOBYTE(v69) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v69 & 0x7F) << v16;
        if ((v69 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_103;
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

LABEL_103:
      v63 = 56;
    }

LABEL_126:
    *(a1 + v63) = v22;
    goto LABEL_132;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBUIFeedbackPriorContextReadFrom(char *a1, void *a2)
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
            v15 = PBReaderReadData();
            v16 = 32;
            goto LABEL_37;
          case 5:
            v15 = PBReaderReadString();
            v16 = 40;
LABEL_37:
            v14 = *&a1[v16];
            *&a1[v16] = v15;
            goto LABEL_38;
          case 6:
            v15 = PBReaderReadString();
            v16 = 48;
            goto LABEL_37;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addCacheUpdateOrdering:v14];
            }

            goto LABEL_38;
          case 2:
            v14 = objc_alloc_init(ATXPBBlendingModelUICacheUpdate);
            [a1 addBlendingModelCacheUpdates:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !ATXPBBlendingModelUICacheUpdateReadFrom(v14, a2))
            {
LABEL_41:

              return 0;
            }

LABEL_35:
            PBReaderRecallMark();
LABEL_38:

            goto LABEL_39;
          case 3:
            v14 = objc_alloc_init(ATXPBClientModelCacheUpdate);
            [a1 addClientModelCacheUpdates:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !ATXPBClientModelCacheUpdateReadFrom(v14, a2))
            {
              goto LABEL_41;
            }

            goto LABEL_35;
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

uint64_t OUTLINED_FUNCTION_15()
{
  result = 0;
  *v0 = 0;
  return result;
}

uint64_t ATXPBHomeScreenCachedSuggestionReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 7)
        {
          switch(v13)
          {
            case 9:
              v14 = PBReaderReadString();
              if (v14)
              {
                [(ATXPBHomeScreenCachedSuggestion *)a1 addCachedSuggestedWidgetLayoutListKeys:v14];
              }

              goto LABEL_53;
            case 8:
              v14 = objc_alloc_init(ATXPBSuggestionLayout);
              [(ATXPBHomeScreenCachedSuggestion *)a1 addCachedAppPredictionPanelLayouts:v14];
              goto LABEL_50;
            case 0xA:
              v14 = objc_alloc_init(ATXPBSuggestionLayoutList);
              [(ATXPBHomeScreenCachedSuggestion *)a1 addCachedSuggestedWidgetLayoutLists:v14];
              v18 = 0;
              v19 = 0;
              if (!PBReaderPlaceMark() || !ATXPBSuggestionLayoutListReadFrom(v14, a2))
              {
LABEL_56:

                return 0;
              }

LABEL_52:
              PBReaderRecallMark();
LABEL_53:

              goto LABEL_54;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v14 = PBReaderReadString();
              if (v14)
              {
                [(ATXPBHomeScreenCachedSuggestion *)a1 addCachedAppPredictionPanelIds:v14];
              }

              goto LABEL_53;
            case 5:
              v14 = objc_alloc_init(ATXPBSuggestionLayout);
              [(ATXPBHomeScreenCachedSuggestion *)a1 addCachedTopOfStackLayouts:v14];
LABEL_50:
              v18 = 0;
              v19 = 0;
              if (!PBReaderPlaceMark() || !ATXPBSuggestionLayoutReadFrom(v14, a2))
              {
                goto LABEL_56;
              }

              goto LABEL_52;
            case 6:
              v14 = objc_alloc_init(ATXPBProactiveSuggestion);
              [(ATXPBHomeScreenCachedSuggestion *)a1 addFallbackSuggestions:v14];
              v18 = 0;
              v19 = 0;
              if (!PBReaderPlaceMark() || !ATXPBProactiveSuggestionReadFrom(v14, a2))
              {
                goto LABEL_56;
              }

              goto LABEL_52;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [(ATXPBHomeScreenCachedSuggestion *)a1 addCachedTopOfStackLayoutKeys:v14];
          }

          goto LABEL_53;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(ATXPBSuggestionLayout);
          [(ATXPBHomeScreenCachedSuggestion *)a1 addCachedSuggestionWidgetLayouts:v14];
          goto LABEL_50;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v14 = *(a1 + 80);
          *(a1 + 80) = v15;
          goto LABEL_53;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [(ATXPBHomeScreenCachedSuggestion *)a1 addCachedSuggestionWidgetIds:v14];
          }

          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DEFF2F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = *(v2 + a2);
  v4 = *(a1 + a2);
  return result;
}

void sub_1DEFF6B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBSpotlightUIEventReadFrom(uint64_t a1, void *a2)
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
          v22 = 40;
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
            v22 = 24;
            goto LABEL_36;
          case 4:
            v21 = PBReaderReadString();
            v22 = 16;
            goto LABEL_36;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 1u;
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
                goto LABEL_44;
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

LABEL_44:
            *(a1 + 8) = v20;
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

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1DEFFF444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *stringForATXSuggestionPredictionReasonCode(uint64_t a1)
{
  if ((a1 - 1) > 0x2A)
  {
    return @"Generic";
  }

  else
  {
    return off_1E86A4908[a1 - 1];
  }
}

void ATXSuggestionPredictionReasonEnumerateReasonCodes(unint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    for (i = 0; i != 43; ++i)
    {
      if ((a1 >> i))
      {
        v4[2](v4, i);
      }
    }
  }
}

_BYTE *OUTLINED_FUNCTION_7_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_1DF0066E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBRequestForIntentSuggestionsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
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
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addIntentClassNames:v14];
          }

          goto LABEL_40;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v24[0]) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24[0] & 0x7F) << v15;
            if ((v24[0] & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_44;
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

LABEL_44:
          *(a1 + 32) = v21;
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(ATXPBRequestForSuggestions);
          objc_storeStrong((a1 + 8), v14);
          v24[0] = 0;
          v24[1] = 0;
          if (!PBReaderPlaceMark() || !ATXPBRequestForSuggestionsReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addBundleIds:v14];
          }

LABEL_40:

          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF009108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t ATXMPBBlendingClientModelEngagementClientCacheAgeTrackerReadFrom(uint64_t a1, void *a2)
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
          v14 = PBReaderReadString();
          v15 = 24;
        }

        else
        {
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
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 1u;
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
              goto LABEL_40;
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

LABEL_40:
          *(a1 + 32) = v23;
          goto LABEL_41;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1DF0179F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t ATXPBSuggestionLayoutListReadFrom(uint64_t a1, void *a2)
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
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
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

    if ((v13 >> 3) == 1)
    {
      if ((ATXPBSuggestionLayoutListReadFrom_cold_1(a1, &v15, a2, &v16) & 1) == 0)
      {
        return v16;
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXMPBBlendingClientModelEngagementTrackerReadFrom(uint64_t a1, void *a2)
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
        v51 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              v56 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v56 & 0x7F) << v23;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_90;
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

LABEL_90:
            v49 = 52;
          }

          else
          {
            if (v13 != 7)
            {
LABEL_81:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_104;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              v53 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v53 & 0x7F) << v16;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_86;
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

LABEL_86:
            v49 = 48;
          }

          goto LABEL_103;
        }

        switch(v13)
        {
          case 8:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v52 = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v52 & 0x7F) << v35;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
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
              v22 = v37;
            }

LABEL_98:
            v49 = 24;
            goto LABEL_103;
          case 9:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          case 0xA:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          default:
            goto LABEL_81;
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 56;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_81;
          }

          v14 = PBReaderReadString();
          v15 = 32;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            v55 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v55 & 0x7F) << v29;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
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
            v22 = v31;
          }

LABEL_94:
          v49 = 64;
          goto LABEL_103;
        }

        if (v13 == 4)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 72) |= 0x10u;
          while (1)
          {
            v54 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v54 & 0x7F) << v41;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
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
            v22 = v43;
          }

LABEL_102:
          v49 = 68;
LABEL_103:
          *(a1 + v49) = v22;
          goto LABEL_104;
        }

        if (v13 != 5)
        {
          goto LABEL_81;
        }

        v14 = PBReaderReadString();
        v15 = 40;
      }

      v47 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_104:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBLightweightClientModelCacheUpdateReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        break;
      }

      if (v13 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 32;
LABEL_32:
        v19 = *(a1 + v18);
        *(a1 + v18) = v17;

        goto LABEL_35;
      }

      if (v13 != 2)
      {
        goto LABEL_28;
      }

      v14 = objc_alloc_init(ATXPBLightweightProactiveSuggestion);
      [a1 addSuggestions:v14];
      v23[0] = 0;
      v23[1] = 0;
      if (!PBReaderPlaceMark() || !ATXPBLightweightProactiveSuggestionReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_35:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v17 = PBReaderReadString();
      v18 = 16;
      goto LABEL_32;
    }

    if (v13 == 4)
    {
      *(a1 + 40) |= 1u;
      v23[0] = 0;
      v15 = [a2 position] + 8;
      if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:v23 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v23[0];
      goto LABEL_35;
    }

LABEL_28:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBShortcutsEditorEventMetadataReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
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

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXMPBBlendingSessionEngagementTrackerReadFrom(uint64_t a1, void *a2)
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
          *(a1 + 28) |= 1u;
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
          *(a1 + 24) = v22;
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
        v15 = 16;
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

__CFString *stringForATXTrendPlotGranularity(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"None";
  }

  else
  {
    return off_1E86A4F78[a1 - 1];
  }
}

void sub_1DF020444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ATXMPBBlendingClientModelEngagementUICacheAgeTrackerReadFrom(uint64_t a1, void *a2)
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
        v21 = PBReaderReadString();
        v22 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
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

        v21 = PBReaderReadString();
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

uint64_t ATXPBBlendingModelUICacheUpdateReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            *(a1 + 72) |= 1u;
            v23 = 0;
            v19 = [a2 position] + 8;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v23;
            goto LABEL_45;
          }

          if (v13 == 8)
          {
            v16 = objc_alloc_init(ATXPBSpotlightSuggestionLayout);
            objc_storeStrong((a1 + 48), v16);
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !ATXPBSpotlightSuggestionLayoutReadFrom(v16, a2))
            {
LABEL_55:

              return 0;
            }

LABEL_41:
            PBReaderRecallMark();
LABEL_44:

            goto LABEL_45;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v16 = objc_alloc_init(ATXPBHomeScreenCachedSuggestion);
            objc_storeStrong((a1 + 40), v16);
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !ATXPBHomeScreenCachedSuggestionReadFrom(v16, a2))
            {
              goto LABEL_55;
            }

            goto LABEL_41;
          }

          if (v13 == 6)
          {
            v16 = objc_alloc_init(ATXPBSuggestionLayout);
            objc_storeStrong((a1 + 56), v16);
            v23 = 0;
            v24 = 0;
            if (!PBReaderPlaceMark() || !ATXPBSuggestionLayoutReadFrom(v16, a2))
            {
              goto LABEL_55;
            }

            goto LABEL_41;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [(ATXPBBlendingModelUICacheUpdate *)a1 addClientModelIds:v16];
          }

          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [(ATXPBBlendingModelUICacheUpdate *)a1 addClientModelCacheUpdateUUIDStrings:v16];
          }

          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 64;
          goto LABEL_38;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 32;
LABEL_38:
          v17 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_45;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBRequestForSuggestionsReadFrom(uint64_t a1, void *a2)
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
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_30:
        v19 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_33;
      }

      if (v13 != 4)
      {
LABEL_26:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_33;
      }

      *(a1 + 40) |= 1u;
      v22 = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v20 = [a2 data];
        [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v22;
LABEL_33:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 32;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_26;
      }

      v14 = PBReaderReadString();
      v15 = 24;
    }

    goto LABEL_30;
  }

  return [a2 hasError] ^ 1;
}

id ATXInfoSuggestionXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A51BA8];
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  [v0 setClasses:v2 forSelector:sel_timelineDidReloadForWidget_parentApp_withEntries_completion_ argumentIndex:0 ofReply:0];

  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v3);
  [v0 setClasses:v6 forSelector:sel_timelineDidReloadForWidget_parentApp_withEntries_completion_ argumentIndex:2 ofReply:0];

  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  [v0 setClasses:v8 forSelector:sel_userDidDismissSuggestion_isDismissalLongTerm_completion_ argumentIndex:0 ofReply:0];

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  [v0 setClasses:v10 forSelector:sel_stackDidRotateProactivelyForInfoSuggestion_isStalenessRotation_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t ATXPBBiomeProactiveSuggestionUIFeedbackResultReadFrom(_BYTE *a1, void *a2)
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
      if ((v12 >> 3) <= 5)
      {
        break;
      }

      if (v13 <= 7)
      {
        if (v13 == 6)
        {
          a1[88] |= 4u;
          v31[0] = 0;
          v19 = [a2 position] + 8;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v25 = v31[0];
          v26 = 24;
          goto LABEL_58;
        }

        if (v13 == 7)
        {
          a1[88] |= 2u;
          v31[0] = 0;
          v17 = [a2 position] + 8;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:v31 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v25 = v31[0];
          v26 = 16;
          goto LABEL_58;
        }

LABEL_50:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_59;
      }

      switch(v13)
      {
        case 8:
          v16 = objc_alloc_init(ATXPBLightweightProactiveSuggestion);
          [a1 addShownSuggestions:v16];
          break;
        case 9:
          v16 = objc_alloc_init(ATXPBLightweightProactiveSuggestion);
          [a1 addEngagedSuggestions:v16];
          break;
        case 0xA:
          v16 = objc_alloc_init(ATXPBLightweightProactiveSuggestion);
          [a1 addRejectedSuggestions:v16];
          break;
        default:
          goto LABEL_50;
      }

      v31[0] = 0;
      v31[1] = 0;
      if (!PBReaderPlaceMark() || !ATXPBLightweightProactiveSuggestionReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_59:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 72;
        goto LABEL_41;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_41;
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_41;
        case 4:
          a1[88] |= 1u;
          v31[0] = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v31 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v25 = v31[0];
          v26 = 8;
LABEL_58:
          *&a1[v26] = v25;
          goto LABEL_59;
        case 5:
          v14 = PBReaderReadString();
          v15 = 48;
LABEL_41:
          v21 = *&a1[v15];
          *&a1[v15] = v14;

          goto LABEL_59;
      }
    }

    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ATXPBSuggestionLayoutReadFrom_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v2 = objc_alloc_init(ATXPBProactiveSuggestion);
  v3 = OUTLINED_FUNCTION_5_0();
  [(ATXPBSuggestionLayout *)v3 addFourByEightSuggestions:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_15();
  }
}

uint64_t ATXPBSuggestionLayoutReadFrom_cold_2()
{
  OUTLINED_FUNCTION_3_1();
  v2 = objc_alloc_init(ATXPBProactiveSuggestion);
  v3 = OUTLINED_FUNCTION_5_0();
  [(ATXPBSuggestionLayout *)v3 addFourByFourSuggestions:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_15();
  }
}

uint64_t ATXPBSuggestionLayoutReadFrom_cold_3()
{
  OUTLINED_FUNCTION_3_1();
  v2 = objc_alloc_init(ATXPBProactiveSuggestion);
  v3 = OUTLINED_FUNCTION_5_0();
  [(ATXPBSuggestionLayout *)v3 addTwoByFourSuggestions:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_15();
  }
}

uint64_t ATXPBSuggestionLayoutReadFrom_cold_6()
{
  OUTLINED_FUNCTION_3_1();
  v2 = objc_alloc_init(ATXPBProactiveSuggestion);
  v3 = OUTLINED_FUNCTION_5_0();
  [(ATXPBSuggestionLayout *)v3 addOneByTwoSuggestions:v4];
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8();
  if (PBReaderPlaceMark() && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_8();
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    return OUTLINED_FUNCTION_15();
  }
}

uint64_t ATXPBSuggestionLayoutListReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(ATXPBSuggestionLayout);
  [(ATXPBSuggestionLayoutList *)a1 addLayout:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && ATXPBSuggestionLayoutReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}