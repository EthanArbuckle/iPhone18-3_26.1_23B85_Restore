void sub_F1179(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, char a6)
{
  BYTE1(v7) = 3;
  v9 = v6;
  v6 = __CFADD__(v6, *v7) | __CFADD__(a3, v6 + *v7);
  *v7 += a3 + v9;
  v10 = v6;
  v6 = __CFADD__(v6, *v7) | __CFADD__(a3, v6 + *v7);
  *v7 += a3 + v10;
  v11 = v6;
  v6 = __CFADD__(v6, *v7) | __CFADD__(a3, v6 + *v7);
  *v7 += a3 + v11;
  v18 = &retaddr;
  v12 = v6;
  v6 = __CFADD__(v6, *v7) | __CFADD__(a3, v6 + *v7);
  *v7 += a3 + v12;
  v13 = v6;
  v6 = __CFADD__(v6, *v7) | __CFADD__(a3, v6 + *v7);
  *v7 += a3 + v13;
  v17[2 * v8] += a3 + v6;
  LOBYTE(v7) = v7 - 116;
  v6 = __CFADD__(a3, *v7);
  *v7 += a3;
  v14 = v6;
  v6 = __CFADD__(v6, *v7) | __CFADD__(a3, v6 + *v7);
  *v7 += a3 + v14;
  v15 = v6;
  v6 = __CFADD__(v6, *v7) | __CFADD__(a3, v6 + *v7);
  *v7 += a3 + v15;
  LOBYTE(v7) = (__CFADD__(v6, v7) | __CFADD__(v6 + v7, 52)) + v6 + v7 + 52 + 80;
  v7[4 * a1] = v7;
  BYTE1(a3) += *v7;
  *v7 |= a6;
  *v7 |= a4;
  *v7 |= a4;
  *v7 |= a4;
  LOBYTE(v7) = v7 | 0xBC;
  v16 = *v7 + a4;
  *v7 |= v16;
  *v7 |= v16;
  *v7 += a3;
  __halt();
}

void sub_F11F9(uint64_t a1)
{
  *(v1 + 46955521) += v2;
  __debugbreak();
  LOBYTE(v1) = *(v1 + 4 * a1) + v1;
  *(v1 + 96) += v3;
  __halt();
}