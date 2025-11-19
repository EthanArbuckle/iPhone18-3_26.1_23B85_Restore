uint64_t sub_28D60(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  LOBYTE(v7) = *(v8 + 116) ^ v7;
  v9 = __CFADD__(v8, v7);
  LOBYTE(v7) = v8 + v7;
  v10 = v9 + *(2 * v7);
  *a1 = *a2;
  return MK_FP(*retaddr, *retaddr)();
}

void sub_2E784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v5 += v4;
  *(a4 + 48) ^= v4;
  __asm { iret }
}

long double sub_316AC(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  BYTE1(a4) = -83;
  LOBYTE(v4) = *(2 * v4) + v4;
  LOBYTE(v4) = *v4 + v4;
  LODWORD(v4) = v4;
  result = v5 + *a3;
  *(2 * v4) += v4;
  MK_FP(*retaddr, *retaddr)(__DS__, a2, a3, a4);
  return result;
}