void sub_D10(uint64_t a1)
{
  v1 = qword_8300;
  if (!qword_8300)
  {
    sub_11D8();
  }

  v2 = [NSString stringWithUTF8String:a1];
  [v1 warnWithMessage:v2];
}

void sub_F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_F4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_F64(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 isEqualToString:@"fetch-instructions"] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_FE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = [[NSString alloc] initWithFormat:v9 arguments:&a9];

  v14 = NSLocalizedDescriptionKey;
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [NSError errorWithDomain:@"SymbolicationProvider" code:1 userInfo:v11];

  return v12;
}