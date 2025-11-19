@interface ReadAheadTaskLevelInfo
@end

@implementation ReadAheadTaskLevelInfo

__n128 __ReadAheadTaskLevelInfo_block_invoke_2054(uint64_t a1, unsigned int a2, __n128 *a3)
{
  v3 = (*(a1 + 32) + 24 * a2);
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 __ReadAheadTaskLevelInfo_block_invoke_2059(uint64_t a1, unsigned int a2, __n128 *a3)
{
  v3 = (*(a1 + 32) + 24 * a2);
  result = *a3;
  v3[1].n128_u64[0] = a3[1].n128_u64[0];
  *v3 = result;
  return result;
}

__n128 __ReadAheadTaskLevelInfo_block_invoke_2062(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 32) + 56 * a2;
  result = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  *(v3 + 48) = *(a3 + 48);
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *v3 = result;
  return result;
}

__n128 __ReadAheadTaskLevelInfo_block_invoke_3(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 32) - a2 + 32 * a2;
  result = *a3;
  if (*(a1 + 40) < 0x1Fu)
  {
    *(v3 + 9) = *(a3 + 9);
    *v3 = result;
    v5 = *(a1 + 32) - a2 + 32 * a2;
    *(v5 + 25) = 0;
    *(v5 + 27) = 0;
  }

  else
  {
    *(v3 + 15) = *(a3 + 15);
    *v3 = result;
  }

  return result;
}

__n128 __ReadAheadTaskLevelInfo_block_invoke_4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 32) + 28 * a2;
  result = *a3;
  if (*(a1 + 40) < 0x1Cu)
  {
    *(v3 + 10) = *(a3 + 10);
    *v3 = result;
    *(*(a1 + 32) + 28 * a2 + 26) = 0;
  }

  else
  {
    *(v3 + 12) = *(a3 + 12);
    *v3 = result;
  }

  return result;
}

@end