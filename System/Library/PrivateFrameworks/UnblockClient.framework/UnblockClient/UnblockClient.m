__CFString *UBRecoveryStatusCopyDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v1 = off_279E025C8[a1];
  }

  return v1;
}

__CFString *UBIssueTypeCopyDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v1 = off_279E025F0[a1];
  }

  return v1;
}

__CFString *UBRecoveryConfidenceCopyDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v1 = off_279E02608[a1];
  }

  return v1;
}

__CFString *UBRecoveryEffectivenessCopyDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%ld)", a1];
  }

  else
  {
    v1 = off_279E02628[a1];
  }

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id UBStringForNumberWithSignificantDigits(double a1)
{
  v1 = a1;
  v2 = 2;
  v3 = a1 < 0.0;
  if (a1 != 0.0)
  {
    v4 = -a1;
    if (!v3)
    {
      v4 = v1;
    }

    v2 = 2 - vcvtpd_s64_f64(log10(v4));
    v5 = __exp10(v2);
    v1 = round(v5 * v1) / v5;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%.*f", v2 & ~(v2 >> 31), *&v1];

  return v6;
}

void __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v7 = 0;
  v5 = [v3 handleRecoverReply:a2 input_services:v4 err:&v7];
  v6 = v7;
  (*(a1[6] + 16))();
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id _UBCopySanitizedString(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCAB50];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  if (a2)
  {
    v12 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v13 = [v12 invertedSet];
    [v8 formUnionWithCharacterSet:v13];

    goto LABEL_10;
  }

  if ((a2 & 2) != 0)
  {
    v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    [v8 formUnionWithCharacterSet:v9];
  }

  else
  {
    if ((a2 & 4) == 0)
    {
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v10 = [v5 componentsSeparatedByCharactersInSet:v9];
    v11 = [v10 componentsJoinedByString:@" "];

    v5 = v11;
  }

LABEL_8:
  if ((a2 & 8) != 0)
  {
    [v8 addCharactersInString:@"[]"];
  }

LABEL_10:
  v14 = [v5 componentsSeparatedByCharactersInSet:v8];
  v15 = [v14 componentsJoinedByString:v7];

  return v15;
}

id _ublogt()
{
  if (_ublogt_onceToken != -1)
  {
    _ublogt_cold_1();
  }

  v1 = _ublogt_myLogger;

  return v1;
}

void ___ublogt_block_invoke()
{
  v0 = os_log_create("com.apple.unblock", "WatchdogTimeoutRecovery");
  v1 = _ublogt_myLogger;
  _ublogt_myLogger = v0;

  if (!_ublogt_myLogger && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ___ublogt_block_invoke_cold_1();
  }
}