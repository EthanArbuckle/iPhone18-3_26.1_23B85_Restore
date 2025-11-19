id noiLogHandle()
{
  if (noiLogHandle_noiPred != -1)
  {
    noiLogHandle_cold_1();
  }

  v1 = noiLogHandle_noiHandle;

  return v1;
}

uint64_t __noiLogHandle_block_invoke()
{
  noiLogHandle_noiHandle = os_log_create("com.apple.symptomsframework", "noi");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C85FA800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id networkperfLogHandle()
{
  if (networkperfLogHandle_networkperfPred != -1)
  {
    networkperfLogHandle_cold_1();
  }

  v1 = networkperfLogHandle_networkperfHandle;

  return v1;
}

id usageLogHandle()
{
  if (usageLogHandle_usagePred != -1)
  {
    usageLogHandle_cold_1();
  }

  v1 = usageLogHandle_usageHandle;

  return v1;
}

uint64_t __Block_byref_object_copy__53(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1CCA78840](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
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

uint64_t __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1CCA78840](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

const char *advisoryToString(int a1)
{
  if ((a1 - 1) > 9)
  {
    return "NetworkAdvisoryError";
  }

  else
  {
    return off_1E8318DB8[a1 - 1];
  }
}

void sub_1C85FE638(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x440], 8);
  _Block_object_dispose(&STACK[0x470], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __networkperfLogHandle_block_invoke()
{
  networkperfLogHandle_networkperfHandle = os_log_create("com.apple.symptomsframework", "networkperf");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __usageLogHandle_block_invoke()
{
  usageLogHandle_usageHandle = os_log_create("com.apple.symptomsframework", "usage");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __Block_byref_object_copy__577(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C86142C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose((v44 - 248), 8);
  _Block_object_dispose((v44 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t countDescSortComparator_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKeyedSubscript:@"count"];
  v7 = [v5 objectForKeyedSubscript:@"count"];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 compare:v6];
  }

  else
  {
    v10 = usageLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v11)
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEBUG, "Missing 'count' value for entry: %@", &v14, 0xCu);
      }

      v9 = -1;
    }

    else
    {
      if (v11)
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEBUG, "Missing 'count' value for entry: %@", &v14, 0xCu);
      }

      v9 = 1;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9;
}

id predicateForVerificationContext_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2 - 1;
  if ((a2 - 1) > 2 || (v5 = a3, [v5 addGroupByProperty:@"contextVerificationType"], objc_msgSend(v5, "addFetchProperty:", @"contextVerificationType"), v5, v3 == 2))
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"contextVerificationType == %d", a2];
  }

  return v6;
}

id predicateForUnnamedDomains_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) < 2)
  {
    v3 = @"domainClassification != %d";
    goto LABEL_5;
  }

  if (a2 == 3)
  {
    v3 = @"domainClassification == %d";
LABEL_5:
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:v3, 2];

    return v4;
  }

  v4 = 0;

  return v4;
}

void sub_1C8616898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C8618750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Unwind_Resume(a1);
}