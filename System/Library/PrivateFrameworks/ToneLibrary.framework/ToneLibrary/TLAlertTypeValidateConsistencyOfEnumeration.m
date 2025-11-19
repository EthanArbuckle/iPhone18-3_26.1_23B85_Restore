@interface TLAlertTypeValidateConsistencyOfEnumeration
@end

@implementation TLAlertTypeValidateConsistencyOfEnumeration

void ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke()
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x2020000000;
  v32[2] = 0x7FFFFFFFFFFFFFFFLL;
  v29 = 0;
  v30[0] = &v29;
  v30[1] = 0x2020000000;
  v30[2] = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_2;
  v24[3] = &unk_1E8579270;
  v24[4] = &v25;
  v24[5] = &v31;
  v24[6] = &v29;
  v0 = MEMORY[0x1DA730160](v24);
  v0[2](v0, 0);
  v0[2](v0, 1);
  v0[2](v0, 2);
  v0[2](v0, 3);
  v0[2](v0, 4);
  v0[2](v0, 5);
  v0[2](v0, 6);
  v0[2](v0, 7);
  v0[2](v0, 8);
  v0[2](v0, 9);
  v0[2](v0, 10);
  v0[2](v0, 11);
  v0[2](v0, 12);
  v0[2](v0, 13);
  v0[2](v0, 14);
  v0[2](v0, 15);
  v0[2](v0, 16);
  v0[2](v0, 17);
  v0[2](v0, 18);
  v0[2](v0, 19);
  v0[2](v0, 20);
  v0[2](v0, 21);
  v0[2](v0, 22);
  v0[2](v0, 23);
  v0[2](v0, 24);
  v0[2](v0, 25);
  v0[2](v0, 26);
  v0[2](v0, 27);
  v0[2](v0, 28);
  v0[2](v0, 29);
  if (*(v32[0] + 24))
  {
    v1 = TLLogGeneral();
    v2 = os_log_type_enabled(v1, OS_LOG_TYPE_INFO);

    if (v2)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/TLAlertType.m"];
      v4 = TLLogGeneral();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [v3 lastPathComponent];
        v6 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v34 = "void _TLAlertTypeValidateConsistencyOfEnumeration(void)_block_invoke";
        v35 = 2113;
        v36 = v5;
        v37 = 2049;
        v38 = 229;
        v39 = 2113;
        v40 = v6;
        _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v3 = TLLogGeneral();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_1();
      }
    }

    v7 = TLLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_2(v32);
    }
  }

  if (*(v30[0] + 24) == 29)
  {
    v8 = 30;
  }

  else
  {
    v9 = TLLogGeneral();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);

    if (v10)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/TLAlertType.m"];
      v12 = TLLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v11 lastPathComponent];
        v14 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v34 = "void _TLAlertTypeValidateConsistencyOfEnumeration(void)_block_invoke";
        v35 = 2113;
        v36 = v13;
        v37 = 2049;
        v38 = 232;
        v39 = 2113;
        v40 = v14;
        _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v11 = TLLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_1();
      }
    }

    v15 = TLLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_4(v30);
    }

    v8 = *(v30[0] + 24) + 1;
  }

  if (v8 != v26[3])
  {
    v16 = TLLogGeneral();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);

    if (v17)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Playback/TLAlertType.m"];
      v19 = TLLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v18 lastPathComponent];
        v21 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v34 = "void _TLAlertTypeValidateConsistencyOfEnumeration(void)_block_invoke";
        v35 = 2113;
        v36 = v20;
        v37 = 2049;
        v38 = 233;
        v39 = 2113;
        v40 = v21;
        _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v18 = TLLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_1();
      }
    }

    v22 = TLLogGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_6();
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v31, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void *___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_2(void *result, uint64_t a2)
{
  ++*(*(result[4] + 8) + 24);
  v2 = *(result[5] + 8);
  v3 = *(v2 + 24);
  if (v3 >= a2)
  {
    v3 = a2;
  }

  *(v2 + 24) = v3;
  v4 = *(result[6] + 8);
  v5 = *(v4 + 24);
  if (v5 <= a2)
  {
    v5 = a2;
  }

  *(v4 + 24) = v5;
  return result;
}

void ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*a1 + 24);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*a1 + 24);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void ___TLAlertTypeValidateConsistencyOfEnumeration_block_invoke_cold_6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end