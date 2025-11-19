void sub_6D068(uint64_t a1, uint64_t a2, _DWORD *a3, volatile __int32 *a4, __int32 a5)
{
  _InterlockedExchange(a4, a5);
  *(v5 - 121) += a3;
  *a3 += v5;
  __halt();
}