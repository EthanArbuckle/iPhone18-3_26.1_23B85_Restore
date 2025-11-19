id nwpvarLogHandle()
{
  if (nwpvarLogHandle_nwpvarPred != -1)
  {
    nwpvarLogHandle_cold_1();
  }

  v1 = nwpvarHandle;

  return v1;
}

void __nwpvarLogHandle_block_invoke()
{
  if (!nwpvarHandle)
  {
    nwpvarHandle = os_log_create("com.apple.symptomframework", "nwpvar");

    MEMORY[0x2821F96F8]();
  }
}

void sub_2324A4AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2324A4F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _numToInternalKey(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 alloc];
  [v2 floatValue];
  v5 = v4;

  v6 = [v3 initWithFormat:@"%.2f", v5];

  return v6;
}