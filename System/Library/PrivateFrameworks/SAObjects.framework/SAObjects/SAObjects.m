void sub_11DE68(uint64_t a1)
{
  *(a1 + 1) = v1;
  __asm { iret }
}

void sub_128D40()
{
  *(&unk_1 + __ES__) = v0;
  __asm { iret }
}

void sub_139D48()
{
  *(&unk_1 + __ES__) = v0;
  __asm { iret }
}

void sub_1E08E1(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v5 = v3;
  v6 = v4;
  v7 = (*a2 + *(2 * a3 - 56) + v5);
  BYTE1(v6) = -108;
  v8 = (*a2 + v6);
  __asm { iret }
}

void sub_1E1005()
{
  *(v0 - 1610611197) = BYTE1(v0);
  __asm { iret }
}