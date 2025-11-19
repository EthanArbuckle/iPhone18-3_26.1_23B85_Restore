id SBCPathWithScrubbedMount(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"/private"];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v1 stringByReplacingCharactersInRange:v2 withString:{v3, &stru_287CA2B78}];
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v6;
}

void sub_26BC4E938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}